# Source: ../MGRAS/mgras_convolve.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_convolve.c
# Total Functions: 17

.text

# Function: __glMgrInitConvolutionState
# Declared: Line 37 (Source lines: 38-163)
# Address: 0x0dadaca8 - 0x0dadaf1c (Size: 628 bytes, Frame: 192)
.globl __glMgrInitConvolutionState
.ent __glMgrInitConvolutionState
__glMgrInitConvolutionState:
    # Line 51
    li	$a1,784
    # Line 38
    addiu	$sp,$sp,-64
    sd	$s2,24($sp)
    sdc1	$f30,0($sp)
    sd	$s0,32($sp)
    sd	$gp,40($sp)
    lui	$at,0x12
    addiu	$at,$at,14832
    addu	$gp,$t9,$at
    # Line 51
    lw	$t9,0($a0)
    sd	$s1,16($sp)
    sd	$ra,8($sp)
    jalr	$t9
    # Line 38
    move	$s1,$a0
    # Line 51
    lui	$s0,0x1
    addu	$s0,$s1,$s0
    beqz	$v0,.L0dadaec4
    sw	$v0,-32052($s0)
.L0dadacf0:
    # Line 58
    lwc1	$f30,_lit_3f800000
    swc1	$f30,0($v0)
    # Line 59
    lw	$v0,-32052($s0)
    swc1	$f30,4($v0)
    # Line 60
    lw	$at,-32052($s0)
    # Line 62
    li	$t9,5126
    # Line 60
    swc1	$f30,8($at)
    # Line 63
    li	$t8,6408
    # Line 61
    lw	$ra,-32052($s0)
    # Line 77
    mtc1	$zero,$f0
    # Line 65
    li	$s2,1
    # Line 61
    swc1	$f30,12($ra)
    # Line 77
    swc1	$f0,-31992($s0)
    swc1	$f0,-31988($s0)
    swc1	$f0,-31984($s0)
    swc1	$f0,-31980($s0)
    # Line 73
    swc1	$f30,-32008($s0)
    swc1	$f30,-32004($s0)
    swc1	$f30,-32000($s0)
    swc1	$f30,-31996($s0)
    # Line 70
    swc1	$f30,-32012($s0)
    # Line 69
    swc1	$f30,-32016($s0)
    # Line 68
    swc1	$f30,-32020($s0)
    # Line 67
    swc1	$f30,-32024($s0)
    # Line 64
    sw	$t8,-32040($s0)
    # Line 63
    sw	$t8,-32044($s0)
    # Line 62
    sw	$t9,-32048($s0)
    # Line 65
    sw	$s2,-32036($s0)
    # Line 66
    sw	$s2,-32032($s0)
    # Line 71
    li	$s2,0x8016
    sw	$s2,-31976($s0)
    # Line 87
    lw	$t9,0($s1)
    li	$a1,224
    jalr	$t9
    move	$a0,$s1
    beqz	$v0,.L0dadaee0
    sw	$v0,-31972($s0)
.L0dadad84:
    # Line 94
    swc1	$f30,0($v0)
    # Line 95
    lw	$a4,-31972($s0)
    swc1	$f30,4($a4)
    # Line 96
    lw	$a3,-31972($s0)
    li	$a1,5126
    swc1	$f30,8($a3)
    li	$a0,6408
    # Line 97
    lw	$a2,-31972($s0)
    mtc1	$zero,$f1
    li	$v1,1
    swc1	$f30,12($a2)
    # Line 113
    swc1	$f1,-31912($s0)
    swc1	$f1,-31908($s0)
    swc1	$f1,-31904($s0)
    swc1	$f1,-31900($s0)
    # Line 109
    swc1	$f30,-31928($s0)
    swc1	$f30,-31924($s0)
    swc1	$f30,-31920($s0)
    swc1	$f30,-31916($s0)
    # Line 107
    sw	$s2,-31896($s0)
    # Line 106
    swc1	$f30,-31932($s0)
    # Line 105
    swc1	$f30,-31936($s0)
    # Line 104
    swc1	$f30,-31940($s0)
    # Line 103
    swc1	$f30,-31944($s0)
    # Line 102
    sw	$v1,-31952($s0)
    # Line 101
    sw	$v1,-31956($s0)
    # Line 100
    sw	$a0,-31960($s0)
    # Line 99
    sw	$a0,-31964($s0)
    # Line 98
    sw	$a1,-31968($s0)
    # Line 123
    lw	$t9,0($s1)
    li	$a1,112
    jalr	$t9
    move	$a0,$s1
    sw	$v0,-32132($s0)
    beqz	$v0,.L0dadaefc
    ld	$ra,8($sp)
.L0dadae14:
    # Line 130
    swc1	$f30,0($v0)
    # Line 131
    lw	$v0,-32132($s0)
    swc1	$f30,4($v0)
    # Line 132
    lw	$a2,-32132($s0)
    mtc1	$zero,$f2
    ld	$gp,40($sp)
    swc1	$f30,8($a2)
    li	$s1,5126
    # Line 133
    lw	$a1,-32132($s0)
    li	$at,6408
    li	$v1,1
    swc1	$f30,12($a1)
    # Line 159
    swc1	$f2,-31876($s0)
    swc1	$f2,-31872($s0)
    swc1	$f2,-31868($s0)
    swc1	$f2,-31864($s0)
    # Line 155
    swc1	$f30,-31892($s0)
    swc1	$f30,-31888($s0)
    swc1	$f30,-31884($s0)
    swc1	$f30,-31880($s0)
    # Line 149
    swc1	$f2,-32072($s0)
    swc1	$f2,-32068($s0)
    swc1	$f2,-32064($s0)
    swc1	$f2,-32060($s0)
    # Line 145
    swc1	$f30,-32088($s0)
    swc1	$f30,-32084($s0)
    swc1	$f30,-32080($s0)
    swc1	$f30,-32076($s0)
    # Line 143
    sw	$s2,-32056($s0)
    # Line 142
    swc1	$f30,-32092($s0)
    # Line 141
    swc1	$f30,-32096($s0)
    # Line 140
    swc1	$f30,-32100($s0)
    # Line 139
    swc1	$f30,-32104($s0)
    # Line 138
    sw	$v1,-32112($s0)
    # Line 137
    sw	$v1,-32116($s0)
    # Line 136
    sw	$at,-32120($s0)
    # Line 135
    sw	$at,-32124($s0)
    # Line 134
    sw	$s1,-32128($s0)
    # Line 163
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    ld	$s2,24($sp)
    ldc1	$f30,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dadaec4:
    # Line 54
    lw	$t9,20($s1)
    la	$a1,sub_0dbf0000
    move	$a0,$s1
    jalr	$t9
    addiu	$a1,$a1,-5504
    b	.L0dadacf0
    lw	$v0,-32052($s0)
.L0dadaee0:
    # Line 90
    lw	$t9,20($s1)
    la	$a1,sub_0dbf0000
    move	$a0,$s1
    jalr	$t9
    addiu	$a1,$a1,-5504
    b	.L0dadad84
    lw	$v0,-31972($s0)
.L0dadaefc:
    # Line 126
    lw	$t9,20($s1)
    la	$a1,sub_0dbf0000
    move	$a0,$s1
    jalr	$t9
    addiu	$a1,$a1,-5448
    lw	$v0,-32132($s0)
    b	.L0dadae14
    ld	$ra,8($sp)
.end __glMgrInitConvolutionState

# Function: __glMgrFreeConvolutionState
# Declared: Line 168 (Source lines: 169-178)
# Address: 0x0dadaf1c - 0x0dadafb8 (Size: 156 bytes, Frame: 48)
.globl __glMgrFreeConvolutionState
.ent __glMgrFreeConvolutionState
__glMgrFreeConvolutionState:
    # Line 169
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,16($sp)
    lui	$a1,0x1
    addu	$a1,$a0,$a1
    sd	$a1,0($sp)
    lw	$a1,-32132($a1)
    lui	$at,0x12
    addiu	$at,$at,14204
    beqz	$a1,.L0dadaf60
    addu	$gp,$t9,$at
    # Line 173
    lw	$t9,12($s0)
    sd	$ra,24($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,24($sp)
.L0dadaf60:
    ld	$a1,0($sp)
    lw	$a1,-32052($a1)
    beqzl	$a1,.L0dadaf88
    ld	$a1,0($sp)
    # Line 175
    lw	$t9,12($s0)
    sd	$ra,24($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,24($sp)
    ld	$a1,0($sp)
.L0dadaf88:
    lw	$a1,-31972($a1)
    beqzl	$a1,.L0dadafac
    ld	$gp,16($sp)
    # Line 177
    lw	$t9,12($s0)
    sd	$ra,24($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,24($sp)
    ld	$gp,16($sp)
.L0dadafac:
    # Line 178
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrFreeConvolutionState

# Function: __glMgrGetFilter
# Declared: Line 184 (Source lines: 186-204)
# Address: 0x0dadafb8 - 0x0dadb004 (Size: 76 bytes, Frame: 0)
.ent __glMgrGetFilter
__glMgrGetFilter:
    # Line 189
    li	$at,0x8010
    beq	$a0,$at,.L0dadafe0
    # Line 186
    lw	$a3,__glCurrentContext
    # Line 189
    li	$v1,0x8011
    beq	$a0,$v1,.L0dadafec
    li	$a1,0x8012
    beq	$a0,$a1,.L0dadaff8
    # Line 200
    move	$v0,$zero
    # Line 204
    jr	$ra
    nop
.L0dadafe0:
    # Line 191
    li	$v0,0x827c
    # Line 204
    jr	$ra
    # Line 191
    addu	$v0,$a3,$v0
.L0dadafec:
    # Line 194
    li	$v0,0x82cc
    # Line 204
    jr	$ra
    # Line 194
    addu	$v0,$a3,$v0
.L0dadaff8:
    # Line 197
    li	$v0,0x831c
    # Line 204
    jr	$ra
    # Line 197
    addu	$v0,$a3,$v0
.end __glMgrGetFilter

# Function: __glMgrScaleBiasFilter
# Declared: Line 207 (Source lines: 220-262)
# Address: 0x0dadb004 - 0x0dadb210 (Size: 524 bytes, Frame: 0)
.ent __glMgrScaleBiasFilter
__glMgrScaleBiasFilter:
    # Line 227
    lwc1	$f7,72($a0)
    # Line 226
    lwc1	$f4,68($a0)
    # Line 225
    lwc1	$f8,64($a0)
    # Line 224
    lwc1	$f9,60($a0)
    # Line 223
    lwc1	$f5,56($a0)
    # Line 222
    lwc1	$f11,52($a0)
    # Line 221
    lwc1	$f10,48($a0)
    # Line 220
    lwc1	$f6,44($a0)
    # Line 238
    move	$a3,$zero
    # Line 233
    mtc1	$zero,$f0
    # Line 238
    move	$a6,$a1
    # Line 228
    lw	$a4,0($a0)
    # Line 236
    swc1	$f0,40($a0)
    # Line 235
    swc1	$f0,36($a0)
    # Line 234
    swc1	$f0,32($a0)
    # Line 233
    swc1	$f0,28($a0)
    # Line 238
    blez	$a1,.L0dadb208
    # Line 229
    move	$a5,$a4
    andi	$at,$a1,0x1
    beqz	$at,.L0dadb0e4
    move	$t0,$a4
    # Line 247
    lwc1	$f0,0($a4)
    # Line 249
    lwc1	$f2,8($a4)
    # Line 247
    mul.s	$f0,$f0,$f6
    # Line 250
    lwc1	$f1,12($a4)
    # Line 249
    mul.s	$f2,$f2,$f11
    # Line 248
    lwc1	$f3,4($a4)
    # Line 250
    mul.s	$f1,$f1,$f5
    # Line 247
    add.s	$f0,$f0,$f9
    # Line 248
    mul.s	$f3,$f3,$f10
    # Line 249
    add.s	$f2,$f2,$f4
    # Line 250
    add.s	$f1,$f1,$f7
    # Line 248
    add.s	$f3,$f3,$f8
    # Line 254
    swc1	$f1,12($a5)
    # Line 253
    swc1	$f2,8($a5)
    # Line 251
    swc1	$f0,0($a5)
    # Line 252
    swc1	$f3,4($a5)
    # Line 255
    lwc1	$f3,28($a0)
    add.s	$f3,$f3,$f0
    swc1	$f3,28($a0)
    # Line 256
    lwc1	$f2,32($a0)
    lwc1	$f1,4($a5)
    add.s	$f1,$f1,$f2
    swc1	$f1,32($a0)
    # Line 257
    lwc1	$f0,36($a0)
    lwc1	$f3,8($a5)
    add.s	$f3,$f3,$f0
    swc1	$f3,36($a0)
    # Line 258
    lwc1	$f2,40($a0)
    lwc1	$f1,12($a5)
    add.s	$f1,$f1,$f2
    # Line 238
    addiu	$a3,$a3,1
    # Line 259
    addiu	$a4,$a4,16
    addiu	$a5,$a5,16
    # Line 258
    swc1	$f1,40($a0)
    move	$t0,$a4
.L0dadb0e4:
    move	$t1,$a3
    move	$a7,$a5
    sra	$v0,$a6,0x1
    beqz	$v0,.L0dadb208
    move	$a3,$a7
    move	$a5,$t1
    move	$a4,$t0
.L0dadb100:
    # Line 247
    lwc1	$f0,0($a4)
    mul.s	$f0,$f0,$f6
    # Line 248
    lwc1	$f3,4($a4)
    mul.s	$f3,$f3,$f10
    # Line 249
    lwc1	$f2,8($a4)
    mul.s	$f2,$f2,$f11
    # Line 250
    lwc1	$f1,12($a4)
    # Line 247
    add.s	$f0,$f0,$f9
    # Line 250
    mul.s	$f1,$f1,$f5
    # Line 248
    add.s	$f3,$f3,$f8
    # Line 249
    add.s	$f2,$f2,$f4
    # Line 250
    add.s	$f1,$f1,$f7
    # Line 251
    swc1	$f0,0($a3)
    # Line 252
    swc1	$f3,4($a3)
    # Line 253
    swc1	$f2,8($a3)
    # Line 254
    swc1	$f1,12($a3)
    # Line 255
    lwc1	$f3,28($a0)
    add.s	$f3,$f3,$f0
    swc1	$f3,28($a0)
    # Line 256
    lwc1	$f1,4($a3)
    lwc1	$f2,32($a0)
    add.s	$f1,$f1,$f2
    swc1	$f1,32($a0)
    # Line 257
    lwc1	$f3,8($a3)
    lwc1	$f0,36($a0)
    add.s	$f3,$f3,$f0
    swc1	$f3,36($a0)
    # Line 258
    lwc1	$f1,12($a3)
    lwc1	$f2,40($a0)
    add.s	$f1,$f1,$f2
    swc1	$f1,40($a0)
    # Line 247
    lwc1	$f0,16($a4)
    mul.s	$f0,$f0,$f6
    # Line 248
    lwc1	$f3,20($a4)
    mul.s	$f3,$f3,$f10
    # Line 249
    lwc1	$f2,24($a4)
    mul.s	$f2,$f2,$f11
    # Line 250
    lwc1	$f1,28($a4)
    # Line 247
    add.s	$f0,$f0,$f9
    # Line 250
    mul.s	$f1,$f1,$f5
    # Line 248
    add.s	$f3,$f3,$f8
    # Line 249
    add.s	$f2,$f2,$f4
    # Line 250
    add.s	$f1,$f1,$f7
    # Line 251
    swc1	$f0,16($a3)
    # Line 252
    swc1	$f3,20($a3)
    # Line 253
    swc1	$f2,24($a3)
    # Line 254
    swc1	$f1,28($a3)
    # Line 255
    lwc1	$f3,28($a0)
    add.s	$f3,$f3,$f0
    swc1	$f3,28($a0)
    # Line 256
    lwc1	$f1,20($a3)
    lwc1	$f2,32($a0)
    add.s	$f1,$f1,$f2
    swc1	$f1,32($a0)
    # Line 257
    lwc1	$f3,24($a3)
    lwc1	$f0,36($a0)
    add.s	$f3,$f3,$f0
    swc1	$f3,36($a0)
    # Line 258
    lwc1	$f1,28($a3)
    lwc1	$f2,40($a0)
    # Line 259
    addiu	$a4,$a4,32
    # Line 258
    add.s	$f1,$f1,$f2
    # Line 259
    addiu	$a3,$a3,32
    # Line 238
    addiu	$a5,$a5,2
    bne	$a1,$a5,.L0dadb100
    # Line 258
    swc1	$f1,40($a0)
.L0dadb208:
    # Line 262
    jr	$ra
    nop
.end __glMgrScaleBiasFilter

# Function: __glMgrim_ConvolutionFilter1DEXT
# Declared: Line 264 (Source lines: 270-385)
# Address: 0x0dadb210 - 0x0dadb5b8 (Size: 936 bytes, Frame: 128)
.globl __glMgrim_ConvolutionFilter1DEXT
.ent __glMgrim_ConvolutionFilter1DEXT
__glMgrim_ConvolutionFilter1DEXT:
    # Line 276
    li	$t0,1
    # Line 270
    addiu	$sp,$sp,-128
    sd	$a4,0($sp)
    sd	$s1,32($sp)
    move	$s1,$a2
    sd	$s0,48($sp)
    move	$s0,$a1
    sd	$s2,56($sp)
    move	$s2,$a3
    sd	$gp,40($sp)
    lui	$v0,0x12
    addiu	$v0,$v0,13448
    # Line 276
    lw	$at,__glBeginMode
    lw	$v1,__glCurrentContext
    # Line 270
    addu	$gp,$t9,$v0
    # Line 276
    beq	$at,$t0,.L0dadb564
    sd	$v1,24($sp)
    # Line 282
    li	$a6,0x8010
    bne	$a0,$a6,.L0dadb300
    # Line 284
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 282
    beqz	$a5,.L0dadb2fc
    # Line 287
    slti	$at,$s1,8
    beqz	$at,.L0dadb4e8
    # Line 288
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 287
    blez	$s1,.L0dadb4e4
    # Line 292
    move	$v1,$s1
    sltiu	$v0,$s2,6407
    bnez	$v0,.L0dadb328
    sd	$s1,16($sp)
    # Line 294
    sltiu	$a6,$s2,6408
    beqz	$a6,.L0dadb4bc
    # Line 305
    li	$a0,6406
    # Line 304
    sll	$at,$s1,0x1
    addu	$at,$at,$s1
    sd	$at,16($sp)
.L0dadb29c:
    # Line 316
    li	$a6,6409
.L0dadb2a0:
    beq	$a0,$s0,.L0dadb370
    li	$v1,6408
    li	$v0,6407
    beq	$s0,$v0,.L0dadb374
    # Line 345
    move	$a3,$s2
    # Line 316
    beq	$s0,$v1,.L0dadb370
    li	$v0,0x8049
    beq	$s0,$a6,.L0dadb370
    li	$at,6410
    beq	$s0,$at,.L0dadb374
    # Line 345
    move	$a3,$s2
    # Line 316
    beq	$s0,$v0,.L0dadb370
    sd	$ra,64($sp)
    # Line 328
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,40($sp)
    # Line 329
    ld	$s0,48($sp)
    ld	$ra,64($sp)
    ld	$s1,32($sp)
    ld	$s2,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dadb2fc:
    # Line 284
    # lw $t9, -27320($gp) # &__glSetError
.L0dadb300:
    sd	$ra,64($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,40($sp)
    # Line 285
    ld	$s0,48($sp)
    ld	$ra,64($sp)
    ld	$s1,32($sp)
    ld	$s2,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dadb328:
    # Line 294
    sltiu	$v1,$s2,6405
    bnez	$v1,.L0dadb4a0
    sltiu	$a0,$s2,6406
    bnez	$a0,.L0dadb29c
    li	$a0,6406
    beq	$a0,$s2,.L0dadb2a0
    # Line 316
    li	$a6,6409
.L0dadb344:
    # Line 314
    # lw $t9, -27320($gp) # &__glSetError
.L0dadb348:
    sd	$ra,64($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,40($sp)
    # Line 315
    ld	$s0,48($sp)
    ld	$ra,64($sp)
    ld	$s1,32($sp)
    ld	$s2,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dadb370:
    # Line 345
    move	$a3,$s2
.L0dadb374:
    li	$a2,1
    move	$a1,$s1
    sd	$ra,64($sp)
    # lw $t9, -26712($gp) # &__glFillImage
    # Line 335
    ld	$t1,24($sp)
    lui	$a6,0x1
    # Line 345
    ld	$t2,0($sp)
    # Line 335
    addu	$a6,$t1,$a6
    # Line 339
    sw	$s0,-32120($a6)
    # Line 338
    sw	$s2,-32124($a6)
    # Line 337
    sw	$t0,-32112($a6)
    # Line 336
    sw	$s1,-32116($a6)
    # Line 335
    sw	$t2,-32128($a6)
    # Line 345
    move	$a4,$t2
    # Line 342
    lw	$a7,32096($t1)
    # Line 345
    move	$a0,$t1
    sd	$a6,8($sp)
    # Line 342
    ori	$a7,$a7,0x800
    sw	$a7,32096($t1)
    # Line 345
    jal	__glFillImage
    lw	$a6,-32132($a6)
    la	$a6,sub_0dbf0000
    ld	$a2,0($sp)
    addiu	$a6,$a6,-5392
    addiu	$a2,$a2,-5120
    sltiu	$at,$a2,7
    sll	$a2,$a2,0x2
    beqz	$at,.L0dadb590
    addu	$a2,$a2,$a6
    lw	$a6,%lo(jtbl_0dbeeaf0)($a2)
    jr	$a6
    # Line 355
    ld	$a2,0($sp)
.L0dadb3f4:
    # lw $t9, -30460($gp) # &__glMgrCvtToFloat
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    jal	__glMgrCvtToFloat
    lw	$a0,-32132($a0)
.L0dadb408:
    # Line 365
    ld	$a2,0($sp)
    # lw $t9, -30456($gp) # &__glMgrCvtScaleBias
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    jal	__glMgrCvtScaleBias
    lw	$a0,-32132($a0)
    # Line 372
    move	$a3,$s2
    move	$a2,$s1
    # Line 369
    sll	$a1,$s1,0x2
    # Line 368
    ld	$a4,8($sp)
    # Line 369
    sll	$a1,$a1,0x2
    # Line 370
    ld	$a0,16($sp)
    # Line 368
    lw	$a4,-32132($a4)
    # Line 372
    # lw $t9, -30452($gp) # &__glMgrCvtToRGBA
    # Line 370
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a4
    # Line 372
    jal	__glMgrCvtToRGBA
    # Line 369
    addu	$a1,$a1,$a4
    # Line 379
    move	$a1,$s1
    # lw $t9, -32716($gp) # &sub_0dae0000
    li	$a2,0x827c
    ld	$a0,24($sp)
    addiu	$t9,$t9,-20476
    bal __glMgrFreeConvolutionState
    addu	$a0,$a0,$a2
    # Line 384
    move	$a2,$s0
    # lw $t9, -30448($gp) # &__glMgrCvtToInternalFmt
    ld	$a0,8($sp)
    move	$a1,$s1
    jal	__glMgrCvtToInternalFmt
    lw	$a0,-32132($a0)
    ld	$ra,64($sp)
    ld	$gp,40($sp)
    # Line 385
    ld	$s0,48($sp)
    ld	$s1,32($sp)
    ld	$s2,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dadb4a0:
    # Line 294
    sltiu	$a6,$s2,6404
    bnez	$a6,.L0dadb510
    sltiu	$at,$s2,6405
    beqz	$at,.L0dadb348
    # Line 314
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 294
    b	.L0dadb29c
    li	$a0,6406
.L0dadb4bc:
    sltiu	$v0,$s2,6410
    bnez	$v0,.L0dadb524
    sltiu	$v1,$s2,6411
    bnez	$v1,.L0dadb554
    li	$a6,0x8000
    bne	$s2,$a6,.L0dadb344
    # Line 309
    li	$a0,6406
.L0dadb4d8:
    # Line 308
    sll	$at,$s1,0x2
    # Line 309
    b	.L0dadb29c
    sd	$at,16($sp)
.L0dadb4e4:
    # Line 288
    # lw $t9, -27320($gp) # &__glSetError
.L0dadb4e8:
    sd	$ra,64($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$gp,40($sp)
    # Line 289
    ld	$s0,48($sp)
    ld	$ra,64($sp)
    ld	$s1,32($sp)
    ld	$s2,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dadb510:
    # Line 294
    li	$v0,6403
    bne	$s2,$v0,.L0dadb348
    # Line 314
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 294
    b	.L0dadb29c
    li	$a0,6406
.L0dadb524:
    sltiu	$v1,$s2,6409
    bnez	$v1,.L0dadb540
    sltiu	$a6,$s2,6410
    beqz	$a6,.L0dadb348
    # Line 314
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 294
    b	.L0dadb29c
    li	$a0,6406
.L0dadb540:
    li	$at,6408
    bne	$s2,$at,.L0dadb348
    # Line 314
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dadb4d8
    # Line 309
    li	$a0,6406
.L0dadb554:
    # Line 312
    li	$a0,6406
    # Line 311
    sll	$v0,$s1,0x1
    # Line 312
    b	.L0dadb29c
    sd	$v0,16($sp)
.L0dadb564:
    # Line 276
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,64($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,40($sp)
    ld	$s0,48($sp)
    ld	$ra,64($sp)
    ld	$s1,32($sp)
    ld	$s2,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dadb590:
    # Line 360
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,40($sp)
    # Line 361
    ld	$s0,48($sp)
    ld	$ra,64($sp)
    ld	$s1,32($sp)
    ld	$s2,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glMgrim_ConvolutionFilter1DEXT

# Function: __glMgrim_ConvolutionFilter2DEXT
# Declared: Line 388 (Source lines: 395-514)
# Address: 0x0dadb5b8 - 0x0dadb97c (Size: 964 bytes, Frame: 144)
.globl __glMgrim_ConvolutionFilter2DEXT
.ent __glMgrim_ConvolutionFilter2DEXT
__glMgrim_ConvolutionFilter2DEXT:
    # Line 395
    move	$t2,$a6
    move	$t0,$a2
    move	$t1,$a3
    # Line 401
    li	$v0,1
    # Line 395
    addiu	$sp,$sp,-144
    sd	$a5,0($sp)
    sd	$s1,56($sp)
    move	$s1,$a4
    sd	$s0,40($sp)
    move	$s0,$a1
    sd	$gp,48($sp)
    lui	$v1,0x12
    addiu	$v1,$v1,12512
    # Line 401
    lw	$at,__glBeginMode
    lw	$a7,__glCurrentContext
    # Line 395
    addu	$gp,$t9,$v1
    # Line 401
    beq	$at,$v0,.L0dadb930
    sd	$a7,24($sp)
    # Line 407
    li	$at,0x8011
    bne	$a0,$at,.L0dadb67c
    # Line 409
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 407
    beqz	$t2,.L0dadb678
    # Line 412
    slti	$v0,$t0,8
    beqz	$v0,.L0dadb88c
    slti	$v1,$t1,8
    beqz	$v1,.L0dadb890
    # Line 415
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 412
    blez	$t0,.L0dadb890
    # Line 415
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 412
    blez	$t1,.L0dadb890
    # Line 415
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 419
    mult	$t0,$t1
    sltiu	$a7,$s1,6407
    mflo	$at
    sd	$at,8($sp)
    bnez	$a7,.L0dadb6a0
    sd	$at,16($sp)
    # Line 421
    sltiu	$v0,$s1,6408
    bnez	$v0,.L0dadb6e4
    sltiu	$v1,$s1,6410
    bnez	$v1,.L0dadb8e4
    sltiu	$a7,$s1,6411
    bnez	$a7,.L0dadb91c
    li	$at,0x8000
    bne	$s1,$at,.L0dadb6c0
    # Line 441
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dadb90c
    # Line 435
    ld	$v0,8($sp)
.L0dadb678:
    # Line 409
    # lw $t9, -27320($gp) # &__glSetError
.L0dadb67c:
    sd	$ra,64($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,48($sp)
    # Line 410
    ld	$ra,64($sp)
    ld	$s0,40($sp)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dadb6a0:
    # Line 421
    sltiu	$v0,$s1,6405
    bnez	$v0,.L0dadb8b4
    sltiu	$v1,$s1,6406
    bnez	$v1,.L0dadb6f8
    li	$a0,6406
    beq	$a0,$s1,.L0dadb6fc
    # Line 443
    li	$a7,6409
.L0dadb6bc:
    # Line 441
    # lw $t9, -27320($gp) # &__glSetError
.L0dadb6c0:
    sd	$ra,64($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,48($sp)
    # Line 442
    ld	$ra,64($sp)
    ld	$s0,40($sp)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dadb6e4:
    # Line 431
    ld	$at,8($sp)
    # Line 432
    li	$a0,6406
    # Line 431
    sll	$a7,$at,0x1
    addu	$a7,$a7,$at
    sd	$a7,16($sp)
.L0dadb6f8:
    # Line 443
    li	$a7,6409
.L0dadb6fc:
    beq	$a0,$s0,.L0dadb754
    li	$v1,6408
    li	$v0,6407
    beq	$s0,$v0,.L0dadb758
    # Line 472
    move	$a3,$s1
    # Line 443
    beq	$s0,$v1,.L0dadb758
    # Line 472
    move	$a3,$s1
    # Line 443
    beq	$s0,$a7,.L0dadb754
    li	$at,6410
    beq	$s0,$at,.L0dadb754
    li	$v0,0x8049
    beq	$s0,$v0,.L0dadb754
    sd	$ra,64($sp)
    # Line 455
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,48($sp)
    # Line 456
    ld	$ra,64($sp)
    ld	$s0,40($sp)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dadb754:
    # Line 472
    move	$a3,$s1
.L0dadb758:
    move	$a2,$t1
    move	$a1,$t0
    sd	$ra,64($sp)
    # lw $t9, -26712($gp) # &__glFillImage
    move	$a5,$t2
    # Line 462
    ld	$t2,24($sp)
    lui	$a6,0x1
    # Line 472
    ld	$t3,0($sp)
    # Line 462
    addu	$a6,$t2,$a6
    # Line 466
    sw	$s0,-32040($a6)
    # Line 465
    sw	$s1,-32044($a6)
    # Line 464
    sw	$t1,-32032($a6)
    # Line 463
    sw	$t0,-32036($a6)
    # Line 462
    sw	$t3,-32048($a6)
    # Line 472
    move	$a4,$t3
    # Line 469
    lw	$a7,32096($t2)
    # Line 472
    move	$a0,$t2
    sd	$a6,32($sp)
    # Line 469
    ori	$a7,$a7,0x800
    sw	$a7,32096($t2)
    # Line 472
    jal	__glFillImage
    lw	$a6,-32052($a6)
    la	$at,sub_0dbf0000
    ld	$a3,0($sp)
    addiu	$at,$at,-5360
    addiu	$a3,$a3,-5120
    sltiu	$a7,$a3,7
    sll	$a3,$a3,0x2
    beqz	$a7,.L0dadb958
    addu	$a3,$a3,$at
    lw	$a7,%lo(jtbl_0dbeeb10)($a3)
    jr	$a7
    # Line 483
    ld	$a2,0($sp)
.L0dadb7dc:
    # lw $t9, -30460($gp) # &__glMgrCvtToFloat
    ld	$a0,32($sp)
    ld	$a1,16($sp)
    jal	__glMgrCvtToFloat
    lw	$a0,-32052($a0)
.L0dadb7f0:
    # Line 493
    ld	$a2,0($sp)
    # lw $t9, -30456($gp) # &__glMgrCvtScaleBias
    ld	$a0,32($sp)
    ld	$a1,16($sp)
    jal	__glMgrCvtScaleBias
    lw	$a0,-32052($a0)
    # Line 500
    move	$a3,$s1
    # lw $t9, -30452($gp) # &__glMgrCvtToRGBA
    # Line 498
    ld	$a0,16($sp)
    # Line 500
    ld	$a1,8($sp)
    # Line 496
    ld	$a4,32($sp)
    # Line 498
    sll	$a0,$a0,0x2
    # Line 500
    move	$a2,$a1
    # Line 496
    lw	$a4,-32052($a4)
    # Line 497
    sll	$a1,$a1,0x2
    sll	$a1,$a1,0x2
    # Line 498
    addu	$a0,$a0,$a4
    # Line 500
    jal	__glMgrCvtToRGBA
    # Line 497
    addu	$a1,$a1,$a4
    ld	$s1,8($sp)
    # Line 507
    move	$a1,$s1
    # lw $t9, -32716($gp) # &sub_0dae0000
    li	$a2,0x82cc
    ld	$a0,24($sp)
    addiu	$t9,$t9,-20476
    bal __glMgrFreeConvolutionState
    addu	$a0,$a0,$a2
    # Line 512
    move	$a2,$s0
    # lw $t9, -30448($gp) # &__glMgrCvtToInternalFmt
    ld	$a0,32($sp)
    move	$a1,$s1
    jal	__glMgrCvtToInternalFmt
    lw	$a0,-32052($a0)
    ld	$ra,64($sp)
    ld	$gp,48($sp)
    # Line 514
    ld	$s0,40($sp)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dadb88c:
    # Line 415
    # lw $t9, -27320($gp) # &__glSetError
.L0dadb890:
    sd	$ra,64($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$gp,48($sp)
    # Line 416
    ld	$ra,64($sp)
    ld	$s0,40($sp)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dadb8b4:
    # Line 421
    sltiu	$a7,$s1,6404
    bnez	$a7,.L0dadb8d0
    sltiu	$at,$s1,6405
    beqz	$at,.L0dadb6c0
    # Line 441
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 421
    b	.L0dadb6f8
    li	$a0,6406
.L0dadb8d0:
    li	$v0,6403
    bne	$s1,$v0,.L0dadb6c0
    # Line 441
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 421
    b	.L0dadb6f8
    li	$a0,6406
.L0dadb8e4:
    sltiu	$v1,$s1,6409
    bnez	$v1,.L0dadb900
    sltiu	$a7,$s1,6410
    beqz	$a7,.L0dadb6c0
    # Line 441
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 421
    b	.L0dadb6f8
    li	$a0,6406
.L0dadb900:
    li	$at,6408
    bne	$s1,$at,.L0dadb6bc
    # Line 435
    ld	$v0,8($sp)
.L0dadb90c:
    # Line 436
    li	$a0,6406
    # Line 435
    sll	$v0,$v0,0x2
    # Line 436
    b	.L0dadb6f8
    sd	$v0,16($sp)
.L0dadb91c:
    # Line 438
    ld	$v1,8($sp)
    # Line 439
    li	$a0,6406
    # Line 438
    sll	$v1,$v1,0x1
    # Line 439
    b	.L0dadb6f8
    sd	$v1,16($sp)
.L0dadb930:
    # Line 401
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,64($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,48($sp)
    ld	$ra,64($sp)
    ld	$s0,40($sp)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dadb958:
    # Line 488
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,48($sp)
    # Line 489
    ld	$ra,64($sp)
    ld	$s0,40($sp)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glMgrim_ConvolutionFilter2DEXT

# Function: __glMgrim_SeparableFilter2DEXT
# Declared: Line 516 (Source lines: 524-669)
# Address: 0x0dadb97c - 0x0dadbe4c (Size: 1232 bytes, Frame: 160)
.globl __glMgrim_SeparableFilter2DEXT
.ent __glMgrim_SeparableFilter2DEXT
__glMgrim_SeparableFilter2DEXT:
    # Line 524
    move	$t2,$a6
    move	$t1,$a2
    # Line 531
    li	$v0,1
    # Line 524
    addiu	$sp,$sp,-160
    sd	$a7,8($sp)
    sd	$s3,80($sp)
    move	$s3,$a5
    sd	$s1,48($sp)
    move	$s1,$a4
    sd	$s2,72($sp)
    move	$s2,$a3
    sd	$s0,64($sp)
    move	$s0,$a1
    sd	$gp,56($sp)
    lui	$v1,0x12
    addiu	$v1,$v1,11548
    # Line 531
    lw	$at,__glBeginMode
    lw	$t0,__glCurrentContext
    # Line 524
    addu	$gp,$t9,$v1
    # Line 531
    beq	$at,$v0,.L0dadbdd0
    sd	$t0,16($sp)
    # Line 537
    li	$at,0x8012
    bne	$a0,$at,.L0dadba5c
    # Line 540
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 537
    beqz	$t2,.L0dadba58
    ld	$v0,8($sp)
    beqz	$v0,.L0dadba58
    # Line 543
    slti	$v1,$t1,8
    beqz	$v1,.L0dadbbd8
    slti	$t0,$s2,8
    beqz	$t0,.L0dadbbdc
    # Line 546
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 543
    blez	$t1,.L0dadbbdc
    # Line 546
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 543
    blez	$s2,.L0dadbbd8
    # Line 551
    move	$v1,$t1
    sd	$t1,24($sp)
    sltiu	$at,$s1,6407
    # Line 550
    addu	$v0,$t1,$s2
    sd	$v0,40($sp)
    # Line 551
    bnez	$at,.L0dadba88
    sd	$v0,32($sp)
    # Line 553
    sltiu	$t0,$s1,6408
    bnez	$t0,.L0dadbad4
    sltiu	$at,$s1,6410
    bnez	$at,.L0dadbc38
    sltiu	$v0,$s1,6411
    beqz	$v0,.L0dadbdbc
    # Line 574
    li	$a0,6406
    # Line 572
    ld	$v1,40($sp)
    # Line 573
    sll	$t0,$t1,0x1
    sd	$t0,24($sp)
    # Line 572
    sll	$v1,$v1,0x1
    # Line 574
    b	.L0dadbaf4
    sd	$v1,32($sp)
.L0dadba58:
    # Line 540
    # lw $t9, -27320($gp) # &__glSetError
.L0dadba5c:
    sd	$ra,88($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,56($sp)
    # Line 541
    ld	$s0,64($sp)
    ld	$s1,48($sp)
    ld	$ra,88($sp)
    ld	$s2,72($sp)
    ld	$s3,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dadba88:
    # Line 553
    sltiu	$at,$s1,6405
    bnez	$at,.L0dadbc08
    sltiu	$v0,$s1,6406
    bnez	$v0,.L0dadbaf4
    li	$a0,6406
    beq	$a0,$s1,.L0dadbaf8
    # Line 578
    li	$t0,6409
.L0dadbaa4:
    # Line 576
    # lw $t9, -27320($gp) # &__glSetError
.L0dadbaa8:
    sd	$ra,88($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,56($sp)
    # Line 577
    ld	$s0,64($sp)
    ld	$s1,48($sp)
    ld	$ra,88($sp)
    ld	$s2,72($sp)
    ld	$s3,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dadbad4:
    # Line 565
    li	$a0,6406
    # Line 564
    sll	$at,$t1,0x1
    # Line 563
    ld	$t0,40($sp)
    # Line 564
    addu	$at,$at,$t1
    sd	$at,24($sp)
    # Line 563
    sll	$v1,$t0,0x1
    addu	$v1,$v1,$t0
    sd	$v1,32($sp)
.L0dadbaf4:
    # Line 578
    li	$t0,6409
.L0dadbaf8:
    beq	$a0,$s0,.L0dadbb58
    li	$v1,6408
    li	$v0,6407
    beq	$s0,$v0,.L0dadbb5c
    # Line 607
    move	$a5,$t2
    # Line 578
    beq	$s0,$v1,.L0dadbb5c
    # Line 607
    move	$a5,$t2
    # Line 578
    beq	$s0,$t0,.L0dadbb58
    li	$at,6410
    beq	$s0,$at,.L0dadbb58
    li	$v0,0x8049
    beq	$s0,$v0,.L0dadbb58
    sd	$ra,88($sp)
    # Line 590
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,56($sp)
    # Line 591
    ld	$s0,64($sp)
    ld	$s1,48($sp)
    ld	$ra,88($sp)
    ld	$s2,72($sp)
    ld	$s3,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dadbb58:
    # Line 607
    move	$a5,$t2
.L0dadbb5c:
    move	$a4,$s3
    move	$a3,$s1
    li	$a2,1
    move	$a1,$t1
    # Line 597
    ld	$t0,16($sp)
    sd	$ra,88($sp)
    lui	$a6,0x1
    addu	$a6,$t0,$a6
    # Line 601
    sw	$s0,-31960($a6)
    # Line 600
    sw	$s1,-31964($a6)
    # Line 599
    sw	$s2,-31952($a6)
    # Line 598
    sw	$t1,-31956($a6)
    # Line 597
    sw	$s3,-31968($a6)
    # Line 607
    # lw $t9, -26712($gp) # &__glFillImage
    # Line 604
    lw	$a7,32096($t0)
    # Line 607
    move	$a0,$t0
    sd	$a6,0($sp)
    # Line 604
    ori	$a7,$a7,0x800
    sw	$a7,32096($t0)
    # Line 607
    jal	__glFillImage
    lw	$a6,-31972($a6)
    addiu	$a3,$s3,-5120
    la	$t0,sub_0dbf0000
    sltiu	$at,$a3,7
    sll	$a3,$a3,0x2
    addiu	$t0,$t0,-5328
    beqz	$at,.L0dadbe20
    addu	$a3,$a3,$t0
    lw	$t0,%lo(jtbl_0dbeeb30)($a3)
    jr	$t0
    ld	$a6,0($sp)
.L0dadbbd8:
    # Line 546
    # lw $t9, -27320($gp) # &__glSetError
.L0dadbbdc:
    sd	$ra,88($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$gp,56($sp)
    # Line 547
    ld	$s0,64($sp)
    ld	$s1,48($sp)
    ld	$ra,88($sp)
    ld	$s2,72($sp)
    ld	$s3,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dadbc08:
    # Line 553
    sltiu	$at,$s1,6404
    bnez	$at,.L0dadbc24
    sltiu	$v0,$s1,6405
    beqz	$v0,.L0dadbaa8
    # Line 576
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 553
    b	.L0dadbaf4
    li	$a0,6406
.L0dadbc24:
    li	$v1,6403
    bne	$s1,$v1,.L0dadbaa8
    # Line 576
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 553
    b	.L0dadbaf4
    li	$a0,6406
.L0dadbc38:
    sltiu	$t0,$s1,6409
    bnez	$t0,.L0dadbd98
    sltiu	$at,$s1,6410
    beqz	$at,.L0dadbaa8
    # Line 576
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 553
    b	.L0dadbaf4
    li	$a0,6406
.L0dadbc54:
    ld	$a6,0($sp)
    # Line 612
    ld	$t0,24($sp)
    lw	$a6,-31972($a6)
    # Line 613
    b	.L0dadbc7c
    # Line 612
    addu	$a6,$a6,$t0
.L0dadbc68:
    ld	$a6,0($sp)
    # Line 616
    ld	$t0,24($sp)
    lw	$a6,-31972($a6)
    addu	$t0,$t0,$t0
    addu	$a6,$a6,$t0
.L0dadbc7c:
    ld	$a0,16($sp)
    # Line 634
    move	$a1,$s2
    ld	$a5,8($sp)
    # lw $t9, -26712($gp) # &__glFillImage
    move	$a4,$s3
    move	$a3,$s1
    jal	__glFillImage
    li	$a2,1
    li	$t0,5120
    beq	$s3,$t0,.L0dadbe00
    ld	$s2,32($sp)
    li	$at,5121
    beq	$s3,$at,.L0dadbe00
    li	$v0,5122
    beq	$s3,$v0,.L0dadbe00
    li	$v1,5123
    beq	$s3,$v1,.L0dadbe00
    li	$t0,5124
    beq	$s3,$t0,.L0dadbe00
    li	$at,5125
    beq	$s3,$at,.L0dadbe00
    # Line 649
    move	$a2,$s3
.L0dadbcd4:
    # lw $t9, -30456($gp) # &__glMgrCvtScaleBias
    ld	$a0,0($sp)
    move	$a1,$s2
    jal	__glMgrCvtScaleBias
    lw	$a0,-31972($a0)
    # Line 656
    move	$a3,$s1
    # Line 654
    sll	$a0,$s2,0x2
    # Line 656
    ld	$s3,40($sp)
    # Line 652
    ld	$a4,0($sp)
    # Line 656
    # lw $t9, -30452($gp) # &__glMgrCvtToRGBA
    move	$a2,$s3
    # Line 652
    lw	$a4,-31972($a4)
    # Line 653
    sll	$a1,$s3,0x2
    sll	$a1,$a1,0x2
    # Line 654
    addu	$a0,$a0,$a4
    # Line 656
    jal	__glMgrCvtToRGBA
    # Line 653
    addu	$a1,$a1,$a4
    # Line 663
    move	$a1,$s3
    ld	$s1,0($sp)
    # lw $t9, -32716($gp) # &sub_0dae0000
    li	$a2,0x831c
    ld	$a0,16($sp)
    addiu	$t9,$t9,-20476
    bal __glMgrFreeConvolutionState
    addu	$a0,$a0,$a2
    # Line 668
    # lw $t9, -30448($gp) # &__glMgrCvtToInternalFmt
    move	$a2,$s0
    move	$a1,$s3
    jal	__glMgrCvtToInternalFmt
    lw	$a0,-31972($s1)
    ld	$gp,56($sp)
    # Line 669
    ld	$s0,64($sp)
    ld	$s1,48($sp)
    ld	$ra,88($sp)
    ld	$s2,72($sp)
    ld	$s3,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dadbd6c:
    ld	$a6,0($sp)
    # Line 620
    ld	$t0,24($sp)
    lw	$a6,-31972($a6)
    sll	$t0,$t0,0x2
    # Line 621
    b	.L0dadbc7c
    # Line 620
    addu	$a6,$a6,$t0
.L0dadbd84:
    # Line 623
    ld	$t0,24($sp)
    lw	$a6,-31972($a6)
    sll	$t0,$t0,0x2
    # Line 624
    b	.L0dadbc7c
    # Line 623
    addu	$a6,$a6,$t0
.L0dadbd98:
    # Line 553
    li	$t0,6408
    bne	$s1,$t0,.L0dadbaa4
    # Line 570
    li	$a0,6406
.L0dadbda4:
    # Line 568
    ld	$at,40($sp)
    # Line 569
    sll	$v0,$t1,0x2
    sd	$v0,24($sp)
    # Line 568
    sll	$at,$at,0x2
    # Line 570
    b	.L0dadbaf4
    sd	$at,32($sp)
.L0dadbdbc:
    # Line 553
    li	$v1,0x8000
    bne	$s1,$v1,.L0dadbaa8
    # Line 576
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dadbda4
    # Line 570
    li	$a0,6406
.L0dadbdd0:
    # Line 531
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,88($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,56($sp)
    ld	$s0,64($sp)
    ld	$s1,48($sp)
    ld	$ra,88($sp)
    ld	$s2,72($sp)
    ld	$s3,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dadbe00:
    # Line 644
    move	$a2,$s3
    # lw $t9, -30460($gp) # &__glMgrCvtToFloat
    ld	$a0,0($sp)
    move	$a1,$s2
    jal	__glMgrCvtToFloat
    lw	$a0,-31972($a0)
    b	.L0dadbcd4
    # Line 649
    move	$a2,$s3
.L0dadbe20:
    # Line 626
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,56($sp)
    # Line 627
    ld	$s0,64($sp)
    ld	$s1,48($sp)
    ld	$ra,88($sp)
    ld	$s2,72($sp)
    ld	$s3,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __glMgrim_SeparableFilter2DEXT

# Function: __glMgrim_ConvolutionParameterfvEXT
# Declared: Line 671 (Source lines: 674-720)
# Address: 0x0dadbe4c - 0x0dadbfb4 (Size: 360 bytes, Frame: 192)
.globl __glMgrim_ConvolutionParameterfvEXT
.ent __glMgrim_ConvolutionParameterfvEXT
__glMgrim_ConvolutionParameterfvEXT:
    # Line 674
    li	$v0,1
    addiu	$sp,$sp,-64
    sd	$ra,24($sp)
    sd	$a2,0($sp)
    sd	$s0,16($sp)
    move	$s0,$a1
    sd	$gp,8($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x12
    addiu	$v1,$v1,10316
    beq	$at,$v0,.L0dadbf24
    addu	$gp,$t9,$v1
    # Line 682
    # lw $t9, -32716($gp) # &sub_0dae0000
    addiu	$t9,$t9,-20552
    bal __glMgrFreeConvolutionState
    nop
    beqz	$v0,.L0dadbf44
    ld	$ra,24($sp)
    # Line 688
    li	$at,0x8014
    beq	$s0,$at,.L0dadbf64
    li	$v1,0x8015
    beq	$s0,$v1,.L0dadbf8c
    li	$a3,0x8013
    beq	$s0,$a3,.L0dadbecc
    # Line 717
    nop	# was lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 718
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dadbecc:
    ld	$a4,0($sp)
    # Line 702
    lwc1	$f0,_lit_47001600
    lwc1	$f4,0($a4)
    c.eq.s	$f4,$f0
    nop
    bc1f	.L0dadbf08
    # Line 703
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 706
    trunc.l.s	$f1,$f4
    dmfc1	$at,$f1
    nop
    sw	$at,76($v0)
.L0dadbef8:
    ld	$gp,8($sp)
    # Line 720
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dadbf08:
    # Line 703
    jal	__glSetError
    li	$a0,1280
    # Line 704
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dadbf24:
    # Line 678
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 679
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dadbf44:
    # Line 684
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 685
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dadbf64:
    ld	$v1,0($sp)
    # Line 690
    lwc1	$f1,0($v1)
    swc1	$f1,44($v0)
    # Line 691
    lwc1	$f0,4($v1)
    swc1	$f0,48($v0)
    # Line 692
    lwc1	$f3,8($v1)
    swc1	$f3,52($v0)
    # Line 693
    lwc1	$f2,12($v1)
    # Line 694
    b	.L0dadbef8
    # Line 693
    swc1	$f2,56($v0)
.L0dadbf8c:
    ld	$a3,0($sp)
    # Line 696
    lwc1	$f1,0($a3)
    swc1	$f1,60($v0)
    # Line 697
    lwc1	$f0,4($a3)
    swc1	$f0,64($v0)
    # Line 698
    lwc1	$f3,8($a3)
    swc1	$f3,68($v0)
    # Line 699
    lwc1	$f2,12($a3)
    # Line 700
    b	.L0dadbef8
    # Line 699
    swc1	$f2,72($v0)
.end __glMgrim_ConvolutionParameterfvEXT

# Function: __glMgrim_ConvolutionParameterfEXT
# Declared: Line 722 (Source lines: 725-734)
# Address: 0x0dadbfb4 - 0x0dadc010 (Size: 92 bytes, Frame: 192)
.globl __glMgrim_ConvolutionParameterfEXT
.ent __glMgrim_ConvolutionParameterfEXT
__glMgrim_ConvolutionParameterfEXT:
    # Line 726
    li	$at,0x8013
    # Line 725
    addiu	$sp,$sp,-64
    sd	$ra,16($sp)
    # Line 726
    swc1	$f14,0($sp)
    sd	$gp,8($sp)
    # Line 725
    lui	$v0,0x12
    addiu	$v0,$v0,9956
    # Line 726
    beq	$a1,$at,.L0dadbff4
    # Line 725
    addu	$gp,$t9,$v0
    # Line 730
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 731
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dadbff4:
    # Line 733
    # lw $t9, -30400($gp) # &__glMgrim_ConvolutionParameterfvEXT
    bal __glMgrim_ConvolutionParameterfvEXT
    addiu	$a2,$sp,0
    # Line 734
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_ConvolutionParameterfEXT

# Function: __glMgrim_ConvolutionParameterivEXT
# Declared: Line 736 (Source lines: 739-786)
# Address: 0x0dadc010 - 0x0dadc1c4 (Size: 436 bytes, Frame: 192)
.globl __glMgrim_ConvolutionParameterivEXT
.ent __glMgrim_ConvolutionParameterivEXT
__glMgrim_ConvolutionParameterivEXT:
    # Line 739
    li	$v0,1
    addiu	$sp,$sp,-64
    sd	$ra,24($sp)
    sd	$a2,0($sp)
    sd	$s0,16($sp)
    move	$s0,$a1
    sd	$gp,8($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x12
    addiu	$v1,$v1,9864
    beq	$at,$v0,.L0dadc0d4
    addu	$gp,$t9,$v1
    # Line 747
    # lw $t9, -32716($gp) # &sub_0dae0000
    addiu	$t9,$t9,-20552
    bal __glMgrFreeConvolutionState
    nop
    beqz	$v0,.L0dadc0f4
    ld	$ra,24($sp)
    # Line 753
    li	$at,0x8014
    beq	$s0,$at,.L0dadc114
    li	$v1,0x8015
    beq	$s0,$v1,.L0dadc16c
    li	$a3,0x8013
    beq	$s0,$a3,.L0dadc090
    # Line 783
    nop	# was lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 784
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dadc090:
    ld	$a0,0($sp)
    # Line 767
    lw	$a0,0($a0)
    li	$a4,0x8016
    beq	$a0,$a4,.L0dadc0c0
    # Line 768
    nop	# was lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 769
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dadc0c0:
    # Line 771
    sw	$a0,76($v0)
.L0dadc0c4:
    ld	$gp,8($sp)
    # Line 786
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dadc0d4:
    # Line 743
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 744
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dadc0f4:
    # Line 749
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 750
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dadc114:
    ld	$a3,0($sp)
    # Line 755
    lw	$v1,0($a3)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,44($v0)
    # Line 756
    lw	$at,4($a3)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,48($v0)
    # Line 757
    lw	$a4,8($a3)
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,52($v0)
    # Line 758
    lw	$a3,12($a3)
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 759
    b	.L0dadc0c4
    # Line 758
    swc1	$f0,56($v0)
.L0dadc16c:
    ld	$a3,0($sp)
    # Line 761
    lw	$v1,0($a3)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,60($v0)
    # Line 762
    lw	$at,4($a3)
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,64($v0)
    # Line 763
    lw	$a4,8($a3)
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,68($v0)
    # Line 764
    lw	$a3,12($a3)
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 765
    b	.L0dadc0c4
    # Line 764
    swc1	$f0,72($v0)
.end __glMgrim_ConvolutionParameterivEXT

# Function: __glMgrim_ConvolutionParameteriEXT
# Declared: Line 788 (Source lines: 791-800)
# Address: 0x0dadc1c4 - 0x0dadc220 (Size: 92 bytes, Frame: 192)
.globl __glMgrim_ConvolutionParameteriEXT
.ent __glMgrim_ConvolutionParameteriEXT
__glMgrim_ConvolutionParameteriEXT:
    # Line 792
    li	$at,0x8013
    # Line 791
    addiu	$sp,$sp,-64
    sd	$ra,16($sp)
    # Line 792
    sw	$a2,0($sp)
    sd	$gp,8($sp)
    # Line 791
    lui	$v0,0x12
    addiu	$v0,$v0,9428
    # Line 792
    beq	$a1,$at,.L0dadc204
    # Line 791
    addu	$gp,$t9,$v0
    # Line 796
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 797
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dadc204:
    # Line 799
    # lw $t9, -30392($gp) # &__glMgrim_ConvolutionParameterivEXT
    bal __glMgrim_ConvolutionParameterivEXT
    addiu	$a2,$sp,0
    # Line 800
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_ConvolutionParameteriEXT

# Function: __glMgrim_GetConvolutionFilterEXT
# Declared: Line 802 (Source lines: 806-915)
# Address: 0x0dadc220 - 0x0dadc554 (Size: 820 bytes, Frame: 144)
.globl __glMgrim_GetConvolutionFilterEXT
.ent __glMgrim_GetConvolutionFilterEXT
__glMgrim_GetConvolutionFilterEXT:
    # Line 806
    move	$v0,$a3
    # Line 807
    li	$a4,1
    # Line 806
    addiu	$sp,$sp,-656
    sd	$s1,568($sp)
    # Line 807
    lw	$s1,__glCurrentContext
    sd	$s0,584($sp)
    # Line 806
    move	$s0,$a1
    sd	$gp,576($sp)
    # Line 807
    lw	$at,__glBeginMode
    # Line 806
    lui	$v1,0x12
    addiu	$v1,$v1,9336
    # Line 807
    beq	$at,$a4,.L0dadc52c
    # Line 806
    addu	$gp,$t9,$v1
    # Line 815
    li	$a7,0x8011
    beq	$a0,$a7,.L0dadc268
    # Line 818
    li	$t0,0x8010
    bne	$a0,$t0,.L0dadc444
    # Line 820
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0dadc268:
    # Line 818
    beqz	$v0,.L0dadc440
    # Line 824
    sltiu	$a7,$s0,6404
    # Line 821
    sltiu	$at,$s0,6407
    bnez	$at,.L0dadc2a4
    # Line 824
    sltiu	$v1,$s0,6408
    bnez	$v1,.L0dadc2bc
    sltiu	$a7,$s0,6410
    bnez	$a7,.L0dadc4e8
    sltiu	$t0,$s0,6411
    bnez	$t0,.L0dadc2bc
    li	$at,0x8000
    beql	$s0,$at,.L0dadc2c0
    sd	$ra,592($sp)
    b	.L0dadc4b0
    sd	$ra,592($sp)
.L0dadc2a4:
    sltiu	$v1,$s0,6405
    bnez	$v1,.L0dadc48c
    nop
    sltiu	$a7,$s0,6406
    beqz	$a7,.L0dadc4d8
    li	$v1,6406
.L0dadc2bc:
    sd	$ra,592($sp)
.L0dadc2c0:
    sd	$v0,600($sp)
    sd	$a2,608($sp)
    # Line 838
    addiu	$a1,$a2,-5120
    la	$a7,sub_0dbf0000
    sltiu	$t0,$a1,7
    sll	$a1,$a1,0x2
    addiu	$a7,$a7,-5296
    beqz	$t0,.L0dadc468
    addu	$a1,$a1,$a7
    # Line 856
    # lw $t9, -32716($gp) # &sub_0dae0000
    addiu	$t9,$t9,-20552
    bal __glMgrFreeConvolutionState
    nop
    # Line 872
    lwc1	$f0,_lit_3f800000
    # Line 868
    lwc1	$f3,30808($s1)
    # Line 870
    lwc1	$f2,30844($s1)
    # Line 872
    swc1	$f0,30844($s1)
    # Line 869
    lwc1	$f1,30812($s1)
    # Line 872
    swc1	$f0,30812($s1)
    swc1	$f0,30808($s1)
    sdc1	$f2,560($sp)
    # Line 867
    lwc1	$f2,30804($s1)
    # Line 872
    swc1	$f0,30804($s1)
    sdc1	$f1,552($sp)
    # Line 866
    lwc1	$f1,30864($s1)
    # Line 872
    swc1	$f0,30864($s1)
    sdc1	$f3,544($sp)
    # Line 865
    lwc1	$f3,30860($s1)
    # Line 872
    swc1	$f0,30860($s1)
    sdc1	$f2,536($sp)
    # Line 864
    lwc1	$f2,30856($s1)
    # Line 872
    swc1	$f0,30856($s1)
    sdc1	$f1,528($sp)
    # Line 863
    lwc1	$f1,30852($s1)
    # Line 872
    swc1	$f0,30852($s1)
    ld	$a6,600($sp)
    # Line 881
    lw	$v1,0($v0)
    ld	$a5,608($sp)
    # Line 882
    li	$a7,0x8049
    # Line 881
    sw	$v1,8($sp)
    # Line 882
    li	$at,6409
    lw	$a0,12($v0)
    sdc1	$f3,520($sp)
    sdc1	$f2,512($sp)
    beq	$a0,$at,.L0dadc504
    sdc1	$f1,504($sp)
    beq	$a0,$a7,.L0dadc504
    li	$t0,6410
    beq	$a0,$t0,.L0dadc524
    li	$a7,1
    # Line 888
    lw	$at,12($v0)
    sw	$at,0($sp)
.L0dadc390:
    # Line 892
    move	$a4,$s0
    # Line 891
    lw	$v1,4($v0)
    # Line 892
    addiu	$a1,$sp,0
    # lw $t9, -26888($gp) # &__glInitImagePack
    # Line 891
    sw	$v1,4($sp)
    # Line 892
    move	$a0,$s1
    lw	$a3,20($v0)
    jal	__glInitImagePack
    lw	$a2,16($v0)
    # Line 898
    # lw $t9, -29076($gp) # &__glInitPacker
    move	$a0,$s1
    jal	__glInitPacker
    addiu	$a1,$sp,0
    # Line 899
    # lw $t9, -28576($gp) # &__glInitUnpacker
    move	$a0,$s1
    jal	__glInitUnpacker
    addiu	$a1,$sp,0
    # Line 904
    lw	$t9,12632($s1)
    move	$a0,$s1
    move	$a2,$zero
    jalr	$t9
    addiu	$a1,$sp,0
    ld	$gp,576($sp)
    # Line 915
    ld	$s0,584($sp)
    # Line 911
    ldc1	$f2,536($sp)
    # Line 910
    ldc1	$f1,528($sp)
    # Line 915
    ld	$ra,592($sp)
    # Line 911
    swc1	$f2,30804($s1)
    # Line 910
    swc1	$f1,30864($s1)
    # Line 913
    ldc1	$f4,552($sp)
    # Line 912
    ldc1	$f3,544($sp)
    ldc1	$f0,560($sp)
    # Line 913
    swc1	$f4,30812($s1)
    # Line 908
    ldc1	$f4,512($sp)
    # Line 914
    swc1	$f0,30844($s1)
    # Line 909
    ldc1	$f0,520($sp)
    # Line 912
    swc1	$f3,30808($s1)
    # Line 907
    ldc1	$f3,504($sp)
    # Line 909
    swc1	$f0,30860($s1)
    # Line 908
    swc1	$f4,30856($s1)
    # Line 907
    swc1	$f3,30852($s1)
    # Line 915
    ld	$s1,568($sp)
    jr	$ra
    addiu	$sp,$sp,656
.L0dadc440:
    # Line 820
    # lw $t9, -27320($gp) # &__glSetError
.L0dadc444:
    sd	$ra,592($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,576($sp)
    # Line 821
    ld	$ra,592($sp)
    ld	$s0,584($sp)
    ld	$s1,568($sp)
    jr	$ra
    addiu	$sp,$sp,656
.L0dadc468:
    # Line 852
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,576($sp)
    # Line 853
    ld	$ra,592($sp)
    ld	$s0,584($sp)
    ld	$s1,568($sp)
    jr	$ra
    addiu	$sp,$sp,656
.L0dadc48c:
    # Line 824
    bnez	$a7,.L0dadc4a4
    sltiu	$t0,$s0,6405
    beqz	$t0,.L0dadc4b4
    # Line 836
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dadc2c0
    sd	$ra,592($sp)
.L0dadc4a4:
    # Line 824
    li	$at,6403
    beql	$s0,$at,.L0dadc2c0
    sd	$ra,592($sp)
.L0dadc4b0:
    # Line 836
    # lw $t9, -27320($gp) # &__glSetError
.L0dadc4b4:
    sd	$ra,592($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,576($sp)
    # Line 837
    ld	$ra,592($sp)
    ld	$s0,584($sp)
    ld	$s1,568($sp)
    jr	$ra
    addiu	$sp,$sp,656
.L0dadc4d8:
    # Line 824
    bne	$s0,$v1,.L0dadc4b4
    # Line 836
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dadc2c0
    sd	$ra,592($sp)
.L0dadc4e8:
    # Line 824
    sltiu	$a7,$s0,6409
    bnez	$a7,.L0dadc510
    sltiu	$t0,$s0,6410
    beqz	$t0,.L0dadc4b4
    # Line 836
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dadc2c0
    sd	$ra,592($sp)
.L0dadc504:
    # Line 884
    li	$at,6403
    # Line 885
    b	.L0dadc390
    # Line 884
    sw	$at,0($sp)
.L0dadc510:
    # Line 824
    li	$v1,6408
    bne	$s0,$v1,.L0dadc4b4
    # Line 836
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dadc2c0
    sd	$ra,592($sp)
.L0dadc524:
    # Line 887
    b	.L0dadc390
    # Line 886
    sw	$a7,0($sp)
.L0dadc52c:
    # Line 814
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,592($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,576($sp)
    # Line 815
    ld	$ra,592($sp)
    ld	$s0,584($sp)
    ld	$s1,568($sp)
    jr	$ra
    addiu	$sp,$sp,656
.end __glMgrim_GetConvolutionFilterEXT

# Function: __glMgrim_GetConvolutionParameterfvEXT
# Declared: Line 917 (Source lines: 920-1013)
# Address: 0x0dadc554 - 0x0dadc77c (Size: 552 bytes, Frame: 208)
.globl __glMgrim_GetConvolutionParameterfvEXT
.ent __glMgrim_GetConvolutionParameterfvEXT
__glMgrim_GetConvolutionParameterfvEXT:
    # Line 920
    li	$v0,1
    addiu	$sp,$sp,-80
    sd	$ra,32($sp)
    sd	$a2,0($sp)
    sd	$s1,16($sp)
    move	$s1,$a1
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$gp,8($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x12
    addiu	$v1,$v1,8516
    beq	$at,$v0,.L0dadc734
    addu	$gp,$t9,$v1
    # Line 931
    # lw $t9, -32716($gp) # &sub_0dae0000
    addiu	$t9,$t9,-20552
    bal __glMgrFreeConvolutionState
    move	$a0,$s0
    # Line 941
    lui	$a0,0xffff
    # Line 931
    beqz	$v0,.L0dadc758
    ld	$ra,32($sp)
    # Line 934
    li	$at,0x8010
    beq	$s0,$at,.L0dadc608
    # Line 937
    li	$a4,0x8019
    # Line 941
    ori	$a0,$a0,0x7fed
.L0dadc5b8:
    addu	$a0,$s1,$a0
    # Line 1013
    ld	$s1,16($sp)
    # Line 941
    la	$a3,sub_0dbf0000
    sltiu	$a4,$a0,9
    sll	$a0,$a0,0x2
    addiu	$a3,$a3,-5264
    beqz	$a4,.L0dadc5e4
    addu	$a0,$a0,$a3
    lw	$a3,%lo(jtbl_0dbeeb70)($a0)
    jr	$a3
    # Line 978
    ld	$a4,0($sp)
.L0dadc5e4:
    # Line 1010
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,8($sp)
    # Line 1011
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dadc608:
    # Line 937
    beq	$s1,$a4,.L0dadc618
    li	$at,0x801b
    bne	$s1,$at,.L0dadc5b8
    # Line 941
    ori	$a0,$a0,0x7fed
.L0dadc618:
    # Line 940
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,8($sp)
    # Line 941
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dadc63c:
    # Line 946
    ld	$v1,0($sp)
    lwc1	$f3,44($v0)
    swc1	$f3,0($v1)
    # Line 947
    lwc1	$f2,48($v0)
    swc1	$f2,4($v1)
    # Line 948
    lwc1	$f1,52($v0)
    swc1	$f1,8($v1)
    # Line 949
    lwc1	$f0,56($v0)
    # Line 950
    b	.L0dadc67c
    # Line 949
    swc1	$f0,12($v1)
.L0dadc664:
    # Line 975
    lw	$a4,20($v0)
    mtc1	$a4,$f0
    nop
    cvt.s.w	$f0,$f0
    ld	$a3,0($sp)
    swc1	$f0,0($a3)
.L0dadc67c:
    # Line 1013
    ld	$s0,24($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dadc68c:
    # Line 952
    ld	$at,0($sp)
    lwc1	$f0,60($v0)
    swc1	$f0,0($at)
    # Line 953
    lwc1	$f3,64($v0)
    swc1	$f3,4($at)
    # Line 954
    lwc1	$f2,68($v0)
    swc1	$f2,8($at)
    # Line 955
    lwc1	$f1,72($v0)
    # Line 956
    b	.L0dadc67c
    # Line 955
    swc1	$f1,12($at)
.L0dadc6b4:
    # Line 958
    lw	$a3,76($v0)
    dsll32	$a3,$a3,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f1
    nop
    cvt.s.l	$f1,$f1
    ld	$v1,0($sp)
    # Line 959
    b	.L0dadc67c
    # Line 958
    swc1	$f1,0($v1)
.L0dadc6d8:
    # Line 969
    lw	$at,12($v0)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f2
    nop
    cvt.s.l	$f2,$f2
    ld	$a4,0($sp)
    # Line 970
    b	.L0dadc67c
    # Line 969
    swc1	$f2,0($a4)
.L0dadc6fc:
    # Line 972
    ld	$v1,0($sp)
    lw	$a3,16($v0)
    mtc1	$a3,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 973
    b	.L0dadc67c
    # Line 972
    swc1	$f3,0($v1)
.L0dadc718:
    # Line 978
    lwc1	$f0,_lit_40e00000
    # Line 979
    b	.L0dadc67c
    # Line 978
    swc1	$f0,0($a4)
.L0dadc724:
    # Line 981
    ld	$at,0($sp)
    lwc1	$f1,_lit_40e00000
    # Line 982
    b	.L0dadc67c
    # Line 981
    swc1	$f1,0($at)
.L0dadc734:
    # Line 927
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,8($sp)
    # Line 928
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dadc758:
    # Line 933
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,8($sp)
    # Line 934
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrim_GetConvolutionParameterfvEXT

# Function: __glMgrim_GetConvolutionParameterivEXT
# Declared: Line 1015 (Source lines: 1018-1111)
# Address: 0x0dadc77c - 0x0dadc9bc (Size: 576 bytes, Frame: 208)
.globl __glMgrim_GetConvolutionParameterivEXT
.ent __glMgrim_GetConvolutionParameterivEXT
__glMgrim_GetConvolutionParameterivEXT:
    # Line 1018
    li	$v0,1
    addiu	$sp,$sp,-80
    sd	$ra,32($sp)
    sd	$a2,0($sp)
    sd	$s1,16($sp)
    move	$s1,$a1
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$gp,8($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x12
    addiu	$v1,$v1,7964
    beq	$at,$v0,.L0dadc974
    addu	$gp,$t9,$v1
    # Line 1029
    # lw $t9, -32716($gp) # &sub_0dae0000
    addiu	$t9,$t9,-20552
    bal __glMgrFreeConvolutionState
    move	$a0,$s0
    # Line 1039
    lui	$a0,0xffff
    # Line 1029
    beqz	$v0,.L0dadc998
    ld	$ra,32($sp)
    # Line 1032
    li	$at,0x8010
    beq	$s0,$at,.L0dadc834
    # Line 1035
    li	$a4,0x8019
    # Line 1039
    ori	$a0,$a0,0x7fed
.L0dadc7e0:
    addu	$a0,$s1,$a0
    # Line 1111
    ld	$s1,16($sp)
    # Line 1039
    la	$a3,sub_0dbf0000
    sltiu	$a4,$a0,9
    sll	$a0,$a0,0x2
    addiu	$a3,$a3,-5224
    beqz	$a4,.L0dadc810
    addu	$a0,$a0,$a3
    lw	$a3,%lo(jtbl_0dbeeb98)($a0)
    # Line 1067
    ld	$at,0($sp)
    # Line 1039
    jr	$a3
    # Line 1073
    ld	$a4,0($sp)
.L0dadc810:
    # Line 1108
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,8($sp)
    # Line 1109
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dadc834:
    # Line 1035
    beq	$s1,$a4,.L0dadc844
    li	$at,0x801b
    bne	$s1,$at,.L0dadc7e0
    # Line 1039
    ori	$a0,$a0,0x7fed
.L0dadc844:
    # Line 1038
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,8($sp)
    # Line 1039
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dadc868:
    # Line 1044
    lwc1	$f3,44($v0)
    trunc.w.s	$f3,$f3
    ld	$a3,0($sp)
    mfc1	$v1,$f3
    nop
    sw	$v1,0($a3)
    # Line 1045
    lwc1	$f2,48($v0)
    trunc.w.s	$f2,$f2
    mfc1	$at,$f2
    nop
    sw	$at,4($a3)
    # Line 1046
    lwc1	$f1,52($v0)
    trunc.w.s	$f1,$f1
    mfc1	$a4,$f1
    nop
    sw	$a4,8($a3)
    # Line 1047
    lwc1	$f0,56($v0)
    trunc.w.s	$f0,$f0
    mfc1	$v1,$f0
    # Line 1048
    b	.L0dadc8c4
    # Line 1047
    sw	$v1,12($a3)
.L0dadc8bc:
    # Line 1073
    lw	$a3,20($v0)
    sw	$a3,0($a4)
.L0dadc8c4:
    # Line 1111
    ld	$s0,24($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dadc8d4:
    # Line 1050
    lwc1	$f3,60($v0)
    trunc.w.s	$f3,$f3
    ld	$v1,0($sp)
    mfc1	$at,$f3
    nop
    sw	$at,0($v1)
    # Line 1051
    lwc1	$f2,64($v0)
    trunc.w.s	$f2,$f2
    mfc1	$a4,$f2
    nop
    sw	$a4,4($v1)
    # Line 1052
    lwc1	$f1,68($v0)
    trunc.w.s	$f1,$f1
    mfc1	$a3,$f1
    nop
    sw	$a3,8($v1)
    # Line 1053
    lwc1	$f0,72($v0)
    trunc.w.s	$f0,$f0
    mfc1	$at,$f0
    # Line 1054
    b	.L0dadc8c4
    # Line 1053
    sw	$at,12($v1)
.L0dadc928:
    # Line 1056
    ld	$a3,0($sp)
    lw	$v1,76($v0)
    # Line 1057
    b	.L0dadc8c4
    # Line 1056
    sw	$v1,0($a3)
.L0dadc938:
    # Line 1067
    lw	$a4,12($v0)
    # Line 1068
    b	.L0dadc8c4
    # Line 1067
    sw	$a4,0($at)
.L0dadc944:
    # Line 1070
    ld	$a3,0($sp)
    lw	$v1,16($v0)
    # Line 1071
    b	.L0dadc8c4
    # Line 1070
    sw	$v1,0($a3)
.L0dadc954:
    # Line 1076
    li	$a4,7
    ld	$at,0($sp)
    # Line 1077
    b	.L0dadc8c4
    # Line 1076
    sw	$a4,0($at)
.L0dadc964:
    # Line 1079
    li	$v1,7
    ld	$a3,0($sp)
    # Line 1080
    b	.L0dadc8c4
    # Line 1079
    sw	$v1,0($a3)
.L0dadc974:
    # Line 1025
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,8($sp)
    # Line 1026
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dadc998:
    # Line 1031
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,8($sp)
    # Line 1032
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrim_GetConvolutionParameterivEXT

# Function: __glMgrim_GetSeparableFilterEXT
# Declared: Line 1114 (Source lines: 1121-1262)
# Address: 0x0dadc9bc - 0x0dadcde8 (Size: 1068 bytes, Frame: 176)
.globl __glMgrim_GetSeparableFilterEXT
.ent __glMgrim_GetSeparableFilterEXT
__glMgrim_GetSeparableFilterEXT:
    # Line 1121
    move	$v0,$a2
    # Line 1122
    li	$a5,1
    # Line 1121
    addiu	$sp,$sp,-688
    sd	$s1,584($sp)
    # Line 1122
    lw	$s1,__glCurrentContext
    sd	$s0,592($sp)
    # Line 1121
    move	$s0,$a1
    sd	$gp,600($sp)
    # Line 1122
    lw	$at,__glBeginMode
    # Line 1121
    lui	$v1,0x12
    addiu	$v1,$v1,7388
    # Line 1122
    beq	$at,$a5,.L0dadcdc0
    # Line 1121
    addu	$gp,$t9,$v1
    # Line 1133
    li	$a7,0x8012
    bne	$a0,$a7,.L0dadcbc8
    # Line 1136
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1133
    beqz	$a3,.L0dadcbc8
    # Line 1136
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1133
    beqz	$a4,.L0dadcbc4
    # Line 1137
    sltiu	$t0,$s0,6407
    bnez	$t0,.L0dadca3c
    # Line 1140
    sltiu	$at,$s0,6408
    bnez	$at,.L0dadca50
    sltiu	$v1,$s0,6410
    bnez	$v1,.L0dadcd30
    sltiu	$a7,$s0,6411
    bnez	$a7,.L0dadca50
    li	$t0,0x8000
    beql	$s0,$t0,.L0dadca54
    sd	$ra,624($sp)
    b	.L0dadccf8
    sd	$ra,624($sp)
.L0dadca3c:
    sltiu	$at,$s0,6405
    bnez	$at,.L0dadcc10
    sltiu	$v1,$s0,6406
    beqz	$v1,.L0dadcd20
    li	$t0,6406
.L0dadca50:
    sd	$ra,624($sp)
.L0dadca54:
    sd	$v0,576($sp)
    sd	$a3,608($sp)
    sd	$a4,616($sp)
    # Line 1154
    addiu	$a1,$v0,-5120
    la	$t0,sub_0dbf0000
    sltiu	$a7,$a1,7
    sll	$a1,$a1,0x2
    addiu	$t0,$t0,-5184
    beqz	$a7,.L0dadcbec
    addu	$a1,$a1,$t0
    # Line 1175
    # lw $t9, -32716($gp) # &sub_0dae0000
    addiu	$t9,$t9,-20552
    bal __glMgrFreeConvolutionState
    nop
    # Line 1183
    lwc1	$f3,30808($s1)
    # Line 1187
    lwc1	$f0,_lit_3f800000
    sdc1	$f3,544($sp)
    # Line 1180
    lwc1	$f3,30860($s1)
    # Line 1184
    lwc1	$f1,30812($s1)
    # Line 1187
    swc1	$f0,30860($s1)
    # Line 1185
    lwc1	$f2,30844($s1)
    sdc1	$f1,552($sp)
    # Line 1181
    lwc1	$f1,30864($s1)
    # Line 1187
    swc1	$f0,30864($s1)
    sdc1	$f2,560($sp)
    # Line 1182
    lwc1	$f2,30804($s1)
    # Line 1187
    swc1	$f0,30804($s1)
    swc1	$f0,30808($s1)
    swc1	$f0,30812($s1)
    swc1	$f0,30844($s1)
    sdc1	$f1,528($sp)
    # Line 1178
    lwc1	$f1,30852($s1)
    # Line 1187
    swc1	$f0,30852($s1)
    sdc1	$f2,536($sp)
    # Line 1179
    lwc1	$f2,30856($s1)
    # Line 1187
    swc1	$f0,30856($s1)
    # Line 1196
    lw	$v1,0($v0)
    ld	$t1,608($sp)
    # Line 1197
    li	$a7,0x8049
    # Line 1196
    sw	$v1,8($sp)
    # Line 1197
    li	$at,6409
    lw	$a0,12($v0)
    sdc1	$f3,520($sp)
    sdc1	$f2,512($sp)
    beq	$a0,$at,.L0dadcd4c
    sdc1	$f1,504($sp)
    beq	$a0,$a7,.L0dadcd4c
    li	$t0,6410
    beql	$a0,$t0,.L0dadcdb4
    sd	$v0,568($sp)
    # Line 1203
    lw	$at,12($v0)
    sd	$v0,568($sp)
    sw	$at,0($sp)
.L0dadcb28:
    # Line 1207
    move	$a6,$t1
    ld	$a5,576($sp)
    move	$a4,$s0
    # Line 1206
    ld	$a2,568($sp)
    # Line 1207
    li	$a3,1
    addiu	$a1,$sp,0
    # Line 1206
    lw	$a7,4($a2)
    # Line 1207
    # lw $t9, -26888($gp) # &__glInitImagePack
    move	$a0,$s1
    # Line 1206
    sw	$a7,4($sp)
    # Line 1207
    jal	__glInitImagePack
    lw	$a2,16($a2)
    # Line 1213
    # lw $t9, -29076($gp) # &__glInitPacker
    move	$a0,$s1
    jal	__glInitPacker
    addiu	$a1,$sp,0
    # Line 1214
    # lw $t9, -28576($gp) # &__glInitUnpacker
    move	$a0,$s1
    jal	__glInitUnpacker
    addiu	$a1,$sp,0
    # Line 1219
    lw	$t9,12632($s1)
    move	$a0,$s1
    move	$a2,$zero
    jalr	$t9
    addiu	$a1,$sp,0
    ld	$t1,568($sp)
    la	$a6,sub_0dbf0000
    lw	$a0,0($sp)
    ld	$v0,576($sp)
    addiu	$a6,$a6,-5152
    addiu	$a0,$a0,-5120
    sltiu	$t0,$a0,7
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a6
    beqz	$t0,.L0dadcc40
    ld	$a6,616($sp)
    lw	$a7,%lo(jtbl_0dbeebe0)($a0)
    jr	$a7
    nop
.L0dadcbc4:
    # Line 1136
    # lw $t9, -27320($gp) # &__glSetError
.L0dadcbc8:
    sd	$ra,624($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,600($sp)
    # Line 1137
    ld	$ra,624($sp)
    ld	$s0,592($sp)
    ld	$s1,584($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0dadcbec:
    # Line 1168
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,600($sp)
    # Line 1169
    ld	$ra,624($sp)
    ld	$s0,592($sp)
    ld	$s1,584($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0dadcc10:
    # Line 1140
    sltiu	$t0,$s0,6404
    bnez	$t0,.L0dadccec
    sltiu	$at,$s0,6405
    beqz	$at,.L0dadccfc
    # Line 1152
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dadca54
    sd	$ra,624($sp)
.L0dadcc2c:
    # Line 1230
    lw	$v1,16($t1)
    lw	$a7,8($sp)
    addu	$v1,$v1,$v1
    addu	$v1,$v1,$a7
    sw	$v1,8($sp)
.L0dadcc40:
    # Line 1243
    move	$a0,$s1
    move	$a5,$v0
    move	$a4,$s0
    # lw $t9, -26888($gp) # &__glInitImagePack
    li	$a3,1
    lw	$a2,20($t1)
    jal	__glInitImagePack
    addiu	$a1,$sp,0
    # Line 1249
    # lw $t9, -29076($gp) # &__glInitPacker
    move	$a0,$s1
    jal	__glInitPacker
    addiu	$a1,$sp,0
    # Line 1250
    # lw $t9, -28576($gp) # &__glInitUnpacker
    move	$a0,$s1
    jal	__glInitUnpacker
    addiu	$a1,$sp,0
    # Line 1251
    lw	$t9,12632($s1)
    move	$a0,$s1
    move	$a2,$zero
    jalr	$t9
    addiu	$a1,$sp,0
    ld	$gp,600($sp)
    # Line 1262
    ld	$s0,592($sp)
    # Line 1258
    ldc1	$f2,536($sp)
    # Line 1257
    ldc1	$f1,528($sp)
    # Line 1262
    ld	$ra,624($sp)
    # Line 1258
    swc1	$f2,30804($s1)
    # Line 1257
    swc1	$f1,30864($s1)
    # Line 1260
    ldc1	$f4,552($sp)
    # Line 1259
    ldc1	$f3,544($sp)
    ldc1	$f0,560($sp)
    # Line 1260
    swc1	$f4,30812($s1)
    # Line 1255
    ldc1	$f4,512($sp)
    # Line 1261
    swc1	$f0,30844($s1)
    # Line 1256
    ldc1	$f0,520($sp)
    # Line 1259
    swc1	$f3,30808($s1)
    # Line 1254
    ldc1	$f3,504($sp)
    # Line 1256
    swc1	$f0,30860($s1)
    # Line 1255
    swc1	$f4,30856($s1)
    # Line 1254
    swc1	$f3,30852($s1)
    # Line 1262
    ld	$s1,584($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0dadccec:
    # Line 1140
    li	$a7,6403
    beql	$s0,$a7,.L0dadca54
    sd	$ra,624($sp)
.L0dadccf8:
    # Line 1152
    # lw $t9, -27320($gp) # &__glSetError
.L0dadccfc:
    sd	$ra,624($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,600($sp)
    # Line 1153
    ld	$ra,624($sp)
    ld	$s0,592($sp)
    ld	$s1,584($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0dadcd20:
    # Line 1140
    bne	$s0,$t0,.L0dadccfc
    # Line 1152
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dadca54
    sd	$ra,624($sp)
.L0dadcd30:
    # Line 1140
    sltiu	$at,$s0,6409
    bnez	$at,.L0dadcda0
    sltiu	$v1,$s0,6410
    beqz	$v1,.L0dadccfc
    # Line 1152
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dadca54
    sd	$ra,624($sp)
.L0dadcd4c:
    sd	$v0,568($sp)
    # Line 1199
    li	$a7,6403
    # Line 1200
    b	.L0dadcb28
    # Line 1199
    sw	$a7,0($sp)
.L0dadcd5c:
    # Line 1225
    lw	$t0,16($t1)
    lw	$at,8($sp)
    addu	$t0,$t0,$at
    # Line 1227
    b	.L0dadcc40
    # Line 1225
    sw	$t0,8($sp)
.L0dadcd70:
    # Line 1235
    lw	$v1,16($t1)
    lw	$a7,8($sp)
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a7
    # Line 1237
    b	.L0dadcc40
    # Line 1235
    sw	$v1,8($sp)
.L0dadcd88:
    # Line 1239
    lw	$a7,16($t1)
    lw	$t0,8($sp)
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$t0
    b	.L0dadcc40
    sw	$a7,8($sp)
.L0dadcda0:
    # Line 1140
    li	$t0,6408
    bne	$s0,$t0,.L0dadccfc
    # Line 1152
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dadca54
    sd	$ra,624($sp)
.L0dadcdb4:
    li	$at,1
    # Line 1202
    b	.L0dadcb28
    # Line 1201
    sw	$at,0($sp)
.L0dadcdc0:
    # Line 1129
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,624($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,600($sp)
    # Line 1130
    ld	$ra,624($sp)
    ld	$s0,592($sp)
    ld	$s1,584($sp)
    jr	$ra
    addiu	$sp,$sp,688
.end __glMgrim_GetSeparableFilterEXT

# Function: __glMgrim_CopyConvolutionFilter1DEXT
# Declared: Line 1264 (Source lines: 1269-1300)
# Address: 0x0dadcde8 - 0x0dadcef8 (Size: 272 bytes, Frame: 128)
.globl __glMgrim_CopyConvolutionFilter1DEXT
.ent __glMgrim_CopyConvolutionFilter1DEXT
__glMgrim_CopyConvolutionFilter1DEXT:
    # Line 1275
    li	$v0,1
    # Line 1269
    addiu	$sp,$sp,-128
    sd	$ra,56($sp)
    sd	$s2,32($sp)
    # Line 1275
    lw	$s2,__glCurrentContext
    sd	$s0,40($sp)
    # Line 1269
    move	$s0,$a4
    sd	$a3,24($sp)
    sd	$a2,0($sp)
    sd	$a1,16($sp)
    sd	$a0,8($sp)
    sd	$gp,48($sp)
    # Line 1275
    lw	$at,__glBeginMode
    # Line 1269
    lui	$v1,0x12
    addiu	$v1,$v1,6320
    # Line 1275
    beq	$at,$v0,.L0dadced4
    # Line 1269
    addu	$gp,$t9,$v1
    # Line 1284
    lw	$t9,0($s2)
    sd	$s1,64($sp)
    move	$a0,$s2
    jalr	$t9
    sll	$a1,$s0,0x2
    beqz	$v0,.L0dadceb8
    move	$s1,$v0
    ld	$a0,0($sp)
.L0dadce4c:
    # Line 1294
    ld	$a1,24($sp)
    move	$a2,$s0
    move	$a6,$s1
    # lw $t9, -31852($gp) # &__glMgrim_ReadPixels
    li	$a5,5121
    li	$a4,6408
    jal	__glMgrim_ReadPixels
    li	$a3,1
    ld	$a0,8($sp)
    # Line 1296
    ld	$a1,16($sp)
    move	$a2,$s0
    # lw $t9, -30412($gp) # &__glMgrim_ConvolutionFilter1DEXT
    move	$a5,$s1
    li	$a4,5121
    bal __glMgrim_ConvolutionFilter1DEXT
    li	$a3,6408
    # Line 1299
    lw	$t9,12($s2)
    move	$a0,$s2
    jal	__glMgrim_ConvolutionFilter1DEXT
    move	$a1,$s1
    ld	$gp,48($sp)
    # Line 1300
    ld	$s0,40($sp)
    ld	$ra,56($sp)
    ld	$s1,64($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dadceb8:
    # Line 1286
    lw	$t9,20($s2)
    la	$a1,sub_0dbf0000
    move	$a0,$s2
    jalr	$t9
    addiu	$a1,$a1,-5120
    b	.L0dadce4c
    ld	$a0,0($sp)
.L0dadced4:
    # Line 1275
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,48($sp)
    ld	$ra,56($sp)
    ld	$s0,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glMgrim_CopyConvolutionFilter1DEXT

# Function: __glMgrim_CopyConvolutionFilter2DEXT
# Declared: Line 1302 (Source lines: 1308-1340)
# Address: 0x0dadcef8 - 0x0dadd024 (Size: 300 bytes, Frame: 128)
.globl __glMgrim_CopyConvolutionFilter2DEXT
.ent __glMgrim_CopyConvolutionFilter2DEXT
__glMgrim_CopyConvolutionFilter2DEXT:
    # Line 1314
    li	$v0,1
    # Line 1308
    addiu	$sp,$sp,-128
    sd	$ra,64($sp)
    sd	$s3,56($sp)
    # Line 1314
    lw	$s3,__glCurrentContext
    sd	$s1,40($sp)
    # Line 1308
    move	$s1,$a5
    sd	$s0,32($sp)
    move	$s0,$a4
    sd	$a3,8($sp)
    sd	$a2,0($sp)
    sd	$a1,24($sp)
    sd	$a0,16($sp)
    sd	$gp,48($sp)
    # Line 1314
    lw	$at,__glBeginMode
    # Line 1308
    lui	$v1,0x12
    addiu	$v1,$v1,6048
    # Line 1314
    beq	$at,$v0,.L0dadcffc
    # Line 1308
    addu	$gp,$t9,$v1
    # Line 1323
    mult	$s0,$s1
    sd	$s2,72($sp)
    lw	$t9,0($s3)
    move	$a0,$s3
    mflo	$a1
    jalr	$t9
    sll	$a1,$a1,0x2
    beqz	$v0,.L0dadcfe0
    move	$s2,$v0
    ld	$a0,0($sp)
.L0dadcf6c:
    # Line 1333
    ld	$a1,8($sp)
    move	$a2,$s0
    move	$a3,$s1
    # lw $t9, -31852($gp) # &__glMgrim_ReadPixels
    move	$a6,$s2
    li	$a5,5121
    jal	__glMgrim_ReadPixels
    li	$a4,6408
    ld	$a0,16($sp)
    # Line 1335
    ld	$a1,24($sp)
    move	$a2,$s0
    move	$a3,$s1
    # lw $t9, -30408($gp) # &__glMgrim_ConvolutionFilter2DEXT
    move	$a6,$s2
    li	$a5,5121
    bal __glMgrim_ConvolutionFilter2DEXT
    li	$a4,6408
    # Line 1339
    lw	$t9,12($s3)
    move	$a0,$s3
    jal	__glMgrim_ConvolutionFilter2DEXT
    move	$a1,$s2
    ld	$gp,48($sp)
    # Line 1340
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$ra,64($sp)
    ld	$s2,72($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dadcfe0:
    # Line 1325
    lw	$t9,20($s3)
    la	$a1,sub_0dbf0000
    move	$a0,$s3
    jalr	$t9
    addiu	$a1,$a1,-5048
    b	.L0dadcf6c
    ld	$a0,0($sp)
.L0dadcffc:
    # Line 1314
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,48($sp)
    ld	$s0,32($sp)
    ld	$ra,64($sp)
    ld	$s1,40($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glMgrim_CopyConvolutionFilter2DEXT

.late_rodata
jtbl_0dbeeaf0:
    .word .L0dadb3f4
    .word .L0dadb3f4
    .word .L0dadb3f4
    .word .L0dadb3f4
    .word .L0dadb3f4
    .word .L0dadb3f4
    .word .L0dadb408
jtbl_0dbeeb10:
    .word .L0dadb7dc
    .word .L0dadb7dc
    .word .L0dadb7dc
    .word .L0dadb7dc
    .word .L0dadb7dc
    .word .L0dadb7dc
    .word .L0dadb7f0
jtbl_0dbeeb30:
    .word .L0dadbc54
    .word .L0dadbc54
    .word .L0dadbc68
    .word .L0dadbc68
    .word .L0dadbd6c
    .word .L0dadbd6c
    .word .L0dadbd84
jtbl_0dbeeb70:
    .word .L0dadc6b4
    .word .L0dadc63c
    .word .L0dadc68c
    .word .L0dadc5e4
    .word .L0dadc6d8
    .word .L0dadc6fc
    .word .L0dadc664
    .word .L0dadc718
    .word .L0dadc724
jtbl_0dbeeb98:
    .word .L0dadc928
    .word .L0dadc868
    .word .L0dadc8d4
    .word .L0dadc810
    .word .L0dadc938
    .word .L0dadc944
    .word .L0dadc8bc
    .word .L0dadc954
    .word .L0dadc964
jtbl_0dbeebe0:
    .word .L0dadcd5c
    .word .L0dadcd5c
    .word .L0dadcc2c
    .word .L0dadcc2c
    .word .L0dadcd70
    .word .L0dadcd70
    .word .L0dadcd88

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_40e00000:
    .word 0x40e00000
_lit_47001600:
    .word 0x47001600

