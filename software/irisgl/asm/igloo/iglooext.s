# Source: ../igloo/ext/iglooext.c
# Category: igloo
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/ext/iglooext.c -o iglooext.T
# Total Functions: 2

.text

# Function: __iglooWindowRasterPos
# Declared: Line 17 (Source lines: 18-40)
# Address: 0x0f0d8850 - 0x0f0d8908 (Size: 184 bytes, Frame: 208)
.globl __iglooWindowRasterPos
.ent __iglooWindowRasterPos
__iglooWindowRasterPos:
    # Line 26
    li	$a0,2824
    # Line 18
    addiu	$sp,$sp,-80
    # Line 26
    addiu	$a1,$sp,0
    sdc1	$f13,32($sp)
    sd	$gp,48($sp)
    # Line 18
    # lui	at,0xfff6 (gp disp hi)
    # addiu	at,at,-22024 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 26
    la	$t9,__iglooGetBooleanv
    sdc1	$f24,24($sp)
    sd	$ra,40($sp)
    jalr	$t9
    # Line 18
    mov.s	$f24,$f12
    # Line 26
    lbu	$v0,0($sp)
    beqz	$v0,.L0f0d88e4
    mtc1	$zero,$f4
    # Line 32
    la	$t9,__iglooGetFloatv
    addiu	$a1,$sp,8
    jalr	$t9
    li	$a0,2823
    # Line 34
    move	$a0,$zero
    move	$a1,$zero
    move	$a6,$zero
    lwc1	$f16,8($sp)
    lwc1	$f18,12($sp)
    ldc1	$f17,32($sp)
    mtc1	$zero,$f15
    la	$t9,glBitmap
    sub.s	$f17,$f17,$f18
    mov.s	$f14,$f15
    jalr	$t9
    sub.s	$f16,$f24,$f16
    ldc1	$f24,24($sp)
    ld	$ra,40($sp)
.L0f0d88d8:
    ld	$gp,48($sp)
    # Line 40
    jr	$ra
    addiu	$sp,$sp,80
.L0f0d88e4:
    # Line 38
    mov.s	$f12,$f24
    la	$t9,glLoadRasterPosSGIXXX
    ldc1	$f13,32($sp)
    mov.s	$f14,$f4
    bal glLoadRasterPosSGIXXX
    lwc1	$f15,_lit_3f800000
    ldc1	$f24,24($sp)
    b	.L0f0d88d8
    ld	$ra,40($sp)
.end __iglooWindowRasterPos

# Function: glLoadRasterPosSGIXXX
# Declared: Line 47 (Source lines: 48-92)
# Address: 0x0f0d8908 - 0x0f0d8aa4 (Size: 412 bytes, Frame: 240)
.globl glLoadRasterPosSGIXXX
.ent glLoadRasterPosSGIXXX
glLoadRasterPosSGIXXX:
    # Line 48
    addiu	$sp,$sp,-240
    sdc1	$f15,168($sp)
    sdc1	$f30,144($sp)
    mov.s	$f30,$f14
    sd	$s8,192($sp)
    sd	$gp,200($sp)
    sd	$ra,176($sp)
    lui	$ra,0xfff6
    addiu	$ra,$ra,-22208
    addu	$gp,$t9,$ra
    # Line 58
    la	$s8,gl_wstatep
    sdc1	$f13,152($sp)
    # Line 65
    la	$t9,__iglooGetMatrixMode
    # Line 58
    lw	$s8,0($s8)
    sdc1	$f12,160($sp)
    # Line 65
    jalr	$t9
    # Line 58
    addiu	$s8,$s8,2832
    sd	$v0,184($sp)
    # Line 67
    addiu	$a3,$sp,12
    la	$t9,__iglooGetViewport
    addiu	$a2,$sp,8
    addiu	$a1,$sp,4
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 69
    la	$t9,__iglooGetMatrix
    addiu	$a1,$sp,16
    jalr	$t9
    li	$a0,2982
    # Line 70
    la	$t9,__iglooGetMatrix
    addiu	$a1,$sp,80
    jalr	$t9
    li	$a0,2983
    # Line 71
    la	$t9,__iglooMatrixMode
    jalr	$t9
    li	$a0,5888
    # Line 72
    la	$t9,__iglooLoadIdentity
    jalr	$t9
    nop
    # Line 73
    la	$t9,__iglooMatrixMode
    jalr	$t9
    li	$a0,5889
    # Line 74
    la	$t9,__iglooLoadIdentity
    jalr	$t9
    nop
    # Line 76
    move	$a0,$zero
    la	$t9,__iglooViewport
    move	$a1,$zero
    li	$a3,2
    jalr	$t9
    li	$a2,2
    # Line 77
    la	$t9,__iglooDepthRange
    ldc1	$f13,_lit8_3ff0000000000000
    jalr	$t9
    dmtc1	$zero,$f12
    # Line 79
    lwc1	$f14,_lit_40000000
    mul.s	$f14,$f30,$f14
    ldc1	$f16,168($sp)
    lwc1	$f15,_lit_bf800000
    la	$t9,glRasterPos4f
    neg.s	$f12,$f16
    add.s	$f14,$f14,$f15
    mov.s	$f13,$f12
    mov.s	$f15,$f16
    jalr	$t9
    mul.s	$f14,$f14,$f16
    # Line 80
    move	$a6,$zero
    ldc1	$f17,152($sp)
    ldc1	$f16,160($sp)
    move	$a1,$zero
    move	$a0,$zero
    la	$t9,glBitmap
    mtc1	$zero,$f14
    ldc1	$f30,144($sp)
    jalr	$t9
    mov.s	$f15,$f14
    # Line 82
    la	$t9,__iglooDepthRange
    ldc1	$f13,32($s8)
    jalr	$t9
    ldc1	$f12,24($s8)
    # Line 86
    la	$t9,__iglooLoadMatrix
    addiu	$a0,$sp,80
    jalr	$t9
    ld	$s8,184($sp)
    # Line 87
    la	$t9,__iglooMatrixMode
    jalr	$t9
    li	$a0,5888
    # Line 88
    la	$t9,__iglooLoadMatrix
    jalr	$t9
    addiu	$a0,$sp,16
    # Line 89
    la	$t9,__iglooMatrixMode
    jalr	$t9
    move	$a0,$s8
    # Line 91
    lw	$a3,12($sp)
    lw	$a2,8($sp)
    la	$t9,__iglooViewport
    lw	$a1,4($sp)
    lw	$a0,0($sp)
    jalr	$t9
    ld	$s8,192($sp)
    # Line 92
    ld	$ra,176($sp)
    ld	$gp,200($sp)
    jr	$ra
    addiu	$sp,$sp,240
.end glLoadRasterPosSGIXXX

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_bf800000:
    .word 0xbf800000

