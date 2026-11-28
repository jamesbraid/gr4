# MGRAS microcode download: host interface and geometry engines

How IRIX puts the host-interface program and the GE11 program on an IMPACT board, in the order it does it, which file each board takes, and what the board does afterwards. The PROMs load no microcode (`devices/mgras/prom-handoff.md`), so everything here is the job of a driver that wants level-B and level-C behaviour. The register words are in [HQ3.h](../../devices/hq3/HQ3.h) and [GE11.h](../../devices/ge11/GE11.h); the instruction word is in [program-format.md](../../devices/ge11/program-format.md).

## Sources and grades

- **Loader.** `usr/gfx/gfxinit` of the June 1998 base set (SHA-256 `844c396b357a8207f3483f2a3cf7f4068b5701e8b931e703dfa20b6a2856a13b`, n32, stripped), routine `mgras_init` at `0x10009598`, read as disassembly with its global-offset-table slots resolved. The 6.5.30 `gfxinit` (`add7430a5ae4cc7f5eda546d9288e9505a32a8cabdafa37dec27e85d903a9c4a`) carries the same twelve file names and the same messages (strings compared; its selection code was not re-read).
- **Kernel, 6.5.0 Indigo2 build.** `mgras.o` (`MgrasDownload` `0x215c`, `MgrasStart` `0x22d4`) and `mgras_init.o` (`MgrasDownloadHQ3Ucode` `0x432c`, `MgrasDownloadGE11Ucode` `0x4404`, `MgrasGatherInfo` `0x8a8`) under `usr/cpu/sysgen/IP28boot/`.
- **Kernel, 6.5.30 Octane and Origin builds.** `mgras.a` of `IP30boot` (SHA-256 `32a535dc...4f330f4614`) and `IP27boot` (`c3b1faac...e7b8e7134f`), the same two routines disassembled and compared with the 6.5.0 ones.
- **Source.** IRIX 6.5.7 `stand/arcs/lib/libsk/graphics/MGRAS/mgras_init.c`, which holds the non-standalone (kernel) text of both download routines, and `stand/arcs/ide/isddevices/graphics/MGRAS/mgras_hq_download.c`, `mgrashw.h.diag`, `mgras_const.h` for the offsets and constants. The shipped header `usr/include/sys/gfx.h` for the ioctl numbers and the download argument record.
- **Files.** `usr/gfx/ucode/` of the 6.5 base set and of the 6.5.30 overlay set. The 6.5.22 media is not held; nothing here says what it carried.

Established below means read in the source, and found with the same constants in the object code. Anything the board does with the words is the board's, and is unknown unless a row says otherwise.

## The loader's order, established

`gfxinit` walks the boards. For each board it attaches (`GFX_ATTACH_BOARD`, 103), maps (`GFX_MAPALL`, 110), calls the board's set-up hook, sends `GFX_INITIALIZE` (106), calls the board's download hook, sends `GFX_START` (107), calls the board's after-start hook and detaches (104). For IMPACT the download hook is `mgras_init`. The kernel side of `GFX_INITIALIZE` is `MgrasInitialize` (`MgrasReset`, `MgrasRetraceInit`, `MgrasInitHQ`, the interrupt vectors, and `0x4400e200` to `0x050018`); the side of `GFX_START` is `MgrasStart`.

`mgras_init(fd, info, ucode_dir, verbose)` does the following, with `info` the board record that `GFX_GETBOARDINFO` returned:

1. Return at once when the record's geometry-engine count (byte +0x2b) is zero. With no geometry engine nothing is downloaded, not even the host-interface program.
2. Run `chkconfig impact_trace`. When it reports on and `/usr/gfx/MGRAS/ge11dump` can be opened, run that dump program, send `GFX_INITIALIZE` again and use the `_DB` files below. When it is off, or the dump program is absent, use the plain files. The reason for the second initialise is not shown.
3. Pick three paths under the microcode directory (default `/usr/gfx/ucode/`): a GE11 image, an HQ3 image and an HQ3 listing, by the table below.
4. HQ3: open, `fstat`, `mmap` the image, `ioctl(GFX_DOWNLOAD)` with the record `{length, address, 3, 0, 0, 0, 0, 0}`. The third word is the kind: 3 is the host-interface program (the header calls the field the file's magic number).
5. GE11: the same with kind 11 (`0xb`) for the GE11 image; the message prints the length and length / 12 lines.
6. Open the HQ3 listing (`.u`), read its first 2092 bytes (11 header words and the 512-entry token table, see below) and build twelve words for `ioctl(0x6d670009)`, which the loader's own failure text names `MGRAS_GE11_CONFIG`.

Established: the order (host-interface program first, then geometry engines), and that nothing else happens between the three requests. Whether the board needs the order is unknown.

### Which file, established

The record fields are product ID (byte +0x28, from bits 6:5 of the top byte at `0x072488`), geometry-engine count (+0x2b), raster-engine count (+0x2c) and geometry-engine revision (+0x38, stored by the probe in [board-identity.md](../../devices/mgras/board-identity.md), 0xff when it failed).

| Condition | GE11 image | HQ3 image | HQ3 listing |
|---|---|---|---|
| product ID 2 or 3 (every captured Octane and Origin board; the Indigo2 board is product 0) | `ge11_revB_HQ4.bin` | `hq3_revB_HQ4.bin` | `MGRAS/hq3_revB_HQ4.u` |
| other product, GE revision 2 or more, not (two GEs and one RE) | `ge11_revB.bin` | `hq3_revB.bin` | `MGRAS/hq3_revB.u` |
| other product, GE revision below 2, or two GEs and one RE | `ge11.bin` | `hq3.bin` | `MGRAS/hq3.u` |

With `impact_trace` on and the dump program present, each name gains `_DB` before the suffix (`ge11_revB_HQ4_DB.bin`, `hq3_DB.bin`, `MGRAS/hq3_revB_DB.u` and so on). The loader never reads the HQ chip's own revision (bits 31:28 of the word at 0).

What `_DB` means is inferred from the name and the flag: the `_DB` listings put the same symbols at different addresses (below), so they are different programs, not the same program with another start-up.

### The files held

| Release | Files |
|---|---|
| 6.5 base (June 1998) | all twelve names above (six GE11 images, six HQ3 images, six listings under `MGRAS/`), in `usr/gfx/ucode/`; the GE11 sources (`mgras_ge*.hex`, `.u`) are under `MG/` |
| 6.5.30 overlay | only `ge11_revB_HQ4`, `ge11_revB_HQ4_DB`, `hq3_revB_HQ4` and `hq3_revB_HQ4_DB`, with their listings and sources; the other eight names are not replaced |
| 6.5.22 | not held; unknown |

Sizes: every GE11 image is 712,704 bytes (59,392 twelve-byte lines, `0xE800`), every HQ3 image 20,480 bytes (5,120 words, against a 6,144-word RAM). The 6.5.30 HQ4 images have the same sizes and different contents from the base set's.

## The host-interface program, established

`MgrasDownloadHQ3Ucode(base, image, length)` in kernel and library source:

1. For `i` from 0 to `length / 4 - 1`: 32-bit store of image word `i` to board offset `0x040000 + 4 * i` (the microcode RAM, [HQ3.h](../../devices/hq3/HQ3.h)). The word is stored whole; the RAM keeps 24 bits.
2. Read each word back, mask both sides to 24 bits, count mismatches. Return the count.

The 6.5.0 object (`0x432c`) is this loop, with a cache-barrier no-op in each store. The 6.5.30 builds use the same offset. The kernel's `MgrasDownload` maps the user buffer, calls this routine with print off, and reports 5 on a nonzero count. It does not touch the stall bit around this download (the geometry-engine routine does, below). The diagnostic's version (`mgras_hq_download.c`) does set the stall bit first and takes a table of address and word pairs, the word shifted right by 8; that is a different file format and not what the kernel loads.

Establishing the format of the image: one big-endian 32-bit word per instruction, 24 bits used; the `.u` listing's container is described by `retools/tools/gr4/hq_ucode_disasm.py`.

### Starting it, established

No program-counter write exists in the kernel objects read: the only reference to board offset `0x046000` in the six 6.5.0 objects is a debug dump's read (`mgras_hqlook`, `mgras.o` `0x75c8`). The start is the stall bit. In the host-interface configuration word (`0x050000` on the Indigo2 board, `0x011000` on the XIO boards) bit 3 is `HQ3_UCODE_STALL` (diagnostic header). `MgrasStart` writes `0x7e8c` (HQ3 build) or `0x108c` (HQ4 build) to that word, or `(n << 9) | 0x8c` when a kernel option supplies a number, ORs in the geometry-engine count (bits 1:0) and clears bit 3: `(value | numge) & ~8`. With no geometry engine bit 3 stays set. That clearing is what lets the program run; that the program then starts at its address 0 is inferred.

## The geometry engine program, established

`MgrasDownloadGE11Ucode(base, image, length, numge, ...)`. Skipped (returns 0) when the kernel option `mgras_noge11bin` is set or `numge` is 0. Constants below are the 6.5.7 diagnostic header's (`mgrashw.h.diag`) and match the 6.5.0 object; the HQ4 builds differ only where marked.

1. Save the host-interface configuration word and the GIO word. Set configuration bit 3 (stall).
2. For each engine 0 and 1 (up to `numge`): select it in configuration bits 5:4 (2 for engine 0, 3 for engine 1), write the configuration word and read it back to flush the synchronising FIFO. The engine's diagnostic ports are data and address words at `0x050040`/`0x050044` (engine 0) and `0x050048`/`0x05004c` (engine 1) on HQ3, `0x058040` and following on HQ4. Set bit 6 (`HQBUS_BYPASS`) of the GIO word. Wait 25 microseconds.
3. Write the address port with `0x200000` (microcode base). Then for each 12-byte line write its three words, in file order, to the data port, waiting after every store until the HQ synchronising FIFO is empty (bit 0 of `0x070104` on HQ3, `0x020200` on HQ4).
4. Verify unless the option `mgras_noverify` is set: write `0x40038` (diagnostic mode) to the address port and `0xd1` to the data port (`DIAG_MODE` bit 0 plus the output-FIFO watermark; the 6.5.0 and 6.5.30 objects use `0xd0` as the watermark, the 6.5.7 header says `0x70`). Two passes, each starting at line `pass`: write the start address plus `pass`, write `0x80000000 | lines` to the address port, set and clear the board configuration word's force-status bit (`0x62000000` then `0x60000000` at `0x062408` on HQ3, `0xea000000` then `0xe8000000` at `0x072408` on HQ4, with 50 ms waits around the stores), then read the output words. Each pass checks three of every six file words (word 0, the low byte of word 2 and word 4, counted from the pass's own first line), and the second pass starts one line later, so between them all but one word of the file is checked. The source's own comment gives this rule. HQ3 waits for the flag-set bit `0x40000` before each read; HQ4 does not, because the source calls that bit unreliable there. The read-back port is `0x05022c`/`0x050230` on HQ3 and `0x05822c` on HQ4.
5. Write the address port with `0x40038` and the data port with the watermark alone, ending diagnostic mode.
6. On a mismatch count of zero: write line 0 again (address `0x200000`, then its three words) to reset the program counter; write `0x100` to `0x040010` (the source says "set diag pin as output"); write the cram trim word to `0x040018`; write `1` to `0x040000` (GO, latency 4). The cram trim word is `0x9b61`, or `0x493` when the engine revision (`info` +0x38) is above 2: the kernel passes that comparison as its last argument. On a nonzero count, no start is sent and the routine counts an error for that engine.
7. Restore the configuration and GIO words.

The revision probe uses the same routine with a 0x300-byte program (64 lines, `gevers_ucode`) and the trim word `0x9b61`, then reads the revision from the read-back words (on the XIO boards `0x028000` and `0x028004` after a 13 microsecond wait, [board-identity.md](../../devices/mgras/board-identity.md)); that result becomes the record's byte +0x38. It runs before any file is loaded, in `MgrasGatherInfo` at board attach.

Grades. The word order, the verification, the two start-up steps and the delays are established (source and both objects). That `0x40010`, `0x40018` and `0x40000` are the engine's diagnostic-select, cram-trim and execution-control registers is the source's naming plus [GE11.h](../../devices/ge11/GE11.h). The meaning of the trim values is unknown.

## What the loader tells the kernel afterwards, established

The twelve words of `ioctl(0x6d670009)` are read from the `.u` listing's header (the container is in `hq_ucode_disasm.py`: words 0 to 10, then 512 words of token-table entries; the loader reads the file bytes at the offsets below, no other part). Byte offsets, then the names the loader prints:

| File offset | Name | Value in `hq3_revB_HQ4.u` | `hq3_revB_HQ4_DB.u` |
|---|---|---|---|
| 896 | `glContextBase` | `0xb27` | `0xc31` |
| 900 | `glContextSize` | `0x1833` | `0x1a58` |
| (computed) | `glContextMax` | `(0xc000 - base) / size` = 7 | 6 |
| (constant) | `ge_get_data_token` | 162 | 162 |
| 148, 152 | `blockxy_start_offset`, `blockxy_end_offset` | `0x31a`, `0x31c` | same |
| 128 | `xfrsize_offset` | `0x2b2` | same |
| 384 | `re_fillmode_offset` | `0x286` | same |
| 1072 | `crambackup_offset` | `0xe2a` | same |
| 256 | `texmode1_offset` | `0x284` | same |
| 1068 | `emh_offset` | `0xc79` | same |
| 1180 | `em_screenres` | `0xb26` | `0xc30` |

The loader's text calls this area of the listing the microcode symbol table; `hq_ucode_disasm.py` reads it as the 512-entry command-token table (the offsets above are entries 21, 26, 27, 53, 85, 213, 214, 256, 257 and 284 of it). Which reading is right is unknown; the values are 12-bit numbers either way. The six HQ3-family listings give other values (for example `hq3.u` has base `0xa9b`, size `0x17a7`, 7 contexts). What the kernel does with the record is not read here. By their names they locate the context area and the raster-register shadows inside the host-interface program's data space; that reading is inferred.

## Unknown, and what would settle it

| Unknown | What would settle it |
|---|---|
| Whether the host-interface program must be loaded before the geometry engines. | A run that loads them the other way, or the program's start-up code once its instruction set is decoded. |
| What the stall bit's clearing does for the program counter, and whether address 0 is the entry. | The decoded program, or a board read of `0x046000` after the start. |
| What `_DB` adds. | A diff of the listings' source-line tables (`hq_ucode_disasm.py --dispatch` on the two `.u` files). |
| 6.5.22 file names and contents. | The 6.5.22 media, or its `gfxinit`. |
| The 6.5.30 `gfxinit` selection code. | Disassembling it as was done for the base set's. |
| What the geometry engine does with the trim values and with `0x100` at `0x040010`. | The chip description; not held. |
