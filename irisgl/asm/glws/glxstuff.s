# Source: ../igloo/glws/glxstuff.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/glxstuff.c -o glxstuff.T
# Total Functions: 6

.text

# Function: use_deepest_visual
# Declared: Line 30 (Source lines: 31-50)
# Address: 0x0f0d7858 - 0x0f0d7960 (Size: 264 bytes, Frame: 0)
.ent use_deepest_visual
use_deepest_visual:
    # Line 31
    lw	$a7,0($a0)
    # Line 35
    move	$a6,$zero
    # Line 31
    slti	$at,$a7,2
    bnez	$at,.L0f0d7908
    # Line 38
    li	$t0,1
    addiu	$at,$a7,-1
    slt	$t1,$at,$t0
    beqzl	$t1,.L0f0d787c
    move	$t0,$at
.L0f0d787c:
    # Line 36
    lw	$t1,4($a0)
    # Line 38
    li	$a2,1
    andi	$v0,$t0,0x1
    # Line 36
    lw	$a4,0($t1)
    # Line 38
    addiu	$a3,$t1,80
    beqz	$v0,.L0f0d78b8
    # Line 36
    lw	$a4,12($a4)
    # Line 38
    lw	$a5,0($a3)
    lw	$a5,12($a5)
    slt	$v0,$a4,$a5
    beqz	$v0,.L0f0d78b4
    addiu	$a3,$a3,80
    # Line 40
    move	$a6,$a2
    # Line 41
    move	$a4,$a5
.L0f0d78b4:
    # Line 38
    addiu	$a2,$a2,1
.L0f0d78b8:
    sra	$at,$t0,0x1
    bnezl	$at,.L0f0d7924
    lw	$a5,0($a3)
    # Line 46
    move	$a4,$t1
.L0f0d78c8:
    # Line 38
    blez	$a6,.L0f0d7908
    # Line 46
    move	$a3,$zero
    sll	$a5,$a6,0x2
    li	$a2,20
    addu	$a5,$a5,$a6
    sll	$a5,$a5,0x4
    addu	$a5,$a5,$t1
.L0f0d78e4:
    addu	$v0,$a3,$a4
    addu	$at,$a3,$a5
    addiu	$a3,$a3,4
    lw	$at,0($at)
    addiu	$a2,$a2,-1
    bgtz	$a2,.L0f0d78e4
    sw	$at,0($v0)
    # Line 47
    li	$v0,1
    sw	$v0,0($a0)
.L0f0d7908:
    # Line 50
    jr	$ra
    nop
.L0f0d7910:
    # Line 38
    addiu	$a2,$a2,1
    slt	$v1,$a2,$a7
    beqzl	$v1,.L0f0d78c8
    # Line 46
    move	$a4,$t1
    # Line 38
    lw	$a5,0($a3)
.L0f0d7924:
    lw	$a5,12($a5)
    slt	$a1,$a4,$a5
    beqzl	$a1,.L0f0d7940
    lw	$a5,80($a3)
    # Line 40
    move	$a6,$a2
    # Line 41
    move	$a4,$a5
    # Line 38
    lw	$a5,80($a3)
.L0f0d7940:
    lw	$a5,12($a5)
    addiu	$a3,$a3,160
    slt	$at,$a4,$a5
    beqz	$at,.L0f0d7910
    addiu	$a2,$a2,1
    # Line 40
    move	$a6,$a2
    b	.L0f0d7910
    # Line 41
    move	$a4,$a5
.end use_deepest_visual

# Function: __iglooFindAllGLVisualsAndColormaps
# Declared: Line 54 (Source lines: 55-124)
# Address: 0x0f0d7960 - 0x0f0d7b44 (Size: 484 bytes, Frame: 192)
.globl __iglooFindAllGLVisualsAndColormaps
.ent __iglooFindAllGLVisualsAndColormaps
__iglooFindAllGLVisualsAndColormaps:
    # Line 55
    addiu	$sp,$sp,-64
    sd	$gp,16($sp)
    sd	$ra,24($sp)
    lui	$ra,0xfff6
    addiu	$ra,$ra,-18200
    addu	$gp,$t9,$ra
    la	$t9,sub_0f0d0000
    sd	$s0,32($sp)
    move	$s0,$a0
    addiu	$t9,$t9,30808
    # Line 61
    bal __iglooGetId
    addiu	$a0,$a0,20
    la	$t9,sub_0f0d0000
    sd	$s1,40($sp)
    # Line 62
    addiu	$a0,$s0,60
    addiu	$t9,$t9,30808
    bal __iglooGetId
    sd	$a0,8($sp)
    # Line 66
    move	$s1,$zero
    move	$a1,$s0
    # Line 68
    lw	$at,100($a1)
    lw	$v0,92($a1)
    lw	$v1,84($a1)
    lw	$a2,76($a1)
    lw	$a3,68($a1)
    lw	$a4,60($a1)
    lw	$a5,52($a1)
    lw	$a6,44($a1)
    lw	$t1,20($a1)
    lw	$t0,28($a1)
    lw	$a7,36($a1)
    addu	$s1,$t1,$s1
    addu	$s1,$t0,$s1
    addu	$s1,$a7,$s1
    addu	$s1,$a6,$s1
    addu	$s1,$a5,$s1
    addu	$s1,$a4,$s1
    addu	$s1,$a3,$s1
    addu	$s1,$a2,$s1
    addu	$s1,$v1,$s1
    addu	$s1,$v0,$s1
    addu	$s1,$at,$s1
    # Line 71
    la	$t9,sub_0f0d0000
    move	$a0,$s0
    addiu	$t9,$t9,31820
    bal __iglooCancelSoftPup
    move	$a1,$s1
    beqz	$v0,.L0f0d7b08
    # Line 72
    la	$t9,sub_0f0d0000
    lw	$at,20($s0)
.L0f0d7a28:
    # Line 86
    la	$a2,__iglooMixedModel
    # Line 72
    beqz	$at,.L0f0d7ab8
    ld	$s1,40($sp)
    # Line 102
    la	$a0,__iglooMixedModel
.L0f0d7a38:
    lw	$v0,0($a0)
    bnez	$v0,.L0f0d7aa8
    # Line 124
    ld	$ra,24($sp)
    # Line 102
    lw	$v1,60($s0)
    bnez	$v1,.L0f0d7aa8
    # Line 115
    la	$v0,__iglooSoftPupPlanes
    # Line 109
    lw	$a3,20($s0)
    beqzl	$a3,.L0f0d7aac
    ld	$gp,16($sp)
    # Line 112
    lw	$a0,24($s0)
    lw	$a0,0($a0)
    lw	$a0,12($a0)
    slti	$at,$a0,3
    bnezl	$at,.L0f0d7aac
    ld	$gp,16($sp)
    # Line 115
    sra	$a3,$a0,0x1
    la	$at,__iglooSoftPupShift
    sw	$a3,0($v0)
    # Line 116
    li	$v0,1
    # Line 115
    sw	$a3,0($at)
    # Line 117
    la	$at,__iglooSoftPupMask
    sllv	$a3,$v0,$a3
    # Line 116
    sllv	$v0,$v0,$a0
    addiu	$v0,$v0,-1
    # Line 117
    addiu	$a3,$a3,-1
    nor	$a3,$a3,$zero
    and	$a3,$a3,$v0
    sw	$a3,0($at)
.L0f0d7aa8:
    ld	$gp,16($sp)
.L0f0d7aac:
    # Line 124
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0d7ab8:
    # Line 86
    lw	$a3,232($s0)
    sw	$a3,236($s0)
    lw	$v1,0($a2)
    beqz	$v1,.L0f0d7b20
    lw	$a4,60($s0)
    # Line 100
    sw	$a4,20($s0)
    # Line 101
    la	$t9,malloc
    # Line 97
    sll	$a0,$a4,0x2
    addu	$a0,$a0,$a4
    sll	$a0,$a0,0x4
    # Line 101
    jalr	$t9
    sd	$a0,0($sp)
    move	$a1,$v0
    # Line 102
    la	$t9,bcopy
    ld	$a2,0($sp)
    lw	$a0,64($s0)
    jalr	$t9
    # Line 101
    sw	$v0,24($s0)
    b	.L0f0d7a38
    la	$a0,__iglooMixedModel
.L0f0d7b08:
    # Line 72
    move	$a0,$s0
    addiu	$t9,$t9,32204
    bal __iglooCancelSoftPup
    move	$a1,$s1
    b	.L0f0d7a28
    lw	$at,20($s0)
.L0f0d7b20:
    # Line 92
    li	$a1,8
    # Line 91
    lw	$ra,64($s0)
    # Line 92
    la	$t9,bzero
    ld	$a0,8($sp)
    # Line 91
    sw	$ra,24($s0)
    # Line 92
    jalr	$t9
    # Line 91
    sw	$a4,20($s0)
    b	.L0f0d7a38
    la	$a0,__iglooMixedModel
.end __iglooFindAllGLVisualsAndColormaps

# Function: __iglooCancelSoftPup
# Declared: Line 127 (Source lines: 128-153)
# Address: 0x0f0d7b44 - 0x0f0d7bdc (Size: 152 bytes, Frame: 32)
.globl __iglooCancelSoftPup
.ent __iglooCancelSoftPup
__iglooCancelSoftPup:
    # Line 128
    addiu	$sp,$sp,-32
    sd	$gp,16($sp)
    # lui	v0,0xfff6 (gp disp hi)
    # addiu	v0,v0,-18684 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$a3,__iglooSoftPupPlanes
    lw	$at,0($a3)
    beqz	$at,.L0f0d7bd0
    # Line 130
    la	$a2,gl_sstatep
    lw	$a2,0($a2)
    # Line 140
    la	$a5,__iglooSoftPupShift
    # Line 141
    la	$a4,__iglooSoftPupMask
    # Line 130
    lw	$a2,28($a2)
    # Line 140
    sw	$zero,0($a5)
    # Line 139
    sw	$zero,0($a3)
    # Line 141
    li	$a3,-1
    sw	$a3,0($a4)
    sd	$ra,24($sp)
    # Line 147
    lw	$a1,20($a2)
    # Line 149
    la	$t9,malloc
    sd	$a2,0($sp)
    # Line 148
    sw	$a1,60($a2)
    # Line 147
    sll	$a0,$a1,0x2
    addu	$a0,$a0,$a1
    sll	$a0,$a0,0x4
    # Line 149
    jalr	$t9
    sd	$a0,8($sp)
    move	$a1,$v0
    # Line 150
    ld	$a3,0($sp)
    la	$t9,bcopy
    ld	$a2,8($sp)
    lw	$a0,24($a3)
    jalr	$t9
    # Line 149
    sw	$v0,64($a3)
    ld	$ra,24($sp)
.L0f0d7bd0:
    ld	$gp,16($sp)
    # Line 153
    jr	$ra
    addiu	$sp,$sp,32
.end __iglooCancelSoftPup

# Function: _GLputGLcolormaps
# Declared: Line 227 (Source lines: 229-239)
# Address: 0x0f0d7bdc - 0x0f0d7c4c (Size: 112 bytes, Frame: 48)
.ent _GLputGLcolormaps
_GLputGLcolormaps:
    # Line 229
    addiu	$sp,$sp,-48
    move	$t2,$a1
    # Line 230
    lw	$t3,0($a1)
    # Line 229
    move	$a6,$a2
    # Line 231
    lw	$a5,-20784($gp)
    # Line 230
    lw	$t3,24($t3)
    # Line 229
    move	$a7,$a3
    # Line 231
    beqz	$a5,.L0f0d7c08
    lw	$t1,0($t3)
    sd	$ra,0($sp)
    # Line 234
    move	$t1,$a5
.L0f0d7c08:
    # Line 236
    move	$a5,$zero
    li	$a4,32
    lw	$a3,12($t3)
    sd	$ra,0($sp)
    move	$a2,$t1
    lw	$t1,8($t2)
    la	$t9,XChangeProperty
    lw	$a1,140($a0)
    sll	$t0,$t1,0x2
    addu	$t0,$t0,$t1
    sll	$t0,$t0,0x4
    addu	$a1,$a1,$t0
    jalr	$t9
    lw	$a1,8($a1)
    ld	$ra,0($sp)
    # Line 239
    jr	$ra
    addiu	$sp,$sp,48
.end _GLputGLcolormaps

# Function: _GLgetGLcolormaps
# Declared: Line 246 (Source lines: 247-284)
# Address: 0x0f0d7c4c - 0x0f0d7dcc (Size: 384 bytes, Frame: 224)
.ent _GLgetGLcolormaps
_GLgetGLcolormaps:
    # Line 247
    addiu	$sp,$sp,-96
    sd	$s0,64($sp)
    move	$s0,$a0
    sd	$s7,40($sp)
    sd	$s2,72($sp)
    # Line 248
    lw	$s2,4($a0)
    # Line 250
    sw	$zero,36($sp)
    # Line 249
    sw	$zero,32($sp)
    sd	$s1,48($sp)
    # Line 253
    lw	$s1,0($a0)
    # Line 247
    move	$s7,$a1
    # Line 259
    la	$t9,__iglooGetGraphicsType
    # Line 253
    lw	$s1,24($s1)
    sd	$ra,56($sp)
    # Line 259
    bal __iglooGetGraphicsType
    # Line 253
    lw	$s1,0($s1)
    # Line 261
    li	$at,5
    beq	$v0,$at,.L0f0d7d88
    li	$v1,6
    beq	$v0,$v1,.L0f0d7d88
    li	$a3,7
    beq	$v0,$a3,.L0f0d7d88
.L0f0d7ca4:
    # Line 267
    move	$a0,$s2
    addiu	$a7,$sp,32
    move	$a6,$zero
    move	$a5,$zero
    move	$a4,$s7
    move	$a3,$zero
    move	$a2,$s1
    addiu	$t2,$sp,32
    addiu	$t3,$sp,36
    lw	$t1,8($s0)
    la	$t9,XGetWindowProperty
    lw	$a1,140($s2)
    sll	$t0,$t1,0x2
    addu	$t0,$t0,$t1
    addiu	$t1,$sp,32
    sll	$t0,$t0,0x4
    addu	$a1,$a1,$t0
    addiu	$t0,$sp,32
    lw	$a1,8($a1)
    sw	$t3,28($sp)
    sw	$t2,20($sp)
    sw	$t1,12($sp)
    jalr	$t9
    sw	$t0,4($sp)
    lw	$v0,36($sp)
    beqz	$v0,.L0f0d7dac
    # Line 271
    move	$a1,$v0
    move	$a2,$s0
    addiu	$a4,$s0,88
    # Line 276
    lw	$at,20($a2)
.L0f0d7d1c:
    blez	$at,.L0f0d7d50
    move	$v0,$zero
    move	$a0,$zero
.L0f0d7d28:
    # Line 277
    lw	$a5,24($a2)
    lw	$a3,0($a1)
    addu	$a5,$a5,$a0
    sw	$a3,4($a5)
    # Line 276
    lw	$v1,20($a2)
    # Line 277
    addiu	$a1,$a1,4
    # Line 276
    addiu	$v0,$v0,1
    slt	$v1,$v0,$v1
    bnez	$v1,.L0f0d7d28
    addiu	$a0,$a0,80
.L0f0d7d50:
    # Line 273
    addiu	$a2,$a2,8
    bnel	$a2,$a4,.L0f0d7d1c
    # Line 276
    lw	$at,20($a2)
    # Line 281
    la	$t9,XFree
    jalr	$t9
    lw	$a0,36($sp)
    # Line 282
    li	$v0,1
    ld	$s0,64($sp)
    ld	$s1,48($sp)
    ld	$ra,56($sp)
    ld	$s2,72($sp)
    ld	$s7,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0d7d88:
    # Line 264
    move	$a0,$s2
    la	$t9,XInternAtom
    la	$a1,sub_0f030000
    move	$a2,$zero
    jalr	$t9
    addiu	$a1,$a1,-30272
    move	$s1,$v0
    b	.L0f0d7ca4
    sw	$v0,-20784($gp)
.L0f0d7dac:
    # Line 284
    move	$v0,$zero
    ld	$s0,64($sp)
    ld	$s1,48($sp)
    ld	$ra,56($sp)
    ld	$s2,72($sp)
    ld	$s7,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end _GLgetGLcolormaps

# Function: _GLmakemap
# Declared: Line 287 (Source lines: 288-339)
# Address: 0x0f0d7dcc - 0x0f0d7fa8 (Size: 476 bytes, Frame: 0)
.ent _GLmakemap
_GLmakemap:
    # Line 288
    move	$a2,$s8
    addiu	$sp,$sp,-128
    addiu	$s8,$sp,128
    sd	$a2,-64($s8)
    sd	$ra,-56($s8)
    sd	$a0,-40($s8)
    # Line 296
    la	$t9,bzero
    # Line 288
    li	$v1,-16
    sd	$a1,-48($s8)
    sll	$a1,$a1,0x2
    addiu	$v0,$a1,15
    and	$v0,$v0,$v1
    subu	$sp,$sp,$v0
    # Line 295
    move	$at,$sp
    # Line 296
    move	$a0,$sp
    jalr	$t9
    sd	$sp,-32($s8)
    # Line 297
    ld	$a0,-40($s8)
    la	$t9,XOpenDisplay
    lw	$a0,4($a0)
    sd	$s7,-128($s8)
    jalr	$t9
    lw	$a0,128($a0)
    sd	$s6,-120($s8)
    sd	$s3,-96($s8)
    sd	$s1,-72($s8)
    # Line 298
    la	$t9,XSetCloseDownMode
    # Line 297
    move	$a0,$v0
    move	$s7,$v0
    # Line 298
    jalr	$t9
    li	$a1,1
    sd	$s0,-112($s8)
    sd	$s4,-104($s8)
    sd	$s5,-88($s8)
    sd	$s2,-80($s8)
    # Line 303
    move	$s6,$zero
    move	$s3,$zero
    b	.L0f0d7ebc
    ld	$s1,-40($s8)
.L0f0d7e68:
    # Line 305
    addu	$s5,$s3,$s5
.L0f0d7e6c:
    # Line 307
    move	$a2,$s6
    move	$a0,$s7
    # Line 305
    addiu	$s2,$s2,1
    # Line 306
    lw	$s4,24($s1)
    # Line 307
    la	$t9,__iglooFindColormap
    addiu	$s3,$s3,4
    # Line 306
    addu	$s4,$s4,$s0
    # Line 307
    jalr	$t9
    lw	$a1,0($s4)
    sw	$v0,4($s4)
    sw	$v0,0($s5)
    # Line 305
    lw	$at,20($s1)
    addiu	$s0,$s0,80
    slt	$at,$s2,$at
    bnez	$at,.L0f0d7e6c
    # Line 307
    addiu	$s5,$s5,4
.L0f0d7eac:
    li	$v0,11
    # Line 303
    addiu	$s6,$s6,1
    beq	$s6,$v0,.L0f0d7ed4
    addiu	$s1,$s1,8
.L0f0d7ebc:
    # Line 305
    lw	$v1,20($s1)
    blez	$v1,.L0f0d7eac
    move	$s2,$zero
    move	$s0,$zero
    b	.L0f0d7e68
    ld	$s5,-32($s8)
.L0f0d7ed4:
    ld	$s6,-120($s8)
    ld	$a4,-40($s8)
    ld	$s0,-112($s8)
    ld	$s3,-96($s8)
    # Line 303
    lw	$a4,60($a4)
    ld	$s5,-88($s8)
    ld	$s2,-80($s8)
    beqz	$a4,.L0f0d7f34
    ld	$s1,-72($s8)
    ld	$s6,-120($s8)
    ld	$at,-40($s8)
    ld	$s0,-112($s8)
    ld	$s3,-96($s8)
    lw	$at,20($at)
    ld	$s5,-88($s8)
    ld	$s2,-80($s8)
    bnez	$at,.L0f0d7f34
    ld	$s1,-72($s8)
    ld	$s4,-40($s8)
    # Line 318
    lw	$s4,64($s4)
    lw	$a3,0($s4)
    lw	$a3,12($a3)
    slti	$v0,$a3,3
    beqz	$v0,.L0f0d7f8c
.L0f0d7f34:
    # Line 327
    la	$t9,_GLloadCurrentCursorMap
.L0f0d7f38:
    jalr	$t9
    ld	$s4,-104($s8)
    # Line 333
    la	$t9,_GLrecolorAllCursors
    jalr	$t9
    nop
    # Line 337
    move	$a0,$s7
    la	$t9,sub_0f0d0000
    ld	$a1,-40($s8)
    ld	$a2,-32($s8)
    addiu	$t9,$t9,31708
    bal __iglooCancelSoftPup
    ld	$a3,-48($s8)
    # Line 338
    la	$t9,XCloseDisplay
    jalr	$t9
    move	$a0,$s7
    # Line 339
    ld	$s7,-128($s8)
    ld	$ra,-56($s8)
    ld	$at,-64($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0f0d7f8c:
    # Line 321
    la	$t9,__iglooSoftPupInitColormap
    move	$a0,$s7
    sra	$a2,$a3,0x1
    jalr	$t9
    lw	$a1,4($s4)
    b	.L0f0d7f38
    # Line 327
    la	$t9,_GLloadCurrentCursorMap
.end _GLmakemap

