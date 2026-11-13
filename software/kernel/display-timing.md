# MGRAS display timing

How the IRIX kernel programs the video timing of an MGRAS board, the clock
arithmetic those settings imply, and the retrace rate of the stock 1280 by 1024
mode. The VC3 register indexes are the `VC3_REG_*` constants in
[devices/mgras/registers.toml](../../devices/mgras/registers.toml). The retrace interrupt is in
[the HQ4 host interface](hq4-host-interface.md#retrace-interrupt).

## Sources and grades

- **Kernel.** The IRIX 6.5.30 IP27 kernel routines `MgrasSetTiming`,
  `MgrasSetDacTiming`, `MgrasSetVC3Timing` and `MgrasEnableVideoTiming`, read
  from the `mgras_init.o` member of `usr/cpu/sysgen/IP27boot/mgras.a`
  (SHA-256 `c3b1faac9a98280b117cd9f054c4c737d1f9844d697b8ed17bfd7e70b8e7134f`). The write sequence below is **established** as
  those routines' words.
- **Timing files.** The shipped `usr/gfx/ucode/MGRAS/vof/*.sdb` files, including
  `1280x1024_60.sdb`, whose `DacPll_cntl`, `DacPll_r`, `DacPll_v` and
  `AchievedFrequency` fields were read directly (`0x91`, 2, 4 and 107.25). Their
  field values are **established** as file contents.
- **Clock model.** The PLL and frame-walk formulas below are **inferred**. The
  PLL formula reproduces the achieved frequency of `1280x1024_60.sdb`. An earlier
  version of this page counted agreement over 109 files and 2,709 lines in 139
  timing files; this checkout holds 64 timing files and those counts were not
  reproduced, so they are not claimed.
- **Arithmetic.** The worked numbers in the last sections were computed here
  from the stock values. They are not measurements.

The binaries and timing files are not stored in this repository.

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

**Inferred**, from the PLL model that reproduces the achieved frequency of the
stock 1280 by 1024 at 60 Hz file:

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
- Whether the walk reproduces each line's total across the timing files was not
  re-run; the line and frame totals used below are taken as the compiler
  recorded them.

## Stock 1280 by 1024 at 60 Hz

Field values as recorded for `vof/1280x1024_60.sdb`:

- r = 2, v = 4, cntl = `0x91`.
- f_pix = 33 * (4 * 6 + 2) / (4 * 2 * 1) = 107.25 MHz. The compiler records
  107.25 MHz as the achieved rate. Exactly 60 Hz would need 107.352 MHz (894,600 clocks times 60, doubled), which the
  PLL cannot produce.
- The file records 1,065 lines per frame. The page's earlier figure of 840 VC3
  clocks a line, which gives N = 894,600 VC3 clocks, was not found in the file by
  re-reading (the frame table is not decoded here), so the line length, N and the
  retrace figure below are **inferred** from that unrechecked figure.
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
