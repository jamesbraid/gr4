# Ghidra tooling

Everything that runs inside Ghidra lives here. A component has its own
acceptance test, run from the repository root inside the Ghidra image with
`root/` populated. Directories with nothing in them yet hold a `.gitkeep`
to fix the layout.

```
ghidra/
  processors/<name>/   one Ghidra processor extension per directory
                       (extension.properties, data/languages/*.slaspec,
                       tests/, tools/)
  import/<name>/       loader and import scripts for firmware images
  types/<name>/        data-type scripts
```

## Build and run

Run a component's `tests/run-ghidra.sh` in the Ghidra image, then its
`tests/check.py` on the dump directory it writes:

```sh
retools/tools/re-run --ghidra ghidra/processors/NAME/tests/run-ghidra.sh .cache/NAME
retools/tools/re-run python3 ghidra/processors/NAME/tests/check.py .cache/NAME
```

(`retools/tools/re-run` mounts the workspace at `/work`, the Ghidra image with `--ghidra` and
the toolchain image without.)

## Components

| Path | What it is |
|---|---|
| [processors/ge11/](processors/ge11/) | the GE11 geometry-engine microcode: SLEIGH spec, importer and the word-to-record decode table (below) |
| [retools/ghidra/scripts/](../retools/ghidra/scripts/) | the shared IRIX scripts (in the retools submodule, not here) and the guide to them ([README](../retools/ghidra/scripts/README.md)); here they run over `mgras_kernel/*.o`, `ddx/impactpc.so` and `libglcore/libGLcore.so` |

## GE11 microcode (processors/ge11)

Language `GE11:BE:32:default`. Import a program raw with the `BinaryLoader`
and run `ghidra_scripts/GE11Import.java` as a pre-script; it accepts
`mgras_ge*.u`, `mgras_ge*.hex` and `ge11*.bin`.
`tests/run-ghidra.sh` shows each form.

The GE11 runs the 72-bit instruction set of the InfiniteReality geometry
engine (GE11.h, "MICROCODE INSTRUCTION WORD"), so the spec is not written
twice. `tools/kona_gen_slaspec.py` is a verbatim copy of the KONA
repository's generator (`sleigh/kona-ge/tools/gen_slaspec.py` at b4a734e),
kept in sync by copying; `tools/gen_slaspec.py` runs it and applies the
GE11 edits (18-bit address wrap, the saturating add's label, the header),
each of which must match the shared text exactly once. Refresh the copy,
rerun `python3 tools/gen_slaspec.py` and commit both. Check (f) of
`tests/check.py` compares the copy with a `../kona` checkout when there is
one.

The chip stores the word W; the module also needs the 256-bit record the
assembler decoded W into, and that decode is not known as logic. A `.u`
file carries the records. Everything else goes through
`data/ge11_decode.tsv`, a decision tree per form and record bit over W,
which `tools/ge11_decode.py build` learns from the six IRIX 6.5.0 programs
that ship both forms (23969 distinct words). It reproduces every one of
those records (`ge11_decode.py check`). On words outside them it is a
prediction: measured on the KONA engine's programs (`ge11_decode.py
compare`), it gives the exact record for 81.5% of the 24371 production
words, and the operation field M for 98.1%; the operand routing field
`r110` is the weakest (88.6%).

Tests (`tests/run-ghidra.sh`, then `tests/check.py`):

- (a) `mgras_ge.hex` alone lists every word as `mgras_ge.u` does;
- (b) `ge11.bin` alone lists the same, and its other 4757 words are the
  fill word `febaadcafebaadcafe`;
- (d) every command handler of `mgras_geif.u`, every call target and every
  pixel module GE11.h names is a function;
- (e) the decompiled matrix, transform and triangle modules carry float
  arithmetic;
- (f) the shared generator matches the KONA repository's.
