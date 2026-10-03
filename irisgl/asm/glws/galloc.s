# Source: ../igloo/glws/galloc.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/galloc.c -o galloc.T
# Total Functions: 7

.text

# Function: __iglooMalloc
# Declared: Line 27 (Source lines: 28-43)
# Address: 0x0f0bee9c - 0x0f0bef10 (Size: 116 bytes, Frame: 176)
.globl __iglooMalloc
.ent __iglooMalloc
__iglooMalloc:
    # Line 28
    addiu	$sp,$sp,-304
    sd	$gp,272($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,17324 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 33
    la	$t9,malloc
    sd	$ra,256($sp)
    jalr	$t9
    sd	$a0,264($sp)
    beqz	$v0,.L0f0beed4
    ld	$ra,256($sp)
.L0f0beec8:
    ld	$gp,272($sp)
    # Line 43
    jr	$ra
    addiu	$sp,$sp,304
.L0f0beed4:
    sd	$v0,280($sp)
    ld	$a2,264($sp)
    # Line 37
    la	$t9,sprintf
    la	$a1,sub_0f020000
    addiu	$a0,$sp,0
    jalr	$t9
    addiu	$a1,$a1,11880
    # Line 41
    la	$t9,gl_ErrorHandler
    addiu	$a2,$sp,0
    li	$a1,2
    bal gl_ErrorHandler
    li	$a0,2
    ld	$v0,280($sp)
    b	.L0f0beec8
    ld	$ra,256($sp)
.end __iglooMalloc

# Function: __iglooCalloc
# Declared: Line 46 (Source lines: 47-54)
# Address: 0x0f0bef10 - 0x0f0bef70 (Size: 96 bytes, Frame: 48)
.globl __iglooCalloc
.ent __iglooCalloc
__iglooCalloc:
    # Line 47
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,17208 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 50
    la	$t9,__iglooMalloc
    sd	$s0,24($sp)
    sd	$ra,0($sp)
    bal __iglooMalloc
    sd	$a0,8($sp)
    move	$s0,$v0
    bnez	$v0,.L0f0bef58
    ld	$ra,0($sp)
.L0f0bef44:
    ld	$gp,16($sp)
    # Line 54
    move	$v0,$s0
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0bef58:
    # Line 52
    la	$t9,bzero
    move	$a0,$s0
    jalr	$t9
    ld	$a1,8($sp)
    b	.L0f0bef44
    ld	$ra,0($sp)
.end __iglooCalloc

# Function: __iglooRealloc
# Declared: Line 57 (Source lines: 58-75)
# Address: 0x0f0bef70 - 0x0f0befec (Size: 124 bytes, Frame: 192)
.globl __iglooRealloc
.ent __iglooRealloc
__iglooRealloc:
    # Line 58
    addiu	$sp,$sp,-320
    sd	$gp,280($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,17112 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 64
    la	$t9,realloc
    sd	$a1,272($sp)
    sd	$ra,256($sp)
    jalr	$t9
    sd	$a0,264($sp)
    beqz	$v0,.L0f0befac
    ld	$ra,256($sp)
.L0f0befa0:
    ld	$gp,280($sp)
    # Line 75
    jr	$ra
    addiu	$sp,$sp,320
.L0f0befac:
    sd	$v0,288($sp)
    ld	$a3,264($sp)
    # Line 68
    ld	$a2,272($sp)
    la	$t9,sprintf
    la	$a1,sub_0f020000
    addiu	$a0,$sp,0
    jalr	$t9
    addiu	$a1,$a1,11912
    # Line 73
    la	$t9,gl_ErrorHandler
    addiu	$a2,$sp,0
    li	$a1,2
    bal gl_ErrorHandler
    li	$a0,2
    ld	$v0,288($sp)
    b	.L0f0befa0
    ld	$ra,256($sp)
.end __iglooRealloc

# Function: __iglooFree
# Declared: Line 78 (Source lines: 79-82)
# Address: 0x0f0befec - 0x0f0bf020 (Size: 52 bytes, Frame: 32)
.globl __iglooFree
.ent __iglooFree
__iglooFree:
    # Line 79
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,16988 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 81
    la	$t9,free
    sd	$ra,0($sp)
    jalr	$t9
    nop
    # Line 82
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __iglooFree

# Function: gl_malloc
# Declared: Line 89 (Source lines: 90-99)
# Address: 0x0f0bf020 - 0x0f0bf068 (Size: 72 bytes, Frame: 32)
.globl gl_malloc
.ent gl_malloc
gl_malloc:
    # Line 90
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$at,0xfff7
    addiu	$at,$at,16936
    bnez	$a0,.L0f0bf048
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 95
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f0bf048:
    # Line 99
    la	$t9,__iglooMalloc
    sd	$ra,8($sp)
    bal __iglooMalloc
    nop
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_malloc

# Function: gl_realloc
# Declared: Line 102 (Source lines: 103-105)
# Address: 0x0f0bf068 - 0x0f0bf09c (Size: 52 bytes, Frame: 48)
.globl gl_realloc
.ent gl_realloc
gl_realloc:
    # Line 103
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,16864 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 105
    la	$t9,__iglooRealloc
    sd	$ra,0($sp)
    bal __iglooRealloc
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_realloc

# Function: gl_free
# Declared: Line 108 (Source lines: 109-112)
# Address: 0x0f0bf09c - 0x0f0bf0d0 (Size: 52 bytes, Frame: 32)
.globl gl_free
.ent gl_free
gl_free:
    # Line 109
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,16812 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 111
    la	$t9,__iglooFree
    sd	$ra,0($sp)
    bal __iglooFree
    nop
    # Line 112
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_free

