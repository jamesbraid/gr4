/*
 * HQ3_DECODE.h - host interface and command processor registers for the Impact graphics subsystem (publish-safe decode header)
 *
 *   REG:   <BLOCK>.<name> <offset> <acc><width> [count=<n>] reset=<v> <grade>
 *   FIELD: <BLOCK>.<name>.<field> <hi>:<lo> <grade>
 *   FIELD: <WORD>.<field> <hi>:<lo> <grade>
 *   ENUM:  <target> <value> <label> <grade>
 *   TESTVEC: <value> as <WORD or BLOCK.name> => field=val, ...
 *
 * Offsets. A REG offset is the register's word index from the start of the
 * host-visible control window (byte offset divided by four). Four-digit hex
 * offsets here are therefore bookkeeping, not byte addresses. Context RAMs and
 * the TLB are listed as arrays of 32-bit words. The microcode RAM and the
 * command-FIFO windows are not listed.
 *
 * Derivation. Register positions and bit meanings were read from how the
 * shipped kernel driver and the OpenGL library program and poll this host
 * interface chip (watermarks, interrupt enables, status polling, context
 * switch), and from the bring-up and diagnostic behaviour of the boards.
 * Names are descriptive and chosen here. Where an older guess and a driver
 * reading disagreed, the driver reading is used.
 *
 * Flag registers. flag_ctx, flag_set_priv, flag_clr_priv, flag_enab_set,
 * flag_enab_clr, flag_set, flag_clr and the interrupt enables share one bit
 * layout for the low causes; it is stated once, on flag_set.
 */
#ifndef HQ3_DECODE_H
#define HQ3_DECODE_H

#include <stdint.h>

/* REG: HQ.pc 0x1800 rw32 reset=unknown inferred */
/* REG: HQ.cp_data 0x1c00 rw32 reset=unknown inferred */
/* REG: HQ.rss_diag 0x3000 rw32 reset=unknown inferred */
/* REG: HQ.config 0x4000 rw32 reset=unknown inferred */
/* REG: HQ.flag_ctx 0x4001 rw32 reset=unknown inferred */
/* REG: HQ.flag_set_priv 0x4002 rw32 reset=unknown established */
/* REG: HQ.flag_clr_priv 0x4003 w32 reset=unknown inferred */
/* REG: HQ.flag_enab_set 0x4004 rw32 reset=unknown established */
/* REG: HQ.flag_enab_clr 0x4005 w32 reset=unknown inferred */
/* REG: HQ.intr_enab_set 0x4006 rw32 reset=unknown established */
/* REG: HQ.intr_enab_clr 0x4007 w32 reset=unknown inferred */
/* REG: HQ.cfifo_hiwater 0x4008 rw32 reset=unknown inferred */
/* REG: HQ.cfifo_lowater 0x4009 rw32 reset=unknown inferred */
/* REG: HQ.cfifo_delay 0x400a rw32 reset=unknown inferred */
/* REG: HQ.dfifo_hiwater 0x400b rw32 reset=unknown inferred */
/* REG: HQ.dfifo_lowater 0x400c rw32 reset=unknown inferred */
/* REG: HQ.dfifo_delay 0x400d rw32 reset=unknown inferred */
/* REG: HQ.ge0_diag_data 0x4010 rw32 reset=unknown inferred */
/* REG: HQ.ge0_diag_index 0x4011 rw32 reset=unknown inferred */
/* REG: HQ.ge1_diag_data 0x4012 rw32 reset=unknown inferred */
/* REG: HQ.ge1_diag_index 0x4013 rw32 reset=unknown inferred */
/* REG: HQ.ctx_switch 0x4014 w32 reset=unknown inferred */
/* REG: HQ.cfifo_priv 0x4020 w64 reset=unknown inferred */
/* REG: HQ.ctx_data 0x4040 rw32 reset=unknown inferred */
/* REG: HQ.bfifo_hiwater 0x4042 rw32 reset=unknown inferred */
/* REG: HQ.bfifo_lowater 0x4043 rw32 reset=unknown inferred */
/* REG: HQ.bfifo_delay 0x4044 rw32 reset=unknown inferred */
/* REG: HQ.gio_config 0x4045 rw32 reset=unknown inferred */
/* REG: HQ.reif_ctx 0x4080 rw32 count=64 reset=unknown inferred */
/* REG: HQ.hag_ctx 0x40c0 rw32 count=128 reset=unknown inferred */
/* REG: HQ.hif_ctx 0x4140 rw32 count=64 reset=unknown inferred */
/* REG: HQ.gio_ctx 0x4180 rw32 count=64 reset=unknown inferred */
/* REG: HQ.tlb_entries 0x4200 rw32 count=32 reset=unknown inferred */
/* REG: HQ.tlb_fault_page 0x4220 r32 reset=unknown inferred */
/* REG: HQ.tlb_valid 0x4240 rw32 reset=unknown inferred */
/* REG: HQ.status 0xc000 r32 reset=unknown inferred */
/* REG: HQ.fifo_status 0xc001 r32 reset=unknown inferred */
/* REG: HQ.flag_set 0xc002 w32 reset=unknown inferred */
/* REG: HQ.flag_clr 0xc003 w32 reset=unknown inferred */
/* REG: HQ.rebus_read_hi 0xc004 r32 reset=unknown inferred */
/* REG: HQ.rebus_read_lo 0xc005 r32 reset=unknown inferred */
/* REG: HQ.cfifo_user 0xc020 w64 reset=unknown inferred */
/* REG: HQ.gio_status 0xc040 r32 reset=unknown inferred */
/* REG: HQ.dma_busy 0xc041 r32 reset=unknown inferred */
/* REG: HQ.cfifo_gl 0xd020 w64 reset=unknown inferred */

/* Master configuration. Revision and chip-identity bits overlap the diagnostic routing bits in older notes and are not placed. */
/* FIELD: HQ.config.big_endian 2:2 inferred */
#define HQ_CONFIG_BIG_ENDIAN_SHIFT 2
#define HQ_CONFIG_BIG_ENDIAN_MASK  0x1u
/* FIELD: HQ.config.ucode_stall 3:3 inferred */
#define HQ_CONFIG_UCODE_STALL_SHIFT 3
#define HQ_CONFIG_UCODE_STALL_MASK  0x1u
/* FIELD: HQ.config.diag_route 5:4 inferred */
#define HQ_CONFIG_DIAG_ROUTE_SHIFT 4
#define HQ_CONFIG_DIAG_ROUTE_MASK  0x3u
/* ENUM: HQ.config.diag_route 2 ge0 inferred */
#define HQ_CONFIG_DIAG_ROUTE_GE0 2
/* ENUM: HQ.config.diag_route 3 ge1 inferred */
#define HQ_CONFIG_DIAG_ROUTE_GE1 3
/* FIELD: HQ.config.diag_loopback 7:7 inferred */
#define HQ_CONFIG_DIAG_LOOPBACK_SHIFT 7
#define HQ_CONFIG_DIAG_LOOPBACK_MASK  0x1u

/* Host bus configuration. */
/* FIELD: HQ.gio_config.host_big_endian 0:0 inferred */
#define HQ_GIO_CONFIG_HOST_BIG_ENDIAN_SHIFT 0
#define HQ_GIO_CONFIG_HOST_BIG_ENDIAN_MASK  0x1u
/* FIELD: HQ.gio_config.display_bus_big_endian 1:1 inferred */
#define HQ_GIO_CONFIG_DISPLAY_BUS_BIG_ENDIAN_SHIFT 1
#define HQ_GIO_CONFIG_DISPLAY_BUS_BIG_ENDIAN_MASK  0x1u
/* FIELD: HQ.gio_config.ext_pipe_register 2:2 inferred */
#define HQ_GIO_CONFIG_EXT_PIPE_REGISTER_SHIFT 2
#define HQ_GIO_CONFIG_EXT_PIPE_REGISTER_MASK  0x1u
/* FIELD: HQ.gio_config.tlb_update 3:3 inferred */
#define HQ_GIO_CONFIG_TLB_UPDATE_SHIFT 3
#define HQ_GIO_CONFIG_TLB_UPDATE_MASK  0x1u
/* FIELD: HQ.gio_config.bus_bypass 6:6 inferred */
#define HQ_GIO_CONFIG_BUS_BYPASS_SHIFT 6
#define HQ_GIO_CONFIG_BUS_BYPASS_MASK  0x1u
/* FIELD: HQ.gio_config.fifo_high_water 12:12 inferred */
#define HQ_GIO_CONFIG_FIFO_HIGH_WATER_SHIFT 12
#define HQ_GIO_CONFIG_FIFO_HIGH_WATER_MASK  0x1u

/*
 * Flag and interrupt-cause bits (one bit each). The flag register is 25 bits
 * wide (the interrupt handler and the diagnostics both mask with 0x1ffffff).
 * Bits 9, 13, 14 and 15 are the four error causes: the shipped kernel's
 * general interrupt handler tests exactly that group (mask 0x0000e200) and reports,
 * in that bit order, a microcode error, a DMA address range error, a
 * command-FIFO privilege violation and a DMA access or stack overflow, then
 * clears the cause through the interrupt-enable clear register. The kernel
 * enables them at boot (interrupt enable 0x4400e200). The handler never
 * tests bit 8, so the bus-or-protocol-error reading in older notes rests on
 * nothing in the shipped kernel and is dropped here. Bit 20 is enabled in the
 * flag-enable register at start-up (0x11000f is bits 3:0, 16 and 20); the
 * buffer-swap path reads it, clears it, and flushes the command FIFO, but
 * what raises it is not known.
 */
/* Flag and interrupt-cause bits (one bit each). */
/* FIELD: HQ.flag_set.retrace 0:0 inferred */
#define HQ_FLAG_SET_RETRACE_SHIFT 0
#define HQ_FLAG_SET_RETRACE_MASK  0x1u
/* FIELD: HQ.flag_set.cfifo_lowater 1:1 inferred */
#define HQ_FLAG_SET_CFIFO_LOWATER_SHIFT 1
#define HQ_FLAG_SET_CFIFO_LOWATER_MASK  0x1u
/* FIELD: HQ.flag_set.cfifo_hiwater 2:2 inferred */
#define HQ_FLAG_SET_CFIFO_HIWATER_SHIFT 2
#define HQ_FLAG_SET_CFIFO_HIWATER_MASK  0x1u
/* FIELD: HQ.flag_set.dfifo_lowater 3:3 inferred */
#define HQ_FLAG_SET_DFIFO_LOWATER_SHIFT 3
#define HQ_FLAG_SET_DFIFO_LOWATER_MASK  0x1u
/* FIELD: HQ.flag_set.dma_done 4:4 inferred */
#define HQ_FLAG_SET_DMA_DONE_SHIFT 4
#define HQ_FLAG_SET_DMA_DONE_MASK  0x1u
/* FIELD: HQ.flag_set.context_loaded 6:6 inferred */
#define HQ_FLAG_SET_CONTEXT_LOADED_SHIFT 6
#define HQ_FLAG_SET_CONTEXT_LOADED_MASK  0x1u
/* FIELD: HQ.flag_set.tlb_miss 7:7 inferred */
#define HQ_FLAG_SET_TLB_MISS_SHIFT 7
#define HQ_FLAG_SET_TLB_MISS_MASK  0x1u
/* Bit 8 is not placed: no handler tests it (see above). */
/* FIELD: HQ.flag_set.ucode_error 9:9 established */
#define HQ_FLAG_SET_UCODE_ERROR_SHIFT 9
#define HQ_FLAG_SET_UCODE_ERROR_MASK  0x1u
/* FIELD: HQ.flag_set.buffer_swap 10:10 inferred */
#define HQ_FLAG_SET_BUFFER_SWAP_SHIFT 10
#define HQ_FLAG_SET_BUFFER_SWAP_MASK  0x1u
/* FIELD: HQ.flag_set.dma_address_error 13:13 established */
#define HQ_FLAG_SET_DMA_ADDRESS_ERROR_SHIFT 13
#define HQ_FLAG_SET_DMA_ADDRESS_ERROR_MASK  0x1u
/* FIELD: HQ.flag_set.cfifo_privilege_violation 14:14 established */
#define HQ_FLAG_SET_CFIFO_PRIVILEGE_VIOLATION_SHIFT 14
#define HQ_FLAG_SET_CFIFO_PRIVILEGE_VIOLATION_MASK  0x1u
/* FIELD: HQ.flag_set.dma_access_or_stack_overflow 15:15 established */
#define HQ_FLAG_SET_DMA_ACCESS_OR_STACK_OVERFLOW_SHIFT 15
#define HQ_FLAG_SET_DMA_ACCESS_OR_STACK_OVERFLOW_MASK  0x1u
/* FIELD: HQ.flag_set.done 16:16 inferred */
#define HQ_FLAG_SET_DONE_SHIFT 16
#define HQ_FLAG_SET_DONE_MASK  0x1u
/* FIELD: HQ.flag_set.ge_data 17:17 inferred */
#define HQ_FLAG_SET_GE_DATA_SHIFT 17
#define HQ_FLAG_SET_GE_DATA_MASK  0x1u
/* FIELD: HQ.flag_set.ge_diag 18:18 inferred */
#define HQ_FLAG_SET_GE_DIAG_SHIFT 18
#define HQ_FLAG_SET_GE_DIAG_MASK  0x1u
/* FIELD: HQ.flag_set.context_saved 19:19 inferred */
#define HQ_FLAG_SET_CONTEXT_SAVED_SHIFT 19
#define HQ_FLAG_SET_CONTEXT_SAVED_MASK  0x1u

/*
 * Interrupt enables. The three set registers (flag_set_priv, flag_enab_set,
 * intr_enab_set) read back what was set, which is how the diagnostics walk
 * a one and a zero through all 25 bits and how the kernel's handler reads
 * the pending causes (flag_set_priv AND intr_enab_set, masked to 23 bits).
 * Above the flag causes, intr_enab_set has four bits that have no flag bit:
 * they are level interrupts on the FIFO status bits of the same polarity.
 * The kernel enables the high-water bit, and on that interrupt swaps it for
 * the low-water bit (and back), so the writer is blocked only while the FIFO
 * is full.
 */
/* FIELD: HQ.intr_enab_set.cfifo_above_high 26:26 established */
#define HQ_INTR_ENAB_SET_CFIFO_ABOVE_HIGH_SHIFT 26
#define HQ_INTR_ENAB_SET_CFIFO_ABOVE_HIGH_MASK  0x1u
/* FIELD: HQ.intr_enab_set.cfifo_below_low 27:27 established */
#define HQ_INTR_ENAB_SET_CFIFO_BELOW_LOW_SHIFT 27
#define HQ_INTR_ENAB_SET_CFIFO_BELOW_LOW_MASK  0x1u
/* FIELD: HQ.intr_enab_set.dfifo_above_high 30:30 established */
#define HQ_INTR_ENAB_SET_DFIFO_ABOVE_HIGH_SHIFT 30
#define HQ_INTR_ENAB_SET_DFIFO_ABOVE_HIGH_MASK  0x1u
/* FIELD: HQ.intr_enab_set.dfifo_below_low 31:31 established */
#define HQ_INTR_ENAB_SET_DFIFO_BELOW_LOW_SHIFT 31
#define HQ_INTR_ENAB_SET_DFIFO_BELOW_LOW_MASK  0x1u

/* Command FIFO status as the drivers read it. */
/* FIELD: HQ.fifo_status.cfifo_depth 6:0 inferred */
#define HQ_FIFO_STATUS_CFIFO_DEPTH_SHIFT 0
#define HQ_FIFO_STATUS_CFIFO_DEPTH_MASK  0x7fu
/* FIELD: HQ.fifo_status.cfifo_valid 14:7 inferred */
#define HQ_FIFO_STATUS_CFIFO_VALID_SHIFT 7
#define HQ_FIFO_STATUS_CFIFO_VALID_MASK  0xffu
/* FIELD: HQ.fifo_status.dfifo_depth 21:15 inferred */
#define HQ_FIFO_STATUS_DFIFO_DEPTH_SHIFT 15
#define HQ_FIFO_STATUS_DFIFO_DEPTH_MASK  0x7fu
/* FIELD: HQ.fifo_status.cfifo_hiwater_mark 28:22 inferred */
#define HQ_FIFO_STATUS_CFIFO_HIWATER_MARK_SHIFT 22
#define HQ_FIFO_STATUS_CFIFO_HIWATER_MARK_MASK  0x7fu

/* Status bits as the drivers test them. */
/* FIELD: HQ.status.commands_done 0:0 inferred */
#define HQ_STATUS_COMMANDS_DONE_SHIFT 0
#define HQ_STATUS_COMMANDS_DONE_MASK  0x1u
/* FIELD: HQ.status.pipe_idle 1:1 inferred */
#define HQ_STATUS_PIPE_IDLE_SHIFT 1
#define HQ_STATUS_PIPE_IDLE_MASK  0x1u
/* FIELD: HQ.status.cfifo_above_high 3:3 inferred */
#define HQ_STATUS_CFIFO_ABOVE_HIGH_SHIFT 3
#define HQ_STATUS_CFIFO_ABOVE_HIGH_MASK  0x1u
/* FIELD: HQ.status.cfifo_below_low 4:4 inferred */
#define HQ_STATUS_CFIFO_BELOW_LOW_SHIFT 4
#define HQ_STATUS_CFIFO_BELOW_LOW_MASK  0x1u
/* FIELD: HQ.status.dfifo_above_high 7:7 inferred */
#define HQ_STATUS_DFIFO_ABOVE_HIGH_SHIFT 7
#define HQ_STATUS_DFIFO_ABOVE_HIGH_MASK  0x1u
/* FIELD: HQ.status.dfifo_below_low 8:8 inferred */
#define HQ_STATUS_DFIFO_BELOW_LOW_SHIFT 8
#define HQ_STATUS_DFIFO_BELOW_LOW_MASK  0x1u

/* Bus status: depth of the bus FIFO and a cycle-in-progress bit on the display bus. */
/* FIELD: HQ.gio_status.bfifo_depth 4:0 inferred */
#define HQ_GIO_STATUS_BFIFO_DEPTH_SHIFT 0
#define HQ_GIO_STATUS_BFIFO_DEPTH_MASK  0x1fu
/* FIELD: HQ.gio_status.display_bus_busy 5:5 inferred */
#define HQ_GIO_STATUS_DISPLAY_BUS_BUSY_SHIFT 5
#define HQ_GIO_STATUS_DISPLAY_BUS_BUSY_MASK  0x1u

/* DMA busy, one bit per unit. */
/* FIELD: HQ.dma_busy.sync 0:0 inferred */
#define HQ_DMA_BUSY_SYNC_SHIFT 0
#define HQ_DMA_BUSY_SYNC_MASK  0x1u
/* FIELD: HQ.dma_busy.host_if 1:1 inferred */
#define HQ_DMA_BUSY_HOST_IF_SHIFT 1
#define HQ_DMA_BUSY_HOST_IF_MASK  0x1u
/* FIELD: HQ.dma_busy.cfifo 2:2 inferred */
#define HQ_DMA_BUSY_CFIFO_SHIFT 2
#define HQ_DMA_BUSY_CFIFO_MASK  0x1u
/* FIELD: HQ.dma_busy.cd 3:3 inferred */
#define HQ_DMA_BUSY_CD_SHIFT 3
#define HQ_DMA_BUSY_CD_MASK  0x1u
/* FIELD: HQ.dma_busy.raster_if 4:4 inferred */
#define HQ_DMA_BUSY_RASTER_IF_SHIFT 4
#define HQ_DMA_BUSY_RASTER_IF_MASK  0x1u
/* FIELD: HQ.dma_busy.master_dma 9:9 inferred */
#define HQ_DMA_BUSY_MASTER_DMA_SHIFT 9
#define HQ_DMA_BUSY_MASTER_DMA_MASK  0x1u
/* FIELD: HQ.dma_busy.raster_dma 11:11 inferred */
#define HQ_DMA_BUSY_RASTER_DMA_SHIFT 11
#define HQ_DMA_BUSY_RASTER_DMA_MASK  0x1u
/* FIELD: HQ.dma_busy.address_gen_dma 12:12 inferred */
#define HQ_DMA_BUSY_ADDRESS_GEN_DMA_SHIFT 12
#define HQ_DMA_BUSY_ADDRESS_GEN_DMA_MASK  0x1u

/*
 * Context image, word 1 (the flags word of the host-memory image the kernel
 * keeps per context). Bits 26 and 27 are read from the kernel's code that
 * writes them; 29 to 31 come from traced values and the kernel clearing them
 * after a load; the reader of bit 28 is not found (set only on the kernel's
 * own context at creation).
 */
/* FIELD: CTX_W1.banks_changed 26:26 established */
#define HQ_CTX_W1_BANKS_CHANGED_SHIFT 26
#define HQ_CTX_W1_BANKS_CHANGED_MASK  0x1u
/* FIELD: CTX_W1.xserver_shadow 27:27 established */
#define HQ_CTX_W1_XSERVER_SHADOW_SHIFT 27
#define HQ_CTX_W1_XSERVER_SHADOW_MASK  0x1u
/* FIELD: CTX_W1.bit28 28:28 unknown */
#define HQ_CTX_W1_BIT28_SHIFT 28
#define HQ_CTX_W1_BIT28_MASK  0x1u
/* FIELD: CTX_W1.window_changed 29:29 inferred */
#define HQ_CTX_W1_WINDOW_CHANGED_SHIFT 29
#define HQ_CTX_W1_WINDOW_CHANGED_MASK  0x1u
/* FIELD: CTX_W1.nothing_saved 30:30 inferred */
#define HQ_CTX_W1_NOTHING_SAVED_SHIFT 30
#define HQ_CTX_W1_NOTHING_SAVED_MASK  0x1u
/* FIELD: CTX_W1.first_load 31:31 inferred */
#define HQ_CTX_W1_FIRST_LOAD_SHIFT 31
#define HQ_CTX_W1_FIRST_LOAD_MASK  0x1u

/*
 * Image words 16 and 17 hold the bank pair: each is the inverse (xor 1) of
 * one field of the context's two draw-surface descriptors, the same two
 * values a loaded context sends as the arguments of the bank-validation
 * command. That they name the front and back bank the next frame draws
 * rests on the command's name and use and is inferred. Words 18 to 39 carry
 * the X server's screen-wide raster registers when bit 27 is set.
 */
#define HQ_CTX_BANK_WORD_FIRST 16 /* established */
#define HQ_CTX_BANK_WORD_SECOND 17 /* established */
#define HQ_CTX_XSERVER_WORD_FIRST 18 /* inferred */
#define HQ_CTX_XSERVER_WORD_LAST 39 /* inferred */

/*
 * TESTVEC: 0x0c000000 as CTX_W1 => banks_changed=1, xserver_shadow=1, bit28=0, first_load=0
 */

/*
 * Watermark defaults. The values below marked diagnostic are the ones the
 * standalone diagnostics program; the shipped kernel programs the init
 * values further down instead.
 */
#define HQ_CFIFO_HIWATER_DEFAULT 40 /* established, diagnostic */
#define HQ_CFIFO_LOWATER_DEFAULT 20 /* established, diagnostic */
#define HQ_CFIFO_DELAY_DEFAULT 100 /* established, diagnostic */
#define HQ_DFIFO_HIWATER_DEFAULT 40 /* established, diagnostic */
#define HQ_DFIFO_LOWATER_DEFAULT 20 /* established, diagnostic */
#define HQ_DFIFO_DELAY_DEFAULT 100 /* established, diagnostic */
#define HQ_BFIFO_HIWATER_DEFAULT 8 /* established, diagnostic */
#define HQ_BFIFO_LOWATER_DEFAULT 2 /* established, diagnostic */
#define HQ_BFIFO_DELAY_DEFAULT 100 /* established, diagnostic */

/*
 * Values the shipped kernel writes when it brings the host interface up
 * (established). The command-FIFO high watermark is 0x20, lowered by twice
 * a per-board count when that count is positive. The routine that gathers
 * board information writes the configuration register as 0x00007e8d (the
 * same bits plus bit 0).
 * Configuration bits 14:9 are set at init and are not placed above; the
 * register is 15 bits wide on this chip (the diagnostics test it with mask
 * 0x7fff, and 0x3ffff on the later host-interface part).
 */
#define HQ_INIT_CONFIG 0x00007e8c /* established */
#define HQ_INIT_GIO_CONFIG 0x765b900f /* established */
#define HQ_INIT_CFIFO_HIWATER 0x20 /* established */
#define HQ_INIT_CFIFO_LOWATER 0x14 /* established */
#define HQ_INIT_CFIFO_DELAY 0x64 /* established */
#define HQ_INIT_DFIFO_HIWATER 0x28 /* established */
#define HQ_INIT_DFIFO_LOWATER 0x14 /* established */
#define HQ_INIT_DFIFO_DELAY 0xfff /* established */
#define HQ_INIT_BFIFO_HIWATER 6 /* established */
#define HQ_INIT_BFIFO_LOWATER 2 /* established */
#define HQ_INIT_BFIFO_DELAY 0x8c /* established */
#define HQ_INIT_FLAG_ENABLE 0x11000f /* established */
#define HQ_INIT_INTR_ENABLE 0x4400e200 /* established */
#define HQ_BFIFO_MAX 16 /* inferred */
#define HQ_TLB_ENTRIES 32 /* established */
#define HQ_TLB_PAGE_SHIFT 12 /* established */

/*
 * TESTVEC: 0x0000008e as HQ.config => big_endian=1, ucode_stall=1, diag_route=0, diag_loopback=1
 */
/*
 * TESTVEC: 0x0000000f as HQ.gio_config => host_big_endian=1, display_bus_big_endian=1, ext_pipe_register=1, tlb_update=1, bus_bypass=0, fifo_high_water=0
 */
/*
 * TESTVEC: 0x765b900f as HQ.gio_config => host_big_endian=1, display_bus_big_endian=1, ext_pipe_register=1, tlb_update=1, bus_bypass=0, fifo_high_water=1
 */
/*
 * TESTVEC: 0x00007e8c as HQ.config => big_endian=1, ucode_stall=1, diag_route=0, diag_loopback=1
 */
/*
 * TESTVEC: 0x4400e200 as HQ.intr_enab_set => cfifo_above_high=1, cfifo_below_low=0, dfifo_above_high=1, dfifo_below_low=0
 */
/*
 * TESTVEC: 0x0000e200 as HQ.flag_set => ucode_error=1, dma_address_error=1, cfifo_privilege_violation=1, dma_access_or_stack_overflow=1
 */

#endif
