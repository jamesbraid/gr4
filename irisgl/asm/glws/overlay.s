# Source: ../igloo/glws/overlay.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/overlay.c -o overlay.T
# Total Functions: 7

.text

# Function: gl_nextunder
# Declared: Line 8 (Source lines: 9-11)
# Address: 0x0f0f6254 - 0x0f0f6274 (Size: 32 bytes, Frame: 0)
.globl gl_nextunder
.ent gl_nextunder
gl_nextunder:
    # Line 9
    lui	$v1,0xfff4
    addiu	$v1,$v1,-12300
    addu	$at,$t9,$v1
    # Line 11
    lw	$v0,-23296($at)
    lw	$v0,0($v0)
    lw	$v0,276($v0)
    jr	$ra
    lw	$v0,32($v0)
.end gl_nextunder

# Function: _GLfindVis
# Declared: Line 14 (Source lines: 17-50)
# Address: 0x0f0f6274 - 0x0f0f6398 (Size: 292 bytes, Frame: 0)
.ent _GLfindVis
_GLfindVis:
    # Line 17
    la	$a5,gl_sstatep
    # Line 48
    move	$v0,$zero
    # Line 45
    li	$v1,-1
    # Line 17
    lw	$a5,0($a5)
    # Line 19
    slti	$at,$a1,16
    bnez	$at,.L0f0f62ac
    # Line 17
    lw	$a5,28($a5)
    # Line 19
    slti	$at,$a1,17
    beqz	$at,.L0f0f62f8
    slti	$a3,$a1,64
    # Line 44
    lw	$v0,16($a0)
.L0f0f62a0:
    # Line 45
    sw	$v1,0($a2)
    # Line 50
    jr	$ra
    nop
.L0f0f62ac:
    # Line 19
    slti	$a3,$a1,2
    bnez	$a3,.L0f0f62d8
    slti	$a4,$a1,3
    beqz	$a4,.L0f0f633c
.L0f0f62bc:
    # Line 23
    la	$at,__iglooSoftPupPlanes
    lw	$at,0($at)
    # Line 30
    li	$v1,1
    # Line 23
    beqz	$at,.L0f0f6374
    # Line 24
    addiu	$v0,$a5,20
    # Line 50
    jr	$ra
    # Line 25
    sw	$zero,0($a2)
.L0f0f62d8:
    # Line 19
    blez	$a1,.L0f0f6364
    nop
    slti	$v1,$a1,2
    beqz	$v1,.L0f0f6348
    nop
    # Line 40
    sw	$zero,0($a2)
.L0f0f62f0:
    # Line 50
    jr	$ra
    # Line 39
    addiu	$v0,$a5,20
.L0f0f62f8:
    # Line 19
    bnez	$a3,.L0f0f6350
    slti	$a4,$a1,65
    bnez	$a4,.L0f0f62bc
    li	$at,128
    bne	$a1,$at,.L0f0f6348
    nop
    # Line 34
    la	$v0,gl_wstatep
.L0f0f6314:
    lw	$v0,0($v0)
    lw	$v0,244($v0)
    # Line 35
    li	$v1,2
    sw	$v1,0($a2)
    # Line 34
    andi	$v0,$v0,0xff00
    sra	$v0,$v0,0x8
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$a5
    # Line 50
    jr	$ra
    # Line 34
    addiu	$v0,$v0,20
.L0f0f633c:
    # Line 19
    li	$v1,3
    beql	$a1,$v1,.L0f0f6314
    # Line 34
    la	$v0,gl_wstatep
.L0f0f6348:
    # Line 48
    jr	$ra
    nop
.L0f0f6350:
    # Line 19
    li	$a3,32
    bne	$a1,$a3,.L0f0f6348
    nop
    b	.L0f0f62f0
    # Line 40
    sw	$zero,0($a2)
.L0f0f6364:
    # Line 19
    bnez	$a1,.L0f0f6348
    nop
    b	.L0f0f62a0
    # Line 44
    lw	$v0,16($a0)
.L0f0f6374:
    # Line 29
    la	$v0,gl_wstatep
    lw	$v0,0($v0)
    lw	$v0,244($v0)
    # Line 30
    sw	$v1,0($a2)
    # Line 29
    andi	$v0,$v0,0xff
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$a5
    # Line 50
    jr	$ra
    # Line 29
    addiu	$v0,$v0,20
.end _GLfindVis

# Function: _GLcreateOvWin
# Declared: Line 53 (Source lines: 55-101)
# Address: 0x0f0f6398 - 0x0f0f64d8 (Size: 320 bytes, Frame: 176)
.ent _GLcreateOvWin
_GLcreateOvWin:
    # Line 55
    addiu	$sp,$sp,-176
    sd	$s2,96($sp)
    # Line 57
    lw	$s2,4($a0)
    # Line 61
    lui	$v1,0x20
    ori	$v1,$v1,0x8030
    sw	$v1,72($sp)
    # Line 63
    lw	$v0,4($a1)
    lw	$v0,4($v0)
    # Line 65
    sw	$zero,36($sp)
    # Line 64
    sw	$zero,44($sp)
    # Line 63
    sw	$v0,84($sp)
    # Line 55
    move	$t1,$a2
    # Line 66
    lw	$at,84($a0)
    sd	$s0,104($sp)
    # Line 55
    move	$s0,$a0
    # Line 66
    sw	$at,88($sp)
    sd	$s1,112($sp)
    lw	$a4,56($a0)
    # Line 55
    move	$s1,$a1
    sd	$s8,120($sp)
    # Line 66
    beqz	$a4,.L0f0f64cc
    # Line 55
    move	$s8,$a3
.L0f0f63f0:
    # Line 68
    lw	$a5,60($s0)
    beqz	$a5,.L0f0f64bc
.L0f0f63f8:
    # Line 70
    move	$a6,$zero
    move	$a3,$zero
    move	$a2,$zero
    move	$a0,$s2
    sd	$ra,128($sp)
    lw	$t0,4($s1)
    addiu	$t2,$sp,32
    la	$t9,XCreateWindow
    lw	$t0,0($t0)
    move	$a1,$t1
    li	$t1,1
    lw	$a7,12($t0)
    sw	$t1,4($sp)
    li	$t1,26634
    lw	$t0,0($t0)
    sw	$t2,28($sp)
    sw	$t1,20($sp)
    jalr	$t9
    sw	$t0,12($sp)
    sll	$t2,$s8,0x2
    addu	$t2,$t2,$s0
    sw	$v0,136($t2)
    # Line 84
    lw	$t1,4($s1)
    # Line 70
    move	$a1,$v0
    # Line 84
    lw	$t1,0($t1)
    # Line 85
    move	$a0,$s2
    la	$t9,XMapWindow
    # Line 84
    lw	$t1,0($t1)
    sd	$t2,136($sp)
    # Line 85
    jalr	$t9
    # Line 84
    sw	$t1,148($t2)
    # Line 93
    move	$a0,$s2
    move	$a1,$s0
    ld	$s8,136($sp)
    lw	$a2,4($s1)
    lbu	$a3,44($s0)
    la	$t9,__iglooCreateContextInfo
    lw	$a2,0($a2)
    xori	$a3,$a3,0x5
    jalr	$t9
    sltiu	$a3,$a3,1
    # Line 101
    ld	$s0,104($sp)
    ld	$s1,112($sp)
    ld	$s2,96($sp)
    ld	$ra,128($sp)
    # Line 93
    sw	$v0,160($s8)
    # Line 101
    ld	$s8,120($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0f0f64bc:
    sd	$ra,128($sp)
    # Line 69
    li	$a5,1000
    b	.L0f0f63f8
    sw	$a5,60($s0)
.L0f0f64cc:
    # Line 68
    li	$a4,1000
    b	.L0f0f63f0
    sw	$a4,56($s0)
.end _GLcreateOvWin

# Function: gl_wmdrawmode
# Declared: Line 105 (Source lines: 106-355)
# Address: 0x0f0f64d8 - 0x0f0f6a80 (Size: 1448 bytes, Frame: 240)
.globl gl_wmdrawmode
.ent gl_wmdrawmode
gl_wmdrawmode:
    # Line 117
    move	$a1,$a0
    # Line 106
    addiu	$sp,$sp,-112
    sd	$s4,80($sp)
    # Line 117
    addiu	$a2,$sp,0
    sd	$zero,8($sp)
    sd	$s5,32($sp)
    # Line 112
    move	$s5,$zero
    sd	$s1,40($sp)
    sd	$s2,72($sp)
    sd	$gp,56($sp)
    sd	$s3,64($sp)
    # Line 106
    lui	$s3,0xfff4
    addiu	$s3,$s3,-12944
    addu	$gp,$t9,$s3
    # Line 115
    la	$s2,gl_wstatep
    # Line 106
    move	$s1,$a0
    sd	$ra,48($sp)
    # Line 115
    lw	$s2,0($s2)
    # Line 117
    la	$t9,sub_0f0f0000
    # Line 111
    move	$s3,$zero
    # Line 115
    lw	$s2,224($s2)
    # Line 117
    addiu	$t9,$t9,25204
    bal gl_nextunder
    move	$a0,$s2
    beqz	$v0,.L0f0f6894
    move	$s4,$v0
    # Line 121
    li	$at,16
    beq	$s1,$at,.L0f0f69f0
    li	$v1,2
    beq	$s1,$v1,.L0f0f6888
    li	$a4,64
    beq	$s1,$a4,.L0f0f6888
    li	$a5,3
    beq	$s1,$a5,.L0f0f68fc
    li	$at,128
    beql	$s1,$at,.L0f0f6900
    # Line 137
    lw	$s3,32($s2)
.L0f0f656c:
    # Line 141
    beqz	$s3,.L0f0f65a8
    lw	$a4,0($sp)
    lw	$v1,4($s4)
    sll	$a4,$a4,0x2
    lw	$v1,0($v1)
    addu	$a4,$a4,$s2
    lw	$a4,148($a4)
    lw	$v1,0($v1)
    bnel	$v1,$a4,.L0f0f65ac
    # Line 155
    lw	$at,180($s2)
    # Line 151
    lw	$a4,32($s2)
    nor	$a5,$s3,$zero
    # Line 152
    move	$s3,$zero
    # Line 151
    and	$a4,$a4,$a5
    sw	$a4,32($s2)
.L0f0f65a8:
    # Line 155
    lw	$at,180($s2)
.L0f0f65ac:
    bne	$at,$s1,.L0f0f65bc
    # Line 163
    li	$a4,4
    # Line 155
    beqz	$s3,.L0f0f69b4
    nop
.L0f0f65bc:
    # Line 163
    lbu	$v1,44($s2)
    sd	$s0,88($sp)
    beq	$v1,$a4,.L0f0f6908
    move	$s0,$s2
.L0f0f65cc:
    # Line 166
    move	$at,$s0
    li	$a5,16
    beq	$s1,$a5,.L0f0f6910
    sd	$s0,16($sp)
    beqz	$s1,.L0f0f6918
    nop
    # Line 170
    beqz	$s3,.L0f0f6634
    sd	$zero,24($sp)
    lw	$a0,0($sp)
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s0
    lw	$v0,136($a0)
    beqzl	$v0,.L0f0f69a4
    # Line 193
    lw	$a5,32($s2)
    # Line 183
    sw	$zero,136($a0)
    # Line 184
    lw	$a5,0($sp)
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$s0
    sw	$zero,148($a5)
    # Line 186
    lw	$a4,0($sp)
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$s0
    lw	$a5,160($a4)
    # Line 182
    move	$s5,$v0
    # Line 188
    sw	$zero,160($a4)
    sd	$a5,8($sp)
.L0f0f6634:
    # Line 193
    lw	$v0,0($sp)
    sll	$at,$v0,0x2
    addu	$at,$at,$s0
    lw	$at,136($at)
    beqz	$at,.L0f0f6920
    # Line 205
    li	$at,128
    # Line 236
    lw	$v0,72($s0)
.L0f0f6650:
    # Line 239
    beqz	$v0,.L0f0f66dc
    move	$s0,$v0
    b	.L0f0f6690
    lw	$v0,0($sp)
.L0f0f6660:
    la	$t9,sub_0f0f0000
    # Line 249
    move	$a1,$s4
    lw	$a2,8($s0)
    addiu	$t9,$t9,25496
    bal gl_nextunder
    move	$a3,$v0
    ld	$at,24($sp)
.L0f0f667c:
    # Line 251
    addiu	$at,$at,1
    sd	$at,24($sp)
.L0f0f6684:
    # Line 239
    lw	$s0,76($s0)
    beqz	$s0,.L0f0f66dc
    lw	$v0,0($sp)
.L0f0f6690:
    sll	$v1,$v0,0x2
    addu	$v1,$v1,$s0
    lw	$v1,136($v1)
    li	$a5,3
    bnez	$v1,.L0f0f6684
    li	$a4,128
    # Line 243
    beq	$s1,$a4,.L0f0f66bc
    # Line 245
    move	$a0,$s0
    # Line 243
    bne	$s1,$a5,.L0f0f6660
    # Line 249
    move	$a0,$s0
    # Line 245
    move	$a0,$s0
.L0f0f66bc:
    la	$t9,sub_0f0f0000
    move	$a1,$s4
    lw	$a2,64($s0)
    addiu	$t9,$t9,25496
    bal gl_nextunder
    move	$a3,$v0
    b	.L0f0f667c
    ld	$at,24($sp)
.L0f0f66dc:
    ld	$at,24($sp)
    # Line 239
    beqz	$at,.L0f0f6740
    ld	$s0,88($sp)
    # Line 257
    li	$v1,128
    beq	$s1,$v1,.L0f0f69bc
    li	$a4,3
    beq	$s1,$a4,.L0f0f69c0
    # Line 259
    la	$t9,XLowerWindow
    la	$a0,gl_sstatep
.L0f0f6700:
    # Line 262
    lw	$a0,0($a0)
    la	$t9,XSync
    lw	$a0,28($a0)
    move	$a1,$zero
    jalr	$t9
    lw	$a0,4($a0)
    # Line 263
    la	$t9,_GLsetwmcolormaps
    ld	$a0,16($sp)
    jalr	$t9
    move	$a1,$zero
    la	$a0,gl_sstatep
    # Line 264
    lw	$a0,0($a0)
    la	$t9,XFlush
    lw	$a0,28($a0)
    jalr	$t9
    lw	$a0,4($a0)
.L0f0f6740:
    # Line 255
    beqz	$s5,.L0f0f6774
    ld	$a1,8($sp)
    # Line 274
    lw	$a0,4($s2)
    # Line 270
    lw	$a2,32($s2)
    # Line 274
    la	$t9,__iglooDestroyContextInfo
    # Line 270
    nor	$a3,$s3,$zero
    and	$a2,$a2,$a3
    # Line 274
    jalr	$t9
    # Line 270
    sw	$a2,32($s2)
    # Line 276
    la	$t9,XDestroyWindow
    move	$a1,$s5
    jalr	$t9
    lw	$a0,4($s2)
.L0f0f6774:
    lw	$a4,32($s2)
    li	$a5,16
    andi	$a4,$a4,0x30
    beq	$a4,$a5,.L0f0f6a10
    la	$a0,gl_sstatep
    # Line 288
    sw	$s1,180($s2)
.L0f0f678c:
    ld	$s4,80($sp)
.L0f0f6790:
    lw	$v0,0($sp)
    li	$a5,-1
    beq	$v0,$a5,.L0f0f67bc
    # Line 302
    move	$a2,$s2
    lw	$a0,4($s2)
    sll	$a1,$v0,0x2
    la	$t9,__iglooMakeCurrent
    addu	$a1,$a1,$s2
    lw	$a3,160($a1)
    jalr	$t9
    lw	$a1,136($a1)
.L0f0f67bc:
    # Line 306
    lw	$s3,32($s2)
    andi	$s3,$s3,0x2000
    beqz	$s3,.L0f0f6868
    # Line 309
    la	$t9,gl_nextunder
    bal gl_nextunder
    # Line 308
    move	$s1,$zero
    # Line 309
    bnezl	$v0,.L0f0f685c
    # Line 353
    lw	$a4,32($s2)
    # Line 311
    lbu	$at,44($s2)
    sd	$s0,88($sp)
    li	$v1,4
    beq	$at,$v1,.L0f0f6a50
    move	$s0,$s2
.L0f0f67f0:
    # Line 314
    lw	$a4,144($s0)
    beqz	$a4,.L0f0f6824
    # Line 321
    la	$t9,__iglooDestroyContextInfo
    lw	$a1,168($s0)
    jalr	$t9
    lw	$a0,4($s0)
    # Line 325
    la	$t9,XDestroyWindow
    lw	$a1,144($s0)
    lw	$a0,4($s0)
    jalr	$t9
    # Line 323
    sw	$zero,168($s0)
    # Line 329
    li	$s1,1
    # Line 326
    sw	$zero,144($s0)
.L0f0f6824:
    # Line 332
    lw	$s0,72($s0)
    beqz	$s0,.L0f0f6838
    nop
    b	.L0f0f68c8
    lw	$at,144($s0)
.L0f0f6838:
    beqz	$s1,.L0f0f6858
    ld	$s0,88($sp)
    la	$a0,gl_sstatep
    # Line 350
    lw	$a0,0($a0)
    la	$t9,XFlush
    lw	$a0,28($a0)
    jalr	$t9
    lw	$a0,4($a0)
.L0f0f6858:
    # Line 353
    lw	$a4,32($s2)
.L0f0f685c:
    nor	$a5,$s3,$zero
    and	$a4,$a4,$a5
    sw	$a4,32($s2)
.L0f0f6868:
    ld	$gp,56($sp)
    # Line 355
    ld	$s1,40($sp)
    ld	$s2,72($sp)
    ld	$ra,48($sp)
    ld	$s3,64($sp)
    ld	$s5,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f0f6888:
    # Line 133
    lw	$s3,32($s2)
    # Line 134
    b	.L0f0f656c
    # Line 133
    andi	$s3,$s3,0x1000
.L0f0f6894:
    ld	$gp,56($sp)
    # Line 119
    ld	$s1,40($sp)
    ld	$s2,72($sp)
    ld	$s3,64($sp)
    ld	$ra,48($sp)
    ld	$s4,80($sp)
    ld	$s5,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0f0f68b8:
    # Line 332
    lw	$s0,76($s0)
    beqz	$s0,.L0f0f6838
    nop
    lw	$at,144($s0)
.L0f0f68c8:
    beqz	$at,.L0f0f68b8
    # Line 337
    la	$t9,__iglooDestroyContextInfo
    lw	$a1,168($s0)
    # Line 344
    addiu	$s1,$s1,1
    # Line 337
    jalr	$t9
    lw	$a0,4($s0)
    # Line 341
    la	$t9,XDestroyWindow
    lw	$a1,144($s0)
    lw	$a0,4($s0)
    jalr	$t9
    # Line 339
    sw	$zero,168($s0)
    b	.L0f0f68b8
    # Line 342
    sw	$zero,144($s0)
.L0f0f68fc:
    # Line 137
    lw	$s3,32($s2)
.L0f0f6900:
    b	.L0f0f656c
    andi	$s3,$s3,0x2000
.L0f0f6908:
    b	.L0f0f65cc
    # Line 165
    lw	$s0,68($s2)
.L0f0f6910:
    b	.L0f0f6740
    ld	$s0,88($sp)
.L0f0f6918:
    b	.L0f0f6740
    ld	$s0,88($sp)
.L0f0f6920:
    # Line 205
    beq	$s1,$at,.L0f0f6a58
    li	$v1,3
    beq	$s1,$v1,.L0f0f6a58
    nop
    # Line 211
    lw	$a2,8($s0)
.L0f0f6934:
    la	$t9,sub_0f0f0000
    # Line 214
    move	$a0,$s0
    move	$a1,$s4
    # Line 211
    addiu	$t9,$t9,25496
    # Line 214
    bal gl_nextunder
    move	$a3,$v0
    # Line 216
    li	$at,2
    beq	$s1,$at,.L0f0f6a60
    li	$v1,64
    beq	$s1,$v1,.L0f0f6a60
    li	$a4,3
    beq	$s1,$a4,.L0f0f6a70
    li	$a5,128
    beql	$s1,$a5,.L0f0f6a74
    # Line 224
    lw	$a5,32($s2)
.L0f0f6970:
    # Line 226
    lw	$v0,72($s0)
    beqz	$v0,.L0f0f6998
    # Line 234
    lw	$a1,0($sp)
    lw	$a0,4($s0)
    la	$t9,XLowerWindow
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$s0
    jalr	$t9
    lw	$a1,136($a1)
    lw	$v0,72($s0)
.L0f0f6998:
    # Line 236
    li	$a4,1
    b	.L0f0f6650
    sd	$a4,24($sp)
.L0f0f69a4:
    # Line 193
    nor	$at,$s3,$zero
    and	$a5,$a5,$at
    b	.L0f0f6634
    sw	$a5,32($s2)
.L0f0f69b4:
    b	.L0f0f6790
    ld	$s4,80($sp)
.L0f0f69bc:
    # Line 259
    la	$t9,XLowerWindow
.L0f0f69c0:
    # Line 257
    la	$a0,gl_sstatep
    # Line 259
    lw	$a1,0($sp)
    ld	$a2,16($sp)
    lw	$a0,0($a0)
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    lw	$a0,28($a0)
    lw	$a1,136($a1)
    jalr	$t9
    lw	$a0,4($a0)
    b	.L0f0f6700
    la	$a0,gl_sstatep
.L0f0f69f0:
    # Line 128
    lw	$a3,24($s2)
    la	$t9,__iglooMakeCurrent
    move	$a2,$s2
    lw	$a1,8($s2)
    jalr	$t9
    lw	$a0,4($s2)
    b	.L0f0f656c
    nop
.L0f0f6a10:
    # Line 285
    lw	$a0,0($a0)
    lw	$a1,4($s4)
    la	$t9,XInstallColormap
    lw	$a0,28($a0)
    lw	$a1,4($a1)
    jalr	$t9
    lw	$a0,4($a0)
    la	$a0,gl_sstatep
    # Line 286
    lw	$a0,0($a0)
    la	$t9,XFlush
    lw	$a0,28($a0)
    ld	$s4,80($sp)
    jalr	$t9
    lw	$a0,4($a0)
    b	.L0f0f678c
    # Line 288
    sw	$s1,180($s2)
.L0f0f6a50:
    b	.L0f0f67f0
    # Line 314
    lw	$s0,68($s2)
.L0f0f6a58:
    # Line 207
    b	.L0f0f6934
    lw	$a2,64($s0)
.L0f0f6a60:
    # Line 220
    lw	$a4,32($s2)
    ori	$a4,$a4,0x4000
    # Line 221
    b	.L0f0f6970
    # Line 220
    sw	$a4,32($s2)
.L0f0f6a70:
    # Line 224
    lw	$a5,32($s2)
.L0f0f6a74:
    ori	$a5,$a5,0x8000
    b	.L0f0f6970
    sw	$a5,32($s2)
.end gl_wmdrawmode

# Function: _GLcreateOvWindows
# Declared: Line 359 (Source lines: 360-387)
# Address: 0x0f0f6a80 - 0x0f0f6cb4 (Size: 564 bytes, Frame: 224)
.globl _GLcreateOvWindows
.ent _GLcreateOvWindows
_GLcreateOvWindows:
    # Line 368
    li	$a2,64
    # Line 360
    addiu	$sp,$sp,-96
    sd	$s4,24($sp)
    sd	$gp,32($sp)
    # lui	v0,0xfff4 (gp disp hi)
    # addiu	v0,v0,-14392 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 363
    lw	$at,-14600($gp)
    move	$s4,$zero
    sd	$s2,16($sp)
    beqz	$at,.L0f0f6bcc
    # Line 360
    move	$s2,$a1
    sd	$s3,56($sp)
    sd	$s0,48($sp)
    sd	$s1,40($sp)
    # Line 366
    sw	$zero,-14600($gp)
    la	$a1,sub_0f040000
    # Line 367
    li	$v1,32
    # Line 369
    li	$at,128
    # Line 366
    addiu	$a1,$a1,-30376
    # Line 369
    sw	$at,8($a1)
    # Line 368
    sw	$a2,4($a1)
    # Line 367
    sw	$v1,0($a1)
.L0f0f6adc:
    # Line 369
    move	$s1,$zero
    move	$a2,$a1
    sd	$a1,8($sp)
    addiu	$s3,$a0,12
    move	$s0,$a0
    lw	$at,136($s0)
    # Line 372
    addiu	$s0,$s0,4
    # Line 369
    beqz	$at,.L0f0f6b0c
    addu	$v0,$s1,$s2
    lw	$v0,136($v0)
    beqz	$v0,.L0f0f6be4
    # Line 377
    move	$a0,$s2
.L0f0f6b0c:
    # Line 372
    beq	$s0,$s3,.L0f0f6b50
    addiu	$s1,$s1,4
    # Line 369
    lw	$v1,136($s0)
    addu	$a2,$s1,$s2
    beqz	$v1,.L0f0f6b30
    # Line 372
    addiu	$s0,$s0,4
    # Line 369
    lw	$a2,136($a2)
    beqz	$a2,.L0f0f6c28
    # Line 377
    move	$a0,$s2
.L0f0f6b30:
    # Line 372
    beq	$s0,$s3,.L0f0f6b50
    addiu	$s1,$s1,4
    # Line 369
    lw	$at,136($s0)
    beqz	$at,.L0f0f6b50
    ld	$s3,56($sp)
    addu	$v0,$s1,$s2
    lw	$v0,136($v0)
    beqz	$v0,.L0f0f6c6c
.L0f0f6b50:
    move	$v1,$s4
    ld	$s4,24($sp)
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    # Line 372
    beqz	$v1,.L0f0f6bbc
    ld	$s3,56($sp)
    # Line 383
    la	$a0,gl_sstatep
    move	$a1,$zero
    lw	$a0,0($a0)
    ld	$s4,24($sp)
    la	$t9,XSync
    lw	$a0,28($a0)
    sd	$ra,64($sp)
    jalr	$t9
    lw	$a0,4($a0)
    # Line 384
    la	$t9,_GLsetwmcolormaps
    move	$a0,$s2
    jalr	$t9
    move	$a1,$zero
    la	$a0,gl_sstatep
    # Line 385
    lw	$a0,0($a0)
    la	$t9,XFlush
    lw	$a0,28($a0)
    ld	$s2,16($sp)
    jalr	$t9
    lw	$a0,4($a0)
    ld	$ra,64($sp)
.L0f0f6bbc:
    ld	$gp,32($sp)
    # Line 387
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0f0f6bcc:
    sd	$s3,56($sp)
    sd	$s0,48($sp)
    # Line 369
    la	$a1,sub_0f040000
    sd	$s1,40($sp)
    b	.L0f0f6adc
    addiu	$a1,$a1,-30376
.L0f0f6be4:
    # Line 377
    addiu	$a2,$sp,0
    la	$t9,sub_0f0f0000
    sd	$ra,64($sp)
    ld	$a1,8($sp)
    addiu	$t9,$t9,25204
    bal gl_nextunder
    lw	$a1,0($a1)
    move	$a1,$v0
    la	$t9,sub_0f0f0000
    # Line 378
    move	$a0,$s2
    lw	$a3,0($sp)
    addiu	$t9,$t9,25496
    bal gl_nextunder
    lw	$a2,8($s2)
    # Line 379
    addiu	$s4,$s4,1
    b	.L0f0f6b0c
    ld	$ra,64($sp)
.L0f0f6c28:
    # Line 377
    addiu	$a2,$sp,0
    la	$t9,sub_0f0f0000
    sd	$ra,64($sp)
    ld	$a1,8($sp)
    addiu	$t9,$t9,25204
    bal gl_nextunder
    lw	$a1,4($a1)
    move	$a1,$v0
    la	$t9,sub_0f0f0000
    # Line 378
    move	$a0,$s2
    lw	$a3,0($sp)
    addiu	$t9,$t9,25496
    bal gl_nextunder
    lw	$a2,8($s2)
    # Line 379
    addiu	$s4,$s4,1
    b	.L0f0f6b30
    ld	$ra,64($sp)
.L0f0f6c6c:
    # Line 377
    move	$a0,$s2
    addiu	$a2,$sp,0
    la	$t9,sub_0f0f0000
    sd	$ra,64($sp)
    ld	$a1,8($sp)
    addiu	$t9,$t9,25204
    bal gl_nextunder
    lw	$a1,8($a1)
    move	$a1,$v0
    la	$t9,sub_0f0f0000
    # Line 378
    move	$a0,$s2
    lw	$a3,0($sp)
    addiu	$t9,$t9,25496
    bal gl_nextunder
    lw	$a2,8($s2)
    # Line 379
    addiu	$s4,$s4,1
    b	.L0f0f6b50
    ld	$ra,64($sp)
.end _GLcreateOvWindows

# Function: _GLresizeOvWindows
# Declared: Line 389 (Source lines: 390-400)
# Address: 0x0f0f6cb4 - 0x0f0f6da8 (Size: 244 bytes, Frame: 224)
.globl _GLresizeOvWindows
.ent _GLresizeOvWindows
_GLresizeOvWindows:
    # Line 392
    move	$v0,$zero
    # Line 390
    addiu	$sp,$sp,-96
    sd	$s4,16($sp)
    move	$s4,$a2
    sd	$s1,32($sp)
    # Line 392
    addiu	$s1,$a0,12
    sd	$s2,0($sp)
    # Line 391
    lw	$s2,4($a0)
    sd	$s3,8($sp)
    # Line 390
    move	$s3,$a1
    sd	$gp,40($sp)
    lui	$at,0xfff4
    sd	$s0,24($sp)
    move	$s0,$a0
    addiu	$at,$at,-14956
    # addu	gp,t9,at (gp setup)
    # Line 392
    lw	$a1,136($s0)
    # Line 394
    addiu	$s0,$s0,4
    # Line 392
    beqz	$a1,.L0f0f6d20
    # Line 396
    move	$a0,$s2
    la	$t9,XResizeWindow
    move	$a2,$s3
    sd	$ra,48($sp)
    jalr	$t9
    move	$a3,$s4
    # Line 397
    li	$v0,1
    ld	$ra,48($sp)
.L0f0f6d20:
    # Line 394
    beql	$s0,$s1,.L0f0f6d8c
    ld	$gp,40($sp)
    # Line 392
    lw	$a1,136($s0)
    beqz	$a1,.L0f0f6d54
    # Line 394
    addiu	$s0,$s0,4
    # Line 396
    move	$a0,$s2
    la	$t9,XResizeWindow
    move	$a2,$s3
    sd	$ra,48($sp)
    jalr	$t9
    move	$a3,$s4
    # Line 397
    li	$v0,1
    ld	$ra,48($sp)
.L0f0f6d54:
    # Line 394
    beql	$s0,$s1,.L0f0f6d8c
    ld	$gp,40($sp)
    # Line 392
    lw	$a1,136($s0)
    beqz	$a1,.L0f0f6d88
    ld	$s1,32($sp)
    # Line 396
    move	$a0,$s2
    la	$t9,XResizeWindow
    move	$a2,$s3
    sd	$ra,48($sp)
    jalr	$t9
    move	$a3,$s4
    # Line 397
    li	$v0,1
    ld	$ra,48($sp)
.L0f0f6d88:
    ld	$gp,40($sp)
.L0f0f6d8c:
    # Line 400
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s4,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end _GLresizeOvWindows

# Function: _GLdestroyOvWindows
# Declared: Line 403 (Source lines: 404-428)
# Address: 0x0f0f6da8 - 0x0f0f6ef0 (Size: 328 bytes, Frame: 192)
.globl _GLdestroyOvWindows
.ent _GLdestroyOvWindows
_GLdestroyOvWindows:
    # Line 404
    addiu	$sp,$sp,-64
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$s2,16($sp)
    # Line 406
    addiu	$s2,$a0,12
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$gp,32($sp)
    # Line 404
    lui	$at,0xfff4
    # Line 406
    lw	$v0,4($a0)
    # Line 404
    addiu	$at,$at,-15200
    # addu	gp,t9,at (gp setup)
    sd	$v0,0($sp)
    # Line 406
    lw	$v1,136($s0)
    beqz	$v1,.L0f0f6e24
    # Line 412
    la	$t9,__iglooDestroyContextInfo
    lw	$a1,160($s0)
    sd	$ra,40($sp)
    jalr	$t9
    lw	$a0,4($s1)
    # Line 414
    sw	$zero,160($s0)
    lbu	$a1,44($s1)
    li	$at,5
    beq	$a1,$at,.L0f0f6e20
    ld	$ra,40($sp)
    # Line 423
    la	$t9,XDestroyWindow
    ld	$a0,0($sp)
    jalr	$t9
    lw	$a1,136($s0)
    ld	$ra,40($sp)
.L0f0f6e20:
    # Line 425
    sw	$zero,136($s0)
.L0f0f6e24:
    # Line 408
    addiu	$s0,$s0,4
    beql	$s0,$s2,.L0f0f6edc
    ld	$gp,32($sp)
    # Line 406
    lw	$v0,136($s0)
    beqz	$v0,.L0f0f6e78
    # Line 412
    la	$t9,__iglooDestroyContextInfo
    lw	$a1,160($s0)
    sd	$ra,40($sp)
    jalr	$t9
    lw	$a0,4($s1)
    # Line 414
    sw	$zero,160($s0)
    lbu	$v1,44($s1)
    li	$a1,5
    beq	$v1,$a1,.L0f0f6e74
    ld	$ra,40($sp)
    # Line 423
    la	$t9,XDestroyWindow
    ld	$a0,0($sp)
    jalr	$t9
    lw	$a1,136($s0)
    ld	$ra,40($sp)
.L0f0f6e74:
    # Line 425
    sw	$zero,136($s0)
.L0f0f6e78:
    # Line 408
    addiu	$s0,$s0,4
    beql	$s0,$s2,.L0f0f6edc
    ld	$gp,32($sp)
    # Line 406
    lw	$at,136($s0)
    beqz	$at,.L0f0f6ed8
    ld	$s2,16($sp)
    # Line 412
    la	$t9,__iglooDestroyContextInfo
    lw	$a1,160($s0)
    sd	$ra,40($sp)
    jalr	$t9
    lw	$a0,4($s1)
    # Line 414
    sw	$zero,160($s0)
    lbu	$v0,44($s1)
    ld	$ra,40($sp)
    li	$v1,5
    beq	$v0,$v1,.L0f0f6ed4
    ld	$s1,8($sp)
    # Line 423
    la	$t9,XDestroyWindow
    ld	$a0,0($sp)
    lw	$a1,136($s0)
    jalr	$t9
    ld	$s1,8($sp)
    ld	$ra,40($sp)
.L0f0f6ed4:
    # Line 425
    sw	$zero,136($s0)
.L0f0f6ed8:
    ld	$gp,32($sp)
.L0f0f6edc:
    # Line 428
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end _GLdestroyOvWindows

