# Source: ../igloo/glws/gexit.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/gexit.c -o gexit.T
# Total Functions: 3

.text

# Function: gl_free_pups
# Declared: Line 15 (Source lines: 15-15)
# Address: 0x0f0c0868 - 0x0f0c0870 (Size: 8 bytes, Frame: 0)
.globl gl_free_pups
.ent gl_free_pups
gl_free_pups:
    # Line 15
    jr	$ra
    nop
.end gl_free_pups

# Function: gl_g_gexit
# Declared: Line 22 (Source lines: 23-42)
# Address: 0x0f0c0870 - 0x0f0c0918 (Size: 168 bytes, Frame: 16)
.globl gl_g_gexit
.ent gl_g_gexit
gl_g_gexit:
    # Line 23
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,10712 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 24
    la	$t9,gl_wmgexit
    sd	$ra,0($sp)
    jalr	$t9
    nop
    # Line 25
    la	$t9,gl_free_cursors
    bal gl_free_cursors
    nop
    # Line 29
    la	$t9,gl_free_fonts
    jalr	$t9
    nop
    # Line 30
    la	$t9,gl_free_linestyles
    jalr	$t9
    nop
    # Line 31
    la	$t9,gl_free_patterns
    jalr	$t9
    nop
    # Line 32
    la	$t9,gl_free_objects
    jalr	$t9
    nop
    # Line 33
    la	$t9,gl_free_bases
    jalr	$t9
    nop
    # Line 34
    la	$t9,gl_free_lighting
    jalr	$t9
    nop
    # Line 38
    la	$t9,gl_free_pups
    bal gl_free_pups
    nop
    # Line 39
    la	$t9,gl_free_windows
    jalr	$t9
    nop
    # Line 42
    ld	$ra,0($sp)
    # Line 41
    la	$v0,gl_initialized
    ld	$gp,8($sp)
    # Line 42
    addiu	$sp,$sp,16
    jr	$ra
    # Line 41
    sw	$zero,0($v0)
.end gl_g_gexit

# Function: gl_free_cursors
# Declared: Line 50 (Source lines: 50-50)
# Address: 0x0f0c0918 - 0x0f0c0920 (Size: 8 bytes, Frame: 0)
.globl gl_free_cursors
.ent gl_free_cursors
gl_free_cursors:
    # Line 50
    jr	$ra
    nop
.end gl_free_cursors

