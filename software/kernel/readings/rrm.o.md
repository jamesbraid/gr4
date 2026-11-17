# Readings: `usr/cpu/sysgen/IP28boot/rrm.o`

One entry per routine, filed here from the reading batches by binary.

- `pane_gc` in `usr/cpu/sysgen/IP28boot/rrm.o` at 0x0
  **Inferred.** Compares a counter at sbss+8 against max_pane (beq at 0x1c) and runs two loops over rows: one tests an index against max_pane (beq at 0x34), the other tests the counter against zero (blez at 0x88) and an index against the counter (beq at 0xa4). The loops read a halfword (lh at 0x54 and 0xc4) and write a halfword (sh at 0x74 and 0xe4) at addresses the rendered facts do not resolve, and both loops stop when the value in a5 equals 8 (beq at 0x70 leaves, bne at 0xe0 repeats while it differs). Role (from name): garbage collection of pane rows; the loop shape is the only code evidence. The return at 0x104 yields a value the rendered facts leave unresolved.
  Reviewed: 2026-11-12

- `bind_pane` in `usr/cpu/sysgen/IP28boot/rrm.o` at 0x10c
  **Inferred.** Takes the pane semaphore at sym(.bss) with psema at 0x138 (a1=0x19) and walks pane slots up to max_pane (blez at 0x14c, bne at 0x1a8), testing each slot against a1 (bne at 0x174) and against the pointer at a0+32 (bne at 0x188). It copies a block with bcopy at 0x208, writes halfword fields (sh at 0x230, 0x238 and 0x278), and calls pane_gc at 0x2fc when the halfword count at sbss+4 is zero (beq at 0x284 taken). It releases the semaphore with vsema at 0x23c, and the return at 0x25c yields a value the rendered code does not name.
  Reviewed: 2026-11-12

- `unbind_pane` in `usr/cpu/sysgen/IP28boot/rrm.o` at 0x314
  **Inferred.** Takes the same pane semaphore as bind_pane, with psema at 0x330 and a1=0x19. It reads and writes the halfword at a0+0x10 (lh at 0x33c, sh at 0x34c) and releases the semaphore with vsema at 0x348, passing the halfword read from a0+16, minus one, as its second argument. It returns vsema's result at 0x358. The shared semaphore and argument suggest it is the release half of bind_pane.
  Reviewed: 2026-11-12

- `clip2pane` in `usr/cpu/sysgen/IP28boot/rrm.o` at 0x360
  **Inferred.** Walks the pane table up to max_pane (blez at 0x368). For each slot it loads the word at +4 (lw at 0x398) and compares it with a0 (bne at 0x3a0); when they match it loads the doubleword at +0x58 (ld at 0x3a8) and compares it with the pointer at a1+32 (bne at 0x3ac, with a6 set from [a1+32]). It returns the slot or 0 at 0x3c0. Reading it as a lookup from a clip record to its pane slot rests on the two compares.
  Reviewed: 2026-11-12

- `pane_cleanup` in `usr/cpu/sysgen/IP28boot/rrm.o` at 0x3c8
  **Inferred.** Calls clip2pane at 0x3d4 with its own four arguments and, when that returns a nonzero record (beq at 0x3e0), takes the semaphore at 0x3f4 and splhi at 0x3fc. It stores to the record (sw at 0x410, sh at 0x420). Only when the halfword at record+0xe is nonzero (lh at 0x408, beq at 0x41c) does it also store at 0x42c and 0x438 and wake waiters with vsema at 0x434 and sv_signal at 0x43c. It then restores the level with splx at 0x448. A nonzero doubleword at record+160 (ld at 0x450, bne at 0x454) leads to rrmSwapUnGroup at 0x47c with the record as its second argument, and the semaphore is then released with vsema at 0x460.
  Reviewed: 2026-11-12

- `pane_setnullclip` in `usr/cpu/sysgen/IP28boot/rrm.o` at 0x48c
  **Inferred.** Loads a pointer from a1+24 and a pointer at +0x58 from it (ld at 0x48c and 0x494), then calls through a register at 0x4a4 with a0+96 and the caller's arguments. The callee is not resolved by the rendered code. It reads the halfword at a0+12 and the word at a0+8 (lh at 0x4b0, lw at 0x4b4), stores back to a0+8 and a0+12 (sw at 0x4c0, sh at 0x4c8), and returns the halfword at a0+12 OR'ed with 0xca. Role (from name): sets a pane's clip to the null state; the rendered facts do not show it.
  Reviewed: 2026-11-12

- `pane_validmask` in `usr/cpu/sysgen/IP28boot/rrm.o` at 0x4d8
  **Inferred.** Returns the halfword at a0+12 (lh at 0x4dc) with no other work; the eight-byte body is a plain accessor. Role (from name): the 16-bit validity mask of a pane record.
  Reviewed: 2026-11-12

- `invalidate_pane` in `usr/cpu/sysgen/IP28boot/rrm.o` at 0x4e0
  **Inferred.** Calls clip2pane at 0x4fc with a1 and a2 as its first two arguments. The beq at 0x510 tests bit 2 of a0 and skips one instruction (0x518), so it does not guard what follows. When the clip result is nonzero (bne at 0x51c) it takes splhi at 0x53c and restores with splx at 0x558. Inside that window it reads the halfword at the clip record's +0xc (lh at 0x548) and stores a halfword there (sh at 0x55c). The return at 0x534 yields 0 or that halfword.
  Reviewed: 2026-11-12

- `invalidate_pane_buffer` in `usr/cpu/sysgen/IP28boot/rrm.o` at 0x568
  **Inferred.** Calls clip2pane at 0x580 with a1 and a2 as its first two arguments. As in invalidate_pane, the beq at 0x590 tests bit 2 of a0 and skips one instruction (0x598), so only the nonzero test on the clip result (bne at 0x59c) decides whether it takes splhi at 0x5b8 and restores with splx at 0x5d4. It reads and writes the halfword at the clip record's +0xc (lh at 0x5c8, sh at 0x5d8) inside that window. It returns 0 at 0x5b0.
  Reviewed: 2026-11-12

- `validate_pane_clip` in `usr/cpu/sysgen/IP28boot/rrm.o` at 0x5e4
  **Inferred.** Calls clip2pane at 0x5f4 and returns 0 when it finds no record (beq at 0x5fc taken). When the record exists and the pointer at record+128 is zero (beq at 0x608) it first allocates a 0xe0-byte block with kern_malloc at 0x784. When the pointer at a2+32 is nonzero (beq at 0x618) it copies with copyin at 0x644: a size check at 0x62c compares the field at a2+24 shifted by 4 against 0xe1 unsigned, and a too-large size takes a store to a2+24 (sw at 0x638) instead of a report. A nonzero copyin result (beq at 0x64c not taken) gets a cmn_err report at 0x664, and the return at 0x680 can yield 0xe. It then takes splhi at 0x688, updates the record's words and halfwords (sw at 0x6c4, 0x6cc, 0x7a8 and 0x7b0, sh at 0x750, 0x760 and 0x7c8), and on some paths signals with sv_signal at 0x764 and vsema at 0x7d4.
  Reviewed: 2026-11-12

- `validate_pane_swapbuf` in `usr/cpu/sysgen/IP28boot/rrm.o` at 0x7e4
  **Inferred.** Calls clip2pane at 0x7f0 and returns 0 when it finds no record (beq at 0x7fc taken). Otherwise it takes splhi at 0x804 and restores with splx at 0x85c. Inside that window it updates halfwords at the record's +0xe and +0xc (lh at 0x814 and 0x820, sh at 0x838 for +0xc and 0x84c for +0xe) and stores a word at +0x14 (sw at 0x82c). The bit-8 test at 0x83c skips sv_signal at 0x850 when the bit is clear (beq taken to 0x858), and vsema at 0x880 runs only on the path where beq at 0x848 is taken. It returns 0 at 0x870.
  Reviewed: 2026-11-12

- `validate_pane_buffer` in `usr/cpu/sysgen/IP28boot/rrm.o` at 0x890
  **Inferred.** A short critical section: it takes splhi at 0x89c, reads and rewrites the halfword at a0+12 (lh at 0x8a8, sh at 0x8bc), broadcasts on a0+72 with sv_broadcast at 0x8b8, and restores with splx at 0x8c4. It returns splx's result at 0x8d0. The routine reads as waking the waiters on the condition at a0+72.
  Reviewed: 2026-11-12

- `validate_my_pane_buffer` in `usr/cpu/sysgen/IP28boot/rrm.o` at 0x8d8
  **Inferred.** Takes splhi at 0x8ec and, when a bit-4 test on a flag word is nonzero (the beq at 0x904 falls through), sleeps with sv_wait_sig at 0x928 on the condition at a0+72. It brackets the sleep with hold_nonfatalsig at 0x914 and release_nonfatalsig at 0x938 and 0x950. A negative result from sv_wait_sig (bltz at 0x930) takes the failure branch, and the routine returns -1 or 0 at 0x948. When the bit-4 test is zero it skips the sleep and goes to splx at 0x96c.
  Reviewed: 2026-11-12

- `validate_my_pane_resources` in `usr/cpu/sysgen/IP28boot/rrm.o` at 0x980
  **Inferred.** Returns 0 at once when a2 has none of the bits in 0x8e (beq at 0x9a0). Otherwise it calls validate_my_pane_buffer at 0x9b4 (a negative result, bltz at 0x9bc, leaves with -1), then takes splhi at 0x9c4 and uses flag tests on the record's halfwords (beq at 0x9f8 against 0xa) to pick among paths that call pane_setnullclip at 0xa4c, 0xb54 and 0xc9c, take a count semaphore with cpsema at 0xa6c, wait with sv_wait_sig at 0xb9c and with psema at 0xc18, and report a message through GfxMessage at 0xae8. Three paths each call cmn_err (a0=4, the process id from proc_pid as a2) and then psignal with a1=9: cmn_err at 0xcec, 0xd3c and 0xdd0, psignal at 0xd00, 0xd50 and 0xde4. The routine returns -2, -1 or 0 at 0xb80; the flag meanings are read from the bit masks only.
  Reviewed: 2026-11-12

- `init_panes` in `usr/cpu/sysgen/IP28boot/rrm.o` at 0xe28
  **Inferred.** Calls init_sema at 0xe4c with a0=sym(.bss), a1=1 and a2=sym(.rodata). In a loop bounded by max_pane (blez at 0xe60, bne at 0xedc) it then calls init_sema at 0xe98 (a1=1, a2=sym(.srdata)+24), init_sv at 0xeac (a1=0, a2=sym(.srdata)+32) and at 0xec0 (a1=0, a2=sym(.rodata)), and spinlock_init at 0xecc (a1=sym(.srdata)+40); the first argument of each loop call is not resolved by the facts. The return at 0xef8 yields the result of init_sema or of spinlock_init.
  Reviewed: 2026-11-12

- `RRM_init_panes` in `usr/cpu/sysgen/IP28boot/rrm.o` at 0xf00
  **Inferred.** Walks pane slots up to max_pane (blez at 0xf14, beq at 0xf44) and, for a slot whose field loaded at 0xf68 equals the doubleword at a0+32 (bne at 0xf6c), stores a halfword (sh at 0xf80, in the delay slot of the beq at 0xf7c) and, when the halfword loaded at 0xf78 is nonzero (beq at 0xf7c not taken), stores an eight-byte word (sd at 0xf88), calls vsema at 0xf90 with a1 holding the max_pane value and a0 not resolved by the facts, and stores a halfword (sh at 0xf94). For a matching slot it also calls rrmSwapUnGroup at 0xfa4 with a0 as its first argument when the value loaded at 0xf30 is nonzero (bne at 0xf34). The return at 0xfc8 yields a value the rendered facts do not name.
  Reviewed: 2026-11-12

- `RRM_init` in `usr/cpu/sysgen/IP28boot/rrm.o` at 0xfd0
  **Inferred.** Reads rrm_maxrn first. When that value is below 2 (bne at 0xff4) it goes straight to init_panes at 0x106c. Otherwise it loops from 0x1010 while the counter in s0 is below rrm_maxrn (bne at 0x1054); each pass calls init_sema at 0x1044 with a1=1 and a2=sym(.rodata) and writes a byte at 0x1048. It returns init_panes' result at 0x107c.
  Reviewed: 2026-11-12
