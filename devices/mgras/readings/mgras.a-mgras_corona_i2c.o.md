# Readings: `usr/cpu/sysgen/IP28boot/mgras.a(mgras_corona_i2c.o)`

One entry per routine, filed here from the reading batches by binary.

- `mgras_fpi2cRead` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_corona_i2c.o)` at 0x0
  **Inferred.** Role (from name): reads a byte from the I2C bus. It loads a byte from a0+0x62c08 (lbu at 0x70) or from a0+0x62c88 (0x94), reads the word at a0+0x70100 (lw at 0x2c and 0x40), stores the byte at a2+0 (stores at 0x74 and 0x9c), calls us_delay with 1 at 0x1c, and returns a2 on the path at 0x80.
  Reviewed: 2026-11-12

- `mgras_fpi2cWrite` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_corona_i2c.o)` at 0xa0
  **Inferred.** Role (from name): writes a byte to the I2C bus, the counterpart of `mgras_fpi2cRead`. It stores bytes to a0+0x62c08 (sb at 0x110) and a0+0x62c88 (0x12c) and reads the word at a0+0x70100 (lw at 0xcc and 0xe0). It calls us_delay with 1 at 0xbc. The return at 0x118, after the store at 0x110, gives the result of that delay call.
  Reviewed: 2026-11-12

- `mgras_fpi2cProbe` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_corona_i2c.o)` at 0x138
  **Inferred.** Role (from name): probes for a device on the I2C bus. It compares the byte at a0+0x62c08 with 0x55 (0x1c4) and then 0xaa (0x224). It stores bytes to a0+0x62c08 and a0+0x62c88 and words to a0+0x6802c (0x15c and 0x24c) around those tests, and calls us_delay with 1 nine times (0x168 to 0x20c). It returns 0 or 1.
  Reviewed: 2026-11-12

- `mgras_fpi2cSetup` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_corona_i2c.o)` at 0x250
  **Inferred.** Role (from name): configures the I2C device. It calls mgras_fpi2cWrite five times (0x264 to 0x2a4), passing a1 and a2 as (1, 0x0), (0x0, 0x7f), (0x1, 0x20), (0x0, 0x1c) and (0x1, 0x40), and returns 1. The branches do not test the results of the writes.
  Reviewed: 2026-11-12

- `mgras_fpi2cStart` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_corona_i2c.o)` at 0x2c0
  **Inferred.** Role (from name): sends an I2C start sequence. It calls mgras_fpi2cWrite three times, passing the constant 0x40 as the third argument (0x2d8), its own a1 at entry (0x324) and the constant 0x44 (0x338). It calls mgras_fpi2cRead with a stack buffer at sp-64 (0x2e8, 0x34c and 0x3bc). It calls mgras_fpi2cStop at 0x300 when a value differs from 0x81 (0x2f8), at 0x370 when s3 is zero, and at 0x398 when bit 0x8 of a value is set (0x390). It also tests bit 0x80 of a value (0x35c) and bit 0x1 of its own a1 at entry (0x3ac). It returns 0 or 1.
  Reviewed: 2026-11-12

- `mgras_fpi2cReceive` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_corona_i2c.o)` at 0x3cc
  **Inferred.** Role (from name): receives bytes from the I2C bus. It calls mgras_fpi2cRead with a stack buffer at sp-64 (0x3f0) and calls it again with its second argument as the buffer at 0x464. It tests bit 0x80 (0x400) and bits 0x37 (0x440) of a value. It calls mgras_fpi2cStop at 0x414 when s1 is zero and at 0x448 when any of bits 0x37 is set. It returns 0 or 1.
  Reviewed: 2026-11-12

- `mgras_fpi2cSend` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_corona_i2c.o)` at 0x478
  **Inferred.** Role (from name): sends one byte on the I2C bus. It calls mgras_fpi2cWrite with its second argument (0x490), calls mgras_fpi2cRead with a stack buffer at sp-48 (0x4a4), and calls mgras_fpi2cStop at 0x4c8, 0x500 and 0x518. It tests bit 0x80 (0x4b4) and bits 0x37 (0x4f8) of a value, and returns 0 or 1.
  Reviewed: 2026-11-12

- `mgras_fpi2cStop` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_corona_i2c.o)` at 0x530
  **Inferred.** Role (from name): ends an I2C transfer. It calls mgras_fpi2cWrite with the constant 0xc2 (0x54c), calls mgras_fpi2cRead with a stack buffer at sp-64 (0x564), and compares a value with 0x81, which is held in s7 (0x570). It returns 0 or 1.
  Reviewed: 2026-11-12

- `mgras_fpi2cPortRead` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_corona_i2c.o)` at 0x5b4
  **Inferred.** Role (from name): reads from a port of the I2C device. It calls mgras_fpi2cStart with a1 or 0x1 (0x5c8), mgras_fpi2cReceive with its own a2 at entry as the second argument (0x5dc), and mgras_fpi2cStop (0x5ec). A call that returns 0 branches to the shared exit at 0x608, and the routine returns 0 or 1.
  Reviewed: 2026-11-12

- `mgras_fpi2cPortWrite` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_corona_i2c.o)` at 0x618
  **Inferred.** Role (from name): writes to a port of the I2C device. It calls mgras_fpi2cStart (0x628), mgras_fpi2cSend with its third argument as the second argument (0x63c), and mgras_fpi2cStop (0x64c). A call that returns 0 branches to the shared exit at 0x668, and the routine returns 0 or 1.
  Reviewed: 2026-11-12

- `mgras_fpi2cPanelID` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_corona_i2c.o)` at 0x678
  **Inferred.** Calls `mgras_fpi2cPortRead` at 0x688 with a1 = 0x70 and passes its own a1 on as the third argument. When that call returns nonzero (the branch at 0x690 skips this on zero), it does an `lw` at 0x6a0 and an `sw` at 0x6b0, both at offset 0; the facts do not show the base register or what the word means. Returns 0 or 1.
  Reviewed: 2026-11-12

- `mgras_fpi2cPanelOn` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_corona_i2c.o)` at 0x6c4
  **Inferred.** Role (from name): turns a panel on. Calls `mgras_fpi2cPortWrite` with a1 = 0x70 and a2 = 0xe7 at 0x6f0, then calls in order `mgras_fpi2cAudioVolLeft`, `mgras_fpi2cAudioVolRight`, `mgras_fpi2cAudioBass` and `mgras_fpi2cAudioTreble` with values loaded from `.sdata` offsets 0, 4, 8 and 12, `mgras_fpi2cAudioSwitch` with 0xce, `mgras_fpi2cBlUp` with 0x64, `mgras_fpi2cBlDown` with 0xa, and `mgras_fpi2cSetBit` with 0x0. Each call returning zero branches to 0x7ac, skipping the rest. Returns 0 or 1.
  Reviewed: 2026-11-12

- `mgras_panels_off` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_corona_i2c.o)` at 0x7bc
  **Inferred.** Loops while a counter is below 0x2 (branch at 0x804). The loop body has several guards: two compare a loaded word with zero (at 0x824 and 0x82c), one tests a byte loaded at 0x834 against 0 (at 0x838) and one against 0xff held in s7 (at 0x840); each of these branches back to the loop head at 0x800. `mgras_fpi2cPanelOff` is called at 0x7e8 with arguments the facts do not resolve. The table contents and the return value (`v0`, unset in the facts) are not shown.
  Reviewed: 2026-11-12

- `mgras_fpi2cPanelOff` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_corona_i2c.o)` at 0x870
  **Inferred.** Writes 0xff to port 0x70 through `mgras_fpi2cPortWrite` at 0x87c and returns that call's result unchanged. It is a single-command wrapper; the 0xff value as "off" is read from the name, not from a register contract.
  Reviewed: 2026-11-12

- `mgras_fpi2cBlUp` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_corona_i2c.o)` at 0x890
  **Inferred.** Role (from name): steps a backlight level up. Loops with a counter s2 that starts from a1 minus one and ends at -1 (branches at 0x8c8 and 0x8e4). Each pass makes up to four `mgras_fpi2cPortWrite` calls with a1 = 0x70 and data bytes 0xe6, 0xe4, 0xe6 and 0xe7, each ORed with 0x0 or 0x8 (calls at 0x8f4, 0x90c, 0x924 and 0x93c); a zero return branches to 0x968. A `.sbss` word is compared with 0x64 at 0x958, and when it is at or above 0x64 the branch goes back to 0x8e4. Returns 0 or 1.
  Reviewed: 2026-11-12

- `mgras_fpi2cBlDown` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_corona_i2c.o)` at 0x998
  **Inferred.** Role (from name): steps a backlight level down. Has the same counter (s2 from a1 minus one, ending at -1) and four `mgras_fpi2cPortWrite` calls with a1 = 0x70 and data bytes 0xe2, 0xe0, 0xe2 and 0xe7, each ORed with 0x0 or 0x8, as `mgras_fpi2cBlUp` at 0x890. The `.sbss` test differs: `blez` at 0xa64 branches back to 0x9f4 when the word is at or below zero, where `mgras_fpi2cBlUp` compares against 0x64. Returns 0 or 1.
  Reviewed: 2026-11-12

- `mgras_fpi2cAudioVolLeft` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_corona_i2c.o)` at 0xaa4
  **Inferred.** Writes one audio control value over I2C: `mgras_fpi2cStart` with address 0x82 at 0xac0, `mgras_fpi2cSend` of selector 0x0 at 0xad4, `mgras_fpi2cSend` of the value in a1 at 0xae8, then `mgras_fpi2cStop` at 0xaf8. A zero return from start or send branches to 0xb14 past the rest of the transaction. Returns 0 or 1.
  Reviewed: 2026-11-12

- `mgras_fpi2cAudioVolRight` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_corona_i2c.o)` at 0xb24
  **Inferred.** Same transaction as `mgras_fpi2cAudioVolLeft` at 0xaa4 (start with 0x82, stop, failure exits at 0xb94), except the selector byte is 0x1 (at 0xb54) instead of 0x0. Returns 0 or 1.
  Reviewed: 2026-11-12

- `mgras_fpi2cAudioBass` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_corona_i2c.o)` at 0xba4
  **Inferred.** Same I2C transaction shape as `mgras_fpi2cAudioVolLeft` at 0xaa4 (start with 0x82, selector, value from a1, stop, failure exits at 0xc14), with selector byte 0x2 at 0xbd4. Returns 0 or 1.
  Reviewed: 2026-11-12

- `mgras_fpi2cAudioTreble` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_corona_i2c.o)` at 0xc24
  **Inferred.** Same I2C transaction shape as `mgras_fpi2cAudioVolLeft` at 0xaa4 (start with 0x82, selector, value from a1, stop, failure exits at 0xc94), with selector byte 0x3 at 0xc54. Returns 0 or 1.
  Reviewed: 2026-11-12

- `mgras_fpi2cAudioSwitch` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_corona_i2c.o)` at 0xca4
  **Inferred.** Same I2C transaction shape as `mgras_fpi2cAudioVolLeft` at 0xaa4 (start with 0x82, selector, value from a1, stop, failure exits at 0xd1c), with selector byte 0x8 at 0xcdc. Returns 0 or 1.
  Reviewed: 2026-11-12

- `mgras_fpi2cSetBit` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_corona_i2c.o)` at 0xd2c
  **Inferred.** Writes one of two bit patterns to port 0x70: 0xef through `mgras_fpi2cPortWrite` at 0xd44 when a1 is nonzero, and 0xe7 at 0xd60 when a1 is zero (branch at 0xd30). The return value is the result of the last `mgras_fpi2cPortWrite` call. The facts do not show what the two patterns select on the device.
  Reviewed: 2026-11-12

- `mgras_fpi2c_command` in `usr/cpu/sysgen/IP28boot/mgras.a(mgras_corona_i2c.o)` at 0xd70
  **Inferred.** Dispatches one I2C command from a table. The command number is the word at a1 (`lw` at 0xd78), and numbers at or above 0x11 (unsigned compare at 0xd94) go to the error path, which calls `cmn_err` with level 0x4 at 0xdbc and returns 0x16 at 0xde0. Valid numbers index a `.rodata` table of 8-byte entries and jump indirectly through a register at 0xda8. The handler each valid number reaches is an unresolved table target, so the per-command behaviour is an open sub-fact.
  Reviewed: 2026-11-12
