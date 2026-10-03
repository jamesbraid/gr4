# Source: ../pixel/px_paths.c
# Category: pixel
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../pixel/px_paths.c
# Total Functions: 43

.text

# Function: PickSpanModifiers
# Declared: Line 118 (Source lines: 120-1986)
# Address: 0x0db0d804 - 0x0db10b54 (Size: 13136 bytes, Frame: 192)
.ent PickSpanModifiers
PickSpanModifiers:
    # Line 182
    li	$a5,1
    # Line 120
    addiu	$sp,$sp,-320
    sd	$s3,256($sp)
    sd	$s0,232($sp)
    move	$s0,$a0
    sd	$s1,240($sp)
    move	$s1,$a1
    # Line 182
    lw	$v0,432($a1)
    sd	$s2,248($sp)
    # Line 120
    move	$s2,$a2
    # Line 182
    beqz	$v0,.L0db0e3c4
    sd	$zero,56($sp)
    beq	$v0,$a5,.L0db0e394
    li	$t0,2
    beq	$v0,$t0,.L0db0e5e4
    li	$at,3
    beq	$v0,$at,.L0db0e6b8
    # Line 226
    la	$t3,dummyFilter
    # Line 227
    move	$t8,$zero
    # Line 226
    sw	$t3,436($s1)
.L0db0d854:
    # Line 230
    lw	$v0,1696($s0)
    lui	$v1,0x1000
    and	$v1,$v0,$v1
    beqz	$v1,.L0db0e0ec
    nop
    lw	$a3,1160($s0)
    beqz	$a3,.L0db0e0ec
    # Line 233
    li	$a4,1
    sd	$a4,64($sp)
.L0db0d878:
    lui	$at,0x2000
    and	$at,$v0,$at
    beqz	$at,.L0db0e0f4
    nop
    lbu	$v1,1276($s0)
    beqz	$v1,.L0db0e0f4
    # Line 237
    li	$a3,1
    sd	$a3,72($sp)
.L0db0d898:
    lw	$a4,0($s2)
    beql	$a4,$t0,.L0db0e2e8
    lw	$at,4($s2)
.L0db0d8a4:
    sd	$s4,264($sp)
.L0db0d8a8:
    # Line 241
    move	$s4,$zero
.L0db0d8ac:
    # Line 248
    lw	$a0,1700($s0)
    move	$v0,$zero
    andi	$at,$a0,0x1
    beqz	$at,.L0db0e0cc
    sw	$zero,30700($s0)
    lw	$v1,4964($s0)
    beqz	$v1,.L0db0e0cc
    # Line 249
    li	$a1,1
.L0db0d8cc:
    beqz	$a1,.L0db0d8dc
    move	$t1,$a1
    # Line 252
    li	$v0,1
    sw	$v0,30700($s0)
.L0db0d8dc:
    andi	$a3,$a0,0x2
    beqz	$a3,.L0db0e0d4
    nop
    lw	$a4,5124($s0)
    beqz	$a4,.L0db0e0d4
    # Line 254
    li	$a1,1
.L0db0d8f4:
    beqz	$a1,.L0db0d904
    move	$t9,$a1
    # Line 258
    ori	$v0,$v0,0x2
    sw	$v0,30700($s0)
.L0db0d904:
    andi	$at,$a0,0x4
    beqz	$at,.L0db0e0dc
    nop
    lw	$v1,5284($s0)
    beqz	$v1,.L0db0e0dc
    # Line 261
    li	$a0,1
.L0db0d91c:
    move	$a3,$a0
    beqz	$a0,.L0db0d930
    sd	$a0,160($sp)
    # Line 265
    ori	$a4,$v0,0x4
    sw	$a4,30700($s0)
.L0db0d930:
    # Line 292
    lwc1	$f5,_lit_bf800000
    # Line 268
    lbu	$at,30697($s0)
    beqz	$at,.L0db0e1d8
    li	$v0,1
.L0db0d940:
    move	$v1,$v0
    # Line 271
    beqz	$t1,.L0db0e1f0
    sd	$v0,168($sp)
    li	$a3,1
.L0db0d950:
    sd	$a3,104($sp)
.L0db0d954:
    # Line 277
    move	$s3,$zero
    # Line 282
    lw	$a0,0($s1)
    # Line 281
    lw	$a1,4($s1)
    # Line 280
    lw	$a2,80($s1)
    # Line 286
    lw	$v0,0($s2)
    # Line 275
    lbu	$a4,736($s0)
    # Line 279
    lw	$a6,84($s1)
    # Line 286
    beq	$v0,$a5,.L0db0e0c4
    sd	$a4,88($sp)
    lw	$a7,4($s2)
    beq	$a7,$a5,.L0db0e0c4
    li	$at,4
    beq	$a7,$at,.L0db0e0c4
    # Line 292
    lwc1	$f4,_lit_3f800000
.L0db0d98c:
    # Line 305
    li	$t2,6656
    # Line 292
    c.le.s	$f5,$f4
    nop
    bc1fl	.L0db0d9c0
    sd	$zero,136($sp)
    lwc1	$f0,3284($s0)
    c.le.s	$f4,$f0
    nop
    bc1f	.L0db0d9bc
    # Line 295
    li	$v1,1
    b	.L0db0d9c0
    sd	$v1,136($sp)
.L0db0d9bc:
    sd	$zero,136($sp)
.L0db0d9c0:
    # Line 299
    c.le.s	$f4,$f5
    nop
    bc1t	.L0db0d9e4
    # Line 300
    li	$a7,1
    # Line 299
    lwc1	$f1,3284($s0)
    c.le.s	$f1,$f4
    nop
    bc1f	.L0db0e0fc
    # Line 300
    li	$a7,1
.L0db0d9e4:
    # Line 302
    lbu	$a3,72($s1)
    beqz	$a3,.L0db0e0e4
    nop
    beqz	$a7,.L0db0e0e4
    # Line 304
    li	$a4,1
    sd	$a4,152($sp)
.L0db0d9fc:
    # Line 305
    beqz	$a7,.L0db0e234
    nop
.L0db0da04:
    sd	$zero,120($sp)
.L0db0da08:
    # Line 308
    lw	$at,40($s1)
    beqzl	$at,.L0db0da30
    sd	$zero,128($sp)
    lw	$v1,36($s1)
    slti	$v1,$v1,2
    bnez	$v1,.L0db0da2c
    # Line 312
    li	$a3,1
    b	.L0db0da30
    sd	$a3,128($sp)
.L0db0da2c:
    sd	$zero,128($sp)
.L0db0da30:
    # Line 314
    lw	$a4,120($s1)
    beqz	$a4,.L0db0da54
    # Line 322
    sltiu	$a3,$a0,6405
    # Line 314
    lw	$at,116($s1)
    slti	$at,$at,2
    bnez	$at,.L0db0da54
    # Line 317
    li	$v1,1
    b	.L0db0da58
    sd	$v1,144($sp)
.L0db0da54:
    sd	$zero,144($sp)
.L0db0da58:
    # Line 322
    bnez	$a3,.L0db0df08
    sltiu	$a4,$a0,6406
    bnez	$a4,.L0db0da78
    sltiu	$at,$a0,6409
    bnez	$at,.L0db0e564
    sltiu	$v1,$a0,6410
    beqz	$v1,.L0db0e938
    li	$v1,0x8000
.L0db0da78:
    # Line 333
    lbu	$a3,12($s2)
.L0db0da7c:
    beqz	$a3,.L0db0e54c
    nop
    lbu	$a4,30576($s0)
    beqz	$a4,.L0db0e54c
    li	$t3,1
.L0db0da90:
    sb	$t3,0($sp)
.L0db0da94:
    # Line 344
    lw	$t3,8($s2)
.L0db0da98:
    li	$at,7
    beq	$t3,$at,.L0db0e244
    # Line 361
    li	$v1,1
    # Line 362
    li	$a3,1
    sd	$a3,96($sp)
    sd	$v1,216($sp)
.L0db0dab0:
    beq	$t2,$a1,.L0db0def4
    nop
.L0db0dab8:
    lw	$at,36($s1)
    lw	$a4,8($s1)
    addiu	$at,$at,-1
    and	$a4,$a4,$at
    beqz	$a4,.L0db0def4
    # Line 368
    li	$v1,1
    # Line 370
    beq	$t2,$a6,.L0db0defc
    sd	$v1,224($sp)
.L0db0dad8:
    lw	$a4,116($s1)
    lw	$a3,88($s1)
    addiu	$a4,$a4,-1
    and	$a3,$a3,$a4
    beqzl	$a3,.L0db0df00
    sd	$t3,112($sp)
    sd	$t3,112($sp)
    # Line 375
    li	$at,1
    sd	$at,24($sp)
.L0db0dafc:
    # Line 380
    li	$t3,5126
    beql	$t3,$a1,.L0db0db18
    sd	$zero,208($sp)
    lbu	$v1,429($s1)
    beqz	$v1,.L0db0e3d8
    ld	$a3,112($sp)
.L0db0db14:
    sd	$zero,208($sp)
.L0db0db18:
    # Line 387
    beql	$t3,$a6,.L0db0db30
    sd	$zero,80($sp)
    lbu	$a3,429($s1)
    beqz	$a3,.L0db0e3f4
    ld	$v1,112($sp)
.L0db0db2c:
    sd	$zero,80($sp)
.L0db0db30:
    # Line 399
    lbu	$a4,425($s1)
    beqzl	$a4,.L0db0db8c
    sd	$zero,48($sp)
    beql	$v0,$a5,.L0db0db8c
    sd	$zero,48($sp)
    beq	$t2,$a1,.L0db0db88
    li	$at,5121
    beq	$a1,$at,.L0db0db88
    li	$v1,5123
    beq	$a1,$v1,.L0db0db88
    li	$a3,5125
    beq	$a1,$a3,.L0db0db88
    li	$a4,6400
    beq	$a0,$a4,.L0db0db88
    li	$at,6401
    beq	$a0,$at,.L0db0db88
    li	$v0,6402
    beql	$v0,$a0,.L0db0ed0c
    lbu	$at,30578($s0)
    lbu	$v1,30576($s0)
.L0db0db80:
    beqz	$v1,.L0db0ee9c
    ld	$a3,104($sp)
.L0db0db88:
    sd	$zero,48($sp)
.L0db0db8c:
    # Line 409
    sltiu	$a3,$a2,6405
    bnez	$a3,.L0db0df34
    # Line 412
    sltiu	$a4,$a2,6406
    beqz	$a4,.L0db0e164
    sltiu	$a4,$a2,6409
.L0db0dba0:
    # Line 424
    sb	$zero,1($sp)
.L0db0dba4:
    # Line 434
    li	$at,-1
.L0db0dba8:
    sw	$at,264($s1)
    # Line 436
    lw	$v0,0($s2)
    beq	$v0,$t0,.L0db0e260
    ld	$v1,128($sp)
    beq	$v0,$a5,.L0db0e410
    li	$v1,3
    beq	$v0,$v1,.L0db0e620
    li	$a3,4
    beq	$v0,$a3,.L0db0e6c8
    # Line 926
    li	$a4,6408
    sd	$s8,272($sp)
    # Line 436
    lw	$s8,4($sp)
    sltiu	$t3,$a0,6406
.L0db0dbdc:
    # Line 993
    lbu	$a4,12($s2)
    beqz	$a4,.L0db0de80
    la	$a3,dummyFilter
    lbu	$at,3104($s0)
    beqz	$at,.L0db0de7c
    # Line 996
    li	$v1,6401
    beq	$a2,$v1,.L0db0de7c
    li	$a3,6402
    beq	$a2,$a3,.L0db0de80
    la	$a3,dummyFilter
    beqz	$t1,.L0db0dc1c
    # Line 1000
    la	$a4,__glSpanApplyRGBAColorTable
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    sw	$a4,356($at)
.L0db0dc1c:
    # Line 1005
    lw	$a7,436($s1)
    lw	$v0,8($a7)
    li	$v1,6407
    beq	$v1,$v0,.L0db0e7ac
    li	$a3,6408
    beq	$v0,$a3,.L0db0e8b4
    li	$a4,6409
    beq	$v0,$a4,.L0db0e9b8
    li	$at,6410
    beq	$v0,$at,.L0db0eab8
    li	$a3,0x8049
    move	$v1,$v0
    beq	$v1,$a3,.L0db0ebcc
    la	$v0,__glSpanApplyRGBAColorTable
.L0db0dc54:
    # Line 1066
    beqz	$t8,.L0db0dd34
    nop
    # Line 1076
    lwc1	$f2,656($s0)
    ldc1	$f4,_lit8_3ff0000000000000
    cvt.d.s	$f2,$f2
    c.eq.d	$f2,$f4
    nop
    bc1f	.L0db0dd24
    # Line 1085
    la	$a4,__glSpanPostConvScaleBiasRGBA
    # Line 1076
    lwc1	$f3,660($s0)
    cvt.d.s	$f3,$f3
    c.eq.d	$f3,$f4
    nop
    bc1f	.L0db0dd24
    # Line 1085
    la	$a4,__glSpanPostConvScaleBiasRGBA
    # Line 1076
    lwc1	$f0,664($s0)
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f4
    nop
    bc1f	.L0db0dd24
    # Line 1085
    la	$a4,__glSpanPostConvScaleBiasRGBA
    # Line 1076
    lwc1	$f1,668($s0)
    cvt.d.s	$f1,$f1
    c.eq.d	$f1,$f4
    nop
    bc1f	.L0db0dd24
    # Line 1085
    la	$a4,__glSpanPostConvScaleBiasRGBA
    # Line 1076
    lwc1	$f2,672($s0)
    dmtc1	$zero,$f4
    cvt.d.s	$f2,$f2
    c.eq.d	$f2,$f4
    nop
    bc1f	.L0db0dd24
    # Line 1085
    la	$a4,__glSpanPostConvScaleBiasRGBA
    # Line 1076
    lwc1	$f3,676($s0)
    cvt.d.s	$f3,$f3
    c.eq.d	$f3,$f4
    nop
    bc1f	.L0db0dd24
    # Line 1085
    la	$a4,__glSpanPostConvScaleBiasRGBA
    # Line 1076
    lwc1	$f0,680($s0)
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f4
    nop
    bc1f	.L0db0dd24
    # Line 1085
    la	$a4,__glSpanPostConvScaleBiasRGBA
    # Line 1076
    lwc1	$f1,684($s0)
    cvt.d.s	$f1,$f1
    c.eq.d	$f1,$f4
    nop
    bc1t	.L0db0dd34
    # Line 1085
    la	$a4,__glSpanPostConvScaleBiasRGBA
.L0db0dd24:
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    sw	$a4,356($at)
.L0db0dd34:
    beqzl	$t9,.L0db0dd50
    # Line 1090
    lw	$a3,30688($s0)
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    sw	$v0,356($v1)
    lw	$a3,30688($s0)
.L0db0dd50:
    li	$a4,0x8421
    beql	$a3,$a4,.L0db0ddb0
    # Line 1134
    lbu	$at,30697($s0)
    # Line 1113
    lbu	$at,30696($s0)
    li	$v1,1
    beqz	$at,.L0db0e8f8
    sd	$v1,168($sp)
    lb	$a3,30692($s0)
    bltz	$a3,.L0db0e1c4
    # Line 1130
    la	$a3,__glSpanColorMatrixSwizzWithDropRGBA
    # Line 1113
    lb	$a4,30693($s0)
    bltz	$a4,.L0db0e1c4
    # Line 1130
    la	$a3,__glSpanColorMatrixSwizzWithDropRGBA
    # Line 1123
    lb	$at,30694($s0)
    bltz	$at,.L0db0e1c4
    # Line 1130
    la	$a3,__glSpanColorMatrixSwizzWithDropRGBA
    # Line 1123
    lb	$v1,30695($s0)
    bltz	$v1,.L0db0e1c0
    # Line 1127
    la	$a3,__glSpanColorMatrixSwizzleRGBA
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    sw	$a3,356($a4)
.L0db0ddac:
    # Line 1134
    lbu	$at,30697($s0)
.L0db0ddb0:
    beq	$at,$a5,.L0db0e7f0
.L0db0ddb4:
    ld	$v1,160($sp)
    # Line 1147
    beqz	$v1,.L0db0ddd4
    ld	$a4,64($sp)
    # Line 1152
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    sw	$v0,356($a3)
    ld	$a4,64($sp)
.L0db0ddd4:
    beqz	$a4,.L0db0de20
    ld	$v1,72($sp)
    lbu	$a7,1192($s0)
    beqz	$a7,.L0db0e73c
    li	$a7,6406
    # Line 1161
    sw	$s3,264($s1)
    # Line 1163
    lw	$v0,1188($s0)
    # Line 1162
    li	$at,1
    # Line 1163
    beq	$a7,$v0,.L0db0ea84
    sd	$at,56($sp)
    li	$v1,6409
    beq	$v0,$v1,.L0db0ebb4
    li	$a3,6410
    beq	$v0,$a3,.L0db0ee54
    li	$a4,6407
    beq	$a4,$v0,.L0db0eeec
    li	$at,6408
    beq	$v0,$at,.L0db0ef50
.L0db0de1c:
    ld	$v1,72($sp)
.L0db0de20:
    # Line 1207
    beqz	$v1,.L0db0de88
    li	$a4,5120
    lbu	$a3,1192($s0)
    beqzl	$a3,.L0db0e810
    lbu	$at,1288($s0)
    # Line 1244
    lw	$v0,1284($s0)
.L0db0de38:
    li	$a4,6406
    beq	$a4,$v0,.L0db0ea6c
    li	$at,6409
    beq	$v0,$at,.L0db0eb10
    li	$v1,6410
    beq	$v0,$v1,.L0db0ec80
    li	$a3,6407
    beq	$a3,$v0,.L0db0ee84
    li	$a4,6408
    bne	$v0,$a4,.L0db0de88
    li	$a4,5120
    # Line 1258
    la	$at,__glSpanMinmaxRGBA
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1259
    b	.L0db0de84
    # Line 1258
    sw	$at,356($v1)
.L0db0de7c:
    la	$a3,dummyFilter
.L0db0de80:
    # Line 1275
    sw	$a3,436($s1)
.L0db0de84:
    li	$a4,5120
.L0db0de88:
    # Line 1285
    beq	$a4,$a1,.L0db0deac
    move	$a7,$zero
    li	$at,5122
    beq	$a1,$at,.L0db0deac
    li	$v1,5124
    beq	$a1,$v1,.L0db0deac
    li	$a3,5126
    bne	$a3,$a1,.L0db0deb4
    nop
.L0db0deac:
    ld	$a7,48($sp)
    # Line 1291
    sltiu	$a7,$a7,1
.L0db0deb4:
    # Line 1294
    beqz	$t3,.L0db0df90
    sltiu	$at,$a0,6402
    bnez	$at,.L0db0df60
    sltiu	$v1,$a0,6403
    beqz	$v1,.L0db0e1a0
    sltiu	$a4,$a0,6404
    # Line 1360
    beqzl	$a7,.L0db0e060
    # Line 1366
    lw	$v0,4($s2)
    # Line 1361
    lbu	$a7,30578($s0)
    b	.L0db0e05c
    sltiu	$a7,$a7,1
.L0db0dee0:
    # Line 346
    bne	$a5,$a2,.L0db0f048
    nop
.L0db0dee8:
    sd	$zero,216($sp)
.L0db0deec:
    # Line 362
    bne	$t2,$a1,.L0db0dab8
    sd	$zero,96($sp)
.L0db0def4:
    # Line 370
    bne	$t2,$a6,.L0db0dad8
    sd	$zero,224($sp)
.L0db0defc:
    sd	$t3,112($sp)
.L0db0df00:
    b	.L0db0dafc
    sd	$zero,24($sp)
.L0db0df08:
    # Line 322
    sltiu	$at,$a0,6402
    bnez	$at,.L0db0e104
    sltiu	$v1,$a0,6403
    bnez	$v1,.L0db0e588
    sltiu	$a3,$a0,6404
    bnez	$a3,.L0db0e910
    sltiu	$a4,$a0,6405
    beqzl	$a4,.L0db0da98
    # Line 344
    lw	$t3,8($s2)
    b	.L0db0da7c
    # Line 333
    lbu	$a3,12($s2)
.L0db0df34:
    # Line 412
    sltiu	$at,$a2,6402
    bnez	$at,.L0db0e148
    sltiu	$v1,$a2,6403
    bnez	$v1,.L0db0dba0
    sltiu	$a3,$a2,6404
    bnez	$a3,.L0db0e990
    sltiu	$a4,$a2,6405
    beqz	$a4,.L0db0dba8
    # Line 434
    li	$at,-1
    b	.L0db0dba4
    # Line 424
    sb	$zero,1($sp)
.L0db0df60:
    # Line 1294
    sltiu	$at,$a0,6400
    bnez	$at,.L0db0e190
    sltiu	$v1,$a0,6401
    beqz	$v1,.L0db0e670
    li	$a3,6401
    # Line 1299
    lbu	$a3,3104($s0)
    beqz	$a3,.L0db0df88
    ld	$a4,104($sp)
    bnezl	$a4,.L0db0dfa0
    # Line 1315
    lbu	$v1,30576($s0)
.L0db0df88:
    # Line 1301
    b	.L0db0e05c
    # Line 1300
    move	$a7,$zero
.L0db0df90:
    # Line 1294
    sltiu	$at,$a0,6407
    beqz	$at,.L0db0e780
    sltiu	$a3,$a0,6410
.L0db0df9c:
    # Line 1315
    lbu	$v1,30576($s0)
.L0db0dfa0:
    beqz	$v1,.L0db0ea9c
    sd	$v1,176($sp)
    sd	$zero,184($sp)
.L0db0dfac:
    sd	$zero,192($sp)
    # Line 1318
    beqz	$t1,.L0db0dfd8
    sd	$zero,200($sp)
    # Line 1321
    lw	$v0,5024($s0)
    li	$a3,6408
    beq	$v0,$a3,.L0db0e6ac
    li	$a4,6410
    beq	$v0,$a4,.L0db0e6ac
    li	$at,0x8049
    beq	$v0,$at,.L0db0e6b0
    # Line 1325
    li	$a3,1
.L0db0dfd8:
    # Line 1327
    beqz	$t9,.L0db0e000
    ld	$at,160($sp)
    # Line 1329
    lw	$v0,5184($s0)
    li	$v1,6408
    beq	$v0,$v1,.L0db0e694
    li	$a3,6410
    beq	$v0,$a3,.L0db0e694
    li	$a4,0x8049
    beq	$v0,$a4,.L0db0e694
.L0db0dffc:
    ld	$at,160($sp)
.L0db0e000:
    # Line 1335
    beqz	$at,.L0db0e028
    nop
    # Line 1337
    lw	$v0,5344($s0)
    li	$v1,6408
    beq	$v0,$v1,.L0db0e6a0
    li	$a3,6410
    beq	$v0,$a3,.L0db0e6a0
    li	$a4,0x8049
    beq	$v0,$a4,.L0db0e6a4
    # Line 1341
    li	$v1,1
.L0db0e028:
    # Line 1344
    beqz	$a7,.L0db0eafc
    ld	$at,88($sp)
.L0db0e030:
    beqz	$at,.L0db0eb28
    # Line 1345
    move	$v0,$zero
.L0db0e038:
    move	$a7,$v0
.L0db0e03c:
    beqz	$t8,.L0db0e04c
    ld	$v1,168($sp)
    beqz	$a7,.L0db0ec98
.L0db0e048:
    ld	$v1,168($sp)
.L0db0e04c:
    # Line 1351
    beqzl	$v1,.L0db0e060
    # Line 1366
    lw	$v0,4($s2)
    # Line 1351
    beqzl	$a7,.L0db0ecac
    ld	$a7,200($sp)
.L0db0e05c:
    # Line 1366
    lw	$v0,4($s2)
.L0db0e060:
    beq	$v0,$a5,.L0db0e310
    nop
    beq	$v0,$t0,.L0db0e480
    ld	$s0,232($sp)
    li	$a3,3
    beq	$v0,$a3,.L0db0e630
    li	$a4,4
    beq	$v0,$a4,.L0db0e6f8
    lw	$v0,8($sp)
.L0db0e084:
    # Line 1974
    sw	$s8,16($s2)
    beqz	$s4,.L0db0e86c
    # Line 1972
    la	$a0,__glNop
    # Line 1977
    lbu	$at,440($s1)
    sw	$v0,444($s1)
    ld	$s8,272($sp)
    beqz	$at,.L0db0e388
    ld	$s4,264($sp)
    # Line 1979
    la	$v1,__glLateScissorRender
    ld	$s1,240($sp)
    sw	$v1,20($s2)
.L0db0e0b0:
    # Line 1986
    ld	$s2,248($sp)
    move	$v0,$s3
    ld	$s3,256($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0db0e0c4:
    # Line 290
    b	.L0db0d98c
    lwc1	$f4,720($s0)
.L0db0e0cc:
    b	.L0db0d8cc
    # Line 249
    move	$a1,$zero
.L0db0e0d4:
    b	.L0db0d8f4
    # Line 254
    move	$a1,$zero
.L0db0e0dc:
    b	.L0db0d91c
    # Line 261
    move	$a0,$zero
.L0db0e0e4:
    b	.L0db0d9fc
    sd	$zero,152($sp)
.L0db0e0ec:
    b	.L0db0d878
    sd	$zero,64($sp)
.L0db0e0f4:
    b	.L0db0d898
    sd	$zero,72($sp)
.L0db0e0fc:
    b	.L0db0d9e4
    # Line 302
    move	$a7,$zero
.L0db0e104:
    # Line 322
    sltiu	$a3,$a0,6400
    bnez	$a3,.L0db0e554
    sltiu	$a4,$a0,6401
    bnez	$a4,.L0db0e958
    li	$at,6401
    bnel	$a0,$at,.L0db0da98
    # Line 344
    lw	$t3,8($s2)
    # Line 339
    lbu	$v1,12($s2)
    beqz	$v1,.L0db0fe98
    nop
    lbu	$a3,30579($s0)
    beqz	$a3,.L0db0fe98
    li	$a4,1
    sd	$a4,16($sp)
.L0db0e13c:
    ld	$at,16($sp)
    # Line 340
    b	.L0db0da94
    # Line 339
    sb	$at,0($sp)
.L0db0e148:
    # Line 412
    sltiu	$v1,$a2,6400
    bnez	$v1,.L0db0e5b0
    sltiu	$a3,$a2,6401
    beqz	$a3,.L0db0e980
    li	$a4,6401
.L0db0e15c:
    b	.L0db0dba4
    # Line 428
    sb	$a5,1($sp)
.L0db0e164:
    # Line 412
    bnez	$a4,.L0db0e5c0
    sltiu	$at,$a2,6410
    bnez	$at,.L0db0dba0
    li	$v0,0x8000
    sltu	$v1,$a2,$v0
    bnez	$v1,.L0db0ef18
    sltu	$a3,$v0,$a2
    bnez	$a3,.L0db0dba8
    # Line 434
    li	$at,-1
    b	.L0db0dba4
    # Line 424
    sb	$zero,1($sp)
.L0db0e190:
    # Line 1294
    bnel	$a5,$a0,.L0db0e060
    # Line 1366
    lw	$v0,4($s2)
    b	.L0db0dfa0
    # Line 1315
    lbu	$v1,30576($s0)
.L0db0e1a0:
    # Line 1294
    bnez	$a4,.L0db0e680
    sltiu	$at,$a0,6405
    bnez	$at,.L0db0df9c
    li	$v1,6405
    bnel	$a0,$v1,.L0db0e060
    # Line 1366
    lw	$v0,4($s2)
    b	.L0db0dfa0
    # Line 1315
    lbu	$v1,30576($s0)
.L0db0e1c0:
    # Line 1130
    la	$a3,__glSpanColorMatrixSwizzWithDropRGBA
.L0db0e1c4:
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    b	.L0db0ddac
    sw	$a3,356($a4)
.L0db0e1d8:
    # Line 268
    lw	$at,30688($s0)
    li	$v1,0x8421
    bne	$at,$v1,.L0db0d940
    li	$v0,1
    b	.L0db0d940
    move	$v0,$zero
.L0db0e1f0:
    # Line 271
    bnez	$t8,.L0db0d950
    li	$a3,1
    bnez	$t9,.L0db0d950
    li	$a3,1
    bnez	$v0,.L0db0d950
    li	$a3,1
    ld	$a3,160($sp)
    bnez	$a3,.L0db0d950
    li	$a3,1
    ld	$a4,64($sp)
    bnez	$a4,.L0db0d950
    li	$a3,1
    ld	$at,72($sp)
    bnez	$at,.L0db0d950
    li	$a3,1
    b	.L0db0d954
    sd	$zero,104($sp)
.L0db0e234:
    # Line 305
    beq	$t2,$a1,.L0db0da04
    # Line 308
    li	$v1,1
    b	.L0db0da08
    sd	$v1,120($sp)
.L0db0e244:
    # Line 344
    lbu	$a3,0($sp)
    beqz	$a3,.L0db0f020
    # Line 357
    li	$a4,1
.L0db0e250:
    # Line 358
    li	$at,1
    sd	$at,96($sp)
    b	.L0db0dab0
    sd	$a4,216($sp)
.L0db0e260:
    # Line 449
    beqz	$v1,.L0db0f074
    ld	$v0,208($sp)
    ld	$a3,120($sp)
    beqz	$a3,.L0db0f10c
    lw	$s3,36($s1)
    beq	$s3,$t0,.L0db0f318
    # Line 455
    la	$a4,__glSpanSwapAndSkipBytes4
    sw	$a4,360($s1)
.L0db0e280:
    # Line 462
    li	$s3,1
.L0db0e284:
    # Line 485
    beqz	$v0,.L0db0ed70
    # Line 494
    li	$at,6400
    beq	$a0,$at,.L0db0ed24
    ld	$v0,216($sp)
    li	$v1,6401
    beq	$a0,$v1,.L0db0ed24
    # Line 518
    sltiu	$a3,$a1,5125
    bnez	$a3,.L0db0eb54
    sltiu	$a4,$a1,5126
    bnez	$a4,.L0db0f23c
    li	$at,0x8034
    sltu	$at,$a1,$at
    bnez	$at,.L0db0f564
    li	$v1,0x8034
    sltu	$v1,$v1,$a1
    beqz	$v1,.L0db0facc
    li	$a3,0x8036
    sltu	$a3,$a1,$a3
    bnez	$a3,.L0db0fda8
    li	$a4,0x8036
    sltu	$a4,$a4,$a1
    beqz	$a4,.L0db1018c
    # Line 584
    li	$at,4
    # Line 585
    b	.L0db0ed94
    ld	$at,48($sp)
.L0db0e2e8:
    # Line 237
    bnel	$at,$a5,.L0db0d8a8
    sd	$s4,264($sp)
    # Line 241
    andi	$v1,$v0,0x4000
    beqz	$v1,.L0db0d8a4
    ld	$a3,64($sp)
    beqz	$a3,.L0db0fdd4
    ld	$a4,72($sp)
.L0db0e304:
    sd	$s4,264($sp)
.L0db0e308:
    b	.L0db0d8ac
    li	$s4,1
.L0db0e310:
    # Line 1373
    beqz	$a7,.L0db0e34c
    # Line 1416
    sltiu	$at,$a2,6406
    # Line 1374
    beqz	$t3,.L0db0f164
    sltiu	$a4,$a0,6403
    bnez	$a4,.L0db0e9fc
    sltiu	$at,$a0,6404
    beqz	$at,.L0db0efcc
.L0db0e32c:
    ld	$v1,104($sp)
.L0db0e330:
    # Line 1387
    beqz	$v1,.L0db0f508
    la	$a3,__glSpanClampRGBA
    # Line 1388
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    sw	$a3,356($a4)
.L0db0e348:
    # Line 1416
    sltiu	$at,$a2,6406
.L0db0e34c:
    bnez	$at,.L0db0e51c
    # Line 1426
    sltiu	$v1,$a2,6407
    bnez	$v1,.L0db0e52c
    sltiu	$a3,$a2,6410
    bnez	$a3,.L0db0f2b8
    sltiu	$a4,$a2,6411
    bnez	$a4,.L0db0e52c
    li	$v0,0x8049
    sltu	$at,$a2,$v0
    bnez	$at,.L0db0fc70
    sltu	$v1,$v0,$a2
    bnez	$v1,.L0db0e71c
    ld	$v1,56($sp)
    b	.L0db0e530
    ld	$a3,136($sp)
.L0db0e388:
    # Line 1981
    sw	$a0,20($s2)
    b	.L0db0e0b0
    ld	$s1,240($sp)
.L0db0e394:
    # Line 188
    lw	$a3,1696($s0)
    lui	$a4,0x200
    and	$a3,$a3,$a4
    beqz	$a3,.L0db0ee70
    # Line 191
    la	$t3,dummyFilter
    # Line 188
    lw	$at,792($s0)
    beqz	$at,.L0db0ee6c
    # Line 191
    la	$t3,dummyFilter
    li	$t8,1
    # Line 190
    addiu	$v1,$s0,744
    # Line 191
    b	.L0db0d854
    # Line 190
    sw	$v1,436($s1)
.L0db0e3c4:
    # Line 186
    li	$t0,2
    # Line 184
    la	$t3,dummyFilter
    # Line 185
    move	$t8,$zero
    # Line 186
    b	.L0db0d854
    # Line 184
    sw	$t3,436($s1)
.L0db0e3d8:
    li	$a4,7
    # Line 380
    beq	$a3,$a4,.L0db0e3ec
    # Line 385
    li	$at,1
    # Line 380
    beq	$t2,$a6,.L0db0db14
    # Line 385
    li	$at,1
.L0db0e3ec:
    b	.L0db0db18
    sd	$at,208($sp)
.L0db0e3f4:
    li	$a3,7
    # Line 387
    beq	$v1,$a3,.L0db0e408
    # Line 392
    li	$a4,1
    # Line 387
    beq	$t2,$a6,.L0db0db2c
    # Line 392
    li	$a4,1
.L0db0e408:
    b	.L0db0db30
    sd	$a4,80($sp)
.L0db0e410:
    # Line 796
    sltiu	$at,$a2,6406
    bnez	$at,.L0db0e880
    sltiu	$v1,$a2,6407
    bnez	$v1,.L0db0e434
    sltiu	$a3,$a2,6410
    bnez	$a3,.L0db0f390
    sltiu	$a4,$a2,6411
    beqz	$a4,.L0db0f8c4
    li	$v0,0x8049
.L0db0e434:
    # Line 808
    lbu	$at,3104($s0)
.L0db0e438:
    beqz	$at,.L0db0f7e4
    # Line 816
    la	$a3,__glSpanModifyCI
    # Line 809
    lbu	$a3,30576($s0)
    lw	$v1,12480($s0)
    beqz	$a3,.L0db0e464
    sw	$v1,4($sp)
    # Line 812
    la	$at,__glSpanModifyRGBA
    # Line 811
    la	$a4,__glSpanPreUnscaleRGBA
    # Line 812
    li	$s3,2
    sw	$at,364($s1)
    # Line 811
    sw	$a4,360($s1)
.L0db0e464:
    # Line 839
    lw	$v1,8($s2)
.L0db0e468:
    beq	$v1,$t0,.L0db0f150
    ld	$a4,104($sp)
    sd	$s8,272($sp)
    # Line 918
    lw	$s8,4($sp)
.L0db0e478:
    b	.L0db0dbdc
    sltiu	$t3,$a0,6406
.L0db0e480:
    # Line 1702
    ld	$a3,96($sp)
    beqz	$a3,.L0db0f19c
    lbu	$v0,427($s1)
    beqz	$v0,.L0db0f254
    # Line 1704
    la	$a4,__glSpanRGBAScaleBiasReduce
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    sw	$a4,356($at)
.L0db0e4a4:
    # Line 1784
    lbu	$v1,12($s2)
.L0db0e4a8:
    beqz	$v1,.L0db0e4cc
    ld	$at,80($sp)
    beqz	$a7,.L0db0e4c8
    # Line 1793
    la	$a3,__glSpanClampPostFloat
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    sw	$a3,356($a4)
.L0db0e4c8:
    ld	$at,80($sp)
.L0db0e4cc:
    beqz	$at,.L0db0f1b8
    lbu	$v1,1($sp)
    beqz	$v1,.L0db0f324
    # Line 1801
    sltiu	$a3,$a6,5123
    bnez	$a3,.L0db0eb80
    sltiu	$a4,$a6,5124
    bnez	$a4,.L0db0ec44
    sltiu	$at,$a6,5125
    bnez	$at,.L0db0f588
    sltiu	$v1,$a6,5126
    bnez	$v1,.L0db0faec
    # Line 1818
    la	$at,__glSpanPackUintI
    # Line 1801
    bne	$t2,$a6,.L0db0ec5c
    ld	$a3,144($sp)
    # Line 1821
    la	$a3,__glSpanPackBitmap
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1822
    b	.L0db0ec58
    # Line 1821
    sw	$a3,356($a4)
.L0db0e51c:
    # Line 1426
    sltiu	$at,$a2,6403
    bnez	$at,.L0db0ecd8
    sltiu	$v1,$a2,6404
    beqz	$v1,.L0db0f29c
.L0db0e52c:
    ld	$a3,136($sp)
.L0db0e530:
    # Line 1437
    beqz	$a3,.L0db0f4fc
    # Line 1466
    ld	$a4,56($sp)
    # Line 1438
    lw	$at,12512($s0)
    # Line 1466
    bnez	$a4,.L0db0e720
    # Line 1438
    sw	$at,8($sp)
.L0db0e544:
    b	.L0db0e72c
    # Line 1469
    lw	$a4,8($s2)
.L0db0e54c:
    b	.L0db0da90
    # Line 333
    move	$t3,$zero
.L0db0e554:
    # Line 322
    bnel	$a5,$a0,.L0db0da98
    # Line 344
    lw	$t3,8($s2)
    b	.L0db0da7c
    # Line 333
    lbu	$a3,12($s2)
.L0db0e564:
    # Line 322
    sltiu	$v1,$a0,6407
    bnez	$v1,.L0db0e924
    sltiu	$a3,$a0,6408
    bnez	$a3,.L0db0da78
    li	$a4,6408
    bnel	$a0,$a4,.L0db0da98
    # Line 344
    lw	$t3,8($s2)
    b	.L0db0da7c
    # Line 333
    lbu	$a3,12($s2)
.L0db0e588:
    # Line 336
    lbu	$at,12($s2)
    beqz	$at,.L0db0ee7c
    nop
    lbu	$v1,30578($s0)
    beqz	$v1,.L0db0ee7c
    li	$a3,1
    sd	$a3,40($sp)
.L0db0e5a4:
    ld	$a4,40($sp)
    # Line 337
    b	.L0db0da94
    # Line 336
    sb	$a4,0($sp)
.L0db0e5b0:
    # Line 412
    bne	$a5,$a2,.L0db0dba8
    # Line 434
    li	$at,-1
    b	.L0db0dba4
    # Line 424
    sb	$zero,1($sp)
.L0db0e5c0:
    # Line 412
    sltiu	$at,$a2,6407
    bnez	$at,.L0db0e9a4
    sltiu	$v1,$a2,6408
    bnez	$v1,.L0db0dba0
    li	$a3,6408
    bne	$a2,$a3,.L0db0dba8
    # Line 434
    li	$at,-1
    b	.L0db0dba4
    # Line 424
    sb	$zero,1($sp)
.L0db0e5e4:
    # Line 198
    lw	$v0,1696($s0)
    lui	$a4,0x800
    and	$a4,$v0,$a4
    beqz	$a4,.L0db0f2dc
    # Line 205
    lui	$at,0x400
    # Line 198
    lw	$at,928($s0)
    beqz	$at,.L0db0f014
    # Line 202
    la	$t3,dummyFilter
    # Line 198
    lw	$v1,932($s0)
    beqz	$v1,.L0db0f010
    # Line 202
    la	$t3,dummyFilter
    li	$t8,1
    # Line 201
    addiu	$a3,$s0,880
    # Line 202
    b	.L0db0d854
    # Line 201
    sw	$a3,436($s1)
.L0db0e620:
    sd	$s8,272($sp)
    # Line 923
    lw	$s8,4($sp)
    b	.L0db0dbdc
    sltiu	$t3,$a0,6406
.L0db0e630:
    # Line 1921
    sltiu	$a4,$a2,6407
    bnez	$a4,.L0db0ea34
    sltiu	$at,$a2,6408
    bnez	$at,.L0db0ec10
    sltiu	$v1,$a2,6410
    bnez	$v1,.L0db0f3b4
    sltiu	$a3,$a2,6411
    bnez	$a3,.L0db0f9ec
    li	$a4,0x8000
    bne	$a2,$a4,.L0db0ec24
    # Line 1947
    la	$at,__glSpanReorderABGR
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1948
    b	.L0db0ec24
    # Line 1947
    sw	$at,356($v1)
.L0db0e670:
    # Line 1294
    bnel	$a0,$a3,.L0db0e060
    # Line 1366
    lw	$v0,4($s2)
    # Line 1297
    b	.L0db0e05c
    # Line 1296
    move	$a7,$zero
.L0db0e680:
    # Line 1294
    li	$a4,6403
    bnel	$a0,$a4,.L0db0e060
    # Line 1366
    lw	$v0,4($s2)
    b	.L0db0dfa0
    # Line 1315
    lbu	$v1,30576($s0)
.L0db0e694:
    # Line 1333
    li	$at,1
    b	.L0db0dffc
    sd	$at,192($sp)
.L0db0e6a0:
    # Line 1341
    li	$v1,1
.L0db0e6a4:
    b	.L0db0e028
    sd	$v1,200($sp)
.L0db0e6ac:
    # Line 1325
    li	$a3,1
.L0db0e6b0:
    b	.L0db0dfd8
    sd	$a3,184($sp)
.L0db0e6b8:
    # Line 222
    la	$t3,dummyFilter
    # Line 223
    move	$t8,$zero
    # Line 224
    b	.L0db0d854
    # Line 222
    sw	$t3,436($s1)
.L0db0e6c8:
    # Line 926
    beq	$a2,$a4,.L0db0f3f4
    li	$at,6400
    beq	$a2,$at,.L0db0f5ac
    li	$v1,6401
    beq	$a2,$v1,.L0db0f6c4
    li	$a3,6402
    beq	$a2,$a3,.L0db0f860
    nop
    sd	$s8,272($sp)
    lw	$s8,4($sp)
.L0db0e6f0:
    b	.L0db0dbdc
    # Line 990
    sltiu	$t3,$a0,6406
.L0db0e6f8:
    # Line 1965
    beqz	$a7,.L0db0e708
    li	$a4,6408
    beq	$a0,$a4,.L0db0f6b0
    la	$a3,__glSpanClampRGBA
.L0db0e708:
    b	.L0db0e084
    # Line 1966
    lw	$v0,8($sp)
.L0db0e710:
    # Line 1426
    li	$at,6400
    beq	$a2,$at,.L0db0fe4c
.L0db0e718:
    ld	$v1,56($sp)
.L0db0e71c:
    # Line 1466
    beqz	$v1,.L0db0e544
.L0db0e720:
    # Line 1469
    la	$a3,__glNop
    sw	$a3,8($sp)
    lw	$a4,8($s2)
.L0db0e72c:
    beq	$a4,$a5,.L0db0f0b8
    # Line 1693
    lw	$v0,8($sp)
    b	.L0db0e084
    ld	$s0,232($sp)
.L0db0e73c:
    # Line 1188
    lw	$v0,1188($s0)
    beq	$a7,$v0,.L0db0f63c
    li	$at,6409
    beq	$v0,$at,.L0db0f778
    li	$v1,6410
    beq	$v0,$v1,.L0db0f898
    li	$a3,6407
    beq	$a3,$v0,.L0db0f950
    li	$a4,6408
    bne	$v0,$a4,.L0db0de20
    ld	$v1,72($sp)
    # Line 1202
    la	$at,__glSpanHistogramRGBA
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    b	.L0db0de1c
    sw	$at,356($v1)
.L0db0e780:
    # Line 1294
    bnez	$a3,.L0db0ecb4
    sltiu	$a4,$a0,6411
    bnez	$a4,.L0db0df9c
    li	$v0,0x8049
    sltu	$at,$a0,$v0
    bnez	$at,.L0db0f790
    sltu	$v1,$v0,$a0
    bnezl	$v1,.L0db0e060
    # Line 1366
    lw	$v0,4($s2)
    b	.L0db0dfa0
    # Line 1315
    lbu	$v1,30576($s0)
.L0db0e7ac:
    # Line 1007
    lw	$at,64($a7)
    # Line 1008
    sw	$s3,260($s1)
    # Line 1007
    sw	$at,256($s1)
    # Line 1008
    lw	$a3,0($a7)
    li	$a4,0x8011
    beq	$a3,$a4,.L0db0f624
    la	$v0,__glSpanApplyRGBAColorTable
    # Line 1013
    la	$v1,__glSpanConvolve1DReduceRGB
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    sw	$v1,356($a3)
.L0db0e7dc:
    # Line 1016
    la	$at,__glRowScaleSumRGB
    # Line 1015
    la	$a4,__glRowSetNoAlpha
    # Line 1016
    sw	$at,420($s1)
    # Line 1017
    b	.L0db0dc54
    # Line 1015
    sw	$a4,416($s1)
.L0db0e7f0:
    # Line 1146
    li	$a4,1
    sd	$a4,168($sp)
    # Line 1147
    la	$v1,__glSpanPostColorMatrixScaleBiasRGBA
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    b	.L0db0ddb4
    sw	$v1,356($a3)
.L0db0e810:
    # Line 1207
    beqzl	$at,.L0db0de38
    # Line 1244
    lw	$v0,1284($s0)
    # Line 1221
    sw	$s3,264($s1)
    # Line 1222
    lw	$v0,1284($s0)
    # Line 1220
    li	$a3,1
    # Line 1222
    li	$v1,6406
    beq	$v1,$v0,.L0db0f8e0
    sd	$a3,56($sp)
    li	$a4,6409
    beq	$v0,$a4,.L0db0f988
    li	$at,6410
    beq	$v0,$at,.L0db0fab4
    li	$v1,6407
    beq	$v1,$v0,.L0db0fbb0
    li	$a3,6408
    bne	$v0,$a3,.L0db0de88
    li	$a4,5120
    # Line 1237
    la	$a4,__glSpanMinmaxSinkRGBA
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 1239
    b	.L0db0de84
    # Line 1237
    sw	$a4,356($at)
.L0db0e86c:
    # Line 1984
    sw	$v0,20($s2)
    ld	$s8,272($sp)
    ld	$s1,240($sp)
    b	.L0db0e0b0
    ld	$s4,264($sp)
.L0db0e880:
    # Line 796
    sltiu	$v1,$a2,6402
    bnez	$v1,.L0db0eeb0
    sltiu	$a3,$a2,6403
    bnez	$a3,.L0db0f434
    sltiu	$a4,$a2,6404
    bnez	$a4,.L0db0f7f8
    sltiu	$at,$a2,6405
    bnez	$at,.L0db0e434
    li	$v1,6405
    bnel	$a2,$v1,.L0db0e468
    # Line 839
    lw	$v1,8($s2)
    b	.L0db0e438
    # Line 808
    lbu	$at,3104($s0)
.L0db0e8b4:
    # Line 1019
    lw	$at,64($a7)
    # Line 1020
    sw	$s3,260($s1)
    # Line 1019
    sw	$at,256($s1)
    # Line 1020
    lw	$a3,0($a7)
    li	$a4,0x8011
    beq	$a3,$a4,.L0db0f760
    la	$v0,__glSpanApplyRGBAColorTable
    # Line 1025
    la	$v1,__glSpanConvolve1DReduceRGBA
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    sw	$v1,356($a3)
.L0db0e8e4:
    # Line 1028
    la	$at,__glRowScaleSumRGBA
    # Line 1027
    la	$a4,__glRowSetAll
    # Line 1028
    sw	$at,420($s1)
    # Line 1029
    b	.L0db0dc54
    # Line 1027
    sw	$a4,416($s1)
.L0db0e8f8:
    # Line 1134
    la	$v1,__glSpanColorMatrixGeneralRGBA
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    b	.L0db0ddac
    sw	$v1,356($a3)
.L0db0e910:
    # Line 322
    li	$a4,6403
    bnel	$a0,$a4,.L0db0da98
    # Line 344
    lw	$t3,8($s2)
    b	.L0db0da7c
    # Line 333
    lbu	$a3,12($s2)
.L0db0e924:
    # Line 322
    li	$at,6406
    bnel	$a0,$at,.L0db0da98
    # Line 344
    lw	$t3,8($s2)
    b	.L0db0da7c
    # Line 333
    lbu	$a3,12($s2)
.L0db0e938:
    # Line 322
    sltu	$v1,$a0,$v1
    bnez	$v1,.L0db0ef04
    li	$a3,0x8000
    sltu	$a3,$a3,$a0
    bnezl	$a3,.L0db0da98
    # Line 344
    lw	$t3,8($s2)
    b	.L0db0da7c
    # Line 333
    lbu	$a3,12($s2)
.L0db0e958:
    # Line 342
    lbu	$a4,12($s2)
    beqz	$a4,.L0db0f310
    nop
    lbu	$at,30577($s0)
    beqz	$at,.L0db0f310
    li	$v1,1
    sd	$v1,32($sp)
.L0db0e974:
    ld	$a3,32($sp)
    b	.L0db0da94
    sb	$a3,0($sp)
.L0db0e980:
    # Line 412
    bne	$a2,$a4,.L0db0dba8
    # Line 434
    li	$at,-1
    b	.L0db0e15c
    nop
.L0db0e990:
    # Line 412
    li	$at,6403
    bne	$a2,$at,.L0db0dba8
    # Line 434
    li	$at,-1
    b	.L0db0dba4
    # Line 424
    sb	$zero,1($sp)
.L0db0e9a4:
    # Line 412
    li	$v1,6406
    bne	$a2,$v1,.L0db0dba8
    # Line 434
    li	$at,-1
    b	.L0db0dba4
    # Line 424
    sb	$zero,1($sp)
.L0db0e9b8:
    # Line 1031
    lw	$at,64($a7)
    # Line 1032
    sw	$s3,260($s1)
    # Line 1031
    sw	$at,256($s1)
    # Line 1032
    lw	$a3,0($a7)
    li	$a4,0x8011
    beq	$a3,$a4,.L0db0f80c
    la	$v0,__glSpanApplyRGBAColorTable
    # Line 1036
    la	$v1,__glSpanConvolve1DReduceL
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    sw	$v1,356($a3)
.L0db0e9e8:
    # Line 1039
    la	$at,__glRowScaleSumL
    # Line 1038
    la	$a4,__glRowSetNoAlpha
    # Line 1039
    sw	$at,420($s1)
    # Line 1040
    b	.L0db0dc54
    # Line 1038
    sw	$a4,416($s1)
.L0db0e9fc:
    # Line 1374
    sltiu	$v1,$a0,6400
    bnez	$v1,.L0db0efbc
    sltiu	$a3,$a0,6401
    bnez	$a3,.L0db0e32c
    li	$a4,6402
    bne	$a0,$a4,.L0db0e34c
    # Line 1416
    sltiu	$at,$a2,6406
    # Line 1414
    la	$at,__glSpanClampPostFloat
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1413
    sw	$a5,108($s1)
    b	.L0db0e348
    # Line 1414
    sw	$at,356($v1)
.L0db0ea34:
    # Line 1921
    sltiu	$a3,$a2,6404
    bnez	$a3,.L0db0efe8
    sltiu	$a4,$a2,6405
    bnez	$a4,.L0db0f5e4
    sltiu	$at,$a2,6406
    bnez	$at,.L0db0f910
    sltiu	$v1,$a2,6407
    beqz	$v1,.L0db0ec24
    # Line 1941
    la	$a3,__glSpanReduceAlpha
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1942
    b	.L0db0ec24
    # Line 1941
    sw	$a3,356($a4)
.L0db0ea6c:
    # Line 1246
    la	$at,__glSpanMinmaxA
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1247
    b	.L0db0de84
    # Line 1246
    sw	$at,356($v1)
.L0db0ea84:
    # Line 1165
    la	$a3,__glSpanHistogramSinkA
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1167
    b	.L0db0de1c
    # Line 1165
    sw	$a3,356($a4)
.L0db0ea9c:
    ld	$at,104($sp)
    # Line 1315
    bnezl	$at,.L0db0dfac
    sd	$zero,184($sp)
    beqzl	$a7,.L0db0e060
    # Line 1366
    lw	$v0,4($s2)
    b	.L0db0dfac
    sd	$zero,184($sp)
.L0db0eab8:
    # Line 1042
    lw	$a4,64($a7)
    # Line 1043
    sw	$s3,260($s1)
    # Line 1042
    sw	$a4,256($s1)
    # Line 1043
    lw	$v1,0($a7)
    li	$a3,0x8011
    beq	$v1,$a3,.L0db0f8f8
    la	$v0,__glSpanApplyRGBAColorTable
    # Line 1047
    la	$at,__glSpanConvolve1DReduceLA
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    sw	$at,356($v1)
.L0db0eae8:
    # Line 1050
    la	$a4,__glRowScaleSumLA
    # Line 1049
    la	$a3,__glRowSetAll
    # Line 1050
    sw	$a4,420($s1)
    # Line 1051
    b	.L0db0dc54
    # Line 1049
    sw	$a3,416($s1)
.L0db0eafc:
    ld	$at,176($sp)
    # Line 1344
    beqz	$at,.L0db0e03c
    nop
    b	.L0db0e030
    ld	$at,88($sp)
.L0db0eb10:
    # Line 1249
    la	$v1,__glSpanMinmaxL
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    # Line 1250
    b	.L0db0de84
    # Line 1249
    sw	$v1,356($a3)
.L0db0eb28:
    ld	$a4,184($sp)
    # Line 1344
    bnez	$a4,.L0db0e038
    # Line 1345
    move	$v0,$zero
    ld	$at,192($sp)
    bnez	$at,.L0db0e038
    move	$v0,$zero
    ld	$v1,200($sp)
    bnez	$v1,.L0db0e038
    move	$v0,$zero
    b	.L0db0e038
    li	$v0,1
.L0db0eb54:
    # Line 518
    sltiu	$a3,$a1,5122
    bnez	$a3,.L0db0f0cc
    sltiu	$a4,$a1,5123
    bnez	$a4,.L0db0f6fc
    sltiu	$at,$a1,5124
    bnez	$at,.L0db0fa30
    sltiu	$v1,$a1,5125
    bnez	$v1,.L0db0fea0
    # Line 532
    la	$a3,__glSpanUnpackInt
    # Line 585
    b	.L0db0ed94
    ld	$at,48($sp)
.L0db0eb80:
    # Line 1801
    sltiu	$a3,$a6,5121
    bnez	$a3,.L0db0f0e8
    sltiu	$a4,$a6,5122
    bnez	$a4,.L0db0f714
    li	$at,5122
    bne	$a6,$at,.L0db0ec5c
    ld	$a3,144($sp)
    # Line 1809
    la	$v1,__glSpanPackShortI
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    # Line 1810
    b	.L0db0ec58
    # Line 1809
    sw	$v1,356($a3)
.L0db0ebb4:
    # Line 1169
    la	$a4,__glSpanHistogramSinkL
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 1171
    b	.L0db0de1c
    # Line 1169
    sw	$a4,356($at)
.L0db0ebcc:
    # Line 1053
    lw	$a4,64($a7)
    # Line 1054
    sw	$s3,260($s1)
    # Line 1053
    sw	$a4,256($s1)
    # Line 1054
    lw	$v1,0($a7)
    li	$a3,0x8011
    beq	$v1,$a3,.L0db0fa04
    la	$v0,__glSpanApplyRGBAColorTable
    # Line 1058
    la	$at,__glSpanConvolve1DReduceI
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    sw	$at,356($v1)
.L0db0ebfc:
    # Line 1061
    la	$a4,__glRowScaleSumI
    # Line 1060
    la	$a3,__glRowSetAll
    # Line 1061
    sw	$a4,420($s1)
    b	.L0db0dc54
    # Line 1060
    sw	$a3,416($s1)
.L0db0ec10:
    # Line 1923
    la	$at,__glSpanReduceRGB
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    sw	$at,356($v1)
.L0db0ec24:
    # Line 1952
    beqz	$a7,.L0db0ec3c
    # Line 1957
    la	$a3,__glSpanClampPostFloat
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    sw	$a3,356($a4)
.L0db0ec3c:
    # Line 1959
    b	.L0db0e084
    lw	$v0,8($sp)
.L0db0ec44:
    # Line 1812
    la	$at,__glSpanPackUshortI
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    sw	$at,356($v1)
.L0db0ec58:
    ld	$a3,144($sp)
.L0db0ec5c:
    # Line 1894
    beqz	$a3,.L0db0f20c
    ld	$at,24($sp)
    lw	$v0,116($s1)
    beq	$v0,$t0,.L0db0f3dc
    # Line 1903
    li	$a4,4
    beq	$v0,$a4,.L0db0f550
    # Line 1905
    la	$v1,__glSpanSwapBytes4Dst
.L0db0ec78:
    # Line 1914
    b	.L0db0e084
    lw	$v0,8($sp)
.L0db0ec80:
    # Line 1252
    la	$at,__glSpanMinmaxLA
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1253
    b	.L0db0de84
    # Line 1252
    sw	$at,356($v1)
.L0db0ec98:
    ld	$a3,192($sp)
    # Line 1350
    beqz	$a3,.L0db0fa1c
    # Line 1351
    move	$v0,$zero
.L0db0eca4:
    b	.L0db0e048
    move	$a7,$v0
.L0db0ecac:
    # Line 1355
    b	.L0db0e05c
    sltiu	$a7,$a7,1
.L0db0ecb4:
    # Line 1294
    sltiu	$at,$a0,6408
    bnez	$at,.L0db0f288
    sltiu	$v1,$a0,6409
    bnez	$v1,.L0db0df9c
    li	$a3,6409
    bnel	$a0,$a3,.L0db0e060
    # Line 1366
    lw	$v0,4($s2)
    b	.L0db0dfa0
    # Line 1315
    lbu	$v1,30576($s0)
.L0db0ecd8:
    # Line 1426
    sltiu	$a4,$a2,6401
    bnez	$a4,.L0db0e710
    sltiu	$at,$a2,6402
    bnez	$at,.L0db0f7cc
    li	$v1,6402
    bne	$a2,$v1,.L0db0e71c
    ld	$v1,56($sp)
    ld	$a3,136($sp)
    # Line 1444
    beqzl	$a3,.L0db105cc
    # Line 1447
    lw	$a3,12516($s0)
    # Line 1445
    lw	$a4,12520($s0)
    b	.L0db0e718
    sw	$a4,8($sp)
.L0db0ed0c:
    # Line 399
    bnezl	$at,.L0db0db8c
    sd	$zero,48($sp)
    beq	$v0,$a0,.L0db0eea8
    # Line 409
    li	$a4,1
    b	.L0db0db80
    # Line 399
    lbu	$v1,30576($s0)
.L0db0ed24:
    # Line 496
    li	$v1,5120
    beq	$v1,$a1,.L0db0fb84
    li	$a3,5121
    beq	$a1,$a3,.L0db0fc84
    li	$a4,5122
    beq	$a1,$a4,.L0db0fd90
    li	$at,5123
    beq	$a1,$at,.L0db0fdbc
    li	$v1,5124
    beq	$a1,$v1,.L0db0fe80
    li	$a3,5125
    bne	$a1,$a3,.L0db0ed94
    ld	$at,48($sp)
    # Line 513
    la	$a4,__glSpanUnpackUintI
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 514
    b	.L0db0ed90
    # Line 513
    sw	$a4,356($at)
.L0db0ed70:
    # Line 586
    lbu	$v1,429($s1)
    beqz	$v1,.L0db0ed90
    ld	$v0,216($sp)
    # Line 590
    la	$a3,__glSpanUnpackNonCompUint
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    sw	$a3,356($a4)
.L0db0ed90:
    ld	$at,48($sp)
.L0db0ed94:
    beqz	$at,.L0db0ef2c
    # Line 597
    la	$v1,__glSpanClampPreFloat
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    sw	$v1,356($a3)
.L0db0edac:
    # Line 625
    beq	$t2,$a1,.L0db0f09c
    nop
.L0db0edb4:
    # Line 631
    beqz	$v0,.L0db0ee48
    sltiu	$t3,$a0,6406
    # Line 650
    beqz	$t3,.L0db0f11c
    sltiu	$a4,$a0,6402
    bnez	$a4,.L0db0edfc
    sltiu	$at,$a0,6403
    beqz	$at,.L0db0ef68
    sltiu	$a4,$a0,6404
    # Line 750
    lbu	$v1,30578($s0)
    beqzl	$v1,.L0db0ee4c
    sd	$s8,272($sp)
    sd	$s8,272($sp)
    # Line 751
    la	$a3,__glSpanModifyDepth
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    b	.L0db0ee48
    sw	$a3,356($a4)
.L0db0edfc:
    # Line 650
    sltiu	$at,$a0,6400
    bnez	$at,.L0db0ee40
    sltiu	$v1,$a0,6401
    bnez	$v1,.L0db0f4a4
    li	$a3,6401
    bnel	$a0,$a3,.L0db0ee4c
    sd	$s8,272($sp)
    # Line 755
    lbu	$a4,30579($s0)
    beqzl	$a4,.L0db0ee4c
    sd	$s8,272($sp)
    sd	$s8,272($sp)
    # Line 756
    la	$at,__glSpanModifyStencil
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    b	.L0db0ee48
    sw	$at,356($v1)
.L0db0ee40:
    # Line 650
    beq	$a5,$a0,.L0db0fc9c
    # Line 732
    lbu	$v1,0($sp)
.L0db0ee48:
    sd	$s8,272($sp)
.L0db0ee4c:
    # Line 789
    b	.L0db0dbdc
    lw	$s8,4($sp)
.L0db0ee54:
    # Line 1173
    la	$a3,__glSpanHistogramSinkLA
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1175
    b	.L0db0de1c
    # Line 1173
    sw	$a3,356($a4)
.L0db0ee6c:
    # Line 191
    la	$t3,dummyFilter
.L0db0ee70:
    # Line 194
    move	$t8,$zero
    b	.L0db0d854
    # Line 193
    sw	$t3,436($s1)
.L0db0ee7c:
    b	.L0db0e5a4
    sd	$zero,40($sp)
.L0db0ee84:
    # Line 1255
    la	$at,__glSpanMinmaxRGB
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1256
    b	.L0db0de84
    # Line 1255
    sw	$at,356($v1)
.L0db0ee9c:
    # Line 399
    bnezl	$a3,.L0db0db8c
    sd	$zero,48($sp)
    # Line 409
    li	$a4,1
.L0db0eea8:
    b	.L0db0db8c
    sd	$a4,48($sp)
.L0db0eeb0:
    # Line 796
    sltiu	$at,$a2,6400
    bnez	$at,.L0db0f380
    sltiu	$v1,$a2,6401
    bnez	$v1,.L0db0f968
    li	$a3,6401
    bnel	$a2,$a3,.L0db0e468
    # Line 839
    lw	$v1,8($s2)
    # Line 826
    lbu	$at,30579($s0)
    lw	$a4,12496($s0)
    beqz	$at,.L0db0e464
    sw	$a4,4($sp)
    # Line 828
    la	$v1,__glSpanModifyStencil
    li	$s3,1
    b	.L0db0e464
    sw	$v1,360($s1)
.L0db0eeec:
    # Line 1177
    la	$a3,__glSpanHistogramSinkRGB
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1179
    b	.L0db0de1c
    # Line 1177
    sw	$a3,356($a4)
.L0db0ef04:
    # Line 322
    li	$at,6410
    bnel	$a0,$at,.L0db0da98
    # Line 344
    lw	$t3,8($s2)
    b	.L0db0da7c
    # Line 333
    lbu	$a3,12($s2)
.L0db0ef18:
    # Line 412
    li	$v1,6410
    bne	$a2,$v1,.L0db0dba8
    # Line 434
    li	$at,-1
    b	.L0db0dba4
    # Line 424
    sb	$zero,1($sp)
.L0db0ef2c:
    # Line 597
    lbu	$a3,426($s1)
    beqz	$a3,.L0db0edac
    sltiu	$a4,$a6,5126
    bnez	$a4,.L0db0f5fc
    # Line 600
    sltiu	$at,$a6,5127
    beqz	$at,.L0db0fa7c
    li	$a4,0x8034
    b	.L0db0edac
    nop
.L0db0ef50:
    # Line 1181
    la	$v1,__glSpanHistogramSinkRGBA
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    # Line 1183
    b	.L0db0de1c
    # Line 1181
    sw	$v1,356($a3)
.L0db0ef68:
    # Line 650
    bnez	$a4,.L0db0f454
    sltiu	$at,$a0,6405
    beqz	$at,.L0db0f9a0
    li	$a3,6405
    # Line 664
    lbu	$v1,30576($s0)
    beqz	$v1,.L0db102c4
    # Line 665
    la	$a3,__glSpanModifyGreen
    addiu	$s3,$s3,1
    sll	$v0,$s3,0x2
    addu	$a4,$v0,$s1
    sw	$a3,356($a4)
.L0db0ef94:
    # Line 667
    lbu	$at,424($s1)
    beqzl	$at,.L0db0ee4c
    sd	$s8,272($sp)
    sd	$s8,272($sp)
    # Line 672
    addiu	$s3,$s3,1
    addiu	$a3,$v0,4
    la	$v1,__glSpanZeroFillAlpha
    addu	$a3,$a3,$s1
    b	.L0db0ee48
    sw	$v1,356($a3)
.L0db0efbc:
    # Line 1374
    bne	$a5,$a0,.L0db0e34c
    # Line 1416
    sltiu	$at,$a2,6406
    b	.L0db0e330
    ld	$v1,104($sp)
.L0db0efcc:
    # Line 1374
    sltiu	$a4,$a0,6405
    bnez	$a4,.L0db0f4cc
    sltiu	$at,$a0,6406
    beqz	$at,.L0db0e34c
    # Line 1416
    sltiu	$at,$a2,6406
    b	.L0db0e330
    ld	$v1,104($sp)
.L0db0efe8:
    # Line 1921
    sltiu	$v1,$a2,6403
    bnez	$v1,.L0db0f4e0
    sltiu	$a3,$a2,6404
    beqz	$a3,.L0db0ec24
    # Line 1926
    la	$a4,__glSpanReduceRed
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 1927
    b	.L0db0ec24
    # Line 1926
    sw	$a4,356($at)
.L0db0f010:
    # Line 202
    la	$t3,dummyFilter
.L0db0f014:
    # Line 205
    move	$t8,$zero
    b	.L0db0d854
    # Line 204
    sw	$t3,436($s1)
.L0db0f020:
    # Line 344
    lbu	$v1,427($s1)
    bnez	$v1,.L0db0e250
    # Line 357
    li	$a4,1
    ld	$a3,104($sp)
    # Line 346
    bnez	$a3,.L0db0e250
    # Line 357
    li	$a4,1
    # Line 346
    beq	$a2,$a0,.L0db0dee8
    li	$a4,6410
    beq	$a4,$a0,.L0db0dee0
    nop
.L0db0f048:
    beq	$a5,$a0,.L0db10840
    li	$at,6409
.L0db0f050:
    beq	$at,$a0,.L0db10854
    li	$v1,6403
.L0db0f058:
    bne	$v1,$a0,.L0db0e250
    # Line 357
    li	$a4,1
    li	$a3,6409
    # Line 346
    bne	$a3,$a2,.L0db0e250
    # Line 357
    li	$a4,1
    b	.L0db0deec
    sd	$zero,216($sp)
.L0db0f074:
    ld	$a4,224($sp)
    # Line 462
    beqz	$a4,.L0db0fd10
    ld	$at,120($sp)
    beqz	$at,.L0db0fdf8
    lw	$s3,36($s1)
    beq	$s3,$t0,.L0db0fed0
    # Line 470
    la	$v1,__glSpanSlowSkipPixels4
    sw	$v1,360($s1)
.L0db0f094:
    # Line 476
    b	.L0db0e284
    li	$s3,1
.L0db0f09c:
    # Line 625
    beqz	$a7,.L0db0fd3c
    # Line 629
    la	$a3,__glSpanUnpackBitmap2
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    b	.L0db0edb4
    sw	$a3,356($a4)
.L0db0f0b8:
    ld	$at,104($sp)
    # Line 1469
    beqz	$at,.L0db0fd54
    # Line 1693
    lw	$v0,8($sp)
    b	.L0db0e084
    ld	$s0,232($sp)
.L0db0f0cc:
    # Line 518
    sltiu	$v1,$a1,5121
    bnez	$v1,.L0db0f654
    sltiu	$a3,$a1,5122
    bnez	$a3,.L0db0fb9c
    # Line 523
    la	$at,__glSpanUnpackUbyte
    # Line 585
    b	.L0db0ed94
    ld	$at,48($sp)
.L0db0f0e8:
    li	$a4,5120
    # Line 1801
    bne	$a4,$a6,.L0db0ec5c
    ld	$a3,144($sp)
    # Line 1803
    la	$at,__glSpanPackByteI
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1804
    b	.L0db0ec58
    # Line 1803
    sw	$at,356($v1)
.L0db0f10c:
    # Line 455
    beq	$s3,$t0,.L0db0fdec
    # Line 462
    la	$a3,__glSpanSwapBytes4
    b	.L0db0e280
    sw	$a3,360($s1)
.L0db0f11c:
    # Line 650
    sltiu	$a4,$a0,6407
    beqz	$a4,.L0db0f678
    sltiu	$v1,$a0,6410
    # Line 688
    lbu	$at,30576($s0)
    beqzl	$at,.L0db1012c
    # Line 691
    lbu	$v1,428($s1)
    sd	$s8,272($sp)
    # Line 689
    la	$v1,__glSpanModifyAlpha
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    b	.L0db0ee48
    sw	$v1,356($a3)
.L0db0f150:
    # Line 839
    beqz	$a4,.L0db0fe08
    # Line 865
    li	$a3,5121
    sd	$s8,272($sp)
    b	.L0db0e478
    # Line 918
    lw	$s8,4($sp)
.L0db0f164:
    # Line 1374
    sltiu	$at,$a0,6407
    bnez	$at,.L0db0e32c
    sltiu	$v1,$a0,6410
    bnez	$v1,.L0db0fb60
    sltiu	$a3,$a0,6411
    bnez	$a3,.L0db0e32c
    li	$v0,0x8049
    sltu	$a4,$a0,$v0
    bnez	$a4,.L0db102b0
    sltu	$at,$v0,$a0
    bnez	$at,.L0db0e34c
    # Line 1416
    sltiu	$at,$a2,6406
    b	.L0db0e330
    ld	$v1,104($sp)
.L0db0f19c:
    # Line 1779
    beqz	$v0,.L0db0e4a4
    # Line 1784
    la	$v1,__glSpanRGBAScaleBias
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    b	.L0db0e4a4
    sw	$v1,356($a3)
.L0db0f1b8:
    # Line 1871
    lbu	$a4,429($s1)
    beqz	$a4,.L0db0ec58
    li	$at,5120
    # Line 1875
    beq	$at,$a6,.L0db10070
    li	$v1,5121
    beq	$a6,$v1,.L0db100d4
    li	$a3,5122
    beq	$a6,$a3,.L0db10164
    li	$a4,5123
    beq	$a6,$a4,.L0db101fc
    li	$at,5124
    beq	$a6,$at,.L0db1023c
    li	$v1,5125
    bne	$a6,$v1,.L0db0ec5c
    ld	$a3,144($sp)
    # Line 1892
    la	$a3,__glSpanPackNonCompUint
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    b	.L0db0ec58
    sw	$a3,356($a4)
.L0db0f20c:
    # Line 1905
    beqz	$at,.L0db0ec78
    nop
    lw	$v0,116($s1)
    beq	$v0,$t0,.L0db10088
    # Line 1909
    li	$v1,4
    bne	$v0,$v1,.L0db0ec78
    # Line 1911
    la	$a3,__glSpanAlignPixels4Dst
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    b	.L0db0ec78
    sw	$a3,356($a4)
.L0db0f23c:
    # Line 535
    la	$at,__glSpanUnpackUint
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 536
    b	.L0db0ed90
    # Line 535
    sw	$at,356($v1)
.L0db0f254:
    # Line 1707
    sltiu	$a3,$a2,6407
    bnez	$a3,.L0db0f72c
    sltiu	$a4,$a2,6408
    beqz	$a4,.L0db0fbfc
    sltiu	$at,$a2,6410
    # Line 1709
    lbu	$at,428($s1)
    beqz	$at,.L0db1043c
    addiu	$s3,$s3,1
    la	$v0,__glSpanReduceRGB
.L0db0f278:
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1712
    b	.L0db0e4a4
    # Line 1709
    sw	$v0,356($v1)
.L0db0f288:
    # Line 1294
    li	$a3,6407
    bnel	$a0,$a3,.L0db0e060
    # Line 1366
    lw	$v0,4($s2)
    b	.L0db0dfa0
    # Line 1315
    lbu	$v1,30576($s0)
.L0db0f29c:
    # Line 1426
    sltiu	$a4,$a2,6405
    bnez	$a4,.L0db0f7a4
    sltiu	$at,$a2,6406
    beqz	$at,.L0db0e71c
    ld	$v1,56($sp)
    b	.L0db0e530
    ld	$a3,136($sp)
.L0db0f2b8:
    sltiu	$v1,$a2,6408
    bnez	$v1,.L0db0f7b8
    sltiu	$a3,$a2,6409
    bnez	$a3,.L0db0e52c
    li	$a4,6409
    bne	$a2,$a4,.L0db0e71c
    ld	$v1,56($sp)
    b	.L0db0e530
    ld	$a3,136($sp)
.L0db0f2dc:
    # Line 205
    and	$at,$v0,$at
    beqz	$at,.L0db1002c
    # Line 214
    la	$t3,dummyFilter
    # Line 205
    lw	$v1,860($s0)
    beqz	$v1,.L0db0fcf0
    # Line 211
    la	$t3,dummyFilter
    # Line 205
    lw	$a3,864($s0)
    beqz	$a3,.L0db0fcec
    # Line 211
    la	$t3,dummyFilter
    li	$t8,1
    # Line 210
    addiu	$a4,$s0,812
    # Line 211
    b	.L0db0d854
    # Line 210
    sw	$a4,436($s1)
.L0db0f310:
    b	.L0db0e974
    sd	$zero,32($sp)
.L0db0f318:
    # Line 452
    la	$at,__glSpanSwapAndSkipBytes2
    b	.L0db0e280
    sw	$at,360($s1)
.L0db0f324:
    # Line 1823
    sltiu	$v1,$a6,5125
    bnez	$v1,.L0db0f824
    # Line 1825
    sltiu	$a3,$a6,5126
    bnez	$a3,.L0db0fd78
    li	$v0,0x8034
    sltu	$a4,$a6,$v0
    bnez	$a4,.L0db10038
    sltu	$at,$v0,$a6
    beqz	$at,.L0db103cc
    li	$v0,0x8036
    sltu	$v1,$a6,$v0
    bnez	$v1,.L0db10458
    sltu	$a3,$v0,$a6
    bnez	$a3,.L0db0ec5c
    ld	$a3,144($sp)
    # Line 1867
    li	$a4,4
    # Line 1865
    la	$at,__glSpanPack_10_10_10_2_Uint
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    sw	$at,356($v1)
    # Line 1868
    b	.L0db0ec58
    # Line 1867
    sw	$a4,108($s1)
.L0db0f380:
    # Line 796
    bnel	$a5,$a2,.L0db0e468
    # Line 839
    lw	$v1,8($s2)
    b	.L0db0e438
    # Line 808
    lbu	$at,3104($s0)
.L0db0f390:
    # Line 796
    sltiu	$a3,$a2,6408
    bnez	$a3,.L0db0f8b0
    sltiu	$a4,$a2,6409
    bnez	$a4,.L0db0e434
    li	$at,6409
    bnel	$a2,$at,.L0db0e468
    # Line 839
    lw	$v1,8($s2)
    b	.L0db0e438
    # Line 808
    lbu	$at,3104($s0)
.L0db0f3b4:
    # Line 1921
    sltiu	$v1,$a2,6409
    bnez	$v1,.L0db0f930
    sltiu	$a3,$a2,6410
    beqz	$a3,.L0db0ec24
    # Line 1935
    la	$a4,__glSpanReduceLuminance
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 1936
    b	.L0db0ec24
    # Line 1935
    sw	$a4,356($at)
.L0db0f3dc:
    # Line 1903
    la	$v1,__glSpanSwapBytes2Dst
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    b	.L0db0ec78
    sw	$v1,356($a3)
.L0db0f3f4:
    # Line 928
    beqz	$a7,.L0db100a0
    sd	$s8,272($sp)
    # Line 929
    lw	$s8,12480($s0)
.L0db0f400:
    # Line 931
    lbu	$a4,30576($s0)
    beqz	$a4,.L0db0f41c
    # Line 935
    la	$v1,__glSpanModifyRGBA
    # Line 934
    la	$at,__glSpanPreUnscaleRGBA
    # Line 935
    li	$s3,2
    sw	$v1,364($s1)
    # Line 934
    sw	$at,360($s1)
.L0db0f41c:
    ld	$a3,136($sp)
    # Line 935
    beqzl	$a3,.L0db100a8
    # Line 940
    lw	$a3,12508($s0)
    # Line 938
    lw	$a4,12512($s0)
    b	.L0db0e6f0
    sw	$a4,8($sp)
.L0db0f434:
    # Line 820
    lbu	$v1,30578($s0)
    lw	$at,12488($s0)
    beqz	$v1,.L0db0e464
    sw	$at,4($sp)
    # Line 822
    la	$a3,__glSpanModifyDepth
    li	$s3,1
    b	.L0db0e464
    sw	$a3,360($s1)
.L0db0f454:
    # Line 650
    li	$a4,6403
    bnel	$a0,$a4,.L0db0ee4c
    sd	$s8,272($sp)
    # Line 652
    lbu	$at,30576($s0)
    beqz	$at,.L0db10588
    # Line 653
    la	$v1,__glSpanModifyRed
    addiu	$s3,$s3,1
    sll	$v0,$s3,0x2
    addu	$a3,$v0,$s1
    sw	$v1,356($a3)
.L0db0f47c:
    # Line 655
    lbu	$a4,424($s1)
    beqzl	$a4,.L0db0ee4c
    sd	$s8,272($sp)
    sd	$s8,272($sp)
    # Line 660
    addiu	$s3,$s3,1
    addiu	$v1,$v0,4
    la	$at,__glSpanZeroFillAlpha
    addu	$v1,$v1,$s1
    b	.L0db0ee48
    sw	$at,356($v1)
.L0db0f4a4:
    # Line 760
    lbu	$a3,30577($s0)
    beqzl	$a3,.L0db0ee4c
    sd	$s8,272($sp)
    sd	$s8,272($sp)
    # Line 761
    la	$a4,__glSpanModifyCI
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    b	.L0db0ee48
    sw	$a4,356($at)
.L0db0f4cc:
    # Line 1374
    li	$v1,6404
    bne	$a0,$v1,.L0db0e34c
    # Line 1416
    sltiu	$at,$a2,6406
    b	.L0db0e330
    ld	$v1,104($sp)
.L0db0f4e0:
    # Line 1921
    bne	$a5,$a2,.L0db0ec24
    # Line 1950
    la	$a3,__glSpanReduceRedAlpha
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    b	.L0db0ec24
    sw	$a3,356($a4)
.L0db0f4fc:
    # Line 1440
    lw	$at,12508($s0)
    b	.L0db0e718
    sw	$at,8($sp)
.L0db0f508:
    # Line 1390
    li	$v1,6403
    beq	$a0,$v1,.L0db1014c
    li	$a3,6404
    beq	$a0,$a3,.L0db101b0
    li	$a4,6405
    beq	$a0,$a4,.L0db10224
    li	$at,6406
    beq	$a0,$at,.L0db103b4
    li	$v1,6407
    beq	$a0,$v1,.L0db100ec
    li	$a3,6409
    beq	$a0,$a3,.L0db100ec
    la	$a4,__glSpanClampRGBA
    # Line 1408
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    b	.L0db0e348
    sw	$a4,356($at)
.L0db0f550:
    # Line 1905
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    b	.L0db0ec78
    sw	$v1,356($a3)
.L0db0f564:
    # Line 518
    li	$a4,0x8033
    sltu	$a4,$a1,$a4
    bnez	$a4,.L0db0fa44
    li	$at,0x8033
    sltu	$at,$at,$a1
    beqz	$at,.L0db0feb4
    # Line 569
    li	$at,4
    # Line 585
    b	.L0db0ed94
    ld	$at,48($sp)
.L0db0f588:
    # Line 1801
    li	$v1,5124
    bne	$a6,$v1,.L0db0ec5c
    ld	$a3,144($sp)
    # Line 1815
    la	$a3,__glSpanPackIntI
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1816
    b	.L0db0ec58
    # Line 1815
    sw	$a3,356($a4)
.L0db0f5ac:
    # Line 944
    beqz	$a7,.L0db10104
    sd	$s8,272($sp)
    # Line 945
    lw	$s8,12472($s0)
.L0db0f5b8:
    # Line 947
    lbu	$at,30577($s0)
    beqz	$at,.L0db0f5cc
    # Line 950
    la	$v1,__glSpanModifyCI
    li	$s3,1
    sw	$v1,360($s1)
.L0db0f5cc:
    ld	$a3,136($sp)
    beqzl	$a3,.L0db1010c
    # Line 955
    lw	$a3,12500($s0)
    # Line 953
    lw	$a4,12504($s0)
    b	.L0db0e6f0
    sw	$a4,8($sp)
.L0db0f5e4:
    # Line 1929
    la	$at,__glSpanReduceGreen
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1930
    b	.L0db0ec24
    # Line 1929
    sw	$at,356($v1)
.L0db0f5fc:
    # Line 600
    sltiu	$a3,$a6,5123
    bnez	$a3,.L0db0fa58
    sltiu	$a4,$a6,5124
    beqz	$a4,.L0db0fe64
.L0db0f60c:
    # Line 609
    la	$at,__glSpanClampPreFloat
.L0db0f610:
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 610
    b	.L0db0edac
    # Line 609
    sw	$at,356($v1)
.L0db0f624:
    # Line 1010
    la	$a3,__glSpanConvolveReduceRGB
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    b	.L0db0e7dc
    sw	$a3,356($a4)
.L0db0f63c:
    # Line 1190
    la	$at,__glSpanHistogramA
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1191
    b	.L0db0de1c
    # Line 1190
    sw	$at,356($v1)
.L0db0f654:
    # Line 518
    li	$a3,5120
    bne	$a3,$a1,.L0db0ed94
    ld	$at,48($sp)
    # Line 520
    la	$a4,__glSpanUnpackByte
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 521
    b	.L0db0ed90
    # Line 520
    sw	$a4,356($at)
.L0db0f678:
    # Line 650
    bnez	$v1,.L0db0fb00
    sltiu	$a3,$a0,6411
    beqz	$a3,.L0db0ff2c
    li	$v0,0x8049
    # Line 721
    lbu	$a4,30576($s0)
    beqzl	$a4,.L0db10518
    # Line 725
    lbu	$a4,428($s1)
    sd	$s8,272($sp)
    # Line 722
    la	$at,__glSpanModifyLuminanceAlpha
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    b	.L0db0ee48
    sw	$at,356($v1)
.L0db0f6b0:
    # Line 1966
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    b	.L0db0e708
    sw	$a3,356($a4)
.L0db0f6c4:
    # Line 959
    beqz	$a7,.L0db1017c
    sd	$s8,272($sp)
    # Line 960
    lw	$s8,12496($s0)
.L0db0f6d0:
    # Line 962
    lbu	$at,30579($s0)
    beqz	$at,.L0db0f6e4
    # Line 965
    la	$v1,__glSpanModifyStencil
    li	$s3,1
    sw	$v1,360($s1)
.L0db0f6e4:
    ld	$a3,136($sp)
    beqzl	$a3,.L0db10184
    # Line 970
    lw	$a4,12524($s0)
    # Line 968
    lw	$a4,12528($s0)
    b	.L0db0e6f0
    sw	$a4,8($sp)
.L0db0f6fc:
    # Line 526
    la	$at,__glSpanUnpackShort
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 527
    b	.L0db0ed90
    # Line 526
    sw	$at,356($v1)
.L0db0f714:
    # Line 1806
    la	$a3,__glSpanPackUbyteI
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1807
    b	.L0db0ec58
    # Line 1806
    sw	$a3,356($a4)
.L0db0f72c:
    # Line 1707
    sltiu	$at,$a2,6404
    bnez	$at,.L0db0fbc8
    sltiu	$v1,$a2,6405
    beqz	$v1,.L0db0ffc0
    sltiu	$v1,$a2,6406
    # Line 1719
    lbu	$a3,428($s1)
    beqz	$a3,.L0db105a8
    addiu	$s3,$s3,1
    la	$v0,__glSpanReduceGreen
.L0db0f750:
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1722
    b	.L0db0e4a4
    # Line 1719
    sw	$v0,356($a4)
.L0db0f760:
    # Line 1022
    la	$at,__glSpanConvolveReduceRGBA
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    b	.L0db0e8e4
    sw	$at,356($v1)
.L0db0f778:
    # Line 1193
    la	$a3,__glSpanHistogramL
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1194
    b	.L0db0de1c
    # Line 1193
    sw	$a3,356($a4)
.L0db0f790:
    # Line 1294
    li	$at,0x8000
    bnel	$a0,$at,.L0db0e060
    # Line 1366
    lw	$v0,4($s2)
    b	.L0db0dfa0
    # Line 1315
    lbu	$v1,30576($s0)
.L0db0f7a4:
    # Line 1426
    li	$v1,6404
    bne	$a2,$v1,.L0db0e71c
    ld	$v1,56($sp)
    b	.L0db0e530
    ld	$a3,136($sp)
.L0db0f7b8:
    li	$a3,6407
    bne	$a2,$a3,.L0db0e71c
    ld	$v1,56($sp)
    b	.L0db0e530
    ld	$a3,136($sp)
.L0db0f7cc:
    ld	$a4,136($sp)
    # Line 1458
    beqzl	$a4,.L0db101a8
    # Line 1461
    lw	$a4,12524($s0)
    # Line 1459
    lw	$at,12528($s0)
    b	.L0db0e718
    sw	$at,8($sp)
.L0db0f7e4:
    # Line 816
    li	$s3,1
    # Line 815
    lw	$v1,12472($s0)
    # Line 816
    sw	$a3,360($s1)
    b	.L0db0e464
    # Line 815
    sw	$v1,4($sp)
.L0db0f7f8:
    # Line 796
    li	$a4,6403
    bnel	$a2,$a4,.L0db0e468
    # Line 839
    lw	$v1,8($s2)
    b	.L0db0e438
    # Line 808
    lbu	$at,3104($s0)
.L0db0f80c:
    # Line 1034
    la	$at,__glSpanConvolveReduceL
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    b	.L0db0e9e8
    sw	$at,356($v1)
.L0db0f824:
    # Line 1825
    sltiu	$a3,$a6,5122
    bnez	$a3,.L0db0fcc0
    sltiu	$a4,$a6,5123
    bnez	$a4,.L0db10114
    sltiu	$at,$a6,5124
    bnez	$at,.L0db10364
    sltiu	$v1,$a6,5125
    beqz	$v1,.L0db0ec5c
    ld	$a3,144($sp)
    # Line 1839
    la	$a3,__glSpanPackInt
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1840
    b	.L0db0ec58
    # Line 1839
    sw	$a3,356($a4)
.L0db0f860:
    # Line 974
    beqz	$a7,.L0db10214
    sd	$s8,272($sp)
    # Line 975
    lw	$s8,12488($s0)
.L0db0f86c:
    # Line 977
    lbu	$at,30578($s0)
    beqz	$at,.L0db0f880
    # Line 980
    la	$v1,__glSpanModifyDepth
    li	$s3,1
    sw	$v1,360($s1)
.L0db0f880:
    ld	$a3,136($sp)
    beqzl	$a3,.L0db1021c
    # Line 985
    lw	$at,12516($s0)
    # Line 983
    lw	$a4,12520($s0)
    b	.L0db0e6f0
    sw	$a4,8($sp)
.L0db0f898:
    # Line 1196
    la	$at,__glSpanHistogramLA
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1197
    b	.L0db0de1c
    # Line 1196
    sw	$at,356($v1)
.L0db0f8b0:
    # Line 796
    li	$a3,6407
    bnel	$a2,$a3,.L0db0e468
    # Line 839
    lw	$v1,8($s2)
    b	.L0db0e438
    # Line 808
    lbu	$at,3104($s0)
.L0db0f8c4:
    # Line 796
    sltu	$a4,$a2,$v0
    bnez	$a4,.L0db0fcfc
    sltu	$at,$v0,$a2
    bnezl	$at,.L0db0e468
    # Line 839
    lw	$v1,8($s2)
    b	.L0db0e438
    # Line 808
    lbu	$at,3104($s0)
.L0db0f8e0:
    # Line 1224
    la	$v1,__glSpanMinmaxSinkA
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    # Line 1225
    b	.L0db0de84
    # Line 1224
    sw	$v1,356($a3)
.L0db0f8f8:
    # Line 1045
    la	$a4,__glSpanConvolveReduceLA
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    b	.L0db0eae8
    sw	$a4,356($at)
.L0db0f910:
    # Line 1921
    li	$v1,6405
    bne	$a2,$v1,.L0db0ec24
    # Line 1932
    la	$a3,__glSpanReduceBlue
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1933
    b	.L0db0ec24
    # Line 1932
    sw	$a3,356($a4)
.L0db0f930:
    # Line 1921
    li	$at,6408
    bne	$a2,$at,.L0db0ec24
    # Line 1944
    la	$v1,__glSpanPostUnscaleRGBA
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    # Line 1945
    b	.L0db0ec24
    # Line 1944
    sw	$v1,356($a3)
.L0db0f950:
    # Line 1199
    la	$a4,__glSpanHistogramRGB
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 1200
    b	.L0db0de1c
    # Line 1199
    sw	$a4,356($at)
.L0db0f968:
    # Line 832
    lbu	$a3,30577($s0)
    lw	$v1,12472($s0)
    beqz	$a3,.L0db0e464
    sw	$v1,4($sp)
    # Line 834
    la	$a4,__glSpanModifyCI
    li	$s3,1
    b	.L0db0e464
    sw	$a4,360($s1)
.L0db0f988:
    # Line 1227
    la	$at,__glSpanMinmaxSinkL
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1228
    b	.L0db0de84
    # Line 1227
    sw	$at,356($v1)
.L0db0f9a0:
    # Line 650
    bnel	$a0,$a3,.L0db0ee4c
    sd	$s8,272($sp)
    # Line 676
    lbu	$a4,30576($s0)
    beqz	$a4,.L0db105f8
    # Line 677
    la	$at,__glSpanModifyBlue
    addiu	$s3,$s3,1
    sll	$v0,$s3,0x2
    addu	$v1,$v0,$s1
    sw	$at,356($v1)
.L0db0f9c4:
    # Line 679
    lbu	$a3,424($s1)
    beqzl	$a3,.L0db0ee4c
    sd	$s8,272($sp)
    sd	$s8,272($sp)
    # Line 684
    addiu	$s3,$s3,1
    addiu	$at,$v0,4
    la	$a4,__glSpanZeroFillAlpha
    addu	$at,$at,$s1
    b	.L0db0ee48
    sw	$a4,356($at)
.L0db0f9ec:
    # Line 1938
    la	$v1,__glSpanReduceLuminanceAlpha
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    # Line 1939
    b	.L0db0ec24
    # Line 1938
    sw	$v1,356($a3)
.L0db0fa04:
    # Line 1056
    la	$a4,__glSpanConvolveReduceI
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    b	.L0db0ebfc
    sw	$a4,356($at)
.L0db0fa1c:
    ld	$v1,200($sp)
    # Line 1350
    bnez	$v1,.L0db0eca4
    # Line 1351
    move	$v0,$zero
    b	.L0db0eca4
    li	$v0,1
.L0db0fa30:
    # Line 518
    li	$a3,5123
    beq	$a1,$a3,.L0db103ec
    # Line 529
    la	$at,__glSpanUnpackUshort
    # Line 585
    b	.L0db0ed94
    ld	$at,48($sp)
.L0db0fa44:
    # Line 518
    li	$a4,0x8032
    beq	$a1,$a4,.L0db10400
    # Line 564
    li	$a3,3
    # Line 585
    b	.L0db0ed94
    ld	$at,48($sp)
.L0db0fa58:
    # Line 600
    sltiu	$at,$a6,5121
    bnez	$at,.L0db0fe2c
    sltiu	$v1,$a6,5122
    bnez	$v1,.L0db0f60c
    li	$a3,5122
    bne	$a6,$a3,.L0db0edac
    nop
    b	.L0db0fe38
    # Line 604
    la	$a3,__glSpanClampNegPreFloat
.L0db0fa7c:
    # Line 600
    sltu	$a4,$a6,$a4
    bnez	$a4,.L0db0fc40
    li	$at,0x8034
    sltu	$at,$at,$a6
    beqz	$at,.L0db0fc58
    li	$v1,0x8036
    sltu	$v1,$a6,$v1
    bnez	$v1,.L0db10444
    li	$a3,0x8036
    sltu	$a3,$a3,$a6
    bnez	$a3,.L0db0edac
    nop
    b	.L0db0fc5c
    # Line 620
    la	$at,__glSpanClampRGBA
.L0db0fab4:
    # Line 1230
    la	$a4,__glSpanMinmaxSinkLA
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 1231
    b	.L0db0de84
    # Line 1230
    sw	$a4,356($at)
.L0db0facc:
    # Line 574
    li	$v1,4
    # Line 572
    la	$a3,__glSpanUnpack5551Ushort
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    sw	$a3,356($a4)
    # Line 575
    b	.L0db0ed90
    # Line 574
    sw	$v1,28($s1)
.L0db0faec:
    # Line 1818
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1819
    b	.L0db0ec58
    # Line 1818
    sw	$at,356($v1)
.L0db0fb00:
    # Line 650
    sltiu	$a3,$a0,6408
    bnez	$a3,.L0db0fedc
    sltiu	$a4,$a0,6409
    bnez	$a4,.L0db10288
    li	$at,6409
    bnel	$a0,$at,.L0db0ee4c
    sd	$s8,272($sp)
    # Line 709
    lbu	$v1,30576($s0)
    beqz	$v1,.L0db10868
    # Line 710
    la	$a3,__glSpanModifyLuminance
    addiu	$s3,$s3,1
    sll	$v0,$s3,0x2
    addu	$a4,$v0,$s1
    sw	$a3,356($a4)
.L0db0fb38:
    # Line 712
    lbu	$at,424($s1)
    beqzl	$at,.L0db0ee4c
    sd	$s8,272($sp)
    sd	$s8,272($sp)
    # Line 717
    addiu	$s3,$s3,1
    addiu	$a3,$v0,4
    la	$v1,__glSpanZeroFillAlpha
    addu	$a3,$a3,$s1
    b	.L0db0ee48
    sw	$v1,356($a3)
.L0db0fb60:
    # Line 1374
    sltiu	$a4,$a0,6408
    bnez	$a4,.L0db0ff84
    sltiu	$at,$a0,6409
    bnez	$at,.L0db0e32c
    li	$v1,6409
    bne	$a0,$v1,.L0db0e34c
    # Line 1416
    sltiu	$at,$a2,6406
    b	.L0db0e330
    ld	$v1,104($sp)
.L0db0fb84:
    # Line 498
    la	$a3,__glSpanUnpackByteI
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 499
    b	.L0db0ed90
    # Line 498
    sw	$a3,356($a4)
.L0db0fb9c:
    # Line 523
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 524
    b	.L0db0ed90
    # Line 523
    sw	$at,356($v1)
.L0db0fbb0:
    # Line 1233
    la	$a3,__glSpanMinmaxSinkRGB
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1235
    b	.L0db0de84
    # Line 1233
    sw	$a3,356($a4)
.L0db0fbc8:
    # Line 1707
    sltiu	$at,$a2,6403
    bnez	$at,.L0db0ff98
    sltiu	$v1,$a2,6404
    beqzl	$v1,.L0db0e4a8
    # Line 1784
    lbu	$v1,12($s2)
    # Line 1714
    lbu	$a3,428($s1)
    beqz	$a3,.L0db10620
    addiu	$s3,$s3,1
    la	$v0,__glSpanReduceRed
.L0db0fbec:
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1717
    b	.L0db0e4a4
    # Line 1714
    sw	$v0,356($a4)
.L0db0fbfc:
    # Line 1707
    bnez	$at,.L0db0fff0
    sltiu	$v1,$a2,6411
    bnez	$v1,.L0db1033c
    li	$v0,0x8049
    sltu	$a3,$a2,$v0
    bnez	$a3,.L0db10484
    sltu	$a4,$v0,$a2
    bnezl	$a4,.L0db0e4a8
    # Line 1784
    lbu	$v1,12($s2)
    # Line 1775
    lbu	$at,428($s1)
    beqz	$at,.L0db10838
    addiu	$s3,$s3,1
    la	$v0,__glSpanReduceRed
.L0db0fc30:
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1778
    b	.L0db0e4a4
    # Line 1775
    sw	$v0,356($v1)
.L0db0fc40:
    # Line 600
    li	$a3,0x8033
    sltu	$a3,$a6,$a3
    bnez	$a3,.L0db101dc
    li	$a4,0x8033
    sltu	$a4,$a4,$a6
    bnez	$a4,.L0db0edac
.L0db0fc58:
    # Line 620
    la	$at,__glSpanClampRGBA
.L0db0fc5c:
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    b	.L0db0edac
    sw	$at,356($v1)
.L0db0fc70:
    # Line 1426
    li	$a3,0x8000
    bne	$a2,$a3,.L0db0e71c
    ld	$v1,56($sp)
    b	.L0db0e530
    ld	$a3,136($sp)
.L0db0fc84:
    # Line 501
    la	$a4,__glSpanUnpackUbyteI
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 502
    b	.L0db0ed90
    # Line 501
    sw	$a4,356($at)
.L0db0fc9c:
    # Line 732
    beqzl	$v1,.L0db1041c
    # Line 735
    lbu	$v1,428($s1)
    sd	$s8,272($sp)
    # Line 733
    la	$a3,__glSpanModifyRedAlpha
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    b	.L0db0ee48
    sw	$a3,356($a4)
.L0db0fcc0:
    # Line 1825
    sltiu	$at,$a6,5121
    bnez	$at,.L0db100b0
    sltiu	$v1,$a6,5122
    beqz	$v1,.L0db0ec5c
    ld	$a3,144($sp)
    # Line 1830
    la	$a3,__glSpanPackUbyte
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1831
    b	.L0db0ec58
    # Line 1830
    sw	$a3,356($a4)
.L0db0fcec:
    # Line 211
    la	$t3,dummyFilter
.L0db0fcf0:
    # Line 214
    move	$t8,$zero
    b	.L0db0d854
    # Line 213
    sw	$t3,436($s1)
.L0db0fcfc:
    # Line 796
    li	$at,0x8000
    bnel	$a2,$at,.L0db0e468
    # Line 839
    lw	$v1,8($s2)
    b	.L0db0e438
    # Line 808
    lbu	$at,3104($s0)
.L0db0fd10:
    ld	$v1,120($sp)
    # Line 476
    beqz	$v1,.L0db0e284
    nop
    lw	$s3,36($s1)
    beq	$s3,$a5,.L0db10560
    # Line 481
    la	$v1,__glSpanSkipPixels1
    beq	$s3,$t0,.L0db10554
    # Line 485
    la	$a3,__glSpanSkipPixels4
    sw	$a3,360($s1)
.L0db0fd34:
    b	.L0db0e284
    li	$s3,1
.L0db0fd3c:
    # Line 631
    la	$a4,__glSpanUnpackBitmap
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    b	.L0db0edb4
    sw	$a4,356($at)
.L0db0fd54:
    # Line 1489
    li	$v1,5121
    beq	$a1,$v1,.L0db104b0
    li	$a3,5123
    beq	$a1,$a3,.L0db104f4
    li	$a4,5125
    beq	$a1,$a4,.L0db10574
    lw	$v0,8($sp)
    b	.L0db0e084
    ld	$s0,232($sp)
.L0db0fd78:
    # Line 1842
    la	$at,__glSpanPackUint
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1843
    b	.L0db0ec58
    # Line 1842
    sw	$at,356($v1)
.L0db0fd90:
    # Line 504
    la	$a3,__glSpanUnpackShortI
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 505
    b	.L0db0ed90
    # Line 504
    sw	$a3,356($a4)
.L0db0fda8:
    # Line 518
    li	$at,0x8035
    beq	$a1,$at,.L0db10538
    # Line 579
    li	$v1,4
    b	.L0db0ed94
    ld	$at,48($sp)
.L0db0fdbc:
    # Line 507
    la	$v1,__glSpanUnpackUshortI
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    # Line 508
    b	.L0db0ed90
    # Line 507
    sw	$v1,356($a3)
.L0db0fdd4:
    # Line 241
    bnezl	$a4,.L0db0e308
    sd	$s4,264($sp)
    beqzl	$t8,.L0db0d8a8
    sd	$s4,264($sp)
    b	.L0db0e304
    sd	$s4,264($sp)
.L0db0fdec:
    # Line 460
    la	$at,__glSpanSwapBytes2
    b	.L0db0e280
    sw	$at,360($s1)
.L0db0fdf8:
    # Line 470
    beq	$s3,$t0,.L0db104dc
    # Line 476
    la	$v1,__glSpanAlignPixels4
    b	.L0db0f094
    sw	$v1,360($s1)
.L0db0fe08:
    # Line 865
    beq	$a6,$a3,.L0db104e8
    li	$a4,5123
    beq	$a6,$a4,.L0db10568
    li	$at,5125
    beq	$a6,$at,.L0db105b0
    # Line 891
    li	$v1,6402
    sd	$s8,272($sp)
    # Line 865
    b	.L0db0e478
    lw	$s8,4($sp)
.L0db0fe2c:
    li	$v1,5120
    # Line 600
    bne	$v1,$a6,.L0db0edac
    # Line 604
    la	$a3,__glSpanClampNegPreFloat
.L0db0fe38:
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 605
    b	.L0db0edac
    # Line 604
    sw	$a3,356($a4)
.L0db0fe4c:
    ld	$at,136($sp)
    # Line 1451
    beqzl	$at,.L0db10510
    # Line 1454
    lw	$a3,12500($s0)
    # Line 1452
    lw	$v1,12504($s0)
    b	.L0db0e718
    sw	$v1,8($sp)
.L0db0fe64:
    # Line 600
    sltiu	$a3,$a6,5125
    bnez	$a3,.L0db101c8
    sltiu	$a4,$a6,5126
    beqz	$a4,.L0db0edac
    nop
    b	.L0db0f610
    # Line 609
    la	$at,__glSpanClampPreFloat
.L0db0fe80:
    # Line 510
    la	$at,__glSpanUnpackIntI
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 511
    b	.L0db0ed90
    # Line 510
    sw	$at,356($v1)
.L0db0fe98:
    b	.L0db0e13c
    sd	$zero,16($sp)
.L0db0fea0:
    # Line 532
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 533
    b	.L0db0ed90
    # Line 532
    sw	$a3,356($a4)
.L0db0feb4:
    # Line 567
    la	$v1,__glSpanUnpack4444Ushort
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    sw	$v1,356($a3)
    # Line 570
    b	.L0db0ed90
    # Line 569
    sw	$at,28($s1)
.L0db0fed0:
    # Line 468
    la	$a4,__glSpanSlowSkipPixels2
    b	.L0db0f094
    sw	$a4,360($s1)
.L0db0fedc:
    # Line 650
    li	$at,6407
    bnel	$a0,$at,.L0db0ee4c
    sd	$s8,272($sp)
    # Line 697
    lbu	$v1,30576($s0)
    beqz	$v1,.L0db1074c
    # Line 698
    la	$a3,__glSpanModifyRGB
    addiu	$s3,$s3,1
    sll	$v0,$s3,0x2
    addu	$a4,$v0,$s1
    sw	$a3,356($a4)
.L0db0ff04:
    # Line 700
    lbu	$at,424($s1)
    beqzl	$at,.L0db0ee4c
    sd	$s8,272($sp)
    sd	$s8,272($sp)
    # Line 705
    addiu	$s3,$s3,1
    addiu	$a3,$v0,4
    la	$v1,__glSpanZeroFillAlpha
    addu	$a3,$a3,$s1
    b	.L0db0ee48
    sw	$v1,356($a3)
.L0db0ff2c:
    # Line 650
    sltu	$a4,$a0,$v0
    bnez	$a4,.L0db10254
    sltu	$at,$v0,$a0
    bnezl	$at,.L0db0ee4c
    sd	$s8,272($sp)
    # Line 779
    lbu	$v1,428($s1)
    beqz	$v1,.L0db10654
    addiu	$s3,$s3,1
    la	$a7,__glSpanExpandIntensity
.L0db0ff50:
    sll	$v0,$s3,0x2
    addu	$a4,$v0,$s1
    sw	$a7,356($a4)
    lbu	$a3,424($s1)
    beqzl	$a3,.L0db0ee4c
    sd	$s8,272($sp)
    sd	$s8,272($sp)
    # Line 783
    addiu	$s3,$s3,1
    addiu	$v1,$v0,4
    la	$at,__glSpanZeroFillAlpha
    addu	$v1,$v1,$s1
    b	.L0db0ee48
    sw	$at,356($v1)
.L0db0ff84:
    # Line 1374
    li	$a3,6407
    bne	$a0,$a3,.L0db0e34c
    # Line 1416
    sltiu	$at,$a2,6406
    b	.L0db0e330
    ld	$v1,104($sp)
.L0db0ff98:
    # Line 1707
    bnel	$a5,$a2,.L0db0e4a8
    # Line 1784
    lbu	$v1,12($s2)
    # Line 1754
    lbu	$a4,428($s1)
    beqz	$a4,.L0db107b0
    addiu	$s3,$s3,1
    la	$v0,__glSpanReduceRedAlpha
.L0db0ffb0:
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 1757
    b	.L0db0e4a4
    # Line 1754
    sw	$v0,356($at)
.L0db0ffc0:
    # Line 1707
    bnez	$v1,.L0db102e4
    sltiu	$a3,$a2,6407
    beqzl	$a3,.L0db0e4a8
    # Line 1784
    lbu	$v1,12($s2)
    # Line 1759
    lbu	$a4,428($s1)
    beqz	$a4,.L0db10678
    addiu	$s3,$s3,1
    la	$v0,__glSpanReduceAlpha
.L0db0ffe0:
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 1762
    b	.L0db0e4a4
    # Line 1759
    sw	$v0,356($at)
.L0db0fff0:
    # Line 1707
    sltiu	$v1,$a2,6409
    bnez	$v1,.L0db10310
    sltiu	$a3,$a2,6410
    beqzl	$a3,.L0db0e4a8
    # Line 1784
    lbu	$v1,12($s2)
    # Line 1729
    lbu	$a4,430($s1)
    beqz	$a4,.L0db1065c
    lbu	$v0,428($s1)
    # Line 1730
    beqz	$v0,.L0db106d8
    addiu	$s3,$s3,1
    la	$v0,__glSpanReduceRed
.L0db1001c:
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    b	.L0db0e4a4
    sw	$v0,356($at)
.L0db1002c:
    # Line 218
    move	$t8,$zero
    b	.L0db0d854
    # Line 217
    sw	$t3,436($s1)
.L0db10038:
    # Line 1825
    li	$v0,0x8033
    sltu	$v1,$a6,$v0
    bnez	$v1,.L0db10388
    sltu	$a3,$v0,$a6
    bnez	$a3,.L0db0ec5c
    ld	$a3,144($sp)
    # Line 1852
    li	$a4,4
    # Line 1850
    la	$at,__glSpanPack4444Ushort
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    sw	$at,356($v1)
    # Line 1853
    b	.L0db0ec58
    # Line 1852
    sw	$a4,108($s1)
.L0db10070:
    # Line 1877
    la	$a3,__glSpanPackNonCompByte
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1878
    b	.L0db0ec58
    # Line 1877
    sw	$a3,356($a4)
.L0db10088:
    # Line 1909
    la	$at,__glSpanAlignPixels2Dst
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    b	.L0db0ec78
    sw	$at,356($v1)
.L0db100a0:
    b	.L0db0f400
    # Line 931
    lw	$s8,12476($s0)
.L0db100a8:
    b	.L0db0e6f0
    # Line 940
    sw	$a3,8($sp)
.L0db100b0:
    li	$a4,5120
    # Line 1825
    bne	$a4,$a6,.L0db0ec5c
    ld	$a3,144($sp)
    # Line 1827
    la	$at,__glSpanPackByte
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1828
    b	.L0db0ec58
    # Line 1827
    sw	$at,356($v1)
.L0db100d4:
    # Line 1880
    la	$a3,__glSpanPackNonCompUbyte
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1881
    b	.L0db0ec58
    # Line 1880
    sw	$a3,356($a4)
.L0db100ec:
    la	$at,__glSpanClampRGB
    # Line 1405
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1406
    b	.L0db0e348
    # Line 1405
    sw	$at,356($v1)
.L0db10104:
    b	.L0db0f5b8
    # Line 947
    lw	$s8,12468($s0)
.L0db1010c:
    b	.L0db0e6f0
    # Line 955
    sw	$a3,8($sp)
.L0db10114:
    # Line 1833
    la	$a4,__glSpanPackShort
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 1834
    b	.L0db0ec58
    # Line 1833
    sw	$a4,356($at)
.L0db1012c:
    # Line 691
    beqz	$v1,.L0db105c4
    addiu	$s3,$s3,1
    la	$v0,__glSpanExpandAlpha
.L0db10138:
    sd	$s8,272($sp)
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    b	.L0db0ee48
    sw	$v0,356($a3)
.L0db1014c:
    # Line 1392
    la	$a4,__glSpanClampRed
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 1393
    b	.L0db0e348
    # Line 1392
    sw	$a4,356($at)
.L0db10164:
    # Line 1883
    la	$v1,__glSpanPackNonCompShort
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    # Line 1884
    b	.L0db0ec58
    # Line 1883
    sw	$v1,356($a3)
.L0db1017c:
    b	.L0db0f6d0
    # Line 962
    lw	$s8,12492($s0)
.L0db10184:
    b	.L0db0e6f0
    # Line 970
    sw	$a4,8($sp)
.L0db1018c:
    # Line 582
    la	$v1,__glSpanUnpack_10_10_10_2_Uint
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    sw	$v1,356($a3)
    # Line 585
    b	.L0db0ed90
    # Line 584
    sw	$at,28($s1)
.L0db101a8:
    b	.L0db0e718
    # Line 1461
    sw	$a4,8($sp)
.L0db101b0:
    # Line 1395
    la	$at,__glSpanClampGreen
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1396
    b	.L0db0e348
    # Line 1395
    sw	$at,356($v1)
.L0db101c8:
    # Line 600
    li	$a3,5124
    bne	$a6,$a3,.L0db0edac
    nop
    b	.L0db0fe38
    # Line 604
    la	$a3,__glSpanClampNegPreFloat
.L0db101dc:
    # Line 600
    li	$a4,0x8032
    bne	$a6,$a4,.L0db0edac
    # Line 614
    la	$at,__glSpanClampRGB
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 615
    b	.L0db0edac
    # Line 614
    sw	$at,356($v1)
.L0db101fc:
    # Line 1886
    la	$a3,__glSpanPackNonCompUshort
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    # Line 1887
    b	.L0db0ec58
    # Line 1886
    sw	$a3,356($a4)
.L0db10214:
    b	.L0db0f86c
    # Line 977
    lw	$s8,12484($s0)
.L0db1021c:
    b	.L0db0e6f0
    # Line 985
    sw	$at,8($sp)
.L0db10224:
    # Line 1398
    la	$v1,__glSpanClampBlue
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    # Line 1399
    b	.L0db0e348
    # Line 1398
    sw	$v1,356($a3)
.L0db1023c:
    # Line 1889
    la	$a4,__glSpanPackNonCompInt
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 1890
    b	.L0db0ec58
    # Line 1889
    sw	$a4,356($at)
.L0db10254:
    # Line 650
    li	$v1,0x8000
    bnel	$a0,$v1,.L0db0ee4c
    sd	$s8,272($sp)
    # Line 765
    lbu	$a3,30576($s0)
    beqzl	$a3,.L0db10888
    # Line 768
    lbu	$a3,428($s1)
    sd	$s8,272($sp)
    # Line 766
    la	$a4,__glSpanModifyABGR
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    b	.L0db0ee48
    sw	$a4,356($at)
.L0db10288:
    # Line 741
    lbu	$v1,30576($s0)
    beqzl	$v1,.L0db105d4
    # Line 742
    lbu	$a4,428($s1)
    sd	$s8,272($sp)
    la	$a3,__glSpanModifyRGBA
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    b	.L0db0ee48
    sw	$a3,356($a4)
.L0db102b0:
    # Line 1374
    li	$at,0x8000
    bne	$a0,$at,.L0db0e34c
    # Line 1416
    sltiu	$at,$a2,6406
    b	.L0db0e330
    ld	$v1,104($sp)
.L0db102c4:
    # Line 667
    lbu	$v1,428($s1)
    beqz	$v1,.L0db10618
    addiu	$s3,$s3,1
    la	$a7,__glSpanExpandGreen
.L0db102d4:
    sll	$v0,$s3,0x2
    addu	$a3,$v0,$s1
    b	.L0db0ef94
    sw	$a7,356($a3)
.L0db102e4:
    # Line 1707
    li	$a4,6405
    bnel	$a2,$a4,.L0db0e4a8
    # Line 1784
    lbu	$v1,12($s2)
    # Line 1724
    lbu	$at,428($s1)
    beqz	$at,.L0db108a8
    addiu	$s3,$s3,1
    la	$v0,__glSpanReduceBlue
.L0db10300:
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 1727
    b	.L0db0e4a4
    # Line 1724
    sw	$v0,356($v1)
.L0db10310:
    # Line 1707
    li	$a3,6408
    bnel	$a2,$a3,.L0db0e4a8
    # Line 1784
    lbu	$v1,12($s2)
    # Line 1764
    lbu	$a4,428($s1)
    beqz	$a4,.L0db0e4a4
    # Line 1765
    la	$at,__glSpanPostUnscaleRGBA
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    b	.L0db0e4a4
    sw	$at,356($v1)
.L0db1033c:
    # Line 1741
    lbu	$a3,430($s1)
    beqz	$a3,.L0db10628
    lbu	$v0,428($s1)
    # Line 1742
    beqz	$v0,.L0db10644
    addiu	$s3,$s3,1
    la	$v0,__glSpanReduceRedAlpha
.L0db10354:
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    b	.L0db0e4a4
    sw	$v0,356($a4)
.L0db10364:
    # Line 1825
    li	$at,5123
    bne	$a6,$at,.L0db0ec5c
    ld	$a3,144($sp)
    # Line 1836
    la	$v1,__glSpanPackUshort
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    # Line 1837
    b	.L0db0ec58
    # Line 1836
    sw	$v1,356($a3)
.L0db10388:
    # Line 1825
    li	$a4,0x8032
    bne	$a6,$a4,.L0db0ec5c
    ld	$a3,144($sp)
    # Line 1847
    li	$at,3
    # Line 1845
    la	$v1,__glSpanPack332Ubyte
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    sw	$v1,356($a3)
    # Line 1848
    b	.L0db0ec58
    # Line 1847
    sw	$at,108($s1)
.L0db103b4:
    # Line 1401
    la	$a4,__glSpanClampAlpha
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    # Line 1402
    b	.L0db0e348
    # Line 1401
    sw	$a4,356($at)
.L0db103cc:
    # Line 1857
    li	$v1,4
    # Line 1855
    la	$a3,__glSpanPack5551Ushort
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    sw	$a3,356($a4)
    # Line 1858
    b	.L0db0ec58
    # Line 1857
    sw	$v1,108($s1)
.L0db103ec:
    # Line 529
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    # Line 530
    b	.L0db0ed90
    # Line 529
    sw	$at,356($v1)
.L0db10400:
    # Line 538
    la	$a4,__glSpanUnpack332Ubyte
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    sw	$a4,356($at)
    # Line 565
    b	.L0db0ed90
    # Line 564
    sw	$a3,28($s1)
.L0db1041c:
    # Line 735
    beqz	$v1,.L0db1064c
    addiu	$s3,$s3,1
    la	$v0,__glSpanExpandRedAlpha
.L0db10428:
    sd	$s8,272($sp)
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    b	.L0db0ee48
    sw	$v0,356($a3)
.L0db1043c:
    b	.L0db0f278
    # Line 1709
    la	$v0,__glSpanReduceRGBNS
.L0db10444:
    # Line 600
    li	$a4,0x8035
    bne	$a6,$a4,.L0db0edac
    nop
    b	.L0db0fc5c
    # Line 620
    la	$at,__glSpanClampRGBA
.L0db10458:
    # Line 1825
    li	$at,0x8035
    bne	$a6,$at,.L0db0ec5c
    ld	$a3,144($sp)
    # Line 1862
    li	$v1,4
    # Line 1860
    la	$a3,__glSpanPack8888Uint
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    sw	$a3,356($a4)
    # Line 1863
    b	.L0db0ec58
    # Line 1862
    sw	$v1,108($s1)
.L0db10484:
    # Line 1707
    li	$at,0x8000
    bnel	$a2,$at,.L0db0e4a8
    # Line 1784
    lbu	$v1,12($s2)
    # Line 1770
    lbu	$v1,428($s1)
    beqz	$v1,.L0db108f8
    addiu	$s3,$s3,1
    la	$v0,__glSpanReorderABGR
.L0db104a0:
    sll	$a3,$s3,0x2
    addu	$a3,$a3,$s1
    # Line 1773
    b	.L0db0e4a4
    # Line 1770
    sw	$v0,356($a3)
.L0db104b0:
    # Line 1491
    li	$a4,6407
    beq	$a0,$a4,.L0db10680
    li	$at,6408
    beq	$a0,$at,.L0db106e0
    li	$v1,6401
    beq	$a0,$v1,.L0db10774
    li	$a3,6400
    beq	$a0,$a3,.L0db107d4
    lw	$v0,8($sp)
    b	.L0db0e084
    ld	$s0,232($sp)
.L0db104dc:
    # Line 474
    la	$a4,__glSpanAlignPixels2
    b	.L0db0f094
    sw	$a4,360($s1)
.L0db104e8:
    sd	$s8,272($sp)
    # Line 867
    b	.L0db0e478
    lw	$s8,4($sp)
.L0db104f4:
    # Line 1629
    li	$at,6401
    beq	$a0,$at,.L0db10738
    li	$v1,6400
    beq	$a0,$v1,.L0db10788
    lw	$v0,8($sp)
    b	.L0db0e084
    ld	$s0,232($sp)
.L0db10510:
    b	.L0db0e718
    # Line 1454
    sw	$a3,8($sp)
.L0db10518:
    # Line 725
    beqz	$a4,.L0db1076c
    addiu	$s3,$s3,1
    la	$v0,__glSpanExpandLuminanceAlpha
.L0db10524:
    sd	$s8,272($sp)
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    b	.L0db0ee48
    sw	$v0,356($at)
.L0db10538:
    # Line 577
    la	$a3,__glSpanUnpack8888Uint
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    sw	$a3,356($a4)
    # Line 580
    b	.L0db0ed90
    # Line 579
    sw	$v1,28($s1)
.L0db10554:
    # Line 483
    la	$at,__glSpanSkipPixels2
    b	.L0db0fd34
    sw	$at,360($s1)
.L0db10560:
    # Line 481
    b	.L0db0fd34
    sw	$v1,360($s1)
.L0db10568:
    sd	$s8,272($sp)
    # Line 881
    b	.L0db0e478
    lw	$s8,4($sp)
.L0db10574:
    # Line 1659
    li	$a3,6402
    beq	$a0,$a3,.L0db1079c
    lw	$v0,8($sp)
    b	.L0db0e084
    ld	$s0,232($sp)
.L0db10588:
    # Line 655
    lbu	$a4,428($s1)
    beqz	$a4,.L0db107b8
    addiu	$s3,$s3,1
    la	$a7,__glSpanExpandRed
.L0db10598:
    sll	$v0,$s3,0x2
    addu	$at,$v0,$s1
    b	.L0db0f47c
    sw	$a7,356($at)
.L0db105a8:
    b	.L0db0f750
    # Line 1719
    la	$v0,__glSpanReduceGreenNS
.L0db105b0:
    # Line 891
    beql	$a2,$v1,.L0db107c0
    # Line 893
    lbu	$at,30578($s0)
    sd	$s8,272($sp)
    # Line 891
    b	.L0db0e478
    lw	$s8,4($sp)
.L0db105c4:
    b	.L0db10138
    # Line 691
    la	$v0,__glSpanExpandAlphaNS
.L0db105cc:
    b	.L0db0e718
    # Line 1447
    sw	$a3,8($sp)
.L0db105d4:
    # Line 742
    beqzl	$a4,.L0db0ee4c
    sd	$s8,272($sp)
    sd	$s8,272($sp)
    # Line 745
    la	$at,__glSpanScaleRGBA
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    b	.L0db0ee48
    sw	$at,356($v1)
.L0db105f8:
    # Line 679
    lbu	$a3,428($s1)
    beqz	$a3,.L0db108b8
    addiu	$s3,$s3,1
    la	$a7,__glSpanExpandBlue
.L0db10608:
    sll	$v0,$s3,0x2
    addu	$a4,$v0,$s1
    b	.L0db0f9c4
    sw	$a7,356($a4)
.L0db10618:
    b	.L0db102d4
    # Line 667
    la	$a7,__glSpanExpandGreenNS
.L0db10620:
    b	.L0db0fbec
    # Line 1714
    la	$v0,__glSpanReduceRedNS
.L0db10628:
    # Line 1747
    beqz	$v0,.L0db108b0
    addiu	$s3,$s3,1
    la	$v0,__glSpanReduceLuminanceAlpha
.L0db10634:
    sll	$at,$s3,0x2
    addu	$at,$at,$s1
    b	.L0db0e4a4
    sw	$v0,356($at)
.L0db10644:
    b	.L0db10354
    # Line 1742
    la	$v0,__glSpanReduceRedAlphaNS
.L0db1064c:
    b	.L0db10428
    # Line 735
    la	$v0,__glSpanExpandRedAlphaNS
.L0db10654:
    b	.L0db0ff50
    # Line 779
    la	$a7,__glSpanExpandIntensityNS
.L0db1065c:
    # Line 1734
    beqz	$v0,.L0db108f0
    addiu	$s3,$s3,1
    la	$v0,__glSpanReduceLuminance
.L0db10668:
    sll	$v1,$s3,0x2
    addu	$v1,$v1,$s1
    b	.L0db0e4a4
    sw	$v0,356($v1)
.L0db10678:
    b	.L0db0ffe0
    # Line 1759
    la	$v0,__glSpanReduceAlphaNS
.L0db10680:
    # Line 1493
    ld	$a3,152($sp)
    beqz	$a3,.L0db1090c
    move	$s3,$zero
.L0db1068c:
    # Line 1500
    lbu	$a4,30576($s0)
    beqzl	$a4,.L0db1091c
    # Line 1504
    lw	$a4,30600($s0)
    # Line 1511
    lbu	$at,30640($s0)
    beqz	$at,.L0db10a84
    # Line 1515
    nop	# was lw $t9, -29144($gp) # &__glBuildRGBAModifyTables
.L0db106a4:
    # Line 1517
    lw	$a3,30644($s0)
    # Line 1520
    lw	$v1,30656($s0)
    # Line 1518
    lw	$a4,30648($s0)
    # Line 1519
    lw	$at,30652($s0)
    # Line 1520
    sw	$v1,30636($s0)
    ld	$v1,136($sp)
    # Line 1519
    sw	$at,30632($s0)
    # Line 1518
    sw	$a4,30628($s0)
    # Line 1520
    beqz	$v1,.L0db10900
    # Line 1517
    sw	$a3,30624($s0)
    # Line 1522
    la	$v0,__glSpanRenderRGBubyte2
    b	.L0db0e084
    ld	$s0,232($sp)
.L0db106d8:
    b	.L0db1001c
    # Line 1730
    la	$v0,__glSpanReduceRedNS
.L0db106e0:
    # Line 1529
    ld	$a3,152($sp)
    beqz	$a3,.L0db1096c
    move	$s3,$zero
.L0db106ec:
    # Line 1536
    lbu	$a4,30576($s0)
    beqzl	$a4,.L0db108c0
    # Line 1540
    lw	$v1,30600($s0)
    # Line 1543
    lbu	$at,30640($s0)
    beqz	$at,.L0db10a9c
    # Line 1546
    nop	# was lw $t9, -29144($gp) # &__glBuildRGBAModifyTables
.L0db10704:
    # Line 1548
    lw	$a3,30644($s0)
    # Line 1551
    lw	$v1,30656($s0)
    # Line 1549
    lw	$a4,30648($s0)
    # Line 1550
    lw	$at,30652($s0)
    # Line 1551
    sw	$v1,30636($s0)
    ld	$v1,136($sp)
    # Line 1550
    sw	$at,30632($s0)
    # Line 1549
    sw	$a4,30628($s0)
    # Line 1551
    beqz	$v1,.L0db108e4
    # Line 1548
    sw	$a3,30624($s0)
.L0db1072c:
    # Line 1554
    la	$v0,__glSpanRenderRGBAubyte2
    b	.L0db0e084
    ld	$s0,232($sp)
.L0db10738:
    # Line 1631
    lbu	$a3,30579($s0)
    beqz	$a3,.L0db1094c
    # Line 1638
    lw	$v0,8($sp)
    b	.L0db0e084
    ld	$s0,232($sp)
.L0db1074c:
    # Line 700
    lbu	$a4,428($s1)
    beqz	$a4,.L0db10964
    addiu	$s3,$s3,1
    la	$a7,__glSpanExpandRGB
.L0db1075c:
    sll	$v0,$s3,0x2
    addu	$at,$v0,$s1
    b	.L0db0ff04
    sw	$a7,356($at)
.L0db1076c:
    b	.L0db10524
    # Line 725
    la	$v0,__glSpanExpandLuminanceAlphaNS
.L0db10774:
    # Line 1560
    lbu	$v1,30579($s0)
    beqz	$v1,.L0db1097c
    # Line 1575
    lw	$v0,8($sp)
    b	.L0db0e084
    ld	$s0,232($sp)
.L0db10788:
    # Line 1643
    lbu	$a3,30577($s0)
    beqz	$a3,.L0db109a0
    # Line 1650
    lw	$v0,8($sp)
    b	.L0db0e084
    ld	$s0,232($sp)
.L0db1079c:
    # Line 1661
    lbu	$a4,30578($s0)
    beqz	$a4,.L0db109b8
    # Line 1682
    lw	$v0,8($sp)
    b	.L0db0e084
    ld	$s0,232($sp)
.L0db107b0:
    b	.L0db0ffb0
    # Line 1754
    la	$v0,__glSpanReduceRedAlphaNS
.L0db107b8:
    b	.L0db10598
    # Line 655
    la	$a7,__glSpanExpandRedNS
.L0db107c0:
    # Line 893
    beqzl	$at,.L0db10a00
    # Line 894
    lw	$v1,31368($s0)
    sd	$s8,272($sp)
    b	.L0db0e478
    # Line 908
    lw	$s8,4($sp)
.L0db107d4:
    # Line 1580
    ld	$v1,152($sp)
    beqz	$v1,.L0db10a40
    move	$s3,$zero
.L0db107e0:
    # Line 1587
    lbu	$a3,30577($s0)
    beqz	$a3,.L0db10a50
    # Line 1591
    ld	$a3,136($sp)
    # Line 1595
    lbu	$a4,3104($s0)
    beqzl	$a4,.L0db10a20
    # Line 1609
    lbu	$a3,30660($s0)
    # Line 1595
    lbu	$at,30668($s0)
    beqz	$at,.L0db10ab4
    # Line 1600
    nop	# was lw $t9, -29136($gp) # &__glBuildItoRGBAModifyTables
.L0db10804:
    # Line 1602
    lw	$a3,30672($s0)
    # Line 1605
    lw	$v1,30684($s0)
    # Line 1603
    lw	$a4,30676($s0)
    # Line 1604
    lw	$at,30680($s0)
    # Line 1605
    sw	$v1,30636($s0)
    ld	$v1,136($sp)
    # Line 1604
    sw	$at,30632($s0)
    # Line 1603
    sw	$a4,30628($s0)
    # Line 1605
    beqz	$v1,.L0db10a68
    # Line 1602
    sw	$a3,30624($s0)
    # Line 1607
    la	$v0,__glSpanRenderCIubyte4
    b	.L0db0e084
    ld	$s0,232($sp)
.L0db10838:
    b	.L0db0fc30
    # Line 1775
    la	$v0,__glSpanReduceRedNS
.L0db10840:
    li	$a3,6410
    # Line 346
    beql	$a3,$a2,.L0db0deec
    sd	$zero,216($sp)
    b	.L0db0f050
    li	$at,6409
.L0db10854:
    li	$a4,6403
    beql	$a4,$a2,.L0db0deec
    sd	$zero,216($sp)
    b	.L0db0f058
    li	$v1,6403
.L0db10868:
    # Line 712
    lbu	$at,428($s1)
    beqz	$at,.L0db10a74
    addiu	$s3,$s3,1
    la	$a7,__glSpanExpandLuminance
.L0db10878:
    sll	$v0,$s3,0x2
    addu	$v1,$v0,$s1
    b	.L0db0fb38
    sw	$a7,356($v1)
.L0db10888:
    # Line 768
    beqz	$a3,.L0db10a7c
    addiu	$s3,$s3,1
    la	$v0,__glSpanScaleABGR
.L0db10894:
    sd	$s8,272($sp)
    sll	$a4,$s3,0x2
    addu	$a4,$a4,$s1
    b	.L0db0ee48
    sw	$v0,356($a4)
.L0db108a8:
    b	.L0db10300
    # Line 1724
    la	$v0,__glSpanReduceBlueNS
.L0db108b0:
    b	.L0db10634
    # Line 1747
    la	$v0,__glSpanReduceRedAlphaNS
.L0db108b8:
    b	.L0db10608
    # Line 679
    la	$a7,__glSpanExpandBlueNS
.L0db108c0:
    # Line 1543
    lw	$at,30612($s0)
    # Line 1541
    lw	$a3,30604($s0)
    # Line 1542
    lw	$a4,30608($s0)
    # Line 1543
    sw	$at,30636($s0)
    # Line 1551
    ld	$at,136($sp)
    # Line 1542
    sw	$a4,30632($s0)
    # Line 1541
    sw	$a3,30628($s0)
    # Line 1551
    bnez	$at,.L0db1072c
    # Line 1540
    sw	$v1,30624($s0)
.L0db108e4:
    # Line 1556
    la	$v0,__glSpanRenderRGBAubyte
    b	.L0db0e084
    ld	$s0,232($sp)
.L0db108f0:
    b	.L0db10668
    # Line 1734
    la	$v0,__glSpanReduceRedNS
.L0db108f8:
    b	.L0db104a0
    # Line 1770
    la	$v0,__glSpanReorderABGRNS
.L0db10900:
    # Line 1524
    la	$v0,__glSpanRenderRGBubyte
    b	.L0db0e084
    ld	$s0,232($sp)
.L0db1090c:
    # Line 1500
    la	$v1,__glSpanUnpackRGBubyte
    li	$s3,1
    b	.L0db1068c
    sw	$v1,360($s1)
.L0db1091c:
    # Line 1507
    lw	$a3,30612($s0)
    # Line 1505
    lw	$at,30604($s0)
    # Line 1506
    lw	$v1,30608($s0)
    # Line 1507
    sw	$a3,30636($s0)
    ld	$a3,136($sp)
    # Line 1506
    sw	$v1,30632($s0)
    # Line 1505
    sw	$at,30628($s0)
    # Line 1507
    beqz	$a3,.L0db10acc
    # Line 1504
    sw	$a4,30624($s0)
    # Line 1509
    la	$v0,__glSpanRenderRGBubyte2
    b	.L0db0e084
    ld	$s0,232($sp)
.L0db1094c:
    # Line 1634
    ld	$a4,136($sp)
    addiu	$s3,$s3,-1
    beqz	$a4,.L0db10ad8
    ld	$s0,232($sp)
    # Line 1636
    b	.L0db0e084
    la	$v0,__glSpanRenderStencilUshort2
.L0db10964:
    b	.L0db1075c
    # Line 700
    la	$a7,__glSpanExpandRGBNS
.L0db1096c:
    # Line 1536
    la	$at,__glSpanUnpackRGBAubyte
    li	$s3,1
    b	.L0db106ec
    sw	$at,360($s1)
.L0db1097c:
    # Line 1561
    ld	$v1,152($sp)
    move	$s3,$zero
    beqz	$v1,.L0db10afc
    ld	$s0,232($sp)
.L0db1098c:
    ld	$a3,136($sp)
    # Line 1569
    beqz	$a3,.L0db10ae0
    nop
    # Line 1573
    b	.L0db0e084
    la	$v0,__glSpanRenderStencilUbyte2
.L0db109a0:
    # Line 1646
    ld	$a4,136($sp)
    addiu	$s3,$s3,-1
    beqz	$a4,.L0db10ae8
    ld	$s0,232($sp)
    # Line 1648
    b	.L0db0e084
    la	$v0,__glSpanRenderCIushort2
.L0db109b8:
    # Line 1662
    lw	$v1,31352($s0)
    # Line 1663
    addiu	$at,$v1,1
    lw	$a3,31356($s0)
    lw	$a4,31368($s0)
    and	$at,$at,$v1
    sltiu	$at,$at,1
    srlv	$a3,$a3,$a4
    addiu	$v1,$a3,1
    and	$v1,$v1,$a3
    sltiu	$v1,$v1,1
    and	$at,$at,$v1
    beqz	$at,.L0db10af0
    # Line 1677
    ld	$a3,136($sp)
    addiu	$s3,$s3,-1
    beqz	$a3,.L0db10b18
    ld	$s0,232($sp)
    # Line 1680
    b	.L0db0e084
    la	$v0,__glSpanRenderDepthUint1
.L0db10a00:
    # Line 894
    lw	$at,31356($s0)
    srlv	$at,$at,$v1
    addiu	$a4,$at,1
    and	$a4,$a4,$at
    beqz	$a4,.L0db10b0c
    sd	$s8,272($sp)
    b	.L0db0e478
    # Line 908
    lw	$s8,4($sp)
.L0db10a20:
    # Line 1609
    beqz	$a3,.L0db10b38
.L0db10a24:
    # Line 1615
    ld	$a4,136($sp)
    lw	$at,30664($s0)
    beqz	$a4,.L0db10b20
    sw	$at,30620($s0)
    # Line 1617
    la	$v0,__glSpanRenderCIubyte2
    b	.L0db0e084
    ld	$s0,232($sp)
.L0db10a40:
    # Line 1587
    la	$v1,__glSpanUnpackIndexUbyte
    li	$s3,1
    b	.L0db107e0
    sw	$v1,360($s1)
.L0db10a50:
    # Line 1591
    lw	$a4,30616($s0)
    beqz	$a3,.L0db10b2c
    sw	$a4,30620($s0)
    # Line 1593
    la	$v0,__glSpanRenderCIubyte2
    b	.L0db0e084
    ld	$s0,232($sp)
.L0db10a68:
    # Line 1609
    la	$v0,__glSpanRenderCIubyte3
    b	.L0db0e084
    ld	$s0,232($sp)
.L0db10a74:
    b	.L0db10878
    # Line 712
    la	$a7,__glSpanExpandLuminanceNS
.L0db10a7c:
    b	.L0db10894
    # Line 768
    la	$v0,__glSpanPreReorderABGR
.L0db10a84:
    # Line 1515
    move	$a0,$s0
    sd	$ra,280($sp)
    jal	__glBuildItoRGBAModifyTables
    addiu	$a1,$s0,30576
    b	.L0db106a4
    ld	$ra,280($sp)
.L0db10a9c:
    # Line 1546
    move	$a0,$s0
    sd	$ra,280($sp)
    jalr	$t9
    addiu	$a1,$s0,30576
    b	.L0db10704
    ld	$ra,280($sp)
.L0db10ab4:
    # Line 1600
    move	$a0,$s0
    sd	$ra,280($sp)
    jalr	$t9
    addiu	$a1,$s0,30576
    b	.L0db10804
    ld	$ra,280($sp)
.L0db10acc:
    # Line 1511
    la	$v0,__glSpanRenderRGBubyte
    b	.L0db0e084
    ld	$s0,232($sp)
.L0db10ad8:
    b	.L0db0e084
    # Line 1638
    la	$v0,__glSpanRenderStencilUshort
.L0db10ae0:
    b	.L0db0e084
    # Line 1575
    la	$v0,__glSpanRenderStencilUbyte
.L0db10ae8:
    b	.L0db0e084
    # Line 1650
    la	$v0,__glSpanRenderCIushort
.L0db10af0:
    # Line 1682
    lw	$v0,8($sp)
    b	.L0db0e084
    ld	$s0,232($sp)
.L0db10afc:
    # Line 1569
    la	$at,__glSpanUnpackIndexUbyte
    li	$s3,1
    b	.L0db1098c
    sw	$at,360($s1)
.L0db10b0c:
    # Line 908
    la	$s8,__glSpanReadDepthUint
    b	.L0db0e478
    # Line 906
    addiu	$s3,$s3,-1
.L0db10b18:
    b	.L0db0e084
    # Line 1682
    la	$v0,__glSpanRenderDepthUint
.L0db10b20:
    # Line 1619
    la	$v0,__glSpanRenderCIubyte
    b	.L0db0e084
    ld	$s0,232($sp)
.L0db10b2c:
    # Line 1595
    la	$v0,__glSpanRenderCIubyte
    b	.L0db0e084
    ld	$s0,232($sp)
.L0db10b38:
    # Line 1613
    # lw $t9, -29140($gp) # &__glBuildItoIModifyTables
    move	$a0,$s0
    sd	$ra,280($sp)
    jal	__glBuildItoIModifyTables
    addiu	$a1,$s0,30576
    b	.L0db10a24
    ld	$ra,280($sp)
.end PickSpanModifiers

# Function: __glClipDrawPixels
# Declared: Line 2010 (Source lines: 2011-2213)
# Address: 0x0db10b54 - 0x0db110b4 (Size: 1376 bytes, Frame: 0)
.globl __glClipDrawPixels
.ent __glClipDrawPixels
__glClipDrawPixels:
    # Line 2022
    lwc1	$f4,160($a1)
    # Line 2011
    lui	$v0,0xf
    addiu	$v0,$v0,-9404
    addu	$at,$t9,$v0
    # Line 2024
    mtc1	$zero,$f9
    c.eq.s	$f4,$f9
    # Line 2023
    lwc1	$f5,164($a1)
    # Line 2024
    bc1t	.L0db10ca8
    # Line 2025
    move	$v0,$zero
    # Line 2024
    c.eq.s	$f5,$f9
    nop
    bc1t	.L0db10ca8
    nop
    # Line 2029
    lw	$a2,29752($a0)
    mtc1	$a2,$f7
    # Line 2030
    lw	$a3,29756($a0)
    # Line 2029
    cvt.s.w	$f7,$f7
    # Line 2030
    mtc1	$a3,$f13
    # Line 2032
    lw	$v0,29764($a0)
    # Line 2030
    cvt.s.w	$f13,$f13
    # Line 2032
    mtc1	$v0,$f12
    # Line 2031
    lw	$a4,29760($a0)
    # Line 2032
    cvt.s.w	$f12,$f12
    # Line 2031
    mtc1	$a4,$f8
    nop
    cvt.s.w	$f8,$f8
    lwc1	$f0,3392($a0)
    # Line 2032
    sub.s	$f12,$f12,$f0
    lui	$v1,0x800
    # Line 2031
    sub.s	$f8,$f8,$f0
    # Line 2029
    lwc1	$f0,3280($a0)
    # Line 2032
    lw	$a4,1696($a0)
    # Line 2041
    addiu	$v0,$a0,880
    # Line 2030
    add.s	$f13,$f13,$f0
    # Line 2032
    and	$v1,$a4,$v1
    beqz	$v1,.L0db10cfc
    # Line 2029
    add.s	$f7,$f7,$f0
    # Line 2032
    lw	$v1,928($a0)
    beqz	$v1,.L0db10d00
    # Line 2043
    lui	$v1,0x400
    # Line 2038
    lw	$a2,932($a0)
    beqz	$a2,.L0db10d00
    # Line 2043
    lui	$v1,0x400
    # Line 2041
    sw	$v0,436($a1)
    # Line 2043
    lw	$a7,932($a0)
    # Line 2042
    lw	$a6,928($a0)
    # Line 2043
    addiu	$a7,$a7,-1
    # Line 2042
    addiu	$a6,$a6,-1
.L0db10c14:
    # Line 2055
    lw	$a5,172($a1)
.L0db10c18:
    subu	$a5,$a5,$a7
    # Line 2082
    mtc1	$a5,$f14
    # Line 2054
    lw	$a4,168($a1)
    # Line 2082
    cvt.s.w	$f14,$f14
    # Line 2054
    subu	$a4,$a4,$a6
    # Line 2081
    mtc1	$a4,$f10
    nop
    cvt.s.w	$f10,$f10
    # Line 2082
    mul.s	$f14,$f14,$f5
    # Line 2081
    mul.s	$f10,$f10,$f4
    # Line 2058
    lwc1	$f11,200($a1)
    # Line 2082
    c.lt.s	$f9,$f4
    # Line 2057
    lwc1	$f6,196($a1)
    # Line 2082
    add.s	$f14,$f14,$f11
    bc1f	.L0db10cb0
    # Line 2081
    add.s	$f10,$f10,$f6
    # Line 2082
    c.lt.s	$f7,$f6
    nop
    bc1fl	.L0db10c84
    # Line 2092
    sub.s	$f1,$f7,$f6
    # Line 2090
    lwc1	$f0,3392($a0)
    add.s	$f0,$f0,$f6
    trunc.w.s	$f0,$f0
    cvt.s.w	$f0,$f0
    lwc1	$f7,3280($a0)
    add.s	$f7,$f7,$f0
    # Line 2092
    sub.s	$f1,$f7,$f6
.L0db10c84:
    div.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    mfc1	$t1,$f1
    nop
    slt	$t0,$t1,$a4
    bnez	$t0,.L0db10d30
    move	$t0,$t1
    # Line 2093
    jr	$ra
    move	$v0,$zero
.L0db10ca8:
    # Line 2025
    jr	$ra
    nop
.L0db10cb0:
    # Line 2113
    c.lt.s	$f6,$f8
    nop
    bc1fl	.L0db10cd8
    # Line 2121
    sub.s	$f0,$f8,$f6
    # Line 2119
    lwc1	$f0,3392($a0)
    add.s	$f8,$f0,$f6
    trunc.w.s	$f8,$f8
    cvt.s.w	$f8,$f8
    sub.s	$f8,$f8,$f0
    # Line 2121
    sub.s	$f0,$f8,$f6
.L0db10cd8:
    div.s	$f0,$f0,$f4
    trunc.w.s	$f0,$f0
    mfc1	$t1,$f0
    nop
    slt	$v0,$t1,$a4
    bnez	$v0,.L0db10db0
    move	$t0,$t1
    # Line 2122
    jr	$ra
    move	$v0,$zero
.L0db10cfc:
    # Line 2043
    lui	$v1,0x400
.L0db10d00:
    and	$v1,$a4,$v1
    beqz	$v1,.L0db10f28
    # Line 2051
    move	$a6,$zero
    # Line 2043
    lw	$a4,860($a0)
    beqz	$a4,.L0db10f28
    # Line 2051
    move	$a6,$zero
    # Line 2045
    lw	$a5,864($a0)
    beqz	$a5,.L0db10f24
    # Line 2049
    addiu	$a7,$a5,-1
    # Line 2048
    addiu	$a6,$a4,-1
    # Line 2049
    b	.L0db10c18
    # Line 2055
    lw	$a5,172($a1)
.L0db10d30:
    # Line 2095
    subu	$a4,$a4,$t1
    # Line 2097
    mtc1	$t1,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 2096
    trunc.w.s	$f3,$f7
    # Line 2097
    mul.s	$f2,$f2,$f4
    # Line 2096
    mfc1	$t2,$f3
    # Line 2099
    c.lt.s	$f10,$f8
    # Line 2096
    sw	$t2,204($a1)
    # Line 2097
    add.s	$f2,$f2,$f6
    # Line 2098
    lwc1	$f1,3392($a0)
    # Line 2099
    lw	$a2,48($a1)
    # Line 2098
    add.s	$f1,$f1,$f2
    # Line 2099
    addu	$a2,$a2,$t0
    sw	$a2,48($a1)
    bc1f	.L0db10d88
    # Line 2098
    swc1	$f1,196($a1)
    # Line 2105
    lwc1	$f0,3392($a0)
    add.s	$f8,$f0,$f10
    trunc.w.s	$f8,$f8
    cvt.s.w	$f8,$f8
    sub.s	$f8,$f8,$f0
.L0db10d88:
    sub.s	$f0,$f10,$f8
    div.s	$f0,$f0,$f4
    trunc.w.s	$f0,$f0
    mfc1	$t0,$f0
    nop
    slt	$a3,$t0,$a4
    bnezl	$a3,.L0db10e40
    # Line 2112
    trunc.w.s	$f2,$f8
    # Line 2108
    jr	$ra
    move	$v0,$zero
.L0db10db0:
    # Line 2124
    subu	$a4,$a4,$t1
    # Line 2126
    mtc1	$t1,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 2125
    trunc.w.s	$f3,$f8
    # Line 2126
    mul.s	$f2,$f2,$f4
    # Line 2125
    mfc1	$t2,$f3
    nop
    sw	$t2,204($a1)
    # Line 2126
    add.s	$f2,$f2,$f6
    # Line 2127
    lwc1	$f1,3392($a0)
    # Line 2128
    c.lt.s	$f7,$f10
    # Line 2127
    add.s	$f1,$f1,$f2
    lwc1	$f2,3284($a0)
    # Line 2128
    lw	$v0,48($a1)
    # Line 2127
    sub.s	$f1,$f1,$f2
    # Line 2128
    addu	$v0,$v0,$t0
    sw	$v0,48($a1)
    bc1f	.L0db10e18
    # Line 2127
    swc1	$f1,196($a1)
    # Line 2133
    lwc1	$f0,3392($a0)
    add.s	$f0,$f0,$f10
    trunc.w.s	$f0,$f0
    cvt.s.w	$f0,$f0
    lwc1	$f7,3280($a0)
    add.s	$f7,$f7,$f0
.L0db10e18:
    sub.s	$f1,$f10,$f7
    div.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    mfc1	$t0,$f1
    nop
    slt	$v1,$t0,$a4
    bnezl	$v1,.L0db10e60
    # Line 2140
    trunc.w.s	$f3,$f7
    # Line 2136
    jr	$ra
    move	$v0,$zero
.L0db10e40:
    # Line 2112
    mfc1	$t1,$f2
    # Line 2110
    subu	$a4,$a4,$t0
    # Line 2112
    addiu	$v0,$t1,1
    sw	$v0,212($a1)
    # Line 2113
    subu	$t1,$t1,$t2
    addiu	$t1,$t1,1
    b	.L0db10e7c
    sw	$t1,216($a1)
.L0db10e60:
    # Line 2140
    mfc1	$t1,$f3
    # Line 2138
    subu	$a4,$a4,$t0
    # Line 2140
    addiu	$v0,$t1,-1
    sw	$v0,212($a1)
    # Line 2141
    subu	$t1,$t2,$t1
    addiu	$t1,$t1,1
    sw	$t1,216($a1)
.L0db10e7c:
    c.lt.s	$f9,$f5
    nop
    bc1fl	.L0db10edc
    # Line 2171
    c.lt.s	$f11,$f12
    # Line 2141
    c.lt.s	$f13,$f11
    nop
    bc1fl	.L0db10eb8
    # Line 2151
    sub.s	$f1,$f13,$f11
    # Line 2149
    lwc1	$f0,3392($a0)
    add.s	$f0,$f0,$f11
    trunc.w.s	$f0,$f0
    cvt.s.w	$f0,$f0
    lwc1	$f13,3280($a0)
    add.s	$f13,$f13,$f0
    # Line 2151
    sub.s	$f1,$f13,$f11
.L0db10eb8:
    div.s	$f1,$f1,$f5
    trunc.w.s	$f1,$f1
    mfc1	$t2,$f1
    nop
    slt	$v1,$t2,$a5
    bnez	$v1,.L0db10f30
    move	$t0,$t2
    # Line 2152
    jr	$ra
    move	$v0,$zero
.L0db10edc:
    nop
    # Line 2171
    bc1fl	.L0db10f00
    # Line 2179
    sub.s	$f0,$f12,$f11
    # Line 2177
    lwc1	$f0,3392($a0)
    add.s	$f12,$f0,$f11
    trunc.w.s	$f12,$f12
    cvt.s.w	$f12,$f12
    sub.s	$f12,$f12,$f0
    # Line 2179
    sub.s	$f0,$f12,$f11
.L0db10f00:
    div.s	$f0,$f0,$f5
    trunc.w.s	$f0,$f0
    mfc1	$t2,$f0
    nop
    slt	$a2,$t2,$a5
    bnez	$a2,.L0db10fb0
    move	$t0,$t2
    # Line 2180
    jr	$ra
    move	$v0,$zero
.L0db10f24:
    # Line 2051
    move	$a6,$zero
.L0db10f28:
    b	.L0db10c14
    # Line 2052
    move	$a7,$zero
.L0db10f30:
    # Line 2156
    mtc1	$t2,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 2155
    trunc.w.s	$f3,$f13
    # Line 2156
    mul.s	$f2,$f2,$f5
    # Line 2155
    mfc1	$t3,$f3
    # Line 2158
    c.lt.s	$f14,$f12
    # Line 2155
    sw	$t3,208($a1)
    # Line 2156
    add.s	$f2,$f2,$f11
    # Line 2157
    lwc1	$f1,3392($a0)
    # Line 2158
    lw	$a3,52($a1)
    # Line 2154
    subu	$a5,$a5,$t2
    # Line 2157
    add.s	$f1,$f1,$f2
    # Line 2158
    addu	$a3,$a3,$t0
    sw	$a3,52($a1)
    bc1f	.L0db10f88
    # Line 2157
    swc1	$f1,200($a1)
    # Line 2164
    lwc1	$f0,3392($a0)
    add.s	$f12,$f0,$f14
    trunc.w.s	$f12,$f12
    cvt.s.w	$f12,$f12
    sub.s	$f12,$f12,$f0
.L0db10f88:
    sub.s	$f0,$f14,$f12
    div.s	$f0,$f0,$f5
    trunc.w.s	$f0,$f0
    mfc1	$a0,$f0
    nop
    slt	$v0,$a0,$a5
    bnezl	$v0,.L0db1103c
    # Line 2171
    trunc.w.s	$f2,$f12
    # Line 2167
    jr	$ra
    move	$v0,$zero
.L0db10fb0:
    # Line 2184
    mtc1	$t2,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f5
    # Line 2183
    trunc.w.s	$f3,$f12
    mfc1	$t3,$f3
    # Line 2184
    add.s	$f2,$f2,$f11
    # Line 2183
    sw	$t3,208($a1)
    # Line 2186
    lwc1	$f1,3392($a0)
    # Line 2187
    c.lt.s	$f13,$f14
    # Line 2186
    add.s	$f1,$f1,$f2
    lwc1	$f2,3284($a0)
    # Line 2187
    lw	$v1,52($a1)
    # Line 2182
    subu	$a5,$a5,$t2
    # Line 2186
    sub.s	$f1,$f1,$f2
    # Line 2187
    addu	$v1,$v1,$t0
    sw	$v1,52($a1)
    bc1f	.L0db11014
    # Line 2186
    swc1	$f1,200($a1)
    # Line 2192
    lwc1	$f0,3392($a0)
    add.s	$f0,$f0,$f14
    trunc.w.s	$f0,$f0
    cvt.s.w	$f0,$f0
    lwc1	$f13,3280($a0)
    add.s	$f13,$f13,$f0
.L0db11014:
    sub.s	$f1,$f14,$f13
    div.s	$f1,$f1,$f5
    trunc.w.s	$f1,$f1
    mfc1	$a0,$f1
    nop
    slt	$a2,$a0,$a5
    bnezl	$a2,.L0db11054
    # Line 2199
    trunc.w.s	$f3,$f13
    # Line 2195
    jr	$ra
    move	$v0,$zero
.L0db1103c:
    # Line 2171
    mfc1	$a3,$f2
    # Line 2169
    subu	$a5,$a5,$a0
    # Line 2171
    subu	$a3,$a3,$t3
    addiu	$a3,$a3,1
    b	.L0db11068
    sw	$a3,220($a1)
.L0db11054:
    # Line 2199
    mfc1	$v0,$f3
    # Line 2197
    subu	$a5,$a5,$a0
    # Line 2199
    subu	$v0,$t3,$v0
    addiu	$v0,$v0,1
    sw	$v0,220($a1)
.L0db11068:
    # Line 2203
    addu	$v1,$a7,$a5
    c.lt.s	$f4,$f9
    sw	$v1,172($a1)
    # Line 2202
    addu	$a0,$a6,$a4
    # Line 2203
    bc1f	.L0db11084
    # Line 2202
    sw	$a0,168($a1)
    # Line 2205
    neg.s	$f4,$f4
.L0db11084:
    lwc1	$f0,_lit_3f800000
    c.le.s	$f0,$f4
    nop
    bc1f	.L0db110a4
    # Line 2209
    addu	$a2,$t1,$a6
    # Line 2207
    sw	$a0,180($a1)
    b	.L0db110ac
    sw	$a0,184($a1)
.L0db110a4:
    # Line 2209
    sw	$a2,180($a1)
    sw	$a2,184($a1)
.L0db110ac:
    # Line 2213
    jr	$ra
    li	$v0,1
.end __glClipDrawPixels

# Function: __glComputeSpanPixelArray
# Declared: Line 2230 (Source lines: 2231-2289)
# Address: 0x0db110b4 - 0x0db112cc (Size: 536 bytes, Frame: 0)
.globl __glComputeSpanPixelArray
.ent __glComputeSpanPixelArray
__glComputeSpanPixelArray:
    # Line 2237
    lwc1	$f5,160($a1)
    # Line 2231
    lui	$v0,0xf
    addiu	$v0,$v0,-10780
    addu	$at,$t9,$v0
    # Line 2237
    lwc1	$f4,_lit_bf800000
    c.lt.s	$f4,$f5
    nop
    bc1fl	.L0db11118
    # Line 2264
    c.lt.s	$f5,$f4
    # Line 2237
    lwc1	$f0,3284($a0)
    c.lt.s	$f5,$f0
    nop
    bc1fl	.L0db11118
    # Line 2264
    c.lt.s	$f5,$f4
    # Line 2244
    lw	$a6,312($a1)
    # Line 2242
    lw	$a4,168($a1)
    # Line 2243
    lwc1	$f4,196($a1)
    # Line 2249
    move	$a7,$zero
    # Line 2250
    blez	$a4,.L0db112b0
    move	$a0,$zero
    trunc.w.s	$f1,$f4
    mfc1	$a1,$f1
    b	.L0db11264
    # Line 2252
    add.s	$f4,$f5,$f4
    # Line 2264
    c.lt.s	$f5,$f4
.L0db11118:
    nop
    bc1tl	.L0db1113c
    # Line 2276
    lwc1	$f4,196($a1)
    # Line 2264
    lwc1	$f2,3284($a0)
    c.lt.s	$f2,$f5
    nop
    bc1f	.L0db11234
    nop
    # Line 2276
    lwc1	$f4,196($a1)
.L0db1113c:
    # Line 2275
    lw	$a6,312($a1)
    # Line 2274
    lw	$t0,240($a1)
    # Line 2271
    lw	$a4,180($a1)
    # Line 2277
    move	$a0,$zero
    # Line 2272
    lw	$t1,204($a1)
    # Line 2271
    addiu	$a4,$a4,-1
    # Line 2277
    blez	$a4,.L0db1121c
    # Line 2273
    move	$a7,$t1
    andi	$a5,$a4,0x3
    beqz	$a5,.L0db11190
    # Line 2277
    move	$t2,$a4
.L0db11168:
    # Line 2278
    add.s	$f4,$f5,$f4
    # Line 2280
    trunc.w.s	$f3,$f4
    # Line 2277
    addiu	$a0,$a0,1
    # Line 2280
    mfc1	$v1,$f3
    addiu	$a6,$a6,2
    addi	$a5,$a5,-1
    subu	$v0,$v1,$a7
    # Line 2281
    move	$a7,$v1
    bnez	$a5,.L0db11168
    # Line 2280
    sh	$v0,-2($a6)
.L0db11190:
    move	$t3,$a0
    move	$t9,$a7
    move	$t8,$a6
    sra	$a2,$t2,0x2
    beqz	$a2,.L0db1121c
    mov.s	$f6,$f4
    move	$a6,$t3
    move	$a5,$t9
    move	$a0,$t8
    mov.s	$f4,$f6
.L0db111b8:
    # Line 2278
    add.s	$f3,$f5,$f4
    add.s	$f0,$f5,$f3
    add.s	$f1,$f5,$f0
    add.s	$f4,$f5,$f1
    # Line 2280
    trunc.w.s	$f3,$f3
    trunc.w.s	$f2,$f4
    mfc1	$v1,$f3
    trunc.w.s	$f1,$f1
    addiu	$a0,$a0,8
    subu	$a2,$v1,$a5
    trunc.w.s	$f0,$f0
    mfc1	$a5,$f2
    mfc1	$a7,$f1
    # Line 2277
    addiu	$a6,$a6,4
    # Line 2280
    mfc1	$v0,$f0
    subu	$a3,$a5,$a7
    sh	$a2,-8($a0)
    subu	$v1,$v0,$v1
    sh	$v1,-6($a0)
    subu	$a7,$a7,$v0
    sh	$a7,-4($a0)
    # Line 2277
    bne	$a4,$a6,.L0db111b8
    # Line 2280
    sh	$a3,-2($a0)
    move	$a6,$a0
    move	$a7,$a5
.L0db1121c:
    # Line 2277
    li	$a3,1
    beq	$t0,$a3,.L0db112bc
    lw	$a0,216($a1)
    # Line 2286
    subu	$v0,$t1,$a7
    subu	$v0,$v0,$a0
    sh	$v0,0($a6)
.L0db11234:
    # Line 2289
    jr	$ra
    nop
.L0db1123c:
    # Line 2255
    beqz	$a0,.L0db1124c
    # Line 2258
    subu	$v1,$a0,$a7
    addiu	$a6,$a6,2
    sh	$v1,-2($a6)
.L0db1124c:
    # Line 2260
    move	$a7,$a0
    # Line 2250
    addiu	$a0,$a0,1
    slt	$a2,$a0,$a4
    beqz	$a2,.L0db112b0
    nop
    # Line 2252
    add.s	$f4,$f5,$f4
.L0db11264:
    trunc.w.s	$f0,$f4
    # Line 2250
    move	$a5,$a1
    # Line 2252
    mfc1	$a1,$f0
    nop
    bne	$a1,$a5,.L0db1123c
    slt	$a3,$a0,$a4
    beqz	$a3,.L0db1123c
    nop
    # Line 2254
    add.s	$f4,$f5,$f4
.L0db11288:
    # Line 2255
    trunc.w.s	$f1,$f4
    mfc1	$a1,$f1
    nop
    bne	$a1,$a5,.L0db1123c
    addiu	$a0,$a0,1
    slt	$v0,$a0,$a4
    bnezl	$v0,.L0db11288
    # Line 2254
    add.s	$f4,$f5,$f4
    b	.L0db1123c
    nop
.L0db112b0:
    # Line 2263
    li	$v1,1
    # Line 2289
    jr	$ra
    # Line 2263
    sh	$v1,0($a6)
.L0db112bc:
    # Line 2284
    subu	$a2,$a7,$t1
    subu	$a2,$a0,$a2
    # Line 2289
    jr	$ra
    # Line 2284
    sh	$a2,0($a6)
.end __glComputeSpanPixelArray

# Function: __glLoadUnpackModes
# Declared: Line 2296 (Source lines: 2298-2333)
# Address: 0x0db112cc - 0x0db1135c (Size: 144 bytes, Frame: 0)
.globl __glLoadUnpackModes
.ent __glLoadUnpackModes
__glLoadUnpackModes:
    # Line 2298
    beqz	$a2,.L0db11300
    # Line 2305
    li	$v1,1
    # Line 2310
    sw	$zero,40($a1)
    # Line 2309
    sw	$zero,44($a1)
    # Line 2308
    sw	$zero,56($a1)
    # Line 2307
    sw	$zero,52($a1)
    # Line 2306
    sw	$zero,48($a1)
    # Line 2312
    lw	$v0,172($a1)
    # Line 2305
    sw	$v1,68($a1)
    # Line 2311
    lw	$at,168($a1)
    # Line 2312
    sw	$v0,64($a1)
    # Line 2333
    jr	$ra
    # Line 2311
    sw	$at,60($a1)
.L0db11300:
    # Line 2322
    lw	$at,1124($a0)
    # Line 2321
    lw	$a3,1132($a0)
    # Line 2320
    lw	$a4,1112($a0)
    # Line 2322
    sw	$at,68($a1)
    # Line 2323
    lw	$a2,1120($a0)
    sw	$a2,48($a1)
    # Line 2324
    lw	$v1,1116($a0)
    sw	$v1,52($a1)
    # Line 2325
    lw	$v0,1128($a0)
    sw	$v0,56($a1)
    # Line 2326
    lbu	$at,1109($a0)
    sw	$at,44($a1)
    # Line 2327
    lbu	$a2,1108($a0)
    blez	$a4,.L0db11354
    sw	$a2,40($a1)
.L0db1133c:
    # Line 2329
    bgtz	$a3,.L0db11348
    sw	$a4,60($a1)
    # Line 2330
    lw	$a3,172($a1)
.L0db11348:
    # Line 2331
    sw	$a3,64($a1)
    # Line 2333
    jr	$ra
    nop
.L0db11354:
    b	.L0db1133c
    # Line 2328
    lw	$a4,168($a1)
.end __glLoadUnpackModes

# Function: __glInitDrawPixelsInfo
# Declared: Line 2335 (Source lines: 2338-2398)
# Address: 0x0db1135c - 0x0db11474 (Size: 280 bytes, Frame: 0)
.globl __glInitDrawPixelsInfo
.ent __glInitDrawPixelsInfo
__glInitDrawPixelsInfo:
    # Line 2343
    lwc1	$f6,348($a0)
    # Line 2345
    lwc1	$f1,344($a0)
    # Line 2346
    swc1	$f6,200($a1)
    # Line 2345
    swc1	$f1,196($a1)
    # Line 2347
    lwc1	$f0,352($a0)
    trunc.l.s	$f0,$f0
    # Line 2338
    lui	$v1,0xf
    # Line 2347
    dmfc1	$v0,$f0
    # Line 2338
    addiu	$v1,$v1,-11460
    addu	$at,$t9,$v1
    # Line 2347
    sw	$v0,248($a1)
    # Line 2348
    mtc1	$zero,$f7
    lwc1	$f5,720($a0)
    c.lt.s	$f7,$f5
    # Line 2362
    li	$t0,-1
    # Line 2348
    bc1f	.L0db113c0
    # Line 2355
    lwc1	$f4,_lit_bf800000
    # Line 2348
    lwc1	$f4,3284($a0)
    c.lt.s	$f5,$f4
    # Line 2355
    li	$a7,1
    # Line 2348
    bc1fl	.L0db113b8
    # Line 2353
    swc1	$f5,244($a1)
    # Line 2351
    swc1	$f4,244($a1)
.L0db113b8:
    # Line 2355
    b	.L0db113d8
    sw	$a7,240($a1)
.L0db113c0:
    c.lt.s	$f4,$f5
    nop
    bc1fl	.L0db113d4
    # Line 2360
    swc1	$f5,244($a1)
    # Line 2358
    swc1	$f4,244($a1)
.L0db113d4:
    # Line 2362
    sw	$t0,240($a1)
.L0db113d8:
    # Line 2364
    swc1	$f5,160($a1)
    # Line 2365
    lbu	$v0,4552($a0)
    # Line 2378
    li	$t0,6400
    # Line 2365
    beqz	$v0,.L0db11464
    lwc1	$f4,724($a0)
    # Line 2367
    neg.s	$f4,$f4
.L0db113f0:
    # Line 2369
    c.lt.s	$f7,$f4
    # Line 2372
    li	$v1,1
    # Line 2369
    bc1f	.L0db11408
    # Line 2374
    li	$a7,-1
    # Line 2372
    b	.L0db1140c
    sw	$v1,236($a1)
.L0db11408:
    # Line 2374
    sw	$a7,236($a1)
.L0db1140c:
    # Line 2378
    sw	$a3,172($a1)
    # Line 2377
    sw	$a2,168($a1)
    # Line 2378
    bne	$a4,$t0,.L0db11430
    # Line 2376
    swc1	$f4,164($a1)
    # Line 2378
    lbu	$v0,3104($a0)
    beqz	$v0,.L0db11430
    # Line 2380
    li	$v1,6408
    b	.L0db11434
    sw	$v1,80($a1)
.L0db11430:
    # Line 2382
    sw	$a4,80($a1)
.L0db11434:
    # Line 2394
    li	$a7,4
    # Line 2396
    sw	$zero,88($a1)
    # Line 2395
    sw	$zero,120($a1)
    # Line 2386
    sw	$a6,8($a1)
    # Line 2385
    sw	$a5,4($a1)
    # Line 2384
    sw	$a4,0($a1)
    # Line 2394
    sw	$a7,116($a1)
    # Line 2393
    li	$a0,5126
    # Line 2397
    li	$t0,2
    sw	$t0,432($a1)
    # Line 2398
    jr	$ra
    # Line 2393
    sw	$a0,84($a1)
.L0db11464:
    # Line 2369
    lwc1	$f2,3388($a0)
    add.s	$f2,$f2,$f6
    b	.L0db113f0
    swc1	$f2,200($a1)
.end __glInitDrawPixelsInfo

# Function: __glDrawPixelSpans
# Declared: Line 2400 (Source lines: 2401-2461)
# Address: 0x0db11474 - 0x0db116b8 (Size: 580 bytes, Frame: 0)
.globl __glDrawPixelSpans
.ent __glDrawPixelSpans
__glDrawPixelSpans:
    # Line 2401
    move	$a3,$s8
    addiu	$sp,$sp,-208
    addiu	$s8,$sp,208
    sd	$s3,-152($s8)
    sd	$s6,-160($s8)
    sdc1	$f28,-136($s8)
    sdc1	$f30,-144($s8)
    sd	$ra,-80($s8)
    lui	$v1,0xf
    addiu	$v1,$v1,-11740
    sd	$gp,-120($s8)
    addu	$gp,$t9,$v1
    sd	$s4,-112($s8)
    move	$s4,$a0
    # Line 2408
    lw	$at,30700($s4)
    sd	$s1,-104($s8)
    # Line 2401
    move	$s1,$a1
    # Line 2405
    lw	$a2,352($s1)
    # Line 2425
    # lw $t9, -28892($gp) # &__glComputeSpanPixelArray
    sd	$at,-72($s8)
    sd	$a2,-96($s8)
    # Line 2417
    lw	$a2,168($s1)
    sd	$a3,-128($s8)
    li	$a3,-16
    # Line 2421
    addu	$v0,$a2,$a2
    addiu	$v0,$v0,15
    and	$v0,$v0,$a3
    # Line 2417
    sll	$a2,$a2,0x4
    addiu	$a2,$a2,15
    and	$a2,$a2,$a3
    subu	$sp,$sp,$a2
    # Line 2420
    move	$a3,$sp
    sd	$sp,-64($s8)
    subu	$sp,$sp,$a2
    # Line 2421
    move	$v1,$sp
    sd	$sp,-32($s8)
    subu	$sp,$sp,$v0
    # Line 2425
    bal __glComputeSpanPixelArray
    # Line 2424
    sw	$sp,312($s1)
    # Line 2432
    lwc1	$f28,200($s1)
    # Line 2430
    lwc1	$f30,164($s1)
    # Line 2434
    move	$s6,$zero
    # Line 2433
    lw	$s3,172($s1)
    # Line 2428
    lw	$a4,412($s1)
    ld	$ra,-80($s8)
    # Line 2434
    blez	$s3,.L0db1168c
    sd	$a4,-56($s8)
    sd	$s2,-184($s8)
    sd	$s5,-176($s8)
    sd	$s0,-168($s8)
    sd	$s7,-200($s8)
    ld	$v0,-96($s8)
    li	$at,1
    trunc.w.s	$f0,$f28
    slt	$at,$at,$v0
    addiu	$v1,$v0,-1
    sll	$a4,$v0,0x2
    sd	$a4,-48($s8)
    sd	$v1,-88($s8)
    mfc1	$s7,$f0
    b	.L0db1160c
    sd	$at,-40($s8)
.L0db1156c:
    # Line 2442
    lw	$a2,12($s1)
.L0db11570:
    # Line 2447
    lw	$t9,360($s1)
.L0db11574:
    move	$a0,$s4
    move	$a1,$s1
    jal	__glComputeSpanPixelArray
    ld	$a3,-64($s8)
    # Line 2450
    ld	$s0,-64($s8)
    ld	$s2,-32($s8)
    # Line 2448
    lw	$v1,12($s1)
    lw	$v0,16($s1)
    # Line 2450
    ld	$at,-40($s8)
    # Line 2448
    addu	$v0,$v0,$v1
    # Line 2450
    beqz	$at,.L0db115e4
    # Line 2448
    sw	$v0,12($s1)
    ld	$s5,-48($s8)
    sd	$s3,-192($s8)
    # Line 2450
    addiu	$s3,$s1,4
    addu	$s5,$s5,$s1
.L0db115b4:
    # Line 2452
    move	$a0,$s4
    lw	$t9,360($s3)
    move	$a1,$s1
    move	$a2,$s0
    jalr	$t9
    move	$a3,$s2
    # Line 2451
    addiu	$s3,$s3,4
    # Line 2453
    move	$at,$s0
    # Line 2454
    move	$s0,$s2
    # Line 2451
    bne	$s3,$s5,.L0db115b4
    # Line 2455
    move	$s2,$at
    ld	$s3,-192($s8)
.L0db115e4:
    # Line 2457
    ld	$t9,-56($s8)
    move	$a0,$s4
    move	$a1,$s1
    jalr	$t9
    move	$a2,$s0
    # Line 2434
    addiu	$s6,$s6,1
    # Line 2459
    ld	$v1,-72($s8)
    # Line 2434
    slt	$v0,$s6,$s3
    beqz	$v0,.L0db11678
    # Line 2459
    sw	$v1,30700($s4)
.L0db1160c:
    # Line 2435
    swc1	$f28,200($s1)
    # Line 2436
    add.s	$f28,$f30,$f28
    trunc.w.s	$f1,$f28
    # Line 2434
    move	$a0,$s7
    # Line 2436
    mfc1	$s7,$f1
    nop
    bne	$s7,$a0,.L0db1156c
    slt	$a4,$s6,$s3
    beqz	$a4,.L0db11670
    nop
    # Line 2437
    lw	$a2,12($s1)
    lw	$a1,16($s1)
    # Line 2438
    swc1	$f28,200($s1)
.L0db11640:
    # Line 2441
    add.s	$f28,$f30,$f28
    # Line 2442
    trunc.w.s	$f2,$f28
    # Line 2439
    addu	$a2,$a1,$a2
    # Line 2442
    mfc1	$s7,$f2
    addiu	$s6,$s6,1
    slt	$at,$s6,$s3
    bne	$s7,$a0,.L0db11570
    # Line 2439
    sw	$a2,12($s1)
    # Line 2442
    bnezl	$at,.L0db11640
    # Line 2438
    swc1	$f28,200($s1)
    b	.L0db11574
    # Line 2447
    lw	$t9,360($s1)
.L0db11670:
    b	.L0db11570
    # Line 2442
    lw	$a2,12($s1)
.L0db11678:
    ld	$s0,-168($s8)
    ld	$ra,-80($s8)
    ld	$s7,-200($s8)
    ld	$s5,-176($s8)
    ld	$s2,-184($s8)
.L0db1168c:
    ld	$gp,-120($s8)
    # Line 2461
    ld	$s1,-104($s8)
    ld	$s3,-152($s8)
    ld	$s4,-112($s8)
    ld	$s6,-160($s8)
    ldc1	$f28,-136($s8)
    ldc1	$f30,-144($s8)
    ld	$v0,-128($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.end __glDrawPixelSpans

# Function: __glDrawPixels2
# Declared: Line 2467 (Source lines: 2468-2521)
# Address: 0x0db116b8 - 0x0db118a0 (Size: 488 bytes, Frame: 0)
.globl __glDrawPixels2
.ent __glDrawPixels2
__glDrawPixels2:
    # Line 2468
    move	$a2,$s8
    addiu	$sp,$sp,-160
    addiu	$s8,$sp,160
    sd	$a2,-112($s8)
    sd	$s0,-144($s8)
    sd	$s3,-136($s8)
    sdc1	$f28,-120($s8)
    sdc1	$f30,-128($s8)
    sd	$ra,-56($s8)
    sd	$s7,-96($s8)
    sd	$s5,-72($s8)
    sd	$s4,-80($s8)
    move	$s4,$a0
    # Line 2473
    lw	$s7,30700($s4)
    sd	$s6,-88($s8)
    # Line 2468
    lui	$v1,0xf
    addiu	$v1,$v1,-12320
    sd	$gp,-104($s8)
    addu	$gp,$t9,$v1
    sd	$s1,-64($s8)
    move	$s1,$a1
    # Line 2483
    lw	$v0,168($s1)
    # Line 2491
    # lw $t9, -28892($gp) # &__glComputeSpanPixelArray
    # Line 2483
    li	$v1,-16
    # Line 2487
    addu	$at,$v0,$v0
    addiu	$at,$at,15
    and	$at,$at,$v1
    # Line 2483
    sll	$v0,$v0,0x4
    addiu	$v0,$v0,15
    and	$v0,$v0,$v1
    subu	$sp,$sp,$v0
    # Line 2486
    move	$s6,$sp
    subu	$sp,$sp,$v0
    # Line 2487
    move	$s5,$sp
    subu	$sp,$sp,$at
    # Line 2491
    bal __glComputeSpanPixelArray
    # Line 2490
    sw	$sp,312($s1)
    # Line 2499
    lwc1	$f28,200($s1)
    # Line 2497
    lwc1	$f30,164($s1)
    # Line 2500
    lw	$s3,172($s1)
    # Line 2493
    lw	$a4,360($s1)
    # Line 2494
    lw	$s0,364($s1)
    # Line 2495
    lw	$ra,412($s1)
    sd	$a4,-48($s8)
    sd	$s0,-40($s8)
    # Line 2501
    move	$s0,$zero
    sd	$ra,-32($s8)
    blez	$s3,.L0db11868
    ld	$ra,-56($s8)
    trunc.w.s	$f0,$f28
    sd	$s2,-152($s8)
    mfc1	$s2,$f0
    b	.L0db117f8
    # Line 2502
    swc1	$f28,200($s1)
.L0db11790:
    # Line 2509
    lw	$a2,12($s1)
.L0db11794:
    # Line 2513
    ld	$t9,-48($s8)
.L0db11798:
    move	$a0,$s4
    move	$a1,$s1
    jal	__glComputeSpanPixelArray
    move	$a3,$s6
    # Line 2516
    move	$a0,$s4
    move	$a1,$s1
    move	$a2,$s6
    # Line 2514
    lw	$v0,12($s1)
    lw	$at,16($s1)
    # Line 2516
    ld	$t9,-40($s8)
    move	$a3,$s5
    # Line 2514
    addu	$at,$at,$v0
    # Line 2516
    jalr	$t9
    # Line 2514
    sw	$at,12($s1)
    # Line 2517
    ld	$t9,-32($s8)
    move	$a0,$s4
    move	$a1,$s1
    jalr	$t9
    move	$a2,$s5
    # Line 2501
    addiu	$s0,$s0,1
    slt	$v1,$s0,$s3
    beqz	$v1,.L0db11860
    # Line 2519
    sw	$s7,30700($s4)
    # Line 2502
    swc1	$f28,200($s1)
.L0db117f8:
    # Line 2503
    add.s	$f28,$f30,$f28
    trunc.w.s	$f1,$f28
    # Line 2501
    move	$a0,$s2
    # Line 2503
    mfc1	$s2,$f1
    nop
    bne	$s2,$a0,.L0db11790
    slt	$a4,$s0,$s3
    beqz	$a4,.L0db11858
    nop
    # Line 2504
    lw	$a2,12($s1)
    lw	$a1,16($s1)
    # Line 2505
    swc1	$f28,200($s1)
.L0db11828:
    # Line 2508
    add.s	$f28,$f30,$f28
    # Line 2509
    trunc.w.s	$f2,$f28
    # Line 2506
    addu	$a2,$a1,$a2
    # Line 2509
    mfc1	$s2,$f2
    addiu	$s0,$s0,1
    slt	$at,$s0,$s3
    bne	$s2,$a0,.L0db11794
    # Line 2506
    sw	$a2,12($s1)
    # Line 2509
    bnezl	$at,.L0db11828
    # Line 2505
    swc1	$f28,200($s1)
    b	.L0db11798
    # Line 2513
    ld	$t9,-48($s8)
.L0db11858:
    b	.L0db11794
    # Line 2509
    lw	$a2,12($s1)
.L0db11860:
    ld	$ra,-56($s8)
    ld	$s2,-152($s8)
.L0db11868:
    ld	$gp,-104($s8)
    # Line 2521
    ld	$s0,-144($s8)
    ld	$s1,-64($s8)
    ld	$s3,-136($s8)
    ld	$s4,-80($s8)
    ld	$s5,-72($s8)
    ld	$s6,-88($s8)
    ld	$s7,-96($s8)
    ldc1	$f28,-120($s8)
    ldc1	$f30,-128($s8)
    ld	$v0,-112($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.end __glDrawPixels2

# Function: __glDrawPixels1
# Declared: Line 2526 (Source lines: 2527-2575)
# Address: 0x0db118a0 - 0x0db11a5c (Size: 444 bytes, Frame: 0)
.globl __glDrawPixels1
.ent __glDrawPixels1
__glDrawPixels1:
    # Line 2527
    move	$a2,$s8
    addiu	$sp,$sp,-144
    addiu	$s8,$sp,144
    sd	$a2,-80($s8)
    sd	$s0,-120($s8)
    sd	$s3,-112($s8)
    sd	$s7,-128($s8)
    sdc1	$f28,-96($s8)
    sdc1	$f30,-104($s8)
    sd	$ra,-40($s8)
    sd	$s6,-72($s8)
    sd	$s5,-56($s8)
    sd	$s4,-64($s8)
    move	$s4,$a0
    # Line 2532
    lw	$s6,30700($s4)
    # Line 2527
    lui	$v1,0xf
    addiu	$v1,$v1,-12808
    sd	$gp,-88($s8)
    addu	$gp,$t9,$v1
    sd	$s1,-48($s8)
    move	$s1,$a1
    # Line 2540
    lw	$v0,168($s1)
    li	$v1,-16
    # Line 2547
    # lw $t9, -28892($gp) # &__glComputeSpanPixelArray
    # Line 2543
    addu	$at,$v0,$v0
    addiu	$at,$at,15
    and	$at,$at,$v1
    # Line 2540
    sll	$v0,$v0,0x4
    addiu	$v0,$v0,15
    and	$v0,$v0,$v1
    subu	$sp,$sp,$v0
    # Line 2543
    move	$s5,$sp
    subu	$sp,$sp,$at
    # Line 2547
    bal __glComputeSpanPixelArray
    # Line 2546
    sw	$sp,312($s1)
    # Line 2554
    lwc1	$f28,200($s1)
    # Line 2552
    lwc1	$f30,164($s1)
    # Line 2549
    lw	$s7,360($s1)
    # Line 2556
    move	$s0,$zero
    # Line 2555
    lw	$s3,172($s1)
    # Line 2550
    lw	$a4,412($s1)
    ld	$ra,-40($s8)
    # Line 2556
    blez	$s3,.L0db11a24
    sd	$a4,-32($s8)
    trunc.w.s	$f0,$f28
    sd	$s2,-136($s8)
    mfc1	$s2,$f0
    b	.L0db119b4
    # Line 2557
    swc1	$f28,200($s1)
.L0db11964:
    # Line 2564
    lw	$a2,12($s1)
.L0db11968:
    # Line 2568
    move	$a0,$s4
.L0db1196c:
    move	$a1,$s1
    move	$a3,$s5
    jalr	$s7
    move	$t9,$s7
    # Line 2571
    move	$a0,$s4
    move	$a1,$s1
    # Line 2569
    lw	$a6,12($s1)
    lw	$a5,16($s1)
    # Line 2571
    ld	$t9,-32($s8)
    move	$a2,$s5
    # Line 2569
    addu	$a5,$a5,$a6
    # Line 2571
    jal	__glComputeSpanPixelArray
    # Line 2569
    sw	$a5,12($s1)
    # Line 2556
    addiu	$s0,$s0,1
    slt	$at,$s0,$s3
    beqz	$at,.L0db11a1c
    # Line 2573
    sw	$s6,30700($s4)
    # Line 2557
    swc1	$f28,200($s1)
.L0db119b4:
    # Line 2558
    add.s	$f28,$f30,$f28
    trunc.w.s	$f1,$f28
    # Line 2556
    move	$a0,$s2
    # Line 2558
    mfc1	$s2,$f1
    nop
    bne	$s2,$a0,.L0db11964
    slt	$v0,$s0,$s3
    beqz	$v0,.L0db11a14
    nop
    # Line 2559
    lw	$a2,12($s1)
    lw	$a1,16($s1)
    # Line 2560
    swc1	$f28,200($s1)
.L0db119e4:
    # Line 2563
    add.s	$f28,$f30,$f28
    # Line 2564
    trunc.w.s	$f2,$f28
    # Line 2561
    addu	$a2,$a1,$a2
    # Line 2564
    mfc1	$s2,$f2
    addiu	$s0,$s0,1
    slt	$v1,$s0,$s3
    bne	$s2,$a0,.L0db11968
    # Line 2561
    sw	$a2,12($s1)
    # Line 2564
    bnezl	$v1,.L0db119e4
    # Line 2560
    swc1	$f28,200($s1)
    b	.L0db1196c
    # Line 2568
    move	$a0,$s4
.L0db11a14:
    b	.L0db11968
    # Line 2564
    lw	$a2,12($s1)
.L0db11a1c:
    ld	$ra,-40($s8)
    ld	$s2,-136($s8)
.L0db11a24:
    ld	$gp,-88($s8)
    # Line 2575
    ld	$s0,-120($s8)
    ld	$s1,-48($s8)
    ld	$s3,-112($s8)
    ld	$s4,-64($s8)
    ld	$s5,-56($s8)
    ld	$s6,-72($s8)
    ld	$s7,-128($s8)
    ldc1	$f28,-96($s8)
    ldc1	$f30,-104($s8)
    ld	$a0,-80($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a0
.end __glDrawPixels1

# Function: __glDrawPixels0
# Declared: Line 2580 (Source lines: 2581-2617)
# Address: 0x0db11a5c - 0x0db11bbc (Size: 352 bytes, Frame: 0)
.globl __glDrawPixels0
.ent __glDrawPixels0
__glDrawPixels0:
    # Line 2581
    move	$v1,$s8
    addiu	$sp,$sp,-112
    addiu	$s8,$sp,112
    sd	$v1,-64($s8)
    sd	$s0,-104($s8)
    sd	$s3,-96($s8)
    sd	$s5,-88($s8)
    sdc1	$f28,-72($s8)
    sdc1	$f30,-80($s8)
    sd	$s4,-48($s8)
    move	$s4,$a0
    sd	$ra,-32($s8)
    lui	$v0,0xf
    addiu	$v0,$v0,-13252
    sd	$gp,-56($s8)
    addu	$gp,$t9,$v0
    sd	$s1,-40($s8)
    move	$s1,$a1
    lw	$at,168($s1)
    li	$v0,-16
    # Line 2593
    # lw $t9, -28892($gp) # &__glComputeSpanPixelArray
    # Line 2581
    addu	$at,$at,$at
    addiu	$at,$at,15
    and	$at,$at,$v0
    subu	$sp,$sp,$at
    # Line 2593
    bal __glComputeSpanPixelArray
    # Line 2592
    sw	$sp,312($s1)
    # Line 2599
    lwc1	$f28,200($s1)
    # Line 2597
    lwc1	$f30,164($s1)
    # Line 2600
    lw	$s3,172($s1)
    # Line 2595
    lw	$s5,412($s1)
    # Line 2601
    move	$s0,$zero
    blez	$s3,.L0db11b8c
    ld	$ra,-32($s8)
    trunc.w.s	$f0,$f28
    sd	$s2,-112($s8)
    mfc1	$s2,$f0
    b	.L0db11b24
    lw	$a2,12($s1)
.L0db11af8:
    # Line 2613
    move	$a0,$s4
.L0db11afc:
    move	$a1,$s1
    jalr	$s5
    move	$t9,$s5
    # Line 2601
    addiu	$s0,$s0,1
    # Line 2614
    lw	$at,12($s1)
    lw	$a2,16($s1)
    # Line 2601
    slt	$a3,$s0,$s3
    # Line 2614
    addu	$a2,$a2,$at
    # Line 2601
    beqz	$a3,.L0db11b84
    # Line 2614
    sw	$a2,12($s1)
.L0db11b24:
    # Line 2602
    swc1	$f28,200($s1)
    # Line 2603
    add.s	$f28,$f30,$f28
    trunc.w.s	$f1,$f28
    # Line 2601
    move	$a0,$s2
    # Line 2603
    mfc1	$s2,$f1
    nop
    bne	$s2,$a0,.L0db11af8
    slt	$v0,$s0,$s3
    beqzl	$v0,.L0db11afc
    # Line 2613
    move	$a0,$s4
    # Line 2604
    lw	$a1,16($s1)
    # Line 2605
    swc1	$f28,200($s1)
.L0db11b54:
    # Line 2608
    add.s	$f28,$f30,$f28
    # Line 2609
    trunc.w.s	$f2,$f28
    # Line 2606
    addu	$a2,$a1,$a2
    # Line 2609
    mfc1	$s2,$f2
    addiu	$s0,$s0,1
    slt	$v1,$s0,$s3
    bne	$s2,$a0,.L0db11af8
    # Line 2606
    sw	$a2,12($s1)
    # Line 2609
    bnezl	$v1,.L0db11b54
    # Line 2605
    swc1	$f28,200($s1)
    b	.L0db11af8
    nop
.L0db11b84:
    ld	$ra,-32($s8)
    ld	$s2,-112($s8)
.L0db11b8c:
    ld	$gp,-56($s8)
    # Line 2617
    ld	$s0,-104($s8)
    ld	$s1,-40($s8)
    ld	$s3,-96($s8)
    ld	$s4,-48($s8)
    ld	$s5,-88($s8)
    ldc1	$f28,-72($s8)
    ldc1	$f30,-80($s8)
    ld	$a0,-64($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a0
.end __glDrawPixels0

# Function: __glLateScissorRender
# Declared: Line 2626 (Source lines: 2628-2669)
# Address: 0x0db11bbc - 0x0db11cf8 (Size: 316 bytes, Frame: 208)
.globl __glLateScissorRender
.ent __glLateScissorRender
__glLateScissorRender:
    # Line 2628
    move	$a4,$a2
    addiu	$sp,$sp,-80
    sd	$s0,16($sp)
    move	$s0,$a1
    sd	$gp,8($sp)
    lw	$a5,488($a1)
    lui	$at,0xf
    addiu	$at,$at,-13604
    blez	$a5,.L0db11bfc
    addu	$gp,$t9,$at
    # Line 2632
    addiu	$v0,$a5,-1
    ld	$gp,8($sp)
    sw	$v0,488($s0)
    # Line 2633
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db11bfc:
    beqzl	$a5,.L0db11c64
    sd	$a0,0($sp)
    # Line 2653
    la	$a5,sub_0dc00000
    sd	$ra,24($sp)
    lw	$a6,448($s0)
    addiu	$a5,$a5,-13488
.L0db11c14:
    # Line 2661
    move	$a1,$s0
    # Line 2657
    sw	$a5,312($s0)
    # Line 2661
    lw	$a2,492($s0)
    # Line 2659
    lw	$a7,184($s0)
    # Line 2661
    lw	$t9,444($s0)
    addu	$a2,$a2,$a4
    # Line 2659
    addu	$a6,$a7,$a6
    # Line 2661
    jalr	$t9
    # Line 2659
    sw	$a6,184($s0)
    # Line 2665
    lw	$at,-13336($gp)
    # Line 2667
    lw	$ra,448($s0)
    lw	$a3,184($s0)
    ld	$gp,8($sp)
    # Line 2665
    sw	$at,312($s0)
    # Line 2667
    subu	$a3,$a3,$ra
    # Line 2669
    ld	$ra,24($sp)
    # Line 2667
    sw	$a3,184($s0)
    # Line 2669
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db11c64:
    # Line 2651
    move	$a1,$s0
    sd	$ra,24($sp)
    # Line 2636
    addiu	$t1,$a5,-1
    sw	$t1,488($s0)
    # Line 2651
    # lw $t9, -28892($gp) # &__glComputeSpanPixelArray
    # Line 2639
    lw	$a3,312($s0)
    # Line 2642
    lwc1	$f0,452($s0)
    sd	$a4,32($sp)
    # Line 2643
    lw	$a4,476($s0)
    # Line 2644
    lw	$a5,472($s0)
    # Line 2647
    lw	$t0,464($s0)
    # Line 2646
    lw	$a7,468($s0)
    # Line 2645
    lw	$a6,460($s0)
    # Line 2647
    sw	$t0,208($s0)
    # Line 2646
    sw	$a7,212($s0)
    # Line 2645
    sw	$a6,204($s0)
    # Line 2644
    sw	$a5,216($s0)
    # Line 2643
    sw	$a4,220($s0)
    # Line 2642
    swc1	$f0,196($s0)
    # Line 2649
    lw	$a2,448($s0)
    # Line 2636
    la	$v0,sub_0dc00000
    # Line 2649
    lw	$v1,180($s0)
    # Line 2639
    sw	$a3,-13336($gp)
    # Line 2636
    addiu	$v0,$v0,-13488
    # Line 2649
    addu	$v1,$v1,$a2
    sw	$v1,180($s0)
    # Line 2651
    bal __glComputeSpanPixelArray
    # Line 2640
    sw	$v0,312($s0)
    ld	$a4,32($sp)
    la	$a5,sub_0dc00000
    # Line 2653
    lw	$a6,448($s0)
    lw	$at,180($s0)
    ld	$a0,0($sp)
    addiu	$a5,$a5,-13488
    subu	$at,$at,$a6
    b	.L0db11c14
    sw	$at,180($s0)
.end __glLateScissorRender

# Function: __glInitLateScissor
# Declared: Line 2671 (Source lines: 2672-2745)
# Address: 0x0db11cf8 - 0x0db11f88 (Size: 656 bytes, Frame: 176)
.globl __glInitLateScissor
.ent __glInitLateScissor
__glInitLateScissor:
    # Line 2672
    addiu	$sp,$sp,-560
    sd	$s0,528($sp)
    move	$s0,$a1
    sd	$s1,520($sp)
    move	$s1,$a0
    lw	$at,1696($a0)
    # Line 2687
    li	$a0,125
    sd	$gp,512($sp)
    # Line 2672
    lui	$v0,0xf
    addiu	$v0,$v0,-13920
    andi	$at,$at,0x4000
    beqz	$at,.L0db11f10
    addu	$gp,$t9,$v0
    la	$v1,dummyFilter
    lw	$v0,740($s1)
    beq	$v0,$v1,.L0db11ef8
    # Line 2674
    li	$a3,0x8010
    lw	$a2,0($v0)
    beq	$a2,$a3,.L0db11ef8
    # Line 2687
    addiu	$a4,$sp,0
.L0db11d48:
    move	$a1,$s0
    move	$v0,$zero
.L0db11d50:
    addu	$v1,$v0,$a4
    addu	$at,$v0,$a1
    addiu	$v0,$v0,4
    lw	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0db11d50
    sw	$at,0($v1)
    # Line 2691
    move	$a0,$s1
    sd	$ra,536($sp)
    # Line 2690
    lw	$v0,1696($s1)
    # Line 2691
    # lw $t9, -24056($gp) # &__glComputeClipBox
    # Line 2690
    li	$v1,-16385
    and	$v0,$v0,$v1
    # Line 2691
    jal	__glComputeClipBox
    # Line 2690
    sw	$v0,1696($s1)
    # Line 2692
    # lw $t9, -28896($gp) # &__glClipDrawPixels
    move	$a0,$s1
    bal __glClipDrawPixels
    move	$a1,$s0
    lw	$a1,1696($s1)
    sd	$v0,504($sp)
    beqz	$v0,.L0db11f4c
    ori	$a1,$a1,0x4000
    # Line 2700
    # lw $t9, -24056($gp) # &__glComputeClipBox
    move	$a0,$s1
    jal	__glComputeClipBox
    # Line 2699
    sw	$a1,1696($s1)
    # Line 2703
    # lw $t9, -28896($gp) # &__glClipDrawPixels
    move	$a0,$s1
    bal __glClipDrawPixels
    addiu	$a1,$sp,0
    sb	$v0,440($s0)
    # Line 2706
    lw	$a0,184($s0)
    lw	$v1,184($sp)
    subu	$v1,$v1,$a0
    sw	$v1,448($s0)
    # Line 2708
    lwc1	$f2,196($sp)
    swc1	$f2,452($s0)
    # Line 2709
    lwc1	$f1,200($s0)
    lwc1	$f0,200($sp)
    sub.s	$f0,$f0,$f1
    swc1	$f0,456($s0)
    # Line 2710
    lw	$v0,208($sp)
    sw	$v0,464($s0)
    # Line 2712
    lw	$at,212($sp)
    sw	$at,468($s0)
    # Line 2713
    lw	$ra,216($sp)
    sw	$ra,472($s0)
    # Line 2714
    lw	$a3,204($sp)
    sw	$a3,460($s0)
    # Line 2715
    lw	$a2,204($s0)
    lw	$a0,204($sp)
    # Line 2722
    lwc1	$f5,_lit_3f800000
    ld	$ra,536($sp)
    # Line 2715
    subu	$a0,$a0,$a2
    bltz	$a0,.L0db11f44
    # Line 2719
    lw	$a1,220($sp)
.L0db11e34:
    sw	$a1,476($s0)
    # Line 2720
    lw	$v1,48($s0)
    lw	$v0,48($sp)
    # Line 2745
    ld	$s1,520($sp)
    # Line 2722
    lwc1	$f4,160($s0)
    # Line 2720
    subu	$v0,$v0,$v1
    sw	$v0,480($s0)
    # Line 2722
    lw	$a2,52($s0)
    lw	$a1,52($sp)
    c.lt.s	$f4,$f5
    # Line 2728
    lwc1	$f0,_lit_bf800000
    # Line 2722
    subu	$a1,$a1,$a2
    bc1f	.L0db11e98
    sw	$a1,484($s0)
    lwc1	$f3,_lit_bf800000
    c.lt.s	$f3,$f4
    nop
    bc1fl	.L0db11e9c
    # Line 2728
    lw	$v1,116($s0)
    # Line 2725
    lw	$a3,116($s0)
    multu	$a3,$a0
    mflo	$a2
    sll	$a2,$a2,0x2
    b	.L0db11eac
    sw	$a2,492($s0)
.L0db11e98:
    # Line 2728
    lw	$v1,116($s0)
.L0db11e9c:
    multu	$v1,$v0
    mflo	$at
    sll	$at,$at,0x2
    sw	$at,492($s0)
.L0db11eac:
    lwc1	$f4,164($s0)
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0db11f3c
    nop
    c.lt.s	$f0,$f4
    nop
    bc1f	.L0db11f3c
    nop
    # Line 2733
    lw	$v1,208($s0)
    lw	$v0,208($sp)
    subu	$v0,$v0,$v1
    bltz	$v0,.L0db11f7c
    sw	$v0,488($s0)
.L0db11ee4:
    # Line 2745
    li	$v0,1
    ld	$gp,512($sp)
    ld	$s0,528($sp)
    jr	$ra
    addiu	$sp,$sp,560
.L0db11ef8:
    # Line 2674
    lw	$a2,1160($s1)
    bnez	$a2,.L0db11d48
    # Line 2687
    addiu	$a4,$sp,0
    # Line 2674
    lbu	$a3,1276($s1)
    bnez	$a3,.L0db11d48
    # Line 2687
    addiu	$a4,$sp,0
.L0db11f10:
    # Line 2743
    # lw $t9, -28896($gp) # &__glClipDrawPixels
    move	$a0,$s1
    sd	$ra,536($sp)
    bal __glClipDrawPixels
    move	$a1,$s0
    ld	$gp,512($sp)
    ld	$ra,536($sp)
    ld	$s0,528($sp)
    ld	$s1,520($sp)
    jr	$ra
    addiu	$sp,$sp,560
.L0db11f3c:
    b	.L0db11ee4
    # Line 2739
    sw	$a1,488($s0)
.L0db11f44:
    b	.L0db11e34
    # Line 2717
    negu	$a0,$a0
.L0db11f4c:
    # Line 2694
    # lw $t9, -24056($gp) # &__glComputeClipBox
    move	$a0,$s1
    jal	__glComputeClipBox
    # Line 2693
    sw	$a1,1696($s1)
    ld	$gp,512($sp)
    # Line 2695
    ld	$s0,528($sp)
    ld	$s1,520($sp)
    ld	$ra,536($sp)
    ld	$v0,504($sp)
    addiu	$sp,$sp,560
    jr	$ra
    andi	$v0,$v0,0xff
.L0db11f7c:
    # Line 2736
    negu	$v1,$v0
    b	.L0db11ee4
    sw	$v1,488($s0)
.end __glInitLateScissor

# Function: __glSlowPickDrawPixels
# Declared: Line 2752 (Source lines: 2755-2779)
# Address: 0x0db11f88 - 0x0db12088 (Size: 256 bytes, Frame: 224)
.globl __glSlowPickDrawPixels
.ent __glSlowPickDrawPixels
__glSlowPickDrawPixels:
    # Line 2755
    move	$at,$a1
    addiu	$sp,$sp,-608
    # Line 2758
    addiu	$a1,$sp,0
    sd	$s8,504($sp)
    # Line 2755
    move	$s8,$a6
    move	$a6,$a5
    move	$a5,$a4
    move	$a4,$a3
    move	$a3,$a2
    # Line 2758
    move	$a2,$at
    sd	$gp,512($sp)
    # Line 2755
    lui	$v0,0xf
    addiu	$v0,$v0,-14576
    addu	$gp,$t9,$v0
    # Line 2758
    # lw $t9, -28884($gp) # &__glInitDrawPixelsInfo
    sd	$s0,528($sp)
    sd	$ra,520($sp)
    bal __glInitDrawPixelsInfo
    # Line 2755
    move	$s0,$a0
    # Line 2759
    # lw $t9, -28888($gp) # &__glLoadUnpackModes
    move	$a0,$s0
    move	$a2,$s8
    bal __glLoadUnpackModes
    addiu	$a1,$sp,0
    lw	$v1,1696($s0)
    lui	$a1,0x3e00
    and	$v1,$v1,$a1
    beqz	$v1,.L0db1205c
    # Line 2772
    nop	# was lw $t9, -28860($gp) # &__glInitLateScissor
    move	$a0,$s0
    bal __glInitLateScissor
    addiu	$a1,$sp,0
    bnez	$v0,.L0db12024
    ld	$s8,504($sp)
    ld	$ra,520($sp)
    ld	$gp,512($sp)
    ld	$s0,528($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0db12024:
    # Line 2776
    # lw $t9, -28576($gp) # &__glInitUnpacker
    move	$a0,$s0
    bal __glInitUnpacker
    addiu	$a1,$sp,0
    # Line 2778
    # lw $t9, -28852($gp) # &__glGenericPickDrawPixels
    move	$a0,$s0
    bal __glGenericPickDrawPixels
    addiu	$a1,$sp,0
    ld	$gp,512($sp)
    # Line 2779
    ld	$ra,520($sp)
    ld	$s0,528($sp)
    ld	$s8,504($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0db1205c:
    # Line 2774
    # lw $t9, -28896($gp) # &__glClipDrawPixels
    move	$a0,$s0
    bal __glClipDrawPixels
    addiu	$a1,$sp,0
    bnez	$v0,.L0db12024
    ld	$s8,504($sp)
    ld	$ra,520($sp)
    ld	$gp,512($sp)
    ld	$s0,528($sp)
    jr	$ra
    addiu	$sp,$sp,608
.end __glSlowPickDrawPixels

# Function: __glGenericPickDrawPixels
# Declared: Line 2785 (Source lines: 2786-2856)
# Address: 0x0db12088 - 0x0db121c8 (Size: 320 bytes, Frame: 208)
.globl __glGenericPickDrawPixels
.ent __glGenericPickDrawPixels
__glGenericPickDrawPixels:
    # Line 2786
    addiu	$sp,$sp,-80
    # Line 2798
    addiu	$a2,$sp,0
    sd	$s0,24($sp)
    # Line 2786
    move	$s0,$a1
    sd	$s1,32($sp)
    move	$s1,$a0
    sd	$ra,40($sp)
    # Line 2794
    li	$ra,1
    # Line 2796
    sb	$ra,12($sp)
    # Line 2795
    sw	$ra,8($sp)
    sd	$gp,48($sp)
    # Line 2786
    lui	$at,0xf
    addiu	$at,$at,-14832
    addu	$gp,$t9,$at
    # Line 2798
    # lw $t9, -32704($gp) # &sub_0db10000
    # Line 2794
    sw	$ra,4($sp)
    # Line 2793
    li	$at,2
    # Line 2798
    addiu	$t9,$t9,-10236
    bal __glSpanRGBAScaleBiasReduce
    # Line 2793
    sw	$at,0($sp)
    # Line 2800
    lw	$a4,20($sp)
    # Line 2814
    lw	$a0,436($s0)
    # Line 2807
    addiu	$a1,$v0,-1
    sw	$a1,264($s0)
    li	$a3,1
    # Line 2814
    lw	$a1,0($a0)
    # Line 2836
    # lw $t9, -28880($gp) # &__glDrawPixelSpans
    # Line 2814
    li	$v1,0x8011
    beq	$a1,$v1,.L0db12178
    li	$a2,0x8012
    beql	$a1,$a2,.L0db12180
    # Line 2819
    lw	$v1,4556($s1)
    # Line 2825
    beqz	$v0,.L0db121a8
    nop
    beq	$v0,$a3,.L0db121b0
    li	$at,2
    beq	$v0,$at,.L0db121b8
    nop
.L0db12120:
    # Line 2841
    sw	$v0,352($s0)
.L0db12124:
    # Line 2844
    lw	$v1,4($a0)
    li	$a2,0x8016
    beql	$v1,$a2,.L0db1215c
    # Line 2846
    lw	$at,48($a0)
.L0db12134:
    # Line 2854
    sw	$a4,412($s0)
    # Line 2855
    move	$a0,$s1
    jal	__glDrawPixelSpans
    move	$a1,$s0
    ld	$gp,48($sp)
    # Line 2856
    ld	$ra,40($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db1215c:
    # Line 2846
    lw	$a3,180($s0)
    subu	$a3,$a3,$at
    addiu	$a3,$a3,1
    bgez	$a3,.L0db12134
    sw	$a3,184($s0)
    b	.L0db12134
    # Line 2848
    sw	$zero,184($s0)
.L0db12178:
    # Line 2817
    b	.L0db12120
    # Line 2816
    nop	# was lw $t9, -28184($gp) # &__glConv2dDrawPixels
.L0db12180:
    # Line 2819
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,164($s0)
    c.eq.s	$f0,$f1
    nop
    bc1f	.L0db121c0
    # Line 2822
    nop	# was lw $t9, -28188($gp) # &__glSep2dZoomDrawPixels
    # Line 2820
    b	.L0db12120
    nop	# was lw $t9, -28180($gp) # &__glSep2dDrawPixels
.L0db121a8:
    # Line 2828
    b	.L0db12120
    # Line 2827
    nop	# was lw $t9, -28868($gp) # &__glDrawPixels0
.L0db121b0:
    # Line 2831
    b	.L0db12120
    # Line 2830
    nop	# was lw $t9, -28872($gp) # &__glDrawPixels1
.L0db121b8:
    # Line 2834
    b	.L0db12120
    # Line 2833
    nop	# was lw $t9, -28876($gp) # &__glDrawPixels2
.L0db121c0:
    b	.L0db12124
    # Line 2841
    sw	$v0,352($s0)
.end __glGenericPickDrawPixels

# Function: __glClipReadPixels
# Declared: Line 2864 (Source lines: 2865-2941)
# Address: 0x0db121c8 - 0x0db12398 (Size: 464 bytes, Frame: 32)
.globl __glClipReadPixels
.ent __glClipReadPixels
__glClipReadPixels:
    # Line 2874
    lwc1	$f1,188($a1)
    # Line 2865
    addiu	$sp,$sp,-32
    # Line 2875
    lwc1	$f0,192($a1)
    # Line 2874
    trunc.w.s	$f1,$f1
    # Line 2872
    lw	$a4,168($a1)
    # Line 2873
    lw	$a7,172($a1)
    # Line 2875
    trunc.w.s	$f0,$f0
    # Line 2876
    lbu	$at,4552($a0)
    # Line 2873
    move	$a5,$a7
    # Line 2874
    mfc1	$a6,$f1
    # Line 2875
    mfc1	$a3,$f0
    # Line 2876
    beqz	$at,.L0db12318
    addu	$t1,$a4,$a6
    # Line 2878
    subu	$t3,$a3,$a7
.L0db12200:
    # Line 2884
    lw	$t2,3376($a0)
    # Line 2885
    lw	$a7,3416($a0)
    # Line 2882
    lw	$t8,3372($a0)
    # Line 2883
    lw	$t0,3412($a0)
    # Line 2885
    addu	$a7,$a7,$t2
    slt	$at,$a6,$t8
    beqz	$at,.L0db1225c
    # Line 2883
    addu	$t0,$t0,$t8
    # Line 2889
    subu	$t9,$t8,$a6
    slt	$at,$a4,$t9
    beqz	$at,.L0db1223c
    sd	$t9,0($sp)
    # Line 2890
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.L0db1223c:
    # Line 2895
    mtc1	$t8,$f2
    # Line 2892
    ld	$v1,0($sp)
    # Line 2895
    cvt.s.w	$f2,$f2
    # Line 2894
    lw	$v0,128($a1)
    # Line 2892
    subu	$a4,$a4,$v1
    # Line 2894
    addu	$v0,$v0,$t9
    sw	$v0,128($a1)
    # Line 2895
    swc1	$f2,188($a1)
.L0db1225c:
    slt	$a2,$t0,$t1
    beqz	$a2,.L0db12274
    subu	$a6,$t1,$t0
    slt	$at,$a4,$a6
    bnez	$at,.L0db12324
    # Line 2901
    subu	$a4,$a4,$a6
.L0db12274:
    lbu	$v0,4552($a0)
    # Line 2917
    slt	$at,$a3,$t2
    # Line 2905
    subu	$a6,$a3,$a7
    # Line 2901
    beqz	$v0,.L0db12330
    # Line 2905
    addiu	$a0,$a6,1
    # Line 2901
    slt	$v1,$a3,$a7
    bnez	$v1,.L0db122cc
    # Line 2905
    slt	$a2,$a5,$a0
    beqz	$a2,.L0db122a8
    # Line 2908
    subu	$a5,$a5,$a6
    # Line 2906
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.L0db122a8:
    # Line 2911
    addiu	$at,$a7,-1
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 2910
    lw	$at,132($a1)
    # Line 2908
    addiu	$a5,$a5,-1
    # Line 2910
    addu	$at,$at,$a0
    sw	$at,132($a1)
    # Line 2911
    swc1	$f3,192($a1)
.L0db122cc:
    addiu	$v0,$t2,-1
    slt	$v0,$t3,$v0
    beqz	$v0,.L0db122fc
    subu	$a0,$t2,$t3
    addiu	$v1,$a0,-1
    slt	$v1,$a5,$v1
    beqz	$v1,.L0db122f4
    # Line 2915
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.L0db122f4:
    # Line 2917
    subu	$a5,$a5,$a0
    addiu	$a5,$a5,1
.L0db122fc:
    # Line 2941
    li	$v0,1
    # Line 2939
    sw	$a4,180($a1)
    sw	$a4,184($a1)
    # Line 2938
    sw	$a5,172($a1)
    # Line 2937
    sw	$a4,168($a1)
    # Line 2941
    jr	$ra
    addiu	$sp,$sp,32
.L0db12318:
    # Line 2880
    addu	$t3,$a7,$a3
    b	.L0db12200
    nop
.L0db12324:
    # Line 2899
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.L0db12330:
    # Line 2921
    subu	$a6,$t2,$a3
    # Line 2917
    beqz	$at,.L0db12370
    # Line 2921
    move	$a0,$a6
    slt	$v0,$a5,$a6
    beqz	$v0,.L0db12350
    # Line 2922
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.L0db12350:
    # Line 2927
    mtc1	$t2,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 2926
    lw	$v1,132($a1)
    # Line 2924
    subu	$a5,$a5,$a6
    # Line 2926
    addu	$v1,$v1,$a0
    sw	$v1,132($a1)
    # Line 2927
    swc1	$f0,192($a1)
.L0db12370:
    slt	$a2,$a7,$t3
    beqz	$a2,.L0db122fc
    subu	$a0,$t3,$a7
    slt	$at,$a5,$a0
    beqz	$at,.L0db12390
    # Line 2931
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.L0db12390:
    b	.L0db122fc
    # Line 2933
    subu	$a5,$a5,$a0
.end __glClipReadPixels

# Function: __glLoadPackModes
# Declared: Line 2948 (Source lines: 2950-2963)
# Address: 0x0db12398 - 0x0db123f4 (Size: 92 bytes, Frame: 0)
.globl __glLoadPackModes
.ent __glLoadPackModes
__glLoadPackModes:
    # Line 2953
    lw	$v0,1088($a0)
    # Line 2951
    lw	$a3,1096($a0)
    # Line 2950
    lw	$a4,1076($a0)
    # Line 2953
    sw	$v0,148($a1)
    # Line 2954
    lw	$at,1084($a0)
    sw	$at,128($a1)
    # Line 2955
    lw	$a2,1080($a0)
    sw	$a2,132($a1)
    # Line 2956
    lw	$v1,1092($a0)
    sw	$v1,136($a1)
    # Line 2957
    lbu	$v0,1073($a0)
    sw	$v0,124($a1)
    # Line 2958
    lbu	$at,1072($a0)
    blez	$a4,.L0db123e4
    sw	$at,120($a1)
.L0db123d4:
    # Line 2960
    blez	$a3,.L0db123ec
    sw	$a4,140($a1)
.L0db123dc:
    # Line 2963
    jr	$ra
    # Line 2962
    sw	$a3,144($a1)
.L0db123e4:
    b	.L0db123d4
    # Line 2959
    lw	$a4,168($a1)
.L0db123ec:
    b	.L0db123dc
    # Line 2961
    lw	$a3,172($a1)
.end __glLoadPackModes

# Function: __glInitReadPixelsInfo
# Declared: Line 2965 (Source lines: 2968-2998)
# Address: 0x0db123f4 - 0x0db1254c (Size: 344 bytes, Frame: 240)
.globl __glInitReadPixelsInfo
.ent __glInitReadPixelsInfo
__glInitReadPixelsInfo:
    # Line 2969
    lw	$v1,3372($a0)
    # Line 2968
    addiu	$sp,$sp,-112
    # Line 2969
    addu	$v1,$v1,$a2
    mtc1	$v1,$f0
    sd	$s2,0($sp)
    # Line 2968
    move	$s2,$a0
    # Line 2969
    cvt.s.w	$f0,$f0
    sd	$s1,8($sp)
    # Line 2968
    move	$s1,$a6
    sd	$s0,24($sp)
    move	$s0,$a1
    sd	$gp,16($sp)
    # Line 2969
    swc1	$f0,188($a1)
    # Line 2968
    lui	$v0,0xf
    # Line 2969
    lbu	$at,4552($a0)
    # Line 2968
    addiu	$v0,$v0,-15708
    addu	$gp,$t9,$v0
    # Line 2969
    beqz	$at,.L0db1250c
    lw	$t1,3376($a0)
    # Line 2971
    lw	$a2,3416($s2)
    subu	$a2,$a2,$a3
    addu	$a2,$a2,$t1
    addiu	$a2,$a2,-1
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    sd	$ra,32($sp)
    swc1	$f1,192($s0)
.L0db12464:
    # Line 2983
    move	$a1,$s0
    move	$a0,$s2
    # Line 2982
    mtc1	$zero,$f3
    # Line 2979
    sw	$a7,84($s0)
    # Line 2978
    sw	$s1,80($s0)
    # Line 2980
    lw	$a3,116($sp)
    # Line 2977
    sw	$a5,172($s0)
    # Line 2976
    sw	$a4,168($s0)
    # Line 2980
    sw	$a3,88($s0)
    # Line 2983
    # lw $t9, -28844($gp) # &__glLoadPackModes
    # Line 2981
    lwc1	$f2,3284($s2)
    # Line 2982
    swc1	$f3,196($s0)
    # Line 2983
    bal __glLoadPackModes
    # Line 2981
    swc1	$f2,160($s0)
    # Line 2993
    sb	$zero,72($s0)
    # Line 2992
    sw	$zero,8($s0)
    # Line 2991
    sw	$zero,40($s0)
    ld	$ra,32($sp)
    # Line 2989
    li	$v0,5126
    # Line 2993
    li	$at,6401
    # Line 2990
    li	$v1,4
    sw	$v1,36($s0)
    # Line 2993
    beq	$s1,$at,.L0db1253c
    # Line 2989
    sw	$v0,4($s0)
    # Line 2994
    li	$a2,6402
    beq	$s1,$a2,.L0db12528
    li	$a1,6402
    lbu	$at,3104($s2)
    ld	$s2,0($sp)
    beqz	$at,.L0db12534
    ld	$s1,8($sp)
    ld	$s2,0($sp)
    li	$a0,6408
.L0db124e8:
    move	$a1,$a0
.L0db124ec:
    move	$a0,$a1
.L0db124f0:
    ld	$gp,16($sp)
    sw	$a0,0($s0)
    # Line 2997
    li	$v0,2
    sw	$v0,432($s0)
    # Line 2998
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db1250c:
    # Line 2974
    addu	$v1,$t1,$a3
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    sd	$ra,32($sp)
    b	.L0db12464
    swc1	$f0,192($s0)
.L0db12528:
    ld	$s1,8($sp)
    # Line 2994
    b	.L0db124ec
    ld	$s2,0($sp)
.L0db12534:
    b	.L0db124e8
    li	$a0,6400
.L0db1253c:
    li	$a0,6401
    ld	$s1,8($sp)
    b	.L0db124f0
    ld	$s2,0($sp)
.end __glInitReadPixelsInfo

# Function: __glReadPixelSpans
# Declared: Line 3000 (Source lines: 3001-3042)
# Address: 0x0db1254c - 0x0db12708 (Size: 444 bytes, Frame: 0)
.globl __glReadPixelSpans
.ent __glReadPixelSpans
__glReadPixelSpans:
    # Line 3001
    move	$a3,$s8
    addiu	$sp,$sp,-176
    addiu	$s8,$sp,176
    sdc1	$f30,-136($s8)
    sd	$s7,-88($s8)
    # Line 3023
    lw	$at,172($a1)
    # Line 3025
    move	$s7,$zero
    sd	$s6,-80($s8)
    sd	$at,-112($s8)
    # Line 3020
    lw	$a2,356($a1)
    sd	$s1,-64($s8)
    # Line 3001
    move	$s1,$a1
    # Line 3007
    lw	$a1,30700($a0)
    sd	$a2,-128($s8)
    # Line 3004
    lw	$a2,352($s1)
    sd	$a1,-120($s8)
    sd	$gp,-96($s8)
    sd	$s4,-72($s8)
    # Line 3001
    move	$s4,$a0
    sd	$a3,-104($s8)
    # Line 3022
    lw	$a3,4556($a0)
    # Line 3001
    lui	$a0,0xf
    addiu	$a0,$a0,-16052
    # Line 3015
    lw	$v1,168($s1)
    # Line 3001
    addu	$gp,$t9,$a0
    # Line 3015
    li	$a0,-16
    sll	$v1,$v1,0x4
    addiu	$v1,$v1,15
    and	$v1,$v1,$a0
    subu	$sp,$sp,$v1
    # Line 3017
    move	$s6,$sp
    subu	$sp,$sp,$v1
    # Line 3018
    move	$v0,$sp
    # Line 3025
    blez	$at,.L0db126e4
    sd	$sp,-32($s8)
    sd	$s2,-176($s8)
    sd	$s5,-168($s8)
    sd	$s3,-160($s8)
    sd	$ra,-152($s8)
    sd	$s0,-144($s8)
    addiu	$at,$a2,-1
    li	$a4,1
    slt	$a4,$a4,$a2
    sd	$at,-40($s8)
    sll	$at,$at,0x2
    sd	$at,-56($s8)
    mtc1	$a3,$f30
    sd	$a4,-48($s8)
    b	.L0db12664
    cvt.s.w	$f30,$f30
.L0db12614:
    # Line 3034
    move	$a0,$s4
    sll	$t9,$a5,0x2
    addu	$t9,$t9,$s1
    lw	$t9,360($t9)
    move	$a1,$s1
    move	$a2,$s0
    jalr	$t9
    lw	$a3,92($s1)
    # Line 3025
    addiu	$s7,$s7,1
    # Line 3040
    ld	$v0,-120($s8)
    # Line 3038
    lwc1	$f0,192($s1)
    # Line 3036
    lw	$a4,92($s1)
    lw	$v1,96($s1)
    # Line 3038
    add.s	$f0,$f0,$f30
    # Line 3025
    ld	$at,-112($s8)
    # Line 3036
    addu	$v1,$v1,$a4
    sw	$v1,92($s1)
    # Line 3038
    swc1	$f0,192($s1)
    # Line 3025
    beq	$at,$s7,.L0db126cc
    # Line 3040
    sw	$v0,30700($s4)
.L0db12664:
    # Line 3026
    ld	$t9,-128($s8)
    move	$a0,$s4
    move	$a1,$s1
    jalr	$t9
    move	$a2,$s6
    # Line 3027
    move	$s0,$s6
    # Line 3028
    ld	$at,-48($s8)
    # Line 3027
    ld	$s2,-32($s8)
    # Line 3028
    beqz	$at,.L0db12614
    move	$a5,$zero
    move	$s3,$s1
    ld	$s5,-56($s8)
    addu	$s5,$s5,$s1
.L0db12698:
    # Line 3029
    move	$a0,$s4
    lw	$t9,360($s3)
    move	$a1,$s1
    move	$a2,$s0
    jalr	$t9
    move	$a3,$s2
    # Line 3028
    addiu	$s3,$s3,4
    # Line 3030
    move	$at,$s0
    # Line 3031
    move	$s0,$s2
    # Line 3028
    bne	$s3,$s5,.L0db12698
    # Line 3032
    move	$s2,$at
    b	.L0db12614
    ld	$a5,-40($s8)
.L0db126cc:
    ldc1	$f30,-136($s8)
    ld	$s0,-144($s8)
    ld	$ra,-152($s8)
    ld	$s3,-160($s8)
    ld	$s5,-168($s8)
    ld	$s2,-176($s8)
.L0db126e4:
    ld	$gp,-96($s8)
    # Line 3042
    ld	$s1,-64($s8)
    ld	$s4,-72($s8)
    ld	$s6,-80($s8)
    ld	$s7,-88($s8)
    ld	$v0,-104($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.end __glReadPixelSpans

# Function: __glReadPixels2
# Declared: Line 3047 (Source lines: 3048-3082)
# Address: 0x0db12708 - 0x0db12858 (Size: 336 bytes, Frame: 0)
.globl __glReadPixels2
.ent __glReadPixels2
__glReadPixels2:
    # Line 3070
    lw	$a3,4556($a0)
    # Line 3048
    move	$a2,$s8
    addiu	$sp,$sp,-144
    addiu	$s8,$sp,144
    sdc1	$f30,-128($s8)
    sd	$s1,-40($s8)
    move	$s1,$a1
    sd	$s0,-72($s8)
    move	$s0,$a0
    sd	$s5,-56($s8)
    # Line 3068
    lw	$s5,356($a1)
    sd	$s6,-88($s8)
    # Line 3067
    lw	$s6,364($a1)
    sd	$a2,-112($s8)
    # Line 3066
    lw	$a2,360($a1)
    sd	$s7,-96($s8)
    # Line 3051
    lw	$s7,30700($a0)
    sd	$s3,-64($s8)
    # Line 3072
    move	$s3,$zero
    # Line 3071
    lw	$at,172($a1)
    sd	$s4,-80($s8)
    sd	$s2,-48($s8)
    sd	$at,-120($s8)
    # Line 3048
    lui	$v1,0xf
    addiu	$v1,$v1,-16496
    sd	$gp,-104($s8)
    # Line 3060
    lw	$v0,168($a1)
    # Line 3048
    addu	$gp,$t9,$v1
    # Line 3060
    li	$v1,-16
    sll	$v0,$v0,0x4
    addiu	$v0,$v0,15
    and	$v0,$v0,$v1
    subu	$sp,$sp,$v0
    # Line 3063
    move	$s2,$sp
    subu	$sp,$sp,$v0
    # Line 3072
    blez	$at,.L0db12824
    # Line 3064
    move	$s4,$sp
    # Line 3072
    mtc1	$a3,$f30
    sd	$a2,-32($s8)
    sd	$ra,-136($s8)
    cvt.s.w	$f30,$f30
.L0db127ac:
    # Line 3073
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s2
    jalr	$s5
    move	$t9,$s5
    # Line 3074
    move	$a0,$s0
    ld	$t9,-32($s8)
    move	$a1,$s1
    move	$a2,$s2
    jalr	$t9
    move	$a3,$s4
    # Line 3075
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s4
    lw	$a3,92($s1)
    jalr	$s6
    move	$t9,$s6
    # Line 3072
    addiu	$s3,$s3,1
    # Line 3078
    lwc1	$f0,192($s1)
    # Line 3076
    lw	$v0,92($s1)
    lw	$at,96($s1)
    # Line 3078
    add.s	$f0,$f0,$f30
    # Line 3072
    ld	$a4,-120($s8)
    # Line 3076
    addu	$at,$at,$v0
    sw	$at,92($s1)
    # Line 3078
    swc1	$f0,192($s1)
    # Line 3072
    bne	$a4,$s3,.L0db127ac
    # Line 3080
    sw	$s7,30700($s0)
    ldc1	$f30,-128($s8)
    ld	$ra,-136($s8)
.L0db12824:
    ld	$gp,-104($s8)
    # Line 3082
    ld	$s0,-72($s8)
    ld	$s1,-40($s8)
    ld	$s2,-48($s8)
    ld	$s3,-64($s8)
    ld	$s4,-80($s8)
    ld	$s5,-56($s8)
    ld	$s6,-88($s8)
    ld	$s7,-96($s8)
    ld	$v1,-112($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v1
.end __glReadPixels2

# Function: __glReadPixels1
# Declared: Line 3087 (Source lines: 3088-3117)
# Address: 0x0db12858 - 0x0db12978 (Size: 288 bytes, Frame: 0)
.globl __glReadPixels1
.ent __glReadPixels1
__glReadPixels1:
    # Line 3106
    lw	$a2,4556($a0)
    # Line 3088
    move	$v1,$s8
    addiu	$sp,$sp,-128
    addiu	$s8,$sp,128
    sd	$v1,-104($s8)
    sdc1	$f30,-112($s8)
    sd	$s1,-32($s8)
    move	$s1,$a1
    sd	$s0,-64($s8)
    move	$s0,$a0
    sd	$s5,-48($s8)
    # Line 3104
    lw	$s5,356($a1)
    sd	$s7,-88($s8)
    # Line 3103
    lw	$s7,360($a1)
    sd	$s6,-80($s8)
    # Line 3091
    lw	$s6,30700($a0)
    sd	$s2,-40($s8)
    # Line 3108
    move	$s2,$zero
    sd	$s3,-56($s8)
    # Line 3088
    lui	$v0,0xf
    addiu	$v0,$v0,-16832
    sd	$s4,-72($s8)
    # Line 3107
    lw	$s4,172($a1)
    sd	$gp,-96($s8)
    # Line 3098
    lw	$at,168($a1)
    # Line 3088
    addu	$gp,$t9,$v0
    # Line 3098
    li	$v0,-16
    sll	$at,$at,0x4
    addiu	$at,$at,15
    and	$at,$at,$v0
    subu	$sp,$sp,$at
    # Line 3108
    blez	$s4,.L0db12944
    # Line 3101
    move	$s3,$sp
    # Line 3108
    mtc1	$a2,$f30
    sd	$ra,-120($s8)
    cvt.s.w	$f30,$f30
.L0db128e8:
    # Line 3109
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s3
    jalr	$s5
    move	$t9,$s5
    # Line 3110
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s3
    lw	$a3,92($s1)
    jalr	$s7
    move	$t9,$s7
    # Line 3108
    addiu	$s2,$s2,1
    # Line 3113
    lwc1	$f0,192($s1)
    # Line 3111
    lw	$at,92($s1)
    lw	$a3,96($s1)
    # Line 3113
    add.s	$f0,$f0,$f30
    # Line 3111
    addu	$a3,$a3,$at
    sw	$a3,92($s1)
    # Line 3113
    swc1	$f0,192($s1)
    # Line 3108
    bne	$s4,$s2,.L0db128e8
    # Line 3115
    sw	$s6,30700($s0)
    ldc1	$f30,-112($s8)
    ld	$ra,-120($s8)
.L0db12944:
    ld	$gp,-96($s8)
    # Line 3117
    ld	$s0,-64($s8)
    ld	$s1,-32($s8)
    ld	$s2,-40($s8)
    ld	$s3,-56($s8)
    ld	$s4,-72($s8)
    ld	$s5,-48($s8)
    ld	$s6,-80($s8)
    ld	$s7,-88($s8)
    ld	$v0,-104($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.end __glReadPixels1

# Function: __glReadPixels0
# Declared: Line 3122 (Source lines: 3123-3139)
# Address: 0x0db12978 - 0x0db12a2c (Size: 180 bytes, Frame: 208)
.globl __glReadPixels0
.ent __glReadPixels0
__glReadPixels0:
    # Line 3131
    lw	$a4,4556($a0)
    # Line 3123
    addiu	$sp,$sp,-80
    sdc1	$f30,48($sp)
    sd	$s0,24($sp)
    move	$s0,$a1
    sd	$s4,16($sp)
    move	$s4,$a0
    sd	$s2,0($sp)
    # Line 3129
    lw	$s2,356($a1)
    sd	$s1,32($sp)
    # Line 3133
    move	$s1,$zero
    sd	$gp,40($sp)
    sd	$s3,8($sp)
    # Line 3132
    lw	$s3,172($a1)
    # Line 3123
    lui	$at,0xf
    addiu	$at,$at,-17120
    # Line 3133
    blez	$s3,.L0db12a0c
    # Line 3123
    addu	$gp,$t9,$at
    # Line 3133
    mtc1	$a4,$f30
    sd	$ra,56($sp)
    lw	$a2,92($s0)
    cvt.s.w	$f30,$f30
.L0db129d0:
    # Line 3134
    move	$a0,$s4
    move	$a1,$s0
    jalr	$s2
    move	$t9,$s2
    # Line 3133
    addiu	$s1,$s1,1
    # Line 3135
    lw	$a3,92($s0)
    # Line 3137
    lwc1	$f0,192($s0)
    # Line 3135
    lw	$a2,96($s0)
    # Line 3137
    add.s	$f0,$f0,$f30
    # Line 3135
    addu	$a2,$a2,$a3
    sw	$a2,92($s0)
    # Line 3133
    bne	$s3,$s1,.L0db129d0
    # Line 3137
    swc1	$f0,192($s0)
    ldc1	$f30,48($sp)
    ld	$ra,56($sp)
.L0db12a0c:
    ld	$gp,40($sp)
    # Line 3139
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s4,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glReadPixels0

# Function: __glSlowPickReadPixels
# Declared: Line 3145 (Source lines: 3148-3158)
# Address: 0x0db12a2c - 0x0db12ad4 (Size: 168 bytes, Frame: 224)
.globl __glSlowPickReadPixels
.ent __glSlowPickReadPixels
__glSlowPickReadPixels:
    # Line 3148
    move	$at,$a1
    addiu	$sp,$sp,-608
    # Line 3151
    addiu	$a1,$sp,16
    sw	$a7,4($sp)
    # Line 3148
    move	$a7,$a6
    move	$a6,$a5
    move	$a5,$a4
    move	$a4,$a3
    move	$a3,$a2
    # Line 3151
    move	$a2,$at
    sd	$gp,520($sp)
    # Line 3148
    lui	$v0,0xf
    addiu	$v0,$v0,-17300
    addu	$gp,$t9,$v0
    # Line 3151
    # lw $t9, -28840($gp) # &__glInitReadPixelsInfo
    sd	$s0,536($sp)
    sd	$ra,528($sp)
    bal __glInitReadPixelsInfo
    # Line 3148
    move	$s0,$a0
    # Line 3153
    # lw $t9, -28848($gp) # &__glClipReadPixels
    move	$a0,$s0
    bal __glClipReadPixels
    addiu	$a1,$sp,16
    bnez	$v0,.L0db12aa4
    # Line 3155
    nop	# was lw $t9, -29076($gp) # &__glInitPacker
    # Line 3153
    ld	$ra,528($sp)
    ld	$gp,520($sp)
    ld	$s0,536($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0db12aa4:
    # Line 3155
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,16
    # Line 3157
    # lw $t9, -28816($gp) # &__glGenericPickReadPixels
    move	$a0,$s0
    bal __glGenericPickReadPixels
    addiu	$a1,$sp,16
    # Line 3158
    ld	$ra,528($sp)
    ld	$gp,520($sp)
    ld	$s0,536($sp)
    jr	$ra
    addiu	$sp,$sp,608
.end __glSlowPickReadPixels

# Function: __glGenericPickReadPixels
# Declared: Line 3164 (Source lines: 3165-3234)
# Address: 0x0db12ad4 - 0x0db12bfc (Size: 296 bytes, Frame: 208)
.globl __glGenericPickReadPixels
.ent __glGenericPickReadPixels
__glGenericPickReadPixels:
    # Line 3172
    li	$at,1
    # Line 3165
    addiu	$sp,$sp,-80
    # Line 3177
    addiu	$a2,$sp,0
    sd	$s0,24($sp)
    # Line 3165
    move	$s0,$a1
    sd	$a0,48($sp)
    # Line 3175
    sb	$at,12($sp)
    sd	$ra,32($sp)
    # Line 3173
    li	$ra,2
    sd	$gp,40($sp)
    # Line 3165
    lui	$v0,0xf
    addiu	$v0,$v0,-17468
    addu	$gp,$t9,$v0
    # Line 3177
    # lw $t9, -32704($gp) # &sub_0db10000
    # Line 3174
    sw	$ra,8($sp)
    # Line 3173
    sw	$ra,4($sp)
    # Line 3177
    addiu	$t9,$t9,-10236
    bal __glSpanRGBAScaleBiasReduce
    # Line 3172
    sw	$at,0($sp)
    # Line 3177
    move	$a1,$v0
    # Line 3187
    lw	$a0,16($sp)
    lw	$a4,264($s0)
    li	$v1,-1
    sw	$a0,356($s0)
    beq	$a4,$v1,.L0db12bd0
    ld	$a0,48($sp)
    # Line 3191
    addiu	$a1,$a4,1
.L0db12b40:
    # Line 3194
    lw	$a4,436($s0)
    li	$at,1
    lw	$v0,0($a4)
    # Line 3213
    # lw $t9, -28836($gp) # &__glReadPixelSpans
    # Line 3194
    li	$a2,0x8011
    beq	$v0,$a2,.L0db12bc8
    li	$a3,0x8012
    beq	$v0,$a3,.L0db12bdc
    nop
    # Line 3202
    beqz	$a1,.L0db12be4
    nop
    beq	$a1,$at,.L0db12bec
    li	$v1,2
    beq	$a1,$v1,.L0db12bf4
    nop
.L0db12b7c:
    # Line 3218
    sw	$a1,352($s0)
    # Line 3222
    lw	$a2,4($a4)
    li	$a3,0x8016
    beql	$a2,$a3,.L0db12bac
    # Line 3224
    lw	$v1,48($a4)
.L0db12b90:
    # Line 3233
    jal	__glReadPixelSpans
    move	$a1,$s0
    # Line 3234
    ld	$ra,32($sp)
    ld	$gp,40($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db12bac:
    # Line 3224
    lw	$at,180($s0)
    subu	$at,$at,$v1
    addiu	$at,$at,1
    bgez	$at,.L0db12b90
    sw	$at,184($s0)
    b	.L0db12b90
    # Line 3226
    sw	$zero,184($s0)
.L0db12bc8:
    # Line 3197
    b	.L0db12b7c
    # Line 3196
    nop	# was lw $t9, -28176($gp) # &__glConv2dReadPixels
.L0db12bd0:
    # Line 3189
    addiu	$a2,$v0,-1
    b	.L0db12b40
    sw	$a2,264($s0)
.L0db12bdc:
    # Line 3200
    b	.L0db12b7c
    # Line 3199
    nop	# was lw $t9, -28172($gp) # &__glSep2dReadPixels
.L0db12be4:
    # Line 3205
    b	.L0db12b7c
    # Line 3204
    nop	# was lw $t9, -28824($gp) # &__glReadPixels0
.L0db12bec:
    # Line 3208
    b	.L0db12b7c
    # Line 3207
    nop	# was lw $t9, -28828($gp) # &__glReadPixels1
.L0db12bf4:
    # Line 3211
    b	.L0db12b7c
    # Line 3210
    nop	# was lw $t9, -28832($gp) # &__glReadPixels2
.end __glGenericPickReadPixels

# Function: __glClipCopyPixels
# Declared: Line 3242 (Source lines: 3243-3594)
# Address: 0x0db12bfc - 0x0db1329c (Size: 1696 bytes, Frame: 192)
.globl __glClipCopyPixels
.ent __glClipCopyPixels
__glClipCopyPixels:
    # Line 3243
    addiu	$sp,$sp,-192
    sd	$s2,72($sp)
    move	$s2,$a0
    sd	$ra,96($sp)
    sd	$s1,80($sp)
    sd	$gp,88($sp)
    lui	$at,0xf
    addiu	$at,$at,-17764
    addu	$gp,$t9,$at
    # Line 3274
    # lw $t9, -28848($gp) # &__glClipReadPixels
    # Line 3243
    move	$s1,$a1
    # Line 3273
    sw	$zero,128($s1)
    # Line 3274
    bal __glClipReadPixels
    # Line 3272
    sw	$zero,132($s1)
    # Line 3274
    beqz	$v0,.L0db12e88
    ld	$ra,96($sp)
    # Line 3276
    lw	$v1,132($s1)
    mtc1	$v1,$f5
    # Line 3275
    lw	$v0,128($s1)
    # Line 3276
    cvt.s.w	$f5,$f5
    # Line 3275
    mtc1	$v0,$f4
    # Line 3276
    lwc1	$f3,164($s1)
    # Line 3275
    cvt.s.w	$f4,$f4
    lwc1	$f2,160($s1)
    # Line 3276
    mul.s	$f3,$f3,$f5
    # Line 3275
    mul.s	$f2,$f2,$f4
    # Line 3280
    move	$a1,$s1
    # Line 3276
    lwc1	$f1,200($s1)
    # Line 3280
    move	$a0,$s2
    # Line 3275
    lwc1	$f0,196($s1)
    # Line 3276
    add.s	$f1,$f1,$f3
    # Line 3279
    sw	$zero,48($s1)
    # Line 3280
    # lw $t9, -28896($gp) # &__glClipDrawPixels
    # Line 3275
    add.s	$f0,$f0,$f2
    # Line 3278
    sw	$zero,52($s1)
    # Line 3276
    swc1	$f1,200($s1)
    # Line 3280
    bal __glClipDrawPixels
    # Line 3275
    swc1	$f0,196($s1)
    # Line 3280
    beqz	$v0,.L0db13054
    move	$v0,$zero
    # Line 3281
    lw	$v0,48($s1)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f8,188($s1)
    lw	$at,52($s1)
    add.s	$f8,$f8,$f0
    mtc1	$at,$f5
    swc1	$f8,188($s1)
    cvt.s.w	$f5,$f5
    lbu	$a2,4552($s2)
    lwc1	$f4,192($s1)
    beqz	$a2,.L0db12f24
    # Line 3405
    trunc.w.s	$f0,$f8
    # Line 3283
    sub.s	$f4,$f4,$f5
    sd	$s5,64($sp)
    sdc1	$f26,120($sp)
    sdc1	$f24,24($sp)
    swc1	$f4,192($s1)
.L0db12ce8:
    # Line 3408
    lwc1	$f5,3392($s2)
    lwc1	$f6,3280($s2)
    lwc1	$f26,164($s1)
    # Line 3407
    lwc1	$f10,160($s1)
    # Line 3404
    lwc1	$f24,200($s1)
    # Line 3403
    lwc1	$f9,196($s1)
    # Line 3401
    lw	$a3,168($s1)
    # Line 3406
    trunc.w.s	$f7,$f4
    # Line 3402
    lw	$s5,172($s1)
    # Line 3408
    lbu	$v1,4552($s2)
    # Line 3405
    mfc1	$a4,$f0
    # Line 3406
    mfc1	$a0,$f7
    # Line 3408
    beqz	$v1,.L0db12f3c
    cvt.s.w	$f7,$f7
    # Line 3412
    subu	$a2,$a0,$s5
    mtc1	$a2,$f14
    nop
    cvt.s.w	$f14,$f14
    # Line 3413
    sub.s	$f13,$f7,$f5
    # Line 3412
    add.s	$f14,$f14,$f6
.L0db12d38:
    # Line 3416
    mtc1	$a3,$f4
    nop
    cvt.s.w	$f4,$f4
    mtc1	$zero,$f11
    c.lt.s	$f11,$f10
    sub.s	$f7,$f9,$f5
    # Line 3445
    addu	$at,$a3,$a4
    # Line 3416
    bc1f	.L0db12d68
    mul.s	$f4,$f4,$f10
    # Line 3423
    mov.s	$f9,$f7
    # Line 3424
    b	.L0db12d74
    add.s	$f10,$f4,$f7
.L0db12d68:
    # Line 3427
    lwc1	$f10,3284($s2)
    add.s	$f10,$f10,$f7
    # Line 3428
    add.s	$f9,$f4,$f10
.L0db12d74:
    # Line 3429
    sub.s	$f7,$f24,$f5
    mtc1	$s5,$f16
    c.lt.s	$f11,$f26
    li	$a1,1
    cvt.s.w	$f16,$f16
    bc1fl	.L0db12d90
    move	$a1,$zero
.L0db12d90:
    # Line 3434
    mov.s	$f4,$f26
    # Line 3435
    mov.s	$f12,$f7
    # Line 3429
    beqz	$a1,.L0db12f58
    mul.s	$f8,$f16,$f26
    # Line 3436
    add.s	$f17,$f8,$f7
    # Line 3433
    mov.s	$f24,$f7
    # Line 3436
    mov.s	$f15,$f17
.L0db12dac:
    # Line 3445
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    sub.s	$f0,$f0,$f5
    c.lt.s	$f0,$f9
    nop
    bc1t	.L0db12e48
    # Line 3459
    ld	$ra,96($sp)
    # Line 3445
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    add.s	$f1,$f1,$f6
    c.lt.s	$f10,$f1
    nop
    bc1t	.L0db12e48
    # Line 3459
    ld	$ra,96($sp)
    # Line 3445
    c.lt.s	$f13,$f12
    nop
    bc1t	.L0db12e48
    # Line 3459
    ld	$ra,96($sp)
    # Line 3445
    c.lt.s	$f15,$f14
    nop
    bc1t	.L0db12e48
    # Line 3459
    ld	$ra,96($sp)
    # Line 3445
    lbu	$v0,3276($s2)
    beqz	$v0,.L0db12e48
    # Line 3459
    ld	$ra,96($sp)
    # Line 3445
    lw	$a3,1788($s2)
    lw	$v1,1148($s2)
    beq	$v1,$a3,.L0db12ea0
    li	$a2,1032
    beq	$a3,$a2,.L0db12ea4
    # Line 3462
    ldc1	$f7,_lit8_bfe0000000000000
    # Line 3445
    lw	$a3,80($s1)
    li	$at,6401
    beq	$a3,$at,.L0db12ea0
    li	$v0,6402
    beq	$a3,$v0,.L0db12ea0
    # Line 3459
    ld	$ra,96($sp)
.L0db12e48:
    li	$v0,1
    ld	$gp,88($sp)
    # Line 3458
    swc1	$f24,272($s1)
    # Line 3457
    swc1	$f24,268($s1)
    # Line 3456
    sw	$zero,280($s1)
    # Line 3455
    sw	$zero,276($s1)
    # Line 3454
    sw	$zero,232($s1)
    # Line 3453
    sw	$s5,228($s1)
    # Line 3452
    sb	$zero,224($s1)
    # Line 3459
    ld	$s1,80($sp)
    ld	$s2,72($sp)
    ld	$s5,64($sp)
    ldc1	$f24,24($sp)
    ldc1	$f26,120($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db12e88:
    # Line 3274
    move	$v0,$zero
    ld	$gp,88($sp)
    ld	$s1,80($sp)
    ld	$s2,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db12ea0:
    # Line 3462
    ldc1	$f7,_lit8_bfe0000000000000
.L0db12ea4:
    li	$v1,1
    sb	$v1,224($s1)
    cvt.d.s	$f6,$f24
    lbu	$a3,4552($s2)
    add.d	$f6,$f6,$f7
    mtc1	$a0,$f7
    lwc1	$f9,_lit_bf800000
    beqz	$a3,.L0db1307c
    cvt.d.w	$f7,$f7
    # Line 3466
    sub.d	$f8,$f6,$f7
    # Line 3467
    sub.s	$f5,$f9,$f26
    # Line 3466
    cvt.s.d	$f8,$f8
.L0db12ed4:
    # Line 3472
    move	$t0,$zero
    move	$a6,$zero
    # Line 3473
    move	$a4,$zero
    move	$a5,$zero
    # Line 3474
    mov.s	$f7,$f24
    # Line 3475
    mov.s	$f6,$f17
    # Line 3476
    beqz	$a3,.L0db1308c
    move	$t1,$a0
    # Line 3478
    subu	$a7,$a0,$s5
    addiu	$a7,$a7,1
.L0db12efc:
    # Line 3480
    c.eq.s	$f5,$f11
    nop
    bc1fl	.L0db12f74
    # Line 3491
    div.s	$f9,$f8,$f5
    # Line 3480
    c.lt.s	$f11,$f8
    nop
    bc1f	.L0db1306c
    nop
    # Line 3486
    b	.L0db12fa0
    mov.s	$f12,$f16
.L0db12f24:
    sd	$s5,64($sp)
    # Line 3285
    add.s	$f4,$f4,$f5
    sdc1	$f26,120($sp)
    sdc1	$f24,24($sp)
    b	.L0db12ce8
    swc1	$f4,192($s1)
.L0db12f3c:
    # Line 3416
    addu	$at,$s5,$a0
    mtc1	$at,$f13
    nop
    cvt.s.w	$f13,$f13
    # Line 3415
    add.s	$f14,$f6,$f7
    b	.L0db12d38
    # Line 3416
    sub.s	$f13,$f13,$f5
.L0db12f58:
    # Line 3439
    lwc1	$f24,3284($s2)
    add.s	$f24,$f24,$f7
    # Line 3441
    add.s	$f17,$f8,$f24
    # Line 3440
    neg.s	$f4,$f26
    # Line 3442
    mov.s	$f15,$f24
    b	.L0db12dac
    # Line 3441
    mov.s	$f12,$f17
.L0db12f74:
    # Line 3491
    c.lt.s	$f9,$f11
    nop
    bc1f	.L0db12f8c
    mov.s	$f12,$f9
    # Line 3493
    b	.L0db12fa0
    mov.s	$f12,$f11
.L0db12f8c:
    c.lt.s	$f16,$f9
    nop
    bc1f	.L0db12fa4
    # Line 3495
    c.eq.s	$f12,$f11
    mov.s	$f12,$f16
.L0db12fa0:
    c.eq.s	$f12,$f11
.L0db12fa4:
    nop
    bc1f	.L0db1302c
    lwc1	$f5,3284($s2)
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0db12fc8
    ldc1	$f26,120($sp)
    # Line 3501
    b	.L0db12fcc
    move	$a5,$s5
.L0db12fc8:
    # Line 3503
    move	$a4,$s5
.L0db12fcc:
    # Line 3594
    li	$v0,1
    ld	$gp,88($sp)
    ld	$ra,96($sp)
    # Line 3569
    lwc1	$f4,3392($s2)
    # Line 3594
    ldc1	$f24,24($sp)
    # Line 3569
    beqz	$a1,.L0db13098
    add.s	$f4,$f4,$f7
    # Line 3580
    swc1	$f4,268($s1)
    # Line 3581
    lwc1	$f0,3392($s2)
    add.s	$f0,$f0,$f6
    lwc1	$f1,3284($s2)
    sub.s	$f0,$f0,$f1
    swc1	$f0,272($s1)
.L0db13000:
    # Line 3594
    ld	$s5,64($sp)
    # Line 3592
    sw	$a7,288($s1)
    # Line 3591
    sw	$t1,284($s1)
    # Line 3590
    sw	$a4,232($s1)
    # Line 3589
    sw	$a5,228($s1)
    # Line 3588
    sw	$a6,280($s1)
    # Line 3587
    sw	$t0,276($s1)
    # Line 3594
    ld	$s1,80($sp)
    ld	$s2,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db1302c:
    # Line 3503
    c.eq.s	$f16,$f12
    sd	$a0,128($sp)
    bc1f	.L0db130b0
    sd	$a3,136($sp)
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0db13074
    ldc1	$f26,120($sp)
    # Line 3508
    b	.L0db12fcc
    move	$a4,$s5
.L0db13054:
    ld	$gp,88($sp)
    # Line 3280
    ld	$ra,96($sp)
    ld	$s1,80($sp)
    ld	$s2,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db1306c:
    b	.L0db12fa0
    # Line 3488
    mov.s	$f12,$f11
.L0db13074:
    b	.L0db12fcc
    # Line 3510
    move	$a5,$s5
.L0db1307c:
    # Line 3469
    sub.d	$f8,$f7,$f6
    # Line 3470
    add.s	$f5,$f26,$f9
    b	.L0db12ed4
    # Line 3469
    cvt.s.d	$f8,$f8
.L0db1308c:
    # Line 3480
    addu	$a7,$s5,$a0
    b	.L0db12efc
    addiu	$a7,$a7,-1
.L0db13098:
    # Line 3584
    sub.s	$f1,$f4,$f5
    swc1	$f1,268($s1)
    # Line 3585
    lwc1	$f0,3392($s2)
    add.s	$f0,$f0,$f6
    b	.L0db13000
    swc1	$f0,272($s1)
.L0db130b0:
    sd	$a1,160($sp)
    sd	$a6,32($sp)
    sd	$a7,40($sp)
    sd	$t0,48($sp)
    sd	$t1,56($sp)
    sdc1	$f4,112($sp)
    # Line 3514
    # lw $t9, -17740($gp) # &ceilf
    sdc1	$f5,0($sp)
    sdc1	$f6,8($sp)
    jal	ceilf
    sdc1	$f7,16($sp)
    trunc.w.s	$f2,$f0
    ldc1	$f5,112($sp)
    mfc1	$a5,$f2
    ld	$a4,128($sp)
    ld	$a0,136($sp)
    move	$a6,$a5
    # Line 3516
    subu	$t0,$s5,$a5
    slt	$at,$t0,$a5
    beqz	$at,.L0db13108
    move	$a7,$t0
    # Line 3518
    move	$a7,$a5
.L0db13108:
    addiu	$v0,$a6,-1
    mtc1	$v0,$f4
    nop
    cvt.s.w	$f4,$f4
    ldc1	$f0,0($sp)
    lwc1	$f6,3280($s2)
    c.lt.s	$f0,$f5
    sub.s	$f6,$f24,$f6
    lwc1	$f0,3388($s2)
    bc1f	.L0db131c8
    sub.s	$f6,$f6,$f0
    # Line 3528
    move	$a3,$t0
    # Line 3526
    subu	$a1,$a7,$t0
    # Line 3525
    subu	$v1,$a7,$a5
    sd	$v1,48($sp)
    sd	$a1,32($sp)
    # Line 3528
    beqz	$a0,.L0db1326c
    # Line 3527
    move	$a1,$a5
    sdc1	$f4,104($sp)
    # Line 3531
    subu	$a0,$a4,$a5
    addiu	$a0,$a0,1
.L0db1315c:
    # Line 3536
    mtc1	$a0,$f12
    nop
    cvt.s.w	$f12,$f12
    sd	$a3,152($sp)
    # lw $t9, -17792($gp) # &floorf
    sub.s	$f12,$f12,$f6
    sd	$a1,144($sp)
    ldc1	$f24,104($sp)
    jal	floorf
    div.s	$f12,$f12,$f26
    ldc1	$f7,16($sp)
    ldc1	$f6,8($sp)
    ldc1	$f5,0($sp)
    ldc1	$f26,120($sp)
    ld	$t1,56($sp)
    ld	$t0,48($sp)
    ld	$a7,40($sp)
    ld	$a6,32($sp)
    c.eq.s	$f0,$f24
    ld	$a5,144($sp)
    ld	$a4,152($sp)
    bc1f	.L0db12fcc
    ld	$a1,160($sp)
    beqz	$a6,.L0db13294
    nop
    # Line 3544
    b	.L0db12fcc
    addiu	$a6,$a6,-1
.L0db131c8:
    # Line 3553
    mtc1	$a5,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f26
    add.s	$f0,$f0,$f24
    # Line 3551
    move	$a3,$a5
    # Line 3552
    move	$a1,$t0
    sdc1	$f0,8($sp)
    # Line 3553
    beqz	$a0,.L0db1327c
    sdc1	$f0,16($sp)
    sdc1	$f4,104($sp)
    # Line 3555
    subu	$a2,$a4,$a6
    sd	$a2,56($sp)
    # Line 3556
    addiu	$a2,$a2,1
    sd	$a2,40($sp)
.L0db13204:
    sd	$a3,152($sp)
    ld	$a3,40($sp)
    # Line 3562
    mtc1	$a3,$f12
    nop
    cvt.s.w	$f12,$f12
    # lw $t9, -17792($gp) # &floorf
    sub.s	$f12,$f12,$f6
    sd	$a1,144($sp)
    ldc1	$f24,104($sp)
    jal	floorf
    div.s	$f12,$f12,$f26
    ldc1	$f7,16($sp)
    ldc1	$f6,8($sp)
    ldc1	$f5,0($sp)
    ldc1	$f26,120($sp)
    ld	$t1,56($sp)
    ld	$t0,48($sp)
    ld	$a7,40($sp)
    ld	$a6,32($sp)
    c.eq.s	$f0,$f24
    ld	$a5,144($sp)
    ld	$a4,152($sp)
    bc1f	.L0db12fcc
    ld	$a1,160($sp)
    b	.L0db12fcc
    # Line 3569
    li	$t0,1
.L0db1326c:
    sdc1	$f4,104($sp)
    # Line 3533
    addu	$a0,$a5,$a4
    b	.L0db1315c
    addiu	$a0,$a0,-1
.L0db1327c:
    sdc1	$f4,104($sp)
    # Line 3558
    addu	$a2,$a4,$a6
    sd	$a2,56($sp)
    # Line 3559
    addiu	$a2,$a2,-1
    b	.L0db13204
    sd	$a2,40($sp)
.L0db13294:
    b	.L0db12fcc
    # Line 3546
    addiu	$t0,$t0,1
.end __glClipCopyPixels

# Function: __glInitCopyPixelsInfo
# Declared: Line 3597 (Source lines: 3600-3673)
# Address: 0x0db1329c - 0x0db13460 (Size: 452 bytes, Frame: 0)
.globl __glInitCopyPixelsInfo
.ent __glInitCopyPixelsInfo
__glInitCopyPixelsInfo:
    # Line 3606
    lwc1	$f1,352($a0)
    # Line 3600
    lui	$v1,0xf
    addiu	$v1,$v1,-19460
    # Line 3606
    trunc.l.s	$f1,$f1
    # Line 3600
    addu	$at,$t9,$v1
    # Line 3604
    lwc1	$f0,344($a0)
    # Line 3605
    lwc1	$f6,348($a0)
    # Line 3606
    dmfc1	$v0,$f1
    # Line 3608
    swc1	$f0,196($a1)
    # Line 3609
    swc1	$f6,200($a1)
    # Line 3606
    sw	$v0,248($a1)
    # Line 3610
    mtc1	$zero,$f7
    lwc1	$f5,720($a0)
    c.lt.s	$f7,$f5
    nop
    bc1f	.L0db13300
    li	$t2,1
    lwc1	$f4,3284($a0)
    c.lt.s	$f5,$f4
    nop
    bc1fl	.L0db132f8
    # Line 3615
    swc1	$f5,244($a1)
    # Line 3613
    swc1	$f4,244($a1)
.L0db132f8:
    # Line 3617
    b	.L0db1331c
    sw	$t2,240($a1)
.L0db13300:
    lwc1	$f4,_lit_bf800000
    c.lt.s	$f4,$f5
    # Line 3624
    li	$a7,-1
    # Line 3617
    bc1fl	.L0db13318
    # Line 3622
    swc1	$f5,244($a1)
    # Line 3620
    swc1	$f4,244($a1)
.L0db13318:
    # Line 3624
    sw	$a7,240($a1)
.L0db1331c:
    # Line 3626
    swc1	$f5,160($a1)
    # Line 3627
    lbu	$t0,4552($a0)
    beqz	$t0,.L0db13440
    lwc1	$f4,724($a0)
    # Line 3629
    neg.s	$f4,$f4
.L0db13330:
    # Line 3631
    c.lt.s	$f7,$f4
    nop
    bc1f	.L0db13348
    # Line 3636
    li	$v0,-1
    # Line 3634
    b	.L0db1334c
    sw	$t2,236($a1)
.L0db13348:
    # Line 3636
    sw	$v0,236($a1)
.L0db1334c:
    # Line 3638
    swc1	$f4,164($a1)
    # Line 3639
    lw	$a7,3372($a0)
    addu	$a7,$a7,$a2
    mtc1	$a7,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,188($a1)
    lbu	$v1,4552($a0)
    beqz	$v1,.L0db13428
    lw	$t1,3376($a0)
    # Line 3641
    lw	$t0,3416($a0)
    subu	$t0,$t0,$a3
    addu	$t0,$t0,$t1
    addiu	$t0,$t0,-1
    mtc1	$t0,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,192($a1)
.L0db13394:
    # Line 3658
    sb	$zero,72($a1)
    # Line 3657
    sw	$zero,8($a1)
    # Line 3656
    sw	$zero,40($a1)
    # Line 3648
    sw	$a5,172($a1)
    # Line 3647
    sw	$a4,168($a1)
    sw	$a4,180($a1)
    sw	$a4,184($a1)
    # Line 3646
    sw	$a6,80($a1)
    sw	$a6,0($a1)
    # Line 3654
    li	$t1,5126
    # Line 3658
    li	$v0,6401
    # Line 3655
    li	$a3,4
    sw	$a3,36($a1)
    # Line 3658
    beq	$a6,$v0,.L0db13458
    # Line 3654
    sw	$t1,4($a1)
    # Line 3659
    li	$v1,6402
    beq	$a6,$v1,.L0db133ec
    li	$a2,6402
    lbu	$a7,3104($a0)
    beqz	$a7,.L0db13450
    li	$a0,6408
.L0db133e8:
    move	$a2,$a0
.L0db133ec:
    move	$a0,$a2
.L0db133f0:
    # Line 3672
    li	$t0,2
    # Line 3671
    sb	$zero,430($a1)
    # Line 3670
    sb	$zero,429($a1)
    # Line 3669
    sb	$t2,428($a1)
    # Line 3668
    sb	$zero,427($a1)
    # Line 3667
    sb	$t2,425($a1)
    # Line 3666
    sb	$zero,424($a1)
    # Line 3665
    sw	$zero,88($a1)
    # Line 3664
    sw	$zero,120($a1)
    # Line 3663
    sw	$a3,116($a1)
    # Line 3662
    sw	$t1,84($a1)
    # Line 3659
    sw	$a0,0($a1)
    # Line 3673
    jr	$ra
    # Line 3672
    sw	$t0,432($a1)
.L0db13428:
    # Line 3644
    addu	$v0,$t1,$a3
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    b	.L0db13394
    swc1	$f0,192($a1)
.L0db13440:
    # Line 3631
    lwc1	$f1,3388($a0)
    add.s	$f1,$f1,$f6
    b	.L0db13330
    swc1	$f1,200($a1)
.L0db13450:
    b	.L0db133e8
    # Line 3659
    li	$a0,6400
.L0db13458:
    b	.L0db133f0
    li	$a0,6401
.end __glInitCopyPixelsInfo

# Function: __glCopyPixelSpans
# Declared: Line 3679 (Source lines: 3680-3749)
# Address: 0x0db13460 - 0x0db136d4 (Size: 628 bytes, Frame: 0)
.globl __glCopyPixelSpans
.ent __glCopyPixelSpans
__glCopyPixelSpans:
    # Line 3680
    move	$a3,$s8
    addiu	$sp,$sp,-208
    addiu	$s8,$sp,208
    sd	$ra,-96($s8)
    lui	$v1,0xf
    addiu	$v1,$v1,-19912
    sd	$gp,-120($s8)
    addu	$gp,$t9,$v1
    sd	$s4,-88($s8)
    move	$s4,$a0
    # Line 3687
    lw	$at,30700($s4)
    sd	$s1,-112($s8)
    # Line 3680
    move	$s1,$a1
    # Line 3685
    lw	$a2,352($s1)
    # Line 3707
    # lw $t9, -28892($gp) # &__glComputeSpanPixelArray
    sd	$at,-72($s8)
    sd	$a2,-80($s8)
    # Line 3698
    lw	$a2,168($s1)
    sd	$a3,-104($s8)
    li	$a3,-16
    # Line 3702
    addu	$v0,$a2,$a2
    addiu	$v0,$v0,15
    and	$v0,$v0,$a3
    # Line 3698
    sll	$a2,$a2,0x4
    addiu	$a2,$a2,15
    and	$a2,$a2,$a3
    subu	$sp,$sp,$a2
    # Line 3701
    move	$a3,$sp
    sd	$sp,-64($s8)
    subu	$sp,$sp,$a2
    # Line 3702
    move	$v1,$sp
    sd	$sp,-40($s8)
    subu	$sp,$sp,$v0
    # Line 3707
    bal __glComputeSpanPixelArray
    # Line 3706
    sw	$sp,312($s1)
    # Line 3707
    lbu	$a4,224($s1)
    beqzl	$a4,.L0db1352c
    sdc1	$f24,-128($s8)
    # Line 3710
    # lw $t9, -28788($gp) # &__glCopyPixelsOverlapping
    move	$a0,$s4
    move	$a1,$s1
    bal __glCopyPixelsOverlapping
    ld	$a2,-80($s8)
    ld	$gp,-120($s8)
    # Line 3711
    ld	$s1,-112($s8)
    ld	$s4,-88($s8)
    ld	$ra,-96($s8)
    ld	$at,-104($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0db1352c:
    # Line 3720
    lwc1	$f24,200($s1)
    sdc1	$f28,-136($s8)
    # Line 3718
    lwc1	$f28,164($s1)
    # Line 3717
    lw	$a0,4556($s4)
    sd	$s6,-152($s8)
    # Line 3723
    move	$s6,$zero
    # Line 3715
    lw	$v1,412($s1)
    sd	$s2,-144($s8)
    # Line 3721
    lw	$s2,172($s1)
    # Line 3714
    lw	$v0,356($s1)
    sd	$v1,-48($s8)
    # Line 3723
    blez	$s2,.L0db136a4
    sd	$v0,-56($s8)
    sd	$s5,-176($s8)
    sd	$s3,-168($s8)
    sd	$s0,-160($s8)
    sdc1	$f30,-200($s8)
    mtc1	$a0,$f30
    trunc.w.s	$f0,$f24
    ld	$a4,-80($s8)
    sd	$s7,-192($s8)
    cvt.s.w	$f30,$f30
    sll	$a4,$a4,0x2
    mfc1	$s7,$f0
    b	.L0db13630
    sd	$a4,-32($s8)
.L0db13594:
    sd	$s2,-184($s8)
.L0db13598:
    # Line 3735
    ld	$t9,-56($s8)
    move	$a0,$s4
    move	$a1,$s1
    jal	__glCopyPixelsOverlapping
    ld	$a2,-64($s8)
    ld	$s0,-64($s8)
    # Line 3736
    ld	$at,-80($s8)
    ld	$s3,-40($s8)
    blez	$at,.L0db135fc
    ld	$s2,-184($s8)
    ld	$s5,-32($s8)
    move	$s2,$s1
    addu	$s5,$s5,$s1
.L0db135cc:
    # Line 3738
    move	$a0,$s4
    lw	$t9,360($s2)
    move	$a1,$s1
    move	$a2,$s0
    jalr	$t9
    move	$a3,$s3
    # Line 3737
    addiu	$s2,$s2,4
    # Line 3739
    move	$at,$s0
    # Line 3740
    move	$s0,$s3
    # Line 3737
    bne	$s2,$s5,.L0db135cc
    # Line 3741
    move	$s3,$at
    ld	$s2,-184($s8)
.L0db135fc:
    # Line 3743
    ld	$t9,-48($s8)
    move	$a0,$s4
    move	$a1,$s1
    jalr	$t9
    move	$a2,$s0
    # Line 3723
    addiu	$s6,$s6,1
    # Line 3745
    lwc1	$f1,192($s1)
    add.s	$f1,$f1,$f30
    # Line 3723
    slt	$v0,$s6,$s2
    # Line 3747
    ld	$v1,-72($s8)
    # Line 3745
    swc1	$f1,192($s1)
    # Line 3723
    beqz	$v0,.L0db13690
    # Line 3747
    sw	$v1,30700($s4)
.L0db13630:
    # Line 3724
    swc1	$f24,200($s1)
    # Line 3725
    add.s	$f24,$f28,$f24
    trunc.w.s	$f2,$f24
    # Line 3723
    move	$a0,$s7
    # Line 3725
    mfc1	$s7,$f2
    nop
    bne	$s7,$a0,.L0db13594
    slt	$a4,$s6,$s2
    beqzl	$a4,.L0db13598
    sd	$s2,-184($s8)
    # Line 3726
    lwc1	$f4,192($s1)
    # Line 3728
    swc1	$f24,200($s1)
.L0db13660:
    # Line 3729
    add.s	$f24,$f28,$f24
    # Line 3730
    trunc.w.s	$f3,$f24
    # Line 3727
    add.s	$f4,$f4,$f30
    # Line 3730
    mfc1	$s7,$f3
    addiu	$s6,$s6,1
    slt	$at,$s6,$s2
    bne	$s7,$a0,.L0db13594
    # Line 3727
    swc1	$f4,192($s1)
    # Line 3730
    bnezl	$at,.L0db13660
    # Line 3728
    swc1	$f24,200($s1)
    b	.L0db13594
    nop
.L0db13690:
    ldc1	$f30,-200($s8)
    ld	$s0,-160($s8)
    ld	$s3,-168($s8)
    ld	$s7,-192($s8)
    ld	$s5,-176($s8)
.L0db136a4:
    ld	$gp,-120($s8)
    # Line 3749
    ld	$s1,-112($s8)
    ld	$s2,-144($s8)
    ld	$s4,-88($s8)
    ld	$s6,-152($s8)
    ldc1	$f24,-128($s8)
    ldc1	$f28,-136($s8)
    ld	$ra,-96($s8)
    ld	$v0,-104($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.end __glCopyPixelSpans

# Function: __glCopyPixels2
# Declared: Line 3755 (Source lines: 3756-3818)
# Address: 0x0db136d4 - 0x0db1391c (Size: 584 bytes, Frame: 0)
.globl __glCopyPixels2
.ent __glCopyPixels2
__glCopyPixels2:
    # Line 3756
    move	$a2,$s8
    addiu	$sp,$sp,-176
    addiu	$s8,$sp,176
    sd	$a2,-104($s8)
    sd	$ra,-80($s8)
    sd	$s7,-64($s8)
    sd	$s6,-88($s8)
    sd	$s4,-72($s8)
    move	$s4,$a0
    # Line 3761
    lw	$s7,30700($s4)
    sd	$s5,-96($s8)
    # Line 3756
    lui	$v1,0xf
    addiu	$v1,$v1,-20540
    sd	$gp,-112($s8)
    addu	$gp,$t9,$v1
    sd	$s1,-120($s8)
    move	$s1,$a1
    # Line 3773
    lw	$v0,168($s1)
    # Line 3782
    # lw $t9, -28892($gp) # &__glComputeSpanPixelArray
    # Line 3773
    li	$v1,-16
    # Line 3777
    addu	$at,$v0,$v0
    addiu	$at,$at,15
    and	$at,$at,$v1
    # Line 3773
    sll	$v0,$v0,0x4
    addiu	$v0,$v0,15
    and	$v0,$v0,$v1
    subu	$sp,$sp,$v0
    # Line 3776
    move	$s5,$sp
    subu	$sp,$sp,$v0
    # Line 3777
    move	$s6,$sp
    subu	$sp,$sp,$at
    # Line 3782
    bal __glComputeSpanPixelArray
    # Line 3781
    sw	$sp,312($s1)
    # Line 3782
    lbu	$a4,224($s1)
    beqzl	$a4,.L0db137a4
    sdc1	$f24,-128($s8)
    # Line 3785
    # lw $t9, -28788($gp) # &__glCopyPixelsOverlapping
    move	$a0,$s4
    move	$a1,$s1
    bal __glCopyPixelsOverlapping
    li	$a2,2
    ld	$gp,-112($s8)
    # Line 3786
    ld	$s1,-120($s8)
    ld	$s4,-72($s8)
    ld	$s5,-96($s8)
    ld	$s6,-88($s8)
    ld	$s7,-64($s8)
    ld	$ra,-80($s8)
    ld	$at,-104($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0db137a4:
    # Line 3797
    lwc1	$f24,200($s1)
    sdc1	$f28,-136($s8)
    # Line 3795
    lwc1	$f28,164($s1)
    # Line 3794
    lw	$a0,4556($s4)
    sd	$s3,-144($s8)
    # Line 3798
    lw	$s3,172($s1)
    sd	$s0,-152($s8)
    # Line 3792
    lw	$s0,412($s1)
    # Line 3791
    lw	$a4,364($s1)
    # Line 3790
    lw	$v1,360($s1)
    # Line 3789
    lw	$v0,356($s1)
    sd	$a4,-48($s8)
    sd	$v1,-56($s8)
    sd	$v0,-32($s8)
    sd	$s0,-40($s8)
    # Line 3799
    blez	$s3,.L0db138e0
    move	$s0,$zero
    trunc.w.s	$f0,$f24
    sd	$s2,-160($s8)
    sdc1	$f30,-168($s8)
    mtc1	$a0,$f30
    mfc1	$s2,$f0
    b	.L0db13878
    cvt.s.w	$f30,$f30
.L0db13804:
    # Line 3810
    ld	$t9,-32($s8)
.L0db13808:
    move	$a0,$s4
    move	$a1,$s1
    jal	__glCopyPixelsOverlapping
    move	$a2,$s5
    # Line 3811
    move	$a0,$s4
    ld	$t9,-56($s8)
    move	$a1,$s1
    move	$a2,$s5
    jalr	$t9
    move	$a3,$s6
    # Line 3812
    move	$a0,$s4
    ld	$t9,-48($s8)
    move	$a1,$s1
    move	$a2,$s6
    jalr	$t9
    move	$a3,$s5
    # Line 3813
    ld	$t9,-40($s8)
    move	$a0,$s4
    move	$a1,$s1
    jalr	$t9
    move	$a2,$s5
    # Line 3799
    addiu	$s0,$s0,1
    # Line 3814
    lwc1	$f1,192($s1)
    add.s	$f1,$f1,$f30
    # Line 3799
    slt	$at,$s0,$s3
    # Line 3814
    swc1	$f1,192($s1)
    # Line 3799
    beqz	$at,.L0db138d8
    # Line 3816
    sw	$s7,30700($s4)
.L0db13878:
    # Line 3800
    swc1	$f24,200($s1)
    # Line 3801
    add.s	$f24,$f28,$f24
    trunc.w.s	$f2,$f24
    # Line 3799
    move	$a0,$s2
    # Line 3801
    mfc1	$s2,$f2
    nop
    bne	$s2,$a0,.L0db13804
    slt	$v0,$s0,$s3
    beqz	$v0,.L0db13808
    # Line 3810
    ld	$t9,-32($s8)
    # Line 3802
    lwc1	$f4,192($s1)
    # Line 3804
    swc1	$f24,200($s1)
.L0db138a8:
    # Line 3805
    add.s	$f24,$f28,$f24
    # Line 3806
    trunc.w.s	$f3,$f24
    # Line 3803
    add.s	$f4,$f4,$f30
    # Line 3806
    mfc1	$s2,$f3
    addiu	$s0,$s0,1
    slt	$v1,$s0,$s3
    bne	$s2,$a0,.L0db13804
    # Line 3803
    swc1	$f4,192($s1)
    # Line 3806
    bnezl	$v1,.L0db138a8
    # Line 3804
    swc1	$f24,200($s1)
    b	.L0db13804
    nop
.L0db138d8:
    ldc1	$f30,-168($s8)
    ld	$s2,-160($s8)
.L0db138e0:
    ld	$gp,-112($s8)
    # Line 3818
    ld	$s0,-152($s8)
    ld	$s1,-120($s8)
    ld	$s3,-144($s8)
    ld	$s4,-72($s8)
    ld	$s5,-96($s8)
    ld	$s6,-88($s8)
    ld	$s7,-64($s8)
    ldc1	$f24,-128($s8)
    ldc1	$f28,-136($s8)
    ld	$ra,-80($s8)
    ld	$a0,-104($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a0
.end __glCopyPixels2

# Function: __glCopyPixels1
# Declared: Line 3823 (Source lines: 3824-3882)
# Address: 0x0db1391c - 0x0db13b44 (Size: 552 bytes, Frame: 0)
.globl __glCopyPixels1
.ent __glCopyPixels1
__glCopyPixels1:
    # Line 3824
    move	$a2,$s8
    addiu	$sp,$sp,-160
    addiu	$s8,$sp,160
    sd	$a2,-96($s8)
    sd	$ra,-72($s8)
    sd	$s7,-56($s8)
    sd	$s6,-80($s8)
    sd	$s4,-64($s8)
    move	$s4,$a0
    # Line 3829
    lw	$s7,30700($s4)
    sd	$s5,-88($s8)
    # Line 3824
    lui	$v1,0xf
    addiu	$v1,$v1,-21124
    sd	$gp,-104($s8)
    addu	$gp,$t9,$v1
    sd	$s1,-112($s8)
    move	$s1,$a1
    # Line 3839
    lw	$v0,168($s1)
    # Line 3848
    # lw $t9, -28892($gp) # &__glComputeSpanPixelArray
    # Line 3839
    li	$v1,-16
    # Line 3843
    addu	$at,$v0,$v0
    addiu	$at,$at,15
    and	$at,$at,$v1
    # Line 3839
    sll	$v0,$v0,0x4
    addiu	$v0,$v0,15
    and	$v0,$v0,$v1
    subu	$sp,$sp,$v0
    # Line 3842
    move	$s5,$sp
    subu	$sp,$sp,$v0
    # Line 3843
    move	$s6,$sp
    subu	$sp,$sp,$at
    # Line 3848
    bal __glComputeSpanPixelArray
    # Line 3847
    sw	$sp,312($s1)
    # Line 3848
    lbu	$a4,224($s1)
    beqzl	$a4,.L0db139ec
    sdc1	$f24,-120($s8)
    # Line 3851
    # lw $t9, -28788($gp) # &__glCopyPixelsOverlapping
    move	$a0,$s4
    move	$a1,$s1
    bal __glCopyPixelsOverlapping
    li	$a2,1
    ld	$gp,-104($s8)
    # Line 3852
    ld	$s1,-112($s8)
    ld	$s4,-64($s8)
    ld	$s5,-88($s8)
    ld	$s6,-80($s8)
    ld	$s7,-56($s8)
    ld	$ra,-72($s8)
    ld	$at,-96($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0db139ec:
    # Line 3862
    lwc1	$f24,200($s1)
    sdc1	$f28,-128($s8)
    # Line 3860
    lwc1	$f28,164($s1)
    # Line 3859
    lw	$a0,4556($s4)
    sd	$s0,-144($s8)
    # Line 3864
    move	$s0,$zero
    # Line 3855
    lw	$v0,356($s1)
    # Line 3856
    lw	$v1,360($s1)
    # Line 3857
    lw	$a4,412($s1)
    sd	$s3,-136($s8)
    # Line 3863
    lw	$s3,172($s1)
    sd	$a4,-40($s8)
    sd	$v1,-48($s8)
    # Line 3864
    blez	$s3,.L0db13b08
    sd	$v0,-32($s8)
    trunc.w.s	$f0,$f24
    sd	$s2,-152($s8)
    sdc1	$f30,-160($s8)
    mtc1	$a0,$f30
    mfc1	$s2,$f0
    b	.L0db13aa0
    cvt.s.w	$f30,$f30
.L0db13a44:
    # Line 3875
    ld	$t9,-32($s8)
.L0db13a48:
    move	$a0,$s4
    move	$a1,$s1
    jal	__glCopyPixelsOverlapping
    move	$a2,$s5
    # Line 3876
    move	$a0,$s4
    ld	$t9,-48($s8)
    move	$a1,$s1
    move	$a2,$s5
    jalr	$t9
    move	$a3,$s6
    # Line 3877
    ld	$t9,-40($s8)
    move	$a0,$s4
    move	$a1,$s1
    jalr	$t9
    move	$a2,$s6
    # Line 3864
    addiu	$s0,$s0,1
    # Line 3878
    lwc1	$f1,192($s1)
    add.s	$f1,$f1,$f30
    # Line 3864
    slt	$at,$s0,$s3
    # Line 3878
    swc1	$f1,192($s1)
    # Line 3864
    beqz	$at,.L0db13b00
    # Line 3880
    sw	$s7,30700($s4)
.L0db13aa0:
    # Line 3865
    swc1	$f24,200($s1)
    # Line 3866
    add.s	$f24,$f28,$f24
    trunc.w.s	$f2,$f24
    # Line 3864
    move	$a0,$s2
    # Line 3866
    mfc1	$s2,$f2
    nop
    bne	$s2,$a0,.L0db13a44
    slt	$v0,$s0,$s3
    beqz	$v0,.L0db13a48
    # Line 3875
    ld	$t9,-32($s8)
    # Line 3867
    lwc1	$f4,192($s1)
    # Line 3869
    swc1	$f24,200($s1)
.L0db13ad0:
    # Line 3870
    add.s	$f24,$f28,$f24
    # Line 3871
    trunc.w.s	$f3,$f24
    # Line 3868
    add.s	$f4,$f4,$f30
    # Line 3871
    mfc1	$s2,$f3
    addiu	$s0,$s0,1
    slt	$v1,$s0,$s3
    bne	$s2,$a0,.L0db13a44
    # Line 3868
    swc1	$f4,192($s1)
    # Line 3871
    bnezl	$v1,.L0db13ad0
    # Line 3869
    swc1	$f24,200($s1)
    b	.L0db13a44
    nop
.L0db13b00:
    ldc1	$f30,-160($s8)
    ld	$s2,-152($s8)
.L0db13b08:
    ld	$gp,-104($s8)
    # Line 3882
    ld	$s0,-144($s8)
    ld	$s1,-112($s8)
    ld	$s3,-136($s8)
    ld	$s4,-64($s8)
    ld	$s5,-88($s8)
    ld	$s6,-80($s8)
    ld	$s7,-56($s8)
    ldc1	$f24,-120($s8)
    ldc1	$f28,-128($s8)
    ld	$ra,-72($s8)
    ld	$a0,-96($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a0
.end __glCopyPixels1

# Function: __glCopyPixels0
# Declared: Line 3887 (Source lines: 3888-3937)
# Address: 0x0db13b44 - 0x0db13d28 (Size: 484 bytes, Frame: 0)
.globl __glCopyPixels0
.ent __glCopyPixels0
__glCopyPixels0:
    # Line 3888
    move	$a2,$s8
    addiu	$sp,$sp,-144
    addiu	$s8,$sp,144
    sd	$a2,-64($s8)
    sd	$s4,-48($s8)
    move	$s4,$a0
    sd	$ra,-40($s8)
    sd	$s5,-72($s8)
    lui	$v1,0xf
    addiu	$v1,$v1,-21676
    sd	$gp,-56($s8)
    addu	$gp,$t9,$v1
    sd	$s1,-80($s8)
    move	$s1,$a1
    # Line 3900
    lw	$v0,168($s1)
    li	$v1,-16
    # Line 3907
    # lw $t9, -28892($gp) # &__glComputeSpanPixelArray
    # Line 3903
    addu	$at,$v0,$v0
    addiu	$at,$at,15
    and	$at,$at,$v1
    # Line 3900
    sll	$v0,$v0,0x4
    addiu	$v0,$v0,15
    and	$v0,$v0,$v1
    subu	$sp,$sp,$v0
    # Line 3903
    move	$s5,$sp
    subu	$sp,$sp,$at
    # Line 3907
    bal __glComputeSpanPixelArray
    # Line 3906
    sw	$sp,312($s1)
    # Line 3907
    lbu	$a3,224($s1)
    beqzl	$a3,.L0db13bf8
    sdc1	$f24,-88($s8)
    # Line 3910
    # lw $t9, -28788($gp) # &__glCopyPixelsOverlapping
    move	$a0,$s4
    move	$a1,$s1
    bal __glCopyPixelsOverlapping
    move	$a2,$zero
    ld	$gp,-56($s8)
    # Line 3911
    ld	$s1,-80($s8)
    ld	$s4,-48($s8)
    ld	$s5,-72($s8)
    ld	$ra,-40($s8)
    ld	$at,-64($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0db13bf8:
    # Line 3920
    lwc1	$f24,200($s1)
    sdc1	$f28,-96($s8)
    # Line 3918
    lwc1	$f28,164($s1)
    # Line 3917
    lw	$a0,4556($s4)
    sd	$s6,-120($s8)
    # Line 3914
    lw	$s6,356($s1)
    sd	$s0,-112($s8)
    sd	$s3,-104($s8)
    # Line 3921
    lw	$s3,172($s1)
    # Line 3915
    lw	$v0,412($s1)
    # Line 3922
    move	$s0,$zero
    blez	$s3,.L0db13cf0
    sd	$v0,-32($s8)
    trunc.w.s	$f0,$f24
    sd	$s2,-128($s8)
    sdc1	$f30,-136($s8)
    mtc1	$a0,$f30
    mfc1	$s2,$f0
    b	.L0db13c88
    cvt.s.w	$f30,$f30
.L0db13c48:
    # Line 3933
    move	$a0,$s4
.L0db13c4c:
    move	$a1,$s1
    move	$a2,$s5
    jalr	$s6
    move	$t9,$s6
    # Line 3934
    ld	$t9,-32($s8)
    move	$a0,$s4
    move	$a1,$s1
    jal	__glCopyPixelsOverlapping
    move	$a2,$s5
    # Line 3922
    addiu	$s0,$s0,1
    # Line 3935
    lwc1	$f1,192($s1)
    add.s	$f1,$f1,$f30
    # Line 3922
    slt	$v1,$s0,$s3
    beqz	$v1,.L0db13ce8
    # Line 3935
    swc1	$f1,192($s1)
.L0db13c88:
    # Line 3923
    swc1	$f24,200($s1)
    # Line 3924
    add.s	$f24,$f28,$f24
    trunc.w.s	$f2,$f24
    # Line 3922
    move	$a0,$s2
    # Line 3924
    mfc1	$s2,$f2
    nop
    bne	$s2,$a0,.L0db13c48
    slt	$a3,$s0,$s3
    beqzl	$a3,.L0db13c4c
    # Line 3933
    move	$a0,$s4
    # Line 3925
    lwc1	$f4,192($s1)
    # Line 3927
    swc1	$f24,200($s1)
.L0db13cb8:
    # Line 3928
    add.s	$f24,$f28,$f24
    # Line 3929
    trunc.w.s	$f3,$f24
    # Line 3926
    add.s	$f4,$f4,$f30
    # Line 3929
    mfc1	$s2,$f3
    addiu	$s0,$s0,1
    slt	$at,$s0,$s3
    bne	$s2,$a0,.L0db13c48
    # Line 3926
    swc1	$f4,192($s1)
    # Line 3929
    bnezl	$at,.L0db13cb8
    # Line 3927
    swc1	$f24,200($s1)
    b	.L0db13c48
    nop
.L0db13ce8:
    ldc1	$f30,-136($s8)
    ld	$s2,-128($s8)
.L0db13cf0:
    ld	$gp,-56($s8)
    # Line 3937
    ld	$s0,-112($s8)
    ld	$s1,-80($s8)
    ld	$s3,-104($s8)
    ld	$s4,-48($s8)
    ld	$s5,-72($s8)
    ld	$s6,-120($s8)
    ldc1	$f24,-88($s8)
    ldc1	$f28,-96($s8)
    ld	$ra,-40($s8)
    ld	$v0,-64($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.end __glCopyPixels0

# Function: __glCopyPixelsOverlapping
# Declared: Line 3952 (Source lines: 3954-4207)
# Address: 0x0db13d28 - 0x0db1469c (Size: 2420 bytes, Frame: 0)
.globl __glCopyPixelsOverlapping
.ent __glCopyPixelsOverlapping
__glCopyPixelsOverlapping:
    # Line 3984
    andi	$at,$a2,0x1
    # Line 3954
    move	$a4,$s8
    addiu	$sp,$sp,-768
    addiu	$s8,$sp,768
    sd	$a4,-656($s8)
    sd	$s5,-672($s8)
    move	$s5,$a2
    sd	$s3,-632($s8)
    # Line 3984
    lw	$a3,412($a1)
    sd	$s4,-624($s8)
    sd	$s7,-640($s8)
    # Line 3954
    move	$s7,$a1
    # Line 3983
    lw	$a1,356($a1)
    sd	$s2,-648($s8)
    # Line 3954
    move	$s2,$a0
    # Line 3959
    lw	$a0,30700($a0)
    sd	$a3,-552($s8)
    sd	$a1,-616($s8)
    sd	$a0,-704($s8)
    # Line 3954
    lui	$v1,0xf
    addiu	$v1,$v1,-22160
    sd	$gp,-664($s8)
    # Line 3976
    lw	$v0,168($s7)
    # Line 3954
    addu	$gp,$t9,$v1
    # Line 3976
    li	$v1,-16
    sll	$v0,$v0,0x4
    addiu	$v0,$v0,15
    and	$v0,$v0,$v1
    subu	$sp,$sp,$v0
    # Line 3979
    move	$v1,$sp
    sd	$sp,-592($s8)
    subu	$sp,$sp,$v0
    # Line 3980
    move	$s4,$sp
    subu	$sp,$sp,$v0
    # Line 3981
    move	$a3,$sp
    # Line 3984
    beqz	$at,.L0db145e8
    # Line 3981
    move	$s3,$sp
    sd	$s6,-760($s8)
    sdc1	$f24,-712($s8)
    sdc1	$f28,-720($s8)
    sdc1	$f30,-728($s8)
    # Line 3987
    move	$v0,$a3
    sd	$a3,-576($s8)
    move	$at,$a3
    sd	$a3,-584($s8)
.L0db13ddc:
    # Line 4002
    li	$a1,125
    move	$a0,$zero
    move	$a6,$s7
    # Line 4001
    lw	$a5,288($s7)
    # Line 4000
    lw	$a3,284($s7)
    # Line 3999
    lwc1	$f28,272($s7)
    # Line 3998
    lwc1	$f30,268($s7)
    # Line 3993
    lwc1	$f24,164($s7)
    # Line 3995
    lw	$a4,232($s7)
    # Line 3996
    lw	$a7,276($s7)
    # Line 3994
    lw	$v1,228($s7)
    sd	$a4,-600($s8)
    # Line 3997
    lw	$s6,280($s7)
    sd	$v1,-608($s8)
    sd	$a7,-696($s8)
    sd	$s6,-680($s8)
    # Line 3990
    addiu	$s6,$s8,-544
    # Line 4002
    move	$a7,$s6
.L0db13e24:
    addu	$v0,$a0,$a7
    addu	$at,$a0,$a6
    addiu	$a0,$a0,4
    lw	$at,0($at)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0db13e24
    sw	$at,0($v0)
    # Line 4008
    mtc1	$a5,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 4007
    mtc1	$a3,$f3
    # Line 4010
    ld	$a1,-608($s8)
    # Line 4007
    cvt.s.w	$f3,$f3
    # Line 4010
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    trunc.w.s	$f5,$f28
    ld	$a0,-600($s8)
    trunc.w.s	$f4,$f30
    mtc1	$a0,$f0
    sd	$zero,-568($s8)
    sd	$zero,-560($s8)
    cvt.s.w	$f0,$f0
    mfc1	$a1,$f4
    mtc1	$zero,$f4
    mul.s	$f1,$f1,$f24
    # Line 4003
    lw	$v1,236($s7)
    # Line 4010
    c.lt.s	$f4,$f24
    mul.s	$f0,$f0,$f24
    # Line 4003
    negu	$v1,$v1
    # Line 4004
    neg.s	$f4,$f24
    # Line 4003
    sw	$v1,-308($s8)
    # Line 4004
    swc1	$f4,-380($s8)
    # Line 4010
    add.s	$f1,$f1,$f30
    # Line 4005
    swc1	$f30,200($s7)
    # Line 4006
    swc1	$f28,-344($s8)
    # Line 4010
    sub.s	$f0,$f28,$f0
    # Line 4007
    swc1	$f3,192($s7)
    # Line 4008
    swc1	$f2,-352($s8)
    # Line 4010
    trunc.w.s	$f1,$f1
    mfc1	$a0,$f5
    lw	$t2,220($s7)
    trunc.w.s	$f0,$f0
    lw	$t3,208($s7)
    lw	$v0,4556($s2)
    mfc1	$t0,$f1
    mfc1	$t1,$f0
    bc1f	.L0db13f68
    sd	$v0,-688($s8)
    # Line 4014
    move	$a7,$t3
    # Line 4018
    move	$a5,$a0
    # Line 4019
    addiu	$t8,$t1,1
    # Line 4015
    addu	$a6,$t3,$t2
    addiu	$a6,$a6,-1
    # Line 4019
    slt	$a4,$a6,$a0
    beqz	$a4,.L0db13f0c
    move	$a3,$t8
    # Line 4020
    move	$a5,$a6
.L0db13f0c:
    slt	$at,$t8,$a7
    beqzl	$at,.L0db13f20
    # Line 4022
    sw	$a5,-336($s8)
    # Line 4021
    move	$a3,$a7
    # Line 4022
    sw	$a5,-336($s8)
.L0db13f20:
    # Line 4023
    subu	$v0,$a5,$a3
    # Line 4026
    move	$a5,$a1
    # Line 4027
    slt	$v1,$a1,$a7
    addiu	$a0,$t0,-1
    move	$a3,$a0
    # Line 4023
    addiu	$v0,$v0,1
    # Line 4027
    beqz	$v1,.L0db13f44
    # Line 4023
    sw	$v0,-324($s8)
    # Line 4028
    move	$a5,$a7
.L0db13f44:
    slt	$v1,$a6,$a0
    beqzl	$v1,.L0db13f58
    # Line 4030
    sw	$a5,208($s7)
    # Line 4029
    move	$a3,$a6
    # Line 4030
    sw	$a5,208($s7)
.L0db13f58:
    # Line 4031
    subu	$a4,$a3,$a5
    addiu	$a4,$a4,1
    b	.L0db13fe4
    sw	$a4,220($s7)
.L0db13f68:
    # Line 4033
    move	$a6,$t3
    # Line 4037
    move	$a5,$a0
    # Line 4038
    addiu	$t8,$t1,-1
    # Line 4034
    subu	$a7,$t3,$t2
    addiu	$a7,$a7,1
    # Line 4038
    slt	$at,$a0,$a7
    beqz	$at,.L0db13f8c
    move	$a3,$t8
    # Line 4039
    move	$a5,$a7
.L0db13f8c:
    slt	$at,$a6,$t8
    beqzl	$at,.L0db13fa0
    # Line 4041
    sw	$a5,-336($s8)
    # Line 4040
    move	$a3,$a6
    # Line 4041
    sw	$a5,-336($s8)
.L0db13fa0:
    # Line 4042
    subu	$v0,$a3,$a5
    # Line 4045
    move	$a5,$a1
    # Line 4046
    slt	$v1,$a6,$a1
    addiu	$a0,$t0,1
    move	$a3,$a0
    # Line 4042
    addiu	$v0,$v0,1
    # Line 4046
    beqz	$v1,.L0db13fc4
    # Line 4042
    sw	$v0,-324($s8)
    # Line 4047
    move	$a5,$a6
.L0db13fc4:
    slt	$v1,$a0,$a7
    beqzl	$v1,.L0db13fd8
    # Line 4049
    sw	$a5,208($s7)
    # Line 4048
    move	$a3,$a7
    # Line 4049
    sw	$a5,208($s7)
.L0db13fd8:
    # Line 4050
    subu	$a4,$a5,$a3
    addiu	$a4,$a4,1
    sw	$a4,220($s7)
.L0db13fe4:
    ld	$at,-608($s8)
    sd	$s1,-744($s8)
    sd	$ra,-752($s8)
    beqz	$at,.L0db14444
    sd	$s0,-736($s8)
    ld	$v0,-600($s8)
    sd	$s1,-744($s8)
    sd	$ra,-752($s8)
    beqz	$v0,.L0db14308
    sd	$s0,-736($s8)
    sd	$s1,-744($s8)
    sd	$ra,-752($s8)
    b	.L0db14048
    sd	$s0,-736($s8)
.L0db1401c:
    # Line 4134
    ld	$t9,-552($s8)
.L0db14020:
    move	$a0,$s2
    move	$a1,$s6
    jalr	$t9
    ld	$a2,-576($s8)
    ld	$v1,-704($s8)
    # Line 4136
    sw	$v1,30700($s2)
.L0db14038:
    ld	$a4,-608($s8)
    # Line 4124
    beqz	$a4,.L0db14444
    ld	$at,-600($s8)
    beqz	$at,.L0db14308
.L0db14048:
    ld	$v0,-696($s8)
    # Line 4071
    ld	$v1,-680($s8)
    ld	$at,-688($s8)
    # Line 4053
    beqz	$v0,.L0db14160
    ld	$a4,-696($s8)
    # Line 4055
    addiu	$a4,$a4,-1
    # Line 4071
    beqz	$v1,.L0db14234
    sd	$a4,-696($s8)
.L0db14068:
    ld	$at,-680($s8)
    # Line 4074
    addiu	$at,$at,-1
    sd	$at,-680($s8)
.L0db14074:
    ld	$v0,-568($s8)
    # Line 4106
    beqz	$v0,.L0db140fc
    ld	$at,-560($s8)
    # Line 4110
    blez	$s5,.L0db140dc
    move	$s0,$zero
    move	$s1,$s7
    b	.L0db140b8
    andi	$v1,$s0,0x1
.L0db14094:
    # Line 4115
    move	$a0,$s2
    move	$a1,$s7
    ld	$a2,-592($s8)
    jalr	$t9
    move	$a3,$s3
.L0db140a8:
    # Line 4110
    addiu	$s0,$s0,1
    beq	$s5,$s0,.L0db140dc
    addiu	$s1,$s1,4
    andi	$v1,$s0,0x1
.L0db140b8:
    beqz	$v1,.L0db14094
    lw	$t9,360($s1)
    # Line 4112
    move	$a0,$s2
    move	$a1,$s7
    move	$a2,$s3
    jalr	$t9
    ld	$a3,-592($s8)
    b	.L0db140a8
    nop
.L0db140dc:
    # Line 4119
    ld	$t9,-552($s8)
    move	$a0,$s2
    move	$a1,$s7
    jalr	$t9
    ld	$a2,-584($s8)
    ld	$a4,-704($s8)
    # Line 4121
    sw	$a4,30700($s2)
    ld	$at,-560($s8)
.L0db140fc:
    # Line 4125
    move	$s1,$s7
    # Line 4121
    beqz	$at,.L0db14038
    # Line 4125
    move	$s0,$zero
    blez	$s5,.L0db14020
    # Line 4134
    ld	$t9,-552($s8)
    b	.L0db1413c
    # Line 4125
    andi	$v0,$s0,0x1
.L0db14118:
    # Line 4130
    move	$a0,$s2
    move	$a1,$s6
    move	$a2,$s4
    jalr	$t9
    move	$a3,$s3
.L0db1412c:
    # Line 4125
    addiu	$s0,$s0,1
    beq	$s5,$s0,.L0db1401c
    addiu	$s1,$s1,4
    andi	$v0,$s0,0x1
.L0db1413c:
    beqz	$v0,.L0db14118
    lw	$t9,360($s1)
    # Line 4127
    move	$a0,$s2
    move	$a1,$s6
    move	$a2,$s3
    jalr	$t9
    move	$a3,$s4
    b	.L0db1412c
    nop
.L0db14160:
    # Line 4059
    swc1	$f30,200($s7)
    # Line 4057
    li	$a1,1
    # Line 4060
    trunc.w.s	$f3,$f30
    # Line 4058
    ld	$v1,-608($s8)
    sd	$a1,-568($s8)
    # Line 4060
    add.s	$f5,$f24,$f30
    # Line 4058
    addiu	$v1,$v1,-1
    sd	$v1,-608($s8)
    # Line 4060
    mfc1	$a1,$f3
    beqz	$v1,.L0db141e4
    mov.s	$f4,$f5
    trunc.w.s	$f0,$f5
    mfc1	$a4,$f0
    nop
    bnel	$a4,$a1,.L0db14638
    # Line 4066
    trunc.w.s	$f1,$f4
    # Line 4062
    mtc1	$at,$f6
    lwc1	$f5,192($s7)
    cvt.s.w	$f6,$f6
    # Line 4063
    swc1	$f4,200($s7)
.L0db141b0:
    # Line 4064
    add.s	$f4,$f24,$f4
    # Line 4066
    trunc.w.s	$f0,$f4
    # Line 4065
    ld	$v0,-608($s8)
    # Line 4066
    add.s	$f5,$f5,$f6
    # Line 4065
    addiu	$v0,$v0,-1
    sd	$v0,-608($s8)
    # Line 4066
    mfc1	$a3,$f0
    beqz	$v0,.L0db141f0
    swc1	$f5,192($s7)
    beql	$a1,$a3,.L0db141b0
    # Line 4063
    swc1	$f4,200($s7)
    b	.L0db141fc
    # Line 4069
    mov.s	$f30,$f4
.L0db141e4:
    # Line 4066
    trunc.w.s	$f1,$f4
    mfc1	$a3,$f1
    nop
.L0db141f0:
    # Line 4068
    beq	$a1,$a3,.L0db1430c
    ld	$a4,-608($s8)
    # Line 4069
    mov.s	$f30,$f4
.L0db141fc:
    # Line 4070
    ld	$t9,-616($s8)
    move	$a0,$s2
    move	$a1,$s7
    jalr	$t9
    ld	$a2,-592($s8)
    ld	$a4,-688($s8)
    # Line 4071
    mtc1	$a4,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,192($s7)
    ld	$v1,-680($s8)
    add.s	$f2,$f2,$f3
    bnez	$v1,.L0db14068
    swc1	$f2,192($s7)
.L0db14234:
    # Line 4078
    swc1	$f28,-344($s8)
    # Line 4076
    li	$v0,1
    # Line 4079
    trunc.w.s	$f4,$f28
    # Line 4077
    ld	$at,-600($s8)
    sd	$v0,-560($s8)
    # Line 4079
    sub.s	$f6,$f28,$f24
    # Line 4077
    addiu	$at,$at,-1
    sd	$at,-600($s8)
    # Line 4079
    mfc1	$a0,$f4
    beqz	$at,.L0db1460c
    mov.s	$f4,$f6
    trunc.w.s	$f0,$f6
    mfc1	$v1,$f0
    nop
    bne	$v1,$a0,.L0db14644
    # Line 4081
    lwc1	$f5,-352($s8)
    ld	$a4,-688($s8)
    mtc1	$a4,$f6
    nop
    cvt.s.w	$f6,$f6
    # Line 4082
    swc1	$f4,-344($s8)
.L0db14288:
    # Line 4083
    sub.s	$f4,$f4,$f24
    # Line 4085
    trunc.w.s	$f0,$f4
    # Line 4084
    ld	$at,-600($s8)
    # Line 4085
    sub.s	$f5,$f5,$f6
    # Line 4084
    addiu	$at,$at,-1
    sd	$at,-600($s8)
    # Line 4085
    mfc1	$a3,$f0
    beqz	$at,.L0db14618
    swc1	$f5,-352($s8)
    beql	$a0,$a3,.L0db14288
    # Line 4082
    swc1	$f4,-344($s8)
.L0db142b4:
    # Line 4104
    mov.s	$f28,$f4
    # Line 4105
    ld	$t9,-616($s8)
    move	$a0,$s2
    move	$a1,$s6
    jalr	$t9
    move	$a2,$s4
    ld	$v0,-688($s8)
    # Line 4106
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f1,-352($s8)
    sub.s	$f1,$f1,$f2
    b	.L0db14074
    swc1	$f1,-352($s8)
.L0db142ec:
    # Line 4098
    ld	$t9,-552($s8)
    move	$a0,$s2
    move	$a1,$s7
    jalr	$t9
    ld	$a2,-584($s8)
    ld	$v1,-704($s8)
    # Line 4100
    sw	$v1,30700($s2)
.L0db14308:
    ld	$a4,-608($s8)
.L0db1430c:
    # Line 4144
    beqz	$a4,.L0db14444
    ld	$s1,-608($s8)
.L0db14314:
    # Line 4148
    trunc.w.s	$f3,$f30
    # Line 4147
    swc1	$f30,200($s7)
    ld	$v0,-688($s8)
    # Line 4148
    add.s	$f5,$f24,$f30
    # Line 4146
    addiu	$s1,$s1,-1
    # Line 4148
    mfc1	$a1,$f3
    beqz	$s1,.L0db14384
    mov.s	$f4,$f5
    trunc.w.s	$f0,$f5
    mfc1	$at,$f0
    nop
    bnel	$at,$a1,.L0db145dc
    # Line 4154
    trunc.w.s	$f3,$f4
    # Line 4150
    mtc1	$v0,$f6
    lwc1	$f5,192($s7)
    cvt.s.w	$f6,$f6
    # Line 4151
    swc1	$f4,200($s7)
.L0db14358:
    # Line 4152
    add.s	$f4,$f24,$f4
    # Line 4154
    trunc.w.s	$f0,$f4
    add.s	$f5,$f5,$f6
    # Line 4153
    addiu	$s1,$s1,-1
    # Line 4154
    mfc1	$a3,$f0
    beqz	$s1,.L0db14390
    swc1	$f5,192($s7)
    beql	$a1,$a3,.L0db14358
    # Line 4151
    swc1	$f4,200($s7)
    b	.L0db14398
    # Line 4157
    mov.s	$f30,$f4
.L0db14384:
    # Line 4154
    trunc.w.s	$f1,$f4
    mfc1	$a3,$f1
    nop
.L0db14390:
    # Line 4156
    beq	$a1,$a3,.L0db14444
    # Line 4157
    mov.s	$f30,$f4
.L0db14398:
    # Line 4159
    ld	$t9,-616($s8)
    move	$a0,$s2
    move	$a1,$s7
    jalr	$t9
    ld	$a2,-592($s8)
    # Line 4160
    blez	$s5,.L0db1440c
    move	$s0,$zero
    sd	$s1,-608($s8)
    b	.L0db143e0
    move	$s1,$s7
.L0db143c0:
    # Line 4162
    move	$a0,$s2
    move	$a1,$s7
    move	$a2,$s3
    jalr	$t9
    ld	$a3,-592($s8)
    # Line 4160
    addiu	$s0,$s0,1
.L0db143d8:
    beq	$s5,$s0,.L0db14408
    addiu	$s1,$s1,4
.L0db143e0:
    andi	$v1,$s0,0x1
    bnez	$v1,.L0db143c0
    lw	$t9,360($s1)
    # Line 4165
    move	$a0,$s2
    move	$a1,$s7
    ld	$a2,-592($s8)
    jalr	$t9
    move	$a3,$s3
    b	.L0db143d8
    # Line 4160
    addiu	$s0,$s0,1
.L0db14408:
    ld	$s1,-608($s8)
.L0db1440c:
    # Line 4169
    ld	$t9,-552($s8)
    move	$a0,$s2
    move	$a1,$s7
    jalr	$t9
    ld	$a2,-584($s8)
    ld	$at,-688($s8)
    # Line 4173
    mtc1	$at,$f3
    # Line 4171
    ld	$a4,-704($s8)
    # Line 4173
    cvt.s.w	$f3,$f3
    # Line 4171
    sw	$a4,30700($s2)
    # Line 4173
    lwc1	$f2,192($s7)
    add.s	$f2,$f2,$f3
    bnez	$s1,.L0db14314
    swc1	$f2,192($s7)
.L0db14444:
    # Line 4176
    ld	$v0,-600($s8)
    beqz	$v0,.L0db14590
    ldc1	$f30,-728($s8)
    lwc1	$f5,-352($s8)
    ldc1	$f30,-728($s8)
    b	.L0db1449c
    ld	$s1,-600($s8)
.L0db14460:
    ld	$s1,-600($s8)
.L0db14464:
    # Line 4201
    ld	$t9,-552($s8)
    move	$a0,$s2
    move	$a1,$s6
    jalr	$t9
    ld	$a2,-576($s8)
    ld	$a4,-688($s8)
    # Line 4205
    mtc1	$a4,$f0
    # Line 4203
    ld	$v1,-704($s8)
    # Line 4205
    cvt.s.w	$f0,$f0
    # Line 4203
    sw	$v1,30700($s2)
    # Line 4205
    lwc1	$f5,-352($s8)
    sub.s	$f5,$f5,$f0
    beqz	$s1,.L0db14590
    swc1	$f5,-352($s8)
.L0db1449c:
    # Line 4180
    trunc.w.s	$f1,$f28
    # Line 4179
    swc1	$f28,-344($s8)
    ld	$v0,-688($s8)
    # Line 4180
    sub.s	$f6,$f28,$f24
    # Line 4178
    addiu	$s1,$s1,-1
    # Line 4180
    mfc1	$a0,$f1
    beqz	$s1,.L0db1450c
    mov.s	$f4,$f6
    trunc.w.s	$f2,$f6
    mfc1	$at,$f2
    nop
    bnel	$at,$a0,.L0db145d0
    # Line 4186
    trunc.w.s	$f2,$f4
    # Line 4182
    mtc1	$v0,$f6
    nop
    cvt.s.w	$f6,$f6
    # Line 4183
    swc1	$f4,-344($s8)
.L0db144e0:
    # Line 4184
    sub.s	$f4,$f4,$f24
    # Line 4186
    trunc.w.s	$f0,$f4
    sub.s	$f5,$f5,$f6
    # Line 4185
    addiu	$s1,$s1,-1
    # Line 4186
    mfc1	$a3,$f0
    beqz	$s1,.L0db14518
    swc1	$f5,-352($s8)
    beql	$a0,$a3,.L0db144e0
    # Line 4183
    swc1	$f4,-344($s8)
    b	.L0db14520
    # Line 4189
    mov.s	$f28,$f4
.L0db1450c:
    # Line 4186
    trunc.w.s	$f1,$f4
    mfc1	$a3,$f1
    nop
.L0db14518:
    # Line 4188
    beq	$a0,$a3,.L0db14590
    # Line 4189
    mov.s	$f28,$f4
.L0db14520:
    # Line 4191
    ld	$t9,-616($s8)
    move	$a0,$s2
    move	$a1,$s6
    jalr	$t9
    move	$a2,$s4
    # Line 4192
    blez	$s5,.L0db14464
    move	$s0,$zero
    sd	$s1,-600($s8)
    b	.L0db14568
    move	$s1,$s7
.L0db14548:
    # Line 4194
    move	$a0,$s2
    move	$a1,$s6
    move	$a2,$s3
    jalr	$t9
    move	$a3,$s4
    # Line 4192
    addiu	$s0,$s0,1
.L0db14560:
    beq	$s5,$s0,.L0db14460
    addiu	$s1,$s1,4
.L0db14568:
    andi	$v1,$s0,0x1
    bnez	$v1,.L0db14548
    lw	$t9,360($s1)
    # Line 4197
    move	$a0,$s2
    move	$a1,$s6
    move	$a2,$s4
    jalr	$t9
    move	$a3,$s3
    b	.L0db14560
    # Line 4192
    addiu	$s0,$s0,1
.L0db14590:
    ld	$gp,-664($s8)
    # Line 4207
    ld	$s0,-736($s8)
    ld	$s1,-744($s8)
    ld	$s2,-648($s8)
    ld	$s3,-632($s8)
    ld	$s4,-624($s8)
    ld	$s5,-672($s8)
    ld	$s6,-760($s8)
    ld	$s7,-640($s8)
    ldc1	$f24,-712($s8)
    ldc1	$f28,-720($s8)
    ld	$ra,-752($s8)
    ld	$a0,-656($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a0
.L0db145d0:
    # Line 4186
    mfc1	$a3,$f2
    b	.L0db14518
    nop
.L0db145dc:
    # Line 4154
    mfc1	$a3,$f3
    b	.L0db14390
    nop
.L0db145e8:
    sd	$s6,-760($s8)
    sdc1	$f24,-712($s8)
    sdc1	$f28,-720($s8)
    sdc1	$f30,-728($s8)
    # Line 3990
    move	$a4,$s4
    ld	$at,-592($s8)
    sd	$s4,-576($s8)
    b	.L0db13ddc
    sd	$at,-584($s8)
.L0db1460c:
    # Line 4085
    trunc.w.s	$f0,$f4
    mfc1	$a3,$f0
    nop
.L0db14618:
    bne	$a0,$a3,.L0db142b4
    ld	$v0,-568($s8)
    beqz	$v0,.L0db1430c
    ld	$a4,-608($s8)
    # Line 4089
    blez	$s5,.L0db142ec
    move	$s0,$zero
    b	.L0db14674
    move	$s1,$s7
.L0db14638:
    # Line 4066
    mfc1	$a3,$f1
    b	.L0db141f0
    nop
.L0db14644:
    # Line 4085
    trunc.w.s	$f2,$f4
    mfc1	$a3,$f2
    b	.L0db14618
    nop
.L0db14654:
    # Line 4091
    move	$a0,$s2
    move	$a1,$s7
    move	$a2,$s3
    jalr	$t9
    ld	$a3,-592($s8)
    # Line 4089
    addiu	$s0,$s0,1
.L0db1466c:
    beq	$s5,$s0,.L0db142ec
    addiu	$s1,$s1,4
.L0db14674:
    andi	$v1,$s0,0x1
    bnez	$v1,.L0db14654
    lw	$t9,360($s1)
    # Line 4094
    move	$a0,$s2
    move	$a1,$s7
    ld	$a2,-592($s8)
    jalr	$t9
    move	$a3,$s3
    b	.L0db1466c
    # Line 4089
    addiu	$s0,$s0,1
.end __glCopyPixelsOverlapping

# Function: __glSlowPickCopyPixels
# Declared: Line 4213 (Source lines: 4215-4222)
# Address: 0x0db1469c - 0x0db1472c (Size: 144 bytes, Frame: 192)
.globl __glSlowPickCopyPixels
.ent __glSlowPickCopyPixels
__glSlowPickCopyPixels:
    # Line 4215
    move	$a6,$a5
    move	$a5,$a4
    move	$a4,$a3
    move	$a3,$a2
    move	$at,$a1
    addiu	$sp,$sp,-576
    # Line 4218
    addiu	$a1,$sp,0
    move	$a2,$at
    sd	$gp,504($sp)
    # Line 4215
    lui	$v0,0xf
    addiu	$v0,$v0,-24580
    addu	$gp,$t9,$v0
    # Line 4218
    # lw $t9, -28808($gp) # &__glInitCopyPixelsInfo
    sd	$s0,520($sp)
    sd	$ra,512($sp)
    bal __glInitCopyPixelsInfo
    # Line 4215
    move	$s0,$a0
    # Line 4219
    # lw $t9, -28812($gp) # &__glClipCopyPixels
    move	$a0,$s0
    bal __glClipCopyPixels
    addiu	$a1,$sp,0
    bnez	$v0,.L0db1470c
    # Line 4221
    nop	# was lw $t9, -28780($gp) # &__glGenericPickCopyPixels
    # Line 4219
    ld	$ra,512($sp)
    ld	$gp,504($sp)
    ld	$s0,520($sp)
    jr	$ra
    addiu	$sp,$sp,576
.L0db1470c:
    # Line 4221
    move	$a0,$s0
    bal __glGenericPickCopyPixels
    addiu	$a1,$sp,0
    # Line 4222
    ld	$ra,512($sp)
    ld	$gp,504($sp)
    ld	$s0,520($sp)
    jr	$ra
    addiu	$sp,$sp,576
.end __glSlowPickCopyPixels

# Function: __glGenericPickCopyPixels
# Declared: Line 4228 (Source lines: 4229-4291)
# Address: 0x0db1472c - 0x0db14850 (Size: 292 bytes, Frame: 208)
.globl __glGenericPickCopyPixels
.ent __glGenericPickCopyPixels
__glGenericPickCopyPixels:
    # Line 4241
    li	$v0,1
    # Line 4229
    addiu	$sp,$sp,-80
    # Line 4243
    addiu	$a2,$sp,0
    sd	$s0,24($sp)
    # Line 4229
    move	$s0,$a1
    sd	$a0,48($sp)
    # Line 4241
    sb	$v0,12($sp)
    # Line 4240
    li	$at,3
    sw	$at,8($sp)
    sd	$gp,40($sp)
    sd	$ra,32($sp)
    # Line 4229
    lui	$ra,0xf
    addiu	$ra,$ra,-24724
    addu	$gp,$t9,$ra
    # Line 4243
    # lw $t9, -32704($gp) # &sub_0db10000
    # Line 4238
    li	$at,4
    # Line 4239
    sw	$at,4($sp)
    # Line 4243
    addiu	$t9,$t9,-10236
    bal __glSpanRGBAScaleBiasReduce
    # Line 4238
    sw	$at,0($sp)
    li	$a3,1
    # Line 4245
    lw	$a5,16($sp)
    # Line 4246
    lw	$a4,20($sp)
    # Line 4251
    lw	$a1,436($s0)
    # Line 4249
    addiu	$a0,$v0,-1
    sw	$a0,264($s0)
    # Line 4259
    li	$at,2
    # Line 4251
    lw	$a6,0($a1)
    li	$v1,0x8011
    beq	$a6,$v1,.L0db14820
    ld	$a0,48($sp)
    li	$a2,0x8012
    beq	$a6,$a2,.L0db1482c
    # Line 4256
    nop	# was lw $t9, -28164($gp) # &__glSep2dCopyPixels
    # Line 4259
    beqz	$v0,.L0db14834
    # Line 4261
    nop	# was lw $t9, -28792($gp) # &__glCopyPixels0
    # Line 4259
    beq	$v0,$a3,.L0db1483c
    # Line 4264
    nop	# was lw $t9, -28796($gp) # &__glCopyPixels1
    # Line 4259
    beq	$v0,$at,.L0db14844
    # Line 4270
    nop	# was lw $t9, -28804($gp) # &__glCopyPixelSpans
.L0db147cc:
    # Line 4274
    sw	$v0,352($s0)
.L0db147d0:
    # Line 4277
    lw	$v1,4($a1)
    li	$a2,0x8016
    beql	$v1,$a2,.L0db14804
    # Line 4279
    lw	$at,48($a1)
.L0db147e0:
    # Line 4288
    sw	$a4,412($s0)
    # Line 4287
    sw	$a5,356($s0)
    # Line 4290
    jal	__glCopyPixelSpans
    move	$a1,$s0
    # Line 4291
    ld	$ra,32($sp)
    ld	$gp,40($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db14804:
    # Line 4279
    lw	$a3,180($s0)
    subu	$a3,$a3,$at
    addiu	$a3,$a3,1
    bgez	$a3,.L0db147e0
    sw	$a3,184($s0)
    b	.L0db147e0
    # Line 4281
    sw	$zero,184($s0)
.L0db14820:
    # Line 4253
    # lw $t9, -28168($gp) # &__glConv2dCopyPixels
    # Line 4254
    b	.L0db147cc
    nop
.L0db1482c:
    # Line 4257
    b	.L0db147d0
    # Line 4274
    sw	$v0,352($s0)
.L0db14834:
    # Line 4262
    b	.L0db147d0
    # Line 4274
    sw	$v0,352($s0)
.L0db1483c:
    # Line 4265
    b	.L0db147d0
    # Line 4274
    sw	$v0,352($s0)
.L0db14844:
    # Line 4267
    # lw $t9, -28800($gp) # &__glCopyPixels2
    # Line 4268
    b	.L0db147d0
    # Line 4274
    sw	$v0,352($s0)
.end __glGenericPickCopyPixels

# Function: __glCopyImage1
# Declared: Line 4296 (Source lines: 4297-4315)
# Address: 0x0db14850 - 0x0db14908 (Size: 184 bytes, Frame: 208)
.globl __glCopyImage1
.ent __glCopyImage1
__glCopyImage1:
    # Line 4297
    addiu	$sp,$sp,-80
    sd	$ra,56($sp)
    sd	$s2,0($sp)
    move	$s2,$a1
    sd	$s5,40($sp)
    # Line 4305
    lw	$s5,360($a1)
    sd	$s1,32($sp)
    # Line 4297
    move	$s1,$a0
    sd	$s4,16($sp)
    # Line 4300
    lw	$s4,30700($a0)
    sd	$s0,24($sp)
    # Line 4306
    move	$s0,$zero
    sd	$gp,48($sp)
    sd	$s3,8($sp)
    # Line 4304
    lw	$s3,172($a1)
    # Line 4297
    lui	$at,0xf
    addiu	$at,$at,-25016
    # Line 4306
    blez	$s3,.L0db148e4
    # Line 4297
    addu	$gp,$t9,$at
.L0db1489c:
    # Line 4307
    move	$a0,$s1
    move	$a1,$s2
    lw	$a3,92($s2)
    lw	$a2,12($s2)
    jalr	$s5
    move	$t9,$s5
    # Line 4306
    addiu	$s0,$s0,1
    # Line 4308
    lw	$at,12($s2)
    # Line 4310
    lw	$v1,92($s2)
    lw	$v0,96($s2)
    # Line 4308
    lw	$a2,16($s2)
    # Line 4310
    addu	$v0,$v0,$v1
    # Line 4308
    addu	$a2,$a2,$at
    sw	$a2,12($s2)
    # Line 4310
    sw	$v0,92($s2)
    # Line 4306
    bne	$s3,$s0,.L0db1489c
    # Line 4313
    sw	$s4,30700($s1)
    ld	$ra,56($sp)
.L0db148e4:
    ld	$gp,48($sp)
    # Line 4315
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s4,16($sp)
    ld	$s5,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glCopyImage1

# Function: __glCopyImage2
# Declared: Line 4320 (Source lines: 4321-4347)
# Address: 0x0db14908 - 0x0db14a1c (Size: 276 bytes, Frame: 0)
.globl __glCopyImage2
.ent __glCopyImage2
__glCopyImage2:
    # Line 4321
    move	$v1,$s8
    addiu	$sp,$sp,-112
    addiu	$s8,$sp,112
    sd	$v1,-104($s8)
    sd	$ra,-112($s8)
    sd	$s1,-32($s8)
    move	$s1,$a1
    sd	$s7,-88($s8)
    # Line 4336
    lw	$s7,364($a1)
    sd	$s5,-48($s8)
    # Line 4335
    lw	$s5,360($a1)
    sd	$s0,-64($s8)
    # Line 4321
    move	$s0,$a0
    sd	$s6,-80($s8)
    # Line 4325
    lw	$s6,30700($a0)
    sd	$s2,-40($s8)
    # Line 4337
    move	$s2,$zero
    sd	$s3,-56($s8)
    # Line 4321
    lui	$v0,0xf
    addiu	$v0,$v0,-25200
    sd	$s4,-72($s8)
    # Line 4334
    lw	$s4,172($a1)
    sd	$gp,-96($s8)
    # Line 4325
    lw	$at,168($a1)
    # Line 4321
    addu	$gp,$t9,$v0
    # Line 4325
    li	$v0,-16
    sll	$at,$at,0x4
    addiu	$at,$at,15
    and	$at,$at,$v0
    subu	$sp,$sp,$at
    # Line 4337
    blez	$s4,.L0db149e8
    # Line 4332
    move	$s3,$sp
.L0db14988:
    # Line 4338
    move	$a0,$s0
    move	$a1,$s1
    lw	$a2,12($s1)
    move	$a3,$s3
    jalr	$s5
    move	$t9,$s5
    # Line 4341
    lw	$a3,92($s1)
    move	$a2,$s3
    move	$a1,$s1
    # Line 4339
    lw	$a5,12($s1)
    lw	$a4,16($s1)
    # Line 4341
    move	$a0,$s0
    move	$t9,$s7
    # Line 4339
    addu	$a4,$a4,$a5
    # Line 4341
    jalr	$s7
    # Line 4339
    sw	$a4,12($s1)
    # Line 4337
    addiu	$s2,$s2,1
    # Line 4342
    lw	$v0,92($s1)
    lw	$at,96($s1)
    addu	$at,$at,$v0
    sw	$at,92($s1)
    # Line 4337
    bne	$s4,$s2,.L0db14988
    # Line 4345
    sw	$s6,30700($s0)
    ld	$ra,-112($s8)
.L0db149e8:
    ld	$gp,-96($s8)
    # Line 4347
    ld	$s0,-64($s8)
    ld	$s1,-32($s8)
    ld	$s2,-40($s8)
    ld	$s3,-56($s8)
    ld	$s4,-72($s8)
    ld	$s5,-48($s8)
    ld	$s6,-80($s8)
    ld	$s7,-88($s8)
    ld	$v1,-104($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v1
.end __glCopyImage2

# Function: __glCopyImageSpans
# Declared: Line 4352 (Source lines: 4353-4391)
# Address: 0x0db14a1c - 0x0db14bcc (Size: 432 bytes, Frame: 0)
.globl __glCopyImageSpans
.ent __glCopyImageSpans
__glCopyImageSpans:
    # Line 4353
    move	$a2,$s8
    addiu	$sp,$sp,-176
    addiu	$s8,$sp,176
    sd	$s6,-88($s8)
    # Line 4373
    move	$s6,$zero
    sd	$a2,-112($s8)
    sd	$s7,-96($s8)
    # Line 4371
    lw	$at,172($a1)
    sd	$s1,-72($s8)
    # Line 4353
    move	$s1,$a1
    # Line 4358
    lw	$a1,30700($a0)
    sd	$at,-120($s8)
    # Line 4356
    lw	$a2,352($s1)
    sd	$a1,-128($s8)
    sd	$gp,-104($s8)
    sd	$s4,-80($s8)
    # Line 4353
    move	$s4,$a0
    lui	$a0,0xf
    addiu	$a0,$a0,-25476
    # Line 4365
    lw	$v1,168($s1)
    # Line 4353
    addu	$gp,$t9,$a0
    # Line 4365
    li	$a0,-16
    sll	$v1,$v1,0x4
    addiu	$v1,$v1,15
    and	$v1,$v1,$a0
    subu	$sp,$sp,$v1
    # Line 4368
    move	$s7,$sp
    subu	$sp,$sp,$v1
    # Line 4369
    move	$v0,$sp
    # Line 4373
    blez	$at,.L0db14ba8
    sd	$sp,-32($s8)
    sd	$s2,-168($s8)
    sd	$s5,-160($s8)
    sd	$s3,-152($s8)
    sd	$ra,-144($s8)
    sd	$s0,-136($s8)
    addiu	$v0,$a2,-2
    sd	$v0,-64($s8)
    addiu	$at,$a2,-1
    li	$a4,2
    slt	$a4,$a4,$a2
    sd	$at,-40($s8)
    sll	$at,$at,0x2
    sd	$at,-56($s8)
    b	.L0db14b18
    sd	$a4,-48($s8)
.L0db14ad4:
    # Line 4385
    move	$a0,$s4
    sll	$t9,$a5,0x2
    addu	$t9,$t9,$s1
    lw	$t9,360($t9)
    move	$a1,$s1
    move	$a2,$s0
    jalr	$t9
    lw	$a3,92($s1)
    # Line 4373
    addiu	$s6,$s6,1
    # Line 4386
    lw	$a4,92($s1)
    lw	$v1,96($s1)
    # Line 4389
    ld	$v0,-128($s8)
    # Line 4373
    ld	$at,-120($s8)
    # Line 4386
    addu	$v1,$v1,$a4
    sw	$v1,92($s1)
    # Line 4373
    beq	$at,$s6,.L0db14b94
    # Line 4389
    sw	$v0,30700($s4)
.L0db14b18:
    # Line 4375
    move	$a0,$s4
    lw	$t9,360($s1)
    move	$a1,$s1
    move	$a3,$s7
    jalr	$t9
    lw	$a2,12($s1)
    # Line 4379
    li	$a5,1
    # Line 4378
    ld	$s2,-32($s8)
    move	$s0,$s7
    # Line 4376
    lw	$v1,12($s1)
    lw	$v0,16($s1)
    # Line 4379
    ld	$at,-48($s8)
    # Line 4376
    addu	$v0,$v0,$v1
    # Line 4379
    beqz	$at,.L0db14ad4
    # Line 4376
    sw	$v0,12($s1)
    # Line 4379
    addiu	$s3,$s1,4
    ld	$s5,-56($s8)
    addu	$s5,$s5,$s1
.L0db14b60:
    # Line 4380
    move	$a0,$s4
    lw	$t9,360($s3)
    move	$a1,$s1
    move	$a2,$s0
    jalr	$t9
    move	$a3,$s2
    # Line 4379
    addiu	$s3,$s3,4
    # Line 4381
    move	$at,$s0
    # Line 4382
    move	$s0,$s2
    # Line 4379
    bne	$s3,$s5,.L0db14b60
    # Line 4383
    move	$s2,$at
    b	.L0db14ad4
    ld	$a5,-40($s8)
.L0db14b94:
    ld	$s0,-136($s8)
    ld	$ra,-144($s8)
    ld	$s3,-152($s8)
    ld	$s5,-160($s8)
    ld	$s2,-168($s8)
.L0db14ba8:
    ld	$gp,-104($s8)
    # Line 4391
    ld	$s1,-72($s8)
    ld	$s4,-80($s8)
    ld	$s6,-88($s8)
    ld	$s7,-96($s8)
    ld	$v0,-112($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.end __glCopyImageSpans

# Function: __glGenericPickCopyImageSpan
# Declared: Line 4407 (Source lines: 4409-4442)
# Address: 0x0db14bcc - 0x0db14c84 (Size: 184 bytes, Frame: 208)
.globl __glGenericPickCopyImageSpan
.ent __glGenericPickCopyImageSpan
__glGenericPickCopyImageSpan:
    # Line 4409
    addiu	$sp,$sp,-80
    # Line 4416
    sb	$a2,12($sp)
    # Line 4418
    addiu	$a2,$sp,0
    sd	$s0,24($sp)
    # Line 4409
    move	$s0,$a1
    # Line 4415
    li	$at,7
    sw	$at,8($sp)
    sd	$gp,40($sp)
    sd	$ra,32($sp)
    # Line 4409
    lui	$ra,0xf
    addiu	$ra,$ra,-25908
    addu	$gp,$t9,$ra
    # Line 4418
    # lw $t9, -32704($gp) # &sub_0db10000
    # Line 4413
    li	$at,2
    # Line 4414
    sw	$at,4($sp)
    # Line 4418
    addiu	$t9,$t9,-10236
    bal __glSpanRGBAScaleBiasReduce
    # Line 4413
    sw	$at,0($sp)
    # Line 4418
    move	$a1,$v0
    beqz	$v0,.L0db14c6c
    ld	$ra,32($sp)
.L0db14c20:
    # Line 4425
    lbu	$v1,12($sp)
    li	$a2,0x8016
    beqz	$v1,.L0db14c40
    ld	$gp,40($sp)
    lw	$v0,436($s0)
    lw	$a0,4($v0)
    beql	$a0,$a2,.L0db14c50
    # Line 4432
    lw	$v1,48($v0)
.L0db14c40:
    # Line 4442
    move	$v0,$a1
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db14c50:
    # Line 4432
    lw	$at,180($s0)
    subu	$at,$at,$v1
    addiu	$at,$at,1
    bgez	$at,.L0db14c40
    sw	$at,184($s0)
    b	.L0db14c40
    # Line 4434
    sw	$zero,184($s0)
.L0db14c6c:
    # Line 4425
    la	$a0,__glSpanCopy
    addiu	$a1,$v0,1
    sll	$a2,$v0,0x2
    addu	$a2,$a2,$s0
    b	.L0db14c20
    sw	$a0,360($a2)
.end __glGenericPickCopyImageSpan

# Function: __glCopyImage3D
# Declared: Line 4445 (Source lines: 4447-4462)
# Address: 0x0db14c84 - 0x0db14d34 (Size: 176 bytes, Frame: 240)
.globl __glCopyImage3D
.ent __glCopyImage3D
__glCopyImage3D:
    # Line 4447
    addiu	$sp,$sp,-112
    sd	$ra,64($sp)
    sd	$s5,48($sp)
    move	$s5,$a2
    sd	$s6,16($sp)
    move	$s6,$a0
    sd	$s1,40($sp)
    move	$s1,$a1
    sd	$s2,0($sp)
    # Line 4454
    lw	$s2,92($a1)
    sd	$s0,32($sp)
    # Line 4453
    lw	$s0,12($a1)
    sd	$s3,8($sp)
    # Line 4455
    move	$s3,$zero
    sd	$gp,56($sp)
    sd	$s4,24($sp)
    # Line 4452
    lw	$s4,176($a1)
    # Line 4447
    lui	$at,0xf
    addiu	$at,$at,-26092
    # Line 4455
    blez	$s4,.L0db14d0c
    # Line 4447
    addu	$gp,$t9,$at
.L0db14cd8:
    # Line 4456
    move	$a0,$s6
    move	$a1,$s1
    jalr	$s5
    move	$t9,$s5
    # Line 4455
    addiu	$s3,$s3,1
    # Line 4457
    lw	$v0,24($s1)
    # Line 4459
    lw	$v1,104($s1)
    # Line 4457
    addu	$s0,$v0,$s0
    # Line 4459
    addu	$s2,$v1,$s2
    # Line 4460
    sw	$s2,92($s1)
    # Line 4455
    bne	$s4,$s3,.L0db14cd8
    # Line 4458
    sw	$s0,12($s1)
    ld	$ra,64($sp)
.L0db14d0c:
    ld	$gp,56($sp)
    # Line 4462
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s4,24($sp)
    ld	$s5,48($sp)
    ld	$s6,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glCopyImage3D

# Function: __glGenericPickCopyImage
# Declared: Line 4464 (Source lines: 4466-4510)
# Address: 0x0db14d34 - 0x0db14e40 (Size: 268 bytes, Frame: 208)
.globl __glGenericPickCopyImage
.ent __glGenericPickCopyImage
__glGenericPickCopyImage:
    # Line 4470
    li	$at,-1
    # Line 4466
    addiu	$sp,$sp,-80
    sd	$a2,24($sp)
    sd	$a0,32($sp)
    sd	$ra,8($sp)
    sd	$gp,16($sp)
    lui	$v0,0xf
    addiu	$v0,$v0,-26268
    addu	$gp,$t9,$v0
    # Line 4472
    # lw $t9, -28764($gp) # &__glGenericPickCopyImageSpan
    sd	$s0,0($sp)
    # Line 4466
    move	$s0,$a1
    # Line 4472
    bal __glGenericPickCopyImageSpan
    # Line 4470
    sw	$at,264($s0)
    # Line 4472
    lw	$a2,264($s0)
    move	$a1,$v0
    li	$v1,-1
    beq	$a2,$v1,.L0db14e00
    ld	$a0,32($sp)
    # Line 4477
    addiu	$a1,$a2,1
.L0db14d84:
    # Line 4479
    li	$a3,1
    beq	$a1,$a3,.L0db14df4
    li	$a4,2
    beq	$a1,$a4,.L0db14e0c
    # Line 4487
    la	$a2,__glCopyImageSpans
    ld	$at,24($sp)
.L0db14d9c:
    # Line 4489
    beqzl	$at,.L0db14dc4
    # Line 4505
    lw	$a3,24($s0)
    # Line 4491
    lw	$v0,436($s0)
    lw	$v0,0($v0)
    li	$v1,0x8011
    beq	$v0,$v1,.L0db14e18
    li	$v1,0x8012
    beq	$v0,$v1,.L0db14e20
    nop
.L0db14dc0:
    # Line 4505
    lw	$a3,24($s0)
.L0db14dc4:
    bgtz	$a3,.L0db14dd4
    # Line 4503
    sw	$a1,352($s0)
    # Line 4505
    lw	$a4,104($s0)
    blez	$a4,.L0db14e28
.L0db14dd4:
    # Line 4506
    nop	# was lw $t9, -28760($gp) # &__glCopyImage3D
    bal __glCopyImage3D
    move	$a1,$s0
    ld	$ra,8($sp)
    ld	$s0,0($sp)
.L0db14de8:
    ld	$gp,16($sp)
    # Line 4510
    jr	$ra
    addiu	$sp,$sp,80
.L0db14df4:
    # Line 4481
    la	$a2,__glCopyImage1
    # Line 4482
    b	.L0db14d9c
    ld	$at,24($sp)
.L0db14e00:
    # Line 4475
    addiu	$at,$v0,-1
    b	.L0db14d84
    sw	$at,264($s0)
.L0db14e0c:
    # Line 4484
    la	$a2,__glCopyImage2
    # Line 4485
    b	.L0db14d9c
    ld	$at,24($sp)
.L0db14e18:
    # Line 4494
    b	.L0db14dc0
    # Line 4493
    la	$a2,__glConv2dCopyImage
.L0db14e20:
    b	.L0db14dc0
    # Line 4496
    la	$a2,__glSep2dCopyImage
.L0db14e28:
    # Line 4508
    move	$a1,$s0
    jalr	$a2
    move	$t9,$a2
    ld	$ra,8($sp)
    b	.L0db14de8
    ld	$s0,0($sp)
.end __glGenericPickCopyImage

# Function: __glInitReadImageSrcInfo
# Declared: Line 4520 (Source lines: 4525-4558)
# Address: 0x0db14e40 - 0x0db14f1c (Size: 220 bytes, Frame: 0)
.globl __glInitReadImageSrcInfo
.ent __glInitReadImageSrcInfo
__glInitReadImageSrcInfo:
    # Line 4526
    lw	$a6,3372($a0)
    addu	$a2,$a6,$a2
    mtc1	$a2,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 4525
    lui	$v1,0xf
    addiu	$v1,$v1,-26536
    # Line 4526
    swc1	$f0,188($a1)
    # Line 4525
    addu	$at,$t9,$v1
    # Line 4526
    lbu	$v0,4552($a0)
    # Line 4538
    mtc1	$zero,$f3
    # Line 4554
    li	$a6,4
    # Line 4526
    beqz	$v0,.L0db14efc
    lw	$t0,3376($a0)
    # Line 4528
    lw	$v0,3416($a0)
    subu	$v0,$v0,$a3
    addu	$v0,$v0,$t0
    addiu	$v0,$v0,-1
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,192($a1)
.L0db14e98:
    # Line 4531
    lbu	$v1,3104($a0)
    # Line 4534
    li	$a2,5126
    # Line 4531
    beqz	$v1,.L0db14f14
    # Line 4533
    li	$a3,6408
.L0db14ea8:
    # Line 4534
    sw	$a2,4($a1)
    # Line 4536
    sw	$a5,172($a1)
    # Line 4535
    sw	$a4,168($a1)
    # Line 4533
    sw	$a3,0($a1)
    # Line 4537
    lwc1	$f2,3284($a0)
    # Line 4557
    sb	$zero,72($a1)
    # Line 4556
    sw	$zero,8($a1)
    # Line 4555
    sw	$zero,40($a1)
    # Line 4554
    sw	$a6,36($a1)
    # Line 4553
    sw	$a2,4($a1)
    # Line 4547
    sw	$a5,64($a1)
    # Line 4546
    sw	$a4,60($a1)
    # Line 4544
    sw	$zero,44($a1)
    # Line 4543
    sw	$zero,56($a1)
    # Line 4542
    sw	$zero,52($a1)
    # Line 4541
    sw	$zero,48($a1)
    # Line 4538
    swc1	$f3,196($a1)
    # Line 4540
    li	$a0,1
    sw	$a0,68($a1)
    # Line 4558
    jr	$ra
    # Line 4537
    swc1	$f2,160($a1)
.L0db14efc:
    # Line 4531
    addu	$v0,$t0,$a3
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    b	.L0db14e98
    swc1	$f0,192($a1)
.L0db14f14:
    b	.L0db14ea8
    # Line 4533
    li	$a3,6400
.end __glInitReadImageSrcInfo

# Function: __glGenericPickReadImage
# Declared: Line 4565 (Source lines: 4566-4641)
# Address: 0x0db14f1c - 0x0db15048 (Size: 300 bytes, Frame: 208)
.globl __glGenericPickReadImage
.ent __glGenericPickReadImage
__glGenericPickReadImage:
    # Line 4585
    li	$v1,5
    # Line 4583
    li	$at,1
    # Line 4566
    addiu	$sp,$sp,-80
    # Line 4588
    addiu	$a2,$sp,0
    sd	$s0,24($sp)
    # Line 4566
    move	$s0,$a1
    sd	$a0,48($sp)
    # Line 4586
    sb	$at,12($sp)
    # Line 4585
    sw	$v1,8($sp)
    sd	$ra,32($sp)
    sd	$gp,40($sp)
    # Line 4566
    lui	$v0,0xf
    addiu	$v0,$v0,-26756
    addu	$gp,$t9,$v0
    # Line 4588
    # lw $t9, -32704($gp) # &sub_0db10000
    # Line 4584
    li	$ra,3
    sw	$ra,4($sp)
    # Line 4588
    addiu	$t9,$t9,-10236
    bal __glSpanRGBAScaleBiasReduce
    # Line 4583
    sw	$at,0($sp)
    # Line 4588
    move	$a1,$v0
    ld	$a0,48($sp)
    # Line 4597
    lw	$a4,264($s0)
    lw	$a3,16($sp)
    li	$a2,-1
    beq	$a4,$a2,.L0db1501c
    sw	$a3,356($s0)
    # Line 4601
    addiu	$a1,$a4,1
.L0db14f8c:
    # Line 4603
    lw	$a4,436($s0)
    li	$a2,1
    lw	$v0,0($a4)
    # Line 4622
    # lw $t9, -28836($gp) # &__glReadPixelSpans
    # Line 4603
    li	$at,0x8011
    beq	$v0,$at,.L0db15014
    li	$v1,0x8012
    beq	$v0,$v1,.L0db15028
    nop
    # Line 4611
    beqz	$a1,.L0db15030
    nop
    beq	$a1,$a2,.L0db15038
    li	$a3,2
    beq	$a1,$a3,.L0db15040
    nop
.L0db14fc8:
    # Line 4626
    sw	$a1,352($s0)
    # Line 4629
    lw	$at,4($a4)
    li	$v1,0x8016
    beql	$at,$v1,.L0db14ff8
    # Line 4631
    lw	$a3,48($a4)
.L0db14fdc:
    # Line 4640
    jal	__glReadPixelSpans
    move	$a1,$s0
    # Line 4641
    ld	$ra,32($sp)
    ld	$gp,40($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db14ff8:
    # Line 4631
    lw	$a2,180($s0)
    subu	$a2,$a2,$a3
    addiu	$a2,$a2,1
    bgez	$a2,.L0db14fdc
    sw	$a2,184($s0)
    b	.L0db14fdc
    # Line 4633
    sw	$zero,184($s0)
.L0db15014:
    # Line 4606
    b	.L0db14fc8
    # Line 4605
    nop	# was lw $t9, -28176($gp) # &__glConv2dReadPixels
.L0db1501c:
    # Line 4599
    addiu	$at,$v0,-1
    b	.L0db14f8c
    sw	$at,264($s0)
.L0db15028:
    # Line 4609
    b	.L0db14fc8
    # Line 4608
    nop	# was lw $t9, -28172($gp) # &__glSep2dReadPixels
.L0db15030:
    # Line 4614
    b	.L0db14fc8
    # Line 4613
    nop	# was lw $t9, -28824($gp) # &__glReadPixels0
.L0db15038:
    # Line 4617
    b	.L0db14fc8
    # Line 4616
    nop	# was lw $t9, -28828($gp) # &__glReadPixels1
.L0db15040:
    # Line 4620
    b	.L0db14fc8
    # Line 4619
    nop	# was lw $t9, -28832($gp) # &__glReadPixels2
.end __glGenericPickReadImage

# Function: __glInitMemLoad
# Declared: Line 4648 (Source lines: 4650-4705)
# Address: 0x0db15048 - 0x0db1517c (Size: 308 bytes, Frame: 0)
.globl __glInitMemLoad
.ent __glInitMemLoad
__glInitMemLoad:
    # Line 4668
    sw	$zero,432($a1)
    # Line 4664
    sw	$zero,120($a1)
    # Line 4663
    sw	$zero,136($a1)
    # Line 4662
    sw	$zero,132($a1)
    # Line 4661
    sw	$zero,128($a1)
    # Line 4670
    li	$v0,6409
    # Line 4665
    li	$a5,1
    sw	$a5,124($a1)
    # Line 4667
    lw	$a0,172($a1)
    # Line 4666
    lw	$v1,168($a1)
    # Line 4660
    sw	$a3,88($a1)
    # Line 4650
    lui	$a3,0xf
    addiu	$a3,$a3,-27056
    addu	$at,$t9,$a3
    # Line 4666
    sw	$v1,140($a1)
    # Line 4667
    sw	$a0,144($a1)
    # Line 4655
    mtc1	$zero,$f1
    # Line 4673
    li	$a0,5126
    # Line 4651
    lwc1	$f0,_lit_3f800000
    # Line 4658
    swc1	$f1,344($a1)
    # Line 4657
    swc1	$f1,340($a1)
    # Line 4656
    swc1	$f1,336($a1)
    # Line 4655
    swc1	$f1,332($a1)
    # Line 4654
    swc1	$f0,328($a1)
    # Line 4653
    swc1	$f0,324($a1)
    # Line 4652
    swc1	$f0,320($a1)
    # Line 4670
    beq	$a2,$v0,.L0db1510c
    # Line 4651
    swc1	$f0,316($a1)
    # Line 4670
    li	$v0,6410
    beq	$a2,$v0,.L0db15124
    li	$a4,6407
    beq	$a4,$a2,.L0db1513c
    # Line 4684
    li	$a3,4
    # Line 4670
    li	$a4,6408
    beq	$a4,$a2,.L0db15150
    # Line 4689
    li	$v1,4
    # Line 4670
    li	$a4,6406
    beq	$a4,$a2,.L0db15164
    li	$v1,0x8049
    beq	$a2,$v1,.L0db150f4
    # Line 4698
    li	$a3,5126
    # Line 4705
    jr	$ra
    nop
.L0db150f4:
    # Line 4699
    li	$v0,4
    # Line 4698
    sw	$a3,84($a1)
    # Line 4699
    sw	$v0,148($a1)
    # Line 4697
    li	$a0,6403
    # Line 4705
    jr	$ra
    # Line 4697
    sw	$a0,80($a1)
.L0db1510c:
    # Line 4674
    li	$a3,4
    # Line 4673
    sw	$a0,84($a1)
    # Line 4674
    sw	$a3,148($a1)
    # Line 4672
    li	$v1,6403
    # Line 4705
    jr	$ra
    # Line 4672
    sw	$v1,80($a1)
.L0db15124:
    # Line 4679
    li	$v1,4
    # Line 4677
    sw	$a5,80($a1)
    # Line 4679
    sw	$v1,148($a1)
    # Line 4678
    li	$v0,5126
    # Line 4705
    jr	$ra
    # Line 4678
    sw	$v0,84($a1)
.L0db1513c:
    # Line 4682
    sw	$a4,80($a1)
    # Line 4684
    sw	$a3,148($a1)
    # Line 4683
    li	$a0,5126
    # Line 4705
    jr	$ra
    # Line 4683
    sw	$a0,84($a1)
.L0db15150:
    # Line 4687
    sw	$a4,80($a1)
    # Line 4689
    sw	$v1,148($a1)
    # Line 4688
    li	$v0,5126
    # Line 4705
    jr	$ra
    # Line 4688
    sw	$v0,84($a1)
.L0db15164:
    # Line 4693
    li	$a0,5126
    # Line 4692
    sw	$a4,80($a1)
    # Line 4693
    sw	$a0,84($a1)
    # Line 4694
    li	$a3,4
    # Line 4705
    jr	$ra
    # Line 4694
    sw	$a3,148($a1)
.end __glInitMemLoad

# Function: __glInitMemGet
# Declared: Line 4711 (Source lines: 4715-4760)
# Address: 0x0db1517c - 0x0db15274 (Size: 248 bytes, Frame: 0)
.globl __glInitMemGet
.ent __glInitMemGet
__glInitMemGet:
    # Line 4723
    sw	$zero,432($a1)
    # Line 4722
    sw	$a3,64($a1)
    # Line 4719
    sw	$zero,40($a1)
    # Line 4718
    sw	$zero,56($a1)
    # Line 4717
    sw	$zero,52($a1)
    # Line 4716
    sw	$zero,48($a1)
    # Line 4715
    sw	$a5,8($a1)
    # Line 4721
    sw	$a2,60($a1)
    # Line 4728
    li	$a0,5126
    # Line 4720
    li	$a6,1
    # Line 4725
    li	$at,6409
    beq	$a4,$at,.L0db15204
    # Line 4720
    sw	$a6,44($a1)
    # Line 4725
    li	$v0,6410
    beq	$a4,$v0,.L0db1521c
    li	$a2,6407
    beq	$a2,$a4,.L0db15234
    # Line 4739
    li	$at,4
    # Line 4725
    li	$a2,6408
    beq	$a2,$a4,.L0db15248
    # Line 4744
    li	$v1,4
    # Line 4725
    li	$a2,6406
    beq	$a2,$a4,.L0db1525c
    li	$v1,0x8049
    beq	$a4,$v1,.L0db151ec
    # Line 4753
    li	$at,5126
    # Line 4760
    jr	$ra
    nop
.L0db151ec:
    # Line 4754
    li	$v0,4
    # Line 4753
    sw	$at,4($a1)
    # Line 4754
    sw	$v0,68($a1)
    # Line 4752
    li	$a0,6403
    # Line 4760
    jr	$ra
    # Line 4752
    sw	$a0,0($a1)
.L0db15204:
    # Line 4728
    sw	$a0,4($a1)
    # Line 4729
    li	$at,4
    # Line 4727
    li	$v1,6403
    sw	$v1,0($a1)
    # Line 4760
    jr	$ra
    # Line 4729
    sw	$at,68($a1)
.L0db1521c:
    # Line 4734
    li	$v1,4
    # Line 4732
    sw	$a6,0($a1)
    # Line 4734
    sw	$v1,68($a1)
    # Line 4733
    li	$v0,5126
    # Line 4760
    jr	$ra
    # Line 4733
    sw	$v0,4($a1)
.L0db15234:
    # Line 4737
    sw	$a2,0($a1)
    # Line 4739
    sw	$at,68($a1)
    # Line 4738
    li	$a0,5126
    # Line 4760
    jr	$ra
    # Line 4738
    sw	$a0,4($a1)
.L0db15248:
    # Line 4742
    sw	$a2,0($a1)
    # Line 4744
    sw	$v1,68($a1)
    # Line 4743
    li	$v0,5126
    # Line 4760
    jr	$ra
    # Line 4743
    sw	$v0,4($a1)
.L0db1525c:
    # Line 4748
    li	$a0,5126
    # Line 4747
    sw	$a2,0($a1)
    # Line 4748
    sw	$a0,4($a1)
    # Line 4749
    li	$at,4
    # Line 4760
    jr	$ra
    # Line 4749
    sw	$at,68($a1)
.end __glInitMemGet

# Function: __glInitMemUnpack
# Declared: Line 4766 (Source lines: 4770-4782)
# Address: 0x0db15274 - 0x0db152d8 (Size: 100 bytes, Frame: 208)
.globl __glInitMemUnpack
.ent __glInitMemUnpack
__glInitMemUnpack:
    # Line 4770
    addiu	$sp,$sp,-80
    sd	$gp,8($sp)
    lui	$at,0xf
    addiu	$at,$at,-27612
    addu	$gp,$t9,$at
    # Line 4771
    mtc1	$zero,$f1
    sd	$ra,0($sp)
    swc1	$f1,196($a1)
    # Line 4781
    # lw $t9, -28888($gp) # &__glLoadUnpackModes
    # Line 4772
    lwc1	$f0,3284($a0)
    # Line 4773
    sw	$a2,180($a1)
    sw	$a2,184($a1)
    sw	$a2,168($a1)
    # Line 4781
    lbu	$a2,87($sp)
    # Line 4778
    sw	$a7,8($a1)
    # Line 4777
    sw	$a6,4($a1)
    # Line 4776
    sw	$a5,0($a1)
    # Line 4775
    sw	$a4,176($a1)
    # Line 4774
    sw	$a3,172($a1)
    # Line 4781
    bal __glLoadUnpackModes
    # Line 4772
    swc1	$f0,160($a1)
    # Line 4782
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glInitMemUnpack

# Function: __glInitMemPack
# Declared: Line 4787 (Source lines: 4790-4802)
# Address: 0x0db152d8 - 0x0db15338 (Size: 96 bytes, Frame: 208)
.globl __glInitMemPack
.ent __glInitMemPack
__glInitMemPack:
    # Line 4790
    addiu	$sp,$sp,-80
    sd	$gp,8($sp)
    lui	$at,0xf
    addiu	$at,$at,-27712
    addu	$gp,$t9,$at
    # Line 4791
    mtc1	$zero,$f1
    sd	$ra,0($sp)
    swc1	$f1,196($a1)
    # Line 4801
    # lw $t9, -28844($gp) # &__glLoadPackModes
    # Line 4792
    lwc1	$f0,3284($a0)
    # Line 4798
    sw	$a7,88($a1)
    # Line 4797
    sw	$a6,84($a1)
    # Line 4796
    sw	$a5,80($a1)
    # Line 4795
    sw	$a4,176($a1)
    # Line 4794
    sw	$a3,172($a1)
    # Line 4793
    sw	$a2,180($a1)
    sw	$a2,184($a1)
    sw	$a2,168($a1)
    # Line 4801
    bal __glLoadPackModes
    # Line 4792
    swc1	$f0,160($a1)
    # Line 4802
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glInitMemPack

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_bfe0000000000000:
    .word 0xbfe00000, 0x00000000
_lit_3f800000:
    .word 0x3f800000
_lit_bf800000:
    .word 0xbf800000

