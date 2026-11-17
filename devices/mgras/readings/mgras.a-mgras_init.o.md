# Readings: `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)`

One entry per routine, filed here from the reading batches by binary.

- `MgrasInitBoardGfx` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x0
  **Inferred.** Appears to build the per-board graphics state at board init. It reads configuration bytes at +0x2b, +0x2c, +0x2d and +0x36 of its second argument (0x1c, 0x8, 0x38, 0x50). It calls add_to_inventory at 0x48 and, only when the byte at +0x36 is nonzero (the beq at 0x54), again at 0x6c. It allocates 0x910 bytes with kern_malloc at 0x78; when that returns zero the beq at 0x8c branches to 0x14c, where cmn_err is called (0x154). Otherwise it zeroes the block with bzero (0x98), calls MgrasEramManagerTimeout (0xe0) and MgrasRetraceInit (0xe8), sets up a spinlock at +408 and mutexes at +2280 and +2304 of the block (0xf4, 0x108, 0x11c), and calls GfxRegisterBoard with mgras_gfx_fncs (0x130), returning the kern_malloc result (0x144). The beq at 0xb8, taken when MgrasMaxLockableMemPages is zero, goes to 0x164, and code placed after the return calls kabi_num_lockable_pages (0x1a0, 0x1c0, 0x20c); the facts do not show where that code rejoins, so it is not necessarily the last step.
  Reviewed: 2026-11-12

- `MgrasFindBoardAddr` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x258
  **Inferred.** Role (from name): finds one board's address, as a thin wrapper. It calls MgrasProbe at 0x280 with its first argument as a1 and its third and fourth arguments as a2 and a3; a0 is a value loaded at 0x274. The beq at 0x288 tests the probe result against zero. The return at 0x298 is one of a value the facts do not name and 0x0.
  Reviewed: 2026-11-12

- `mgras_earlyinit` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x2a8
  **Inferred.** Role (from name): runs the early board bring-up before the normal init. It loops over board slots while the counter is below 2 (the compare at 0x310) and calls MgrasFindBoardAddr at 0x318 and mgrasInitBoard at 0x2f4 and 0x340. It tests a flag in .sdata (0x32c) and registers the mgras_htp_fncs table with htp_register_board at 0x3a0. The return value is not resolved by the facts.
  Reviewed: 2026-11-12

- `mgras_init` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x3b0
  **Inferred.** Role (from name): the top-level board init that runs after early init. It runs a loop over up to two boards: the beq at 0x3d8 leaves the loop for 0x418 when the counter is 2 or more. Inside the loop it calls MgrasInitBoardGfx at 0x404, unless the beq at 0x3f4 skips it because a loaded word is zero. After the loop it calls MgrasInitGioIntrVectors at 0x418 and returns its result (0x430).
  Reviewed: 2026-11-12

- `MgrasSetGioVectors` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x438
  **Inferred.** Appears to install three GIO interrupt vectors. It calls setgiovector three times, passing vector 0 with MgrasFIFOInterrupt as a2 (0x470), vector 1 with MgrasGeneralInterrupt (0x484) and vector 2 with MgrasRetraceInterrupt (0x498). Each call passes its own first argument along as a3. It returns the result of the last setgiovector call (0x4ac).
  Reviewed: 2026-11-12

- `MgrasInitGioIntrVectors` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x4b4
  **Inferred.** Appears to wrap MgrasSetGioVectors in an interrupt-level change. It calls splhi at 0x4c4, runs MgrasSetGioVectors at 0x508 inside a loop that stops at two iterations (the compare at 0x4e4), and restores the level with splx at 0x518. It returns the splx result (0x530).
  Reviewed: 2026-11-12

- `mgrasConfigureXMAP` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x538
  **Inferred.** Role (from name): programs the XMAP configuration for one board. It reads a word at its argument +0x70100 (0x540) and again at 0x55c; the compares against 3 at 0x554 and 0x568 are on that word, and the loop at 0x55c repeats while it is 3 or more. It writes byte fields at +0x61c88 and +0x61d08 (0x574, 0x57c, 0x580) and a word at +0x61d00 (0x5a4), and loads a byte at +0x2c (0x584) whose use the facts do not show. The meaning of the register offsets and of the return value is not established by these facts.
  Reviewed: 2026-11-12

- `mgrasConfigureXMAP` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x538
  **Inferred.** Writes bytes and words into the block at a0 (sb at 0x574 and 0x580 to +0x61c88, sb at 0x57c to +0x61d08, sw at 0x5a4 to +0x61d00) and loads a byte at +0x2c (lbu at 0x584), presumably of the structure in a1; which store uses it is not shown. Two branches at 0x554 and 0x568 compare a value derived from the status word at a0+0x70100 with 3 and re-read it at 0x55c while it is at or above 3. Role (from name): XMAP configuration; the register meanings are unclear from these stores.
  Reviewed: 2026-11-12

- `mgrasInitBoard` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x5a8
  **Inferred.** Appears to run the per-board init sequence. It calls MgrasReset (0x5d4, 0x608), MgrasInitDCBctrl (0x5e8), mgrasConfigureXMAP (0x5f4, 0x614), MgrasRecordTiming (0x690, 0x6c4), MgrasCalcScreenSize (0x6a4, 0x6d8), MgrasInitHQ with a1 = 0 (0x6e4), MgrasInitRasterBackend (0x6f0), MgrasGatherInfo (0x724) and flushbus with a0 = -0x81 (0x760). Branches on loaded words and bytes choose among these; the facts place MgrasGatherInfo after the return at 0x718, so it runs on a different path from that return. The facts show mgras_default_timing in a5 at both MgrasRecordTiming calls while a1 is unresolved, so how the table is passed is not settled. It walks the monitor defaults table while the count mgras_num_monitor_defaults is positive (the blez at 0x62c). It returns the MgrasInitRasterBackend result (0x718).
  Reviewed: 2026-11-12

### `MgrasProbe` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x770

Grade: inferred.

`MgrasProbe` checks whether the board's registers answer at a base address. It calls `badaddr` at `a0`, at `a0+0x50000` and at `a0+0x50114`, and compares a word read from `a0` against 0x10 and 1. It returns 0 or 1, and stores words at 0x890 and 0x8a4 whose addresses the facts do not show. The meaning of the 0x10 and 1 checks is not established.

Reviewed: 2026-11-12

- `MgrasProbe` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x770
  **Inferred.** Appears to test whether a board responds at this address. It calls badaddr at 0x780 with the base, at 0x820 with base+0x50000 and at 0x848 with base+0x50114, and it reads the word at its first argument (0x7a4) to compare against 0x10 and 0x1 (0x7b8, 0x804). It returns 0 or 1 at 0x798. The store to a fixed address at 0x890 is not explained by the facts.
  Reviewed: 2026-11-12

- `MgrasProbe` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x770
  **Inferred.** Calls badaddr at 0x780, 0x820 and 0x848 on a0, a0+0x50000 and a0+0x50114 with a 4-byte size (a1 = 4). A zero result at 0x78c sends it on to a read at a0+0 (lw at 0x7a4); the later calls follow the same zero-result pattern at 0x828 and 0x850. A store at 0x890 uses offset 0 from a base the facts do not resolve. It returns 0 or 1, and which value means present is inferred only from the badaddr branches.
  Reviewed: 2026-11-12

- `MgrasGatherInfo` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x8a8
  **Inferred.** Appears to collect static board information into the record at its second argument. It stores byte fields at offsets from 0x24 to 0x49 (a word at +0x24 at 0x93c; not every store base is resolved) and reads words at +0x70100 and +0x62408, among others; the facts do not say what those words are. It calls mgras_baseindex (0x8c0), bzero of 0xcc bytes on the second argument (0x8d0), MgrasInitDCBctrl (0x8d8), strncpy at 0x92c with the second argument as the destination, a .rodata string as the source and a count of 0x10, kopt_find (0x9c8, 0xa68), mgrasConfigureXMAP (0xb58), mgras_mco_probe (0xbbc, 0xe04), MgrasDownloadGE11Ucode with MgrasBoards as a1 and 0x300 as a2 (0xc3c), cmn_err (0xd14, 0xdb0) and mgras_fp_probe (0xdc8). It returns -1 or 0 at 0xae8.
  Reviewed: 2026-11-12

- `MgrasGatherDynamicInfo` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0xe1c
  **Inferred.** Appears to refresh runtime state in the board record. It reads an 8-byte pointer at its second argument +0xc8 and a flag byte at +0x49 of that pointer's target, writing a byte at +0x29 (0xe24 to 0xe48, 0xeb0). It reads two words at +0x70100 (0xe6c, 0xe88) and a byte at +0x61308 (0xea0). It takes mutex_lock at 0xed4 on the board mutex at +2280 with index 0x19, and releases it with mutex_unlock at 0xeb8. The return value is one of mutex_unlock's result and an unresolved value.
  Reviewed: 2026-11-12

### `MgrasReset` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0xee8

Grade: inferred.

Role (from name): `MgrasReset` resets the board's register block. It finds the base index with `mgras_baseindex`, calls `flushbus` on either side of a `us_delay(10)`, and writes two words at `a0+0x50000` and `a0+0x50114`. It also reads and writes one byte around the delay (loads at 0xf30 and 0xf5c, stores at 0xf48 and 0xf64); the facts do not show that byte's address. The byte's role and the values written are not decoded, and the routine returns `a0+0x50000`.

Reviewed: 2026-11-12

- `MgrasReset` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0xee8
  **Inferred.** Role (from name): resets the board's register state. It calls mgras_baseindex (0xef4), flushbus at 0xf44 and 0xf68, and us_delay with a0 = 10 at 0xf4c between them. It stores a byte at +0x0 (0xf48, 0xf64) of a base the facts do not resolve, writes words at +0x50000 and +0x50114 (0xf8c, 0xf94) and a word at 0xf98. It returns its first argument plus 0x50000 (0xfa4).
  Reviewed: 2026-11-12

- `MgrasInitHQ` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0xfac
  **Inferred.** Role (from name): writes the initial values of the HQ register block at offset 0x50000 of its argument. It stores 32-bit words at 0x50000, 0x5000c, 0x50010, 0x50014, 0x5001c, 0x50020, 0x50024, 0x50028, 0x5002c, 0x50030, 0x50034, 0x50108, 0x5010c, 0x50110 and 0x50114 (0xfc0 to 0x1094). It stores an 8-byte value at +0x70080 (0x1048). It then calls MgrasInitDMA with a fixed block of arguments (0x1068) and MgrasInitDCBctrl (0x1070). The register names behind these offsets are not settled by the facts.
  Reviewed: 2026-11-12

- `MgrasInitDCBctrl` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x1098
  **Inferred.** Role (from name): writes the DCB control registers. It stores 32-bit values at offsets 0x6800c through 0x68024 and at 0x5010c, 0x50108 and 0x50110 of its argument (0x10a8 to 0x10f4). It returns its argument plus 0x50000 (0x10f0). The register names and the values stored are not shown by the facts.
  Reviewed: 2026-11-12

- `MgrasInitDCBctrl` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x1098
  **Inferred.** Straight-line code with no branches or calls: it writes ten 32-bit words through a0, seven at offsets 0x6800c to 0x68024 and three at 0x50108 to 0x50110. It returns a0+0x50000. The register names and the values written are unclear, so the controller role comes from the store pattern and the name only.
  Reviewed: 2026-11-12

- `MgrasInitRasterBackend` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x10f8
  **Inferred.** Appears to bring up the raster backend in order. It calls mgras_baseindex (0x110c), then MgrasInitDac (0x1128). The blez at 0x1120 tests a count at its second argument +0x2c and branches to 0x115c when the count is zero or less; the facts do not show which calls that path skips. MgrasSyncREPPs is called at 0x1134 and MgrasSyncPPRDRAMs at 0x116c, the latter reached when MgrasSyncREPPs returns zero (the beq at 0x1140). When MgrasSyncPPRDRAMs returns zero (the beq at 0x1178) it goes on to MgrasSetTiming (0x11b0), MgrasInitVC3 (0x11b8), MgrasInitXMAP (0x11c4), MgrasInitCCR with a2 = 0x64 (0x11d4), MgrasInitRSS (0x11e0), MgrasInitCMAP (0x11ec) and MgrasBlankScreen with a1 = 0 (0x11f8). The return at 0x1154 is one of the MgrasSyncREPPs result, -1, the MgrasSyncPPRDRAMs result and 0.
  Reviewed: 2026-11-12

- `MgrasSetTiming` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x1210
  **Inferred.** Role (from name): programs the video timing for one mode. It reads words at +0x70100 (0x1220, 0x125c, 0x1294, and at other sites) and writes +0x61c88, +0x61f00, +0x62408 and +0x62038. It stores at +0x70080 and +0x70084 and only reads +0x70004 (0x1540, 0x1548, 0x1568). It stores halfwords at +0x20 and +0x22 (0x149c, 0x14a4) of a base the facts do not resolve. It calls MgrasSetDacTiming (0x12dc), MgrasSetVC3Timing (0x1354), MgrasEnableVideoTiming with a1 = 1 (0x1364), MgrasCalcScreenSize (0x1374), MgrasSetXMAPTiming (0x13a0), MgrasRecordTiming (0x13ac) and MgrasSetRSSTiming (0x1420). It calls mgras_fp_probe at 0x14b8 and then reads a type byte at +0x49 (0x14c0); mgras_fpi2cPanelOn at 0x14f4 is reached when the byte equals 0x82 or 0x83 (0x14e0, 0x14ec). It returns 0 or the MgrasRecordTiming result (0x13d4).
  Reviewed: 2026-11-12

- `MgrasSetDacTiming` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x1598
  **Inferred.** Role (from name): writes DAC timing fields and then waits for the DAC to settle. It reads a word at +0x70100 (0x15a0, 0x15b8) and polls its low five bits at +0x70100 (the branches at 0x15b0 and 0x15c0). It copies byte fields from the table at its second argument +0x38 into +0x61811 and +0x61910 (0x15dc to 0x1610). It calls us_delay with 1000 (0x160c) and with 100000 (0x1618). It returns the us_delay result.
  Reviewed: 2026-11-12

- `MgrasSetVC3Timing` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x162c
  **Inferred.** Role (from name): programs the VC3 timing and loads its SRAM. It writes words at +0x62038 at six sites (0x16b4, 0x16bc, 0x1708, 0x176c, 0x1778, 0x1780) and reads fields of its second argument at +0x10 (0x1684), +0x30 (0x16c4), +0x28 (0x16d0), +0x20 (0x1710), +0x18 (0x171c), +0x4 (0x1754) and +0x0 (0x1784). It calls mgras_baseindex (0x1650), MgrasLoadVC3SRAM with a1 from +0x28, a2 = 0 and a3 from +0x30 (0x16cc), and with a1 from +0x18, a2 = 0x380 and a3 from +0x20 (0x1718). It returns one of 0x1e, 0x9e, or either of those combined with 0x20 and then 0x40 (0x17e4). The meaning of each returned bit is not settled.
  Reviewed: 2026-11-12

- `MgrasSetXMAPTiming` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x17ec
  **Inferred.** Role (from name): programs the XMAP timing in steps. It has 14 load sites that read +0x70100. Several are poll loops that repeat while the word is at or above a limit of 3, 4 or 5 (the compares at 0x180c, 0x1844, 0x18a0, 0x18ec, 0x1938, 0x1984 and 0x19bc, with loop-back branches such as 0x1820). It writes bytes at +0x61c08, +0x61c88 and +0x61d08 and words at +0x61f00 and +0x61d00 (0x182c to 0x19ec). It reads fields at +0x0, +0x44, +0x48, +0x4c, +0x50, +0x54, +0x58, +0x5c and +0x60 (0x1868 to 0x19e4) and a byte at +0x2c (0x195c); only the +0x0 load is shown to be on its third argument. It tests bit 0x40000000 of the word loaded from +0x0 (0x188c). It returns an unresolved value.
  Reviewed: 2026-11-12

- `MgrasSetRSSTiming` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x19f0
  **Inferred.** Role (from name): programs the RSS timing and enables the video timing. It reads a word at +0x70100 (0x1a00, 0x1a20) and polls the low five bits (0x1a18, 0x1a28). It loads fields at +0x4 and +0x6c (0x1a4c, 0x1b08), whose base the facts do not resolve, and writes 8-byte values at +0x70080 (0x1af8, 0x1b1c). It calls MgrasEnableVideoTiming at 0x1a3c with a1 zero, and again at 0x1b18 with a1 set to 1, a2 set to 0x300 and a3 set to a fixed 64-bit constant. It returns the MgrasEnableVideoTiming result (0x1b30).
  Reviewed: 2026-11-12

- `MgrasRecordTiming` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x1b38
  **Inferred.** Role (from name): saves a timing record for one board into a per-board table. It calls mgras_baseindex (0x1b4c, 0x1ca8) and reads and writes the entry at MgrasInfos plus index times 8, with the record at +0x198 (0x1b74, 0x1cc4). It allocates a 0x88-byte record with kern_malloc (0x1ba8), copies the timing data into it (0x1bdc, 0x1c94), and allocates three calloc'd arrays (0x1be8, 0x1c18, 0x1c48) that it fills with bcopy (0x1c0c, 0x1c3c, 0x1c68). When that slot was already set (the bne at 0x1b9c) it frees the previous record's three arrays and the record itself with kern_free (0x1cdc to 0x1cf4); the beq at 0x1b94 jumps to 0x1cc8 when a1 equals the slot's record. The kern_free calls at 0x1d0c to 0x1d64 free the new record and its arrays on the paths after a kern_calloc returns zero (the beq at 0x1bf8, 0x1c28 and 0x1c58). The return is 0 or 0xc, and the facts do not name the 0xc error.
  Reviewed: 2026-11-12

- `MgrasInitDac` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x1d7c
  **Inferred.** Role (from name): programs the DAC registers of the board. It reads a word at +0x70100 at 14 sites and polls its low five bits (0x1d90, 0x1ec8, 0x1f4c). It writes bytes at +0x61811, +0x61910 and +0x61988 (0x1dd4 to 0x1e60) and halfwords at +0x61810 and +0x61890 (0x1e20 to 0x1f28). Several loops re-read +0x70100 while the word is at or above a limit of 3, 4 or 5 (the compares at 0x1db4, 0x1df0, 0x1e3c, 0x1e74), and a loop at 0x1f24 repeats while a value is below 0x100. The chip these writes address is not settled by these facts.
  Reviewed: 2026-11-12

- `MgrasInitVC3` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x1f74
  **Inferred.** Calls mgras_baseindex at 0x1f8c and reads a doubleword at +0x198 of the MgrasInfos entry it indexes (ld at 0x1fd0). Several spin loops re-read the status word at a0+0x70100 while a derived value is at or above 5 or 6 (for example 0x1fcc, 0x2070, 0x20f4). It then calls MgrasLoadVC3SRAM twice, at 0x2124 and 0x2138, both with a1 = sp-64 and a3 = 2, with a2 = 0xd7c and 0x46be, and calls MgrasClearCursor at 0x2140. Role (from name): VC3 initialisation; what a2 means and the reasons for the field tests are inferred from call order and table offsets.
  Reviewed: 2026-11-12

- `MgrasInitXMAP` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x219c
  **Inferred.** Stores bytes and words at a0+0x61c08 to a0+0x61f80 (sb at +0x61c08, +0x61c88 and +0x61d08; sw at +0x61d00, +0x61d80, +0x61e00, +0x61e80, +0x61f00 and +0x61f80) and loads a byte at +0x2c (lbu at 0x2260 and 0x23b0), presumably of the structure in a1; which store uses it is not shown. Branches at 0x22c4 (compare with 0x20), 0x22d4 (with 5), 0x2338 (with 8) and 0x234c (with 5) look like loop controls, but the facts do not name the counters. The status word at a0+0x70100 is polled with mask 0x1f between stores. Role (from name): XMAP initialisation; the exact channel-to-register mapping is unclear from the rendered code.
  Reviewed: 2026-11-12

- `MgrasInitCMAP` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x23cc
  **Inferred.** Spins re-reading the status word at a0+0x70100 while a derived value is at or above 6 (0x23e0, 0x23f4), calls MgrasSetColors at 0x2424 with a1 = 1, a2 = 0x2000 and a3 = 0, and has a byte store to a0+0x60d88 (sb at 0x2428, immediately after the call at 0x2424). It returns MgrasSetColors's result. Role (from name and the call): colormap initialisation; the flag's meaning is unclear.
  Reviewed: 2026-11-12

- `MgrasSetColors` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x2438
  **Inferred.** Calls mgras_baseindex at 0x2464, then loads a doubleword at +0x198 (ld at 0x2484, base not shown) and a word at +0x4c (lw at 0x2494). It stores halfwords and words at a0+0x60c30 and a0+0x60d18 (sh, sw), and bytes and words at a0+0x61c88 and a0+0x61f00 (sb, sw). Branches at 0x24b0 and 0x257c suggest a loop over a2, but the facts give no constant bound, and it polls the status word at a0+0x70100. It returns 0. Role (from name): colour setting; which colour-table layout these writes fill is unclear.
  Reviewed: 2026-11-12

- `MgrasSyncREPP` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x2744
  **Inferred.** Polls the status word at a0+0x70004 with mask 0x7f in loops (0x2858 and 0x286c) and spins on values derived from a0+0x70100 against 3, 5 and 6 in several places. It calls us_delay once, at 0x2924, with a0 = 0x1388 (5000); the beq at 0x28e8 skips that part when s2 equals s3. It stores bytes and words at a0+0x61c08 to a0+0x61f80, words at a0+0x6801c and doublewords at a0+0x70080, and returns 0. Role (from name): REPP synchronisation; the meaning of the wait argument is inferred.
  Reviewed: 2026-11-12

- `MgrasSyncREPPs` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x2b24
  **Inferred.** Calls MgrasSyncREPP at 0x2b68 in a loop, passing a0 and the byte at a1+0x2c (lbu at 0x2b64) as its a1 argument; the same byte (lbu at 0x2b30 and 0x2b90) is the limit of the comparison at 0x2b9c, and a second loop test at 0x2b88 compares against 2. The beq at 0x2b70 continues the loop when a call returns zero, and a nonzero result does not take that branch. It returns that call's result, or 0 otherwise. The unit numbering and the reason for that early exit are inferred from the branches only.
  Reviewed: 2026-11-12

- `MgrasSyncPPRDRAMs` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x2bc8
  **Inferred.** Has 63 sd store sites to a0+0x70080 and polls the words at a0+0x70004 and a0+0x70000 with masks 0x7f and 0x2. It calls us_delay six times: at 0x2cf8 (0xc8), 0x2d04 (3), 0x2d50 (0x120), 0x2d90 (0x42), 0x2d98 (3) and 0x2e6c (0x3e8). It also loads a byte at a1+0x2c, stores bytes and words at a0+0x61c08 to +0x61f00, and returns -2, -1 or 0. Role (from name): pixel-processor DRAM synchronisation; whether the stores are a training pattern or a plain clear is unclear.
  Reviewed: 2026-11-12

- `MgrasInitRSS` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x31d8
  **Inferred.** Zeroes a 0x6c0-byte stack buffer with bzero at 0x31f4, then has 109 sd store sites to a0+0x70080, with polls of a0+0x70004 under mask 0x7f in between. It loads 16-bit fields at +0x20 and +0x22 (lhu at 0x3624 to 0x3680) and a byte at +0x2e (lbu at 0x35a8); the base register is not shown, presumably the structure in a1. Role (from name): RSS initialisation; the table being written is unclear.
  Reviewed: 2026-11-12

### `MgrasVerifyVC3SRAM` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x3c7c

Grade: inferred.

Role (from name): `MgrasVerifyVC3SRAM` reads back the VC3 SRAM after a load. It reads the word at `a0+0x70100` and compares a value against 6 before and between accesses, writes a word at `a0+0x62038`, and reads halfwords at `a0+0x62190`. It calls `us_delay` with 1000 as its first argument on one path and calls `cmn_err` with level 4 twice (calls 2 and 3). The second `cmn_err` call also passes the halfword read at `a0+401808` (the same offset as `a0+0x62190`) in a4 to a6. The "VC3 SRAM" label comes from the routine's name, and the offsets come from the binary rather than from a checked register map.

Reviewed: 2026-11-12

### `MgrasLoadVC3SRAM` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x3eb4

Grade: inferred.

Role (from name): `MgrasLoadVC3SRAM` writes a buffer into the VC3 SRAM through the same register pair as the verify routine: a word store at `a0+0x62038` and a halfword store at `a0+0x62190`, the halfword store guarded by a nonzero `a3`. It polls `a0+0x70100` against 6 before the writes. It then calls `MgrasVerifyVC3SRAM`, passing `a0+0x70000` and `a0+0x60000` in a6 and a7. `MgrasClearCursor` calls it with a zeroed 256-byte buffer, so that caller appears to load zeros, but the source data for other callers is not established.

Reviewed: 2026-11-12

- `MgrasLoadVC3SRAM` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x3eb4
  **Inferred.** Polls the status word at a0+0x70100 (spinning while a derived value is at or above 6, and waiting for the low five bits to clear) and stores a word at a0+0x62038. When a3 is nonzero (the beq at 0x3f28 skips it otherwise) it stores a halfword at a0+0x62190 (sh at 0x3f48) inside a loop (bne at 0x3f58). It then calls MgrasVerifyVC3SRAM at 0x3f90 with a0 to a3 unchanged from entry, a6 = a0+0x70000 and a7 = a0+0x60000, and returns the verifier's result, so whether the load succeeded is inferred only from that pass-through.
  Reviewed: 2026-11-12

### `MgrasClearCursor` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x3fa4

Grade: inferred.

Role (from name): `MgrasClearCursor` clears the cursor image. It zeroes a 256-byte stack buffer with `bzero`, passes it to `MgrasLoadVC3SRAM` with a2 = 0x400 and a3 = 0x80, and then writes three words at `a0+0x62038`. It returns the constant 0x2028000 on its exit path. The meaning of the two arguments and of the three control writes is not decoded, so the constant's meaning is open.

Reviewed: 2026-11-12

- `MgrasClearCursor` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x3fa4
  **Inferred.** Zeroes a 0x100-byte stack buffer with bzero at 0x3fb8, then calls MgrasLoadVC3SRAM once at 0x3fcc with a1 = that buffer, a2 = 0x400 and a3 = 0x80; what a2 and a3 mean is not shown (a2 exceeds the buffer size). It spins on a value derived from a0+0x70100 against 4, and writes three words at a0+0x62038. It returns the constant 0x2028000 at 0x4030. The cursor role comes from the name, and the constant's meaning is unclear.
  Reviewed: 2026-11-12

### `MgrasEnableRetraceInterrupts` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x4038

Grade: inferred.

`MgrasEnableRetraceInterrupts` appears to turn on the retrace interrupt. It finds the base index with `mgras_baseindex`, reads `a0+0x70100` twice, and compares a value against 6 in a loop. It stores a word at `a0+0x62038` at 0x40c8, after the return at 0x40c4 in address order. The bit it sets is not identified, and the name is the only evidence that the interrupt is the retrace one.

Reviewed: 2026-11-12

- `MgrasEnableRetraceInterrupts` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x4038
  **Inferred.** Calls mgras_baseindex at 0x4044 and spins on the status word at a0+0x70100 while a derived value is at or above 6 (bne at 0x4070, beq at 0x4084). It then stores a word at a computed address (sw at 0x40b8, base not shown) and a word at a0+0x62038 (sw at 0x40c8). The return value is not resolved by the facts. Role (from name): enabling retrace interrupts; which bit is written is unclear.
  Reviewed: 2026-11-12

- `MgrasBlackoutTiming` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x40cc
  **Inferred.** Calls mgras_baseindex at 0x40e0, spins on the status word at a0+0x70100 while a derived value is at or above 6, and stores words at an address the facts do not resolve (sw at 0x4144 and 0x4188) and at a0+0x62038 (sw at 0x4174). The sw at 0x4144 is on the side where a1 is nonzero (beq at 0x4134 skips it when a1 is zero). It returns mgras_baseindex's result. Role (from name): blackout timing; the fields written are unclear.
  Reviewed: 2026-11-12

### `MgrasEnableVideoTiming` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x418c

Grade: inferred.

Role (from name): `MgrasEnableVideoTiming` programs video timing through the control word at `a0+0x62038`. It finds the base index with `mgras_baseindex`, reads `a0+0x70100` twice, and compares against 6. The routine has two stores to `a0+0x62038`, and a branch on the argument `a1` (zero or not, at 0x41e8) decides which one runs. On one path it returns the result of `mgras_baseindex`, and the timing values it writes are not decoded.

Reviewed: 2026-11-12

- `MgrasEnableVideoTiming` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x418c
  **Inferred.** Calls mgras_baseindex at 0x41a0, checks the status word at a0+0x70100 against 6 (bne at 0x41c0), and stores words at a0+0x62038 (sw at 0x4218 and 0x4228). The beq at 0x41e8 tests a1: the store at 0x4218 is on the a1-nonzero side, and the branch taken when a1 is zero goes to 0x4224, where the store at 0x4228 sits; the code between 0x421c and 0x4224 is not in the facts, so which path each store is on is not fully established. It returns mgras_baseindex's result (return at 0x421c). The timing role comes from the name, and the bits written are unclear.
  Reviewed: 2026-11-12

- `MgrasSetGenlock` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x4238
  **Inferred.** Calls mgras_baseindex at 0x4254, then branches on a1 (s7) and a2 (s8) being nonzero (at 0x4278 and 0x428c) to pick one of several write paths. It stores a word at a0+0x62038 (sw at 0x42f0) and reads the status word at a0+0x70100. The genlock role comes from the name, and what the arguments select is unclear.
  Reviewed: 2026-11-12

- `MgrasDownloadHQ3Ucode` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x432c
  **Inferred.** Runs a loop that loads and stores words (lw at 0x4364 and 0x438c, sw at 0x436c and 0x4398) and whose branches test a5 against a7 as signed values (blez at 0x4344, beq at 0x4370, bne at 0x439c); how a2 and a3 are used is not shown. A second loop at 0x43ac to 0x43ec loads words and compares a3 with another value. It makes no calls and returns 0 or an unknown value. Role (from name): microcode download; the destination registers are unclear.
  Reviewed: 2026-11-12

- `MgrasDownloadGE11Ucode` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x4404
  **Inferred.** Looks up a kernel option string through kopt_find at 0x442c and 0x46cc, and loads words at +0, +4 and +8 (lw at 0x4a64, 0x4a94, 0x4ac4, base not shown) that it stores with sw +0x0 through a pointer; the facts give a0+0x50044 or a0+0x5004c only in the us_delay arguments, so the destination is not established. It waits through us_delay at 0x45f8, 0x4868, 0x4880, 0x4898 and 0x48c0 (delay counts 0x19, 0xc350 three times and 0x14) and checks status words at a0+0x50008 (mask 0x40000) and a0+0x5022c to a0+0x50230. Role (from name): GE11 microcode download; what the option string selects is unclear.
  Reviewed: 2026-11-12

- `mgras_baseindex` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x4c10
  **Inferred.** Scans a table in a loop whose branch at 0x4c40 compares a counter held in a3 with 2 (signed), comparing each entry with a0 (beq at 0x4c30). It reads one doubleword per step (ld at 0x4c2c). It returns -1 or an unresolved value, presumably the index of the match. The table layout and the key are unclear from these facts, so the lookup role rests on the loop shape and the -1 return.
  Reviewed: 2026-11-12

- `mgras_fp_probe` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x4c58
  **Inferred.** Calls mgras_fpi2cProbe at 0x4c74; only when it returns nonzero (beq at 0x4c7c) does it call mgras_fpi2cSetup at 0x4c84, and only when that returns nonzero (beq at 0x4c8c) does it call mgras_fpi2cPanelID at 0x4c98 with a1 = sp-48. The return at 0x4ce0 can carry the Probe or Setup result. mgras_fpi2cPanelOff at 0x4d08 is branched to directly when PanelID returns zero (beq at 0x4ca0). It then calls find_inventory (0x4d28, 0x4d80), replace_in_inventory (0x4d4c, 0x4da4) and add_to_inventory (0x4dc4, 0x4de4) with the constant 0x11 (in a1 for the first two, in a0 for add_to_inventory), and stores bytes at +0x49 (sb at 0x4cd8, 0x4cf0, 0x4d04 and 0x4d68), base not shown. Role (from names): flat-panel I2C probe; the class 0x11 meaning is inferred from the call pattern alone.
  Reviewed: 2026-11-12

- `mgras_fp_reinit` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x4df4
  **Inferred.** Role (from name): re-initialises the flat panel from the state block at a0. It reads the byte at [a0+200]+0x49 (lbu at 0x4df8) and calls mgras_fp_probe (0x4e14), mgras_fpi2cPanelID (0x4e34) and mgras_fpi2cPanelOn (0x4ea0). The beq at 0x4e08 skips the probe when that byte is zero. The beq at 0x4e28 tests the byte again after the probe and skips the mgras_fpi2cPanelID call when it is zero. The return at 0x4e78 gives -1 or 0.
  Reviewed: 2026-11-12

### `MgrasBlankScreen` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x4ee8

Grade: inferred.

`MgrasBlankScreen` blanks the display by switching the panel power through two helpers, `mgras_fpi2cPanelOff` and `mgras_fpi2cPanelOn`. A branch on the argument `a1` (zero or not, at 0x4f5c) chooses between two paths, and the call to `mgras_fpi2cPanelOn` passes 0xff in a4. Each path stores bytes at `a0+0x61811` and `a0+0x61910`, and a further byte at `a0+0x60d88` only when a later check of `a1` (at 0x4f74 or 0x4fcc) is nonzero. On one path it returns 3. The byte offsets are not identified, and "panel" and "I2C" come from the helper names.

Reviewed: 2026-11-12

- `MgrasBlankScreen` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_init.o)` at 0x4ee8
  **Inferred.** Appears to blank the screen by switching the flat panel off and on again. It calls mgras_baseindex (0x4efc), mgras_fpi2cPanelOff (0x4fa0, with a2 = 1 and a3 = 4) and mgras_fpi2cPanelOn (0x4ff4, with a2 = 1, a3 = 4 and a4 = 0xff), each behind several branches that can skip it. It stores bytes at offsets 0x61811, 0x61910 and 0x60d88 (sb at 0x4f6c, 0x4f70, 0x4f78 and again at 0x4fc0, 0x4fc8, 0x4fd0); the facts do not show the stored value. The return at 0x4fb0 gives 0x3, the mgras_fpi2cPanelOff result or the mgras_fpi2cPanelOn result.
  Reviewed: 2026-11-12
