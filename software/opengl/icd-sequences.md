# IMPACT (MGRAS): the command sequences a GL driver must emit, per operation

What the shipped IRIX OpenGL client writes to the IMPACT board for a fresh context, a lit and textured triangle, a clear, a buffer swap and one image transfer, in the order it writes it, and what the client and the kernel do about the board across a context switch. Written for someone building a driver that has to produce the same stream, or a model that has to accept it. The word catalogue, the framing rules and the kernel words are in [gl-commands.md](gl-commands.md); the interrupt, swap and context-switch handshakes are in [hq4-host-interface.md](../kernel/hq4-host-interface.md); the DMA path is in [hq4-image-write.md](../kernel/hq4-image-write.md); the ioctl numbers are in [ioctl-requests.md](../kernel/ioctl-requests.md). This page adds the order, which those pages do not give, and re-finds the words in the 6.5.0 client.

## Sources and grades

- **Client.** `usr/gfx/arch/IP28GR432/libGLcore.so` of IRIX 6.5.0 (SHA-256 `eca0027567a5ae885ca2a996349ef838c07364c6c2e7535ba65076eb359a5c2e`, DWARF kept, n32 build for the IP28 Indigo2). Addresses are its virtual addresses; the committed listing under `asm/MGRAS` and the decompiler output under `decomp/MGRAS` are from this file (checked here at `MakeCurrentRead`, `SwapBuffers`, `__glMgrim_Clear` and the routines named below). Both listings misname calls made through an offset from a global-table entry (a table load plus `addiu t9` shows as the nearest symbol, for example `bal __glMgrim_RenderMode` at 0xda70dd4 is a call to `InitFnPtrs`, and `bal __glMgrIoctl` at 0xda70f9c is a call to `InitTables`), so every call target below was read from the machine code. The IP27GR532 client of 6.5.30, which [gl-commands.md](gl-commands.md) reads, is not in this checkout; where a word is quoted from that page and found again here, the address here is given.
- **Kernel.** The Indigo2 `mgras.o` disassembly committed under `software/kernel/disasm/mgras` (function names and call order), and the 6.5.30 readings in [hq4-host-interface.md](../kernel/hq4-host-interface.md). `rrm.o` and `gfx.o` are not read; the roles of the ioctl numbers 1002 and 1005 come from the shipped header `sys/rrm.h` (`RRM_BASE` 1000: `RRM_BINDPROCTORN` is +2, `RRM_SWAPBUF` +5) and of 0x66 from `sys/gfx.h` (`GFX_GETBOARDINFO`, `GFX_BASE` 100 + 2).

Grades follow the legend in [AGENTS.md](../../AGENTS.md#7-published-documents). **Established** here means a store, call or constant read in the code at the address given. **Inferred** is an order or a role reasoned from the code. **Unknown** says what would settle it. Everything is what software sends; the board's microcode (`hq3.bin`, `ge11.bin`) is not decoded in this repository, so what each word does on the board is unknown unless a row says otherwise.

## 1. How the stream is carried

The client stores 32-bit words to one fixed address, `0x74080`, in its own address space (established: `lui 7; ori 0x4080` then `sw` in `MakeCurrentRead`, `InitTables`, `InitFormatValues` and every emitter below). This is the 6.5.0 Indigo2 build's command port; the 6.5.30 build reads the port at `0x124400` ([gl-commands.md](gl-commands.md#port-and-status-offsets)); which window each maps to is not established. A command is a header word (class, opcode, byte count, or the inline-block form) followed by its payload words, as in [Word framing](gl-commands.md#word-framing). The client sends GL-level tokens; raster register records (`0x7c08`, `0x7f08`, the `0xec10` blocks) appear only for textures and pixels. The status and flag words the client polls are in [Port and status offsets](gl-commands.md#port-and-status-offsets). Below, `<- w0, w1` means consecutive stores to the port.

## 2. A fresh context

### 2.1 Create

`__glMgrCreateContext` (0x0da71298) fills the context from the visual description and the default-value routines. It stores nothing to the port (established; the stores of `__glMgrasInitDefaultValues` at 0x0da719b8, about fifty, all go to context fields at offsets 0x94xx to 0x98xx, not to the port).

### 2.2 First make-current

`MakeCurrent` (0x0da711e0) calls `MakeCurrentRead` (0x0da70048, 4504 bytes) with the draw and read visuals. For a context whose `gcState` (offset 0x94) is 0 the order is below. The order was followed by hand through the branches; the conditions are read in outline, so the order is inferred except where two steps are adjacent instructions.

| # | What it does | Address | Grade |
|---|---|---|---|
| 1 | `__glCurrentContext := gc`; calls import +0x38 (the drawable query). Non-zero: a pixmap context, `__glPixmapMakeCurrent`, nothing below runs | 0xda70048, 0xda70188 | established |
| 2 | Copies the dispatch tables (`__glMgrim_`, vertex, normal, texcoord, raster-position, rectangle, then the list-compile and colour-shadow tables) into the context; begin-mode word := 2; dirty mask \|= 0x80 | the copy loops spread through the routine, not individually addressed | established |
| 3 | Import +0x28 with the flag word 0x4000 (0x220000 when a library debug-environment bit is set) returns the graphics descriptor, stored at +0x7b48; import +0x2c with the same flag word returns the render-node or board id, stored at +0x7b4c; -1 frees the context and returns 0 | 0xda70b74 to 0xda70bb0 | established; what the imports are: unknown |
| 4 | `GetBoardInfo` (0xda6e020): import +0x20, then `ioctl(fd, 0x66, {handle, reply, 0xcc})`; the reply feeds the renderer string and the context's Z and stencil settings (inferred, by the same routine's role on Express). Then `ioctl(fd, 0x6d67000a, 0)` | 0xda70bbc, 0xda70bd4 | established (calls and request record); use of the reply: inferred |
| 5 | Import +0x28 with the flag word again, then import +0x34; the descriptor at +0x7b48 is refreshed. Runs on every make-current | 0xda70748 to 0xda70768 | established |
| 6 | First time only: `ioctl(fd, 0x6d670027, {4, field})` (request meaning unknown, [ioctl-requests.md](../kernel/ioctl-requests.md)) | 0xda70f54 | established |
| 7 | `<- 0x00000600` (context opener); `<- 0x00008c04, configuration int` (a per-board byte at context +0x9ca4 shifted right by one) | 0xda70f8c, 0xda70f94 | established, adjacent instructions |
| 8 | `InitTables`: five geometry-engine table loads, each `<- 0x00008204, size word, 0x80000214 / 0x80000414 / 0x80000284, five descriptor words, data words, 0x00000000` (sizes 0x20, 0x40, 0x27, 0x27, 0x27) | 0xda6e488, called at 0xda70fa0 | established; descriptors and destinations: unknown ([Table loads](gl-commands.md#batched-register-blocks-and-table-loads)) |
| 9 | `ioctl(fd, 0x6d67001e, &buf)` (texture share request), then, when a library environment flag starts with `y`, `Y` or `1`, a message and `ioctl(fd, 0x6d67001a, 1)` | 0xda70fc8, 0xda71180 to 0xda71198 | established |
| 10 | `InitBuffers` (0xda6fa48): colour, depth and stencil buffer set-up; no port store | 0xda7079c | established |
| 11 | `InitFormatValues` (0xda6fc1c): `<- 0x00009a08, colour format word, second format word`, then fills the plane-mask shadow in the context (0x783c1e0f, 0xf000fff, 0x40007fff and so on) | 0xda707ac; the `0x9a08` store at 0xda6fcc8 | established; what the words mean on the board: unknown ([Format words](gl-commands.md#format-words-0x00009a08)) |
| 12 | When the bound visual differs from the one the context had: `<- 0x00009f04, RGB-mode byte (context +0xc20)`; and when a second flag from the same visual comparison is set, `<- 0x00009e00` | 0xda707c4 to 0xda70810 | established that they are sent; both opcodes are unknown |
| 13 | `InitTexmode1` (0xda6ffb8): three indirect calls into the texture manager; no port store of its own | 0xda707f4 | established call; the callees were not read |
| 14 | `__glMakeCurrentBuffers`, `InitFnPtrs` (0xda6f78c, procedure tables, no port store), `__glFindWindowSize` | 0xda70824, 0xda70ddc | established |
| 15 | `__glMgrim_DrawBuffer` (0xda7d388, called with `GL_BACK` 1029, or `GL_FRONT` 1028 when the visual is single-buffered) reaches `__glMgrasDrawBuffer` (0xda7d020): `<- 0x0000490c`, three words; `__glMgrim_ReadBuffer` (0xda7cd48) reaches `__glMgrasReadBuffer` (0xda7cb40): `<- 0x0000440c`, three words | 0xda70e94, 0xda70ea8 | established; the word values for the common visuals are in [questions/README.md](../../questions/README.md) |
| 16 | `__glUpdateViewport` (software); the board's viewport word goes out in step 18 | 0xda708a0 | established |
| 17 | `mgrTM_Init` (0xdab6f78: two register blocks, `<- 0x0000ec10` and four words each, the third word `0x194`, at 0xdab7100 to 0xdab7134), `__glMgrInitEvaluators`, `__glMgrInitPixels`, `__glMgrInitConvolutionState`, `__glMgrInitColorTableState`, `__glMgrInitDLDMA` (none of these five stores to the port), then the context procedure at offset 0x2e50; `mgrTM_SetBasereg` (0xdab6d80, ioctl `0x6d670010`) | 0xda70ed0 to 0xda70f24, 0xda708bc | established calls and the `mgrTM_Init` stores; register `0x194`: unknown |
| 18 | `__glContextSetColorScales`; `__glMgrPassStateToHW` (0xda6ef28): 17 passes in this order: accumulation, colour buffer, current buffer, depth buffer, enables, evaluators, fog, lighting, line, pixel, point, polygon, scissor, stencil, texture, transform, viewport. `PassViewport` and `PassEnables` (the two read) call the immediate-mode entry points an application would (`__glMgrim_Viewport`, `__glMgrim_DepthRange`, `__glMgrim_Enable`), so they send the tokens of section 3; the other fifteen were not read and are inferred to do the same | 0xda70ec0 | established order; tokens: established for the two passes read, inferred for the rest |
| 19 | `gcState := (gcState \| 3) & ~4` | 0xda7095c to 0xda70990 | established |

Before step 1 the board must be running: `hq3.bin` and `ge11.bin` loaded and started by the kernel (`MgrasDownload`, `MgrasStart`), the window created (`MgrasCreateDDRN`), and the process mapping in place. Whether the board needs a microcode image that the client never sends is not answered by this stream: nothing in `MakeCurrentRead` loads microcode, so the kernel's download is the only loader on this path. The context's own 63-word image is the kernel's, written at the first switch-in ([hq4-host-interface.md](../kernel/hq4-host-interface.md#context-switch-transaction)).

A second make-current of a context with `gcState` 3 repeats steps 1 and 5, the buffer and viewport sends of steps 14 to 16 when the drawable changed, and `mgrTM_SetBasereg` (established, same routine, the first-time branches skipped by the `gcState` tests at 0xda70770 and 0xda7077c).

## 3. State for a lit, textured triangle

The client sends each state call's token when the application makes the call, and sends all of them again through the 17 passes of step 18 above for a new context. So the table is the set of tokens for the state a lit textured triangle needs; the order in a new context is the pass order, the order afterwards is the application's. Tokens are the 6.5.30 values of [gl-commands.md](gl-commands.md#commands); the third column is the routine in the 6.5.0 client where the word was found again.

| State | Words sent | 6.5.0 routine | Grade |
|---|---|---|---|
| shade model | `<- 0x00004704, enum` (GL_SMOOTH 0x1d01, GL_FLAT 0x1d00) | `__glMgrim_ShadeModel` 0xda7dc50, store 0xda7dc94 | established |
| lighting on or off | `<- 0x00000d00` / `0x00000e00` | `__glMgrEnableLighting` 0xda72264 (store 0xda7227c), `__glMgrDisableLighting` | established |
| light n on or off | `<- 0x00007104, n` / `0x0000a004, n` | `__glMgrEnableLightSource` 0xda9b874 (store 0xda9b880), `__glMgrDisableLightSource` | established |
| light parameters | ambient `<- 0x00001214, n, r, g, b, a`; diffuse `0x1314`; specular `0x1414`; position `0x4f14`; spot direction `0x5010`; spot exponent, cut-off, constant, linear, quadratic attenuation `0x5108`, `0x5208`, `0x5308`, `0x5408`, `0x5508`, each with the light number | `__glMgrim_Lightfv` 0xda7253c | established |
| light model | ambient `0x0000570c, r, g, b`; local viewer `0x5804`; two-sided `0x5904` | `__glMgrim_LightModelfv` | established (6.5.30), not re-found here |
| material | `<- 0x00001118, face (0x404 front, 0x405 back, 0x408 both), parameter enum, four floats` | `__glMgrim_Materialfv` 0xda731a4, store 0xda7327c | established |
| colour material | `0x0000bf04` / `0xc004` / `0xc104`, mode enum; enable `0xc200`, disable `0xc300` | `__glMgrim_ColorMaterial` | established (6.5.30), not re-found here |
| normalise | `<- 0x0000a304, 1 or 0` | `__glMgrim_Enable` 0xda9b88c, store 0xda9bf1c | established |
| matrices | `<- 0x00002a04, mode enum`; `<- 0x00002b40, sixteen floats` (load), `0x2d40` (multiply), `0x2c00` (identity), `0x2f00` push, `0x2e00` pop | `__glMgrim_MatrixMode`, `__glMgrim_LoadMatrixf` | established |
| viewport, depth range, scissor | `0x00003310, x, y, w, h`; `0x00004808, near, far`; `0x00003910, x, w-1, y, h-1`; enable `0x6e04` | `__glMgrim_Viewport` 0xda9af6c, store 0xda9afd0 | established |
| depth | enable `0x6604, 1`; function `0x00004304, func - 0x200`; mask `0x3c04` | `__glMgrim_Enable`, `__glMgrim_DepthFunc` | established |
| blend, cull | enable blend `0x6504, 1`; `0x00003f08` (blend function); cull `0x7404, enum`, enable `0x7200`, disable `0x7300`; front face `0x5604` | | established (6.5.30); `0x6504` re-found in `__glMgrim_Enable` |
| texture on | `<- 0x00000b00` (stores at 0xda9c594, 0xda9c5f4, 0xda9c7bc, 0xda9c910) and `<- 0x00005f04, one word` (the word is a float constant or `0x000e0100`; stores at 0xda9ca28, 0xda9cab4, 0xda9cb38, 0xda9cb90) | `__glMgrim_Enable` (0xda9b88c) | established that `__glMgrim_Enable` sends them; that they belong to the texture capabilities is inferred (the branches sit among the texture-object calls); `0x0b00` as "texture on" is inferred from `0x0c00` being the texture-off word ([hq3 registers](../../devices/hq3/registers.toml), `CFIFO_CMD_TEXTURE_OFF`); the role of `0x5f04`: unknown |
| texture off | `<- 0x00000c00`, `0x00005f04, word` | `__glMgrim_Disable`, `mgrTM_DrawSetup` 0xdabb8ac (stores 0xdabc068, 0xdabc070) | established |
| texture parameters and environment | no word from the entry point itself: `__glMgrim_TexEnvfv` (0xda950dc) calls `mgrTM_SendTexmode1`, `mgrTM_RefreshDim` and `__glMgrasWrite`; `__glMgrim_TexParameterfv` (0xda92fac) calls `send_only_texmode2`. `mgrTM_SendTexmode1` (0xdabcc34) sends `<- 0x00000b00` or `0x00000c00` (one of the two, by a branch; stores at 0xdabccdc and 0xdabccec), a texture-mode register record (register 273 in the one record read) and `<- 0x00005f04` pairs (0xdabce98, 0xdabcf7c); `send_only_texmode2` (0xda95030) sends `<- 0x00005f04, word` | the routines named | established calls and tokens; what registers 273 and the others are: unknown (the texture-mode register names are in [devices/re4](../../devices/re4/README.md) and [devices/te1](../../devices/te1/README.md) only for the kernel's own writes) |
| texture image | `glTexImage2D` (`__glMgrim_TexImage2D` 0xda9640c) builds the object through `mgrTM_TexImage2D_setup` (0xda96720); no board word at call time. The pixels reach texture memory when the object is first used (next row) | | established (no port store in either routine) |
| texture use, at the first draw after a change | `mgrTM_DrawSetup` (0xdabb8ac): `mgrTM_tram_select`, `mgrTM_SendTexmode1`, register blocks (`<- 0x0000ec10` and four words, the third `0x191`, then the same with `0x193`) and records through `__glMgrasWrite`, `mgrTM_TexValidate`, `__glMgrSaveTexmode`, then `<- 0x00005f04, 0x00000c00`; for a texture not resident, `MakeTextureResident` and `mgrTM_DoTexLoad` (0xdabf464: `mgrTM_SendTlMode`, `mgrTM_SendTlTable` (`<- 0x0000ec10` blocks whose third word is `0x1a4` and `0x1a5`), the page DMA of [Texture transfers](gl-commands.md#texture-transfers), `<- 0x00009c00` before and after) | | established calls and stores in this order; the order of the register records among the calls is inferred; register meanings: unknown |

State the triangle needs and the table does not list (fog, line and point width, polygon mode and offset, stencil, logic op, colour mask, alpha test) follows the same rule and is in [Context setup and state](gl-commands.md#context-setup-and-state).

## 4. The primitive

| Step | Words | 6.5.0 routine | Grade |
|---|---|---|---|
| `glBegin(GL_TRIANGLES)` | `<- 0x00001a00` | `__glMgrBeginTriangles` 0xda901ac, store 0xda901c8 | established |
| per vertex, in the application's order | normal `<- 0x0000070c, nx, ny, nz`; texture coordinate `<- 0x40000808, s, t`; colour `<- 0x2000020c, r, g, b` (or `0x00000210` with alpha); vertex `<- 0x2000000c, x, y, z` | `__glMgrim_Normal3f`; the others are 6.5.30 words ([Attribute headers](gl-commands.md#attribute-headers)) | established for the normal and the begin and end words here; the rest from the 6.5.30 page |
| `glEnd` | `<- 0x00002400` | `__glMgrEndTriangles` 0xda9033c, store 0xda90358 | established |

The vertex header forms put the source type and component count in the header word; the payload is the application's own values, unconverted. Flat and smooth shading differ only in the shade-model word. In a triangle strip the client may add `0x0000dc00` (swap-mesh) as in [Primitives](gl-commands.md#primitives).

## 5. Clear

`__glMgrim_Clear` (0xdafd4bc):

1. Inside `glBegin`: `GL_INVALID_OPERATION`; bits outside `0x4700` (colour 0x4000, accumulation 0x200, stencil 0x400, depth 0x100): `GL_INVALID_VALUE`; render mode other than `GL_RENDER`: nothing.
2. Colour (0x4000): nothing when the draw buffer is `GL_NONE`; otherwise `<- 0x00001500`, once (store 0xdafd570), or, for an auxiliary draw buffer (0x409 to 0x40c), once when its number is within the context's auxiliary count (store 0xdafd61c).
3. Accumulation (0x200), when the context has one: a call through the context's own clear procedure (offset 0x7b20); no word is stored here.
4. Stencil (0x400), when the visual has stencil bits: `<- 0x00004c00` (store 0xdafd5c0).
5. Depth (0x100), when the visual has a depth buffer: `<- 0x00004a00` (store 0xdafd5e4).

The clear values themselves go at the call that sets them (`glClearColor` `0x0000ba10`, `glClearDepth` `0x0000bc04`, `glClearStencil` `0x0000be04`, `glClearIndex` `0x0000bd04`, [gl-commands.md](gl-commands.md#context-setup-and-state)); the clear words carry none. All established. There is no wait; the clear is ordered by the stream.

## 6. Swap

The client sends no word to the port. `SwapBuffers` (0xda6e728), for a double-buffered visual only: `ioctl(fd [+0x7b48], 0x3ed, {render node [+0x7b4c], 0, 0})`, where 0x3ed is `RRM_SWAPBUF` (1005, `sys/rrm.h`); a negative result calls the import error procedure; then, if a per-window hook word is set (the word at offset 0xc of the structure two pointers down from context +0x91fc), it calls one more import-table procedure (not resolved). Established.

The kernel does the rest ([Buffer swap command](../kernel/hq4-host-interface.md#buffer-swap-command)): `MgrasSchedSwapBuf` sends the bank-validation token, writes `0x400` to `0x011040` and `<- 0x00003700` to the command window (`0x120400`); the swap-finish interrupt (status bit 10) programs the XMAP buffer-select registers at `0x071c88` and `0x071d80`, and the retrace handler reprograms the XMAP registers at `0x071c88`, `0x071d80`, `0x071e00` and `0x071e80`. So an ICD that is not IRIX's kernel must send `0x3700` itself after the frame's last word, and flip the XMAP buffer select at retrace. Established for the sequence in the kernel code read; that `0x3700` makes the board raise bit 10 once the queue has drained is inferred; the second mask word under XMAP index 4 for windows 32 and up is open ([hq4-host-interface.md](../kernel/hq4-host-interface.md#buffer-swap-command)).

`glFlush`: `<- 0x00003600` (found once in the 6.5.0 client), and the client sets flags bit 20 itself ([Reconciling](gl-commands.md#reconciling-with-other-pages)). `glFinish` polls status bit 1 with no limit ([Status bits](../kernel/hq4-host-interface.md#status-bits-and-waits)).

## 7. One image transfer

`glDrawPixels` of an RGBA image goes through `__glMgrSendPixels` (0xda84274; the fast path `__glMgrFastSendPixels` 0xda83d98 has the same brackets). The words, in order, found in the 6.5.0 client:

1. `<- 0x00008600` (0xda842dc), then the imaging-pipe set-up (`__glMgrInitImagingPipe`, 0xda84560).
2. The parameter loads, the geometry-engine program, the destination rectangle and the zoom of [Pixel images](gl-commands.md#pixel-images), steps 1 to 4: block loads `0x00008000 | len` and `0x0000cd00 | len`, then register records at `0x13b`, `0x19b`, `0xe34`, `0x191`, `0x192` (6.5.30 values; the 6.5.0 client loads the same kinds of record through `__glMgrasWrite`, not re-compared register by register).
3. `<- 0x000c0004, format word` (0x12b in the path read: element size, alignment and format bits) (0xda846d0).
4. `<- 0x00008d20`, eight words: words per row, 0, 0, pass count, row-group count, 1, the engine routine (`0x49d0`), flags (`0x99` DMA, `0x18` inline) (0xda846ec).
5. The image: inline blocks (`0x80000000 | offset << 22 | words * 4`, one per row) through `__glMgrSendPagedRows`, or by DMA with the descriptor bank and the kick byte of [Host-to-board DMA](gl-commands.md#host-to-board-dma) followed by the fence `0x000e0400` and a wait for flags bit 16. The kernel's own DMA programming, page lists and inline writes are in [hq4-image-write.md](../kernel/hq4-image-write.md).
6. `<- 0x000c0004, 0x00000e00` (0xda8489c), `<- 0x00009900` (0xda84980; role unknown); on the way out the brackets `0x0000d214`, `0x0000d300`, `0x0000e910` and `0x0000ea00` of the 6.5.30 page.

Read-back is the mirror: `0x00009600` and `0x00009700` brackets, the `0x0008` and `0x000a` descriptor banks, the DMA-read sync `0x000e0100`, polls of the DMA status and of status bit 1 ([Pixel images](gl-commands.md#pixel-images)). Established for the stores listed here; their meaning on the board is unknown.

## 8. What happens across a context switch

### 8.1 In the client

`LoseCurrent` (0xda6f4dc) does nothing to the board stream. It returns without detaching when the context is not in `GL_RENDER` mode or is inside `glBegin`. Otherwise it calls `__glLoseCurrentBuffers`, and, in one branch, stores `0x00100000` at offset `0x70008` from the pointer held at context +0x9c48 (0xda6f5c4; the branch is taken when the word at +0x9c44 is set and the word the pointer at +0x9c58 points to has its top bit clear, or that pointer is null; what that offset is: unknown). It then saves the begin-mode word, clears the current-context pointer, and copies four process-global words (0x1020 to 0x102c, written by `MakeCurrentRead` at 0xda70938 to 0xda70950) into the context. Established.

The next `MakeCurrent` of the same context resends nothing except what steps 5 and 14 to 16 of section 2.2 do. The client never writes the context image; the board's per-context state is the kernel's job.

The one client request that names the render node is `__glMgrBindHWContextToThread` (0xdabdf2c): `ioctl(fd, 1002, {rn})`, where 1002 is `RRM_BINDPROCTORN` ("set current render node for the process", `sys/rrm.h`). Its direct callers are in `__glMgrFreeTextureManager` (0xdabe030, 0xdabe118); which call binds the node on an ordinary make-current is not traced (the import +0x28 and +0x2c calls of step 3 and 5 are the candidates).

### 8.2 In the kernel

`MgrasPcxSwap` (committed `mgras.o` disassembly, `MgrasPcxSwap`) is the board function table's context-swap entry (`gf_PcxSwap` in `sys/gfx.h`). Its calls, in code order, name the work: `MgrasValidateClip` (writes the window clip words of the incoming context's image, [Kernel context image and eviction](gl-commands.md#kernel-context-image-and-eviction)), `MgrasCtxsw`, `MgrasCcvUpdate`, the swap and flush helpers (`MgrasFlushHQ3`, `MgrasThrowManagerRssShadow`), and the geometry-engine memory manager (`MgrasNextEramResource`, `MgrasEramBufAlloc`, `MgrasEramRead` and `MgrasEramWrite` to evict and restore a context's geometry-engine memory, `MgrasMoveDemarcationDown` and `Up`, `MgrasGlContextAlloc` and `Free`, `MgrasRestoreOverlap`, `MgrasResetTxTbl_Kern`). Established as names and call order; the conditions that select each path were not followed.

`MgrasCtxsw` is the handshake: the 63-word image write between two interrupts, `0x4fc` to `0x130500` before it, `0x0000f400` after it only for the default context ([Context-switch transaction](../kernel/hq4-host-interface.md#context-switch-transaction)). What the board holds per context is therefore: the 63-word image (word 0 the geometry-engine memory slot or -1, word 1 flag bits, words 2 to 15 the clip description), the geometry-engine memory contents the kernel evicts and restores by DMA, the texture memory the kernel saves and restores in 16 KiB blocks, and the interrupt-block words the switch saves and restores (`0x011000`, `0x011008`, `0x011030`, `0x011040`, `0x011050`). A driver that does not use IRIX's kernel must provide an equivalent per-context save and restore, or give each context its own board (nothing in the stream carries state across a switch except these).

## 9. Unknowns, and what would settle each

| Unknown | What would settle it |
|---|---|
| What the imports at context +0x20, +0x28, +0x2c, +0x34 and +0x38 are (the handle for `GFX_GETBOARDINFO`, the flags 0x4000 and 0x220000) | read the initialiser of the context's import table in `libGL.so` (`IP28GR432`) |
| Which call binds the render node to the process on a make-current (`RRM_BINDPROCTORN`) | trace the import +0x28 and +0x2c calls into `libGL.so`, or the callers of `__glMgrBindHWContextToThread` through the global table |
| The opcodes `0x9f04`, `0x9e00`, `0x5f04`, `0x0b00` (as texture on), `0x8600`, `0x9900` and the `0x0600`/`0x8c04` pair | the `hq3.bin` microcode decoder that [questions/README.md](../../questions/README.md) lists as missing; or a trace of what each changes in a board read |
| Texture-mode register numbers sent through `__glMgrasWrite` (273, 0x191, 0x193, 0x1a4, 0x1a5) | match them against the raster and texture register tables in [devices/re4](../../devices/re4/README.md) and [devices/te1](../../devices/te1/README.md) |
| Whether the 6.5.30 IP27GR532 client sends the same order for the first make-current | read its `MakeCurrentRead` (not in this checkout) |
| The store of `0x00100000` at offset `0x70008` from the pointer at context +0x9c48 in `LoseCurrent` | find what that pointer is (set at context creation or make-current) and which register offset `0x70008` is, from the kernel's mapping code (`MgrasMapGfx`) |
| What the board needs besides the stream for a context that has no kernel (an NT driver) | the board's reset and microcode-load contract ([prom-handoff.md](../../devices/mgras/prom-handoff.md), `MgrasInitHQ` and `MgrasDownload` readings) plus a board or model run |
| Where the first-time `0x6d670027` request lands in the kernel | the dispatcher reading recorded in [questions/README.md](../../questions/README.md) section 20 |

## Other heads

The same questions for the two heads this repository does not cover are answered in the sibling repositories; read them there rather than from this page.

- VPro (Odyssey): the odsy repository, `devices/buzz/fresh-context.md` (what the kernel replays at a first switch-in, the save record and the complete validate order) and `devices/buzz/state-sequences.md` (the command words each GL state feature sends), at commit `ed2b34b`.
- InfiniteReality (KONA): the kona repository, `platforms/ir/x-tokens-and-gl-contexts.md` (what happens when an X token arrives while a GL context is current, and across a switch between two GL contexts) and `software/opengl/gl-token-catalogue.md` (the tokens for the entry points the command map left located, in the order a first textured, lit triangle and `glFinish` need them), at commit `7c873b5`.
