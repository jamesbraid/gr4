# Open questions and what the shipped software settles

The hardware headers mark what they do not know with "not known", "unknown" or an `UNKNOWN` label. This page is the ledger for those marks. Each entry says whether the shipped software settled it, the evidence, and for what is still open, what would settle it.

Grades follow the headers: **established** is read directly from a shipped binary or from the 6.5.7 standalone diagnostics; **inferred** is a reasoned reading, with the reasoning given; **unknown** is not derived. None of these is a measurement of the silicon. Binary evidence is cited by object and text offset in the 6.5.22 kernel graphics objects (`mgras.o`, `mgras_init.o`, `mgras_mco.o`). The diagnostics are the 6.5.7 standalone graphics diagnostics and their option-board command registry.

This pass covered the host interface, the board-level words and the multi-channel option. It did not examine the texture engine marks, the pixel processor identification-plane marks, the geometry-engine operation codes or the vertex-path marks; they are listed under "Still open" with the evidence that would settle them.

## Settled in this pass

### 1. Multi-channel option register map

Question: "what the option board's index values control" (board header, display control bus device 11). Settled. The kernel object that loads the option (`mgras_mco.o`: probe at text offset 0x0, FPGA load 0x30c, the two DAC loaders 0x590 and 0x96c, timing chip 0xb24, device 11 timing word 0x11a0, control registers 0x127c, ADV7162 register pointer 0x1328) uses a byte index port and a byte data port, and the index is a bank in the high nibble and a port in the low:

| Index | Target | Grade |
|---|---|---|
| 0x2n, 0x3n | ADV7162 true-colour DACs, channels 1 and 2 | established |
| 0x0n, 0x1n | ADV473-class overlay-palette DACs, channels 3 and 4 | established |
| 0x80, 0x90, 0xA0 | board control registers 1, 2, 3 | established |

The bank bases come from a five-entry per-channel table in the object's initialised data (0, 0x20, 0x30, 0, 0x10 for channels 0 to 4). The part names come from the loader routine names and the option's diagnostic command list (the registry lists 7162 and 473 palette tests). Ports on an ADV7162 channel: +0 is a 10-bit register pointer written as two bytes; +1 the palette data (256 entries of six bytes, each colour's high 8 bits then its low 2 bits); +2 the data port of the register the pointer selects; +3 a port the probe writes 3, 2 and a table byte to (role unknown). Reading register 3 returns 0x79 on a healthy part (the kernel compares), so register 3 is the identification register. Ports on an ADV473-class channel: +0 palette write address, +1 palette data (three bytes per entry), +6 command; +2 is inferred to be the pixel read mask because the display server writes it (0 or 0xFF) in its blanking sequence and the family's register order puts the mask there.

The option also has an FPGA configuration path (data byte at display-bus register select 0, control and status at 1) and its own timing chip (select 4 picks a register, select 5 is its 16-bit data, select 7 the auto-incrementing timing RAM). The FPGA load checks status bits 2:0 as 000 after the first control write (0xFE), 110 after the second (0x01) and after every data byte, and bits 1:0 both set after all 0xF688 bytes and 20 zero padding bytes. The probe writes 0xFF then 0 to the board ID byte; the two reads must match and be 1 or 0xAn, the low nibble being the revision.

Device 11's timing word is 0x318 for the FPGA ports, 0x6319 for the index and data ports (the display server sets the same value) and 0x631A for the timing chip. The three differ only in acknowledge mode (none, synchronous, asynchronous), which supports the header's reading of bits 1:0 of that word.

The full prose map, with the blanking sequence, is the comment block above the device 11 definitions in `MGRAS.h`; the index byte is `MCO_INDEX` in `MGRAS_DECODE.h`.

Still unknown: what each bit of the three board control registers does (register 2 takes 5 in the clock-start routine and the diagnostic text says it starts the on-board oscillator for the timing chip), what each timing-chip register number means, and the role of ADV7162 port +3. A datasheet for the timing chip and the ADV7162 register map would settle the last two; the control registers need the option board's PAL equations or a scope.

### 2. Blanking mask register

Question: "which DAC register the display server's blanking writes reach". The display server writes register pointer 4 (bytes 0x04, 0x00) of the same ADV7162 and then 0x0000 to blank or 0xFFFF to restore. Established: it is register 4 of the ADV7162, written 16 bits wide. Inferred: it is the pixel read mask (the effect is to mask every pixel). No ADV7162 datasheet is in the Library to check the register number against.

### 3. Host interface error causes

Question: the flag register's causes beyond the ones named. Settled for four. The kernel's general interrupt handler (`mgras.o`, text offset 0x8378) tests the group 0xE200 and, in order, prints a microcode error (bit 9), a DMA address range error (bit 13), a command-FIFO privilege violation (bit 14) and a DMA access or stack overflow (bit 15), clearing each through the interrupt-enable clear register. The messages are matched to bits by the handler's string-pointer offsets, which land on consecutive strings in the object's table in the same order; the interrupt enable the kernel programs at boot (`MgrasInitialize`, right after `MgrasInitHQ`), 0x4400E200, contains exactly this group plus the two FIFO high-level bits. The same handler also uses bit 16 (sync complete), bit 19 (context saved), bit 6 (context loaded) and bit 10 (buffer swap), which agree with the headers.

Changed: the old `error` reading of bit 8 is dropped from the header. The handler never tests bit 8, and the diagnostics' walk of the flag registers masks 25 bits (0x1FFFFFF), so there are 25 flag bits in all.

Still unknown: what raises flag bit 20. The kernel enables it at start-up (the flag-enable value 0x11000F is bits 3:0, 16 and 20). The buffer-swap path (`mgras.o` text offset 0x402c) reads bit 20 from the flag register, clears it and flushes the command FIFO. Reading how the microcode raises it, from the host interface microcode (`hq3.u`), would settle it.

### 4. Host interface values the kernel programs

Question: the headers listed watermark defaults "older notes recorded" and said the drivers program others. Settled: `MgrasInitHQ` (`mgras_init.o` text offset 0xfac) writes configuration 0x7E8C (OR the caller's bits), GIO configuration 0x765B900F, command-FIFO high 0x20 (less twice a per-board count when that is positive) and low 0x14, delay 0x64; data-FIFO high 0x28, low 0x14, delay 0xFFF; bus-FIFO low 2, high 6, delay 0x8C; flag enable 0x11000F; and clears every cause and enable first. Its caller then writes the interrupt enable 0x4400E200. The information-gathering routine (`mgras_init.o` text offset 0x8a8) writes the configuration as 0x7E8D, the same value with bit 0 set. The standalone diagnostics program 40 and 20 with delay 100 for both command and data FIFOs and 8, 2, 100 for the bus FIFO. The two sets are now separate constants in `HQ3_DECODE.h`. The configuration register is 15 bits on this chip (the diagnostics test it with mask 0x7FFF; 0x3FFFF on the later host-interface part), so bits 14:9 of the init value are real state; their meaning is unknown, and a register description of the host interface or a write/read-back probe would settle it.

The GIO configuration value decodes against fields the headers already define (bits 3:0 and 12 set, bit 6 clear) and against the bus-master timing fields in `HQ3.h` (all set), which is consistent with those fields being real.

### 5. Board identification probe

The kernel's probe (`mgras_init.o`, text offset 0x770) accepts a board only if the first word has bits 6:0 equal to 0x10, bit 16 set, bit 17 clear and bits 31:18 equal to 1, and does not look at bits 15:7. The word the headers record, 0x00050190, passes. So the "revision" nibble at bits 7:4 is only partly checked (bits 6:4 must be 001, bit 7 is free), and bits 15:8 are not compared by the probe; the information-gathering routine later saves bits 15:8 as a one-byte board field. The headers' revision and product split stays inferred; the probe fixes only which bits are compared. A second board's identification word (another revision) would settle the split.

### 6. Framebuffer size register, top byte

Question: what the top byte of the framebuffer size register means (traced as 0x90 under 6.5.22, per `PP1.h`). Not settled. I did not find the store in the kernel objects or the display-server objects; the register is probably written through the command stream. The 6.5.7 standalone diagnostics write the register with bits 31:11 clear (0x31E for one raster engine, 0x25E for two, matching the field layout in `PP1.h`), so those bits are never set by the diagnostics. Settling it needs the writer of the 6.5.22 value (a trace of the command stream filtered on register 0x16E) or a register description of the pixel processor.

### 7. Context image bank words and flags

Question: the context image's word 1 bits 26 and 28, and words 16-17 (`HQ3.h`). Settled for bit 26 and words 16-17; bit 28 narrowed. The bank-validation routine (`mgras.o`, `MgrasValidateBanks`, text offset 0x3390) writes the inverse of one field of each of the context's two draw-surface descriptors into image words 16 and 17 and sets bit 26 of word 1, for an image that is not currently loaded. When the context is loaded it sends the same two values as the arguments of the bank-validation command instead. So bit 26 means "bank words changed" and words 16-17 are the bank pair (established); that the pair names the front and back bank the next frame draws rests on the command's name and use (inferred). The old note that words 18-39 mark bit 26 is withdrawn: bit 27 is the flag for those words, in the code that copies the X server's raster state in. Bit 28 is set in the image of the kernel's own context at creation, with bit 31 (`mgras.o` context setup); a text search of the decompiled kernel objects finds no mask of that bit, so its reader is the load microcode (inferred; a shift-and-sign test would not show in a text search).

### 8. Per-engine transfers and the "late word"

Question: how the kernel addresses the second geometry engine, and why its read starts one word low. Settled for the second: `MgrasEramRead` (text offset 0x1058) loops once per engine (the board's engine count byte), advancing the host buffer by the word count times four each pass, and tests bit 2 of the host address (text offset 0x11ec). When it is set it reads one word lower and one word more. The second pass starts at an odd word only because a slot is an odd number of words, so the shift is a host-buffer alignment rule, not an engine behaviour (established; replaces an inference in `GE11.h`). `MgrasEramWrite` loops the same way. Still unknown: what makes the second pass reach the second engine; it is not a command-word difference, so it is the host-interface microcode's order (see the table).

### 9. Pixel transfer zoom registers

Question: the encoding of the two zoom registers (0x154, 0x155). Narrowed. The host-to-raster setup routine in `libGLcore.so` (`__glMgrInitHostToRSS`, decompiled) writes both as 8.8 fixed point: 0x100 each with no zoom; for magnification both equal the zoom factor times 256 and the transferred width is (width x factor + 255) >> 8; otherwise the step register is (source width << 8) divided by destination width and the start register is ((source width << 8) / step - destination width) << 8 plus step. The two pairs recorded in earlier notes (0x101423AC / 0 and 0x3BFC00 / 0x1010090) do not fit this encoding and are withdrawn as register values; their source is not in this repository (decompilation-based, not checked against a disassembly).

### 10. Main-mode bit 10 and the TL_MODE enables

Questions: main-mode bits 12:10 and the texture loader's border enables. Narrowed; the rules are in `CMAP.h` (X server mode-word routine) and `TE1.h` (the routine that composes the loader mode, which reproduces both traced values 0x34E26 and 0x35A26 from its inputs). Neither is closed; see the table.


## Still open, with what would settle each

| Mark | Where | Status | What would settle it |
|---|---|---|---|
| GE unit-1 codes 0x23, 0x2A, 0x35, 0x41, 0x44, 0x46, 0x4C, 0x4E, 0x51, 0x55, 0x57, 0x63, 0x69 to 0x6E, 0x70, 0x72, 0x74 to 0x77, 0x79, 0x7B, 0x7D, 0x08, 0x0B; unit-2 k 5, 7, 11 | `GE11.h` | Not examined here. The instruction test fixes 41 operations; these appear only in production microcode. | An operand-level trace of one module that uses them on a model with a known answer (the triangle setup module is the planned route), or an instruction-set description of the chip. |
| Layout of the geometry engine's loaded record | `GE11.h` | Not examined. | Same. |
| Second geometry engine selection | `HQ3.h`, `GE11.h` | Narrowed (see 8): the kernel repeats each transfer once per engine with identical command words; nothing it writes names the engine. Which engine answers which pass is the host-interface microcode's choice, not derived. | With two engines, give each a different word at one ERAM address, then issue two identical pass-through reads and see which engine answers each. Or read the pass-through handlers in the host-interface microcode (its instruction format is not decoded here). |
| Command-stream tokens 0x0EB, 0x05F, 0x097, 0x0DA, 0x096; geometry-engine word 3 | `HQ3.h` | Not examined. | The microcode handler for each token (`mgras_ge.u` line table plus the token index table) read for what it stores. |
| Context image word 1 bit 28 | `HQ3.h` | Narrowed (see 7): set only on the kernel's own context image, at creation, next to bit 31; no decompiled kernel code masks it. Bit 26 and words 16-17 are settled. | The load phase of the host-interface microcode read for which image bits it branches on, or a load of the kernel's image with bit 28 cleared compared with the original. |
| `RE4.h` transfer mode: positions of RGB order, LSB-first, zoom, decimate, read mask | `RE4.h` | Open. The diagnostics' register test uses a 21-bit mask for this register, yet the bitmap-opaque bit sits at bit 23 in the diagnostics' own field list, so the 21 bits are probably the bits the test can read back, not the register width (inferred). | A host-side write of each candidate bit followed by a pixel transfer, or the register description. |
| Zoom factor encoding | `RE4.h` | Narrowed (see 9): 8.8 fixed point, 0x100 is no zoom; the shrinking step and start follow a formula the driver computes. Open: how the driver's magnifying-path value is derived, and what the earlier recorded pairs were. | A capture of the two registers with the driver's zoom set to 2, 4 and 0.5 (three pairs), compared with the formula in `RE4.h`. |
| Line endpoint flag positions | `RE4.h` | Open. | A capture of line instructions with the first/last bits varied. |
| Pixel-processor identification plane: component order in the 15-bit mode, plane placement, identification mask bits | `PP1.h` | Not examined. | A framebuffer read-back after drawing one pure colour per component. |
| Pixel-engine window-mode ID bits 9:8, DRB top byte (above) | `PP1.h` | Open. | As above. |
| Window-mapper main-mode bits 12:10 | `CMAP.h` | Narrowed (see 10): bit 10 is set by the display server unless a per-visual table value is 7 (decompilation, not checked against a disassembly); bits 11 and 12 are not produced by the routine that builds the word. | The word printed before and after that routine for one window of each visual class. |
| Pixel buffer allocation (offscreen buffer window top byte 0xA8) | `MGRAS.h` | Not examined. | Same trace as above on a pixel-buffer visual. |
| Texture engine register positions and paging behaviour | `TE1.h` | Narrowed (see 10): the loader mode register's bits 12:9 are four enables: bits 11, 10 and 9 set and 12 clear for an ordinary load, bit 12 set and 10 clear for a bordered one; which enable is which of the four names the diagnostics use is unknown. Other TE1 registers and paging not examined. | A load of a bordered image with one of bits 12:9 set at a time. Texture-memory diagnostics output for the rest. |
| Reset value of every register in the decode headers | decode headers | Open, all rows `reset=unknown`. Only start-up values the drivers write are known (see 4), and these are not hardware resets. | A register read taken on a board before any driver has run (the firmware-time read of the host interface), or the chip data sheets. |

## Notes on provenance

The standalone diagnostics are shipped with IRIX 6.5.7; their facts are cited by what they do (a value written, a mask tested) and no source text is copied. Routine names in the kernel objects are used as locators only; the offsets above are text offsets in the objects named.
