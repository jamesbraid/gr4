<!-- generated from devices/pp1/registers.toml by defs-gen - do not edit, change the source -->
<!-- SPDX-License-Identifier: BSD-3-Clause -->
<!-- defs-gen 4 -->
<!-- input sha256 e1a18a4b96ad72e5bdae304875b0f08c335204cf50091e4966771a1c1d3a89c5 -->

# display read buffer registers of the Impact graphics

Display read buffer registers of the Impact graphics subsystem.

Unit `pp1`, macro prefix `PP`.
Default source: driver readings.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Address spaces

| Space | Offset unit | Description |
|---|---|---|
| pp1_regs | register index |  |

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `pixel_command` | 0xf160 | w | 32 |  | pp1_regs | unknown | inferred | driver readings |
| `blend_factor` | 0xf165 | w | 32 |  | pp1_regs | unknown | inferred | driver readings |
| `stencil_mode` | 0xf166 | w | 32 |  | pp1_regs | unknown | inferred | driver readings |
| `stencil_mask` | 0xf167 | w | 32 |  | pp1_regs | unknown | inferred | driver readings |
| `depth_mode` | 0xf168 | w | 32 |  | pp1_regs | unknown | inferred | driver readings |
| `alpha_test_mode` | 0xf169 | w | 32 |  | pp1_regs | unknown | inferred | driver readings |
| `accumulation_mode` | 0xf16a | w | 32 |  | pp1_regs | unknown | inferred | driver readings |
| `blend_color_rg` | 0xf16b | w | 32 |  | pp1_regs | unknown | inferred | driver readings |
| `blend_color_ba` | 0xf16c | w | 32 |  | pp1_regs | unknown | inferred | driver readings |
| `drb_pointers` | 0xf16d | w | 32 |  | pp1_regs | unknown | inferred | driver readings |
| `drb_size` | 0xf16e | w | 32 |  | pp1_regs | unknown | inferred | driver readings |
| `tag_mode` | 0xf16f | w | 32 |  | pp1_regs | unknown | inferred | driver readings |
| `tag_data_red` | 0xf170 | r | 32 |  | pp1_regs | unknown | inferred | driver readings |
| `tag_data_green` | 0xf171 | r | 32 |  | pp1_regs | unknown | inferred | driver readings |
| `tag_data_blue` | 0xf172 | r | 32 |  | pp1_regs | unknown | inferred | driver readings |
| `tag_data_alpha` | 0xf173 | r | 32 |  | pp1_regs | unknown | inferred | driver readings |
| `tag_data_depth` | 0xf174 | r | 32 |  | pp1_regs | unknown | inferred | driver readings |
| `pixel_coordinate` | 0xf175 | w | 32 |  | pp1_regs | unknown | inferred | driver readings |
| `pixel_color_red` | 0xf176 | w | 32 |  | pp1_regs | unknown | inferred | driver readings |
| `pixel_color_green` | 0xf177 | w | 32 |  | pp1_regs | unknown | inferred | driver readings |
| `pixel_color_blue` | 0xf178 | w | 32 |  | pp1_regs | unknown | inferred | driver readings |
| `pixel_color_alpha` | 0xf179 | w | 32 |  | pp1_regs | unknown | inferred | driver readings |
| `pixel_color_accumulation` | 0xf17a | w | 32 |  | pp1_regs | unknown | inferred | driver readings |
| `window_mode` | 0xf17b | w | 32 |  | pp1_regs | unknown | inferred | driver readings |
| `main_buffer_select` | 0xf17e | w | 32 |  | pp1_regs | unknown | inferred | driver readings |
| `overlay_buffer_select` | 0xf17f | w | 32 |  | pp1_regs | unknown | inferred | driver readings |

### Register `pixel_command`

Pixel command: starts a pixel-processor operation. Role inferred from the hand-written header, not measured.

### Register `blend_factor`

Source and destination blend factors. Source in bits 3:0, destination in bits 7:4; the encodings are inferred. Role inferred from the hand-written header, not measured.

### Register `stencil_mode`

Stencil test function and operations. Role inferred from the hand-written header, not measured.

### Register `stencil_mask`

Stencil read and write mask. Role inferred from the hand-written header, not measured.

### Register `depth_mode`

Depth test function and depth write enable. Role inferred from the hand-written header, not measured.

### Register `alpha_test_mode`

Alpha test function and reference value. Role inferred from the hand-written header, not measured.

### Register `accumulation_mode`

Accumulation buffer control. Role inferred from the hand-written header, not measured.

### Register `blend_color_rg`

Constant blend colour, red and green. Role inferred from the hand-written header, not measured.

### Register `blend_color_ba`

Constant blend colour, blue and alpha. Role inferred from the hand-written header, not measured.

### Register `drb_pointers`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 19:10 | `page_b` | established |  | driver readings |  |
| 9:0 | `page_a` | established |  | driver readings |  |

### Register `drb_size`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 10 | `auto_flush_off` | inferred |  | driver readings |  |
| 9:8 | `dma_line_count_mask` | inferred |  | driver readings |  |
| 7:6 | `raster_engines_minus_1` | established |  | driver readings |  |
| 5:2 | `tile_columns_36bit` | established |  | driver readings | Formerly xtiles36. |
| 1:0 | `tile_columns_9bit` | established |  | driver readings | Formerly xtiles9. |

### Register `tag_mode`

Tag readback mode control. Role inferred from the hand-written header, not measured.

### Register `tag_data_red`

Tag readback data, red. Role inferred from the hand-written header, not measured.

### Register `tag_data_green`

Tag readback data, green. Role inferred from the hand-written header, not measured.

### Register `tag_data_blue`

Tag readback data, blue. Role inferred from the hand-written header, not measured.

### Register `tag_data_alpha`

Tag readback data, alpha. Role inferred from the hand-written header, not measured.

### Register `tag_data_depth`

Tag readback data, depth. Role inferred from the hand-written header, not measured.

### Register `pixel_coordinate`

Coordinate of the pixel that the direct pixel colour registers address, y in the high half and x in the low half. Role inferred from the hand-written header, not measured.

### Register `pixel_color_red`

Direct pixel colour write, red. Role inferred from the hand-written header, not measured.

### Register `pixel_color_green`

Direct pixel colour write, green. Role inferred from the hand-written header, not measured.

### Register `pixel_color_blue`

Direct pixel colour write, blue. Role inferred from the hand-written header, not measured.

### Register `pixel_color_alpha`

Direct pixel colour write, alpha. Role inferred from the hand-written header, not measured.

### Register `pixel_color_accumulation`

Direct pixel colour write, accumulation. Role inferred from the hand-written header, not measured.

### Register `window_mode`

Pixel-processor window mode. Role inferred from the hand-written header, not measured.

### Register `main_buffer_select`

Front or back selection of the main display buffer. Role inferred from the hand-written header, not measured.

### Register `overlay_buffer_select`

Buffer selection of the overlay display buffer. Role inferred from the hand-written header, not measured.

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `DRB_POINTERS_COMMAND_WORD` | 0x196d04 | established | driver readings | kernel constant table |
| `DRB_SIZE_COMMAND_WORD` | 0x196e04 | established | driver readings | kernel constant table |

## Test vectors

A vector is a value recorded from a source. An example only shows the layout.

| Target | Value | Kind | Decoded |
|---|---|---|---|
| `drb_pointers` | 0x101c0 | vector | page_a=448, page_b=64 |
| `drb_pointers` | 0x380e0 | vector | page_a=224, page_b=224 |
| `drb_pointers` | 0x90240 | vector | page_a=576, page_b=576 |
| `drb_pointers` | 0xc8240 | vector | page_a=576, page_b=800 |
| `drb_size` | 0x25a | vector | tile_columns_9bit=2, tile_columns_36bit=6, raster_engines_minus_1=1, dma_line_count_mask=2, auto_flush_off=0 |
| `drb_size` | 0x31a | vector | tile_columns_9bit=2, tile_columns_36bit=6, raster_engines_minus_1=0, dma_line_count_mask=3, auto_flush_off=0 |
