# board-level words of the Impact graphics subsystem

<!-- generated from defs/mgras.toml by defs-gen - do not edit, change the source -->

Board-level words of the Impact graphics subsystem.

Unit `mgras`, macro prefix `MGRAS`.
Default source: driver and firmware readings.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `dcb_ctrl` | 0xa000 | rw | 32 | 12 |  | unknown | inferred | driver and firmware readings |

### Register `dcb_ctrl`

Array of 12 registers, stride 4.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 12:10 | `cs_setup` | inferred |  | driver and firmware readings |  |
| 8:6 | `cs_hold` | inferred |  | driver and firmware readings |  |
| 4:2 | `cs_width` | inferred |  | driver and firmware readings |  |
| 1 | `async_ack` | inferred |  | driver and firmware readings |  |
| 0 | `sync_ack` | inferred |  | driver and firmware readings |  |

## Words

| Word | Width | Grade | Source |
|---|---|---|---|
| `BDVERS2` | 32 | established | driver and firmware readings |
| `DCB_ADDR` | 32 | inferred | driver and firmware readings |
| `GIO_ID` | 32 | inferred | driver and firmware readings |
| `MCO_ID` | 32 | established | driver and firmware readings |
| `MCO_INDEX` | 32 | established | driver and firmware readings |

### Word `BDVERS2`

Second board-version word, read 0x62488 above the board register
base: the start of device 9's window, register select 1, one-byte width. The
kernel's board-information routine loads it as a word and works only on its
top byte (the first byte at that address). Bits 30:29 of the word, bits 6:5
of that byte, are the product field. The value 1 takes the path with one
engine and no second board, which is how a Solid Impact board is told from
the others. Established from the routine's machine words, in the kernel
object of the base distribution's graphics module; not a bus measurement.
The byte's other bits (1:0 and 4:2) are split off and kept as well; their
roles are not placed here. How board revision numbers map to products is
inferred.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 30:29 | `product` | established | solid_impact=1 | driver and firmware readings |  |

### Word `DCB_ADDR`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 14:10 | `device` | inferred |  | driver and firmware readings |  |
| 9:7 | `crs` | inferred |  | driver and firmware readings |  |
| 6 | `endata_pack` | inferred |  | driver and firmware readings |  |
| 5 | `encrs_inc` | inferred |  | driver and firmware readings |  |
| 4:3 | `data_width` | inferred | four_bytes=0, one_byte=1, two_bytes=2, three_bytes=3 | driver and firmware readings |  |

### Word `GIO_ID`

Identification word read at the start of the board's window. The kernel's
probe compares only bits 6:0 (must be 0x10), bit 16 (set), bit 17 (clear)
and bits 31:18 (must be 1); bits 15:7 are not examined, so the split into
revision and product below is a reading, not what the probe tests.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:8 | `product` | inferred |  | driver and firmware readings |  |
| 7:4 | `revision` | inferred |  | driver and firmware readings |  |

### Word `MCO_ID`

Identification byte of the multi-channel option board (the byte at the
index port's register select 0). The kernel's probe has two shapes,
split by the host machine family and not by software release; both give
the low nibble as the revision and report 0xff for no board. They are
not interchangeable.
 - Indigo2-class host kernels (the double-read shape): write 0xff and
   read, write 0 and read again; the reads must match; present when the
   value is 1 or its high nibble is 0xa.
 - Octane and Origin host kernels (the single-read shape), identical in
   both releases held: write 0xff, read one byte; present when its high
   nibble is 4. No second write, no match test, and the byte read is at
   a different offset from the byte written; whether those name one
   register is unknown.
Established from the probe routine's machine words in each held build,
not a bus measurement. Not held: an Indigo2-class kernel from the later
of the two releases, so its shape there is unknown. The build-by-build
table is in docs/OPEN_QUESTIONS.md.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7:4 | `board` | established | present_single_read=4, present=10 | driver and firmware readings |  |
| 3:0 | `revision` | established |  | driver and firmware readings |  |

### Word `MCO_INDEX`

Index byte of the multi-channel option board, written to the board's
index port before each access to its data port. The high nibble picks a
device, the low nibble a port on it. Banks 2 and 3 are the two
true-colour DACs of the option, banks 0 and 1 its two overlay-palette
DACs, and banks 8 to 10 its three control registers. Ports on a DAC are
offsets from its bank base; the full map is in docs/OPEN_QUESTIONS.md.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7:4 | `bank` | established | overlay_dac_a=0, overlay_dac_b=1, true_colour_dac_a=2, true_colour_dac_b=3, control_1=8, control_2=9, control_3=10 | driver and firmware readings |  |
| 3:0 | `port` | established |  | driver and firmware readings |  |

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `ADV473_PORT_ADDR` | 0x0 | established | driver and firmware readings |  |
| `ADV473_PORT_COMMAND` | 0x6 | established | driver and firmware readings | as a write, role inferred |
| `ADV473_PORT_MASK` | 0x2 | inferred | driver and firmware readings |  |
| `ADV473_PORT_PALETTE` | 0x1 | established | driver and firmware readings |  |
| `ADV7162_BLANK_VALUE` | 0x0 | established | driver and firmware readings |  |
| `ADV7162_ID_VALUE` | 0x79 | established | driver and firmware readings |  |
| `ADV7162_PORT_DATA` | 0x2 | established | driver and firmware readings |  |
| `ADV7162_PORT_PALETTE` | 0x1 | established | driver and firmware readings |  |
| `ADV7162_PORT_POINTER` | 0x0 | established | driver and firmware readings |  |
| `ADV7162_PORT_PROBE` | 0x3 | inferred | driver and firmware readings | the part's mode register: the data sheet's fourth MPU port and its 3, 2, word reset sequence match the loader's writes (established); that the board wires its index low bits to the select lines is inferred; the name is kept for consumers |
| `ADV7162_REG_BLANK` | 0x4 | established | driver and firmware readings | the pixel mask register, 004H in the data sheet: 8 bits, ANDed with every pixel's red, green and blue bits |
| `ADV7162_REG_ID` | 0x3 | established | driver and firmware readings |  |
| `ADV7162_RESTORE_VALUE` | 0xffff | established | driver and firmware readings |  |
| `CMAP_ENTRIES` | 0x2000 | established | driver and firmware readings | per map; 24-bit width inferred |
| `MCO_BANK_BASE_CH0` | 0x0 | established | driver and firmware readings |  |
| `MCO_BANK_BASE_CH1` | 0x20 | established | driver and firmware readings |  |
| `MCO_BANK_BASE_CH2` | 0x30 | established | driver and firmware readings |  |
| `MCO_BANK_BASE_CH3` | 0x0 | established | driver and firmware readings |  |
| `MCO_BANK_BASE_CH4` | 0x10 | established | driver and firmware readings |  |
| `MCO_DAC_LUT_ENTRIES` | 0x100 | established | driver and firmware readings | option channels, per colour |
| `MCO_DAC_LUT_ENTRY_BITS` | 0xa | established | driver and firmware readings | ADV7162 channels only |
| `MCO_ID_ABSENT` | 0xff | established | driver and firmware readings | probe result for no board, both shapes |
| `MCO_ID_PROBE_SINGLE_READ_OFFSET` | 0x70008 | established | driver and firmware readings | single-read shape only |
| `MCO_ID_PROBE_SINGLE_TIMING_SELECT_FIRST` | 0x14 | established | driver and firmware readings | single-read shape only |
| `MCO_ID_PROBE_SINGLE_TIMING_SELECT_SECOND` | 0x0 | established | driver and firmware readings | single-read shape only |
| `MCO_ID_PROBE_SINGLE_WRITE_OFFSET` | 0x72c08 | established | driver and firmware readings | single-read shape only |
| `MCO_ID_PROBE_WRITE_FIRST` | 0xff | established | driver and firmware readings | both shapes |
| `MCO_ID_PROBE_WRITE_SECOND` | 0x0 | established | driver and firmware readings | double-read shape only |
| `MCO_ID_SPECIAL_PRESENT` | 0x1 | established | driver and firmware readings | a whole-byte value also accepted, double-read shape only |
| `MCO_LOAD_CTRL_FIRST` | 0xfe | established | driver and firmware readings |  |
| `MCO_LOAD_CTRL_SECOND` | 0x1 | established | driver and firmware readings |  |
| `MCO_LOAD_IMAGE_BYTES` | 0xf688 | established | driver and firmware readings |  |
| `MCO_LOAD_PAD_BYTES` | 0x14 | established | driver and firmware readings |  |
| `MCO_LOAD_STATUS_AFTER_SECOND` | 0x6 | established | driver and firmware readings |  |
| `MCO_LOAD_STATUS_FIRST` | 0x0 | established | driver and firmware readings |  |
| `MCO_SEL_FPGA_CTRL` | 0x1 | established | driver and firmware readings |  |
| `MCO_SEL_FPGA_DATA` | 0x0 | established | driver and firmware readings |  |
| `MCO_SEL_TIMING_DATA` | 0x5 | established | driver and firmware readings |  |
| `MCO_SEL_TIMING_RAM` | 0x7 | established | driver and firmware readings |  |
| `MCO_SEL_TIMING_REG` | 0x4 | established | driver and firmware readings |  |

## Test vectors

A vector is a value recorded from a source. An example only shows the layout.

| Target | Value | Kind | Decoded |
|---|---|---|---|
| `dcb_ctrl` | 0x318 | vector | sync_ack=0, async_ack=0, cs_width=6, cs_hold=4, cs_setup=0 |
| `dcb_ctrl` | 0x108c | vector | sync_ack=0, async_ack=0, cs_width=3, cs_hold=2, cs_setup=4 |
| `dcb_ctrl` | 0x318c | vector | cs_width=3, cs_hold=6, cs_setup=4 |
| `dcb_ctrl` | 0x6319 | vector | sync_ack=1, async_ack=0, cs_width=6, cs_hold=4, cs_setup=0 |
| `dcb_ctrl` | 0x631a | vector | sync_ack=0, async_ack=1, cs_width=6, cs_hold=4, cs_setup=0 |
| `BDVERS2` | 0x20000000 | example | product=1 |
| `DCB_ADDR` | 0x8 | example | encrs_inc=0, endata_pack=0, crs=0, data_width=1, device=0 |
| `DCB_ADDR` | 0x388 | example | data_width=1, crs=7 |
| `DCB_ADDR` | 0x2488 | example | encrs_inc=0, endata_pack=0, crs=1, data_width=1, device=9 |
| `DCB_ADDR` | 0x2c08 | example | encrs_inc=0, endata_pack=0, crs=0, data_width=1, device=11 |
| `DCB_ADDR` | 0x2c08 | example | encrs_inc=0, endata_pack=0, crs=0, data_width=1, device=11 |
| `DCB_ADDR` | 0x2d08 | example | encrs_inc=0, endata_pack=0, crs=2, data_width=1, device=11 |
| `DCB_ADDR` | 0x2d88 | example | encrs_inc=0, endata_pack=0, crs=3, data_width=1, device=11 |
| `GIO_ID` | 0x50190 | vector | revision=9, product=1281 |
| `MCO_INDEX` | 0x90 | vector | port=0, bank=9 |
