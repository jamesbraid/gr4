/* generated from defs/hq3.toml by defs-gen - do not edit, change the source */
/* host interface and command processor registers for the Impact graphics subsystem */
#ifndef HQ_GEN_H
#define HQ_GEN_H

#include <stdint.h>


/* pc: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_PC_OFFSET                                 0x1800u /* inferred */

/* cp_data: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_CP_DATA_OFFSET                            0x1c00u /* inferred */

/* rss_diag: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_RSS_DIAG_OFFSET                           0x3000u /* inferred */

/* config: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_CONFIG_OFFSET                             0x4000u /* inferred */
#define HQ_CONFIG_DIAG_LOOPBACK_SHIFT                7 /* inferred */
#define HQ_CONFIG_DIAG_LOOPBACK_MASK                 0x1u
#define HQ_CONFIG_DIAG_LOOPBACK_INPLACE              (HQ_CONFIG_DIAG_LOOPBACK_MASK << HQ_CONFIG_DIAG_LOOPBACK_SHIFT)
#define HQ_CONFIG_DIAG_ROUTE_SHIFT                   4 /* inferred */
#define HQ_CONFIG_DIAG_ROUTE_MASK                    0x3u
#define HQ_CONFIG_DIAG_ROUTE_INPLACE                 (HQ_CONFIG_DIAG_ROUTE_MASK << HQ_CONFIG_DIAG_ROUTE_SHIFT)
#define HQ_CONFIG_DIAG_ROUTE_GE0                     2 /* inferred */
#define HQ_CONFIG_DIAG_ROUTE_GE1                     3 /* inferred */
#define HQ_CONFIG_UCODE_STALL_SHIFT                  3 /* inferred */
#define HQ_CONFIG_UCODE_STALL_MASK                   0x1u
#define HQ_CONFIG_UCODE_STALL_INPLACE                (HQ_CONFIG_UCODE_STALL_MASK << HQ_CONFIG_UCODE_STALL_SHIFT)
#define HQ_CONFIG_BIG_ENDIAN_SHIFT                   2 /* inferred */
#define HQ_CONFIG_BIG_ENDIAN_MASK                    0x1u
#define HQ_CONFIG_BIG_ENDIAN_INPLACE                 (HQ_CONFIG_BIG_ENDIAN_MASK << HQ_CONFIG_BIG_ENDIAN_SHIFT)

/* flag_ctx: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_FLAG_CTX_OFFSET                           0x4001u /* inferred */

/* flag_set_priv: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_FLAG_SET_PRIV_OFFSET                      0x4002u /* established */

/* flag_clr_priv: w32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_FLAG_CLR_PRIV_OFFSET                      0x4003u /* inferred */

/* flag_enab_set: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_FLAG_ENAB_SET_OFFSET                      0x4004u /* established */

/* flag_enab_clr: w32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_FLAG_ENAB_CLR_OFFSET                      0x4005u /* inferred */

/* intr_enab_set: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_INTR_ENAB_SET_OFFSET                      0x4006u /* established */
#define HQ_INTR_ENAB_SET_DFIFO_BELOW_LOW_SHIFT       31 /* established */
#define HQ_INTR_ENAB_SET_DFIFO_BELOW_LOW_MASK        0x1u
#define HQ_INTR_ENAB_SET_DFIFO_BELOW_LOW_INPLACE     (HQ_INTR_ENAB_SET_DFIFO_BELOW_LOW_MASK << HQ_INTR_ENAB_SET_DFIFO_BELOW_LOW_SHIFT)
#define HQ_INTR_ENAB_SET_DFIFO_ABOVE_HIGH_SHIFT      30 /* established */
#define HQ_INTR_ENAB_SET_DFIFO_ABOVE_HIGH_MASK       0x1u
#define HQ_INTR_ENAB_SET_DFIFO_ABOVE_HIGH_INPLACE    (HQ_INTR_ENAB_SET_DFIFO_ABOVE_HIGH_MASK << HQ_INTR_ENAB_SET_DFIFO_ABOVE_HIGH_SHIFT)
#define HQ_INTR_ENAB_SET_CFIFO_BELOW_LOW_SHIFT       27 /* established */
#define HQ_INTR_ENAB_SET_CFIFO_BELOW_LOW_MASK        0x1u
#define HQ_INTR_ENAB_SET_CFIFO_BELOW_LOW_INPLACE     (HQ_INTR_ENAB_SET_CFIFO_BELOW_LOW_MASK << HQ_INTR_ENAB_SET_CFIFO_BELOW_LOW_SHIFT)
#define HQ_INTR_ENAB_SET_CFIFO_ABOVE_HIGH_SHIFT      26 /* established */
#define HQ_INTR_ENAB_SET_CFIFO_ABOVE_HIGH_MASK       0x1u
#define HQ_INTR_ENAB_SET_CFIFO_ABOVE_HIGH_INPLACE    (HQ_INTR_ENAB_SET_CFIFO_ABOVE_HIGH_MASK << HQ_INTR_ENAB_SET_CFIFO_ABOVE_HIGH_SHIFT)

/* intr_enab_clr: w32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_INTR_ENAB_CLR_OFFSET                      0x4007u /* inferred */

/* cfifo_hiwater: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_CFIFO_HIWATER_OFFSET                      0x4008u /* inferred */

/* cfifo_lowater: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_CFIFO_LOWATER_OFFSET                      0x4009u /* inferred */

/* cfifo_delay: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_CFIFO_DELAY_OFFSET                        0x400au /* inferred */

/* dfifo_hiwater: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_DFIFO_HIWATER_OFFSET                      0x400bu /* inferred */

/* dfifo_lowater: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_DFIFO_LOWATER_OFFSET                      0x400cu /* inferred */

/* dfifo_delay: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_DFIFO_DELAY_OFFSET                        0x400du /* inferred */

/* ge0_diag_data: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_GE0_DIAG_DATA_OFFSET                      0x4010u /* inferred */

/* ge0_diag_index: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_GE0_DIAG_INDEX_OFFSET                     0x4011u /* inferred */

/* ge1_diag_data: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_GE1_DIAG_DATA_OFFSET                      0x4012u /* inferred */

/* ge1_diag_index: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_GE1_DIAG_INDEX_OFFSET                     0x4013u /* inferred */

/* ctx_switch: w32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_CTX_SWITCH_OFFSET                         0x4014u /* inferred */

/* cfifo_priv: w64, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_CFIFO_PRIV_OFFSET                         0x4020u /* inferred */

/* ctx_data: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_CTX_DATA_OFFSET                           0x4040u /* inferred */

/* bfifo_hiwater: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_BFIFO_HIWATER_OFFSET                      0x4042u /* inferred */

/* bfifo_lowater: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_BFIFO_LOWATER_OFFSET                      0x4043u /* inferred */

/* bfifo_delay: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_BFIFO_DELAY_OFFSET                        0x4044u /* inferred */

/* gio_config: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_GIO_CONFIG_OFFSET                         0x4045u /* inferred */
#define HQ_GIO_CONFIG_FIFO_HIGH_WATER_SHIFT          12 /* inferred */
#define HQ_GIO_CONFIG_FIFO_HIGH_WATER_MASK           0x1u
#define HQ_GIO_CONFIG_FIFO_HIGH_WATER_INPLACE        (HQ_GIO_CONFIG_FIFO_HIGH_WATER_MASK << HQ_GIO_CONFIG_FIFO_HIGH_WATER_SHIFT)
#define HQ_GIO_CONFIG_BUS_BYPASS_SHIFT               6 /* inferred */
#define HQ_GIO_CONFIG_BUS_BYPASS_MASK                0x1u
#define HQ_GIO_CONFIG_BUS_BYPASS_INPLACE             (HQ_GIO_CONFIG_BUS_BYPASS_MASK << HQ_GIO_CONFIG_BUS_BYPASS_SHIFT)
#define HQ_GIO_CONFIG_TLB_UPDATE_SHIFT               3 /* inferred */
#define HQ_GIO_CONFIG_TLB_UPDATE_MASK                0x1u
#define HQ_GIO_CONFIG_TLB_UPDATE_INPLACE             (HQ_GIO_CONFIG_TLB_UPDATE_MASK << HQ_GIO_CONFIG_TLB_UPDATE_SHIFT)
#define HQ_GIO_CONFIG_EXT_PIPE_REGISTER_SHIFT        2 /* inferred */
#define HQ_GIO_CONFIG_EXT_PIPE_REGISTER_MASK         0x1u
#define HQ_GIO_CONFIG_EXT_PIPE_REGISTER_INPLACE      (HQ_GIO_CONFIG_EXT_PIPE_REGISTER_MASK << HQ_GIO_CONFIG_EXT_PIPE_REGISTER_SHIFT)
#define HQ_GIO_CONFIG_DISPLAY_BUS_BIG_ENDIAN_SHIFT   1 /* inferred */
#define HQ_GIO_CONFIG_DISPLAY_BUS_BIG_ENDIAN_MASK    0x1u
#define HQ_GIO_CONFIG_DISPLAY_BUS_BIG_ENDIAN_INPLACE (HQ_GIO_CONFIG_DISPLAY_BUS_BIG_ENDIAN_MASK << HQ_GIO_CONFIG_DISPLAY_BUS_BIG_ENDIAN_SHIFT)
#define HQ_GIO_CONFIG_HOST_BIG_ENDIAN_SHIFT          0 /* inferred */
#define HQ_GIO_CONFIG_HOST_BIG_ENDIAN_MASK           0x1u
#define HQ_GIO_CONFIG_HOST_BIG_ENDIAN_INPLACE        (HQ_GIO_CONFIG_HOST_BIG_ENDIAN_MASK << HQ_GIO_CONFIG_HOST_BIG_ENDIAN_SHIFT)

/* reif_ctx: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_REIF_CTX_OFFSET                           0x4080u /* inferred */
#define HQ_REIF_CTX_COUNT                            64
#define HQ_REIF_CTX_STRIDE                           1

/* hag_ctx: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_HAG_CTX_OFFSET                            0x40c0u /* inferred */
#define HQ_HAG_CTX_COUNT                             128
#define HQ_HAG_CTX_STRIDE                            1

/* hif_ctx: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_HIF_CTX_OFFSET                            0x4140u /* inferred */
#define HQ_HIF_CTX_COUNT                             64
#define HQ_HIF_CTX_STRIDE                            1

/* gio_ctx: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_GIO_CTX_OFFSET                            0x4180u /* inferred */
#define HQ_GIO_CTX_COUNT                             64
#define HQ_GIO_CTX_STRIDE                            1

/* tlb_entries: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_TLB_ENTRIES_OFFSET                        0x4200u /* inferred */
#define HQ_TLB_ENTRIES_COUNT                         32
#define HQ_TLB_ENTRIES_STRIDE                        1

/* tlb_fault_page: r32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_TLB_FAULT_PAGE_OFFSET                     0x4220u /* inferred */

/* tlb_valid: rw32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_TLB_VALID_OFFSET                          0x4240u /* inferred */

/* status: r32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_STATUS_OFFSET                             0xc000u /* inferred */
#define HQ_STATUS_DFIFO_BELOW_LOW_SHIFT              8 /* inferred */
#define HQ_STATUS_DFIFO_BELOW_LOW_MASK               0x1u
#define HQ_STATUS_DFIFO_BELOW_LOW_INPLACE            (HQ_STATUS_DFIFO_BELOW_LOW_MASK << HQ_STATUS_DFIFO_BELOW_LOW_SHIFT)
#define HQ_STATUS_DFIFO_ABOVE_HIGH_SHIFT             7 /* inferred */
#define HQ_STATUS_DFIFO_ABOVE_HIGH_MASK              0x1u
#define HQ_STATUS_DFIFO_ABOVE_HIGH_INPLACE           (HQ_STATUS_DFIFO_ABOVE_HIGH_MASK << HQ_STATUS_DFIFO_ABOVE_HIGH_SHIFT)
#define HQ_STATUS_CFIFO_BELOW_LOW_SHIFT              4 /* inferred */
#define HQ_STATUS_CFIFO_BELOW_LOW_MASK               0x1u
#define HQ_STATUS_CFIFO_BELOW_LOW_INPLACE            (HQ_STATUS_CFIFO_BELOW_LOW_MASK << HQ_STATUS_CFIFO_BELOW_LOW_SHIFT)
#define HQ_STATUS_CFIFO_ABOVE_HIGH_SHIFT             3 /* inferred */
#define HQ_STATUS_CFIFO_ABOVE_HIGH_MASK              0x1u
#define HQ_STATUS_CFIFO_ABOVE_HIGH_INPLACE           (HQ_STATUS_CFIFO_ABOVE_HIGH_MASK << HQ_STATUS_CFIFO_ABOVE_HIGH_SHIFT)
#define HQ_STATUS_PIPE_IDLE_SHIFT                    1 /* inferred */
#define HQ_STATUS_PIPE_IDLE_MASK                     0x1u
#define HQ_STATUS_PIPE_IDLE_INPLACE                  (HQ_STATUS_PIPE_IDLE_MASK << HQ_STATUS_PIPE_IDLE_SHIFT)
#define HQ_STATUS_COMMANDS_DONE_SHIFT                0 /* inferred */
#define HQ_STATUS_COMMANDS_DONE_MASK                 0x1u
#define HQ_STATUS_COMMANDS_DONE_INPLACE              (HQ_STATUS_COMMANDS_DONE_MASK << HQ_STATUS_COMMANDS_DONE_SHIFT)

/* fifo_status: r32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_FIFO_STATUS_OFFSET                        0xc001u /* inferred */
#define HQ_FIFO_STATUS_CFIFO_HIWATER_MARK_SHIFT      22 /* inferred */
#define HQ_FIFO_STATUS_CFIFO_HIWATER_MARK_MASK       0x7fu
#define HQ_FIFO_STATUS_CFIFO_HIWATER_MARK_INPLACE    (HQ_FIFO_STATUS_CFIFO_HIWATER_MARK_MASK << HQ_FIFO_STATUS_CFIFO_HIWATER_MARK_SHIFT)
#define HQ_FIFO_STATUS_DFIFO_DEPTH_SHIFT             15 /* inferred */
#define HQ_FIFO_STATUS_DFIFO_DEPTH_MASK              0x7fu
#define HQ_FIFO_STATUS_DFIFO_DEPTH_INPLACE           (HQ_FIFO_STATUS_DFIFO_DEPTH_MASK << HQ_FIFO_STATUS_DFIFO_DEPTH_SHIFT)
#define HQ_FIFO_STATUS_CFIFO_VALID_SHIFT             7 /* inferred */
#define HQ_FIFO_STATUS_CFIFO_VALID_MASK              0xffu
#define HQ_FIFO_STATUS_CFIFO_VALID_INPLACE           (HQ_FIFO_STATUS_CFIFO_VALID_MASK << HQ_FIFO_STATUS_CFIFO_VALID_SHIFT)
#define HQ_FIFO_STATUS_CFIFO_DEPTH_SHIFT             0 /* inferred */
#define HQ_FIFO_STATUS_CFIFO_DEPTH_MASK              0x7fu
#define HQ_FIFO_STATUS_CFIFO_DEPTH_INPLACE           (HQ_FIFO_STATUS_CFIFO_DEPTH_MASK << HQ_FIFO_STATUS_CFIFO_DEPTH_SHIFT)

/* flag_set: w32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_FLAG_SET_OFFSET                           0xc002u /* inferred */
#define HQ_FLAG_SET_CONTEXT_SAVED_SHIFT              19 /* inferred */
#define HQ_FLAG_SET_CONTEXT_SAVED_MASK               0x1u
#define HQ_FLAG_SET_CONTEXT_SAVED_INPLACE            (HQ_FLAG_SET_CONTEXT_SAVED_MASK << HQ_FLAG_SET_CONTEXT_SAVED_SHIFT)
#define HQ_FLAG_SET_GE_DIAG_SHIFT                    18 /* inferred */
#define HQ_FLAG_SET_GE_DIAG_MASK                     0x1u
#define HQ_FLAG_SET_GE_DIAG_INPLACE                  (HQ_FLAG_SET_GE_DIAG_MASK << HQ_FLAG_SET_GE_DIAG_SHIFT)
#define HQ_FLAG_SET_GE_DATA_SHIFT                    17 /* inferred */
#define HQ_FLAG_SET_GE_DATA_MASK                     0x1u
#define HQ_FLAG_SET_GE_DATA_INPLACE                  (HQ_FLAG_SET_GE_DATA_MASK << HQ_FLAG_SET_GE_DATA_SHIFT)
#define HQ_FLAG_SET_DONE_SHIFT                       16 /* inferred */
#define HQ_FLAG_SET_DONE_MASK                        0x1u
#define HQ_FLAG_SET_DONE_INPLACE                     (HQ_FLAG_SET_DONE_MASK << HQ_FLAG_SET_DONE_SHIFT)
#define HQ_FLAG_SET_DMA_ACCESS_OR_STACK_OVERFLOW_SHIFT 15 /* established */
#define HQ_FLAG_SET_DMA_ACCESS_OR_STACK_OVERFLOW_MASK 0x1u
#define HQ_FLAG_SET_DMA_ACCESS_OR_STACK_OVERFLOW_INPLACE (HQ_FLAG_SET_DMA_ACCESS_OR_STACK_OVERFLOW_MASK << HQ_FLAG_SET_DMA_ACCESS_OR_STACK_OVERFLOW_SHIFT)
#define HQ_FLAG_SET_CFIFO_PRIVILEGE_VIOLATION_SHIFT  14 /* established */
#define HQ_FLAG_SET_CFIFO_PRIVILEGE_VIOLATION_MASK   0x1u
#define HQ_FLAG_SET_CFIFO_PRIVILEGE_VIOLATION_INPLACE (HQ_FLAG_SET_CFIFO_PRIVILEGE_VIOLATION_MASK << HQ_FLAG_SET_CFIFO_PRIVILEGE_VIOLATION_SHIFT)
#define HQ_FLAG_SET_DMA_ADDRESS_ERROR_SHIFT          13 /* established */
#define HQ_FLAG_SET_DMA_ADDRESS_ERROR_MASK           0x1u
#define HQ_FLAG_SET_DMA_ADDRESS_ERROR_INPLACE        (HQ_FLAG_SET_DMA_ADDRESS_ERROR_MASK << HQ_FLAG_SET_DMA_ADDRESS_ERROR_SHIFT)
#define HQ_FLAG_SET_BUFFER_SWAP_SHIFT                10 /* inferred */
#define HQ_FLAG_SET_BUFFER_SWAP_MASK                 0x1u
#define HQ_FLAG_SET_BUFFER_SWAP_INPLACE              (HQ_FLAG_SET_BUFFER_SWAP_MASK << HQ_FLAG_SET_BUFFER_SWAP_SHIFT)
#define HQ_FLAG_SET_UCODE_ERROR_SHIFT                9 /* established */
#define HQ_FLAG_SET_UCODE_ERROR_MASK                 0x1u
#define HQ_FLAG_SET_UCODE_ERROR_INPLACE              (HQ_FLAG_SET_UCODE_ERROR_MASK << HQ_FLAG_SET_UCODE_ERROR_SHIFT)
#define HQ_FLAG_SET_TLB_MISS_SHIFT                   7 /* inferred */
#define HQ_FLAG_SET_TLB_MISS_MASK                    0x1u
#define HQ_FLAG_SET_TLB_MISS_INPLACE                 (HQ_FLAG_SET_TLB_MISS_MASK << HQ_FLAG_SET_TLB_MISS_SHIFT)
#define HQ_FLAG_SET_CONTEXT_LOADED_SHIFT             6 /* inferred */
#define HQ_FLAG_SET_CONTEXT_LOADED_MASK              0x1u
#define HQ_FLAG_SET_CONTEXT_LOADED_INPLACE           (HQ_FLAG_SET_CONTEXT_LOADED_MASK << HQ_FLAG_SET_CONTEXT_LOADED_SHIFT)
#define HQ_FLAG_SET_DMA_DONE_SHIFT                   4 /* inferred */
#define HQ_FLAG_SET_DMA_DONE_MASK                    0x1u
#define HQ_FLAG_SET_DMA_DONE_INPLACE                 (HQ_FLAG_SET_DMA_DONE_MASK << HQ_FLAG_SET_DMA_DONE_SHIFT)
#define HQ_FLAG_SET_DFIFO_LOWATER_SHIFT              3 /* inferred */
#define HQ_FLAG_SET_DFIFO_LOWATER_MASK               0x1u
#define HQ_FLAG_SET_DFIFO_LOWATER_INPLACE            (HQ_FLAG_SET_DFIFO_LOWATER_MASK << HQ_FLAG_SET_DFIFO_LOWATER_SHIFT)
#define HQ_FLAG_SET_CFIFO_HIWATER_SHIFT              2 /* inferred */
#define HQ_FLAG_SET_CFIFO_HIWATER_MASK               0x1u
#define HQ_FLAG_SET_CFIFO_HIWATER_INPLACE            (HQ_FLAG_SET_CFIFO_HIWATER_MASK << HQ_FLAG_SET_CFIFO_HIWATER_SHIFT)
#define HQ_FLAG_SET_CFIFO_LOWATER_SHIFT              1 /* inferred */
#define HQ_FLAG_SET_CFIFO_LOWATER_MASK               0x1u
#define HQ_FLAG_SET_CFIFO_LOWATER_INPLACE            (HQ_FLAG_SET_CFIFO_LOWATER_MASK << HQ_FLAG_SET_CFIFO_LOWATER_SHIFT)
#define HQ_FLAG_SET_RETRACE_SHIFT                    0 /* inferred */
#define HQ_FLAG_SET_RETRACE_MASK                     0x1u
#define HQ_FLAG_SET_RETRACE_INPLACE                  (HQ_FLAG_SET_RETRACE_MASK << HQ_FLAG_SET_RETRACE_SHIFT)

/* flag_clr: w32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_FLAG_CLR_OFFSET                           0xc003u /* inferred */

/* rebus_read_hi: r32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_REBUS_READ_HI_OFFSET                      0xc004u /* inferred */

/* rebus_read_lo: r32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_REBUS_READ_LO_OFFSET                      0xc005u /* inferred */

/* cfifo_user: w64, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_CFIFO_USER_OFFSET                         0xc020u /* inferred */

/* gio_status: r32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_GIO_STATUS_OFFSET                         0xc040u /* inferred */
#define HQ_GIO_STATUS_DISPLAY_BUS_BUSY_SHIFT         5 /* inferred */
#define HQ_GIO_STATUS_DISPLAY_BUS_BUSY_MASK          0x1u
#define HQ_GIO_STATUS_DISPLAY_BUS_BUSY_INPLACE       (HQ_GIO_STATUS_DISPLAY_BUS_BUSY_MASK << HQ_GIO_STATUS_DISPLAY_BUS_BUSY_SHIFT)
#define HQ_GIO_STATUS_BFIFO_DEPTH_SHIFT              0 /* inferred */
#define HQ_GIO_STATUS_BFIFO_DEPTH_MASK               0x1fu
#define HQ_GIO_STATUS_BFIFO_DEPTH_INPLACE            (HQ_GIO_STATUS_BFIFO_DEPTH_MASK << HQ_GIO_STATUS_BFIFO_DEPTH_SHIFT)

/* dma_busy: r32, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_DMA_BUSY_OFFSET                           0xc041u /* inferred */
#define HQ_DMA_BUSY_ADDRESS_GEN_DMA_SHIFT            12 /* inferred */
#define HQ_DMA_BUSY_ADDRESS_GEN_DMA_MASK             0x1u
#define HQ_DMA_BUSY_ADDRESS_GEN_DMA_INPLACE          (HQ_DMA_BUSY_ADDRESS_GEN_DMA_MASK << HQ_DMA_BUSY_ADDRESS_GEN_DMA_SHIFT)
#define HQ_DMA_BUSY_RASTER_DMA_SHIFT                 11 /* inferred */
#define HQ_DMA_BUSY_RASTER_DMA_MASK                  0x1u
#define HQ_DMA_BUSY_RASTER_DMA_INPLACE               (HQ_DMA_BUSY_RASTER_DMA_MASK << HQ_DMA_BUSY_RASTER_DMA_SHIFT)
#define HQ_DMA_BUSY_MASTER_DMA_SHIFT                 9 /* inferred */
#define HQ_DMA_BUSY_MASTER_DMA_MASK                  0x1u
#define HQ_DMA_BUSY_MASTER_DMA_INPLACE               (HQ_DMA_BUSY_MASTER_DMA_MASK << HQ_DMA_BUSY_MASTER_DMA_SHIFT)
#define HQ_DMA_BUSY_RASTER_IF_SHIFT                  4 /* inferred */
#define HQ_DMA_BUSY_RASTER_IF_MASK                   0x1u
#define HQ_DMA_BUSY_RASTER_IF_INPLACE                (HQ_DMA_BUSY_RASTER_IF_MASK << HQ_DMA_BUSY_RASTER_IF_SHIFT)
#define HQ_DMA_BUSY_CD_SHIFT                         3 /* inferred */
#define HQ_DMA_BUSY_CD_MASK                          0x1u
#define HQ_DMA_BUSY_CD_INPLACE                       (HQ_DMA_BUSY_CD_MASK << HQ_DMA_BUSY_CD_SHIFT)
#define HQ_DMA_BUSY_CFIFO_SHIFT                      2 /* inferred */
#define HQ_DMA_BUSY_CFIFO_MASK                       0x1u
#define HQ_DMA_BUSY_CFIFO_INPLACE                    (HQ_DMA_BUSY_CFIFO_MASK << HQ_DMA_BUSY_CFIFO_SHIFT)
#define HQ_DMA_BUSY_HOST_IF_SHIFT                    1 /* inferred */
#define HQ_DMA_BUSY_HOST_IF_MASK                     0x1u
#define HQ_DMA_BUSY_HOST_IF_INPLACE                  (HQ_DMA_BUSY_HOST_IF_MASK << HQ_DMA_BUSY_HOST_IF_SHIFT)
#define HQ_DMA_BUSY_SYNC_SHIFT                       0 /* inferred */
#define HQ_DMA_BUSY_SYNC_MASK                        0x1u
#define HQ_DMA_BUSY_SYNC_INPLACE                     (HQ_DMA_BUSY_SYNC_MASK << HQ_DMA_BUSY_SYNC_SHIFT)

/* cfifo_gl: w64, space hq3_regs, reset unknown; driver and diagnostic readings */
#define HQ_CFIFO_GL_OFFSET                           0xd020u /* inferred */

/*
 * Command-FIFO control word (bit 31 clear). The word every OpenGL library
 * entry point stores first; the data words follow.
 */
/* word CFIFO_CTL: 32 bits; driver and diagnostic readings */
#define HQ_CFIFO_CTL_WIDTH                           32 /* inferred */
#define HQ_CFIFO_CTL_PIXEL_SHIFT                     31 /* established */
#define HQ_CFIFO_CTL_PIXEL_MASK                      0x1u
#define HQ_CFIFO_CTL_PIXEL_INPLACE                   (HQ_CFIFO_CTL_PIXEL_MASK << HQ_CFIFO_CTL_PIXEL_SHIFT)
#define HQ_CFIFO_CTL_PAD_FLAG_SHIFT                  30 /* inferred */
#define HQ_CFIFO_CTL_PAD_FLAG_MASK                   0x1u
#define HQ_CFIFO_CTL_PAD_FLAG_INPLACE                (HQ_CFIFO_CTL_PAD_FLAG_MASK << HQ_CFIFO_CTL_PAD_FLAG_SHIFT)
#define HQ_CFIFO_CTL_CONVERT_SHIFT                   23 /* established */
#define HQ_CFIFO_CTL_CONVERT_MASK                    0x7fu
#define HQ_CFIFO_CTL_CONVERT_INPLACE                 (HQ_CFIFO_CTL_CONVERT_MASK << HQ_CFIFO_CTL_CONVERT_SHIFT)
#define HQ_CFIFO_CTL_KERNEL_SHIFT                    22 /* established */
#define HQ_CFIFO_CTL_KERNEL_MASK                     0x1u
#define HQ_CFIFO_CTL_KERNEL_INPLACE                  (HQ_CFIFO_CTL_KERNEL_MASK << HQ_CFIFO_CTL_KERNEL_SHIFT)
#define HQ_CFIFO_CTL_SYNC_SHIFT                      21 /* established */
#define HQ_CFIFO_CTL_SYNC_MASK                       0x1u
#define HQ_CFIFO_CTL_SYNC_INPLACE                    (HQ_CFIFO_CTL_SYNC_MASK << HQ_CFIFO_CTL_SYNC_SHIFT)
#define HQ_CFIFO_CTL_COMMAND_SHIFT                   8 /* established */
#define HQ_CFIFO_CTL_COMMAND_MASK                    0x1fffu
#define HQ_CFIFO_CTL_COMMAND_INPLACE                 (HQ_CFIFO_CTL_COMMAND_MASK << HQ_CFIFO_CTL_COMMAND_SHIFT)
#define HQ_CFIFO_CTL_BYTES_SHIFT                     0 /* established */
#define HQ_CFIFO_CTL_BYTES_MASK                      0xffu
#define HQ_CFIFO_CTL_BYTES_INPLACE                   (HQ_CFIFO_CTL_BYTES_MASK << HQ_CFIFO_CTL_BYTES_SHIFT)

/*
 * Command-FIFO header of an inline data block (bit 31 set). The GL client sends
 * pixel rows, bitmap images and geometry-engine tables this way. The byte length
 * is in bits 19:0, and bits 23:22 give the offset of the first payload byte in
 * its word. The block then takes (offset + length + 3) / 4 words. The length
 * field is 20 bits wide; a reader that uses the 8-bit length of CFIFO_CTL
 * consumes the wrong number of words. Read from the GL client's emitters and the
 * kernel's table loader: a software expectation, not a board measurement.
 */
/* word CFIFO_INLINE: 32 bits; driver and diagnostic readings */
#define HQ_CFIFO_INLINE_WIDTH                        32 /* inferred */
#define HQ_CFIFO_INLINE_INLINE_SHIFT                 31 /* inferred */
#define HQ_CFIFO_INLINE_INLINE_MASK                  0x1u
#define HQ_CFIFO_INLINE_INLINE_INPLACE               (HQ_CFIFO_INLINE_INLINE_MASK << HQ_CFIFO_INLINE_INLINE_SHIFT)
#define HQ_CFIFO_INLINE_FIRST_OFFSET_SHIFT           22 /* inferred */
#define HQ_CFIFO_INLINE_FIRST_OFFSET_MASK            0x3u
#define HQ_CFIFO_INLINE_FIRST_OFFSET_INPLACE         (HQ_CFIFO_INLINE_FIRST_OFFSET_MASK << HQ_CFIFO_INLINE_FIRST_OFFSET_SHIFT)
#define HQ_CFIFO_INLINE_LENGTH_SHIFT                 0 /* inferred */
#define HQ_CFIFO_INLINE_LENGTH_MASK                  0xfffffu
#define HQ_CFIFO_INLINE_LENGTH_INPLACE               (HQ_CFIFO_INLINE_LENGTH_MASK << HQ_CFIFO_INLINE_LENGTH_SHIFT)

/*
 * Context image, word 1 (the flags word of the host-memory image the kernel
 * keeps per context). Bits 26 and 27 are read from the kernel's code that
 * writes them; 29 to 31 come from traced values and the kernel clearing them
 * after a load; the reader of bit 28 is not found (set only on the kernel's
 * own context at creation).
 */
/* word CTX_W1: 32 bits; driver and diagnostic readings */
#define HQ_CTX_W1_WIDTH                              32 /* unknown */
#define HQ_CTX_W1_FIRST_LOAD_SHIFT                   31 /* inferred */
#define HQ_CTX_W1_FIRST_LOAD_MASK                    0x1u
#define HQ_CTX_W1_FIRST_LOAD_INPLACE                 (HQ_CTX_W1_FIRST_LOAD_MASK << HQ_CTX_W1_FIRST_LOAD_SHIFT)
#define HQ_CTX_W1_NOTHING_SAVED_SHIFT                30 /* inferred */
#define HQ_CTX_W1_NOTHING_SAVED_MASK                 0x1u
#define HQ_CTX_W1_NOTHING_SAVED_INPLACE              (HQ_CTX_W1_NOTHING_SAVED_MASK << HQ_CTX_W1_NOTHING_SAVED_SHIFT)
#define HQ_CTX_W1_WINDOW_CHANGED_SHIFT               29 /* inferred */
#define HQ_CTX_W1_WINDOW_CHANGED_MASK                0x1u
#define HQ_CTX_W1_WINDOW_CHANGED_INPLACE             (HQ_CTX_W1_WINDOW_CHANGED_MASK << HQ_CTX_W1_WINDOW_CHANGED_SHIFT)
#define HQ_CTX_W1_BIT28_SHIFT                        28 /* unknown */
#define HQ_CTX_W1_BIT28_MASK                         0x1u
#define HQ_CTX_W1_BIT28_INPLACE                      (HQ_CTX_W1_BIT28_MASK << HQ_CTX_W1_BIT28_SHIFT)
#define HQ_CTX_W1_XSERVER_SHADOW_SHIFT               27 /* established */
#define HQ_CTX_W1_XSERVER_SHADOW_MASK                0x1u
#define HQ_CTX_W1_XSERVER_SHADOW_INPLACE             (HQ_CTX_W1_XSERVER_SHADOW_MASK << HQ_CTX_W1_XSERVER_SHADOW_SHIFT)
#define HQ_CTX_W1_BANKS_CHANGED_SHIFT                26 /* established */
#define HQ_CTX_W1_BANKS_CHANGED_MASK                 0x1u
#define HQ_CTX_W1_BANKS_CHANGED_INPLACE              (HQ_CTX_W1_BANKS_CHANGED_MASK << HQ_CTX_W1_BANKS_CHANGED_SHIFT)

#define HQ_BFIFO_DELAY_DEFAULT                       0x64u /* established */
#define HQ_BFIFO_HIWATER_DEFAULT                     0x8u /* established */
#define HQ_BFIFO_LOWATER_DEFAULT                     0x2u /* established */
#define HQ_BFIFO_MAX                                 0x10u /* inferred */
#define HQ_CFIFO_CLASS_DMA_BANK_0A                   0xau /* inferred */
#define HQ_CFIFO_CLASS_DMA_BANK_HOST                 0x8u /* inferred */
#define HQ_CFIFO_CLASS_SYNC                          0xeu /* inferred */
#define HQ_CFIFO_CMD_BITMAP                          0x94u /* inferred */
#define HQ_CFIFO_CMD_CLEAR_COLOUR                    0x15u /* inferred */
#define HQ_CFIFO_CMD_CLEAR_DEPTH                     0x4au /* inferred */
#define HQ_CFIFO_CMD_CLEAR_STENCIL                   0x4cu /* inferred */
#define HQ_CFIFO_CMD_CLIP_BIND                       0xe4u /* inferred */
#define HQ_CFIFO_CMD_CONTEXT_CONFIG                  0x8cu /* inferred */
#define HQ_CFIFO_CMD_CONTEXT_OPEN                    0x6u /* inferred */
#define HQ_CFIFO_CMD_ERAM_READ                       0xfcu /* inferred */
#define HQ_CFIFO_CMD_ERAM_WRITE_ADDR                 0xfbu /* inferred */
#define HQ_CFIFO_CMD_ERAM_WRITE_CHUNK                0xfdu /* inferred */
#define HQ_CFIFO_CMD_ERAM_WRITE_END                  0xfau /* inferred */
#define HQ_CFIFO_CMD_FILLER                          0xe1u /* inferred */
#define HQ_CFIFO_CMD_FLUSH                           0x36u /* inferred */
#define HQ_CFIFO_CMD_GE_TABLE_LOAD                   0x82u /* inferred */
#define HQ_CFIFO_CMD_NAME_POP                        0xc6u /* inferred */
#define HQ_CFIFO_CMD_NAME_PUSH                       0xc7u /* inferred */
#define HQ_CFIFO_CMD_NAME_REPLACE                    0xc5u /* inferred */
#define HQ_CFIFO_CMD_NAME_STACK_INIT                 0xc4u /* inferred */
#define HQ_CFIFO_CMD_QUERY                           0xa2u /* inferred */
#define HQ_CFIFO_CMD_RASTER_PAIRS                    0x7fu /* inferred */
#define HQ_CFIFO_CMD_RASTER_TRIPLES                  0x7cu /* inferred */
#define HQ_CFIFO_CMD_RESULT_BEGIN                    0x61u /* inferred */
#define HQ_CFIFO_CMD_RESULT_END                      0x62u /* inferred */
#define HQ_CFIFO_CMD_SCISSOR                         0x39u /* inferred */
#define HQ_CFIFO_CMD_SELECT_ENTER                    0xcbu /* inferred */
#define HQ_CFIFO_CMD_SELECT_EXIT                     0xc9u /* inferred */
#define HQ_CFIFO_CMD_SWAP_TMESH                      0xdcu /* inferred */
#define HQ_CFIFO_CMD_VIEWPORT                        0x33u /* inferred */
#define HQ_CFIFO_DELAY_DEFAULT                       0x64u /* established */
#define HQ_CFIFO_HIWATER_DEFAULT                     0x28u /* established */
#define HQ_CFIFO_LOWATER_DEFAULT                     0x14u /* established */
#define HQ_CTX_BANK_WORD_FIRST                       0x10u /* established */
#define HQ_CTX_BANK_WORD_SECOND                      0x11u /* established */
#define HQ_CTX_XSERVER_WORD_FIRST                    0x12u /* inferred */
#define HQ_CTX_XSERVER_WORD_LAST                     0x27u /* inferred */
#define HQ_DFIFO_DELAY_DEFAULT                       0x64u /* established */
#define HQ_DFIFO_HIWATER_DEFAULT                     0x28u /* established */
#define HQ_DFIFO_LOWATER_DEFAULT                     0x14u /* established */
#define HQ_INIT_BFIFO_DELAY                          0x8cu /* established */
#define HQ_INIT_BFIFO_HIWATER                        0x6u /* established */
#define HQ_INIT_BFIFO_LOWATER                        0x2u /* established */
#define HQ_INIT_CFIFO_DELAY                          0x64u /* established */
#define HQ_INIT_CFIFO_HIWATER                        0x20u /* established */
#define HQ_INIT_CFIFO_LOWATER                        0x14u /* established */
#define HQ_INIT_CONFIG                               0x7e8cu /* established */
#define HQ_INIT_DFIFO_DELAY                          0xfffu /* established */
#define HQ_INIT_DFIFO_HIWATER                        0x28u /* established */
#define HQ_INIT_DFIFO_LOWATER                        0x14u /* established */
#define HQ_INIT_FLAG_ENABLE                          0x11000fu /* established */
#define HQ_INIT_GIO_CONFIG                           0x765b900fu /* established */
#define HQ_INIT_INTR_ENABLE                          0x4400e200u /* established */
#define HQ_TLB_ENTRIES                               0x20u /* established */
#define HQ_TLB_PAGE_SHIFT                            0xcu /* established */
#define HQ_TOKEN_READBACK_BEGIN                      0x96u /* established */
#define HQ_TOKEN_READBACK_END                        0x97u /* established */
#define HQ_TOKEN_SECOND_TEXMODE                      0x5fu /* established */
#define HQ_TOKEN_TRANSFER_DONE                       0xdau /* established */

#endif /* HQ_GEN_H */
