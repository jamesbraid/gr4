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

## Still open, with what would settle each

| Mark | Where | Status | What would settle it |
|---|---|---|---|
| GE unit-1 codes 0x23, 0x2A, 0x35, 0x41, 0x44, 0x46, 0x4C, 0x4E, 0x51, 0x55, 0x57, 0x63, 0x69 to 0x6E, 0x70, 0x72, 0x74 to 0x77, 0x79, 0x7B, 0x7D, 0x08, 0x0B; unit-2 k 5, 7, 11 | `GE11.h` | Not examined here. The instruction test fixes 41 operations; these appear only in production microcode. | An operand-level trace of one module that uses them on a model with a known answer (the triangle setup module is the planned route), or an instruction-set description of the chip. |
| Layout of the geometry engine's loaded record | `GE11.h` | Not examined. | Same. |
| Second geometry engine selection | `HQ3.h` | Not examined. | A trace of the kernel's per-engine loop on a two-engine board. |
| Command-stream tokens 0x0EB, 0x05F, 0x097, 0x0DA, 0x096; geometry-engine word 3 | `HQ3.h` | Not examined. | The microcode handler for each token (`mgras_ge.u` line table plus the token index table) read for what it stores. |
| Context image word 1 bits 26 and 28, words 16-17 | `HQ3.h` | Not settled. The kernel clears bit 26 after a load and the image carries the X-server raster shadow when it is set, which is the existing reading. Bit 28 and words 16-17 have no reader in the objects examined. | The load microcode in `hq3.u` read for which context words it consumes. |
| `RE4.h` transfer mode: positions of RGB order, LSB-first, zoom, decimate, read mask | `RE4.h` | Open. The diagnostics' register test uses a 21-bit mask for this register, yet the bitmap-opaque bit sits at bit 23 in the diagnostics' own field list, so the 21 bits are probably the bits the test can read back, not the register width (inferred). | A host-side write of each candidate bit followed by a pixel transfer, or the register description. |
| Zoom factor encoding | `RE4.h` | Open. | Two more captured pairs of factor register values for known zooms (powers of two, non-integers). |
| Line endpoint flag positions | `RE4.h` | Open. | A capture of line instructions with the first/last bits varied. |
| Pixel-processor identification plane: component order in the 15-bit mode, plane placement, identification mask bits | `PP1.h` | Not examined. | A framebuffer read-back after drawing one pure colour per component. |
| Pixel-engine window-mode ID bits 9:8, DRB top byte (above) | `PP1.h` | Open. | As above. |
| Window-mapper main-mode bits 12:10 | `CMAP.h` | Open. The diagnostics write only the value 4 to the mode file and give no names. | A display-server trace under each visual that varies the bits. |
| Pixel buffer allocation (offscreen buffer window top byte 0xA8) | `MGRAS.h` | Not examined. | Same trace as above on a pixel-buffer visual. |
| Texture engine register positions and paging behaviour | `TE1.h` | Not examined. | Texture-memory diagnostics output and the texture engine registers' read/write masks. |
| Reset value of every register in the decode headers | decode headers | Open, all rows `reset=unknown`. Only start-up values the drivers write are known (see 4), and these are not hardware resets. | A register read taken on a board before any driver has run (the firmware-time read of the host interface), or the chip data sheets. |

## Notes on provenance

The standalone diagnostics are shipped with IRIX 6.5.7; their facts are cited by what they do (a value written, a mask tested) and no source text is copied. Routine names in the kernel objects are used as locators only; the offsets above are text offsets in the objects named.
