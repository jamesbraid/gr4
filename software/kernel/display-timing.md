# MGRAS display timing

How the IRIX kernel programs the video timing of an MGRAS board, the clock
arithmetic those settings imply, and the refresh rate and retrace cadence that
follow. The VC3 register indexes are the `VC3_REG_*` constants in
[devices/mgras/registers.toml](../../devices/mgras/registers.toml). The retrace interrupt is in
[the HQ4 host interface](hq4-host-interface.md#retrace-interrupt). Which format the
X server and Smoke ask for is in [default video format](../xsgi/default-video-format.md).

Grades are the repository's: established (read from a shipped file, binary or
published document), inferred (follows from established facts by stated
reasoning) and unknown.

## Sources

- **Kernel.** `mgras_init.o`, `mgras_timing.o` and `mgras_retrace.o` from
  `usr/cpu/sysgen/IP30boot/mgras.a` of the `6.5-base` tree of the extracted
  "IRIX 6.4 for Origin, Onyx2 and OCTANE" disc image (archive SHA-256
  `6b6c19b5db366331489e36f461a5fbd03211ad96deed89957564f44b990772bc`; members
  `58ededa91f26...`, `21699d9d22c3...`, `a8be0178ab32...`). The write sequence is
  the one read earlier in the IRIX 6.5.30 IP27 `mgras_init.o` (SHA-256
  `c3b1faac9a98280b117cd9f054c4c737d1f9844d697b8ed17bfd7e70b8e7134f`); the
  IP30 object was disassembled for the points marked below.
- **Timing files.** The 44 `.sdb` files of `usr/gfx/ucode/MGRAS/vof/` and
  `vof/2RSS/` in the same tree, plus seven more (`2RSS/1600x1024_50`, `_50_2f`,
  `_60`, `_60_2f`, `2RSS/1920x1080_48_32db`, `_50_32db`, `_60_32db`) unpacked from
  the `DLvfo.sw` image of the Smoke 5.0 install set (SHA-256
  `d11d83b5955a302dcefb7c4da73446068562718d42fcb4c3c51126e93e95bcdb`).
  `vof/cmb/` holds a different file kind and was not read. Field values are
  established as file contents.
- **Data sheet.** The Analog Devices ADV7160/ADV7162 data sheet, Rev. 0 (Library
  `graphics/analog-devices/adv7160_7162.pdf`, SHA-256 `c8fa1a6d...`): the PLL on
  page 18 and the PLL command register on page 30.
- The binaries and timing files are not stored in this repository.

## Timing file layout

**Established**: a parser written from the layout below reproduces
`AchievedFrequency`, the `DacPll_*` values and the tables of all 51 files, and
the stock `1280x1024_60` values quoted in the earlier version of this page.

All words are big-endian. The word at byte 128 is the number of symbols and the
word at byte 136 is the byte offset of the symbol directory. The directory starts
with the symbol count again. Each entry is a name length, the name padded to a
multiple of 4 bytes, then three words: type, count and byte offset of the value.

| Type | Value at the offset |
|---|---|
| `2` | a 32-bit integer when the count is 0; otherwise a count word then that many integers (the per-field arrays) |
| `0x11` | a double |
| `0xf` | a length word then text |
| `7` | a count word then that many 32-bit words, each holding one 16-bit value |

`LineSeqTab` and `FrameTab` are the two type-7 tables: they are the images the
kernel loads into VC3 SRAM at 0 and `0x380`.

## Write sequence

**Established** for the IP30 `MgrasSetTiming` (`mgras_init.o` at `0x146c`), in
this order:

1. `0x40000000` goes to `0x072408` (`0x1540`).
2. `MgrasSetDacTiming` writes the DAC PLL bytes to DAC registers `0x0c` (r),
   `0x0f` (v) and `0x09` (control).
3. `mgras_pcd_write` (`0x1398`, called at `0x15c8`) shifts a seven-byte program
   out to `0x070400`. The device behind that address is **unknown**.
4. `0x60000000` goes to `0x072408` (`0x1614`).
5. In the delay slot of the `MgrasSetVC3Timing` call (`0x1620`), VC3 index `0x1f`
   is written with `0x0100` (`0x1624`). `MgrasSetVC3Timing` then writes it again
   with `0x0300` when the timing record's pixel clock byte is below 85 (MHz) and
   `0x0100` otherwise (`0x1990` to `0x19cc`). What the bit that differs does is
   **unknown**.
6. `MgrasSetVC3Timing` loads the VC3 line and frame tables and sets VID_EP (VC3
   register 0).
7. `MgrasEnableVideoTiming(1)` follows (`0x1630`). VC3 register `0x1e` is written
   last, which enables the display. Which bit of that write gates the display is
   not settled here.

The IRIX 6.5.30 IP27 build writes `0xc8000000` and then `0xe8000000`, or
`0xe9000000` when the timing file sets its `RefPixClkSel` field, to the same
register instead of `0x40000000` and `0x60000000`. That is IP27 only; the IP30
object has no conditional `0xe9` write. No installed file sets `RefPixClkSel`,
so what bit 24 selects is **unknown**.

Nothing in this sequence stops timing before the tables load.

## Built-in timing records

`mgras_timing.o` carries the records the kernel uses when no timing file has
been loaded: `mgras_timing_tables_1RSS` and `mgras_timing_tables_2RSS` each
point at four records, and `mgras_default_timing` is a list of pairs (monitor
type, record index). **Established** from the object's data, walking each
record's tables as described below:

| Index | Width x height | Rate byte | Pixel clock byte | DAC bytes (r, v, control), 1RSS | DAC bytes, 2RSS | Frame (VC3 clocks) |
|---|---|---|---|---|---|---|
| 0 | 1280 x 1024 | 60 | 107 | 2, 4, `0x91` | 2, 4, `0x91` | 894,600 |
| 1 | 1280 x 1024 | 72 | 130 | 2, 13, `0xd5` | 4, 9, `0xc5` | 894,600 |
| 2 | 1024 x 768 | 60 | 65 | 3, 7, `0xd5` | 3, 7, `0xd5` | 536,512 |
| 3 | 1280 x 1024 | 60 | 107 | 2, 4, `0x91` | 2, 4, `0x91` | 894,600 |

The 2RSS triple of record 1 is the one in `vof/1280x1024_72.sdb`. The 1RSS triple
gives 129.94 MHz by the same formula as the files (bit 2 halving, see Clocks);
the pixel clock bytes 130 and 65 fit the halved values and are nominal.

The record fields read by `MgrasSetTiming`, `MgrasSetDacTiming` and
`MgrasSetVC3Timing` are: width at +4, height at +8, rate in Hz at +0xc (the
kernel copies it into the board record and the X server compares it with 72),
pixel clock in MHz at +0x10, frame table pointer and word count at +0x18 and
+0x20, line sequence pointer and count at +0x28 and +0x30, and the DAC byte
triple at +0x38. The 1RSS and 2RSS tables hold the same widths, heights, rates, pixel clock bytes
and frame lengths. They differ in the DAC triple of record 1 and in the table
contents.

`MgrasLoadVC3SRAM` (`0x68cc`) copies exactly the stored count of halfwords from
the line sequence pointer to VC3 SRAM, so the count at +0x30 is what the VC3
receives. In the four 1RSS records it is one more than the walked extent of the
sequences the frame table uses (342, 284, 266 and 280 against 341, 283, 265 and
279). In the 2RSS records 2 and 3 it is also one more (278 and 295). In 2RSS
record 0 the count is 342 against an extent of 336, and in 2RSS record 1 it is
284 against an extent of 301, so some sequences that record's frame table
names lie past the halfwords loaded. What the VC3 then reads there is
**unknown**.

`mgras_default_timing` maps monitor types 1, 9 and `0x0b` to record 1 (72 Hz)
and `0x82` to record 2. Record 3 is chosen only for type `0x83`; every other
type loads record 0. Which
monitor type a real board reports is **unknown**.

## Clocks

The data sheet (page 18) gives the on-chip PLL as

`FVCO = PLLREF * (1 + VSEL) * (4 * (V + 2) + S) / ((1 + RSEL) * (R + 2))`

and `FOUT = FVCO / 2^PSEL`. R is the register at `0x0c`, V the register at
`0x0f`, and the command register at `0x09` carries PLL enable (bit 0), RSEL
(bit 1), VSEL (bit 2), PSEL (bits 5:4) and S (bits 7:6) (page 30). The part
requires 900 kHz < PLLREF < 40 MHz, 300 kHz < FPD < 10 MHz and
120 MHz < FVCO < 260 MHz, where FPD is PLLREF over the reference divider.

- **Established**: the formula, the register numbers and the bit positions above
  (data sheet), and that the kernel writes the record's three bytes to those
  registers.
- **Inferred**: PLLREF is 33 MHz. No binary names it. It is the value for which
  the files' `AchievedFrequency` fields agree with the formula, and for which
  every VSEL-clear file lies inside the data sheet's limits.
- **Inferred**: for the 41 files with VSEL clear, the formula with PLLREF = 33 MHz
  reproduces `AchievedFrequency` exactly (41 of 41). FVCO is 127.3 to 220.0 MHz
  and FPD 1.94 to 8.25 MHz. The stock 1280 by 1024 at 60 Hz file is R = 2,
  V = 4, control `0x91`: FVCO = 33 * 26 / 4 = 214.5 MHz and FOUT = 107.25 MHz.
- **Unknown, conflicting**: ten files have control bit 2 set (control `0xc5` or
  `0xd5`): `1280x1024_72` (both directories), `1280x1024_72_32db`,
  `1024x768_60p` (both), `2RSS/1024x768_60`, `616x492_140os` (both),
  `2RSS/1600x1024_60_2f` and `2RSS/1920x1080_48_32db`. Their
  `AchievedFrequency` agrees with the formula only if bit 2 divides FOUT by 2.
  The data sheet makes that bit VSEL, which doubles the feedback divider: with
  PLLREF = 33 MHz it puts FVCO at 511 to 521 MHz, twice the part's limit, and
  FOUT four times the file's value. The files fit the data sheet reading only
  with PLLREF / 4 = 8.25 MHz and VSEL honoured. Either the compiler models bit 2
  differently from the data sheet, or PLLREF differs when it is set. The pixel
  clock of those formats is therefore unknown; the 72 Hz format is one of them.
- **Inferred**: the VC3 clock is half the pixel clock. Every file records
  `VideoClockRatio` 0.5, and in all 51 files the frame length walked below equals
  `TotalLinesPerFrame * TotalPixelsPerLine / 2` exactly, so each VC3 clock covers
  two pixels. That matches the data sheet's 2:1 pixel multiplexing, where the
  pixel port runs at half the DAC clock. Nothing read derives the VC3 clock
  another way.
- **Unknown**: whether the seven-byte program for `0x070400` changes the relation
  between the two clocks.
- **Unexplained**: every file carries `DACRateMaximum` 36 MHz, `DACRateMinimum`
  13 MHz, `SystemVideoClockRateMaximum` 35 MHz and minimum 12 MHz. They are below
  the VC3 clock of even the stock 60 Hz format (53.6 MHz), so they do not bound
  the clocks in this table.
- `FormatInfo_PixelClock` is the desired frequency in Hz (107,352,000 for the
  stock file), not the achieved one.

## Line and frame tables

**Established**, decoded from all 51 files and the eight built-in records:

- A line sequence is a list of one- or two-halfword entries. A halfword with
  bit 7 set is a one-halfword entry; otherwise the entry takes the next halfword
  too. Bits 14:8 of the first halfword are the entry's duration in VC3 clocks.
  A line ends at an entry whose halfwords all have bit 15 set. The sum of the
  durations is the line length.
- `FrameTab` is pairs of (line sequence address in halfwords, repeat count),
  ending at a repeat count of 0. The frame length is the sum of repeat count
  times line length, in VC3 clocks.
- In every file the repeat counts sum to `TotalLinesPerFrame` and the frame length
  equals `TotalLinesPerFrame * TotalPixelsPerLine * VideoClockRatio` (51 of 51).
  The stock 1280 by 1024 at 60 Hz frame is 1,065 lines of 840 clocks each,
  894,600 clocks.
- What the low byte of each halfword drives (sync, blanking and any interrupt
  level) needs the VC3 data sheet and is not decoded.

## Refresh rate

Refresh is the pixel clock times the clock ratio over the frame length in VC3
clocks. For the files with VSEL clear this is **inferred** from the arithmetic
above (the PLL reference is the inferred part). In the 44 files that carry a `DesiredFrequency` field (the
seven Smoke-set files do not), `VerticalRetraceRate` equals the rate computed
from the desired frequency (44 of 44), so it differs from the rate the PLL
produces where desired and achieved clocks differ.

| Format | Pixel clock (MHz) | Frame (VC3 clocks) | Refresh (Hz) | File's `VerticalRetraceRate` |
|---|---|---|---|---|
| `1280x1024_60` | 107.25 | 894,600 | 59.943 | 60.000 |
| `1280x1024_50` | 89.571 | 894,600 | 50.062 | 50.062 |
| `1280x1024_59` | 107.25 | 908,880 | 59.001 | 59.001 |
| `1280x1024_76` | 140.25 | 923,624 | 75.924 | 75.924 |
| `1280x1024_72` | 129.25 (bit 2 set, unknown) | 894,600 | 72.239 | 72.239 |
| `1600x1200_57` | 148.5 | 1,305,000 | 56.897 | 57.033 |
| `2RSS/1920x1035_60` | 159.5 | 1,328,400 | 60.035 | 60.096 |
| `2RSS/1600x1024_60` | 132.0 | 1,099,560 | 60.024 | 60.000 |

The stock 60 Hz frame lasts 16.68 ms and the 76 Hz frame 13.17 ms. Among the
one-field formats the slowest are `1280x1024_49` (49.0 Hz) and
`1920x1080_48_32db` (48 Hz). The two-field formats have slower frames: the
stereo ones `1024x768_96s` and `_96s_vs` run 48 Hz frames, and `_50_2f` and
`_60_2f` run 25 and 29.97 Hz frames of two scans each. A figure near 37 Hz for
the stock format is what dividing the 894,600-clock frame by the 33 MHz
reference gives (36.89 Hz): the reference reaches the VC3 multiplied by 26/4 in
the PLL, halved by the output divider and halved again for the VC3, a factor of
1.625 (53.625 MHz), which brings it to 59.943 Hz.

## Fields and swaps in a frame

**Established** from the files: `FieldsPerFrame`, `SwapsPerFrame` and the
per-field arrays `FieldEye`, `FieldLineCount` and `FieldSwap` describe how many
displayed fields make a frame and which of them allow a buffer swap.

| Kind | Examples | Fields | Swaps | `FieldSwap` | `FieldEye` | Active lines per field |
|---|---|---|---|---|---|---|
| progressive | `1280x1024_60`, `_76`, `1024x768_60` | 1 | 1 | 1 | 3 | 1024 or 768 |
| old stereo | `1280x492_120s`, `1024x768_96s`, `616x492_140os` | 2 | 2 | 1, 1 | 1, 2 (left, right) | 492 or 768 |
| two-field | `2RSS/1600x1024_50_2f`, `_60_2f` | 2 | 1 | 0, 1 | 3, 3 | 1024 |

`VerticalRetraceRate` and `FramesPerSecond` are the frame rate: 60 for
`1280x492_120s` (a 120 Hz field rate), 25 and 29.97 for the two-field formats
(50 and 59.9 Hz scans). `MgrasInterlaced` is 0 in all 51 files, and the
two-field formats show a full 1,024-line image in each field; only the second
field allows a swap.

In every file the frame table has one long repeat run (the active lines) per
field, each followed by a single-repeat entry that ends the field: one run in the
41 one-field files and two in the 10 two-field files.

## Retrace

- **Established** (IP30 `MgrasRetraceHandler`): the handler returns at once when
  the word at +68 of the record at +200 of its argument is non-zero; otherwise it
  does the same work for every interrupt. It increments two retrace counters of the board record
  (offsets 0x7c and 0x80), wakes video-sync waiters (`rrmValidateVideoSync`,
  which serves `glXGetVideoSyncSGI` and `glXWaitVideoSyncSGI`), completes queued
  buffer swaps and validates waiting retrace events. It reads no field or
  parity bit. Its hardware reads are the FIFO-level polls before register writes
  and a wait of at most 10 microseconds on bit 19 of one status word. On every
  6 times the rate byte (clamped to [30, 120]) of interrupts it also calls
  `mgras_update_pp1ccv`.
- **Inferred**: one interrupt per VC3 vertical event, and the tables have one such
  event per field (previous section), so the stereo and two-field formats
  interrupt once per field, not once per frame. The clamp to 120 in the handler
  and a swap flag per field both fit that reading. For the formats an Octane
  desktop uses (progressive, one field) any reading gives one interrupt per
  frame at the refresh rate above.
- **Unknown**: which table bit raises the interrupt, and whether it comes at the
  start or the end of the vertical blank.
- **Unknown**: the retrace period before any table is loaded.

## Stock timing selection

- **Established:** the X server's default timing file for this mode is
  `vof/1280x1024_60.sdb`, with variants chosen by two board-record bytes. See
  [default video format](../xsgi/default-video-format.md).
- **Established:** board initialisation loads built-in timing records 0 and 3
  for every monitor type except `0x01`, `0x09`, `0x0b` (72 Hz) and `0x82`
  (1024x768), as listed under built-in timing records.
- **Unknown:** which monitor type a real board reports.
