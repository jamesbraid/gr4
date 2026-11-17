# Readings: `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tport.o)`

One entry per routine, filed here from the reading batches by binary.

- `MgrasTpInit` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tport.o)` at 0x0
  **Inferred.** Role (from name): initialises the transport state for a board. It calls mgras_baseindex (0x14), then mgrasInitBoard (0x140) with that result as a1 and the MgrasBoards table as a2; the bltz at 0xfc skips mgrasInitBoard when the index is negative (taken goes to the return at 0x128). Its stores include doublewords at +0x70080 (sd at 0x68, 0x90, 0x94, 0x98 and 0x9c) and words at +0x61e00 and +0x61f00 (sw at 0xe8 and 0xf4), base register not shown. The return at 0x128 gives a0+0x70000 or an unknown value.
  Reviewed: 2026-11-12

- `MgrasTpMapcolor` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tport.o)` at 0x154
  **Inferred.** Appears to map a colour index into the device colour tables. It tests bits 0x1f of the word at a0+0x70100 (beq at 0x164, bne at 0x174) and bit 0x8 of the byte at a0+0x61208 (bne at 0x1a4, beq at 0x1b4), then writes halfwords into the table at a0+0x60c30 (sh at 0x1cc, 0x1d0, 0x1e8) and bytes into a0+0x61c08 and 0x61c88. It returns the constant 0x3ff (return at 0x1f8), which fits a 10-bit colour index.
  Reviewed: 2026-11-12

- `MgrasTpColor` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tport.o)` at 0x200
  **Inferred.** Reads the word at a0+0x70004 (`lw` at 0x208 and 0x220) and stores a doubleword to a0+0x70080 at 0x248 before returning. The branch at 0x218 tests a value against 0x40 (unsigned) and the branch at 0x22c, against the same bound, loops back to the load at 0x220. Role (from name): a color load; the facts do not show what the tested value is.
  Reviewed: 2026-11-12

- `MgrasTpSboxfi` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tport.o)` at 0x24c
  **Inferred.** Tests the static byte at sym(.sbss)+8 (`beq` at 0x264), reads the word block at a0+0x70004, and stores doublewords to a0+0x70080 at 0x2bc, 0x2c8 and 0x2cc. A loop compares a value against 0x3d (unsigned) at 0x294 and 0x2a8, and the routine returns the constant 0x1c130400000018. The name suggests a screen-box fill from the name alone; the loop bound and what it covers are not shown.
  Reviewed: 2026-11-12

- `MgrasTpPnt2i` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tport.o)` at 0x2d8
  **Inferred.** Follows the same shape as its neighbour at 0x24c: it tests the static byte at sym(.sbss)+8 (`beq` at 0x2ec), reads a0+0x70004 (`lw` at 0x2f8 and 0x310), and stores doublewords to a0+0x70080 at 0x340, 0x348 and 0x34c. A loop tests against 0x3d (unsigned) at 0x308 and 0x31c, and the return value is the constant 0x1c130400000002. The name suggests a point draw with integer coordinates, which the facts do not confirm.
  Reviewed: 2026-11-12

- `MgrasTpDrawbitmap` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tport.o)` at 0x358
  **Inferred.** Reads from a1: an 8-byte load at 0x358 and halfword loads at +0x0a, +0x0c, +0x0e, +0x14, +0x08, +0x10 and +0x12. It stores doublewords to a0+0x70080 (`sd` at 0x3f0, 0x40c, 0x418 and at several later sites) and branches on a7 against -1 (0x41c and 0x48c), and on a2 against 3, 2 and 1 (0x470, 0x478 and 0x480). The routine makes no calls in the rendered facts. Role (from name): a bitmap draw; what each value of a2 selects is not shown.
  Reviewed: 2026-11-12

- `MgrasTpCmov2i` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tport.o)` at 0x5e4
  **Inferred.** A 28-byte routine that tests the static byte at sym(.sbss)+8 (`beq` at 0x5e8) and returns. The rendered facts show no store. Role (from name): a conditional move; the body does not show what would be moved.
  Reviewed: 2026-11-12

- `MgrasTpBlankscreen` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tport.o)` at 0x600
  **Inferred.** Reads the word at a0+0x70100 (`lw` at 0x608 and 0x61c), and loops against 5 (unsigned) with branches at 0x614 and 0x628. It tests a1 at 0x640. A byte store to a0+0x61c88 (`sb` at 0x644) follows that test, and a word store to a0+0x61f00 is on each side of it (`sw` at 0x64c when a1 is nonzero, 0x664 when a1 is zero). The return value is one of 0xc or 0x1bb. Role (from name): blanking the screen; the facts do not show what these registers do.
  Reviewed: 2026-11-12

- `MgrasTpUnblank` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tport.o)` at 0x668
  **Inferred.** Calls `MgrasTpBlankscreen` at 0x670 with a1 set to 0 and passes a0, a2 and a3 through unchanged, then returns that call's result. It is a wrapper, and the unblank meaning comes from the name, since a1 = 0 selects the path that the blank routine's own a1 test at 0x640 decides.
  Reviewed: 2026-11-12

- `MgrasTpGetdesc` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tport.o)` at 0x684
  **Inferred.** Compares a1 with 1 (`beq` at 0x688) and returns 0 or 1 through a single shared exit at 0x690. The routine reads no memory and makes no calls. It is a small query whose name suggests a descriptor lookup, but the facts do not show what is being described.
  Reviewed: 2026-11-12
