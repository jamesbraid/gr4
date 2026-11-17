# Readings: `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex_io.o)`

One entry per routine, filed here from the reading batches by binary.

- `WAIT_FOR_RE_SYNC` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex_io.o)` at 0x0
  **Inferred.** Polls the word at a0+0x70000 (`lw` at 0x10 and 0x44) and tests bit 0 (`bne` at 0x24, `beq` at 0x4c), with `us_delay(1)` between polls (0x3c). The register s5 is tested against zero at 0x34 and 0x54, and the zero case reaches the `cmn_err` call (0x78); how s5 is set is not shown by the facts. It returns 0 or 1. Role (from name): a wait for a sync status bit.
  Reviewed: 2026-11-12

- `WAIT_FOR_READDMA` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex_io.o)` at 0x94
  **Inferred.** Writes a word to a0+0x70080 (`sw` at 0xb0), then polls the word at a0+0x70104 (`lw` at 0xb4 and 0xe8) masked by 0x1eff until it clears (`beq` at 0xc8, `bne` at 0xf0). It delays with `us_delay(1)` (0xe0). The register s5 is tested against zero at 0xd8 and 0xf8, and the zero case reaches the `cmn_err` call (0x11c); how s5 is set is not shown by the facts. It returns 0 or 1. Role (from name): a wait for a read DMA to finish.
  Reviewed: 2026-11-12

- `flushRegs` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex_io.o)` at 0x138
  **Inferred.** Writes a word to a4+0x70080 at seven sites (`sw` at 0x14c, 0x158 and 0x164, among others), with a loop bounded by a2 (`blez` at 0x184, `bne` at 0x1a4). It reads one word at 0x1a0 and returns either 0xffffffff80000000 or a value the facts do not show. The name suggests a register flush, and the loop bounds the writes.
  Reviewed: 2026-11-12

- `__glMgrasSet` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex_io.o)` at 0x1b4
  **Inferred.** Role (from name): queues one register write for the board. It loads the word at a4+0x8e0 (loads at 0x1bc, 0x1d4 and 0x1f8) and stores to it (0x1c8, 0x1e0 and 0x234), and stores at offset +0x7dc from a4 (0x1d0 and 0x1e8); the facts do not show how that second address is formed. The branch at 0x200 goes to the return at 0x23c when the word at a4+2272 is below 0x400 (signed). When it is 0x400 or more, the routine calls flushRegs at 0x224 with a4+2016 as its second argument first. The return at 0x23c gives either that word plus one or flushRegs's result. A branch on a3 being nonzero at 0x1f4 selects a separate path.
  Reviewed: 2026-11-12

- `__glMgrSaveRSS` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex_io.o)` at 0x244
  **Inferred.** Role (from name): saves RSS state. It stores six words at offset +0x70080 from a0 (stores at 0x254, 0x258, 0x25c, 0x260, 0x264 and 0x26c) and returns the constant 0xd214. The caller in this batch, MgrasRestoreTexData, passes a1=-1 and a2=0x1400000. The stored values are unknown.
  Reviewed: 2026-11-12

- `__glMgrWaitForDMAWrite` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex_io.o)` at 0x270
  **Inferred.** Role (from name): waits for a DMA write to finish. It loads the board block pointer from [a0+0xd0] and stores to offset 0x70084 at 0x2a8. It polls the status word at offset 0x70008 (lw at 0x2ac) and tests bit 0x10000 (0x2b4). While the bit is clear it calls us_delay with 1 (0x2d8). The branch at 0x2e4 loops back to the poll while s7 is nonzero, and when s7 is zero it falls through to cmn_err at 0x2f4. How s7 is set is not shown. The routine returns 0 or 1.
  Reviewed: 2026-11-12

- `__glMgr_WriteDMAHQSetup` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex_io.o)` at 0x308
  **Inferred.** Role (from name): sets up a write DMA on the HQ path. It branches at 0x328 on a2 being 8-byte aligned and at 0x330 on a2 equalling a3, both to 0x360 when the test fails. It compares a3 with 0xfffff (0x34c) and a2 with 0x7ffff (0x3f8). It stores seven doublewords at offset +0x70080 from the pointer loaded from [a0+0xd0] (sd at 0x398, 0x3ac, 0x3b4, 0x3c0, 0x3cc, 0x3d8 and 0x3e4). The stored values are unknown.
  Reviewed: 2026-11-12

- `__glMgr_WriteDMAGESetup` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex_io.o)` at 0x424
  **Inferred.** Writes four words directly into the register window at a0+0x70080 (stores at 0x44c, 0x45c and 0x464 among them) and returns the window base a0+0x70000. It has no branches, so it does not check its arguments.
  Reviewed: 2026-11-12

- `__glMgr_ReadDMAHQSetup` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex_io.o)` at 0x474
  **Inferred.** Role (from name): sets up a read DMA on the HQ path, the read-side counterpart of `__glMgr_WriteDMAHQSetup`. It calls WAIT_FOR_RE_SYNC at 0x4c8 and branches at 0x500 on its result being zero. It also tests a2 for 8-byte alignment (0x488) and compares a2 with a3 (0x518). It compares a2 with the limits 0xfffff (0x530) and 0x7ffff (0x6a0 and 0x6bc). Across the paths shown it stores three words (0x4cc, 0x594 and 0x5b0) and twelve doublewords (0x5ec to 0x684) at offset +0x70080, and returns 0 or 1.
  Reviewed: 2026-11-12

- `MgrasUserSaveTexData` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex_io.o)` at 0x6cc
  **Inferred.** Role (from name): saves a texture record on a user request. It calls RRM_CheckValidFault at 0x6ec and branches to 0x808 when that result is negative (bltz at 0x6f8). It updates the word at [a0+32]+0x50 with load-linked and store-conditional pairs (0x708/0x714, 0x7b4/0x7c0 and 0x7e4/0x7f0): the first retry branch (0x718) tests the value plus one and the other two (0x7c4 and 0x7f4) the value minus one. It passes the words at a1+0x2c to a1+0x44 as the second to eighth arguments of __glMgr_ReadDMAHQSetup at 0x78c, and returns -1 or 0.
  Reviewed: 2026-11-12

- `mgrasReadDMAPageSetup` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex_io.o)` at 0x81c
  **Inferred.** Role (from name): builds the page table for a DMA read of texture pages and installs it on the board. It allocates with kvpalloc (0x8a4, 0xbb8 and 0xc18), kmem_alloc (0x8f0) and kern_malloc (0x9f4 and 0xad0), calls kvtophyspnum in a loop (0x980) and installs the table with MgrasInstallTxTbl_Kern at 0xb5c. After an allocation returns zero, paths release earlier allocations through kvpfree, kmem_free and kern_free and report through cmn_err with the constant 4 (0xb80, 0xbd4, 0xc38, 0xc98, 0xce4 and 0xd3c). The pointer at a0+0x6d0 is the state block, a size is computed from the byte at [a0+200]+45 shifted left by 12, and the return at 0x858 is the pointer at +16 of the state block or 0.
  Reviewed: 2026-11-12

- `MgrasRestoreTexData` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex_io.o)` at 0xd50
  **Inferred.** Role (from name): replays a saved texture record into the board. It reads byte fields at [a1+8]+0x23 to +0x27. It issues __glMgrasSet writes with codes 0x111, 0x153, 0x158, 0x159, 0x180, 0x18b and 0x1a0 to 0x1a4 and 0x1a9 to 0x1ac before the DMA steps, fifteen in all. The write at 0xea0 builds its value from the bytes at +0x24 and +0x26. It saves RSS through __glMgrSaveRSS at 0xf38, programs the DMA with __glMgr_WriteDMAGESetup (0x10a4) and __glMgr_WriteDMAHQSetup (0x10d4), and waits with __glMgrWaitForDMAWrite (0x10f8). The branch at 0x1100 goes on to a sixteenth __glMgrasSet write, code 0x156 at 0x1130, only when the wait returns zero. When the wait returns nonzero the path at 0x1118 returns -1 or 0.
  Reviewed: 2026-11-12

- `MgrasWaitForRSSIdle` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex_io.o)` at 0x115c
  **Inferred.** Role (from name): waits for the RSS to report idle. It polls the word at a0+0x70000 (lw at 0x116c and 0x11b4) and tests bit 0x2 (branches at 0x117c and 0x11bc). While the bit is clear it calls us_delay with 1 (0x11a0). It reaches cmn_err with the constant 4 (0x11d4) when s5 is zero at the branches at 0x1188 and 0x11ac. How s5 is set is not shown.
  Reviewed: 2026-11-12

- `__Mgr_ReturnMode` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex_io.o)` at 0x11e8
  **Inferred.** Role (from name): leaves a board mode. It writes a control word at a3+0x7000c (sw at 0x1208) and four words at a3+0x70080 (0x1210, 0x1214, 0x1218 and 0x121c). It then calls us_delay(1) and polls the status word at a3+0x70008 until bit 0x20000 is set (0x1220 and 0x1230), and returns the word at a3+0x70014. The four words written are unknown.
  Reviewed: 2026-11-12

- `MgrasFinish` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex_io.o)` at 0x1250
  **Inferred.** Role (from name): finishes the current board operation. It calls __Mgr_ReturnMode with code 0x1fa, arguments 1 and 1, and a0 at entry as the fourth (0x126c), then calls MgrasWaitForRSSIdle with a0 at entry (0x1274) and returns that wait's result.
  Reviewed: 2026-11-12

- `MgrasSaveTexData` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex_io.o)` at 0x128c
  **Inferred.** Role (from name): the save-side counterpart of `MgrasRestoreTexData`. It reads some of the same record fields (pointer at a1+8, bytes at +0x23, +0x24 and +0x26). When a4 is nonzero at the branch at 0x12c4, it issues eight __glMgrasSet writes with codes 0x111, 0x180, 0x181, 0x183, 0x18c, 0x190, 0x191 and 0x1a1 (0x12f4 to 0x13d4), saves RSS through __glMgrSaveRSS at 0x13fc, calls MgrasWaitForRSSIdle (0x1404) and calls __glMgr_ReadDMAHQSetup (0x14cc). When a4 is zero the branch skips ahead to 0x150c. WAIT_FOR_READDMA (0x14f0) is called when __glMgr_ReadDMAHQSetup returns zero, and mgrasReadDMAPageSetup (0x1518) when WAIT_FOR_READDMA returns nonzero. The return at 0x14e8 gives -2, -1 or 0, on the path where __glMgr_ReadDMAHQSetup returns nonzero.
  Reviewed: 2026-11-12

- `MgrasCleanTexBdata` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex_io.o)` at 0x15a8
  **Inferred.** Clears the state block whose pointer is at a0+0x6d0. It loops over a list whose head is read from +24 of the block (0x15d4), freeing with kern_free (0x15f0, 0x15fc) and kvpfree (0x1634). It zeroes the block with bzero for 0xd28 bytes (0x1654) and three sub-areas at +32 (0x100 bytes), +288 (0x800) and +2340 (0x400) (0x1684, 0x1698, 0x16a8). It returns the result of the last bzero call.
  Reviewed: 2026-11-12

- `MgrasInitGblTexMgr` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex_io.o)` at 0x16cc
  **Inferred.** Role (from name): initializes the global texture manager. When the state block pointer at a0+0x6d0 is already set, it calls mutex_destroy on a0+0x6c0 first (0x1710). Otherwise it allocates 0xd28 bytes with kern_malloc (0x16ec), zeroes them with bzero (0x1700), and stores the pointer at a0+0x6d0 (sd at 0x1704). On both paths it then calls init_mutex on a0+0x6c0 (0x1728), calls MgrasCleanTexBdata (0x1730), and returns its result.
  Reviewed: 2026-11-12
