/*
 * TE1_DECODE.h - texture RAM revision words of the Impact graphics subsystem
 * (publish-safe decode header)
 *
 * Derivation. The Octane standalone diagnostic's texture-RAM test reads two
 * revision words per raster subsystem and compares the first with an
 * expected value. A healthy first subsystem in a published transcript shows
 * the two values below; a failing sample read 0x1401 where the high half
 * should be 0x1c01. Grade: established that these are the values the
 * diagnostic expects and the transcript shows; how the words split into
 * fields is not known, so none is placed. No register offset is stated.
 */
#ifndef TE1_DECODE_H
#define TE1_DECODE_H

#include <stdint.h>

#define TE_TRAM_REV_WORD0 0x1c011401 /* established, diagnostic */
#define TE_TRAM_REV_WORD1 0x0c000400 /* established, diagnostic */
#define TE_TRAM_REV_WORD0_LOW_HALF 0x1401 /* established, diagnostic */
#define TE_TRAM_REV_WORD0_HIGH_HALF 0x1c01 /* established, diagnostic */

#endif
