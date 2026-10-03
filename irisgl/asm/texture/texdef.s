# Source: ../igloo/texture/texdef.c
# Category: texture
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/texture/texdef.c -o texdef.T
# Total Functions: 35

.text

# Function: __iglooTBMReleaseOld
# Declared: Line 166 (Source lines: 171-171)
# Address: 0x0f11ccbc - 0x0f11ccc4 (Size: 8 bytes, Frame: 0)
.ent __iglooTBMReleaseOld
__iglooTBMReleaseOld:
    # Line 171
    jr	$ra
    nop
.end __iglooTBMReleaseOld

# Function: __iglooTBMBindNew
# Declared: Line 173 (Source lines: 174-205)
# Address: 0x0f11ccc4 - 0x0f11cd90 (Size: 204 bytes, Frame: 32)
.ent __iglooTBMBindNew
__iglooTBMBindNew:
    # Line 174
    la	$at,gl_iglooUseTexObj
    li	$v0,1
    addiu	$sp,$sp,-32
    lw	$at,0($at)
    sd	$ra,8($sp)
    sd	$s3,0($sp)
    bne	$at,$v0,.L0f11cd30
    move	$s3,$a0
    # Line 182
    la	$t9,glGenTexturesEXT
    addiu	$a1,$s3,12
    jalr	$t9
    li	$a0,1
    # Line 183
    la	$t9,__iglooIsExtensionSupported
    jalr	$t9
    li	$a0,12
    li	$v1,1
    bne	$v1,$v0,.L0f11cd60
    lw	$a1,12($s3)
    lw	$a2,28($s3)
    li	$at,3
    beq	$a2,$at,.L0f11cd78
    # Line 192
    la	$t9,glBindTextureEXT
    li	$a0,3553
    jalr	$t9
    ld	$s3,0($sp)
    b	.L0f11cd58
    ld	$ra,8($sp)
.L0f11cd30:
    # Line 202
    la	$t9,glGenLists
    jalr	$t9
    li	$a0,1
    # Line 203
    la	$t9,__iglooNewList
    # Line 202
    move	$a0,$v0
    # Line 203
    li	$a1,4864
    bal __iglooNewList
    # Line 202
    sw	$v0,20($s3)
    ld	$s3,0($sp)
    ld	$ra,8($sp)
.L0f11cd58:
    # Line 205
    jr	$ra
    addiu	$sp,$sp,32
.L0f11cd60:
    # Line 197
    la	$t9,glBindTextureEXT
    li	$a0,3553
    jalr	$t9
    ld	$s3,0($sp)
    b	.L0f11cd58
    ld	$ra,8($sp)
.L0f11cd78:
    # Line 188
    la	$t9,glBindTextureEXT
    li	$a0,0x806f
    jalr	$t9
    ld	$s3,0($sp)
    b	.L0f11cd58
    ld	$ra,8($sp)
.end __iglooTBMBindNew

# Function: __iglooTBMReleaseNew
# Declared: Line 208 (Source lines: 209-221)
# Address: 0x0f11cd90 - 0x0f11cdc0 (Size: 48 bytes, Frame: 32)
.ent __iglooTBMReleaseNew
__iglooTBMReleaseNew:
    # Line 209
    la	$at,gl_iglooUseTexObj
    lw	$at,0($at)
    beqz	$at,.L0f11cda8
    addiu	$sp,$sp,-32
.L0f11cda0:
    # Line 221
    jr	$ra
    addiu	$sp,$sp,32
.L0f11cda8:
    # Line 218
    la	$t9,__iglooEndList
    sd	$ra,0($sp)
    bal __iglooEndList
    nop
    b	.L0f11cda0
    ld	$ra,0($sp)
.end __iglooTBMReleaseNew

# Function: __iglooTBMRestoreOld
# Declared: Line 223 (Source lines: 224-306)
# Address: 0x0f11cdc0 - 0x0f11cf4c (Size: 396 bytes, Frame: 48)
.ent __iglooTBMRestoreOld
__iglooTBMRestoreOld:
    # Line 225
    la	$a5,gl_wstatep
    # Line 224
    addiu	$sp,$sp,-48
    move	$v0,$a0
    # Line 225
    lw	$a5,0($a5)
    # Line 288
    la	$a3,gl_iglooUseTexObj
    # Line 225
    beqz	$a1,.L0f11ce00
    move	$a4,$a5
    la	$at,gl_iglooUseTexObj
    lw	$at,0($at)
    beqzl	$at,.L0f11ce90
    sd	$v0,8($sp)
.L0f11cdec:
    # Line 248
    lw	$a2,11708($a4)
    lw	$v1,8($v0)
    sw	$v1,8($a2)
.L0f11cdf8:
    # Line 306
    jr	$ra
    addiu	$sp,$sp,48
.L0f11ce00:
    # Line 248
    lw	$a1,11708($a5)
    lw	$a1,4($a1)
    # Line 288
    lw	$a3,0($a3)
    # Line 248
    beqz	$a1,.L0f11ce48
    li	$v0,1
    # Line 260
    la	$t9,gl_find
    sd	$ra,24($sp)
    jalr	$t9
    la	$a0,gl_texturetab
    la	$a2,gl_iglooUseTexObj
    lw	$a2,0($a2)
    li	$a3,1
    beq	$a2,$a3,.L0f11ceb8
.L0f11ce34:
    # Line 288
    la	$t9,__iglooNotTexObjList
    bal __iglooNotTexObjList
    move	$a0,$v0
    b	.L0f11cdf8
    ld	$ra,24($sp)
.L0f11ce48:
    beq	$a3,$v0,.L0f11cf10
    sd	$ra,24($sp)
    # Line 296
    la	$t9,__iglooSetEnable
.L0f11ce54:
    move	$a1,$zero
    jalr	$t9
    li	$a0,3553
    # Line 298
    la	$t9,__iglooIsExtensionSupported
    jalr	$t9
    li	$a0,12
    li	$at,1
    bne	$at,$v0,.L0f11cdf8
    ld	$ra,24($sp)
    # Line 301
    la	$t9,__iglooSetEnable
    move	$a1,$zero
    jalr	$t9
    li	$a0,0x806f
    b	.L0f11cdf8
    ld	$ra,24($sp)
.L0f11ce90:
    sd	$a4,16($sp)
    # Line 240
    la	$t9,glCallList
    move	$a0,$v0
    sd	$ra,24($sp)
    jalr	$t9
    lw	$a0,20($v0)
    ld	$a4,16($sp)
    ld	$v0,8($sp)
    b	.L0f11cdec
    ld	$ra,24($sp)
.L0f11ceb8:
    # Line 265
    la	$t9,__iglooIsExtensionSupported
    sd	$v0,0($sp)
    jalr	$t9
    li	$a0,12
    ld	$a1,0($sp)
    li	$a2,1
    bne	$a2,$v0,.L0f11cefc
    lw	$a1,12($a1)
    ld	$a2,0($sp)
    lw	$a2,28($a2)
    li	$a3,3
    beq	$a2,$a3,.L0f11cf38
    # Line 274
    la	$t9,glBindTextureEXT
    jalr	$t9
    li	$a0,3553
    b	.L0f11ce34
    ld	$v0,0($sp)
.L0f11cefc:
    # Line 279
    la	$t9,glBindTextureEXT
    jalr	$t9
    li	$a0,3553
    b	.L0f11ce34
    ld	$v0,0($sp)
.L0f11cf10:
    # Line 293
    la	$t9,glBindTextureEXT
    move	$a1,$zero
    jalr	$t9
    li	$a0,3553
    # Line 294
    la	$t9,glBindTextureEXT
    move	$a1,$zero
    jalr	$t9
    li	$a0,0x806f
    b	.L0f11ce54
    # Line 296
    la	$t9,__iglooSetEnable
.L0f11cf38:
    # Line 270
    la	$t9,glBindTextureEXT
    jalr	$t9
    li	$a0,0x806f
    b	.L0f11ce34
    ld	$v0,0($sp)
.end __iglooTBMRestoreOld

# Function: gl_g_texdef2d
# Declared: Line 324 (Source lines: 327-388)
# Address: 0x0f11cf4c - 0x0f11d114 (Size: 456 bytes, Frame: 160)
.globl gl_g_texdef2d
.ent gl_g_texdef2d
gl_g_texdef2d:
    # Line 327
    addiu	$sp,$sp,-160
    sd	$a6,40($sp)
    sd	$a5,0($sp)
    sd	$a4,8($sp)
    sd	$a3,16($sp)
    sd	$a2,24($sp)
    sd	$a1,32($sp)
    sd	$s1,48($sp)
    sd	$gp,64($sp)
    # lui	v1,0xfff1 (gp disp hi)
    # addiu	v1,v1,25340 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    # Line 328
    la	$v0,gl_wstatep
    # Line 327
    move	$s1,$a0
    sd	$s2,56($sp)
    # Line 328
    lw	$v0,0($v0)
    # Line 330
    move	$s2,$zero
    beqz	$a0,.L0f11d0e0
    # Line 328
    move	$a7,$v0
    # Line 334
    lw	$t0,11708($v0)
    beqz	$t0,.L0f11d0c4
    # Line 343
    la	$t9,gl_init_texturing
.L0f11cfa4:
    lw	$t1,11708($a7)
    lw	$t1,4($t1)
    bnel	$t1,$s1,.L0f11cfc0
    sd	$s0,80($sp)
    sd	$ra,72($sp)
    # Line 348
    li	$s2,1
    sd	$s0,80($sp)
.L0f11cfc0:
    # Line 351
    la	$t9,gl_remove
    # Line 348
    la	$a0,gl_texturetab
    sd	$ra,72($sp)
    # Line 351
    jalr	$t9
    move	$a1,$s1
    bnez	$v0,.L0f11d0ac
    move	$s0,$v0
    # Line 359
    la	$t9,sub_0f120000
.L0f11cfe0:
    addiu	$t9,$t9,-8056
    bal gl_g_texdef3d
    li	$a0,2
    move	$s0,$v0
    # Line 364
    addiu	$a1,$v0,48
    li	$a0,3379
    la	$t9,__iglooGetIntegerv
    # Line 362
    li	$ra,2
    sw	$ra,28($v0)
    # Line 364
    bal __iglooGetIntegerv
    # Line 361
    sw	$s1,4($v0)
    # Line 366
    la	$t9,gl_insert
    la	$a0,gl_texturetab
    jalr	$t9
    move	$a1,$s0
    # Line 368
    la	$t9,__iglooPixelStorei
    li	$a1,1
    bal __iglooPixelStorei
    li	$a0,3317
    # Line 369
    la	$t9,__iglooPixelStorei
    move	$a1,$zero
    bal __iglooPixelStorei
    li	$a0,3314
    # Line 375
    la	$t9,sub_0f120000
    move	$a0,$s0
    addiu	$t9,$t9,-13124
    bal gl_limgzoom
    move	$a1,$s2
    # Line 380
    move	$a0,$s0
    ld	$a1,32($sp)
    ld	$a2,24($sp)
    ld	$a3,16($sp)
    ld	$a7,40($sp)
    la	$t9,sub_0f120000
    ld	$a6,0($sp)
    ld	$a5,8($sp)
    addiu	$t9,$t9,-11536
    bal gl_g_texdef2d
    li	$a4,1
    # Line 385
    la	$t9,sub_0f120000
    move	$a0,$s0
    addiu	$t9,$t9,-12864
    bal gl_limgzoom
    move	$a1,$s2
    ld	$gp,64($sp)
    # Line 388
    ld	$s0,80($sp)
    ld	$ra,72($sp)
    ld	$s1,48($sp)
    ld	$s2,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f11d0ac:
    # Line 354
    la	$t9,sub_0f120000
    addiu	$t9,$t9,-7936
    bal gl_g_texdef3d
    move	$a0,$s0
    b	.L0f11cfe0
    # Line 359
    la	$t9,sub_0f120000
.L0f11d0c4:
    sd	$a7,88($sp)
    sd	$ra,72($sp)
    # Line 343
    bal gl_init_texturing
    move	$a0,$v0
    ld	$a7,88($sp)
    b	.L0f11cfa4
    ld	$ra,72($sp)
.L0f11d0e0:
    # Line 333
    li	$a1,2
    li	$a0,55
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    sd	$ra,72($sp)
    jalr	$t9
    lw	$a2,-21520($a2)
    ld	$gp,64($sp)
    # Line 334
    ld	$ra,72($sp)
    ld	$s1,48($sp)
    ld	$s2,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end gl_g_texdef2d

# Function: gl_freemip
# Declared: Line 392 (Source lines: 393-402)
# Address: 0x0f11d114 - 0x0f11d16c (Size: 88 bytes, Frame: 32)
.ent gl_freemip
gl_freemip:
    # Line 393
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    beqz	$a0,.L0f11d148
    move	$s0,$a0
    lw	$a0,20($s0)
    beqz	$a0,.L0f11d140
    # Line 399
    la	$t9,gl_free
    sd	$ra,8($sp)
    jalr	$t9
    lw	$a1,-14400($gp)
    ld	$ra,8($sp)
.L0f11d140:
    bnez	$s0,.L0f11d154
    # Line 401
    la	$t9,gl_free
.L0f11d148:
    # Line 402
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f11d154:
    # Line 401
    move	$a0,$s0
    sd	$ra,8($sp)
    jalr	$t9
    lw	$a1,-14400($gp)
    b	.L0f11d148
    ld	$ra,8($sp)
.end gl_freemip

# Function: __iglooGetPixmodes
# Declared: Line 404 (Source lines: 408-496)
# Address: 0x0f11d16c - 0x0f11d2f0 (Size: 388 bytes, Frame: 0)
.ent __iglooGetPixmodes
__iglooGetPixmodes:
    # Line 408
    lw	$a2,136($a0)
    li	$v1,12288
    li	$at,3840
    beq	$a2,$at,.L0f11d188
    li	$v0,4096
    bne	$a2,$v0,.L0f11d1bc
    nop
.L0f11d188:
    lw	$a3,128($a0)
    # Line 422
    li	$v0,1840
    # Line 408
    beq	$a3,$v1,.L0f11d1f8
    # Line 422
    li	$at,1824
    move	$a2,$a3
    li	$a1,1808
    beq	$a3,$a1,.L0f11d1c4
    # Line 464
    li	$a3,4
    # Line 422
    beq	$a2,$at,.L0f11d214
    # Line 443
    li	$a1,4
    # Line 422
    beql	$a2,$v0,.L0f11d248
    # Line 464
    lw	$a2,32($a0)
.L0f11d1b8:
    # Line 487
    sw	$zero,372($a0)
.L0f11d1bc:
    # Line 496
    jr	$ra
    nop
.L0f11d1c4:
    # Line 425
    lw	$a2,32($a0)
    li	$a1,4
    li	$a4,1
    beq	$a2,$a4,.L0f11d274
    li	$a3,2
    beq	$a2,$a3,.L0f11d280
    li	$v1,3
    beq	$a2,$v1,.L0f11d298
    nop
    beq	$a2,$a1,.L0f11d2b8
    nop
.L0f11d1f0:
    # Line 441
    b	.L0f11d1b8
    # Line 440
    sb	$a3,341($a0)
.L0f11d1f8:
    # Line 414
    la	$at,gl_wstatep
    lw	$at,0($at)
    # Line 416
    lw	$v0,11836($at)
    sb	$v0,340($a0)
    # Line 417
    lw	$at,11832($at)
    b	.L0f11d1b8
    sb	$at,341($a0)
.L0f11d214:
    # Line 443
    lw	$a2,32($a0)
    li	$v0,2
    li	$a4,1
    beq	$a2,$a4,.L0f11d28c
    # Line 461
    li	$at,6
    # Line 443
    beq	$a2,$v0,.L0f11d2a0
    li	$v1,3
    beq	$a2,$v1,.L0f11d2c0
    nop
    beq	$a2,$a1,.L0f11d2d8
    nop
.L0f11d240:
    # Line 462
    b	.L0f11d1b8
    # Line 461
    sb	$at,341($a0)
.L0f11d248:
    # Line 464
    li	$a4,1
    beq	$a2,$a4,.L0f11d2ac
    li	$v0,2
    beq	$a2,$v0,.L0f11d2c8
    li	$v1,3
    beq	$a2,$v1,.L0f11d2e0
    nop
    beq	$a2,$a3,.L0f11d2e8
    nop
.L0f11d26c:
    b	.L0f11d1b8
    # Line 481
    sb	$a3,341($a0)
.L0f11d274:
    # Line 428
    li	$a1,4
    # Line 429
    b	.L0f11d1f0
    # Line 428
    sb	$a1,340($a0)
.L0f11d280:
    # Line 431
    li	$at,5
    # Line 432
    b	.L0f11d1f0
    # Line 431
    sb	$at,340($a0)
.L0f11d28c:
    # Line 446
    li	$v0,4
    # Line 447
    b	.L0f11d240
    # Line 446
    sb	$v0,340($a0)
.L0f11d298:
    # Line 435
    b	.L0f11d1f0
    # Line 434
    sb	$a4,340($a0)
.L0f11d2a0:
    # Line 449
    li	$v1,5
    # Line 450
    b	.L0f11d240
    # Line 449
    sb	$v1,340($a0)
.L0f11d2ac:
    # Line 467
    li	$a3,4
    # Line 468
    b	.L0f11d26c
    # Line 467
    sb	$a3,340($a0)
.L0f11d2b8:
    b	.L0f11d1f0
    # Line 437
    sb	$zero,340($a0)
.L0f11d2c0:
    # Line 453
    b	.L0f11d240
    # Line 452
    sb	$a4,340($a0)
.L0f11d2c8:
    # Line 471
    li	$a3,4
    # Line 470
    li	$a1,5
    # Line 471
    b	.L0f11d26c
    # Line 470
    sb	$a1,340($a0)
.L0f11d2d8:
    b	.L0f11d240
    # Line 455
    sb	$zero,340($a0)
.L0f11d2e0:
    # Line 474
    b	.L0f11d26c
    # Line 473
    sb	$a4,340($a0)
.L0f11d2e8:
    b	.L0f11d26c
    # Line 476
    sb	$zero,340($a0)
.end __iglooGetPixmodes

# Function: gl_texdef
# Declared: Line 498 (Source lines: 500-758)
# Address: 0x0f11d2f0 - 0x0f11db08 (Size: 2072 bytes, Frame: 208)
.ent gl_texdef
gl_texdef:
    # Line 511
    sw	$zero,112($a0)
    sw	$zero,116($a0)
    # Line 509
    sw	$zero,424($a0)
    # Line 508
    sw	$a5,24($a0)
    # Line 505
    sw	$a3,40($a0)
    # Line 504
    sw	$a2,36($a0)
    # Line 503
    sw	$a1,32($a0)
    # Line 506
    sw	$a4,44($a0)
    # Line 512
    addiu	$v0,$a2,-1
    # Line 513
    slti	$at,$a4,2
    addiu	$v1,$a3,-1
    # Line 500
    addiu	$sp,$sp,-80
    sd	$s0,0($sp)
    move	$s0,$a0
    # Line 513
    sw	$v1,124($a0)
    beqz	$at,.L0f11d354
    # Line 512
    sw	$v0,120($a0)
    # Line 516
    li	$a4,2
    sw	$a4,28($s0)
    # Line 517
    li	$at,292
    # Line 518
    li	$v0,544
    # Line 519
    sw	$v0,60($s0)
    # Line 518
    sw	$v0,56($s0)
    # Line 519
    b	.L0f11d368
    # Line 517
    sw	$at,52($s0)
.L0f11d354:
    # Line 523
    li	$a4,624
    # Line 524
    sw	$a4,56($s0)
    # Line 523
    sw	$a4,52($s0)
    # Line 522
    li	$v1,3
    sw	$v1,28($s0)
.L0f11d368:
    # Line 538
    move	$t0,$a1
    # Line 536
    sw	$zero,392($s0)
    # Line 535
    sw	$zero,136($s0)
    # Line 531
    sw	$zero,428($s0)
    # Line 530
    sw	$zero,396($s0)
    # Line 529
    sw	$zero,388($s0)
    # Line 528
    sw	$zero,384($s0)
    # Line 559
    dmtc1	$zero,$f1
    # Line 570
    ldc1	$f2,_lit8_bfa0000000000000
    # Line 572
    ldc1	$f0,_lit8_3fdecccccccccccd
    # Line 582
    li	$a6,656
    lwc1	$f10,_lit_bf800000
    mtc1	$zero,$f7
    # Line 538
    li	$a0,1
    # Line 532
    li	$at,769
    # Line 533
    li	$v0,1808
    sw	$v0,128($s0)
    # Line 532
    sw	$at,84($s0)
    sw	$at,88($s0)
    # Line 538
    beq	$a1,$a0,.L0f11d84c
    # Line 532
    sw	$at,92($s0)
    # Line 538
    li	$v1,2
    beq	$t0,$v1,.L0f11d858
    li	$a4,3
    beq	$t0,$a4,.L0f11d8d0
    li	$at,4
    beq	$t0,$at,.L0f11da50
    # Line 549
    li	$v0,1632
.L0f11d3d8:
    # Line 566
    sw	$zero,256($s0)
    # Line 576
    sdc1	$f1,320($s0)
    # Line 569
    sdc1	$f1,264($s0)
    # Line 559
    sdc1	$f1,192($s0)
    sdc1	$f1,224($s0)
    # Line 575
    sdc1	$f2,312($s0)
    # Line 570
    sdc1	$f2,272($s0)
    # Line 560
    ldc1	$f2,_lit8_4008000000000000
    # Line 573
    sdc1	$f0,296($s0)
    # Line 572
    sdc1	$f0,288($s0)
    # Line 558
    ldc1	$f0,_lit8_401a000000000000
    # Line 561
    sdc1	$f2,232($s0)
    # Line 571
    ldc1	$f3,_lit8_3fa999999999999a
    # Line 560
    sdc1	$f2,200($s0)
    # Line 565
    sdc1	$f0,248($s0)
    # Line 574
    sdc1	$f3,304($s0)
    # Line 571
    sdc1	$f3,280($s0)
    # Line 562
    ldc1	$f3,_lit8_4010000000000000
    # Line 564
    sdc1	$f0,216($s0)
    # Line 558
    sdc1	$f0,168($s0)
    # Line 563
    sdc1	$f3,240($s0)
    # Line 576
    beqz	$a7,.L0f11d590
    # Line 562
    sdc1	$f3,208($s0)
    # Line 576
    lwc1	$f1,0($a7)
    trunc.w.s	$f1,$f1
    mfc1	$v0,$f1
    nop
    beqz	$v0,.L0f11db00
    # Line 582
    li	$a1,560
    ldc1	$f8,_lit8_3ff0000000000000
    li	$a5,672
    li	$t8,256
    b	.L0f11d4e8
    # Line 583
    lwc1	$f3,0($a7)
.L0f11d460:
    # Line 608
    lwc1	$f1,0($a7)
    cvt.d.s	$f1,$f1
    sdc1	$f1,264($s0)
    # Line 609
    lwc1	$f0,4($a7)
    cvt.d.s	$f0,$f0
    sdc1	$f0,272($s0)
    # Line 610
    lwc1	$f3,8($a7)
    cvt.d.s	$f3,$f3
    sdc1	$f3,280($s0)
    # Line 611
    lwc1	$f2,12($a7)
    cvt.d.s	$f2,$f2
    sdc1	$f2,288($s0)
    # Line 612
    lwc1	$f1,16($a7)
    cvt.d.s	$f1,$f1
    sdc1	$f1,296($s0)
    # Line 613
    lwc1	$f0,20($a7)
    cvt.d.s	$f0,$f0
    sdc1	$f0,304($s0)
    # Line 614
    lwc1	$f3,24($a7)
    cvt.d.s	$f3,$f3
    sdc1	$f3,312($s0)
    # Line 615
    lwc1	$f2,28($a7)
    cvt.d.s	$f2,$f2
    addiu	$a7,$a7,32
    sdc1	$f2,320($s0)
.L0f11d4c4:
    # Line 741
    beqz	$a7,.L0f11d598
    # Line 745
    la	$t9,sub_0f120000
    # Line 741
    lwc1	$f2,0($a7)
    trunc.w.s	$f2,$f2
    mfc1	$v1,$f2
    nop
    beqz	$v1,.L0f11d598
    # Line 745
    la	$t9,sub_0f120000
    # Line 583
    lwc1	$f3,0($a7)
.L0f11d4e8:
    trunc.w.s	$f3,$f3
    mfc1	$t0,$f3
    nop
    slti	$a4,$t0,2304
    bnez	$a4,.L0f11d54c
    addiu	$a7,$a7,4
    slti	$at,$t0,2305
    bnez	$at,.L0f11d460
    slti	$v0,$t0,3584
    bnez	$v0,.L0f11d650
    slti	$v1,$t0,3585
    bnez	$v1,.L0f11d7b8
    slti	$a4,$t0,8192
    bnez	$a4,.L0f11d864
    slti	$at,$t0,8193
    bnez	$at,.L0f11daf4
    li	$v0,16384
    bnel	$t0,$v0,.L0f11d9f4
    # Line 739
    li	$a1,2
    # Line 733
    lwc1	$f1,0($a7)
    swc1	$f1,156($s0)
    # Line 734
    lwc1	$f0,4($a7)
    addiu	$a7,$a7,8
    # Line 736
    b	.L0f11d4c4
    # Line 734
    swc1	$f0,160($s0)
.L0f11d54c:
    # Line 583
    slti	$v1,$t0,816
    bnez	$v1,.L0f11d614
    slti	$a4,$t0,817
    bnez	$a4,.L0f11d6f4
    slti	$at,$t0,1536
    bnez	$at,.L0f11d70c
    slti	$v0,$t0,1537
    bnez	$v0,.L0f11da38
    li	$v1,1792
    bnel	$t0,$v1,.L0f11d9f4
    # Line 739
    li	$a1,2
    # Line 730
    lwc1	$f2,0($a7)
    trunc.w.s	$f2,$f2
    mfc1	$a4,$f2
    addiu	$a7,$a7,4
    # Line 731
    b	.L0f11d4c4
    # Line 730
    sw	$a4,128($s0)
.L0f11d590:
    sd	$ra,8($sp)
.L0f11d594:
    # Line 745
    la	$t9,sub_0f120000
.L0f11d598:
    sd	$ra,8($sp)
    addiu	$t9,$t9,-11924
    bal gl_g_texdef2d
    move	$a0,$s0
    # Line 747
    la	$t9,sub_0f120000
    addiu	$t9,$t9,-9004
    bal gl_g_texdef3d
    move	$a0,$s0
    lw	$at,136($s0)
    li	$v0,3840
    beq	$at,$v0,.L0f11d5d4
    # Line 750
    la	$t9,sub_0f120000
    addiu	$t9,$t9,-7760
    bal gl_g_texdef3d
    move	$a0,$s0
.L0f11d5d4:
    # Line 753
    la	$t9,sub_0f120000
    addiu	$t9,$t9,-13116
    bal gl_limgzoom
    move	$a0,$s0
    # Line 754
    la	$t9,sub_0f120000
    addiu	$t9,$t9,11260
    bal SetOglFormatAndComps
    move	$a0,$s0
    # Line 755
    la	$t9,sub_0f120000
    addiu	$t9,$t9,-12912
    bal gl_limgzoom
    move	$a0,$s0
    ld	$ra,8($sp)
    # Line 758
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f11d614:
    # Line 583
    slti	$at,$t0,768
    bnez	$at,.L0f11d6ac
    slti	$v0,$t0,769
    bnez	$v0,.L0f11d82c
    slti	$v1,$t0,800
    bnez	$v1,.L0f11d8dc
    slti	$a4,$t0,801
    beqzl	$a4,.L0f11d9f4
    # Line 739
    li	$a1,2
    # Line 672
    lwc1	$f3,0($a7)
    trunc.w.s	$f3,$f3
    mfc1	$at,$f3
    addiu	$a7,$a7,4
    # Line 676
    b	.L0f11d4c4
    # Line 672
    sw	$at,88($s0)
.L0f11d650:
    # Line 583
    slti	$v0,$t0,3072
    bnez	$v0,.L0f11d760
    slti	$v1,$t0,3073
    beqz	$v1,.L0f11da1c
    li	$a4,3328
    # Line 585
    lw	$t0,256($s0)
    slti	$a4,$t0,4
    beqz	$a4,.L0f11daec
    # Line 586
    sll	$v0,$t0,0x3
    lwc1	$f1,0($a7)
    cvt.d.s	$f1,$f1
    addu	$v0,$v0,$s0
    sdc1	$f1,192($v0)
    # Line 587
    lw	$at,256($s0)
    addiu	$at,$at,1
    sw	$at,256($s0)
    addiu	$a7,$a7,8
    lwc1	$f0,-4($a7)
    sll	$at,$at,0x3
    addu	$at,$at,$s0
    cvt.d.s	$f0,$f0
    b	.L0f11d4c4
    sdc1	$f0,216($at)
.L0f11d6ac:
    # Line 583
    slti	$v1,$t0,512
    bnez	$v1,.L0f11d780
    slti	$a4,$t0,513
    beqzl	$a4,.L0f11d9f4
    # Line 739
    li	$a1,2
    # Line 642
    lwc1	$f2,0($a7)
    trunc.w.s	$f2,$f2
    mfc1	$t0,$f2
    addiu	$a7,$a7,4
    sw	$t0,56($s0)
    # Line 643
    beq	$t0,$a1,.L0f11d6ec
    # Line 642
    sw	$t0,60($s0)
    # Line 643
    beq	$t0,$a5,.L0f11d6ec
    nop
    bne	$t0,$a6,.L0f11d4c4
    nop
.L0f11d6ec:
    # Line 646
    b	.L0f11d4c4
    sw	$a0,384($s0)
.L0f11d6f4:
    # Line 678
    lwc1	$f3,0($a7)
    trunc.w.s	$f3,$f3
    mfc1	$at,$f3
    addiu	$a7,$a7,4
    # Line 682
    b	.L0f11d4c4
    # Line 678
    sw	$at,92($s0)
.L0f11d70c:
    # Line 583
    slti	$v0,$t0,1280
    bnez	$v0,.L0f11d900
    slti	$v1,$t0,1281
    beqzl	$v1,.L0f11d9f4
    # Line 739
    li	$a1,2
    # Line 716
    lwc1	$f3,0($a7)
    swc1	$f3,96($s0)
    # Line 717
    lwc1	$f2,4($a7)
    swc1	$f2,100($s0)
    # Line 718
    lwc1	$f1,8($a7)
    swc1	$f1,104($s0)
    # Line 719
    addiu	$a7,$a7,16
    lwc1	$f0,-4($a7)
    # Line 724
    sw	$zero,404($s0)
    sw	$zero,412($s0)
    # Line 723
    sw	$a3,408($s0)
    # Line 722
    sw	$a2,400($s0)
    # Line 721
    sw	$a0,396($s0)
    # Line 720
    sw	$a0,388($s0)
    # Line 725
    b	.L0f11d4c4
    # Line 719
    swc1	$f0,108($s0)
.L0f11d760:
    # Line 583
    slti	$a4,$t0,2816
    bnez	$a4,.L0f11d9cc
    slti	$at,$t0,2817
    beqz	$at,.L0f11d9f0
    # Line 655
    addiu	$a7,$a7,4
    li	$v0,544
    # Line 658
    b	.L0f11d4c4
    # Line 656
    sw	$v0,60($s0)
.L0f11d780:
    # Line 583
    bnel	$t0,$t8,.L0f11d9f4
    # Line 739
    li	$a1,2
    # Line 633
    lwc1	$f0,0($a7)
    trunc.w.s	$f0,$f0
    mfc1	$t0,$f0
    addiu	$a7,$a7,4
    # Line 634
    beq	$t0,$a1,.L0f11d7b0
    # Line 633
    sw	$t0,52($s0)
    # Line 634
    beq	$t0,$a5,.L0f11d7b0
    nop
    bne	$t0,$a6,.L0f11d4c4
    nop
.L0f11d7b0:
    # Line 637
    b	.L0f11d4c4
    sw	$a0,384($s0)
.L0f11d7b8:
    # Line 599
    sw	$a0,392($s0)
    # Line 600
    lwc1	$f1,0($a7)
    trunc.w.s	$f1,$f1
    mfc1	$v0,$f1
    nop
    sw	$v0,64($s0)
    # Line 601
    lwc1	$f0,4($a7)
    trunc.w.s	$f0,$f0
    mfc1	$at,$f0
    nop
    sw	$at,68($s0)
    # Line 602
    lwc1	$f3,8($a7)
    trunc.w.s	$f3,$f3
    mfc1	$a4,$f3
    nop
    sw	$a4,72($s0)
    # Line 603
    lwc1	$f2,12($a7)
    trunc.w.s	$f2,$f2
    mfc1	$v1,$f2
    nop
    sw	$v1,76($s0)
    # Line 604
    lwc1	$f1,16($a7)
    c.eq.s	$f1,$f7
    move	$t0,$zero
    bc1t	.L0f11d824
    addiu	$a7,$a7,20
    li	$t0,1
.L0f11d824:
    # Line 606
    b	.L0f11d4c4
    # Line 604
    sw	$t0,80($s0)
.L0f11d82c:
    # Line 660
    lwc1	$f2,0($a7)
    trunc.w.s	$f2,$f2
    mfc1	$v1,$f2
    addiu	$a7,$a7,4
    sw	$v1,84($s0)
    sw	$v1,88($s0)
    # Line 664
    b	.L0f11d4c4
    # Line 660
    sw	$v1,92($s0)
.L0f11d84c:
    # Line 540
    li	$a4,1552
    # Line 541
    b	.L0f11d3d8
    # Line 540
    sw	$a4,132($s0)
.L0f11d858:
    # Line 543
    li	$at,1568
    # Line 544
    b	.L0f11d3d8
    # Line 543
    sw	$at,132($s0)
.L0f11d864:
    # Line 583
    slti	$v0,$t0,4096
    bnez	$v0,.L0f11dad8
    slti	$v1,$t0,4097
    beqz	$v1,.L0f11d9f0
    li	$a4,4096
    # Line 625
    sw	$a4,136($s0)
    # Line 626
    lwc1	$f2,0($a7)
    trunc.w.s	$f2,$f2
    mfc1	$v1,$f2
    nop
    sw	$v1,140($s0)
    # Line 627
    lwc1	$f1,4($a7)
    trunc.w.s	$f1,$f1
    mfc1	$v0,$f1
    nop
    sw	$v0,148($s0)
    # Line 628
    lwc1	$f0,8($a7)
    trunc.w.s	$f0,$f0
    mfc1	$at,$f0
    nop
    sw	$at,144($s0)
    # Line 629
    lwc1	$f3,12($a7)
    trunc.w.s	$f3,$f3
    mfc1	$a4,$f3
    addiu	$a7,$a7,16
    # Line 631
    b	.L0f11d4c4
    # Line 629
    sw	$a4,152($s0)
.L0f11d8d0:
    # Line 546
    li	$at,1632
    # Line 547
    b	.L0f11d3d8
    # Line 546
    sw	$at,132($s0)
.L0f11d8dc:
    li	$v0,784
    # Line 583
    bnel	$t0,$v0,.L0f11d9f4
    # Line 739
    li	$a1,2
    # Line 666
    lwc1	$f3,0($a7)
    trunc.w.s	$f3,$f3
    mfc1	$v1,$f3
    addiu	$a7,$a7,4
    # Line 670
    b	.L0f11d4c4
    # Line 666
    sw	$v1,84($s0)
.L0f11d900:
    li	$a4,1024
    # Line 583
    bnel	$t0,$a4,.L0f11d9f4
    # Line 739
    li	$a1,2
    # Line 687
    lwc1	$f9,0($a7)
    # Line 690
    cvt.d.s	$f4,$f9
    lwc1	$f6,12($a7)
    c.le.d	$f4,$f8
    addiu	$a7,$a7,16
    # Line 689
    lwc1	$f5,-8($a7)
    # Line 690
    bc1f	.L0f11da58
    # Line 688
    lwc1	$f4,-12($a7)
    # Line 690
    cvt.d.s	$f0,$f4
    c.le.d	$f0,$f8
    nop
    bc1fl	.L0f11da5c
    # Line 703
    trunc.w.s	$f2,$f4
    # Line 691
    cvt.d.s	$f1,$f5
    c.le.d	$f1,$f8
    nop
    bc1fl	.L0f11da5c
    # Line 703
    trunc.w.s	$f2,$f4
    # Line 691
    cvt.d.s	$f2,$f6
    c.le.d	$f2,$f8
    nop
    bc1fl	.L0f11da5c
    # Line 703
    trunc.w.s	$f2,$f4
    # Line 695
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 693
    mtc1	$a2,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 695
    mul.s	$f2,$f0,$f4
    # Line 693
    mul.s	$f1,$f3,$f9
    # Line 696
    mul.s	$f0,$f0,$f6
    # Line 694
    mul.s	$f3,$f3,$f5
    # Line 695
    trunc.w.s	$f2,$f2
    # Line 693
    trunc.w.s	$f1,$f1
    # Line 696
    add.s	$f0,$f0,$f10
    # Line 694
    add.s	$f3,$f3,$f10
    # Line 696
    trunc.w.s	$f0,$f0
    # Line 695
    mfc1	$t0,$f2
    # Line 693
    mfc1	$t1,$f1
    # Line 694
    trunc.w.s	$f3,$f3
    # Line 695
    sw	$t0,116($s0)
    # Line 696
    mfc1	$t3,$f0
    # Line 693
    sw	$t1,112($s0)
    # Line 694
    mfc1	$t2,$f3
    # Line 696
    sw	$t3,124($s0)
    b	.L0f11da88
    # Line 694
    sw	$t2,120($s0)
.L0f11d9cc:
    li	$at,2560
    # Line 583
    bnel	$t0,$at,.L0f11d9f4
    # Line 739
    li	$a1,2
    # Line 651
    lwc1	$f1,0($a7)
    trunc.w.s	$f1,$f1
    mfc1	$v0,$f1
    addiu	$a7,$a7,4
    # Line 653
    b	.L0f11d4c4
    # Line 651
    sw	$v0,56($s0)
.L0f11d9f0:
    # Line 739
    li	$a1,2
.L0f11d9f4:
    li	$a0,22
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    sd	$ra,8($sp)
    jalr	$t9
    lw	$a2,-21524($a2)
    ld	$ra,8($sp)
    # Line 740
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f11da1c:
    # Line 583
    bnel	$t0,$a4,.L0f11d9f4
    # Line 739
    li	$a1,2
    # Line 595
    lwc1	$f2,0($a7)
    addiu	$a7,$a7,4
    cvt.d.s	$f2,$f2
    # Line 597
    b	.L0f11d4c4
    # Line 595
    sdc1	$f2,168($s0)
.L0f11da38:
    # Line 727
    lwc1	$f3,0($a7)
    trunc.w.s	$f3,$f3
    mfc1	$at,$f3
    addiu	$a7,$a7,4
    # Line 728
    b	.L0f11d4c4
    # Line 727
    sw	$at,132($s0)
.L0f11da50:
    b	.L0f11d3d8
    # Line 549
    sw	$v0,132($s0)
.L0f11da58:
    # Line 703
    trunc.w.s	$f2,$f4
.L0f11da5c:
    # Line 704
    trunc.w.s	$f3,$f6
    # Line 701
    trunc.w.s	$f0,$f9
    # Line 702
    trunc.w.s	$f1,$f5
    # Line 701
    mfc1	$t1,$f0
    # Line 704
    mfc1	$t3,$f3
    # Line 703
    mfc1	$t0,$f2
    # Line 702
    mfc1	$t2,$f1
    # Line 704
    sw	$t3,124($s0)
    # Line 703
    sw	$t0,116($s0)
    # Line 702
    sw	$t2,120($s0)
    # Line 701
    sw	$t1,112($s0)
.L0f11da88:
    # Line 708
    subu	$a4,$t2,$t1
    addiu	$a4,$a4,1
    div	$zero,$t1,$a4
    mflo	$at
    # Line 709
    subu	$t9,$t3,$t0
    addiu	$t9,$t9,1
    # Line 710
    div	$zero,$t0,$t9
    # Line 707
    sw	$a0,396($s0)
    # Line 710
    teq	$t9,$zero,0x7
    # Line 709
    sw	$t9,408($s0)
    # Line 708
    teq	$a4,$zero,0x7
    sw	$a4,400($s0)
    sw	$at,404($s0)
    # Line 710
    mflo	$v1
    bne	$a4,$a2,.L0f11d4c4
    sw	$v1,412($s0)
    bne	$t9,$a3,.L0f11d4c4
    nop
    # Line 712
    b	.L0f11d4c4
    sw	$zero,396($s0)
.L0f11dad8:
    li	$at,3840
    # Line 583
    bne	$t0,$at,.L0f11d9f0
    li	$v0,3840
    # Line 623
    b	.L0f11d4c4
    # Line 622
    sw	$v0,136($s0)
.L0f11daec:
    b	.L0f11d4c4
    # Line 590
    addiu	$a7,$a7,8
.L0f11daf4:
    li	$v1,3840
    # Line 620
    b	.L0f11d4c4
    # Line 618
    sw	$v1,136($s0)
.L0f11db00:
    b	.L0f11d594
    sd	$ra,8($sp)
.end gl_texdef

# Function: gl_g_texdef3d
# Declared: Line 763 (Source lines: 765-828)
# Address: 0x0f11db08 - 0x0f11dcd4 (Size: 460 bytes, Frame: 176)
.globl gl_g_texdef3d
.ent gl_g_texdef3d
gl_g_texdef3d:
    # Line 765
    addiu	$sp,$sp,-176
    sd	$a7,0($sp)
    sd	$a6,48($sp)
    sd	$a5,8($sp)
    sd	$a4,16($sp)
    sd	$a3,24($sp)
    sd	$a2,32($sp)
    sd	$a1,40($sp)
    sd	$s1,72($sp)
    sd	$gp,56($sp)
    # lui	v1,0xfff1 (gp disp hi)
    # addiu	v1,v1,22336 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    # Line 767
    la	$v0,gl_wstatep
    # Line 765
    move	$s1,$a0
    sd	$s2,64($sp)
    # Line 767
    lw	$v0,0($v0)
    # Line 769
    move	$s2,$zero
    beqz	$a0,.L0f11dca0
    # Line 767
    move	$t2,$v0
    # Line 773
    lw	$t0,11708($v0)
    beqz	$t0,.L0f11dc84
    # Line 782
    la	$t9,gl_init_texturing
.L0f11db64:
    lw	$t1,11708($t2)
    lw	$t1,4($t1)
    bnel	$t1,$s1,.L0f11db80
    sd	$s0,88($sp)
    sd	$ra,80($sp)
    # Line 787
    li	$s2,1
    sd	$s0,88($sp)
.L0f11db80:
    # Line 790
    la	$t9,gl_remove
    # Line 787
    la	$a0,gl_texturetab
    sd	$ra,80($sp)
    # Line 790
    jalr	$t9
    move	$a1,$s1
    bnez	$v0,.L0f11dc6c
    move	$s0,$v0
    # Line 798
    la	$t9,sub_0f120000
.L0f11dba0:
    addiu	$t9,$t9,-8056
    bal gl_g_texdef3d
    li	$a0,3
    move	$s0,$v0
    # Line 803
    addiu	$a1,$v0,48
    li	$a0,3379
    la	$t9,__iglooGetIntegerv
    # Line 801
    li	$ra,3
    sw	$ra,28($v0)
    # Line 803
    bal __iglooGetIntegerv
    # Line 800
    sw	$s1,4($v0)
    # Line 805
    la	$t9,gl_insert
    la	$a0,gl_texturetab
    jalr	$t9
    move	$a1,$s0
    # Line 807
    la	$t9,__iglooPixelStorei
    li	$a1,1
    bal __iglooPixelStorei
    li	$a0,3317
    # Line 808
    la	$t9,__iglooPixelStorei
    move	$a1,$zero
    bal __iglooPixelStorei
    li	$a0,3314
    # Line 814
    la	$t9,sub_0f120000
    move	$a0,$s0
    addiu	$t9,$t9,-13124
    bal gl_limgzoom
    move	$a1,$s2
    # Line 819
    move	$a0,$s0
    ld	$a1,40($sp)
    ld	$a2,32($sp)
    ld	$a3,24($sp)
    ld	$a4,16($sp)
    la	$t9,sub_0f120000
    ld	$a5,8($sp)
    ld	$a6,48($sp)
    addiu	$t9,$t9,-11536
    bal gl_g_texdef2d
    ld	$a7,0($sp)
    # Line 824
    la	$t9,sub_0f120000
    move	$a0,$s0
    addiu	$t9,$t9,-12864
    bal gl_limgzoom
    move	$a1,$s2
    ld	$gp,56($sp)
    # Line 828
    ld	$s0,88($sp)
    ld	$ra,80($sp)
    ld	$s1,72($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0f11dc6c:
    # Line 793
    la	$t9,sub_0f120000
    addiu	$t9,$t9,-7936
    bal gl_g_texdef3d
    move	$a0,$s0
    b	.L0f11dba0
    # Line 798
    la	$t9,sub_0f120000
.L0f11dc84:
    sd	$t2,96($sp)
    sd	$ra,80($sp)
    # Line 782
    bal gl_init_texturing
    move	$a0,$v0
    ld	$t2,96($sp)
    b	.L0f11db64
    ld	$ra,80($sp)
.L0f11dca0:
    # Line 772
    li	$a1,2
    li	$a0,55
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f030000
    sd	$ra,80($sp)
    jalr	$t9
    lw	$a2,-21520($a2)
    ld	$gp,56($sp)
    # Line 773
    ld	$ra,80($sp)
    ld	$s1,72($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end gl_g_texdef3d

# Function: verifyParams
# Declared: Line 834 (Source lines: 835-949)
# Address: 0x0f11dcd4 - 0x0f11e044 (Size: 880 bytes, Frame: 240)
.ent verifyParams
verifyParams:
    # Line 835
    li	$v0,3
    lw	$at,28($a0)
    addiu	$sp,$sp,-368
    sd	$s0,320($sp)
    beq	$at,$v0,.L0f11df20
    move	$s0,$a0
.L0f11dcec:
    # Line 849
    lw	$a3,84($s0)
.L0f11dcf0:
    sd	$s2,336($sp)
    li	$s2,771
    beql	$a3,$s2,.L0f11dd1c
    # Line 851
    lw	$at,112($s0)
    # Line 849
    lw	$v1,88($s0)
    beql	$v1,$s2,.L0f11dd1c
    # Line 851
    lw	$at,112($s0)
    # Line 849
    lw	$a1,92($s0)
    bne	$a1,$s2,.L0f11dd74
    # Line 856
    move	$a0,$a3
    # Line 851
    lw	$at,112($s0)
.L0f11dd1c:
    lw	$v1,120($s0)
    subu	$v1,$v1,$at
    addiu	$v1,$v1,1
    # Line 852
    div	$zero,$at,$v1
    # Line 853
    lw	$a1,124($s0)
    lw	$at,116($s0)
    # Line 852
    mflo	$v0
    # Line 853
    subu	$a1,$a1,$at
    addiu	$a1,$a1,1
    # Line 854
    div	$zero,$at,$a1
    sd	$s1,328($sp)
    # Line 852
    teq	$v1,$zero,0x7
    # Line 851
    sw	$v1,400($s0)
    # Line 854
    teq	$a1,$zero,0x7
    # Line 853
    sw	$a1,408($s0)
    # Line 852
    sw	$v0,404($s0)
    # Line 850
    li	$at,1
    sw	$at,396($s0)
    # Line 854
    mflo	$at
    nop
    sw	$at,412($s0)
    # Line 856
    move	$a0,$a3
.L0f11dd74:
    sd	$s1,328($sp)
    li	$s1,769
    beq	$a3,$s1,.L0f11ddd0
    li	$a1,770
    beql	$a0,$a1,.L0f11ddd4
    # Line 873
    lw	$a3,88($s0)
    # Line 856
    beq	$a0,$s2,.L0f11ddd0
    # Line 866
    addiu	$a0,$sp,0
    sd	$ra,344($sp)
    la	$a1,sub_0f020000
    # Line 864
    la	$a2,sub_0f030000
    # Line 866
    la	$t9,sprintf
    addiu	$a1,$a1,22152
    # Line 864
    addiu	$a2,$a2,-21944
    # Line 866
    jalr	$t9
    lw	$a2,420($a2)
    # Line 868
    la	$t9,gl_ErrorHandler
    addiu	$a2,$sp,0
    li	$a1,2
    jalr	$t9
    li	$a0,91
    # Line 870
    sw	$s1,84($s0)
    ld	$ra,344($sp)
.L0f11ddd0:
    # Line 873
    lw	$a3,88($s0)
.L0f11ddd4:
    beq	$a3,$s1,.L0f11de30
    move	$a0,$a3
    li	$at,770
    beql	$a0,$at,.L0f11de34
    # Line 890
    lw	$a0,92($s0)
    # Line 873
    beq	$a0,$s2,.L0f11de30
    # Line 883
    addiu	$a0,$sp,80
    sd	$ra,344($sp)
    la	$a1,sub_0f020000
    la	$a2,sub_0f030000
    la	$t9,sprintf
    addiu	$a1,$a1,22192
    addiu	$a2,$a2,-21944
    jalr	$t9
    lw	$a2,420($a2)
    # Line 885
    la	$t9,gl_ErrorHandler
    addiu	$a2,$sp,80
    li	$a1,2
    jalr	$t9
    li	$a0,91
    ld	$ra,344($sp)
    # Line 887
    li	$a3,769
    sw	$a3,88($s0)
.L0f11de30:
    # Line 890
    lw	$a0,92($s0)
.L0f11de34:
    beq	$a0,$s1,.L0f11de88
    li	$at,770
    beql	$a0,$at,.L0f11de8c
    # Line 906
    lw	$at,384($s0)
    # Line 890
    beq	$a0,$s2,.L0f11de88
    # Line 900
    addiu	$a0,$sp,160
    sd	$ra,344($sp)
    la	$a1,sub_0f020000
    la	$s2,sub_0f030000
    la	$t9,sprintf
    addiu	$a1,$a1,22232
    addiu	$s2,$s2,-21944
    jalr	$t9
    lw	$a2,420($s2)
    # Line 902
    la	$t9,gl_ErrorHandler
    addiu	$a2,$sp,160
    li	$a1,2
    jalr	$t9
    li	$a0,91
    # Line 904
    sw	$s1,92($s0)
    ld	$ra,344($sp)
.L0f11de88:
    # Line 906
    lw	$at,384($s0)
.L0f11de8c:
    ld	$s1,328($sp)
    # Line 913
    li	$v1,2
    # Line 906
    beqz	$at,.L0f11dec4
    ld	$s2,336($sp)
    # Line 913
    lw	$a0,32($s0)
    li	$v0,1
    beq	$a0,$v0,.L0f11df3c
    li	$at,4
    beq	$a0,$v1,.L0f11df90
    li	$a1,3
    beql	$a0,$a1,.L0f11dfe4
    # Line 932
    lw	$a3,132($s0)
    # Line 913
    beql	$a0,$at,.L0f11ded0
    # Line 940
    lw	$a3,132($s0)
.L0f11dec4:
    # Line 949
    ld	$s0,320($sp)
    jr	$ra
    addiu	$sp,$sp,368
.L0f11ded0:
    # Line 940
    li	$v0,1648
    beq	$a3,$v0,.L0f11dec4
    # Line 941
    addiu	$a0,$sp,240
    sd	$ra,344($sp)
    la	$a1,sub_0f020000
    la	$a2,sub_0f030000
    la	$t9,sprintf
    addiu	$a1,$a1,22272
    addiu	$a2,$a2,-21944
    jalr	$t9
    lw	$a2,420($a2)
    # Line 943
    la	$t9,gl_ErrorHandler
    addiu	$a2,$sp,240
    li	$a1,2
    jalr	$t9
    li	$a0,91
    li	$ra,1648
    # Line 944
    sw	$ra,132($s0)
    b	.L0f11dec4
    ld	$ra,344($sp)
.L0f11df20:
    # Line 843
    lw	$a0,52($s0)
    li	$at,272
    beq	$a0,$at,.L0f11e034
    li	$a2,544
    sd	$s2,336($sp)
.L0f11df34:
    b	.L0f11dcec
    # Line 845
    sw	$a2,52($s0)
.L0f11df3c:
    # Line 916
    lw	$a3,132($s0)
    li	$v0,1552
    beq	$a3,$v0,.L0f11dec4
    # Line 917
    addiu	$a0,$sp,240
    sd	$ra,344($sp)
    la	$a1,sub_0f020000
    la	$a2,sub_0f030000
    la	$t9,sprintf
    addiu	$a1,$a1,22272
    addiu	$a2,$a2,-21944
    jalr	$t9
    lw	$a2,420($a2)
    # Line 919
    la	$t9,gl_ErrorHandler
    addiu	$a2,$sp,240
    li	$a1,2
    jalr	$t9
    li	$a0,91
    li	$ra,1552
    # Line 920
    sw	$ra,132($s0)
    b	.L0f11dec4
    ld	$ra,344($sp)
.L0f11df90:
    # Line 924
    lw	$a3,132($s0)
    li	$at,1616
    beq	$a3,$at,.L0f11dec4
    # Line 925
    addiu	$a0,$sp,240
    sd	$ra,344($sp)
    la	$a1,sub_0f020000
    la	$a2,sub_0f030000
    la	$t9,sprintf
    addiu	$a1,$a1,22272
    addiu	$a2,$a2,-21944
    jalr	$t9
    lw	$a2,420($a2)
    # Line 927
    la	$t9,gl_ErrorHandler
    addiu	$a2,$sp,240
    li	$a1,2
    jalr	$t9
    li	$a0,91
    li	$ra,1616
    # Line 928
    sw	$ra,132($s0)
    b	.L0f11dec4
    ld	$ra,344($sp)
.L0f11dfe4:
    # Line 932
    li	$at,1664
    beq	$a3,$at,.L0f11dec4
    # Line 933
    addiu	$a0,$sp,240
    sd	$ra,344($sp)
    la	$a1,sub_0f020000
    la	$a2,sub_0f030000
    la	$t9,sprintf
    addiu	$a1,$a1,22272
    addiu	$a2,$a2,-21944
    jalr	$t9
    lw	$a2,420($a2)
    # Line 935
    la	$t9,gl_ErrorHandler
    addiu	$a2,$sp,240
    li	$a1,2
    jalr	$t9
    li	$a0,91
    li	$ra,1664
    # Line 936
    sw	$ra,132($s0)
    b	.L0f11dec4
    ld	$ra,344($sp)
.L0f11e034:
    # Line 843
    beql	$a0,$a2,.L0f11dcf0
    # Line 849
    lw	$a3,84($s0)
    b	.L0f11df34
    sd	$s2,336($sp)
.end verifyParams

# Function: lg
# Declared: Line 955 (Source lines: 957-960)
# Address: 0x0f11e044 - 0x0f11e088 (Size: 68 bytes, Frame: 0)
.ent lg
lg:
    # Line 958
    srl	$a3,$a0,0x1
    beqz	$a3,.L0f11e080
    # Line 957
    move	$v0,$zero
    # Line 959
    addiu	$v0,$v0,1
.L0f11e054:
    # Line 958
    srl	$a3,$a3,0x1
    beqz	$a3,.L0f11e080
    nop
    # Line 959
    addiu	$v0,$v0,1
    # Line 958
    srl	$a3,$a3,0x1
    beqz	$a3,.L0f11e080
    nop
    # Line 959
    addiu	$v0,$v0,1
    # Line 958
    srl	$a3,$a3,0x1
    bnezl	$a3,.L0f11e054
    # Line 959
    addiu	$v0,$v0,1
.L0f11e080:
    # Line 960
    jr	$ra
    nop
.end lg

# Function: gl_newtexture
# Declared: Line 964 (Source lines: 965-979)
# Address: 0x0f11e088 - 0x0f11e100 (Size: 120 bytes, Frame: 32)
.ent gl_newtexture
gl_newtexture:
    # Line 965
    move	$a1,$a0
    # Line 970
    li	$a0,432
    # Line 965
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 970
    la	$a2,sub_0f030000
    la	$t9,gl_malloc
    sll	$a1,$a1,0x2
    addiu	$a2,$a2,-21944
    addu	$a1,$a1,$a2
    jalr	$t9
    lw	$a1,416($a1)
    beqz	$v0,.L0f11e0ec
    move	$s8,$v0
    # Line 973
    la	$t9,__iglooGetId
.L0f11e0c4:
    jalr	$t9
    nop
    # Line 977
    sw	$zero,20($s8)
    # Line 976
    sw	$zero,12($s8)
    # Line 973
    sw	$v0,8($s8)
    # Line 979
    ld	$ra,0($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0f11e0ec:
    # Line 972
    la	$t9,exit
    jalr	$t9
    li	$a0,1
    b	.L0f11e0c4
    # Line 973
    la	$t9,__iglooGetId
.end gl_newtexture

# Function: gl_freetexture
# Declared: Line 982 (Source lines: 983-1016)
# Address: 0x0f11e100 - 0x0f11e1b0 (Size: 176 bytes, Frame: 32)
.ent gl_freetexture
gl_freetexture:
    # Line 985
    lw	$at,12($a0)
    # Line 983
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 985
    beqz	$at,.L0f11e180
    # Line 983
    move	$s0,$a0
    # Line 985
    la	$v0,gl_iglooUseTexObj
.L0f11e118:
    lw	$v0,0($v0)
    li	$v1,1
    beq	$v0,$v1,.L0f11e194
    sd	$ra,8($sp)
    # Line 1006
    la	$t9,glDeleteLists
    li	$a1,1
    jalr	$t9
    lw	$a0,20($s0)
    # Line 1007
    sw	$zero,20($s0)
    ld	$ra,8($sp)
.L0f11e140:
    # Line 999
    lw	$a2,428($s0)
.L0f11e144:
    beqz	$a2,.L0f11e164
    sd	$ra,8($sp)
    # Line 1012
    la	$t9,free
    jalr	$t9
    lw	$a0,20($a2)
    # Line 1013
    la	$t9,free
    jalr	$t9
    lw	$a0,428($s0)
.L0f11e164:
    # Line 1015
    la	$t9,free
    jalr	$t9
    move	$a0,$s0
    ld	$ra,8($sp)
    ld	$s0,0($sp)
    # Line 1016
    jr	$ra
    addiu	$sp,$sp,32
.L0f11e180:
    # Line 985
    lw	$v1,20($s0)
    beqzl	$v1,.L0f11e144
    # Line 999
    lw	$a2,428($s0)
    b	.L0f11e118
    # Line 985
    la	$v0,gl_iglooUseTexObj
.L0f11e194:
    # Line 1001
    la	$t9,glDeleteTexturesEXT
    addiu	$a1,$s0,12
    jalr	$t9
    li	$a0,1
    # Line 1002
    sw	$zero,12($s0)
    b	.L0f11e140
    ld	$ra,8($sp)
.end gl_freetexture

# Function: verifyImage
# Declared: Line 1026 (Source lines: 1027-1121)
# Address: 0x0f11e1b0 - 0x0f11e410 (Size: 608 bytes, Frame: 208)
.ent verifyImage
verifyImage:
    # Line 1027
    addiu	$sp,$sp,-80
    sd	$s0,32($sp)
    move	$s0,$a0
    sd	$s2,48($sp)
    # Line 1035
    lw	$s2,44($a0)
    sd	$s1,16($sp)
    # Line 1034
    lw	$s1,40($a0)
    # Line 1037
    la	$t9,__iglooGetGraphicsType
    sd	$s3,24($sp)
    sd	$ra,40($sp)
    jalr	$t9
    # Line 1033
    lw	$s3,36($a0)
    # Line 1037
    lw	$at,28($s0)
    li	$a4,5
    li	$v1,2
    beq	$at,$v1,.L0f11e300
    # Line 1079
    move	$a0,$s3
    sw	$s2,8($sp)
    sw	$s1,4($sp)
    sw	$s3,0($sp)
    lw	$a4,4($sp)
.L0f11e204:
    # Line 1082
    li	$at,4
    # Line 1079
    bne	$a4,$s1,.L0f11e22c
    # Line 1082
    lw	$a5,8($sp)
    bnel	$a5,$s2,.L0f11e230
    # Line 1088
    lw	$a4,128($s0)
    # Line 1082
    lw	$v0,32($s0)
    beq	$v0,$at,.L0f11e394
    li	$v1,1
    beql	$v0,$v1,.L0f11e398
    # Line 1088
    ld	$s0,32($sp)
.L0f11e22c:
    lw	$a4,128($s0)
.L0f11e230:
    li	$a5,1808
    bne	$a4,$a5,.L0f11e2d0
    # Line 1119
    li	$a1,2
    # Line 1088
    lw	$at,24($s0)
    beqz	$at,.L0f11e2a0
    # Line 1099
    la	$t9,gl_limgalloc
    lw	$a2,32($s0)
    bal gl_limgalloc
    lw	$a1,4($sp)
    move	$s1,$v0
    # Line 1100
    lw	$a6,32($s0)
    lw	$a5,4($sp)
    lw	$a4,0($sp)
    lw	$a3,40($s0)
    la	$t9,gl_limgzoom
    lw	$a2,36($s0)
    move	$a1,$v0
    bal gl_limgzoom
    lw	$a0,24($s0)
    lw	$v1,424($s0)
    beqz	$v1,.L0f11e298
    # Line 1107
    la	$t9,gl_free
    la	$a1,sub_0f020000
    lw	$a0,24($s0)
    jalr	$t9
    addiu	$a1,$a1,22328
.L0f11e298:
    # Line 1110
    sw	$s1,24($s0)
    lw	$a0,0($sp)
.L0f11e2a0:
    # Line 1112
    sw	$a0,36($s0)
    # Line 1113
    lw	$v1,4($sp)
    sw	$v1,40($s0)
    # Line 1114
    lw	$at,0($sp)
    addiu	$at,$at,-1
    sw	$at,120($s0)
    # Line 1115
    lw	$a4,4($sp)
    # Line 1116
    li	$a5,1
    sw	$a5,424($s0)
    # Line 1115
    addiu	$a4,$a4,-1
    # Line 1116
    b	.L0f11e2e4
    # Line 1115
    sw	$a4,124($s0)
.L0f11e2d0:
    # Line 1119
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    li	$a0,91
    jalr	$t9
    addiu	$a2,$a2,22072
.L0f11e2e4:
    # Line 1121
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    ld	$ra,40($sp)
    ld	$s2,48($sp)
    ld	$s3,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f11e300:
    # Line 1037
    beq	$v0,$a4,.L0f11e3e0
    # Line 1043
    li	$at,4
    li	$a5,3
    beql	$v0,$a5,.L0f11e358
    lw	$at,4100($zero)
    beq	$v0,$at,.L0f11e354
    # Line 1066
    move	$a0,$s0
    move	$a1,$s3
    move	$a2,$s1
    move	$a3,$s2
    la	$t9,sub_0f120000
    addiu	$a6,$sp,8
    addiu	$a5,$sp,4
    addiu	$t9,$t9,-5000
    bal gl_g_texdef3d
    addiu	$a4,$sp,0
    # Line 1073
    lw	$a0,0($sp)
.L0f11e344:
    # Line 1079
    bnel	$s3,$a0,.L0f11e230
    # Line 1088
    lw	$a4,128($s0)
    b	.L0f11e204
    # Line 1079
    lw	$a4,4($sp)
.L0f11e354:
    # Line 1043
    lw	$at,4100($zero)
.L0f11e358:
    lw	$at,20($at)
    lw	$at,16($at)
    beqz	$at,.L0f11e3b0
    # Line 1048
    move	$a0,$s0
    move	$a1,$s3
    move	$a2,$s1
    move	$a3,$s2
    la	$t9,sub_0f120000
    addiu	$a6,$sp,8
    addiu	$a5,$sp,4
    addiu	$t9,$t9,-5000
    bal gl_g_texdef3d
    addiu	$a4,$sp,0
    b	.L0f11e344
    # Line 1073
    lw	$a0,0($sp)
.L0f11e394:
    # Line 1088
    ld	$s0,32($sp)
.L0f11e398:
    ld	$s1,16($sp)
    ld	$ra,40($sp)
    ld	$s2,48($sp)
    ld	$s3,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f11e3b0:
    # Line 1059
    move	$a0,$s0
    move	$a1,$s3
    move	$a2,$s1
    move	$a3,$s2
    la	$t9,sub_0f120000
    addiu	$a6,$sp,8
    addiu	$a5,$sp,4
    addiu	$t9,$t9,-3604
    bal gl_g_texdef3d
    addiu	$a4,$sp,0
    b	.L0f11e344
    # Line 1073
    lw	$a0,0($sp)
.L0f11e3e0:
    move	$a0,$s0
    move	$a1,$s3
    move	$a2,$s1
    move	$a3,$s2
    la	$t9,sub_0f120000
    addiu	$a6,$sp,8
    addiu	$a5,$sp,4
    addiu	$t9,$t9,-6648
    bal gl_g_texdef3d
    addiu	$a4,$sp,0
    b	.L0f11e344
    lw	$a0,0($sp)
.end verifyImage

# Function: __iglooProxyQueryAllMipMapLevels
# Declared: Line 1127 (Source lines: 1129-1147)
# Address: 0x0f11e410 - 0x0f11e608 (Size: 504 bytes, Frame: 144)
.ent __iglooProxyQueryAllMipMapLevels
__iglooProxyQueryAllMipMapLevels:
    # Line 1132
    slti	$at,$a0,2
    # Line 1129
    addiu	$sp,$sp,-144
    sd	$s2,88($sp)
    move	$s2,$a0
    sd	$s3,80($sp)
    move	$s3,$a2
    sd	$s6,72($sp)
    move	$s6,$a3
    sd	$s5,48($sp)
    move	$s5,$a4
    sd	$s7,40($sp)
    move	$s7,$a5
    sd	$s1,56($sp)
    move	$s1,$a1
    sd	$s0,64($sp)
    # Line 1132
    beqz	$at,.L0f11e460
    move	$s0,$zero
    slti	$v0,$s1,2
    bnez	$v0,.L0f11e52c
    sd	$s4,32($sp)
.L0f11e460:
    sd	$ra,24($sp)
    sd	$s4,32($sp)
    b	.L0f11e480
    addu	$s4,$s3,$s3
.L0f11e470:
    li	$a1,1
.L0f11e474:
    slti	$v1,$a0,2
    bnez	$v1,.L0f11e518
    move	$s1,$a1
.L0f11e480:
    # Line 1134
    sw	$zero,4($sp)
.L0f11e484:
    move	$a7,$s7
    move	$a6,$s5
    move	$a5,$s3
    addu	$a4,$s4,$s1
    addu	$a3,$s4,$s2
    la	$t9,glTexImage2D
    move	$a2,$s6
    move	$a1,$s0
    jalr	$t9
    li	$a0,0x8064
    # Line 1136
    addiu	$a3,$sp,16
    la	$t9,glGetTexLevelParameteriv
    li	$a2,4096
    move	$a1,$s0
    jalr	$t9
    li	$a0,0x8064
    lw	$t0,16($sp)
    # Line 1132
    srl	$a1,$s2,0x1f
    srl	$a2,$s1,0x1f
    # Line 1136
    beqz	$t0,.L0f11e5b8
    # Line 1132
    addu	$a2,$a2,$s1
    addiu	$s0,$s0,1
    addu	$a1,$a1,$s2
    sra	$a1,$a1,0x1
    slti	$at,$a1,2
    bnez	$at,.L0f11e4fc
    sra	$a2,$a2,0x1
    move	$a0,$a1
    b	.L0f11e500
    nop
.L0f11e4fc:
    li	$a0,1
.L0f11e500:
    slti	$t0,$a2,2
    bnez	$t0,.L0f11e470
    move	$s2,$a0
    move	$a1,$a2
    b	.L0f11e474
    nop
.L0f11e518:
    slti	$t0,$s1,2
    beqzl	$t0,.L0f11e484
    # Line 1134
    sw	$zero,4($sp)
    b	.L0f11e538
    # Line 1141
    sw	$zero,4($sp)
.L0f11e52c:
    sd	$ra,24($sp)
    # Line 1132
    addu	$s4,$s3,$s3
    # Line 1141
    sw	$zero,4($sp)
.L0f11e538:
    move	$a7,$s7
    move	$a6,$s5
    move	$a5,$s3
    move	$a2,$s6
    move	$a1,$s0
    la	$t9,glTexImage2D
    li	$a0,0x8064
    addiu	$a3,$s4,1
    jalr	$t9
    move	$a4,$a3
    # Line 1143
    addiu	$a3,$sp,16
    li	$a2,4096
    la	$t9,glGetTexLevelParameteriv
    move	$a1,$s0
    li	$a0,0x8064
    jalr	$t9
    ld	$s4,32($sp)
    # Line 1147
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$s3,80($sp)
    ld	$s6,72($sp)
    # Line 1143
    lw	$at,16($sp)
    # Line 1146
    ld	$s2,88($sp)
    ld	$s7,40($sp)
    # Line 1143
    beqz	$at,.L0f11e5e8
    ld	$ra,24($sp)
    # Line 1147
    ld	$s7,40($sp)
    li	$v0,1
    ld	$s5,48($sp)
    ld	$s2,88($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f11e5b8:
    # Line 1139
    move	$v0,$zero
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$s2,88($sp)
    ld	$s3,80($sp)
    ld	$s4,32($sp)
    ld	$s5,48($sp)
    ld	$ra,24($sp)
    ld	$s6,72($sp)
    ld	$s7,40($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f11e5e8:
    # Line 1146
    move	$v0,$zero
    ld	$s5,48($sp)
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$s3,80($sp)
    ld	$s6,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __iglooProxyQueryAllMipMapLevels

# Function: compute_new_image_sizeRE
# Declared: Line 1152 (Source lines: 1154-1300)
# Address: 0x0f11e608 - 0x0f11eadc (Size: 1236 bytes, Frame: 192)
.ent compute_new_image_sizeRE
compute_new_image_sizeRE:
    # Line 1154
    addiu	$sp,$sp,-192
    sd	$s0,8($sp)
    sd	$s8,64($sp)
    move	$s8,$a1
    sd	$s4,96($sp)
    move	$s4,$a2
    sd	$s5,48($sp)
    move	$s5,$a3
    sd	$a4,72($sp)
    sd	$s7,80($sp)
    move	$s7,$a5
    sd	$s6,104($sp)
    move	$s6,$a6
    sd	$s1,56($sp)
    move	$s1,$a0
    sd	$s3,112($sp)
    la	$s3,sub_0f120000
    # Line 1165
    move	$a0,$a1
    sd	$ra,88($sp)
    # Line 1154
    addiu	$s3,$s3,-8124
    # Line 1165
    bal gl_g_texdef3d
    move	$t9,$s3
    sd	$s2,16($sp)
    move	$s0,$v0
    # Line 1166
    move	$a0,$s4
    bal gl_g_texdef3d
    move	$t9,$s3
    sd	$s6,40($sp)
    move	$s2,$v0
    # Line 1167
    move	$a0,$s5
    bal gl_g_texdef3d
    move	$t9,$s3
    move	$a1,$v0
    move	$v1,$v0
    sd	$v0,32($sp)
    # Line 1169
    li	$s5,1
    sllv	$s6,$s5,$s0
    subu	$v0,$s8,$s6
    sll	$a0,$s6,0x1
    subu	$at,$a0,$s8
    # Line 1175
    sllv	$s8,$s5,$s2
    # Line 1169
    slt	$at,$at,$v0
    # Line 1175
    sll	$v0,$s8,0x1
    # Line 1169
    beqz	$at,.L0f11e6c4
    # Line 1175
    subu	$t0,$s4,$s8
    # Line 1171
    move	$s6,$a0
    # Line 1172
    addiu	$s0,$s0,1
.L0f11e6c4:
    # Line 1175
    subu	$a7,$v0,$s4
    slt	$a7,$a7,$t0
    beqzl	$a7,.L0f11e6e0
    # Line 1195
    lw	$a0,48($s1)
    # Line 1177
    move	$s8,$v0
    # Line 1178
    addiu	$s2,$s2,1
    # Line 1195
    lw	$a0,48($s1)
.L0f11e6e0:
    move	$t9,$s3
    # Line 1183
    addu	$s4,$s0,$s2
    # Line 1181
    sllv	$t8,$s5,$a1
    sd	$t8,24($sp)
    # Line 1195
    bal gl_g_texdef3d
    # Line 1183
    addu	$s4,$s4,$a1
    # Line 1199
    lw	$a1,132($s1)
    # Line 1195
    move	$a2,$v0
    move	$a3,$v0
    # Line 1199
    slti	$at,$a1,1616
    bnez	$at,.L0f11e724
    # Line 1196
    addu	$a0,$v0,$v0
    # Line 1199
    slti	$v1,$a1,1617
    beqz	$v1,.L0f11e8a8
    slti	$t0,$a1,1664
.L0f11e71c:
    # Line 1210
    b	.L0f11e740
    # Line 1209
    li	$a1,1
.L0f11e724:
    # Line 1199
    slti	$a7,$a1,1584
    bnez	$a7,.L0f11e88c
    slti	$t0,$a1,1585
    bnez	$t0,.L0f11e8a0
    li	$at,1600
    beq	$a1,$at,.L0f11e8a0
    # Line 1214
    lw	$a1,0($sp)
.L0f11e740:
    # Line 1222
    lw	$v1,56($s1)
    li	$t0,289
    li	$a5,576
    beq	$v1,$a5,.L0f11e798
    # Line 1219
    subu	$a0,$a0,$a1
    # Line 1222
    lw	$a7,60($s1)
    beq	$a7,$a5,.L0f11e798
    li	$v1,291
    lw	$a1,52($s1)
    beq	$a1,$t0,.L0f11e798
    li	$a7,292
    li	$at,290
    beql	$a1,$at,.L0f11e79c
    # Line 1230
    addiu	$a0,$a0,-1
    # Line 1222
    beql	$a1,$v1,.L0f11e79c
    # Line 1230
    addiu	$a0,$a0,-1
    # Line 1222
    beq	$a1,$a7,.L0f11e798
    li	$t0,640
    beq	$a1,$t0,.L0f11e798
    li	$at,288
    bne	$a1,$at,.L0f11e7a0
    # Line 1233
    slt	$t0,$s2,$a2
.L0f11e798:
    # Line 1230
    addiu	$a0,$a0,-1
.L0f11e79c:
    # Line 1233
    slt	$t0,$s2,$a2
.L0f11e7a0:
    # Line 1230
    slt	$v1,$a0,$s4
    bnez	$v1,.L0f11e838
    # Line 1258
    subu	$at,$s4,$a0
    # Line 1230
    slt	$a7,$s0,$v0
    # Line 1242
    ld	$s3,112($sp)
    ld	$ra,88($sp)
    ld	$at,32($sp)
    ld	$s8,64($sp)
    # Line 1230
    beqz	$a7,.L0f11e7d4
    # Line 1235
    slt	$at,$at,$a3
    # Line 1233
    sllv	$a0,$s5,$s0
    b	.L0f11e7dc
    ld	$s0,8($sp)
.L0f11e7d4:
    sllv	$a0,$s5,$v0
    ld	$s0,8($sp)
.L0f11e7dc:
    # Line 1242
    ld	$s1,56($sp)
    ld	$s4,96($sp)
    # Line 1233
    beqz	$t0,.L0f11e7f8
    # Line 1241
    ld	$a7,40($sp)
    # Line 1235
    sllv	$v0,$s5,$s2
    b	.L0f11e800
    ld	$s2,16($sp)
.L0f11e7f8:
    sllv	$v0,$s5,$a2
    ld	$s2,16($sp)
.L0f11e800:
    # Line 1242
    ld	$s6,104($sp)
    # Line 1235
    beqz	$at,.L0f11e818
    ld	$t0,72($sp)
    ld	$a1,32($sp)
    # Line 1237
    b	.L0f11e81c
    sllv	$a1,$s5,$a1
.L0f11e818:
    sllv	$a1,$s5,$a3
.L0f11e81c:
    # Line 1242
    ld	$s5,48($sp)
    # Line 1239
    sw	$a0,0($t0)
    # Line 1240
    sw	$v0,0($s7)
    # Line 1242
    ld	$s7,80($sp)
    addiu	$sp,$sp,192
    jr	$ra
    # Line 1241
    sw	$a1,0($a7)
.L0f11e838:
    # Line 1249
    move	$a1,$s6
    # Line 1250
    move	$a3,$s8
    # Line 1258
    srl	$v1,$at,0x1f
    addu	$v1,$v1,$at
    sra	$v1,$v1,0x1
    # Line 1259
    subu	$at,$at,$v1
    # Line 1258
    subu	$s0,$s0,$v1
    # Line 1259
    bltz	$s0,.L0f11e9b0
    subu	$s2,$s2,$at
    # Line 1266
    bltz	$s2,.L0f11ea18
    # Line 1275
    slt	$a7,$a2,$s2
    beqz	$a7,.L0f11e92c
    # Line 1284
    slt	$at,$v0,$s0
    ld	$s0,8($sp)
    # Line 1275
    subu	$v0,$a0,$a2
    sllv	$v0,$s5,$v0
    slt	$t0,$v0,$a1
    beqz	$t0,.L0f11e8e4
    ld	$s2,16($sp)
    # Line 1280
    b	.L0f11e8e8
    move	$a0,$v0
.L0f11e88c:
    # Line 1199
    slti	$v1,$a1,1568
    bnez	$v1,.L0f11e99c
    slti	$a7,$a1,1569
    beqz	$a7,.L0f11e740
    # Line 1214
    lw	$a1,0($sp)
.L0f11e8a0:
    # Line 1206
    b	.L0f11e740
    # Line 1205
    move	$a1,$zero
.L0f11e8a8:
    # Line 1199
    bnez	$t0,.L0f11e8c8
    slti	$at,$a1,1665
    bnez	$at,.L0f11e8dc
    li	$v1,1680
    bne	$a1,$v1,.L0f11e740
    # Line 1214
    lw	$a1,0($sp)
    b	.L0f11e8a0
    nop
.L0f11e8c8:
    # Line 1199
    slti	$a7,$a1,1648
    bnez	$a7,.L0f11ea7c
    slti	$t0,$a1,1649
    beqz	$t0,.L0f11e740
    # Line 1214
    lw	$a1,0($sp)
.L0f11e8dc:
    b	.L0f11e740
    # Line 1213
    li	$a1,2
.L0f11e8e4:
    # Line 1280
    move	$a0,$a1
.L0f11e8e8:
    # Line 1284
    ld	$s6,104($sp)
    ld	$s8,64($sp)
    ld	$ra,88($sp)
    # Line 1282
    sllv	$s4,$s5,$a2
    # Line 1281
    ld	$s5,72($sp)
    # Line 1283
    ld	$s3,40($sp)
    ld	$s1,24($sp)
    # Line 1281
    sw	$a0,0($s5)
    # Line 1284
    ld	$s5,48($sp)
    # Line 1282
    sw	$s4,0($s7)
    # Line 1284
    ld	$s4,96($sp)
    ld	$s7,80($sp)
    # Line 1283
    sw	$s1,0($s3)
    # Line 1284
    ld	$s1,56($sp)
    ld	$s3,112($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0f11e92c:
    beqz	$at,.L0f11ea90
    # Line 1300
    ld	$s1,56($sp)
    ld	$s0,8($sp)
    # Line 1284
    subu	$a1,$a0,$v0
    sllv	$a1,$s5,$a1
    slt	$v1,$a1,$a3
    beqz	$v1,.L0f11e954
    ld	$s2,16($sp)
    # Line 1289
    b	.L0f11e958
    move	$a0,$a1
.L0f11e954:
    move	$a0,$a3
.L0f11e958:
    # Line 1293
    ld	$s4,96($sp)
    # Line 1290
    sllv	$s1,$s5,$v0
    # Line 1293
    ld	$s5,48($sp)
    ld	$s6,104($sp)
    ld	$s8,64($sp)
    # Line 1292
    ld	$a7,24($sp)
    # Line 1290
    ld	$s3,72($sp)
    # Line 1292
    ld	$t0,40($sp)
    ld	$ra,88($sp)
    # Line 1290
    sw	$s1,0($s3)
    # Line 1293
    ld	$s1,56($sp)
    ld	$s3,112($sp)
    # Line 1291
    sw	$a0,0($s7)
    # Line 1293
    ld	$s7,80($sp)
    addiu	$sp,$sp,192
    jr	$ra
    # Line 1292
    sw	$a7,0($t0)
.L0f11e99c:
    # Line 1199
    li	$at,1552
    bne	$a1,$at,.L0f11e740
    # Line 1214
    lw	$a1,0($sp)
    b	.L0f11e8a0
    nop
.L0f11e9b0:
    ld	$s0,8($sp)
    # Line 1259
    subu	$v0,$a0,$a2
    sllv	$v0,$s5,$v0
    slt	$v1,$v0,$a1
    beqz	$v1,.L0f11e9d0
    ld	$s2,16($sp)
    # Line 1262
    b	.L0f11e9d4
    move	$a0,$v0
.L0f11e9d0:
    move	$a0,$a1
.L0f11e9d4:
    # Line 1266
    ld	$s3,112($sp)
    ld	$s4,96($sp)
    # Line 1264
    sllv	$t0,$s5,$a2
    # Line 1266
    ld	$s5,48($sp)
    ld	$s6,104($sp)
    ld	$s8,64($sp)
    # Line 1265
    ld	$v1,24($sp)
    # Line 1263
    ld	$s1,72($sp)
    # Line 1265
    ld	$a7,40($sp)
    ld	$ra,88($sp)
    # Line 1263
    sw	$a0,0($s1)
    # Line 1266
    ld	$s1,56($sp)
    # Line 1264
    sw	$t0,0($s7)
    # Line 1266
    ld	$s7,80($sp)
    addiu	$sp,$sp,192
    jr	$ra
    # Line 1265
    sw	$v1,0($a7)
.L0f11ea18:
    ld	$s0,8($sp)
    # Line 1266
    slt	$at,$s6,$a3
    beqz	$at,.L0f11ea34
    ld	$s2,16($sp)
    # Line 1271
    subu	$a1,$a0,$v0
    b	.L0f11ea38
    sllv	$a1,$s5,$a1
.L0f11ea34:
    move	$a1,$a3
.L0f11ea38:
    # Line 1275
    ld	$s4,96($sp)
    # Line 1272
    sllv	$s1,$s5,$v0
    # Line 1275
    ld	$s5,48($sp)
    ld	$s6,104($sp)
    ld	$s8,64($sp)
    # Line 1274
    ld	$a7,24($sp)
    # Line 1272
    ld	$s3,72($sp)
    # Line 1274
    ld	$t0,40($sp)
    ld	$ra,88($sp)
    # Line 1272
    sw	$s1,0($s3)
    # Line 1275
    ld	$s1,56($sp)
    ld	$s3,112($sp)
    # Line 1273
    sw	$a1,0($s7)
    # Line 1275
    ld	$s7,80($sp)
    addiu	$sp,$sp,192
    jr	$ra
    # Line 1274
    sw	$a7,0($t0)
.L0f11ea7c:
    # Line 1199
    li	$at,1632
    bne	$a1,$at,.L0f11e740
    # Line 1214
    lw	$a1,0($sp)
    b	.L0f11e71c
    nop
.L0f11ea90:
    # Line 1297
    sllv	$a7,$s5,$s2
    # Line 1300
    ld	$s2,16($sp)
    ld	$s3,112($sp)
    ld	$s4,96($sp)
    # Line 1296
    sllv	$t0,$s5,$s0
    # Line 1300
    ld	$s5,48($sp)
    ld	$s6,104($sp)
    ld	$s8,64($sp)
    # Line 1298
    ld	$v0,24($sp)
    # Line 1296
    ld	$s0,72($sp)
    # Line 1298
    ld	$v1,40($sp)
    ld	$ra,88($sp)
    # Line 1296
    sw	$t0,0($s0)
    # Line 1300
    ld	$s0,8($sp)
    # Line 1297
    sw	$a7,0($s7)
    # Line 1300
    ld	$s7,80($sp)
    addiu	$sp,$sp,192
    jr	$ra
    # Line 1298
    sw	$v0,0($v1)
.end compute_new_image_sizeRE

# Function: __iglooDoMipMap
# Declared: Line 1302 (Source lines: 1308-1329)
# Address: 0x0f11eadc - 0x0f11eb6c (Size: 144 bytes, Frame: 0)
.ent __iglooDoMipMap
__iglooDoMipMap:
    # Line 1308
    lw	$at,136($a0)
    # Line 1316
    li	$a3,576
    # Line 1308
    li	$v0,3840
    beq	$at,$v0,.L0f11eb5c
    lw	$a2,52($a0)
    # Line 1313
    lw	$v1,28($a0)
    li	$a1,3
    beq	$v1,$a1,.L0f11eb64
    # Line 1316
    move	$v0,$zero
    lw	$at,56($a0)
    # Line 1318
    li	$a1,290
    # Line 1316
    beq	$at,$a3,.L0f11eb54
    # Line 1318
    li	$v1,289
    # Line 1316
    lw	$v0,60($a0)
    beq	$v0,$a3,.L0f11eb54
    # Line 1318
    li	$at,291
    beq	$a2,$v1,.L0f11eb54
    li	$v0,292
    beq	$a2,$a1,.L0f11eb54
    li	$v1,640
    beq	$a2,$at,.L0f11eb54
    li	$a1,288
    beq	$a2,$v0,.L0f11eb54
    nop
    beq	$a2,$v1,.L0f11eb54
    # Line 1327
    move	$v0,$zero
    # Line 1318
    beq	$a2,$a1,.L0f11eb54
    nop
    # Line 1327
    jr	$ra
    nop
.L0f11eb54:
    # Line 1329
    jr	$ra
    li	$v0,1
.L0f11eb5c:
    # Line 1313
    jr	$ra
    move	$v0,$zero
.L0f11eb64:
    # Line 1316
    jr	$ra
    nop
.end __iglooDoMipMap

# Function: __iglooNeedsBorder
# Declared: Line 1333 (Source lines: 1334-1373)
# Address: 0x0f11eb6c - 0x0f11ec78 (Size: 268 bytes, Frame: 48)
.ent __iglooNeedsBorder
__iglooNeedsBorder:
    # Line 1334
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    # Line 1335
    la	$at,gl_wstatep
    # Line 1334
    move	$s0,$a0
    # Line 1338
    la	$t9,__iglooGetGraphicsType
    # Line 1335
    lw	$at,0($at)
    sd	$ra,8($sp)
    # Line 1338
    jalr	$t9
    sd	$at,0($sp)
    li	$v1,8
    beq	$v0,$v1,.L0f11ec2c
    # Line 1342
    li	$a1,2
    beq	$v0,$a1,.L0f11ec40
    ld	$ra,8($sp)
    # Line 1346
    lw	$a2,24($s0)
    beqz	$a2,.L0f11ec18
    ld	$a1,0($sp)
    # Line 1350
    lw	$at,28($s0)
    li	$v1,3
    beq	$at,$v1,.L0f11ec64
    ld	$ra,8($sp)
    # Line 1360
    lw	$v0,84($s0)
    li	$a0,771
    beq	$v0,$a0,.L0f11ec00
    li	$a3,770
    beql	$v0,$a3,.L0f11ec04
    lw	$a1,12108($a1)
    lw	$v0,88($s0)
    beql	$v0,$a0,.L0f11ec04
    lw	$a1,12108($a1)
    beql	$v0,$a3,.L0f11ec04
    lw	$a1,12108($a1)
    ld	$ra,8($sp)
    # Line 1373
    move	$v0,$zero
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f11ec00:
    # Line 1360
    lw	$a1,12108($a1)
.L0f11ec04:
    # Line 1366
    ld	$s0,16($sp)
    # Line 1360
    beqz	$a1,.L0f11ec50
    # Line 1366
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,48
.L0f11ec18:
    # Line 1350
    move	$v0,$zero
    ld	$ra,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f11ec2c:
    ld	$ra,8($sp)
    # Line 1342
    move	$v0,$zero
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f11ec40:
    # Line 1346
    move	$v0,$zero
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f11ec50:
    ld	$ra,8($sp)
    # Line 1369
    move	$v0,$zero
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f11ec64:
    # Line 1355
    move	$v0,$zero
    ld	$ra,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __iglooNeedsBorder

# Function: compute_new_image_size
# Declared: Line 1377 (Source lines: 1379-1550)
# Address: 0x0f11ec78 - 0x0f11f1ec (Size: 1396 bytes, Frame: 160)
.ent compute_new_image_size
compute_new_image_size:
    # Line 1379
    addiu	$sp,$sp,-288
    sd	$s1,208($sp)
    sd	$s2,184($sp)
    sd	$s0,96($sp)
    move	$s0,$a0
    sd	$s3,152($sp)
    move	$s3,$a1
    sd	$s6,160($sp)
    move	$s6,$a2
    sd	$s4,72($sp)
    move	$s4,$a3
    sd	$a4,80($sp)
    sd	$s8,176($sp)
    move	$s8,$a5
    sd	$a6,104($sp)
    # Line 1390
    la	$t9,__iglooGetGraphicsType
    sd	$s5,88($sp)
    sd	$ra,168($sp)
    jalr	$t9
    # Line 1382
    move	$s5,$zero
    sd	$s5,144($sp)
    # Line 1390
    la	$s1,sub_0f120000
    move	$s2,$v0
    # Line 1393
    move	$a0,$s3
    # Line 1390
    addiu	$s1,$s1,-8124
    # Line 1393
    bal gl_g_texdef3d
    move	$t9,$s1
    sd	$s2,136($sp)
    move	$s5,$v0
    # Line 1394
    move	$a0,$s6
    bal gl_g_texdef3d
    move	$t9,$s1
    sd	$s7,200($sp)
    move	$s2,$v0
    # Line 1395
    move	$a0,$s4
    bal gl_g_texdef3d
    move	$t9,$s1
    move	$s4,$v0
    # Line 1397
    li	$s7,1
    sllv	$s1,$s7,$s5
    subu	$v0,$s3,$s1
    sll	$a0,$s1,0x1
    subu	$at,$a0,$s3
    slt	$at,$at,$v0
    beqz	$at,.L0f11ed38
    # Line 1403
    sllv	$s3,$s7,$s2
    # Line 1399
    move	$s1,$a0
    # Line 1400
    addiu	$s5,$s5,1
.L0f11ed38:
    # Line 1403
    subu	$t0,$s6,$s3
    sll	$a0,$s3,0x1
    subu	$v1,$a0,$s6
    slt	$v1,$v1,$t0
    beqz	$v1,.L0f11ed58
    # Line 1409
    sllv	$s6,$s7,$s4
    # Line 1405
    move	$s3,$a0
    # Line 1406
    addiu	$s2,$s2,1
.L0f11ed58:
    # Line 1413
    lw	$t1,56($s0)
    li	$t0,290
    li	$a1,576
    beq	$t1,$a1,.L0f11edb8
    # Line 1411
    move	$a0,$zero
    # Line 1413
    lw	$at,60($s0)
    beq	$at,$a1,.L0f11edb8
    li	$t1,291
    lw	$a1,52($s0)
    li	$v1,289
    beql	$a1,$v1,.L0f11edbc
    lw	$t1,28($s0)
    beql	$a1,$t0,.L0f11edbc
    lw	$t1,28($s0)
    beq	$a1,$t1,.L0f11edb8
    li	$at,292
    beq	$a1,$at,.L0f11edb8
    li	$v1,640
    beq	$a1,$v1,.L0f11edb8
    li	$t0,288
    beql	$a1,$t0,.L0f11edbc
    lw	$t1,28($s0)
    b	.L0f11edcc
    # Line 1423
    lw	$v1,128($s0)
.L0f11edb8:
    # Line 1413
    lw	$t1,28($s0)
.L0f11edbc:
    li	$at,2
    beq	$t1,$at,.L0f11f01c
    nop
.L0f11edc8:
    # Line 1423
    lw	$v1,128($s0)
.L0f11edcc:
    li	$t0,1808
    beq	$v1,$t0,.L0f11efb4
    # Line 1429
    li	$t1,5123
    sd	$a0,112($sp)
    sd	$t1,128($sp)
.L0f11ede0:
    # Line 1430
    addiu	$a3,$sp,20
    la	$t9,SetOglFormatAndComps
    addiu	$a2,$sp,16
    lw	$a1,132($s0)
    bal SetOglFormatAndComps
    lw	$a0,32($s0)
    # Line 1432
    la	$t9,sub_0f120000
    addiu	$t9,$t9,-5268
    bal gl_g_texdef3d
    move	$a0,$s0
    move	$s4,$v0
    lw	$at,28($s0)
    move	$t0,$v0
    li	$v1,2
    bne	$at,$v1,.L0f11ef50
    sd	$v0,64($sp)
    ld	$t1,112($sp)
    ld	$s0,96($sp)
    beqz	$t1,.L0f11f088
    # Line 1491
    move	$t1,$s1
    ld	$s4,72($sp)
    # Line 1432
    slt	$at,$s3,$s1
    beqz	$at,.L0f11f058
    sd	$at,120($sp)
    # Line 1440
    div	$zero,$s1,$s3
    teq	$s3,$zero,0x7
    # Line 1441
    move	$s0,$s2
    ld	$s2,184($sp)
    ld	$s5,88($sp)
    # Line 1440
    mflo	$v1
    nop
    sd	$v1,192($sp)
.L0f11ee60:
    # Line 1448
    li	$a0,3
    ld	$s3,64($sp)
    ld	$s1,192($sp)
    sw	$zero,24($sp)
    addu	$s3,$s3,$s3
    addu	$at,$s3,$s1
    addiu	$s3,$s3,1
    sd	$at,40($sp)
    ld	$at,136($sp)
.L0f11ee84:
    li	$v1,4
    # Line 1452
    beq	$a0,$at,.L0f11f024
    ld	$t0,136($sp)
    beq	$v1,$t0,.L0f11f024
    # Line 1461
    lw	$a6,16($sp)
    lw	$a2,20($sp)
    sw	$zero,4($sp)
    ld	$a7,128($sp)
    ld	$a5,64($sp)
    ld	$a4,40($sp)
    la	$t9,glTexImage2D
    move	$a3,$s3
    move	$a1,$s0
    jalr	$t9
    li	$a0,0x8064
    # Line 1464
    addiu	$a3,$sp,24
    la	$t9,glGetTexLevelParameteriv
    li	$a2,4096
    move	$a1,$s0
    jalr	$t9
    li	$a0,0x8064
    li	$a0,3
    lw	$v0,24($sp)
.L0f11eee0:
    bnezl	$v0,.L0f11ef04
    # Line 1449
    sllv	$a0,$s7,$s0
    # Line 1469
    addiu	$s0,$s0,-1
    # Line 1470
    li	$t1,1
    # Line 1449
    bnez	$v0,.L0f11ef00
    sd	$t1,144($sp)
    bgtz	$s0,.L0f11ee84
    ld	$at,136($sp)
.L0f11ef00:
    sllv	$a0,$s7,$s0
.L0f11ef04:
    mult	$a0,$s1
    ld	$at,120($sp)
    mflo	$v0
    beqz	$at,.L0f11f078
    # Line 1479
    move	$s3,$a0
    # Line 1480
    move	$s1,$v0
    ld	$s0,96($sp)
.L0f11ef20:
    # Line 1509
    ld	$v1,144($sp)
    move	$t0,$s7
    bne	$v1,$t0,.L0f11ef7c
    ld	$s7,200($sp)
    # Line 1513
    slti	$t1,$s3,513
    beqz	$t1,.L0f11efd4
    ld	$s7,200($sp)
    slti	$at,$s1,513
    bnez	$at,.L0f11ef80
    # Line 1540
    ld	$a1,80($sp)
    b	.L0f11efd8
    # Line 1516
    li	$v0,1
.L0f11ef50:
    # Line 1524
    li	$a0,12
    # Line 1523
    sw	$zero,24($sp)
    ld	$s5,88($sp)
    # Line 1524
    la	$t9,__iglooIsExtensionSupported
    ld	$s0,96($sp)
    ld	$s4,72($sp)
    jalr	$t9
    ld	$s2,184($sp)
    move	$v1,$s7
    beq	$v1,$v0,.L0f11f194
    ld	$s7,200($sp)
.L0f11ef7c:
    # Line 1540
    ld	$a1,80($sp)
.L0f11ef80:
    # Line 1542
    ld	$a0,104($sp)
    # Line 1547
    la	$t9,glGetError
    # Line 1540
    sw	$s1,0($a1)
    # Line 1541
    sw	$s3,0($s8)
    # Line 1547
    jalr	$t9
    # Line 1542
    sw	$s6,0($a0)
    # Line 1550
    ld	$s1,208($sp)
    ld	$s3,152($sp)
    ld	$ra,168($sp)
    ld	$s6,160($sp)
    ld	$s8,176($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0f11efb4:
    sd	$a0,112($sp)
    # Line 1429
    li	$t0,5121
    b	.L0f11ede0
    sd	$t0,128($sp)
.L0f11efc4:
    # Line 1517
    li	$a0,1
.L0f11efc8:
    slti	$t1,$v0,513
    bnez	$t1,.L0f11f008
    move	$s1,$a0
.L0f11efd4:
    # Line 1516
    li	$v0,1
.L0f11efd8:
    # Line 1513
    slti	$at,$s3,3
    bnez	$at,.L0f11eff0
    # Line 1516
    slti	$v1,$s1,3
    srl	$v0,$s3,0x1f
    addu	$v0,$v0,$s3
    sra	$v0,$v0,0x1
.L0f11eff0:
    bnez	$v1,.L0f11efc4
    move	$s3,$v0
    # Line 1517
    srl	$a0,$s1,0x1f
    addu	$a0,$a0,$s1
    b	.L0f11efc8
    sra	$a0,$a0,0x1
.L0f11f008:
    slti	$t0,$s1,513
    beqz	$t0,.L0f11efd8
    # Line 1516
    li	$v0,1
    b	.L0f11ef80
    # Line 1540
    ld	$a1,80($sp)
.L0f11f01c:
    # Line 1425
    b	.L0f11edc8
    li	$a0,1
.L0f11f024:
    # Line 1455
    sllv	$a0,$s7,$s0
    mult	$a0,$s1
    lw	$a4,16($sp)
    la	$t9,sub_0f120000
    lw	$a3,20($sp)
    ld	$a2,64($sp)
    addiu	$t9,$t9,-7152
    mflo	$a1
    bal gl_g_texdef3d
    ld	$a5,128($sp)
    li	$a0,3
    b	.L0f11eee0
    sw	$v0,24($sp)
.L0f11f058:
    # Line 1445
    div	$zero,$s3,$s1
    teq	$s1,$zero,0x7
    # Line 1446
    move	$s0,$s5
    ld	$s5,88($sp)
    ld	$s2,184($sp)
    # Line 1445
    mflo	$at
    b	.L0f11ee60
    sd	$at,192($sp)
.L0f11f078:
    # Line 1484
    move	$s1,$a0
    # Line 1485
    move	$s3,$v0
    b	.L0f11ef20
    ld	$s0,96($sp)
.L0f11f088:
    sd	$s1,56($sp)
    # Line 1491
    move	$t0,$s3
    sd	$s3,48($sp)
    # Line 1492
    sw	$zero,24($sp)
    ld	$s5,88($sp)
    ld	$s2,184($sp)
    addu	$v1,$s4,$s4
    sd	$v1,32($sp)
    # Line 1494
    lw	$a6,16($sp)
.L0f11f0ac:
    lw	$a2,20($sp)
    sw	$zero,4($sp)
    ld	$a7,128($sp)
    move	$a5,$s4
    move	$a1,$zero
    li	$a0,0x8064
    ld	$a4,48($sp)
    ld	$a3,32($sp)
    la	$t9,glTexImage2D
    ld	$t0,56($sp)
    addu	$a4,$a3,$a4
    jalr	$t9
    addu	$a3,$a3,$t0
    # Line 1497
    addiu	$a3,$sp,24
    la	$t9,glGetTexLevelParameteriv
    li	$a2,4096
    move	$a1,$zero
    jalr	$t9
    li	$a0,0x8064
    ld	$t0,56($sp)
    lw	$v0,24($sp)
    bnez	$v0,.L0f11f160
    ld	$s1,56($sp)
    srl	$a1,$t0,0x1f
    addu	$a1,$a1,$t0
    sra	$a1,$a1,0x1
    slti	$t0,$a1,2
    bnez	$t0,.L0f11f16c
    # Line 1501
    li	$a0,1
    b	.L0f11f16c
    move	$a0,$a1
.L0f11f128:
    # Line 1502
    li	$a0,1
.L0f11f12c:
    move	$at,$a0
    sd	$a0,48($sp)
    # Line 1503
    li	$t1,1
    # Line 1493
    bnez	$v0,.L0f11f15c
    sd	$t1,144($sp)
    ld	$v1,56($sp)
    slti	$v1,$v1,2
    bnez	$v1,.L0f11f15c
    ld	$t0,48($sp)
    slti	$t0,$t0,2
    beqz	$t0,.L0f11f0ac
    # Line 1494
    lw	$a6,16($sp)
.L0f11f15c:
    ld	$s1,56($sp)
.L0f11f160:
    # Line 1509
    ld	$s3,48($sp)
    b	.L0f11ef20
    ld	$s4,72($sp)
.L0f11f16c:
    # Line 1501
    ld	$t0,48($sp)
    move	$t1,$a0
    srl	$a1,$t0,0x1f
    addu	$a1,$a1,$t0
    sra	$a1,$a1,0x1
    slti	$t1,$a1,2
    bnez	$t1,.L0f11f128
    sd	$a0,56($sp)
    # Line 1502
    b	.L0f11f12c
    move	$a0,$a1
.L0f11f194:
    # Line 1527
    lw	$a7,16($sp)
    lw	$a2,20($sp)
    sw	$zero,12($sp)
    move	$a6,$zero
    move	$a5,$s3
    move	$a4,$s6
    move	$a3,$s1
    move	$a1,$zero
    li	$a0,0x8070
    la	$t9,glTexImage3DEXT
    ld	$t2,128($sp)
    ld	$s7,200($sp)
    jalr	$t9
    sw	$t2,4($sp)
    # Line 1530
    addiu	$a3,$sp,24
    la	$t9,glGetTexLevelParameteriv
    li	$a2,4096
    move	$a1,$zero
    jalr	$t9
    li	$a0,0x8070
    b	.L0f11ef80
    # Line 1540
    ld	$a1,80($sp)
.end compute_new_image_size

# Function: compute_new_image_sizeCI
# Declared: Line 1552 (Source lines: 1554-1716)
# Address: 0x0f11f1ec - 0x0f11f518 (Size: 812 bytes, Frame: 176)
.ent compute_new_image_sizeCI
compute_new_image_sizeCI:
    # Line 1554
    addiu	$sp,$sp,-176
    sd	$s5,88($sp)
    sd	$s4,72($sp)
    move	$s4,$a1
    sd	$s2,8($sp)
    move	$s2,$a2
    sd	$s3,24($sp)
    move	$s3,$a3
    sd	$a4,0($sp)
    sd	$a5,32($sp)
    sd	$s7,48($sp)
    move	$s7,$a6
    sd	$s0,56($sp)
    move	$s0,$a0
    sd	$s1,80($sp)
    la	$s1,sub_0f120000
    # Line 1566
    move	$a0,$a1
    sd	$ra,64($sp)
    # Line 1554
    addiu	$s1,$s1,-8124
    # Line 1566
    bal gl_g_texdef3d
    move	$t9,$s1
    move	$s5,$v0
    # Line 1567
    move	$a0,$s2
    bal gl_g_texdef3d
    move	$t9,$s1
    sd	$v0,96($sp)
    # Line 1568
    move	$a0,$s3
    bal gl_g_texdef3d
    move	$t9,$s1
    move	$a1,$v0
    # Line 1570
    li	$s3,1
    sllv	$s1,$s3,$s5
    subu	$v0,$s4,$s1
    sll	$a2,$s1,0x1
    subu	$at,$a2,$s4
    slt	$at,$at,$v0
    beqz	$at,.L0f11f288
    ld	$a0,96($sp)
    # Line 1572
    move	$s1,$a2
.L0f11f288:
    # Line 1582
    sllv	$s5,$s3,$a1
    # Line 1576
    sllv	$s4,$s3,$a0
    subu	$a7,$s2,$s4
    sll	$v0,$s4,0x1
    subu	$v1,$v0,$s2
    slt	$v1,$v1,$a7
    beqz	$v1,.L0f11f2b0
    ld	$s2,8($sp)
    # Line 1578
    move	$s4,$v0
    ld	$s2,8($sp)
.L0f11f2b0:
    # Line 1586
    lw	$t0,56($s0)
    li	$a7,290
    li	$a0,576
    beq	$t0,$a0,.L0f11f310
    # Line 1584
    move	$v0,$zero
    # Line 1586
    lw	$at,60($s0)
    beq	$at,$a0,.L0f11f310
    li	$t0,291
    lw	$a0,52($s0)
    li	$v1,289
    beq	$a0,$v1,.L0f11f310
    li	$at,292
    beq	$a0,$a7,.L0f11f310
    li	$v1,640
    beql	$a0,$t0,.L0f11f314
    lw	$t0,28($s0)
    beql	$a0,$at,.L0f11f314
    lw	$t0,28($s0)
    beq	$a0,$v1,.L0f11f310
    li	$a7,288
    beql	$a0,$a7,.L0f11f314
    lw	$t0,28($s0)
    b	.L0f11f320
    sd	$v0,16($sp)
.L0f11f310:
    lw	$t0,28($s0)
.L0f11f314:
    li	$at,2
    beq	$t0,$at,.L0f11f4fc
    sd	$v0,16($sp)
.L0f11f320:
    # Line 1603
    la	$t9,sub_0f120000
    addiu	$t9,$t9,-5268
    bal gl_g_texdef3d
    move	$a0,$s0
    move	$a7,$v0
    ld	$t0,16($sp)
    lw	$at,28($s0)
    move	$a1,$v0
    li	$v1,2
    bne	$at,$v1,.L0f11f384
    sd	$v0,40($sp)
    ld	$s0,32($sp)
    ld	$s3,24($sp)
    # Line 1613
    addu	$a0,$a1,$a1
    addu	$v1,$a0,$s1
    # Line 1603
    beqz	$t0,.L0f11f508
    # Line 1613
    addu	$a2,$a0,$s4
    # Line 1609
    lui	$v0,0x4
.L0f11f368:
    # Line 1613
    mult	$v1,$a2
    mflo	$at
    slt	$at,$v0,$at
    beqz	$at,.L0f11f3f0
    # Line 1706
    ld	$a1,0($sp)
    b	.L0f11f440
    # Line 1613
    slti	$at,$s1,2
.L0f11f384:
    # Line 1647
    la	$t9,__iglooIsExtensionSupported
    li	$a0,12
    jalr	$t9
    ld	$s0,32($sp)
    move	$a7,$s3
    bne	$a7,$v0,.L0f11f3ec
    ld	$s3,24($sp)
    ld	$t0,16($sp)
    beqz	$t0,.L0f11f510
    ld	$s3,24($sp)
    # Line 1652
    lui	$v0,0x40
.L0f11f3b0:
    ld	$a0,40($sp)
    # Line 1656
    addu	$a0,$a0,$a0
    addu	$a1,$a0,$s4
    addu	$a2,$a0,$s1
    mult	$a2,$a1
    mflo	$v1
    nop
    addu	$a2,$a0,$s5
    mult	$v1,$a2
    mflo	$at
    slt	$at,$v0,$at
    beqzl	$at,.L0f11f3f0
    # Line 1706
    ld	$a1,0($sp)
    b	.L0f11f4a0
    # Line 1656
    slti	$at,$s1,2
.L0f11f3ec:
    # Line 1706
    ld	$a1,0($sp)
.L0f11f3f0:
    # Line 1713
    la	$t9,glGetError
    # Line 1706
    sw	$s1,0($a1)
    # Line 1707
    sw	$s4,0($s0)
    # Line 1713
    jalr	$t9
    # Line 1708
    sw	$s5,0($s7)
    # Line 1716
    ld	$s0,56($sp)
    ld	$s1,80($sp)
    ld	$s4,72($sp)
    ld	$ra,64($sp)
    ld	$s5,88($sp)
    ld	$s7,48($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0f11f424:
    # Line 1624
    li	$s1,1
.L0f11f428:
    # Line 1639
    addu	$t0,$a0,$s1
    mult	$t0,$a2
    mflo	$a7
    slt	$a7,$v0,$a7
    beqz	$a7,.L0f11f3ec
    # Line 1613
    slti	$at,$s1,2
.L0f11f440:
    bnez	$at,.L0f11f424
    # Line 1620
    slti	$at,$s4,2
    srl	$v1,$s1,0x1f
    addu	$s1,$v1,$s1
    bnez	$at,.L0f11f468
    sra	$s1,$s1,0x1
    # Line 1630
    srl	$at,$s4,0x1f
    addu	$s4,$at,$s4
    b	.L0f11f46c
    sra	$s4,$s4,0x1
.L0f11f468:
    # Line 1634
    li	$s4,1
.L0f11f46c:
    b	.L0f11f428
    addu	$a2,$a0,$s4
.L0f11f474:
    # Line 1671
    li	$s1,1
.L0f11f478:
    # Line 1696
    addu	$t0,$a0,$s1
    mult	$t0,$a1
    mflo	$a7
    nop
    nop
    mult	$a7,$a2
    mflo	$v1
    slt	$v1,$v0,$v1
    beqz	$v1,.L0f11f4f4
    # Line 1656
    slti	$at,$s1,2
.L0f11f4a0:
    bnez	$at,.L0f11f474
    # Line 1667
    slti	$at,$s4,2
    srl	$v1,$s1,0x1f
    addu	$s1,$v1,$s1
    bnez	$at,.L0f11f4e8
    sra	$s1,$s1,0x1
    # Line 1677
    slti	$at,$s5,2
    srl	$v1,$s4,0x1f
    addu	$s4,$v1,$s4
    bnez	$at,.L0f11f4dc
    sra	$s4,$s4,0x1
    # Line 1687
    srl	$at,$s5,0x1f
    addu	$s5,$at,$s5
    b	.L0f11f4e0
    sra	$s5,$s5,0x1
.L0f11f4dc:
    # Line 1691
    li	$s5,1
.L0f11f4e0:
    b	.L0f11f4ec
    addu	$a2,$a0,$s5
.L0f11f4e8:
    # Line 1681
    li	$s4,1
.L0f11f4ec:
    b	.L0f11f478
    addu	$a1,$a0,$s4
.L0f11f4f4:
    b	.L0f11f3f0
    # Line 1706
    ld	$a1,0($sp)
.L0f11f4fc:
    # Line 1598
    li	$v1,1
    b	.L0f11f320
    sd	$v1,16($sp)
.L0f11f508:
    b	.L0f11f368
    # Line 1613
    lui	$v0,0x10
.L0f11f510:
    b	.L0f11f3b0
    # Line 1656
    lui	$v0,0x80
.end compute_new_image_sizeCI

# Function: To4Texel
# Declared: Line 1723 (Source lines: 1724-1913)
# Address: 0x0f11f518 - 0x0f11faa4 (Size: 1420 bytes, Frame: 240)
.ent To4Texel
To4Texel:
    # Line 1724
    addiu	$sp,$sp,-368
    # Line 1731
    lw	$a6,44($a0)
    # Line 1730
    lw	$t8,40($a0)
    # Line 1729
    lw	$t3,36($a0)
    # Line 1728
    lw	$a2,32($a0)
    # Line 1731
    li	$at,1808
    # Line 1727
    lw	$a3,428($a0)
    # Line 1731
    lw	$a5,128($a0)
    # Line 1725
    lw	$t1,24($a0)
    # Line 1727
    lw	$a3,20($a3)
    # Line 1731
    beq	$a5,$at,.L0f11f77c
    # Line 1726
    move	$a4,$t1
    # Line 1738
    li	$at,1824
    beq	$a5,$at,.L0f11f938
    # Line 1794
    li	$v0,1840
    bne	$a5,$v0,.L0f11f748
    # Line 1910
    addiu	$a0,$sp,240
    sd	$a6,336($sp)
    # Line 1854
    beqz	$a6,.L0f11f774
    move	$t1,$a6
    mult	$a2,$t3
    sd	$t8,320($sp)
    li	$t2,0xffff
    li	$t0,1
    li	$a7,2
    li	$a6,3
    li	$a5,4
    mflo	$t9
    nop
    nop
    ld	$v1,320($sp)
.L0f11f594:
    # Line 1855
    beqz	$v1,.L0f11f734
    move	$t8,$v1
.L0f11f59c:
    # Line 1856
    beqz	$t3,.L0f11f70c
    move	$a1,$t3
    b	.L0f11f5c4
    nop
.L0f11f5ac:
    # Line 1891
    sh	$zero,6($a3)
    # Line 1890
    sh	$zero,4($a3)
    # Line 1889
    sh	$zero,2($a3)
.L0f11f5b8:
    # Line 1856
    addiu	$a1,$a1,-1
    beqz	$a1,.L0f11f70c
    # Line 1902
    addiu	$a3,$a3,8
.L0f11f5c4:
    # Line 1858
    beql	$a2,$a5,.L0f11f61c
    # Line 1860
    lhu	$a0,0($a4)
    # Line 1858
    beql	$a2,$a6,.L0f11f680
    # Line 1870
    lhu	$v0,0($a4)
    # Line 1858
    beql	$a2,$a7,.L0f11f6d0
    # Line 1879
    lhu	$v0,0($a4)
    # Line 1858
    beq	$a2,$t0,.L0f11f5ac
    # Line 1888
    addiu	$a4,$a4,2
    # Line 1896
    addiu	$a0,$sp,160
    la	$t9,sprintf
    la	$a1,sub_0f020000
    sd	$ra,344($sp)
    jalr	$t9
    addiu	$a1,$a1,22344
    # Line 1898
    la	$t9,gl_ErrorHandler
    addiu	$a2,$sp,160
    li	$a1,2
    jalr	$t9
    li	$a0,91
    ld	$ra,344($sp)
    # Line 1900
    jr	$ra
    addiu	$sp,$sp,368
.L0f11f61c:
    # Line 1860
    sll	$v1,$a0,0x4
    andi	$a0,$a0,0xf00
    sra	$a0,$a0,0x8
    or	$v1,$v1,$a0
    sh	$v1,0($a3)
    # Line 1862
    lhu	$v0,2($a4)
    sll	$at,$v0,0x4
    andi	$v0,$v0,0xf00
    sra	$v0,$v0,0x8
    or	$at,$at,$v0
    sh	$at,2($a3)
    # Line 1864
    lhu	$a0,4($a4)
    sll	$v1,$a0,0x4
    andi	$a0,$a0,0xf00
    sra	$a0,$a0,0x8
    or	$v1,$v1,$a0
    sh	$v1,4($a3)
    # Line 1866
    lhu	$v0,6($a4)
    # Line 1867
    addiu	$a4,$a4,8
    # Line 1866
    sll	$at,$v0,0x4
    andi	$v0,$v0,0xf00
    sra	$v0,$v0,0x8
    or	$at,$at,$v0
    # Line 1868
    b	.L0f11f5b8
    # Line 1866
    sh	$at,6($a3)
.L0f11f680:
    # Line 1870
    sll	$at,$v0,0x4
    andi	$v0,$v0,0xf00
    sra	$v0,$v0,0x8
    or	$at,$at,$v0
    sh	$at,4($a3)
    # Line 1872
    lhu	$a0,2($a4)
    sll	$v1,$a0,0x4
    andi	$a0,$a0,0xf00
    sra	$a0,$a0,0x8
    or	$v1,$v1,$a0
    sh	$v1,2($a3)
    # Line 1874
    lhu	$v0,4($a4)
    # Line 1875
    addiu	$a4,$a4,6
    # Line 1876
    sh	$t2,6($a3)
    # Line 1874
    sll	$at,$v0,0x4
    andi	$v0,$v0,0xf00
    sra	$v0,$v0,0x8
    or	$at,$at,$v0
    # Line 1877
    b	.L0f11f5b8
    # Line 1874
    sh	$at,0($a3)
.L0f11f6d0:
    # Line 1879
    sll	$at,$v0,0x4
    andi	$v0,$v0,0xf00
    sra	$v0,$v0,0x8
    or	$at,$at,$v0
    sh	$at,2($a3)
    # Line 1882
    addiu	$a4,$a4,4
    # Line 1881
    lhu	$a0,-2($a4)
    # Line 1884
    sh	$zero,6($a3)
    # Line 1883
    sh	$zero,4($a3)
    # Line 1881
    sll	$v1,$a0,0x4
    andi	$a0,$a0,0xf00
    sra	$a0,$a0,0x8
    or	$v1,$v1,$a0
    # Line 1885
    b	.L0f11f5b8
    # Line 1881
    sh	$v1,0($a3)
.L0f11f70c:
    # Line 1855
    addiu	$t8,$t8,-1
    # Line 1904
    addiu	$a0,$t9,1
    srl	$v1,$a0,0x1f
    addu	$v1,$v1,$a0
    sra	$v1,$v1,0x1
    addu	$v1,$v1,$v1
    subu	$v1,$v1,$t9
    addu	$v1,$v1,$v1
    # Line 1855
    bnez	$t8,.L0f11f59c
    # Line 1904
    addu	$a4,$v1,$a4
.L0f11f734:
    # Line 1854
    addiu	$t1,$t1,-1
    bnez	$t1,.L0f11f594
    ld	$v1,320($sp)
    b	.L0f11f774
    nop
.L0f11f748:
    # Line 1910
    la	$t9,sprintf
    la	$a1,sub_0f020000
    sd	$ra,344($sp)
    jalr	$t9
    addiu	$a1,$a1,22416
    # Line 1911
    la	$t9,gl_ErrorHandler
    addiu	$a2,$sp,240
    li	$a1,2
    jalr	$t9
    li	$a0,91
    ld	$ra,344($sp)
.L0f11f774:
    # Line 1913
    jr	$ra
    addiu	$sp,$sp,368
.L0f11f77c:
    sd	$a6,336($sp)
    # Line 1738
    beqz	$a6,.L0f11f774
    move	$a1,$a6
    mult	$a2,$t3
    sd	$t8,320($sp)
    sd	$a1,328($sp)
    li	$t2,0xffff
    li	$t0,1
    li	$a7,2
    li	$a6,3
    li	$a5,4
    mflo	$t9
    nop
    nop
.L0f11f7b4:
    ld	$at,320($sp)
    # Line 1739
    beqz	$at,.L0f11f8e8
    move	$t8,$at
.L0f11f7c0:
    # Line 1740
    beqz	$t3,.L0f11f8c0
    move	$a1,$t3
    b	.L0f11f81c
    nop
.L0f11f7d0:
    # Line 1744
    sll	$a0,$at,0x8
    or	$a0,$a0,$at
    sh	$a0,0($a3)
    # Line 1746
    lbu	$v1,1($t1)
    sll	$v0,$v1,0x8
    or	$v0,$v0,$v1
    sh	$v0,2($a3)
    # Line 1748
    lbu	$at,2($t1)
    sll	$a0,$at,0x8
    or	$a0,$a0,$at
    sh	$a0,4($a3)
    # Line 1750
    lbu	$v1,3($t1)
    # Line 1751
    addiu	$t1,$t1,4
    # Line 1750
    sll	$v0,$v1,0x8
    or	$v0,$v0,$v1
    sh	$v0,6($a3)
.L0f11f810:
    # Line 1740
    addiu	$a1,$a1,-1
    beqz	$a1,.L0f11f8c0
    # Line 1786
    addiu	$a3,$a3,8
.L0f11f81c:
    # Line 1742
    beql	$a2,$a5,.L0f11f7d0
    # Line 1744
    lbu	$at,0($t1)
    # Line 1742
    beql	$a2,$a6,.L0f11f85c
    # Line 1754
    lbu	$at,0($t1)
    # Line 1742
    beql	$a2,$a7,.L0f11f894
    # Line 1763
    lbu	$at,0($t1)
    # Line 1742
    bne	$a2,$t0,.L0f11f900
    # Line 1775
    addiu	$t1,$t1,1
    # Line 1771
    lbu	$v1,-1($t1)
    # Line 1774
    sh	$zero,6($a3)
    # Line 1773
    sh	$zero,4($a3)
    # Line 1772
    sh	$zero,2($a3)
    # Line 1771
    sll	$v0,$v1,0x8
    or	$v0,$v0,$v1
    # Line 1776
    b	.L0f11f810
    # Line 1771
    sh	$v0,0($a3)
.L0f11f85c:
    # Line 1754
    sll	$a0,$at,0x8
    or	$a0,$a0,$at
    sh	$a0,0($a3)
    # Line 1756
    lbu	$v1,1($t1)
    sll	$v0,$v1,0x8
    or	$v0,$v0,$v1
    sh	$v0,2($a3)
    # Line 1758
    lbu	$at,2($t1)
    # Line 1759
    addiu	$t1,$t1,3
    # Line 1760
    sh	$t2,6($a3)
    # Line 1758
    sll	$a0,$at,0x8
    or	$a0,$a0,$at
    # Line 1761
    b	.L0f11f810
    # Line 1758
    sh	$a0,4($a3)
.L0f11f894:
    # Line 1763
    sll	$a0,$at,0x8
    or	$a0,$a0,$at
    sh	$a0,0($a3)
    # Line 1766
    addiu	$t1,$t1,2
    # Line 1765
    lbu	$v1,-1($t1)
    # Line 1768
    sh	$zero,6($a3)
    # Line 1767
    sh	$zero,4($a3)
    # Line 1765
    sll	$v0,$v1,0x8
    or	$v0,$v0,$v1
    # Line 1769
    b	.L0f11f810
    # Line 1765
    sh	$v0,2($a3)
.L0f11f8c0:
    # Line 1739
    addiu	$t8,$t8,-1
    # Line 1788
    addiu	$v1,$t9,3
    sra	$v0,$v1,0x1
    srl	$v0,$v0,0x1e
    addu	$v0,$v0,$v1
    sra	$v0,$v0,0x2
    sll	$v0,$v0,0x2
    subu	$v0,$v0,$t9
    # Line 1739
    bnez	$t8,.L0f11f7c0
    # Line 1788
    addu	$t1,$v0,$t1
.L0f11f8e8:
    ld	$v1,328($sp)
    # Line 1738
    addiu	$v1,$v1,-1
    bnez	$v1,.L0f11f7b4
    sd	$v1,328($sp)
    b	.L0f11f774
    nop
.L0f11f900:
    # Line 1780
    addiu	$a0,$sp,0
    la	$t9,sprintf
    la	$a1,sub_0f020000
    sd	$ra,344($sp)
    jalr	$t9
    addiu	$a1,$a1,22344
    # Line 1782
    la	$t9,gl_ErrorHandler
    addiu	$a2,$sp,0
    li	$a1,2
    jalr	$t9
    li	$a0,91
    ld	$ra,344($sp)
    # Line 1784
    jr	$ra
    addiu	$sp,$sp,368
.L0f11f938:
    sd	$a6,336($sp)
    # Line 1794
    beqz	$a6,.L0f11f774
    move	$a1,$a6
    mult	$a2,$t3
    sd	$t8,320($sp)
    sd	$a1,328($sp)
    li	$t2,0xffff
    li	$t0,1
    li	$a7,2
    li	$a6,3
    li	$a5,4
    mflo	$t9
    nop
    nop
.L0f11f970:
    ld	$at,320($sp)
    # Line 1795
    beqz	$at,.L0f11fa54
    move	$t8,$at
.L0f11f97c:
    # Line 1796
    beqz	$t3,.L0f11fa2c
    move	$a1,$t3
    b	.L0f11f9b8
    nop
.L0f11f98c:
    # Line 1800
    sh	$at,0($a3)
    # Line 1802
    lhu	$a0,2($a4)
    sh	$a0,2($a3)
    # Line 1804
    lhu	$v1,4($a4)
    sh	$v1,4($a3)
    # Line 1806
    lhu	$v0,6($a4)
    # Line 1807
    addiu	$a4,$a4,8
    # Line 1806
    sh	$v0,6($a3)
.L0f11f9ac:
    # Line 1796
    addiu	$a1,$a1,-1
    beqz	$a1,.L0f11fa2c
    # Line 1846
    addiu	$a3,$a3,8
.L0f11f9b8:
    # Line 1798
    beql	$a2,$a5,.L0f11f98c
    # Line 1800
    lhu	$at,0($a4)
    # Line 1798
    beql	$a2,$a6,.L0f11f9f0
    # Line 1810
    sh	$t2,6($a3)
    # Line 1798
    beql	$a2,$a7,.L0f11fa10
    # Line 1819
    lhu	$v1,0($a4)
    # Line 1798
    bne	$a2,$t0,.L0f11fa6c
    # Line 1831
    addiu	$a4,$a4,2
    # Line 1827
    lhu	$v0,-2($a4)
    # Line 1830
    sh	$zero,6($a3)
    # Line 1829
    sh	$zero,4($a3)
    # Line 1828
    sh	$zero,2($a3)
    # Line 1832
    b	.L0f11f9ac
    # Line 1827
    sh	$v0,0($a3)
.L0f11f9f0:
    # Line 1811
    lhu	$at,0($a4)
    sh	$at,4($a3)
    # Line 1813
    lhu	$a0,2($a4)
    sh	$a0,2($a3)
    # Line 1815
    lhu	$v1,4($a4)
    # Line 1816
    addiu	$a4,$a4,6
    # Line 1817
    b	.L0f11f9ac
    # Line 1815
    sh	$v1,0($a3)
.L0f11fa10:
    # Line 1819
    sh	$v1,2($a3)
    # Line 1822
    addiu	$a4,$a4,4
    # Line 1821
    lhu	$v0,-2($a4)
    # Line 1824
    sh	$zero,6($a3)
    # Line 1823
    sh	$zero,4($a3)
    # Line 1825
    b	.L0f11f9ac
    # Line 1821
    sh	$v0,0($a3)
.L0f11fa2c:
    # Line 1795
    addiu	$t8,$t8,-1
    # Line 1848
    addiu	$at,$t9,1
    srl	$a0,$at,0x1f
    addu	$a0,$a0,$at
    sra	$a0,$a0,0x1
    addu	$a0,$a0,$a0
    subu	$a0,$a0,$t9
    addu	$a0,$a0,$a0
    # Line 1795
    bnez	$t8,.L0f11f97c
    # Line 1848
    addu	$a4,$a0,$a4
.L0f11fa54:
    ld	$v0,328($sp)
    # Line 1794
    addiu	$v0,$v0,-1
    bnez	$v0,.L0f11f970
    sd	$v0,328($sp)
    b	.L0f11f774
    nop
.L0f11fa6c:
    # Line 1836
    addiu	$a0,$sp,80
    la	$t9,sprintf
    la	$a1,sub_0f020000
    sd	$ra,344($sp)
    jalr	$t9
    addiu	$a1,$a1,22344
    # Line 1838
    la	$t9,gl_ErrorHandler
    addiu	$a2,$sp,80
    li	$a1,2
    jalr	$t9
    li	$a0,91
    ld	$ra,344($sp)
    # Line 1840
    jr	$ra
    addiu	$sp,$sp,368
.end To4Texel

# Function: extractFrom4Texel
# Declared: Line 1919 (Source lines: 1928-1964)
# Address: 0x0f11faa4 - 0x0f11fe10 (Size: 876 bytes, Frame: 0)
.ent extractFrom4Texel
extractFrom4Texel:
    # Line 1928
    li	$at,1
    beq	$a0,$at,.L0f11fbdc
    li	$v0,2
    beq	$a0,$v0,.L0f11fc70
    li	$v1,3
    beq	$a0,$v1,.L0f11fd2c
    li	$a5,4
    beq	$a0,$a5,.L0f11fad0
    nop
.L0f11fac8:
    # Line 1964
    jr	$ra
    nop
.L0f11fad0:
    # Line 1951
    mult	$a1,$a2
    move	$a6,$zero
    mflo	$a0
    blez	$a0,.L0f11fac8
    move	$a2,$a0
    andi	$a1,$a0,0x3
    beqz	$a1,.L0f11fb28
    move	$t1,$a6
.L0f11faf0:
    # Line 1952
    lhu	$a5,0($a3)
    sh	$a5,0($a4)
    # Line 1953
    lhu	$v1,2($a3)
    sh	$v1,2($a4)
    # Line 1954
    lhu	$v0,4($a3)
    # Line 1951
    addiu	$a6,$a6,1
    # Line 1956
    addiu	$a3,$a3,8
    # Line 1954
    sh	$v0,4($a4)
    # Line 1955
    addiu	$a4,$a4,8
    lhu	$at,-2($a3)
    addi	$a1,$a1,-1
    bnez	$a1,.L0f11faf0
    sh	$at,-2($a4)
    move	$t1,$a6
.L0f11fb28:
    move	$a7,$a3
    move	$t0,$a4
    sra	$at,$a2,0x2
    beqz	$at,.L0f11fbd4
    move	$a2,$t0
    move	$a1,$t1
    move	$a3,$a7
.L0f11fb44:
    # Line 1952
    lhu	$at,0($a3)
    sh	$at,0($a2)
    # Line 1953
    lhu	$a5,2($a3)
    sh	$a5,2($a2)
    # Line 1954
    lhu	$v1,4($a3)
    sh	$v1,4($a2)
    # Line 1955
    lhu	$v0,6($a3)
    sh	$v0,6($a2)
    # Line 1952
    lhu	$at,8($a3)
    sh	$at,8($a2)
    # Line 1953
    lhu	$a5,10($a3)
    sh	$a5,10($a2)
    # Line 1954
    lhu	$v1,12($a3)
    sh	$v1,12($a2)
    # Line 1955
    lhu	$v0,14($a3)
    sh	$v0,14($a2)
    # Line 1952
    lhu	$at,16($a3)
    sh	$at,16($a2)
    # Line 1953
    lhu	$a5,18($a3)
    sh	$a5,18($a2)
    # Line 1954
    lhu	$v1,20($a3)
    sh	$v1,20($a2)
    # Line 1955
    lhu	$v0,22($a3)
    sh	$v0,22($a2)
    # Line 1952
    lhu	$at,24($a3)
    sh	$at,24($a2)
    # Line 1953
    lhu	$a5,26($a3)
    sh	$a5,26($a2)
    # Line 1954
    lhu	$v1,28($a3)
    # Line 1956
    addiu	$a3,$a3,32
    # Line 1954
    sh	$v1,28($a2)
    # Line 1955
    addiu	$a2,$a2,32
    lhu	$v0,-2($a3)
    # Line 1951
    addiu	$a1,$a1,4
    bne	$a0,$a1,.L0f11fb44
    # Line 1955
    sh	$v0,-2($a2)
.L0f11fbd4:
    # Line 1964
    jr	$ra
    nop
.L0f11fbdc:
    # Line 1930
    mult	$a1,$a2
    move	$a6,$zero
    mflo	$a0
    blez	$a0,.L0f11fac8
    move	$a2,$a0
    andi	$a1,$a0,0x3
    beqz	$a1,.L0f11fc1c
    move	$t1,$a6
.L0f11fbfc:
    addiu	$a6,$a6,1
    # Line 1932
    addiu	$a3,$a3,8
    # Line 1931
    addiu	$a4,$a4,2
    lhu	$v0,-8($a3)
    addi	$a1,$a1,-1
    bnez	$a1,.L0f11fbfc
    sh	$v0,-2($a4)
    move	$t1,$a6
.L0f11fc1c:
    move	$a7,$a4
    move	$t0,$a3
    sra	$v1,$a2,0x2
    beqz	$v1,.L0f11fc68
    move	$a1,$t0
    move	$a2,$t1
    move	$a3,$a7
.L0f11fc38:
    lhu	$v1,0($a1)
    sh	$v1,0($a3)
    lhu	$v0,8($a1)
    sh	$v0,2($a3)
    lhu	$at,16($a1)
    # Line 1932
    addiu	$a1,$a1,32
    # Line 1931
    sh	$at,4($a3)
    addiu	$a3,$a3,8
    lhu	$a5,-8($a1)
    # Line 1930
    addiu	$a2,$a2,4
    bne	$a0,$a2,.L0f11fc38
    # Line 1931
    sh	$a5,-2($a3)
.L0f11fc68:
    # Line 1964
    jr	$ra
    nop
.L0f11fc70:
    # Line 1936
    mult	$a1,$a2
    move	$a6,$zero
    mflo	$a0
    blez	$a0,.L0f11fac8
    move	$a2,$a0
    andi	$a1,$a0,0x3
    beqz	$a1,.L0f11fcb8
    move	$t0,$a4
.L0f11fc90:
    # Line 1937
    lhu	$at,0($a3)
    # Line 1936
    addiu	$a6,$a6,1
    # Line 1939
    addiu	$a3,$a3,8
    # Line 1937
    sh	$at,0($a4)
    # Line 1938
    addiu	$a4,$a4,4
    lhu	$a5,-6($a3)
    addi	$a1,$a1,-1
    bnez	$a1,.L0f11fc90
    sh	$a5,-2($a4)
    move	$t0,$a4
.L0f11fcb8:
    sra	$v0,$a2,0x2
    move	$t1,$a6
    beqz	$v0,.L0f11fd24
    move	$a7,$a3
    move	$a1,$t1
    move	$a3,$t0
    move	$a2,$a7
.L0f11fcd4:
    # Line 1937
    lhu	$v0,0($a2)
    sh	$v0,0($a3)
    # Line 1938
    lhu	$at,2($a2)
    sh	$at,2($a3)
    # Line 1937
    lhu	$a5,8($a2)
    sh	$a5,4($a3)
    # Line 1938
    lhu	$v1,10($a2)
    sh	$v1,6($a3)
    # Line 1937
    lhu	$v0,16($a2)
    sh	$v0,8($a3)
    # Line 1938
    lhu	$at,18($a2)
    sh	$at,10($a3)
    # Line 1937
    lhu	$a5,24($a2)
    # Line 1939
    addiu	$a2,$a2,32
    # Line 1937
    sh	$a5,12($a3)
    # Line 1938
    addiu	$a3,$a3,16
    lhu	$v1,-6($a2)
    # Line 1936
    addiu	$a1,$a1,4
    bne	$a0,$a1,.L0f11fcd4
    # Line 1938
    sh	$v1,-2($a3)
.L0f11fd24:
    # Line 1964
    jr	$ra
    nop
.L0f11fd2c:
    # Line 1943
    mult	$a1,$a2
    move	$a6,$zero
    mflo	$a0
    blez	$a0,.L0f11fac8
    move	$a2,$a0
    andi	$a1,$a0,0x3
    beqz	$a1,.L0f11fd7c
    move	$t1,$a6
.L0f11fd4c:
    # Line 1944
    lhu	$at,0($a3)
    sh	$at,0($a4)
    # Line 1945
    lhu	$a5,2($a3)
    # Line 1943
    addiu	$a6,$a6,1
    # Line 1947
    addiu	$a3,$a3,8
    # Line 1945
    sh	$a5,2($a4)
    # Line 1946
    addiu	$a4,$a4,6
    lhu	$v1,-4($a3)
    addi	$a1,$a1,-1
    bnez	$a1,.L0f11fd4c
    sh	$v1,-2($a4)
    move	$t1,$a6
.L0f11fd7c:
    move	$a7,$a3
    move	$t0,$a4
    sra	$v0,$a2,0x2
    beqz	$v0,.L0f11fe08
    move	$a2,$t0
    move	$a1,$t1
    move	$a3,$a7
.L0f11fd98:
    # Line 1944
    lhu	$v0,0($a3)
    sh	$v0,0($a2)
    # Line 1945
    lhu	$at,2($a3)
    sh	$at,2($a2)
    # Line 1946
    lhu	$a5,4($a3)
    sh	$a5,4($a2)
    # Line 1944
    lhu	$v1,8($a3)
    sh	$v1,6($a2)
    # Line 1945
    lhu	$v0,10($a3)
    sh	$v0,8($a2)
    # Line 1946
    lhu	$at,12($a3)
    sh	$at,10($a2)
    # Line 1944
    lhu	$a5,16($a3)
    sh	$a5,12($a2)
    # Line 1945
    lhu	$v1,18($a3)
    sh	$v1,14($a2)
    # Line 1946
    lhu	$v0,20($a3)
    sh	$v0,16($a2)
    # Line 1944
    lhu	$at,24($a3)
    sh	$at,18($a2)
    # Line 1945
    lhu	$a5,26($a3)
    # Line 1947
    addiu	$a3,$a3,32
    # Line 1945
    sh	$a5,20($a2)
    # Line 1946
    addiu	$a2,$a2,24
    lhu	$v1,-4($a3)
    # Line 1943
    addiu	$a1,$a1,4
    bne	$a0,$a1,.L0f11fd98
    # Line 1946
    sh	$v1,-2($a2)
.L0f11fe08:
    # Line 1964
    jr	$ra
    nop
.end extractFrom4Texel

# Function: copyBCWholeRow
# Declared: Line 1966 (Source lines: 1972-2000)
# Address: 0x0f11fe10 - 0x0f1200d4 (Size: 708 bytes, Frame: 0)
.ent copyBCWholeRow
copyBCWholeRow:
    andi	$a5,$a2,0x3
    # Line 1972
    li	$at,1
    beq	$a0,$at,.L0f11fef0
    # Line 1974
    move	$a6,$a2
    # Line 1972
    li	$v0,2
    beq	$a0,$v0,.L0f11ff68
    li	$v1,3
    beq	$a0,$v1,.L0f120008
    li	$a4,4
    beq	$a0,$a4,.L0f11fe44
    nop
.L0f11fe3c:
    # Line 2000
    jr	$ra
    nop
.L0f11fe44:
    # Line 1992
    blez	$a2,.L0f11fe3c
    move	$a0,$zero
    move	$a5,$a2
    andi	$at,$a2,0x1
    beqz	$at,.L0f11fe88
    sra	$v0,$a5,0x1
    # Line 1993
    lhu	$at,0($a3)
    sh	$at,0($a1)
    # Line 1994
    lhu	$a4,2($a3)
    sh	$a4,2($a1)
    # Line 1995
    lhu	$v1,4($a3)
    sh	$v1,4($a1)
    # Line 1996
    lhu	$v0,6($a3)
    # Line 1992
    addiu	$a0,$a0,1
    # Line 1996
    addiu	$a1,$a1,8
    sh	$v0,-2($a1)
    sra	$v0,$a5,0x1
.L0f11fe88:
    move	$a7,$a0
    beqz	$v0,.L0f11fee8
    move	$a6,$a1
    move	$a0,$a7
    move	$a1,$a6
.L0f11fe9c:
    # Line 1993
    lhu	$v0,0($a3)
    sh	$v0,0($a1)
    # Line 1994
    lhu	$at,2($a3)
    sh	$at,2($a1)
    # Line 1995
    lhu	$a4,4($a3)
    sh	$a4,4($a1)
    # Line 1996
    lhu	$v1,6($a3)
    sh	$v1,6($a1)
    # Line 1993
    lhu	$v0,0($a3)
    sh	$v0,8($a1)
    # Line 1994
    lhu	$at,2($a3)
    sh	$at,10($a1)
    # Line 1995
    lhu	$a4,4($a3)
    sh	$a4,12($a1)
    # Line 1996
    addiu	$a1,$a1,16
    lhu	$v1,6($a3)
    # Line 1992
    addiu	$a0,$a0,2
    bne	$a2,$a0,.L0f11fe9c
    # Line 1996
    sh	$v1,-2($a1)
.L0f11fee8:
    # Line 2000
    jr	$ra
    nop
.L0f11fef0:
    # Line 1974
    blez	$a2,.L0f11fe3c
    move	$a0,$zero
    andi	$a5,$a2,0x3
    beqz	$a5,.L0f11ff20
    sra	$a4,$a6,0x2
.L0f11ff04:
    addiu	$a0,$a0,1
    # Line 1975
    addiu	$a1,$a1,2
    lhu	$v1,0($a3)
    addi	$a5,$a5,-1
    bnez	$a5,.L0f11ff04
    sh	$v1,-2($a1)
    sra	$a4,$a6,0x2
.L0f11ff20:
    move	$a7,$a0
    beqz	$a4,.L0f11ff60
    move	$a5,$a1
    move	$a0,$a7
    move	$a1,$a5
.L0f11ff34:
    lhu	$a4,0($a3)
    sh	$a4,0($a1)
    lhu	$v1,0($a3)
    sh	$v1,2($a1)
    lhu	$v0,0($a3)
    sh	$v0,4($a1)
    addiu	$a1,$a1,8
    lhu	$at,0($a3)
    # Line 1974
    addiu	$a0,$a0,4
    bne	$a2,$a0,.L0f11ff34
    # Line 1975
    sh	$at,-2($a1)
.L0f11ff60:
    # Line 2000
    jr	$ra
    nop
.L0f11ff68:
    # Line 1979
    blez	$a2,.L0f11fe3c
    move	$a0,$zero
    move	$a6,$a2
    beqz	$a5,.L0f11ffa0
    move	$a7,$a0
.L0f11ff7c:
    # Line 1980
    lhu	$v0,0($a3)
    # Line 1979
    addiu	$a0,$a0,1
    # Line 1980
    sh	$v0,0($a1)
    # Line 1981
    addiu	$a1,$a1,4
    lhu	$at,2($a3)
    addi	$a5,$a5,-1
    bnez	$a5,.L0f11ff7c
    sh	$at,-2($a1)
    move	$a7,$a0
.L0f11ffa0:
    sra	$v1,$a6,0x2
    beqz	$v1,.L0f120000
    move	$a5,$a1
    move	$a1,$a7
    move	$a0,$a5
.L0f11ffb4:
    # Line 1980
    lhu	$v1,0($a3)
    sh	$v1,0($a0)
    # Line 1981
    lhu	$v0,2($a3)
    sh	$v0,2($a0)
    # Line 1980
    lhu	$at,0($a3)
    sh	$at,4($a0)
    # Line 1981
    lhu	$a4,2($a3)
    sh	$a4,6($a0)
    # Line 1980
    lhu	$v1,0($a3)
    sh	$v1,8($a0)
    # Line 1981
    lhu	$v0,2($a3)
    sh	$v0,10($a0)
    # Line 1980
    lhu	$at,0($a3)
    sh	$at,12($a0)
    # Line 1981
    addiu	$a0,$a0,16
    lhu	$a4,2($a3)
    # Line 1979
    addiu	$a1,$a1,4
    bne	$a2,$a1,.L0f11ffb4
    # Line 1981
    sh	$a4,-2($a0)
.L0f120000:
    # Line 2000
    jr	$ra
    nop
.L0f120008:
    # Line 1985
    blez	$a2,.L0f11fe3c
    move	$a0,$zero
    move	$a6,$a2
    andi	$a5,$a2,0x3
    beqz	$a5,.L0f12004c
    sra	$v1,$a6,0x2
.L0f120020:
    # Line 1986
    lhu	$v0,0($a3)
    sh	$v0,0($a1)
    # Line 1987
    lhu	$at,2($a3)
    # Line 1985
    addiu	$a0,$a0,1
    # Line 1987
    sh	$at,2($a1)
    # Line 1988
    addiu	$a1,$a1,6
    lhu	$a4,4($a3)
    addi	$a5,$a5,-1
    bnez	$a5,.L0f120020
    sh	$a4,-2($a1)
    sra	$v1,$a6,0x2
.L0f12004c:
    move	$a7,$a0
    beqz	$v1,.L0f1200cc
    move	$a5,$a1
    move	$a0,$a7
    move	$a1,$a5
.L0f120060:
    # Line 1986
    lhu	$v1,0($a3)
    sh	$v1,0($a1)
    # Line 1987
    lhu	$v0,2($a3)
    sh	$v0,2($a1)
    # Line 1988
    lhu	$at,4($a3)
    sh	$at,4($a1)
    # Line 1986
    lhu	$a4,0($a3)
    sh	$a4,6($a1)
    # Line 1987
    lhu	$v1,2($a3)
    sh	$v1,8($a1)
    # Line 1988
    lhu	$v0,4($a3)
    sh	$v0,10($a1)
    # Line 1986
    lhu	$at,0($a3)
    sh	$at,12($a1)
    # Line 1987
    lhu	$a4,2($a3)
    sh	$a4,14($a1)
    # Line 1988
    lhu	$v1,4($a3)
    sh	$v1,16($a1)
    # Line 1986
    lhu	$v0,0($a3)
    sh	$v0,18($a1)
    # Line 1987
    lhu	$at,2($a3)
    sh	$at,20($a1)
    # Line 1988
    addiu	$a1,$a1,24
    lhu	$a4,4($a3)
    # Line 1985
    addiu	$a0,$a0,4
    bne	$a2,$a0,.L0f120060
    # Line 1988
    sh	$a4,-2($a1)
.L0f1200cc:
    # Line 2000
    jr	$ra
    nop
.end copyBCWholeRow

# Function: copyBCEdgesRow
# Declared: Line 2002 (Source lines: 2006-2076)
# Address: 0x0f1200d4 - 0x0f1203b4 (Size: 736 bytes, Frame: 0)
.ent copyBCEdgesRow
copyBCEdgesRow:
    # Line 2030
    li	$t2,4
    # Line 2006
    lw	$a6,32($a0)
    # Line 2030
    move	$t3,$a3
    # Line 2009
    li	$a7,1
    beq	$a6,$a7,.L0f120294
    # Line 2030
    move	$a5,$zero
    # Line 2009
    li	$at,2
    beq	$a6,$at,.L0f1202a4
    li	$v0,3
    beq	$a6,$v0,.L0f1202dc
    li	$v1,4
    beql	$a6,$v1,.L0f1202fc
    # Line 2023
    lhu	$v0,0($a4)
.L0f120108:
    # Line 2030
    blez	$a3,.L0f120154
    li	$t0,2
    li	$t1,3
    andi	$a0,$a3,0x1
    beqz	$a0,.L0f12014c
    sra	$at,$t3,0x1
    # Line 2031
    beql	$a6,$a7,.L0f120320
    # Line 2033
    lhu	$v1,0($a2)
    # Line 2031
    beql	$a6,$t0,.L0f120338
    # Line 2036
    lhu	$v0,0($a2)
    # Line 2031
    beql	$a6,$t1,.L0f120374
    # Line 2040
    lhu	$v0,0($a2)
    # Line 2031
    beql	$a6,$t2,.L0f120390
    # Line 2045
    lhu	$v0,0($a2)
.L0f120140:
    # Line 2030
    addiu	$a5,$a5,1
    # Line 2051
    addiu	$a2,$a2,8
    sra	$at,$t3,0x1
.L0f12014c:
    bnez	$at,.L0f1201b8
    nop
.L0f120154:
    # Line 2056
    li	$a0,4
    beq	$a6,$a7,.L0f12032c
    li	$v1,3
    li	$v0,2
    beql	$a6,$v0,.L0f12034c
    # Line 2061
    lhu	$a0,0($a4)
    # Line 2056
    beql	$a6,$v1,.L0f12035c
    # Line 2065
    lhu	$v1,0($a4)
    # Line 2056
    beql	$a6,$a0,.L0f1202bc
    # Line 2070
    lhu	$v1,0($a4)
    # Line 2076
    jr	$ra
    nop
.L0f120184:
    # Line 2033
    addiu	$a1,$a1,2
    sh	$at,-2($a1)
.L0f12018c:
    # Line 2031
    beql	$a6,$a7,.L0f120204
    # Line 2033
    lhu	$v0,8($a2)
.L0f120194:
    # Line 2031
    beql	$a6,$t0,.L0f120210
    # Line 2036
    lhu	$a0,8($a2)
    # Line 2031
    beql	$a6,$t1,.L0f120238
    # Line 2040
    lhu	$at,8($a2)
    # Line 2031
    beql	$a6,$t2,.L0f120270
    # Line 2045
    lhu	$a0,8($a2)
.L0f1201ac:
    # Line 2030
    addiu	$a5,$a5,2
    beq	$a3,$a5,.L0f120154
    # Line 2051
    addiu	$a2,$a2,16
.L0f1201b8:
    # Line 2031
    beql	$a6,$a7,.L0f120184
    # Line 2033
    lhu	$at,0($a2)
    # Line 2031
    beql	$a6,$t0,.L0f120224
    # Line 2036
    lhu	$v0,0($a2)
    # Line 2031
    beql	$a6,$t1,.L0f120254
    # Line 2040
    lhu	$a0,0($a2)
    # Line 2031
    bne	$a6,$t2,.L0f12018c
    nop
    # Line 2045
    lhu	$at,0($a2)
    sh	$at,0($a1)
    # Line 2046
    lhu	$a0,2($a2)
    sh	$a0,2($a1)
    # Line 2047
    lhu	$v1,4($a2)
    sh	$v1,4($a1)
    # Line 2048
    lhu	$v0,6($a2)
    addiu	$a1,$a1,8
    # Line 2031
    bne	$a6,$a7,.L0f120194
    # Line 2048
    sh	$v0,-2($a1)
    # Line 2033
    lhu	$v0,8($a2)
.L0f120204:
    addiu	$a1,$a1,2
    b	.L0f1201ac
    sh	$v0,-2($a1)
.L0f120210:
    # Line 2036
    sh	$a0,0($a1)
    # Line 2037
    lhu	$v1,10($a2)
    addiu	$a1,$a1,4
    # Line 2038
    b	.L0f1201ac
    # Line 2037
    sh	$v1,-2($a1)
.L0f120224:
    # Line 2036
    sh	$v0,0($a1)
    # Line 2037
    lhu	$at,2($a2)
    addiu	$a1,$a1,4
    # Line 2038
    b	.L0f12018c
    # Line 2037
    sh	$at,-2($a1)
.L0f120238:
    # Line 2040
    sh	$at,0($a1)
    # Line 2041
    lhu	$a0,10($a2)
    sh	$a0,2($a1)
    # Line 2042
    lhu	$v1,12($a2)
    addiu	$a1,$a1,6
    # Line 2043
    b	.L0f1201ac
    # Line 2042
    sh	$v1,-2($a1)
.L0f120254:
    # Line 2040
    sh	$a0,0($a1)
    # Line 2041
    lhu	$v1,2($a2)
    sh	$v1,2($a1)
    # Line 2042
    lhu	$v0,4($a2)
    addiu	$a1,$a1,6
    # Line 2043
    b	.L0f12018c
    # Line 2042
    sh	$v0,-2($a1)
.L0f120270:
    # Line 2045
    sh	$a0,0($a1)
    # Line 2046
    lhu	$v1,10($a2)
    sh	$v1,2($a1)
    # Line 2047
    lhu	$v0,12($a2)
    sh	$v0,4($a1)
    # Line 2048
    lhu	$at,14($a2)
    addiu	$a1,$a1,8
    b	.L0f1201ac
    sh	$at,-2($a1)
.L0f120294:
    # Line 2011
    lhu	$at,0($a4)
    addiu	$a1,$a1,2
    # Line 2012
    b	.L0f120108
    # Line 2011
    sh	$at,-2($a1)
.L0f1202a4:
    # Line 2014
    lhu	$v1,0($a4)
    sh	$v1,0($a1)
    # Line 2015
    lhu	$v0,2($a4)
    addiu	$a1,$a1,4
    # Line 2016
    b	.L0f120108
    # Line 2015
    sh	$v0,-2($a1)
.L0f1202bc:
    # Line 2070
    sh	$v1,0($a1)
    # Line 2071
    lhu	$v0,2($a4)
    sh	$v0,2($a1)
    # Line 2072
    lhu	$at,4($a4)
    sh	$at,4($a1)
    # Line 2073
    lhu	$a0,6($a4)
    # Line 2076
    jr	$ra
    # Line 2073
    sh	$a0,6($a1)
.L0f1202dc:
    # Line 2018
    lhu	$v0,0($a4)
    sh	$v0,0($a1)
    # Line 2019
    lhu	$at,2($a4)
    sh	$at,2($a1)
    # Line 2020
    lhu	$a0,4($a4)
    addiu	$a1,$a1,6
    # Line 2021
    b	.L0f120108
    # Line 2020
    sh	$a0,-2($a1)
.L0f1202fc:
    # Line 2023
    sh	$v0,0($a1)
    # Line 2024
    lhu	$at,2($a4)
    sh	$at,2($a1)
    # Line 2025
    lhu	$a0,4($a4)
    sh	$a0,4($a1)
    # Line 2026
    lhu	$v1,6($a4)
    addiu	$a1,$a1,8
    b	.L0f120108
    sh	$v1,-2($a1)
.L0f120320:
    # Line 2033
    addiu	$a1,$a1,2
    b	.L0f120140
    sh	$v1,-2($a1)
.L0f12032c:
    # Line 2058
    lhu	$a0,0($a4)
    # Line 2076
    jr	$ra
    # Line 2058
    sh	$a0,0($a1)
.L0f120338:
    # Line 2036
    sh	$v0,0($a1)
    # Line 2037
    lhu	$at,2($a2)
    addiu	$a1,$a1,4
    b	.L0f120140
    sh	$at,-2($a1)
.L0f12034c:
    # Line 2061
    sh	$a0,0($a1)
    # Line 2062
    lhu	$v1,2($a4)
    # Line 2076
    jr	$ra
    # Line 2062
    sh	$v1,2($a1)
.L0f12035c:
    # Line 2065
    sh	$v1,0($a1)
    # Line 2066
    lhu	$v0,2($a4)
    sh	$v0,2($a1)
    # Line 2067
    lhu	$at,4($a4)
    # Line 2076
    jr	$ra
    # Line 2067
    sh	$at,4($a1)
.L0f120374:
    # Line 2040
    sh	$v0,0($a1)
    # Line 2041
    lhu	$at,2($a2)
    sh	$at,2($a1)
    # Line 2042
    lhu	$a0,4($a2)
    addiu	$a1,$a1,6
    b	.L0f120140
    sh	$a0,-2($a1)
.L0f120390:
    # Line 2045
    sh	$v0,0($a1)
    # Line 2046
    lhu	$at,2($a2)
    sh	$at,2($a1)
    # Line 2047
    lhu	$a0,4($a2)
    sh	$a0,4($a1)
    # Line 2048
    lhu	$v1,6($a2)
    addiu	$a1,$a1,8
    b	.L0f120140
    sh	$v1,-2($a1)
.end copyBCEdgesRow

# Function: copyFatRow
# Declared: Line 2078 (Source lines: 2084-2152)
# Address: 0x0f1203b4 - 0x0f120690 (Size: 732 bytes, Frame: 0)
.ent copyFatRow
copyFatRow:
    # Line 2105
    move	$t2,$a3
    # Line 2084
    li	$a6,1
    beq	$a0,$a6,.L0f12056c
    # Line 2105
    li	$t0,3
    # Line 2084
    li	$at,2
    beq	$a0,$at,.L0f12057c
    li	$v0,3
    beq	$a0,$v0,.L0f1205b4
    li	$v1,4
    beq	$a0,$v1,.L0f1205d4
.L0f1203dc:
    # Line 2105
    move	$a5,$zero
    blez	$a3,.L0f12042c
    li	$a7,2
    li	$t1,4
    andi	$a4,$a3,0x1
    beqz	$a4,.L0f120424
    sra	$at,$t2,0x1
    # Line 2106
    beql	$a0,$a6,.L0f1205fc
    # Line 2108
    lhu	$v1,0($a2)
    # Line 2106
    beql	$a0,$a7,.L0f120614
    # Line 2111
    lhu	$v0,0($a2)
    # Line 2106
    beql	$a0,$t0,.L0f120650
    # Line 2115
    lhu	$v0,0($a2)
    # Line 2106
    beql	$a0,$t1,.L0f12066c
    # Line 2120
    lhu	$v0,0($a2)
.L0f120418:
    # Line 2105
    addiu	$a5,$a5,1
    # Line 2126
    addiu	$a2,$a2,8
    sra	$at,$t2,0x1
.L0f120424:
    bnez	$at,.L0f120490
    nop
.L0f12042c:
    # Line 2132
    li	$a4,4
    beq	$a0,$a6,.L0f120608
    li	$v1,3
    li	$v0,2
    beql	$a0,$v0,.L0f120628
    # Line 2137
    lhu	$a4,-8($a2)
    # Line 2132
    beql	$a0,$v1,.L0f120638
    # Line 2141
    lhu	$v1,-8($a2)
    # Line 2132
    beql	$a0,$a4,.L0f120594
    # Line 2146
    lhu	$v1,-8($a2)
    # Line 2152
    jr	$ra
    nop
.L0f12045c:
    # Line 2108
    addiu	$a1,$a1,2
    sh	$at,-2($a1)
.L0f120464:
    # Line 2105
    addiu	$a5,$a5,2
.L0f120468:
    # Line 2106
    beq	$a0,$a6,.L0f1204d8
    # Line 2126
    addiu	$a2,$a2,8
    # Line 2106
    beql	$a0,$a7,.L0f1204e8
    # Line 2111
    lhu	$a4,0($a2)
    # Line 2106
    beql	$a0,$t0,.L0f120510
    # Line 2115
    lhu	$at,0($a2)
    # Line 2106
    beql	$a0,$t1,.L0f120548
    # Line 2120
    lhu	$a4,0($a2)
.L0f120488:
    # Line 2105
    beq	$a3,$a5,.L0f12042c
    # Line 2126
    addiu	$a2,$a2,8
.L0f120490:
    # Line 2106
    beql	$a0,$a6,.L0f12045c
    # Line 2108
    lhu	$at,0($a2)
    # Line 2106
    beql	$a0,$a7,.L0f1204fc
    # Line 2111
    lhu	$v0,0($a2)
    # Line 2106
    beql	$a0,$t0,.L0f12052c
    # Line 2115
    lhu	$a4,0($a2)
    # Line 2106
    bnel	$a0,$t1,.L0f120468
    # Line 2105
    addiu	$a5,$a5,2
    # Line 2120
    lhu	$at,0($a2)
    sh	$at,0($a1)
    # Line 2121
    lhu	$a4,2($a2)
    sh	$a4,2($a1)
    # Line 2122
    lhu	$v1,4($a2)
    sh	$v1,4($a1)
    # Line 2123
    lhu	$v0,6($a2)
    addiu	$a1,$a1,8
    b	.L0f120464
    sh	$v0,-2($a1)
.L0f1204d8:
    # Line 2108
    lhu	$v0,0($a2)
    addiu	$a1,$a1,2
    b	.L0f120488
    sh	$v0,-2($a1)
.L0f1204e8:
    # Line 2111
    sh	$a4,0($a1)
    # Line 2112
    lhu	$v1,2($a2)
    addiu	$a1,$a1,4
    # Line 2113
    b	.L0f120488
    # Line 2112
    sh	$v1,-2($a1)
.L0f1204fc:
    # Line 2111
    sh	$v0,0($a1)
    # Line 2112
    lhu	$at,2($a2)
    addiu	$a1,$a1,4
    # Line 2113
    b	.L0f120464
    # Line 2112
    sh	$at,-2($a1)
.L0f120510:
    # Line 2115
    sh	$at,0($a1)
    # Line 2116
    lhu	$a4,2($a2)
    sh	$a4,2($a1)
    # Line 2117
    lhu	$v1,4($a2)
    addiu	$a1,$a1,6
    # Line 2118
    b	.L0f120488
    # Line 2117
    sh	$v1,-2($a1)
.L0f12052c:
    # Line 2115
    sh	$a4,0($a1)
    # Line 2116
    lhu	$v1,2($a2)
    sh	$v1,2($a1)
    # Line 2117
    lhu	$v0,4($a2)
    addiu	$a1,$a1,6
    # Line 2118
    b	.L0f120464
    # Line 2117
    sh	$v0,-2($a1)
.L0f120548:
    # Line 2120
    sh	$a4,0($a1)
    # Line 2121
    lhu	$v1,2($a2)
    sh	$v1,2($a1)
    # Line 2122
    lhu	$v0,4($a2)
    sh	$v0,4($a1)
    # Line 2123
    lhu	$at,6($a2)
    addiu	$a1,$a1,8
    b	.L0f120488
    sh	$at,-2($a1)
.L0f12056c:
    # Line 2086
    lhu	$at,0($a2)
    addiu	$a1,$a1,2
    # Line 2087
    b	.L0f1203dc
    # Line 2086
    sh	$at,-2($a1)
.L0f12057c:
    # Line 2089
    lhu	$v1,0($a2)
    sh	$v1,0($a1)
    # Line 2090
    lhu	$v0,2($a2)
    addiu	$a1,$a1,4
    # Line 2091
    b	.L0f1203dc
    # Line 2090
    sh	$v0,-2($a1)
.L0f120594:
    # Line 2146
    sh	$v1,0($a1)
    # Line 2147
    lhu	$v0,-6($a2)
    sh	$v0,2($a1)
    # Line 2148
    lhu	$at,-4($a2)
    sh	$at,4($a1)
    # Line 2149
    lhu	$a4,-2($a2)
    # Line 2152
    jr	$ra
    # Line 2149
    sh	$a4,6($a1)
.L0f1205b4:
    # Line 2093
    lhu	$v0,0($a2)
    sh	$v0,0($a1)
    # Line 2094
    lhu	$at,2($a2)
    sh	$at,2($a1)
    # Line 2095
    lhu	$a4,4($a2)
    addiu	$a1,$a1,6
    # Line 2096
    b	.L0f1203dc
    # Line 2095
    sh	$a4,-2($a1)
.L0f1205d4:
    # Line 2098
    lhu	$v0,0($a2)
    sh	$v0,0($a1)
    # Line 2099
    lhu	$at,2($a2)
    sh	$at,2($a1)
    # Line 2100
    lhu	$a4,4($a2)
    sh	$a4,4($a1)
    # Line 2101
    lhu	$v1,6($a2)
    addiu	$a1,$a1,8
    b	.L0f1203dc
    sh	$v1,-2($a1)
.L0f1205fc:
    # Line 2108
    addiu	$a1,$a1,2
    b	.L0f120418
    sh	$v1,-2($a1)
.L0f120608:
    # Line 2134
    lhu	$a4,-8($a2)
    # Line 2152
    jr	$ra
    # Line 2134
    sh	$a4,0($a1)
.L0f120614:
    # Line 2111
    sh	$v0,0($a1)
    # Line 2112
    lhu	$at,2($a2)
    addiu	$a1,$a1,4
    b	.L0f120418
    sh	$at,-2($a1)
.L0f120628:
    # Line 2137
    sh	$a4,0($a1)
    # Line 2138
    lhu	$v1,-6($a2)
    # Line 2152
    jr	$ra
    # Line 2138
    sh	$v1,2($a1)
.L0f120638:
    # Line 2141
    sh	$v1,0($a1)
    # Line 2142
    lhu	$v0,-6($a2)
    sh	$v0,2($a1)
    # Line 2143
    lhu	$at,-4($a2)
    # Line 2152
    jr	$ra
    # Line 2143
    sh	$at,4($a1)
.L0f120650:
    # Line 2115
    sh	$v0,0($a1)
    # Line 2116
    lhu	$at,2($a2)
    sh	$at,2($a1)
    # Line 2117
    lhu	$a4,4($a2)
    addiu	$a1,$a1,6
    b	.L0f120418
    sh	$a4,-2($a1)
.L0f12066c:
    # Line 2120
    sh	$v0,0($a1)
    # Line 2121
    lhu	$at,2($a2)
    sh	$at,2($a1)
    # Line 2122
    lhu	$a4,4($a2)
    sh	$a4,4($a1)
    # Line 2123
    lhu	$v1,6($a2)
    addiu	$a1,$a1,8
    b	.L0f120418
    sh	$v1,-2($a1)
.end copyFatRow

# Function: extractFrom4TexelBorder
# Declared: Line 2154 (Source lines: 2156-2211)
# Address: 0x0f120690 - 0x0f120aac (Size: 1052 bytes, Frame: 176)
.ent extractFrom4TexelBorder
extractFrom4TexelBorder:
    # Line 2156
    addiu	$sp,$sp,-176
    sd	$s3,40($sp)
    # Line 2160
    lw	$s3,32($a0)
    sd	$s4,32($sp)
    addiu	$s4,$a1,2
    mult	$s4,$s3
    # Line 2167
    li	$a5,2
    sd	$s8,8($sp)
    # Line 2156
    move	$s8,$a0
    sd	$s5,24($sp)
    move	$s5,$a1
    sd	$a2,56($sp)
    sd	$s1,16($sp)
    move	$s1,$a3
    # Line 2160
    lw	$at,388($a0)
    mflo	$v0
    addu	$v0,$v0,$v0
    addu	$v0,$v0,$a4
    beqz	$at,.L0f120960
    sd	$v0,48($sp)
    # Line 2167
    li	$v1,1
    beq	$s3,$v1,.L0f12085c
    # Line 2169
    lwc1	$f1,_lit_477fff00
    # Line 2167
    beq	$s3,$a5,.L0f120878
    # Line 2172
    lwc1	$f3,_lit_477fff00
    # Line 2167
    li	$at,3
    beq	$s3,$at,.L0f1208ac
    li	$v0,4
    beq	$s3,$v0,.L0f1208fc
    # Line 2181
    lwc1	$f2,_lit_477fff00
.L0f120708:
    sd	$s0,96($sp)
    sd	$s6,72($sp)
    # Line 2188
    addiu	$a3,$sp,0
    move	$a2,$s4
    # Line 2186
    la	$t9,sub_0f120000
    # Line 2188
    move	$a1,$a4
    sd	$ra,88($sp)
    # Line 2186
    addiu	$t9,$t9,-496
    # Line 2188
    bal gl_g_texdef3d
    move	$a0,$s3
    # Line 2191
    ld	$at,56($sp)
    ld	$s0,48($sp)
    blez	$at,.L0f120818
    move	$s6,$zero
    sd	$s7,104($sp)
    sll	$s7,$s5,0x3
    ld	$a0,56($sp)
    sd	$s2,112($sp)
    la	$s2,sub_0f120000
    andi	$v0,$a0,0x1
    beqz	$v0,.L0f12079c
    addiu	$s2,$s2,212
    sd	$a0,80($sp)
    # Line 2192
    move	$a0,$s8
    move	$a1,$s0
    move	$a3,$s5
    addiu	$a4,$sp,0
    move	$a2,$s1
    # Line 2194
    addu	$s1,$s7,$s1
    # Line 2192
    bal gl_g_texdef3d
    move	$t9,$s2
    # Line 2193
    mult	$s4,$s3
    # Line 2191
    addiu	$s6,$s6,1
    ld	$a0,80($sp)
    # Line 2193
    mflo	$at
    addu	$at,$at,$at
    addu	$s0,$at,$s0
.L0f12079c:
    sra	$v0,$a0,0x1
    beqz	$v0,.L0f120810
.L0f1207a4:
    # Line 2192
    move	$a0,$s8
    move	$a1,$s0
    move	$a3,$s5
    addiu	$a4,$sp,0
    move	$a2,$s1
    # Line 2194
    addu	$s1,$s7,$s1
    # Line 2192
    bal gl_g_texdef3d
    move	$t9,$s2
    # Line 2193
    mult	$s4,$s3
    # Line 2191
    addiu	$s6,$s6,2
    # Line 2192
    addiu	$a4,$sp,0
    move	$a3,$s5
    move	$a0,$s8
    move	$t9,$s2
    move	$a2,$s1
    # Line 2193
    mflo	$v1
    addu	$v1,$v1,$v1
    addu	$s0,$v1,$s0
    # Line 2192
    bal gl_g_texdef3d
    move	$a1,$s0
    # Line 2193
    mult	$s4,$s3
    # Line 2194
    addu	$s1,$s7,$s1
    # Line 2191
    ld	$a5,56($sp)
    # Line 2193
    mflo	$at
    addu	$at,$at,$at
    # Line 2191
    bne	$a5,$s6,.L0f1207a4
    # Line 2193
    addu	$s0,$at,$s0
.L0f120810:
    ld	$s7,104($sp)
    ld	$s2,112($sp)
.L0f120818:
    # Line 2196
    move	$a0,$s3
    move	$a1,$s0
    move	$a2,$s4
    addiu	$a3,$sp,0
    ld	$s8,8($sp)
    la	$t9,sub_0f120000
    ld	$s5,24($sp)
    ld	$s1,16($sp)
    addiu	$t9,$t9,-496
    bal gl_g_texdef3d
    ld	$s6,72($sp)
    ld	$s0,96($sp)
    ld	$ra,88($sp)
    ld	$s4,32($sp)
    ld	$s3,40($sp)
.L0f120854:
    # Line 2211
    jr	$ra
    addiu	$sp,$sp,176
.L0f12085c:
    # Line 2169
    lwc1	$f0,96($s8)
    mul.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$at,$f0
    sd	$ra,88($sp)
    # Line 2170
    b	.L0f120708
    # Line 2169
    sh	$at,0($sp)
.L0f120878:
    # Line 2172
    lwc1	$f0,96($s8)
    mul.s	$f0,$f0,$f3
    trunc.w.s	$f0,$f0
    mfc1	$v1,$f0
    nop
    sh	$v1,0($sp)
    # Line 2173
    lwc1	$f2,100($s8)
    mul.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$v0,$f2
    sd	$ra,88($sp)
    # Line 2174
    b	.L0f120708
    # Line 2173
    sh	$v0,2($sp)
.L0f1208ac:
    # Line 2176
    lwc1	$f2,_lit_477fff00
    lwc1	$f0,96($s8)
    mul.s	$f0,$f0,$f2
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    nop
    sh	$v0,0($sp)
    # Line 2177
    lwc1	$f3,100($s8)
    mul.s	$f3,$f3,$f2
    trunc.w.s	$f3,$f3
    mfc1	$at,$f3
    nop
    sh	$at,2($sp)
    # Line 2178
    lwc1	$f1,104($s8)
    mul.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$a5,$f1
    sd	$ra,88($sp)
    # Line 2179
    b	.L0f120708
    # Line 2178
    sh	$a5,4($sp)
.L0f1208fc:
    # Line 2181
    lwc1	$f1,108($s8)
    mul.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$v0,$f1
    nop
    sh	$v0,0($sp)
    # Line 2182
    lwc1	$f0,104($s8)
    mul.s	$f0,$f0,$f2
    trunc.w.s	$f0,$f0
    mfc1	$at,$f0
    nop
    sh	$at,2($sp)
    # Line 2183
    lwc1	$f3,100($s8)
    mul.s	$f3,$f3,$f2
    trunc.w.s	$f3,$f3
    mfc1	$a5,$f3
    nop
    sh	$a5,4($sp)
    # Line 2184
    lwc1	$f1,96($s8)
    mul.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    sd	$ra,88($sp)
    b	.L0f120708
    sh	$v1,6($sp)
.L0f120960:
    sd	$s0,96($sp)
    sd	$s6,72($sp)
    # Line 2199
    move	$a0,$s3
    move	$a1,$a4
    move	$a2,$s1
    move	$a3,$s5
    sd	$s2,112($sp)
    # Line 2196
    la	$s2,sub_0f120000
    ld	$s8,8($sp)
    sd	$ra,88($sp)
    addiu	$s2,$s2,948
    # Line 2199
    bal gl_g_texdef3d
    move	$t9,$s2
    # Line 2202
    ld	$at,56($sp)
    sd	$s7,104($sp)
    ld	$s0,48($sp)
    blez	$at,.L0f120a9c
    move	$s6,$zero
    ld	$a0,56($sp)
    andi	$v0,$a0,0x1
    beqz	$v0,.L0f1209f0
    sll	$s7,$s5,0x3
    sd	$a0,64($sp)
    # Line 2203
    move	$a0,$s3
    move	$a1,$s0
    move	$a2,$s1
    move	$a3,$s5
    bal gl_g_texdef3d
    move	$t9,$s2
    # Line 2204
    mult	$s4,$s3
    # Line 2202
    addiu	$s6,$s6,1
    # Line 2205
    addu	$s1,$s7,$s1
    ld	$a0,64($sp)
    # Line 2204
    mflo	$v1
    addu	$v1,$v1,$v1
    addu	$s0,$v1,$s0
.L0f1209f0:
    sra	$a5,$a0,0x1
    beqz	$a5,.L0f120a5c
.L0f1209f8:
    # Line 2203
    move	$a0,$s3
    move	$a1,$s0
    move	$a3,$s5
    move	$a2,$s1
    # Line 2205
    addu	$s1,$s7,$s1
    # Line 2203
    bal gl_g_texdef3d
    move	$t9,$s2
    # Line 2204
    mult	$s4,$s3
    # Line 2202
    addiu	$s6,$s6,2
    # Line 2203
    move	$a0,$s3
    move	$a3,$s5
    move	$t9,$s2
    move	$a2,$s1
    # Line 2204
    mflo	$a6
    addu	$a6,$a6,$a6
    addu	$s0,$a6,$s0
    # Line 2203
    bal gl_g_texdef3d
    move	$a1,$s0
    # Line 2204
    mult	$s4,$s3
    # Line 2205
    addu	$s1,$s7,$s1
    # Line 2202
    ld	$at,56($sp)
    # Line 2204
    mflo	$v0
    addu	$v0,$v0,$v0
    # Line 2202
    bne	$at,$s6,.L0f1209f8
    # Line 2204
    addu	$s0,$v0,$s0
.L0f120a5c:
    ld	$s4,32($sp)
    ld	$s6,72($sp)
.L0f120a64:
    # Line 2207
    subu	$a2,$s1,$s7
    # Line 2209
    move	$a0,$s3
    move	$a1,$s0
    move	$a3,$s5
    bal gl_g_texdef3d
    move	$t9,$s2
    ld	$s5,24($sp)
    ld	$s1,16($sp)
    ld	$s0,96($sp)
    ld	$s7,104($sp)
    ld	$ra,88($sp)
    ld	$s3,40($sp)
    b	.L0f120854
    ld	$s2,112($sp)
.L0f120a9c:
    # Line 2202
    sll	$s7,$s5,0x3
    ld	$s4,32($sp)
    b	.L0f120a64
    ld	$s6,72($sp)
.end extractFrom4TexelBorder

# Function: MakeOneBorderLevel
# Declared: Line 2213 (Source lines: 2214-2236)
# Address: 0x0f120aac - 0x0f120bd8 (Size: 300 bytes, Frame: 208)
.ent MakeOneBorderLevel
MakeOneBorderLevel:
    # Line 2222
    li	$a1,1
    # Line 2214
    addiu	$sp,$sp,-80
    sd	$s1,48($sp)
    sd	$ra,32($sp)
    sd	$s2,24($sp)
    sd	$s0,40($sp)
    # Line 2222
    la	$t9,sub_0f120000
    # Line 2214
    move	$s0,$a0
    # Line 2221
    lw	$s2,40($s0)
    # Line 2222
    addiu	$t9,$t9,8368
    bal gl_g_texdef3d
    # Line 2220
    lw	$s1,36($s0)
    # Line 2224
    la	$t9,sub_0f120000
    move	$a0,$s0
    addiu	$t9,$t9,-2792
    bal gl_g_texdef3d
    # Line 2222
    sw	$v0,428($s0)
    # Line 2225
    lw	$a4,32($s0)
    addiu	$a5,$s1,2
    multu	$a4,$a5
    mflo	$a3
    nop
    addiu	$a2,$s2,2
    multu	$a2,$a3
    la	$a1,sub_0f030000
    sd	$s3,56($sp)
    la	$t9,gl_malloc
    lw	$a1,-21520($a1)
    mflo	$a0
    jalr	$t9
    addu	$a0,$a0,$a0
    move	$s3,$v0
    # Line 2227
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s2
    la	$t9,sub_0f120000
    move	$a4,$v0
    lw	$a3,428($s0)
    addiu	$t9,$t9,1680
    bal gl_g_texdef3d
    lw	$a3,20($a3)
    # Line 2228
    addiu	$a3,$sp,20
    la	$t9,SetOglFormatAndComps
    addiu	$a2,$sp,16
    lw	$a1,132($s0)
    bal SetOglFormatAndComps
    lw	$a0,32($s0)
    # Line 2231
    lw	$a6,16($sp)
    lw	$a2,32($s0)
    sw	$s3,4($sp)
    li	$a7,5123
    li	$a5,1
    addiu	$a4,$s2,2
    la	$t9,glTexImage2D
    addiu	$a3,$s1,2
    move	$a1,$zero
    jalr	$t9
    li	$a0,3553
    # Line 2233
    la	$t9,sub_0f120000
    lw	$a0,428($s0)
    ld	$s1,48($sp)
    addiu	$t9,$t9,-12012
    bal gl_g_texdef2d
    ld	$s2,24($sp)
    # Line 2235
    move	$a0,$s3
    la	$t9,gl_free
    la	$a1,sub_0f020000
    # Line 2234
    sw	$zero,428($s0)
    # Line 2235
    jalr	$t9
    addiu	$a1,$a1,22456
    ld	$ra,32($sp)
    # Line 2236
    ld	$s0,40($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end MakeOneBorderLevel

# Function: MakeMipMapsBorder
# Declared: Line 2245 (Source lines: 2246-2286)
# Address: 0x0f120bd8 - 0x0f120f10 (Size: 824 bytes, Frame: 144)
.ent MakeMipMapsBorder
MakeMipMapsBorder:
    # Line 2246
    addiu	$sp,$sp,-144
    sd	$s7,112($sp)
    sd	$s4,40($sp)
    move	$s4,$a0
    sd	$s0,24($sp)
    la	$s0,sub_0f120000
    # Line 2251
    lw	$a0,44($a0)
    sd	$ra,32($sp)
    # Line 2246
    addiu	$s0,$s0,-8124
    # Line 2251
    bal gl_g_texdef3d
    move	$t9,$s0
    sd	$s1,72($sp)
    move	$s7,$v0
    lw	$a0,36($s4)
    bal gl_g_texdef3d
    move	$t9,$s0
    move	$s1,$v0
    lw	$a0,40($s4)
    bal gl_g_texdef3d
    move	$t9,$s0
    slt	$at,$v0,$s1
    beqzl	$at,.L0f120c48
    lw	$a0,40($s4)
    lw	$a0,36($s4)
    bal gl_g_texdef3d
    move	$t9,$s0
    b	.L0f120c54
    slt	$v1,$v0,$s7
.L0f120c48:
    bal gl_g_texdef3d
    move	$t9,$s0
    slt	$v1,$v0,$s7
.L0f120c54:
    beqzl	$v1,.L0f120c78
    lw	$a0,36($s4)
    sd	$s6,96($sp)
    lw	$a0,44($s4)
    bal gl_g_texdef3d
    move	$t9,$s0
    move	$s6,$v0
    b	.L0f120cc8
    ld	$s0,24($sp)
.L0f120c78:
    bal gl_g_texdef3d
    move	$t9,$s0
    move	$s1,$v0
    lw	$a0,40($s4)
    bal gl_g_texdef3d
    move	$t9,$s0
    slt	$a6,$v0,$s1
    beqzl	$a6,.L0f120cb4
    lw	$a0,40($s4)
    lw	$a0,36($s4)
    bal gl_g_texdef3d
    move	$t9,$s0
    sd	$s6,96($sp)
    b	.L0f120cc4
    ld	$s0,24($sp)
.L0f120cb4:
    bal gl_g_texdef3d
    move	$t9,$s0
    sd	$s6,96($sp)
    ld	$s0,24($sp)
.L0f120cc4:
    move	$s6,$v0
.L0f120cc8:
    # Line 2252
    addiu	$a3,$sp,20
    la	$t9,SetOglFormatAndComps
    addiu	$a2,$sp,16
    lw	$a1,132($s4)
    bal SetOglFormatAndComps
    lw	$a0,32($s4)
    # Line 2254
    la	$t9,sub_0f120000
    move	$a0,$s4
    addiu	$a1,$s6,1
    addiu	$t9,$t9,8368
    bal gl_g_texdef3d
    sd	$a1,56($sp)
    # Line 2255
    lw	$a4,36($s4)
    lw	$a3,32($s4)
    addiu	$a4,$a4,2
    multu	$a3,$a4
    lw	$a2,40($s4)
    mflo	$a3
    nop
    addiu	$a2,$a2,2
    multu	$a2,$a3
    la	$a1,sub_0f030000
    # Line 2254
    sw	$v0,428($s4)
    # Line 2255
    la	$t9,gl_malloc
    lw	$a1,-21520($a1)
    mflo	$a0
    jalr	$t9
    addu	$a0,$a0,$a0
    # Line 2258
    la	$t9,sub_0f120000
    sd	$s2,88($sp)
    # Line 2255
    move	$s7,$v0
    # Line 2258
    addiu	$t9,$t9,-2792
    bal gl_g_texdef3d
    move	$a0,$s4
    # Line 2260
    lw	$a2,40($s4)
    lw	$a1,36($s4)
    move	$a0,$s4
    lw	$a3,428($s4)
    la	$s2,sub_0f120000
    move	$a4,$s7
    lw	$a3,20($a3)
    addiu	$s2,$s2,1680
    bal gl_g_texdef3d
    move	$t9,$s2
    sd	$s3,104($sp)
    sd	$s5,80($sp)
    # Line 2264
    lw	$a6,16($sp)
    lw	$a2,32($s4)
    lw	$a3,36($s4)
    lw	$a4,40($s4)
    sw	$s7,4($sp)
    li	$a7,5123
    li	$a5,1
    move	$a1,$zero
    la	$t9,glTexImage2D
    li	$a0,3553
    addiu	$a4,$a4,2
    jalr	$t9
    addiu	$a3,$a3,2
    # Line 2268
    lw	$a0,428($s4)
    # Line 2271
    li	$s5,1
    # Line 2269
    lw	$s3,8($a0)
    # Line 2270
    lw	$a6,12($a0)
    # Line 2268
    lw	$s1,4($a0)
    # Line 2271
    blez	$s6,.L0f120ec4
    sd	$a6,64($sp)
    addiu	$at,$s4,264
    li	$s0,20
    sd	$s8,120($sp)
    la	$s8,sub_0f120000
    sd	$at,48($sp)
    b	.L0f120e58
    addiu	$s8,$s8,4708
.L0f120dec:
    # Line 2275
    li	$s6,1
.L0f120df0:
    move	$s3,$s6
    # Line 2277
    move	$a0,$s4
    move	$a1,$s2
    move	$a2,$s6
    lw	$a3,428($s4)
    la	$t9,sub_0f120000
    move	$a4,$s7
    addu	$a3,$a3,$s0
    addiu	$t9,$t9,1680
    bal gl_g_texdef3d
    lw	$a3,20($a3)
    # Line 2271
    addiu	$s0,$s0,20
    # Line 2278
    lw	$a2,32($s4)
    lw	$a6,16($sp)
    sw	$s7,4($sp)
    li	$a7,5123
    li	$a5,1
    addiu	$a4,$s6,2
    la	$t9,glTexImage2D
    addiu	$a3,$s2,2
    move	$a1,$s5
    jalr	$t9
    li	$a0,3553
    # Line 2271
    ld	$at,56($sp)
    addiu	$s5,$s5,1
    beq	$at,$s5,.L0f120eb8
.L0f120e58:
    ld	$a5,64($sp)
    # Line 2272
    move	$a4,$s3
    move	$a3,$s1
    ld	$a0,48($sp)
    move	$t9,$s8
    lw	$a7,88($s4)
    lw	$a2,428($s4)
    lw	$a6,84($s4)
    lw	$v0,92($s4)
    addu	$a2,$a2,$s0
    lw	$a1,0($a2)
    lw	$a2,20($a2)
    bal gl_g_texdef3d
    sw	$v0,4($sp)
    slti	$a6,$s1,2
    beqz	$a6,.L0f120ea0
    # Line 2274
    sra	$s2,$s1,0x1
    li	$s2,1
.L0f120ea0:
    slti	$a7,$s3,2
    bnez	$a7,.L0f120dec
    move	$s1,$s2
    # Line 2275
    sra	$s6,$s3,0x1
    b	.L0f120df0
    nop
.L0f120eb8:
    # Line 2271
    lw	$a0,428($s4)
    ld	$s0,24($sp)
    ld	$s8,120($sp)
.L0f120ec4:
    ld	$s5,80($sp)
    ld	$s1,72($sp)
    # Line 2283
    la	$t9,sub_0f120000
    ld	$s3,104($sp)
    ld	$s6,96($sp)
    addiu	$t9,$t9,-12012
    bal gl_g_texdef2d
    ld	$s2,88($sp)
    # Line 2285
    move	$a0,$s7
    la	$t9,gl_free
    la	$a1,sub_0f020000
    # Line 2284
    sw	$zero,428($s4)
    # Line 2285
    jalr	$t9
    addiu	$a1,$a1,22456
    ld	$ra,32($sp)
    # Line 2286
    ld	$s4,40($sp)
    ld	$s7,112($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end MakeMipMapsBorder

# Function: MakeMipMaps
# Declared: Line 2294 (Source lines: 2295-2342)
# Address: 0x0f120f10 - 0x0f121264 (Size: 852 bytes, Frame: 144)
.ent MakeMipMaps
MakeMipMaps:
    # Line 2295
    addiu	$sp,$sp,-144
    sd	$s8,112($sp)
    sd	$s6,40($sp)
    move	$s6,$a0
    sd	$s0,32($sp)
    la	$s0,sub_0f120000
    # Line 2302
    lw	$a0,44($a0)
    sd	$ra,48($sp)
    # Line 2295
    addiu	$s0,$s0,-8124
    # Line 2302
    bal gl_g_texdef3d
    move	$t9,$s0
    sd	$s1,80($sp)
    move	$s8,$v0
    lw	$a0,36($s6)
    bal gl_g_texdef3d
    move	$t9,$s0
    move	$s1,$v0
    lw	$a0,40($s6)
    bal gl_g_texdef3d
    move	$t9,$s0
    slt	$at,$v0,$s1
    beqzl	$at,.L0f120f84
    lw	$a0,40($s6)
    lw	$a0,36($s6)
    move	$t9,$s0
    bal gl_g_texdef3d
    ld	$s1,80($sp)
    b	.L0f120f94
    slt	$v1,$v0,$s8
.L0f120f84:
    move	$t9,$s0
    bal gl_g_texdef3d
    ld	$s1,80($sp)
    slt	$v1,$v0,$s8
.L0f120f94:
    beqzl	$v1,.L0f120fb0
    sd	$s5,64($sp)
    lw	$a0,44($s6)
    bal gl_g_texdef3d
    move	$t9,$s0
    b	.L0f121000
    move	$s0,$v0
.L0f120fb0:
    lw	$a0,36($s6)
    bal gl_g_texdef3d
    move	$t9,$s0
    move	$s5,$v0
    lw	$a0,40($s6)
    bal gl_g_texdef3d
    move	$t9,$s0
    slt	$a6,$v0,$s5
    beqzl	$a6,.L0f120ff0
    lw	$a0,40($s6)
    lw	$a0,36($s6)
    move	$t9,$s0
    bal gl_g_texdef3d
    ld	$s5,64($sp)
    b	.L0f121000
    move	$s0,$v0
.L0f120ff0:
    move	$t9,$s0
    bal gl_g_texdef3d
    ld	$s5,64($sp)
    move	$s0,$v0
.L0f121000:
    # Line 2303
    addiu	$a3,$sp,20
    la	$t9,SetOglFormatAndComps
    addiu	$a2,$sp,16
    lw	$a1,132($s6)
    bal SetOglFormatAndComps
    lw	$a0,32($s6)
    # Line 2310
    la	$t9,sub_0f120000
    move	$a0,$s6
    addiu	$a1,$s0,1
    addiu	$t9,$t9,8368
    bal gl_g_texdef3d
    sd	$a1,56($sp)
    # Line 2311
    lw	$a5,36($s6)
    lw	$a4,32($s6)
    multu	$a4,$a5
    lw	$a2,40($s6)
    mflo	$a3
    nop
    nop
    multu	$a2,$a3
    la	$a1,sub_0f030000
    # Line 2310
    sw	$v0,428($s6)
    # Line 2311
    la	$t9,gl_malloc
    lw	$a1,-21520($a1)
    mflo	$a0
    jalr	$t9
    addu	$a0,$a0,$a0
    # Line 2313
    la	$t9,sub_0f120000
    sd	$s2,88($sp)
    # Line 2311
    move	$s8,$v0
    # Line 2313
    addiu	$t9,$t9,-2792
    bal gl_g_texdef3d
    move	$a0,$s6
    # Line 2318
    lw	$a2,40($s6)
    lw	$a1,36($s6)
    lw	$a0,32($s6)
    lw	$a3,428($s6)
    la	$s2,sub_0f120000
    move	$a4,$s8
    lw	$a3,20($a3)
    addiu	$s2,$s2,-1372
    bal gl_g_texdef3d
    move	$t9,$s2
    sd	$s4,104($sp)
    sd	$s3,96($sp)
    sd	$s7,72($sp)
    sd	$s5,64($sp)
    # Line 2320
    lw	$a6,16($sp)
    lw	$a4,40($s6)
    lw	$a3,36($s6)
    lw	$a2,32($s6)
    sw	$s8,4($sp)
    li	$a7,5123
    la	$t9,glTexImage2D
    move	$a5,$zero
    move	$a1,$zero
    jalr	$t9
    li	$a0,3553
    sd	$s0,120($sp)
    # Line 2324
    lw	$a0,428($s6)
    # Line 2327
    li	$s7,1
    # Line 2326
    lw	$s5,12($a0)
    # Line 2325
    lw	$s4,8($a0)
    # Line 2327
    blez	$s0,.L0f121214
    # Line 2324
    lw	$s3,4($a0)
    # Line 2327
    addiu	$at,$s6,264
    li	$s0,20
    la	$s1,sub_0f120000
    sd	$at,24($sp)
    b	.L0f121190
    addiu	$s1,$s1,4708
.L0f12111c:
    # Line 2332
    li	$v0,1
.L0f121120:
    move	$s5,$v0
    # Line 2333
    move	$a2,$s1
    move	$a1,$s2
    lw	$a0,32($s6)
    lw	$a3,428($s6)
    la	$t9,sub_0f120000
    move	$a4,$s8
    addu	$a3,$a3,$s0
    addiu	$t9,$t9,-1372
    bal gl_g_texdef3d
    lw	$a3,20($a3)
    # Line 2334
    lw	$a2,32($s6)
    lw	$a6,16($sp)
    sw	$s8,4($sp)
    li	$a7,5123
    move	$a5,$zero
    move	$a4,$s1
    move	$a3,$s2
    la	$t9,glTexImage2D
    move	$a1,$s7
    # Line 2327
    addiu	$s7,$s7,1
    # Line 2334
    jalr	$t9
    li	$a0,3553
    # Line 2327
    ld	$at,56($sp)
    la	$s1,sub_0f120000
    addiu	$s0,$s0,20
    beq	$at,$s7,.L0f12120c
    addiu	$s1,$s1,4708
.L0f121190:
    # Line 2328
    move	$a5,$s5
    move	$a4,$s4
    move	$a3,$s3
    ld	$a0,24($sp)
    move	$t9,$s1
    lw	$a7,88($s6)
    lw	$a2,428($s6)
    lw	$a6,84($s6)
    lw	$t8,92($s6)
    addu	$a2,$a2,$s0
    lw	$a1,0($a2)
    lw	$a2,20($a2)
    bal gl_g_texdef3d
    sw	$t8,4($sp)
    # Line 2330
    li	$s2,1
    # Line 2328
    slti	$a6,$s3,2
    bnez	$a6,.L0f1211dc
    # Line 2330
    slti	$a7,$s4,2
    sra	$s2,$s3,0x1
.L0f1211dc:
    bnez	$a7,.L0f1211f0
    move	$s3,$s2
    # Line 2331
    sra	$s1,$s4,0x1
    b	.L0f1211f4
    nop
.L0f1211f0:
    li	$s1,1
.L0f1211f4:
    slti	$at,$s5,2
    bnez	$at,.L0f12111c
    move	$s4,$s1
    # Line 2332
    sra	$v0,$s5,0x1
    b	.L0f121120
    nop
.L0f12120c:
    # Line 2327
    lw	$a0,428($s6)
    ld	$s1,80($sp)
.L0f121214:
    ld	$s7,72($sp)
    ld	$s5,64($sp)
    ld	$s0,32($sp)
    # Line 2339
    la	$t9,sub_0f120000
    ld	$s4,104($sp)
    ld	$s3,96($sp)
    addiu	$t9,$t9,-12012
    bal gl_g_texdef2d
    ld	$s2,88($sp)
    # Line 2341
    move	$a0,$s8
    la	$t9,gl_free
    la	$a1,sub_0f020000
    # Line 2340
    sw	$zero,428($s6)
    # Line 2341
    jalr	$t9
    addiu	$a1,$a1,22456
    ld	$ra,48($sp)
    # Line 2342
    ld	$s6,40($sp)
    ld	$s8,112($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end MakeMipMaps

# Function: Filter
# Declared: Line 2344 (Source lines: 2347-2585)
# Address: 0x0f121264 - 0x0f1220b0 (Size: 3660 bytes, Frame: 176)
.ent Filter
Filter:
    # Line 2353
    li	$at,-3
    # Line 2354
    li	$v0,5
    # Line 2355
    li	$v1,-3
    # Line 2358
    li	$t0,5
    # Line 2347
    addiu	$sp,$sp,-432
    sd	$t0,256($sp)
    sd	$s5,208($sp)
    # Line 2356
    li	$s5,5
    sd	$v1,336($sp)
    # Line 2358
    dmtc1	$zero,$f12
    ldc1	$f0,0($a0)
    sd	$v0,312($sp)
    sd	$at,272($sp)
    c.eq.d	$f0,$f12
    sd	$a2,304($sp)
    # Line 2357
    li	$a2,-3
    # Line 2358
    bc1f	.L0f1212f0
    sd	$a2,264($sp)
    move	$a2,$a0
    # Line 2360
    addiu	$a2,$a2,8
.L0f1212b4:
    # Line 2361
    ld	$at,272($sp)
    # Line 2363
    ld	$v1,264($sp)
    # Line 2362
    ld	$v0,336($sp)
    # Line 2361
    addiu	$at,$at,1
    # Line 2360
    ldc1	$f1,0($a2)
    # Line 2362
    addiu	$v0,$v0,1
    # Line 2363
    addiu	$v1,$v1,1
    # Line 2360
    c.eq.d	$f1,$f12
    sd	$v1,264($sp)
    sd	$v0,336($sp)
    bc1f	.L0f1212f0
    sd	$at,272($sp)
    addiu	$t0,$a0,32
    bne	$t0,$a2,.L0f1212b4
    addiu	$a2,$a2,8
.L0f1212f0:
    ldc1	$f2,56($a0)
    c.eq.d	$f2,$f12
    nop
    bc1f	.L0f12133c
    addiu	$a2,$a0,56
    # Line 2365
    addiu	$a2,$a2,-8
.L0f121308:
    # Line 2367
    addiu	$s5,$s5,-1
    # Line 2366
    ld	$at,312($sp)
    # Line 2365
    ldc1	$f3,0($a2)
    # Line 2368
    ld	$v0,256($sp)
    # Line 2366
    addiu	$at,$at,-1
    # Line 2365
    c.eq.d	$f3,$f12
    # Line 2368
    addiu	$v0,$v0,-1
    sd	$v0,256($sp)
    # Line 2365
    bc1f	.L0f12133c
    sd	$at,312($sp)
    addiu	$v1,$a0,24
    bne	$v1,$a2,.L0f121308
    addiu	$a2,$a2,-8
.L0f12133c:
    slti	$t0,$a5,2
    bnezl	$t0,.L0f12196c
    sd	$s2,128($sp)
    sd	$s2,128($sp)
    sd	$s6,192($sp)
    sd	$s3,160($sp)
    sd	$s7,168($sp)
    sd	$ra,16($sp)
    sd	$s4,200($sp)
    sd	$s8,24($sp)
    sd	$s0,112($sp)
    sd	$s1,96($sp)
    # Line 2376
    blez	$a5,.L0f122080
    sd	$zero,216($sp)
    sd	$s1,96($sp)
    ldc1	$f11,_lit8_40efffe000000000
    li	$t9,769
    lw	$s3,436($sp)
    ld	$t0,272($sp)
    addiu	$s7,$a5,-1
    addiu	$s6,$a4,-1
    sd	$t0,232($sp)
    sll	$s4,$t0,0x3
    sd	$s4,224($sp)
    ld	$at,264($sp)
    move	$v0,$t0
    ld	$v0,256($sp)
    sll	$v1,$at,0x3
    sd	$v1,352($sp)
    subu	$v1,$v0,$at
    slt	$at,$at,$v0
    sd	$at,0($sp)
    ld	$at,336($sp)
    addiu	$s4,$a3,-1
    sd	$v1,104($sp)
    subu	$v1,$s5,$at
    slt	$v0,$at,$s5
    sll	$at,$at,0x3
    sd	$v0,32($sp)
    ld	$v0,312($sp)
    sd	$at,320($sp)
    sd	$v1,184($sp)
    subu	$v1,$v0,$t0
    slt	$t0,$t0,$v0
    addiu	$v0,$a4,1
    sd	$t0,240($sp)
    sd	$v0,72($sp)
    sd	$v1,88($sp)
    addiu	$v1,$a3,1
    sd	$v1,176($sp)
.L0f121404:
    # Line 2377
    blez	$a4,.L0f122050
    sd	$zero,152($sp)
    ld	$at,336($sp)
    sd	$at,328($sp)
.L0f121414:
    # Line 2378
    blez	$a3,.L0f122030
    sd	$zero,120($sp)
    sd	$s2,128($sp)
    sd	$ra,16($sp)
    sd	$s8,24($sp)
    sd	$s0,112($sp)
    ld	$s1,256($sp)
    ld	$at,152($sp)
    ld	$v1,216($sp)
    ld	$v0,264($sp)
    srl	$t0,$at,0x1f
    addu	$t0,$t0,$at
    srl	$at,$a3,0x1f
    addu	$at,$at,$a3
    sra	$at,$at,0x1
    sd	$at,144($sp)
    sd	$v0,360($sp)
    srl	$v0,$v1,0x1f
    addu	$v0,$v0,$v1
    srl	$v1,$a4,0x1f
    addu	$v1,$v1,$a4
    sra	$v1,$v1,0x1
    sd	$v1,56($sp)
    sra	$v0,$v0,0x1
    sra	$t0,$t0,0x1
    sd	$t0,136($sp)
    li	$t0,1
    sd	$v0,48($sp)
    li	$v0,1
    slt	$v0,$v0,$v1
    slt	$t0,$t0,$at
    sd	$t0,40($sp)
    b	.L0f1214cc
    sd	$v0,248($sp)
.L0f12149c:
    # Line 2483
    mfc1	$v1,$f0
    nop
    sh	$v1,6($a2)
.L0f1214a8:
    ld	$at,360($sp)
    # Line 2378
    ld	$t0,120($sp)
    addiu	$s1,$s1,2
    addiu	$at,$at,2
    addiu	$t0,$t0,2
    sd	$t0,120($sp)
    slt	$t0,$t0,$a3
    beqz	$t0,.L0f122030
    sd	$at,360($sp)
.L0f1214cc:
    sd	$s2,128($sp)
    ld	$v0,248($sp)
    sd	$ra,16($sp)
    sd	$s8,24($sp)
    beqz	$v0,.L0f121930
    sd	$s0,112($sp)
    ld	$s0,112($sp)
    ld	$s8,24($sp)
    ld	$ra,16($sp)
    # Line 2380
    ld	$v1,40($sp)
    ld	$t0,56($sp)
    ld	$s2,128($sp)
    beqz	$v1,.L0f121950
    sd	$t0,280($sp)
.L0f121504:
    ld	$at,40($sp)
    ld	$v0,144($sp)
    beqz	$at,.L0f121960
    sd	$v0,288($sp)
.L0f121514:
    ld	$v1,144($sp)
    sd	$v1,296($sp)
.L0f12151c:
    # Line 2383
    mov.d	$f5,$f12
    mov.d	$f7,$f12
    mov.d	$f6,$f12
    # Line 2385
    ld	$t0,240($sp)
    ld	$at,272($sp)
    # Line 2383
    mov.d	$f4,$f12
    # Line 2385
    beqz	$t0,.L0f1217e8
    sd	$at,64($sp)
    ld	$v0,224($sp)
    ld	$s2,232($sp)
    b	.L0f12157c
    sd	$v0,344($sp)
.L0f12154c:
    addiu	$s2,$s2,1
    ld	$s8,24($sp)
    ld	$ra,16($sp)
    ld	$s0,344($sp)
    ld	$t0,64($sp)
    ld	$v1,312($sp)
    addiu	$s0,$s0,8
    addiu	$t0,$t0,1
    sd	$t0,64($sp)
    sd	$s0,344($sp)
    beq	$v1,$t0,.L0f1217e8
    ld	$s0,112($sp)
.L0f12157c:
    # Line 2386
    ld	$at,32($sp)
    ld	$v0,336($sp)
    beqz	$at,.L0f12154c
    sd	$v0,8($sp)
    ld	$s0,328($sp)
    slt	$a2,$s2,$a5
    ld	$t0,320($sp)
    xori	$a2,$a2,0x1
    b	.L0f1215cc
    sd	$t0,80($sp)
.L0f1215a4:
    addiu	$s0,$s0,1
    ld	$s8,24($sp)
    ld	$at,8($sp)
    ld	$v0,80($sp)
    ld	$ra,16($sp)
    addiu	$at,$at,1
    addiu	$v0,$v0,8
    sd	$v0,80($sp)
    beq	$s5,$at,.L0f12154c
    sd	$at,8($sp)
.L0f1215cc:
    ld	$ra,352($sp)
    ld	$v1,0($sp)
    ld	$v0,344($sp)
    slt	$s8,$s0,$a4
    beqz	$v1,.L0f1215a4
    ld	$t3,360($sp)
    addu	$ra,$ra,$a0
    xori	$s8,$s8,0x1
    ld	$at,80($sp)
    addu	$v0,$v0,$a0
    ldc1	$f10,24($v0)
    addu	$at,$at,$a0
    b	.L0f1216d0
    ldc1	$f8,24($at)
.L0f121604:
    # Line 2428
    move	$t8,$zero
.L0f121608:
    # Line 2436
    mult	$a4,$t8
    mflo	$v0
    nop
    nop
    mult	$a3,$t1
    mflo	$at
    nop
    nop
    mult	$v0,$a3
    addu	$at,$at,$t2
    sll	$at,$at,0x3
    mflo	$v0
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$a1
    addu	$at,$at,$v0
    # Line 2445
    lhu	$t0,6($at)
    # Line 2442
    lhu	$v1,4($at)
    # Line 2439
    lhu	$v0,2($at)
    # Line 2445
    mtc1	$t0,$f0
    # Line 2436
    lhu	$at,0($at)
    # Line 2445
    cvt.d.w	$f0,$f0
    # Line 2436
    mtc1	$at,$f1
    nop
    cvt.d.w	$f1,$f1
    # Line 2445
    mul.d	$f0,$f0,$f10
    # Line 2436
    mul.d	$f1,$f1,$f10
    # Line 2439
    mtc1	$v0,$f2
    nop
    cvt.d.w	$f2,$f2
    # Line 2442
    mtc1	$v1,$f3
    nop
    cvt.d.w	$f3,$f3
    # Line 2439
    mul.d	$f2,$f2,$f10
    # Line 2442
    mul.d	$f3,$f3,$f10
    # Line 2439
    mul.d	$f2,$f2,$f8
    # Line 2442
    mul.d	$f3,$f3,$f8
    # Line 2436
    mul.d	$f1,$f1,$f8
    # Line 2445
    mul.d	$f0,$f0,$f8
    # Line 2436
    ldc1	$f9,24($ra)
    mul.d	$f1,$f1,$f9
    # Line 2445
    mul.d	$f0,$f0,$f9
    # Line 2442
    mul.d	$f3,$f3,$f9
    # Line 2439
    mul.d	$f2,$f2,$f9
    # Line 2445
    add.d	$f5,$f0,$f5
    # Line 2442
    add.d	$f7,$f3,$f7
    # Line 2387
    addiu	$ra,$ra,8
    # Line 2439
    add.d	$f6,$f2,$f6
    # Line 2387
    addiu	$t3,$t3,1
    beq	$t3,$s1,.L0f1215a4
    # Line 2436
    add.d	$f4,$f1,$f4
.L0f1216d0:
    # Line 2390
    move	$t1,$s0
    # Line 2389
    move	$t2,$t3
    # Line 2391
    beq	$a6,$t9,.L0f121730
    move	$t8,$s2
    # Line 2397
    bltz	$t2,.L0f121790
    # Line 2401
    slt	$v1,$t2,$a3
    bnez	$v1,.L0f1216f4
    nop
    # Line 2403
    move	$t2,$s4
.L0f1216f4:
    beq	$a7,$t9,.L0f121750
    nop
.L0f1216fc:
    # Line 2410
    bltz	$t1,.L0f121798
    # Line 2415
    slt	$t0,$t1,$a4
    bnez	$t0,.L0f121710
    nop
    # Line 2417
    move	$t1,$s6
.L0f121710:
    beq	$s3,$t9,.L0f121770
    nop
.L0f121718:
    # Line 2424
    bltz	$t8,.L0f121604
    # Line 2428
    slt	$at,$t8,$a5
    bnez	$at,.L0f121608
    nop
    b	.L0f121608
    # Line 2430
    move	$t8,$s7
.L0f121730:
    # Line 2391
    bltz	$t3,.L0f1217a0
    # Line 2395
    slt	$v0,$t3,$a3
    bnez	$v0,.L0f1216f4
    nop
    # Line 2397
    div	$zero,$t3,$a3
    mfhi	$t2
    # Line 2403
    bne	$a7,$t9,.L0f1216fc
    # Line 2397
    teq	$a3,$zero,0x7
.L0f121750:
    # Line 2403
    bltz	$s0,.L0f1217b8
    nop
    # Line 2408
    beqz	$s8,.L0f121710
    nop
    # Line 2410
    div	$zero,$s0,$a4
    mfhi	$t1
    # Line 2417
    bne	$s3,$t9,.L0f121718
    # Line 2410
    teq	$a4,$zero,0x7
.L0f121770:
    # Line 2417
    bltz	$s2,.L0f1217d0
    nop
    # Line 2422
    beqz	$a2,.L0f121608
    nop
    # Line 2424
    div	$zero,$s2,$a5
    mfhi	$t8
    b	.L0f121608
    teq	$a5,$zero,0x7
.L0f121790:
    # Line 2401
    b	.L0f1216f4
    move	$t2,$zero
.L0f121798:
    # Line 2415
    b	.L0f121710
    move	$t1,$zero
.L0f1217a0:
    # Line 2395
    div	$zero,$t3,$a3
    teq	$a3,$zero,0x7
    mfhi	$t2
    addu	$t2,$t2,$a3
    b	.L0f1216f4
    addiu	$t2,$t2,-1
.L0f1217b8:
    # Line 2408
    div	$zero,$s0,$a4
    teq	$a4,$zero,0x7
    mfhi	$t1
    addu	$t1,$t1,$a4
    b	.L0f121710
    addiu	$t1,$t1,-1
.L0f1217d0:
    # Line 2422
    div	$zero,$s2,$a5
    teq	$a5,$zero,0x7
    mfhi	$t8
    addu	$t8,$t8,$a5
    b	.L0f121608
    addiu	$t8,$t8,-1
.L0f1217e8:
    ld	$s2,48($sp)
    # Line 2385
    ld	$t0,280($sp)
    mult	$t0,$s2
    ld	$a2,136($sp)
    ld	$v1,296($sp)
    mflo	$v0
    nop
    nop
    mult	$v1,$a2
    ld	$at,288($sp)
    mflo	$t0
    nop
    nop
    mult	$at,$v0
    ld	$s2,120($sp)
    c.lt.d	$f11,$f4
    srl	$a2,$s2,0x1f
    addu	$a2,$a2,$s2
    ld	$s2,304($sp)
    sra	$a2,$a2,0x1
    addu	$a2,$a2,$t0
    sll	$a2,$a2,0x3
    mflo	$t0
    sll	$t0,$t0,0x3
    addu	$t0,$t0,$s2
    ld	$s2,128($sp)
    bc1f	.L0f121864
    addu	$a2,$a2,$t0
    li	$at,0xffff
    # Line 2458
    b	.L0f121888
    sh	$at,0($a2)
.L0f121864:
    c.lt.d	$f4,$f12
    nop
    bc1fl	.L0f12187c
    # Line 2462
    trunc.w.d	$f1,$f4
    # Line 2460
    b	.L0f121888
    sh	$zero,0($a2)
.L0f12187c:
    # Line 2462
    mfc1	$v0,$f1
    nop
    sh	$v0,0($a2)
.L0f121888:
    c.lt.d	$f11,$f6
    nop
    bc1fl	.L0f1218a4
    # Line 2465
    c.lt.d	$f6,$f12
    li	$v1,0xffff
    b	.L0f1218c4
    sh	$v1,2($a2)
.L0f1218a4:
    nop
    bc1fl	.L0f1218b8
    # Line 2469
    trunc.w.d	$f2,$f6
    # Line 2467
    b	.L0f1218c4
    sh	$zero,2($a2)
.L0f1218b8:
    # Line 2469
    mfc1	$t0,$f2
    nop
    sh	$t0,2($a2)
.L0f1218c4:
    c.lt.d	$f11,$f7
    nop
    bc1fl	.L0f1218e0
    # Line 2472
    c.lt.d	$f7,$f12
    li	$at,0xffff
    b	.L0f121900
    sh	$at,4($a2)
.L0f1218e0:
    nop
    bc1fl	.L0f1218f4
    # Line 2476
    trunc.w.d	$f3,$f7
    # Line 2474
    b	.L0f121900
    sh	$zero,4($a2)
.L0f1218f4:
    # Line 2476
    mfc1	$v0,$f3
    nop
    sh	$v0,4($a2)
.L0f121900:
    c.lt.d	$f11,$f5
    nop
    bc1fl	.L0f12191c
    # Line 2479
    c.lt.d	$f5,$f12
    li	$v1,0xffff
    b	.L0f1214a8
    sh	$v1,6($a2)
.L0f12191c:
    nop
    bc1fl	.L0f12149c
    # Line 2483
    trunc.w.d	$f0,$f5
    # Line 2481
    b	.L0f1214a8
    sh	$zero,6($a2)
.L0f121930:
    ld	$s8,24($sp)
    ld	$ra,16($sp)
    ld	$s2,128($sp)
    # Line 2380
    ld	$t0,40($sp)
    li	$s0,1
    sd	$s0,280($sp)
    bnez	$t0,.L0f121504
    ld	$s0,112($sp)
.L0f121950:
    ld	$at,40($sp)
    li	$v0,1
    bnez	$at,.L0f121514
    sd	$v0,288($sp)
.L0f121960:
    li	$v1,1
    b	.L0f12151c
    sd	$v1,296($sp)
.L0f12196c:
    sd	$s6,192($sp)
    sd	$s3,160($sp)
    sd	$s7,168($sp)
    sd	$ra,16($sp)
    sd	$s4,200($sp)
    sd	$s8,24($sp)
    sd	$s0,112($sp)
    sd	$s1,96($sp)
    # Line 2499
    blez	$a4,.L0f122080
    sd	$zero,152($sp)
    sd	$s2,128($sp)
    sd	$s3,160($sp)
    sd	$s7,168($sp)
    sd	$ra,16($sp)
    sd	$s8,24($sp)
    sd	$s0,112($sp)
    sd	$s1,96($sp)
    li	$t8,0xffff
    ldc1	$f11,_lit8_40efffe000000000
    li	$t9,769
    ld	$t0,336($sp)
    addiu	$s6,$a4,-1
    addiu	$s4,$a3,-1
    sd	$t0,328($sp)
    ld	$v0,256($sp)
    ld	$at,264($sp)
    move	$v1,$t0
    subu	$v1,$s5,$t0
    sll	$a2,$at,0x3
    sd	$a2,352($sp)
    subu	$a2,$v0,$at
    slt	$at,$at,$v0
    slt	$v0,$t0,$s5
    sll	$t0,$t0,0x3
    sd	$v1,184($sp)
    sd	$v0,32($sp)
    sd	$t0,320($sp)
    sd	$at,0($sp)
    addiu	$at,$a3,1
    b	.L0f121a30
    sd	$at,176($sp)
.L0f121a10:
    ld	$at,328($sp)
    ld	$t0,152($sp)
    addiu	$at,$at,2
    addiu	$t0,$t0,2
    sd	$t0,152($sp)
    slt	$t0,$t0,$a4
    beqz	$t0,.L0f122080
    sd	$at,328($sp)
.L0f121a30:
    # Line 2500
    blez	$a3,.L0f121a10
    sd	$zero,120($sp)
    ld	$s1,256($sp)
    li	$s7,1
    ld	$t0,264($sp)
    srl	$at,$a3,0x1f
    addu	$at,$at,$a3
    sra	$at,$at,0x1
    sd	$t0,360($sp)
    ld	$v1,152($sp)
    sd	$at,144($sp)
    slt	$s7,$s7,$at
    srl	$v0,$v1,0x1f
    addu	$v0,$v0,$v1
    sra	$v0,$v0,0x1
    b	.L0f121aa0
    sd	$v0,136($sp)
.L0f121a74:
    # Line 2579
    mfc1	$at,$f0
    nop
    sh	$at,6($t1)
.L0f121a80:
    # Line 2500
    addiu	$s1,$s1,2
    addiu	$a5,$a5,2
    ld	$v1,360($sp)
    sd	$a5,120($sp)
    slt	$v0,$a5,$a3
    addiu	$v1,$v1,2
    beqz	$v0,.L0f121a10
    sd	$v1,360($sp)
.L0f121aa0:
    beqz	$s7,.L0f122020
    li	$t8,0xffff
    ld	$s3,144($sp)
    ld	$a5,120($sp)
.L0f121ab0:
    # Line 2504
    mov.d	$f5,$f12
    mov.d	$f7,$f12
    mov.d	$f6,$f12
    # Line 2506
    ld	$t0,32($sp)
    ld	$at,336($sp)
    # Line 2504
    mov.d	$f4,$f12
    # Line 2506
    beqz	$t0,.L0f121f24
    sd	$at,8($sp)
    ld	$v0,320($sp)
    ld	$s0,328($sp)
    b	.L0f121b00
    sd	$v0,80($sp)
.L0f121ae0:
    ld	$v1,8($sp)
    ld	$t0,80($sp)
    addiu	$s0,$s0,1
    addiu	$v1,$v1,1
    addiu	$t0,$t0,8
    sd	$t0,80($sp)
    beq	$s5,$v1,.L0f121f24
    sd	$v1,8($sp)
.L0f121b00:
    ld	$at,0($sp)
    beqz	$at,.L0f121ae0
    ld	$t3,360($sp)
    move	$s2,$a2
    andi	$v0,$a2,0x1
    slt	$s8,$s0,$a4
    ld	$ra,352($sp)
    ld	$at,80($sp)
    xori	$s8,$s8,0x1
    addu	$ra,$ra,$a0
    addu	$at,$at,$a0
    beqz	$v0,.L0f121bfc
    ldc1	$f8,24($at)
    # Line 2509
    move	$t2,$t3
    # Line 2510
    beq	$a6,$t9,.L0f121ea4
    move	$t1,$s0
    # Line 2516
    bltz	$t2,.L0f121ee4
    # Line 2520
    slt	$at,$t2,$a3
    bnez	$at,.L0f121b54
    nop
    # Line 2522
    move	$t2,$s4
.L0f121b54:
    beq	$a7,$t9,.L0f121ec4
    nop
.L0f121b5c:
    # Line 2529
    bltz	$t1,.L0f121eec
    # Line 2534
    slt	$v0,$t1,$a4
    bnez	$v0,.L0f121b70
    nop
    # Line 2536
    move	$t1,$s6
.L0f121b70:
    # Line 2542
    mult	$a3,$t1
    sll	$v1,$t2,0x3
    mflo	$t0
    sll	$t0,$t0,0x3
    addu	$t0,$t0,$a1
    addu	$v1,$v1,$t0
    # Line 2545
    lhu	$v0,6($v1)
    mtc1	$v0,$f0
    # Line 2544
    lhu	$at,4($v1)
    # Line 2545
    cvt.d.w	$f0,$f0
    # Line 2544
    mtc1	$at,$f3
    nop
    cvt.d.w	$f3,$f3
    # Line 2545
    mul.d	$f0,$f0,$f8
    # Line 2544
    mul.d	$f3,$f3,$f8
    # Line 2542
    ldc1	$f9,24($ra)
    # Line 2545
    mul.d	$f0,$f0,$f9
    # Line 2544
    mul.d	$f3,$f3,$f9
    # Line 2543
    lhu	$t0,2($v1)
    mtc1	$t0,$f2
    # Line 2542
    lhu	$v1,0($v1)
    # Line 2543
    cvt.d.w	$f2,$f2
    # Line 2542
    mtc1	$v1,$f1
    nop
    cvt.d.w	$f1,$f1
    # Line 2543
    mul.d	$f2,$f2,$f8
    # Line 2542
    mul.d	$f1,$f1,$f8
    # Line 2543
    mul.d	$f2,$f2,$f9
    # Line 2545
    add.d	$f5,$f0,$f5
    # Line 2542
    mul.d	$f1,$f1,$f9
    # Line 2544
    add.d	$f7,$f3,$f7
    # Line 2543
    add.d	$f6,$f2,$f6
    # Line 2507
    addiu	$t3,$t3,1
    addiu	$ra,$ra,8
    # Line 2542
    add.d	$f4,$f1,$f4
.L0f121bfc:
    sra	$at,$s2,0x1
    beqz	$at,.L0f121ae0
    nop
    b	.L0f121ca8
    # Line 2509
    move	$t2,$t3
.L0f121c10:
    # Line 2534
    move	$t1,$zero
.L0f121c14:
    # Line 2542
    mult	$a3,$t1
    sll	$v0,$t2,0x3
    mflo	$v1
    sll	$v1,$v1,0x3
    addu	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    # Line 2545
    lhu	$at,6($v0)
    mtc1	$at,$f0
    # Line 2544
    lhu	$t0,4($v0)
    # Line 2545
    cvt.d.w	$f0,$f0
    # Line 2544
    mtc1	$t0,$f3
    nop
    cvt.d.w	$f3,$f3
    # Line 2545
    mul.d	$f0,$f0,$f8
    # Line 2544
    mul.d	$f3,$f3,$f8
    # Line 2542
    ldc1	$f9,32($ra)
    # Line 2545
    mul.d	$f0,$f0,$f9
    # Line 2544
    mul.d	$f3,$f3,$f9
    # Line 2543
    lhu	$v1,2($v0)
    mtc1	$v1,$f2
    # Line 2542
    lhu	$v0,0($v0)
    # Line 2543
    cvt.d.w	$f2,$f2
    # Line 2542
    mtc1	$v0,$f1
    nop
    cvt.d.w	$f1,$f1
    # Line 2543
    mul.d	$f2,$f2,$f8
    # Line 2542
    mul.d	$f1,$f1,$f8
    # Line 2543
    mul.d	$f2,$f2,$f9
    # Line 2545
    add.d	$f5,$f0,$f5
    # Line 2542
    mul.d	$f1,$f1,$f9
    # Line 2544
    add.d	$f7,$f3,$f7
    # Line 2507
    addiu	$ra,$ra,16
    # Line 2543
    add.d	$f6,$f2,$f6
    # Line 2507
    addiu	$t3,$t3,1
    beq	$t3,$s1,.L0f121ae0
    # Line 2542
    add.d	$f4,$f1,$f4
    # Line 2509
    move	$t2,$t3
.L0f121ca8:
    # Line 2510
    beq	$a6,$t9,.L0f121dac
    move	$t1,$s0
    # Line 2516
    bltz	$t2,.L0f121e2c
    # Line 2520
    slt	$t0,$t2,$a3
    bnez	$t0,.L0f121cc4
    nop
    # Line 2522
    move	$t2,$s4
.L0f121cc4:
    beq	$a7,$t9,.L0f121dcc
    nop
.L0f121ccc:
    # Line 2529
    bltz	$t1,.L0f121e34
    # Line 2534
    slt	$at,$t1,$a4
    bnez	$at,.L0f121ce0
    nop
    # Line 2536
    move	$t1,$s6
.L0f121ce0:
    # Line 2542
    mult	$a3,$t1
    sll	$v0,$t2,0x3
    mflo	$v1
    sll	$v1,$v1,0x3
    addu	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    # Line 2543
    lhu	$v1,2($v0)
    mtc1	$v1,$f2
    # Line 2544
    lhu	$t0,4($v0)
    # Line 2543
    cvt.d.w	$f2,$f2
    # Line 2544
    mtc1	$t0,$f3
    nop
    cvt.d.w	$f3,$f3
    # Line 2543
    mul.d	$f2,$f2,$f8
    # Line 2544
    mul.d	$f3,$f3,$f8
    # Line 2545
    lhu	$t1,6($v0)
    # Line 2542
    lhu	$v0,0($v0)
    mtc1	$v0,$f1
    nop
    cvt.d.w	$f1,$f1
    # Line 2545
    mtc1	$t1,$f0
    nop
    cvt.d.w	$f0,$f0
    # Line 2542
    mul.d	$f1,$f1,$f8
    # Line 2545
    mul.d	$f0,$f0,$f8
    # Line 2542
    ldc1	$f9,24($ra)
    mul.d	$f1,$f1,$f9
    # Line 2545
    mul.d	$f0,$f0,$f9
    # Line 2544
    mul.d	$f3,$f3,$f9
    # Line 2543
    mul.d	$f2,$f2,$f9
    # Line 2545
    add.d	$f5,$f0,$f5
    # Line 2544
    add.d	$f7,$f3,$f7
    # Line 2507
    addiu	$t3,$t3,1
    # Line 2509
    move	$t2,$t3
    # Line 2543
    add.d	$f6,$f2,$f6
    # Line 2510
    move	$t1,$s0
    beq	$a6,$t9,.L0f121dec
    # Line 2542
    add.d	$f4,$f1,$f4
    # Line 2516
    bltz	$t2,.L0f121e3c
    # Line 2520
    slt	$t0,$t2,$a3
    bnez	$t0,.L0f121d8c
    nop
    # Line 2522
    move	$t2,$s4
.L0f121d8c:
    beq	$a7,$t9,.L0f121e0c
    nop
.L0f121d94:
    # Line 2529
    bltz	$t1,.L0f121c10
    # Line 2534
    slt	$at,$t1,$a4
    bnez	$at,.L0f121c14
    nop
    b	.L0f121c14
    # Line 2536
    move	$t1,$s6
.L0f121dac:
    # Line 2510
    bltz	$t3,.L0f121e44
    # Line 2514
    slt	$v0,$t3,$a3
    bnez	$v0,.L0f121cc4
    nop
    # Line 2516
    div	$zero,$t3,$a3
    mfhi	$t2
    # Line 2522
    bne	$a7,$t9,.L0f121ccc
    # Line 2516
    teq	$a3,$zero,0x7
.L0f121dcc:
    # Line 2522
    bltz	$s0,.L0f121e5c
    nop
    # Line 2527
    beqz	$s8,.L0f121ce0
    nop
    # Line 2529
    div	$zero,$s0,$a4
    mfhi	$t1
    b	.L0f121ce0
    teq	$a4,$zero,0x7
.L0f121dec:
    # Line 2510
    bltz	$t3,.L0f121e74
    # Line 2514
    slt	$v1,$t3,$a3
    bnez	$v1,.L0f121d8c
    nop
    # Line 2516
    div	$zero,$t3,$a3
    mfhi	$t2
    # Line 2522
    bne	$a7,$t9,.L0f121d94
    # Line 2516
    teq	$a3,$zero,0x7
.L0f121e0c:
    # Line 2522
    bltz	$s0,.L0f121e8c
    nop
    # Line 2527
    beqz	$s8,.L0f121c14
    nop
    # Line 2529
    div	$zero,$s0,$a4
    mfhi	$t1
    b	.L0f121c14
    teq	$a4,$zero,0x7
.L0f121e2c:
    # Line 2520
    b	.L0f121cc4
    move	$t2,$zero
.L0f121e34:
    # Line 2534
    b	.L0f121ce0
    move	$t1,$zero
.L0f121e3c:
    # Line 2520
    b	.L0f121d8c
    move	$t2,$zero
.L0f121e44:
    # Line 2514
    div	$zero,$t3,$a3
    teq	$a3,$zero,0x7
    mfhi	$t2
    addu	$t2,$t2,$a3
    b	.L0f121cc4
    addiu	$t2,$t2,-1
.L0f121e5c:
    # Line 2527
    div	$zero,$s0,$a4
    teq	$a4,$zero,0x7
    mfhi	$t1
    addu	$t1,$t1,$a4
    b	.L0f121ce0
    addiu	$t1,$t1,-1
.L0f121e74:
    # Line 2514
    div	$zero,$t3,$a3
    teq	$a3,$zero,0x7
    mfhi	$t2
    addu	$t2,$t2,$a3
    b	.L0f121d8c
    addiu	$t2,$t2,-1
.L0f121e8c:
    # Line 2527
    div	$zero,$s0,$a4
    teq	$a4,$zero,0x7
    mfhi	$t1
    addu	$t1,$t1,$a4
    b	.L0f121c14
    addiu	$t1,$t1,-1
.L0f121ea4:
    # Line 2510
    bltz	$t3,.L0f121ef4
    # Line 2514
    slt	$at,$t3,$a3
    bnez	$at,.L0f121b54
    nop
    # Line 2516
    div	$zero,$t3,$a3
    mfhi	$t2
    # Line 2522
    bne	$a7,$t9,.L0f121b5c
    # Line 2516
    teq	$a3,$zero,0x7
.L0f121ec4:
    # Line 2522
    bltz	$s0,.L0f121f0c
    nop
    # Line 2527
    beqz	$s8,.L0f121b70
    nop
    # Line 2529
    div	$zero,$s0,$a4
    mfhi	$t1
    b	.L0f121b70
    teq	$a4,$zero,0x7
.L0f121ee4:
    # Line 2520
    b	.L0f121b54
    move	$t2,$zero
.L0f121eec:
    # Line 2534
    b	.L0f121b70
    move	$t1,$zero
.L0f121ef4:
    # Line 2514
    div	$zero,$t3,$a3
    teq	$a3,$zero,0x7
    mfhi	$t2
    addu	$t2,$t2,$a3
    b	.L0f121b54
    addiu	$t2,$t2,-1
.L0f121f0c:
    # Line 2527
    div	$zero,$s0,$a4
    teq	$a4,$zero,0x7
    mfhi	$t1
    addu	$t1,$t1,$a4
    b	.L0f121b70
    addiu	$t1,$t1,-1
.L0f121f24:
    ld	$at,136($sp)
    # Line 2506
    mult	$s3,$at
    c.lt.d	$f11,$f4
    ld	$v0,304($sp)
    srl	$t1,$a5,0x1f
    addu	$t1,$t1,$a5
    sra	$t1,$t1,0x1
    sll	$t1,$t1,0x3
    mflo	$at
    sll	$at,$at,0x3
    addu	$at,$at,$v0
    bc1f	.L0f121f60
    addu	$t1,$t1,$at
    # Line 2554
    b	.L0f121f84
    sh	$t8,0($t1)
.L0f121f60:
    c.lt.d	$f4,$f12
    nop
    bc1fl	.L0f121f78
    # Line 2558
    trunc.w.d	$f1,$f4
    # Line 2556
    b	.L0f121f84
    sh	$zero,0($t1)
.L0f121f78:
    # Line 2558
    mfc1	$v0,$f1
    nop
    sh	$v0,0($t1)
.L0f121f84:
    c.lt.d	$f11,$f6
    nop
    bc1fl	.L0f121f9c
    # Line 2561
    c.lt.d	$f6,$f12
    b	.L0f121fbc
    sh	$t8,2($t1)
.L0f121f9c:
    nop
    bc1fl	.L0f121fb0
    # Line 2565
    trunc.w.d	$f2,$f6
    # Line 2563
    b	.L0f121fbc
    sh	$zero,2($t1)
.L0f121fb0:
    # Line 2565
    mfc1	$v1,$f2
    nop
    sh	$v1,2($t1)
.L0f121fbc:
    c.lt.d	$f11,$f7
    nop
    bc1fl	.L0f121fd4
    # Line 2568
    c.lt.d	$f7,$f12
    b	.L0f121ff4
    sh	$t8,4($t1)
.L0f121fd4:
    nop
    bc1fl	.L0f121fe8
    # Line 2572
    trunc.w.d	$f3,$f7
    # Line 2570
    b	.L0f121ff4
    sh	$zero,4($t1)
.L0f121fe8:
    # Line 2572
    mfc1	$t0,$f3
    nop
    sh	$t0,4($t1)
.L0f121ff4:
    c.lt.d	$f11,$f5
    nop
    bc1fl	.L0f12200c
    # Line 2575
    c.lt.d	$f5,$f12
    b	.L0f121a80
    sh	$t8,6($t1)
.L0f12200c:
    nop
    bc1fl	.L0f121a74
    # Line 2579
    trunc.w.d	$f0,$f5
    # Line 2577
    b	.L0f121a80
    sh	$zero,6($t1)
.L0f122020:
    li	$t8,0xffff
    # Line 2502
    li	$s3,1
    b	.L0f121ab0
    ld	$a5,120($sp)
.L0f122030:
    # Line 2377
    ld	$v0,328($sp)
    ld	$at,152($sp)
    addiu	$v0,$v0,2
    addiu	$at,$at,2
    sd	$at,152($sp)
    slt	$at,$at,$a4
    bnez	$at,.L0f121414
    sd	$v0,328($sp)
.L0f122050:
    sd	$s2,128($sp)
    sd	$ra,16($sp)
    sd	$s8,24($sp)
    # Line 2376
    ld	$v1,232($sp)
    ld	$v0,216($sp)
    sd	$s0,112($sp)
    addiu	$v1,$v1,2
    addiu	$v0,$v0,2
    sd	$v0,216($sp)
    slt	$v0,$v0,$a5
    bnez	$v0,.L0f121404
    sd	$v1,232($sp)
.L0f122080:
    # Line 2585
    ld	$s0,112($sp)
    ld	$s1,96($sp)
    ld	$s2,128($sp)
    ld	$s3,160($sp)
    ld	$s4,200($sp)
    ld	$s5,208($sp)
    ld	$s6,192($sp)
    ld	$ra,16($sp)
    ld	$s7,168($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,432
.end Filter

# Function: mallocMipMap
# Declared: Line 2592 (Source lines: 2593-2629)
# Address: 0x0f1220b0 - 0x0f1222c8 (Size: 536 bytes, Frame: 192)
.ent mallocMipMap
mallocMipMap:
    # Line 2593
    addiu	$sp,$sp,-64
    sd	$s4,0($sp)
    sd	$s7,40($sp)
    sd	$s1,8($sp)
    move	$s1,$a0
    # Line 2599
    li	$a0,324
    sd	$s0,16($sp)
    # Line 2593
    move	$s0,$a1
    la	$a1,sub_0f030000
    # Line 2599
    la	$t9,gl_malloc
    sd	$ra,24($sp)
    # Line 2593
    addiu	$a1,$a1,-21944
    # Line 2599
    jalr	$t9
    lw	$a1,424($a1)
    move	$s7,$v0
    beqz	$v0,.L0f1222a0
    move	$s4,$v0
.L0f1220f4:
    # Line 2607
    move	$a5,$zero
    # Line 2608
    move	$a4,$s0
    sd	$s5,32($sp)
    addiu	$s5,$s7,4
    # Line 2604
    lw	$v0,44($s1)
    # Line 2603
    lw	$a0,40($s1)
    # Line 2602
    lw	$a1,36($s1)
    # Line 2605
    sw	$s0,0($s7)
    # Line 2608
    beqz	$s0,.L0f1221a0
    ld	$s7,40($sp)
    b	.L0f122134
    ld	$s7,40($sp)
.L0f122124:
    # Line 2616
    li	$a6,1
.L0f122128:
    # Line 2608
    addiu	$a4,$a4,-1
    beqz	$a4,.L0f1221a0
    # Line 2616
    move	$v0,$a6
.L0f122134:
    # Line 2612
    mult	$a1,$a0
    mflo	$at
    nop
    nop
    mult	$at,$v0
    # Line 2611
    sw	$v0,8($s5)
    # Line 2610
    sw	$a0,4($s5)
    # Line 2609
    sw	$a1,0($s5)
    # Line 2614
    slti	$v1,$a0,2
    li	$a6,1
    # Line 2613
    slti	$a3,$a1,2
    # Line 2612
    mflo	$a2
    # Line 2613
    addu	$a5,$a2,$a5
    bnez	$a3,.L0f122174
    # Line 2612
    sw	$a2,12($s5)
    # Line 2614
    sra	$a6,$a1,0x1
.L0f122174:
    # Line 2615
    slti	$a2,$v0,2
    # Line 2614
    bnez	$v1,.L0f122188
    move	$a1,$a6
    # Line 2615
    b	.L0f12218c
    sra	$a6,$a0,0x1
.L0f122188:
    li	$a6,1
.L0f12218c:
    # Line 2608
    addiu	$s5,$s5,20
    # Line 2615
    bnez	$a2,.L0f122124
    move	$a0,$a6
    # Line 2616
    b	.L0f122128
    sra	$a6,$v0,0x1
.L0f1221a0:
    # Line 2621
    sll	$a0,$a5,0x3
    # Line 2620
    addiu	$s5,$s4,4
    la	$a2,sub_0f030000
    # Line 2621
    lw	$a1,28($s1)
    la	$t9,gl_malloc
    addiu	$a2,$a2,-21944
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    jalr	$t9
    lw	$a1,416($a1)
    beqz	$v0,.L0f1222b4
    sw	$v0,20($s4)
    ld	$ra,24($sp)
.L0f1221d4:
    # Line 2626
    slti	$a3,$s0,2
    bnez	$a3,.L0f122284
    move	$a4,$zero
    addiu	$a1,$s0,-1
    andi	$v0,$a1,0x3
    beqz	$v0,.L0f122214
    move	$a0,$a1
.L0f1221f0:
    addiu	$s5,$s5,20
    addiu	$a4,$a4,1
    # Line 2627
    lw	$v1,-8($s5)
    lw	$at,-4($s5)
    addi	$v0,$v0,-1
    sll	$v1,$v1,0x3
    addu	$at,$at,$v1
    bnez	$v0,.L0f1221f0
    sw	$at,16($s5)
.L0f122214:
    move	$a5,$a4
    move	$a6,$s5
    ld	$s5,32($sp)
    sra	$a2,$a0,0x2
    beqz	$a2,.L0f122284
    move	$v0,$a6
    move	$a0,$a5
    ld	$s5,32($sp)
.L0f122234:
    # Line 2626
    addiu	$v0,$v0,80
    # Line 2627
    lw	$v1,-68($v0)
    # Line 2626
    addiu	$a0,$a0,4
    # Line 2627
    lw	$a3,-64($v0)
    sll	$v1,$v1,0x3
    lw	$at,-48($v0)
    addu	$a3,$a3,$v1
    sw	$a3,-44($v0)
    sll	$at,$at,0x3
    lw	$v1,-28($v0)
    addu	$a3,$a3,$at
    sw	$a3,-24($v0)
    sll	$v1,$v1,0x3
    lw	$at,-8($v0)
    addu	$a3,$a3,$v1
    sw	$a3,-4($v0)
    sll	$at,$at,0x3
    addu	$a3,$a3,$at
    # Line 2626
    bne	$a1,$a0,.L0f122234
    # Line 2627
    sw	$a3,16($v0)
.L0f122284:
    # Line 2629
    ld	$s1,8($sp)
    ld	$s0,16($sp)
    move	$v0,$s4
    ld	$s4,0($sp)
    ld	$s5,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f1222a0:
    # Line 2601
    la	$t9,exit
    jalr	$t9
    li	$a0,1
    b	.L0f1220f4
    sd	$s5,32($sp)
.L0f1222b4:
    # Line 2624
    la	$t9,exit
    jalr	$t9
    li	$a0,1
    b	.L0f1221d4
    ld	$ra,24($sp)
.end mallocMipMap

# Function: SetOglFormatAndComps
# Declared: Line 2657 (Source lines: 2659-2745)
# Address: 0x0f1222c8 - 0x0f122420 (Size: 344 bytes, Frame: 48)
.globl SetOglFormatAndComps
.ent SetOglFormatAndComps
SetOglFormatAndComps:
    # Line 2670
    li	$at,1
    # Line 2659
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$v0,0xfff1
    addiu	$v0,$v0,3968
    # Line 2670
    beq	$a0,$at,.L0f122354
    # Line 2659
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 2670
    li	$v1,2
    beq	$a0,$v1,.L0f12236c
    li	$a4,3
    beq	$a0,$a4,.L0f122398
    li	$at,4
    beq	$a0,$at,.L0f12232c
    # Line 2720
    li	$a4,0x8000
    # Line 2740
    li	$a1,2
    li	$a0,91
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    sd	$ra,8($sp)
    jalr	$t9
    addiu	$a2,$a2,22120
    ld	$ra,8($sp)
.L0f122320:
    ld	$gp,0($sp)
    # Line 2745
    jr	$ra
    addiu	$sp,$sp,48
.L0f12232c:
    # Line 2722
    li	$at,1600
    beq	$a1,$at,.L0f1223d4
    # Line 2720
    sw	$a4,0($a2)
    # Line 2722
    li	$v0,1632
    beq	$a1,$v0,.L0f1223e0
    li	$v1,1648
    beq	$a1,$v1,.L0f1223c8
    # Line 2733
    li	$a4,6408
    b	.L0f122320
    sw	$a4,0($a3)
.L0f122354:
    # Line 2672
    li	$a0,6409
    li	$at,1680
    beq	$a1,$at,.L0f1223bc
    sw	$a0,0($a2)
    # Line 2680
    b	.L0f122320
    sw	$a0,0($a3)
.L0f12236c:
    # Line 2685
    li	$a0,6410
    # Line 2687
    li	$v0,1568
    beq	$a1,$v0,.L0f1223f4
    # Line 2685
    sw	$a0,0($a2)
    # Line 2687
    li	$v1,1616
    beq	$a1,$v1,.L0f122408
    li	$a4,1552
    beq	$a1,$a4,.L0f1223ec
    # Line 2695
    li	$v1,0x8046
    # Line 2699
    b	.L0f122320
    sw	$a0,0($a3)
.L0f122398:
    # Line 2704
    li	$a0,6407
    # Line 2706
    li	$at,1584
    beq	$a1,$at,.L0f122414
    # Line 2704
    sw	$a0,0($a2)
    # Line 2706
    li	$v0,1664
    beq	$a1,$v0,.L0f122400
    # Line 2711
    li	$at,0x8053
    # Line 2715
    b	.L0f122320
    sw	$a0,0($a3)
.L0f1223bc:
    # Line 2676
    li	$v1,0x804d
    # Line 2677
    b	.L0f122320
    # Line 2676
    sw	$v1,0($a3)
.L0f1223c8:
    # Line 2730
    li	$a4,0x805a
    # Line 2731
    b	.L0f122320
    # Line 2730
    sw	$a4,0($a3)
.L0f1223d4:
    # Line 2724
    li	$at,0x8056
    # Line 2725
    b	.L0f122320
    # Line 2724
    sw	$at,0($a3)
.L0f1223e0:
    # Line 2727
    li	$v0,0x8058
    # Line 2728
    b	.L0f122320
    # Line 2727
    sw	$v0,0($a3)
.L0f1223ec:
    # Line 2696
    b	.L0f122320
    # Line 2695
    sw	$v1,0($a3)
.L0f1223f4:
    # Line 2689
    li	$a4,0x8045
    # Line 2690
    b	.L0f122320
    # Line 2689
    sw	$a4,0($a3)
.L0f122400:
    # Line 2712
    b	.L0f122320
    # Line 2711
    sw	$at,0($a3)
.L0f122408:
    # Line 2692
    li	$v0,0x8047
    # Line 2693
    b	.L0f122320
    # Line 2692
    sw	$v0,0($a3)
.L0f122414:
    # Line 2708
    li	$v1,0x8050
    # Line 2709
    b	.L0f122320
    # Line 2708
    sw	$v1,0($a3)
.end SetOglFormatAndComps

# Function: __iglooDownLoad3dTexture
# Declared: Line 2748 (Source lines: 2750-2898)
# Address: 0x0f122420 - 0x0f122bfc (Size: 2012 bytes, Frame: 128)
.ent __iglooDownLoad3dTexture
__iglooDownLoad3dTexture:
    # Line 2750
    addiu	$sp,$sp,-128
    sd	$a1,16($sp)
    sd	$s3,48($sp)
    move	$s3,$a2
    sd	$s4,32($sp)
    move	$s4,$a3
    # Line 2755
    la	$t9,__iglooIsExtensionSupported
    sd	$a0,24($sp)
    sd	$ra,40($sp)
    jalr	$t9
    li	$a0,12
    beqz	$v0,.L0f1225a4
    ld	$ra,40($sp)
    sd	$s0,64($sp)
    sd	$s1,72($sp)
    sd	$s2,56($sp)
    # Line 2768
    li	$at,1808
    # Line 2760
    lw	$a3,36($s4)
    # Line 2762
    lw	$a5,44($s4)
    # Line 2761
    lw	$a4,40($s4)
    # Line 2768
    lw	$v0,128($s4)
    # Line 2762
    move	$s2,$a5
    # Line 2761
    move	$s1,$a4
    # Line 2768
    beq	$v0,$at,.L0f12252c
    # Line 2760
    move	$s0,$a3
    # Line 2768
    li	$v1,1824
    beq	$v0,$v1,.L0f1224b0
    # Line 2831
    li	$a6,6409
    # Line 2898
    ld	$s0,64($sp)
.L0f122494:
    ld	$s1,72($sp)
    ld	$s2,56($sp)
    ld	$ra,40($sp)
    ld	$s3,48($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0f1224b0:
    # Line 2831
    beq	$s3,$a6,.L0f1229f8
    li	$t0,0x8000
    beq	$s3,$t0,.L0f1229f8
    li	$at,6410
    beq	$s3,$at,.L0f12286c
    li	$v1,6407
    bnel	$s3,$v1,.L0f122494
    # Line 2898
    ld	$s0,64($sp)
    # Line 2866
    mult	$s0,$s2
    mflo	$a2
    nop
    nop
    mult	$a2,$s1
    sd	$s5,80($sp)
    # Line 2861
    la	$a1,sub_0f030000
    # Line 2863
    lw	$s5,24($s4)
    # Line 2866
    la	$t9,gl_malloc
    # Line 2861
    addiu	$a1,$a1,-21944
    # Line 2866
    lw	$a1,424($a1)
    mflo	$a2
    addu	$a2,$a2,$a2
    sll	$a0,$a2,0x2
    jalr	$t9
    subu	$a0,$a0,$a2
    move	$s4,$v0
    move	$a0,$v0
    # Line 2869
    blez	$s2,.L0f1226ac
    move	$a3,$zero
    addu	$a2,$s0,$s0
    b	.L0f1225c0
    addu	$a2,$a2,$a2
.L0f12252c:
    # Line 2772
    li	$a6,6409
    beq	$s3,$a6,.L0f122bbc
    li	$t0,0x8000
    beq	$s3,$t0,.L0f122bbc
    li	$at,6410
    beq	$s3,$at,.L0f122a38
    li	$v1,6407
    bnel	$s3,$v1,.L0f122494
    # Line 2898
    ld	$s0,64($sp)
    # Line 2807
    mult	$s0,$s2
    mflo	$a2
    nop
    nop
    mult	$a2,$s1
    sd	$s5,80($sp)
    # Line 2802
    la	$a1,sub_0f030000
    # Line 2804
    lw	$s5,24($s4)
    # Line 2807
    la	$t9,gl_malloc
    # Line 2802
    addiu	$a1,$a1,-21944
    # Line 2807
    lw	$a1,424($a1)
    mflo	$a2
    sll	$a0,$a2,0x2
    jalr	$t9
    subu	$a0,$a0,$a2
    move	$s4,$v0
    move	$a0,$v0
    # Line 2809
    blez	$s2,.L0f122808
    move	$a3,$zero
    b	.L0f12271c
    addu	$a7,$s0,$s0
.L0f1225a4:
    # Line 2757
    ld	$s3,48($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0f1225b4:
    # Line 2869
    addiu	$a3,$a3,1
    beql	$s2,$a3,.L0f1226b0
    # Line 2878
    sw	$s4,12($sp)
.L0f1225c0:
    # Line 2870
    blez	$s1,.L0f1225b4
    move	$a4,$zero
    b	.L0f122664
    move	$a5,$s0
    move	$t1,$a0
.L0f1225d4:
    sra	$a6,$a5,0x2
    beqz	$a6,.L0f122658
    move	$a7,$a1
    move	$a1,$t1
    move	$a0,$a7
.L0f1225e8:
    # Line 2872
    lhu	$a6,4($a0)
    sh	$a6,0($a1)
    # Line 2873
    lhu	$v1,2($a0)
    sh	$v1,2($a1)
    # Line 2874
    lhu	$at,0($a0)
    sh	$at,4($a1)
    # Line 2872
    lhu	$t0,8($a0)
    sh	$t0,6($a1)
    # Line 2873
    lhu	$a6,6($a0)
    sh	$a6,8($a1)
    # Line 2874
    lhu	$v1,4($a0)
    sh	$v1,10($a1)
    # Line 2872
    lhu	$at,12($a0)
    sh	$at,12($a1)
    # Line 2873
    lhu	$t0,10($a0)
    sh	$t0,14($a1)
    # Line 2874
    lhu	$a6,8($a0)
    sh	$a6,16($a1)
    # Line 2872
    lhu	$v1,16($a0)
    sh	$v1,18($a1)
    # Line 2873
    lhu	$at,14($a0)
    sh	$at,20($a1)
    # Line 2874
    addiu	$a1,$a1,24
    lhu	$t0,12($a0)
    # Line 2871
    addiu	$a0,$a0,16
    bne	$a0,$v0,.L0f1225e8
    # Line 2874
    sh	$t0,-2($a1)
    move	$a0,$a1
.L0f122658:
    # Line 2870
    addiu	$a4,$a4,1
    beq	$s1,$a4,.L0f1225b4
    move	$a5,$s0
.L0f122664:
    addu	$v0,$a2,$s5
    blez	$s0,.L0f122658
    move	$a1,$s5
    andi	$a7,$s0,0x3
    beqz	$a7,.L0f1225d4
    move	$t1,$a0
.L0f12267c:
    # Line 2872
    lhu	$v1,4($a1)
    sh	$v1,0($a0)
    # Line 2873
    lhu	$at,2($a1)
    # Line 2871
    addiu	$a1,$a1,4
    # Line 2873
    sh	$at,2($a0)
    # Line 2874
    addiu	$a0,$a0,6
    lhu	$t0,-4($a1)
    addi	$a7,$a7,-1
    bnez	$a7,.L0f12267c
    sh	$t0,-2($a0)
    b	.L0f1225d4
    move	$t1,$a0
.L0f1226ac:
    # Line 2878
    sw	$s4,12($sp)
.L0f1226b0:
    move	$a7,$s3
    move	$a6,$zero
    move	$a5,$s2
    move	$a4,$s1
    move	$a3,$s0
    ld	$a2,16($sp)
    ld	$a1,24($sp)
    la	$t9,glTexImage3DEXT
    li	$a0,0x806f
    li	$t0,5123
    jalr	$t9
    sw	$t0,4($sp)
    # Line 2880
    move	$a0,$s4
    ld	$s2,56($sp)
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    la	$a1,sub_0f030000
    la	$t9,gl_free
    ld	$s5,80($sp)
    addiu	$a1,$a1,-21944
    jalr	$t9
    lw	$a1,424($a1)
    b	.L0f122494
    # Line 2898
    ld	$s0,64($sp)
.L0f122710:
    # Line 2809
    addiu	$a3,$a3,1
    beql	$s2,$a3,.L0f12280c
    # Line 2818
    sw	$s4,12($sp)
.L0f12271c:
    # Line 2810
    blez	$s1,.L0f122710
    move	$a4,$zero
    b	.L0f1227e8
    move	$a2,$s0
.L0f12272c:
    # Line 2812
    lbu	$at,2($a1)
.L0f122730:
    sb	$at,0($a0)
    # Line 2813
    lbu	$t0,1($a1)
    # Line 2811
    addiu	$a1,$a1,2
    # Line 2813
    sb	$t0,1($a0)
    # Line 2814
    addiu	$a0,$a0,3
    lbu	$a6,-2($a1)
    addi	$a5,$a5,-1
    bnez	$a5,.L0f12272c
    sb	$a6,-1($a0)
    move	$t1,$a0
.L0f122758:
    sra	$v1,$a2,0x2
    beqz	$v1,.L0f1227dc
    move	$a5,$a1
    move	$a1,$t1
    move	$a0,$a5
.L0f12276c:
    # Line 2812
    lbu	$v1,2($a0)
    sb	$v1,0($a1)
    # Line 2813
    lbu	$at,1($a0)
    sb	$at,1($a1)
    # Line 2814
    lbu	$t0,0($a0)
    sb	$t0,2($a1)
    # Line 2812
    lbu	$a6,4($a0)
    sb	$a6,3($a1)
    # Line 2813
    lbu	$v1,3($a0)
    sb	$v1,4($a1)
    # Line 2814
    lbu	$at,2($a0)
    sb	$at,5($a1)
    # Line 2812
    lbu	$t0,6($a0)
    sb	$t0,6($a1)
    # Line 2813
    lbu	$a6,5($a0)
    sb	$a6,7($a1)
    # Line 2814
    lbu	$v1,4($a0)
    sb	$v1,8($a1)
    # Line 2812
    lbu	$at,8($a0)
    sb	$at,9($a1)
    # Line 2813
    lbu	$t0,7($a0)
    sb	$t0,10($a1)
    # Line 2814
    addiu	$a1,$a1,12
    lbu	$a6,6($a0)
    # Line 2811
    addiu	$a0,$a0,8
    bne	$a0,$v0,.L0f12276c
    # Line 2814
    sb	$a6,-1($a1)
    move	$a0,$a1
.L0f1227dc:
    # Line 2810
    addiu	$a4,$a4,1
    beq	$s1,$a4,.L0f122710
    move	$a2,$s0
.L0f1227e8:
    addu	$v0,$a7,$s5
    blez	$s0,.L0f1227dc
    move	$a1,$s5
    andi	$a5,$s0,0x3
    beqz	$a5,.L0f122758
    move	$t1,$a0
    b	.L0f122730
    # Line 2812
    lbu	$at,2($a1)
.L0f122808:
    # Line 2818
    sw	$s4,12($sp)
.L0f12280c:
    move	$a7,$s3
    move	$a6,$zero
    move	$a5,$s2
    move	$a4,$s1
    move	$a3,$s0
    ld	$a2,16($sp)
    ld	$a1,24($sp)
    la	$t9,glTexImage3DEXT
    li	$a0,0x806f
    li	$t0,5121
    jalr	$t9
    sw	$t0,4($sp)
    # Line 2820
    move	$a0,$s4
    ld	$s2,56($sp)
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    la	$a1,sub_0f030000
    la	$t9,gl_free
    ld	$s5,80($sp)
    addiu	$a1,$a1,-21944
    jalr	$t9
    lw	$a1,424($a1)
    b	.L0f122494
    # Line 2898
    ld	$s0,64($sp)
.L0f12286c:
    # Line 2844
    mult	$s0,$s2
    mflo	$a2
    nop
    nop
    mult	$a2,$s1
    sd	$s5,80($sp)
    # Line 2839
    la	$a1,sub_0f030000
    # Line 2841
    lw	$s5,24($s4)
    # Line 2844
    la	$t9,gl_malloc
    # Line 2839
    addiu	$a1,$a1,-21944
    # Line 2844
    lw	$a1,424($a1)
    mflo	$a0
    addu	$a0,$a0,$a0
    jalr	$t9
    addu	$a0,$a0,$a0
    move	$s4,$v0
    move	$a0,$v0
    # Line 2847
    blez	$s2,.L0f122994
    move	$a3,$zero
    addu	$a2,$s0,$s0
    b	.L0f1228d0
    addu	$a2,$a2,$a2
.L0f1228c4:
    addiu	$a3,$a3,1
    beql	$s2,$a3,.L0f122998
    # Line 2855
    sw	$s4,12($sp)
.L0f1228d0:
    # Line 2848
    blez	$s1,.L0f1228c4
    move	$a4,$zero
    b	.L0f122954
    move	$a5,$s0
    move	$a7,$a0
.L0f1228e4:
    sra	$a6,$a5,0x2
    beqz	$a6,.L0f122948
    move	$t1,$a1
    move	$a1,$a7
    move	$a0,$t1
.L0f1228f8:
    # Line 2850
    lhu	$a6,2($a0)
    sh	$a6,0($a1)
    # Line 2851
    lhu	$v1,0($a0)
    sh	$v1,2($a1)
    # Line 2850
    lhu	$at,6($a0)
    sh	$at,4($a1)
    # Line 2851
    lhu	$t0,4($a0)
    sh	$t0,6($a1)
    # Line 2850
    lhu	$a6,10($a0)
    sh	$a6,8($a1)
    # Line 2851
    lhu	$v1,8($a0)
    sh	$v1,10($a1)
    # Line 2850
    lhu	$at,14($a0)
    sh	$at,12($a1)
    # Line 2851
    addiu	$a1,$a1,16
    lhu	$t0,12($a0)
    # Line 2849
    addiu	$a0,$a0,16
    bne	$a0,$v0,.L0f1228f8
    # Line 2851
    sh	$t0,-2($a1)
    move	$a0,$a1
.L0f122948:
    # Line 2848
    addiu	$a4,$a4,1
    beq	$s1,$a4,.L0f1228c4
    move	$a5,$s0
.L0f122954:
    addu	$v0,$a2,$s5
    blez	$s0,.L0f122948
    move	$a1,$s5
    andi	$a7,$s0,0x3
    beqzl	$a7,.L0f1228e4
    move	$a7,$a0
.L0f12296c:
    # Line 2850
    lhu	$at,2($a1)
    # Line 2849
    addiu	$a1,$a1,4
    # Line 2850
    sh	$at,0($a0)
    # Line 2851
    addiu	$a0,$a0,4
    lhu	$t0,-4($a1)
    addi	$a7,$a7,-1
    bnez	$a7,.L0f12296c
    sh	$t0,-2($a0)
    b	.L0f1228e4
    move	$a7,$a0
.L0f122994:
    # Line 2855
    sw	$s4,12($sp)
.L0f122998:
    move	$a7,$s3
    move	$a6,$zero
    move	$a5,$s2
    move	$a4,$s1
    move	$a3,$s0
    ld	$a2,16($sp)
    ld	$a1,24($sp)
    la	$t9,glTexImage3DEXT
    li	$a0,0x806f
    li	$v0,5123
    jalr	$t9
    sw	$v0,4($sp)
    # Line 2857
    move	$a0,$s4
    ld	$s2,56($sp)
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    la	$a1,sub_0f030000
    la	$t9,gl_free
    ld	$s5,80($sp)
    addiu	$a1,$a1,-21944
    jalr	$t9
    lw	$a1,424($a1)
    b	.L0f122494
    # Line 2898
    ld	$s0,64($sp)
.L0f1229f8:
    # Line 2834
    move	$a7,$s3
    move	$a6,$zero
    ld	$a2,16($sp)
    ld	$a1,24($sp)
    li	$a0,0x806f
    ld	$s2,56($sp)
    ld	$s0,64($sp)
    li	$t1,5123
    sw	$t1,4($sp)
    la	$t9,glTexImage3DEXT
    lw	$t0,24($s4)
    ld	$s1,72($sp)
    jalr	$t9
    sw	$t0,12($sp)
    b	.L0f122494
    # Line 2898
    ld	$s0,64($sp)
.L0f122a38:
    # Line 2786
    mult	$s0,$s2
    mflo	$a2
    nop
    nop
    mult	$a2,$s1
    sd	$s5,80($sp)
    # Line 2781
    la	$a1,sub_0f030000
    # Line 2783
    lw	$s5,24($s4)
    # Line 2786
    la	$t9,gl_malloc
    # Line 2781
    addiu	$a1,$a1,-21944
    # Line 2786
    lw	$a1,424($a1)
    mflo	$a0
    jalr	$t9
    addu	$a0,$a0,$a0
    move	$s4,$v0
    move	$a5,$v0
    # Line 2788
    blez	$s2,.L0f122b58
    move	$a3,$zero
    b	.L0f122a94
    addu	$a7,$s0,$s0
.L0f122a88:
    addiu	$a3,$a3,1
    beql	$s2,$a3,.L0f122b5c
    # Line 2796
    sw	$s4,12($sp)
.L0f122a94:
    # Line 2789
    blez	$s1,.L0f122a88
    move	$a4,$zero
    b	.L0f122b18
    move	$t2,$s0
    move	$t3,$a5
.L0f122aa8:
    sra	$a6,$t2,0x2
    beqz	$a6,.L0f122b0c
    move	$t8,$t1
    move	$t1,$t3
    move	$a5,$t8
.L0f122abc:
    # Line 2791
    lbu	$a6,1($a5)
    sb	$a6,0($t1)
    # Line 2792
    lbu	$v1,0($a5)
    sb	$v1,1($t1)
    # Line 2791
    lbu	$at,3($a5)
    sb	$at,2($t1)
    # Line 2792
    lbu	$t0,2($a5)
    sb	$t0,3($t1)
    # Line 2791
    lbu	$a6,5($a5)
    sb	$a6,4($t1)
    # Line 2792
    lbu	$v1,4($a5)
    sb	$v1,5($t1)
    # Line 2791
    lbu	$at,7($a5)
    sb	$at,6($t1)
    # Line 2792
    addiu	$t1,$t1,8
    lbu	$t0,6($a5)
    # Line 2790
    addiu	$a5,$a5,8
    bne	$a5,$v0,.L0f122abc
    # Line 2792
    sb	$t0,-1($t1)
    move	$a5,$t1
.L0f122b0c:
    # Line 2789
    addiu	$a4,$a4,1
    beq	$s1,$a4,.L0f122a88
    move	$t2,$s0
.L0f122b18:
    addu	$v0,$a7,$s5
    blez	$s0,.L0f122b0c
    move	$t1,$s5
    andi	$t3,$s0,0x3
    beqzl	$t3,.L0f122aa8
    move	$t3,$a5
.L0f122b30:
    # Line 2791
    lbu	$at,1($t1)
    # Line 2790
    addiu	$t1,$t1,2
    # Line 2791
    sb	$at,0($a5)
    # Line 2792
    addiu	$a5,$a5,2
    lbu	$t0,-2($t1)
    addi	$t3,$t3,-1
    bnez	$t3,.L0f122b30
    sb	$t0,-1($a5)
    b	.L0f122aa8
    move	$t3,$a5
.L0f122b58:
    # Line 2796
    sw	$s4,12($sp)
.L0f122b5c:
    move	$a7,$s3
    move	$a6,$zero
    move	$a5,$s2
    move	$a4,$s1
    move	$a3,$s0
    ld	$a2,16($sp)
    ld	$a1,24($sp)
    la	$t9,glTexImage3DEXT
    li	$a0,0x806f
    li	$v0,5121
    jalr	$t9
    sw	$v0,4($sp)
    # Line 2798
    move	$a0,$s4
    ld	$s2,56($sp)
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    la	$a1,sub_0f030000
    la	$t9,gl_free
    ld	$s5,80($sp)
    addiu	$a1,$a1,-21944
    jalr	$t9
    lw	$a1,424($a1)
    b	.L0f122494
    # Line 2898
    ld	$s0,64($sp)
.L0f122bbc:
    # Line 2776
    move	$a7,$s3
    move	$a6,$zero
    move	$a5,$s2
    move	$a4,$s1
    move	$a3,$s0
    ld	$a2,16($sp)
    ld	$a1,24($sp)
    li	$t1,5121
    sw	$t1,4($sp)
    la	$t9,glTexImage3DEXT
    lw	$t0,24($s4)
    li	$a0,0x806f
    jalr	$t9
    sw	$t0,12($sp)
    b	.L0f122494
    # Line 2898
    ld	$s0,64($sp)
.end __iglooDownLoad3dTexture

# Function: __UserTextureToOpenGLTextureObject
# Declared: Line 2903 (Source lines: 2904-3032)
# Address: 0x0f122bfc - 0x0f122ef0 (Size: 756 bytes, Frame: 224)
.ent __UserTextureToOpenGLTextureObject
__UserTextureToOpenGLTextureObject:
    # Line 2904
    li	$v0,3
    addiu	$sp,$sp,-96
    lw	$at,28($a0)
    sd	$s4,56($sp)
    sd	$s0,24($sp)
    beq	$at,$v0,.L0f122de4
    move	$s0,$a0
    # Line 2911
    li	$s4,3553
    sd	$ra,48($sp)
.L0f122c20:
    sd	$s2,32($sp)
    # Line 2913
    la	$t9,sub_0f120000
    sd	$s5,64($sp)
    sd	$s1,72($sp)
    addiu	$t9,$t9,-5268
    bal gl_g_texdef3d
    move	$a0,$s0
    la	$s1,sub_0f120000
    move	$s5,$v0
    la	$s2,sub_0f030000
    addiu	$s1,$s1,12016
    # Line 2917
    lw	$t8,56($s0)
    # Line 2913
    addiu	$s2,$s2,-21944
    # Line 2917
    addiu	$a1,$s2,336
    mtc1	$t8,$f12
    move	$t9,$s1
    bal SetOglFormatAndComps
    cvt.s.w	$f12,$f12
    bnez	$v0,.L0f122d64
    # Line 2921
    la	$t9,glTexParameteri
    # Line 2925
    lw	$t8,52($s0)
.L0f122c74:
    addiu	$a1,$s2,176
    mtc1	$t8,$f12
    move	$t9,$s1
    bal SetOglFormatAndComps
    cvt.s.w	$f12,$f12
    bnez	$v0,.L0f122d7c
    # Line 2930
    la	$t9,glTexParameteri
.L0f122c90:
    sd	$s3,40($sp)
    # Line 2935
    lw	$t9,84($s0)
    addiu	$s3,$s2,400
    move	$a1,$s3
    mtc1	$t9,$f12
    move	$t9,$s1
    bal SetOglFormatAndComps
    cvt.s.w	$f12,$f12
    bnez	$v0,.L0f122d94
    ld	$s2,32($sp)
    # Line 2943
    lw	$ra,88($s0)
.L0f122cbc:
    move	$a1,$s3
    mtc1	$ra,$f12
    move	$t9,$s1
    bal SetOglFormatAndComps
    cvt.s.w	$f12,$f12
    bnez	$v0,.L0f122db0
    # Line 2947
    la	$t9,glTexParameteri
    # Line 2951
    lw	$at,92($s0)
.L0f122cdc:
    move	$a1,$s3
    mtc1	$at,$f12
    move	$t9,$s1
    bal SetOglFormatAndComps
    cvt.s.w	$f12,$f12
    ld	$s3,40($sp)
    bnez	$v0,.L0f122dc8
    ld	$s1,72($sp)
    # Line 2968
    la	$t9,sub_0f120000
.L0f122d00:
    move	$a0,$s0
    addiu	$t9,$t9,-5412
    bal gl_g_texdef3d
    ld	$s4,56($sp)
    beqz	$s5,.L0f122df0
    nop
    # Line 3009
    beqz	$v0,.L0f122e24
    ld	$s5,64($sp)
    # Line 3023
    la	$t9,sub_0f120000
    addiu	$t9,$t9,3032
    bal gl_g_texdef3d
    move	$a0,$s0
    ld	$ra,48($sp)
.L0f122d34:
    lw	$at,424($s0)
.L0f122d38:
    beqz	$at,.L0f122d54
    # Line 3030
    la	$t9,gl_free
    la	$a1,sub_0f020000
    lw	$a0,24($s0)
    jalr	$t9
    addiu	$a1,$a1,22456
    ld	$ra,48($sp)
.L0f122d54:
    # Line 3031
    sw	$zero,424($s0)
    # Line 3032
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f122d64:
    # Line 2921
    move	$a0,$s4
    lw	$a2,12($v0)
    jalr	$t9
    li	$a1,10240
    b	.L0f122c74
    # Line 2925
    lw	$t8,52($s0)
.L0f122d7c:
    # Line 2930
    move	$a0,$s4
    lw	$a2,12($v0)
    jalr	$t9
    li	$a1,10241
    b	.L0f122c90
    sd	$s3,40($sp)
.L0f122d94:
    # Line 2939
    la	$t9,glTexParameteri
    move	$a0,$s4
    lw	$a2,12($v0)
    jalr	$t9
    li	$a1,10242
    b	.L0f122cbc
    # Line 2943
    lw	$ra,88($s0)
.L0f122db0:
    # Line 2947
    move	$a0,$s4
    lw	$a2,12($v0)
    jalr	$t9
    li	$a1,10243
    b	.L0f122cdc
    # Line 2951
    lw	$at,92($s0)
.L0f122dc8:
    # Line 2955
    la	$t9,glTexParameteri
    move	$a0,$s4
    lw	$a2,12($v0)
    jalr	$t9
    li	$a1,0x8072
    b	.L0f122d00
    # Line 2968
    la	$t9,sub_0f120000
.L0f122de4:
    sd	$ra,48($sp)
    # Line 2911
    b	.L0f122c20
    li	$s4,0x806f
.L0f122df0:
    # Line 2968
    beqz	$v0,.L0f122e3c
    # Line 3007
    la	$t9,sub_0f120000
    move	$a0,$s0
    addiu	$t9,$t9,3856
    bal gl_g_texdef3d
    ld	$s5,64($sp)
    # Line 3008
    la	$t9,sub_0f120000
    addiu	$t9,$t9,-12012
    bal gl_g_texdef2d
    lw	$a0,428($s0)
    # Line 3009
    sw	$zero,428($s0)
    b	.L0f122d34
    ld	$ra,48($sp)
.L0f122e24:
    # Line 3017
    la	$t9,sub_0f120000
    addiu	$t9,$t9,2732
    bal gl_g_texdef3d
    move	$a0,$s0
    b	.L0f122d34
    ld	$ra,48($sp)
.L0f122e3c:
    # Line 2979
    addiu	$a3,$sp,20
    la	$t9,SetOglFormatAndComps
    addiu	$a2,$sp,16
    lw	$a1,132($s0)
    bal SetOglFormatAndComps
    lw	$a0,32($s0)
    lw	$at,28($s0)
    li	$v1,3
    beq	$at,$v1,.L0f122ec8
    ld	$ra,48($sp)
    # Line 2987
    lw	$v0,24($s0)
    beqz	$v0,.L0f122d34
    ld	$s5,64($sp)
    lw	$a2,136($s0)
    li	$a4,3840
    beql	$a2,$a4,.L0f122d38
    # Line 3023
    lw	$at,424($s0)
    # Line 2987
    lw	$at,128($s0)
    li	$v1,1808
    beq	$at,$v1,.L0f122ec0
    # Line 2995
    li	$a7,5123
.L0f122e90:
    lw	$a6,16($sp)
    lw	$a4,40($s0)
    lw	$a3,36($s0)
    lw	$a2,20($sp)
    sw	$v0,4($sp)
    la	$t9,glTexImage2D
    move	$a5,$zero
    move	$a1,$zero
    jalr	$t9
    li	$a0,3553
    b	.L0f122d34
    ld	$ra,48($sp)
.L0f122ec0:
    b	.L0f122e90
    li	$a7,5121
.L0f122ec8:
    # Line 2987
    move	$a0,$s5
    la	$t9,sub_0f120000
    move	$a3,$s0
    lw	$a2,16($sp)
    addiu	$t9,$t9,9248
    bal SetOglFormatAndComps
    lw	$a1,20($sp)
    ld	$ra,48($sp)
    b	.L0f122d34
    ld	$s5,64($sp)
.end __UserTextureToOpenGLTextureObject

# Function: MatchParams
# Declared: Line 3034 (Source lines: 3035-3077)
# Address: 0x0f122ef0 - 0x0f122f74 (Size: 132 bytes, Frame: 160)
.ent MatchParams
MatchParams:
    # Line 3035
    move	$a6,$a1
    # Line 3036
    move	$v0,$zero
    # Line 3035
    addiu	$sp,$sp,-288
    # Line 3044
    lw	$at,4($a1)
    sd	$s7,256($sp)
    lw	$s7,8($a1)
    beqz	$at,.L0f122f68
    move	$a3,$at
.L0f122f10:
    lwc1	$f0,0($s7)
    c.eq.s	$f0,$f12
    nop
    bc1t	.L0f122f34
    addiu	$a3,$a3,-1
    bnez	$a3,.L0f122f10
    addiu	$s7,$s7,16
    b	.L0f122f6c
    # Line 3077
    ld	$s7,256($sp)
.L0f122f34:
    # Line 3044
    lw	$v1,8($s7)
    li	$a0,1
    beq	$v1,$a0,.L0f122f68
    # Line 3063
    move	$v0,$s7
    # Line 3051
    lw	$a3,4($s7)
    lw	$a2,0($a6)
    la	$t9,sprintf
    addiu	$a1,$gp,-15984
    sd	$ra,264($sp)
    jalr	$t9
    addiu	$a0,$sp,0
    ld	$ra,264($sp)
    # Line 3063
    move	$v0,$s7
.L0f122f68:
    # Line 3077
    ld	$s7,256($sp)
.L0f122f6c:
    jr	$ra
    addiu	$sp,$sp,288
.end MatchParams

.rdata
_lit8_3fa999999999999a:
    .word 0x3fa99999, 0x9999999a
_lit8_3fdecccccccccccd:
    .word 0x3fdecccc, 0xcccccccd
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4008000000000000:
    .word 0x40080000, 0x00000000
_lit8_4010000000000000:
    .word 0x40100000, 0x00000000
_lit8_401a000000000000:
    .word 0x401a0000, 0x00000000
_lit8_40efffe000000000:
    .word 0x40efffe0, 0x00000000
_lit8_bfa0000000000000:
    .word 0xbfa00000, 0x00000000
_lit_477fff00:
    .word 0x477fff00
_lit_bf800000:
    .word 0xbf800000

