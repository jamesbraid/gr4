# Source: ../igloo/glws/mex_colormap.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/mex_colormap.c -o mex_colormap.T
# Total Functions: 10

.text

# Function: _GLflushcmaps
# Declared: Line 48 (Source lines: 49-56)
# Address: 0x0f0e3268 - 0x0f0e32b0 (Size: 72 bytes, Frame: 16)
.globl _GLflushcmaps
.ent _GLflushcmaps
_GLflushcmaps:
    # Line 49
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$a1,0xfff5
    addiu	$a1,$a1,-32
    addu	$gp,$t9,$a1
    # Line 54
    la	$a0,gl_sstatep
    lw	$a0,0($a0)
    la	$t9,XFlush
    lw	$a0,28($a0)
    sd	$ra,0($sp)
    jalr	$t9
    lw	$a0,4($a0)
    # Line 55
    la	$ra,_GLdirtycmaps
    sw	$zero,0($ra)
    # Line 56
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end _GLflushcmaps

# Function: _GLmakemap
# Declared: Line 58 (Source lines: 59-81)
# Address: 0x0f0e32b0 - 0x0f0e332c (Size: 124 bytes, Frame: 224)
.globl _GLmakemap
.ent _GLmakemap
_GLmakemap:
    # Line 63
    li	$a1,44
    # Line 59
    addiu	$sp,$sp,-96
    sd	$s8,56($sp)
    sd	$gp,64($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,-104 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 63
    la	$t9,bzero
    # Line 59
    move	$s8,$a0
    sd	$ra,48($sp)
    # Line 63
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 64
    la	$t9,XOpenDisplay
    lw	$a0,4($s8)
    jalr	$t9
    lw	$a0,128($a0)
    # Line 66
    la	$t9,XSetCloseDownMode
    # Line 64
    move	$a0,$v0
    # Line 66
    li	$a1,1
    jalr	$t9
    ld	$s8,56($sp)
    # Line 68
    la	$t9,_GLloadCurrentCursorMap
    bal _GLloadCurrentCursorMap
    nop
    # Line 74
    la	$t9,_GLrecolorAllCursors
    jalr	$t9
    nop
    # Line 81
    ld	$ra,48($sp)
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end _GLmakemap

# Function: gl_g_blink
# Declared: Line 83 (Source lines: 84-121)
# Address: 0x0f0e332c - 0x0f0e346c (Size: 320 bytes, Frame: 128)
.globl gl_g_blink
.ent gl_g_blink
gl_g_blink:
    # Line 95
    sll	$v1,$a3,0x8
    # Line 96
    sll	$v0,$a4,0x8
    # Line 84
    addiu	$sp,$sp,-128
    sd	$gp,48($sp)
    lui	$a5,0xfff5
    addiu	$a5,$a5,-228
    addu	$gp,$t9,$a5
    la	$a6,gl_sstatep
    # Line 97
    li	$at,7
    sd	$s2,32($sp)
    # Line 90
    lw	$t0,0($a6)
    # Line 84
    move	$s2,$a1
    sd	$s1,40($sp)
    # Line 90
    lw	$s1,28($t0)
    # Line 97
    sb	$at,10($sp)
    # Line 96
    sh	$v0,8($sp)
    # Line 95
    sh	$v1,6($sp)
    # Line 93
    sw	$a1,0($sp)
    # Line 94
    sll	$a1,$a2,0x8
    sh	$a1,4($sp)
    sd	$ra,56($sp)
    # Line 99
    lw	$a7,28($s1)
    sd	$s0,24($sp)
    move	$s0,$zero
    blez	$a7,.L0f0e3440
    sd	$a0,16($sp)
    sd	$ra,56($sp)
    sd	$s5,64($sp)
    move	$s5,$zero
    b	.L0f0e33e4
    li	$a0,1
    la	$a0,gl_sstatep
.L0f0e33ac:
    # Line 114
    addiu	$a3,$sp,0
    lw	$a0,0($a0)
    ld	$a2,16($sp)
    la	$t9,XSGIMiscCycleColorCell
    lw	$a0,28($a0)
    lw	$a1,4($t0)
    jalr	$t9
    lw	$a0,4($a0)
    la	$a6,gl_sstatep
    li	$a0,1
    lw	$a7,28($s1)
.L0f0e33d8:
    # Line 99
    slt	$a3,$s0,$a7
.L0f0e33dc:
    beqz	$a3,.L0f0e343c
    lw	$t0,0($a6)
.L0f0e33e4:
    # Line 103
    lw	$t0,32($s1)
    addu	$t0,$t0,$s5
    lw	$at,4($t0)
    # Line 99
    addiu	$s0,$s0,1
    addiu	$s5,$s5,80
    # Line 103
    beqz	$at,.L0f0e33d8
    move	$a1,$t0
    lw	$at,16($a1)
    bnez	$at,.L0f0e33dc
    # Line 99
    slt	$a3,$s0,$a7
    # Line 105
    lw	$v0,8($a1)
    sllv	$v0,$a0,$v0
    slt	$v0,$s2,$v0
    beqz	$v0,.L0f0e33dc
    # Line 99
    slt	$a3,$s0,$a7
    # Line 112
    lw	$v1,12($a1)
    beqzl	$v1,.L0f0e33ac
    la	$a0,gl_sstatep
    beqz	$s2,.L0f0e33dc
    # Line 99
    slt	$a3,$s0,$a7
    b	.L0f0e33ac
    la	$a0,gl_sstatep
.L0f0e343c:
    ld	$s5,64($sp)
.L0f0e3440:
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    # Line 120
    la	$t9,XFlush
    lw	$a0,28($t0)
    ld	$s0,24($sp)
    jalr	$t9
    lw	$a0,4($a0)
    # Line 121
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end gl_g_blink

# Function: determineGLVisual
# Declared: Line 123 (Source lines: 133-179)
# Address: 0x0f0e346c - 0x0f0e3534 (Size: 200 bytes, Frame: 0)
.ent determineGLVisual
determineGLVisual:
    # Line 133
    la	$a3,gl_sstatep
    # Line 134
    move	$v0,$zero
    # Line 136
    li	$a1,16
    # Line 133
    lw	$a3,0($a3)
    # Line 134
    li	$at,64
    beq	$a0,$at,.L0f0e34c8
    # Line 133
    lw	$a3,28($a3)
    # Line 136
    li	$at,128
    beq	$a0,$at,.L0f0e34e0
    li	$v1,32
    beq	$a0,$v1,.L0f0e3504
    nop
    beq	$a0,$a1,.L0f0e34ac
    # Line 161
    la	$a2,gl_wstatep
.L0f0e34a4:
    # Line 179
    jr	$ra
    nop
.L0f0e34ac:
    # Line 161
    lw	$a2,0($a2)
    lw	$a2,256($a2)
    andi	$a2,$a2,0x2
    beqz	$a2,.L0f0e350c
    # Line 162
    addiu	$v0,$a3,44
    b	.L0f0e34a4
    nop
.L0f0e34c8:
    # Line 140
    la	$at,__iglooSoftPupPlanes
    lw	$at,0($at)
    beqz	$at,.L0f0e3514
    # Line 141
    addiu	$v0,$a3,20
    b	.L0f0e34a4
    nop
.L0f0e34e0:
    # Line 154
    la	$v0,gl_wstatep
    lw	$v0,0($v0)
    lw	$v0,244($v0)
    andi	$v0,$v0,0xff00
    sra	$v0,$v0,0x8
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$a3
    # Line 179
    jr	$ra
    # Line 154
    addiu	$v0,$v0,20
.L0f0e3504:
    # Line 179
    jr	$ra
    # Line 157
    addiu	$v0,$a3,20
.L0f0e350c:
    # Line 179
    jr	$ra
    # Line 164
    addiu	$v0,$a3,28
.L0f0e3514:
    # Line 148
    la	$v0,gl_wstatep
    lw	$v0,0($v0)
    lw	$v0,244($v0)
    andi	$v0,$v0,0xff
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$a3
    # Line 179
    jr	$ra
    # Line 148
    addiu	$v0,$v0,20
.end determineGLVisual

# Function: do_mapcolor
# Declared: Line 183 (Source lines: 185-243)
# Address: 0x0f0e3534 - 0x0f0e36b8 (Size: 388 bytes, Frame: 176)
.ent do_mapcolor
do_mapcolor:
    # Line 190
    andi	$v0,$a4,0xff
    # Line 185
    addiu	$sp,$sp,-176
    sd	$s7,24($sp)
    move	$s7,$a0
    sd	$s3,56($sp)
    move	$s3,$a1
    sd	$s4,48($sp)
    move	$s4,$a2
    sd	$s1,32($sp)
    # Line 190
    move	$s1,$zero
    sd	$s2,64($sp)
    sd	$s5,40($sp)
    # Line 188
    la	$s5,gl_wstatep
    # Line 185
    move	$s2,$a3
    # Line 190
    beqz	$a1,.L0f0e3698
    # Line 188
    lw	$s5,0($s5)
    # Line 190
    lw	$a0,0($s3)
    sd	$s8,96($sp)
    sd	$s6,88($sp)
    blez	$a0,.L0f0e3698
    sd	$s0,72($sp)
    sd	$ra,80($sp)
    move	$s0,$zero
    li	$s6,64
    andi	$s8,$a6,0xff
    sd	$v0,0($sp)
    addiu	$at,$s2,1
    andi	$v1,$a5,0xff
    sd	$v1,8($sp)
    b	.L0f0e35fc
    sd	$at,16($sp)
.L0f0e35b0:
    # Line 235
    bgtzl	$s2,.L0f0e35d0
    # Line 237
    move	$a0,$s7
    li	$a7,16
    # Line 235
    beql	$s4,$a7,.L0f0e35d0
    # Line 237
    move	$a0,$s7
    # Line 235
    bnel	$s4,$at,.L0f0e35f0
    # Line 190
    addiu	$s1,$s1,1
    # Line 237
    move	$a0,$s7
.L0f0e35d0:
    move	$a2,$s2
    la	$t9,__iglooStoreColor
    ld	$a3,0($sp)
    ld	$a4,8($sp)
    jalr	$t9
    move	$a5,$s8
    lw	$a0,0($s3)
.L0f0e35ec:
    # Line 190
    addiu	$s1,$s1,1
.L0f0e35f0:
    slt	$v0,$s1,$a0
    beqzl	$v0,.L0f0e368c
    ld	$s0,72($sp)
.L0f0e35fc:
    # Line 192
    lw	$a1,4($s3)
    addu	$a1,$a1,$s0
    # Line 193
    lw	$a3,0($a1)
    la	$a2,__iglooSoftPupShift
    # Line 190
    addiu	$s0,$s0,80
    # Line 193
    lw	$a3,0($a3)
    # Line 192
    lw	$a1,4($a1)
    # Line 193
    beq	$s4,$s6,.L0f0e3678
    lw	$a3,28($a3)
.L0f0e3620:
    # Line 198
    beqz	$a3,.L0f0e35ec
    li	$at,128
    lw	$t0,12112($s5)
    sllv	$a2,$s2,$t0
    slt	$a7,$a2,$a3
    beqzl	$a7,.L0f0e35f0
    # Line 190
    addiu	$s1,$s1,1
    # Line 209
    beqz	$t0,.L0f0e35b0
    nop
    blezl	$s2,.L0f0e35f0
    # Line 190
    addiu	$s1,$s1,1
    # Line 225
    move	$a0,$s7
    move	$a6,$s8
    ld	$a5,8($sp)
    ld	$a3,16($sp)
    la	$t9,__iglooFillColormap
    ld	$a4,0($sp)
    sllv	$a3,$a3,$t0
    jalr	$t9
    addiu	$a3,$a3,-1
    b	.L0f0e35ec
    lw	$a0,0($s3)
.L0f0e3678:
    # Line 193
    lw	$a2,0($a2)
    beqz	$a2,.L0f0e3620
    nop
    b	.L0f0e3620
    # Line 198
    srav	$a3,$a3,$a2
.L0f0e368c:
    ld	$ra,80($sp)
    ld	$s6,88($sp)
    ld	$s8,96($sp)
.L0f0e3698:
    # Line 243
    ld	$s1,32($sp)
    ld	$s2,64($sp)
    ld	$s3,56($sp)
    ld	$s4,48($sp)
    ld	$s5,40($sp)
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end do_mapcolor

# Function: gl_g_mapcolor
# Declared: Line 246 (Source lines: 247-327)
# Address: 0x0f0e36b8 - 0x0f0e3874 (Size: 444 bytes, Frame: 240)
.globl gl_g_mapcolor
.ent gl_g_mapcolor
gl_g_mapcolor:
    # Line 247
    addiu	$sp,$sp,-112
    sd	$gp,40($sp)
    lui	$a7,0xfff5
    addiu	$a7,$a7,-1136
    addu	$gp,$t9,$a7
    la	$a4,gl_wstatep
    lw	$a4,0($a4)
    sd	$s1,48($sp)
    beqz	$a4,.L0f0e3864
    move	$s1,$a0
    # Line 259
    la	$v0,gl_sstatep
    sd	$s0,56($sp)
    # Line 266
    lw	$s0,276($a4)
    # Line 262
    lw	$v0,0($v0)
    # Line 266
    slti	$v1,$s1,4
    lw	$s0,56($s0)
    # Line 262
    lw	$v0,28($v0)
    # Line 266
    li	$t0,256
    bne	$s0,$t0,.L0f0e3764
    # Line 262
    lw	$v0,4($v0)
    # Line 266
    blez	$s1,.L0f0e37b8
    ld	$s0,56($sp)
    beqz	$v1,.L0f0e37b8
    sd	$v0,0($sp)
    sd	$ra,64($sp)
    # Line 295
    la	$t9,_GLrecolorAllCursors
    # Line 293
    sll	$a0,$a2,0x8
    la	$a2,sub_0f030000
    or	$a0,$a0,$a1
    sll	$a1,$a3,0x10
    or	$a0,$a0,$a1
    lui	$a1,0x100
    addiu	$a2,$a2,-28656
    or	$a0,$a0,$a1
    sll	$a1,$s1,0x2
    addu	$a1,$a1,$a2
    # Line 295
    jalr	$t9
    # Line 293
    sw	$a0,0($a1)
    # Line 296
    la	$t9,XFlush
    jalr	$t9
    ld	$a0,0($sp)
    b	.L0f0e37b8
    ld	$ra,64($sp)
.L0f0e3764:
    sd	$v0,0($sp)
    sd	$a3,8($sp)
    sd	$a2,16($sp)
    # Line 301
    la	$t9,sub_0f0e0000
    sd	$a1,24($sp)
    sd	$ra,64($sp)
    addiu	$t9,$t9,13420
    bal gl_g_blink
    move	$a0,$s0
    bnez	$v0,.L0f0e37d8
    ld	$ra,64($sp)
.L0f0e3790:
    # Line 304
    li	$at,16
    beq	$s0,$at,.L0f0e3810
.L0f0e3798:
    # Line 318
    la	$v1,_GLsyncmapcolors
    lw	$v1,0($v1)
    beqz	$v1,.L0f0e37c8
    ld	$s0,56($sp)
    # Line 323
    la	$t9,XFlush
    jalr	$t9
    ld	$a0,0($sp)
    ld	$ra,64($sp)
.L0f0e37b8:
    ld	$gp,40($sp)
    # Line 327
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f0e37c8:
    # Line 325
    li	$a7,1
    la	$t0,_GLdirtycmaps
    b	.L0f0e37b8
    sw	$a7,0($t0)
.L0f0e37d8:
    sd	$v0,32($sp)
    # Line 304
    ld	$a0,0($sp)
    move	$a1,$v0
    move	$a2,$s0
    move	$a3,$s1
    la	$t9,sub_0f0e0000
    ld	$a4,24($sp)
    ld	$a5,16($sp)
    addiu	$t9,$t9,13620
    bal gl_g_blink
    ld	$a6,8($sp)
    ld	$v0,32($sp)
    b	.L0f0e3790
    ld	$ra,64($sp)
.L0f0e3810:
    la	$t1,gl_sstatep
    # Line 310
    lw	$t1,0($t1)
    lw	$t1,28($t1)
    addiu	$a0,$t1,44
    bne	$v0,$a0,.L0f0e3830
    # Line 314
    move	$a1,$a0
    # Line 312
    addiu	$a1,$t1,28
    nop
.L0f0e3830:
    # Line 314
    lw	$at,0($a1)
    beqz	$at,.L0f0e3798
    ld	$a0,0($sp)
    # Line 318
    move	$a2,$s0
    move	$a3,$s1
    la	$t9,sub_0f0e0000
    ld	$a4,24($sp)
    ld	$a5,16($sp)
    addiu	$t9,$t9,13620
    bal gl_g_blink
    ld	$a6,8($sp)
    b	.L0f0e3798
    ld	$ra,64($sp)
.L0f0e3864:
    ld	$gp,40($sp)
    # Line 259
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end gl_g_mapcolor

# Function: gl_g_getmcolor
# Declared: Line 329 (Source lines: 331-375)
# Address: 0x0f0e3874 - 0x0f0e3a18 (Size: 420 bytes, Frame: 240)
.globl gl_g_getmcolor
.ent gl_g_getmcolor
gl_g_getmcolor:
    # Line 331
    addiu	$sp,$sp,-112
    sd	$a3,32($sp)
    sd	$gp,56($sp)
    # lui	v1,0xfff5 (gp disp hi)
    # addiu	v1,v1,-1580 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    # Line 335
    la	$v0,gl_wstatep
    sd	$a2,24($sp)
    sd	$a1,16($sp)
    lw	$v0,0($v0)
    sd	$s0,64($sp)
    # Line 331
    move	$s0,$a0
    # Line 335
    move	$at,$v0
    beqz	$v0,.L0f0e3a08
    sd	$v0,48($sp)
    # Line 340
    lw	$a0,276($v0)
    # Line 342
    la	$t9,sub_0f0e0000
    sd	$ra,72($sp)
    # Line 340
    lw	$a0,56($a0)
    # Line 342
    addiu	$t9,$t9,13420
    bal gl_g_blink
    sd	$a0,40($sp)
    ld	$a4,40($sp)
    # Line 353
    move	$a6,$zero
    # Line 342
    li	$a5,256
    beq	$a4,$a5,.L0f0e392c
    ld	$ra,72($sp)
    ld	$at,48($sp)
    # Line 353
    lw	$t0,0($v0)
    lw	$at,12112($at)
    sll	$a7,$t0,0x2
    addu	$a7,$a7,$t0
    sllv	$s0,$s0,$at
    blez	$t0,.L0f0e392c
    andi	$s0,$s0,0xffff
    lw	$a0,4($v0)
    sll	$a7,$a7,0x4
    addu	$a7,$a0,$a7
.L0f0e390c:
    lw	$at,0($a0)
    lw	$at,32($at)
    # Line 357
    addiu	$a0,$a0,80
    # Line 353
    slt	$at,$s0,$at
    bnez	$at,.L0f0e393c
    # Line 357
    sltu	$v1,$a0,$a7
    bnez	$v1,.L0f0e390c
    addiu	$a6,$a6,80
.L0f0e392c:
    ld	$gp,56($sp)
    # Line 375
    ld	$s0,64($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f0e393c:
    # Line 363
    sw	$s0,0($sp)
    # Line 365
    la	$a0,gl_sstatep
    addiu	$a2,$sp,0
    lw	$a1,4($v0)
    lw	$a0,0($a0)
    la	$t9,XQueryColor
    addu	$a1,$a1,$a6
    lw	$a0,28($a0)
    lw	$a1,4($a1)
    jalr	$t9
    lw	$a0,4($a0)
    # Line 367
    lhu	$v0,4($sp)
    mtc1	$v0,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f2,_lit_437f0000
    mul.s	$f4,$f4,$f2
    lwc1	$f1,_lit_477fff00
    div.s	$f4,$f4,$f1
    trunc.w.s	$f4,$f4
    mfc1	$at,$f4
    ld	$v0,16($sp)
    andi	$at,$at,0xff
    sh	$at,0($v0)
    # Line 368
    lhu	$ra,6($sp)
    mtc1	$ra,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f2
    div.s	$f3,$f3,$f1
    trunc.w.s	$f3,$f3
    mfc1	$s0,$f3
    ld	$ra,24($sp)
    andi	$s0,$s0,0xff
    sh	$s0,0($ra)
    # Line 369
    lhu	$a5,8($sp)
    mtc1	$a5,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f2
    div.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    ld	$gp,56($sp)
    # Line 371
    ld	$s0,64($sp)
    ld	$ra,72($sp)
    # Line 369
    mfc1	$a4,$f0
    ld	$a5,32($sp)
    # Line 371
    addiu	$sp,$sp,112
    # Line 369
    andi	$a4,$a4,0xff
    # Line 371
    jr	$ra
    # Line 369
    sh	$a4,0($a5)
.L0f0e3a08:
    ld	$gp,56($sp)
    # Line 338
    ld	$s0,64($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end gl_g_getmcolor

# Function: _GLgetCurrentCursorColors
# Declared: Line 402 (Source lines: 403-410)
# Address: 0x0f0e3a18 - 0x0f0e3ac4 (Size: 172 bytes, Frame: 0)
.globl _GLgetCurrentCursorColors
.ent _GLgetCurrentCursorColors
_GLgetCurrentCursorColors:
    # Line 403
    lui	$v0,0xfff5
    addiu	$v0,$v0,-2000
    addu	$at,$t9,$v0
    lw	$a3,-32676($at)
    addiu	$a3,$a3,-28656
    # Line 406
    lw	$a2,8($a3)
    lw	$a1,12($a3)
    andi	$v0,$a2,0xff
    andi	$v1,$a1,0xff
    sll	$v1,$v1,0x8
    sh	$v1,28($a0)
    lw	$v1,4($a3)
    sll	$v0,$v0,0x8
    sh	$v0,16($a0)
    andi	$v0,$v1,0xff
    sll	$v0,$v0,0x8
    sh	$v0,4($a0)
    # Line 408
    srl	$v0,$a1,0x10
    # Line 407
    srl	$a1,$a1,0x8
    andi	$a1,$a1,0xff
    # Line 408
    andi	$v0,$v0,0xff
    sll	$v0,$v0,0x8
    # Line 407
    sll	$a1,$a1,0x8
    sh	$a1,30($a0)
    # Line 408
    srl	$a1,$v1,0x10
    # Line 407
    srl	$v1,$v1,0x8
    # Line 408
    sh	$v0,32($a0)
    srl	$v0,$a2,0x10
    # Line 407
    srl	$a2,$a2,0x8
    # Line 408
    andi	$v0,$v0,0xff
    # Line 407
    andi	$a2,$a2,0xff
    # Line 408
    andi	$a1,$a1,0xff
    # Line 407
    andi	$v1,$v1,0xff
    sll	$v1,$v1,0x8
    # Line 408
    sll	$a1,$a1,0x8
    # Line 407
    sll	$a2,$a2,0x8
    # Line 408
    sll	$v0,$v0,0x8
    sh	$v0,20($a0)
    # Line 407
    sh	$a2,18($a0)
    # Line 408
    sh	$a1,8($a0)
    # Line 407
    sh	$v1,6($a0)
    # Line 410
    jr	$ra
    nop
.end _GLgetCurrentCursorColors

# Function: _GLloadCurrentCursorMap
# Declared: Line 412 (Source lines: 417-417)
# Address: 0x0f0e3ac4 - 0x0f0e3acc (Size: 8 bytes, Frame: 0)
.globl _GLloadCurrentCursorMap
.ent _GLloadCurrentCursorMap
_GLloadCurrentCursorMap:
    # Line 417
    jr	$ra
    nop
.end _GLloadCurrentCursorMap

# Function: _GLsetCurrentCursorColor
# Declared: Line 419 (Source lines: 420-425)
# Address: 0x0f0e3acc - 0x0f0e3b38 (Size: 108 bytes, Frame: 0)
.globl _GLsetCurrentCursorColor
.ent _GLsetCurrentCursorColor
_GLsetCurrentCursorColor:
    # Line 424
    lhu	$v1,8($a1)
    sra	$v1,$v1,0x8
    dsll32	$v1,$v1,0x10
    lhu	$v0,4($a1)
    dsra32	$v1,$v1,0x10
    sll	$v1,$v1,0x10
    sra	$v0,$v0,0x8
    lhu	$a2,6($a1)
    dsll32	$v0,$v0,0x10
    dsra32	$v0,$v0,0x10
    sra	$a2,$a2,0x8
    dsll32	$a2,$a2,0x10
    dsra32	$a2,$a2,0x10
    sll	$a1,$a2,0x8
    or	$v0,$v0,$a1
    or	$v0,$v0,$v1
    lui	$v1,0x100
    # Line 420
    lui	$a1,0xfff5
    addiu	$a1,$a1,-2180
    addu	$at,$t9,$a1
    # Line 424
    lw	$a1,-32676($at)
    or	$v0,$v0,$v1
    sll	$v1,$a0,0x2
    addiu	$a0,$a1,-28656
    addu	$v1,$v1,$a0
    # Line 425
    jr	$ra
    # Line 424
    sw	$v0,0($v1)
.end _GLsetCurrentCursorColor

.rdata
_lit_437f0000:
    .word 0x437f0000
_lit_477fff00:
    .word 0x477fff00

