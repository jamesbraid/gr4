# Source: ../soft/so_vertex.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_vertex.c
# Total Functions: 19

.text

# Function: __glClipCheckFrustum
# Declared: Line 27 (Source lines: 32-87)
# Address: 0x0dba3134 - 0x0dba3220 (Size: 236 bytes, Frame: 0)
.globl __glClipCheckFrustum
.ent __glClipCheckFrustum
__glClipCheckFrustum:
    # Line 32
    lwc1	$f4,124($a1)
    # Line 40
    move	$v0,$zero
    # Line 34
    lwc1	$f9,112($a1)
    # Line 40
    neg.s	$f7,$f4
    # Line 36
    lwc1	$f6,120($a1)
    # Line 40
    c.lt.s	$f9,$f7
    # Line 33
    lwc1	$f8,3284($a0)
    # Line 35
    lwc1	$f5,116($a1)
    # Line 40
    bc1f	.L0dba3160
    # Line 33
    div.s	$f8,$f8,$f4
    # Line 46
    li	$v0,1
.L0dba3160:
    c.lt.s	$f4,$f9
    nop
    bc1fl	.L0dba3178
    # Line 47
    c.lt.s	$f5,$f7
    ori	$v0,$v0,0x2
    c.lt.s	$f5,$f7
.L0dba3178:
    nop
    bc1fl	.L0dba318c
    # Line 48
    c.lt.s	$f4,$f5
    ori	$v0,$v0,0x4
    c.lt.s	$f4,$f5
.L0dba318c:
    nop
    bc1fl	.L0dba31a0
    # Line 49
    c.lt.s	$f6,$f7
    ori	$v0,$v0,0x8
    c.lt.s	$f6,$f7
.L0dba31a0:
    nop
    bc1fl	.L0dba31b4
    # Line 50
    c.lt.s	$f4,$f6
    ori	$v0,$v0,0x10
    c.lt.s	$f4,$f6
.L0dba31b4:
    nop
    bc1f	.L0dba31c4
    nop
    # Line 51
    ori	$v0,$v0,0x20
.L0dba31c4:
    # Line 53
    beqz	$v0,.L0dba31d4
    swc1	$f8,140($a1)
    # Line 87
    jr	$ra
    nop
.L0dba31d4:
    # Line 62
    lwc1	$f1,1640($a0)
    # Line 61
    lwc1	$f0,1632($a0)
    # Line 62
    mul.s	$f1,$f1,$f6
    # Line 63
    lwc1	$f3,1624($a0)
    # Line 61
    mul.s	$f0,$f0,$f5
    # Line 63
    mul.s	$f3,$f3,$f9
    # Line 62
    mul.s	$f1,$f1,$f8
    # Line 61
    mul.s	$f0,$f0,$f8
    # Line 62
    lwc1	$f2,1644($a0)
    # Line 63
    mul.s	$f3,$f3,$f8
    # Line 62
    add.s	$f2,$f2,$f1
    # Line 61
    lwc1	$f1,1636($a0)
    add.s	$f1,$f1,$f0
    # Line 63
    lwc1	$f0,1628($a0)
    add.s	$f0,$f0,$f3
    # Line 65
    swc1	$f2,136($a1)
    # Line 64
    swc1	$f1,132($a1)
    # Line 87
    jr	$ra
    # Line 63
    swc1	$f0,128($a1)
.end __glClipCheckFrustum

# Function: __glClipCheckFrustum2D
# Declared: Line 93 (Source lines: 98-131)
# Address: 0x0dba3220 - 0x0dba32d0 (Size: 176 bytes, Frame: 0)
.globl __glClipCheckFrustum2D
.ent __glClipCheckFrustum2D
__glClipCheckFrustum2D:
    # Line 98
    lwc1	$f4,124($a1)
    # Line 100
    lwc1	$f6,112($a1)
    # Line 105
    neg.s	$f7,$f4
    c.lt.s	$f6,$f7
    move	$v0,$zero
    bc1f	.L0dba3240
    # Line 101
    lwc1	$f5,116($a1)
    # Line 111
    li	$v0,1
.L0dba3240:
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0dba3258
    # Line 112
    c.lt.s	$f5,$f7
    ori	$v0,$v0,0x2
    c.lt.s	$f5,$f7
.L0dba3258:
    nop
    bc1fl	.L0dba326c
    # Line 113
    c.lt.s	$f4,$f5
    ori	$v0,$v0,0x4
    c.lt.s	$f4,$f5
.L0dba326c:
    nop
    bc1f	.L0dba327c
    nop
    # Line 114
    ori	$v0,$v0,0x8
.L0dba327c:
    # Line 116
    beqz	$v0,.L0dba328c
    swc1	$f4,140($a1)
    # Line 131
    jr	$ra
    nop
.L0dba328c:
    # Line 125
    lwc1	$f2,1640($a0)
    lwc1	$f1,120($a1)
    # Line 124
    lwc1	$f0,1632($a0)
    # Line 125
    mul.s	$f1,$f1,$f2
    # Line 124
    mul.s	$f0,$f0,$f5
    # Line 126
    lwc1	$f3,1624($a0)
    # Line 125
    lwc1	$f2,1644($a0)
    # Line 126
    mul.s	$f3,$f3,$f6
    # Line 125
    add.s	$f2,$f2,$f1
    # Line 124
    lwc1	$f1,1636($a0)
    add.s	$f1,$f1,$f0
    # Line 126
    lwc1	$f0,1628($a0)
    add.s	$f0,$f0,$f3
    # Line 128
    swc1	$f2,136($a1)
    # Line 127
    swc1	$f1,132($a1)
    # Line 131
    jr	$ra
    # Line 126
    swc1	$f0,128($a1)
.end __glClipCheckFrustum2D

# Function: __glClipCheckAll2
# Declared: Line 135 (Source lines: 136-139)
# Address: 0x0dba32d0 - 0x0dba3310 (Size: 64 bytes, Frame: 32)
.globl __glClipCheckAll2
.ent __glClipCheckAll2
__glClipCheckAll2:
    # Line 136
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x6
    addiu	$at,$at,-19512
    addu	$gp,$t9,$at
    # Line 137
    mtc1	$zero,$f1
    swc1	$f1,24($a1)
    # Line 139
    # lw $t9, -24312($gp) # &__glClipCheckAll
    # Line 138
    lwc1	$f0,3284($a0)
    sd	$ra,0($sp)
    # Line 139
    bal __glClipCheckAll
    # Line 138
    swc1	$f0,28($a1)
    # Line 139
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glClipCheckAll2

# Function: __glClipCheckAll3
# Declared: Line 142 (Source lines: 143-145)
# Address: 0x0dba3310 - 0x0dba3348 (Size: 56 bytes, Frame: 32)
.globl __glClipCheckAll3
.ent __glClipCheckAll3
__glClipCheckAll3:
    # Line 143
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x6
    addiu	$at,$at,-19576
    addu	$gp,$t9,$at
    # Line 145
    # lw $t9, -24312($gp) # &__glClipCheckAll
    # Line 144
    lwc1	$f0,3284($a0)
    sd	$ra,0($sp)
    # Line 145
    bal __glClipCheckAll
    # Line 144
    swc1	$f0,28($a1)
    # Line 145
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glClipCheckAll3

# Function: __glClipCheckAll
# Declared: Line 250 (Source lines: 251-343)
# Address: 0x0dba3348 - 0x0dba3504 (Size: 444 bytes, Frame: 48)
.globl __glClipCheckAll
.ent __glClipCheckAll
__glClipCheckAll:
    # Line 257
    li	$a2,16
    # Line 251
    addiu	$sp,$sp,-48
    sd	$s1,0($sp)
    move	$s1,$a1
    sd	$gp,24($sp)
    lui	$at,0x6
    addiu	$at,$at,-19632
    addu	$gp,$t9,$at
    # Line 257
    lw	$t9,8($a1)
    sd	$s5,16($sp)
    sd	$ra,8($sp)
    jalr	$t9
    # Line 251
    move	$s5,$a0
    # Line 271
    move	$v0,$zero
    ld	$ra,8($sp)
    # Line 266
    lwc1	$f9,3284($s5)
    # Line 268
    lwc1	$f11,116($s1)
    # Line 265
    lwc1	$f4,124($s1)
    # Line 269
    lwc1	$f10,120($s1)
    # Line 267
    lwc1	$f12,112($s1)
    # Line 271
    neg.s	$f7,$f4
    # Line 269
    mov.s	$f6,$f10
    # Line 271
    c.lt.s	$f12,$f7
    # Line 267
    mov.s	$f8,$f12
    # Line 268
    mov.s	$f5,$f11
    # Line 271
    bc1f	.L0dba33b8
    # Line 266
    div.s	$f9,$f9,$f4
    # Line 272
    li	$v0,1
.L0dba33b8:
    c.lt.s	$f4,$f8
    # Line 289
    li	$a4,64
    # Line 272
    bc1fl	.L0dba33d0
    # Line 273
    c.lt.s	$f5,$f7
    ori	$v0,$v0,0x2
    c.lt.s	$f5,$f7
.L0dba33d0:
    nop
    bc1fl	.L0dba33e4
    # Line 274
    c.lt.s	$f4,$f5
    ori	$v0,$v0,0x4
    c.lt.s	$f4,$f5
.L0dba33e4:
    nop
    bc1fl	.L0dba33f8
    # Line 275
    c.lt.s	$f6,$f7
    ori	$v0,$v0,0x8
    c.lt.s	$f6,$f7
.L0dba33f8:
    nop
    bc1fl	.L0dba340c
    # Line 276
    c.lt.s	$f4,$f6
    ori	$v0,$v0,0x10
    c.lt.s	$f4,$f6
.L0dba340c:
    nop
    bc1fl	.L0dba3420
    # Line 278
    swc1	$f9,140($s1)
    # Line 277
    ori	$v0,$v0,0x20
    # Line 278
    swc1	$f9,140($s1)
.L0dba3420:
    # Line 287
    lw	$a0,1708($s5)
    # Line 289
    mtc1	$zero,$f8
    beqz	$a0,.L0dba34a0
    # Line 288
    lw	$a1,1652($s5)
    # Line 289
    lwc1	$f7,108($s1)
    lwc1	$f6,104($s1)
    lwc1	$f4,100($s1)
    b	.L0dba3450
    lwc1	$f5,96($s1)
.L0dba3444:
    # Line 304
    addiu	$a1,$a1,16
.L0dba3448:
    beqz	$a0,.L0dba34a0
    # Line 303
    sll	$a4,$a4,0x1
.L0dba3450:
    # Line 289
    andi	$v1,$a0,0x1
    beqz	$v1,.L0dba3444
    # Line 302
    srl	$a0,$a0,0x1
    # Line 289
    lwc1	$f3,4($a1)
    lwc1	$f0,0($a1)
    mul.s	$f3,$f3,$f4
    lwc1	$f2,8($a1)
    mul.s	$f0,$f0,$f5
    mul.s	$f2,$f2,$f6
    lwc1	$f1,12($a1)
    mul.s	$f1,$f1,$f7
    add.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    c.lt.s	$f0,$f8
    nop
    bc1fl	.L0dba3448
    # Line 304
    addiu	$a1,$a1,16
    b	.L0dba3444
    # Line 299
    or	$v0,$v0,$a4
.L0dba34a0:
    # Line 304
    beqz	$v0,.L0dba34b8
.L0dba34a4:
    ld	$gp,24($sp)
    # Line 343
    ld	$s1,0($sp)
    ld	$s5,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dba34b8:
    # Line 317
    lwc1	$f2,1640($s5)
    # Line 316
    lwc1	$f1,1632($s5)
    # Line 317
    mul.s	$f2,$f2,$f10
    # Line 318
    lwc1	$f0,1624($s5)
    # Line 316
    mul.s	$f1,$f1,$f11
    # Line 318
    mul.s	$f0,$f0,$f12
    # Line 317
    mul.s	$f2,$f2,$f9
    # Line 316
    mul.s	$f1,$f1,$f9
    # Line 317
    lwc1	$f3,1644($s5)
    # Line 318
    mul.s	$f0,$f0,$f9
    # Line 317
    add.s	$f3,$f3,$f2
    # Line 316
    lwc1	$f2,1636($s5)
    add.s	$f2,$f2,$f1
    # Line 318
    lwc1	$f1,1628($s5)
    add.s	$f1,$f1,$f0
    # Line 320
    swc1	$f3,136($s1)
    # Line 319
    swc1	$f2,132($s1)
    b	.L0dba34a4
    # Line 318
    swc1	$f1,128($s1)
.end __glClipCheckAll

# Function: __glSaveN
# Declared: Line 357 (Source lines: 358-370)
# Address: 0x0dba3504 - 0x0dba354c (Size: 72 bytes, Frame: 32)
.globl __glSaveN
.ent __glSaveN
__glSaveN:
    # Line 358
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 366
    lwc1	$f0,184($a0)
    # Line 364
    lwc1	$f1,188($a0)
    # Line 365
    lwc1	$f2,192($a0)
    sd	$gp,8($sp)
    # Line 358
    lui	$at,0x6
    addiu	$at,$at,-20076
    addu	$gp,$t9,$at
    # Line 362
    lw	$t9,12020($a0)
    # Line 368
    swc1	$f2,40($a1)
    # Line 367
    swc1	$f1,36($a1)
    # Line 369
    jalr	$t9
    # Line 366
    swc1	$f0,32($a1)
    # Line 370
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glSaveN

# Function: __glSaveCI
# Declared: Line 373 (Source lines: 374-382)
# Address: 0x0dba354c - 0x0dba3584 (Size: 56 bytes, Frame: 32)
.globl __glSaveCI
.ent __glSaveCI
__glSaveCI:
    # Line 374
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x6
    addiu	$at,$at,-20148
    addu	$gp,$t9,$at
    # Line 378
    lw	$t9,12020($a0)
    # Line 380
    lwc1	$f0,424($a0)
    sd	$ra,0($sp)
    # Line 381
    jalr	$t9
    # Line 380
    swc1	$f0,144($a1)
    # Line 382
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glSaveCI

# Function: __glSaveC
# Declared: Line 384 (Source lines: 385-399)
# Address: 0x0dba3584 - 0x0dba35d4 (Size: 80 bytes, Frame: 32)
.globl __glSaveC
.ent __glSaveC
__glSaveC:
    # Line 385
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 394
    lwc1	$f0,168($a0)
    # Line 392
    lwc1	$f2,176($a0)
    # Line 391
    lwc1	$f1,172($a0)
    # Line 393
    lwc1	$f3,180($a0)
    sd	$gp,8($sp)
    # Line 385
    lui	$at,0x6
    addiu	$at,$at,-20204
    addu	$gp,$t9,$at
    # Line 389
    lw	$t9,12020($a0)
    # Line 397
    swc1	$f3,156($a1)
    # Line 396
    swc1	$f2,152($a1)
    # Line 395
    swc1	$f1,148($a1)
    # Line 398
    jalr	$t9
    # Line 394
    swc1	$f0,144($a1)
    # Line 399
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glSaveC

# Function: __glSaveT
# Declared: Line 401 (Source lines: 402-416)
# Address: 0x0dba35d4 - 0x0dba3624 (Size: 80 bytes, Frame: 32)
.globl __glSaveT
.ent __glSaveT
__glSaveT:
    # Line 402
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 411
    lwc1	$f0,200($a0)
    # Line 409
    lwc1	$f2,208($a0)
    # Line 408
    lwc1	$f1,204($a0)
    # Line 410
    lwc1	$f3,212($a0)
    sd	$gp,8($sp)
    # Line 402
    lui	$at,0x6
    addiu	$at,$at,-20284
    addu	$gp,$t9,$at
    # Line 406
    lw	$t9,12020($a0)
    # Line 414
    swc1	$f3,60($a1)
    # Line 413
    swc1	$f2,56($a1)
    # Line 412
    swc1	$f1,52($a1)
    # Line 415
    jalr	$t9
    # Line 411
    swc1	$f0,48($a1)
    # Line 416
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glSaveT

# Function: __glSaveCT
# Declared: Line 418 (Source lines: 419-442)
# Address: 0x0dba3624 - 0x0dba3694 (Size: 112 bytes, Frame: 32)
.globl __glSaveCT
.ent __glSaveCT
__glSaveCT:
    # Line 419
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x6
    addiu	$at,$at,-20364
    addu	$gp,$t9,$at
    # Line 424
    lw	$t9,12020($a0)
    # Line 427
    lwc1	$f5,176($a0)
    # Line 428
    lwc1	$f4,180($a0)
    # Line 429
    lwc1	$f7,168($a0)
    # Line 426
    lwc1	$f6,172($a0)
    # Line 432
    swc1	$f4,156($a1)
    # Line 431
    swc1	$f5,152($a1)
    # Line 430
    swc1	$f6,148($a1)
    # Line 429
    swc1	$f7,144($a1)
    sd	$ra,0($sp)
    # Line 437
    lwc1	$f0,200($a0)
    # Line 436
    lwc1	$f3,212($a0)
    # Line 435
    lwc1	$f2,208($a0)
    # Line 434
    lwc1	$f1,204($a0)
    # Line 440
    swc1	$f3,60($a1)
    # Line 439
    swc1	$f2,56($a1)
    # Line 438
    swc1	$f1,52($a1)
    # Line 441
    jalr	$t9
    # Line 437
    swc1	$f0,48($a1)
    # Line 442
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glSaveCT

# Function: __glSaveNT
# Declared: Line 444 (Source lines: 445-465)
# Address: 0x0dba3694 - 0x0dba36fc (Size: 104 bytes, Frame: 32)
.globl __glSaveNT
.ent __glSaveNT
__glSaveNT:
    # Line 445
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x6
    addiu	$at,$at,-20476
    addu	$gp,$t9,$at
    # Line 449
    lw	$t9,12020($a0)
    # Line 452
    lwc1	$f4,192($a0)
    # Line 451
    lwc1	$f5,188($a0)
    # Line 453
    lwc1	$f6,184($a0)
    # Line 455
    swc1	$f4,40($a1)
    # Line 454
    swc1	$f5,36($a1)
    # Line 453
    swc1	$f6,32($a1)
    sd	$ra,0($sp)
    # Line 460
    lwc1	$f0,200($a0)
    # Line 459
    lwc1	$f3,212($a0)
    # Line 458
    lwc1	$f2,208($a0)
    # Line 457
    lwc1	$f1,204($a0)
    # Line 463
    swc1	$f3,60($a1)
    # Line 462
    swc1	$f2,56($a1)
    # Line 461
    swc1	$f1,52($a1)
    # Line 464
    jalr	$t9
    # Line 460
    swc1	$f0,48($a1)
    # Line 465
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glSaveNT

# Function: __glSaveCIAll
# Declared: Line 467 (Source lines: 468-491)
# Address: 0x0dba36fc - 0x0dba376c (Size: 112 bytes, Frame: 32)
.globl __glSaveCIAll
.ent __glSaveCIAll
__glSaveCIAll:
    # Line 468
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x6
    addiu	$at,$at,-20580
    addu	$gp,$t9,$at
    # Line 474
    lw	$t9,12020($a0)
    # Line 476
    lwc1	$f5,188($a0)
    # Line 477
    lwc1	$f4,192($a0)
    # Line 478
    lwc1	$f7,424($a0)
    # Line 475
    lwc1	$f6,184($a0)
    # Line 481
    swc1	$f4,40($a1)
    # Line 480
    swc1	$f5,36($a1)
    # Line 479
    swc1	$f6,32($a1)
    # Line 478
    swc1	$f7,144($a1)
    sd	$ra,0($sp)
    # Line 486
    lwc1	$f0,200($a0)
    # Line 485
    lwc1	$f3,212($a0)
    # Line 484
    lwc1	$f2,208($a0)
    # Line 483
    lwc1	$f1,204($a0)
    # Line 489
    swc1	$f3,60($a1)
    # Line 488
    swc1	$f2,56($a1)
    # Line 487
    swc1	$f1,52($a1)
    # Line 490
    jalr	$t9
    # Line 486
    swc1	$f0,48($a1)
    # Line 491
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glSaveCIAll

# Function: __glSaveCAll
# Declared: Line 493 (Source lines: 494-523)
# Address: 0x0dba376c - 0x0dba37f4 (Size: 136 bytes, Frame: 32)
.globl __glSaveCAll
.ent __glSaveCAll
__glSaveCAll:
    # Line 494
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x6
    addiu	$at,$at,-20692
    addu	$gp,$t9,$at
    # Line 499
    lw	$t9,12020($a0)
    # Line 506
    lwc1	$f7,180($a0)
    # Line 505
    lwc1	$f8,176($a0)
    # Line 507
    lwc1	$f10,168($a0)
    # Line 504
    lwc1	$f9,172($a0)
    # Line 502
    lwc1	$f4,192($a0)
    # Line 501
    lwc1	$f5,188($a0)
    # Line 500
    lwc1	$f6,184($a0)
    # Line 513
    swc1	$f4,40($a1)
    # Line 512
    swc1	$f5,36($a1)
    # Line 511
    swc1	$f6,32($a1)
    # Line 510
    swc1	$f7,156($a1)
    # Line 509
    swc1	$f8,152($a1)
    # Line 508
    swc1	$f9,148($a1)
    # Line 507
    swc1	$f10,144($a1)
    sd	$ra,0($sp)
    # Line 518
    lwc1	$f0,200($a0)
    # Line 517
    lwc1	$f3,212($a0)
    # Line 516
    lwc1	$f2,208($a0)
    # Line 515
    lwc1	$f1,204($a0)
    # Line 521
    swc1	$f3,60($a1)
    # Line 520
    swc1	$f2,56($a1)
    # Line 519
    swc1	$f1,52($a1)
    # Line 522
    jalr	$t9
    # Line 518
    swc1	$f0,48($a1)
    # Line 523
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glSaveCAll

# Function: __glSaveCN
# Declared: Line 528 (Source lines: 529-557)
# Address: 0x0dba37f4 - 0x0dba3880 (Size: 140 bytes, Frame: 32)
.globl __glSaveCN
.ent __glSaveCN
__glSaveCN:
    # Line 529
    li	$v0,3
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,31548($a0)
    lui	$v1,0x6
    addiu	$v1,$v1,-20828
    beq	$at,$v0,.L0dba3834
    addu	$gp,$t9,$v1
    # Line 555
    # lw $t9, -24308($gp) # &__glSaveN
    bal __glSaveN
    nop
    ld	$ra,8($sp)
.L0dba3828:
    ld	$gp,0($sp)
    # Line 557
    jr	$ra
    addiu	$sp,$sp,32
.L0dba3834:
    # Line 535
    lw	$a2,0($a1)
    ori	$a2,$a2,0xb
    sw	$a2,0($a1)
    # Line 542
    lwc1	$f1,172($a0)
    # Line 543
    lwc1	$f2,176($a0)
    # Line 544
    lwc1	$f3,180($a0)
    # Line 541
    lwc1	$f0,168($a0)
    # Line 540
    lw	$t9,12020($a0)
    # Line 552
    swc1	$f3,172($a1)
    # Line 551
    swc1	$f2,168($a1)
    # Line 550
    swc1	$f1,164($a1)
    # Line 549
    swc1	$f0,160($a1)
    # Line 548
    swc1	$f3,156($a1)
    # Line 547
    swc1	$f2,152($a1)
    # Line 546
    swc1	$f1,148($a1)
    # Line 553
    jal	__glSaveN
    # Line 545
    swc1	$f0,144($a1)
    b	.L0dba3828
    ld	$ra,8($sp)
.end __glSaveCN

# Function: __glSaveCNT
# Declared: Line 559 (Source lines: 560-602)
# Address: 0x0dba3880 - 0x0dba3944 (Size: 196 bytes, Frame: 32)
.globl __glSaveCNT
.ent __glSaveCNT
__glSaveCNT:
    # Line 560
    li	$v0,3
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,31548($a0)
    lui	$v1,0x6
    addiu	$v1,$v1,-20968
    beq	$at,$v0,.L0dba38c0
    addu	$gp,$t9,$v1
    # Line 600
    # lw $t9, -24288($gp) # &__glSaveNT
    bal __glSaveNT
    nop
    ld	$ra,8($sp)
.L0dba38b4:
    ld	$gp,0($sp)
    # Line 602
    jr	$ra
    addiu	$sp,$sp,32
.L0dba38c0:
    # Line 567
    lw	$a2,0($a1)
    ori	$a2,$a2,0x3
    sw	$a2,0($a1)
    # Line 571
    lw	$t9,12020($a0)
    # Line 578
    lwc1	$f7,180($a0)
    # Line 577
    lwc1	$f8,176($a0)
    # Line 576
    lwc1	$f9,172($a0)
    # Line 575
    lwc1	$f10,168($a0)
    # Line 574
    lwc1	$f4,192($a0)
    # Line 573
    lwc1	$f5,188($a0)
    # Line 572
    lwc1	$f6,184($a0)
    # Line 589
    swc1	$f4,40($a1)
    # Line 588
    swc1	$f5,36($a1)
    # Line 587
    swc1	$f6,32($a1)
    # Line 586
    swc1	$f7,172($a1)
    # Line 585
    swc1	$f8,168($a1)
    # Line 584
    swc1	$f9,164($a1)
    # Line 583
    swc1	$f10,160($a1)
    # Line 582
    swc1	$f7,156($a1)
    # Line 581
    swc1	$f8,152($a1)
    # Line 580
    swc1	$f9,148($a1)
    # Line 579
    swc1	$f10,144($a1)
    # Line 594
    lwc1	$f0,200($a0)
    # Line 593
    lwc1	$f3,212($a0)
    # Line 592
    lwc1	$f2,208($a0)
    # Line 591
    lwc1	$f1,204($a0)
    # Line 597
    swc1	$f3,60($a1)
    # Line 596
    swc1	$f2,56($a1)
    # Line 595
    swc1	$f1,52($a1)
    # Line 598
    jal	__glSaveNT
    # Line 594
    swc1	$f0,48($a1)
    b	.L0dba38b4
    ld	$ra,8($sp)
.end __glSaveCNT

# Function: __glGenericPickVertexProcs
# Declared: Line 650 (Source lines: 651-794)
# Address: 0x0dba3944 - 0x0dba3ae4 (Size: 416 bytes, Frame: 0)
.globl __glGenericPickVertexProcs
.ent __glGenericPickVertexProcs
__glGenericPickVertexProcs:
    # Line 652
    lw	$a4,1696($a0)
    # Line 658
    lw	$v0,1708($a0)
    # Line 651
    lui	$v1,0x6
    addiu	$v1,$v1,-21164
    addu	$at,$t9,$v1
    # Line 657
    lw	$a5,29712($a0)
    # Line 716
    la	$a1,__glClipCheckAll2
    # Line 657
    addiu	$a5,$a5,176
    # Line 658
    beqz	$v0,.L0dba3a38
    lw	$a3,64($a5)
    # Line 717
    la	$a2,__glClipCheckAll3
    # Line 718
    la	$v0,__glClipCheckAll
    # Line 716
    sw	$a1,11996($a0)
    # Line 717
    sw	$a2,12000($a0)
    # Line 718
    sw	$v0,12004($a0)
.L0dba3980:
    # Line 726
    lw	$v1,28136($a0)
    # Line 750
    la	$a2,__glValidateVertex3
    # Line 726
    beqz	$v1,.L0dba3a7c
    # Line 751
    la	$v0,__glValidateVertex4
    # Line 749
    la	$a1,__glValidateVertex2
    # Line 751
    sw	$v0,12056($a0)
    # Line 750
    sw	$a2,12052($a0)
    # Line 749
    sw	$a1,12048($a0)
.L0dba39a0:
    # Line 751
    lw	$v1,3092($a0)
    # Line 763
    li	$a3,1
    # Line 751
    li	$a1,7169
    beq	$v1,$a1,.L0dba3a90
    # Line 758
    andi	$a2,$a4,0x40
    beqz	$a2,.L0dba3aac
    nop
.L0dba39bc:
    # Line 765
    lbu	$a5,3104($a0)
    # Line 768
    li	$a2,9218
    lui	$v1,0x4
    # Line 765
    beqz	$a5,.L0dba3a04
    # Line 768
    and	$v1,$a4,$v1
    # Line 765
    lbu	$v0,28268($a0)
    beqz	$v0,.L0dba3a08
    # Line 774
    la	$v0,sub_0dbf0000
    # Line 768
    beqz	$v1,.L0dba39ec
    ori	$a3,$a3,0x4
    lw	$a1,1876($a0)
    beq	$a1,$a2,.L0dba3abc
.L0dba39ec:
    # Line 771
    lui	$v0,0x8
    and	$v0,$a4,$v0
    beqz	$v0,.L0dba3a04
    li	$a1,9218
    lw	$v1,2000($a0)
    beq	$v1,$a1,.L0dba3ac4
.L0dba3a04:
    # Line 774
    la	$v0,sub_0dbf0000
.L0dba3a08:
    sll	$a4,$a3,0x2
    addiu	$v0,$v0,16616
    beqz	$a5,.L0dba3acc
    addu	$a4,$a4,$v0
    lw	$v1,31548($a0)
    andi	$v1,$v1,0x1
    beqzl	$v1,.L0dba3ab4
    # Line 783
    lw	$v0,16($a4)
    # Line 785
    lw	$a1,48($a4)
    sw	$a1,11992($a0)
    # Line 794
    jr	$ra
    nop
.L0dba3a38:
    # Line 718
    la	$a6,__glClipCheckFrustum
    # Line 721
    sltiu	$a2,$a3,2
    sw	$a6,12004($a0)
    bnez	$a2,.L0dba3aa4
    # Line 720
    sw	$a6,12000($a0)
    # Line 721
    lwc1	$f0,_lit_bf800000
    lwc1	$f4,56($a5)
    c.le.s	$f0,$f4
    nop
    bc1f	.L0dba3aa4
    # Line 722
    lwc1	$f1,_lit_3f800000
    c.le.s	$f4,$f1
    nop
    bc1f	.L0dba3aa4
    # Line 724
    la	$v0,__glClipCheckFrustum2D
    b	.L0dba3980
    sw	$v0,11996($a0)
.L0dba3a7c:
    # Line 733
    la	$v1,__glNop
    # Line 737
    sw	$v1,12056($a0)
    # Line 735
    sw	$v1,12052($a0)
    # Line 737
    b	.L0dba39a0
    # Line 733
    sw	$v1,12048($a0)
.L0dba3a90:
    # Line 751
    lbu	$a1,3105($a0)
    beqz	$a1,.L0dba3ad8
    # Line 756
    la	$a2,__glSaveCIAll
    # Line 794
    jr	$ra
    # Line 756
    sw	$a2,11992($a0)
.L0dba3aa4:
    b	.L0dba3980
    # Line 726
    sw	$a6,11996($a0)
.L0dba3aac:
    b	.L0dba39bc
    # Line 765
    li	$a3,2
.L0dba3ab4:
    # Line 794
    jr	$ra
    # Line 783
    sw	$v0,11992($a0)
.L0dba3abc:
    b	.L0dba39ec
    # Line 771
    ori	$a3,$a3,0x1
.L0dba3ac4:
    b	.L0dba3a04
    # Line 776
    ori	$a3,$a3,0x1
.L0dba3acc:
    # Line 790
    lw	$v1,0($a4)
    # Line 794
    jr	$ra
    # Line 790
    sw	$v1,11992($a0)
.L0dba3ad8:
    # Line 758
    la	$a1,__glSaveCAll
    # Line 794
    jr	$ra
    # Line 758
    sw	$a1,11992($a0)
.end __glGenericPickVertexProcs

# Function: __glValidateVertex2
# Declared: Line 799 (Source lines: 800-845)
# Address: 0x0dba3ae4 - 0x0dba3ccc (Size: 488 bytes, Frame: 240)
.globl __glValidateVertex2
.ent __glValidateVertex2
__glValidateVertex2:
    # Line 800
    addiu	$sp,$sp,-112
    sd	$s0,56($sp)
    move	$s0,$a0
    sd	$s1,32($sp)
    move	$s1,$a1
    sd	$gp,48($sp)
    sd	$s2,40($sp)
    # Line 801
    lw	$s2,0($a1)
    # Line 800
    lui	$v0,0x6
    addiu	$v0,$v0,-21580
    sd	$s2,16($sp)
    # Line 801
    nor	$s2,$s2,$zero
    and	$s2,$s2,$a2
    andi	$at,$s2,0x10
    beqz	$at,.L0dba3b40
    # Line 800
    addu	$gp,$t9,$v0
    # Line 805
    lw	$a2,29712($s0)
    # Line 806
    lw	$t9,72($a2)
    addiu	$a1,$s1,16
    sd	$ra,72($sp)
    jalr	$t9
    addiu	$a0,$s1,96
    ld	$ra,72($sp)
.L0dba3b40:
    andi	$v1,$s2,0x8
    beqz	$v1,.L0dba3bd0
    # Line 825
    andi	$a3,$s2,0x40
    sd	$s4,64($sp)
    # Line 810
    lw	$s4,29712($s0)
    lw	$a3,64($s4)
    beqzl	$a3,.L0dba3ca8
    # Line 814
    lwc1	$f2,16($s1)
.L0dba3b60:
    lbu	$at,268($s4)
    beqzl	$at,.L0dba3b88
    sd	$ra,72($sp)
    # Line 818
    lw	$t9,11972($s0)
    move	$a0,$s0
    sd	$ra,72($sp)
    jalr	$t9
    move	$a1,$s4
    ld	$ra,72($sp)
    sd	$ra,72($sp)
.L0dba3b88:
    lw	$t9,164($s4)
    lw	$v0,1696($s0)
    addiu	$a2,$s4,88
    lui	$v1,0x40
    and	$v0,$v0,$v1
    addiu	$v1,$s1,32
    beqz	$v0,.L0dba3c90
    sd	$v1,24($sp)
    # Line 821
    addiu	$a0,$sp,0
    ld	$a1,24($sp)
    jalr	$t9
    ld	$s4,64($sp)
    # Line 823
    lw	$t9,11976($s0)
    ld	$a0,24($sp)
    jalr	$t9
    addiu	$a1,$sp,0
    ld	$ra,72($sp)
.L0dba3bcc:
    # Line 825
    andi	$a3,$s2,0x40
.L0dba3bd0:
    beqz	$a3,.L0dba3bf8
    # Line 830
    andi	$at,$s2,0x4
    lw	$t9,12596($s0)
    move	$a0,$s0
    sd	$ra,72($sp)
    jalr	$t9
    move	$a1,$s1
    swc1	$f0,176($s1)
    ld	$ra,72($sp)
    andi	$at,$s2,0x4
.L0dba3bf8:
    beqz	$at,.L0dba3c24
    # Line 833
    mtc1	$zero,$f1
    swc1	$f1,24($s1)
    # Line 834
    lwc1	$f0,3284($s0)
    swc1	$f0,28($s1)
    # Line 835
    lw	$t9,12068($s0)
    move	$a1,$s1
    sd	$ra,72($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,72($sp)
.L0dba3c24:
    andi	$v0,$s2,0x1
    beqz	$v0,.L0dba3c48
    # Line 838
    move	$a0,$s0
    lw	$t9,12076($s0)
    move	$a1,$zero
    sd	$ra,72($sp)
    jalr	$t9
    move	$a2,$s1
    ld	$ra,72($sp)
.L0dba3c48:
    andi	$v1,$s2,0x2
    beqz	$v1,.L0dba3c6c
    # Line 841
    move	$a0,$s0
    lw	$t9,12076($s0)
    move	$a2,$s1
    sd	$ra,72($sp)
    jalr	$t9
    li	$a1,1
    ld	$ra,72($sp)
.L0dba3c6c:
    ld	$a0,16($sp)
    ld	$gp,48($sp)
    # Line 845
    ld	$s0,56($sp)
    # Line 844
    or	$a0,$s2,$a0
    # Line 845
    ld	$s2,40($sp)
    # Line 844
    sw	$a0,0($s1)
    # Line 845
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dba3c90:
    ld	$a1,24($sp)
    ld	$s4,64($sp)
    # Line 825
    jalr	$t9
    move	$a0,$a1
    b	.L0dba3bcc
    ld	$ra,72($sp)
.L0dba3ca8:
    # Line 814
    lwc1	$f3,32($s1)
    mul.s	$f2,$f2,$f3
    lwc1	$f3,20($s1)
    lwc1	$f0,36($s1)
    mul.s	$f3,$f3,$f0
    add.s	$f2,$f2,$f3
    neg.s	$f2,$f2
    b	.L0dba3b60
    swc1	$f2,44($s1)
.end __glValidateVertex2

# Function: __glValidateVertex3
# Declared: Line 847 (Source lines: 848-893)
# Address: 0x0dba3ccc - 0x0dba3ec0 (Size: 500 bytes, Frame: 240)
.globl __glValidateVertex3
.ent __glValidateVertex3
__glValidateVertex3:
    # Line 848
    addiu	$sp,$sp,-112
    sd	$s0,56($sp)
    move	$s0,$a0
    sd	$s1,32($sp)
    move	$s1,$a1
    sd	$gp,48($sp)
    sd	$s2,40($sp)
    # Line 849
    lw	$s2,0($a1)
    # Line 848
    lui	$v0,0x6
    addiu	$v0,$v0,-22068
    sd	$s2,16($sp)
    # Line 849
    nor	$s2,$s2,$zero
    and	$s2,$s2,$a2
    andi	$at,$s2,0x10
    beqz	$at,.L0dba3d28
    # Line 848
    addu	$gp,$t9,$v0
    # Line 853
    lw	$a2,29712($s0)
    # Line 854
    lw	$t9,76($a2)
    addiu	$a1,$s1,16
    sd	$ra,72($sp)
    jalr	$t9
    addiu	$a0,$s1,96
    ld	$ra,72($sp)
.L0dba3d28:
    andi	$v1,$s2,0x8
    beqz	$v1,.L0dba3db8
    # Line 874
    andi	$a3,$s2,0x40
    sd	$s4,64($sp)
    # Line 858
    lw	$s4,29712($s0)
    lw	$a3,64($s4)
    beqzl	$a3,.L0dba3e8c
    # Line 862
    lwc1	$f1,16($s1)
.L0dba3d48:
    lbu	$at,268($s4)
    beqzl	$at,.L0dba3d70
    sd	$ra,72($sp)
    # Line 867
    lw	$t9,11972($s0)
    move	$a0,$s0
    sd	$ra,72($sp)
    jalr	$t9
    move	$a1,$s4
    ld	$ra,72($sp)
    sd	$ra,72($sp)
.L0dba3d70:
    lw	$t9,164($s4)
    lw	$v0,1696($s0)
    addiu	$a2,$s4,88
    lui	$v1,0x40
    and	$v0,$v0,$v1
    addiu	$v1,$s1,32
    beqz	$v0,.L0dba3e74
    sd	$v1,24($sp)
    # Line 870
    addiu	$a0,$sp,0
    ld	$a1,24($sp)
    jalr	$t9
    ld	$s4,64($sp)
    # Line 872
    lw	$t9,11976($s0)
    ld	$a0,24($sp)
    jalr	$t9
    addiu	$a1,$sp,0
    ld	$ra,72($sp)
.L0dba3db4:
    # Line 874
    andi	$a3,$s2,0x40
.L0dba3db8:
    beqz	$a3,.L0dba3de0
    # Line 879
    andi	$at,$s2,0x4
    lw	$t9,12596($s0)
    move	$a0,$s0
    sd	$ra,72($sp)
    jalr	$t9
    move	$a1,$s1
    swc1	$f0,176($s1)
    ld	$ra,72($sp)
    andi	$at,$s2,0x4
.L0dba3de0:
    beqz	$at,.L0dba3e0c
    # Line 883
    andi	$v0,$s2,0x1
    # Line 882
    lwc1	$f0,3284($s0)
    swc1	$f0,28($s1)
    # Line 883
    lw	$t9,12068($s0)
    move	$a1,$s1
    sd	$ra,72($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,72($sp)
    andi	$v0,$s2,0x1
.L0dba3e0c:
    beqz	$v0,.L0dba3e2c
    # Line 886
    move	$a0,$s0
    lw	$t9,12076($s0)
    move	$a1,$zero
    sd	$ra,72($sp)
    jalr	$t9
    move	$a2,$s1
    ld	$ra,72($sp)
.L0dba3e2c:
    andi	$v1,$s2,0x2
    beqz	$v1,.L0dba3e50
    # Line 889
    move	$a0,$s0
    lw	$t9,12076($s0)
    move	$a2,$s1
    sd	$ra,72($sp)
    jalr	$t9
    li	$a1,1
    ld	$ra,72($sp)
.L0dba3e50:
    ld	$a0,16($sp)
    ld	$gp,48($sp)
    # Line 893
    ld	$s0,56($sp)
    # Line 892
    or	$a0,$s2,$a0
    # Line 893
    ld	$s2,40($sp)
    # Line 892
    sw	$a0,0($s1)
    # Line 893
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dba3e74:
    ld	$a1,24($sp)
    ld	$s4,64($sp)
    # Line 874
    jalr	$t9
    move	$a0,$a1
    b	.L0dba3db4
    ld	$ra,72($sp)
.L0dba3e8c:
    # Line 862
    lwc1	$f2,32($s1)
    mul.s	$f1,$f1,$f2
    lwc1	$f3,20($s1)
    lwc1	$f0,36($s1)
    mul.s	$f3,$f3,$f0
    lwc1	$f2,24($s1)
    lwc1	$f0,40($s1)
    mul.s	$f2,$f2,$f0
    add.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    neg.s	$f1,$f1
    b	.L0dba3d48
    swc1	$f1,44($s1)
.end __glValidateVertex3

# Function: __glValidateVertex4
# Declared: Line 895 (Source lines: 896-940)
# Address: 0x0dba3ec0 - 0x0dba40b8 (Size: 504 bytes, Frame: 240)
.globl __glValidateVertex4
.ent __glValidateVertex4
__glValidateVertex4:
    # Line 896
    addiu	$sp,$sp,-112
    sd	$s1,32($sp)
    move	$s1,$a0
    sd	$s0,56($sp)
    move	$s0,$a1
    sd	$gp,48($sp)
    sd	$s2,40($sp)
    # Line 897
    lw	$s2,0($a1)
    # Line 896
    lui	$v0,0x6
    addiu	$v0,$v0,-22568
    sd	$s2,16($sp)
    # Line 897
    nor	$s2,$s2,$zero
    and	$s2,$s2,$a2
    andi	$at,$s2,0x10
    beqz	$at,.L0dba3f1c
    # Line 896
    addu	$gp,$t9,$v0
    # Line 901
    lw	$a2,29712($s1)
    # Line 902
    lw	$t9,80($a2)
    addiu	$a1,$s0,16
    sd	$ra,72($sp)
    jalr	$t9
    addiu	$a0,$s0,96
    ld	$ra,72($sp)
.L0dba3f1c:
    andi	$v1,$s2,0x8
    beqz	$v1,.L0dba3fe8
    # Line 906
    mtc1	$zero,$f5
    lwc1	$f4,28($s0)
    c.eq.s	$f4,$f5
    sd	$s4,64($sp)
    bc1t	.L0dba3f78
    lw	$s4,29712($s1)
    # Line 909
    lwc1	$f3,36($s0)
    lwc1	$f2,20($s0)
    lwc1	$f1,32($s0)
    lwc1	$f0,16($s0)
    mul.s	$f2,$f2,$f3
    lwc1	$f3,40($s0)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,24($s0)
    mul.s	$f1,$f1,$f3
    add.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    neg.s	$f0,$f0
    div.s	$f0,$f0,$f4
    b	.L0dba3f7c
    swc1	$f0,44($s0)
.L0dba3f78:
    # Line 912
    swc1	$f5,44($s0)
.L0dba3f7c:
    lbu	$a3,268($s4)
    beqzl	$a3,.L0dba3fa4
    sd	$ra,72($sp)
    # Line 915
    lw	$t9,11972($s1)
    move	$a0,$s1
    sd	$ra,72($sp)
    jalr	$t9
    move	$a1,$s4
    ld	$ra,72($sp)
    sd	$ra,72($sp)
.L0dba3fa4:
    lw	$t9,164($s4)
    lw	$at,1696($s1)
    addiu	$a2,$s4,88
    lui	$v0,0x40
    and	$at,$at,$v0
    addiu	$v0,$s0,32
    beqz	$at,.L0dba40a0
    sd	$v0,24($sp)
    # Line 918
    addiu	$a0,$sp,0
    ld	$a1,24($sp)
    jalr	$t9
    ld	$s4,64($sp)
    # Line 920
    lw	$t9,11976($s1)
    ld	$a0,24($sp)
    jalr	$t9
    addiu	$a1,$sp,0
    ld	$ra,72($sp)
.L0dba3fe8:
    # Line 922
    andi	$v1,$s2,0x40
    beqz	$v1,.L0dba4014
    # Line 927
    andi	$a3,$s2,0x4
    lw	$t9,12596($s1)
    move	$a0,$s1
    sd	$ra,72($sp)
    jalr	$t9
    move	$a1,$s0
    swc1	$f0,176($s0)
    ld	$ra,72($sp)
    andi	$a3,$s2,0x4
.L0dba4014:
    beqz	$a3,.L0dba4038
    # Line 930
    andi	$at,$s2,0x1
    lw	$t9,12068($s1)
    move	$a0,$s1
    sd	$ra,72($sp)
    jalr	$t9
    move	$a1,$s0
    ld	$ra,72($sp)
    andi	$at,$s2,0x1
.L0dba4038:
    beqz	$at,.L0dba4058
    # Line 933
    move	$a0,$s1
    lw	$t9,12076($s1)
    move	$a1,$zero
    sd	$ra,72($sp)
    jalr	$t9
    move	$a2,$s0
    ld	$ra,72($sp)
.L0dba4058:
    andi	$v0,$s2,0x2
    beqz	$v0,.L0dba407c
    # Line 936
    move	$a0,$s1
    lw	$t9,12076($s1)
    move	$a2,$s0
    sd	$ra,72($sp)
    jalr	$t9
    li	$a1,1
    ld	$ra,72($sp)
.L0dba407c:
    ld	$v1,16($sp)
    ld	$gp,48($sp)
    # Line 940
    ld	$s1,32($sp)
    # Line 939
    or	$v1,$s2,$v1
    # Line 940
    ld	$s2,40($sp)
    # Line 939
    sw	$v1,0($s0)
    # Line 940
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dba40a0:
    ld	$a1,24($sp)
    ld	$s4,64($sp)
    # Line 922
    jalr	$t9
    move	$a0,$a1
    b	.L0dba3fe8
    ld	$ra,72($sp)
.end __glValidateVertex4

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_bf800000:
    .word 0xbf800000

