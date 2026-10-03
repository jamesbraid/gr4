typedef struct __GLcontextRec {
    /* 0x0000 */ __GLimports imports;
    /* 0x004C */ __GLexports exports;
    /* 0x0094 */ s32 gcState;
    /* 0x0098 */ char pad98[0x20];                  /* maybe part of gcState[9]? */
    /* 0x00B8 */ f32 unkB8;                         /* inferred */
    /* 0x00BC */ f32 unkBC;                         /* inferred */
    /* 0x00C0 */ f32 unkC0;                         /* inferred */
    /* 0x00C4 */ char padC4[4];
    /* 0x00C8 */ f32 unkC8;                         /* inferred */
    /* 0x00CC */ f32 unkCC;                         /* inferred */
    /* 0x00D0 */ f32 unkD0;                         /* inferred */
    /* 0x00D4 */ f32 unkD4;                         /* inferred */
    /* 0x00D8 */ ? unkD8;                           /* inferred */
    /* 0x00D8 */ char padD8[4];
    /* 0x00DC */ f32 *unkDC;                        /* inferred */
    /* 0x00E0 */ char padE0[0x78];                  /* maybe part of unkDC[0x1F]? */
    /* 0x0158 */ f32 unk158;                        /* inferred */
    /* 0x015C */ f32 unk15C;                        /* inferred */
    /* 0x0160 */ char pad160[8];                    /* maybe part of unk15C[3]? */
    /* 0x0168 */ f32 unk168;                        /* inferred */
    /* 0x016C */ char pad16C[0x2C];                 /* maybe part of unk168[0xC]? */
    /* 0x0198 */ f32 unk198;                        /* inferred */
    /* 0x019C */ f32 unk19C;                        /* inferred */
    /* 0x01A0 */ f32 unk1A0;                        /* inferred */
    /* 0x01A4 */ f32 unk1A4;                        /* inferred */
    /* 0x01A8 */ f32 unk1A8;                        /* inferred */
    /* 0x01AC */ u8 unk1AC;                         /* inferred */
    /* 0x01AD */ u8 unk1AD;                         /* inferred */
    /* 0x01AE */ char pad1AE[2];                    /* maybe part of unk1AD[3]? */
    /* 0x01B0 */ f32 unk1B0;                        /* inferred */
    /* 0x01B4 */ char pad1B4[4];
    /* 0x01B8 */ s32 unk1B8;                        /* inferred */
    /* 0x01BC */ f32 unk1BC;                        /* inferred */
    /* 0x01C0 */ char pad1C0[4];
    /* 0x01C4 */ s32 unk1C4;                        /* inferred */
    /* 0x01C8 */ u16 unk1C8;                        /* inferred */
    /* 0x01CA */ s16 unk1CA;                        /* inferred */
    /* 0x01CC */ enum GLenum unk1CC;                /* inferred */
    /* 0x01D0 */ enum GLenum unk1D0;                /* inferred */
    /* 0x01D4 */ enum GLenum unk1D4;                /* inferred */
    /* 0x01D8 */ enum GLenum unk1D8;                /* inferred */
    /* 0x01DC */ f32 unk1DC;                        /* inferred */
    /* 0x01E0 */ f32 unk1E0;                        /* inferred */
    /* 0x01E4 */ char pad1E4[0x84];                 /* maybe part of unk1E0[0x22]? */
    /* 0x0268 */ f32 unk268;                        /* inferred */
    /* 0x026C */ f32 unk26C;                        /* inferred */
    /* 0x0270 */ f32 unk270;                        /* inferred */
    /* 0x0274 */ f32 unk274;                        /* inferred */
    /* 0x0278 */ f32 unk278;                        /* inferred */
    /* 0x027C */ f32 unk27C;                        /* inferred */
    /* 0x0280 */ f32 unk280;                        /* inferred */
    /* 0x0284 */ f32 unk284;                        /* inferred */
    /* 0x0288 */ f32 unk288;                        /* inferred */
    /* 0x028C */ f32 unk28C;                        /* inferred */
    /* 0x0290 */ char pad290[0x20];                 /* maybe part of unk28C[9]? */
    /* 0x02B0 */ f32 unk2B0;                        /* inferred */
    /* 0x02B4 */ f32 unk2B4;                        /* inferred */
    /* 0x02B8 */ f32 unk2B8;                        /* inferred */
    /* 0x02BC */ f32 unk2BC;                        /* inferred */
    /* 0x02C0 */ f32 unk2C0;                        /* inferred */
    /* 0x02C4 */ f32 unk2C4;                        /* inferred */
    /* 0x02C8 */ f32 unk2C8;                        /* inferred */
    /* 0x02CC */ f32 unk2CC;                        /* inferred */
    /* 0x02D0 */ f32 unk2D0;                        /* inferred */
    /* 0x02D4 */ f32 unk2D4;                        /* inferred */
    /* 0x02D8 */ enum GLenum unk2D8;                /* inferred */
    /* 0x02DC */ enum GLenum unk2DC;                /* inferred */
    /* 0x02E0 */ u8 unk2E0;                         /* inferred */
    /* 0x02E1 */ u8 unk2E1;                         /* inferred */
    /* 0x02E2 */ char pad2E2[2];                    /* maybe part of unk2E1[3]? */
    /* 0x02E4 */ s32 *unk2E4;                       /* inferred */
    /* 0x02E8 */ s32 unk2E8;                        /* inferred */
    /* 0x02EC */ char pad2EC[0x40];                 /* maybe part of unk2E8[0x11]? */
    /* 0x032C */ s32 unk32C;                        /* inferred */
    /* 0x0330 */ char pad330[0x40];                 /* maybe part of unk32C[0x11]? */
    /* 0x0370 */ s32 unk370;                        /* inferred */
    /* 0x0374 */ char pad374[0x44];                 /* maybe part of unk370[0x12]? */
    /* 0x03B8 */ enum GLenum unk3B8;                /* inferred */
    /* 0x03BC */ char pad3BC[4];
    /* 0x03C0 */ u32 *unk3C0;                       /* inferred */
    /* 0x03C4 */ enum GLenum unk3C4;                /* inferred */
    /* 0x03C8 */ char pad3C8[4];
    /* 0x03CC */ u32 *unk3CC;                       /* inferred */
    /* 0x03D0 */ enum GLenum unk3D0;                /* inferred */
    /* 0x03D4 */ char pad3D4[4];
    /* 0x03D8 */ f32 *unk3D8;                       /* inferred */
    /* 0x03DC */ enum GLenum unk3DC;                /* inferred */
    /* 0x03E0 */ char pad3E0[4];
    /* 0x03E4 */ f32 *unk3E4;                       /* inferred */
    /* 0x03E8 */ enum GLenum unk3E8;                /* inferred */
    /* 0x03EC */ char pad3EC[4];
    /* 0x03F0 */ f32 *unk3F0;                       /* inferred */
    /* 0x03F4 */ enum GLenum unk3F4;                /* inferred */
    /* 0x03F8 */ char pad3F8[4];
    /* 0x03FC */ f32 *unk3FC;                       /* inferred */
    /* 0x0400 */ enum GLenum unk400;                /* inferred */
    /* 0x0404 */ char pad404[4];
    /* 0x0408 */ f32 *unk408;                       /* inferred */
    /* 0x040C */ enum GLenum unk40C;                /* inferred */
    /* 0x0410 */ char pad410[4];
    /* 0x0414 */ f32 *unk414;                       /* inferred */
    /* 0x0418 */ enum GLenum unk418;                /* inferred */
    /* 0x041C */ char pad41C[4];
    /* 0x0420 */ f32 *unk420;                       /* inferred */
    /* 0x0424 */ enum GLenum unk424;                /* inferred */
    /* 0x0428 */ char pad428[4];
    /* 0x042C */ f32 *unk42C;                       /* inferred */
    /* 0x0430 */ u8 unk430;                         /* inferred */
    /* 0x0431 */ u8 unk431;                         /* inferred */
    /* 0x0432 */ char pad432[2];                    /* maybe part of unk431[3]? */
    /* 0x0434 */ enum GLenum unk434;                /* inferred */
    /* 0x0438 */ enum GLenum unk438;                /* inferred */
    /* 0x043C */ enum GLenum unk43C;                /* inferred */
    /* 0x0440 */ enum GLenum unk440;                /* inferred */
    /* 0x0444 */ char pad444[0x10];                 /* maybe part of unk440[5]? */
    /* 0x0454 */ u8 unk454;                         /* inferred */
    /* 0x0455 */ u8 unk455;                         /* inferred */
    /* 0x0456 */ char pad456[2];                    /* maybe part of unk455[3]? */
    /* 0x0458 */ enum GLenum unk458;                /* inferred */
    /* 0x045C */ enum GLenum unk45C;                /* inferred */
    /* 0x0460 */ enum GLenum unk460;                /* inferred */
    /* 0x0464 */ enum GLenum unk464;                /* inferred */
    /* 0x0468 */ char pad468[0x14];                 /* maybe part of unk464[6]? */
    /* 0x047C */ s32 unk47C;                        /* inferred */
    /* 0x0480 */ enum GLenum unk480;                /* inferred */
    /* 0x0484 */ char pad484[4];
    /* 0x0488 */ s32 unk488;                        /* inferred */
    /* 0x048C */ char pad48C[0x70];                 /* maybe part of unk488[0x1D]? */
    /* 0x04FC */ u8 unk4FC;                         /* inferred */
    /* 0x04FD */ char pad4FD[0x13];                 /* maybe part of unk4FC[0x14]? */
    /* 0x0510 */ enum GLenum unk510;                /* inferred */
    /* 0x0514 */ enum GLenum unk514;                /* inferred */
    /* 0x0518 */ enum GLenum unk518;                /* inferred */
    /* 0x051C */ f32 unk51C;                        /* inferred */
    /* 0x0520 */ char pad520[0xC];                  /* maybe part of unk51C[4]? */
    /* 0x052C */ u8 unk52C;                         /* inferred */
    /* 0x052D */ u8 unk52D;                         /* inferred */
    /* 0x052E */ char pad52E[2];                    /* maybe part of unk52D[3]? */
    /* 0x0530 */ f32 unk530;                        /* inferred */
    /* 0x0534 */ char pad534[0xC];                  /* maybe part of unk530[4]? */
    /* 0x0540 */ f32 unk540;                        /* inferred */
    /* 0x0544 */ char pad544[0xC];                  /* maybe part of unk540[4]? */
    /* 0x0550 */ f32 unk550;                        /* inferred */
    /* 0x0554 */ char pad554[0xC];                  /* maybe part of unk550[4]? */
    /* 0x0560 */ f32 unk560;                        /* inferred */
    /* 0x0564 */ char pad564[0xC];                  /* maybe part of unk560[4]? */
    /* 0x0570 */ f32 unk570;                        /* inferred */
    /* 0x0574 */ f32 unk574;                        /* inferred */
    /* 0x0578 */ f32 unk578;                        /* inferred */
    /* 0x057C */ f32 unk57C;                        /* inferred */
    /* 0x0580 */ f32 unk580;                        /* inferred */
    /* 0x0584 */ char pad584[0xC];                  /* maybe part of unk580[4]? */
    /* 0x0590 */ f32 unk590;                        /* inferred */
    /* 0x0594 */ char pad594[0xC];                  /* maybe part of unk590[4]? */
    /* 0x05A0 */ f32 unk5A0;                        /* inferred */
    /* 0x05A4 */ char pad5A4[0xC];                  /* maybe part of unk5A0[4]? */
    /* 0x05B0 */ f32 unk5B0;                        /* inferred */
    /* 0x05B4 */ char pad5B4[0xC];                  /* maybe part of unk5B0[4]? */
    /* 0x05C0 */ f32 unk5C0;                        /* inferred */
    /* 0x05C4 */ f32 unk5C4;                        /* inferred */
    /* 0x05C8 */ f32 unk5C8;                        /* inferred */
    /* 0x05CC */ f32 unk5CC;                        /* inferred */
    /* 0x05D0 */ f32 *unk5D0;                       /* inferred */
    /* 0x05D4 */ enum GLenum unk5D4;                /* inferred */
    /* 0x05D8 */ f32 unk5D8;                        /* inferred */
    /* 0x05DC */ char pad5DC[0xC];                  /* maybe part of unk5D8[4]? */
    /* 0x05E8 */ f32 unk5E8;                        /* inferred */
    /* 0x05EC */ f32 unk5EC;                        /* inferred */
    /* 0x05F0 */ f32 unk5F0;                        /* inferred */
    /* 0x05F4 */ f32 unk5F4;                        /* inferred */
    /* 0x05F8 */ f32 unk5F8;                        /* inferred */
    /* 0x05FC */ char pad5FC[4];
    /* 0x0600 */ enum GLenum unk600;                /* inferred */
    /* 0x0604 */ u8 unk604;                         /* inferred */
    /* 0x0605 */ char pad605[3];                    /* maybe part of unk604[4]? */
    /* 0x0608 */ f64 unk608;                        /* inferred */
    /* 0x0610 */ f32 unk610;                        /* inferred */
    /* 0x0614 */ f32 unk614;                        /* inferred */
    /* 0x0618 */ f32 unk618;                        /* inferred */
    /* 0x061C */ f32 unk61C;                        /* inferred */
    /* 0x0620 */ enum GLenum unk620;                /* inferred */
    /* 0x0624 */ enum GLenum unk624;                /* inferred */
    /* 0x0628 */ s16 unk628;                        /* inferred */
    /* 0x062A */ s16 unk62A;                        /* inferred */
    /* 0x062C */ enum GLenum unk62C;                /* inferred */
    /* 0x0630 */ enum GLenum unk630;                /* inferred */
    /* 0x0634 */ enum GLenum unk634;                /* inferred */
    /* 0x0638 */ s32 unk638;                        /* inferred */
    /* 0x063C */ s32 unk63C;                        /* inferred */
    /* 0x0640 */ s32 unk640;                        /* inferred */
    /* 0x0644 */ s32 unk644;                        /* inferred */
    /* 0x0648 */ f64 unk648;                        /* inferred */
    /* 0x0650 */ f64 unk650;                        /* inferred */
    /* 0x0658 */ char pad658[0x18];                 /* maybe part of unk650[4]? */
    /* 0x0670 */ enum GLenum unk670;                /* inferred */
    /* 0x0674 */ void *unk674;                      /* inferred */
    /* 0x0678 */ char pad678[0x28];                 /* maybe part of unk674[0xB]? */
    /* 0x06A0 */ s32 unk6A0;                        /* inferred */
    /* 0x06A4 */ s32 unk6A4;                        /* inferred */
    /* 0x06A8 */ s32 unk6A8;                        /* inferred */
    /* 0x06AC */ s32 unk6AC;                        /* inferred */
    /* 0x06B0 */ s32 unk6B0;                        /* inferred */
    /* 0x06B4 */ s32 unk6B4;                        /* inferred */
    /* 0x06B8 */ enum GLenum unk6B8;                /* inferred */
    /* 0x06BC */ f32 unk6BC;                        /* inferred */
    /* 0x06C0 */ enum GLenum unk6C0;                /* inferred */
    /* 0x06C4 */ enum GLenum unk6C4;                /* inferred */
    /* 0x06C8 */ enum GLenum unk6C8;                /* inferred */
    /* 0x06CC */ char pad6CC[0x10];                 /* maybe part of unk6C8[5]? */
    /* 0x06DC */ enum GLenum unk6DC;                /* inferred */
    /* 0x06E0 */ f32 unk6E0;                        /* inferred */
    /* 0x06E4 */ f32 unk6E4;                        /* inferred */
    /* 0x06E8 */ f32 unk6E8;                        /* inferred */
    /* 0x06EC */ f32 unk6EC;                        /* inferred */
    /* 0x06F0 */ f32 unk6F0;                        /* inferred */
    /* 0x06F4 */ enum GLenum unk6F4;                /* inferred */
    /* 0x06F8 */ u8 unk6F8;                         /* inferred */
    /* 0x06F9 */ u8 unk6F9;                         /* inferred */
    /* 0x06FA */ u8 unk6FA;                         /* inferred */
    /* 0x06FB */ u8 unk6FB;                         /* inferred */
    /* 0x06FC */ u32 unk6FC;                        /* inferred */
    /* 0x0700 */ enum GLenum unk700;                /* inferred */
    /* 0x0704 */ char pad704[0x10];                 /* maybe part of unk700[5]? */
    /* 0x0714 */ s32 unk714;                        /* inferred */
    /* 0x0718 */ char pad718[8];                    /* maybe part of unk714[3]? */
    /* 0x0720 */ f32 unk720;                        /* inferred */
    /* 0x0724 */ f32 unk724;                        /* inferred */
    /* 0x0728 */ char pad728[4];
    /* 0x072C */ s32 unk72C;                        /* inferred */
    /* 0x0730 */ f32 unk730;                        /* inferred */
    /* 0x0734 */ f32 unk734;                        /* inferred */
    /* 0x0738 */ char pad738[4];
    /* 0x073C */ s32 unk73C;                        /* inferred */
    /* 0x0740 */ f32 unk740;                        /* inferred */
    /* 0x0744 */ f32 unk744;                        /* inferred */
    /* 0x0748 */ char pad748[4];
    /* 0x074C */ s32 unk74C;                        /* inferred */
    /* 0x0750 */ char pad750[4];
    /* 0x0754 */ s32 unk754;                        /* inferred */
    /* 0x0758 */ f32 unk758;                        /* inferred */
    /* 0x075C */ char pad75C[0xC];                  /* maybe part of unk758[4]? */
    /* 0x0768 */ f32 unk768;                        /* inferred */
    /* 0x076C */ char pad76C[0x64];                 /* maybe part of unk768[0x1A]? */
    /* 0x07D0 */ s32 unk7D0;                        /* inferred */
    /* 0x07D4 */ f32 unk7D4;                        /* inferred */
    /* 0x07D8 */ char pad7D8[0xC];                  /* maybe part of unk7D4[4]? */
    /* 0x07E4 */ f32 unk7E4;                        /* inferred */
    /* 0x07E8 */ char pad7E8[0x64];                 /* maybe part of unk7E4[0x1A]? */
    /* 0x084C */ s32 unk84C;                        /* inferred */
    /* 0x0850 */ f32 unk850;                        /* inferred */
    /* 0x0854 */ char pad854[0xC];                  /* maybe part of unk850[4]? */
    /* 0x0860 */ f32 unk860;                        /* inferred */
    /* 0x0864 */ char pad864[0x64];                 /* maybe part of unk860[0x1A]? */
    /* 0x08C8 */ s32 unk8C8;                        /* inferred */
    /* 0x08CC */ f32 unk8CC;                        /* inferred */
    /* 0x08D0 */ char pad8D0[0xC];                  /* maybe part of unk8CC[4]? */
    /* 0x08DC */ f32 unk8DC;                        /* inferred */
    /* 0x08E0 */ char pad8E0[0x64];                 /* maybe part of unk8DC[0x1A]? */
    /* 0x0944 */ s32 *unk944;                       /* inferred */
    /* 0x0948 */ s32 *unk948;                       /* inferred */
    /* 0x094C */ char pad94C[0x20];                 /* maybe part of unk948[9]? */
    /* 0x096C */ s32 unk96C;                        /* inferred */
    /* 0x0970 */ s32 unk970;                        /* inferred */
    /* 0x0974 */ s32 unk974;                        /* inferred */
    /* 0x0978 */ s32 unk978;                        /* inferred */
    /* 0x097C */ char pad97C[0x294];                /* maybe part of unk978[0xA6]? */
    /* 0x0C10 */ u32 beginMode;
    /* 0x0C14 */ enum GLenum renderMode;
    /* 0x0C18 */ s32 error;
    /* 0x0C1C */ __GLcontextModes modes;
    /* 0x0C74 */ __GLcontextModes readModes;
    /* 0x0CCC */ u8 yInverted;
    /* 0x0CCD */ char padCCD[3];                    /* maybe part of yInverted[4]? */
    /* 0x0CD0 */ f32 unkCD0;                        /* inferred */
    /* 0x0CD4 */ f32 unkCD4;                        /* inferred */
    /* 0x0CD8 */ char padCD8[0x28];                 /* maybe part of unkCD4[0xB]? */
    /* 0x0D00 */ u32 unkD00;                        /* inferred */
    /* 0x0D04 */ s32 unkD04;                        /* inferred */
    /* 0x0D08 */ char padD08[0x24];                 /* maybe part of unkD04[0xA]? */
    /* 0x0D2C */ s32 unkD2C;                        /* inferred */
    /* 0x0D30 */ s32 unkD30;                        /* inferred */
    /* 0x0D34 */ char padD34[0x20];                 /* maybe part of unkD30[9]? */
    /* 0x0D54 */ s32 unkD54;                        /* inferred */
    /* 0x0D58 */ s32 unkD58;                        /* inferred */
    /* 0x0D5C */ char padD5C[0x608];                /* maybe part of unkD58[0x183]? */
    /* 0x1364 */ s32 unk1364;                       /* inferred */
    /* 0x1368 */ char pad1368[0x9C];                /* maybe part of unk1364[0x28]? */
    /* 0x1404 */ s32 unk1404;                       /* inferred */
    /* 0x1408 */ char pad1408[0x9C];                /* maybe part of unk1404[0x28]? */
    /* 0x14A4 */ s32 unk14A4;                       /* inferred */
    /* 0x14A8 */ char pad14A8[0x160];               /* maybe part of unk14A4[0x59]? */
    /* 0x1608 */ void *unk1608;                     /* inferred */
    /* 0x160C */ char pad160C[0x1780];              /* maybe part of unk1608[0x5E1]? */
    /* 0x2D8C */ u32 validateMask;
    /* 0x2D90 */ u32 dirtyMask;
    /* 0x2D94 */ __GLcolorBuffer *drawBuffer;
    /* 0x2D98 */ __GLcolorBuffer *readBuffer;
    /* 0x2D9C */ char pad2D9C[0x10];                /* maybe part of readBuffer[5]? */
    /* 0x2DAC */ void (*validate)(__GLcontext *);
    /* 0x2DB0 */ char pad2DB0[0x1C];                /* maybe part of validate[8]? */
    /* 0x2DCC */ __GLprocs procs;
    /* 0x3120 */ char pad3120[0x40];
    /* 0x3160 */ void (*unk3160)();                 /* inferred */
    /* 0x3164 */ void (*unk3164)();                 /* inferred */
    /* 0x3168 */ void (*unk3168)();                 /* inferred */
    /* 0x316C */ void (*unk316C)();                 /* inferred */
    /* 0x3170 */ void (*unk3170)();                 /* inferred */
    /* 0x3174 */ void (*unk3174)();                 /* inferred */
    /* 0x3178 */ void (*unk3178)();                 /* inferred */
    /* 0x317C */ void (*unk317C)();                 /* inferred */
    /* 0x3180 */ void (*unk3180)();                 /* inferred */
    /* 0x3184 */ char pad3184[0x28];                /* maybe part of unk3180[0xB]? */
    /* 0x31AC */ ? (*unk31AC)(__GLcontext *);       /* inferred */
    /* 0x31B0 */ char pad31B0[0x3C34];              /* maybe part of unk31AC[0xF0E]? */
    /* 0x6DE4 */ s32 unk6DE4;                       /* inferred */
    /* 0x6DE8 */ s32 unk6DE8;                       /* inferred */
    /* 0x6DEC */ s32 unk6DEC;                       /* inferred */
    /* 0x6DF0 */ s32 unk6DF0;                       /* inferred */
    /* 0x6DF4 */ char pad6DF4[4];
    /* 0x6DF8 */ s32 unk6DF8;                       /* inferred */
    /* 0x6DFC */ char pad6DFC[0x6C];                /* maybe part of unk6DF8[0x1C]? */
    /* 0x6E68 */ s32 unk6E68;                       /* inferred */
    /* 0x6E6C */ u8 unk6E6C;                        /* inferred */
    /* 0x6E6D */ char pad6E6D[0x59F];               /* maybe part of unk6E6C[0x5A0]? */
    /* 0x740C */ f32 *unk740C;                      /* inferred */
    /* 0x7410 */ f32 *unk7410;                      /* inferred */
    /* 0x7414 */ f32 *unk7414;                      /* inferred */
    /* 0x7418 */ f32 *unk7418;                      /* inferred */
    /* 0x741C */ s32 unk741C;                       /* inferred */
    /* 0x7420 */ f32 *unk7420;                      /* inferred */
    /* 0x7424 */ f32 *unk7424;                      /* inferred */
    /* 0x7428 */ char pad7428[0x98];                /* maybe part of unk7424[0x27]? */
    /* 0x74C0 */ u8 unk74C0;                        /* inferred */
    /* 0x74C1 */ char pad74C1[0x257];               /* maybe part of unk74C0[0x258]? */
    /* 0x7718 */ s32 unk7718;                       /* inferred */
    /* 0x771C */ char pad771C[0x54];                /* maybe part of unk7718[0x16]? */
    /* 0x7770 */ s8 unk7770;                        /* inferred */
    /* 0x7771 */ s8 unk7771;                        /* inferred */
    /* 0x7772 */ s8 unk7772;                        /* inferred */
    /* 0x7773 */ s8 unk7773;                        /* inferred */
    /* 0x7774 */ s8 unk7774;                        /* inferred */
    /* 0x7775 */ char pad7775[3];                   /* maybe part of unk7774[4]? */
    /* 0x7778 */ f32 unk7778;                       /* inferred */
    /* 0x777C */ f32 unk777C;                       /* inferred */
    /* 0x7780 */ f32 unk7780;                       /* inferred */
    /* 0x7784 */ f32 unk7784;                       /* inferred */
    /* 0x7788 */ char pad7788[0x28];                /* maybe part of unk7784[0xB]? */
    /* 0x77B0 */ s8 unk77B0;                        /* inferred */
    /* 0x77B1 */ char pad77B1[0x13];                /* maybe part of unk77B0[0x14]? */
    /* 0x77C4 */ s8 unk77C4;                        /* inferred */
    /* 0x77C5 */ char pad77C5[7];                   /* maybe part of unk77C4[8]? */
    /* 0x77CC */ s8 unk77CC;                        /* inferred */
    /* 0x77CD */ char pad77CD[0x13];                /* maybe part of unk77CC[0x14]? */
    /* 0x77E0 */ s32 unk77E0;                       /* inferred */
    /* 0x77E4 */ char pad77E4[5];                   /* maybe part of unk77E0[2]? */
    /* 0x77E9 */ u8 unk77E9;                        /* inferred */
    /* 0x77EA */ char pad77EA[6];                   /* maybe part of unk77E9[7]? */
    /* 0x77F0 */ u8 unk77F0;                        /* inferred */
    /* 0x77F1 */ char pad77F1[3];                   /* maybe part of unk77F0[4]? */
    /* 0x77F4 */ void *unk77F4;                     /* inferred */
    /* 0x77F8 */ void *unk77F8;                     /* inferred */
    /* 0x77FC */ char pad77FC[0x58];                /* maybe part of unk77F8[0x17]? */
    /* 0x7854 */ f32 unk7854;                       /* inferred */
    /* 0x7858 */ f32 unk7858;                       /* inferred */
    /* 0x785C */ f32 unk785C;                       /* inferred */
    /* 0x7860 */ s32 unk7860;                       /* inferred */
    /* 0x7864 */ s32 unk7864;                       /* inferred */
    /* 0x7868 */ s32 unk7868;                       /* inferred */
    /* 0x786C */ char pad786C[0x10];                /* maybe part of unk7868[5]? */
    /* 0x787C */ f32 unk787C;                       /* inferred */
    /* 0x7880 */ s32 unk7880;                       /* inferred */
    /* 0x7884 */ f32 unk7884;                       /* inferred */
    /* 0x7888 */ f32 unk7888;                       /* inferred */
    /* 0x788C */ f32 unk788C;                       /* inferred */
    /* 0x7890 */ f32 unk7890;                       /* inferred */
    /* 0x7894 */ char pad7894[0x120];               /* maybe part of unk7890[0x49]? */
    /* 0x79B4 */ s32 unk79B4;                       /* inferred */
    /* 0x79B8 */ char pad79B8[0x144];               /* maybe part of unk79B4[0x52]? */
    /* 0x7AFC */ f32 unk7AFC;                       /* inferred */
    /* 0x7B00 */ f32 unk7B00;                       /* inferred */
    /* 0x7B04 */ f32 unk7B04;                       /* inferred */
    /* 0x7B08 */ f32 unk7B08;                       /* inferred */
    /* 0x7B0C */ f32 unk7B0C;                       /* inferred */
    /* 0x7B10 */ f32 unk7B10;                       /* inferred */
    /* 0x7B14 */ f32 unk7B14;                       /* inferred */
    /* 0x7B18 */ f32 unk7B18;                       /* inferred */
    /* 0x7B1C */ char pad7B1C[0x78];                /* maybe part of unk7B18[0x1F]? */
    /* 0x7B94 */ __GLcolorBuffer *front;
    /* 0x7B98 */ __GLcolorBuffer *back;
    /* 0x7B9C */ __GLcolorBuffer frontBuffer;
    /* 0x7C78 */ __GLcolorBuffer backBuffer;
    /* 0x7D54 */ __GLcolorBuffer *auxBuffer;
    /* 0x7D58 */ __GLstencilBuffer stencilBuffer;
    /* 0x7DD0 */ __GLdepthBuffer depthBuffer;
    /* 0x7E54 */ __GLaccumBuffer accumBuffer;
    /* 0x7EC4 */ char pad7EC4[0x1C];
    /* 0x7EE0 */ s32 fd;
    /* 0x7EE4 */ s32 boardIndex;
    /* 0x7EE8 */ s32 zDepth;
    /* 0x7EEC */ s32 stencilDepth;
    /* 0x7EF0 */ s8 rendererString[0x28];
    /* 0x7F18 */ u32 swapInterval;
    /* 0x7F1C */ u8 hwFlags;
    /* 0x7F1D */ u8 haveZ;
    /* 0x7F1E */ u8 haveStencil;
    /* 0x7F1F */ u8 fastMode;
    /* 0x7F20 */ void (*primitiveProcs[0xA])(__GLcontext *);
} __GLcontext;                                      /* size = 0x7F48 */

typedef struct __GLprocsRec {
    /* 0x000 */ void (*validate)(__GLcontext *);
    /* 0x004 */ void (*finish)(__GLcontext *);
    /* 0x008 */ void (*flush)(__GLcontext *);
    /* 0x00C */ void (*applyColor)(__GLcontext *);
    /* 0x010 */ void *table[0x80];
    /* 0x210 */ char pad210[0x2C];
    /* 0x23C */ s32 unk23C;                         /* inferred */
    /* 0x240 */ s32 unk240;                         /* inferred */
    /* 0x244 */ void (*unk244)();                   /* inferred */
    /* 0x248 */ void (*unk248)(__GLcontext *, ...); /* inferred */
    /* 0x24C */ void (*unk24C)(__GLcontext *, ...); /* inferred */
    /* 0x250 */ char pad250[0x38];                  /* maybe part of unk24C[0xF]? */
    /* 0x288 */ void (*unk288)(__GLcontext *, ...); /* inferred */
    /* 0x28C */ void (*unk28C)(__GLcontext *, ...); /* inferred */
    /* 0x290 */ char pad290[0x38];                  /* maybe part of unk28C[0xF]? */
    /* 0x2C8 */ s32 unk2C8;                         /* inferred */
    /* 0x2CC */ s32 unk2CC;                         /* inferred */
    /* 0x2D0 */ s32 unk2D0;                         /* inferred */
    /* 0x2D4 */ void (*unk2D4)();                   /* inferred */
    /* 0x2D8 */ void (*unk2D8)();                   /* inferred */
    /* 0x2DC */ void (*unk2DC)();                   /* inferred */
    /* 0x2E0 */ void (*unk2E0)();                   /* inferred */
    /* 0x2E4 */ void (*unk2E4)();                   /* inferred */
    /* 0x2E8 */ char pad2E8[0x40];                  /* maybe part of unk2E4[0x11]? */
    /* 0x328 */ void (*unk328)();                   /* inferred */
    /* 0x32C */ void (*unk32C)();                   /* inferred */
    /* 0x330 */ void (*unk330)();                   /* inferred */
    /* 0x334 */ char pad334[0xC];                   /* maybe part of unk330[4]? */
    /* 0x340 */ void (*unk340)();                   /* inferred */
    /* 0x344 */ void (*unk344)();                   /* inferred */
    /* 0x348 */ char pad348[8];                     /* maybe part of unk344[3]? */
    /* 0x350 */ void (*unk350)(__GLcontext *, ...); /* inferred */
} __GLprocs;                                        /* size = 0x354 */

? sub_0db00000(__GLcontext *);                      /* extern */
extern ? __glMG10im_dispatchTable;
extern ? __glMG10im_rasterPosDispatchTable;
extern ? __glMG10splc_dispatchTable;
extern ? __glMgrim_dispatchTable;
extern ? __glMgrim_normalDispatchTable;
extern ? __glMgrim_rasterPosDispatchTable;
extern ? __glMgrim_rectDispatchTable;
extern ? __glMgrim_shadowIndexcolorDispatchTable;
extern ? __glMgrim_shadowRGBcolorDispatchTable;
extern ? __glMgrim_texCoordDispatchTable;
extern ? __glMgrim_vertexDispatchTable;
extern ? __glSoftim_colorDispatchTable;
extern ? __glSoftim_dispatchTable;
extern ? __glSoftim_normalDispatchTable;
extern ? __glSoftim_rectDispatchTable;
extern ? __glSoftim_texCoordDispatchTable;
extern ? __glSoftim_vertexDispatchTable;
extern ? __glmglc_dispatchTable;
extern ? __glmglc_normalDispatchTable;
extern ? __glmglc_rasterPosDispatchTable;
extern ? __glmglc_rectDispatchTable;
extern ? __glmglc_shadowIndexcolorDispatchTable;
extern ? __glmglc_shadowRGBcolorDispatchTable;
extern ? __glmglc_texCoordDispatchTable;
extern ? __glmglc_vertexDispatchTable;
extern s32 dummyFilter;

void __glMgrGetAccum(__GLcontext *gc, ...) {
    __GLcontext *temp_s8;

    temp_s8 = __glCurrentContext;
    __glMgrim_GetFloatv(GL_ACCUM_CLEAR_VALUE, sp);
    temp_s8->unk610 = sp0;
    temp_s8->unk614 = sp4;
    temp_s8->unk618 = sp8;
    temp_s8->unk61C = spC;
}

void __glMgrGetColorBuffer(__GLcontext *gc, ...) {
    u8 sp10;
    __GLcontext *temp_s7;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;

    temp_s7 = __glCurrentContext;
    temp_a2 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_ALPHA_TEST) != 0) {
        temp_s7->unk6A0 = temp_a2 | 1;
    } else {
        temp_s7->unk6A0 = temp_a2 & ~1;
    }
    temp_a2_2 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_BLEND) != 0) {
        temp_s7->unk6A0 = temp_a2_2 | 2;
    } else {
        temp_s7->unk6A0 = temp_a2_2 & ~2;
    }
    temp_a2_3 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_DITHER) != 0) {
        temp_s7->unk6A0 = temp_a2_3 | 8;
    } else {
        temp_s7->unk6A0 = temp_a2_3 & ~8;
    }
    temp_a2_4 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_LOGIC_OP) != 0) {
        temp_s7->unk6A0 = temp_a2_4 | 4;
    } else {
        temp_s7->unk6A0 = temp_a2_4 & ~4;
    }
    temp_a2_5 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_COLOR_LOGIC_OP) != 0) {
        temp_s7->unk6A0 = temp_a2_5 | 0x800;
    } else {
        temp_s7->unk6A0 = temp_a2_5 & ~0x800;
    }
    __glMgrim_GetIntegerv(GL_ALPHA_TEST_FUNC, &temp_s7->unk6B8);
    __glMgrim_GetFloatv(GL_ALPHA_TEST_REF, &temp_s7->unk6BC);
    __glMgrim_GetIntegerv(GL_BLEND_SRC, &temp_s7->unk6C0);
    __glMgrim_GetIntegerv(GL_BLEND_DST, &temp_s7->unk6C4);
    __glMgrim_GetIntegerv(GL_BLEND_EQUATION_EXT, &temp_s7->unk6C8);
    __glMgrim_GetIntegerv(GL_LOGIC_OP_MODE, &temp_s7->unk6DC);
    __glMgrim_GetIntegerv(GL_COLOR_CLEAR_VALUE, sp);
    temp_s7->unk6E0 = (f32) sp0;
    temp_s7->unk6E4 = (f32) sp4;
    temp_s7->unk6E8 = (f32) sp8;
    temp_s7->unk6EC = (f32) spC;
    __glMgrim_GetFloatv(GL_INDEX_CLEAR_VALUE, &temp_s7->unk6F0);
    __glMgrim_GetBooleanv(GL_COLOR_WRITEMASK, &sp10);
    temp_s7->unk6F8 = sp10;
    temp_s7->unk6F9 = sp11;
    temp_s7->unk6FA = sp12;
    temp_s7->unk6FB = sp13;
    __glMgrim_GetIntegerv(GL_INDEX_WRITEMASK, &temp_s7->unk6F4);
}

void __glMgrGetCurrentBuffer(__GLcontext *gc, ...) {
    __GLcontext *temp_s0;
    f32 *temp_s8;

    temp_s0 = __glCurrentContext;
    __glMgrim_GetFloatv(GL_CURRENT_RASTER_POSITION, &temp_s0->unk158);
    temp_s8 = &temp_s0->unk168;
    temp_s0->unk15C += (f32) temp_s0->unkD30;
    temp_s0->unk158 += (f32) temp_s0->unkD2C;
    __glMgrim_GetFloatv(GL_CURRENT_RASTER_COLOR, temp_s8);
    temp_s0->unkDC = temp_s8;
    __glMgrim_GetBooleanv(GL_CURRENT_RASTER_POSITION_VALID, &temp_s0->unk1AC);
    __glMgrim_GetBooleanv(GL_EDGE_FLAG, &temp_s0->unk1AD);
    __glMgrim_GetFloatv(GL_CURRENT_COLOR, &temp_s0->unk198);
    ((? (*)(__GLcontext *)) temp_s0->procs.table[0x53])(temp_s0);
    __glMgrim_GetFloatv(GL_CURRENT_INDEX, &temp_s0->unk1A8);
    __glMgrim_GetFloatv(GL_CURRENT_NORMAL, &temp_s0->unkB8);
    __glMgrim_GetFloatv(GL_CURRENT_TEXTURE_COORDS, &temp_s0->unkC8);
}

void __glMgrGetDepthBuffer(__GLcontext *gc, ...) {
    __GLcontext *temp_s7;
    s32 temp_a2;

    temp_s7 = __glCurrentContext;
    temp_a2 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_DEPTH_TEST) != 0) {
        temp_s7->unk6A0 = temp_a2 | 0x10;
    } else {
        temp_s7->unk6A0 = temp_a2 & ~0x10;
    }
    __glMgrim_GetIntegerv(GL_DEPTH_FUNC, &temp_s7->unk600);
    __glMgrim_GetBooleanv(GL_DEPTH_WRITEMASK, &temp_s7->unk604);
    __glMgrim_GetDoublev(GL_DEPTH_CLEAR_VALUE, &temp_s7->unk608);
}

void __glMgrGetEnables(__GLcontext *gc, ...) {
    __GLcontext *temp_s7;
    s32 temp_a2;
    s32 temp_a2_10;
    s32 temp_a2_11;
    s32 temp_a2_12;
    s32 temp_a2_13;
    s32 temp_a2_14;
    s32 temp_a2_15;
    s32 temp_a2_16;
    s32 temp_a2_17;
    s32 temp_a2_18;
    s32 temp_a2_19;
    s32 temp_a2_20;
    s32 temp_a2_21;
    s32 temp_a2_22;
    s32 temp_a2_23;
    s32 temp_a2_24;
    s32 temp_a2_25;
    s32 temp_a2_26;
    s32 temp_a2_27;
    s32 temp_a2_28;
    s32 temp_a2_29;
    s32 temp_a2_2;
    s32 temp_a2_30;
    s32 temp_a2_31;
    s32 temp_a2_32;
    s32 temp_a2_33;
    s32 temp_a2_34;
    s32 temp_a2_35;
    s32 temp_a2_36;
    s32 temp_a2_37;
    s32 temp_a2_38;
    s32 temp_a2_39;
    s32 temp_a2_3;
    s32 temp_a2_40;
    s32 temp_a2_41;
    s32 temp_a2_42;
    s32 temp_a2_43;
    s32 temp_a2_44;
    s32 temp_a2_45;
    s32 temp_a2_46;
    s32 temp_a2_47;
    s32 temp_a2_48;
    s32 temp_a2_49;
    s32 temp_a2_4;
    s32 temp_a2_50;
    s32 temp_a2_51;
    s32 temp_a2_52;
    s32 temp_a2_53;
    s32 temp_a2_54;
    s32 temp_a2_55;
    s32 temp_a2_56;
    s32 temp_a2_57;
    s32 temp_a2_58;
    s32 temp_a2_59;
    s32 temp_a2_5;
    s32 temp_a2_60;
    s32 temp_a2_61;
    s32 temp_a2_62;
    s32 temp_a2_63;
    s32 temp_a2_6;
    s32 temp_a2_7;
    s32 temp_a2_8;
    s32 temp_a2_9;

    temp_s7 = __glCurrentContext;
    temp_a2 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_ALPHA_TEST) != 0) {
        temp_s7->unk6A0 = temp_a2 | 1;
    } else {
        temp_s7->unk6A0 = temp_a2 & ~1;
    }
    temp_a2_2 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_AUTO_NORMAL) != 0) {
        temp_s7->unk6A0 = temp_a2_2 | 0x800000;
    } else {
        temp_s7->unk6A0 = temp_a2_2 & ~0x800000;
    }
    temp_a2_3 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_BLEND) != 0) {
        temp_s7->unk6A0 = temp_a2_3 | 2;
    } else {
        temp_s7->unk6A0 = temp_a2_3 & ~2;
    }
    temp_a2_4 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_COLOR_MATERIAL) != 0) {
        temp_s7->unk6A0 = temp_a2_4 | 0x80;
    } else {
        temp_s7->unk6A0 = temp_a2_4 & ~0x80;
    }
    temp_a2_5 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_CULL_FACE) != 0) {
        temp_s7->unk6A0 = temp_a2_5 | 0x1000;
    } else {
        temp_s7->unk6A0 = temp_a2_5 & ~0x1000;
    }
    temp_a2_6 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_DEPTH_TEST) != 0) {
        temp_s7->unk6A0 = temp_a2_6 | 0x10;
    } else {
        temp_s7->unk6A0 = temp_a2_6 & ~0x10;
    }
    temp_a2_7 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_DITHER) != 0) {
        temp_s7->unk6A0 = temp_a2_7 | 8;
    } else {
        temp_s7->unk6A0 = temp_a2_7 & ~8;
    }
    temp_a2_8 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_FOG) != 0) {
        temp_s7->unk6A0 = temp_a2_8 | 0x20;
    } else {
        temp_s7->unk6A0 = temp_a2_8 & ~0x20;
    }
    temp_a2_9 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_LINE_SMOOTH) != 0) {
        temp_s7->unk6A0 = temp_a2_9 | 0x200;
    } else {
        temp_s7->unk6A0 = temp_a2_9 & ~0x200;
    }
    temp_a2_10 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_LINE_STIPPLE) != 0) {
        temp_s7->unk6A0 = temp_a2_10 | 0x100;
    } else {
        temp_s7->unk6A0 = temp_a2_10 & ~0x100;
    }
    temp_a2_11 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_LOGIC_OP) != 0) {
        temp_s7->unk6A0 = temp_a2_11 | 4;
    } else {
        temp_s7->unk6A0 = temp_a2_11 & ~4;
    }
    temp_a2_12 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_COLOR_LOGIC_OP) != 0) {
        temp_s7->unk6A0 = temp_a2_12 | 0x800;
    } else {
        temp_s7->unk6A0 = temp_a2_12 & ~0x800;
    }
    temp_a2_13 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_NORMALIZE) != 0) {
        temp_s7->unk6A0 = temp_a2_13 | 0x400000;
    } else {
        temp_s7->unk6A0 = temp_a2_13 & ~0x400000;
    }
    temp_a2_14 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_POINT_SMOOTH) != 0) {
        temp_s7->unk6A0 = temp_a2_14 | 0x400;
    } else {
        temp_s7->unk6A0 = temp_a2_14 & ~0x400;
    }
    temp_a2_15 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_POLYGON_SMOOTH) != 0) {
        temp_s7->unk6A0 = temp_a2_15 | 0x800;
    } else {
        temp_s7->unk6A0 = temp_a2_15 & ~0x800;
    }
    temp_a2_16 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_POLYGON_STIPPLE) != 0) {
        temp_s7->unk6A0 = temp_a2_16 | 0x2000;
    } else {
        temp_s7->unk6A0 = temp_a2_16 & ~0x2000;
    }
    temp_a2_17 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_SCISSOR_TEST) != 0) {
        temp_s7->unk6A0 = temp_a2_17 | 0x4000;
    } else {
        temp_s7->unk6A0 = temp_a2_17 & ~0x4000;
    }
    temp_a2_18 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_STENCIL_TEST) != 0) {
        temp_s7->unk6A0 = temp_a2_18 | 0x8000;
    } else {
        temp_s7->unk6A0 = temp_a2_18 & ~0x8000;
    }
    temp_a2_19 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_TEXTURE_1D) != 0) {
        temp_s7->unk6A0 = temp_a2_19 | 0x10000;
    } else {
        temp_s7->unk6A0 = temp_a2_19 & ~0x10000;
    }
    temp_a2_20 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_TEXTURE_2D) != 0) {
        temp_s7->unk6A0 = temp_a2_20 | 0x20000;
    } else {
        temp_s7->unk6A0 = temp_a2_20 & ~0x20000;
    }
    temp_a2_21 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_TEXTURE_GEN_S) != 0) {
        temp_s7->unk6A0 = temp_a2_21 | 0x40000;
    } else {
        temp_s7->unk6A0 = temp_a2_21 & ~0x40000;
    }
    temp_a2_22 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_TEXTURE_GEN_T) != 0) {
        temp_s7->unk6A0 = temp_a2_22 | 0x80000;
    } else {
        temp_s7->unk6A0 = temp_a2_22 & ~0x80000;
    }
    temp_a2_23 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_TEXTURE_GEN_R) != 0) {
        temp_s7->unk6A0 = temp_a2_23 | 0x100000;
    } else {
        temp_s7->unk6A0 = temp_a2_23 & ~0x100000;
    }
    temp_a2_24 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_TEXTURE_GEN_Q) != 0) {
        temp_s7->unk6A0 = temp_a2_24 | 0x200000;
    } else {
        temp_s7->unk6A0 = temp_a2_24 & ~0x200000;
    }
    temp_a2_25 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_POLYGON_OFFSET_FILL) != 0) {
        temp_s7->unk6A0 = temp_a2_25 | 0x01000000;
    } else {
        temp_s7->unk6A0 = temp_a2_25 & ~0x01000000;
    }
    temp_a2_26 = temp_s7->unk6AC;
    if (__glMgrim_IsEnabled(GL_CLIP_PLANE0) != 0) {
        temp_s7->unk6AC = temp_a2_26 | 1;
    } else {
        temp_s7->unk6AC = temp_a2_26 & ~1;
    }
    temp_a2_27 = temp_s7->unk6AC;
    if (__glMgrim_IsEnabled(GL_CLIP_PLANE1) != 0) {
        temp_s7->unk6AC = temp_a2_27 | 2;
    } else {
        temp_s7->unk6AC = temp_a2_27 & ~2;
    }
    temp_a2_28 = temp_s7->unk6AC;
    if (__glMgrim_IsEnabled(GL_CLIP_PLANE2) != 0) {
        temp_s7->unk6AC = temp_a2_28 | 4;
    } else {
        temp_s7->unk6AC = temp_a2_28 & ~4;
    }
    temp_a2_29 = temp_s7->unk6AC;
    if (__glMgrim_IsEnabled(GL_CLIP_PLANE3) != 0) {
        temp_s7->unk6AC = temp_a2_29 | 8;
    } else {
        temp_s7->unk6AC = temp_a2_29 & ~8;
    }
    temp_a2_30 = temp_s7->unk6AC;
    if (__glMgrim_IsEnabled(GL_CLIP_PLANE4) != 0) {
        temp_s7->unk6AC = temp_a2_30 | 0x10;
    } else {
        temp_s7->unk6AC = temp_a2_30 & ~0x10;
    }
    temp_a2_31 = temp_s7->unk6AC;
    if (__glMgrim_IsEnabled(GL_CLIP_PLANE5) != 0) {
        temp_s7->unk6AC = temp_a2_31 | 0x20;
    } else {
        temp_s7->unk6AC = temp_a2_31 & ~0x20;
    }
    temp_a2_32 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_LIGHTING) != 0) {
        temp_s7->unk6A0 = temp_a2_32 | 0x40;
    } else {
        temp_s7->unk6A0 = temp_a2_32 & ~0x40;
    }
    temp_a2_33 = temp_s7->unk6A8;
    if (__glMgrim_IsEnabled(GL_LIGHT0) != 0) {
        temp_s7->unk6A8 = temp_a2_33 | 1;
    } else {
        temp_s7->unk6A8 = temp_a2_33 & ~1;
    }
    temp_a2_34 = temp_s7->unk6A8;
    if (__glMgrim_IsEnabled(GL_LIGHT1) != 0) {
        temp_s7->unk6A8 = temp_a2_34 | 2;
    } else {
        temp_s7->unk6A8 = temp_a2_34 & ~2;
    }
    temp_a2_35 = temp_s7->unk6A8;
    if (__glMgrim_IsEnabled(GL_LIGHT2) != 0) {
        temp_s7->unk6A8 = temp_a2_35 | 4;
    } else {
        temp_s7->unk6A8 = temp_a2_35 & ~4;
    }
    temp_a2_36 = temp_s7->unk6A8;
    if (__glMgrim_IsEnabled(GL_LIGHT3) != 0) {
        temp_s7->unk6A8 = temp_a2_36 | 8;
    } else {
        temp_s7->unk6A8 = temp_a2_36 & ~8;
    }
    temp_a2_37 = temp_s7->unk6A8;
    if (__glMgrim_IsEnabled(GL_LIGHT4) != 0) {
        temp_s7->unk6A8 = temp_a2_37 | 0x10;
    } else {
        temp_s7->unk6A8 = temp_a2_37 & ~0x10;
    }
    temp_a2_38 = temp_s7->unk6A8;
    if (__glMgrim_IsEnabled(GL_LIGHT5) != 0) {
        temp_s7->unk6A8 = temp_a2_38 | 0x20;
    } else {
        temp_s7->unk6A8 = temp_a2_38 & ~0x20;
    }
    temp_a2_39 = temp_s7->unk6A8;
    if (__glMgrim_IsEnabled(GL_LIGHT6) != 0) {
        temp_s7->unk6A8 = temp_a2_39 | 0x40;
    } else {
        temp_s7->unk6A8 = temp_a2_39 & ~0x40;
    }
    temp_a2_40 = temp_s7->unk6A8;
    if (__glMgrim_IsEnabled(GL_LIGHT7) != 0) {
        temp_s7->unk6A8 = temp_a2_40 | 0x80;
    } else {
        temp_s7->unk6A8 = temp_a2_40 & ~0x80;
    }
    temp_a2_41 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_HISTOGRAM_EXT) != 0) {
        temp_s7->unk6A0 = temp_a2_41 | 0x10000000;
    } else {
        temp_s7->unk6A0 = temp_a2_41 & ~0x10000000;
    }
    temp_a2_42 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_MINMAX_EXT) != 0) {
        temp_s7->unk6A0 = temp_a2_42 | 0x20000000;
    } else {
        temp_s7->unk6A0 = temp_a2_42 & ~0x20000000;
    }
    temp_a2_43 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_CONVOLUTION_1D_EXT) != 0) {
        temp_s7->unk6A0 = temp_a2_43 | 0x02000000;
    } else {
        temp_s7->unk6A0 = temp_a2_43 & ~0x02000000;
    }
    temp_a2_44 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_CONVOLUTION_2D_EXT) != 0) {
        temp_s7->unk6A0 = temp_a2_44 | 0x04000000;
    } else {
        temp_s7->unk6A0 = temp_a2_44 & ~0x04000000;
    }
    temp_a2_45 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_SEPARABLE_2D_EXT) != 0) {
        temp_s7->unk6A0 = temp_a2_45 | 0x08000000;
    } else {
        temp_s7->unk6A0 = temp_a2_45 & ~0x08000000;
    }
    temp_a2_46 = temp_s7->unk6B0;
    if (__glMgrim_IsEnabled(GL_MAP1_VERTEX_3) != 0) {
        temp_s7->unk6B0 = temp_a2_46 | 0x80;
    } else {
        temp_s7->unk6B0 = temp_a2_46 & ~0x80;
    }
    temp_a2_47 = temp_s7->unk6B0;
    if (__glMgrim_IsEnabled(GL_MAP1_VERTEX_4) != 0) {
        temp_s7->unk6B0 = temp_a2_47 | 0x100;
    } else {
        temp_s7->unk6B0 = temp_a2_47 & ~0x100;
    }
    temp_a2_48 = temp_s7->unk6B0;
    if (__glMgrim_IsEnabled(GL_MAP1_INDEX) != 0) {
        temp_s7->unk6B0 = temp_a2_48 | 2;
    } else {
        temp_s7->unk6B0 = temp_a2_48 & ~2;
    }
    temp_a2_49 = temp_s7->unk6B0;
    if (__glMgrim_IsEnabled(GL_MAP1_COLOR_4) != 0) {
        temp_s7->unk6B0 = temp_a2_49 | 1;
    } else {
        temp_s7->unk6B0 = temp_a2_49 & ~1;
    }
    temp_a2_50 = temp_s7->unk6B0;
    if (__glMgrim_IsEnabled(GL_MAP1_NORMAL) != 0) {
        temp_s7->unk6B0 = temp_a2_50 | 4;
    } else {
        temp_s7->unk6B0 = temp_a2_50 & ~4;
    }
    temp_a2_51 = temp_s7->unk6B0;
    if (__glMgrim_IsEnabled(GL_MAP1_TEXTURE_COORD_1) != 0) {
        temp_s7->unk6B0 = temp_a2_51 | 8;
    } else {
        temp_s7->unk6B0 = temp_a2_51 & ~8;
    }
    temp_a2_52 = temp_s7->unk6B0;
    if (__glMgrim_IsEnabled(GL_MAP1_TEXTURE_COORD_2) != 0) {
        temp_s7->unk6B0 = temp_a2_52 | 0x10;
    } else {
        temp_s7->unk6B0 = temp_a2_52 & ~0x10;
    }
    temp_a2_53 = temp_s7->unk6B0;
    if (__glMgrim_IsEnabled(GL_MAP1_TEXTURE_COORD_3) != 0) {
        temp_s7->unk6B0 = temp_a2_53 | 0x20;
    } else {
        temp_s7->unk6B0 = temp_a2_53 & ~0x20;
    }
    temp_a2_54 = temp_s7->unk6B0;
    if (__glMgrim_IsEnabled(GL_MAP1_TEXTURE_COORD_4) != 0) {
        temp_s7->unk6B0 = temp_a2_54 | 0x40;
    } else {
        temp_s7->unk6B0 = temp_a2_54 & ~0x40;
    }
    temp_a2_55 = temp_s7->unk6B4;
    if (__glMgrim_IsEnabled(GL_MAP2_VERTEX_3) != 0) {
        temp_s7->unk6B4 = temp_a2_55 | 0x80;
    } else {
        temp_s7->unk6B4 = temp_a2_55 & ~0x80;
    }
    temp_a2_56 = temp_s7->unk6B4;
    if (__glMgrim_IsEnabled(GL_MAP2_VERTEX_4) != 0) {
        temp_s7->unk6B4 = temp_a2_56 | 0x100;
    } else {
        temp_s7->unk6B4 = temp_a2_56 & ~0x100;
    }
    temp_a2_57 = temp_s7->unk6B4;
    if (__glMgrim_IsEnabled(GL_MAP2_INDEX) != 0) {
        temp_s7->unk6B4 = temp_a2_57 | 2;
    } else {
        temp_s7->unk6B4 = temp_a2_57 & ~2;
    }
    temp_a2_58 = temp_s7->unk6B4;
    if (__glMgrim_IsEnabled(GL_MAP2_COLOR_4) != 0) {
        temp_s7->unk6B4 = temp_a2_58 | 1;
    } else {
        temp_s7->unk6B4 = temp_a2_58 & ~1;
    }
    temp_a2_59 = temp_s7->unk6B4;
    if (__glMgrim_IsEnabled(GL_MAP2_NORMAL) != 0) {
        temp_s7->unk6B4 = temp_a2_59 | 4;
    } else {
        temp_s7->unk6B4 = temp_a2_59 & ~4;
    }
    temp_a2_60 = temp_s7->unk6B4;
    if (__glMgrim_IsEnabled(GL_MAP2_TEXTURE_COORD_1) != 0) {
        temp_s7->unk6B4 = temp_a2_60 | 8;
    } else {
        temp_s7->unk6B4 = temp_a2_60 & ~8;
    }
    temp_a2_61 = temp_s7->unk6B4;
    if (__glMgrim_IsEnabled(GL_MAP2_TEXTURE_COORD_2) != 0) {
        temp_s7->unk6B4 = temp_a2_61 | 0x10;
    } else {
        temp_s7->unk6B4 = temp_a2_61 & ~0x10;
    }
    temp_a2_62 = temp_s7->unk6B4;
    if (__glMgrim_IsEnabled(GL_MAP2_TEXTURE_COORD_3) != 0) {
        temp_s7->unk6B4 = temp_a2_62 | 0x20;
    } else {
        temp_s7->unk6B4 = temp_a2_62 & ~0x20;
    }
    temp_a2_63 = temp_s7->unk6B4;
    if (__glMgrim_IsEnabled(GL_MAP2_TEXTURE_COORD_4) != 0) {
        temp_s7->unk6B4 = temp_a2_63 | 0x40;
    } else {
        temp_s7->unk6B4 = temp_a2_63 & ~0x40;
    }
}

void __glMgrGetEval(__GLcontext *gc, ...) {
    __GLcontext *temp_s7;
    s32 temp_a2;
    s32 temp_a2_10;
    s32 temp_a2_11;
    s32 temp_a2_12;
    s32 temp_a2_13;
    s32 temp_a2_14;
    s32 temp_a2_15;
    s32 temp_a2_16;
    s32 temp_a2_17;
    s32 temp_a2_18;
    s32 temp_a2_19;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_a2_7;
    s32 temp_a2_8;
    s32 temp_a2_9;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_at;
    s32 var_at_2;
    s32 var_at_3;
    s32 var_at_4;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s32 var_v0_5;
    s32 var_v1;
    s32 var_v1_2;
    s32 var_v1_3;
    s32 var_v1_4;
    s32 var_v1_5;

    temp_s7 = __glCurrentContext;
    temp_a2 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_AUTO_NORMAL) != 0) {
        var_v0 = temp_a2 | 0x800000;
    } else {
        var_v0 = temp_a2 & ~0x800000;
    }
    temp_s7->unk6A0 = var_v0;
    temp_a2_2 = temp_s7->unk6B0;
    if (__glMgrim_IsEnabled(GL_MAP1_VERTEX_3) != 0) {
        var_v1 = temp_a2_2 | 0x80;
    } else {
        var_v1 = temp_a2_2 & ~0x80;
    }
    temp_s7->unk6B0 = var_v1;
    temp_a2_3 = temp_s7->unk6B0;
    if (__glMgrim_IsEnabled(GL_MAP1_VERTEX_4) != 0) {
        var_a0 = temp_a2_3 | 0x100;
    } else {
        var_a0 = temp_a2_3 & ~0x100;
    }
    temp_s7->unk6B0 = var_a0;
    temp_a2_4 = temp_s7->unk6B0;
    if (__glMgrim_IsEnabled(GL_MAP1_INDEX) != 0) {
        var_at = temp_a2_4 | 2;
    } else {
        var_at = temp_a2_4 & ~2;
    }
    temp_s7->unk6B0 = var_at;
    temp_a2_5 = temp_s7->unk6B0;
    if (__glMgrim_IsEnabled(GL_MAP1_COLOR_4) != 0) {
        var_v0_2 = temp_a2_5 | 1;
    } else {
        var_v0_2 = temp_a2_5 & ~1;
    }
    temp_s7->unk6B0 = var_v0_2;
    temp_a2_6 = temp_s7->unk6B0;
    if (__glMgrim_IsEnabled(GL_MAP1_NORMAL) != 0) {
        var_v1_2 = temp_a2_6 | 4;
    } else {
        var_v1_2 = temp_a2_6 & ~4;
    }
    temp_s7->unk6B0 = var_v1_2;
    temp_a2_7 = temp_s7->unk6B0;
    if (__glMgrim_IsEnabled(GL_MAP1_TEXTURE_COORD_1) != 0) {
        var_a0_2 = temp_a2_7 | 8;
    } else {
        var_a0_2 = temp_a2_7 & ~8;
    }
    temp_s7->unk6B0 = var_a0_2;
    temp_a2_8 = temp_s7->unk6B0;
    if (__glMgrim_IsEnabled(GL_MAP1_TEXTURE_COORD_2) != 0) {
        var_at_2 = temp_a2_8 | 0x10;
    } else {
        var_at_2 = temp_a2_8 & ~0x10;
    }
    temp_s7->unk6B0 = var_at_2;
    temp_a2_9 = temp_s7->unk6B0;
    if (__glMgrim_IsEnabled(GL_MAP1_TEXTURE_COORD_3) != 0) {
        var_v0_3 = temp_a2_9 | 0x20;
    } else {
        var_v0_3 = temp_a2_9 & ~0x20;
    }
    temp_s7->unk6B0 = var_v0_3;
    temp_a2_10 = temp_s7->unk6B0;
    if (__glMgrim_IsEnabled(GL_MAP1_TEXTURE_COORD_4) != 0) {
        var_v1_3 = temp_a2_10 | 0x40;
    } else {
        var_v1_3 = temp_a2_10 & ~0x40;
    }
    temp_s7->unk6B0 = var_v1_3;
    temp_a2_11 = temp_s7->unk6B4;
    if (__glMgrim_IsEnabled(GL_MAP2_VERTEX_3) != 0) {
        var_a0_3 = temp_a2_11 | 0x80;
    } else {
        var_a0_3 = temp_a2_11 & ~0x80;
    }
    temp_s7->unk6B4 = var_a0_3;
    temp_a2_12 = temp_s7->unk6B4;
    if (__glMgrim_IsEnabled(GL_MAP2_VERTEX_4) != 0) {
        var_at_3 = temp_a2_12 | 0x100;
    } else {
        var_at_3 = temp_a2_12 & ~0x100;
    }
    temp_s7->unk6B4 = var_at_3;
    temp_a2_13 = temp_s7->unk6B4;
    if (__glMgrim_IsEnabled(GL_MAP2_INDEX) != 0) {
        var_v0_4 = temp_a2_13 | 2;
    } else {
        var_v0_4 = temp_a2_13 & ~2;
    }
    temp_s7->unk6B4 = var_v0_4;
    temp_a2_14 = temp_s7->unk6B4;
    if (__glMgrim_IsEnabled(GL_MAP2_COLOR_4) != 0) {
        var_v1_4 = temp_a2_14 | 1;
    } else {
        var_v1_4 = temp_a2_14 & ~1;
    }
    temp_s7->unk6B4 = var_v1_4;
    temp_a2_15 = temp_s7->unk6B4;
    if (__glMgrim_IsEnabled(GL_MAP2_NORMAL) != 0) {
        var_a0_4 = temp_a2_15 | 4;
    } else {
        var_a0_4 = temp_a2_15 & ~4;
    }
    temp_s7->unk6B4 = var_a0_4;
    temp_a2_16 = temp_s7->unk6B4;
    if (__glMgrim_IsEnabled(GL_MAP2_TEXTURE_COORD_1) != 0) {
        var_at_4 = temp_a2_16 | 8;
    } else {
        var_at_4 = temp_a2_16 & ~8;
    }
    temp_s7->unk6B4 = var_at_4;
    temp_a2_17 = temp_s7->unk6B4;
    if (__glMgrim_IsEnabled(GL_MAP2_TEXTURE_COORD_2) != 0) {
        var_v0_5 = temp_a2_17 | 0x10;
    } else {
        var_v0_5 = temp_a2_17 & ~0x10;
    }
    temp_s7->unk6B4 = var_v0_5;
    temp_a2_18 = temp_s7->unk6B4;
    if (__glMgrim_IsEnabled(GL_MAP2_TEXTURE_COORD_3) != 0) {
        var_v1_5 = temp_a2_18 | 0x20;
    } else {
        var_v1_5 = temp_a2_18 & ~0x20;
    }
    temp_s7->unk6B4 = var_v1_5;
    temp_a2_19 = temp_s7->unk6B4;
    if (__glMgrim_IsEnabled(GL_MAP2_TEXTURE_COORD_4) != 0) {
        var_a0_5 = temp_a2_19 | 0x40;
    } else {
        var_a0_5 = temp_a2_19 & ~0x40;
    }
    temp_s7->unk6B4 = var_a0_5;
    __glMgrim_GetFloatv(GL_MAP1_GRID_DOMAIN, sp);
    temp_s7->unk720 = sp0;
    temp_s7->unk724 = sp4;
    __glMgrim_GetFloatv(GL_MAP1_GRID_SEGMENTS, sp);
    temp_s7->unk72C = (s32) sp0;
    __glMgrim_GetFloatv(GL_MAP2_GRID_DOMAIN, sp);
    temp_s7->unk730 = sp0;
    temp_s7->unk734 = sp4;
    temp_s7->unk740 = sp8;
    temp_s7->unk744 = spC;
    __glMgrim_GetFloatv(GL_MAP2_GRID_SEGMENTS, sp);
    temp_s7->unk73C = (s32) sp0;
    temp_s7->unk74C = (s32) sp4;
}

void __glMgrGetFog(__GLcontext *gc, ...) {
    __GLcontext *temp_s7;
    f32 temp_f4;
    f32 temp_f5;
    s32 temp_a2;

    temp_s7 = __glCurrentContext;
    temp_a2 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_FOG) != 0) {
        temp_s7->unk6A0 = temp_a2 | 0x20;
    } else {
        temp_s7->unk6A0 = temp_a2 & ~0x20;
    }
    __glMgrim_GetFloatv(GL_FOG_INDEX, &temp_s7->unk5F8);
    __glMgrim_GetFloatv(GL_FOG_DENSITY, &temp_s7->unk5E8);
    __glMgrim_GetFloatv(GL_FOG_START, &temp_s7->unk5EC);
    __glMgrim_GetFloatv(GL_FOG_END, &temp_s7->unk5F0);
    __glMgrim_GetIntegerv(GL_FOG_MODE, &temp_s7->unk5D4);
    __glMgrim_GetFloatv(GL_FOG_COLOR, &temp_s7->unk5D8);
    if (temp_s7->unk5D4 == GL_LINEAR) {
        temp_f4 = temp_s7->unk5F0;
        temp_f5 = temp_s7->unk5EC;
        if (temp_f5 != temp_f4) {
            temp_s7->unk5F4 = temp_s7->unkCD4 / (temp_f4 - temp_f5);
        } else {
            temp_s7->unk5F4 = 0.0f;
        }
    }
}

void __glMgrGetLighting(__GLcontext *gc, ...) {
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    __GLcontext *temp_s1;
    enum GLenum temp_a0_11;
    enum GLenum var_s0;
    f32 *temp_a2;
    f32 *temp_a2_2;
    f32 *var_s2;
    f32 *var_s3;
    f32 *var_s5;
    f32 *var_s6;
    f32 *var_s7;
    f32 *var_s8;
    s32 temp_a0;
    s32 temp_a0_10;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a0_6;
    s32 temp_a0_7;
    s32 temp_a0_8;
    s32 temp_a0_9;
    s32 var_s4;

    temp_s1 = __glCurrentContext;
    temp_a0 = temp_s1->unk6A0;
    if (__glMgrim_IsEnabled(GL_COLOR_MATERIAL) != 0) {
        temp_s1->unk6A0 = temp_a0 | 0x80;
    } else {
        temp_s1->unk6A0 = temp_a0 & ~0x80;
    }
    temp_a0_2 = temp_s1->unk6A0;
    if (__glMgrim_IsEnabled(GL_LIGHTING) != 0) {
        temp_s1->unk6A0 = temp_a0_2 | 0x40;
    } else {
        temp_s1->unk6A0 = temp_a0_2 & ~0x40;
    }
    temp_a0_3 = temp_s1->unk6A8;
    if (__glMgrim_IsEnabled(GL_LIGHT0) != 0) {
        temp_s1->unk6A8 = temp_a0_3 | 1;
    } else {
        temp_s1->unk6A8 = temp_a0_3 & ~1;
    }
    temp_a0_4 = temp_s1->unk6A8;
    if (__glMgrim_IsEnabled(GL_LIGHT1) != 0) {
        temp_s1->unk6A8 = temp_a0_4 | 2;
    } else {
        temp_s1->unk6A8 = temp_a0_4 & ~2;
    }
    temp_a0_5 = temp_s1->unk6A8;
    if (__glMgrim_IsEnabled(GL_LIGHT2) != 0) {
        temp_s1->unk6A8 = temp_a0_5 | 4;
    } else {
        temp_s1->unk6A8 = temp_a0_5 & ~4;
    }
    temp_a0_6 = temp_s1->unk6A8;
    if (__glMgrim_IsEnabled(GL_LIGHT3) != 0) {
        temp_s1->unk6A8 = temp_a0_6 | 8;
    } else {
        temp_s1->unk6A8 = temp_a0_6 & ~8;
    }
    temp_a0_7 = temp_s1->unk6A8;
    if (__glMgrim_IsEnabled(GL_LIGHT4) != 0) {
        temp_s1->unk6A8 = temp_a0_7 | 0x10;
    } else {
        temp_s1->unk6A8 = temp_a0_7 & ~0x10;
    }
    temp_a0_8 = temp_s1->unk6A8;
    if (__glMgrim_IsEnabled(GL_LIGHT5) != 0) {
        temp_s1->unk6A8 = temp_a0_8 | 0x20;
    } else {
        temp_s1->unk6A8 = temp_a0_8 & ~0x20;
    }
    temp_a0_9 = temp_s1->unk6A8;
    if (__glMgrim_IsEnabled(GL_LIGHT6) != 0) {
        temp_s1->unk6A8 = temp_a0_9 | 0x40;
    } else {
        temp_s1->unk6A8 = temp_a0_9 & ~0x40;
    }
    temp_a0_10 = temp_s1->unk6A8;
    if (__glMgrim_IsEnabled(GL_LIGHT7) != 0) {
        temp_s1->unk6A8 = temp_a0_10 | 0x80;
    } else {
        temp_s1->unk6A8 = temp_a0_10 & ~0x80;
    }
    __glMgrim_GetIntegerv(GL_COLOR_MATERIAL_FACE, &temp_s1->unk510);
    __glMgrim_GetIntegerv(GL_COLOR_MATERIAL_PARAMETER, &temp_s1->unk514);
    __glMgrim_GetIntegerv(GL_SHADE_MODEL, &temp_s1->unk518);
    __glMgrim_GetBooleanv(GL_LIGHT_MODEL_LOCAL_VIEWER, &temp_s1->unk52C);
    __glMgrim_GetBooleanv(GL_LIGHT_MODEL_TWO_SIDE, &temp_s1->unk52D);
    __glMgrim_GetFloatv(GL_LIGHT_MODEL_AMBIENT, &temp_s1->unk51C);
    __glMgrim_GetMaterialfv(GL_FRONT, GL_AMBIENT, &temp_s1->unk530);
    __glMgrim_GetMaterialfv(GL_FRONT, GL_DIFFUSE, &temp_s1->unk540);
    __glMgrim_GetMaterialfv(GL_FRONT, GL_SPECULAR, &temp_s1->unk550);
    __glMgrim_GetMaterialfv(GL_FRONT, GL_EMISSION, &temp_s1->unk560);
    __glMgrim_GetMaterialfv(GL_FRONT, GL_SHININESS, &temp_s1->unk570);
    __glMgrim_GetMaterialfv(GL_FRONT, GL_COLOR_INDEXES, sp);
    temp_s1->unk574 = sp0;
    temp_s1->unk57C = sp4;
    temp_s1->unk578 = sp8;
    __glMgrim_GetMaterialfv(GL_BACK, GL_AMBIENT, &temp_s1->unk580);
    __glMgrim_GetMaterialfv(GL_BACK, GL_DIFFUSE, &temp_s1->unk590);
    __glMgrim_GetMaterialfv(GL_BACK, GL_SPECULAR, &temp_s1->unk5A0);
    __glMgrim_GetMaterialfv(GL_BACK, GL_EMISSION, &temp_s1->unk5B0);
    __glMgrim_GetMaterialfv(GL_BACK, GL_SHININESS, &temp_s1->unk5C0);
    __glMgrim_GetMaterialfv(GL_BACK, GL_COLOR_INDEXES, sp);
    var_s0 = GL_LIGHT0;
    temp_s1->unk5C4 = sp0;
    var_s3 = temp_s1->unk5D0;
    temp_s1->unk5CC = sp4;
    temp_s1->unk5C8 = sp8;
    if ((u32) (temp_s1->unkD00 + 0x4000) >= 0x4001U) {
        var_s4 = temp_s1->unk6DF8 + 0x84;
        var_s2 = var_s3 + 0x50;
        sp40 = (s64) (var_s3 + 0x6C);
        var_s7 = var_s3 + 0x68;
        sp38 = (s64) (var_s3 + 0x70);
        var_s8 = var_s3 + 0x64;
        sp28 = (s64) (var_s3 + 0x60);
        var_s6 = var_s3 + 0x20;
        sp30 = (s64) (var_s3 + 0x40);
        var_s5 = var_s3 + 0x10;
        do {
            __glMgrim_GetLightfv(var_s0, GL_AMBIENT, var_s3);
            __glMgrim_GetLightfv(var_s0, GL_DIFFUSE, var_s5);
            __glMgrim_GetLightfv(var_s0, GL_SPECULAR, var_s6);
            __glMgrim_GetLightfv(var_s0, GL_POSITION, (f32 *) sp30);
            __glMgrim_GetLightfv(var_s0, GL_SPOT_DIRECTION, var_s2);
            ((? (*)(s32, f32 *)) temp_s1->procs.table[0x3B])(var_s4, var_s2);
            __glMgrim_GetLightfv(var_s0, GL_SPOT_EXPONENT, (f32 *) sp28);
            var_s3 += 0x74;
            temp_a2 = var_s8;
            var_s8 += 0x74;
            __glMgrim_GetLightfv(var_s0, GL_SPOT_CUTOFF, temp_a2);
            var_s2 += 0x74;
            temp_a2_2 = var_s7;
            var_s7 += 0x74;
            __glMgrim_GetLightfv(var_s0, GL_CONSTANT_ATTENUATION, temp_a2_2);
            var_s6 += 0x74;
            __glMgrim_GetLightfv(var_s0, GL_LINEAR_ATTENUATION, (f32 *) sp40);
            var_s5 += 0x74;
            temp_a0_11 = var_s0;
            var_s0 += 1;
            __glMgrim_GetLightfv(temp_a0_11, GL_QUADRATIC_ATTENUATION, (f32 *) sp38);
            var_s4 += 0xE0;
            sp30 += 0x74;
            sp28 += 0x74;
            sp40 += 0x74;
            sp38 += 0x74;
        } while (var_s0 < (u32) (temp_s1->unkD00 + 0x4000));
    }
    __glBeginMode = 2;
    temp_s1->procs.table[0x16] = (void *) ((s32) temp_s1->procs.table[0x16] | 0x20);
    __glValidateLighting(temp_s1);
}

void __glMgrGetLine(__GLcontext *gc, ...) {
    __GLcontext *temp_s7;
    s32 temp_a2;
    s32 temp_a2_2;

    temp_s7 = __glCurrentContext;
    temp_a2 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_LINE_SMOOTH) != 0) {
        temp_s7->unk6A0 = temp_a2 | 0x200;
    } else {
        temp_s7->unk6A0 = temp_a2 & ~0x200;
    }
    temp_a2_2 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_LINE_STIPPLE) != 0) {
        temp_s7->unk6A0 = temp_a2_2 | 0x100;
    } else {
        temp_s7->unk6A0 = temp_a2_2 & ~0x100;
    }
    __glMgrim_GetFloatv(GL_LINE_WIDTH, &temp_s7->unk1BC);
    __glim_LineWidth(temp_s7->unk1BC);
    __glMgrim_GetIntegerv(GL_LINE_STIPPLE_PATTERN, sp);
    temp_s7->unk1C8 = (u16) sp0;
    __glMgrim_GetIntegerv(GL_LINE_STIPPLE_REPEAT, sp);
    temp_s7->unk1CA = (s16) sp0;
}

void __glMgrGetPixel(__GLcontext *gc, ...) {
    __GLcontext *temp_s7;

    temp_s7 = __glCurrentContext;
    __glMgrim_GetBooleanv(GL_UNPACK_SWAP_BYTES, &temp_s7->unk454);
    __glMgrim_GetBooleanv(GL_UNPACK_LSB_FIRST, &temp_s7->unk455);
    __glMgrim_GetIntegerv(GL_UNPACK_ROW_LENGTH, &temp_s7->unk458);
    __glMgrim_GetIntegerv(GL_UNPACK_SKIP_ROWS, &temp_s7->unk45C);
    __glMgrim_GetIntegerv(GL_UNPACK_SKIP_PIXELS, &temp_s7->unk460);
    __glMgrim_GetIntegerv(GL_UNPACK_ALIGNMENT, &temp_s7->unk464);
    __glMgrim_GetBooleanv(GL_PACK_SWAP_BYTES, &temp_s7->unk430);
    __glMgrim_GetBooleanv(GL_PACK_LSB_FIRST, &temp_s7->unk431);
    __glMgrim_GetIntegerv(GL_PACK_ROW_LENGTH, &temp_s7->unk434);
    __glMgrim_GetIntegerv(GL_PACK_SKIP_ROWS, &temp_s7->unk438);
    __glMgrim_GetIntegerv(GL_PACK_SKIP_PIXELS, &temp_s7->unk43C);
    __glMgrim_GetIntegerv(GL_PACK_ALIGNMENT, &temp_s7->unk440);
    __glMgrim_GetBooleanv(GL_MAP_COLOR, &temp_s7->unk2E0);
    __glMgrim_GetBooleanv(GL_MAP_STENCIL, &temp_s7->unk2E1);
    __glMgrim_GetIntegerv(GL_INDEX_SHIFT, &temp_s7->unk2D8);
    __glMgrim_GetIntegerv(GL_INDEX_OFFSET, &temp_s7->unk2DC);
    __glMgrim_GetFloatv(GL_RED_SCALE, &temp_s7->unk268);
    __glMgrim_GetFloatv(GL_GREEN_SCALE, &temp_s7->unk26C);
    __glMgrim_GetFloatv(GL_BLUE_SCALE, &temp_s7->unk270);
    __glMgrim_GetFloatv(GL_ALPHA_SCALE, &temp_s7->unk274);
    __glMgrim_GetFloatv(GL_DEPTH_SCALE, &temp_s7->unk278);
    __glMgrim_GetFloatv(GL_RED_BIAS, &temp_s7->unk27C);
    __glMgrim_GetFloatv(GL_GREEN_BIAS, &temp_s7->unk280);
    __glMgrim_GetFloatv(GL_BLUE_BIAS, &temp_s7->unk284);
    __glMgrim_GetFloatv(GL_ALPHA_BIAS, &temp_s7->unk288);
    __glMgrim_GetFloatv(GL_DEPTH_BIAS, &temp_s7->unk28C);
    __glMgrim_GetFloatv(GL_ZOOM_X, &temp_s7->unk2D0);
    __glMgrim_GetFloatv(GL_ZOOM_Y, &temp_s7->unk2D4);
    __glim_GetPixelMapuiv(GL_PIXEL_MAP_I_TO_I, temp_s7->unk3C0);
    __glim_GetPixelMapuiv(GL_PIXEL_MAP_S_TO_S, temp_s7->unk3CC);
    __glim_GetPixelMapfv(GL_PIXEL_MAP_I_TO_R, temp_s7->unk3D8);
    __glim_GetPixelMapfv(GL_PIXEL_MAP_I_TO_G, temp_s7->unk3E4);
    __glim_GetPixelMapfv(GL_PIXEL_MAP_I_TO_B, temp_s7->unk3F0);
    __glim_GetPixelMapfv(GL_PIXEL_MAP_I_TO_A, temp_s7->unk3FC);
    __glim_GetPixelMapfv(GL_PIXEL_MAP_R_TO_R, temp_s7->unk408);
    __glim_GetPixelMapfv(GL_PIXEL_MAP_G_TO_G, temp_s7->unk414);
    __glim_GetPixelMapfv(GL_PIXEL_MAP_B_TO_B, temp_s7->unk420);
    __glim_GetPixelMapfv(GL_PIXEL_MAP_A_TO_A, temp_s7->unk42C);
    __glMgrim_GetIntegerv(GL_PIXEL_MAP_I_TO_I_SIZE, &temp_s7->unk3B8);
    __glMgrim_GetIntegerv(GL_PIXEL_MAP_S_TO_S_SIZE, &temp_s7->unk3C4);
    __glMgrim_GetIntegerv(GL_PIXEL_MAP_I_TO_R_SIZE, &temp_s7->unk3D0);
    __glMgrim_GetIntegerv(GL_PIXEL_MAP_I_TO_G_SIZE, &temp_s7->unk3DC);
    __glMgrim_GetIntegerv(GL_PIXEL_MAP_I_TO_B_SIZE, &temp_s7->unk3E8);
    __glMgrim_GetIntegerv(GL_PIXEL_MAP_I_TO_A_SIZE, &temp_s7->unk3F4);
    __glMgrim_GetIntegerv(GL_PIXEL_MAP_R_TO_R_SIZE, &temp_s7->unk400);
    __glMgrim_GetIntegerv(GL_PIXEL_MAP_G_TO_G_SIZE, &temp_s7->unk40C);
    __glMgrim_GetIntegerv(GL_PIXEL_MAP_B_TO_B_SIZE, &temp_s7->unk418);
    __glMgrim_GetIntegerv(GL_PIXEL_MAP_A_TO_A_SIZE, &temp_s7->unk424);
    __glMgrim_GetIntegerv(GL_READ_BUFFER, &temp_s7->unk480);
}

void __glMgrGetPoint(__GLcontext *gc, ...) {
    __GLcontext *temp_s7;
    s32 temp_a2;

    temp_s7 = __glCurrentContext;
    temp_a2 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_POINT_SMOOTH) != 0) {
        temp_s7->unk6A0 = temp_a2 | 0x400;
    } else {
        temp_s7->unk6A0 = temp_a2 & ~0x400;
    }
    __glMgrim_GetFloatv(GL_POINT_SIZE, &temp_s7->unk1B0);
    __glim_PointSize(temp_s7->unk1B0);
}

void __glMgrGetPolygon(__GLcontext *gc, ...) {
    __GLcontext *temp_s7;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;

    temp_s7 = __glCurrentContext;
    __glMgrim_GetIntegerv(GL_CULL_FACE_MODE, &temp_s7->unk1D4);
    __glMgrim_GetIntegerv(GL_FRONT_FACE, &temp_s7->unk1D8);
    __glMgrim_GetIntegerv(GL_POLYGON_MODE, sp);
    temp_s7->unk1CC = sp0;
    temp_s7->unk1D0 = sp4;
    temp_a2 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_POLYGON_OFFSET_FILL) != 0) {
        temp_s7->unk6A0 = temp_a2 | 0x01000000;
    } else {
        temp_s7->unk6A0 = temp_a2 & ~0x01000000;
    }
    temp_a2_2 = temp_s7->unk6A4;
    if (__glMgrim_IsEnabled(GL_POLYGON_OFFSET_LINE) != 0) {
        temp_s7->unk6A4 = temp_a2_2 | 0x400;
    } else {
        temp_s7->unk6A4 = temp_a2_2 & ~0x400;
    }
    temp_a2_3 = temp_s7->unk6A4;
    if (__glMgrim_IsEnabled(GL_POLYGON_OFFSET_POINT) != 0) {
        temp_s7->unk6A4 = temp_a2_3 | 0x200;
    } else {
        temp_s7->unk6A4 = temp_a2_3 & ~0x200;
    }
    __glMgrim_GetFloatv(GL_POLYGON_OFFSET_FACTOR, &temp_s7->unk1DC);
    __glMgrim_GetFloatv(GL_POLYGON_OFFSET_BIAS_EXT, &temp_s7->unk1E0);
}

void __glMgrGetScissor(__GLcontext *gc, ...) {
    __GLcontext *temp_s7;
    s32 temp_a2;

    temp_s7 = __glCurrentContext;
    temp_a2 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_SCISSOR_TEST) != 0) {
        temp_s7->unk6A0 = temp_a2 | 0x4000;
    } else {
        temp_s7->unk6A0 = temp_a2 & ~0x4000;
    }
    __glMgrim_GetIntegerv(GL_SCISSOR_BOX, sp);
    temp_s7->unk96C = sp0;
    temp_s7->unk970 = sp4;
    temp_s7->unk974 = sp8;
    temp_s7->unk978 = spC;
}

void __glMgrGetStencil(__GLcontext *gc, ...) {
    __GLcontext *temp_s7;
    s32 temp_a2;

    temp_s7 = __glCurrentContext;
    temp_a2 = temp_s7->unk6A0;
    if (__glMgrim_IsEnabled(GL_STENCIL_TEST) != 0) {
        temp_s7->unk6A0 = temp_a2 | 0x8000;
    } else {
        temp_s7->unk6A0 = temp_a2 & ~0x8000;
    }
    __glMgrim_GetIntegerv(GL_STENCIL_FUNC, &temp_s7->unk620);
    __glMgrim_GetIntegerv(GL_STENCIL_CLEAR_VALUE, &temp_s7->unk624);
    __glMgrim_GetIntegerv(GL_STENCIL_REF, sp);
    temp_s7->unk626 = (s16) sp0;
    __glMgrim_GetIntegerv(GL_STENCIL_VALUE_MASK, sp);
    temp_s7->unk628 = (s16) sp0;
    __glMgrim_GetIntegerv(GL_STENCIL_WRITEMASK, sp);
    temp_s7->unk62A = (s16) sp0;
    __glMgrim_GetIntegerv(GL_STENCIL_FAIL, &temp_s7->unk62C);
    __glMgrim_GetIntegerv(GL_STENCIL_PASS_DEPTH_FAIL, &temp_s7->unk630);
    __glMgrim_GetIntegerv(GL_STENCIL_PASS_DEPTH_PASS, &temp_s7->unk634);
}

void __glMgrGetTransform(__GLcontext *gc, ...) {
    enum GLenum sp20;
    __GLcontext *temp_s0;
    enum GLenum var_s1;
    f32 *temp_a1;
    f32 *temp_a1_2;
    f32 *temp_a1_3;
    f32 *temp_a1_4;
    f32 *temp_a1_5;
    f32 *temp_a1_6;
    f32 *temp_a1_7;
    f32 *temp_a1_8;
    f32 *temp_a4;
    f32 *var_s1_2;
    f32 *var_s1_3;
    f32 *var_s1_4;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a0_6;
    s32 temp_a0_7;
    s32 temp_a0_8;
    s32 temp_a3;
    s32 var_s4;
    s32 var_s4_2;
    s32 var_s4_3;
    s32 var_s4_4;
    s32 var_s5;
    u32 temp_s1;

    temp_s0 = __glCurrentContext;
    temp_s1 = temp_s0->unkD04 * 0x10;
    temp_a0 = temp_s0->unk6A0;
    if (__glMgrim_IsEnabled(GL_NORMALIZE) != 0) {
        temp_s0->unk6A0 = temp_a0 | 0x400000;
    } else {
        temp_s0->unk6A0 = temp_a0 & ~0x400000;
    }
    temp_a0_2 = temp_s0->unk6AC;
    if (__glMgrim_IsEnabled(GL_CLIP_PLANE0) != 0) {
        temp_s0->unk6AC = temp_a0_2 | 1;
    } else {
        temp_s0->unk6AC = temp_a0_2 & ~1;
    }
    temp_a0_3 = temp_s0->unk6AC;
    if (__glMgrim_IsEnabled(GL_CLIP_PLANE1) != 0) {
        temp_s0->unk6AC = temp_a0_3 | 2;
    } else {
        temp_s0->unk6AC = temp_a0_3 & ~2;
    }
    temp_a0_4 = temp_s0->unk6AC;
    if (__glMgrim_IsEnabled(GL_CLIP_PLANE2) != 0) {
        temp_s0->unk6AC = temp_a0_4 | 4;
    } else {
        temp_s0->unk6AC = temp_a0_4 & ~4;
    }
    temp_a0_5 = temp_s0->unk6AC;
    if (__glMgrim_IsEnabled(GL_CLIP_PLANE3) != 0) {
        temp_s0->unk6AC = temp_a0_5 | 8;
    } else {
        temp_s0->unk6AC = temp_a0_5 & ~8;
    }
    temp_a0_6 = temp_s0->unk6AC;
    if (__glMgrim_IsEnabled(GL_CLIP_PLANE4) != 0) {
        temp_s0->unk6AC = temp_a0_6 | 0x10;
    } else {
        temp_s0->unk6AC = temp_a0_6 & ~0x10;
    }
    temp_a0_7 = temp_s0->unk6AC;
    if (__glMgrim_IsEnabled(GL_CLIP_PLANE5) != 0) {
        temp_s0->unk6AC = temp_a0_7 | 0x20;
    } else {
        temp_s0->unk6AC = temp_a0_7 & ~0x20;
    }
    __glMgrim_GetIntegerv(GL_MATRIX_MODE, &temp_s0->unk670);
    var_s4 = 0;
    temp_s0->unk674 = temp_s0->imports.malloc(temp_s0, temp_s1);
    if (temp_s0->unkD04 > 0) {
        var_s1 = GL_CLIP_PLANE0;
        var_s5 = 0;
        do {
            var_s4 += 1;
            __glMgrim_GetClipPlane(var_s1, sp);
            *(temp_s0->unk674 + var_s5) = (f32) sp0;
            (temp_s0->unk674 + var_s5)->unk4 = (f32) sp8;
            (temp_s0->unk674 + var_s5)->unk8 = (f32) sp10;
            (temp_s0->unk674 + var_s5)->unkC = (f32) sp18;
            var_s1 += 1;
            var_s5 += 0x10;
        } while (var_s4 < temp_s0->unkD04);
    }
    __glMgrim_MatrixMode(GL_MODELVIEW);
    __glMgrim_GetIntegerv(GL_MODELVIEW_STACK_DEPTH, &sp20);
    temp_a1 = (temp_s0->unk740C + (sp20 * 0x110)) - 0x110;
    temp_s0->unk7410 = temp_a1;
    __glMgrim_GetFloatv(GL_MODELVIEW_MATRIX, temp_a1);
    temp_s0->unk7410->unk40 = 0;
    temp_s0->unk7410->unk10C = 1;
    ((? (*)(__GLcontext *, f32 *)) temp_s0->procs.table[0x2E])(temp_s0, temp_s0->unk7410);
    temp_s0->unk7410->unk108 = (s32) temp_s0->unk7418->unk108;
    temp_a1_2 = temp_s0->unk7410;
    ((? (*)(f32 *, f32 *, f32 *)) temp_s0->procs.table[0x36])(temp_a1_2 + 0xB0, temp_a1_2, temp_s0->unk7418);
    ((? (*)(__GLcontext *, f32 *)) temp_s0->procs.table[0x30])(temp_s0, temp_s0->unk7410 + 0xB0);
    var_s4_2 = 1;
    var_s1_2 = temp_s0->unk7410 - 0x110;
    if (sp20 >= GL_LINE_LOOP) {
        do {
            var_s4_2 += 1;
            __glMgrim_PopMatrix();
            temp_a1_3 = var_s1_2;
            var_s1_2 -= 0x110;
            __glMgrim_GetFloatv(GL_MODELVIEW_MATRIX, temp_a1_3);
        } while (var_s4_2 < sp20);
    }
    __glMgrim_MatrixMode(GL_PROJECTION);
    __glMgrim_GetIntegerv(GL_PROJECTION_STACK_DEPTH, &sp20);
    temp_a1_4 = (temp_s0->unk7414 + (sp20 * 0x110)) - 0x110;
    temp_s0->unk7418 = temp_a1_4;
    __glMgrim_GetFloatv(GL_PROJECTION_MATRIX, temp_a1_4);
    temp_s0->unk7418->unk40 = 0;
    ((? (*)(__GLcontext *, f32 *)) temp_s0->procs.table[0x2E])(temp_s0, temp_s0->unk7418);
    temp_a0_8 = temp_s0->unk741C + 1;
    temp_s0->unk741C = temp_a0_8;
    if (temp_a0_8 != 0) {
        temp_s0->unk7418->unk108 = temp_a0_8;
    } else {
        __glInvalidateSequenceNumbers(temp_s0);
    }
    temp_a4 = temp_s0->unk7410;
    temp_a3 = temp_s0->unk7418->unk108;
    temp_a4->unk108 = temp_a3;
    temp_a1_5 = temp_s0->unk7410;
    ((? (*)(f32 *, f32 *, f32 *, s32, f32 *)) temp_s0->procs.table[0x36])(temp_a1_5 + 0xB0, temp_a1_5, temp_s0->unk7418, temp_a3, temp_a4);
    ((? (*)(__GLcontext *, f32 *)) temp_s0->procs.table[0x30])(temp_s0, temp_s0->unk7410 + 0xB0);
    var_s4_3 = 1;
    var_s1_3 = temp_s0->unk7418 - 0x110;
    if (sp20 >= GL_LINE_LOOP) {
        do {
            var_s4_3 += 1;
            __glMgrim_PopMatrix();
            temp_a1_6 = var_s1_3;
            var_s1_3 -= 0x110;
            __glMgrim_GetFloatv(GL_PROJECTION_MATRIX, temp_a1_6);
        } while (var_s4_3 < sp20);
    }
    __glMgrim_MatrixMode(GL_TEXTURE);
    __glMgrim_GetIntegerv(GL_TEXTURE_STACK_DEPTH, &sp20);
    temp_a1_7 = (temp_s0->unk7420 + (sp20 * 0x110)) - 0x110;
    temp_s0->unk7424 = temp_a1_7;
    __glMgrim_GetFloatv(GL_TEXTURE_MATRIX, temp_a1_7);
    temp_s0->unk7424->unk40 = 0;
    ((? (*)(__GLcontext *, f32 *)) temp_s0->procs.table[0x2E])(temp_s0, temp_s0->unk7424);
    var_s4_4 = 1;
    var_s1_4 = temp_s0->unk7424 - 0x110;
    if (sp20 >= GL_LINE_LOOP) {
        do {
            var_s4_4 += 1;
            __glMgrim_PopMatrix();
            temp_a1_8 = var_s1_4;
            var_s1_4 -= 0x110;
            __glMgrim_GetFloatv(GL_TEXTURE_MATRIX, temp_a1_8);
        } while (var_s4_4 < sp20);
    }
    __glMgrim_MatrixMode(GL_MODELVIEW);
}

void __glMgrGetViewport(__GLcontext *gc, ...) {
    f32 sp10;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    __glMgrim_GetIntegerv(GL_VIEWPORT, sp);
    temp_s0->unk638 = sp0;
    temp_s0->unk63C = sp4;
    temp_s0->unk640 = sp8;
    temp_s0->unk644 = spC;
    __glUpdateViewport(temp_s0, sp0);
    ((? (*)(__GLcontext *)) temp_s0->procs.table[0x3D])(temp_s0);
    __glUpdateViewportTransform(temp_s0);
    __glMgrim_GetFloatv(GL_DEPTH_RANGE, &sp10);
    temp_s0->unk648 = (f64) sp10;
    temp_s0->unk650 = (f64) sp14;
    __glUpdateDepthRange(temp_s0);
}

void __glMgrGetMachineState(__GLcontext *gc, ...) {
    __glMgrGetAccum(gc);
    __glMgrGetColorBuffer(gc, gc);
    __glMgrGetCurrentBuffer(gc, gc);
    __glMgrGetDepthBuffer(gc, gc);
    __glMgrGetEnables(gc, gc);
    __glMgrGetEval(gc, gc);
    __glMgrGetFog(gc, gc);
    __glMgrGetLighting(gc, gc);
    __glMgrGetLine(gc, gc);
    __glMgrGetPixel(gc, gc);
    __glMgrGetPoint(gc, gc);
    __glMgrGetPolygon(gc, gc);
    __glMgrGetScissor(gc, gc);
    __glMgrGetStencil(gc, gc);
    __glMgrGetTransform(gc, gc);
    __glMgrGetViewport(gc, gc);
}

void __glMgrPickAllProcs(__GLcontext *gc, ...) {
    s64 sp20;
    ? (*temp_t9)(__GLcontext *, void *);
    enum GLenum temp_t2;
    f32 *var_a2_2;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_s4;
    s32 temp_t0;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a2_3;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a4_2;
    s32 var_a7;
    s32 var_at;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s4;
    s32 var_t1;
    s32 var_v0;
    s32 var_v1;
    s32 var_v1_2;
    s64 var_ra;
    u32 temp_a5;
    u32 var_a0;
    u8 var_a4;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;
    void *var_a2;

    var_ra = saved_reg_ra;
    var_s1 = 0;
    temp_s4 = gc->unk6A0;
    var_a2 = gc->procs.table[0x16];
    var_a3 = (s32) var_a2 & 0x21;
    if (var_a3 != 0) {
        ((? (*)(__GLcontext *, void *, s32)) gc->procs.table[0x20])(gc, var_a2, var_a3);
        var_ra = sp20;
        if (gc->modes.rgbMode != 0) {
            var_a4 = 0;
            if (gc->unk6E68 != 0) {
                var_a4 = 1;
            }
        } else {
            var_a4 = 0;
        }
        var_a2 = gc->procs.table[0x16];
        gc->unk6E6C = var_a4;
        var_a3 = (s32) var_a2 & 0x21;
    }
    temp_t0 = temp_s4 & 0x40;
    if (gc->modes.rgbMode != 0) {
        var_s1 = 1;
        if (gc->unk6E6C != 0) {
            var_s1 = 9;
        }
    }
    temp_t2 = gc->unk518;
    if (temp_t2 == GL_SMOOTH) {
        var_s1 |= 0x20002;
    }
    var_a1 = temp_s4 & 0x1000;
    if (temp_s4 & 0x10) {
        if (gc->modes.haveDepthBuffer != 0) {
            var_s1 |= 0x4000;
            if ((temp_s4 & 0x01000000) && (((f64) gc->unk1DC != GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U)) || ((f64) gc->unk1E0 != GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U)))) {
                var_s1 |= 0x40000;
            }
        }
        var_a1 = temp_s4 & 0x1000;
    }
    if (var_a1 != 0) {
        var_s1 |= 0x10000;
    }
    var_v1 = temp_s4 & 0x100;
    if (temp_s4 & 0x2000) {
        var_s1 |= 0x10;
        var_v1 = temp_s4 & 0x100;
    }
    if (var_v1 != 0) {
        var_s1 |= 0x8000;
    }
    var_t1 = temp_s4 & 0x20;
    if (temp_t0 != 0) {
        var_t1 = temp_s4 & 0x20;
        if (gc->unk52D != 0) {
            var_s1 |= 0x400;
            var_t1 = temp_s4 & 0x20;
        }
    }
    if (var_t1 != 0) {
        if (!(var_s1 & 8)) {
            if (gc->unk714 != 0x1102) {
                var_s1 |= 0x2002;
            } else {
                goto block_31;
            }
        } else {
block_31:
            var_s1 |= 0x1000;
        }
    }
    gc->unk7718 = var_s1;
    if (var_a3 != 0) {
        var_a7 = 0;
        temp_a0 = gc->unk754;
        var_a3_2 = 4;
        if (temp_a0 != 0x2400) {
            if (temp_a0 == 0x2402) {
                var_a3_2 = 0x1C;
            }
        } else {
            var_a3_2 = 0x14;
        }
        temp_a0_2 = gc->unk7D0;
        var_a3_3 = var_a3_2 | 4;
        if (temp_a0_2 != 0x2400) {
            if (temp_a0_2 == 0x2402) {
                var_a3_3 |= 0x18;
            }
        } else {
            var_a3_3 |= 0x10;
        }
        if (temp_t0 != 0) {
            var_a7 = 8;
            if (gc->unk52C != 0) {
                goto block_39;
            }
            temp_a5 = gc->unkD00;
            var_a0 = 0;
            var_a2_2 = gc->unk5D0;
            if (temp_a5 != 0) {
loop_82:
                if ((1 << var_a0) & gc->unk6A8) {
                    var_a0 += 1;
                    if (var_a2_2->unk4C != 0.0f) {
block_39:
                        var_a7 = 0x18;
                    } else {
                        goto block_81;
                    }
                } else {
                    var_a0 += 1;
block_81:
                    var_a2_2 += 0x74;
                    if (var_a0 < temp_a5) {
                        goto loop_82;
                    }
                }
            }
        }
        if (var_t1 != 0) {
            var_a3_3 |= 0x10;
            if (var_s1 & 0x2000) {
                var_a3_3 |= 0x40;
            }
        }
        if (gc->unk6AC != 0) {
            var_a3_3 |= 0x10;
        }
        gc->unk6DE4 = var_a3_3;
        temp_a0_3 = var_a3_3 | var_a7;
        var_a2_3 = temp_a0_3;
        gc->unk6DEC = temp_a0_3;
        var_a4_2 = temp_a0_3;
        gc->unk6DE8 = temp_a0_3;
        if (temp_t0 != 0) {
            goto block_46;
        }
        if (var_s1 & 0x22000) {
block_46:
            var_a3_3 = temp_a0_3 | 1;
            var_a4_2 = var_a3_3;
            gc->unk6DE8 = var_a3_3;
            if (gc->unk52D != 0) {
                var_a2_3 = temp_a0_3 | 2;
                gc->unk6DEC = var_a2_3;
                if (temp_t2 != GL_SMOOTH) {
                    goto block_48;
                }
                goto block_68;
            }
            var_a2_3 = var_a3_3;
            gc->unk6DEC = var_a3_3;
            goto block_67;
        }
block_67:
        if (temp_t2 == GL_SMOOTH) {
block_68:
            sp20 = var_ra;
            gc->unk6DF0 = var_a4_2 | var_a2_3;
        } else {
block_48:
            sp20 = var_ra;
            gc->unk6DF0 = 0;
        }
        temp_a1 = gc->unk77F4;
        temp_a1->unkA0(gc, temp_a1, var_a2_3, var_a3_3, var_a4_2);
        if (gc->modes.doubleBufferMode != 0) {
            temp_a1_2 = gc->unk77F8;
            temp_a1_2->unkA0(gc, temp_a1_2);
        }
        var_s4 = 0;
        if (gc->modes.numAuxBuffers > 0) {
            var_s1_2 = 0;
            do {
                temp_a1_3 = gc->unk79B4 + var_s1_2;
                temp_t9 = temp_a1_3->unkA0;
                var_s4 += 1;
                var_s1_2 += 0xDC;
                temp_t9(gc, temp_a1_3);
            } while (var_s4 < gc->modes.numAuxBuffers);
        }
        ((? (*)(__GLcontext *)) gc->procs.table[0x2A])(gc);
        ((? (*)(__GLcontext *)) gc->procs.table[0x2B])(gc);
        ((? (*)(__GLcontext *)) gc->procs.table[0x22])(gc);
        __glValidateLighting(gc);
        ((? (*)(__GLcontext *)) gc->procs.table[0x1F])(gc);
        ((? (*)(__GLcontext *)) gc->procs.table[0x21])(gc);
        ((? (*)(__GLcontext *)) gc->procs.table[0x29])(gc);
        ((? (*)(__GLcontext *)) gc->procs.table[0x28])(gc);
        ((? (*)(__GLcontext *)) gc->procs.table[0x26])(gc);
        ((? (*)(__GLcontext *)) gc->procs.table[0x3E])(gc);
        var_a2 = gc->procs.table[0x16];
        var_ra = sp20;
    }
    var_v1_2 = (s32) var_a2 & 0x25;
    if ((s32) var_a2 & 0x40) {
        sp20 = var_ra;
        gc->unk31AC(gc);
        var_a2 = gc->procs.table[0x16];
        var_v1_2 = (s32) var_a2 & 0x25;
    }
    var_a1_2 = (s32) var_a2 & 0x29;
    if (var_v1_2 != 0) {
        sp20 = var_ra;
        ((? (*)(__GLcontext *, s32, void *)) gc->procs.table[0x2D])(gc, var_a1_2, var_a2);
        ((? (*)(__GLcontext *)) gc->procs.table[0x2C])(gc);
        ((? (*)(__GLcontext *)) gc->procs.table[0x25])(gc);
        var_a2 = gc->procs.table[0x16];
        var_a1_2 = (s32) var_a2 & 0x29;
    }
    var_at = (s32) var_a2 & 0x23;
    if (var_a1_2 != 0) {
        sp20 = var_ra;
        ((? (*)(__GLcontext *, s32, void *)) gc->procs.table[0x23])(gc, var_a1_2, var_a2);
        var_a2 = gc->procs.table[0x16];
        var_at = (s32) var_a2 & 0x23;
    }
    var_v0 = (s32) var_a2 & 0x31;
    if (var_at != 0) {
        sp20 = var_ra;
        ((? (*)(__GLcontext *)) gc->procs.table[0x24])(gc);
        var_v0 = (s32) gc->procs.table[0x16] & 0x31;
    }
    if (var_v0 != 0) {
        sp20 = var_ra;
        ((? (*)(__GLcontext *)) gc->procs.table[0x27])(gc);
    }
    gc->procs.table[0x16] = NULL;
    gc->procs.table[0x15] = NULL;
}

void __glMgrPickLineProcs(__GLcontext *gc, ...) {
    enum GLenum temp_a3;
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_t1;
    s32 var_a1;
    s32 var_a6;
    s32 var_t0;
    void (**var_a3)(__GLcontext *, ...);
    void (**var_a3_2)(__GLcontext *, ...);
    void (**var_a3_3)();
    void (**var_a4)(__GLcontext *, ...);
    void (**var_a4_2)(__GLcontext *, ...);
    void (**var_a4_3)();
    void (*temp_v1)();
    void (*var_a1_2)(__GLcontext *, ...);
    void (*var_v0)();

    temp_a5 = gc->unk7718;
    if (gc->unk6DE8 != 0) {
        gc->procs.table[0x48] = __glOtherLStripVertex;
    } else {
        gc->procs.table[0x48] = __glOtherLStripVertexFast;
    }
    var_a4 = &gc->procs.unk288;
    var_t0 = 0;
    temp_a3 = gc->renderMode;
    gc->procs.table[0x4A] = __glSecondLinesVertex;
    if (temp_a3 != GL_FEEDBACK) {
        if (temp_a3 != GL_SELECT) {
            temp_t1 = temp_a5 & 2;
            temp_a7 = gc->unk6A0 & 0x200;
            var_a6 = 0;
            if (temp_a7 != 0) {
                var_v0 = __glRenderAntiAliasLine;
            } else {
                var_v0 = __glRenderAliasLine;
            }
            gc->procs.unk328 = var_v0;
            var_a3 = &gc->procs.unk248;
            if (temp_a7 != 0) {
                goto block_7;
            }
            if (temp_a5 & 0x8000) {
                gc->procs.unk288 = NULL;
                var_a4 = &gc->procs.unk28C;
                var_a3 = &gc->procs.unk24C;
                gc->procs.unk248 = __glStippleLine;
            }
            var_a1 = temp_a5 & 1;
            if (temp_a7 == 0) {
                var_a1 = temp_a5 & 1;
                if (gc->unk1C4 >= 2) {
                    var_a6 = 1;
block_7:
                    var_a1 = temp_a5 & 1;
                }
            }
            gc->procs.unk2C8 = (s32) ((var_a3 - gc) - 0x3014) >> 2;
            if (var_a1 != 0) {
                var_a1_2 = __glShadeRGBASpan;
                if (temp_t1 != 0) {
                    *var_a3 = __glShadeRGBASpan;
                } else {
                    var_a1_2 = __glFlatRGBASpan;
                    *var_a3 = __glFlatRGBASpan;
                }
                *var_a4 = var_a1_2;
            } else if (temp_t1 != 0) {
                *var_a3 = __glShadeCISpan;
                *var_a4 = __glShadeCISpan;
            } else {
                *var_a3 = __glFlatCISpan;
                *var_a4 = __glFlatCISpan;
            }
            var_a4_2 = var_a4 + 4;
            var_a3_2 = var_a3 + 4;
            if (temp_a5 & 8) {
                var_a4_2 += 4;
                var_a3_2 += 4;
                var_a3_2->unk-4 = __glTextureSpan;
                var_a4_2->unk-4 = __glTextureStippledSpan;
            }
            if (temp_a5 & 0x1000) {
                if (gc->unk714 != 0x1102) {
                    *var_a3_2 = __glFogSpan;
                    *var_a4_2 = __glFogStippledSpan;
                } else {
                    *var_a3_2 = __glFogSpanSlow;
                    *var_a4_2 = __glFogStippledSpanSlow;
                }
                var_a4_2 += 4;
                var_a3_2 += 4;
            }
            if (temp_a7 != 0) {
                var_a4_2 += 4;
                var_a3_2 += 4;
                var_a3_2->unk-4 = __glAntiAliasLine;
                var_a4_2->unk-4 = __glAntiAliasStippledLine;
            }
            temp_a7_2 = var_a3_2 - gc;
            temp_a7_3 = (s32) (temp_a7_2 - 0x3010) >> 2;
            if (gc->unk77F0 != 0) {
                var_t0 = 1;
            }
            gc->procs.unk2CC = (s32) (temp_a7_2 - 0x3014) >> 2;
            *var_a3_2 = __glMgrStoreLine;
            var_a3_3 = &gc->procs.unk2D8;
            *var_a4_2 = __glMgrStoreStippledLine;
            var_a4_3 = &gc->procs.unk2DC;
            gc->procs.unk2D0 = temp_a7_3;
            if (var_a6 != 0) {
                var_a4_3 = &gc->procs.unk2E4;
                var_a3_3 = &gc->procs.unk2E0;
                gc->procs.unk2DC = __glWideStippleLineRep;
                gc->procs.unk2D8 = __glWideLineRep;
            }
            if (var_t0 != 0) {
                *var_a3_3 = __glDrawBothLine;
                *var_a4_3 = __glDrawBothStippledLine;
                if (var_a6 != 0) {
                    goto block_26;
                }
                goto block_33;
            }
            *var_a3_3 = __glNop;
            *var_a4_3 = __glNop;
            gc->procs.unk2CC = gc->procs.unk2D0;
            if (var_a6 == 0) {
block_33:
                gc->procs.unk2C8 = gc->procs.unk2CC;
                if (var_a6 == 0) {
                    if ((var_t0 == 0) && (temp_a7_3 == 3)) {
                        gc->procs.unk2D4 = __glProcessLine3NW;
                    } else {
                        goto block_27;
                    }
                } else {
                    goto block_26;
                }
            } else {
block_26:
block_27:
                gc->procs.unk2D4 = __glProcessLine;
            }
            if ((temp_a5 & 0x2000) && !(temp_a5 & 0x20000)) {
                temp_v1 = gc->procs.unk328;
                gc->procs.unk328 = __glRenderFlatFogLine;
                gc->procs.unk32C = temp_v1;
            }
        } else {
            gc->procs.unk328 = __glSelectLine;
        }
    } else {
        gc->procs.unk328 = __glFeedbackLine;
    }
    if (gc->unk6A4 & 0x400) {
        gc->procs.unk330 = __glPolygonOffsetLine;
        return;
    }
    gc->procs.unk330 = gc->procs.unk328;
}

void __glMgrPickPixelProcs(__GLcontext *gc, ...) {
    enum GLenum temp_a5_2;
    enum GLenum temp_a5_3;
    enum GLenum temp_a5_4;
    enum GLenum temp_a5_5;
    f32 temp_f8;
    f32 temp_f8_2;
    f32 temp_f9;
    f32 var_f4;
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    s32 *var_a3_5;
    s32 temp_a3;
    s32 temp_a3_4;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t0_3;
    s32 temp_t0_4;
    s32 var_a1;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_a5;
    s32 var_t1;
    s32 var_v0;
    u32 temp_a3_3;
    u8 temp_a3_2;
    u8 temp_a6;

    temp_a4 = gc->unk6A0;
    if (*gc->unk2E4 != 0) {
        var_t1 = 1;
    } else if (!(temp_a4 & 0x30000000) || ((var_t1 = 1, (gc->unk488 == 0)) && (var_t1 = 1, (gc->unk4FC == 0)))) {
        var_t1 = 1;
        if (gc->unk77E0 == 0x8421) {
            var_t1 = 1;
            if (gc->unk77E9 != 1) {
                temp_a3 = gc->unk6A4;
                var_a1 = temp_a3 & 2;
                if (temp_a3 & 1) {
                    var_t1 = 1;
                    if (gc->unk1364 == 0) {
                        var_a1 = temp_a3 & 2;
                        goto block_90;
                    }
                } else {
block_90:
                    var_v0 = temp_a3 & 4;
                    if (var_a1 != 0) {
                        var_t1 = 1;
                        if (gc->unk1404 == 0) {
                            var_v0 = temp_a3 & 4;
                            goto block_93;
                        }
                    } else {
block_93:
                        if ((var_v0 == 0) || (var_t1 = 1, (gc->unk14A4 == 0))) {
                            var_t1 = 0;
                        }
                    }
                }
            }
        }
    }
    temp_a5 = gc->unk47C;
    switch (temp_a5) {                              /* switch 1; irregular */
    case 0x409:                                     /* switch 1 */
    case 0x40A:                                     /* switch 1 */
    case 0x40B:                                     /* switch 1 */
    case 0x40C:                                     /* switch 1 */
        gc->procs.table[0x18] = (gc->unk79B4 + (temp_a5 * 0xDC)) - 0x377BC;
        break;
    case 0x404:                                     /* switch 1 */
        gc->procs.table[0x18] = gc->unk77F4;
        break;
    case 0x405:                                     /* switch 1 */
        gc->procs.table[0x18] = gc->unk77F8;
        break;
    }
    temp_a6 = gc->unk6E6C;
    if (temp_a6 != 0) {
        goto block_9;
    }
    if (!(temp_a4 & 0x20)) {
        gc->unk3160 = gc->unk317C;
    } else {
block_9:
        gc->unk3160 = __glSlowDrawPixelsStore;
    }
    temp_a3_2 = gc->unk2E0;
    if (temp_a3_2 == 0) {
        if ((gc->modes.rgbMode == 0) && (gc->unk2D8 == GL_ZERO) && (gc->unk2DC == GL_ZERO)) {
            gc->unk7771 = 0;
        } else {
            goto block_13;
        }
    } else {
block_13:
        gc->unk77CC = 0;
        gc->unk77C4 = 0;
        gc->unk7771 = 1;
    }
    if (gc->unk2E1 != 0) {
        goto block_15;
    }
    if ((gc->unk2D8 == GL_ZERO) && (gc->unk2DC == GL_ZERO)) {
        gc->unk7773 = 0;
    } else {
block_15:
        gc->unk7773 = 1;
    }
    temp_f8 = gc->unkCD4;
    if ((gc->unk278 != temp_f8) || (gc->unk28C != 0.0f)) {
        gc->unk7772 = 1;
    } else {
        gc->unk7772 = 0;
    }
    if (temp_a3_2 != 0) {
        goto block_20;
    }
    var_a5 = 1;
    if ((gc->unk27C == 0.0f) && (var_a5 = 1, (gc->unk280 == 0.0f)) && (var_a5 = 1, (gc->unk284 == 0.0f)) && (var_a5 = 1, (gc->unk288 == 0.0f)) && (var_a5 = 1, (gc->unk268 == temp_f8)) && (var_a5 = 1, (gc->unk26C == temp_f8)) && (var_a5 = 1, (gc->unk270 == temp_f8))) {
        var_a5 = 0;
        if (gc->unk274 == temp_f8) {
            gc->unk7770 = 0;
        } else {
block_20:
            var_a5 = 1;
            goto block_21;
        }
    } else {
block_21:
        gc->unk77B0 = 0;
        gc->unk7770 = 1;
    }
    temp_f9 = gc->unk787C;
    if (var_a5 != 0) {
        var_f5 = gc->unk284;
        var_f7 = gc->unk280;
        var_f6 = gc->unk27C;
        var_f4 = gc->unk274 + gc->unk288;
        if (temp_a3_2 != 0) {
            temp_a5_2 = gc->unk400;
            temp_t0 = temp_a5_2 - 1;
            temp_f8_2 = gc->unkCD0;
            var_a3 = (s32) (((f32) temp_t0 * var_f6) + temp_f8_2);
            if (var_a3 >= 0) {
                if (var_a3 >= temp_a5_2) {
                    var_a3 = temp_t0;
                }
            } else {
                var_a3 = 0;
            }
            temp_a5_3 = gc->unk40C;
            temp_t0_2 = temp_a5_3 - 1;
            var_a3_2 = (s32) (((f32) temp_t0_2 * var_f7) + temp_f8_2);
            var_f6 = gc->unk408[var_a3];
            if (var_a3_2 >= 0) {
                if (var_a3_2 >= temp_a5_3) {
                    var_a3_2 = temp_t0_2;
                }
            } else {
                var_a3_2 = 0;
            }
            temp_a5_4 = gc->unk418;
            temp_t0_3 = temp_a5_4 - 1;
            var_a3_3 = (s32) (((f32) temp_t0_3 * var_f5) + temp_f8_2);
            var_f7 = gc->unk414[var_a3_2];
            if (var_a3_3 >= 0) {
                if (var_a3_3 >= temp_a5_4) {
                    var_a3_3 = temp_t0_3;
                }
            } else {
                var_a3_3 = 0;
            }
            temp_a5_5 = gc->unk424;
            temp_t0_4 = temp_a5_5 - 1;
            var_a3_4 = (s32) (((f32) temp_t0_4 * var_f4) + temp_f8_2);
            var_f5 = gc->unk420[var_a3_3];
            if (var_a3_4 >= 0) {
                if (var_a3_4 >= temp_a5_5) {
                    var_a3_4 = temp_t0_4;
                }
            } else {
                var_a3_4 = 0;
            }
            var_f4 = gc->unk42C[var_a3_4];
        } else {
            if (temp_f8 < var_f6) {
                var_f6 = temp_f8;
            } else if (var_f6 < 0.0f) {
                var_f6 = 0.0f;
            }
            if (temp_f8 < var_f7) {
                var_f7 = temp_f8;
            } else if (var_f7 < 0.0f) {
                var_f7 = 0.0f;
            }
            if (temp_f8 < var_f5) {
                var_f5 = temp_f8;
            } else if (var_f5 < 0.0f) {
                var_f5 = 0.0f;
            }
            if (temp_f8 < var_f4) {
                var_f4 = temp_f8;
            } else if (var_f4 < 0.0f) {
                var_f4 = 0.0f;
            }
        }
        gc->unk7784 = temp_f9 * var_f4;
        gc->unk7780 = gc->unk785C * var_f5;
        gc->unk777C = gc->unk7858 * var_f7;
        gc->unk7778 = gc->unk7854 * var_f6;
    } else {
        gc->unk7784 = temp_f9;
        gc->unk7780 = 0.0f;
        gc->unk777C = 0.0f;
        gc->unk7778 = 0.0f;
    }
    temp_a3_3 = gc->unk6FC;
    if ((temp_a3_3 == 0) || (temp_a3_3 == 0x408) || (temp_a6 != 0)) {
        goto block_41;
    }
    if (!(temp_a4 & 0x20) && (var_t1 == 0)) {
        gc->unk7774 = 1;
    } else {
block_41:
        gc->unk7774 = 0;
    }
    temp_a3_4 = temp_a4 & 0x0E000000;
    switch (temp_a3_4) {                            /* switch 2; irregular */
    default:                                        /* switch 2 */
        var_a3_5 = &gc->unk370;
        if (temp_a3_4 != 0x06000000) {

        } else {
        case 0x4000000:                             /* switch 2 */
            var_a3_5 = &gc->unk32C;
        }
        break;
    case 0x2000000:                                 /* switch 2 */
        var_a3_5 = &gc->unk2E8;
        break;
    case 0x0:                                       /* switch 2 */
        var_a3_5 = &dummyFilter;
        break;
    }
    gc->unk2E4 = var_a3_5;
    if (((f64) gc->unk2B0 != 1.0) || ((f64) gc->unk2B4 != 1.0) || ((f64) gc->unk2B8 != 1.0) || ((f64) gc->unk2BC != 1.0) || ((f64) gc->unk2C0 != GLUE_F64((second half of f64), 0U)) || ((f64) gc->unk2C4 != GLUE_F64((second half of f64), 0U)) || ((f64) gc->unk2C8 != GLUE_F64((second half of f64), 0U)) || ((f64) gc->unk2CC != GLUE_F64((second half of f64), 0U))) {
        gc->unk77E9 = 1;
    } else {
        gc->unk77E9 = 0;
    }
    if ((var_a3_5->unk30 == 0) || (var_a3_5->unk34 == 0)) {
        gc->unk2E4 = &dummyFilter;
    }
    gc->unk3174 = __glSlowPickCopyConvolutionFilter1D;
    gc->unk3178 = __glSlowPickCopyConvolutionFilter2D;
    gc->unk3170 = __glSlowPickGetSeparableFilter;
    gc->unk316C = __glSlowPickGetConvolutionFilter;
    gc->unk3168 = __glSlowPickSeparableFilter;
    gc->unk3164 = __glSlowPickConvolutionFilter;
}

void __glMgrPickPointProcs(__GLcontext *gc, ...) {
    enum GLenum temp_a4;
    s32 temp_a3;
    void (*var_a4)();

    temp_a3 = gc->unk7718;
    if (gc->unk6DE8 != 0) {
        gc->procs.table[0x47] = __glPoint;
    } else {
        gc->procs.table[0x47] = __glPointFast;
    }
    temp_a4 = gc->renderMode;
    if (temp_a4 != GL_FEEDBACK) {
        if (temp_a4 != GL_SELECT) {
            var_a4 = __glRenderAntiAliasedCIPoint;
            if (gc->unk6A0 & 0x400) {
                if (gc->modes.colorIndexMode == 0) {
                    var_a4 = __glRenderAntiAliasedRGBPoint;
                }
            } else {
                var_a4 = __glRenderAliasedPointN;
                if (gc->unk1B8 != 1) {

                } else {
                    var_a4 = __glRenderAliasedPoint1;
                    if (gc->unk6E6C != 0) {

                    } else {
                        var_a4 = __glRenderAliasedPoint1_NoTex;
                    }
                }
            }
            gc->procs.unk340 = var_a4;
            if (((temp_a3 & 0x2000) && !(temp_a3 & 0x20000)) || (temp_a3 & 0x1000)) {
                gc->procs.unk344 = var_a4;
                gc->procs.unk340 = __glRenderFlatFogPoint;
            }
            return;
        }
        gc->procs.unk340 = __glSelectPoint;
        return;
    }
    gc->procs.unk340 = __glFeedbackPoint;
}

void __glMgrPickRenderBitmapProcs(__GLcontext *gc, ...) {
    if ((gc->unk9CA5 == 0) && (gc->unk6A0 & 0x40030000)) {
        gc->procs.unk350 = __glRenderBitmap;
        return;
    }
    gc->procs.unk350 = __glMgrRenderBitmap;
}

void __glMgrPickSpanProcs(__GLcontext *gc, ...) {
    s64 sp0;
    s32 temp_a0_2;
    s32 temp_a2;
    s32 temp_s3;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 var_s4;
    s32 var_v0;
    void (*var_v1)(__GLcontext *, ...);
    void **var_s0;
    void **var_s0_2;
    void **var_s1;
    void **var_s1_2;
    void *temp_a0;
    void *temp_s5;

    var_s4 = 0;
    var_s1 = &gc->procs.table[0x7C];
    var_s0 = &gc->procs.table[0x6D];
    temp_s5 = gc->procs.table[0x17];
    temp_s3 = gc->unk7718;
    if (gc->unk74C0 == 0) {
        gc->procs.table[0x7C] = NULL;
        var_s1 = &gc->procs.table[0x7D];
        var_s0 = &gc->procs.table[0x6E];
        gc->procs.table[0x6D] = __glClipSpan;
    }
    temp_v0 = temp_s3 & 2;
    if (temp_s3 & 0x10) {
        var_s1 += 4;
        var_s0 += 4;
        var_s0->unk-4 = __glStippleSpan;
        var_s1->unk-4 = __glStippleStippledSpan;
    }
    var_v1 = __glShadeRGBASpan;
    if (temp_s3 & 1) {
        if (temp_v0 != 0) {
            var_s0->unk0 = __glShadeRGBASpan;
            goto block_6;
        }
        var_s0->unk0 = __glFlatRGBASpan;
        var_s1->unk0 = __glFlatRGBASpan;
    } else if (temp_v0 != 0) {
        var_s0->unk0 = __glShadeCISpan;
        var_s1->unk0 = __glShadeCISpan;
    } else {
        var_v1 = __glFlatCISpan;
        var_s0->unk0 = __glFlatCISpan;
block_6:
        var_s1->unk0 = var_v1;
    }
    var_s1_2 = var_s1 + 4;
    var_s0_2 = var_s0 + 4;
    if (temp_s3 & 8) {
        var_s0->unk4 = __glTextureSpan;
        var_s1->unk4 = __glTextureStippledSpan;
        temp_v0_2 = gc->unk6A0;
        temp_a2 = temp_v0_2 & 0x20000;
        if ((temp_a2 != 0) && !(temp_v0_2 & 0x40000000)) {
            __glLookUpTextureParams(gc, 0xDE1, temp_a2);
            sp0 = M2C_ERROR(/* Read from unset register $v0 */);
            __glLookUpTexture(gc, 0xDE1);
            temp_a0 = M2C_ERROR(/* Read from unset register $v0 */)->unkE4;
            if ((temp_a0->unk40 == 0x1907) && (temp_a0->unk38 == 0)) {
                var_v0 = sp0->unkC;
                if (var_v0 != 0x2702) {

                } else if (sp0->unk10 == 0x2601) {
                    var_s0->unk4 = __glTextureRGB_L_NML_Span;
                    var_s1->unk4 = __glTextureRGB_L_NML_StippledSpan;
                    var_v0 = sp0->unkC;
                }
                if (var_v0 != 0x2703) {

                } else if (sp0->unk10 == 0x2601) {
                    var_s0->unk4 = __glTextureRGB_L_LML_Span;
                    var_s1->unk4 = __glTextureRGB_L_LML_StippledSpan;
                    var_v0 = sp0->unkC;
                }
                if (var_v0 != 0x2600) {

                } else if (sp0->unk10 == 0x2600) {
                    var_s0->unk4 = __glTextureRGB_N_N_Span;
                    var_s1->unk4 = __glTextureRGB_N_N_StippledSpan;
                    var_v0 = sp0->unkC;
                }
                if (var_v0 != 0x2700) {

                } else if (sp0->unk10 == 0x2600) {
                    var_s0->unk4 = __glTextureRGB_N_NMN_Span;
                    var_s1->unk4 = __glTextureRGB_N_NMN_StippledSpan;
                    var_v0 = sp0->unkC;
                }
                if (var_v0 == 0x8146) {
                    if (sp0->unk10 == 0x8146) {
                        var_s0->unk4 = __glTextureRGB_F_F_Span;
                        var_s1->unk4 = __glTextureRGB_F_F_StippledSpan;
                        var_v0 = sp0->unkC;
                    }
                }
                if ((var_v0 == 0x2703) && (sp0->unk10 == 0x8146)) {
                    var_s0->unk4 = __glTextureRGB_F_LML_Span;
                    var_s1->unk4 = __glTextureRGB_F_LML_StippledSpan;
                }
            }
        }
        var_s1_2 += 4;
        var_s0_2 += 4;
    }
    if (temp_s3 & 0x1000) {
        if (gc->unk714 != 0x1102) {
            *var_s0_2 = __glFogSpan;
            *var_s1_2 = __glFogStippledSpan;
        } else {
            *var_s0_2 = __glFogSpanSlow;
            *var_s1_2 = __glFogStippledSpanSlow;
        }
        var_s1_2 += 4;
        var_s0_2 += 4;
    }
    temp_v0_3 = var_s0_2 - gc;
    if (gc->unk77F0 != 0) {
        var_s4 = 1;
        gc->procs.unk23C = (s32) (temp_v0_3 - 0x2F90) >> 2;
    }
    *var_s0_2 = temp_s5->unkB8;
    temp_a0_2 = (s32) (temp_v0_3 - 0x2F8C) >> 2;
    *var_s1_2 = temp_s5->unkBC;
    gc->procs.unk240 = temp_a0_2;
    if (var_s4 != 0) {
        gc->procs.unk244 = __glProcessReplicateSpan;
    } else {
        gc->procs.unk23C = temp_a0_2;
        gc->procs.unk244 = __glProcessSpan;
    }
}

void __glMgrPickSoftProcs(__GLcontext *gc, ...) {
    if (__glCurrentContext->renderMode == GL_FEEDBACK) {
        __glCurrentContext->procs.table[0x65] = __glFeedbackTriangle;
        __glCurrentContext->procs.unk340 = __glFeedbackPoint;
        __glCurrentContext->procs.unk328 = __glFeedbackLine;
    }
    __glCurrentContext->procs.table[0x5E] = __glBeginTriangles;
    __glCurrentContext->procs.table[0x5A] = __glBeginPoints;
    __glCurrentContext->procs.table[0x62] = __glBeginQStrip;
    __glCurrentContext->procs.table[0x61] = __glBeginQuads;
    __glCurrentContext->procs.table[0x64] = __glEndPrim;
    __glCurrentContext->procs.table[0x5F] = __glBeginTStrip;
    __glCurrentContext->procs.table[0x60] = __glBeginTFan;
    __glCurrentContext->procs.table[0x63] = __glBeginPolygon;
    __glCurrentContext->procs.table[0x5B] = __glBeginLines;
    __glCurrentContext->procs.table[0x5D] = __glBeginLStrip;
    __glCurrentContext->procs.table[0x5C] = __glBeginLLoop;
}

void __glMgrPickStoreProcs(__GLcontext *gc, ...) {
    u32 temp_a3;

    temp_a3 = gc->unk6FC;
    if (temp_a3 >= 0x409U) {
        if (temp_a3 >= 0x40AU) {
            if (temp_a3 >= 0x40BU) {
                if (temp_a3 >= 0x40CU) {
                    if (temp_a3 == 0x40C) {
                        goto block_13;
                    }
                } else {
                    goto block_13;
                }
            } else if (temp_a3 == 0x40A) {
                goto block_13;
            }
        } else {
            goto block_13;
        }
    } else if (temp_a3 >= 0x405U) {
        if (temp_a3 >= 0x406U) {
            if (temp_a3 == 0x408) {
                if (gc->unk77F0 != 0) {
                    gc->unk3180 = __glDoDoubleStore;
                    gc->unk317C = __glDoStore;
                    return;
                }
                goto block_13;
            }
        } else {
            goto block_13;
        }
    } else if (temp_a3 >= 0x404U) {
        if (temp_a3 < 0x405U) {
block_13:
            gc->unk317C = gc->procs.table[0x17]->unkA4;
        }
    } else if (temp_a3 == 0) {
        gc->unk317C = __glDoStore;
        gc->unk3180 = __glDoNullStore;
    }
}

void LoadSoftDispatchVectors(__GLcontext *arg0, void *arg1) {
    s32 *temp_at;
    s32 *temp_at_2;
    s32 *temp_at_3;
    s32 *temp_at_4;
    s32 *temp_at_5;
    s32 *temp_at_6;
    s32 *temp_at_7;
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 *temp_v0_3;
    s32 *temp_v0_4;
    s32 *temp_v0_5;
    s32 *temp_v0_6;
    s32 *temp_v0_7;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a2_4;
    s32 var_a2_5;
    s32 var_a2_6;
    s32 var_a2_7;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_a3_5;
    s32 var_a3_6;
    s32 var_a3_7;
    void *temp_a2;
    void *temp_a4;
    void *var_a1;

    var_a1 = arg1;
    var_a3 = 0x173;
    var_a2 = 0;
    do {
        temp_v0 = var_a2 + arg0->unk1608;
        temp_at = var_a2 + &__glSoftim_dispatchTable;
        var_a2 += 4;
        var_a3 -= 1;
        *temp_v0 = *temp_at;
    } while (var_a3 > 0);
    var_a3_2 = 0;
    temp_a2 = arg0->unk1608;
    if (arg0->modes.rgbMode != 0) {
        temp_a2->unk120 = __glMgrim_ColorMask;
        var_a1 = arg0->unk1608;
        var_a1->unk128 = __glim_IndexMask;
    } else {
        temp_a2->unk120 = __glim_ColorMask;
        arg0->unk1608->unk128 = __glMgrim_IndexMask;
    }
    var_a2_2 = 0x18;
    do {
        temp_v0_2 = var_a3_2 + (arg0->unk1608 + 0x5CC);
        temp_at_2 = var_a3_2 + &__glSoftim_vertexDispatchTable;
        var_a3_2 += 4;
        var_a2_2 -= 1;
        *temp_v0_2 = *temp_at_2;
    } while (var_a2_2 > 0);
    var_a2_3 = 0x2A;
    var_a3_3 = 0;
    do {
        temp_v0_3 = var_a3_3 + (arg0->unk1608 + 0x62C);
        temp_at_3 = var_a3_3 + &__glSoftim_colorDispatchTable;
        var_a3_3 += 4;
        var_a2_3 -= 1;
        *temp_v0_3 = *temp_at_3;
    } while (var_a2_3 > 0);
    var_a3_4 = 0xA;
    var_a2_4 = 0;
    do {
        temp_v0_4 = var_a2_4 + (arg0->unk1608 + 0x6D4);
        temp_at_4 = var_a2_4 + &__glSoftim_normalDispatchTable;
        var_a2_4 += 4;
        var_a3_4 -= 1;
        *temp_v0_4 = *temp_at_4;
    } while (var_a3_4 > 0);
    var_a3_5 = 0x20;
    var_a2_5 = 0;
    do {
        temp_v0_5 = var_a2_5 + (arg0->unk1608 + 0x6FC);
        temp_at_5 = var_a2_5 + &__glSoftim_texCoordDispatchTable;
        var_a2_5 += 4;
        var_a3_5 -= 1;
        *temp_v0_5 = *temp_at_5;
    } while (var_a3_5 > 0);
    var_a2_6 = 0x18;
    var_a3_6 = 0;
    do {
        temp_v0_6 = var_a3_6 + (arg0->unk1608 + 0x77C);
        temp_at_6 = var_a3_6 + &__glMG10im_rasterPosDispatchTable;
        var_a3_6 += 4;
        var_a2_6 -= 1;
        *temp_v0_6 = *temp_at_6;
    } while (var_a2_6 > 0);
    var_a3_7 = 8;
    var_a2_7 = 0;
    temp_a4 = arg0->unk1608 + 0x7DC;
    do {
        temp_v0_7 = var_a2_7 + temp_a4;
        temp_at_7 = var_a2_7 + &__glSoftim_rectDispatchTable;
        var_a2_7 += 4;
        var_a3_7 -= 1;
        *temp_v0_7 = *temp_at_7;
    } while (var_a3_7 > 0);
    __glMgrPickSpanProcs(arg0, var_a1, var_a2_7, var_a3_7, temp_a4, &__glSoftim_rectDispatchTable);
}

void __glMgrSetSoftHardwareState(__GLcontext *gc, ...) {
    s32 temp_v0;
    s32 temp_v1;

    temp_v0 = gc->unkD58;
    temp_v1 = gc->unkD54;
    *(s32 *)0x74080 = 0x3310;
    *(s32 *)0x74080 = 0;
    *(s32 *)0x74080 = 0;
    *(s32 *)0x74080 = temp_v1;
    *(s32 *)0x74080 = temp_v0;
    *(s32 *)0x74080 = 0x2A04;
    *(s32 *)0x74080 = 0x1701;
    *(s32 *)0x74080 = 0x2C00;
    *(s32 *)0x74080 = 0x3518;
    *(s32 *)0x74080 = 0;
    *(s32 *)0x74080 = (bitwise s32) (f32) temp_v1;
    *(s32 *)0x74080 = 0;
    *(s32 *)0x74080 = (bitwise s32) (f32) temp_v0;
    *(s32 *)0x74080 = 0x3F800000;
    *(s32 *)0x74080 = 0xBF800000;
    *(s32 *)0x74080 = 0x2A04;
    *(s32 *)0x74080 = 0x1700;
    *(s32 *)0x74080 = 0x2C00;
    *(s32 *)0x74080 = 0xA704;
    *(s32 *)0x74080 = 0x3000;
    *(s32 *)0x74080 = 0xA704;
    *(s32 *)0x74080 = 0x3001;
    *(s32 *)0x74080 = 0xA704;
    *(s32 *)0x74080 = 0x3002;
    *(s32 *)0x74080 = 0xA704;
    *(s32 *)0x74080 = 0x3003;
    *(s32 *)0x74080 = 0xA704;
    *(s32 *)0x74080 = 0x3004;
    *(s32 *)0x74080 = 0xA704;
    *(s32 *)0x74080 = 0x3005;
    *(s32 *)0x74080 = 0x4D04;
    *(s32 *)0x74080 = 0x3F800000;
    *(s32 *)0x74080 = 0x6C04;
    *(s32 *)0x74080 = 0;
    *(s32 *)0x74080 = 0xE00;
    *(s32 *)0x74080 = 0x6804;
    *(s32 *)0x74080 = 0;
}

void __glMgrEnterSoftPath(__GLcontext *gc, ...) {
    if (gc->renderMode != GL_SELECT) {
        __glMgrPickStoreProcs(gc, gc, 1);
        gc->unk7880 = 1;
        gc->unk7868 = 1;
        gc->unk7864 = 1;
        gc->unk7860 = 1;
        gc->unk7890 = 1.0f;
        gc->unk788C = 1.0f;
        gc->unk7888 = 1.0f;
        gc->unk7884 = 1.0f;
        gc->unk787C = 1.0f;
        gc->unk785C = 1.0f;
        gc->unk7858 = 1.0f;
        gc->unk7854 = 1.0f;
        if (gc->modes.rgbMode != 0) {
            gc->unk7B08 = 32767.0f;
            gc->unk7B00 = 32767.0f;
            gc->unk7B04 = 32767.0f;
            gc->unk7AFC = 32767.0f;
            gc->unk7B18 = 0.00003051851f;
            gc->unk7B14 = 0.00003051851f;
            gc->unk7B10 = 0.00003051851f;
            gc->unk7B0C = 0.00003051851f;
        }
        __glMgrGetViewport(gc, gc);
        __glMgrSetSoftHardwareState(gc, gc);
        __glMgrSetSoftHardwareState(gc, gc);
        return;
    }
    gc->unk9260 = 1;
}

void LoadHardDispatchVectors(void *arg0) {
    s32 *temp_a1;
    s32 *temp_a1_2;
    s32 *temp_a1_3;
    s32 *temp_a1_4;
    s32 *temp_a1_5;
    s32 *temp_a1_6;
    s32 *temp_at;
    s32 *temp_at_10;
    s32 *temp_at_11;
    s32 *temp_at_12;
    s32 *temp_at_13;
    s32 *temp_at_14;
    s32 *temp_at_2;
    s32 *temp_at_3;
    s32 *temp_at_4;
    s32 *temp_at_5;
    s32 *temp_at_6;
    s32 *temp_at_7;
    s32 *temp_at_8;
    s32 *temp_at_9;
    s32 *temp_v0;
    s32 *temp_v0_10;
    s32 *temp_v0_11;
    s32 *temp_v0_12;
    s32 *temp_v0_13;
    s32 *temp_v0_2;
    s32 *temp_v0_3;
    s32 *temp_v0_4;
    s32 *temp_v0_5;
    s32 *temp_v0_6;
    s32 *temp_v0_7;
    s32 *temp_v0_8;
    s32 *temp_v0_9;
    s32 *temp_v1;
    s32 *temp_v1_2;
    s32 *temp_v1_3;
    s32 *temp_v1_4;
    s32 *temp_v1_5;
    s32 var_a2;
    s32 var_a2_10;
    s32 var_a2_11;
    s32 var_a2_12;
    s32 var_a2_13;
    s32 var_a2_14;
    s32 var_a2_15;
    s32 var_a2_16;
    s32 var_a2_17;
    s32 var_a2_18;
    s32 var_a2_19;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a2_4;
    s32 var_a2_5;
    s32 var_a2_6;
    s32 var_a2_7;
    s32 var_a2_8;
    s32 var_a2_9;
    s32 var_a3;
    s32 var_a3_10;
    s32 var_a3_11;
    s32 var_a3_12;
    s32 var_a3_13;
    s32 var_a3_14;
    s32 var_a3_15;
    s32 var_a3_16;
    s32 var_a3_17;
    s32 var_a3_18;
    s32 var_a3_19;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_a3_5;
    s32 var_a3_6;
    s32 var_a3_7;
    s32 var_a3_8;
    s32 var_a3_9;
    void *temp_t0;
    void *temp_t0_2;

    temp_t0 = arg0->unk1608;
    var_a2 = 0;
    if (arg0->unk9CA5 != 0) {
        var_a3 = 0x173;
        do {
            temp_v0 = var_a2 + temp_t0;
            temp_at = var_a2 + &__glMgrim_dispatchTable;
            var_a2 += 4;
            var_a3 -= 1;
            *temp_v0 = *temp_at;
        } while (var_a3 > 0);
        var_a2_2 = 0x18;
        var_a3_2 = 0;
        do {
            temp_v0_2 = var_a3_2 + (arg0->unk1608 + 0x77C);
            temp_at_2 = var_a3_2 + &__glMgrim_rasterPosDispatchTable;
            var_a3_2 += 4;
            var_a2_2 -= 1;
            *temp_v0_2 = *temp_at_2;
        } while (var_a2_2 > 0);
    } else {
        var_a2_3 = 0x173;
        var_a3_3 = 0;
        do {
            temp_v0_3 = var_a3_3 + temp_t0;
            temp_at_3 = var_a3_3 + &__glMG10im_dispatchTable;
            var_a3_3 += 4;
            var_a2_3 -= 1;
            *temp_v0_3 = *temp_at_3;
        } while (var_a2_3 > 0);
        var_a3_4 = 0x18;
        var_a2_4 = 0;
        do {
            temp_v0_4 = var_a2_4 + (arg0->unk1608 + 0x77C);
            temp_at_4 = var_a2_4 + &__glMG10im_rasterPosDispatchTable;
            var_a2_4 += 4;
            var_a3_4 -= 1;
            *temp_v0_4 = *temp_at_4;
        } while (var_a3_4 > 0);
    }
    var_a3_5 = 0x18;
    var_a2_5 = 0;
    do {
        temp_v0_5 = var_a2_5 + (arg0->unk1608 + 0x5CC);
        temp_at_5 = var_a2_5 + &__glMgrim_vertexDispatchTable;
        var_a2_5 += 4;
        var_a3_5 -= 1;
        *temp_v0_5 = *temp_at_5;
    } while (var_a3_5 > 0);
    var_a3_6 = 0xA;
    var_a2_6 = 0;
    do {
        temp_v0_6 = var_a2_6 + (arg0->unk1608 + 0x6D4);
        temp_at_6 = var_a2_6 + &__glMgrim_normalDispatchTable;
        var_a2_6 += 4;
        var_a3_6 -= 1;
        *temp_v0_6 = *temp_at_6;
    } while (var_a3_6 > 0);
    var_a3_7 = 0x20;
    var_a2_7 = 0;
    do {
        temp_v0_7 = var_a2_7 + (arg0->unk1608 + 0x6FC);
        temp_at_7 = var_a2_7 + &__glMgrim_texCoordDispatchTable;
        var_a2_7 += 4;
        var_a3_7 -= 1;
        *temp_v0_7 = *temp_at_7;
    } while (var_a3_7 > 0);
    var_a3_8 = 8;
    var_a2_8 = 0;
    do {
        temp_v0_8 = var_a2_8 + (arg0->unk1608 + 0x7DC);
        temp_at_8 = var_a2_8 + &__glMgrim_rectDispatchTable;
        var_a2_8 += 4;
        var_a3_8 -= 1;
        *temp_v0_8 = *temp_at_8;
    } while (var_a3_8 > 0);
    var_a3_9 = 0;
    var_a2_9 = 0x173;
    if (arg0->unk9CA5 != 0) {
        do {
            temp_a1 = var_a3_9 + (arg0 + 0x1610);
            temp_v1 = var_a3_9 + &__glmglc_dispatchTable;
            var_a3_9 += 4;
            var_a2_9 -= 1;
            *temp_a1 = *temp_v1;
        } while (var_a2_9 > 0);
    } else {
        var_a2_10 = 0x173;
        var_a3_10 = 0;
        do {
            temp_v1_2 = var_a3_10 + (arg0 + 0x1610);
            temp_v0_9 = var_a3_10 + &__glMG10splc_dispatchTable;
            var_a3_10 += 4;
            var_a2_10 -= 1;
            *temp_v1_2 = *temp_v0_9;
        } while (var_a2_10 > 0);
    }
    var_a3_11 = 0x18;
    var_a2_11 = 0;
    do {
        temp_at_9 = var_a2_11 + (arg0 + 0x1BDC);
        temp_a1_2 = var_a2_11 + &__glmglc_vertexDispatchTable;
        var_a2_11 += 4;
        var_a3_11 -= 1;
        *temp_at_9 = *temp_a1_2;
    } while (var_a3_11 > 0);
    var_a2_12 = 0xA;
    var_a3_12 = 0;
    do {
        temp_v0_10 = var_a3_12 + (arg0 + 0x1CE4);
        temp_at_10 = var_a3_12 + &__glmglc_normalDispatchTable;
        var_a3_12 += 4;
        var_a2_12 -= 1;
        *temp_v0_10 = *temp_at_10;
    } while (var_a2_12 > 0);
    var_a3_13 = 0x18;
    var_a2_13 = 0;
    do {
        temp_v1_3 = var_a2_13 + (arg0 + 0x1D8C);
        temp_v0_11 = var_a2_13 + &__glmglc_rasterPosDispatchTable;
        var_a2_13 += 4;
        var_a3_13 -= 1;
        *temp_v1_3 = *temp_v0_11;
    } while (var_a3_13 > 0);
    var_a3_14 = 8;
    var_a2_14 = 0;
    do {
        temp_a1_3 = var_a2_14 + (arg0 + 0x1DEC);
        temp_v1_4 = var_a2_14 + &__glmglc_rectDispatchTable;
        var_a2_14 += 4;
        var_a3_14 -= 1;
        *temp_a1_3 = *temp_v1_4;
    } while (var_a3_14 > 0);
    var_a2_15 = 0x20;
    var_a3_15 = 0;
    do {
        temp_at_11 = var_a3_15 + (arg0 + 0x1D0C);
        temp_a1_4 = var_a3_15 + &__glmglc_texCoordDispatchTable;
        var_a3_15 += 4;
        var_a2_15 -= 1;
        *temp_at_11 = *temp_a1_4;
    } while (var_a2_15 > 0);
    var_a3_16 = 0x2A;
    var_a2_16 = 0;
    temp_t0_2 = arg0->unk1608;
    if (arg0->unkC20 != 0) {
        do {
            temp_v0_12 = var_a2_16 + (temp_t0_2 + 0x62C);
            temp_at_12 = var_a2_16 + &__glMgrim_shadowIndexcolorDispatchTable;
            var_a2_16 += 4;
            var_a3_16 -= 1;
            *temp_v0_12 = *temp_at_12;
        } while (var_a3_16 > 0);
        var_a3_17 = 0x2A;
        var_a2_17 = 0;
        arg0->unk1608->unk120 = __glMgrim_ColorMask;
        arg0->unk1608->unk128 = __glim_IndexMask;
        do {
            temp_v0_13 = var_a2_17 + (arg0 + 0x1C3C);
            temp_at_13 = var_a2_17 + &__glmglc_shadowIndexcolorDispatchTable;
            var_a2_17 += 4;
            var_a3_17 -= 1;
            *temp_v0_13 = *temp_at_13;
        } while (var_a3_17 > 0);
        arg0->unk1738 = __glsplc_IndexMask;
        arg0->unk1730 = __glMgrlc_ColorMask;
    } else {
        var_a2_18 = 0x2A;
        var_a3_18 = 0;
        do {
            temp_a1_5 = var_a3_18 + (temp_t0_2 + 0x62C);
            temp_v1_5 = var_a3_18 + &__glMgrim_shadowRGBcolorDispatchTable;
            var_a3_18 += 4;
            var_a2_18 -= 1;
            *temp_a1_5 = *temp_v1_5;
        } while (var_a2_18 > 0);
        var_a3_19 = 0x2A;
        var_a2_19 = 0;
        arg0->unk1608->unk120 = __glim_ColorMask;
        arg0->unk1608->unk128 = __glMgrim_IndexMask;
        do {
            temp_at_14 = var_a2_19 + (arg0 + 0x1C3C);
            temp_a1_6 = var_a2_19 + &__glmglc_shadowRGBcolorDispatchTable;
            var_a2_19 += 4;
            var_a3_19 -= 1;
            *temp_at_14 = *temp_a1_6;
        } while (var_a3_19 > 0);
        arg0->unk1738 = __glMgrlc_IndexMask;
        arg0->unk1730 = __glsplc_ColorMask;
    }
    __glCurrentContext->procs.table[0x5A] = __glMgrBeginPoints;
    __glCurrentContext->procs.table[0x5E] = __glMgrBeginTriangles;
    __glCurrentContext->procs.table[0x5C] = __glMgrBeginLLoop;
    __glCurrentContext->procs.table[0x5D] = __glMgrBeginLStrip;
    __glCurrentContext->procs.table[0x5B] = __glMgrBeginLines;
    __glCurrentContext->procs.table[0x5F] = __glMgrBeginTStrip;
    __glCurrentContext->procs.table[0x60] = __glMgrBeginTFan;
    __glCurrentContext->procs.table[0x63] = __glMgrBeginPolygon;
    __glCurrentContext->procs.table[0x64] = __glEndPrim;
    __glCurrentContext->procs.table[0x61] = __glMgrBeginQuads;
    __glCurrentContext->procs.table[0x62] = __glMgrBeginQStrip;
    if ((arg0->unkC24 == 0) || (arg0->unk7B7D != 0)) {
        return;
    }
    arg0->unk1608->unk12C = __glMgrim_SoftAccum;
    arg0->unk1608->unk108 = __glim_ClearAccum;
}

void __glMgrPassAccum(__GLcontext *gc, ...) {
    __glMgrim_ClearAccum(__glCurrentContext->unk610, __glCurrentContext->unk614, __glCurrentContext->unk618, __glCurrentContext->unk61C);
}

void __glMgrPassColorBuffer(__GLcontext *gc, s64 arg1, ...) {
    s64 sp0;
    __GLcontext *temp_s3;

    temp_s3 = __glCurrentContext;
    sp0 = arg1;
    if (temp_s3->unk6A0 & 1) {
        __glMgrim_Enable(GL_ALPHA_TEST);
    } else {
        __glMgrim_Disable(GL_ALPHA_TEST);
    }
    if (temp_s3->unk6A0 & 2) {
        __glMgrim_Enable(GL_BLEND);
    } else {
        __glMgrim_Disable(GL_BLEND);
    }
    if (temp_s3->unk6A0 & 8) {
        __glMgrim_Enable(GL_DITHER);
    } else {
        __glMgrim_Disable(GL_DITHER);
    }
    if (temp_s3->unk6A0 & 4) {
        __glMgrim_Enable(GL_LOGIC_OP);
    } else {
        __glMgrim_Disable(GL_LOGIC_OP);
    }
    if (temp_s3->unk6A0 & 0x800) {
        __glMgrim_Enable(GL_COLOR_LOGIC_OP);
    } else {
        __glMgrim_Disable(GL_COLOR_LOGIC_OP);
    }
    if (sp0 != 0) {
        __glMgrim_AlphaFunc(temp_s3->unk6B8, temp_s3->unk6BC);
        __glMgrim_BlendFunc(temp_s3->unk6C0, temp_s3->unk6C4);
        __glMgrim_BlendEquationEXT(temp_s3->unk6C8);
        __glMgrim_LogicOp(temp_s3->unk6DC);
        __glMgrim_ColorMask(temp_s3->unk6F8, temp_s3->unk6F9, temp_s3->unk6FA, temp_s3->unk6FB);
        __glMgrim_IndexMask((u32) temp_s3->unk6F4);
        __glMgrim_ClearColor(temp_s3->unk6E0, temp_s3->unk6E4, temp_s3->unk6E8, temp_s3->unk6EC);
        __glMgrim_ClearIndex(temp_s3->unk6F0);
    }
    __glMgrim_DrawBuffer(temp_s3->unk700);
}

void __glMgrPassCurrentBuffer(__GLcontext *gc, ...) {
    ? *temp_a0;
    __GLcontext *temp_s7;

    temp_s7 = __glCurrentContext;
    temp_a0 = &temp_s7->unkD8;
    __glMgrRestoreRasterPosition((__GLcontext *) temp_a0, temp_a0, temp_s7->unk1AC);
    temp_s7->unk1608->unk67C(temp_s7->unk198, temp_s7->unk19C, temp_s7->unk1A0, temp_s7->unk1A4);
    temp_s7->unk1608->unk6B4(temp_s7->unk1A8);
    __glMgrim_Normal3f(temp_s7->unkB8, temp_s7->unkBC, temp_s7->unkC0);
    __glMgrim_TexCoord4f(temp_s7->unkC8, temp_s7->unkCC, temp_s7->unkD0, temp_s7->unkD4);
    __glMgrim_EdgeFlag(temp_s7->unk1AD);
}

void __glMgrPassDepthBuffer(__GLcontext *gc, s64 arg1, ...) {
    s64 sp0;
    __GLcontext *temp_s4;

    temp_s4 = __glCurrentContext;
    sp0 = arg1;
    if (temp_s4->unk6A0 & 0x10) {
        __glMgrim_Enable(GL_DEPTH_TEST);
    } else {
        __glMgrim_Disable(GL_DEPTH_TEST);
    }
    if (sp0 != 0) {
        __glMgrim_DepthFunc(temp_s4->unk600);
        __glMgrim_DepthMask(temp_s4->unk604);
        __glMgrim_ClearDepth(temp_s4->unk608);
    }
}

void __glMgrPassEnables(__GLcontext *gc, ...) {
    __GLcontext *temp_s7;

    temp_s7 = __glCurrentContext;
    if (temp_s7->unk6A0 & 1) {
        __glMgrim_Enable(GL_ALPHA_TEST);
    } else {
        __glMgrim_Disable(GL_ALPHA_TEST);
    }
    if (temp_s7->unk6A0 & 0x800000) {
        __glMgrim_Enable(GL_AUTO_NORMAL);
    } else {
        __glMgrim_Disable(GL_AUTO_NORMAL);
    }
    if (temp_s7->unk6A0 & 2) {
        __glMgrim_Enable(GL_BLEND);
    } else {
        __glMgrim_Disable(GL_BLEND);
    }
    if (temp_s7->unk6A0 & 0x1000) {
        __glMgrim_Enable(GL_CULL_FACE);
    } else {
        __glMgrim_Disable(GL_CULL_FACE);
    }
    if (temp_s7->unk6A0 & 4) {
        __glMgrim_Enable(GL_LOGIC_OP);
    } else {
        __glMgrim_Disable(GL_LOGIC_OP);
    }
    if (temp_s7->unk6A0 & 0x800) {
        __glMgrim_Enable(GL_COLOR_LOGIC_OP);
    } else {
        __glMgrim_Disable(GL_COLOR_LOGIC_OP);
    }
    if (temp_s7->unk6A0 & 0x10) {
        __glMgrim_Enable(GL_DEPTH_TEST);
    } else {
        __glMgrim_Disable(GL_DEPTH_TEST);
    }
    if (temp_s7->unk6A0 & 8) {
        __glMgrim_Enable(GL_DITHER);
    } else {
        __glMgrim_Disable(GL_DITHER);
    }
    if (temp_s7->unk6A0 & 0x80) {
        __glMgrim_Enable(GL_COLOR_MATERIAL);
    } else {
        __glMgrim_Disable(GL_COLOR_MATERIAL);
    }
    if (temp_s7->unk6A0 & 0x20) {
        __glMgrim_Enable(GL_FOG);
    } else {
        __glMgrim_Disable(GL_FOG);
    }
    if (temp_s7->unk6A0 & 0x200) {
        __glMgrim_Enable(GL_LINE_SMOOTH);
    } else {
        __glMgrim_Disable(GL_LINE_SMOOTH);
    }
    if (temp_s7->unk6A0 & 0x100) {
        __glMgrim_Enable(GL_LINE_STIPPLE);
    } else {
        __glMgrim_Disable(GL_LINE_STIPPLE);
    }
    if (temp_s7->unk6A0 & 4) {
        __glMgrim_Enable(GL_LOGIC_OP);
    } else {
        __glMgrim_Disable(GL_LOGIC_OP);
    }
    if (temp_s7->unk6A0 & 0x400000) {
        __glMgrim_Enable(GL_NORMALIZE);
    } else {
        __glMgrim_Disable(GL_NORMALIZE);
    }
    if (temp_s7->unk6A0 & 0x400) {
        __glMgrim_Enable(GL_POINT_SMOOTH);
    } else {
        __glMgrim_Disable(GL_POINT_SMOOTH);
    }
    if (temp_s7->unk6A0 & 0x800) {
        __glMgrim_Enable(GL_POLYGON_SMOOTH);
    } else {
        __glMgrim_Disable(GL_POLYGON_SMOOTH);
    }
    if (temp_s7->unk6A0 & 0x2000) {
        __glMgrim_Enable(GL_POLYGON_STIPPLE);
    } else {
        __glMgrim_Disable(GL_POLYGON_STIPPLE);
    }
    if (temp_s7->unk6A0 & 0x4000) {
        __glMgrim_Enable(GL_SCISSOR_TEST);
    } else {
        __glMgrim_Disable(GL_SCISSOR_TEST);
    }
    if (temp_s7->unk6A0 & 0x8000) {
        __glMgrim_Enable(GL_STENCIL_TEST);
    } else {
        __glMgrim_Disable(GL_STENCIL_TEST);
    }
    if (temp_s7->unk6A0 & 0x10000) {
        __glMgrim_Enable(GL_TEXTURE_1D);
    } else {
        __glMgrim_Disable(GL_TEXTURE_1D);
    }
    if (temp_s7->unk6A0 & 0x20000) {
        __glMgrim_Enable(GL_TEXTURE_2D);
    } else {
        __glMgrim_Disable(GL_TEXTURE_2D);
    }
    if (temp_s7->unk6A0 & 0x40000) {
        __glMgrim_Enable(GL_TEXTURE_GEN_S);
    } else {
        __glMgrim_Disable(GL_TEXTURE_GEN_S);
    }
    if (temp_s7->unk6A0 & 0x80000) {
        __glMgrim_Enable(GL_TEXTURE_GEN_T);
    } else {
        __glMgrim_Disable(GL_TEXTURE_GEN_T);
    }
    if (temp_s7->unk6A0 & 0x100000) {
        __glMgrim_Enable(GL_TEXTURE_GEN_R);
    } else {
        __glMgrim_Disable(GL_TEXTURE_GEN_R);
    }
    if (temp_s7->unk6A0 & 0x200000) {
        __glMgrim_Enable(GL_TEXTURE_GEN_Q);
    } else {
        __glMgrim_Disable(GL_TEXTURE_GEN_Q);
    }
    if (temp_s7->unk6A0 & 0x01000000) {
        __glMgrim_Enable(GL_POLYGON_OFFSET_FILL);
    } else {
        __glMgrim_Disable(GL_POLYGON_OFFSET_FILL);
    }
    if (temp_s7->unk6AC & 1) {
        __glMgrim_Enable(GL_CLIP_PLANE0);
    } else {
        __glMgrim_Disable(GL_CLIP_PLANE0);
    }
    if (temp_s7->unk6AC & 2) {
        __glMgrim_Enable(GL_CLIP_PLANE1);
    } else {
        __glMgrim_Disable(GL_CLIP_PLANE1);
    }
    if (temp_s7->unk6AC & 4) {
        __glMgrim_Enable(GL_CLIP_PLANE2);
    } else {
        __glMgrim_Disable(GL_CLIP_PLANE2);
    }
    if (temp_s7->unk6AC & 8) {
        __glMgrim_Enable(GL_CLIP_PLANE3);
    } else {
        __glMgrim_Disable(GL_CLIP_PLANE3);
    }
    if (temp_s7->unk6AC & 0x10) {
        __glMgrim_Enable(GL_CLIP_PLANE4);
    } else {
        __glMgrim_Disable(GL_CLIP_PLANE4);
    }
    if (temp_s7->unk6AC & 0x20) {
        __glMgrim_Enable(GL_CLIP_PLANE5);
    } else {
        __glMgrim_Disable(GL_CLIP_PLANE5);
    }
    if (temp_s7->unk6A0 & 0x40) {
        __glMgrim_Enable(GL_LIGHTING);
    } else {
        __glMgrim_Disable(GL_LIGHTING);
    }
    if (temp_s7->unk6A8 & 1) {
        __glMgrim_Enable(GL_LIGHT0);
    } else {
        __glMgrim_Disable(GL_LIGHT0);
    }
    if (temp_s7->unk6A8 & 2) {
        __glMgrim_Enable(GL_LIGHT1);
    } else {
        __glMgrim_Disable(GL_LIGHT1);
    }
    if (temp_s7->unk6A8 & 4) {
        __glMgrim_Enable(GL_LIGHT2);
    } else {
        __glMgrim_Disable(GL_LIGHT2);
    }
    if (temp_s7->unk6A8 & 8) {
        __glMgrim_Enable(GL_LIGHT3);
    } else {
        __glMgrim_Disable(GL_LIGHT3);
    }
    if (temp_s7->unk6A8 & 0x10) {
        __glMgrim_Enable(GL_LIGHT4);
    } else {
        __glMgrim_Disable(GL_LIGHT4);
    }
    if (temp_s7->unk6A8 & 0x20) {
        __glMgrim_Enable(GL_LIGHT5);
    } else {
        __glMgrim_Disable(GL_LIGHT5);
    }
    if (temp_s7->unk6A8 & 0x40) {
        __glMgrim_Enable(GL_LIGHT6);
    } else {
        __glMgrim_Disable(GL_LIGHT6);
    }
    if (temp_s7->unk6A8 & 0x80) {
        __glMgrim_Enable(GL_LIGHT7);
    } else {
        __glMgrim_Disable(GL_LIGHT7);
    }
    if (temp_s7->unk6A0 & 0x10000000) {
        __glMgrim_Enable(GL_HISTOGRAM_EXT);
    } else {
        __glMgrim_Disable(GL_HISTOGRAM_EXT);
    }
    if (temp_s7->unk6A0 & 0x20000000) {
        __glMgrim_Enable(GL_MINMAX_EXT);
    } else {
        __glMgrim_Disable(GL_MINMAX_EXT);
    }
    if (temp_s7->unk6A0 & 0x02000000) {
        __glMgrim_Enable(GL_CONVOLUTION_1D_EXT);
    } else {
        __glMgrim_Disable(GL_CONVOLUTION_1D_EXT);
    }
    if (temp_s7->unk6A0 & 0x04000000) {
        __glMgrim_Enable(GL_CONVOLUTION_2D_EXT);
    } else {
        __glMgrim_Disable(GL_CONVOLUTION_2D_EXT);
    }
    if (temp_s7->unk6A0 & 0x08000000) {
        __glMgrim_Enable(GL_SEPARABLE_2D_EXT);
    } else {
        __glMgrim_Disable(GL_SEPARABLE_2D_EXT);
    }
    if (temp_s7->unk6B0 & 0x80) {
        __glMgrim_Enable(GL_MAP1_VERTEX_3);
    } else {
        __glMgrim_Disable(GL_MAP1_VERTEX_3);
    }
    if (temp_s7->unk6B0 & 0x100) {
        __glMgrim_Enable(GL_MAP1_VERTEX_4);
    } else {
        __glMgrim_Disable(GL_MAP1_VERTEX_4);
    }
    if (temp_s7->unk6B0 & 2) {
        __glMgrim_Enable(GL_MAP1_INDEX);
    } else {
        __glMgrim_Disable(GL_MAP1_INDEX);
    }
    if (temp_s7->unk6B0 & 1) {
        __glMgrim_Enable(GL_MAP1_COLOR_4);
    } else {
        __glMgrim_Disable(GL_MAP1_COLOR_4);
    }
    if (temp_s7->unk6B0 & 4) {
        __glMgrim_Enable(GL_MAP1_NORMAL);
    } else {
        __glMgrim_Disable(GL_MAP1_NORMAL);
    }
    if (temp_s7->unk6B0 & 8) {
        __glMgrim_Enable(GL_MAP1_TEXTURE_COORD_1);
    } else {
        __glMgrim_Disable(GL_MAP1_TEXTURE_COORD_1);
    }
    if (temp_s7->unk6B0 & 0x10) {
        __glMgrim_Enable(GL_MAP1_TEXTURE_COORD_2);
    } else {
        __glMgrim_Disable(GL_MAP1_TEXTURE_COORD_2);
    }
    if (temp_s7->unk6B0 & 0x20) {
        __glMgrim_Enable(GL_MAP1_TEXTURE_COORD_3);
    } else {
        __glMgrim_Disable(GL_MAP1_TEXTURE_COORD_3);
    }
    if (temp_s7->unk6B0 & 0x40) {
        __glMgrim_Enable(GL_MAP1_TEXTURE_COORD_4);
    } else {
        __glMgrim_Disable(GL_MAP1_TEXTURE_COORD_4);
    }
    if (temp_s7->unk6B4 & 0x80) {
        __glMgrim_Enable(GL_MAP2_VERTEX_3);
    } else {
        __glMgrim_Disable(GL_MAP2_VERTEX_3);
    }
    if (temp_s7->unk6B4 & 0x100) {
        __glMgrim_Enable(GL_MAP2_VERTEX_4);
    } else {
        __glMgrim_Disable(GL_MAP2_VERTEX_4);
    }
    if (temp_s7->unk6B4 & 2) {
        __glMgrim_Enable(GL_MAP2_INDEX);
    } else {
        __glMgrim_Disable(GL_MAP2_INDEX);
    }
    if (temp_s7->unk6B4 & 1) {
        __glMgrim_Enable(GL_MAP2_COLOR_4);
    } else {
        __glMgrim_Disable(GL_MAP2_COLOR_4);
    }
    if (temp_s7->unk6B4 & 4) {
        __glMgrim_Enable(GL_MAP2_NORMAL);
    } else {
        __glMgrim_Disable(GL_MAP2_NORMAL);
    }
    if (temp_s7->unk6B4 & 8) {
        __glMgrim_Enable(GL_MAP2_TEXTURE_COORD_1);
    } else {
        __glMgrim_Disable(GL_MAP2_TEXTURE_COORD_1);
    }
    if (temp_s7->unk6B4 & 0x10) {
        __glMgrim_Enable(GL_MAP2_TEXTURE_COORD_2);
    } else {
        __glMgrim_Disable(GL_MAP2_TEXTURE_COORD_2);
    }
    if (temp_s7->unk6B4 & 0x20) {
        __glMgrim_Enable(GL_MAP2_TEXTURE_COORD_3);
    } else {
        __glMgrim_Disable(GL_MAP2_TEXTURE_COORD_3);
    }
    if (temp_s7->unk6B4 & 0x40) {
        __glMgrim_Enable(GL_MAP2_TEXTURE_COORD_4);
    } else {
        __glMgrim_Disable(GL_MAP2_TEXTURE_COORD_4);
    }
}

void __glMgrPassEval(__GLcontext *gc, ...) {
    __GLcontext *temp_s7;

    temp_s7 = __glCurrentContext;
    if (temp_s7->unk6A0 & 0x800000) {
        __glMgrim_Enable(GL_AUTO_NORMAL);
    } else {
        __glMgrim_Disable(GL_AUTO_NORMAL);
    }
    if (temp_s7->unk6B0 & 0x80) {
        __glMgrim_Enable(GL_MAP1_VERTEX_3);
    } else {
        __glMgrim_Disable(GL_MAP1_VERTEX_3);
    }
    if (temp_s7->unk6B0 & 0x100) {
        __glMgrim_Enable(GL_MAP1_VERTEX_4);
    } else {
        __glMgrim_Disable(GL_MAP1_VERTEX_4);
    }
    if (temp_s7->unk6B0 & 2) {
        __glMgrim_Enable(GL_MAP1_INDEX);
    } else {
        __glMgrim_Disable(GL_MAP1_INDEX);
    }
    if (temp_s7->unk6B0 & 1) {
        __glMgrim_Enable(GL_MAP1_COLOR_4);
    } else {
        __glMgrim_Disable(GL_MAP1_COLOR_4);
    }
    if (temp_s7->unk6B0 & 4) {
        __glMgrim_Enable(GL_MAP1_NORMAL);
    } else {
        __glMgrim_Disable(GL_MAP1_NORMAL);
    }
    if (temp_s7->unk6B0 & 8) {
        __glMgrim_Enable(GL_MAP1_TEXTURE_COORD_1);
    } else {
        __glMgrim_Disable(GL_MAP1_TEXTURE_COORD_1);
    }
    if (temp_s7->unk6B0 & 0x10) {
        __glMgrim_Enable(GL_MAP1_TEXTURE_COORD_2);
    } else {
        __glMgrim_Disable(GL_MAP1_TEXTURE_COORD_2);
    }
    if (temp_s7->unk6B0 & 0x20) {
        __glMgrim_Enable(GL_MAP1_TEXTURE_COORD_3);
    } else {
        __glMgrim_Disable(GL_MAP1_TEXTURE_COORD_3);
    }
    if (temp_s7->unk6B0 & 0x40) {
        __glMgrim_Enable(GL_MAP1_TEXTURE_COORD_4);
    } else {
        __glMgrim_Disable(GL_MAP1_TEXTURE_COORD_4);
    }
    if (temp_s7->unk6B4 & 0x80) {
        __glMgrim_Enable(GL_MAP2_VERTEX_3);
    } else {
        __glMgrim_Disable(GL_MAP2_VERTEX_3);
    }
    if (temp_s7->unk6B4 & 0x100) {
        __glMgrim_Enable(GL_MAP2_VERTEX_4);
    } else {
        __glMgrim_Disable(GL_MAP2_VERTEX_4);
    }
    if (temp_s7->unk6B4 & 2) {
        __glMgrim_Enable(GL_MAP2_INDEX);
    } else {
        __glMgrim_Disable(GL_MAP2_INDEX);
    }
    if (temp_s7->unk6B4 & 1) {
        __glMgrim_Enable(GL_MAP2_COLOR_4);
    } else {
        __glMgrim_Disable(GL_MAP2_COLOR_4);
    }
    if (temp_s7->unk6B4 & 4) {
        __glMgrim_Enable(GL_MAP2_NORMAL);
    } else {
        __glMgrim_Disable(GL_MAP2_NORMAL);
    }
    if (temp_s7->unk6B4 & 8) {
        __glMgrim_Enable(GL_MAP2_TEXTURE_COORD_1);
    } else {
        __glMgrim_Disable(GL_MAP2_TEXTURE_COORD_1);
    }
    if (temp_s7->unk6B4 & 0x10) {
        __glMgrim_Enable(GL_MAP2_TEXTURE_COORD_2);
    } else {
        __glMgrim_Disable(GL_MAP2_TEXTURE_COORD_2);
    }
    if (temp_s7->unk6B4 & 0x20) {
        __glMgrim_Enable(GL_MAP2_TEXTURE_COORD_3);
    } else {
        __glMgrim_Disable(GL_MAP2_TEXTURE_COORD_3);
    }
    if (temp_s7->unk6B4 & 0x40) {
        __glMgrim_Enable(GL_MAP2_TEXTURE_COORD_4);
    } else {
        __glMgrim_Disable(GL_MAP2_TEXTURE_COORD_4);
    }
    __glMgrUpdateEvalAttributes(temp_s7, temp_s7);
}

void __glMgrPassFog(__GLcontext *gc, ...) {
    __GLcontext *temp_s7;

    temp_s7 = __glCurrentContext;
    if (temp_s7->unk6A0 & 0x20) {
        __glMgrim_Enable(GL_FOG);
    } else {
        __glMgrim_Disable(GL_FOG);
    }
    __glMgrim_Fogi(GL_FOG_MODE, temp_s7->unk5D4);
    __glMgrim_Fogf(GL_FOG_DENSITY, temp_s7->unk5E8);
    __glMgrim_Fogf(GL_FOG_INDEX, temp_s7->unk5F8);
    __glMgrim_Fogf(GL_FOG_START, temp_s7->unk5EC);
    __glMgrim_Fogf(GL_FOG_END, temp_s7->unk5F0);
    __glMgrim_Fogfv(GL_FOG_COLOR, &temp_s7->unk5D8);
}

void __glMgrPassLighting(__GLcontext *gc, ...) {
    __GLcontext *temp_s6;
    enum GLenum var_s0;
    f32 *var_s1;
    f32 *var_s2;
    f32 *var_s3;
    f32 *var_s4;
    f32 *var_s5;
    f32 temp_f14;

    temp_s6 = __glCurrentContext;
    if (temp_s6->unk6A0 & 0x80) {
        __glMgrim_Enable(GL_COLOR_MATERIAL);
    } else {
        __glMgrim_Disable(GL_COLOR_MATERIAL);
    }
    if (temp_s6->unk6A0 & 0x40) {
        __glMgrim_Enable(GL_LIGHTING);
    } else {
        __glMgrim_Disable(GL_LIGHTING);
    }
    if (temp_s6->unk6A8 & 1) {
        __glMgrim_Enable(GL_LIGHT0);
    } else {
        __glMgrim_Disable(GL_LIGHT0);
    }
    if (temp_s6->unk6A8 & 2) {
        __glMgrim_Enable(GL_LIGHT1);
    } else {
        __glMgrim_Disable(GL_LIGHT1);
    }
    if (temp_s6->unk6A8 & 4) {
        __glMgrim_Enable(GL_LIGHT2);
    } else {
        __glMgrim_Disable(GL_LIGHT2);
    }
    if (temp_s6->unk6A8 & 8) {
        __glMgrim_Enable(GL_LIGHT3);
    } else {
        __glMgrim_Disable(GL_LIGHT3);
    }
    if (temp_s6->unk6A8 & 0x10) {
        __glMgrim_Enable(GL_LIGHT4);
    } else {
        __glMgrim_Disable(GL_LIGHT4);
    }
    if (temp_s6->unk6A8 & 0x20) {
        __glMgrim_Enable(GL_LIGHT5);
    } else {
        __glMgrim_Disable(GL_LIGHT5);
    }
    if (temp_s6->unk6A8 & 0x40) {
        __glMgrim_Enable(GL_LIGHT6);
    } else {
        __glMgrim_Disable(GL_LIGHT6);
    }
    if (temp_s6->unk6A8 & 0x80) {
        __glMgrim_Enable(GL_LIGHT7);
    } else {
        __glMgrim_Disable(GL_LIGHT7);
    }
    __glMgrim_ColorMaterial(temp_s6->unk510, temp_s6->unk514);
    __glMgrim_ShadeModel(temp_s6->unk518);
    __glMgrim_LightModelfv(GL_LIGHT_MODEL_AMBIENT, &temp_s6->unk51C);
    __glMgrim_LightModelf(GL_LIGHT_MODEL_LOCAL_VIEWER, (f32) temp_s6->unk52C);
    __glMgrim_LightModelf(GL_LIGHT_MODEL_TWO_SIDE, (f32) temp_s6->unk52D);
    __glMgrim_Materialfv(GL_FRONT, GL_AMBIENT, &temp_s6->unk530);
    __glMgrim_Materialfv(GL_FRONT, GL_DIFFUSE, &temp_s6->unk540);
    __glMgrim_Materialfv(GL_FRONT, GL_SPECULAR, &temp_s6->unk550);
    __glMgrim_Materialfv(GL_FRONT, GL_EMISSION, &temp_s6->unk560);
    __glMgrim_Materialf(GL_FRONT, GL_SHININESS, temp_s6->unk570);
    __glMgrim_Materialfv(GL_FRONT, GL_COLOR_INDEXES, sp, /* extra? */ temp_s6->unk574, /* extra? */ temp_s6->unk57C, /* extra? */ temp_s6->unk578);
    __glMgrim_Materialfv(GL_BACK, GL_AMBIENT, &temp_s6->unk580);
    __glMgrim_Materialfv(GL_BACK, GL_DIFFUSE, &temp_s6->unk590);
    __glMgrim_Materialfv(GL_BACK, GL_SPECULAR, &temp_s6->unk5A0);
    __glMgrim_Materialfv(GL_BACK, GL_EMISSION, &temp_s6->unk5B0);
    __glMgrim_Materialf(GL_BACK, GL_SHININESS, temp_s6->unk5C0);
    __glMgrim_Materialfv(GL_BACK, GL_COLOR_INDEXES, sp, /* extra? */ temp_s6->unk5C4, /* extra? */ temp_s6->unk5CC, /* extra? */ temp_s6->unk5C8);
    var_s0 = GL_LIGHT0;
    var_s1 = temp_s6->unk5D0;
    if ((u32) (temp_s6->unkD00 + 0x4000) >= 0x4001U) {
        var_s5 = var_s1 + 0x50;
        var_s2 = var_s1 + 0x40;
        var_s4 = var_s1 + 0x20;
        var_s3 = var_s1 + 0x10;
        do {
            __glMgrim_Lightfv(var_s0, GL_AMBIENT, var_s1);
            __glMgrim_Lightfv(var_s0, GL_DIFFUSE, var_s3);
            __glMgrim_Lightfv(var_s0, GL_SPECULAR, var_s4);
            __glMgrim_Lightfv(var_s0, GL_POSITION, var_s2);
            __glMgrim_Lightfv(var_s0, GL_SPOT_DIRECTION, var_s5);
            __glMgrim_Lightf(var_s0, GL_SPOT_EXPONENT, var_s1->unk60);
            __glMgrim_Lightf(var_s0, GL_SPOT_CUTOFF, var_s1->unk64);
            var_s5 += 0x74;
            __glMgrim_Lightf(var_s0, GL_CONSTANT_ATTENUATION, var_s1->unk68);
            var_s2 += 0x74;
            __glMgrim_Lightf(var_s0, GL_LINEAR_ATTENUATION, var_s1->unk6C);
            var_s4 += 0x74;
            temp_f14 = var_s1->unk70;
            var_s1 += 0x74;
            __glMgrim_Lightf(var_s0, GL_QUADRATIC_ATTENUATION, temp_f14);
            var_s0 += 1;
            var_s3 += 0x74;
        } while (var_s0 < (u32) (temp_s6->unkD00 + 0x4000));
    }
}

void __glMgrPassLine(__GLcontext *gc, ...) {
    __GLcontext *temp_s7;

    temp_s7 = __glCurrentContext;
    if (temp_s7->unk6A0 & 0x200) {
        __glMgrim_Enable(GL_LINE_SMOOTH);
    } else {
        __glMgrim_Disable(GL_LINE_SMOOTH);
    }
    if (temp_s7->unk6A0 & 0x100) {
        __glMgrim_Enable(GL_LINE_STIPPLE);
    } else {
        __glMgrim_Disable(GL_LINE_STIPPLE);
    }
    __glMgrim_LineWidth(temp_s7->unk1BC);
    __glMgrim_LineStipple((s32) temp_s7->unk1CA, temp_s7->unk1C8);
}

void __glMgrPassPixel(__GLcontext *gc, ...) {
    __GLcontext *temp_s7;

    temp_s7 = __glCurrentContext;
    __glMgrim_PixelStorei(GL_UNPACK_SWAP_BYTES, (enum GLenum) temp_s7->unk454);
    __glMgrim_PixelStorei(GL_UNPACK_LSB_FIRST, (enum GLenum) temp_s7->unk455);
    __glMgrim_PixelStorei(GL_UNPACK_ROW_LENGTH, temp_s7->unk458);
    __glMgrim_PixelStorei(GL_UNPACK_SKIP_ROWS, temp_s7->unk45C);
    __glMgrim_PixelStorei(GL_UNPACK_SKIP_PIXELS, temp_s7->unk460);
    __glMgrim_PixelStorei(GL_UNPACK_ALIGNMENT, temp_s7->unk464);
    __glMgrim_PixelStorei(GL_PACK_SWAP_BYTES, (enum GLenum) temp_s7->unk430);
    __glMgrim_PixelStorei(GL_PACK_LSB_FIRST, (enum GLenum) temp_s7->unk431);
    __glMgrim_PixelStorei(GL_PACK_ROW_LENGTH, temp_s7->unk434);
    __glMgrim_PixelStorei(GL_PACK_SKIP_ROWS, temp_s7->unk438);
    __glMgrim_PixelStorei(GL_PACK_SKIP_PIXELS, temp_s7->unk43C);
    __glMgrim_PixelStorei(GL_PACK_ALIGNMENT, temp_s7->unk440);
    __glMgrim_PixelTransferi(GL_MAP_COLOR, (enum GLenum) temp_s7->unk2E0);
    __glMgrim_PixelTransferi(GL_MAP_STENCIL, (enum GLenum) temp_s7->unk2E1);
    __glMgrim_PixelTransferi(GL_INDEX_SHIFT, temp_s7->unk2D8);
    __glMgrim_PixelTransferi(GL_INDEX_OFFSET, temp_s7->unk2DC);
    __glMgrim_PixelTransferf(GL_RED_SCALE, temp_s7->unk268);
    __glMgrim_PixelTransferf(GL_GREEN_SCALE, temp_s7->unk26C);
    __glMgrim_PixelTransferf(GL_BLUE_SCALE, temp_s7->unk270);
    __glMgrim_PixelTransferf(GL_ALPHA_SCALE, temp_s7->unk274);
    __glMgrim_PixelTransferf(GL_DEPTH_SCALE, temp_s7->unk278);
    __glMgrim_PixelTransferf(GL_RED_BIAS, temp_s7->unk27C);
    __glMgrim_PixelTransferf(GL_GREEN_BIAS, temp_s7->unk280);
    __glMgrim_PixelTransferf(GL_BLUE_BIAS, temp_s7->unk284);
    __glMgrim_PixelTransferf(GL_ALPHA_BIAS, temp_s7->unk288);
    __glMgrim_PixelTransferf(GL_DEPTH_BIAS, temp_s7->unk28C);
    __glMgrim_PixelZoom(temp_s7->unk2D0, temp_s7->unk2D4);
    __glMgrim_PixelMapuiv(GL_PIXEL_MAP_I_TO_I, temp_s7->unk3B8, temp_s7->unk3C0);
    __glMgrim_PixelMapuiv(GL_PIXEL_MAP_S_TO_S, temp_s7->unk3C4, temp_s7->unk3CC);
    __glMgrim_PixelMapfv(GL_PIXEL_MAP_I_TO_R, temp_s7->unk3D0, temp_s7->unk3D8);
    __glMgrim_PixelMapfv(GL_PIXEL_MAP_I_TO_G, temp_s7->unk3DC, temp_s7->unk3E4);
    __glMgrim_PixelMapfv(GL_PIXEL_MAP_I_TO_B, temp_s7->unk3E8, temp_s7->unk3F0);
    __glMgrim_PixelMapfv(GL_PIXEL_MAP_I_TO_A, temp_s7->unk3F4, temp_s7->unk3FC);
    __glMgrim_PixelMapfv(GL_PIXEL_MAP_R_TO_R, temp_s7->unk400, temp_s7->unk408);
    __glMgrim_PixelMapfv(GL_PIXEL_MAP_G_TO_G, temp_s7->unk40C, temp_s7->unk414);
    __glMgrim_PixelMapfv(GL_PIXEL_MAP_B_TO_B, temp_s7->unk418, temp_s7->unk420);
    __glMgrim_PixelMapfv(GL_PIXEL_MAP_A_TO_A, temp_s7->unk424, temp_s7->unk42C);
    __glMgrim_ReadBuffer(temp_s7->unk480);
}

void __glMgrPassPoint(__GLcontext *gc, ...) {
    s64 sp0;

    sp0 = (s64) __glCurrentContext;
    if (__glCurrentContext->unk6A0 & 0x400) {
        __glMgrim_Enable(GL_POINT_SMOOTH);
    } else {
        __glMgrim_Disable(GL_POINT_SMOOTH);
    }
    __glMgrim_PointSize(sp0->unk1B0);
}

void __glMgrPassPolygon(__GLcontext *gc, ...) {
    __GLcontext *temp_s7;

    temp_s7 = __glCurrentContext;
    __glMgrim_CullFace(temp_s7->unk1D4);
    __glMgrim_PolygonMode(GL_FRONT, temp_s7->unk1CC);
    __glMgrim_PolygonMode(GL_BACK, temp_s7->unk1D0);
    __glMgrim_FrontFace(temp_s7->unk1D8);
    if (temp_s7->unk6A0 & 0x01000000) {
        __glMgrim_Enable(GL_POLYGON_OFFSET_FILL);
    } else {
        __glMgrim_Disable(GL_POLYGON_OFFSET_FILL);
    }
    if (temp_s7->unk6A4 & 0x400) {
        __glMgrim_Enable(GL_POLYGON_OFFSET_LINE);
    } else {
        __glMgrim_Disable(GL_POLYGON_OFFSET_LINE);
    }
    if (temp_s7->unk6A4 & 0x200) {
        __glMgrim_Enable(GL_POLYGON_OFFSET_POINT);
    } else {
        __glMgrim_Disable(GL_POLYGON_OFFSET_POINT);
    }
    __glMgrim_PolygonOffsetEXT(temp_s7->unk1DC, temp_s7->unk1E0);
}

void __glMgrPassScissor(__GLcontext *gc, ...) {
    s64 sp0;

    sp0 = (s64) __glCurrentContext;
    if (__glCurrentContext->unk6A0 & 0x4000) {
        __glMgrim_Enable(GL_SCISSOR_TEST);
    } else {
        __glMgrim_Disable(GL_SCISSOR_TEST);
    }
    __glMgrim_Scissor(sp0->unk96C, sp0->unk970, sp0->unk974, sp0->unk978);
}

void __glMgrPassStencil(__GLcontext *gc, s64 arg1, ...) {
    s64 sp0;
    __GLcontext *temp_s4;

    temp_s4 = __glCurrentContext;
    sp0 = arg1;
    if (temp_s4->unk6A0 & 0x8000) {
        __glMgrim_Enable(GL_STENCIL_TEST);
    } else {
        __glMgrim_Disable(GL_STENCIL_TEST);
    }
    if (sp0 != 0) {
        __glMgrim_StencilMask((u32) temp_s4->unk62A);
        __glMgrim_StencilFunc(temp_s4->unk620, (s32) temp_s4->unk626, (u32) temp_s4->unk628);
        __glMgrim_StencilOp(temp_s4->unk62C, temp_s4->unk630, temp_s4->unk634);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x28, 0x2c], gap at: 0x18. */
void __glMgrPassTransform(__GLcontext *gc, ...) {
    __GLcontext *temp_s0;
    __GLcontext *var_s2_2;
    f32 *var_s1_2;
    f32 *var_s1_3;
    f32 *var_s1_4;
    s32 temp_s2;
    s32 temp_s2_2;
    s32 temp_s2_3;
    s32 var_s4_2;
    s32 var_s4_3;
    s32 var_s4_4;
    s32 var_s4_5;
    s64 var_s1;
    s64 var_s2;
    s64 var_s4;

    var_s1 = saved_reg_s1;
    var_s2 = saved_reg_s2;
    var_s4 = saved_reg_s4;
    temp_s0 = __glCurrentContext;
    if (temp_s0->unk6AC & 1) {
        __glMgrim_Enable(GL_CLIP_PLANE0);
    } else {
        __glMgrim_Disable(GL_CLIP_PLANE0);
    }
    if (temp_s0->unk6AC & 2) {
        __glMgrim_Enable(GL_CLIP_PLANE1);
    } else {
        __glMgrim_Disable(GL_CLIP_PLANE1);
    }
    if (temp_s0->unk6AC & 4) {
        __glMgrim_Enable(GL_CLIP_PLANE2);
    } else {
        __glMgrim_Disable(GL_CLIP_PLANE2);
    }
    if (temp_s0->unk6AC & 8) {
        __glMgrim_Enable(GL_CLIP_PLANE3);
    } else {
        __glMgrim_Disable(GL_CLIP_PLANE3);
    }
    if (temp_s0->unk6AC & 0x10) {
        __glMgrim_Enable(GL_CLIP_PLANE4);
    } else {
        __glMgrim_Disable(GL_CLIP_PLANE4);
    }
    if (temp_s0->unk6AC & 0x20) {
        __glMgrim_Enable(GL_CLIP_PLANE5);
    } else {
        __glMgrim_Disable(GL_CLIP_PLANE5);
    }
    if (temp_s0->unk6A0 & 0x400000) {
        __glMgrim_Enable(GL_NORMALIZE);
    } else {
        __glMgrim_Disable(GL_NORMALIZE);
    }
    if (temp_s0->unk674 != NULL) {
        var_s4_2 = 0;
        if (temp_s0->unkD04 > 0) {
            var_s2_2 = (__GLcontext *)0x3000;
            do {
                var_s4_2 += 1;
                M2C_ERROR(/* unknown instruction: ldl $a1, ($v1) */);
                M2C_ERROR(/* unknown instruction: ldl $a2, 0x8($v1) */);
                __glMgrim_PassClipPlane(var_s2_2, var_s2_2, M2C_ERROR(/* unknown instruction: ldr $a1, 0x7($v1) */), M2C_ERROR(/* unknown instruction: ldr $a2, 0xf($v1) */));
                var_s2_2 += 1;
            } while (var_s4_2 < temp_s0->unkD04);
            var_s2 = unksp10;
            var_s1 = unksp20;
        }
        var_s4 = unksp18;
        temp_s0->imports.free(temp_s0, temp_s0->unk674);
        unksp10 = var_s2;
        temp_s0->unk674 = NULL;
    }
    unksp20 = var_s1;
    unksp10 = var_s2;
    temp_s2 = (s32) (temp_s0->unk7410 - temp_s0->unk740C) / 272;
    M2C_TRAP_IF(0x110 == 0);
    __glMgrim_MatrixMode(GL_MODELVIEW);
    var_s1_2 = temp_s0->unk740C;
    unksp18 = var_s4;
    __glMgrim_LoadMatrixf(var_s1_2);
    var_s4_3 = 0;
    if (temp_s2 > 0) {
        do {
            var_s1_2 += 0x110;
            __glMgrim_PushMatrix();
            __glMgrim_LoadMatrixf(var_s1_2);
            var_s4_3 += 1;
        } while (temp_s2 != var_s4_3);
    }
    temp_s2_2 = (s32) (temp_s0->unk7418 - temp_s0->unk7414) / 272;
    M2C_TRAP_IF(0x110 == 0);
    __glMgrim_MatrixMode(GL_PROJECTION);
    var_s1_3 = temp_s0->unk7414;
    __glMgrim_LoadMatrixf(var_s1_3);
    var_s4_4 = 0;
    if (temp_s2_2 > 0) {
        do {
            var_s1_3 += 0x110;
            __glMgrim_PushMatrix();
            __glMgrim_LoadMatrixf(var_s1_3);
            var_s4_4 += 1;
        } while (temp_s2_2 != var_s4_4);
    }
    temp_s2_3 = (s32) (temp_s0->unk7424 - temp_s0->unk7420) / 272;
    M2C_TRAP_IF(0x110 == 0);
    __glMgrim_MatrixMode(GL_TEXTURE);
    var_s1_4 = temp_s0->unk7420;
    __glMgrim_LoadMatrixf(var_s1_4);
    var_s4_5 = 0;
    if (temp_s2_3 > 0) {
        do {
            var_s1_4 += 0x110;
            __glMgrim_PushMatrix();
            __glMgrim_LoadMatrixf(var_s1_4);
            var_s4_5 += 1;
        } while (temp_s2_3 != var_s4_5);
    }
    __glMgrim_MatrixMode(temp_s0->unk670);
}

void __glMgrPassViewport(__GLcontext *gc, s32 arg1, ...) {
    unksp10 = (s64) __glCurrentContext;
    __glMgrim_Viewport(__glCurrentContext->unk638, __glCurrentContext->unk63C, __glCurrentContext->unk640, __glCurrentContext->unk644);
    if (arg1 != 0) {
        __glMgrim_DepthRange(unksp10->unk648, second half of f64);
    }
}

void __glMgrPassMachineState(__GLcontext *gc, ...) {
    __glMgrPassAccum(gc);
    __glMgrPassColorBuffer(gc, gc, 0);
    __glMgrPassCurrentBuffer(gc, gc);
    __glMgrPassDepthBuffer(gc, gc, 0);
    __glMgrPassEnables(gc, gc);
    __glMgrPassEval(gc, gc);
    __glMgrPassFog(gc, gc);
    __glMgrPassLighting(gc, gc);
    __glMgrPassLine(gc, gc);
    __glMgrPassPixel(gc, gc);
    __glMgrPassPoint(gc, gc);
    __glMgrPassPolygon(gc, gc);
    __glMgrPassScissor(gc, gc);
    __glMgrPassStencil(gc, gc, 0);
    __glMgrPassTransform(gc, gc);
    __glMgrPassViewport(gc, gc, 0);
}

void __glMgrExitSoftPath(__GLcontext *gc, ...) {
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f2;
    f32 temp_f3;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f7;
    f32 var_f13;
    f32 var_f4;
    f64 var_f12;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_at;
    s32 temp_v0;
    s32 temp_v1;

    if (gc->unk9260 != 1) {
        __glMgrEnterSoftPath(gc, gc, gc + 0x10000);
        var_f12 = 1.0;
        var_f13 = second half of f64;
        if (gc->modes.rgbMode != 0) {
            temp_v1 = (1 << gc->modes.greenBits) - 1;
            temp_f6 = (f32) temp_v1;
            var_f4 = 255.0f;
            temp_a1 = (1 << gc->modes.blueBits) - 1;
            gc->unk7868 = temp_a1;
            gc->unk7864 = temp_v1;
            temp_f5 = (f32) temp_a1;
            temp_v0 = (1 << gc->modes.redBits) - 1;
            gc->unk7860 = temp_v0;
            temp_a0 = gc->modes.alphaBits;
            temp_f7 = (f32) temp_v0;
            temp_at = (1 << temp_a0) - 1;
            gc->unk785C = temp_f5;
            gc->unk7858 = temp_f6;
            gc->unk7854 = temp_f7;
            if (temp_a0 != 0) {
                var_f4 = (f32) temp_at;
                gc->unk7880 = temp_at;
            } else {
                gc->unk7880 = 0xFF;
            }
            gc->unk787C = var_f4;
            var_f13 = second half of f64;
            temp_f3 = 32767.0f / var_f4;
            temp_f1 = 32767.0f / temp_f5;
            temp_f2 = 32767.0f / temp_f6;
            temp_f0 = 32767.0f / temp_f7;
            gc->unk7888 = second half of f64;
            gc->unk788C = (f32) (second half of f64);
            gc->unk7B08 = temp_f3;
            gc->unk7B00 = temp_f2;
            var_f12 = (bitwise f64) (f32) ((second half of f64) / (f64) temp_f7);
            gc->unk7B04 = temp_f1;
            gc->unk7AFC = temp_f0;
            gc->unk7890 = (f32) ((second half of f64) / (f64) var_f4);
            gc->unk7884 = (bitwise f32) var_f12;
            gc->unk7B18 = 1.0f / temp_f3;
            gc->unk7B14 = 1.0f / temp_f1;
            gc->unk7B10 = 1.0f / temp_f2;
            gc->unk7B0C = 1.0f / temp_f0;
        } else {
            gc->unk7890 = 1.0f;
            gc->unk788C = 1.0f;
            gc->unk7888 = 1.0f;
            gc->unk7884 = 1.0f;
            gc->unk787C = 1.0f;
            gc->unk785C = 1.0f;
            gc->unk7858 = 1.0f;
            gc->unk7854 = 1.0f;
            gc->unk7880 = 1;
            gc->unk7868 = 1;
            gc->unk7864 = 1;
            gc->unk7860 = 1;
        }
        __glMgrPassViewport(gc, gc, var_f12, var_f13);
        sub_0db00000(gc);
        return;
    }
    gc->unk9260 = 0U;
}

void __glMgrGetTexture(__GLcontext *gc, ...) {
    __GLcontext *temp_s5;
    s32 *temp_s7;
    s32 *temp_s8;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a2_6;

    temp_s5 = __glCurrentContext;
    temp_a2 = temp_s5->unk6A0;
    if (__glMgrim_IsEnabled(GL_TEXTURE_1D) != 0) {
        temp_s5->unk6A0 = temp_a2 | 0x10000;
    } else {
        temp_s5->unk6A0 = temp_a2 & ~0x10000;
    }
    temp_a2_2 = temp_s5->unk6A0;
    if (__glMgrim_IsEnabled(GL_TEXTURE_2D) != 0) {
        temp_s5->unk6A0 = temp_a2_2 | 0x20000;
    } else {
        temp_s5->unk6A0 = temp_a2_2 & ~0x20000;
    }
    temp_a2_3 = temp_s5->unk6A0;
    if (__glMgrim_IsEnabled(GL_TEXTURE_GEN_S) != 0) {
        temp_s5->unk6A0 = temp_a2_3 | 0x40000;
    } else {
        temp_s5->unk6A0 = temp_a2_3 & ~0x40000;
    }
    temp_a2_4 = temp_s5->unk6A0;
    if (__glMgrim_IsEnabled(GL_TEXTURE_GEN_T) != 0) {
        temp_s5->unk6A0 = temp_a2_4 | 0x80000;
    } else {
        temp_s5->unk6A0 = temp_a2_4 & ~0x80000;
    }
    temp_a2_5 = temp_s5->unk6A0;
    if (__glMgrim_IsEnabled(GL_TEXTURE_GEN_R) != 0) {
        temp_s5->unk6A0 = temp_a2_5 | 0x100000;
    } else {
        temp_s5->unk6A0 = temp_a2_5 & ~0x100000;
    }
    temp_a2_6 = temp_s5->unk6A0;
    if (__glMgrim_IsEnabled(GL_TEXTURE_GEN_Q) != 0) {
        temp_s5->unk6A0 = temp_a2_6 | 0x200000;
    } else {
        temp_s5->unk6A0 = temp_a2_6 & ~0x200000;
    }
    temp_s7 = temp_s5->unk944;
    __glMgrim_GetTexParameteriv(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, temp_s7);
    __glMgrim_GetTexParameteriv(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, temp_s7 + 4);
    __glMgrim_GetTexParameteriv(GL_TEXTURE_2D, GL_TEXTURE_WRAP_R_EXT, temp_s7 + 8);
    __glMgrim_GetTexParameteriv(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, temp_s7 + 0xC);
    __glMgrim_GetTexParameteriv(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, temp_s7 + 0x10);
    __glMgrim_GetTexParameterfv(GL_TEXTURE_2D, GL_TEXTURE_BORDER_COLOR, (f32 *) (temp_s7 + 0x98));
    __glMgrim_GetTexParameterfv(GL_TEXTURE_2D, GL_TEXTURE_PRIORITY, (f32 *) (temp_s7 + 0xDC));
    temp_s8 = temp_s5->unk948;
    __glMgrim_GetTexEnviv(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, temp_s8);
    __glMgrim_GetTexEnvfv(GL_TEXTURE_ENV, GL_TEXTURE_ENV_COLOR, (f32 *) (temp_s8 + 4));
}

void __glMgrPassTexture(__GLcontext *gc, ...) {
    s64 sp0;
    __GLcontext *temp_s3;
    s32 *temp_a2;
    s32 *temp_s5;

    temp_s3 = __glCurrentContext;
    if (temp_s3->unk6A0 & 0x10000) {
        __glMgrim_Enable(GL_TEXTURE_1D);
    } else {
        __glMgrim_Disable(GL_TEXTURE_1D);
    }
    if (temp_s3->unk6A0 & 0x20000) {
        __glMgrim_Enable(GL_TEXTURE_2D);
    } else {
        __glMgrim_Disable(GL_TEXTURE_2D);
    }
    if (temp_s3->unk6A0 & 0x40000) {
        __glMgrim_Enable(GL_TEXTURE_GEN_S);
    } else {
        __glMgrim_Disable(GL_TEXTURE_GEN_S);
    }
    if (temp_s3->unk6A0 & 0x80000) {
        __glMgrim_Enable(GL_TEXTURE_GEN_T);
    } else {
        __glMgrim_Disable(GL_TEXTURE_GEN_T);
    }
    if (temp_s3->unk6A0 & 0x100000) {
        __glMgrim_Enable(GL_TEXTURE_GEN_R);
    } else {
        __glMgrim_Disable(GL_TEXTURE_GEN_R);
    }
    if (temp_s3->unk6A0 & 0x200000) {
        __glMgrim_Enable(GL_TEXTURE_GEN_Q);
    } else {
        __glMgrim_Disable(GL_TEXTURE_GEN_Q);
    }
    __glMgrim_TexGeniv(GL_S, GL_TEXTURE_GEN_MODE, &temp_s3->unk754);
    __glMgrim_TexGenfv(GL_S, GL_OBJECT_PLANE, &temp_s3->unk768);
    __glMgrim_TexGenfv(GL_S, GL_EYE_PLANE, &temp_s3->unk758);
    __glMgrim_TexGeniv(GL_T, GL_TEXTURE_GEN_MODE, &temp_s3->unk7D0);
    __glMgrim_TexGenfv(GL_T, GL_OBJECT_PLANE, &temp_s3->unk7E4);
    __glMgrim_TexGenfv(GL_T, GL_EYE_PLANE, &temp_s3->unk7D4);
    __glMgrim_TexGeniv(GL_R, GL_TEXTURE_GEN_MODE, &temp_s3->unk84C);
    __glMgrim_TexGenfv(GL_R, GL_OBJECT_PLANE, &temp_s3->unk860);
    __glMgrim_TexGenfv(GL_R, GL_EYE_PLANE, &temp_s3->unk850);
    __glMgrim_TexGeniv(GL_Q, GL_TEXTURE_GEN_MODE, &temp_s3->unk8C8);
    __glMgrim_TexGenfv(GL_Q, GL_OBJECT_PLANE, &temp_s3->unk8DC);
    __glMgrim_TexGenfv(GL_Q, GL_EYE_PLANE, &temp_s3->unk8CC);
    temp_a2 = temp_s3->unk948;
    temp_s5 = temp_s3->unk944;
    sp0 = (s64) temp_a2;
    __glMgrim_TexParameteriv(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, temp_s5);
    __glMgrim_TexParameteriv(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, temp_s5 + 4);
    __glMgrim_TexParameteriv(GL_TEXTURE_2D, GL_TEXTURE_WRAP_R_EXT, temp_s5 + 8);
    __glMgrim_TexParameteriv(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, temp_s5 + 0xC);
    __glMgrim_TexParameteriv(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, temp_s5 + 0x10);
    __glMgrim_TexParameterfv(GL_TEXTURE_2D, GL_TEXTURE_BORDER_COLOR, (f32 *) (temp_s5 + 0x98));
    __glMgrim_TexParameterfv(GL_TEXTURE_2D, GL_TEXTURE_PRIORITY, (f32 *) (temp_s5 + 0xDC));
    __glMgrim_TexEnviv(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, temp_a2);
    __glMgrim_TexEnvfv(GL_TEXTURE_ENV, GL_TEXTURE_ENV_COLOR, (f32 *) (temp_a2 + 4));
}
