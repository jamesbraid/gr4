# Readings: `usr/cpu/sysgen/IP28boot/mgras.a(mgras_timing.o)`

One entry per routine, filed here from the reading batches by binary.

- `MgrasCalcScreenSize` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_timing.o)` at 0x0
  **Inferred.** Copies two size fields out of the structure at a0 and returns one of them. It loads the word at a0+4 and stores its halfword at offset 0 of a register the facts do not show (lw at 0x4, sh at 0x8, presumably a1), loads the word at a0+8 and stores its halfword the same way (lw at 0xc, sh at 0x14, presumably a2), and returns the word at a0+4 (return at 0x10). The name suggests the screen width and height.
  Reviewed: 2026-11-12
