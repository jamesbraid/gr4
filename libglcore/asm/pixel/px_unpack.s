# Source: ../pixel/px_unpack.c
# Category: pixel
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../pixel/px_unpack.c
# Total Functions: 89

.text

# Function: __glElementsPerGroup
# Declared: Line 29 (Source lines: 31-42)
# Address: 0x0db1815c - 0x0db181bc (Size: 96 bytes, Frame: 0)
.globl __glElementsPerGroup
.ent __glElementsPerGroup
__glElementsPerGroup:
    # Line 31
    li	$at,6407
    beq	$a0,$at,.L0db181a8
    li	$v0,6410
    beq	$a0,$v0,.L0db181b4
    li	$v1,6408
    beq	$a0,$v1,.L0db1819c
    li	$a1,0x8000
    beq	$a0,$a1,.L0db1819c
    li	$at,1
    beq	$a0,$at,.L0db18190
    # Line 42
    li	$v0,1
    jr	$ra
    nop
.L0db18190:
    # Line 40
    li	$v0,2
    jr	$ra
    nop
.L0db1819c:
    # Line 38
    li	$v0,4
    jr	$ra
    nop
.L0db181a8:
    # Line 33
    li	$v0,3
    jr	$ra
    nop
.L0db181b4:
    # Line 35
    jr	$ra
    li	$v0,2
.end __glElementsPerGroup

# Function: __glBytesPerElement
# Declared: Line 49 (Source lines: 50-73)
# Address: 0x0db181bc - 0x0db182bc (Size: 256 bytes, Frame: 0)
.globl __glBytesPerElement
.ent __glBytesPerElement
__glBytesPerElement:
    # Line 50
    li	$a3,0x8032
    lui	$v1,0xe
    addiu	$v1,$v1,25820
    sltu	$v0,$a0,$a3
    bnez	$v0,.L0db18204
    addu	$at,$t9,$v1
    # Line 51
    sltu	$a1,$a3,$a0
    beqz	$a1,.L0db18280
    li	$a3,0x8035
    sltu	$a2,$a0,$a3
    bnez	$a2,.L0db1824c
    sltu	$v0,$a3,$a0
    beqz	$v0,.L0db18244
    li	$v1,0x8036
    beq	$a0,$v1,.L0db182b4
    # Line 57
    lwc1	$f0,_lit_3f800000
.L0db181fc:
    # Line 73
    jr	$ra
    lwc1	$f0,_lit_40800000
.L0db18204:
    # Line 51
    sltiu	$a1,$a0,5122
    bnez	$a1,.L0db18230
    sltiu	$a2,$a0,5123
    bnez	$a2,.L0db18274
    sltiu	$v0,$a0,6656
    bnez	$v0,.L0db1826c
    sltiu	$v1,$a0,6657
    beqz	$v1,.L0db181fc
    # Line 61
    lwc1	$f0,_lit_3e000000
    jr	$ra
    nop
.L0db18230:
    # Line 51
    sltiu	$a1,$a0,5121
    bnez	$a1,.L0db1828c
    sltiu	$a2,$a0,5122
    beqz	$a2,.L0db181fc
    nop
.L0db18244:
    # Line 68
    jr	$ra
    lwc1	$f0,_lit_3f800000
.L0db1824c:
    # Line 51
    li	$a3,0x8034
    sltu	$v0,$a0,$a3
    bnez	$v0,.L0db182a0
    sltu	$v1,$a3,$a0
    bnez	$v1,.L0db181fc
    # Line 55
    lwc1	$f0,_lit_3f000000
    jr	$ra
    nop
.L0db1826c:
    # Line 51
    li	$a1,5123
    bne	$a0,$a1,.L0db181fc
.L0db18274:
    # Line 64
    lwc1	$f0,_lit_40000000
    jr	$ra
    nop
.L0db18280:
    # Line 53
    lwc1	$f0,_lit_3eaaaaab
    jr	$ra
    nop
.L0db1828c:
    # Line 51
    li	$a2,5120
    bne	$a0,$a2,.L0db181fc
    nop
    b	.L0db18244
    nop
.L0db182a0:
    li	$v0,0x8033
    bne	$a0,$v0,.L0db181fc
    nop
    # Line 59
    jr	$ra
    lwc1	$f0,_lit_3f000000
.L0db182b4:
    # Line 57
    jr	$ra
    nop
.end __glBytesPerElement

# Function: __glSpecElementsPerGroup
# Declared: Line 83 (Source lines: 84-111)
# Address: 0x0db182bc - 0x0db18348 (Size: 140 bytes, Frame: 0)
.globl __glSpecElementsPerGroup
.ent __glSpecElementsPerGroup
__glSpecElementsPerGroup:
    # Line 84
    li	$at,0x8032
    beq	$a1,$at,.L0db18318
    li	$v0,0x8033
    beq	$a1,$v0,.L0db18318
    li	$v1,0x8034
    beq	$a1,$v1,.L0db18318
    li	$a2,0x8035
    beq	$a1,$a2,.L0db18318
    li	$at,0x8036
    beq	$a1,$at,.L0db18318
    # Line 100
    li	$v0,6407
    beq	$a0,$v0,.L0db18334
    li	$v1,6410
    beq	$a0,$v1,.L0db1833c
    li	$a2,6408
    beq	$a0,$a2,.L0db18328
    li	$at,0x8000
    beq	$a0,$at,.L0db18328
    li	$v0,1
    beq	$a0,$v0,.L0db18320
    nop
    # Line 111
    jr	$ra
    li	$v0,1
.L0db18318:
    # Line 95
    jr	$ra
    li	$v0,1
.L0db18320:
    # Line 109
    jr	$ra
    li	$v0,2
.L0db18328:
    # Line 107
    li	$v0,4
    jr	$ra
    nop
.L0db18334:
    # Line 102
    jr	$ra
    li	$v0,3
.L0db1833c:
    # Line 104
    li	$v0,2
    jr	$ra
    nop
.end __glSpecElementsPerGroup

# Function: __glSpecBytesPerElement
# Declared: Line 120 (Source lines: 121-141)
# Address: 0x0db18348 - 0x0db1845c (Size: 276 bytes, Frame: 0)
.globl __glSpecBytesPerElement
.ent __glSpecBytesPerElement
__glSpecBytesPerElement:
    # Line 121
    sltiu	$at,$a0,5126
    bnez	$at,.L0db1838c
    # Line 122
    sltiu	$v0,$a0,5127
    bnez	$v0,.L0db183b0
    li	$a2,0x8034
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0db183f0
    sltu	$a1,$a2,$a0
    beqz	$a1,.L0db183d4
    li	$a2,0x8036
    sltu	$at,$a0,$a2
    bnez	$at,.L0db18448
    sltu	$v0,$a2,$a0
    bnez	$v0,.L0db183e8
    nop
    b	.L0db183b0
    nop
.L0db1838c:
    sltiu	$v1,$a0,5123
    bnez	$v1,.L0db183b8
    sltiu	$a1,$a0,5124
    bnez	$a1,.L0db183d4
    sltiu	$at,$a0,5125
    bnez	$at,.L0db18418
    sltiu	$v0,$a0,5126
    beqz	$v0,.L0db183e8
    nop
.L0db183b0:
    # Line 137
    jr	$ra
    li	$v0,4
.L0db183b8:
    # Line 122
    sltiu	$v1,$a0,5121
    bnez	$v1,.L0db183dc
    sltiu	$a1,$a0,5122
    bnez	$a1,.L0db18440
    li	$at,5122
    bne	$a0,$at,.L0db183e8
    nop
.L0db183d4:
    # Line 127
    jr	$ra
    li	$v0,2
.L0db183dc:
    # Line 122
    li	$v0,5120
    beq	$a0,$v0,.L0db18440
    nop
.L0db183e8:
    # Line 141
    jr	$ra
    move	$v0,$zero
.L0db183f0:
    # Line 122
    li	$a2,0x8032
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0db1842c
    sltu	$a1,$a2,$a0
    beqz	$a1,.L0db18440
    li	$at,0x8033
    bne	$a0,$at,.L0db183e8
    nop
    b	.L0db183d4
    nop
.L0db18418:
    li	$v0,5124
    bne	$a0,$v0,.L0db183e8
    nop
    b	.L0db183b0
    nop
.L0db1842c:
    li	$v1,6656
    bne	$a0,$v1,.L0db183e8
    nop
    # Line 139
    jr	$ra
    li	$v0,1
.L0db18440:
    # Line 131
    jr	$ra
    li	$v0,1
.L0db18448:
    # Line 122
    li	$a1,0x8035
    bne	$a0,$a1,.L0db183e8
    nop
    b	.L0db183b0
    nop
.end __glSpecBytesPerElement

# Function: __glInitUnpacker
# Declared: Line 146 (Source lines: 147-213)
# Address: 0x0db1845c - 0x0db18638 (Size: 476 bytes, Frame: 240)
.globl __glInitUnpacker
.ent __glInitUnpacker
__glInitUnpacker:
    # Line 168
    lw	$a0,0($a1)
    # Line 147
    addiu	$sp,$sp,-112
    sd	$s2,72($sp)
    sd	$s5,80($sp)
    sd	$s0,56($sp)
    move	$s0,$a1
    sd	$s6,8($sp)
    # Line 166
    lw	$s6,40($a1)
    sd	$s4,0($sp)
    # Line 165
    lw	$s4,68($a1)
    sd	$s7,32($sp)
    # Line 164
    lw	$s7,52($a1)
    sd	$s3,40($sp)
    # Line 163
    lw	$s3,48($a1)
    sd	$s8,16($sp)
    # Line 162
    lw	$s8,8($a1)
    sd	$s1,24($sp)
    sd	$gp,64($sp)
    # Line 147
    lui	$at,0xe
    addiu	$at,$at,25148
    addu	$gp,$t9,$at
    # Line 168
    # lw $t9, -28584($gp) # &__glSpecElementsPerGroup
    # Line 161
    lw	$s1,4($a1)
    sd	$ra,48($sp)
    # Line 168
    bal __glSpecElementsPerGroup
    move	$a1,$s1
    # Line 171
    # lw $t9, -28580($gp) # &__glSpecBytesPerElement
    # Line 168
    move	$s2,$v0
    # Line 171
    move	$a0,$s1
    bal __glSpecBytesPerElement
    # Line 169
    lw	$s5,60($s0)
    # Line 171
    li	$a5,1
    beq	$v0,$a5,.L0db185dc
    ld	$ra,48($sp)
.L0db184e4:
    # Line 175
    mult	$v0,$s2
    mflo	$a1
    nop
    nop
    mult	$a1,$s5
    li	$a6,6656
    mflo	$a0
    beq	$a6,$s1,.L0db185e4
    # Line 177
    addiu	$a2,$s5,7
.L0db18508:
    div	$zero,$a0,$s4
    teq	$s4,$zero,0x7
    # Line 181
    andi	$a2,$s3,0x7
    # Line 177
    mfhi	$a4
    beqz	$a4,.L0db18528
    ld	$s5,80($sp)
    # Line 181
    subu	$v1,$s4,$a4
    addu	$a0,$v1,$a0
.L0db18528:
    beqz	$a2,.L0db18534
    ld	$s4,0($sp)
    # Line 183
    beq	$a6,$s1,.L0db1854c
.L0db18534:
    move	$a3,$s6
    beqz	$a3,.L0db18558
    ld	$s6,8($sp)
    slti	$at,$v0,2
    bnez	$at,.L0db18558
    ld	$s6,8($sp)
.L0db1854c:
    # Line 185
    sb	$zero,72($s0)
    b	.L0db1855c
    ld	$s6,8($sp)
.L0db18558:
    # Line 187
    sb	$a5,72($s0)
.L0db1855c:
    mult	$s7,$a0
    ld	$gp,64($sp)
    ld	$s7,32($sp)
    # Line 191
    sra	$a3,$s3,0x1f
    xor	$a2,$s3,$a3
    # Line 187
    mflo	$a4
    beq	$a6,$s1,.L0db185f8
    addu	$a4,$a4,$s8
    # Line 195
    mult	$a1,$s3
    ld	$s8,16($sp)
    mflo	$s1
    addu	$s1,$s1,$a4
    sw	$s1,12($s0)
    ld	$s1,24($sp)
.L0db18594:
    # Line 212
    sb	$zero,430($s0)
    # Line 211
    sb	$zero,429($s0)
    # Line 210
    sb	$a5,428($s0)
    # Line 209
    sb	$zero,427($s0)
    # Line 208
    sb	$zero,426($s0)
    # Line 207
    sb	$a5,425($s0)
    # Line 206
    sb	$zero,424($s0)
    # Line 203
    sw	$zero,24($s0)
    # Line 202
    sw	$v0,36($s0)
    # Line 201
    sw	$s2,32($s0)
    # Line 200
    sw	$s2,28($s0)
    # Line 199
    sw	$a1,20($s0)
    # Line 198
    sw	$a0,16($s0)
    # Line 213
    ld	$s0,56($sp)
    ld	$s2,72($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db185dc:
    b	.L0db184e4
    # Line 172
    move	$s6,$zero
.L0db185e4:
    # Line 177
    sra	$a0,$a2,0x2
    srl	$a0,$a0,0x1d
    addu	$a0,$a0,$a2
    b	.L0db18508
    sra	$a0,$a0,0x3
.L0db185f8:
    # Line 191
    subu	$a2,$a2,$a3
    ld	$s8,16($sp)
    ld	$s7,32($sp)
    sra	$a3,$s3,0x1f
    andi	$a2,$a2,0x7
    xor	$a2,$a2,$a3
    subu	$a2,$a2,$a3
    # Line 193
    sw	$a2,76($s0)
    # Line 191
    sra	$s1,$s3,0x2
    srl	$s1,$s1,0x1d
    addu	$s1,$s1,$s3
    sra	$s1,$s1,0x3
    addu	$s1,$s1,$a4
    sw	$s1,12($s0)
    # Line 193
    b	.L0db18594
    ld	$s1,24($sp)
.end __glInitUnpacker

# Function: __glInitUnpacker3D
# Declared: Line 215 (Source lines: 216-228)
# Address: 0x0db18638 - 0x0db186a8 (Size: 112 bytes, Frame: 48)
.globl __glInitUnpacker3D
.ent __glInitUnpacker3D
__glInitUnpacker3D:
    # Line 216
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$at,0xe
    addiu	$at,$at,24672
    addu	$gp,$t9,$at
    # Line 220
    # lw $t9, -28576($gp) # &__glInitUnpacker
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    bal __glInitUnpacker
    # Line 216
    move	$s8,$a1
    # Line 223
    lw	$at,64($s8)
    lw	$ra,16($s8)
    mult	$ra,$at
    # Line 225
    lw	$a1,56($s8)
    # Line 223
    mflo	$a0
    nop
    nop
    # Line 225
    mult	$a1,$a0
    ld	$gp,16($sp)
    lw	$v0,12($s8)
    # Line 228
    ld	$ra,0($sp)
    # Line 227
    sw	$a0,24($s8)
    # Line 225
    mflo	$v1
    addu	$v0,$v0,$v1
    sw	$v0,12($s8)
    # Line 228
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glInitUnpacker3D

# Function: __glSpanUnpackBitmap
# Declared: Line 235 (Source lines: 237-555)
# Address: 0x0db186a8 - 0x0db19154 (Size: 2732 bytes, Frame: 0)
.globl __glSpanUnpackBitmap
.ent __glSpanUnpackBitmap
__glSpanUnpackBitmap:
    # Line 265
    li	$a6,1
    # Line 263
    lwc1	$f4,3284($a0)
    # Line 258
    lw	$a7,168($a1)
    # Line 252
    lw	$t0,312($a1)
    # Line 260
    lbu	$t1,0($a2)
    # Line 256
    lw	$t2,76($a1)
    # Line 265
    lw	$v0,44($a1)
    # Line 237
    lui	$v1,0xe
    addiu	$v1,$v1,24560
    # Line 265
    beqz	$v0,.L0db189d4
    # Line 237
    addu	$at,$t9,$v1
    # Line 265
    la	$v0,sub_0dbf0000
    sll	$a4,$t2,0x2
    sltiu	$v1,$t2,8
    addiu	$v0,$v0,-4224
    beqz	$v1,.L0db187a4
    addu	$a4,$a4,$v0
    lw	$v1,%lo(jtbl_0dbeef80)($a4)
    jr	$v1
    nop
.L0db186f8:
    # Line 270
    lh	$a6,0($t0)
    andi	$a0,$t1,0x2
    beqz	$a0,.L0db18f64
    addiu	$t0,$t0,2
    # Line 271
    swc1	$f4,0($a3)
    addiu	$a3,$a3,4
.L0db18710:
    # Line 274
    addiu	$a7,$a7,-1
    beqz	$a7,.L0db187a8
    # Line 321
    slti	$a1,$a7,8
.L0db1871c:
    # Line 276
    addiu	$a6,$a6,-1
    beqzl	$a6,.L0db18f14
    # Line 277
    lh	$a6,0($t0)
.L0db18728:
    # Line 281
    addiu	$a7,$a7,-1
    beqz	$a7,.L0db187a8
    # Line 321
    slti	$a1,$a7,8
.L0db18734:
    # Line 283
    addiu	$a6,$a6,-1
    beqzl	$a6,.L0db18e50
    # Line 284
    lh	$a6,0($t0)
.L0db18740:
    # Line 288
    addiu	$a7,$a7,-1
    beqz	$a7,.L0db187a8
    # Line 321
    slti	$a1,$a7,8
.L0db1874c:
    # Line 290
    addiu	$a6,$a6,-1
    beqzl	$a6,.L0db18e00
    # Line 291
    lh	$a6,0($t0)
.L0db18758:
    # Line 295
    addiu	$a7,$a7,-1
    beqz	$a7,.L0db187a8
    # Line 321
    slti	$a1,$a7,8
.L0db18764:
    # Line 297
    addiu	$a6,$a6,-1
    beqzl	$a6,.L0db18de0
    # Line 298
    lh	$a6,0($t0)
.L0db18770:
    # Line 302
    addiu	$a7,$a7,-1
    beqz	$a7,.L0db187a8
    # Line 321
    slti	$a1,$a7,8
.L0db1877c:
    # Line 304
    addiu	$a6,$a6,-1
    beqzl	$a6,.L0db18dc8
    # Line 305
    lh	$a6,0($t0)
.L0db18788:
    # Line 309
    addiu	$a7,$a7,-1
    beqz	$a7,.L0db187a8
    # Line 321
    slti	$a1,$a7,8
.L0db18794:
    # Line 311
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db18dac
    # Line 316
    addiu	$a7,$a7,-1
.L0db187a0:
    # Line 317
    addiu	$a2,$a2,1
.L0db187a4:
    # Line 321
    slti	$a1,$a7,8
.L0db187a8:
    bnez	$a1,.L0db1894c
    mtc1	$zero,$f5
    b	.L0db18808
    # Line 324
    addiu	$a7,$a7,-8
.L0db187b8:
    # Line 327
    swc1	$f4,0($a3)
    addiu	$a3,$a3,4
.L0db187c0:
    # Line 330
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db18834
.L0db187c8:
    # Line 335
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db18850
.L0db187d0:
    # Line 340
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db1886c
.L0db187d8:
    # Line 345
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db18888
.L0db187e0:
    # Line 350
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db188a4
.L0db187e8:
    # Line 355
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db188c0
.L0db187f0:
    # Line 360
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db188dc
.L0db187f8:
    # Line 363
    slti	$v0,$a7,8
    bnez	$v0,.L0db1894c
    nop
    # Line 324
    addiu	$a7,$a7,-8
.L0db18808:
    # Line 323
    addiu	$a2,$a2,1
    # Line 325
    addiu	$a6,$a6,-1
    bnez	$a6,.L0db187c0
    # Line 322
    lbu	$t1,-1($a2)
    # Line 326
    lh	$a6,0($t0)
    andi	$v1,$t1,0x1
    bnez	$v1,.L0db187b8
    addiu	$t0,$t0,2
    # Line 328
    swc1	$f5,0($a3)
    b	.L0db187c0
    addiu	$a3,$a3,4
.L0db18834:
    # Line 331
    lh	$a6,0($t0)
    andi	$a0,$t1,0x2
    beqz	$a0,.L0db188f8
    addiu	$t0,$t0,2
    # Line 332
    swc1	$f4,0($a3)
    b	.L0db187c8
    addiu	$a3,$a3,4
.L0db18850:
    # Line 336
    lh	$a6,0($t0)
    andi	$a1,$t1,0x4
    beqz	$a1,.L0db18904
    addiu	$t0,$t0,2
    # Line 337
    swc1	$f4,0($a3)
    b	.L0db187d0
    addiu	$a3,$a3,4
.L0db1886c:
    # Line 341
    lh	$a6,0($t0)
    andi	$v0,$t1,0x8
    beqz	$v0,.L0db18910
    addiu	$t0,$t0,2
    # Line 342
    swc1	$f4,0($a3)
    b	.L0db187d8
    addiu	$a3,$a3,4
.L0db18888:
    # Line 346
    lh	$a6,0($t0)
    andi	$v1,$t1,0x10
    beqz	$v1,.L0db1891c
    addiu	$t0,$t0,2
    # Line 347
    swc1	$f4,0($a3)
    b	.L0db187e0
    addiu	$a3,$a3,4
.L0db188a4:
    # Line 351
    lh	$a6,0($t0)
    andi	$a0,$t1,0x20
    beqz	$a0,.L0db18928
    addiu	$t0,$t0,2
    # Line 352
    swc1	$f4,0($a3)
    b	.L0db187e8
    addiu	$a3,$a3,4
.L0db188c0:
    # Line 356
    lh	$a6,0($t0)
    andi	$a1,$t1,0x40
    beqz	$a1,.L0db18934
    addiu	$t0,$t0,2
    # Line 357
    swc1	$f4,0($a3)
    b	.L0db187f0
    addiu	$a3,$a3,4
.L0db188dc:
    # Line 361
    lh	$a6,0($t0)
    andi	$v0,$t1,0x80
    beqz	$v0,.L0db18940
    addiu	$t0,$t0,2
    # Line 362
    swc1	$f4,0($a3)
    b	.L0db187f8
    addiu	$a3,$a3,4
.L0db188f8:
    # Line 333
    swc1	$f5,0($a3)
    b	.L0db187c8
    addiu	$a3,$a3,4
.L0db18904:
    # Line 338
    swc1	$f5,0($a3)
    b	.L0db187d0
    addiu	$a3,$a3,4
.L0db18910:
    # Line 343
    swc1	$f5,0($a3)
    b	.L0db187d8
    addiu	$a3,$a3,4
.L0db1891c:
    # Line 348
    swc1	$f5,0($a3)
    b	.L0db187e0
    addiu	$a3,$a3,4
.L0db18928:
    # Line 353
    swc1	$f5,0($a3)
    b	.L0db187e8
    addiu	$a3,$a3,4
.L0db18934:
    # Line 358
    swc1	$f5,0($a3)
    b	.L0db187f0
    addiu	$a3,$a3,4
.L0db18940:
    # Line 363
    swc1	$f5,0($a3)
    b	.L0db187f8
    addiu	$a3,$a3,4
.L0db1894c:
    beqz	$a7,.L0db189cc
    # Line 368
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db18abc
    # Line 367
    lbu	$t1,0($a2)
.L0db1895c:
    # Line 371
    li	$a2,1
    beq	$a7,$a2,.L0db18d7c
    # Line 374
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db18cf4
.L0db1896c:
    # Line 377
    li	$v1,2
    beq	$a7,$v1,.L0db18d84
    # Line 380
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db18d10
.L0db1897c:
    # Line 383
    li	$a0,3
    beq	$a7,$a0,.L0db18d8c
    # Line 386
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db18d2c
.L0db1898c:
    # Line 389
    li	$a1,4
    beq	$a7,$a1,.L0db18d94
    # Line 392
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db18d48
.L0db1899c:
    # Line 395
    li	$v0,5
    beq	$a7,$v0,.L0db18d9c
    # Line 398
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db18d64
.L0db189ac:
    # Line 401
    li	$v1,6
    beq	$a7,$v1,.L0db18da4
    nop
    # Line 403
    bne	$a6,$a2,.L0db189cc
    andi	$a0,$t1,0x40
    beqz	$a0,.L0db18df8
    # Line 407
    mtc1	$zero,$f0
    # Line 406
    swc1	$f4,0($a3)
.L0db189cc:
    # Line 555
    jr	$ra
    nop
.L0db189d4:
    # Line 407
    la	$v0,sub_0dbf0000
    sltiu	$v1,$t2,8
    sll	$a4,$t2,0x2
    addiu	$v0,$v0,-4192
    beqz	$v1,.L0db18aa8
    addu	$a4,$a4,$v0
    lw	$v1,%lo(jtbl_0dbeef80)($a4)
    jr	$v1
    nop
.L0db189f8:
    # Line 414
    lh	$a6,0($t0)
    andi	$a0,$t1,0x40
    beqz	$a0,.L0db190e4
    addiu	$t0,$t0,2
    # Line 415
    swc1	$f4,0($a3)
    addiu	$a3,$a3,4
.L0db18a10:
    # Line 418
    addiu	$a7,$a7,-1
    beqz	$a7,.L0db18aac
    # Line 465
    slti	$a1,$a7,8
.L0db18a1c:
    # Line 420
    addiu	$a6,$a6,-1
    beqzl	$a6,.L0db1909c
    # Line 421
    lh	$a6,0($t0)
.L0db18a28:
    # Line 425
    addiu	$a7,$a7,-1
    beqz	$a7,.L0db18aac
    # Line 465
    slti	$a1,$a7,8
.L0db18a34:
    # Line 427
    addiu	$a6,$a6,-1
    beqzl	$a6,.L0db19034
    # Line 428
    lh	$a6,0($t0)
.L0db18a40:
    # Line 432
    addiu	$a7,$a7,-1
    beqz	$a7,.L0db18aac
    # Line 465
    slti	$a1,$a7,8
.L0db18a4c:
    # Line 434
    addiu	$a6,$a6,-1
    beqzl	$a6,.L0db18ffc
    # Line 435
    lh	$a6,0($t0)
.L0db18a58:
    # Line 439
    addiu	$a7,$a7,-1
    beqz	$a7,.L0db18aac
    # Line 465
    slti	$a1,$a7,8
.L0db18a64:
    # Line 441
    addiu	$a6,$a6,-1
    beqzl	$a6,.L0db18fcc
    # Line 442
    lh	$a6,0($t0)
.L0db18a70:
    # Line 446
    addiu	$a7,$a7,-1
    beqz	$a7,.L0db18aac
    # Line 465
    slti	$a1,$a7,8
.L0db18a7c:
    # Line 448
    addiu	$a6,$a6,-1
    beqzl	$a6,.L0db18fa4
    # Line 449
    lh	$a6,0($t0)
.L0db18a88:
    # Line 453
    addiu	$a7,$a7,-1
    beqz	$a7,.L0db18aac
    # Line 465
    slti	$a1,$a7,8
.L0db18a94:
    # Line 455
    addiu	$a6,$a6,-1
    beqzl	$a6,.L0db18f8c
    # Line 456
    lh	$a6,0($t0)
.L0db18aa0:
    # Line 461
    addiu	$a2,$a2,1
    # Line 460
    addiu	$a7,$a7,-1
.L0db18aa8:
    # Line 465
    slti	$a1,$a7,8
.L0db18aac:
    bnez	$a1,.L0db18c70
    nop
    b	.L0db18b0c
    mtc1	$zero,$f5
.L0db18abc:
    # Line 369
    lh	$a6,0($t0)
    andi	$v0,$t1,0x1
    beqz	$v0,.L0db18e84
    addiu	$t0,$t0,2
    # Line 370
    swc1	$f4,0($a3)
    b	.L0db1895c
    addiu	$a3,$a3,4
.L0db18ad8:
    # Line 486
    swc1	$f4,0($a3)
    addiu	$a3,$a3,4
.L0db18ae0:
    # Line 489
    addiu	$a6,$a6,-1
.L0db18ae4:
    beqz	$a6,.L0db18bac
.L0db18ae8:
    # Line 494
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db18bc8
.L0db18af0:
    # Line 499
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db18be4
.L0db18af8:
    # Line 504
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db18c00
.L0db18b00:
    # Line 507
    slti	$v1,$a7,8
    bnez	$v1,.L0db18c70
    nop
.L0db18b0c:
    # Line 468
    addiu	$a7,$a7,-8
    # Line 467
    addiu	$a2,$a2,1
    # Line 469
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db18b58
    # Line 466
    lbu	$t1,-1($a2)
.L0db18b20:
    # Line 474
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db18b74
.L0db18b28:
    # Line 479
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db18b90
.L0db18b30:
    # Line 484
    addiu	$a6,$a6,-1
    bnez	$a6,.L0db18ae4
    # Line 489
    addiu	$a6,$a6,-1
    # Line 485
    lh	$a6,0($t0)
    andi	$a0,$t1,0x10
    bnez	$a0,.L0db18ad8
    addiu	$t0,$t0,2
    # Line 487
    swc1	$f5,0($a3)
    b	.L0db18ae0
    addiu	$a3,$a3,4
.L0db18b58:
    # Line 470
    lh	$a6,0($t0)
    andi	$a1,$t1,0x80
    beqz	$a1,.L0db18c1c
    addiu	$t0,$t0,2
    # Line 471
    swc1	$f4,0($a3)
    b	.L0db18b20
    addiu	$a3,$a3,4
.L0db18b74:
    # Line 475
    lh	$a6,0($t0)
    andi	$v0,$t1,0x40
    beqz	$v0,.L0db18c28
    addiu	$t0,$t0,2
    # Line 476
    swc1	$f4,0($a3)
    b	.L0db18b28
    addiu	$a3,$a3,4
.L0db18b90:
    # Line 480
    lh	$a6,0($t0)
    andi	$v1,$t1,0x20
    beqz	$v1,.L0db18c34
    addiu	$t0,$t0,2
    # Line 481
    swc1	$f4,0($a3)
    b	.L0db18b30
    addiu	$a3,$a3,4
.L0db18bac:
    # Line 490
    lh	$a6,0($t0)
    andi	$a0,$t1,0x8
    beqz	$a0,.L0db18c40
    addiu	$t0,$t0,2
    # Line 491
    swc1	$f4,0($a3)
    b	.L0db18ae8
    addiu	$a3,$a3,4
.L0db18bc8:
    # Line 495
    lh	$a6,0($t0)
    andi	$a1,$t1,0x4
    beqz	$a1,.L0db18c4c
    addiu	$t0,$t0,2
    # Line 496
    swc1	$f4,0($a3)
    b	.L0db18af0
    addiu	$a3,$a3,4
.L0db18be4:
    # Line 500
    lh	$a6,0($t0)
    andi	$v0,$t1,0x2
    beqz	$v0,.L0db18c58
    addiu	$t0,$t0,2
    # Line 501
    swc1	$f4,0($a3)
    b	.L0db18af8
    addiu	$a3,$a3,4
.L0db18c00:
    # Line 505
    lh	$a6,0($t0)
    andi	$v1,$t1,0x1
    beqz	$v1,.L0db18c64
    addiu	$t0,$t0,2
    # Line 506
    swc1	$f4,0($a3)
    b	.L0db18b00
    addiu	$a3,$a3,4
.L0db18c1c:
    # Line 472
    swc1	$f5,0($a3)
    b	.L0db18b20
    addiu	$a3,$a3,4
.L0db18c28:
    # Line 477
    swc1	$f5,0($a3)
    b	.L0db18b28
    addiu	$a3,$a3,4
.L0db18c34:
    # Line 482
    swc1	$f5,0($a3)
    b	.L0db18b30
    addiu	$a3,$a3,4
.L0db18c40:
    # Line 492
    swc1	$f5,0($a3)
    b	.L0db18ae8
    addiu	$a3,$a3,4
.L0db18c4c:
    # Line 497
    swc1	$f5,0($a3)
    b	.L0db18af0
    addiu	$a3,$a3,4
.L0db18c58:
    # Line 502
    swc1	$f5,0($a3)
    b	.L0db18af8
    addiu	$a3,$a3,4
.L0db18c64:
    # Line 507
    swc1	$f5,0($a3)
    b	.L0db18b00
    addiu	$a3,$a3,4
.L0db18c70:
    beqz	$a7,.L0db189cc
    # Line 512
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db18e18
    # Line 511
    lbu	$t1,0($a2)
.L0db18c80:
    # Line 515
    li	$a2,1
    beq	$a7,$a2,.L0db18f4c
    # Line 518
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db18e34
.L0db18c90:
    # Line 521
    li	$a0,2
    beq	$a7,$a0,.L0db18f54
    # Line 524
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db18e68
.L0db18ca0:
    # Line 527
    li	$a1,3
    beq	$a7,$a1,.L0db18f5c
    # Line 530
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db18e94
.L0db18cb0:
    # Line 533
    li	$v0,4
    beq	$a7,$v0,.L0db18f74
    # Line 536
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db18ec0
.L0db18cc0:
    # Line 539
    li	$v1,5
    beq	$a7,$v1,.L0db18f7c
    # Line 542
    addiu	$a6,$a6,-1
    beqz	$a6,.L0db18eec
.L0db18cd0:
    # Line 545
    li	$a0,6
    beq	$a7,$a0,.L0db18f84
    nop
    # Line 547
    bne	$a6,$a2,.L0db189cc
    andi	$a1,$t1,0x2
    beqz	$a1,.L0db18ff4
    # Line 551
    mtc1	$zero,$f2
    # Line 555
    jr	$ra
    # Line 550
    swc1	$f4,0($a3)
.L0db18cf4:
    # Line 375
    lh	$a6,0($t0)
    andi	$v0,$t1,0x2
    beqz	$v0,.L0db18eb0
    addiu	$t0,$t0,2
    # Line 376
    swc1	$f4,0($a3)
    b	.L0db1896c
    addiu	$a3,$a3,4
.L0db18d10:
    # Line 381
    lh	$a6,0($t0)
    andi	$v1,$t1,0x4
    beqz	$v1,.L0db18edc
    addiu	$t0,$t0,2
    # Line 382
    swc1	$f4,0($a3)
    b	.L0db1897c
    addiu	$a3,$a3,4
.L0db18d2c:
    # Line 387
    lh	$a6,0($t0)
    andi	$a0,$t1,0x8
    beqz	$a0,.L0db18f04
    addiu	$t0,$t0,2
    # Line 388
    swc1	$f4,0($a3)
    b	.L0db1898c
    addiu	$a3,$a3,4
.L0db18d48:
    # Line 393
    lh	$a6,0($t0)
    andi	$a1,$t1,0x10
    beqz	$a1,.L0db18f2c
    addiu	$t0,$t0,2
    # Line 394
    swc1	$f4,0($a3)
    b	.L0db1899c
    addiu	$a3,$a3,4
.L0db18d64:
    # Line 399
    andi	$a6,$t1,0x20
    beqz	$a6,.L0db18f3c
    lh	$a6,0($t0)
    # Line 400
    swc1	$f4,0($a3)
    b	.L0db189ac
    addiu	$a3,$a3,4
.L0db18d7c:
    # Line 373
    jr	$ra
    nop
.L0db18d84:
    # Line 379
    jr	$ra
    nop
.L0db18d8c:
    # Line 385
    jr	$ra
    nop
.L0db18d94:
    # Line 391
    jr	$ra
    nop
.L0db18d9c:
    # Line 397
    jr	$ra
    nop
.L0db18da4:
    # Line 403
    jr	$ra
    nop
.L0db18dac:
    # Line 312
    lh	$a6,0($t0)
    andi	$v0,$t1,0x80
    beqz	$v0,.L0db18fbc
    addiu	$t0,$t0,2
    # Line 313
    swc1	$f4,0($a3)
    b	.L0db187a0
    addiu	$a3,$a3,4
.L0db18dc8:
    # Line 305
    andi	$v1,$t1,0x40
    beqz	$v1,.L0db18fe4
    addiu	$t0,$t0,2
    # Line 306
    swc1	$f4,0($a3)
    b	.L0db18788
    addiu	$a3,$a3,4
.L0db18de0:
    # Line 298
    andi	$a0,$t1,0x20
    beqz	$a0,.L0db19014
    addiu	$t0,$t0,2
    # Line 299
    swc1	$f4,0($a3)
    b	.L0db18770
    addiu	$a3,$a3,4
.L0db18df8:
    # Line 555
    jr	$ra
    # Line 407
    swc1	$f0,0($a3)
.L0db18e00:
    # Line 291
    andi	$a1,$t1,0x10
    beqz	$a1,.L0db19024
    addiu	$t0,$t0,2
    # Line 292
    swc1	$f4,0($a3)
    b	.L0db18758
    addiu	$a3,$a3,4
.L0db18e18:
    # Line 513
    lh	$a6,0($t0)
    andi	$v0,$t1,0x80
    beqz	$v0,.L0db1904c
    addiu	$t0,$t0,2
    # Line 514
    swc1	$f4,0($a3)
    b	.L0db18c80
    addiu	$a3,$a3,4
.L0db18e34:
    # Line 519
    lh	$a6,0($t0)
    andi	$v1,$t1,0x40
    beqz	$v1,.L0db1905c
    addiu	$t0,$t0,2
    # Line 520
    swc1	$f4,0($a3)
    b	.L0db18c90
    addiu	$a3,$a3,4
.L0db18e50:
    # Line 284
    andi	$a0,$t1,0x8
    beqz	$a0,.L0db1906c
    addiu	$t0,$t0,2
    # Line 285
    swc1	$f4,0($a3)
    b	.L0db18740
    addiu	$a3,$a3,4
.L0db18e68:
    # Line 525
    lh	$a6,0($t0)
    andi	$a1,$t1,0x20
    beqz	$a1,.L0db1907c
    addiu	$t0,$t0,2
    # Line 526
    swc1	$f4,0($a3)
    b	.L0db18ca0
    addiu	$a3,$a3,4
.L0db18e84:
    # Line 371
    mtc1	$zero,$f1
    addiu	$a3,$a3,4
    b	.L0db1895c
    swc1	$f1,-4($a3)
.L0db18e94:
    # Line 531
    lh	$a6,0($t0)
    andi	$v0,$t1,0x10
    beqz	$v0,.L0db1908c
    addiu	$t0,$t0,2
    # Line 532
    swc1	$f4,0($a3)
    b	.L0db18cb0
    addiu	$a3,$a3,4
.L0db18eb0:
    # Line 377
    mtc1	$zero,$f2
    addiu	$a3,$a3,4
    b	.L0db1896c
    swc1	$f2,-4($a3)
.L0db18ec0:
    # Line 537
    lh	$a6,0($t0)
    andi	$v1,$t1,0x8
    beqz	$v1,.L0db190b4
    addiu	$t0,$t0,2
    # Line 538
    swc1	$f4,0($a3)
    b	.L0db18cc0
    addiu	$a3,$a3,4
.L0db18edc:
    # Line 383
    mtc1	$zero,$f3
    addiu	$a3,$a3,4
    b	.L0db1897c
    swc1	$f3,-4($a3)
.L0db18eec:
    # Line 543
    andi	$a0,$t1,0x4
    beqz	$a0,.L0db190c4
    lh	$a6,0($t0)
    # Line 544
    swc1	$f4,0($a3)
    b	.L0db18cd0
    addiu	$a3,$a3,4
.L0db18f04:
    # Line 389
    mtc1	$zero,$f0
    addiu	$a3,$a3,4
    b	.L0db1898c
    swc1	$f0,-4($a3)
.L0db18f14:
    # Line 277
    andi	$a1,$t1,0x4
    beqz	$a1,.L0db190d4
    addiu	$t0,$t0,2
    # Line 278
    swc1	$f4,0($a3)
    b	.L0db18728
    addiu	$a3,$a3,4
.L0db18f2c:
    # Line 395
    mtc1	$zero,$f1
    addiu	$a3,$a3,4
    b	.L0db1899c
    swc1	$f1,-4($a3)
.L0db18f3c:
    # Line 401
    mtc1	$zero,$f2
    addiu	$a3,$a3,4
    b	.L0db189ac
    swc1	$f2,-4($a3)
.L0db18f4c:
    # Line 517
    jr	$ra
    nop
.L0db18f54:
    # Line 523
    jr	$ra
    nop
.L0db18f5c:
    # Line 529
    jr	$ra
    nop
.L0db18f64:
    # Line 272
    mtc1	$zero,$f3
    addiu	$a3,$a3,4
    b	.L0db18710
    swc1	$f3,-4($a3)
.L0db18f74:
    # Line 535
    jr	$ra
    nop
.L0db18f7c:
    # Line 541
    jr	$ra
    nop
.L0db18f84:
    # Line 547
    jr	$ra
    nop
.L0db18f8c:
    # Line 456
    andi	$v0,$t1,0x1
    beqz	$v0,.L0db190f4
    addiu	$t0,$t0,2
    # Line 457
    swc1	$f4,0($a3)
    b	.L0db18aa0
    addiu	$a3,$a3,4
.L0db18fa4:
    # Line 449
    andi	$v1,$t1,0x2
    beqz	$v1,.L0db19104
    addiu	$t0,$t0,2
    # Line 450
    swc1	$f4,0($a3)
    b	.L0db18a88
    addiu	$a3,$a3,4
.L0db18fbc:
    # Line 314
    mtc1	$zero,$f0
    addiu	$a3,$a3,4
    b	.L0db187a0
    swc1	$f0,-4($a3)
.L0db18fcc:
    # Line 442
    andi	$a0,$t1,0x4
    beqz	$a0,.L0db19114
    addiu	$t0,$t0,2
    # Line 443
    swc1	$f4,0($a3)
    b	.L0db18a70
    addiu	$a3,$a3,4
.L0db18fe4:
    # Line 307
    mtc1	$zero,$f1
    addiu	$a3,$a3,4
    b	.L0db18788
    swc1	$f1,-4($a3)
.L0db18ff4:
    # Line 555
    jr	$ra
    # Line 551
    swc1	$f2,0($a3)
.L0db18ffc:
    # Line 435
    andi	$a1,$t1,0x8
    beqz	$a1,.L0db19124
    addiu	$t0,$t0,2
    # Line 436
    swc1	$f4,0($a3)
    b	.L0db18a58
    addiu	$a3,$a3,4
.L0db19014:
    # Line 300
    mtc1	$zero,$f3
    addiu	$a3,$a3,4
    b	.L0db18770
    swc1	$f3,-4($a3)
.L0db19024:
    # Line 293
    mtc1	$zero,$f0
    addiu	$a3,$a3,4
    b	.L0db18758
    swc1	$f0,-4($a3)
.L0db19034:
    # Line 428
    andi	$v0,$t1,0x10
    beqz	$v0,.L0db19134
    addiu	$t0,$t0,2
    # Line 429
    swc1	$f4,0($a3)
    b	.L0db18a40
    addiu	$a3,$a3,4
.L0db1904c:
    # Line 515
    mtc1	$zero,$f1
    addiu	$a3,$a3,4
    b	.L0db18c80
    swc1	$f1,-4($a3)
.L0db1905c:
    # Line 521
    mtc1	$zero,$f2
    addiu	$a3,$a3,4
    b	.L0db18c90
    swc1	$f2,-4($a3)
.L0db1906c:
    # Line 286
    mtc1	$zero,$f3
    addiu	$a3,$a3,4
    b	.L0db18740
    swc1	$f3,-4($a3)
.L0db1907c:
    # Line 527
    mtc1	$zero,$f0
    addiu	$a3,$a3,4
    b	.L0db18ca0
    swc1	$f0,-4($a3)
.L0db1908c:
    # Line 533
    mtc1	$zero,$f1
    addiu	$a3,$a3,4
    b	.L0db18cb0
    swc1	$f1,-4($a3)
.L0db1909c:
    # Line 421
    andi	$v1,$t1,0x20
    beqz	$v1,.L0db19144
    addiu	$t0,$t0,2
    # Line 422
    swc1	$f4,0($a3)
    b	.L0db18a28
    addiu	$a3,$a3,4
.L0db190b4:
    # Line 539
    mtc1	$zero,$f2
    addiu	$a3,$a3,4
    b	.L0db18cc0
    swc1	$f2,-4($a3)
.L0db190c4:
    # Line 545
    mtc1	$zero,$f3
    addiu	$a3,$a3,4
    b	.L0db18cd0
    swc1	$f3,-4($a3)
.L0db190d4:
    # Line 279
    mtc1	$zero,$f0
    addiu	$a3,$a3,4
    b	.L0db18728
    swc1	$f0,-4($a3)
.L0db190e4:
    # Line 416
    mtc1	$zero,$f1
    addiu	$a3,$a3,4
    b	.L0db18a10
    swc1	$f1,-4($a3)
.L0db190f4:
    # Line 458
    mtc1	$zero,$f2
    addiu	$a3,$a3,4
    b	.L0db18aa0
    swc1	$f2,-4($a3)
.L0db19104:
    # Line 451
    mtc1	$zero,$f3
    addiu	$a3,$a3,4
    b	.L0db18a88
    swc1	$f3,-4($a3)
.L0db19114:
    # Line 444
    mtc1	$zero,$f0
    addiu	$a3,$a3,4
    b	.L0db18a70
    swc1	$f0,-4($a3)
.L0db19124:
    # Line 437
    mtc1	$zero,$f1
    addiu	$a3,$a3,4
    b	.L0db18a58
    swc1	$f1,-4($a3)
.L0db19134:
    # Line 430
    mtc1	$zero,$f2
    addiu	$a3,$a3,4
    b	.L0db18a40
    swc1	$f2,-4($a3)
.L0db19144:
    # Line 423
    mtc1	$zero,$f3
    addiu	$a3,$a3,4
    b	.L0db18a28
    swc1	$f3,-4($a3)
.end __glSpanUnpackBitmap

# Function: __glSpanUnpackBitmap2
# Declared: Line 563 (Source lines: 565-743)
# Address: 0x0db19154 - 0x0db19944 (Size: 2032 bytes, Frame: 0)
.globl __glSpanUnpackBitmap2
.ent __glSpanUnpackBitmap2
__glSpanUnpackBitmap2:
    # Line 582
    lw	$a7,180($a1)
    # Line 584
    lbu	$a6,0($a2)
    # Line 580
    lw	$t0,76($a1)
    # Line 584
    lw	$v0,44($a1)
    # Line 565
    lui	$v1,0xe
    addiu	$v1,$v1,21828
    # Line 584
    beqz	$v0,.L0db1948c
    # Line 565
    addu	$at,$t9,$v1
    # Line 584
    la	$v0,sub_0dbf0000
    sll	$a5,$t0,0x2
    sltiu	$v1,$t0,8
    addiu	$v0,$v0,-4160
    beqz	$v1,.L0db19274
    addu	$a5,$a5,$v0
    lw	$v1,%lo(jtbl_0dbeefc0)($a5)
    jr	$v1
    # Line 589
    andi	$a1,$a6,0x2
.L0db19198:
    beqz	$a1,.L0db198cc
    # Line 590
    mtc1	$zero,$f0
    # Line 589
    lwc1	$f0,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f0,-4($a3)
.L0db191ac:
    # Line 591
    addiu	$a7,$a7,-1
    beqz	$a7,.L0db19274
.L0db191b4:
    # Line 592
    andi	$a4,$a6,0x4
    beqz	$a4,.L0db198a8
    # Line 594
    mtc1	$zero,$f3
    # Line 593
    lwc1	$f1,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f1,-4($a3)
.L0db191cc:
    # Line 595
    addiu	$a7,$a7,-1
    beqz	$a7,.L0db19274
.L0db191d4:
    # Line 596
    andi	$v0,$a6,0x8
    beqz	$v0,.L0db19864
    # Line 598
    mtc1	$zero,$f1
    # Line 597
    lwc1	$f2,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f2,-4($a3)
.L0db191ec:
    # Line 599
    addiu	$a7,$a7,-1
    beqz	$a7,.L0db19274
.L0db191f4:
    # Line 600
    andi	$v1,$a6,0x10
    beqz	$v1,.L0db19840
    # Line 602
    mtc1	$zero,$f2
    # Line 601
    lwc1	$f3,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f3,-4($a3)
.L0db1920c:
    # Line 603
    addiu	$a7,$a7,-1
    beqz	$a7,.L0db19274
.L0db19214:
    # Line 604
    andi	$a1,$a6,0x20
    beqz	$a1,.L0db19834
    # Line 606
    mtc1	$zero,$f1
    # Line 605
    lwc1	$f0,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f0,-4($a3)
.L0db1922c:
    # Line 607
    addiu	$a7,$a7,-1
    beqz	$a7,.L0db19274
.L0db19234:
    # Line 608
    andi	$a4,$a6,0x40
    beqz	$a4,.L0db19828
    # Line 610
    mtc1	$zero,$f0
    # Line 609
    lwc1	$f1,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f1,-4($a3)
.L0db1924c:
    # Line 611
    addiu	$a7,$a7,-1
    beqz	$a7,.L0db19274
.L0db19254:
    # Line 612
    andi	$v0,$a6,0x80
    beqz	$v0,.L0db1981c
    # Line 614
    mtc1	$zero,$f3
    # Line 613
    lwc1	$f2,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f2,-4($a3)
.L0db1926c:
    # Line 616
    addiu	$a2,$a2,1
    # Line 615
    addiu	$a7,$a7,-1
.L0db19274:
    # Line 620
    slti	$v1,$a7,8
    bnez	$v1,.L0db193a0
    mtc1	$zero,$f4
    b	.L0db1929c
    # Line 621
    lbu	$a6,0($a2)
.L0db19288:
    # Line 639
    addiu	$a3,$a3,4
.L0db1928c:
    slti	$a1,$a7,8
    bnez	$a1,.L0db193a0
    nop
    # Line 621
    lbu	$a6,0($a2)
.L0db1929c:
    # Line 623
    addiu	$a7,$a7,-8
    andi	$a4,$a6,0x1
    beqz	$a4,.L0db19364
    # Line 622
    addiu	$a2,$a2,1
    # Line 624
    lwc1	$f3,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f3,-4($a3)
.L0db192b8:
    # Line 625
    andi	$v0,$a6,0x2
    beqzl	$v0,.L0db19370
    # Line 627
    swc1	$f4,0($a3)
    # Line 626
    lwc1	$f0,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f0,-4($a3)
.L0db192d0:
    # Line 627
    andi	$v1,$a6,0x4
    beqzl	$v1,.L0db19378
    # Line 629
    swc1	$f4,0($a3)
    # Line 628
    lwc1	$f1,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f1,-4($a3)
.L0db192e8:
    # Line 629
    andi	$a1,$a6,0x8
    beqzl	$a1,.L0db19380
    # Line 631
    swc1	$f4,0($a3)
    # Line 630
    lwc1	$f2,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f2,-4($a3)
.L0db19300:
    # Line 631
    andi	$a4,$a6,0x10
    beqzl	$a4,.L0db19388
    # Line 633
    swc1	$f4,0($a3)
    # Line 632
    lwc1	$f3,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f3,-4($a3)
.L0db19318:
    # Line 633
    andi	$v0,$a6,0x20
    beqzl	$v0,.L0db19390
    # Line 635
    swc1	$f4,0($a3)
    # Line 634
    lwc1	$f0,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f0,-4($a3)
.L0db19330:
    # Line 635
    andi	$v1,$a6,0x40
    beqzl	$v1,.L0db19398
    # Line 637
    swc1	$f4,0($a3)
    # Line 636
    lwc1	$f1,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f1,-4($a3)
.L0db19348:
    # Line 637
    andi	$a1,$a6,0x80
    beqzl	$a1,.L0db19288
    # Line 639
    swc1	$f4,0($a3)
    # Line 638
    lwc1	$f2,3284($a0)
    addiu	$a3,$a3,4
    b	.L0db1928c
    swc1	$f2,-4($a3)
.L0db19364:
    # Line 625
    swc1	$f4,0($a3)
    b	.L0db192b8
    addiu	$a3,$a3,4
.L0db19370:
    b	.L0db192d0
    # Line 627
    addiu	$a3,$a3,4
.L0db19378:
    b	.L0db192e8
    # Line 629
    addiu	$a3,$a3,4
.L0db19380:
    b	.L0db19300
    # Line 631
    addiu	$a3,$a3,4
.L0db19388:
    b	.L0db19318
    # Line 633
    addiu	$a3,$a3,4
.L0db19390:
    b	.L0db19330
    # Line 635
    addiu	$a3,$a3,4
.L0db19398:
    b	.L0db19348
    # Line 637
    addiu	$a3,$a3,4
.L0db193a0:
    # Line 639
    beqz	$a7,.L0db19484
    nop
    # Line 642
    lbu	$a6,0($a2)
    # Line 644
    li	$v0,1
    # Line 642
    andi	$a4,$a6,0x1
    beqz	$a4,.L0db195a0
    # Line 644
    mtc1	$zero,$f1
    # Line 643
    lwc1	$f3,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f3,-4($a3)
.L0db193c8:
    # Line 648
    andi	$a4,$a6,0x4
    # Line 644
    beq	$a7,$v0,.L0db197ec
    # Line 645
    andi	$v1,$a6,0x2
    beqz	$v1,.L0db197a8
    # Line 647
    mtc1	$zero,$f1
    # Line 646
    lwc1	$f0,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f0,-4($a3)
.L0db193e8:
    # Line 647
    li	$a1,2
    beq	$a7,$a1,.L0db197f4
    nop
    # Line 648
    beqz	$a4,.L0db197b4
    # Line 650
    mtc1	$zero,$f2
    # Line 649
    lwc1	$f1,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f1,-4($a3)
.L0db19408:
    # Line 650
    li	$v0,3
    beq	$a7,$v0,.L0db197fc
    # Line 651
    andi	$v1,$a6,0x8
    beqz	$v1,.L0db197c0
    # Line 653
    mtc1	$zero,$f3
    # Line 652
    lwc1	$f2,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f2,-4($a3)
.L0db19428:
    # Line 653
    li	$a1,4
    beq	$a7,$a1,.L0db19804
    # Line 654
    andi	$a4,$a6,0x10
    beqz	$a4,.L0db197cc
    # Line 656
    mtc1	$zero,$f0
    # Line 655
    lwc1	$f3,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f3,-4($a3)
.L0db19448:
    # Line 656
    li	$v0,5
    beq	$a7,$v0,.L0db1980c
    # Line 657
    andi	$v1,$a6,0x20
    beqz	$v1,.L0db197d8
    # Line 659
    mtc1	$zero,$f1
    # Line 658
    lwc1	$f0,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f0,-4($a3)
.L0db19468:
    # Line 659
    li	$a1,6
    beq	$a7,$a1,.L0db19814
    # Line 660
    andi	$a4,$a6,0x40
    beqz	$a4,.L0db197e4
    # Line 662
    mtc1	$zero,$f2
    # Line 661
    lwc1	$f1,3284($a0)
    swc1	$f1,0($a3)
.L0db19484:
    # Line 743
    jr	$ra
    nop
.L0db1948c:
    # Line 662
    la	$v0,sub_0dbf0000
    sltiu	$v1,$t0,8
    sll	$a5,$t0,0x2
    addiu	$v0,$v0,-4128
    beqz	$v1,.L0db1958c
    addu	$a5,$a5,$v0
    lw	$v1,%lo(jtbl_0dbeefc0)($a5)
    jr	$v1
    # Line 667
    andi	$a1,$a6,0x40
.L0db194b0:
    beqz	$a1,.L0db19938
    # Line 668
    mtc1	$zero,$f3
    # Line 667
    lwc1	$f2,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f2,-4($a3)
.L0db194c4:
    # Line 669
    addiu	$a7,$a7,-1
    beqz	$a7,.L0db1958c
.L0db194cc:
    # Line 670
    andi	$a4,$a6,0x20
    beqz	$a4,.L0db1992c
    # Line 672
    mtc1	$zero,$f2
    # Line 671
    lwc1	$f3,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f3,-4($a3)
.L0db194e4:
    # Line 673
    addiu	$a7,$a7,-1
    beqz	$a7,.L0db1958c
.L0db194ec:
    # Line 674
    andi	$v0,$a6,0x10
    beqz	$v0,.L0db19920
    # Line 676
    mtc1	$zero,$f1
    # Line 675
    lwc1	$f0,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f0,-4($a3)
.L0db19504:
    # Line 677
    addiu	$a7,$a7,-1
    beqz	$a7,.L0db1958c
.L0db1950c:
    # Line 678
    andi	$v1,$a6,0x8
    beqz	$v1,.L0db19914
    # Line 680
    mtc1	$zero,$f0
    # Line 679
    lwc1	$f1,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f1,-4($a3)
.L0db19524:
    # Line 681
    addiu	$a7,$a7,-1
    beqz	$a7,.L0db1958c
.L0db1952c:
    # Line 682
    andi	$a1,$a6,0x4
    beqz	$a1,.L0db19908
    # Line 684
    mtc1	$zero,$f3
    # Line 683
    lwc1	$f2,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f2,-4($a3)
.L0db19544:
    # Line 685
    addiu	$a7,$a7,-1
    beqz	$a7,.L0db1958c
.L0db1954c:
    # Line 686
    andi	$a4,$a6,0x2
    beqz	$a4,.L0db198fc
    # Line 688
    mtc1	$zero,$f2
    # Line 687
    lwc1	$f3,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f3,-4($a3)
.L0db19564:
    # Line 689
    addiu	$a7,$a7,-1
    beqz	$a7,.L0db1958c
.L0db1956c:
    # Line 690
    andi	$v0,$a6,0x1
    beqz	$v0,.L0db198f0
    # Line 692
    mtc1	$zero,$f1
    # Line 691
    lwc1	$f0,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f0,-4($a3)
.L0db19584:
    # Line 694
    addiu	$a2,$a2,1
    # Line 693
    addiu	$a7,$a7,-1
.L0db1958c:
    # Line 698
    slti	$v1,$a7,8
    bnez	$v1,.L0db196c4
    nop
    b	.L0db19608
    mtc1	$zero,$f4
.L0db195a0:
    # Line 644
    addiu	$a3,$a3,4
    b	.L0db193c8
    swc1	$f1,-4($a3)
.L0db195ac:
    # Line 710
    addiu	$a3,$a3,4
    swc1	$f2,-4($a3)
.L0db195b4:
    # Line 711
    andi	$a1,$a6,0x4
    beqzl	$a1,.L0db196ac
    # Line 713
    swc1	$f4,0($a3)
    # Line 712
    lwc1	$f3,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f3,-4($a3)
.L0db195cc:
    # Line 713
    andi	$a4,$a6,0x2
    beqzl	$a4,.L0db196b4
    # Line 715
    swc1	$f4,0($a3)
    # Line 714
    lwc1	$f0,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f0,-4($a3)
.L0db195e4:
    # Line 715
    andi	$v0,$a6,0x1
    beqzl	$v0,.L0db196bc
    # Line 717
    swc1	$f4,0($a3)
    # Line 716
    lwc1	$f1,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f1,-4($a3)
.L0db195fc:
    # Line 717
    slti	$v1,$a7,8
    bnez	$v1,.L0db196c4
    nop
.L0db19608:
    # Line 699
    lbu	$a6,0($a2)
    # Line 701
    addiu	$a7,$a7,-8
    andi	$a1,$a6,0x80
    beqz	$a1,.L0db19688
    # Line 700
    addiu	$a2,$a2,1
    # Line 702
    lwc1	$f2,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f2,-4($a3)
.L0db19628:
    # Line 703
    andi	$a4,$a6,0x40
    beqzl	$a4,.L0db19694
    # Line 705
    swc1	$f4,0($a3)
    # Line 704
    lwc1	$f3,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f3,-4($a3)
.L0db19640:
    # Line 705
    andi	$v0,$a6,0x20
    beqzl	$v0,.L0db1969c
    # Line 707
    swc1	$f4,0($a3)
    # Line 706
    lwc1	$f0,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f0,-4($a3)
.L0db19658:
    # Line 707
    andi	$v1,$a6,0x10
    beqzl	$v1,.L0db196a4
    # Line 709
    swc1	$f4,0($a3)
    # Line 708
    lwc1	$f1,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f1,-4($a3)
.L0db19670:
    # Line 709
    andi	$a1,$a6,0x8
    bnezl	$a1,.L0db195ac
    # Line 710
    lwc1	$f2,3284($a0)
    # Line 711
    swc1	$f4,0($a3)
    b	.L0db195b4
    addiu	$a3,$a3,4
.L0db19688:
    # Line 703
    swc1	$f4,0($a3)
    b	.L0db19628
    addiu	$a3,$a3,4
.L0db19694:
    b	.L0db19640
    # Line 705
    addiu	$a3,$a3,4
.L0db1969c:
    b	.L0db19658
    # Line 707
    addiu	$a3,$a3,4
.L0db196a4:
    b	.L0db19670
    # Line 709
    addiu	$a3,$a3,4
.L0db196ac:
    b	.L0db195cc
    # Line 713
    addiu	$a3,$a3,4
.L0db196b4:
    b	.L0db195e4
    # Line 715
    addiu	$a3,$a3,4
.L0db196bc:
    b	.L0db195fc
    # Line 717
    addiu	$a3,$a3,4
.L0db196c4:
    beqz	$a7,.L0db19484
    nop
    # Line 720
    lbu	$a6,0($a2)
    andi	$a4,$a6,0x80
    beqz	$a4,.L0db1984c
    # Line 722
    mtc1	$zero,$f3
    # Line 721
    lwc1	$f2,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f2,-4($a3)
.L0db196e8:
    # Line 722
    li	$v0,1
    beq	$a7,$v0,.L0db198b4
    # Line 723
    andi	$v1,$a6,0x40
    beqz	$v1,.L0db19858
    # Line 725
    mtc1	$zero,$f0
    # Line 724
    lwc1	$f3,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f3,-4($a3)
.L0db19708:
    # Line 725
    li	$a1,2
    beq	$a7,$a1,.L0db198bc
    # Line 726
    andi	$a4,$a6,0x20
    beqz	$a4,.L0db19870
    # Line 728
    mtc1	$zero,$f2
    # Line 727
    lwc1	$f0,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f0,-4($a3)
.L0db19728:
    # Line 728
    li	$v0,3
    beq	$a7,$v0,.L0db198c4
    # Line 729
    andi	$v1,$a6,0x10
    beqz	$v1,.L0db1987c
    # Line 731
    mtc1	$zero,$f3
    # Line 730
    lwc1	$f1,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f1,-4($a3)
.L0db19748:
    # Line 731
    li	$a1,4
    beq	$a7,$a1,.L0db198d8
    # Line 732
    andi	$a4,$a6,0x8
    beqz	$a4,.L0db19888
    # Line 734
    mtc1	$zero,$f0
    # Line 733
    lwc1	$f2,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f2,-4($a3)
.L0db19768:
    # Line 734
    li	$v0,5
    beq	$a7,$v0,.L0db198e0
    # Line 735
    andi	$v1,$a6,0x4
    beqz	$v1,.L0db19894
    # Line 737
    mtc1	$zero,$f1
    # Line 736
    lwc1	$f3,3284($a0)
    addiu	$a3,$a3,4
    swc1	$f3,-4($a3)
.L0db19788:
    # Line 737
    li	$a1,6
    beq	$a7,$a1,.L0db198e8
    # Line 738
    andi	$a4,$a6,0x2
    beqz	$a4,.L0db198a0
    # Line 740
    mtc1	$zero,$f2
    # Line 739
    lwc1	$f0,3284($a0)
    # Line 743
    jr	$ra
    # Line 739
    swc1	$f0,0($a3)
.L0db197a8:
    # Line 647
    addiu	$a3,$a3,4
    b	.L0db193e8
    swc1	$f1,-4($a3)
.L0db197b4:
    # Line 650
    addiu	$a3,$a3,4
    b	.L0db19408
    swc1	$f2,-4($a3)
.L0db197c0:
    # Line 653
    addiu	$a3,$a3,4
    b	.L0db19428
    swc1	$f3,-4($a3)
.L0db197cc:
    # Line 656
    addiu	$a3,$a3,4
    b	.L0db19448
    swc1	$f0,-4($a3)
.L0db197d8:
    # Line 659
    addiu	$a3,$a3,4
    b	.L0db19468
    swc1	$f1,-4($a3)
.L0db197e4:
    # Line 743
    jr	$ra
    # Line 662
    swc1	$f2,0($a3)
.L0db197ec:
    # Line 645
    jr	$ra
    nop
.L0db197f4:
    # Line 648
    jr	$ra
    nop
.L0db197fc:
    # Line 651
    jr	$ra
    nop
.L0db19804:
    # Line 654
    jr	$ra
    nop
.L0db1980c:
    # Line 657
    jr	$ra
    nop
.L0db19814:
    # Line 660
    jr	$ra
    nop
.L0db1981c:
    # Line 614
    addiu	$a3,$a3,4
    b	.L0db1926c
    swc1	$f3,-4($a3)
.L0db19828:
    # Line 610
    addiu	$a3,$a3,4
    b	.L0db1924c
    swc1	$f0,-4($a3)
.L0db19834:
    # Line 606
    addiu	$a3,$a3,4
    b	.L0db1922c
    swc1	$f1,-4($a3)
.L0db19840:
    # Line 602
    addiu	$a3,$a3,4
    b	.L0db1920c
    swc1	$f2,-4($a3)
.L0db1984c:
    # Line 722
    addiu	$a3,$a3,4
    b	.L0db196e8
    swc1	$f3,-4($a3)
.L0db19858:
    # Line 725
    addiu	$a3,$a3,4
    b	.L0db19708
    swc1	$f0,-4($a3)
.L0db19864:
    # Line 598
    addiu	$a3,$a3,4
    b	.L0db191ec
    swc1	$f1,-4($a3)
.L0db19870:
    # Line 728
    addiu	$a3,$a3,4
    b	.L0db19728
    swc1	$f2,-4($a3)
.L0db1987c:
    # Line 731
    addiu	$a3,$a3,4
    b	.L0db19748
    swc1	$f3,-4($a3)
.L0db19888:
    # Line 734
    addiu	$a3,$a3,4
    b	.L0db19768
    swc1	$f0,-4($a3)
.L0db19894:
    # Line 737
    addiu	$a3,$a3,4
    b	.L0db19788
    swc1	$f1,-4($a3)
.L0db198a0:
    # Line 743
    jr	$ra
    # Line 740
    swc1	$f2,0($a3)
.L0db198a8:
    # Line 594
    addiu	$a3,$a3,4
    b	.L0db191cc
    swc1	$f3,-4($a3)
.L0db198b4:
    # Line 723
    jr	$ra
    nop
.L0db198bc:
    # Line 726
    jr	$ra
    nop
.L0db198c4:
    # Line 729
    jr	$ra
    nop
.L0db198cc:
    # Line 590
    addiu	$a3,$a3,4
    b	.L0db191ac
    swc1	$f0,-4($a3)
.L0db198d8:
    # Line 732
    jr	$ra
    nop
.L0db198e0:
    # Line 735
    jr	$ra
    nop
.L0db198e8:
    # Line 738
    jr	$ra
    nop
.L0db198f0:
    # Line 692
    addiu	$a3,$a3,4
    b	.L0db19584
    swc1	$f1,-4($a3)
.L0db198fc:
    # Line 688
    addiu	$a3,$a3,4
    b	.L0db19564
    swc1	$f2,-4($a3)
.L0db19908:
    # Line 684
    addiu	$a3,$a3,4
    b	.L0db19544
    swc1	$f3,-4($a3)
.L0db19914:
    # Line 680
    addiu	$a3,$a3,4
    b	.L0db19524
    swc1	$f0,-4($a3)
.L0db19920:
    # Line 676
    addiu	$a3,$a3,4
    b	.L0db19504
    swc1	$f1,-4($a3)
.L0db1992c:
    # Line 672
    addiu	$a3,$a3,4
    b	.L0db194e4
    swc1	$f2,-4($a3)
.L0db19938:
    # Line 668
    addiu	$a3,$a3,4
    b	.L0db194c4
    swc1	$f3,-4($a3)
.end __glSpanUnpackBitmap2

# Function: __glSpanUnpackRGBubyte
# Declared: Line 752 (Source lines: 765-782)
# Address: 0x0db19944 - 0x0db19a30 (Size: 236 bytes, Frame: 0)
.globl __glSpanUnpackRGBubyte
.ent __glSpanUnpackRGBubyte
__glSpanUnpackRGBubyte:
    # Line 765
    lw	$a5,180($a1)
    # Line 771
    li	$a7,1
    slt	$v0,$a5,$a7
    beqzl	$v0,.L0db19958
    move	$a7,$a5
.L0db19958:
    move	$a6,$zero
    andi	$at,$a7,0x1
    beqz	$at,.L0db1999c
    # Line 769
    lw	$a4,312($a1)
    # Line 773
    lbu	$v1,0($a2)
    sb	$v1,0($a3)
    # Line 774
    lbu	$v0,1($a2)
    sb	$v0,1($a3)
    # Line 775
    lbu	$at,2($a2)
    sb	$at,2($a3)
    # Line 780
    addiu	$a6,$a6,1
    # Line 779
    lh	$a0,0($a4)
    # Line 778
    addiu	$a4,$a4,2
    # Line 776
    addiu	$a3,$a3,3
    # Line 779
    sll	$v1,$a0,0x2
    subu	$v1,$v1,$a0
    addu	$a2,$v1,$a2
.L0db1999c:
    move	$t1,$a6
    move	$t0,$a4
    move	$t2,$a2
    move	$t3,$a3
    sra	$a0,$a7,0x1
    beqz	$a0,.L0db19a28
    move	$a1,$t3
    move	$a4,$t0
    move	$a2,$t1
    move	$a3,$t2
.L0db199c4:
    # Line 773
    lbu	$at,0($a3)
    sb	$at,0($a1)
    # Line 774
    lbu	$a0,1($a3)
    sb	$a0,1($a1)
    # Line 775
    lbu	$v1,2($a3)
    sb	$v1,2($a1)
    # Line 779
    lh	$v0,0($a4)
    sll	$at,$v0,0x2
    subu	$at,$at,$v0
    addu	$at,$at,$a3
    # Line 773
    lbu	$v0,0($at)
    sb	$v0,3($a1)
    # Line 774
    lbu	$a3,1($at)
    sb	$a3,4($a1)
    # Line 775
    lbu	$a0,2($at)
    # Line 778
    addiu	$a4,$a4,4
    # Line 775
    sb	$a0,5($a1)
    # Line 776
    addiu	$a1,$a1,6
    # Line 779
    lh	$v1,-2($a4)
    # Line 780
    addiu	$a2,$a2,2
    slt	$v0,$a2,$a5
    # Line 779
    sll	$a3,$v1,0x2
    subu	$a3,$a3,$v1
    # Line 780
    bnez	$v0,.L0db199c4
    # Line 779
    addu	$a3,$a3,$at
.L0db19a28:
    # Line 782
    jr	$ra
    nop
.end __glSpanUnpackRGBubyte

# Function: __glSpanUnpackIndexUbyte
# Declared: Line 791 (Source lines: 804-819)
# Address: 0x0db19a30 - 0x0db19afc (Size: 204 bytes, Frame: 0)
.globl __glSpanUnpackIndexUbyte
.ent __glSpanUnpackIndexUbyte
__glSpanUnpackIndexUbyte:
    # Line 804
    lw	$a5,180($a1)
    # Line 810
    li	$t0,1
    slt	$at,$a5,$t0
    beqzl	$at,.L0db19a44
    move	$t0,$a5
.L0db19a44:
    move	$a4,$zero
    andi	$a7,$t0,0x3
    beqz	$a7,.L0db19a78
    # Line 808
    lw	$a6,312($a1)
.L0db19a54:
    # Line 812
    lbu	$v1,0($a2)
    # Line 817
    addiu	$a4,$a4,1
    # Line 815
    addiu	$a6,$a6,2
    # Line 812
    sb	$v1,0($a3)
    # Line 813
    addiu	$a3,$a3,1
    # Line 816
    lh	$v0,-2($a6)
    addi	$a7,$a7,-1
    bnez	$a7,.L0db19a54
    addu	$a2,$v0,$a2
.L0db19a78:
    move	$t1,$a4
    move	$t3,$a2
    move	$t2,$a3
    move	$a7,$a6
    sra	$a0,$t0,0x2
    beqz	$a0,.L0db19af4
    move	$a3,$a7
    move	$a1,$t1
    move	$a2,$t2
    move	$a4,$t3
.L0db19aa0:
    # Line 812
    lbu	$a0,0($a4)
    sb	$a0,0($a2)
    # Line 816
    lh	$v1,0($a3)
    addu	$v1,$v1,$a4
    # Line 812
    lbu	$a0,0($v1)
    sb	$a0,1($a2)
    # Line 816
    lh	$v0,2($a3)
    addu	$v0,$v0,$v1
    # Line 812
    lbu	$v1,0($v0)
    sb	$v1,2($a2)
    # Line 816
    lh	$at,4($a3)
    addu	$at,$at,$v0
    # Line 812
    lbu	$v1,0($at)
    # Line 815
    addiu	$a3,$a3,8
    # Line 813
    addiu	$a2,$a2,4
    # Line 812
    sb	$v1,-1($a2)
    # Line 817
    addiu	$a1,$a1,4
    # Line 816
    lh	$a4,-2($a3)
    # Line 817
    slt	$v0,$a1,$a5
    bnez	$v0,.L0db19aa0
    # Line 816
    addu	$a4,$a4,$at
.L0db19af4:
    # Line 819
    jr	$ra
    nop
.end __glSpanUnpackIndexUbyte

# Function: __glSpanUnpackRGBAubyte
# Declared: Line 833 (Source lines: 846-864)
# Address: 0x0db19afc - 0x0db19bf4 (Size: 248 bytes, Frame: 0)
.globl __glSpanUnpackRGBAubyte
.ent __glSpanUnpackRGBAubyte
__glSpanUnpackRGBAubyte:
    # Line 846
    lw	$a5,180($a1)
    # Line 852
    li	$a7,1
    slt	$v0,$a5,$a7
    beqzl	$v0,.L0db19b10
    move	$a7,$a5
.L0db19b10:
    move	$a6,$zero
    andi	$at,$a7,0x1
    beqz	$at,.L0db19b58
    # Line 850
    lw	$a4,312($a1)
    # Line 854
    lbu	$v1,0($a2)
    sb	$v1,0($a3)
    # Line 855
    lbu	$v0,1($a2)
    sb	$v0,1($a3)
    # Line 856
    lbu	$at,2($a2)
    sb	$at,2($a3)
    # Line 857
    lbu	$a0,3($a2)
    sb	$a0,3($a3)
    # Line 862
    addiu	$a6,$a6,1
    # Line 861
    lh	$v1,0($a4)
    # Line 860
    addiu	$a4,$a4,2
    # Line 858
    addiu	$a3,$a3,4
    # Line 861
    sll	$v1,$v1,0x2
    addu	$a2,$v1,$a2
.L0db19b58:
    move	$t1,$a6
    move	$t0,$a4
    move	$t2,$a2
    move	$t3,$a3
    sra	$a0,$a7,0x1
    beqz	$a0,.L0db19bec
    move	$a1,$t3
    move	$a4,$t0
    move	$a2,$t1
    move	$a3,$t2
.L0db19b80:
    # Line 854
    lbu	$at,0($a3)
    sb	$at,0($a1)
    # Line 855
    lbu	$a0,1($a3)
    sb	$a0,1($a1)
    # Line 856
    lbu	$v1,2($a3)
    sb	$v1,2($a1)
    # Line 857
    lbu	$v0,3($a3)
    sb	$v0,3($a1)
    # Line 861
    lh	$at,0($a4)
    sll	$at,$at,0x2
    addu	$at,$at,$a3
    # Line 854
    lbu	$a3,0($at)
    sb	$a3,4($a1)
    # Line 855
    lbu	$a0,1($at)
    sb	$a0,5($a1)
    # Line 856
    lbu	$v1,2($at)
    sb	$v1,6($a1)
    # Line 857
    lbu	$v0,3($at)
    # Line 860
    addiu	$a4,$a4,4
    # Line 857
    sb	$v0,7($a1)
    # Line 858
    addiu	$a1,$a1,8
    # Line 861
    lh	$a3,-2($a4)
    # Line 862
    addiu	$a2,$a2,2
    slt	$v0,$a2,$a5
    # Line 861
    sll	$a3,$a3,0x2
    # Line 862
    bnez	$v0,.L0db19b80
    # Line 861
    addu	$a3,$a3,$at
.L0db19bec:
    # Line 864
    jr	$ra
    nop
.end __glSpanUnpackRGBAubyte

# Function: __glSpanSwapBytes2
# Declared: Line 871 (Source lines: 875-893)
# Address: 0x0db19bf4 - 0x0db19cb8 (Size: 196 bytes, Frame: 0)
.globl __glSpanSwapBytes2
.ent __glSpanSwapBytes2
__glSpanSwapBytes2:
    # Line 879
    lw	$v0,32($a1)
    # Line 875
    lw	$at,180($a1)
    # Line 885
    mult	$at,$v0
    move	$a5,$zero
    mflo	$a4
    blez	$a4,.L0db19cb0
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db19c44
    move	$t1,$a5
.L0db19c1c:
    addiu	$a5,$a5,1
    # Line 891
    addiu	$a2,$a2,2
    # Line 890
    addiu	$a3,$a3,2
    # Line 886
    lbu	$a0,-2($a2)
    addi	$a1,$a1,-1
    # Line 888
    lbu	$v1,-1($a2)
    # Line 889
    sb	$a0,-1($a3)
    bnez	$a1,.L0db19c1c
    # Line 888
    sb	$v1,-2($a3)
    move	$t1,$a5
.L0db19c44:
    move	$t0,$a2
    move	$a7,$a3
    sra	$at,$a6,0x2
    beqz	$at,.L0db19cb0
    move	$a3,$a7
    move	$a1,$t1
    move	$a2,$t0
.L0db19c60:
    lbu	$at,1($a2)
    # Line 886
    lbu	$a0,0($a2)
    # Line 888
    sb	$at,0($a3)
    # Line 889
    sb	$a0,1($a3)
    # Line 888
    lbu	$v1,3($a2)
    # Line 886
    lbu	$v0,2($a2)
    # Line 888
    sb	$v1,2($a3)
    # Line 889
    sb	$v0,3($a3)
    # Line 888
    lbu	$at,5($a2)
    # Line 886
    lbu	$a0,4($a2)
    # Line 891
    addiu	$a2,$a2,8
    # Line 888
    sb	$at,4($a3)
    # Line 889
    sb	$a0,5($a3)
    # Line 890
    addiu	$a3,$a3,8
    # Line 886
    lbu	$v1,-2($a2)
    # Line 885
    addiu	$a1,$a1,4
    # Line 888
    lbu	$v0,-1($a2)
    # Line 889
    sb	$v1,-1($a3)
    # Line 885
    bne	$a4,$a1,.L0db19c60
    # Line 888
    sb	$v0,-2($a3)
.L0db19cb0:
    # Line 893
    jr	$ra
    nop
.end __glSpanSwapBytes2

# Function: __glSpanSwapBytes2Dst
# Declared: Line 901 (Source lines: 905-923)
# Address: 0x0db19cb8 - 0x0db19d7c (Size: 196 bytes, Frame: 0)
.globl __glSpanSwapBytes2Dst
.ent __glSpanSwapBytes2Dst
__glSpanSwapBytes2Dst:
    # Line 909
    lw	$v0,112($a1)
    # Line 905
    lw	$at,180($a1)
    # Line 915
    mult	$at,$v0
    move	$a5,$zero
    mflo	$a4
    blez	$a4,.L0db19d74
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db19d08
    move	$t1,$a5
.L0db19ce0:
    addiu	$a5,$a5,1
    # Line 921
    addiu	$a2,$a2,2
    # Line 920
    addiu	$a3,$a3,2
    # Line 916
    lbu	$a0,-2($a2)
    addi	$a1,$a1,-1
    # Line 918
    lbu	$v1,-1($a2)
    # Line 919
    sb	$a0,-1($a3)
    bnez	$a1,.L0db19ce0
    # Line 918
    sb	$v1,-2($a3)
    move	$t1,$a5
.L0db19d08:
    move	$t0,$a2
    move	$a7,$a3
    sra	$at,$a6,0x2
    beqz	$at,.L0db19d74
    move	$a3,$a7
    move	$a1,$t1
    move	$a2,$t0
.L0db19d24:
    lbu	$at,1($a2)
    # Line 916
    lbu	$a0,0($a2)
    # Line 918
    sb	$at,0($a3)
    # Line 919
    sb	$a0,1($a3)
    # Line 918
    lbu	$v1,3($a2)
    # Line 916
    lbu	$v0,2($a2)
    # Line 918
    sb	$v1,2($a3)
    # Line 919
    sb	$v0,3($a3)
    # Line 918
    lbu	$at,5($a2)
    # Line 916
    lbu	$a0,4($a2)
    # Line 921
    addiu	$a2,$a2,8
    # Line 918
    sb	$at,4($a3)
    # Line 919
    sb	$a0,5($a3)
    # Line 920
    addiu	$a3,$a3,8
    # Line 916
    lbu	$v1,-2($a2)
    # Line 915
    addiu	$a1,$a1,4
    # Line 918
    lbu	$v0,-1($a2)
    # Line 919
    sb	$v1,-1($a3)
    # Line 915
    bne	$a4,$a1,.L0db19d24
    # Line 918
    sb	$v0,-2($a3)
.L0db19d74:
    # Line 923
    jr	$ra
    nop
.end __glSpanSwapBytes2Dst

# Function: __glSpanSwapAndSkipBytes2
# Declared: Line 930 (Source lines: 934-959)
# Address: 0x0db19d7c - 0x0db19e80 (Size: 260 bytes, Frame: 0)
.globl __glSpanSwapAndSkipBytes2
.ent __glSpanSwapAndSkipBytes2
__glSpanSwapAndSkipBytes2:
    # Line 940
    lw	$a6,312($a1)
    # Line 934
    lw	$t3,180($a1)
    # Line 939
    lw	$t8,20($a1)
    # Line 938
    lw	$a5,32($a1)
    # Line 946
    blez	$t3,.L0db19e78
    move	$a7,$zero
    b	.L0db19e5c
    # Line 947
    move	$t0,$a5
.L0db19d9c:
    addiu	$a1,$a1,1
.L0db19da0:
    # Line 953
    addiu	$a2,$a2,2
    # Line 952
    addiu	$a3,$a3,2
    # Line 948
    lbu	$v0,-2($a2)
    addi	$a4,$a4,-1
    # Line 950
    lbu	$at,-1($a2)
    # Line 951
    sb	$v0,-1($a3)
    bnez	$a4,.L0db19d9c
    # Line 950
    sb	$at,-2($a3)
    move	$t1,$a1
.L0db19dc4:
    sra	$v1,$t0,0x2
    move	$t9,$a3
    beqz	$v1,.L0db19e38
    move	$t2,$a2
    move	$a4,$t9
    move	$a2,$t1
    move	$a1,$t2
.L0db19de0:
    lbu	$v1,1($a1)
    # Line 948
    lbu	$v0,0($a1)
    # Line 950
    sb	$v1,0($a4)
    # Line 951
    sb	$v0,1($a4)
    # Line 950
    lbu	$at,3($a1)
    # Line 948
    lbu	$a0,2($a1)
    # Line 950
    sb	$at,2($a4)
    # Line 951
    sb	$a0,3($a4)
    # Line 950
    lbu	$v1,5($a1)
    # Line 948
    lbu	$v0,4($a1)
    # Line 953
    addiu	$a1,$a1,8
    # Line 950
    sb	$v1,4($a4)
    # Line 951
    sb	$v0,5($a4)
    # Line 952
    addiu	$a4,$a4,8
    # Line 948
    lbu	$at,-2($a1)
    # Line 947
    addiu	$a2,$a2,4
    # Line 950
    lbu	$a0,-1($a1)
    # Line 951
    sb	$at,-1($a4)
    # Line 947
    bne	$a5,$a2,.L0db19de0
    # Line 950
    sb	$a0,-2($a4)
    move	$a3,$a4
    move	$a2,$a1
.L0db19e38:
    # Line 946
    addiu	$a7,$a7,1
    # Line 957
    lh	$at,0($a6)
    addiu	$at,$at,-1
    mult	$at,$t8
    # Line 956
    addiu	$a6,$a6,2
    # Line 957
    mflo	$a0
    # Line 946
    beq	$t3,$a7,.L0db19e78
    # Line 957
    addu	$a2,$a0,$a2
    # Line 947
    move	$t0,$a5
.L0db19e5c:
    blez	$a5,.L0db19e38
    move	$a1,$zero
    andi	$a4,$a5,0x3
    beqz	$a4,.L0db19dc4
    move	$t1,$a1
    b	.L0db19da0
    addiu	$a1,$a1,1
.L0db19e78:
    # Line 959
    jr	$ra
    nop
.end __glSpanSwapAndSkipBytes2

# Function: __glSpanSwapBytes4
# Declared: Line 966 (Source lines: 970-992)
# Address: 0x0db19e80 - 0x0db19f94 (Size: 276 bytes, Frame: 0)
.globl __glSpanSwapBytes4
.ent __glSpanSwapBytes4
__glSpanSwapBytes4:
    # Line 974
    lw	$v0,32($a1)
    # Line 970
    lw	$at,180($a1)
    # Line 980
    mult	$at,$v0
    move	$a5,$zero
    mflo	$a4
    blez	$a4,.L0db19f8c
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db19ee0
    move	$t1,$a5
.L0db19ea8:
    addiu	$a5,$a5,1
    # Line 990
    addiu	$a2,$a2,4
    # Line 989
    addiu	$a3,$a3,4
    addi	$a1,$a1,-1
    # Line 981
    lbu	$a0,-2($a2)
    # Line 983
    lbu	$v0,-4($a2)
    # Line 984
    lbu	$at,-3($a2)
    # Line 985
    lbu	$v1,-1($a2)
    # Line 988
    sb	$v0,-1($a3)
    # Line 987
    sb	$at,-2($a3)
    # Line 986
    sb	$a0,-3($a3)
    bnez	$a1,.L0db19ea8
    # Line 985
    sb	$v1,-4($a3)
    move	$t1,$a5
.L0db19ee0:
    move	$t0,$a2
    move	$a7,$a3
    sra	$v1,$a6,0x2
    beqz	$v1,.L0db19f8c
    move	$a3,$a7
    move	$a1,$t1
    move	$a2,$t0
.L0db19efc:
    # Line 981
    lbu	$v0,2($a2)
    # Line 985
    lbu	$v1,3($a2)
    # Line 983
    lbu	$a0,0($a2)
    # Line 984
    lbu	$at,1($a2)
    # Line 985
    sb	$v1,0($a3)
    # Line 986
    sb	$v0,1($a3)
    # Line 987
    sb	$at,2($a3)
    # Line 988
    sb	$a0,3($a3)
    # Line 990
    addiu	$a2,$a2,16
    # Line 981
    lbu	$v0,-10($a2)
    # Line 985
    lbu	$v1,-9($a2)
    # Line 983
    lbu	$a0,-12($a2)
    # Line 984
    lbu	$at,-11($a2)
    # Line 985
    sb	$v1,4($a3)
    # Line 986
    sb	$v0,5($a3)
    # Line 987
    sb	$at,6($a3)
    # Line 988
    sb	$a0,7($a3)
    # Line 989
    addiu	$a3,$a3,16
    # Line 981
    lbu	$v0,-6($a2)
    # Line 985
    lbu	$v1,-5($a2)
    # Line 983
    lbu	$a0,-8($a2)
    # Line 984
    lbu	$at,-7($a2)
    # Line 985
    sb	$v1,-8($a3)
    # Line 986
    sb	$v0,-7($a3)
    # Line 987
    sb	$at,-6($a3)
    # Line 988
    sb	$a0,-5($a3)
    # Line 980
    addiu	$a1,$a1,4
    # Line 981
    lbu	$at,-2($a2)
    # Line 983
    lbu	$v1,-4($a2)
    # Line 984
    lbu	$v0,-3($a2)
    # Line 985
    lbu	$a0,-1($a2)
    # Line 988
    sb	$v1,-1($a3)
    # Line 987
    sb	$v0,-2($a3)
    # Line 986
    sb	$at,-3($a3)
    # Line 980
    bne	$a4,$a1,.L0db19efc
    # Line 985
    sb	$a0,-4($a3)
.L0db19f8c:
    # Line 992
    jr	$ra
    nop
.end __glSpanSwapBytes4

# Function: __glSpanSwapBytes4Dst
# Declared: Line 1000 (Source lines: 1004-1026)
# Address: 0x0db19f94 - 0x0db1a0a8 (Size: 276 bytes, Frame: 0)
.globl __glSpanSwapBytes4Dst
.ent __glSpanSwapBytes4Dst
__glSpanSwapBytes4Dst:
    # Line 1008
    lw	$v0,112($a1)
    # Line 1004
    lw	$at,180($a1)
    # Line 1014
    mult	$at,$v0
    move	$a5,$zero
    mflo	$a4
    blez	$a4,.L0db1a0a0
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db19ff4
    move	$t1,$a5
.L0db19fbc:
    addiu	$a5,$a5,1
    # Line 1024
    addiu	$a2,$a2,4
    # Line 1023
    addiu	$a3,$a3,4
    addi	$a1,$a1,-1
    # Line 1015
    lbu	$a0,-2($a2)
    # Line 1017
    lbu	$v0,-4($a2)
    # Line 1018
    lbu	$at,-3($a2)
    # Line 1019
    lbu	$v1,-1($a2)
    # Line 1022
    sb	$v0,-1($a3)
    # Line 1021
    sb	$at,-2($a3)
    # Line 1020
    sb	$a0,-3($a3)
    bnez	$a1,.L0db19fbc
    # Line 1019
    sb	$v1,-4($a3)
    move	$t1,$a5
.L0db19ff4:
    move	$t0,$a2
    move	$a7,$a3
    sra	$v1,$a6,0x2
    beqz	$v1,.L0db1a0a0
    move	$a3,$a7
    move	$a1,$t1
    move	$a2,$t0
.L0db1a010:
    # Line 1015
    lbu	$v0,2($a2)
    # Line 1019
    lbu	$v1,3($a2)
    # Line 1017
    lbu	$a0,0($a2)
    # Line 1018
    lbu	$at,1($a2)
    # Line 1019
    sb	$v1,0($a3)
    # Line 1020
    sb	$v0,1($a3)
    # Line 1021
    sb	$at,2($a3)
    # Line 1022
    sb	$a0,3($a3)
    # Line 1024
    addiu	$a2,$a2,16
    # Line 1015
    lbu	$v0,-10($a2)
    # Line 1019
    lbu	$v1,-9($a2)
    # Line 1017
    lbu	$a0,-12($a2)
    # Line 1018
    lbu	$at,-11($a2)
    # Line 1019
    sb	$v1,4($a3)
    # Line 1020
    sb	$v0,5($a3)
    # Line 1021
    sb	$at,6($a3)
    # Line 1022
    sb	$a0,7($a3)
    # Line 1023
    addiu	$a3,$a3,16
    # Line 1015
    lbu	$v0,-6($a2)
    # Line 1019
    lbu	$v1,-5($a2)
    # Line 1017
    lbu	$a0,-8($a2)
    # Line 1018
    lbu	$at,-7($a2)
    # Line 1019
    sb	$v1,-8($a3)
    # Line 1020
    sb	$v0,-7($a3)
    # Line 1021
    sb	$at,-6($a3)
    # Line 1022
    sb	$a0,-5($a3)
    # Line 1014
    addiu	$a1,$a1,4
    # Line 1015
    lbu	$at,-2($a2)
    # Line 1017
    lbu	$v1,-4($a2)
    # Line 1018
    lbu	$v0,-3($a2)
    # Line 1019
    lbu	$a0,-1($a2)
    # Line 1022
    sb	$v1,-1($a3)
    # Line 1021
    sb	$v0,-2($a3)
    # Line 1020
    sb	$at,-3($a3)
    # Line 1014
    bne	$a4,$a1,.L0db1a010
    # Line 1019
    sb	$a0,-4($a3)
.L0db1a0a0:
    # Line 1026
    jr	$ra
    nop
.end __glSpanSwapBytes4Dst

# Function: __glSpanSwapAndSkipBytes4
# Declared: Line 1033 (Source lines: 1037-1066)
# Address: 0x0db1a0a8 - 0x0db1a1fc (Size: 340 bytes, Frame: 0)
.globl __glSpanSwapAndSkipBytes4
.ent __glSpanSwapAndSkipBytes4
__glSpanSwapAndSkipBytes4:
    # Line 1043
    lw	$a6,312($a1)
    # Line 1037
    lw	$t3,180($a1)
    # Line 1042
    lw	$t8,20($a1)
    # Line 1041
    lw	$a5,32($a1)
    # Line 1049
    blez	$t3,.L0db1a1f4
    move	$a7,$zero
    b	.L0db1a1d8
    # Line 1050
    move	$t0,$a5
.L0db1a0c8:
    addiu	$a1,$a1,1
.L0db1a0cc:
    # Line 1053
    lbu	$a0,3($a2)
    # Line 1051
    lbu	$v1,2($a2)
    # Line 1060
    addiu	$a2,$a2,4
    # Line 1053
    sb	$a0,0($a3)
    # Line 1054
    sb	$v1,1($a3)
    # Line 1059
    addiu	$a3,$a3,4
    # Line 1055
    lbu	$v0,-4($a2)
    addi	$a4,$a4,-1
    # Line 1057
    lbu	$at,-3($a2)
    # Line 1058
    sb	$v0,-1($a3)
    bnez	$a4,.L0db1a0c8
    # Line 1057
    sb	$at,-2($a3)
    move	$t1,$a1
.L0db1a100:
    sra	$at,$t0,0x2
    move	$t9,$a3
    beqz	$at,.L0db1a1b4
    move	$t2,$a2
    move	$a4,$t9
    move	$a2,$t1
    move	$a1,$t2
.L0db1a11c:
    # Line 1053
    lbu	$at,3($a1)
    # Line 1051
    lbu	$a0,2($a1)
    # Line 1053
    sb	$at,0($a4)
    # Line 1054
    sb	$a0,1($a4)
    # Line 1057
    lbu	$v1,1($a1)
    # Line 1055
    lbu	$v0,0($a1)
    # Line 1057
    sb	$v1,2($a4)
    # Line 1058
    sb	$v0,3($a4)
    # Line 1053
    lbu	$at,7($a1)
    # Line 1051
    lbu	$a0,6($a1)
    # Line 1053
    sb	$at,4($a4)
    # Line 1054
    sb	$a0,5($a4)
    # Line 1057
    lbu	$v1,5($a1)
    # Line 1055
    lbu	$v0,4($a1)
    # Line 1057
    sb	$v1,6($a4)
    # Line 1058
    sb	$v0,7($a4)
    # Line 1053
    lbu	$at,11($a1)
    # Line 1051
    lbu	$a0,10($a1)
    # Line 1053
    sb	$at,8($a4)
    # Line 1054
    sb	$a0,9($a4)
    # Line 1057
    lbu	$v1,9($a1)
    # Line 1055
    lbu	$v0,8($a1)
    # Line 1057
    sb	$v1,10($a4)
    # Line 1058
    sb	$v0,11($a4)
    # Line 1053
    lbu	$at,15($a1)
    # Line 1051
    lbu	$a0,14($a1)
    # Line 1060
    addiu	$a1,$a1,16
    # Line 1053
    sb	$at,12($a4)
    # Line 1054
    sb	$a0,13($a4)
    # Line 1059
    addiu	$a4,$a4,16
    # Line 1055
    lbu	$v1,-4($a1)
    # Line 1050
    addiu	$a2,$a2,4
    # Line 1057
    lbu	$v0,-3($a1)
    # Line 1058
    sb	$v1,-1($a4)
    # Line 1050
    bne	$a5,$a2,.L0db1a11c
    # Line 1057
    sb	$v0,-2($a4)
    move	$a3,$a4
    move	$a2,$a1
.L0db1a1b4:
    # Line 1049
    addiu	$a7,$a7,1
    # Line 1064
    lh	$v1,0($a6)
    addiu	$v1,$v1,-1
    mult	$v1,$t8
    # Line 1063
    addiu	$a6,$a6,2
    # Line 1064
    mflo	$v0
    # Line 1049
    beq	$t3,$a7,.L0db1a1f4
    # Line 1064
    addu	$a2,$v0,$a2
    # Line 1050
    move	$t0,$a5
.L0db1a1d8:
    blez	$a5,.L0db1a1b4
    move	$a1,$zero
    andi	$a4,$a5,0x3
    beqz	$a4,.L0db1a100
    move	$t1,$a1
    b	.L0db1a0cc
    addiu	$a1,$a1,1
.L0db1a1f4:
    # Line 1066
    jr	$ra
    nop
.end __glSpanSwapAndSkipBytes4

# Function: __glSpanSkipPixels1
# Declared: Line 1073 (Source lines: 1077-1096)
# Address: 0x0db1a1fc - 0x0db1a2d8 (Size: 220 bytes, Frame: 0)
.globl __glSpanSkipPixels1
.ent __glSpanSkipPixels1
__glSpanSkipPixels1:
    # Line 1082
    lw	$a6,312($a1)
    # Line 1077
    lw	$t3,180($a1)
    # Line 1081
    lw	$t8,20($a1)
    # Line 1080
    lw	$a5,32($a1)
    # Line 1088
    blez	$t3,.L0db1a2d0
    move	$a7,$zero
    b	.L0db1a2b4
    # Line 1089
    move	$t0,$a5
.L0db1a21c:
    addiu	$a1,$a1,1
.L0db1a220:
    # Line 1090
    addiu	$a3,$a3,1
    addiu	$a2,$a2,1
    lbu	$at,-1($a2)
    addi	$a4,$a4,-1
    bnez	$a4,.L0db1a21c
    sb	$at,-1($a3)
    move	$t1,$a1
.L0db1a23c:
    sra	$v0,$t0,0x2
    move	$t9,$a3
    beqz	$v0,.L0db1a290
    move	$t2,$a2
    move	$a1,$t9
    move	$a2,$t1
    move	$a4,$t2
.L0db1a258:
    lbu	$v0,0($a4)
    sb	$v0,0($a1)
    lbu	$at,1($a4)
    sb	$at,1($a1)
    lbu	$a0,2($a4)
    addiu	$a1,$a1,4
    sb	$a0,-2($a1)
    addiu	$a4,$a4,4
    lbu	$v1,-1($a4)
    # Line 1089
    addiu	$a2,$a2,4
    bne	$a5,$a2,.L0db1a258
    # Line 1090
    sb	$v1,-1($a1)
    move	$a2,$a4
    move	$a3,$a1
.L0db1a290:
    # Line 1088
    addiu	$a7,$a7,1
    # Line 1094
    lh	$a0,0($a6)
    addiu	$a0,$a0,-1
    mult	$a0,$t8
    # Line 1093
    addiu	$a6,$a6,2
    # Line 1094
    mflo	$v1
    # Line 1088
    beq	$t3,$a7,.L0db1a2d0
    # Line 1094
    addu	$a2,$v1,$a2
    # Line 1089
    move	$t0,$a5
.L0db1a2b4:
    blez	$a5,.L0db1a290
    move	$a1,$zero
    andi	$a4,$a5,0x3
    beqz	$a4,.L0db1a23c
    move	$t1,$a1
    b	.L0db1a220
    addiu	$a1,$a1,1
.L0db1a2d0:
    # Line 1096
    jr	$ra
    nop
.end __glSpanSkipPixels1

# Function: __glSpanSkipPixels2
# Declared: Line 1104 (Source lines: 1108-1127)
# Address: 0x0db1a2d8 - 0x0db1a3b4 (Size: 220 bytes, Frame: 0)
.globl __glSpanSkipPixels2
.ent __glSpanSkipPixels2
__glSpanSkipPixels2:
    # Line 1113
    lw	$a6,312($a1)
    # Line 1108
    lw	$t3,180($a1)
    # Line 1112
    lw	$t8,20($a1)
    # Line 1111
    lw	$a5,32($a1)
    # Line 1119
    blez	$t3,.L0db1a3ac
    move	$a7,$zero
    b	.L0db1a390
    # Line 1120
    move	$t0,$a5
.L0db1a2f8:
    addiu	$a1,$a1,1
.L0db1a2fc:
    # Line 1121
    addiu	$a3,$a3,2
    addiu	$a2,$a2,2
    lhu	$at,-2($a2)
    addi	$a4,$a4,-1
    bnez	$a4,.L0db1a2f8
    sh	$at,-2($a3)
    move	$t1,$a1
.L0db1a318:
    sra	$v0,$t0,0x2
    move	$t9,$a3
    beqz	$v0,.L0db1a36c
    move	$t2,$a2
    move	$a1,$t9
    move	$a2,$t1
    move	$a4,$t2
.L0db1a334:
    lhu	$v0,0($a4)
    sh	$v0,0($a1)
    lhu	$at,2($a4)
    sh	$at,2($a1)
    lhu	$a0,4($a4)
    addiu	$a1,$a1,8
    sh	$a0,-4($a1)
    addiu	$a4,$a4,8
    lhu	$v1,-2($a4)
    # Line 1120
    addiu	$a2,$a2,4
    bne	$a5,$a2,.L0db1a334
    # Line 1121
    sh	$v1,-2($a1)
    move	$a2,$a4
    move	$a3,$a1
.L0db1a36c:
    # Line 1119
    addiu	$a7,$a7,1
    # Line 1125
    lh	$a0,0($a6)
    addiu	$a0,$a0,-1
    mult	$a0,$t8
    # Line 1124
    addiu	$a6,$a6,2
    # Line 1125
    mflo	$v1
    # Line 1119
    beq	$t3,$a7,.L0db1a3ac
    # Line 1125
    addu	$a2,$v1,$a2
    # Line 1120
    move	$t0,$a5
.L0db1a390:
    blez	$a5,.L0db1a36c
    move	$a1,$zero
    andi	$a4,$a5,0x3
    beqz	$a4,.L0db1a318
    move	$t1,$a1
    b	.L0db1a2fc
    addiu	$a1,$a1,1
.L0db1a3ac:
    # Line 1127
    jr	$ra
    nop
.end __glSpanSkipPixels2

# Function: __glSpanSkipPixels4
# Declared: Line 1135 (Source lines: 1139-1158)
# Address: 0x0db1a3b4 - 0x0db1a490 (Size: 220 bytes, Frame: 0)
.globl __glSpanSkipPixels4
.ent __glSpanSkipPixels4
__glSpanSkipPixels4:
    # Line 1144
    lw	$a6,312($a1)
    # Line 1139
    lw	$t3,180($a1)
    # Line 1143
    lw	$t8,20($a1)
    # Line 1142
    lw	$a5,32($a1)
    # Line 1150
    blez	$t3,.L0db1a488
    move	$a7,$zero
    b	.L0db1a46c
    # Line 1151
    move	$t0,$a5
.L0db1a3d4:
    addiu	$a1,$a1,1
.L0db1a3d8:
    # Line 1152
    addiu	$a3,$a3,4
    addiu	$a2,$a2,4
    lw	$at,-4($a2)
    addi	$a4,$a4,-1
    bnez	$a4,.L0db1a3d4
    sw	$at,-4($a3)
    move	$t1,$a1
.L0db1a3f4:
    sra	$v0,$t0,0x2
    move	$t9,$a3
    beqz	$v0,.L0db1a448
    move	$t2,$a2
    move	$a1,$t9
    move	$a2,$t1
    move	$a4,$t2
.L0db1a410:
    lw	$v0,0($a4)
    sw	$v0,0($a1)
    lw	$at,4($a4)
    sw	$at,4($a1)
    lw	$a0,8($a4)
    addiu	$a1,$a1,16
    sw	$a0,-8($a1)
    addiu	$a4,$a4,16
    lw	$v1,-4($a4)
    # Line 1151
    addiu	$a2,$a2,4
    bne	$a5,$a2,.L0db1a410
    # Line 1152
    sw	$v1,-4($a1)
    move	$a2,$a4
    move	$a3,$a1
.L0db1a448:
    # Line 1150
    addiu	$a7,$a7,1
    # Line 1156
    lh	$a0,0($a6)
    addiu	$a0,$a0,-1
    mult	$a0,$t8
    # Line 1155
    addiu	$a6,$a6,2
    # Line 1156
    mflo	$v1
    # Line 1150
    beq	$t3,$a7,.L0db1a488
    # Line 1156
    addu	$a2,$v1,$a2
    # Line 1151
    move	$t0,$a5
.L0db1a46c:
    blez	$a5,.L0db1a448
    move	$a1,$zero
    andi	$a4,$a5,0x3
    beqz	$a4,.L0db1a3f4
    move	$t1,$a1
    b	.L0db1a3d8
    addiu	$a1,$a1,1
.L0db1a488:
    # Line 1158
    jr	$ra
    nop
.end __glSpanSkipPixels4

# Function: __glSpanSlowSkipPixels2
# Declared: Line 1166 (Source lines: 1170-1195)
# Address: 0x0db1a490 - 0x0db1a594 (Size: 260 bytes, Frame: 0)
.globl __glSpanSlowSkipPixels2
.ent __glSpanSlowSkipPixels2
__glSpanSlowSkipPixels2:
    # Line 1176
    lw	$a6,312($a1)
    # Line 1170
    lw	$t3,180($a1)
    # Line 1175
    lw	$t8,20($a1)
    # Line 1174
    lw	$a5,32($a1)
    # Line 1182
    blez	$t3,.L0db1a58c
    move	$a7,$zero
    b	.L0db1a570
    # Line 1183
    move	$t0,$a5
.L0db1a4b0:
    addiu	$a1,$a1,1
.L0db1a4b4:
    # Line 1189
    addiu	$a2,$a2,2
    # Line 1188
    addiu	$a3,$a3,2
    # Line 1185
    lbu	$v0,-1($a2)
    addi	$a4,$a4,-1
    # Line 1186
    lbu	$at,-2($a2)
    # Line 1187
    sb	$v0,-1($a3)
    bnez	$a4,.L0db1a4b0
    # Line 1186
    sb	$at,-2($a3)
    move	$t1,$a1
.L0db1a4d8:
    sra	$v1,$t0,0x2
    move	$t9,$a3
    beqz	$v1,.L0db1a54c
    move	$t2,$a2
    move	$a4,$t9
    move	$a2,$t1
    move	$a1,$t2
.L0db1a4f4:
    lbu	$v1,0($a1)
    # Line 1185
    lbu	$v0,1($a1)
    # Line 1186
    sb	$v1,0($a4)
    # Line 1187
    sb	$v0,1($a4)
    # Line 1186
    lbu	$at,2($a1)
    # Line 1185
    lbu	$a0,3($a1)
    # Line 1186
    sb	$at,2($a4)
    # Line 1187
    sb	$a0,3($a4)
    # Line 1186
    lbu	$v1,4($a1)
    # Line 1185
    lbu	$v0,5($a1)
    # Line 1189
    addiu	$a1,$a1,8
    # Line 1186
    sb	$v1,4($a4)
    # Line 1187
    sb	$v0,5($a4)
    # Line 1188
    addiu	$a4,$a4,8
    # Line 1185
    lbu	$at,-1($a1)
    # Line 1183
    addiu	$a2,$a2,4
    # Line 1186
    lbu	$a0,-2($a1)
    # Line 1187
    sb	$at,-1($a4)
    # Line 1183
    bne	$a5,$a2,.L0db1a4f4
    # Line 1186
    sb	$a0,-2($a4)
    move	$a3,$a4
    move	$a2,$a1
.L0db1a54c:
    # Line 1182
    addiu	$a7,$a7,1
    # Line 1193
    lh	$at,0($a6)
    addiu	$at,$at,-1
    mult	$at,$t8
    # Line 1192
    addiu	$a6,$a6,2
    # Line 1193
    mflo	$a0
    # Line 1182
    beq	$t3,$a7,.L0db1a58c
    # Line 1193
    addu	$a2,$a0,$a2
    # Line 1183
    move	$t0,$a5
.L0db1a570:
    blez	$a5,.L0db1a54c
    move	$a1,$zero
    andi	$a4,$a5,0x3
    beqz	$a4,.L0db1a4d8
    move	$t1,$a1
    b	.L0db1a4b4
    addiu	$a1,$a1,1
.L0db1a58c:
    # Line 1195
    jr	$ra
    nop
.end __glSpanSlowSkipPixels2

# Function: __glSpanSlowSkipPixels4
# Declared: Line 1203 (Source lines: 1207-1236)
# Address: 0x0db1a594 - 0x0db1a6e8 (Size: 340 bytes, Frame: 0)
.globl __glSpanSlowSkipPixels4
.ent __glSpanSlowSkipPixels4
__glSpanSlowSkipPixels4:
    # Line 1213
    lw	$a6,312($a1)
    # Line 1207
    lw	$t3,180($a1)
    # Line 1212
    lw	$t8,20($a1)
    # Line 1211
    lw	$a5,32($a1)
    # Line 1219
    blez	$t3,.L0db1a6e0
    move	$a7,$zero
    b	.L0db1a6c4
    # Line 1220
    move	$t0,$a5
.L0db1a5b4:
    addiu	$a1,$a1,1
.L0db1a5b8:
    # Line 1230
    addiu	$a2,$a2,4
    # Line 1229
    addiu	$a3,$a3,4
    addi	$a4,$a4,-1
    # Line 1222
    lbu	$v0,-3($a2)
    # Line 1224
    lbu	$a0,-1($a2)
    # Line 1223
    lbu	$v1,-2($a2)
    # Line 1225
    lbu	$at,-4($a2)
    # Line 1228
    sb	$a0,-1($a3)
    # Line 1227
    sb	$v1,-2($a3)
    # Line 1226
    sb	$v0,-3($a3)
    bnez	$a4,.L0db1a5b4
    # Line 1225
    sb	$at,-4($a3)
    move	$t1,$a1
.L0db1a5ec:
    sra	$at,$t0,0x2
    move	$t9,$a3
    beqz	$at,.L0db1a6a0
    move	$t2,$a2
    move	$a4,$t9
    move	$a2,$t1
    move	$a1,$t2
.L0db1a608:
    # Line 1222
    lbu	$a0,1($a1)
    # Line 1225
    lbu	$at,0($a1)
    # Line 1223
    lbu	$v1,2($a1)
    # Line 1224
    lbu	$v0,3($a1)
    # Line 1225
    sb	$at,0($a4)
    # Line 1226
    sb	$a0,1($a4)
    # Line 1227
    sb	$v1,2($a4)
    # Line 1228
    sb	$v0,3($a4)
    # Line 1230
    addiu	$a1,$a1,16
    # Line 1222
    lbu	$a0,-11($a1)
    # Line 1225
    lbu	$at,-12($a1)
    # Line 1223
    lbu	$v1,-10($a1)
    # Line 1224
    lbu	$v0,-9($a1)
    # Line 1225
    sb	$at,4($a4)
    # Line 1226
    sb	$a0,5($a4)
    # Line 1227
    sb	$v1,6($a4)
    # Line 1228
    sb	$v0,7($a4)
    # Line 1229
    addiu	$a4,$a4,16
    # Line 1222
    lbu	$a0,-7($a1)
    # Line 1225
    lbu	$at,-8($a1)
    # Line 1223
    lbu	$v1,-6($a1)
    # Line 1224
    lbu	$v0,-5($a1)
    # Line 1225
    sb	$at,-8($a4)
    # Line 1226
    sb	$a0,-7($a4)
    # Line 1227
    sb	$v1,-6($a4)
    # Line 1228
    sb	$v0,-5($a4)
    # Line 1220
    addiu	$a2,$a2,4
    # Line 1222
    lbu	$v1,-3($a1)
    # Line 1224
    lbu	$at,-1($a1)
    # Line 1223
    lbu	$a0,-2($a1)
    # Line 1225
    lbu	$v0,-4($a1)
    # Line 1228
    sb	$at,-1($a4)
    # Line 1227
    sb	$a0,-2($a4)
    # Line 1226
    sb	$v1,-3($a4)
    # Line 1220
    bne	$a5,$a2,.L0db1a608
    # Line 1225
    sb	$v0,-4($a4)
    move	$a3,$a4
    move	$a2,$a1
.L0db1a6a0:
    # Line 1219
    addiu	$a7,$a7,1
    # Line 1234
    lh	$v1,0($a6)
    addiu	$v1,$v1,-1
    mult	$v1,$t8
    # Line 1233
    addiu	$a6,$a6,2
    # Line 1234
    mflo	$v0
    # Line 1219
    beq	$t3,$a7,.L0db1a6e0
    # Line 1234
    addu	$a2,$v0,$a2
    # Line 1220
    move	$t0,$a5
.L0db1a6c4:
    blez	$a5,.L0db1a6a0
    move	$a1,$zero
    andi	$a4,$a5,0x3
    beqz	$a4,.L0db1a5ec
    move	$t1,$a1
    b	.L0db1a5b8
    addiu	$a1,$a1,1
.L0db1a6e0:
    # Line 1236
    jr	$ra
    nop
.end __glSpanSlowSkipPixels4

# Function: __glSpanAlignPixels2
# Declared: Line 1243 (Source lines: 1247-1266)
# Address: 0x0db1a6e8 - 0x0db1a7ac (Size: 196 bytes, Frame: 0)
.globl __glSpanAlignPixels2
.ent __glSpanAlignPixels2
__glSpanAlignPixels2:
    # Line 1251
    lw	$v0,32($a1)
    # Line 1247
    lw	$at,180($a1)
    # Line 1258
    mult	$at,$v0
    move	$a5,$zero
    mflo	$a4
    blez	$a4,.L0db1a7a4
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db1a738
    move	$t1,$a5
.L0db1a710:
    addiu	$a5,$a5,1
    # Line 1264
    addiu	$a2,$a2,2
    # Line 1263
    addiu	$a3,$a3,2
    # Line 1260
    lbu	$a0,-1($a2)
    addi	$a1,$a1,-1
    # Line 1261
    lbu	$v1,-2($a2)
    # Line 1262
    sb	$a0,-1($a3)
    bnez	$a1,.L0db1a710
    # Line 1261
    sb	$v1,-2($a3)
    move	$t1,$a5
.L0db1a738:
    move	$t0,$a2
    move	$a7,$a3
    sra	$at,$a6,0x2
    beqz	$at,.L0db1a7a4
    move	$a3,$a7
    move	$a1,$t1
    move	$a2,$t0
.L0db1a754:
    lbu	$at,0($a2)
    # Line 1260
    lbu	$a0,1($a2)
    # Line 1261
    sb	$at,0($a3)
    # Line 1262
    sb	$a0,1($a3)
    # Line 1261
    lbu	$v1,2($a2)
    # Line 1260
    lbu	$v0,3($a2)
    # Line 1261
    sb	$v1,2($a3)
    # Line 1262
    sb	$v0,3($a3)
    # Line 1261
    lbu	$at,4($a2)
    # Line 1260
    lbu	$a0,5($a2)
    # Line 1264
    addiu	$a2,$a2,8
    # Line 1261
    sb	$at,4($a3)
    # Line 1262
    sb	$a0,5($a3)
    # Line 1263
    addiu	$a3,$a3,8
    # Line 1260
    lbu	$v1,-1($a2)
    # Line 1258
    addiu	$a1,$a1,4
    # Line 1261
    lbu	$v0,-2($a2)
    # Line 1262
    sb	$v1,-1($a3)
    # Line 1258
    bne	$a4,$a1,.L0db1a754
    # Line 1261
    sb	$v0,-2($a3)
.L0db1a7a4:
    # Line 1266
    jr	$ra
    nop
.end __glSpanAlignPixels2

# Function: __glSpanAlignPixels2Dst
# Declared: Line 1274 (Source lines: 1278-1297)
# Address: 0x0db1a7ac - 0x0db1a870 (Size: 196 bytes, Frame: 0)
.globl __glSpanAlignPixels2Dst
.ent __glSpanAlignPixels2Dst
__glSpanAlignPixels2Dst:
    # Line 1282
    lw	$v0,112($a1)
    # Line 1278
    lw	$at,180($a1)
    # Line 1289
    mult	$at,$v0
    move	$a5,$zero
    mflo	$a4
    blez	$a4,.L0db1a868
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db1a7fc
    move	$t1,$a5
.L0db1a7d4:
    addiu	$a5,$a5,1
    # Line 1295
    addiu	$a2,$a2,2
    # Line 1294
    addiu	$a3,$a3,2
    # Line 1291
    lbu	$a0,-1($a2)
    addi	$a1,$a1,-1
    # Line 1292
    lbu	$v1,-2($a2)
    # Line 1293
    sb	$a0,-1($a3)
    bnez	$a1,.L0db1a7d4
    # Line 1292
    sb	$v1,-2($a3)
    move	$t1,$a5
.L0db1a7fc:
    move	$t0,$a2
    move	$a7,$a3
    sra	$at,$a6,0x2
    beqz	$at,.L0db1a868
    move	$a3,$a7
    move	$a1,$t1
    move	$a2,$t0
.L0db1a818:
    lbu	$at,0($a2)
    # Line 1291
    lbu	$a0,1($a2)
    # Line 1292
    sb	$at,0($a3)
    # Line 1293
    sb	$a0,1($a3)
    # Line 1292
    lbu	$v1,2($a2)
    # Line 1291
    lbu	$v0,3($a2)
    # Line 1292
    sb	$v1,2($a3)
    # Line 1293
    sb	$v0,3($a3)
    # Line 1292
    lbu	$at,4($a2)
    # Line 1291
    lbu	$a0,5($a2)
    # Line 1295
    addiu	$a2,$a2,8
    # Line 1292
    sb	$at,4($a3)
    # Line 1293
    sb	$a0,5($a3)
    # Line 1294
    addiu	$a3,$a3,8
    # Line 1291
    lbu	$v1,-1($a2)
    # Line 1289
    addiu	$a1,$a1,4
    # Line 1292
    lbu	$v0,-2($a2)
    # Line 1293
    sb	$v1,-1($a3)
    # Line 1289
    bne	$a4,$a1,.L0db1a818
    # Line 1292
    sb	$v0,-2($a3)
.L0db1a868:
    # Line 1297
    jr	$ra
    nop
.end __glSpanAlignPixels2Dst

# Function: __glSpanAlignPixels4
# Declared: Line 1304 (Source lines: 1308-1331)
# Address: 0x0db1a870 - 0x0db1a984 (Size: 276 bytes, Frame: 0)
.globl __glSpanAlignPixels4
.ent __glSpanAlignPixels4
__glSpanAlignPixels4:
    # Line 1312
    lw	$v0,32($a1)
    # Line 1308
    lw	$at,180($a1)
    # Line 1319
    mult	$at,$v0
    move	$a5,$zero
    mflo	$a4
    blez	$a4,.L0db1a97c
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db1a8d0
    move	$t1,$a5
.L0db1a898:
    addiu	$a5,$a5,1
    # Line 1329
    addiu	$a2,$a2,4
    # Line 1328
    addiu	$a3,$a3,4
    addi	$a1,$a1,-1
    # Line 1321
    lbu	$a0,-3($a2)
    # Line 1323
    lbu	$v0,-1($a2)
    # Line 1322
    lbu	$at,-2($a2)
    # Line 1324
    lbu	$v1,-4($a2)
    # Line 1327
    sb	$v0,-1($a3)
    # Line 1326
    sb	$at,-2($a3)
    # Line 1325
    sb	$a0,-3($a3)
    bnez	$a1,.L0db1a898
    # Line 1324
    sb	$v1,-4($a3)
    move	$t1,$a5
.L0db1a8d0:
    move	$t0,$a2
    move	$a7,$a3
    sra	$v1,$a6,0x2
    beqz	$v1,.L0db1a97c
    move	$a3,$a7
    move	$a1,$t1
    move	$a2,$t0
.L0db1a8ec:
    # Line 1321
    lbu	$v0,1($a2)
    # Line 1324
    lbu	$v1,0($a2)
    # Line 1322
    lbu	$at,2($a2)
    # Line 1323
    lbu	$a0,3($a2)
    # Line 1324
    sb	$v1,0($a3)
    # Line 1325
    sb	$v0,1($a3)
    # Line 1326
    sb	$at,2($a3)
    # Line 1327
    sb	$a0,3($a3)
    # Line 1329
    addiu	$a2,$a2,16
    # Line 1321
    lbu	$v0,-11($a2)
    # Line 1324
    lbu	$v1,-12($a2)
    # Line 1322
    lbu	$at,-10($a2)
    # Line 1323
    lbu	$a0,-9($a2)
    # Line 1324
    sb	$v1,4($a3)
    # Line 1325
    sb	$v0,5($a3)
    # Line 1326
    sb	$at,6($a3)
    # Line 1327
    sb	$a0,7($a3)
    # Line 1328
    addiu	$a3,$a3,16
    # Line 1321
    lbu	$v0,-7($a2)
    # Line 1324
    lbu	$v1,-8($a2)
    # Line 1322
    lbu	$at,-6($a2)
    # Line 1323
    lbu	$a0,-5($a2)
    # Line 1324
    sb	$v1,-8($a3)
    # Line 1325
    sb	$v0,-7($a3)
    # Line 1326
    sb	$at,-6($a3)
    # Line 1327
    sb	$a0,-5($a3)
    # Line 1319
    addiu	$a1,$a1,4
    # Line 1321
    lbu	$at,-3($a2)
    # Line 1323
    lbu	$v1,-1($a2)
    # Line 1322
    lbu	$v0,-2($a2)
    # Line 1324
    lbu	$a0,-4($a2)
    # Line 1327
    sb	$v1,-1($a3)
    # Line 1326
    sb	$v0,-2($a3)
    # Line 1325
    sb	$at,-3($a3)
    # Line 1319
    bne	$a4,$a1,.L0db1a8ec
    # Line 1324
    sb	$a0,-4($a3)
.L0db1a97c:
    # Line 1331
    jr	$ra
    nop
.end __glSpanAlignPixels4

# Function: __glSpanAlignPixels4Dst
# Declared: Line 1339 (Source lines: 1343-1366)
# Address: 0x0db1a984 - 0x0db1aa98 (Size: 276 bytes, Frame: 0)
.globl __glSpanAlignPixels4Dst
.ent __glSpanAlignPixels4Dst
__glSpanAlignPixels4Dst:
    # Line 1347
    lw	$v0,112($a1)
    # Line 1343
    lw	$at,180($a1)
    # Line 1354
    mult	$at,$v0
    move	$a5,$zero
    mflo	$a4
    blez	$a4,.L0db1aa90
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db1a9e4
    move	$t1,$a5
.L0db1a9ac:
    addiu	$a5,$a5,1
    # Line 1364
    addiu	$a2,$a2,4
    # Line 1363
    addiu	$a3,$a3,4
    addi	$a1,$a1,-1
    # Line 1356
    lbu	$a0,-3($a2)
    # Line 1358
    lbu	$v0,-1($a2)
    # Line 1357
    lbu	$at,-2($a2)
    # Line 1359
    lbu	$v1,-4($a2)
    # Line 1362
    sb	$v0,-1($a3)
    # Line 1361
    sb	$at,-2($a3)
    # Line 1360
    sb	$a0,-3($a3)
    bnez	$a1,.L0db1a9ac
    # Line 1359
    sb	$v1,-4($a3)
    move	$t1,$a5
.L0db1a9e4:
    move	$t0,$a2
    move	$a7,$a3
    sra	$v1,$a6,0x2
    beqz	$v1,.L0db1aa90
    move	$a3,$a7
    move	$a1,$t1
    move	$a2,$t0
.L0db1aa00:
    # Line 1356
    lbu	$v0,1($a2)
    # Line 1359
    lbu	$v1,0($a2)
    # Line 1357
    lbu	$at,2($a2)
    # Line 1358
    lbu	$a0,3($a2)
    # Line 1359
    sb	$v1,0($a3)
    # Line 1360
    sb	$v0,1($a3)
    # Line 1361
    sb	$at,2($a3)
    # Line 1362
    sb	$a0,3($a3)
    # Line 1364
    addiu	$a2,$a2,16
    # Line 1356
    lbu	$v0,-11($a2)
    # Line 1359
    lbu	$v1,-12($a2)
    # Line 1357
    lbu	$at,-10($a2)
    # Line 1358
    lbu	$a0,-9($a2)
    # Line 1359
    sb	$v1,4($a3)
    # Line 1360
    sb	$v0,5($a3)
    # Line 1361
    sb	$at,6($a3)
    # Line 1362
    sb	$a0,7($a3)
    # Line 1363
    addiu	$a3,$a3,16
    # Line 1356
    lbu	$v0,-7($a2)
    # Line 1359
    lbu	$v1,-8($a2)
    # Line 1357
    lbu	$at,-6($a2)
    # Line 1358
    lbu	$a0,-5($a2)
    # Line 1359
    sb	$v1,-8($a3)
    # Line 1360
    sb	$v0,-7($a3)
    # Line 1361
    sb	$at,-6($a3)
    # Line 1362
    sb	$a0,-5($a3)
    # Line 1354
    addiu	$a1,$a1,4
    # Line 1356
    lbu	$at,-3($a2)
    # Line 1358
    lbu	$v1,-1($a2)
    # Line 1357
    lbu	$v0,-2($a2)
    # Line 1359
    lbu	$a0,-4($a2)
    # Line 1362
    sb	$v1,-1($a3)
    # Line 1361
    sb	$v0,-2($a3)
    # Line 1360
    sb	$at,-3($a3)
    # Line 1354
    bne	$a4,$a1,.L0db1aa00
    # Line 1359
    sb	$a0,-4($a3)
.L0db1aa90:
    # Line 1366
    jr	$ra
    nop
.end __glSpanAlignPixels4Dst

# Function: __glSpanUnpackUbyte
# Declared: Line 1373 (Source lines: 1377-1389)
# Address: 0x0db1aa98 - 0x0db1ab70 (Size: 216 bytes, Frame: 0)
.globl __glSpanUnpackUbyte
.ent __glSpanUnpackUbyte
__glSpanUnpackUbyte:
    # Line 1380
    lw	$v0,28($a1)
    # Line 1377
    lw	$at,180($a1)
    # Line 1386
    mult	$at,$v0
    move	$a6,$zero
    mflo	$a5
    blez	$a5,.L0db1ab68
    move	$a7,$a5
    andi	$a4,$a5,0x3
    beqz	$a4,.L0db1aaec
    move	$t0,$a6
.L0db1aac0:
    addiu	$a6,$a6,1
    # Line 1387
    lbu	$v1,0($a2)
    addiu	$a3,$a3,4
    addiu	$a2,$a2,1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    lwc1	$f0,3528($v1)
    addi	$a4,$a4,-1
    bnez	$a4,.L0db1aac0
    swc1	$f0,-4($a3)
    move	$t0,$a6
.L0db1aaec:
    move	$t2,$a2
    move	$t1,$a3
    sra	$a1,$a7,0x2
    beqz	$a1,.L0db1ab68
    move	$a4,$t1
    move	$a3,$t0
    move	$a2,$t2
.L0db1ab08:
    lbu	$a1,0($a2)
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a0
    lwc1	$f0,3528($a1)
    swc1	$f0,0($a4)
    lbu	$v1,1($a2)
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    lwc1	$f3,3528($v1)
    swc1	$f3,4($a4)
    lbu	$v0,2($a2)
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    lwc1	$f2,3528($v0)
    swc1	$f2,8($a4)
    lbu	$at,3($a2)
    addiu	$a4,$a4,16
    addiu	$a2,$a2,4
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    lwc1	$f1,3528($at)
    # Line 1386
    addiu	$a3,$a3,4
    bne	$a5,$a3,.L0db1ab08
    # Line 1387
    swc1	$f1,-4($a4)
.L0db1ab68:
    # Line 1389
    jr	$ra
    nop
.end __glSpanUnpackUbyte

# Function: __glSpanUnpackByte
# Declared: Line 1396 (Source lines: 1400-1412)
# Address: 0x0db1ab70 - 0x0db1ac98 (Size: 296 bytes, Frame: 0)
.globl __glSpanUnpackByte
.ent __glSpanUnpackByte
__glSpanUnpackByte:
    # Line 1403
    lw	$v0,28($a1)
    # Line 1400
    lw	$at,180($a1)
    # Line 1409
    mult	$at,$v0
    move	$a6,$zero
    mflo	$a5
    blez	$a5,.L0db1ac90
    move	$a7,$a5
    andi	$a4,$a5,0x3
    beqz	$a4,.L0db1abd4
    move	$t0,$a6
.L0db1ab98:
    # Line 1410
    lb	$v1,0($a2)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3292($a0)
    mul.s	$f0,$f0,$f1
    # Line 1409
    addiu	$a6,$a6,1
    # Line 1410
    addiu	$a3,$a3,4
    addiu	$a2,$a2,1
    addi	$a4,$a4,-1
    bnez	$a4,.L0db1ab98
    swc1	$f0,-4($a3)
    move	$t0,$a6
.L0db1abd4:
    move	$t2,$a2
    move	$t1,$a3
    sra	$a1,$a7,0x2
    beqz	$a1,.L0db1ac90
    move	$a4,$t1
    move	$a3,$t0
    move	$a2,$t2
.L0db1abf0:
    lb	$a1,0($a2)
    sll	$a1,$a1,0x1
    addiu	$a1,$a1,1
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3292($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($a4)
    lb	$v1,1($a2)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,3292($a0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a4)
    lb	$v0,2($a2)
    sll	$v0,$v0,0x1
    addiu	$v0,$v0,1
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3292($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,8($a4)
    lb	$at,3($a2)
    sll	$at,$at,0x1
    addiu	$at,$at,1
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,3292($a0)
    mul.s	$f2,$f2,$f3
    addiu	$a4,$a4,16
    addiu	$a2,$a2,4
    # Line 1409
    addiu	$a3,$a3,4
    bne	$a5,$a3,.L0db1abf0
    # Line 1410
    swc1	$f2,-4($a4)
.L0db1ac90:
    # Line 1412
    jr	$ra
    nop
.end __glSpanUnpackByte

# Function: __glSpanUnpackUshort
# Declared: Line 1419 (Source lines: 1423-1435)
# Address: 0x0db1ac98 - 0x0db1ad98 (Size: 256 bytes, Frame: 0)
.globl __glSpanUnpackUshort
.ent __glSpanUnpackUshort
__glSpanUnpackUshort:
    # Line 1426
    lw	$v0,28($a1)
    # Line 1423
    lw	$at,180($a1)
    # Line 1432
    mult	$at,$v0
    move	$a6,$zero
    mflo	$a5
    blez	$a5,.L0db1ad90
    move	$a7,$a5
    andi	$a4,$a5,0x3
    beqz	$a4,.L0db1acf4
    move	$t0,$a6
.L0db1acc0:
    # Line 1433
    lhu	$v1,0($a2)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3300($a0)
    mul.s	$f0,$f0,$f1
    # Line 1432
    addiu	$a6,$a6,1
    # Line 1433
    addiu	$a3,$a3,4
    addiu	$a2,$a2,2
    addi	$a4,$a4,-1
    bnez	$a4,.L0db1acc0
    swc1	$f0,-4($a3)
    move	$t0,$a6
.L0db1acf4:
    move	$t2,$a2
    move	$t1,$a3
    sra	$a1,$a7,0x2
    beqz	$a1,.L0db1ad90
    move	$a4,$t1
    move	$a3,$t0
    move	$a2,$t2
.L0db1ad10:
    lhu	$a1,0($a2)
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3300($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($a4)
    lhu	$v1,2($a2)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,3300($a0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a4)
    lhu	$v0,4($a2)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3300($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,8($a4)
    lhu	$at,6($a2)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,3300($a0)
    mul.s	$f2,$f2,$f3
    addiu	$a4,$a4,16
    addiu	$a2,$a2,8
    # Line 1432
    addiu	$a3,$a3,4
    bne	$a5,$a3,.L0db1ad10
    # Line 1433
    swc1	$f2,-4($a4)
.L0db1ad90:
    # Line 1435
    jr	$ra
    nop
.end __glSpanUnpackUshort

# Function: __glSpanUnpackShort
# Declared: Line 1442 (Source lines: 1446-1458)
# Address: 0x0db1ad98 - 0x0db1aec0 (Size: 296 bytes, Frame: 0)
.globl __glSpanUnpackShort
.ent __glSpanUnpackShort
__glSpanUnpackShort:
    # Line 1449
    lw	$v0,28($a1)
    # Line 1446
    lw	$at,180($a1)
    # Line 1455
    mult	$at,$v0
    move	$a6,$zero
    mflo	$a5
    blez	$a5,.L0db1aeb8
    move	$a7,$a5
    andi	$a4,$a5,0x3
    beqz	$a4,.L0db1adfc
    move	$t0,$a6
.L0db1adc0:
    # Line 1456
    lh	$v1,0($a2)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3300($a0)
    mul.s	$f0,$f0,$f1
    # Line 1455
    addiu	$a6,$a6,1
    # Line 1456
    addiu	$a3,$a3,4
    addiu	$a2,$a2,2
    addi	$a4,$a4,-1
    bnez	$a4,.L0db1adc0
    swc1	$f0,-4($a3)
    move	$t0,$a6
.L0db1adfc:
    move	$t2,$a2
    move	$t1,$a3
    sra	$a1,$a7,0x2
    beqz	$a1,.L0db1aeb8
    move	$a4,$t1
    move	$a3,$t0
    move	$a2,$t2
.L0db1ae18:
    lh	$a1,0($a2)
    sll	$a1,$a1,0x1
    addiu	$a1,$a1,1
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3300($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($a4)
    lh	$v1,2($a2)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,3300($a0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a4)
    lh	$v0,4($a2)
    sll	$v0,$v0,0x1
    addiu	$v0,$v0,1
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,3300($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,8($a4)
    lh	$at,6($a2)
    sll	$at,$at,0x1
    addiu	$at,$at,1
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,3300($a0)
    mul.s	$f2,$f2,$f3
    addiu	$a4,$a4,16
    addiu	$a2,$a2,8
    # Line 1455
    addiu	$a3,$a3,4
    bne	$a5,$a3,.L0db1ae18
    # Line 1456
    swc1	$f2,-4($a4)
.L0db1aeb8:
    # Line 1458
    jr	$ra
    nop
.end __glSpanUnpackShort

# Function: __glSpanUnpackUint
# Declared: Line 1465 (Source lines: 1469-1481)
# Address: 0x0db1aec0 - 0x0db1afe8 (Size: 296 bytes, Frame: 0)
.globl __glSpanUnpackUint
.ent __glSpanUnpackUint
__glSpanUnpackUint:
    # Line 1472
    lw	$v0,28($a1)
    # Line 1469
    lw	$at,180($a1)
    # Line 1478
    mult	$at,$v0
    move	$a6,$zero
    mflo	$a5
    blez	$a5,.L0db1afe0
    move	$a7,$a5
    andi	$a4,$a5,0x3
    beqz	$a4,.L0db1af24
    move	$t0,$a6
.L0db1aee8:
    # Line 1479
    lw	$v1,0($a2)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f1
    nop
    cvt.s.l	$f1,$f1
    lwc1	$f0,3308($a0)
    mul.s	$f0,$f0,$f1
    # Line 1478
    addiu	$a6,$a6,1
    # Line 1479
    addiu	$a3,$a3,4
    addiu	$a2,$a2,4
    addi	$a4,$a4,-1
    bnez	$a4,.L0db1aee8
    swc1	$f0,-4($a3)
    move	$t0,$a6
.L0db1af24:
    move	$t2,$a2
    move	$t1,$a3
    sra	$a1,$a7,0x2
    beqz	$a1,.L0db1afe0
    move	$a4,$t1
    move	$a3,$t0
    move	$a2,$t2
.L0db1af40:
    lw	$a1,0($a2)
    dsll32	$a1,$a1,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f1
    nop
    cvt.s.l	$f1,$f1
    lwc1	$f0,3308($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($a4)
    lw	$v1,4($a2)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f3
    nop
    cvt.s.l	$f3,$f3
    lwc1	$f2,3308($a0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a4)
    lw	$v0,8($a2)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f1
    nop
    cvt.s.l	$f1,$f1
    lwc1	$f0,3308($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,8($a4)
    lw	$at,12($a2)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f3
    nop
    cvt.s.l	$f3,$f3
    lwc1	$f2,3308($a0)
    mul.s	$f2,$f2,$f3
    addiu	$a4,$a4,16
    addiu	$a2,$a2,16
    # Line 1478
    addiu	$a3,$a3,4
    bne	$a5,$a3,.L0db1af40
    # Line 1479
    swc1	$f2,-4($a4)
.L0db1afe0:
    # Line 1481
    jr	$ra
    nop
.end __glSpanUnpackUint

# Function: __glSpanUnpackInt
# Declared: Line 1488 (Source lines: 1490-1504)
# Address: 0x0db1afe8 - 0x0db1b120 (Size: 312 bytes, Frame: 0)
.globl __glSpanUnpackInt
.ent __glSpanUnpackInt
__glSpanUnpackInt:
    # Line 1492
    lw	$v1,180($a1)
    # Line 1495
    lw	$a1,28($a1)
    # Line 1501
    mult	$v1,$a1
    move	$a7,$zero
    # Line 1490
    lui	$v0,0xe
    addiu	$v0,$v0,14000
    addu	$at,$t9,$v0
    # Line 1501
    mflo	$a6
    blez	$a6,.L0db1b118
    andi	$a5,$a6,0x3
    move	$t0,$a6
    lwc1	$f5,_lit_3f800000
    beqz	$a5,.L0db1b058
    lwc1	$f4,_lit_40000000
.L0db1b020:
    # Line 1502
    lw	$a4,0($a2)
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    add.s	$f1,$f1,$f5
    lwc1	$f0,3308($a0)
    mul.s	$f0,$f0,$f1
    # Line 1501
    addiu	$a7,$a7,1
    # Line 1502
    addiu	$a3,$a3,4
    addiu	$a2,$a2,4
    addi	$a5,$a5,-1
    bnez	$a5,.L0db1b020
    swc1	$f0,-4($a3)
.L0db1b058:
    move	$t1,$a7
    move	$t3,$a2
    move	$t2,$a3
    sra	$v0,$t0,0x2
    beqz	$v0,.L0db1b118
    move	$a5,$t2
    move	$a3,$t1
    move	$a2,$t3
.L0db1b078:
    lw	$v0,0($a2)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    add.s	$f1,$f1,$f5
    lwc1	$f0,3308($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($a5)
    lw	$a4,4($a2)
    mtc1	$a4,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f4
    add.s	$f3,$f3,$f5
    lwc1	$f2,3308($a0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a5)
    lw	$a1,8($a2)
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f4
    add.s	$f1,$f1,$f5
    lwc1	$f0,3308($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,8($a5)
    lw	$v1,12($a2)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f4
    add.s	$f3,$f3,$f5
    lwc1	$f2,3308($a0)
    mul.s	$f2,$f2,$f3
    addiu	$a5,$a5,16
    addiu	$a2,$a2,16
    # Line 1501
    addiu	$a3,$a3,4
    bne	$a6,$a3,.L0db1b078
    # Line 1502
    swc1	$f2,-4($a5)
.L0db1b118:
    # Line 1504
    jr	$ra
    nop
.end __glSpanUnpackInt

# Function: __glSpanUnpack332Ubyte
# Declared: Line 1510 (Source lines: 1512-1529)
# Address: 0x0db1b120 - 0x0db1b1c4 (Size: 164 bytes, Frame: 0)
.globl __glSpanUnpack332Ubyte
.ent __glSpanUnpack332Ubyte
__glSpanUnpack332Ubyte:
    # Line 1523
    move	$a5,$zero
    # Line 1514
    lw	$a6,180($a1)
    # Line 1512
    lui	$v0,0xe
    addiu	$v0,$v0,13688
    # Line 1523
    blez	$a6,.L0db1b1bc
    # Line 1512
    addu	$at,$t9,$v0
    # Line 1523
    ldc1	$f5,_lit8_4008000000000000
    ldc1	$f4,_lit8_401c000000000000
.L0db1b140:
    # Line 1524
    lbu	$v1,0($a2)
    # Line 1525
    andi	$a1,$v1,0xe0
    sra	$a1,$a1,0x5
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    cvt.d.s	$f2,$f2
    div.d	$f2,$f2,$f4
    # Line 1526
    andi	$a0,$v1,0x1c
    sra	$a0,$a0,0x2
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    cvt.d.s	$f1,$f1
    div.d	$f1,$f1,$f4
    # Line 1527
    andi	$v1,$v1,0x3
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    cvt.d.s	$f0,$f0
    div.d	$f0,$f0,$f5
    # Line 1525
    cvt.s.d	$f2,$f2
    # Line 1527
    addiu	$a3,$a3,12
    # Line 1526
    cvt.s.d	$f1,$f1
    # Line 1524
    addiu	$a2,$a2,1
    # Line 1523
    addiu	$a5,$a5,1
    # Line 1527
    cvt.s.d	$f0,$f0
    # Line 1525
    swc1	$f2,-12($a3)
    # Line 1526
    swc1	$f1,-8($a3)
    # Line 1523
    bne	$a6,$a5,.L0db1b140
    # Line 1527
    swc1	$f0,-4($a3)
.L0db1b1bc:
    # Line 1529
    jr	$ra
    nop
.end __glSpanUnpack332Ubyte

# Function: __glSpanUnpack4444Ushort
# Declared: Line 1535 (Source lines: 1537-1555)
# Address: 0x0db1b1c4 - 0x0db1b288 (Size: 196 bytes, Frame: 0)
.globl __glSpanUnpack4444Ushort
.ent __glSpanUnpack4444Ushort
__glSpanUnpack4444Ushort:
    # Line 1548
    move	$a5,$zero
    # Line 1539
    lw	$a6,180($a1)
    # Line 1537
    lui	$v0,0xe
    addiu	$v0,$v0,13524
    # Line 1548
    blez	$a6,.L0db1b280
    # Line 1537
    addu	$at,$t9,$v0
    # Line 1548
    ldc1	$f4,_lit8_402e000000000000
.L0db1b1e0:
    # Line 1549
    lhu	$v1,0($a2)
    # Line 1553
    andi	$v0,$v1,0xf
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    cvt.d.s	$f0,$f0
    div.d	$f0,$f0,$f4
    # Line 1550
    andi	$a1,$v1,0xf000
    sra	$a1,$a1,0xc
    mtc1	$a1,$f3
    nop
    cvt.s.w	$f3,$f3
    cvt.d.s	$f3,$f3
    div.d	$f3,$f3,$f4
    # Line 1551
    andi	$a0,$v1,0xf00
    sra	$a0,$a0,0x8
    mtc1	$a0,$f2
    nop
    cvt.s.w	$f2,$f2
    cvt.d.s	$f2,$f2
    div.d	$f2,$f2,$f4
    # Line 1552
    andi	$v1,$v1,0xf0
    sra	$v1,$v1,0x4
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    cvt.d.s	$f1,$f1
    div.d	$f1,$f1,$f4
    # Line 1550
    cvt.s.d	$f3,$f3
    # Line 1551
    cvt.s.d	$f2,$f2
    # Line 1553
    addiu	$a3,$a3,16
    # Line 1552
    cvt.s.d	$f1,$f1
    # Line 1549
    addiu	$a2,$a2,2
    # Line 1548
    addiu	$a5,$a5,1
    # Line 1553
    cvt.s.d	$f0,$f0
    # Line 1550
    swc1	$f3,-16($a3)
    # Line 1551
    swc1	$f2,-12($a3)
    # Line 1552
    swc1	$f1,-8($a3)
    # Line 1548
    bne	$a6,$a5,.L0db1b1e0
    # Line 1553
    swc1	$f0,-4($a3)
.L0db1b280:
    # Line 1555
    jr	$ra
    nop
.end __glSpanUnpack4444Ushort

# Function: __glSpanUnpack5551Ushort
# Declared: Line 1561 (Source lines: 1563-1581)
# Address: 0x0db1b288 - 0x0db1b340 (Size: 184 bytes, Frame: 0)
.globl __glSpanUnpack5551Ushort
.ent __glSpanUnpack5551Ushort
__glSpanUnpack5551Ushort:
    # Line 1574
    move	$a5,$zero
    # Line 1565
    lw	$a6,180($a1)
    # Line 1563
    lui	$v0,0xe
    addiu	$v0,$v0,13328
    # Line 1574
    blez	$a6,.L0db1b338
    # Line 1563
    addu	$at,$t9,$v0
    # Line 1574
    ldc1	$f4,_lit8_403f000000000000
.L0db1b2a4:
    # Line 1575
    lhu	$v1,0($a2)
    # Line 1576
    andi	$v0,$v1,0xf800
    sra	$v0,$v0,0xb
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    cvt.d.s	$f3,$f3
    div.d	$f3,$f3,$f4
    # Line 1577
    andi	$a1,$v1,0x7c0
    sra	$a1,$a1,0x6
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    cvt.d.s	$f2,$f2
    div.d	$f2,$f2,$f4
    # Line 1578
    andi	$a0,$v1,0x3e
    sra	$a0,$a0,0x1
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    cvt.d.s	$f1,$f1
    div.d	$f1,$f1,$f4
    # Line 1579
    andi	$v1,$v1,0x1
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 1576
    cvt.s.d	$f3,$f3
    # Line 1577
    cvt.s.d	$f2,$f2
    # Line 1579
    addiu	$a3,$a3,16
    # Line 1575
    addiu	$a2,$a2,2
    # Line 1578
    cvt.s.d	$f1,$f1
    # Line 1574
    addiu	$a5,$a5,1
    # Line 1576
    swc1	$f3,-16($a3)
    # Line 1577
    swc1	$f2,-12($a3)
    # Line 1578
    swc1	$f1,-8($a3)
    # Line 1574
    bne	$a6,$a5,.L0db1b2a4
    # Line 1579
    swc1	$f0,-4($a3)
.L0db1b338:
    # Line 1581
    jr	$ra
    nop
.end __glSpanUnpack5551Ushort

# Function: __glSpanUnpack8888Uint
# Declared: Line 1587 (Source lines: 1589-1608)
# Address: 0x0db1b340 - 0x0db1b40c (Size: 204 bytes, Frame: 0)
.globl __glSpanUnpack8888Uint
.ent __glSpanUnpack8888Uint
__glSpanUnpack8888Uint:
    # Line 1600
    move	$a5,$zero
    lui	$a4,0xff00
    # Line 1591
    lw	$a7,180($a1)
    # Line 1589
    lui	$v0,0xe
    addiu	$v0,$v0,13144
    # Line 1600
    blez	$a7,.L0db1b404
    # Line 1589
    addu	$at,$t9,$v0
    # Line 1600
    lui	$a6,0xff
    ldc1	$f4,_lit8_406fe00000000000
.L0db1b364:
    # Line 1601
    lw	$v1,0($a2)
    # Line 1606
    andi	$v0,$v1,0xff
    dmtc1	$v0,$f0
    nop
    cvt.s.l	$f0,$f0
    cvt.d.s	$f0,$f0
    div.d	$f0,$f0,$f4
    # Line 1603
    and	$a1,$a4,$v1
    srl	$a1,$a1,0x18
    dmtc1	$a1,$f3
    nop
    cvt.s.l	$f3,$f3
    cvt.d.s	$f3,$f3
    div.d	$f3,$f3,$f4
    # Line 1604
    and	$a0,$a6,$v1
    srl	$a0,$a0,0x10
    dmtc1	$a0,$f2
    nop
    cvt.s.l	$f2,$f2
    cvt.d.s	$f2,$f2
    div.d	$f2,$f2,$f4
    # Line 1605
    andi	$v1,$v1,0xff00
    srl	$v1,$v1,0x8
    dmtc1	$v1,$f1
    nop
    cvt.s.l	$f1,$f1
    cvt.d.s	$f1,$f1
    div.d	$f1,$f1,$f4
    # Line 1603
    cvt.s.d	$f3,$f3
    # Line 1604
    cvt.s.d	$f2,$f2
    # Line 1606
    addiu	$a3,$a3,16
    # Line 1605
    cvt.s.d	$f1,$f1
    # Line 1601
    addiu	$a2,$a2,4
    # Line 1600
    addiu	$a5,$a5,1
    # Line 1606
    cvt.s.d	$f0,$f0
    # Line 1603
    swc1	$f3,-16($a3)
    # Line 1604
    swc1	$f2,-12($a3)
    # Line 1605
    swc1	$f1,-8($a3)
    # Line 1600
    bne	$a7,$a5,.L0db1b364
    # Line 1606
    swc1	$f0,-4($a3)
.L0db1b404:
    # Line 1608
    jr	$ra
    nop
.end __glSpanUnpack8888Uint

# Function: __glSpanUnpack_10_10_10_2_Uint
# Declared: Line 1614 (Source lines: 1617-1636)
# Address: 0x0db1b40c - 0x0db1b4e0 (Size: 212 bytes, Frame: 0)
.globl __glSpanUnpack_10_10_10_2_Uint
.ent __glSpanUnpack_10_10_10_2_Uint
__glSpanUnpack_10_10_10_2_Uint:
    # Line 1628
    move	$a5,$zero
    lui	$a6,0x3f
    # Line 1619
    lw	$a7,180($a1)
    # Line 1617
    lui	$v0,0xe
    addiu	$v0,$v0,12940
    # Line 1628
    blez	$a7,.L0db1b4d8
    # Line 1617
    addu	$at,$t9,$v0
    # Line 1628
    ori	$a6,$a6,0xf000
    lui	$a4,0xffc0
    ldc1	$f5,_lit8_4008000000000000
    ldc1	$f4,_lit8_408ff80000000000
.L0db1b438:
    # Line 1629
    lw	$v0,0($a2)
    # Line 1634
    andi	$a1,$v0,0x3
    dmtc1	$a1,$f0
    nop
    cvt.s.l	$f0,$f0
    cvt.d.s	$f0,$f0
    div.d	$f0,$f0,$f5
    # Line 1631
    and	$a0,$a4,$v0
    srl	$a0,$a0,0x16
    dmtc1	$a0,$f3
    nop
    cvt.s.l	$f3,$f3
    cvt.d.s	$f3,$f3
    div.d	$f3,$f3,$f4
    # Line 1632
    and	$v1,$a6,$v0
    srl	$v1,$v1,0xc
    dmtc1	$v1,$f2
    nop
    cvt.s.l	$f2,$f2
    cvt.d.s	$f2,$f2
    div.d	$f2,$f2,$f4
    # Line 1633
    andi	$v0,$v0,0xffc
    srl	$v0,$v0,0x2
    dmtc1	$v0,$f1
    nop
    cvt.s.l	$f1,$f1
    cvt.d.s	$f1,$f1
    div.d	$f1,$f1,$f4
    # Line 1631
    cvt.s.d	$f3,$f3
    # Line 1632
    cvt.s.d	$f2,$f2
    # Line 1634
    addiu	$a3,$a3,16
    # Line 1633
    cvt.s.d	$f1,$f1
    # Line 1629
    addiu	$a2,$a2,4
    # Line 1628
    addiu	$a5,$a5,1
    # Line 1634
    cvt.s.d	$f0,$f0
    # Line 1631
    swc1	$f3,-16($a3)
    # Line 1632
    swc1	$f2,-12($a3)
    # Line 1633
    swc1	$f1,-8($a3)
    # Line 1628
    bne	$a7,$a5,.L0db1b438
    # Line 1634
    swc1	$f0,-4($a3)
.L0db1b4d8:
    # Line 1636
    jr	$ra
    nop
.end __glSpanUnpack_10_10_10_2_Uint

# Function: __glSpanUnpackUbyteI
# Declared: Line 1643 (Source lines: 1647-1657)
# Address: 0x0db1b4e0 - 0x0db1b5ac (Size: 204 bytes, Frame: 0)
.globl __glSpanUnpackUbyteI
.ent __glSpanUnpackUbyteI
__glSpanUnpackUbyteI:
    # Line 1647
    lw	$a4,180($a1)
    # Line 1654
    move	$a5,$zero
    blez	$a4,.L0db1b5a4
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db1b528
    move	$a7,$a3
.L0db1b4fc:
    # Line 1655
    lbu	$at,0($a2)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 1654
    addiu	$a5,$a5,1
    # Line 1655
    addiu	$a3,$a3,4
    addiu	$a2,$a2,1
    addi	$a1,$a1,-1
    bnez	$a1,.L0db1b4fc
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0db1b528:
    sra	$v0,$a6,0x2
    move	$t1,$a5
    beqz	$v0,.L0db1b5a4
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db1b544:
    lbu	$v0,0($a3)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,0($a2)
    lbu	$at,1($a3)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,4($a2)
    lbu	$a0,2($a3)
    mtc1	$a0,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,8($a2)
    lbu	$v1,3($a3)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    addiu	$a2,$a2,16
    addiu	$a3,$a3,4
    # Line 1654
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db1b544
    # Line 1655
    swc1	$f1,-4($a2)
.L0db1b5a4:
    # Line 1657
    jr	$ra
    nop
.end __glSpanUnpackUbyteI

# Function: __glSpanUnpackByteI
# Declared: Line 1664 (Source lines: 1668-1678)
# Address: 0x0db1b5ac - 0x0db1b678 (Size: 204 bytes, Frame: 0)
.globl __glSpanUnpackByteI
.ent __glSpanUnpackByteI
__glSpanUnpackByteI:
    # Line 1668
    lw	$a4,180($a1)
    # Line 1675
    move	$a5,$zero
    blez	$a4,.L0db1b670
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db1b5f4
    move	$a7,$a3
.L0db1b5c8:
    # Line 1676
    lb	$at,0($a2)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 1675
    addiu	$a5,$a5,1
    # Line 1676
    addiu	$a3,$a3,4
    addiu	$a2,$a2,1
    addi	$a1,$a1,-1
    bnez	$a1,.L0db1b5c8
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0db1b5f4:
    sra	$v0,$a6,0x2
    move	$t1,$a5
    beqz	$v0,.L0db1b670
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db1b610:
    lb	$v0,0($a3)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,0($a2)
    lb	$at,1($a3)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,4($a2)
    lb	$a0,2($a3)
    mtc1	$a0,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,8($a2)
    lb	$v1,3($a3)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    addiu	$a2,$a2,16
    addiu	$a3,$a3,4
    # Line 1675
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db1b610
    # Line 1676
    swc1	$f1,-4($a2)
.L0db1b670:
    # Line 1678
    jr	$ra
    nop
.end __glSpanUnpackByteI

# Function: __glSpanUnpackUshortI
# Declared: Line 1685 (Source lines: 1689-1699)
# Address: 0x0db1b678 - 0x0db1b744 (Size: 204 bytes, Frame: 0)
.globl __glSpanUnpackUshortI
.ent __glSpanUnpackUshortI
__glSpanUnpackUshortI:
    # Line 1689
    lw	$a4,180($a1)
    # Line 1696
    move	$a5,$zero
    blez	$a4,.L0db1b73c
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db1b6c0
    move	$a7,$a3
.L0db1b694:
    # Line 1697
    lhu	$at,0($a2)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 1696
    addiu	$a5,$a5,1
    # Line 1697
    addiu	$a3,$a3,4
    addiu	$a2,$a2,2
    addi	$a1,$a1,-1
    bnez	$a1,.L0db1b694
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0db1b6c0:
    sra	$v0,$a6,0x2
    move	$t1,$a5
    beqz	$v0,.L0db1b73c
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db1b6dc:
    lhu	$v0,0($a3)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,0($a2)
    lhu	$at,2($a3)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,4($a2)
    lhu	$a0,4($a3)
    mtc1	$a0,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,8($a2)
    lhu	$v1,6($a3)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    addiu	$a2,$a2,16
    addiu	$a3,$a3,8
    # Line 1696
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db1b6dc
    # Line 1697
    swc1	$f1,-4($a2)
.L0db1b73c:
    # Line 1699
    jr	$ra
    nop
.end __glSpanUnpackUshortI

# Function: __glSpanUnpackShortI
# Declared: Line 1706 (Source lines: 1710-1720)
# Address: 0x0db1b744 - 0x0db1b810 (Size: 204 bytes, Frame: 0)
.globl __glSpanUnpackShortI
.ent __glSpanUnpackShortI
__glSpanUnpackShortI:
    # Line 1710
    lw	$a4,180($a1)
    # Line 1717
    move	$a5,$zero
    blez	$a4,.L0db1b808
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db1b78c
    move	$a7,$a3
.L0db1b760:
    # Line 1718
    lh	$at,0($a2)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 1717
    addiu	$a5,$a5,1
    # Line 1718
    addiu	$a3,$a3,4
    addiu	$a2,$a2,2
    addi	$a1,$a1,-1
    bnez	$a1,.L0db1b760
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0db1b78c:
    sra	$v0,$a6,0x2
    move	$t1,$a5
    beqz	$v0,.L0db1b808
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db1b7a8:
    lh	$v0,0($a3)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,0($a2)
    lh	$at,2($a3)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,4($a2)
    lh	$a0,4($a3)
    mtc1	$a0,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,8($a2)
    lh	$v1,6($a3)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    addiu	$a2,$a2,16
    addiu	$a3,$a3,8
    # Line 1717
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db1b7a8
    # Line 1718
    swc1	$f1,-4($a2)
.L0db1b808:
    # Line 1720
    jr	$ra
    nop
.end __glSpanUnpackShortI

# Function: __glSpanUnpackUintI
# Declared: Line 1727 (Source lines: 1731-1741)
# Address: 0x0db1b810 - 0x0db1b904 (Size: 244 bytes, Frame: 0)
.globl __glSpanUnpackUintI
.ent __glSpanUnpackUintI
__glSpanUnpackUintI:
    # Line 1731
    lw	$a4,180($a1)
    # Line 1738
    move	$a5,$zero
    blez	$a4,.L0db1b8fc
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db1b860
    move	$a7,$a3
.L0db1b82c:
    # Line 1739
    lw	$at,0($a2)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f0
    nop
    cvt.s.l	$f0,$f0
    # Line 1738
    addiu	$a5,$a5,1
    # Line 1739
    addiu	$a3,$a3,4
    addiu	$a2,$a2,4
    addi	$a1,$a1,-1
    bnez	$a1,.L0db1b82c
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0db1b860:
    sra	$v0,$a6,0x2
    move	$t1,$a5
    beqz	$v0,.L0db1b8fc
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db1b87c:
    lw	$v0,0($a3)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f0
    nop
    cvt.s.l	$f0,$f0
    swc1	$f0,0($a2)
    lw	$at,4($a3)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f3
    nop
    cvt.s.l	$f3,$f3
    swc1	$f3,4($a2)
    lw	$a0,8($a3)
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f2
    nop
    cvt.s.l	$f2,$f2
    swc1	$f2,8($a2)
    lw	$v1,12($a3)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f1
    nop
    cvt.s.l	$f1,$f1
    addiu	$a2,$a2,16
    addiu	$a3,$a3,16
    # Line 1738
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db1b87c
    # Line 1739
    swc1	$f1,-4($a2)
.L0db1b8fc:
    # Line 1741
    jr	$ra
    nop
.end __glSpanUnpackUintI

# Function: __glSpanUnpackIntI
# Declared: Line 1748 (Source lines: 1752-1762)
# Address: 0x0db1b904 - 0x0db1b9d0 (Size: 204 bytes, Frame: 0)
.globl __glSpanUnpackIntI
.ent __glSpanUnpackIntI
__glSpanUnpackIntI:
    # Line 1752
    lw	$a4,180($a1)
    # Line 1759
    move	$a5,$zero
    blez	$a4,.L0db1b9c8
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db1b94c
    move	$a7,$a3
.L0db1b920:
    # Line 1760
    lw	$at,0($a2)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 1759
    addiu	$a5,$a5,1
    # Line 1760
    addiu	$a3,$a3,4
    addiu	$a2,$a2,4
    addi	$a1,$a1,-1
    bnez	$a1,.L0db1b920
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0db1b94c:
    sra	$v0,$a6,0x2
    move	$t1,$a5
    beqz	$v0,.L0db1b9c8
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db1b968:
    lw	$v0,0($a3)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,0($a2)
    lw	$at,4($a3)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,4($a2)
    lw	$a0,8($a3)
    mtc1	$a0,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,8($a2)
    lw	$v1,12($a3)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    addiu	$a2,$a2,16
    addiu	$a3,$a3,16
    # Line 1759
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db1b968
    # Line 1760
    swc1	$f1,-4($a2)
.L0db1b9c8:
    # Line 1762
    jr	$ra
    nop
.end __glSpanUnpackIntI

# Function: __glSpanUnpackNonCompUint
# Declared: Line 1770 (Source lines: 1774-1786)
# Address: 0x0db1b9d0 - 0x0db1bad0 (Size: 256 bytes, Frame: 0)
.globl __glSpanUnpackNonCompUint
.ent __glSpanUnpackNonCompUint
__glSpanUnpackNonCompUint:
    # Line 1777
    lw	$v0,28($a1)
    # Line 1774
    lw	$at,180($a1)
    # Line 1783
    mult	$at,$v0
    move	$a5,$zero
    mflo	$a4
    blez	$a4,.L0db1bac8
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db1ba2c
    move	$a7,$a3
.L0db1b9f8:
    # Line 1784
    lw	$v1,0($a2)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f0
    nop
    cvt.s.l	$f0,$f0
    # Line 1783
    addiu	$a5,$a5,1
    # Line 1784
    addiu	$a3,$a3,4
    addiu	$a2,$a2,4
    addi	$a1,$a1,-1
    bnez	$a1,.L0db1b9f8
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0db1ba2c:
    sra	$a0,$a6,0x2
    move	$t1,$a5
    beqz	$a0,.L0db1bac8
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db1ba48:
    lw	$a0,0($a3)
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f0
    nop
    cvt.s.l	$f0,$f0
    swc1	$f0,0($a2)
    lw	$v1,4($a3)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f3
    nop
    cvt.s.l	$f3,$f3
    swc1	$f3,4($a2)
    lw	$v0,8($a3)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f2
    nop
    cvt.s.l	$f2,$f2
    swc1	$f2,8($a2)
    lw	$at,12($a3)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f1
    nop
    cvt.s.l	$f1,$f1
    addiu	$a2,$a2,16
    addiu	$a3,$a3,16
    # Line 1783
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db1ba48
    # Line 1784
    swc1	$f1,-4($a2)
.L0db1bac8:
    # Line 1786
    jr	$ra
    nop
.end __glSpanUnpackNonCompUint

# Function: __glSpanClampPreFloat
# Declared: Line 1793 (Source lines: 1795-1812)
# Address: 0x0db1bad0 - 0x0db1bbc4 (Size: 244 bytes, Frame: 0)
.globl __glSpanClampPreFloat
.ent __glSpanClampPreFloat
__glSpanClampPreFloat:
    # Line 1797
    lw	$v1,180($a1)
    # Line 1798
    lw	$a1,28($a1)
    # Line 1806
    mult	$v1,$a1
    move	$a6,$zero
    # Line 1804
    lwc1	$f5,3284($a0)
    # Line 1795
    lui	$v0,0xe
    addiu	$v0,$v0,11208
    # Line 1806
    mflo	$a7
    blez	$a7,.L0db1bb34
    # Line 1795
    addu	$at,$t9,$v0
    # Line 1806
    move	$a4,$a7
    andi	$v0,$a7,0x1
    beqz	$v0,.L0db1bb28
    mtc1	$zero,$f6
    # Line 1807
    lwc1	$f4,0($a2)
    c.lt.s	$f5,$f4
    # Line 1806
    addiu	$a6,$a6,1
    # Line 1807
    bc1f	.L0db1bbac
    addiu	$a2,$a2,4
    # Line 1808
    mov.s	$f4,$f5
.L0db1bb20:
    # Line 1810
    swc1	$f4,0($a3)
.L0db1bb24:
    addiu	$a3,$a3,4
.L0db1bb28:
    sra	$v1,$a4,0x1
    bnezl	$v1,.L0db1bb7c
    # Line 1807
    lwc1	$f4,0($a2)
.L0db1bb34:
    # Line 1812
    jr	$ra
    nop
.L0db1bb3c:
    # Line 1808
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0db1bb54
    # Line 1810
    swc1	$f4,0($a3)
    # Line 1809
    mov.s	$f4,$f6
.L0db1bb50:
    # Line 1810
    swc1	$f4,0($a3)
.L0db1bb54:
    # Line 1807
    lwc1	$f4,4($a2)
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0db1bb94
    addiu	$a2,$a2,8
    # Line 1808
    mov.s	$f4,$f5
.L0db1bb6c:
    # Line 1810
    swc1	$f4,4($a3)
.L0db1bb70:
    # Line 1806
    beq	$a7,$a6,.L0db1bb34
    # Line 1810
    addiu	$a3,$a3,8
    # Line 1807
    lwc1	$f4,0($a2)
.L0db1bb7c:
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0db1bb3c
    # Line 1806
    addiu	$a6,$a6,2
    # Line 1808
    b	.L0db1bb50
    mov.s	$f4,$f5
.L0db1bb94:
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0db1bb70
    # Line 1810
    swc1	$f4,4($a3)
    b	.L0db1bb6c
    # Line 1809
    mov.s	$f4,$f6
.L0db1bbac:
    # Line 1808
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0db1bb24
    # Line 1810
    swc1	$f4,0($a3)
    b	.L0db1bb20
    # Line 1809
    mov.s	$f4,$f6
.end __glSpanClampPreFloat

# Function: __glSpanClampNegPreFloat
# Declared: Line 1824 (Source lines: 1828-1843)
# Address: 0x0db1bbc4 - 0x0db1bcb0 (Size: 236 bytes, Frame: 0)
.globl __glSpanClampNegPreFloat
.ent __glSpanClampNegPreFloat
__glSpanClampNegPreFloat:
    # Line 1829
    lw	$v0,28($a1)
    # Line 1828
    lw	$at,180($a1)
    # Line 1837
    mult	$at,$v0
    # Line 1835
    lwc1	$f5,3284($a0)
    # Line 1837
    move	$a5,$zero
    # Line 1836
    neg.s	$f6,$f5
    # Line 1837
    mflo	$a6
    blez	$a6,.L0db1bc20
    move	$a1,$a6
    andi	$v1,$a6,0x1
    beqz	$v1,.L0db1bc18
    sra	$a0,$a1,0x1
    # Line 1838
    lwc1	$f4,0($a2)
    c.lt.s	$f5,$f4
    # Line 1837
    addiu	$a5,$a5,1
    # Line 1838
    bc1f	.L0db1bc98
    addiu	$a2,$a2,4
    # Line 1839
    mov.s	$f4,$f5
.L0db1bc0c:
    # Line 1841
    swc1	$f4,0($a3)
.L0db1bc10:
    addiu	$a3,$a3,4
    sra	$a0,$a1,0x1
.L0db1bc18:
    bnezl	$a0,.L0db1bc68
    # Line 1838
    lwc1	$f4,0($a2)
.L0db1bc20:
    # Line 1843
    jr	$ra
    nop
.L0db1bc28:
    # Line 1839
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0db1bc40
    # Line 1841
    swc1	$f4,0($a3)
    # Line 1840
    mov.s	$f4,$f6
.L0db1bc3c:
    # Line 1841
    swc1	$f4,0($a3)
.L0db1bc40:
    # Line 1838
    lwc1	$f4,4($a2)
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0db1bc80
    addiu	$a2,$a2,8
    # Line 1839
    mov.s	$f4,$f5
.L0db1bc58:
    # Line 1841
    swc1	$f4,4($a3)
.L0db1bc5c:
    # Line 1837
    beq	$a6,$a5,.L0db1bc20
    # Line 1841
    addiu	$a3,$a3,8
    # Line 1838
    lwc1	$f4,0($a2)
.L0db1bc68:
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0db1bc28
    # Line 1837
    addiu	$a5,$a5,2
    # Line 1839
    b	.L0db1bc3c
    mov.s	$f4,$f5
.L0db1bc80:
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0db1bc5c
    # Line 1841
    swc1	$f4,4($a3)
    b	.L0db1bc58
    # Line 1840
    mov.s	$f4,$f6
.L0db1bc98:
    # Line 1839
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0db1bc10
    # Line 1841
    swc1	$f4,0($a3)
    b	.L0db1bc0c
    # Line 1840
    mov.s	$f4,$f6
.end __glSpanClampNegPreFloat

# Function: __glSpanClampPostFloat
# Declared: Line 1850 (Source lines: 1852-1869)
# Address: 0x0db1bcb0 - 0x0db1bda4 (Size: 244 bytes, Frame: 0)
.globl __glSpanClampPostFloat
.ent __glSpanClampPostFloat
__glSpanClampPostFloat:
    # Line 1854
    lw	$v1,184($a1)
    # Line 1855
    lw	$a1,108($a1)
    # Line 1863
    mult	$v1,$a1
    move	$a6,$zero
    # Line 1861
    lwc1	$f5,3284($a0)
    # Line 1852
    lui	$v0,0xe
    addiu	$v0,$v0,10728
    # Line 1863
    mflo	$a7
    blez	$a7,.L0db1bd14
    # Line 1852
    addu	$at,$t9,$v0
    # Line 1863
    move	$a4,$a7
    andi	$v0,$a7,0x1
    beqz	$v0,.L0db1bd08
    mtc1	$zero,$f6
    # Line 1864
    lwc1	$f4,0($a2)
    c.lt.s	$f5,$f4
    # Line 1863
    addiu	$a6,$a6,1
    # Line 1864
    bc1f	.L0db1bd8c
    addiu	$a2,$a2,4
    # Line 1865
    mov.s	$f4,$f5
.L0db1bd00:
    # Line 1867
    swc1	$f4,0($a3)
.L0db1bd04:
    addiu	$a3,$a3,4
.L0db1bd08:
    sra	$v1,$a4,0x1
    bnezl	$v1,.L0db1bd5c
    # Line 1864
    lwc1	$f4,0($a2)
.L0db1bd14:
    # Line 1869
    jr	$ra
    nop
.L0db1bd1c:
    # Line 1865
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0db1bd34
    # Line 1867
    swc1	$f4,0($a3)
    # Line 1866
    mov.s	$f4,$f6
.L0db1bd30:
    # Line 1867
    swc1	$f4,0($a3)
.L0db1bd34:
    # Line 1864
    lwc1	$f4,4($a2)
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0db1bd74
    addiu	$a2,$a2,8
    # Line 1865
    mov.s	$f4,$f5
.L0db1bd4c:
    # Line 1867
    swc1	$f4,4($a3)
.L0db1bd50:
    # Line 1863
    beq	$a7,$a6,.L0db1bd14
    # Line 1867
    addiu	$a3,$a3,8
    # Line 1864
    lwc1	$f4,0($a2)
.L0db1bd5c:
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0db1bd1c
    # Line 1863
    addiu	$a6,$a6,2
    # Line 1865
    b	.L0db1bd30
    mov.s	$f4,$f5
.L0db1bd74:
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0db1bd50
    # Line 1867
    swc1	$f4,4($a3)
    b	.L0db1bd4c
    # Line 1866
    mov.s	$f4,$f6
.L0db1bd8c:
    # Line 1865
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0db1bd04
    # Line 1867
    swc1	$f4,0($a3)
    b	.L0db1bd00
    # Line 1866
    mov.s	$f4,$f6
.end __glSpanClampPostFloat

# Function: __glSpanClampRed
# Declared: Line 1872 (Source lines: 1874-1892)
# Address: 0x0db1bda4 - 0x0db1bed8 (Size: 308 bytes, Frame: 0)
.globl __glSpanClampRed
.ent __glSpanClampRed
__glSpanClampRed:
    # Line 1881
    lwc1	$f5,30804($a0)
    # Line 1883
    move	$a6,$zero
    # Line 1874
    lui	$v0,0xe
    # Line 1876
    lw	$a7,184($a1)
    # Line 1874
    addiu	$v0,$v0,10484
    addu	$at,$t9,$v0
    # Line 1883
    blez	$a7,.L0db1be18
    andi	$v1,$a7,0x1
    move	$a4,$a7
    beqz	$v1,.L0db1be0c
    mtc1	$zero,$f6
    # Line 1884
    lwc1	$f4,0($a2)
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0db1bec0
    # Line 1883
    addiu	$a6,$a6,1
    # Line 1885
    mov.s	$f4,$f5
.L0db1bde8:
    # Line 1887
    swc1	$f4,0($a3)
.L0db1bdec:
    # Line 1888
    lwc1	$f2,4($a2)
    swc1	$f2,4($a3)
    # Line 1889
    lwc1	$f1,8($a2)
    swc1	$f1,8($a3)
    # Line 1890
    lwc1	$f0,12($a2)
    addiu	$a3,$a3,16
    addiu	$a2,$a2,16
    swc1	$f0,-4($a3)
.L0db1be0c:
    sra	$a0,$a4,0x1
    bnezl	$a0,.L0db1be94
    # Line 1884
    lwc1	$f4,0($a2)
.L0db1be18:
    # Line 1892
    jr	$ra
    nop
.L0db1be20:
    # Line 1885
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0db1be38
    # Line 1887
    swc1	$f4,0($a3)
    # Line 1886
    mov.s	$f4,$f6
.L0db1be34:
    # Line 1887
    swc1	$f4,0($a3)
.L0db1be38:
    # Line 1888
    lwc1	$f0,4($a2)
    swc1	$f0,4($a3)
    # Line 1889
    lwc1	$f4,8($a2)
    swc1	$f4,8($a3)
    # Line 1890
    lwc1	$f3,12($a2)
    swc1	$f3,12($a3)
    # Line 1884
    lwc1	$f4,16($a2)
    c.lt.s	$f5,$f4
    nop
    bc1fl	.L0db1beac
    # Line 1885
    c.lt.s	$f4,$f6
    mov.s	$f4,$f5
.L0db1be68:
    # Line 1887
    swc1	$f4,16($a3)
.L0db1be6c:
    # Line 1888
    lwc1	$f3,20($a2)
    swc1	$f3,20($a3)
    # Line 1889
    lwc1	$f2,24($a2)
    swc1	$f2,24($a3)
    # Line 1890
    addiu	$a3,$a3,32
    lwc1	$f1,28($a2)
    addiu	$a2,$a2,32
    # Line 1883
    beq	$a7,$a6,.L0db1be18
    # Line 1890
    swc1	$f1,-4($a3)
    # Line 1884
    lwc1	$f4,0($a2)
.L0db1be94:
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0db1be20
    # Line 1883
    addiu	$a6,$a6,2
    # Line 1885
    b	.L0db1be34
    mov.s	$f4,$f5
.L0db1beac:
    nop
    bc1fl	.L0db1be6c
    # Line 1887
    swc1	$f4,16($a3)
    b	.L0db1be68
    # Line 1886
    mov.s	$f4,$f6
.L0db1bec0:
    # Line 1885
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0db1bdec
    # Line 1887
    swc1	$f4,0($a3)
    b	.L0db1bde8
    # Line 1886
    mov.s	$f4,$f6
.end __glSpanClampRed

# Function: __glSpanClampGreen
# Declared: Line 1894 (Source lines: 1896-1914)
# Address: 0x0db1bed8 - 0x0db1c00c (Size: 308 bytes, Frame: 0)
.globl __glSpanClampGreen
.ent __glSpanClampGreen
__glSpanClampGreen:
    # Line 1903
    lwc1	$f5,30808($a0)
    # Line 1905
    move	$a6,$zero
    # Line 1896
    lui	$v0,0xe
    # Line 1898
    lw	$a7,184($a1)
    # Line 1896
    addiu	$v0,$v0,10176
    addu	$at,$t9,$v0
    # Line 1905
    blez	$a7,.L0db1bf4c
    andi	$v1,$a7,0x1
    move	$a4,$a7
    beqz	$v1,.L0db1bf40
    mtc1	$zero,$f6
    # Line 1906
    lwc1	$f0,0($a2)
    swc1	$f0,0($a3)
    # Line 1907
    lwc1	$f4,4($a2)
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0db1bff4
    # Line 1905
    addiu	$a6,$a6,1
    # Line 1908
    mov.s	$f4,$f5
.L0db1bf24:
    # Line 1910
    swc1	$f4,4($a3)
.L0db1bf28:
    # Line 1911
    lwc1	$f2,8($a2)
    swc1	$f2,8($a3)
    # Line 1912
    lwc1	$f1,12($a2)
    addiu	$a3,$a3,16
    addiu	$a2,$a2,16
    swc1	$f1,-4($a3)
.L0db1bf40:
    sra	$a0,$a4,0x1
    bnezl	$a0,.L0db1bfc0
    # Line 1906
    lwc1	$f3,0($a2)
.L0db1bf4c:
    # Line 1914
    jr	$ra
    nop
.L0db1bf54:
    # Line 1908
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0db1bf6c
    # Line 1910
    swc1	$f4,4($a3)
    # Line 1909
    mov.s	$f4,$f6
.L0db1bf68:
    # Line 1910
    swc1	$f4,4($a3)
.L0db1bf6c:
    # Line 1911
    lwc1	$f0,8($a2)
    swc1	$f0,8($a3)
    # Line 1912
    lwc1	$f4,12($a2)
    swc1	$f4,12($a3)
    # Line 1906
    lwc1	$f3,16($a2)
    swc1	$f3,16($a3)
    # Line 1907
    lwc1	$f4,20($a2)
    c.lt.s	$f5,$f4
    nop
    bc1fl	.L0db1bfe0
    # Line 1908
    c.lt.s	$f4,$f6
    mov.s	$f4,$f5
.L0db1bf9c:
    # Line 1910
    swc1	$f4,20($a3)
.L0db1bfa0:
    # Line 1911
    lwc1	$f2,24($a2)
    swc1	$f2,24($a3)
    # Line 1912
    addiu	$a3,$a3,32
    lwc1	$f1,28($a2)
    addiu	$a2,$a2,32
    # Line 1905
    beq	$a7,$a6,.L0db1bf4c
    # Line 1912
    swc1	$f1,-4($a3)
    # Line 1906
    lwc1	$f3,0($a2)
.L0db1bfc0:
    swc1	$f3,0($a3)
    # Line 1907
    lwc1	$f4,4($a2)
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0db1bf54
    # Line 1905
    addiu	$a6,$a6,2
    # Line 1908
    b	.L0db1bf68
    mov.s	$f4,$f5
.L0db1bfe0:
    nop
    bc1fl	.L0db1bfa0
    # Line 1910
    swc1	$f4,20($a3)
    b	.L0db1bf9c
    # Line 1909
    mov.s	$f4,$f6
.L0db1bff4:
    # Line 1908
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0db1bf28
    # Line 1910
    swc1	$f4,4($a3)
    b	.L0db1bf24
    # Line 1909
    mov.s	$f4,$f6
.end __glSpanClampGreen

# Function: __glSpanClampBlue
# Declared: Line 1916 (Source lines: 1918-1936)
# Address: 0x0db1c00c - 0x0db1c13c (Size: 304 bytes, Frame: 0)
.globl __glSpanClampBlue
.ent __glSpanClampBlue
__glSpanClampBlue:
    # Line 1925
    lwc1	$f5,30812($a0)
    # Line 1927
    move	$a6,$zero
    # Line 1918
    lui	$v0,0xe
    # Line 1920
    lw	$a7,184($a1)
    # Line 1918
    addiu	$v0,$v0,9868
    addu	$at,$t9,$v0
    # Line 1927
    blez	$a7,.L0db1c080
    andi	$v1,$a7,0x1
    move	$a4,$a7
    beqz	$v1,.L0db1c074
    mtc1	$zero,$f6
    # Line 1928
    lwc1	$f1,0($a2)
    swc1	$f1,0($a3)
    # Line 1929
    lwc1	$f0,4($a2)
    swc1	$f0,4($a3)
    # Line 1930
    lwc1	$f4,8($a2)
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0db1c124
    # Line 1927
    addiu	$a6,$a6,1
    # Line 1931
    mov.s	$f4,$f5
.L0db1c060:
    # Line 1933
    swc1	$f4,8($a3)
.L0db1c064:
    # Line 1934
    lwc1	$f2,12($a2)
    addiu	$a3,$a3,16
    addiu	$a2,$a2,16
    swc1	$f2,-4($a3)
.L0db1c074:
    sra	$a0,$a4,0x1
    bnezl	$a0,.L0db1c0e4
    # Line 1928
    lwc1	$f3,0($a2)
.L0db1c080:
    # Line 1936
    jr	$ra
    nop
.L0db1c088:
    nop
    # Line 1931
    bc1fl	.L0db1c09c
    # Line 1933
    swc1	$f4,8($a3)
    # Line 1932
    mov.s	$f4,$f6
.L0db1c098:
    # Line 1933
    swc1	$f4,8($a3)
.L0db1c09c:
    # Line 1934
    lwc1	$f0,12($a2)
    swc1	$f0,12($a3)
    # Line 1928
    lwc1	$f4,16($a2)
    swc1	$f4,16($a3)
    # Line 1929
    lwc1	$f3,20($a2)
    swc1	$f3,20($a3)
    # Line 1930
    lwc1	$f4,24($a2)
    c.lt.s	$f5,$f4
    # Line 1934
    addiu	$a2,$a2,32
    # Line 1930
    bc1f	.L0db1c10c
    # Line 1934
    addiu	$a3,$a3,32
    # Line 1931
    mov.s	$f4,$f5
.L0db1c0cc:
    # Line 1927
    addiu	$a6,$a6,2
.L0db1c0d0:
    # Line 1933
    swc1	$f4,-8($a3)
    # Line 1934
    lwc1	$f1,-4($a2)
    # Line 1927
    beq	$a7,$a6,.L0db1c080
    # Line 1934
    swc1	$f1,-4($a3)
    # Line 1928
    lwc1	$f3,0($a2)
.L0db1c0e4:
    swc1	$f3,0($a3)
    # Line 1929
    lwc1	$f2,4($a2)
    swc1	$f2,4($a3)
    # Line 1930
    lwc1	$f4,8($a2)
    c.lt.s	$f5,$f4
    nop
    bc1fl	.L0db1c088
    # Line 1931
    c.lt.s	$f4,$f6
    b	.L0db1c098
    mov.s	$f4,$f5
.L0db1c10c:
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0db1c0d0
    # Line 1927
    addiu	$a6,$a6,2
    b	.L0db1c0cc
    # Line 1932
    mov.s	$f4,$f6
.L0db1c124:
    # Line 1931
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0db1c064
    # Line 1933
    swc1	$f4,8($a3)
    b	.L0db1c060
    # Line 1932
    mov.s	$f4,$f6
.end __glSpanClampBlue

# Function: __glSpanClampAlpha
# Declared: Line 1938 (Source lines: 1940-1958)
# Address: 0x0db1c13c - 0x0db1c26c (Size: 304 bytes, Frame: 0)
.globl __glSpanClampAlpha
.ent __glSpanClampAlpha
__glSpanClampAlpha:
    # Line 1947
    lwc1	$f5,30844($a0)
    # Line 1949
    move	$a6,$zero
    # Line 1940
    lui	$v0,0xe
    # Line 1942
    lw	$a7,184($a1)
    # Line 1940
    addiu	$v0,$v0,9564
    addu	$at,$t9,$v0
    # Line 1949
    blez	$a7,.L0db1c1ac
    andi	$v1,$a7,0x1
    move	$a4,$a7
    beqz	$v1,.L0db1c1a0
    mtc1	$zero,$f6
    # Line 1950
    lwc1	$f2,0($a2)
    swc1	$f2,0($a3)
    # Line 1951
    lwc1	$f1,4($a2)
    swc1	$f1,4($a3)
    # Line 1952
    lwc1	$f0,8($a2)
    swc1	$f0,8($a3)
    # Line 1953
    lwc1	$f4,12($a2)
    c.lt.s	$f5,$f4
    # Line 1949
    addiu	$a6,$a6,1
    # Line 1953
    bc1f	.L0db1c254
    addiu	$a2,$a2,16
    # Line 1954
    mov.s	$f4,$f5
.L0db1c198:
    # Line 1956
    swc1	$f4,12($a3)
.L0db1c19c:
    addiu	$a3,$a3,16
.L0db1c1a0:
    sra	$a0,$a4,0x1
    bnezl	$a0,.L0db1c20c
    # Line 1950
    lwc1	$f3,0($a2)
.L0db1c1ac:
    # Line 1958
    jr	$ra
    nop
.L0db1c1b4:
    # Line 1954
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0db1c1cc
    # Line 1956
    swc1	$f4,12($a3)
    # Line 1955
    mov.s	$f4,$f6
.L0db1c1c8:
    # Line 1956
    swc1	$f4,12($a3)
.L0db1c1cc:
    # Line 1950
    lwc1	$f0,16($a2)
    swc1	$f0,16($a3)
    # Line 1951
    lwc1	$f4,20($a2)
    swc1	$f4,20($a3)
    # Line 1952
    lwc1	$f3,24($a2)
    swc1	$f3,24($a3)
    # Line 1953
    lwc1	$f4,28($a2)
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0db1c23c
    addiu	$a2,$a2,32
    # Line 1954
    mov.s	$f4,$f5
.L0db1c1fc:
    # Line 1956
    swc1	$f4,28($a3)
.L0db1c200:
    # Line 1949
    beq	$a7,$a6,.L0db1c1ac
    # Line 1956
    addiu	$a3,$a3,32
    # Line 1950
    lwc1	$f3,0($a2)
.L0db1c20c:
    swc1	$f3,0($a3)
    # Line 1951
    lwc1	$f2,4($a2)
    swc1	$f2,4($a3)
    # Line 1952
    lwc1	$f1,8($a2)
    swc1	$f1,8($a3)
    # Line 1953
    lwc1	$f4,12($a2)
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0db1c1b4
    # Line 1949
    addiu	$a6,$a6,2
    # Line 1954
    b	.L0db1c1c8
    mov.s	$f4,$f5
.L0db1c23c:
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0db1c200
    # Line 1956
    swc1	$f4,28($a3)
    b	.L0db1c1fc
    # Line 1955
    mov.s	$f4,$f6
.L0db1c254:
    # Line 1954
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0db1c19c
    # Line 1956
    swc1	$f4,12($a3)
    b	.L0db1c198
    # Line 1955
    mov.s	$f4,$f6
.end __glSpanClampAlpha

# Function: __glSpanClampRGB
# Declared: Line 1961 (Source lines: 1963-1992)
# Address: 0x0db1c26c - 0x0db1c494 (Size: 552 bytes, Frame: 0)
.globl __glSpanClampRGB
.ent __glSpanClampRGB
__glSpanClampRGB:
    # Line 1972
    lwc1	$f10,30812($a0)
    # Line 1971
    lwc1	$f8,30808($a0)
    # Line 1970
    lwc1	$f9,30804($a0)
    # Line 1975
    move	$a6,$zero
    # Line 1963
    lui	$v0,0xe
    # Line 1965
    lw	$a7,184($a1)
    # Line 1963
    addiu	$v0,$v0,9260
    addu	$at,$t9,$v0
    # Line 1975
    blez	$a7,.L0db1c310
    andi	$v1,$a7,0x1
    move	$a4,$a7
    beqz	$v1,.L0db1c304
    mtc1	$zero,$f7
    # Line 1976
    lwc1	$f5,0($a2)
    c.lt.s	$f9,$f5
    nop
    bc1f	.L0db1c454
    # Line 1975
    addiu	$a6,$a6,1
    # Line 1977
    mov.s	$f5,$f9
.L0db1c2b8:
    # Line 1979
    swc1	$f5,0($a3)
.L0db1c2bc:
    # Line 1981
    lwc1	$f6,4($a2)
    c.lt.s	$f8,$f6
    nop
    bc1fl	.L0db1c46c
    # Line 1982
    c.lt.s	$f6,$f7
    mov.s	$f6,$f8
.L0db1c2d4:
    # Line 1984
    swc1	$f6,4($a3)
.L0db1c2d8:
    # Line 1986
    lwc1	$f4,8($a2)
    c.lt.s	$f10,$f4
    nop
    bc1fl	.L0db1c480
    # Line 1987
    c.lt.s	$f4,$f7
    mov.s	$f4,$f10
.L0db1c2f0:
    # Line 1989
    swc1	$f4,8($a3)
.L0db1c2f4:
    # Line 1990
    lwc1	$f0,12($a2)
    addiu	$a3,$a3,16
    addiu	$a2,$a2,16
    swc1	$f0,-4($a3)
.L0db1c304:
    sra	$a0,$a4,0x1
    bnezl	$a0,.L0db1c344
    # Line 1976
    lwc1	$f5,0($a2)
.L0db1c310:
    # Line 1992
    jr	$ra
    nop
.L0db1c318:
    # Line 1987
    c.lt.s	$f4,$f7
    nop
    bc1fl	.L0db1c330
    # Line 1975
    addiu	$a6,$a6,2
    # Line 1988
    mov.s	$f4,$f7
.L0db1c32c:
    # Line 1975
    addiu	$a6,$a6,2
.L0db1c330:
    # Line 1989
    swc1	$f4,-8($a3)
    # Line 1990
    lwc1	$f1,-4($a2)
    # Line 1975
    beq	$a7,$a6,.L0db1c310
    # Line 1990
    swc1	$f1,-4($a3)
    # Line 1976
    lwc1	$f5,0($a2)
.L0db1c344:
    c.lt.s	$f9,$f5
    nop
    bc1fl	.L0db1c3f0
    # Line 1977
    c.lt.s	$f5,$f7
    mov.s	$f5,$f9
.L0db1c358:
    # Line 1979
    swc1	$f5,0($a3)
.L0db1c35c:
    # Line 1981
    lwc1	$f6,4($a2)
    c.lt.s	$f8,$f6
    nop
    bc1fl	.L0db1c404
    # Line 1982
    c.lt.s	$f6,$f7
    mov.s	$f6,$f8
.L0db1c374:
    # Line 1984
    swc1	$f6,4($a3)
.L0db1c378:
    # Line 1986
    lwc1	$f4,8($a2)
    c.lt.s	$f10,$f4
    nop
    bc1fl	.L0db1c418
    # Line 1987
    c.lt.s	$f4,$f7
    mov.s	$f4,$f10
.L0db1c390:
    # Line 1989
    swc1	$f4,8($a3)
.L0db1c394:
    # Line 1990
    lwc1	$f2,12($a2)
    swc1	$f2,12($a3)
    # Line 1976
    lwc1	$f5,16($a2)
    c.lt.s	$f9,$f5
    nop
    bc1fl	.L0db1c42c
    # Line 1977
    c.lt.s	$f5,$f7
    mov.s	$f5,$f9
.L0db1c3b4:
    # Line 1979
    swc1	$f5,16($a3)
.L0db1c3b8:
    # Line 1981
    lwc1	$f6,20($a2)
    c.lt.s	$f8,$f6
    nop
    bc1fl	.L0db1c440
    # Line 1982
    c.lt.s	$f6,$f7
    mov.s	$f6,$f8
.L0db1c3d0:
    # Line 1984
    swc1	$f6,20($a3)
.L0db1c3d4:
    # Line 1986
    lwc1	$f4,24($a2)
    c.lt.s	$f10,$f4
    # Line 1990
    addiu	$a2,$a2,32
    # Line 1986
    bc1f	.L0db1c318
    # Line 1990
    addiu	$a3,$a3,32
    # Line 1987
    b	.L0db1c32c
    mov.s	$f4,$f10
.L0db1c3f0:
    nop
    # Line 1977
    bc1fl	.L0db1c35c
    # Line 1979
    swc1	$f5,0($a3)
    b	.L0db1c358
    # Line 1978
    mov.s	$f5,$f7
.L0db1c404:
    nop
    # Line 1982
    bc1fl	.L0db1c378
    # Line 1984
    swc1	$f6,4($a3)
    b	.L0db1c374
    # Line 1983
    mov.s	$f6,$f7
.L0db1c418:
    nop
    # Line 1987
    bc1fl	.L0db1c394
    # Line 1989
    swc1	$f4,8($a3)
    b	.L0db1c390
    # Line 1988
    mov.s	$f4,$f7
.L0db1c42c:
    nop
    # Line 1977
    bc1fl	.L0db1c3b8
    # Line 1979
    swc1	$f5,16($a3)
    b	.L0db1c3b4
    # Line 1978
    mov.s	$f5,$f7
.L0db1c440:
    nop
    # Line 1982
    bc1fl	.L0db1c3d4
    # Line 1984
    swc1	$f6,20($a3)
    b	.L0db1c3d0
    # Line 1983
    mov.s	$f6,$f7
.L0db1c454:
    # Line 1977
    c.lt.s	$f5,$f7
    nop
    bc1fl	.L0db1c2bc
    # Line 1979
    swc1	$f5,0($a3)
    b	.L0db1c2b8
    # Line 1978
    mov.s	$f5,$f7
.L0db1c46c:
    nop
    # Line 1982
    bc1fl	.L0db1c2d8
    # Line 1984
    swc1	$f6,4($a3)
    b	.L0db1c2d4
    # Line 1983
    mov.s	$f6,$f7
.L0db1c480:
    nop
    # Line 1987
    bc1fl	.L0db1c2f4
    # Line 1989
    swc1	$f4,8($a3)
    b	.L0db1c2f0
    # Line 1988
    mov.s	$f4,$f7
.end __glSpanClampRGB

# Function: __glSpanClampRGBA
# Declared: Line 1995 (Source lines: 1997-2033)
# Address: 0x0db1c494 - 0x0db1c73c (Size: 680 bytes, Frame: 0)
.globl __glSpanClampRGBA
.ent __glSpanClampRGBA
__glSpanClampRGBA:
    # Line 2009
    lwc1	$f10,30844($a0)
    # Line 2008
    lwc1	$f8,30812($a0)
    # Line 2007
    lwc1	$f9,30808($a0)
    # Line 2006
    lwc1	$f7,30804($a0)
    # Line 2012
    move	$a6,$zero
    # Line 1997
    lui	$v0,0xe
    # Line 1999
    lw	$a7,184($a1)
    # Line 1997
    addiu	$v0,$v0,8708
    addu	$at,$t9,$v0
    # Line 2012
    blez	$a7,.L0db1c54c
    andi	$v1,$a7,0x1
    move	$a4,$a7
    beqz	$v1,.L0db1c540
    mtc1	$zero,$f6
    # Line 2013
    lwc1	$f4,0($a2)
    c.lt.s	$f7,$f4
    nop
    bc1f	.L0db1c6e4
    # Line 2012
    addiu	$a6,$a6,1
    # Line 2014
    mov.s	$f4,$f7
.L0db1c4e4:
    # Line 2016
    swc1	$f4,0($a3)
.L0db1c4e8:
    # Line 2018
    lwc1	$f5,4($a2)
    c.lt.s	$f9,$f5
    nop
    bc1fl	.L0db1c6fc
    # Line 2019
    c.lt.s	$f5,$f6
    mov.s	$f5,$f9
.L0db1c500:
    # Line 2021
    swc1	$f5,4($a3)
.L0db1c504:
    # Line 2023
    lwc1	$f4,8($a2)
    c.lt.s	$f8,$f4
    nop
    bc1fl	.L0db1c710
    # Line 2024
    c.lt.s	$f4,$f6
    mov.s	$f4,$f8
.L0db1c51c:
    # Line 2026
    swc1	$f4,8($a3)
.L0db1c520:
    # Line 2028
    lwc1	$f5,12($a2)
    c.lt.s	$f10,$f5
    nop
    bc1f	.L0db1c724
    addiu	$a2,$a2,16
    # Line 2029
    mov.s	$f5,$f10
.L0db1c538:
    # Line 2031
    swc1	$f5,12($a3)
.L0db1c53c:
    addiu	$a3,$a3,16
.L0db1c540:
    sra	$a0,$a4,0x1
    bnezl	$a0,.L0db1c63c
    # Line 2013
    lwc1	$f4,0($a2)
.L0db1c54c:
    # Line 2033
    jr	$ra
    nop
.L0db1c554:
    # Line 2014
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0db1c56c
    # Line 2016
    swc1	$f4,0($a3)
    # Line 2015
    mov.s	$f4,$f6
.L0db1c568:
    # Line 2016
    swc1	$f4,0($a3)
.L0db1c56c:
    # Line 2018
    lwc1	$f5,4($a2)
    c.lt.s	$f9,$f5
    nop
    bc1fl	.L0db1c654
    # Line 2019
    c.lt.s	$f5,$f6
    mov.s	$f5,$f9
.L0db1c584:
    # Line 2021
    swc1	$f5,4($a3)
.L0db1c588:
    # Line 2023
    lwc1	$f4,8($a2)
    c.lt.s	$f8,$f4
    nop
    bc1fl	.L0db1c668
    # Line 2024
    c.lt.s	$f4,$f6
    mov.s	$f4,$f8
.L0db1c5a0:
    # Line 2026
    swc1	$f4,8($a3)
.L0db1c5a4:
    # Line 2028
    lwc1	$f5,12($a2)
    c.lt.s	$f10,$f5
    nop
    bc1fl	.L0db1c67c
    # Line 2029
    c.lt.s	$f5,$f6
    mov.s	$f5,$f10
.L0db1c5bc:
    # Line 2031
    swc1	$f5,12($a3)
.L0db1c5c0:
    # Line 2013
    lwc1	$f4,16($a2)
    c.lt.s	$f7,$f4
    nop
    bc1fl	.L0db1c690
    # Line 2014
    c.lt.s	$f4,$f6
    mov.s	$f4,$f7
.L0db1c5d8:
    # Line 2016
    swc1	$f4,16($a3)
.L0db1c5dc:
    # Line 2018
    lwc1	$f5,20($a2)
    c.lt.s	$f9,$f5
    nop
    bc1fl	.L0db1c6a4
    # Line 2019
    c.lt.s	$f5,$f6
    mov.s	$f5,$f9
.L0db1c5f4:
    # Line 2021
    swc1	$f5,20($a3)
.L0db1c5f8:
    # Line 2023
    lwc1	$f4,24($a2)
    c.lt.s	$f8,$f4
    nop
    bc1fl	.L0db1c6b8
    # Line 2024
    c.lt.s	$f4,$f6
    mov.s	$f4,$f8
.L0db1c610:
    # Line 2026
    swc1	$f4,24($a3)
.L0db1c614:
    # Line 2028
    lwc1	$f5,28($a2)
    c.lt.s	$f10,$f5
    nop
    bc1f	.L0db1c6cc
    addiu	$a2,$a2,32
    # Line 2029
    mov.s	$f5,$f10
.L0db1c62c:
    # Line 2031
    swc1	$f5,28($a3)
.L0db1c630:
    # Line 2012
    beq	$a7,$a6,.L0db1c54c
    # Line 2031
    addiu	$a3,$a3,32
    # Line 2013
    lwc1	$f4,0($a2)
.L0db1c63c:
    c.lt.s	$f7,$f4
    nop
    bc1f	.L0db1c554
    # Line 2012
    addiu	$a6,$a6,2
    # Line 2014
    b	.L0db1c568
    mov.s	$f4,$f7
.L0db1c654:
    nop
    # Line 2019
    bc1fl	.L0db1c588
    # Line 2021
    swc1	$f5,4($a3)
    b	.L0db1c584
    # Line 2020
    mov.s	$f5,$f6
.L0db1c668:
    nop
    # Line 2024
    bc1fl	.L0db1c5a4
    # Line 2026
    swc1	$f4,8($a3)
    b	.L0db1c5a0
    # Line 2025
    mov.s	$f4,$f6
.L0db1c67c:
    nop
    # Line 2029
    bc1fl	.L0db1c5c0
    # Line 2031
    swc1	$f5,12($a3)
    b	.L0db1c5bc
    # Line 2030
    mov.s	$f5,$f6
.L0db1c690:
    nop
    # Line 2014
    bc1fl	.L0db1c5dc
    # Line 2016
    swc1	$f4,16($a3)
    b	.L0db1c5d8
    # Line 2015
    mov.s	$f4,$f6
.L0db1c6a4:
    nop
    # Line 2019
    bc1fl	.L0db1c5f8
    # Line 2021
    swc1	$f5,20($a3)
    b	.L0db1c5f4
    # Line 2020
    mov.s	$f5,$f6
.L0db1c6b8:
    nop
    # Line 2024
    bc1fl	.L0db1c614
    # Line 2026
    swc1	$f4,24($a3)
    b	.L0db1c610
    # Line 2025
    mov.s	$f4,$f6
.L0db1c6cc:
    # Line 2029
    c.lt.s	$f5,$f6
    nop
    bc1fl	.L0db1c630
    # Line 2031
    swc1	$f5,28($a3)
    b	.L0db1c62c
    # Line 2030
    mov.s	$f5,$f6
.L0db1c6e4:
    # Line 2014
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0db1c4e8
    # Line 2016
    swc1	$f4,0($a3)
    b	.L0db1c4e4
    # Line 2015
    mov.s	$f4,$f6
.L0db1c6fc:
    nop
    # Line 2019
    bc1fl	.L0db1c504
    # Line 2021
    swc1	$f5,4($a3)
    b	.L0db1c500
    # Line 2020
    mov.s	$f5,$f6
.L0db1c710:
    nop
    # Line 2024
    bc1fl	.L0db1c520
    # Line 2026
    swc1	$f4,8($a3)
    b	.L0db1c51c
    # Line 2025
    mov.s	$f4,$f6
.L0db1c724:
    # Line 2029
    c.lt.s	$f5,$f6
    nop
    bc1fl	.L0db1c53c
    # Line 2031
    swc1	$f5,12($a3)
    b	.L0db1c538
    # Line 2030
    mov.s	$f5,$f6
.end __glSpanClampRGBA

# Function: __glSpanClampSigned
# Declared: Line 2041 (Source lines: 2043-2058)
# Address: 0x0db1c73c - 0x0db1c7e8 (Size: 172 bytes, Frame: 0)
.globl __glSpanClampSigned
.ent __glSpanClampSigned
__glSpanClampSigned:
    # Line 2046
    lw	$a0,108($a1)
    # Line 2045
    lw	$v1,184($a1)
    # Line 2053
    mult	$v1,$a0
    move	$a5,$zero
    # Line 2043
    lui	$v0,0xe
    addiu	$v0,$v0,8028
    addu	$at,$t9,$v0
    # Line 2053
    mflo	$a6
    blez	$a6,.L0db1c79c
    andi	$a1,$a6,0x1
    move	$a4,$a6
    beqz	$a1,.L0db1c790
    mtc1	$zero,$f5
    # Line 2054
    lwc1	$f4,0($a2)
    c.lt.s	$f4,$f5
    # Line 2053
    addiu	$a5,$a5,1
    # Line 2054
    bc1f	.L0db1c788
    addiu	$a2,$a2,4
    # Line 2055
    mov.s	$f4,$f5
.L0db1c788:
    # Line 2056
    swc1	$f4,0($a3)
    addiu	$a3,$a3,4
.L0db1c790:
    sra	$v0,$a4,0x1
    bnezl	$v0,.L0db1c7d0
    # Line 2054
    lwc1	$f4,0($a2)
.L0db1c79c:
    # Line 2058
    jr	$ra
    nop
.L0db1c7a4:
    # Line 2056
    swc1	$f4,0($a3)
    # Line 2054
    lwc1	$f4,4($a2)
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0db1c7c0
    addiu	$a2,$a2,8
    # Line 2055
    mov.s	$f4,$f5
.L0db1c7c0:
    # Line 2056
    swc1	$f4,4($a3)
    # Line 2053
    beq	$a6,$a5,.L0db1c79c
    # Line 2056
    addiu	$a3,$a3,8
    # Line 2054
    lwc1	$f4,0($a2)
.L0db1c7d0:
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0db1c7a4
    # Line 2053
    addiu	$a5,$a5,2
    b	.L0db1c7a4
    # Line 2055
    mov.s	$f4,$f5
.end __glSpanClampSigned

# Function: __glSpanExpandRed
# Declared: Line 2064 (Source lines: 2066-2081)
# Address: 0x0db1c7e8 - 0x0db1c8dc (Size: 244 bytes, Frame: 0)
.globl __glSpanExpandRed
.ent __glSpanExpandRed
__glSpanExpandRed:
    # Line 2073
    lwc1	$f5,30804($a0)
    # Line 2072
    lwc1	$f4,30844($a0)
    # Line 2075
    move	$a7,$zero
    # Line 2066
    lui	$v0,0xe
    # Line 2068
    lw	$a6,180($a1)
    # Line 2066
    addiu	$v0,$v0,7856
    addu	$at,$t9,$v0
    # Line 2075
    blez	$a6,.L0db1c8d4
    andi	$a4,$a6,0x3
    move	$a5,$a6
    beqz	$a4,.L0db1c844
    mtc1	$zero,$f6
.L0db1c818:
    # Line 2076
    lwc1	$f0,0($a2)
    mul.s	$f0,$f0,$f5
    # Line 2075
    addiu	$a7,$a7,1
    # Line 2079
    addiu	$a3,$a3,16
    # Line 2076
    addiu	$a2,$a2,4
    addi	$a4,$a4,-1
    swc1	$f0,-16($a3)
    # Line 2077
    swc1	$f6,-12($a3)
    # Line 2078
    swc1	$f6,-8($a3)
    bnez	$a4,.L0db1c818
    # Line 2079
    swc1	$f4,-4($a3)
.L0db1c844:
    move	$t2,$a7
    sra	$v1,$a5,0x2
    move	$t0,$a3
    beqz	$v1,.L0db1c8d4
    move	$t1,$a2
    move	$a3,$t0
    move	$a2,$t2
    move	$a4,$t1
.L0db1c864:
    # Line 2076
    lwc1	$f0,0($a4)
    mul.s	$f0,$f0,$f5
    swc1	$f0,0($a3)
    # Line 2077
    swc1	$f6,4($a3)
    # Line 2078
    swc1	$f6,8($a3)
    # Line 2079
    swc1	$f4,12($a3)
    # Line 2076
    lwc1	$f3,4($a4)
    mul.s	$f3,$f3,$f5
    swc1	$f3,16($a3)
    # Line 2077
    swc1	$f6,20($a3)
    # Line 2078
    swc1	$f6,24($a3)
    # Line 2079
    swc1	$f4,28($a3)
    # Line 2076
    lwc1	$f2,8($a4)
    mul.s	$f2,$f2,$f5
    swc1	$f2,32($a3)
    # Line 2077
    swc1	$f6,36($a3)
    # Line 2078
    swc1	$f6,40($a3)
    # Line 2079
    swc1	$f4,44($a3)
    # Line 2076
    lwc1	$f1,12($a4)
    mul.s	$f1,$f1,$f5
    # Line 2079
    addiu	$a3,$a3,64
    # Line 2076
    addiu	$a4,$a4,16
    # Line 2075
    addiu	$a2,$a2,4
    # Line 2076
    swc1	$f1,-16($a3)
    # Line 2077
    swc1	$f6,-12($a3)
    # Line 2078
    swc1	$f6,-8($a3)
    # Line 2075
    bne	$a6,$a2,.L0db1c864
    # Line 2079
    swc1	$f4,-4($a3)
.L0db1c8d4:
    # Line 2081
    jr	$ra
    nop
.end __glSpanExpandRed

# Function: __glSpanExpandGreen
# Declared: Line 2086 (Source lines: 2088-2103)
# Address: 0x0db1c8dc - 0x0db1c9d0 (Size: 244 bytes, Frame: 0)
.globl __glSpanExpandGreen
.ent __glSpanExpandGreen
__glSpanExpandGreen:
    # Line 2095
    lwc1	$f5,30844($a0)
    # Line 2094
    lwc1	$f4,30808($a0)
    # Line 2097
    move	$a7,$zero
    # Line 2088
    lui	$v0,0xe
    # Line 2090
    lw	$a6,180($a1)
    # Line 2088
    addiu	$v0,$v0,7612
    addu	$at,$t9,$v0
    # Line 2097
    blez	$a6,.L0db1c9c8
    andi	$a4,$a6,0x3
    move	$a5,$a6
    beqz	$a4,.L0db1c938
    mtc1	$zero,$f6
.L0db1c90c:
    # Line 2098
    swc1	$f6,0($a3)
    # Line 2099
    lwc1	$f0,0($a2)
    mul.s	$f0,$f0,$f4
    # Line 2097
    addiu	$a7,$a7,1
    # Line 2101
    addiu	$a3,$a3,16
    # Line 2099
    addiu	$a2,$a2,4
    addi	$a4,$a4,-1
    swc1	$f0,-12($a3)
    # Line 2100
    swc1	$f6,-8($a3)
    bnez	$a4,.L0db1c90c
    # Line 2101
    swc1	$f5,-4($a3)
.L0db1c938:
    move	$t2,$a7
    move	$t1,$a3
    move	$t0,$a2
    sra	$v1,$a5,0x2
    beqz	$v1,.L0db1c9c8
    move	$a4,$t0
    move	$a2,$t2
    move	$a3,$t1
.L0db1c958:
    # Line 2098
    swc1	$f6,0($a3)
    # Line 2099
    lwc1	$f0,0($a4)
    mul.s	$f0,$f0,$f4
    swc1	$f0,4($a3)
    # Line 2100
    swc1	$f6,8($a3)
    # Line 2101
    swc1	$f5,12($a3)
    # Line 2098
    swc1	$f6,16($a3)
    # Line 2099
    lwc1	$f3,4($a4)
    mul.s	$f3,$f3,$f4
    swc1	$f3,20($a3)
    # Line 2100
    swc1	$f6,24($a3)
    # Line 2101
    swc1	$f5,28($a3)
    # Line 2098
    swc1	$f6,32($a3)
    # Line 2099
    lwc1	$f2,8($a4)
    mul.s	$f2,$f2,$f4
    swc1	$f2,36($a3)
    # Line 2100
    swc1	$f6,40($a3)
    # Line 2101
    swc1	$f5,44($a3)
    # Line 2098
    swc1	$f6,48($a3)
    # Line 2099
    lwc1	$f1,12($a4)
    mul.s	$f1,$f1,$f4
    # Line 2101
    addiu	$a3,$a3,64
    # Line 2099
    addiu	$a4,$a4,16
    # Line 2097
    addiu	$a2,$a2,4
    # Line 2099
    swc1	$f1,-12($a3)
    # Line 2100
    swc1	$f6,-8($a3)
    # Line 2097
    bne	$a6,$a2,.L0db1c958
    # Line 2101
    swc1	$f5,-4($a3)
.L0db1c9c8:
    # Line 2103
    jr	$ra
    nop
.end __glSpanExpandGreen

# Function: __glSpanExpandBlue
# Declared: Line 2108 (Source lines: 2110-2125)
# Address: 0x0db1c9d0 - 0x0db1cac4 (Size: 244 bytes, Frame: 0)
.globl __glSpanExpandBlue
.ent __glSpanExpandBlue
__glSpanExpandBlue:
    # Line 2117
    lwc1	$f5,30844($a0)
    # Line 2116
    lwc1	$f4,30812($a0)
    # Line 2119
    move	$a7,$zero
    # Line 2110
    lui	$v0,0xe
    # Line 2112
    lw	$a6,180($a1)
    # Line 2110
    addiu	$v0,$v0,7368
    addu	$at,$t9,$v0
    # Line 2119
    blez	$a6,.L0db1cabc
    andi	$a4,$a6,0x3
    move	$a5,$a6
    beqz	$a4,.L0db1ca2c
    mtc1	$zero,$f6
.L0db1ca00:
    # Line 2120
    swc1	$f6,0($a3)
    # Line 2121
    swc1	$f6,4($a3)
    # Line 2122
    lwc1	$f0,0($a2)
    mul.s	$f0,$f0,$f4
    # Line 2119
    addiu	$a7,$a7,1
    # Line 2123
    addiu	$a3,$a3,16
    # Line 2122
    addiu	$a2,$a2,4
    addi	$a4,$a4,-1
    swc1	$f0,-8($a3)
    bnez	$a4,.L0db1ca00
    # Line 2123
    swc1	$f5,-4($a3)
.L0db1ca2c:
    move	$t2,$a7
    move	$t1,$a3
    move	$t0,$a2
    sra	$v1,$a5,0x2
    beqz	$v1,.L0db1cabc
    move	$a4,$t0
    move	$a2,$t2
    move	$a3,$t1
.L0db1ca4c:
    # Line 2120
    swc1	$f6,0($a3)
    # Line 2121
    swc1	$f6,4($a3)
    # Line 2122
    lwc1	$f0,0($a4)
    mul.s	$f0,$f0,$f4
    swc1	$f0,8($a3)
    # Line 2123
    swc1	$f5,12($a3)
    # Line 2120
    swc1	$f6,16($a3)
    # Line 2121
    swc1	$f6,20($a3)
    # Line 2122
    lwc1	$f3,4($a4)
    mul.s	$f3,$f3,$f4
    swc1	$f3,24($a3)
    # Line 2123
    swc1	$f5,28($a3)
    # Line 2120
    swc1	$f6,32($a3)
    # Line 2121
    swc1	$f6,36($a3)
    # Line 2122
    lwc1	$f2,8($a4)
    mul.s	$f2,$f2,$f4
    swc1	$f2,40($a3)
    # Line 2123
    swc1	$f5,44($a3)
    # Line 2120
    swc1	$f6,48($a3)
    # Line 2121
    swc1	$f6,52($a3)
    # Line 2122
    lwc1	$f1,12($a4)
    mul.s	$f1,$f1,$f4
    # Line 2123
    addiu	$a3,$a3,64
    # Line 2122
    addiu	$a4,$a4,16
    # Line 2119
    addiu	$a2,$a2,4
    # Line 2122
    swc1	$f1,-8($a3)
    # Line 2119
    bne	$a6,$a2,.L0db1ca4c
    # Line 2123
    swc1	$f5,-4($a3)
.L0db1cabc:
    # Line 2125
    jr	$ra
    nop
.end __glSpanExpandBlue

# Function: __glSpanExpandAlpha
# Declared: Line 2130 (Source lines: 2132-2146)
# Address: 0x0db1cac4 - 0x0db1cbb4 (Size: 240 bytes, Frame: 0)
.globl __glSpanExpandAlpha
.ent __glSpanExpandAlpha
__glSpanExpandAlpha:
    # Line 2138
    lwc1	$f4,30844($a0)
    # Line 2140
    move	$a7,$zero
    # Line 2132
    lui	$v0,0xe
    # Line 2134
    lw	$a6,180($a1)
    # Line 2132
    addiu	$v0,$v0,7124
    addu	$at,$t9,$v0
    # Line 2140
    blez	$a6,.L0db1cbac
    andi	$a4,$a6,0x3
    move	$a5,$a6
    beqz	$a4,.L0db1cb1c
    mtc1	$zero,$f5
.L0db1caf0:
    # Line 2141
    swc1	$f5,0($a3)
    # Line 2142
    swc1	$f5,4($a3)
    # Line 2143
    swc1	$f5,8($a3)
    # Line 2144
    lwc1	$f0,0($a2)
    mul.s	$f0,$f0,$f4
    # Line 2140
    addiu	$a7,$a7,1
    # Line 2144
    addiu	$a3,$a3,16
    addiu	$a2,$a2,4
    addi	$a4,$a4,-1
    bnez	$a4,.L0db1caf0
    swc1	$f0,-4($a3)
.L0db1cb1c:
    move	$t2,$a7
    move	$t1,$a3
    move	$t0,$a2
    sra	$v1,$a5,0x2
    beqz	$v1,.L0db1cbac
    move	$a4,$t0
    move	$a2,$t2
    move	$a3,$t1
.L0db1cb3c:
    # Line 2141
    swc1	$f5,0($a3)
    # Line 2142
    swc1	$f5,4($a3)
    # Line 2143
    swc1	$f5,8($a3)
    # Line 2144
    lwc1	$f0,0($a4)
    mul.s	$f0,$f0,$f4
    swc1	$f0,12($a3)
    # Line 2141
    swc1	$f5,16($a3)
    # Line 2142
    swc1	$f5,20($a3)
    # Line 2143
    swc1	$f5,24($a3)
    # Line 2144
    lwc1	$f3,4($a4)
    mul.s	$f3,$f3,$f4
    swc1	$f3,28($a3)
    # Line 2141
    swc1	$f5,32($a3)
    # Line 2142
    swc1	$f5,36($a3)
    # Line 2143
    swc1	$f5,40($a3)
    # Line 2144
    lwc1	$f2,8($a4)
    mul.s	$f2,$f2,$f4
    swc1	$f2,44($a3)
    # Line 2141
    swc1	$f5,48($a3)
    # Line 2142
    swc1	$f5,52($a3)
    # Line 2143
    swc1	$f5,56($a3)
    # Line 2144
    lwc1	$f1,12($a4)
    mul.s	$f1,$f1,$f4
    addiu	$a3,$a3,64
    addiu	$a4,$a4,16
    # Line 2140
    addiu	$a2,$a2,4
    bne	$a6,$a2,.L0db1cb3c
    # Line 2144
    swc1	$f1,-4($a3)
.L0db1cbac:
    # Line 2146
    jr	$ra
    nop
.end __glSpanExpandAlpha

# Function: __glSpanExpandRGB
# Declared: Line 2151 (Source lines: 2155-2175)
# Address: 0x0db1cbb4 - 0x0db1cc9c (Size: 232 bytes, Frame: 0)
.globl __glSpanExpandRGB
.ent __glSpanExpandRGB
__glSpanExpandRGB:
    # Line 2164
    lwc1	$f6,30812($a0)
    # Line 2163
    lwc1	$f7,30808($a0)
    # Line 2162
    lwc1	$f4,30804($a0)
    # Line 2155
    lw	$a5,180($a1)
    # Line 2160
    lwc1	$f5,30844($a0)
    # Line 2166
    move	$a6,$zero
    blez	$a5,.L0db1cc94
    move	$a1,$a5
    andi	$at,$a5,0x1
    beqz	$at,.L0db1cc18
    move	$t0,$a6
    # Line 2168
    lwc1	$f1,4($a2)
    # Line 2167
    lwc1	$f2,0($a2)
    # Line 2168
    mul.s	$f1,$f1,$f7
    # Line 2169
    lwc1	$f0,8($a2)
    # Line 2167
    mul.s	$f2,$f2,$f4
    # Line 2169
    mul.s	$f0,$f0,$f6
    # Line 2166
    addiu	$a6,$a6,1
    # Line 2173
    addiu	$a3,$a3,16
    # Line 2169
    addiu	$a2,$a2,12
    # Line 2173
    swc1	$f5,-4($a3)
    # Line 2170
    swc1	$f2,-16($a3)
    # Line 2171
    swc1	$f1,-12($a3)
    # Line 2172
    swc1	$f0,-8($a3)
    move	$t0,$a6
.L0db1cc18:
    move	$a4,$a2
    move	$a7,$a3
    sra	$v0,$a1,0x1
    beqz	$v0,.L0db1cc94
    move	$a3,$a7
    move	$a1,$t0
    move	$a2,$a4
.L0db1cc34:
    # Line 2167
    lwc1	$f0,0($a2)
    mul.s	$f0,$f0,$f4
    # Line 2168
    lwc1	$f3,4($a2)
    mul.s	$f3,$f3,$f7
    # Line 2169
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f6
    # Line 2170
    swc1	$f0,0($a3)
    # Line 2171
    swc1	$f3,4($a3)
    # Line 2172
    swc1	$f2,8($a3)
    # Line 2173
    swc1	$f5,12($a3)
    # Line 2167
    lwc1	$f1,12($a2)
    mul.s	$f1,$f1,$f4
    # Line 2168
    lwc1	$f0,16($a2)
    mul.s	$f0,$f0,$f7
    # Line 2169
    lwc1	$f3,20($a2)
    mul.s	$f3,$f3,$f6
    # Line 2173
    addiu	$a3,$a3,32
    # Line 2169
    addiu	$a2,$a2,24
    # Line 2166
    addiu	$a1,$a1,2
    # Line 2170
    swc1	$f1,-16($a3)
    # Line 2171
    swc1	$f0,-12($a3)
    # Line 2172
    swc1	$f3,-8($a3)
    # Line 2166
    bne	$a5,$a1,.L0db1cc34
    # Line 2173
    swc1	$f5,-4($a3)
.L0db1cc94:
    # Line 2175
    jr	$ra
    nop
.end __glSpanExpandRGB

# Function: __glSpanExpandLuminance
# Declared: Line 2180 (Source lines: 2184-2202)
# Address: 0x0db1cc9c - 0x0db1cdb4 (Size: 280 bytes, Frame: 0)
.globl __glSpanExpandLuminance
.ent __glSpanExpandLuminance
__glSpanExpandLuminance:
    # Line 2193
    lwc1	$f6,30812($a0)
    # Line 2192
    lwc1	$f7,30808($a0)
    # Line 2191
    lwc1	$f4,30804($a0)
    # Line 2184
    lw	$a5,180($a1)
    # Line 2189
    lwc1	$f5,30844($a0)
    # Line 2195
    move	$a6,$zero
    blez	$a5,.L0db1cdac
    move	$a4,$a5
    andi	$a1,$a5,0x3
    beqz	$a1,.L0db1cd00
    move	$a7,$a3
.L0db1ccc8:
    # Line 2196
    lwc1	$f0,0($a2)
    # Line 2197
    mul.s	$f2,$f4,$f0
    # Line 2198
    mul.s	$f1,$f7,$f0
    # Line 2199
    mul.s	$f0,$f6,$f0
    # Line 2195
    addiu	$a6,$a6,1
    # Line 2200
    addiu	$a3,$a3,16
    # Line 2196
    addiu	$a2,$a2,4
    addi	$a1,$a1,-1
    # Line 2197
    swc1	$f2,-16($a3)
    # Line 2198
    swc1	$f1,-12($a3)
    # Line 2199
    swc1	$f0,-8($a3)
    bnez	$a1,.L0db1ccc8
    # Line 2200
    swc1	$f5,-4($a3)
    move	$a7,$a3
.L0db1cd00:
    sra	$at,$a4,0x2
    move	$t1,$a6
    beqz	$at,.L0db1cdac
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db1cd1c:
    # Line 2196
    lwc1	$f0,0($a3)
    # Line 2197
    mul.s	$f2,$f4,$f0
    # Line 2198
    mul.s	$f1,$f7,$f0
    # Line 2199
    mul.s	$f0,$f6,$f0
    # Line 2197
    swc1	$f2,0($a2)
    # Line 2198
    swc1	$f1,4($a2)
    # Line 2199
    swc1	$f0,8($a2)
    # Line 2200
    swc1	$f5,12($a2)
    # Line 2196
    lwc1	$f3,4($a3)
    # Line 2197
    mul.s	$f1,$f4,$f3
    # Line 2198
    mul.s	$f0,$f7,$f3
    # Line 2199
    mul.s	$f3,$f6,$f3
    # Line 2197
    swc1	$f1,16($a2)
    # Line 2198
    swc1	$f0,20($a2)
    # Line 2199
    swc1	$f3,24($a2)
    # Line 2200
    swc1	$f5,28($a2)
    # Line 2196
    lwc1	$f2,8($a3)
    # Line 2197
    mul.s	$f0,$f4,$f2
    # Line 2198
    mul.s	$f3,$f7,$f2
    # Line 2199
    mul.s	$f2,$f6,$f2
    # Line 2197
    swc1	$f0,32($a2)
    # Line 2198
    swc1	$f3,36($a2)
    # Line 2199
    swc1	$f2,40($a2)
    # Line 2200
    swc1	$f5,44($a2)
    # Line 2196
    lwc1	$f1,12($a3)
    # Line 2197
    mul.s	$f3,$f4,$f1
    # Line 2198
    mul.s	$f2,$f7,$f1
    # Line 2199
    mul.s	$f1,$f6,$f1
    # Line 2200
    addiu	$a2,$a2,64
    # Line 2196
    addiu	$a3,$a3,16
    # Line 2195
    addiu	$a1,$a1,4
    # Line 2197
    swc1	$f3,-16($a2)
    # Line 2198
    swc1	$f2,-12($a2)
    # Line 2199
    swc1	$f1,-8($a2)
    # Line 2195
    bne	$a5,$a1,.L0db1cd1c
    # Line 2200
    swc1	$f5,-4($a2)
.L0db1cdac:
    # Line 2202
    jr	$ra
    nop
.end __glSpanExpandLuminance

# Function: __glSpanExpandLuminanceAlpha
# Declared: Line 2207 (Source lines: 2211-2229)
# Address: 0x0db1cdb4 - 0x0db1ce9c (Size: 232 bytes, Frame: 0)
.globl __glSpanExpandLuminanceAlpha
.ent __glSpanExpandLuminanceAlpha
__glSpanExpandLuminanceAlpha:
    # Line 2220
    lwc1	$f6,30812($a0)
    # Line 2219
    lwc1	$f7,30808($a0)
    # Line 2218
    lwc1	$f4,30804($a0)
    # Line 2211
    lw	$a5,180($a1)
    # Line 2216
    lwc1	$f5,30844($a0)
    # Line 2222
    move	$a6,$zero
    blez	$a5,.L0db1ce94
    move	$a1,$a5
    andi	$at,$a5,0x1
    beqz	$at,.L0db1ce18
    move	$t0,$a6
    # Line 2223
    lwc1	$f1,0($a2)
    # Line 2224
    mul.s	$f3,$f4,$f1
    # Line 2225
    mul.s	$f2,$f7,$f1
    # Line 2226
    mul.s	$f1,$f6,$f1
    swc1	$f1,8($a3)
    # Line 2225
    swc1	$f2,4($a3)
    # Line 2224
    swc1	$f3,0($a3)
    # Line 2227
    lwc1	$f0,4($a2)
    mul.s	$f0,$f0,$f5
    # Line 2222
    addiu	$a6,$a6,1
    # Line 2227
    addiu	$a3,$a3,16
    addiu	$a2,$a2,8
    swc1	$f0,-4($a3)
    move	$t0,$a6
.L0db1ce18:
    move	$a4,$a2
    move	$a7,$a3
    sra	$v0,$a1,0x1
    beqz	$v0,.L0db1ce94
    move	$a3,$a7
    move	$a1,$t0
    move	$a2,$a4
.L0db1ce34:
    # Line 2223
    lwc1	$f1,0($a2)
    # Line 2224
    mul.s	$f3,$f4,$f1
    # Line 2225
    mul.s	$f2,$f7,$f1
    # Line 2226
    mul.s	$f1,$f6,$f1
    # Line 2224
    swc1	$f3,0($a3)
    # Line 2225
    swc1	$f2,4($a3)
    # Line 2226
    swc1	$f1,8($a3)
    # Line 2227
    lwc1	$f0,4($a2)
    mul.s	$f0,$f0,$f5
    swc1	$f0,12($a3)
    # Line 2223
    lwc1	$f3,8($a2)
    # Line 2224
    mul.s	$f1,$f4,$f3
    # Line 2225
    mul.s	$f0,$f7,$f3
    # Line 2226
    mul.s	$f3,$f6,$f3
    # Line 2224
    swc1	$f1,16($a3)
    # Line 2225
    swc1	$f0,20($a3)
    # Line 2226
    swc1	$f3,24($a3)
    # Line 2227
    lwc1	$f2,12($a2)
    mul.s	$f2,$f2,$f5
    addiu	$a3,$a3,32
    addiu	$a2,$a2,16
    # Line 2222
    addiu	$a1,$a1,2
    bne	$a5,$a1,.L0db1ce34
    # Line 2227
    swc1	$f2,-4($a3)
.L0db1ce94:
    # Line 2229
    jr	$ra
    nop
.end __glSpanExpandLuminanceAlpha

# Function: __glSpanExpandRedAlpha
# Declared: Line 2234 (Source lines: 2236-2256)
# Address: 0x0db1ce9c - 0x0db1cfb8 (Size: 284 bytes, Frame: 0)
.globl __glSpanExpandRedAlpha
.ent __glSpanExpandRedAlpha
__glSpanExpandRedAlpha:
    # Line 2246
    lwc1	$f5,30804($a0)
    # Line 2244
    lwc1	$f4,30844($a0)
    # Line 2249
    move	$a7,$zero
    # Line 2236
    lui	$v0,0xe
    # Line 2238
    lw	$a6,180($a1)
    # Line 2236
    addiu	$v0,$v0,6140
    addu	$at,$t9,$v0
    # Line 2249
    blez	$a6,.L0db1cfb0
    andi	$a4,$a6,0x3
    move	$a5,$a6
    beqz	$a4,.L0db1cf00
    mtc1	$zero,$f6
.L0db1cecc:
    # Line 2251
    lwc1	$f1,0($a2)
    mul.s	$f1,$f1,$f5
    swc1	$f1,0($a3)
    # Line 2252
    swc1	$f6,4($a3)
    # Line 2253
    swc1	$f6,8($a3)
    # Line 2254
    lwc1	$f0,4($a2)
    mul.s	$f0,$f0,$f4
    # Line 2249
    addiu	$a7,$a7,1
    # Line 2254
    addiu	$a3,$a3,16
    addiu	$a2,$a2,8
    addi	$a4,$a4,-1
    bnez	$a4,.L0db1cecc
    swc1	$f0,-4($a3)
.L0db1cf00:
    move	$t2,$a7
    sra	$v1,$a5,0x2
    move	$t0,$a3
    beqz	$v1,.L0db1cfb0
    move	$t1,$a2
    move	$a3,$t0
    move	$a2,$t2
    move	$a4,$t1
.L0db1cf20:
    # Line 2251
    lwc1	$f1,0($a4)
    mul.s	$f1,$f1,$f5
    swc1	$f1,0($a3)
    # Line 2252
    swc1	$f6,4($a3)
    # Line 2253
    swc1	$f6,8($a3)
    # Line 2254
    lwc1	$f0,4($a4)
    mul.s	$f0,$f0,$f4
    swc1	$f0,12($a3)
    # Line 2251
    lwc1	$f3,8($a4)
    mul.s	$f3,$f3,$f5
    swc1	$f3,16($a3)
    # Line 2252
    swc1	$f6,20($a3)
    # Line 2253
    swc1	$f6,24($a3)
    # Line 2254
    lwc1	$f2,12($a4)
    mul.s	$f2,$f2,$f4
    swc1	$f2,28($a3)
    # Line 2251
    lwc1	$f1,16($a4)
    mul.s	$f1,$f1,$f5
    swc1	$f1,32($a3)
    # Line 2252
    swc1	$f6,36($a3)
    # Line 2253
    swc1	$f6,40($a3)
    # Line 2254
    lwc1	$f0,20($a4)
    mul.s	$f0,$f0,$f4
    swc1	$f0,44($a3)
    # Line 2251
    lwc1	$f3,24($a4)
    mul.s	$f3,$f3,$f5
    swc1	$f3,48($a3)
    # Line 2252
    swc1	$f6,52($a3)
    # Line 2253
    swc1	$f6,56($a3)
    # Line 2254
    lwc1	$f2,28($a4)
    mul.s	$f2,$f2,$f4
    addiu	$a3,$a3,64
    addiu	$a4,$a4,32
    # Line 2249
    addiu	$a2,$a2,4
    bne	$a6,$a2,.L0db1cf20
    # Line 2254
    swc1	$f2,-4($a3)
.L0db1cfb0:
    # Line 2256
    jr	$ra
    nop
.end __glSpanExpandRedAlpha

# Function: __glSpanExpandIntensity
# Declared: Line 2262 (Source lines: 2266-2284)
# Address: 0x0db1cfb8 - 0x0db1d094 (Size: 220 bytes, Frame: 0)
.globl __glSpanExpandIntensity
.ent __glSpanExpandIntensity
__glSpanExpandIntensity:
    # Line 2275
    lwc1	$f6,30812($a0)
    # Line 2274
    lwc1	$f7,30808($a0)
    # Line 2273
    lwc1	$f4,30804($a0)
    # Line 2266
    lw	$a5,180($a1)
    # Line 2271
    lwc1	$f5,30844($a0)
    # Line 2277
    move	$a6,$zero
    blez	$a5,.L0db1d08c
    move	$a1,$a5
    andi	$at,$a5,0x1
    beqz	$at,.L0db1d018
    move	$t0,$a6
    # Line 2278
    lwc1	$f0,0($a2)
    # Line 2279
    mul.s	$f3,$f4,$f0
    # Line 2280
    mul.s	$f2,$f7,$f0
    # Line 2281
    mul.s	$f1,$f6,$f0
    # Line 2282
    mul.s	$f0,$f5,$f0
    # Line 2277
    addiu	$a6,$a6,1
    # Line 2282
    addiu	$a3,$a3,16
    # Line 2278
    addiu	$a2,$a2,4
    # Line 2279
    swc1	$f3,-16($a3)
    # Line 2280
    swc1	$f2,-12($a3)
    # Line 2281
    swc1	$f1,-8($a3)
    # Line 2282
    swc1	$f0,-4($a3)
    move	$t0,$a6
.L0db1d018:
    move	$a4,$a2
    move	$a7,$a3
    sra	$v0,$a1,0x1
    beqz	$v0,.L0db1d08c
    move	$a3,$a7
    move	$a1,$t0
    move	$a2,$a4
.L0db1d034:
    # Line 2278
    lwc1	$f2,0($a2)
    # Line 2279
    mul.s	$f1,$f4,$f2
    # Line 2280
    mul.s	$f0,$f7,$f2
    # Line 2281
    mul.s	$f3,$f6,$f2
    # Line 2282
    mul.s	$f2,$f5,$f2
    # Line 2279
    swc1	$f1,0($a3)
    # Line 2280
    swc1	$f0,4($a3)
    # Line 2281
    swc1	$f3,8($a3)
    # Line 2282
    swc1	$f2,12($a3)
    # Line 2278
    lwc1	$f1,4($a2)
    # Line 2279
    mul.s	$f0,$f4,$f1
    # Line 2280
    mul.s	$f3,$f7,$f1
    # Line 2281
    mul.s	$f2,$f6,$f1
    # Line 2282
    addiu	$a3,$a3,32
    mul.s	$f1,$f5,$f1
    # Line 2278
    addiu	$a2,$a2,8
    # Line 2277
    addiu	$a1,$a1,2
    # Line 2279
    swc1	$f0,-16($a3)
    # Line 2280
    swc1	$f3,-12($a3)
    # Line 2281
    swc1	$f2,-8($a3)
    # Line 2277
    bne	$a5,$a1,.L0db1d034
    # Line 2282
    swc1	$f1,-4($a3)
.L0db1d08c:
    # Line 2284
    jr	$ra
    nop
.end __glSpanExpandIntensity

# Function: __glSpanExpandRedNS
# Declared: Line 2290 (Source lines: 2292-2305)
# Address: 0x0db1d094 - 0x0db1d170 (Size: 220 bytes, Frame: 0)
.globl __glSpanExpandRedNS
.ent __glSpanExpandRedNS
__glSpanExpandRedNS:
    # Line 2299
    move	$a6,$zero
    # Line 2292
    lui	$v0,0xe
    # Line 2294
    lw	$a5,180($a1)
    # Line 2292
    addiu	$v0,$v0,5636
    addu	$at,$t9,$v0
    # Line 2299
    blez	$a5,.L0db1d168
    andi	$a4,$a5,0x3
    move	$a7,$a5
    lwc1	$f5,_lit_3f800000
    beqz	$a4,.L0db1d0e8
    mtc1	$zero,$f4
.L0db1d0c0:
    addiu	$a6,$a6,1
    # Line 2303
    addiu	$a3,$a3,16
    # Line 2300
    lwc1	$f0,0($a2)
    addiu	$a2,$a2,4
    addi	$a4,$a4,-1
    swc1	$f0,-16($a3)
    # Line 2301
    swc1	$f4,-12($a3)
    # Line 2302
    swc1	$f4,-8($a3)
    bnez	$a4,.L0db1d0c0
    # Line 2303
    swc1	$f5,-4($a3)
.L0db1d0e8:
    move	$t2,$a6
    sra	$v1,$a7,0x2
    move	$t0,$a3
    beqz	$v1,.L0db1d168
    move	$t1,$a2
    move	$a3,$t0
    move	$a2,$t2
    move	$a4,$t1
.L0db1d108:
    # Line 2300
    lwc1	$f0,0($a4)
    swc1	$f0,0($a3)
    # Line 2301
    swc1	$f4,4($a3)
    # Line 2302
    swc1	$f4,8($a3)
    # Line 2303
    swc1	$f5,12($a3)
    # Line 2300
    lwc1	$f3,4($a4)
    swc1	$f3,16($a3)
    # Line 2301
    swc1	$f4,20($a3)
    # Line 2302
    swc1	$f4,24($a3)
    # Line 2303
    swc1	$f5,28($a3)
    # Line 2300
    lwc1	$f2,8($a4)
    swc1	$f2,32($a3)
    # Line 2301
    swc1	$f4,36($a3)
    # Line 2302
    swc1	$f4,40($a3)
    # Line 2303
    swc1	$f5,44($a3)
    addiu	$a3,$a3,64
    # Line 2300
    lwc1	$f1,12($a4)
    addiu	$a4,$a4,16
    # Line 2299
    addiu	$a2,$a2,4
    # Line 2300
    swc1	$f1,-16($a3)
    # Line 2301
    swc1	$f4,-12($a3)
    # Line 2302
    swc1	$f4,-8($a3)
    # Line 2299
    bne	$a5,$a2,.L0db1d108
    # Line 2303
    swc1	$f5,-4($a3)
.L0db1d168:
    # Line 2305
    jr	$ra
    nop
.end __glSpanExpandRedNS

# Function: __glSpanExpandGreenNS
# Declared: Line 2311 (Source lines: 2313-2326)
# Address: 0x0db1d170 - 0x0db1d24c (Size: 220 bytes, Frame: 0)
.globl __glSpanExpandGreenNS
.ent __glSpanExpandGreenNS
__glSpanExpandGreenNS:
    # Line 2320
    move	$a6,$zero
    # Line 2313
    lui	$v0,0xe
    # Line 2315
    lw	$a5,180($a1)
    # Line 2313
    addiu	$v0,$v0,5416
    addu	$at,$t9,$v0
    # Line 2320
    blez	$a5,.L0db1d244
    andi	$a4,$a5,0x3
    move	$a7,$a5
    lwc1	$f5,_lit_3f800000
    beqz	$a4,.L0db1d1c4
    mtc1	$zero,$f4
.L0db1d19c:
    addiu	$a6,$a6,1
    # Line 2321
    swc1	$f4,0($a3)
    # Line 2324
    addiu	$a3,$a3,16
    # Line 2322
    lwc1	$f0,0($a2)
    addiu	$a2,$a2,4
    addi	$a4,$a4,-1
    swc1	$f0,-12($a3)
    # Line 2323
    swc1	$f4,-8($a3)
    bnez	$a4,.L0db1d19c
    # Line 2324
    swc1	$f5,-4($a3)
.L0db1d1c4:
    move	$t2,$a6
    move	$t1,$a3
    move	$t0,$a2
    sra	$v1,$a7,0x2
    beqz	$v1,.L0db1d244
    move	$a4,$t0
    move	$a2,$t2
    move	$a3,$t1
.L0db1d1e4:
    # Line 2321
    swc1	$f4,0($a3)
    # Line 2322
    lwc1	$f0,0($a4)
    swc1	$f0,4($a3)
    # Line 2323
    swc1	$f4,8($a3)
    # Line 2324
    swc1	$f5,12($a3)
    # Line 2321
    swc1	$f4,16($a3)
    # Line 2322
    lwc1	$f3,4($a4)
    swc1	$f3,20($a3)
    # Line 2323
    swc1	$f4,24($a3)
    # Line 2324
    swc1	$f5,28($a3)
    # Line 2321
    swc1	$f4,32($a3)
    # Line 2322
    lwc1	$f2,8($a4)
    swc1	$f2,36($a3)
    # Line 2323
    swc1	$f4,40($a3)
    # Line 2324
    swc1	$f5,44($a3)
    # Line 2321
    swc1	$f4,48($a3)
    # Line 2324
    addiu	$a3,$a3,64
    # Line 2322
    lwc1	$f1,12($a4)
    addiu	$a4,$a4,16
    # Line 2320
    addiu	$a2,$a2,4
    # Line 2322
    swc1	$f1,-12($a3)
    # Line 2323
    swc1	$f4,-8($a3)
    # Line 2320
    bne	$a5,$a2,.L0db1d1e4
    # Line 2324
    swc1	$f5,-4($a3)
.L0db1d244:
    # Line 2326
    jr	$ra
    nop
.end __glSpanExpandGreenNS

# Function: __glSpanExpandBlueNS
# Declared: Line 2332 (Source lines: 2334-2347)
# Address: 0x0db1d24c - 0x0db1d328 (Size: 220 bytes, Frame: 0)
.globl __glSpanExpandBlueNS
.ent __glSpanExpandBlueNS
__glSpanExpandBlueNS:
    # Line 2341
    move	$a6,$zero
    # Line 2334
    lui	$v0,0xe
    # Line 2336
    lw	$a5,180($a1)
    # Line 2334
    addiu	$v0,$v0,5196
    addu	$at,$t9,$v0
    # Line 2341
    blez	$a5,.L0db1d320
    andi	$a4,$a5,0x3
    move	$a7,$a5
    lwc1	$f5,_lit_3f800000
    beqz	$a4,.L0db1d2a0
    mtc1	$zero,$f4
.L0db1d278:
    addiu	$a6,$a6,1
    # Line 2342
    swc1	$f4,0($a3)
    # Line 2343
    swc1	$f4,4($a3)
    # Line 2345
    addiu	$a3,$a3,16
    # Line 2344
    lwc1	$f0,0($a2)
    addiu	$a2,$a2,4
    addi	$a4,$a4,-1
    swc1	$f0,-8($a3)
    bnez	$a4,.L0db1d278
    # Line 2345
    swc1	$f5,-4($a3)
.L0db1d2a0:
    move	$t2,$a6
    move	$t1,$a3
    move	$t0,$a2
    sra	$v1,$a7,0x2
    beqz	$v1,.L0db1d320
    move	$a4,$t0
    move	$a2,$t2
    move	$a3,$t1
.L0db1d2c0:
    # Line 2342
    swc1	$f4,0($a3)
    # Line 2343
    swc1	$f4,4($a3)
    # Line 2344
    lwc1	$f0,0($a4)
    swc1	$f0,8($a3)
    # Line 2345
    swc1	$f5,12($a3)
    # Line 2342
    swc1	$f4,16($a3)
    # Line 2343
    swc1	$f4,20($a3)
    # Line 2344
    lwc1	$f3,4($a4)
    swc1	$f3,24($a3)
    # Line 2345
    swc1	$f5,28($a3)
    # Line 2342
    swc1	$f4,32($a3)
    # Line 2343
    swc1	$f4,36($a3)
    # Line 2344
    lwc1	$f2,8($a4)
    swc1	$f2,40($a3)
    # Line 2345
    swc1	$f5,44($a3)
    # Line 2342
    swc1	$f4,48($a3)
    # Line 2343
    swc1	$f4,52($a3)
    # Line 2345
    addiu	$a3,$a3,64
    # Line 2344
    lwc1	$f1,12($a4)
    addiu	$a4,$a4,16
    # Line 2341
    addiu	$a2,$a2,4
    # Line 2344
    swc1	$f1,-8($a3)
    # Line 2341
    bne	$a5,$a2,.L0db1d2c0
    # Line 2345
    swc1	$f5,-4($a3)
.L0db1d320:
    # Line 2347
    jr	$ra
    nop
.end __glSpanExpandBlueNS

# Function: __glSpanExpandAlphaNS
# Declared: Line 2353 (Source lines: 2355-2368)
# Address: 0x0db1d328 - 0x0db1d400 (Size: 216 bytes, Frame: 0)
.globl __glSpanExpandAlphaNS
.ent __glSpanExpandAlphaNS
__glSpanExpandAlphaNS:
    # Line 2362
    move	$a6,$zero
    # Line 2355
    lui	$v0,0xe
    # Line 2357
    lw	$a5,180($a1)
    # Line 2355
    addiu	$v0,$v0,4976
    addu	$at,$t9,$v0
    # Line 2362
    blez	$a5,.L0db1d3f8
    andi	$a4,$a5,0x3
    move	$a7,$a5
    beqz	$a4,.L0db1d378
    mtc1	$zero,$f4
.L0db1d350:
    addiu	$a6,$a6,1
    # Line 2366
    addiu	$a3,$a3,16
    # Line 2363
    swc1	$f4,-16($a3)
    # Line 2364
    swc1	$f4,-12($a3)
    # Line 2365
    swc1	$f4,-8($a3)
    # Line 2366
    addiu	$a2,$a2,4
    lwc1	$f0,-4($a2)
    addi	$a4,$a4,-1
    bnez	$a4,.L0db1d350
    swc1	$f0,-4($a3)
.L0db1d378:
    move	$t2,$a6
    move	$t1,$a3
    move	$t0,$a2
    sra	$v1,$a7,0x2
    beqz	$v1,.L0db1d3f8
    move	$a4,$t0
    move	$a2,$t2
    move	$a3,$t1
.L0db1d398:
    # Line 2363
    swc1	$f4,0($a3)
    # Line 2364
    swc1	$f4,4($a3)
    # Line 2365
    swc1	$f4,8($a3)
    # Line 2366
    lwc1	$f0,0($a4)
    swc1	$f0,12($a3)
    # Line 2363
    swc1	$f4,16($a3)
    # Line 2364
    swc1	$f4,20($a3)
    # Line 2365
    swc1	$f4,24($a3)
    # Line 2366
    lwc1	$f3,4($a4)
    swc1	$f3,28($a3)
    # Line 2363
    swc1	$f4,32($a3)
    # Line 2364
    swc1	$f4,36($a3)
    # Line 2365
    swc1	$f4,40($a3)
    # Line 2366
    lwc1	$f2,8($a4)
    addiu	$a3,$a3,64
    swc1	$f2,-20($a3)
    # Line 2363
    swc1	$f4,-16($a3)
    # Line 2364
    swc1	$f4,-12($a3)
    # Line 2365
    swc1	$f4,-8($a3)
    # Line 2366
    addiu	$a4,$a4,16
    lwc1	$f1,-4($a4)
    # Line 2362
    addiu	$a2,$a2,4
    bne	$a5,$a2,.L0db1d398
    # Line 2366
    swc1	$f1,-4($a3)
.L0db1d3f8:
    # Line 2368
    jr	$ra
    nop
.end __glSpanExpandAlphaNS

# Function: __glSpanExpandRGBNS
# Declared: Line 2374 (Source lines: 2376-2388)
# Address: 0x0db1d400 - 0x0db1d500 (Size: 256 bytes, Frame: 0)
.globl __glSpanExpandRGBNS
.ent __glSpanExpandRGBNS
__glSpanExpandRGBNS:
    # Line 2382
    move	$a6,$zero
    # Line 2376
    lui	$v0,0xe
    # Line 2378
    lw	$a5,180($a1)
    # Line 2376
    addiu	$v0,$v0,4760
    addu	$at,$t9,$v0
    # Line 2382
    blez	$a5,.L0db1d4f8
    andi	$a4,$a5,0x3
    move	$a7,$a5
    beqz	$a4,.L0db1d458
    lwc1	$f4,_lit_3f800000
.L0db1d428:
    # Line 2383
    lwc1	$f2,0($a2)
    swc1	$f2,0($a3)
    # Line 2384
    lwc1	$f1,4($a2)
    # Line 2382
    addiu	$a6,$a6,1
    # Line 2384
    swc1	$f1,4($a3)
    # Line 2386
    addiu	$a3,$a3,16
    # Line 2385
    lwc1	$f0,8($a2)
    addiu	$a2,$a2,12
    addi	$a4,$a4,-1
    swc1	$f0,-8($a3)
    bnez	$a4,.L0db1d428
    # Line 2386
    swc1	$f4,-4($a3)
.L0db1d458:
    move	$t2,$a6
    sra	$v1,$a7,0x2
    move	$t0,$a3
    beqz	$v1,.L0db1d4f8
    move	$t1,$a2
    move	$a3,$t0
    move	$a2,$t2
    move	$a4,$t1
.L0db1d478:
    # Line 2383
    lwc1	$f2,0($a4)
    swc1	$f2,0($a3)
    # Line 2384
    lwc1	$f1,4($a4)
    swc1	$f1,4($a3)
    # Line 2385
    lwc1	$f0,8($a4)
    swc1	$f0,8($a3)
    # Line 2386
    swc1	$f4,12($a3)
    # Line 2383
    lwc1	$f3,12($a4)
    swc1	$f3,16($a3)
    # Line 2384
    lwc1	$f2,16($a4)
    swc1	$f2,20($a3)
    # Line 2385
    lwc1	$f1,20($a4)
    swc1	$f1,24($a3)
    # Line 2386
    swc1	$f4,28($a3)
    # Line 2383
    lwc1	$f0,24($a4)
    swc1	$f0,32($a3)
    # Line 2384
    lwc1	$f3,28($a4)
    swc1	$f3,36($a3)
    # Line 2385
    lwc1	$f2,32($a4)
    swc1	$f2,40($a3)
    # Line 2386
    swc1	$f4,44($a3)
    # Line 2383
    lwc1	$f1,36($a4)
    swc1	$f1,48($a3)
    # Line 2384
    lwc1	$f0,40($a4)
    swc1	$f0,52($a3)
    # Line 2386
    addiu	$a3,$a3,64
    # Line 2385
    lwc1	$f3,44($a4)
    addiu	$a4,$a4,48
    # Line 2382
    addiu	$a2,$a2,4
    # Line 2385
    swc1	$f3,-8($a3)
    # Line 2382
    bne	$a5,$a2,.L0db1d478
    # Line 2386
    swc1	$f4,-4($a3)
.L0db1d4f8:
    # Line 2388
    jr	$ra
    nop
.end __glSpanExpandRGBNS

# Function: __glSpanExpandLuminanceNS
# Declared: Line 2394 (Source lines: 2396-2410)
# Address: 0x0db1d500 - 0x0db1d5d8 (Size: 216 bytes, Frame: 0)
.globl __glSpanExpandLuminanceNS
.ent __glSpanExpandLuminanceNS
__glSpanExpandLuminanceNS:
    # Line 2403
    move	$a6,$zero
    # Line 2396
    lui	$v0,0xe
    # Line 2398
    lw	$a5,180($a1)
    # Line 2396
    addiu	$v0,$v0,4504
    addu	$at,$t9,$v0
    # Line 2403
    blez	$a5,.L0db1d5d0
    andi	$a4,$a5,0x3
    move	$a7,$a5
    beqz	$a4,.L0db1d550
    lwc1	$f4,_lit_3f800000
.L0db1d528:
    addiu	$a6,$a6,1
    # Line 2408
    addiu	$a3,$a3,16
    # Line 2404
    lwc1	$f0,0($a2)
    addiu	$a2,$a2,4
    addi	$a4,$a4,-1
    # Line 2405
    swc1	$f0,-16($a3)
    # Line 2406
    swc1	$f0,-12($a3)
    # Line 2407
    swc1	$f0,-8($a3)
    bnez	$a4,.L0db1d528
    # Line 2408
    swc1	$f4,-4($a3)
.L0db1d550:
    move	$t2,$a6
    sra	$v1,$a7,0x2
    move	$t0,$a3
    beqz	$v1,.L0db1d5d0
    move	$t1,$a2
    move	$a3,$t0
    move	$a2,$t2
    move	$a4,$t1
.L0db1d570:
    # Line 2404
    lwc1	$f0,0($a4)
    # Line 2405
    swc1	$f0,0($a3)
    # Line 2406
    swc1	$f0,4($a3)
    # Line 2407
    swc1	$f0,8($a3)
    # Line 2408
    swc1	$f4,12($a3)
    # Line 2404
    lwc1	$f3,4($a4)
    # Line 2405
    swc1	$f3,16($a3)
    # Line 2406
    swc1	$f3,20($a3)
    # Line 2407
    swc1	$f3,24($a3)
    # Line 2408
    swc1	$f4,28($a3)
    # Line 2404
    lwc1	$f2,8($a4)
    # Line 2405
    swc1	$f2,32($a3)
    # Line 2406
    swc1	$f2,36($a3)
    # Line 2407
    swc1	$f2,40($a3)
    # Line 2408
    swc1	$f4,44($a3)
    addiu	$a3,$a3,64
    # Line 2404
    lwc1	$f1,12($a4)
    addiu	$a4,$a4,16
    # Line 2403
    addiu	$a2,$a2,4
    # Line 2405
    swc1	$f1,-16($a3)
    # Line 2406
    swc1	$f1,-12($a3)
    # Line 2407
    swc1	$f1,-8($a3)
    # Line 2403
    bne	$a5,$a2,.L0db1d570
    # Line 2408
    swc1	$f4,-4($a3)
.L0db1d5d0:
    # Line 2410
    jr	$ra
    nop
.end __glSpanExpandLuminanceNS

# Function: __glSpanExpandLuminanceAlphaNS
# Declared: Line 2416 (Source lines: 2420-2432)
# Address: 0x0db1d5d8 - 0x0db1d6b8 (Size: 224 bytes, Frame: 0)
.globl __glSpanExpandLuminanceAlphaNS
.ent __glSpanExpandLuminanceAlphaNS
__glSpanExpandLuminanceAlphaNS:
    # Line 2420
    lw	$a4,180($a1)
    # Line 2425
    move	$a5,$zero
    blez	$a4,.L0db1d6b0
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db1d624
    move	$a7,$a3
.L0db1d5f4:
    # Line 2426
    lwc1	$f1,0($a2)
    # Line 2425
    addiu	$a5,$a5,1
    # Line 2430
    addiu	$a3,$a3,16
    # Line 2427
    swc1	$f1,-16($a3)
    # Line 2428
    swc1	$f1,-12($a3)
    # Line 2429
    swc1	$f1,-8($a3)
    # Line 2430
    addiu	$a2,$a2,8
    lwc1	$f0,-4($a2)
    addi	$a1,$a1,-1
    bnez	$a1,.L0db1d5f4
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0db1d624:
    sra	$at,$a6,0x2
    move	$t1,$a5
    beqz	$at,.L0db1d6b0
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db1d640:
    # Line 2426
    lwc1	$f1,0($a3)
    # Line 2427
    swc1	$f1,0($a2)
    # Line 2428
    swc1	$f1,4($a2)
    # Line 2429
    swc1	$f1,8($a2)
    # Line 2430
    lwc1	$f0,4($a3)
    swc1	$f0,12($a2)
    # Line 2426
    lwc1	$f3,8($a3)
    # Line 2427
    swc1	$f3,16($a2)
    # Line 2428
    swc1	$f3,20($a2)
    # Line 2429
    swc1	$f3,24($a2)
    # Line 2430
    lwc1	$f2,12($a3)
    swc1	$f2,28($a2)
    # Line 2426
    lwc1	$f1,16($a3)
    # Line 2427
    swc1	$f1,32($a2)
    # Line 2428
    swc1	$f1,36($a2)
    # Line 2429
    swc1	$f1,40($a2)
    # Line 2430
    lwc1	$f0,20($a3)
    swc1	$f0,44($a2)
    # Line 2426
    lwc1	$f3,24($a3)
    # Line 2430
    addiu	$a2,$a2,64
    # Line 2427
    swc1	$f3,-16($a2)
    # Line 2428
    swc1	$f3,-12($a2)
    # Line 2429
    swc1	$f3,-8($a2)
    # Line 2430
    addiu	$a3,$a3,32
    lwc1	$f2,-4($a3)
    # Line 2425
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db1d640
    # Line 2430
    swc1	$f2,-4($a2)
.L0db1d6b0:
    # Line 2432
    jr	$ra
    nop
.end __glSpanExpandLuminanceAlphaNS

# Function: __glSpanExpandRedAlphaNS
# Declared: Line 2438 (Source lines: 2440-2457)
# Address: 0x0db1d6b8 - 0x0db1d7a4 (Size: 236 bytes, Frame: 0)
.globl __glSpanExpandRedAlphaNS
.ent __glSpanExpandRedAlphaNS
__glSpanExpandRedAlphaNS:
    # Line 2450
    move	$a6,$zero
    # Line 2440
    lui	$v0,0xe
    # Line 2442
    lw	$a5,180($a1)
    # Line 2440
    addiu	$v0,$v0,4064
    addu	$at,$t9,$v0
    # Line 2450
    blez	$a5,.L0db1d79c
    andi	$a4,$a5,0x3
    move	$a7,$a5
    beqz	$a4,.L0db1d70c
    mtc1	$zero,$f4
.L0db1d6e0:
    # Line 2452
    lwc1	$f1,0($a2)
    # Line 2450
    addiu	$a6,$a6,1
    # Line 2455
    addiu	$a3,$a3,16
    # Line 2452
    swc1	$f1,-16($a3)
    # Line 2453
    swc1	$f4,-12($a3)
    # Line 2454
    swc1	$f4,-8($a3)
    # Line 2455
    addiu	$a2,$a2,8
    lwc1	$f0,-4($a2)
    addi	$a4,$a4,-1
    bnez	$a4,.L0db1d6e0
    swc1	$f0,-4($a3)
.L0db1d70c:
    move	$t2,$a6
    sra	$v1,$a7,0x2
    move	$t0,$a3
    beqz	$v1,.L0db1d79c
    move	$t1,$a2
    move	$a3,$t0
    move	$a2,$t2
    move	$a4,$t1
.L0db1d72c:
    # Line 2452
    lwc1	$f1,0($a4)
    swc1	$f1,0($a3)
    # Line 2453
    swc1	$f4,4($a3)
    # Line 2454
    swc1	$f4,8($a3)
    # Line 2455
    lwc1	$f0,4($a4)
    swc1	$f0,12($a3)
    # Line 2452
    lwc1	$f3,8($a4)
    swc1	$f3,16($a3)
    # Line 2453
    swc1	$f4,20($a3)
    # Line 2454
    swc1	$f4,24($a3)
    # Line 2455
    lwc1	$f2,12($a4)
    swc1	$f2,28($a3)
    # Line 2452
    lwc1	$f1,16($a4)
    swc1	$f1,32($a3)
    # Line 2453
    swc1	$f4,36($a3)
    # Line 2454
    swc1	$f4,40($a3)
    # Line 2455
    lwc1	$f0,20($a4)
    swc1	$f0,44($a3)
    # Line 2452
    lwc1	$f3,24($a4)
    # Line 2455
    addiu	$a3,$a3,64
    # Line 2452
    swc1	$f3,-16($a3)
    # Line 2453
    swc1	$f4,-12($a3)
    # Line 2454
    swc1	$f4,-8($a3)
    # Line 2455
    addiu	$a4,$a4,32
    lwc1	$f2,-4($a4)
    # Line 2450
    addiu	$a2,$a2,4
    bne	$a5,$a2,.L0db1d72c
    # Line 2455
    swc1	$f2,-4($a3)
.L0db1d79c:
    # Line 2457
    jr	$ra
    nop
.end __glSpanExpandRedAlphaNS

# Function: __glSpanExpandIntensityNS
# Declared: Line 2464 (Source lines: 2468-2480)
# Address: 0x0db1d7a4 - 0x0db1d870 (Size: 204 bytes, Frame: 0)
.globl __glSpanExpandIntensityNS
.ent __glSpanExpandIntensityNS
__glSpanExpandIntensityNS:
    # Line 2468
    lw	$a4,180($a1)
    # Line 2473
    move	$a5,$zero
    blez	$a4,.L0db1d868
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db1d7ec
    move	$a7,$a3
.L0db1d7c0:
    addiu	$a5,$a5,1
    # Line 2478
    addiu	$a3,$a3,16
    # Line 2474
    lwc1	$f0,0($a2)
    addiu	$a2,$a2,4
    addi	$a1,$a1,-1
    # Line 2475
    swc1	$f0,-16($a3)
    # Line 2476
    swc1	$f0,-12($a3)
    # Line 2477
    swc1	$f0,-8($a3)
    bnez	$a1,.L0db1d7c0
    # Line 2478
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0db1d7ec:
    sra	$at,$a6,0x2
    move	$t1,$a5
    beqz	$at,.L0db1d868
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db1d808:
    # Line 2474
    lwc1	$f0,0($a3)
    # Line 2475
    swc1	$f0,0($a2)
    # Line 2476
    swc1	$f0,4($a2)
    # Line 2477
    swc1	$f0,8($a2)
    # Line 2478
    swc1	$f0,12($a2)
    # Line 2474
    lwc1	$f3,4($a3)
    # Line 2475
    swc1	$f3,16($a2)
    # Line 2476
    swc1	$f3,20($a2)
    # Line 2477
    swc1	$f3,24($a2)
    # Line 2478
    swc1	$f3,28($a2)
    # Line 2474
    lwc1	$f2,8($a3)
    # Line 2475
    swc1	$f2,32($a2)
    # Line 2476
    swc1	$f2,36($a2)
    # Line 2477
    swc1	$f2,40($a2)
    # Line 2478
    swc1	$f2,44($a2)
    addiu	$a2,$a2,64
    # Line 2474
    lwc1	$f1,12($a3)
    addiu	$a3,$a3,16
    # Line 2473
    addiu	$a1,$a1,4
    # Line 2475
    swc1	$f1,-16($a2)
    # Line 2476
    swc1	$f1,-12($a2)
    # Line 2477
    swc1	$f1,-8($a2)
    # Line 2473
    bne	$a4,$a1,.L0db1d808
    # Line 2478
    swc1	$f1,-4($a2)
.L0db1d868:
    # Line 2480
    jr	$ra
    nop
.end __glSpanExpandIntensityNS

# Function: __glSpanZeroFillAlpha
# Declared: Line 2487 (Source lines: 2489-2501)
# Address: 0x0db1d870 - 0x0db1d970 (Size: 256 bytes, Frame: 0)
.globl __glSpanZeroFillAlpha
.ent __glSpanZeroFillAlpha
__glSpanZeroFillAlpha:
    # Line 2495
    move	$a6,$zero
    # Line 2489
    lui	$v0,0xe
    # Line 2491
    lw	$a5,180($a1)
    # Line 2489
    addiu	$v0,$v0,3624
    addu	$at,$t9,$v0
    # Line 2495
    blez	$a5,.L0db1d968
    andi	$a4,$a5,0x3
    move	$a7,$a5
    beqz	$a4,.L0db1d8c8
    mtc1	$zero,$f4
.L0db1d898:
    # Line 2496
    lwc1	$f2,0($a2)
    swc1	$f2,0($a3)
    # Line 2497
    lwc1	$f1,4($a2)
    # Line 2495
    addiu	$a6,$a6,1
    # Line 2497
    swc1	$f1,4($a3)
    # Line 2499
    addiu	$a2,$a2,16
    # Line 2498
    lwc1	$f0,-8($a2)
    # Line 2499
    addiu	$a3,$a3,16
    addi	$a4,$a4,-1
    # Line 2498
    swc1	$f0,-8($a3)
    bnez	$a4,.L0db1d898
    # Line 2499
    swc1	$f4,-4($a3)
.L0db1d8c8:
    move	$t2,$a6
    sra	$v1,$a7,0x2
    move	$t0,$a3
    beqz	$v1,.L0db1d968
    move	$t1,$a2
    move	$a4,$t0
    move	$a2,$t2
    move	$a3,$t1
.L0db1d8e8:
    # Line 2496
    lwc1	$f2,0($a3)
    swc1	$f2,0($a4)
    # Line 2497
    lwc1	$f1,4($a3)
    swc1	$f1,4($a4)
    # Line 2498
    lwc1	$f0,8($a3)
    swc1	$f0,8($a4)
    # Line 2499
    swc1	$f4,12($a4)
    # Line 2496
    lwc1	$f3,16($a3)
    swc1	$f3,16($a4)
    # Line 2497
    lwc1	$f2,20($a3)
    swc1	$f2,20($a4)
    # Line 2498
    lwc1	$f1,24($a3)
    swc1	$f1,24($a4)
    # Line 2499
    swc1	$f4,28($a4)
    # Line 2496
    lwc1	$f0,32($a3)
    swc1	$f0,32($a4)
    # Line 2497
    lwc1	$f3,36($a3)
    swc1	$f3,36($a4)
    # Line 2498
    lwc1	$f2,40($a3)
    swc1	$f2,40($a4)
    # Line 2499
    swc1	$f4,44($a4)
    # Line 2496
    lwc1	$f1,48($a3)
    swc1	$f1,48($a4)
    # Line 2497
    lwc1	$f0,52($a3)
    swc1	$f0,52($a4)
    # Line 2499
    addiu	$a3,$a3,64
    # Line 2498
    lwc1	$f3,-8($a3)
    # Line 2499
    addiu	$a4,$a4,64
    # Line 2495
    addiu	$a2,$a2,4
    # Line 2498
    swc1	$f3,-8($a4)
    # Line 2495
    bne	$a5,$a2,.L0db1d8e8
    # Line 2499
    swc1	$f4,-4($a4)
.L0db1d968:
    # Line 2501
    jr	$ra
    nop
.end __glSpanZeroFillAlpha

# Function: __glSpanScaleRGBA
# Declared: Line 2508 (Source lines: 2516-2534)
# Address: 0x0db1d970 - 0x0db1da70 (Size: 256 bytes, Frame: 0)
.globl __glSpanScaleRGBA
.ent __glSpanScaleRGBA
__glSpanScaleRGBA:
    # Line 2523
    lwc1	$f6,30844($a0)
    # Line 2522
    lwc1	$f7,30812($a0)
    # Line 2521
    lwc1	$f4,30808($a0)
    # Line 2516
    lw	$a5,180($a1)
    # Line 2520
    lwc1	$f5,30804($a0)
    # Line 2524
    move	$a6,$zero
    blez	$a5,.L0db1da68
    move	$a1,$a5
    andi	$at,$a5,0x1
    beqz	$at,.L0db1d9dc
    move	$t0,$a6
    # Line 2526
    lwc1	$f2,4($a2)
    # Line 2527
    lwc1	$f3,0($a2)
    # Line 2526
    mul.s	$f2,$f2,$f4
    # Line 2527
    mul.s	$f3,$f3,$f5
    # Line 2528
    swc1	$f2,4($a3)
    # Line 2527
    swc1	$f3,0($a3)
    # Line 2529
    lwc1	$f1,8($a2)
    # Line 2530
    lwc1	$f0,12($a2)
    # Line 2529
    mul.s	$f1,$f1,$f7
    # Line 2530
    mul.s	$f0,$f0,$f6
    # Line 2524
    addiu	$a6,$a6,1
    # Line 2532
    addiu	$a3,$a3,16
    # Line 2530
    addiu	$a2,$a2,16
    # Line 2531
    swc1	$f1,-8($a3)
    # Line 2532
    swc1	$f0,-4($a3)
    move	$t0,$a6
.L0db1d9dc:
    move	$a4,$a2
    move	$a7,$a3
    sra	$v0,$a1,0x1
    beqz	$v0,.L0db1da68
    move	$a3,$a7
    move	$a1,$t0
    move	$a2,$a4
.L0db1d9f8:
    # Line 2527
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f5
    # Line 2526
    lwc1	$f2,4($a2)
    mul.s	$f2,$f2,$f4
    # Line 2527
    swc1	$f3,0($a3)
    # Line 2528
    swc1	$f2,4($a3)
    # Line 2529
    lwc1	$f1,8($a2)
    mul.s	$f1,$f1,$f7
    # Line 2530
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f6
    # Line 2531
    swc1	$f1,8($a3)
    # Line 2532
    swc1	$f0,12($a3)
    # Line 2527
    lwc1	$f3,16($a2)
    mul.s	$f3,$f3,$f5
    # Line 2526
    lwc1	$f2,20($a2)
    mul.s	$f2,$f2,$f4
    # Line 2527
    swc1	$f3,16($a3)
    # Line 2528
    swc1	$f2,20($a3)
    # Line 2529
    lwc1	$f1,24($a2)
    mul.s	$f1,$f1,$f7
    # Line 2530
    lwc1	$f0,28($a2)
    mul.s	$f0,$f0,$f6
    # Line 2532
    addiu	$a3,$a3,32
    # Line 2530
    addiu	$a2,$a2,32
    # Line 2524
    addiu	$a1,$a1,2
    # Line 2531
    swc1	$f1,-8($a3)
    # Line 2524
    bne	$a5,$a1,.L0db1d9f8
    # Line 2532
    swc1	$f0,-4($a3)
.L0db1da68:
    # Line 2534
    jr	$ra
    nop
.end __glSpanScaleRGBA

# Function: __glSpanScaleABGR
# Declared: Line 2541 (Source lines: 2549-2567)
# Address: 0x0db1da70 - 0x0db1db70 (Size: 256 bytes, Frame: 0)
.globl __glSpanScaleABGR
.ent __glSpanScaleABGR
__glSpanScaleABGR:
    # Line 2556
    lwc1	$f6,30844($a0)
    # Line 2555
    lwc1	$f7,30812($a0)
    # Line 2554
    lwc1	$f4,30808($a0)
    # Line 2549
    lw	$a5,180($a1)
    # Line 2553
    lwc1	$f5,30804($a0)
    # Line 2557
    move	$a6,$zero
    blez	$a5,.L0db1db68
    move	$a1,$a5
    andi	$at,$a5,0x1
    beqz	$at,.L0db1dadc
    move	$t0,$a6
    # Line 2559
    lwc1	$f1,4($a2)
    # Line 2560
    lwc1	$f2,8($a2)
    # Line 2559
    mul.s	$f1,$f1,$f7
    # Line 2562
    lwc1	$f3,12($a2)
    # Line 2560
    mul.s	$f2,$f2,$f4
    # Line 2558
    lwc1	$f0,0($a2)
    # Line 2562
    mul.s	$f3,$f3,$f5
    # Line 2558
    mul.s	$f0,$f0,$f6
    # Line 2557
    addiu	$a6,$a6,1
    # Line 2565
    addiu	$a3,$a3,16
    # Line 2561
    addiu	$a2,$a2,16
    # Line 2562
    swc1	$f3,-16($a3)
    # Line 2563
    swc1	$f2,-12($a3)
    # Line 2564
    swc1	$f1,-8($a3)
    # Line 2565
    swc1	$f0,-4($a3)
    move	$t0,$a6
.L0db1dadc:
    move	$a4,$a2
    move	$a7,$a3
    sra	$v0,$a1,0x1
    beqz	$v0,.L0db1db68
    move	$a3,$a7
    move	$a1,$t0
    move	$a2,$a4
.L0db1daf8:
    # Line 2562
    lwc1	$f3,12($a2)
    mul.s	$f3,$f3,$f5
    # Line 2560
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f4
    # Line 2559
    lwc1	$f1,4($a2)
    mul.s	$f1,$f1,$f7
    # Line 2558
    lwc1	$f0,0($a2)
    mul.s	$f0,$f0,$f6
    # Line 2562
    swc1	$f3,0($a3)
    # Line 2563
    swc1	$f2,4($a3)
    # Line 2564
    swc1	$f1,8($a3)
    # Line 2565
    swc1	$f0,12($a3)
    # Line 2562
    lwc1	$f3,28($a2)
    mul.s	$f3,$f3,$f5
    # Line 2560
    lwc1	$f2,24($a2)
    mul.s	$f2,$f2,$f4
    # Line 2559
    lwc1	$f1,20($a2)
    mul.s	$f1,$f1,$f7
    # Line 2558
    lwc1	$f0,16($a2)
    # Line 2565
    addiu	$a3,$a3,32
    # Line 2558
    mul.s	$f0,$f0,$f6
    # Line 2561
    addiu	$a2,$a2,32
    # Line 2557
    addiu	$a1,$a1,2
    # Line 2562
    swc1	$f3,-16($a3)
    # Line 2563
    swc1	$f2,-12($a3)
    # Line 2564
    swc1	$f1,-8($a3)
    # Line 2557
    bne	$a5,$a1,.L0db1daf8
    # Line 2565
    swc1	$f0,-4($a3)
.L0db1db68:
    # Line 2567
    jr	$ra
    nop
.end __glSpanScaleABGR

# Function: __glSpanPreReorderABGR
# Declared: Line 2574 (Source lines: 2578-2593)
# Address: 0x0db1db70 - 0x0db1dc78 (Size: 264 bytes, Frame: 0)
.globl __glSpanPreReorderABGR
.ent __glSpanPreReorderABGR
__glSpanPreReorderABGR:
    # Line 2578
    lw	$a4,180($a1)
    # Line 2583
    move	$a5,$zero
    blez	$a4,.L0db1dc70
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db1dbc4
    move	$a7,$a3
.L0db1db8c:
    addiu	$a5,$a5,1
    # Line 2591
    addiu	$a3,$a3,16
    # Line 2587
    addiu	$a2,$a2,16
    addi	$a1,$a1,-1
    # Line 2584
    lwc1	$f0,-16($a2)
    # Line 2588
    lwc1	$f3,-4($a2)
    # Line 2586
    lwc1	$f2,-8($a2)
    # Line 2585
    lwc1	$f1,-12($a2)
    # Line 2588
    swc1	$f3,-16($a3)
    # Line 2589
    swc1	$f2,-12($a3)
    # Line 2590
    swc1	$f1,-8($a3)
    bnez	$a1,.L0db1db8c
    # Line 2591
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0db1dbc4:
    sra	$at,$a6,0x2
    move	$t1,$a5
    beqz	$at,.L0db1dc70
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db1dbe0:
    # Line 2584
    lwc1	$f0,0($a3)
    # Line 2588
    lwc1	$f3,12($a3)
    # Line 2586
    lwc1	$f2,8($a3)
    # Line 2585
    lwc1	$f1,4($a3)
    # Line 2588
    swc1	$f3,0($a2)
    # Line 2589
    swc1	$f2,4($a2)
    # Line 2590
    swc1	$f1,8($a2)
    # Line 2591
    swc1	$f0,12($a2)
    addiu	$a2,$a2,64
    # Line 2584
    lwc1	$f0,16($a3)
    # Line 2588
    lwc1	$f3,28($a3)
    # Line 2586
    lwc1	$f2,24($a3)
    # Line 2585
    lwc1	$f1,20($a3)
    # Line 2588
    swc1	$f3,-48($a2)
    # Line 2589
    swc1	$f2,-44($a2)
    # Line 2590
    swc1	$f1,-40($a2)
    # Line 2591
    swc1	$f0,-36($a2)
    # Line 2587
    addiu	$a3,$a3,64
    # Line 2584
    lwc1	$f0,-32($a3)
    # Line 2588
    lwc1	$f3,-20($a3)
    # Line 2586
    lwc1	$f2,-24($a3)
    # Line 2585
    lwc1	$f1,-28($a3)
    # Line 2588
    swc1	$f3,-32($a2)
    # Line 2589
    swc1	$f2,-28($a2)
    # Line 2590
    swc1	$f1,-24($a2)
    # Line 2591
    swc1	$f0,-20($a2)
    # Line 2583
    addiu	$a1,$a1,4
    # Line 2584
    lwc1	$f0,-16($a3)
    # Line 2588
    lwc1	$f3,-4($a3)
    # Line 2586
    lwc1	$f2,-8($a3)
    # Line 2585
    lwc1	$f1,-12($a3)
    # Line 2588
    swc1	$f3,-16($a2)
    # Line 2589
    swc1	$f2,-12($a2)
    # Line 2590
    swc1	$f1,-8($a2)
    # Line 2583
    bne	$a4,$a1,.L0db1dbe0
    # Line 2591
    swc1	$f0,-4($a2)
.L0db1dc70:
    # Line 2593
    jr	$ra
    nop
.end __glSpanPreReorderABGR

# Function: __glSpanPreUnscaleRGBA
# Declared: Line 2600 (Source lines: 2608-2626)
# Address: 0x0db1dc78 - 0x0db1dd78 (Size: 256 bytes, Frame: 0)
.globl __glSpanPreUnscaleRGBA
.ent __glSpanPreUnscaleRGBA
__glSpanPreUnscaleRGBA:
    # Line 2615
    lwc1	$f6,30864($a0)
    # Line 2614
    lwc1	$f7,30860($a0)
    # Line 2613
    lwc1	$f4,30856($a0)
    # Line 2608
    lw	$a5,180($a1)
    # Line 2612
    lwc1	$f5,30852($a0)
    # Line 2616
    move	$a6,$zero
    blez	$a5,.L0db1dd70
    move	$a1,$a5
    andi	$at,$a5,0x1
    beqz	$at,.L0db1dce4
    move	$t0,$a6
    # Line 2618
    lwc1	$f2,4($a2)
    # Line 2619
    lwc1	$f3,0($a2)
    # Line 2618
    mul.s	$f2,$f2,$f4
    # Line 2619
    mul.s	$f3,$f3,$f5
    # Line 2620
    swc1	$f2,4($a3)
    # Line 2619
    swc1	$f3,0($a3)
    # Line 2621
    lwc1	$f1,8($a2)
    # Line 2622
    lwc1	$f0,12($a2)
    # Line 2621
    mul.s	$f1,$f1,$f7
    # Line 2622
    mul.s	$f0,$f0,$f6
    # Line 2616
    addiu	$a6,$a6,1
    # Line 2624
    addiu	$a3,$a3,16
    # Line 2622
    addiu	$a2,$a2,16
    # Line 2623
    swc1	$f1,-8($a3)
    # Line 2624
    swc1	$f0,-4($a3)
    move	$t0,$a6
.L0db1dce4:
    move	$a4,$a2
    move	$a7,$a3
    sra	$v0,$a1,0x1
    beqz	$v0,.L0db1dd70
    move	$a3,$a7
    move	$a1,$t0
    move	$a2,$a4
.L0db1dd00:
    # Line 2619
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f5
    # Line 2618
    lwc1	$f2,4($a2)
    mul.s	$f2,$f2,$f4
    # Line 2619
    swc1	$f3,0($a3)
    # Line 2620
    swc1	$f2,4($a3)
    # Line 2621
    lwc1	$f1,8($a2)
    mul.s	$f1,$f1,$f7
    # Line 2622
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f6
    # Line 2623
    swc1	$f1,8($a3)
    # Line 2624
    swc1	$f0,12($a3)
    # Line 2619
    lwc1	$f3,16($a2)
    mul.s	$f3,$f3,$f5
    # Line 2618
    lwc1	$f2,20($a2)
    mul.s	$f2,$f2,$f4
    # Line 2619
    swc1	$f3,16($a3)
    # Line 2620
    swc1	$f2,20($a3)
    # Line 2621
    lwc1	$f1,24($a2)
    mul.s	$f1,$f1,$f7
    # Line 2622
    lwc1	$f0,28($a2)
    mul.s	$f0,$f0,$f6
    # Line 2624
    addiu	$a3,$a3,32
    # Line 2622
    addiu	$a2,$a2,32
    # Line 2616
    addiu	$a1,$a1,2
    # Line 2623
    swc1	$f1,-8($a3)
    # Line 2616
    bne	$a5,$a1,.L0db1dd00
    # Line 2624
    swc1	$f0,-4($a3)
.L0db1dd70:
    # Line 2626
    jr	$ra
    nop
.end __glSpanPreUnscaleRGBA

# Function: __glSpanPostUnscaleRGBA
# Declared: Line 2634 (Source lines: 2642-2660)
# Address: 0x0db1dd78 - 0x0db1de78 (Size: 256 bytes, Frame: 0)
.globl __glSpanPostUnscaleRGBA
.ent __glSpanPostUnscaleRGBA
__glSpanPostUnscaleRGBA:
    # Line 2649
    lwc1	$f6,30864($a0)
    # Line 2648
    lwc1	$f7,30860($a0)
    # Line 2647
    lwc1	$f4,30856($a0)
    # Line 2642
    lw	$a5,184($a1)
    # Line 2646
    lwc1	$f5,30852($a0)
    # Line 2650
    move	$a6,$zero
    blez	$a5,.L0db1de70
    move	$a1,$a5
    andi	$at,$a5,0x1
    beqz	$at,.L0db1dde4
    move	$t0,$a6
    # Line 2652
    lwc1	$f2,4($a2)
    # Line 2653
    lwc1	$f3,0($a2)
    # Line 2652
    mul.s	$f2,$f2,$f4
    # Line 2653
    mul.s	$f3,$f3,$f5
    # Line 2654
    swc1	$f2,4($a3)
    # Line 2653
    swc1	$f3,0($a3)
    # Line 2655
    lwc1	$f1,8($a2)
    # Line 2656
    lwc1	$f0,12($a2)
    # Line 2655
    mul.s	$f1,$f1,$f7
    # Line 2656
    mul.s	$f0,$f0,$f6
    # Line 2650
    addiu	$a6,$a6,1
    # Line 2658
    addiu	$a3,$a3,16
    # Line 2656
    addiu	$a2,$a2,16
    # Line 2657
    swc1	$f1,-8($a3)
    # Line 2658
    swc1	$f0,-4($a3)
    move	$t0,$a6
.L0db1dde4:
    move	$a4,$a2
    move	$a7,$a3
    sra	$v0,$a1,0x1
    beqz	$v0,.L0db1de70
    move	$a3,$a7
    move	$a1,$t0
    move	$a2,$a4
.L0db1de00:
    # Line 2653
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f5
    # Line 2652
    lwc1	$f2,4($a2)
    mul.s	$f2,$f2,$f4
    # Line 2653
    swc1	$f3,0($a3)
    # Line 2654
    swc1	$f2,4($a3)
    # Line 2655
    lwc1	$f1,8($a2)
    mul.s	$f1,$f1,$f7
    # Line 2656
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f6
    # Line 2657
    swc1	$f1,8($a3)
    # Line 2658
    swc1	$f0,12($a3)
    # Line 2653
    lwc1	$f3,16($a2)
    mul.s	$f3,$f3,$f5
    # Line 2652
    lwc1	$f2,20($a2)
    mul.s	$f2,$f2,$f4
    # Line 2653
    swc1	$f3,16($a3)
    # Line 2654
    swc1	$f2,20($a3)
    # Line 2655
    lwc1	$f1,24($a2)
    mul.s	$f1,$f1,$f7
    # Line 2656
    lwc1	$f0,28($a2)
    mul.s	$f0,$f0,$f6
    # Line 2658
    addiu	$a3,$a3,32
    # Line 2656
    addiu	$a2,$a2,32
    # Line 2650
    addiu	$a1,$a1,2
    # Line 2657
    swc1	$f1,-8($a3)
    # Line 2650
    bne	$a5,$a1,.L0db1de00
    # Line 2658
    swc1	$f0,-4($a3)
.L0db1de70:
    # Line 2660
    jr	$ra
    nop
.end __glSpanPostUnscaleRGBA

# Function: __glSpanUnscaleABGR
# Declared: Line 2667 (Source lines: 2675-2693)
# Address: 0x0db1de78 - 0x0db1df78 (Size: 256 bytes, Frame: 0)
.globl __glSpanUnscaleABGR
.ent __glSpanUnscaleABGR
__glSpanUnscaleABGR:
    # Line 2682
    lwc1	$f6,30864($a0)
    # Line 2681
    lwc1	$f7,30860($a0)
    # Line 2680
    lwc1	$f4,30856($a0)
    # Line 2675
    lw	$a5,184($a1)
    # Line 2679
    lwc1	$f5,30852($a0)
    # Line 2683
    move	$a6,$zero
    blez	$a5,.L0db1df70
    move	$a1,$a5
    andi	$at,$a5,0x1
    beqz	$at,.L0db1dee4
    move	$t0,$a6
    # Line 2685
    lwc1	$f1,4($a2)
    # Line 2686
    lwc1	$f2,8($a2)
    # Line 2685
    mul.s	$f1,$f1,$f4
    # Line 2688
    lwc1	$f3,12($a2)
    # Line 2686
    mul.s	$f2,$f2,$f7
    # Line 2684
    lwc1	$f0,0($a2)
    # Line 2688
    mul.s	$f3,$f3,$f6
    # Line 2684
    mul.s	$f0,$f0,$f5
    # Line 2683
    addiu	$a6,$a6,1
    # Line 2691
    addiu	$a3,$a3,16
    # Line 2687
    addiu	$a2,$a2,16
    # Line 2688
    swc1	$f3,-16($a3)
    # Line 2689
    swc1	$f2,-12($a3)
    # Line 2690
    swc1	$f1,-8($a3)
    # Line 2691
    swc1	$f0,-4($a3)
    move	$t0,$a6
.L0db1dee4:
    move	$a4,$a2
    move	$a7,$a3
    sra	$v0,$a1,0x1
    beqz	$v0,.L0db1df70
    move	$a3,$a7
    move	$a1,$t0
    move	$a2,$a4
.L0db1df00:
    # Line 2688
    lwc1	$f3,12($a2)
    mul.s	$f3,$f3,$f6
    # Line 2686
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f7
    # Line 2685
    lwc1	$f1,4($a2)
    mul.s	$f1,$f1,$f4
    # Line 2684
    lwc1	$f0,0($a2)
    mul.s	$f0,$f0,$f5
    # Line 2688
    swc1	$f3,0($a3)
    # Line 2689
    swc1	$f2,4($a3)
    # Line 2690
    swc1	$f1,8($a3)
    # Line 2691
    swc1	$f0,12($a3)
    # Line 2688
    lwc1	$f3,28($a2)
    mul.s	$f3,$f3,$f6
    # Line 2686
    lwc1	$f2,24($a2)
    mul.s	$f2,$f2,$f7
    # Line 2685
    lwc1	$f1,20($a2)
    mul.s	$f1,$f1,$f4
    # Line 2684
    lwc1	$f0,16($a2)
    # Line 2691
    addiu	$a3,$a3,32
    # Line 2684
    mul.s	$f0,$f0,$f5
    # Line 2687
    addiu	$a2,$a2,32
    # Line 2683
    addiu	$a1,$a1,2
    # Line 2688
    swc1	$f3,-16($a3)
    # Line 2689
    swc1	$f2,-12($a3)
    # Line 2690
    swc1	$f1,-8($a3)
    # Line 2683
    bne	$a5,$a1,.L0db1df00
    # Line 2691
    swc1	$f0,-4($a3)
.L0db1df70:
    # Line 2693
    jr	$ra
    nop
.end __glSpanUnscaleABGR

# Function: __glSpanGetMemRGBA
# Declared: Line 2705 (Source lines: 2712-2724)
# Address: 0x0db1df78 - 0x0db1e080 (Size: 264 bytes, Frame: 0)
.globl __glSpanGetMemRGBA
.ent __glSpanGetMemRGBA
__glSpanGetMemRGBA:
    # Line 2712
    lw	$a4,180($a1)
    # Line 2717
    move	$a5,$zero
    blez	$a4,.L0db1e078
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db1dfcc
    move	$a7,$a3
.L0db1df94:
    # Line 2718
    lwc1	$f3,0($a2)
    swc1	$f3,0($a3)
    # Line 2719
    lwc1	$f2,4($a2)
    swc1	$f2,4($a3)
    # Line 2720
    lwc1	$f1,8($a2)
    # Line 2717
    addiu	$a5,$a5,1
    # Line 2721
    addiu	$a3,$a3,16
    # Line 2720
    swc1	$f1,-8($a3)
    # Line 2721
    addiu	$a2,$a2,16
    lwc1	$f0,-4($a2)
    addi	$a1,$a1,-1
    bnez	$a1,.L0db1df94
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0db1dfcc:
    sra	$at,$a6,0x2
    move	$t1,$a5
    beqz	$at,.L0db1e078
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db1dfe8:
    # Line 2718
    lwc1	$f3,0($a3)
    swc1	$f3,0($a2)
    # Line 2719
    lwc1	$f2,4($a3)
    swc1	$f2,4($a2)
    # Line 2720
    lwc1	$f1,8($a3)
    swc1	$f1,8($a2)
    # Line 2721
    lwc1	$f0,12($a3)
    swc1	$f0,12($a2)
    # Line 2718
    lwc1	$f3,16($a3)
    swc1	$f3,16($a2)
    # Line 2719
    lwc1	$f2,20($a3)
    swc1	$f2,20($a2)
    # Line 2720
    lwc1	$f1,24($a3)
    swc1	$f1,24($a2)
    # Line 2721
    lwc1	$f0,28($a3)
    swc1	$f0,28($a2)
    # Line 2718
    lwc1	$f3,32($a3)
    swc1	$f3,32($a2)
    # Line 2719
    lwc1	$f2,36($a3)
    swc1	$f2,36($a2)
    # Line 2720
    lwc1	$f1,40($a3)
    swc1	$f1,40($a2)
    # Line 2721
    lwc1	$f0,44($a3)
    swc1	$f0,44($a2)
    # Line 2718
    lwc1	$f3,48($a3)
    swc1	$f3,48($a2)
    # Line 2719
    lwc1	$f2,52($a3)
    swc1	$f2,52($a2)
    # Line 2720
    lwc1	$f1,56($a3)
    # Line 2721
    addiu	$a2,$a2,64
    # Line 2720
    swc1	$f1,-8($a2)
    # Line 2721
    addiu	$a3,$a3,64
    lwc1	$f0,-4($a3)
    # Line 2717
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db1dfe8
    # Line 2721
    swc1	$f0,-4($a2)
.L0db1e078:
    # Line 2724
    jr	$ra
    nop
.end __glSpanGetMemRGBA

# Function: __glSpanGetMemRGB
# Declared: Line 2730 (Source lines: 2732-2749)
# Address: 0x0db1e080 - 0x0db1e180 (Size: 256 bytes, Frame: 0)
.globl __glSpanGetMemRGB
.ent __glSpanGetMemRGB
__glSpanGetMemRGB:
    # Line 2742
    move	$a6,$zero
    # Line 2732
    lui	$v0,0xe
    # Line 2737
    lw	$a5,180($a1)
    # Line 2732
    addiu	$v0,$v0,1560
    addu	$at,$t9,$v0
    # Line 2742
    blez	$a5,.L0db1e178
    andi	$a4,$a5,0x3
    move	$a7,$a5
    beqz	$a4,.L0db1e0d8
    mtc1	$zero,$f4
.L0db1e0a8:
    # Line 2743
    lwc1	$f2,0($a2)
    swc1	$f2,0($a3)
    # Line 2744
    lwc1	$f1,4($a2)
    # Line 2742
    addiu	$a6,$a6,1
    # Line 2744
    swc1	$f1,4($a3)
    # Line 2746
    addiu	$a3,$a3,16
    # Line 2745
    lwc1	$f0,8($a2)
    addiu	$a2,$a2,12
    addi	$a4,$a4,-1
    swc1	$f0,-8($a3)
    bnez	$a4,.L0db1e0a8
    # Line 2746
    swc1	$f4,-4($a3)
.L0db1e0d8:
    move	$t2,$a6
    sra	$v1,$a7,0x2
    move	$t0,$a3
    beqz	$v1,.L0db1e178
    move	$t1,$a2
    move	$a3,$t0
    move	$a2,$t2
    move	$a4,$t1
.L0db1e0f8:
    # Line 2743
    lwc1	$f2,0($a4)
    swc1	$f2,0($a3)
    # Line 2744
    lwc1	$f1,4($a4)
    swc1	$f1,4($a3)
    # Line 2745
    lwc1	$f0,8($a4)
    swc1	$f0,8($a3)
    # Line 2746
    swc1	$f4,12($a3)
    # Line 2743
    lwc1	$f3,12($a4)
    swc1	$f3,16($a3)
    # Line 2744
    lwc1	$f2,16($a4)
    swc1	$f2,20($a3)
    # Line 2745
    lwc1	$f1,20($a4)
    swc1	$f1,24($a3)
    # Line 2746
    swc1	$f4,28($a3)
    # Line 2743
    lwc1	$f0,24($a4)
    swc1	$f0,32($a3)
    # Line 2744
    lwc1	$f3,28($a4)
    swc1	$f3,36($a3)
    # Line 2745
    lwc1	$f2,32($a4)
    swc1	$f2,40($a3)
    # Line 2746
    swc1	$f4,44($a3)
    # Line 2743
    lwc1	$f1,36($a4)
    swc1	$f1,48($a3)
    # Line 2744
    lwc1	$f0,40($a4)
    swc1	$f0,52($a3)
    # Line 2746
    addiu	$a3,$a3,64
    # Line 2745
    lwc1	$f3,44($a4)
    addiu	$a4,$a4,48
    # Line 2742
    addiu	$a2,$a2,4
    # Line 2745
    swc1	$f3,-8($a3)
    # Line 2742
    bne	$a5,$a2,.L0db1e0f8
    # Line 2746
    swc1	$f4,-4($a3)
.L0db1e178:
    # Line 2749
    jr	$ra
    nop
.end __glSpanGetMemRGB

# Function: __glSpanGetMemL
# Declared: Line 2755 (Source lines: 2757-2773)
# Address: 0x0db1e180 - 0x0db1e258 (Size: 216 bytes, Frame: 0)
.globl __glSpanGetMemL
.ent __glSpanGetMemL
__glSpanGetMemL:
    # Line 2767
    move	$a6,$zero
    # Line 2757
    lui	$v0,0xe
    # Line 2762
    lw	$a5,180($a1)
    # Line 2757
    addiu	$v0,$v0,1304
    addu	$at,$t9,$v0
    # Line 2767
    blez	$a5,.L0db1e250
    andi	$a4,$a5,0x3
    move	$a7,$a5
    beqz	$a4,.L0db1e1d0
    mtc1	$zero,$f4
.L0db1e1a8:
    addiu	$a6,$a6,1
    # Line 2771
    addiu	$a3,$a3,16
    # Line 2768
    lwc1	$f0,0($a2)
    addiu	$a2,$a2,4
    addi	$a4,$a4,-1
    swc1	$f0,-16($a3)
    # Line 2769
    swc1	$f4,-12($a3)
    # Line 2770
    swc1	$f4,-8($a3)
    bnez	$a4,.L0db1e1a8
    # Line 2771
    swc1	$f4,-4($a3)
.L0db1e1d0:
    move	$t2,$a6
    sra	$v1,$a7,0x2
    move	$t0,$a3
    beqz	$v1,.L0db1e250
    move	$t1,$a2
    move	$a3,$t0
    move	$a2,$t2
    move	$a4,$t1
.L0db1e1f0:
    # Line 2768
    lwc1	$f0,0($a4)
    swc1	$f0,0($a3)
    # Line 2769
    swc1	$f4,4($a3)
    # Line 2770
    swc1	$f4,8($a3)
    # Line 2771
    swc1	$f4,12($a3)
    # Line 2768
    lwc1	$f3,4($a4)
    swc1	$f3,16($a3)
    # Line 2769
    swc1	$f4,20($a3)
    # Line 2770
    swc1	$f4,24($a3)
    # Line 2771
    swc1	$f4,28($a3)
    # Line 2768
    lwc1	$f2,8($a4)
    swc1	$f2,32($a3)
    # Line 2769
    swc1	$f4,36($a3)
    # Line 2770
    swc1	$f4,40($a3)
    # Line 2771
    swc1	$f4,44($a3)
    addiu	$a3,$a3,64
    # Line 2768
    lwc1	$f1,12($a4)
    addiu	$a4,$a4,16
    # Line 2767
    addiu	$a2,$a2,4
    # Line 2768
    swc1	$f1,-16($a3)
    # Line 2769
    swc1	$f4,-12($a3)
    # Line 2770
    swc1	$f4,-8($a3)
    # Line 2767
    bne	$a5,$a2,.L0db1e1f0
    # Line 2771
    swc1	$f4,-4($a3)
.L0db1e250:
    # Line 2773
    jr	$ra
    nop
.end __glSpanGetMemL

# Function: __glSpanGetMemLA
# Declared: Line 2779 (Source lines: 2781-2797)
# Address: 0x0db1e258 - 0x0db1e344 (Size: 236 bytes, Frame: 0)
.globl __glSpanGetMemLA
.ent __glSpanGetMemLA
__glSpanGetMemLA:
    # Line 2791
    move	$a6,$zero
    # Line 2781
    lui	$v0,0xe
    # Line 2786
    lw	$a5,180($a1)
    # Line 2781
    addiu	$v0,$v0,1088
    addu	$at,$t9,$v0
    # Line 2791
    blez	$a5,.L0db1e33c
    andi	$a4,$a5,0x3
    move	$a7,$a5
    beqz	$a4,.L0db1e2ac
    mtc1	$zero,$f4
.L0db1e280:
    # Line 2792
    lwc1	$f1,0($a2)
    # Line 2791
    addiu	$a6,$a6,1
    # Line 2795
    addiu	$a3,$a3,16
    # Line 2792
    swc1	$f1,-16($a3)
    # Line 2793
    swc1	$f4,-12($a3)
    # Line 2794
    swc1	$f4,-8($a3)
    # Line 2795
    addiu	$a2,$a2,8
    lwc1	$f0,-4($a2)
    addi	$a4,$a4,-1
    bnez	$a4,.L0db1e280
    swc1	$f0,-4($a3)
.L0db1e2ac:
    move	$t2,$a6
    sra	$v1,$a7,0x2
    move	$t0,$a3
    beqz	$v1,.L0db1e33c
    move	$t1,$a2
    move	$a3,$t0
    move	$a2,$t2
    move	$a4,$t1
.L0db1e2cc:
    # Line 2792
    lwc1	$f1,0($a4)
    swc1	$f1,0($a3)
    # Line 2793
    swc1	$f4,4($a3)
    # Line 2794
    swc1	$f4,8($a3)
    # Line 2795
    lwc1	$f0,4($a4)
    swc1	$f0,12($a3)
    # Line 2792
    lwc1	$f3,8($a4)
    swc1	$f3,16($a3)
    # Line 2793
    swc1	$f4,20($a3)
    # Line 2794
    swc1	$f4,24($a3)
    # Line 2795
    lwc1	$f2,12($a4)
    swc1	$f2,28($a3)
    # Line 2792
    lwc1	$f1,16($a4)
    swc1	$f1,32($a3)
    # Line 2793
    swc1	$f4,36($a3)
    # Line 2794
    swc1	$f4,40($a3)
    # Line 2795
    lwc1	$f0,20($a4)
    swc1	$f0,44($a3)
    # Line 2792
    lwc1	$f3,24($a4)
    # Line 2795
    addiu	$a3,$a3,64
    # Line 2792
    swc1	$f3,-16($a3)
    # Line 2793
    swc1	$f4,-12($a3)
    # Line 2794
    swc1	$f4,-8($a3)
    # Line 2795
    addiu	$a4,$a4,32
    lwc1	$f2,-4($a4)
    # Line 2791
    addiu	$a2,$a2,4
    bne	$a5,$a2,.L0db1e2cc
    # Line 2795
    swc1	$f2,-4($a3)
.L0db1e33c:
    # Line 2797
    jr	$ra
    nop
.end __glSpanGetMemLA

# Function: __glSpanGetMemI
# Declared: Line 2803 (Source lines: 2805-2821)
# Address: 0x0db1e344 - 0x0db1e41c (Size: 216 bytes, Frame: 0)
.globl __glSpanGetMemI
.ent __glSpanGetMemI
__glSpanGetMemI:
    # Line 2815
    move	$a6,$zero
    # Line 2805
    lui	$v0,0xe
    # Line 2810
    lw	$a5,180($a1)
    # Line 2805
    addiu	$v0,$v0,852
    addu	$at,$t9,$v0
    # Line 2815
    blez	$a5,.L0db1e414
    andi	$a4,$a5,0x3
    move	$a7,$a5
    beqz	$a4,.L0db1e394
    mtc1	$zero,$f4
.L0db1e36c:
    addiu	$a6,$a6,1
    # Line 2819
    addiu	$a3,$a3,16
    # Line 2816
    lwc1	$f0,0($a2)
    addiu	$a2,$a2,4
    addi	$a4,$a4,-1
    swc1	$f0,-16($a3)
    # Line 2817
    swc1	$f4,-12($a3)
    # Line 2818
    swc1	$f4,-8($a3)
    bnez	$a4,.L0db1e36c
    # Line 2819
    swc1	$f4,-4($a3)
.L0db1e394:
    move	$t2,$a6
    sra	$v1,$a7,0x2
    move	$t0,$a3
    beqz	$v1,.L0db1e414
    move	$t1,$a2
    move	$a3,$t0
    move	$a2,$t2
    move	$a4,$t1
.L0db1e3b4:
    # Line 2816
    lwc1	$f0,0($a4)
    swc1	$f0,0($a3)
    # Line 2817
    swc1	$f4,4($a3)
    # Line 2818
    swc1	$f4,8($a3)
    # Line 2819
    swc1	$f4,12($a3)
    # Line 2816
    lwc1	$f3,4($a4)
    swc1	$f3,16($a3)
    # Line 2817
    swc1	$f4,20($a3)
    # Line 2818
    swc1	$f4,24($a3)
    # Line 2819
    swc1	$f4,28($a3)
    # Line 2816
    lwc1	$f2,8($a4)
    swc1	$f2,32($a3)
    # Line 2817
    swc1	$f4,36($a3)
    # Line 2818
    swc1	$f4,40($a3)
    # Line 2819
    swc1	$f4,44($a3)
    addiu	$a3,$a3,64
    # Line 2816
    lwc1	$f1,12($a4)
    addiu	$a4,$a4,16
    # Line 2815
    addiu	$a2,$a2,4
    # Line 2816
    swc1	$f1,-16($a3)
    # Line 2817
    swc1	$f4,-12($a3)
    # Line 2818
    swc1	$f4,-8($a3)
    # Line 2815
    bne	$a5,$a2,.L0db1e3b4
    # Line 2819
    swc1	$f4,-4($a3)
.L0db1e414:
    # Line 2821
    jr	$ra
    nop
.end __glSpanGetMemI

# Function: __glSpanMemPutRGBA
# Declared: Line 2834 (Source lines: 2841-2853)
# Address: 0x0db1e41c - 0x0db1e524 (Size: 264 bytes, Frame: 0)
.globl __glSpanMemPutRGBA
.ent __glSpanMemPutRGBA
__glSpanMemPutRGBA:
    # Line 2841
    lw	$a4,180($a1)
    # Line 2846
    move	$a5,$zero
    blez	$a4,.L0db1e51c
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db1e470
    move	$a7,$a3
.L0db1e438:
    # Line 2847
    lwc1	$f3,0($a2)
    swc1	$f3,0($a3)
    # Line 2848
    lwc1	$f2,4($a2)
    swc1	$f2,4($a3)
    # Line 2849
    lwc1	$f1,8($a2)
    # Line 2846
    addiu	$a5,$a5,1
    # Line 2850
    addiu	$a3,$a3,16
    # Line 2849
    swc1	$f1,-8($a3)
    # Line 2850
    addiu	$a2,$a2,16
    lwc1	$f0,-4($a2)
    addi	$a1,$a1,-1
    bnez	$a1,.L0db1e438
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0db1e470:
    sra	$at,$a6,0x2
    move	$t1,$a5
    beqz	$at,.L0db1e51c
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db1e48c:
    # Line 2847
    lwc1	$f3,0($a3)
    swc1	$f3,0($a2)
    # Line 2848
    lwc1	$f2,4($a3)
    swc1	$f2,4($a2)
    # Line 2849
    lwc1	$f1,8($a3)
    swc1	$f1,8($a2)
    # Line 2850
    lwc1	$f0,12($a3)
    swc1	$f0,12($a2)
    # Line 2847
    lwc1	$f3,16($a3)
    swc1	$f3,16($a2)
    # Line 2848
    lwc1	$f2,20($a3)
    swc1	$f2,20($a2)
    # Line 2849
    lwc1	$f1,24($a3)
    swc1	$f1,24($a2)
    # Line 2850
    lwc1	$f0,28($a3)
    swc1	$f0,28($a2)
    # Line 2847
    lwc1	$f3,32($a3)
    swc1	$f3,32($a2)
    # Line 2848
    lwc1	$f2,36($a3)
    swc1	$f2,36($a2)
    # Line 2849
    lwc1	$f1,40($a3)
    swc1	$f1,40($a2)
    # Line 2850
    lwc1	$f0,44($a3)
    swc1	$f0,44($a2)
    # Line 2847
    lwc1	$f3,48($a3)
    swc1	$f3,48($a2)
    # Line 2848
    lwc1	$f2,52($a3)
    swc1	$f2,52($a2)
    # Line 2849
    lwc1	$f1,56($a3)
    # Line 2850
    addiu	$a2,$a2,64
    # Line 2849
    swc1	$f1,-8($a2)
    # Line 2850
    addiu	$a3,$a3,64
    lwc1	$f0,-4($a3)
    # Line 2846
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db1e48c
    # Line 2850
    swc1	$f0,-4($a2)
.L0db1e51c:
    # Line 2853
    jr	$ra
    nop
.end __glSpanMemPutRGBA

# Function: __glSpanMemPutRGB
# Declared: Line 2859 (Source lines: 2866-2878)
# Address: 0x0db1e524 - 0x0db1e604 (Size: 224 bytes, Frame: 0)
.globl __glSpanMemPutRGB
.ent __glSpanMemPutRGB
__glSpanMemPutRGB:
    # Line 2866
    lw	$a4,180($a1)
    # Line 2871
    move	$a5,$zero
    blez	$a4,.L0db1e5fc
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db1e570
    move	$t1,$a5
.L0db1e540:
    # Line 2872
    lwc1	$f2,0($a2)
    swc1	$f2,0($a3)
    # Line 2873
    lwc1	$f1,4($a2)
    # Line 2871
    addiu	$a5,$a5,1
    # Line 2875
    addiu	$a2,$a2,16
    # Line 2873
    swc1	$f1,4($a3)
    # Line 2874
    addiu	$a3,$a3,12
    lwc1	$f0,-8($a2)
    addi	$a1,$a1,-1
    bnez	$a1,.L0db1e540
    swc1	$f0,-4($a3)
    move	$t1,$a5
.L0db1e570:
    move	$t0,$a2
    move	$a7,$a3
    sra	$at,$a6,0x2
    beqz	$at,.L0db1e5fc
    move	$a3,$a7
    move	$a1,$t1
    move	$a2,$t0
.L0db1e58c:
    # Line 2872
    lwc1	$f2,0($a2)
    swc1	$f2,0($a3)
    # Line 2873
    lwc1	$f1,4($a2)
    swc1	$f1,4($a3)
    # Line 2874
    lwc1	$f0,8($a2)
    swc1	$f0,8($a3)
    # Line 2872
    lwc1	$f3,16($a2)
    swc1	$f3,12($a3)
    # Line 2873
    lwc1	$f2,20($a2)
    swc1	$f2,16($a3)
    # Line 2874
    lwc1	$f1,24($a2)
    swc1	$f1,20($a3)
    # Line 2872
    lwc1	$f0,32($a2)
    swc1	$f0,24($a3)
    # Line 2873
    lwc1	$f3,36($a2)
    swc1	$f3,28($a3)
    # Line 2874
    lwc1	$f2,40($a2)
    swc1	$f2,32($a3)
    # Line 2872
    lwc1	$f1,48($a2)
    swc1	$f1,36($a3)
    # Line 2873
    lwc1	$f0,52($a2)
    # Line 2875
    addiu	$a2,$a2,64
    # Line 2873
    swc1	$f0,40($a3)
    # Line 2874
    addiu	$a3,$a3,48
    lwc1	$f3,-8($a2)
    # Line 2871
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db1e58c
    # Line 2874
    swc1	$f3,-4($a3)
.L0db1e5fc:
    # Line 2878
    jr	$ra
    nop
.end __glSpanMemPutRGB

# Function: __glSpanMemPutL
# Declared: Line 2884 (Source lines: 2891-2901)
# Address: 0x0db1e604 - 0x0db1e694 (Size: 144 bytes, Frame: 0)
.globl __glSpanMemPutL
.ent __glSpanMemPutL
__glSpanMemPutL:
    # Line 2891
    lw	$a4,180($a1)
    # Line 2896
    move	$a5,$zero
    blez	$a4,.L0db1e68c
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db1e640
    move	$t1,$a5
.L0db1e620:
    addiu	$a5,$a5,1
    # Line 2898
    addiu	$a2,$a2,16
    # Line 2897
    addiu	$a3,$a3,4
    lwc1	$f0,-16($a2)
    addi	$a1,$a1,-1
    bnez	$a1,.L0db1e620
    swc1	$f0,-4($a3)
    move	$t1,$a5
.L0db1e640:
    move	$t0,$a3
    move	$a7,$a2
    sra	$at,$a6,0x2
    beqz	$at,.L0db1e68c
    move	$a2,$a7
    move	$a1,$t1
    move	$a3,$t0
.L0db1e65c:
    lwc1	$f0,0($a2)
    swc1	$f0,0($a3)
    lwc1	$f3,16($a2)
    swc1	$f3,4($a3)
    lwc1	$f2,32($a2)
    # Line 2898
    addiu	$a2,$a2,64
    # Line 2897
    swc1	$f2,8($a3)
    addiu	$a3,$a3,16
    lwc1	$f1,-16($a2)
    # Line 2896
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db1e65c
    # Line 2897
    swc1	$f1,-4($a3)
.L0db1e68c:
    # Line 2901
    jr	$ra
    nop
.end __glSpanMemPutL

# Function: __glSpanMemPutLA
# Declared: Line 2907 (Source lines: 2914-2925)
# Address: 0x0db1e694 - 0x0db1e74c (Size: 184 bytes, Frame: 0)
.globl __glSpanMemPutLA
.ent __glSpanMemPutLA
__glSpanMemPutLA:
    # Line 2914
    lw	$a4,180($a1)
    # Line 2919
    move	$a5,$zero
    blez	$a4,.L0db1e744
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db1e6d8
    move	$a7,$a3
.L0db1e6b0:
    # Line 2920
    lwc1	$f1,0($a2)
    # Line 2919
    addiu	$a5,$a5,1
    # Line 2922
    addiu	$a3,$a3,8
    # Line 2920
    swc1	$f1,-8($a3)
    # Line 2922
    addiu	$a2,$a2,16
    lwc1	$f0,-4($a2)
    addi	$a1,$a1,-1
    bnez	$a1,.L0db1e6b0
    swc1	$f0,-4($a3)
    move	$a7,$a3
.L0db1e6d8:
    sra	$at,$a6,0x2
    move	$t1,$a5
    beqz	$at,.L0db1e744
    move	$t0,$a2
    move	$a1,$t1
    move	$a2,$a7
    move	$a3,$t0
.L0db1e6f4:
    # Line 2920
    lwc1	$f1,0($a3)
    swc1	$f1,0($a2)
    # Line 2922
    lwc1	$f0,12($a3)
    swc1	$f0,4($a2)
    # Line 2920
    lwc1	$f3,16($a3)
    swc1	$f3,8($a2)
    # Line 2922
    lwc1	$f2,28($a3)
    swc1	$f2,12($a2)
    # Line 2920
    lwc1	$f1,32($a3)
    swc1	$f1,16($a2)
    # Line 2922
    lwc1	$f0,44($a3)
    swc1	$f0,20($a2)
    # Line 2920
    lwc1	$f3,48($a3)
    # Line 2922
    addiu	$a2,$a2,32
    # Line 2920
    swc1	$f3,-8($a2)
    # Line 2922
    addiu	$a3,$a3,64
    lwc1	$f2,-4($a3)
    # Line 2919
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db1e6f4
    # Line 2922
    swc1	$f2,-4($a2)
.L0db1e744:
    # Line 2925
    jr	$ra
    nop
.end __glSpanMemPutLA

# Function: __glSpanMemPutI
# Declared: Line 2931 (Source lines: 2938-2948)
# Address: 0x0db1e74c - 0x0db1e7dc (Size: 144 bytes, Frame: 0)
.globl __glSpanMemPutI
.ent __glSpanMemPutI
__glSpanMemPutI:
    # Line 2938
    lw	$a4,180($a1)
    # Line 2943
    move	$a5,$zero
    blez	$a4,.L0db1e7d4
    move	$a6,$a4
    andi	$a1,$a4,0x3
    beqz	$a1,.L0db1e788
    move	$t1,$a5
.L0db1e768:
    addiu	$a5,$a5,1
    # Line 2945
    addiu	$a2,$a2,16
    # Line 2944
    addiu	$a3,$a3,4
    lwc1	$f0,-16($a2)
    addi	$a1,$a1,-1
    bnez	$a1,.L0db1e768
    swc1	$f0,-4($a3)
    move	$t1,$a5
.L0db1e788:
    move	$t0,$a3
    move	$a7,$a2
    sra	$at,$a6,0x2
    beqz	$at,.L0db1e7d4
    move	$a2,$a7
    move	$a1,$t1
    move	$a3,$t0
.L0db1e7a4:
    lwc1	$f0,0($a2)
    swc1	$f0,0($a3)
    lwc1	$f3,16($a2)
    swc1	$f3,4($a3)
    lwc1	$f2,32($a2)
    # Line 2945
    addiu	$a2,$a2,64
    # Line 2944
    swc1	$f2,8($a3)
    addiu	$a3,$a3,16
    lwc1	$f1,-16($a2)
    # Line 2943
    addiu	$a1,$a1,4
    bne	$a4,$a1,.L0db1e7a4
    # Line 2944
    swc1	$f1,-4($a3)
.L0db1e7d4:
    # Line 2948
    jr	$ra
    nop
.end __glSpanMemPutI

.late_rodata
jtbl_0dbeef80:
    .word .L0db187a4
    .word .L0db186f8
    .word .L0db1871c
    .word .L0db18734
    .word .L0db1874c
    .word .L0db18764
    .word .L0db1877c
    .word .L0db18794
    .word .L0db18aa8
    .word .L0db189f8
    .word .L0db18a1c
    .word .L0db18a34
    .word .L0db18a4c
    .word .L0db18a64
    .word .L0db18a7c
    .word .L0db18a94
jtbl_0dbeefc0:
    .word .L0db19274
    .word .L0db19198
    .word .L0db191b4
    .word .L0db191d4
    .word .L0db191f4
    .word .L0db19214
    .word .L0db19234
    .word .L0db19254
    .word .L0db1958c
    .word .L0db194b0
    .word .L0db194cc
    .word .L0db194ec
    .word .L0db1950c
    .word .L0db1952c
    .word .L0db1954c
    .word .L0db1956c

.rdata
_lit8_4008000000000000:
    .word 0x40080000, 0x00000000
_lit8_401c000000000000:
    .word 0x401c0000, 0x00000000
_lit8_402e000000000000:
    .word 0x402e0000, 0x00000000
_lit8_403f000000000000:
    .word 0x403f0000, 0x00000000
_lit8_406fe00000000000:
    .word 0x406fe000, 0x00000000
_lit8_408ff80000000000:
    .word 0x408ff800, 0x00000000
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

