# Source: ../igloo/glws/glxcx.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/glxcx.c -o glxcx.T
# Total Functions: 16

.text

# Function: __iglooCalculateBias
# Declared: Line 21 (Source lines: 23-65)
# Address: 0x0f0d6954 - 0x0f0d6a8c (Size: 312 bytes, Frame: 176)
.globl __iglooCalculateBias
.ent __iglooCalculateBias
__iglooCalculateBias:
    # Line 23
    addiu	$sp,$sp,-176
    # Line 39
    addiu	$a7,$sp,36
    addiu	$a6,$sp,32
    addiu	$a5,$sp,28
    sd	$a4,112($sp)
    addiu	$a4,$sp,24
    sd	$s8,96($sp)
    # Line 23
    move	$s8,$a3
    # Line 39
    addiu	$a3,$sp,20
    sd	$s1,72($sp)
    # Line 23
    move	$s1,$a2
    # Line 39
    addiu	$a2,$sp,16
    sd	$s7,88($sp)
    # Line 23
    move	$s7,$a1
    sd	$s0,64($sp)
    move	$s0,$a0
    sd	$gp,104($sp)
    # lui	at,0xfff6 (gp disp hi)
    # addiu	at,at,-14092 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 39
    la	$t9,XGetGeometry
    sd	$ra,80($sp)
    addiu	$v0,$sp,40
    jalr	$t9
    sw	$v0,4($sp)
    # Line 40
    move	$a0,$s0
    move	$a1,$s7
    addiu	$a7,$sp,16
    addiu	$a6,$sp,24
    addiu	$a5,$sp,20
    la	$t9,XTranslateCoordinates
    move	$a4,$zero
    move	$a3,$zero
    jalr	$t9
    lw	$a2,16($sp)
    # Line 45
    move	$a0,$s0
    move	$a1,$s1
    addiu	$a7,$sp,36
    addiu	$a6,$sp,56
    addiu	$a5,$sp,52
    addiu	$a4,$sp,48
    addiu	$a3,$sp,44
    addiu	$a2,$sp,16
    la	$t9,XGetGeometry
    ld	$s7,88($sp)
    addiu	$v1,$sp,40
    jalr	$t9
    sw	$v1,4($sp)
    # Line 46
    move	$a0,$s0
    move	$a1,$s1
    addiu	$a7,$sp,16
    addiu	$a6,$sp,48
    addiu	$a5,$sp,44
    la	$t9,XTranslateCoordinates
    move	$a4,$zero
    move	$a3,$zero
    jalr	$t9
    lw	$a2,16($sp)
    # Line 63
    lw	$at,20($sp)
    lw	$ra,44($sp)
    ld	$gp,104($sp)
    subu	$ra,$ra,$at
    sw	$ra,0($s8)
    # Line 65
    ld	$s8,96($sp)
    # Line 64
    lw	$s1,56($sp)
    lw	$a0,48($sp)
    # Line 65
    ld	$ra,80($sp)
    # Line 64
    lw	$s0,24($sp)
    addu	$a0,$a0,$s1
    # Line 65
    ld	$s1,72($sp)
    # Line 64
    lw	$a5,32($sp)
    subu	$a0,$a0,$s0
    # Line 65
    ld	$s0,64($sp)
    # Line 64
    subu	$a0,$a0,$a5
    ld	$a5,112($sp)
    # Line 65
    addiu	$sp,$sp,176
    jr	$ra
    # Line 64
    sw	$a0,0($a5)
.end __iglooCalculateBias

# Function: __iglooCloneContextInfo
# Declared: Line 67 (Source lines: 68-90)
# Address: 0x0f0d6a8c - 0x0f0d6af4 (Size: 104 bytes, Frame: 48)
.globl __iglooCloneContextInfo
.ent __iglooCloneContextInfo
__iglooCloneContextInfo:
    # Line 68
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    # Line 84
    lw	$a1,16($a0)
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    # Line 68
    lui	$a3,0xfff6
    addiu	$a3,$a3,-14404
    addu	$gp,$t9,$a3
    # Line 84
    la	$a2,gl_sstatep
    # Line 68
    move	$s8,$a0
    # Line 84
    lw	$a3,36($a0)
    lw	$a0,0($a2)
    lw	$a2,20($s8)
    la	$t9,__iglooCreateContextInfo
    lw	$a0,28($a0)
    lw	$a2,0($a2)
    bal __iglooCreateContextInfo
    lw	$a0,4($a0)
    # Line 87
    sw	$s8,360($v0)
    # Line 88
    lw	$s8,24($s8)
    ld	$gp,16($sp)
    # Line 90
    ld	$ra,0($sp)
    # Line 88
    sw	$s8,24($v0)
    # Line 90
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __iglooCloneContextInfo

# Function: __iglooFlush
# Declared: Line 93 (Source lines: 94-102)
# Address: 0x0f0d6af4 - 0x0f0d6b4c (Size: 88 bytes, Frame: 16)
.globl __iglooFlush
.ent __iglooFlush
__iglooFlush:
    # Line 94
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff6 (gp disp hi)
    # addiu	at,at,-14508 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 95
    la	$t9,__iglooGetCurrentContextInfo
    sd	$ra,0($sp)
    bal __iglooGetCurrentContextInfo
    nop
    bnez	$v0,.L0f0d6b2c
    ld	$ra,0($sp)
.L0f0d6b20:
    ld	$gp,8($sp)
    # Line 102
    jr	$ra
    addiu	$sp,$sp,16
.L0f0d6b2c:
    # Line 99
    la	$t9,__iglooCloseMoveDraw
    jalr	$t9
    nop
    # Line 100
    la	$t9,glFlush
    jalr	$t9
    nop
    b	.L0f0d6b20
    ld	$ra,0($sp)
.end __iglooFlush

# Function: __iglooMakeNoCurrent
# Declared: Line 104 (Source lines: 105-135)
# Address: 0x0f0d6b4c - 0x0f0d6be8 (Size: 156 bytes, Frame: 48)
.globl __iglooMakeNoCurrent
.ent __iglooMakeNoCurrent
__iglooMakeNoCurrent:
    # Line 105
    addiu	$sp,$sp,-48
    sd	$gp,24($sp)
    # lui	at,0xfff6 (gp disp hi)
    # addiu	at,at,-14596 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 112
    la	$t9,__iglooBeginCriticalSection
    sd	$a1,8($sp)
    sd	$ra,16($sp)
    jalr	$t9
    sd	$a0,0($sp)
    # Line 116
    la	$t9,__iglooGetCurrentContextInfo
    bal __iglooGetCurrentContextInfo
    nop
    beqz	$v0,.L0f0d6bb4
    # Line 127
    la	$t9,__iglooCloseMoveDraw
    jalr	$t9
    nop
    ld	$v0,8($sp)
    li	$v1,1
    beq	$v0,$v1,.L0f0d6bd4
    # Line 132
    la	$t9,sub_0f0d0000
.L0f0d6ba0:
    ld	$a0,0($sp)
    move	$a1,$zero
    addiu	$t9,$t9,29276
    bal __iglooGetCurrentContextInfo
    move	$a2,$zero
.L0f0d6bb4:
    # Line 134
    la	$t9,__iglooEndCriticalSection
    jalr	$t9
    nop
    ld	$ra,16($sp)
    ld	$gp,24($sp)
    # Line 135
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,48
.L0f0d6bd4:
    # Line 130
    la	$t9,__iglooFlush
    bal __iglooFlush
    nop
    b	.L0f0d6ba0
    # Line 132
    la	$t9,sub_0f0d0000
.end __iglooMakeNoCurrent

# Function: __iglooMakeCurrent
# Declared: Line 138 (Source lines: 140-425)
# Address: 0x0f0d6be8 - 0x0f0d6ec8 (Size: 736 bytes, Frame: 224)
.globl __iglooMakeCurrent
.ent __iglooMakeCurrent
__iglooMakeCurrent:
    # Line 140
    addiu	$sp,$sp,-480
    sd	$s3,416($sp)
    # Line 144
    li	$s3,1
    sd	$s0,368($sp)
    # Line 140
    move	$s0,$a3
    sd	$s1,384($sp)
    move	$s1,$a2
    sd	$s4,408($sp)
    move	$s4,$a1
    sd	$gp,400($sp)
    # lui	at,0xfff6 (gp disp hi)
    # addiu	at,at,-14752 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 166
    la	$t9,__iglooBeginCriticalSection
    sd	$s5,376($sp)
    sd	$ra,392($sp)
    jalr	$t9
    # Line 140
    move	$s5,$a0
    # Line 174
    la	$t9,__iglooGetCurrentContextInfo
    sd	$s2,424($sp)
    bal __iglooGetCurrentContextInfo
    sd	$s7,432($sp)
    # Line 195
    la	$t9,__iglooFlush
    # Line 174
    move	$s7,$v0
    sd	$v0,360($sp)
    # Line 195
    bal __iglooFlush
    # Line 175
    lw	$s2,28($s1)
    move	$v1,$s7
    # Line 195
    beq	$v1,$s0,.L0f0d6d28
    ld	$s7,432($sp)
    sd	$zero,344($sp)
    ld	$s7,432($sp)
    # Line 207
    lw	$a5,44($s0)
    # Line 206
    lw	$a6,28($s0)
    # Line 215
    move	$s3,$s0
    # Line 207
    bnez	$a5,.L0f0d6c84
    sd	$a6,352($sp)
    # Line 211
    lw	$at,124($s1)
    sw	$at,44($s0)
.L0f0d6c84:
    # Line 215
    beqz	$s0,.L0f0d6cbc
    move	$v0,$s0
    b	.L0f0d6ca0
    lw	$v1,4($v0)
.L0f0d6c94:
    beqz	$a0,.L0f0d6cc0
    move	$v0,$a0
    lw	$v1,4($v0)
.L0f0d6ca0:
    beqzl	$v1,.L0f0d6cbc
    # Line 220
    move	$s0,$v0
    # Line 221
    lw	$a0,0($v0)
    bnez	$a0,.L0f0d6c94
    nop
    b	.L0f0d6c94
    # Line 226
    move	$s3,$v0
.L0f0d6cbc:
    # Line 230
    bnez	$v0,.L0f0d6cd4
.L0f0d6cc0:
    # Line 236
    la	$t9,__iglooCloneContextInfo
    bal __iglooCloneContextInfo
    move	$a0,$s0
    move	$s0,$v0
    # Line 244
    sw	$v0,0($s3)
.L0f0d6cd4:
    beqz	$s2,.L0f0d6d00
    # Line 347
    la	$s3,sub_0f0d0000
    # Line 293
    la	$s3,sub_0f0d0000
    ld	$a5,360($sp)
    # Line 244
    bnel	$a5,$s2,.L0f0d6d5c
    # Line 276
    lw	$at,4($s2)
    li	$at,1
    la	$s3,sub_0f0d0000
    sd	$at,344($sp)
    b	.L0f0d6d64
    addiu	$s3,$s3,29276
.L0f0d6d00:
    # Line 347
    addiu	$s3,$s3,29276
    ld	$s2,424($sp)
.L0f0d6d08:
    # Line 390
    move	$a0,$s5
.L0f0d6d0c:
    move	$a1,$s4
    move	$a2,$s0
    bal __iglooGetCurrentContextInfo
    move	$t9,$s3
    li	$a0,1
    beq	$v0,$a0,.L0f0d6dd0
    move	$s3,$v0
.L0f0d6d28:
    # Line 424
    la	$t9,__iglooEndCriticalSection
.L0f0d6d2c:
    jalr	$t9
    ld	$s2,424($sp)
    ld	$gp,400($sp)
    # Line 425
    ld	$s0,368($sp)
    ld	$s1,384($sp)
    move	$v0,$s3
    ld	$s3,416($sp)
    ld	$ra,392($sp)
    ld	$s4,408($sp)
    ld	$s5,376($sp)
    jr	$ra
    addiu	$sp,$sp,480
.L0f0d6d5c:
    # Line 276
    beqz	$at,.L0f0d6e48
    # Line 293
    addiu	$s3,$s3,29276
.L0f0d6d64:
    lw	$v1,36($s2)
    lw	$at,36($s0)
    sltu	$v1,$zero,$v1
    sltu	$at,$zero,$at
    xor	$at,$at,$v1
    beqz	$at,.L0f0d6e38
    addiu	$a3,$sp,0
    addiu	$a4,$a3,28
    lw	$a1,8($s1)
    beq	$a1,$s4,.L0f0d6e00
    addiu	$a3,$a3,24
    # Line 313
    la	$t9,__iglooCalculateBias
    move	$a0,$s5
    move	$a2,$s4
    bal __iglooCalculateBias
    ld	$s2,424($sp)
    # Line 315
    lw	$a6,24($sp)
    sw	$a6,172($s1)
    # Line 316
    lw	$a5,28($sp)
    sw	$a5,176($s1)
.L0f0d6db4:
    ld	$at,344($sp)
    # Line 342
    beqz	$at,.L0f0d6d08
    # Line 347
    la	$t9,__iglooGetCopyState
    jalr	$t9
    addiu	$a0,$sp,0
    b	.L0f0d6d0c
    # Line 390
    move	$a0,$s5
.L0f0d6dd0:
    # Line 399
    ld	$v1,352($sp)
    beqz	$v1,.L0f0d6e58
    sw	$s0,28($s1)
.L0f0d6ddc:
    # Line 407
    lw	$a5,40($s0)
.L0f0d6de0:
    beq	$a5,$a0,.L0f0d6ea4
    ld	$a6,344($sp)
.L0f0d6de8:
    # Line 413
    beqz	$a6,.L0f0d6d28
    # Line 418
    la	$t9,__iglooSetCopyState
    jalr	$t9
    addiu	$a0,$sp,0
    b	.L0f0d6d2c
    # Line 424
    la	$t9,__iglooEndCriticalSection
.L0f0d6e00:
    # Line 320
    la	$t9,__iglooCalculateBias
    move	$a0,$s5
    bal __iglooCalculateBias
    lw	$a2,24($s2)
    # Line 324
    lw	$s2,28($sp)
    # Line 323
    lw	$at,24($sp)
    # Line 324
    negu	$s2,$s2
    sw	$s2,28($sp)
    ld	$s2,424($sp)
    # Line 323
    negu	$at,$at
    sw	$at,24($sp)
    # Line 326
    sw	$zero,176($s1)
    b	.L0f0d6db4
    # Line 325
    sw	$zero,172($s1)
.L0f0d6e38:
    # Line 342
    sw	$zero,24($sp)
    sw	$zero,28($sp)
    b	.L0f0d6db4
    ld	$s2,424($sp)
.L0f0d6e48:
    # Line 276
    bne	$s0,$s2,.L0f0d6e7c
    # Line 293
    la	$s3,sub_0f0d0000
    b	.L0f0d6d64
    addiu	$s3,$s3,29276
.L0f0d6e58:
    # Line 399
    lw	$at,360($s0)
    bnezl	$at,.L0f0d6de0
    # Line 407
    lw	$a5,40($s0)
    la	$t9,sub_0f0d0000
    addiu	$t9,$t9,30124
    bal __iglooGetShareListContext
    move	$a0,$s0
    b	.L0f0d6ddc
    li	$a0,1
.L0f0d6e7c:
    # Line 290
    lw	$a1,24($s2)
    # Line 287
    la	$s3,sub_0f0d0000
    # Line 290
    move	$a0,$s5
    move	$a2,$s2
    # Line 287
    addiu	$s3,$s3,29276
    # Line 290
    bal __iglooGetCurrentContextInfo
    move	$t9,$s3
    # Line 293
    li	$at,1
    b	.L0f0d6d64
    sd	$at,344($sp)
.L0f0d6ea4:
    # Line 412
    la	$t9,XMapWindow
    move	$a0,$s5
    jalr	$t9
    move	$a1,$s4
    # Line 413
    la	$t9,XFlush
    jalr	$t9
    move	$a0,$s5
    b	.L0f0d6de8
    ld	$a6,344($sp)
.end __iglooMakeCurrent

# Function: __iglooCheckCurrentContextInfo
# Declared: Line 433 (Source lines: 434-447)
# Address: 0x0f0d6ec8 - 0x0f0d6f54 (Size: 140 bytes, Frame: 48)
.globl __iglooCheckCurrentContextInfo
.ent __iglooCheckCurrentContextInfo
__iglooCheckCurrentContextInfo:
    # Line 434
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	at,0xfff6 (gp disp hi)
    # addiu	at,at,-15488 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 437
    la	$t9,__iglooGetCurrentContextInfo
    sd	$s0,24($sp)
    sd	$ra,8($sp)
    bal __iglooGetCurrentContextInfo
    sd	$a0,0($sp)
    move	$s0,$v0
    beqz	$v0,.L0f0d6f20
    ld	$ra,8($sp)
    lw	$v1,32($s0)
    li	$a2,1
    bne	$v1,$a2,.L0f0d6f20
    # Line 439
    lui	$a3,0x20
    lw	$at,4($s0)
    ori	$a3,$a3,0xe00
    lw	$a3,0($a3)
    beq	$a3,$at,.L0f0d6f30
    # Line 444
    la	$t9,__iglooMakeNoCurrent
.L0f0d6f20:
    ld	$gp,16($sp)
    # Line 447
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0d6f30:
    ld	$a0,0($sp)
    # Line 444
    bal __iglooMakeNoCurrent
    move	$a1,$zero
    # Line 445
    la	$t9,__iglooDestroySingleContextInfo
    ld	$a0,0($sp)
    bal __iglooDestroySingleContextInfo
    move	$a1,$s0
    b	.L0f0d6f20
    ld	$ra,8($sp)
.end __iglooCheckCurrentContextInfo

# Function: __iglooCreateContextInfo
# Declared: Line 450 (Source lines: 452-504)
# Address: 0x0f0d6f54 - 0x0f0d7084 (Size: 304 bytes, Frame: 240)
.globl __iglooCreateContextInfo
.ent __iglooCreateContextInfo
__iglooCreateContextInfo:
    # Line 452
    addiu	$sp,$sp,-112
    sd	$s2,56($sp)
    move	$s2,$a3
    sd	$s1,8($sp)
    move	$s1,$a2
    sd	$a1,48($sp)
    sd	$gp,64($sp)
    # lui	at,0xfff6 (gp disp hi)
    # addiu	at,at,-15628 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 460
    la	$t9,__iglooGetShareListContext
    sd	$s0,16($sp)
    sd	$ra,40($sp)
    bal __iglooGetShareListContext
    # Line 452
    move	$s0,$a0
    # Line 460
    move	$a2,$v0
    la	$t9,glXCreateContext
    move	$a0,$s0
    move	$a1,$s1
    jalr	$t9
    li	$a3,1
    beqz	$v0,.L0f0d6fec
    # Line 502
    la	$t9,glXDestroyContext
    sd	$v0,24($sp)
    # Line 473
    la	$t9,__iglooMalloc
    sd	$s2,32($sp)
    li	$a0,368
    jalr	$t9
    ld	$s0,16($sp)
    move	$s2,$v0
    bnez	$v0,.L0f0d700c
    ld	$ra,40($sp)
.L0f0d6fd4:
    ld	$gp,64($sp)
    # Line 504
    ld	$s1,8($sp)
    move	$v0,$s2
    ld	$s2,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f0d6fec:
    # Line 502
    move	$a0,$s0
    move	$a1,$v0
    jalr	$t9
    ld	$s1,8($sp)
    lw	$s2,0($sp)
    ld	$ra,40($sp)
    b	.L0f0d6fd4
    ld	$s0,16($sp)
.L0f0d700c:
    # Line 479
    la	$a0,gl_sstatep
    # Line 494
    la	$t9,__iglooGetVisualInfoFromVisualID
    # Line 484
    ld	$a1,48($sp)
    # Line 479
    lw	$a0,0($a0)
    # Line 483
    ld	$a2,24($sp)
    # Line 482
    lui	$a3,0x20
    # Line 479
    lw	$a0,28($a0)
    # Line 481
    sw	$zero,4($v0)
    # Line 480
    sw	$zero,0($v0)
    # Line 482
    ori	$a3,$a3,0xe00
    lw	$a3,0($a3)
    # Line 483
    sw	$a2,12($v0)
    # Line 484
    sw	$a1,16($v0)
    # Line 482
    sw	$a3,8($v0)
    # Line 490
    ld	$v1,32($sp)
    # Line 485
    lw	$a1,124($a1)
    # Line 493
    sw	$zero,364($v0)
    # Line 492
    sw	$zero,360($v0)
    # Line 491
    sw	$zero,40($v0)
    # Line 490
    sw	$v1,36($v0)
    # Line 489
    sw	$zero,32($v0)
    # Line 488
    sw	$zero,28($v0)
    # Line 487
    sw	$zero,96($v0)
    # Line 486
    sw	$zero,24($v0)
    # Line 485
    sw	$a1,44($v0)
    # Line 494
    jalr	$t9
    lw	$a1,4($s1)
    sw	$v0,20($s2)
    b	.L0f0d6fd4
    ld	$ra,40($sp)
.end __iglooCreateContextInfo

# Function: __iglooDestroySingleContextInfo
# Declared: Line 507 (Source lines: 508-531)
# Address: 0x0f0d7084 - 0x0f0d711c (Size: 152 bytes, Frame: 48)
.globl __iglooDestroySingleContextInfo
.ent __iglooDestroySingleContextInfo
__iglooDestroySingleContextInfo:
    # Line 508
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a1
    sd	$gp,8($sp)
    lw	$a3,12($a1)
    lui	$at,0xfff6
    addiu	$at,$at,-15932
    beqz	$a3,.L0f0d70c4
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    lw	$v1,8($s0)
    lui	$v0,0x20
    ori	$v0,$v0,0xe00
    lw	$v0,0($v0)
    beq	$v0,$v1,.L0f0d70f4
    # Line 517
    la	$t9,glXDestroyContext
.L0f0d70c0:
    # Line 519
    sw	$zero,12($s0)
.L0f0d70c4:
    lw	$v1,28($s0)
    li	$a2,1
    beq	$v1,$a2,.L0f0d7108
    sd	$ra,16($sp)
    # Line 530
    la	$t9,__iglooFree
.L0f0d70d8:
    jalr	$t9
    move	$a0,$s0
    # Line 531
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0d70f4:
    sd	$ra,16($sp)
    # Line 517
    jalr	$t9
    move	$a1,$a3
    b	.L0f0d70c0
    ld	$ra,16($sp)
.L0f0d7108:
    # Line 528
    la	$t9,__iglooUnInitializeOpenglState
    jalr	$t9
    addiu	$a0,$s0,48
    b	.L0f0d70d8
    # Line 530
    la	$t9,__iglooFree
.end __iglooDestroySingleContextInfo

# Function: __iglooDestroyContextInfo
# Declared: Line 533 (Source lines: 534-588)
# Address: 0x0f0d711c - 0x0f0d71ec (Size: 208 bytes, Frame: 208)
.globl __iglooDestroyContextInfo
.ent __iglooDestroyContextInfo
__iglooDestroyContextInfo:
    # Line 534
    addiu	$sp,$sp,-80
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$s0,0($sp)
    move	$s0,$a1
    sd	$gp,16($sp)
    lui	$at,0xfff6
    addiu	$at,$at,-16084
    # Line 545
    beqz	$a1,.L0f0d71c0
    # Line 534
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    sd	$s2,32($sp)
    sd	$ra,24($sp)
    sd	$s4,48($sp)
    # Line 545
    li	$s4,1
    sd	$s3,40($sp)
    lui	$s3,0x20
    b	.L0f0d716c
    ori	$s3,$s3,0xe00
.L0f0d7164:
    # Line 585
    beqzl	$s0,.L0f0d71b4
    ld	$s4,48($sp)
.L0f0d716c:
    # Line 548
    lw	$a0,4($s0)
.L0f0d7170:
    # Line 547
    move	$s2,$s0
    # Line 548
    beqz	$a0,.L0f0d71d4
    lw	$s0,0($s0)
    lw	$at,0($s3)
    bnel	$at,$a0,.L0f0d7164
    # Line 576
    sw	$s4,32($s2)
    # Line 562
    la	$t9,__iglooMakeNoCurrent
    move	$a0,$s1
    bal __iglooMakeNoCurrent
    move	$a1,$zero
    # Line 563
    la	$t9,__iglooDestroySingleContextInfo
    move	$a0,$s1
    bal __iglooDestroySingleContextInfo
    move	$a1,$s2
    # Line 585
    bnezl	$s0,.L0f0d7170
    # Line 548
    lw	$a0,4($s0)
    ld	$s4,48($sp)
.L0f0d71b4:
    ld	$ra,24($sp)
    ld	$s3,40($sp)
    ld	$s2,32($sp)
.L0f0d71c0:
    ld	$gp,16($sp)
    # Line 588
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0d71d4:
    # Line 585
    la	$t9,__iglooDestroySingleContextInfo
    move	$a0,$s1
    bal __iglooDestroySingleContextInfo
    move	$a1,$s2
    b	.L0f0d7164
    nop
.end __iglooDestroyContextInfo

# Function: __iglooGetCurrentContext
# Declared: Line 590 (Source lines: 591-606)
# Address: 0x0f0d71ec - 0x0f0d7224 (Size: 56 bytes, Frame: 16)
.globl __iglooGetCurrentContext
.ent __iglooGetCurrentContext
__iglooGetCurrentContext:
    # Line 591
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff6 (gp disp hi)
    # addiu	at,at,-16292 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 594
    la	$t9,__iglooGetCurrentContextInfo
    sd	$ra,0($sp)
    bal __iglooGetCurrentContextInfo
    nop
    # Line 606
    ld	$ra,0($sp)
    lw	$v0,12($v0)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __iglooGetCurrentContext

# Function: __iglooGetCurrentContextInfo
# Declared: Line 609 (Source lines: 610-624)
# Address: 0x0f0d7224 - 0x0f0d725c (Size: 56 bytes, Frame: 16)
.globl __iglooGetCurrentContextInfo
.ent __iglooGetCurrentContextInfo
__iglooGetCurrentContextInfo:
    # Line 610
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # lui	at,0xfff6 (gp disp hi)
    # addiu	at,at,-16348 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 613
    la	$t9,__iglooTlsInit
    sd	$ra,0($sp)
    jalr	$t9
    nop
    # Line 624
    ld	$ra,0($sp)
    lw	$v0,4100($zero)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __iglooGetCurrentContextInfo

# Function: __iglooSetCurrentContext
# Declared: Line 634 (Source lines: 636-755)
# Address: 0x0f0d725c - 0x0f0d73ec (Size: 400 bytes, Frame: 224)
.ent __iglooSetCurrentContext
__iglooSetCurrentContext:
    # Line 636
    addiu	$sp,$sp,-224
    sd	$s4,176($sp)
    sd	$s2,160($sp)
    move	$s2,$a0
    sd	$s1,152($sp)
    move	$s1,$a1
    # Line 661
    la	$t9,__iglooGetCurrentContextInfo
    sd	$s0,136($sp)
    sd	$ra,168($sp)
    bal __iglooGetCurrentContextInfo
    # Line 636
    move	$s0,$a2
    # Line 661
    move	$s4,$v0
    move	$at,$v0
    bnez	$v0,.L0f0d7398
    sd	$v0,128($sp)
.L0f0d7298:
    # Line 665
    bnezl	$s0,.L0f0d72a8
    # Line 667
    lw	$a2,12($s0)
    move	$a2,$zero
    nop
.L0f0d72a8:
    # Line 668
    la	$t9,glXMakeCurrent
    move	$a0,$s2
    jalr	$t9
    move	$a1,$s1
    # Line 673
    la	$a0,gl_sstatep
    lw	$a0,0($a0)
    la	$t9,XFlush
    lw	$a0,28($a0)
    # Line 668
    move	$s4,$v0
    # Line 673
    jalr	$t9
    lw	$a0,4($a0)
    bnez	$s0,.L0f0d73ac
    # Line 676
    andi	$a4,$s4,0xff
.L0f0d72dc:
    li	$v0,1
    bne	$v0,$a4,.L0f0d7344
    sd	$a4,144($sp)
    ld	$a5,128($sp)
    ld	$s4,176($sp)
    ld	$at,128($sp)
    beqz	$a5,.L0f0d7300
    ld	$s2,160($sp)
    # Line 683
    sw	$zero,4($at)
.L0f0d7300:
    # Line 694
    beqz	$s0,.L0f0d7328
    sw	$s0,4100($zero)
    # Line 706
    lw	$a4,28($s0)
    # Line 700
    lui	$v1,0x20
    ori	$v1,$v1,0xe00
    lw	$v1,0($v1)
    # Line 707
    sw	$v0,28($s0)
    # Line 701
    sw	$s1,24($s0)
    # Line 707
    beqz	$a4,.L0f0d73c0
    # Line 700
    sw	$v1,4($s0)
.L0f0d7328:
    # Line 739
    la	$t9,__iglooSetMoveDraw
.L0f0d732c:
    move	$a0,$zero
    ld	$s1,152($sp)
    jalr	$t9
    ld	$s0,136($sp)
    b	.L0f0d738c
    ld	$ra,168($sp)
.L0f0d7344:
    # Line 747
    lw	$a4,12($s0)
    move	$a3,$s1
    move	$a2,$s2
    addiu	$a0,$sp,0
    la	$t9,sprintf
    la	$a1,sub_0f020000
    ld	$s4,176($sp)
    jalr	$t9
    addiu	$a1,$a1,13256
    # Line 749
    addiu	$a2,$sp,0
    li	$a1,2
    li	$a0,4
    la	$t9,gl_ErrorHandler
    ld	$s2,160($sp)
    ld	$s1,152($sp)
    jalr	$t9
    ld	$s0,136($sp)
    ld	$ra,168($sp)
.L0f0d738c:
    ld	$v0,144($sp)
    # Line 755
    jr	$ra
    addiu	$sp,$sp,224
.L0f0d7398:
    # Line 665
    la	$t9,__iglooSavePickFeedState
    jalr	$t9
    move	$a0,$s4
    b	.L0f0d7298
    nop
.L0f0d73ac:
    # Line 676
    la	$t9,__iglooRestorePickFeedState
    jalr	$t9
    move	$a0,$s0
    b	.L0f0d72dc
    andi	$a4,$s4,0xff
.L0f0d73c0:
    # Line 722
    la	$t9,__iglooInitializeOpenglState
    jalr	$t9
    ld	$s1,152($sp)
    lw	$a1,360($s0)
    beqz	$a1,.L0f0d7328
    # Line 731
    la	$t9,__iglooCloneOpenglState
    addiu	$a0,$a1,48
    jalr	$t9
    ld	$s0,136($sp)
    b	.L0f0d732c
    # Line 739
    la	$t9,__iglooSetMoveDraw
.end __iglooSetCurrentContext

# Function: __iglooGetShareListContext
# Declared: Line 763 (Source lines: 764-865)
# Address: 0x0f0d73ec - 0x0f0d75ac (Size: 448 bytes, Frame: 144)
.globl __iglooGetShareListContext
.ent __iglooGetShareListContext
__iglooGetShareListContext:
    # Line 764
    addiu	$sp,$sp,-144
    sd	$gp,128($sp)
    lui	$a3,0xfff6
    addiu	$a3,$a3,-16804
    addu	$gp,$t9,$a3
    la	$v0,gl_sstatep
    # Line 769
    lw	$a1,0($v0)
    sd	$s0,120($sp)
    lw	$a1,28($a1)
    # Line 768
    move	$s0,$zero
    sd	$s1,112($sp)
    # Line 769
    beqz	$a1,.L0f0d7594
    move	$s1,$a1
    lw	$a0,252($s1)
    bnezl	$a0,.L0f0d7594
    # Line 862
    move	$s0,$a0
    # Line 769
    li	$a4,-28
    beql	$s1,$a4,.L0f0d7598
    ld	$gp,128($sp)
    # Line 792
    lw	$at,4($a1)
    beqz	$at,.L0f0d7594
    sd	$at,104($sp)
    # Line 802
    li	$a3,1
    move	$a2,$zero
    # Line 800
    lw	$a1,32($s1)
    # Line 802
    ld	$a0,104($sp)
    la	$t9,glXCreateContext
    # Line 800
    lw	$a1,0($a1)
    sd	$ra,136($sp)
    # Line 802
    jalr	$t9
    sd	$a1,96($sp)
    move	$s0,$v0
    # Line 804
    sw	$v0,252($s1)
    beqz	$v0,.L0f0d7594
    ld	$ra,136($sp)
    la	$s1,gl_sstatep
    # Line 822
    move	$a3,$zero
    # Line 820
    lw	$s1,0($s1)
    # Line 822
    la	$t9,XCreateColormap
    ld	$a2,96($sp)
    # Line 820
    lw	$s1,28($s1)
    # Line 822
    ld	$a1,104($sp)
    lw	$a2,0($a2)
    lw	$a5,8($s1)
    move	$a0,$a1
    lw	$a1,140($a1)
    sll	$a4,$a5,0x2
    addu	$a4,$a4,$a5
    sll	$a4,$a4,0x4
    addu	$a1,$a1,$a4
    jalr	$t9
    lw	$a1,8($a1)
    # Line 832
    move	$a6,$zero
    li	$a5,100
    li	$a4,100
    move	$a3,$zero
    move	$a2,$zero
    addiu	$at,$sp,32
    la	$t9,XCreateWindow
    li	$ra,1
    ld	$a1,104($sp)
    # Line 830
    sw	$zero,72($sp)
    # Line 829
    sw	$zero,36($sp)
    # Line 828
    sw	$zero,44($sp)
    # Line 822
    sw	$v0,84($sp)
    # Line 832
    ld	$t8,96($sp)
    lw	$t0,8($s1)
    move	$a0,$a1
    lw	$a1,140($a1)
    sll	$a7,$t0,0x2
    addu	$a7,$a7,$t0
    sll	$a7,$a7,0x4
    addu	$a1,$a1,$a7
    lw	$a7,12($t8)
    lw	$a1,8($a1)
    sw	$ra,4($sp)
    li	$ra,10250
    lw	$t8,0($t8)
    sw	$at,28($sp)
    sw	$ra,20($sp)
    jalr	$t9
    sw	$t8,12($sp)
    move	$s1,$v0
    # Line 845
    la	$t9,glXMakeCurrent
    ld	$a0,104($sp)
    move	$a1,$v0
    jalr	$t9
    move	$a2,$s0
    # Line 849
    la	$t9,glXMakeCurrent
    ld	$a0,104($sp)
    move	$a1,$zero
    jalr	$t9
    move	$a2,$zero
    beqz	$s1,.L0f0d757c
    ld	$ra,136($sp)
    # Line 852
    la	$t9,XDestroyWindow
    ld	$a0,104($sp)
    jalr	$t9
    move	$a1,$s1
    ld	$ra,136($sp)
.L0f0d757c:
    lw	$a1,84($sp)
    beqz	$a1,.L0f0d7594
    # Line 855
    la	$t9,XFreeColormap
    jalr	$t9
    ld	$a0,104($sp)
    ld	$ra,136($sp)
.L0f0d7594:
    ld	$gp,128($sp)
.L0f0d7598:
    # Line 865
    move	$v0,$s0
    ld	$s0,120($sp)
    ld	$s1,112($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __iglooGetShareListContext

# Function: __iglooFirstTimeContextInfoInit
# Declared: Line 873 (Source lines: 874-983)
# Address: 0x0f0d75ac - 0x0f0d770c (Size: 352 bytes, Frame: 224)
.ent __iglooFirstTimeContextInfoInit
__iglooFirstTimeContextInfoInit:
    # Line 887
    li	$a1,1
    # Line 874
    addiu	$sp,$sp,-224
    sd	$a0,184($sp)
    sd	$s3,176($sp)
    move	$s3,$a0
    # Line 887
    la	$t9,__iglooSetEnable
    li	$a0,2977
    sd	$ra,200($sp)
    jalr	$t9
    # Line 881
    lw	$s3,20($s3)
    # Line 887
    lw	$at,12($s3)
    bnez	$at,.L0f0d7604
    # Line 924
    move	$a1,$zero
    # Line 887
    lw	$v1,48($s3)
    beqz	$v1,.L0f0d7634
    ld	$s3,176($sp)
    # Line 900
    la	$t9,__iglooDepthFunc
    li	$a0,515
    jalr	$t9
    ld	$s3,176($sp)
    b	.L0f0d7638
    # Line 944
    la	$t9,getenv
.L0f0d7604:
    # Line 921
    la	$a2,__iglooClientDPY
    # Line 924
    li	$a0,3024
    la	$t9,__iglooSetEnable
    # Line 921
    lw	$a2,0($a2)
    ld	$s3,176($sp)
    # Line 924
    jalr	$t9
    sd	$a2,192($sp)
    # Line 925
    la	$t9,__iglooShadeModel
    jalr	$t9
    li	$a0,7424
    ld	$at,192($sp)
    bnez	$at,.L0f0d7654
.L0f0d7634:
    # Line 944
    la	$t9,getenv
.L0f0d7638:
    la	$a0,sub_0f020000
    jalr	$t9
    addiu	$a0,$a0,13296
    beqz	$v0,.L0f0d76bc
    ld	$ra,200($sp)
.L0f0d764c:
    # Line 983
    jr	$ra
    addiu	$sp,$sp,224
.L0f0d7654:
    ld	$a0,192($sp)
    # Line 928
    la	$t9,XGetWindowAttributes
    ld	$a1,184($sp)
    addiu	$a2,$sp,0
    jalr	$t9
    lw	$a1,24($a1)
    lw	$a2,68($sp)
    bnez	$a2,.L0f0d7638
    # Line 944
    la	$t9,getenv
    # Line 935
    addiu	$a3,$sp,96
    li	$a2,2050
    ld	$a0,192($sp)
    # Line 934
    sw	$zero,100($sp)
    # Line 935
    la	$t9,XChangeWindowAttributes
    ld	$a1,184($sp)
    # Line 933
    sw	$zero,136($sp)
    # Line 935
    jalr	$t9
    lw	$a1,24($a1)
    # Line 939
    ld	$a0,192($sp)
    la	$t9,XFlush
    # Line 938
    ld	$a3,184($sp)
    li	$a2,1
    # Line 939
    jalr	$t9
    # Line 938
    sw	$a2,40($a3)
    b	.L0f0d7638
    # Line 944
    la	$t9,getenv
.L0f0d76bc:
    # Line 953
    la	$t9,__iglooGetNewInterface
    # Line 951
    sw	$zero,164($sp)
    # Line 950
    li	$a4,1
    # Line 953
    jalr	$t9
    # Line 950
    sw	$a4,160($sp)
    # Line 953
    move	$t9,$v0
    sd	$v0,168($sp)
    # Line 959
    addiu	$a1,$sp,160
    jalr	$v0
    li	$a0,0x81a2
    # Line 967
    ld	$t9,168($sp)
    addiu	$a1,$sp,160
    jalr	$t9
    li	$a0,0x81a3
    # Line 980
    ld	$t9,168($sp)
    addiu	$a1,$sp,164
    jalr	$t9
    li	$a0,0x81a1
    b	.L0f0d764c
    ld	$ra,200($sp)
.end __iglooFirstTimeContextInfoInit

# Function: __iglooSaveDepthBufferScaleFactor
# Declared: Line 987 (Source lines: 988-1057)
# Address: 0x0f0d770c - 0x0f0d783c (Size: 304 bytes, Frame: 48)
.globl __iglooSaveDepthBufferScaleFactor
.ent __iglooSaveDepthBufferScaleFactor
__iglooSaveDepthBufferScaleFactor:
    # Line 988
    addiu	$sp,$sp,-48
    sd	$s7,8($sp)
    sd	$gp,0($sp)
    # lui	at,0xfff6 (gp disp hi)
    # addiu	at,at,-17604 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 993
    la	$t9,__GLgetgconfig
    # Line 988
    move	$s7,$a0
    sd	$ra,16($sp)
    # Line 993
    jalr	$t9
    li	$a0,5
    # Line 994
    la	$t9,__GLgetgconfig
    li	$a0,6
    jalr	$t9
    # Line 993
    sw	$v0,2832($s7)
    # Line 995
    la	$t9,__GLgetgconfig
    li	$a0,7
    jalr	$t9
    # Line 994
    sw	$v0,2848($s7)
    # Line 997
    mtc1	$v0,$f5
    # Line 996
    lw	$v1,2848($s7)
    # Line 998
    lwc1	$f6,_lit_3f800000
    # Line 997
    cvt.d.w	$f5,$f5
    # Line 996
    mtc1	$v1,$f4
    ldc1	$f0,2872($s7)
    # Line 995
    sw	$v0,2852($s7)
    # Line 996
    cvt.d.w	$f4,$f4
    # Line 997
    mul.d	$f1,$f0,$f5
    # Line 1057
    ld	$ra,16($sp)
    # Line 1020
    dmtc1	$zero,$f7
    # Line 1012
    li	$at,1
    # Line 996
    mul.d	$f0,$f0,$f4
    # Line 998
    lw	$a0,2832($s7)
    # Line 1003
    li	$a2,32
    # Line 996
    ldc1	$f2,2880($s7)
    # Line 1003
    subu	$a2,$a2,$a0
    # Line 1012
    sllv	$at,$at,$a2
    # Line 997
    add.d	$f1,$f1,$f2
    # Line 1012
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    # Line 996
    add.d	$f0,$f0,$f2
    # Line 1040
    ldc1	$f2,_lit8_3ff0000000000000
    # Line 997
    sdc1	$f1,2864($s7)
    # Line 998
    beqz	$a0,.L0f0d7820
    # Line 996
    sdc1	$f0,2856($s7)
    # Line 1003
    beqz	$a2,.L0f0d7830
    sw	$a2,2888($s7)
    # Line 1012
    dmtc1	$at,$f1
    nop
    cvt.s.l	$f1,$f1
    # Line 1013
    div.s	$f0,$f6,$f1
    # Line 1012
    swc1	$f1,2892($s7)
    # Line 1013
    swc1	$f0,2896($s7)
.L0f0d77e0:
    # Line 1020
    sub.d	$f6,$f5,$f4
    c.eq.d	$f6,$f7
    nop
    bc1tl	.L0f0d780c
    # Line 1046
    sdc1	$f7,2880($s7)
    # Line 1040
    div.d	$f2,$f2,$f6
    # Line 1041
    neg.d	$f3,$f4
    div.d	$f3,$f3,$f6
    # Line 1040
    sdc1	$f2,2872($s7)
    # Line 1041
    b	.L0f0d7810
    sdc1	$f3,2880($s7)
.L0f0d780c:
    # Line 1045
    sdc1	$f7,2872($s7)
.L0f0d7810:
    ld	$gp,0($sp)
    # Line 1057
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0d7820:
    # Line 1020
    swc1	$f6,2896($s7)
    # Line 1019
    swc1	$f6,2892($s7)
    b	.L0f0d77e0
    # Line 1018
    sw	$zero,2888($s7)
.L0f0d7830:
    # Line 1008
    swc1	$f6,2896($s7)
    b	.L0f0d77e0
    # Line 1007
    swc1	$f6,2892($s7)
.end __iglooSaveDepthBufferScaleFactor

# Function: __iglooGetId
# Declared: Line 1059 (Source lines: 1060-1067)
# Address: 0x0f0d783c - 0x0f0d7858 (Size: 28 bytes, Frame: 0)
.globl __iglooGetId
.ent __iglooGetId
__iglooGetId:
    # Line 1060
    lui	$v1,0xfff6
    addiu	$v1,$v1,-17908
    addu	$at,$t9,$v1
    # Line 1063
    lw	$v0,-20788($at)
    addiu	$v0,$v0,1
    # Line 1067
    jr	$ra
    # Line 1063
    sw	$v0,-20788($at)
.end __iglooGetId

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit_3f800000:
    .word 0x3f800000

