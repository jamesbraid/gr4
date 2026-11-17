# Readings: `usr/cpu/sysgen/IP28boot/mgras.a(mgras_mco.o)`

One entry per routine, filed here from the reading batches by binary.

- `mgras_mco_probe` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_mco.o)` at 0x0
  **Inferred.** Calls `mgras_mco_set_dcbctrl` with a1 = 0x0 at 0x10, then stores and reads back a byte at offset 0x62c08 from a0 (`sb` at 0x28 and 0x30, `lbu` at 0x2c and 0x34). A branch at 0x54 tests a value that the facts leave unresolved, and branches at 0x60 and 0x68 compare registers a0 and a1 (reused after entry, so not the entry arguments) with 0x1 and 0xa0. The return is 0xff on one path; the value on the other path is unknown in the facts.
  Reviewed: 2026-11-12

- `mgras_mco_shutdown` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_mco.o)` at 0x80
  **Inferred.** Loads a state word at a0+0x758 (1880 decimal) and tests it at 0x90; the branch goes to 0xc8 when it is zero, and the facts do not show what is there. Otherwise it calls `mgras_mco_shutdown_vc2` at 0x9c with the pointer at a0+0xd0 (`ld` at 0x84) as its first argument. When that call returns zero, the branch at 0xa8 goes to the `mgras_mco_shutdown_FPGAs` call at 0xd0, which is passed the same pointer; when it returns nonzero the path reaches an `sw` at a0+0x758 (0xbc) and a return at 0xc0. The stored value, and whether the zero path also stores, are not shown.
  Reviewed: 2026-11-12

- `mgras_mco_download` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_mco.o)` at 0xe4
  **Inferred.** Role (from name): downloads configuration to the MCO. Calls `mgras_baseindex` at 0xf8, loads a byte at 0x118 and compares it with 0xff at 0x120 (equal jumps to 0x14c, past the `mgras_mco_config_FPGAs` call at 0x12c). Further calls in address order: `mgras_mco_config_7162` with a1 = 0x1 at 0x164 and 0x2 at 0x190, `mgras_mco_config_473` with a1 = 0x3 at 0x1bc and 0x4 at 0x1e8, `mgras_mco_set_control_reg` with a1 = 0x1, 0x2 and 0x3 at 0x21c, 0x230 and 0x244, and `mgras_mco_config_vc2` at 0x258. A zero return from each of the first five calls continues to the next; a nonzero return from `mgras_mco_config_FPGAs` falls through to the return at 0x144, which can return -0x16 or a callee result. After the check at 0x264 it stores words to a0+0x758 and a0+0x75c (`sw` at 0x288 and 0x298).
  Reviewed: 2026-11-12

- `mgras_mco_shutdown_FPGAs` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_mco.o)` at 0x29c
  **Inferred.** Polls the status word at a0+0x70100 (459008 decimal, `lw` at 0x2a4 and 0x2bc) until its low five bits are zero (loop branches at 0x2b4 and 0x2c4). It then calls `mgras_mco_set_dcbctrl` with argument 0x1 and the block at a0+0x70000 (0x2d8), and stores a byte at a0+0x62c88 (`sb` at 0x300). Returns 0 on every visible path.
  Reviewed: 2026-11-12

- `mgras_mco_config_FPGAs` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_mco.o)` at 0x30c
  **Inferred.** Calls `mgras_mco_set_dcbctrl` with a1 = 0x1 at 0x364, then `us_delay` with a0 = 0x186a0 at 0x37c, 0x3f8 and 0x534 (unit not stated by the facts). It polls the status word at a0+0x70100 until its low five bits are zero, in several loops (for example 0x334, 0x394, 0x470 and 0x518), and a retry test compares a register with 0xf688 at 0x4e4 and 0x14 at 0x500. Bytes are stored and read back at a0+0x62c88 and a0+0x62c08. `mgras_mco_set_dcbctrl` is also called with a1 = 0x0 at 0x44c, before the retry tests, and with a1 = 0x2 at 0x578, the last call the facts show. Return values shown: 0 and -5 at 0x3e0, whose trigger the facts do not fully show; the final return is not rendered.
  Reviewed: 2026-11-12

- `mgras_mco_config_7162` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_mco.o)` at 0x590
  **Inferred.** Role (from name): programs one of two 7162 parts. The index in a1 is compared with 1 and 2 (branches at 0x5b0 and 0x5b8; a match goes to 0x5d8). The return at 0x5d0 can be -0x16, -0x5, the gamma result or 0. The routine calls `mgras_mco_set_dcbctrl` with a1 = 0x2 at 0x62c, `mgras_mco_7162_set_addr` at 0x718 with a2 = 0x3 and a4 = 0x5, and `mgras_mco_7162_set_cmd` with a2 = 0x6, 0x7, 0x8, 0xc, 0xf, 0x9, 0xd and 0x204 (calls at 0x7a8 to 0x8d4), each with a3 loaded from the block in a2 at offsets 0x8 to 0x24. It polls the status word at a0+0x70100 between steps, and ends with `mgras_mco_config_7162_gamma` at 0x940, whose zero or nonzero result is tested at 0x954.
  Reviewed: 2026-11-12

- `mgras_mco_config_473` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_mco.o)` at 0x96c
  **Inferred.** Role (from name): programs one of two 473 parts. The index in a1 is compared with 3 and 4 (at 0x988 and 0x990; a match goes to 0x9ac). The return at 0x9a4 can be -0x16, the gamma result or 0. It calls `mgras_mco_set_dcbctrl` with a1 = 0x2 at 0x9fc, stores a byte at a0+0x62d08 and another at a0+0x62d88, polls the status word at a0+0x70100, and makes halfword stores at 0xa68, 0xa70 and 0xa78 in a loop (branch at 0xa74 goes back while a counter is below 0x100). It ends with `mgras_mco_config_473_gamma` at 0xa84.
  Reviewed: 2026-11-12

- `mgras_mco_shutdown_vc2` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_mco.o)` at 0xab0
  **Inferred.** Waits for the low five bits of the status word at a0+0x70100 to clear (`lw` at 0xab8 and 0xad0, loop branches at 0xac8 and 0xad8), calls `mgras_mco_set_dcbctrl` with argument 0x4 (at 0xaec), then stores a byte at a0+0x62e08 and a halfword at a0+0x62eb0. Always returns 0.
  Reviewed: 2026-11-12

- `mgras_mco_config_vc2` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_mco.o)` at 0xb24
  **Inferred.** Calls `mgras_mco_set_dcbctrl` with a1 = 0x4 at 0xb74, then `us_delay` with a0 = 0x2710 at 0xb8c and 0xba8, both before the `mgras_mco_shutdown_vc2` call at 0xbb0. It then calls `mgras_mco_load_vc2_sram` at 0xbc4 with the 8-byte word at a1+32 as a1, a2 = 0x0 and a3 = the word at a1+40. When that returns nonzero the routine returns (0xbe8, the facts name the callee's result). When it returns zero it makes a second `mgras_mco_load_vc2_sram` call at 0xc0c with the word at a1+16, a2 = 0x400 and a3 = the word at a1+24, and tests its result at 0xc1c. Stores to a0+0x62e08 and a0+0x62eb0 surround the calls.
  Reviewed: 2026-11-12

- `mgras_mco_load_vc2_sram` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_mco.o)` at 0xc68
  **Inferred.** Waits on the status word at a0+0x70100 until its low five bits are zero, calls `mgras_mco_set_dcbctrl` with a1 = 0x4 (at 0xcc0), then does byte stores to a0+0x62e08 and halfword stores to a0+0x62eb0 and a0+0x62f90 (`sb` at 0xcd8 to 0xd54, `sh` at 0xcdc to 0xd58); the values stored are not shown. A halfword read back from a0+0x62eb0 is compared with a2 at 0xcf0 (a mismatch jumps to 0xdb4), and a halfword loaded at 0xd70 is compared with one at a0+0x62f90 at 0xd7c. The return is 0 or -5.
  Reviewed: 2026-11-12

- `mgras_mco_load_channel_gamma` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_mco.o)` at 0xdd0
  **Inferred.** Loads a state word at a0+0x758; when it is zero (branch at 0xdec) it jumps to 0xe64. Otherwise it dispatches on a1: 0 goes to `MgrasSetGammaRamp` at 0xe7c with a1 = a2, a2 = a2+512, a3 = a2+1024 and a4 = 0x3; 1 and 2 go to `mgras_mco_config_7162_gamma` at 0xe34; 3 and 4 go to `mgras_mco_config_473_gamma` at 0xe50. Both gamma helpers are called with a0 = the pointer at a0+0xd0, a1 and a2 passed through, a3 = 0x2 and a4 = 0x3. The return at 0xe24 can be -5; the other value is not resolved in the facts.
  Reviewed: 2026-11-12

- `mgras_mco_config_473_gamma` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_mco.o)` at 0x1024
  **Inferred.** Selects a register-write path from the value in a1: the beq tests at 0x1040 and 0x1048 compare it with 3 and 4. On the writing paths it stores bytes at a0+0x62d08 and a0+0x62d88 (sb at 0x10d0 and 0x10d4) and calls mgras_mco_set_dcbctrl at 0x10b8 with a1=2. Several loops mask the word at a0+459008 with 0x1f (bne at 0x10a0, beq at 0x10ec) before the return at 0x1068, which yields -0x16 or 0x0. Role (from name): a gamma setup for a 473 device; no constant in the rendered facts confirms it.
  Reviewed: 2026-11-12

- `mgras_mco_set_dcbctrl` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_mco.o)` at 0x11a0
  **Inferred.** Reads the word at a0+0x70100 (lw at 0x11a8 and 0x11bc) and polls the word at a0+459008 under the mask 0x1f (beq at 0x11b4, bne at 0x11c4). When a3 is 0x18 or more (beq at 0x11e0) it returns -0xe from 0x120c. Below that it leaves through an indirect jump at 0x11ec whose target the rendered code does not resolve, so the handler it dispatches to is unknown.
  Reviewed: 2026-11-12

- `mgras_mco_startclock` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_mco.o)` at 0x1248
  **Inferred.** Writes the word at a0+0x6802c (sw at 0x1264) and stores bytes at a0+0x62d08 and a0+0x62d88 (sb at 0x126c and 0x1278). Those two byte offsets are also written by mgras_mco_config_473_gamma and mgras_mco_7162_set_addr; the rendered facts do not show what the pair does. It returns a0+0x60000 at 0x1274.
  Reviewed: 2026-11-12

- `mgras_mco_set_control_reg` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_mco.o)` at 0x127c
  **Inferred.** It calls mgras_mco_set_dcbctrl at 0x12a0 with a1=2, passing its own a2 and a3 through. Then it branches on a1 against 1, 2 and 3 (beq at 0x12b8, 0x12c0 and 0x12c8). Each of the three cases stores one byte at a0+0x62d08 (sb at 0x130c, 0x1318 and 0x1324) and rejoins at 0x12d0. From there it calls mgras_mco_set_dcbctrl again at 0x12d4 with a1=3, with a2 and a3 not resolved by the facts, then stores a byte at a0+0x62d88 (sb at 0x12ec) and returns the result of mgras_mco_set_dcbctrl at 0x12f8.
  Reviewed: 2026-11-12

- `mgras_mco_7162_set_addr` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_mco.o)` at 0x1328
  **Inferred.** Reads the word at a0+0x70100 (lw at 0x1354 and 0x1368) and tests the word at a0+459008 under the mask 0x1f (beq at 0x1360, bne at 0x1370). It calls mgras_mco_set_dcbctrl at 0x1344 with a1=2, passes a2 and a3 through, stores bytes at a0+0x62d08 and a0+0x62d88 (sb at 0x1384, 0x1390 and 0x1398), and returns the callee's result at 0x13a0. Role (from name): sets an address on a 7162 part; no constant in the rendered facts confirms the part.
  Reviewed: 2026-11-12

- `mgras_mco_7162_set_cmd` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_mco.o)` at 0x13a8
  **Inferred.** Polls the word at a0+459008 under the mask 0x1f (beq at 0x13d0, bne at 0x13e0) and reads a0+0x70100 (lw at 0x13b4 and 0x13d8). It calls mgras_mco_7162_set_addr at 0x13f4 with its own arguments and a5 set to a0+458752, then stores bytes at a0+0x62d08 and a0+0x62d88 (sb at 0x1418 and 0x141c) and returns a0+0x60000 at 0x1424.
  Reviewed: 2026-11-12
