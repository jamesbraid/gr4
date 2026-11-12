/* generated from defs/mgras.toml by defs-gen - do not edit, change the source */
/* board-level words of the Impact graphics subsystem */
#ifndef MGRAS_GEN_H
#define MGRAS_GEN_H

#include <stdint.h>


/* dcb_ctrl: rw32, reset unknown; driver and firmware readings */
#define MGRAS_DCB_CTRL_OFFSET                        0xa000u /* inferred */
#define MGRAS_DCB_CTRL_COUNT                         12
#define MGRAS_DCB_CTRL_STRIDE                        4
#define MGRAS_DCB_CTRL_CS_SETUP_SHIFT                10 /* inferred */
#define MGRAS_DCB_CTRL_CS_SETUP_MASK                 0x7u
#define MGRAS_DCB_CTRL_CS_SETUP_INPLACE              (MGRAS_DCB_CTRL_CS_SETUP_MASK << MGRAS_DCB_CTRL_CS_SETUP_SHIFT)
#define MGRAS_DCB_CTRL_CS_HOLD_SHIFT                 6 /* inferred */
#define MGRAS_DCB_CTRL_CS_HOLD_MASK                  0x7u
#define MGRAS_DCB_CTRL_CS_HOLD_INPLACE               (MGRAS_DCB_CTRL_CS_HOLD_MASK << MGRAS_DCB_CTRL_CS_HOLD_SHIFT)
#define MGRAS_DCB_CTRL_CS_WIDTH_SHIFT                2 /* inferred */
#define MGRAS_DCB_CTRL_CS_WIDTH_MASK                 0x7u
#define MGRAS_DCB_CTRL_CS_WIDTH_INPLACE              (MGRAS_DCB_CTRL_CS_WIDTH_MASK << MGRAS_DCB_CTRL_CS_WIDTH_SHIFT)
#define MGRAS_DCB_CTRL_ASYNC_ACK_SHIFT               1 /* inferred */
#define MGRAS_DCB_CTRL_ASYNC_ACK_MASK                0x1u
#define MGRAS_DCB_CTRL_ASYNC_ACK_INPLACE             (MGRAS_DCB_CTRL_ASYNC_ACK_MASK << MGRAS_DCB_CTRL_ASYNC_ACK_SHIFT)
#define MGRAS_DCB_CTRL_SYNC_ACK_SHIFT                0 /* inferred */
#define MGRAS_DCB_CTRL_SYNC_ACK_MASK                 0x1u
#define MGRAS_DCB_CTRL_SYNC_ACK_INPLACE              (MGRAS_DCB_CTRL_SYNC_ACK_MASK << MGRAS_DCB_CTRL_SYNC_ACK_SHIFT)

/*
 * Second board-version word, read 0x62488 above the board register
 * base: the start of device 9's window, register select 1, one-byte width. The
 * kernel's board-information routine loads it as a word and works only on its
 * top byte (the first byte at that address). Bits 30:29 of the word, bits 6:5
 * of that byte, are the product field. The value 1 takes the path with one
 * engine and no second board, which is how a Solid Impact board is told from
 * the others. Established from the routine's machine words, in the kernel
 * object of the base distribution's graphics module; not a bus measurement.
 * The byte's other bits (1:0 and 4:2) are split off and kept as well; their
 * roles are not placed here. How board revision numbers map to products is
 * inferred.
 */
/* word BDVERS2: 32 bits; driver and firmware readings */
#define MGRAS_BDVERS2_WIDTH                          32 /* established */
#define MGRAS_BDVERS2_PRODUCT_SHIFT                  29 /* established */
#define MGRAS_BDVERS2_PRODUCT_MASK                   0x3u
#define MGRAS_BDVERS2_PRODUCT_INPLACE                (MGRAS_BDVERS2_PRODUCT_MASK << MGRAS_BDVERS2_PRODUCT_SHIFT)
#define MGRAS_BDVERS2_PRODUCT_SOLID_IMPACT           1 /* established */

/* word DCB_ADDR: 32 bits; driver and firmware readings */
#define MGRAS_DCB_ADDR_WIDTH                         32 /* inferred */
#define MGRAS_DCB_ADDR_DEVICE_SHIFT                  10 /* inferred */
#define MGRAS_DCB_ADDR_DEVICE_MASK                   0x1fu
#define MGRAS_DCB_ADDR_DEVICE_INPLACE                (MGRAS_DCB_ADDR_DEVICE_MASK << MGRAS_DCB_ADDR_DEVICE_SHIFT)
#define MGRAS_DCB_ADDR_CRS_SHIFT                     7 /* inferred */
#define MGRAS_DCB_ADDR_CRS_MASK                      0x7u
#define MGRAS_DCB_ADDR_CRS_INPLACE                   (MGRAS_DCB_ADDR_CRS_MASK << MGRAS_DCB_ADDR_CRS_SHIFT)
#define MGRAS_DCB_ADDR_ENDATA_PACK_SHIFT             6 /* inferred */
#define MGRAS_DCB_ADDR_ENDATA_PACK_MASK              0x1u
#define MGRAS_DCB_ADDR_ENDATA_PACK_INPLACE           (MGRAS_DCB_ADDR_ENDATA_PACK_MASK << MGRAS_DCB_ADDR_ENDATA_PACK_SHIFT)
#define MGRAS_DCB_ADDR_ENCRS_INC_SHIFT               5 /* inferred */
#define MGRAS_DCB_ADDR_ENCRS_INC_MASK                0x1u
#define MGRAS_DCB_ADDR_ENCRS_INC_INPLACE             (MGRAS_DCB_ADDR_ENCRS_INC_MASK << MGRAS_DCB_ADDR_ENCRS_INC_SHIFT)
#define MGRAS_DCB_ADDR_DATA_WIDTH_SHIFT              3 /* inferred */
#define MGRAS_DCB_ADDR_DATA_WIDTH_MASK               0x3u
#define MGRAS_DCB_ADDR_DATA_WIDTH_INPLACE            (MGRAS_DCB_ADDR_DATA_WIDTH_MASK << MGRAS_DCB_ADDR_DATA_WIDTH_SHIFT)
#define MGRAS_DCB_ADDR_DATA_WIDTH_FOUR_BYTES         0 /* inferred */
#define MGRAS_DCB_ADDR_DATA_WIDTH_ONE_BYTE           1 /* inferred */
#define MGRAS_DCB_ADDR_DATA_WIDTH_TWO_BYTES          2 /* inferred */
#define MGRAS_DCB_ADDR_DATA_WIDTH_THREE_BYTES        3 /* inferred */

/*
 * Identification word read at the start of the board's window. The kernel's
 * probe compares only bits 6:0 (must be 0x10), bit 16 (set), bit 17 (clear)
 * and bits 31:18 (must be 1); bits 15:7 are not examined, so the split into
 * revision and product below is a reading, not what the probe tests.
 */
/* word GIO_ID: 32 bits; driver and firmware readings */
#define MGRAS_GIO_ID_WIDTH                           32 /* inferred */
#define MGRAS_GIO_ID_PRODUCT_SHIFT                   8 /* inferred */
#define MGRAS_GIO_ID_PRODUCT_MASK                    0xffffffu
#define MGRAS_GIO_ID_PRODUCT_INPLACE                 (MGRAS_GIO_ID_PRODUCT_MASK << MGRAS_GIO_ID_PRODUCT_SHIFT)
#define MGRAS_GIO_ID_REVISION_SHIFT                  4 /* inferred */
#define MGRAS_GIO_ID_REVISION_MASK                   0xfu
#define MGRAS_GIO_ID_REVISION_INPLACE                (MGRAS_GIO_ID_REVISION_MASK << MGRAS_GIO_ID_REVISION_SHIFT)

/*
 * One command written to the normal command FIFO, as the public driver packs it:
 * the constant framing 0x0018000400000000, the register selector shifted left 40
 * bits, and the 32-bit payload. The execute mark adds 0x0004000000000000 and is
 * set on the write that starts a drawing operation. The layout is the driver's
 * software expectation; what the board does with each field is not established.
 */
/* word HQ4_NUMERIC_PACKET: 64 bits; OpenBSD impact(4) driver register header */
#define MGRAS_HQ4_NUMERIC_PACKET_WIDTH               64 /* established */
#define MGRAS_HQ4_NUMERIC_PACKET_EXECUTE_SHIFT       50 /* inferred */
#define MGRAS_HQ4_NUMERIC_PACKET_EXECUTE_MASK        0x1ull
#define MGRAS_HQ4_NUMERIC_PACKET_EXECUTE_INPLACE     (MGRAS_HQ4_NUMERIC_PACKET_EXECUTE_MASK << MGRAS_HQ4_NUMERIC_PACKET_EXECUTE_SHIFT)
#define MGRAS_HQ4_NUMERIC_PACKET_SELECTOR_SHIFT      40 /* established */
#define MGRAS_HQ4_NUMERIC_PACKET_SELECTOR_MASK       0xffull
#define MGRAS_HQ4_NUMERIC_PACKET_SELECTOR_INPLACE    (MGRAS_HQ4_NUMERIC_PACKET_SELECTOR_MASK << MGRAS_HQ4_NUMERIC_PACKET_SELECTOR_SHIFT)
#define MGRAS_HQ4_NUMERIC_PACKET_PAYLOAD_SHIFT       0 /* established */
#define MGRAS_HQ4_NUMERIC_PACKET_PAYLOAD_MASK        0xffffffffull
#define MGRAS_HQ4_NUMERIC_PACKET_PAYLOAD_INPLACE     (MGRAS_HQ4_NUMERIC_PACKET_PAYLOAD_MASK << MGRAS_HQ4_NUMERIC_PACKET_PAYLOAD_SHIFT)

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
/* word MCO_ID: 32 bits; driver and firmware readings */
#define MGRAS_MCO_ID_WIDTH                           32 /* established */
#define MGRAS_MCO_ID_BOARD_SHIFT                     4 /* established */
#define MGRAS_MCO_ID_BOARD_MASK                      0xfu
#define MGRAS_MCO_ID_BOARD_INPLACE                   (MGRAS_MCO_ID_BOARD_MASK << MGRAS_MCO_ID_BOARD_SHIFT)
#define MGRAS_MCO_ID_BOARD_PRESENT_SINGLE_READ       4 /* established */
#define MGRAS_MCO_ID_BOARD_PRESENT                   10 /* established */
#define MGRAS_MCO_ID_REVISION_SHIFT                  0 /* established */
#define MGRAS_MCO_ID_REVISION_MASK                   0xfu
#define MGRAS_MCO_ID_REVISION_INPLACE                (MGRAS_MCO_ID_REVISION_MASK << MGRAS_MCO_ID_REVISION_SHIFT)

/*
 * Index byte of the multi-channel option board, written to the board's
 * index port before each access to its data port. The high nibble picks a
 * device, the low nibble a port on it. Banks 2 and 3 are the two
 * true-colour DACs of the option, banks 0 and 1 its two overlay-palette
 * DACs, and banks 8 to 10 its three control registers. Ports on a DAC are
 * offsets from its bank base; the full map is in docs/OPEN_QUESTIONS.md.
 */
/* word MCO_INDEX: 32 bits; driver and firmware readings */
#define MGRAS_MCO_INDEX_WIDTH                        32 /* established */
#define MGRAS_MCO_INDEX_BANK_SHIFT                   4 /* established */
#define MGRAS_MCO_INDEX_BANK_MASK                    0xfu
#define MGRAS_MCO_INDEX_BANK_INPLACE                 (MGRAS_MCO_INDEX_BANK_MASK << MGRAS_MCO_INDEX_BANK_SHIFT)
#define MGRAS_MCO_INDEX_BANK_OVERLAY_DAC_A           0 /* established */
#define MGRAS_MCO_INDEX_BANK_OVERLAY_DAC_B           1 /* established */
#define MGRAS_MCO_INDEX_BANK_TRUE_COLOUR_DAC_A       2 /* established */
#define MGRAS_MCO_INDEX_BANK_TRUE_COLOUR_DAC_B       3 /* established */
#define MGRAS_MCO_INDEX_BANK_CONTROL_1               8 /* established */
#define MGRAS_MCO_INDEX_BANK_CONTROL_2               9 /* established */
#define MGRAS_MCO_INDEX_BANK_CONTROL_3               10 /* established */
#define MGRAS_MCO_INDEX_PORT_SHIFT                   0 /* established */
#define MGRAS_MCO_INDEX_PORT_MASK                    0xfu
#define MGRAS_MCO_INDEX_PORT_INPLACE                 (MGRAS_MCO_INDEX_PORT_MASK << MGRAS_MCO_INDEX_PORT_SHIFT)

#define MGRAS_ADV473_PORT_ADDR                       0x0u /* established */
#define MGRAS_ADV473_PORT_COMMAND                    0x6u /* established */
#define MGRAS_ADV473_PORT_MASK                       0x2u /* inferred */
#define MGRAS_ADV473_PORT_PALETTE                    0x1u /* established */
#define MGRAS_ADV7162_BLANK_VALUE                    0x0u /* established */
#define MGRAS_ADV7162_ID_VALUE                       0x79u /* established */
#define MGRAS_ADV7162_PORT_DATA                      0x2u /* established */
#define MGRAS_ADV7162_PORT_PALETTE                   0x1u /* established */
#define MGRAS_ADV7162_PORT_POINTER                   0x0u /* established */
#define MGRAS_ADV7162_PORT_PROBE                     0x3u /* inferred */
#define MGRAS_ADV7162_REG_BLANK                      0x4u /* established */
#define MGRAS_ADV7162_REG_ID                         0x3u /* established */
#define MGRAS_ADV7162_RESTORE_VALUE                  0xffffu /* established */
#define MGRAS_CMAP_ENTRIES                           0x2000u /* established */
#define MGRAS_HQ4_NORMAL_FIFO_OFFSET                 0x20400u /* established */
#define MGRAS_MCO_BANK_BASE_CH0                      0x0u /* established */
#define MGRAS_MCO_BANK_BASE_CH1                      0x20u /* established */
#define MGRAS_MCO_BANK_BASE_CH2                      0x30u /* established */
#define MGRAS_MCO_BANK_BASE_CH3                      0x0u /* established */
#define MGRAS_MCO_BANK_BASE_CH4                      0x10u /* established */
#define MGRAS_MCO_DAC_LUT_ENTRIES                    0x100u /* established */
#define MGRAS_MCO_DAC_LUT_ENTRY_BITS                 0xau /* established */
#define MGRAS_MCO_ID_ABSENT                          0xffu /* established */
#define MGRAS_MCO_ID_PROBE_SINGLE_READ_OFFSET        0x70008u /* established */
#define MGRAS_MCO_ID_PROBE_SINGLE_TIMING_SELECT_FIRST 0x14u /* established */
#define MGRAS_MCO_ID_PROBE_SINGLE_TIMING_SELECT_SECOND 0x0u /* established */
#define MGRAS_MCO_ID_PROBE_SINGLE_WRITE_OFFSET       0x72c08u /* established */
#define MGRAS_MCO_ID_PROBE_WRITE_FIRST               0xffu /* established */
#define MGRAS_MCO_ID_PROBE_WRITE_SECOND              0x0u /* established */
#define MGRAS_MCO_ID_SPECIAL_PRESENT                 0x1u /* established */
#define MGRAS_MCO_LOAD_CTRL_FIRST                    0xfeu /* established */
#define MGRAS_MCO_LOAD_CTRL_SECOND                   0x1u /* established */
#define MGRAS_MCO_LOAD_IMAGE_BYTES                   0xf688u /* established */
#define MGRAS_MCO_LOAD_PAD_BYTES                     0x14u /* established */
#define MGRAS_MCO_LOAD_STATUS_AFTER_SECOND           0x6u /* established */
#define MGRAS_MCO_LOAD_STATUS_FIRST                  0x0u /* established */
#define MGRAS_MCO_SEL_FPGA_CTRL                      0x1u /* established */
#define MGRAS_MCO_SEL_FPGA_DATA                      0x0u /* established */
#define MGRAS_MCO_SEL_TIMING_DATA                    0x5u /* established */
#define MGRAS_MCO_SEL_TIMING_RAM                     0x7u /* established */
#define MGRAS_MCO_SEL_TIMING_REG                     0x4u /* established */

#endif /* MGRAS_GEN_H */
