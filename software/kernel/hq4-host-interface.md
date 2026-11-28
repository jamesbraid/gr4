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
- The graphics members of the IRIX 6.5.30 IP30 `mgras.a` archive (SHA-256
  `32a535dc595727594b6ddf50897d87fced83202f5f78d271d22d97ab330f4614`) and the IP30 `heart.o`
  (`do_heart_intr_alloc`, `0x1028`), read as disassembly for the interrupt-destination section.
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

### Reading the source bits without their enables

The general handler sees a bit only through the enable word, so the handler's own reads say nothing about an unenabled bit. Two other readers do. The swap scheduler tests `0x020010 & 0x401` (the flags word, [gl-commands.md](../opengl/gl-commands.md#port-and-status-offsets)) before it sets the bit 10 enable, and clears a hit through `0x011028`; the client polls the same word for bit 16 (sync complete), 17 (query ready) and 20 (flush), none of which is in the default enable. So **established** that bit 10 and bits 16, 17 and 20 show in the flags word with their enables clear; that the flags word and the interrupt status word are the same latches seen through and without the mask is inferred from the clear write. For bits 19 and 28, the context-switch handshake, no shipped code reads them except through the enable mask (the switch sleeps on the interrupt), so whether a poll of `0x020010` would see them is **unknown**. The 6.5.7 library names the HQ4 enables separately: `flag_intr_enab_*` for the flag sources and `stat_intr_enab_*` for the status source (the low-water interrupt), which fits the two enable words above. **Settled by:** a read of `0x020010` across a context switch with the interrupt enables clear, on a board or model.

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

- **What the kernel writes** (**established**, the 6.5.30 IP30 `mgras.a`, `mgras_init.o`: `mgras_attach` at `0x47c` and `MgrasSetHQ4IntrVectors` at `0x7a8`, read in full). `mgras_attach` allocates four crosstalk interrupts and then connects them. The first takes whatever CPU the allocator picks and the other three ask for that CPU through the device description. In allocation order the first is the general handler, the second the FIFO low-water handler, the third (error-interrupt flag set, so HEART gives it a widget error vector) the HQ4 error handler, and the fourth (graphics priority) the retrace handler; the driver keeps them in the order general, low-water, retrace, error. The 6.5.30 IP30 `heart.o` `do_heart_intr_alloc` stores target 8 and address `0x80` in every handle. `MgrasSetHQ4IntrVectors` takes the target widget and the address from the first handle only and builds, once per board, the words below. For HEART the widget is HEART's own widget number (crossbar port 8, `HEART_ID` in `irix/kern/sys/RACER/IP30.h`) and the address is the widget-space offset `0x80` (`HEART_XTALK_ISR` in the IRIX 6.5.7 HEART header `irix/kern/sys/RACER/heart.h`; the same header's destination-word macro packs the vector at bits 31:24 and the target widget at 19:16 of the upper word, with address bits 47:32 below).
  - `0x011070`: three vectors, as above.
  - `0x011060`: target widget in bits 27:24, bit 29 set, address bits 47:32 in 15:0.
  - `0x011068`: address bits 31:0.
  - Two 32-bit stores at window offsets `0x30` and `0x38`: the upper word (vector of the error-flagged handle, the HQ4 error handler, in bits 31:24; target widget in 19:16; bit 20 set; address bits 47:32) and the address bits 31:0. The generic Crosstalk widget layout puts its interrupt destination words at `0x34` and `0x3c`, so these sit four bytes below. The generic registers hold their 32 bits in the low half of the doubleword at `0x30` and `0x38`, which a big-endian processor reaches at `+4` (the Bridge specification lists them at the doubleword addresses `0x30` and `0x38`), so a 32-bit store at `0x30` lands in the other half; the window pointer is the plain widget base (`xtalk_piotrans_addr` at offset 0), so whether the board's registers differ from the generic layout was not read (**unknown**).
- **What the crossbar and HEART do** (**Established** for the cited specification sections; the OpenBSD and Linux use is **Secondary**). The Octane crossbar routes by the packet's target id (Crossbow ASIC specification rev 12.0, section 4.3.6), here HEART. HEART takes interrupts as writes to its widget register at offset `0x80`: IRIX writes that offset into every widget, OpenBSD and Linux use the same, and the data carries the vector in bits 7:0 and set-or-clear in bit 8 (Crossbow specification section 3.1.1; Bridge specification pp. 117 to 119). Whether HEART treats a write to a different offset of its widget space as an interrupt is not stated anywhere read: **unknown**.
- **Why this is inferred, not established.** No HQ4 specification is held, so that the board sends the programmed address rather than a fixed one is a reading of the packing, with the generic widget behaviour as support. The two copies (board words and window words) are consistent with the board using its own pair for the three board vectors and the window pair for the error vector, which fits the vector packing, but no software reads either back.

**The same words on an Origin or Onyx2 host (IP27).** The IP27 `MgrasSetHQ4IntrVectors` (6.5.30 `IP27boot/mgras.a`, `mgras_init.o` `0x8d8`) is said to match the IP30 routine instruction for instruction, with different record offsets. The 6.5.7 source of the routine (`mgras_init.c`, non-standalone build) names the words: the vector register (`0x011070`), the interrupt control words (`0x011060`, `0x011068`) and the widget destination words (`0x30`, `0x38`). The inputs differ. The target and address come from the first handle's `xtalk_intr_target_get` and `xtalk_intr_addr_get`, and on an Origin the handle is made by the Hub's allocator (`hub_intr_alloc`, `irix/kern/ml/SN/io.c`).

**The Origin handle's address (established).** The allocator's address is the Hub's pending-interrupt write register, `PI_INT_PEND_MOD` (`0x90`), on the node of the CPU chosen, in crosstalk form (`HUBREG_AS_XTALKADDR`, `irix/kern/sys/SN/xtalkaddrs.h`): `0x8000_0180_0000 + (nasid << 38) + 0x90`. The target is the widget's master Hub widget number, and the vector is the interrupt bit the allocator hands out. For a CPU on node 0 the low 32 bits of the address are `0x01800090`.

**How the board uses it (inferred).** That the board sends its packets to that address, and that the Hub treats the write as "set pending bit = vector", is the generic widget behaviour and not read from the board. The three vectors and the error vector are allocated per handler and differ per boot. **Settled by:** a Hub-side capture of the first retrace write, or the Hub chapter of the SN0 specification for `PI_INT_PEND_MOD`'s data format.

**The IP27 register values (unknown here).** `0x011068` as `0x01800090`, `0x011060` as `0x20008000 | (target & 0xf) << 24` with bits 15:0 `0x8000 | n << 6` for nasid `n`, and the claim that the IP27 routine matches IP30 all rest on `IP27boot/mgras.a`, which is not in the root and was not checked. They stay unknown until it is. The `0x20000000` bit is the one the source ORs in as `HQ4_VERT_INTR_ENAB`; that it is the vertical-retrace enable is **inferred** by elimination.

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

## A command cut short

Question: what the board does when the stream stops inside a command, for example when a bug check halts a CPU between two stores of one command. Labels follow the legend above. Sources: the IP30 6.5.30 `mgras.a` members `mgras.o`, `mgras_init.o` and `mgras_tport.o`, disassembled with relocations for this section (the disassembly committed under `software/kernel/disasm` is the Indigo2 build: its `MgrasReset` toggles a reset byte in the system board, which the Octane build does not), and the 6.5.7 standalone graphics library that the kernel text port is built from (`stand/arcs/lib/libsk/graphics/MGRAS/mgras_tport.c`, `mgras_init.c`, `mgras_internals.h`).

- **Two kinds of stream share one window, established from the emitters.** Numeric packets are single 64-bit stores: the register selector in bits 48:40 and an execute mark in bit 50 ([2d-transactions.md](../../devices/re4/2d-transactions.md)). GL commands are 32-bit words with a header that carries a byte count ([gl-commands.md](../opengl/gl-commands.md), "Word framing"), and a 64-bit store to the port counts as two stream words, so a numeric packet is also two words of the same stream. Which decode the board applies to a word it finds where a header was expected is **unknown**, as the reconciling note in that page already says.
- **A numeric sequence cut before its execute only stages registers, inferred.** Every kernel and PROM text port drawing primitive re-writes its geometry and fill mode before its execute store: the box fill writes the block corners and the fill mode, the point its position and fill mode, the glyph its fill mode and block corners (`MgrasTpSboxfi`, `MgrasTpPnt2i`, `MgrasTpDrawbitmap` in the 6.5.7 source, read in full; the IP30 `MgrasTpInit` read in full). So a sequence that ends before its execute leaves staged geometry that the next primitive overwrites. State set once is not rewritten per primitive: the colour index (`MgrasTpColor`, one store) and the screen masks, window mode, PP1 fill mode and pixel command (`MgrasTpInit`, five stores). A cut inside `MgrasTpInit` leaves those half set, and only another `MgrasTpInit` repairs them. The exception is a glyph: its rows are pairs of character stores (the first stages, the second executes) inside a block that the glyph's own set-up opened, so a cut inside a glyph leaves a character block open. **Unknown:** what a new block set-up does to an open block; **inferred** that it restarts it, because fill mode, block corners and an execute begin every primitive and nothing else is ever set before drawing.
- **A GL command cut short, board behaviour unknown.** The header's byte count decides how many following words belong to the command. If the board counts bytes and the stream stops short, the next words, whatever they are, are taken as payload. No source, shipped code or document says whether the board does that, waits, or times out. Nothing closes a stream ([gl-commands.md](../opengl/gl-commands.md)).
- **No shipped code completes or abandons a cut command, established for what was read.** A scan of the IP30 `mgras.o` for the high-half constant of the command window (`0x120400`) finds it only in `MgrasAttach`, `MgrasCtxsw`, `MgrasEramRead`, `MgrasEramWrite`, `MgrasMapGfx`, `MgrasPcxSwap`, `MgrasStart`, `MgrasValidateBanks`, `MgrasValidateClip` and `MgrasValidateEramRes`; the suspend, resume, exit and DDRN-destroy routines are not among them. (A scan, not a read of every body. `MgrasExit`'s call list was read: it takes locks and semaphores, unmaps user pages and destroys DMA state.) A static call walk from `MgrasExit`, `MgrasSuspend`, `MgrasResume` and `MgrasReleaseGfxSema` reaches none of those store sites. `MgrasDestroyDDRN` does: when the board's error count is zero and the destroyed context is the board's current one, it calls `MgrasCtxsw` (the call at 0x2fe8) with the record embedded in the board at +440 as the incoming context, **inferred** to be the default context. So a destroy of the running context sends the whole context-switch transaction above, ending in `0x0000f400` for the default context, behind whatever the stream held. That switches away from a context that may be mid-command and does not finish the command; what the board does with it is the same unknown as below.
- **What IRIX does when the stream stops draining, established.** `mgras_fifotimer` arms a timer of 100 ticks that re-arms itself with a count of 15; `mgras_fifotimeout` counts down and at the last step calls `mgras_error`. That routine logs, runs a thread scan carrying the number 9 (a kill, **established**: the callback is the one the Odyssey teardown uses, whose 6.5.7 source passes `SIGKILL`, and `SIGKILL` is 9 in the IRIX signal header) and calls the retrace validate and init routines. It does not reset the board. The 15 second figure is `HQ3_CFIFO_TIMEOUT` in the 6.5.7 header. The context switch has its own 100-tick watchdog, and the flush waits at most 1 ms for the FIFO level to reach zero (above). So, as on the Odyssey board, the only answer to a stream IRIX cannot finish is to kill the board's users. A reset comes afterwards only if the killed threads include the board manager, whose exit runs the path in the next section (**inferred** that the kill reaches the manager).
- **Hardware outcome, unknown.** Routes tried: the exit, suspend, DDRN-destroy and timeout paths above, the 6.5.7 library, the HQ4 pages in this repository. **Test that settles it:** the host-interface microcode's handling of a command header and of an empty FIFO. The Octane image `hq3_revB_HQ4.bin` (with its `.u` listing, in the 6.5 media) is held but this repository has only a container reader and three instruction forms for it (`retools/tools/gr4/hq_ucode_disasm.py`: the 512-entry token table, jump, immediate load and move), not enough to follow a header handler, so this has not been read; a full instruction-set decoder would settle whether the microcode stalls on an empty FIFO. The input logic in front of the microcode, if it frames words at all, is not microcode and needs a model of the board. A physical test would be a last resort through the proposal step.
- **What the shipped library does to clear a board it knows nothing about, established (6.5.7 source `mgras_init.c`, `MgrasReset`, HQ4 branches).** It resets the board's crosstalk link before anything else: on an Octane it writes the crossbow port's link-reset register (one shot, the source says 4 core clocks) and waits 1 ms; on an Origin it writes the register for the board's widget. The comment above the call says that a link reset takes the graphics board with it. It then restores the link and widget control words, re-initialises the display-bus controls, releases the raster engine and pixel processors (board configuration word `REPP_RESET` bit), and writes the host-interface defaults. Nothing in the library tries to complete or flush a command; the reset is the only thing standing between a half-sent command and the next one. That the reset discards a half-received command is **inferred** from that comment; that it is enough without the later steps is **unknown**: no shipped path runs the reset alone.
- **Is the whole take-back needed, answered from the PROM's order.** The PROM runs it all, in `mgrasInitBoard`: flow-control off (IP30), `MgrasReset`, info or display-bus controls and XMAP, the default timing, `MgrasInitHQ`, `MgrasInitRasterBackend`, then the text port's own set-up. What a text port itself needs after a reset is the five numeric stores and the XMAP/DIB writes of `MgrasTpInit` (screen masks, window mode, PP1 fill mode for 8-bit colour index, pixel command, DID 0 main mode, display enable); the reset has already restored the host-interface defaults. Which of the timing, raster-back-end and RDRAM-synchronisation steps in between a text port can do without is **unknown** (see the next section for the test).
- **Design consequence.** Do not pad and do not resynchronise. After a bug check treat the stream as lost and reset the board before drawing (next section).

## Taking the board back after a crash or a lost manager

Question: how software takes the head back for a panic or STOP screen, and what IRIX's own console path does on an IMPACT board. Sources as above, plus the kernel sources `irix/kern/os/printf.c` and `irix/kern/io/cn.c` and the IP30 `gfx.o` and `htport.o`; the Odyssey half of this answer is in that repository's board reset page.

**The path IRIX takes, established.**

1. A panic stops the other processors and calls `dopromreset(1)`, which calls `cn_init(1, 0)` once. Console output then goes through `tpcons_write` to the chosen text port. The same `cn_init(0, 1)` runs when the board manager (the X server) goes away (`GfxUnmanage`, IP30 `gfx.o`, read in full, on the branch where a word of the manager record is zero).
2. `cn_init` calls `gfx_earlyinit`, which on IP30 calls the Odyssey probe and then `mgras_earlyinit`, with no test of either result. The Odyssey probe returns at once for a serial console; `mgras_earlyinit` has no serial-console exit.
3. `mgras_earlyinit` (IP30 `mgras_init.o`, read in full): a global word that starts at 1 and is cleared on return selects the first-call path (the 6.5.7 source has a `firsttime` flag with the same initial value, used only for the crossbow revision check; that the word is the same flag is **inferred**, and the binary's other uses of it are an addition to the source). On the first call it calls `Mgras_FC_Disable` (the 6.5.7 `mgrasInitBoard` carries the comment "disable flow control" beside the same call; its effect, clearing two bits of a HEART register, is **inferred** to take the HEART credit counter out of the write path) and then, for each board found (three slots in the binary, two in the source), stores 255 into a byte of the board's info record and calls `mgrasInitBoard`. On every later call, which is the panic and lost-manager case, it skips `Mgras_FC_Disable` and calls `mgrasInitBoard` for the first board found only; the other boards get two halfword fields cleared and the byte set. Either way it registers the first board with the text port. There is no panic test and no "already initialised" test, so the first board is always reset and re-initialised.
4. `mgrasInitBoard` (read in full): `MgrasReset`, then `MgrasGatherInfo` (first time only) or `MgrasInitDCBctrl` and `mgrasConfigureXMAP`, then the default timing for the monitor ID (`MgrasRecordTiming`, `MgrasCalcScreenSize`), `MgrasInitHQ(base, 0)`, `MgrasInitRasterBackend`, and the board-initialised flags.
5. `MgrasReset` (IP30, read in full): for a board with a registered widget it calls `xwidget_reset`; otherwise it writes the crossbow port's link-reset word, waits 1 ms and restores the link control word. Either way it then runs `MgrasInitDCBctrl`, restores the widget control word, polls the bus-status word at `0x020100` until ((bits 4:0) + 1) >> 1 is below 8 (no limit), and stores `0x40000000` to `0x072408`, `0x108d` to `0x011000` and `0x765b900f` to `0x011008`. `0x072408` is the board configuration word (`BOARD_CONFIG_OFFSET`; the same `0x40000000` store opens the timing load in [display-timing.md](display-timing.md)), and `0x011000` and `0x011008` are in the interrupt table above. By call order the 6.5.7 source names the last two as the HQ configuration word (`mgras_hqSetHQConfig`, `0x011000`) and the GIO configuration word (`mgras_hqSetGIOConfig`, `0x011008`; the name is inherited from the Indigo2 board): `MgrasInitHQ` calls the same pair, and the IP30 object stores `0x108c` ORed with the geometry-engine count, then `0x765b900f`, to the same two offsets, so `0x108d` differs from `0x108c` only in bit 0, which the source's `HQ3_NUMGE_MASK` covers (**inferred**; the macros and `HQ3_HQ_CONFIG_DEFAULT` are not held). `MgrasInitHQ` then rewrites `0x011000` with the count 0. What the field values select is **unknown**.
6. `MgrasInitHQ` with no geometry engines and `MgrasInitRasterBackend` run next, as recorded for the PROM ([prom-handoff.md](../../devices/mgras/prom-handoff.md), steps 2 to 4: the FIFO thresholds `0x47`, `0x14`, `0x64`, `0x40`, `0x10`, `0`, flags and interrupt enables cleared, DAC, raster and pixel-processor synchronisation, timing table, VC3, XMAP, raster state, the screen cleared). That page took them from the 6.5.7 source. The IP30 6.5.30 `MgrasInitHQ` was read here and writes the same six thresholds; the 6.5.30 `MgrasInitRasterBackend` was not read.
7. `tp_init` then calls `htp_reinit`, which is `htp_init`: it calls the board's `MgrasTpInit`, then redraws the text port. `MgrasTpInit` (IP30, read in full) first tests the board's initialised flag, which `MgrasReset` clears and `mgrasInitBoard` sets, and calls `Mgras_FC_Disable` and `mgrasInitBoard` when it is clear (the 6.5.7 source calls `mgrasInitBoard` there, with `Mgras_FC_Disable` inside it); in this chain the flag is already set. It then polls the command FIFO level (low byte of `0x020008`, wait until below 112, no limit) before each of five 64-bit stores to `0x120400`: the two screen-mask limits (width and height minus 1), then three more numeric stores that match the source's `pp1winmode`, PP1 fill mode for 8-bit colour index and pixel command. It then waits for the bus-status fill to fall below 5 and makes DCB-window stores (in order: byte 0 at `0x071c88`, 0 at `0x071e00`, byte 12 at `0x071c88`, 443 at `0x071f00`) that the 6.5.7 source performs as the window-ID-0 main mode and the display-enable bit; the pairing of those offsets with names is **inferred**. It ends by setting a flag byte when the monitor ID is 130.

**Known console mode after recovery, established (source), the object's order matching:** window ID 0 in 8-bit colour index, screen mask at the full screen, the display-enable bit of the DIB control word set, the default timing for the monitor ID. The colour map and the screen are not the PROM's: `htp_init` (IP30 `htport.o`) calls `txMapcolors` and `txClear` after the board's text port set-up, and `MgrasInitRasterBackend` clears the screen before that.

**What an NT STOP-screen backend should do, design.** Link reset (host side), the `MgrasReset` stores, `MgrasInitHQ` with no engines, the raster back end, then the text port state; that is the sequence the PROM runs. Bound the unbounded polls (bus-status fill, FIFO level, any status wait), do not use the driver's flow control or locks, and write the text with the numeric packets of [2d-transactions.md](../../devices/re4/2d-transactions.md). **Unknown:** whether the board needs the whole back-end re-initialisation (DAC, RDRAM synchronisation, timing) or only the reset and the text port's own set-up; IRIX always does all of it, and its cost (the synchronisation and the full-screen clear) was not measured. **Test:** a model run of both orders, or the proposal step for a board.

**Not covered.** The Origin 2000 and Onyx2 kernel's early init (the IP27 build's `gfx_earlyinit`) and the IO6 PROM's install path were not read here.

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
  what survives any of them. What the kernel does after a reset is in "Taking the board back after a crash or a lost manager" above: it writes everything again.
- The `0x130400` window carries the kernel's table-register writes, as described
  in [questions/README.md](../../questions/README.md). Whether it also carries a DMA
  source-mapping port, with its own framing, is not settled here.
- The `0x020000` answer values for the flag-17 query are unknown. See
  [gl-commands.md](../opengl/gl-commands.md#queries-fences-and-transfers).
