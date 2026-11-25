# IMPACT in an Origin 2000 XIO slot

Whether SGI shipped an IMPACT board for an Origin. It did: the "SI Viz Console" option, a Solid IMPACT board set for
the Origin 2000 and the SGI 2100. This page records the published statements and the limits of what they show.

## Sources and grades

- SGI TechPubs manuals, held in the Library under `techpubs`: `007-3453-002` Origin2000 Deskside Owner's Guide
  (© 1997); `007-3456-003` Origin2000 Rackmount Owner's Guide (© 1997); `007-4114-001` SGI 2100 Owner's Guide (© 1999).
  Quoted by page and in my own words.
- SGI patch SG0002379, "Origin 2000 SI Viz Console graphics software", for IRIX 6.4 (release note `README.patch.2379`
  and install database `patchSG0002379.idb`, from the SGI FTP patch mirror; the tar's SHA-256 is
  `313a6ed66424bc335c14eb0ed6a060911606c9118886d3026d1cd2bfb9c0aae0`).
- IRIX 6.5.7 source tree `stand/arcs/lib/libsk/io/klgraphics.c` (the Origin PROM's board table).
- The Origin 200 GIGAchannel owner's guide `007-3708-002` and the GIGAchannel upgrade note `007-3907-001` were read for
  graphics content and carry none.

Grades follow [AGENTS.md](../../AGENTS.md#7-published-documents). A published SGI document stating a product is established.

## What the manuals say

| Statement | Where | Grade |
| --- | --- | --- |
| Origin2000 deskside: optional XIO boards include "Graphics (SI Viz Console Board Set)" | 007-3453-002, "About the XIO Boards", printed p. 19 | established |
| Deskside: the SI Viz Console board is placed in XIO slots 3 to 12; never more than one SI Viz Console board in an Origin2000 system; the BaseIO board (IO6S or IO6G) stays in slot 1 and the PCI module in slot 2 | 007-3453-002, "XIO Board Slots", printed p. 24 | established |
| Rackmount: graphics interface (SI Viz Console Board Set); the same slot rules (slots 3 to 12, at most one) | 007-3456-003, "XIO Board Slots", printed p. 98 | established |
| SGI 2100: graphics interface (SI Viz Console Board); the same rules | 007-4114-001, "XIO Board Slots", printed p. 25 | established |
| IRIX 6.4 patch 2379 "introduces support for the SI Viz Console graphics option in Origin 2000 systems", a "new graphics option that was not supported in the IRIX 6.4 release"; the software cannot be installed on other configurations; fixes "Support for SI graphics in Origin 2000" and large physical addresses in the SI graphics driver; a special miniroot is needed for an Origin2000 with an SI Viz Console | patch release note, sections 1.1, 1.3 and 1.5 | established |
| The patch's install database carries the Origin (IP27) boot objects, the MGRAS libGL and libGLcore, the HQ4 host-interface microcode, the `ge11dump.HQ4` utility and a 1600 x 1024 two-raster-engine video format file | `patchSG0002379.idb` | established |
| The Origin PROM's board-type table names its MGRAS driver as the "SI/MXI graphics" entry | `klgraphics.c`, `prom_gfx_info` | established (source) |

"SI" is Solid IMPACT's abbreviation throughout the IMPACT documents ([board-identity.md](board-identity.md)); the patch's own
bug title says "SI graphics", and its payload is the MGRAS driver set above. That the "SI Viz Console" is Solid IMPACT is therefore
inferred from three agreeing names and the payload. No held manual says the words "Solid IMPACT" next to an Origin.

## What this does and does not show

- Solid IMPACT was a shipped Origin 2000 and SGI 2100 option in an XIO slot (3 to 12), one board set a system, IRIX 6.4 patch 2379
  or later, with a dedicated miniroot. An emulated Origin 2000 with a Solid IMPACT board at an XIO slot is therefore a product
  configuration, not only a model choice. The hardware transplant objection in the NT design is answered for **Solid** IMPACT.
- Nothing held says High IMPACT or Maximum IMPACT shipped for an Origin. The PROM's table says "SI/MXI", which is the board family, not
  a product list. Unknown, and the 1600 x 1024 two-engine format file in the patch is the only hint of a larger board.
- No held manual says which Origin XIO slot numbers map to which crosstalk widget numbers for it. The slot rule above is
  in the manual's numbering (BaseIO in 1, PCI in 2, graphics 3 to 12).
- The Origin 200 with a GIGAchannel expansion also hosted IMPACT boards according to owner records (an XBOX adapter
  with an Octane board), but no SGI manual held says so, and the GIGAchannel guides contain no graphics statements. Not
  established.

## Open questions

- Which Origin 2000 module, node and widget number a shipped SI Viz Console used; the manual numbers XIO slots only.
  A published klconfig dump or the patch's `gfxinit` selection of the board would settle it.
- Whether the 2100 and the Origin 2000 board sets are the same part.
