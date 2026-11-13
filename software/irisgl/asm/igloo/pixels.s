# Source: ../igloo/pixels.c
# Category: igloo
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/GL -I. -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/pixels.c -o pixels.T
# Total Functions: 36

.text

# Function: __iglooDummyRevMem
# Declared: Line 197 (Source lines: 203-203)
# Address: 0x0f0fa51c - 0x0f0fa524 (Size: 8 bytes, Frame: 0)
.ent __iglooDummyRevMem
__iglooDummyRevMem:
    # Line 203
    jr	$ra
    nop
.end __iglooDummyRevMem

# Function: __iglooRevMemGLuint
# Declared: Line 205 (Source lines: 205-205)
# Address: 0x0f0fa524 - 0x0f0fa5dc (Size: 184 bytes, Frame: 0)
.ent __iglooRevMemGLuint
__iglooRevMemGLuint:
    # Line 205
    move	$a5,$a2
    sll	$a4,$a1,0x2
    beqz	$a2,.L0f0fa5d4
    addu	$a4,$a4,$a0
    andi	$a3,$a2,0x3
    beqz	$a3,.L0f0fa568
    move	$t0,$a2
.L0f0fa540:
    addiu	$a4,$a4,-4
    addiu	$a0,$a0,4
    addiu	$a2,$a2,-1
    lw	$v0,4($a4)
    addi	$a3,$a3,-1
    lw	$at,-4($a0)
    sw	$v0,-4($a0)
    bnez	$a3,.L0f0fa540
    sw	$at,4($a4)
    move	$t0,$a2
.L0f0fa568:
    move	$a6,$a0
    move	$a7,$a4
    sra	$v1,$a5,0x2
    beqz	$v1,.L0f0fa5d4
    move	$a3,$a7
    move	$a2,$t0
    move	$a0,$a6
.L0f0fa584:
    lw	$v1,0($a3)
    lw	$v0,0($a0)
    sw	$v1,0($a0)
    sw	$v0,0($a3)
    lw	$at,-4($a3)
    lw	$a1,4($a0)
    addiu	$a3,$a3,-16
    sw	$at,4($a0)
    sw	$a1,12($a3)
    lw	$v1,8($a3)
    lw	$v0,8($a0)
    addiu	$a0,$a0,16
    sw	$v1,-8($a0)
    sw	$v0,8($a3)
    lw	$at,4($a3)
    addiu	$a2,$a2,-4
    lw	$a1,-4($a0)
    sw	$at,-4($a0)
    bnez	$a2,.L0f0fa584
    sw	$a1,4($a3)
.L0f0fa5d4:
    jr	$ra
    nop
.end __iglooRevMemGLuint

# Function: __iglooPickRevMemProc
# Declared: Line 214 (Source lines: 215-229)
# Address: 0x0f0fa5dc - 0x0f0fa610 (Size: 52 bytes, Frame: 0)
.ent __iglooPickRevMemProc
__iglooPickRevMemProc:
    # Line 215
    li	$at,5126
    beq	$a0,$at,.L0f0fa604
    li	$v1,6408
    beq	$a0,$v1,.L0f0fa604
    li	$a1,0x8000
    beq	$a0,$a1,.L0f0fa604
    # Line 227
    la	$v0,sub_0f100000
    addiu	$v0,$v0,-23268
    # Line 229
    jr	$ra
    nop
.L0f0fa604:
    # Line 223
    la	$v0,sub_0f100000
    # Line 229
    jr	$ra
    # Line 223
    addiu	$v0,$v0,-23260
.end __iglooPickRevMemProc

# Function: gl_g_rectzoom
# Declared: Line 237 (Source lines: 238-245)
# Address: 0x0f0fa610 - 0x0f0fa650 (Size: 64 bytes, Frame: 32)
.globl gl_g_rectzoom
.ent gl_g_rectzoom
gl_g_rectzoom:
    # Line 238
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-29640 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 239
    la	$at,gl_wstatep
    lw	$at,0($at)
    # Line 244
    la	$t9,__iglooPixelZoom
    sd	$ra,0($sp)
    # Line 242
    swc1	$f13,11796($at)
    # Line 244
    jalr	$t9
    # Line 241
    swc1	$f12,11792($at)
    # Line 245
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_g_rectzoom

# Function: gl_g_readRGB
# Declared: Line 254 (Source lines: 255-344)
# Address: 0x0f0fa650 - 0x0f0fa888 (Size: 568 bytes, Frame: 0)
.globl gl_g_readRGB
.ent gl_g_readRGB
gl_g_readRGB:
    # Line 255
    move	$v1,$s8
    addiu	$sp,$sp,-160
    addiu	$s8,$sp,160
    sd	$v1,-152($s8)
    sd	$s2,-120($s8)
    move	$s2,$a1
    # Line 271
    addiu	$a1,$s8,-41
    sd	$s0,-128($s8)
    # Line 255
    move	$s0,$a0
    # Line 271
    li	$a0,2824
    sd	$s1,-104($s8)
    # Line 255
    move	$s1,$a3
    sd	$s3,-112($s8)
    lui	$v0,0xfff4
    addiu	$v0,$v0,-29704
    sd	$gp,-144($s8)
    # addu	gp,t9,v0 (gp setup)
    # Line 256
    la	$at,gl_wstatep
    # Line 255
    move	$s3,$a2
    # Line 271
    la	$t9,__iglooGetBooleanv
    # Line 256
    lw	$at,0($at)
    sd	$ra,-88($s8)
    # Line 271
    jalr	$t9
    sd	$at,-96($s8)
    lbu	$a4,-41($s8)
    beqz	$a4,.L0f0fa718
    ld	$ra,-88($s8)
    sd	$s4,-160($s8)
    # Line 281
    la	$t9,__iglooGetRenderMode
    # Line 271
    li	$a6,-16
    sll	$a5,$s0,0x2
    addiu	$a5,$a5,15
    and	$a5,$a5,$a6
    subu	$sp,$sp,$a5
    # Line 281
    bal __iglooGetRenderMode
    # Line 277
    move	$s4,$sp
    # Line 281
    li	$at,7168
    beq	$v0,$at,.L0f0fa724
    ld	$ra,-88($s8)
    # Line 283
    move	$v0,$zero
.L0f0fa6f0:
    ld	$gp,-144($s8)
.L0f0fa6f4:
    # Line 344
    ld	$s0,-128($s8)
    ld	$s1,-104($s8)
    ld	$s2,-120($s8)
    ld	$s3,-112($s8)
    ld	$s4,-160($s8)
    ld	$v1,-152($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v1
.L0f0fa718:
    # Line 342
    move	$v0,$zero
    b	.L0f0fa6f0
    sd	$s4,-160($s8)
.L0f0fa724:
    sd	$s0,-136($s8)
    # Line 293
    la	$t9,__iglooPixelStorei
    li	$a1,4
    # Line 291
    move	$a0,$s0
    # Line 293
    jalr	$t9
    li	$a0,3333
    # Line 294
    la	$t9,__iglooPixelStorei
    move	$a1,$zero
    jalr	$t9
    li	$a0,3330
    # Line 299
    la	$t9,__iglooPixelZoom
    lwc1	$f12,_lit_3f800000
    jalr	$t9
    mov.s	$f13,$f12
    # Line 301
    la	$t9,__iglooGetGraphicsType
    jalr	$t9
    nop
    li	$a4,8
    beq	$v0,$a4,.L0f0fa820
    # Line 317
    la	$t9,__iglooGetIntegerv
    addiu	$a1,$s8,-80
    jalr	$t9
    li	$a0,2823
    # Line 318
    move	$a6,$s4
    li	$a5,5121
    li	$a4,0x8000
    li	$a3,1
    la	$t9,glReadPixels
    move	$a2,$s0
    lw	$a1,-76($s8)
    jalr	$t9
    lw	$a0,-80($s8)
    # Line 326
    ld	$a5,-96($s8)
.L0f0fa7a8:
    la	$t9,__iglooPixelZoom
    lwc1	$f13,11796($a5)
    jalr	$t9
    lwc1	$f12,11792($a5)
    ld	$v0,-136($s8)
    ld	$ra,-88($s8)
    # Line 332
    move	$at,$s0
    addiu	$s0,$s0,-1
    dsll32	$s0,$s0,0x10
    beqz	$at,.L0f0fa6f0
    dsra32	$s0,$s0,0x10
.L0f0fa7d4:
    # Line 334
    lw	$at,0($s4)
    # Line 336
    addiu	$s1,$s1,1
    addiu	$s4,$s4,4
    # Line 334
    sb	$at,0($s2)
    # Line 335
    addiu	$s3,$s3,1
    lw	$a5,-4($s4)
    # Line 334
    addiu	$s2,$s2,1
    # Line 332
    addiu	$a4,$s0,-1
    # Line 335
    srl	$a5,$a5,0x8
    sb	$a5,-1($s3)
    # Line 332
    dsll32	$a4,$a4,0x10
    # Line 336
    lw	$at,-4($s4)
    move	$v1,$s0
    # Line 332
    dsra32	$s0,$a4,0x10
    # Line 336
    srl	$at,$at,0x10
    # Line 332
    bnez	$v1,.L0f0fa7d4
    # Line 336
    sb	$at,-1($s1)
    b	.L0f0fa6f4
    ld	$gp,-144($s8)
.L0f0fa820:
    # Line 310
    la	$t9,__iglooGetFloatv
    addiu	$a1,$s8,-64
    jalr	$t9
    li	$a0,2823
    # Line 312
    lwc1	$f1,-60($s8)
    ldc1	$f2,_lit8_3fe0000000000000
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f2
    lwc1	$f0,-64($s8)
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f2
    ldc1	$f2,_lit8_bf1a36e2eb1c432d
    add.d	$f0,$f0,$f2
    move	$a6,$s4
    trunc.w.d	$f1,$f1
    li	$a5,5121
    li	$a4,0x8000
    trunc.w.d	$f0,$f0
    li	$a3,1
    la	$t9,glReadPixels
    mfc1	$a1,$f1
    mfc1	$a0,$f0
    jalr	$t9
    move	$a2,$s0
    b	.L0f0fa7a8
    # Line 326
    ld	$a5,-96($s8)
.end gl_g_readRGB

# Function: gl_g_lrectwrite
# Declared: Line 351 (Source lines: 354-480)
# Address: 0x0f0fa888 - 0x0f0fac2c (Size: 932 bytes, Frame: 224)
.globl gl_g_lrectwrite
.ent gl_g_lrectwrite
gl_g_lrectwrite:
    # Line 360
    andi	$at,$a4,0x3
    # Line 354
    addiu	$sp,$sp,-224
    sd	$ra,168($sp)
    sd	$a3,136($sp)
    sd	$a2,128($sp)
    sd	$gp,160($sp)
    # lui	v1,0xfff4 (gp disp hi)
    # addiu	v1,v1,-30272 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    # Line 360
    la	$v0,gl_wstatep
    sd	$a1,120($sp)
    sd	$a0,112($sp)
    lw	$v0,0($v0)
    sd	$a4,144($sp)
    beqz	$at,.L0f0fa8f0
    sd	$v0,152($sp)
    # Line 371
    li	$a1,5
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    li	$a0,111
    jalr	$t9
    addiu	$a2,$a2,19528
    # Line 372
    ld	$ra,168($sp)
    ld	$gp,160($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0f0fa8f0:
    # Line 379
    la	$t9,__iglooGetRenderMode
    bal __iglooGetRenderMode
    nop
    li	$a5,7168
    beq	$v0,$a5,.L0f0fa914
    ld	$ra,168($sp)
    ld	$gp,160($sp)
    # Line 381
    jr	$ra
    addiu	$sp,$sp,224
.L0f0fa914:
    # Line 388
    li	$a6,1
    addiu	$a5,$sp,0
    ld	$a4,136($sp)
    ld	$a3,128($sp)
    ld	$a2,120($sp)
    ld	$a1,112($sp)
    la	$t9,__iglooAdjustPosition
    # Line 386
    ld	$a7,144($sp)
    # Line 388
    ld	$a0,152($sp)
    bal __iglooAdjustPosition
    # Line 386
    sw	$a7,16($sp)
    # Line 390
    li	$a2,1
    addiu	$a1,$sp,0
    la	$t9,sub_0f100000
    ld	$a0,152($sp)
    # Line 388
    andi	$t0,$v0,0xff
    # Line 390
    addiu	$t9,$t9,-14132
    bal gl_g_readsource
    sd	$t0,104($sp)
    # Line 391
    la	$t9,sub_0f100000
    addiu	$t9,$t9,-14744
    bal gl_g_readsource
    addiu	$a0,$sp,0
    lbu	$at,49($sp)
    li	$v0,1
    beq	$at,$v0,.L0f0faae0
    ld	$a3,152($sp)
.L0f0fa980:
    # Line 406
    lw	$a3,11804($a3)
    beqz	$a3,.L0f0faaa4
    # Line 414
    la	$t9,sub_0f100000
    lw	$a2,12($sp)
    lw	$a1,8($sp)
    addiu	$t9,$t9,-11636
    bal __iglooAdjustPosition
    lw	$a0,16($sp)
    ld	$at,152($sp)
.L0f0fa9a4:
    # Line 426
    lw	$at,11800($at)
    andi	$at,$at,0x1
    beqz	$at,.L0f0fa9c8
    # Line 431
    la	$t9,sub_0f100000
    lw	$a2,16($sp)
    lw	$a1,12($sp)
    addiu	$t9,$t9,-10440
    bal __iglooAdjustPosition
    lw	$a0,8($sp)
.L0f0fa9c8:
    ld	$at,152($sp)
    lw	$at,11816($at)
    beqz	$at,.L0f0fa9ec
    # Line 436
    la	$t9,sub_0f100000
    lw	$a2,16($sp)
    lw	$a1,12($sp)
    addiu	$t9,$t9,-10276
    bal __iglooAdjustPosition
    lw	$a0,8($sp)
.L0f0fa9ec:
    lw	$at,32($sp)
    li	$v0,6402
    beq	$at,$v0,.L0f0fab60
    # Line 447
    lw	$a0,4($sp)
.L0f0fa9fc:
    mtc1	$a0,$f13
    lw	$v1,0($sp)
    cvt.s.w	$f13,$f13
    la	$t9,__iglooWindowRasterPos
    mtc1	$v1,$f12
    jalr	$t9
    cvt.s.w	$f12,$f12
    ld	$a5,104($sp)
    beqz	$a5,.L0f0fab3c
    # Line 451
    la	$t9,__iglooPixelZoom
    lwc1	$f13,24($sp)
    jalr	$t9
    lwc1	$f12,20($sp)
    # Line 452
    lw	$a4,16($sp)
    lw	$a3,36($sp)
    la	$t9,glDrawPixels
    lw	$a2,32($sp)
    lw	$a1,12($sp)
    jalr	$t9
    lw	$a0,8($sp)
    # Line 453
    ld	$a6,152($sp)
    la	$t9,__iglooPixelZoom
    lwc1	$f13,11796($a6)
    jalr	$t9
    lwc1	$f12,11792($a6)
    # Line 457
    lw	$at,32($sp)
.L0f0faa64:
    li	$v0,6402
    beq	$at,$v0,.L0f0fab7c
    # Line 465
    la	$t9,sub_0f100000
.L0f0faa70:
    addiu	$t9,$t9,-14364
    bal gl_g_readsource
    addiu	$a0,$sp,0
    lbu	$at,50($sp)
    li	$a0,1
    beq	$at,$a0,.L0f0fab94
    ld	$ra,168($sp)
.L0f0faa8c:
    # Line 470
    lbu	$v0,49($sp)
    beq	$v0,$a0,.L0f0fabb8
    # Line 477
    la	$t9,__iglooFree
.L0f0faa98:
    ld	$gp,160($sp)
    # Line 480
    jr	$ra
    addiu	$sp,$sp,224
.L0f0faaa4:
    # Line 414
    lbu	$v1,50($sp)
    li	$a5,1
    beq	$v1,$a5,.L0f0fabfc
    # Line 422
    lbu	$at,48($sp)
    li	$v0,1
    bne	$at,$v0,.L0f0fa9a4
    ld	$at,152($sp)
    # Line 426
    la	$t9,sub_0f100000
    lw	$a2,16($sp)
    lw	$a1,12($sp)
    addiu	$t9,$t9,-11336
    bal __iglooAdjustPosition
    lw	$a0,8($sp)
    b	.L0f0fa9a4
    ld	$at,152($sp)
.L0f0faae0:
    ld	$a3,152($sp)
    # Line 391
    lw	$a3,11828($a3)
    beqz	$a3,.L0f0fabc8
    lw	$a2,8($sp)
    # Line 399
    move	$a5,$a3
    sd	$a3,96($sp)
.L0f0faaf8:
    # Line 401
    lw	$a1,12($sp)
    mult	$a1,$a2
    la	$t9,__iglooMalloc
    mflo	$a0
    jalr	$t9
    sll	$a0,$a0,0x2
    move	$a0,$v0
    # Line 406
    ld	$a4,96($sp)
    lw	$a3,12($sp)
    la	$t9,sub_0f100000
    lw	$a2,8($sp)
    ld	$a1,144($sp)
    addiu	$t9,$t9,-10864
    bal __iglooAdjustPosition
    # Line 401
    sw	$v0,16($sp)
    b	.L0f0fa980
    ld	$a3,152($sp)
.L0f0fab3c:
    # Line 457
    lw	$a4,16($sp)
    lw	$a3,36($sp)
    la	$t9,glDrawPixels
    lw	$a2,32($sp)
    lw	$a1,12($sp)
    jalr	$t9
    lw	$a0,8($sp)
    b	.L0f0faa64
    lw	$at,32($sp)
.L0f0fab60:
    # Line 444
    ld	$ra,152($sp)
    la	$t9,__iglooPixelTransferf
    lwc1	$f13,2892($ra)
    jalr	$t9
    li	$a0,3358
    b	.L0f0fa9fc
    # Line 447
    lw	$a0,4($sp)
.L0f0fab7c:
    # Line 462
    la	$t9,__iglooPixelTransferf
    lwc1	$f13,_lit_3f800000
    jalr	$t9
    li	$a0,3358
    b	.L0f0faa70
    # Line 465
    la	$t9,sub_0f100000
.L0f0fab94:
    # Line 469
    la	$t9,__iglooLoadIdentity
    jalr	$t9
    nop
    # Line 470
    la	$t9,__iglooMatrixMode
    jalr	$t9
    lw	$a0,88($sp)
    li	$a0,1
    b	.L0f0faa8c
    ld	$ra,168($sp)
.L0f0fabb8:
    # Line 477
    jalr	$t9
    lw	$a0,16($sp)
    b	.L0f0faa98
    ld	$ra,168($sp)
.L0f0fabc8:
    ld	$v0,152($sp)
    # Line 399
    lw	$v1,11820($v0)
    mult	$v1,$a2
    lw	$v0,11824($v0)
    mflo	$v1
    addu	$v0,$v0,$v1
    addiu	$v0,$v0,31
    sra	$at,$v0,0x4
    srl	$at,$at,0x1b
    addu	$at,$at,$v0
    sra	$at,$at,0x5
    b	.L0f0faaf8
    sd	$at,96($sp)
.L0f0fabfc:
    # Line 418
    la	$t9,__iglooGetMatrixMode
    jalr	$t9
    nop
    # Line 420
    la	$t9,__iglooMatrixMode
    li	$a0,6144
    jalr	$t9
    # Line 418
    sw	$v0,88($sp)
    # Line 422
    la	$t9,__iglooLoadMatrix
    jalr	$t9
    la	$a0,__iglooMatrixRgb2Bgr
    b	.L0f0fa9a4
    ld	$at,152($sp)
.end gl_g_lrectwrite

# Function: gl_g_rectwrite
# Declared: Line 486 (Source lines: 489-559)
# Address: 0x0f0fac2c - 0x0f0fae98 (Size: 620 bytes, Frame: 176)
.globl gl_g_rectwrite
.ent gl_g_rectwrite
gl_g_rectwrite:
    # Line 504
    andi	$at,$a4,0x1
    # Line 489
    addiu	$sp,$sp,-176
    sd	$ra,120($sp)
    sd	$a3,88($sp)
    sd	$a2,80($sp)
    sd	$a1,96($sp)
    sd	$a4,56($sp)
    sd	$gp,112($sp)
    # lui	v1,0xfff4 (gp disp hi)
    # addiu	v1,v1,-31204 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    # Line 495
    la	$v0,gl_wstatep
    sd	$a0,104($sp)
    # Line 504
    move	$a0,$a4
    # Line 495
    lw	$v0,0($v0)
    sd	$a4,64($sp)
    # Line 504
    beqz	$at,.L0f0fac9c
    sd	$v0,72($sp)
    # Line 507
    li	$a1,5
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    li	$a0,111
    jalr	$t9
    addiu	$a2,$a2,19544
    # Line 508
    ld	$ra,120($sp)
    ld	$gp,112($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0f0fac9c:
    # Line 515
    la	$t9,__iglooGetRenderMode
    bal __iglooGetRenderMode
    nop
    li	$a5,7168
    beq	$v0,$a5,.L0f0facc0
    ld	$ra,120($sp)
    ld	$gp,112($sp)
    # Line 516
    jr	$ra
    addiu	$sp,$sp,176
.L0f0facc0:
    ld	$at,104($sp)
    ld	$a6,80($sp)
    slt	$a6,$a6,$at
    beqz	$a6,.L0f0facf0
    ld	$at,88($sp)
    ld	$a6,80($sp)
    # Line 518
    ld	$v1,104($sp)
    move	$a5,$a6
    move	$a6,$v1
    sd	$v1,80($sp)
    move	$v1,$a5
    sd	$a5,104($sp)
.L0f0facf0:
    ld	$v1,96($sp)
    slt	$at,$at,$v1
    beqz	$at,.L0f0fad1c
    ld	$v1,72($sp)
    ld	$at,88($sp)
    # Line 519
    ld	$a5,96($sp)
    move	$a6,$at
    move	$at,$a5
    sd	$a5,88($sp)
    move	$a5,$a6
    sd	$a6,96($sp)
.L0f0fad1c:
    lw	$v1,276($v1)
    lw	$v1,60($v1)
    lhu	$v1,52($v1)
    # Line 530
    ld	$at,104($sp)
    # Line 526
    li	$v0,6402
    # Line 519
    andi	$v1,$v1,0x4
    beqz	$v1,.L0f0fae90
    # Line 530
    ld	$a6,96($sp)
.L0f0fad3c:
    ld	$v1,88($sp)
    sd	$v0,32($sp)
    ld	$a5,72($sp)
    subu	$v1,$v1,$a6
    ld	$a6,80($sp)
    sd	$v1,40($sp)
    lw	$a5,12112($a5)
    subu	$a6,$a6,$at
    addiu	$a6,$a6,1
    beqz	$a5,.L0f0fadd0
    sd	$a6,48($sp)
    ld	$a2,40($sp)
    # Line 538
    ld	$a1,48($sp)
    addiu	$a2,$a2,1
    multu	$a1,$a2
    la	$t9,__iglooMalloc
    sd	$a2,24($sp)
    mflo	$a0
    addu	$a0,$a0,$a0
    jalr	$t9
    sd	$a0,8($sp)
    move	$a0,$v0
    sd	$v0,16($sp)
    move	$a3,$v0
    # Line 540
    la	$t9,memcpy
    sd	$v0,64($sp)
    ld	$a1,56($sp)
    jalr	$t9
    ld	$a2,8($sp)
    ld	$a0,16($sp)
    # Line 541
    ld	$a1,48($sp)
    la	$t9,sub_0f100000
    ld	$a2,24($sp)
    ld	$a3,72($sp)
    addiu	$t9,$t9,-11164
    bal __iglooAdjustPosition
    lw	$a3,12112($a3)
.L0f0fadd0:
    # Line 544
    la	$t9,__iglooPixelStorei
    li	$a1,2
    jalr	$t9
    li	$a0,3317
    # Line 545
    la	$t9,__iglooPixelStorei
    move	$a1,$zero
    jalr	$t9
    li	$a0,3314
    # Line 547
    la	$t9,__iglooGetAndSetEnable
    addiu	$a2,$sp,0
    move	$a1,$zero
    jalr	$t9
    li	$a0,4063
    ld	$at,96($sp)
    # Line 549
    mtc1	$at,$f13
    ld	$ra,104($sp)
    cvt.s.w	$f13,$f13
    la	$t9,__iglooWindowRasterPos
    mtc1	$ra,$f12
    jalr	$t9
    cvt.s.w	$f12,$f12
    ld	$a0,48($sp)
    # Line 551
    ld	$a4,64($sp)
    li	$a3,5123
    la	$t9,glDrawPixels
    ld	$a1,40($sp)
    ld	$a2,32($sp)
    jalr	$t9
    addiu	$a1,$a1,1
    # Line 553
    la	$t9,__iglooSetSavedEnable
    lw	$a2,0($sp)
    move	$a1,$zero
    jalr	$t9
    li	$a0,4063
    ld	$ra,120($sp)
    ld	$a5,64($sp)
    beqz	$a5,.L0f0fae74
    ld	$a6,56($sp)
    ld	$at,64($sp)
    bne	$a6,$at,.L0f0fae80
    # Line 557
    la	$t9,__iglooFree
.L0f0fae74:
    ld	$gp,112($sp)
    # Line 559
    jr	$ra
    addiu	$sp,$sp,176
.L0f0fae80:
    # Line 557
    jalr	$t9
    ld	$a0,64($sp)
    b	.L0f0fae74
    ld	$ra,120($sp)
.L0f0fae90:
    b	.L0f0fad3c
    # Line 530
    li	$v0,6400
.end gl_g_rectwrite

# Function: gl_g_rectread
# Declared: Line 565 (Source lines: 568-622)
# Address: 0x0f0fae98 - 0x0f0fb060 (Size: 456 bytes, Frame: 144)
.globl gl_g_rectread
.ent gl_g_rectread
gl_g_rectread:
    # Line 572
    andi	$at,$a4,0x1
    # Line 568
    addiu	$sp,$sp,-144
    sd	$ra,80($sp)
    sd	$a3,40($sp)
    sd	$a2,64($sp)
    sd	$gp,72($sp)
    # lui	v1,0xfff4 (gp disp hi)
    # addiu	v1,v1,-31824 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    # Line 572
    la	$v0,gl_wstatep
    sd	$a1,48($sp)
    sd	$a0,56($sp)
    lw	$v0,0($v0)
    sd	$a4,24($sp)
    beqz	$at,.L0f0faf04
    sd	$v0,32($sp)
    # Line 587
    li	$a1,5
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    li	$a0,111
    jalr	$t9
    addiu	$a2,$a2,19560
    # Line 588
    ld	$ra,80($sp)
    move	$v0,$zero
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0faf04:
    # Line 591
    la	$t9,__iglooGetRenderMode
    bal __iglooGetRenderMode
    nop
    li	$a5,7168
    beq	$v0,$a5,.L0f0faf2c
    ld	$ra,80($sp)
    # Line 593
    move	$v0,$zero
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0f0faf2c:
    ld	$at,32($sp)
    lw	$at,276($at)
    lw	$at,60($at)
    lw	$at,48($at)
    li	$v0,3
    beq	$at,$v0,.L0f0fb054
    ld	$a5,56($sp)
    # Line 602
    li	$v0,6400
    sd	$v0,0($sp)
.L0f0faf50:
    ld	$v1,64($sp)
    slt	$v1,$v1,$a5
    beqz	$v1,.L0f0faf7c
    ld	$a5,40($sp)
    # Line 605
    ld	$at,56($sp)
    ld	$v1,64($sp)
    sd	$at,64($sp)
    move	$v0,$v1
    move	$v1,$at
    move	$at,$v0
    sd	$v0,56($sp)
.L0f0faf7c:
    ld	$at,48($sp)
    slt	$a5,$a5,$at
    beqz	$a5,.L0f0fafa4
    # Line 606
    ld	$v0,48($sp)
    ld	$a5,40($sp)
    sd	$v0,40($sp)
    move	$v1,$a5
    move	$a5,$v0
    move	$v0,$v1
    sd	$v1,48($sp)
.L0f0fafa4:
    # Line 611
    la	$t9,__iglooPixelStorei
    li	$a1,2
    jalr	$t9
    li	$a0,3333
    # Line 612
    la	$t9,__iglooPixelStorei
    move	$a1,$zero
    jalr	$t9
    li	$a0,3330
    ld	$a6,24($sp)
    # Line 614
    li	$a5,5123
    ld	$t0,48($sp)
    ld	$a4,0($sp)
    la	$t9,glReadPixels
    move	$a1,$t0
    ld	$a7,56($sp)
    ld	$a3,40($sp)
    ld	$a2,64($sp)
    move	$a0,$a7
    subu	$a3,$a3,$t0
    subu	$a2,$a2,$a7
    addiu	$a2,$a2,1
    addiu	$a3,$a3,1
    sd	$a3,8($sp)
    jalr	$t9
    sd	$a2,16($sp)
    ld	$a7,32($sp)
    lw	$a7,12112($a7)
    beqz	$a7,.L0f0fb038
    ld	$ra,80($sp)
    ld	$a0,24($sp)
    # Line 619
    la	$t9,sub_0f100000
    ld	$a1,16($sp)
    ld	$a2,8($sp)
    addiu	$t9,$t9,-11164
    bal __iglooAdjustPosition
    negu	$a3,$a7
    ld	$ra,80($sp)
.L0f0fb038:
    # Line 622
    ld	$v0,8($sp)
    ld	$at,16($sp)
    mult	$at,$v0
    ld	$gp,72($sp)
    mflo	$v0
    jr	$ra
    addiu	$sp,$sp,144
.L0f0fb054:
    # Line 598
    li	$v1,6402
    b	.L0f0faf50
    sd	$v1,0($sp)
.end gl_g_rectread

# Function: gl_g_writeRGB
# Declared: Line 629 (Source lines: 631-665)
# Address: 0x0f0fb060 - 0x0f0fb1f8 (Size: 408 bytes, Frame: 0)
.globl gl_g_writeRGB
.ent gl_g_writeRGB
gl_g_writeRGB:
    # Line 631
    move	$v1,$s8
    addiu	$sp,$sp,-112
    addiu	$s8,$sp,112
    sd	$s2,-64($s8)
    move	$s2,$a3
    sd	$s0,-80($s8)
    move	$s0,$a2
    sd	$s1,-72($s8)
    move	$s1,$a1
    sd	$ra,-56($s8)
    sll	$v0,$a0,0x2
    addiu	$v0,$v0,15
    sd	$v1,-104($s8)
    li	$v1,-16
    and	$v0,$v0,$v1
    sd	$gp,-112($s8)
    sd	$a0,-88($s8)
    lui	$a0,0xfff4
    addiu	$a0,$a0,-32280
    addu	$gp,$t9,$a0
    # Line 648
    la	$t9,__iglooGetRenderMode
    # Line 631
    subu	$sp,$sp,$v0
    # Line 644
    move	$at,$sp
    # Line 648
    bal __iglooGetRenderMode
    sd	$sp,-96($s8)
    li	$a5,7168
    bne	$v0,$a5,.L0f0fb1d8
    ld	$ra,-56($s8)
    # Line 653
    ld	$at,-88($s8)
    ld	$a2,-96($s8)
    addiu	$a1,$at,-1
    dsll32	$a1,$a1,0x10
    beqz	$at,.L0f0fb164
    dsra32	$a1,$a1,0x10
    # Line 655
    lbu	$v0,0($s2)
.L0f0fb0ec:
    move	$at,$a1
    lbu	$v1,0($s0)
    # Line 653
    addiu	$a5,$a1,-1
    dsll32	$a5,$a5,0x10
    dsra32	$a1,$a5,0x10
    # Line 655
    lbu	$a5,0($s1)
    sll	$v0,$v0,0x10
    sll	$v1,$v1,0x8
    or	$a5,$a5,$v1
    or	$a5,$a5,$v0
    sw	$a5,0($a2)
    # Line 653
    beqz	$at,.L0f0fb164
    move	$v0,$a1
    # Line 655
    addiu	$a2,$a2,8
    addiu	$s2,$s2,2
    addiu	$s0,$s0,2
    addiu	$s1,$s1,2
    lbu	$v1,-1($s2)
    lbu	$a5,-1($s0)
    # Line 653
    addiu	$at,$a1,-1
    dsll32	$at,$at,0x10
    dsra32	$a1,$at,0x10
    # Line 655
    lbu	$at,-1($s1)
    sll	$v1,$v1,0x10
    sll	$a5,$a5,0x8
    or	$at,$at,$a5
    or	$at,$at,$v1
    sw	$at,-4($a2)
    # Line 653
    bnezl	$v0,.L0f0fb0ec
    # Line 655
    lbu	$v0,0($s2)
.L0f0fb164:
    # Line 658
    li	$a1,4
    li	$a0,3317
    la	$t9,__iglooPixelStorei
    ld	$s0,-80($s8)
    ld	$s1,-72($s8)
    jalr	$t9
    ld	$s2,-64($s8)
    # Line 659
    la	$t9,__iglooPixelStorei
    move	$a1,$zero
    jalr	$t9
    li	$a0,3314
    # Line 661
    la	$t9,__iglooGetAndSetEnable
    addiu	$a2,$s8,-44
    move	$a1,$zero
    jalr	$t9
    li	$a0,4063
    ld	$a0,-88($s8)
    # Line 662
    ld	$a4,-96($s8)
    la	$t9,glDrawPixels
    li	$a3,5121
    li	$a2,0x8000
    jalr	$t9
    li	$a1,1
    # Line 663
    la	$t9,__iglooSetSavedEnable
    lw	$a2,-44($s8)
    move	$a1,$zero
    jalr	$t9
    li	$a0,4063
    ld	$ra,-56($s8)
.L0f0fb1d8:
    ld	$gp,-112($s8)
    # Line 665
    ld	$s0,-80($s8)
    ld	$s1,-72($s8)
    ld	$s2,-64($s8)
    ld	$v0,-104($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.end gl_g_writeRGB

# Function: gl_g_writepixels
# Declared: Line 671 (Source lines: 672-706)
# Address: 0x0f0fb1f8 - 0x0f0fb2e0 (Size: 232 bytes, Frame: 208)
.globl gl_g_writepixels
.ent gl_g_writepixels
gl_g_writepixels:
    # Line 672
    addiu	$sp,$sp,-80
    sd	$a1,40($sp)
    sd	$gp,48($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-32688 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 673
    la	$at,gl_wstatep
    sd	$a0,16($sp)
    # Line 688
    la	$t9,__iglooGetRenderMode
    # Line 673
    lw	$at,0($at)
    sd	$ra,8($sp)
    # Line 688
    bal __iglooGetRenderMode
    sd	$at,32($sp)
    li	$v1,7168
    bne	$v0,$v1,.L0f0fb2c8
    ld	$ra,8($sp)
    ld	$a3,16($sp)
    li	$v0,3
    blez	$a3,.L0f0fb2c8
    ld	$at,32($sp)
    lw	$at,276($at)
    lw	$at,60($at)
    lw	$at,48($at)
    beq	$at,$v0,.L0f0fb2d4
    # Line 696
    li	$v0,6400
    sd	$v0,24($sp)
.L0f0fb260:
    # Line 699
    la	$t9,__iglooPixelStorei
    li	$a1,2
    jalr	$t9
    li	$a0,3317
    # Line 700
    la	$t9,__iglooPixelStorei
    move	$a1,$zero
    jalr	$t9
    li	$a0,3314
    # Line 702
    la	$t9,__iglooGetAndSetEnable
    addiu	$a2,$sp,0
    move	$a1,$zero
    jalr	$t9
    li	$a0,4063
    ld	$a0,16($sp)
    # Line 703
    ld	$a4,40($sp)
    la	$t9,glDrawPixels
    li	$a3,5123
    ld	$a2,24($sp)
    jalr	$t9
    li	$a1,1
    # Line 704
    la	$t9,__iglooSetSavedEnable
    lw	$a2,0($sp)
    move	$a1,$zero
    jalr	$t9
    li	$a0,4063
    ld	$ra,8($sp)
.L0f0fb2c8:
    ld	$gp,48($sp)
    # Line 706
    jr	$ra
    addiu	$sp,$sp,80
.L0f0fb2d4:
    # Line 692
    li	$v1,6402
    b	.L0f0fb260
    sd	$v1,24($sp)
.end gl_g_writepixels

# Function: gl_g_lrectread
# Declared: Line 712 (Source lines: 715-882)
# Address: 0x0f0fb2e0 - 0x0f0fb828 (Size: 1352 bytes, Frame: 192)
.globl gl_g_lrectread
.ent gl_g_lrectread
gl_g_lrectread:
    # Line 716
    andi	$at,$a4,0x3
    # Line 715
    addiu	$sp,$sp,-320
    sd	$ra,232($sp)
    sd	$a3,168($sp)
    sd	$a2,160($sp)
    sd	$a1,176($sp)
    sd	$gp,216($sp)
    # lui	v1,0xfff3 (gp disp hi)
    # addiu	v1,v1,32616 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    # Line 716
    la	$v0,gl_wstatep
    sd	$s3,224($sp)
    # Line 715
    move	$s3,$a0
    # Line 716
    lw	$v0,0($v0)
    sd	$a4,152($sp)
    beqz	$at,.L0f0fb354
    sd	$v0,184($sp)
    # Line 734
    li	$a1,5
    la	$t9,gl_ErrorHandler
    la	$a2,sub_0f020000
    li	$a0,111
    jalr	$t9
    addiu	$a2,$a2,19576
    # Line 735
    move	$v0,$zero
    ld	$ra,232($sp)
    ld	$gp,216($sp)
    ld	$s3,224($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0f0fb354:
    # Line 738
    la	$t9,__iglooGetRenderMode
    bal __iglooGetRenderMode
    nop
    li	$a5,7168
    beq	$v0,$a5,.L0f0fb380
    ld	$ra,232($sp)
    # Line 739
    move	$v0,$zero
    ld	$gp,216($sp)
    ld	$s3,224($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0f0fb380:
    # Line 743
    move	$a6,$zero
    addiu	$a5,$sp,0
    ld	$a4,168($sp)
    ld	$a3,160($sp)
    ld	$a2,176($sp)
    move	$a1,$s3
    la	$t9,__iglooAdjustPosition
    # Line 742
    ld	$a7,152($sp)
    # Line 743
    ld	$a0,184($sp)
    bal __iglooAdjustPosition
    # Line 742
    sw	$a7,16($sp)
    # Line 745
    move	$a2,$zero
    addiu	$a1,$sp,0
    la	$t9,sub_0f100000
    ld	$a0,184($sp)
    # Line 743
    andi	$t0,$v0,0xff
    # Line 745
    addiu	$t9,$t9,-14132
    bal gl_g_readsource
    sd	$t0,96($sp)
    lw	$at,32($sp)
    li	$v1,6402
    beq	$at,$v1,.L0f0fb638
    ld	$ra,232($sp)
.L0f0fb3dc:
    # Line 763
    ld	$a5,96($sp)
    beqz	$a5,.L0f0fb688
    lw	$a3,12($sp)
    ld	$a4,184($sp)
    lw	$a4,11800($a4)
    andi	$a7,$a4,0x2
    beqz	$a7,.L0f0fb6c0
    # Line 777
    ld	$v0,184($sp)
    sd	$s1,240($sp)
    lw	$v0,11828($v0)
    ld	$s1,176($sp)
    sd	$s2,264($sp)
    beqz	$v0,.L0f0fb7b4
    move	$s2,$a3
    sd	$s0,248($sp)
    sd	$s4,256($sp)
    # Line 785
    sll	$s4,$v0,0x2
.L0f0fb420:
    # Line 788
    addiu	$a5,$s2,-1
    mult	$a5,$s4
    andi	$v1,$a4,0x4
    lw	$s0,16($sp)
    mflo	$at
    beqz	$v1,.L0f0fb534
    addu	$s0,$s0,$at
    # Line 798
    la	$t9,sub_0f100000
    # Line 795
    lw	$a7,8($sp)
    # Line 798
    lw	$a0,32($sp)
    addiu	$t9,$t9,-23076
    # Line 796
    addiu	$ra,$a7,-1
    sd	$ra,192($sp)
    # Line 795
    srl	$a6,$a7,0x1f
    addu	$a6,$a6,$a7
    sra	$a6,$a6,0x1
    # Line 798
    bal __iglooRestorePickFeedState
    sd	$a6,200($sp)
    sd	$v0,208($sp)
    beqz	$s2,.L0f0fb4c0
    ld	$ra,232($sp)
.L0f0fb474:
    # Line 802
    move	$a0,$s3
    move	$a1,$s1
    move	$a6,$s0
    lw	$a5,36($sp)
    la	$t9,glReadPixels
    lw	$a4,32($sp)
    li	$a3,1
    jalr	$t9
    lw	$a2,8($sp)
    # Line 800
    addiu	$s2,$s2,-1
    # Line 805
    ld	$a1,192($sp)
    ld	$t9,208($sp)
    move	$a0,$s0
    # Line 807
    subu	$s0,$s0,$s4
    # Line 805
    jalr	$t9
    ld	$a2,200($sp)
    # Line 800
    bnez	$s2,.L0f0fb474
    addiu	$s1,$s1,1
    ld	$ra,232($sp)
.L0f0fb4c0:
    ld	$s1,240($sp)
    ld	$s0,248($sp)
    ld	$s4,256($sp)
    # Line 852
    lw	$at,32($sp)
    li	$v1,6402
    beq	$at,$v1,.L0f0fb578
    ld	$s2,264($sp)
    # Line 870
    li	$a7,1
    lbu	$a5,48($sp)
    beq	$a5,$a7,.L0f0fb7e8
.L0f0fb4e8:
    ld	$v0,184($sp)
.L0f0fb4ec:
    # Line 875
    lw	$v0,11804($v0)
    beqz	$v0,.L0f0fb514
    # Line 880
    negu	$a3,$v0
    la	$t9,sub_0f100000
    lw	$a2,12($sp)
    lw	$a1,8($sp)
    addiu	$t9,$t9,-11636
    bal __iglooAdjustPosition
    lw	$a0,16($sp)
    ld	$ra,232($sp)
.L0f0fb514:
    # Line 882
    lw	$v0,12($sp)
    lw	$at,8($sp)
    mult	$at,$v0
    ld	$gp,216($sp)
    ld	$s3,224($sp)
    mflo	$v0
    jr	$ra
    addiu	$sp,$sp,320
.L0f0fb534:
    # Line 800
    beqz	$s2,.L0f0fb4c0
    # Line 814
    move	$a0,$s3
.L0f0fb53c:
    lw	$a5,36($sp)
    lw	$a4,32($sp)
    li	$a3,1
    move	$a1,$s1
    la	$t9,glReadPixels
    # Line 812
    addiu	$s2,$s2,-1
    # Line 814
    move	$a6,$s0
    jalr	$t9
    lw	$a2,8($sp)
    # Line 817
    subu	$s0,$s0,$s4
    # Line 812
    addiu	$s1,$s1,1
    bnez	$s2,.L0f0fb53c
    # Line 814
    move	$a0,$s3
    b	.L0f0fb4c0
    ld	$ra,232($sp)
.L0f0fb578:
    # Line 852
    lw	$v1,88($sp)
    beqz	$v1,.L0f0fb810
    # Line 863
    lw	$a1,8($sp)
    lw	$a5,12($sp)
    mult	$a1,$a5
    mflo	$v0
    beqz	$v0,.L0f0fb4e8
    lw	$a1,16($sp)
    andi	$a2,$v0,0x3
    beqz	$a2,.L0f0fb5c8
    move	$a3,$v0
.L0f0fb5a4:
    # Line 865
    ld	$at,184($sp)
    # Line 863
    addiu	$a1,$a1,4
    # Line 865
    lw	$a7,-4($a1)
    lw	$at,2888($at)
    # Line 863
    addiu	$v0,$v0,-1
    addi	$a2,$a2,-1
    # Line 865
    srlv	$a7,$a7,$at
    bnez	$a2,.L0f0fb5a4
    sw	$a7,-4($a1)
.L0f0fb5c8:
    move	$a2,$v0
    sra	$v1,$a3,0x2
    beqz	$v1,.L0f0fb630
    move	$a4,$a1
    move	$a1,$a2
    move	$v0,$a4
.L0f0fb5e0:
    ld	$a7,184($sp)
    lw	$v1,0($v0)
    lw	$a5,2888($a7)
    srlv	$v1,$v1,$a5
    sw	$v1,0($v0)
    lw	$a5,4($v0)
    lw	$at,2888($a7)
    srlv	$a5,$a5,$at
    sw	$a5,4($v0)
    lw	$at,8($v0)
    lw	$v1,2888($a7)
    srlv	$at,$at,$v1
    sw	$at,8($v0)
    lw	$a5,12($v0)
    lw	$a7,2888($a7)
    # Line 863
    addiu	$v0,$v0,16
    addiu	$a1,$a1,-4
    # Line 865
    srlv	$a5,$a5,$a7
    # Line 863
    bnez	$a1,.L0f0fb5e0
    # Line 865
    sw	$a5,-4($v0)
.L0f0fb630:
    b	.L0f0fb4ec
    ld	$v0,184($sp)
.L0f0fb638:
    # Line 751
    la	$t9,__iglooGetGraphicsType
    jalr	$t9
    nop
    sd	$v0,208($sp)
    # Line 753
    li	$a7,3
    beq	$v0,$a7,.L0f0fb808
    ld	$ra,232($sp)
    ld	$at,208($sp)
    li	$v1,4
    beq	$at,$v1,.L0f0fb808
    move	$v0,$zero
.L0f0fb664:
    bnez	$v0,.L0f0fb3dc
    sw	$v0,88($sp)
    # Line 763
    ld	$a0,184($sp)
    la	$t9,__iglooPixelTransferf
    lwc1	$f13,2896($a0)
    jalr	$t9
    li	$a0,3358
    b	.L0f0fb3dc
    ld	$ra,232($sp)
.L0f0fb688:
    # Line 852
    move	$a0,$s3
    ld	$a1,176($sp)
    lw	$a6,16($sp)
    la	$t9,glReadPixels
    lw	$a5,36($sp)
    lw	$a4,32($sp)
    jalr	$t9
    lw	$a2,8($sp)
    sd	$s2,264($sp)
    sd	$s4,256($sp)
    sd	$s0,248($sp)
    sd	$s1,240($sp)
    b	.L0f0fb4c0
    ld	$ra,232($sp)
.L0f0fb6c0:
    # Line 837
    lw	$a2,36($sp)
    lw	$a1,32($sp)
    sd	$a3,128($sp)
    ld	$at,176($sp)
    la	$t9,sub_0f100000
    # Line 834
    lw	$a0,8($sp)
    sd	$at,136($sp)
    # Line 837
    addiu	$t9,$t9,-12228
    # Line 835
    addiu	$ra,$a0,-1
    sd	$ra,120($sp)
    # Line 834
    srl	$a3,$a0,0x1f
    addu	$a3,$a3,$a0
    sra	$a3,$a3,0x1
    # Line 837
    bal gl_g_readsource
    sd	$a3,112($sp)
    # Line 840
    lw	$a0,32($sp)
    la	$t9,sub_0f100000
    sd	$v0,104($sp)
    # Line 839
    lw	$v0,16($sp)
    # Line 840
    addiu	$t9,$t9,-23076
    bal __iglooRestorePickFeedState
    sd	$v0,144($sp)
    sd	$s2,264($sp)
    sd	$s4,256($sp)
    sd	$s0,248($sp)
    ld	$at,128($sp)
    sd	$s1,240($sp)
    sd	$v0,208($sp)
    beqz	$at,.L0f0fb4c0
    ld	$ra,232($sp)
.L0f0fb738:
    # Line 845
    move	$a0,$s3
    ld	$a1,136($sp)
    ld	$a6,144($sp)
    lw	$a5,36($sp)
    la	$t9,glReadPixels
    lw	$a4,32($sp)
    li	$a3,1
    jalr	$t9
    lw	$a2,8($sp)
    # Line 846
    ld	$t9,208($sp)
    ld	$a0,144($sp)
    ld	$a1,120($sp)
    jalr	$t9
    ld	$a2,112($sp)
    # Line 843
    ld	$a7,144($sp)
    ld	$a5,136($sp)
    ld	$v1,128($sp)
    ld	$at,104($sp)
    addiu	$a5,$a5,1
    addiu	$v1,$v1,-1
    addu	$a7,$at,$a7
    sd	$a7,144($sp)
    sd	$v1,128($sp)
    bnez	$v1,.L0f0fb738
    sd	$a5,136($sp)
    sd	$s2,264($sp)
    sd	$s4,256($sp)
    sd	$s0,248($sp)
    sd	$s1,240($sp)
    b	.L0f0fb4c0
    ld	$ra,232($sp)
.L0f0fb7b4:
    sd	$s4,256($sp)
    # Line 781
    la	$t9,sub_0f100000
    lw	$a2,36($sp)
    lw	$a1,32($sp)
    addiu	$t9,$t9,-12228
    bal gl_g_readsource
    lw	$a0,8($sp)
    sd	$s0,248($sp)
    move	$s4,$v0
    ld	$a4,184($sp)
    ld	$ra,232($sp)
    b	.L0f0fb420
    lw	$a4,11800($a4)
.L0f0fb7e8:
    # Line 875
    la	$t9,sub_0f100000
    lw	$a2,16($sp)
    lw	$a1,12($sp)
    addiu	$t9,$t9,-11336
    bal __iglooAdjustPosition
    lw	$a0,8($sp)
    b	.L0f0fb4e8
    ld	$ra,232($sp)
.L0f0fb808:
    # Line 753
    b	.L0f0fb664
    li	$v0,1
.L0f0fb810:
    # Line 870
    la	$t9,__iglooPixelTransferf
    lwc1	$f13,_lit_3f800000
    jalr	$t9
    li	$a0,3358
    b	.L0f0fb4e8
    ld	$ra,232($sp)
.end gl_g_lrectread

# Function: gl_g_readpixels
# Declared: Line 889 (Source lines: 890-952)
# Address: 0x0f0fb828 - 0x0f0fb9b4 (Size: 396 bytes, Frame: 240)
.globl gl_g_readpixels
.ent gl_g_readpixels
gl_g_readpixels:
    # Line 890
    addiu	$sp,$sp,-112
    sd	$a1,64($sp)
    # Line 909
    addiu	$a1,$sp,0
    sd	$a0,40($sp)
    sd	$gp,72($sp)
    # Line 890
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,31264 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 891
    la	$at,gl_wstatep
    # Line 909
    li	$a0,2824
    la	$t9,__iglooGetBooleanv
    # Line 891
    lw	$at,0($at)
    sd	$ra,80($sp)
    # Line 909
    jalr	$t9
    sd	$at,56($sp)
    # Line 911
    la	$t9,__iglooGetRenderMode
    bal __iglooGetRenderMode
    nop
    li	$v1,7168
    bne	$v0,$v1,.L0f0fb934
    # Line 914
    ld	$ra,80($sp)
    ld	$a3,40($sp)
    li	$v1,3
    # Line 911
    blez	$a3,.L0f0fb930
    ld	$at,56($sp)
    lbu	$a5,0($sp)
    beqz	$a5,.L0f0fb934
    # Line 914
    ld	$ra,80($sp)
    lw	$at,276($at)
    lw	$at,60($at)
    lw	$at,48($at)
    beq	$at,$v1,.L0f0fb944
    # Line 919
    li	$a5,6402
    # Line 924
    li	$v1,6400
    sd	$v1,48($sp)
.L0f0fb8b4:
    # Line 928
    la	$t9,__iglooPixelStorei
    li	$a1,2
    jalr	$t9
    li	$a0,3333
    # Line 929
    la	$t9,__iglooPixelStorei
    move	$a1,$zero
    jalr	$t9
    li	$a0,3330
    # Line 931
    la	$t9,__iglooGetGraphicsType
    jalr	$t9
    nop
    li	$a3,8
    beq	$v0,$a3,.L0f0fb94c
    # Line 946
    la	$t9,__iglooGetIntegerv
    addiu	$a1,$sp,24
    jalr	$t9
    li	$a0,2823
    ld	$a6,64($sp)
    # Line 948
    li	$a5,5123
    ld	$a4,48($sp)
    li	$a3,1
    la	$t9,glReadPixels
    ld	$a2,40($sp)
    lw	$a1,28($sp)
    jalr	$t9
    lw	$a0,24($sp)
    # Line 952
    ld	$ra,80($sp)
.L0f0fb920:
    ld	$v0,40($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f0fb930:
    # Line 914
    ld	$ra,80($sp)
.L0f0fb934:
    move	$v0,$zero
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f0fb944:
    # Line 919
    b	.L0f0fb8b4
    sd	$a5,48($sp)
.L0f0fb94c:
    # Line 940
    la	$t9,__iglooGetFloatv
    addiu	$a1,$sp,8
    jalr	$t9
    li	$a0,2823
    # Line 941
    lwc1	$f1,12($sp)
    ldc1	$f2,_lit8_3fe0000000000000
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f2
    lwc1	$f0,8($sp)
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f2
    ldc1	$f2,_lit8_bf1a36e2eb1c432d
    add.d	$f0,$f0,$f2
    ld	$a6,64($sp)
    trunc.w.d	$f1,$f1
    li	$a5,5123
    ld	$a4,48($sp)
    trunc.w.d	$f0,$f0
    li	$a3,1
    la	$t9,glReadPixels
    mfc1	$a1,$f1
    mfc1	$a0,$f0
    jalr	$t9
    ld	$a2,40($sp)
    b	.L0f0fb920
    # Line 952
    ld	$ra,80($sp)
.end gl_g_readpixels

# Function: gl_g_rectcopy
# Declared: Line 959 (Source lines: 962-1034)
# Address: 0x0f0fb9b4 - 0x0f0fbbf0 (Size: 572 bytes, Frame: 144)
.globl gl_g_rectcopy
.ent gl_g_rectcopy
gl_g_rectcopy:
    # Line 962
    addiu	$sp,$sp,-144
    sd	$s5,40($sp)
    move	$s5,$a5
    sd	$s4,16($sp)
    move	$s4,$a4
    sd	$s3,64($sp)
    move	$s3,$a2
    sd	$s0,24($sp)
    move	$s0,$a1
    sd	$s2,56($sp)
    move	$s2,$a3
    sd	$s1,32($sp)
    move	$s1,$a0
    sd	$s6,8($sp)
    sd	$gp,72($sp)
    # lui	at,0xfff3 (gp disp hi)
    # addiu	at,at,30868 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 966
    la	$s6,gl_wstatep
    slt	$at,$a2,$a0
    beqz	$at,.L0f0fba18
    lw	$s6,0($s6)
    # Line 983
    move	$v1,$s1
    move	$s1,$s3
    move	$s3,$v1
.L0f0fba18:
    slt	$a7,$s2,$s0
    beqz	$a7,.L0f0fba30
    # Line 984
    move	$t0,$s0
    sd	$ra,80($sp)
    move	$s0,$s2
    move	$s2,$t0
.L0f0fba30:
    # Line 989
    addiu	$a2,$sp,0
    la	$t9,__iglooGetAndSetEnable
    move	$a1,$zero
    sd	$ra,80($sp)
    jalr	$t9
    li	$a0,4063
    # Line 996
    mtc1	$s5,$f13
    mtc1	$s4,$f12
    subu	$s4,$s3,$s1
    cvt.s.w	$f13,$f13
    la	$t9,__iglooWindowRasterPos
    subu	$s5,$s2,$s0
    addiu	$s5,$s5,1
    jalr	$t9
    cvt.s.w	$f12,$f12
    lw	$at,276($s6)
    li	$v1,3
    lw	$at,60($at)
    dsll32	$s5,$s5,0x10
    dsra32	$s5,$s5,0x10
    lw	$at,48($at)
    addiu	$s4,$s4,1
    dsll32	$s4,$s4,0x10
    bne	$at,$v1,.L0f0fbb90
    dsra32	$s4,$s4,0x10
    # Line 1002
    mult	$s4,$s5
    ld	$s3,64($sp)
    la	$t9,__iglooMalloc
    ld	$s2,56($sp)
    mflo	$a0
    jalr	$t9
    sll	$a0,$a0,0x2
    beqz	$v0,.L0f0fbbb8
    sd	$v0,48($sp)
    # Line 1006
    la	$t9,__iglooPixelStorei
    move	$a1,$zero
    jalr	$t9
    li	$a0,3330
    # Line 1007
    la	$t9,__iglooPixelStorei
    li	$a1,4
    jalr	$t9
    li	$a0,3333
    # Line 1009
    la	$t9,__iglooPixelTransferf
    lwc1	$f13,_lit_3f800000
    jalr	$t9
    li	$a0,3358
    # Line 1011
    move	$a0,$s1
    move	$a1,$s0
    move	$a2,$s4
    move	$a3,$s5
    la	$t9,glReadPixels
    ld	$a6,48($sp)
    li	$a5,5125
    jalr	$t9
    li	$a4,6402
    # Line 1014
    lwc1	$f13,2896($s6)
    la	$t9,__iglooPixelTransferf
    li	$a0,3348
    ld	$s1,32($sp)
    jalr	$t9
    ld	$s0,24($sp)
    # Line 1017
    la	$t9,__iglooPixelStorei
    move	$a1,$zero
    li	$a0,3314
    jalr	$t9
    ld	$s6,8($sp)
    # Line 1018
    la	$t9,__iglooPixelStorei
    li	$a1,4
    jalr	$t9
    li	$a0,3317
    # Line 1020
    move	$a0,$s4
    move	$a1,$s5
    la	$t9,glDrawPixels
    ld	$a4,48($sp)
    li	$a3,5125
    jalr	$t9
    li	$a2,6403
    lwc1	$f13,_lit_3f800000
    # Line 1022
    la	$t9,__iglooPixelTransferf
    li	$a0,3348
    ld	$s5,40($sp)
    jalr	$t9
    ld	$s4,16($sp)
    # Line 1024
    la	$t9,__iglooFree
    jalr	$t9
    ld	$a0,48($sp)
    b	.L0f0fbbbc
    # Line 1032
    lw	$a2,0($sp)
.L0f0fbb90:
    # Line 1029
    move	$a0,$s1
    move	$a1,$s0
    move	$a2,$s4
    move	$a3,$s5
    li	$a4,6144
    la	$t9,glCopyPixels
    ld	$s6,8($sp)
    ld	$s3,64($sp)
    jalr	$t9
    ld	$s2,56($sp)
.L0f0fbbb8:
    # Line 1032
    lw	$a2,0($sp)
.L0f0fbbbc:
    move	$a1,$zero
    li	$a0,4063
    ld	$s5,40($sp)
    ld	$s1,32($sp)
    la	$t9,__iglooSetSavedEnable
    ld	$s0,24($sp)
    ld	$s4,16($sp)
    jalr	$t9
    ld	$s6,8($sp)
    ld	$ra,80($sp)
    ld	$gp,72($sp)
    # Line 1034
    jr	$ra
    addiu	$sp,$sp,144
.end gl_g_rectcopy

# Function: gl_pixmode
# Declared: Line 1045 (Source lines: 1046-1322)
# Address: 0x0f0fbbf0 - 0x0f0fc144 (Size: 1364 bytes, Frame: 128)
.ent gl_pixmode
gl_pixmode:
    # Line 1047
    sltiu	$at,$a0,15
    sll	$a4,$a0,0x2
    # Line 1046
    addiu	$sp,$sp,-128
    sd	$s0,96($sp)
    # Line 1047
    # la	v0,sub_0f020000
    la	$a5,gl_wstatep
    # Line 1046
    move	$s0,$a1
    # Line 1047
    la	$v0,jtbl_0f024c88
    lw	$a5,0($a5)
    addu	$a4,$a4,$v0
    beqz	$at,.L0f0fbc30
    move	$a3,$a5
    lw	$v1,0($a4)
    # Line 1230
    sltiu	$at,$s0,65
    # Line 1047
    jr	$v1
    sd	$a3,88($sp)
.L0f0fbc30:
    # Line 1319
    move	$a3,$s0
    addiu	$a2,$gp,-14568
    addiu	$a0,$sp,0
    la	$t9,sprintf
    la	$a1,sub_0f020000
    sd	$ra,104($sp)
    jalr	$t9
    addiu	$a1,$a1,20472
    # Line 1320
    addiu	$a2,$sp,0
    la	$t9,gl_ErrorHandler
    li	$a1,2
    li	$a0,98
    jalr	$t9
    ld	$s0,96($sp)
    ld	$ra,104($sp)
.L0f0fbc6c:
    # Line 1322
    jr	$ra
    addiu	$sp,$sp,128
.L0f0fbc74:
    # Line 1058
    blez	$s0,.L0f0fbff0
    move	$a0,$s0
.L0f0fbc7c:
    # la	a2,sub_0f020000
    la	$a2,jtbl_0f024cc8
    sll	$a1,$a0,0x2
    sltiu	$at,$a0,25
    beqz	$at,.L0f0fbf20
    addu	$a1,$a1,$a2
    lw	$at,0($a1)
    jr	$at
    nop
.L0f0fbca0:
    # Line 1084
    beqz	$s0,.L0f0fc0e4
    li	$v0,1
    beq	$s0,$v0,.L0f0fbfa0
    # Line 1093
    move	$a3,$s0
    addiu	$a2,$gp,-14568
    addiu	$a0,$sp,0
    la	$t9,sprintf
    la	$a1,sub_0f020000
    sd	$ra,104($sp)
    jalr	$t9
    addiu	$a1,$a1,19792
    # Line 1095
    addiu	$a2,$sp,0
    la	$t9,gl_ErrorHandler
    li	$a1,2
    li	$a0,98
    jalr	$t9
    ld	$s0,96($sp)
    b	.L0f0fbc6c
    ld	$ra,104($sp)
.L0f0fbcec:
    # Line 1104
    sw	$s0,11808($a5)
    # Line 1105
    b	.L0f0fbc6c
    ld	$s0,96($sp)
.L0f0fbcf8:
    # Line 1111
    sw	$s0,11812($a5)
    # Line 1112
    b	.L0f0fbc6c
    ld	$s0,96($sp)
.L0f0fbd04:
    # Line 1119
    sw	$s0,11816($a5)
    # Line 1120
    b	.L0f0fbc6c
    ld	$s0,96($sp)
.L0f0fbd10:
    # Line 1130
    beqz	$s0,.L0f0fc0fc
    li	$a2,1
    beq	$s0,$a2,.L0f0fbfb4
    # Line 1139
    move	$a3,$s0
    addiu	$a2,$gp,-14568
    addiu	$a0,$sp,0
    la	$t9,sprintf
    la	$a1,sub_0f020000
    sd	$ra,104($sp)
    jalr	$t9
    addiu	$a1,$a1,19832
    # Line 1141
    addiu	$a2,$sp,0
    la	$t9,gl_ErrorHandler
    li	$a1,2
    li	$a0,98
    jalr	$t9
    ld	$s0,96($sp)
    b	.L0f0fbc6c
    ld	$ra,104($sp)
.L0f0fbd5c:
    # Line 1154
    beqz	$s0,.L0f0fc114
    li	$a2,1
    beq	$s0,$a2,.L0f0fbfc8
    # Line 1163
    move	$a3,$s0
    addiu	$a2,$gp,-14568
    addiu	$a0,$sp,0
    la	$t9,sprintf
    la	$a1,sub_0f020000
    sd	$ra,104($sp)
    jalr	$t9
    addiu	$a1,$a1,19864
    # Line 1165
    addiu	$a2,$sp,0
    la	$t9,gl_ErrorHandler
    li	$a1,2
    li	$a0,98
    jalr	$t9
    ld	$s0,96($sp)
    b	.L0f0fbc6c
    ld	$ra,104($sp)
.L0f0fbda8:
    # Line 1174
    la	$t9,sub_0f100000
    move	$a0,$s0
    sd	$ra,104($sp)
    addiu	$t9,$t9,-15736
    bal gl_n_pixmode
    addiu	$a1,$a5,11844
    beqz	$v0,.L0f0fc038
    ld	$ra,104($sp)
    ld	$at,88($sp)
    # Line 1180
    sw	$s0,11836($at)
    b	.L0f0fbc6c
    ld	$s0,96($sp)
.L0f0fbdd8:
    # Line 1187
    la	$t9,sub_0f100000
    move	$a0,$s0
    sd	$ra,104($sp)
    addiu	$t9,$t9,-15604
    bal gl_n_pixmode
    addiu	$a1,$a5,11840
    beqz	$v0,.L0f0fc054
    ld	$ra,104($sp)
    ld	$at,88($sp)
    # Line 1193
    sw	$s0,11832($at)
    b	.L0f0fbc6c
    ld	$s0,96($sp)
.L0f0fbe08:
    # Line 1201
    la	$t9,sub_0f100000
    move	$a0,$s0
    sd	$ra,104($sp)
    addiu	$t9,$t9,-15736
    bal gl_n_pixmode
    addiu	$a1,$a5,11860
    beqz	$v0,.L0f0fc070
    ld	$ra,104($sp)
    ld	$at,88($sp)
    # Line 1207
    sw	$s0,11852($at)
    b	.L0f0fbc6c
    ld	$s0,96($sp)
.L0f0fbe38:
    # Line 1215
    la	$t9,sub_0f100000
    move	$a0,$s0
    sd	$ra,104($sp)
    addiu	$t9,$t9,-15604
    bal gl_n_pixmode
    addiu	$a1,$a5,11856
    beqz	$v0,.L0f0fc08c
    ld	$ra,104($sp)
    ld	$at,88($sp)
    # Line 1221
    sw	$s0,11848($at)
    b	.L0f0fbc6c
    ld	$s0,96($sp)
.L0f0fbe68:
    # Line 1230
    # la	a2,sub_0f020000
    sll	$a0,$s0,0x2
    la	$a2,jtbl_0f024e60
    beqz	$at,.L0f0fbf60
    addu	$a0,$a0,$a2
    lw	$at,0($a0)
    jr	$at
    nop
.L0f0fbe88:
    # Line 1261
    slti	$v0,$s0,33
    beqz	$v0,.L0f0fbffc
    # Line 1267
    move	$a3,$s0
    # Line 1261
    bltz	$s0,.L0f0fbffc
    # Line 1267
    move	$a3,$s0
    # Line 1263
    sw	$s0,11824($a5)
    b	.L0f0fbc6c
    ld	$s0,96($sp)
.L0f0fbea8:
    # Line 1278
    bltz	$s0,.L0f0fc0a8
    # Line 1284
    move	$a3,$s0
    # Line 1280
    sw	$s0,11828($a5)
    b	.L0f0fbc6c
    ld	$s0,96($sp)
.L0f0fbebc:
    # Line 1299
    beqz	$s0,.L0f0fc12c
    li	$v1,1
    beq	$s0,$v1,.L0f0fbfdc
    # Line 1308
    move	$a3,$s0
    addiu	$a2,$gp,-14568
    addiu	$a0,$sp,0
    la	$t9,sprintf
    la	$a1,sub_0f020000
    sd	$ra,104($sp)
    jalr	$t9
    addiu	$a1,$a1,20440
    # Line 1310
    addiu	$a2,$sp,0
    la	$t9,gl_ErrorHandler
    li	$a1,2
    li	$a0,98
    jalr	$t9
    ld	$s0,96($sp)
    b	.L0f0fbc6c
    ld	$ra,104($sp)
.L0f0fbf08:
    # Line 1067
    sw	$s0,11804($a5)
    # Line 1068
    b	.L0f0fbc6c
    ld	$s0,96($sp)
.L0f0fbf14:
    # Line 1239
    sw	$s0,11820($a5)
    # Line 1240
    b	.L0f0fbc6c
    ld	$s0,96($sp)
.L0f0fbf20:
    # Line 1070
    move	$a3,$s0
    addiu	$a2,$gp,-14568
    addiu	$a0,$sp,0
    la	$t9,sprintf
    la	$a1,sub_0f020000
    sd	$ra,104($sp)
    jalr	$t9
    addiu	$a1,$a1,19760
    # Line 1072
    addiu	$a2,$sp,0
    la	$t9,gl_ErrorHandler
    li	$a1,2
    li	$a0,98
    jalr	$t9
    ld	$s0,96($sp)
    b	.L0f0fbc6c
    ld	$ra,104($sp)
.L0f0fbf60:
    # Line 1242
    move	$a3,$s0
    addiu	$a2,$gp,-14568
    addiu	$a0,$sp,0
    la	$t9,sprintf
    la	$a1,sub_0f020000
    sd	$ra,104($sp)
    jalr	$t9
    addiu	$a1,$a1,20328
    # Line 1244
    addiu	$a2,$sp,0
    la	$t9,gl_ErrorHandler
    li	$a1,2
    li	$a0,98
    jalr	$t9
    ld	$s0,96($sp)
    b	.L0f0fbc6c
    ld	$ra,104($sp)
.L0f0fbfa0:
    # Line 1090
    lw	$a2,11800($a5)
    ld	$s0,96($sp)
    ori	$a2,$a2,0x1
    # Line 1091
    b	.L0f0fbc6c
    # Line 1090
    sw	$a2,11800($a5)
.L0f0fbfb4:
    # Line 1136
    lw	$s0,11800($a5)
    ori	$s0,$s0,0x2
    sw	$s0,11800($a5)
    # Line 1137
    b	.L0f0fbc6c
    ld	$s0,96($sp)
.L0f0fbfc8:
    # Line 1160
    lw	$at,11800($a5)
    ld	$s0,96($sp)
    ori	$at,$at,0x4
    # Line 1161
    b	.L0f0fbc6c
    # Line 1160
    sw	$at,11800($a5)
.L0f0fbfdc:
    # Line 1305
    lw	$v0,11800($a5)
    ld	$s0,96($sp)
    ori	$v0,$v0,0x8
    # Line 1306
    b	.L0f0fbc6c
    # Line 1305
    sw	$v0,11800($a5)
.L0f0fbff0:
    b	.L0f0fbc7c
    # Line 1058
    negu	$a0,$s0
    # Line 1267
    move	$a3,$s0
.L0f0fbffc:
    addiu	$a2,$gp,-14568
    addiu	$a0,$sp,0
    la	$t9,sprintf
    la	$a1,sub_0f020000
    sd	$ra,104($sp)
    jalr	$t9
    addiu	$a1,$a1,20360
    # Line 1269
    addiu	$a2,$sp,0
    la	$t9,gl_ErrorHandler
    li	$a1,2
    li	$a0,98
    jalr	$t9
    ld	$s0,96($sp)
    b	.L0f0fbc6c
    ld	$ra,104($sp)
.L0f0fc038:
    # Line 1176
    la	$t9,perror
    la	$a0,sub_0f020000
    ld	$s0,96($sp)
    jalr	$t9
    addiu	$a0,$a0,19896
    b	.L0f0fbc6c
    ld	$ra,104($sp)
.L0f0fc054:
    # Line 1189
    la	$t9,perror
    la	$a0,sub_0f020000
    ld	$s0,96($sp)
    jalr	$t9
    addiu	$a0,$a0,19936
    b	.L0f0fbc6c
    ld	$ra,104($sp)
.L0f0fc070:
    # Line 1203
    la	$t9,perror
    la	$a0,sub_0f020000
    ld	$s0,96($sp)
    jalr	$t9
    addiu	$a0,$a0,19976
    b	.L0f0fbc6c
    ld	$ra,104($sp)
.L0f0fc08c:
    # Line 1217
    la	$t9,perror
    la	$a0,sub_0f020000
    ld	$s0,96($sp)
    jalr	$t9
    addiu	$a0,$a0,20024
    b	.L0f0fbc6c
    ld	$ra,104($sp)
.L0f0fc0a8:
    # Line 1284
    addiu	$a2,$gp,-14568
    addiu	$a0,$sp,0
    la	$t9,sprintf
    la	$a1,sub_0f020000
    sd	$ra,104($sp)
    jalr	$t9
    addiu	$a1,$a1,20400
    # Line 1286
    addiu	$a2,$sp,0
    la	$t9,gl_ErrorHandler
    li	$a1,2
    li	$a0,98
    jalr	$t9
    ld	$s0,96($sp)
    b	.L0f0fbc6c
    ld	$ra,104($sp)
.L0f0fc0e4:
    # Line 1087
    lw	$a2,11800($a5)
    li	$s0,-2
    and	$a2,$a2,$s0
    ld	$s0,96($sp)
    # Line 1088
    b	.L0f0fbc6c
    # Line 1087
    sw	$a2,11800($a5)
.L0f0fc0fc:
    # Line 1133
    lw	$at,11800($a5)
    ld	$s0,96($sp)
    li	$v0,-3
    and	$at,$at,$v0
    # Line 1134
    b	.L0f0fbc6c
    # Line 1133
    sw	$at,11800($a5)
.L0f0fc114:
    # Line 1157
    lw	$v1,11800($a5)
    ld	$s0,96($sp)
    li	$a2,-5
    and	$v1,$v1,$a2
    # Line 1158
    b	.L0f0fbc6c
    # Line 1157
    sw	$v1,11800($a5)
.L0f0fc12c:
    # Line 1302
    lw	$s0,11800($a5)
    li	$at,-9
    and	$s0,$s0,$at
    sw	$s0,11800($a5)
    # Line 1303
    b	.L0f0fbc6c
    ld	$s0,96($sp)
.end gl_pixmode

# Function: gl_i_pixmode
# Declared: Line 1324 (Source lines: 1324-1324)
# Address: 0x0f0fc144 - 0x0f0fc1a0 (Size: 92 bytes, Frame: 48)
.globl gl_i_pixmode
.ent gl_i_pixmode
gl_i_pixmode:
    # Line 1324
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,28932 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    beqz	$at,.L0f0fc180
    sd	$ra,24($sp)
    la	$t9,__iglooNCloseMoveDraw
    sd	$a1,16($sp)
    jalr	$t9
    sd	$a0,8($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
.L0f0fc180:
    la	$t9,sub_0f100000
    addiu	$t9,$t9,-17424
    bal gl_g_rectcopy
    nop
    ld	$ra,24($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_pixmode

# Function: gl_c_pixmode
# Declared: Line 1324 (Source lines: 1324-1324)
# Address: 0x0f0fc1a0 - 0x0f0fc224 (Size: 132 bytes, Frame: 192)
.globl gl_c_pixmode
.ent gl_c_pixmode
gl_c_pixmode:
    move	$a3,$a1
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,28840 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20500($gp)
    sd	$ra,32($sp)
    sd	$s8,16($sp)
    beqz	$at,.L0f0fc200
    move	$s8,$a0
.L0f0fc1cc:
    addiu	$a1,$sp,0
    li	$a0,6
    sw	$a3,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_pixmode
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0fc200:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    sd	$a3,40($sp)
    jalr	$t9
    addiu	$a0,$a0,-25176
    ld	$a3,40($sp)
    li	$a2,1
    b	.L0f0fc1cc
    sw	$a2,-20500($gp)
.end gl_c_pixmode

# Function: gl_n_pixmode
# Declared: Line 1324 (Source lines: 1324-1324)
# Address: 0x0f0fc224 - 0x0f0fc288 (Size: 100 bytes, Frame: 48)
.globl gl_n_pixmode
.ent gl_n_pixmode
gl_n_pixmode:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,28708 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f0fc25c
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0fc25c:
    la	$t9,sub_0f100000
    lw	$a1,4($s8)
    addiu	$t9,$t9,-17424
    bal gl_g_rectcopy
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_pixmode

# Function: iglToOglFormat
# Declared: Line 1326 (Source lines: 1328-1357)
# Address: 0x0f0fc288 - 0x0f0fc30c (Size: 132 bytes, Frame: 0)
.ent iglToOglFormat
iglToOglFormat:
    # Line 1328
    li	$v0,1
    # la	v1,sub_0f020000
    sll	$a4,$a0,0x2
    sltiu	$at,$a0,7
    la	$v1,jtbl_0f025010
    beqz	$at,.L0f0fc2b4
    addu	$a4,$a4,$v1
    lw	$a0,0($a4)
    # Line 1348
    li	$at,6410
    # Line 1328
    jr	$a0
    # Line 1351
    li	$v1,6406
.L0f0fc2b4:
    # Line 1354
    move	$v0,$zero
    # Line 1357
    jr	$ra
    nop
.L0f0fc2c0:
    # Line 1333
    li	$a2,0x8000
    # Line 1357
    jr	$ra
    # Line 1333
    sw	$a2,0($a1)
.L0f0fc2cc:
    # Line 1336
    li	$at,6407
    # Line 1357
    jr	$ra
    # Line 1336
    sw	$at,0($a1)
.L0f0fc2d8:
    # Line 1339
    li	$v1,6408
    # Line 1357
    jr	$ra
    # Line 1339
    sw	$v1,0($a1)
.L0f0fc2e4:
    # Line 1342
    li	$a0,6407
    # Line 1357
    jr	$ra
    # Line 1342
    sw	$a0,0($a1)
.L0f0fc2f0:
    # Line 1345
    li	$a2,6409
    # Line 1357
    jr	$ra
    # Line 1345
    sw	$a2,0($a1)
.L0f0fc2fc:
    # Line 1357
    jr	$ra
    # Line 1348
    sw	$at,0($a1)
.L0f0fc304:
    # Line 1357
    jr	$ra
    # Line 1351
    sw	$v1,0($a1)
.end iglToOglFormat

# Function: iglToOglType
# Declared: Line 1361 (Source lines: 1363-1398)
# Address: 0x0f0fc30c - 0x0f0fc39c (Size: 144 bytes, Frame: 0)
.ent iglToOglType
iglToOglType:
    # Line 1363
    li	$v0,1
    # la	v1,sub_0f020000
    sll	$a4,$a0,0x2
    sltiu	$at,$a0,10
    la	$v1,jtbl_0f025030
    beqz	$at,.L0f0fc338
    addu	$a4,$a4,$v1
    lw	$a0,0($a4)
    # Line 1383
    li	$at,5124
    # Line 1363
    jr	$a0
    # Line 1386
    li	$v1,5125
.L0f0fc338:
    # Line 1395
    move	$v0,$zero
    # Line 1398
    jr	$ra
    nop
.L0f0fc344:
    # Line 1368
    li	$a2,6656
    # Line 1398
    jr	$ra
    # Line 1368
    sw	$a2,0($a1)
.L0f0fc350:
    # Line 1371
    li	$at,5120
    # Line 1398
    jr	$ra
    # Line 1371
    sw	$at,0($a1)
.L0f0fc35c:
    # Line 1374
    li	$v1,5121
    # Line 1398
    jr	$ra
    # Line 1374
    sw	$v1,0($a1)
.L0f0fc368:
    # Line 1377
    li	$a0,5122
    # Line 1398
    jr	$ra
    # Line 1377
    sw	$a0,0($a1)
.L0f0fc374:
    # Line 1380
    li	$a2,5123
    # Line 1398
    jr	$ra
    # Line 1380
    sw	$a2,0($a1)
.L0f0fc380:
    # Line 1398
    jr	$ra
    # Line 1383
    sw	$at,0($a1)
.L0f0fc388:
    # Line 1398
    jr	$ra
    # Line 1386
    sw	$v1,0($a1)
.L0f0fc390:
    # Line 1389
    li	$a0,5126
    # Line 1398
    jr	$ra
    # Line 1389
    sw	$a0,0($a1)
.end iglToOglType

# Function: gl_i_pixmodef
# Declared: Line 1403 (Source lines: 1403-1403)
# Address: 0x0f0fc39c - 0x0f0fc404 (Size: 104 bytes, Frame: 48)
.globl gl_i_pixmodef
.ent gl_i_pixmodef
gl_i_pixmodef:
    # Line 1403
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,28332 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    mov.s	$f4,$f13
    beqz	$at,.L0f0fc3dc
    sd	$ra,24($sp)
    la	$t9,__iglooNCloseMoveDraw
    sd	$a0,16($sp)
    jalr	$t9
    sdc1	$f4,8($sp)
    ldc1	$f4,8($sp)
    ld	$a0,16($sp)
.L0f0fc3dc:
    trunc.w.s	$f0,$f4
    la	$t9,sub_0f100000
    addiu	$t9,$t9,-17424
    mfc1	$a1,$f0
    bal gl_g_rectcopy
    nop
    ld	$ra,24($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_i_pixmodef

# Function: gl_c_pixmodef
# Declared: Line 1403 (Source lines: 1403-1403)
# Address: 0x0f0fc404 - 0x0f0fc488 (Size: 132 bytes, Frame: 192)
.globl gl_c_pixmodef
.ent gl_c_pixmodef
gl_c_pixmodef:
    addiu	$sp,$sp,-64
    sd	$ra,40($sp)
    sdc1	$f30,16($sp)
    sd	$gp,32($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,28228 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    lw	$at,-20496($gp)
    mov.s	$f30,$f13
    sd	$s8,24($sp)
    beqz	$at,.L0f0fc46c
    move	$s8,$a0
.L0f0fc434:
    addiu	$a1,$sp,0
    li	$a0,6
    swc1	$f30,8($sp)
    la	$t9,gl_compile
    la	$v1,gl_n_pixmodef
    sw	$s8,4($sp)
    jalr	$t9
    sw	$v1,0($sp)
    ld	$gp,32($sp)
    ld	$ra,40($sp)
    ld	$s8,24($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f0fc46c:
    la	$t9,gl_intrptab_insert
    la	$a0,sub_0f030000
    jalr	$t9
    addiu	$a0,$a0,-25160
    li	$a1,1
    b	.L0f0fc434
    sw	$a1,-20496($gp)
.end gl_c_pixmodef

# Function: gl_n_pixmodef
# Declared: Line 1403 (Source lines: 1403-1403)
# Address: 0x0f0fc488 - 0x0f0fc4f4 (Size: 108 bytes, Frame: 48)
.globl gl_n_pixmodef
.ent gl_n_pixmodef
gl_n_pixmodef:
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff3 (gp disp hi)
    # addiu	v0,v0,28096 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,gl_inMoveDraw
    lw	$at,0($at)
    sd	$ra,16($sp)
    sd	$s8,0($sp)
    beqz	$at,.L0f0fc4c0
    move	$s8,$a0
    la	$t9,__iglooNCloseMoveDraw
    jalr	$t9
    nop
.L0f0fc4c0:
    lwc1	$f0,4($s8)
    la	$t9,sub_0f100000
    trunc.w.s	$f0,$f0
    addiu	$t9,$t9,-17424
    mfc1	$a1,$f0
    bal gl_g_rectcopy
    lw	$a0,0($s8)
    ld	$ra,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_n_pixmodef

# Function: gl_g_readsource
# Declared: Line 1443 (Source lines: 1444-1524)
# Address: 0x0f0fc4f4 - 0x0f0fc668 (Size: 372 bytes, Frame: 48)
.globl gl_g_readsource
.ent gl_g_readsource
gl_g_readsource:
    # Line 1444
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$a3,0xfff3
    addiu	$a3,$a3,27988
    addu	$gp,$t9,$a3
    # Line 1473
    la	$a2,gl_wstatep
    # Line 1486
    li	$v1,8
    # Line 1473
    lw	$a2,0($a2)
    # Line 1486
    li	$a1,9
    # Line 1489
    li	$v0,16
    # Line 1473
    lw	$a2,276($a2)
    # Line 1479
    li	$a5,2
    sd	$s7,8($sp)
    # Line 1473
    lw	$s7,60($a2)
    sd	$s5,16($sp)
    # Line 1444
    move	$s5,$a0
    # Line 1475
    lw	$a3,8($s7)
    li	$a4,1
    # Line 1474
    lw	$a2,56($a2)
    # Line 1475
    xor	$a3,$a3,$a4
    beqz	$a0,.L0f0fc590
    sltiu	$a3,$a3,1
    # Line 1486
    beq	$s5,$a4,.L0f0fc5a4
    # Line 1483
    move	$a0,$s5
.L0f0fc554:
    # Line 1486
    li	$at,2
    beq	$a0,$at,.L0f0fc5c8
    li	$v0,3
    beql	$a0,$v0,.L0f0fc5f0
    # Line 1509
    li	$a1,16
    # Line 1486
    beq	$a0,$v1,.L0f0fc654
    # Line 1515
    la	$t9,__iglooReadBuffer
    # Line 1486
    beq	$a0,$a1,.L0f0fc638
    # Line 1518
    la	$t9,__iglooReadBuffer
.L0f0fc578:
    ld	$gp,0($sp)
    # Line 1523
    sw	$s5,48($s7)
    # Line 1524
    ld	$s5,16($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0fc590:
    # Line 1475
    lw	$at,0($s7)
    beq	$at,$a4,.L0f0fc64c
    nop
.L0f0fc59c:
    # Line 1486
    bne	$a5,$a4,.L0f0fc554
    # Line 1479
    move	$a0,$a5
.L0f0fc5a4:
    # Line 1489
    bne	$a2,$v0,.L0f0fc60c
    # Line 1495
    la	$t9,__iglooReadBuffer
    # Line 1489
    beqz	$a3,.L0f0fc608
    sd	$ra,24($sp)
    # Line 1491
    la	$t9,__iglooReadBuffer
    jalr	$t9
    li	$a0,1024
    b	.L0f0fc578
    ld	$ra,24($sp)
.L0f0fc5c8:
    # Line 1499
    li	$v1,16
    bne	$a2,$v1,.L0f0fc624
    # Line 1505
    la	$t9,__iglooReadBuffer
    # Line 1499
    beqz	$a3,.L0f0fc620
    sd	$ra,24($sp)
    # Line 1501
    la	$t9,__iglooReadBuffer
    jalr	$t9
    li	$a0,1026
    b	.L0f0fc578
    ld	$ra,24($sp)
.L0f0fc5f0:
    # Line 1509
    beq	$a2,$a1,.L0f0fc578
    ld	$gp,0($sp)
    # Line 1511
    ld	$s5,16($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0fc608:
    # Line 1495
    la	$t9,__iglooReadBuffer
.L0f0fc60c:
    sd	$ra,24($sp)
    jalr	$t9
    li	$a0,1028
    b	.L0f0fc578
    ld	$ra,24($sp)
.L0f0fc620:
    # Line 1505
    la	$t9,__iglooReadBuffer
.L0f0fc624:
    sd	$ra,24($sp)
    jalr	$t9
    li	$a0,1029
    b	.L0f0fc578
    ld	$ra,24($sp)
.L0f0fc638:
    sd	$ra,24($sp)
    # Line 1518
    jalr	$t9
    li	$a0,1027
    b	.L0f0fc578
    ld	$ra,24($sp)
.L0f0fc64c:
    # Line 1479
    b	.L0f0fc59c
    li	$a5,1
.L0f0fc654:
    sd	$ra,24($sp)
    # Line 1515
    jalr	$t9
    li	$a0,1025
    b	.L0f0fc578
    ld	$ra,24($sp)
.end gl_g_readsource

# Function: __iglooBeginPixelOperation
# Declared: Line 1526 (Source lines: 1527-1597)
# Address: 0x0f0fc668 - 0x0f0fc7e4 (Size: 380 bytes, Frame: 192)
.ent __iglooBeginPixelOperation
__iglooBeginPixelOperation:
    # Line 1527
    li	$v0,6402
    addiu	$sp,$sp,-64
    sd	$s3,16($sp)
    lw	$at,32($a0)
    move	$s3,$a0
    sd	$s0,24($sp)
    bne	$at,$v0,.L0f0fc770
    addiu	$s0,$a0,56
    # Line 1532
    la	$a2,gl_wstatep
    # Line 1536
    lw	$a3,4100($zero)
    # Line 1532
    lw	$a2,0($a2)
    # Line 1536
    lw	$a3,20($a3)
    # Line 1535
    lw	$a0,276($a2)
    # Line 1536
    lbu	$a3,19($a3)
    # Line 1535
    lw	$a0,60($a0)
    # Line 1536
    sb	$a3,72($s3)
    lhu	$v1,52($a0)
    andi	$v1,$v1,0x3
    beqzl	$v1,.L0f0fc79c
    sd	$a2,0($sp)
    sd	$ra,32($sp)
    sd	$a0,8($sp)
    sd	$a2,0($sp)
    # Line 1549
    beqz	$a3,.L0f0fc7c4
    sb	$zero,60($s3)
    # Line 1554
    move	$a0,$zero
.L0f0fc6d0:
    la	$t9,__iglooColorMask
    move	$a1,$zero
    move	$a2,$zero
    jalr	$t9
    move	$a3,$zero
    ld	$at,8($sp)
    # Line 1556
    lbu	$a1,72($at)
    sb	$a1,61($s3)
    # Line 1557
    lbu	$v1,73($at)
    sb	$v1,62($s3)
    # Line 1558
    lbu	$v0,74($at)
    sb	$v0,63($s3)
    # Line 1559
    lbu	$at,75($at)
    li	$a0,1
    sb	$at,64($s3)
.L0f0fc70c:
    # Line 1565
    lbu	$at,81($s3)
    bne	$at,$a0,.L0f0fc734
    # Line 1583
    la	$t9,__iglooGetAndSetEnable
    # Line 1573
    la	$t9,__iglooGetAndSetEnable
    move	$a2,$s0
    move	$a1,$zero
    jalr	$t9
    li	$a0,4061
    b	.L0f0fc748
    ld	$s0,24($sp)
.L0f0fc734:
    # Line 1583
    move	$a2,$s0
    li	$a1,2
    jalr	$t9
    li	$a0,4063
    ld	$s0,24($sp)
.L0f0fc748:
    # Line 1587
    ld	$v0,0($sp)
    # Line 1591
    la	$t9,zfunction
    # Line 1587
    lw	$v0,2840($v0)
    # Line 1591
    li	$a0,7
    jalr	$t9
    # Line 1587
    sw	$v0,76($s3)
    ld	$s3,16($sp)
    ld	$ra,32($sp)
    b	.L0f0fc794
    nop
.L0f0fc770:
    # Line 1595
    move	$a2,$s0
    move	$a1,$zero
    la	$t9,__iglooGetAndSetEnable
    li	$a0,4063
    sd	$ra,32($sp)
    jalr	$t9
    ld	$s3,16($sp)
    ld	$ra,32($sp)
    ld	$s0,24($sp)
.L0f0fc794:
    # Line 1597
    jr	$ra
    addiu	$sp,$sp,64
.L0f0fc79c:
    sd	$a0,8($sp)
    # Line 1545
    li	$a0,1028
    la	$t9,__iglooDrawBuffer
    sd	$ra,32($sp)
    li	$v1,1
    jalr	$t9
    # Line 1544
    sb	$v1,60($s3)
    # Line 1545
    lbu	$a3,72($s3)
    # Line 1549
    bnez	$a3,.L0f0fc6d0
    # Line 1554
    move	$a0,$zero
.L0f0fc7c4:
    # Line 1563
    la	$t9,__iglooIndexMask
    jalr	$t9
    move	$a0,$zero
    ld	$a1,8($sp)
    # Line 1565
    lw	$a1,76($a1)
    li	$a0,1
    b	.L0f0fc70c
    sw	$a1,68($s3)
.end __iglooBeginPixelOperation

# Function: __iglooEndPixelOperation
# Declared: Line 1599 (Source lines: 1600-1640)
# Address: 0x0f0fc7e4 - 0x0f0fc8cc (Size: 232 bytes, Frame: 32)
.ent __iglooEndPixelOperation
__iglooEndPixelOperation:
    # Line 1600
    li	$v0,6402
    addiu	$sp,$sp,-32
    lw	$at,32($a0)
    sd	$ra,8($sp)
    sd	$s0,0($sp)
    bne	$at,$v0,.L0f0fc86c
    move	$s0,$a0
    # Line 1605
    la	$t9,zfunction
    jalr	$t9
    lw	$a0,76($s0)
    lbu	$v1,81($s0)
    li	$a1,1
    beq	$v1,$a1,.L0f0fc890
    lw	$a2,56($s0)
    # Line 1619
    la	$t9,__iglooSetSavedEnable
    li	$a1,2
    jalr	$t9
    li	$a0,4063
.L0f0fc82c:
    lbu	$at,60($s0)
    li	$v0,1
    beq	$at,$v0,.L0f0fc8bc
    # Line 1624
    la	$t9,__iglooDrawBuffer
    lbu	$v1,72($s0)
.L0f0fc840:
    beqz	$v1,.L0f0fc8a8
    # Line 1633
    la	$t9,__iglooIndexMask
    # Line 1628
    lbu	$a3,64($s0)
    la	$t9,__iglooColorMask
    lbu	$a2,63($s0)
    lbu	$a1,62($s0)
    jalr	$t9
    lbu	$a0,61($s0)
    ld	$ra,8($sp)
    b	.L0f0fc888
    ld	$s0,0($sp)
.L0f0fc86c:
    # Line 1638
    la	$t9,__iglooSetSavedEnable
    lw	$a2,56($s0)
    move	$a1,$zero
    jalr	$t9
    li	$a0,4063
    ld	$ra,8($sp)
    ld	$s0,0($sp)
.L0f0fc888:
    # Line 1640
    jr	$ra
    addiu	$sp,$sp,32
.L0f0fc890:
    # Line 1612
    la	$t9,__iglooSetSavedEnable
    move	$a1,$zero
    jalr	$t9
    li	$a0,4061
    b	.L0f0fc82c
    nop
.L0f0fc8a8:
    # Line 1633
    jalr	$t9
    lw	$a0,68($s0)
    ld	$ra,8($sp)
    b	.L0f0fc888
    ld	$s0,0($sp)
.L0f0fc8bc:
    # Line 1624
    jalr	$t9
    move	$a0,$zero
    b	.L0f0fc840
    lbu	$v1,72($s0)
.end __iglooEndPixelOperation

# Function: __iglooSetPixelFormat
# Declared: Line 1647 (Source lines: 1649-1968)
# Address: 0x0f0fc8cc - 0x0f0fcef4 (Size: 1576 bytes, Frame: 128)
.ent __iglooSetPixelFormat
__iglooSetPixelFormat:
    # Line 1649
    addiu	$sp,$sp,-384
    sd	$s5,336($sp)
    sd	$s1,304($sp)
    move	$s1,$a1
    sd	$s2,320($sp)
    move	$s2,$a2
    sd	$s0,312($sp)
    move	$s0,$a0
    # Line 1660
    lw	$at,4100($zero)
    # Line 1662
    li	$a0,21
    sd	$s3,272($sp)
    # Line 1660
    lw	$at,20($at)
    # Line 1661
    move	$s3,$zero
    # Line 1662
    la	$t9,__iglooIsExtensionSupported
    # Line 1660
    lw	$at,16($at)
    sd	$ra,288($sp)
    # Line 1662
    jalr	$t9
    sd	$at,264($sp)
    # Line 1664
    lw	$a1,11824($s0)
    move	$s5,$zero
    beqz	$a1,.L0f0fc938
    # Line 1662
    andi	$a0,$v0,0xff
    # Line 1664
    lw	$v1,11820($s0)
    div	$zero,$a1,$v1
    mfhi	$a3
    beqz	$a3,.L0f0fcc60
    teq	$v1,$zero,0x7
.L0f0fc938:
    # Line 1675
    sb	$zero,50($s1)
    # Line 1674
    sb	$zero,49($s1)
    # Line 1673
    sb	$zero,48($s1)
    # Line 1672
    sb	$zero,81($s1)
    # Line 1671
    sw	$s2,28($s1)
    # Line 1676
    lw	$v1,12112($s0)
    lw	$v0,11804($s0)
    addu	$v0,$v0,$v1
    sw	$v0,52($s1)
    lw	$a4,11824($s0)
    beqz	$a4,.L0f0fc970
    # Line 1685
    li	$a1,1
    # Line 1676
    beqzl	$s5,.L0f0fcc84
    # Line 1683
    li	$a1,1
.L0f0fc970:
    # Line 1685
    beql	$a1,$s2,.L0f0fcb8c
    # Line 1691
    lw	$at,11816($s0)
    # Line 1685
    beqzl	$s2,.L0f0fcb8c
    # Line 1691
    lw	$at,11816($s0)
.L0f0fc980:
    # Line 1685
    lw	$v0,276($s0)
.L0f0fc984:
    # Line 1789
    li	$a3,3314
    # Line 1685
    beqz	$s2,.L0f0fcc3c
    lw	$v0,60($v0)
    # Line 1776
    lhu	$v1,52($v0)
    andi	$v1,$v1,0x4
    beqzl	$v1,.L0f0fcc68
    # Line 1782
    lw	$v1,11800($s0)
    sd	$s4,344($sp)
    li	$s3,1
.L0f0fc9a8:
    sd	$s4,344($sp)
.L0f0fc9ac:
    # Line 1790
    li	$s4,3317
    sd	$a3,328($sp)
.L0f0fc9b4:
    # Line 1793
    la	$t9,__iglooPixelStorei
    move	$a0,$s4
    jalr	$t9
    li	$a1,4
    beqz	$s3,.L0f0fcbac
    # Line 1798
    li	$a4,5125
    ld	$s2,320($sp)
    ld	$s3,272($sp)
    sw	$a4,36($s1)
    # Line 1797
    li	$a0,6402
    sw	$a0,32($s1)
.L0f0fc9e0:
    # Line 1908
    la	$t9,sub_0f100000
    addiu	$t9,$t9,-12556
    bal gl_g_readsource
    nop
    # Line 1909
    la	$t9,sub_0f100000
    lw	$a0,36($s1)
    addiu	$t9,$t9,-12480
    bal gl_g_readsource
    # Line 1908
    sw	$v0,40($s1)
    # Line 1909
    lbu	$at,49($s1)
    bnez	$at,.L0f0fcacc
    swc1	$f0,44($s1)
    lw	$v0,11828($s0)
    beqz	$v0,.L0f0fcafc
    nop
    # Line 1926
    lw	$a1,40($s1)
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f0,$f1,$f0
    trunc.w.s	$f0,$f0
    mfc1	$v1,$f0
    sll	$a0,$v0,0x2
    div	$zero,$a0,$v1
    ld	$s5,336($sp)
    # Line 1929
    la	$t9,__iglooPixelStorei
    ld	$a0,328($sp)
    # Line 1926
    teq	$v1,$zero,0x7
    mflo	$a1
    # Line 1929
    jalr	$t9
    sd	$a1,296($sp)
    ld	$a4,296($sp)
    # Line 1935
    sra	$ra,$a4,0x1f
    xor	$a3,$a4,$ra
    sra	$a4,$a4,0x1f
    subu	$a3,$a3,$ra
    andi	$a3,$a3,0x3
    xor	$a3,$a3,$a4
    lw	$ra,11824($s0)
    subu	$a3,$a3,$a4
    lw	$a4,16($s1)
    sra	$s0,$ra,0x2
    srl	$s0,$s0,0x1d
    addu	$s0,$s0,$ra
    ld	$ra,288($sp)
    sra	$s0,$s0,0x3
    addu	$a4,$a4,$s0
    ld	$s0,312($sp)
    sw	$a4,16($s1)
    beqz	$a3,.L0f0fcaf0
    ld	$s1,304($sp)
    # Line 1939
    move	$a0,$s4
    la	$t9,__iglooPixelStorei
    li	$a1,1
    ld	$s1,304($sp)
    jalr	$t9
    ld	$s0,312($sp)
    b	.L0f0fcaf0
    ld	$ra,288($sp)
.L0f0fcacc:
    ld	$a0,328($sp)
    # Line 1965
    move	$a1,$zero
    ld	$s1,304($sp)
    la	$t9,__iglooPixelStorei
    ld	$s5,336($sp)
    ld	$s0,312($sp)
    jalr	$t9
    ld	$s4,344($sp)
    ld	$ra,288($sp)
.L0f0fcaf0:
    # Line 1968
    ld	$s4,344($sp)
    jr	$ra
    addiu	$sp,$sp,384
.L0f0fcafc:
    # Line 1939
    beqz	$s5,.L0f0fcde8
    ld	$a0,328($sp)
    ld	$s5,336($sp)
    # Line 1949
    lw	$a3,11824($s0)
    # Line 1951
    la	$t9,__iglooPixelStorei
    # Line 1949
    lw	$a1,8($s1)
    sra	$a2,$a3,0x2
    srl	$a2,$a2,0x1d
    addu	$a2,$a2,$a3
    sra	$a2,$a2,0x3
    addu	$a1,$a1,$a2
    # Line 1951
    jalr	$t9
    sd	$a1,256($sp)
    ld	$ra,256($sp)
    lw	$s1,11820($s0)
    mult	$s1,$ra
    ld	$s1,304($sp)
    ld	$ra,288($sp)
    mflo	$a4
    sra	$s0,$a4,0x1f
    xor	$a3,$a4,$s0
    sra	$a4,$a4,0x1f
    subu	$a3,$a3,$s0
    andi	$a3,$a3,0x1f
    xor	$a3,$a3,$a4
    subu	$a3,$a3,$a4
    beqz	$a3,.L0f0fcaf0
    ld	$s0,312($sp)
    # Line 1955
    la	$t9,__iglooPixelStorei
    move	$a0,$s4
    li	$a1,1
    jalr	$t9
    ld	$s0,312($sp)
    b	.L0f0fcaf0
    ld	$ra,288($sp)
    # Line 1691
    lw	$at,11816($s0)
.L0f0fcb8c:
    beqz	$at,.L0f0fcc8c
    nop
    lw	$v1,11820($s0)
.L0f0fcb98:
    li	$a3,64
    beql	$v1,$a3,.L0f0fc984
    # Line 1685
    lw	$v0,276($s0)
    # Line 1701
    b	.L0f0fc980
    sb	$a1,49($s1)
.L0f0fcbac:
    ld	$a4,264($sp)
    # Line 1798
    beqz	$a4,.L0f0fcd34
    ld	$s3,272($sp)
    beqz	$s2,.L0f0fcd04
.L0f0fcbbc:
    move	$v1,$s2
    li	$at,1
    # Line 1809
    beq	$at,$v1,.L0f0fcdac
    ld	$s2,320($sp)
.L0f0fcbcc:
    # Line 1816
    lbu	$a3,49($s1)
    li	$a4,1
    beq	$a3,$a4,.L0f0fce10
    # Line 1828
    li	$a0,0x8000
    # Line 1832
    lw	$a2,11820($s0)
    li	$at,1
    beq	$a2,$at,.L0f0fce20
    move	$v0,$a2
    li	$v1,8
    beq	$v0,$v1,.L0f0fce34
    li	$a3,24
    beq	$v0,$a3,.L0f0fce48
    li	$a4,32
    beq	$v0,$a4,.L0f0fce64
    li	$at,64
    beq	$v0,$at,.L0f0fcdd4
    # Line 1856
    la	$t9,sprintf
    la	$a1,sub_0f020000
    addiu	$a0,$sp,0
    jalr	$t9
    addiu	$a1,$a1,20568
    # Line 1857
    la	$t9,gl_ErrorHandler
    addiu	$a2,$sp,0
    li	$a1,2
    jalr	$t9
    li	$a0,110
    b	.L0f0fc9e0
    lw	$a0,32($s1)
.L0f0fcc3c:
    # Line 1685
    lw	$a3,48($v0)
    li	$a4,3
    beql	$a3,$a4,.L0f0fcd2c
    sd	$s4,344($sp)
.L0f0fcc4c:
    sd	$s4,344($sp)
    # Line 1776
    li	$s4,3333
    # Line 1775
    li	$at,3330
    # Line 1776
    b	.L0f0fc9b4
    sd	$at,328($sp)
.L0f0fcc60:
    b	.L0f0fc938
    # Line 1668
    li	$s5,1
.L0f0fcc68:
    # Line 1782
    andi	$v1,$v1,0x8
    beqzl	$v1,.L0f0fc9ac
    sd	$s4,344($sp)
    sd	$s4,344($sp)
    # Line 1787
    sb	$a1,81($s1)
    b	.L0f0fc9a8
    # Line 1786
    li	$s3,1
.L0f0fcc84:
    # Line 1683
    b	.L0f0fc980
    sb	$a1,49($s1)
.L0f0fcc8c:
    # Line 1691
    bnezl	$v0,.L0f0fcb98
    lw	$v1,11820($s0)
    lw	$a3,11800($s0)
    andi	$a3,$a3,0x1
    bnezl	$a3,.L0f0fcb98
    lw	$v1,11820($s0)
    # Line 1699
    lw	$a4,11820($s0)
    li	$at,24
    bne	$a4,$at,.L0f0fc980
    sd	$a0,280($sp)
    # Line 1709
    la	$t9,__iglooGetGraphicsType
    jalr	$t9
    nop
    beqz	$s2,.L0f0fcec0
    li	$a1,1
    # Line 1710
    ld	$v1,264($sp)
    beqz	$v1,.L0f0fcecc
    lw	$a0,11836($s0)
.L0f0fccd4:
    ld	$a3,280($sp)
    # Line 1720
    beqz	$a3,.L0f0fced4
    li	$a2,3
    beqz	$s2,.L0f0fcee4
    li	$a2,3
    li	$a4,4
.L0f0fccec:
    beq	$v0,$a4,.L0f0fced4
    nop
    # Line 1730
    beql	$a0,$a2,.L0f0fc984
    # Line 1685
    lw	$v0,276($s0)
    b	.L0f0fc980
    # Line 1749
    sb	$a1,50($s1)
.L0f0fcd04:
    # Line 1798
    lw	$v0,11860($s0)
    li	$at,0x8000
    beq	$v0,$at,.L0f0fcbbc
    # Line 1807
    move	$a0,$v0
    sw	$v0,32($s1)
    ld	$s2,320($sp)
    # Line 1808
    lw	$v1,11856($s0)
    # Line 1809
    sb	$zero,49($s1)
    b	.L0f0fc9e0
    # Line 1808
    sw	$v1,36($s1)
.L0f0fcd2c:
    b	.L0f0fcc4c
    # Line 1773
    li	$s3,1
.L0f0fcd34:
    ld	$s2,320($sp)
    # Line 1865
    lbu	$a3,49($s1)
    li	$a0,6400
    li	$a4,1
    beq	$a3,$a4,.L0f0fce84
    sw	$a0,32($s1)
    # Line 1878
    lw	$a2,11820($s0)
    li	$at,1
    beq	$a2,$at,.L0f0fce90
    move	$v0,$a2
    li	$v1,8
    beq	$v0,$v1,.L0f0fce9c
    li	$a3,16
    beq	$v0,$a3,.L0f0fcea8
    li	$a4,32
    beq	$v0,$a4,.L0f0fceb4
    li	$at,64
    beq	$v0,$at,.L0f0fce78
    # Line 1897
    la	$t9,sprintf
    la	$a1,sub_0f020000
    addiu	$a0,$sp,0
    jalr	$t9
    addiu	$a1,$a1,20568
    # Line 1898
    la	$t9,gl_ErrorHandler
    addiu	$a2,$sp,0
    li	$a1,2
    jalr	$t9
    li	$a0,110
    b	.L0f0fc9e0
    lw	$a0,32($s1)
.L0f0fcdac:
    # Line 1809
    lw	$v0,11844($s0)
    li	$a3,0x8000
    beq	$v0,$a3,.L0f0fcbcc
    ld	$s2,320($sp)
    # Line 1814
    sw	$v0,32($s1)
    move	$a0,$v0
    # Line 1815
    lw	$a4,11840($s0)
    # Line 1816
    sb	$zero,49($s1)
    b	.L0f0fc9e0
    # Line 1815
    sw	$a4,36($s1)
.L0f0fcdd4:
    # Line 1853
    li	$at,5123
    sw	$at,36($s1)
    # Line 1852
    li	$a0,0x8000
    # Line 1854
    b	.L0f0fc9e0
    # Line 1852
    sw	$a0,32($s1)
.L0f0fcde8:
    ld	$a0,328($sp)
    # Line 1960
    move	$a1,$zero
    ld	$s1,304($sp)
    la	$t9,__iglooPixelStorei
    ld	$s5,336($sp)
    ld	$s0,312($sp)
    jalr	$t9
    ld	$s4,344($sp)
    b	.L0f0fcaf0
    ld	$ra,288($sp)
.L0f0fce10:
    # Line 1828
    sw	$a0,32($s1)
    # Line 1827
    li	$v1,5121
    # Line 1828
    b	.L0f0fc9e0
    # Line 1827
    sw	$v1,36($s1)
.L0f0fce20:
    # Line 1836
    li	$a0,6656
    sw	$a0,36($s1)
    # Line 1835
    li	$a0,6403
    # Line 1837
    b	.L0f0fc9e0
    # Line 1835
    sw	$a0,32($s1)
.L0f0fce34:
    # Line 1840
    li	$a3,5121
    sw	$a3,36($s1)
    # Line 1839
    li	$a0,6403
    # Line 1841
    b	.L0f0fc9e0
    # Line 1839
    sw	$a0,32($s1)
.L0f0fce48:
    # Line 1843
    li	$a0,6407
    # Line 1844
    li	$a4,5121
    li	$at,1
    # Line 1845
    sb	$at,48($s1)
    # Line 1844
    sw	$a4,36($s1)
    # Line 1846
    b	.L0f0fc9e0
    # Line 1843
    sw	$a0,32($s1)
.L0f0fce64:
    # Line 1849
    li	$v1,5121
    sw	$v1,36($s1)
    # Line 1848
    li	$a0,0x8000
    # Line 1850
    b	.L0f0fc9e0
    # Line 1848
    sw	$a0,32($s1)
.L0f0fce78:
    # Line 1894
    li	$a3,5125
    # Line 1895
    b	.L0f0fc9e0
    # Line 1894
    sw	$a3,36($s1)
.L0f0fce84:
    # Line 1874
    li	$a4,5125
    b	.L0f0fc9e0
    sw	$a4,36($s1)
.L0f0fce90:
    # Line 1881
    li	$at,6656
    # Line 1882
    b	.L0f0fc9e0
    # Line 1881
    sw	$at,36($s1)
.L0f0fce9c:
    # Line 1884
    li	$v1,5121
    # Line 1885
    b	.L0f0fc9e0
    # Line 1884
    sw	$v1,36($s1)
.L0f0fcea8:
    # Line 1887
    li	$a3,5123
    # Line 1888
    b	.L0f0fc9e0
    # Line 1887
    sw	$a3,36($s1)
.L0f0fceb4:
    # Line 1890
    li	$a4,5125
    # Line 1891
    b	.L0f0fc9e0
    # Line 1890
    sw	$a4,36($s1)
.L0f0fcec0:
    # Line 1710
    ld	$at,264($sp)
    bnez	$at,.L0f0fccd4
    lw	$a0,11852($s0)
.L0f0fcecc:
    # Line 1718
    b	.L0f0fc980
    sb	$a1,49($s1)
.L0f0fced4:
    # Line 1720
    beql	$a0,$a2,.L0f0fc984
    # Line 1685
    lw	$v0,276($s0)
    # Line 1737
    b	.L0f0fc980
    sb	$a1,49($s1)
.L0f0fcee4:
    # Line 1720
    beq	$a2,$v0,.L0f0fced4
    nop
    b	.L0f0fccec
    li	$a4,4
.end __iglooSetPixelFormat

# Function: __iglooElementsPerGroup
# Declared: Line 1974 (Source lines: 1976-1985)
# Address: 0x0f0fcef4 - 0x0f0fcf40 (Size: 76 bytes, Frame: 0)
.ent __iglooElementsPerGroup
__iglooElementsPerGroup:
    # Line 1976
    li	$at,6407
    beq	$a0,$at,.L0f0fcf2c
    li	$v0,6410
    beq	$a0,$v0,.L0f0fcf38
    li	$v1,6408
    beq	$a0,$v1,.L0f0fcf20
    li	$a1,0x8000
    beq	$a0,$a1,.L0f0fcf20
    # Line 1985
    li	$v0,1
    jr	$ra
    nop
.L0f0fcf20:
    # Line 1983
    li	$v0,4
    jr	$ra
    nop
.L0f0fcf2c:
    # Line 1978
    li	$v0,3
    jr	$ra
    nop
.L0f0fcf38:
    # Line 1980
    jr	$ra
    li	$v0,2
.end __iglooElementsPerGroup

# Function: __iglooBytesPerElement
# Declared: Line 1993 (Source lines: 1994-2017)
# Address: 0x0f0fcf40 - 0x0f0fd03c (Size: 252 bytes, Frame: 0)
.ent __iglooBytesPerElement
__iglooBytesPerElement:
    # Line 1994
    li	$a2,0x8032
    sltu	$at,$a0,$a2
    bnez	$at,.L0f0fcf7c
    # Line 1995
    sltu	$v0,$a2,$a0
    beqz	$v0,.L0f0fcffc
    li	$a2,0x8035
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0f0fcfc4
    sltu	$a1,$a2,$a0
    beqz	$a1,.L0f0fcfb8
    li	$at,0x8036
    beq	$a0,$at,.L0f0fd030
.L0f0fcf70:
    # Line 2017
    lwc1	$f0,_lit_40800000
.L0f0fcf74:
    jr	$ra
    nop
.L0f0fcf7c:
    # Line 1995
    sltiu	$v0,$a0,5122
    bnez	$v0,.L0f0fcfa8
    sltiu	$v1,$a0,5123
    bnez	$v1,.L0f0fcff0
    sltiu	$a1,$a0,6656
    bnez	$a1,.L0f0fcfe4
    sltiu	$at,$a0,6657
    beqz	$at,.L0f0fcf70
    # Line 2005
    lwc1	$f0,_lit_3e000000
    jr	$ra
    nop
.L0f0fcfa8:
    # Line 1995
    sltiu	$v0,$a0,5121
    bnez	$v0,.L0f0fd008
    sltiu	$v1,$a0,5122
    beqz	$v1,.L0f0fcf70
.L0f0fcfb8:
    # Line 2012
    lwc1	$f0,_lit_3f800000
    jr	$ra
    nop
.L0f0fcfc4:
    # Line 1995
    li	$a2,0x8034
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0f0fd01c
    sltu	$at,$a2,$a0
    bnez	$at,.L0f0fcf70
    # Line 1999
    lwc1	$f0,_lit_3f000000
    jr	$ra
    nop
.L0f0fcfe4:
    # Line 1995
    li	$v0,5123
    bne	$a0,$v0,.L0f0fcf74
    # Line 2017
    lwc1	$f0,_lit_40800000
.L0f0fcff0:
    # Line 2008
    lwc1	$f0,_lit_40000000
    jr	$ra
    nop
.L0f0fcffc:
    # Line 1997
    lwc1	$f0,_lit_3eaaaaab
    jr	$ra
    nop
.L0f0fd008:
    # Line 1995
    li	$v1,5120
    bne	$a0,$v1,.L0f0fcf74
    # Line 2017
    lwc1	$f0,_lit_40800000
    # Line 2012
    jr	$ra
    lwc1	$f0,_lit_3f800000
.L0f0fd01c:
    # Line 1995
    li	$a1,0x8033
    bne	$a0,$a1,.L0f0fcf74
    # Line 2017
    lwc1	$f0,_lit_40800000
    # Line 2003
    jr	$ra
    lwc1	$f0,_lit_3f000000
.L0f0fd030:
    # Line 2001
    lwc1	$f0,_lit_3f800000
    jr	$ra
    nop
.end __iglooBytesPerElement

# Function: __iglooCalcSpanByteSize
# Declared: Line 2021 (Source lines: 2023-2037)
# Address: 0x0f0fd03c - 0x0f0fd0d4 (Size: 152 bytes, Frame: 192)
.ent __iglooCalcSpanByteSize
__iglooCalcSpanByteSize:
    # Line 2023
    addiu	$sp,$sp,-64
    sd	$s8,16($sp)
    move	$s8,$a0
    move	$a0,$a1
    # Line 2027
    la	$t9,sub_0f100000
    sd	$s0,8($sp)
    sd	$ra,0($sp)
    addiu	$t9,$t9,-12556
    bal gl_g_readsource
    # Line 2023
    move	$s0,$a2
    # Line 2027
    move	$a0,$v0
    li	$at,6656
    bne	$s0,$at,.L0f0fd084
    ld	$ra,0($sp)
    # Line 2031
    addiu	$a2,$s8,7
    ld	$s0,8($sp)
    b	.L0f0fd0c0
    sra	$a2,$a2,0x3
.L0f0fd084:
    # Line 2035
    la	$t9,sub_0f100000
    sd	$a0,24($sp)
    addiu	$t9,$t9,-12480
    bal gl_g_readsource
    move	$a0,$s0
    trunc.w.s	$f0,$f0
    mfc1	$ra,$f0
    nop
    mult	$ra,$s8
    ld	$a0,24($sp)
    ld	$s0,8($sp)
    ld	$ra,0($sp)
    mflo	$a2
    nop
    nop
.L0f0fd0c0:
    # Line 2037
    mult	$a0,$a2
    ld	$s8,16($sp)
    mflo	$v0
    jr	$ra
    addiu	$sp,$sp,64
.end __iglooCalcSpanByteSize

# Function: __iglooAdjustPosition
# Declared: Line 2046 (Source lines: 2049-2104)
# Address: 0x0f0fd0d4 - 0x0f0fd28c (Size: 440 bytes, Frame: 0)
.globl __iglooAdjustPosition
.ent __iglooAdjustPosition
__iglooAdjustPosition:
    # Line 2049
    slt	$v0,$a3,$a1
    lui	$v1,0xfff3
    addiu	$v1,$v1,24948
    beqz	$v0,.L0f0fd0f4
    addu	$at,$t9,$v1
    # Line 2057
    move	$a7,$a1
    move	$a1,$a3
    move	$a3,$a7
.L0f0fd0f4:
    slt	$t0,$a4,$a2
    beqz	$t0,.L0f0fd108
    # Line 2058
    move	$t1,$a2
    move	$a2,$a4
    move	$a4,$t1
.L0f0fd108:
    # Line 2060
    sw	$a1,0($a5)
    # Line 2061
    sw	$a2,4($a5)
    # Line 2062
    subu	$t9,$a3,$a1
    # Line 2063
    subu	$v0,$a4,$a2
    addiu	$v0,$v0,1
    # Line 2062
    addiu	$t9,$t9,1
    sw	$t9,8($a5)
    # Line 2063
    sw	$v0,12($a5)
    # Line 2060
    move	$t3,$a1
    # Line 2063
    lw	$t8,11800($a0)
    # Line 2072
    lwc1	$f3,-19664($at)
    # Line 2063
    lwc1	$f0,-19664($at)
    andi	$v1,$t8,0x2
    beqz	$v1,.L0f0fd204
    # Line 2062
    move	$t2,$t9
    # Line 2063
    beqzl	$a6,.L0f0fd190
    # Line 2071
    lwc1	$f2,11796($a0)
    # Line 2063
    lwc1	$f5,11796($a0)
    c.lt.s	$f0,$f5
    nop
    bc1t	.L0f0fd164
    # Line 2069
    mov.s	$f4,$f5
    neg.s	$f4,$f5
.L0f0fd164:
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    trunc.l.s	$f1,$f1
    dmfc1	$v1,$f1
    nop
    sll	$v1,$v1,0x0
    addu	$v1,$v1,$a2
    sw	$v1,4($a5)
    # Line 2071
    lwc1	$f2,11796($a0)
.L0f0fd190:
    neg.s	$f2,$f2
    swc1	$f2,24($a5)
    # Line 2072
    lw	$a7,11800($a0)
    andi	$a7,$a7,0x4
    beqz	$a7,.L0f0fd278
    li	$v0,1
    beqzl	$a6,.L0f0fd1f4
    # Line 2080
    lwc1	$f1,11792($a0)
    # Line 2072
    lwc1	$f4,11792($a0)
    c.lt.s	$f3,$f4
    nop
    bc1t	.L0f0fd1c8
    # Line 2078
    mov.s	$f5,$f4
    neg.s	$f5,$f4
.L0f0fd1c8:
    mtc1	$t2,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f5
    trunc.l.s	$f0,$f0
    dmfc1	$t0,$f0
    nop
    sll	$t0,$t0,0x0
    addu	$t0,$t0,$t3
    sw	$t0,0($a5)
    # Line 2080
    lwc1	$f1,11792($a0)
.L0f0fd1f4:
    neg.s	$f1,$f1
    swc1	$f1,20($a5)
    # Line 2104
    jr	$ra
    nop
.L0f0fd204:
    # Line 2084
    andi	$t1,$t8,0x4
    beqz	$t1,.L0f0fd284
    nop
    beqz	$a6,.L0f0fd260
    # Line 2097
    li	$v0,1
    # Line 2084
    lwc1	$f4,11792($a0)
    lwc1	$f2,-19664($at)
    c.lt.s	$f2,$f4
    nop
    bc1t	.L0f0fd234
    # Line 2093
    mov.s	$f5,$f4
    neg.s	$f5,$f4
.L0f0fd234:
    mtc1	$t9,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f5
    trunc.l.s	$f3,$f3
    dmfc1	$v1,$f3
    nop
    sll	$v1,$v1,0x0
    addu	$v1,$v1,$a1
    sw	$v1,0($a5)
    # Line 2097
    li	$v0,1
.L0f0fd260:
    # Line 2095
    lwc1	$f1,11792($a0)
    neg.s	$f1,$f1
    swc1	$f1,20($a5)
    # Line 2096
    lwc1	$f0,11796($a0)
    # Line 2104
    jr	$ra
    # Line 2096
    swc1	$f0,24($a5)
.L0f0fd278:
    # Line 2084
    lwc1	$f2,11792($a0)
    # Line 2104
    jr	$ra
    # Line 2084
    swc1	$f2,20($a5)
.L0f0fd284:
    # Line 2104
    jr	$ra
    # Line 2101
    move	$v0,$zero
.end __iglooAdjustPosition

# Function: __iglooShift32
# Declared: Line 2111 (Source lines: 2113-2128)
# Address: 0x0f0fd28c - 0x0f0fd3b8 (Size: 300 bytes, Frame: 0)
.ent __iglooShift32
__iglooShift32:
    # Line 2113
    multu	$a1,$a2
    # Line 2120
    negu	$a4,$a3
    # Line 2125
    move	$a2,$zero
    # Line 2113
    mflo	$a5
    bltz	$a3,.L0f0fd330
    andi	$a6,$a5,0x3
    # Line 2125
    beqz	$a5,.L0f0fd328
    move	$a6,$a5
    andi	$a4,$a5,0x3
    beqz	$a4,.L0f0fd2d8
    move	$a7,$a2
.L0f0fd2b8:
    addiu	$a0,$a0,4
    # Line 2126
    lw	$at,-4($a0)
    # Line 2125
    addiu	$a2,$a2,1
    addi	$a4,$a4,-1
    # Line 2126
    sllv	$at,$at,$a3
    bnez	$a4,.L0f0fd2b8
    sw	$at,-4($a0)
    move	$a7,$a2
.L0f0fd2d8:
    sra	$v0,$a6,0x2
    beqz	$v0,.L0f0fd328
    move	$a4,$a0
    move	$a0,$a7
    move	$a2,$a4
.L0f0fd2ec:
    # Line 2125
    addiu	$a2,$a2,16
    # Line 2126
    lw	$v0,-4($a2)
    # Line 2125
    addiu	$a0,$a0,4
    # Line 2126
    lw	$at,-8($a2)
    sllv	$v0,$v0,$a3
    sw	$v0,-4($a2)
    sllv	$at,$at,$a3
    lw	$a1,-12($a2)
    sw	$at,-8($a2)
    lw	$v1,-16($a2)
    sllv	$a1,$a1,$a3
    sw	$a1,-12($a2)
    sllv	$v1,$v1,$a3
    # Line 2125
    bne	$a5,$a0,.L0f0fd2ec
    # Line 2126
    sw	$v1,-16($a2)
.L0f0fd328:
    # Line 2128
    jr	$ra
    nop
.L0f0fd330:
    # Line 2120
    beqz	$a5,.L0f0fd328
    move	$a2,$zero
    beqz	$a6,.L0f0fd35c
    move	$a7,$a5
.L0f0fd340:
    addiu	$a0,$a0,4
    # Line 2121
    lw	$v1,-4($a0)
    # Line 2120
    addiu	$a2,$a2,1
    addi	$a6,$a6,-1
    # Line 2121
    srlv	$v1,$v1,$a4
    bnez	$a6,.L0f0fd340
    sw	$v1,-4($a0)
.L0f0fd35c:
    sra	$a1,$a7,0x2
    move	$a6,$a2
    beqz	$a1,.L0f0fd3b0
    move	$a3,$a0
    move	$a2,$a6
    move	$a0,$a3
.L0f0fd374:
    # Line 2120
    addiu	$a0,$a0,16
    # Line 2121
    lw	$a1,-4($a0)
    # Line 2120
    addiu	$a2,$a2,4
    # Line 2121
    lw	$v1,-8($a0)
    srlv	$a1,$a1,$a4
    sw	$a1,-4($a0)
    srlv	$v1,$v1,$a4
    lw	$v0,-12($a0)
    sw	$v1,-8($a0)
    lw	$at,-16($a0)
    srlv	$v0,$v0,$a4
    sw	$v0,-12($a0)
    srlv	$at,$at,$a4
    # Line 2120
    bne	$a5,$a2,.L0f0fd374
    # Line 2121
    sw	$at,-16($a0)
.L0f0fd3b0:
    # Line 2128
    jr	$ra
    nop
.end __iglooShift32

# Function: __iglooRgb2Bgr
# Declared: Line 2130 (Source lines: 2135-2141)
# Address: 0x0f0fd3b8 - 0x0f0fd464 (Size: 172 bytes, Frame: 0)
.ent __iglooRgb2Bgr
__iglooRgb2Bgr:
    # Line 2135
    multu	$a0,$a1
    mflo	$a5
    move	$a3,$a5
    beqz	$a5,.L0f0fd45c
    move	$a4,$a5
    andi	$a1,$a5,0x3
    beqz	$a1,.L0f0fd3fc
    sra	$v1,$a3,0x2
.L0f0fd3d8:
    addiu	$a2,$a2,3
    addiu	$a4,$a4,-1
    # Line 2137
    lbu	$v0,-3($a2)
    addi	$a1,$a1,-1
    # Line 2138
    lbu	$at,-1($a2)
    # Line 2139
    sb	$v0,-1($a2)
    bnez	$a1,.L0f0fd3d8
    # Line 2138
    sb	$at,-3($a2)
    sra	$v1,$a3,0x2
.L0f0fd3fc:
    move	$a6,$a4
    beqz	$v1,.L0f0fd45c
    move	$a5,$a2
    move	$a1,$a6
    move	$a2,$a5
.L0f0fd410:
    # Line 2135
    addiu	$a2,$a2,12
    # Line 2137
    lbu	$v1,-3($a2)
    # Line 2135
    addiu	$a1,$a1,-4
    # Line 2138
    lbu	$v0,-1($a2)
    # Line 2139
    sb	$v1,-1($a2)
    # Line 2137
    lbu	$at,-6($a2)
    # Line 2138
    sb	$v0,-3($a2)
    lbu	$a0,-4($a2)
    # Line 2139
    sb	$at,-4($a2)
    # Line 2137
    lbu	$v1,-9($a2)
    # Line 2138
    sb	$a0,-6($a2)
    lbu	$v0,-7($a2)
    # Line 2139
    sb	$v1,-7($a2)
    # Line 2137
    lbu	$at,-12($a2)
    # Line 2138
    sb	$v0,-9($a2)
    lbu	$a0,-10($a2)
    # Line 2139
    sb	$at,-10($a2)
    # Line 2135
    bnez	$a1,.L0f0fd410
    # Line 2138
    sb	$a0,-12($a2)
.L0f0fd45c:
    # Line 2141
    jr	$ra
    nop
.end __iglooRgb2Bgr

# Function: __iglooShift16
# Declared: Line 2143 (Source lines: 2145-2161)
# Address: 0x0f0fd464 - 0x0f0fd590 (Size: 300 bytes, Frame: 0)
.ent __iglooShift16
__iglooShift16:
    # Line 2145
    multu	$a1,$a2
    # Line 2153
    negu	$a4,$a3
    # Line 2158
    move	$a2,$zero
    # Line 2145
    mflo	$a5
    bltz	$a3,.L0f0fd508
    andi	$a6,$a5,0x3
    # Line 2158
    beqz	$a5,.L0f0fd500
    move	$a6,$a5
    andi	$a4,$a5,0x3
    beqz	$a4,.L0f0fd4b0
    move	$a7,$a2
.L0f0fd490:
    addiu	$a0,$a0,2
    # Line 2159
    lhu	$at,-2($a0)
    # Line 2158
    addiu	$a2,$a2,1
    addi	$a4,$a4,-1
    # Line 2159
    sllv	$at,$at,$a3
    bnez	$a4,.L0f0fd490
    sh	$at,-2($a0)
    move	$a7,$a2
.L0f0fd4b0:
    sra	$v0,$a6,0x2
    beqz	$v0,.L0f0fd500
    move	$a4,$a0
    move	$a0,$a7
    move	$a2,$a4
.L0f0fd4c4:
    # Line 2158
    addiu	$a2,$a2,8
    # Line 2159
    lhu	$v0,-2($a2)
    # Line 2158
    addiu	$a0,$a0,4
    # Line 2159
    lhu	$at,-4($a2)
    sllv	$v0,$v0,$a3
    sh	$v0,-2($a2)
    sllv	$at,$at,$a3
    lhu	$a1,-6($a2)
    sh	$at,-4($a2)
    lhu	$v1,-8($a2)
    sllv	$a1,$a1,$a3
    sh	$a1,-6($a2)
    sllv	$v1,$v1,$a3
    # Line 2158
    bne	$a5,$a0,.L0f0fd4c4
    # Line 2159
    sh	$v1,-8($a2)
.L0f0fd500:
    # Line 2161
    jr	$ra
    nop
.L0f0fd508:
    # Line 2153
    beqz	$a5,.L0f0fd500
    move	$a2,$zero
    beqz	$a6,.L0f0fd534
    move	$a7,$a5
.L0f0fd518:
    addiu	$a0,$a0,2
    # Line 2154
    lhu	$v1,-2($a0)
    # Line 2153
    addiu	$a2,$a2,1
    addi	$a6,$a6,-1
    # Line 2154
    srlv	$v1,$v1,$a4
    bnez	$a6,.L0f0fd518
    sh	$v1,-2($a0)
.L0f0fd534:
    sra	$a1,$a7,0x2
    move	$a6,$a2
    beqz	$a1,.L0f0fd588
    move	$a3,$a0
    move	$a2,$a6
    move	$a0,$a3
.L0f0fd54c:
    # Line 2153
    addiu	$a0,$a0,8
    # Line 2154
    lhu	$a1,-2($a0)
    # Line 2153
    addiu	$a2,$a2,4
    # Line 2154
    lhu	$v1,-4($a0)
    srlv	$a1,$a1,$a4
    sh	$a1,-2($a0)
    srlv	$v1,$v1,$a4
    lhu	$v0,-6($a0)
    sh	$v1,-4($a0)
    lhu	$at,-8($a0)
    srlv	$v0,$v0,$a4
    sh	$v0,-6($a0)
    srlv	$at,$at,$a4
    # Line 2153
    bne	$a5,$a2,.L0f0fd54c
    # Line 2154
    sh	$at,-8($a0)
.L0f0fd588:
    # Line 2161
    jr	$ra
    nop
.end __iglooShift16

# Function: __iglooUnpack
# Declared: Line 2163 (Source lines: 2165-2212)
# Address: 0x0f0fd590 - 0x0f0fd738 (Size: 424 bytes, Frame: 208)
.ent __iglooUnpack
__iglooUnpack:
    # Line 2165
    addiu	$sp,$sp,-80
    sd	$s5,16($sp)
    # Line 2169
    la	$s5,gl_wstatep
    # Line 2173
    move	$t9,$zero
    # Line 2169
    lw	$s5,0($s5)
    sd	$s7,8($sp)
    # Line 2173
    blez	$a3,.L0f0fd728
    # Line 2171
    lw	$a7,11820($s5)
    # Line 2173
    slti	$t8,$a7,32
    slt	$at,$zero,$a2
    sll	$v0,$a4,0x2
    sd	$v0,0($sp)
    sd	$at,24($sp)
    li	$s7,-1
    sllv	$s7,$s7,$a7
    b	.L0f0fd5ec
    nor	$s7,$s7,$zero
.L0f0fd5d4:
    # Line 2208
    bnez	$t0,.L0f0fd60c
    # Line 2179
    slt	$at,$a4,$a7
.L0f0fd5dc:
    # Line 2173
    ld	$v1,0($sp)
.L0f0fd5e0:
    addiu	$t9,$t9,1
    beq	$a3,$t9,.L0f0fd728
    addu	$a1,$v1,$a1
.L0f0fd5ec:
    # Line 2177
    move	$t1,$a1
    # Line 2179
    move	$a6,$zero
    # Line 2178
    lw	$a5,11824($s5)
    li	$a4,32
    # Line 2179
    blez	$a2,.L0f0fd5dc
    # Line 2178
    subu	$a4,$a4,$a5
    ld	$t0,24($sp)
    # Line 2179
    slt	$at,$a4,$a7
.L0f0fd60c:
    xori	$at,$at,0x1
    beqz	$at,.L0f0fd688
    # Line 2190
    slt	$at,$a4,$a7
    # Line 2179
    beqz	$t0,.L0f0fd688
    # Line 2190
    slt	$at,$a4,$a7
    b	.L0f0fd644
    # Line 2187
    subu	$a5,$a4,$a7
.L0f0fd628:
    # Line 2193
    addiu	$t1,$t1,4
.L0f0fd62c:
    # Line 2190
    slt	$v0,$a4,$a7
    xori	$v0,$v0,0x1
    beqz	$v0,.L0f0fd684
    nop
    beqz	$t0,.L0f0fd684
    # Line 2187
    subu	$a5,$a4,$a7
.L0f0fd644:
    # Line 2188
    addiu	$a6,$a6,1
    # Line 2187
    beqz	$t8,.L0f0fd678
    addiu	$a0,$a0,4
    move	$t0,$s7
.L0f0fd654:
    lw	$v1,0($t1)
    # Line 2189
    subu	$a4,$a4,$a7
    # Line 2187
    srlv	$v1,$v1,$a5
    and	$v1,$v1,$t0
    # Line 2190
    slt	$t0,$a6,$a2
    # Line 2189
    bnez	$a4,.L0f0fd62c
    # Line 2187
    sw	$v1,-4($a0)
    b	.L0f0fd628
    # Line 2192
    li	$a4,32
.L0f0fd678:
    # Line 2187
    li	$t0,-1
    b	.L0f0fd654
    nop
.L0f0fd684:
    # Line 2190
    slt	$at,$a4,$a7
.L0f0fd688:
    beqz	$at,.L0f0fd5d4
    nop
    beqz	$t0,.L0f0fd5e0
    # Line 2173
    ld	$v1,0($sp)
    b	.L0f0fd6d4
    # Line 2205
    addiu	$t1,$t1,4
.L0f0fd6a0:
    # Line 2206
    li	$t3,-1
.L0f0fd6a4:
    # Line 2208
    slt	$v0,$a4,$a7
    # Line 2207
    addiu	$a6,$a6,1
    # Line 2206
    lw	$a5,0($t1)
    # Line 2208
    slt	$t0,$a6,$a2
    # Line 2206
    lw	$v1,-4($a0)
    srlv	$a5,$a5,$a4
    and	$a5,$a5,$t3
    or	$v1,$v1,$a5
    # Line 2208
    beqz	$v0,.L0f0fd5d4
    # Line 2206
    sw	$v1,-4($a0)
    # Line 2208
    beqz	$t0,.L0f0fd5dc
    # Line 2205
    addiu	$t1,$t1,4
.L0f0fd6d4:
    # Line 2202
    li	$t3,-1
    # Line 2199
    slti	$a5,$a4,32
    beqz	$a5,.L0f0fd6f4
    # Line 2206
    addiu	$a0,$a0,4
    li	$t0,-1
    # Line 2202
    sllv	$t3,$t0,$a4
    b	.L0f0fd6f8
    nor	$t3,$t3,$zero
.L0f0fd6f4:
    li	$t0,-1
.L0f0fd6f8:
    subu	$t2,$a7,$a4
    li	$a4,32
    lw	$at,-4($t1)
    # Line 2206
    subu	$a4,$a4,$t2
    slti	$v0,$t2,32
    # Line 2202
    and	$at,$at,$t3
    sllv	$at,$at,$t2
    # Line 2206
    beqz	$v0,.L0f0fd6a0
    # Line 2202
    sw	$at,-4($a0)
    # Line 2206
    sllv	$t3,$t0,$t2
    b	.L0f0fd6a4
    nor	$t3,$t3,$zero
.L0f0fd728:
    # Line 2212
    ld	$s5,16($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __iglooUnpack

# Function: __iglooExpand
# Declared: Line 2214 (Source lines: 2221-2231)
# Address: 0x0f0fd738 - 0x0f0fd7dc (Size: 164 bytes, Frame: 0)
.ent __iglooExpand
__iglooExpand:
    # Line 2224
    mult	$a0,$a1
    # Line 2221
    la	$a7,gl_wstatep
    lw	$a7,0($a7)
    # Line 2224
    move	$a4,$zero
    # Line 2222
    lw	$a5,11812($a7)
    # Line 2221
    lw	$a7,11808($a7)
    # Line 2224
    mflo	$a6
    blez	$a6,.L0f0fd78c
    move	$a1,$a6
    andi	$at,$a6,0x1
    beqz	$at,.L0f0fd784
    sra	$v1,$a1,0x1
    lw	$v0,0($a2)
    andi	$v0,$v0,0x1
    beqz	$v0,.L0f0fd7d4
    addiu	$a4,$a4,1
    # Line 2227
    sw	$a5,0($a2)
.L0f0fd77c:
    # Line 2224
    addiu	$a2,$a2,4
    sra	$v1,$a1,0x1
.L0f0fd784:
    bnezl	$v1,.L0f0fd7b8
    lw	$at,0($a2)
.L0f0fd78c:
    # Line 2231
    jr	$ra
    nop
.L0f0fd794:
    # Line 2229
    sw	$a7,0($a2)
.L0f0fd798:
    # Line 2224
    lw	$a0,4($a2)
    andi	$a0,$a0,0x1
    beqz	$a0,.L0f0fd7cc
    nop
    # Line 2227
    sw	$a5,4($a2)
.L0f0fd7ac:
    # Line 2224
    beq	$a6,$a4,.L0f0fd78c
    addiu	$a2,$a2,8
    lw	$at,0($a2)
.L0f0fd7b8:
    andi	$at,$at,0x1
    beqz	$at,.L0f0fd794
    addiu	$a4,$a4,2
    # Line 2227
    b	.L0f0fd798
    sw	$a5,0($a2)
.L0f0fd7cc:
    b	.L0f0fd7ac
    # Line 2229
    sw	$a7,4($a2)
.L0f0fd7d4:
    b	.L0f0fd77c
    sw	$a7,0($a2)
.end __iglooExpand

# Function: __iglooAdd24
# Declared: Line 2233 (Source lines: 2240-2250)
# Address: 0x0f0fd7dc - 0x0f0fd898 (Size: 188 bytes, Frame: 0)
.ent __iglooAdd24
__iglooAdd24:
    # Line 2241
    mult	$a0,$a1
    move	$a7,$zero
    # Line 2240
    la	$a6,gl_wstatep
    # Line 2241
    lui	$a4,0xff
    ori	$a4,$a4,0xffff
    # Line 2240
    lw	$a6,0($a6)
    # Line 2241
    mflo	$a5
    blez	$a5,.L0f0fd890
    # Line 2240
    lw	$a6,11816($a6)
    # Line 2241
    move	$a1,$a5
    andi	$at,$a5,0x1
    beqz	$at,.L0f0fd834
    lui	$a3,0xff00
    # Line 2242
    lw	$v1,0($a2)
    # Line 2241
    addiu	$a2,$a2,4
    addiu	$a7,$a7,1
    # Line 2244
    addu	$v1,$a6,$v1
    # Line 2246
    subu	$v0,$v1,$a6
    and	$v1,$a4,$v1
    and	$v0,$v0,$a3
    or	$v0,$v0,$v1
    # Line 2247
    sw	$v0,-4($a2)
.L0f0fd834:
    move	$t1,$a7
    sra	$a0,$a1,0x1
    beqz	$a0,.L0f0fd890
    move	$t0,$a2
    move	$a2,$t1
    move	$a1,$t0
.L0f0fd84c:
    # Line 2242
    lw	$a0,4($a1)
    # Line 2241
    addiu	$a1,$a1,8
    addiu	$a2,$a2,2
    # Line 2244
    addu	$a0,$a6,$a0
    # Line 2246
    subu	$v1,$a0,$a6
    and	$v1,$v1,$a3
    and	$a0,$a4,$a0
    # Line 2242
    lw	$v0,-8($a1)
    # Line 2246
    or	$v1,$v1,$a0
    # Line 2247
    sw	$v1,-4($a1)
    # Line 2244
    addu	$v0,$a6,$v0
    # Line 2246
    subu	$at,$v0,$a6
    and	$at,$at,$a3
    and	$v0,$a4,$v0
    or	$at,$at,$v0
    # Line 2241
    bne	$a5,$a2,.L0f0fd84c
    # Line 2247
    sw	$at,-8($a1)
.L0f0fd890:
    # Line 2250
    jr	$ra
    nop
.end __iglooAdd24

.late_rodata
jtbl_0f024c88:
    .word .L0f0fbc74
    .word .L0f0fbca0
    .word .L0f0fbcec
    .word .L0f0fbcf8
    .word .L0f0fbd04
    .word .L0f0fbe68
    .word .L0f0fbe88
    .word .L0f0fbea8
    .word .L0f0fbd10
    .word .L0f0fbd5c
    .word .L0f0fbebc
    .word .L0f0fbda8
    .word .L0f0fbdd8
    .word .L0f0fbe08
    .word .L0f0fbe38
jtbl_0f024cc8:
    .word .L0f0fbf08
    .word .L0f0fbf08
    .word .L0f0fbf20
    .word .L0f0fbf20
    .word .L0f0fbf08
    .word .L0f0fbf20
    .word .L0f0fbf20
    .word .L0f0fbf20
    .word .L0f0fbf08
    .word .L0f0fbf20
    .word .L0f0fbf20
    .word .L0f0fbf20
    .word .L0f0fbf08
    .word .L0f0fbf20
    .word .L0f0fbf20
    .word .L0f0fbf20
    .word .L0f0fbf08
    .word .L0f0fbf20
    .word .L0f0fbf20
    .word .L0f0fbf20
    .word .L0f0fbf20
    .word .L0f0fbf20
    .word .L0f0fbf20
    .word .L0f0fbf20
    .word .L0f0fbf08
jtbl_0f024e60:
    .word .L0f0fbf60
    .word .L0f0fbf14
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf14
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf14
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf14
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf14
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf14
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf60
    .word .L0f0fbf14
jtbl_0f025010:
    .word .L0f0fc2c0
    .word .L0f0fc2cc
    .word .L0f0fc2d8
    .word .L0f0fc2e4
    .word .L0f0fc2f0
    .word .L0f0fc2fc
    .word .L0f0fc304
jtbl_0f025030:
    .word .L0f0fc344
    .word .L0f0fc350
    .word .L0f0fc35c
    .word .L0f0fc338
    .word .L0f0fc338
    .word .L0f0fc368
    .word .L0f0fc374
    .word .L0f0fc380
    .word .L0f0fc388
    .word .L0f0fc390

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_bf1a36e2eb1c432d:
    .word 0xbf1a36e2, 0xeb1c432d
_lit_3e000000:
    .word 0x3e000000
_lit_3eaaaaab:
    .word 0x3eaaaaab
_lit_3f000000:
    .word 0x3f000000
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_40800000:
    .word 0x40800000

