# Readings: `usr/cpu/sysgen/IP28boot/gfx.o`

One entry per routine, filed here from the reading batches by binary.

- `gfxtable_readerlock` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x0
  **Inferred.** Raises the interrupt level with splhi at 0xc, then loads a word at offset 0 (lw at 0x18) and stores a word at offset 0 (sw at 0x28), which looks like taking a reader count on the table lock. The rendered facts do not show the base register of that load and store, so that it is the word at a0 is assumed from the callers passing the lock address in a0. It restores the saved level with splx at 0x24 and returns splx's result at 0x34. The arithmetic on the word is not visible in the rendered facts.
  Reviewed: 2026-11-12

- `gfxtable_readerlock` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x0
  **Inferred.** Calls splhi [call 1], loads the word at offset 0 of arg0 [@0x18], stores to that word [@0x28], calls splx [call 2] and returns the result of splx [@0x34].
  Role (from facts): holds the interrupt level with splhi [call 1] and loads the word at offset 0 of arg0 [@0x18] and stores to it [@0x28].
  Reviewed: 2026-11-12

- `gfxtable_readerunlock` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x3c
  **Inferred.** Mirrors gfxtable_readerlock: splhi at 0x48, a load and a store at offset 0 (lw at 0x54, sw at 0x64), then splx at 0x60 and a return of splx's result at 0x70. The rendered facts do not show the base register of the load and store; it is assumed to be the lock word in a0. It reads as the matching release of the reader count taken by the lock routine, inferred from the mirrored load and store pair alone.
  Reviewed: 2026-11-12

- `gfxtable_readerunlock` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x3c
  **Inferred.** Calls splhi [call 1], loads the word at offset 0 of arg0 [@0x54], stores to that word [@0x64], calls splx [call 2] and returns the result of splx [@0x70].
  Role (from facts): holds the interrupt level with splhi [call 1] and loads the word at offset 0 of arg0 [@0x54] and stores to it [@0x64].
  Reviewed: 2026-11-12

- `gfxtable_writerlock` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x78
  **Inferred.** Raises the interrupt level with splhi at 0x84 and spins: it tests the word at a0 (blez at 0x94, bgtz at 0xc4) and, while that word is positive, drops the level with splx at 0xa0, pauses with nano_delay at 0xb0 and retries through splhi at 0xb8. The return at 0xd8 returns an splhi result, which the unlock routine takes back as its second argument (gfxtable_writerunlock passes a1 to splx, and its callers pass the result of this routine). The meaning of the word's sign comes from the branch shape alone.
  Reviewed: 2026-11-12

- `gfxtable_writerunlock` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0xe0
  **Inferred.** Restores the interrupt level passed in a1 by calling splx at 0xe8; the callers pass the return value of gfxtable_writerlock. It returns splx's result at 0xf4 and the rendered code does not write the lock word itself.
  Reviewed: 2026-11-12

- `init_gfx_group_table` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0xfc
  **Inferred.** If the pointer at gfx_group_table+8 is still zero (beq at 0x100, taken when it is zero), it calls kern_malloc at 0x114 with 0x80 as the size and, when the result is zero (the bne at 0x120 falls through), calls cmn_err at 0x12c. Control then reaches bzero at 0x138 with 0x80 as its second argument; the rendered facts do not show bzero's first argument. It then calls spinlock_init at 0x144 on gfx_group_table_lock+4 and, on this path, returns that call's result. When the pointer is already nonzero the routine takes the return at 0x108, whose value is not resolved in the facts.
  Reviewed: 2026-11-12

- `gfx_group_find` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x158
  **Inferred.** Converts its thread handle to a thread-group handle with threadhandle_to_threadgrouphandle at 0x164 and branches on the low four bits of that handle (beq at 0x178). When those bits are zero the branch skips to 0x1f4 without the search. Otherwise it searches the group table under the reader lock taken at 0x18c and released at 0x1d4. Each 8-byte entry is compared against the group handle held in s5 (beq at 0x1b0). The rendered facts do not show which value the function returns on a match.
  Reviewed: 2026-11-12

- `gfx_group_create` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x204
  **Inferred.** Allocates a 0x20-byte group record with kern_malloc at 0x214 and returns 0 when that fails (the return at 0x2c8 returns either 0 or the allocation). On success it calls threadhandle_to_threadgrouphandle at 0x234 on its a0 and spinlock_init at 0x24c on record+16, and makes stores into the record at +8 (sw at 0x244), +0 (sd at 0x250) and +0xc (sw at 0x268); the stored values are not all shown in the rendered facts. The test at 0x26c masks the low four bits of the 8-byte value at record+0: when they are zero it branches to 0x2d0, which the facts do not render. Otherwise it takes the writer lock on gfx_group_table_lock with gfxtable_writerlock at 0x27c, makes further stores (sd at offset 0x18 at 0x2a0, sd at 0x2b8) and releases with gfxtable_writerunlock at 0x2b4. That this is a link into the table is inferred from the lock bracket alone.
  Reviewed: 2026-11-12

- `gfx_group_destroy` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x2d8
  **Inferred.** Loads the 8-byte value at a0 and tests its low four bits (beq at 0x2f4): when they are zero it branches to 0x3b8, which the facts do not render. Otherwise it takes the writer lock on gfx_group_table_lock at 0x310 and walks the table, comparing entries with that 8-byte value as the group handle (beq at 0x344, bne at 0x360; the beq at 0x334 and 0x354 test other words against zero). It writes an 8-byte link (sd at 0x37c) before unlocking at 0x380. It calls spinlock_destroy at 0x3a0 and kern_free at 0x3a8 only when the value in s0 is nonzero (bne at 0x38c), and the rendered facts do not name that value.
  Reviewed: 2026-11-12

- `init_gthread_table` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x3d0
  **Inferred.** Mirrors init_gfx_group_table for the thread table: if the pointer at gthread_table+8 is zero (beq at 0x3d4, taken when it is zero), it calls kern_malloc at 0x3e8 with 0x80 as the size and, when the result is zero (the bne at 0x3f4 falls through), calls cmn_err at 0x404. Control then reaches bzero at 0x410 with 0x80 as its second argument; the rendered facts do not show bzero's first argument. It then calls spinlock_init at 0x41c on gthread_table_lock+4 and, on this path, returns that result. When the pointer is already nonzero the routine takes the return at 0x3dc, whose value is not resolved in the facts.
  Reviewed: 2026-11-12

- `gthread_create` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x430
  **Inferred.** Allocates a 0x28-byte thread record with kern_malloc at 0x440 and returns 0 when that fails (the return at 0x510 returns either 0 or the allocation). It makes stores into the record (sd +0x18 at 0x464, sd +0x10 at 0x468, sw +8 at 0x46c, sd +0 at 0x478, sd +0x20 at 0x4ec); the stored values are not shown in the rendered facts. It looks up the group with gfx_group_find at 0x474 on its a0. When that lookup returns nonzero (bne at 0x47c) control goes to 0x518, where gthread_attach_group is called at 0x51c with the new record and the found group. When the lookup returns zero it falls through to gfxtable_writerlock on gthread_table_lock at 0x484 and gfxtable_writerunlock at 0x4fc. The rendered facts do not show how the attach path rejoins the lock path, or whether either path runs more than once.
  Reviewed: 2026-11-12

- `gthread_create` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x430
  **Inferred.** Calls kern_malloc [call 1] with a0 = 0x28. When that returns zero [@0x44c fall zero] the routine returns at once [@0x510]. When it is nonzero [@0x44c taken nonzero] it stores into the new block at offsets 0x18, 0x10, 0x8, 0x0 and 0x20 [@0x464] [@0x468] [@0x46c] [@0x478] [@0x4ec]. It calls gfx_group_find [call 2, @0x44c taken nonzero] and, when that returns nonzero [@0x47c taken nonzero], calls gthread_attach_group [call 5, @0x47c taken nonzero]. It then calls gfxtable_writerlock [call 3] and gfxtable_writerunlock [call 4] [@0x47c fall zero].
  Role (from facts): allocates a block [call 1] and, when the allocation succeeds [@0x44c taken nonzero], looks up a group [call 2], attaches the block to it when one is found [call 5] [@0x47c taken nonzero], and takes and releases the thread table writer lock [call 3] [call 4].
  Reviewed: 2026-11-12

- `gthread_destroy` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x52c
  **Inferred.** Takes the writer lock on gthread_table_lock at 0x544 and walks the thread list, comparing each entry with the handle in s1 (copied from a0; beq at 0x5b4, bne at 0x5d0). It writes an 8-byte link (sd at 0x5ec) and releases the lock at 0x5f0. It calls kern_free at 0x610 only when the value in s0 is nonzero (bne at 0x5fc), which the rendered facts do not name.
  Reviewed: 2026-11-12

- `gthread_attach_list` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x620
  **Inferred.** When a1 is nonzero (the beq at 0x628 falls through), straight-line code loads a word (lw at 0x634), stores a word at the same offset (sw at 0x63c) and stores an 8-byte value at offset 0x10 (sd at 0x644), then reaches the return at 0x650; the rendered facts do not show the base registers of those accesses. When a1 is zero the beq branches to 0x658 and the routine calls kern_malloc at 0x660 with 0x20 as the size. With a nonzero result (bne at 0x670) it initializes a synchronization variable at header+8 with init_sv at 0x6a8 (arguments include 0 and -1) and a spinlock at header+16 with spinlock_init at 0x6b8. The return at 0x650 returns 0 or 1; the rendered facts do not show which path gives which value.
  Reviewed: 2026-11-12

- `gthread_detach_list` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x6cc
  **Inferred.** Loads the pointer slot at a0+0x10 (ld at 0x6d0) and stores to it again (sd at 0x6d4); the stored value is not in the facts. It then loads the count word in the header that pointer names (lw at 0x6d8), stores a word back at 0x6ec (the value is not shown, presumably the count minus one) and tests whether count-1 is zero (beq at 0x6e8). When it is zero it calls spinlock_destroy at 0x704, sv_destroy at 0x710 and kern_free at 0x718. When it is nonzero the straight-line code reaches the return of 1 at 0x6f4.
  Reviewed: 2026-11-12

- `gthread_detach_list` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x6cc
  **Inferred.** Loads the pointer at offset 0x10 of arg0 [@0x6d0], stores to offset 0x10 of arg0 [@0x6d4] and loads the word at offset 0 of the record it points to [@0x6d8]. It stores that word minus one back to the record [@0x6ec]. When the word minus one is zero [@0x6e8 taken zero] it calls spinlock_destroy [call 1, @0x6e8 taken zero], sv_destroy [call 2, @0x6e8 taken zero] and kern_free [call 3, @0x6e8 taken zero]. It returns 0x1 [@0x6f4].
  Role (from facts): detaches the record from arg0 [@0x6d4], and when the word minus one is zero [@0x6e8 taken zero], destroys the spinlock and the sync variable and frees the block [call 1] [call 2] [call 3].
  Reviewed: 2026-11-12

- `gthread_attach_group` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x728
  **Inferred.** Raises the level with splhi at 0x73c, then loads a word at offset 8 (lw at 0x748) and stores a word at offset 8 (sw at 0x758, after the splx call at 0x754, so likely in its delay slot); the group word at a1+8 is assumed from the callers passing the group in a1. The rendered facts do not show the arithmetic. It restores the level with splx at 0x754 and only then stores 8 bytes at offset 0x18 (sd at 0x764), assumed to be a0+0x18, which is therefore not under the raised level. It returns 1 at 0x774. It looks like linking the thread at a0 to the group at a1, inferred from the offsets alone.
  Reviewed: 2026-11-12

- `gthread_attach_group` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x728
  **Inferred.** Calls splhi [call 1], loads the word at offset 8 of arg1 [@0x748] and stores to that word [@0x758] before calling splx [call 2]. After splx it stores to offset 0x18 of arg0 [@0x764] and returns 0x1 [@0x774].
  Role (from facts): updates the word at offset 8 of arg1 with the interrupt level held [call 1] [@0x758], then, once the level is restored [call 2], stores to offset 0x18 of arg0 [@0x764].
  Reviewed: 2026-11-12

- `gthread_detach_group` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x77c
  **Inferred.** Loads the pointer at a0+0x18 first (ld at 0x77c, before any level change) and tests it (bne at 0x780). When it is nonzero it raises the level with splhi at 0x79c, stores 8 bytes at offset 0x18 (sd at 0x7a0; the stored value is not shown), loads a word at offset 8 of the loaded pointer's target (lw at 0x7b0), restores the level with splx at 0x7b8 and stores a word at offset 8 (sw at 0x7bc). It returns 0 or 1 at 0x7c8. It appears to be the inverse of gthread_attach_group, but the rendered facts do not show the value stored at a0+0x18.
  Reviewed: 2026-11-12

- `gthread_detach_group` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x77c
  **Inferred.** Loads the pointer at offset 0x18 of arg0 [@0x77c]. When that pointer is zero [@0x780 fall zero] the routine returns at once [@0x7c8]. When it is nonzero [@0x780 taken nonzero] it calls splhi [call 1, @0x780 taken nonzero], loads the word at offset 8 of the record it points to [@0x7b0], stores to that word [@0x7bc] and calls splx [call 2, @0x780 taken nonzero].
  Role (from facts): when the pointer at offset 0x18 of arg0 is nonzero [@0x780 taken nonzero], updates the word at offset 8 of the record it points to, with the interrupt level held [call 1] [@0x7b0] [@0x7bc].
  Reviewed: 2026-11-12

- `gthread_find` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x7d0
  **Inferred.** Takes the reader lock on gthread_table_lock at 0x7e4 and scans the thread list, comparing each entry with the handle in s7 (the copy of a0; beq at 0x84c, bne at 0x864). It releases the lock at 0x870 and returns through the exit at 0x884. The rendered return value is an unresolved register, so the no-match result is inferred from the branch shape.
  Reviewed: 2026-11-12

- `gthread_find_gfxp` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x88c
  **Inferred.** Calls gthread_find at 0x894 and returns 0 when it finds nothing (beq at 0x89c). When the pointer at the record's +0x10 is nonzero (beq at 0x8a8), it returns the 8-byte value at that pointer's +0x18 (ld at 0x8b0). Otherwise it returns 0 at 0x8b4.
  Reviewed: 2026-11-12

- `gthread_scan` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x8c4
  **Inferred.** Calls a register-held callback first at 0x8dc with 0 in a2, before any lock is taken, and returns its result at 0x8f0 when it is nonzero (beq at 0x8e4 otherwise goes to 0x8f8). It then takes the reader lock on gthread_table_lock at 0x8fc and calls the callback again at 0x964 (a2 is 0x1) and at 0x998 (a2 is 0x2). The loop test at 0x914 leaves for 0x97c when s1 reaches 0x10, and the beq at 0x93c branches to 0x958 when bit 0x4 of a loaded word is clear. It releases the lock at 0x97c and 0x9a8 (the bne at 0x96c reaches 0x9a8 when the callback result is nonzero). The return at 0x8f0 returns 0 or the callback's result. The callback's target is not resolved in the rendered facts.
  Reviewed: 2026-11-12

- `GfxRegisterBoard` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x9c4
  **Inferred.** Compares the board count in sym(GfxNumberOfBoards) with the limit in sym(GfxBoardLimit) (bne at 0x9e0, taken when the count is below the limit). When the count is at or above the limit it reports through cmn_err at 0x9f0 and returns -1. Otherwise it allocates a 0x48-byte board record with kern_malloc at 0xa04, clears it with bzero at 0xa28, stores its pointer at GfxBoards[count] (sd at 0xa2c), fills fields at offsets 0x0, 0x18, 0x38 and 0x40, and calls RRM_Init at 0xa9c with the count plus one in a3 and the unincremented count in a4 before returning 0. The rendered facts show no store back to the board count.
  Reviewed: 2026-11-12

- `gfx_disp` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0xab4
  **Inferred.** Looks up the thread record for its a0 handle with gthread_find at 0xac0 and walks records reached through the pointers at +0x10 and +0x18. It makes an indirect call at 0xb6c, tests bit 0x8 of a1 (beq at 0xb34) and bit 0x4 of the thread word at +8 (bne at 0xbc8), calls valusema at 0xbe8 and branches on its result (bgez at 0xbf0), and returns 0 or 1 at 0xb98. The purpose of the indirect call, of valusema's use and of the entries it walks is not settled by the rendered facts.
  Reviewed: 2026-11-12

- `gfx_fault` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0xc00
  **Inferred.** Finds the current thread with curthreadhandle at 0xc10 and gthread_find at 0xc1c, then calls RRM_ValidFault at 0xc68 with a1 and a2 as its first two arguments and branches on its result (bltz at 0xc90). It calls a handler pointer read from the record at a1+24, offset 112, through a register at 0xc5c; that call is reached only when the bit 0x1 test at 0xc4c falls through. It calls psema on a1+80 with 0x19 as its second argument at 0xcc0 (reached by the beq at 0xc40) and vsema on a1+80 at 0xcd4 (reached by the beq at 0xc88). The facts do not show whether these two calls bracket the handler call. It returns 0 or 1 at 0xc9c; the meaning of 0x19 and the handler's identity are not settled by the rendered facts.
  Reviewed: 2026-11-12

- `gfx_exit` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0xce8
  **Inferred.** Finds the calling thread with curthreadhandle at 0xcf0 and gthread_find at 0xcfc, then calls GfxListReaderLock at 0xd34 on the list pointer at +0x10 and GfxListReaderUnlock at 0xd60 and 0xe20. On one path it raises the level with splhi at 0xde4 and calls threadgroup_refcnt at 0xdf0, then compares the result with 1 (bne at 0xdfc). It makes indirect calls at 0xd90 and 0xe98, signals with vsema at 0xe4c and returns 0 at 0xdd0. The rendered facts do not show what threadgroup_refcnt does to the count, which branch reaches each indirect call, the order of the later steps or the identity of the callees.
  Reviewed: 2026-11-12

- `gfx_shcheck` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0xea8
  **Inferred.** Finds the thread record with gthread_find at 0xeb4 and jumps to the common exit at 0x1060 when it finds none. Otherwise it walks the group list under GfxListWriterLock at 0x1080 and GfxListWriterUnlock at 0x1070, and calls gthread_detach_list, gthread_detach_group, cleargfxsched_thread and gthread_destroy at 0x103c through 0x1054 and again at 0x10cc through 0x10f8. It reads bit 0x2 of the thread word at +8 (beq at 0x10b4) and brackets the final step with splhi at 0x1108 and splx at 0x1124. It looks like a teardown path for a thread record that is no longer shared, but the rendered facts do not settle that, and the exit value is one of several registers (return at 0x1064).
  Reviewed: 2026-11-12

- `gfx_shdup` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x1134
  **Inferred.** Finds the thread record with gthread_find at 0x113c and returns early through 0x1174 when it is missing (beq at 0x1144), when the pointer at its +0x10 is zero (beq at 0x1150) or when the pointer at +0x18 of that target is zero (beq at 0x115c). It also returns early when the flag word at +0x30 of that second target has bit 0x8 set (the beq at 0x116c branches to 0x1180 only when the bit is clear). Otherwise it creates a new thread record with gthread_create at 0x1180 (a zero result returns early through the beq at 0x1188), attaches it with gthread_attach_list at 0x1198 and calls setgfxsched_thread at 0x11a0. The name suggests a duplicate-handle path, but the rendered facts do not confirm the intent.
  Reviewed: 2026-11-12

- `GfxKiller` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x11b0
  **Inferred.** The branches at 0x11c4, 0x11cc and 0x11d4 send an a2 of 0, 2 or anything other than 1 to 0x1284, next to the return of 0 at 0x128c, so only an a2 of 1 reaches the rest. On that path it reaches GfxListReaderLock at 0x1210 only when the +0x18 word and the +0x10 pointer tested at 0x11fc and 0x1204 are both nonzero, and walks thread records reached through the pointers at +0x10 and +0x18. The match test at 0x1248 compares a loaded word with the record's pointer at +8, and for a match it calls threadhandle_to_proc at 0x1298 and psignal at 0x12a8 with the value loaded from a1 as the signal argument. Other branches also reach 0x1284.
  Reviewed: 2026-11-12

- `gfxcleanup` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x12c0
  **Inferred.** Reads the word at +0x34 of its argument and, when that word is nonzero, passes the argument unchanged to kern_free (0x12d8). Both paths return with no other effect, so the routine frees the object only when the field at +0x34 is set. The meaning of that field is not settled by these facts.
  Reviewed: 2026-11-12

- `GfxOpen` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x12e8
  **Inferred.** Looks up the calling thread's graphics handle through curthreadhandle (0x1310) and gthread_find_gfxp (0x1318); when gthread_find_gfxp returns zero the branch at 0x1324 goes to 0x13f0. The facts do not show whether 0x13f0 is the same exit as the return at 0x1304, which yields 0, 1 or 0x13. Further on it calls curthreadhandle (0x1370), gthread_find (0x1378) and gthread_scan with GfxKiller (0x1388), then streams_unlock (0x1390); delay with the constant 0x64 (0x13ac) sits in a loop that repeats while the value tested at 0x13c0 is nonzero; then streams_lock (0x13c8) and RRM_init_panes (0x1408). It builds a device number from getemajor and makedevice (0x1448, 0x145c). The meaning of the test against 0x2 at 0x12f8 is not settled by these facts. Role (from name): the open entry point of the graphics driver.
  Reviewed: 2026-11-12

- `GfxUnmanage` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x147c
  **Inferred.** Compares the word at +0x48 of the object at +0x20 of its argument with the argument itself (bne at 0x1490), and makes pointer loads and stores at +0x0, +0x8, +0x20 and +0x28 (0x1498 to 0x14c4) whose purpose the facts do not show. It calls curthreadhandle and gthread_find (0x14d8, 0x14e0) and gthread_scan with GfxKiller (0x14f0). On some paths it calls splhi (0x1518, 0x1600), and psema (0x1570, second argument 0x219) and vsema (0x1548, 0x15e4) on the address at +56 of the object at +32. It calls us_delay(2) at 0x1594 in a loop that repeats while the word at +0x68 of that object is nonzero (0x15a4). cn_init is called with 0 and 1 at 0x15c0, and the return at 0x1564 yields one of three values: the value loaded from +0x48 of the object at +0x20, splx's result, or the object at +0x20. Role (from name): the inverse of a manage step, detaching a context from its owning structure; the facts do not show what that structure is.
  Reviewed: 2026-11-12

- `GfxClose` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x1628
  **Inferred.** Follows a chain of pointers that starts at +0x28 of its argument. When the word at +8 of the object that the first word of the object at +0x28 points to equals the object at +0x28 (beq at 0x1650) it calls GfxUnmanage on that object (0x1688). On the other paths, including those that skip the list check through the branches at 0x1638 and 0x1644, it loads the word at +0x34 of the object (0x165c), stores to +0x34 (0x1668; the stored value is not shown), calls gfxcleanup on the object (0x166c) and returns the constant 0 at 0x1680. Role (from name): the close-side entry point that pairs with GfxOpen by name; the facts do not show it undoing anything GfxOpen did.
  Reviewed: 2026-11-12

- `GfxProto` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x1698
  **Inferred.** Compares a tag word read through the pointer at +0x18 of its second argument against 0x66 (0x16c0), 0x53484951 (0x16c8) and 0x53484d51 (0x16d0). When the tag is 0x53484d51 it loads two halfwords at +0x4 and +0x6 and stores them as halfwords at +0x30 and +0x32 (0x16e0 to 0x16f8), then calls qreply (0x1700). When the tag is 0x66 or 0x53484951 the branches go to 0x1714: if the word at +0x18 of the object at +0x28 is nonzero it calls an unknown callee (0x1734), and if that returns nonzero it stores a byte at +0x1e and calls qreply at 0x1754, then returns 0 at 0x1764. When the tag matches none of the three, the branch at 0x16d0 goes to 0x176c, followed by cmn_err at 0x1778 with a format string from .rodata and freemsg at 0x1780. The freemsg at 0x1794 is reached from the branches at 0x171c and 0x173c. The constants are four-byte tags; their meaning is not settled here. Role (from facts): dispatches on a message tag, as the compares at 0x16c0 to 0x16d0 show.
  Reviewed: 2026-11-12

- `GfxWput` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x17a8
  **Inferred.** Reads the byte at +0x1e of the object at +0x28 of its second argument (0x17ac) and compares it against 1 (0x17c4), 0x83 (0x17cc) and 0x86 (0x17d4). For 1 and 0x83 the branches go to 0x1834, next to the GfxProto call (0x1838) with the same two arguments. For 0x86 the branch goes to 0x1808, which loads a byte from the data block at +0x18 (0x180c) and tests bit 0x2: when the bit is clear it jumps to the freemsg at 0x17f0, and when it is set the code reaches flushq with a second argument of 0 (0x1824). The fall-through for any other value calls cmn_err (0x17e8) and then freemsg (0x17f0). It returns 0 or GfxProto's result at 0x1800. Role (from name): the write-side put routine of a STREAMS module, routing message types to GfxProto.
  Reviewed: 2026-11-12

- `GfxWput` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x17a8
  **Inferred.** Loads the byte at offset 0x1e of the record at offset 0x28 of arg1 [@0x17ac]. It reaches GfxProto [call 4] when that byte equals 0x1 [@0x17c4 taken] or 0x83 [@0x17cc taken], and returns the result of GfxProto [@0x1800]. When it equals 0x86 [@0x17d4 taken] it loads the byte at offset 0 of the record at offset 0x18 of arg1 [@0x180c] and calls flushq [call 3] when bit 0x2 of it is set [@0x181c fall]. For any other value it calls cmn_err [call 1]. Those paths call freemsg [call 2, @0x17cc fall] and return 0x0 [@0x1800].
  Role (from facts): forwards the message to GfxProto [call 4] when the byte at offset 0x1e of the record at offset 0x28 of arg1 [@0x17ac] equals 0x1 [@0x17c4 taken] or 0x83 [@0x17cc taken]; otherwise frees the message [call 2, @0x17cc fall].
  Reviewed: 2026-11-12

- `sendMsg` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x1848
  **Inferred.** The branches at 0x1860 and 0x1870 go to 0x1948 when the word at [[a1]+8] is zero, or when bit 0x1 of the word at +0x34 of that object is clear. Otherwise it loads the word at +0xc of its second argument, calls bzero on the pointer at +0x20 of its first argument with the word at +0xc of the second argument as the size (0x18b0), stores a halfword at +0x2 (0x18c4) and a byte at +0x5 (0x18cc), and tests whether the word at +0xc minus one equals -1 (0x18dc, branch to 0x1930). It calls putq with the first argument on the queue at [[a1]+32] (0x193c) and returns putq's result or another value at 0x1950. Role (from name): the helper that GfxDelayedMessage (0x19bc) and GfxSendMessage (0x1af0) call to queue a message.
  Reviewed: 2026-11-12

- `GfxDelayedMessage` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x1958
  **Inferred.** Calls allocb with the constant 0x3 as second argument (0x1978). When allocb returns nonzero it calls sendMsg with the allocated block and its own first argument (0x19bc), then wakeup (0x19c4) and kern_free (0x19cc) on its own first argument. When allocb returns zero it calls bufcall with 0x3 and its own address GfxDelayedMessage as the callback, passing its first argument as the callback argument (0x19a0). If bufcall returns zero the branch at 0x19a8 goes to 0x19e8, and a cmn_err call follows at 0x19f0. Returns 0 or 1 at 0x19e0. Role (from facts): the retry callback that reschedules itself through bufcall, as the self-reference at 0x19a0 shows.
  Reviewed: 2026-11-12

- `GfxSendMessage` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x1a00
  **Inferred.** The general send routine. It calls allocb with the constant 0x3 (0x1a44). When allocb returns nonzero it calls sendMsg with the allocated block (0x1af0). When it returns zero, a second argument of zero goes to a kern_malloc call whose size is ([a0+12] << 2) + 52 (0x1b58), and a nonzero second argument continues to code that includes cmn_err (0x1a70), bcopy (0x1a8c) and bufcall with GfxDelayedMessage as the callback (0x1aac); the branch at 0x1a5c chooses between the cmn_err and bcopy on a register the facts do not resolve. A zero second argument at entry branches to streams_lock (0x1b28, branch at 0x1a1c), and a zero value at 0x1ac8 branches to streams_unlock (0x1b3c). The sleep call at 0x1b0c passes 0x19 as its second argument. cmn_err is also called at 0x1b70 and kern_free at 0x1b78. The facts show only zero versus nonzero for the second argument; its wrappers GfxMessage and GfxIntrMessage pass 0 and 1. Returns 0 or 1 at 0x1ae4.
  Reviewed: 2026-11-12

- `GfxMessage` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x1b8c
  **Inferred.** A thin wrapper. It calls GfxSendMessage at 0x1b94 with its own first, third and fourth arguments and the second argument set to 0, then returns that call's result. The second argument is the flag that the send routine tests.
  Reviewed: 2026-11-12

- `GfxIntrMessage` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x1ba8
  **Inferred.** A thin wrapper like GfxMessage: it calls GfxSendMessage at 0x1bb0 with its own first, third and fourth arguments and the second argument set to 1 instead of 0, and returns that call's result (0x1bbc). Role (from name): by its name an interrupt-context send; the facts show only the constant 1, not the context it is used from.
  Reviewed: 2026-11-12

- `GfxIntrMessage` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x1ba8
  **Inferred.** Calls GfxSendMessage [call 1] with a1 = 0x1 and returns its result [@0x1bbc].
  Role (from facts): forwards to GfxSendMessage [call 1] with a1 = 0x1 and returns that result [@0x1bbc].
  Reviewed: 2026-11-12

- `GfxRqService` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x1bc4
  **Inferred.** Takes a message with getq on its first argument (0x1bd4); when getq returns zero the branch at 0x1bdc goes to 0x1c18. Otherwise it loops: canput on the pointer at +0x18 (0x1be4); when canput returns nonzero it calls an unknown callee reached through pointers loaded from +0x18 (0x1c00) with that pointer and the message, then calls getq again (0x1c08) and repeats while getq returns nonzero (bne at 0x1c10). When canput returns zero the branch at 0x1bec goes to 0x1c30 and putbq is called with the last message (0x1c34). Returns 0 or 1 at 0x1c28. Role (from facts): drains a queue message by message while the consumer at +0x18 accepts them, as the loop through 0x1c10 shows.
  Reviewed: 2026-11-12

- `GfxDetach` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x1c50
  **Inferred.** When the word at +0x18 of its argument is nonzero (0x1c60) and the word at +0x28 is nonzero (0x1c6c), it calls gfxdd_lookup on the pointer at +0x28 (0x1c74); when that returns zero the branch at 0x1c7c goes to ddv_destroy_handle (0x1d3c). RRM_Exit (0x1c84) is reached when the word at +0x28 is zero or when gfxdd_lookup returns nonzero. It calls streams_lock and streams_unlock (0x1c98, 0x1cb0, 0x1cc8, 0x1cdc), with stores to +0x18, +0x0 and +0x20 near the last pair; the stored values are not shown. When the word at +0x28 is nonzero (0x1c90) it makes an indirect call at 0x1cfc. It calls bzero with a size of 0x10 (0x1d14) and GfxUnmanage (0x1d2c); the branch at 0x1ca8 can go straight to GfxUnmanage. Returns the result of streams_unlock at 0x1cec. Role (from name): detaches a context from the device and from its list.
  Reviewed: 2026-11-12

- `gfxinit` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x1d50
  **Inferred.** Calls init_sema on GfxBoardInitSema twice (0x1d78, 0x1d94), calls processors_configured (0x1d9c), then init_gfx_group_table and init_gthread_table (0x1da4, 0x1dac). It calls kern_calloc with the processor count and 0x20 as its first two arguments (0x1db8), and publishes the result with ksym_add (0x1dd4). The branch at 0x1d5c compares GfxDevLimit with 0x20000 as signed values and goes to 0x1dec when 0x20000 is less than GfxDevLimit; cmn_err at 0x1e00 receives 0x4, a format string from .rodata, GfxDevLimit and 0x20000. Returns ksym_add's result at 0x1de4. Role (from name): boot-time initialisation of the graphics driver.
  Reviewed: 2026-11-12

- `gfx_conflict_scan` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x1e14
  **Inferred.** The callback that gfxopen passes to gthread_scan at 0x23e4. When its third argument equals 1 (0x1e1c) it goes to 0x1e30; the return at 0x1e28 yields 0 or 1, and the facts do not tie each value to a condition. It tests the word at +0x18 of its first argument (0x1e34), compares the word at [[+0x18]+0] with the word at +8 of its second argument (0x1e44), tests the word at +0x10 (0x1e60), and calls psema with second argument 0x19 (0x1e8c) and vsema (0x1eb8); the facts do not resolve which semaphore either takes or which argument is the scanned entry. Role (from name): by its name and its use in gfxopen, a check for a conflicting existing context; the meaning of the return value is inferred from the caller, not shown.
  Reviewed: 2026-11-12

- `irisgl_sproc_setup_scan` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x1f14
  **Inferred.** A thread-group scan callback passed by gfxopen to curthreadgroup_scan at 0x248c. It compares the word at [a1] with its first argument (0x1f24); when they are equal it returns 0 at 0x1f2c. When they differ it calls gthread_create (0x1f38), and when that returns nonzero it loads the word at +0x8 of the new thread and stores a word back to +0x8 (0x1f5c, 0x1f68); the value carried into the next call is that word OR 0x2, so the store plausibly sets bit 0x2, but the stored value is not shown. It then calls GfxListWriterLock on the pointer at +16 of its second argument (0x1f6c), gthread_attach_list (0x1f80), GfxListWriterUnlock (0x1f90) and setgfxsched_thread (0x1f98). Role (from name): per-thread setup for a child process; the link to sproc rests on the name.
  Reviewed: 2026-11-12

- `irisgl_sproc_setup_scan` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x1f14
  **Inferred.** Calls gthread_create [call 1] only when the word at offset 0 of arg1 differs from arg0 [@0x1f24 taken]. When that call returns nonzero [@0x1f44 taken nonzero] it calls GfxListWriterLock [call 2, @0x1f44 taken nonzero], gthread_attach_list [call 3, @0x1f44 taken nonzero], GfxListWriterUnlock [call 4, @0x1f44 taken nonzero] and setgfxsched_thread [call 5, @0x1f44 taken nonzero]. It returns 0x0 [@0x1f2c].
  Role (from facts): creates a thread [call 1, @0x1f24 taken] and attaches it under the list writer lock [call 2] [call 3] [call 4] when the creation succeeds [@0x1f44 taken nonzero].
  Reviewed: 2026-11-12

- `gfxopen` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x1fac
  **Inferred.** Calls curthreadhandle (0x1fc4), takes GfxBoardInitSema with psema (0x1fe0, second argument 0x19) and loops against GfxDevLimit (branches at 0x2034 and 0x2040). It calls gthread_find (0x205c) and, on some paths, gthread_detach_list, gthread_detach_group and gthread_destroy (0x2094 to 0x20a4) and gthread_create (0x20b8); then gfx_group_find (0x20c8) and gthread_find_gfxp (0x20dc). The kern_malloc of 0x68 bytes at 0x2148 is skipped by the bne at 0x213c when the gthread_find_gfxp result is nonzero, and another of 0x68 bytes follows at 0x215c. A block is zeroed with bzero (0x217c) and init_sema is called on a block plus 80 (0x21e4). It calls gthread_scan with gfx_conflict_scan (0x23e4), curthreadgroup_scan with irisgl_sproc_setup_scan (0x248c) and setgfxsched_thread (0x2234). cmn_err is called at 0x2324, 0x2358 and 0x2428, and vsema at several places. The return at 0x22ec yields one of 0, 0x6, 0xc or 0x13. The branch structure is not fully traced. Role (from name): the open routine that builds a graphics context for the calling thread group.
  Reviewed: 2026-11-12

- `gfxopen` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x1fac
  **Inferred.** Calls curthreadhandle [call 1] and then psema on GfxBoardInitSema with a1 = 0x19 [call 2]. It reads the word at offset 0 of arg0 [@0x1fe8]. It returns one of 0x0, 0x6, 0xc or 0x13 [@0x22ec].
  Role (from facts): takes GfxBoardInitSema [call 2] after it reads the calling thread's handle [call 1].
  Reviewed: 2026-11-12

- `irisgl_sproc_cleanup` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x24c0
  **Inferred.** A thread-group scan callback passed by gfxclose to gthread_scan at 0x2a6c. When its third argument equals 1 (beq at 0x24c8) it goes to 0x24d8, loads the word at +0x18 of its first argument and compares it with its second argument (0x24dc). When they are equal it calls cleargfxsched_thread on the thread at [a0] (0x24ec), gthread_detach_list (0x24f4) and gthread_detach_group (0x24fc), then loads and stores the word at +0x8 (0x250c, 0x2518); when they differ the branch goes to 0x2520. Returns 0 at 0x2524. Role (from name): per-thread cleanup for a child of the context being closed.
  Reviewed: 2026-11-12

- `irisgl_sproc_cleanup` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x24c0
  **Inferred.** When a2 equals 1 [@0x24c8 taken] and the doubleword at offset 0x18 of arg0 equals a1 [@0x24dc fall], it calls cleargfxsched_thread [call 1, @0x24dc fall], gthread_detach_list [call 2, @0x24dc fall] and gthread_detach_group [call 3, @0x24dc fall]. It returns 0x0 [@0x2524].
  Role (from facts): calls the scheduler cleanup and both thread detach routines [call 1] [call 2] [call 3] only on the path where a2 equals 1 [@0x24c8 taken] and the pointer matches a1 [@0x24dc fall].
  Reviewed: 2026-11-12

- `gfxclose` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x252c
  **Inferred.** Calls curthreadhandle (0x2554), takes GfxBoardInitSema with psema (0x2598), looks up the thread with gthread_find (0x25b8) and calls GfxDetach (0x2728). It takes and releases the list lock with GfxListWriterLock (0x274c) and GfxListWriterUnlock (0x288c), runs gthread_scan over irisgl_sproc_cleanup (0x2a6c), and calls gthread_destroy (0x291c, 0x2a1c). It calls psignal with signal numbers 6 (0x2850) and 9 (0x2b70) and cmn_err with 1 at 0x2b14 and 0x2b58, on conditional paths the facts do not fully trace. Returns 0, 0x6, 0xc or 0x13 at 0x2620. Reading 6 and 9 as the usual Unix SIGABRT and SIGKILL is inferred. Role (from name): the close routine for the calling thread group's graphics context.
  Reviewed: 2026-11-12

- `GfxListWriterLock` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x2b84
  **Inferred.** Calls splhi (0x2b90), loads the word at +4 of its argument (0x2b98) and, while that word is greater than zero (blez at 0x2ba4, bgtz at 0x2bd4), calls sv_wait on a0+8 with the constant 0x19 as second argument and a0+16 as third (0x2bc0), then splhi again (0x2bc8). Returns the result of the most recent splhi at 0x2bec. The facts show no store in this routine. Role (from name): the writer side of a lock whose reader count sits at +4, as the access to the same word in GfxListReaderLock suggests.
  Reviewed: 2026-11-12

- `GfxListWriterLock` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x2b84
  **Inferred.** Calls splhi [call 1] and loads the word at offset 4 of arg0 [@0x2b98]. While that word is positive [@0x2ba4 fall] the routine loops, and each pass calls sv_wait with a0 = a0 + 8 and a1 = 0x19 [call 2, @0x2ba4 fall] and then calls splhi again [call 3, @0x2ba4 fall]. The loop goes back while the word stays positive [@0x2bd4 taken]. It returns the result of splhi [@0x2bec].
  Role (from facts): waits on the sync variable at offset 8 of arg0 while the word at offset 4 is positive [call 2, @0x2ba4 fall].
  Reviewed: 2026-11-12

- `GfxListWriterUnlock` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x2bf4
  **Inferred.** Releases the writer side by calling splx with the priority value passed in its second argument (0x2bfc). Returns splx's result at 0x2c08. It pairs with GfxListWriterLock, which returns the priority that this routine restores.
  Reviewed: 2026-11-12

- `GfxListReaderLock` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x2c10
  **Inferred.** Calls splhi (0x2c1c), loads the word at +4 (0x2c28), calls splx with the saved priority (0x2c34) and stores to +4 (0x2c38); the facts do not show the stored value. Returns splx's result at 0x2c44. Role (from name): the reader side of the lock, where the store to +4 is presumed to increment a reader count.
  Reviewed: 2026-11-12

- `GfxListReaderLock` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x2c10
  **Inferred.** Calls splhi [call 1], loads the word at offset 4 of arg0 [@0x2c28], stores to that word [@0x2c38], calls splx [call 2] and returns the result of splx [@0x2c44].
  Role (from facts): holds the interrupt level with splhi [call 1] and loads the word at offset 4 of arg0 [@0x2c28] and stores to it [@0x2c38].
  Reviewed: 2026-11-12

- `GfxListReaderUnlock` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x2c4c
  **Inferred.** Calls splhi (0x2c58), loads the word at +4 (0x2c64), calls sv_signal on a0+8 (0x2c74), stores to +4 (0x2c78) and calls splx with the saved priority (0x2c80); the facts do not show the stored value. Returns splx's result at 0x2c8c. Role (from name): the reader release, where the store to +4 is presumed to decrement a reader count. The sv_signal is on the same address a0+8 that GfxListWriterLock waits on with sv_wait at 0x2bc0.
  Reviewed: 2026-11-12

- `GfxListReaderUnlock` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x2c4c
  **Inferred.** Calls splhi [call 1], loads the word at offset 4 of arg0 [@0x2c64], stores to that word [@0x2c78], calls sv_signal [call 2] on the sync variable at offset 8 of arg0, calls splx [call 3] and returns its result [@0x2c8c].
  Role (from facts): updates the word at offset 4 of arg0 and signals the sync variable at offset 8 [call 2] [@0x2c64] [@0x2c78].
  Reviewed: 2026-11-12

- `gfxread` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x2c94
  **Established.** The whole routine is a return that sets v0 to the constant 0x36 (decimal 54), with no call and no memory access.
  Reviewed: 2026-11-12

- `gfxwrite` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x2c9c
  **Established.** The whole routine is a return that sets v0 to the constant 0x36 (decimal 54), with no call and no memory access.
  Reviewed: 2026-11-12

- `gfxioctl` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x2ca4
  **Inferred.** Looks up the current thread with `curthreadhandle` and `gthread_find`, then dispatches on the command number in a1 through compares against the constants 0x65 to 0x71 (branches at 0x2d98 to 0x2dc0, 0x2dec to 0x2e04 and 0x2f6c to 0x2f90) with an unsigned 0x3e8 bound at 0x2de0. Some cases copy their argument block in with `copyin_xlate` (calls at 0x305c, 0x30f0, 0x3128, 0x31a8) and others with plain `copyin` (0x3084, 0x31d0). Other calls on the paths are `GfxDetach` (0x30bc), `RRM_Dispatch` (0x2f54), `rrmUnMapGfx` (0x326c), `psema` (four sites), `vsema` (0x30a4, 0x3244), one `ddv_lock` (0x2ee0) and two `ddv_unlock` (0x2ef8, 0x2f34). What each command number means is not settled by the facts.
  Reviewed: 2026-11-12

- `gfxmap` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x35ac
  **Inferred.** An 8-byte body whose only fact is a return with v0 = 0x36 (54). It makes no calls and touches no memory, so the constant is the whole observable behaviour.
  Reviewed: 2026-11-12

- `gfxunmap` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x35b4
  **Inferred.** Same shape as `gfxmap` at 0x35ac: an 8-byte body that returns the constant 0x36 with no calls and no memory access.
  Reviewed: 2026-11-12

- `gfx_shalloc` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x35bc
  **Inferred.** Calls `curthreadhandle` (0x35c8), `splhi` (0x35d4) and `gfx_group_create` (0x35e4), then `gthread_find` (0x35f0). The group is created whether or not the lookup succeeds. Only when `gthread_find` returns nonzero (branch at 0x35fc) does it attach the group with `gthread_attach_group` (0x3608). When the word at +0x10 of the found thread is nonzero (branch at 0x3614) it takes the list-writer lock (`GfxListWriterLock` at 0x361c) and releases it (`GfxListWriterUnlock` at 0x3668). It returns the result of `splx` (0x3678). The name suggests a shared allocation, but the facts show group setup and locking, not a size.
  Reviewed: 2026-11-12

- `gfx_shfree` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x3698
  **Inferred.** Finds the current thread's graphics group with `gfx_group_find` (0x36a8) and destroys it with `gfx_group_destroy` (0x36b0), returning that call's result. It is the teardown counterpart of `gfx_shalloc` at 0x35bc, judged from the matching group calls.
  Reviewed: 2026-11-12

- `gfx_frs_valid_pipenum` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x36c4
  **Inferred.** A 12-byte leaf with no calls. Its return at 0x36c8 has a v0 value the renderer could not resolve, so the facts do not show what it tests or returns. Only the leaf shape is established, and the role is not.
  Reviewed: 2026-11-12

- `irix5_to_gfx_getboardinfo_args` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x36d0
  **Inferred.** An argument translator that branches on a0 at 0x36d8. When a0 is nonzero it follows the pointer at a3+0x10 and copies its fields (lw and lwu at 0x3718 to 0x3728) into the output block (a1, offsets 0x0, 0x8 and 0x10). When a0 is zero it reads the input's first word (lw at 0x36e0) and checks it against 0xc (0x36e8). At or above 0xc it loads the doubleword at +0x8 and stores it at +0x10, and stores a word at +0x4 (base registers not shown in the facts). Below 0xc it goes to a `kern_malloc` call (0x3744, size 0xc). Its one return, at 0x3738, gives 0.
  Reviewed: 2026-11-12

- `irix5_to_gfx_getboardinfo_args` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x36d0
  **Inferred.** When arg0 is nonzero [@0x36d8 taken] it loads the pointer at offset 0x10 of arg3 [@0x3714] and copies three fields of the record it points to into arg1 at offsets 0, 8 and 0x10 [@0x371c] [@0x3724] [@0x3730]. When arg0 is zero [@0x36d8 fall] it loads the word at offset 0 of arg3 [@0x36e0]. When that word is below 0xc, unsigned [@0x36e8 taken], it calls kern_malloc [call 1, @0x36e8 taken] with a0 = 0xc and stores the result at offset 0x10 of arg3 [@0x3750]. Otherwise [@0x36e8 fall] it loads the doubleword at offset 8 of arg3 [@0x36f4] and stores it at offset 0x10 of arg3 [@0x36f8]. It then stores to offset 4 of arg3 [@0x3704]. It returns 0x0 [@0x3738].
  Role (from facts): when arg0 is nonzero [@0x36d8 taken], copies fields from the record at offset 0x10 of arg3 into arg1 [@0x371c] [@0x3724] [@0x3730]; when arg0 is zero [@0x36d8 fall], sets up offset 0x10 of arg3, from a 0xc-byte allocation [call 1] when the word at arg3 offset 0 is below 0xc [@0x36e8 taken].
  Reviewed: 2026-11-12

- `irix5_to_gfx_download_args` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x375c
  **Inferred.** The same translator shape as the routine at 0x36d0, branching on a0 at 0x3764. When a0 is nonzero it copies fields through the pointer at a3+0x10 into the output block: lw and sw pairs at 0x37a4 to 0x37e4, with one lwu and sd pair at 0x37ac. When a0 is zero it checks the input's first word against 0x20 (0x3774). At or above 0x20 it loads the doubleword at +0x8 and stores it at +0x10, and stores a word at +0x4. Below 0x20 it goes to a `kern_malloc` call (0x37f8, size 0x20). Its one return, at 0x37ec, gives 0.
  Reviewed: 2026-11-12

- `irix5_to_gfx_attach_board_args` in `usr/cpu/sysgen/IP28boot/gfx.o` at 0x3810
  **Inferred.** The same translator shape, branching on a0 at 0x381c. When a0 is nonzero it copies a word and a doubleword (lw and sw, lwu and sd at 0x385c to 0x3868) from the pointer at a3+0x10 to the output block. When a0 is zero it checks the input's first word against 0x8 (0x382c). At or above 0x8 it loads the doubleword at +0x8 and stores it at +0x10, and stores a word at +0x4. Below 0x8 it goes to a `kern_malloc` call (0x387c, size 0x8). Its one return, at 0x3870, gives 0.
  Reviewed: 2026-11-12
