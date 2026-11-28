# hq3

Command Engine, Host Bus Interface, FIFO Controller, and Graphics TLB for SGI Impact (GR4).

Host interface and command processor registers of the Impact graphics subsystem.

Source: driver and diagnostic readings.

[HQ3.h](HQ3.h) is the commented C description of the chip; the values are in [registers.toml](registers.toml), each graded and sourced, and the generated reference page is [registers.md](registers.md).

## More in this directory

- [HQ3 and HQ4 byte order for a little-endian host](byte-order.md)

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
