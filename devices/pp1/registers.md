<!-- generated from devices/pp1/registers.toml by defs-gen - do not edit, change the source -->
<!-- SPDX-License-Identifier: BSD-3-Clause -->
<!-- defs-gen 2 -->
<!-- input sha256 7740e32432c1d5eaacd28ec8c352e6e097293c4022bb488b99ba718ef273eeec -->

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
| `drb_pointers` | 0xf16d | w | 32 |  | pp1_regs | unknown | inferred | driver readings |
| `drb_size` | 0xf16e | w | 32 |  | pp1_regs | unknown | inferred | driver readings |

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
| 5:2 | `xtiles36` | established |  | driver readings |  |
| 1:0 | `xtiles9` | established |  | driver readings |  |

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
| `drb_size` | 0x25a | vector | xtiles9=2, xtiles36=6, raster_engines_minus_1=1, dma_line_count_mask=2, auto_flush_off=0 |
| `drb_size` | 0x31a | vector | xtiles9=2, xtiles36=6, raster_engines_minus_1=0, dma_line_count_mask=3, auto_flush_off=0 |
