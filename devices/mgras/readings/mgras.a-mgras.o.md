# Readings: `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)`

One entry per routine, filed here from the reading batches by binary.

- `MgrasFlushHQ3Poll` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x0
  **Inferred.** A bounded polling loop: it reads device-offset words from a0 at +0x70004 and +0x70104 (lw at 0x24, 0x74, 0xa8), paces each pass with `us_delay` (calls at 0x34 with 0xa and at 0x94 with 0x1), and counts down a loop counter in s5. It returns -1 or 0 (return at 0x60). The name suggests a FIFO flush wait, but the facts show only the polling and pacing, not which register bit it waits for.
  Reviewed: 2026-11-12

- `MgrasFlushHQ3` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0xd4
  **Inferred.** Role (from name): a flush of the HQ3 pipe. It calls `MgrasFlushHQ3Poll` (calls at 0xf8, 0x2f4, 0x314), takes a semaphore with `psema` (0x1c0, 0x248, 0x254), arms `mgras_sleepertimeout` through `timeout` (0x23c), and updates a counter with `ll` and `sc` at [[a0+72]+32]+0x50 (0x164 and 0x170). It also writes words at a1+0x50018 to +0x50024. Whether those writes are device registers is not settled by the facts.
  Reviewed: 2026-11-12

- `MgrasFlushHQ3` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0xd4
  **Inferred.** Calls MgrasFlushHQ3Poll [call 1]. When its result is nonzero [@0x100 fall nonzero] it calls init_sema [call 2, @0x100 fall nonzero] and mgras_fifotimer [call 3, @0x100 fall nonzero]. It returns a value of -0x1 or 0x0 [@0x214].
  Role (from facts): polls the flush [call 1] and sets up a semaphore and a timer only when the poll result is nonzero [call 2] [call 3] [@0x100 fall nonzero].
  Reviewed: 2026-11-12

- `MgrasThrowManagerRssShadow` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x35c
  **Inferred.** A field-by-field copy of about 36 4-byte words. The loads, apparently from the block at a2, run from offset 0x118 up to 0x5ec. The stores go into the block at a0 (offsets 0x4 to 0x3c) and a second set into the block at a1 (offsets 0x4 to 0x9c). The load and store at +0x4 in each group (0x360 and 0x36c, 0x3d8 and 0x3e4) use the same offset, so those words look read and written back in place, though the facts do not show the base registers. The stores at 0x3d0 and 0x3d4 have no matching load. It returns the word at a2+1372 (0x55c). The name points at a shadow copy of manager state, but the facts do not give the field meanings.
  Reviewed: 2026-11-12

- `MgrasSetShadowRgn` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x4a0
  **Inferred.** Calls `useracc` (call at 0x520, a1 = 0x9f8, a2 = 0x111) on the pointer loaded from [a1]. A zero result branches to 0x564 (beq at 0x52c), ahead of the `maputokv` call (0x580, a1 = 0x9f8, a2 = 0x2c). A nonzero result falls through to the return at 0x538, whose value is one of 0xe, the `useracc` result, 0x10 or 0x0 across the paths. An `ll` and `sc` pair at 0x4e0 and 0x4ec (retry branch at 0x4f0) is followed by a test of `MgrasMaxLockableMemPages` for negative (0x500). When it is negative, a second `ll` and `sc` loop (0x544 to 0x554) stores the sum of `MgrasMaxLockableMemPages` and `MgrasXMaxLockableMemPages`. The constants 0x9f8, 0x111 and 0x2c are not decoded.
  Reviewed: 2026-11-12

- `MgrasSetShadowRgn` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x4a0
  **Inferred.** Walks a chain of pointers from a0 (loads at 0x4a4 to 0x4cc and 0x59c to 0x5a4). It calls useracc at 0x520 with a0=[a1], a1=0x9f8, a2=0x111, a3=0 and maputokv at 0x580 with a1=0x9f8, a2=0x2c. It runs an ll/sc loop at 0x4e0 to 0x4f0 and a second at 0x544 to 0x554, whose store-conditional value is the sum of MgrasMaxLockableMemPages and MgrasXMaxLockableMemPages. A bltz at 0x500 tests whether MgrasMaxLockableMemPages is negative. Role (from name): the symbol names suggest locked-memory page accounting. It returns 0xe, the useracc result, 0x10 or 0 (returns at 0x538). The rendered facts do not say what the 0x9f8 and 0x111 constants identify.
  Reviewed: 2026-11-12

- `MgrasSetShadowRgn` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x4a0
  **Inferred.** Loads the pointer at offset 0x70 of arg0 [@0x4a4] and the doubleword at offset 0x438 of the record it points to [@0x4ac]. When that doubleword is nonzero [@0x4b4 fall] it returns 0xe [@0x538]. Otherwise it calls useracc [call 1] with a1 = 0x9f8, a2 = 0x111 and a3 = 0x0, reached when the branch at 0x4d0 is taken [@0x4d0 taken] or when the value at sym(MgrasMaxLockableMemPages) is not negative [@0x500 fall]. When that value is negative [@0x500 taken] it returns 0x10 [@0x538]. When the result of useracc is zero [@0x52c taken zero] it calls maputokv [call 2, @0x52c taken zero] with a1 = 0x9f8 and a2 = 0x2c. It returns one of 0xe, the result of useracc, 0x10 or 0x0 [@0x538].
  Role (from facts): calls maputokv [call 2] only on the path where useracc [call 1] returned zero [@0x52c taken zero].
  Reviewed: 2026-11-12

- `MgrasGE11EramInit` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x5c8
  **Inferred.** Role (from name): sets up the GE11 embedded-RAM block tables. It takes an index from `mgras_baseindex` (call at 0x5e4), calls `freenode` with it in a loop (0x60c; the loop compares a counter against 0x200 at 0x618), calls `getnode` with it (0x664), passes the result to `insertnode` (0x690) and `freeblock` (0x69c), then calls `MgrasGlContextInit` (0x6a8) and returns its result. A 0x10000 constant sits in a1 at the `getnode` call; the facts do not show it as a size.
  Reviewed: 2026-11-12

- `MgrasGE11EramInit` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x5c8
  **Inferred.** Calls mgras_baseindex [call 1, @0x5e4] and freenode [call 2, @0x60c]. It gets a node from getnode with 0x10000 as its second argument [call 3, @0x664] and links it in with insertnode [call 4, @0x690]. The node's fields are stored at +0x10 [@0x694], +0x19 [@0x688] and +0x1a [@0x680]. It calls MgrasGlContextInit [call 6, @0x6a8] and returns its result [@0x6b4].
  Role (from facts): passes 0x10000 to getnode [call 3, @0x664], records fields in the node it gets back [@0x694] [@0x688], links it in with insertnode [call 4, @0x690], and then runs the graphics-context initializer [call 6, @0x6a8].
  Reviewed: 2026-11-12

- `freenode` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x6bc
  **Inferred.** Stores at a0+0x0 (0x6d0) and a0+0x8 (0x6e4), and loads (0x6d8) then stores (0x6dc) the slot at `.bss` + a1*8 + 0x8000. The values stored are not resolved by the facts. The return value is `.bss` + a1*8 + 0x10000, which is 0x8000 past that slot. It reads like a push onto a per-index free list, judged from the store pattern.
  Reviewed: 2026-11-12

- `getnode` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x6e8
  **Inferred.** Loads the word at `.bss` + a0*8 + 0x8000 (ld at 0x700), reads the word at +0x8 of what it loaded (ld at 0x704), stores that second word back into the slot (sd at 0x70c), and returns the word it first loaded (v0 at 0x708), not the second. Read as popping the head of a per-index free list, it pairs with `freenode` at 0x6bc, judged from the load and store pattern.
  Reviewed: 2026-11-12

- `insertnode` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x710
  **Inferred.** Computes a table slot from the byte at a0+0x19 and the value in a1, using ((byte + 9*a1) << 5) + `.bss` (ld at 0x730), then walks a list from that slot comparing the halfword at a0+0x1a (signed, branch at 0x748) with a halfword loaded from each list node (branches at 0x734 to 0x758). Four stores (sd at 0x768, 0x76c, 0x770 and 0x778, two of them at +0x8 and +0x0) link the node in. The meaning of the key fields is not settled.
  Reviewed: 2026-11-12

- `removenode` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x77c
  **Inferred.** Unlinks a node from a doubly linked list. It loads the pointers at +0x0 and +0x8 of a0 (ld at 0x780 to 0x790) and cross-stores them into the neighbours' +0x8 and +0x0 (sd at 0x788 and 0x798), then returns the value at [a0+8].
  Reviewed: 2026-11-12

- `findblock` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x79c
  **Inferred.** Walks a bucket list at ((a1 + 9*a2) << 5) + `.bss`. It compares the address slot+0x7f10 with the word loaded from slot+0x7f18 (beq at 0x7bc, bne at 0x7d4), and at each node compares a halfword it loads (lhu at 0x7c4) with a0 (beq at 0x7c8). 0 is one of its return values (return at 0x7e0); the other is not resolved by the facts.
  Reviewed: 2026-11-12

- `findbuddy` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x7f0
  **Inferred.** Reads the order byte at a0+0x19 and the halfword at a0+0x1a (lbu at 0x7f4, lhu at 0x7f8), then calls `findblock` (call at 0x80c) with the order byte as a1 and its own a1 as a2, and returns the result. The facts do not resolve what is passed as a0. It looks up the buddy of a block by its order and index, judged from the call and the name.
  Reviewed: 2026-11-12

- `freeblock` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x820
  **Inferred.** Stores a byte at a0+0x18 (sb at 0x824) and looks up its buddy with `findbuddy` (call at 0x834). It returns early when `findbuddy` returns 0 (beq at 0x83c) or when the buddy's byte at +0x18 is nonzero (the beq at 0x848 continues only when it is zero). Otherwise it unlinks both with `removenode` (calls at 0x860, 0x868), calls `freenode` on the block and on the buddy (0x874, 0x880), and, when the word at a0+0x10 is nonzero (beq at 0x88c), recurses through `freeblock` on that pointer (call at 0x898). That reads as the merge half of a buddy allocator, inferred from the buddy lookup and the recursion.
  Reviewed: 2026-11-12

- `logbase2` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x8a8
  **Inferred.** Role (from name): a base-2 logarithm. A non-positive argument takes a separate path (blez at 0x8a8). Otherwise it runs a loop (bne at 0x8b8) and then a compare against a0 (branch at 0x8cc) that decides the result. The return at 0x8dc is either 0x1 or a value the renderer could not resolve, so the exact rounding is not settled.
  Reviewed: 2026-11-12

- `getblock` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x8ec
  **Inferred.** Role (from name): the allocation half of a buddy allocator. It calls `logbase2` (call at 0x904) and searches orders up to 0x11 (signed bounds at 0x920 and 0x980). It inserts nodes with `insertnode` (calls at 0x994, 0x9a0, 0xaec, 0xb04, 0xb68, 0xb80) and takes new nodes from `getnode` (0xa68, 0xa74). It writes bytes at +0x18 and +0x19 of the new nodes (sb at 0xa8c to 0xa9c) and a halfword at +0x1a (sh at 0xaa4). `freeblock` and `findbuddy` use the same offsets, but the facts here do not show what is stored. Splitting is inferred from the inserts and the order loop.
  Reviewed: 2026-11-12

- `getblock` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x8ec
  **Inferred.** Calls logbase2 [call 1, @0x904]. It takes nodes from getnode [call 4, @0xa68] and [call 5, @0xa74] and links them with insertnode [call 2, @0x994] and [call 6, @0xaec]. Fields of the new node are stored at +0x10 [@0xa84], +0x18 [@0xa8c] and +0x19 [@0xa98], and a halfword at +0x1a [@0xaa4].
  Role (from facts): takes nodes from getnode [call 4, @0xa68] [call 5, @0xa74], sets their fields [@0xa84] [@0xa98], and links them into a list with insertnode [call 6, @0xaec].
  Reviewed: 2026-11-12

- `reservelow` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0xb98
  **Inferred.** Role (from name): reserves a low range from the buddy pool. It calls `findblock` with a1 = 8 (calls at 0xc28 and 0xde8) and `cmn_err` with a0 = 0 and format strings not decoded (0xc4c, 0xd6c, 0xe00; the one at 0xc4c only when the byte at +0x18 of the found node is nonzero). It also calls `getnode` (0xce8, 0xcf4), `insertnode` (0xd40, 0xd4c) and `freeblock` (0xdc4). The facts do not show what the `cmn_err` messages report, and do not give the range's size or base.
  Reviewed: 2026-11-12

- `reservelow` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0xb98
  **Inferred.** Calls findblock at 0xc28 and 0xde8 with a1=0x8 and a2 taken from its own third argument. After the call at 0xc28, when the result is nonzero, it reads the byte at +0x18 of the result and calls cmn_err at 0xc4c when that byte is nonzero; a byte store at +0x18 follows at 0xc60 (base register not shown). It calls getnode at 0xce8 and 0xcf4 and insertnode at 0xd40 and 0xd4c, with stores of several widths between them (base registers not shown), and calls freeblock at 0xdc4 and cmn_err at 0xd6c and 0xe00. The shape reads as a reserved low-memory block list, but the rendered facts do not show what the reserved ranges are used for or resolve the return value at 0xda4.
  Reviewed: 2026-11-12

- `reservelow` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0xb98
  **Inferred.** Calls findblock [call 1, @0xc28] and [call 9, @0xde8]. It calls getnode [call 3, @0xce8] and [call 4, @0xcf4] and links the results with insertnode [call 5, @0xd40] and [call 6, @0xd4c]. It frees a block with freeblock [call 8, @0xdc4]. It reports through cmn_err [call 2, @0xc4c] and [call 10, @0xe00].
  Role (from facts): finds a block [call 1, @0xc28], allocates and links nodes [call 3, @0xce8] [call 5, @0xd40], frees a block [call 8, @0xdc4], and reports through cmn_err [call 2, @0xc4c].
  Reviewed: 2026-11-12

- `MgrasGlContextInit` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0xe10
  **Inferred.** Role (from name): sets up per-context state for the GL path. It reads the base field at a0+0xd0 (ld at 0xe40), gets an index from `mgras_baseindex` (call at 0xe50), calls `reservelow` (0xe60, a0 = 0), and stores words at a0+0x65c and a0+0x690 to +0x698. The state meanings are not settled by the facts.
  Reviewed: 2026-11-12

- `MgrasGlContextInit` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0xe10
  **Inferred.** Calls mgras_baseindex [call 1, @0xe50] and reservelow [call 2, @0xe60] with 0x0 as its first argument and the result of mgras_baseindex as its third. It reads the word at +0x660 [@0xe20] and the word at +0x664 [@0xe34]. It stores into the context at +0x65c [@0xe4c], +0x698 [@0xe90], +0x694 [@0xe98] and +0x690 [@0xea4].
  Role (from facts): calls reservelow [call 2, @0xe60] with the value from mgras_baseindex [call 1, @0xe50], and stores words at +0x690 [@0xea4], +0x694 [@0xe98] and +0x698 [@0xe90] afterwards.
  Reviewed: 2026-11-12

- `MgrasGlContextAlloc` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0xeb4
  **Inferred.** Role (from name): takes a context slot. The facts show a word at +0x65c and a count at +0x660 of the first argument. It tests the count with a signed compare at 0xebc (blez), loads the word at 0xec4 and tests (word & a5) at the bne at 0xed0 (a5 is not resolved), loops on a signed compare against the count at 0xee0, loads +0x668 and +0x664 (0xef4, 0xefc) and stores the word back at +0x65c at 0xf0c. The single return at 0xf14 is -1 or a value the facts do not resolve.
  Reviewed: 2026-11-12

- `MgrasGlContextAlloc` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0xeb4
  **Inferred.** Reads the slot count at +0x660 [@0xeb4] and the bitmap word at +0x65c [@0xec4]. The bit test at 0xed0 sends control to 0xef0 when the bitmap ANDed with a bit mask is nonzero [@0xed0 taken]. A loop at 0xee0 repeats while the slot index is below the count [@0xee0 taken]. It stores a word at +0x65c [@0xf0c] and returns through [@0xf14].
  Role (from facts): loops over the slots counted at +0x660 [@0xeb4], testing the bitmap at +0x65c [@0xec4] against a bit mask, and on a set bit [@0xed0 taken] stores a word at +0x65c [@0xf0c].
  Reviewed: 2026-11-12

- `MgrasGlContextFree` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0xf1c
  **Inferred.** Role (from name): releases a context slot. It loads the fields at +0x664 and +0x668 (0xf20, 0xf24) and the word at +0x65c (0xf34), the same offsets MgrasGlContextAlloc uses, and stores the word back at +0x65c at 0xf4c. The return value is not resolved, so whether it reports errors is unknown.
  Reviewed: 2026-11-12

- `MgrasGlContextFree` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0xf1c
  **Inferred.** Reads the words at +0x664 [@0xf20], +0x668 [@0xf24] and +0x65c [@0xf34]. It stores the word at +0x65c [@0xf4c] and returns [@0xf48].
  Role (from facts): reads the words at +0x664 [@0xf20], +0x668 [@0xf24] and +0x65c [@0xf34], and stores a word at +0x65c [@0xf4c], the same offset that MgrasGlContextAlloc stores to.
  Reviewed: 2026-11-12

- `MgrasEramBufAlloc` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0xf50
  **Inferred.** Role (from name): allocates a buffer block for an ERAM resource. It calls mgras_baseindex (0xf6c), then getblock (0xf8c) with a0 = the word at [a1] and the mgras_baseindex result as its third argument, between splhi (0xf74) and splx (0xfa0, 0xfc8). It stores a word at +0x7dc (0xf80) and loads it back (0xf9c, 0xfcc). When the getblock result is nonzero (the bne at 0xf94 branches to 0xfb8) it stores 8 bytes at +0x20 (0xfbc) and 4 bytes at +0x4 (0xfc4, from a halfword at +0x1a loaded at 0xfc0); the base register of those stores is not resolved. It returns -1 or the word at +0x4 of its second argument (0xfe0). Which path gives -1 is not shown, and the meaning of the getblock arguments is not established.
  Reviewed: 2026-11-12

- `MgrasEramBufAlloc` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0xf50
  **Inferred.** Calls mgras_baseindex at 0xf6c with a0=[a0+208] and its own a1 to a3, calls splhi at 0xf74, and calls getblock at 0xf8c with a0=[a1], a1=0 and the base index as a2. When getblock returns nonzero (bne at 0xf94) it stores sd at 0xfbc and sw at 0xfc4 and calls splx at 0xfc8; when it returns zero it calls splx at 0xfa0 instead. The return value is -1 or the word at [a1+4].
  Reviewed: 2026-11-12

- `MgrasEramBufFree` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0xfe8
  **Inferred.** Role (from name): frees a block. It calls mgras_baseindex (0x1004), then freeblock (0x1020) with a0 = the 8-byte word at +0x20 of its second argument and a1 = the mgras_baseindex result, between splhi (0x100c) and splx (0x103c). It stores a word at +0x7dc (0x1018) and loads one from +0x7dc at 0x1040, the same offset MgrasEramBufAlloc uses. It stores 8 bytes at +0x20 (0x102c) and 4 bytes at +0x4 (0x1034), values not resolved. It returns the splx result (0x1050).
  Reviewed: 2026-11-12

- `MgrasEramBufFree` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0xfe8
  **Inferred.** Calls mgras_baseindex [call 1, @0x1004], splhi [call 2, @0x100c], freeblock [call 3, @0x1020] and splx [call 4, @0x103c]. It stores a word at +0x7dc of its first argument [@0x1018] and stores 8 bytes at +0x20 of its second argument [@0x102c]. It returns the result of splx [@0x1050].
  Role (from facts): frees a block at a raised interrupt level, with splhi [call 2, @0x100c] and splx [call 4, @0x103c] around freeblock [call 3, @0x1020].
  Reviewed: 2026-11-12

- `MgrasEramRead` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x1058
  **Inferred.** Role (from name): reads ERAM contents. The facts show accesses at offsets +0x70000 and above: ten 8-byte stores at +0x70080, a 4-byte store at +0x70084 (0x1224) and three 4-byte loads at +0x70004 (0x1230, 0x1234, 0x1268); the base register is not resolved. It loads a byte at +0x2b of the structure at +0xc8 (0x10c4, 0x1148) and compares it with another value at 0x10d0 and 0x1160, so it is a bound of some loop, not shown to be a per-entry count. It calls MgrasInstallTxTbl_Kern (0x1090) with a1 = 2 and words loaded from +0x6a0, +0x6a8 and +0x6bc as its other arguments. It calls us_delay with 1 at 0x1254 in a loop closed by the bne at 0x1274, and printf at 0x12bc. It returns -1 or 0 at 0x1328. The exact register sequence is not established from the facts.
  Reviewed: 2026-11-12

- `MgrasEramRead` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x1058
  **Inferred.** Loads a0+0x6bc, a0+0x6a0 and a0+0x6a8 and calls MgrasInstallTxTbl_Kern at 0x1090 with a0=[a0+208], a1=2, a2=[a0+1696], a3=[a0+1704] and a4=[a0+1724]. It then stores repeatedly to offset +0x70080 (ten sd stores at 0x11a0, 0x11a4, 0x11c0, 0x11d8, 0x11e0, 0x11ec, 0x11f4, 0x1218, 0x129c and 0x12b4, plus an sw to +0x70084 at 0x1224; the base register is not shown, and the record at a0+208 is loaded at 0x107c). It tests a status bit (and with 0x4 at 0x11f0), reads +0x70004 and loops with us_delay(1) at 0x1254 between passes, and calls printf at 0x12bc. It returns -1 or 0 (return at 0x1328). The rendered facts do not settle which condition yields -1.
  Reviewed: 2026-11-12

- `MgrasEramRead` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x1058
  **Inferred.** Calls MgrasInstallTxTbl_Kern [call 1, @0x1090] with 0x2 as its second argument. It calls us_delay [call 2, @0x1254] with 0x1 as its first argument. It prints with printf [call 3, @0x1160 fall]. It stores 8 bytes at +0x70080 of the pointer at [a0+208] [@0x11a0] and loads a byte at +0x2b of the pointer at [a0+200] [@0x10c4].
  Role (from facts): calls MgrasInstallTxTbl_Kern [call 1, @0x1090], polls with us_delay [call 2, @0x1254], and reports through printf [call 3, @0x1160 fall].
  Reviewed: 2026-11-12

- `MgrasNextEramResource` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x139c
  **Inferred.** Role (from name): returns the next unused ERAM resource index. It loops over an index compared with 8 (the beq at 0x13b4 goes to the return at 0x1404 when the index is 8 or more). The bne at 0x13dc compares a loaded word with -1 and goes back to the loop when it is not -1, so only an entry whose word equals -1 reaches the tests at 0x13e4 and 0x13f4; the beq at 0x13d0 also continues the loop when a5 is zero. Three word loads (0x13cc, 0x13d8, 0x13ec) have no base the facts resolve, so the table base is unknown, and the return value is not resolved.
  Reviewed: 2026-11-12

- `MgrasNextEramResource` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x139c
  **Inferred.** Compares each entry with -1 at 0x13dc [@0x13dc taken]. When the index reaches eight it goes to the return at 0x1404 [@0x13b4 taken] [@0x1404].
  Role (from facts): scans up to eight table slots, comparing each one against -1 [@0x13dc taken], and returns from 0x1404 [@0x1404].
  Reviewed: 2026-11-12

- `MgrasEramWrite` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x140c
  **Inferred.** Role (from name): the write counterpart of MgrasEramRead. Like MgrasEramRead it uses offsets +0x70080 (8-byte stores), +0x70084 (4-byte stores at 0x14f8, 0x1600) and +0x70004 (4-byte loads at 0x1550, 0x1604, 0x1608) with an unresolved base, and loads a byte at +0x2b of the structure at +0xc8 (0x147c, 0x1508). It calls MgrasInstallTxTbl_Kern (0x1444), us_delay with 1 (0x153c) in a loop closed by the bne at 0x155c, and printf (0x1634). It returns -1 or 0 at 0x16a4. What it stores comes from registers the facts do not resolve.
  Reviewed: 2026-11-12

- `MgrasEramWrite` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x140c
  **Inferred.** Calls MgrasInstallTxTbl_Kern [call 1, @0x1444] with 0x2 as its second argument. It calls us_delay [call 2, @0x153c] with 0x1 as its first argument. It prints with printf [call 3, @0x1518 fall]. It stores 8 bytes at +0x70080 of the pointer at [a0+208] [@0x146c] and loads a byte at +0x2b of the pointer at [a0+200] [@0x147c].
  Role (from facts): the write-side counterpart of MgrasEramRead, calling MgrasInstallTxTbl_Kern [call 1, @0x1444], us_delay [call 2, @0x153c] and printf [call 3, @0x1518 fall].
  Reviewed: 2026-11-12

- `MgrasValidateEramRes` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x1710
  **Inferred.** Role (from name): validates an ERAM resource record. The argument passed to MgrasEramBufAlloc (0x1784) is a1 + a2 * 0x28 + 0x130, so the records look like 0x28-byte entries indexed by a2. It loads a field at +0x148 of the entry (0x1798) and stores at +0x134, +0x148 and +0xd4 (0x18d4, 0x18dc, 0x18f0). It calls RRM_CheckValidFault (0x1754) and MgrasEramBufAlloc (0x1784), and branches to the cleanup at 0x1940 when the field at +0x148 of the entry is zero (the beq at 0x179c) or when MgrasEramBufAlloc returns a negative value (the bltz at 0x1790). The cleanup calls rrmInvalidateRN (0x194c), MgrasUnMapGfx (0x1958) and MgrasCtxsw (0x1968). It returns 0, -1 or the MgrasCtxsw result (0x1744).
  Reviewed: 2026-11-12

- `MgrasEramManagerTimeout` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x1978
  **Inferred.** Role (from name): a timer callback that re-arms itself. It calls timeout (0x19ac) with a0 = its own address (sym MgrasEramManagerTimeout), a1 = its first argument and a2 = 0x1770, and returns the timeout result. Besides that call it stores words at +0x700 (0x1988), +0x6e0 and +0x6f0 (0x1990, 0x1998) and +0x6f8 (0x19a4), loads +0x6e0 and +0x6f0, and stores 8 bytes at +0x6e8 after the call (0x19b0), so the body does more than arm the timer; what those fields hold is not shown. The self-reference suggests a periodic re-arm.
  Reviewed: 2026-11-12

- `MgrasEramManagerTimeout` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x1978
  **Inferred.** Calls timeout [call 1, @0x19ac] with this routine's own symbol as its first argument and 0x1770 as its third argument. It stores 8 bytes at +0x6e0 [@0x1990], +0x6f0 [@0x1998] and +0x6e8 [@0x19b0], and a word at +0x700 [@0x1988]. It returns timeout's result [@0x19b8].
  Role (from facts): schedules itself again through timeout [call 1, @0x19ac], after storing 8 bytes at +0x6e0 [@0x1990] and a word at +0x700 [@0x1988].
  Reviewed: 2026-11-12

- `MgrasMoveDemarcationUp` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x19c0
  **Inferred.** Role (from name): moves the boundary between two resource regions upward. It calls mutex_lock (0x19e8) on a0 + 0x7b8 with 0x19 as its second argument and mutex_unlock (0x1a84, 0x1b40) on the same address. It calls MgrasEramRead (0x1a2c) and MgrasEramBufFree (0x1a40), then splhi (0x1abc), mgras_baseindex (0x1acc) and reservelow (0x1adc) with a1 = the word at +0x668 and a2 = the mgras_baseindex result, then splx (0x1ae4). It loads +0x660, +0x664, +0x668, +0x65c and +0x698 and stores +0x65c, +0x660 and +0x698 (0x1b10, 0x1b14, 0x1b24). It returns -1 or 0 at 0x1b38.
  Reviewed: 2026-11-12

- `MgrasMoveDemarcationUp` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x19c0
  **Inferred.** Takes a mutex with mutex_lock [call 1, @0x19e8]. It frees a buffer with MgrasEramBufFree [call 3, @0x1a34 fall].
  Role (from facts): holds a mutex [call 1, @0x19e8] around a buffer free [call 3, @0x1a34 fall].
  Reviewed: 2026-11-12

- `MgrasMoveDemarcationDown` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x1b64
  **Inferred.** Role (from name): the downward counterpart of MgrasMoveDemarcationUp. It calls mutex_lock (0x1bb8) on a0 + 0x7b8 with 0x19 and mutex_unlock (0x1c18). It loads +0x660, +0x65c, +0x668 and +0x664 (0x1b6c, 0x1b74, 0x1b88, 0x1c28), tests a mask against the word at +0x65c (the bne at 0x1b98), calls cmn_err with level 4 at 0x1c00 on a path whose condition the facts do not settle, calls splhi, mgras_baseindex, reservelow (0x1c58, a1 not resolved) and splx, and stores +0x660, +0x65c and +0x698 (0x1c80, 0x1c9c, 0x1ca0). It also calls MgrasEramRead (0x1cc4, with a3 = the word at +0x668) and MgrasGlContextFree (0x1cdc). It returns -1 or 0 at 0x1cb0.
  Reviewed: 2026-11-12

- `MgrasMoveDemarcationDown` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x1b64
  **Inferred.** Calls cmn_err [call 2, @0x1c00] with 0x4 as its first argument. It reads an entry with MgrasEramRead [call 8, @0x1cc4] and frees a context with MgrasGlContextFree [call 9, @0x1cdc] only when the read result is not negative [@0x1cd0 fall].
  Role (from facts): reads an entry [call 8, @0x1cc4] and frees a context when that read result is not negative [call 9, @0x1cdc] [@0x1cd0 fall].
  Reviewed: 2026-11-12

- `MgrasInfo` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x1d1c
  **Inferred.** Appears to report device state to a caller. It calls MgrasGatherDynamicInfo with the device pointer at +0xd0 (0x1d3c), then copies the result out to the caller's buffer with copyout (0x1d68). It returns 0 on success or 0xe, which is often read as EFAULT, but the facts do not confirm the errno meaning.
  Reviewed: 2026-11-12

- `mgras_regmatch` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x1da0
  **Inferred.** Role (from name): matches a device (regmatch); the body shown does teardown, not matching. It calls MgrasUnMapGfx with its own four arguments (0x1dbc) only when its first argument is nonzero (the beq at 0x1da8 skips it), stores 8 bytes at +0x48 (0x1dc8), and calls ddv_destroy_handle on the 8-byte value at +0x28 of its first argument (0x1de4) only when that value is nonzero (the beq at 0x1dd8 skips it). It stores 8 bytes at +0x28 at 0x1de8 and 0x1dfc. MgrasAttach passes this address to gfxdd_recycle (0x1e5c), which suggests a registration callback. The return is one of an unresolved value, the MgrasUnMapGfx result and the ddv_destroy_handle result.
  Reviewed: 2026-11-12

- `mgras_regmatch` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x1da0
  **Inferred.** Calls MgrasUnMapGfx [call 1, @0x1dbc] on the nonzero side of the test at 0x1da8 [call 1, @0x1da8 fall nonzero]. It calls ddv_destroy_handle [call 2, @0x1de4] on the nonzero side of the test of the pointer at +0x28 [call 2, @0x1dd8 fall nonzero]. It stores 8 bytes at +0x48 [@0x1dc8] and at +0x28 [@0x1de8].
  Role (from facts): unmaps through MgrasUnMapGfx [call 1, @0x1da8 fall nonzero] and destroys a handle through ddv_destroy_handle [call 2, @0x1dd8 fall nonzero]; a zero first argument skips both, and a zero pointer at +0x28 skips the second.
  Reviewed: 2026-11-12

- `MgrasAttach` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x1e0c
  **Inferred.** Appears to attach the device to the graphics driver. It registers mgras_regmatch with gfxdd_recycle (0x1e5c), prints the diagnostics at 0x1e7c, 0x1e9c, 0x1ef8 and 0x1f1c, and maps a 0x100000-byte region with gfxdd_mmap (0x1f48) using the fault handler gfx_fault. It returns 0, 0xc or 0x16; those values are often read as ENOMEM and EINVAL, but the facts do not confirm that.
  Reviewed: 2026-11-12

- `MgrasDetach` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x1f68
  **Inferred.** Appears to undo MgrasAttach. It calls gfxdd_munmap with the handle at +0x28 of its first argument (0x1f7c) and returns 0 on every path the facts show. It has no error exit in the rendered body.
  Reviewed: 2026-11-12

- `MgrasInitialize` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x1f94
  **Inferred.** Role (from name): brings the board up. It calls mgras_baseindex (0x1fbc) and htp_register_board (0x1fd8). The beq at 0x1ff8 skips to 0x2058 when the word at +0x69c of the structure at +0x20 is zero; otherwise a block at 0x2004 to 0x2050, repeated by the bne at 0x2050, calls cmn_err (0x2008), init_sema on that structure + 0x748 (0x201c), timeout with mgras_sleepertimeout and 0x1f4 as its third argument (0x202c) and psema (0x2038). Later psema (0x2088) and us_delay with 2 (0x20ac, in a loop closed by the bne at 0x20bc) run only when the beq at 0x206c and 0x20a4 do not skip them. In address order it then calls MgrasReset (0x20c4), MgrasRetraceInit (0x20cc), MgrasInitHQ (0x20dc) and MgrasInitGioIntrVectors (0x2104, with a2 = 1 and a4 = the MgrasBoards symbol; only this call is shown to receive it). It returns -1 or 0 at 0x213c.
  Reviewed: 2026-11-12

- `MgrasInitialize` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x1f94
  **Inferred.** Calls mgras_baseindex [call 1, @0x1fbc] and htp_register_board [call 2, @0x1fd8]. It waits with us_delay [call 8, @0x20ac]. It calls MgrasReset [call 9, @0x2044 fall], MgrasRetraceInit [call 10, @0x2044 fall], MgrasInitHQ [call 11, @0x2044 fall] and MgrasInitGioIntrVectors [call 12, @0x2044 fall].
  Role (from facts): registers the board with htp_register_board [call 2, @0x1fd8] and runs the reset and setup routines [call 9, @0x2044 fall] [call 12, @0x2044 fall].
  Reviewed: 2026-11-12

- `MgrasDownload` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x215c
  **Inferred.** Role (from name): downloads microcode to the board. It reads a length at +0x0 and an address at +0x8 of its second argument, calls userdma (0x21a4) and maputokv (0x21f0), and later undma (0x2234) and unmaputokv (0x2240) on them. The word at +0x10 of that argument is compared with 3 (the beq at 0x2204 goes to 0x22a0, just before the MgrasDownloadHQ3Ucode call at 0x22ac) and with 0xb (the beq at 0x220c goes to 0x2254, just before the MgrasDownloadGE11Ucode call at 0x2278); a value that is neither reaches cmn_err (0x221c). MgrasDownloadGE11Ucode receives the byte at +0x2b of the structure at +0xc8 as its a3, so that byte does not choose between the two. printf (0x228c, 0x22c0) is called when the respective download returns nonzero. The returns are 0, 0x5, 0xe or 0x16, and the 0x5 value is unresolved beyond that.
  Reviewed: 2026-11-12

- `MgrasDownload` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x215c
  **Inferred.** Calls userdma [call 1, @0x21a4] and branches on its result [@0x21ac taken]. It calls maputokv [call 3, @0x21f0], undma [call 5, @0x2234] and unmaputokv [call 6, @0x2240]. It calls MgrasDownloadGE11Ucode [call 7, @0x2278] and MgrasDownloadHQ3Ucode [call 9, @0x22ac], with printf reports at [call 8, @0x228c] and [call 10, @0x22c0].
  Role (from facts): calls userdma on the buffer named by its second argument [call 1, @0x21a4], maps it with maputokv [call 3, @0x21f0], calls the GE11 and HQ3 download routines [call 7, @0x2278] [call 9, @0x22ac], and ends with undma [call 5, @0x2234] and unmaputokv [call 6, @0x2240].
  Reviewed: 2026-11-12

- `MgrasStart` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x22d4
  **Inferred.** Role (from name): starts the board after bring-up. It calls kopt_find (0x2380) and calls atoi (0x239c) only when the result and the byte it points to are nonzero (the beq at 0x2388 and 0x2394). It calls init_sema five times (0x23fc to 0x2450), tests the word at +0x6a0 of the structure at +0x20 (the bne at 0x245c, which goes to 0x25b0 when it is nonzero; 0x25b0 calls mutex_destroy and spinlock_destroy twice), and calls init_mutex (0x2474), spinlock_init (0x2488), bzero of 0x478 bytes at that structure + 0x1b8 (0x24a0) and MgrasGlContextAlloc (0x24a8), whose result is compared with -1 at 0x24b8 (equal goes to 0x258c). kmem_alloc at 0x25d4 takes a size derived from rrm_maxrn and is reached from the beq at 0x2554 when the word at +0x6a0 is zero; the routine stores 8 bytes at +0x6a0 at 0x25e4. It calls MgrasInitRasterBackend (0x26d8), MgrasInitGblTexMgr (0x271c) only when a byte at +0x2d is nonzero (the beq at 0x2714), and MgrasEnableRetraceInterrupts (0x2754) only when the byte at +0x2b of the structure at +0xc8 is neither 0 nor 1 (the beq at 0x2728 and 0x2730). Other paths call MgrasGlContextFree (0x278c, 0x27e0), kern_malloc, kmem_free and mfree. It returns -1 or 0 at 0x25a8.
  Reviewed: 2026-11-12

- `MgrasStart` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x22d4
  **Inferred.** Reads a kernel option string with kopt_find [call 1, @0x2380] and parses it with atoi [call 2, @0x2394 fall]. It sets up semaphores with init_sema [call 3, @0x23fc] and [call 7, @0x2450]. When the pointer at +0x6a0 of the record at [a0+32] is zero [@0x245c fall] it sets up a mutex with init_mutex [call 8, @0x2474] and a spinlock with spinlock_init [call 9, @0x2488], and allocates a context with MgrasGlContextAlloc [call 11, @0x24a8].
  It calls MgrasInitRasterBackend [call 21, @0x26d8]. It calls MgrasInitGblTexMgr [call 22, @0x271c] only when the byte at +0x2d of the pointer at [[a0+32]+200] is nonzero [call 22, @0x2714 fall]. It enables retrace interrupts with MgrasEnableRetraceInterrupts [call 23, @0x2754].
  Role (from facts): sets up a board: reads its options [call 1, @0x2380], initializes its locks when the pointer at +0x6a0 is zero [call 8, @0x245c fall] [call 9, @0x245c fall], allocates a context [call 11, @0x24a8], calls the raster backend initializer [call 21, @0x26d8], and enables retrace interrupts [call 23, @0x2754].
  Reviewed: 2026-11-12

- `MgrasExit` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x2814
  **Inferred.** Role (from name): tears the board down. It calls MgrasDestroyDMA (0x2870, 0x2a14) and unmaputokv and unuseracc with length 0x9f8 and flags 0x111 (0x2958, 0x2968, 0x2a64, 0x2a74); the calls at 0x2958 to 0x2968 and 0x2a64 to 0x2a74 sit between mutex_lock and mutex_unlock on the structure at +0x20 plus 0x900 (0x294c, 0x2978, 0x2a58, 0x2a84). It calls psema on RRMcall_sema indexed by a halfword at +0x2 of a record (0x29d4), and vsema on it (0x29f0) only when the word at +0x38 of that record is nonzero (the beq at 0x29e4); vsema (0x2884) and psema (0x28cc) are also called elsewhere. It calls mutex_lock and mutex_unlock on the structure at +0x20 plus 0x8e8 (0x2aec, 0x2b00, 0x2b3c, 0x2b50) next to ll/sc updates (0x2ad0, 0x2b20) and reads of MgrasMaxLockableMemPages and MgrasXMaxLockableMemPages. It returns 0 at 0x2918. That it releases what MgrasStart and MgrasDownload took is not shown by the facts.
  Reviewed: 2026-11-12

- `MgrasCreateDDRN` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x2b60
  **Inferred.** Role (from name): creates a DDRN object (the facts do not expand DDRN). It allocates and zeroes 0x478 bytes with kern_malloc and bzero (0x2b7c, 0x2bd0), calls kvpalloc with 0x80090 as its second argument (0x2c64) only when a value tested at 0x2c4c is nonzero, and calls mutex_lock on a0 + 0x7b8 (0x2d24) and mutex_unlock (0x2d48). The cmn_err calls (0x2d9c, 0x2e14) are followed by kern_free (0x2da4, 0x2dd8, 0x2e28, 0x2e60) and kvpfree (0x2e20) on what look like failure exits; the conditions are not all resolved.
  Reviewed: 2026-11-12

- `MgrasCreateDDRN` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x2b60
  **Inferred.** Allocates and zeroes a 0x478-byte record with kern_malloc at 0x2b7c and bzero at 0x2bd0. It then allocates with kvpalloc at 0x2c64 (a1=0x80090) and with malloc at 0x2c90, calls kvtophyspnum at 0x2ccc inside a loop, takes the mutex at a0+1976 (mutex_lock at 0x2d24, mutex_unlock at 0x2d48, with no call between them), and then initializes a semaphore with init_sema at 0x2d60, after the unlock. The failure paths free what was allocated (kern_free at 0x2da4, 0x2dd8, 0x2e28, 0x2e60; kvpfree at 0x2e20). It returns -1 or 0 (return at 0x2ba4).
  Reviewed: 2026-11-12

- `MgrasSetTgvRgn` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x2e88
  **Inferred.** Role (from name): sets a region (Tgv Rgn). It calls useracc with a0 = the 8-byte word at [a1], a1 = the word at +0x8 of a1 and flags 0x111 (0x2ec0), then maputokv with that address and length and 0x2c as its third argument (0x2ef8). It stores 8 bytes at +0x440, +0x448 and +0x450 (0x2eec, 0x2f08, 0x2f2c) and 4 bytes at +0x458 (0x2f34), and tests the word at +0x450 of the structure at +0x70 (the beq at 0x2e9c). The return at 0x2ea4 is one of 0xe, the useracc result, -1 or 0. The facts do not show what the region describes.
  Reviewed: 2026-11-12

- `MgrasSetTgvRgn` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x2e88
  **Inferred.** Calls useracc [call 1, @0x2e9c taken] with 0x111 as its third argument. It calls maputokv [call 2, @0x2ecc taken] with 0x2c as its third argument. It stores 8 bytes at +0x440 [@0x2eec], +0x448 [@0x2f08] and +0x450 [@0x2f2c], and a word at +0x458 [@0x2f34], all in the record at [a0+112].
  Role (from facts): calls useracc [call 1, @0x2e9c taken] and maputokv [call 2, @0x2ecc taken] and writes four fields of the record at a0+112 [@0x2eec] [@0x2f08] [@0x2f2c] [@0x2f34].
  Reviewed: 2026-11-12

- `MgrasDestroyDDRN` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x2f40
  **Inferred.** Role (from name): the teardown counterpart of MgrasCreateDDRN. Its body runs only when the pointer at +0x70 of its third argument is nonzero; the beq at 0x2f5c skips to 0x31e4 otherwise. It calls MgrasUnSchedRetraceEvent (0x2fcc), MgrasUnSchedSwapTask with a2 = -0x11 (0x2fdc) and MgrasDestroyDMA (0x2fe8), and calls MgrasGlContextFree (0x2fc0) only when the word at +0x34 of the structure that pointer names is not -1 (the beq at 0x2fb8 skips it). The calls from freesema (0x3010) to kern_free (0x3198), including kvpfree (0x305c, 0x30ec), mfree (0x3074, 0x3108) and MgrasEramBufFree (0x3178), are behind the beq at 0x2f5c and are also skipped when the beq at 0x2ffc goes to 0x3278 or the beq at 0x3008 goes to 0x3220. It unmaps user pages with unmaputokv and unuseracc (0x322c to 0x3260). It returns 0 or 0x16 at 0x31dc.
  Reviewed: 2026-11-12

- `MgrasDestroyDDRN` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x2f40
  **Inferred.** Unschedules retrace and swap work with MgrasUnSchedRetraceEvent [call 4, @0x2f5c fall] and MgrasUnSchedSwapTask [call 5, @0x2f5c fall]. It destroys DMA with MgrasDestroyDMA [call 6, @0x2f5c fall] and frees its eram buffer with MgrasEramBufFree [call 13, @0x3144 fall].
  Role (from facts): tears down a DDRN object by unscheduling its retrace and swap events [call 4, @0x2f5c fall] [call 5, @0x2f5c fall], destroying its DMA [call 6, @0x2f5c fall], and freeing its eram buffer [call 13, @0x3144 fall].
  Reviewed: 2026-11-12

- `compute_drb_pointers` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x32a0
  **Inferred.** Role (from name): computes register-block pointers (drb pointers); the facts do not show which pointers it sets. Its only call is mgras_baseindex (0x32b0) with a0 = the pointer at +0xd0. It makes word loads and tests (bgtz at 0x32f4, beq at 0x3310, 0x3328, a compare with 2 at 0x335c) and one store at 0x32f8 whose base is not resolved. The return at 0x3318 is not resolved.
  Reviewed: 2026-11-12

- `compute_drb_pointers` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x32a0
  **Inferred.** Calls mgras_baseindex [call 1, @0x32b0]. It loads 8 bytes at +0x0 [@0x32c4] and stores a word [@0x32f8]. It loads a word at +0x3c [@0x32fc].
  Role (from facts): calls mgras_baseindex [call 1, @0x32b0], loads 8 bytes [@0x32c4], and stores a word [@0x32f8].
  Reviewed: 2026-11-12

- `MgrasValidateBanks` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x3390
  **Inferred.** Role (from name): checks the bank state of a context. It calls RRM_CheckValidFault with a0 = the pointer at +0x40 (0x3440) and MgrasFlushHQ3 (0x347c) when that result is not negative (the bltz at 0x3448 otherwise goes to 0x350c). It calls printf at four sites (0x33e4, 0x34b4, 0x3510, 0x3528); the first two are skipped when the word at .sdata+8 is zero (the beq at 0x33c0, 0x3490), and the last two follow the negative-result branches (0x3448 to 0x350c, 0x3484 to 0x3524), so they look like diagnostic output. It stores words at +0x38, +0x74 and +0x78 and at +0x70080, +0x70084 and +0x70008 (0x3508). It returns -1 or 0 at 0x3430.
  Reviewed: 2026-11-12

- `MgrasValidateBanks` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x3390
  **Inferred.** Checks with RRM_CheckValidFault [call 2, @0x33b4 taken]. A negative result takes the branch at 0x3448 to the printf call at 0x3510 [call 5, @0x3448 taken]; otherwise it flushes HQ3 with MgrasFlushHQ3 [call 3, @0x3448 fall]. It prints with printf [call 1, @0x33c0 fall] and [call 4, @0x34b4].
  Role (from facts): checks with RRM_CheckValidFault [call 2, @0x33b4 taken], flushes HQ3 [call 3, @0x3448 fall] when the result is not negative, and prints through printf [call 5, @0x3448 taken] when it is negative.
  Reviewed: 2026-11-12

- `MgrasValidateClip` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x353c
  **Inferred.** Role (from name): validates a clip request against bank and pointer state. The word clip comes from the routine name, and the facts do not show what the clip record holds. It calls compute_drb_pointers (0x3654, 0x366c), MgrasValidateBanks (0x3830), RRM_CheckValidFault (0x3864) and MgrasFlushHQ3 (0x38a0), and printf at 0x3bb4 and 0x3be0. It compares the word at +0x18 of a3 with 4, 3, 2, 1 and 0 (0x35fc to 0x361c). It returns -1 or 0 at 0x3854.
  Reviewed: 2026-11-12

- `MgrasValidateClip` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x353c
  **Inferred.** Computes bank pointers through compute_drb_pointers [call 1, @0x3588 fall] and [call 2, @0x3588 fall]. It calls MgrasValidateBanks [call 3, @0x3830] and flushes HQ3 with MgrasFlushHQ3 [call 5, @0x38a0]. It reports through printf [call 6, @0x3bb4] and [call 7, @0x3be0]. A negative result from MgrasValidateBanks takes the branch at 0x3840 to the error path at 0x3b30 [@0x3840 taken].
  Role (from facts): computes bank pointers [call 1, @0x3588 fall], validates the banks [call 3, @0x3830], flushes HQ3 [call 5, @0x38a0], and reports through printf [call 6, @0x3bb4].
  Reviewed: 2026-11-12

- `MgrasSetNullClip` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x3bf4
  **Inferred.** Stores 4-byte values at ten offsets from one base register (+0x8, +0xc, +0x10, +0x14, +0x18, +0x28, +0x2c, +0x30, +0x34 and +0x3c; sw at 0x3bf8 to 0x3c24) and returns 0 (return at 0x3c28). The rendered facts do not name the base register or show the stored values, so the clip meaning comes only from the routine name.
  Reviewed: 2026-11-12

- `MgrasMapGfx` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x3c30
  **Inferred.** Loads through a0+0x20, a0+0x28 and a0+0x48. The device at [a0+40] is the first argument of ddv_getaddr at 0x3d2c and 0x3d90 and of v_mapkvsegment at 0x3dd0, which also receives a4=0x10. The call at 0x3d2c sits in one loop (back edge at 0x3d54) and the calls at 0x3d90 to 0x3dd0 in a second (back edge at 0x3ddc); blez at 0x3d10 and 0x3d84 guard them on a count that is 1 or 2. It takes a semaphore with psema at 0x3e6c and, on one path, calls us_delay(2) at 0x3e90 in a loop while the word at [[a0+32]+104] is nonzero. It returns -1 or 0 (return at 0x3e24). The rendered facts do not show what ddv_getaddr and v_mapkvsegment map.
  Reviewed: 2026-11-12

- `MgrasUnMapGfx` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x3eb4
  **Inferred.** Looks up the current thread with curthreadhandle at 0x3f1c, gthread_find at 0x3f24 and thread_issproc at 0x3f3c, and tests bit 0x4 of the word at +8 of the gthread_find result (beq at 0x3f34). Role (from name): ddv_invalphys_fal at 0x3f60 drops a device mapping; it is called with a1=0 and a2=-1. It calls cmn_err at 0x3f84 when that result is neither 0 nor 2. On another path it calls MgrasInvalTLB at 0x3fa0 with a1=2. It returns 0 at 0x3f10 when the word at [a0+40] is zero (bne at 0x3f04); the facts show no other return.
  Reviewed: 2026-11-12

- `MgrasUnMapGfx` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x3eb4
  **Inferred.** Reads the 8-byte pointer at a0+0x20 [@0x3eb4] and the word at a0+0x30 [@0x3eb8]. When the 8-byte value at a0+40 is zero [@0x3f04 fall zero] it returns 0x0 [@0x3f10]. When it is nonzero [@0x3f04 taken nonzero] it gets the current thread handle [@0x3f1c, @0x3f04 taken nonzero] and looks up its thread record [@0x3f24, @0x3f04 taken nonzero]. When bit 4 of that record's word at +8 is set [@0x3f34 fall nonzero] it calls thread_issproc [@0x3f3c]. It calls ddv_invalphys_fal with the value at a0+40 [@0x3f60, @0x3f04 taken nonzero], and when that call returns zero [@0x3f6c taken zero] it calls MgrasInvalTLB [@0x3fa0].
  Role (from facts): returns 0x0 at once when the value at a0+40 is zero [@0x3f10]; otherwise calls ddv_invalphys_fal with that value [@0x3f60] and, when it returns zero [@0x3f6c taken zero], calls MgrasInvalTLB [@0x3fa0].
  Reviewed: 2026-11-12

- `MgrasInvalTLB` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x3fb4
  **Inferred.** Runs the same thread lookup as MgrasUnMapGfx: curthreadhandle at 0x3fbc, gthread_find at 0x3fc4, thread_issproc at 0x3fdc, with the bit 0x4 test at 0x3fd4. When the bit is clear (beq at 0x3fd4) or thread_issproc returns 0 (beq at 0x3fe4) it branches to 0x3ff8, which leads to ddv_invaltlb at 0x4004 with a0=[a0+40], a1=0 and a2=-1, followed by a load and store at +0x38. When the bit is set and thread_issproc returns nonzero it falls through to the return of 0 at 0x3ff0 and does not reach that call. The rendered facts show no error report on this path.
  Reviewed: 2026-11-12

- `MgrasPcxSwap` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x402c
  **Inferred.** Role (from name): a large context-swap routine for the device. It calls MgrasValidateClip at 0x40f4, MgrasCtxsw (at 0x41d8, 0x4640, 0x4730 and others), MgrasCcvUpdate at 0x41f4 and MgrasFlushHQ3 at 0x42e4, 0x434c and 0x4c2c. It takes the mutex at a0+1976 (mutex_lock at 0x4220, 0x47b0 and others) and a second mutex at a0+2304 (0x42c4). It calls MgrasMoveDemarcationDown at 0x4574 and 0x4754 and MgrasMoveDemarcationUp at 0x4f7c, and MgrasEramBufAlloc, MgrasEramRead and MgrasEramWrite at several sites. The only return fact is at 0x40b4, with -1 or 0; the facts show no other return.
  Reviewed: 2026-11-12

- `MgrasPcxSwap` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x402c
  **Inferred.** When bit 1 of the halfword at a2+4 is set [@0x40d0 fall nonzero] it calls MgrasValidateClip [@0x40f4, @0x40d0 fall nonzero]. It takes the mutex at a0+1976 with mutex_lock [@0x4220] and releases it with mutex_unlock [@0x4280]. On one path it takes the mutex at a0+2304 [@0x42c4, @0x4120 taken], flushes the HQ3 queue through MgrasFlushHQ3 [@0x42e4] and releases that mutex [@0x4304]. It calls MgrasCtxsw [@0x41d8] and MgrasCcvUpdate [@0x41f4]. Its ERAM paths call MgrasEramBufAlloc [@0x4964], MgrasEramBufFree [@0x4aa8], MgrasEramRead [@0x4b68] and MgrasEramWrite [@0x4d88].
  Role (from facts): serializes a context swap on the two mutexes, flushes HQ3 [@0x42e4], switches the context through MgrasCtxsw [@0x41d8] and moves ERAM buffers in and out [@0x4964] [@0x4aa8] [@0x4b68] [@0x4d88].
  Reviewed: 2026-11-12

- `MgrasPcxSwitch` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x5368
  **Established.** The 8-byte body is a bare return of 0 with no calls or stores. It does nothing and returns 0.
  Reviewed: 2026-11-12

- `mgras_ctxswtimeout` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x5370
  **Inferred.** Logs through cmn_err at 0x5388 using its two entry arguments, then calls mgras_error at 0x5394 with the device pointer from a0 and returns that result (return at 0x53a4). It reads as the timeout callback for a stalled context switch, passing the stall to the error path.
  Reviewed: 2026-11-12

- `mgras_sleepertimeout` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x53ac
  **Inferred.** Passes its four entry arguments unchanged to vsema at 0x53b4 and returns vsema's result (return at 0x53c0). It reads as the timeout callback that releases a semaphore so a sleeping process wakes. The rendered facts show only the pass-through.
  Reviewed: 2026-11-12

- `MgrasSuspend` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x53c8
  **Established.** The 8-byte body is a bare return of 0 with no calls or stores. It does nothing and returns 0.
  Reviewed: 2026-11-12

- `MgrasResume` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x53d0
  **Inferred.** Tests a flag in a2 (bne at 0x53d0) and the word at a0+120 (beq at 0x53dc). When the test allows it, it stores to a0+120 (sw at 0x53f0) and calls force_resched at 0x53ec before returning 0 (return at 0x53fc). It reads as a resume that asks the scheduler to run again. The rendered facts do not show what value the store writes.
  Reviewed: 2026-11-12

- `MgrasReleaseGfxSema` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x5404
  **Established.** The 8-byte body is a bare return of 0 with no calls or stores. The name suggests a semaphore release, but the code does nothing.
  Reviewed: 2026-11-12

- `mgras_copyin_vc3_tables` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x540c
  **Inferred.** Copies three caller-supplied tables into kernel memory. Each table gets a kern_calloc buffer (0x5424, 0x5494, 0x54f4) and a copyin from a pointer in the argument record (0x545c, 0x54b4, 0x550c). Earlier buffers are freed with kern_free if a later step fails (0x5470, 0x54c4, 0x551c and later). It returns -0xe, -0xc or 0 (return at 0x5444).
  Reviewed: 2026-11-12

- `mgras_copyin_vc2_tables` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x55a0
  **Inferred.** Copies two caller-supplied tables into kernel memory, the same pattern as mgras_copyin_vc3_tables: kern_calloc at 0x55b4 and 0x5624, copyin at 0x55ec and 0x5648, and kern_free on failure at 0x55fc, 0x5660 and 0x5694. It returns -0xe, -0xc or 0 (return at 0x55d0).
  Reviewed: 2026-11-12

- `MgrasPrivate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x56a8
  **Inferred.** Role (from name): the device's private request dispatcher. Its branches compare the request number in a2 with values from 0x6d670001 to 0x6d67002a (for example at 0x56ec, 0x5708 and 0x5768). Many cases copy an argument block in with copyin or copyin_xlate, choosing the layout from curproc_abi (0x57dc, 0x58ec and others); some cases show no copy in the facts. Handlers called include MgrasDmaUtil_Multi at 0x65d4, MgrasDmaUtil_Single at 0x6768, MgrasSetDisplayMode at 0x665c, MgrasSetGammaRamp at 0x6594 and MgrasSetTiming at 0x692c. Some cases hold the mutex at offset 2280 of the record at a0+32 (mutex_lock at 0x5d28 and 0x5d70). The one return fact (0x58bc) gives 0xd or a value the facts do not resolve; the facts do not show a return of -1.
  Reviewed: 2026-11-12

- `MgrasPrivate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x56a8
  **Inferred.** Compares the request code in a2 with constants in the 0x6d67xxxx range, for example against 0x6d670013 [@0x56ec]. Most cases copy their argument block in from the caller's a3. Many use copyin_xlate with a named converter, for example irix5_to_mgras_eram_resource_arg_xlate [@0x57fc]. Others use copyin [@0x5a7c], and some cases use the table copies mgras_copyin_vc3_tables [@0x65e8] and mgras_copyin_vc2_tables [@0x67d4]. Cases call handlers such as MgrasDmaUtil_Multi [@0x65d4], MgrasDmaEditReplace [@0x6404], MgrasSetShadowRgn [@0x6448], MgrasSetTgvRgn [@0x6680], MgrasPositionCursor [@0x64d0], MgrasSetGammaRamp [@0x6594] and MgrasSetDisplayMode [@0x665c]. Results go back out with copyout [@0x66b4], and errors are logged through cmn_err [@0x58a4].
  Role (from facts): dispatches MGRAS private requests by code: most cases copy the request block in [@0x57fc], run the matching handler [@0x65d4] and copy a result out [@0x66b4].
  Reviewed: 2026-11-12

- `MgrasWriteBfifo` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x6fb8
  **Inferred.** Calls kern_malloc at 0x701c (a1=2) and copyin at 0x7094 from [a1+8] into the buffer it returned; the facts do not resolve the copyin length. It calls mgras_baseindex at 0x70dc, splhi at 0x70f0 and 0x7168, takes the mutex at offset 2280 of the record at a0+32 (mutex_lock at 0x7160), and calls splx at 0x712c and 0x7054. It loads from offset +0x70100, spins at 0x7268 while a masked value (and with 0x1f) is nonzero, and makes stores of several widths (0x72a4 to 0x7334; base registers not shown). The name suggests a write to the B-FIFO, but the facts do not show which register is written. It returns 0, 0xc or 0xe (return at 0x7070).
  Reviewed: 2026-11-12

- `MgrasWriteBfifo` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x6fb8
  **Inferred.** Allocates a buffer with kern_malloc [@0x701c] and copies the request in with copyin [@0x7094]. It frees the buffer with kern_free [@0x70b4]. It raises the interrupt level with splhi [@0x70f0] and restores it with splx [@0x712c]. It takes the mutex at [a0+32]+2280 with mutex_lock [@0x7160]. A loop reads a word from the copied request and compares it with 0x60000 [@0x71b8] and 0x6803c [@0x71c4], reads a halfword of 1, 2, 4 or 8 [@0x71e8] [@0x71f4] [@0x71fc] [@0x7204], and stores a byte [@0x72a4], halfword [@0x7320], word [@0x7334] or doubleword [@0x730c] at the window base plus that word. When a stack flag is zero [@0x71d4 taken zero] it first reads the word at 0x70100 in the register window reached through a0 [@0x7258] [@0x7268] and rereads it while its low five bits are nonzero [@0x7270 taken nonzero]; it goes on at once when they are zero [@0x7260 taken zero]. The loop goes back to 0x71ac while a4 is below the count at [a1] [@0x72d4 taken].
  Role (from facts): applies a request of sized register writes to the window, each a byte, halfword, word or doubleword store [@0x72a4] [@0x7320] [@0x7334] [@0x730c], waiting for the low five bits of the word at 0x70100 to clear [@0x7270 taken nonzero] before the stores when the flag at [@0x71d4 taken zero] is clear.
  Reviewed: 2026-11-12

- `mgras_error` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x7338
  **Inferred.** Increments the word at [[a0+200]+68] with an ll/sc loop (0x734c to 0x735c) and reloads it at 0x7368. When it equals 1 (beq at 0x7370) it continues: cmn_err at 0x738c with the incremented value as a2, mgras_baseindex at 0x7394 with its second argument as a0, mgras_hqlook at 0x739c with that result, gthread_scan at 0x73bc with sym GfxKiller, a1=sp-64 and a2=9, then MgrasValidateAllRetrace at 0x73c4 and MgrasRetraceInit at 0x73cc. When it does not equal 1 it returns 1 at 0x7378. The return value is 1 or the MgrasRetraceInit result. Role (from name): the calls read as an error log, queue dump, thread scan and retrace re-initialization; the facts do not show what the routine is meant to recover.
  Reviewed: 2026-11-12

- `mgras_error` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x7338
  **Inferred.** Loads the pointer at a0+0xc8 [@0x7338]. It adds 1 to the word at +0x44 through that pointer with an ll [@0x734c] and sc [@0x7358] pair, and goes back to the ll at 0x734c while the store-conditional reports failure [@0x735c taken zero]. It reads the same word again [@0x7368] and compares it with 1 [@0x7370]. When that word equals 1 [@0x7370 taken], it logs through cmn_err [@0x738c, @0x7370 taken], calls mgras_baseindex [@0x7394, @0x7370 taken], mgras_hqlook [@0x739c, @0x7370 taken] and gthread_scan [@0x73bc, @0x7370 taken], and calls MgrasValidateAllRetrace [@0x73c4, @0x7370 taken] and MgrasRetraceInit [@0x73cc, @0x7370 taken]. It returns 0x1 or the MgrasRetraceInit result [@0x7378].
  Role (from facts): atomically increments the count at +0x44 of the record at a0+0xc8 [@0x734c] [@0x7358] and, when the count reads 1 afterwards [@0x7370 taken], logs and runs the retrace routines [@0x738c, @0x7370 taken] [@0x73c4, @0x7370 taken] [@0x73cc, @0x7370 taken].
  Reviewed: 2026-11-12

- `mgras_hqlook` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x73dc
  **Inferred.** A diagnostic dump. It calls badaddr_val 11 times (0x7440 through 0x7694) with a1=4, on table-relative operands 0x70104, 0x70000, 0x70004, 0x70100, 0x5021c, 0x45000, 0x46000, 0x70008, an unresolved operand at 0x7634, 0x50114 and 0x7c578, and prints with printf (calls from 0x7414 to 0x77ac). The facts render these as table offsets, not absolute addresses. It returns printf's result at 0x7480 on one path (when a value anded with 0x3 is nonzero at 0x7470); the facts show no other return. The rendered facts do not state what each probe is meant to show.
  Reviewed: 2026-11-12

- `mgras_fifotimeout` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x77bc
  **Inferred.** The timeout callback for the FIFO watchdog that mgras_fifotimer arms. It calls mgras_error at 0x77cc with a1=[a0+208], then tests the word at [a0+1848] (beq at 0x77dc). When it is nonzero it calls vsema on a0+1832 at 0x77ec, logs through cmn_err at 0x77fc and returns the cmn_err result (return at 0x7814). When it is zero it decrements a word at +80 of [[a0+72]+32] with an ll/sc loop and logs through cmn_err at 0x784c with the decremented count as a2; the facts show no return on that path.
  Reviewed: 2026-11-12

- `mgras_fifotimer` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x785c
  **Inferred.** Arms or cancels the FIFO watchdog. When a1 is nonzero it loads the word at [a0+416] (0x7868). If that word is nonzero it falls through to the return at 0x7874 without arming; if it is zero (beq at 0x786c) it calls timeout at 0x7888 with mgras_fifotimeout and a delay of 0x5dc ticks and stores at +0x1a0 (sw at 0x78a0), which reads as saving the returned id. When a1 is zero (beq at 0x7864) it calls untimeout at 0x78ac with the id at [a0+416] and stores at +0x1a0 (sw at 0x78c4). The facts show a single return, at 0x7874, with v0 one of an unresolved value, the timeout result or a0.
  Reviewed: 2026-11-12

- `MgrasCtxsw` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x78c8
  **Inferred.** Role (from name): the device context-switch routine. It calls psema at 0x790c on a0+1936, 0x7918 on a0+1912, 0x7a10 on a0+1952 and 0x7aa8 on a0+1584, and hold_nonfatalsig at 0x7920 and release_nonfatalsig at 0x7ac8, 0x7da8 and 0x7dd4. It arms timeout(mgras_ctxswtimeout) with a delay of 0x5dc ticks at 0x7930, and timeout(mgras_sleepertimeout) on a0+1808 at 0x7b40 and 0x7cc8, each followed by a psema on a0+1808 (0x7b4c, 0x7cd4). It calls vsema at 0x7ae8, 0x7af4, 0x7db0, 0x7dbc, 0x7df4 and 0x7e00 and untimeout at 0x7b00, 0x7d00 and 0x7e0c. It returns -1 or 0 (return at 0x7b1c).
  Reviewed: 2026-11-12

- `MgrasCtxsw` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x78c8
  **Inferred.** Takes the semaphore at a0+1936 with psema [@0x790c] and the one at a0+1912 [@0x7918], and arms a timeout on mgras_ctxswtimeout [@0x7930]. It copies four words from the register table that a0+208 points to into a2 at offsets 0x20 to 0x2c [@0x797c] [@0x7984] [@0x798c] [@0x7994]. When bit 0x10000 of the word at 0x70008 is clear [@0x79d0 fall zero] and bit 0x200 of the word at 0x70104 is set [@0x79e0 taken nonzero] it takes the semaphore at a0+1952 [@0x7a10]. It takes the semaphore at a0+1584 [@0x7aa8]. It releases the semaphores with vsema [@0x7ae8, @0x7b60 taken] [@0x7af4, @0x7b60 taken] and cancels the timeout with untimeout [@0x7b00, @0x7b60 taken]. It stores the word at 0x50114 of that table from a1 [@0x7b94]. It returns -0x1 or 0x0 [@0x7b1c].
  Role (from facts): swaps a graphics context under the semaphores at a0+1936 and a0+1912 with a timeout armed [@0x7930], copies register words into a2 [@0x797c] and programs the context registers from its arguments [@0x7b94], and returns -0x1 or 0x0 [@0x7b1c].
  Reviewed: 2026-11-12

- `MgrasFIFOInterrupt` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x7e6c
  **Inferred.** The 1292-byte range 0x7e6c to 0x8378. It loads a word at entry offset 0x50018 (0x7ebc) and a word at entry offset 0x70000 (0x7f14, 0x7f48), and branches on bits of those words at 0x7ed8, 0x7f0c, 0x7f20 and 0x7f50. It makes word stores at 0x7f78 and 0x7f7c whose addresses the facts do not give. It calls us_delay (0x806c, 0x816c), mgras_fifotimer (0x80a8, 0x8268), vsema (0x8104), cmn_err (0x7fcc, 0x828c, 0x82ec, 0x8318, 0x835c) and mgras_error (0x8368); the return value can be the result of mgras_error. The meaning of the tested bits and which conditions lead to each call are not settled by these facts.
  Role (from name): an interrupt handler for the FIFO.
  Reviewed: 2026-11-12

- `MgrasFIFOInterrupt` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x7e6c
  **Inferred.** Reads the status word at 0x50018 [@0x7ebc] and the word at 0x70000 [@0x7f14]. It tests the bits 0x44000000 of the first word [@0x7ed8 taken zero] and 0x10 of the second [@0x7f20 taken zero]. It delays with us_delay [@0x806c] [@0x816c], calls mgras_fifotimer [@0x80a8] [@0x8268] and vsema [@0x8104], and logs through cmn_err [@0x7fcc] [@0x828c] [@0x82ec] [@0x8318] [@0x835c]. It stores to the structure fields at +0x18 [@0x81f0] and +0x1c [@0x82b8], and calls mgras_error [@0x8368]. Its return value is one of two values, one of them the mgras_error result [@0x7fb8].
  Role (from facts): reads and tests status bits in 0x50018 and 0x70000, polls with us_delay [@0x806c] [@0x816c], calls mgras_fifotimer [@0x80a8], logs through cmn_err [@0x7fcc] and updates the fields at +0x18 [@0x81f0] and +0x1c [@0x82b8].
  Reviewed: 2026-11-12

- `MgrasGeneralInterrupt` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x8378
  **Inferred.** 792 bytes at 0x8378 to 0x8690. It reads words at entry offsets 0x70100 and 0x70104 (0x83b4 to 0x83e4), each in a loop that re-reads the word while a bit stays set (0x40 of the first, 0x1 of the second), and loads two more words at 0x840c and 0x8410. It makes 11 word stores (0x8434, 0x848c, 0x8490, 0x84d4, 0x84d8, 0x852c, 0x855c, 0x858c, 0x85bc, 0x860c, 0x861c) whose addresses the facts do not give. It calls vsema (0x8448, 0x8494, 0x84dc), cmn_err (0x8530, 0x8560, 0x8590, 0x85c4, 0x8654, 0x8680), mgras_error (0x85d4) and MgrasSchedSwapBufFinish (0x8618), each reached under conditions on a status word that the facts do not settle. The return at 0x8460 yields one of several values, including the constant 0x7f.
  Role (from name): the second interrupt handler of this object; the call to MgrasSchedSwapBufFinish suggests it finishes a buffer swap.
  Reviewed: 2026-11-12

- `MgrasGeneralInterrupt` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x8378
  **Inferred.** When the word at +1620 of the structure it loads is nonzero [@0x83a8 fall nonzero] it reads the words at 0x70100 [@0x83b4] and 0x70104 [@0x83d4] and rereads each while bit 0x40 of the first [@0x83cc taken nonzero] or bit 0x1 of the second [@0x83ec taken nonzero] is set. It then reads the words at 0x50008 [@0x840c] and 0x50018 [@0x8410] and ANDs them with each other and with 0x7fffff. It tests bit 0x10000 of that result [@0x8428] and stores to the word at 0x5001c [@0x8434], then calls vsema on the semaphore at offset 1952 [@0x8448]. It tests bit 0x80000 [@0x8470], stores to the words at 0x5000c [@0x848c] and 0x5001c [@0x8490], and calls vsema on the semaphore at offset 1584 [@0x8494]. When bit 0x200 is set [@0x8510 fall nonzero] it calls cmn_err [@0x8530]. When bit 0x2000 is set [@0x8540 fall nonzero] it calls cmn_err [@0x8560], and the same pattern holds for bit 0x4000 [@0x8570 fall nonzero] and cmn_err [@0x8590] and for bit 0x8000 [@0x85a4 fall nonzero] and cmn_err [@0x85c4]. When bit 0x400 is set [@0x85f0 fall nonzero] it calls MgrasSchedSwapBufFinish [@0x8618].
  Role (from facts): masks the status words at 0x50008 and 0x50018 [@0x840c] [@0x8410], calls vsema for bits 0x10000 [@0x8448] and 0x80000 [@0x8494], reports bits 0x200, 0x2000, 0x4000 and 0x8000 through cmn_err [@0x8530] [@0x8560] [@0x8590] [@0x85c4] and calls MgrasSchedSwapBufFinish for bit 0x400 [@0x8618].
  Reviewed: 2026-11-12

- `irix5_to_mgras_dma_util_single_args_xlate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x8690
  **Inferred.** 172 bytes at 0x8690 to 0x873c. If a0 is nonzero it takes the copy path. If a0 is zero it compares the word at [a3] with 0x1c: when it is below that value it calls kern_malloc with a0=0x1c (0x8724). The copy path loads through a pointer read at +0x10 (0x86d4) and stores words and doublewords at offsets 0x0 to 0x20 (0x86dc to 0x8710); the base registers of those accesses are not shown in the facts. Returns 0 at 0x8718.
  Role (from name): an argument translator (single-buffer DMA utility call); the name suggests the source layout is an older caller's, which these facts do not check.
  Reviewed: 2026-11-12

- `irix5_to_mgras_dma_util_single_args_xlate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x8690
  **Inferred.** When a0 is nonzero [@0x8698 taken nonzero] it loads the pointer at a3+16 [@0x86d4] and copies the block it points at into a1 with seven word loads and stores, the third and sixth stores 8 bytes wide, ending at a1+0x20 [@0x86dc] [@0x86e4] [@0x86ec] [@0x86f4] [@0x86fc] [@0x8704] [@0x8710]. When a0 is zero [@0x8698 fall zero] it loads the word at a3 [@0x86a0] and compares it with 0x1c [@0x86a8 taken]. When that word is below 0x1c it calls kern_malloc with 0x1c [@0x8724, @0x86a8 taken] and stores the result at a3+0x10 [@0x8730]. Otherwise it loads the 8-byte value at a3+8 [@0x86b4] and stores it at a3+0x10 [@0x86b8, @0x86a8 fall]. Both ways it stores a word at a3+4 [@0x86c4] and returns 0x0 [@0x8718].
  Role (from facts): with a0 nonzero [@0x8698 taken nonzero] it copies a 0x1c-byte request block from the pointer at a3+16 into a1 [@0x86dc]; with a0 zero [@0x8698 fall zero] it copies no block and only fills in a3+0x10, from the pointer at a3+8 or from a kern_malloc block when the size word is below 0x1c [@0x86a8 taken] [@0x8724], and returns 0x0 [@0x8718].
  Reviewed: 2026-11-12

- `irix5_to_mgras_dma_util_multi_args_xlate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x873c
  **Inferred.** 180 bytes at 0x873c to 0x87f0. If a0 is nonzero it takes the copy path. If a0 is zero it compares the word at [a3] with 0x20: when it is below that value it calls kern_malloc with a0=0x20 (0x87d8). The copy path has the same shape as the single-buffer translator: it loads through a pointer read at +0x10 (0x8780) and stores at offsets 0x0 to 0x28 (0x8788 to 0x87c4); the base registers are not shown in the facts. Returns 0 at 0x87cc.
  Role (from name): an argument translator (multi-buffer DMA utility call); the name suggests the source layout is an older caller's, which these facts do not check.
  Reviewed: 2026-11-12

- `irix5_to_mgras_dma_util_multi_args_xlate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x873c
  **Inferred.** A nonzero a0 [@0x8744 taken nonzero] sends it to a copy: it loads the pointer at a3+16 [@0x8780], then moves the block it points at into a1 using eight word loads and stores, the fourth and eighth stores 8 bytes wide, ending at a1+0x28 [@0x8788] [@0x8790] [@0x8798] [@0x87a0] [@0x87a8] [@0x87b0] [@0x87b8] [@0x87c4]. A zero a0 [@0x8744 fall zero] makes it load the word at a3 [@0x874c] and test it against 0x20 [@0x8754 taken]. A word under 0x20 makes it call kern_malloc for 0x20 bytes [@0x87d8, @0x8754 taken] and store the returned pointer at a3+0x10 [@0x87e4]. At or above that size it loads the 8-byte value at a3+8 [@0x8760] and writes it to a3+0x10 [@0x8764, @0x8754 fall]. Either path then writes a word at a3+4 [@0x8770] and returns 0x0 [@0x87cc].
  Role (from facts): a nonzero a0 [@0x8744 taken nonzero] makes it copy a 0x20-byte request block from a3+16's pointer into a1 [@0x8788]; a zero a0 [@0x8744 fall zero] copies nothing and just fills in a3+0x10, from the pointer at a3+8 or from a kern_malloc block when the size word is under 0x20 [@0x8754 taken] [@0x87d8]; it returns 0x0 [@0x87cc].
  Reviewed: 2026-11-12

- `irix5_to_mgras_dma_edit_replace_args_xlate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x87f0
  **Inferred.** 164 bytes at 0x87f0 to 0x8894. If a0 is nonzero it takes the copy path. If a0 is zero it compares the word at [a3] with 0x18: when it is below that value it calls kern_malloc with a0=0x18 (0x887c). The copy path loads through a pointer read at +0x10 (0x8834) and stores at offsets 0x0 to 0x20 (0x883c to 0x8868); the base registers are not shown in the facts. Returns 0 at 0x8870.
  Role (from name): an argument translator (DMA edit-replace call); the name suggests the source layout is an older caller's, which these facts do not check.
  Reviewed: 2026-11-12

- `irix5_to_mgras_dma_edit_replace_args_xlate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x87f0
  **Inferred.** With a0 nonzero [@0x87f8 taken nonzero] it reads the pointer at a3+16 [@0x8834] and copies through it into a1, as six word loads and stores, the fourth and sixth stores 8 bytes wide, ending at a1+0x20 [@0x883c] [@0x8844] [@0x884c] [@0x8854] [@0x885c] [@0x8868]. If a0 is zero [@0x87f8 fall zero] it takes the word at a3 [@0x8800] and checks it against 0x18 [@0x8808 taken]. Below 0x18 it allocates 0x18 bytes with kern_malloc [@0x887c, @0x8808 taken] and keeps the result at a3+0x10 [@0x8888]. For a large enough word it takes the 8-byte value at a3+8 [@0x8814] and puts it at a3+0x10 [@0x8818, @0x8808 fall]. It finishes by storing a word at a3+4 [@0x8824] and returning 0x0 [@0x8870].
  Role (from facts): given a nonzero a0 [@0x87f8 taken nonzero] it copies the 0x18-byte edit-replace block at a3+16's pointer into a1 [@0x883c]; given a zero a0 [@0x87f8 fall zero] it copies no block, only filling in a3+0x10 from a3+8's pointer or from a kern_malloc block if the size word is below 0x18 [@0x8808 taken] [@0x887c], and returns 0x0 [@0x8870].
  Reviewed: 2026-11-12

- `irix5_to_mgras_dma_edit_release_args_xlate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x8894
  **Inferred.** 148 bytes at 0x8894 to 0x8928. If a0 is nonzero it takes the copy path. If a0 is zero it compares the word at [a3] with 0x10: when it is below that value it calls kern_malloc with a0=0x10 (0x8910). The copy path loads through a pointer read at +0x10 (0x88d8) and stores at offsets 0x0 to 0x10 (0x88e0 to 0x88fc), fewer fields than the replace translator; the base registers are not shown in the facts. Returns 0 at 0x8904.
  Role (from name): an argument translator (DMA edit-release call); the name suggests the source layout is an older caller's, which these facts do not check.
  Reviewed: 2026-11-12

- `irix5_to_mgras_dma_edit_release_args_xlate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x8894
  **Inferred.** When a0 is nonzero [@0x889c taken nonzero] it loads the pointer at a3+16 [@0x88d8] and copies the block it points at into a1 with four word loads and stores, the last store 8 bytes wide at a1+0x10 [@0x88e0] [@0x88e8] [@0x88f0] [@0x88fc]. When a0 is zero [@0x889c fall zero] it loads the word at a3 [@0x88a4] and compares it with 0x10 [@0x88ac taken]. When that word is below 0x10 it calls kern_malloc with 0x10 [@0x8910, @0x88ac taken] and stores the result at a3+0x10 [@0x891c]. Otherwise it loads the 8-byte value at a3+8 [@0x88b8] and stores it at a3+0x10 [@0x88bc, @0x88ac fall]. Both ways it stores a word at a3+4 [@0x88c8] and returns 0x0 [@0x8904].
  Role (from facts): with a0 nonzero [@0x889c taken nonzero] it copies a 0x10-byte release block from the pointer at a3+16 into a1 [@0x88e0]; with a0 zero [@0x889c fall zero] it copies no block and only fills in a3+0x10, from the pointer at a3+8 or from a kern_malloc block when the size word is below 0x10 [@0x88ac taken] [@0x8910], and returns 0x0 [@0x8904].
  Reviewed: 2026-11-12

- `irix5_to_mgras_dma_edit_append_args_xlate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x8928
  **Inferred.** 172 bytes at 0x8928 to 0x89d4. If a0 is nonzero it takes the copy path. If a0 is zero it compares the word at [a3] with 0x1c: when it is below that value it calls kern_malloc with a0=0x1c (0x89bc). The copy path loads through a pointer read at +0x10 (0x896c) and stores at offsets 0x0 to 0x20 (0x8974 to 0x89a8). It copies one more word than the replace translator (a load at +0x14 stored at +0x1c, 0x899c); the base registers are not shown in the facts. Returns 0 at 0x89b0.
  Role (from name): an argument translator (DMA edit-append call); the name suggests the source layout is an older caller's, which these facts do not check.
  Reviewed: 2026-11-12

- `irix5_to_mgras_dma_edit_append_args_xlate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x8928
  **Inferred.** A nonzero a0 [@0x8930 taken nonzero] sends it to a copy: it loads the pointer at a3+16 [@0x896c], then moves the block it points at into a1 using seven word loads and stores, the fourth and seventh stores 8 bytes wide, ending at a1+0x20 [@0x8974] [@0x897c] [@0x8984] [@0x898c] [@0x8994] [@0x899c] [@0x89a8]. A zero a0 [@0x8930 fall zero] makes it load the word at a3 [@0x8938] and test it against 0x1c [@0x8940 taken]. A word under 0x1c makes it call kern_malloc for 0x1c bytes [@0x89bc, @0x8940 taken] and store the returned pointer at a3+0x10 [@0x89c8]. At or above that size it loads the 8-byte value at a3+8 [@0x894c] and writes it to a3+0x10 [@0x8950, @0x8940 fall]. Either path then writes a word at a3+4 [@0x895c] and returns 0x0 [@0x89b0].
  Role (from facts): a nonzero a0 [@0x8930 taken nonzero] makes it copy a 0x1c-byte append block from a3+16's pointer into a1 [@0x8974]; a zero a0 [@0x8930 fall zero] copies nothing and just fills in a3+0x10, from the pointer at a3+8 or from a kern_malloc block when the size word is under 0x1c [@0x8940 taken] [@0x89bc]; it returns 0x0 [@0x89b0].
  Reviewed: 2026-11-12

- `irix5_to_mgras_set_shadow_rgn_args_xlate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x89d4
  **Inferred.** 124 bytes at 0x89d4 to 0x8a50. If a0 is nonzero it takes the copy path. If a0 is zero it compares the word at [a3] with 0x4: when it is below that value it calls kern_malloc with a0=0x4 (0x8a38). The copy path reads a pointer at +0x10 (0x8a1c), loads one 4-byte word through it (0x8a20) and stores an 8-byte value (0x8a24); the base registers are not shown in the facts. Returns 0 at 0x8a2c.
  Role (from name): an argument translator (shadow-region call); the name suggests the source layout is an older caller's, which these facts do not check.
  Reviewed: 2026-11-12

- `irix5_to_mgras_set_shadow_rgn_args_xlate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x89d4
  **Inferred.** With a0 nonzero [@0x89e0 taken nonzero] it reads the pointer at a3+16 [@0x8a1c] and copies through it into a1, as a word load [@0x8a20] and an 8-byte store at a1 [@0x8a24]. If a0 is zero [@0x89e0 fall zero] it takes the word at a3 [@0x89e8] and checks it against 0x4 [@0x89f0 taken]. Below 0x4 it allocates 0x4 bytes with kern_malloc [@0x8a38, @0x89f0 taken] and keeps the result at a3+0x10 [@0x8a44]. For a large enough word it takes the 8-byte value at a3+8 [@0x89fc] and puts it at a3+0x10 [@0x8a00, @0x89f0 fall]. It finishes by storing a word at a3+4 [@0x8a0c] and returning 0x0 [@0x8a2c].
  Role (from facts): given a nonzero a0 [@0x89e0 taken nonzero] it copies the 0x4-byte shadow-region block at a3+16's pointer into a1 [@0x8a24]; given a zero a0 [@0x89e0 fall zero] it copies no block, only filling in a3+0x10 from a3+8's pointer or from a kern_malloc block if the size word is below 0x4 [@0x89f0 taken] [@0x8a38], and returns 0x0 [@0x8a2c].
  Reviewed: 2026-11-12

- `irix5_to_mgras_set_tgv_rgn_args_xlate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x8a50
  **Inferred.** 132 bytes at 0x8a50 to 0x8ad4. If a0 is nonzero it takes the copy path. If a0 is zero it compares the word at [a3] with 0x8: when it is below that value it calls kern_malloc with a0=0x8 (0x8abc). The copy path reads a pointer at +0x10 (0x8a98), loads two words through it (0x8a9c, 0x8aa4) and stores an 8-byte value (0x8aa0) and a 4-byte value at offset 0x8 (0x8aa8); the base registers are not shown in the facts. Returns 0 at 0x8ab0.
  Role (from name): an argument translator (TGV-region call); the name suggests the source layout is an older caller's, which these facts do not check.
  Reviewed: 2026-11-12

- `irix5_to_mgras_set_tgv_rgn_args_xlate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x8a50
  **Inferred.** When a0 is nonzero [@0x8a5c taken nonzero] it loads the pointer at a3+16 [@0x8a98] and copies the block it points at into a1 with a word load [@0x8a9c] and an 8-byte store at a1 [@0x8aa0], then a word load at offset 4 [@0x8aa4] and a word store at a1+8 [@0x8aa8]. When a0 is zero [@0x8a5c fall zero] it loads the word at a3 [@0x8a64] and compares it with 0x8 [@0x8a6c taken]. When that word is below 0x8 it calls kern_malloc with 0x8 [@0x8abc, @0x8a6c taken] and stores the result at a3+0x10 [@0x8ac8]. Otherwise it loads the 8-byte value at a3+8 [@0x8a78] and stores it at a3+0x10 [@0x8a7c, @0x8a6c fall]. Both ways it stores a word at a3+4 [@0x8a88] and returns 0x0 [@0x8ab0].
  Role (from facts): with a0 nonzero [@0x8a5c taken nonzero] it copies a 0x8-byte region block from the pointer at a3+16 into a1 [@0x8aa8]; with a0 zero [@0x8a5c fall zero] it copies no block and only fills in a3+0x10, from the pointer at a3+8 or from a kern_malloc block when the size word is below 0x8 [@0x8a6c taken] [@0x8abc], and returns 0x0 [@0x8ab0].
  Reviewed: 2026-11-12

- `irix5_to_mgras_eram_resource_arg_xlate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x8ad4
  **Inferred.** 140 bytes at 0x8ad4 to 0x8b60. If a0 is nonzero it takes the copy path. If a0 is zero it compares the word at [a3] with 0xc: when it is below that value it calls kern_malloc with a0=0xc (0x8b48). The copy path reads a pointer at +0x10 (0x8b18), loads three words through it (0x8b1c, 0x8b24, 0x8b2c) and stores them at offsets 0x0, 0x4 and 0x8 (0x8b20, 0x8b28, 0x8b34); the base registers are not shown in the facts. Returns 0 at 0x8b3c.
  Role (from name): an argument translator (ERAM resource call); the name suggests the source layout is an older caller's, which these facts do not check.
  Reviewed: 2026-11-12

- `irix5_to_mgras_eram_resource_arg_xlate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x8ad4
  **Inferred.** A nonzero a0 [@0x8adc taken nonzero] sends it to a copy: it loads the pointer at a3+16 [@0x8b18], then moves the block it points at into a1 using three loads and stores to a1 offsets 0, 4 and 8, the last store 8 bytes wide [@0x8b20] [@0x8b28] [@0x8b34]. A zero a0 [@0x8adc fall zero] makes it load the word at a3 [@0x8ae4] and test it against 0xc [@0x8aec taken]. A word under 0xc makes it call kern_malloc for 0xc bytes [@0x8b48, @0x8aec taken] and store the returned pointer at a3+0x10 [@0x8b54]. At or above that size it loads the 8-byte value at a3+8 [@0x8af8] and writes it to a3+0x10 [@0x8afc, @0x8aec fall]. Either path then writes a word at a3+4 [@0x8b08] and returns 0x0 [@0x8b3c].
  Role (from facts): a nonzero a0 [@0x8adc taken nonzero] makes it copy a 0xc-byte ERAM resource block from a3+16's pointer into a1 [@0x8b20]; a zero a0 [@0x8adc fall zero] copies nothing and just fills in a3+0x10, from the pointer at a3+8 or from a kern_malloc block when the size word is under 0xc [@0x8aec taken] [@0x8b48]; it returns 0x0 [@0x8b3c].
  Reviewed: 2026-11-12

- `irix5_to_mgras_eram_resource_arg_xlateout` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x8b60
  **Inferred.** 132 bytes at 0x8b60 to 0x8be4. The entry tests a word at [a2] (0x8b78) against 0xc. When it is below 0xc it calls kern_malloc with a0=0xc (0x8bc8). The routine also loads a doubleword at +0x8 (0x8b84), stores at +0x10 and +0x4 (0x8b88, 0x8b94), loads words at +0x0, +0x4 and a doubleword at +0x8 (0x8b98, 0x8ba0, 0x8bac) and makes three word stores (0x8b9c, 0x8ba4, 0x8bb8). The facts do not give the base registers of these loads and stores or the address of the three word stores. Returns 0 at 0x8bbc.
  Role (from name): the output-direction translator for the ERAM resource call.
  Reviewed: 2026-11-12

- `irix5_to_mgras_eram_resource_arg_xlateout` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x8b60
  **Inferred.** Reads the word at a2 [@0x8b60] and compares it with 0xc [@0x8b78 taken]. When the word is below 0xc it calls kern_malloc with 0xc [@0x8bc8, @0x8b78 taken] and stores the result at a2+0x10 [@0x8bd4]. Otherwise it copies the 8-byte value at a2+8 to a2+0x10 [@0x8b84] [@0x8b88, @0x8b78 fall]. Either way it reads the words at a0 offsets 0 and 4 and the 8-byte value at offset 8 [@0x8b98] [@0x8ba0] [@0x8bac], stores them as three words through the block that a2+0x10 now points at [@0x8b9c] [@0x8ba4] [@0x8bb8], and stores a word at a2+4 [@0x8b94]. It returns 0x0 [@0x8bbc].
  Role (from facts): writes the size with a word store at a2+4 [@0x8b94], fills the block at the pointer in a2+0x10 (a2+8's pointer, or a kern_malloc block when the size word at a2 is below 0xc [@0x8b78 taken]) with three values taken from a0 [@0x8b98] [@0x8ba0] [@0x8bac], and returns 0x0 [@0x8bbc].
  Reviewed: 2026-11-12

- `irix5_to_mgras_fpi2c_cmd_arg_xlate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x8be4
  **Inferred.** 140 bytes at 0x8be4 to 0x8c70. If a0 is nonzero it takes the copy path. If a0 is zero it compares the word at [a3] with 0xc: when it is below that value it calls kern_malloc with a0=0xc (0x8c58). The copy path reads a pointer at +0x10 (0x8c28), loads words at +0x0, +0x4 and +0x8 through it and stores at offsets 0x0, 0x8 and 0x10 (0x8c30, 0x8c44, 0x8c38); the base registers are not shown in the facts. Returns 0 at 0x8c4c.
  Role (from name): an argument translator (FPI2C command call); the name suggests the source layout is an older caller's, which these facts do not check.
  Reviewed: 2026-11-12

- `irix5_to_mgras_fpi2c_cmd_arg_xlate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x8be4
  **Inferred.** With a0 nonzero [@0x8bec taken nonzero] it reads the pointer at a3+16 [@0x8c28] and copies through it into a1, as three loads and stores to a1 offsets 0, 0x10 and 8, the last store 8 bytes wide [@0x8c30] [@0x8c38] [@0x8c44]. If a0 is zero [@0x8bec fall zero] it takes the word at a3 [@0x8bf4] and checks it against 0xc [@0x8bfc taken]. Below 0xc it allocates 0xc bytes with kern_malloc [@0x8c58, @0x8bfc taken] and keeps the result at a3+0x10 [@0x8c64]. For a large enough word it takes the 8-byte value at a3+8 [@0x8c08] and puts it at a3+0x10 [@0x8c0c, @0x8bfc fall]. It finishes by storing a word at a3+4 [@0x8c18] and returning 0x0 [@0x8c4c].
  Role (from facts): given a nonzero a0 [@0x8bec taken nonzero] it copies the 0xc-byte I2C command block at a3+16's pointer into a1 [@0x8c30]; given a zero a0 [@0x8bec fall zero] it copies no block, only filling in a3+0x10 from a3+8's pointer or from a kern_malloc block if the size word is below 0xc [@0x8bfc taken] [@0x8c58], and returns 0x0 [@0x8c4c].
  Reviewed: 2026-11-12

- `irix5_to_mgras_fpi2c_cmd_arg_xlateout` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x8c70
  **Inferred.** 132 bytes at 0x8c70 to 0x8cf4. The entry tests a word at [a2] (0x8c88) against 0xc. When it is below 0xc it calls kern_malloc with a0=0xc (0x8cd8). The routine also loads a doubleword at +0x8 (0x8c94), stores at +0x10 and +0x4 (0x8c98, 0x8ca4), loads words at +0x0 and +0x10 and a doubleword at +0x8 (0x8ca8, 0x8cb0, 0x8cbc) and makes three word stores (0x8cac, 0x8cb4, 0x8cc8). The facts do not give the base registers of these accesses. Returns 0 at 0x8ccc.
  Role (from name): the output-direction translator for the FPI2C command call.
  Reviewed: 2026-11-12

- `irix5_to_mgras_fpi2c_cmd_arg_xlateout` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x8c70
  **Inferred.** Reads the word at a2 [@0x8c70] and compares it with 0xc [@0x8c88 taken]. When the word is below 0xc it calls kern_malloc with 0xc [@0x8cd8, @0x8c88 taken] and stores the result at a2+0x10 [@0x8ce4]. Otherwise it copies the 8-byte value at a2+8 to a2+0x10 [@0x8c94] [@0x8c98, @0x8c88 fall]. Either way it reads the words at a0 offsets 0 and 0x10 and the 8-byte value at offset 8 [@0x8ca8] [@0x8cb0] [@0x8cbc], stores them as three words through the block that a2+0x10 now points at, at its offsets 0, 8 and 4 [@0x8cac] [@0x8cb4] [@0x8cc8], and stores a word at a2+4 [@0x8ca4]. It returns 0x0 [@0x8ccc].
  Role (from facts): writes the size with a word store at a2+4 [@0x8ca4], fills the block at the pointer in a2+0x10 (a2+8's pointer, or a kern_malloc block when the size word at a2 is below 0xc [@0x8c88 taken]) with three values taken from a0 [@0x8ca8] [@0x8cb0] [@0x8cbc], and returns 0x0 [@0x8ccc].
  Reviewed: 2026-11-12

- `irix5_to_mgras_load_timing_table_args_xlate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x8cf4
  **Inferred.** 336 bytes at 0x8cf4 to 0x8e44. If a0 is nonzero it reads a pointer at +0x10 (0x8d08) and copies words and doublewords, loading at offsets 0x0 to 0x54 and storing at offsets 0x0 to 0x6c (0x8d10 to 0x8dc0). After the straight-line copies there is a loop (0x8dc4 to 0x8de0) that repeats while a loaded value is below 6 (signed), with a word store at 0x8de4; the facts do not show what it copies. It then returns 0 at 0x8dec. If a0 is zero it compares the word at [a3] with 0x70 and, when it is below 0x70, calls kern_malloc with a0=0x70 (0x8e2c). The base registers of the copy accesses are not given in the facts.
  Role (from name): an argument translator for the timing-table load call; the name suggests the source layout is an older caller's, which these facts do not check.
  Reviewed: 2026-11-12

- `irix5_to_mgras_load_timing_table_args_xlate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x8cf4
  **Inferred.** When a0 is nonzero [@0x8cfc fall nonzero] it loads the pointer at a3+16 [@0x8d08] and copies the block it points at into a1: word loads from offsets 0 to 0x54 go to a1 offsets 0 to 0x6c, with the words at +0x14, +0x1c and +0x24 stored zero-extended as 8-byte values [@0x8d10] [@0x8d18] [@0x8d20] [@0x8d30] [@0x8dc0], and a loop of six more words goes back to 0x8dc4 while its counter is below 6 [@0x8de0 taken]. When a0 is zero [@0x8cfc taken zero] it copies no data: it loads the word at a3 [@0x8df4] and compares it with 0x70 [@0x8dfc taken]. When the word is below 0x70 it calls kern_malloc with 0x70 [@0x8e2c, @0x8dfc taken] and stores the result at a3+0x10 [@0x8e38]; otherwise it loads the 8-byte value at a3+8 [@0x8e08] and stores it at a3+0x10 [@0x8e0c, @0x8dfc fall]. Both ways it stores a word at a3+4 [@0x8e18] and returns 0x0 [@0x8dec].
  Role (from facts): with a0 nonzero [@0x8cfc fall nonzero] it copies a 0x70-byte timing table from the pointer at a3+16 into a1 with straight-line word copies [@0x8d10] and a six-word loop [@0x8de0 taken]; with a0 zero [@0x8cfc taken zero] it copies no table and only fills in a3+0x10, from the pointer at a3+8 or from a kern_malloc block when the size word is below 0x70 [@0x8dfc taken] [@0x8e2c], and returns 0x0 [@0x8dec].
  Reviewed: 2026-11-12

- `irix5_to_mgras_load_video_format_combination_args_xlate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x8e44
  **Inferred.** 392 bytes at 0x8e44 to 0x8fcc. If a0 is nonzero it reads a pointer at +0x10 (0x8e90) and calls bcopy with a2=0xf68c (0x8ea4). It then calls bcopy with a2=0x28 (0x8ed4) and bcopy with a2=0x4 (0x8f08), each in a loop whose counter is compared with 2, and finishes with word and doubleword copies that load at offsets 0xf6e4 to 0xf710 and store at 0xf6e8 to 0xf720 (0x8f2c to 0x8f94). It returns 0 at 0x8fa4. If a0 is zero it compares the word at [a3] with 0xf714 and, when it is below that, calls kern_malloc with a0=0xf714 (0x8fb0). The base registers of the copy accesses are not given, and the meaning of the large offsets is not settled by these facts.
  Role (from name): an argument translator for the video-format-combination load call.
  Reviewed: 2026-11-12

- `irix5_to_mgras_load_video_format_combination_args_xlate` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras.o)` at 0x8e44
  **Inferred.** When a0 is nonzero [@0x8e54 taken nonzero] it loads the pointer at a3+16 [@0x8e90] and copies the block it points at into a1: bcopy of 0xf68c bytes [@0x8ea4], then two bcopy calls of 0x28 bytes in a loop [@0x8ed4] that goes back while its counter is below 2 [@0x8ee0 taken], then two bcopy calls of 4 bytes in a loop [@0x8f08] that does the same [@0x8f14 taken], then the scalar words at source offsets 0xf6e4 to 0xf710 to a1 offsets 0xf6e8 to 0xf720, the words at +0xf6f0 and +0xf6fc stored zero-extended as 8-byte values [@0x8f30] [@0x8f70] [@0x8f94]. When a0 is zero [@0x8e54 fall zero] it copies no data: it loads the word at a3 [@0x8e5c] and compares it with 0xf714 [@0x8e68 taken]. When the word is below 0xf714 it calls kern_malloc with 0xf714 [@0x8fb0, @0x8e68 taken] and stores the result at a3+0x10 [@0x8fbc]; otherwise it loads the 8-byte value at a3+8 [@0x8e74] and stores it at a3+0x10 [@0x8e78, @0x8e68 fall]. Both ways it stores a word at a3+4 [@0x8e80] and returns 0x0 [@0x8fa4].
  Role (from facts): with a0 nonzero [@0x8e54 taken nonzero] it copies a 0xf714-byte video-format block from the pointer at a3+16 into a1 with three bcopy runs [@0x8ea4] [@0x8ed4] [@0x8f08] and the scalar words [@0x8f94]; with a0 zero [@0x8e54 fall zero] it copies no block and only fills in a3+0x10, from the pointer at a3+8 or from a kern_malloc block when the size word is below 0xf714 [@0x8e68 taken] [@0x8fb0], and returns 0x0 [@0x8fa4].
  Reviewed: 2026-11-12
