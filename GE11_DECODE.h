/*
 * GE11_DECODE.h - geometry engine control registers for the Impact graphics subsystem (publish-safe decode header)
 *
 *   REG:   <BLOCK>.<name> <offset> <acc><width> [count=<n>] reset=<v> <grade>
 *   FIELD: <BLOCK>.<name>.<field> <hi>:<lo> <grade>
 *   FIELD: <WORD>.<field> <hi>:<lo> <grade>
 *   ENUM:  <target> <value> <label> <grade>
 *   EXAMPLE (unverified): <value> as <WORD or BLOCK.name> => field=val, ...
 *
 * Offsets. A REG offset is a fixed bias plus the register's word index from
 * the start of the host-visible control window (byte offset divided by four).
 * The bias keeps this block clear of the other decode headers' registers and
 * is bookkeeping, not hardware.
 *
 * Derivation. Register positions come from the geometry engine's bring-up and
 * diagnostic behaviour as seen in the shipped graphics drivers and the
 * diagnostic microcode that exercises them. Names are descriptive and chosen
 * here. Bit placements are readings that fit the writes the drivers make.
 *
 * Scope. Control registers only. The 72-bit microcode word, the token and
 * command encodings and the internal memories are described in prose notes,
 * not here.
 */
#ifndef GE11_DECODE_H
#define GE11_DECODE_H

#include <stdint.h>

/* REG: GE.exec_control 0xd000 rw32 reset=unknown inferred */
/* REG: GE.breakpoint_pc 0xd001 rw32 reset=unknown inferred */
/* REG: GE.ramscan_control 0xd002 rw32 reset=unknown inferred */
/* REG: GE.wsync_fifo_control 0xd003 rw32 reset=unknown inferred */
/* REG: GE.diag_select 0xd004 rw32 reset=unknown inferred */
/* REG: GE.enable_mask 0xd005 rw32 reset=unknown inferred */
/* REG: GE.ofifo_tag_config 0xd006 rw32 reset=unknown inferred */
/* REG: GE.ucode_error 0xd007 rw32 reset=unknown inferred */
/* REG: GE.ofifo0_a_status 0xd008 r32 reset=unknown inferred */
/* REG: GE.ofifo0_b_status 0xd009 r32 reset=unknown inferred */
/* REG: GE.ofifo1_a_status 0xd00a r32 reset=unknown inferred */
/* REG: GE.ofifo1_b_status 0xd00b r32 reset=unknown inferred */
/* REG: GE.ofifo2_a_status 0xd00c r32 reset=unknown inferred */
/* REG: GE.ofifo2_b_status 0xd00d r32 reset=unknown inferred */
/* REG: GE.ofifo_control 0xd00e rw32 reset=unknown inferred */

/* Execution control: run, latency, breakpoint, single step, reset. */
/* FIELD: GE.exec_control.go 0:0 inferred */
#define GE_EXEC_CONTROL_GO_SHIFT 0
#define GE_EXEC_CONTROL_GO_MASK  0x1u
/* FIELD: GE.exec_control.latency3 4:4 inferred */
#define GE_EXEC_CONTROL_LATENCY3_SHIFT 4
#define GE_EXEC_CONTROL_LATENCY3_MASK  0x1u
/* FIELD: GE.exec_control.breakpoint_enable 5:5 inferred */
#define GE_EXEC_CONTROL_BREAKPOINT_ENABLE_SHIFT 5
#define GE_EXEC_CONTROL_BREAKPOINT_ENABLE_MASK  0x1u
/* FIELD: GE.exec_control.single_step 6:6 inferred */
#define GE_EXEC_CONTROL_SINGLE_STEP_SHIFT 6
#define GE_EXEC_CONTROL_SINGLE_STEP_MASK  0x1u
/* FIELD: GE.exec_control.reset 7:7 inferred */
#define GE_EXEC_CONTROL_RESET_SHIFT 7
#define GE_EXEC_CONTROL_RESET_MASK  0x1u

/* RAM scan control. */
/* FIELD: GE.ramscan_control.fast_mode 17:17 inferred */
#define GE_RAMSCAN_CONTROL_FAST_MODE_SHIFT 17
#define GE_RAMSCAN_CONTROL_FAST_MODE_MASK  0x1u
/* FIELD: GE.ramscan_control.scan_mode 18:18 inferred */
#define GE_RAMSCAN_CONTROL_SCAN_MODE_SHIFT 18
#define GE_RAMSCAN_CONTROL_SCAN_MODE_MASK  0x1u

/* Write synchronisation FIFO control. */
/* FIELD: GE.wsync_fifo_control.disable 0:0 inferred */
#define GE_WSYNC_FIFO_CONTROL_DISABLE_SHIFT 0
#define GE_WSYNC_FIFO_CONTROL_DISABLE_MASK  0x1u
/* FIELD: GE.wsync_fifo_control.watermark 7:4 inferred */
#define GE_WSYNC_FIFO_CONTROL_WATERMARK_SHIFT 4
#define GE_WSYNC_FIFO_CONTROL_WATERMARK_MASK  0xfu

/* Diagnostic select. */
/* FIELD: GE.diag_select.breakpoint_stall 5:5 inferred */
#define GE_DIAG_SELECT_BREAKPOINT_STALL_SHIFT 5
#define GE_DIAG_SELECT_BREAKPOINT_STALL_MASK  0x1u
/* FIELD: GE.diag_select.input_select 8:8 inferred */
#define GE_DIAG_SELECT_INPUT_SELECT_SHIFT 8
#define GE_DIAG_SELECT_INPUT_SELECT_MASK  0x1u
/* FIELD: GE.diag_select.read_enable 18:18 inferred */
#define GE_DIAG_SELECT_READ_ENABLE_SHIFT 18
#define GE_DIAG_SELECT_READ_ENABLE_MASK  0x1u

/* Output FIFO control: diagnostic routing, high watermark, loop-back to the host interface. */
/* FIELD: GE.ofifo_control.diag_mode 0:0 inferred */
#define GE_OFIFO_CONTROL_DIAG_MODE_SHIFT 0
#define GE_OFIFO_CONTROL_DIAG_MODE_MASK  0x1u
/* FIELD: GE.ofifo_control.watermark 7:1 inferred */
#define GE_OFIFO_CONTROL_WATERMARK_SHIFT 1
#define GE_OFIFO_CONTROL_WATERMARK_MASK  0x7fu
/* FIELD: GE.ofifo_control.route_to_host_if 8:8 inferred */
#define GE_OFIFO_CONTROL_ROUTE_TO_HOST_IF_SHIFT 8
#define GE_OFIFO_CONTROL_ROUTE_TO_HOST_IF_MASK  0x1u

/* Boot-time defaults the drivers program. */
#define GE_OFIFO_WATERMARK_DEFAULT 56 /* inferred */

/*
 * EXAMPLE (unverified): 0x000000c1 as GE.exec_control => go=1, latency3=0, breakpoint_enable=0, single_step=1, reset=1
 */
/*
 * EXAMPLE (unverified): 0x00000071 as GE.exec_control => go=1, latency3=1, breakpoint_enable=1, single_step=1, reset=0
 */
/*
 * EXAMPLE (unverified): 0x00000070 as GE.ofifo_control => diag_mode=0, watermark=56
 */

#endif
