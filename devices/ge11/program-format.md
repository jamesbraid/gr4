# GE11 microcode word: what the shipped images show

This page records what the shipped GE11 microcode images show about the
72-bit instruction word. The images are the InfiniteReality and MGRAS geometry
programs that IRIX loads into the engine: `usr/gfx/ucode/MG/mgras_ge.hex` for MGRAS
and `usr/gfx/ucode/KONA/ge.hex` with its `ge_symbols` table for InfiniteReality
(the second file is in the InfiniteReality workspace's tree, not this one).
The figures below were recomputed from those two files. Every fact here is a
measurement about those files, or a reading of one, unless it says otherwise.
Nothing here says what an instruction computes.

This page holds no register facts. Register offsets and fields are in
[devices/ge11/registers.toml](registers.toml). The 12-byte file record and the listing
format are described in [GE11.h](GE11.h), and this page does not repeat them.
The shipped routine symbol table was used for its addresses only. No symbol
name is reproduced here.

Grades follow the legend in [AGENTS.md](../../AGENTS.md). **Established** means
read directly from a shipped file and reproducible from it. **Inferred** means
a reading the files support but do not force. **Unknown** means the files do
not decide.

## Shared word across the two families

- **Established.** The InfiniteReality and MGRAS programs use one instruction
  word. Across the 72
  word bits, the per-bit set frequency agrees between the families at r = 0.988,
  with a largest single-bit difference of 0.080. The adjacent-bit coupling
  agrees at r = 0.83, and 7 of the 10 strongest couplings are shared.
- **Established.** The opcode-like values in use match closely: 167 values on
  InfiniteReality, 169 on MGRAS, 158 of them common to both.

## Field map

| Bits | Grade | What the image shows |
|---|---|---|
| 64..71 | Established for the measurement; inferred as an opcode | Knowing these eight bits removes 20.42 of the 53.81 bits of entropy in bits 0..63. Of 256 possible values, 167 occur. Five values cover 55.5% of the nonzero words and 38 cover 90.3%. No single bit in 0..63 is a pure extension of this field. The opcode reading conflicts with `GE11.h`; see below. |
| 56..63 | Inferred | Within one opcode class, exactly one of these eight bits is set in 97.8% of the class's words. Read as a transfer-mode or unit selector. |
| 44..55 | Inferred | One coupled block, with neighbouring bits tied together at every join inside it. In two of the three address-carrying classes, one bit in this block separates words that carry a usable address from words whose low field is zero, with no exceptions. In a third class the whole block takes only 8 of its 4096 values across 1061 words, which reads as an instruction identity rather than an operand. |
| 16..43 | Unknown | No boundary inside this range is pinned by adjacent-bit coupling, by conditional entropy, or by any operand-shape test tried. |
| 0..15 | Established for the correspondence; inferred as a program-counter target | In the mode-selected words of the three address-carrying classes, the field names a labeled routine entry in the program's own word index space. |

### The 16-bit address correspondence

- **Established.** Widening the low field one bit at a time and counting the
  distinct labeled entries it reaches, the count stops growing at 16 bits. The
  program's index space is 62973 words, and a 16th bit is needed to reach its
  top. A 17th bit adds no entries.
- **Established.** The correspondence survives a displacement control. Shifting
  every symbol-table address by one constant, over 520 displacements from -256
  to +256 plus eight larger ones, never beats the true offset in the three
  classes. The z-scores are 36.9, 43.6 and 33.9. The same control run against
  an index the image marks itself (section starts, padding and a rank-12 word)
  gives z-scores of 11.8 to 13.8 and needs no symbol table.
- **Inferred.** That the hardware loads this value into a program counter. No
  file can show a value reaching the sequencer.

## Control flow

- **Inferred at most.** Classes here are named by frequency rank, the most
  common being rank 1. The static statistics suggest these roles: call for the
  address-carrying words of rank 8; jump, conditional branch and no transfer
  for three groups within rank 1 (the mode-selected words, the near-mode words,
  and the largest mode group, whose low field reads as a uniform number); return
  for rank 12. Rank 3 fits no single predicate and stays unknown. None of these
  is confirmed.
- **Established negative.** A sequencing-only interpreter built on those roles
  reached 872 of the 45641 nonzero words (1.9%) when run from the first word of
  each section, with zero words falling through. It reached 55 of the 1025
  labeled entries. The roles as stated do not reproduce the routine structure.
  The sequencer reading that `GE11.h` gives (transfers take effect after four
  delay words, returns after eight) is not tested by this run.
- **Inferred.** All-zero words do not end sequencing. Taking an extent as a symbol address up
  to the next one, 17332 of the 62973 words are all zero, and 836 of the 1025
  extents hold at least one. This depends on the symbol table's labels marking
  routine starts.
- **Unknown.** What a zero word does. Before a labeled entry, the number of zero
  words is 0 (518 entries), 1 (139), 2 (31), 3 (196), 4 (59), 5 (6), 6 (4), 7 (25)
  and 8 (46). The reason runs of three and eight are common is not known.
- **Open test, not run.** Whether a rank-1 word followed by exactly three zero
  words is a return that takes effect after those three words. The image
  supports this only as a lead. It is not a fact.

## Unknown and out of scope

- **Unknown.** Arithmetic semantics. No operation's effect is established by
  these files.
- **Unknown.** The operand field, bits 16..43.
- **Established negative.** No contiguous three-bit field selects one of three
  cores in the way a three-core layout would suggest. Within the largest class,
  46 of the 62 three-bit windows use all eight of their values. How per-core
  selection is encoded is unknown.
- **Established negative.** No contiguous field in the word is bounded at 2559,
  so no field addresses a 2560-word working memory the way a window would. The
  size of the working memory is not settled by these files; see the conflict
  below.

## Conflicts with GE11.h

These are not resolved here. `GE11.h` remains the reading this repository
ships, and this page does not change it.

- **Form and thread fields.** `GE11.h` gives W[70:67] as a form selector with 15
  layouts and W[71] as a thread bit, both established by wiring. The field map
  above reads bits 64..71 as an opcode. Both readings fit the entropy figures,
  but they cannot both be the decoder's field boundaries. The decoder's reading
  needs review against both sets of evidence.
- **Address width.** `GE11.h` gives an 18-bit immediate in bits 0..17 for form
  14. The 16-bit correspondence above applies to the mode-selected words of the
  three address-carrying classes. Both may hold for different layouts.
- **Working memory size.** `GE11.h` gives the working RAM as 2,048 words. A
  published architecture description used in the source analysis gives 2,560
  words. That description is not held in this repository, and the image files
  cannot settle the size. Treat 2,048 as the repository's value until a held
  source settles it.
