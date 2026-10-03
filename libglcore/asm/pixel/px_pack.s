# Source: ../pixel/px_pack.c
# Category: pixel
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../pixel/px_pack.c
# Total Functions: 45

.text

# Function: __glInitPacker
# Declared: Line 33 (Source lines: 34-99)
# Address: 0x0db0a0f8 - 0x0db0a2d0 (Size: 472 bytes, Frame: 240)
.globl __glInitPacker
.ent __glInitPacker
__glInitPacker:
    # Line 55
    lw	$a0,80($a1)
    # Line 34
    addiu	$sp,$sp,-112
    sd	$s2,72($sp)
    sd	$s5,80($sp)
    sd	$s0,56($sp)
    move	$s0,$a1
    sd	$s6,8($sp)
    # Line 53
    lw	$s6,120($a1)
    sd	$s4,0($sp)
    # Line 52
    lw	$s4,148($a1)
    sd	$s7,32($sp)
    # Line 51
    lw	$s7,132($a1)
    sd	$s3,40($sp)
    # Line 50
    lw	$s3,128($a1)
    sd	$s8,16($sp)
    # Line 49
    lw	$s8,88($a1)
    sd	$s1,24($sp)
    sd	$gp,64($sp)
    # Line 34
    lui	$at,0xf
    addiu	$at,$at,17824
    addu	$gp,$t9,$at
    # Line 55
    # lw $t9, -28584($gp) # &__glSpecElementsPerGroup
    # Line 48
    lw	$s1,84($a1)
    sd	$ra,48($sp)
    # Line 55
    jal	__glSpecElementsPerGroup
    move	$a1,$s1
    # Line 58
    # lw $t9, -28580($gp) # &__glSpecBytesPerElement
    # Line 55
    move	$s2,$v0
    # Line 58
    move	$a0,$s1
    jal	__glSpecBytesPerElement
    # Line 56
    lw	$s5,140($s0)
    # Line 58
    li	$a5,1
    beq	$v0,$a5,.L0db0a274
    ld	$ra,48($sp)
.L0db0a180:
    # Line 62
    mult	$v0,$s2
    mflo	$a1
    nop
    nop
    mult	$a1,$s5
    li	$a6,6656
    mflo	$a0
    beq	$a6,$s1,.L0db0a27c
    # Line 64
    addiu	$a2,$s5,7
.L0db0a1a4:
    div	$zero,$a0,$s4
    teq	$s4,$zero,0x7
    # Line 68
    andi	$a2,$s3,0x7
    # Line 64
    mfhi	$a4
    beqz	$a4,.L0db0a1c4
    ld	$s5,80($sp)
    # Line 68
    subu	$v1,$s4,$a4
    addu	$a0,$v1,$a0
.L0db0a1c4:
    beqz	$a2,.L0db0a1d0
    ld	$s4,0($sp)
    # Line 70
    beq	$a6,$s1,.L0db0a1e8
.L0db0a1d0:
    move	$a3,$s6
    beqz	$a3,.L0db0a1f4
    ld	$s6,8($sp)
    slti	$at,$v0,2
    bnez	$at,.L0db0a1f4
    ld	$s6,8($sp)
.L0db0a1e8:
    # Line 72
    sb	$zero,152($s0)
    b	.L0db0a1f8
    ld	$s6,8($sp)
.L0db0a1f4:
    # Line 74
    sb	$a5,152($s0)
.L0db0a1f8:
    mult	$s7,$a0
    ld	$gp,64($sp)
    ld	$s7,32($sp)
    # Line 78
    sra	$a3,$s3,0x1f
    xor	$a2,$s3,$a3
    # Line 74
    mflo	$a4
    beq	$a6,$s1,.L0db0a290
    addu	$a4,$a4,$s8
    # Line 82
    mult	$a1,$s3
    ld	$s8,16($sp)
    mflo	$s1
    addu	$s1,$s1,$a4
    sw	$s1,92($s0)
    ld	$s1,24($sp)
.L0db0a230:
    # Line 98
    sb	$zero,430($s0)
    # Line 97
    sb	$zero,429($s0)
    # Line 96
    sb	$a5,428($s0)
    # Line 95
    sb	$zero,427($s0)
    # Line 94
    sb	$a5,425($s0)
    # Line 93
    sb	$zero,424($s0)
    # Line 90
    sw	$zero,104($s0)
    # Line 89
    sw	$v0,116($s0)
    # Line 88
    sw	$s2,112($s0)
    # Line 87
    sw	$s2,108($s0)
    # Line 86
    sw	$a1,100($s0)
    # Line 85
    sw	$a0,96($s0)
    # Line 99
    ld	$s0,56($sp)
    ld	$s2,72($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db0a274:
    b	.L0db0a180
    # Line 59
    move	$s6,$zero
.L0db0a27c:
    # Line 64
    sra	$a0,$a2,0x2
    srl	$a0,$a0,0x1d
    addu	$a0,$a0,$a2
    b	.L0db0a1a4
    sra	$a0,$a0,0x3
.L0db0a290:
    # Line 78
    subu	$a2,$a2,$a3
    ld	$s8,16($sp)
    ld	$s7,32($sp)
    sra	$a3,$s3,0x1f
    andi	$a2,$a2,0x7
    xor	$a2,$a2,$a3
    subu	$a2,$a2,$a3
    # Line 80
    sw	$a2,156($s0)
    # Line 78
    sra	$s1,$s3,0x2
    srl	$s1,$s1,0x1d
    addu	$s1,$s1,$s3
    sra	$s1,$s1,0x3
    addu	$s1,$s1,$a4
    sw	$s1,92($s0)
    # Line 80
    b	.L0db0a230
    ld	$s1,24($sp)
.end __glInitPacker

# Function: __glInitPacker3D
# Declared: Line 101 (Source lines: 102-114)
# Address: 0x0db0a2d0 - 0x0db0a340 (Size: 112 bytes, Frame: 48)
.globl __glInitPacker3D
.ent __glInitPacker3D
__glInitPacker3D:
    # Line 102
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$at,0xf
    addiu	$at,$at,17352
    addu	$gp,$t9,$at
    # Line 106
    # lw $t9, -29076($gp) # &__glInitPacker
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    bal __glInitPacker
    # Line 102
    move	$s8,$a1
    # Line 109
    lw	$at,144($s8)
    lw	$ra,96($s8)
    mult	$ra,$at
    # Line 111
    lw	$a1,136($s8)
    # Line 109
    mflo	$a0
    nop
    nop
    # Line 111
    mult	$a1,$a0
    ld	$gp,16($sp)
    lw	$v0,92($s8)
    # Line 114
    ld	$ra,0($sp)
    # Line 113
    sw	$a0,104($s8)
    # Line 111
    mflo	$v1
    addu	$v0,$v0,$v1
    sw	$v0,92($s8)
    # Line 114
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glInitPacker3D

# Function: __glSpanReduceRed
# Declared: Line 120 (Source lines: 124-133)
# Address: 0x0db0a340 - 0x0db0a3e8 (Size: 168 bytes, Frame: 0)
.globl __glSpanReduceRed
.ent __glSpanReduceRed
__glSpanReduceRed:
    # Line 124
    lw	$a5,184($a1)
    # Line 127
    lwc1	$f4,30852($a0)
    # Line 129
    move	$a6,$zero
    blez	$a5,.L0db0a3e0
    move	$a4,$a5
    andi	$a1,$a5,0x3
    beqz	$a1,.L0db0a384
    move	$t1,$a6
.L0db0a360:
    # Line 130
    lwc1	$f0,0($a2)
    mul.s	$f0,$f0,$f4
    # Line 129
    addiu	$a6,$a6,1
    # Line 131
    addiu	$a2,$a2,16
    # Line 130
    addiu	$a3,$a3,4
    addi	$a1,$a1,-1
    bnez	$a1,.L0db0a360
    swc1	$f0,-4($a3)
    move	$t1,$a6
.L0db0a384:
    move	$t0,$a3
    move	$a7,$a2
    sra	$at,$a4,0x2
    beqz	$at,.L0db0a3e0
    move	$a2,$a7
    move	$a1,$t1
    move	$a3,$t0
.L0db0a3a0:
    lwc1	$f0,0($a2)
    mul.s	$f0,$f0,$f4
    swc1	$f0,0($a3)
    lwc1	$f3,16($a2)
    mul.s	$f3,$f3,$f4
    swc1	$f3,4($a3)
    lwc1	$f2,32($a2)
    mul.s	$f2,$f2,$f4
    swc1	$f2,8($a3)
    lwc1	$f1,48($a2)
    mul.s	$f1,$f1,$f4
    # Line 131
    addiu	$a2,$a2,64
    # Line 130
    addiu	$a3,$a3,16
    # Line 129
    addiu	$a1,$a1,4
    bne	$a5,$a1,.L0db0a3a0
    # Line 130
    swc1	$f1,-4($a3)
.L0db0a3e0:
    # Line 133
    jr	$ra
    nop
.end __glSpanReduceRed

# Function: __glSpanReduceGreen
# Declared: Line 139 (Source lines: 143-153)
# Address: 0x0db0a3e8 - 0x0db0a494 (Size: 172 bytes, Frame: 0)
.globl __glSpanReduceGreen
.ent __glSpanReduceGreen
__glSpanReduceGreen:
    # Line 146
    lwc1	$f4,30856($a0)
    # Line 143
    lw	$a5,184($a1)
    # Line 149
    move	$a6,$zero
    # Line 148
    addiu	$a7,$a2,4
    # Line 149
    blez	$a5,.L0db0a48c
    move	$a2,$a5
    andi	$a1,$a5,0x3
    beqz	$a1,.L0db0a430
    move	$t1,$a6
.L0db0a40c:
    # Line 150
    lwc1	$f0,0($a7)
    mul.s	$f0,$f0,$f4
    # Line 149
    addiu	$a6,$a6,1
    # Line 151
    addiu	$a7,$a7,16
    # Line 150
    addiu	$a3,$a3,4
    addi	$a1,$a1,-1
    bnez	$a1,.L0db0a40c
    swc1	$f0,-4($a3)
    move	$t1,$a6
.L0db0a430:
    move	$t0,$a3
    move	$a4,$a7
    sra	$at,$a2,0x2
    beqz	$at,.L0db0a48c
    move	$a2,$a4
    move	$a1,$t1
    move	$a3,$t0
.L0db0a44c:
    lwc1	$f0,0($a2)
    mul.s	$f0,$f0,$f4
    swc1	$f0,0($a3)
    lwc1	$f3,16($a2)
    mul.s	$f3,$f3,$f4
    swc1	$f3,4($a3)
    lwc1	$f2,32($a2)
    mul.s	$f2,$f2,$f4
    swc1	$f2,8($a3)
    lwc1	$f1,48($a2)
    mul.s	$f1,$f1,$f4
    # Line 151
    addiu	$a2,$a2,64
    # Line 150
    addiu	$a3,$a3,16
    # Line 149
    addiu	$a1,$a1,4
    bne	$a5,$a1,.L0db0a44c
    # Line 150
    swc1	$f1,-4($a3)
.L0db0a48c:
    # Line 153
    jr	$ra
    nop
.end __glSpanReduceGreen

# Function: __glSpanReduceBlue
# Declared: Line 159 (Source lines: 163-173)
# Address: 0x0db0a494 - 0x0db0a540 (Size: 172 bytes, Frame: 0)
.globl __glSpanReduceBlue
.ent __glSpanReduceBlue
__glSpanReduceBlue:
    # Line 166
    lwc1	$f4,30860($a0)
    # Line 163
    lw	$a5,184($a1)
    # Line 169
    move	$a6,$zero
    # Line 168
    addiu	$a7,$a2,8
    # Line 169
    blez	$a5,.L0db0a538
    move	$a2,$a5
    andi	$a1,$a5,0x3
    beqz	$a1,.L0db0a4dc
    move	$t1,$a6
.L0db0a4b8:
    # Line 170
    lwc1	$f0,0($a7)
    mul.s	$f0,$f0,$f4
    # Line 169
    addiu	$a6,$a6,1
    # Line 171
    addiu	$a7,$a7,16
    # Line 170
    addiu	$a3,$a3,4
    addi	$a1,$a1,-1
    bnez	$a1,.L0db0a4b8
    swc1	$f0,-4($a3)
    move	$t1,$a6
.L0db0a4dc:
    move	$t0,$a3
    move	$a4,$a7
    sra	$at,$a2,0x2
    beqz	$at,.L0db0a538
    move	$a2,$a4
    move	$a1,$t1
    move	$a3,$t0
.L0db0a4f8:
    lwc1	$f0,0($a2)
    mul.s	$f0,$f0,$f4
    swc1	$f0,0($a3)
    lwc1	$f3,16($a2)
    mul.s	$f3,$f3,$f4
    swc1	$f3,4($a3)
    lwc1	$f2,32($a2)
    mul.s	$f2,$f2,$f4
    swc1	$f2,8($a3)
    lwc1	$f1,48($a2)
    mul.s	$f1,$f1,$f4
    # Line 171
    addiu	$a2,$a2,64
    # Line 170
    addiu	$a3,$a3,16
    # Line 169
    addiu	$a1,$a1,4
    bne	$a5,$a1,.L0db0a4f8
    # Line 170
    swc1	$f1,-4($a3)
.L0db0a538:
    # Line 173
    jr	$ra
    nop
.end __glSpanReduceBlue

# Function: __glSpanReduceAlpha
# Declared: Line 179 (Source lines: 183-193)
# Address: 0x0db0a540 - 0x0db0a5ec (Size: 172 bytes, Frame: 0)
.globl __glSpanReduceAlpha
.ent __glSpanReduceAlpha
__glSpanReduceAlpha:
    # Line 186
    lwc1	$f4,30864($a0)
    # Line 183
    lw	$a5,184($a1)
    # Line 189
    move	$a6,$zero
    # Line 188
    addiu	$a7,$a2,12
    # Line 189
    blez	$a5,.L0db0a5e4
    move	$a2,$a5
    andi	$a1,$a5,0x3
    beqz	$a1,.L0db0a588
    move	$t1,$a6
.L0db0a564:
    # Line 190
    lwc1	$f0,0($a7)
    mul.s	$f0,$f0,$f4
    # Line 189
    addiu	$a6,$a6,1
    # Line 191
    addiu	$a7,$a7,16
    # Line 190
    addiu	$a3,$a3,4
    addi	$a1,$a1,-1
    bnez	$a1,.L0db0a564
    swc1	$f0,-4($a3)
    move	$t1,$a6
.L0db0a588:
    move	$t0,$a3
    move	$a4,$a7
    sra	$at,$a2,0x2
    beqz	$at,.L0db0a5e4
    move	$a2,$a4
    move	$a1,$t1
    move	$a3,$t0
.L0db0a5a4:
    lwc1	$f0,0($a2)
    mul.s	$f0,$f0,$f4
    swc1	$f0,0($a3)
    lwc1	$f3,16($a2)
    mul.s	$f3,$f3,$f4
    swc1	$f3,4($a3)
    lwc1	$f2,32($a2)
    mul.s	$f2,$f2,$f4
    swc1	$f2,8($a3)
    lwc1	$f1,48($a2)
    mul.s	$f1,$f1,$f4
    # Line 191
    addiu	$a2,$a2,64
    # Line 190
    addiu	$a3,$a3,16
    # Line 189
    addiu	$a1,$a1,4
    bne	$a5,$a1,.L0db0a5a4
    # Line 190
    swc1	$f1,-4($a3)
.L0db0a5e4:
    # Line 193
    jr	$ra
    nop
.end __glSpanReduceAlpha

# Function: __glSpanReduceRGB
# Declared: Line 199 (Source lines: 203-220)
# Address: 0x0db0a5ec - 0x0db0a6c4 (Size: 216 bytes, Frame: 0)
.globl __glSpanReduceRGB
.ent __glSpanReduceRGB
__glSpanReduceRGB:
    # Line 208
    lwc1	$f6,30856($a0)
    # Line 207
    lwc1	$f5,30860($a0)
    # Line 203
    lw	$a5,184($a1)
    # Line 206
    lwc1	$f4,30852($a0)
    # Line 211
    move	$a6,$zero
    blez	$a5,.L0db0a6bc
    move	$a1,$a5
    andi	$at,$a5,0x1
    beqz	$at,.L0db0a648
    move	$a7,$a3
    # Line 213
    lwc1	$f1,4($a2)
    # Line 215
    lwc1	$f2,0($a2)
    # Line 213
    mul.s	$f1,$f1,$f6
    # Line 214
    lwc1	$f0,8($a2)
    # Line 215
    mul.s	$f2,$f2,$f4
    # Line 214
    mul.s	$f0,$f0,$f5
    # Line 211
    addiu	$a6,$a6,1
    # Line 218
    addiu	$a2,$a2,16
    # Line 217
    addiu	$a3,$a3,12
    # Line 215
    swc1	$f2,-12($a3)
    # Line 216
    swc1	$f1,-8($a3)
    # Line 217
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0db0a648:
    sra	$v0,$a1,0x1
    move	$t0,$a6
    beqz	$v0,.L0db0a6bc
    move	$a4,$a2
    move	$a1,$t0
    move	$a2,$a7
    move	$a3,$a4
.L0db0a664:
    # Line 215
    lwc1	$f0,0($a3)
    mul.s	$f0,$f0,$f4
    # Line 213
    lwc1	$f3,4($a3)
    mul.s	$f3,$f3,$f6
    # Line 214
    lwc1	$f2,8($a3)
    mul.s	$f2,$f2,$f5
    # Line 215
    swc1	$f0,0($a2)
    # Line 216
    swc1	$f3,4($a2)
    # Line 217
    swc1	$f2,8($a2)
    # Line 215
    lwc1	$f1,16($a3)
    mul.s	$f1,$f1,$f4
    # Line 213
    lwc1	$f0,20($a3)
    mul.s	$f0,$f0,$f6
    # Line 214
    lwc1	$f3,24($a3)
    mul.s	$f3,$f3,$f5
    # Line 218
    addiu	$a3,$a3,32
    # Line 217
    addiu	$a2,$a2,24
    # Line 211
    addiu	$a1,$a1,2
    # Line 215
    swc1	$f1,-12($a2)
    # Line 216
    swc1	$f0,-8($a2)
    # Line 211
    bne	$a5,$a1,.L0db0a664
    # Line 217
    swc1	$f3,-4($a2)
.L0db0a6bc:
    # Line 220
    jr	$ra
    nop
.end __glSpanReduceRGB

# Function: __glSpanReorderABGR
# Declared: Line 227 (Source lines: 231-250)
# Address: 0x0db0a6c4 - 0x0db0a7c4 (Size: 256 bytes, Frame: 0)
.globl __glSpanReorderABGR
.ent __glSpanReorderABGR
__glSpanReorderABGR:
    # Line 237
    lwc1	$f6,30864($a0)
    # Line 236
    lwc1	$f7,30856($a0)
    # Line 235
    lwc1	$f4,30860($a0)
    # Line 231
    lw	$a5,184($a1)
    # Line 234
    lwc1	$f5,30852($a0)
    # Line 240
    move	$a6,$zero
    blez	$a5,.L0db0a7bc
    move	$a1,$a5
    andi	$at,$a5,0x1
    beqz	$at,.L0db0a730
    move	$t0,$a6
    # Line 242
    lwc1	$f1,4($a2)
    # Line 243
    lwc1	$f2,8($a2)
    # Line 242
    mul.s	$f1,$f1,$f7
    # Line 245
    lwc1	$f3,12($a2)
    # Line 243
    mul.s	$f2,$f2,$f4
    # Line 241
    lwc1	$f0,0($a2)
    # Line 245
    mul.s	$f3,$f3,$f6
    # Line 241
    mul.s	$f0,$f0,$f5
    # Line 240
    addiu	$a6,$a6,1
    # Line 248
    addiu	$a3,$a3,16
    # Line 244
    addiu	$a2,$a2,16
    # Line 245
    swc1	$f3,-16($a3)
    # Line 246
    swc1	$f2,-12($a3)
    # Line 247
    swc1	$f1,-8($a3)
    # Line 248
    swc1	$f0,-4($a3)
    move	$t0,$a6
.L0db0a730:
    move	$a4,$a2
    move	$a7,$a3
    sra	$v0,$a1,0x1
    beqz	$v0,.L0db0a7bc
    move	$a3,$a7
    move	$a1,$t0
    move	$a2,$a4
.L0db0a74c:
    # Line 245
    lwc1	$f3,12($a2)
    mul.s	$f3,$f3,$f6
    # Line 243
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f4
    # Line 242
    lwc1	$f1,4($a2)
    mul.s	$f1,$f1,$f7
    # Line 241
    lwc1	$f0,0($a2)
    mul.s	$f0,$f0,$f5
    # Line 245
    swc1	$f3,0($a3)
    # Line 246
    swc1	$f2,4($a3)
    # Line 247
    swc1	$f1,8($a3)
    # Line 248
    swc1	$f0,12($a3)
    # Line 245
    lwc1	$f3,28($a2)
    mul.s	$f3,$f3,$f6
    # Line 243
    lwc1	$f2,24($a2)
    mul.s	$f2,$f2,$f4
    # Line 242
    lwc1	$f1,20($a2)
    mul.s	$f1,$f1,$f7
    # Line 241
    lwc1	$f0,16($a2)
    # Line 248
    addiu	$a3,$a3,32
    # Line 241
    mul.s	$f0,$f0,$f5
    # Line 244
    addiu	$a2,$a2,32
    # Line 240
    addiu	$a1,$a1,2
    # Line 245
    swc1	$f3,-16($a3)
    # Line 246
    swc1	$f2,-12($a3)
    # Line 247
    swc1	$f1,-8($a3)
    # Line 240
    bne	$a5,$a1,.L0db0a74c
    # Line 248
    swc1	$f0,-4($a3)
.L0db0a7bc:
    # Line 250
    jr	$ra
    nop
.end __glSpanReorderABGR

# Function: __glSpanReduceLuminance
# Declared: Line 256 (Source lines: 260-276)
# Address: 0x0db0a7c4 - 0x0db0a8bc (Size: 248 bytes, Frame: 0)
.globl __glSpanReduceLuminance
.ent __glSpanReduceLuminance
__glSpanReduceLuminance:
    # Line 268
    lwc1	$f5,3284($a0)
    # Line 266
    lwc1	$f8,30856($a0)
    # Line 265
    lwc1	$f7,30860($a0)
    # Line 260
    lw	$a6,184($a1)
    # Line 264
    lwc1	$f6,30852($a0)
    # Line 270
    move	$a5,$zero
    blez	$a6,.L0db0a838
    move	$a1,$a6
    andi	$at,$a6,0x1
    beqz	$at,.L0db0a830
    sra	$v0,$a1,0x1
    # Line 271
    lwc1	$f1,4($a2)
    lwc1	$f4,0($a2)
    mul.s	$f1,$f1,$f8
    lwc1	$f0,8($a2)
    mul.s	$f4,$f4,$f6
    mul.s	$f0,$f0,$f7
    add.s	$f4,$f4,$f1
    add.s	$f4,$f4,$f0
    c.lt.s	$f5,$f4
    # Line 274
    addiu	$a2,$a2,16
    # Line 271
    bc1f	.L0db0a824
    # Line 270
    addiu	$a5,$a5,1
    # Line 272
    mov.s	$f4,$f5
.L0db0a824:
    # Line 273
    swc1	$f4,0($a3)
    addiu	$a3,$a3,4
    sra	$v0,$a1,0x1
.L0db0a830:
    bnezl	$v0,.L0db0a888
    # Line 271
    lwc1	$f1,4($a2)
.L0db0a838:
    # Line 276
    jr	$ra
    nop
.L0db0a840:
    # Line 273
    swc1	$f4,0($a3)
.L0db0a844:
    # Line 271
    lwc1	$f1,20($a2)
    lwc1	$f4,16($a2)
    mul.s	$f1,$f1,$f8
    lwc1	$f0,24($a2)
    mul.s	$f4,$f4,$f6
    mul.s	$f0,$f0,$f7
    add.s	$f4,$f4,$f1
    add.s	$f4,$f4,$f0
    c.lt.s	$f5,$f4
    # Line 270
    addiu	$a5,$a5,2
    # Line 271
    bc1f	.L0db0a878
    # Line 274
    addiu	$a2,$a2,32
    # Line 272
    mov.s	$f4,$f5
.L0db0a878:
    # Line 273
    swc1	$f4,4($a3)
    # Line 270
    beq	$a6,$a5,.L0db0a838
    # Line 273
    addiu	$a3,$a3,8
    # Line 271
    lwc1	$f1,4($a2)
.L0db0a888:
    lwc1	$f4,0($a2)
    mul.s	$f1,$f1,$f8
    lwc1	$f0,8($a2)
    mul.s	$f4,$f4,$f6
    mul.s	$f0,$f0,$f7
    add.s	$f4,$f4,$f1
    add.s	$f4,$f4,$f0
    c.lt.s	$f5,$f4
    nop
    bc1fl	.L0db0a844
    # Line 273
    swc1	$f4,0($a3)
    b	.L0db0a840
    # Line 272
    mov.s	$f4,$f5
.end __glSpanReduceLuminance

# Function: __glSpanReduceLuminanceAlpha
# Declared: Line 282 (Source lines: 286-304)
# Address: 0x0db0a8bc - 0x0db0a9e4 (Size: 296 bytes, Frame: 0)
.globl __glSpanReduceLuminanceAlpha
.ent __glSpanReduceLuminanceAlpha
__glSpanReduceLuminanceAlpha:
    # Line 295
    lwc1	$f5,3284($a0)
    # Line 293
    lwc1	$f7,30864($a0)
    # Line 292
    lwc1	$f6,30856($a0)
    # Line 291
    lwc1	$f8,30860($a0)
    # Line 286
    lw	$a6,184($a1)
    # Line 290
    lwc1	$f9,30852($a0)
    # Line 297
    move	$a5,$zero
    blez	$a6,.L0db0a944
    move	$a1,$a6
    andi	$at,$a6,0x1
    beqz	$at,.L0db0a93c
    sra	$v0,$a1,0x1
    # Line 298
    lwc1	$f1,4($a2)
    lwc1	$f4,0($a2)
    mul.s	$f1,$f1,$f6
    lwc1	$f0,8($a2)
    mul.s	$f4,$f4,$f9
    mul.s	$f0,$f0,$f8
    add.s	$f4,$f4,$f1
    add.s	$f4,$f4,$f0
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0db0a920
    # Line 297
    addiu	$a5,$a5,1
    # Line 299
    mov.s	$f4,$f5
.L0db0a920:
    # Line 300
    swc1	$f4,0($a3)
    # Line 302
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f7
    addiu	$a3,$a3,8
    addiu	$a2,$a2,16
    swc1	$f0,-4($a3)
    sra	$v0,$a1,0x1
.L0db0a93c:
    bnezl	$v0,.L0db0a9b0
    # Line 298
    lwc1	$f1,4($a2)
.L0db0a944:
    # Line 304
    jr	$ra
    nop
.L0db0a94c:
    # Line 300
    swc1	$f4,0($a3)
    # Line 302
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f7
    swc1	$f0,4($a3)
    # Line 298
    lwc1	$f1,20($a2)
    lwc1	$f4,16($a2)
    mul.s	$f1,$f1,$f6
    lwc1	$f0,24($a2)
    mul.s	$f4,$f4,$f9
    mul.s	$f0,$f0,$f8
    add.s	$f4,$f4,$f1
    add.s	$f4,$f4,$f0
    c.lt.s	$f5,$f4
    nop
    bc1fl	.L0db0a994
    # Line 300
    swc1	$f4,8($a3)
    # Line 299
    mov.s	$f4,$f5
    # Line 300
    swc1	$f4,8($a3)
.L0db0a994:
    # Line 302
    lwc1	$f1,28($a2)
    mul.s	$f1,$f1,$f7
    addiu	$a3,$a3,16
    addiu	$a2,$a2,32
    # Line 297
    beq	$a6,$a5,.L0db0a944
    # Line 302
    swc1	$f1,-4($a3)
    # Line 298
    lwc1	$f1,4($a2)
.L0db0a9b0:
    lwc1	$f4,0($a2)
    mul.s	$f1,$f1,$f6
    lwc1	$f0,8($a2)
    mul.s	$f4,$f4,$f9
    mul.s	$f0,$f0,$f8
    add.s	$f4,$f4,$f1
    add.s	$f4,$f4,$f0
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0db0a94c
    # Line 297
    addiu	$a5,$a5,2
    b	.L0db0a94c
    # Line 299
    mov.s	$f4,$f5
.end __glSpanReduceLuminanceAlpha

# Function: __glSpanReduceRedAlpha
# Declared: Line 310 (Source lines: 314-325)
# Address: 0x0db0a9e4 - 0x0db0aacc (Size: 232 bytes, Frame: 0)
.globl __glSpanReduceRedAlpha
.ent __glSpanReduceRedAlpha
__glSpanReduceRedAlpha:
    # Line 318
    lwc1	$f5,30864($a0)
    # Line 314
    lw	$a5,184($a1)
    # Line 317
    lwc1	$f4,30852($a0)
    # Line 320
    move	$a6,$zero
    blez	$a5,.L0db0aac4
    move	$a4,$a5
    andi	$a1,$a5,0x3
    beqz	$a1,.L0db0aa38
    move	$a7,$a3
.L0db0aa08:
    # Line 321
    lwc1	$f1,0($a2)
    mul.s	$f1,$f1,$f4
    swc1	$f1,0($a3)
    # Line 323
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f5
    # Line 320
    addiu	$a6,$a6,1
    # Line 323
    addiu	$a3,$a3,8
    addiu	$a2,$a2,16
    addi	$a1,$a1,-1
    bnez	$a1,.L0db0aa08
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0db0aa38:
    sra	$at,$a4,0x2
    move	$t1,$a6
    beqz	$at,.L0db0aac4
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db0aa54:
    # Line 321
    lwc1	$f1,0($a3)
    mul.s	$f1,$f1,$f4
    swc1	$f1,0($a2)
    # Line 323
    lwc1	$f0,12($a3)
    mul.s	$f0,$f0,$f5
    swc1	$f0,4($a2)
    # Line 321
    lwc1	$f3,16($a3)
    mul.s	$f3,$f3,$f4
    swc1	$f3,8($a2)
    # Line 323
    lwc1	$f2,28($a3)
    mul.s	$f2,$f2,$f5
    swc1	$f2,12($a2)
    # Line 321
    lwc1	$f1,32($a3)
    mul.s	$f1,$f1,$f4
    swc1	$f1,16($a2)
    # Line 323
    lwc1	$f0,44($a3)
    mul.s	$f0,$f0,$f5
    swc1	$f0,20($a2)
    # Line 321
    lwc1	$f3,48($a3)
    mul.s	$f3,$f3,$f4
    swc1	$f3,24($a2)
    # Line 323
    lwc1	$f2,60($a3)
    mul.s	$f2,$f2,$f5
    addiu	$a2,$a2,32
    addiu	$a3,$a3,64
    # Line 320
    addiu	$a1,$a1,4
    bne	$a5,$a1,.L0db0aa54
    # Line 323
    swc1	$f2,-4($a2)
.L0db0aac4:
    # Line 325
    jr	$ra
    nop
.end __glSpanReduceRedAlpha

# Function: __glSpanReduceRedNS
# Declared: Line 331 (Source lines: 335-343)
# Address: 0x0db0aacc - 0x0db0ab5c (Size: 144 bytes, Frame: 0)
.globl __glSpanReduceRedNS
.ent __glSpanReduceRedNS
__glSpanReduceRedNS:
    # Line 335
    lw	$a4,184($a1)
    # Line 339
    move	$a5,$zero
    blez	$a4,.L0db0ab54
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db0ab08
    move	$t1,$a5
.L0db0aae8:
    addiu	$a5,$a5,1
    # Line 341
    addiu	$a2,$a2,16
    # Line 340
    addiu	$a3,$a3,4
    lwc1	$f0,-16($a2)
    addi	$a1,$a1,-1
    bnez	$a1,.L0db0aae8
    swc1	$f0,-4($a3)
    move	$t1,$a5
.L0db0ab08:
    move	$t0,$a3
    move	$a7,$a2
    sra	$at,$a6,0x2
    beqz	$at,.L0db0ab54
    move	$a2,$a7
    move	$a1,$t1
    move	$a3,$t0
.L0db0ab24:
    lwc1	$f0,0($a2)
    swc1	$f0,0($a3)
    lwc1	$f3,16($a2)
    swc1	$f3,4($a3)
    lwc1	$f2,32($a2)
    # Line 341
    addiu	$a2,$a2,64
    # Line 340
    swc1	$f2,8($a3)
    addiu	$a3,$a3,16
    lwc1	$f1,-16($a2)
    # Line 339
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db0ab24
    # Line 340
    swc1	$f1,-4($a3)
.L0db0ab54:
    # Line 343
    jr	$ra
    nop
.end __glSpanReduceRedNS

# Function: __glSpanReduceGreenNS
# Declared: Line 349 (Source lines: 353-362)
# Address: 0x0db0ab5c - 0x0db0abf0 (Size: 148 bytes, Frame: 0)
.globl __glSpanReduceGreenNS
.ent __glSpanReduceGreenNS
__glSpanReduceGreenNS:
    # Line 353
    lw	$a4,184($a1)
    # Line 358
    move	$a5,$zero
    # Line 357
    addiu	$a6,$a2,4
    # Line 358
    blez	$a4,.L0db0abe8
    move	$a2,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db0ab9c
    move	$t1,$a5
.L0db0ab7c:
    addiu	$a5,$a5,1
    # Line 360
    addiu	$a6,$a6,16
    # Line 359
    addiu	$a3,$a3,4
    lwc1	$f0,-16($a6)
    addi	$a1,$a1,-1
    bnez	$a1,.L0db0ab7c
    swc1	$f0,-4($a3)
    move	$t1,$a5
.L0db0ab9c:
    move	$t0,$a3
    move	$a7,$a6
    sra	$at,$a2,0x2
    beqz	$at,.L0db0abe8
    move	$a2,$a7
    move	$a1,$t1
    move	$a3,$t0
.L0db0abb8:
    lwc1	$f0,0($a2)
    swc1	$f0,0($a3)
    lwc1	$f3,16($a2)
    swc1	$f3,4($a3)
    lwc1	$f2,32($a2)
    # Line 360
    addiu	$a2,$a2,64
    # Line 359
    swc1	$f2,8($a3)
    addiu	$a3,$a3,16
    lwc1	$f1,-16($a2)
    # Line 358
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db0abb8
    # Line 359
    swc1	$f1,-4($a3)
.L0db0abe8:
    # Line 362
    jr	$ra
    nop
.end __glSpanReduceGreenNS

# Function: __glSpanReduceBlueNS
# Declared: Line 368 (Source lines: 372-381)
# Address: 0x0db0abf0 - 0x0db0ac84 (Size: 148 bytes, Frame: 0)
.globl __glSpanReduceBlueNS
.ent __glSpanReduceBlueNS
__glSpanReduceBlueNS:
    # Line 372
    lw	$a4,184($a1)
    # Line 377
    move	$a5,$zero
    # Line 376
    addiu	$a6,$a2,8
    # Line 377
    blez	$a4,.L0db0ac7c
    move	$a2,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db0ac30
    move	$t1,$a5
.L0db0ac10:
    addiu	$a5,$a5,1
    # Line 379
    addiu	$a6,$a6,16
    # Line 378
    addiu	$a3,$a3,4
    lwc1	$f0,-16($a6)
    addi	$a1,$a1,-1
    bnez	$a1,.L0db0ac10
    swc1	$f0,-4($a3)
    move	$t1,$a5
.L0db0ac30:
    move	$t0,$a3
    move	$a7,$a6
    sra	$at,$a2,0x2
    beqz	$at,.L0db0ac7c
    move	$a2,$a7
    move	$a1,$t1
    move	$a3,$t0
.L0db0ac4c:
    lwc1	$f0,0($a2)
    swc1	$f0,0($a3)
    lwc1	$f3,16($a2)
    swc1	$f3,4($a3)
    lwc1	$f2,32($a2)
    # Line 379
    addiu	$a2,$a2,64
    # Line 378
    swc1	$f2,8($a3)
    addiu	$a3,$a3,16
    lwc1	$f1,-16($a2)
    # Line 377
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db0ac4c
    # Line 378
    swc1	$f1,-4($a3)
.L0db0ac7c:
    # Line 381
    jr	$ra
    nop
.end __glSpanReduceBlueNS

# Function: __glSpanReduceAlphaNS
# Declared: Line 387 (Source lines: 391-400)
# Address: 0x0db0ac84 - 0x0db0ad18 (Size: 148 bytes, Frame: 0)
.globl __glSpanReduceAlphaNS
.ent __glSpanReduceAlphaNS
__glSpanReduceAlphaNS:
    # Line 391
    lw	$a4,184($a1)
    # Line 396
    move	$a5,$zero
    # Line 395
    addiu	$a6,$a2,12
    # Line 396
    blez	$a4,.L0db0ad10
    move	$a2,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db0acc4
    move	$t1,$a5
.L0db0aca4:
    addiu	$a5,$a5,1
    # Line 398
    addiu	$a6,$a6,16
    # Line 397
    addiu	$a3,$a3,4
    lwc1	$f0,-16($a6)
    addi	$a1,$a1,-1
    bnez	$a1,.L0db0aca4
    swc1	$f0,-4($a3)
    move	$t1,$a5
.L0db0acc4:
    move	$t0,$a3
    move	$a7,$a6
    sra	$at,$a2,0x2
    beqz	$at,.L0db0ad10
    move	$a2,$a7
    move	$a1,$t1
    move	$a3,$t0
.L0db0ace0:
    lwc1	$f0,0($a2)
    swc1	$f0,0($a3)
    lwc1	$f3,16($a2)
    swc1	$f3,4($a3)
    lwc1	$f2,32($a2)
    # Line 398
    addiu	$a2,$a2,64
    # Line 397
    swc1	$f2,8($a3)
    addiu	$a3,$a3,16
    lwc1	$f1,-16($a2)
    # Line 396
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db0ace0
    # Line 397
    swc1	$f1,-4($a3)
.L0db0ad10:
    # Line 400
    jr	$ra
    nop
.end __glSpanReduceAlphaNS

# Function: __glSpanReduceRGBNS
# Declared: Line 406 (Source lines: 410-424)
# Address: 0x0db0ad18 - 0x0db0adf8 (Size: 224 bytes, Frame: 0)
.globl __glSpanReduceRGBNS
.ent __glSpanReduceRGBNS
__glSpanReduceRGBNS:
    # Line 410
    lw	$a4,184($a1)
    # Line 415
    move	$a5,$zero
    blez	$a4,.L0db0adf0
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db0ad64
    move	$t1,$a5
.L0db0ad34:
    addiu	$a5,$a5,1
    # Line 422
    addiu	$a2,$a2,16
    # Line 421
    addiu	$a3,$a3,12
    addi	$a1,$a1,-1
    # Line 419
    lwc1	$f2,-16($a2)
    # Line 417
    lwc1	$f1,-12($a2)
    # Line 418
    lwc1	$f0,-8($a2)
    # Line 419
    swc1	$f2,-12($a3)
    # Line 420
    swc1	$f1,-8($a3)
    bnez	$a1,.L0db0ad34
    # Line 421
    swc1	$f0,-4($a3)
    move	$t1,$a5
.L0db0ad64:
    move	$t0,$a2
    move	$a7,$a3
    sra	$at,$a6,0x2
    beqz	$at,.L0db0adf0
    move	$a3,$a7
    move	$a1,$t1
    move	$a2,$t0
.L0db0ad80:
    # Line 419
    lwc1	$f2,0($a2)
    # Line 417
    lwc1	$f1,4($a2)
    # Line 418
    lwc1	$f0,8($a2)
    # Line 419
    swc1	$f2,0($a3)
    # Line 420
    swc1	$f1,4($a3)
    # Line 421
    swc1	$f0,8($a3)
    # Line 422
    addiu	$a2,$a2,64
    # Line 419
    lwc1	$f3,-48($a2)
    # Line 417
    lwc1	$f2,-44($a2)
    # Line 418
    lwc1	$f1,-40($a2)
    # Line 419
    swc1	$f3,12($a3)
    # Line 420
    swc1	$f2,16($a3)
    # Line 421
    swc1	$f1,20($a3)
    addiu	$a3,$a3,48
    # Line 419
    lwc1	$f0,-32($a2)
    # Line 417
    lwc1	$f3,-28($a2)
    # Line 418
    lwc1	$f2,-24($a2)
    # Line 419
    swc1	$f0,-24($a3)
    # Line 420
    swc1	$f3,-20($a3)
    # Line 421
    swc1	$f2,-16($a3)
    # Line 415
    addiu	$a1,$a1,4
    # Line 419
    lwc1	$f1,-16($a2)
    # Line 417
    lwc1	$f0,-12($a2)
    # Line 418
    lwc1	$f3,-8($a2)
    # Line 419
    swc1	$f1,-12($a3)
    # Line 420
    swc1	$f0,-8($a3)
    # Line 415
    bne	$a4,$a1,.L0db0ad80
    # Line 421
    swc1	$f3,-4($a3)
.L0db0adf0:
    # Line 424
    jr	$ra
    nop
.end __glSpanReduceRGBNS

# Function: __glSpanReorderABGRNS
# Declared: Line 431 (Source lines: 435-450)
# Address: 0x0db0adf8 - 0x0db0af00 (Size: 264 bytes, Frame: 0)
.globl __glSpanReorderABGRNS
.ent __glSpanReorderABGRNS
__glSpanReorderABGRNS:
    # Line 435
    lw	$a4,184($a1)
    # Line 440
    move	$a5,$zero
    blez	$a4,.L0db0aef8
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db0ae4c
    move	$a7,$a3
.L0db0ae14:
    addiu	$a5,$a5,1
    # Line 448
    addiu	$a3,$a3,16
    # Line 444
    addiu	$a2,$a2,16
    addi	$a1,$a1,-1
    # Line 441
    lwc1	$f0,-16($a2)
    # Line 445
    lwc1	$f3,-4($a2)
    # Line 443
    lwc1	$f2,-8($a2)
    # Line 442
    lwc1	$f1,-12($a2)
    # Line 445
    swc1	$f3,-16($a3)
    # Line 446
    swc1	$f2,-12($a3)
    # Line 447
    swc1	$f1,-8($a3)
    bnez	$a1,.L0db0ae14
    # Line 448
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0db0ae4c:
    sra	$at,$a6,0x2
    move	$t1,$a5
    beqz	$at,.L0db0aef8
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db0ae68:
    # Line 441
    lwc1	$f0,0($a3)
    # Line 445
    lwc1	$f3,12($a3)
    # Line 443
    lwc1	$f2,8($a3)
    # Line 442
    lwc1	$f1,4($a3)
    # Line 445
    swc1	$f3,0($a2)
    # Line 446
    swc1	$f2,4($a2)
    # Line 447
    swc1	$f1,8($a2)
    # Line 448
    swc1	$f0,12($a2)
    addiu	$a2,$a2,64
    # Line 441
    lwc1	$f0,16($a3)
    # Line 445
    lwc1	$f3,28($a3)
    # Line 443
    lwc1	$f2,24($a3)
    # Line 442
    lwc1	$f1,20($a3)
    # Line 445
    swc1	$f3,-48($a2)
    # Line 446
    swc1	$f2,-44($a2)
    # Line 447
    swc1	$f1,-40($a2)
    # Line 448
    swc1	$f0,-36($a2)
    # Line 444
    addiu	$a3,$a3,64
    # Line 441
    lwc1	$f0,-32($a3)
    # Line 445
    lwc1	$f3,-20($a3)
    # Line 443
    lwc1	$f2,-24($a3)
    # Line 442
    lwc1	$f1,-28($a3)
    # Line 445
    swc1	$f3,-32($a2)
    # Line 446
    swc1	$f2,-28($a2)
    # Line 447
    swc1	$f1,-24($a2)
    # Line 448
    swc1	$f0,-20($a2)
    # Line 440
    addiu	$a1,$a1,4
    # Line 441
    lwc1	$f0,-16($a3)
    # Line 445
    lwc1	$f3,-4($a3)
    # Line 443
    lwc1	$f2,-8($a3)
    # Line 442
    lwc1	$f1,-12($a3)
    # Line 445
    swc1	$f3,-16($a2)
    # Line 446
    swc1	$f2,-12($a2)
    # Line 447
    swc1	$f1,-8($a2)
    # Line 440
    bne	$a4,$a1,.L0db0ae68
    # Line 448
    swc1	$f0,-4($a2)
.L0db0aef8:
    # Line 450
    jr	$ra
    nop
.end __glSpanReorderABGRNS

# Function: __glSpanReduceRedAlphaNS
# Declared: Line 456 (Source lines: 460-469)
# Address: 0x0db0af00 - 0x0db0afb8 (Size: 184 bytes, Frame: 0)
.globl __glSpanReduceRedAlphaNS
.ent __glSpanReduceRedAlphaNS
__glSpanReduceRedAlphaNS:
    # Line 460
    lw	$a4,184($a1)
    # Line 464
    move	$a5,$zero
    blez	$a4,.L0db0afb0
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db0af44
    move	$a7,$a3
.L0db0af1c:
    # Line 465
    lwc1	$f1,0($a2)
    # Line 464
    addiu	$a5,$a5,1
    # Line 467
    addiu	$a3,$a3,8
    # Line 465
    swc1	$f1,-8($a3)
    # Line 467
    addiu	$a2,$a2,16
    lwc1	$f0,-4($a2)
    addi	$a1,$a1,-1
    bnez	$a1,.L0db0af1c
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0db0af44:
    sra	$at,$a6,0x2
    move	$t1,$a5
    beqz	$at,.L0db0afb0
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db0af60:
    # Line 465
    lwc1	$f1,0($a3)
    swc1	$f1,0($a2)
    # Line 467
    lwc1	$f0,12($a3)
    swc1	$f0,4($a2)
    # Line 465
    lwc1	$f3,16($a3)
    swc1	$f3,8($a2)
    # Line 467
    lwc1	$f2,28($a3)
    swc1	$f2,12($a2)
    # Line 465
    lwc1	$f1,32($a3)
    swc1	$f1,16($a2)
    # Line 467
    lwc1	$f0,44($a3)
    swc1	$f0,20($a2)
    # Line 465
    lwc1	$f3,48($a3)
    # Line 467
    addiu	$a2,$a2,32
    # Line 465
    swc1	$f3,-8($a2)
    # Line 467
    addiu	$a3,$a3,64
    lwc1	$f2,-4($a3)
    # Line 464
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db0af60
    # Line 467
    swc1	$f2,-4($a2)
.L0db0afb0:
    # Line 469
    jr	$ra
    nop
.end __glSpanReduceRedAlphaNS

# Function: __glSpanPackUbyte
# Declared: Line 475 (Source lines: 479-491)
# Address: 0x0db0afb8 - 0x0db0b0d8 (Size: 288 bytes, Frame: 0)
.globl __glSpanPackUbyte
.ent __glSpanPackUbyte
__glSpanPackUbyte:
    # Line 482
    lw	$v0,108($a1)
    # Line 479
    lw	$at,184($a1)
    # Line 488
    mult	$at,$v0
    move	$a6,$zero
    mflo	$a5
    blez	$a5,.L0db0b0d0
    move	$a7,$a5
    andi	$a4,$a5,0x3
    beqz	$a4,.L0db0b018
    move	$t0,$a6
.L0db0afe0:
    # Line 489
    lwc1	$f1,0($a2)
    lwc1	$f2,3288($a0)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    # Line 488
    addiu	$a6,$a6,1
    # Line 489
    addiu	$a3,$a3,1
    addiu	$a2,$a2,4
    mfc1	$v1,$f0
    addi	$a4,$a4,-1
    bnez	$a4,.L0db0afe0
    sb	$v1,-1($a3)
    move	$t0,$a6
.L0db0b018:
    move	$t2,$a2
    move	$t1,$a3
    sra	$a1,$a7,0x2
    beqz	$a1,.L0db0b0d0
    move	$a4,$t1
    move	$a3,$t0
    move	$a2,$t2
.L0db0b034:
    lwc1	$f1,0($a2)
    lwc1	$f2,3288($a0)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    nop
    sb	$a1,0($a4)
    lwc1	$f2,4($a2)
    lwc1	$f3,3288($a0)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,3280($a0)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    nop
    sb	$v1,1($a4)
    lwc1	$f3,8($a2)
    lwc1	$f0,3288($a0)
    mul.s	$f3,$f3,$f0
    lwc1	$f2,3280($a0)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$v0,$f2
    nop
    sb	$v0,2($a4)
    lwc1	$f0,12($a2)
    lwc1	$f1,3288($a0)
    mul.s	$f0,$f0,$f1
    lwc1	$f3,3280($a0)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    addiu	$a4,$a4,4
    addiu	$a2,$a2,16
    mfc1	$at,$f3
    # Line 488
    addiu	$a3,$a3,4
    bne	$a5,$a3,.L0db0b034
    # Line 489
    sb	$at,-1($a4)
.L0db0b0d0:
    # Line 491
    jr	$ra
    nop
.end __glSpanPackUbyte

# Function: __glSpanPackByte
# Declared: Line 497 (Source lines: 499-513)
# Address: 0x0db0b0d8 - 0x0db0b184 (Size: 172 bytes, Frame: 224)
.globl __glSpanPackByte
.ent __glSpanPackByte
__glSpanPackByte:
    # Line 504
    lw	$v1,108($a1)
    # Line 501
    lw	$v0,184($a1)
    # Line 499
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    # Line 510
    mult	$v0,$v1
    sd	$s3,0($sp)
    move	$s3,$zero
    sd	$s0,16($sp)
    # Line 499
    move	$s0,$a3
    sd	$s1,24($sp)
    move	$s1,$a2
    sd	$s5,32($sp)
    move	$s5,$a0
    sd	$gp,40($sp)
    lui	$at,0xf
    addiu	$at,$at,13760
    sd	$s4,8($sp)
    # Line 510
    mflo	$s4
    blez	$s4,.L0db0b164
    # Line 499
    addu	$gp,$t9,$at
.L0db0b128:
    # Line 511
    lwc1	$f14,3288($s5)
    lwc1	$f13,0($s1)
    mul.s	$f13,$f13,$f14
    addiu	$s0,$s0,1
    addiu	$s1,$s1,4
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($s5)
    # Line 510
    addiu	$s3,$s3,1
    # Line 511
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    # Line 510
    bne	$s4,$s3,.L0db0b128
    # Line 511
    sb	$a1,-1($s0)
    ld	$ra,48($sp)
.L0db0b164:
    ld	$gp,40($sp)
    # Line 513
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    ld	$s3,0($sp)
    ld	$s4,8($sp)
    ld	$s5,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glSpanPackByte

# Function: __glSpanPackUshort
# Declared: Line 519 (Source lines: 523-535)
# Address: 0x0db0b184 - 0x0db0b2a4 (Size: 288 bytes, Frame: 0)
.globl __glSpanPackUshort
.ent __glSpanPackUshort
__glSpanPackUshort:
    # Line 526
    lw	$v0,108($a1)
    # Line 523
    lw	$at,184($a1)
    # Line 532
    mult	$at,$v0
    move	$a6,$zero
    mflo	$a5
    blez	$a5,.L0db0b29c
    move	$a7,$a5
    andi	$a4,$a5,0x3
    beqz	$a4,.L0db0b1e4
    move	$t0,$a6
.L0db0b1ac:
    # Line 533
    lwc1	$f1,0($a2)
    lwc1	$f2,3296($a0)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    # Line 532
    addiu	$a6,$a6,1
    # Line 533
    addiu	$a3,$a3,2
    addiu	$a2,$a2,4
    mfc1	$v1,$f0
    addi	$a4,$a4,-1
    bnez	$a4,.L0db0b1ac
    sh	$v1,-2($a3)
    move	$t0,$a6
.L0db0b1e4:
    move	$t2,$a2
    move	$t1,$a3
    sra	$a1,$a7,0x2
    beqz	$a1,.L0db0b29c
    move	$a4,$t1
    move	$a3,$t0
    move	$a2,$t2
.L0db0b200:
    lwc1	$f1,0($a2)
    lwc1	$f2,3296($a0)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    nop
    sh	$a1,0($a4)
    lwc1	$f2,4($a2)
    lwc1	$f3,3296($a0)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,3280($a0)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    nop
    sh	$v1,2($a4)
    lwc1	$f3,8($a2)
    lwc1	$f0,3296($a0)
    mul.s	$f3,$f3,$f0
    lwc1	$f2,3280($a0)
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$v0,$f2
    nop
    sh	$v0,4($a4)
    lwc1	$f0,12($a2)
    lwc1	$f1,3296($a0)
    mul.s	$f0,$f0,$f1
    lwc1	$f3,3280($a0)
    add.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    addiu	$a4,$a4,8
    addiu	$a2,$a2,16
    mfc1	$at,$f3
    # Line 532
    addiu	$a3,$a3,4
    bne	$a5,$a3,.L0db0b200
    # Line 533
    sh	$at,-2($a4)
.L0db0b29c:
    # Line 535
    jr	$ra
    nop
.end __glSpanPackUshort

# Function: __glSpanPackShort
# Declared: Line 541 (Source lines: 543-557)
# Address: 0x0db0b2a4 - 0x0db0b350 (Size: 172 bytes, Frame: 224)
.globl __glSpanPackShort
.ent __glSpanPackShort
__glSpanPackShort:
    # Line 548
    lw	$v1,108($a1)
    # Line 545
    lw	$v0,184($a1)
    # Line 543
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    # Line 554
    mult	$v0,$v1
    sd	$s3,0($sp)
    move	$s3,$zero
    sd	$s0,16($sp)
    # Line 543
    move	$s0,$a3
    sd	$s1,24($sp)
    move	$s1,$a2
    sd	$s5,32($sp)
    move	$s5,$a0
    sd	$gp,40($sp)
    lui	$at,0xf
    addiu	$at,$at,13300
    sd	$s4,8($sp)
    # Line 554
    mflo	$s4
    blez	$s4,.L0db0b330
    # Line 543
    addu	$gp,$t9,$at
.L0db0b2f4:
    # Line 555
    lwc1	$f14,3296($s5)
    lwc1	$f13,0($s1)
    mul.s	$f13,$f13,$f14
    addiu	$s0,$s0,2
    addiu	$s1,$s1,4
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($s5)
    # Line 554
    addiu	$s3,$s3,1
    # Line 555
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    # Line 554
    bne	$s4,$s3,.L0db0b2f4
    # Line 555
    sh	$a1,-2($s0)
    ld	$ra,48($sp)
.L0db0b330:
    ld	$gp,40($sp)
    # Line 557
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    ld	$s3,0($sp)
    ld	$s4,8($sp)
    ld	$s5,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glSpanPackShort

# Function: __glSpanPackUint
# Declared: Line 563 (Source lines: 567-579)
# Address: 0x0db0b350 - 0x0db0b470 (Size: 288 bytes, Frame: 0)
.globl __glSpanPackUint
.ent __glSpanPackUint
__glSpanPackUint:
    # Line 570
    lw	$v0,108($a1)
    # Line 567
    lw	$at,184($a1)
    # Line 576
    mult	$at,$v0
    move	$a6,$zero
    mflo	$a5
    blez	$a5,.L0db0b468
    move	$a7,$a5
    andi	$a4,$a5,0x3
    beqz	$a4,.L0db0b3b0
    move	$t0,$a6
.L0db0b378:
    # Line 577
    lwc1	$f1,0($a2)
    lwc1	$f2,3304($a0)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.l.s	$f0,$f0
    # Line 576
    addiu	$a6,$a6,1
    # Line 577
    addiu	$a3,$a3,4
    addiu	$a2,$a2,4
    dmfc1	$v1,$f0
    addi	$a4,$a4,-1
    bnez	$a4,.L0db0b378
    sw	$v1,-4($a3)
    move	$t0,$a6
.L0db0b3b0:
    move	$t2,$a2
    move	$t1,$a3
    sra	$a1,$a7,0x2
    beqz	$a1,.L0db0b468
    move	$a4,$t1
    move	$a3,$t0
    move	$a2,$t2
.L0db0b3cc:
    lwc1	$f1,0($a2)
    lwc1	$f2,3304($a0)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.l.s	$f0,$f0
    dmfc1	$a1,$f0
    nop
    sw	$a1,0($a4)
    lwc1	$f2,4($a2)
    lwc1	$f3,3304($a0)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,3280($a0)
    add.s	$f1,$f1,$f2
    trunc.l.s	$f1,$f1
    dmfc1	$v1,$f1
    nop
    sw	$v1,4($a4)
    lwc1	$f3,8($a2)
    lwc1	$f0,3304($a0)
    mul.s	$f3,$f3,$f0
    lwc1	$f2,3280($a0)
    add.s	$f2,$f2,$f3
    trunc.l.s	$f2,$f2
    dmfc1	$v0,$f2
    nop
    sw	$v0,8($a4)
    lwc1	$f0,12($a2)
    lwc1	$f1,3304($a0)
    mul.s	$f0,$f0,$f1
    lwc1	$f3,3280($a0)
    add.s	$f3,$f3,$f0
    trunc.l.s	$f3,$f3
    addiu	$a4,$a4,16
    addiu	$a2,$a2,16
    dmfc1	$at,$f3
    # Line 576
    addiu	$a3,$a3,4
    bne	$a5,$a3,.L0db0b3cc
    # Line 577
    sw	$at,-4($a4)
.L0db0b468:
    # Line 579
    jr	$ra
    nop
.end __glSpanPackUint

# Function: __glSpanPackInt
# Declared: Line 585 (Source lines: 587-601)
# Address: 0x0db0b470 - 0x0db0b51c (Size: 172 bytes, Frame: 224)
.globl __glSpanPackInt
.ent __glSpanPackInt
__glSpanPackInt:
    # Line 592
    lw	$v1,108($a1)
    # Line 589
    lw	$v0,184($a1)
    # Line 587
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    # Line 598
    mult	$v0,$v1
    sd	$s3,0($sp)
    move	$s3,$zero
    sd	$s0,16($sp)
    # Line 587
    move	$s0,$a3
    sd	$s1,24($sp)
    move	$s1,$a2
    sd	$s5,32($sp)
    move	$s5,$a0
    sd	$gp,40($sp)
    lui	$at,0xf
    addiu	$at,$at,12840
    sd	$s4,8($sp)
    # Line 598
    mflo	$s4
    blez	$s4,.L0db0b4fc
    # Line 587
    addu	$gp,$t9,$at
.L0db0b4c0:
    # Line 599
    lwc1	$f14,3304($s5)
    lwc1	$f13,0($s1)
    mul.s	$f13,$f13,$f14
    addiu	$s0,$s0,4
    addiu	$s1,$s1,4
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($s5)
    # Line 598
    addiu	$s3,$s3,1
    # Line 599
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    # Line 598
    bne	$s4,$s3,.L0db0b4c0
    # Line 599
    sw	$a1,-4($s0)
    ld	$ra,48($sp)
.L0db0b4fc:
    ld	$gp,40($sp)
    # Line 601
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    ld	$s3,0($sp)
    ld	$s4,8($sp)
    ld	$s5,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glSpanPackInt

# Function: __glSpanPack332Ubyte
# Declared: Line 608 (Source lines: 610-630)
# Address: 0x0db0b51c - 0x0db0b70c (Size: 496 bytes, Frame: 0)
.globl __glSpanPack332Ubyte
.ent __glSpanPack332Ubyte
__glSpanPack332Ubyte:
    # Line 621
    move	$a6,$zero
    li	$a7,255
    # Line 610
    lui	$v0,0xf
    # Line 612
    lw	$a5,184($a1)
    # Line 610
    addiu	$v0,$v0,12668
    addu	$at,$t9,$v0
    # Line 621
    blez	$a5,.L0db0b704
    andi	$v1,$a5,0x1
    move	$a4,$a5
    lwc1	$f5,_lit_40400000
    beqz	$v1,.L0db0b5cc
    lwc1	$f4,_lit_40e00000
    # Line 623
    lwc1	$f2,0($a2)
    mul.s	$f2,$f2,$f4
    trunc.w.s	$f2,$f2
    mfc1	$v0,$f2
    nop
    andi	$v0,$v0,0xff
    sll	$v0,$v0,0x5
    andi	$v0,$v0,0xe0
    andi	$v0,$v0,0xff
    sb	$v0,0($a3)
    # Line 625
    lwc1	$f1,4($a2)
    mul.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    nop
    andi	$a1,$a1,0xff
    sll	$a1,$a1,0x2
    andi	$a1,$a1,0x1c
    or	$a1,$a1,$v0
    andi	$a1,$a1,0xff
    sb	$a1,0($a3)
    # Line 627
    lwc1	$f0,8($a2)
    mul.s	$f0,$f0,$f5
    trunc.w.s	$f0,$f0
    # Line 621
    addiu	$a6,$a6,1
    # Line 627
    mfc1	$a0,$f0
    # Line 628
    addiu	$a3,$a3,1
    # Line 626
    addiu	$a2,$a2,12
    # Line 627
    andi	$a0,$a0,0xff
    andi	$a0,$a0,0x3
    or	$a0,$a0,$a1
    sb	$a0,-1($a3)
.L0db0b5cc:
    move	$t2,$a3
    li	$v0,3
    move	$t3,$a6
    sra	$v1,$a4,0x1
    beqz	$v1,.L0db0b704
    move	$t8,$a2
    li	$a6,224
    move	$a4,$t2
    move	$a2,$t3
    move	$a3,$t8
    li	$t0,255
    and	$a6,$a6,$a7
    li	$a7,224
    li	$t1,255
    and	$t1,$t1,$v0
    li	$v0,3
    and	$a7,$a7,$t0
    li	$t0,255
    and	$t0,$t0,$v0
.L0db0b618:
    # Line 623
    lwc1	$f0,0($a3)
    mul.s	$f0,$f0,$f4
    trunc.w.s	$f0,$f0
    mfc1	$v1,$f0
    nop
    andi	$v1,$v1,0xff
    sll	$v1,$v1,0x5
    and	$v1,$v1,$a6
    sb	$v1,0($a4)
    # Line 625
    lwc1	$f3,4($a3)
    mul.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$v0,$f3
    nop
    andi	$v0,$v0,0xff
    sll	$v0,$v0,0x2
    andi	$v0,$v0,0x1c
    or	$v0,$v0,$v1
    andi	$v0,$v0,0xff
    sb	$v0,0($a4)
    # Line 627
    lwc1	$f2,8($a3)
    mul.s	$f2,$f2,$f5
    trunc.w.s	$f2,$f2
    mfc1	$a1,$f2
    nop
    and	$a1,$a1,$t1
    or	$a1,$a1,$v0
    sb	$a1,0($a4)
    # Line 623
    lwc1	$f1,12($a3)
    mul.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    mfc1	$a0,$f1
    nop
    andi	$a0,$a0,0xff
    sll	$a0,$a0,0x5
    and	$a0,$a0,$a7
    sb	$a0,1($a4)
    # Line 625
    lwc1	$f0,16($a3)
    mul.s	$f0,$f0,$f4
    trunc.w.s	$f0,$f0
    mfc1	$v1,$f0
    nop
    andi	$v1,$v1,0xff
    sll	$v1,$v1,0x2
    andi	$v1,$v1,0x1c
    or	$v1,$v1,$a0
    andi	$v1,$v1,0xff
    sb	$v1,1($a4)
    # Line 627
    lwc1	$f3,20($a3)
    mul.s	$f3,$f3,$f5
    trunc.w.s	$f3,$f3
    # Line 628
    addiu	$a4,$a4,2
    # Line 627
    mfc1	$v0,$f3
    # Line 626
    addiu	$a3,$a3,24
    # Line 621
    addiu	$a2,$a2,2
    # Line 627
    and	$v0,$v0,$t0
    or	$v0,$v0,$v1
    # Line 621
    bne	$a5,$a2,.L0db0b618
    # Line 627
    sb	$v0,-1($a4)
.L0db0b704:
    # Line 630
    jr	$ra
    nop
.end __glSpanPack332Ubyte

# Function: __glSpanPack4444Ushort
# Declared: Line 636 (Source lines: 638-660)
# Address: 0x0db0b70c - 0x0db0b97c (Size: 624 bytes, Frame: 0)
.globl __glSpanPack4444Ushort
.ent __glSpanPack4444Ushort
__glSpanPack4444Ushort:
    # Line 649
    move	$a6,$zero
    li	$a7,0xffff
    # Line 638
    lui	$v0,0xf
    # Line 640
    lw	$a5,184($a1)
    # Line 638
    addiu	$v0,$v0,12172
    addu	$at,$t9,$v0
    # Line 649
    blez	$a5,.L0db0b974
    andi	$v1,$a5,0x1
    move	$a4,$a5
    beqz	$v1,.L0db0b7e4
    lwc1	$f4,_lit_41700000
    # Line 651
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$v1,$f3
    nop
    andi	$v1,$v1,0xffff
    sll	$v1,$v1,0xc
    andi	$v1,$v1,0xf000
    andi	$v1,$v1,0xffff
    sh	$v1,0($a3)
    # Line 653
    lwc1	$f2,4($a2)
    mul.s	$f2,$f2,$f4
    trunc.w.s	$f2,$f2
    mfc1	$v0,$f2
    nop
    andi	$v0,$v0,0xffff
    sll	$v0,$v0,0x8
    andi	$v0,$v0,0xf00
    or	$v0,$v0,$v1
    andi	$v0,$v0,0xffff
    sh	$v0,0($a3)
    # Line 655
    lwc1	$f1,8($a2)
    mul.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    nop
    andi	$a1,$a1,0xffff
    sll	$a1,$a1,0x4
    andi	$a1,$a1,0xf0
    or	$a1,$a1,$v0
    andi	$a1,$a1,0xffff
    sh	$a1,0($a3)
    # Line 657
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f4
    trunc.w.s	$f0,$f0
    # Line 649
    addiu	$a6,$a6,1
    # Line 657
    mfc1	$a0,$f0
    # Line 658
    addiu	$a3,$a3,2
    # Line 656
    addiu	$a2,$a2,16
    # Line 657
    andi	$a0,$a0,0xffff
    andi	$a0,$a0,0xf
    or	$a0,$a0,$a1
    sh	$a0,-2($a3)
.L0db0b7e4:
    move	$t2,$a3
    li	$v0,15
    move	$t3,$a6
    sra	$a0,$a4,0x1
    beqz	$a0,.L0db0b974
    move	$t8,$a2
    li	$a6,0xf000
    move	$a4,$t2
    move	$a2,$t3
    move	$a3,$t8
    li	$t0,0xffff
    and	$a6,$a6,$a7
    li	$a7,0xf000
    li	$t1,0xffff
    and	$t1,$t1,$v0
    li	$v0,15
    and	$a7,$a7,$t0
    li	$t0,0xffff
    and	$t0,$t0,$v0
.L0db0b830:
    # Line 651
    lwc1	$f3,0($a3)
    mul.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$a1,$f3
    nop
    andi	$a1,$a1,0xffff
    sll	$a1,$a1,0xc
    and	$a1,$a1,$a6
    sh	$a1,0($a4)
    # Line 653
    lwc1	$f2,4($a3)
    mul.s	$f2,$f2,$f4
    trunc.w.s	$f2,$f2
    mfc1	$a0,$f2
    nop
    andi	$a0,$a0,0xffff
    sll	$a0,$a0,0x8
    andi	$a0,$a0,0xf00
    or	$a0,$a0,$a1
    andi	$a0,$a0,0xffff
    sh	$a0,0($a4)
    # Line 655
    lwc1	$f1,8($a3)
    mul.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    nop
    andi	$v1,$v1,0xffff
    sll	$v1,$v1,0x4
    andi	$v1,$v1,0xf0
    or	$v1,$v1,$a0
    andi	$v1,$v1,0xffff
    sh	$v1,0($a4)
    # Line 657
    lwc1	$f0,12($a3)
    mul.s	$f0,$f0,$f4
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    nop
    and	$v0,$v0,$t1
    or	$v0,$v0,$v1
    sh	$v0,0($a4)
    # Line 651
    lwc1	$f3,16($a3)
    mul.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$a1,$f3
    nop
    andi	$a1,$a1,0xffff
    sll	$a1,$a1,0xc
    and	$a1,$a1,$a7
    sh	$a1,2($a4)
    # Line 653
    lwc1	$f2,20($a3)
    mul.s	$f2,$f2,$f4
    trunc.w.s	$f2,$f2
    mfc1	$a0,$f2
    nop
    andi	$a0,$a0,0xffff
    sll	$a0,$a0,0x8
    andi	$a0,$a0,0xf00
    or	$a0,$a0,$a1
    andi	$a0,$a0,0xffff
    sh	$a0,2($a4)
    # Line 655
    lwc1	$f1,24($a3)
    mul.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    nop
    andi	$v1,$v1,0xffff
    sll	$v1,$v1,0x4
    andi	$v1,$v1,0xf0
    or	$v1,$v1,$a0
    andi	$v1,$v1,0xffff
    sh	$v1,2($a4)
    # Line 657
    lwc1	$f0,28($a3)
    mul.s	$f0,$f0,$f4
    trunc.w.s	$f0,$f0
    # Line 658
    addiu	$a4,$a4,4
    # Line 657
    mfc1	$v0,$f0
    # Line 656
    addiu	$a3,$a3,32
    # Line 649
    addiu	$a2,$a2,2
    # Line 657
    and	$v0,$v0,$t0
    or	$v0,$v0,$v1
    # Line 649
    bne	$a5,$a2,.L0db0b830
    # Line 657
    sh	$v0,-2($a4)
.L0db0b974:
    # Line 660
    jr	$ra
    nop
.end __glSpanPack4444Ushort

# Function: __glSpanPack5551Ushort
# Declared: Line 666 (Source lines: 668-690)
# Address: 0x0db0b97c - 0x0db0bbe0 (Size: 612 bytes, Frame: 0)
.globl __glSpanPack5551Ushort
.ent __glSpanPack5551Ushort
__glSpanPack5551Ushort:
    # Line 679
    move	$a6,$zero
    li	$a7,0xffff
    # Line 668
    lui	$v0,0xf
    # Line 670
    lw	$a5,184($a1)
    # Line 668
    addiu	$v0,$v0,11548
    addu	$at,$t9,$v0
    # Line 679
    blez	$a5,.L0db0bbd8
    andi	$v1,$a5,0x1
    move	$a4,$a5
    beqz	$v1,.L0db0ba50
    lwc1	$f4,_lit_41f80000
    # Line 681
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$v1,$f3
    nop
    andi	$v1,$v1,0xffff
    sll	$v1,$v1,0xb
    andi	$v1,$v1,0xf800
    andi	$v1,$v1,0xffff
    sh	$v1,0($a3)
    # Line 683
    lwc1	$f2,4($a2)
    mul.s	$f2,$f2,$f4
    trunc.w.s	$f2,$f2
    mfc1	$v0,$f2
    nop
    andi	$v0,$v0,0xffff
    sll	$v0,$v0,0x6
    andi	$v0,$v0,0x7c0
    or	$v0,$v0,$v1
    andi	$v0,$v0,0xffff
    sh	$v0,0($a3)
    # Line 685
    lwc1	$f1,8($a2)
    mul.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    nop
    andi	$a1,$a1,0xffff
    sll	$a1,$a1,0x1
    andi	$a1,$a1,0x3e
    or	$a1,$a1,$v0
    andi	$a1,$a1,0xffff
    sh	$a1,0($a3)
    # Line 687
    lwc1	$f0,12($a2)
    trunc.w.s	$f0,$f0
    # Line 679
    addiu	$a6,$a6,1
    # Line 687
    mfc1	$a0,$f0
    # Line 688
    addiu	$a3,$a3,2
    # Line 686
    addiu	$a2,$a2,16
    # Line 687
    andi	$a0,$a0,0xffff
    andi	$a0,$a0,0x1
    or	$a0,$a0,$a1
    sh	$a0,-2($a3)
.L0db0ba50:
    move	$t2,$a3
    li	$v0,1
    move	$t3,$a6
    sra	$a0,$a4,0x1
    beqz	$a0,.L0db0bbd8
    move	$t8,$a2
    li	$a6,0xf800
    move	$a4,$t2
    move	$a2,$t3
    move	$a3,$t8
    li	$t0,0xffff
    and	$a6,$a6,$a7
    li	$a7,0xf800
    li	$t1,0xffff
    and	$t1,$t1,$v0
    li	$v0,1
    and	$a7,$a7,$t0
    li	$t0,0xffff
    and	$t0,$t0,$v0
.L0db0ba9c:
    # Line 681
    lwc1	$f3,0($a3)
    mul.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$a1,$f3
    nop
    andi	$a1,$a1,0xffff
    sll	$a1,$a1,0xb
    and	$a1,$a1,$a6
    sh	$a1,0($a4)
    # Line 683
    lwc1	$f2,4($a3)
    mul.s	$f2,$f2,$f4
    trunc.w.s	$f2,$f2
    mfc1	$a0,$f2
    nop
    andi	$a0,$a0,0xffff
    sll	$a0,$a0,0x6
    andi	$a0,$a0,0x7c0
    or	$a0,$a0,$a1
    andi	$a0,$a0,0xffff
    sh	$a0,0($a4)
    # Line 685
    lwc1	$f1,8($a3)
    mul.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    nop
    andi	$v1,$v1,0xffff
    sll	$v1,$v1,0x1
    andi	$v1,$v1,0x3e
    or	$v1,$v1,$a0
    andi	$v1,$v1,0xffff
    sh	$v1,0($a4)
    # Line 687
    lwc1	$f0,12($a3)
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    nop
    and	$v0,$v0,$t1
    or	$v0,$v0,$v1
    sh	$v0,0($a4)
    # Line 681
    lwc1	$f3,16($a3)
    mul.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$a1,$f3
    nop
    andi	$a1,$a1,0xffff
    sll	$a1,$a1,0xb
    and	$a1,$a1,$a7
    sh	$a1,2($a4)
    # Line 683
    lwc1	$f2,20($a3)
    mul.s	$f2,$f2,$f4
    trunc.w.s	$f2,$f2
    mfc1	$a0,$f2
    nop
    andi	$a0,$a0,0xffff
    sll	$a0,$a0,0x6
    andi	$a0,$a0,0x7c0
    or	$a0,$a0,$a1
    andi	$a0,$a0,0xffff
    sh	$a0,2($a4)
    # Line 685
    lwc1	$f1,24($a3)
    mul.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    nop
    andi	$v1,$v1,0xffff
    sll	$v1,$v1,0x1
    andi	$v1,$v1,0x3e
    or	$v1,$v1,$a0
    andi	$v1,$v1,0xffff
    sh	$v1,2($a4)
    # Line 687
    lwc1	$f0,28($a3)
    trunc.w.s	$f0,$f0
    # Line 688
    addiu	$a4,$a4,4
    # Line 687
    mfc1	$v0,$f0
    # Line 686
    addiu	$a3,$a3,32
    # Line 679
    addiu	$a2,$a2,2
    # Line 687
    and	$v0,$v0,$t0
    or	$v0,$v0,$v1
    # Line 679
    bne	$a5,$a2,.L0db0ba9c
    # Line 687
    sh	$v0,-2($a4)
.L0db0bbd8:
    # Line 690
    jr	$ra
    nop
.end __glSpanPack5551Ushort

# Function: __glSpanPack8888Uint
# Declared: Line 696 (Source lines: 698-720)
# Address: 0x0db0bbe0 - 0x0db0be14 (Size: 564 bytes, Frame: 0)
.globl __glSpanPack8888Uint
.ent __glSpanPack8888Uint
__glSpanPack8888Uint:
    # Line 709
    move	$t0,$zero
    lui	$a5,0xff00
    # Line 698
    lui	$v0,0xf
    # Line 700
    lw	$a7,184($a1)
    # Line 698
    addiu	$v0,$v0,10936
    addu	$at,$t9,$v0
    # Line 709
    blez	$a7,.L0db0be0c
    andi	$v1,$a7,0x1
    move	$a4,$a7
    lui	$a6,0xff
    beqz	$v1,.L0db0bcb0
    lwc1	$f4,_lit_437f0000
    # Line 711
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f4
    trunc.l.s	$f3,$f3
    dmfc1	$v1,$f3
    nop
    sll	$v1,$v1,0x0
    sll	$v1,$v1,0x18
    and	$v1,$v1,$a5
    sw	$v1,0($a3)
    # Line 713
    lwc1	$f2,4($a2)
    mul.s	$f2,$f2,$f4
    trunc.l.s	$f2,$f2
    dmfc1	$v0,$f2
    nop
    sll	$v0,$v0,0x0
    sll	$v0,$v0,0x10
    and	$v0,$v0,$a6
    or	$v0,$v0,$v1
    sw	$v0,0($a3)
    # Line 715
    lwc1	$f1,8($a2)
    mul.s	$f1,$f1,$f4
    trunc.l.s	$f1,$f1
    dmfc1	$a1,$f1
    nop
    sll	$a1,$a1,0x0
    sll	$a1,$a1,0x8
    andi	$a1,$a1,0xff00
    or	$a1,$a1,$v0
    sw	$a1,0($a3)
    # Line 717
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f4
    trunc.l.s	$f0,$f0
    # Line 709
    addiu	$t0,$t0,1
    # Line 717
    dmfc1	$a0,$f0
    # Line 718
    addiu	$a3,$a3,4
    # Line 716
    addiu	$a2,$a2,16
    # Line 717
    sll	$a0,$a0,0x0
    andi	$a0,$a0,0xff
    or	$a0,$a0,$a1
    sw	$a0,-4($a3)
.L0db0bcb0:
    move	$t1,$t0
    move	$t3,$a2
    move	$t2,$a3
    sra	$a0,$a4,0x1
    beqz	$a0,.L0db0be0c
    move	$a4,$t2
    move	$a3,$t1
    move	$a2,$t3
.L0db0bcd0:
    # Line 711
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f4
    trunc.l.s	$f3,$f3
    dmfc1	$a0,$f3
    nop
    sll	$a0,$a0,0x0
    sll	$a0,$a0,0x18
    and	$a0,$a0,$a5
    sw	$a0,0($a4)
    # Line 713
    lwc1	$f2,4($a2)
    mul.s	$f2,$f2,$f4
    trunc.l.s	$f2,$f2
    dmfc1	$v1,$f2
    nop
    sll	$v1,$v1,0x0
    sll	$v1,$v1,0x10
    and	$v1,$v1,$a6
    or	$v1,$v1,$a0
    sw	$v1,0($a4)
    # Line 715
    lwc1	$f1,8($a2)
    mul.s	$f1,$f1,$f4
    trunc.l.s	$f1,$f1
    dmfc1	$v0,$f1
    nop
    sll	$v0,$v0,0x0
    sll	$v0,$v0,0x8
    andi	$v0,$v0,0xff00
    or	$v0,$v0,$v1
    sw	$v0,0($a4)
    # Line 717
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f4
    trunc.l.s	$f0,$f0
    dmfc1	$a1,$f0
    nop
    sll	$a1,$a1,0x0
    andi	$a1,$a1,0xff
    or	$a1,$a1,$v0
    sw	$a1,0($a4)
    # Line 711
    lwc1	$f3,16($a2)
    mul.s	$f3,$f3,$f4
    trunc.l.s	$f3,$f3
    dmfc1	$a0,$f3
    nop
    sll	$a0,$a0,0x0
    sll	$a0,$a0,0x18
    and	$a0,$a0,$a5
    sw	$a0,4($a4)
    # Line 713
    lwc1	$f2,20($a2)
    mul.s	$f2,$f2,$f4
    trunc.l.s	$f2,$f2
    dmfc1	$v1,$f2
    nop
    sll	$v1,$v1,0x0
    sll	$v1,$v1,0x10
    and	$v1,$v1,$a6
    or	$v1,$v1,$a0
    sw	$v1,4($a4)
    # Line 715
    lwc1	$f1,24($a2)
    mul.s	$f1,$f1,$f4
    trunc.l.s	$f1,$f1
    dmfc1	$v0,$f1
    nop
    sll	$v0,$v0,0x0
    sll	$v0,$v0,0x8
    andi	$v0,$v0,0xff00
    or	$v0,$v0,$v1
    sw	$v0,4($a4)
    # Line 717
    lwc1	$f0,28($a2)
    mul.s	$f0,$f0,$f4
    trunc.l.s	$f0,$f0
    # Line 718
    addiu	$a4,$a4,8
    # Line 717
    dmfc1	$a1,$f0
    # Line 716
    addiu	$a2,$a2,32
    # Line 709
    addiu	$a3,$a3,2
    # Line 717
    sll	$a1,$a1,0x0
    andi	$a1,$a1,0xff
    or	$a1,$a1,$v0
    # Line 709
    bne	$a7,$a3,.L0db0bcd0
    # Line 717
    sw	$a1,-4($a4)
.L0db0be0c:
    # Line 720
    jr	$ra
    nop
.end __glSpanPack8888Uint

# Function: __glSpanPack_10_10_10_2_Uint
# Declared: Line 726 (Source lines: 729-751)
# Address: 0x0db0be14 - 0x0db0c050 (Size: 572 bytes, Frame: 0)
.globl __glSpanPack_10_10_10_2_Uint
.ent __glSpanPack_10_10_10_2_Uint
__glSpanPack_10_10_10_2_Uint:
    # Line 740
    move	$t0,$zero
    lui	$a6,0x3f
    ori	$a6,$a6,0xf000
    # Line 731
    lw	$a7,184($a1)
    # Line 729
    lui	$v0,0xf
    addiu	$v0,$v0,10372
    addu	$at,$t9,$v0
    # Line 740
    lwc1	$f4,_lit_447fc000
    blez	$a7,.L0db0c048
    move	$a4,$a7
    lwc1	$f5,_lit_40400000
    andi	$v0,$a7,0x1
    beqz	$v0,.L0db0beec
    lui	$a5,0xffc0
    # Line 742
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f4
    trunc.l.s	$f3,$f3
    dmfc1	$v0,$f3
    nop
    sll	$v0,$v0,0x0
    sll	$v0,$v0,0x16
    and	$v0,$v0,$a5
    sw	$v0,0($a3)
    # Line 744
    lwc1	$f2,4($a2)
    mul.s	$f2,$f2,$f4
    trunc.l.s	$f2,$f2
    dmfc1	$a1,$f2
    nop
    sll	$a1,$a1,0x0
    sll	$a1,$a1,0xc
    and	$a1,$a1,$a6
    or	$a1,$a1,$v0
    sw	$a1,0($a3)
    # Line 746
    lwc1	$f1,8($a2)
    mul.s	$f1,$f1,$f4
    trunc.l.s	$f1,$f1
    dmfc1	$a0,$f1
    nop
    sll	$a0,$a0,0x0
    sll	$a0,$a0,0x2
    andi	$a0,$a0,0xffc
    or	$a0,$a0,$a1
    sw	$a0,0($a3)
    # Line 748
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f5
    trunc.l.s	$f0,$f0
    # Line 740
    addiu	$t0,$t0,1
    # Line 748
    dmfc1	$v1,$f0
    # Line 749
    addiu	$a3,$a3,4
    # Line 747
    addiu	$a2,$a2,16
    # Line 748
    sll	$v1,$v1,0x0
    andi	$v1,$v1,0x3
    or	$v1,$v1,$a0
    sw	$v1,-4($a3)
.L0db0beec:
    move	$t1,$t0
    move	$t3,$a2
    move	$t2,$a3
    sra	$v1,$a4,0x1
    beqz	$v1,.L0db0c048
    move	$a4,$t2
    move	$a3,$t1
    move	$a2,$t3
.L0db0bf0c:
    # Line 742
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f4
    trunc.l.s	$f3,$f3
    dmfc1	$v1,$f3
    nop
    sll	$v1,$v1,0x0
    sll	$v1,$v1,0x16
    and	$v1,$v1,$a5
    sw	$v1,0($a4)
    # Line 744
    lwc1	$f2,4($a2)
    mul.s	$f2,$f2,$f4
    trunc.l.s	$f2,$f2
    dmfc1	$v0,$f2
    nop
    sll	$v0,$v0,0x0
    sll	$v0,$v0,0xc
    and	$v0,$v0,$a6
    or	$v0,$v0,$v1
    sw	$v0,0($a4)
    # Line 746
    lwc1	$f1,8($a2)
    mul.s	$f1,$f1,$f4
    trunc.l.s	$f1,$f1
    dmfc1	$a1,$f1
    nop
    sll	$a1,$a1,0x0
    sll	$a1,$a1,0x2
    andi	$a1,$a1,0xffc
    or	$a1,$a1,$v0
    sw	$a1,0($a4)
    # Line 748
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f5
    trunc.l.s	$f0,$f0
    dmfc1	$a0,$f0
    nop
    sll	$a0,$a0,0x0
    andi	$a0,$a0,0x3
    or	$a0,$a0,$a1
    sw	$a0,0($a4)
    # Line 742
    lwc1	$f3,16($a2)
    mul.s	$f3,$f3,$f4
    trunc.l.s	$f3,$f3
    dmfc1	$v1,$f3
    nop
    sll	$v1,$v1,0x0
    sll	$v1,$v1,0x16
    and	$v1,$v1,$a5
    sw	$v1,4($a4)
    # Line 744
    lwc1	$f2,20($a2)
    mul.s	$f2,$f2,$f4
    trunc.l.s	$f2,$f2
    dmfc1	$v0,$f2
    nop
    sll	$v0,$v0,0x0
    sll	$v0,$v0,0xc
    and	$v0,$v0,$a6
    or	$v0,$v0,$v1
    sw	$v0,4($a4)
    # Line 746
    lwc1	$f1,24($a2)
    mul.s	$f1,$f1,$f4
    trunc.l.s	$f1,$f1
    dmfc1	$a1,$f1
    nop
    sll	$a1,$a1,0x0
    sll	$a1,$a1,0x2
    andi	$a1,$a1,0xffc
    or	$a1,$a1,$v0
    sw	$a1,4($a4)
    # Line 748
    lwc1	$f0,28($a2)
    mul.s	$f0,$f0,$f5
    trunc.l.s	$f0,$f0
    # Line 749
    addiu	$a4,$a4,8
    # Line 748
    dmfc1	$a0,$f0
    # Line 747
    addiu	$a2,$a2,32
    # Line 740
    addiu	$a3,$a3,2
    # Line 748
    sll	$a0,$a0,0x0
    andi	$a0,$a0,0x3
    or	$a0,$a0,$a1
    # Line 740
    bne	$a7,$a3,.L0db0bf0c
    # Line 748
    sw	$a0,-4($a4)
.L0db0c048:
    # Line 751
    jr	$ra
    nop
.end __glSpanPack_10_10_10_2_Uint

# Function: __glSpanPackUbyteI
# Declared: Line 758 (Source lines: 762-772)
# Address: 0x0db0c050 - 0x0db0c114 (Size: 196 bytes, Frame: 0)
.globl __glSpanPackUbyteI
.ent __glSpanPackUbyteI
__glSpanPackUbyteI:
    # Line 762
    lw	$a4,184($a1)
    # Line 769
    move	$a5,$zero
    blez	$a4,.L0db0c10c
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db0c094
    move	$a7,$a3
.L0db0c06c:
    # Line 770
    lwc1	$f0,0($a2)
    trunc.w.s	$f0,$f0
    # Line 769
    addiu	$a5,$a5,1
    # Line 770
    addiu	$a3,$a3,1
    addiu	$a2,$a2,4
    mfc1	$at,$f0
    addi	$a1,$a1,-1
    bnez	$a1,.L0db0c06c
    sb	$at,-1($a3)
    move	$a7,$a3
.L0db0c094:
    sra	$v0,$a6,0x2
    move	$t1,$a5
    beqz	$v0,.L0db0c10c
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db0c0b0:
    lwc1	$f0,0($a3)
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    nop
    sb	$v0,0($a2)
    lwc1	$f3,4($a3)
    trunc.w.s	$f3,$f3
    mfc1	$at,$f3
    nop
    sb	$at,1($a2)
    lwc1	$f2,8($a3)
    trunc.w.s	$f2,$f2
    mfc1	$a0,$f2
    nop
    sb	$a0,2($a2)
    lwc1	$f1,12($a3)
    trunc.w.s	$f1,$f1
    addiu	$a2,$a2,4
    addiu	$a3,$a3,16
    mfc1	$v1,$f1
    # Line 769
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db0c0b0
    # Line 770
    sb	$v1,-1($a2)
.L0db0c10c:
    # Line 772
    jr	$ra
    nop
.end __glSpanPackUbyteI

# Function: __glSpanPackByteI
# Declared: Line 779 (Source lines: 783-793)
# Address: 0x0db0c114 - 0x0db0c1ec (Size: 216 bytes, Frame: 0)
.globl __glSpanPackByteI
.ent __glSpanPackByteI
__glSpanPackByteI:
    # Line 783
    lw	$a4,184($a1)
    # Line 790
    move	$a5,$zero
    blez	$a4,.L0db0c1e4
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db0c15c
    move	$a7,$a3
.L0db0c130:
    # Line 791
    lwc1	$f0,0($a2)
    trunc.w.s	$f0,$f0
    # Line 790
    addiu	$a5,$a5,1
    # Line 791
    addiu	$a3,$a3,1
    mfc1	$at,$f0
    addiu	$a2,$a2,4
    addi	$a1,$a1,-1
    andi	$at,$at,0x7f
    bnez	$a1,.L0db0c130
    sb	$at,-1($a3)
    move	$a7,$a3
.L0db0c15c:
    sra	$v0,$a6,0x2
    move	$t1,$a5
    beqz	$v0,.L0db0c1e4
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db0c178:
    lwc1	$f0,0($a3)
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    nop
    andi	$v0,$v0,0x7f
    sb	$v0,0($a2)
    lwc1	$f3,4($a3)
    trunc.w.s	$f3,$f3
    mfc1	$at,$f3
    nop
    andi	$at,$at,0x7f
    sb	$at,1($a2)
    lwc1	$f2,8($a3)
    trunc.w.s	$f2,$f2
    mfc1	$a0,$f2
    nop
    andi	$a0,$a0,0x7f
    sb	$a0,2($a2)
    lwc1	$f1,12($a3)
    trunc.w.s	$f1,$f1
    addiu	$a2,$a2,4
    mfc1	$v1,$f1
    addiu	$a3,$a3,16
    # Line 790
    addiu	$a1,$a1,4
    # Line 791
    andi	$v1,$v1,0x7f
    # Line 790
    bne	$a4,$a1,.L0db0c178
    # Line 791
    sb	$v1,-1($a2)
.L0db0c1e4:
    # Line 793
    jr	$ra
    nop
.end __glSpanPackByteI

# Function: __glSpanPackUshortI
# Declared: Line 800 (Source lines: 804-814)
# Address: 0x0db0c1ec - 0x0db0c2b0 (Size: 196 bytes, Frame: 0)
.globl __glSpanPackUshortI
.ent __glSpanPackUshortI
__glSpanPackUshortI:
    # Line 804
    lw	$a4,184($a1)
    # Line 811
    move	$a5,$zero
    blez	$a4,.L0db0c2a8
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db0c230
    move	$a7,$a3
.L0db0c208:
    # Line 812
    lwc1	$f0,0($a2)
    trunc.w.s	$f0,$f0
    # Line 811
    addiu	$a5,$a5,1
    # Line 812
    addiu	$a3,$a3,2
    addiu	$a2,$a2,4
    mfc1	$at,$f0
    addi	$a1,$a1,-1
    bnez	$a1,.L0db0c208
    sh	$at,-2($a3)
    move	$a7,$a3
.L0db0c230:
    sra	$v0,$a6,0x2
    move	$t1,$a5
    beqz	$v0,.L0db0c2a8
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db0c24c:
    lwc1	$f0,0($a3)
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    nop
    sh	$v0,0($a2)
    lwc1	$f3,4($a3)
    trunc.w.s	$f3,$f3
    mfc1	$at,$f3
    nop
    sh	$at,2($a2)
    lwc1	$f2,8($a3)
    trunc.w.s	$f2,$f2
    mfc1	$a0,$f2
    nop
    sh	$a0,4($a2)
    lwc1	$f1,12($a3)
    trunc.w.s	$f1,$f1
    addiu	$a2,$a2,8
    addiu	$a3,$a3,16
    mfc1	$v1,$f1
    # Line 811
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db0c24c
    # Line 812
    sh	$v1,-2($a2)
.L0db0c2a8:
    # Line 814
    jr	$ra
    nop
.end __glSpanPackUshortI

# Function: __glSpanPackShortI
# Declared: Line 821 (Source lines: 825-835)
# Address: 0x0db0c2b0 - 0x0db0c388 (Size: 216 bytes, Frame: 0)
.globl __glSpanPackShortI
.ent __glSpanPackShortI
__glSpanPackShortI:
    # Line 825
    lw	$a4,184($a1)
    # Line 832
    move	$a5,$zero
    blez	$a4,.L0db0c380
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db0c2f8
    move	$a7,$a3
.L0db0c2cc:
    # Line 833
    lwc1	$f0,0($a2)
    trunc.w.s	$f0,$f0
    # Line 832
    addiu	$a5,$a5,1
    # Line 833
    addiu	$a3,$a3,2
    mfc1	$at,$f0
    addiu	$a2,$a2,4
    addi	$a1,$a1,-1
    andi	$at,$at,0x7fff
    bnez	$a1,.L0db0c2cc
    sh	$at,-2($a3)
    move	$a7,$a3
.L0db0c2f8:
    sra	$v0,$a6,0x2
    move	$t1,$a5
    beqz	$v0,.L0db0c380
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db0c314:
    lwc1	$f0,0($a3)
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    nop
    andi	$v0,$v0,0x7fff
    sh	$v0,0($a2)
    lwc1	$f3,4($a3)
    trunc.w.s	$f3,$f3
    mfc1	$at,$f3
    nop
    andi	$at,$at,0x7fff
    sh	$at,2($a2)
    lwc1	$f2,8($a3)
    trunc.w.s	$f2,$f2
    mfc1	$a0,$f2
    nop
    andi	$a0,$a0,0x7fff
    sh	$a0,4($a2)
    lwc1	$f1,12($a3)
    trunc.w.s	$f1,$f1
    addiu	$a2,$a2,8
    mfc1	$v1,$f1
    addiu	$a3,$a3,16
    # Line 832
    addiu	$a1,$a1,4
    # Line 833
    andi	$v1,$v1,0x7fff
    # Line 832
    bne	$a4,$a1,.L0db0c314
    # Line 833
    sh	$v1,-2($a2)
.L0db0c380:
    # Line 835
    jr	$ra
    nop
.end __glSpanPackShortI

# Function: __glSpanPackUintI
# Declared: Line 842 (Source lines: 846-856)
# Address: 0x0db0c388 - 0x0db0c44c (Size: 196 bytes, Frame: 0)
.globl __glSpanPackUintI
.ent __glSpanPackUintI
__glSpanPackUintI:
    # Line 846
    lw	$a4,184($a1)
    # Line 853
    move	$a5,$zero
    blez	$a4,.L0db0c444
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db0c3cc
    move	$a7,$a3
.L0db0c3a4:
    # Line 854
    lwc1	$f0,0($a2)
    trunc.l.s	$f0,$f0
    # Line 853
    addiu	$a5,$a5,1
    # Line 854
    addiu	$a3,$a3,4
    addiu	$a2,$a2,4
    dmfc1	$at,$f0
    addi	$a1,$a1,-1
    bnez	$a1,.L0db0c3a4
    sw	$at,-4($a3)
    move	$a7,$a3
.L0db0c3cc:
    sra	$v0,$a6,0x2
    move	$t1,$a5
    beqz	$v0,.L0db0c444
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db0c3e8:
    lwc1	$f0,0($a3)
    trunc.l.s	$f0,$f0
    dmfc1	$v0,$f0
    nop
    sw	$v0,0($a2)
    lwc1	$f3,4($a3)
    trunc.l.s	$f3,$f3
    dmfc1	$at,$f3
    nop
    sw	$at,4($a2)
    lwc1	$f2,8($a3)
    trunc.l.s	$f2,$f2
    dmfc1	$a0,$f2
    nop
    sw	$a0,8($a2)
    lwc1	$f1,12($a3)
    trunc.l.s	$f1,$f1
    addiu	$a2,$a2,16
    addiu	$a3,$a3,16
    dmfc1	$v1,$f1
    # Line 853
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db0c3e8
    # Line 854
    sw	$v1,-4($a2)
.L0db0c444:
    # Line 856
    jr	$ra
    nop
.end __glSpanPackUintI

# Function: __glSpanPackIntI
# Declared: Line 863 (Source lines: 867-877)
# Address: 0x0db0c44c - 0x0db0c528 (Size: 220 bytes, Frame: 0)
.globl __glSpanPackIntI
.ent __glSpanPackIntI
__glSpanPackIntI:
    # Line 867
    lw	$a5,184($a1)
    # Line 874
    move	$a6,$zero
    lui	$a4,0x7fff
    blez	$a5,.L0db0c520
    ori	$a4,$a4,0xffff
    andi	$a1,$a5,0x3
    beqz	$a1,.L0db0c494
    move	$a7,$a5
.L0db0c46c:
    # Line 875
    lwc1	$f0,0($a2)
    trunc.w.s	$f0,$f0
    # Line 874
    addiu	$a6,$a6,1
    # Line 875
    addiu	$a3,$a3,4
    mfc1	$at,$f0
    addiu	$a2,$a2,4
    addi	$a1,$a1,-1
    and	$at,$at,$a4
    bnez	$a1,.L0db0c46c
    sw	$at,-4($a3)
.L0db0c494:
    move	$t0,$a6
    sra	$v0,$a7,0x2
    move	$t1,$a3
    beqz	$v0,.L0db0c520
    move	$t2,$a2
    move	$a3,$t1
    move	$a2,$t0
    move	$a1,$t2
.L0db0c4b4:
    lwc1	$f0,0($a1)
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    nop
    and	$v0,$v0,$a4
    sw	$v0,0($a3)
    lwc1	$f3,4($a1)
    trunc.w.s	$f3,$f3
    mfc1	$at,$f3
    nop
    and	$at,$at,$a4
    sw	$at,4($a3)
    lwc1	$f2,8($a1)
    trunc.w.s	$f2,$f2
    mfc1	$a0,$f2
    nop
    and	$a0,$a0,$a4
    sw	$a0,8($a3)
    lwc1	$f1,12($a1)
    trunc.w.s	$f1,$f1
    addiu	$a3,$a3,16
    mfc1	$v1,$f1
    addiu	$a1,$a1,16
    # Line 874
    addiu	$a2,$a2,4
    # Line 875
    and	$v1,$v1,$a4
    # Line 874
    bne	$a5,$a2,.L0db0c4b4
    # Line 875
    sw	$v1,-4($a3)
.L0db0c520:
    # Line 877
    jr	$ra
    nop
.end __glSpanPackIntI

# Function: __glSpanPackNonCompUbyte
# Declared: Line 887 (Source lines: 891-903)
# Address: 0x0db0c528 - 0x0db0c5f8 (Size: 208 bytes, Frame: 0)
.globl __glSpanPackNonCompUbyte
.ent __glSpanPackNonCompUbyte
__glSpanPackNonCompUbyte:
    # Line 894
    lw	$v0,108($a1)
    # Line 891
    lw	$at,184($a1)
    # Line 900
    mult	$at,$v0
    move	$a5,$zero
    mflo	$a4
    blez	$a4,.L0db0c5f0
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db0c578
    move	$a7,$a3
.L0db0c550:
    # Line 901
    lwc1	$f0,0($a2)
    trunc.w.s	$f0,$f0
    # Line 900
    addiu	$a5,$a5,1
    # Line 901
    addiu	$a3,$a3,1
    addiu	$a2,$a2,4
    mfc1	$v1,$f0
    addi	$a1,$a1,-1
    bnez	$a1,.L0db0c550
    sb	$v1,-1($a3)
    move	$a7,$a3
.L0db0c578:
    sra	$a0,$a6,0x2
    move	$t1,$a5
    beqz	$a0,.L0db0c5f0
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db0c594:
    lwc1	$f0,0($a3)
    trunc.w.s	$f0,$f0
    mfc1	$a0,$f0
    nop
    sb	$a0,0($a2)
    lwc1	$f3,4($a3)
    trunc.w.s	$f3,$f3
    mfc1	$v1,$f3
    nop
    sb	$v1,1($a2)
    lwc1	$f2,8($a3)
    trunc.w.s	$f2,$f2
    mfc1	$v0,$f2
    nop
    sb	$v0,2($a2)
    lwc1	$f1,12($a3)
    trunc.w.s	$f1,$f1
    addiu	$a2,$a2,4
    addiu	$a3,$a3,16
    mfc1	$at,$f1
    # Line 900
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db0c594
    # Line 901
    sb	$at,-1($a2)
.L0db0c5f0:
    # Line 903
    jr	$ra
    nop
.end __glSpanPackNonCompUbyte

# Function: __glSpanPackNonCompByte
# Declared: Line 910 (Source lines: 914-926)
# Address: 0x0db0c5f8 - 0x0db0c6c8 (Size: 208 bytes, Frame: 0)
.globl __glSpanPackNonCompByte
.ent __glSpanPackNonCompByte
__glSpanPackNonCompByte:
    # Line 917
    lw	$v0,108($a1)
    # Line 914
    lw	$at,184($a1)
    # Line 923
    mult	$at,$v0
    move	$a5,$zero
    mflo	$a4
    blez	$a4,.L0db0c6c0
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db0c648
    move	$a7,$a3
.L0db0c620:
    # Line 924
    lwc1	$f0,0($a2)
    trunc.w.s	$f0,$f0
    # Line 923
    addiu	$a5,$a5,1
    # Line 924
    addiu	$a3,$a3,1
    addiu	$a2,$a2,4
    mfc1	$v1,$f0
    addi	$a1,$a1,-1
    bnez	$a1,.L0db0c620
    sb	$v1,-1($a3)
    move	$a7,$a3
.L0db0c648:
    sra	$a0,$a6,0x2
    move	$t1,$a5
    beqz	$a0,.L0db0c6c0
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db0c664:
    lwc1	$f0,0($a3)
    trunc.w.s	$f0,$f0
    mfc1	$a0,$f0
    nop
    sb	$a0,0($a2)
    lwc1	$f3,4($a3)
    trunc.w.s	$f3,$f3
    mfc1	$v1,$f3
    nop
    sb	$v1,1($a2)
    lwc1	$f2,8($a3)
    trunc.w.s	$f2,$f2
    mfc1	$v0,$f2
    nop
    sb	$v0,2($a2)
    lwc1	$f1,12($a3)
    trunc.w.s	$f1,$f1
    addiu	$a2,$a2,4
    addiu	$a3,$a3,16
    mfc1	$at,$f1
    # Line 923
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db0c664
    # Line 924
    sb	$at,-1($a2)
.L0db0c6c0:
    # Line 926
    jr	$ra
    nop
.end __glSpanPackNonCompByte

# Function: __glSpanPackNonCompUshort
# Declared: Line 933 (Source lines: 937-949)
# Address: 0x0db0c6c8 - 0x0db0c798 (Size: 208 bytes, Frame: 0)
.globl __glSpanPackNonCompUshort
.ent __glSpanPackNonCompUshort
__glSpanPackNonCompUshort:
    # Line 940
    lw	$v0,108($a1)
    # Line 937
    lw	$at,184($a1)
    # Line 946
    mult	$at,$v0
    move	$a5,$zero
    mflo	$a4
    blez	$a4,.L0db0c790
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db0c718
    move	$a7,$a3
.L0db0c6f0:
    # Line 947
    lwc1	$f0,0($a2)
    trunc.w.s	$f0,$f0
    # Line 946
    addiu	$a5,$a5,1
    # Line 947
    addiu	$a3,$a3,2
    addiu	$a2,$a2,4
    mfc1	$v1,$f0
    addi	$a1,$a1,-1
    bnez	$a1,.L0db0c6f0
    sh	$v1,-2($a3)
    move	$a7,$a3
.L0db0c718:
    sra	$a0,$a6,0x2
    move	$t1,$a5
    beqz	$a0,.L0db0c790
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db0c734:
    lwc1	$f0,0($a3)
    trunc.w.s	$f0,$f0
    mfc1	$a0,$f0
    nop
    sh	$a0,0($a2)
    lwc1	$f3,4($a3)
    trunc.w.s	$f3,$f3
    mfc1	$v1,$f3
    nop
    sh	$v1,2($a2)
    lwc1	$f2,8($a3)
    trunc.w.s	$f2,$f2
    mfc1	$v0,$f2
    nop
    sh	$v0,4($a2)
    lwc1	$f1,12($a3)
    trunc.w.s	$f1,$f1
    addiu	$a2,$a2,8
    addiu	$a3,$a3,16
    mfc1	$at,$f1
    # Line 946
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db0c734
    # Line 947
    sh	$at,-2($a2)
.L0db0c790:
    # Line 949
    jr	$ra
    nop
.end __glSpanPackNonCompUshort

# Function: __glSpanPackNonCompShort
# Declared: Line 956 (Source lines: 960-972)
# Address: 0x0db0c798 - 0x0db0c868 (Size: 208 bytes, Frame: 0)
.globl __glSpanPackNonCompShort
.ent __glSpanPackNonCompShort
__glSpanPackNonCompShort:
    # Line 963
    lw	$v0,108($a1)
    # Line 960
    lw	$at,184($a1)
    # Line 969
    mult	$at,$v0
    move	$a5,$zero
    mflo	$a4
    blez	$a4,.L0db0c860
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db0c7e8
    move	$a7,$a3
.L0db0c7c0:
    # Line 970
    lwc1	$f0,0($a2)
    trunc.w.s	$f0,$f0
    # Line 969
    addiu	$a5,$a5,1
    # Line 970
    addiu	$a3,$a3,2
    addiu	$a2,$a2,4
    mfc1	$v1,$f0
    addi	$a1,$a1,-1
    bnez	$a1,.L0db0c7c0
    sh	$v1,-2($a3)
    move	$a7,$a3
.L0db0c7e8:
    sra	$a0,$a6,0x2
    move	$t1,$a5
    beqz	$a0,.L0db0c860
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db0c804:
    lwc1	$f0,0($a3)
    trunc.w.s	$f0,$f0
    mfc1	$a0,$f0
    nop
    sh	$a0,0($a2)
    lwc1	$f3,4($a3)
    trunc.w.s	$f3,$f3
    mfc1	$v1,$f3
    nop
    sh	$v1,2($a2)
    lwc1	$f2,8($a3)
    trunc.w.s	$f2,$f2
    mfc1	$v0,$f2
    nop
    sh	$v0,4($a2)
    lwc1	$f1,12($a3)
    trunc.w.s	$f1,$f1
    addiu	$a2,$a2,8
    addiu	$a3,$a3,16
    mfc1	$at,$f1
    # Line 969
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db0c804
    # Line 970
    sh	$at,-2($a2)
.L0db0c860:
    # Line 972
    jr	$ra
    nop
.end __glSpanPackNonCompShort

# Function: __glSpanPackNonCompUint
# Declared: Line 979 (Source lines: 983-995)
# Address: 0x0db0c868 - 0x0db0c938 (Size: 208 bytes, Frame: 0)
.globl __glSpanPackNonCompUint
.ent __glSpanPackNonCompUint
__glSpanPackNonCompUint:
    # Line 986
    lw	$v0,108($a1)
    # Line 983
    lw	$at,184($a1)
    # Line 992
    mult	$at,$v0
    move	$a5,$zero
    mflo	$a4
    blez	$a4,.L0db0c930
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db0c8b8
    move	$a7,$a3
.L0db0c890:
    # Line 993
    lwc1	$f0,0($a2)
    trunc.l.s	$f0,$f0
    # Line 992
    addiu	$a5,$a5,1
    # Line 993
    addiu	$a3,$a3,4
    addiu	$a2,$a2,4
    dmfc1	$v1,$f0
    addi	$a1,$a1,-1
    bnez	$a1,.L0db0c890
    sw	$v1,-4($a3)
    move	$a7,$a3
.L0db0c8b8:
    sra	$a0,$a6,0x2
    move	$t1,$a5
    beqz	$a0,.L0db0c930
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db0c8d4:
    lwc1	$f0,0($a3)
    trunc.l.s	$f0,$f0
    dmfc1	$a0,$f0
    nop
    sw	$a0,0($a2)
    lwc1	$f3,4($a3)
    trunc.l.s	$f3,$f3
    dmfc1	$v1,$f3
    nop
    sw	$v1,4($a2)
    lwc1	$f2,8($a3)
    trunc.l.s	$f2,$f2
    dmfc1	$v0,$f2
    nop
    sw	$v0,8($a2)
    lwc1	$f1,12($a3)
    trunc.l.s	$f1,$f1
    addiu	$a2,$a2,16
    addiu	$a3,$a3,16
    dmfc1	$at,$f1
    # Line 992
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db0c8d4
    # Line 993
    sw	$at,-4($a2)
.L0db0c930:
    # Line 995
    jr	$ra
    nop
.end __glSpanPackNonCompUint

# Function: __glSpanPackNonCompInt
# Declared: Line 1002 (Source lines: 1006-1018)
# Address: 0x0db0c938 - 0x0db0ca08 (Size: 208 bytes, Frame: 0)
.globl __glSpanPackNonCompInt
.ent __glSpanPackNonCompInt
__glSpanPackNonCompInt:
    # Line 1009
    lw	$v0,108($a1)
    # Line 1006
    lw	$at,184($a1)
    # Line 1015
    mult	$at,$v0
    move	$a5,$zero
    mflo	$a4
    blez	$a4,.L0db0ca00
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db0c988
    move	$a7,$a3
.L0db0c960:
    # Line 1016
    lwc1	$f0,0($a2)
    trunc.w.s	$f0,$f0
    # Line 1015
    addiu	$a5,$a5,1
    # Line 1016
    addiu	$a3,$a3,4
    addiu	$a2,$a2,4
    mfc1	$v1,$f0
    addi	$a1,$a1,-1
    bnez	$a1,.L0db0c960
    sw	$v1,-4($a3)
    move	$a7,$a3
.L0db0c988:
    sra	$a0,$a6,0x2
    move	$t1,$a5
    beqz	$a0,.L0db0ca00
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db0c9a4:
    lwc1	$f0,0($a3)
    trunc.w.s	$f0,$f0
    mfc1	$a0,$f0
    nop
    sw	$a0,0($a2)
    lwc1	$f3,4($a3)
    trunc.w.s	$f3,$f3
    mfc1	$v1,$f3
    nop
    sw	$v1,4($a2)
    lwc1	$f2,8($a3)
    trunc.w.s	$f2,$f2
    mfc1	$v0,$f2
    nop
    sw	$v0,8($a2)
    lwc1	$f1,12($a3)
    trunc.w.s	$f1,$f1
    addiu	$a2,$a2,16
    addiu	$a3,$a3,16
    mfc1	$at,$f1
    # Line 1015
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db0c9a4
    # Line 1016
    sw	$at,-4($a2)
.L0db0ca00:
    # Line 1018
    jr	$ra
    nop
.end __glSpanPackNonCompInt

# Function: __glSpanCopy
# Declared: Line 1021 (Source lines: 1023-1028)
# Address: 0x0db0ca08 - 0x0db0ca64 (Size: 92 bytes, Frame: 48)
.globl __glSpanCopy
.ent __glSpanCopy
__glSpanCopy:
    # Line 1027
    lw	$a4,180($a1)
    lw	$a0,28($a1)
    mult	$a0,$a4
    lw	$v0,36($a1)
    mflo	$v1
    nop
    nop
    mult	$v0,$v1
    # Line 1023
    move	$a1,$a2
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0xf
    addiu	$at,$at,7312
    addu	$gp,$t9,$at
    # Line 1027
    # lw $t9, -17848($gp) # &memcpy
    sd	$ra,0($sp)
    mflo	$a2
    jal	memcpy
    # Line 1023
    move	$a0,$a3
    # Line 1028
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glSpanCopy

# Function: __glSpanPackBitmap
# Declared: Line 1035 (Source lines: 1037-1219)
# Address: 0x0db0ca64 - 0x0db0d308 (Size: 2212 bytes, Frame: 0)
.globl __glSpanPackBitmap
.ent __glSpanPackBitmap
__glSpanPackBitmap:
    # Line 1058
    lw	$a6,168($a1)
    # Line 1060
    lbu	$a5,0($a3)
    # Line 1052
    move	$a7,$a3
    # Line 1056
    lw	$t0,156($a1)
    # Line 1060
    lw	$v0,124($a1)
    # Line 1037
    lui	$v1,0xf
    addiu	$v1,$v1,7220
    # Line 1060
    beqz	$v0,.L0db0ce20
    # Line 1037
    addu	$at,$t9,$v1
    # Line 1060
    beqz	$t0,.L0db0cbdc
    la	$v0,sub_0dbf0000
    sll	$a4,$t0,0x2
    sltiu	$v1,$t0,8
    addiu	$v0,$v0,-4352
    beqz	$v1,.L0db0cbd4
    addu	$a4,$a4,$v0
    lw	$v1,%lo(jtbl_0dbeef00)($a4)
    jr	$v1
    nop
.L0db0cab0:
    # Line 1066
    lwc1	$f0,0($a2)
    trunc.w.s	$f0,$f0
    mfc1	$a0,$f0
    nop
    andi	$a0,$a0,0x1
    beqz	$a0,.L0db0d284
    addiu	$a2,$a2,4
    ori	$a5,$a5,0x2
.L0db0cad0:
    # Line 1068
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db0cbd8
    # Line 1095
    addiu	$a7,$a3,1
.L0db0cadc:
    # Line 1070
    lwc1	$f1,0($a2)
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    nop
    andi	$a1,$a1,0x1
    beqz	$a1,.L0db0d248
    addiu	$a2,$a2,4
    ori	$a5,$a5,0x4
.L0db0cafc:
    # Line 1072
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db0cbd8
    # Line 1095
    addiu	$a7,$a3,1
.L0db0cb08:
    # Line 1074
    lwc1	$f2,0($a2)
    trunc.w.s	$f2,$f2
    mfc1	$v0,$f2
    nop
    andi	$v0,$v0,0x1
    beqz	$v0,.L0db0d234
    addiu	$a2,$a2,4
    ori	$a5,$a5,0x8
.L0db0cb28:
    # Line 1076
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db0cbd8
    # Line 1095
    addiu	$a7,$a3,1
.L0db0cb34:
    # Line 1078
    lwc1	$f3,0($a2)
    trunc.w.s	$f3,$f3
    mfc1	$v1,$f3
    nop
    andi	$v1,$v1,0x1
    beqz	$v1,.L0db0d228
    addiu	$a2,$a2,4
    ori	$a5,$a5,0x10
.L0db0cb54:
    # Line 1080
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db0cbd8
    # Line 1095
    addiu	$a7,$a3,1
.L0db0cb60:
    # Line 1082
    lwc1	$f0,0($a2)
    trunc.w.s	$f0,$f0
    mfc1	$a0,$f0
    nop
    andi	$a0,$a0,0x1
    beqz	$a0,.L0db0d210
    addiu	$a2,$a2,4
    ori	$a5,$a5,0x20
.L0db0cb80:
    # Line 1084
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db0cbd8
    # Line 1095
    addiu	$a7,$a3,1
.L0db0cb8c:
    # Line 1086
    lwc1	$f1,0($a2)
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    # Line 1088
    addiu	$a6,$a6,-1
    # Line 1086
    andi	$a1,$a1,0x1
    beqz	$a1,.L0db0d204
    addiu	$a2,$a2,4
    ori	$a5,$a5,0x40
.L0db0cbac:
    # Line 1088
    beqz	$a6,.L0db0cbd8
    # Line 1095
    addiu	$a7,$a3,1
.L0db0cbb4:
    # Line 1090
    lwc1	$f2,0($a2)
    trunc.w.s	$f2,$f2
    mfc1	$v0,$f2
    # Line 1092
    addiu	$a6,$a6,-1
    # Line 1090
    andi	$v0,$v0,0x1
    beqz	$v0,.L0db0d1f8
    addiu	$a2,$a2,4
    ori	$a5,$a5,0x80
.L0db0cbd4:
    # Line 1095
    addiu	$a7,$a3,1
.L0db0cbd8:
    # Line 1094
    sb	$a5,0($a3)
.L0db0cbdc:
    # Line 1095
    slti	$v1,$a6,8
    bnez	$v1,.L0db0cd00
    # Line 1113
    la	$v0,sub_0dbf0000
    b	.L0db0cc9c
    # Line 1099
    lwc1	$f0,0($a2)
.L0db0cbf0:
    # Line 1102
    lwc1	$f3,12($a2)
.L0db0cbf4:
    trunc.w.s	$f3,$f3
    mfc1	$a0,$f3
    nop
    andi	$a0,$a0,0x1
    beqzl	$a0,.L0db0cc14
    # Line 1103
    lwc1	$f0,16($a2)
    ori	$a5,$a5,0x8
    lwc1	$f0,16($a2)
.L0db0cc14:
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    nop
    andi	$a1,$a1,0x1
    beqzl	$a1,.L0db0cc34
    # Line 1104
    lwc1	$f1,20($a2)
    ori	$a5,$a5,0x10
    lwc1	$f1,20($a2)
.L0db0cc34:
    trunc.w.s	$f1,$f1
    mfc1	$v0,$f1
    nop
    andi	$v0,$v0,0x1
    beqzl	$v0,.L0db0cc54
    # Line 1105
    lwc1	$f2,24($a2)
    ori	$a5,$a5,0x20
    lwc1	$f2,24($a2)
.L0db0cc54:
    trunc.w.s	$f2,$f2
    mfc1	$v1,$f2
    nop
    andi	$v1,$v1,0x1
    beqz	$v1,.L0db0cc70
    # Line 1109
    slti	$a1,$a6,8
    # Line 1106
    ori	$a5,$a5,0x40
.L0db0cc70:
    # Line 1107
    lwc1	$f3,28($a2)
    trunc.w.s	$f3,$f3
    mfc1	$a0,$f3
    nop
    andi	$a0,$a0,0x1
    beqz	$a0,.L0db0cc90
    addiu	$a2,$a2,32
    ori	$a5,$a5,0x80
.L0db0cc90:
    # Line 1109
    bnez	$a1,.L0db0ccfc
    # Line 1108
    sb	$a5,-1($a7)
    # Line 1099
    lwc1	$f0,0($a2)
.L0db0cc9c:
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    # Line 1098
    move	$a5,$zero
    # Line 1099
    andi	$v0,$v0,0x1
    beqz	$v0,.L0db0ccb8
    addiu	$a6,$a6,-8
    # Line 1100
    li	$a5,1
.L0db0ccb8:
    lwc1	$f1,4($a2)
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    # Line 1109
    addiu	$a7,$a7,1
    # Line 1100
    andi	$v1,$v1,0x1
    beqzl	$v1,.L0db0ccdc
    # Line 1101
    lwc1	$f2,8($a2)
    ori	$a5,$a5,0x2
    lwc1	$f2,8($a2)
.L0db0ccdc:
    trunc.w.s	$f2,$f2
    mfc1	$a0,$f2
    nop
    andi	$a0,$a0,0x1
    beqzl	$a0,.L0db0cbf4
    # Line 1102
    lwc1	$f3,12($a2)
    b	.L0db0cbf0
    ori	$a5,$a5,0x4
.L0db0ccfc:
    # Line 1113
    la	$v0,sub_0dbf0000
.L0db0cd00:
    # Line 1109
    beqz	$a6,.L0db0ce18
    # Line 1113
    sll	$a3,$a6,0x2
    # Line 1112
    lbu	$a5,0($a7)
    # Line 1113
    addiu	$v0,$v0,-4320
    addu	$a2,$a3,$a2
    sll	$a3,$a6,0x2
    sltiu	$v1,$a6,8
    addiu	$a2,$a2,-4
    beqz	$v1,.L0db0ce14
    addu	$a3,$a3,$v0
    lw	$v0,%lo(jtbl_0dbeef00)($a3)
    jr	$v0
    nop
.L0db0cd34:
    # Line 1116
    lwc1	$f3,0($a2)
    trunc.w.s	$f3,$f3
    mfc1	$v1,$f3
    nop
    andi	$v1,$v1,0x1
    beqz	$v1,.L0db0d260
    addiu	$a2,$a2,-4
    ori	$a5,$a5,0x40
.L0db0cd54:
    # Line 1119
    lwc1	$f0,0($a2)
    trunc.w.s	$f0,$f0
    mfc1	$a0,$f0
    nop
    andi	$a0,$a0,0x1
    beqz	$a0,.L0db0d21c
    addiu	$a2,$a2,-4
    ori	$a5,$a5,0x20
.L0db0cd74:
    # Line 1122
    lwc1	$f1,0($a2)
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    nop
    andi	$a1,$a1,0x1
    beqz	$a1,.L0db0d1ec
    addiu	$a2,$a2,-4
    ori	$a5,$a5,0x10
.L0db0cd94:
    # Line 1125
    lwc1	$f2,0($a2)
    trunc.w.s	$f2,$f2
    mfc1	$v0,$f2
    nop
    andi	$v0,$v0,0x1
    beqz	$v0,.L0db0d1e0
    addiu	$a2,$a2,-4
    ori	$a5,$a5,0x8
.L0db0cdb4:
    # Line 1128
    lwc1	$f3,0($a2)
    trunc.w.s	$f3,$f3
    mfc1	$v1,$f3
    nop
    andi	$v1,$v1,0x1
    beqz	$v1,.L0db0d1d4
    addiu	$a2,$a2,-4
    ori	$a5,$a5,0x4
.L0db0cdd4:
    # Line 1131
    lwc1	$f0,0($a2)
    trunc.w.s	$f0,$f0
    mfc1	$a0,$f0
    nop
    andi	$a0,$a0,0x1
    beqz	$a0,.L0db0d1c8
    addiu	$a2,$a2,-4
    ori	$a5,$a5,0x2
.L0db0cdf4:
    # Line 1133
    lwc1	$f1,0($a2)
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    nop
    andi	$a1,$a1,0x1
    beqz	$a1,.L0db0d1c0
    # Line 1135
    li	$v0,-2
    # Line 1134
    ori	$a5,$a5,0x1
.L0db0ce14:
    # Line 1138
    sb	$a5,0($a7)
.L0db0ce18:
    # Line 1219
    jr	$ra
    nop
.L0db0ce20:
    # Line 1138
    beqz	$t0,.L0db0cf7c
    la	$v0,sub_0dbf0000
    sltiu	$v1,$t0,8
    sll	$a3,$t0,0x2
    addiu	$v0,$v0,-4288
    beqz	$v1,.L0db0cf74
    addu	$a3,$a3,$v0
    lw	$v1,%lo(jtbl_0dbeef00)($a3)
    jr	$v1
    nop
.L0db0ce48:
    # Line 1144
    lwc1	$f2,0($a2)
    trunc.w.s	$f2,$f2
    mfc1	$a0,$f2
    nop
    andi	$a0,$a0,0x1
    beqz	$a0,.L0db0d2fc
    addiu	$a2,$a2,4
    ori	$a5,$a5,0x40
.L0db0ce68:
    # Line 1146
    addiu	$a6,$a6,-1
    beqzl	$a6,.L0db0cf78
    # Line 1173
    addiu	$a7,$a7,1
.L0db0ce74:
    # Line 1148
    lwc1	$f3,0($a2)
    trunc.w.s	$f3,$f3
    mfc1	$a1,$f3
    nop
    andi	$a1,$a1,0x1
    beqz	$a1,.L0db0d2e4
    addiu	$a2,$a2,4
    ori	$a5,$a5,0x20
.L0db0ce94:
    # Line 1150
    addiu	$a6,$a6,-1
    beqzl	$a6,.L0db0cf78
    # Line 1173
    addiu	$a7,$a7,1
.L0db0cea0:
    # Line 1152
    lwc1	$f0,0($a2)
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    nop
    andi	$v0,$v0,0x1
    beqz	$v0,.L0db0d2d8
    addiu	$a2,$a2,4
    ori	$a5,$a5,0x10
.L0db0cec0:
    # Line 1154
    addiu	$a6,$a6,-1
    beqzl	$a6,.L0db0cf78
    # Line 1173
    addiu	$a7,$a7,1
.L0db0cecc:
    # Line 1156
    lwc1	$f1,0($a2)
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    nop
    andi	$v1,$v1,0x1
    beqz	$v1,.L0db0d2cc
    addiu	$a2,$a2,4
    ori	$a5,$a5,0x8
.L0db0ceec:
    # Line 1158
    addiu	$a6,$a6,-1
    beqzl	$a6,.L0db0cf78
    # Line 1173
    addiu	$a7,$a7,1
.L0db0cef8:
    # Line 1160
    lwc1	$f2,0($a2)
    trunc.w.s	$f2,$f2
    mfc1	$a0,$f2
    nop
    andi	$a0,$a0,0x1
    beqz	$a0,.L0db0d2b4
    addiu	$a2,$a2,4
    ori	$a5,$a5,0x4
.L0db0cf18:
    # Line 1162
    addiu	$a6,$a6,-1
    beqzl	$a6,.L0db0cf78
    # Line 1173
    addiu	$a7,$a7,1
.L0db0cf24:
    # Line 1164
    lwc1	$f3,0($a2)
    trunc.w.s	$f3,$f3
    mfc1	$a1,$f3
    nop
    andi	$a1,$a1,0x1
    beqz	$a1,.L0db0d2a8
    addiu	$a2,$a2,4
    ori	$a5,$a5,0x2
.L0db0cf44:
    # Line 1166
    addiu	$a6,$a6,-1
    beqzl	$a6,.L0db0cf78
    # Line 1173
    addiu	$a7,$a7,1
.L0db0cf50:
    # Line 1168
    lwc1	$f0,0($a2)
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    nop
    andi	$v0,$v0,0x1
    beqz	$v0,.L0db0d29c
    addiu	$a2,$a2,4
    ori	$a5,$a5,0x1
.L0db0cf70:
    # Line 1170
    addiu	$a6,$a6,-1
.L0db0cf74:
    # Line 1173
    addiu	$a7,$a7,1
.L0db0cf78:
    # Line 1172
    sb	$a5,-1($a7)
.L0db0cf7c:
    # Line 1173
    slti	$v1,$a6,8
    bnez	$v1,.L0db0d09c
    nop
    b	.L0db0cfbc
    # Line 1177
    lwc1	$f2,0($a2)
.L0db0cf90:
    # Line 1185
    lwc1	$f1,28($a2)
    trunc.w.s	$f1,$f1
    mfc1	$a0,$f1
    nop
    andi	$a0,$a0,0x1
    beqz	$a0,.L0db0cfb0
    addiu	$a2,$a2,32
    ori	$a5,$a5,0x1
.L0db0cfb0:
    # Line 1187
    bnez	$a1,.L0db0d09c
    # Line 1186
    sb	$a5,-1($a7)
    # Line 1177
    lwc1	$f2,0($a2)
.L0db0cfbc:
    trunc.w.s	$f2,$f2
    mfc1	$v0,$f2
    # Line 1176
    move	$a5,$zero
    # Line 1177
    andi	$v0,$v0,0x1
    beqz	$v0,.L0db0cfd8
    addiu	$a6,$a6,-8
    # Line 1178
    li	$a5,128
.L0db0cfd8:
    lwc1	$f3,4($a2)
    trunc.w.s	$f3,$f3
    mfc1	$v1,$f3
    # Line 1187
    addiu	$a7,$a7,1
    # Line 1178
    andi	$v1,$v1,0x1
    beqzl	$v1,.L0db0cffc
    # Line 1179
    lwc1	$f0,8($a2)
    ori	$a5,$a5,0x40
    lwc1	$f0,8($a2)
.L0db0cffc:
    trunc.w.s	$f0,$f0
    mfc1	$a0,$f0
    nop
    andi	$a0,$a0,0x1
    beqzl	$a0,.L0db0d01c
    # Line 1180
    lwc1	$f1,12($a2)
    ori	$a5,$a5,0x20
    lwc1	$f1,12($a2)
.L0db0d01c:
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    nop
    andi	$a1,$a1,0x1
    beqzl	$a1,.L0db0d03c
    # Line 1181
    lwc1	$f2,16($a2)
    ori	$a5,$a5,0x10
    lwc1	$f2,16($a2)
.L0db0d03c:
    trunc.w.s	$f2,$f2
    mfc1	$v0,$f2
    nop
    andi	$v0,$v0,0x1
    beqzl	$v0,.L0db0d05c
    # Line 1182
    lwc1	$f3,20($a2)
    ori	$a5,$a5,0x8
    lwc1	$f3,20($a2)
.L0db0d05c:
    trunc.w.s	$f3,$f3
    mfc1	$v1,$f3
    nop
    andi	$v1,$v1,0x1
    beqzl	$v1,.L0db0d07c
    # Line 1183
    lwc1	$f0,24($a2)
    ori	$a5,$a5,0x4
    lwc1	$f0,24($a2)
.L0db0d07c:
    trunc.w.s	$f0,$f0
    mfc1	$a0,$f0
    nop
    andi	$a0,$a0,0x1
    beqz	$a0,.L0db0cf90
    # Line 1187
    slti	$a1,$a6,8
    b	.L0db0cf90
    # Line 1184
    ori	$a5,$a5,0x2
.L0db0d09c:
    # Line 1187
    beqz	$a6,.L0db0ce18
    nop
    # Line 1190
    lbu	$a5,0($a7)
    # Line 1191
    sltiu	$v1,$a6,8
    sll	$a3,$a6,0x2
    addu	$a2,$a3,$a2
    la	$v0,sub_0dbf0000
    addiu	$a2,$a2,-4
    sll	$a3,$a6,0x2
    addiu	$v0,$v0,-4256
    beqz	$v1,.L0db0d1b8
    addu	$a3,$a3,$v0
    lw	$v0,%lo(jtbl_0dbeef00)($a3)
    jr	$v0
    nop
.L0db0d0d8:
    # Line 1194
    lwc1	$f1,0($a2)
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    nop
    andi	$v1,$v1,0x1
    beqz	$v1,.L0db0d2f0
    addiu	$a2,$a2,-4
    ori	$a5,$a5,0x2
.L0db0d0f8:
    # Line 1197
    lwc1	$f2,0($a2)
    trunc.w.s	$f2,$f2
    mfc1	$a0,$f2
    nop
    andi	$a0,$a0,0x1
    beqz	$a0,.L0db0d2c0
    addiu	$a2,$a2,-4
    ori	$a5,$a5,0x4
.L0db0d118:
    # Line 1200
    lwc1	$f3,0($a2)
    trunc.w.s	$f3,$f3
    mfc1	$a1,$f3
    nop
    andi	$a1,$a1,0x1
    beqz	$a1,.L0db0d290
    addiu	$a2,$a2,-4
    ori	$a5,$a5,0x8
.L0db0d138:
    # Line 1203
    lwc1	$f0,0($a2)
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    nop
    andi	$v0,$v0,0x1
    beqz	$v0,.L0db0d278
    addiu	$a2,$a2,-4
    ori	$a5,$a5,0x10
.L0db0d158:
    # Line 1206
    lwc1	$f1,0($a2)
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    nop
    andi	$v1,$v1,0x1
    beqz	$v1,.L0db0d26c
    addiu	$a2,$a2,-4
    ori	$a5,$a5,0x20
.L0db0d178:
    # Line 1209
    lwc1	$f2,0($a2)
    trunc.w.s	$f2,$f2
    mfc1	$a0,$f2
    nop
    andi	$a0,$a0,0x1
    beqz	$a0,.L0db0d254
    addiu	$a2,$a2,-4
    ori	$a5,$a5,0x40
.L0db0d198:
    # Line 1211
    lwc1	$f3,0($a2)
    trunc.w.s	$f3,$f3
    mfc1	$a1,$f3
    nop
    andi	$a1,$a1,0x1
    beqz	$a1,.L0db0d240
    # Line 1213
    li	$a1,-129
    # Line 1212
    ori	$a5,$a5,0x80
.L0db0d1b8:
    # Line 1219
    jr	$ra
    # Line 1216
    sb	$a5,0($a7)
.L0db0d1c0:
    b	.L0db0ce14
    # Line 1135
    and	$a5,$a5,$v0
.L0db0d1c8:
    # Line 1132
    li	$v1,-3
    b	.L0db0cdf4
    and	$a5,$a5,$v1
.L0db0d1d4:
    # Line 1129
    li	$a0,-5
    b	.L0db0cdd4
    and	$a5,$a5,$a0
.L0db0d1e0:
    # Line 1126
    li	$a1,-9
    b	.L0db0cdb4
    and	$a5,$a5,$a1
.L0db0d1ec:
    # Line 1123
    li	$v0,-17
    b	.L0db0cd94
    and	$a5,$a5,$v0
.L0db0d1f8:
    # Line 1091
    li	$v1,-129
    b	.L0db0cbd4
    and	$a5,$a5,$v1
.L0db0d204:
    # Line 1087
    li	$a0,-65
    b	.L0db0cbac
    and	$a5,$a5,$a0
.L0db0d210:
    # Line 1083
    li	$a1,-33
    b	.L0db0cb80
    and	$a5,$a5,$a1
.L0db0d21c:
    # Line 1120
    li	$v0,-33
    b	.L0db0cd74
    and	$a5,$a5,$v0
.L0db0d228:
    # Line 1079
    li	$v1,-17
    b	.L0db0cb54
    and	$a5,$a5,$v1
.L0db0d234:
    # Line 1075
    li	$a0,-9
    b	.L0db0cb28
    and	$a5,$a5,$a0
.L0db0d240:
    b	.L0db0d1b8
    # Line 1213
    and	$a5,$a5,$a1
.L0db0d248:
    # Line 1071
    li	$v0,-5
    b	.L0db0cafc
    and	$a5,$a5,$v0
.L0db0d254:
    # Line 1210
    li	$v1,-65
    b	.L0db0d198
    and	$a5,$a5,$v1
.L0db0d260:
    # Line 1117
    li	$a0,-65
    b	.L0db0cd54
    and	$a5,$a5,$a0
.L0db0d26c:
    # Line 1207
    li	$a1,-33
    b	.L0db0d178
    and	$a5,$a5,$a1
.L0db0d278:
    # Line 1204
    li	$v0,-17
    b	.L0db0d158
    and	$a5,$a5,$v0
.L0db0d284:
    # Line 1067
    li	$v1,-3
    b	.L0db0cad0
    and	$a5,$a5,$v1
.L0db0d290:
    # Line 1201
    li	$a0,-9
    b	.L0db0d138
    and	$a5,$a5,$a0
.L0db0d29c:
    # Line 1169
    li	$a1,-2
    b	.L0db0cf70
    and	$a5,$a5,$a1
.L0db0d2a8:
    # Line 1165
    li	$v0,-3
    b	.L0db0cf44
    and	$a5,$a5,$v0
.L0db0d2b4:
    # Line 1161
    li	$v1,-5
    b	.L0db0cf18
    and	$a5,$a5,$v1
.L0db0d2c0:
    # Line 1198
    li	$a0,-5
    b	.L0db0d118
    and	$a5,$a5,$a0
.L0db0d2cc:
    # Line 1157
    li	$a1,-9
    b	.L0db0ceec
    and	$a5,$a5,$a1
.L0db0d2d8:
    # Line 1153
    li	$v0,-17
    b	.L0db0cec0
    and	$a5,$a5,$v0
.L0db0d2e4:
    # Line 1149
    li	$v1,-33
    b	.L0db0ce94
    and	$a5,$a5,$v1
.L0db0d2f0:
    # Line 1195
    li	$a0,-3
    b	.L0db0d0f8
    and	$a5,$a5,$a0
.L0db0d2fc:
    # Line 1145
    li	$a1,-65
    b	.L0db0ce68
    and	$a5,$a5,$a1
.end __glSpanPackBitmap

# Function: __glSpanRGBAScaleBias
# Declared: Line 1225 (Source lines: 1234-1256)
# Address: 0x0db0d308 - 0x0db0d4d0 (Size: 456 bytes, Frame: 0)
.globl __glSpanRGBAScaleBias
.ent __glSpanRGBAScaleBias
__glSpanRGBAScaleBias:
    # Line 1247
    lwc1	$f7,344($a1)
    # Line 1246
    lwc1	$f4,340($a1)
    # Line 1245
    lwc1	$f8,336($a1)
    # Line 1244
    lwc1	$f9,332($a1)
    # Line 1242
    lwc1	$f5,328($a1)
    # Line 1241
    lwc1	$f11,324($a1)
    # Line 1240
    lwc1	$f10,320($a1)
    # Line 1234
    lw	$a4,184($a1)
    # Line 1239
    lwc1	$f6,316($a1)
    # Line 1250
    move	$a5,$zero
    blez	$a4,.L0db0d4c8
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db0d39c
    move	$a7,$a3
.L0db0d344:
    # Line 1251
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f6
    add.s	$f3,$f3,$f9
    swc1	$f3,0($a3)
    # Line 1252
    lwc1	$f2,4($a2)
    mul.s	$f2,$f2,$f10
    add.s	$f2,$f2,$f8
    swc1	$f2,4($a3)
    # Line 1253
    lwc1	$f1,8($a2)
    mul.s	$f1,$f1,$f11
    add.s	$f1,$f1,$f4
    swc1	$f1,8($a3)
    # Line 1254
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f5
    # Line 1250
    addiu	$a5,$a5,1
    # Line 1254
    addiu	$a3,$a3,16
    add.s	$f0,$f0,$f7
    addiu	$a2,$a2,16
    addi	$a1,$a1,-1
    bnez	$a1,.L0db0d344
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0db0d39c:
    sra	$at,$a6,0x2
    move	$t1,$a5
    beqz	$at,.L0db0d4c8
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db0d3b8:
    # Line 1251
    lwc1	$f3,0($a3)
    mul.s	$f3,$f3,$f6
    add.s	$f3,$f3,$f9
    swc1	$f3,0($a2)
    # Line 1252
    lwc1	$f2,4($a3)
    mul.s	$f2,$f2,$f10
    add.s	$f2,$f2,$f8
    swc1	$f2,4($a2)
    # Line 1253
    lwc1	$f1,8($a3)
    mul.s	$f1,$f1,$f11
    add.s	$f1,$f1,$f4
    swc1	$f1,8($a2)
    # Line 1254
    lwc1	$f0,12($a3)
    mul.s	$f0,$f0,$f5
    add.s	$f0,$f0,$f7
    swc1	$f0,12($a2)
    # Line 1251
    lwc1	$f3,16($a3)
    mul.s	$f3,$f3,$f6
    add.s	$f3,$f3,$f9
    swc1	$f3,16($a2)
    # Line 1252
    lwc1	$f2,20($a3)
    mul.s	$f2,$f2,$f10
    add.s	$f2,$f2,$f8
    swc1	$f2,20($a2)
    # Line 1253
    lwc1	$f1,24($a3)
    mul.s	$f1,$f1,$f11
    add.s	$f1,$f1,$f4
    swc1	$f1,24($a2)
    # Line 1254
    lwc1	$f0,28($a3)
    mul.s	$f0,$f0,$f5
    add.s	$f0,$f0,$f7
    swc1	$f0,28($a2)
    # Line 1251
    lwc1	$f3,32($a3)
    mul.s	$f3,$f3,$f6
    add.s	$f3,$f3,$f9
    swc1	$f3,32($a2)
    # Line 1252
    lwc1	$f2,36($a3)
    mul.s	$f2,$f2,$f10
    add.s	$f2,$f2,$f8
    swc1	$f2,36($a2)
    # Line 1253
    lwc1	$f1,40($a3)
    mul.s	$f1,$f1,$f11
    add.s	$f1,$f1,$f4
    swc1	$f1,40($a2)
    # Line 1254
    lwc1	$f0,44($a3)
    mul.s	$f0,$f0,$f5
    add.s	$f0,$f0,$f7
    swc1	$f0,44($a2)
    # Line 1251
    lwc1	$f3,48($a3)
    mul.s	$f3,$f3,$f6
    add.s	$f3,$f3,$f9
    swc1	$f3,48($a2)
    # Line 1252
    lwc1	$f2,52($a3)
    mul.s	$f2,$f2,$f10
    add.s	$f2,$f2,$f8
    swc1	$f2,52($a2)
    # Line 1253
    lwc1	$f1,56($a3)
    mul.s	$f1,$f1,$f11
    add.s	$f1,$f1,$f4
    swc1	$f1,56($a2)
    # Line 1254
    lwc1	$f0,60($a3)
    mul.s	$f0,$f0,$f5
    addiu	$a2,$a2,64
    add.s	$f0,$f0,$f7
    addiu	$a3,$a3,64
    # Line 1250
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db0d3b8
    # Line 1254
    swc1	$f0,-4($a2)
.L0db0d4c8:
    # Line 1256
    jr	$ra
    nop
.end __glSpanRGBAScaleBias

# Function: __glSpanRGBAScaleBiasReduce
# Declared: Line 1262 (Source lines: 1264-1335)
# Address: 0x0db0d4d0 - 0x0db0d7dc (Size: 780 bytes, Frame: 224)
.globl __glSpanRGBAScaleBiasReduce
.ent __glSpanRGBAScaleBiasReduce
__glSpanRGBAScaleBiasReduce:
    # Line 1295
    li	$a6,1
    # Line 1278
    lw	$t1,108($a1)
    # Line 1274
    lw	$t2,184($a1)
    # Line 1295
    li	$at,0x8000
    lw	$a5,80($a1)
    # Line 1288
    lwc1	$f2,344($a1)
    # Line 1290
    lwc1	$f3,30852($a0)
    # Line 1291
    lwc1	$f4,30856($a0)
    # Line 1264
    addiu	$sp,$sp,-96
    # Line 1290
    swc1	$f3,32($sp)
    # Line 1283
    lwc1	$f3,328($a1)
    # Line 1291
    swc1	$f4,36($sp)
    # Line 1285
    lwc1	$f4,332($a1)
    # Line 1288
    swc1	$f2,28($sp)
    # Line 1282
    lwc1	$f2,324($a1)
    # Line 1285
    swc1	$f4,16($sp)
    # Line 1283
    swc1	$f3,12($sp)
    # Line 1293
    lwc1	$f1,30864($a0)
    # Line 1282
    swc1	$f2,8($sp)
    # Line 1292
    lwc1	$f0,30860($a0)
    # Line 1293
    swc1	$f1,44($sp)
    # Line 1287
    lwc1	$f1,340($a1)
    # Line 1292
    swc1	$f0,40($sp)
    # Line 1286
    lwc1	$f0,336($a1)
    # Line 1287
    swc1	$f1,24($sp)
    # Line 1281
    lwc1	$f1,320($a1)
    # Line 1286
    swc1	$f0,20($sp)
    # Line 1280
    lwc1	$f0,316($a1)
    # Line 1281
    swc1	$f1,4($sp)
    # Line 1295
    beq	$a5,$at,.L0db0d7c0
    # Line 1280
    swc1	$f0,0($sp)
    # Line 1295
    beq	$a6,$a5,.L0db0d6ac
    li	$v0,6410
    beql	$a5,$v0,.L0db0d6b0
    # Line 1307
    sw	$zero,60($sp)
    # Line 1311
    sw	$a6,52($sp)
    # Line 1310
    sw	$zero,48($sp)
    # Line 1313
    li	$a0,3
    sw	$a0,60($sp)
    # Line 1312
    li	$v1,2
    sw	$v1,56($sp)
.L0db0d574:
    # Line 1315
    lbu	$at,428($a1)
    beqz	$at,.L0db0d6c4
    nop
    # Line 1318
    blez	$t2,.L0db0d6a4
    move	$t0,$zero
    addiu	$a7,$sp,32
    addiu	$a6,$sp,16
    addiu	$a5,$sp,0
    sll	$a4,$t1,0x2
    addiu	$at,$sp,48
    b	.L0db0d648
    addu	$a4,$a4,$at
.L0db0d5a4:
    move	$t9,$a1
    sra	$v0,$t3,0x1
    beqz	$v0,.L0db0d63c
    move	$t8,$a3
    move	$a3,$t9
    move	$a1,$t8
.L0db0d5bc:
    # Line 1321
    lw	$a0,0($a3)
    sll	$a0,$a0,0x2
    addu	$v1,$a0,$a5
    lwc1	$f1,0($v1)
    addu	$v0,$a0,$a2
    lwc1	$f0,0($v0)
    mul.s	$f0,$f0,$f1
    addu	$at,$a0,$a6
    lwc1	$f3,0($at)
    addu	$a0,$a0,$a7
    add.s	$f3,$f3,$f0
    lwc1	$f2,0($a0)
    mul.s	$f2,$f2,$f3
    lw	$v1,4($a3)
    sll	$v1,$v1,0x2
    addu	$v0,$v1,$a5
    lwc1	$f1,0($v0)
    swc1	$f2,0($a1)
    addu	$at,$v1,$a2
    lwc1	$f0,0($at)
    mul.s	$f0,$f0,$f1
    addu	$a0,$v1,$a6
    lwc1	$f3,0($a0)
    addu	$v1,$v1,$a7
    add.s	$f3,$f3,$f0
    lwc1	$f2,0($v1)
    mul.s	$f2,$f2,$f3
    addiu	$a1,$a1,8
    # Line 1319
    addiu	$a3,$a3,8
    bne	$a3,$a4,.L0db0d5bc
    # Line 1321
    swc1	$f2,-4($a1)
    move	$a3,$a1
.L0db0d63c:
    # Line 1318
    addiu	$t0,$t0,1
    beq	$t2,$t0,.L0db0d6a4
    # Line 1324
    addiu	$a2,$a2,16
.L0db0d648:
    andi	$a1,$t1,0x1
    # Line 1318
    blez	$t1,.L0db0d63c
    move	$t3,$t1
    beqz	$a1,.L0db0d5a4
    addiu	$a1,$sp,48
    # Line 1321
    lw	$at,0($a1)
    sll	$at,$at,0x2
    addu	$v1,$at,$a2
    addu	$a0,$at,$a5
    lwc1	$f1,0($a0)
    lwc1	$f0,0($v1)
    mul.s	$f0,$f0,$f1
    addu	$v0,$at,$a6
    lwc1	$f3,0($v0)
    addu	$at,$at,$a7
    add.s	$f3,$f3,$f0
    lwc1	$f2,0($at)
    mul.s	$f2,$f2,$f3
    # Line 1319
    addiu	$a1,$a1,4
    # Line 1321
    addiu	$a3,$a3,4
    swc1	$f2,-4($a3)
    b	.L0db0d5a4
    nop
.L0db0d6a4:
    # Line 1335
    jr	$ra
    addiu	$sp,$sp,96
.L0db0d6ac:
    # Line 1307
    sw	$zero,60($sp)
.L0db0d6b0:
    # Line 1306
    sw	$zero,56($sp)
    # Line 1304
    sw	$zero,48($sp)
    # Line 1305
    li	$v0,3
    # Line 1308
    b	.L0db0d574
    # Line 1305
    sw	$v0,52($sp)
.L0db0d6c4:
    # Line 1327
    blez	$t2,.L0db0d6a4
    move	$t0,$zero
    addiu	$a6,$sp,16
    addiu	$a5,$sp,0
    sll	$a4,$t1,0x2
    addiu	$at,$sp,48
    b	.L0db0d770
    addu	$a4,$a4,$at
.L0db0d6e4:
    move	$t8,$a1
    sra	$v0,$a7,0x1
    beqz	$v0,.L0db0d764
    move	$t3,$a3
    move	$a3,$t8
    move	$a1,$t3
.L0db0d6fc:
    # Line 1330
    lw	$a0,0($a3)
    sll	$a0,$a0,0x2
    addu	$v0,$a0,$a5
    lwc1	$f3,0($v0)
    addu	$at,$a0,$a2
    lwc1	$f2,0($at)
    mul.s	$f2,$f2,$f3
    addu	$a0,$a0,$a6
    lwc1	$f1,0($a0)
    lw	$v1,4($a3)
    add.s	$f1,$f1,$f2
    sll	$v1,$v1,0x2
    addu	$at,$v1,$a5
    lwc1	$f0,0($at)
    swc1	$f1,0($a1)
    addu	$a0,$v1,$a2
    lwc1	$f3,0($a0)
    mul.s	$f3,$f3,$f0
    addu	$v1,$v1,$a6
    lwc1	$f2,0($v1)
    add.s	$f2,$f2,$f3
    addiu	$a1,$a1,8
    # Line 1328
    addiu	$a3,$a3,8
    bne	$a3,$a4,.L0db0d6fc
    # Line 1330
    swc1	$f2,-4($a1)
    move	$a3,$a1
.L0db0d764:
    # Line 1327
    addiu	$t0,$t0,1
    beq	$t2,$t0,.L0db0d6a4
    # Line 1332
    addiu	$a2,$a2,16
.L0db0d770:
    andi	$a1,$t1,0x1
    # Line 1327
    blez	$t1,.L0db0d764
    move	$a7,$t1
    beqz	$a1,.L0db0d6e4
    addiu	$a1,$sp,48
    # Line 1330
    lw	$at,0($a1)
    sll	$at,$at,0x2
    addu	$v0,$at,$a2
    addu	$v1,$at,$a5
    lwc1	$f2,0($v1)
    lwc1	$f1,0($v0)
    mul.s	$f1,$f1,$f2
    addu	$at,$at,$a6
    lwc1	$f0,0($at)
    add.s	$f0,$f0,$f1
    # Line 1328
    addiu	$a1,$a1,4
    # Line 1330
    addiu	$a3,$a3,4
    swc1	$f0,-4($a3)
    b	.L0db0d6e4
    nop
.L0db0d7c0:
    # Line 1300
    sw	$zero,60($sp)
    # Line 1299
    sw	$a6,56($sp)
    # Line 1298
    li	$v1,2
    sw	$v1,52($sp)
    # Line 1297
    li	$v0,3
    # Line 1301
    b	.L0db0d574
    # Line 1297
    sw	$v0,48($sp)
.end __glSpanRGBAScaleBiasReduce

.late_rodata
jtbl_0dbeef00:
    .word .L0db0cbd4
    .word .L0db0cab0
    .word .L0db0cadc
    .word .L0db0cb08
    .word .L0db0cb34
    .word .L0db0cb60
    .word .L0db0cb8c
    .word .L0db0cbb4
    .word .L0db0ce14
    .word .L0db0cdf4
    .word .L0db0cdd4
    .word .L0db0cdb4
    .word .L0db0cd94
    .word .L0db0cd74
    .word .L0db0cd54
    .word .L0db0cd34
    .word .L0db0cf74
    .word .L0db0ce48
    .word .L0db0ce74
    .word .L0db0cea0
    .word .L0db0cecc
    .word .L0db0cef8
    .word .L0db0cf24
    .word .L0db0cf50
    .word .L0db0d1b8
    .word .L0db0d198
    .word .L0db0d178
    .word .L0db0d158
    .word .L0db0d138
    .word .L0db0d118
    .word .L0db0d0f8
    .word .L0db0d0d8

.rdata
_lit_40400000:
    .word 0x40400000
_lit_40e00000:
    .word 0x40e00000
_lit_41700000:
    .word 0x41700000
_lit_41f80000:
    .word 0x41f80000
_lit_437f0000:
    .word 0x437f0000
_lit_447fc000:
    .word 0x447fc000

