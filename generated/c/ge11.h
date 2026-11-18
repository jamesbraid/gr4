/* generated from devices/ge11/registers.toml by defs-gen - do not edit, change the source */
/* SPDX-License-Identifier: BSD-3-Clause */
/* defs-gen 2 */
/* input sha256 817914a4ae5a04440d0c6b7b9face4bb4b60c4761b20164000e4f1fc915ec240 */
/* geometry engine control registers for the Impact graphics subsystem */
#ifndef GE_GEN_H
#define GE_GEN_H

#include <stdint.h>


/* exec_control: rw32, space ge11_regs, reset unknown; driver and diagnostic readings */
#define GE_EXEC_CONTROL_OFFSET                       0xd000u /* inferred */
#define GE_EXEC_CONTROL_RESET_SHIFT                  7 /* inferred */
#define GE_EXEC_CONTROL_RESET_MASK                   0x1u
#define GE_EXEC_CONTROL_RESET_INPLACE                (GE_EXEC_CONTROL_RESET_MASK << GE_EXEC_CONTROL_RESET_SHIFT)
#define GE_EXEC_CONTROL_SINGLE_STEP_SHIFT            6 /* inferred */
#define GE_EXEC_CONTROL_SINGLE_STEP_MASK             0x1u
#define GE_EXEC_CONTROL_SINGLE_STEP_INPLACE          (GE_EXEC_CONTROL_SINGLE_STEP_MASK << GE_EXEC_CONTROL_SINGLE_STEP_SHIFT)
#define GE_EXEC_CONTROL_BREAKPOINT_ENABLE_SHIFT      5 /* inferred */
#define GE_EXEC_CONTROL_BREAKPOINT_ENABLE_MASK       0x1u
#define GE_EXEC_CONTROL_BREAKPOINT_ENABLE_INPLACE    (GE_EXEC_CONTROL_BREAKPOINT_ENABLE_MASK << GE_EXEC_CONTROL_BREAKPOINT_ENABLE_SHIFT)
#define GE_EXEC_CONTROL_LATENCY3_SHIFT               4 /* inferred */
#define GE_EXEC_CONTROL_LATENCY3_MASK                0x1u
#define GE_EXEC_CONTROL_LATENCY3_INPLACE             (GE_EXEC_CONTROL_LATENCY3_MASK << GE_EXEC_CONTROL_LATENCY3_SHIFT)
#define GE_EXEC_CONTROL_GO_SHIFT                     0 /* inferred */
#define GE_EXEC_CONTROL_GO_MASK                      0x1u
#define GE_EXEC_CONTROL_GO_INPLACE                   (GE_EXEC_CONTROL_GO_MASK << GE_EXEC_CONTROL_GO_SHIFT)

/* breakpoint_pc: rw32, space ge11_regs, reset unknown; driver and diagnostic readings */
#define GE_BREAKPOINT_PC_OFFSET                      0xd001u /* inferred */

/* ramscan_control: rw32, space ge11_regs, reset unknown; driver and diagnostic readings */
#define GE_RAMSCAN_CONTROL_OFFSET                    0xd002u /* inferred */
#define GE_RAMSCAN_CONTROL_SCAN_MODE_SHIFT           18 /* inferred */
#define GE_RAMSCAN_CONTROL_SCAN_MODE_MASK            0x1u
#define GE_RAMSCAN_CONTROL_SCAN_MODE_INPLACE         (GE_RAMSCAN_CONTROL_SCAN_MODE_MASK << GE_RAMSCAN_CONTROL_SCAN_MODE_SHIFT)
#define GE_RAMSCAN_CONTROL_FAST_MODE_SHIFT           17 /* inferred */
#define GE_RAMSCAN_CONTROL_FAST_MODE_MASK            0x1u
#define GE_RAMSCAN_CONTROL_FAST_MODE_INPLACE         (GE_RAMSCAN_CONTROL_FAST_MODE_MASK << GE_RAMSCAN_CONTROL_FAST_MODE_SHIFT)

/* wsync_fifo_control: rw32, space ge11_regs, reset unknown; driver and diagnostic readings */
#define GE_WSYNC_FIFO_CONTROL_OFFSET                 0xd003u /* inferred */
#define GE_WSYNC_FIFO_CONTROL_WATERMARK_SHIFT        4 /* inferred */
#define GE_WSYNC_FIFO_CONTROL_WATERMARK_MASK         0xfu
#define GE_WSYNC_FIFO_CONTROL_WATERMARK_INPLACE      (GE_WSYNC_FIFO_CONTROL_WATERMARK_MASK << GE_WSYNC_FIFO_CONTROL_WATERMARK_SHIFT)
#define GE_WSYNC_FIFO_CONTROL_DISABLE_SHIFT          0 /* inferred */
#define GE_WSYNC_FIFO_CONTROL_DISABLE_MASK           0x1u
#define GE_WSYNC_FIFO_CONTROL_DISABLE_INPLACE        (GE_WSYNC_FIFO_CONTROL_DISABLE_MASK << GE_WSYNC_FIFO_CONTROL_DISABLE_SHIFT)

/* diag_select: rw32, space ge11_regs, reset unknown; driver and diagnostic readings */
#define GE_DIAG_SELECT_OFFSET                        0xd004u /* inferred */
#define GE_DIAG_SELECT_READ_ENABLE_SHIFT             18 /* inferred */
#define GE_DIAG_SELECT_READ_ENABLE_MASK              0x1u
#define GE_DIAG_SELECT_READ_ENABLE_INPLACE           (GE_DIAG_SELECT_READ_ENABLE_MASK << GE_DIAG_SELECT_READ_ENABLE_SHIFT)
#define GE_DIAG_SELECT_INPUT_SELECT_SHIFT            8 /* inferred */
#define GE_DIAG_SELECT_INPUT_SELECT_MASK             0x1u
#define GE_DIAG_SELECT_INPUT_SELECT_INPLACE          (GE_DIAG_SELECT_INPUT_SELECT_MASK << GE_DIAG_SELECT_INPUT_SELECT_SHIFT)
#define GE_DIAG_SELECT_BREAKPOINT_STALL_SHIFT        5 /* inferred */
#define GE_DIAG_SELECT_BREAKPOINT_STALL_MASK         0x1u
#define GE_DIAG_SELECT_BREAKPOINT_STALL_INPLACE      (GE_DIAG_SELECT_BREAKPOINT_STALL_MASK << GE_DIAG_SELECT_BREAKPOINT_STALL_SHIFT)

/* enable_mask: rw32, space ge11_regs, reset unknown; driver and diagnostic readings */
#define GE_ENABLE_MASK_OFFSET                        0xd005u /* inferred */

/* ofifo_tag_config: rw32, space ge11_regs, reset unknown; driver and diagnostic readings */
#define GE_OFIFO_TAG_CONFIG_OFFSET                   0xd006u /* inferred */

/* ucode_error: rw32, space ge11_regs, reset unknown; driver and diagnostic readings */
#define GE_UCODE_ERROR_OFFSET                        0xd007u /* inferred */

/* ofifo0_a_status: r32, space ge11_regs, reset unknown; driver and diagnostic readings */
#define GE_OFIFO0_A_STATUS_OFFSET                    0xd008u /* inferred */

/* ofifo0_b_status: r32, space ge11_regs, reset unknown; driver and diagnostic readings */
#define GE_OFIFO0_B_STATUS_OFFSET                    0xd009u /* inferred */

/* ofifo1_a_status: r32, space ge11_regs, reset unknown; driver and diagnostic readings */
#define GE_OFIFO1_A_STATUS_OFFSET                    0xd00au /* inferred */

/* ofifo1_b_status: r32, space ge11_regs, reset unknown; driver and diagnostic readings */
#define GE_OFIFO1_B_STATUS_OFFSET                    0xd00bu /* inferred */

/* ofifo2_a_status: r32, space ge11_regs, reset unknown; driver and diagnostic readings */
#define GE_OFIFO2_A_STATUS_OFFSET                    0xd00cu /* inferred */

/* ofifo2_b_status: r32, space ge11_regs, reset unknown; driver and diagnostic readings */
#define GE_OFIFO2_B_STATUS_OFFSET                    0xd00du /* inferred */

/* ofifo_control: rw32, space ge11_regs, reset unknown; driver and diagnostic readings */
#define GE_OFIFO_CONTROL_OFFSET                      0xd00eu /* inferred */
#define GE_OFIFO_CONTROL_ROUTE_TO_HOST_IF_SHIFT      8 /* inferred */
#define GE_OFIFO_CONTROL_ROUTE_TO_HOST_IF_MASK       0x1u
#define GE_OFIFO_CONTROL_ROUTE_TO_HOST_IF_INPLACE    (GE_OFIFO_CONTROL_ROUTE_TO_HOST_IF_MASK << GE_OFIFO_CONTROL_ROUTE_TO_HOST_IF_SHIFT)
#define GE_OFIFO_CONTROL_WATERMARK_SHIFT             1 /* inferred */
#define GE_OFIFO_CONTROL_WATERMARK_MASK              0x7fu
#define GE_OFIFO_CONTROL_WATERMARK_INPLACE           (GE_OFIFO_CONTROL_WATERMARK_MASK << GE_OFIFO_CONTROL_WATERMARK_SHIFT)
#define GE_OFIFO_CONTROL_DIAG_MODE_SHIFT             0 /* inferred */
#define GE_OFIFO_CONTROL_DIAG_MODE_MASK              0x1u
#define GE_OFIFO_CONTROL_DIAG_MODE_INPLACE           (GE_OFIFO_CONTROL_DIAG_MODE_MASK << GE_OFIFO_CONTROL_DIAG_MODE_SHIFT)

#define GE_OFIFO_WATERMARK_DEFAULT                   0x38u /* inferred */

#endif /* GE_GEN_H */
