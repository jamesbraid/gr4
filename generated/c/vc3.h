/* generated from devices/vc3/registers.toml by defs-gen - do not edit, change
 * the source */
/* SPDX-License-Identifier: BSD-3-Clause */
/* defs-gen 4 */
/* input sha256 9374ab79c9a0a7b287f1a095365143c0192d4b6111d7b3907264f2a6cfe684e3 */
/* VC3 video controller registers of the Impact graphics subsystem */
#ifndef VC3_GEN_H
#define VC3_GEN_H

#include <stdint.h>


/*
 * Port: selects the numbered register that the data port reads or writes (a
 * one-byte access at the start of the window).
 */
/* index: rw8, reset unknown */
#define VC3_INDEX_OFFSET                             0x8u /* established */

/*
 * Port: a three-byte write sets a numbered register in one store, the register
 * number in bits 31:24 and the 16-bit value in bits 23:8. The kernel and the
 * diagnostic use it for every register write.
 */
/* index_data: rw32, reset unknown */
#define VC3_INDEX_DATA_OFFSET                        0x38u /* established */
#define VC3_INDEX_DATA_REGISTER_SHIFT                24 /* established */
#define VC3_INDEX_DATA_REGISTER_MASK                 0xffu
#define VC3_INDEX_DATA_REGISTER_INPLACE (VC3_INDEX_DATA_REGISTER_MASK << VC3_INDEX_DATA_REGISTER_SHIFT)
#define VC3_INDEX_DATA_VALUE_SHIFT                   8 /* established */
#define VC3_INDEX_DATA_VALUE_MASK                    0xffffu
#define VC3_INDEX_DATA_VALUE_INPLACE (VC3_INDEX_DATA_VALUE_MASK << VC3_INDEX_DATA_VALUE_SHIFT)

/*
 * Port: reads or writes the numbered register that the index port last
 * selected, 16 bits at a time. The diagnostic reads a register back by writing
 * its number to the index port and reading this port.
 */
/* data: rw16, reset unknown */
#define VC3_DATA_OFFSET                              0xb0u /* established */

/*
 * Port: SRAM access four bytes wide per bus transfer, written as a 64-bit
 * store. The software defines it next to the 16-bit port and uses the same SRAM
 * address register.
 */
/* ram64: rw64, reset unknown */
#define VC3_RAM64_OFFSET                             0x180u /* established */

/*
 * Port: reads or writes the SRAM word addressed by ram_addr, 16 bits at a time
 * (the kernel and the diagnostic load the timing tables, the cursor glyph and
 * the display-ID tables through it).
 */
/* ram: rw16, reset unknown */
#define VC3_RAM_OFFSET                               0x190u /* established */

/*
 * Video timing entry point, the main display frame table pointer. The
 * diagnostic's register test writes walking patterns and expects them back
 * unchanged.
 */
/* vid_ep: rw16, space vc3_index, reset unknown */
#define VC3_VID_EP_OFFSET                            0x0u /* established */

/*
 * Cursor entry point. Walking-pattern read-back is expected.
 */
/* curs_ep: rw16, space vc3_index, reset unknown */
#define VC3_CURS_EP_OFFSET                           0x1u /* established */

/*
 * Hardware cursor x position. Walking-pattern read-back is expected.
 */
/* curs_x: rw16, space vc3_index, reset unknown */
#define VC3_CURS_X_OFFSET                            0x2u /* established */

/*
 * Hardware cursor y position. Walking-pattern read-back is expected.
 */
/* curs_y: rw16, space vc3_index, reset unknown */
#define VC3_CURS_Y_OFFSET                            0x3u /* established */

/*
 * First display-ID entry point, with its own frame and line tables.
 */
/* did_ep1: rw16, space vc3_index, reset unknown */
#define VC3_DID_EP1_OFFSET                           0x4u /* established */

/*
 * Second display-ID entry point.
 */
/* did_ep2: rw16, space vc3_index, reset unknown */
#define VC3_DID_EP2_OFFSET                           0x5u /* established */

/*
 * Scan line length. Walking-pattern read-back is expected; the unit (dot
 * clocks) is the name's reading and is inferred.
 */
/* scan_length: rw16, space vc3_index, reset unknown */
#define VC3_SCAN_LENGTH_OFFSET                       0x6u /* established */

/*
 * SRAM address register for the ram port. Reads back the address it was loaded
 * with.
 */
/* ram_addr: rw16, space vc3_index, reset unknown */
#define VC3_RAM_ADDR_OFFSET                          0x7u /* established */

/*
 * Video timing frame table pointer. Walking-pattern read-back is expected.
 */
/* vt_frame_tbl_ptr: rw16, space vc3_index, reset unknown */
#define VC3_VT_FRAME_TBL_PTR_OFFSET                  0x8u /* established */

/*
 * Video timing line sequence pointer. Walking-pattern read-back is expected.
 */
/* vt_line_seq_ptr: rw16, space vc3_index, reset unknown */
#define VC3_VT_LINE_SEQ_PTR_OFFSET                   0x9u /* established */

/*
 * Video timing run count of lines. Walking-pattern read-back is expected.
 */
/* vt_lines_run: rw16, space vc3_index, reset unknown */
#define VC3_VT_LINES_RUN_OFFSET                      0xau /* established */

/*
 * Current vertical line. The kernel reads it (the only numbered register it
 * reads); the diagnostic's register test also writes walking patterns here and
 * expects them back, which is odd for a running counter and is recorded as the
 * software's expectation.
 */
/* vert_line_count: rw16, space vc3_index, reset unknown */
#define VC3_VERT_LINE_COUNT_OFFSET                   0xbu /* established */

/*
 * Cursor table pointer. Walking-pattern read-back is expected.
 */
/* curs_tbl_ptr: rw16, space vc3_index, reset unknown */
#define VC3_CURS_TBL_PTR_OFFSET                      0xcu /* established */

/*
 * Working cursor y line. Walking-pattern read-back is expected.
 */
/* working_curs_y: rw16, space vc3_index, reset unknown */
#define VC3_WORKING_CURS_Y_OFFSET                    0xdu /* established */

/*
 * Current cursor x. Walking-pattern read-back is expected.
 */
/* cur_cursor_x: rw16, space vc3_index, reset unknown */
#define VC3_CUR_CURSOR_X_OFFSET                      0xeu /* established */

/*
 * Register number the diagnostic's register test writes and reads back under
 * the name unused. Its role is unknown.
 */
/* unused: rw16, space vc3_index, reset unknown */
#define VC3_UNUSED_OFFSET                            0xfu /* inferred */

/*
 * Frame table pointer of the first display-ID entry point. Walking-pattern
 * read-back is expected.
 */
/* did_frametab1: rw16, space vc3_index, reset unknown */
#define VC3_DID_FRAMETAB1_OFFSET                     0x10u /* established */

/*
 * Line table pointer of the first display-ID entry point. Walking-pattern
 * read-back is expected.
 */
/* did_linetab1: rw16, space vc3_index, reset unknown */
#define VC3_DID_LINETAB1_OFFSET                      0x11u /* established */

/*
 * Frame table pointer of the second display-ID entry point. Walking-pattern
 * read-back is expected.
 */
/* did_frametab2: rw16, space vc3_index, reset unknown */
#define VC3_DID_FRAMETAB2_OFFSET                     0x12u /* established */

/*
 * Line table pointer of the second display-ID entry point. Walking-pattern
 * read-back is expected.
 */
/* did_linetab2: rw16, space vc3_index, reset unknown */
#define VC3_DID_LINETAB2_OFFSET                      0x13u /* established */

/*
 * Cursor control. The standalone initialisation sets the function and display
 * bits to turn the cursor on; the hosted build of the same routine writes the
 * complement of that pair, with a comment that the X server turns the cursor on
 * later. The diagnostic's start and stop timing write zero. The register test
 * skips it.
 */
/* curs_control: rw16, space vc3_index, reset unknown */
#define VC3_CURS_CONTROL_OFFSET                      0x1du /* established */
#define VC3_CURS_CONTROL_GLYPH_64_SHIFT              3 /* inferred */
#define VC3_CURS_CONTROL_GLYPH_64_MASK               0x1u
#define VC3_CURS_CONTROL_GLYPH_64_INPLACE (VC3_CURS_CONTROL_GLYPH_64_MASK << VC3_CURS_CONTROL_GLYPH_64_SHIFT)
#define VC3_CURS_CONTROL_CROSSHAIR_SHIFT             2 /* inferred */
#define VC3_CURS_CONTROL_CROSSHAIR_MASK              0x1u
#define VC3_CURS_CONTROL_CROSSHAIR_INPLACE (VC3_CURS_CONTROL_CROSSHAIR_MASK << VC3_CURS_CONTROL_CROSSHAIR_SHIFT)
#define VC3_CURS_CONTROL_DISPLAY_ENABLE_SHIFT        1 /* established */
#define VC3_CURS_CONTROL_DISPLAY_ENABLE_MASK         0x1u
#define VC3_CURS_CONTROL_DISPLAY_ENABLE_INPLACE (VC3_CURS_CONTROL_DISPLAY_ENABLE_MASK << VC3_CURS_CONTROL_DISPLAY_ENABLE_SHIFT)
#define VC3_CURS_CONTROL_FUNCTION_ENABLE_SHIFT       0 /* established */
#define VC3_CURS_CONTROL_FUNCTION_ENABLE_MASK        0x1u
#define VC3_CURS_CONTROL_FUNCTION_ENABLE_INPLACE (VC3_CURS_CONTROL_FUNCTION_ENABLE_MASK << VC3_CURS_CONTROL_FUNCTION_ENABLE_SHIFT)

/*
 * Display control. The kernel keeps a shadow of the value, never reads the
 * register back and writes it through the index_data port for retrace enable,
 * blackout, timing and genlock; the diagnostic reads it back. The register test
 * skips it. Every field is named in a header and read from the writers' use;
 * what bits 1 to 4 and 7 do inside the chip is not settled.
 */
/* display_control: rw16, space vc3_index, reset unknown */
#define VC3_DISPLAY_CONTROL_OFFSET                   0x1eu /* established */
#define VC3_DISPLAY_CONTROL_ODD_FIELD_TIMING_SHIFT   10 /* inferred */
#define VC3_DISPLAY_CONTROL_ODD_FIELD_TIMING_MASK    0x1u
#define VC3_DISPLAY_CONTROL_ODD_FIELD_TIMING_INPLACE (VC3_DISPLAY_CONTROL_ODD_FIELD_TIMING_MASK << VC3_DISPLAY_CONTROL_ODD_FIELD_TIMING_SHIFT)
#define VC3_DISPLAY_CONTROL_ODD_FIELD_SHIFT          9 /* inferred */
#define VC3_DISPLAY_CONTROL_ODD_FIELD_MASK           0x1u
#define VC3_DISPLAY_CONTROL_ODD_FIELD_INPLACE (VC3_DISPLAY_CONTROL_ODD_FIELD_MASK << VC3_DISPLAY_CONTROL_ODD_FIELD_SHIFT)
#define VC3_DISPLAY_CONTROL_FIELD_ONLY_SHIFT         8 /* inferred */
#define VC3_DISPLAY_CONTROL_FIELD_ONLY_MASK          0x1u
#define VC3_DISPLAY_CONTROL_FIELD_ONLY_INPLACE (VC3_DISPLAY_CONTROL_FIELD_ONLY_MASK << VC3_DISPLAY_CONTROL_FIELD_ONLY_SHIFT)
#define VC3_DISPLAY_CONTROL_INTERLACED_SHIFT         7 /* inferred */
#define VC3_DISPLAY_CONTROL_INTERLACED_MASK          0x1u
#define VC3_DISPLAY_CONTROL_INTERLACED_INPLACE (VC3_DISPLAY_CONTROL_INTERLACED_MASK << VC3_DISPLAY_CONTROL_INTERLACED_SHIFT)
#define VC3_DISPLAY_CONTROL_GENLOCK_SHIFT            6 /* inferred */
#define VC3_DISPLAY_CONTROL_GENLOCK_MASK             0x1u
#define VC3_DISPLAY_CONTROL_GENLOCK_INPLACE (VC3_DISPLAY_CONTROL_GENLOCK_MASK << VC3_DISPLAY_CONTROL_GENLOCK_SHIFT)
#define VC3_DISPLAY_CONTROL_GENSYNC_SHIFT            5 /* inferred */
#define VC3_DISPLAY_CONTROL_GENSYNC_MASK             0x1u
#define VC3_DISPLAY_CONTROL_GENSYNC_INPLACE (VC3_DISPLAY_CONTROL_GENSYNC_MASK << VC3_DISPLAY_CONTROL_GENSYNC_SHIFT)
#define VC3_DISPLAY_CONTROL_DID_ENABLE2_SHIFT        4 /* inferred */
#define VC3_DISPLAY_CONTROL_DID_ENABLE2_MASK         0x1u
#define VC3_DISPLAY_CONTROL_DID_ENABLE2_INPLACE (VC3_DISPLAY_CONTROL_DID_ENABLE2_MASK << VC3_DISPLAY_CONTROL_DID_ENABLE2_SHIFT)
#define VC3_DISPLAY_CONTROL_DID_ENABLE1_SHIFT        3 /* inferred */
#define VC3_DISPLAY_CONTROL_DID_ENABLE1_MASK         0x1u
#define VC3_DISPLAY_CONTROL_DID_ENABLE1_INPLACE (VC3_DISPLAY_CONTROL_DID_ENABLE1_MASK << VC3_DISPLAY_CONTROL_DID_ENABLE1_SHIFT)
#define VC3_DISPLAY_CONTROL_VIDEO_ENABLE_SHIFT       2 /* inferred */
#define VC3_DISPLAY_CONTROL_VIDEO_ENABLE_MASK        0x1u
#define VC3_DISPLAY_CONTROL_VIDEO_ENABLE_INPLACE (VC3_DISPLAY_CONTROL_VIDEO_ENABLE_MASK << VC3_DISPLAY_CONTROL_VIDEO_ENABLE_SHIFT)
#define VC3_DISPLAY_CONTROL_BLACKOUT_SHIFT           1 /* inferred */
#define VC3_DISPLAY_CONTROL_BLACKOUT_MASK            0x1u
#define VC3_DISPLAY_CONTROL_BLACKOUT_INPLACE (VC3_DISPLAY_CONTROL_BLACKOUT_MASK << VC3_DISPLAY_CONTROL_BLACKOUT_SHIFT)
#define VC3_DISPLAY_CONTROL_RETRACE_INTERRUPT_SHIFT  0 /* inferred */
#define VC3_DISPLAY_CONTROL_RETRACE_INTERRUPT_MASK   0x1u
#define VC3_DISPLAY_CONTROL_RETRACE_INTERRUPT_INPLACE (VC3_DISPLAY_CONTROL_RETRACE_INTERRUPT_MASK << VC3_DISPLAY_CONTROL_RETRACE_INTERRUPT_SHIFT)

/*
 * Master configuration. The diagnostic's PLL set-up writes 1 and prints that
 * the register is set to 1; the kernel selects this register to read the chip
 * revision at attach. Bits other than the revision are named in a header only.
 */
/* config: rw16, space vc3_index, reset unknown */
#define VC3_CONFIG_OFFSET                            0x1fu /* established */
#define VC3_CONFIG_REVISION_SHIFT                    6 /* inferred */
#define VC3_CONFIG_REVISION_MASK                     0x3u
#define VC3_CONFIG_REVISION_INPLACE (VC3_CONFIG_REVISION_MASK << VC3_CONFIG_REVISION_SHIFT)
#define VC3_CONFIG_TIMING_ERROR_SHIFT                5 /* inferred */
#define VC3_CONFIG_TIMING_ERROR_MASK                 0x1u
#define VC3_CONFIG_TIMING_ERROR_INPLACE (VC3_CONFIG_TIMING_ERROR_MASK << VC3_CONFIG_TIMING_ERROR_SHIFT)
#define VC3_CONFIG_DID_ERROR2_SHIFT                  4 /* inferred */
#define VC3_CONFIG_DID_ERROR2_MASK                   0x1u
#define VC3_CONFIG_DID_ERROR2_INPLACE (VC3_CONFIG_DID_ERROR2_MASK << VC3_CONFIG_DID_ERROR2_SHIFT)
#define VC3_CONFIG_DID_ERROR1_SHIFT                  3 /* inferred */
#define VC3_CONFIG_DID_ERROR1_MASK                   0x1u
#define VC3_CONFIG_DID_ERROR1_INPLACE (VC3_CONFIG_DID_ERROR1_MASK << VC3_CONFIG_DID_ERROR1_SHIFT)
#define VC3_CONFIG_CURSOR_ERROR_SHIFT                2 /* inferred */
#define VC3_CONFIG_CURSOR_ERROR_MASK                 0x1u
#define VC3_CONFIG_CURSOR_ERROR_INPLACE (VC3_CONFIG_CURSOR_ERROR_MASK << VC3_CONFIG_CURSOR_ERROR_SHIFT)
#define VC3_CONFIG_SLOW_CLOCK_SHIFT                  1 /* inferred */
#define VC3_CONFIG_SLOW_CLOCK_MASK                   0x1u
#define VC3_CONFIG_SLOW_CLOCK_INPLACE (VC3_CONFIG_SLOW_CLOCK_MASK << VC3_CONFIG_SLOW_CLOCK_SHIFT)
#define VC3_CONFIG_UNRESET_SHIFT                     0 /* inferred */
#define VC3_CONFIG_UNRESET_MASK                      0x1u
#define VC3_CONFIG_UNRESET_INPLACE (VC3_CONFIG_UNRESET_MASK << VC3_CONFIG_UNRESET_SHIFT)

#define VC3_CURS_HOTSPOT_OFFSET                      0x1fu /* inferred */
#define VC3_DCB_DEVICE                               0x8u /* established */
#define VC3_SRAM_CURS_GLYPH                          0x400u /* established */
#define VC3_SRAM_DID_FRAMETAB1                       0x500u /* established */
#define VC3_SRAM_DID_FRAME_MAX_WORDS                 0x43eu /* established */
#define VC3_SRAM_END                                 0x2000u /* inferred */
#define VC3_SRAM_FRAMETAB                            0x380u /* established */
#define VC3_SRAM_FRAMETAB_WORDS                      0x80u /* established */
#define VC3_SRAM_LINETAB                             0x0u /* established */
#define VC3_SRAM_LINETAB_WORDS                       0x300u /* established */

#endif /* VC3_GEN_H */
