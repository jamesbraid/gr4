# MGRAS display timing

How the IRIX kernel programs the video timing of an MGRAS board, the clock
arithmetic those settings imply, and the retrace rate of the stock 1280 by 1024
mode. The VC3 register indexes are the `VC3_REG_*` constants in
[defs/mgras.toml](../defs/mgras.toml). The retrace interrupt is in
[the HQ4 host interface](mgras-hq4.md#retrace-interrupt).

## Sources and grades

- **Kernel.** The IRIX 6.5.30 kernel routines `MgrasSetTiming`,
  `MgrasSetDacTiming`, `MgrasSetVC3Timing` and `MgrasEnableVideoTiming`, read
  from the graphics object. The write sequence below is **established** as
  those routines' words.
- **Timing files.** The shipped `vof/*.sdb` files, including
  `vof/1280x1024_60.sdb`. Their field values are **established** as file
  contents.
- **Clock model.** The PLL and frame-walk formulas below are **inferred**. The
  timing compiler's own model reproduces the achieved frequencies and line
  totals recorded in the files.
- **Arithmetic.** The worked numbers in the last sections were computed here
  from the stock values. They are not measurements.

The binaries and timing files are not stored in this repository. Their readings
were carried from the analysis that identified them.

## Write sequence

**Established**, in this order:

1. `0x072408` takes `0xc8000000`.
2. The DAC PLL bytes go to DAC registers `0x0c` (r), `0x0f` (v) and `0x09`
   (control).
3. A seven-byte program is shifted out to `0x070400`. The device behind that
   address is **unknown**.
4. `0x072408` is written again: `0xe8000000`, or `0xe9000000` when the timing
   file sets its `RefPixClkSel` field. No installed file sets that field, so
   what bit 24 selects is **unknown**.
5. The VC3 line and frame tables are loaded, and VID_EP (VC3 register 0) is set.
6. VC3 register `0x1e` is written last, which enables the display. Which bit of
   that write gates the display is not settled here.

Nothing in this sequence stops timing before the tables load.

## Clocks

**Inferred**, from the PLL model that reproduces the achieved frequency in the
109 files that carry PLL fields:

- Reference clock: 33 MHz.
- Pixel clock:
  `f_pix = f_ref * (4 * (v + 2) + cntl[7:6]) / ((r + 2) * 2^cntl[5:4] * 2^cntl[2])`.
- VC3 clock: half the pixel clock. Every file records a VideoClockRatio of 0.5,
  and nothing in the write sequence sets it.
- **Unknown:** whether the seven-byte program for `0x070400` changes the
  relation between the two clocks.

## Frame table

**Inferred**:

- VID_EP points at the frame table. The table is pairs of (line-sequence
  address, repeat count), ending at a repeat count of 0.
- A line sequence is one halfword or two. A one-halfword entry has bit 7 set.
  Bits 14:8 of the first halfword give the entry's duration in VC3 clocks. A
  line ends at an entry whose halfwords all have bit 15 set.
- The frame length N is the sum, over the table, of repeat count times line
  length, in VC3 clocks.
- The walk reproduces each line's total for all 2,709 reachable lines in the
  139 MGRAS timing files. That is a check against the files' own totals, not
  against a board.

## Stock 1280 by 1024 at 60 Hz

Field values as recorded for `vof/1280x1024_60.sdb`:

- r = 2, v = 4, cntl = `0x91`.
- f_pix = 33 * (4 * 6 + 2) / (4 * 2 * 1) = 107.25 MHz. The compiler records
  107.25 MHz as the achieved rate. The file's nominal 107.352 MHz would give
  exactly 60 Hz, but the PLL cannot produce it.
- The frame table has 1,065 lines of 840 VC3 clocks, so N = 894,600 VC3 clocks.
- The VC3 clock is 53.625 MHz. The frame period is 16.6825 ms, which gives a
  retrace rate of 59.943 Hz.

The 59.943 Hz figure follows from the half-clock ratio above. Nothing here
measures it.

## Retrace

- **Inferred:** one retrace per pass of the frame table. For two-field
  (`_2f`) modes, whether it is one per pass or one per field is **unknown**.
- **Unknown:** the retrace period before any table is loaded.

## Stock timing selection

- **Established:** the X server's default timing file for this mode is
  `vof/1280x1024_60.sdb`.
- **Established:** board initialisation loads built-in timing records 0 and 3
  for every monitor type except `0x01`, `0x09`, `0x0b` (72 Hz) and `0x82`
  (1024x768).
- **Unknown:** which monitor type a real board reports.
