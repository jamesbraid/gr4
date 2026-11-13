# MGRAS antialiased points and lines

What the published Octane graphics description says the board does to draw
antialiased points and lines, what it leaves open, and what would settle it.
The smoothing enable bits sit in the RE4 `aaline_config` register in
[devices/re4/registers.toml](../devices/re4/registers.toml), graded inferred. The GL enable tokens are in
[mgras-gl-commands.md](mgras-gl-commands.md). This page is the prose and the open
questions.

Grades follow [AGENTS.md](../AGENTS.md). Established means a published document
states it directly. Inferred means the evidence supports it and another reading
survives. Unknown means nothing held settles it.

## Sources

- OCTANE Technical Report, [octane-technical-report.pdf](octane-technical-report.pdf),
  sections 4.4.1 to 4.4.4.2, printed pages 4-13 and 4-14. Stored unmodified; its
  SHA-256 is in the [sources index](sources/INDEX.md).
- OpenGL on Silicon Graphics Systems 007-2392-002, p. 379, as recorded in
  [IMPACT_BOARD_FACTS.md](IMPACT_BOARD_FACTS.md), fact 19. A different publication
  about IMPACT, not Octane.

## Points

- **Established.** An antialiased point is drawn over a 2 by 2 block of pixels.
  Each of the four pixels gets a blend weight from its distance to the point's
  position in sub-pixel space, measured from the pixel centre (4.4.3).
- **Unknown, the direction of the weight.** The report says the weights are
  "proportional to the distance" from the pixel centres. Read literally, the pixel
  farthest from the point gets the most weight, which is the reverse of the line
  rule in 4.4.4. The wording is probably loose. The filter shape and the weight
  table are not given.
- **Established.** Vertices keep 8 bits of fraction after projection (4.4.1), so the
  sub-pixel position the weights depend on is kept. The RE4's 8-bit subpixel
  precision is in [IMPACT_BOARD_FACTS.md](IMPACT_BOARD_FACTS.md), fact 27.

## Lines

- **Established.** An antialiased line is drawn two pixels wide. Pixels nearer the
  line in the minor axis get higher weights than the outer pixel (4.4.4).
- **Established.** RGB antialiased lines are blended by those weights. The report
  names the source-alpha, one-minus-source-alpha blend as the method for
  antialiased lines (4.4.2).
- **Established.** A colour-index antialiased line gets no blend weight. The
  hardware replaces the low four bits of the colour index with the weight, and the
  new index selects a ramp in the colour look-up tables (4.4.4).
- **Unknown.** How a weight is quantised into those four bits: the number of levels
  and the rounding. The report does not say.
- **Established.** Slope correction: pixel intensity is adjusted so a line looks
  equally bright at every angle (4.4.4.1). The method is not given.
- **Established.** End-point filtering: the weight is also adjusted along the major
  axis, using the sub-pixel position, so an endpoint fades from one pixel to the
  next rather than popping (4.4.4.2). The shape of the fade is not given.

## Colour-index points

- **Unknown.** The report describes the four-bit substitution for lines only. It
  does not say whether a colour-index point substitutes the same bits.

## Conflicts and gaps

- The Octane report says nothing about point size or line width beyond the 2 by 2
  block and the two-pixel line. Fact 19 in IMPACT_BOARD_FACTS says wide antialiased
  lines are not done in hardware and wide antialiased points are, but it comes from
  a different publication about IMPACT. Neither settles the width behaviour of MGRAS
  boards. Reconcile by product before relying on either for a width.
- The RE4 fill-mode antialias enables are not placed. The
  [devices/re4/registers.toml](../devices/re4/registers.toml) `fill_mode` entry says so, and this page adds no
  register.

## Open questions

| Question | What would settle it |
| --- | --- |
| Direction and shape of point and line weights | A readback of a smoothed point and a smoothed diagonal line on a board, compared with the 2 by 2 block and two-pixel line |
| Behaviour at point sizes and line widths other than 1 | A readback of smoothed points and lines at widths 1 and 3 on each board |
| Quantisation of colour-index weights, and whether points use them | A readback of a colour-index smoothed point and line against a known colour ramp |
| Shape of slope correction and end-point fade | Readbacks of lines at several angles, with endpoints at known sub-pixel positions |
| Interaction with line stipple | A readback of a stippled smoothed line |
