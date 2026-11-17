# Readings: `usr/cpu/sysgen/IP28boot/mgras.a(mgras_ccv.o)`

One entry per routine, filed here from the reading batches by binary.

- `writeCC` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_ccv.o)` at 0x0
  **Inferred.** 152 bytes at 0x0 to 0x98. It makes two 8-byte stores at offset +0x70080 (0x84, 0x94); the facts do not give the base register. It returns the 8-byte value loaded from sym(.sbss) plus 0x70000 (0x90). Which register this reaches is not settled by these facts.
  Role (from name): writes a value to a control register.
  Reviewed: 2026-11-12

- `writeCC` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_ccv.o)` at 0x0
  **Inferred.** Stores 8 bytes at the global window base plus 0x70080 twice [@0x84] [@0x94], the second in the delay slot of the return. The stored words are built from the low six bits of a0 and from whether a1 equals 1. It returns the window base plus 0x70000 [@0x90].
  Role (from facts): writes two 8-byte values, built from a0 and a1, to offset 0x70080 of the global window [@0x84] [@0x94] and returns the window base plus 0x70000 [@0x90].
  Reviewed: 2026-11-12

- `readCC` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_ccv.o)` at 0x98
  **Inferred.** It makes a store at offset +0x70080 (0xc4), loads a 4-byte word at offset +0x7c574 (0xcc) and makes a 4-byte store at offset +0x0 (0x124) whose base register the facts do not give. The return value at 0x120 is not resolved by the facts.
  Role (from name): the read counterpart of writeCC.
  Reviewed: 2026-11-12

- `readCC` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_ccv.o)` at 0x98
  **Inferred.** Stores 8 bytes at the global window base plus 0x70080 [@0xc4]. It loads the word at the window base plus 0x7c574 [@0xcc], picks out the bits 0x80000000, 0x40000000, 0x800000, 0x400000, 0x8000 and 0x4000 of it and packs them into a six-bit value, which it stores through a0 [@0x124]. It returns with v0 unresolved [@0x120].
  Role (from facts): writes offset 0x70080 [@0xc4], reads the word at offset 0x7c574 [@0xcc] and stores a six-bit value assembled from six of its bits through a0 [@0x124].
  Reviewed: 2026-11-12

- `writeData` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_ccv.o)` at 0x128
  **Inferred.** 56 bytes at 0x128 to 0x160. It makes two 8-byte stores at offset +0x70080 (0x150, 0x15c); the facts do not give the base register. It makes no calls. It returns the 8-byte value loaded from sym(.sbss) plus 0x70000 (0x158).
  Role (from name): the data counterpart of writeCC.
  Reviewed: 2026-11-12

- `writeData` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_ccv.o)` at 0x128
  **Inferred.** Stores 8 bytes at the global window base plus 0x70080 twice [@0x150] [@0x15c], the second in the delay slot of the return. The second value is a0 zero-extended from 32 bits and combined with the 8-byte global at .sbss+8. It returns the window base plus 0x70000 [@0x158].
  Role (from facts): writes two 8-byte values, the second derived from a0, to offset 0x70080 of the global window [@0x150] [@0x15c] and returns the window base plus 0x70000 [@0x158].
  Reviewed: 2026-11-12

- `readData` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_ccv.o)` at 0x160
  **Inferred.** 60 bytes at 0x160 to 0x19c. It makes a store at offset +0x70080 (0x18c), loads a 4-byte word at offset +0x7c574 (0x190) and makes a 4-byte store at offset +0x0 (0x198) whose base register the facts do not give. It returns the value loaded from sym(.sbss)+12 ORed with the constant 0x195c0400000000 (0x194).
  Role (from name): the read counterpart of writeData.
  Reviewed: 2026-11-12

- `readData` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_ccv.o)` at 0x160
  **Inferred.** Stores 8 bytes at the global window base plus 0x70080 [@0x18c]. It loads the word at the window base plus 0x7c574 [@0x190] and stores it unchanged through a0 [@0x198]. It returns the 8-byte value it stored at 0x70080 [@0x194].
  Role (from facts): writes offset 0x70080 [@0x18c], reads the word at offset 0x7c574 [@0x190], stores it through a0 [@0x198] and returns the value it wrote [@0x194].
  Reviewed: 2026-11-12

- `countOnes` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_ccv.o)` at 0x19c
  **Inferred.** The facts show no calls and no memory accesses in this 52-byte routine. They show a branch on a0 == 0 at entry (0x19c), and a loop (0x1ac, 0x1b8) that tests a0 and its low bit (a0 & 1) and exits to the return at 0x1c8, which yields 0 or a value the facts do not resolve.
  Role (from name): counts the set bits of a word.
  Reviewed: 2026-11-12

- `countOnes` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_ccv.o)` at 0x19c
  **Inferred.** Role (from facts): when a0 is zero the routine returns at once with v0 = 0 [@0x19c taken zero] [@0x1c8]. Otherwise it runs a loop whose back edge is the branch at 0x1b8 [@0x1b8 taken zero]. Each pass tests bit 0 of a0 [@0x1b8] and exits to the return once a0 has reached zero [@0x1ac taken zero]. The disassembly shows a0 shifted right by one and v0 incremented when the bit is set, so the return at 0x1c8 gives a count of set bits, though the facts show v0 there only as unknown [@0x1c8].
  Reviewed: 2026-11-12

- `PhaseOne` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_ccv.o)` at 0x1d0
  **Inferred.** 220 bytes at 0x1d0 to 0x2ac. Inside nested loops (branches at 0x1fc, 0x240, 0x260) it calls writeCC with a1=2 (0x208), writeData with a0=-1 (0x218), readData with a0=sp-64 (0x220) and countOnes (0x234). It returns -1 or a value the facts do not resolve at 0x2a4. The purpose of the sequence is not settled by these facts.
  Role (from name): the first phase of a multi-phase sequence.
  Reviewed: 2026-11-12

- `PhaseTwo` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_ccv.o)` at 0x2ac
  **Inferred.** 216 bytes at 0x2ac to 0x384. Inside a loop (branches at 0x2e4, 0x33c) it calls writeCC with a1=1 (0x2f0) and readCC with a0=sp-64 (0x2f8). It returns -2 or a value the facts do not resolve at 0x374. The purpose of the sequence is not settled by these facts.
  Role (from name): the second phase of a multi-phase sequence.
  Reviewed: 2026-11-12

- `median` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_ccv.o)` at 0x384
  **Inferred.** 236 bytes at 0x384 to 0x470. It makes no calls, loads six 4-byte words (0x3d4, 0x3e0, 0x410, 0x418, 0x448, 0x458) and stores two (0x3e4, 0x3f0), with compare-and-branch loops (0x3b0 to 0x42c). The return value at 0x450 is not resolved by the facts.
  Role (from name): selects the median of a set of samples.
  Reviewed: 2026-11-12

- `CCInit` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_ccv.o)` at 0x470
  **Inferred.** 220 bytes at 0x470 to 0x54c. It calls kern_calloc (0x488) with a1=0x4. The beq at 0x494 jumps to 0x53c when the result is 0. When the result is nonzero it loops over PhaseOne (0x4a8) and PhaseTwo on PhaseOne's result (0x4b0) while a counter is below a0, calls median with the calloc result in a0 and its own a0 in a1 (0x4dc), calls kern_free on the calloc result (0x4ec) and calls writeCC with a1=1 (0x524). It returns -1 or a value the facts do not resolve at 0x534.
  Role (from name): a setup routine for the control block.
  Reviewed: 2026-11-12

- `CCInit` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_ccv.o)` at 0x470
  **Inferred.** Role (from facts): allocates a block with kern_calloc, passing a0 and 4 [call 1]. When the result is zero [@0x494 taken zero] it branches to 0x53c [@0x494 taken zero]. Otherwise, when a0 is above zero [@0x4a0 fall], it loops a0 times, calling PhaseOne [call 2] and then PhaseTwo [call 3] on its result and storing the PhaseTwo result in the block [@0x4d0]; the back edge is the branch at 0x4cc [@0x4cc taken]. After the loop it calls median [call 4, @0x494 fall] with the block and a0, then kern_free [call 5, @0x494 fall] on the block, and calls writeCC [call 6, @0x494 fall] with a1 = 1. The return at 0x534 gives -1 or a value the facts leave open [@0x534].
  Reviewed: 2026-11-12

### `MgrasInitCCR` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_ccv.o)` at 0x54c

Grade: inferred.

Role (from name): `MgrasInitCCR` brings up a control block for a CC device. It raises the interrupt level with `splhi` and restores it with `splx` (calls 1 and 2, before the lock), checks a static flag (branch at 0x574) and calls `init_mutex` at 0x75c when the flag is zero, and takes a lock with `mutex_lock` (0x594) that `mutex_unlock` releases at 0x730. It calls `readData` with a buffer at `sp-128` and calls `CCInit(0x33)`. When `CCInit` returns a negative value (branch at 0x67c) it calls `writeCC(0x19, 1)` at 0x6f4. What "CC" stands for is not established by the facts.

Reviewed: 2026-11-12

- `MgrasInitCCR` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_ccv.o)` at 0x54c
  **Inferred.** 548 bytes at 0x54c to 0x770. It calls splhi (0x568), then branches on a word in sym(.sdata) at 0x574. When that word is 0 it jumps to 0x750, where init_mutex is called on sym(.bss) with a1=0 (0x75c). Otherwise it calls splx on splhi's result (0x57c) and mutex_lock on sym(.bss) with a1=0x19 (0x594). Before the matching mutex_unlock (0x730) it makes a store at offset +0x70080 (0x5b0, 0x61c; base register not given), calls readData (0x668), CCInit with a0=0x33 (0x674), writeData (0x688) and writeCC with a0=0x19 and a1=1 (0x6f4). It also has two polling loops that re-read words at offsets +0x70100 and +0x70004 from a pointer loaded from sym(.sbss) until the masked value (& 0x1f, & 0x7f) is 0 (0x6b8, 0x6d8). It returns the result of mutex_unlock (0x748). The meaning of the constants 0x19 and 0x33 is not settled by these facts.
  Role (from name): an initialization routine for the control block.
  Reviewed: 2026-11-12
