# IMPACT board facts from published documents

Facts taken from the documents in [sources/INDEX.md](sources/INDEX.md) that the hardware headers did not yet carry. Each is in our own words with its source and a label:

- **Established**: an SGI-published manual, data sheet or diagnostic transcript says it.
- **Secondary**: a third-party page says it, usually quoting SGI support text, with no citable SGI original.
- **Inferred**: follows from established facts; stated with the reasoning.

Page numbers are the printed page numbers of the document unless marked "PDF page". Marketing figures are SGI claims, not measurements.

## Silicon and per-tier numbers

**1. Gate counts and peak rates for the five chips.** Established (marketing). The Indigo2 IMPACT Product Guide (September 1996, `product-literature/sgi-1997-impact-product-guide.pdf`, PDF pages 4-5) lists HQ3 at 300,000 gates, GE11 at 600,000, RE4 at 300,000, TE at 295,000, PP1 at 290,000, and the 1 MB texture RAM block at 60,000 gates plus 8 Mbit of DRAM per megabyte. It gives 480 MFLOPS and 480 MIOPS for one GE11 (High IMPACT) and 960 for two (Maximum IMPACT), and Gouraud fill of 117 Mpixels/s for one RE4 and 234 Mpixels/s for two. The same sheet puts Maximum IMPACT at two RE4, two TE and four PP1, and High IMPACT at one RE4, one TE and two PP1. These gate counts replace the earlier estimates in the chip headers, which had no source.

**2. Texture memory is 1 MB, upgradable to 4 MB by a mezzanine card.** Established. Product Guide PDF pages 4-5. The Indigo2 texture option board sits on the top board of a High or Maximum set; a Maximum set with the option has one on the top board and one on the middle board (Indigo2 IMPACT Workstation Owner's Guide, `techpubs/007-2849-004.pdf`, pp. 116-121 and 131-137).

**3. Both texture option boards on a Maximum set go together.** Established. Owner's Guide p. 129: if the two boards on a Maximum IMPACT set are not being replaced, both must come off, because the set does not work with only one.

**4. The `hinv` graphics lines name the texture RAM count, and the option raises it to four.** Established. Hardware Developer Handbook 2.0 (`hardware-references/hardware-developer-handbook-2.0.pdf`), Table 5-14, pp. 5-17 and 5-18: High IMPACT is "1 GE, 1 RE, 1 TRAM", High-AA IMPACT is "2 GE, 1 RE, 1 TRAM", MG10 (Solid) is "1 GE, 1 RE, no TRAM", Maximum IMPACT is "2 GE, 2 RE, 1 TRAM", and the option card increases each of the three textured boards to 4 TRAMs. Octane MXI is "2 GEs, 2 REs, 4 TRAMs" and Octane SI with the texture option is "1 GE, 1 RE, 4 TRAMs".

**5. Physical versus user-visible texture RAM on Maximum IMPACT.** Secondary, with an established tie-in. A reseller's technical page (`web-pages/sgidepot-impact-tram-info.html`) says each RE4 has its own texture RAM and the host writes texture data to both in parallel, so a Maximum set without the option holds 2 MB physically but shows 1 MB, and with the option holds 8 MB physically and shows 4 MB. Fact 4 shows Maximum IMPACT reporting "1 TRAM" without the option, which agrees. Whether the second copy is a hardware broadcast or a driver loop is not stated anywhere found.

**6. What 1 MB and 4 MB of texture RAM allow.** Secondary. A reseller page quoting support text (`web-pages/sgidepot-impact-upgrade-advice.html`) says one texture RAM carries textures up to 16 bits per texel: 4 bits per component for RGBA, 8 bits only for one or two components, no 12-bit formats. With four, every combination of 4, 8 and 12 bits and one to four components works, and each component sits in its own 1 MB bank. The largest 2D RGBA texture on one texture RAM is 512x512; luminance reaches 1Kx1K. Textures must be powers of two on each edge. Setting `USE_SOFT_TEXTURE` to 1 forces software texturing, on one-texture-RAM machines only. Not confirmed against SGI text; the owner's guides do not list formats.

**7. Solid IMPACT and Octane SI texture in software.** Established. OpenGL on Silicon Graphics Systems, revision 002 (`techpubs/007-2392-002.pdf`), p. 380, Table 16-4: Solid IMPACT and Octane SI without the option use software texturing; High IMPACT, Octane SI with hardware texture, Maximum IMPACT and Octane MXI use hardware texturing. The same chapter says its texture tips do not apply to Solid IMPACT and plain SI (p. 378).

## Board naming and identification

**8. Octane E-series boards report under a different name.** Established. Octane Graphics Board Hardware and Software Designations (`techpubs/007-3852-001.pdf`, the single page): SI is SI, SE reports as ESI, SSI is SSI, SSE reports as ESSI, MXI is MXI, MXE reports as EMXI. The E boards look identical to the I boards but perform better. The `hinv` line reads `Graphics board: ESI` for an SE. The header's rule that a GE11 revision above 2 adds an "E" prefix is the software side of this table.

**9. `gfxinfo` names.** Established. Indigo2 dual head guide (`techpubs/007-3301-001.pdf`, p. 59) shows the healthy two-head output as board 0 and board 1 each "'IMPACT' graphics", board 0 on the primary head. The Octane dual head guide (`techpubs/007-3531-002.pdf`, p. 47) shows the same lines as "'IMPACTSR' graphics". So the Octane driver reports a different product string from the Indigo2 one.

**10. Octane board inventory records.** Established. Octane IDE Reference Guide (`hardware-references/108-0217-002-octane-ide-reference-guide.pdf`, p. 7-4): the crosstalk probe walks ports 0xe down to 0x9 and prints each device's serial-number record. Its sample shows part 030-0938-003, name GM10 (one RE) on port 0xb, and part 030-0957-003, name GM20 (two REs) on port 0xc, each with revision, serial, group, capability and variety fields. The IRIX hardware graph shows the same boards as `/hw/node/xtalk/12/mgras` and `/hw/node/xtalk/11/mgras` (p. 7-5). In that sample the graphics boards therefore sit at crosstalk widgets 0xb and 0xc.

## Slots and cabling

**11. Indigo2 slot use per tier.** Established. Owner's Guide pp. 87-88, Tables 4-1 to 4-3: a Solid board is one slot, a High set two, a Maximum set three. Solid goes in slot B, or slot D when three EISA boards are fitted; High goes in slots A and B or B and C or C and D; Maximum in A, B and C or B, C and D. Slot D is the only slot left for a GIO option beside a Maximum set.

**12. Four GIO connectors, two logical slots.** Established. Owner's Guide p. 87 note and Handbook p. 4-112 note 7 and p. 4-140: the IMPACT backplane has four physical GIO64 connectors wired as two logical slots (0 and 1, connectors 0-0 and 1-1), and only one connector of each pair may be used. The IMPACT backplane dropped the fourth EISA connector, and its 3.3 V connectors changed the GIO64 board outline, so older GIO64 boards can be damaged in it. Handbook p. 4-139 adds that after some point every Indigo2 shipped with the IMPACT backplane whatever graphics it had, so the backplane cannot be told from the graphics option.

**13. Board-set structure.** Established. Owner's Guide pp. 115-121: Solid IMPACT is a single board and is always the bottom board of any stack of option boards. High IMPACT is a bottom board and a top (A) board. Maximum IMPACT adds a middle (B) board. Flex cables join the boards of a set and must not be disturbed; sets with a stack of option boards carry a pull strap labelled for one more board. Upgrading Solid to High or Maximum, or High to Maximum, replaces the whole set (p. 128).

**14. Indigo2 dual head.** Established. Indigo2 dual head guide pp. 8 and 59: the secondary head is always a Solid IMPACT board in slot D, beside a Solid board in B, a High set in A and B, or a Maximum set in A, B and C. Each head needs its own logical GIO slot, so no other GIO graphics board fits. Extreme-era graphics boards do not work beside IMPACT boards. A Solid/Maximum pair cannot swap boards for the guide's fault test because they do not fit swapped.

**15. Octane XIO module slots and dual head.** Established. Octane dual head guide pp. 1-2 and Table 1-1, and the one-sheet Secondary Head Information (`techpubs/007-3613-001.pdf`): the module has slots A and D on one side and B and C on the other. SI sits in slot A; SSI and MXI take A and D. Supported pairs are SI/SI, SI with texture/SI, SI with texture/SI with texture, SSI/SI and MXI/SI; the secondary is always an SI, in slot B, or slot C when an option board with flex cables takes B, never slot D. Only the SI/SI pair may carry a texture board on both heads. The Digital Video board cannot be in a dual head system. SSI and MXI must never be moved to slots B or C because they overheat there. The `gfxinfo` text on p. 47 tells which head is board 0.

**16. Screen order on mixed Octane pairs.** Established. Octane dual head guide Appendix A, p. 60: with an SI-with-texture or MXI primary and an SI secondary, the textured head is always X screen 0 and the SI is screen 1, and windows cannot be dragged between heads.

**17. Stereo connector gender.** Established. Handbook p. 4-88 and p. 4-70: the stereo sync connector on Indigo2 IMPACT is a female DB-9; Octane and Onyx2 use a male DB-9.

## Software limits

**18. Texture colour table restrictions.** Established. OpenGL on Silicon Graphics Systems rev 002, p. 128, Table 7-2: on IMPACT the texture colour table works only on High and Maximum IMPACT. An RGB colour table does not combine with luminance or luminance-alpha textures, and RGBA and intensity tables do not combine with any texture format. The extension is not available on Solid.

**19. Antialiasing and multisample.** Established. Same guide, p. 379: antialiased lines are always drawn at full quality whatever the line smooth hint says; wide antialiased lines are not done in hardware but wide antialiased points are; antialiased polygons and multisampling are not supported by the hardware.

**20. Primitive grouping the geometry path prefers.** Established. Same guide, p. 379: triangle strips of six triangles (or multiples), independent triangles in groups of four, quad strips of three quads, individual quads in sets of three; hardware clipping covers a small band outside the viewport; the pipeline has a fast path for an identity matrix loaded with `glLoadIdentity`.

**21. Image operations.** Established. Same guide, pp. 380-383: cost scales with component count (RGBA to RGB gains about 25 percent); expansion of luminance data to RGBA is postponed when the colour table format matches; convolution is tuned for 3x3, 5x5 and 7x7 kernels (other sizes cost as the next size up); the colour matrix does linear colour conversion in hardware and the 3D/4D texture lookup does non-linear conversion; pixel texture speed depends on lookup coherence.

**22. Display lists and DMA.** Established. Same guide, p. 384: compiled lists store most calls in a form the hardware takes directly; `glCallLists`, `glListBase`, all imaging, all texture, hint, clear, scissor, enable and disable, push and pop attribute, evaluators and most extensions are not compiled that way. The host may hand a list to the board by DMA, giving about four times the bus rate with a setup cost, when only direct-form calls are used, nesting is at most eight deep, and every texture it references fits in texture RAM at once. The test is applied recursively to nested lists.

## Diagnostics

**23. Order of the Octane graphics diagnostic.** Established. Octane IDE Reference Guide pp. 7-5 to 7-14, a full transcript on an SI (one GE, no texture RAM): initialise, DAC reset and VC3 reset, then HQ tests (XIO bus, DCB control, TLB, REIF and HAG context registers, microcode RAM, CP microprogram moves, converters at 32, 16 and 8 bits, CFIFO, register test); texture-engine data format passes through PIO (RGBA16, short, RGBA10, ABGR8 and RGBA8 inputs into RGBA12 or RGBA8 outputs) and real-time DMA; an RSS data bus test; DAC mode, address and palette tests; VC3 register and SRAM tests; CMAP0 and CMAP1 tests over addresses 0 to 8191; the same DAC and VC3 tests again in DCB-DMA mode; XMAP0 and XMAP1 DCB register tests; video timing at 1600x1200 with CRC pixel-path checks and a cursor position test; I2C controller probe (an 8584); GE11 microcode memory, then CRAM, ERAM, WRAM, ALU, data register, instruction and DMA tests; RE memory tests; colour-buffer, Z-buffer and overlay DMA pattern tests; RE-PP tests (Z triangles, lines, points, stippled triangles, blocks, characters, logic ops, dither, colour triangles, alpha blend, scene test, each CRC-checked per PP1); and the texture tests only when texture RAM is present. The CMAP range confirms 8192 entries per colour map.

**24. Texture RAM revision words and failure report format.** Established. Same guide, pp. A-1 and A-2: the texture test reads two revision words per RSS, shown as 0x1c011401 and 0xc000400 on a healthy RSS-0 in the sample; the failing sample read 0x1401 where the high half should be 0x1c01. The test runs once per RSS, each with four texture RAMs on a two-RE board. A framebuffer RDRAM failure prints the RSS, PP1 and RDRAM number, the RDRAM address, the X and Y pixel and the expected and received words (sample: RSS 1, PP1, RDRAM 2, address 0x0160218a8, pixel 833,29). Chapter 8 (p. 8-1) says a texture failure always blames the whole graphics board when the fault may be one of the texture mezzanine cards.

## Contradictions found

- The chip headers' gate counts (PP1 ~120,000, TE1 ~250,000, RE4 ~200,000, HQ3 ~150,000) disagreed with fact 1; the headers now carry the published figures. The guide gives no VC3 figure, so VC3 stays an estimate.
- The product guide counts four PP1 on Maximum IMPACT and two on High IMPACT. MGRAS.h and AGENTS.md say "4 or 5" pixel processors; no document found counts five.
