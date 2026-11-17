# Readings: `usr/gfx/arch/IP28GR432/libGLcore.so`

One entry per routine, filed here from the reading batches by binary.

### `__glMgrim_RenderMode` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xda6e7e4

Grade: inferred.

Role (from name): `__glMgrim_RenderMode` is the hardware side of `glRenderMode`. It reads and updates the context through the global pointer at 0x1010, and it compares the mode argument against 0x1c00, 0x1c01 and 0x1c02, the standard OpenGL render, feedback and select enums. It calls `__glMgrGetFeedbackData` (call 3) and `__glMgrGetSelectData` (call 16) on separate paths, each with a0 = 0x1c00, and which mode reaches each is not decoded. Errors go through `__glSetError` with 0x500 or 0x502, and ioctl requests 0x6d670012 and 0x6d670013 drive the device, with `perror` and `abort` on failure. The enum mapping is inferred from the standard values, and the ioctl meanings are inferred from the call pattern.

Reviewed: 2026-11-12

### `MakeCurrentRead` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xda70048

Grade: inferred.

`MakeCurrentRead` binds a draw and read drawable pair to the context. It calls `__glPixmapMakeCurrent` and `__glMakeCurrentBuffers`, sizes the window with `__glFindWindowSize`, and sets the draw and read buffers with `__glMgrasDrawBuffer` and `__glMgrasReadBuffer`. A path through the routine initialises hardware state with `mgrTM_Init` and the `__glMgrInit` family, reads environment variables with `getenv` and `strcmp`, and sends several requests in the 0x6d67 family to the device. Which variables and requests matter in each case is not decoded.

Reviewed: 2026-11-12

### `__glMgrasInitDefaultValues` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xda719b8

Grade: inferred.

`__glMgrasInitDefaultValues` fills a context's default state (role from the name and from its call to `__glMgrasInitOpenGLDefaultValues`). It stores words into the context at offsets from 0x94b0 to 0x98a4 (the largest group at 0x96c0 through 0x98a4), and loads defaults from fixed data near 0xdbfb2c8. It sends fields to the device with `__glMgrasWrite`, keyed by token numbers 0x110 to 0x114, 0x116, 0x142 to 0x145, 0x156, 0x157, 0x182, 0x184, 0x185, 0x188, 0x189, 0x18b, 0x192, 0x8c and 0xc000160 to 0xc00016f, and with `__glMgrasSet` for 0x15a, 0x15b and 0x187. It also issues an ioctl with request 0x6d670017. The tokens are the routine's own values, and no register map is cited for them.

Reviewed: 2026-11-12

- `__glMgrSendPixels` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xda84274
  **Inferred.** Sends pixels to the board and locks a pool slot first. It reads the byte at offset 0xc0 of its first argument (load at 0xda84334) and keeps slot 3 when that byte is zero and slot 0 otherwise in the stack word at offset 0xf0 (stores at 0xda84340 and 0xda84e0c). It then calls `__glMgr_LockSingleDMAPool` at 0xda84f98 and again at 0xda85048, loading the slot at 0xda84f64 and 0xda85040.

- `__glMgrSlowCopyPixels` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xda85d90
  **Inferred.** Copies pixels through the host path. It multiplies record words and stores the result of comparing the product with 0x8000 as a byte at offset 0xc0 (store at 0xda85e68), locks the transfer buffer with `__glMgr_LockSingleDMAPool` at 0xda85ea8 and again at 0xda85f50 with a pool index that is a register zeroed at 0xda85e7c, and calls `__glMgrMakePixelDesc` at 0xda86100 and at 0xda862cc, where it passes 2. It stores 2 at offset 0x8c (0xda85fbc). The name suggests a fallback copy; the code evidence is the locked buffer and the descriptor build.

- `__glMgrDoReadPixels` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xda86564
  **Inferred.** Reads pixels back from the board. It reads the byte at context offset 0x7c7c (load at 0xda865d4) and picks pool 3 when it is zero (set at 0xda869f8) and pool 0 otherwise (zeroed at 0xda865e0). It rewrites the transfer-mode shadow word at context offset 0x97e4 (the base plus 0x10000 less 0x681c) from the format enumerant (stores at 0xda8663c and 0xda866a0), and calls `__glMgr_LockSingleDMAPool` at 0xda866d0 and 0xda86768 with that pool index.

### `Global_TM_Interface` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xdab6974

Grade: inferred.

`Global_TM_Interface` appears to pass a texture-memory descriptor to the device. It reads the descriptor through the pointer at `a1+20`, compares a float field against zero, and sends one ioctl with request 0x6d670010. It then writes two state tokens, 0x1a0 and 0x18b, through `__glMgrasWrite`, with values from fixed data near 0xdbfb3e8 and 0xdbfb3cc. The descriptor layout is not decoded, and the name is the only hint that the routine serves all contexts.

Reviewed: 2026-11-12

### `mgrTM_SetBasereg` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xdab6d80

Grade: inferred.

`mgrTM_SetBasereg` sends a texture base setting to the device. It reads a byte at `a0+0x9200`, a word at `a0+0x91fc`, and a halfword from the texture state at +0x52. It issues ioctl request 0x6d670010 with a stack buffer only when the byte is zero and the halfword is positive (branches at 0xdab6da4 and 0xdab6db0). Failures call `perror` and `abort`. It shares its request number with `Global_TM_Interface`, but which field supplies the base value is not decoded.

Reviewed: 2026-11-12

### `mgrTM_VidTexWait` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xdabb6d0

Grade: inferred.

`mgrTM_VidTexWait` appears to deal with video-texture state, and which comparison results lead to its ioctl is not decoded. It compares the bytes at +0xb7 and +0xb8 of its a1 argument with the bytes at the same offsets in the record at the global pointer [0xdbfcaf0], and tests the byte at +0xc1 of a1 against zero; several of these tests return early. It sends ioctl request 0x6d670016 with a stack buffer (call 1), and its error paths call `__glSetError` with 0x502. Near the end it calls `sginap(0)`, which suggests a yield in a wait. What the routine caches, and the condition it waits for, are not established.

Reviewed: 2026-11-12

### `RestoreData` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xdabda38

Grade: inferred.

Role (from name): `RestoreData` writes saved texture-memory data back into the context. It reads fields from the saved record at `a1+24` and its pointer chain, and updates page bookkeeping at `a0+37372` offsets 0x48c and 0x494. A branch at 0xdabda7c compares the word at `a0+37464` with the word at offset 0x4cc of `[a0+37372]`. When they are equal it calls `__glMgrasWrite` with tokens 0x1a1, 0x1a3 and 0x1a2 (the 0x1a3 call sits behind a further comparison at 0xdabdb24), passes 0x74080 in a6 to the last of them, calls `mgrTM_SR_TexLoad` at 0xdabdba4 and returns its result at 0xdabdbc4. When they differ it sends ioctl request 0x6d670029 with the caller's own `a2` and `a3`, and calls `perror` and `abort` on failure. The record layout is not decoded.

Reviewed: 2026-11-12

### `mgrTM_AppendPages` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xdabe1a4

Grade: inferred.

`mgrTM_AppendPages` adds page records to the texture-memory page list. It copies fields from its descriptor arguments (`a1+16` and `a2`) into the context at `a0+0x921c` through `a0+0x922c`, and updates a halfword counter at `a0+37372+0x4d0`. It sends the records to the device with ioctl request 0x6d67000f, and on another path with 0x6d670029. The word "page" comes from the name and the call pattern.

Reviewed: 2026-11-12

### `mgrTM_LockSaveData` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xdabe368

Grade: inferred.

Role (from name): `mgrTM_LockSaveData` records a save descriptor and locks it on the device. It reads fields from `a1` and from the record at `a1+24`, then stores four words at `a0+0x9238` through `a0+0x9244`. It sends the block with ioctl request 0x6d67000e (call 1 at 0xdabe3fc). After a negative return the facts show the same request issued again (call 2 at 0xdabe440), followed by `mgrTM_UnlockPages` (call 3) and then `perror` and `abort`; which of those outcomes lead to `abort` is not decoded. What "lock" means on the device side is inferred from the name.

Reviewed: 2026-11-12

### `mgrTM_UnlockSaveData` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xdabe494

Grade: inferred.

`mgrTM_UnlockSaveData` appears to release the save lock; the name is the only evidence for that. It callocs a temporary array sized by the halfword at `a1+36` with element size 4, and stores words into the context at `a0+0x920c` and `a0+0x9210`. It issues ioctl request 0x6d67001f with a2 = `a0+37380`, and frees the array after the ioctl succeeds. It calls `perror` and `abort` when the allocation or the ioctl fails. `mgrTM_UnlockPages` uses the same ioctl request.

Reviewed: 2026-11-12

### `mgrTM_UnlockPages` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xdabe608

Grade: inferred.

`mgrTM_UnlockPages` updates page-state halfwords in the context at offsets 0x20, 0x28 and 0x4d0. It sends a page list to the device with ioctl request 0x6d67001f, using a stack buffer at `sp-8304`. A buffer that size suggests a list of records, but the record format is not decoded. Failures call `perror` and `abort`.

Reviewed: 2026-11-12

### `mgrTM_InitDMAPool` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xdabed1c

Grade: inferred.

Role (from name): `mgrTM_InitDMAPool` sets up the texture DMA pool. It sends ioctl request 0x6d670024, and when that returns a positive value it queries the page size with `getpagesize`. It clears a 4096-byte block with `bzero` and sends ioctl request 0x6d67000d with a4 = 0x1000. It fills a descriptor for the pool. When the word at offset 0x4d8 of the context record is zero (branch at 0xdabeddc) it calls `acreate` and then `amallopt` with a0 = 5 and a1 = 0x400000. Failure paths call `perror` and `abort`, and the sizes and option numbers are not decoded.

Reviewed: 2026-11-12

### `mgrTM_FreeDMAPool` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xdabefa8

Grade: inferred.

Role (from name): `mgrTM_FreeDMAPool` tears down the pool that `mgrTM_InitDMAPool` builds. It deletes the arena with `adelete`, unmaps and frees the buffers with `munmap` and `free`, and sends ioctl request 0x6d67000d again with a4 = 3, where the init routine's call passes a larger a4 and a3 is 1 in both. It also calls `mgrTM_UnlockPages`, `mgrTM_FreeSaveData`, `perror` and `fprintf`, and aborts on the failure paths. The `adelete`, `munmap` and `free` calls are each behind a branch on a context field. Reading the second use of 0x6d67000d as a release rests on the call pattern, not on a documented request.

Reviewed: 2026-11-12

### `mgrTM_DoTexRead` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xdac0444

Grade: inferred.

`mgrTM_DoTexRead` appears to read texture image data back from texture memory. It takes the texture record at index `a1` from the table at `a0`, sizes the transfer with `__glElementsPerGroup` and `__glBytesPerElement`, and locks and unlocks a DMA pool around it. It saves and restores render state with `__glMgrSaveRSS` and `__glMgrRestoreRSS`, converts texels with `__glMgr_FormatTexels`, and sends ioctl request 0x6d670015, then waits with `__glMgrWaitForDMARead`. The values 0x4 and 0x8000 that later branches compare against `a7` are not identified.

Reviewed: 2026-11-12

- `mgrTM_DoCopyTex` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xdac1544.
  Appears to be the copy-texture worker of the texture path. It reads state from the global at 0x1010, calls mgrTM_VidTexWait, mgrTM_SetLoadBuffer and mgrTM_SendTlMode (0xdac169c, 0xdac16cc, 0xdac16dc), then writes a series of register values through __glMgrasWrite (0xdac1788 to 0xdac18f0). It sends ioctl request 0x6d670016 at 0xdac1970 and calls __glMgrCopyPixels on its copy paths (0xdac1afc, 0xdac1d30, 0xdac1d7c). The error exits raise 0x501 and 0x502 through __glSetError, which suggests argument checks, but the meaning of register numbers 0x1a2 and 0x1a9 to 0x1ac is not established.
  Grade: inferred.
  Reviewed: 2026-11-12

- `mgrTM_SR_TexRead` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xdac2458.
  Appears to read a texture back from the hardware, with a save and restore around the read. It takes a1 as a descriptor (fields at +0x0, +0x4, +0x26, +0x2c, +0x44 and +0x46) and locks a DMA pool slot through __glMgr_LockSingleDMAPool (0xdac24d4, 0xdac259c). It saves and restores pixel state through __glMgrSaveRSS (0xdac26fc) and __glMgrRestoreRSS (0xdac2810), sends ioctl request 0x6d670015 at 0xdac27a0, and waits for the DMA read in __glMgrWaitForDMARead (0xdac27b0). The descriptor field meanings are unconfirmed, and the name alone does not show whether this is the only read variant.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glMgr_LockSingleDMAPool` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xdade018.
  Appears to lock one DMA pool slot. The slot table entries are 16 bytes apart (the index is shifted left by 4). The routine reads words at +0x7d04, +0x7d08 and +0x7d10 of the selected entry and writes words at +0x7d04, +0x7d08 and +0x7d0c (0xdade0d4 to 0xdade0dc, 0xdade11c, 0xdade120). It sends ioctl request 0x6d67000b at 0xdade0f0, and returns 1 on the exits at 0xdade0a8 and 0xdade10c and 0 at 0xdade128. The facts do not show whether 1 means the slot was taken or the pool was busy.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glMgr_UnlockSingleDMAPool` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xdade144.
  Appears to release the slot that __glMgr_LockSingleDMAPool takes. It sends the same ioctl request 0x6d67000b (0xdade1b0). It stores words at +0x7d08 and +0x7d04 (0xdade1d8, 0xdade1e0); the stored values are not in the facts, so these may not be clears, and the facts show no slot index or stride in this routine. On the failure path (the ioctl result is negative) it calls perror (0xdade1ec) and then abort (0xdade1f8), so a failed release stops the process here.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glMgr_LockMultiDMAPool` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xdade2bc.
  Role (from name): lock a set of DMA pool slots, the multi-slot counterpart of the single-slot lock. It makes a call to an unresolved callee at 0xdade308 with a1 scaled by 8, and sends ioctl request 0x6d67000d at 0xdade3dc. A second unresolved call at 0xdade404 and the 0 or 1 return at 0xdade420 are not explained by the facts, so the slot selection rule is unknown.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glMgr_UnlockMultiDMAPool` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xdade434.
  Role (from name): release the set taken by __glMgr_LockMultiDMAPool. It sends ioctl request 0x6d67000d at 0xdade478, the same request the lock uses, and stores words at +0x7d08 and +0x7d04 (0xdade498, 0xdade49c); the stored values are not in the facts, so these may not be clears. Like the single-slot release, its failure path (the ioctl result is negative) calls perror (0xdade4b4) and abort (0xdade4c0).
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glMgrAllocERAM` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xdae455c.
  Role (from name): an allocation in the graphics engine's extended RAM. The facts show no size arithmetic, and the return value at 0xdae4634 is not resolved. The body is mostly ioctl calls: eight pairs, each a request 0x6d670013 followed by a request 0x6d670012, from 0xdae45d8 through 0xdae4b44. The first ioctl of a pair is skipped when a word of the structure behind the global at 0x1010 is zero (for example the beq at 0xdae45ac). The pairs sit in separate blocks reached through branches that compare a1 with constants (for example 0xdae4590, 0xdae4730 and 0xdae4740); which block a given size takes is not worked out here. Its error exits call perror and then abort in a long chain (0xdae4bb4 to 0xdae4de4), and the purpose of the two request codes is unknown.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glMgrMakePixelDesc` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xdaf600c
  **Established.** Fills a pixel-transfer descriptor at its first argument. It stores the second argument, a transfer-kind selector, at offset 0x8c (store at 0xdaf619c) with the other arguments at offsets 0x10, 0x18, 0x20, 0x24, 0x28, 0x2c, 0x30 and 0x34 (stores at 0xdaf6184 to 0xdaf61a4). Selector values 3, 4, 8 and 9 branch past part of the work (beq at 0xdaf6060 to 0xdaf607c). It also marks the descriptor's cached state invalid by storing -1 at offset 0x1a4 (0xdaf617c) when any cached field differs from the new one.
