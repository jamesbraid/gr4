# Retrace interrupt and the two-field formats

Question from the Octane MXI work: does a two-field VC3 table (for example
`2RSS/1280x1024_60_2f`, 2,133 lines of 840 VC3 clocks) raise the vertical retrace
interrupt once per frame or once per field?

Answer: once per frame, inferred. The line table of every shipped format drives a
`VINT_N` output that pulses once per frame, at the end of the last field's active
lines, and the kernel counts swap intervals in interrupts without looking at a field
bit. The evidence is in [display timing](../software/kernel/display-timing.md#signals-the-line-table-drives).

## Still open

| Question | What would settle it |
|---|---|
| Is `VINT_N` (VC3 pin `C0`) what reaches the HQ4 as the retrace interrupt, and on which edge? | The VC3 and HQ4 data sheets (none held), or a board capture of the Hub pending bit 17 with a `_2f` format loaded: one set per frame or two. A sibling-chip analogy is the only support now. |
| What do bits 1 to 4 and bit 7 of VC3 register `0x1e` do? | The VC3 data sheet. Bit 7 follows the interlace flag in the kernel; the rest is written as a block. |
| Which boards make Smoke's `GraphicsGetVersion()` return 0, so it picks `_60_2f` rather than `_30f`? | Tracing the global behind `0x10f05a90` in `smoke_IRIX_6.5_ip30` to its writer. |
| What `FormatInfo_UnbalancedSwaps` (set in all `_2f` files) is for. | A consumer: only `vfc` and `setmon` name it, neither traced past the string. |
| Does an older patched kernel or X server (patch 3133, 3366) treat the `_2f` files' `SwapsPerFrame` 2 differently? | Reading those patch kernels' `mgras.a`; not done. |
