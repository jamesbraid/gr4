/* generated from devices/mgras/registers.toml by defs-gen - do not edit, change the source */
/* SPDX-License-Identifier: BSD-3-Clause */
/* defs-gen 2 */
/* input sha256 527f694ae8a7a88b221407df4266896ca44eae060855348313383ee6919a16d0 */
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
 * Second board-version word at address 0x072408, of which the kernel
 * reads only the top byte (bits 31:24). Bits 1:0 and 3:2 of that byte are
 * the two TRAM fields, bits 6:4 the RB revision on product 0. The RE count
 * and the meaning of the TRAM fields depend on the product field of the word at
 * 0x072488 (BDVERS2): product 0 has two RE unless bits 6:4 are 3 or 7; product 1
 * has one RE and no TRAM; products 2 and 3 have one RE per GE, with 0 or 4 TRAMs
 * per path. Bit 7 of the byte is not read. Inferred from the kernel object.
 */
/* word BDVERS1: 32 bits; driver and firmware readings */
#define MGRAS_BDVERS1_WIDTH                          32 /* inferred */
#define MGRAS_BDVERS1_RB_REVISION_SHIFT              28 /* inferred */
#define MGRAS_BDVERS1_RB_REVISION_MASK               0x7u
#define MGRAS_BDVERS1_RB_REVISION_INPLACE            (MGRAS_BDVERS1_RB_REVISION_MASK << MGRAS_BDVERS1_RB_REVISION_SHIFT)
#define MGRAS_BDVERS1_TRAM_FIELD_1_SHIFT             26 /* inferred */
#define MGRAS_BDVERS1_TRAM_FIELD_1_MASK              0x3u
#define MGRAS_BDVERS1_TRAM_FIELD_1_INPLACE           (MGRAS_BDVERS1_TRAM_FIELD_1_MASK << MGRAS_BDVERS1_TRAM_FIELD_1_SHIFT)
#define MGRAS_BDVERS1_TRAM_FIELD_0_SHIFT             24 /* inferred */
#define MGRAS_BDVERS1_TRAM_FIELD_0_MASK              0x3u
#define MGRAS_BDVERS1_TRAM_FIELD_0_INPLACE           (MGRAS_BDVERS1_TRAM_FIELD_0_MASK << MGRAS_BDVERS1_TRAM_FIELD_0_SHIFT)

/*
 * Second board-version word, read 0x62488 above the board register
 * base: the start of device 9's window, register select 1, one-byte width. The
 * kernel's board-information routine loads it as a word and works only on its
 * top byte (the first byte at that address). Bits 30:29 of the word, bits 6:5
 * of that byte, are the product field. The value 1 takes the path with one
 * engine and no second board, which is how a Solid Impact board is told from
 * the others. Established from the routine's machine words, in the kernel
 * object of the base distribution's graphics module; not a bus measurement.
 * Bits 1:0 and 4:2 of the byte are the GE count and the MGRAS revision (fields
 * below). How board revision numbers map to products is inferred.
 */
/* word BDVERS2: 32 bits; driver and firmware readings */
#define MGRAS_BDVERS2_WIDTH                          32 /* established */
#define MGRAS_BDVERS2_PRODUCT_SHIFT                  29 /* established */
#define MGRAS_BDVERS2_PRODUCT_MASK                   0x3u
#define MGRAS_BDVERS2_PRODUCT_INPLACE                (MGRAS_BDVERS2_PRODUCT_MASK << MGRAS_BDVERS2_PRODUCT_SHIFT)
#define MGRAS_BDVERS2_PRODUCT_INDIGO2_GIO            0 /* inferred */
#define MGRAS_BDVERS2_PRODUCT_SOLID_IMPACT           1 /* established */
#define MGRAS_BDVERS2_PRODUCT_SINGLE_GE_TEXTURED     2 /* inferred */
#define MGRAS_BDVERS2_PRODUCT_TWO_GE                 3 /* inferred */
#define MGRAS_BDVERS2_MGRAS_REVISION_SHIFT           26 /* inferred */
#define MGRAS_BDVERS2_MGRAS_REVISION_MASK            0x7u
#define MGRAS_BDVERS2_MGRAS_REVISION_INPLACE         (MGRAS_BDVERS2_MGRAS_REVISION_MASK << MGRAS_BDVERS2_MGRAS_REVISION_SHIFT)
#define MGRAS_BDVERS2_GE_COUNT_SHIFT                 24 /* inferred */
#define MGRAS_BDVERS2_GE_COUNT_MASK                  0x3u
#define MGRAS_BDVERS2_GE_COUNT_INPLACE               (MGRAS_BDVERS2_GE_COUNT_MASK << MGRAS_BDVERS2_GE_COUNT_SHIFT)

/*
 * Byte at address 0x071708: bits 2:0 the CMAP revision (0 is rev A,
 * other values are rev value + 2, so 1 is rev C and 3 is rev E), bits 6:4 the
 * RA revision, bit 7 clear when a video option board is present. Bit 3 is
 * not read. Inferred from the kernel object and owner captures.
 */
/* word CMAP_RA_STATUS: 8 bits; driver and firmware readings */
#define MGRAS_CMAP_RA_STATUS_WIDTH                   8 /* inferred */
#define MGRAS_CMAP_RA_STATUS_VIDEO_OPTION_SHIFT      7 /* inferred */
#define MGRAS_CMAP_RA_STATUS_VIDEO_OPTION_MASK       0x1u
#define MGRAS_CMAP_RA_STATUS_VIDEO_OPTION_INPLACE    (MGRAS_CMAP_RA_STATUS_VIDEO_OPTION_MASK << MGRAS_CMAP_RA_STATUS_VIDEO_OPTION_SHIFT)
#define MGRAS_CMAP_RA_STATUS_VIDEO_OPTION_PRESENT    0 /* inferred */
#define MGRAS_CMAP_RA_STATUS_VIDEO_OPTION_ABSENT     1 /* inferred */
#define MGRAS_CMAP_RA_STATUS_RA_REVISION_SHIFT       4 /* inferred */
#define MGRAS_CMAP_RA_STATUS_RA_REVISION_MASK        0x7u
#define MGRAS_CMAP_RA_STATUS_RA_REVISION_INPLACE     (MGRAS_CMAP_RA_STATUS_RA_REVISION_MASK << MGRAS_CMAP_RA_STATUS_RA_REVISION_SHIFT)
#define MGRAS_CMAP_RA_STATUS_CMAP_REVISION_SHIFT     0 /* inferred */
#define MGRAS_CMAP_RA_STATUS_CMAP_REVISION_MASK      0x7u
#define MGRAS_CMAP_RA_STATUS_CMAP_REVISION_INPLACE   (MGRAS_CMAP_RA_STATUS_CMAP_REVISION_MASK << MGRAS_CMAP_RA_STATUS_CMAP_REVISION_SHIFT)

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
 * Read after the GE program download verifies: a 32-bit read of 0x028000, a
 * 13 microsecond wait, then a 32-bit read of 0x028004. The kernel keeps only the
 * low byte of the second read. A GE revision of 2 is the GE11 rev B; 3 or more
 * is the GE12 line, with 3 as rev A. Inferred from the kernel object and owner
 * captures.
 */
/* word GE_REVISION: 32 bits; driver and firmware readings */
#define MGRAS_GE_REVISION_WIDTH                      32 /* inferred */
#define MGRAS_GE_REVISION_GE_REVISION_SHIFT          0 /* inferred */
#define MGRAS_GE_REVISION_GE_REVISION_MASK           0xffu
#define MGRAS_GE_REVISION_GE_REVISION_INPLACE        (MGRAS_GE_REVISION_GE_REVISION_MASK << MGRAS_GE_REVISION_GE_REVISION_SHIFT)

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
#define MGRAS_HQ4_NUMERIC_PACKET_SELECTOR_MASK       0x1ffull
#define MGRAS_HQ4_NUMERIC_PACKET_SELECTOR_INPLACE    (MGRAS_HQ4_NUMERIC_PACKET_SELECTOR_MASK << MGRAS_HQ4_NUMERIC_PACKET_SELECTOR_SHIFT)
#define MGRAS_HQ4_NUMERIC_PACKET_PAYLOAD_SHIFT       0 /* established */
#define MGRAS_HQ4_NUMERIC_PACKET_PAYLOAD_MASK        0xffffffffull
#define MGRAS_HQ4_NUMERIC_PACKET_PAYLOAD_INPLACE     (MGRAS_HQ4_NUMERIC_PACKET_PAYLOAD_MASK << MGRAS_HQ4_NUMERIC_PACKET_PAYLOAD_SHIFT)

/*
 * Host interface control word. Its geometry engine select field chooses which
 * geometry engine the next program upload reaches. The kernel sets the field
 * before it loads each engine and restores the old word afterwards. The bus
 * meaning of each value is inferred.
 */
/* word HQ_GE_SELECT: 32 bits; driver and firmware readings */
#define MGRAS_HQ_GE_SELECT_WIDTH                     32 /* established */
#define MGRAS_HQ_GE_SELECT_GE_SELECT_SHIFT           4 /* established */
#define MGRAS_HQ_GE_SELECT_GE_SELECT_MASK            0x3u
#define MGRAS_HQ_GE_SELECT_GE_SELECT_INPLACE         (MGRAS_HQ_GE_SELECT_GE_SELECT_MASK << MGRAS_HQ_GE_SELECT_GE_SELECT_SHIFT)
#define MGRAS_HQ_GE_SELECT_GE_SELECT_GE0             2 /* established */
#define MGRAS_HQ_GE_SELECT_GE_SELECT_GE1             3 /* established */

/*
 * Board word at address 0x000000, the first identity read IRIX makes.
 * Bits 31:28 are the HQ revision: 1 is rev A, 2 is rev B. Read by the
 * IRIX kernel's board-information routine; the other bits are not read.
 * Inferred from the kernel object, not a bus measurement.
 */
/* word HQ_REVISION: 32 bits; driver and firmware readings */
#define MGRAS_HQ_REVISION_WIDTH                      32 /* inferred */
#define MGRAS_HQ_REVISION_HQ_REVISION_SHIFT          28 /* inferred */
#define MGRAS_HQ_REVISION_HQ_REVISION_MASK           0xfu
#define MGRAS_HQ_REVISION_HQ_REVISION_INPLACE        (MGRAS_HQ_REVISION_HQ_REVISION_MASK << MGRAS_HQ_REVISION_HQ_REVISION_SHIFT)

/*
 * One bit slot of the one-wire serial-number record at HQ_SERIAL_MASTER_OFFSET,
 * written as one 32-bit store. The low-drive time sits in bits 19:10 and the
 * sample offset in bits 9:2. The reader waits for bit 1 (done) and takes the
 * wire level from bit 0. Read by the stock Octane PROM and by the Octane IDE
 * diagnostic. Neither image is in this checkout, so the field layout was not
 * re-read. The chip family on IMPACT boards is unknown.
 */
/* word HQ_SERIAL_SLOT: 32 bits; driver and firmware readings */
#define MGRAS_HQ_SERIAL_SLOT_WIDTH                   32 /* inferred */
#define MGRAS_HQ_SERIAL_SLOT_DRIVE_TIME_SHIFT        10 /* inferred */
#define MGRAS_HQ_SERIAL_SLOT_DRIVE_TIME_MASK         0x3ffu
#define MGRAS_HQ_SERIAL_SLOT_DRIVE_TIME_INPLACE      (MGRAS_HQ_SERIAL_SLOT_DRIVE_TIME_MASK << MGRAS_HQ_SERIAL_SLOT_DRIVE_TIME_SHIFT)
#define MGRAS_HQ_SERIAL_SLOT_SAMPLE_OFFSET_SHIFT     2 /* inferred */
#define MGRAS_HQ_SERIAL_SLOT_SAMPLE_OFFSET_MASK      0xffu
#define MGRAS_HQ_SERIAL_SLOT_SAMPLE_OFFSET_INPLACE   (MGRAS_HQ_SERIAL_SLOT_SAMPLE_OFFSET_MASK << MGRAS_HQ_SERIAL_SLOT_SAMPLE_OFFSET_SHIFT)
#define MGRAS_HQ_SERIAL_SLOT_DONE_SHIFT              1 /* inferred */
#define MGRAS_HQ_SERIAL_SLOT_DONE_MASK               0x1u
#define MGRAS_HQ_SERIAL_SLOT_DONE_INPLACE            (MGRAS_HQ_SERIAL_SLOT_DONE_MASK << MGRAS_HQ_SERIAL_SLOT_DONE_SHIFT)
#define MGRAS_HQ_SERIAL_SLOT_LEVEL_SHIFT             0 /* inferred */
#define MGRAS_HQ_SERIAL_SLOT_LEVEL_MASK              0x1u
#define MGRAS_HQ_SERIAL_SLOT_LEVEL_INPLACE           (MGRAS_HQ_SERIAL_SLOT_LEVEL_MASK << MGRAS_HQ_SERIAL_SLOT_LEVEL_SHIFT)

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
 * table is in questions/README.md.
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
 * offsets from its bank base; the full map is in questions/README.md.
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

/*
 * Byte at address 0x071308. Bits 7:4 are the monitor ID, which depends
 * on the attached monitor, not on the board. The kernel does not read bits 3:0.
 * The IDE diagnostic's CMAP check reads bits 2:0 as the first CMAP's revision
 * (see CMAP_RA_STATUS). The value
 * 0 means no monitor identified; 0xf is the value every captured Origin and
 * Octane board reported, which the IRIX graphics tools print as an unknown
 * monitor assumed to be 19 inches. Whether 0xf is what a board reports with no
 * monitor attached is unknown. Inferred from the kernel object and owner captures.
 */
/* word MONITOR_ID: 8 bits; driver and firmware readings */
#define MGRAS_MONITOR_ID_WIDTH                       8 /* inferred */
#define MGRAS_MONITOR_ID_MONITOR_SHIFT               4 /* inferred */
#define MGRAS_MONITOR_ID_MONITOR_MASK                0xfu
#define MGRAS_MONITOR_ID_MONITOR_INPLACE             (MGRAS_MONITOR_ID_MONITOR_MASK << MGRAS_MONITOR_ID_MONITOR_SHIFT)
#define MGRAS_MONITOR_ID_MONITOR_UNIDENTIFIED        0 /* inferred */
#define MGRAS_MONITOR_ID_MONITOR_ASSUMED_19_INCH     15 /* inferred */

/*
 * Pixel processor word reached through the XMAP data port with XMAP index 0
 * selected. Bits 21:20 hold the raster engine count less one. The kernel writes
 * this field to every pixel processor when it initialises the board, so each
 * pixel processor learns how many raster engines share the screen. The field
 * being written is established; the pixel processor's use of it is inferred.
 */
/* word PP1_CONFIG: 32 bits; driver and firmware readings */
#define MGRAS_PP1_CONFIG_WIDTH                       32 /* inferred */
#define MGRAS_PP1_CONFIG_RE_COUNT_LESS_ONE_SHIFT     20 /* inferred */
#define MGRAS_PP1_CONFIG_RE_COUNT_LESS_ONE_MASK      0x3u
#define MGRAS_PP1_CONFIG_RE_COUNT_LESS_ONE_INPLACE   (MGRAS_PP1_CONFIG_RE_COUNT_LESS_ONE_MASK << MGRAS_PP1_CONFIG_RE_COUNT_LESS_ONE_SHIFT)

/*
 * Index write of 4 to the byte at address 0x071c88, then a 32-bit read of
 * 0x071d00. Bits 2:0 are the PP1 revision (XMAP index 4). Owner captures
 * of E-series boards read 4 here, while a reading of the IRIX Octane diagnostic's
 * XMAP test accepts only 0 or 1; that conflict is open. Inferred from the kernel
 * object and owner captures.
 */
/* word PP1_REVISION: 32 bits; driver and firmware readings */
#define MGRAS_PP1_REVISION_WIDTH                     32 /* inferred */
#define MGRAS_PP1_REVISION_PP1_REVISION_SHIFT        0 /* inferred */
#define MGRAS_PP1_REVISION_PP1_REVISION_MASK         0x7u
#define MGRAS_PP1_REVISION_PP1_REVISION_INPLACE      (MGRAS_PP1_REVISION_PP1_REVISION_MASK << MGRAS_PP1_REVISION_PP1_REVISION_SHIFT)

/*
 * One 64-bit write to address 0x120400, then a 32-bit read of 0x02c578.
 * Bits 7:4 are the RE4 revision. The value written is not recorded in the
 * source this was taken from. Inferred from the kernel object.
 */
/* word RE4_REVISION: 32 bits; driver and firmware readings */
#define MGRAS_RE4_REVISION_WIDTH                     32 /* inferred */
#define MGRAS_RE4_REVISION_RE4_REVISION_SHIFT        4 /* inferred */
#define MGRAS_RE4_REVISION_RE4_REVISION_MASK         0xfu
#define MGRAS_RE4_REVISION_RE4_REVISION_INPLACE      (MGRAS_RE4_REVISION_RE4_REVISION_MASK << MGRAS_RE4_REVISION_RE4_REVISION_SHIFT)

/*
 * Raster engine status word, read after the raster engine select register has
 * chosen one engine. The IDE diagnostic expects the selected engine's number in
 * bits 3:2 and the engine count less one in bits 1:0, so the word differs from
 * one engine to the next. Inferred from the diagnostic's checks, not from a bus
 * measurement. The revision field is RE4_REVISION.
 */
/* word RE4_STATUS: 32 bits; driver and firmware readings */
#define MGRAS_RE4_STATUS_WIDTH                       32 /* inferred */
#define MGRAS_RE4_STATUS_SELECTED_RE_SHIFT           2 /* inferred */
#define MGRAS_RE4_STATUS_SELECTED_RE_MASK            0x3u
#define MGRAS_RE4_STATUS_SELECTED_RE_INPLACE         (MGRAS_RE4_STATUS_SELECTED_RE_MASK << MGRAS_RE4_STATUS_SELECTED_RE_SHIFT)
#define MGRAS_RE4_STATUS_RE_COUNT_LESS_ONE_SHIFT     0 /* inferred */
#define MGRAS_RE4_STATUS_RE_COUNT_LESS_ONE_MASK      0x3u
#define MGRAS_RE4_STATUS_RE_COUNT_LESS_ONE_INPLACE   (MGRAS_RE4_STATUS_RE_COUNT_LESS_ONE_MASK << MGRAS_RE4_STATUS_RE_COUNT_LESS_ONE_SHIFT)

/*
 * Byte write of 0x1f to address 0x072008, then a 16-bit read of
 * 0x0720b0 (read only when the RE count is nonzero). Bits 7:6 are the VC3
 * revision. Inferred from the kernel object.
 */
/* word VC3_REVISION: 16 bits; driver and firmware readings */
#define MGRAS_VC3_REVISION_WIDTH                     16 /* inferred */
#define MGRAS_VC3_REVISION_VC3_REVISION_SHIFT        6 /* inferred */
#define MGRAS_VC3_REVISION_VC3_REVISION_MASK         0x3u
#define MGRAS_VC3_REVISION_VC3_REVISION_INPLACE      (MGRAS_VC3_REVISION_VC3_REVISION_MASK << MGRAS_VC3_REVISION_VC3_REVISION_SHIFT)

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
#define MGRAS_BOARD_CONFIG_OFFSET                    0x72408u /* established */
#define MGRAS_CMAP_ENTRIES                           0x2000u /* established */
#define MGRAS_GE0_UPLOAD_PORT_A                      0x58040u /* established */
#define MGRAS_GE0_UPLOAD_PORT_B                      0x58044u /* established */
#define MGRAS_GE1_UPLOAD_PORT_A                      0x58048u /* established */
#define MGRAS_GE1_UPLOAD_PORT_B                      0x5804cu /* established */
#define MGRAS_GE_READBACK_PORT_A                     0x5822cu /* established */
#define MGRAS_GE_READBACK_PORT_B                     0x58230u /* established */
#define MGRAS_GL_CLIENT_FIFO_PROCESS_ADDR            0x124400u /* inferred */
#define MGRAS_HQ4_NORMAL_FIFO_OFFSET                 0x20400u /* established */
#define MGRAS_HQ_BUS_STATUS_OFFSET                   0x20100u /* established */
#define MGRAS_HQ_CTXSW_RETURN_CMD                    0xf400u /* established */
#define MGRAS_HQ_CTXSW_START_OFFSET                  0x130500u /* established */
#define MGRAS_HQ_CTXSW_START_VALUE                   0x4fcu /* established */
#define MGRAS_HQ_CTXSW_TAIL_OFFSET                   0x40088u /* established */
#define MGRAS_HQ_CTXSW_WAIT_MASK                     0x1effu /* established */
#define MGRAS_HQ_CTXSW_WAIT_OFFSET                   0x8000u /* established */
#define MGRAS_HQ_CTX_ENAB_CLEAR_OFFSET               0x11038u /* established */
#define MGRAS_HQ_CTX_ENAB_OFFSET                     0x11030u /* established */
#define MGRAS_HQ_CTX_WORD_OFFSET                     0x11008u /* established */
#define MGRAS_HQ_FIFO_CTL0_OFFSET                    0x40000u /* inferred */
#define MGRAS_HQ_FIFO_CTL2_OFFSET                    0x40010u /* inferred */
#define MGRAS_HQ_FIFO_CTL3_OFFSET                    0x40020u /* inferred */
#define MGRAS_HQ_FIFO_CTL4_OFFSET                    0x40028u /* inferred */
#define MGRAS_HQ_FIFO_CTL5_OFFSET                    0x40030u /* inferred */
#define MGRAS_HQ_FIFO_LOWATER_OFFSET                 0x40008u /* established */
#define MGRAS_HQ_FIFO_STATUS_OFFSET                  0x20008u /* inferred */
#define MGRAS_HQ_FLOW_TIMEOUT_OFFSET                 0x40078u /* inferred */
#define MGRAS_HQ_GE_SELECT_ADDR                      0x11000u /* established */
#define MGRAS_HQ_GL_DMA_STATUS_OFFSET                0x20200u /* inferred */
#define MGRAS_HQ_GL_DMA_STATUS_WAIT_MASK             0x1effu /* inferred */
#define MGRAS_HQ_GL_FLAGS_OFFSET                     0x20010u /* inferred */
#define MGRAS_HQ_GL_FLAG_CLEAR_OFFSET                0x20018u /* inferred */
#define MGRAS_HQ_GL_FLAG_FLUSH                       0x100000u /* inferred */
#define MGRAS_HQ_GL_FLAG_QUERY_READY                 0x20000u /* inferred */
#define MGRAS_HQ_GL_FLAG_SYNC_COMPLETE               0x10000u /* inferred */
#define MGRAS_HQ_GL_QUERY_ANSWER_OFFSET              0x28004u /* inferred */
#define MGRAS_HQ_GL_STATUS_DMA_BUSY                  0x1000u /* inferred */
#define MGRAS_HQ_GL_STATUS_OFFSET                    0x20000u /* inferred */
#define MGRAS_HQ_GL_STATUS_PIPE_IDLE                 0x2u /* inferred */
#define MGRAS_HQ_ID_MANUFACTURER_EXPECTED            0x2aau /* inferred */
#define MGRAS_HQ_ID_PART_EXPECTED                    0xc003u /* inferred */
#define MGRAS_HQ_INTR_ENAB_CLEAR_OFFSET              0x11048u /* inferred */
#define MGRAS_HQ_INTR_ENAB_DEFAULT                   0x3008a200u /* established */
#define MGRAS_HQ_INTR_ENAB_SET_OFFSET                0x11040u /* established */
#define MGRAS_HQ_INTR_LEVEL2_CLEAR_OFFSET            0x11058u /* inferred */
#define MGRAS_HQ_INTR_LEVEL2_ENAB_OFFSET             0x11050u /* established */
#define MGRAS_HQ_INTR_LEVEL2_LOWATER                 0x10u /* established */
#define MGRAS_HQ_INTR_PENDING_CLEAR_OFFSET           0x11028u /* inferred */
#define MGRAS_HQ_INTR_SRC_CTX_ACK1                   0x80000u /* established */
#define MGRAS_HQ_INTR_SRC_CTX_ACK2                   0x10000000u /* established */
#define MGRAS_HQ_INTR_SRC_DMA_OVERFLOW               0x8000u /* established */
#define MGRAS_HQ_INTR_SRC_DMA_RANGE                  0x2000u /* established */
#define MGRAS_HQ_INTR_SRC_FIFO_OVERFLOW              0x20000000u /* established */
#define MGRAS_HQ_INTR_SRC_PRIV                       0x4000u /* established */
#define MGRAS_HQ_INTR_SRC_PROGRAM_ERROR              0x200u /* established */
#define MGRAS_HQ_INTR_SRC_RELEASE                    0x10000u /* established */
#define MGRAS_HQ_INTR_SRC_SWAP                       0x400u /* established */
#define MGRAS_HQ_INTR_STATUS_OFFSET                  0x11020u /* established */
#define MGRAS_HQ_INTR_VECTOR_OFFSET                  0x11070u /* established */
#define MGRAS_HQ_SERIAL_MASTER_OFFSET                0x11098u /* inferred */
#define MGRAS_HQ_SWAP_ACK_VALUE                      0x401u /* established */
#define MGRAS_HQ_SWAP_CMD                            0x3700u /* established */
#define MGRAS_HQ_VC3_RETRACE_OFFSET                  0x72038u /* established */
#define MGRAS_HQ_VIDEO_DMA_CONTROL_OFFSET            0x81010u /* inferred */
#define MGRAS_HQ_VIDEO_DMA_DESCRIPTOR_OFFSET         0x81000u /* inferred */
#define MGRAS_HQ_VIDEO_DMA_MODE_OFFSET               0x81018u /* inferred */
#define MGRAS_HQ_VIDEO_DMA_SOURCE_OFFSET             0x60018u /* inferred */
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
#define MGRAS_MGRAS_SET_GENLOCK_REQUEST              0x6d670014u /* established */
#define MGRAS_MGRAS_VIDEO_TEXTURE_XFER_REQUEST       0x6d670016u /* established */
#define MGRAS_PP1_SELECT_ADDR                        0x71c08u /* established */
#define MGRAS_RDRAM_ADDR_PORT_ADDR                   0x2c570u /* inferred */
#define MGRAS_RDRAM_BUFFER_PORT_ADDR                 0x2c5b4u /* inferred */
#define MGRAS_RDRAM_DATA_PORT_ADDR                   0x2c574u /* established */
#define MGRAS_RSS_RE_SELECT_PIO_ADDR                 0x2c448u /* inferred */
#define MGRAS_RSS_RE_SELECT_REG                      0x112u /* established */
#define MGRAS_VC3_DISPLAY_GENLOCK                    0x40u /* inferred */
#define MGRAS_VC3_DISPLAY_GENSYNC                    0x20u /* inferred */
#define MGRAS_VC3_DISPLAY_RETRACE_ENABLE             0x1u /* inferred */
#define MGRAS_VC3_DISPLAY_TIMING_BITS                0x1eu /* inferred */
#define MGRAS_VC3_REG_CONFIG                         0x1fu /* established */
#define MGRAS_VC3_REG_CURS_CONTROL                   0x1du /* established */
#define MGRAS_VC3_REG_CURS_EP                        0x1u /* established */
#define MGRAS_VC3_REG_CURS_TBL_PTR                   0xcu /* established */
#define MGRAS_VC3_REG_CURS_X_LOC                     0x2u /* established */
#define MGRAS_VC3_REG_CURS_Y_LOC                     0x3u /* established */
#define MGRAS_VC3_REG_CUR_CURSOR_X                   0xeu /* established */
#define MGRAS_VC3_REG_DID_EP1                        0x4u /* established */
#define MGRAS_VC3_REG_DID_EP2                        0x5u /* established */
#define MGRAS_VC3_REG_DID_FRAMETAB1                  0x10u /* established */
#define MGRAS_VC3_REG_DID_FRAMETAB2                  0x12u /* established */
#define MGRAS_VC3_REG_DID_LINETAB1                   0x11u /* established */
#define MGRAS_VC3_REG_DID_LINETAB2                   0x13u /* established */
#define MGRAS_VC3_REG_DISPLAY_CONTROL                0x1eu /* established */
#define MGRAS_VC3_REG_RAM_ADDR                       0x7u /* established */
#define MGRAS_VC3_REG_SCAN_LENGTH                    0x6u /* established */
#define MGRAS_VC3_REG_VERT_LINE_COUNT                0xbu /* established */
#define MGRAS_VC3_REG_VID_EP                         0x0u /* established */
#define MGRAS_VC3_REG_VT_FRAME_TBL_PTR               0x8u /* established */
#define MGRAS_VC3_REG_VT_LINES_RUN                   0xau /* established */
#define MGRAS_VC3_REG_VT_LINE_SEQ_PTR                0x9u /* established */
#define MGRAS_VC3_REG_WORKING_CURS_Y                 0xdu /* established */
#define MGRAS_WINDOW_MODE_MAIN_ADDR                  0x71e00u /* established */
#define MGRAS_WINDOW_MODE_OVERLAY_ADDR               0x71e80u /* established */
#define MGRAS_WINDOW_SELECT_ADDR                     0x71d80u /* established */
#define MGRAS_XMAP_INDEX_ADDR                        0x71c88u /* established */

#endif /* MGRAS_GEN_H */
