# Readings: `usr/lib/X11/dyDDX/impactpc.so`

One entry per routine, filed here from the reading batches by binary.

- `mgrasDisplayCursor` in `usr/lib/X11/dyDDX/impactpc.so` at 0x5e363e34.
  Role (from name): update the displayed hardware cursor. The routine has two paths. When the word at +72 of the per-screen record equals a1 (the beq at 0x5e363e9c), it sends ioctl request 0x6d670002 at 0x5e3642d4 with a7 set to a per-screen field at +68 OR-ed with 0x4, continues at 0x5e363efc when the result is not -1, and calls ErrorF with errno at 0x5e3642f8 when it is -1. Otherwise, when a table entry at +20 is nonzero and its halfword at +12 is nonzero (the branches at 0x5e363ea4 and 0x5e363ec0), it makes an unresolved call at 0x5e363eec with that record and two halfword fields. The routine returns 1 at 0x5e364164 and 0x5e364288. The cursor record layout is not decoded, so the field meanings are unknown.
  Grade: inferred.
  Reviewed: 2026-11-12

- `mgrasInstallCursor` in `usr/lib/X11/dyDDX/impactpc.so` at 0x5e364734.
  Role (from name): install a cursor image and load it into SRAM. It sends an ioctl with request 0x6d670002 at 0x5e3647b0 and calls ErrorF with errno at 0x5e364b90 when the result is -1 (the beq at 0x5e3647bc). Otherwise it copies 0x100 bytes with memmove at 0x5e3647e4, only when the word at +144 of the per-screen record is nonzero (the beq at 0x5e3647d0 skips it), and calls vc3LoadSRAM at 0x5e364970 through the same loader address that vc3Init uses (0x5e366cf8). The ErrorF at 0x5e364b90 is the only error report in the facts. The image format and the destination inside SRAM are not established.
  Grade: inferred.
  Reviewed: 2026-11-12

- `vc3Init` in `usr/lib/X11/dyDDX/impactpc.so` at 0x5e366e20.
  Role (from name): initialize the vc3 chip state for a screen. It calls vc3LoadSRAM four times (0x5e366fe8, 0x5e367008, 0x5e367024, 0x5e367040), passing per-screen record fields at offsets 92, 94, 88 and 90 in that order as a3, and calls memset on a 0x1e0-byte table at 0x5e50efd0 (0x5e3670a8). It sends ioctl request 0x6d670001 at 0x5e367374, 0x5e3673f0 and 0x5e3674c4, and calls rrmSetReservedDID at 0x5e367394, 0x5e367410 and 0x5e3674e4 only when the preceding ioctl result is not -1; when it is -1 the failure paths call ErrorF with errno (0x5e367520, 0x5e367558, 0x5e3675a0). A halfword count read from a0+10 bounds two small loops (back branches at 0x5e366f64 and 0x5e366fb4, skipped when the count is not positive by the blez at 0x5e366f40 and 0x5e366f8c), but the chip registers they reach are not decoded.
  Grade: inferred.
  Reviewed: 2026-11-12

- `mgrasCloseScreen` in `usr/lib/X11/dyDDX/impactpc.so` at 0x5e3d5840.
  Role (from name): tear down the per-screen state. It frees allocations through Xfree (0x5e3d58bc to 0x5e3d5918; the one at 0x5e3d58dc only when a word at +104 of the screen record is nonzero) and calls rrmCloseScreen at 0x5e3d58f8. It sends ioctl request 0x6d67000b at 0x5e3d5958 only when the word at XSGIvcScreens[N] is zero, where N is the word read through arg1 (the bne at 0x5e3d5938 skips it). When the ioctl result is negative it goes to an error path that calls ErrorF (0x5e3d59d8); otherwise it unpins and frees a 0x4000-byte buffer (munpin at 0x5e3d5970, free at 0x5e3d597c), but only when the word at 0x5e50e6b0 is nonzero (the beq at 0x5e3d5968 skips both), and returns the result of nfbCloseScreen (called at 0x5e3d5990). When the XSGIvcScreens word is nonzero it calls mgrasResetProc at 0x5e3d59b0 instead of the ioctl path; the facts do not show what follows that call. Whether the freed blocks are the ones mgrasKernInit allocates is not shown.
  Grade: inferred.
  Reviewed: 2026-11-12

- `mgrasKernInit` in `usr/lib/X11/dyDDX/impactpc.so` at 0x5e3d59e8.
  Role (from name): set up the per-screen state at init. It calls AllocateGCPrivate (0x5e3d5a28), AllocateScreenPrivateIndex (0x5e3d5b70) and AllocateGCPrivateIndex (0x5e3d5b88), calls irixKernInit at 0x5e3d5a94, and sends ioctl requests 0x6d67000b at 0x5e3d5b2c and 0x6d67000a at 0x5e3d5bac. It calls memalign with a1 = 0x4000 (0x5e3d5bec, 0x5e3d5c10) and pins the result with mpin of 0x4000 bytes (0x5e3d5c28). It also calls memalign with a1 = 0x9f8 (0x5e3d5cf8), memset and mpin of 0x9f8 bytes (0x5e3d5d18, 0x5e3d5d30), and sends ioctl request 0x6d67000c at 0x5e3d5d50. The sysconf query with argument 0xb at 0x5e3d5cbc is probably a page-size lookup, which the facts do not confirm.
  Grade: inferred.
  Reviewed: 2026-11-12

- `mgrasLoadTimingTable` in `usr/lib/X11/dyDDX/impactpc.so` at 0x5e3d7ee4.
  Appears to read timing parameters from a symbol database and pass them to the driver. It reads 19 scalar values through SDBgetSymbolValueScalar (0x5e3d7fb4 to 0x5e3d8258) and arrays through SDBgetSymbolValueArray (0x5e3d80e8, 0x5e3d82bc, 0x5e3d832c), sizing them with SDBgetSymbolElementCount and allocating with calloc (0x5e3d8298, 0x5e3d8308). It sends an ioctl at 0x5e3d8360 and logs through mgrasDebugf at 20 call sites from 0x5e3d83d8 on. The parameter names and the registers they target are not in the facts.
  Grade: inferred.
  Reviewed: 2026-11-12

- `mgrasSetScrnGlock` in `usr/lib/X11/dyDDX/impactpc.so` at 0x5e3d945c.
  Role (from name): set or clear a screen lock. It sends ioctl request 0x6d670014 at 0x5e3d94f8 with a4 = 1, and calls ErrorF at 0x5e3d9520 when the ioctl result is negative. A separate early path calls ErrorF at 0x5e3d94b8 with a per-screen word and returns the ErrorF result at 0x5e3d94c8; the branches at 0x5e3d949c and 0x5e3d94a4 skip it when that word is zero or equals 1. The return at 0x5e3d950c yields either the ioctl result or the ErrorF result, and the facts do not show which value means success.
  Grade: inferred.
  Reviewed: 2026-11-12

- `mgrasStrGamma8` in `usr/lib/X11/dyDDX/impactpc.so` at 0x5e3d9768.
  Role (from name): load a gamma table for 8-bit output. It calls an unresolved routine at 0x5e3d7408 (0x5e3d99cc) only when a2 is zero (the bne at 0x5e3d99b8 skips it otherwise). It sends ioctl request 0x6d670003 at 0x5e3d99fc with a per-screen table entry, only when the word at 0x5e50c2f4 is nonzero (the beq at 0x5e3d99dc skips it), and calls ErrorF at 0x5e3d9a18 when the result is -1. It also calls the unresolved routine at 0x5e3d9530 (0x5e3d9a3c); the facts do not show whether that call and the 0x5e3d7408 call can both run in one pass. The callees are unresolved, so the table format is unknown.
  Grade: inferred.
  Reviewed: 2026-11-12

- `mgrasStrGamma16` in `usr/lib/X11/dyDDX/impactpc.so` at 0x5e3d9ae4.
  Role (from name): the 16-bit counterpart of mgrasStrGamma8, with the same call shape: a call to the unresolved routine at 0x5e3d7408 (0x5e3d9d00) only when a2 is zero (the bne at 0x5e3d9cec skips it otherwise), ioctl request 0x6d670003 at 0x5e3d9d30 only when the word at 0x5e50c2f4 is nonzero (the beq at 0x5e3d9d10 skips it), ErrorF at 0x5e3d9d4c when the result is -1, and a call to the unresolved routine at 0x5e3d9530 (0x5e3d9d70). The two routines share the callee at 0x5e3d7408, so a shared helper is likely. Whether the only difference is the table width is unconfirmed.
  Grade: inferred.
  Reviewed: 2026-11-12

- `mgrasLdComb` in `usr/lib/X11/dyDDX/impactpc.so` at 0x5e3de8e8.
  Role (from name): combine values from a symbol database into one table; the facts do not give the combination rule. It opens and closes the database (SDBreadOpenDatabase called at 0x5e3debf4, SDBcloseReadDatabase at 0x5e3df1f0), reads 20 scalars and 2 arrays through the SDB getters, and does string work (strcpy, strcat, strlen, strncpy, sprintf) with fopen, fprintf and fclose. It sends one ioctl with request 0x6d67001c at 0x5e3deb90 and logs through mgrasDebugf at 25 call sites.
  Grade: inferred.
  Reviewed: 2026-11-12

- `mgrasAttachXvc` in `usr/lib/X11/dyDDX/impactpc.so` at 0x5e3e0f44.
  Role (from name): probably attaches a video channel (Xvc) to a screen, though the facts only show the calls. It calls mgrasLoadAndInitICO (0x5e3e1294) and mgrasLoadTimingTable (0x5e3e19a0), reads 20 scalars and 2 arrays from the symbol database through the SDB getters, and calls XSGIvcScreenInit (0x5e3e29bc). The ICO call is skipped by the branches at 0x5e3e1264 and 0x5e3e1274. It allocates with Xalloc, Xcalloc and calloc, and sends ioctls with requests 0x6d670003 (0x5e3e2920) and 0x6d67001c (0x5e3e1e44). The use of pow and what the ICO block holds are not explained by the facts.
  Grade: inferred.
  Reviewed: 2026-11-12

- `mgrasInstall24Map` in `usr/lib/X11/dyDDX/impactpc.so` at 0x5e49a434.
  The name suggests installing a 24-bit colormap or mapping record. It sends ioctl request 0x6d670003 at 0x5e49a590, allocates a record with Xalloc at 0x5e49a5d4, and reports failures with ErrorF at 0x5e49a600 and 0x5e49a634. The return at 0x5e49a624 gives either the allocated record or a field read from the screen table, and the facts do not show which.
  Grade: inferred.
  Reviewed: 2026-11-12

- `mgrasValidateReservedMode` in `usr/lib/X11/dyDDX/impactpc.so` at 0x5e4a4774.
  Appears to check a reserved display mode, and also reserves an ID. It sends ioctl request 0x6d670001 at 0x5e4a47e8, the same request code vc3Init sends, then calls rrmSetReservedDID at 0x5e4a4808 with a field at +176 of a per-screen structure. It returns that call's result at 0x5e4a4820, and ErrorF reports the failure cases at 0x5e4a4830 and 0x5e4a4850. Whether the function validates, reserves, or both is not settled by the facts.
  Grade: inferred.
  Reviewed: 2026-11-12

- `mgrasValidateMode` in `usr/lib/X11/dyDDX/impactpc.so` at 0x5e4a4860
  **Established.** Builds the main-mode word for one window ID and sends it to the kernel. It reads the ID from the request record at +0x14 (load at 0x5e4a496c) and the incoming mode word at +0x24 (0x5e4a49b8), tests the ID against 0x20 (0x5e4a49a0), and replaces the colormap block field with a shifted per-visual word (0x5e4a49b4). When a flag halfword in the ID's record is set (0x5e4a49a8) it takes more bits from the record's word at +0xc (0x5e4a49d4). It then sets or clears bit 10, or bit 8 for IDs of 0x20 and above, by comparing a per-visual word with 7 (0x5e4a4a34), and sends ioctl request 0x3f9 at 0x5e4a4a6c. ErrorF reports failures at 0x5e4a4b70 and 0x5e4a4b90.
