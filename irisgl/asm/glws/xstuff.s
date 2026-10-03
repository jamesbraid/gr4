# Source: ../igloo/glws/xstuff.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/xstuff.c -o xstuff.T
# Total Functions: 12

.text

# Function: __iglooCatchXErrors
# Declared: Line 43 (Source lines: 44-67)
# Address: 0x0f130214 - 0x0f13026c (Size: 88 bytes, Frame: 32)
.globl __iglooCatchXErrors
.ent __iglooCatchXErrors
__iglooCatchXErrors:
    # Line 44
    li	$at,1
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lui	$v0,0xfff0
    addiu	$v0,$v0,12340
    beq	$a0,$at,.L0f130250
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    # Line 65
    la	$t9,XSetErrorHandler
    jalr	$t9
    move	$a0,$zero
    ld	$ra,8($sp)
.L0f130244:
    ld	$gp,0($sp)
    # Line 67
    jr	$ra
    addiu	$sp,$sp,32
.L0f130250:
    # Line 61
    la	$t9,XSetErrorHandler
    la	$a0,sub_0f130000
    # Line 60
    sb	$zero,-19688($gp)
    # Line 61
    jalr	$t9
    addiu	$a0,$a0,672
    b	.L0f130244
    ld	$ra,8($sp)
.end __iglooCatchXErrors

# Function: __iglooGetLastXError
# Declared: Line 74 (Source lines: 75-82)
# Address: 0x0f13026c - 0x0f1302a0 (Size: 52 bytes, Frame: 0)
.globl __iglooGetLastXError
.ent __iglooGetLastXError
__iglooGetLastXError:
    # Line 75
    lui	$v1,0xfff0
    addiu	$v1,$v1,12252
    addu	$at,$t9,$v1
    lbu	$a3,-19688($at)
    li	$v0,1
    beq	$a3,$v0,.L0f130290
    # Line 78
    sltiu	$v1,$a3,1
    # Line 82
    jr	$ra
    move	$v0,$zero
.L0f130290:
    # Line 80
    lw	$v0,-32672($at)
    # Line 78
    sb	$v1,-19688($at)
    # Line 80
    jr	$ra
    addiu	$v0,$v0,-27320
.end __iglooGetLastXError

# Function: __iglooXErrorHandler
# Declared: Line 85 (Source lines: 86-100)
# Address: 0x0f1302a0 - 0x0f1302ec (Size: 76 bytes, Frame: 0)
.ent __iglooXErrorHandler
__iglooXErrorHandler:
    # Line 86
    lui	$a0,0xfff0
    addiu	$a0,$a0,12200
    addu	$at,$t9,$a0
    # Line 97
    lw	$v1,-32672($at)
    lw	$v0,0($a1)
    addiu	$v1,$v1,-27320
    sw	$v0,0($v1)
    lw	$t9,4($a1)
    sw	$t9,4($v1)
    lw	$a3,8($a1)
    sw	$a3,8($v1)
    lw	$a2,12($a1)
    sw	$a2,12($v1)
    lw	$v0,16($a1)
    # Line 98
    li	$a0,1
    sb	$a0,-19688($at)
    # Line 97
    sw	$v0,16($v1)
    # Line 100
    jr	$ra
    move	$v0,$zero
.end __iglooXErrorHandler

# Function: __iglooFindColormap
# Declared: Line 104 (Source lines: 105-139)
# Address: 0x0f1302ec - 0x0f130390 (Size: 164 bytes, Frame: 192)
.globl __iglooFindColormap
.ent __iglooFindColormap
__iglooFindColormap:
    # Line 112
    li	$at,4
    # Line 105
    addiu	$sp,$sp,-64
    sd	$s0,16($sp)
    # Line 112
    move	$s0,$zero
    sd	$gp,8($sp)
    lw	$v0,16($a1)
    # Line 105
    lui	$v1,0xfff0
    addiu	$v1,$v1,12124
    # Line 112
    beq	$v0,$at,.L0f13034c
    # Line 105
    nop	# was addu	$gp,$t9,$v1 ($gp setup in delay)
    # Line 121
    li	$a3,3
    beq	$v0,$a3,.L0f130370
    # Line 127
    la	$t9,sub_0f130000
.L0f130320:
    beqz	$s0,.L0f130338
    # Line 137
    la	$t9,XInstallColormap
    sd	$ra,24($sp)
    jalr	$t9
    move	$a1,$s0
    ld	$ra,24($sp)
.L0f130338:
    ld	$gp,8($sp)
    # Line 139
    move	$v0,$s0
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f13034c:
    # Line 121
    la	$t9,sub_0f130000
    sd	$ra,24($sp)
    addiu	$t9,$t9,1232
    bal __iglooFindColormap
    sd	$a0,0($sp)
    move	$s0,$v0
    ld	$a0,0($sp)
    b	.L0f130320
    ld	$ra,24($sp)
.L0f130370:
    sd	$ra,24($sp)
    # Line 127
    addiu	$t9,$t9,912
    bal __iglooFindColormap
    sd	$a0,0($sp)
    move	$s0,$v0
    ld	$a0,0($sp)
    b	.L0f130320
    ld	$ra,24($sp)
.end __iglooFindColormap

# Function: FindColormapsForPseudoColor
# Declared: Line 144 (Source lines: 145-187)
# Address: 0x0f130390 - 0x0f1304d0 (Size: 320 bytes, Frame: 224)
.ent FindColormapsForPseudoColor
FindColormapsForPseudoColor:
    # Line 153
    move	$a3,$zero
    # Line 145
    addiu	$sp,$sp,-96
    sd	$s0,48($sp)
    sd	$ra,0($sp)
    # Line 153
    la	$t9,XCreateColormap
    sd	$s1,8($sp)
    # Line 145
    move	$s1,$a1
    sd	$a2,40($sp)
    # Line 153
    lw	$a2,0($a1)
    sd	$s2,16($sp)
    lw	$a5,8($a1)
    # Line 145
    move	$s2,$a0
    # Line 153
    lw	$a1,140($s2)
    sll	$a4,$a5,0x2
    addu	$a4,$a4,$a5
    sll	$a4,$a4,0x4
    addu	$a1,$a1,$a4
    jalr	$t9
    lw	$a1,8($a1)
    # Line 156
    lw	$a0,0($s1)
    lw	$a0,28($a0)
    # Line 157
    la	$t9,__iglooMalloc
    # Line 153
    move	$s0,$v0
    sd	$a0,32($sp)
    # Line 157
    jalr	$t9
    sll	$a0,$a0,0x2
    move	$a4,$v0
    sd	$v0,24($sp)
    beqz	$v0,.L0f1304b8
    ld	$ra,0($sp)
    beqz	$s0,.L0f1304a0
    # Line 163
    move	$a0,$s2
    move	$a1,$s0
    ld	$a6,32($sp)
    move	$a5,$v0
    la	$t9,XAllocColorCells
    move	$a4,$zero
    move	$a3,$zero
    jalr	$t9
    li	$a2,1
    bnez	$v0,.L0f130488
    # Line 182
    move	$a0,$s2
    # Line 168
    move	$a0,$s2
    move	$a1,$s0
    ld	$a5,24($sp)
    move	$a4,$zero
    move	$a3,$zero
    la	$t9,XAllocColorCells
    ld	$a6,32($sp)
    li	$a2,1
    jalr	$t9
    addiu	$a6,$a6,-1
    beqz	$v0,.L0f1304a0
    # Line 177
    move	$a0,$s2
    la	$t9,sub_0f130000
    move	$a1,$s0
    move	$a2,$s1
    addiu	$t9,$t9,1508
    bal __iglooFindColormap
    ld	$a3,40($sp)
    b	.L0f1304a4
    # Line 185
    la	$t9,__iglooFree
.L0f130488:
    # Line 182
    la	$t9,sub_0f130000
    move	$a1,$s0
    move	$a2,$s1
    addiu	$t9,$t9,1508
    bal __iglooFindColormap
    ld	$a3,40($sp)
.L0f1304a0:
    # Line 185
    la	$t9,__iglooFree
.L0f1304a4:
    ld	$a0,24($sp)
    ld	$s2,16($sp)
    jalr	$t9
    ld	$s1,8($sp)
    ld	$ra,0($sp)
.L0f1304b8:
    # Line 187
    move	$v0,$s0
    ld	$s0,48($sp)
    ld	$s1,8($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end FindColormapsForPseudoColor

# Function: FindStandardColormap
# Declared: Line 191 (Source lines: 192-247)
# Address: 0x0f1304d0 - 0x0f1305e4 (Size: 276 bytes, Frame: 192)
.ent FindStandardColormap
FindStandardColormap:
    # Line 201
    move	$a6,$zero
    move	$a5,$zero
    li	$a4,27
    lw	$a3,12($a1)
    # Line 192
    addiu	$sp,$sp,-64
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$zero,32($sp)
    sd	$s1,24($sp)
    move	$s1,$a1
    # Line 201
    la	$t9,XmuLookupStandardColormap
    lw	$a2,0($a1)
    lw	$a1,8($a1)
    sd	$ra,16($sp)
    jalr	$t9
    lw	$a2,4($a2)
    lw	$a3,8($s1)
    lw	$a1,140($s0)
    sll	$a2,$a3,0x2
    addu	$a2,$a2,$a3
    sll	$a2,$a2,0x4
    addu	$a1,$a1,$a2
    beqz	$v0,.L0f1305c0
    lw	$a1,8($a1)
    # Line 213
    move	$a0,$s0
    la	$t9,XGetRGBColormaps
    li	$a4,27
    addiu	$a3,$sp,4
    jalr	$t9
    addiu	$a2,$sp,0
    ld	$ra,16($sp)
    beqz	$v0,.L0f1305b0
    ld	$s0,8($sp)
    lw	$a5,4($sp)
    lw	$a0,0($sp)
    blez	$a5,.L0f1305a0
    sll	$a4,$a5,0x2
    move	$v0,$a0
    lw	$a1,4($s1)
    ld	$s1,24($sp)
    addu	$a4,$a4,$a5
    sll	$a4,$a4,0x3
    lw	$at,32($v0)
.L0f13057c:
    beq	$at,$a1,.L0f130598
    # Line 224
    addu	$v1,$a4,$a0
    addiu	$v0,$v0,40
    bnel	$v1,$v0,.L0f13057c
    # Line 213
    lw	$at,32($v0)
    b	.L0f1305a4
    # Line 232
    la	$t9,XFree
.L0f130598:
    # Line 228
    lw	$a2,0($v0)
    sd	$a2,32($sp)
.L0f1305a0:
    # Line 232
    la	$t9,XFree
.L0f1305a4:
    jalr	$t9
    ld	$s1,24($sp)
    ld	$ra,16($sp)
.L0f1305b0:
    ld	$v0,32($sp)
    # Line 247
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0f1305c0:
    # Line 244
    la	$t9,XCreateColormap
    move	$a0,$s0
    move	$a3,$zero
    jalr	$t9
    lw	$a2,0($s1)
    sd	$v0,32($sp)
    ld	$ra,16($sp)
    b	.L0f1305b0
    ld	$s0,8($sp)
.end FindStandardColormap

# Function: InitColormap
# Declared: Line 251 (Source lines: 252-284)
# Address: 0x0f1305e4 - 0x0f1306e0 (Size: 252 bytes, Frame: 192)
.ent InitColormap
InitColormap:
    # Line 252
    addiu	$sp,$sp,-64
    move	$t0,$a1
    move	$t1,$a2
    # la	v0,sub_0f020000
    sll	$a5,$a3,0x2
    sltiu	$at,$a3,11
    la	$v0,jtbl_0f026e18
    beqz	$at,.L0f13064c
    addu	$a5,$a5,$v0
    lw	$v1,0($a5)
    sd	$t0,0($sp)
    jr	$v1
    sd	$a0,8($sp)
.L0f130618:
    # Line 281
    move	$a1,$t0
    move	$a2,$zero
    move	$a6,$zero
    move	$a5,$zero
    move	$a4,$zero
    sd	$ra,16($sp)
    lw	$a7,12($t1)
    la	$t9,__iglooFillColormap
    li	$a3,1
    sllv	$a3,$a3,$a7
    bal __iglooFillColormap
    addiu	$a3,$a3,-1
    ld	$ra,16($sp)
.L0f13064c:
    # Line 284
    jr	$ra
    addiu	$sp,$sp,64
.L0f130654:
    ld	$a0,8($sp)
    # Line 264
    ld	$a1,0($sp)
    move	$a5,$zero
    move	$a4,$zero
    la	$t9,__iglooStoreColor
    li	$a3,255
    sd	$ra,16($sp)
    bal __iglooStoreColor
    li	$a2,1
    ld	$a0,8($sp)
    # Line 265
    ld	$a1,0($sp)
    move	$a5,$zero
    la	$t9,__iglooStoreColor
    move	$a4,$zero
    move	$a3,$zero
    bal __iglooStoreColor
    li	$a2,2
    ld	$a0,8($sp)
    # Line 266
    ld	$a1,0($sp)
    li	$a5,255
    la	$t9,__iglooStoreColor
    li	$a4,255
    li	$a3,255
    bal __iglooStoreColor
    li	$a2,3
    b	.L0f13064c
    ld	$ra,16($sp)
.L0f1306c0:
    # Line 272
    la	$t9,sub_0f130000
    move	$a1,$t1
    sd	$ra,16($sp)
    addiu	$t9,$t9,1760
    bal __iglooFindColormap
    move	$a2,$t0
    b	.L0f13064c
    ld	$ra,16($sp)
.end InitColormap

# Function: InitColorIndexColormap
# Declared: Line 287 (Source lines: 288-315)
# Address: 0x0f1306e0 - 0x0f130788 (Size: 168 bytes, Frame: 192)
.ent InitColorIndexColormap
InitColorIndexColormap:
    # Line 299
    li	$a3,15
    # Line 288
    la	$a6,_GLblue_map
    la	$a5,_GLgreen_map
    la	$a4,_GLred_map
    addiu	$sp,$sp,-64
    sd	$a0,24($sp)
    sd	$s3,8($sp)
    move	$s3,$a1
    move	$a1,$a2
    # Line 299
    la	$t9,__iglooStoreColors
    sd	$a2,16($sp)
    sd	$ra,0($sp)
    bal __iglooStoreColors
    move	$a2,$zero
    lw	$at,12($s3)
    ld	$s3,8($sp)
    slti	$at,$at,5
    beqz	$at,.L0f130734
    ld	$ra,0($sp)
.L0f13072c:
    # Line 315
    jr	$ra
    addiu	$sp,$sp,64
.L0f130734:
    la	$a5,_GLgreen_map
    la	$a4,_GLred_map
    la	$a6,_GLblue_map
    # Line 307
    ld	$a0,24($sp)
    ld	$a1,16($sp)
    la	$t9,__iglooStoreColors
    li	$a3,55
    li	$a2,32
    bal __iglooStoreColors
    ld	$s3,8($sp)
    la	$a5,_GLgreen_map
    la	$a4,_GLred_map
    la	$a6,_GLblue_map
    # Line 313
    ld	$a0,24($sp)
    la	$t9,__iglooStoreColors
    ld	$a1,16($sp)
    li	$a3,255
    bal __iglooStoreColors
    li	$a2,56
    b	.L0f13072c
    ld	$ra,0($sp)
.end InitColorIndexColormap

# Function: __iglooStoreColor
# Declared: Line 318 (Source lines: 325-338)
# Address: 0x0f130788 - 0x0f1307e0 (Size: 88 bytes, Frame: 208)
.globl __iglooStoreColor
.ent __iglooStoreColor
__iglooStoreColor:
    # Line 331
    sll	$at,$a3,0x8
    # Line 332
    sll	$v0,$a5,0x8
    # Line 333
    sll	$a4,$a4,0x8
    # Line 335
    li	$a6,7
    # Line 325
    addiu	$sp,$sp,-80
    # Line 334
    sw	$a2,0($sp)
    # Line 337
    addiu	$a2,$sp,0
    # Line 335
    sb	$a6,10($sp)
    # Line 333
    sh	$a4,6($sp)
    sd	$gp,24($sp)
    # Line 325
    # lui	v1,0xfff0 (gp disp hi)
    # addiu	v1,v1,10944 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    # Line 337
    la	$t9,XStoreColor
    # Line 332
    sh	$v0,8($sp)
    sd	$ra,16($sp)
    # Line 337
    jalr	$t9
    # Line 331
    sh	$at,4($sp)
    # Line 338
    ld	$ra,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __iglooStoreColor

# Function: __iglooStoreColors
# Declared: Line 340 (Source lines: 343-376)
# Address: 0x0f1307e0 - 0x0f130968 (Size: 392 bytes, Frame: 240)
.globl __iglooStoreColors
.ent __iglooStoreColors
__iglooStoreColors:
    # Line 362
    move	$t1,$a2
    addu	$v1,$a2,$a6
    li	$a6,7
    # Line 361
    addu	$t8,$a2,$a5
    # Line 360
    addu	$t3,$a2,$a4
    # Line 343
    addiu	$sp,$sp,-3184
    sd	$gp,3104($sp)
    lui	$v0,0xfff0
    # Line 362
    subu	$at,$a3,$a2
    addiu	$t0,$at,1
    slti	$at,$at,0
    # Line 343
    addiu	$v0,$v0,10856
    # addu	gp,t9,v0 (gp setup)
    # Line 362
    move	$a4,$t0
    sll	$a5,$t0,0x2
    sd	$v1,3096($sp)
    bnez	$at,.L0f130944
    ld	$a3,3096($sp)
    addiu	$t2,$sp,0
    move	$t9,$t3
    move	$a7,$t8
    sd	$t0,3088($sp)
    addiu	$at,$sp,0
    andi	$a4,$t0,0x1
    subu	$a5,$a5,$t0
    sll	$a5,$a5,0x2
    beqz	$a4,.L0f130890
    addu	$a5,$a5,$at
    # Line 368
    sb	$a6,10($t2)
    # Line 370
    lbu	$v1,0($t9)
    sll	$v1,$v1,0x8
    sh	$v1,4($t2)
    # Line 364
    addiu	$t2,$t2,12
    # Line 371
    lbu	$v0,0($a7)
    # Line 364
    addiu	$t9,$t9,1
    addiu	$a7,$a7,1
    # Line 371
    sll	$v0,$v0,0x8
    sh	$v0,-6($t2)
    # Line 364
    addiu	$a3,$a3,1
    # Line 372
    lbu	$at,-1($a3)
    # Line 373
    sw	$t1,-12($t2)
    # Line 364
    addiu	$t1,$t1,1
    # Line 372
    sll	$at,$at,0x8
    sh	$at,-4($t2)
.L0f130890:
    sd	$t1,3080($sp)
    move	$v0,$t1
    move	$at,$t2
    move	$a2,$t9
    move	$t8,$a3
    move	$t3,$a7
    move	$a7,$t3
    ld	$a4,3088($sp)
    move	$a3,$t8
    sd	$t2,3072($sp)
    sra	$a4,$a4,0x1
    beqz	$a4,.L0f130940
    ld	$t9,3072($sp)
    move	$t2,$a2
    ld	$t1,3080($sp)
.L0f1308cc:
    # Line 368
    sb	$a6,10($t9)
    # Line 370
    lbu	$at,0($t2)
    sll	$at,$at,0x8
    sh	$at,4($t9)
    # Line 371
    lbu	$a4,0($a7)
    sll	$a4,$a4,0x8
    sh	$a4,6($t9)
    # Line 372
    lbu	$v1,0($a3)
    sll	$v1,$v1,0x8
    sh	$v1,8($t9)
    # Line 373
    sw	$t1,0($t9)
    # Line 368
    sb	$a6,22($t9)
    # Line 370
    lbu	$v0,1($t2)
    # Line 364
    addiu	$t2,$t2,2
    # Line 370
    sll	$v0,$v0,0x8
    sh	$v0,16($t9)
    # Line 364
    addiu	$a7,$a7,2
    # Line 371
    lbu	$at,-1($a7)
    # Line 364
    addiu	$a3,$a3,2
    addiu	$t9,$t9,24
    # Line 371
    sll	$at,$at,0x8
    sh	$at,-6($t9)
    # Line 364
    addiu	$a4,$t1,1
    # Line 372
    lbu	$v1,-1($a3)
    # Line 364
    addiu	$t1,$a4,1
    # Line 373
    sw	$a4,-12($t9)
    # Line 372
    sll	$v1,$v1,0x8
    # Line 364
    bne	$t9,$a5,.L0f1308cc
    # Line 372
    sh	$v1,-4($t9)
.L0f130940:
    sd	$ra,3112($sp)
.L0f130944:
    # Line 375
    la	$t9,XStoreColors
    move	$a3,$t0
    sd	$ra,3112($sp)
    jalr	$t9
    addiu	$a2,$sp,0
    # Line 376
    ld	$ra,3112($sp)
    ld	$gp,3104($sp)
    jr	$ra
    addiu	$sp,$sp,3184
.end __iglooStoreColors

# Function: __iglooFillColormap
# Declared: Line 378 (Source lines: 381-412)
# Address: 0x0f130968 - 0x0f130a6c (Size: 260 bytes, Frame: 224)
.globl __iglooFillColormap
.ent __iglooFillColormap
__iglooFillColormap:
    # Line 381
    sll	$t1,$a5,0x8
    addiu	$sp,$sp,-3168
    subu	$at,$a3,$a2
    addiu	$a3,$sp,0
    sd	$gp,3088($sp)
    lui	$v0,0xfff0
    addiu	$v0,$v0,10464
    addiu	$t2,$at,1
    slti	$at,$at,0
    sll	$t3,$t2,0x2
    bnez	$at,.L0f130a48
    nop	# was addu	$gp,$t9,$v0 ($gp setup in delay)
    sll	$t0,$a4,0x8
    li	$t8,7
    sd	$t2,3080($sp)
    sd	$a3,3072($sp)
    sll	$a3,$a6,0x8
    move	$t9,$a2
    addiu	$at,$sp,0
    subu	$t3,$t3,$t2
    move	$v1,$t2
    andi	$v1,$t2,0x1
    sll	$t3,$t3,0x2
    addu	$t3,$t3,$at
    beqz	$v1,.L0f1309f0
    ld	$a2,3072($sp)
    ld	$a2,3072($sp)
    # Line 400
    addiu	$a2,$a2,12
    # Line 409
    sw	$t9,-12($a2)
    # Line 400
    addiu	$t9,$t9,1
    # Line 408
    sh	$a3,-4($a2)
    # Line 407
    sh	$t1,-6($a2)
    # Line 406
    sh	$t0,-8($a2)
    # Line 404
    sb	$t8,-2($a2)
.L0f1309f0:
    ld	$a7,3080($sp)
    move	$a6,$a2
    move	$a5,$t9
    sra	$a7,$a7,0x1
    beqz	$a7,.L0f130a44
    move	$a4,$a5
    move	$a2,$a6
.L0f130a0c:
    # Line 408
    sh	$a3,20($a2)
    # Line 407
    sh	$t1,18($a2)
    # Line 406
    sh	$t0,16($a2)
    # Line 404
    sb	$t8,22($a2)
    # Line 408
    sh	$a3,8($a2)
    # Line 407
    sh	$t1,6($a2)
    # Line 406
    sh	$t0,4($a2)
    # Line 404
    sb	$t8,10($a2)
    # Line 400
    addiu	$a2,$a2,24
    # Line 409
    sw	$a4,-24($a2)
    # Line 400
    addiu	$at,$a4,1
    addiu	$a4,$at,1
    bne	$a2,$t3,.L0f130a0c
    # Line 409
    sw	$at,-12($a2)
.L0f130a44:
    sd	$ra,3096($sp)
.L0f130a48:
    # Line 411
    la	$t9,XStoreColors
    move	$a3,$t2
    sd	$ra,3096($sp)
    jalr	$t9
    addiu	$a2,$sp,0
    # Line 412
    ld	$ra,3096($sp)
    ld	$gp,3088($sp)
    jr	$ra
    addiu	$sp,$sp,3168
.end __iglooFillColormap

# Function: __iglooSoftPupInitColormap
# Declared: Line 416 (Source lines: 417-437)
# Address: 0x0f130a6c - 0x0f130b6c (Size: 256 bytes, Frame: 224)
.globl __iglooSoftPupInitColormap
.ent __iglooSoftPupInitColormap
__iglooSoftPupInitColormap:
    # Line 423
    move	$a6,$zero
    move	$a5,$zero
    move	$a4,$zero
    # Line 417
    addiu	$sp,$sp,-96
    sd	$s0,8($sp)
    move	$s0,$a2
    # Line 423
    li	$a2,1
    sd	$s1,24($sp)
    # Line 417
    move	$s1,$a1
    sd	$s2,0($sp)
    move	$s2,$a0
    sd	$s8,32($sp)
    sd	$gp,40($sp)
    sd	$ra,16($sp)
    lui	$ra,0xfff0
    addiu	$ra,$ra,10204
    addu	$gp,$t9,$ra
    # Line 423
    la	$t9,__iglooFillColormap
    li	$s8,1
    sllv	$s8,$s8,$s0
    bal __iglooFillColormap
    addiu	$a3,$s8,-1
    # Line 428
    move	$a6,$zero
    move	$a5,$zero
    li	$a4,255
    move	$a2,$s8
    move	$a1,$s1
    move	$a0,$s2
    li	$a3,2
    la	$t9,__iglooFillColormap
    sllv	$a3,$a3,$s0
    sd	$a3,48($sp)
    bal __iglooFillColormap
    addiu	$a3,$a3,-1
    # Line 432
    move	$a6,$zero
    move	$a5,$zero
    move	$a4,$zero
    ld	$a2,48($sp)
    move	$a1,$s1
    move	$a0,$s2
    la	$t9,__iglooFillColormap
    li	$s8,3
    sllv	$s8,$s8,$s0
    bal __iglooFillColormap
    addiu	$a3,$s8,-1
    # Line 436
    move	$a0,$s2
    move	$a1,$s1
    move	$a2,$s8
    li	$a6,255
    li	$a5,255
    li	$a4,255
    la	$t9,__iglooFillColormap
    li	$a3,4
    sllv	$a3,$a3,$s0
    bal __iglooFillColormap
    addiu	$a3,$a3,-1
    ld	$gp,40($sp)
    # Line 437
    ld	$s0,8($sp)
    ld	$s1,24($sp)
    ld	$ra,16($sp)
    ld	$s2,0($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __iglooSoftPupInitColormap

.late_rodata
jtbl_0f026e18:
    .word .L0f130654
    .word .L0f1306c0
    .word .L0f13064c
    .word .L0f1306c0
    .word .L0f13064c
    .word .L0f130618
    .word .L0f130618
    .word .L0f130618
    .word .L0f130618
    .word .L0f130618
    .word .L0f130618

