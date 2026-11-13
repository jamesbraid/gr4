# MGRAS client selection and feedback

How the IRIX GL client library runs selection mode on the IMPACT pipe and reads
the hit records back. The command values are in [devices/hq3/registers.toml](../devices/hq3/registers.toml)
(the `CFIFO_CMD_*` constants); this page carries the rest.

## Sources and grades

Every fact here comes from the stock IRIX 6.5.30 GL client binary, SHA-256
`626d6d94fb5ee207139a1dc234bfc0b94e9c9d0d6d0441b43e4c1c9df2fc9d0d`, read as
machine code. The retained listing has SHA-256
`3e2a7814a17a991d2ef2644e970fe040356faee954d0b0b8f2f99a02512d63c8`. A shipped
binary shows what the software expects the board to accept and return, so every
fact is graded **inferred**. Nothing here is checked against a register manual,
a board capture or a measurement of the hardware. Addresses below are in that
client binary, where the matching ELF resolves the indirect calls.

## Mode entry and the command forms

The mode handling starts at `0xd94f130`. The client's API handlers write
these 16-bit command forms to the command FIFO:

| Form | Payload | Role |
|---|---|---|
| `0xcb04` | one word | selection entry; the word comes from the client's per-context state |
| `0xc400` | none | name stack initialised |
| `0xc504` | one name | top name replaced |
| `0xc600` | none | name popped |
| `0xc704` | one name | name pushed |
| `0xc900` | none | leaving selection mode; result handling begins |

**Inferred.** Each form fits the layout of the command-FIFO control word
(`CFIFO_CTL` in `devices/hq3/registers.toml`): the high byte is the command field and the
low byte is the payload size in bytes, so `0xcb04` is command `0xcb` with four
bytes. That is a reading of the bit positions, not a documented opcode table.
The constants are in `devices/hq3/registers.toml`.

## Result fetch

The result fetch at `0xd9ae7d0` is bracketed by standalone forms `0x6100`
(command `0x61`) and `0x6200` (command `0x62`). **Inferred.**

Positive-path reads go through a query wrapper that returns one 32-bit word per
invocation. Query index `0xcec` is read on the zero-result path, where the
client takes an indexed-walk bound and skips the element queries. Reading it
as a bound comes from control flow only, and the device's answer for it is
unknown.

Whether `0x96` and `0x97` (`TOKEN_READBACK_BEGIN` and `TOKEN_READBACK_END` in
`devices/hq3/registers.toml`) are related to the `0x61` and `0x62` brackets is not
established. The encodings differ.

## Hit record layout

The result-writing paths at `0xd9aebe0` and `0xd9aed20` append three kinds of
word per hit: the name count, two depth words, then the names. Each client
record occupies three plus name-count words. **Inferred.** This matches the
record shape in the OpenGL selection description, but the device's own fields
for a positive hit are not established.

In the indexed loop, a cursor `p` starts at zero. The client reads the name
count at `p + 1`, the depth words at `p + 2` and `p + 3`, and the names at
`p + 4` through `p + 3 + name_count`. It then advances `p` by four plus the name
count and compares it with the initial bound. The index `p` itself is skipped
for each record, and its meaning is unknown. The initial bound is not a hit
count and not the client buffer size. **Inferred.**

The third query argument comes from the client's current-context word. Entry to
selection emits `0xcb04` followed by that same word. The positive loop's third
argument is therefore tied to the entry payload by the code, not by a
measurement. **Inferred.**

## Depth words

The two depth words are binary32 values. The client converts each one to
double, multiplies by `4294967295.0`, rounds to binary32, converts back to
double, adds `0.5`, truncates to a signed 64-bit integer and writes the low 32
bits. The scale and addend constants sit at `0x0dad9c58` and `0x0dad96a0`. A
separate merge path takes the lower value as the first field and the higher as
the second before the same conversion. **Inferred.**

This is the client's decoding, not a measured depth precision for the board.

## Feedback mode

The client's feedback path adds no hardware fact here. Which feedback work the
library does in software, and how feedback interacts with other primitive types,
clipping or overflow, is unknown.

## Unresolved

- What query index `0xcec` returns and what the skipped index `p` means.
- Whether the name count, the two depth words and the names are the complete
  hit contract for the device.
- Whether the selection-entry payload is the same word on every path.
- Selection behaviour for primitive types other than filled quads, and for
  clipped or overflowing hits.
- Any register-level behaviour of the pipe on selection. Only the client side
  has been read.
