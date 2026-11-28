# HQ3 and HQ4 byte order for a little-endian host

What the two big-endian bits in the host interface's GIO configuration word do, and what a 32-bit store and a 64-bit
`sd` from a little-endian processor put on the wire to an IMPACT board, on an Indigo2 (HQ3, GIO64 slot) and on an
Octane (HQ4, XIO widget). No IRIX, PROM or public driver ever ran a little-endian host against these chips, so the
bits' own effect is **unknown**; what is established is the wire rules around them, which fix most of the answer for
the shipped bit values.

Ratings follow the repository legend in [AGENTS.md](../../AGENTS.md), section 7: established, secondary, inferred,
unknown. No capture or run backs any claim here.

## Short answer

| Question | Answer | Rating |
|---|---|---|
| What does `host_big_endian` (bit 0) do? | Not stated by any source. Named for the host's byte order; every shipped writer sets it. | unknown (name established) |
| What does `display_bus_big_endian` (bit 1) do? | Not stated. Named for the display bus (DCB). The one diagnostic that clears it only reads the register back. | unknown (name established) |
| Does the driver have to clear them for a little-endian host? | Not for the Octane: with them set, as shipped, the board decodes the wire as a big-endian host's, which is the fixed-lane rule below. For the Indigo2 it is unknown whether the GIO64 endian bit overrides them. | inferred (Octane), unknown (Indigo2) |
| 64-bit `sd` of value `V` | Octane: one Crosstalk doubleword write whose data is `V`, byte for byte as a big-endian `sd` of `V` would send it. Indigo2: the same 64 data bits on AD[63:0], with the bus's little-endian bit set. | inferred |
| 32-bit `sw` of value `V` at address `a` | Octane: the same doubleword packet, `V` in the half a big-endian host reaches at `a XOR 4`. Indigo2: `V` on AD[31:0] for `a` mod 8 = 0 and AD[63:32] for 4, the opposite of a big-endian host. | inferred |
| Formatter for host pixel data | Its mode word has an endian field (0 = BE_TO_BE, 1 = LE_TO_BE, 2 = BE_TO_LE) that no shipped software sets to anything but 0. What 1 and 2 do is unknown. | established (field), unknown (effect) |

## The bits

- Bit 0 and bit 1 of the GIO configuration word are named for GIO-bus big-endian and DCB-bus big-endian in the
  standalone graphics diagnostic (`stand/arcs/ide/isddevices/graphics/MGRAS/mgras_const.h`, `gio_be`, `dcb_be`,
  and the "GIO_CONFIG reset conditions" block). The same diagnostic is built for the Octane with `-DHQ4`
  (`MGRAS/Makefile`), so the names cover both chips. Established for names and positions.
- Every write the scan found sets both. The diagnostic's default is `0xf` (`mgrashw.h.diag`); its GE download path writes
  `0x765b104f`; the Indigo2 kernel (6.5.0 `mgras_init.o`, sha256 `8369b6d4a250d395...`) writes `0x765B900F` at board
  `+0x50114` in `MgrasGatherInfo`, `MgrasReset` and `MgrasInitHQ`; the Octane kernel (`mgras_init.o` from the 6.5.30 IP30
  `mgras.a`, sha256 `32a535dc59572759...`; the member is `ceb56765bf164654...`) writes the same constant at `+0x11008` in
  the same three routines; and the stock Octane
  PROM (sha256 `ee4722ca6f9b821f...`) does so at file offsets `0x3b494`, `0x3b8a8` and `0x3b91c`, next to a word at
  `+0x11000` (`0x108d` or `0x108c`, bit 2 set). The kernel's context switch saves and restores the word, and its GE
  download reads it, sets bit 6 and writes the saved value back. No write site read in these objects clears bit 0 or
  bit 1. Established for the writes the scan read: 32-bit stores at `+0x1000` and `+0x1008` of the base the Octane objects
  use, not every store in every object.
- That `+0x11008` is the HQ4 counterpart of the HQ3 word at `+0x50114` is inferred: the same constant, written beside a
  host-interface control word, saved and restored by the switch (`registers.md` lists it as the per-context word).
- The only test that touches them is the host bus test (`mgras_HQGIObus`, "XIO Bus Test" in the HQ4 build): it clears bit 1
  and then bit 3, writes the TLB valid word between, and reads the register back. That shows bit 1 is a stored,
  writable bit and nothing else; no DCB access happens while it is clear. No test clears bit 0. Established for what the
  test does.
- The diagnostic's init check expects both bits set, but runs after the diagnostic's own graphics reset, so it is not a
  power-on state, and its other expected word (host-interface config `0x89`, bit 2 clear) disagrees with what the
  Octane kernel and PROM write (`0x108c`, bit 2 set) and the Indigo2 kernel (`0x7E8C`). The shipped scripts ignore its result (the failure branch is
  commented out in `ide/IP22/field`). The reset value of both bits stays unknown.
- The host-interface config word has a third bit named for big-endian, bit 2 (`big_endian`, `HQ3_CONFIG_BIGENDIAN`). It is set
  in every shipped write, and no reader turned up in the source tree. Unknown.

## What the wire looks like

### Rules that hold whatever the board does

| Rule | Rating | Source |
|---|---|---|
| GIO64 numbers bytes from the little end in a little-endian transfer (byte 0 on bits 7:0 of a doubleword, byte 7 on 63:56) and from the big end in a big-endian one. The byte-count cycle carries a little-endian bit (bit 28). The bus does nothing different; the devices must use the bit to read address and byte count. | established | GIO Bus Specification, version 1.1 (draft), 7 April 1992, section 4.2.1 and Table 7 (printed pages 4-1, 4-2, 4-6) |
| The Crosstalk "data section" numbering is endian independent: DS0 is bits 63:56 of the doubleword, whatever the mode. In big-endian mode DS n is byte n; in little-endian mode DS n is byte 7 minus n. | established | Bridge ASIC Specification, revision 4.0 (for Rev D silicon, 26 April 1998), "Crosstalk Data Ordering", section 7.2, printed page 87 and Figure 10, quoting the Crosstalk specification; the chips repository's Crosstalk packet notes, section 3.5 |
| On the processor's system bus, a sub-doubleword request puts its bytes on lanes chosen by address modulo 8 and the endian mode: a byte at modulo 1 is on SysAD[15:8] little-endian and SysAD[55:48] big-endian. | established for the NEC VR10000; inferred for the R4000, R4400 and R10000 | VR10000/VR12000 User's Manual, NEC document U10278EJ3V0UM00 (3rd edition, May 1998), page 126; the R10000 manual is not held |
| A doubleword store puts register bits 63:0 on SysAD[63:0] in both modes. | inferred | follows from the lane example above; no page states it for `sd` |
| The Indigo2's MC is wired to SysAD[31:0] and answers each register at two addresses four bytes apart, the higher for a big-endian CPU and the lower for a little-endian one. A fixed-lane SGI device on this bus is reached by moving the word address, not by changing the value. | established for the MC | MC Chip Specification, section 5 (MC Internal Registers); the held copy has no number, revision or date; the chips repository's MC notes |

### Little-endian host, derived lanes

A little-endian access of `size` bytes at address `a` lands on the lane a big-endian access reaches at
`a XOR (8 - size)`: byte `XOR 7`, halfword `XOR 6`, word `XOR 4`, doubleword unchanged. Inferred, by arithmetic from the
two numbering rules above.

| Host | Access | On the wire | Rating |
|---|---|---|---|
| Octane (R10000, HEART, Crossbow, XIO) | `sd V`, `a` mod 8 = 0 | One doubleword write packet, data `V`, all eight data enables; DS0 = V[63:56]. Identical to a big-endian `sd V`. | inferred |
| | `sw V`, `a` mod 8 = 0 | Doubleword packet at `a`, `V` on bits 31:0 (DS4 to DS7). A big-endian `sw` at `a` puts `V` on DS0 to DS3. | inferred |
| | `sw V`, `a` mod 8 = 4 | Doubleword packet at `a - 4`, `V` on bits 63:32 (DS0 to DS3), the lanes a big-endian `sw` at `a - 4` uses. | inferred |
| | `sb`, `sh` | Lane `a XOR 7`, `a XOR 6`, as above. | inferred |
| Indigo2 (R4x00 or R10000, MC, GIO64 slot) | `sd V` | 8-byte transfer, little-endian bit set, AD[63:0] = `V` (byte 0 on AD[7:0]). A big-endian `sd` sends the same 64 bits with the bit clear. | inferred (the MC performs 64-bit CPU transfers to a slot once `GIO64_ARB` size is set, established in `libsk/graphics/MGRAS/mgras_init.c`) |
| | `sw V` | 4-byte transfer, little-endian bit set; `V` on AD[31:0] for `a` mod 8 = 0 and AD[63:32] for 4. Whether the MC and the MUX chip also copy the word to the other half is unknown. | inferred / unknown |

The board's side, with bits 0 and 1 left at their shipped value of 1 (inferred, reading the bits as "host is big
endian"): the board decodes lanes as a big-endian host's would. Inferred: IRIX and OpenBSD reach every 32-bit HQ4 register with `lw`/`sw`
at an 8-byte-aligned offset (`+0x20000` status, `+0x20008` FIFO status, `+0x20100`, `+0x20200`, `+0x40000` FIFO
thresholds, `+0x11000`, `+0x11008`; OpenBSD `impactreg.h`, IP30 objects), which on a big-endian host rides DS0 to DS3, the high half. The
Crosstalk generic widget registers sit in the other half (`xwidget.h`: `w_id` at `+4`). So on the Octane:

- A register BE software reaches with `sw` at `b` (`b` mod 8 = 0) takes a little-endian `sw` at `b + 4`, value unchanged.
  A little-endian `sw` at `b` reaches the lanes of the generic widget register at `b + 4`. Inferred.
- A little-endian `lw` at `+0` reads the low half, where the generic widget identification word sits; a read at `+4` reads
  the high half, the board identity word the diagnostic reads at `+0`. Inferred: both words use the same
  revision, part and manufacturer layout, so the planned probe (read the identity word at `+0` under each candidate lane
  rule) cannot tell the rules apart unless the two words differ; the revision at `+4` is unknown.
- The numeric packet (`cmd << 32 | data`) and the burst-write pixel pairs are `sd`: unchanged on a little-endian host, built
  from two 32-bit values in registers, never from a 64-bit load of memory (a little-endian `ld` of two adjacent words
  swaps them). Inferred. IRIX, OpenBSD and the Linux driver all build the packet this way.
- The command window also takes 32-bit stores (the Linux driver calls the second word's address "?" for HQ4, and gr4
  counts an `sd` as two stream words). What the board does with a lone 32-bit store whose data is on the low half is unknown;
  use `sd` only.

On the Indigo2 the same table applies if HQ3 keys on lanes. If HQ3 instead obeys the bus's little-endian bit, plain
addresses reach every register and an `sd` arrives with its halves swapped, so the command word must be rotated by 32 bits
first. Both fit every source held; none separates them. Unknown.

### DCB data

The DCB width field in the address (`MGRAS.h`: 1, 2, 3 or 4 bytes) picks how many bytes of the access go to the device.
IRIX, OpenBSD and the Linux driver write byte registers at the slot base (`xmap + 0x08`, `0x88`; VC3 index at `+0x08`), and
the VC3 index-and-data pair as one word, `0x1d000100`, at the width-3 address (index byte, then two data bytes). So in a
big-endian host the device sees the first `n` bytes in address order, the top `n` bytes of the register value. Inferred
from the public drivers. For a little-endian host the same lanes are reached by the address rule above with the value unchanged
(inferred, with bit 1 at its shipped value); what clearing bit 1 would do is unknown.
Inferred: the only "swap endian" bit in the IRIX graphics source for a display bus word is bit 28 of the field layout in
`MGRAS/mgras_tv.c`, which is the REX3 `DCBMODE` layout (NetBSD `newportreg.h`: `REX3_DCBMODE_SWAPENDIAN` `0x10000000`)
reused by a test file; none of the control words IRIX programs for IMPACT (`0x108c`, `0x1084`, `0x318c`, `0x210a`,
`0x1090`) has bit 28. Whether IMPACT's per-device control word has any swap bit is unknown.

### Formatter

The pixel-format word (`HQ_FC_ADDR_PIXEL_FORMAT_MODE`, sent as a command-FIFO header `0x000c0004` plus the word) has
the endian field in bits 5:4: 0 BE_TO_BE, 1 LE_TO_BE, 2 BE_TO_LE; bit 6 swaps bytes, bit 7 swizzles components
(`mgras_const.h`, names and positions established). Software leaves the field at 0: libGLcore sends `0xE00`
(canonical), `0xE8D` and `0xE8E` (swizzled ABGR loads) and the PROM writes the canonical mode, established from the shipped
binaries; the Linux driver writes `0xe00`, `0x200` and `0x600`, inferred from the public driver. The diagnostic plan lists tests for the BE-BE, BE-LE and LE-BE
cases (`MGRAS/doc/hq_level2_diagplan.fmdoc`), but no held source or `ide.IP30` string contains them. Reading LE_TO_BE as
"little-endian host data converted for the big-endian board" is inferred from the names. Unknown: whether the
formatter sees the burst-write `sd` stream or only DMA and command-FIFO pixel data, and what bits 5:4 = 1 does to
each component size.

## Unknown, and what settles it

| Unknown | Settled by |
|---|---|
| What bit 0, bit 1 and config bit 2 do when clear, and their power-on values. | The HQ3 or HQ4 chip description (none held), or a board whose first access after power-on is read before any write. Hardware: an Indigo2 with a little-endian CPU module; the owner has none, and an Octane cannot run little-endian (HEART has no byte-order field). |
| Whether HQ3 follows the GIO64 endian bit or the configuration bit. | The same Indigo2 test: a little-endian `sw` to `+0x50114` and a read at both words. |
| Whether HQ4 returns its identity or a register in both halves of the doubleword. | A 64-bit read of `+0` and `+4` on any Octane (read-only, no side effects at those two words); the existing board capture, if it holds a 64-bit read. |
| The HQ4 command window's decode of a lone low-half word. | The host-interface microcode listing (`hq3_revB_HQ4.bin` and its `.u`) once decoded, or a model of the input logic. |
| Whether the MC and MUX duplicate a 32-bit CPU word on a 64-bit slot. | The MC and MUX specifications (held, not read for this) or an Indigo2 capture. |
| Formatter modes 1 and 2, and the formatter's input path. | The host-interface microcode listing; the formatter tests of the diagnostic if a build that carries them is found. |

## Sources

- IRIX 6.5.7 source tree: `stand/arcs/ide/isddevices/graphics/MGRAS/` (`mgras_const.h`, `mgras_hq3.c`, `mgrashw.h.diag`,
  `mgras_ge11_download.c`, `Makefile`, `mgras_tv.c`, `doc/hq_level2_diagplan.fmdoc`), `stand/arcs/lib/libsk/graphics/MGRAS/mgras_init.c`,
  `irix/kern/sys/xtalk/xwidget.h`. Read for facts and written in our own words.
- Shipped objects read as disassembly: the sha256 values above.
- Public drivers: the OpenBSD sgi `impact` driver (`sys/arch/sgi/dev/impactreg.h`, `impact.c`, `xbow/impact_xbow.c`) and the
  Linux Indigo2 and Octane framebuffer driver in the 2011 linux-mips posting "Impact video driver for SGI Indigo2"
  (`include/video/impact.h`); both big-endian only.
- GIO64 specification (6 May 1992), Bridge ASIC specification rev 4.0, NEC VR10000 user's manual, as cited.
- Chips repository notes on Crosstalk packets, the MC and HPC3 byte order: cross-checks only, not a source for any fact here.
