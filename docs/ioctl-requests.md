# gr4 ioctl request statements

Each entry gives one ioctl request number from the graphics device driver, as the code sends it. The
senders are read from the rendered call sites of the named binary, in impactpc.so (the X driver) or
libGLcore.so (the GL library), with the addresses written as virtual addresses in that binary. The
meaning of a request is taken from the kernel-side command map where the repository has one (see the
established entries), and otherwise is inferred from the sender's argument pattern and the calls around
the send. Where the sender does not settle a sub-fact, the entry marks it unknown.

- `0x6d670001`: **Inferred.** The reserved display mode and device ID request. `vc3Init` sends it at
  0x5e367374, 0x5e3673f0 and 0x5e3674c4 in impactpc.so, and `mgrasValidateReservedMode` sends it at
  0x5e4a47e8. Each of the three `vc3Init` sends is followed by a call to rrmSetReservedDID (0x5e367394,
  0x5e367410 and 0x5e3674e4), and `mgrasValidateReservedMode` returns the result of its own
  rrmSetReservedDID call (0x5e4a4808). The request is inferred to register the reserved mode with the
  driver, because the sends sit beside the reservation calls; the driver side is not read here.

- `0x6d670002`: **Inferred.** The cursor state and cursor image request. `mgrasDisplayCursor` in
  impactpc.so sends it at 0x5e3642d4 with a flags word taken from the per-screen structure at +68 and
  OR-ed with 0x4, and reports a failed call through ErrorF at 0x5e3642f8. `mgrasInstallCursor` in the same
  binary sends it at 0x5e3647b0 and, in the same routine, copies the image with memmove (0x5e3647e4) and
  loads it into SRAM through vc3LoadSRAM (0x5e364970). The request is inferred to carry the cursor state
  and, in the install path, the cursor image. The flags layout is unknown.

- `0x6d670003`: **Inferred.** The per-screen table request, used for gamma ramps and colormap records.
  `mgrasStrGamma8` in impactpc.so sends it at 0x5e3d99fc with a per-screen table entry, and
  `mgrasStrGamma16` sends it at 0x5e3d9d30 with the same argument shape. `mgrasInstall24Map` sends it at
  0x5e49a590 in the same routine that allocates its record with Xalloc (0x5e49a5d4), and `mgrasAttachXvc`
  sends it on the video-channel attach path. The request is inferred to carry table data to the driver,
  because each sender passes a per-screen table or record as its argument. The direction and the
  record layout are unknown.

- `0x6d670007`: **Inferred.** The acquire request for the diagnostic's hardware pipe. `hw_acquire_pipe` in
  `usr/gfx/MGRAS/HQ3/ge11dump.HQ3` at 0x4091b0 sends it on the graphics device descriptor, and only when
  the `simTest` flag is set. Its failure path calls `hw_release_pipe`, `ge11_diag_end` and exit, and a
  successful return stores the handle to `hw_pipe`. The pairing with `hw_release_pipe` is the fact the
  entry rests on; what the driver does with the request is outside this entry.

- `0x6d670008`: **Inferred.** The release request that pairs with `0x6d670007`. `hw_release_pipe` in
  `usr/gfx/MGRAS/HQ3/ge11dump.HQ3` at 0x409114 sends it on the graphics device descriptor unless the
  `simTest` flag is set. On a negative return it prints a message, calls `ge11_diag_end` and exits, and on
  success it stores to `hw_pipe`. The send is conditional on `simTest`, as the acquire request is.

- `0x6d67000a`: **Inferred.** A request with no argument buffer. `mgrasKernInit` in impactpc.so sends it
  at 0x5e3d5bac with a null third argument, after the single-slot request 0x6d67000b at 0x5e3d5b2c and
  before the 0x4000-byte allocation at 0x5e3d5bec. `MakeCurrentRead` in libGLcore.so sends it at
  0xda70bd4 with the same null argument, on a path whose guard is unknown. Being sent once at screen init
  and again on the context-bind path is the fact the inferred reading rests on.

- `0x6d67000b`: **Established.** The single-slot table request. Its first argument word is a flag set
  (bit 2 says a list is given, bit 3 a flush, bits 0 and 1 a release) and its second is the slot number.
  Per the dispatcher reading recorded in docs/OPEN_QUESTIONS.md section 20, for the 6.5.13f and 6.5.30m
  builds named there, the kernel-side senders are `mgrasKernInit`, which installs slot 0 with flags 0xC
  and a 16 KiB region at screen start, and `mgrasCloseScreen`, which releases slot 0 with flags 3. The GL
  library senders `__glMgr_LockSingleDMAPool` and `__glMgr_UnlockSingleDMAPool` use the same request with
  a pool index as the slot, flags 0xD to lock and flags 3 to unlock. In impactpc.so, `mgrasCloseScreen`
  sends it at 0x5e3d5958 and `mgrasKernInit` at 0x5e3d5b2c, with a3 = 0xc and a4 = 0x4000 at the second.

- `0x6d67000c`: **Inferred.** A request with a stack record, sent once at screen init. `mgrasKernInit` in
  impactpc.so allocates a 0x9f8-byte block with memalign (0x5e3d5cf8), zeroes it with memset (0x5e3d5d18)
  and pins it with mpin (0x5e3d5d30), then sends the request at 0x5e3d5d50 with a stack buffer at sp-136.
  A failed call reports through ErrorF (0x5e3d5d8c). The block and the record layout are unknown, so the
  entry says only that the request is sent with the pinned block in place.

- `0x6d67000d`: **Established.** The multi-slot table request, the counterpart of `0x6d67000b` named in the
  same dispatcher reading (docs/OPEN_QUESTIONS.md section 20). The GL library senders are
  `__glMgr_LockMultiDMAPool`, which sends it at 0xdade3dc after an indirect call at 0xdade308, and
  `__glMgr_UnlockMultiDMAPool`, which sends the same request at 0xdade478 and then clears words at the
  selected slot's +0x7d08 and +0x7d04. The texture pool setup `mgrTM_InitDMAPool` sends it to ask the
  device for pool space. `mgrTM_FreeDMAPool` sends it again with a3 = 1 and a4 = 3, which is inferred as
  the release call from the argument pattern.

- `0x6d67000e`: **Established.** The replace table request, named in the dispatcher reading of
  docs/OPEN_QUESTIONS.md section 20 as the request that replaces a table's contents. Its texture-side
  sender is `mgrTM_LockSaveData` in libGLcore.so, which sends the four-word save descriptor at
  0xdabe368 on one of two paths. Which of the two paths is taken is unknown.

- `0x6d67000f`: **Established.** The append table request, named in the dispatcher reading of
  docs/OPEN_QUESTIONS.md section 20. Its texture-side sender is `mgrTM_AppendPages` in libGLcore.so at
  0xdabe1a4, which sends the page records it has built, and on another path sends `0x6d670029` instead.

- `0x6d670010`: **Inferred.** The texture base setting request. `Global_TM_Interface` in libGLcore.so at
  0xdab6974 sends it once, with a texture-memory descriptor read through the pointer at a1+20, after a
  float compare of one descriptor field against zero. `mgrTM_SetBasereg` in the same binary, at 0xdab6d80,
  sends it with a stack buffer built from the byte at a0+0x9200, the word at a0+0x91fc and the halfword at
  +0x52 of the texture state. Both routines share the request. Which field supplies the base value is
  unknown.

- `0x6d670011`: **Inferred.** The timing table request. `mgrasLoadTimingTable` in impactpc.so at 0x5e3d7ee4
  reads 19 scalar values and three arrays from the symbol database (SDBgetSymbolValueScalar at 0x5e3d7fb4
  to 0x5e3d8258, SDBgetSymbolValueArray at 0x5e3d80e8, 0x5e3d82bc and 0x5e3d832c), and then sends the
  request at 0x5e3d8360 with a stack record at sp-352. A negative return branches at 0x5e3d8368 to an
  ErrorF report at 0x5e3d89e4. The request is inferred to pass the timing parameters to the driver,
  because the parameters are read immediately before the send. The record layout is unknown.

- `0x6d670012`: **Inferred.** One of a pair of requests that alternate. `__glMgrAllocERAM` in libGLcore.so
  sends `0x6d670012` and `0x6d670013` alternately, eight of each in pairs, from 0xdae45d8 through 0xdae4b44,
  and `__glMgrim_RenderMode` at 0xda6e7e4 sends both as well. Failed calls go to perror and abort. Which
  request of the pair opens a transfer and which closes it is unknown; the facts show only the alternation.

- `0x6d670013`: **Inferred.** The other half of the request pair with `0x6d670012`. It is sent by the same
  two routines, in the same alternating pattern (`__glMgrAllocERAM` at 0xdae45d8 through 0xdae4b44), so
  the pairing is the fact this entry rests on. Its order within the pair is unknown.

- `0x6d670014`: **Inferred.** A per-screen request with a constant argument. `mgrasSetScrnGlock` in
  impactpc.so sends it at 0x5e3d94f8 with a4 set to 1 and a per-screen field among its arguments, and reports
  a failed call through ErrorF at 0x5e3d94b8 and 0x5e3d9520. The return at 0x5e3d950c passes either the
  ioctl result or the ErrorF result, so the success value is unknown. The direction of the constant (set
  or clear) is unknown.

- `0x6d670015`: **Inferred.** The texture read-back start request. `mgrTM_DoTexRead` in libGLcore.so at
  0xdac0444 sends it to start the transfer. The same routine locks and unlocks a DMA pool around the
  transfer, saves and restores render state with __glMgrSaveRSS and __glMgrRestoreRSS, and waits with
  __glMgrWaitForDMARead. `mgrTM_SR_TexRead` sends the same request. The flags passed in a7 (0x4 and 0x8000)
  are unknown.

- `0x6d670016`: **Inferred.** The video-texture state request, sent only when the state changes.
  `mgrTM_VidTexWait` in libGLcore.so at 0xdabb6d0 compares bytes at +0xb7, +0xb8 and +0xc1 of its request
  with the values cached in `MgrasPrevVidTexture`, and sends the request only when they differ, then
  stores the new values to the cache. `mgrTM_DoCopyTex` sends it at 0xdac1970 on its copy path. The send
  is conditional on the change check in `mgrTM_VidTexWait`.

- `0x6d670017`: **Inferred.** A default-state request. `__glMgrasInitDefaultValues` in libGLcore.so at
  0xda719b8 stores the default state into the context at offsets 0x96c0 through 0x9890, sends selected
  fields with __glMgrasWrite, and sends this request in the same routine. The order of the send relative
  to the field writes is unknown; the send is inferred to be part of the default-state setup.

- `0x6d67001a`: **Inferred.** A request with the constant 1 as its third argument. `MakeCurrentRead` in
  libGLcore.so sends it at 0xda71198, after a printf call at 0xda71180, and reports a failed call through
  perror and abort at 0xda711ac and 0xda711b8. The constant is the only argument fact shown.

- `0x6d67001b`: **Inferred.** A request sent by an unnamed routine at 0x5e3dc1c0 in impactpc.so. The routine
  has no symbol, so its role is unread; the send site is the only fact recorded.

- `0x6d67001c`: **Inferred.** The video-channel request, sent on the Xvc attach path. `mgrasAttachXvc` in
  impactpc.so at 0x5e3e0f44 sends it in the same routine that calls `mgrasLoadTimingTable` (0x5e3d7ee4)
  and `mgrasLoadAndInitICO` (0x5e3dfb90) and sends the `0x6d670003` request. `mgrasLdComb` at 0x5e3de8e8
  and the unnamed routine at 0x5e3d9530 send it too; the 8-bit and 16-bit gamma loaders call that unnamed
  routine at 0x5e3d9a3c and 0x5e3d9d70.

- `0x6d67001e`: **Established.** The texture share request, named as such in the dispatcher reading of
  docs/OPEN_QUESTIONS.md section 20. Its sender is `MakeCurrentRead` in libGLcore.so at 0xda70fc8, with a
  stack buffer at sp-168 as the third argument. The same routine sends `0x6d670027` at 0xda70f54.

- `0x6d67001f`: **Established.** The release request for table entries, named as the release request in the
  dispatcher reading of docs/OPEN_QUESTIONS.md section 20. Its texture-side senders are
  `mgrTM_UnlockSaveData`, which sends at 0xdabe494 a temporary array sized by the halfword at a1+36 and
  frees it afterward, and `mgrTM_UnlockPages`, which sends at 0xdabe608 a page list from a stack buffer at
  sp-8304 and calls perror and abort on failure.

- `0x6d670024`: **Inferred.** The first request of the texture DMA pool setup. `mgrTM_InitDMAPool` in
  libGLcore.so at 0xdabed1c sends it, then queries the page size with getpagesize, clears a 4096-byte block
  and sends `0x6d67000d` to ask the device for pool space. The request is inferred to open the pool setup
  because it is the first device request in that routine.

- `0x6d670027`: **Inferred.** A request sent late in `MakeCurrentRead` in libGLcore.so, at 0xda70f54, with
  a stack buffer at sp-176. The send comes after the sub-state initialisers __glMgrInitEvaluators,
  __glMgrInitPixels, __glMgrInitConvolutionState, __glMgrInitColorTableState and __glMgrInitDLDMA, and
  before the `0x6d67001e` send at 0xda70fc8. The buffer layout is unknown, and this entry does not
  establish what the request does.

- `0x6d670029`: **Inferred.** The page-data request on both the restore path and the append path.
  `RestoreData` in libGLcore.so at 0xdabda38 sends it on one path with the caller's own a2 and a3, and
  aborts on failure. `mgrTM_AppendPages` in the same binary sends it on another path. Because both senders
  hand page data to the device, the request is inferred to load page records. The record format is unknown.
