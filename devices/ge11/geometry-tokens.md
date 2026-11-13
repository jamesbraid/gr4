# gr4 geometry command token statements

Each entry gives one GE11 protocol token from GE11.h, the value the header defines for it, and what the
repository states about its use. No reading in the repository sends these tokens to the geometry engine
(the inventory finds no site for them), so each statement rests on the header.

- `GE11_TOKEN_BGNTRIS` (0xE6): **Inferred.** The header labels it Begin Triangles (GE11.h:320). The
  triangle assembly step described at GE11.h:451 takes it as one of the vertex tokens it assembles into
  triangles, with GE11_TOKEN_TRISVERTEX and GE11_TOKEN_ENDTRIS. The header gives the start-of-triangles
  position in that stream, and the assembly step's later stages (the vertex sort and the slope steps that
  follow it in GE11.h:451 onward) act on the triangles the stream builds.

- `GE11_TOKEN_TRISVERTEX` (0xE5): **Inferred.** The header labels it Triangle Vertex (GE11.h:321). The
  triangle assembly step described at GE11.h:451 takes it as one of the vertex tokens it assembles, with
  GE11_TOKEN_BGNTRIS and GE11_TOKEN_ENDTRIS. Each vertex token is one input to the vertex sort and slope
  steps that follow it in GE11.h:451 onward.

- `GE11_TOKEN_ENDTRIS` (0xE4): **Inferred.** The header labels it End Triangles (GE11.h:322). The triangle
  assembly step described at GE11.h:451 takes it as one of the vertex tokens it assembles, with
  GE11_TOKEN_BGNTRIS and GE11_TOKEN_TRISVERTEX. It is the last of the three in that list.

- `GE11_TOKEN_BGNLINE` (0xE9): **Inferred.** The header labels it Begin Line (GE11.h:317) and groups it
  with the other primitive delimiters (GE11.h:316). The assembly note at GE11.h:451 covers triangles only,
  so no pipeline step in the repository is cited for the line tokens, and the role is unknown beyond that
  label.

- `GE11_TOKEN_LINEVERTEX` (0xE8): **Inferred.** The header labels it Line Vertex (GE11.h:318) and groups it
  with the other primitive delimiters (GE11.h:316). No pipeline step in the repository is cited for the
  line tokens, and the role is unknown beyond that label.

- `GE11_TOKEN_ENDLINE` (0xE7): **Inferred.** The header labels it End Line (GE11.h:319) and groups it with
  the other primitive delimiters (GE11.h:316). No pipeline step in the repository is cited for the line
  tokens, and the role is unknown beyond that label.
