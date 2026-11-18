<!-- generated from devices/hq3/registers.toml by defs-gen - do not edit, change the source -->
<!-- SPDX-License-Identifier: BSD-3-Clause -->
<!-- defs-gen 2 -->
<!-- input sha256 252bc2bf46f613252ee264e8764327c27b46c980c303b9ec0c18d8bf3775b0df -->

# host interface and command processor registers for the Impact graphics subsystem

Host interface and command processor registers of the Impact graphics subsystem.

Unit `hq3`, macro prefix `HQ`.
Default source: driver and diagnostic readings.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Address spaces

| Space | Offset unit | Description |
|---|---|---|
| hq3_regs | register index |  |

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `pc` | 0x1800 | rw | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `cp_data` | 0x1c00 | rw | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `rss_diag` | 0x3000 | rw | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `config` | 0x4000 | rw | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `flag_ctx` | 0x4001 | rw | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `flag_set_priv` | 0x4002 | rw | 32 |  | hq3_regs | unknown | established | driver and diagnostic readings |
| `flag_clr_priv` | 0x4003 | w | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `flag_enab_set` | 0x4004 | rw | 32 |  | hq3_regs | unknown | established | driver and diagnostic readings |
| `flag_enab_clr` | 0x4005 | w | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `intr_enab_set` | 0x4006 | rw | 32 |  | hq3_regs | unknown | established | driver and diagnostic readings |
| `intr_enab_clr` | 0x4007 | w | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `cfifo_hiwater` | 0x4008 | rw | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `cfifo_lowater` | 0x4009 | rw | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `cfifo_delay` | 0x400a | rw | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `dfifo_hiwater` | 0x400b | rw | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `dfifo_lowater` | 0x400c | rw | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `dfifo_delay` | 0x400d | rw | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `ge0_diag_data` | 0x4010 | rw | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `ge0_diag_index` | 0x4011 | rw | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `ge1_diag_data` | 0x4012 | rw | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `ge1_diag_index` | 0x4013 | rw | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `ctx_switch` | 0x4014 | w | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `cfifo_priv` | 0x4020 | w | 64 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `ctx_data` | 0x4040 | rw | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `bfifo_hiwater` | 0x4042 | rw | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `bfifo_lowater` | 0x4043 | rw | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `bfifo_delay` | 0x4044 | rw | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `gio_config` | 0x4045 | rw | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `reg_4080` | 0x4080 | rw | 32 | 64 | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `reg_40c0` | 0x40c0 | rw | 32 | 128 | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `reg_4140` | 0x4140 | rw | 32 | 64 | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `gio_ctx` | 0x4180 | rw | 32 | 64 | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `tlb_entries` | 0x4200 | rw | 32 | 32 | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `tlb_fault_page` | 0x4220 | r | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `tlb_valid` | 0x4240 | rw | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `status` | 0xc000 | r | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `fifo_status` | 0xc001 | r | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `flag_set` | 0xc002 | w | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `flag_clr` | 0xc003 | w | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `reg_c004` | 0xc004 | r | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `reg_c005` | 0xc005 | r | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `cfifo_user` | 0xc020 | w | 64 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `gio_status` | 0xc040 | r | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `dma_busy` | 0xc041 | r | 32 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |
| `cfifo_gl` | 0xd020 | w | 64 |  | hq3_regs | unknown | inferred | driver and diagnostic readings |

### Register `pc`

### Register `cp_data`

### Register `rss_diag`

### Register `config`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7 | `diag_loopback` | inferred |  | driver and diagnostic readings |  |
| 5:4 | `diag_route` | inferred | ge0=2, ge1=3 | driver and diagnostic readings |  |
| 3 | `ucode_stall` | inferred |  | driver and diagnostic readings |  |
| 2 | `big_endian` | inferred |  | driver and diagnostic readings |  |

### Register `flag_ctx`

### Register `flag_set_priv`

### Register `flag_clr_priv`

### Register `flag_enab_set`

### Register `flag_enab_clr`

### Register `intr_enab_set`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31 | `dfifo_below_low` | established |  | driver and diagnostic readings |  |
| 30 | `dfifo_above_high` | established |  | driver and diagnostic readings |  |
| 27 | `cfifo_below_low` | established |  | driver and diagnostic readings |  |
| 26 | `cfifo_above_high` | established |  | driver and diagnostic readings |  |

### Register `intr_enab_clr`

### Register `cfifo_hiwater`

### Register `cfifo_lowater`

### Register `cfifo_delay`

### Register `dfifo_hiwater`

### Register `dfifo_lowater`

### Register `dfifo_delay`

### Register `ge0_diag_data`

### Register `ge0_diag_index`

### Register `ge1_diag_data`

### Register `ge1_diag_index`

### Register `ctx_switch`

### Register `cfifo_priv`

### Register `ctx_data`

### Register `bfifo_hiwater`

### Register `bfifo_lowater`

### Register `bfifo_delay`

### Register `gio_config`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 12 | `fifo_high_water` | inferred |  | driver and diagnostic readings |  |
| 6 | `bus_bypass` | inferred |  | driver and diagnostic readings |  |
| 3 | `tlb_update` | inferred |  | driver and diagnostic readings |  |
| 2 | `ext_pipe_register` | inferred |  | driver and diagnostic readings |  |
| 1 | `display_bus_big_endian` | inferred |  | driver and diagnostic readings |  |
| 0 | `host_big_endian` | inferred |  | driver and diagnostic readings |  |

### Register `reg_4080`

Formerly reif_ctx.

Array of 64 registers, stride 1.

### Register `reg_40c0`

Formerly hag_ctx.

Array of 128 registers, stride 1.

### Register `reg_4140`

Formerly hif_ctx.

Array of 64 registers, stride 1.

### Register `gio_ctx`

Array of 64 registers, stride 1.

### Register `tlb_entries`

Array of 32 registers, stride 1.

### Register `tlb_fault_page`

### Register `tlb_valid`

### Register `status`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 8 | `dfifo_below_low` | inferred |  | driver and diagnostic readings |  |
| 7 | `dfifo_above_high` | inferred |  | driver and diagnostic readings |  |
| 4 | `cfifo_below_low` | inferred |  | driver and diagnostic readings |  |
| 3 | `cfifo_above_high` | inferred |  | driver and diagnostic readings |  |
| 1 | `pipe_idle` | inferred |  | driver and diagnostic readings |  |
| 0 | `commands_done` | inferred |  | driver and diagnostic readings |  |

### Register `fifo_status`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 28:22 | `cfifo_hiwater_mark` | inferred |  | driver and diagnostic readings |  |
| 21:15 | `dfifo_depth` | inferred |  | driver and diagnostic readings |  |
| 14:7 | `cfifo_valid` | inferred |  | driver and diagnostic readings |  |
| 6:0 | `cfifo_depth` | inferred |  | driver and diagnostic readings |  |

### Register `flag_set`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 19 | `context_saved` | inferred |  | driver and diagnostic readings |  |
| 18 | `ge_diag` | inferred |  | driver and diagnostic readings |  |
| 17 | `ge_data` | inferred |  | driver and diagnostic readings |  |
| 16 | `done` | inferred |  | driver and diagnostic readings |  |
| 15 | `dma_access_or_stack_overflow` | established |  | driver and diagnostic readings |  |
| 14 | `cfifo_privilege_violation` | established |  | driver and diagnostic readings |  |
| 13 | `dma_address_error` | established |  | driver and diagnostic readings |  |
| 10 | `buffer_swap` | inferred |  | driver and diagnostic readings |  |
| 9 | `ucode_error` | established |  | driver and diagnostic readings |  |
| 7 | `tlb_miss` | inferred |  | driver and diagnostic readings |  |
| 6 | `context_loaded` | inferred |  | driver and diagnostic readings |  |
| 4 | `dma_done` | inferred |  | driver and diagnostic readings |  |
| 3 | `dfifo_lowater` | inferred |  | driver and diagnostic readings |  |
| 2 | `cfifo_hiwater` | inferred |  | driver and diagnostic readings |  |
| 1 | `cfifo_lowater` | inferred |  | driver and diagnostic readings |  |
| 0 | `retrace` | inferred |  | driver and diagnostic readings |  |

### Register `flag_clr`

### Register `reg_c004`

Formerly rebus_read_hi.

### Register `reg_c005`

Formerly rebus_read_lo.

### Register `cfifo_user`

### Register `gio_status`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 5 | `display_bus_busy` | inferred |  | driver and diagnostic readings |  |
| 4:0 | `bfifo_depth` | inferred |  | driver and diagnostic readings |  |

### Register `dma_busy`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 12 | `address_gen_dma` | inferred |  | driver and diagnostic readings |  |
| 11 | `raster_dma` | inferred |  | driver and diagnostic readings |  |
| 9 | `master_dma` | inferred |  | driver and diagnostic readings |  |
| 4 | `raster_if` | inferred |  | driver and diagnostic readings |  |
| 3 | `field_3` | inferred |  | driver and diagnostic readings | Formerly cd. |
| 2 | `cfifo` | inferred |  | driver and diagnostic readings |  |
| 1 | `host_if` | inferred |  | driver and diagnostic readings |  |
| 0 | `sync` | inferred |  | driver and diagnostic readings |  |

### Register `cfifo_gl`

## Words

| Word | Width | Grade | Source |
|---|---|---|---|
| `CFIFO_CTL` | 32 | inferred | driver and diagnostic readings |
| `CFIFO_INLINE` | 32 | inferred | driver and diagnostic readings |
| `CTX_FLAGS_WORD` | 32 | unknown | driver and diagnostic readings |

### Word `CFIFO_CTL`

Command-FIFO control word (bit 31 clear). The word every OpenGL library
entry point stores first; the data words follow.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31 | `pixel` | established |  | driver and diagnostic readings |  |
| 30 | `pad_flag` | inferred |  | driver and diagnostic readings |  |
| 29:23 | `convert` | established |  | driver and diagnostic readings |  |
| 22 | `kernel` | established |  | driver and diagnostic readings |  |
| 21 | `sync` | established |  | driver and diagnostic readings |  |
| 20:8 | `command` | established |  | driver and diagnostic readings |  |
| 7:0 | `bytes` | established |  | driver and diagnostic readings |  |

### Word `CFIFO_INLINE`

Command-FIFO header of an inline data block (bit 31 set). The GL client sends
pixel rows, bitmap images and geometry-engine tables this way. The byte length
is in bits 19:0, and bits 23:22 give the offset of the first payload byte in
its word. The block then takes (offset + length + 3) / 4 words. The length
field is 20 bits wide; a reader that uses the 8-bit length of CFIFO_CTL
consumes the wrong number of words. Read from the GL client's emitters and the
kernel's table loader: a software expectation, not a board measurement.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31 | `inline` | inferred |  | driver and diagnostic readings |  |
| 23:22 | `first_offset` | inferred |  | driver and diagnostic readings |  |
| 19:0 | `length` | inferred |  | driver and diagnostic readings |  |

### Word `CTX_FLAGS_WORD`

Context image, word 1 (the flags word of the host-memory image the kernel
keeps per context). Bits 26 and 27 are read from the kernel's code that
writes them; 29 to 31 come from traced values and the kernel clearing them
after a load; the reader of bit 28 is not found (set only on the kernel's
own context at creation). Formerly CTX_W1.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31 | `first_load` | inferred |  | driver and diagnostic readings |  |
| 30 | `nothing_saved` | inferred |  | driver and diagnostic readings |  |
| 29 | `window_changed` | inferred |  | driver and diagnostic readings |  |
| 28 | `field_28` | unknown |  | driver and diagnostic readings | Formerly bit28. |
| 27 | `xserver_shadow` | established |  | driver and diagnostic readings |  |
| 26 | `banks_changed` | established |  | driver and diagnostic readings |  |

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `BFIFO_DELAY_DEFAULT` | 0x64 | established | driver and diagnostic readings | diagnostic |
| `BFIFO_HIWATER_DEFAULT` | 0x8 | established | driver and diagnostic readings | diagnostic |
| `BFIFO_LOWATER_DEFAULT` | 0x2 | established | driver and diagnostic readings | diagnostic |
| `BFIFO_MAX` | 0x10 | inferred | driver and diagnostic readings |  |
| `CFIFO_CLASS_DMA_BANK_HOST` | 0x8 | inferred | driver and diagnostic readings | class field of the host-memory DMA descriptor bank, header 0x0008 in bits 31:16; the register number is in bits 15:8 |
| `CFIFO_CLASS_DMA_BANK_SECOND` | 0xa | inferred | driver and diagnostic readings | class field of the second DMA bank, used by the GL client's pixel read path; the meaning of registers 0x02, 0x03, 0x04 and 0x06 on a read is unknown. Formerly CFIFO_CLASS_DMA_BANK_0A. |
| `CFIFO_CLASS_SYNC` | 0xe | inferred | driver and diagnostic readings | class field of the synchronisation headers: register 0x04 is a write fence, register 0x01 a DMA-read sync |
| `CFIFO_CMD_BITMAP` | 0x94 | inferred | driver and diagnostic readings | glBitmap small-image header; eight payload words of flags, size, origin, move and word count, then an inline block of the image |
| `CFIFO_CMD_CLEAR_COLOUR` | 0x15 | inferred | driver and diagnostic readings | colour-buffer clear, no payload; the GL client sends one per clear bit |
| `CFIFO_CMD_CLEAR_DEPTH` | 0x4a | inferred | driver and diagnostic readings | depth-buffer clear, no payload |
| `CFIFO_CMD_CLEAR_STENCIL` | 0x4c | inferred | driver and diagnostic readings | stencil-buffer clear, no payload |
| `CFIFO_CMD_CONTEXT_CONFIG` | 0x8c | inferred | driver and diagnostic readings | four payload bytes, one configuration int, sent after the context opener |
| `CFIFO_CMD_CONTEXT_OPEN` | 0x6 | inferred | driver and diagnostic readings | zero-length; the first word of each GL context setup |
| `CFIFO_CMD_FILLER` | 0xe1 | inferred | driver and diagnostic readings | padding: an int count n, then n filler words the pipe discards; payload is 4n + 4 bytes |
| `CFIFO_CMD_FLUSH` | 0x36 | inferred | driver and diagnostic readings | glFlush, no payload |
| `CFIFO_CMD_GE_MEMORY_READ` | 0xfc | inferred | driver and diagnostic readings | kernel: reads a context out of geometry-engine memory, with the ERAM address and word count; a DMA read follows. Formerly CFIFO_CMD_ERAM_READ. |
| `CFIFO_CMD_GE_MEMORY_WRITE_ADDR` | 0xfb | inferred | driver and diagnostic readings | kernel: the ERAM address and word count for the write-back chunk that precedes it. Formerly CFIFO_CMD_ERAM_WRITE_ADDR. |
| `CFIFO_CMD_GE_MEMORY_WRITE_CHUNK` | 0xfd | inferred | driver and diagnostic readings | kernel: one write-back chunk of at most 0x384 words, with its count and DMA descriptor. Formerly CFIFO_CMD_ERAM_WRITE_CHUNK. |
| `CFIFO_CMD_GE_MEMORY_WRITE_END` | 0xfa | inferred | driver and diagnostic readings | kernel: ends a context write-back. Formerly CFIFO_CMD_ERAM_WRITE_END. |
| `CFIFO_CMD_GE_TABLE_LOAD` | 0x82 | inferred | driver and diagnostic readings | geometry-engine table load: a size-class int, then an inline block of descriptor and data words |
| `CFIFO_CMD_QUERY` | 0xa2 | inferred | driver and diagnostic readings | state query: three int payload words; the client then polls the query-ready flag and reads the answer |
| `CFIFO_CMD_RASTER_PAIRS` | 0x7f | inferred | driver and diagnostic readings | raster register (register, value) pairs, after a record count and a word count |
| `CFIFO_CMD_RASTER_TRIPLES` | 0x7c | inferred | driver and diagnostic readings | raster register three-word records, with the same count framing as the pairs |
| `CFIFO_CMD_RESULT_BEGIN` | 0x61 | inferred | driver and diagnostic readings | command field with no payload; the GL client brackets its selection result fetch with this and CFIFO_CMD_RESULT_END |
| `CFIFO_CMD_RESULT_END` | 0x62 | inferred | driver and diagnostic readings | command field with no payload; ends the selection result fetch |
| `CFIFO_CMD_SCISSOR` | 0x39 | inferred | driver and diagnostic readings | glScissor, four int words: x, width less one, y, height less one |
| `CFIFO_CMD_SELECTION_NAME_POP` | 0xc6 | inferred | driver and diagnostic readings | command field of a CFIFO_CTL word with no payload; the GL client's selection name-stack pop, from the client's API handler. Formerly CFIFO_CMD_NAME_POP. |
| `CFIFO_CMD_SELECTION_NAME_PUSH` | 0xc7 | inferred | driver and diagnostic readings | command field with one payload word (the name); the GL client's selection name push. Formerly CFIFO_CMD_NAME_PUSH. |
| `CFIFO_CMD_SELECTION_NAME_REPLACE` | 0xc5 | inferred | driver and diagnostic readings | command field with one payload word (the name); the GL client's selection name replacement. Formerly CFIFO_CMD_NAME_REPLACE. |
| `CFIFO_CMD_SELECTION_NAME_STACK_INIT` | 0xc4 | inferred | driver and diagnostic readings | command field with no payload; the GL client's selection name-stack initialisation. Formerly CFIFO_CMD_NAME_STACK_INIT. |
| `CFIFO_CMD_SELECT_ENTER` | 0xcb | inferred | driver and diagnostic readings | command field with one payload word taken from the GL client's per-context state; selection entry |
| `CFIFO_CMD_SELECT_EXIT` | 0xc9 | inferred | driver and diagnostic readings | command field with no payload; leaving selection mode, result handling begins |
| `CFIFO_CMD_SWAP_TMESH` | 0xdc | inferred | driver and diagnostic readings | IRIS GL swaptmesh inside a triangle strip, no payload |
| `CFIFO_CMD_VIEWPORT` | 0x33 | inferred | driver and diagnostic readings | glViewport, four int words: x, y, width, height |
| `CFIFO_CMD_WINDOW_CLIP_PACKET` | 0xe4 | inferred | driver and diagnostic readings | kernel: the window clip-word packet of a loaded context, 60 payload bytes; see software/opengl/gl-commands.md. Formerly CFIFO_CMD_CLIP_BIND. |
| `CFIFO_DELAY_DEFAULT` | 0x64 | established | driver and diagnostic readings | diagnostic |
| `CFIFO_HIWATER_DEFAULT` | 0x28 | established | driver and diagnostic readings | diagnostic |
| `CFIFO_LOWATER_DEFAULT` | 0x14 | established | driver and diagnostic readings | diagnostic |
| `CTX_BANK_WORD_FIRST` | 0x10 | established | driver and diagnostic readings |  |
| `CTX_BANK_WORD_SECOND` | 0x11 | established | driver and diagnostic readings |  |
| `CTX_XSERVER_WORD_FIRST` | 0x12 | inferred | driver and diagnostic readings |  |
| `CTX_XSERVER_WORD_LAST` | 0x27 | inferred | driver and diagnostic readings |  |
| `DFIFO_DELAY_DEFAULT` | 0x64 | established | driver and diagnostic readings | diagnostic |
| `DFIFO_HIWATER_DEFAULT` | 0x28 | established | driver and diagnostic readings | diagnostic |
| `DFIFO_LOWATER_DEFAULT` | 0x14 | established | driver and diagnostic readings | diagnostic |
| `INIT_BFIFO_DELAY` | 0x8c | established | driver and diagnostic readings |  |
| `INIT_BFIFO_HIWATER` | 0x6 | established | driver and diagnostic readings |  |
| `INIT_BFIFO_LOWATER` | 0x2 | established | driver and diagnostic readings |  |
| `INIT_CFIFO_DELAY` | 0x64 | established | driver and diagnostic readings |  |
| `INIT_CFIFO_HIWATER` | 0x20 | established | driver and diagnostic readings |  |
| `INIT_CFIFO_LOWATER` | 0x14 | established | driver and diagnostic readings |  |
| `INIT_CONFIG` | 0x7e8c | established | driver and diagnostic readings |  |
| `INIT_DFIFO_DELAY` | 0xfff | established | driver and diagnostic readings |  |
| `INIT_DFIFO_HIWATER` | 0x28 | established | driver and diagnostic readings |  |
| `INIT_DFIFO_LOWATER` | 0x14 | established | driver and diagnostic readings |  |
| `INIT_FLAG_ENABLE` | 0x11000f | established | driver and diagnostic readings |  |
| `INIT_GIO_CONFIG` | 0x765b900f | established | driver and diagnostic readings |  |
| `INIT_INTR_ENABLE` | 0x4400e200 | established | driver and diagnostic readings |  |
| `TLB_ENTRIES` | 0x20 | established | driver and diagnostic readings |  |
| `TLB_PAGE_SHIFT` | 0xc | established | driver and diagnostic readings |  |
| `TOKEN_CLIENT_GE_DMA_SETUP` | 0x9d | established | driver and diagnostic readings | client's geometry-engine DMA set-up: header 0x00009d10 followed by four payload words; see software/opengl/gl-commands.md |
| `TOKEN_CLIENT_POLYGON_STIPPLE_LOAD` | 0x4e | inferred | driver and diagnostic readings | client's polygon stipple upload: header 0x00004e80 followed by 32 words, 128 bytes; see software/opengl/gl-commands.md |
| `TOKEN_READBACK_BEGIN` | 0x96 | established | driver and diagnostic readings |  |
| `TOKEN_READBACK_END` | 0x97 | established | driver and diagnostic readings |  |
| `TOKEN_SECOND_TEXMODE` | 0x5f | established | driver and diagnostic readings | operand, meaning inferred |
| `TOKEN_TEX_BASE_WRITE` | 0xeb | established | driver and diagnostic readings | kernel texture base write: word 0x0000eb04 with the base in its low half, stored at the command window plus the base argument; the board's reading of it is not checked |
| `TOKEN_TEX_READ_SETUP` | 0xe5 | established | driver and diagnostic readings | texture read-back set-up, sent by the kernel and the client: header 0x0000e50c with 12 payload bytes: a row count, a format word and one fixed third word; see software/opengl/gl-commands.md |
| `TOKEN_TEX_RESTORE_PREP` | 0xe3 | established | driver and diagnostic readings | kernel texture restore, sent after the transfer register set-up and before the write set-up; payload not read |
| `TOKEN_TEX_WRITE_SETUP` | 0xd8 | established | driver and diagnostic readings | kernel texture restore write set-up: header 0x0000d80c with three payload words, the transfer's word count split into 9-bit parts |
| `TOKEN_TRANSFER_DONE` | 0xda | established | driver and diagnostic readings | ordering, meaning inferred |

## Test vectors

A vector is a value recorded from a source. An example only shows the layout.

| Target | Value | Kind | Decoded |
|---|---|---|---|
| `config` | 0x8e | vector | big_endian=1, ucode_stall=1, diag_route=0, diag_loopback=1 |
| `config` | 0x7e8c | vector | big_endian=1, ucode_stall=1, diag_route=0, diag_loopback=1 |
| `intr_enab_set` | 0x4400e200 | vector | cfifo_above_high=1, cfifo_below_low=0, dfifo_above_high=1, dfifo_below_low=0 |
| `gio_config` | 0xf | vector | host_big_endian=1, display_bus_big_endian=1, ext_pipe_register=1, tlb_update=1, bus_bypass=0, fifo_high_water=0 |
| `gio_config` | 0x765b900f | vector | host_big_endian=1, display_bus_big_endian=1, ext_pipe_register=1, tlb_update=1, bus_bypass=0, fifo_high_water=1 |
| `flag_set` | 0xe200 | vector | ucode_error=1, dma_address_error=1, cfifo_privilege_violation=1, dma_access_or_stack_overflow=1 |
| `CFIFO_CTL` | 0x39000006 | vector | bytes=6, command=0, sync=0, kernel=0, convert=114, pad_flag=0, pixel=0 |
| `CFIFO_CTL` | 0x59000004 | vector | bytes=4, command=0, sync=0, kernel=0, convert=50, pad_flag=1, pixel=0 |
| `CFIFO_INLINE` | 0x80000214 | example | inline=1, first_offset=0, length=532 |
| `CTX_FLAGS_WORD` | 0xc000000 | vector | banks_changed=1, xserver_shadow=1, field_28=0, first_load=0 |
