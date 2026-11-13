# Source: ../igloo/graphics/invertview.c
# Category: graphics
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/graphics/invertview.c -o invertview.T
# Total Functions: 3

.text

# Function: gl_invertview
# Declared: Line 33 (Source lines: 35-76)
# Address: 0x0f0d8e14 - 0x0f0d8fa8 (Size: 404 bytes, Frame: 192)
.ent gl_invertview
gl_invertview:
    # Line 35
    addiu	$sp,$sp,-320
    sd	$s0,256($sp)
    sd	$a0,208($sp)
    sd	$a1,200($sp)
    sd	$a2,232($sp)
    sd	$a3,240($sp)
    # Line 40
    la	$t9,__GLgetmmode
    sd	$a4,216($sp)
    sd	$ra,248($sp)
    jalr	$t9
    sd	$a5,224($sp)
    beqz	$v0,.L0f0d8e6c
    move	$s0,$v0
    # Line 43
    la	$t9,__GLmmode
    jalr	$t9
    li	$a0,1
    # Line 44
    la	$t9,__GLgetmatrix
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 45
    la	$t9,__GLmmode
    jalr	$t9
    li	$a0,2
.L0f0d8e6c:
    # Line 47
    la	$t9,__GLpushmatrix
    jalr	$t9
    nop
    # Line 48
    la	$t9,__GLmmode
    dsll32	$a0,$s0,0x10
    dsra32	$a0,$a0,0x10
    jalr	$t9
    sd	$a0,192($sp)
    # Line 49
    la	$t9,__GLpushviewport
    jalr	$t9
    nop
    # Line 51
    la	$t9,__GLcallobj
    jalr	$t9
    ld	$a0,208($sp)
    beqz	$s0,.L0f0d8f94
    # Line 54
    li	$a6,1
    beq	$s0,$a6,.L0f0d8f80
    # Line 58
    la	$t9,__GLmmode
    jalr	$t9
    li	$a0,2
    # Line 59
    la	$t9,__GLgetmatrix
    jalr	$t9
    addiu	$a0,$sp,64
    # Line 60
    la	$t9,__GLmmode
    jalr	$t9
    li	$a0,1
    # Line 61
    la	$t9,__GLgetmatrix
    jalr	$t9
    addiu	$a0,$sp,128
    # Line 62
    la	$t9,gl_multmatrix4d
    addiu	$a2,$sp,128
    addiu	$a1,$sp,64
    bal gl_multmatrix4d
    addiu	$a0,$sp,64
    # Line 65
    la	$t9,gl_invert4d
.L0f0d8ef8:
    ld	$a0,200($sp)
    bal gl_invert4d
    addiu	$a1,$sp,64
    ld	$a0,232($sp)
    # Line 66
    la	$t9,__GLgetviewport
    ld	$a1,240($sp)
    ld	$a2,216($sp)
    jalr	$t9
    ld	$a3,224($sp)
    # Line 67
    la	$t9,__GLpopviewport
    jalr	$t9
    nop
    move	$a7,$s0
    beqz	$a7,.L0f0d8f5c
    ld	$s0,256($sp)
    # Line 70
    la	$t9,__GLmmode
    li	$a0,1
    jalr	$t9
    ld	$s0,256($sp)
    # Line 71
    la	$t9,__GLloadmatrix
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 72
    la	$t9,__GLmmode
    jalr	$t9
    li	$a0,2
.L0f0d8f5c:
    # Line 74
    la	$t9,__GLpopmatrix
    jalr	$t9
    nop
    # Line 75
    la	$t9,__GLmmode
    jalr	$t9
    ld	$a0,192($sp)
    ld	$ra,248($sp)
    # Line 76
    jr	$ra
    addiu	$sp,$sp,320
.L0f0d8f80:
    # Line 56
    la	$t9,__GLgetmatrix
    jalr	$t9
    addiu	$a0,$sp,64
    b	.L0f0d8ef8
    # Line 65
    la	$t9,gl_invert4d
.L0f0d8f94:
    # Line 54
    la	$t9,__GLgetmatrix
    jalr	$t9
    addiu	$a0,$sp,64
    b	.L0f0d8ef8
    # Line 65
    la	$t9,gl_invert4d
.end gl_invertview

# Function: gl_g_mapw
# Declared: Line 78 (Source lines: 81-118)
# Address: 0x0f0d8fa8 - 0x0f0d920c (Size: 612 bytes, Frame: 208)
.globl gl_g_mapw
.ent gl_g_mapw
gl_g_mapw:
    # Line 81
    addiu	$sp,$sp,-208
    sd	$a5,80($sp)
    # Line 87
    addiu	$a5,$sp,70
    sd	$a4,104($sp)
    addiu	$a4,$sp,68
    sd	$a3,120($sp)
    addiu	$a3,$sp,66
    sd	$a2,112($sp)
    addiu	$a2,$sp,64
    sd	$a1,72($sp)
    sd	$gp,128($sp)
    sd	$ra,136($sp)
    # Line 81
    lui	$ra,0xfff6
    addiu	$ra,$ra,-23904
    addu	$gp,$t9,$ra
    # Line 87
    la	$t9,sub_0f0e0000
    addiu	$a1,$sp,0
    sd	$a7,96($sp)
    addiu	$t9,$t9,-29164
    bal gl_n_retsym
    sd	$a6,88($sp)
    lh	$at,66($sp)
    mtc1	$at,$f5
    lh	$v0,64($sp)
    cvt.s.w	$f5,$f5
    mtc1	$v0,$f4
    nop
    cvt.s.w	$f4,$f4
    # Line 91
    lh	$a0,68($sp)
    # Line 87
    lwc1	$f9,_lit_3f000000
    # Line 102
    ld	$a1,112($sp)
    # Line 87
    lwc1	$f8,_lit_bf000000
    add.s	$f5,$f5,$f9
    # Line 105
    lwc1	$f3,12($sp)
    # Line 103
    lwc1	$f11,20($sp)
    # Line 87
    add.s	$f4,$f4,$f8
    # Line 105
    lwc1	$f2,60($sp)
    # Line 102
    lwc1	$f1,48($sp)
    # Line 104
    lwc1	$f12,8($sp)
    # Line 87
    c.eq.s	$f4,$f5
    # Line 91
    lh	$v1,70($sp)
    # Line 115
    ld	$at,88($sp)
    # Line 87
    bc1t	.L0f0d91e8
    # Line 108
    ld	$v0,80($sp)
    # Line 91
    mtc1	$v1,$f7
    nop
    cvt.s.w	$f7,$f7
    mtc1	$a0,$f6
    nop
    cvt.s.w	$f6,$f6
    add.s	$f7,$f7,$f9
    add.s	$f6,$f6,$f8
    c.eq.s	$f6,$f7
    # Line 107
    ld	$v1,104($sp)
    # Line 91
    bc1t	.L0f0d91c4
    # Line 106
    ld	$a0,120($sp)
    ld	$ra,72($sp)
    # Line 102
    mtc1	$ra,$f8
    nop
    cvt.s.w	$f8,$f8
    lwc1	$f0,_lit_40000000
    mul.s	$f8,$f8,$f0
    sub.s	$f8,$f8,$f4
    sub.s	$f9,$f5,$f4
    sub.s	$f8,$f8,$f5
    div.s	$f8,$f8,$f9
    mtc1	$a1,$f9
    nop
    cvt.s.w	$f9,$f9
    mul.s	$f9,$f9,$f0
    sub.s	$f9,$f9,$f6
    sub.s	$f10,$f7,$f6
    sub.s	$f9,$f9,$f7
    div.s	$f9,$f9,$f10
    # Line 105
    lwc1	$f4,28($sp)
    mul.s	$f3,$f3,$f8
    mul.s	$f4,$f4,$f9
    # Line 103
    lwc1	$f10,4($sp)
    mul.s	$f10,$f10,$f8
    # Line 105
    add.s	$f3,$f3,$f4
    lwc1	$f4,44($sp)
    # Line 103
    mul.s	$f11,$f11,$f9
    # Line 105
    sub.s	$f3,$f3,$f4
    add.s	$f2,$f2,$f3
    # Line 103
    add.s	$f10,$f10,$f11
    lwc1	$f11,36($sp)
    sub.s	$f10,$f10,$f11
    lwc1	$f11,52($sp)
    add.s	$f10,$f10,$f11
    # Line 107
    div.s	$f3,$f10,$f2
    # Line 102
    lwc1	$f4,0($sp)
    mul.s	$f4,$f4,$f8
    lwc1	$f11,16($sp)
    mul.s	$f11,$f11,$f9
    add.s	$f4,$f4,$f11
    lwc1	$f11,32($sp)
    sub.s	$f4,$f4,$f11
    add.s	$f1,$f1,$f4
    # Line 106
    div.s	$f4,$f1,$f2
    # Line 104
    mul.s	$f12,$f12,$f8
    lwc1	$f8,24($sp)
    mul.s	$f8,$f8,$f9
    add.s	$f12,$f12,$f8
    lwc1	$f8,40($sp)
    sub.s	$f12,$f12,$f8
    lwc1	$f8,56($sp)
    add.s	$f12,$f12,$f8
    # Line 108
    div.s	$f11,$f12,$f2
    # Line 106
    swc1	$f4,0($a0)
    # Line 107
    swc1	$f3,0($v1)
    # Line 108
    swc1	$f11,0($v0)
    # Line 114
    lwc1	$f11,44($sp)
    mul.s	$f11,$f11,$f0
    # Line 112
    lwc1	$f9,36($sp)
    mul.s	$f9,$f9,$f0
    # Line 114
    add.s	$f11,$f11,$f2
    # Line 112
    add.s	$f9,$f9,$f10
    # Line 116
    div.s	$f9,$f9,$f11
    # Line 111
    lwc1	$f10,32($sp)
    mul.s	$f10,$f10,$f0
    add.s	$f10,$f10,$f1
    # Line 115
    div.s	$f10,$f10,$f11
    # Line 113
    lwc1	$f8,40($sp)
    mul.s	$f8,$f8,$f0
    add.s	$f8,$f8,$f12
    # Line 117
    div.s	$f8,$f8,$f11
    # Line 116
    ld	$ra,96($sp)
    ld	$gp,128($sp)
    # Line 115
    swc1	$f10,0($at)
    # Line 116
    swc1	$f9,0($ra)
    # Line 118
    ld	$ra,136($sp)
    # Line 117
    lw	$a1,212($sp)
    # Line 118
    addiu	$sp,$sp,208
    jr	$ra
    # Line 117
    swc1	$f8,0($a1)
.L0f0d91c4:
    # Line 96
    la	$t9,gl_ErrorHandler
    lw	$a2,-14784($gp)
    li	$a1,2
    jalr	$t9
    li	$a0,27
    # Line 97
    ld	$ra,136($sp)
    ld	$gp,128($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0f0d91e8:
    # Line 90
    la	$t9,gl_ErrorHandler
    lw	$a2,-14784($gp)
    li	$a1,2
    jalr	$t9
    li	$a0,27
    # Line 91
    ld	$ra,136($sp)
    ld	$gp,128($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end gl_g_mapw

# Function: gl_g_mapw2
# Declared: Line 120 (Source lines: 121-125)
# Address: 0x0f0d920c - 0x0f0d9250 (Size: 68 bytes, Frame: 224)
.globl gl_g_mapw2
.ent gl_g_mapw2
gl_g_mapw2:
    # Line 121
    addiu	$sp,$sp,-96
    # Line 124
    addiu	$a7,$sp,16
    addiu	$a6,$sp,16
    addiu	$a5,$sp,16
    sd	$gp,32($sp)
    # Line 121
    # lui	v0,0xfff6 (gp disp hi)
    # addiu	v0,v0,-24516 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 124
    la	$t9,__GLmapw
    sd	$ra,24($sp)
    addiu	$at,$sp,16
    jalr	$t9
    sw	$at,4($sp)
    # Line 125
    ld	$ra,24($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end gl_g_mapw2

.rdata
_lit_3f000000:
    .word 0x3f000000
_lit_40000000:
    .word 0x40000000
_lit_bf000000:
    .word 0xbf000000

