# Source: ../soft/so_polymode.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_polymode.c
# Total Functions: 7

.text

# Function: __glRenderTriangle
# Declared: Line 24 (Source lines: 26-196)
# Address: 0x0db689c4 - 0x0db68e7c (Size: 1208 bytes, Frame: 160)
.globl __glRenderTriangle
.ent __glRenderTriangle
__glRenderTriangle:
    # Line 40
    move	$a4,$zero
    # Line 26
    addiu	$sp,$sp,-160
    sd	$s0,80($sp)
    move	$s0,$a0
    sd	$s3,88($sp)
    move	$s3,$a3
    sd	$a3,16($sp)
    sd	$a2,32($sp)
    sd	$a1,24($sp)
    sd	$s1,64($sp)
    # Line 39
    move	$s1,$a2
    sd	$s2,96($sp)
    move	$s2,$a3
    # Line 26
    move	$s2,$a2
    move	$s1,$a1
    # Line 40
    lw	$a6,132($a2)
    # Line 39
    move	$t0,$a1
    # Line 40
    lw	$t0,132($a1)
    sd	$gp,72($sp)
    # Line 26
    lui	$a7,0x9
    addiu	$a7,$a7,23764
    addu	$gp,$t9,$a7
    # Line 40
    lw	$a7,132($a3)
    slt	$at,$t0,$a6
    beqz	$at,.L0db68c1c
    slt	$a6,$a6,$a7
    beqz	$a6,.L0db68e3c
    slt	$v0,$t0,$a7
.L0db68a34:
    # Line 67
    lwc1	$f6,128($s3)
    lwc1	$f8,128($s1)
    # Line 69
    lwc1	$f0,132($s3)
    lwc1	$f7,132($s1)
    # Line 67
    sub.s	$f8,$f8,$f6
    # Line 68
    lwc1	$f4,128($s2)
    # Line 69
    sub.s	$f7,$f7,$f0
    # Line 70
    lwc1	$f5,132($s2)
    # Line 68
    sub.s	$f4,$f4,$f6
    # Line 70
    sub.s	$f5,$f5,$f0
    # Line 71
    mul.s	$f0,$f4,$f7
    mul.s	$f6,$f8,$f5
    sub.s	$f6,$f6,$f0
    swc1	$f6,0($sp)
    # Line 87
    lw	$v0,0($sp)
    lbu	$at,30573($s0)
    sd	$v0,48($sp)
    sra	$v0,$v0,0x1f
    sltiu	$v0,$v0,1
    sd	$v0,40($sp)
    xor	$v0,$v0,$a4
    addu	$v0,$v0,$s0
    lbu	$v0,30568($v0)
    bne	$at,$v0,.L0db68ab4
    sd	$v0,56($sp)
    ld	$gp,72($sp)
    # Line 90
    ld	$s0,80($sp)
    ld	$s1,64($sp)
    ld	$s2,96($sp)
    ld	$s3,88($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0db68ab4:
    # Line 98
    swc1	$f5,30244($s0)
    # Line 97
    swc1	$f7,30240($s0)
    # Line 103
    lw	$a2,30488($s0)
    # Line 96
    swc1	$f4,30236($s0)
    # Line 95
    swc1	$f8,30232($s0)
    # Line 103
    andi	$v1,$a2,0x400
    beqz	$v1,.L0db68cf4
    # Line 94
    swc1	$f6,30228($s0)
    ld	$a3,56($sp)
    sd	$s4,104($sp)
    # Line 105
    move	$a0,$a3
    # Line 106
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$s0
    lw	$a3,28136($a3)
.L0db68aec:
    # Line 116
    sll	$a1,$a0,0x4
    # Line 120
    addu	$v0,$a1,$s2
    # Line 119
    addu	$v1,$a1,$s1
    # Line 116
    lw	$s4,28128($s0)
    lui	$a5,0x2
    and	$a5,$a2,$a5
    sd	$s4,8($sp)
    beqz	$a5,.L0db68d04
    # Line 115
    lw	$s4,28132($s0)
    # Line 119
    addiu	$v1,$v1,144
    # Line 122
    or	$s4,$a3,$s4
    # Line 121
    addu	$at,$a1,$s3
    # Line 119
    sw	$v1,4($s1)
    # Line 120
    addiu	$v0,$v0,144
    sw	$v0,4($s2)
    # Line 121
    addiu	$at,$at,144
    sw	$at,4($s3)
.L0db68b30:
    # Line 138
    lw	$v0,0($s1)
    nor	$v0,$v0,$zero
    and	$v0,$v0,$s4
    beqz	$v0,.L0db68b5c
    # Line 143
    move	$a0,$s0
    lw	$t9,8($s1)
    move	$a1,$s1
    sd	$ra,112($sp)
    jalr	$t9
    move	$a2,$s4
    ld	$ra,112($sp)
.L0db68b5c:
    lw	$v1,0($s2)
    nor	$v1,$v1,$zero
    and	$v1,$v1,$s4
    beqz	$v1,.L0db68b88
    # Line 144
    move	$a0,$s0
    lw	$t9,8($s2)
    move	$a1,$s2
    sd	$ra,112($sp)
    jalr	$t9
    move	$a2,$s4
    ld	$ra,112($sp)
.L0db68b88:
    lw	$a5,0($s3)
    nor	$a5,$a5,$zero
    and	$a5,$a5,$s4
    beqz	$a5,.L0db68bb4
    # Line 145
    move	$a0,$s0
    lw	$t9,8($s3)
    move	$a1,$s3
    sd	$ra,112($sp)
    jalr	$t9
    move	$a2,$s4
    ld	$ra,112($sp)
.L0db68bb4:
    ld	$a0,56($sp)
    # Line 148
    addu	$a0,$a0,$s0
    lbu	$a0,30570($a0)
    li	$at,2
    beq	$a0,$at,.L0db68d60
    ld	$s4,104($sp)
    beqz	$a0,.L0db68d94
    li	$a5,1
    beql	$a0,$a5,.L0db68c50
    # Line 171
    lw	$v1,1700($s0)
.L0db68bdc:
    ld	$gp,72($sp)
.L0db68be0:
    # Line 192
    addiu	$a0,$s1,144
    sw	$a0,4($s1)
    # Line 196
    ld	$s1,64($sp)
    # Line 194
    addiu	$v0,$s3,144
    # Line 193
    addiu	$v1,$s2,144
    sw	$v1,4($s2)
    # Line 196
    ld	$s2,96($sp)
    ld	$at,8($sp)
    # Line 194
    sw	$v0,4($s3)
    # Line 196
    ld	$s3,88($sp)
    # Line 195
    addiu	$s0,$at,144
    sw	$s0,4($at)
    # Line 196
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0db68c1c:
    # Line 49
    beqz	$a6,.L0db68e58
    slt	$a5,$t0,$a7
    beqz	$a5,.L0db68c3c
    # Line 55
    move	$at,$s1
    # Line 56
    li	$a4,1
    # Line 55
    move	$s1,$s2
    # Line 56
    b	.L0db68a34
    # Line 55
    move	$s2,$at
.L0db68c3c:
    # Line 58
    move	$v0,$s1
    move	$s1,$s2
    move	$s2,$s3
    b	.L0db68a34
    move	$s3,$v0
.L0db68c50:
    # Line 171
    andi	$v1,$v1,0x400
    beqz	$v1,.L0db68c78
    # Line 173
    move	$a0,$s0
    move	$a1,$s1
    # lw $t9, -26024($gp) # &__glPolygonOffsetForLineAndPoint
    move	$a2,$s2
    sd	$ra,112($sp)
    bal __glPolygonOffsetForLineAndPoint
    move	$a3,$s3
    ld	$ra,112($sp)
.L0db68c78:
    ld	$a5,24($sp)
    lbu	$a5,184($a5)
    beqz	$a5,.L0db68ca0
    # Line 180
    move	$a0,$s0
    lw	$t9,12540($s0)
    ld	$a1,24($sp)
    sd	$ra,112($sp)
    jal	__glPolygonOffsetForLineAndPoint
    ld	$a2,32($sp)
    ld	$ra,112($sp)
.L0db68ca0:
    ld	$at,32($sp)
    lbu	$at,184($at)
    beqz	$at,.L0db68cc8
    # Line 183
    move	$a0,$s0
    lw	$t9,12540($s0)
    ld	$a1,32($sp)
    sd	$ra,112($sp)
    jalr	$t9
    ld	$a2,16($sp)
    ld	$ra,112($sp)
.L0db68cc8:
    ld	$v0,16($sp)
    lbu	$v0,184($v0)
    beqz	$v0,.L0db68bdc
    # Line 186
    move	$a0,$s0
    lw	$t9,12540($s0)
    ld	$a1,16($sp)
    sd	$ra,112($sp)
    jalr	$t9
    ld	$a2,24($sp)
    b	.L0db68bdc
    ld	$ra,112($sp)
.L0db68cf4:
    sd	$s4,104($sp)
    # Line 108
    move	$a0,$zero
    b	.L0db68aec
    # Line 109
    lw	$a3,28136($s0)
.L0db68d04:
    ld	$v1,8($sp)
    # Line 131
    addu	$v0,$a1,$v1
    addiu	$v0,$v0,144
    sw	$v0,4($v1)
    # Line 132
    sw	$v0,4($s1)
    # Line 133
    lw	$at,4($v1)
    sw	$at,4($s2)
    # Line 134
    lw	$a5,4($v1)
    sw	$a5,4($s3)
    lw	$v1,0($v1)
    nor	$v1,$v1,$zero
    and	$v1,$v1,$a3
    andi	$v1,$v1,0x1b
    beqz	$v1,.L0db68b30
    # Line 138
    ld	$t9,8($sp)
    move	$a1,$t9
    lw	$t9,8($t9)
    move	$a0,$s0
    sd	$ra,112($sp)
    jalr	$t9
    andi	$a2,$a3,0x1b
    b	.L0db68b30
    ld	$ra,112($sp)
.L0db68d60:
    ld	$at,48($sp)
    # Line 153
    sll	$at,$at,0x1
    beqz	$at,.L0db68bdc
    # Line 154
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s2
    lw	$t9,12152($s0)
    move	$a3,$s3
    sd	$ra,112($sp)
    jalr	$t9
    ld	$a4,40($sp)
    b	.L0db68bdc
    ld	$ra,112($sp)
.L0db68d94:
    # Line 158
    lw	$v0,1700($s0)
    andi	$v0,$v0,0x200
    beqz	$v0,.L0db68dc0
    # Line 160
    move	$a0,$s0
    move	$a1,$s1
    # lw $t9, -26024($gp) # &__glPolygonOffsetForLineAndPoint
    move	$a2,$s2
    sd	$ra,112($sp)
    bal __glPolygonOffsetForLineAndPoint
    move	$a3,$s3
    ld	$ra,112($sp)
.L0db68dc0:
    ld	$v1,24($sp)
    lbu	$v1,184($v1)
    beqz	$v1,.L0db68dec
    ld	$a5,32($sp)
    # Line 166
    lw	$t9,12564($s0)
    move	$a0,$s0
    sd	$ra,112($sp)
    jal	__glPolygonOffsetForLineAndPoint
    ld	$a1,24($sp)
    ld	$ra,112($sp)
    ld	$a5,32($sp)
.L0db68dec:
    lbu	$a5,184($a5)
    beqz	$a5,.L0db68e14
    ld	$at,16($sp)
    # Line 167
    lw	$t9,12564($s0)
    move	$a0,$s0
    sd	$ra,112($sp)
    jalr	$t9
    ld	$a1,32($sp)
    ld	$ra,112($sp)
    ld	$at,16($sp)
.L0db68e14:
    lbu	$at,184($at)
    beqzl	$at,.L0db68be0
    ld	$gp,72($sp)
    # Line 168
    lw	$t9,12564($s0)
    move	$a0,$s0
    sd	$ra,112($sp)
    jalr	$t9
    ld	$a1,16($sp)
    b	.L0db68bdc
    ld	$ra,112($sp)
.L0db68e3c:
    # Line 40
    beqz	$v0,.L0db68e6c
    # Line 49
    move	$a5,$s1
    # Line 47
    li	$a4,1
    # Line 46
    move	$v1,$s2
    move	$s2,$s3
    # Line 47
    b	.L0db68a34
    # Line 46
    move	$s3,$v1
.L0db68e58:
    # Line 61
    move	$a4,$s1
    move	$s1,$s3
    move	$s3,$a4
    b	.L0db68a34
    # Line 62
    li	$a4,1
.L0db68e6c:
    # Line 49
    move	$s1,$s3
    move	$s3,$s2
    b	.L0db68a34
    move	$s2,$a5
.end __glRenderTriangle

# Function: __glRenderFlatTriangle
# Declared: Line 207 (Source lines: 209-324)
# Address: 0x0db68e7c - 0x0db69144 (Size: 712 bytes, Frame: 240)
.globl __glRenderFlatTriangle
.ent __glRenderFlatTriangle
__glRenderFlatTriangle:
    # Line 221
    move	$a4,$zero
    # Line 209
    addiu	$sp,$sp,-112
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$s1,40($sp)
    move	$s1,$a1
    sd	$s2,56($sp)
    move	$s2,$a2
    sd	$s3,48($sp)
    move	$s3,$a3
    # Line 221
    lw	$a6,132($a2)
    lw	$t0,132($a1)
    sd	$gp,32($sp)
    # Line 209
    lui	$a7,0x9
    addiu	$a7,$a7,22556
    addu	$gp,$t9,$a7
    # Line 221
    lw	$a7,132($a3)
    slt	$at,$t0,$a6
    beqz	$at,.L0db690a4
    slt	$a6,$a6,$a7
    beqz	$a6,.L0db690e8
    slt	$a5,$t0,$a7
.L0db68ed4:
    # Line 248
    lwc1	$f7,128($s3)
    lwc1	$f6,128($s1)
    # Line 250
    lwc1	$f0,132($s3)
    lwc1	$f8,132($s1)
    # Line 248
    sub.s	$f6,$f6,$f7
    # Line 249
    lwc1	$f4,128($s2)
    # Line 250
    sub.s	$f8,$f8,$f0
    # Line 251
    lwc1	$f5,132($s2)
    # Line 249
    sub.s	$f4,$f4,$f7
    # Line 251
    sub.s	$f5,$f5,$f0
    # Line 252
    mul.s	$f0,$f4,$f8
    mul.s	$f7,$f6,$f5
    sub.s	$f7,$f7,$f0
    swc1	$f7,0($sp)
    lw	$a0,0($sp)
    sll	$at,$a0,0x1
    beqz	$at,.L0db69118
    # Line 271
    sra	$a1,$a0,0x1f
    sltiu	$a1,$a1,1
    sd	$a1,16($sp)
    xor	$a1,$a1,$a4
    addu	$a1,$a1,$s0
    lbu	$a1,30568($a1)
    lbu	$v0,30573($s0)
    # Line 290
    sll	$a3,$a1,0x2
    # Line 271
    bne	$v0,$a1,.L0db68f5c
    # Line 289
    move	$a0,$a1
    ld	$gp,32($sp)
    # Line 274
    ld	$s0,24($sp)
    ld	$s1,40($sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db68f5c:
    # Line 282
    swc1	$f5,30244($s0)
    # Line 281
    swc1	$f8,30240($s0)
    # Line 282
    lw	$a5,30488($s0)
    # Line 280
    swc1	$f4,30236($s0)
    # Line 279
    swc1	$f6,30232($s0)
    # Line 282
    andi	$a5,$a5,0x400
    beqz	$a5,.L0db690d8
    # Line 278
    swc1	$f7,30228($s0)
    # Line 290
    addu	$a3,$a3,$s0
    sd	$s4,72($sp)
    lw	$a3,28136($a3)
.L0db68f88:
    # Line 300
    lw	$v0,28128($s0)
    # Line 299
    lw	$s4,28132($s0)
    # Line 307
    sll	$at,$a0,0x4
    sd	$v0,8($sp)
    lw	$a5,0($v0)
    addu	$at,$at,$v0
    addiu	$at,$at,144
    nor	$a5,$a5,$zero
    and	$a5,$a5,$a3
    andi	$a5,$a5,0x1b
    beqz	$a5,.L0db68fd8
    sw	$at,4($v0)
    # Line 311
    ld	$t9,8($sp)
    move	$a1,$t9
    lw	$t9,8($t9)
    move	$a0,$s0
    sd	$ra,64($sp)
    jalr	$t9
    andi	$a2,$a3,0x1b
    ld	$ra,64($sp)
.L0db68fd8:
    lw	$at,0($s1)
    nor	$at,$at,$zero
    and	$at,$at,$s4
    beqz	$at,.L0db69004
    # Line 315
    move	$a0,$s0
    lw	$t9,8($s1)
    move	$a1,$s1
    sd	$ra,64($sp)
    jalr	$t9
    move	$a2,$s4
    ld	$ra,64($sp)
.L0db69004:
    lw	$v0,0($s2)
    nor	$v0,$v0,$zero
    and	$v0,$v0,$s4
    beqz	$v0,.L0db69030
    # Line 316
    move	$a0,$s0
    lw	$t9,8($s2)
    move	$a1,$s2
    sd	$ra,64($sp)
    jalr	$t9
    move	$a2,$s4
    ld	$ra,64($sp)
.L0db69030:
    lw	$v1,0($s3)
    nor	$v1,$v1,$zero
    and	$v1,$v1,$s4
    beqz	$v1,.L0db69058
    sd	$ra,64($sp)
    # Line 317
    lw	$t9,8($s3)
    move	$a0,$s0
    move	$a1,$s3
    jalr	$t9
    move	$a2,$s4
.L0db69058:
    # Line 320
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s2
    lw	$t9,12152($s0)
    move	$a3,$s3
    ld	$a4,16($sp)
    jalr	$t9
    ld	$s4,72($sp)
    ld	$ra,64($sp)
    # Line 324
    ld	$s0,24($sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    ld	$s1,40($sp)
    ld	$a5,8($sp)
    ld	$gp,32($sp)
    addiu	$sp,$sp,112
    # Line 323
    addiu	$a0,$a5,144
    # Line 324
    jr	$ra
    # Line 323
    sw	$a0,4($a5)
.L0db690a4:
    # Line 230
    beqz	$a6,.L0db69104
    slt	$at,$t0,$a7
    beqz	$at,.L0db690c8
    # Line 239
    move	$v1,$s1
    # Line 237
    li	$a4,1
    # Line 236
    move	$v0,$s1
    move	$s1,$s2
    # Line 237
    b	.L0db68ed4
    # Line 236
    move	$s2,$v0
.L0db690c8:
    # Line 239
    move	$s1,$s2
    move	$s2,$s3
    b	.L0db68ed4
    move	$s3,$v1
.L0db690d8:
    sd	$s4,72($sp)
    # Line 292
    move	$a0,$zero
    b	.L0db68f88
    # Line 293
    lw	$a3,28136($s0)
.L0db690e8:
    # Line 221
    beqz	$a5,.L0db69134
    # Line 230
    move	$v1,$s1
    # Line 228
    li	$a4,1
    # Line 227
    move	$at,$s2
    move	$s2,$s3
    # Line 228
    b	.L0db68ed4
    # Line 227
    move	$s3,$at
.L0db69104:
    # Line 243
    li	$a4,1
    # Line 242
    move	$v0,$s1
    move	$s1,$s3
    b	.L0db68ed4
    move	$s3,$v0
.L0db69118:
    ld	$gp,32($sp)
    # Line 254
    ld	$s0,24($sp)
    ld	$s1,40($sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db69134:
    # Line 230
    move	$s1,$s3
    move	$s3,$s2
    b	.L0db68ed4
    move	$s2,$v1
.end __glRenderFlatTriangle

# Function: __glRenderFlatOneFaceTriangle
# Declared: Line 331 (Source lines: 333-437)
# Address: 0x0db69144 - 0x0db693bc (Size: 632 bytes, Frame: 240)
.globl __glRenderFlatOneFaceTriangle
.ent __glRenderFlatOneFaceTriangle
__glRenderFlatOneFaceTriangle:
    # Line 345
    move	$a4,$zero
    # Line 333
    addiu	$sp,$sp,-112
    sd	$s0,32($sp)
    move	$s0,$a0
    sd	$s1,16($sp)
    move	$s1,$a1
    sd	$s2,48($sp)
    move	$s2,$a2
    sd	$s3,40($sp)
    move	$s3,$a3
    # Line 345
    lw	$a6,132($a2)
    lw	$t0,132($a1)
    sd	$gp,24($sp)
    # Line 333
    lui	$a7,0x9
    addiu	$a7,$a7,21844
    addu	$gp,$t9,$a7
    # Line 345
    lw	$a7,132($a3)
    slt	$at,$t0,$a6
    beqz	$at,.L0db69330
    slt	$a6,$a6,$a7
    beqz	$a6,.L0db69364
    slt	$at,$t0,$a7
.L0db6919c:
    # Line 372
    lwc1	$f7,128($s3)
    lwc1	$f6,128($s1)
    # Line 374
    lwc1	$f0,132($s3)
    lwc1	$f8,132($s1)
    # Line 372
    sub.s	$f6,$f6,$f7
    # Line 373
    lwc1	$f4,128($s2)
    # Line 374
    sub.s	$f8,$f8,$f0
    # Line 375
    lwc1	$f5,132($s2)
    # Line 373
    sub.s	$f4,$f4,$f7
    # Line 375
    sub.s	$f5,$f5,$f0
    # Line 376
    mul.s	$f0,$f4,$f8
    mul.s	$f7,$f6,$f5
    sub.s	$f7,$f7,$f0
    swc1	$f7,0($sp)
    lw	$a0,0($sp)
    sll	$at,$a0,0x1
    beqzl	$at,.L0db69394
    ld	$gp,24($sp)
    # Line 378
    lbu	$v1,30573($s0)
    sra	$v0,$a0,0x1f
    sltiu	$v0,$v0,1
    sd	$v0,8($sp)
    xor	$v0,$v0,$a4
    addu	$v0,$v0,$s0
    lbu	$v0,30568($v0)
    bnel	$v0,$v1,.L0db69224
    # Line 406
    swc1	$f5,30244($s0)
    ld	$gp,24($sp)
    # Line 398
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    ld	$s2,48($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db69224:
    # Line 405
    swc1	$f8,30240($s0)
    # Line 404
    swc1	$f4,30236($s0)
    # Line 403
    swc1	$f6,30232($s0)
    # Line 417
    lw	$a1,28128($s0)
    # Line 402
    swc1	$f7,30228($s0)
    # Line 417
    lw	$v1,0($a1)
    # Line 411
    lw	$a3,28136($s0)
    sd	$s4,64($sp)
    # Line 417
    nor	$v1,$v1,$zero
    and	$v1,$v1,$a3
    andi	$v1,$v1,0x1b
    beqz	$v1,.L0db69270
    # Line 416
    lw	$s4,28132($s0)
    # Line 427
    lw	$t9,8($a1)
    move	$a0,$s0
    sd	$ra,56($sp)
    jalr	$t9
    andi	$a2,$a3,0x1b
    ld	$ra,56($sp)
.L0db69270:
    lw	$a5,0($s1)
    nor	$a5,$a5,$zero
    and	$a5,$a5,$s4
    beqz	$a5,.L0db6929c
    # Line 431
    move	$a0,$s0
    lw	$t9,8($s1)
    move	$a1,$s1
    sd	$ra,56($sp)
    jalr	$t9
    move	$a2,$s4
    ld	$ra,56($sp)
.L0db6929c:
    lw	$at,0($s2)
    nor	$at,$at,$zero
    and	$at,$at,$s4
    beqz	$at,.L0db692c8
    # Line 432
    move	$a0,$s0
    lw	$t9,8($s2)
    move	$a1,$s2
    sd	$ra,56($sp)
    jalr	$t9
    move	$a2,$s4
    ld	$ra,56($sp)
.L0db692c8:
    lw	$v0,0($s3)
    nor	$v0,$v0,$zero
    and	$v0,$v0,$s4
    beqz	$v0,.L0db692f0
    sd	$ra,56($sp)
    # Line 433
    lw	$t9,8($s3)
    move	$a0,$s0
    move	$a1,$s3
    jalr	$t9
    move	$a2,$s4
.L0db692f0:
    # Line 436
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s2
    lw	$t9,12152($s0)
    move	$a3,$s3
    ld	$a4,8($sp)
    jalr	$t9
    ld	$s4,64($sp)
    ld	$ra,56($sp)
    # Line 437
    ld	$s0,32($sp)
    ld	$s2,48($sp)
    ld	$s3,40($sp)
    ld	$s1,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db69330:
    # Line 354
    beqz	$a6,.L0db69380
    slt	$v1,$t0,$a7
    beqz	$v1,.L0db69354
    # Line 363
    move	$a5,$s1
    # Line 360
    move	$a4,$s1
    move	$s1,$s2
    move	$s2,$a4
    # Line 361
    b	.L0db6919c
    li	$a4,1
.L0db69354:
    # Line 363
    move	$s1,$s2
    move	$s2,$s3
    b	.L0db6919c
    move	$s3,$a5
.L0db69364:
    # Line 345
    beqz	$at,.L0db693ac
    # Line 354
    move	$a5,$s1
    # Line 352
    li	$a4,1
    # Line 351
    move	$v0,$s2
    move	$s2,$s3
    # Line 352
    b	.L0db6919c
    # Line 351
    move	$s3,$v0
.L0db69380:
    # Line 366
    move	$v1,$s1
    # Line 367
    li	$a4,1
    # Line 366
    move	$s1,$s3
    b	.L0db6919c
    move	$s3,$v1
.L0db69394:
    # Line 378
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    ld	$s2,48($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db693ac:
    # Line 354
    move	$s1,$s3
    move	$s3,$s2
    b	.L0db6919c
    move	$s2,$a5
.end __glRenderFlatOneFaceTriangle

# Function: __glRenderSmoothTriangle
# Declared: Line 446 (Source lines: 448-554)
# Address: 0x0db693bc - 0x0db69670 (Size: 692 bytes, Frame: 240)
.globl __glRenderSmoothTriangle
.ent __glRenderSmoothTriangle
__glRenderSmoothTriangle:
    # Line 459
    move	$a4,$zero
    # Line 448
    addiu	$sp,$sp,-112
    sd	$s3,40($sp)
    move	$s3,$a0
    sd	$s1,16($sp)
    move	$s1,$a1
    sd	$s0,32($sp)
    move	$s0,$a2
    sd	$s2,48($sp)
    # Line 459
    lw	$a6,132($a2)
    sd	$gp,24($sp)
    # Line 448
    lui	$a7,0x9
    addiu	$a7,$a7,21212
    addu	$gp,$t9,$a7
    # Line 459
    lw	$a7,132($a1)
    # Line 448
    move	$s2,$a3
    # Line 459
    lw	$t0,132($a3)
    slt	$at,$a7,$a6
    beqz	$at,.L0db695d0
    slt	$a6,$a6,$t0
    beqz	$a6,.L0db69614
    slt	$a5,$a7,$t0
.L0db69414:
    # Line 488
    lwc1	$f7,132($s2)
    # Line 489
    lwc1	$f8,132($s0)
    sub.s	$f8,$f8,$f7
    # Line 486
    lwc1	$f6,128($s2)
    lwc1	$f5,128($s1)
    # Line 487
    lwc1	$f4,128($s0)
    # Line 486
    sub.s	$f5,$f5,$f6
    # Line 487
    sub.s	$f4,$f4,$f6
    # Line 488
    lwc1	$f6,132($s1)
    sub.s	$f6,$f6,$f7
    # Line 490
    mul.s	$f7,$f5,$f8
    mul.s	$f0,$f4,$f6
    sub.s	$f7,$f7,$f0
    swc1	$f7,0($sp)
    lw	$a0,0($sp)
    sll	$at,$a0,0x1
    beqz	$at,.L0db69644
    # Line 509
    sra	$a1,$a0,0x1f
    sltiu	$a1,$a1,1
    sd	$a1,8($sp)
    xor	$a1,$a1,$a4
    addu	$a1,$a1,$s3
    lbu	$a1,30568($a1)
    lbu	$v0,30573($s3)
    # Line 528
    move	$a0,$a1
    # Line 509
    bne	$v0,$a1,.L0db6949c
    # Line 529
    sll	$at,$a1,0x2
    ld	$gp,24($sp)
    # Line 512
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    ld	$s2,48($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db6949c:
    sd	$s4,64($sp)
    # Line 526
    lw	$s4,28132($s3)
    # Line 520
    swc1	$f8,30244($s3)
    # Line 519
    swc1	$f6,30240($s3)
    # Line 526
    lw	$a5,30488($s3)
    # Line 518
    swc1	$f4,30236($s3)
    # Line 517
    swc1	$f5,30232($s3)
    # Line 526
    andi	$a5,$a5,0x400
    beqz	$a5,.L0db69604
    # Line 516
    swc1	$f7,30228($s3)
    # Line 529
    addu	$at,$at,$s3
    lw	$at,28136($at)
    or	$s4,$at,$s4
.L0db694d0:
    # Line 538
    sll	$at,$a0,0x4
    # Line 540
    addu	$v1,$at,$s2
    addiu	$v1,$v1,144
    # Line 539
    addu	$a5,$at,$s0
    addiu	$a5,$a5,144
    # Line 538
    addu	$at,$at,$s1
    addiu	$at,$at,144
    sw	$at,4($s1)
    # Line 539
    sw	$a5,4($s0)
    # Line 540
    sw	$v1,4($s2)
    lw	$v0,0($s1)
    nor	$v0,$v0,$zero
    and	$v0,$v0,$s4
    beqz	$v0,.L0db69524
    # Line 543
    move	$a0,$s3
    lw	$t9,8($s1)
    move	$a1,$s1
    sd	$ra,56($sp)
    jalr	$t9
    move	$a2,$s4
    ld	$ra,56($sp)
.L0db69524:
    lw	$a5,0($s0)
    nor	$a5,$a5,$zero
    and	$a5,$a5,$s4
    beqz	$a5,.L0db69550
    # Line 544
    move	$a0,$s3
    lw	$t9,8($s0)
    move	$a1,$s0
    sd	$ra,56($sp)
    jalr	$t9
    move	$a2,$s4
    ld	$ra,56($sp)
.L0db69550:
    lw	$at,0($s2)
    nor	$at,$at,$zero
    and	$at,$at,$s4
    beqz	$at,.L0db69578
    sd	$ra,56($sp)
    # Line 545
    lw	$t9,8($s2)
    move	$a0,$s3
    move	$a1,$s2
    jalr	$t9
    move	$a2,$s4
.L0db69578:
    # Line 548
    move	$a0,$s3
    move	$a1,$s1
    move	$a2,$s0
    lw	$t9,12152($s3)
    move	$a3,$s2
    ld	$a4,8($sp)
    jalr	$t9
    ld	$s4,64($sp)
    ld	$ra,56($sp)
    # Line 554
    ld	$s3,40($sp)
    # Line 551
    addiu	$a0,$s1,144
    # Line 552
    addiu	$v1,$s0,144
    ld	$gp,24($sp)
    # Line 551
    sw	$a0,4($s1)
    # Line 554
    ld	$s1,16($sp)
    # Line 553
    addiu	$v0,$s2,144
    # Line 552
    sw	$v1,4($s0)
    # Line 554
    ld	$s0,32($sp)
    # Line 553
    sw	$v0,4($s2)
    # Line 554
    ld	$s2,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db695d0:
    # Line 468
    beqz	$a6,.L0db69630
    slt	$a5,$a7,$t0
    beqz	$a5,.L0db695f0
    # Line 474
    move	$at,$s1
    # Line 475
    li	$a4,1
    # Line 474
    move	$s1,$s0
    # Line 475
    b	.L0db69414
    # Line 474
    move	$s0,$at
.L0db695f0:
    # Line 477
    move	$v0,$s1
    move	$s1,$s0
    move	$s0,$s2
    b	.L0db69414
    move	$s2,$v0
.L0db69604:
    # Line 532
    lw	$v1,28136($s3)
    # Line 531
    move	$a0,$zero
    b	.L0db694d0
    # Line 532
    or	$s4,$v1,$s4
.L0db69614:
    # Line 459
    beqz	$a5,.L0db69660
    # Line 468
    move	$v1,$s1
    # Line 466
    li	$a4,1
    # Line 465
    move	$at,$s0
    move	$s0,$s2
    # Line 466
    b	.L0db69414
    # Line 465
    move	$s2,$at
.L0db69630:
    # Line 480
    move	$v0,$s1
    # Line 481
    li	$a4,1
    # Line 480
    move	$s1,$s2
    b	.L0db69414
    move	$s2,$v0
.L0db69644:
    ld	$gp,24($sp)
    # Line 492
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    ld	$s2,48($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db69660:
    # Line 468
    move	$s1,$s2
    move	$s2,$s0
    b	.L0db69414
    move	$s0,$v1
.end __glRenderSmoothTriangle

# Function: __glRenderSmoothOneFaceTriangle
# Declared: Line 562 (Source lines: 564-651)
# Address: 0x0db69670 - 0x0db698bc (Size: 588 bytes, Frame: 240)
.globl __glRenderSmoothOneFaceTriangle
.ent __glRenderSmoothOneFaceTriangle
__glRenderSmoothOneFaceTriangle:
    # Line 575
    move	$a4,$zero
    # Line 564
    addiu	$sp,$sp,-112
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$s0,32($sp)
    move	$s0,$a1
    sd	$s2,48($sp)
    move	$s2,$a2
    sd	$s3,40($sp)
    move	$s3,$a3
    # Line 575
    lw	$a6,132($a2)
    lw	$t0,132($a1)
    sd	$gp,24($sp)
    # Line 564
    lui	$a7,0x9
    addiu	$a7,$a7,20520
    addu	$gp,$t9,$a7
    # Line 575
    lw	$a7,132($a3)
    slt	$at,$t0,$a6
    beqz	$at,.L0db69830
    slt	$a6,$a6,$a7
    beqz	$a6,.L0db69864
    slt	$at,$t0,$a7
.L0db696c8:
    # Line 604
    lwc1	$f7,132($s3)
    # Line 605
    lwc1	$f8,132($s2)
    sub.s	$f8,$f8,$f7
    # Line 602
    lwc1	$f6,128($s3)
    lwc1	$f5,128($s0)
    # Line 603
    lwc1	$f4,128($s2)
    # Line 602
    sub.s	$f5,$f5,$f6
    # Line 603
    sub.s	$f4,$f4,$f6
    # Line 604
    lwc1	$f6,132($s0)
    sub.s	$f6,$f6,$f7
    # Line 606
    mul.s	$f7,$f5,$f8
    mul.s	$f0,$f4,$f6
    sub.s	$f7,$f7,$f0
    swc1	$f7,0($sp)
    lw	$a0,0($sp)
    sll	$at,$a0,0x1
    beqzl	$at,.L0db69894
    ld	$gp,24($sp)
    # Line 608
    lbu	$v1,30573($s1)
    sra	$v0,$a0,0x1f
    sltiu	$v0,$v0,1
    sd	$v0,8($sp)
    xor	$v0,$v0,$a4
    addu	$v0,$v0,$s1
    lbu	$v0,30568($v0)
    bnel	$v0,$v1,.L0db69750
    # Line 642
    lw	$at,28136($s1)
    ld	$gp,24($sp)
    # Line 628
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    ld	$s2,48($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db69750:
    sd	$s4,64($sp)
    # Line 636
    swc1	$f8,30244($s1)
    # Line 635
    swc1	$f6,30240($s1)
    # Line 634
    swc1	$f4,30236($s1)
    # Line 633
    swc1	$f5,30232($s1)
    # Line 632
    swc1	$f7,30228($s1)
    # Line 642
    lw	$s4,28132($s1)
    lw	$v1,0($s0)
    or	$s4,$s4,$at
    nor	$v1,$v1,$zero
    and	$v1,$v1,$s4
    beqz	$v1,.L0db6979c
    # Line 645
    move	$a0,$s1
    lw	$t9,8($s0)
    move	$a1,$s0
    sd	$ra,56($sp)
    jalr	$t9
    move	$a2,$s4
    ld	$ra,56($sp)
.L0db6979c:
    lw	$a5,0($s2)
    nor	$a5,$a5,$zero
    and	$a5,$a5,$s4
    beqz	$a5,.L0db697c8
    # Line 646
    move	$a0,$s1
    lw	$t9,8($s2)
    move	$a1,$s2
    sd	$ra,56($sp)
    jalr	$t9
    move	$a2,$s4
    ld	$ra,56($sp)
.L0db697c8:
    lw	$at,0($s3)
    nor	$at,$at,$zero
    and	$at,$at,$s4
    beqz	$at,.L0db697f0
    sd	$ra,56($sp)
    # Line 647
    lw	$t9,8($s3)
    move	$a0,$s1
    move	$a1,$s3
    jalr	$t9
    move	$a2,$s4
.L0db697f0:
    # Line 650
    move	$a0,$s1
    move	$a1,$s0
    move	$a2,$s2
    lw	$t9,12152($s1)
    move	$a3,$s3
    ld	$a4,8($sp)
    jalr	$t9
    ld	$s4,64($sp)
    ld	$ra,56($sp)
    # Line 651
    ld	$s0,32($sp)
    ld	$s2,48($sp)
    ld	$s3,40($sp)
    ld	$s1,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db69830:
    # Line 584
    beqz	$a6,.L0db69880
    slt	$v0,$t0,$a7
    beqz	$v0,.L0db69850
    # Line 590
    move	$v1,$s0
    # Line 591
    li	$a4,1
    # Line 590
    move	$s0,$s2
    # Line 591
    b	.L0db696c8
    # Line 590
    move	$s2,$v1
.L0db69850:
    # Line 593
    move	$a5,$s0
    move	$s0,$s2
    move	$s2,$s3
    b	.L0db696c8
    move	$s3,$a5
.L0db69864:
    # Line 575
    beqz	$at,.L0db698ac
    # Line 584
    move	$a5,$s0
    # Line 582
    li	$a4,1
    # Line 581
    move	$v0,$s2
    move	$s2,$s3
    # Line 582
    b	.L0db696c8
    # Line 581
    move	$s3,$v0
.L0db69880:
    # Line 596
    move	$v1,$s0
    # Line 597
    li	$a4,1
    # Line 596
    move	$s0,$s3
    b	.L0db696c8
    move	$s3,$v1
.L0db69894:
    # Line 608
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    ld	$s2,48($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db698ac:
    # Line 584
    move	$s0,$s3
    move	$s3,$s2
    b	.L0db696c8
    move	$s2,$a5
.end __glRenderSmoothOneFaceTriangle

# Function: __glRenderSmoothOneFaceTmesh
# Declared: Line 661 (Source lines: 663-762)
# Address: 0x0db698bc - 0x0db69b58 (Size: 668 bytes, Frame: 240)
.globl __glRenderSmoothOneFaceTmesh
.ent __glRenderSmoothOneFaceTmesh
__glRenderSmoothOneFaceTmesh:
    # Line 675
    move	$a4,$zero
    # Line 668
    move	$a7,$a1
    # Line 663
    addiu	$sp,$sp,-112
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$s1,16($sp)
    move	$s1,$a1
    sd	$s2,48($sp)
    move	$s2,$a2
    sd	$s3,40($sp)
    # Line 675
    lw	$a6,132($a2)
    lw	$t1,132($a1)
    sd	$gp,32($sp)
    # Line 663
    lui	$t0,0x9
    addiu	$t0,$t0,19932
    addu	$gp,$t9,$t0
    # Line 675
    lw	$t0,132($a3)
    # Line 663
    move	$s3,$a3
    # Line 675
    slt	$at,$t1,$a6
    beqz	$at,.L0db69a74
    slt	$a6,$a6,$t0
    beqz	$a6,.L0db69af8
    slt	$v0,$t1,$t0
.L0db69918:
    # Line 704
    lwc1	$f7,132($s3)
    # Line 705
    lwc1	$f4,132($s2)
    # Line 704
    lwc1	$f6,132($s1)
    # Line 705
    sub.s	$f4,$f4,$f7
    # Line 702
    lwc1	$f0,128($s3)
    # Line 703
    lwc1	$f8,128($s2)
    # Line 704
    sub.s	$f6,$f6,$f7
    # Line 702
    lwc1	$f5,128($s1)
    # Line 703
    sub.s	$f8,$f8,$f0
    # Line 702
    sub.s	$f5,$f5,$f0
    # Line 706
    mul.s	$f0,$f8,$f6
    mul.s	$f7,$f5,$f4
    sub.s	$f7,$f7,$f0
    swc1	$f7,0($sp)
    lw	$a0,0($sp)
    sll	$at,$a0,0x1
    beqzl	$at,.L0db69b28
    ld	$gp,32($sp)
    # Line 709
    lbu	$v1,30573($s0)
    sra	$v0,$a0,0x1f
    sltiu	$v0,$v0,1
    sd	$v0,8($sp)
    xor	$v0,$v0,$a4
    addu	$v0,$v0,$s0
    lbu	$v0,30568($v0)
    beql	$v0,$v1,.L0db69a94
    ld	$gp,32($sp)
    # Line 738
    swc1	$f4,30244($s0)
    # Line 737
    swc1	$f6,30240($s0)
    # Line 736
    swc1	$f8,30236($s0)
    # Line 735
    swc1	$f5,30232($s0)
    # Line 744
    lw	$at,28136($s0)
    lbu	$v1,30574($s0)
    sd	$s4,64($sp)
    lw	$s4,28132($s0)
    # Line 734
    swc1	$f7,30228($s0)
    # Line 744
    beqz	$v1,.L0db69ac8
    or	$s4,$s4,$at
    lw	$v0,0($s1)
    nor	$v0,$v0,$zero
    and	$v0,$v0,$s4
    beqz	$v0,.L0db699dc
    # Line 748
    move	$a0,$s0
    lw	$t9,8($s1)
    move	$a1,$s1
    sd	$ra,56($sp)
    jalr	$t9
    move	$a2,$s4
    ld	$ra,56($sp)
.L0db699dc:
    lw	$v1,0($s2)
    nor	$v1,$v1,$zero
    and	$v1,$v1,$s4
    beqz	$v1,.L0db69a08
    # Line 749
    move	$a0,$s0
    lw	$t9,8($s2)
    move	$a1,$s2
    sd	$ra,56($sp)
    jalr	$t9
    move	$a2,$s4
    ld	$ra,56($sp)
.L0db69a08:
    lw	$a5,0($s3)
    nor	$a5,$a5,$zero
    and	$a5,$a5,$s4
    beqz	$a5,.L0db69a30
    sd	$ra,56($sp)
    # Line 750
    lw	$t9,8($s3)
    move	$a0,$s0
    move	$a1,$s3
    jalr	$t9
    move	$a2,$s4
.L0db69a30:
    ld	$a4,8($sp)
.L0db69a34:
    # Line 761
    move	$a3,$s3
    move	$a2,$s2
    move	$a1,$s1
    lw	$t9,12152($s0)
    move	$a0,$s0
    # Line 760
    sb	$zero,30574($s0)
    # Line 761
    jalr	$t9
    ld	$s4,64($sp)
    ld	$ra,56($sp)
    # Line 762
    ld	$s0,24($sp)
    ld	$s2,48($sp)
    ld	$s3,40($sp)
    ld	$s1,16($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db69a74:
    # Line 684
    beqz	$a6,.L0db69b14
    slt	$at,$t1,$t0
    beqz	$at,.L0db69ab4
    # Line 690
    move	$v0,$s1
    # Line 691
    li	$a4,1
    # Line 690
    move	$s1,$s2
    # Line 691
    b	.L0db69918
    # Line 690
    move	$s2,$v0
.L0db69a94:
    # Line 730
    ld	$s1,16($sp)
    ld	$s2,48($sp)
    ld	$s3,40($sp)
    # Line 729
    li	$v1,1
    sb	$v1,30574($s0)
    # Line 730
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db69ab4:
    # Line 693
    move	$a5,$s1
    move	$s1,$s2
    move	$s2,$s3
    b	.L0db69918
    move	$s3,$a5
.L0db69ac8:
    # Line 750
    lw	$at,0($a7)
    nor	$at,$at,$zero
    and	$at,$at,$s4
    beqz	$at,.L0db69a30
    sd	$ra,56($sp)
    # Line 756
    lw	$t9,8($a7)
    move	$a0,$s0
    move	$a1,$s1
    jalr	$t9
    move	$a2,$s4
    b	.L0db69a34
    ld	$a4,8($sp)
.L0db69af8:
    # Line 675
    beqz	$v0,.L0db69b48
    # Line 684
    move	$at,$s1
    # Line 682
    li	$a4,1
    # Line 681
    move	$v1,$s2
    move	$s2,$s3
    # Line 682
    b	.L0db69918
    # Line 681
    move	$s3,$v1
.L0db69b14:
    # Line 696
    move	$a4,$s1
    move	$s1,$s3
    move	$s3,$a4
    b	.L0db69918
    # Line 697
    li	$a4,1
.L0db69b28:
    # Line 709
    ld	$s1,16($sp)
    ld	$s2,48($sp)
    ld	$s3,40($sp)
    # Line 708
    li	$a5,1
    sb	$a5,30574($s0)
    # Line 709
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db69b48:
    # Line 684
    move	$s1,$s3
    move	$s3,$s2
    b	.L0db69918
    move	$s2,$at
.end __glRenderSmoothOneFaceTmesh

# Function: __glDontRenderTriangle
# Declared: Line 768 (Source lines: 771-771)
# Address: 0x0db69b58 - 0x0db69b60 (Size: 8 bytes, Frame: 0)
.globl __glDontRenderTriangle
.ent __glDontRenderTriangle
__glDontRenderTriangle:
    # Line 771
    jr	$ra
    nop
.end __glDontRenderTriangle

