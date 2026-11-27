<!-- generated from devices/re4/registers.toml by defs-gen - do not edit, change the source -->
<!-- SPDX-License-Identifier: BSD-3-Clause -->
<!-- defs-gen 4 -->
<!-- input sha256 1b5af358b19e14d139e18cfb571e76a2c710c2bb878034e96c4992aceccb6bec -->

# raster engine register contract for the Impact graphics

Raster engine registers of the Impact graphics subsystem.

Unit `re4`, macro prefix `RE`.
Default source: driver and traffic readings.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Address spaces

| Space | Offset unit | Description |
|---|---|---|
| re4_regs | register index |  |

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `tri_x_major` | 0xe000 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `tri_x_upper` | 0xe001 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `tri_x_lower` | 0xe002 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `tri_y_top` | 0xe003 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `tri_y_mid` | 0xe004 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `tri_y_bottom` | 0xe005 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `tri_slope_major_hi` | 0xe006 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `tri_slope_major_lo` | 0xe007 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `tri_slope_upper_hi` | 0xe008 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `tri_slope_upper_lo` | 0xe009 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `tri_slope_lower_hi` | 0xe00a | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `tri_slope_lower_lo` | 0xe00b | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `aaline_x_start` | 0xe00c | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `aaline_y_start` | 0xe00d | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `aaline_x_end` | 0xe00e | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `aaline_y_end` | 0xe00f | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `aaline_dx` | 0xe010 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `aaline_dy` | 0xe011 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `aaline_adjust` | 0xe012 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `instr` | 0xe013 | w | 32 |  | re4_regs | unknown | established | driver and traffic readings |
| `line_xy_start` | 0xe040 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `line_xy_end` | 0xe041 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `line_step_a` | 0xe042 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `line_step_b` | 0xe043 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `line_error_octant` | 0xe044 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `instr_alias` | 0xe045 | w | 32 |  | re4_regs | unknown | established | OpenBSD impact(4) driver register header |
| `block_xy_start` | 0xe046 | w | 32 |  | re4_regs | unknown | inferred | OpenBSD impact(4) driver register header |
| `block_xy_end` | 0xe047 | w | 32 |  | re4_regs | unknown | inferred | OpenBSD impact(4) driver register header |
| `block_xy_move` | 0xe048 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `block_saved_octant` | 0xe049 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `color_packed` | 0xe05b | w | 32 |  | re4_regs | unknown | inferred | OpenBSD impact(4) driver register header |
| `color_red` | 0xe05c | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `color_green` | 0xe05d | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `color_blue` | 0xe05e | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `color_alpha` | 0xe05f | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `color_red_edge` | 0xe060 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `color_red_span` | 0xe061 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `color_green_edge` | 0xe062 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `color_green_span` | 0xe063 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `color_blue_edge` | 0xe064 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `color_blue_span` | 0xe065 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `color_alpha_edge` | 0xe066 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `color_alpha_span` | 0xe067 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `depth_hi` | 0xe068 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `depth_lo` | 0xe069 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `depth_span_hi` | 0xe06a | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `depth_span_lo` | 0xe06b | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `depth_edge_hi` | 0xe06c | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `depth_edge_lo` | 0xe06d | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `glyph_hi` | 0xe070 | w | 32 |  | re4_regs | unknown | inferred | OpenBSD impact(4) driver register header |
| `glyph_lo` | 0xe071 | w | 32 |  | re4_regs | unknown | inferred | OpenBSD impact(4) driver register header |
| `xfer_abort` | 0xe100 | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `xfer_control` | 0xe102 | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `fill_mode` | 0xe110 | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `texture_mode_first` | 0xe111 | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `config` | 0xe112 | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `scissor_x` | 0xe113 | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `scissor_y` | 0xe114 | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `window_origin` | 0xe115 | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `background_rg` | 0xe140 | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `background_ba` | 0xe141 | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `texenv_rg` | 0xe142 | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `texenv_b` | 0xe143 | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `fog_rg` | 0xe144 | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `fog_b` | 0xe145 | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `aaline_config` | 0xe146 | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `screen_mask1_x` | 0xe147 | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `screen_mask1_y` | 0xe148 | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `screen_mask2_x` | 0xe149 | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `screen_mask2_y` | 0xe14a | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `screen_mask3_x` | 0xe14b | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `screen_mask3_y` | 0xe14c | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `screen_mask4_x` | 0xe14d | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `screen_mask4_y` | 0xe14e | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `window_mode` | 0xe14f | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `xfer_size` | 0xe153 | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `xfer_zoom_init` | 0xe154 | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `xfer_zoom_step` | 0xe155 | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `xfer_mask_lo` | 0xe156 | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `xfer_mask_hi` | 0xe157 | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `xfer_counters` | 0xe158 | r | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `xfer_mode` | 0xe159 | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `line_stipple_pattern` | 0xe15a | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `line_stipple_repeat` | 0xe15b | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `device_addr` | 0xe15c | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `device_data` | 0xe15d | rw | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `status` | 0xe15e | r | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `toggle_context` | 0xe15f | w | 32 |  | re4_regs | unknown | inferred | driver and traffic readings |
| `pp1_fill_mode` | 0xe161 | w | 32 |  | re4_regs | unknown | inferred | OpenBSD impact(4) driver register header |

### Register `tri_x_major`

### Register `tri_x_upper`

### Register `tri_x_lower`

### Register `tri_y_top`

### Register `tri_y_mid`

### Register `tri_y_bottom`

### Register `tri_slope_major_hi`

### Register `tri_slope_major_lo`

### Register `tri_slope_upper_hi`

### Register `tri_slope_upper_lo`

### Register `tri_slope_lower_hi`

### Register `tri_slope_lower_lo`

### Register `aaline_x_start`

### Register `aaline_y_start`

### Register `aaline_x_end`

### Register `aaline_y_end`

### Register `aaline_dx`

### Register `aaline_dy`

### Register `aaline_adjust`

### Register `instr`

Instruction register. A write that asks for execution runs the primitive
it selects after the value lands. A second number reaches the same
register for the 2D primitives.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 4 | `setup` | established |  | driver and traffic readings |  |
| 3:0 | `opcode` | established | area_left_to_right=0, area_right_to_left=1, aaline=2, point=4, line=5, block=8 | driver and traffic readings |  |

### Register `line_xy_start`

### Register `line_xy_end`

### Register `line_step_a`

### Register `line_step_b`

### Register `line_error_octant`

### Register `instr_alias`

The public driver writes 0x18 here with the execute mark to start a rectangle
fill or to arm a glyph rectangle, which is the block primitive above. Software
expectation; what the board does with the alias is not decoded here.

### Register `block_xy_start`

Start corner of a 2D block as the public driver packs it: x in bits 31:16 and
y in bits 15:0. Software expectation.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:16 | `x` | inferred |  | OpenBSD impact(4) driver register header |  |
| 15:0 | `y` | inferred |  | OpenBSD impact(4) driver register header |  |

### Register `block_xy_end`

Inclusive end corner of a 2D block, x in bits 31:16 and y in bits 15:0. The
public driver sends the last column and row the block covers, so a block of
width w ends at x + w - 1. Software expectation.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:16 | `x` | inferred |  | OpenBSD impact(4) driver register header |  |
| 15:0 | `y` | inferred |  | OpenBSD impact(4) driver register header |  |

### Register `block_xy_move`

### Register `block_saved_octant`

### Register `color_packed`

Packed colour the public driver uses for rectangle fills and glyph foreground.
Software expectation.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:16 | `blue` | inferred |  | OpenBSD impact(4) driver register header |  |
| 15:8 | `green` | inferred |  | OpenBSD impact(4) driver register header |  |
| 7:0 | `red` | inferred |  | OpenBSD impact(4) driver register header |  |

### Register `color_red`

### Register `color_green`

### Register `color_blue`

### Register `color_alpha`

### Register `color_red_edge`

### Register `color_red_span`

### Register `color_green_edge`

### Register `color_green_span`

### Register `color_blue_edge`

### Register `color_blue_span`

### Register `color_alpha_edge`

### Register `color_alpha_span`

### Register `depth_hi`

### Register `depth_lo`

### Register `depth_span_hi`

### Register `depth_span_lo`

### Register `depth_edge_hi`

### Register `depth_edge_lo`

### Register `glyph_hi`

Glyph row data for console bitmaps. For widths one through eight the driver
arms one rectangle and executes this register once per row, with the row byte
in bits 31:24. For widths nine through sixteen it stages the 16-bit row shifted
left 16 bits without executing, so the row's leftmost eight columns sit in bits
31:24. Software expectation; the column order and the one-row advance per
execute are inferred from the driver loop.

### Register `glyph_lo`

Second glyph word. For widths nine through sixteen the driver writes the row
shifted left 24 bits here and executes it to draw that one row, so the top byte
carries columns eight through fifteen. Software expectation; the column mapping
is inferred from the driver's packing.

### Register `xfer_abort`

### Register `xfer_control`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 4 | `busy` | inferred |  | driver and traffic readings |  |
| 3 | `read` | inferred |  | driver and traffic readings |  |
| 2 | `device` | inferred | framebuffer=0, texture_memory=1 | driver and traffic readings |  |
| 1 | `pio_start` | inferred |  | driver and traffic readings |  |
| 0 | `dma_start` | inferred |  | driver and traffic readings |  |

### Register `fill_mode`

Fill mode. Bits 3, 4, 5, 6, 7 and 10 and the block type are placed from
the drivers; the enables for shading, rounding, depth iteration and the
antialiasing of lines and points exist but are not placed.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 24:22 | `block_type` | inferred | glyph_data=0, stippled_block=1, pio_read=2, pio_write=3, dma_read=4, dma_write=5 | driver and traffic readings |  |
| 20 | `fast_fill` | inferred |  | driver and traffic readings |  |
| 10 | `skip_last_pixel` | inferred |  | driver and traffic readings |  |
| 7 | `line_advance` | inferred |  | driver and traffic readings |  |
| 6 | `line_opaque` | inferred |  | driver and traffic readings |  |
| 5 | `line_stipple` | inferred |  | driver and traffic readings |  |
| 4 | `glyph_opaque` | inferred |  | driver and traffic readings |  |
| 3 | `glyph_stipple` | inferred |  | driver and traffic readings |  |
| 0 | `poly_stipple` | inferred |  | driver and traffic readings |  |

### Register `texture_mode_first`

Texture mode, first word. The client clears bits 15 to 12 before it chooses the
colour table format. Its RGB-compatible table path then writes 0xe in that field.
Only that value is read from the client's code; the other values of the field
are not known. Formerly texmode1.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 18:16 | `depth_term` | inferred |  | driver and traffic readings | One for a texture with 12-bit components and four for any other depth. Reading the field as the count of blend units in use is inferred. |
| 15:12 | `colour_table` | inferred | none=0, alpha=1, intensity_or_luminance_alpha=9, rgb_lookup=14 | driver and traffic readings |  |
| 11:9 | `texel_class` | inferred | alpha=1, luminance=2, intensity=3, colour=4 | driver and traffic readings |  |
| 8:7 | `texture_ram_select` | inferred |  | driver and traffic readings | The client sends an undefined value here for RGB and RGBA textures, and a select for one- and two-component textures. What each select names is unknown. Formerly tram_select. |
| 6:5 | `texture_ram_size_code` | inferred |  | driver and traffic readings | Formerly tram_size_code. |
| 4:3 | `layout` | inferred | one_component=0, two_component=1, rgb=2, rgba=3 | driver and traffic readings |  |
| 2:1 | `environment` | inferred | modulate=0, decal=1, blend=2, alpha_only=3 | driver and traffic readings |  |
| 0 | `texture_enable` | inferred |  | driver and traffic readings |  |

### Register `config`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 4 | `line_round` | inferred |  | driver and traffic readings |  |
| 3 | `y_flip` | inferred |  | driver and traffic readings |  |
| 0 | `target_raster` | inferred |  | driver and traffic readings |  |

### Register `scissor_x`

### Register `scissor_y`

### Register `window_origin`

Window origin (XYWIN). OpenBSD's impact(4) header packs it as (y << 16) | x, so
x is the low half and y the high half. That is a software expectation from the
public driver, not a board measurement. The driver's one write sets x to 0 and
y to 0x3ff (1023). How the origin shifts RE_POINT and RE_LINE, and which way y
counts, is not settled here.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:16 | `y` | inferred |  | driver and traffic readings |  |
| 15:0 | `x` | inferred |  | driver and traffic readings |  |

### Register `background_rg`

Colours shared with the texture engine and double buffered. Opaque
stipples draw their zero bits in the background colour: in RGB modes it is
twelve bits per component, red lowest like the packed colour, green and
red in the first register and blue in the second; in colour-index modes
the index sits in the low twelve bits of the first.

### Register `background_ba`

### Register `texenv_rg`

### Register `texenv_b`

### Register `fog_rg`

### Register `fog_b`

### Register `aaline_config`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7:1 | `width` | inferred |  | driver and traffic readings |  |
| 0 | `smooth` | inferred |  | driver and traffic readings |  |

### Register `screen_mask1_x`

Screen mask 1, x range, written as x1 << 16 | (x2 - 1): x1 is the first column
and x2 the column past the last. The IRIX kernel writes this word for
each rectangle of a window's visible region, and the X server writes it for
each clip box. Established as those words. That the raster engine discards
pixels outside the box is inferred.

### Register `screen_mask1_y`

Screen mask 1, y range, written as (H - y2) << 16 | (H - 1 - y1): H is the
screen height (1024 in the X server's listing), y1 the first row and y2 the row
past the last, counted from the top. The high half counts rows from the bottom.
Established as the kernel's and the X server's words. That the raster engine
discards pixels outside the box is inferred.

### Register `screen_mask2_x`

Screen mask 2, x range, same encoding as screen_mask1_x. The kernel writes
masks 1 to 4 with this encoding (established as its words); the X server's
listing shows mask 1 only.

### Register `screen_mask2_y`

Screen mask 2, y range, same encoding as screen_mask1_y. Established for masks
1 to 4 as the kernel's words, as for the x range.

### Register `screen_mask3_x`

Screen mask 3, x range, same encoding as screen_mask1_x. Established as the
kernel's words for mask 3.

### Register `screen_mask3_y`

Screen mask 3, y range, same encoding as screen_mask1_y. Established as the
kernel's words for mask 3.

### Register `screen_mask4_x`

Screen mask 4, x range, same encoding as screen_mask1_x. The kernel's register
shadow holds mask 4 at 0x14d and 0x14e. Established as the kernel's words.

### Register `screen_mask4_y`

Screen mask 4, y range, same encoding as screen_mask1_y. Established as the
kernel's words for mask 4.

### Register `window_mode`

Window mode. Bits 3:0 enable masks 1 to 4, mask n at bit n-1. The kernel's clip
validation writes 0x11, 0x13, 0x17 or 0x1f for one to four visible rectangles,
so bit 4 is set for every count and bits 7:4 hold 1 (established, kernel words).
When a window field is zero the kernel writes 0x23 instead: masks 1 and 2, with
mode 2 in bits 7:4 (established; what mode 2 does is unknown). The X server
draws each primitive once per clip box, with 0x11 written here for each box and
0 after the last one (established, X server listing). That the raster engine
keeps only pixels inside the enabled boxes is inferred from that redraw.
The per-mask inside flags in the fields below are not settled. The kernel sets
only bit 4 when four masks are enabled, which fits one mode field in bits 7:4
better.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7 | `inside4` | inferred |  | driver and traffic readings |  |
| 6 | `inside3` | inferred |  | driver and traffic readings |  |
| 5 | `inside2` | inferred |  | driver and traffic readings |  |
| 4 | `inside1` | inferred |  | driver and traffic readings |  |
| 3 | `enable4` | inferred |  | driver and traffic readings |  |
| 2 | `enable3` | inferred |  | driver and traffic readings |  |
| 1 | `enable2` | inferred |  | driver and traffic readings |  |
| 0 | `enable1` | inferred |  | driver and traffic readings |  |

### Register `xfer_size`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:16 | `lines` | inferred |  | driver and traffic readings |  |
| 15:0 | `width` | inferred |  | driver and traffic readings |  |

### Register `xfer_zoom_init`

### Register `xfer_zoom_step`

Zoom words, 0x154 and 0x155 together: 8.8 fixed point, 0x100 is 1.0.
Established from the client library's host-to-raster routine
(`__glMgrInitHostToRSS`) and its pixel-zoom state setter (`__glMgrim_PixelZoom`),
both read in full; builds and addresses are in questions/README.md entry 9. The
setter keeps a mode code in bits 29:28 of a state word
(1 whole-number |z|, 2 non-whole |z| above 1, 3 |z| below 1), and the routine
picks one of four cases from the transfer kind and the x zoom z.
Kinds 5, 6 and 7 (span read and return) put 0x100 in both words and set
neither mode bit. A whole-number |z| above 1 puts trunc(256 |z|) in both words
and sets mode bit 19 of 0x159. Any |z| below 1, or a non-whole |z| above 1,
sets mode bit 20 and puts step = trunc(256 w n / D) in 0x155 and
((trunc(256 w n / step) - D) << 8) + step in 0x154. Here w is the source width,
D the destination extent the routine computed from the raster position and z,
and n the number of times the client has the geometry engine replicate each
source pixel (1 below one, else one of 2, 3, 4, 6, 12, 24 by the size of a
non-whole |z|). For an aligned draw D = w |z|, so step = trunc(256 n / |z|):
0x200 at 0.5, 0x155 at 1.5 and 0x13b at 3.25 in a 16-pixel draw. |z| = 1
writes neither word, so the registers carry whatever the stack held (the
traced 0x1000f424 with 0): inferred stale stack, not an encoding, with no mode
bit set. That the geometry engine does the replication, and what RE4 does with
each word, are inferred.

### Register `xfer_mask_lo`

### Register `xfer_mask_hi`

### Register `xfer_counters`

### Register `xfer_mode`

Transfer mode. Placed from what the drivers write: component type in 3:0,
pixel format in 7:4, begin skip bytes in 10:8, begin skip bits in 13:11,
stride skip bytes in 16:14 (three bits in every writer read), zoom in 19,
decimate in 20, RGB order in 22, and bit 23 set for every pixel draw.
Bit 19 is set by the client only for a whole-number x zoom above 1 and bit 20
for every other zoom except 1 (below 1, or non-whole above 1), neither at
zoom 1 (established, client library; see xfer_zoom_step), so bit 20 marks the
step form of the zoom words, not only a zoom below 1.
Bits 17 and 18 are one-bit flags the shipped library sets or clears (it
sets 18 in its default state and clears 17 to 20 in the copy paths); what
they do is not known, and the unpack-order and read-mask flags are among
bits 17, 18 and 21. Bit 21 is never written by software examined.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23 | `opaque` | inferred |  | driver and traffic readings |  |
| 22 | `rgb_order` | inferred |  | driver and traffic readings |  |
| 20 | `decimate` | inferred |  | driver and traffic readings |  |
| 19 | `zoom` | inferred |  | driver and traffic readings |  |
| 18 | `field_18` | inferred |  | driver and traffic readings | Formerly flag18. |
| 17 | `field_17` | inferred |  | driver and traffic readings | Formerly flag17. |
| 16:14 | `stride_skip_bytes` | inferred |  | driver and traffic readings |  |
| 13:11 | `begin_skip_bits` | inferred |  | driver and traffic readings |  |
| 10:8 | `begin_skip_bytes` | inferred |  | driver and traffic readings |  |
| 7:4 | `format` | inferred | color_index=0, stencil=1, depth=2, rgb=7, rgba=8 | driver and traffic readings |  |
| 3:0 | `comp_type` | inferred |  | driver and traffic readings |  |

### Register `line_stipple_pattern`

### Register `line_stipple_repeat`

### Register `device_addr`

### Register `device_data`

### Register `status`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 10 | `pixel_busy` | inferred |  | driver and traffic readings |  |
| 9 | `raster_busy` | inferred |  | driver and traffic readings |  |
| 8 | `fifo_empty` | inferred |  | driver and traffic readings |  |
| 7:4 | `revision` | inferred |  | driver and traffic readings |  |
| 3:2 | `board_index` | inferred |  | driver and traffic readings |  |
| 1:0 | `chip_count` | inferred |  | driver and traffic readings |  |

### Register `toggle_context`

### Register `pp1_fill_mode`

Pixel-processor fill mode, written through the normal command FIFO under its own
selector. The public driver writes 0x0c006300 for a copy fill and 0x18006304 for an
XOR fill, each before the fill's execute. The bits those values set are not
decoded here.

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `XFER_ZOOM_UNITY` | 0x100 | established | driver and traffic readings |  |

## Test vectors

A vector is a value recorded from a source. An example only shows the layout.

| Target | Value | Kind | Decoded |
|---|---|---|---|
| `instr` | 0x15 | vector | opcode=5, setup=1 |
| `instr` | 0x18 | vector | opcode=8, setup=1 |
| `fill_mode` | 0x400018 | example | glyph_opaque=1, glyph_stipple=1, block_type=1 |
| `fill_mode` | 0x418008 | vector | glyph_stipple=1, block_type=1 |
| `xfer_mode` | 0x40080 | vector | comp_type=0, format=8, field_18=1, stride_skip_bytes=0 |
| `xfer_mode` | 0xc00080 | vector | comp_type=0, format=8, begin_skip_bytes=0, stride_skip_bytes=0, field_18=0, rgb_order=1, opaque=1 |
| `xfer_mode` | 0xc10080 | vector | comp_type=0, format=8, begin_skip_bytes=0, stride_skip_bytes=4, field_18=0, rgb_order=1, opaque=1 |
| `xfer_mode` | 0xc10480 | vector | comp_type=0, format=8, begin_skip_bytes=4, stride_skip_bytes=4, field_18=0, rgb_order=1, opaque=1 |
