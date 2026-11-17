# Readings: `usr/cpu/sysgen/IP28boot/mgras.a(mgras_share.o)`

One entry per routine, filed here from the reading batches by binary.

- `MgrasShare` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_share.o)` at 0x0
  **Inferred.** Reads a pointer from a1+0x70 and one from a0+0x20. Through the object that a0+0x20 points to, it adjusts a 4-byte count at offset 0x50 with load-linked and store-conditional loops (ll at 0x48 adds 1, ll at 0xb8 and 0x140 add -1; sc at 0x54, 0xc4 and 0x14c). When the word at offset 0x48 of that object is not a0 (bne at 0x34 taken) it takes a semaphore with psema at 0x178, then waits with us_delay at 0x19c while the word at offset 0x68 stays nonzero (bne at 0x1ac). It allocates a 0x68-byte block with kern_malloc at 0x90 when the doubleword loaded at 0x60 from a2 is zero (beq at 0x64) or matches no entry of the list headed at offset 0x6d8 (loop at 0x78 to 0x84), clears the block with bzero at 0xf8 and links it through sd at 0x110, 0x114 and 0x12c. The return at 0x16c yields 0x0 or 0xc. Its sibling MgrasUnshare calls MgrasDeleteTexSpace, which suggests this shares a texture-space record.
  Reviewed: 2026-11-12

- `MgrasUnshare` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_share.o)` at 0x1bc
  **Inferred.** Reads the doubleword at +0x468 (1128) of the object that a1+112 points to and returns at once when it is zero (beq at 0x1cc). Otherwise it searches the list headed at +1752 of the object that a0+32 points to for that pointer (beq at 0x1e4, bne at 0x1f4), reads and rewrites the word at the block's offset 0 (lw at 0x200, sw at 0x208), and when a re-read of that word at 0x210 is zero (beq at 0x214) calls MgrasDeleteTexSpace at 0x23c and then kern_free at 0x250 on the block. It clears +0x468 (sd at 0x220) before returning. The facts show a read, a write and a free-when-zero test, which reads as releasing a reference; they show no ownership check.
  Reviewed: 2026-11-12
