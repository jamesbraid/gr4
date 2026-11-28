/* generated from devices/cmap/registers.toml by defs-gen - do not edit, change
 * the source */
/* SPDX-License-Identifier: BSD-3-Clause */
/* defs-gen 4 */
/* input sha256 f306fbfe910a823bc6ca6ebfa7bd51ee2cdbacdfed514f3edc6ce4fcbda5d4bc */
/* CMAP colour map chips of the Impact graphics subsystem */
#ifndef CMAP_GEN_H
#define CMAP_GEN_H

#include <stdint.h>


/*
 * Port: low byte of the palette address. Defined next to the sixteen-bit
 * address port; no shipped use of the byte form was read.
 */
/* addr_lo: rw8, reset unknown; driver and diagnostic readings */
#define CMAP_ADDR_LO_OFFSET                          0x8u /* inferred */

/*
 * Port: palette entry address. The diagnostic and the loaders write it before a
 * run of colour writes or reads, twice in a row as a workaround for the address
 * being lost at random when the bus turns between writing and reading. The
 * loaders set the address once per run of colour writes, so a write is read as
 * stepping the address (inferred); a comment in the diagnostic says the counter
 * wraps to zero after the last entry, and that the first read right after a
 * write is not guaranteed, so it starts reading at the last entry and discards
 * the first value.
 */
/* addr: rw16, reset unknown; driver and diagnostic readings */
#define CMAP_ADDR_OFFSET                             0x30u /* established */
#define CMAP_ADDR_ENTRY_SHIFT                        0 /* inferred */
#define CMAP_ADDR_ENTRY_MASK                         0x1fffu
#define CMAP_ADDR_ENTRY_INPLACE (CMAP_ADDR_ENTRY_MASK << CMAP_ADDR_ENTRY_SHIFT)

/*
 * Port: high byte of the palette address. Defined next to the address port; no
 * shipped use was read.
 */
/* addr_hi: rw8, reset unknown; driver and diagnostic readings */
#define CMAP_ADDR_HI_OFFSET                          0x88u /* inferred */

/*
 * Port: palette entry data, a three-byte access. A write stores one entry at
 * the current address and steps it; a read returns one entry. The loaders pack
 * red in bits 31:24, green in 23:16 and blue in 15:8, and the diagnostic's read
 * helper unpacks the same bytes.
 */
/* pal: rw32, reset unknown; driver and diagnostic readings */
#define CMAP_PAL_OFFSET                              0x118u /* established */
#define CMAP_PAL_RED_SHIFT                           24 /* established */
#define CMAP_PAL_RED_MASK                            0xffu
#define CMAP_PAL_RED_INPLACE (CMAP_PAL_RED_MASK << CMAP_PAL_RED_SHIFT)
#define CMAP_PAL_GREEN_SHIFT                         16 /* established */
#define CMAP_PAL_GREEN_MASK                          0xffu
#define CMAP_PAL_GREEN_INPLACE (CMAP_PAL_GREEN_MASK << CMAP_PAL_GREEN_SHIFT)
#define CMAP_PAL_BLUE_SHIFT                          8 /* established */
#define CMAP_PAL_BLUE_MASK                           0xffu
#define CMAP_PAL_BLUE_INPLACE (CMAP_PAL_BLUE_MASK << CMAP_PAL_BLUE_SHIFT)

/*
 * Port: command. The diagnostic writes 3 through the broadcast window to enable
 * the timing pipes, and the standalone and kernel initialisation write a mask
 * built from a named unmask value; a read of each chip's own copy is defined.
 * The bit meanings are unknown.
 */
/* cmd: rw8, reset unknown; driver and diagnostic readings */
#define CMAP_CMD_OFFSET                              0x188u /* established */

/*
 * Port: status, read per chip. The loaders wait on it between runs of palette
 * writes: the older builds wait until bit 3 is set and the Octane build waits
 * until bit 2 is clear. Other bits are not read.
 */
/* status: r8, reset unknown; driver and diagnostic readings */
#define CMAP_STATUS_OFFSET                           0x208u /* established */
#define CMAP_STATUS_READY_SHIFT                      3 /* inferred */
#define CMAP_STATUS_READY_MASK                       0x1u
#define CMAP_STATUS_READY_INPLACE (CMAP_STATUS_READY_MASK << CMAP_STATUS_READY_SHIFT)
#define CMAP_STATUS_BUSY_SHIFT                       2 /* inferred */
#define CMAP_STATUS_BUSY_MASK                        0x1u
#define CMAP_STATUS_BUSY_INPLACE (CMAP_STATUS_BUSY_MASK << CMAP_STATUS_BUSY_SHIFT)

/*
 * Port: chip revision, read per chip. The diagnostic masks the low three bits,
 * requires at least REVISION_MIN, warns above REVISION_MAX_EXPECTED and
 * requires the two chips to agree.
 */
/* rev: r8, reset unknown; driver and diagnostic readings */
#define CMAP_REV_OFFSET                              0x308u /* established */
#define CMAP_REV_REVISION_SHIFT                      0 /* established */
#define CMAP_REV_REVISION_MASK                       0x7u
#define CMAP_REV_REVISION_INPLACE (CMAP_REV_REVISION_MASK << CMAP_REV_REVISION_SHIFT)

/*
 * Port: defined by the software's register layout as the last select; no
 * shipped use was read, and its role is unknown.
 */
/* reserved: rw8, reset unknown; driver and diagnostic readings */
#define CMAP_RESERVED_OFFSET                         0x388u /* inferred */

#define CMAP_CMD_ENABLE_TIMING_PIPES                 0x3u /* established */
#define CMAP_DCB_DEVICE_ALL                          0x3u /* inferred */
#define CMAP_DCB_DEVICE_CMAP0                        0x4u /* established */
#define CMAP_DCB_DEVICE_CMAP1                        0x5u /* established */
#define CMAP_ENTRIES                                 0x2000u /* established */
#define CMAP_ENTRY_BITS                              0x18u /* inferred */
#define CMAP_REVISION_MAX_EXPECTED                   0x4u /* established */
#define CMAP_REVISION_MIN                            0x2u /* established */

#endif /* CMAP_GEN_H */
