# Readings: `usr/gfx/MGRAS/HQ3/ge11dump.HQ3`

One entry per routine, filed here from the reading batches by binary.

### `hw_release_pipe` in `usr/gfx/MGRAS/HQ3/ge11dump.HQ3` at 0x409114

Grade: inferred.

Role (from name): `hw_release_pipe` ends the diagnostic's use of the hardware pipe. Unless the `simTest` flag is set, it issues ioctl request 0x6d670008 on the graphics device descriptor. On a negative return it prints a message, calls `ge11_diag_end` and exits. On a non-negative return it stores a word at 0x40919c, and the facts do not name the target. Whether the pipe is a kernel object or a bookkeeping handle is not established.

Reviewed: 2026-11-12

### `hw_acquire_pipe` in `usr/gfx/MGRAS/HQ3/ge11dump.HQ3` at 0x4091b0

Grade: inferred.

Role (from name): `hw_acquire_pipe` is the counterpart of `hw_release_pipe`. When `simTest` is set, it first writes two words relative to the base pointer, at +0x62408 and +0x50008. It then issues ioctl request 0x6d670007 on the device descriptor whether or not `simTest` is set, because the branch only skips the two writes. On a negative return it prints a message and calls `hw_release_pipe`, `ge11_diag_end` and `exit`. On success it stores a word at 0x40927c, and the facts do not name the target. The two base-relative writes are not explained by the facts.

Reviewed: 2026-11-12
