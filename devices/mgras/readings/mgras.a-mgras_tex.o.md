# Readings: `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex.o)`

One entry per routine, filed here from the reading batches by binary.

- `_MgrasWriteTexBase` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex.o)` at 0x0
  **Inferred.** Stores a doubleword to the register at a0+0x70080 (`sd` at 0x28) and returns that register's address, a0+458880. The stored value's source is not shown by the facts. Role (from name): a one-store helper that writes the texture base register.
  Reviewed: 2026-11-12

- `MgrasAddTexSpace` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex.o)` at 0x2c
  **Inferred.** When the pointer at a1+1128 is nonzero (`bne` at 0x68) it calls `RRM_CheckValidFault` (0x88) and, on a result of zero or more, takes the mutex at [a0+32]+1728 with `mutex_lock` (0xd0), where [a0+32] is the pointer loaded from a0+0x20. On one path it calls `MgrasUpdateTexRefCount`, `_MgrasWriteTexBase` and `MgrasSaveOverlap`. On another, when the pointer chain a1+1128 then +8 is zero (`beq` at 0xec), it allocates a 0x810-byte block and a 0x30-byte record with `kern_malloc` (0x1b0 and 0x1e8) and zeroes each with `bzero` (0x1cc and 0x208) when the allocation is nonzero. It then calls `MgrasPlaceBaseAddr` (0x244) and `DeriveInfo` (0x278) and releases the mutex with `mutex_unlock` (0x2c0). The returns include -0x16 and 0xc, which look like EINVAL and ENOMEM, but that is a reading of the constants, not something the facts state.
  Reviewed: 2026-11-12

- `MgrasDeleteTexSpace` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex.o)` at 0x320
  **Inferred.** Follows the pointer chain a1+1128 and then +8 to a texture record. When both pointers are nonzero (`beq` at 0x32c and 0x338) it takes the mutex at [a0+32]+1728 (`mutex_lock` at 0x354, where [a0+32] is the pointer loaded from a0+0x20) and frees two blocks with `kern_free` (0x464 and 0x46c). A `beq` at 0x490 on a word at [[a0+32]+1744]+2336 leads to `MgrasCleanTexBdata` (0x4b4) when that word is zero, and falls through to `mutex_unlock` (0x49c) otherwise. By name `MgrasAddTexSpace` is its counterpart.
  Reviewed: 2026-11-12

- `MgrasPlaceBaseAddr` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex.o)` at 0x4c4
  **Inferred.** Reads the word at +0xd24 of the structure at a0+0x6d0 (`ld` at 0x4c4, `lw` at 0x4c8 and 0x5a4) and compares an index against 0x100 (signed) at 0x518. It stores a word back into the same field at 0x5c4 and a word through a computed address at 0x59c. The return value is not shown by the facts.
  Reviewed: 2026-11-12

- `MgrasUpdateTexRefCount` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex.o)` at 0x5f0
  **Inferred.** Reads two halfwords from a1 at +0x1a and +0x18 (0x5f0 and 0x5f4), follows the pointer at a0+0x6d0, and reads and writes the word at +0xd24 (`lw` at 0x640, `sw` at 0x660). When a6 is positive (`blez` at 0x608 skips otherwise) it enters a loop whose branch at 0x650 compares the loaded word with a2. Role (from name): adjusting a reference count; the sign convention of a6 is not shown.
  Reviewed: 2026-11-12

- `MgrasVidTextureXfer` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex.o)` at 0x66c
  **Inferred.** Calls `mgras_baseindex` (0x68c), then, when the word at a1+4 is nonzero (`beq` at 0x698), `RRM_CheckValidFault` (0x6a0), and `psema` on the semaphores at [a0+32]+1936 and +1808 (0x6dc, 0x768, 0x774). It arms two timeouts with `timeout`: `mgras_sleepertimeout` at 0x75c with a2 = 1, and `mgras_vdmatimeout` at 0x7bc with a2 = 0x3e8. It calls `mgvVidTextureXfer` (0x7d0, and again at 0x824 with a1 = 0 when the first result is not negative), cancels a timeout with `untimeout` (0x86c) and posts `vsema` (0x87c). It reports through `cmn_err` at 0x850. The return is -1 or 0, and the unit of 0x3e8 is not shown. Role (from name): a video texture transfer.
  Reviewed: 2026-11-12

- `MgrasGetVertLineCnt` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex.o)` at 0x8bc
  **Inferred.** Follows the pointer at a0 to a record and writes a byte at [record+208]+0x62008 (`sb` at 0x8d4), then reads a halfword at [record+208]+0x620b0 (`lhu` at 0x8d8). The name suggests a vertical line count, which fits the halfword read, but the facts do not show the return value's source.
  Reviewed: 2026-11-12

- `MgrasVidTextureXferStart` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex.o)` at 0x8e8
  **Inferred.** Tests the word at a0+8 (`beq` at 0x900). When it is nonzero it writes a word to [record+208]+0x70084 (`sw` at 0x910) and returns 0x9300. When it is zero it calls `__glMgrasSet` at 0x92c with 0x1a6 as a1 and 1 as a2 and a3 and returns that result. Role (from name): the start side of a transfer, paired with `MgrasVidTextureXferDone`.
  Reviewed: 2026-11-12

- `MgrasVidTextureXferDone` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex.o)` at 0x93c
  **Inferred.** Cancels the timeout whose id is at [a0]+1928 with `untimeout` (0x94c) and posts the semaphore at [a0]+1936 with `vsema` (0x95c). It also reads and writes a word at +0x788 (`lw` at 0x950, `sw` at 0x960); `MgrasVidTextureXfer` also accesses offset +0x788 (0x7c8, 0x870 and 0x878), but the facts do not show that the base is the same structure. Role (from name): the completion side of a transfer.
  Reviewed: 2026-11-12

- `mgras_vdmatimeout` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_tex.o)` at 0x974
  **Inferred.** A timeout handler that reports through `cmn_err` at level 4 (0x98c) and then posts the semaphore at a0+1936 with `vsema` (0x994). The message text is in .rodata and is not decoded here. The name suggests a DMA timeout, and the call pattern fits a handler that logs the failure and releases the waiter.
  Reviewed: 2026-11-12
