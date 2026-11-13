# Routine readings: open-question pass

Each entry is read from the rendered instructions of the named build (the held `usr/gfx/arch/IP28GR432/libGLcore.so` and `usr/lib/X11/dyDDX/impactpc.so`). They come from the open-question work on the main-mode word, the transfer-kind selector and the table slot the library locks; the findings are in `questions/README.md` entries 9, 10 and 20. Names are the binaries' own symbols and callee names.

- `mgrasValidateMode` in `usr/lib/X11/dyDDX/impactpc.so` at 0x5e4a4860
  **Established.** Builds the main-mode word for one window ID and sends it to the kernel. It reads the ID from the request record at +0x14 (load at 0x5e4a496c) and the incoming mode word at +0x24 (0x5e4a49b8), tests the ID against 0x20 (0x5e4a49a0), and replaces the colormap block field with a shifted per-visual word (0x5e4a49b4). When a flag halfword in the ID's record is set (0x5e4a49a8) it takes more bits from the record's word at +0xc (0x5e4a49d4). It then sets or clears bit 10, or bit 8 for IDs of 0x20 and above, by comparing a per-visual word with 7 (0x5e4a4a34), and sends ioctl request 0x3f9 at 0x5e4a4a6c. ErrorF reports failures at 0x5e4a4b70 and 0x5e4a4b90.

- `__glMgrMakePixelDesc` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xdaf600c
  **Established.** Fills a pixel-transfer descriptor at its first argument. It stores the second argument, a transfer-kind selector, at offset 0x8c (store at 0xdaf619c) with the other arguments at offsets 0x10, 0x18, 0x20, 0x24, 0x28, 0x2c, 0x30 and 0x34 (stores at 0xdaf6184 to 0xdaf61a4). Selector values 3, 4, 8 and 9 branch past part of the work (beq at 0xdaf6060 to 0xdaf607c). It also marks the descriptor's cached state invalid by storing -1 at offset 0x1a4 (0xdaf617c) when any cached field differs from the new one.

- `__glMgrSlowCopyPixels` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xda85d90
  **Inferred.** Copies pixels through the host path. It multiplies record words and stores the result of comparing the product with 0x8000 as a byte at offset 0xc0 (store at 0xda85e68), locks the transfer buffer with `__glMgr_LockSingleDMAPool` at 0xda85ea8 and again at 0xda85f50 with a pool index that is a register zeroed at 0xda85e7c, and calls `__glMgrMakePixelDesc` at 0xda86100 and at 0xda862cc, where it passes 2. It stores 2 at offset 0x8c (0xda85fbc). The name suggests a fallback copy; the code evidence is the locked buffer and the descriptor build.

- `__glMgrSendPixels` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xda84274
  **Inferred.** Sends pixels to the board and locks a pool slot first. It reads the byte at offset 0xc0 of its first argument (load at 0xda84334) and keeps slot 3 when that byte is zero and slot 0 otherwise in the stack word at offset 0xf0 (stores at 0xda84340 and 0xda84e0c). It then calls `__glMgr_LockSingleDMAPool` at 0xda84f98 and again at 0xda85048, loading the slot at 0xda84f64 and 0xda85040.

- `__glMgrDoReadPixels` in `usr/gfx/arch/IP28GR432/libGLcore.so` at 0xda86564
  **Inferred.** Reads pixels back from the board. It reads the byte at context offset 0x7c7c (load at 0xda865d4) and picks pool 3 when it is zero (set at 0xda869f8) and pool 0 otherwise (zeroed at 0xda865e0). It rewrites the transfer-mode shadow word at context offset 0x97e4 (the base plus 0x10000 less 0x681c) from the format enumerant (stores at 0xda8663c and 0xda866a0), and calls `__glMgr_LockSingleDMAPool` at 0xda866d0 and 0xda86768 with that pool index.
