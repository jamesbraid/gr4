<!-- generated from devices/te1/registers.toml by defs-gen - do not edit, change the source -->
<!-- SPDX-License-Identifier: BSD-3-Clause -->
<!-- defs-gen 2 -->
<!-- input sha256 13f53acf9b97e4eaa1c0e9c42d6ae6bb94348a4f7f842d8c919098013fc9f000 -->

# texture engine and texture RAM registers of the Impact graphics subsystem

Texture engine and texture RAM registers and loader registers of the Impact graphics subsystem.

Unit `te1`, macro prefix `TE`.
Default source: driver readings.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Address spaces

| Space | Offset unit | Description |
|---|---|---|
| te1_regs | register index |  |

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `texture_mode_drawn` | 0xf180 | rw | 32 |  | te1_regs | unknown | inferred | driver readings |
| `texture_size` | 0xf181 | rw | 32 |  | te1_regs | unknown | inferred | driver readings |
| `texture_manager_init` | 0xf182 | rw | 32 |  | te1_regs | unknown | inferred | driver readings |
| `texture_lod` | 0xf183 | rw | 32 |  | te1_regs | unknown | inferred | driver readings |
| `texture_border_color_rg` | 0xf184 | rw | 32 |  | te1_regs | unknown | inferred | driver readings |
| `texture_border_color_ba` | 0xf185 | rw | 32 |  | te1_regs | unknown | inferred | driver readings |
| `texture_base` | 0xf186 | rw | 32 |  | te1_regs | unknown | inferred | driver readings |
| `texture_ram_control` | 0xf187 | rw | 32 |  | te1_regs | unknown | inferred | driver readings |
| `max_pixel_rg` | 0xf188 | rw | 32 |  | te1_regs | unknown | inferred | driver readings |
| `max_pixel_ba` | 0xf189 | rw | 32 |  | te1_regs | unknown | inferred | driver readings |
| `multi_dimensional_texture_addressing` | 0xf18a | rw | 32 |  | te1_regs | unknown | inferred | driver readings |
| `texture_read_buffer` | 0xf18b | rw | 32 |  | te1_regs | unknown | inferred | driver readings |
| `texture_clamp_size` | 0xf18c | rw | 32 |  | te1_regs | unknown | established | driver readings |
| `texture_engine_reset` | 0xf18e | w | 32 |  | te1_regs | unknown | inferred | driver readings |
| `texture_level_table_index` | 0xf190 | rw | 32 |  | te1_regs | unknown | inferred | driver readings |
| `texture_detail_block` | 0xf192 | rw | 32 |  | te1_regs | unknown | inferred | driver readings |
| `texture_border_block` | 0xf193 | rw | 32 |  | te1_regs | unknown | inferred | driver readings |
| `detailscale` | 0xf194 | rw | 32 |  | te1_regs | unknown | inferred | driver readings |
| `texture_engine_revision` | 0xf196 | r | 32 |  | te1_regs | unknown | inferred | driver readings |
| `texture_loader_write_buffer` | 0xf1a0 | w | 32 |  | te1_regs | unknown | inferred | driver readings |
| `texture_loader_mode` | 0xf1a1 | w | 32 |  | te1_regs | unknown | established | driver readings |
| `texture_loader_level_spec` | 0xf1a2 | w | 32 |  | te1_regs | unknown | established | driver readings |
| `texture_loader_index` | 0xf1a3 | w | 32 |  | te1_regs | unknown | inferred | driver readings |
| `texture_loader_mipmap_block` | 0xf1a4 | w | 32 |  | te1_regs | unknown | inferred | driver readings |
| `texture_loader_border_block` | 0xf1a5 | w | 32 |  | te1_regs | unknown | inferred | driver readings |
| `texture_loader_video_capture_start` | 0xf1a6 | w | 32 |  | te1_regs | unknown | inferred | driver readings |
| `texture_loader_base_block` | 0xf1a7 | w | 32 |  | te1_regs | unknown | inferred | driver readings |
| `texture_loader_copy_width` | 0xf1a9 | w | 32 |  | te1_regs | unknown | inferred | driver readings |
| `texture_loader_copy_height` | 0xf1aa | w | 32 |  | te1_regs | unknown | inferred | driver readings |
| `texture_loader_copy_left` | 0xf1ab | w | 32 |  | te1_regs | unknown | inferred | driver readings |
| `texture_loader_copy_bottom` | 0xf1ac | w | 32 |  | te1_regs | unknown | inferred | driver readings |

### Register `texture_mode_drawn`

Texture mode for the drawn texture: component depth, filters, wrap and the
no-border flag. The diagnostic's mask is 25 bits. The field positions are the
client's encodings, graded per field; what the board does with each field is
inferred. Bit 16 is set on every texture the client has been seen to draw with,
and its meaning is unknown. Formerly texmode2.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 19 | `mipmap_active_copy` | inferred |  | driver readings |  |
| 16 | `no_border` | unknown |  | driver readings |  |
| 14 | `clamp_is_gl_clamp` | inferred |  | driver readings |  |
| 13 | `r_clamp` | inferred |  | driver readings |  |
| 12 | `t_clamp` | inferred |  | driver readings |  |
| 11 | `s_clamp` | inferred |  | driver readings |  |
| 8 | `min_within_level` | inferred |  | driver readings |  |
| 7 | `mag_linear` | inferred |  | driver readings |  |
| 6 | `min_between_levels` | inferred |  | driver readings |  |
| 5 | `mipmap_active` | inferred |  | driver readings |  |
| 4 | `multibuffer_hint` | inferred |  | driver readings |  |
| 3:2 | `depth_code` | inferred |  | driver readings |  |

### Register `texture_size`

Log2 sizes of the base level and the detail level code. The diagnostic's mask
is 23 bits. The client writes the width and height fields twice, in the low and
high nibbles of each pair, with the same value. Formerly txsize.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 22:19 | `depth_log2` | inferred |  | driver readings |  |
| 18:16 | `detail_level_code` | inferred |  | driver readings |  |
| 15:12 | `height_log2_copy` | inferred |  | driver readings |  |
| 11:8 | `width_log2_copy` | inferred |  | driver readings |  |
| 7:4 | `height_log2` | inferred |  | driver readings |  |
| 3:0 | `width_log2` | inferred |  | driver readings |  |

### Register `texture_manager_init`

Written only by the client's texture-manager initialisation. The diagnostic's
mask is 26 bits. Its meaning is unknown. Formerly txtile.

### Register `texture_lod`

Level-of-detail clamp. The minimum level is sent as the level times 64, with six
fraction bits. The diagnostic's mask is 21 bits, so bits 25 to 21 of the client's
word are outside the mask and their meaning is unknown. Formerly txlod.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 25:16 | `min_lod_64ths` | inferred |  | driver readings |  |
| 15:10 | `context_bits` | unknown |  | driver readings |  |
| 3:0 | `last_level` | inferred |  | driver readings |  |

### Register `texture_border_color_rg`

Texture border colour, red and green, 12 bits a component, laid out like the
environment colour. Formerly txbcolor_rg.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `green` | inferred |  | driver readings |  |
| 11:0 | `red` | inferred |  | driver readings |  |

### Register `texture_border_color_ba`

Texture border colour, blue and alpha, 12 bits a component, laid out like the
environment colour. Formerly txbcolor_ba.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `alpha` | inferred |  | driver readings |  |
| 11:0 | `blue` | inferred |  | driver readings |  |

### Register `texture_base`

Per-context base block in texture RAM. The client does not write it. The
kernel's base write is inferred to land here. Formerly txbase.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7:0 | `base_block` | inferred |  | driver readings |  |

### Register `texture_ram_control`

Texture RAM control, 20 bits in the diagnostic's mask. Its meaning is unknown. Formerly tram_cntrl.

### Register `max_pixel_rg`

Maximum pixel clamp, red and green, 24 bits in the diagnostic's mask. The
client writes it once in its texture-manager initialisation. Its meaning is
unknown.

### Register `max_pixel_ba`

Maximum pixel clamp, blue and alpha, 24 bits in the diagnostic's mask. Its
meaning is unknown.

### Register `multi_dimensional_texture_addressing`

Multi-dimensional texture addressing, 29 bits in the diagnostic's mask. Used
for volume and four-dimensional textures only. The field layout is fitted to a
single volume load and is inferred. Formerly mddma_cntrl.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 29:26 | `depth_term` | inferred |  | driver readings |  |
| 25:23 | `block_pair_log2` | inferred |  | driver readings |  |
| 17:14 | `size3_log2` | inferred |  | driver readings |  |
| 13:10 | `size2_log2` | inferred |  | driver readings |  |
| 9:6 | `size1_log2` | inferred |  | driver readings |  |
| 5:2 | `size0_log2` | inferred |  | driver readings |  |

### Register `texture_read_buffer`

Texture read buffer select, one bit. The client writes it together with the
complement in the loader's write-buffer register. The board's use is inferred
from the register name. Formerly texrbuffer.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 0 | `buffer` | inferred |  | driver readings |  |

### Register `texture_clamp_size`

Clamp limits in texels: the base level's width and height without a border,
shifted left by the first level. The client computes the word as the width
shifted left 13 bits, OR'd with the height. The height field is 13 bits wide,
so a height of 8192 reads back as zero. Formerly txclampsize.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 25:13 | `clamp_width` | inferred |  | driver readings |  |
| 12:0 | `clamp_height` | inferred |  | driver readings |  |

### Register `texture_engine_reset`

Texture engine soft-reset strobe, 3 bits in the diagnostic's mask. The client
does not write it. Formerly te_reset.

### Register `texture_level_table_index`

Index into the level tables. The client writes zero before it streams a table
through the indexed-write token, and advances one entry per table write. The
diagnostic's mask is 5 bits. Formerly txaddr.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 4:0 | `index` | inferred |  | driver readings |  |

### Register `texture_detail_block`

First block of the detail texture, 9 bits in the diagnostic's mask. Formerly txdetail.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 8:0 | `block` | inferred |  | driver readings |  |

### Register `texture_border_block`

Border block of each level, streamed through the level table with the index
register. The diagnostic's mask is 9 bits. Formerly txborder.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7:0 | `block` | inferred |  | driver readings |  |

### Register `detailscale`

Detail weight by level of detail: a 32-entry table of 6-bit values, filled
through the indexed-write token. The client's default fills the table with 31,
31, 31, 29, 28 down to 1. The diagnostic's mask is 6 bits.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 5:0 | `value` | inferred |  | driver readings |  |

### Register `texture_engine_revision`

Texture engine revision, 29 bits in the diagnostic's mask. The client does not
write it. The diagnostic identifies revisions by a render checksum instead, see
the checksum constants below. Formerly tevers.

### Register `texture_loader_write_buffer`

Texture loader write-buffer select, one bit. The client writes it with the
complement of the read-buffer bit. Formerly tl_wbuffer.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 0 | `buffer` | inferred |  | driver readings |  |

### Register `texture_loader_mode`

Formerly tl_mode.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 18:16 | `fixed` | established |  | driver readings |  |
| 14 | `field_14` | inferred |  | driver readings | Formerly bit14. |
| 12:9 | `enables` | inferred |  | driver readings |  |
| 8 | `field_8` | inferred |  | driver readings | Formerly flag8. |
| 6:5 | `component_depth` | inferred |  | driver readings |  |
| 4:3 | `cell_slot` | inferred |  | driver readings |  |
| 2:1 | `components_minus_1` | inferred |  | driver readings |  |

### Register `texture_loader_level_spec`

Level being loaded: its number and its log2 width and height. The client sends
the level's own size here, not the destination corners of the transfer. Formerly tl_spec.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11:8 | `log2_height` | inferred |  | driver readings |  |
| 7:4 | `log2_width` | inferred |  | driver readings |  |
| 3:0 | `level` | inferred |  | driver readings |  |

### Register `texture_loader_index`

Formerly tl_addr.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 3:0 | `index` | inferred |  | driver readings |  |

### Register `texture_loader_mipmap_block`

First block of a level, with a per-image flag bit. The diagnostic's mask is 9
bits. The client's copy path sends it; an ordinary load does not. Formerly tl_mipmap.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 8 | `flag` | inferred |  | driver readings |  |
| 7:0 | `block` | inferred |  | driver readings |  |

### Register `texture_loader_border_block`

Border block of a level, 9 bits in the diagnostic's mask. Formerly tl_border.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7:0 | `block` | inferred |  | driver readings |  |

### Register `texture_loader_video_capture_start`

Video-to-texture capture start, one bit. The client does not write it; the
kernel's video path does. Formerly tl_vidcntrl.

### Register `texture_loader_base_block`

Base block of the texture being loaded, 8 bits in the diagnostic's mask. Formerly tl_base.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7:0 | `base_block` | inferred |  | driver readings |  |

### Register `texture_loader_copy_width`

Copy rectangle width for a framebuffer copy, 14 bits in the diagnostic's mask. Formerly tl_s_size.

### Register `texture_loader_copy_height`

Copy rectangle height for a framebuffer copy, 14 bits in the diagnostic's mask. Formerly tl_t_size.

### Register `texture_loader_copy_left`

Copy rectangle left edge for a framebuffer copy, 14 bits in the diagnostic's mask. Formerly tl_s_left.

### Register `texture_loader_copy_bottom`

Copy rectangle bottom edge for a framebuffer copy, 14 bits in the diagnostic's mask. Formerly tl_t_bottom.

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `TE_REV_B_1TRAM_CHECKSUM` | 0xbdfc48fc | inferred | driver readings | render checksum the diagnostic expects from texture engine revision B with one texture RAM unit |
| `TE_REV_B_4TRAM_CHECKSUM` | 0x236379000 | inferred | driver readings | render checksum the diagnostic expects from texture engine revision B with four texture RAM units |
| `TE_REV_D_CHECKSUM` | 0x2aa70d210 | inferred | driver readings | render checksum the diagnostic expects from texture engine revision D |
| `TRAM_BLOCKS_PER_PATH` | 0x100 | established | driver readings | texture blocks each raster path's texture RAM is divided into; the kernel's block table has 256 entries |
| `TRAM_BLOCK_SIZE_SHIFT` | 0xc | established | driver readings | a block is the unit count shifted left by this many bits, so four units give 16 KiB blocks |
| `TRAM_TEXTURE_BYTES` | 0x400000 | established | driver readings | texture memory of one TRAM ASIC, one per texture engine; OCTANE Technical Report section 4.2.5 |
| `TRAM_WORD_0` | 0x1c011401 | established | diagnostic transcript | diagnostic. Formerly TRAM_REV_WORD0. |
| `TRAM_WORD_0_HIGH_HALF` | 0x1c01 | established | diagnostic transcript | diagnostic. Formerly TRAM_REV_WORD0_HIGH_HALF. |
| `TRAM_WORD_0_LOW_HALF` | 0x1401 | established | diagnostic transcript | diagnostic. Formerly TRAM_REV_WORD0_LOW_HALF. |
| `TRAM_WORD_1` | 0xc000400 | established | diagnostic transcript | diagnostic. Formerly TRAM_REV_WORD1. |

## Test vectors

A vector is a value recorded from a source. An example only shows the layout.

| Target | Value | Kind | Decoded |
|---|---|---|---|
| `texture_loader_mode` | 0x34e26 | vector | components_minus_1=3, cell_slot=0, component_depth=1, field_8=0, enables=7, field_14=1, fixed=3 |
| `texture_loader_mode` | 0x35a26 | vector | components_minus_1=3, cell_slot=0, component_depth=1, field_8=0, enables=13, field_14=1, fixed=3 |
