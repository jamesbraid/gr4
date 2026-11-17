# Readings: `usr/cpu/sysgen/IP28boot/mgras.a(mgras_texsr.o)`

One entry per routine, filed here from the reading batches by binary.

- `DeriveInfo` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_texsr.o)` at 0x0
  **Inferred.** Writes through a2: single bytes at +0x23 through +0x28 (`sb` at 0x18, 0x24, 0x30, 0x4c, 0x54, 0x5c, 0x60 and later) and words at +0x8 and +0xc (`sw` at 0xf4 and 0x100). It branches on a flag mask 0x55 (0x34) and on a0 & a3 (0xd0), and returns the byte at +0x24. Role (from name): filling a texture format descriptor from its arguments.
  Reviewed: 2026-11-12

- `MgrasSaveOverlap` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_texsr.o)` at 0x140
  **Inferred.** On one path it calls `MgrasSaveTexData` (0x234), passing a1 as its first argument, and treats a return of -1 as the failing case (`bne` at 0x248 skips otherwise): that path reports through `cmn_err` (0x254), calls `MgrasCleanTexStruct` (0x260) and, when s7 is nonzero, `MgrasResetTxTbl_Kern` with a1 = 2 (0x288) The routine returns 0 or 1. On another path (`beq` at 0x224 when s7 is zero) it calls `MgrasFinish` (0x2b8) and then, when the word at [[a1+1744]+8] is nonzero, `MgrasInstallTxTbl_Kern` with a1 = 2 (0x2e0). Role (from name): saving texture table state for an overlapping texture.
  Reviewed: 2026-11-12

- `MgrasRestoreOverlap` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_texsr.o)` at 0x2f0
  **Inferred.** Takes the mutex at a0+1728 (`mutex_lock` at 0x338) and releases it at 0x640. Calls on different paths include `MgrasSaveTexData` (0x3a0, only when a4 is nonzero at `beq` 0x390), `MgrasCtxsw` (0x44c and 0x59c), `MgrasRestoreTexData` (0x474) and `MgrasInstallTxTbl_Kern` (0x6a4, 0x6e0). It reports through `cmn_err` on three paths (0x5c4, 0x5dc and 0x70c). It returns -1, 0 or 1. Role (from name): the restore side of the overlap pair with `MgrasSaveOverlap`.
  Reviewed: 2026-11-12

- `MgrasCleanTexStruct` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_texsr.o)` at 0x728
  **Inferred.** Follows the pointer at a0+0x6d0, loads a doubleword (`ld` at 0x738) and stores doublewords at +0x10 (`sd` at 0x748) and at other offsets (0x73c, 0x74c, 0x774), and stores a halfword to a1+0 (`sh` at 0x79c). It walks a list with a5 (`beq` at 0x784) and checks a2 for zero (0x750). The stored values are not shown. Role (from name): cleaning a texture structure.
  Reviewed: 2026-11-12
