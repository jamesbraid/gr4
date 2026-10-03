/*
 * mgras_kern.h - Internal IRIX Kernel Graphics Subsystem Data Structures for SGI Impact (MGRAS)
 *
 * Reverse-engineered from IRIX 6.5.0 kernel modules:
 *   - mgras.o, mgras_init.o, mgras_dma.o, mgras_retrace.o, mgras_tex.o,
 *     mgras_tex_io.o, mgras_texsr.o, mgras_timing.o, mgras_tport.o,
 *     mgras_corona_i2c.o, mgras_ccv.o, mgras_mco.o, mgras_share.o, rrm.o
 * And SGI stand/arcs/lib/libsk/graphics/MGRAS PROM sources.
 */

#ifndef _SGI_MGRAS_KERN_H_
#define _SGI_MGRAS_KERN_H_

#include <stdint.h>
#include "MGRAS.h"
#include "HQ3.h"
#include "RE4.h"
#include "PP1.h"
#include "TE1.h"
#include "VC3.h"
#include "CMAP.h"

#ifdef __cplusplus
extern "C" {
#endif

/*
 * ============================================================================
 * KERNEL DATA STRUCTURES & BOARD DESCRIPTORS
 * ============================================================================
 */

/* Forward declarations */
struct mgras_data_s;
struct mgras_rnode_s;
struct eframe_s;

/* Swap Task Actions */
typedef enum {
    MGRAS_SWAP_NONE                 = 0,
    MGRAS_SWAP_SWAPBUF              = (1 << 0),
    MGRAS_SWAP_MODE                 = (1 << 1),
    MGRAS_SWAP_NOTIFY_MGR           = (1 << 4),
    MGRAS_SWAP_ALLOW_OPS            = (1 << 5),
    MGRAS_SWAP_MGR_SWAPBUF          = (MGRAS_SWAP_SWAPBUF | MGRAS_SWAP_NOTIFY_MGR),
    MGRAS_SWAP_MGR_SWAPBUF_AND_MODE = (MGRAS_SWAP_SWAPBUF | MGRAS_SWAP_NOTIFY_MGR | MGRAS_SWAP_MODE)
} mgras_swaptask_t;

/* Video Timing Descriptor */
typedef struct mgras_timing_info_s {
    uint16_t            width;              /* Active display width */
    uint16_t            height;             /* Active display height */
    uint16_t            v_freq;             /* Refresh rate in Hz */
    uint16_t            flags;              /* Stereo, interlace flags */
    uint16_t            htotal;             /* Horizontal total clock cycles */
    uint16_t            hblank_start;       /* Horizontal blank start */
    uint16_t            hblank_end;         /* Horizontal blank end */
    uint16_t            hsync_start;        /* HSync assertion point */
    uint16_t            hsync_end;          /* HSync negation point */
    uint16_t            vtotal;             /* Vertical total lines */
    uint16_t            vblank_start;       /* Vertical blank start line */
    uint16_t            vblank_end;         /* Vertical blank end line */
    uint16_t            vsync_start;        /* VSync assertion line */
    uint16_t            vsync_end;          /* VSync negation line */
    uint16_t           *linetable;          /* Pointer to VC3 line table entries */
    uint16_t           *frametable;         /* Pointer to VC3 frame table entries */
    uint8_t             pll_m;              /* Pixel clock PLL multiplier */
    uint8_t             pll_n;              /* Pixel clock PLL divisor */
    uint8_t             pll_p;              /* Pixel clock post-scale divisor */
} mgras_timing_info_t;

/* Board Instance Structure (MgrasBoards array) */
typedef struct mgrasboards_s {
    mgras_hw           *base;               /* Virtual address of mapped registers */
    void               *cfifo_dma;          /* Command FIFO DMA ring buffer */
    mgras_info_t       *info;               /* Pointer to board configuration info */
    uint32_t            slot;               /* Physical slot index */
    uint32_t            flags;              /* State flags */
    uint32_t            ref_count;          /* Open file descriptor references */
    uint32_t            active_wid;         /* Current active window ID */
    uint32_t            board_rev;          /* Board revision from bdvers */
} mgrasboards_t;

/* Global Texture Manager Descriptor */
typedef struct MgrasGMTexDesc_s {
    uint32_t            tex_id;             /* Unique texture ID */
    uint32_t            base_addr;          /* TRAM physical base address */
    uint16_t            width;              /* Texture width in pixels */
    uint16_t            height;             /* Texture height in pixels */
    uint16_t            depth;              /* Texture depth (for 3D textures) */
    uint16_t            format;             /* Texture pixel format (TE1_FMT_*) */
    uint16_t            levels;             /* Number of mipmap levels */
    uint16_t            tram_mask;          /* TRAM chip enable mask */
    uint32_t            size_bytes;         /* Total memory footprint */
} MgrasGMTexDesc_t;

/* Texture Memory Allocation Arguments */
typedef struct mgras_texspace_args_s {
    uint32_t            size;               /* Requested TRAM allocation size */
    uint32_t            alignment;          /* Address alignment requirement */
    uint32_t            tram_address;       /* Returned physical TRAM address */
    uint32_t            status;             /* Allocation status / error code */
} mgras_texspace_args_t;

/* DMA Channel Context */
typedef struct mgras_dma_ctx_s {
    uint32_t            phys_addr;          /* Host physical buffer address */
    uint32_t            virt_addr;          /* Host virtual address */
    uint32_t            size;               /* Buffer byte count */
    uint32_t            stride;             /* Line stride in bytes */
    uint16_t            x_start;            /* Graphics X destination */
    uint16_t            y_start;            /* Graphics Y destination */
    uint16_t            width;              /* Bounding box width */
    uint16_t            height;             /* Bounding box height */
    uint32_t            format;             /* Pixel transfer format */
    uint32_t            flags;              /* DMA control flags */
} mgras_dma_ctx_t;

/* Driver Context Private Data (mgras_data_t) */
typedef struct mgras_data_s {
    mgrasboards_t      *board;              /* Parent board hardware */
    struct mgras_rnode_s *cur_rnode;        /* Currently bound rendering node */
    uint32_t            open_count;         /* Number of active clients */
    uint32_t            irq_count;          /* Serviced interrupt count */
    uint32_t            retrace_count;      /* Retrace interrupt counter */
    void               *flow_hdl;           /* Gfx flow control handle */
    mgras_timing_info_t *timing;            /* Active video timing */
    MgrasGMTexDesc_t   *tex_mgr;            /* Global texture manager */
} mgras_data_t;

/*
 * ============================================================================
 * KERNEL FUNCTION PROTOTYPES (From mgras_kernel modules)
 * ============================================================================
 */

/* mgras_init.o */
void MgrasInitBoardGfx(mgras_hw *base, mgras_info_t *info);
int  MgrasProbe(mgras_hw *base, mgras_info_t *info);
void MgrasReset(mgras_hw *base);
void MgrasBlankScreen(mgras_hw *base, int blank);
int  MgrasDownloadUcode(mgras_hw *base, const uint32_t *ucode, uint32_t len);

/* mgras_ccv.o (Current Control Verification & RAC Calibration) */
void MgrasInitCCR(mgras_hw *base, mgras_info_t *info);
void CCInit(mgras_hw *base);
int  PhaseOne(mgras_hw *base);
int  PhaseTwo(mgras_hw *base);
int  countOnes(uint32_t val);
uint32_t median(const uint32_t *arr, int len);

/* mgras_dma.o */
int  MgrasSetupDMA(mgras_data_t *data, mgras_dma_ctx_t *ctx);
int  MgrasStartDMA(mgras_hw *base, mgras_dma_ctx_t *ctx);
void MgrasWaitDMA(mgras_hw *base);

/* mgras_retrace.o & mgras_timing.o */
void MgrasRetraceInit(mgras_data_t *data);
void MgrasRetraceHandler(mgras_data_t *data);
void MgrasEnableRetraceInterrupts(mgras_hw *base);
void MgrasEnableVideoTiming(mgras_hw *base, int onoff);
void MgrasLoadVC3SRAM(mgras_hw *base, const uint16_t *data, uint32_t addr, uint32_t len);
void MgrasInitCursor(mgras_hw *base);
void MgrasClearCursor(mgras_hw *base);

/* mgras_tex.o & mgras_tex_io.o */
void MgrasInitGblTexMgr(mgras_data_t *bdata);
int  MgrasAddTexSpace(void *gfxp, struct mgras_rnode_s *rnp, mgras_texspace_args_t *args);
void MgrasDeleteTexSpace(void *gfxp, struct mgras_rnode_s *rnp, mgras_texspace_args_t *args);
int  MgrasSaveTexData(mgras_data_t *bdata, struct mgras_rnode_s *savernp, uint16_t startpage);
int  MgrasRestoreTexData(mgras_data_t *bdata, struct mgras_rnode_s *restorernp, uint16_t startpage);

#ifdef __cplusplus
}
#endif

#endif /* _SGI_MGRAS_KERN_H_ */
