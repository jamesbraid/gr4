# Source: ../igloo/glws/cpstate.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/cpstate.c -o cpstate.T
# Total Functions: 2

.text

# Function: __iglooGetCopyState
# Declared: Line 10 (Source lines: 11-37)
# Address: 0x0f0a0eac - 0x0f0a0f6c (Size: 192 bytes, Frame: 48)
.globl __iglooGetCopyState
.ent __iglooGetCopyState
__iglooGetCopyState:
    # Line 11
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,9116 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 16
    la	$t9,__iglooGetCurrentContextInfo
    sd	$s0,16($sp)
    sd	$ra,8($sp)
    jalr	$t9
    # Line 11
    move	$s0,$a0
    # Line 24
    li	$a0,39
    move	$a3,$zero
    addiu	$a5,$s0,32
    addiu	$a4,$v0,48
.L0f0a0ee4:
    addu	$a1,$a3,$a5
    addu	$v1,$a3,$a4
    addiu	$a3,$a3,8
    ld	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0f0a0ee4
    sd	$v1,0($a1)
    # Line 26
    la	$t9,__iglooAllocMatrixStacks
    jalr	$t9
    nop
    bnez	$v0,.L0f0a0f58
    sw	$v0,4($s0)
    # Line 31
    addiu	$a3,$s0,224
.L0f0a0f18:
    la	$t9,__iglooGetScissor
    addiu	$a2,$s0,220
    addiu	$a1,$s0,216
    jalr	$t9
    addiu	$a0,$s0,212
    # Line 36
    addiu	$a3,$s0,20
    la	$t9,__iglooGetViewport
    addiu	$a2,$s0,16
    addiu	$a1,$s0,12
    jalr	$t9
    addiu	$a0,$s0,8
    # Line 37
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0a0f58:
    # Line 28
    la	$t9,__iglooGetMatrixStacks
    jalr	$t9
    move	$a0,$v0
    b	.L0f0a0f18
    # Line 31
    addiu	$a3,$s0,224
.end __iglooGetCopyState

# Function: __iglooSetCopyState
# Declared: Line 39 (Source lines: 40-95)
# Address: 0x0f0a0f6c - 0x0f0a1048 (Size: 220 bytes, Frame: 48)
.globl __iglooSetCopyState
.ent __iglooSetCopyState
__iglooSetCopyState:
    # Line 44
    lw	$a5,28($a0)
    lw	$a4,24($a0)
    lw	$a3,20($a0)
    lw	$a2,16($a0)
    lw	$a1,12($a0)
    # Line 40
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    sd	$gp,16($sp)
    # lui	at,0xfff9 (gp disp hi)
    # addiu	at,at,8924 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 44
    la	$t9,__iglooExtViewport
    # Line 40
    move	$s0,$a0
    sd	$ra,8($sp)
    # Line 44
    jalr	$t9
    lw	$a0,8($a0)
    # Line 47
    la	$t9,__iglooDepthRange
    ldc1	$f13,240($s0)
    jalr	$t9
    ldc1	$f12,232($s0)
    # Line 50
    lw	$a3,224($s0)
    lw	$a2,220($s0)
    lw	$a4,212($s0)
    lw	$a5,216($s0)
    lw	$a1,28($s0)
    la	$t9,__iglooScissor
    lw	$a0,24($s0)
    addu	$a1,$a1,$a5
    jalr	$t9
    addu	$a0,$a0,$a4
    # Line 54
    la	$t9,__iglooSetEnable
    lbu	$a1,106($s0)
    jalr	$t9
    li	$a0,3089
    lw	$a0,4($s0)
    beqz	$a0,.L0f0a1014
    # Line 58
    la	$t9,__iglooSetMatrixStacks
    jalr	$t9
    nop
    # Line 59
    la	$t9,__iglooFreeMatrixStacks
    jalr	$t9
    lw	$a0,4($s0)
.L0f0a1014:
    # Line 64
    la	$t9,__iglooSetEnable
    lbu	$a1,112($s0)
    jalr	$t9
    li	$a0,2884
    # Line 68
    la	$t9,__iglooPixelZoom
    lwc1	$f13,76($s0)
    jalr	$t9
    lwc1	$f12,72($s0)
    ld	$ra,8($sp)
    ld	$s0,0($sp)
    ld	$gp,16($sp)
    # Line 95
    jr	$ra
    addiu	$sp,$sp,48
.end __iglooSetCopyState

