# MGRAS board identity

Every IMPACT (MGRAS) board presents one HQ4 host widget. IRIX tells the
variants apart by reading a few identity and revision words in the board's
2 MiB aperture, then naming the board from their values. This page records
how those reads work and what the captured boards read back. The register
words are in [devices/mgras/registers.toml](../devices/mgras/registers.toml); the prose is here.

## Grades and sources

Most facts here come from the IRIX 6.5 kernel's graphics objects, which
show what the software expects a board to answer. That is a software
expectation, so each register fact is graded inferred. Owner captures
(`hinv` and `gfxinfo` output that owners posted) are observed third-party
output, also inferred. The Octane technical report and the SGI installation
guides are published documents and carry their own grades as cited.

Addresses are from the start of the board's 2 MiB aperture. The word at
0x072488 is the same read as `BDVERS2` in `devices/mgras/registers.toml`, which is
0x62488 from the board base. That places the board base 0x10000 into the
aperture (inferred from the kernel's window arithmetic, not measured).

## The identity reads, in the order IRIX makes them

Steps 4 to 7 run only when the RE count is nonzero. Step 8 runs only when the
GE count is nonzero and the GE download verified. Step 9 runs only when the RE
count is nonzero. No captured board has an RE count of 0.

| Step | Access | Bits | Meaning | Grade |
| --- | --- | --- | --- | --- |
| 1 | 32-bit read, 0x000000 | 31:28 | HQ revision: 1 is rev A, 2 is rev B | inferred |
| 2 | 32-bit read, 0x072488, top byte | 1:0 | GE count | inferred |
| | | 6:5 | product ID | inferred |
| | | 4:2 | MGRAS revision | inferred |
| 3 | 32-bit read, 0x072408, top byte | per product, below | RE count, TRAM fields | inferred |
| | | 6:4 | RB revision (product 0; 7 on products 1 to 3) | inferred |
| 4 | byte read, 0x071308 | 7:4 | monitor ID (depends on the attached monitor) | inferred |
| 5 | byte read, 0x071708 | 2:0 | CMAP revision | inferred |
| | | 6:4 | RA revision | inferred |
| | | 7 | clear when a video option board is present | inferred |
| 6 | byte write 4 to 0x071c88, then 32-bit read 0x071d00 | 2:0 | PP1 revision (XMAP index 4) | inferred |
| 7 | one 64-bit write to 0x120400, then 32-bit read 0x02c578 | 7:4 | RE4 revision | inferred |
| 8 | GE program download, 13 microsecond wait, 32-bit reads 0x028000 then 0x028004 | low byte of 0x028004 | GE revision | inferred |
| 9 | byte write 0x1f to 0x072008, then 16-bit read 0x0720b0 | 7:6 | VC3 revision | inferred |

The value written in step 7 is not recorded in the source this was taken
from. Bits 3:0 of 0x071308, bit 3 of 0x071708 and bit 7 of 0x072488 are not
read by IRIX. The word at 0x000000 is the first read; how its bits 31:28
relate to the widget identification word at 0x000004 is unknown.

Between steps the kernel waits on the HQ status word and the FIFO level,
which belong to the host interface, not to this page.

## Product ID and what it decides

Let `t` be the top byte of the word at 0x072408. Inferred from the kernel
object:

| Product | RE count | TRAM fields | Notes |
| --- | --- | --- | --- |
| 0 | 2, or 1 when bits 6:4 of `t` are 3 or 7 | path 0 is `1 << (t & 3)`; path 1 is `1 << ((t >> 2) & 3)` with two REs | Seen only on an Indigo2 (GIO) board |
| 1 | 1 | all 0 | RB revision 7 |
| 2 or 3 | equal to the GE count | per path: 0 if its field is 3, else 4 | Kernel handles 2 and 3 identically |

Captured boards print product 2 when they have one GE (the texture-option
SI and ESI boards) and product 3 when they have two GEs (MXI, EMXI, ESSI). All
three two-GE captures print 3. Whether every two-GE board reports 3 is
inferred from those captures.

Product 1 has one RE and no TRAM, which is the count of a plain Solid
IMPACT. No capture of a plain SI has been decoded, so whether a plain SI
reports 1 or 2 is unknown. The same routine treats product 1 as the
"one engine, no second board" path, which the kernel uses to tell a Solid
Impact board apart.

The kernel can override the hardware counts with options that replace the
GE count, the RE count or the GE download result. A captured count is therefore
the software's view, not always the board's.

## Monitor ID

Bits 7:4 of the byte at 0x071308 are the monitor ID. It depends on the
attached monitor, not the board. The kernel reads it when it picks a default
timing, and again on each OpenGL context query. Value 0 means no monitor
identified. Every captured Origin and Octane board printed 0xf, which the
IRIX tools show as an unknown monitor assumed to be 19 inches. Whether 0xf is
what a board reports with no monitor attached is unknown.

## Revision codes

The kernel prints revisions as letters, with these codes (inferred):

- HQ: 1 is A, 2 is B.
- CMAP: 0 is A; 1 is C, 3 is E (value plus 2).
- RE4, PP1, VC3: 0 is A, then consecutive letters.
- GE: a value of 2 is GE11 rev B; 3 or more is the GE12 line, with 3 as rev A.
- A failed GE download makes the kernel store 0xff in the GE revision field.
- The IDE diagnostic's CMAP check reads bits 2:0 of `0x071308` and of
  `0x071708` as CMAP revisions. A value below 2 is an error. Values of 5 and up
  warn. The two bytes must agree, or the diagnostic reports a CMAP revision
  mismatch. This is **established** as the diagnostic's own checks, a software
  expectation of a working board. The kernel does not read bits 2:0 of
  `0x071308`.

## Octane and Origin attachment

The board's serial-number record names the variant. Octane dumps show one
record and one XIO location per board, whatever its width. The record
names, with the parts they were captured on (inferred from the dumps):

| Board | Record | Part and revision | Widget |
| --- | --- | --- | --- |
| MXI | GM20 | 030-0957-003 rev N, R, G | 12 |
| EMXI | MOT20 | 030-1240-003 rev G | 12 |
| ESI | MOT10 | 030-1241-002 rev J | 11 |
| ESI, ESI | MOT10, MOT10 | 030-1241-002 revs K and J | 12 and 10 |

Plain SI, SI with texture and SSI, ESSI are inferred from the same
records: GM10 for SI and SI with texture (030-0938), GM20 for SSI, MOT20 for
ESSI. Plain SI rev U is approximated. Both Origin captures show a GM10 record
line, so Origin boards carry a record too.

The part number does not decide the variant. The same MOT10 part 030-1241-002
is a GE11 SI with texture at rev H in one capture and a GE12 ESI with texture
at rev F in another. The ASIC revisions decide.

A double-slot board (MXI, EMXI) presents one widget, so the second slot it
covers has no widget of its own. Inferred for SSI and ESSI. On the Octane
PCI module the rear quadrants A, B, C and D carry widgets 12, 11, 9 and 10
(OCTANE PCI Module Installation Guide 007-3547-001, printed page 67,
Figure 3-1, as cited by the source).

## Captured values

Decoded from owner output. Each row is one board's identity words as IRIX
printed them (inferred). Blank cells were not printed.

| Board | Product | MGRAS | HQ | GE | RE4 | PP1 | VC3 | CMAP | TRAMs | Monitor | Source |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Origin 2000, SI with texture, GM10 030-0938-003 rev U | 2 | 1 | B | GE11 B | C | A | A | E | 4 | 0xf | owner forum page, `hinv -vm` and `gfxinfo -v` |
| Origin 200, SI with texture, MOT10 030-1241-002 rev H | 2 | 1 | B | GE11 B | C | A | A | E | 4 | 0xf | Usenet `<1123184831.096208.266500@f14g2000cwb.googlegroups.com>`, comp.sys.sgi.marketplace, 4 August 2005 |
| Origin 2000, ESI with texture, MOT10 030-1241-002 rev F, IRIX 6.5.18 | 2 | 4 | B | GE12 A | C | E | A | E | 4 | 0xf | Nekonomicon thread 17194 |
| Octane, MXI (IRIX 6.4) | 3 | 1 | B | GE11 B | C | A | A | E | 4 | 0x1 or 0xb | Usenet posts 1997 to 1999 |
| Octane R12000, two GEs, IRIX 6.5.6 (EMXI by its naming rule) | 3 | 4 | B | GE12 A | C | H | A | F | 4 | 0xf | Usenet `<8nbvii$amh$1@nnrp1.deja.com>`, comp.sys.sgi.graphics, 15 August 2000 |
| Octane, ESSI (owner's words), IRIX 6.5.21f | 3 | 4 | B | GE12 A | C | H | A | F | 0 | 0xf | Usenet `<bqfo2p$35k$1@news.mie>`, comp.sys.sgi.apps, 1 December 2003 |
| Indigo2 IMPACT (GIO), product 0 | 0 | 3 | A | GE11 B | A | A | A | D | 1 | 0x1 | Indigo2 IMPACT Channel Option Installation Guide 007-3313-001, printed page 61, `gfxinfo -v` |

For the two SI-with-texture boards the top byte of 0x072488 is 0x45 (product 2,
MGRAS revision 1, one GE). The ESI-with-texture board reads MGRAS revision 4
there, GE revision 3 at 0x028004, and XMAP index 4 reads 4.

## Open questions

- The product ID, MGRAS revision and ASIC revisions of a plain SI. Settled by
  `gfxinfo -v` from one plain SI board on IRIX.
- The product ID and ASIC revisions of an SSI, MXI, ESSI or EMXI board that is
  not one of the captures above. The two-GE captures all print 3.
- The PP1 index-4 value on E-series boards. Captures read 4 there, but a
  reading of the IRIX Octane diagnostic's XMAP test accepts only 0 or 1.
  Either the test branches on board type, its reading is wrong, or the field
  is not that register. Settled by running the Octane XMAP test on an E-series board, or
  reading `gfxinfo -v` from one.
- Bits 1:0 and 3:2 of 0x072408 on a board with TRAM. IRIX 6.5 maps 0, 1 and 2
  to four TRAMs, so only a register read on hardware can show them.
- Whether a read of 0x028000 has any effect on hardware. Only a read on a
  real board can settle it.
- Whether the Origin serial-number chip holds the same record names as the
  Octane chips. An Origin owner's `hinv -vm` would settle it.
