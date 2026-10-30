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
  scripts/             the shared IRIX scripts (IrixGp, IrixJumpTables,
                       FindWindowStores, ...), byte-identical across workspaces
```

## Build and run

Run a component's `tests/run-ghidra.sh` in the Ghidra image, then its
`tests/check.py` on the dump directory it writes:

```sh
re-run --workspace . --ghidra -- ghidra/processors/NAME/tests/run-ghidra.sh .cache/NAME
re-run --workspace . -- python3 ghidra/processors/NAME/tests/check.py .cache/NAME
```

(`re-run` mounts the workspace at `/work`, the Ghidra image with `--ghidra` and
the toolchain image without.)

## Components

| Path | What it is |
|---|---|
| [scripts/](scripts/) | the shared IRIX scripts and the guide to them ([scripts/README.md](scripts/README.md)); here they run over `mgras_kernel/*.o`, `ddx/impactpc.so` and `libglcore/libGLcore.so` |
