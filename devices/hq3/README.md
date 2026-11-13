# hq3

Command Engine, Host Bus Interface, FIFO Controller, and Graphics TLB for SGI Impact (GR4).

Host interface and command processor registers of the Impact graphics subsystem.

Source: driver and diagnostic readings.

[HQ3.h](HQ3.h) is the commented C description of the chip; the values are in [registers.toml](registers.toml), each graded and sourced, and the generated reference page is [registers.md](registers.md).

## Used by

- [MGRAS display timing](../../software/kernel/display-timing.md)
- [MGRAS HQ4 host interface](../../software/kernel/hq4-host-interface.md)
- [gr4 ioctl request statements](../../software/kernel/ioctl-requests.md)
- [MGRAS client selection and feedback](../../software/opengl/client-selection-feedback.md)
- [MGRAS GL command stream](../../software/opengl/gl-commands.md)
- [MGRAS pixel texture state](../../software/opengl/pixel-texture.md)
