/*
 * MGRAS_DECODE.h - board-level words of the Impact graphics subsystem (publish-safe decode header)
 *
 *   REG:   <BLOCK>.<name> <offset> <acc><width> [count=<n>] reset=<v> <grade>
 *   FIELD: <BLOCK>.<name>.<field> <hi>:<lo> <grade>
 *   FIELD: <WORD>.<field> <hi>:<lo> <grade>
 *   ENUM:  <target> <value> <label> <grade>
 *   TESTVEC: <value> as <WORD or BLOCK.name> => field=val, ...
 *
 * Offsets. The one register array, the per-device display-bus control
 * words, is given as the word index from the start of the host-visible control
 * window (byte offset divided by four); that is bookkeeping, not a byte
 * address. Slot and window addresses are not stated.
 *
 * Derivation. The identification word layout and the control word fields were
 * read from how the shipped kernel driver, the boot firmware's graphics
 * routines and the display server program the board's display control bus.
 * Names are descriptive and chosen here. The device numbers follow the order
 * in which the board decodes its display-bus peripherals.
 *
 * Display control bus. A host access to a peripheral window carries, in its
 * low address bits, a register select (crs), a data width selector, a
 * register-select auto-increment bit and a data-pack bit; each peripheral has
 * a control word (dcb_ctrl, indexed by device number) giving its timing.
 */
#ifndef MGRAS_DECODE_H
#define MGRAS_DECODE_H

#include <stdint.h>

/* REG: MGRAS.dcb_ctrl 0xa000 rw32 count=12 reset=unknown inferred */
/* Device numbers: 3 both colour maps (broadcast), 4 and 5 colour maps, 6 true-colour DAC, 7 window-mode chip, 8 video timing chip, 9 board version straps, 11 I2C/monitor-control. */

/* Per-device display-bus control word. */
/* FIELD: MGRAS.dcb_ctrl.sync_ack 0:0 inferred */
#define MGRAS_DCB_CTRL_SYNC_ACK_SHIFT 0
#define MGRAS_DCB_CTRL_SYNC_ACK_MASK  0x1u
/* FIELD: MGRAS.dcb_ctrl.async_ack 1:1 inferred */
#define MGRAS_DCB_CTRL_ASYNC_ACK_SHIFT 1
#define MGRAS_DCB_CTRL_ASYNC_ACK_MASK  0x1u
/* FIELD: MGRAS.dcb_ctrl.cs_width 4:2 inferred */
#define MGRAS_DCB_CTRL_CS_WIDTH_SHIFT 2
#define MGRAS_DCB_CTRL_CS_WIDTH_MASK  0x7u
/* FIELD: MGRAS.dcb_ctrl.cs_hold 8:6 inferred */
#define MGRAS_DCB_CTRL_CS_HOLD_SHIFT 6
#define MGRAS_DCB_CTRL_CS_HOLD_MASK  0x7u
/* FIELD: MGRAS.dcb_ctrl.cs_setup 12:10 inferred */
#define MGRAS_DCB_CTRL_CS_SETUP_SHIFT 10
#define MGRAS_DCB_CTRL_CS_SETUP_MASK  0x7u

/* Display-bus window address bits (a plain word, not a register). */
/* FIELD: DCB_ADDR.encrs_inc 5:5 inferred */
#define MGRAS_DCB_ADDR_ENCRS_INC_SHIFT 5
#define MGRAS_DCB_ADDR_ENCRS_INC_MASK  0x1u
/* FIELD: DCB_ADDR.endata_pack 6:6 inferred */
#define MGRAS_DCB_ADDR_ENDATA_PACK_SHIFT 6
#define MGRAS_DCB_ADDR_ENDATA_PACK_MASK  0x1u
/* FIELD: DCB_ADDR.crs 9:7 inferred */
#define MGRAS_DCB_ADDR_CRS_SHIFT 7
#define MGRAS_DCB_ADDR_CRS_MASK  0x7u
/* FIELD: DCB_ADDR.data_width 4:3 inferred */
#define MGRAS_DCB_ADDR_DATA_WIDTH_SHIFT 3
#define MGRAS_DCB_ADDR_DATA_WIDTH_MASK  0x3u
/* ENUM: DCB_ADDR.data_width 0 four_bytes inferred */
#define MGRAS_DCB_ADDR_DATA_WIDTH_FOUR_BYTES 0
/* ENUM: DCB_ADDR.data_width 1 one_byte inferred */
#define MGRAS_DCB_ADDR_DATA_WIDTH_ONE_BYTE 1
/* ENUM: DCB_ADDR.data_width 2 two_bytes inferred */
#define MGRAS_DCB_ADDR_DATA_WIDTH_TWO_BYTES 2
/* ENUM: DCB_ADDR.data_width 3 three_bytes inferred */
#define MGRAS_DCB_ADDR_DATA_WIDTH_THREE_BYTES 3

/*
 * Index byte of the multi-channel option board, written to the board's
 * index port before each access to its data port. The high nibble picks a
 * device, the low nibble a port on it. Banks 2 and 3 are the two
 * true-colour DACs of the option, banks 0 and 1 its two overlay-palette
 * DACs, and banks 8 to 10 its three control registers. Ports on a DAC are
 * offsets from its bank base; the full map is in docs/OPEN_QUESTIONS.md.
 */
/* FIELD: MCO_INDEX.port 3:0 established */
#define MGRAS_MCO_INDEX_PORT_SHIFT 0
#define MGRAS_MCO_INDEX_PORT_MASK  0xfu
/* FIELD: MCO_INDEX.bank 7:4 established */
#define MGRAS_MCO_INDEX_BANK_SHIFT 4
#define MGRAS_MCO_INDEX_BANK_MASK  0xfu
/* ENUM: MCO_INDEX.bank 0 overlay_dac_a established */
#define MGRAS_MCO_INDEX_BANK_OVERLAY_DAC_A 0
/* ENUM: MCO_INDEX.bank 1 overlay_dac_b established */
#define MGRAS_MCO_INDEX_BANK_OVERLAY_DAC_B 1
/* ENUM: MCO_INDEX.bank 2 true_colour_dac_a established */
#define MGRAS_MCO_INDEX_BANK_TRUE_COLOUR_DAC_A 2
/* ENUM: MCO_INDEX.bank 3 true_colour_dac_b established */
#define MGRAS_MCO_INDEX_BANK_TRUE_COLOUR_DAC_B 3
/* ENUM: MCO_INDEX.bank 8 control_1 established */
#define MGRAS_MCO_INDEX_BANK_CONTROL_1 8
/* ENUM: MCO_INDEX.bank 9 control_2 established */
#define MGRAS_MCO_INDEX_BANK_CONTROL_2 9
/* ENUM: MCO_INDEX.bank 10 control_3 established */
#define MGRAS_MCO_INDEX_BANK_CONTROL_3 10

/*
 * Identification byte of the multi-channel option board (the byte at the
 * index port's register select 0). The kernel's probe has two shapes,
 * split by the host machine family and not by software release; both give
 * the low nibble as the revision and report 0xff for no board. They are
 * not interchangeable.
 *  - Indigo2-class host kernels (the double-read shape): write 0xff and
 *    read, write 0 and read again; the reads must match; present when the
 *    value is 1 or its high nibble is 0xa.
 *  - Octane and Origin host kernels (the single-read shape), identical in
 *    both releases held: write 0xff, read one byte; present when its high
 *    nibble is 4. No second write, no match test, and the byte read is at
 *    a different offset from the byte written; whether those name one
 *    register is unknown.
 * Established from the probe routine's machine words in each held build,
 * not a bus measurement. Not held: an Indigo2-class kernel from the later
 * of the two releases, so its shape there is unknown. The build-by-build
 * table is in docs/OPEN_QUESTIONS.md.
 */
/* FIELD: MCO_ID.revision 3:0 established */
#define MGRAS_MCO_ID_REVISION_SHIFT 0
#define MGRAS_MCO_ID_REVISION_MASK  0xfu
/* FIELD: MCO_ID.board 7:4 established */
#define MGRAS_MCO_ID_BOARD_SHIFT 4
#define MGRAS_MCO_ID_BOARD_MASK  0xfu
/* ENUM: MCO_ID.board 10 present established */
#define MGRAS_MCO_ID_BOARD_PRESENT 10
/* ENUM: MCO_ID.board 4 present_single_read established */
#define MGRAS_MCO_ID_BOARD_PRESENT_SINGLE_READ 4
#define MGRAS_MCO_ID_PROBE_WRITE_FIRST 0xff /* established, both shapes */
#define MGRAS_MCO_ID_PROBE_WRITE_SECOND 0x00 /* established, double-read shape only */
#define MGRAS_MCO_ID_ABSENT 0xff /* established, probe result for no board, both shapes */
#define MGRAS_MCO_ID_SPECIAL_PRESENT 0x01 /* established, a whole-byte value also accepted, double-read shape only */

/*
 * Multi-channel option: bank base of each output channel, from the five-entry
 * table in the loader's data (index 0 to 4). Channels 1 and 2 are the
 * true-colour DACs, 3 and 4 the overlay-palette DACs; channel 0's entry equals
 * channel 3's and what it stands for is not stated. Each base is the bank
 * number in the high nibble of the index byte, shifted into place.
 */
#define MGRAS_MCO_BANK_BASE_CH0 0x00 /* established */
#define MGRAS_MCO_BANK_BASE_CH1 0x20 /* established */
#define MGRAS_MCO_BANK_BASE_CH2 0x30 /* established */
#define MGRAS_MCO_BANK_BASE_CH3 0x00 /* established */
#define MGRAS_MCO_BANK_BASE_CH4 0x10 /* established */

/*
 * Ports of an ADV7162 true-colour DAC channel, as offsets from its bank base.
 * Port 0 is a 10-bit register pointer written as two bytes, port 1 the
 * palette data (256 entries of six bytes: each colour's high 8 bits, then
 * its low 2), port 2 the data port of the register the pointer selects.
 * Port 3 is written by the probe with 3, 2 and a table byte; its role is
 * unknown. A data sheet port map (not held) or a capture of a write to this
 * port followed by a read of it would settle it. Register 3 is the identification register: a healthy part reads
 * 0x79 and the loader compares against it.
 */
#define MGRAS_ADV7162_PORT_POINTER 0 /* established */
#define MGRAS_ADV7162_PORT_PALETTE 1 /* established */
#define MGRAS_ADV7162_PORT_DATA 2 /* established */
#define MGRAS_ADV7162_PORT_PROBE 3 /* unknown */
#define MGRAS_ADV7162_REG_ID 3 /* established */
#define MGRAS_ADV7162_ID_VALUE 0x79 /* established */

/*
 * The display server's blanking sequence writes ADV7162 register 4, 16 bits
 * wide: zero to blank, all ones to restore. The register number and width
 * are established; that it is the pixel read mask is inferred, and no part
 * data sheet has been checked for the number.
 */
#define MGRAS_ADV7162_REG_BLANK 4 /* established */
#define MGRAS_ADV7162_BLANK_VALUE 0x0000 /* established */
#define MGRAS_ADV7162_RESTORE_VALUE 0xffff /* established */

/*
 * Multi-channel option configuration path on device 11. The register select
 * (crs) picks the target: 0 the programmable-logic configuration data byte,
 * 1 its control and status, 4 the timing chip's register number, 5 that
 * chip's 16-bit data, 7 its auto-incrementing timing RAM.
 */
#define MGRAS_MCO_SEL_FPGA_DATA 0 /* established */
#define MGRAS_MCO_SEL_FPGA_CTRL 1 /* established */
#define MGRAS_MCO_SEL_TIMING_REG 4 /* established */
#define MGRAS_MCO_SEL_TIMING_DATA 5 /* established */
#define MGRAS_MCO_SEL_TIMING_RAM 7 /* established */

/*
 * Configuration load sequence. Status bits 2:0 must read 0 after the first
 * control write (value 0xfe), 6 after the second (value 0x01) and again 6
 * after every data byte; after the last byte status bits 1:0 must both be
 * set. The image is 63112 bytes followed by 20 zero bytes of padding.
 */
#define MGRAS_MCO_LOAD_CTRL_FIRST 0xfe /* established */
#define MGRAS_MCO_LOAD_CTRL_SECOND 0x01 /* established */
#define MGRAS_MCO_LOAD_STATUS_FIRST 0 /* established */
#define MGRAS_MCO_LOAD_STATUS_AFTER_SECOND 6 /* established */
#define MGRAS_MCO_LOAD_IMAGE_BYTES 63112 /* established */
#define MGRAS_MCO_LOAD_PAD_BYTES 20 /* established */

/*
 * Identification word read at the start of the board's window. The kernel's
 * probe compares only bits 6:0 (must be 0x10), bit 16 (set), bit 17 (clear)
 * and bits 31:18 (must be 1); bits 15:7 are not examined, so the split into
 * revision and product below is a reading, not what the probe tests.
 */
/* FIELD: GIO_ID.revision 7:4 inferred */
#define MGRAS_GIO_ID_REVISION_SHIFT 4
#define MGRAS_GIO_ID_REVISION_MASK  0xfu
/* FIELD: GIO_ID.product 31:8 inferred */
#define MGRAS_GIO_ID_PRODUCT_SHIFT 8
#define MGRAS_GIO_ID_PRODUCT_MASK  0xffffffu

/*
 * TESTVEC: 0x00050190 as GIO_ID => revision=9, product=0x501
 */
/*
 * TESTVEC: 0x0000108c as MGRAS.dcb_ctrl => sync_ack=0, async_ack=0, cs_width=3, cs_hold=2, cs_setup=4
 */
/*
 * TESTVEC: 0x0000318c as MGRAS.dcb_ctrl => cs_width=3, cs_hold=6, cs_setup=4
 */
/*
 * The option board's three timing words differ only in how the bus waits
 * for the peripheral: none for its configuration ports, a synchronous
 * acknowledge for its index and data ports, an asynchronous acknowledge for
 * its timing chip. Bits 14:13 are set in the last two and are not placed.
 * TESTVEC: 0x00000318 as MGRAS.dcb_ctrl => sync_ack=0, async_ack=0, cs_width=6, cs_hold=4, cs_setup=0
 */
/*
 * TESTVEC: 0x00006319 as MGRAS.dcb_ctrl => sync_ack=1, async_ack=0, cs_width=6, cs_hold=4, cs_setup=0
 */
/*
 * TESTVEC: 0x0000631a as MGRAS.dcb_ctrl => sync_ack=0, async_ack=1, cs_width=6, cs_hold=4, cs_setup=0
 */
/*
 * TESTVEC: 0x00000090 as MCO_INDEX => port=0, bank=9
 */
/*
 * EXAMPLE (unverified): 0x00000388 as DCB_ADDR => data_width=1, crs=7
 */

#endif
