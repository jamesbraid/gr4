# MGRAS HQ4 host interface

How the host interface chip on an IMPACT board works as the IRIX software
drives it: the interrupt block, the context-switch handshake, the buffer swap
command, the status waits the kernel and client make, the FIFO thresholds, the
Octane page-list layout and the identity and serial reads. The register and
word facts are in [devices/mgras/registers.toml](../../devices/mgras/registers.toml). This page gives the
sequences and says what is still open. The command word framing is in
[gl-commands.md](../opengl/gl-commands.md). The two raster engine boards are
in [two-re.md](../../devices/mgras/two-re.md).

## Sources and grades

- The IRIX 6.5.30 IP27 kernel `unix.IP27` (SHA-256
  `567474674eaa83d3...`, the copy in the 6.5.30 tree; an earlier version of this page
  cited a kernel with SHA-256 `cbdb02ea5d33...` that is not held, and the routines
  were re-read in this one), read as disassembly with names from its symbol
  table. Routine names below come from that table. Re-read here: the interrupt
  dispatch bit masks, the 63-word loop and `0x4fc` write of the context switch,
  and the `0xc8000000`/`0xe8000000` timing writes. The remaining sequences on this
  page were not re-derived.
- The IRIX 6.5.30 kernel `/unix` that an earlier version of this page cited by
  SHA-256 `99040083dd5e...` is not held; the retrace attach path was read in the
  `unix.IP27` above.
- The graphics members of the IRIX 6.5.30 IP27 `mgras.a` archive (SHA-256
  `c3b1faac9a98280b117cd9f054c4c737d1f9844d697b8ed17bfd7e70b8e7134f`), read as
  disassembly.
- The Octane IDE graphics diagnostic `ide.IP30` (SHA-256
  `19d7a194cb417330475df9a187379404d413c72433cfc97fc9e238f0fe170d69`), read as
  disassembly. Its register tests and start-up writes are software expectations.
- The stock Octane PROM, read for the serial-number record routine. Not re-read:
  the PROM image is not in this checkout.
- The Linux IMPACTSR framebuffer driver for Octane, carried in Joshua Kinard's
  2008 IP30 patch posts to the linux-mips list (a forward port of Stanislaw
  Skowronek's Octane work; the mail archive here exposes only the start of the
  attachment, so the driver text was not re-read), and Peter Fürst's 2011 Indigo2
  adaptation. That driver was reverse-engineered against IRIX's X server, so it is
  not an independent source.
- The public X.Org Impact driver, read for its wait on bit 0 after a DMA.

Grades follow the legend in [AGENTS.md](../../AGENTS.md#7-published-documents),
applied as follows. **Established** here means a shipped binary's code reads or
writes the value, or a published document states it. That is a fact about what
the software does. **Inferred** covers a software expectation about the board and
any hardware behaviour read from one. **Unknown** means nothing held settles it.
Nothing on this page is a register manual, a bus measurement or a result from a
running board.

## Interrupt block

The kernel's use of the interrupt block, in address order.

| Offset | Defs name | Kernel use | Grade |
| --- | --- | --- | --- |
| `0x011008` | `HQ_CTX_WORD_OFFSET` | per-context word, saved by the switch and written from the incoming context after the first handshake | established; meaning unknown |
| `0x011020` | `HQ_INTR_STATUS_OFFSET` | status word; the general handler reads it masked by the enable word | established |
| `0x011028` | `HQ_INTR_PENDING_CLEAR_OFFSET` | write-one-to-clear for the status word | inferred |
| `0x011030` | `HQ_CTX_ENAB_OFFSET` | per-context word, saved and restored by the switch | established; meaning unknown |
| `0x011038` | `HQ_CTX_ENAB_CLEAR_OFFSET` | written all ones by the switch tail | established; meaning unknown |
| `0x011040` | `HQ_INTR_ENAB_SET_OFFSET` | interrupt enable word, readable | established; set behaviour inferred |
| `0x011048` | `HQ_INTR_ENAB_CLEAR_OFFSET` | write-one-to-clear for the enable word | inferred |
| `0x011050` | `HQ_INTR_LEVEL2_ENAB_OFFSET` | second-level enable; bit 4 is the FIFO low-water source | established; bit 3 and bits `0x1e8` unknown |
| `0x011058` | `HQ_INTR_LEVEL2_CLEAR_OFFSET` | second-level clear | inferred |
| `0x011060` | `HQ_INTR_DEST_UPPER_OFFSET` | interrupt destination, upper word: target widget bits 27:24, bit 29 set, address bits 47:32 | established (value written); role inferred |
| `0x011068` | `HQ_INTR_DEST_LOWER_OFFSET` | interrupt destination, lower word: address bits 31:0 | established (value written); role inferred |
| `0x011070` | `HQ_INTR_VECTOR_OFFSET` | packs three vectors: low-water in bits 7:0, general in 15:8, retrace in 23:16 | established |
| `0x011098` | `HQ_SERIAL_MASTER_OFFSET` | one-wire master for the serial-number record | established |

The kernel's `0x011000` control word is `HQ_GE_SELECT_ADDR` in the defs file.
Its bit meanings are still unknown.

The start-up writes `0x3008a200` to the enable word after it sets the enable
clear word to all ones. The kernel's sites fit a set-and-clear pair, so the
enable word takes the bits written and leaves the rest. The set behaviour is
inferred from the pairing, not from a board.

## Interrupt sources

`MgrasGeneralInterrupt` reads the status word masked by the enable word and
serves one source per call, in the order below. Each entry is established from
the kernel's dispatch code.

| Bit | Value | Handler action |
| --- | --- | --- |
| 16 | `0x10000` | releases a board semaphore and acknowledges the bit; no routine enables or waits on it |
| 28 | `0x10000000` | releases the second context-switch semaphore |
| 10 | `0x400` | clears its enable, acknowledges with `0x401` and runs the swap finish |
| 29 | `0x20000000` | reports a flow-control or command-FIFO overflow |
| 9 | `0x200` | reports an HQ program error |
| 13 | `0x2000` | reports a DMA address-range error |
| 14 | `0x4000` | reports a command-FIFO privilege violation |
| 15 | `0x8000` | reports a DMA access or stack overflow and marks the board failed |
| 19 | `0x80000` | releases the first context-switch semaphore |

The default enable names bits 9, 13, 15, 19, 28 and 29. Bit 10 is enabled only
around a swap. Each error source is cleared in the enable word when the handler
serves it, so it stays off until the next switch restores the enable word
(established). The handler returns after each source, so the interrupt line must
stay asserted while an enabled source is still pending. That is inferred. The
alternative, one pulse per event, would lose the second of two simultaneous
sources.

## Retrace interrupt

- `mgras_attach` connects four crosstalk interrupts in this order: the general
  handler, the low-water handler, the retrace handler and the HQ4 error handler.
  It packs the first three vectors into `0x011070` as above. Established.
- The retrace enable is VC3 register `0x1e`, written through `0x072038`. The
  kernel reads the display-bus room in `0x020100` bits 4:0 first, sets bit 0 of
  its copy and writes it back. Established as the kernel's enable.
- That bit gates the board's retrace message is inferred. The reasoning is the
  sibling Newport video controller, whose interrupt enable sits in the same bit
  position in its own control register. The analogy is between two chips.
- The kernel never sets bit 0 of `0x011040` and writes no acknowledge to the
  board for a retrace. Its retrace handler reads status, reprograms the XMAP
  buffer selection and wakes waiters. The only latch it clears is the Hub's
  pending bit. Established from the handler's code.
- Inferred: the board sends one interrupt per retrace while the VC3 bit is set.
- The kernel's graphics fault path sleeps on a resource's retrace wait queue
  until the retrace handler validates it. Established.

## Where the board's interrupt packets go

Question: when the board raises an interrupt towards HEART on an Octane, does the path use only the destination widget, or the target address as well?

**Answer (inferred): both are programmed and both are in the packet. The kernel gives the board the same two values it gives every widget. HEART is addressed by widget number, and it recognises an interrupt by the address of the write, so a packet to another offset is not an interrupt.** Nothing read shows the board ignoring the address.

- **What the kernel writes** (**established**, the 6.5.30 IP30 `mgras.a`, `mgras_init.o`: `mgras_attach` at `0x47c` and `MgrasSetHQ4IntrVectors` at `0x7a8`, read in full). `mgras_attach` allocates four crosstalk interrupts and then connects them. The first takes whatever CPU the allocator picks and the other three ask for that CPU through the device description. The third is allocated with the error-interrupt flag set (HEART gives it a widget error vector) and the fourth at the graphics priority. `MgrasSetHQ4IntrVectors` takes the target widget and the address from the first handle only and builds, once per board, the words below. For HEART the widget is HEART's own widget number (crossbar port 8, `HEART_ID` in `irix/kern/sys/RACER/IP30.h`) and the address is the widget-space offset `0x80` (`HEART_XTALK_ISR` in the IRIX 6.5.7 HEART header `irix/kern/sys/RACER/heart.h`; the same header's destination-word macro packs the vector at bits 31:24 and the target widget at 19:16 of the upper word, with address bits 47:32 below).
  - `0x011070`: three vectors, as above.
  - `0x011060`: target widget in bits 27:24, bit 29 set, address bits 47:32 in 15:0.
  - `0x011068`: address bits 31:0.
  - Two 32-bit stores at window offsets `0x30` and `0x38`: the upper word (vector of the fourth handle, the HQ4 error handler, in bits 31:24; target widget in 19:16; bit 20 set; address bits 47:32) and the address bits 31:0. The generic Crosstalk widget layout puts its interrupt destination words at `0x34` and `0x3c`, so these sit four bytes below: whether the window pointer carries an offset or the stores reach different registers was not read (**unknown**).
- **What the crossbar and HEART do** (published and software expectation). The Octane crossbar routes by the packet's target id (Crossbow ASIC specification rev 12.0, section 4.3.6), here HEART. HEART takes interrupts as writes to its widget register at offset `0x80`: IRIX writes that offset into every widget, OpenBSD and Linux use the same, and the data carries the vector in bits 7:0 and set-or-clear in bit 8 (Crossbow specification section 3.1.1; Bridge specification pp. 117 to 119). Whether HEART treats a write to a different offset of its widget space as an interrupt is not stated anywhere read: **unknown**.
- **Why this is inferred, not established.** No HQ4 specification is held, so that the board sends the programmed address rather than a fixed one is a reading of the packing, with the generic widget behaviour as support. The two copies (board words and window words) are consistent with the board using its own pair for the three board vectors and the window pair for the error vector, which fits the vector packing, but no software reads either back.

**Consequence for a model.** Deliver the board's interrupt packets to HEART by the target widget, and have HEART accept them only as a write to widget offset `0x80` with the vector in bits 7:0, bit 8 selecting set or clear. A packet to any other offset should be logged as unexpected, not delivered. Routes tried: the 6.5.30 IP30 and IP27 `mgras.a` attach routines, the IRIX 6.5.7 HEART header and driver, the Crossbow and Bridge specifications, OpenBSD and Linux.

## Context-switch transaction

`MgrasCtxsw(board, incoming, outgoing)` runs on one CPU, under two board
semaphores and a 100-tick watchdog. Expiry is reported as a context-switch
timeout. The steps below are established from the routine's code, in order.

1. Prelude: write `0x80` to `0x011028`. Save `0x011000`, `0x011008`, `0x011040`,
   `0x011030` and `0x011050` with bits `0x1f8` cleared into the outgoing context.
   Clear bits `0x88` of `0x011000` if a board flag allows it, then write the
   word back with the global mask applied and bit `0x1000` set.
2. If the outgoing context is the default context, poll `0x020200` bit 9 until it
   is zero. Write `0xffffffef` to `0x011058` and call the flush routine. The flush
   polls `0x020008` low byte for up to 1 ms. If it does not reach zero, the flush
   sets the low-water level to the wanted level plus one in `0x040008`, sets bit 4
   of `0x011050`, writes the changed bits to `0x011058` and sleeps on the board's
   low-water semaphore. A failure aborts the switch with a message that carries
   the low byte of `0x020008`.
3. Poll `0x008000` until `& 0x1eff` is zero, then write `0x4fc` to `0x130500`.
4. Sleep until the general handler sees status bit 19. The handler acknowledges
   it at `0x011028` and releases the first handshake semaphore. The sleep retries
   every tick while the board is not marked failed.
5. Write the incoming context's word to `0x011008`. Then write exactly 63 32-bit
   words from the incoming image to `0x120400`, with no header, length word or
   trailer. The loop bound is 63 (`0x3f`).
6. Sleep until the handler sees status bit 28. It acknowledges that bit and
   releases the second handshake semaphore.
7. Tail: write all ones to `0x011048`, write `0x1` to `0x040088`, write `0x80` to
   `0x011020`, read bit 5 of `0x011020` into the outgoing context, write `0x70` to
   `0x011028`. Restore `0x011000`, `0x011040`, `0x011050` (with the carried bits),
   `0x011038` (all ones) and `0x011030`. If the incoming context is the default
   context, write `0x0000f400` to `0x120400`.

Consequences, from the same code:

- The transaction closes on the second interrupt, not on a command word. The
  kernel writes nothing after the 63rd image word until the handler has run.
- `MgrasCtxsw` never reads `0x120400`.
- Between the selection and the first acknowledgement, and between the 63rd word
  and the second, this CPU sends nothing to the port. Other CPUs can touch the
  scheduler and status words meanwhile.
- After the tail, the next 4-byte writes to the port are command words from
  whichever process now owns the pipe. The per-context image layout is in
  [gl-commands.md](../opengl/gl-commands.md#kernel-context-image-and-eviction).
- Word 1 of the image carries flag bits the kernel ORs and clears. What the board
  does with each bit is unknown.
- Whether the board counts the 63 words or its microcode does, and why bit 28
  follows the 63rd word rather than the selection, is unknown.

## Buffer swap command

`MgrasSchedSwapBuf` schedules a swap as follows. Established from the code.

1. Under the swap mutex, if the window's swap is already queued for the retrace
   path, return without touching the board.
2. Send the bank-validation token (see [gl-commands.md](../opengl/gl-commands.md)).
   If `0x020010 & 0x401` is set, write `0x401` to `0x011028`.
3. Take the board's swap semaphore and arm a 100-tick watchdog, reported as a swap
   finish timeout. Set bit 10 in the enable word by writing `0x400` to
   `0x011040`. Write `0x3700` to `0x120400`: class 0, opcode `0x37`, no payload.
4. When bit 10 is served, the handler clears its enable, acknowledges `0x401` and
   calls the swap finish. The finish waits for display-bus room (`0x020100` bits
   4:0), writes XMAP index 0 to `0x071c88`, writes the window's swap mask to
   `0x071d80`, cancels the watchdog and releases the semaphore.
5. On the retrace interrupt, the retrace handler reprograms the XMAP registers at
   `0x071c88`, `0x071d80`, `0x071e00` and `0x071e80`, and validates the swapped
   buffers.

Inferred: the `0x3700` word makes the board raise bit 10 once the queue ahead of
it has drained, so the flip is ordered after the rendering. The XMAP buffer
selection takes effect at the retrace, which the
[raster and display notes](../../devices/mgras/two-re.md#scanout-and-window-select-bits) cover.

Open: the kernel's swap-finish reading uses a second mask word under XMAP index 4
for windows 32 and up. The Octane diagnostic's XMAP test disagrees with that
reading, so which one the board follows is unknown.

## Status bits and waits

What the software waits for, and how long. All entries are software expectations,
so they are inferred for the board.

- `0x020000` bit 1 (pipe idle): the kernel's raster-idle wait gives up after about
  3 s. The client's `glFinish` waits without a limit.
- `0x020000` bit 0 (read-DMA set-up): the kernel's read-DMA set-up writes `0xf200`
  to the board and then waits about 2 s for bit 0, then reports an error
  and does not start the read. The client waits for bit 0 with no limit in all
  three of its builds. Every test of bit 0 in the kernel, the client builds and
  the X server module waits for it to be set. None waits for it to clear. The
  X.Org driver waits for bit 0 after its DMA without first writing `0xf200`. That
  suggests bit 0 reads set whenever the board is idle, not only when asked.
- `0x020000` bit 4: the high-water handler tests it and arms the low-water
  interrupt when it stays clear.
- `0x020008` (`HQ_FIFO_STATUS_OFFSET`): the low byte is the level. The flush
  routine waits for it to fall to the requested level. The empty test in the
  switch requires it to be exactly zero.
- `0x020200` (`HQ_GL_DMA_STATUS_OFFSET`): masks in use are `& 0x200` in the switch
  prelude, `& 0x17` for the flush's DMA wait, `& 0x1f` after a DMA completion
  in the diagnostic and `& 0x1eff` in the client's DMA-read wait.
- `0x020100` (`HQ_BUS_STATUS_OFFSET`): the kernel waits for bits 4:0 to show room
  before writing display registers. What the other bits mean is unknown.

Two conclusions follow, both inferred. First, a drained FIFO does not mean that
raster work has finished or that DMA is coherent, because the waits test separate
bits. Second, the drivers wait on status bits and flags instead of stalling the
store, so queued display work runs after the store completes.

## FIFO thresholds

The diagnostic's start-up writes, in order, are: `0x060008` = 2, then
`0x040000` = `0x28`, `0x040008` = `0x14`, `0x040010` = `0x0a`, `0x040020` = `0x28`,
`0x040028` = `0x14` and `0x040030` = `0x0a`. Only `0x040008` has a named role,
from the kernel's flush routine. The others are software expectations, and their
roles are inferred from the layout. The diagnostic also tests the flow-control
timeout at `0x040078` with mask `0x3ff`. Its register test names only these
registers and does not give their reset values.

The flush routine raises the low-water level and enables the low-water interrupt
before it sleeps, then returns the level to `0x14` on wake. Which service routine
releases the flush's semaphore is not settled. The high-water handler's reading of
how it releases that semaphore was not followed.

The widget registers that the diagnostic also names, the request timeout and the
interrupt destination words, belong to the crossbow contract, not this page.

## Octane page list

A DMA source-mapping list on Octane is an array of 32-bit words. Each word is a
4 KiB page-frame number. The Linux IMPACTSR driver keeps its table this way,
starting at offset 0 of its allocation, and programs the same slot registers as
IRIX. The layout is a software expectation, so it is inferred for the board.

The IP27 build's table entries are 64 bits wide, not 32: the 6.5.30 `mgras_dma.o` of that build stores eight-byte entries
and the IP30 build four-byte entries ([hq4-image-write.md](hq4-image-write.md)). IRIX writes `0x00290000` to register
`0x040918` in its IP27 build (a 9 in bits 19:16, the master hub's widget number, over bit 21) and `0x00680000` in its IP30
build. The Linux driver is reported to write the second value too (not re-read). Bit 22, set only in the IP30 build and
called a compatibility mode in the Octane diagnostic, is now the leading candidate for the entry-size selector: clear for
64-bit entries, set for 32-bit entries. Inferred. A board or model run that flips only that bit would settle it.

## Identity and serial record

- The first board word, the identity read at 0x000000, carries the HQ revision in
  bits 31:28 (see [board-identity.md](../../devices/mgras/board-identity.md)). The
  diagnostic's HQ4 probe accepts part `0xc003` at bits 27:12 and manufacturer
  `0x2aa` at bits 11:1. It also warns that a widget revision below 2 is a prototype.
  These are software expectations, so they are inferred.
- Bit 0 of that word and the 64-bit read of the same location are unknown. The
  production revision at address 0x000004 is also unknown.
- The stock Octane PROM and the diagnostic both read the board's serial-number
  record through the one-wire master at `0x011098`. A bit slot is a 32-bit store,
  and the reader waits for bit 1, then takes the wire level from bit 0. The routine
  is established from the PROM's and the diagnostic's code. The chip family on
  IMPACT boards is unknown.
- The PROM reads the record's name field to name the board's generation. The name
  `MOT` sets the GE revision field to 3 and `GM` sets it to 1. Any other name sets
  it to `0xff`, which the PROM also prints as an E-series name.
- The diagnostic prints the record's part, name and barcode as the faulty field
  replaceable unit.

## Open questions

- What the status words `0x020000`, `0x020008` and `0x020100` report while
  queued display work runs, and whether bit 0 of `0x020000` clears, and when. Only
  a board read during that work would settle these.
- Whether the flag clear written in the middle of queued FIFO words takes effect
  before or after those words.
- Whether bit 19 is raised by the selection alone and bit 28 by the 63rd word
  alone. Only a board can separate them.
- The entry-size selector for page lists (see above and [hq4-image-write.md](hq4-image-write.md), which also gives the DMA sequence, the
  host address forms and the inline writes).
- How the low-water service releases the flush's semaphore. The routine's own
  reading is not settled.
- What bit 16's waiter and enabler are, and what bit 20 of the flags does on the
  board. Both are software-side only so far.
- Whether VC3 register `0x1e` bit 0 gates a retrace message once per frame. A
  board with the bit clear and then set, observing the Hub's pending bit 17 each
  frame, would settle it.
- Reset effects and retention for HQ4 are unknown in every category: cold board
  reset, warm device reset, link reset and local HQ reset. Nothing here establishes
  what survives any of them.
- The `0x130400` window carries the kernel's table-register writes, as described
  in [questions/README.md](../../questions/README.md). Whether it also carries a DMA
  source-mapping port, with its own framing, is not settled here.
- The `0x020000` answer values for the flag-17 query are unknown. See
  [gl-commands.md](../opengl/gl-commands.md#queries-fences-and-transfers).
