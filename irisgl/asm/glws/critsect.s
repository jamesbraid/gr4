# Source: ../igloo/glws/critsect.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/critsect.c -o critsect.T
# Total Functions: 3

.text

# Function: __iglooInitCriticalSection
# Declared: Line 11 (Source lines: 12-17)
# Address: 0x0f0a1048 - 0x0f0a107c (Size: 52 bytes, Frame: 16)
.globl __iglooInitCriticalSection
.ent __iglooInitCriticalSection
__iglooInitCriticalSection:
    # Line 12
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,8704 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 13
    la	$t9,init_lock
    sd	$ra,0($sp)
    jalr	$t9
    addiu	$a0,$gp,-20880
    # Line 17
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __iglooInitCriticalSection

# Function: __iglooBeginCriticalSection
# Declared: Line 19 (Source lines: 20-22)
# Address: 0x0f0a107c - 0x0f0a10b0 (Size: 52 bytes, Frame: 16)
.globl __iglooBeginCriticalSection
.ent __iglooBeginCriticalSection
__iglooBeginCriticalSection:
    # Line 20
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,8652 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 21
    la	$t9,spin_lock
    sd	$ra,0($sp)
    jalr	$t9
    addiu	$a0,$gp,-20880
    # Line 22
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __iglooBeginCriticalSection

# Function: __iglooEndCriticalSection
# Declared: Line 24 (Source lines: 25-30)
# Address: 0x0f0a10b0 - 0x0f0a10e4 (Size: 52 bytes, Frame: 16)
.globl __iglooEndCriticalSection
.ent __iglooEndCriticalSection
__iglooEndCriticalSection:
    # Line 25
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,8600 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 26
    la	$t9,release_lock
    sd	$ra,0($sp)
    jalr	$t9
    addiu	$a0,$gp,-20880
    # Line 30
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __iglooEndCriticalSection

