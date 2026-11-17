# Readings: `usr/cpu/sysgen/IP28boot/mgras.a(mgras_retrace.o)`

One entry per routine, filed here from the reading batches by binary.

- `MgrasRetraceInit` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_retrace.o)` at 0x0
  **Inferred.** Role (from name): sets up the retrace state for one board. It calls sv_waitq (0x44), bzero (0x74, with a1 = 0x690) and init_sv (0xa4). When the word at a0+0xd8 is zero the beq at 0xc goes to 0x118, just before the kern_malloc call at 0x120 with a0 = 0x690. The sv_destroy call at 0x108 is reached when sv_waitq returns zero (beq at 0x4c taken). The facts show a doubleword store at a0+0xd8 (sd at 0xf4) but not what it stores. The return at 0x100 gives the result of mgras_baseindex (call at 0xc0).
  Reviewed: 2026-11-12

- `MgrasRetraceInterrupt` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_retrace.o)` at 0x130
  **Inferred.** Looks like the interrupt entry for retrace, from its name and its call to MgrasRetraceHandler. It loads a byte (lbu at 0x16c and 0x18c) and stores a byte (sb at 0x17c and 0x1a4); the facts do not show the base register, so the address of these accesses is not established. It calls flushbus (0x178). It calls MgrasRetraceHandler (0x158) only when a2 is nonzero (the beq at 0x150 skips it when a2 is zero). The return at 0x1a0 gives the constant 0x900000001fbd901f.
  Reviewed: 2026-11-12

- `MgrasRetraceHandler` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_retrace.o)` at 0x1a8
  **Inferred.** Role (from name): per-retrace work routine for the device at a0. It calls mutex_lock (0x1c4, lock at a0+2280, id 0x19) and mutex_unlock (0x1e0, same lock; the beq at 0x1d8 skips it when the word at [a0+200]+0x44 is zero). A second mutex_unlock at 0x474 feeds the return at 0x48c, and its a0 is not shown in the facts. It reads halfwords at +0x10 of the table at [a0+216] (lh at 0x230 and 0x620; the lh at 0x658 also uses +0x10 but its base is not shown). It calls rrmValidateMGRSwapBuf (0x6b8), rrmValidateBuffer (0x6e4), rrmValidateVideoSync (0x6f8), sv_broadcast (0x64c) and mgras_update_pp1ccv (0x728), each behind branches. On one path it calls us_delay (0x424) with a0 = 1.
  Reviewed: 2026-11-12

- `MgrasValidateAllRetrace` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_retrace.o)` at 0x76c
  **Inferred.** Role (from name): the all-slots form of the retrace validation. It calls mutex_lock (0x78c, id 0x19) and mutex_unlock (0x888) on the lock at a0+2280, sv_broadcast (0x7c8), rrmValidateMGRSwapBuf (0x828), rrmValidateBuffer (0x844) and rrmValidateRetrace (0x868, in a loop whose bne at 0x874 goes back to 0x868). When the word at [a0+136] is nonzero the bne at 0x798 jumps to rrmValidateVideoSync (0x8a8), past the unlock at 0x888. The return at 0x8a0 gives the mutex_unlock result.
  Reviewed: 2026-11-12

- `MgrasCheckSwapTask` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_retrace.o)` at 0x8b8
  **Inferred.** Appears to check that swap slot index a1 is usable. The bltz at 0x8b8 branches when a1 is negative, and the bne at 0x8c4 branches when a1 is below 0x28. The facts show a load of [a0+216] (ld at 0x8d8) and a halfword load at +0x28 (lh at 0x8e8, base not shown). The return at 0x8f8 gives one of 0x0, 0x10 or 0x16, and the facts do not say which path gives which.
  Reviewed: 2026-11-12

- `MgrasSchedSwapTaskCheckReturnValue` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_retrace.o)` at 0x900
  **Inferred.** Checks slot a1 before a swap is scheduled and waits while the slot is busy. It locates a 40-byte slot record at [a0+216] (40 times a1, as the operands of the loads and the sv_wait at 0x930 to 0x980), reads halfwords at +0x28 (lh at 0x930 and 0x994) and the doubleword at +0x38 (ld at 0x944), and waits with sv_wait (0x980) on the sync variable at +0x48 of the record, passing the device lock at a0+2280 as the third argument. It calls mutex_lock on that same lock at 0x98c, after the sv_wait. A cmn_err call at 0x9dc passes 4 as a0 and a format string from .rodata. The return at 0x9b8 gives 0x0, 0x10 or 0x16.
  Reviewed: 2026-11-12

- `MgrasSchedSwapTask` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_retrace.o)` at 0x9f0
  **Inferred.** Role (from name): schedules a swap-buffer request on the device at a0. It calls mutex_mine (0xa70) on the lock at a0+2280 and, when that returns zero, branches to 0xbbc, next to the mutex_lock at 0xbc0. It validates the request through MgrasSchedSwapTaskCheckReturnValue (0xa88). The mutex_unlock at 0xabc is on the path to the return at 0xacc, and a second mutex_unlock at 0xba8 and the mutex_lock at 0xbc0 follow, each behind branches. Later it calls rrmValidateMGRSwapBuf (0xd34, with a2 = [a0+208] + 0x60000) and rrmValidateBuffer (0xd40). The return at 0xacc gives the check result or 0x0.
  Reviewed: 2026-11-12

- `MgrasUnSchedSwapTask` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_retrace.o)` at 0xd90
  **Inferred.** Role (from name): removes a pending swap-buffer request. It calls mutex_lock (0xdf0, id 0x19) and mutex_unlock (0xe80 and 0xea0), all on the lock at a0+2280. The third argument (a2) of the unlock at 0xe80 is the halfword at +0x10 of the slot array entry at [a0+216], minus one, which may be a count being decremented. It returns 0x0, 0x1 or 0x16 (return at 0xdd4).
  Reviewed: 2026-11-12

- `MgrasSchedRetraceEvent` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_retrace.o)` at 0xeb4
  **Inferred.** Schedules a retrace event under the device lock. It calls mutex_lock (0xed8, id 0x19) and has three mutex_unlock sites (0xf20, 0xf44 and 0xf54), each passing the doubleword at [[a0+216]]+0x20 as its second argument. It returns 0 (return at 0xf3c).
  Reviewed: 2026-11-12

- `MgrasUnSchedRetraceEvent` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_retrace.o)` at 0xf64
  **Inferred.** Appears to cancel a retrace event. It has the same lock pattern as MgrasSchedRetraceEvent at 0xeb4: mutex_lock (0xf88, id 0x19, with a2 and a3 still holding their entry values) and mutex_unlock (0xffc, lock at a0+2280). The facts do not show the return value (v0 = ?).
  Reviewed: 2026-11-12

- `MgrasSchedMGRSwapBuf` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_retrace.o)` at 0x1028
  **Inferred.** Thin wrapper that schedules a swap through the general path. It calls MgrasSchedSwapTask (0x1058) with a0 set to the device pointer [a0+32], request code 0x31, and the caller's a1 passed as a4, and returns that call's result (return at 0x1064).
  Reviewed: 2026-11-12

- `mgras_finishtimeout` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_retrace.o)` at 0x106c
  **Inferred.** Timeout callback for a swap-buffer finish. MgrasSchedSwapBuf passes it to timeout at 0x124c with a third argument of 0x5dc. It calls cmn_err (0x1084), vsema on the semaphore at a0+1912 (0x108c) and mgras_error (0x1098, with [a0+208] as the second argument), and returns the mgras_error result.
  Reviewed: 2026-11-12

- `MgrasSchedSwapBuf` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_retrace.o)` at 0x10b0
  **Inferred.** Starts a swap-buffer operation on the device at a0. It takes the device lock with mutex_lock (0x10e0), validates the request through MgrasSchedSwapTaskCheckReturnValue (0x10f0), checks the banks with MgrasValidateBanks (0x1144), and flushes the HQ3 pipe with MgrasFlushHQ3 (0x1178). It sets up semaphores at a0+1808 and a0+1912 (init_sema at 0x120c, psema at 0x11c4, 0x1228 and 0x1234), arms a sleeper timeout with mgras_sleepertimeout (0x121c), and arms the finish timeout with mgras_finishtimeout and a delay of 0x5dc (0x124c). It returns the check result or -1 (return at 0x1124).
  Reviewed: 2026-11-12

- `MgrasSchedSwapBufFinish` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_retrace.o)` at 0x130c
  **Inferred.** Role (from name): completes a swap-buffer operation. It calls MgrasCcvUpdate (0x132c, with a0 to a2 as at entry and a3 = [a0+1888]) unless the word at [a0+1856] is zero (beq at 0x1320). It calls MgrasSchedSwapTask (0x1350) with request code 0x21 and calls cmn_err (0x1368) only when that returns nonzero (beq at 0x1358 skips it). It then calls untimeout (0x1370) on [a0+1908] and vsema (0x1380) on a0+1912, and returns the vsema result (return at 0x1390).
  Reviewed: 2026-11-12

- `MgrasUnSchedSwapBuf` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_retrace.o)` at 0x1398
  **Inferred.** Thin wrapper that cancels a swap request. It calls MgrasUnSchedSwapTask (0x13a0) with the device pointer [a0+32] and the caller's a1 through a3 unchanged, and returns that call's result (return at 0x13ac).
  Reviewed: 2026-11-12

- `MgrasSetDisplayMode` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_retrace.o)` at 0x13b4
  **Inferred.** Role (from name): changes the display mode of the device at [a0+32]. It calls mutex_lock (0x1404, on [a0+32]+2280). On the path that continues from there it calls MgrasSchedSwapTask (0x146c) with request code 0x33 and mutex_unlock (0x148c), and the return at 0x149c gives -0x16 or an unknown value. A separate path, reached when the beq at 0x1440 is taken (a3 zero) and goes to 0x14c0, calls MgrasCheckSwapTask (0x14c4) on the device without that schedule call.
  Reviewed: 2026-11-12

- `MgrasPositionCursor` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_retrace.o)` at 0x1598
  **Inferred.** Role (from name): moves the hardware cursor on the board at a0. It calls mgras_baseindex (0x15c0) and uses the result to index mgras_video_timing (the operands of the branches at 0x16b4 and 0x16d8). It calls mutex_lock (0x15e4, id 0x19) and mutex_unlock (0x1684, with a1 = [a0+208]+0x70000 and a2 = [a0+208]+0x60000). The return at 0x16a0 gives 0.
  Reviewed: 2026-11-12

- `MgrasSetGammaRamp` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_retrace.o)` at 0x1700
  **Inferred.** Role (from name): updates the gamma ramp under the device lock. It calls mutex_lock (0x1734, id 0x19) and mutex_unlock (0x1838), and the return at 0x185c gives 0. The body between the lock and unlock makes no calls. Its stores are halfword stores at +0x61810 (sh at 0x177c) and +0x61890 (sh at 0x178c, 0x17a0 and 0x17ac), base register not shown, and they are the only evidence of what it changes.
  Reviewed: 2026-11-12

- `mgras_update_pp1ccv` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_retrace.o)` at 0x1864
  **Inferred.** Role (from name): refreshes the pp1 CCV state from the block at a0. It reads a byte at [a0+8]+0x2c (lbu at 0x1880). The bne at 0x1874 jumps to the return at 0x1974 when the word at the mgras_leave_ccv symbol is nonzero; the return value is one of [a0+8] or unknown, and the facts do not say which value that path gives. It stores a word at +0x668 (sw at 0x191c) and bytes or words at +0x61c08, +0x61c88, +0x61d08, +0x61f80 and +0x61d00 (base register not shown in the facts).
  Reviewed: 2026-11-12

- `MgrasCcvUpdate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_retrace.o)` at 0x1c20
  **Inferred.** Appears to be the full CCV update for the device at a0, a longer sibling of mgras_update_pp1ccv at 0x1864. The bne at 0x1c38 (the word at the mgras_leave_ccv symbol is nonzero) and the beq at 0x1c44 (the word at [a0+1856] is zero) both jump to 0x1dac, skipping the mutex_lock at 0x1c5c (id 0x19, lock at a0+2280) and the mutex_unlock at 0x1da0. After the lock it stores bytes and words at +0x61c08, +0x61c88, +0x61d08, +0x61f80 and +0x61d00 (base register not shown). The unlock at 0x1da0 takes a2 = [a0+208]+0x70000 and a3 = [a0+208]+0x60000, the same two values MgrasPositionCursor passes at 0x1684 in a1 and a2. The return at 0x1db4 gives an unknown value, [a0+1856] or the mutex_unlock result.
  Reviewed: 2026-11-12
