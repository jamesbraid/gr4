# mgras

Historic 3D Graphics Architecture for SGI Indigo2 (IP22/IP26/IP28) and Octane (IP30).

Board-level words of the Impact graphics subsystem.

Source: driver and firmware readings.

[MGRAS.h](MGRAS.h) is the commented C description of the chip; the values are in [registers.toml](registers.toml), each graded and sourced, and the generated reference page is [registers.md](registers.md).

## More in this directory

- [MGRAS antialiased points and lines](antialiasing.md)
- [IMPACT board facts from published documents](board-facts.md)
- [MGRAS board identity](board-identity.md)
- [IMPACT in an Origin 2000 XIO slot](origin-xio-slot.md)
- [Packed colour and the visual a console driver assumes](packed-colour.md)
- [What the PROM leaves in an IMPACT board](prom-handoff.md)
- [MGRAS two-engine boards](two-re.md)
- [MGRAS video and sync hooks](video-sync.md)
- [MGRAS visual buffers](visual-buffers.md)

## Used by

- [MGRAS display timing](../../software/kernel/display-timing.md)
- [MGRAS HQ4 host interface](../../software/kernel/hq4-host-interface.md)
- [HQ4 image writes: DMA and inline](../../software/kernel/hq4-image-write.md)
- [gr4 ioctl request statements](../../software/kernel/ioctl-requests.md)
- [MGRAS client selection and feedback](../../software/opengl/client-selection-feedback.md)
- [MGRAS GL command stream](../../software/opengl/gl-commands.md)
- [MGRAS pixel texture state](../../software/opengl/pixel-texture.md)
- [SGI Impact Graphics (MGRAS / GR4): TRAM Page Desynchronization & Corruption Analysis](../../software/opengl/tram-corruption-analysis.md)
