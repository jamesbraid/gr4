<!-- generated from devices/cmap/registers.toml by defs-gen - do not edit, change the source -->
<!-- SPDX-License-Identifier: BSD-3-Clause -->
<!-- defs-gen 4 -->
<!-- input sha256 f306fbfe910a823bc6ca6ebfa7bd51ee2cdbacdfed514f3edc6ce4fcbda5d4bc -->

# CMAP colour map chips of the Impact graphics subsystem

The two colour map chips (CMAP0 and CMAP1), each a table of 8192 entries of 24-bit colour that
turns colour-index pixels into RGB. Every register is a port in the chip's display-bus window,
so the offsets are bytes from the window start and each port's offset encodes its register
select and access width. The window address depends on the board's map and is not given here;
the broadcast window writes both chips at once. The DAC and the XMAP router on the same bus are
not covered here. Grades follow the repository legend.

Unit `cmap`, macro prefix `CMAP`.
Default source: driver and diagnostic readings.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `addr_lo` | 0x8 | rw | 8 |  |  | unknown | inferred | driver and diagnostic readings |
| `addr` | 0x30 | rw | 16 |  |  | unknown | established | driver and diagnostic readings |
| `addr_hi` | 0x88 | rw | 8 |  |  | unknown | inferred | driver and diagnostic readings |
| `pal` | 0x118 | rw | 32 |  |  | unknown | established | driver and diagnostic readings |
| `cmd` | 0x188 | rw | 8 |  |  | unknown | established | driver and diagnostic readings |
| `status` | 0x208 | r | 8 |  |  | unknown | established | driver and diagnostic readings |
| `rev` | 0x308 | r | 8 |  |  | unknown | established | driver and diagnostic readings |
| `reserved` | 0x388 | rw | 8 |  |  | unknown | inferred | driver and diagnostic readings |

### Register `addr_lo`

Port: low byte of the palette address. Defined next to the sixteen-bit address port; no shipped use of the byte form was read.

### Register `addr`

Port: palette entry address. The diagnostic and the loaders write it before a run of colour writes or reads, twice in a row as a workaround for the address being lost at random when the bus turns between writing and reading. The loaders set the address once per run of colour writes, so a write is read as stepping the address (inferred); a comment in the diagnostic says the counter wraps to zero after the last entry, and that the first read right after a write is not guaranteed, so it starts reading at the last entry and discards the first value.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 12:0 | `entry` | inferred |  | driver and diagnostic readings | Palette entry number; the address tests use bit 12 as the top bit. |

### Register `addr_hi`

Port: high byte of the palette address. Defined next to the address port; no shipped use was read.

### Register `pal`

Port: palette entry data, a three-byte access. A write stores one entry at the current address and steps it; a read returns one entry. The loaders pack red in bits 31:24, green in 23:16 and blue in 15:8, and the diagnostic's read helper unpacks the same bytes.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:24 | `red` | established |  | driver and diagnostic readings |  |
| 23:16 | `green` | established |  | driver and diagnostic readings |  |
| 15:8 | `blue` | established |  | driver and diagnostic readings |  |

### Register `cmd`

Port: command. The diagnostic writes 3 through the broadcast window to enable the timing pipes, and the standalone and kernel initialisation write a mask built from a named unmask value; a read of each chip's own copy is defined. The bit meanings are unknown.

### Register `status`

Port: status, read per chip. The loaders wait on it between runs of palette writes: the older builds wait until bit 3 is set and the Octane build waits until bit 2 is clear. Other bits are not read.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 3 | `ready` | inferred |  | driver and diagnostic readings | Waited on for set by the older builds; read as FIFO ready. |
| 2 | `busy` | inferred |  | driver and diagnostic readings | Waited on for clear by the Octane build; read as FIFO busy. |

### Register `rev`

Port: chip revision, read per chip. The diagnostic masks the low three bits, requires at least REVISION_MIN, warns above REVISION_MAX_EXPECTED and requires the two chips to agree.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 2:0 | `revision` | established |  | driver and diagnostic readings |  |

### Register `reserved`

Port: defined by the software's register layout as the last select; no shipped use was read, and its role is unknown.

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `CMD_ENABLE_TIMING_PIPES` | 0x3 | established | driver and diagnostic readings | Value the diagnostic's timing initialisation writes to the command port; its debug message calls it enabling the timing pipes. |
| `DCB_DEVICE_ALL` | 0x3 | inferred | driver and diagnostic readings | Display-bus device number of the broadcast window that writes both chips. The diagnostic writes the palette and command through a combined window and reads each chip separately; the device number comes from the chip header and no other source was read. |
| `DCB_DEVICE_CMAP0` | 0x4 | established | driver and diagnostic readings | Display-bus device number of the first chip. The kernel's and the diagnostic's reads of its revision byte land in this device's window on the Octane board map. |
| `DCB_DEVICE_CMAP1` | 0x5 | established | driver and diagnostic readings | Display-bus device number of the second chip, read the same way. |
| `ENTRIES` | 0x2000 | established | driver and diagnostic readings | Palette entries per chip. The diagnostic's address tests span all 8192; the entry counter wraps to zero after the last. |
| `ENTRY_BITS` | 0x18 | inferred | driver and diagnostic readings | Width of a palette entry: the diagnostic compares 24 bits of each entry read back (8 bits each of red, green and blue). |
| `REVISION_MAX_EXPECTED` | 0x4 | established | driver and diagnostic readings | Highest revision value the diagnostic knows; above it the diagnostic warns that the software may not be compatible. |
| `REVISION_MIN` | 0x2 | established | driver and diagnostic readings | Lowest revision value the diagnostic accepts; below it the diagnostic fails the check. |

## Test vectors

A vector is a value recorded from a source. An example only shows the layout.

| Target | Value | Kind | Decoded |
|---|---|---|---|
| `pal` | 0x12345600 | vector | red=18, green=52, blue=86 |
