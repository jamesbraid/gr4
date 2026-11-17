# Readings: `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)`

One entry per routine, filed here from the reading batches by binary.

- `MgrasInitDMA` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x0
  **Inferred.** Initializes a DMA state block through its argument pointer. It writes words at offsets 0x50084 and 0x50900 and doubleword pairs at 0x50080, and reads a 7-bit field (`& 0x7f`) from offset 0x70004 in four branch tests (0x88, 0x98, 0xb4, 0xc4) that pick the loop path. It makes no calls, and the fixed return value at 0xd8 is 0x483a0400000000. What the offsets hold is not established by the facts.
  Reviewed: 2026-11-12

- `MgrasInitDMA` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x0
  **Inferred.** Stores through a0 at offsets 0x50080 to 0x50900 (sd and sw) and polls the word at a0+0x70004 with mask 0x7f. The branch at 0x88 goes back to 0x3c when the masked field is zero, and the loop at 0x90 to 0x98 spins while it is nonzero. A second poll of the same word follows at 0xa8 to 0xc4. It makes no calls and returns a constant in v0 at 0xd8 (0x483a0400000000). Role (from name): DMA setup; the meaning of the polled bits is unclear.
  Reviewed: 2026-11-12

- `MgrasInitDMA` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x0
  **Inferred.** Role (from facts): stores words into the block at a0 [@0x50] and loads a status word [@0x74] repeatedly. It stores a 4-byte word at offset 0x50084 [@0x50] and 8-byte values at offset 0x50080 [@0x58] [@0x64] [@0x70] [@0xd0] [@0xd4]. It polls the word at offset 0x70004 [@0x74] [@0x90] [@0xa8] [@0xbc], looping while its low seven bits are nonzero [@0x98 taken] [@0xc4 taken]. It stores a 4-byte word at offset 0x50900 [@0xdc]. The register v0 holds 0x483a0400000000 at the return [@0xd8], the same literal-pool value just stored at 0xd4, so the facts do not show that this is a meaningful return value.
  Reviewed: 2026-11-12

- `MgrasInstallTxTbl_Kern` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0xe0
  **Inferred.** Role (from name): installs an entry into the state block's transmit table. Branches at 0xf0 (a1 >= 5, unsigned), 0xf8 (a4 == 0) and 0x10c (a3 == 0) pick the path. When a3 is non-zero it calls `dki_dcache_wb` at 0x120 with a2 as its first argument. It calls `kvtophys` at 0x15c with a2 as its first argument. It stores at offsets 0x50084, 0x50080 and 0x50900 (stores at 0x160, 0x194, 0x1a0, 0x1b0, 0x1b4). It returns at 0x1b8 with either `a3 << 0x20` or the `kvtophys` result; the facts do not say which path gives which.
  Reviewed: 2026-11-12

- `MgrasInstallTxTbl_Kern` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0xe0
  **Inferred.** Role (from facts): stores a table entry into the block at a0, but only when a1 is below 5 [@0xf0 fall]; when a1 is 5 or more it returns at once with v0 holding a3 shifted left by 32 bits [@0xf0 taken] [@0x1b8]. On the a1 below 5 path it calls dki_dcache_wb [call 1, @0x10c fall] only when a3 is nonzero and a4 is nonzero [@0xf8 fall], and it calls kvtophys [call 2, @0xf0 fall]. It stores a 4-byte word at offset 0x50084 [@0x160], 8-byte values at offset 0x50080 [@0x194] [@0x1a0] [@0x1b0], and a 4-byte word at offset 0x50900 [@0x1b4]. On that path the return at 0x1b8 gives the kvtophys result [@0x1b8].
  Reviewed: 2026-11-12

- `MgrasResetTxTbl_Kern` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x1d8
  **Inferred.** Role (from name): resets transmit-table words. It stores at offsets 0x50084, 0x50080 and 0x50900 (stores at 0x21c, 0x228, 0x234, 0x23c, 0x240), the same offsets the install routine above writes. When a1 is 5 or more, the branch at 0x1f4 jumps to the return at 0x244, past those stores. The return value is one of `a0+327680` (the block base plus 0x50000) or an unresolved value; the facts do not say which path gives which. It makes no calls.
  Reviewed: 2026-11-12

- `MgrasResetTxTbl_Kern` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x1d8
  **Inferred.** Role (from facts): writes the same offsets of the block at a0 that the install routine writes, but only on the path where a1 is below 5 [@0x1f4 fall]. It stores a 4-byte word at offset 0x50084 [@0x21c], 8-byte values at offset 0x50080 [@0x228] [@0x234] [@0x23c], and a 4-byte word at offset 0x50900 [@0x240]. The branch at 0x1f4 skips all of those stores when a1 is 5 or more [@0x1f4 taken]. Role (from name): undoes an install. The return at 0x244 gives a0 plus 0x50000 on the store path and a value the facts leave open otherwise [@0x244].
  Reviewed: 2026-11-12

- `mgrasFastUnlock` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x24c
  **Inferred.** A thin wrapper: it calls `unuseracc` at 0x258 with its arguments passed through (a0, a2, a3) and returns that call's result at 0x264. The name suggests it releases a fast lock taken by `mgrasFastLock`, but the facts show only the forwarding.
  Reviewed: 2026-11-12

- `mgrasFastLock` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x26c
  **Inferred.** Calls `useracc` at 0x290 with its first and third arguments passed through, 0 in a3 and a1 in a5, and returns that result (0x29c). Role (from name): checks that a user buffer is accessible. When a3 is non-zero (branch at 0x270) a 4-byte store at offset 0 of a register runs first (0x280); the facts do not show that register.
  Reviewed: 2026-11-12

- `mgrasFastLock` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x26c
  **Inferred.** Role (from name): checks that a user buffer is accessible. Its one call is useracc [call 1], and it returns that call's result [@0x29c]. When a3 is nonzero [@0x270 fall] it stores a word through a3 at offset 0 before the call [@0x280]. The facts do not show what that word is for.
  Reviewed: 2026-11-12

- `mgrasLockMem` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x2a4
  **Inferred.** Role (from name): locks a range of pages for DMA. It branches to 0x2e4 when a0 is zero or the doubleword at offset 0x438 of it is zero (branches at 0x2bc and 0x2cc). It has `ll`/`sc` retry loops at 0x314/0x320 and 0x37c/0x388. It calls `cmn_err` at 0x350 with the constant 4 as its first argument, only when the value tested at 0x340 is non-zero. It calls `mgrasFastLock` at 0x3c8 and tests its return at 0x3d4, and calls `unmaptlb_range` at 0x404 with a1 at entry as its first argument. The facts do not show whether the `mgrasFastLock` call repeats in a loop, which words the `ll`/`sc` pairs update or which page-table fields are reached.
  Reviewed: 2026-11-12

- `mgrasLockMem` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x2a4
  **Inferred.** Takes a lock word with ll/sc (ll at 0x314 and 0x37c, sc at 0x320 and 0x388), each retried when the sc fails (beql at 0x324 and 0x38c). Calls mgrasFastLock once, at 0x3c8, with a0 = a1 at entry, a1 = a2 at entry and a3 = a4 at entry; the bne at 0x3f8 branches back to 0x3e4 while a value copied from a3 is nonzero. Calls cmn_err at 0x350 with a0 = 4 only when a2 is nonzero (the beq at 0x340 skips it when a2 is zero), and calls unmaptlb_range at 0x404 with a0 = a1 at entry; the conditions that reach 0x404 are not worked out here. It returns 0xb, 0xc, mgrasFastLock's result or an unresolved value. Role (from name): memory locking; what 0xb and 0xc mean, and whether the cmn_err call is an error path, is unclear.
  Reviewed: 2026-11-12

- `mgrasUnlockMem` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x414
  **Inferred.** Role (from name): reverses `mgrasLockMem`. It compares a1 with the sentinel 0xbad at 0x434 to choose the path. It calls `mgrasFastUnlock` at 0x454 with a1 as its first argument. It loads the doubleword at offset 0x438 of a0 (0x468), loads and stores a word at offset 0x420 (0x488, 0x49c), and has an `ll`/`sc` retry loop at offset 4 from a base the facts do not resolve (0x4c0, 0x4cc). The return value is not resolved.
  Reviewed: 2026-11-12

- `mgrasUnlockMem` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x414
  **Inferred.** Role (from facts): does nothing when a1 equals 0xbad [@0x434 taken]. Otherwise it calls mgrasFastUnlock [call 1, @0x434 fall] and then takes one of two paths. When a0 is nonzero [@0x460 fall] and the doubleword at offset 0x438 of a0 is nonzero [@0x468] [@0x46c fall], it loads the word at offset 0x420 of a0 [@0x488] and stores it back at offset 0x420 [@0x49c] reduced by a page count built from a1, a2 and the mask 0x3fff. Otherwise it applies the same reduction to a gp-relative word with a load-linked at 0x4c0 and a store-conditional [@0x4cc], retrying while the store-conditional fails [@0x4d0 taken zero]; the base-register fact names that word MgrasCurrLockedMemPages. Role (from name): the counterpart of mgrasLockMem.
  Reviewed: 2026-11-12

- `mgrasDmaFlushUtil` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x4ec
  **Inferred.** Calls `dki_dcache_wbinval` at 0x538, 0x570 and 0x594; the call at 0x570 has the constant 0x100000 (1 MiB) in a1. Role (from name): flushes and invalidates a data-cache range in chunks. The loop branches at 0x554 and 0x580 compare a register holding 0x100000 with another value. The branches at 0x510 and 0x540 compare a register holding -1 with another register and jump when they are equal (to 0x5bc and 0x5a4). The return is the result of `dki_dcache_wbinval` or an unresolved value.
  Reviewed: 2026-11-12

- `mgrasReleasePoolTxMemory` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x5d0
  **Inferred.** Frees the memory the argument block points to at offset 0x40. When that pointer is non-zero (branch at 0x5dc) it calls `kmem_free` at 0x5f0 with the pointer as its first argument and the word at offset 0x48 shifted left by 2 as its second, then stores a word at offset 0x48 and a doubleword at offset 0x40 (0x5fc, 0x600). The stored values are not resolved by the facts.
  Reviewed: 2026-11-12

- `mgrasReleasePoolUserMemory` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x614
  **Inferred.** Releases the user-memory pool entry at a1. It calls `mgrasUnlockMem` at 0x69c inside a loop bounded by the word at a1+0xc (loaded at 0x614 and 0x6a4, back-branch at 0x6ac), and reads a word at a1+0x4c at 0x664. It frees the pointers at a1+0x20, a1+0x28 and a1+0x30 with `kern_free` at 0x6d8, 0x6f4 and 0x710; each call is skipped when its pointer is zero (branches at 0x6cc, 0x6e8 and 0x704). It stores words at a1+0x10 and a1+0xc (0x6c0, 0x6c4) and doublewords at a1+0x30, a1+0x28 and a1+0x20 (0x720, 0x724, 0x728). The stored values are not resolved.
  Reviewed: 2026-11-12

- `mgrasReleasePoolMemory` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x738
  **Inferred.** Calls `mgrasReleasePoolUserMemory` at 0x748 with all four of its arguments, then calls `mgrasReleasePoolTxMemory` at 0x764 only when the argument in a2 is non-zero (branch at 0x758). It returns the result of whichever release ran (0x770).
  Reviewed: 2026-11-12

- `MgrasDestroyDMA` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x778
  **Inferred.** Tears down the DMA state. It loads the pointer at offset 0x468 of the argument (`ld` at 0x7e0), then calls `mgrasReleasePoolMemory` at 0x7c4 with the argument as a0 and a second argument the facts do not resolve, and at 0x804 on a point 16 bytes into that block, which the branches at 0x7e4 and 0x7f4 reach only when the block pointer is nonzero and the word at its start is below 2. A loop variable in s0 is compared against -1 (beq at 0x7d0) and against 1 (bne at 0x7d8). The return value at 0x82c is not resolved.
  Reviewed: 2026-11-12

- `mgrasTeardown` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x834
  **Inferred.** Role (from name): tears down a DMA mapping. It reads words at offsets 0x0, 0x4 and 0x8 of a2, calls `flushbus` at 0x8a8 and 0xa74, calls `us_delay` with 1 at 0x900 inside a loop bounded by the constant 0x989680 (10,000,000, branch at 0x8f8), and calls `RRM_CheckValidFault` at 0x9b8 and 0x9e8. The returns are the constants 0x0, 0x1, 0xe and 0x16. It also calls `cmn_err` at 0x96c with the constant 4 as its first argument.
  Reviewed: 2026-11-12

- `mgrasGetTxTbl` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0xa90
  **Inferred.** Role (from name): makes sure a transmit table exists and is large enough. It compares the size word at a0+0x48 with the requested values (branches at 0xac4 and 0xb00). It calls `kmem_free` at 0xb28 on the pointer at a0+0x40 only when that pointer and the size word are both non-zero (branches at 0xb0c and 0xb14). It calls `kmem_alloc` at 0xb70 with the constants 0x8100 in a1 and 0x800 in a2, then `bzero` at 0xb88 on the `kmem_alloc` result, sized by the word at a0+0x48 shifted left by two. It returns one of 0x0, 0xc or 0x16.
  Reviewed: 2026-11-12

- `mgrasJamTxTbl` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0xbfc
  **Inferred.** A small range loop: it walks from a2 up to a2+a3 (the end computed at the top, branches at 0xc04 and 0xc28) and stores one 4-byte word per step at 0xc2c. The target of the store and the stored value are not resolved by the facts. The return at 0xc30 is unresolved.
  Reviewed: 2026-11-12

- `mgrasPlugTxTblHoles` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0xc38
  **Inferred.** Role (from name): fills holes in the argument block's transmit table. It reads the word at offset 0xc, the doublewords at 0x20 and 0x40 and the word at 0x38, and loops over entries comparing against the sentinel 0xbad (branches at 0xc74 and 0xd0c). It calls `mgrasJamTxTbl` at 0xd28 with the word at offset 0x14 in a0, the doubleword at offset 0x40 in a1 and the word at offset 0x38 in a3. It stores words at offsets 0x18 and 0x14 (0xcb4, 0xcc8).
  Reviewed: 2026-11-12

- `mgrasFillTxTbl` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0xd50
  **Inferred.** Role (from name): fills transmit-table entries for a user buffer. It calls `curproc_vtopv` at 0xe88 with its first two arguments passed through and the constants 0x10 in a3 and 0x2 in a4. It has loops (backward branches at 0xdf0, 0xe38 and 0xf10) and stores words through pointers the facts do not resolve (`sw` at 0xde4, 0xe3c, 0xed4, 0xf04). It returns 0x0 or 0x1 (0xe48).
  Reviewed: 2026-11-12

- `mgrasDmaUtil` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0xf40
  **Inferred.** A large routine with several paths. The branch at 0xf70 tests `a2 & 0x7` and the branch at 0x10c0 tests `a6 & 0xfff`. Its callees include `mgrasTeardown` at 0xfec, `mgrasReleasePoolUserMemory` at 0x1044 and 0x15a4, `kvtophys` at 0x1128, `mgrasGetTxTbl` at 0x12a4, `kern_malloc` at 0x134c, 0x1360 and 0x136c, `kern_free` at 0x13d0, 0x13e4 and 0x1580, `mgrasLockMem` at 0x1450, `mgrasFillTxTbl` at 0x14ec, `dki_dcache_wb` at 0x1540, `RRM_CheckValidFault` at 0x1548 and `mgrasReleasePoolMemory` at 0x1568. The argument in a3 is compared with 3 at 0x1080 and 0x1258 and with 4 at 0x124c and 0x1260. The exact mode semantics are not established by the facts.
  Reviewed: 2026-11-12

- `mgrasDmaUtil` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0xf40
  **Inferred.** A large routine that branches on a3 against 0x3 and 0x4 (at 0x1080, 0x1234, 0x124c, 0x1260) to pick a path. It allocates with kern_malloc (0x134c to 0x136c), calls mgrasFillTxTbl at 0x14ec, calls mgrasLockMem at 0x1450, and calls mgrasTeardown (0xfec), mgrasReleasePoolUserMemory (0x1044, 0x15a4) and kern_free (0x13d0, 0x13e4, 0x1580). The facts do not show which of these undoes the lock. The return codes 0xe, 0x16 and 0xc may be errno values, but that mapping is my guess from common Unix conventions, not shown here. Role (from name): DMA helper; what mgrasFillTxTbl fills is taken from its name.
  Reviewed: 2026-11-12

- `mgrasGetFlushRanges` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x15b8
  **Inferred.** Copies a flush-range request in from user space. It returns at 0x15f0 when the size in a0 is zero (branch at 0x15d4), allocates with `kern_malloc` at 0x1620, reads the caller's ABI with `curproc_abi` at 0x163c, and copies the request with `copyin_xlate` at 0x1660 using a flush-definition translation descriptor from the binary's data. It returns 0x0, 0xe or 0x16.
  Reviewed: 2026-11-12

- `MgrasDmaUtil_Single` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x1678
  **Inferred.** Role (from name): a single-entry form of the DMA dispatcher. It reads a request record at a2 (words at +0, +4, +0x10, +0x14, +0x20 and a doubleword at +0x18). The call to `mgrasDmaUtil` at 0x16cc is conditional (branches at 0x168c, 0x169c and 0x16ac); it passes the record's words in a2 to a5, the constant 1 in a6 and a2+8 in a7. The call to `mgrasDmaFlushUtil` at 0x1714 passes the words at +0x20 and +0x18 in a6 and a7 and comes after a mask-0x8 test at 0x16f4. The return is one of 0x16, the `mgrasDmaUtil` result or 0x0.
  Reviewed: 2026-11-12

- `MgrasDmaUtil_Single` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x1678
  **Inferred.** Role (from facts): reads the word at the start of the record at a2 [@0x1678] and returns 0x16 at once when its bits above the low four are not all zero [@0x168c fall] [@0x1694]. It calls mgrasDmaUtil [call 1] only when the low three bits of that word are nonzero [@0x169c fall] and the word at offset 0x4 of the record is not 2 [@0x16ac fall], passing words at offsets 0x4, 0x10 and 0x14 [@0x16a4] [@0x16c4] [@0x16d0]. A nonzero mgrasDmaUtil result is returned [@0x16e0 fall]. Otherwise, when bit 3 of the first word is set [@0x16f4 fall], it reads the doubleword at offset 0x18 and the word at offset 0x20 [@0x16fc] and calls mgrasDmaFlushUtil [call 2]; the return then gives 0 [@0x1694].
  Reviewed: 2026-11-12

- `MgrasDmaUtil_Multi` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x1734
  **Inferred.** Role (from name): the multi-entry form of the wrapper above. It reads words at offsets +0, +4, +8, +0x18, +0x1c and +0x20 of a2 and doublewords at +0x10 and +0x28. When the word at +4 equals 2 (branch at 0x184c) it allocates with `kern_malloc` at 0x188c and copies the entries in with `copyin_xlate` at 0x18e8 using a pointer-list translation descriptor. It calls `mgrasGetFlushRanges` at 0x180c when a mask-0x8 bit test at 0x17e0 passes, `mgrasDmaUtil` at 0x193c, and `mgrasDmaFlushUtil` at 0x197c when a second mask-0x8 test at 0x1964 passes. It frees with `kern_free` at 0x17a4 and 0x17c8. A mask-0x7 test is at 0x183c.
  Reviewed: 2026-11-12

- `MgrasDmaEditAppend` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x1994
  **Inferred.** A large routine (2372 bytes, 15 distinct callees). Role (from name): handles an append to a DMA edit list. It copies the user-supplied list in with `copyin_xlate` at 0x1e94, allocates with `kern_malloc` at 0x1d6c, 0x1d8c and 0x1dac, and calls `mgrasLockMem` at 0x1fdc, `mgrasTeardown` at 0x2094, `mgrasGetTxTbl` at 0x20d8, `mgrasFillTxTbl` at 0x219c and `mgrasReleasePoolMemory` at 0x2204. The facts do not establish what the append does to the list beyond these calls.
  Reviewed: 2026-11-12

- `MgrasDmaEditReplace` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x22d8
  **Inferred.** Role (from name): replaces an entry in a DMA edit list. It frees with `kern_free` at 0x2354, 0x237c and 0x2390 and allocates with `kern_malloc` at 0x2570 and 0x2584. It copies the user request in with `copyin_xlate` at 0x2630 into a buffer returned by `kern_malloc`; the facts do not say which of the two allocations. It also calls `mgrasLockMem` at 0x2730, `mgrasUnlockMem` at 0x2794 and 0x29c4, `mgrasPlugTxTblHoles` at 0x2804, `mgrasFillTxTbl` at 0x2968 and `bcopy` with 4 in a2 at 0x28e0. The sentinel 0xbad is tested at 0x2998 ahead of the unlock at 0x29c4.
  Reviewed: 2026-11-12

- `MgrasDmaEditRelease` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x29e4
  **Inferred.** Role (from name): releases entries from a DMA edit list. It reads a word at a2 and a count at a2+8, copies a list from user space with `copyin` at 0x2b58 (size is the count shifted left by 2), and calls `mgrasJamTxTbl` at 0x2cfc, `mgrasUnlockMem` at 0x2d3c and `mgrasReleasePoolMemory` at 0x2db4. It calls `mgrasPlugTxTblHoles` at 0x2d60 only when the value tested at 0x2d58 is non-zero. The sentinel 0xbad is compared at 0x2c04, 0x2cd4 and in a7 at 0x2cfc. The exact release semantics are not established by the facts.
  Reviewed: 2026-11-12

- `MgrasDmaEditRelease` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x29e4
  **Inferred.** Reads a request structure at a2 (fields at +0, +4, +8 and +16), a pointer at a0+0x20 and a doubleword at +0xd0 of the block it points to, then copies user data in with copyin at 0x2b58 after a kern_malloc at 0x2b20. Its op code at a2+4 is compared against 2, 3 and 4 (at 0x2a6c to 0x2a7c, after an unsigned compare against 5 at 0x2a64). Later it calls mgrasJamTxTbl at 0x2cfc, mgrasUnlockMem at 0x2d3c and, only when a6 is nonzero (the beq at 0x2d58 skips it otherwise), mgrasPlugTxTblHoles at 0x2d60. It returns 0x0, 0xe or 0x16. Role (from name): DMA edit release; the edit semantics behind the op codes are unclear, and the facts do not show that these calls form a release path.
  Reviewed: 2026-11-12

- `MgrasDmaUpdateTMTLB` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x2de4
  **Inferred.** Role (from name): updates a DMA table entry. It loads the pointer at a0+0x70, then the pointer at offset 0x468 (1128) of that block and a word 16 bytes into the block it reaches. It calls `RRM_CheckValidFault` at 0x2e18 and `kvtophys` at 0x2e78 with 0x482208 in a1. It stores words at offsets 0x50900 and 0x50084 and doublewords at offset 0x50080 (stores at 0x2e64, 0x2e6c, 0x2e98, 0x2ebc); the base register and the stored values are not resolved. The returns are the constants 0x0, 0xe and 0x16.
  Reviewed: 2026-11-12

- `irix5_to_mgras_pointers_xlate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x2ecc
  **Inferred.** Role (from name): converts a pointer table between a 32-bit and a 64-bit layout; the facts show 4-byte loads and 8-byte stores but not which side is the source. It calls kern_malloc at 0x2f58 with a0 set to a2 times 4, reached only when the 4-byte count at a3+0x0 is below that size (the bne at 0x2f2c, unsigned compare). The beq at 0x2ed8 tests the first argument against zero and branches to that comparison. It reads a 4-byte count from a3 at +0x0 and an 8-byte field at +0x8, then stores 8-byte fields at +0x10 (0x2f3c, 0x2f64). The success return is 0 at 0x2f18, and the facts do not settle which argument is the input table.
  Reviewed: 2026-11-12

- `irix5_to_mgras_pointers_xlate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x2ecc
  **Inferred.** Role (from facts): when a0 is nonzero [@0x2ed8 fall] it reads the doubleword at offset 0x10 of the record at a3 [@0x2ee8] and runs a loop that loads 4-byte words [@0x2f04] and stores 8-byte values [@0x2f10], with its back edge at 0x2f0c [@0x2f0c taken]. When a0 is zero [@0x2ed8 taken] it reads the word at offset 0x0 of the record [@0x2f20]. When that word is below a2 << 2 [@0x2f2c taken] it calls kern_malloc [call 1, @0x2f2c taken] with a0 = (a2 << 0x2) and stores a doubleword at offset 0x10 [@0x2f64]. When it is not [@0x2f2c fall] it loads the doubleword at offset 0x8 [@0x2f38] and stores a doubleword at offset 0x10 [@0x2f3c]. Both of those paths store a word at offset 0x4 [@0x2f44]. It returns 0x0 [@0x2f18].
  Reviewed: 2026-11-12

- `irix5_to_mgras_dma_flush_defn_xlate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x2f74
  **Inferred.** Role (from name): converts a DMA flush definition between a 32-bit and a 64-bit layout. When the 4-byte count at a3+0x0 is below a2 times 8 (the bne at 0x2fdc, unsigned compare), it calls kern_malloc at 0x3008 with a0 set to a2 times 8. A loop loads a 4-byte value at 0x2fa4 (lwu) and stores it as an 8-byte value at 0x2fa8 (sd). It returns 0 at 0x2fc8. The facts do not say which side is source and which is destination.
  Reviewed: 2026-11-12

- `irix5_to_mgras_dma_replace_defn_xlate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_dma.o)` at 0x3024
  **Inferred.** Role (from name): converts a DMA replace definition with the same pattern as the routines at 0x2ecc and 0x2f74. When a 4-byte count at a3+0x0 is below a limit the facts do not resolve (the bne at 0x309c, unsigned compare), it calls kern_malloc at 0x30c8; the size argument is not resolved. Elsewhere it loads an 8-byte field at +0x8 (0x30a8) and stores an 8-byte value at +0x10 (0x30ac), with a 4-byte store at +0x4 (0x30b4). A second 8-byte store at +0x10 follows the kern_malloc call (0x30d4) and its source is not shown. A loop at 0x3050 to 0x3074 loads a word (lw, lwu) and stores it (sw, sd). It returns 0 at 0x3080.
  Reviewed: 2026-11-12
