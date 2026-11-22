# MGRAS default video format

Which video format the IRIX X server loads on an IMPACT board when nothing has
been configured, how a client such as Smoke 5.0 changes it, and what that means
for the refresh rate. The arithmetic behind the rates is in
[display timing](../kernel/display-timing.md).

Grades are the repository's: established, inferred, unknown.

## Sources

- **X server.** `usr/lib/X11/dyDDX/impactpc.so` of the `6.5-base` tree of the
  extracted "IRIX 6.4 for Origin, Onyx2 and OCTANE" disc image (SHA-256
  `1170547ecffb6c5246192c3e0e46dd2d2abaf64cb6f5888e1d0ef920a16985af`),
  disassembled from `mgrasAttachXvc` (`0x5e2c9170`).
- **Kernel records.** `mgras_timing.o` of `usr/cpu/sysgen/IP30boot/mgras.a` in
  the same tree (archive SHA-256
  `6b6c19b5db366331489e36f461a5fbd03211ad96deed89957564f44b990772bc`).
- **Smoke 5.0.** The `smoke50` program (ELF, SHA-256
  `ea2326969aae373f409be6bcc4a3625399f720524c18a0154815b806f6268160`,
  extracted from the `Smoke50.sw` image of the IP30 install set), and the
  published Smoke 5.0 installation guide (SHA-256
  `a79f3794b0f91cc5e78fc959505a3d1269fff426e8937a4e7fca9dc5928ccc7d`),
  sections "Hires" and "Configuring a 24-Inch Monitor".
- The binaries are not stored in this repository.

## What the server loads by default

**Established** (disassembly of `mgrasAttachXvc`, `0x5e2c950c` to `0x5e2c9610`
and its second copy at `0x5e2c98e4` to `0x5e2c99ac`). When no timing file name
has been stored for the screen (the name `setmon -x` leaves), the server
chooses a file from two bytes of the board record the kernel filled in:

| Condition | File |
|---|---|
| byte `+0x29` is `0x82` | `1024x768_60p.sdb` |
| byte `+0x29` is `0x83` | `1280x1024_60p.sdb` |
| byte `+0x2a` is 72 (`0x48`) | `1280x1024_72.sdb` |
| anything else | `1280x1024_60.sdb` |

The strings are in `.rodata` at `0x5e40d410`, `0x5e40d428`, `0x5e40d8b0` and
`0x5e40d8c8`. The server reads the file from `/usr/gfx/ucode/MGRAS/vof/` or its
`2RSS/` subdirectory. No code path in `impactpc.so` names a 76 Hz file, so 76 Hz
is only ever selected by a stored name.

Byte `+0x2a` is **established** as the rate byte of the timing record the
kernel loaded: IP30 `MgrasSetTiming` (`0x180c`) stores record field `+0xc` there
(see the built-in records in [display timing](../kernel/display-timing.md)).
Byte `+0x29` is **established** as written by IP30 `MgrasGatherInfo`: the upper
nibble of the byte at offset 4872 of the board (`0xdbc` to `0xddc`), overwritten
with the panel type from `+0x49` (`0xe7c`) when `mgras_fp_probe` finds a panel.
`0x82` and `0x83` are the types `mgras_i2cPanelOn` acts on. Which monitor type a real board
reports, and so whether the 72 Hz record is ever used, is **unknown**.

The default on a conventional monitor is therefore `1280x1024_60`: 1,680 by
1,065 pixels at a 107.25 MHz pixel clock, 59.943 Hz (inferred; the file's own
`VerticalRetraceRate` field holds the nominal 60.000). A format with a *larger managed
area* (per `setmon` documentation) needs `setmon -x` and a graphics restart; the
file named there is stored and wins over the default.

## What Smoke 5.0 sets

- **Established** (guide, "Hires"): the project configuration file's `Hires`
  keyword sets the refresh rate of the SGI monitor, and smoke switches to it
  when it starts. The guide's table: NTSC `Hires 60Hz`, PAL `Hires 50Hz`,
  NTSC with external sync `Hires 30Hzf`, PAL with external sync `Hires 25Hzf`,
  film `Hires 72Hz`, 24p `Hires 60Hz` or `72Hz`. A `Custom` keyword leaves the
  rate to `setmon`. The resolution is not changed: it is what the system was
  set to before smoke started (guide, appendix on 24-inch monitors).
- **Established** (disassembly of `smoke50`): `VideoInit` (`0x10b5fbe0`, call at `0x10b5fe90`) calls
  `VideoSetHiresMonitor(true)` (`0x10b60270`), and so does `VideoSetHiresMode`
  when the mode changes. `VideoUninit` and `VideoGfxGenlock` call it with false
  when smoke exits and when genlock is switched off. It builds a format name
  from the screen width and height and the rate, as `%dx%d_%d%s`-style strings
  (`1280x1024_60`, `_50`, `_72`, `_24`, `_25`, `_30`, `_48`, `_75`, never `_76`, and the
  `f`, `_50_2f` and `_60_2f` variants, plus `%dx%d+%dx%d_%s` for combined
  formats), and passes it to `SetmonLoadFormat` (`0x10b89760`), which loads the
  format through the X server's video-format extension (smoke imports
  `XSGIvcLoadVideoFormatByName`; `SetmonLoadFormat` is the only caller found,
  which is inferred, not traced). It stores the integer rate in a global that
  `VideoGetHiresRateHz` returns.
- **Established**: smoke does not use NTSC or PAL locked formats of the graphics
  board (the base IMPACT board has none). On an Octane MXI with a 1920 by 1080
  display the guide names `1920x1080_60_32db`; the `DLvfo` set of the install
  carries that file, `_48_32db` and `_50_32db` and `1600x1024_50`, `_50_2f`, `_60`
  and `_60_2f` (see display timing).
- **Established**: when smoke cannot get a double-buffered RGBA visual it prints
  that the video format should be changed with
  `/usr/gfx/setmon -x 1280x1024_60_32db` and graphics restarted. It does not run
  that command itself.
- **Established** (disassembly): swap pacing. `PlScreen` builds a `PlSwapTable`
  from `VideoGetHiresRateHz()` (`0x10e463cc`); `PlSwapTable::_build` (`0x10e65aa0`)
  divides that rate by the playback frame rate and emits a table of
  per-frame retrace counts, an integer when it divides exactly and a pattern of
  two counts otherwise. `PlScreen::swapBuffers` (`0x10e46b60`) passes the current
  entry to `xgSwapinterval`, an import wrapper for the swap-interval request.
  The rate is the integer Hz, not a measured one.

For an NTSC project (`Hires 60Hz`, 30 frames per second) that is a swap every
2 retraces at the refresh rate of `1280x1024_60`: 59.943 Hz (inferred), so
29.97 frames per second. A PAL project (`Hires 50Hz`) loads `1280x1024_50`
(50.062 Hz, inferred) and swaps every 2 retraces for 25.03 frames per second;
film at 72 Hz swaps every 3 retraces for 24 frames per second at a 72 Hz format
whose pixel clock is itself unknown.

## Unknown

- `_75` is requested for a 75 Hz setting and no `_75` file is held (the base
  trees hold `_76`).
- Which boards make `GraphicsGetVersion()` (`0x10f05a90`) return 0, so that
  `VideoSetHiresMonitor` picks `_60_2f` or `_50_2f` rather than `_30f` or `_25f`
  for the external-sync settings (`0x10b60934`, `0x10b60ff8`). The 1280 by 1024
  `_2f` files that name produces at that screen size are not in the Smoke 5.0
  `DLvfo` set (which holds `1600x1024_50_2f` and `_60_2f` only) but in the
  `vof/2RSS` directory of the 1998 base set, the 6.5.30 set and patches 3133 and
  3366; the IRIX 6.4 disc tree named above has none, and no `_30f`, `_25f`, `_50f`
  or `_60f` file is held anywhere. See [display timing](../kernel/display-timing.md#signals-the-line-table-drives)
  for what a `_2f` table does to the retrace.
- Which format a later IRIX release picks by default; only the 6.5-base server
  was read.
