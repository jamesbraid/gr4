/*
 * TE1_DECODE.h - texture RAM revision words of the Impact graphics subsystem
 * (publish-safe decode header)
 *
 * Derivation. The Octane standalone diagnostic's texture-RAM test reads two
 * revision words per raster subsystem and compares the first with an
 * expected value. A healthy first subsystem in a published transcript shows
 * the two values below; a failing sample read 0x00001401 where the high half
 * should be 0x00001c01. Grade: established that these are the values the
 * diagnostic expects and the transcript shows; how the words split into
 * fields is not known, so none is placed.
 *
 * Loader registers. The texture loader and the sampler are programmed through
 * the same window of numbered registers as the raster engine. A REG offset here
 * is a fixed bias plus the register number; the bias keeps this header clear of
 * the other decode headers and is bookkeeping, not hardware. No byte address
 * is stated. The register numbers were read from the shipped OpenGL library's
 * texture load, read and copy routines (mode, spec and sampler mipmap
 * registers appear in them as constants) and from the kernel's page restore
 * path (start address and start page, inferred from the traced write order).
 * The loader mode word is composed by one library routine from fields of the
 * texture object; two traced values reproduce from its inputs.
 */
#ifndef TE1_DECODE_H
#define TE1_DECODE_H

#include <stdint.h>

/* REG: TE.tx_mipmap 0xf191 w32 reset=unknown established */
/* REG: TE.tl_mode 0xf1a1 w32 reset=unknown established */
/* REG: TE.tl_spec 0xf1a2 w32 reset=unknown established */
/* REG: TE.tl_addr 0xf1a3 w32 reset=unknown inferred */
/* REG: TE.tl_mipmap 0xf1a4 w32 reset=unknown inferred */

/* Loader mode word. Bits not listed here are not placed. */
/* FIELD: TE.tl_mode.components_minus_1 2:1 inferred */
#define TE_TL_MODE_COMPONENTS_MINUS_1_SHIFT 1
#define TE_TL_MODE_COMPONENTS_MINUS_1_MASK  0x3u
/* FIELD: TE.tl_mode.cell_slot 4:3 inferred */
#define TE_TL_MODE_CELL_SLOT_SHIFT 3
#define TE_TL_MODE_CELL_SLOT_MASK  0x3u
/* FIELD: TE.tl_mode.component_depth 6:5 inferred */
#define TE_TL_MODE_COMPONENT_DEPTH_SHIFT 5
#define TE_TL_MODE_COMPONENT_DEPTH_MASK  0x3u
/* FIELD: TE.tl_mode.flag8 8:8 inferred */
#define TE_TL_MODE_FLAG8_SHIFT 8
#define TE_TL_MODE_FLAG8_MASK  0x1u
/* FIELD: TE.tl_mode.enables 12:9 inferred */
#define TE_TL_MODE_ENABLES_SHIFT 9
#define TE_TL_MODE_ENABLES_MASK  0xfu
/* FIELD: TE.tl_mode.bit14 14:14 inferred */
#define TE_TL_MODE_BIT14_SHIFT 14
#define TE_TL_MODE_BIT14_MASK  0x1u
/* FIELD: TE.tl_mode.fixed 18:16 established */
#define TE_TL_MODE_FIXED_SHIFT 16
#define TE_TL_MODE_FIXED_MASK  0x7u

/*
 * Mode word notes. fixed always reads 3 (the composing routine clears the three
 * bits and sets the low two). bit14 is set on every traced load. enables is the
 * four border enables: an ordinary load sets bits 11, 10 and 9 and clears bit
 * 12, a load with border texels clears bit 10 and sets bit 12 (established from
 * the routine and the two traced values); which enable is which loader border
 * mode is unknown, and so are their names. The meanings of the other fields
 * are read from the object fields the routine copies, so they are inferred.
 *
 * TESTVEC: 0x34e26 as TE.tl_mode => components_minus_1=3, cell_slot=0, component_depth=1, flag8=0, enables=7, bit14=1, fixed=3
 * TESTVEC: 0x35a26 as TE.tl_mode => components_minus_1=3, cell_slot=0, component_depth=1, flag8=0, enables=13, bit14=1, fixed=3
 */

#define TE_TRAM_REV_WORD0 0x1c011401 /* established, diagnostic */
#define TE_TRAM_REV_WORD1 0x0c000400 /* established, diagnostic */
#define TE_TRAM_REV_WORD0_LOW_HALF 0x00001401 /* established, diagnostic */
#define TE_TRAM_REV_WORD0_HIGH_HALF 0x00001c01 /* established, diagnostic */

#endif
