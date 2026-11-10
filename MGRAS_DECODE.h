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

/* Identification word read at the start of the board's window. */
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
 * EXAMPLE (unverified): 0x00000388 as DCB_ADDR => data_width=1, crs=7
 */

#endif
