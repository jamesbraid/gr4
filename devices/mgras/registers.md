<!-- generated from devices/mgras/registers.toml by defs-gen - do not edit, change the source -->

# board-level words of the Impact graphics subsystem

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
| `BDVERS1` | 32 | inferred | driver and firmware readings |
| `BDVERS2` | 32 | established | driver and firmware readings |
| `CMAP_RA_STATUS` | 8 | inferred | driver and firmware readings |
| `DCB_ADDR` | 32 | inferred | driver and firmware readings |
| `GE_REVISION` | 32 | inferred | driver and firmware readings |
| `GIO_ID` | 32 | inferred | driver and firmware readings |
| `HQ4_NUMERIC_PACKET` | 64 | established | OpenBSD impact(4) driver register header |
| `HQ_GE_SELECT` | 32 | established | driver and firmware readings |
| `HQ_REVISION` | 32 | inferred | driver and firmware readings |
| `HQ_SERIAL_SLOT` | 32 | inferred | driver and firmware readings |
| `MCO_ID` | 32 | established | driver and firmware readings |
| `MCO_INDEX` | 32 | established | driver and firmware readings |
| `MONITOR_ID` | 8 | inferred | driver and firmware readings |
| `PP1_CONFIG` | 32 | inferred | driver and firmware readings |
| `PP1_REVISION` | 32 | inferred | driver and firmware readings |
| `RE4_REVISION` | 32 | inferred | driver and firmware readings |
| `RE4_STATUS` | 32 | inferred | driver and firmware readings |
| `VC3_REVISION` | 16 | inferred | driver and firmware readings |

### Word `BDVERS1`

Second board-version word at address 0x072408, of which the kernel
reads only the top byte (bits 31:24). Bits 1:0 and 3:2 of that byte are
the two TRAM fields, bits 6:4 the RB revision on product 0. The RE count
and the meaning of the TRAM fields depend on the product field of the word at
0x072488 (BDVERS2): product 0 has two RE unless bits 6:4 are 3 or 7; product 1
has one RE and no TRAM; products 2 and 3 have one RE per GE, with 0 or 4 TRAMs
per path. Bit 7 of the byte is not read. Inferred from the kernel object.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 30:28 | `rb_revision` | inferred |  | driver and firmware readings |  |
| 27:26 | `tram_field_1` | inferred |  | driver and firmware readings |  |
| 25:24 | `tram_field_0` | inferred |  | driver and firmware readings |  |

### Word `BDVERS2`

Second board-version word, read 0x62488 above the board register
base: the start of device 9's window, register select 1, one-byte width. The
kernel's board-information routine loads it as a word and works only on its
top byte (the first byte at that address). Bits 30:29 of the word, bits 6:5
of that byte, are the product field. The value 1 takes the path with one
engine and no second board, which is how a Solid Impact board is told from
the others. Established from the routine's machine words, in the kernel
object of the base distribution's graphics module; not a bus measurement.
Bits 1:0 and 4:2 of the byte are the GE count and the MGRAS revision (fields
below). How board revision numbers map to products is inferred.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 30:29 | `product` | established | indigo2_gio=0, solid_impact=1, single_ge_textured=2, two_ge=3 | driver and firmware readings |  |
| 28:26 | `mgras_revision` | inferred |  | driver and firmware readings |  |
| 25:24 | `ge_count` | inferred |  | driver and firmware readings |  |

### Word `CMAP_RA_STATUS`

Byte at address 0x071708: bits 2:0 the CMAP revision (0 is rev A,
other values are rev value + 2, so 1 is rev C and 3 is rev E), bits 6:4 the
RA revision, bit 7 clear when a video option board is present. Bit 3 is
not read. Inferred from the kernel object and owner captures.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7 | `video_option` | inferred | present=0, absent=1 | driver and firmware readings |  |
| 6:4 | `ra_revision` | inferred |  | driver and firmware readings |  |
| 2:0 | `cmap_revision` | inferred |  | driver and firmware readings |  |

### Word `DCB_ADDR`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 14:10 | `device` | inferred |  | driver and firmware readings |  |
| 9:7 | `crs` | inferred |  | driver and firmware readings |  |
| 6 | `endata_pack` | inferred |  | driver and firmware readings |  |
| 5 | `encrs_inc` | inferred |  | driver and firmware readings |  |
| 4:3 | `data_width` | inferred | four_bytes=0, one_byte=1, two_bytes=2, three_bytes=3 | driver and firmware readings |  |

### Word `GE_REVISION`

Read after the GE program download verifies: a 32-bit read of 0x028000, a
13 microsecond wait, then a 32-bit read of 0x028004. The kernel keeps only the
low byte of the second read. A GE revision of 2 is the GE11 rev B; 3 or more
is the GE12 line, with 3 as rev A. Inferred from the kernel object and owner
captures.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7:0 | `ge_revision` | inferred |  | driver and firmware readings |  |

### Word `GIO_ID`

Identification word read at the start of the board's window. The kernel's
probe compares only bits 6:0 (must be 0x10), bit 16 (set), bit 17 (clear)
and bits 31:18 (must be 1); bits 15:7 are not examined, so the split into
revision and product below is a reading, not what the probe tests.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:8 | `product` | inferred |  | driver and firmware readings |  |
| 7:4 | `revision` | inferred |  | driver and firmware readings |  |

### Word `HQ4_NUMERIC_PACKET`

One command written to the normal command FIFO, as the public driver packs it:
the constant framing 0x0018000400000000, the register selector shifted left 40
bits, and the 32-bit payload. The execute mark adds 0x0004000000000000 and is
set on the write that starts a drawing operation. The layout is the driver's
software expectation; what the board does with each field is not established.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 50 | `execute` | inferred |  | OpenBSD impact(4) driver register header |  |
| 48:40 | `selector` | established |  | OpenBSD impact(4) driver register header |  |
| 31:0 | `payload` | established |  | OpenBSD impact(4) driver register header |  |

### Word `HQ_GE_SELECT`

Host interface control word. Its geometry engine select field chooses which
geometry engine the next program upload reaches. The kernel sets the field
before it loads each engine and restores the old word afterwards. The bus
meaning of each value is inferred.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 5:4 | `ge_select` | established | ge0=2, ge1=3 | driver and firmware readings |  |

### Word `HQ_REVISION`

Board word at address 0x000000, the first identity read IRIX makes.
Bits 31:28 are the HQ revision: 1 is rev A, 2 is rev B. Read by the
IRIX kernel's board-information routine; the other bits are not read.
Inferred from the kernel object, not a bus measurement.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:28 | `hq_revision` | inferred |  | driver and firmware readings |  |

### Word `HQ_SERIAL_SLOT`

One bit slot of the one-wire serial-number record at HQ_SERIAL_MASTER_OFFSET,
written as one 32-bit store. The low-drive time sits in bits 19:10 and the
sample offset in bits 9:2. The reader waits for bit 1 (done) and takes the
wire level from bit 0. Read by the stock Octane PROM and by the Octane IDE
diagnostic. Neither image is in this checkout, so the field layout was not
re-read. The chip family on IMPACT boards is unknown.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 19:10 | `drive_time` | inferred |  | driver and firmware readings |  |
| 9:2 | `sample_offset` | inferred |  | driver and firmware readings |  |
| 1 | `done` | inferred |  | driver and firmware readings |  |
| 0 | `level` | inferred |  | driver and firmware readings |  |

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
table is in questions/README.md.

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
offsets from its bank base; the full map is in questions/README.md.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7:4 | `bank` | established | overlay_dac_a=0, overlay_dac_b=1, true_colour_dac_a=2, true_colour_dac_b=3, control_1=8, control_2=9, control_3=10 | driver and firmware readings |  |
| 3:0 | `port` | established |  | driver and firmware readings |  |

### Word `MONITOR_ID`

Byte at address 0x071308. Bits 7:4 are the monitor ID, which depends
on the attached monitor, not on the board. The kernel does not read bits 3:0.
The IDE diagnostic's CMAP check reads bits 2:0 as the first CMAP's revision
(see CMAP_RA_STATUS). The value
0 means no monitor identified; 0xf is the value every captured Origin and
Octane board reported, which the IRIX graphics tools print as an unknown
monitor assumed to be 19 inches. Whether 0xf is what a board reports with no
monitor attached is unknown. Inferred from the kernel object and owner captures.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7:4 | `monitor` | inferred | unidentified=0, assumed_19_inch=15 | driver and firmware readings |  |

### Word `PP1_CONFIG`

Pixel processor word reached through the XMAP data port with XMAP index 0
selected. Bits 21:20 hold the raster engine count less one. The kernel writes
this field to every pixel processor when it initialises the board, so each
pixel processor learns how many raster engines share the screen. The field
being written is established; the pixel processor's use of it is inferred.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 21:20 | `re_count_less_one` | inferred |  | driver and firmware readings |  |

### Word `PP1_REVISION`

Index write of 4 to the byte at address 0x071c88, then a 32-bit read of
0x071d00. Bits 2:0 are the PP1 revision (XMAP index 4). Owner captures
of E-series boards read 4 here, while a reading of the IRIX Octane diagnostic's
XMAP test accepts only 0 or 1; that conflict is open. Inferred from the kernel
object and owner captures.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 2:0 | `pp1_revision` | inferred |  | driver and firmware readings |  |

### Word `RE4_REVISION`

One 64-bit write to address 0x120400, then a 32-bit read of 0x02c578.
Bits 7:4 are the RE4 revision. The value written is not recorded in the
source this was taken from. Inferred from the kernel object.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7:4 | `re4_revision` | inferred |  | driver and firmware readings |  |

### Word `RE4_STATUS`

Raster engine status word, read after the raster engine select register has
chosen one engine. The IDE diagnostic expects the selected engine's number in
bits 3:2 and the engine count less one in bits 1:0, so the word differs from
one engine to the next. Inferred from the diagnostic's checks, not from a bus
measurement. The revision field is RE4_REVISION.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 3:2 | `selected_re` | inferred |  | driver and firmware readings |  |
| 1:0 | `re_count_less_one` | inferred |  | driver and firmware readings |  |

### Word `VC3_REVISION`

Byte write of 0x1f to address 0x072008, then a 16-bit read of
0x0720b0 (read only when the RE count is nonzero). Bits 7:6 are the VC3
revision. Inferred from the kernel object.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7:6 | `vc3_revision` | inferred |  | driver and firmware readings |  |

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
| `GE0_UPLOAD_PORT_A` | 0x58040 | established | driver and firmware readings | first of the two program upload ports for geometry engine 0 |
| `GE0_UPLOAD_PORT_B` | 0x58044 | established | driver and firmware readings | second of the two program upload ports for geometry engine 0 |
| `GE1_UPLOAD_PORT_A` | 0x58048 | established | driver and firmware readings | first of the two program upload ports for geometry engine 1 |
| `GE1_UPLOAD_PORT_B` | 0x5804c | established | driver and firmware readings | second of the two program upload ports for geometry engine 1 |
| `GE_READBACK_PORT_A` | 0x5822c | established | driver and firmware readings | read-back port shared by both geometry engines; the kernel reads it to verify a download |
| `GE_READBACK_PORT_B` | 0x58230 | established | driver and firmware readings | second read-back port shared by both geometry engines |
| `GL_CLIENT_FIFO_PROCESS_ADDR` | 0x124400 | inferred | driver and firmware readings | address the IRIX GL client stores its command words to, in its own process mapping; the board window offset it maps to is not established (see software/opengl/gl-commands.md) |
| `HQ4_NORMAL_FIFO_OFFSET` | 0x20400 | established | OpenBSD impact(4) driver register header | normal command FIFO in the board's register window; the driver writes aligned 64-bit packets here |
| `HQ_BUS_STATUS_OFFSET` | 0x20100 | established | driver and firmware readings | bus status. The kernel waits for bits 4:0 to show room before it writes display registers. What the other bits mean is unknown |
| `HQ_CTXSW_RETURN_CMD` | 0xf400 | established | driver and firmware readings | word the switch tail writes to the command port only when the incoming context is the default context |
| `HQ_CTXSW_START_OFFSET` | 0x130500 | established | driver and firmware readings | microcode start register. The switch writes HQ_CTXSW_START_VALUE, the only value the kernel writes here |
| `HQ_CTXSW_START_VALUE` | 0x4fc | established | driver and firmware readings | value written to HQ_CTXSW_START_OFFSET |
| `HQ_CTXSW_TAIL_OFFSET` | 0x40088 | established | driver and firmware readings | written 1 by the switch tail; meaning unknown |
| `HQ_CTXSW_WAIT_MASK` | 0x1eff | established | driver and firmware readings | mask for HQ_CTXSW_WAIT_OFFSET |
| `HQ_CTXSW_WAIT_OFFSET` | 0x8000 | established | driver and firmware readings | polled until the bits in HQ_CTXSW_WAIT_MASK are zero, before the start register is written; meaning unknown |
| `HQ_CTX_ENAB_CLEAR_OFFSET` | 0x11038 | established | driver and firmware readings | written all ones by the context switch tail; meaning unknown |
| `HQ_CTX_ENAB_OFFSET` | 0x11030 | established | driver and firmware readings | per-context word saved and restored by the context switch; meaning unknown |
| `HQ_CTX_WORD_OFFSET` | 0x11008 | established | driver and firmware readings | per-context word saved by the context switch and written from the incoming context after the first handshake interrupt; meaning unknown |
| `HQ_FIFO_CTL0_OFFSET` | 0x40000 | inferred | driver and firmware readings | FIFO control word; the diagnostic's start-up writes 0x28. Its role is inferred from the layout of the other FIFO controls |
| `HQ_FIFO_CTL2_OFFSET` | 0x40010 | inferred | driver and firmware readings | FIFO control word; the diagnostic's start-up writes 0x0a. Role inferred |
| `HQ_FIFO_CTL3_OFFSET` | 0x40020 | inferred | driver and firmware readings | FIFO control word; the diagnostic's start-up writes 0x28. Role inferred |
| `HQ_FIFO_CTL4_OFFSET` | 0x40028 | inferred | driver and firmware readings | FIFO control word; the diagnostic's start-up writes 0x14. Role inferred |
| `HQ_FIFO_CTL5_OFFSET` | 0x40030 | inferred | driver and firmware readings | FIFO control word; the diagnostic's start-up writes 0x0a. Role inferred |
| `HQ_FIFO_LOWATER_OFFSET` | 0x40008 | established | driver and firmware readings | FIFO low-water level. The flush routine writes the wanted level plus one before it sleeps and 0x14 when it wakes. The diagnostic's start-up writes 0x14 too |
| `HQ_FIFO_STATUS_OFFSET` | 0x20008 | inferred | driver and firmware readings | FIFO status. Its low byte is the level the flush routine waits to fall to. The wait for an empty FIFO requires that byte to be exactly zero |
| `HQ_FLOW_TIMEOUT_OFFSET` | 0x40078 | inferred | driver and firmware readings | flow-control timeout; the diagnostic's register test uses mask 0x3ff |
| `HQ_GE_SELECT_ADDR` | 0x11000 | established | driver and firmware readings | host interface control word; the geometry engine select field is HQ_GE_SELECT |
| `HQ_GL_DMA_STATUS_OFFSET` | 0x20200 | inferred | driver and firmware readings | DMA status word; after a DMA read the client waits for the bits named by HQ_GL_DMA_STATUS_WAIT_MASK to clear |
| `HQ_GL_DMA_STATUS_WAIT_MASK` | 0x1eff | inferred | driver and firmware readings | mask of DMA status bits the client waits to see clear after a DMA read; what each bit means is unknown |
| `HQ_GL_FLAGS_OFFSET` | 0x20010 | inferred | driver and firmware readings | HQ flags word: sync complete (bit 16), query ready (bit 17) and flush (bit 20) |
| `HQ_GL_FLAG_CLEAR_OFFSET` | 0x20018 | inferred | driver and firmware readings | the client writes a flag mask here to clear those flags in the flags word |
| `HQ_GL_FLAG_FLUSH` | 0x100000 | inferred | driver and firmware readings | bit 20 of the flags word: the client sets it itself after glFlush; the kernel's buffer-swap path reads and clears it (questions/README.md) |
| `HQ_GL_FLAG_QUERY_READY` | 0x20000 | inferred | driver and firmware readings | bit 17 of the flags word: the client clears it before a query and polls until the board sets it |
| `HQ_GL_FLAG_SYNC_COMPLETE` | 0x10000 | inferred | driver and firmware readings | bit 16 of the flags word: a write fence sets it when earlier writes finish; the client clears it before a DMA setup |
| `HQ_GL_QUERY_ANSWER_OFFSET` | 0x28004 | inferred | driver and firmware readings | answer word read after a query flag is set; the kernel reads the same address after a geometry-engine download (GE_REVISION) |
| `HQ_GL_STATUS_OFFSET` | 0x20000 | inferred | driver and firmware readings | HQ status word the GL client polls; bit 1 is the pipe-idle sense, the bit number the hq3 status register calls pipe_idle |
| `HQ_GL_STATUS_PIPE_IDLE` | 0x2 | inferred | driver and firmware readings | bit 1 of HQ_GL_STATUS_OFFSET; the client's finish and the kernel's raster idle wait both poll it |
| `HQ_ID_MANUFACTURER_EXPECTED` | 0x2aa | inferred | driver and firmware readings | manufacturer code the diagnostic's HQ4 probe accepts, at bits 11:1 of the identity word, the first board word |
| `HQ_ID_PART_EXPECTED` | 0xc003 | inferred | driver and firmware readings | part number the diagnostic's HQ4 probe accepts, at bits 27:12 of the identity word, the first board word |
| `HQ_INTR_ENAB_CLEAR_OFFSET` | 0x11048 | inferred | driver and firmware readings | write-one-to-clear for the enable word above. Every kernel site fits this pairing; the register is not named in the binary |
| `HQ_INTR_ENAB_DEFAULT` | 0x3008a200 | established | driver and firmware readings | enable word start-up writes after setting the enable clear word to all ones. Enables sources 9, 13, 15, 19, 28 and 29 |
| `HQ_INTR_ENAB_SET_OFFSET` | 0x11040 | established | driver and firmware readings | interrupt enable word, readable. Start-up writes 0x3008a200 to it. The kernel's writes and their order are established; a write setting only the bits it names is inferred |
| `HQ_INTR_LEVEL2_CLEAR_OFFSET` | 0x11058 | inferred | driver and firmware readings | write-one-to-clear for the second-level word. The switch writes 0xffffffef; the flush routine writes the bits it changed |
| `HQ_INTR_LEVEL2_ENAB_OFFSET` | 0x11050 | established | driver and firmware readings | second-level interrupt enable. Bit 4 is the FIFO low-water enable. The switch saves and restores the word so bit 4 is clear after a switch. Bit 3 and bits 0x1e8 are unknown |
| `HQ_INTR_LEVEL2_LOWATER` | 0x10 | established | driver and firmware readings | bit 4 of HQ_INTR_LEVEL2_ENAB_OFFSET, the FIFO low-water source |
| `HQ_INTR_PENDING_CLEAR_OFFSET` | 0x11028 | inferred | driver and firmware readings | write-one-to-clear for the status word. The handler clears the bit it served; the switch writes 0x80 before its work and 0x70 after it |
| `HQ_INTR_SRC_CTX_ACK1` | 0x80000 | established | driver and firmware readings | status bit 19; the first context-switch handshake. The handler releases the first switch semaphore |
| `HQ_INTR_SRC_CTX_ACK2` | 0x10000000 | established | driver and firmware readings | status bit 28; the second context-switch handshake, after the 63 image words. The handler releases the second switch semaphore |
| `HQ_INTR_SRC_DMA_OVERFLOW` | 0x8000 | established | driver and firmware readings | status bit 15; the general handler reports a DMA access or stack overflow and marks the board failed |
| `HQ_INTR_SRC_DMA_RANGE` | 0x2000 | established | driver and firmware readings | status bit 13; the general handler reports a DMA address-range error |
| `HQ_INTR_SRC_FIFO_OVERFLOW` | 0x20000000 | established | driver and firmware readings | status bit 29; the general handler reports a flow-control or command-FIFO overflow |
| `HQ_INTR_SRC_PRIV` | 0x4000 | established | driver and firmware readings | status bit 14; the general handler reports a command-FIFO privilege violation |
| `HQ_INTR_SRC_PROGRAM_ERROR` | 0x200 | established | driver and firmware readings | status bit 9; the general handler reports an HQ program error |
| `HQ_INTR_SRC_RELEASE` | 0x10000 | established | driver and firmware readings | status bit 16; the general handler releases a board semaphore and acknowledges the bit. No routine enables or waits on it |
| `HQ_INTR_SRC_SWAP` | 0x400 | established | driver and firmware readings | status bit 10; enabled only around a buffer swap |
| `HQ_INTR_STATUS_OFFSET` | 0x11020 | established | driver and firmware readings | interrupt status word; the general handler reads it masked by the enable word. The switch tail writes 0x80 to it and reads bit 5 back; what the write does is unknown |
| `HQ_INTR_VECTOR_OFFSET` | 0x11070 | established | driver and firmware readings | packs three interrupt vectors the attach routine connects: low-water in bits 7:0, general in bits 15:8, retrace in bits 23:16 |
| `HQ_SERIAL_MASTER_OFFSET` | 0x11098 | inferred | driver and firmware readings | one-wire master for the board's serial-number record; each bit slot is one 32-bit store, see HQ_SERIAL_SLOT |
| `HQ_SWAP_ACK_VALUE` | 0x401 | established | driver and firmware readings | acknowledge the swap path writes to the pending-clear word, covering status bit 10 and the flag at bit 0. The bit-0 mirror is inferred |
| `HQ_SWAP_CMD` | 0x3700 | established | driver and firmware readings | class 0, opcode 0x37, no payload. Written to the command port after source 10 is enabled. That the board raises source 10 once the queue ahead of it drains is inferred |
| `HQ_VC3_RETRACE_OFFSET` | 0x72038 | established | driver and firmware readings | VC3 register 0x1e, written by the kernel's retrace enable. The kernel sets bit 0; that bit gates the board's retrace message is inferred |
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
| `PP1_SELECT_ADDR` | 0x71c08 | established | driver and firmware readings | pixel processor select: which pixel processors the XMAP registers reach |
| `RDRAM_ADDR_PORT_ADDR` | 0x2c570 | inferred | driver and firmware readings | RDRAM address port in the raster window, as the diagnostic uses it |
| `RDRAM_BUFFER_PORT_ADDR` | 0x2c5b4 | inferred | driver and firmware readings | buffer pointer for the RDRAM path, as the diagnostic uses it |
| `RDRAM_DATA_PORT_ADDR` | 0x2c574 | established | driver and firmware readings | RDRAM data port; the kernel reads it with each raster engine selected in turn |
| `RSS_RE_SELECT_PIO_ADDR` | 0x2c448 | inferred | driver and firmware readings | the same raster register as the diagnostic reaches it through the programmed I/O window |
| `RSS_RE_SELECT_REG` | 0x112 | established | driver and firmware readings | raster register that selects one raster engine; the kernel writes the engine number as its value |
| `VC3_REG_CURS_EP` | 0x1 | established | driver and firmware readings | VC3 register index, named in the diagnostic's VC3 register test; the VC3 chip page lists the same index |
| `VC3_REG_CURS_TBL_PTR` | 0xc | established | driver and firmware readings | VC3 register index, named in the diagnostic's VC3 register test; the VC3 chip page lists the same index |
| `VC3_REG_CURS_X_LOC` | 0x2 | established | driver and firmware readings | VC3 register index, named in the diagnostic's VC3 register test; the VC3 chip page lists the same index. Hardware cursor X |
| `VC3_REG_CURS_Y_LOC` | 0x3 | established | driver and firmware readings | VC3 register index, named in the diagnostic's VC3 register test; the VC3 chip page lists the same index. Hardware cursor Y |
| `VC3_REG_CUR_CURSOR_X` | 0xe | established | driver and firmware readings | VC3 register index, named in the diagnostic's VC3 register test; the VC3 chip page lists the same index |
| `VC3_REG_DID_EP1` | 0x4 | established | driver and firmware readings | VC3 register index, named in the diagnostic's VC3 register test; the VC3 chip page lists the same index. First display-ID entry point, with its own frame and line tables |
| `VC3_REG_DID_EP2` | 0x5 | established | driver and firmware readings | VC3 register index, named in the diagnostic's VC3 register test; the VC3 chip page lists the same index. Second display-ID entry point |
| `VC3_REG_DID_FRAMETAB1` | 0x10 | established | driver and firmware readings | VC3 register index, named in the diagnostic's VC3 register test; the VC3 chip page lists the same index. Frame table of the first display-ID entry point |
| `VC3_REG_DID_FRAMETAB2` | 0x12 | established | driver and firmware readings | VC3 register index, named in the diagnostic's VC3 register test; the VC3 chip page lists the same index. Frame table of the second display-ID entry point |
| `VC3_REG_DID_LINETAB1` | 0x11 | established | driver and firmware readings | VC3 register index, named in the diagnostic's VC3 register test; the VC3 chip page lists the same index. Line table of the first display-ID entry point |
| `VC3_REG_DID_LINETAB2` | 0x13 | established | driver and firmware readings | VC3 register index, named in the diagnostic's VC3 register test; the VC3 chip page lists the same index. Line table of the second display-ID entry point |
| `VC3_REG_RAM_ADDR` | 0x7 | established | driver and firmware readings | VC3 register index, named in the diagnostic's VC3 register test; the VC3 chip page lists the same index. Reads back the SRAM address it was loaded with |
| `VC3_REG_SCAN_LENGTH` | 0x6 | established | driver and firmware readings | VC3 register index, named in the diagnostic's VC3 register test; the VC3 chip page lists the same index |
| `VC3_REG_VERT_LINE_COUNT` | 0xb | established | driver and firmware readings | VC3 register index, named in the diagnostic's VC3 register test; the VC3 chip page lists the same index |
| `VC3_REG_VID_EP` | 0x0 | established | driver and firmware readings | VC3 register index, named in the diagnostic's VC3 register test; the VC3 chip page lists the same index. Main display frame table pointer; see software/kernel/display-timing.md |
| `VC3_REG_VT_FRAME_TBL_PTR` | 0x8 | established | driver and firmware readings | VC3 register index, named in the diagnostic's VC3 register test; the VC3 chip page lists the same index |
| `VC3_REG_VT_LINES_RUN` | 0xa | established | driver and firmware readings | VC3 register index, named in the diagnostic's VC3 register test; the VC3 chip page lists the same index |
| `VC3_REG_VT_LINE_SEQ_PTR` | 0x9 | established | driver and firmware readings | VC3 register index, named in the diagnostic's VC3 register test; the VC3 chip page lists the same index |
| `VC3_REG_WORKING_CURS_Y` | 0xd | established | driver and firmware readings | VC3 register index, named in the diagnostic's VC3 register test; the VC3 chip page lists the same index |
| `WINDOW_MODE_MAIN_ADDR` | 0x71e00 | established | driver and firmware readings | display mode words for window IDs 0 to 31, under XMAP index (ID & 0x1f) << 2 |
| `WINDOW_MODE_OVERLAY_ADDR` | 0x71e80 | established | driver and firmware readings | display mode words for overlay window IDs 32 to 39 |
| `WINDOW_SELECT_ADDR` | 0x71d80 | established | driver and firmware readings | one bit per window ID, written at each buffer swap; overlay IDs use XMAP index 4. What a set bit shows is inferred |
| `XMAP_INDEX_ADDR` | 0x71c88 | established | driver and firmware readings | byte index that picks the XMAP register the XMAP data ports reach |

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
| `HQ4_NUMERIC_PACKET` | 0x1c450400000018 | example | execute=1, selector=69, payload=24 |
| `MCO_INDEX` | 0x90 | vector | port=0, bank=9 |
