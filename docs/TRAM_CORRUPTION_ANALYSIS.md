# SGI Impact Graphics (MGRAS / GR4): TRAM Page Desynchronization & Corruption Analysis

**Author:** Antigravity / Reverse Engineering Toolchain  
**Date:** October 14, 2026  
**Target:** SGI IRIX `libGLcore.so` (Impact MGRAS / GR4 Architecture)  
**Correlated Artifacts:** [`TE1.h` (line 488)](file:///home/dbehr/gits/iris/ignore/gr4/TE1.h#L488), [`mgras_texture.c`](file:///home/dbehr/gits/iris/ignore/gr4/libglcore/decomp/MGRAS/mgras_texture.c), [`mgras_texman.c`](file:///home/dbehr/gits/iris/ignore/gr4/libglcore/decomp/MGRAS/mgras_texman.c), [`mgras_tex_io.c`](file:///home/dbehr/gits/iris/ignore/gr4/libglcore/decomp/MGRAS/mgras_tex_io.c)

---

## 1. Executive Summary & Problem Statement

When running TyrQuake / GLQuake on an emulated or physical SGI Impact workstation (Indigo2 / Octane with Solid Impact, High Impact, or Maximum Impact) for an extended period (such as an overnight demo loop), textures across the level become progressively corrupted. Specifically, castle walls, floors, and doors begin sampling and animating the water, lava, or slime warp texture instead of their assigned surface textures.

A fresh run of Quake does not exhibit this behavior. The issue only manifests after prolonged gameplay under **TRAM (TETRAM) memory pressure**.

### Key Findings
1. **The Culprit Subsystem:** The user-space OpenGL driver texture manager (`mgrTM_*`) in `libGLcore.so`.
2. **The Trigger Mechanism:** Frequent texture streaming via `glTexImage2D` / `glTexSubImage2D` (the 256×256 dynamic warp texture uploaded every frame) combined with TRAM page overcommitment and eviction.
3. **The Core Bug:** A flawed fast-path in `mgrTM_TexImage2D_setup` and `mgrTM_TexSubImage2D_setup` that bypasses full placement (`mgrTM_process_level`), coupled with `ReturnDesc` failing to invalidate the evicted texture's hardware page register (`level->unk4A`) and leaving a dangling descriptor pointer (`level->unk0`).
4. **The Consequence:** Pages `0x28–0x37` (16 pages) are legitimately reallocated by `EstablishLocation` to ~20 static wall textures. However, the next frame's warp upload still writes to stale base page `0x28`, DMA-overwriting active wall texture texels in TRAM every single frame.

---

## 2. Hardware Architecture & Driver Data Structures

### Hardware TRAM Architecture (TE1 / TR1)
- **Page Size:** 4 KB per page (64×64 texels at 1 byte/texel, or 64 texels × 32 rows for 16-bit texels, etc.).
- **TRAM Capacity:**
  - 1 MB TRAM (Solid Impact / High Impact): 256 pages (`0x00–0xFF`).
  - 4 MB TRAM (Maximum Impact / TRAM module): 1024 pages (`0x000–0x3FF`).
- **Texture Dimensions:** A 256×256 RGB texture occupies 65,536 texels = **16 contiguous TRAM pages** (6.25% of total TRAM on a 1 MB board).
- **Hardware Register:** TE1 register `0x191` / `0x1A1` (`TL_MIPMAP`), holding the base TRAM page index for DMA loads and sampling.

### Texture Manager Internal Structures

#### 1. TRAM Page Descriptor (48 bytes / `0x30`)
Allocated and freed via `desc_alloc` (`0xdabdc64`) and `desc_free` (`0xdabdc64 + offset`).
- `offset 0x00`: Doubly-linked list `prev` pointer.
- `offset 0x04`: Reserved / space flags.
- `offset 0x08`: Reserved.
- `offset 0x0C`: Doubly-linked list `next` pointer.
- `offset 0x18`: Pointer to owning level hardware descriptor (`mgrTM_level_t *`).
- `offset 0x20` (`lh 32`): `start_page` in TRAM.
- `offset 0x24` (`lh 36`): `num_pages` in TRAM.
- `offset 0x28` (`lh 40`): `end_page` in TRAM.

#### 2. Level Hardware Descriptor (`mgrTM_level_t`, 92 bytes / `0x5C`)
Attached to texture object levels (`level->unk1C`).
- `offset 0x00`: Pointer to active 48-byte TRAM page descriptor (`desc *`).
- `offset 0x4A` (`lh 74`): Base TRAM page index programmed into TE1 `TL_MIPMAP` during DMA load and texture bind.
- `offset 0x54` (`lbu 84`): TRAM bank index.
- `offset 0x55` (`lbu 85`): `has_save_data` flag (1 = backing copy saved in host Save Arena).
- `offset 0x58` (`lbu 88`): Residency flag in Space 0.
- `offset 0x59` (`lbu 89`): Residency flag in Space 1.

#### 3. Global Texture Manager Context (`gc->unk91FC` / `gc + 0x91FC`)
- `offset 0x1E8`: Currently active load level (`unk1E8`).
- `offset 0x4D0` (`1232`): Total TRAM pages available (256 or 1024).
- `offset 0x4D4` (`1236`): `save_data_enabled` flag (whether host Save Arena backing store is active).
- `offset 0x4D6` (`1238`): Running counter of restored pages from host memory.

---

## 3. The Four Intersecting Bugs

```
                          ┌─────────────────────────────────────┐
                          │     glTexImage2D / TexSubImage      │
                          │   (called every frame by Quake)     │
                          └──────────────────┬──────────────────┘
                                             │
                                             ▼
                          ┌─────────────────────────────────────┐
                          │      mgrTM_TexImage2D_setup         │
                          │   memcmp matches format & dims:     │
                          │     TAKES FAST PATH OPTIMIZATION    │
                          └──────────┬──────────────────────────┘
                                     │
                 ┌───────────────────┴───────────────────┐
                 │ Level resident?                       │ Level evicted?
                 ▼                                       ▼
    ┌────────────────────────┐             ┌────────────────────────┐
    │ level->unk59 != 0      │             │ level->unk59 == 0      │
    │ Bypasses do_placement. │             │ Calls mgrTM_MakeResident│
    │ Reuses level descriptor│             └───────────┬────────────┘
    └────────────┬───────────┘                         │
                 │                                     ▼
                 │                       ┌───────────────────────────┐
                 │                       │ BUG 3: mgrTM_MakeResident │
                 │                       │ If level->unk55 == 0,     │
                 │                       │ SILENTLY EXITS!           │
                 │                       │ unk4A remains STALE (0x28)│
                 │                       └─────────────┬─────────────┘
                 │                                     │
                 └──────────────────┬──────────────────┘
                                    │
                                    ▼
                         ┌───────────────────────┐
                         │   mgrTM_DoTexLoad     │
                         │ Reads level->unk4A    │
                         │ (stale page 0x28)     │
                         └──────────┬────────────┘
                                    │
                                    ▼
       ┌─────────────────────────────────────────────────────────┐
       │   DMA writes warp texels into pages 0x28-0x37           │
       │   BUG 2 & 4: Pages 0x28-0x37 were reallocated to walls! │
       │   RESULT: Level walls sample and display warp lava!     │
       └─────────────────────────────────────────────────────────┘
```

---

### Bug 1: Premature Fast-Path Bypass in `mgrTM_TexImage2D_setup`

In [`mgras_texture.c` (lines 2742–2765)](file:///home/dbehr/gits/iris/ignore/gr4/libglcore/decomp/MGRAS/mgras_texture.c#L2742-L2765) and [`mgras_texture.s` (lines 5955–6145)](file:///home/dbehr/gits/iris/ignore/gr4/libglcore/asm/MGRAS/mgras_texture.s#L5955-L6145):

```c
if (memcmp(sp, (void *) var_a1_2, 0x18) == 0) {
    temp_a4_2 = (sp38 * 4) + sp28;
    temp_a6_2 = temp_a4_2->unk14;
    if (temp_a6_2 != NULL) {
        ...
        temp_a1_3 = sp78->unk1C;  // existing level_desc
        if (temp_a1_3 != NULL) {
            if (temp_a1_3->unk59 == 0) {
                if (*arg_sp4 > 0) {
                    mgrTM_MakeResident(sp48, temp_a1_3, 1, 1, 1);
                }
            }
        }
        goto block_97;            // Bypasses mgrTM_process_level and do_placement!
    }
}
```

When Quake calls `glTexImage2D` with identical parameters (`256×256`, `GL_RGB`, `GL_UNSIGNED_BYTE`), `memcmp` returns 0.
1. The driver reuses the existing level descriptor `sp78->unk1C`.
2. It **completely bypasses** `mgrTM_set_internalformat`, `mgrTM_process_level`, and `do_placement`.
3. If `unk59 == 0`, it invokes `mgrTM_MakeResident(sp48, temp_a1_3, 1, 1, 1)`.
4. It **never checks if `mgrTM_MakeResident` succeeded** (the function returns `void`). It immediately branches to `block_97` and reports success.

In [`mgrTM_TexSubImage2D_setup` (lines 3060–3074)](file:///home/dbehr/gits/iris/ignore/gr4/libglcore/decomp/MGRAS/mgras_texture.c#L3060-L3074), the exact same bypass occurs: it calls `mgrTM_MakeResident(sp30, temp_a1, 1, 1, var_a4_3)` and never invokes `do_placement`.

---

### Bug 2: Missing Stale Page Invalidation on Eviction (`ReturnDesc`)

Under TRAM memory pressure, static wall textures require room. The placement engine calls [`EstablishLocation` (`0xdab9968`)](file:///home/dbehr/gits/iris/ignore/gr4/libglcore/asm/MGRAS/mgras_texman.s#L5183), which selects the 16-page block at `0x28–0x37` (since the warp texture is unbound between frames) and evicts it via [`ReturnDesc` (`0xdaba72c`)](file:///home/dbehr/gits/iris/ignore/gr4/libglcore/asm/MGRAS/mgras_texman.s#L6463):

```assembly
# ReturnDesc in mgras_texman.s (lines 6510-6544)
.L0daba7b4:
    li   $at, 1
    bnel $v0, $at, .L0daba7f0
    ...
.L0daba814:
    sb   $zero, 88($at)    # level_desc->unk58 = 0 or level_desc->unk59 = 0
```

1. `ReturnDesc` marks the level as non-resident: `level_desc->unk59 = 0`.
2. It detaches the 48-byte TRAM descriptor `desc`, combines it into adjacent free space via `CombineDesc`, and calls `desc_free`.
3. **The Fatal Omission:** `ReturnDesc` **never invalidates `level_desc->unk4A`** (byte offset `74`). `unk4A` remains frozen at `0x28`!
4. **The Dangling Pointer:** `ReturnDesc` **never clears `level_desc->unk0`** (byte offset `0`). `level_desc->unk0` continues pointing to memory that was freed or reallocated to another texture.
5. The TRAM manager immediately reallocates pages `0x28–0x37` to ~20 incoming wall textures.

---

### Bug 3: `mgrTM_MakeResident` Silently Bails Out on Streamed Textures

When Quake uploads the warp texture on the very next frame, `mgrTM_TexImage2D_setup` sees `level->unk59 == 0` and calls `mgrTM_MakeResident(texmgr, level, 1, 1, 1)`.

Look at lines 6631–6637 in [`mgras_texman.s`](file:///home/dbehr/gits/iris/ignore/gr4/libglcore/asm/MGRAS/mgras_texman.s#L6631-L6637):
```assembly
mgrTM_MakeResident:
.L0daba8c0:
    ...
    lbu   $at, 85($a1)        # at = level_desc->unk55 (has_save_data)
    sd    $s1, 40($sp)
    lw    $s1, 4($a1)
    addu  $gp, $t9, $v0
    beqz  $at, .L0dabaec4     # IF unk55 == 0, RETURN IMMEDIATELY!
```
And at `.L0dabaec4` (line 7131):
```assembly
.L0dabaec4:
    ld    $ra, 88($sp)
    jr    $ra                 # Silently returns without doing anything!
```

#### Why is `unk55` zero?
In [`mgras_tex_io.c` (line 787)](file:///home/dbehr/gits/iris/ignore/gr4/libglcore/decomp/MGRAS/mgras_tex_io.c#L787) and [`mgras_tex_io.s` (line 895)](file:///home/dbehr/gits/iris/ignore/gr4/libglcore/asm/MGRAS/mgras_tex_io.s#L895):
```c
if (gc->texMgr->unk4D4 != 0) {
    mgrTM_SaveData(gc, level);
} else {
    level->unk55 = 0;
}
```
If the host Save Arena is inactive (`unk4D4 == 0`), or if memory for host backing store is exhausted, `level->unk55` is cleared to 0. 

Because `unk55 == 0`, `mgrTM_MakeResident` **exits immediately**. It does not allocate new TRAM pages, does not call `SearchAllSpaces`, and does not update `level->unk4A`.

#### Failure mode even when `unk55 == 1`
Even if `unk55 == 1`, line 6646 dereferences `level->unk0`:
```assembly
lw    $a6, 0($s2)           # a6 = level->unk0 (DANGLING POINTER!)
lw    $a6, 0($a6)           # DEREFERENCES FREED MEMORY
```
Because `level->unk0` was freed, dereferencing `0($a6)` traverses invalid descriptor chains. When TRAM is 100% full, `SearchAllSpaces` returns 0. When it returns 0, [`MovePlacement`](file:///home/dbehr/gits/iris/ignore/gr4/libglcore/asm/MGRAS/mgras_texman.s#L7326) is never called, leaving `level->unk4A` frozen at `0x28`.

---

### Bug 4: Blind DMA Streaming in `mgrTM_DoTexLoad`

In [`__glMgrim_TexImage2D` (lines 5175–5203)](file:///home/dbehr/gits/iris/ignore/gr4/libglcore/asm/MGRAS/mgras_texture.s#L5175-L5203), because setup returned non-zero, it proceeds directly to `mgrTM_DoTexLoad`:

```assembly
# __glMgrim_TexImage2D in mgras_texture.s
jal   mgrTM_DoTexLoad       # Called unconditionally after setup
```

In [`mgras_tex_io.c` (lines 402–405)](file:///home/dbehr/gits/iris/ignore/gr4/libglcore/decomp/MGRAS/mgras_tex_io.c#L402-L405) and [`mgras_tex_io.s` (lines 601–615)](file:///home/dbehr/gits/iris/ignore/gr4/libglcore/asm/MGRAS/mgras_tex_io.s#L601-L615):
```assembly
lw    $a0, 28($s4)          # a0 = level descriptor
lh    $a0, 74($a0)          # a0 = level->unk4A (STALE 0x28!)
...
jal   __glMgrInitPixelStateERAM # Programs TE1 TL_MIPMAP (0x191) with 0x28
```

The driver programs TE1 register `TL_MIPMAP = 0x28`, arms the GIO64 DMA channel, and streams 64 KB of water/lava pixels directly into TRAM pages **`0x28–0x37`**.

Because pages `0x28–0x37` are currently assigned to active wall textures, every frame's warp upload corrupts those wall textures. When the scene draws castle walls, the walls sample pages `0x28–0x37` and display animated lava.

---

## 4. TRAM Memory Allocation Walkthrough

| Time / Phase | Warp Texture State (`warp_level`) | Pages `0x28–0x37` Ownership | Wall Textures State | Display Output |
|---|---|---|---|---|
| **Init / Fresh Run** | `unk4A = 0x28`, `unk59 = 1` (resident) | Owned by Warp Texture | Not yet loaded | Correct: water renders water |
| **Demo Loop Running** | Unbound between scene draws | Targeted for eviction by `EstablishLocation` | Wall textures request space | Correct |
| **Eviction** | `unk59 = 0`, `unk4A = 0x28` (**stale**), `unk0` = dangling | Reallocated to ~20 wall textures (TXSIZE `0x4444–0x7878`) | `wall->unk4A = 0x28..0x37`, `wall->unk59 = 1` | Correct for 1 frame |
| **Next Frame: Warp Upload** | `glTexImage2D` fast path: `MakeResident` fails (`unk55 == 0`), `unk4A` remains `0x28` | **CONFLICT:** Owned by walls, but written by warp DMA | Walls actively bound and sampled | **Corrupted:** DMA overwrites wall pages with lava |
| **Subsequent Frames** | Fast path repeats every frame; never reallocates | Permanently conflicted | Constantly overwritten by warp DMA | **Permanent:** Castle walls continually animate lava |

---

## 5. Potential Fixes & Mitigations

### 1. Driver-Level Binary Patch (`libGLcore.so`)
In `mgrTM_TexImage2D_setup` ([`mgras_texture.s:6096`](file:///home/dbehr/gits/iris/ignore/gr4/libglcore/asm/MGRAS/mgras_texture.s#L6096)):
```assembly
# Original:
lbu   $t0, 89($a1)        # level->unk59
beqz  $t0, .L0da96f60     # Branch to mgrTM_MakeResident

# Patch:
# If unk59 == 0, branch to mgrTM_process_level instead of mgrTM_MakeResident!
# This forces do_placement to allocate a new valid TRAM block and update unk4A.
```

### 2. Invalidation Fix in `ReturnDesc`
In `ReturnDesc` ([`mgras_texman.s:6544`](file:///home/dbehr/gits/iris/ignore/gr4/libglcore/asm/MGRAS/mgras_texman.s#L6544)):
```assembly
# When evicting a level:
sb   $zero, 88($at)       # Clear residency flag
sh   $zero, 74($s2)       # CLEAR level->unk4A = 0 (or 0xFFFF invalid)
sw   $zero, 0($s2)        # CLEAR level->unk0 = NULL (prevent dangling dereference)
```

### 3. Emulator Safeguard (`iris`)
In the MGRAS emulator TE1 / TR1 DMA controller:
- Track page allocation ownership per texture descriptor.
- If a DMA load arrives for pages currently bound and sampled by other resident textures without a preceding valid placement transaction, log a warning or dynamically isolate the pages to prevent visible corruption.
