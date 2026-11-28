# hq3

Command Engine, Host Bus Interface, FIFO Controller, and Graphics TLB for SGI Impact (GR4).

Host interface and command processor registers of the Impact graphics subsystem.

Source: driver and diagnostic readings.

[HQ3.h](HQ3.h) is the commented C description of the chip; the values are in [registers.toml](registers.toml), each graded and sourced, and the generated reference page is [registers.md](registers.md).

## More in this directory

- [HQ3 and HQ4 byte order for a little-endian host](byte-order.md)
- [MGRAS microcode download](../../software/kernel/microcode-download.md) (the host-interface and geometry-engine load, on both groups)

## Used by

- [MGRAS display timing](../../software/kernel/display-timing.md)
- [MGRAS HQ4 host interface](../../software/kernel/hq4-host-interface.md)
- [gr4 ioctl request statements](../../software/kernel/ioctl-requests.md)
- [MGRAS client selection and feedback](../../software/opengl/client-selection-feedback.md)
- [MGRAS GL command stream](../../software/opengl/gl-commands.md)
- [MGRAS pixel texture state](../../software/opengl/pixel-texture.md)

## Video DMA wait in the Octane digital video driver

Read by disassembly from `srv_hq4_dma.o` in the 6.5.30 `srv.a` (sha256 `829bae1f9d5c57535068db5196960c641387792439cdfea764f9f2854d6f59fe`); every statement is a software expectation unless marked.

- The wait polls a 32-bit word at the board base plus `0x20000`, the HQ status word (`HQ_GL_STATUS_OFFSET`), and tests bit 12 (`HQ_GL_STATUS_DMA_BUSY`). Bit set means busy, clear means done. The offset and width are read straight from the instructions; the register is the one the hq3 `status` register describes, which has no other bit 12 reader.
- It polls up to 200 times. On board revision 1 it writes `0x55` to the word at `base + 0x70808` and sleeps 500 microseconds at intervals; on other revisions it waits a short nanosecond delay each pass. On timeout it stores 2 to `base + 0x81010` (abort) and logs.
- `srv_hq4_setup_vdma` does not touch the board: it builds the page list (a table of 16-byte entries from `kvtophys`) under a lock. The board writes are in `srv_hq4_vdma`, in this order: `0x2000000` to `base + 0x11028` (interrupt pending clear), a caller-built word to `base + 0x60018`, a mode word to `base + 0x81018`, a 64-bit descriptor to `base + 0x81000`, then bits 0 and 4 to `base + 0x81010`, which starts the transfer, and the wait follows.
- The graphics kernel driver does not read this bit alone. Its DMA read wait (`WAIT_FOR_READDMA` in `mgras_tex_io.o`, 6.5 base build) polls `base + 0x20200` masked with `0x1eff`, which includes bit 12 of that word (`address_gen_dma` in `dma_busy`). So the kernel gives only a weak second reading that bit 12 relates to DMA; it does not confirm the `0x20000` word. What sets and clears bit 12 of the status word is **unknown**.

## Offset group of the Indigo2 board (HQ3 on GIO64)

The Indigo2 IMPACT board decodes the group below, relative to the board base (`0x1f000000`, the graphics slot; the base is the host's, not read from the graphics objects). The names and offsets are the comments of the `mgras_hw` structure in IRIX 6.5.7 `stand/arcs/ide/isddevices/graphics/MGRAS/mgrashw.h.diag`; the last column says whether the 6.5.0 Indigo2 kernel object (`usr/cpu/sysgen/IP28boot/mgras.o`, `mgras_init.o`) uses the same offset. **Established** where the object agrees, otherwise a software expectation from the header. The XIO boards (Octane, Origin) use a different group: the `0x011000` interrupt block, `0x020000` status, `0x058000` diagnostic ports and the `0x120400` command window ([HQ4 host interface](../../software/kernel/hq4-host-interface.md)).

| Offset | Name in the header | In the kernel object |
|---|---|---|
| `0x040000` to `0x045ffc` | microcode RAM (6,144 words) | yes: download stores |
| `0x046000` | microcode program counter | read only, in a debug dump |
| `0x050000` | `hq_config` | yes: `MgrasStart` writes `0x7e8c` or a derived value; the geometry-engine download saves, sets bit 3 and restores it |
| `0x050004`, `0x050008`, `0x05000c` | `flag_ctx`, `flag_set_priv`, `flag_clr_priv` | `0x050008` yes: download tests `0x40000` |
| `0x050010` to `0x05001c` | flag enable set and clear, interrupt enable set and clear | `0x050018` yes: `MgrasInitialize` writes `0x4400e200` |
| `0x050020` to `0x050034` | command and data FIFO marks and delays | header only |
| `0x050040`, `0x050044`, `0x050048`, `0x05004c` | geometry engine 0 and 1 diagnostic data and address ports | yes |
| `0x0500f0`, `0x0500f8`, `0x050100` | privileged command FIFO (64-bit), context switch, context data | header only |
| `0x050108` to `0x050114` | buffer FIFO marks and delay, `gio_config` | `0x050114` yes |
| `0x050200` to `0x0502ff` | raster-interface context RAM; words at `+0x22c`, `+0x230` are the diagnostic read words | yes |
| `0x050300`, `0x050500` | host address generator and host interface context RAM | header only |
| `0x060000` to `0x06ffff` | display-bus device windows; the board configuration word is at `0x062408` | yes |
| `0x070008`, `0x07000c` | `flag_set`, `flag_clr` (user) | header only |
| `0x070100`, `0x070104` | `gio_status`, `busy_dma` | `0x070104` yes: bit 0 is the download's wait |
| `0x07c000` | raster register window | header only |
| `0x080000` | command FIFO window | header only |

[HQ3.h](HQ3.h) carries the same map with more names. A per-register reset value and the field layouts are not known for this group either.
