# Source: ../igloo/glws/getgdesc.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/getgdesc.c -o getgdesc.T
# Total Functions: 4

.text

# Function: gdIsExtension
# Declared: Line 46 (Source lines: 47-48)
# Address: 0x0f0bfa88 - 0x0f0bfabc (Size: 52 bytes, Frame: 32)
.ent gdIsExtension
gdIsExtension:
    # Line 48
    la	$t9,__iglooIsExtensionSupported
    # Line 47
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 48
    jalr	$t9
    nop
    li	$at,1
    beq	$v0,$at,.L0f0bfab4
    ld	$ra,0($sp)
    move	$v0,$zero
.L0f0bfaac:
    jr	$ra
    addiu	$sp,$sp,32
.L0f0bfab4:
    b	.L0f0bfaac
    li	$v0,1
.end gdIsExtension

# Function: getRendererInfo
# Declared: Line 52 (Source lines: 53-81)
# Address: 0x0f0bfabc - 0x0f0bfb08 (Size: 76 bytes, Frame: 0)
.globl getRendererInfo
.ent getRendererInfo
getRendererInfo:
    # Line 53
    lui	$v0,0xfff7
    addiu	$v0,$v0,14220
    addu	$at,$t9,$v0
    # Line 60
    lw	$a5,-32368($at)
    lw	$a5,0($a5)
    lw	$a5,28($a5)
    # Line 61
    move	$v0,$zero
    # Line 62
    beqz	$a5,.L0f0bfb00
    sw	$zero,0($a0)
    # Line 68
    lw	$a4,256($a5)
    beqz	$a4,.L0f0bfb00
    nop
    lw	$a5,40($a4)
    beqz	$a5,.L0f0bfb00
    nop
    # Line 77
    addiu	$v0,$a4,44
    # Line 76
    sw	$a5,0($a0)
.L0f0bfb00:
    # Line 81
    jr	$ra
    nop
.end getRendererInfo

# Function: gl_g_getgdesc
# Declared: Line 194 (Source lines: 195-651)
# Address: 0x0f0bfb08 - 0x0f0c018c (Size: 1668 bytes, Frame: 240)
.globl gl_g_getgdesc
.ent gl_g_getgdesc
gl_g_getgdesc:
    # Line 195
    addiu	$sp,$sp,-112
    sd	$s0,88($sp)
    sd	$gp,80($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,14144 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 207
    la	$t9,_GLinitgl
    sd	$s1,48($sp)
    sd	$ra,40($sp)
    jalr	$t9
    # Line 195
    move	$s1,$a0
    # Line 209
    la	$a5,gl_sstatep
    ld	$ra,40($sp)
    # Line 511
    li	$s0,-1
    # Line 209
    lw	$a5,0($a5)
    # Line 511
    addiu	$v0,$s1,11
    # Line 209
    bltz	$s1,.L0f0bfbb0
    lw	$a5,28($a5)
    sltiu	$at,$s1,97
    beqz	$at,.L0f0bfbb0
    # Line 216
    li	$v1,1
    la	$a1,sub_0f030000
    sll	$a0,$s1,0x3
    addiu	$a1,$a1,-31344
    addu	$a0,$a0,$a1
    lw	$v0,0($a0)
    # Line 230
    lw	$at,-14844($gp)
    # Line 216
    beq	$v0,$v1,.L0f0bfcc8
    li	$s0,3
    beqz	$v0,.L0f0bfd50
    nop
    beq	$v0,$s0,.L0f0bfd24
    li	$a2,2
    beq	$v0,$a2,.L0f0bfd58
    ld	$s1,48($sp)
    # Line 502
    li	$s0,-1
.L0f0bfb98:
    ld	$gp,80($sp)
.L0f0bfb9c:
    # Line 651
    move	$v0,$s0
    ld	$s0,88($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f0bfbb0:
    # Line 511
    # la	v1,sub_0f020000
    sltiu	$a1,$v0,11
    sll	$v0,$v0,0x2
    la	$v1,jtbl_0f023110
    beqz	$a1,.L0f0bfd08
    addu	$v0,$v0,$v1
    lw	$v1,0($v0)
    jr	$v1
    ld	$s1,48($sp)
.L0f0bfbd4:
    # Line 532
    la	$t9,getRendererInfo
    bal getRendererInfo
    addiu	$a0,$sp,28
    # Line 534
    lw	$a0,28($sp)
    li	$a1,2
    beq	$a0,$a1,.L0f0bfdc4
    ld	$ra,40($sp)
    li	$a2,5
    bne	$a0,$a2,.L0f0bfb9c
    ld	$gp,80($sp)
    # Line 541
    b	.L0f0bfb98
    # Line 540
    lw	$s0,8($v0)
.L0f0bfc04:
    # Line 551
    b	.L0f0bfb98
    # Line 550
    move	$s0,$zero
.L0f0bfc0c:
    # Line 557
    la	$t9,getRendererInfo
    bal getRendererInfo
    addiu	$a0,$sp,32
    # Line 559
    lw	$a0,32($sp)
    li	$at,2
    beq	$a0,$at,.L0f0bfdcc
    ld	$ra,40($sp)
    li	$v1,5
    beq	$a0,$v1,.L0f0bfdd4
    li	$a1,3
    beq	$a0,$a1,.L0f0bfc44
    li	$a2,4
    bne	$a0,$a2,.L0f0bfb9c
    ld	$gp,80($sp)
.L0f0bfc44:
    # Line 570
    b	.L0f0bfb98
    # Line 569
    lw	$s0,0($v0)
.L0f0bfc4c:
    # Line 582
    la	$t9,getRendererInfo
    bal getRendererInfo
    addiu	$a0,$sp,36
    lw	$a0,36($sp)
    li	$at,2
    beq	$a0,$at,.L0f0bfd6c
    ld	$ra,40($sp)
    # Line 603
    li	$v1,5
    bne	$a0,$v1,.L0f0bfb9c
    ld	$gp,80($sp)
    # Line 607
    lbu	$v0,4($v0)
    li	$a1,83
    beq	$v0,$a1,.L0f0bfddc
    li	$a2,77
    beq	$v0,$a2,.L0f0c00f8
    li	$at,76
    bne	$v0,$at,.L0f0bfb9c
    ld	$gp,80($sp)
    # Line 620
    b	.L0f0bfb98
    # Line 619
    li	$s0,63
.L0f0bfc9c:
    # Line 636
    la	$t9,__GLgetgdesc
    jalr	$t9
    li	$a0,94
    move	$s0,$v0
    li	$v1,-1
    beq	$v0,$v1,.L0f0bfb98
    ld	$ra,40($sp)
    # Line 640
    b	.L0f0bfb98
    sll	$s0,$v0,0x14
.L0f0bfcc0:
    # Line 645
    b	.L0f0bfb98
    # Line 644
    li	$s0,1
.L0f0bfcc8:
    # Line 230
    lw	$s0,4($a0)
    li	$v1,-1
    addu	$s0,$s0,$a5
    beq	$at,$v1,.L0f0bfd94
    lw	$s0,164($s0)
.L0f0bfcdc:
    # Line 238
    lw	$v0,-20792($gp)
    beqz	$v0,.L0f0bfb98
    li	$at,9
    beq	$s1,$at,.L0f0bfd00
    li	$v1,10
    beq	$s1,$v1,.L0f0bfd00
    li	$a1,11
    bne	$s1,$a1,.L0f0bfb9c
    ld	$gp,80($sp)
.L0f0bfd00:
    # Line 252
    b	.L0f0bfb98
    # Line 251
    move	$s0,$v0
.L0f0bfd08:
    # Line 647
    la	$t9,sub_0f0c0000
    addiu	$t9,$t9,396
    bal gl_g_getgdesc
    move	$a0,$s1
    # Line 648
    li	$s0,-1
    b	.L0f0bfb98
    ld	$ra,40($sp)
.L0f0bfd24:
    # Line 261
    addiu	$v0,$s1,-4
    ld	$s1,48($sp)
    # la	v1,sub_0f020000
    sltiu	$at,$v0,91
    sll	$v0,$v0,0x2
    la	$v1,jtbl_0f022fa0
    beqz	$at,.L0f0bfd60
    addu	$v0,$v0,$v1
    lw	$v1,0($v0)
    jr	$v1
    ld	$s1,48($sp)
.L0f0bfd50:
    # Line 259
    b	.L0f0bfb98
    # Line 258
    lw	$s0,4($a0)
.L0f0bfd58:
    # Line 499
    b	.L0f0bfb98
    # Line 498
    li	$s0,-1
.L0f0bfd60:
    sd	$a5,56($sp)
    # Line 490
    b	.L0f0bfb98
    li	$s0,-1
.L0f0bfd6c:
    # Line 586
    lbu	$v0,4($v0)
    li	$a1,83
    beq	$v0,$a1,.L0f0bfde4
    li	$a2,77
    beq	$v0,$a2,.L0f0c0100
    li	$at,76
    bne	$v0,$at,.L0f0bfb9c
    ld	$gp,80($sp)
    # Line 599
    b	.L0f0bfb98
    # Line 598
    li	$s0,63
.L0f0bfd94:
    # Line 234
    la	$t9,getenv
    jalr	$t9
    lw	$a0,-14840($gp)
    sw	$v0,-14844($gp)
    beqz	$v0,.L0f0bfcdc
    ld	$ra,40($sp)
    # Line 238
    la	$t9,atoi
    jalr	$t9
    move	$a0,$v0
    sw	$v0,-20792($gp)
    b	.L0f0bfcdc
    ld	$ra,40($sp)
.L0f0bfdc4:
    # Line 538
    b	.L0f0bfb98
    # Line 537
    lw	$s0,8($v0)
.L0f0bfdcc:
    # Line 563
    b	.L0f0bfb98
    # Line 562
    li	$s0,-1
.L0f0bfdd4:
    # Line 566
    b	.L0f0bfb98
    # Line 565
    li	$s0,-1
.L0f0bfddc:
    # Line 614
    b	.L0f0bfb98
    # Line 613
    li	$s0,16
.L0f0bfde4:
    # Line 593
    b	.L0f0bfb98
    # Line 592
    li	$s0,16
.L0f0bfdec:
    sd	$a5,56($sp)
    # Line 266
    b	.L0f0bfb98
    # Line 265
    li	$s0,2
.L0f0bfdf8:
    # Line 270
    la	$t9,__iglooCalcDepthExtrema
    addiu	$a2,$sp,4
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,220($a5)
    # Line 272
    lw	$s0,4($sp)
    # Line 275
    b	.L0f0bfb98
    ld	$ra,40($sp)
.L0f0bfe18:
    # Line 279
    la	$t9,__iglooCalcDepthExtrema
    addiu	$a2,$sp,12
    addiu	$a1,$sp,8
    jalr	$t9
    lw	$a0,220($a5)
    # Line 281
    lw	$s0,8($sp)
    # Line 284
    b	.L0f0bfb98
    ld	$ra,40($sp)
.L0f0bfe38:
    # Line 286
    la	$t9,_GLExtDialsExist
    jalr	$t9
    sd	$a5,56($sp)
    move	$s0,$v0
    # Line 287
    b	.L0f0bfb98
    ld	$ra,40($sp)
.L0f0bfe50:
    # Line 297
    la	$v0,gl_nscrns
    sd	$a5,56($sp)
    lw	$v0,0($v0)
    # Line 296
    move	$s0,$zero
    sd	$zero,64($sp)
    # Line 297
    move	$v1,$v0
    # Line 299
    blez	$v0,.L0f0bfb98
    sd	$v0,72($sp)
    b	.L0f0c00d8
    # Line 301
    la	$t9,__iglooIsGlxScreen
.L0f0bfe78:
    # Line 309
    la	$v1,gl_selected_scrn
    la	$s0,gl_scrntab
    lw	$v1,0($v1)
    sd	$a5,56($sp)
    lw	$s0,0($s0)
    sll	$at,$v1,0x2
    addu	$at,$at,$v1
    sll	$at,$at,0x3
    addu	$s0,$s0,$at
    # Line 310
    b	.L0f0bfb98
    # Line 309
    lw	$s0,8($s0)
.L0f0bfea4:
    # Line 313
    la	$t9,__iglooGetGraphicsType
    jalr	$t9
    sd	$a5,56($sp)
    # Line 315
    li	$a1,2
    beq	$v0,$a1,.L0f0c0148
    ld	$ra,40($sp)
    li	$a2,5
    beq	$v0,$a2,.L0f0c014c
    ld	$s0,56($sp)
    b	.L0f0bfb98
    # Line 322
    move	$s0,$zero
.L0f0bfed0:
    # Line 331
    la	$t9,getRendererInfo
    sd	$a5,56($sp)
    bal getRendererInfo
    addiu	$a0,$sp,16
    # Line 333
    lw	$a0,16($sp)
    li	$at,4
    beq	$a0,$at,.L0f0c0164
    ld	$ra,40($sp)
    beq	$s0,$a0,.L0f0c016c
    li	$v1,2
    beq	$a0,$v1,.L0f0c0174
    li	$a1,8
    beq	$a0,$a1,.L0f0c017c
    li	$a2,5
    beql	$a0,$a2,.L0f0c0184
    # Line 353
    lw	$s0,12($v0)
    # Line 356
    b	.L0f0bfb98
    li	$s0,-1
.L0f0bff18:
    # Line 364
    la	$t9,glXGetCurrentContext
    jalr	$t9
    sd	$a5,56($sp)
    bnez	$v0,.L0f0c0108
    ld	$ra,40($sp)
    # Line 366
    b	.L0f0bfb98
    li	$s0,6
.L0f0bff34:
    sd	$a5,56($sp)
    # Line 398
    b	.L0f0bfb98
    # Line 396
    li	$s0,1
.L0f0bff40:
    # Line 400
    la	$t9,__iglooGetGraphicsType
    jalr	$t9
    sd	$a5,56($sp)
    li	$at,2
    beq	$v0,$at,.L0f0c0154
    ld	$ra,40($sp)
    # Line 406
    b	.L0f0bfb98
    move	$s0,$zero
.L0f0bff60:
    # Line 411
    la	$t9,sub_0f0c0000
    sd	$a5,56($sp)
    addiu	$t9,$t9,-1400
    bal gl_g_getgconfig
    li	$a0,12
    move	$s0,$v0
    # Line 412
    b	.L0f0bfb98
    ld	$ra,40($sp)
.L0f0bff80:
    # Line 414
    la	$t9,sub_0f0c0000
    sd	$a5,56($sp)
    addiu	$t9,$t9,-1400
    bal gl_g_getgconfig
    li	$a0,23
    move	$s0,$v0
    # Line 415
    b	.L0f0bfb98
    ld	$ra,40($sp)
.L0f0bffa0:
    # Line 417
    la	$t9,sub_0f0c0000
    sd	$a5,56($sp)
    addiu	$t9,$t9,-1400
    bal gl_g_getgconfig
    li	$a0,14
    # Line 418
    la	$t9,__iglooGetGraphicsType
    jalr	$t9
    nop
    # Line 423
    move	$s0,$zero
    # Line 424
    b	.L0f0bfb98
    ld	$ra,40($sp)
.L0f0bffcc:
    # Line 426
    la	$t9,sub_0f0c0000
    sd	$a5,56($sp)
    addiu	$t9,$t9,-1400
    bal gl_g_getgconfig
    li	$a0,17
    move	$s0,$v0
    # Line 427
    b	.L0f0bfb98
    ld	$ra,40($sp)
.L0f0bffec:
    # Line 430
    la	$t9,glXGetCurrentContext
    jalr	$t9
    sd	$a5,56($sp)
    bnez	$v0,.L0f0c0124
    ld	$ra,40($sp)
    # Line 432
    b	.L0f0bfb98
    li	$s0,24
.L0f0c0008:
    sd	$a5,56($sp)
    # Line 445
    b	.L0f0bfb98
    # Line 444
    li	$s0,67
.L0f0c0014:
    # Line 448
    la	$at,__iglooMixedModel
    lw	$at,0($at)
    bnez	$at,.L0f0bfb98
    lw	$s0,232($a5)
    la	$v0,__iglooSoftPupShift
    lw	$v0,0($v0)
    beqz	$v0,.L0f0bfb9c
    ld	$gp,80($sp)
    # Line 451
    b	.L0f0bfb98
    move	$s0,$v0
.L0f0c003c:
    # Line 456
    la	$v1,__iglooMixedModel
    lw	$v1,0($v1)
    bnez	$v1,.L0f0bfb98
    lw	$s0,236($a5)
    la	$v0,__iglooSoftPupPlanes
    lw	$v0,0($v0)
    beqz	$v0,.L0f0bfb9c
    ld	$gp,80($sp)
    # Line 459
    b	.L0f0bfb98
    move	$s0,$v0
.L0f0c0064:
    # Line 469
    la	$t9,__iglooGetGraphicsType
    jalr	$t9
    sd	$a5,56($sp)
    beq	$s0,$v0,.L0f0c0140
    ld	$ra,40($sp)
    la	$t9,__iglooGetGraphicsType
    jalr	$t9
    nop
    li	$v1,4
    beq	$v0,$v1,.L0f0c0140
    ld	$ra,40($sp)
    ld	$a1,56($sp)
    lw	$a1,212($a1)
    beqz	$a1,.L0f0c00b4
    ld	$a2,56($sp)
    lw	$a2,192($a2)
    beqz	$a2,.L0f0c00b4
    # Line 478
    la	$at,_GLnoDestAlpha
    lw	$at,0($at)
    beqz	$at,.L0f0c015c
.L0f0c00b4:
    move	$v0,$zero
.L0f0c00b8:
    b	.L0f0bfb98
    move	$s0,$v0
.L0f0c00c0:
    # Line 299
    ld	$v1,72($sp)
    addiu	$a0,$a0,1
    slt	$v1,$a0,$v1
    beqz	$v1,.L0f0c00f0
    sd	$a0,64($sp)
    # Line 301
    la	$t9,__iglooIsGlxScreen
.L0f0c00d8:
    jalr	$t9
    ld	$a0,64($sp)
    beqz	$v0,.L0f0c00c0
    ld	$a0,64($sp)
    b	.L0f0c00c0
    # Line 303
    addiu	$s0,$s0,1
.L0f0c00f0:
    b	.L0f0bfb98
    ld	$ra,40($sp)
.L0f0c00f8:
    # Line 617
    b	.L0f0bfb98
    # Line 616
    li	$s0,32
.L0f0c0100:
    # Line 596
    b	.L0f0bfb98
    # Line 595
    li	$s0,32
.L0f0c0108:
    # Line 376
    la	$t9,__iglooGetIntegerv
    addiu	$a1,$sp,20
    jalr	$t9
    li	$a0,3378
    # Line 377
    lw	$s0,20($sp)
    b	.L0f0bfb98
    ld	$ra,40($sp)
.L0f0c0124:
    # Line 438
    la	$t9,__iglooGetIntegerv
    addiu	$a1,$sp,24
    jalr	$t9
    li	$a0,3376
    # Line 439
    lw	$s0,24($sp)
    b	.L0f0bfb98
    ld	$ra,40($sp)
.L0f0c0140:
    # Line 469
    b	.L0f0bfb98
    # Line 473
    move	$s0,$zero
.L0f0c0148:
    ld	$s0,56($sp)
.L0f0c014c:
    # Line 318
    b	.L0f0bfb98
    lw	$s0,224($s0)
.L0f0c0154:
    # Line 404
    b	.L0f0bfb98
    # Line 403
    li	$s0,1
.L0f0c015c:
    # Line 478
    b	.L0f0c00b8
    li	$v0,1
.L0f0c0164:
    # Line 338
    b	.L0f0bfb98
    # Line 337
    move	$s0,$zero
.L0f0c016c:
    # Line 341
    b	.L0f0bfb98
    # Line 340
    lw	$s0,8($v0)
.L0f0c0174:
    # Line 344
    b	.L0f0bfb98
    # Line 343
    lw	$s0,12($v0)
.L0f0c017c:
    # Line 347
    b	.L0f0bfb98
    # Line 346
    li	$s0,8
.L0f0c0184:
    # Line 354
    b	.L0f0bfb98
    # Line 353
    addu	$s0,$s0,$s0
.end gl_g_getgdesc

# Function: getgdescNotSupported
# Declared: Line 654 (Source lines: 655-659)
# Address: 0x0f0c018c - 0x0f0c01bc (Size: 48 bytes, Frame: 160)
.ent getgdescNotSupported
getgdescNotSupported:
    # Line 655
    move	$a2,$a0
    # Line 657
    move	$a3,$a0
    # Line 655
    addiu	$sp,$sp,-160
    # Line 657
    addiu	$a0,$sp,0
    la	$t9,sprintf
    la	$a1,sub_0f020000
    sd	$ra,128($sp)
    jalr	$t9
    addiu	$a1,$a1,12608
    ld	$ra,128($sp)
    # Line 659
    jr	$ra
    addiu	$sp,$sp,160
.end getgdescNotSupported

.late_rodata
jtbl_0f022fa0:
    .word .L0f0bfe18
    .word .L0f0bfdf8
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0c0014
    .word .L0f0bfd60
    .word .L0f0c003c
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfdec
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfe50
    .word .L0f0bffec
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bffec
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfe78
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0c0008
    .word .L0f0bfe38
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfea4
    .word .L0f0bfd60
    .word .L0f0bff18
    .word .L0f0bff34
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0c0064
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bff40
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bff60
    .word .L0f0bff80
    .word .L0f0bffcc
    .word .L0f0bffa0
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfd60
    .word .L0f0bfed0
jtbl_0f023110:
    .word .L0f0bfcc0
    .word .L0f0bfc9c
    .word .L0f0bfb98
    .word .L0f0bfc4c
    .word .L0f0bfc0c
    .word .L0f0bfc04
    .word .L0f0bfbd4
    .word .L0f0bfb98
    .word .L0f0bfb98
    .word .L0f0bfb98
    .word .L0f0bfb98

