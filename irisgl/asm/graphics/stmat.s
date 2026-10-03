# Source: ../igloo/graphics/stmat.c
# Category: graphics
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/graphics/stmat.c -o stmat.T
# Total Functions: 22

.text

# Function: __iglooMatrixIdentify
# Declared: Line 9 (Source lines: 10-32)
# Address: 0x0f117e64 - 0x0f117ee0 (Size: 124 bytes, Frame: 32)
.ent __iglooMatrixIdentify
__iglooMatrixIdentify:
    # Line 30
    li	$at,1
    # Line 10
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 30
    sw	$at,64($a0)
    sd	$ra,0($sp)
    # Line 13
    lwc1	$f0,_lit_3f800000
    # Line 14
    mtc1	$zero,$f1
    # Line 31
    la	$t9,__iglooGetId
    # Line 28
    swc1	$f0,60($a0)
    # Line 27
    swc1	$f1,56($a0)
    # Line 26
    swc1	$f1,52($a0)
    # Line 25
    swc1	$f1,48($a0)
    # Line 24
    swc1	$f1,44($a0)
    # Line 23
    swc1	$f0,40($a0)
    # Line 22
    swc1	$f1,36($a0)
    # Line 21
    swc1	$f1,32($a0)
    # Line 20
    swc1	$f1,28($a0)
    # Line 19
    swc1	$f1,24($a0)
    # Line 18
    swc1	$f0,20($a0)
    # Line 17
    swc1	$f1,16($a0)
    # Line 16
    swc1	$f1,12($a0)
    # Line 15
    swc1	$f1,8($a0)
    # Line 14
    swc1	$f1,4($a0)
    # Line 31
    jalr	$t9
    # Line 13
    swc1	$f0,0($a0)
    # Line 32
    ld	$ra,0($sp)
    # Line 31
    sw	$v0,68($s8)
    # Line 32
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __iglooMatrixIdentify

# Function: __iglooMatrixMode
# Declared: Line 258 (Source lines: 259-310)
# Address: 0x0f117ee0 - 0x0f117f84 (Size: 164 bytes, Frame: 48)
.globl __iglooMatrixMode
.ent __iglooMatrixMode
__iglooMatrixMode:
    # Line 259
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # Line 260
    lw	$a2,4100($zero)
    # Line 259
    lui	$at,0xfff2
    addiu	$at,$at,-19608
    # Line 260
    beqz	$a2,.L0f117f4c
    # Line 259
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 260
    lw	$v0,148($a2)
    beq	$v0,$a0,.L0f117f4c
    # Line 277
    li	$at,5890
    li	$v1,5888
    beq	$a0,$v1,.L0f117f58
    li	$a1,5889
    beq	$a0,$a1,.L0f117f30
    # Line 283
    addiu	$a3,$a2,172
    # Line 277
    beq	$a0,$at,.L0f117f64
    # Line 289
    li	$a1,1
    # Line 277
    li	$v0,6144
    beq	$a0,$v0,.L0f117f70
    # Line 296
    move	$a3,$zero
.L0f117f30:
    # Line 298
    beqz	$a3,.L0f117f4c
    # Line 305
    la	$t9,glMatrixMode
    # Line 303
    sw	$a0,148($a2)
    sd	$ra,16($sp)
    # Line 305
    jalr	$t9
    # Line 302
    sw	$a3,156($a2)
    ld	$ra,16($sp)
.L0f117f4c:
    ld	$gp,8($sp)
    # Line 310
    jr	$ra
    addiu	$sp,$sp,48
.L0f117f58:
    # Line 280
    addiu	$a3,$a2,160
    # Line 281
    b	.L0f117f30
    nop
.L0f117f64:
    # Line 286
    addiu	$a3,$a2,184
    # Line 287
    b	.L0f117f30
    nop
.L0f117f70:
    # Line 289
    lbu	$v1,152($a2)
    bne	$v1,$a1,.L0f117f30
    # Line 291
    lw	$a3,0($sp)
    b	.L0f117f30
    addiu	$a3,$a2,196
.end __iglooMatrixMode

# Function: __iglooGetMatrixMode
# Declared: Line 312 (Source lines: 314-325)
# Address: 0x0f117f84 - 0x0f117f9c (Size: 24 bytes, Frame: 0)
.globl __iglooGetMatrixMode
.ent __iglooGetMatrixMode
__iglooGetMatrixMode:
    # Line 314
    lw	$a2,4100($zero)
    # Line 315
    beqz	$a2,.L0f117f94
    move	$v0,$zero
    # Line 323
    lw	$v0,148($a2)
.L0f117f94:
    # Line 325
    jr	$ra
    nop
.end __iglooGetMatrixMode

# Function: initializeIglooMatrix
# Declared: Line 328 (Source lines: 330-348)
# Address: 0x0f117f9c - 0x0f117ffc (Size: 96 bytes, Frame: 48)
.ent initializeIglooMatrix
initializeIglooMatrix:
    # Line 330
    addiu	$sp,$sp,-48
    sd	$s7,16($sp)
    # Line 333
    la	$t9,glGetIntegerv
    # Line 330
    move	$s7,$a1
    sd	$ra,8($sp)
    # Line 333
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 342
    lw	$a1,0($sp)
    # Line 343
    sw	$zero,8($s7)
    # Line 344
    la	$t9,__iglooMalloc
    # Line 342
    sw	$a1,4($s7)
    # Line 344
    sll	$a0,$a1,0x3
    addu	$a0,$a0,$a1
    jalr	$t9
    sll	$a0,$a0,0x3
    # Line 347
    la	$t9,sub_0f110000
    # Line 344
    move	$a0,$v0
    # Line 347
    addiu	$t9,$t9,32356
    bal gl_n_stencil
    # Line 344
    sw	$v0,0($s7)
    ld	$ra,8($sp)
    # Line 348
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end initializeIglooMatrix

# Function: unInitializeIglooMatrix
# Declared: Line 350 (Source lines: 351-359)
# Address: 0x0f117ffc - 0x0f118024 (Size: 40 bytes, Frame: 32)
.ent unInitializeIglooMatrix
unInitializeIglooMatrix:
    # Line 351
    lw	$a2,0($a0)
    beqz	$a2,.L0f11801c
    addiu	$sp,$sp,-32
    # Line 357
    la	$t9,__iglooFree
    sd	$ra,0($sp)
    jalr	$t9
    move	$a0,$a2
    ld	$ra,0($sp)
.L0f11801c:
    # Line 359
    jr	$ra
    addiu	$sp,$sp,32
.end unInitializeIglooMatrix

# Function: __iglooInitializeMatrices
# Declared: Line 361 (Source lines: 362-385)
# Address: 0x0f118024 - 0x0f1180e4 (Size: 192 bytes, Frame: 192)
.globl __iglooInitializeMatrices
.ent __iglooInitializeMatrices
__iglooInitializeMatrices:
    # Line 366
    li	$at,5888
    # Line 362
    addiu	$sp,$sp,-64
    sd	$s1,32($sp)
    sd	$s0,8($sp)
    move	$s0,$a0
    # Line 371
    li	$a0,21
    sd	$ra,0($sp)
    sd	$s7,16($sp)
    sd	$gp,24($sp)
    # Line 362
    # lui	v0,0xfff2 (gp disp hi)
    # addiu	v0,v0,-19932 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 371
    la	$t9,__iglooIsExtensionSupported
    # Line 366
    sw	$at,0($s0)
    # Line 370
    addiu	$s7,$s0,12
    # Line 371
    jalr	$t9
    # Line 370
    sw	$s7,8($s0)
    # Line 374
    li	$a0,3382
    # Line 371
    la	$s1,sub_0f110000
    sb	$v0,4($s0)
    # Line 374
    move	$a1,$s7
    # Line 371
    addiu	$s1,$s1,32668
    # Line 374
    bal __iglooGetMatrixMode
    move	$t9,$s1
    # Line 375
    addiu	$a1,$s0,24
    li	$a0,3384
    move	$t9,$s1
    bal __iglooGetMatrixMode
    ld	$s7,16($sp)
    # Line 376
    addiu	$a1,$s0,36
    li	$a0,3385
    bal __iglooGetMatrixMode
    move	$t9,$s1
    lbu	$at,4($s0)
    li	$v0,1
    beq	$at,$v0,.L0f1180cc
    ld	$ra,0($sp)
.L0f1180b8:
    ld	$gp,24($sp)
    # Line 385
    ld	$s0,8($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f1180cc:
    # Line 380
    addiu	$a1,$s0,48
    li	$a0,0x80b3
    bal __iglooGetMatrixMode
    move	$t9,$s1
    b	.L0f1180b8
    ld	$ra,0($sp)
.end __iglooInitializeMatrices

# Function: __iglooUnInitializeMatrices
# Declared: Line 387 (Source lines: 388-399)
# Address: 0x0f1180e4 - 0x0f11816c (Size: 136 bytes, Frame: 48)
.globl __iglooUnInitializeMatrices
.ent __iglooUnInitializeMatrices
__iglooUnInitializeMatrices:
    # Line 388
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$s1,16($sp)
    sd	$gp,24($sp)
    lui	$t8,0xfff2
    addiu	$t8,$t8,-20124
    addu	$gp,$t9,$t8
    la	$s1,sub_0f110000
    # Line 391
    addiu	$a0,$a0,12
    sd	$ra,0($sp)
    # Line 388
    addiu	$s1,$s1,32764
    # Line 391
    bal __iglooGetMatrixMode
    move	$t9,$s1
    # Line 392
    addiu	$a0,$s0,24
    bal __iglooGetMatrixMode
    move	$t9,$s1
    # Line 393
    addiu	$a0,$s0,36
    bal __iglooGetMatrixMode
    move	$t9,$s1
    lbu	$at,4($s0)
    li	$v0,1
    beq	$at,$v0,.L0f118158
    ld	$ra,0($sp)
.L0f118144:
    ld	$gp,24($sp)
    # Line 399
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f118158:
    # Line 397
    addiu	$a0,$s0,48
    bal __iglooGetMatrixMode
    move	$t9,$s1
    b	.L0f118144
    ld	$ra,0($sp)
.end __iglooUnInitializeMatrices

# Function: __iglooCloneMatrices
# Declared: Line 401 (Source lines: 402-406)
# Address: 0x0f11816c - 0x0f1181a0 (Size: 52 bytes, Frame: 32)
.globl __iglooCloneMatrices
.ent __iglooCloneMatrices
__iglooCloneMatrices:
    # Line 402
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,-20260 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 405
    la	$t9,__iglooMatrixMode
    sd	$ra,0($sp)
    bal __iglooMatrixMode
    lw	$a0,0($a0)
    # Line 406
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __iglooCloneMatrices

# Function: __iglooLoadIdentity
# Declared: Line 420 (Source lines: 421-444)
# Address: 0x0f1181a0 - 0x0f118218 (Size: 120 bytes, Frame: 16)
.globl __iglooLoadIdentity
.ent __iglooLoadIdentity
__iglooLoadIdentity:
    # Line 428
    lw	$a0,4100($zero)
    lw	$a0,156($a0)
    # Line 421
    addiu	$sp,$sp,-16
    # Line 429
    lw	$at,8($a0)
    sd	$gp,0($sp)
    lw	$a0,0($a0)
    sll	$a1,$at,0x3
    addu	$a1,$a1,$at
    sll	$a1,$a1,0x3
    addu	$a0,$a0,$a1
    # Line 431
    lw	$at,68($a0)
    # Line 421
    lui	$v0,0xfff2
    addiu	$v0,$v0,-20312
    # Line 431
    beqz	$at,.L0f1181e8
    # Line 421
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 431
    lw	$a1,64($a0)
    li	$at,1
    beq	$a1,$at,.L0f11820c
.L0f1181e8:
    # Line 433
    la	$t9,sub_0f110000
    sd	$ra,8($sp)
    addiu	$t9,$t9,32356
    bal gl_n_stencil
    nop
    # Line 434
    la	$t9,glLoadIdentity
    jalr	$t9
    nop
    ld	$ra,8($sp)
.L0f11820c:
    ld	$gp,0($sp)
    # Line 444
    jr	$ra
    addiu	$sp,$sp,16
.end __iglooLoadIdentity

# Function: __iglooLoadMatrix
# Declared: Line 446 (Source lines: 447-464)
# Address: 0x0f118218 - 0x0f1182a4 (Size: 140 bytes, Frame: 48)
.globl __iglooLoadMatrix
.ent __iglooLoadMatrix
__iglooLoadMatrix:
    # Line 447
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$gp,24($sp)
    sd	$s8,16($sp)
    # Line 454
    lw	$s8,4100($zero)
    sd	$ra,8($sp)
    # Line 447
    lui	$ra,0xfff2
    # Line 454
    lw	$s8,156($s8)
    # Line 447
    addiu	$ra,$ra,-20432
    addu	$gp,$t9,$ra
    # Line 455
    lw	$at,8($s8)
    # Line 457
    la	$t9,__iglooGetId
    # Line 455
    lw	$s8,0($s8)
    sll	$ra,$at,0x3
    addu	$ra,$ra,$at
    sll	$ra,$ra,0x3
    addu	$s8,$s8,$ra
    # Line 457
    jalr	$t9
    # Line 456
    sw	$zero,64($s8)
    # Line 459
    li	$a2,64
    la	$t9,memcpy
    move	$a1,$s0
    move	$a0,$s8
    jalr	$t9
    # Line 457
    sw	$v0,68($s8)
    # Line 461
    la	$t9,glLoadMatrixf
    move	$a0,$s0
    jalr	$t9
    ld	$s8,16($sp)
    # Line 464
    ld	$ra,8($sp)
    ld	$gp,24($sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __iglooLoadMatrix

# Function: __iglooLoadIglooMatrix
# Declared: Line 467 (Source lines: 468-485)
# Address: 0x0f1182a4 - 0x0f118320 (Size: 124 bytes, Frame: 32)
.globl __iglooLoadIglooMatrix
.ent __iglooLoadIglooMatrix
__iglooLoadIglooMatrix:
    # Line 480
    li	$a2,18
    move	$a3,$zero
    # Line 475
    lw	$a5,4100($zero)
    # Line 468
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 475
    lw	$a5,156($a5)
    # Line 468
    lui	$v0,0xfff2
    addiu	$v0,$v0,-20572
    # Line 476
    lw	$at,8($a5)
    # Line 468
    # addu	gp,t9,v0 (gp setup)
    # Line 476
    lw	$a5,0($a5)
    sll	$t9,$at,0x3
    addu	$t9,$t9,$at
    sll	$t9,$t9,0x3
    addu	$a5,$a5,$t9
    # Line 480
    move	$a4,$a5
.L0f1182e4:
    addu	$v0,$a3,$a4
    addu	$at,$a3,$a0
    addiu	$a3,$a3,4
    lw	$at,0($at)
    addiu	$a2,$a2,-1
    bgtz	$a2,.L0f1182e4
    sw	$at,0($v0)
    # Line 482
    la	$t9,glLoadMatrixf
    sd	$ra,8($sp)
    jalr	$t9
    move	$a0,$a5
    # Line 485
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __iglooLoadIglooMatrix

# Function: __iglooPushMatrix
# Declared: Line 487 (Source lines: 488-514)
# Address: 0x0f118320 - 0x0f1183b0 (Size: 144 bytes, Frame: 16)
.globl __iglooPushMatrix
.ent __iglooPushMatrix
__iglooPushMatrix:
    # Line 504
    move	$a2,$zero
    # Line 488
    addiu	$sp,$sp,-16
    # Line 496
    lw	$a7,4100($zero)
    sd	$gp,0($sp)
    # Line 488
    lui	$v1,0xfff2
    # Line 496
    lw	$a7,156($a7)
    # Line 488
    addiu	$v1,$v1,-20696
    # addu	gp,t9,v1 (gp setup)
    # Line 497
    lw	$v0,8($a7)
    # Line 498
    lw	$at,4($a7)
    lw	$a5,0($a7)
    addiu	$a6,$v0,1
    sltu	$at,$a6,$at
    sll	$t9,$v0,0x3
    addu	$t9,$t9,$v0
    sll	$t9,$t9,0x3
    beqz	$at,.L0f1183a4
    addu	$a5,$a5,$t9
    # Line 504
    li	$a1,18
    move	$a4,$a5
    addiu	$a3,$a5,72
.L0f118374:
    addu	$v0,$a2,$a3
    addu	$at,$a2,$a4
    addiu	$a2,$a2,4
    lw	$at,0($at)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0f118374
    sw	$at,0($v0)
    # Line 507
    la	$t9,glPushMatrix
    sd	$ra,8($sp)
    jalr	$t9
    # Line 505
    sw	$a6,8($a7)
    ld	$ra,8($sp)
.L0f1183a4:
    ld	$gp,0($sp)
    # Line 514
    jr	$ra
    addiu	$sp,$sp,16
.end __iglooPushMatrix

# Function: __iglooPopMatrix
# Declared: Line 516 (Source lines: 517-539)
# Address: 0x0f1183b0 - 0x0f1183fc (Size: 76 bytes, Frame: 16)
.globl __iglooPopMatrix
.ent __iglooPopMatrix
__iglooPopMatrix:
    # Line 524
    lw	$a2,4100($zero)
    lw	$a2,156($a2)
    # Line 517
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # Line 525
    lw	$a1,8($a2)
    # Line 517
    lui	$at,0xfff2
    addiu	$at,$at,-20840
    # Line 525
    bnez	$a1,.L0f1183e0
    # Line 517
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
.L0f1183d4:
    ld	$gp,0($sp)
    # Line 539
    jr	$ra
    addiu	$sp,$sp,16
.L0f1183e0:
    # Line 532
    la	$t9,glPopMatrix
    sd	$ra,8($sp)
    # Line 530
    addiu	$a3,$a1,-1
    # Line 532
    jalr	$t9
    # Line 530
    sw	$a3,8($a2)
    b	.L0f1183d4
    ld	$ra,8($sp)
.end __iglooPopMatrix

# Function: invalidateMatrix
# Declared: Line 541 (Source lines: 549-554)
# Address: 0x0f1183fc - 0x0f118424 (Size: 40 bytes, Frame: 0)
.ent invalidateMatrix
invalidateMatrix:
    # Line 549
    lw	$at,4100($zero)
    lw	$at,156($at)
    # Line 551
    lw	$v1,8($at)
    lw	$at,0($at)
    sll	$v0,$v1,0x3
    addu	$v0,$v0,$v1
    sll	$v0,$v0,0x3
    addu	$at,$at,$v0
    # Line 554
    jr	$ra
    # Line 551
    sw	$zero,68($at)
.end invalidateMatrix

# Function: __iglooMultMatrix
# Declared: Line 556 (Source lines: 557-560)
# Address: 0x0f118424 - 0x0f118470 (Size: 76 bytes, Frame: 48)
.globl __iglooMultMatrix
.ent __iglooMultMatrix
__iglooMultMatrix:
    # Line 557
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    lui	$s8,0xfff2
    addiu	$s8,$s8,-20956
    addu	$gp,$t9,$s8
    # Line 558
    la	$t9,sub_0f120000
    sd	$ra,0($sp)
    addiu	$t9,$t9,-31748
    bal __iglooPopMatrix
    # Line 557
    move	$s8,$a0
    # Line 559
    la	$t9,glMultMatrixf
    jalr	$t9
    move	$a0,$s8
    # Line 560
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __iglooMultMatrix

# Function: __iglooRotate
# Declared: Line 562 (Source lines: 563-567)
# Address: 0x0f118470 - 0x0f1184d4 (Size: 100 bytes, Frame: 208)
.globl __iglooRotate
.ent __iglooRotate
__iglooRotate:
    # Line 563
    addiu	$sp,$sp,-80
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sd	$gp,40($sp)
    sd	$ra,32($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,-21032
    addu	$gp,$t9,$ra
    # Line 564
    la	$t9,sub_0f120000
    sdc1	$f13,24($sp)
    sdc1	$f30,0($sp)
    addiu	$t9,$t9,-31748
    bal __iglooPopMatrix
    # Line 563
    mov.s	$f30,$f12
    # Line 566
    mov.s	$f12,$f30
    la	$t9,glRotatef
    ldc1	$f13,24($sp)
    ldc1	$f14,16($sp)
    jalr	$t9
    ldc1	$f15,8($sp)
    # Line 567
    ld	$ra,32($sp)
    ld	$gp,40($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __iglooRotate

# Function: __iglooTranslate
# Declared: Line 569 (Source lines: 570-573)
# Address: 0x0f1184d4 - 0x0f118530 (Size: 92 bytes, Frame: 208)
.globl __iglooTranslate
.ent __iglooTranslate
__iglooTranslate:
    # Line 570
    addiu	$sp,$sp,-80
    sdc1	$f14,8($sp)
    sd	$gp,32($sp)
    sd	$ra,24($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,-21132
    addu	$gp,$t9,$ra
    # Line 571
    la	$t9,sub_0f120000
    sdc1	$f13,16($sp)
    sdc1	$f30,0($sp)
    addiu	$t9,$t9,-31748
    bal __iglooPopMatrix
    # Line 570
    mov.s	$f30,$f12
    # Line 572
    la	$t9,glTranslatef
    mov.s	$f12,$f30
    ldc1	$f13,16($sp)
    jalr	$t9
    ldc1	$f14,8($sp)
    # Line 573
    ld	$ra,24($sp)
    ld	$gp,32($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __iglooTranslate

# Function: __iglooScale
# Declared: Line 575 (Source lines: 576-579)
# Address: 0x0f118530 - 0x0f11858c (Size: 92 bytes, Frame: 208)
.globl __iglooScale
.ent __iglooScale
__iglooScale:
    # Line 576
    addiu	$sp,$sp,-80
    sdc1	$f14,8($sp)
    sd	$gp,32($sp)
    sd	$ra,24($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,-21224
    addu	$gp,$t9,$ra
    # Line 577
    la	$t9,sub_0f120000
    sdc1	$f13,16($sp)
    sdc1	$f30,0($sp)
    addiu	$t9,$t9,-31748
    bal __iglooPopMatrix
    # Line 576
    mov.s	$f30,$f12
    # Line 578
    la	$t9,glScalef
    mov.s	$f12,$f30
    ldc1	$f13,16($sp)
    jalr	$t9
    ldc1	$f14,8($sp)
    # Line 579
    ld	$ra,24($sp)
    ld	$gp,32($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __iglooScale

# Function: getMatrixState
# Declared: Line 581 (Source lines: 583-607)
# Address: 0x0f11858c - 0x0f1185ec (Size: 96 bytes, Frame: 32)
.ent getMatrixState
getMatrixState:
    # Line 588
    li	$at,2982
    beq	$a1,$at,.L0f1185c8
    # Line 583
    addiu	$sp,$sp,-32
    # Line 588
    li	$v1,2983
    beq	$a1,$v1,.L0f1185d4
    li	$a2,2984
    beq	$a1,$a2,.L0f1185e0
    li	$a3,0x80b1
    beq	$a1,$a3,.L0f1185bc
    lw	$v0,0($sp)
.L0f1185b4:
    # Line 607
    jr	$ra
    addiu	$sp,$sp,32
.L0f1185bc:
    # Line 601
    addiu	$v0,$a0,196
    b	.L0f1185b4
    nop
.L0f1185c8:
    # Line 591
    addiu	$v0,$a0,160
    # Line 592
    b	.L0f1185b4
    nop
.L0f1185d4:
    # Line 594
    addiu	$v0,$a0,172
    # Line 595
    b	.L0f1185b4
    nop
.L0f1185e0:
    # Line 597
    addiu	$v0,$a0,184
    # Line 598
    b	.L0f1185b4
    nop
.end getMatrixState

# Function: __iglooGetRawIglooMatrix
# Declared: Line 615 (Source lines: 616-643)
# Address: 0x0f1185ec - 0x0f118640 (Size: 84 bytes, Frame: 32)
.globl __iglooGetRawIglooMatrix
.ent __iglooGetRawIglooMatrix
__iglooGetRawIglooMatrix:
    # Line 616
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff2
    addiu	$ra,$ra,-21412
    addu	$gp,$t9,$ra
    # Line 623
    la	$t9,sub_0f120000
    # Line 616
    move	$a1,$a0
    # Line 623
    addiu	$t9,$t9,-31348
    bal __iglooScale
    lw	$a0,4100($zero)
    ld	$gp,8($sp)
    # Line 643
    lw	$a0,8($v0)
    lw	$v0,0($v0)
    ld	$ra,0($sp)
    addiu	$sp,$sp,32
    sll	$v1,$a0,0x3
    addu	$v1,$v1,$a0
    sll	$v1,$v1,0x3
    jr	$ra
    addu	$v0,$v0,$v1
.end __iglooGetRawIglooMatrix

# Function: __iglooGetIglooMatrix
# Declared: Line 651 (Source lines: 652-665)
# Address: 0x0f118640 - 0x0f1186b8 (Size: 120 bytes, Frame: 48)
.globl __iglooGetIglooMatrix
.ent __iglooGetIglooMatrix
__iglooGetIglooMatrix:
    # Line 652
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,-21496 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 655
    la	$t9,__iglooGetRawIglooMatrix
    sd	$s0,24($sp)
    sd	$ra,0($sp)
    bal __iglooGetRawIglooMatrix
    sd	$a0,8($sp)
    lw	$v1,68($v0)
    move	$s0,$v0
    beqz	$v1,.L0f11868c
    ld	$ra,0($sp)
.L0f118678:
    ld	$gp,16($sp)
    # Line 665
    move	$v0,$s0
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f11868c:
    # Line 661
    la	$t9,glGetFloatv
    ld	$a0,8($sp)
    jalr	$t9
    move	$a1,$v0
    # Line 662
    la	$t9,__iglooGetId
    jalr	$t9
    nop
    # Line 663
    sw	$zero,64($s0)
    # Line 662
    sw	$v0,68($s0)
    b	.L0f118678
    ld	$ra,0($sp)
.end __iglooGetIglooMatrix

# Function: __iglooGetMatrix
# Declared: Line 668 (Source lines: 669-675)
# Address: 0x0f1186b8 - 0x0f118708 (Size: 80 bytes, Frame: 48)
.globl __iglooGetMatrix
.ent __iglooGetMatrix
__iglooGetMatrix:
    # Line 669
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	at,0xfff2 (gp disp hi)
    # addiu	at,at,-21616 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 672
    la	$t9,__iglooGetIglooMatrix
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    bal __iglooGetIglooMatrix
    # Line 669
    move	$s8,$a1
    # Line 674
    la	$t9,memcpy
    # Line 672
    move	$a1,$v0
    # Line 674
    move	$a0,$s8
    jalr	$t9
    li	$a2,64
    # Line 675
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __iglooGetMatrix

.rdata
_lit_3f800000:
    .word 0x3f800000

