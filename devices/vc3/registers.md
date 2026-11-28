<!-- generated from devices/vc3/registers.toml by defs-gen - do not edit, change the source -->
<!-- SPDX-License-Identifier: BSD-3-Clause -->
<!-- defs-gen 4 -->
<!-- input sha256 9374ab79c9a0a7b287f1a095365143c0192d4b6111d7b3907264f2a6cfe684e3 -->

# VC3 video controller registers of the Impact graphics subsystem

Video timing, hardware cursor and display-ID controller on the display bus. Its internal
registers are numbered 0 to 31 and are reached through a small set of ports in the chip's
display-bus window; the ports are the byte-addressed registers, the numbered registers are
the vc3_index space (offset = register number). Each numbered register is 16 bits wide. The
window address depends on the board's map and is not given here. Grades follow the
repository legend; a bit named in a header and never seen used is inferred.

Unit `vc3`, macro prefix `VC3`.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Address spaces

| Space | Offset unit | Description |
|---|---|---|
| vc3_index | register index | VC3 internal register numbers |

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `index` | 0x8 | rw | 8 |  |  | unknown | established |  |
| `index_data` | 0x38 | rw | 32 |  |  | unknown | established |  |
| `data` | 0xb0 | rw | 16 |  |  | unknown | established |  |
| `ram64` | 0x180 | rw | 64 |  |  | unknown | established |  |
| `ram` | 0x190 | rw | 16 |  |  | unknown | established |  |
| `vid_ep` | 0x0 | rw | 16 |  | vc3_index | unknown | established |  |
| `curs_ep` | 0x1 | rw | 16 |  | vc3_index | unknown | established |  |
| `curs_x` | 0x2 | rw | 16 |  | vc3_index | unknown | established |  |
| `curs_y` | 0x3 | rw | 16 |  | vc3_index | unknown | established |  |
| `did_ep1` | 0x4 | rw | 16 |  | vc3_index | unknown | established |  |
| `did_ep2` | 0x5 | rw | 16 |  | vc3_index | unknown | established |  |
| `scan_length` | 0x6 | rw | 16 |  | vc3_index | unknown | established |  |
| `ram_addr` | 0x7 | rw | 16 |  | vc3_index | unknown | established |  |
| `vt_frame_tbl_ptr` | 0x8 | rw | 16 |  | vc3_index | unknown | established |  |
| `vt_line_seq_ptr` | 0x9 | rw | 16 |  | vc3_index | unknown | established |  |
| `vt_lines_run` | 0xa | rw | 16 |  | vc3_index | unknown | established |  |
| `vert_line_count` | 0xb | rw | 16 |  | vc3_index | unknown | established |  |
| `curs_tbl_ptr` | 0xc | rw | 16 |  | vc3_index | unknown | established |  |
| `working_curs_y` | 0xd | rw | 16 |  | vc3_index | unknown | established |  |
| `cur_cursor_x` | 0xe | rw | 16 |  | vc3_index | unknown | established |  |
| `unused` | 0xf | rw | 16 |  | vc3_index | unknown | inferred |  |
| `did_frametab1` | 0x10 | rw | 16 |  | vc3_index | unknown | established |  |
| `did_linetab1` | 0x11 | rw | 16 |  | vc3_index | unknown | established |  |
| `did_frametab2` | 0x12 | rw | 16 |  | vc3_index | unknown | established |  |
| `did_linetab2` | 0x13 | rw | 16 |  | vc3_index | unknown | established |  |
| `curs_control` | 0x1d | rw | 16 |  | vc3_index | unknown | established |  |
| `display_control` | 0x1e | rw | 16 |  | vc3_index | unknown | established |  |
| `config` | 0x1f | rw | 16 |  | vc3_index | unknown | established |  |

### Register `index`

Port: selects the numbered register that the data port reads or writes (a one-byte access at the start of the window).

### Register `index_data`

Port: a three-byte write sets a numbered register in one store, the register number in bits 31:24 and the 16-bit value in bits 23:8. The kernel and the diagnostic use it for every register write.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:24 | `register` | established |  |  |  |
| 23:8 | `value` | established |  |  |  |

### Register `data`

Port: reads or writes the numbered register that the index port last selected, 16 bits at a time. The diagnostic reads a register back by writing its number to the index port and reading this port.

### Register `ram64`

Port: SRAM access four bytes wide per bus transfer, written as a 64-bit store. The software defines it next to the 16-bit port and uses the same SRAM address register.

### Register `ram`

Port: reads or writes the SRAM word addressed by ram_addr, 16 bits at a time (the kernel and the diagnostic load the timing tables, the cursor glyph and the display-ID tables through it).

### Register `vid_ep`

Video timing entry point, the main display frame table pointer. The diagnostic's register test writes walking patterns and expects them back unchanged.

### Register `curs_ep`

Cursor entry point. Walking-pattern read-back is expected.

### Register `curs_x`

Hardware cursor x position. Walking-pattern read-back is expected.

### Register `curs_y`

Hardware cursor y position. Walking-pattern read-back is expected.

### Register `did_ep1`

First display-ID entry point, with its own frame and line tables.

### Register `did_ep2`

Second display-ID entry point.

### Register `scan_length`

Scan line length. Walking-pattern read-back is expected; the unit (dot clocks) is the name's reading and is inferred.

### Register `ram_addr`

SRAM address register for the ram port. Reads back the address it was loaded with.

### Register `vt_frame_tbl_ptr`

Video timing frame table pointer. Walking-pattern read-back is expected.

### Register `vt_line_seq_ptr`

Video timing line sequence pointer. Walking-pattern read-back is expected.

### Register `vt_lines_run`

Video timing run count of lines. Walking-pattern read-back is expected.

### Register `vert_line_count`

Current vertical line. The kernel reads it (the only numbered register it reads); the diagnostic's register test also writes walking patterns here and expects them back, which is odd for a running counter and is recorded as the software's expectation.

### Register `curs_tbl_ptr`

Cursor table pointer. Walking-pattern read-back is expected.

### Register `working_curs_y`

Working cursor y line. Walking-pattern read-back is expected.

### Register `cur_cursor_x`

Current cursor x. Walking-pattern read-back is expected.

### Register `unused`

Register number the diagnostic's register test writes and reads back under the name unused. Its role is unknown.

### Register `did_frametab1`

Frame table pointer of the first display-ID entry point. Walking-pattern read-back is expected.

### Register `did_linetab1`

Line table pointer of the first display-ID entry point. Walking-pattern read-back is expected.

### Register `did_frametab2`

Frame table pointer of the second display-ID entry point. Walking-pattern read-back is expected.

### Register `did_linetab2`

Line table pointer of the second display-ID entry point. Walking-pattern read-back is expected.

### Register `curs_control`

Cursor control. The standalone initialisation sets the function and display bits to turn the cursor on; the hosted build of the same routine writes the complement of that pair, with a comment that the X server turns the cursor on later. The diagnostic's start and stop timing write zero. The register test skips it.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 3 | `glyph_64` | inferred |  |  | Selects the 64 by 64 glyph rather than a smaller one; named only. |
| 2 | `crosshair` | inferred |  |  | Full-screen crosshair cursor; named only. |
| 1 | `display_enable` | established |  |  | Show the cursor. |
| 0 | `function_enable` | established |  |  | Cursor logic enable. |

### Register `display_control`

Display control. The kernel keeps a shadow of the value, never reads the register back and writes it through the index_data port for retrace enable, blackout, timing and genlock; the diagnostic reads it back. The register test skips it. Every field is named in a header and read from the writers' use; what bits 1 to 4 and 7 do inside the chip is not settled.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 10 | `odd_field_timing` | inferred |  |  | Named only; no shipped use read. |
| 9 | `odd_field` | inferred |  |  | Named only; no shipped use read. |
| 8 | `field_only` | inferred |  |  | Named only; no shipped use read. |
| 7 | `interlaced` | inferred |  |  | Follows the interlace flag of the timing format in the kernel. |
| 6 | `genlock` | inferred |  |  | Genlock slave on: set from the second argument of the genlock request; the diagnostic prints it as GENLOCK. |
| 5 | `gensync` | inferred |  |  | Sync output on: set from the first argument of the genlock request; the diagnostic prints it as GENSYNC. |
| 4 | `did_enable2` | inferred |  |  | Named as enabling the second display-ID table; set by the diagnostic's start-timing. |
| 3 | `did_enable1` | inferred |  |  | Named as enabling the first display-ID table; set by the diagnostic's start-timing. |
| 2 | `video_enable` | inferred |  |  | Named as the master video enable; set by the diagnostic's start-timing. |
| 1 | `blackout` | inferred |  |  | Set by the kernel's blackout routine and by the diagnostic's start-timing together with bits 4:2; the polarity of the name is unknown. |
| 0 | `retrace_interrupt` | inferred |  |  | Set by the kernel's retrace enable; that it gates the once-per-frame retrace message is inferred. |

### Register `config`

Master configuration. The diagnostic's PLL set-up writes 1 and prints that the register is set to 1; the kernel selects this register to read the chip revision at attach. Bits other than the revision are named in a header only.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7:6 | `revision` | inferred |  |  | Chip revision, read by the kernel through the data port; 0 is revision A and later values follow consecutively (board-identity.md). |
| 5 | `timing_error` | inferred |  |  | Named as a timing generator error flag; no shipped use read. |
| 4 | `did_error2` | inferred |  |  | Named as a display-ID table 2 error flag; no shipped use read. |
| 3 | `did_error1` | inferred |  |  | Named as a display-ID table 1 error flag; no shipped use read. |
| 2 | `cursor_error` | inferred |  |  | Named as a cursor error flag; no shipped use read. |
| 1 | `slow_clock` | inferred |  |  | Named only; no shipped use read. |
| 0 | `unreset` | inferred |  |  | Named as releasing the chip from reset; the diagnostic writes 1. |

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `CURS_HOTSPOT_OFFSET` | 0x1f | inferred |  | The software defines 31 for both axes as the cursor origin offset; no shipped use was read, so what the hardware does with it is inferred from the name. |
| `DCB_DEVICE` | 0x8 | established |  | Display-bus device number of the chip; the window sits at device * 0x400 in the board's display-bus map. The kernel's and the diagnostic's accesses to the index, index_data and data ports land in this device's window on the Octane board map. |
| `SRAM_CURS_GLYPH` | 0x400 | established |  | Start of the 64 by 64 cursor glyph in SRAM; the glyph must sit on a 256-word boundary. |
| `SRAM_DID_FRAMETAB1` | 0x500 | established |  | Start of the first display-ID frame table. The second follows it, then the two line tables fill the rest of SRAM up to SRAM_END. |
| `SRAM_DID_FRAME_MAX_WORDS` | 0x43e | established |  | Room reserved for each display-ID frame table: 1085 lines plus an end-of-frame entry (the size is sized for HDTV). |
| `SRAM_END` | 0x2000 | inferred |  | End of SRAM in 16-bit entries, exclusive. Two readings, not settled. The diagnostic's SRAM tests cover entries 0 to 8191 (its VC3_RAMSIZE constant). Its address mask, which the same constants call the last 16-bit entry, means 16384 entries if the address is a byte offset. |
| `SRAM_FRAMETAB` | 0x380 | established |  | Start of the frame tables in SRAM (128 words). |
| `SRAM_FRAMETAB_WORDS` | 0x80 | established |  | Size of the frame-table area in words. |
| `SRAM_LINETAB` | 0x0 | established |  | Start of the horizontal line tables in the chip's 16-bit SRAM (768 words). |
| `SRAM_LINETAB_WORDS` | 0x300 | established |  | Size of the line-table area in words. |

## Test vectors

A vector is a value recorded from a source. An example only shows the layout.

| Target | Value | Kind | Decoded |
|---|---|---|---|
| `index_data` | 0x1d000100 | vector | register=29, value=1 |
| `curs_control` | 0x3 | vector | function_enable=1, display_enable=1, crosshair=0, glyph_64=0 |
| `display_control` | 0x1e | vector | retrace_interrupt=0, blackout=1, video_enable=1, did_enable1=1, did_enable2=1, gensync=0, genlock=0 |
| `config` | 0x1 | vector | unreset=1, slow_clock=0, revision=0 |
