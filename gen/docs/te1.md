# texture RAM revision words of the Impact graphics subsystem

<!-- generated from defs/te1.toml by defs-gen - do not edit, change the source -->

Texture RAM revision words and loader registers of the Impact graphics subsystem.

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
| `tx_mipmap` | 0xf191 | w | 32 |  | te1_regs | unknown | established | driver readings |
| `tl_mode` | 0xf1a1 | w | 32 |  | te1_regs | unknown | established | driver readings |
| `tl_spec` | 0xf1a2 | w | 32 |  | te1_regs | unknown | established | driver readings |
| `tl_addr` | 0xf1a3 | w | 32 |  | te1_regs | unknown | inferred | driver readings |
| `tl_mipmap` | 0xf1a4 | w | 32 |  | te1_regs | unknown | inferred | driver readings |
| `tl_border` | 0xf1a5 | w | 32 |  | te1_regs | unknown | inferred | driver readings |

### Register `tx_mipmap`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15:8 | `bank` | inferred |  | driver readings |  |
| 7:0 | `page` | inferred |  | driver readings |  |

### Register `tl_mode`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 18:16 | `fixed` | established |  | driver readings |  |
| 14 | `bit14` | inferred |  | driver readings |  |
| 12:9 | `enables` | inferred |  | driver readings |  |
| 8 | `flag8` | inferred |  | driver readings |  |
| 6:5 | `component_depth` | inferred |  | driver readings |  |
| 4:3 | `cell_slot` | inferred |  | driver readings |  |
| 2:1 | `components_minus_1` | inferred |  | driver readings |  |

### Register `tl_spec`

### Register `tl_addr`

### Register `tl_mipmap`

### Register `tl_border`

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `TRAM_REV_WORD0` | 0x1c011401 | established | diagnostic transcript | diagnostic |
| `TRAM_REV_WORD0_HIGH_HALF` | 0x1c01 | established | diagnostic transcript | diagnostic |
| `TRAM_REV_WORD0_LOW_HALF` | 0x1401 | established | diagnostic transcript | diagnostic |
| `TRAM_REV_WORD1` | 0xc000400 | established | diagnostic transcript | diagnostic |
| `TRAM_TEXTURE_BYTES` | 0x400000 | established | driver readings | texture memory of one TRAM ASIC, one per texture engine; OCTANE Technical Report section 4.2.5 |

## Test vectors

A vector is a value recorded from a source. An example only shows the layout.

| Target | Value | Kind | Decoded |
|---|---|---|---|
| `tl_mode` | 0x34e26 | vector | components_minus_1=3, cell_slot=0, component_depth=1, flag8=0, enables=7, bit14=1, fixed=3 |
| `tl_mode` | 0x35a26 | vector | components_minus_1=3, cell_slot=0, component_depth=1, flag8=0, enables=13, bit14=1, fixed=3 |
