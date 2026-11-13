<!-- generated from devices/xtalk/registers.toml by defs-gen - do not edit, change the source -->

# expected power-up values of the host interface's crosstalk

Expected power-up values of the crosstalk widget block on the Octane host interface.

Unit `xtalk`, macro prefix `XTALK`.
Default source: diagnostic program data.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Words

| Word | Width | Grade | Source |
|---|---|---|---|
| `LLP_CONFIG` | 32 | inferred | diagnostic program data |

### Word `LLP_CONFIG`

Link-layer configuration. The diagnostic describes the expected value as a
null timeout of 6 in bits 15:10 and a retry limit of 0x3ff in bits 25:16
(maximum burst 16 is also stated; its bit position is not).

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 25:16 | `retry_limit` | inferred |  | diagnostic program data |  |
| 15:10 | `null_timeout` | inferred |  | diagnostic program data |  |

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `CONTROL_EXPECT` | 0x32f | established | diagnostic program data | diagnostic |
| `ERR_ADDR_HI_EXPECT` | 0x0 | established | diagnostic program data | diagnostic |
| `ERR_ADDR_LO_EXPECT` | 0x0 | established | diagnostic program data | diagnostic |
| `ERR_CMD_EXPECT` | 0x0 | established | diagnostic program data | diagnostic |
| `ID_EXPECT` | 0xe001d55 | established | diagnostic program data | diagnostic |
| `INTR_DEST_HI_EXPECT` | 0x0 | established | diagnostic program data | diagnostic |
| `INTR_DEST_LO_EXPECT` | 0x0 | established | diagnostic program data | diagnostic |
| `LLP_CONFIG_EXPECT` | 0x3ff1810 | established | diagnostic program data | diagnostic |
| `REQ_TIMEOUT_EXPECT` | 0xfffff | established | diagnostic program data | diagnostic |
| `STATUS_EXPECT` | 0x0 | established | diagnostic program data | diagnostic |
| `TARGET_FLUSH_EXPECT` | 0x0 | established | diagnostic program data | diagnostic |

## Test vectors

A vector is a value recorded from a source. An example only shows the layout.

| Target | Value | Kind | Decoded |
|---|---|---|---|
| `LLP_CONFIG` | 0x3ff1810 | vector | null_timeout=6, retry_limit=1023 |
