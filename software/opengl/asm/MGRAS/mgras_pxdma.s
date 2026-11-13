# Source: ../MGRAS/mgras_pxdma.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_pxdma.c
# Total Functions: 31

.text

# Function: __glMgr_UseDMAForWrite
# Declared: Line 39 (Source lines: 40-88)
# Address: 0x0daddde4 - 0x0daddf78 (Size: 404 bytes, Frame: 0)
.globl __glMgr_UseDMAForWrite
.ent __glMgr_UseDMAForWrite
__glMgr_UseDMAForWrite:
    # Line 43
    lw	$a3,__glCurrentContext
    lbu	$v0,192($a0)
    # Line 40
    lui	$v1,0x12
    addiu	$v1,$v1,2228
    # Line 43
    beqz	$v0,.L0dadde04
    # Line 40
    addu	$at,$t9,$v1
    # Line 48
    jr	$ra
    li	$v0,1
.L0dadde04:
    lui	$t0,0x1
    addu	$t0,$a3,$t0
    lw	$a1,-31380($t0)
    beqzl	$a1,.L0daddeac
    # Line 71
    lw	$a4,424($a0)
    # Line 48
    lw	$a7,184($a0)
    slti	$v0,$a7,9
    beqz	$v0,.L0daddea4
    # Line 58
    li	$v1,1
    beq	$a7,$v1,.L0daddee4
    # Line 64
    move	$t1,$zero
    # Line 63
    lw	$v0,1436($a0)
    # Line 64
    lw	$t2,1540($a0)
    # Line 63
    lw	$a4,160($a0)
    sll	$v0,$v0,0x2
    # Line 64
    blez	$t2,.L0dadde94
    # Line 63
    addu	$a4,$a4,$v0
    # Line 64
    sll	$a6,$a7,0x2
.L0dadde4c:
    addiu	$t1,$t1,1
    blez	$a7,.L0dadde80
    move	$a3,$a4
    lw	$a5,-32296($t0)
    addiu	$a5,$a5,-1
    lw	$v0,0($a3)
.L0dadde64:
    # Line 65
    addiu	$a3,$a3,4
    # Line 64
    and	$v0,$v0,$a5
    bnez	$v0,.L0dadde9c
    # Line 65
    addu	$v1,$a6,$a4
    sltu	$v1,$a3,$v1
    bnezl	$v1,.L0dadde64
    # Line 64
    lw	$v0,0($a3)
.L0dadde80:
    slt	$a2,$t1,$t2
    # Line 69
    lw	$a1,172($a0)
    sll	$a1,$a1,0x2
    # Line 64
    bnez	$a2,.L0dadde4c
    # Line 69
    addu	$a4,$a1,$a4
.L0dadde94:
    # Line 71
    jr	$ra
    li	$v0,1
.L0dadde9c:
    # Line 67
    jr	$ra
    move	$v0,$zero
.L0daddea4:
    # Line 58
    jr	$ra
    move	$v0,$zero
.L0daddeac:
    # Line 71
    lui	$a2,0x100
    and	$a2,$a4,$a2
    beqzl	$a2,.L0daddef4
    # Line 79
    lwc1	$f4,720($a3)
    # Line 71
    lw	$a3,92($a0)
    bltz	$a3,.L0daddeec
    nop
    lw	$v1,36($a0)
    mult	$v1,$a3
    mflo	$v0
    bltz	$v0,.L0daddeec
    nop
    # Line 77
    jr	$ra
    li	$v0,1
.L0daddee4:
    # Line 61
    jr	$ra
    li	$v0,1
.L0daddeec:
    # Line 79
    jr	$ra
    move	$v0,$zero
.L0daddef4:
    mtc1	$zero,$f0
    c.lt.s	$f4,$f0
    nop
    bc1f	.L0daddf0c
    # Line 88
    mov.s	$f5,$f4
    neg.s	$f5,$f4
.L0daddf0c:
    # Line 81
    ldc1	$f2,_lit8_3ff0000000000000
    cvt.d.s	$f1,$f5
    c.eq.d	$f1,$f2
    nop
    bc1f	.L0daddf70
    nop
    lw	$a1,-28164($t0)
    lw	$a1,1160($a1)
    bnez	$a1,.L0daddf70
    nop
    lw	$a3,92($a0)
    slti	$a2,$a3,60
    bnez	$a2,.L0daddf68
    nop
    lw	$v1,36($a0)
    mult	$v1,$a3
    mflo	$v0
    slti	$v0,$v0,8192
    bnez	$v0,.L0daddf68
    lui	$a1,0x10
    and	$a1,$a4,$a1
    beqz	$a1,.L0daddf70
    nop
.L0daddf68:
    # Line 88
    jr	$ra
    move	$v0,$zero
.L0daddf70:
    # Line 86
    jr	$ra
    li	$v0,1
.end __glMgr_UseDMAForWrite

# Function: __glMgr_UseDMAForRead
# Declared: Line 100 (Source lines: 101-118)
# Address: 0x0daddf78 - 0x0dade018 (Size: 160 bytes, Frame: 0)
.globl __glMgr_UseDMAForRead
.ent __glMgr_UseDMAForRead
__glMgr_UseDMAForRead:
    # Line 101
    lbu	$at,192($a0)
    # Line 112
    lui	$v1,0x80
    # Line 101
    beqz	$at,.L0daddf90
    # Line 103
    li	$v0,1
    jr	$ra
    nop
.L0daddf90:
    lw	$a3,424($a0)
    lui	$v0,0x100
    and	$v0,$a3,$v0
    beqz	$v0,.L0daddfd4
    lw	$a2,92($a0)
    bltz	$a2,.L0daddfcc
    # Line 110
    move	$v0,$zero
    # Line 103
    lw	$a1,36($a0)
    mult	$a1,$a2
    mflo	$v1
    bltz	$v1,.L0daddfcc
    nop
    # Line 108
    li	$v0,1
    jr	$ra
    nop
.L0daddfcc:
    # Line 110
    jr	$ra
    nop
.L0daddfd4:
    bltz	$a2,.L0dade010
    nop
    lw	$v0,36($a0)
    mult	$v0,$a2
    mflo	$at
    bltz	$at,.L0dade010
    # Line 112
    and	$v1,$a3,$v1
    bnez	$v1,.L0dade010
    nop
    lw	$a1,52($a0)
    li	$at,6656
    beq	$a1,$at,.L0dade010
    nop
    # Line 116
    jr	$ra
    li	$v0,1
.L0dade010:
    # Line 118
    jr	$ra
    move	$v0,$zero
.end __glMgr_UseDMAForRead

# Function: __glMgr_LockSingleDMAPool
# Declared: Line 129 (Source lines: 131-179)
# Address: 0x0dade018 - 0x0dade144 (Size: 300 bytes, Frame: 240)
.globl __glMgr_LockSingleDMAPool
.ent __glMgr_LockSingleDMAPool
__glMgr_LockSingleDMAPool:
    # Line 131
    move	$t2,$a0
    addiu	$sp,$sp,-112
    sd	$gp,32($sp)
    lui	$t0,0x12
    addiu	$t0,$t0,1664
    addu	$gp,$t9,$t0
    # Line 138
    li	$a7,0x81d8
    addu	$a7,$a7,$a0
    lw	$a7,0($a7)
    sd	$s0,40($sp)
    # Line 139
    sll	$s0,$a5,0x4
    # Line 138
    addiu	$a7,$a7,-1
    # Line 139
    and	$t3,$a1,$a7
    sw	$t3,0($a4)
    addu	$s0,$s0,$a0
    lw	$t1,32004($s0)
    nor	$a7,$a7,$zero
    and	$a7,$a7,$a1
    sltu	$at,$a7,$t1
    bnez	$at,.L0dade0b0
    addu	$t0,$t3,$a2
    # Line 148
    subu	$v1,$a7,$t1
    # Line 139
    lw	$at,32008($s0)
    addu	$v0,$t0,$a7
    addu	$at,$at,$t1
    sltu	$at,$at,$v0
    bnez	$at,.L0dade0b0
    # Line 148
    addu	$v1,$v1,$t3
    sw	$v1,0($a4)
    lw	$v0,32016($s0)
    andi	$v0,$v0,0x1
    beqz	$v0,.L0dade130
    # Line 154
    li	$a6,8
    # Line 152
    li	$v0,1
    ld	$gp,32($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dade0b0:
    # Line 158
    li	$a6,13
    sd	$ra,48($sp)
    sw	$a6,0($sp)
    # Line 160
    sw	$a5,4($sp)
    # Line 161
    sw	$a7,8($sp)
    # Line 162
    sw	$t0,12($sp)
    # Line 163
    sw	$a3,16($sp)
    # Line 164
    sw	$a1,20($sp)
    # Line 165
    sw	$a2,24($sp)
    # Line 171
    sw	$a3,32012($s0)
    # Line 170
    sw	$t0,32008($s0)
    # Line 169
    sw	$a7,32004($s0)
.L0dade0e0:
    # Line 174
    addiu	$a2,$sp,0
    # lw $t9, -17944($gp) # &ioctl
    lw	$a0,31560($t2)
    lui	$a1,0x6d67
    jal	ioctl
    ori	$a1,$a1,0xb
    bltz	$v0,.L0dade114
    ld	$ra,48($sp)
    ld	$gp,32($sp)
    # Line 179
    li	$v0,1
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dade114:
    ld	$gp,32($sp)
    # Line 177
    move	$v0,$zero
    # Line 176
    sw	$zero,32008($s0)
    # Line 175
    sw	$zero,32004($s0)
    # Line 177
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dade130:
    sd	$ra,48($sp)
    # Line 156
    sw	$a2,24($sp)
    # Line 155
    sw	$a1,20($sp)
    # Line 156
    b	.L0dade0e0
    # Line 154
    sw	$a6,0($sp)
.end __glMgr_LockSingleDMAPool

# Function: __glMgr_UnlockSingleDMAPool
# Declared: Line 193 (Source lines: 195-217)
# Address: 0x0dade144 - 0x0dade208 (Size: 196 bytes, Frame: 224)
.globl __glMgr_UnlockSingleDMAPool
.ent __glMgr_UnlockSingleDMAPool
__glMgr_UnlockSingleDMAPool:
    # Line 195
    addiu	$sp,$sp,-96
    sd	$s0,48($sp)
    move	$s0,$a0
    sd	$s8,32($sp)
    move	$s8,$a3
    sd	$gp,40($sp)
    # Line 200
    li	$at,0x9d4c
    # Line 199
    li	$v0,3
    # Line 200
    sw	$a3,4($sp)
    # Line 199
    sw	$v0,0($sp)
    # Line 200
    addu	$at,$at,$a0
    lbu	$at,0($at)
    # Line 195
    lui	$v0,0x12
    addiu	$v0,$v0,1364
    # Line 200
    beqz	$at,.L0dade19c
    # Line 195
    addu	$gp,$t9,$v0
    # Line 200
    beqz	$a2,.L0dade19c
    # Line 203
    li	$v1,11
    sd	$ra,56($sp)
    # Line 205
    sw	$a2,24($sp)
    # Line 204
    sw	$a1,20($sp)
    # Line 203
    sw	$v1,0($sp)
.L0dade19c:
    # Line 211
    addiu	$a2,$sp,0
    lw	$a0,31560($s0)
    # lw $t9, -17944($gp) # &ioctl
    sd	$ra,56($sp)
    lui	$a1,0x6d67
    jal	ioctl
    ori	$a1,$a1,0xb
    bltz	$v0,.L0dade1e4
    ld	$ra,56($sp)
.L0dade1c0:
    ld	$gp,40($sp)
    # Line 215
    sll	$a4,$s8,0x4
    # Line 217
    ld	$s8,32($sp)
    # Line 215
    addu	$a4,$a4,$s0
    # Line 217
    ld	$s0,48($sp)
    addiu	$sp,$sp,96
    # Line 216
    sw	$zero,32008($a4)
    # Line 217
    jr	$ra
    # Line 215
    sw	$zero,32004($a4)
.L0dade1e4:
    # Line 212
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbf0000
    jal	perror
    addiu	$a0,$a0,-4976
    # Line 213
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dade1c0
    ld	$ra,56($sp)
.end __glMgr_UnlockSingleDMAPool

# Function: __glMgrBuildLockPageList
# Declared: Line 226 (Source lines: 232-242)
# Address: 0x0dade208 - 0x0dade2bc (Size: 180 bytes, Frame: 0)
.globl __glMgrBuildLockPageList
.ent __glMgrBuildLockPageList
__glMgrBuildLockPageList:
    # Line 232
    beqz	$a2,.L0dade2b4
    move	$t2,$zero
    lw	$a5,1540($a0)
    b	.L0dade270
    lw	$t1,172($a0)
.L0dade21c:
    # Line 236
    blez	$a6,.L0dade250
    move	$a4,$zero
    move	$a5,$a7
.L0dade228:
    # Line 237
    lw	$v0,0($a5)
    sw	$v0,0($a1)
    # Line 236
    lw	$a6,184($a0)
    addiu	$a5,$a5,4
    addiu	$a4,$a4,1
    slt	$at,$a4,$a6
    bnez	$at,.L0dade228
    # Line 237
    addiu	$a1,$a1,4
    # Line 236
    lw	$t1,172($a0)
    lw	$a5,1540($a0)
.L0dade250:
    # Line 235
    addiu	$t0,$t0,1
    # Line 239
    sll	$v1,$t1,0x2
    # Line 235
    slt	$a3,$t0,$a5
    bnez	$a3,.L0dade21c
    # Line 239
    addu	$a7,$v1,$a7
.L0dade264:
    # Line 232
    addiu	$t2,$t2,1
    beq	$t2,$a2,.L0dade2b4
    nop
.L0dade270:
    # Line 234
    mult	$t1,$t2
    lw	$at,176($a0)
    mflo	$v0
    nop
    nop
    mult	$at,$v0
    lw	$t0,1436($a0)
    lw	$a7,160($a0)
    sll	$t0,$t0,0x2
    addu	$a7,$a7,$t0
    mflo	$t0
    sll	$t0,$t0,0x2
    addu	$a7,$a7,$t0
    # Line 235
    blez	$a5,.L0dade264
    move	$t0,$zero
    b	.L0dade21c
    lw	$a6,184($a0)
.L0dade2b4:
    # Line 242
    jr	$ra
    nop
.end __glMgrBuildLockPageList

# Function: __glMgr_LockMultiDMAPool
# Declared: Line 251 (Source lines: 253-286)
# Address: 0x0dade2bc - 0x0dade434 (Size: 376 bytes, Frame: 160)
.globl __glMgr_LockMultiDMAPool
.ent __glMgr_LockMultiDMAPool
__glMgr_LockMultiDMAPool:
    # Line 253
    addiu	$sp,$sp,-160
    sd	$s8,72($sp)
    move	$s8,$a5
    sd	$s5,88($sp)
    move	$s5,$a4
    sd	$s0,56($sp)
    move	$s0,$a3
    sd	$s3,32($sp)
    move	$s3,$a2
    sd	$s2,40($sp)
    move	$s2,$a0
    sd	$s1,64($sp)
    sd	$gp,80($sp)
    lui	$at,0x12
    addiu	$at,$at,988
    addu	$gp,$t9,$at
    # Line 260
    lw	$t9,0($a0)
    # Line 253
    move	$s1,$a1
    sd	$ra,48($sp)
    # Line 260
    jalr	$t9
    sll	$a1,$a1,0x3
    move	$a1,$s3
    move	$a3,$v0
    sll	$a2,$s1,0x2
    beqz	$s1,.L0dade3a4
    addu	$a2,$a2,$s3
    move	$a5,$s1
    andi	$a4,$s1,0x3
    beqz	$a4,.L0dade350
    move	$a0,$v0
.L0dade334:
    # Line 263
    addiu	$a1,$a1,4
    addiu	$a0,$a0,8
    # Line 264
    lw	$a6,-4($a1)
    # Line 265
    sw	$s0,-4($a0)
    addi	$a4,$a4,-1
    bnez	$a4,.L0dade334
    # Line 264
    sw	$a6,-8($a0)
.L0dade350:
    sra	$a7,$a5,0x2
    move	$t0,$a0
    beqz	$a7,.L0dade3a4
    move	$a4,$a1
    move	$a0,$t0
    move	$a1,$a4
.L0dade368:
    lw	$a7,0($a1)
    sw	$a7,0($a0)
    # Line 265
    sw	$s0,4($a0)
    # Line 264
    lw	$a6,4($a1)
    sw	$a6,8($a0)
    # Line 265
    sw	$s0,12($a0)
    # Line 264
    lw	$v1,8($a1)
    # Line 263
    addiu	$a0,$a0,32
    # Line 264
    sw	$v1,-16($a0)
    # Line 265
    sw	$s0,-12($a0)
    # Line 263
    addiu	$a1,$a1,16
    # Line 264
    lw	$at,-4($a1)
    # Line 265
    sw	$s0,-4($a0)
    # Line 263
    bne	$a1,$a2,.L0dade368
    # Line 264
    sw	$at,-8($a0)
.L0dade3a4:
    sd	$a3,96($sp)
    # Line 280
    addiu	$a2,$sp,0
    lui	$a1,0x6d67
    ori	$a1,$a1,0xd
    # Line 276
    sw	$v0,28($sp)
    # Line 275
    sw	$s1,24($sp)
    # Line 274
    sw	$s5,20($sp)
    # Line 273
    sw	$s0,16($sp)
    # Line 272
    sw	$s3,12($sp)
    # Line 271
    sw	$s1,8($sp)
    # Line 270
    sw	$s8,4($sp)
    # Line 280
    # lw $t9, -17944($gp) # &ioctl
    # Line 268
    li	$t0,13
    sw	$t0,0($sp)
    # Line 280
    jal	ioctl
    lw	$a0,31560($s2)
    ld	$s8,72($sp)
    ld	$a1,96($sp)
    ld	$s1,64($sp)
    ld	$s0,56($sp)
    bltz	$v0,.L0dade428
    ld	$s3,32($sp)
    # Line 283
    li	$s5,1
    # Line 285
    lw	$t9,12($s2)
.L0dade404:
    jalr	$t9
    move	$a0,$s2
    ld	$gp,80($sp)
    # Line 286
    ld	$s2,40($sp)
    ld	$ra,48($sp)
    move	$v0,$s5
    ld	$s5,88($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dade428:
    # Line 281
    move	$s5,$zero
    b	.L0dade404
    # Line 285
    lw	$t9,12($s2)
.end __glMgr_LockMultiDMAPool

# Function: __glMgr_UnlockMultiDMAPool
# Declared: Line 295 (Source lines: 296-311)
# Address: 0x0dade434 - 0x0dade4d0 (Size: 156 bytes, Frame: 208)
.globl __glMgr_UnlockMultiDMAPool
.ent __glMgr_UnlockMultiDMAPool
__glMgr_UnlockMultiDMAPool:
    # Line 305
    lui	$a3,0x6d67
    # Line 296
    addiu	$sp,$sp,-80
    # Line 305
    addiu	$a2,$sp,0
    sd	$a1,40($sp)
    # Line 296
    move	$at,$a1
    # Line 305
    ori	$a1,$a3,0xd
    sd	$s8,48($sp)
    # Line 296
    move	$s8,$a0
    sd	$ra,32($sp)
    # Line 300
    li	$v0,3
    sd	$gp,56($sp)
    # Line 296
    lui	$v1,0x12
    addiu	$v1,$v1,612
    addu	$gp,$t9,$v1
    # Line 305
    # lw $t9, -17944($gp) # &ioctl
    # Line 301
    sw	$at,4($sp)
    # Line 300
    sw	$v0,0($sp)
    # Line 305
    jal	ioctl
    lw	$a0,31560($a0)
    bltz	$v0,.L0dade4ac
    ld	$ra,32($sp)
.L0dade488:
    ld	$at,40($sp)
    ld	$gp,56($sp)
    # Line 309
    sll	$at,$at,0x4
    addu	$s8,$at,$s8
    # Line 310
    sw	$zero,32008($s8)
    # Line 309
    sw	$zero,32004($s8)
    # Line 311
    ld	$s8,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dade4ac:
    # Line 306
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbf0000
    jal	perror
    addiu	$a0,$a0,-4944
    # Line 307
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dade488
    ld	$ra,32($sp)
.end __glMgr_UnlockMultiDMAPool

# Function: __glMgrWaitForDMAWrite
# Declared: Line 367 (Source lines: 368-374)
# Address: 0x0dade4d0 - 0x0dade500 (Size: 48 bytes, Frame: 0)
.globl __glMgrWaitForDMAWrite
.ent __glMgrWaitForDMAWrite
__glMgrWaitForDMAWrite:
    # Line 368
    lui	$a2,0x1
    addu	$a3,$a2,$a0
    lw	$a3,-25272($a3)
    lui	$at,0x7
    addu	$a3,$a3,$at
.L0dade4e4:
    # Line 372
    lw	$zero,260($a3)
    lw	$at,8($a3)
    and	$at,$at,$a2
    beqz	$at,.L0dade4e4
    nop
    # Line 374
    jr	$ra
    nop
.end __glMgrWaitForDMAWrite

# Function: __glMgr_WriteDMAHQSetup
# Declared: Line 384 (Source lines: 386-422)
# Address: 0x0dade500 - 0x0dade678 (Size: 376 bytes, Frame: 208)
.globl __glMgr_WriteDMAHQSetup
.ent __glMgr_WriteDMAHQSetup
__glMgr_WriteDMAHQSetup:
    # Line 386
    move	$a7,$a1
    andi	$at,$a1,0x7
    addiu	$sp,$sp,-80
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$gp,8($sp)
    lui	$v0,0x12
    addiu	$v0,$v0,408
    bnez	$at,.L0dade568
    addu	$gp,$t9,$v0
    andi	$v1,$a2,0x7
    bnez	$v1,.L0dade56c
    # Line 420
    lui	$a1,0xe
    # Line 393
    bne	$a2,$a3,.L0dade56c
    # Line 420
    lui	$a1,0xe
    # Line 393
    multu	$a2,$a4
    lui	$a6,0xf
    ori	$a6,$a6,0xffff
    mflo	$a0
    sltu	$a6,$a6,$a0
    bnez	$a6,.L0dade638
    # Line 396
    andi	$a6,$a4,0x1
    # Line 395
    move	$a2,$a0
    # Line 396
    li	$a4,1
    sd	$ra,16($sp)
.L0dade564:
    # Line 403
    move	$a3,$a2
.L0dade568:
    # Line 420
    lui	$a1,0xe
.L0dade56c:
    ori	$a1,$a1,0x400
    sll	$a0,$a5,0x1
    ori	$a0,$a0,0xa1
    # lw $t9, -18684($gp) # &__glMgrim_pipe
    # Line 419
    lui	$t1,0x7
    # Line 416
    lui	$t8,0x8
    ori	$t8,$t8,0x804
    # Line 419
    ori	$t1,$t1,0xc
    sd	$ra,16($sp)
    lui	$t0,0x1
    addu	$t2,$t0,$s0
    lw	$t2,-25272($t2)
    # Line 414
    lui	$ra,0x8
    ori	$ra,$ra,0x704
    # Line 419
    addu	$t1,$t1,$t2
    # Line 418
    lui	$t2,0x8
    ori	$t2,$t2,0xb04
    # Line 412
    lui	$at,0x8
    ori	$at,$at,0x604
    # Line 410
    lui	$v0,0x8
    ori	$v0,$v0,0x504
    # Line 407
    lui	$a5,0x8000
    # Line 408
    lui	$v1,0x8
    ori	$v1,$v1,0x404
    # Line 406
    lui	$a6,0x8
    lui	$t3,0x7
    ori	$t3,$t3,0x4080
    ori	$a6,$a6,0x4
    sw	$a6,0($t3)
    # Line 407
    sw	$a5,0($t3)
    # Line 408
    sw	$v1,0($t3)
    # Line 409
    sw	$a3,0($t3)
    # Line 410
    sw	$v0,0($t3)
    # Line 411
    sw	$zero,0($t3)
    # Line 412
    sw	$at,0($t3)
    # Line 413
    sw	$a7,0($t3)
    # Line 414
    sw	$ra,0($t3)
    # Line 415
    sw	$a4,0($t3)
    # Line 416
    sw	$t8,0($t3)
    # Line 417
    sw	$a2,0($t3)
    # Line 418
    sw	$t2,0($t3)
    # Line 420
    jal	__glMgrim_pipe
    # Line 419
    sw	$t0,0($t1)
    # Line 421
    # lw $t9, -30324($gp) # &__glMgrWaitForDMAWrite
    bal __glMgrWaitForDMAWrite
    move	$a0,$s0
    # Line 422
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dade638:
    # Line 396
    bnezl	$a6,.L0dade564
    sd	$ra,16($sp)
    lui	$a0,0x7
    ori	$a0,$a0,0xffff
    sltu	$at,$a0,$a2
    bnezl	$at,.L0dade564
    sd	$ra,16($sp)
    # Line 399
    srl	$a4,$a4,0x1
.L0dade658:
    # Line 400
    andi	$a6,$a4,0x1
    bnez	$a6,.L0dade670
    sll	$a2,$a2,0x1
    sltu	$at,$a0,$a2
    beqzl	$at,.L0dade658
    # Line 399
    srl	$a4,$a4,0x1
.L0dade670:
    b	.L0dade564
    sd	$ra,16($sp)
.end __glMgr_WriteDMAHQSetup

# Function: __glMgr_WriteMultiDMAHQSetup
# Declared: Line 431 (Source lines: 435-487)
# Address: 0x0dade678 - 0x0dade8dc (Size: 612 bytes, Frame: 240)
.globl __glMgr_WriteMultiDMAHQSetup
.ent __glMgr_WriteMultiDMAHQSetup
__glMgr_WriteMultiDMAHQSetup:
    # Line 435
    move	$t1,$a1
    li	$at,1
    addiu	$sp,$sp,-112
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$gp,16($sp)
    lui	$v0,0x12
    addiu	$v0,$v0,32
    beq	$a1,$at,.L0dade854
    addu	$gp,$t9,$v0
.L0dade6a0:
    # Line 455
    move	$t8,$t1
.L0dade6a4:
    andi	$t3,$t1,0x3
    beqz	$t1,.L0dade720
    move	$a1,$a2
    addiu	$a0,$sp,0
    sll	$t2,$t1,0x2
    beqz	$t3,.L0dade6d8
    addu	$t2,$t2,$a2
.L0dade6c0:
    # Line 458
    addiu	$a1,$a1,4
    addiu	$a0,$a0,2
    # Line 459
    lw	$at,-4($a1)
    addi	$t3,$t3,-1
    bnez	$t3,.L0dade6c0
    sh	$at,-2($a0)
.L0dade6d8:
    move	$t3,$a0
    sra	$v0,$t8,0x2
    beqz	$v0,.L0dade71c
    move	$a2,$a1
    move	$a1,$t3
    move	$a0,$a2
.L0dade6f0:
    # Line 458
    addiu	$a1,$a1,8
    # Line 459
    lw	$v0,12($a0)
    # Line 458
    addiu	$a0,$a0,16
    # Line 459
    lw	$at,-8($a0)
    sh	$v0,-2($a1)
    lw	$t0,-12($a0)
    sh	$at,-4($a1)
    lw	$v1,-16($a0)
    sh	$t0,-6($a1)
    # Line 458
    bne	$a0,$t2,.L0dade6f0
    # Line 459
    sh	$v1,-8($a1)
.L0dade71c:
    sd	$ra,32($sp)
.L0dade720:
    # Line 485
    lw	$a0,116($sp)
    lui	$a1,0xe
    ori	$a1,$a1,0x400
    sll	$a0,$a0,0x1
    ori	$a0,$a0,0xa1
    # Line 480
    subu	$at,$a6,$a4
    # Line 484
    lui	$t0,0x7
    # Line 481
    lui	$t9,0x8
    ori	$t9,$t9,0x904
    # Line 484
    ori	$t0,$t0,0xc
    # Line 482
    addiu	$t3,$t1,-2
    multu	$t3,$a6
    # Line 484
    lui	$t2,0x1
    addu	$t2,$t2,$s0
    lw	$t2,-25272($t2)
    # Line 479
    lui	$v0,0x8
    ori	$v0,$v0,0x804
    # Line 484
    addu	$t0,$t0,$t2
    # Line 483
    lui	$t2,0x8
    ori	$t2,$t2,0xb04
    # Line 477
    lui	$v1,0x8
    ori	$v1,$v1,0x704
    # Line 475
    lui	$a2,0x8
    ori	$a2,$a2,0x604
    # Line 482
    mflo	$t8
    subu	$t8,$a5,$t8
    subu	$t8,$t8,$at
    sd	$ra,32($sp)
    # Line 461
    addiu	$ra,$sp,0
    addu	$t3,$t1,$t1
    addu	$t3,$t3,$ra
    # Line 466
    lui	$ra,0x8
    ori	$ra,$ra,0x10
    # Line 461
    lhu	$t1,-2($t3)
    # Line 473
    lui	$a5,0x8
    ori	$a5,$a5,0x504
    # Line 461
    ori	$t1,$t1,0x8000
    sh	$t1,-2($t3)
    # Line 466
    lui	$t3,0x7
    ori	$t3,$t3,0x4080
    # Line 467
    lw	$t1,0($sp)
    # Line 466
    sw	$ra,0($t3)
    # Line 468
    lw	$ra,4($sp)
    # Line 467
    sw	$t1,0($t3)
    # Line 469
    lw	$t1,8($sp)
    # Line 468
    sw	$ra,0($t3)
    # Line 470
    lw	$ra,12($sp)
    # Line 469
    sw	$t1,0($t3)
    # Line 471
    lui	$t1,0x8
    # Line 470
    sw	$ra,0($t3)
    # Line 471
    ori	$t1,$t1,0x404
    sw	$t1,0($t3)
    # Line 472
    sw	$a6,0($t3)
    # Line 473
    sw	$a5,0($t3)
    # Line 474
    sw	$a4,0($t3)
    # Line 475
    sw	$a2,0($t3)
    # Line 476
    sw	$a3,0($t3)
    # Line 484
    lui	$a3,0x1
    # Line 485
    la	$a2,__glMgrim_pipe
    # Line 477
    sw	$v1,0($t3)
    # Line 478
    sw	$a7,0($t3)
    # Line 479
    sw	$v0,0($t3)
    # Line 480
    sw	$at,0($t3)
    # Line 481
    sw	$t9,0($t3)
    move	$t9,$a2
    # Line 482
    sw	$t8,0($t3)
    # Line 483
    sw	$t2,0($t3)
    # Line 485
    jalr	$a2
    # Line 484
    sw	$a3,0($t0)
    # Line 486
    # lw $t9, -30324($gp) # &__glMgrWaitForDMAWrite
    bal __glMgrWaitForDMAWrite
    move	$a0,$s0
    # Line 487
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dade854:
    # Line 435
    andi	$t0,$a3,0x7
    bnez	$t0,.L0dade6a4
    # Line 455
    move	$t8,$t1
    # Line 444
    andi	$at,$a5,0x7
    bnez	$at,.L0dade6a4
    # Line 455
    move	$t8,$t1
    # Line 444
    bne	$a5,$a6,.L0dade6a4
    # Line 455
    move	$t8,$t1
    # Line 444
    multu	$a5,$a7
    lui	$v0,0xf
    ori	$v0,$v0,0xffff
    mflo	$a0
    sltu	$v0,$v0,$a0
    bnez	$v0,.L0dade8a0
    # Line 448
    andi	$v1,$a7,0x1
    # Line 447
    move	$a5,$a0
    # Line 448
    li	$a7,1
.L0dade898:
    b	.L0dade6a0
    # Line 455
    move	$a6,$a5
.L0dade8a0:
    # Line 448
    bnez	$v1,.L0dade898
    lui	$a0,0x7
    ori	$a0,$a0,0xffff
    sltu	$t0,$a0,$a5
    bnez	$t0,.L0dade898
    nop
    # Line 451
    srl	$a7,$a7,0x1
.L0dade8bc:
    # Line 452
    andi	$t0,$a7,0x1
    bnez	$t0,.L0dade8d4
    sll	$a5,$a5,0x1
    sltu	$at,$a0,$a5
    beqzl	$at,.L0dade8bc
    # Line 451
    srl	$a7,$a7,0x1
.L0dade8d4:
    b	.L0dade898
    nop
.end __glMgr_WriteMultiDMAHQSetup

# Function: __glMgr_WriteDMAGESetup
# Declared: Line 503 (Source lines: 504-514)
# Address: 0x0dade8dc - 0x0dade948 (Size: 108 bytes, Frame: 0)
.globl __glMgr_WriteDMAGESetup
.ent __glMgr_WriteDMAGESetup
__glMgr_WriteDMAGESetup:
    # Line 510
    srl	$a3,$a0,0x2
    multu	$a3,$a1
    # Line 513
    sll	$v0,$a2,0x2
    # Line 510
    lui	$a3,0x7fc
    # Line 504
    lui	$a0,0x12
    addiu	$a0,$a0,-580
    addu	$at,$t9,$a0
    # Line 513
    la	$v1,SYMBOL_LOCATION
    # Line 511
    lui	$a1,0x3
    ori	$a1,$a1,0xfe00
    # Line 513
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    # Line 509
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    # Line 510
    mflo	$a2
    # Line 511
    and	$a1,$a2,$a1
    srl	$a1,$a1,0x9
    # Line 512
    andi	$a0,$a2,0x1ff
    # Line 510
    and	$a2,$a2,$a3
    # Line 509
    li	$a3,0x9d10
    sw	$a3,0($v1)
    # Line 510
    srl	$a2,$a2,0x12
    sw	$a2,0($v1)
    # Line 511
    sw	$a1,0($v1)
    # Line 512
    sw	$a0,0($v1)
    # Line 514
    jr	$ra
    # Line 513
    sw	$v0,0($v1)
.end __glMgr_WriteDMAGESetup

# Function: __glMgrWaitForDMARead
# Declared: Line 556 (Source lines: 560-566)
# Address: 0x0dade948 - 0x0dade998 (Size: 80 bytes, Frame: 0)
.globl __glMgrWaitForDMARead
.ent __glMgrWaitForDMARead
__glMgrWaitForDMARead:
    # Line 560
    lui	$at,0x7
    lui	$v0,0xe
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    lui	$a2,0x1
    addu	$a2,$a0,$a2
    lw	$a2,-25272($a2)
    ori	$v0,$v0,0x100
    sw	$v0,0($v1)
    addu	$a2,$a2,$at
    lw	$at,260($a2)
    andi	$at,$at,0x1eff
    beqz	$at,.L0dade990
    nop
.L0dade980:
    lw	$at,260($a2)
    andi	$at,$at,0x1eff
    bnez	$at,.L0dade980
    nop
.L0dade990:
    # Line 566
    jr	$ra
    nop
.end __glMgrWaitForDMARead

# Function: __glMgr_ReadDMAHQSetup
# Declared: Line 576 (Source lines: 580-650)
# Address: 0x0dade998 - 0x0dadebdc (Size: 580 bytes, Frame: 240)
.globl __glMgr_ReadDMAHQSetup
.ent __glMgr_ReadDMAHQSetup
__glMgr_ReadDMAHQSetup:
    # Line 582
    move	$t2,$a5
    # Line 581
    move	$t1,$a2
    # Line 580
    move	$t3,$a1
    # Line 582
    andi	$at,$a1,0x7
    # Line 580
    addiu	$sp,$sp,-112
    sd	$a7,24($sp)
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$s1,16($sp)
    sd	$gp,8($sp)
    lui	$v0,0x12
    addiu	$v0,$v0,-768
    # Line 582
    beqz	$at,.L0dadeb60
    # Line 580
    addu	$gp,$t9,$v0
.L0dade9d0:
    # Line 602
    lui	$t0,0x7
.L0dade9d4:
    lui	$a0,0x1
    addu	$a0,$s0,$a0
    lw	$a0,-25272($a0)
    lui	$s1,0x7
    ori	$s1,$s1,0x4080
    addu	$a0,$a0,$t0
    li	$t0,0xf200
    sw	$t0,0($s1)
    lw	$v1,0($a0)
    andi	$v1,$v1,0x1
    bnezl	$v1,.L0dadea1c
    # Line 639
    lw	$a0,124($sp)
.L0dadea04:
    # Line 602
    lw	$t0,0($a0)
    andi	$t0,$t0,0x1
    beqz	$t0,.L0dadea04
    nop
    sd	$ra,32($sp)
    # Line 639
    lw	$a0,124($sp)
.L0dadea1c:
    lui	$a1,0xa
    ori	$a1,$a1,0x504
    sll	$a0,$a0,0x1
    ori	$a0,$a0,0xb9
    # Line 628
    lui	$a7,0xa
    ori	$a7,$a7,0x404
    # Line 627
    sll	$t8,$a5,0x10
    andi	$t0,$a4,0xffff
    or	$t0,$t0,$t8
    # Line 626
    lui	$t8,0xa
    ori	$t8,$t8,0x304
    # Line 607
    lw	$a5,116($sp)
    # Line 606
    lui	$a4,0xc
    ori	$a4,$a4,0x4
    sw	$a4,0($s1)
    # Line 611
    lui	$a4,0x8
    ori	$a4,$a4,0x404
    # Line 607
    sw	$a5,0($s1)
    # Line 609
    lui	$a5,0x8
    ori	$a5,$a5,0x4
    sw	$a5,0($s1)
    # Line 610
    lui	$a5,0x8000
    sw	$a5,0($s1)
    # Line 611
    sw	$a4,0($s1)
    # Line 631
    li	$a4,10
    # Line 624
    lui	$t9,0xa
    ori	$t9,$t9,0x204
    # Line 630
    lui	$a5,0xa
    ori	$a5,$a5,0x604
    sd	$ra,32($sp)
    # Line 619
    lui	$ra,0x8
    ori	$ra,$ra,0x804
    # Line 617
    lui	$at,0x8
    ori	$at,$at,0x704
    # Line 615
    lui	$v0,0x8
    ori	$v0,$v0,0x604
    # Line 613
    lui	$v1,0x8
    ori	$v1,$v1,0x504
    # Line 612
    sw	$a3,0($s1)
    # Line 613
    sw	$v1,0($s1)
    # Line 614
    sw	$zero,0($s1)
    # Line 615
    sw	$v0,0($s1)
    # Line 616
    sw	$t3,0($s1)
    # Line 617
    sw	$at,0($s1)
    # Line 618
    sw	$t2,0($s1)
    # Line 619
    sw	$ra,0($s1)
    # Line 620
    sw	$t1,0($s1)
    # Line 624
    sw	$t9,0($s1)
    # Line 625
    sw	$a2,0($s1)
    # Line 639
    la	$a2,__glMgrim_pipe
    # Line 633
    lui	$a3,0x8
    ori	$a3,$a3,0xb04
    move	$t9,$a2
    # Line 626
    sw	$t8,0($s1)
    # Line 627
    sw	$t0,0($s1)
    # Line 628
    sw	$a7,0($s1)
    # Line 629
    sw	$a6,0($s1)
    # Line 630
    sw	$a5,0($s1)
    # Line 631
    sw	$a4,0($s1)
    # Line 639
    jalr	$a2
    # Line 633
    sw	$a3,0($s1)
    # Line 643
    # lw $t9, -30308($gp) # &__glMgrWaitForDMARead
    # Line 641
    ld	$a2,24($sp)
    # Line 643
    move	$a0,$s0
    bal __glMgrWaitForDMARead
    # Line 641
    sw	$a2,0($s1)
    lui	$s0,0xc
    ld	$gp,8($sp)
    # Line 649
    li	$t0,3584
    ori	$s0,$s0,0x4
    # Line 645
    lui	$ra,0xa
    ori	$ra,$ra,0x704
    sw	$ra,0($s1)
    sw	$zero,0($s1)
    # Line 648
    sw	$s0,0($s1)
    # Line 650
    ld	$s0,0($sp)
    ld	$ra,32($sp)
    # Line 649
    sw	$t0,0($s1)
    # Line 650
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dadeb60:
    # Line 582
    andi	$at,$a2,0x7
    bnez	$at,.L0dade9d4
    # Line 602
    lui	$t0,0x7
    # Line 589
    bne	$a2,$a3,.L0dade9d4
    # Line 602
    lui	$t0,0x7
    # Line 589
    multu	$a2,$a5
    lui	$v0,0xf
    ori	$v0,$v0,0xffff
    mflo	$a0
    sltu	$v0,$v0,$a0
    bnez	$v0,.L0dadeba0
    # Line 592
    andi	$v1,$a5,0x1
    # Line 591
    move	$t1,$a0
    # Line 592
    li	$t2,1
.L0dadeb98:
    b	.L0dade9d0
    # Line 599
    move	$a3,$t1
.L0dadeba0:
    # Line 592
    bnez	$v1,.L0dadeb98
    lui	$a0,0x7
    ori	$a0,$a0,0xffff
    sltu	$t0,$a0,$a2
    bnez	$t0,.L0dadeb98
    nop
    # Line 595
    srl	$t2,$t2,0x1
.L0dadebbc:
    # Line 596
    andi	$t0,$t2,0x1
    bnez	$t0,.L0dadebd4
    sll	$t1,$t1,0x1
    sltu	$at,$a0,$t1
    beqzl	$at,.L0dadebbc
    # Line 595
    srl	$t2,$t2,0x1
.L0dadebd4:
    b	.L0dadeb98
    nop
.end __glMgr_ReadDMAHQSetup

# Function: PackLuminanceData
# Declared: Line 653 (Source lines: 655-856)
# Address: 0x0dadebdc - 0x0dadfbec (Size: 4112 bytes, Frame: 144)
.globl PackLuminanceData
.ent PackLuminanceData
PackLuminanceData:
    # Line 655
    addiu	$sp,$sp,-144
    sd	$gp,16($sp)
    sd	$ra,64($sp)
    # Line 669
    li	$ra,1
    # Line 667
    lw	$t0,3140($a0)
    # Line 668
    lw	$t1,3144($a0)
    # Line 669
    lw	$t2,3148($a0)
    sd	$s6,24($sp)
    # Line 663
    lw	$s6,152($a1)
    sd	$s0,56($sp)
    lw	$s0,1080($a0)
    sd	$s5,48($sp)
    # Line 655
    lui	$t3,0x12
    # Line 663
    multu	$s0,$s6
    # Line 655
    addiu	$t3,$t3,-1348
    addu	$at,$t9,$t3
    # Line 669
    ldc1	$f6,_lit8_3ff0000000000000
    sd	$s1,40($sp)
    # Line 663
    lw	$s1,156($a1)
    sd	$s2,32($sp)
    lw	$s2,100($a1)
    # Line 669
    lw	$t3,3152($a0)
    # Line 667
    li	$s0,32
    # Line 669
    subu	$t2,$s0,$t2
    # Line 668
    subu	$t1,$s0,$t1
    # Line 667
    subu	$t0,$s0,$t0
    # Line 663
    mflo	$s5
    addu	$s2,$s2,$s5
    # Line 669
    beqz	$t3,.L0dadfbe0
    # Line 663
    addu	$s1,$s1,$s2
    # Line 672
    lw	$t8,3240($a0)
    sllv	$t8,$ra,$t8
    addiu	$t8,$t8,-1
    mtc1	$t8,$f11
    nop
    cvt.d.w	$f11,$f11
    div.d	$f11,$f6,$f11
    # Line 671
    subu	$t8,$s0,$t3
    # Line 672
    cvt.s.d	$f11,$f11
.L0dadec78:
    # Line 680
    lw	$a6,3236($a0)
    sllv	$a6,$ra,$a6
    addiu	$a6,$a6,-1
    mtc1	$a6,$f8
    nop
    cvt.d.w	$f8,$f8
    div.d	$f8,$f6,$f8
    # Line 679
    lw	$v1,3232($a0)
    sllv	$v1,$ra,$v1
    addiu	$v1,$v1,-1
    mtc1	$v1,$f7
    nop
    cvt.d.w	$f7,$f7
    div.d	$f7,$f6,$f7
    # Line 678
    lw	$v0,3228($a0)
    sllv	$v0,$ra,$v0
    addiu	$v0,$v0,-1
    mtc1	$v0,$f9
    nop
    cvt.d.w	$f9,$f9
    div.d	$f9,$f6,$f9
    # Line 680
    cvt.s.d	$f8,$f8
    # Line 679
    cvt.s.d	$f7,$f7
    # Line 683
    addiu	$s2,$a3,-1
    beqz	$a3,.L0dadfbb4
    # Line 678
    cvt.s.d	$f9,$f9
    # Line 683
    lui	$s0,0xff
    lui	$ra,0xff00
    ldc1	$f14,_lit8_40efffe000000000
    li	$t3,-1
    lwc1	$f10,_lit_3f800000
    ldc1	$f13,_lit8_406fe00000000000
    addiu	$gp,$a2,-1
    addu	$a7,$a2,$a2
    b	.L0dadee08
    sd	$a7,0($sp)
.L0daded08:
    # Line 787
    lbu	$v0,1072($a0)
.L0daded0c:
    beqz	$v0,.L0dadedf8
    ld	$s6,0($sp)
    beqz	$a5,.L0dadf9fc
    nop
.L0daded1c:
    # Line 800
    move	$t9,$s1
    # Line 801
    addiu	$a3,$s6,-1
    beq	$a3,$t3,.L0dadedf8
    move	$s5,$s6
    andi	$v1,$s6,0x1
    beqz	$v1,.L0daded74
    move	$v0,$t9
    # Line 802
    lw	$v0,0($t9)
    # Line 801
    addiu	$a3,$a3,-1
    # Line 803
    addiu	$t9,$t9,4
    sll	$a7,$v0,0x18
    andi	$a6,$v0,0xff00
    sll	$a6,$a6,0x8
    or	$a6,$a6,$a7
    and	$a7,$ra,$v0
    and	$v0,$s0,$v0
    srl	$v0,$v0,0x8
    srl	$a7,$a7,0x18
    or	$a7,$a7,$v0
    or	$a6,$a6,$a7
    sw	$a6,-4($t9)
    move	$v0,$t9
.L0daded74:
    sra	$a7,$s5,0x1
    move	$s6,$a3
    beqz	$a7,.L0dadedf8
    sd	$t9,80($sp)
    move	$a3,$s6
    ld	$t9,80($sp)
.L0daded8c:
    # Line 802
    lw	$a7,4($t9)
    # Line 803
    addiu	$t9,$t9,8
    # Line 801
    addiu	$a3,$a3,-2
    # Line 803
    andi	$v1,$a7,0xff00
    sll	$v1,$v1,0x8
    sll	$a6,$a7,0x18
    or	$v1,$v1,$a6
    and	$a6,$ra,$a7
    srl	$a6,$a6,0x18
    and	$a7,$s0,$a7
    srl	$a7,$a7,0x8
    # Line 802
    lw	$v0,-8($t9)
    # Line 803
    or	$a6,$a6,$a7
    or	$v1,$v1,$a6
    andi	$a6,$v0,0xff00
    sll	$a6,$a6,0x8
    sll	$a7,$v0,0x18
    or	$a6,$a6,$a7
    and	$a7,$ra,$v0
    srl	$a7,$a7,0x18
    and	$v0,$s0,$v0
    srl	$v0,$v0,0x8
    or	$a7,$a7,$v0
    or	$a6,$a6,$a7
    sw	$a6,-8($t9)
    # Line 801
    bne	$a3,$t3,.L0daded8c
    # Line 803
    sw	$v1,-4($t9)
.L0dadedf8:
    # Line 810
    lw	$s6,152($a1)
.L0dadedfc:
    # Line 683
    addiu	$s2,$s2,-1
    beq	$s2,$t3,.L0dadfbb4
    # Line 854
    addu	$s1,$s6,$s1
.L0dadee08:
    # Line 685
    la	$a7,sub_0dbf0000
    lw	$a3,52($a1)
    move	$s5,$zero
    addiu	$a7,$a7,-4912
    addiu	$a3,$a3,-5120
    sltiu	$a6,$a3,7
    sll	$a3,$a3,0x2
    beqz	$a6,.L0dadedfc
    addu	$a3,$a3,$a7
    lw	$a6,%lo(jtbl_0dbeecd0)($a3)
    jr	$a6
    # Line 775
    move	$a3,$gp
.L0dadee38:
    # Line 688
    li	$s5,128
.L0dadee3c:
    # Line 692
    move	$t9,$s1
    beqz	$a5,.L0dadf418
    # Line 697
    move	$a3,$gp
    beqz	$a2,.L0dadedfc
    dsll32	$a7,$s5,0x0
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f12
    nop
    cvt.s.l	$f12,$f12
    cvt.d.s	$f12,$f12
    sub.d	$f12,$f13,$f12
    b	.L0dadef14
    cvt.s.d	$f12,$f12
.L0dadee70:
    # Line 722
    li	$s5,0x8000
.L0dadee74:
    # Line 726
    move	$t9,$s1
    beqz	$a5,.L0dadf4f0
    # Line 731
    move	$a3,$gp
    beqz	$a2,.L0dadf090
    dsll32	$v0,$s5,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f12
    nop
    cvt.s.l	$f12,$f12
    cvt.d.s	$f12,$f12
    sub.d	$f12,$f14,$f12
    b	.L0dadefdc
    cvt.s.d	$f12,$f12
.L0dadeea8:
    lui	$s5,0x8000
.L0dadeeac:
    # Line 770
    move	$t9,$s1
    beqz	$a5,.L0dadf5c8
    andi	$a7,$a2,0x1
    # Line 775
    beqz	$a2,.L0daded08
    li	$v1,-256
    subu	$v1,$v1,$s5
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f12
    b	.L0dadf188
    cvt.s.l	$f12,$f12
.L0dadeed8:
    # Line 702
    cvt.d.s	$f0,$f4
    c.lt.d	$f6,$f0
    nop
    bc1f	.L0dadeef0
    # Line 704
    mul.s	$f2,$f12,$f5
    # Line 703
    mov.s	$f4,$f10
.L0dadeef0:
    # Line 705
    mul.s	$f1,$f12,$f4
    # Line 704
    trunc.w.s	$f2,$f2
    # Line 705
    trunc.w.s	$f1,$f1
    # Line 704
    mfc1	$a7,$f2
    # Line 705
    addiu	$t9,$t9,2
    mfc1	$a6,$f1
    # Line 704
    sb	$a7,-2($t9)
    # Line 697
    beq	$a3,$t3,.L0dadefb0
    # Line 705
    sb	$a6,-1($t9)
.L0dadef14:
    # Line 700
    lw	$a6,4($a4)
    lw	$a7,0($a4)
    srlv	$a6,$a6,$t1
    dsll32	$a6,$a6,0x0
    dsrl32	$a6,$a6,0x0
    dmtc1	$a6,$f1
    srlv	$a7,$a7,$t0
    cvt.s.l	$f1,$f1
    dsll32	$a7,$a7,0x0
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f5
    nop
    cvt.s.l	$f5,$f5
    mul.s	$f1,$f1,$f7
    lw	$v1,8($a4)
    # Line 701
    lw	$v0,12($a4)
    # Line 700
    mul.s	$f5,$f5,$f9
    srlv	$v1,$v1,$t2
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f0
    # Line 701
    srlv	$v0,$v0,$t8
    # Line 700
    cvt.s.l	$f0,$f0
    # Line 701
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f4
    nop
    cvt.s.l	$f4,$f4
    # Line 700
    mul.s	$f0,$f0,$f8
    add.s	$f5,$f5,$f1
    add.s	$f5,$f5,$f0
    # Line 701
    cvt.d.s	$f0,$f5
    c.lt.d	$f6,$f0
    # Line 706
    addiu	$a4,$a4,16
    # Line 697
    addiu	$a3,$a3,-1
    # Line 701
    bc1f	.L0dadeed8
    mul.s	$f4,$f4,$f11
    b	.L0dadeed8
    # Line 702
    mov.s	$f5,$f10
.L0dadefb0:
    # Line 697
    b	.L0dadedfc
    lw	$s6,152($a1)
.L0dadefb8:
    # Line 739
    mul.s	$f0,$f12,$f4
    # Line 738
    trunc.w.s	$f1,$f1
    # Line 739
    trunc.w.s	$f0,$f0
    # Line 738
    mfc1	$v1,$f1
    # Line 739
    addiu	$t9,$t9,4
    mfc1	$v0,$f0
    # Line 738
    sh	$v1,-4($t9)
    # Line 731
    beq	$a3,$t3,.L0dadf090
    # Line 739
    sh	$v0,-2($t9)
.L0dadefdc:
    # Line 734
    lw	$v0,4($a4)
    lw	$v1,0($a4)
    srlv	$v0,$v0,$t1
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f1
    srlv	$v1,$v1,$t0
    cvt.s.l	$f1,$f1
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f5
    nop
    cvt.s.l	$f5,$f5
    mul.s	$f1,$f1,$f7
    lw	$a7,8($a4)
    # Line 735
    lw	$a6,12($a4)
    # Line 734
    mul.s	$f5,$f5,$f9
    srlv	$a7,$a7,$t2
    dsll32	$a7,$a7,0x0
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f0
    # Line 735
    srlv	$a6,$a6,$t8
    # Line 734
    cvt.s.l	$f0,$f0
    # Line 735
    dsll32	$a6,$a6,0x0
    dsrl32	$a6,$a6,0x0
    dmtc1	$a6,$f4
    nop
    cvt.s.l	$f4,$f4
    # Line 734
    mul.s	$f0,$f0,$f8
    add.s	$f5,$f5,$f1
    add.s	$f5,$f5,$f0
    # Line 735
    cvt.d.s	$f0,$f5
    c.lt.d	$f6,$f0
    # Line 740
    addiu	$a4,$a4,16
    # Line 731
    addiu	$a3,$a3,-1
    # Line 735
    bc1f	.L0dadf074
    mul.s	$f4,$f4,$f11
    # Line 736
    mov.s	$f5,$f10
.L0dadf074:
    cvt.d.s	$f0,$f4
    c.lt.d	$f6,$f0
    nop
    bc1f	.L0dadefb8
    # Line 738
    mul.s	$f1,$f12,$f5
    b	.L0dadefb8
    # Line 737
    mov.s	$f4,$f10
.L0dadf090:
    # Line 743
    lbu	$a6,1072($a0)
.L0dadf094:
    beqz	$a6,.L0dadf15c
    ld	$s6,0($sp)
    beqz	$a5,.L0dadf9f4
    nop
.L0dadf0a4:
    # Line 756
    move	$t9,$s1
    # Line 757
    addiu	$a3,$s6,-1
    beq	$a3,$t3,.L0dadf15c
    move	$s5,$s6
    andi	$s5,$s6,0x3
    beqz	$s5,.L0dadf0e4
    sd	$s6,8($sp)
.L0dadf0c0:
    addiu	$a3,$a3,-1
    # Line 758
    lhu	$v1,0($t9)
    # Line 759
    addiu	$t9,$t9,2
    addi	$s5,$s5,-1
    sll	$v0,$v1,0x8
    sra	$v1,$v1,0x8
    or	$v0,$v0,$v1
    bnez	$s5,.L0dadf0c0
    sh	$v0,-2($t9)
.L0dadf0e4:
    ld	$a6,8($sp)
    move	$s6,$a3
    sra	$a6,$a6,0x2
    beqz	$a6,.L0dadf15c
    move	$s5,$t9
    move	$a3,$s6
    move	$t9,$s5
.L0dadf100:
    # Line 758
    lhu	$v0,6($t9)
    # Line 759
    addiu	$t9,$t9,8
    # Line 757
    addiu	$a3,$a3,-4
    # Line 759
    sll	$a7,$v0,0x8
    # Line 758
    lhu	$a6,-8($t9)
    # Line 759
    sra	$v0,$v0,0x8
    or	$a7,$a7,$v0
    sll	$v1,$a6,0x8
    sra	$a6,$a6,0x8
    # Line 758
    lhu	$v0,-6($t9)
    # Line 759
    or	$v1,$v1,$a6
    sh	$v1,-8($t9)
    sll	$a6,$v0,0x8
    sra	$v0,$v0,0x8
    # Line 758
    lhu	$v1,-4($t9)
    # Line 759
    or	$a6,$a6,$v0
    sh	$a6,-6($t9)
    sll	$v0,$v1,0x8
    sra	$v1,$v1,0x8
    or	$v0,$v0,$v1
    sh	$v0,-4($t9)
    # Line 757
    bne	$a3,$t3,.L0dadf100
    # Line 759
    sh	$a7,-2($t9)
.L0dadf15c:
    # Line 763
    b	.L0dadedfc
    lw	$s6,152($a1)
.L0dadf164:
    # Line 783
    mul.s	$f1,$f12,$f4
    # Line 782
    trunc.l.s	$f2,$f2
    # Line 783
    trunc.l.s	$f1,$f1
    # Line 782
    dmfc1	$a6,$f2
    # Line 783
    addiu	$t9,$t9,8
    dmfc1	$v1,$f1
    # Line 782
    sw	$a6,-8($t9)
    # Line 775
    beq	$a3,$t3,.L0daded08
    # Line 783
    sw	$v1,-4($t9)
.L0dadf188:
    # Line 778
    lw	$v1,4($a4)
    lw	$a6,0($a4)
    srlv	$v1,$v1,$t1
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f1
    srlv	$a6,$a6,$t0
    cvt.s.l	$f1,$f1
    dsll32	$a6,$a6,0x0
    dsrl32	$a6,$a6,0x0
    dmtc1	$a6,$f5
    nop
    cvt.s.l	$f5,$f5
    mul.s	$f1,$f1,$f7
    lw	$v0,8($a4)
    # Line 779
    lw	$a7,12($a4)
    # Line 778
    mul.s	$f5,$f5,$f9
    srlv	$v0,$v0,$t2
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f0
    # Line 779
    srlv	$a7,$a7,$t8
    # Line 778
    cvt.s.l	$f0,$f0
    # Line 779
    dsll32	$a7,$a7,0x0
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f4
    nop
    cvt.s.l	$f4,$f4
    # Line 778
    mul.s	$f0,$f0,$f8
    add.s	$f5,$f5,$f1
    add.s	$f5,$f5,$f0
    # Line 779
    cvt.d.s	$f0,$f5
    c.lt.d	$f6,$f0
    # Line 784
    addiu	$a4,$a4,16
    # Line 775
    addiu	$a3,$a3,-1
    # Line 779
    bc1f	.L0dadf220
    mul.s	$f4,$f4,$f11
    # Line 780
    mov.s	$f5,$f10
.L0dadf220:
    cvt.d.s	$f0,$f4
    c.lt.d	$f6,$f0
    nop
    bc1f	.L0dadf164
    # Line 782
    mul.s	$f2,$f12,$f5
    b	.L0dadf164
    # Line 781
    mov.s	$f4,$f10
.L0dadf23c:
    # Line 814
    move	$t9,$s1
    beqz	$a5,.L0dadfa04
    # Line 829
    move	$s5,$a2
    # Line 817
    move	$a3,$gp
    beqzl	$a2,.L0dadf324
    # Line 829
    lbu	$a7,1072($a0)
    b	.L0dadf284
    # Line 820
    lw	$v1,4($a4)
.L0dadf25c:
    # Line 822
    cvt.d.s	$f1,$f4
    c.lt.d	$f6,$f1
    nop
    bc1fl	.L0dadf278
    # Line 824
    swc1	$f5,-8($t9)
    # Line 823
    mov.s	$f4,$f10
    # Line 824
    swc1	$f5,-8($t9)
.L0dadf278:
    # Line 817
    beq	$a3,$t3,.L0dadf320
    # Line 825
    swc1	$f4,-4($t9)
    # Line 820
    lw	$v1,4($a4)
.L0dadf284:
    lw	$a6,0($a4)
    srlv	$v1,$v1,$t1
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f1
    srlv	$a6,$a6,$t0
    cvt.s.l	$f1,$f1
    dsll32	$a6,$a6,0x0
    dsrl32	$a6,$a6,0x0
    dmtc1	$a6,$f5
    nop
    cvt.s.l	$f5,$f5
    mul.s	$f1,$f1,$f7
    lw	$v0,8($a4)
    # Line 821
    lw	$a7,12($a4)
    # Line 820
    mul.s	$f5,$f5,$f9
    srlv	$v0,$v0,$t2
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f0
    # Line 821
    srlv	$a7,$a7,$t8
    # Line 820
    cvt.s.l	$f0,$f0
    # Line 821
    dsll32	$a7,$a7,0x0
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f4
    nop
    cvt.s.l	$f4,$f4
    # Line 820
    mul.s	$f0,$f0,$f8
    add.s	$f5,$f5,$f1
    add.s	$f5,$f5,$f0
    # Line 821
    cvt.d.s	$f0,$f5
    # Line 825
    addiu	$t9,$t9,8
    # Line 821
    c.lt.d	$f6,$f0
    # Line 817
    addiu	$a3,$a3,-1
    # Line 826
    addiu	$a4,$a4,16
    # Line 821
    bc1f	.L0dadf25c
    mul.s	$f4,$f4,$f11
    b	.L0dadf25c
    # Line 822
    mov.s	$f5,$f10
.L0dadf320:
    # Line 829
    lbu	$a7,1072($a0)
.L0dadf324:
    beqz	$a7,.L0dadf410
    ld	$s6,0($sp)
    beqz	$a5,.L0dadfbd8
    nop
.L0dadf334:
    # Line 842
    move	$t9,$s1
    # Line 843
    addiu	$a3,$s6,-1
    beq	$a3,$t3,.L0dadf410
    move	$s5,$s6
    andi	$v0,$s6,0x1
    beqz	$v0,.L0dadf38c
    move	$s6,$a3
    # Line 844
    lw	$a7,0($t9)
    # Line 843
    addiu	$a3,$a3,-1
    # Line 845
    addiu	$t9,$t9,4
    sll	$a6,$a7,0x18
    andi	$v1,$a7,0xff00
    sll	$v1,$v1,0x8
    or	$v1,$v1,$a6
    and	$a6,$ra,$a7
    and	$a7,$s0,$a7
    srl	$a7,$a7,0x8
    srl	$a6,$a6,0x18
    or	$a6,$a6,$a7
    or	$v1,$v1,$a6
    sw	$v1,-4($t9)
    move	$s6,$a3
.L0dadf38c:
    move	$a7,$t9
    sra	$a6,$s5,0x1
    beqz	$a6,.L0dadf410
    sd	$t9,72($sp)
    move	$t9,$s6
    ld	$a3,72($sp)
.L0dadf3a4:
    # Line 844
    lw	$a6,4($a3)
    # Line 845
    addiu	$a3,$a3,8
    # Line 843
    addiu	$t9,$t9,-2
    # Line 845
    andi	$v0,$a6,0xff00
    sll	$v0,$v0,0x8
    sll	$v1,$a6,0x18
    or	$v0,$v0,$v1
    and	$v1,$ra,$a6
    srl	$v1,$v1,0x18
    and	$a6,$s0,$a6
    srl	$a6,$a6,0x8
    # Line 844
    lw	$a7,-8($a3)
    # Line 845
    or	$v1,$v1,$a6
    or	$v0,$v0,$v1
    andi	$v1,$a7,0xff00
    sll	$v1,$v1,0x8
    sll	$a6,$a7,0x18
    or	$v1,$v1,$a6
    and	$a6,$ra,$a7
    srl	$a6,$a6,0x18
    and	$a7,$s0,$a7
    srl	$a7,$a7,0x8
    or	$a6,$a6,$a7
    or	$v1,$v1,$a6
    sw	$v1,-8($a3)
    # Line 843
    bne	$t9,$t3,.L0dadf3a4
    # Line 845
    sw	$v0,-4($a3)
.L0dadf410:
    b	.L0dadedfc
    # Line 852
    lw	$s6,152($a1)
.L0dadf418:
    # Line 709
    move	$a3,$gp
    beqz	$a2,.L0dadedfc
    dsll32	$a6,$s5,0x0
    dsrl32	$a6,$a6,0x0
    dmtc1	$a6,$f12
    nop
    cvt.s.l	$f12,$f12
    cvt.d.s	$f12,$f12
    sub.d	$f12,$f13,$f12
    move	$s6,$a2
    andi	$v1,$a2,0x1
    beqz	$v1,.L0dadf4dc
    cvt.s.d	$f12,$f12
    # Line 712
    lw	$v1,0($a4)
    lw	$v0,4($a4)
    srlv	$v1,$v1,$t0
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f5
    lw	$a7,8($a4)
    srlv	$v0,$v0,$t1
    cvt.s.l	$f5,$f5
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f1
    srlv	$a7,$a7,$t2
    cvt.s.l	$f1,$f1
    dsll32	$a7,$a7,0x0
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f0
    nop
    cvt.s.l	$f0,$f0
    mul.s	$f1,$f1,$f7
    mul.s	$f5,$f5,$f9
    mul.s	$f0,$f0,$f8
    add.s	$f5,$f5,$f1
    add.s	$f5,$f5,$f0
    cvt.d.s	$f0,$f5
    c.lt.d	$f6,$f0
    # Line 715
    addiu	$a4,$a4,12
    # Line 712
    bc1f	.L0dadf4c4
    # Line 709
    addiu	$a3,$a3,-1
    # Line 713
    mov.s	$f5,$f10
.L0dadf4c4:
    # Line 714
    addiu	$t9,$t9,1
    mul.s	$f0,$f12,$f5
    trunc.w.s	$f0,$f0
    mfc1	$a6,$f0
    nop
    sb	$a6,-1($t9)
.L0dadf4dc:
    sra	$a7,$s6,0x1
    bnezl	$a7,.L0dadf6b0
    # Line 712
    lw	$v1,0($a4)
.L0dadf4e8:
    # Line 709
    b	.L0dadedfc
    lw	$s6,152($a1)
.L0dadf4f0:
    # Line 743
    move	$a3,$gp
    beqz	$a2,.L0dadf090
    dsll32	$v1,$s5,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f12
    nop
    cvt.s.l	$f12,$f12
    cvt.d.s	$f12,$f12
    sub.d	$f12,$f14,$f12
    move	$s6,$a2
    andi	$v0,$a2,0x1
    beqz	$v0,.L0dadf5b4
    cvt.s.d	$f12,$f12
    # Line 746
    lw	$v0,0($a4)
    lw	$a7,4($a4)
    srlv	$v0,$v0,$t0
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f5
    lw	$a6,8($a4)
    srlv	$a7,$a7,$t1
    cvt.s.l	$f5,$f5
    dsll32	$a7,$a7,0x0
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f1
    srlv	$a6,$a6,$t2
    cvt.s.l	$f1,$f1
    dsll32	$a6,$a6,0x0
    dsrl32	$a6,$a6,0x0
    dmtc1	$a6,$f0
    nop
    cvt.s.l	$f0,$f0
    mul.s	$f1,$f1,$f7
    mul.s	$f5,$f5,$f9
    mul.s	$f0,$f0,$f8
    add.s	$f5,$f5,$f1
    add.s	$f5,$f5,$f0
    cvt.d.s	$f0,$f5
    c.lt.d	$f6,$f0
    # Line 749
    addiu	$a4,$a4,12
    # Line 746
    bc1f	.L0dadf59c
    # Line 743
    addiu	$a3,$a3,-1
    # Line 747
    mov.s	$f5,$f10
.L0dadf59c:
    # Line 748
    addiu	$t9,$t9,2
    mul.s	$f0,$f12,$f5
    trunc.w.s	$f0,$f0
    mfc1	$v1,$f0
    nop
    sh	$v1,-2($t9)
.L0dadf5b4:
    sra	$a6,$s6,0x1
    bnezl	$a6,.L0dadf7d0
    # Line 746
    lw	$v1,0($a4)
.L0dadf5c0:
    b	.L0dadf094
    # Line 743
    lbu	$a6,1072($a0)
.L0dadf5c8:
    # Line 787
    beqz	$a2,.L0daded08
    move	$a3,$gp
    li	$v0,-256
    subu	$v0,$v0,$s5
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f12
    move	$s6,$a2
    beqz	$a7,.L0dadf680
    cvt.s.l	$f12,$f12
    # Line 790
    lw	$a7,0($a4)
    lw	$a6,4($a4)
    srlv	$a7,$a7,$t0
    dsll32	$a7,$a7,0x0
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f5
    lw	$v1,8($a4)
    srlv	$a6,$a6,$t1
    cvt.s.l	$f5,$f5
    dsll32	$a6,$a6,0x0
    dsrl32	$a6,$a6,0x0
    dmtc1	$a6,$f1
    srlv	$v1,$v1,$t2
    cvt.s.l	$f1,$f1
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f0
    nop
    cvt.s.l	$f0,$f0
    mul.s	$f1,$f1,$f7
    mul.s	$f5,$f5,$f9
    mul.s	$f0,$f0,$f8
    add.s	$f5,$f5,$f1
    add.s	$f5,$f5,$f0
    cvt.d.s	$f0,$f5
    c.lt.d	$f6,$f0
    # Line 793
    addiu	$a4,$a4,12
    # Line 790
    bc1f	.L0dadf668
    # Line 787
    addiu	$a3,$a3,-1
    # Line 791
    mov.s	$f5,$f10
.L0dadf668:
    # Line 792
    addiu	$t9,$t9,4
    mul.s	$f0,$f12,$f5
    trunc.l.s	$f0,$f0
    dmfc1	$v0,$f0
    nop
    sw	$v0,-4($t9)
.L0dadf680:
    sra	$v1,$s6,0x1
    bnezl	$v1,.L0dadf8f0
    # Line 790
    lw	$v1,0($a4)
.L0dadf68c:
    b	.L0daded0c
    # Line 787
    lbu	$v0,1072($a0)
.L0dadf694:
    # Line 714
    mul.s	$f1,$f12,$f5
    trunc.w.s	$f1,$f1
    mfc1	$a6,$f1
    # Line 715
    addiu	$a4,$a4,12
    # Line 709
    beq	$a3,$t3,.L0dadf4e8
    # Line 714
    sb	$a6,-1($t9)
    # Line 712
    lw	$v1,0($a4)
.L0dadf6b0:
    lw	$v0,4($a4)
    srlv	$v1,$v1,$t0
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f5
    lw	$a7,8($a4)
    srlv	$v0,$v0,$t1
    cvt.s.l	$f5,$f5
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f1
    srlv	$a7,$a7,$t2
    cvt.s.l	$f1,$f1
    dsll32	$a7,$a7,0x0
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f0
    nop
    cvt.s.l	$f0,$f0
    mul.s	$f1,$f1,$f7
    mul.s	$f5,$f5,$f9
    mul.s	$f0,$f0,$f8
    add.s	$f5,$f5,$f1
    add.s	$f5,$f5,$f0
    cvt.d.s	$f2,$f5
    c.lt.d	$f6,$f2
    nop
    bc1f	.L0dadf724
    # Line 709
    addiu	$a3,$a3,-2
    # Line 713
    mov.s	$f5,$f10
.L0dadf724:
    # Line 714
    mul.s	$f0,$f12,$f5
    trunc.w.s	$f0,$f0
    mfc1	$v1,$f0
    nop
    sb	$v1,0($t9)
    # Line 712
    lw	$v0,12($a4)
    lw	$a7,16($a4)
    srlv	$v0,$v0,$t0
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f5
    lw	$a6,20($a4)
    srlv	$a7,$a7,$t1
    cvt.s.l	$f5,$f5
    dsll32	$a7,$a7,0x0
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f1
    srlv	$a6,$a6,$t2
    cvt.s.l	$f1,$f1
    dsll32	$a6,$a6,0x0
    dsrl32	$a6,$a6,0x0
    dmtc1	$a6,$f0
    nop
    cvt.s.l	$f0,$f0
    mul.s	$f1,$f1,$f7
    mul.s	$f5,$f5,$f9
    mul.s	$f0,$f0,$f8
    add.s	$f5,$f5,$f1
    add.s	$f5,$f5,$f0
    cvt.d.s	$f0,$f5
    c.lt.d	$f6,$f0
    # Line 714
    addiu	$t9,$t9,2
    # Line 712
    bc1f	.L0dadf694
    # Line 715
    addiu	$a4,$a4,12
    b	.L0dadf694
    # Line 713
    mov.s	$f5,$f10
.L0dadf7b4:
    # Line 748
    mul.s	$f1,$f12,$f5
    trunc.w.s	$f1,$f1
    mfc1	$a6,$f1
    # Line 749
    addiu	$a4,$a4,12
    # Line 743
    beq	$a3,$t3,.L0dadf5c0
    # Line 748
    sh	$a6,-2($t9)
    # Line 746
    lw	$v1,0($a4)
.L0dadf7d0:
    lw	$v0,4($a4)
    srlv	$v1,$v1,$t0
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f5
    lw	$a7,8($a4)
    srlv	$v0,$v0,$t1
    cvt.s.l	$f5,$f5
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f1
    srlv	$a7,$a7,$t2
    cvt.s.l	$f1,$f1
    dsll32	$a7,$a7,0x0
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f0
    nop
    cvt.s.l	$f0,$f0
    mul.s	$f1,$f1,$f7
    mul.s	$f5,$f5,$f9
    mul.s	$f0,$f0,$f8
    add.s	$f5,$f5,$f1
    add.s	$f5,$f5,$f0
    cvt.d.s	$f2,$f5
    c.lt.d	$f6,$f2
    nop
    bc1f	.L0dadf844
    # Line 743
    addiu	$a3,$a3,-2
    # Line 747
    mov.s	$f5,$f10
.L0dadf844:
    # Line 748
    mul.s	$f0,$f12,$f5
    trunc.w.s	$f0,$f0
    mfc1	$v1,$f0
    nop
    sh	$v1,0($t9)
    # Line 746
    lw	$v0,12($a4)
    lw	$a7,16($a4)
    srlv	$v0,$v0,$t0
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f5
    lw	$a6,20($a4)
    srlv	$a7,$a7,$t1
    cvt.s.l	$f5,$f5
    dsll32	$a7,$a7,0x0
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f1
    srlv	$a6,$a6,$t2
    cvt.s.l	$f1,$f1
    dsll32	$a6,$a6,0x0
    dsrl32	$a6,$a6,0x0
    dmtc1	$a6,$f0
    nop
    cvt.s.l	$f0,$f0
    mul.s	$f1,$f1,$f7
    mul.s	$f5,$f5,$f9
    mul.s	$f0,$f0,$f8
    add.s	$f5,$f5,$f1
    add.s	$f5,$f5,$f0
    cvt.d.s	$f0,$f5
    c.lt.d	$f6,$f0
    # Line 748
    addiu	$t9,$t9,4
    # Line 746
    bc1f	.L0dadf7b4
    # Line 749
    addiu	$a4,$a4,12
    b	.L0dadf7b4
    # Line 747
    mov.s	$f5,$f10
.L0dadf8d4:
    # Line 792
    mul.s	$f1,$f12,$f5
    trunc.l.s	$f1,$f1
    dmfc1	$a6,$f1
    # Line 793
    addiu	$a4,$a4,12
    # Line 787
    beq	$a3,$t3,.L0dadf68c
    # Line 792
    sw	$a6,-4($t9)
    # Line 790
    lw	$v1,0($a4)
.L0dadf8f0:
    lw	$v0,4($a4)
    srlv	$v1,$v1,$t0
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f5
    lw	$a7,8($a4)
    srlv	$v0,$v0,$t1
    cvt.s.l	$f5,$f5
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f1
    srlv	$a7,$a7,$t2
    cvt.s.l	$f1,$f1
    dsll32	$a7,$a7,0x0
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f0
    nop
    cvt.s.l	$f0,$f0
    mul.s	$f1,$f1,$f7
    mul.s	$f5,$f5,$f9
    mul.s	$f0,$f0,$f8
    add.s	$f5,$f5,$f1
    add.s	$f5,$f5,$f0
    cvt.d.s	$f2,$f5
    c.lt.d	$f6,$f2
    nop
    bc1f	.L0dadf964
    # Line 787
    addiu	$a3,$a3,-2
    # Line 791
    mov.s	$f5,$f10
.L0dadf964:
    # Line 792
    mul.s	$f0,$f12,$f5
    trunc.l.s	$f0,$f0
    dmfc1	$v1,$f0
    nop
    sw	$v1,0($t9)
    # Line 790
    lw	$v0,12($a4)
    lw	$a7,16($a4)
    srlv	$v0,$v0,$t0
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f5
    lw	$a6,20($a4)
    srlv	$a7,$a7,$t1
    cvt.s.l	$f5,$f5
    dsll32	$a7,$a7,0x0
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f1
    srlv	$a6,$a6,$t2
    cvt.s.l	$f1,$f1
    dsll32	$a6,$a6,0x0
    dsrl32	$a6,$a6,0x0
    dmtc1	$a6,$f0
    nop
    cvt.s.l	$f0,$f0
    mul.s	$f1,$f1,$f7
    mul.s	$f5,$f5,$f9
    mul.s	$f0,$f0,$f8
    add.s	$f5,$f5,$f1
    add.s	$f5,$f5,$f0
    cvt.d.s	$f0,$f5
    c.lt.d	$f6,$f0
    # Line 792
    addiu	$t9,$t9,8
    # Line 790
    bc1f	.L0dadf8d4
    # Line 793
    addiu	$a4,$a4,12
    b	.L0dadf8d4
    # Line 791
    mov.s	$f5,$f10
.L0dadf9f4:
    b	.L0dadf0a4
    # Line 755
    move	$s6,$a2
.L0dadf9fc:
    b	.L0daded1c
    # Line 799
    move	$s6,$a2
.L0dadfa04:
    # Line 829
    move	$a3,$gp
    beqz	$a2,.L0dadf320
    andi	$a6,$a2,0x1
    beqz	$a6,.L0dadfa9c
    sra	$a6,$s5,0x1
    # Line 832
    lw	$v1,0($a4)
    lw	$v0,4($a4)
    srlv	$v1,$v1,$t0
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f5
    lw	$a7,8($a4)
    srlv	$v0,$v0,$t1
    cvt.s.l	$f5,$f5
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f1
    srlv	$a7,$a7,$t2
    cvt.s.l	$f1,$f1
    dsll32	$a7,$a7,0x0
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f0
    nop
    cvt.s.l	$f0,$f0
    mul.s	$f1,$f1,$f7
    mul.s	$f5,$f5,$f9
    mul.s	$f0,$f0,$f8
    add.s	$f5,$f5,$f1
    add.s	$f5,$f5,$f0
    cvt.d.s	$f1,$f5
    c.lt.d	$f6,$f1
    # Line 835
    addiu	$a4,$a4,12
    # Line 832
    bc1f	.L0dadfa90
    # Line 829
    addiu	$a3,$a3,-1
    # Line 833
    mov.s	$f5,$f10
.L0dadfa90:
    # Line 834
    swc1	$f5,0($t9)
    addiu	$t9,$t9,4
    sra	$a6,$s5,0x1
.L0dadfa9c:
    bnezl	$a6,.L0dadfb3c
    # Line 832
    lw	$v0,0($a4)
.L0dadfaa4:
    b	.L0dadf324
    # Line 829
    lbu	$a7,1072($a0)
.L0dadfaac:
    # Line 834
    swc1	$f5,0($t9)
    # Line 832
    lw	$v1,12($a4)
    lw	$v0,16($a4)
    srlv	$v1,$v1,$t0
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f5
    lw	$a7,20($a4)
    srlv	$v0,$v0,$t1
    cvt.s.l	$f5,$f5
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f1
    srlv	$a7,$a7,$t2
    cvt.s.l	$f1,$f1
    dsll32	$a7,$a7,0x0
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f0
    nop
    cvt.s.l	$f0,$f0
    mul.s	$f1,$f1,$f7
    mul.s	$f5,$f5,$f9
    mul.s	$f0,$f0,$f8
    add.s	$f5,$f5,$f1
    add.s	$f5,$f5,$f0
    cvt.d.s	$f0,$f5
    c.lt.d	$f6,$f0
    nop
    bc1f	.L0dadfb28
    # Line 835
    addiu	$a4,$a4,12
    # Line 833
    mov.s	$f5,$f10
.L0dadfb28:
    # Line 835
    addiu	$a4,$a4,12
    # Line 834
    swc1	$f5,4($t9)
    # Line 829
    beq	$a3,$t3,.L0dadfaa4
    # Line 834
    addiu	$t9,$t9,8
    # Line 832
    lw	$v0,0($a4)
.L0dadfb3c:
    lw	$a7,4($a4)
    srlv	$v0,$v0,$t0
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f5
    lw	$a6,8($a4)
    srlv	$a7,$a7,$t1
    cvt.s.l	$f5,$f5
    dsll32	$a7,$a7,0x0
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f1
    srlv	$a6,$a6,$t2
    cvt.s.l	$f1,$f1
    dsll32	$a6,$a6,0x0
    dsrl32	$a6,$a6,0x0
    dmtc1	$a6,$f0
    nop
    cvt.s.l	$f0,$f0
    mul.s	$f1,$f1,$f7
    mul.s	$f5,$f5,$f9
    mul.s	$f0,$f0,$f8
    add.s	$f5,$f5,$f1
    add.s	$f5,$f5,$f0
    cvt.d.s	$f0,$f5
    c.lt.d	$f6,$f0
    nop
    bc1f	.L0dadfaac
    # Line 829
    addiu	$a3,$a3,-2
    b	.L0dadfaac
    # Line 833
    mov.s	$f5,$f10
.L0dadfbb4:
    # Line 856
    ld	$s0,56($sp)
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    ld	$s5,48($sp)
    ld	$ra,64($sp)
    ld	$s6,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dadfbd8:
    b	.L0dadf334
    # Line 841
    move	$s6,$a2
.L0dadfbe0:
    # Line 675
    lwc1	$f11,_lit_3b808081
    b	.L0dadec78
    # Line 674
    li	$t8,24
.end PackLuminanceData

# Function: PackFloatData
# Declared: Line 859 (Source lines: 861-905)
# Address: 0x0dadfbec - 0x0dadff28 (Size: 828 bytes, Frame: 192)
.globl PackFloatData
.ent PackFloatData
PackFloatData:
    # Line 861
    addiu	$sp,$sp,-64
    # Line 868
    li	$v0,6400
    lw	$a6,40($a1)
    # Line 861
    lui	$v1,0x12
    addiu	$v1,$v1,-5460
    # Line 868
    beq	$a6,$v0,.L0dadfdcc
    # Line 861
    addu	$at,$t9,$v1
    # Line 868
    li	$a4,6401
    beq	$a6,$a4,.L0dadfdcc
    # Line 873
    lwc1	$f4,_lit_2f800001
    # Line 872
    li	$t0,-256
.L0dadfc18:
    # Line 876
    lw	$a5,1080($a0)
    lw	$t8,152($a1)
    multu	$a5,$t8
    addiu	$a6,$a3,-1
    lbu	$v1,1072($a0)
    lw	$v0,100($a1)
    lw	$t2,156($a1)
    mflo	$a4
    addu	$v0,$v0,$a4
    beqz	$v1,.L0dadfdd8
    addu	$t2,$t2,$v0
    # Line 882
    beqz	$a3,.L0dadfdc4
    move	$t3,$a6
    lui	$a7,0xff
    lui	$a6,0xff00
    b	.L0dadfd34
    li	$t1,-1
.L0dadfc5c:
    move	$v1,$a0
.L0dadfc60:
    sd	$a0,16($sp)
    sra	$v0,$t8,0x1
    beqz	$v0,.L0dadfd28
    move	$t9,$a3
    ld	$a0,16($sp)
    move	$a3,$t9
.L0dadfc78:
    # Line 886
    lw	$v0,0($a3)
    and	$v0,$v0,$t0
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    lw	$a5,4($a3)
    dmtc1	$v0,$f1
    and	$a5,$a5,$t0
    cvt.s.l	$f1,$f1
    dsll32	$a5,$a5,0x0
    dsrl32	$a5,$a5,0x0
    dmtc1	$a5,$f0
    nop
    cvt.s.l	$f0,$f0
    mul.s	$f1,$f1,$f4
    mul.s	$f0,$f0,$f4
    swc1	$f1,0($sp)
    # Line 887
    lw	$v1,0($sp)
    # Line 886
    swc1	$f0,0($sp)
    # Line 887
    lw	$v0,0($sp)
    addiu	$a3,$a3,8
    # Line 885
    addiu	$a0,$a0,-2
    # Line 887
    andi	$a4,$v0,0xff00
    sll	$a4,$a4,0x8
    sll	$a5,$v0,0x18
    or	$a4,$a4,$a5
    and	$a5,$a6,$v0
    srl	$a5,$a5,0x18
    and	$v0,$a7,$v0
    srl	$v0,$v0,0x8
    or	$a5,$a5,$v0
    or	$a4,$a4,$a5
    andi	$a5,$v1,0xff00
    sll	$a5,$a5,0x8
    sll	$v0,$v1,0x18
    or	$a5,$a5,$v0
    and	$v0,$a6,$v1
    srl	$v0,$v0,0x18
    and	$v1,$a7,$v1
    srl	$v1,$v1,0x8
    or	$v0,$v0,$v1
    or	$a5,$a5,$v0
    sw	$a5,-8($a3)
    # Line 885
    bne	$a0,$t1,.L0dadfc78
    # Line 887
    sw	$a4,-4($a3)
.L0dadfd28:
    # Line 885
    lw	$t8,152($a1)
.L0dadfd2c:
    # Line 882
    beq	$t3,$t1,.L0dadfdc4
    # Line 892
    addu	$t2,$t8,$t2
.L0dadfd34:
    # Line 885
    lw	$a4,56($a1)
    multu	$a4,$a2
    # Line 882
    addiu	$t3,$t3,-1
    # Line 885
    mflo	$a0
    addiu	$a0,$a0,-1
    beq	$a0,$t1,.L0dadfd2c
    # Line 883
    move	$a3,$t2
    # Line 885
    addiu	$t8,$a0,1
    andi	$a5,$t8,0x1
    beqz	$a5,.L0dadfc60
    move	$v1,$a0
    # Line 886
    lw	$v1,0($a3)
    and	$v1,$v1,$t0
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f2
    nop
    cvt.s.l	$f2,$f2
    mul.s	$f2,$f2,$f4
    swc1	$f2,0($sp)
    # Line 887
    lw	$a4,0($sp)
    # Line 885
    addiu	$a0,$a0,-1
    # Line 887
    addiu	$a3,$a3,4
    sll	$v1,$a4,0x18
    andi	$v0,$a4,0xff00
    sll	$v0,$v0,0x8
    or	$v0,$v0,$v1
    and	$v1,$a6,$a4
    and	$a4,$a7,$a4
    srl	$a4,$a4,0x8
    srl	$v1,$v1,0x18
    or	$v1,$v1,$a4
    or	$v0,$v0,$v1
    sw	$v0,-4($a3)
    b	.L0dadfc5c
    nop
.L0dadfdc4:
    # Line 905
    jr	$ra
    addiu	$sp,$sp,64
.L0dadfdcc:
    # Line 870
    lwc1	$f4,_lit_3f800000
    b	.L0dadfc18
    # Line 869
    li	$t0,4095
.L0dadfdd8:
    # Line 895
    beqz	$a3,.L0dadfdc4
    move	$t3,$a6
    b	.L0dadfeb8
    li	$t1,-1
    move	$a5,$a6
.L0dadfdec:
    move	$t9,$a0
    sd	$a6,8($sp)
    sra	$a4,$t8,0x2
    beqz	$a4,.L0dadfeac
    move	$a7,$a3
    ld	$a0,8($sp)
    move	$a3,$t9
    move	$a6,$a7
.L0dadfe0c:
    # Line 900
    lw	$a5,0($a6)
    and	$a5,$a5,$t0
    dsll32	$a5,$a5,0x0
    dsrl32	$a5,$a5,0x0
    dmtc1	$a5,$f2
    nop
    cvt.s.l	$f2,$f2
    mul.s	$f2,$f2,$f4
    swc1	$f2,0($a0)
    lw	$a4,4($a6)
    and	$a4,$a4,$t0
    dsll32	$a4,$a4,0x0
    dsrl32	$a4,$a4,0x0
    dmtc1	$a4,$f1
    nop
    cvt.s.l	$f1,$f1
    mul.s	$f1,$f1,$f4
    swc1	$f1,4($a0)
    lw	$v1,8($a6)
    and	$v1,$v1,$t0
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f0
    nop
    cvt.s.l	$f0,$f0
    mul.s	$f0,$f0,$f4
    swc1	$f0,8($a0)
    lw	$v0,12($a6)
    and	$v0,$v0,$t0
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f3
    nop
    cvt.s.l	$f3,$f3
    mul.s	$f3,$f3,$f4
    addiu	$a0,$a0,16
    addiu	$a6,$a6,16
    # Line 899
    addiu	$a3,$a3,-4
    bne	$a3,$t1,.L0dadfe0c
    # Line 900
    swc1	$f3,-4($a0)
.L0dadfeac:
    # Line 899
    lw	$t8,152($a1)
.L0dadfeb0:
    # Line 895
    beq	$t3,$t1,.L0dadfdc4
    # Line 902
    addu	$t2,$t8,$t2
.L0dadfeb8:
    # Line 899
    lw	$a4,56($a1)
    multu	$a4,$a2
    # Line 896
    move	$a3,$t2
    # Line 895
    addiu	$t3,$t3,-1
    # Line 899
    mflo	$a0
    addiu	$a0,$a0,-1
    beq	$a0,$t1,.L0dadfeb0
    # Line 897
    move	$a6,$t2
    # Line 899
    addiu	$t8,$a0,1
    andi	$a7,$t8,0x3
    beqz	$a7,.L0dadfdec
    move	$a5,$a6
.L0dadfee8:
    # Line 900
    lw	$a5,0($a3)
    and	$a5,$a5,$t0
    dsll32	$a5,$a5,0x0
    dsrl32	$a5,$a5,0x0
    dmtc1	$a5,$f3
    nop
    cvt.s.l	$f3,$f3
    mul.s	$f3,$f3,$f4
    # Line 899
    addiu	$a0,$a0,-1
    # Line 900
    addiu	$a6,$a6,4
    addiu	$a3,$a3,4
    addi	$a7,$a7,-1
    bnez	$a7,.L0dadfee8
    swc1	$f3,-4($a6)
    b	.L0dadfdec
    move	$a5,$a6
.end PackFloatData

# Function: GetPixelsDMA
# Declared: Line 908 (Source lines: 910-957)
# Address: 0x0dadff28 - 0x0dae01d8 (Size: 688 bytes, Frame: 176)
.ent GetPixelsDMA
GetPixelsDMA:
    # Line 910
    addiu	$sp,$sp,-176
    sd	$s3,40($sp)
    move	$s3,$a0
    sd	$s0,56($sp)
    move	$s0,$a1
    sd	$s6,72($sp)
    move	$s6,$a2
    sd	$s7,80($sp)
    move	$s7,$a3
    sd	$s4,48($sp)
    move	$s4,$a4
    sd	$s2,32($sp)
    lbu	$at,192($a1)
    move	$s2,$a5
    sd	$s5,64($sp)
    beqz	$at,.L0dae01b4
    move	$s5,$a6
    sd	$ra,104($sp)
    sd	$s1,96($sp)
    sd	$zero,16($sp)
.L0dadff78:
    # Line 926
    lw	$a4,56($s0)
    multu	$a4,$s4
    # Line 932
    li	$a0,339
    sll	$a2,$s2,0x10
    # Line 926
    mflo	$a3
    dsll32	$a3,$a3,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f1
    # Line 932
    andi	$a1,$s4,0xffff
    or	$a1,$a1,$a2
    # Line 926
    cvt.s.l	$f1,$f1
    sd	$a1,88($sp)
    # Line 932
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    # Line 922
    la	$a2,SYMBOL_LOCATION
    # Line 926
    lwc1	$f0,76($s0)
    # Line 929
    andi	$a7,$s5,0x7
    # Line 932
    li	$a5,-1793
    # Line 926
    mul.s	$f0,$f0,$f1
    # Line 932
    lui	$a6,0x1
    ori	$a6,$a6,0xc000
    nor	$a6,$a6,$zero
    lui	$s1,0x1
    addu	$s1,$s3,$s1
    # Line 926
    ldc1	$f1,_lit8_3fec000000000000
    cvt.d.s	$f0,$f0
    # Line 932
    lw	$a4,-26652($s1)
    # Line 926
    add.d	$f0,$f0,$f1
    # Line 932
    li	$a3,1
    and	$a4,$a4,$a5
    sll	$a5,$a7,0x8
    # Line 926
    trunc.w.d	$f0,$f0
    # Line 932
    or	$a4,$a4,$a5
    # Line 929
    lw	$a5,152($s0)
    # Line 932
    and	$a4,$a4,$a6
    # Line 926
    mfc1	$a6,$f0
    # Line 929
    addu	$a5,$a5,$s5
    andi	$a5,$a5,0x7
    sd	$a6,24($sp)
    addu	$a6,$a6,$a7
    andi	$a6,$a6,0x7
    subu	$a5,$a5,$a6
    andi	$a5,$a5,0x7
    # Line 932
    andi	$a5,$a5,0x7
    sll	$a5,$a5,0xe
    or	$a4,$a4,$a5
    sw	$a4,-26652($s1)
    bal __glMgrRSSRegShadow
    lw	$a2,84($a2)
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    move	$a2,$zero
    ld	$a1,88($sp)
    bal __glMgrRSSRegSet
    li	$a0,344
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a2,1
    lw	$a1,-26652($s1)
    bal __glMgrRSSRegSet
    li	$a0,345
    move	$a3,$zero
    li	$a0,70
    sll	$a1,$s6,0x10
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    la	$a2,SYMBOL_LOCATION
    or	$a1,$a1,$s7
    bal __glMgrRSSRegShadow
    lw	$a2,104($a2)
    li	$a3,1
    li	$a0,71
    addu	$a1,$s7,$s2
    addiu	$a1,$a1,-1
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    la	$a2,SYMBOL_LOCATION
    addu	$a4,$s6,$s4
    addiu	$a4,$a4,-1
    sll	$a4,$a4,0x10
    lw	$a2,108($a2)
    bal __glMgrRSSRegShadow
    or	$a1,$a1,$a4
    li	$at,0xdb04
    lui	$s7,0x7
    ori	$s7,$s7,0x4080
    sw	$at,0($s7)
    lw	$s6,-27000($s1)
    # Line 946
    li	$t1,512
    # Line 932
    lbu	$a7,1072($s3)
    sw	$s6,0($s7)
    ld	$s7,80($sp)
    beqz	$a7,.L0dae0120
    ld	$s6,72($sp)
    # Line 936
    # lw $t9, -28588($gp) # &__glBytesPerElement
    jal	__glBytesPerElement
    lw	$a0,52($s0)
    trunc.w.s	$f2,$f0
    mfc1	$a0,$f2
    nop
    beqz	$a0,.L0dae01c8
    # Line 938
    li	$at,4
.L0dae00fc:
    beq	$a0,$at,.L0dae01d0
    nop
.L0dae0104:
    # Line 943
    lw	$at,56($s0)
    andi	$t1,$a0,0x3
    addiu	$at,$at,-1
    andi	$at,$at,0x3
    sll	$at,$at,0x2
    or	$t1,$t1,$at
    ori	$t1,$t1,0x240
.L0dae0120:
    # Line 949
    move	$a0,$s3
    move	$a1,$s5
    ld	$a2,24($sp)
    move	$a5,$s2
    move	$a4,$s4
    lw	$a3,152($s0)
    lw	$a6,-26652($s1)
    lw	$a7,-27000($s1)
    # lw $t9, -30304($gp) # &__glMgr_ReadDMAHQSetup
    ld	$v0,16($sp)
    sw	$t1,4($sp)
    bal __glMgr_ReadDMAHQSetup
    sw	$v0,12($sp)
    lw	$a1,-25272($s1)
    ld	$s1,96($sp)
    ld	$ra,104($sp)
    ld	$s5,64($sp)
    ld	$s0,56($sp)
    ld	$s4,48($sp)
    ld	$s3,40($sp)
    lui	$a7,0x7
    addu	$a1,$a1,$a7
    lw	$v1,0($a1)
    ld	$s2,32($sp)
    lui	$a0,0x7
    andi	$v1,$v1,0x2
    bnez	$v1,.L0dae01a4
    ori	$a0,$a0,0x4080
    ld	$s1,96($sp)
.L0dae0194:
    lw	$a7,0($a1)
    andi	$a7,$a7,0x2
    beqz	$a7,.L0dae0194
    nop
.L0dae01a4:
    # Line 956
    li	$at,0xda00
    # Line 957
    addiu	$sp,$sp,176
    jr	$ra
    # Line 956
    sw	$at,0($a0)
.L0dae01b4:
    # Line 922
    li	$v0,3
    sd	$ra,104($sp)
    sd	$s1,96($sp)
    b	.L0dadff78
    sd	$v0,16($sp)
.L0dae01c8:
    b	.L0dae00fc
    # Line 938
    li	$a0,1
.L0dae01d0:
    b	.L0dae0104
    # Line 941
    li	$a0,3
.end GetPixelsDMA

# Function: GetPixelsFloatDMA
# Declared: Line 960 (Source lines: 962-993)
# Address: 0x0dae01d8 - 0x0dae042c (Size: 596 bytes, Frame: 176)
.ent GetPixelsFloatDMA
GetPixelsFloatDMA:
    # Line 962
    addiu	$sp,$sp,-176
    sd	$s5,48($sp)
    move	$s5,$a0
    sd	$s3,24($sp)
    move	$s3,$a1
    sd	$s7,64($sp)
    move	$s7,$a2
    sd	$s6,56($sp)
    move	$s6,$a3
    sd	$s2,16($sp)
    move	$s2,$a4
    sd	$s0,40($sp)
    lbu	$at,192($a1)
    move	$s0,$a5
    sd	$s4,32($sp)
    beqz	$at,.L0dae0418
    move	$s4,$a6
    sd	$ra,104($sp)
    sd	$s1,96($sp)
    sd	$zero,80($sp)
.L0dae0228:
    # Line 976
    lw	$a4,56($s3)
    multu	$a4,$s2
    # Line 982
    li	$a0,339
    sll	$a2,$s0,0x10
    # Line 976
    mflo	$a3
    dsll32	$a3,$a3,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f1
    # Line 982
    andi	$a1,$s2,0xffff
    or	$a1,$a1,$a2
    # Line 976
    cvt.s.l	$f1,$f1
    sd	$a1,88($sp)
    # Line 982
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    # Line 972
    la	$a2,SYMBOL_LOCATION
    # Line 976
    lwc1	$f0,76($s3)
    # Line 979
    andi	$a7,$s4,0x7
    # Line 982
    li	$a5,-1793
    # Line 976
    mul.s	$f0,$f0,$f1
    # Line 982
    lui	$a6,0x1
    ori	$a6,$a6,0xc000
    nor	$a6,$a6,$zero
    lui	$s1,0x1
    addu	$s1,$s5,$s1
    # Line 976
    ldc1	$f1,_lit8_3fec000000000000
    cvt.d.s	$f0,$f0
    # Line 982
    lw	$a4,-26652($s1)
    # Line 976
    add.d	$f0,$f0,$f1
    # Line 982
    li	$a3,1
    and	$a4,$a4,$a5
    sll	$a5,$a7,0x8
    # Line 976
    trunc.w.d	$f0,$f0
    # Line 982
    or	$a4,$a4,$a5
    # Line 979
    lw	$a5,152($s3)
    # Line 982
    and	$a4,$a4,$a6
    # Line 976
    mfc1	$a6,$f0
    # Line 979
    addu	$a5,$a5,$s4
    andi	$a5,$a5,0x7
    sd	$a6,72($sp)
    addu	$a6,$a6,$a7
    andi	$a6,$a6,0x7
    subu	$a5,$a5,$a6
    andi	$a5,$a5,0x7
    # Line 982
    andi	$a5,$a5,0x7
    sll	$a5,$a5,0xe
    or	$a4,$a4,$a5
    sw	$a4,-26652($s1)
    bal __glMgrRSSRegShadow
    lw	$a2,84($a2)
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    move	$a2,$zero
    ld	$a1,88($sp)
    bal __glMgrRSSRegSet
    li	$a0,344
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a2,1
    lw	$a1,-26652($s1)
    bal __glMgrRSSRegSet
    li	$a0,345
    move	$a3,$zero
    li	$a0,70
    sll	$a1,$s7,0x10
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    la	$a2,SYMBOL_LOCATION
    or	$a1,$a1,$s6
    bal __glMgrRSSRegShadow
    lw	$a2,104($a2)
    li	$a3,1
    li	$a0,71
    addu	$a1,$s6,$s0
    addiu	$a1,$a1,-1
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    la	$a2,SYMBOL_LOCATION
    addu	$a4,$s7,$s2
    addiu	$a4,$a4,-1
    sll	$a4,$a4,0x10
    lw	$a2,108($a2)
    bal __glMgrRSSRegShadow
    or	$a1,$a1,$a4
    # Line 985
    move	$a5,$s0
    move	$a4,$s2
    ld	$a2,72($sp)
    move	$a1,$s4
    move	$a0,$s5
    ld	$s7,64($sp)
    lw	$a3,152($s3)
    li	$t0,512
    # Line 982
    li	$s6,0xdb04
    lui	$t3,0x7
    ori	$t3,$t3,0x4080
    sw	$s6,0($t3)
    lw	$t2,-27000($s1)
    ld	$s6,56($sp)
    # Line 985
    # lw $t9, -30304($gp) # &__glMgr_ReadDMAHQSetup
    ld	$t1,80($sp)
    # Line 982
    sw	$t2,0($t3)
    # Line 985
    lw	$a6,-26652($s1)
    lw	$a7,-27000($s1)
    sw	$t1,12($sp)
    bal __glMgr_ReadDMAHQSetup
    sw	$t0,4($sp)
    lw	$a1,-25272($s1)
    ld	$s1,96($sp)
    ld	$ra,104($sp)
    ld	$s5,48($sp)
    ld	$s0,40($sp)
    ld	$s4,32($sp)
    ld	$s3,24($sp)
    lui	$a7,0x7
    addu	$a1,$a1,$a7
    lw	$at,0($a1)
    ld	$s2,16($sp)
    lui	$a0,0x7
    andi	$at,$at,0x2
    bnez	$at,.L0dae0408
    ori	$a0,$a0,0x4080
    ld	$s1,96($sp)
.L0dae03f8:
    lw	$a7,0($a1)
    andi	$a7,$a7,0x2
    beqz	$a7,.L0dae03f8
    nop
.L0dae0408:
    # Line 993
    addiu	$sp,$sp,176
    # Line 992
    li	$at,0xda00
    # Line 993
    jr	$ra
    # Line 992
    sw	$at,0($a0)
.L0dae0418:
    # Line 972
    li	$v0,3
    sd	$ra,104($sp)
    sd	$s1,96($sp)
    b	.L0dae0228
    sd	$v0,80($sp)
.end GetPixelsFloatDMA

# Function: GetPixelsPackedDMA
# Declared: Line 1001 (Source lines: 1004-1004)
# Address: 0x0dae042c - 0x0dae0434 (Size: 8 bytes, Frame: 0)
.ent GetPixelsPackedDMA
GetPixelsPackedDMA:
    # Line 1004
    jr	$ra
    nop
.end GetPixelsPackedDMA

# Function: GetPixelsBitmapDMA
# Declared: Line 1012 (Source lines: 1015-1015)
# Address: 0x0dae0434 - 0x0dae043c (Size: 8 bytes, Frame: 0)
.ent GetPixelsBitmapDMA
GetPixelsBitmapDMA:
    # Line 1015
    jr	$ra
    nop
.end GetPixelsBitmapDMA

# Function: GetPixelsLuminanceDMA
# Declared: Line 1018 (Source lines: 1021-1057)
# Address: 0x0dae043c - 0x0dae0688 (Size: 588 bytes, Frame: 176)
.ent GetPixelsLuminanceDMA
GetPixelsLuminanceDMA:
    # Line 1021
    addiu	$sp,$sp,-176
    sd	$s4,16($sp)
    move	$s4,$a0
    sd	$s8,56($sp)
    move	$s8,$a2
    sd	$s7,48($sp)
    move	$s7,$a3
    sd	$s0,24($sp)
    move	$s0,$a4
    sd	$s1,32($sp)
    lbu	$at,192($a1)
    move	$s1,$a5
    sd	$s5,40($sp)
    beqz	$at,.L0dae067c
    move	$s5,$a6
    sd	$zero,72($sp)
.L0dae047c:
    sd	$s3,88($sp)
    # Line 1031
    beqz	$a7,.L0dae0650
    lw	$a0,32($a1)
    sd	$s6,96($sp)
    # Line 1033
    beqz	$a7,.L0dae0664
    sll	$s3,$a0,0x4
.L0dae0494:
    sd	$ra,104($sp)
    sd	$s2,80($sp)
    # Line 1037
    sll	$s6,$s0,0x4
.L0dae04a0:
    # Line 1043
    li	$a3,1
    li	$a0,339
    sll	$a2,$s1,0x10
    andi	$a1,$s0,0xffff
    or	$a1,$a1,$a2
    sd	$a1,64($sp)
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    # Line 1037
    la	$a2,SYMBOL_LOCATION
    # Line 1043
    lui	$s2,0x1
    addu	$s2,$s4,$s2
    lw	$a4,-26652($s2)
    andi	$a6,$s5,0x7
    li	$a5,-1793
    and	$a4,$a4,$a5
    sll	$a5,$a6,0x8
    addu	$a6,$s6,$a6
    andi	$a6,$a6,0x7
    or	$a4,$a4,$a5
    lui	$a5,0x1
    ori	$a5,$a5,0xc000
    nor	$a5,$a5,$zero
    and	$a4,$a4,$a5
    addu	$a5,$s3,$s5
    andi	$a5,$a5,0x7
    subu	$a5,$a5,$a6
    andi	$a5,$a5,0x7
    sll	$a5,$a5,0xe
    or	$a4,$a4,$a5
    sw	$a4,-26652($s2)
    bal __glMgrRSSRegShadow
    lw	$a2,84($a2)
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    move	$a2,$zero
    ld	$a1,64($sp)
    bal __glMgrRSSRegSet
    li	$a0,344
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a2,1
    lw	$a1,-26652($s2)
    bal __glMgrRSSRegSet
    li	$a0,345
    move	$a3,$zero
    li	$a0,70
    sll	$a1,$s8,0x10
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    la	$a2,SYMBOL_LOCATION
    or	$a1,$a1,$s7
    bal __glMgrRSSRegShadow
    lw	$a2,104($a2)
    li	$a3,1
    li	$a0,71
    addu	$a1,$s7,$s1
    addiu	$a1,$a1,-1
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    la	$a2,SYMBOL_LOCATION
    addu	$a4,$s8,$s0
    addiu	$a4,$a4,-1
    sll	$a4,$a4,0x10
    lw	$a2,108($a2)
    bal __glMgrRSSRegShadow
    or	$a1,$a1,$a4
    # Line 1046
    move	$a5,$s1
    move	$a4,$s0
    move	$a3,$s3
    move	$a2,$s6
    move	$a1,$s5
    move	$a0,$s4
    ld	$s8,56($sp)
    li	$t0,512
    # Line 1043
    li	$s7,0xdb04
    lui	$t3,0x7
    ori	$t3,$t3,0x4080
    sw	$s7,0($t3)
    lw	$t2,-27000($s2)
    ld	$s7,48($sp)
    # Line 1046
    # lw $t9, -30304($gp) # &__glMgr_ReadDMAHQSetup
    ld	$t1,72($sp)
    # Line 1043
    sw	$t2,0($t3)
    # Line 1046
    lw	$a6,-26652($s2)
    lw	$a7,-27000($s2)
    sw	$t1,12($sp)
    bal __glMgr_ReadDMAHQSetup
    sw	$t0,4($sp)
    lw	$a1,-25272($s2)
    ld	$s2,80($sp)
    ld	$s5,40($sp)
    ld	$s1,32($sp)
    ld	$s0,24($sp)
    ld	$ra,104($sp)
    ld	$s4,16($sp)
    ld	$s6,96($sp)
    lui	$t0,0x7
    addu	$a1,$a1,$t0
    lw	$at,0($a1)
    ld	$s3,88($sp)
    lui	$a0,0x7
    andi	$at,$at,0x2
    bnez	$at,.L0dae0640
    ori	$a0,$a0,0x4080
    ld	$s2,80($sp)
.L0dae0630:
    lw	$t0,0($a1)
    andi	$t0,$t0,0x2
    beqz	$t0,.L0dae0630
    nop
.L0dae0640:
    # Line 1057
    addiu	$sp,$sp,176
    # Line 1053
    li	$at,0xda00
    # Line 1057
    jr	$ra
    # Line 1053
    sw	$at,0($a0)
.L0dae0650:
    sd	$s6,96($sp)
    # Line 1033
    sll	$s3,$a0,0x2
    subu	$s3,$s3,$a0
    bnez	$a7,.L0dae0494
    sll	$s3,$s3,0x2
.L0dae0664:
    sd	$ra,104($sp)
    sd	$s2,80($sp)
    # Line 1037
    sll	$s6,$s0,0x2
    subu	$s6,$s6,$s0
    b	.L0dae04a0
    sll	$s6,$s6,0x2
.L0dae067c:
    # Line 1031
    li	$at,3
    b	.L0dae047c
    sd	$at,72($sp)
.end GetPixelsLuminanceDMA

# Function: GetPixelsPIO
# Declared: Line 1060 (Source lines: 1062-1143)
# Address: 0x0dae0688 - 0x0dae0c80 (Size: 1528 bytes, Frame: 128)
.ent GetPixelsPIO
GetPixelsPIO:
    # Line 1070
    lw	$t0,56($a1)
    dsll32	$at,$t0,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f5
    # Line 1062
    addiu	$sp,$sp,-256
    # Line 1070
    cvt.s.l	$f5,$f5
    sd	$a1,40($sp)
    sd	$a2,128($sp)
    sd	$s4,168($sp)
    lwc1	$f4,76($a1)
    # Line 1062
    move	$s4,$a3
    sd	$s0,160($sp)
    # Line 1070
    mul.s	$f5,$f4,$f5
    # Line 1062
    move	$s0,$a4
    sd	$a5,96($sp)
    sd	$a6,24($sp)
    # Line 1070
    lwc1	$f0,_lit_41000000
    sd	$s7,152($sp)
    sd	$s3,176($sp)
    c.lt.s	$f0,$f5
    lui	$s3,0x1
    addu	$s7,$s3,$a0
    bc1t	.L0dae0c34
    lw	$t1,-25272($s7)
    # Line 1082
    ld	$v0,96($sp)
    li	$v1,1
    beq	$v0,$v1,.L0dae0c50
    ldc1	$f6,_lit8_3fec000000000000
    sd	$ra,120($sp)
    sd	$t1,104($sp)
    sd	$zero,80($sp)
.L0dae0704:
    ld	$a3,96($sp)
    # Line 1095
    multu	$a3,$t0
    mflo	$a4
    dsll32	$a4,$a4,0x0
    dsrl32	$a4,$a4,0x0
    dmtc1	$a4,$f7
    nop
    cvt.s.l	$f7,$f7
    mul.s	$f7,$f7,$f4
    cvt.d.s	$f7,$f7
    add.d	$f6,$f7,$f6
    # Line 1096
    move	$a2,$zero
    move	$a1,$zero
    li	$a0,12
    # Line 1095
    trunc.w.d	$f6,$f6
    # Line 1096
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    # Line 1094
    addu	$a3,$s4,$a3
    addiu	$a3,$a3,-1
    # Line 1095
    mfc1	$a4,$f6
    sd	$a3,32($sp)
    # Line 1096
    bal __glMgrRSSRegSet
    sd	$a4,88($sp)
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a2,1
    move	$a1,$zero
    bal __glMgrRSSRegSet
    li	$a0,351
    sd	$s2,48($sp)
    sd	$s8,16($sp)
    sd	$s6,56($sp)
    ld	$a2,24($sp)
    sd	$s1,64($sp)
    # Line 1097
    li	$a1,-1
    addiu	$a2,$a2,-1
    beq	$a2,$a1,.L0dae0c00
    sd	$s5,72($sp)
    sd	$s8,16($sp)
    li	$a4,0xda00
    lw	$s2,0($sp)
    lui	$s1,0x8
    lui	$s5,0x7
    ld	$at,32($sp)
    ori	$s5,$s5,0x4080
    sll	$s6,$s4,0x10
    sll	$at,$at,0x10
    sd	$at,136($sp)
    ld	$at,104($sp)
    sd	$s6,144($sp)
    lui	$s6,0x7
    addu	$s1,$at,$s1
    b	.L0dae0938
    addu	$s6,$s6,$at
.L0dae07d4:
    li	$a1,64
    # Line 1126
    subu	$a1,$a1,$t2
    sllv	$a1,$ra,$a1
.L0dae07e0:
    # Line 1127
    lw	$v1,4($s3)
    lw	$v0,-11840($s1)
    nor	$a0,$a7,$zero
    and	$v1,$v1,$a0
    and	$v0,$v0,$a7
    or	$v0,$v0,$v1
    sw	$v0,0($s3)
    lw	$v0,8($s3)
    lw	$at,-15932($s1)
    nor	$v1,$a1,$zero
    and	$v0,$v0,$v1
    and	$at,$at,$a1
    or	$at,$at,$v0
    sw	$at,4($s3)
.L0dae0818:
    ld	$v1,80($sp)
    # Line 1131
    move	$a7,$a2
    andi	$a1,$s2,0x3
    # Line 1127
    beqz	$v1,.L0dae08ac
    # Line 1130
    addiu	$t0,$sp,8
    # Line 1132
    move	$t1,$zero
    blez	$s2,.L0dae08ac
    move	$t2,$s2
    beqz	$a1,.L0dae0860
    move	$t3,$t1
.L0dae0840:
    addiu	$t1,$t1,1
    # Line 1133
    addiu	$a7,$a7,1
    addiu	$t0,$t0,1
    lbu	$a0,-1($t0)
    addi	$a1,$a1,-1
    bnez	$a1,.L0dae0840
    sb	$a0,-1($a7)
    move	$t3,$t1
.L0dae0860:
    move	$t8,$a7
    sra	$at,$t2,0x2
    beqz	$at,.L0dae08ac
    move	$t9,$t0
    move	$a7,$t3
    move	$t0,$t8
    move	$a1,$t9
.L0dae087c:
    lbu	$at,0($a1)
    sb	$at,0($t0)
    lbu	$a0,1($a1)
    sb	$a0,1($t0)
    lbu	$v1,2($a1)
    addiu	$t0,$t0,4
    sb	$v1,-2($t0)
    addiu	$a1,$a1,4
    lbu	$v0,-1($a1)
    # Line 1132
    addiu	$a7,$a7,4
    bne	$a7,$s2,.L0dae087c
    # Line 1133
    sb	$v0,-1($t0)
.L0dae08ac:
    # Line 1136
    lw	$a1,-25272($s7)
    # Line 1135
    ld	$v1,40($sp)
    # Line 1136
    addu	$a1,$a3,$a1
    lw	$v0,0($a1)
    addiu	$s0,$s0,1
    # Line 1135
    lw	$v1,152($v1)
    # Line 1136
    andi	$v0,$v0,0x2
    bnez	$v0,.L0dae08e4
    # Line 1135
    addu	$a2,$v1,$a2
.L0dae08d0:
    # Line 1136
    lw	$at,0($a1)
    andi	$at,$at,0x2
    beqz	$at,.L0dae08d0
    nop
    sd	$a2,128($sp)
.L0dae08e4:
    sd	$a2,128($sp)
    # Line 1140
    move	$a2,$zero
    move	$a1,$zero
    li	$a0,12
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    lui	$v0,0xa
    ori	$v0,$v0,0x704
    # Line 1139
    sw	$v0,0($s5)
    # Line 1140
    bal __glMgrRSSRegSet
    # Line 1139
    sw	$zero,0($s5)
    # Line 1140
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a2,1
    move	$a1,$zero
    bal __glMgrRSSRegSet
    li	$a0,351
    # Line 1097
    ld	$a2,24($sp)
    li	$a4,0xda00
    li	$a1,-1
    addiu	$a2,$a2,-1
    beq	$a2,$a1,.L0dae0c00
    # Line 1141
    sw	$a4,0($s5)
.L0dae0938:
    ld	$v1,80($sp)
    ld	$s3,128($sp)
    # Line 1097
    beqz	$v1,.L0dae0bf8
    # Line 1100
    li	$a0,2
    # Line 1099
    addiu	$s3,$sp,8
    sd	$a2,24($sp)
    sd	$a0,96($sp)
.L0dae0954:
    # Line 1109
    li	$a2,1
    li	$a1,1
    li	$a0,12
    li	$t8,-4
    # Line 1104
    andi	$s8,$s3,0x3
    # Line 1105
    ld	$s4,88($sp)
    # Line 1107
    and	$s3,$t8,$s3
    # Line 1109
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    # Line 1105
    addu	$s4,$s4,$s8
    # Line 1106
    andi	$a3,$s4,0x7
    # Line 1109
    bal __glMgrRSSRegSet
    sd	$a3,112($sp)
    # Line 1110
    li	$a3,1
    li	$a0,339
    la	$a2,SYMBOL_LOCATION
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    lui	$a4,0xfffe
    ld	$a1,96($sp)
    ori	$a4,$a4,0x3fff
    lui	$a5,0x1
    andi	$a1,$a1,0xffff
    or	$a1,$a1,$a5
    lw	$a5,-26652($s7)
    sd	$a1,184($sp)
    li	$a6,-1793
    and	$a5,$a5,$a6
    andi	$a6,$s8,0x7
    sll	$a6,$a6,0x8
    or	$a5,$a5,$a6
    and	$a4,$a4,$a5
    sw	$a4,-26652($s7)
    bal __glMgrRSSRegShadow
    lw	$a2,84($a2)
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    move	$a2,$zero
    ld	$a1,184($sp)
    bal __glMgrRSSRegSet
    li	$a0,344
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a2,1
    lw	$a1,-26652($s7)
    bal __glMgrRSSRegSet
    li	$a0,345
    move	$a3,$zero
    li	$a0,70
    la	$a2,SYMBOL_LOCATION
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    ld	$a1,144($sp)
    lw	$a2,104($a2)
    bal __glMgrRSSRegShadow
    or	$a1,$a1,$s0
    li	$a3,1
    li	$a0,71
    la	$a2,SYMBOL_LOCATION
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    ld	$a1,136($sp)
    lw	$a2,108($a2)
    bal __glMgrRSSRegShadow
    or	$a1,$a1,$s0
    li	$a5,0xdb04
    sw	$a5,0($s5)
    lw	$v0,-27000($s7)
    lui	$a3,0x7
    li	$a4,0x8f08
    sw	$v0,0($s5)
    # Line 1111
    sw	$a4,0($s5)
    sw	$zero,0($s5)
    sw	$zero,0($s5)
    lw	$at,0($s6)
    li	$ra,-1
    ld	$a2,128($sp)
    andi	$at,$at,0x1
    bnez	$at,.L0dae0a8c
    ld	$a1,112($sp)
.L0dae0a7c:
    lw	$v1,0($s6)
    andi	$v1,$v1,0x1
    beqz	$v1,.L0dae0a7c
    nop
.L0dae0a8c:
    lw	$a0,-14984($s1)
    andi	$a0,$a0,0x100
    bnez	$a0,.L0dae0ab0
    # Line 1116
    ld	$v0,88($sp)
.L0dae0a9c:
    # Line 1111
    lw	$at,-14984($s1)
    andi	$at,$at,0x100
    beqz	$at,.L0dae0a9c
    nop
    # Line 1116
    ld	$v0,88($sp)
.L0dae0ab0:
    sll	$t2,$a1,0x3
    # Line 1111
    beqz	$s8,.L0dae0b48
    # Line 1116
    sll	$t1,$s8,0x3
    li	$v1,8
    li	$a7,-1
    srlv	$t1,$ra,$t1
    subu	$v1,$v1,$s8
    slt	$v0,$v0,$v1
    beqz	$v0,.L0dae0b08
    move	$t0,$t1
    slti	$a0,$a1,5
    beqz	$a0,.L0dae0af8
    move	$a7,$zero
    li	$t0,32
    subu	$t0,$t0,$t2
    sllv	$t0,$ra,$t0
    b	.L0dae0b04
    and	$t0,$t0,$t1
.L0dae0af8:
    li	$a7,64
    subu	$a7,$a7,$t2
    sllv	$a7,$ra,$a7
.L0dae0b04:
    move	$a1,$zero
.L0dae0b08:
    # Line 1119
    addiu	$s4,$s4,-8
    # Line 1118
    lw	$v1,4($s3)
    lw	$v0,-11840($s1)
    nor	$a0,$t0,$zero
    and	$v1,$v1,$a0
    and	$v0,$v0,$t0
    or	$v0,$v0,$v1
    sw	$v0,0($s3)
    addiu	$s3,$s3,8
    lw	$v0,0($s3)
    lw	$at,-15932($s1)
    nor	$v1,$a7,$zero
    and	$v0,$v0,$v1
    and	$at,$at,$a7
    or	$at,$at,$v0
    sw	$at,-4($s3)
.L0dae0b48:
    # Line 1119
    slti	$v1,$s4,8
    bnez	$v1,.L0dae0bd0
    sra	$a7,$s4,0x2
    srl	$a7,$a7,0x1d
    addu	$a7,$a7,$s4
    sra	$a7,$a7,0x3
    andi	$a0,$a7,0x1
    beqz	$a0,.L0dae0b88
    move	$t0,$s4
    # Line 1122
    lw	$v0,-11840($s1)
    sw	$v0,0($s3)
    lw	$at,-15932($s1)
    # Line 1123
    addiu	$s4,$s4,-8
    # Line 1122
    addiu	$s3,$s3,8
    sw	$at,-4($s3)
    move	$t0,$s4
.L0dae0b88:
    sra	$v1,$a7,0x1
    beqz	$v1,.L0dae0bd0
    move	$t1,$s3
    move	$t2,$t0
    move	$a7,$t1
.L0dae0b9c:
    lw	$a0,-11840($s1)
    sw	$a0,0($a7)
    lw	$v1,-15932($s1)
    sw	$v1,4($a7)
    lw	$v0,-11840($s1)
    addiu	$a7,$a7,16
    sw	$v0,-8($a7)
    # Line 1123
    addiu	$t2,$t2,-16
    # Line 1122
    lw	$a0,-15932($s1)
    # Line 1123
    slti	$at,$t2,8
    beqz	$at,.L0dae0b9c
    # Line 1122
    sw	$a0,-4($a7)
    move	$s3,$a7
.L0dae0bd0:
    # Line 1123
    beqz	$a1,.L0dae0818
    # Line 1126
    sll	$t2,$a1,0x3
    slti	$a7,$a1,5
    beqz	$a7,.L0dae07d4
    li	$a7,-1
    move	$a1,$zero
    li	$a7,32
    subu	$a7,$a7,$t2
    b	.L0dae07e0
    sllv	$a7,$ra,$a7
.L0dae0bf8:
    b	.L0dae0954
    sd	$a2,24($sp)
.L0dae0c00:
    # Line 1143
    move	$v0,$zero
    ld	$s0,160($sp)
    ld	$s1,64($sp)
    ld	$s2,48($sp)
    ld	$s3,176($sp)
    ld	$s4,168($sp)
    ld	$s5,72($sp)
    ld	$s6,56($sp)
    ld	$ra,120($sp)
    ld	$s7,152($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0dae0c34:
    # Line 1082
    li	$v0,1
    ld	$s0,160($sp)
    ld	$s3,176($sp)
    ld	$s4,168($sp)
    ld	$s7,152($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0dae0c50:
    # Line 1090
    cvt.d.s	$f0,$f5
    add.d	$f0,$f0,$f6
    sd	$ra,120($sp)
    sd	$t1,104($sp)
    trunc.w.d	$f0,$f0
    # Line 1088
    li	$v0,1
    # Line 1089
    li	$v1,2
    sd	$v1,96($sp)
    # Line 1090
    mfc1	$at,$f0
    sd	$v0,80($sp)
    b	.L0dae0704
    sw	$at,0($sp)
.end GetPixelsPIO

# Function: GetPixelsSwapShortPIO
# Declared: Line 1147 (Source lines: 1149-1230)
# Address: 0x0dae0c80 - 0x0dae134c (Size: 1740 bytes, Frame: 144)
.ent GetPixelsSwapShortPIO
GetPixelsSwapShortPIO:
    # Line 1157
    lw	$t1,56($a1)
    dsll32	$at,$t1,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f5
    nop
    cvt.s.l	$f5,$f5
    # Line 1149
    addiu	$sp,$sp,-272
    sd	$a1,32($sp)
    sd	$a2,160($sp)
    # Line 1157
    lwc1	$f4,76($a1)
    sd	$s1,168($sp)
    # Line 1149
    move	$s1,$a3
    # Line 1157
    mul.s	$f5,$f4,$f5
    sd	$s8,184($sp)
    # Line 1149
    move	$s8,$a4
    sd	$a5,104($sp)
    # Line 1157
    lwc1	$f0,_lit_41000000
    sd	$a6,16($sp)
    sd	$s0,176($sp)
    c.lt.s	$f0,$f5
    lui	$s0,0x1
    addu	$t0,$s0,$a0
    bc1t	.L0dae1300
    lw	$t2,-25272($t0)
    # Line 1169
    ld	$v0,104($sp)
    li	$v1,1
    beq	$v0,$v1,.L0dae1318
    ldc1	$f6,_lit8_3fec000000000000
    sd	$ra,144($sp)
    sd	$t0,120($sp)
    sd	$t2,112($sp)
    sd	$zero,88($sp)
.L0dae0d00:
    ld	$a3,104($sp)
    # Line 1182
    multu	$a3,$t1
    mflo	$a4
    dsll32	$a4,$a4,0x0
    dsrl32	$a4,$a4,0x0
    dmtc1	$a4,$f7
    nop
    cvt.s.l	$f7,$f7
    mul.s	$f7,$f7,$f4
    cvt.d.s	$f7,$f7
    add.d	$f6,$f7,$f6
    # Line 1183
    move	$a2,$zero
    move	$a1,$zero
    li	$a0,12
    # Line 1182
    trunc.w.d	$f6,$f6
    # Line 1183
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    # Line 1181
    addu	$a3,$s1,$a3
    addiu	$a3,$a3,-1
    # Line 1182
    mfc1	$a4,$f6
    sd	$a3,24($sp)
    # Line 1183
    bal __glMgrRSSRegSet
    sd	$a4,96($sp)
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a2,1
    move	$a1,$zero
    bal __glMgrRSSRegSet
    li	$a0,351
    sd	$s2,40($sp)
    sd	$s3,48($sp)
    sd	$s6,56($sp)
    sd	$s4,64($sp)
    ld	$a2,16($sp)
    sd	$s5,72($sp)
    # Line 1184
    li	$a1,-1
    addiu	$a2,$a2,-1
    beq	$a2,$a1,.L0dae12cc
    sd	$s7,80($sp)
    li	$a4,0xda00
    lui	$s2,0xff00
    lui	$s3,0xff
    lw	$s5,0($sp)
    lui	$s4,0x8
    lui	$s6,0x7
    ld	$at,24($sp)
    ori	$s6,$s6,0x4080
    sll	$s7,$s1,0x10
    sll	$at,$at,0x10
    sd	$at,128($sp)
    ld	$at,112($sp)
    sd	$s7,136($sp)
    lui	$s7,0x7
    addu	$s4,$at,$s4
    b	.L0dae0f98
    addu	$s7,$s7,$at
.L0dae0dd8:
    li	$a2,64
    # Line 1213
    subu	$a2,$a2,$t1
    sllv	$a2,$ra,$a2
.L0dae0de4:
    # Line 1214
    lw	$v1,4($s0)
    lw	$v0,-11840($s4)
    nor	$a0,$a1,$zero
    and	$v1,$v1,$a0
    and	$a0,$s3,$v0
    and	$at,$s2,$v0
    srl	$at,$at,0x8
    sll	$a0,$a0,0x8
    or	$a0,$a0,$at
    andi	$at,$v0,0xff
    andi	$v0,$v0,0xff00
    srl	$v0,$v0,0x8
    sll	$at,$at,0x8
    or	$at,$at,$v0
    or	$a0,$a0,$at
    and	$a0,$a0,$a1
    or	$v1,$v1,$a0
    sw	$v1,0($s0)
    lw	$at,8($s0)
    lw	$a0,-15932($s4)
    nor	$v0,$a2,$zero
    and	$at,$at,$v0
    and	$v0,$s3,$a0
    and	$v1,$s2,$a0
    srl	$v1,$v1,0x8
    sll	$v0,$v0,0x8
    or	$v0,$v0,$v1
    andi	$v1,$a0,0xff
    andi	$a0,$a0,0xff00
    srl	$a0,$a0,0x8
    sll	$v1,$v1,0x8
    or	$v1,$v1,$a0
    or	$v0,$v0,$v1
    and	$v0,$v0,$a2
    or	$at,$at,$v0
    sw	$at,4($s0)
.L0dae0e74:
    # Line 1223
    addiu	$s8,$s8,1
    # Line 1217
    addiu	$a2,$sp,8
    ld	$at,88($sp)
    # Line 1219
    move	$a7,$zero
    move	$t1,$s5
    # Line 1214
    beqz	$at,.L0dae0f10
    ld	$a1,120($sp)
    # Line 1219
    blez	$s5,.L0dae0f10
    # Line 1218
    move	$t0,$a3
    andi	$t3,$s5,0x3
    beqz	$t3,.L0dae0ec4
    move	$t8,$a7
.L0dae0ea4:
    # Line 1219
    addiu	$a7,$a7,1
    # Line 1220
    addiu	$t0,$t0,1
    addiu	$a2,$a2,1
    lbu	$v0,-1($a2)
    addi	$t3,$t3,-1
    bnez	$t3,.L0dae0ea4
    sb	$v0,-1($t0)
    move	$t8,$a7
.L0dae0ec4:
    move	$t3,$t0
    sra	$v1,$t1,0x2
    beqz	$v1,.L0dae0f10
    move	$t9,$a2
    move	$t0,$t8
    move	$a2,$t3
    move	$a7,$t9
.L0dae0ee0:
    lbu	$v1,0($a7)
    sb	$v1,0($a2)
    lbu	$v0,1($a7)
    sb	$v0,1($a2)
    lbu	$at,2($a7)
    addiu	$a2,$a2,4
    sb	$at,-2($a2)
    addiu	$a7,$a7,4
    lbu	$a0,-1($a7)
    # Line 1219
    addiu	$t0,$t0,4
    bne	$t0,$s5,.L0dae0ee0
    # Line 1220
    sb	$a0,-1($a2)
.L0dae0f10:
    # Line 1223
    lw	$a1,-25272($a1)
    # Line 1222
    ld	$at,32($sp)
    # Line 1223
    addu	$a1,$a4,$a1
    lw	$a0,0($a1)
    # Line 1222
    lw	$at,152($at)
    # Line 1223
    andi	$a0,$a0,0x2
    bnez	$a0,.L0dae0f44
    # Line 1222
    addu	$a3,$at,$a3
.L0dae0f30:
    # Line 1223
    lw	$at,0($a1)
    andi	$at,$at,0x2
    beqz	$at,.L0dae0f30
    nop
    sd	$a3,160($sp)
.L0dae0f44:
    sd	$a3,160($sp)
    # Line 1227
    move	$a2,$zero
    move	$a1,$zero
    li	$a0,12
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    lui	$v0,0xa
    ori	$v0,$v0,0x704
    # Line 1226
    sw	$v0,0($s6)
    # Line 1227
    bal __glMgrRSSRegSet
    # Line 1226
    sw	$zero,0($s6)
    # Line 1227
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a2,1
    move	$a1,$zero
    bal __glMgrRSSRegSet
    li	$a0,351
    # Line 1184
    ld	$a2,16($sp)
    li	$a4,0xda00
    li	$a1,-1
    addiu	$a2,$a2,-1
    beq	$a2,$a1,.L0dae12cc
    # Line 1228
    sw	$a4,0($s6)
.L0dae0f98:
    ld	$v1,88($sp)
    ld	$s0,160($sp)
    # Line 1184
    beqz	$v1,.L0dae12c4
    # Line 1187
    li	$a0,2
    # Line 1186
    addiu	$s0,$sp,8
    sd	$a2,16($sp)
    sd	$a0,104($sp)
.L0dae0fb4:
    # Line 1196
    li	$a2,1
    li	$a1,1
    li	$a0,12
    li	$ra,-4
    # Line 1191
    andi	$t8,$s0,0x3
    sd	$t8,192($sp)
    # Line 1192
    ld	$s1,96($sp)
    # Line 1194
    and	$s0,$ra,$s0
    # Line 1196
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    # Line 1192
    addu	$s1,$s1,$t8
    # Line 1193
    andi	$a3,$s1,0x7
    # Line 1196
    bal __glMgrRSSRegSet
    sd	$a3,152($sp)
    # Line 1197
    li	$a3,1
    ld	$a1,104($sp)
    li	$a0,339
    lui	$a5,0x1
    andi	$a1,$a1,0xffff
    or	$a1,$a1,$a5
    ld	$a5,120($sp)
    la	$a2,SYMBOL_LOCATION
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    lw	$a6,-26652($a5)
    lui	$a4,0xfffe
    li	$a7,-1793
    and	$a6,$a6,$a7
    ld	$a7,192($sp)
    ori	$a4,$a4,0x3fff
    sd	$a1,200($sp)
    andi	$a7,$a7,0x7
    sll	$a7,$a7,0x8
    or	$a6,$a6,$a7
    and	$a4,$a4,$a6
    sw	$a4,-26652($a5)
    bal __glMgrRSSRegShadow
    lw	$a2,84($a2)
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    move	$a2,$zero
    ld	$a1,200($sp)
    bal __glMgrRSSRegSet
    li	$a0,344
    li	$a2,1
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    ld	$a1,120($sp)
    li	$a0,345
    bal __glMgrRSSRegSet
    lw	$a1,-26652($a1)
    move	$a3,$zero
    li	$a0,70
    la	$a2,SYMBOL_LOCATION
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    ld	$a1,136($sp)
    lw	$a2,104($a2)
    bal __glMgrRSSRegShadow
    or	$a1,$a1,$s8
    li	$a3,1
    li	$a0,71
    la	$a2,SYMBOL_LOCATION
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    ld	$a1,128($sp)
    lw	$a2,108($a2)
    bal __glMgrRSSRegShadow
    or	$a1,$a1,$s8
    ld	$v0,120($sp)
    li	$a5,0xdb04
    sw	$a5,0($s6)
    lw	$v0,-27000($v0)
    lui	$a4,0x7
    li	$ra,-1
    li	$t2,0x8f08
    sw	$v0,0($s6)
    # Line 1198
    sw	$t2,0($s6)
    sw	$zero,0($s6)
    sw	$zero,0($s6)
    lw	$at,0($s7)
    ld	$a3,160($sp)
    ld	$a2,152($sp)
    andi	$at,$at,0x1
    bnez	$at,.L0dae1104
    ld	$a1,192($sp)
.L0dae10f4:
    lw	$v1,0($s7)
    andi	$v1,$v1,0x1
    beqz	$v1,.L0dae10f4
    nop
.L0dae1104:
    lw	$a0,-14984($s4)
    andi	$a0,$a0,0x100
    bnez	$a0,.L0dae1128
    # Line 1203
    ld	$v0,96($sp)
.L0dae1114:
    # Line 1198
    lw	$at,-14984($s4)
    andi	$at,$at,0x100
    beqz	$at,.L0dae1114
    nop
    # Line 1203
    ld	$v0,96($sp)
.L0dae1128:
    sll	$t1,$a2,0x3
    # Line 1198
    beqz	$a1,.L0dae1218
    # Line 1203
    sll	$t3,$a1,0x3
    li	$v1,8
    li	$a7,-1
    srlv	$t3,$ra,$t3
    subu	$v1,$v1,$a1
    slt	$v0,$v0,$v1
    beqz	$v0,.L0dae1180
    move	$t0,$t3
    slti	$a0,$a2,5
    beqz	$a0,.L0dae1170
    move	$a7,$zero
    li	$t0,32
    subu	$t0,$t0,$t1
    sllv	$t0,$ra,$t0
    b	.L0dae117c
    and	$t0,$t0,$t3
.L0dae1170:
    li	$a7,64
    subu	$a7,$a7,$t1
    sllv	$a7,$ra,$a7
.L0dae117c:
    move	$a2,$zero
.L0dae1180:
    # Line 1206
    addiu	$s1,$s1,-8
    # Line 1205
    lw	$v1,4($s0)
    lw	$v0,-11840($s4)
    nor	$a0,$t0,$zero
    and	$v1,$v1,$a0
    and	$a0,$s3,$v0
    and	$at,$s2,$v0
    srl	$at,$at,0x8
    sll	$a0,$a0,0x8
    or	$a0,$a0,$at
    andi	$at,$v0,0xff
    andi	$v0,$v0,0xff00
    srl	$v0,$v0,0x8
    sll	$at,$at,0x8
    or	$at,$at,$v0
    or	$a0,$a0,$at
    and	$a0,$a0,$t0
    or	$v1,$v1,$a0
    sw	$v1,0($s0)
    addiu	$s0,$s0,8
    lw	$at,0($s0)
    lw	$a0,-15932($s4)
    nor	$v0,$a7,$zero
    and	$at,$at,$v0
    and	$v0,$s3,$a0
    and	$v1,$s2,$a0
    srl	$v1,$v1,0x8
    sll	$v0,$v0,0x8
    or	$v0,$v0,$v1
    andi	$v1,$a0,0xff
    andi	$a0,$a0,0xff00
    srl	$a0,$a0,0x8
    sll	$v1,$v1,0x8
    or	$v1,$v1,$a0
    or	$v0,$v0,$v1
    and	$v0,$v0,$a7
    or	$at,$at,$v0
    sw	$at,-4($s0)
.L0dae1218:
    # Line 1206
    slti	$at,$s1,8
    bnez	$at,.L0dae12a0
    # Line 1213
    slti	$a0,$a2,5
.L0dae1224:
    # Line 1209
    lw	$at,-11840($s4)
    and	$v1,$s3,$at
    sll	$v1,$v1,0x8
    and	$a0,$s2,$at
    srl	$a0,$a0,0x8
    or	$v1,$v1,$a0
    andi	$a0,$at,0xff
    sll	$a0,$a0,0x8
    andi	$at,$at,0xff00
    srl	$at,$at,0x8
    or	$a0,$a0,$at
    or	$v1,$v1,$a0
    sw	$v1,0($s0)
    addiu	$s0,$s0,8
    lw	$at,-15932($s4)
    # Line 1210
    addiu	$s1,$s1,-8
    slti	$v1,$s1,8
    # Line 1209
    and	$v0,$s3,$at
    sll	$v0,$v0,0x8
    and	$a0,$s2,$at
    srl	$a0,$a0,0x8
    or	$v0,$v0,$a0
    andi	$a0,$at,0xff
    sll	$a0,$a0,0x8
    andi	$at,$at,0xff00
    srl	$at,$at,0x8
    or	$a0,$a0,$at
    or	$v0,$v0,$a0
    # Line 1210
    beqz	$v1,.L0dae1224
    # Line 1209
    sw	$v0,-4($s0)
    # Line 1213
    slti	$a0,$a2,5
.L0dae12a0:
    # Line 1210
    beqz	$a2,.L0dae0e74
    # Line 1213
    sll	$t1,$a2,0x3
    beqz	$a0,.L0dae0dd8
    li	$a1,-1
    move	$a2,$zero
    li	$a1,32
    subu	$a1,$a1,$t1
    b	.L0dae0de4
    sllv	$a1,$ra,$a1
.L0dae12c4:
    b	.L0dae0fb4
    sd	$a2,16($sp)
.L0dae12cc:
    # Line 1230
    move	$v0,$zero
    ld	$s0,176($sp)
    ld	$s1,168($sp)
    ld	$s2,40($sp)
    ld	$s3,48($sp)
    ld	$s4,64($sp)
    ld	$s5,72($sp)
    ld	$s6,56($sp)
    ld	$ra,144($sp)
    ld	$s7,80($sp)
    ld	$s8,184($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0dae1300:
    # Line 1169
    li	$v0,1
    ld	$s0,176($sp)
    ld	$s1,168($sp)
    ld	$s8,184($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0dae1318:
    # Line 1177
    cvt.d.s	$f0,$f5
    add.d	$f0,$f0,$f6
    sd	$ra,144($sp)
    sd	$t0,120($sp)
    sd	$t2,112($sp)
    trunc.w.d	$f0,$f0
    # Line 1175
    li	$v0,1
    # Line 1176
    li	$v1,2
    sd	$v1,104($sp)
    # Line 1177
    mfc1	$at,$f0
    sd	$v0,88($sp)
    b	.L0dae0d00
    sw	$at,0($sp)
.end GetPixelsSwapShortPIO

# Function: GetPixelsSwapIntPIO
# Declared: Line 1234 (Source lines: 1236-1317)
# Address: 0x0dae134c - 0x0dae1a00 (Size: 1716 bytes, Frame: 144)
.ent GetPixelsSwapIntPIO
GetPixelsSwapIntPIO:
    # Line 1244
    lw	$t1,56($a1)
    dsll32	$at,$t1,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f5
    nop
    cvt.s.l	$f5,$f5
    # Line 1236
    addiu	$sp,$sp,-272
    sd	$a1,32($sp)
    sd	$a2,160($sp)
    # Line 1244
    lwc1	$f4,76($a1)
    sd	$s1,168($sp)
    # Line 1236
    move	$s1,$a3
    # Line 1244
    mul.s	$f5,$f4,$f5
    sd	$s8,184($sp)
    # Line 1236
    move	$s8,$a4
    sd	$a5,104($sp)
    # Line 1244
    lwc1	$f0,_lit_41000000
    sd	$a6,16($sp)
    sd	$s0,176($sp)
    c.lt.s	$f0,$f5
    lui	$s0,0x1
    addu	$t0,$s0,$a0
    bc1t	.L0dae19b4
    lw	$t2,-25272($t0)
    # Line 1256
    ld	$v0,104($sp)
    li	$v1,1
    beq	$v0,$v1,.L0dae19cc
    ldc1	$f6,_lit8_3fec000000000000
    sd	$ra,144($sp)
    sd	$t0,120($sp)
    sd	$t2,112($sp)
    sd	$zero,88($sp)
.L0dae13cc:
    ld	$a3,104($sp)
    # Line 1269
    multu	$a3,$t1
    mflo	$a4
    dsll32	$a4,$a4,0x0
    dsrl32	$a4,$a4,0x0
    dmtc1	$a4,$f7
    nop
    cvt.s.l	$f7,$f7
    mul.s	$f7,$f7,$f4
    cvt.d.s	$f7,$f7
    add.d	$f6,$f7,$f6
    # Line 1270
    move	$a2,$zero
    move	$a1,$zero
    li	$a0,12
    # Line 1269
    trunc.w.d	$f6,$f6
    # Line 1270
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    # Line 1268
    addu	$a3,$s1,$a3
    addiu	$a3,$a3,-1
    # Line 1269
    mfc1	$a4,$f6
    sd	$a3,24($sp)
    # Line 1270
    bal __glMgrRSSRegSet
    sd	$a4,96($sp)
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a2,1
    move	$a1,$zero
    bal __glMgrRSSRegSet
    li	$a0,351
    sd	$s2,40($sp)
    sd	$s3,48($sp)
    sd	$s6,56($sp)
    sd	$s4,64($sp)
    ld	$a2,16($sp)
    sd	$s5,72($sp)
    # Line 1271
    li	$a1,-1
    addiu	$a2,$a2,-1
    beq	$a2,$a1,.L0dae1980
    sd	$s7,80($sp)
    li	$a4,0xda00
    lui	$s2,0xff
    lui	$s3,0xff00
    lw	$s5,0($sp)
    lui	$s4,0x8
    lui	$s6,0x7
    ld	$at,24($sp)
    ori	$s6,$s6,0x4080
    sll	$s7,$s1,0x10
    sll	$at,$at,0x10
    sd	$at,128($sp)
    ld	$at,112($sp)
    sd	$s7,136($sp)
    lui	$s7,0x7
    addu	$s4,$at,$s4
    b	.L0dae165c
    addu	$s7,$s7,$at
.L0dae14a4:
    li	$a2,64
    # Line 1300
    subu	$a2,$a2,$t1
    sllv	$a2,$ra,$a2
.L0dae14b0:
    # Line 1301
    lw	$v0,-11840($s4)
    lw	$v1,4($s0)
    nor	$a0,$a1,$zero
    sll	$at,$v0,0x18
    and	$v1,$v1,$a0
    andi	$a0,$v0,0xff00
    sll	$a0,$a0,0x8
    or	$a0,$a0,$at
    and	$at,$s3,$v0
    and	$v0,$s2,$v0
    srl	$v0,$v0,0x8
    srl	$at,$at,0x18
    or	$at,$at,$v0
    or	$a0,$a0,$at
    and	$a0,$a0,$a1
    or	$v1,$v1,$a0
    sw	$v1,0($s0)
    lw	$at,8($s0)
    lw	$a0,-15932($s4)
    nor	$v0,$a2,$zero
    and	$at,$at,$v0
    sll	$v1,$a0,0x18
    andi	$v0,$a0,0xff00
    sll	$v0,$v0,0x8
    or	$v0,$v0,$v1
    and	$v1,$s3,$a0
    and	$a0,$s2,$a0
    srl	$a0,$a0,0x8
    srl	$v1,$v1,0x18
    or	$v1,$v1,$a0
    or	$v0,$v0,$v1
    and	$v0,$v0,$a2
    or	$at,$at,$v0
    sw	$at,4($s0)
.L0dae1538:
    # Line 1310
    addiu	$s8,$s8,1
    # Line 1304
    addiu	$a2,$sp,8
    ld	$at,88($sp)
    # Line 1306
    move	$a7,$zero
    move	$t1,$s5
    # Line 1301
    beqz	$at,.L0dae15d4
    ld	$a1,120($sp)
    # Line 1306
    blez	$s5,.L0dae15d4
    # Line 1305
    move	$t0,$a3
    andi	$t3,$s5,0x3
    beqz	$t3,.L0dae1588
    move	$t8,$a7
.L0dae1568:
    # Line 1306
    addiu	$a7,$a7,1
    # Line 1307
    addiu	$t0,$t0,1
    addiu	$a2,$a2,1
    lbu	$v0,-1($a2)
    addi	$t3,$t3,-1
    bnez	$t3,.L0dae1568
    sb	$v0,-1($t0)
    move	$t8,$a7
.L0dae1588:
    move	$t3,$t0
    sra	$v1,$t1,0x2
    beqz	$v1,.L0dae15d4
    move	$t9,$a2
    move	$t0,$t8
    move	$a2,$t3
    move	$a7,$t9
.L0dae15a4:
    lbu	$v1,0($a7)
    sb	$v1,0($a2)
    lbu	$v0,1($a7)
    sb	$v0,1($a2)
    lbu	$at,2($a7)
    addiu	$a2,$a2,4
    sb	$at,-2($a2)
    addiu	$a7,$a7,4
    lbu	$a0,-1($a7)
    # Line 1306
    addiu	$t0,$t0,4
    bne	$t0,$s5,.L0dae15a4
    # Line 1307
    sb	$a0,-1($a2)
.L0dae15d4:
    # Line 1310
    lw	$a1,-25272($a1)
    # Line 1309
    ld	$at,32($sp)
    # Line 1310
    addu	$a1,$a4,$a1
    lw	$a0,0($a1)
    # Line 1309
    lw	$at,152($at)
    # Line 1310
    andi	$a0,$a0,0x2
    bnez	$a0,.L0dae1608
    # Line 1309
    addu	$a3,$at,$a3
.L0dae15f4:
    # Line 1310
    lw	$at,0($a1)
    andi	$at,$at,0x2
    beqz	$at,.L0dae15f4
    nop
    sd	$a3,160($sp)
.L0dae1608:
    sd	$a3,160($sp)
    # Line 1314
    move	$a2,$zero
    move	$a1,$zero
    li	$a0,12
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    lui	$v0,0xa
    ori	$v0,$v0,0x704
    # Line 1313
    sw	$v0,0($s6)
    # Line 1314
    bal __glMgrRSSRegSet
    # Line 1313
    sw	$zero,0($s6)
    # Line 1314
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a2,1
    move	$a1,$zero
    bal __glMgrRSSRegSet
    li	$a0,351
    # Line 1271
    ld	$a2,16($sp)
    li	$a4,0xda00
    li	$a1,-1
    addiu	$a2,$a2,-1
    beq	$a2,$a1,.L0dae1980
    # Line 1315
    sw	$a4,0($s6)
.L0dae165c:
    ld	$v1,88($sp)
    ld	$s0,160($sp)
    # Line 1271
    beqz	$v1,.L0dae1978
    # Line 1274
    li	$a0,2
    # Line 1273
    addiu	$s0,$sp,8
    sd	$a2,16($sp)
    sd	$a0,104($sp)
.L0dae1678:
    # Line 1283
    li	$a2,1
    li	$a1,1
    li	$a0,12
    li	$ra,-4
    # Line 1278
    andi	$t8,$s0,0x3
    sd	$t8,192($sp)
    # Line 1279
    ld	$s1,96($sp)
    # Line 1281
    and	$s0,$ra,$s0
    # Line 1283
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    # Line 1279
    addu	$s1,$s1,$t8
    # Line 1280
    andi	$a3,$s1,0x7
    # Line 1283
    bal __glMgrRSSRegSet
    sd	$a3,152($sp)
    # Line 1284
    li	$a3,1
    ld	$a1,104($sp)
    li	$a0,339
    lui	$a5,0x1
    andi	$a1,$a1,0xffff
    or	$a1,$a1,$a5
    ld	$a5,120($sp)
    la	$a2,SYMBOL_LOCATION
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    lw	$a6,-26652($a5)
    lui	$a4,0xfffe
    li	$a7,-1793
    and	$a6,$a6,$a7
    ld	$a7,192($sp)
    ori	$a4,$a4,0x3fff
    sd	$a1,200($sp)
    andi	$a7,$a7,0x7
    sll	$a7,$a7,0x8
    or	$a6,$a6,$a7
    and	$a4,$a4,$a6
    sw	$a4,-26652($a5)
    bal __glMgrRSSRegShadow
    lw	$a2,84($a2)
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    move	$a2,$zero
    ld	$a1,200($sp)
    bal __glMgrRSSRegSet
    li	$a0,344
    li	$a2,1
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    ld	$a1,120($sp)
    li	$a0,345
    bal __glMgrRSSRegSet
    lw	$a1,-26652($a1)
    move	$a3,$zero
    li	$a0,70
    la	$a2,SYMBOL_LOCATION
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    ld	$a1,136($sp)
    lw	$a2,104($a2)
    bal __glMgrRSSRegShadow
    or	$a1,$a1,$s8
    li	$a3,1
    li	$a0,71
    la	$a2,SYMBOL_LOCATION
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    ld	$a1,128($sp)
    lw	$a2,108($a2)
    bal __glMgrRSSRegShadow
    or	$a1,$a1,$s8
    ld	$v0,120($sp)
    li	$a5,0xdb04
    sw	$a5,0($s6)
    lw	$v0,-27000($v0)
    lui	$a4,0x7
    li	$ra,-1
    li	$t2,0x8f08
    sw	$v0,0($s6)
    # Line 1285
    sw	$t2,0($s6)
    sw	$zero,0($s6)
    sw	$zero,0($s6)
    lw	$at,0($s7)
    ld	$a3,160($sp)
    ld	$a2,152($sp)
    andi	$at,$at,0x1
    bnez	$at,.L0dae17c8
    ld	$a1,192($sp)
.L0dae17b8:
    lw	$v1,0($s7)
    andi	$v1,$v1,0x1
    beqz	$v1,.L0dae17b8
    nop
.L0dae17c8:
    lw	$a0,-14984($s4)
    andi	$a0,$a0,0x100
    bnez	$a0,.L0dae17ec
    # Line 1290
    ld	$v0,96($sp)
.L0dae17d8:
    # Line 1285
    lw	$at,-14984($s4)
    andi	$at,$at,0x100
    beqz	$at,.L0dae17d8
    nop
    # Line 1290
    ld	$v0,96($sp)
.L0dae17ec:
    sll	$t1,$a2,0x3
    # Line 1285
    beqz	$a1,.L0dae18d4
    # Line 1290
    sll	$t3,$a1,0x3
    li	$v1,8
    li	$a7,-1
    srlv	$t3,$ra,$t3
    subu	$v1,$v1,$a1
    slt	$v0,$v0,$v1
    beqz	$v0,.L0dae1844
    move	$t0,$t3
    slti	$a0,$a2,5
    beqz	$a0,.L0dae1834
    move	$a7,$zero
    li	$t0,32
    subu	$t0,$t0,$t1
    sllv	$t0,$ra,$t0
    b	.L0dae1840
    and	$t0,$t0,$t3
.L0dae1834:
    li	$a7,64
    subu	$a7,$a7,$t1
    sllv	$a7,$ra,$a7
.L0dae1840:
    move	$a2,$zero
.L0dae1844:
    # Line 1293
    addiu	$s1,$s1,-8
    # Line 1292
    lw	$v0,-11840($s4)
    lw	$v1,4($s0)
    nor	$a0,$t0,$zero
    sll	$at,$v0,0x18
    and	$v1,$v1,$a0
    andi	$a0,$v0,0xff00
    sll	$a0,$a0,0x8
    or	$a0,$a0,$at
    and	$at,$s3,$v0
    and	$v0,$s2,$v0
    srl	$v0,$v0,0x8
    srl	$at,$at,0x18
    or	$at,$at,$v0
    or	$a0,$a0,$at
    and	$a0,$a0,$t0
    or	$v1,$v1,$a0
    sw	$v1,0($s0)
    addiu	$s0,$s0,8
    lw	$a0,-15932($s4)
    lw	$at,0($s0)
    nor	$v0,$a7,$zero
    sll	$v1,$a0,0x18
    and	$at,$at,$v0
    andi	$v0,$a0,0xff00
    sll	$v0,$v0,0x8
    or	$v0,$v0,$v1
    and	$v1,$s3,$a0
    and	$a0,$s2,$a0
    srl	$a0,$a0,0x8
    srl	$v1,$v1,0x18
    or	$v1,$v1,$a0
    or	$v0,$v0,$v1
    and	$v0,$v0,$a7
    or	$at,$at,$v0
    sw	$at,-4($s0)
.L0dae18d4:
    # Line 1293
    slti	$at,$s1,8
    bnez	$at,.L0dae1954
    # Line 1300
    slti	$a0,$a2,5
.L0dae18e0:
    # Line 1296
    lw	$at,-11840($s4)
    andi	$v1,$at,0xff00
    sll	$v1,$v1,0x8
    sll	$a0,$at,0x18
    or	$v1,$v1,$a0
    and	$a0,$s3,$at
    srl	$a0,$a0,0x18
    and	$at,$s2,$at
    srl	$at,$at,0x8
    or	$a0,$a0,$at
    or	$v1,$v1,$a0
    sw	$v1,0($s0)
    addiu	$s0,$s0,8
    lw	$at,-15932($s4)
    # Line 1297
    addiu	$s1,$s1,-8
    slti	$v1,$s1,8
    # Line 1296
    andi	$v0,$at,0xff00
    sll	$v0,$v0,0x8
    sll	$a0,$at,0x18
    or	$v0,$v0,$a0
    and	$a0,$s3,$at
    srl	$a0,$a0,0x18
    and	$at,$s2,$at
    srl	$at,$at,0x8
    or	$a0,$a0,$at
    or	$v0,$v0,$a0
    # Line 1297
    beqz	$v1,.L0dae18e0
    # Line 1296
    sw	$v0,-4($s0)
    # Line 1300
    slti	$a0,$a2,5
.L0dae1954:
    # Line 1297
    beqz	$a2,.L0dae1538
    # Line 1300
    sll	$t1,$a2,0x3
    beqz	$a0,.L0dae14a4
    li	$a1,-1
    move	$a2,$zero
    li	$a1,32
    subu	$a1,$a1,$t1
    b	.L0dae14b0
    sllv	$a1,$ra,$a1
.L0dae1978:
    b	.L0dae1678
    sd	$a2,16($sp)
.L0dae1980:
    # Line 1317
    move	$v0,$zero
    ld	$s0,176($sp)
    ld	$s1,168($sp)
    ld	$s2,40($sp)
    ld	$s3,48($sp)
    ld	$s4,64($sp)
    ld	$s5,72($sp)
    ld	$s6,56($sp)
    ld	$ra,144($sp)
    ld	$s7,80($sp)
    ld	$s8,184($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0dae19b4:
    # Line 1256
    li	$v0,1
    ld	$s0,176($sp)
    ld	$s1,168($sp)
    ld	$s8,184($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0dae19cc:
    # Line 1264
    cvt.d.s	$f0,$f5
    add.d	$f0,$f0,$f6
    sd	$ra,144($sp)
    sd	$t0,120($sp)
    sd	$t2,112($sp)
    trunc.w.d	$f0,$f0
    # Line 1262
    li	$v0,1
    # Line 1263
    li	$v1,2
    sd	$v1,104($sp)
    # Line 1264
    mfc1	$at,$f0
    sd	$v0,88($sp)
    b	.L0dae13cc
    sw	$at,0($sp)
.end GetPixelsSwapIntPIO

# Function: GetPixelsSwapFloatPIO
# Declared: Line 1321 (Source lines: 1323-1415)
# Address: 0x0dae1a00 - 0x0dae21dc (Size: 2012 bytes, Frame: 192)
.ent GetPixelsSwapFloatPIO
GetPixelsSwapFloatPIO:
    # Line 1332
    lw	$t1,56($a1)
    dsll32	$at,$t1,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f5
    nop
    cvt.s.l	$f5,$f5
    # Line 1323
    addiu	$sp,$sp,-320
    sd	$a1,64($sp)
    # Line 1332
    lwc1	$f4,76($a1)
    sd	$a2,208($sp)
    sd	$s1,216($sp)
    mul.s	$f5,$f4,$f5
    # Line 1323
    move	$s1,$a3
    sd	$a4,192($sp)
    sd	$a5,136($sp)
    # Line 1332
    lwc1	$f0,_lit_41000000
    sd	$a6,48($sp)
    sd	$s0,224($sp)
    c.lt.s	$f0,$f5
    lui	$s0,0x1
    addu	$t0,$s0,$a0
    bc1t	.L0dae2180
    lw	$t2,-25272($t0)
    ld	$a3,64($sp)
    # Line 1346
    lw	$a3,40($a3)
    li	$v0,6400
    beql	$a3,$v0,.L0dae2198
    sdc1	$f30,40($sp)
    sd	$s5,184($sp)
    li	$at,6401
    beq	$a3,$at,.L0dae2194
    sdc1	$f30,40($sp)
    # Line 1351
    lwc1	$f30,_lit_2f800001
    # Line 1350
    li	$s5,-256
.L0dae1a88:
    # Line 1351
    ld	$v0,136($sp)
    li	$v1,1
    beq	$v0,$v1,.L0dae21a8
    ldc1	$f6,_lit8_3fec000000000000
    sd	$ra,176($sp)
    sd	$t0,152($sp)
    sd	$t2,144($sp)
    sd	$zero,120($sp)
.L0dae1aa8:
    ld	$a3,136($sp)
    # Line 1365
    multu	$a3,$t1
    mflo	$a4
    dsll32	$a4,$a4,0x0
    dsrl32	$a4,$a4,0x0
    dmtc1	$a4,$f7
    nop
    cvt.s.l	$f7,$f7
    mul.s	$f7,$f7,$f4
    cvt.d.s	$f7,$f7
    add.d	$f6,$f7,$f6
    # Line 1366
    move	$a2,$zero
    move	$a1,$zero
    li	$a0,12
    # Line 1365
    trunc.w.d	$f6,$f6
    # Line 1366
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    # Line 1364
    addu	$a3,$s1,$a3
    addiu	$a3,$a3,-1
    # Line 1365
    mfc1	$a4,$f6
    sd	$a3,56($sp)
    # Line 1366
    bal __glMgrRSSRegSet
    sd	$a4,128($sp)
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a2,1
    move	$a1,$zero
    bal __glMgrRSSRegSet
    li	$a0,351
    sd	$s2,72($sp)
    sd	$s6,80($sp)
    sd	$s3,88($sp)
    sd	$s8,96($sp)
    ld	$a2,48($sp)
    sd	$s4,104($sp)
    # Line 1367
    li	$a1,-1
    addiu	$a2,$a2,-1
    beq	$a2,$a1,.L0dae2148
    sd	$s7,112($sp)
    li	$a4,0xda00
    lui	$s2,0xff
    lui	$s3,0xff00
    lw	$s6,0($sp)
    lui	$s4,0x8
    lui	$s7,0x7
    ld	$at,56($sp)
    ori	$s7,$s7,0x4080
    sll	$s8,$s1,0x10
    sll	$at,$at,0x10
    sd	$at,168($sp)
    ld	$at,144($sp)
    sd	$s8,160($sp)
    lui	$s8,0x7
    addu	$s4,$at,$s4
    b	.L0dae1d88
    addu	$s8,$s8,$at
.L0dae1b80:
    li	$a3,64
    # Line 1397
    subu	$a3,$a3,$a2
    sllv	$a3,$ra,$a3
.L0dae1b8c:
    # Line 1398
    lw	$v0,-11840($s4)
    and	$v0,$s5,$v0
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f1
    nop
    cvt.s.l	$f1,$f1
    mul.s	$f1,$f1,$f30
    swc1	$f1,32($sp)
    lw	$a0,4($s0)
    lw	$v1,32($sp)
    nor	$at,$a7,$zero
    and	$a0,$a0,$at
    sll	$v0,$v1,0x18
    andi	$at,$v1,0xff00
    sll	$at,$at,0x8
    or	$at,$at,$v0
    and	$v0,$s3,$v1
    and	$v1,$s2,$v1
    srl	$v1,$v1,0x8
    srl	$v0,$v0,0x18
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    and	$at,$at,$a7
    or	$a0,$a0,$at
    sw	$a0,0($s0)
    lw	$v1,-15932($s4)
    and	$v1,$s5,$v1
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f0
    nop
    cvt.s.l	$f0,$f0
    mul.s	$f0,$f0,$f30
    swc1	$f0,32($sp)
    lw	$at,8($s0)
    lw	$a0,32($sp)
    nor	$v0,$a3,$zero
    and	$at,$at,$v0
    sll	$v1,$a0,0x18
    andi	$v0,$a0,0xff00
    sll	$v0,$v0,0x8
    or	$v0,$v0,$v1
    and	$v1,$s3,$a0
    and	$a0,$s2,$a0
    srl	$a0,$a0,0x8
    srl	$v1,$v1,0x18
    or	$v1,$v1,$a0
    or	$v0,$v0,$v1
    and	$v0,$v0,$a3
    or	$at,$at,$v0
    sw	$at,4($s0)
.L0dae1c5c:
    ld	$v1,120($sp)
    # Line 1403
    move	$a3,$a4
    andi	$t0,$s6,0x3
    # Line 1398
    beqz	$v1,.L0dae1cf0
    # Line 1402
    addiu	$a7,$sp,8
    # Line 1404
    move	$a2,$zero
    blez	$s6,.L0dae1cf0
    move	$t3,$s6
    beqz	$t0,.L0dae1ca4
    move	$t9,$a2
.L0dae1c84:
    addiu	$a2,$a2,1
    # Line 1405
    addiu	$a3,$a3,1
    addiu	$a7,$a7,1
    lbu	$a0,-1($a7)
    addi	$t0,$t0,-1
    bnez	$t0,.L0dae1c84
    sb	$a0,-1($a3)
    move	$t9,$a2
.L0dae1ca4:
    move	$t8,$a3
    sra	$at,$t3,0x2
    beqz	$at,.L0dae1cf0
    move	$t0,$a7
    move	$a7,$t9
    move	$a2,$t8
    move	$a3,$t0
.L0dae1cc0:
    lbu	$at,0($a3)
    sb	$at,0($a2)
    lbu	$a0,1($a3)
    sb	$a0,1($a2)
    lbu	$v1,2($a3)
    addiu	$a2,$a2,4
    sb	$v1,-2($a2)
    addiu	$a3,$a3,4
    lbu	$v0,-1($a3)
    # Line 1404
    addiu	$a7,$a7,4
    bne	$a7,$s6,.L0dae1cc0
    # Line 1405
    sb	$v0,-1($a2)
.L0dae1cf0:
    ld	$a2,152($sp)
    # Line 1408
    lw	$a2,-25272($a2)
    # Line 1407
    ld	$v1,64($sp)
    # Line 1408
    addu	$a2,$a5,$a2
    lw	$v0,0($a2)
    addiu	$a1,$a1,1
    # Line 1407
    lw	$v1,152($v1)
    # Line 1408
    andi	$v0,$v0,0x2
    bnez	$v0,.L0dae1d30
    # Line 1407
    addu	$a4,$v1,$a4
.L0dae1d18:
    # Line 1408
    lw	$at,0($a2)
    andi	$at,$at,0x2
    beqz	$at,.L0dae1d18
    nop
    sd	$a1,192($sp)
    sd	$a4,208($sp)
.L0dae1d30:
    sd	$a4,208($sp)
    # Line 1412
    move	$a2,$zero
    sd	$a1,192($sp)
    move	$a1,$zero
    li	$a0,12
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    lui	$v0,0xa
    ori	$v0,$v0,0x704
    # Line 1411
    sw	$v0,0($s7)
    # Line 1412
    bal __glMgrRSSRegSet
    # Line 1411
    sw	$zero,0($s7)
    # Line 1412
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a2,1
    move	$a1,$zero
    bal __glMgrRSSRegSet
    li	$a0,351
    # Line 1367
    ld	$a2,48($sp)
    li	$a4,0xda00
    li	$a1,-1
    addiu	$a2,$a2,-1
    beq	$a2,$a1,.L0dae2148
    # Line 1413
    sw	$a4,0($s7)
.L0dae1d88:
    ld	$v1,120($sp)
    ld	$s0,208($sp)
    # Line 1367
    beqz	$v1,.L0dae2140
    # Line 1370
    li	$a0,2
    # Line 1369
    addiu	$s0,$sp,8
    sd	$a2,48($sp)
    sd	$a0,136($sp)
.L0dae1da4:
    # Line 1379
    li	$a2,1
    li	$a1,1
    li	$a0,12
    li	$ra,-4
    # Line 1374
    andi	$t8,$s0,0x3
    sd	$t8,232($sp)
    # Line 1375
    ld	$s1,128($sp)
    # Line 1377
    and	$s0,$ra,$s0
    # Line 1379
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    # Line 1375
    addu	$s1,$s1,$t8
    # Line 1376
    andi	$a3,$s1,0x7
    # Line 1379
    bal __glMgrRSSRegSet
    sd	$a3,200($sp)
    # Line 1380
    li	$a3,1
    ld	$a1,136($sp)
    li	$a0,339
    lui	$a5,0x1
    andi	$a1,$a1,0xffff
    or	$a1,$a1,$a5
    ld	$a5,152($sp)
    la	$a2,SYMBOL_LOCATION
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    lw	$a6,-26652($a5)
    lui	$a4,0xfffe
    li	$a7,-1793
    and	$a6,$a6,$a7
    ld	$a7,232($sp)
    ori	$a4,$a4,0x3fff
    sd	$a1,240($sp)
    andi	$a7,$a7,0x7
    sll	$a7,$a7,0x8
    or	$a6,$a6,$a7
    and	$a4,$a4,$a6
    sw	$a4,-26652($a5)
    bal __glMgrRSSRegShadow
    lw	$a2,84($a2)
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    move	$a2,$zero
    ld	$a1,240($sp)
    bal __glMgrRSSRegSet
    li	$a0,344
    li	$a2,1
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    ld	$a1,152($sp)
    li	$a0,345
    bal __glMgrRSSRegSet
    lw	$a1,-26652($a1)
    move	$a3,$zero
    li	$a0,70
    ld	$a4,192($sp)
    la	$a2,SYMBOL_LOCATION
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    ld	$a1,160($sp)
    lw	$a2,104($a2)
    bal __glMgrRSSRegShadow
    or	$a1,$a1,$a4
    li	$a3,1
    li	$a0,71
    ld	$a4,192($sp)
    la	$a2,SYMBOL_LOCATION
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    ld	$a1,168($sp)
    lw	$a2,108($a2)
    bal __glMgrRSSRegShadow
    or	$a1,$a1,$a4
    lui	$a5,0x7
    ld	$v0,152($sp)
    li	$t1,0xdb04
    sw	$t1,0($s7)
    lw	$v0,-27000($v0)
    li	$ra,-1
    ld	$a4,208($sp)
    li	$t2,0x8f08
    sw	$v0,0($s7)
    # Line 1381
    sw	$t2,0($s7)
    sw	$zero,0($s7)
    sw	$zero,0($s7)
    lw	$at,0($s8)
    ld	$a3,200($sp)
    ld	$a2,232($sp)
    andi	$at,$at,0x1
    bnez	$at,.L0dae1f00
    ld	$a1,192($sp)
.L0dae1ef0:
    lw	$v1,0($s8)
    andi	$v1,$v1,0x1
    beqz	$v1,.L0dae1ef0
    nop
.L0dae1f00:
    lw	$a0,-14984($s4)
    andi	$a0,$a0,0x100
    bnez	$a0,.L0dae1f24
    # Line 1386
    ld	$v0,128($sp)
.L0dae1f10:
    # Line 1381
    lw	$at,-14984($s4)
    andi	$at,$at,0x100
    beqz	$at,.L0dae1f10
    nop
    # Line 1386
    ld	$v0,128($sp)
.L0dae1f24:
    # Line 1381
    beqz	$a2,.L0dae2054
    # Line 1386
    sll	$t3,$a2,0x3
    li	$v1,8
    li	$a7,-1
    srlv	$t3,$ra,$t3
    subu	$v1,$v1,$a2
    slt	$v0,$v0,$v1
    beqz	$v0,.L0dae1f7c
    move	$t0,$t3
    slti	$a0,$a3,5
    beqz	$a0,.L0dae1f6c
    sll	$a2,$a3,0x3
    move	$a7,$zero
    li	$t0,32
    subu	$t0,$t0,$a2
    sllv	$t0,$ra,$t0
    b	.L0dae1f78
    and	$t0,$t0,$t3
.L0dae1f6c:
    li	$a7,64
    subu	$a7,$a7,$a2
    sllv	$a7,$ra,$a7
.L0dae1f78:
    move	$a3,$zero
.L0dae1f7c:
    # Line 1390
    addiu	$s1,$s1,-8
    # Line 1388
    lw	$v0,-11840($s4)
    and	$v0,$s5,$v0
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f3
    nop
    cvt.s.l	$f3,$f3
    mul.s	$f3,$f3,$f30
    swc1	$f3,16($sp)
    lw	$a0,4($s0)
    lw	$v1,16($sp)
    nor	$at,$t0,$zero
    and	$a0,$a0,$at
    sll	$v0,$v1,0x18
    andi	$at,$v1,0xff00
    sll	$at,$at,0x8
    or	$at,$at,$v0
    and	$v0,$s3,$v1
    and	$v1,$s2,$v1
    srl	$v1,$v1,0x8
    srl	$v0,$v0,0x18
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    and	$at,$at,$t0
    or	$a0,$a0,$at
    sw	$a0,0($s0)
    lw	$v1,-15932($s4)
    and	$v1,$s5,$v1
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f2
    nop
    cvt.s.l	$f2,$f2
    mul.s	$f2,$f2,$f30
    addiu	$s0,$s0,8
    swc1	$f2,16($sp)
    lw	$at,0($s0)
    lw	$a0,16($sp)
    nor	$v0,$a7,$zero
    and	$at,$at,$v0
    sll	$v1,$a0,0x18
    andi	$v0,$a0,0xff00
    sll	$v0,$v0,0x8
    or	$v0,$v0,$v1
    and	$v1,$s3,$a0
    and	$a0,$s2,$a0
    srl	$a0,$a0,0x8
    srl	$v1,$v1,0x18
    or	$v1,$v1,$a0
    or	$v0,$v0,$v1
    and	$v0,$v0,$a7
    or	$at,$at,$v0
    sw	$at,-4($s0)
.L0dae2054:
    # Line 1390
    slti	$v1,$s1,8
    bnez	$v1,.L0dae2118
    nop
.L0dae2060:
    # Line 1393
    lw	$v1,-11840($s4)
    and	$v1,$s5,$v1
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f1
    nop
    cvt.s.l	$f1,$f1
    mul.s	$f1,$f1,$f30
    swc1	$f1,24($sp)
    lw	$a0,24($sp)
    andi	$v0,$a0,0xff00
    sll	$v0,$v0,0x8
    sll	$v1,$a0,0x18
    or	$v0,$v0,$v1
    and	$v1,$s3,$a0
    srl	$v1,$v1,0x18
    and	$a0,$s2,$a0
    srl	$a0,$a0,0x8
    or	$v1,$v1,$a0
    or	$v0,$v0,$v1
    sw	$v0,0($s0)
    lw	$at,-15932($s4)
    and	$at,$s5,$at
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f0
    nop
    cvt.s.l	$f0,$f0
    mul.s	$f0,$f0,$f30
    swc1	$f0,24($sp)
    addiu	$s0,$s0,8
    lw	$v1,24($sp)
    # Line 1394
    addiu	$s1,$s1,-8
    slti	$at,$s1,8
    # Line 1393
    andi	$a0,$v1,0xff00
    sll	$a0,$a0,0x8
    sll	$v0,$v1,0x18
    or	$a0,$a0,$v0
    and	$v0,$s3,$v1
    srl	$v0,$v0,0x18
    and	$v1,$s2,$v1
    srl	$v1,$v1,0x8
    or	$v0,$v0,$v1
    or	$a0,$a0,$v0
    # Line 1394
    beqz	$at,.L0dae2060
    # Line 1393
    sw	$a0,-4($s0)
.L0dae2118:
    # Line 1394
    beqz	$a3,.L0dae1c5c
    # Line 1397
    slti	$a0,$a3,5
    sll	$a2,$a3,0x3
    beqz	$a0,.L0dae1b80
    li	$a7,-1
    move	$a3,$zero
    li	$a7,32
    subu	$a7,$a7,$a2
    b	.L0dae1b8c
    sllv	$a7,$ra,$a7
.L0dae2140:
    b	.L0dae1da4
    sd	$a2,48($sp)
.L0dae2148:
    # Line 1415
    move	$v0,$zero
    ld	$s0,224($sp)
    ld	$s1,216($sp)
    ld	$s2,72($sp)
    ld	$s3,88($sp)
    ld	$s4,104($sp)
    ld	$s5,184($sp)
    ld	$s6,80($sp)
    ld	$s7,112($sp)
    ld	$ra,176($sp)
    ld	$s8,96($sp)
    ldc1	$f30,40($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0dae2180:
    # Line 1344
    li	$v0,1
    ld	$s0,224($sp)
    ld	$s1,216($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0dae2194:
    sdc1	$f30,40($sp)
.L0dae2198:
    # Line 1348
    lwc1	$f30,_lit_3f800000
    sd	$s5,184($sp)
    b	.L0dae1a88
    # Line 1347
    li	$s5,4095
.L0dae21a8:
    # Line 1360
    cvt.d.s	$f2,$f5
    add.d	$f2,$f2,$f6
    sd	$ra,176($sp)
    sd	$t0,152($sp)
    sd	$t2,144($sp)
    trunc.w.d	$f2,$f2
    # Line 1358
    li	$v0,1
    # Line 1359
    li	$v1,2
    sd	$v1,136($sp)
    # Line 1360
    mfc1	$at,$f2
    sd	$v0,120($sp)
    b	.L0dae1aa8
    sw	$at,0($sp)
.end GetPixelsSwapFloatPIO

# Function: GetPixelsFloatPIO
# Declared: Line 1419 (Source lines: 1421-1511)
# Address: 0x0dae21dc - 0x0dae2998 (Size: 1980 bytes, Frame: 176)
.ent GetPixelsFloatPIO
GetPixelsFloatPIO:
    # Line 1430
    lw	$t0,56($a1)
    dsll32	$at,$t0,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f5
    # Line 1421
    addiu	$sp,$sp,-304
    # Line 1430
    cvt.s.l	$f5,$f5
    sd	$a1,72($sp)
    sd	$a2,168($sp)
    sd	$s4,200($sp)
    lwc1	$f4,76($a1)
    # Line 1421
    move	$s4,$a3
    sd	$s7,192($sp)
    # Line 1430
    mul.s	$f5,$f4,$f5
    # Line 1421
    move	$s7,$a4
    sd	$a5,128($sp)
    sd	$a6,56($sp)
    # Line 1430
    lwc1	$f0,_lit_41000000
    sd	$s8,208($sp)
    sd	$s3,216($sp)
    c.lt.s	$f0,$f5
    lui	$s3,0x1
    addu	$s8,$s3,$a0
    bc1t	.L0dae2938
    lw	$t1,-25272($s8)
    ld	$a3,72($sp)
    # Line 1444
    lw	$a3,40($a3)
    li	$v0,6400
    beql	$a3,$v0,.L0dae2958
    sdc1	$f28,48($sp)
    sd	$s1,160($sp)
    li	$at,6401
    beq	$a3,$at,.L0dae2954
    sdc1	$f28,48($sp)
    # Line 1449
    lwc1	$f28,_lit_2f800001
    # Line 1448
    li	$s1,-256
.L0dae2268:
    # Line 1449
    ld	$v0,128($sp)
    li	$v1,1
    beq	$v0,$v1,.L0dae2968
    ldc1	$f6,_lit8_3fec000000000000
    sd	$ra,152($sp)
    sd	$t1,136($sp)
    sd	$zero,112($sp)
.L0dae2284:
    ld	$a3,128($sp)
    # Line 1463
    multu	$a3,$t0
    mflo	$a4
    dsll32	$a4,$a4,0x0
    dsrl32	$a4,$a4,0x0
    dmtc1	$a4,$f7
    nop
    cvt.s.l	$f7,$f7
    mul.s	$f7,$f7,$f4
    cvt.d.s	$f7,$f7
    add.d	$f6,$f7,$f6
    # Line 1464
    move	$a2,$zero
    move	$a1,$zero
    li	$a0,12
    # Line 1463
    trunc.w.d	$f6,$f6
    # Line 1464
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    # Line 1462
    addu	$a3,$s4,$a3
    addiu	$a3,$a3,-1
    # Line 1463
    mfc1	$a4,$f6
    sd	$a3,64($sp)
    # Line 1464
    bal __glMgrRSSRegSet
    sd	$a4,120($sp)
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a2,1
    move	$a1,$zero
    bal __glMgrRSSRegSet
    li	$a0,351
    sd	$s2,80($sp)
    sd	$s6,88($sp)
    sd	$s0,96($sp)
    ld	$a2,56($sp)
    sd	$s5,104($sp)
    # Line 1465
    li	$a1,-1
    addiu	$a2,$a2,-1
    beq	$a2,$a1,.L0dae28fc
    sdc1	$f30,40($sp)
    sdc1	$f30,40($sp)
    li	$a4,0xda00
    lw	$s2,0($sp)
    lui	$s0,0x8
    lui	$s5,0x7
    ld	$at,64($sp)
    ori	$s5,$s5,0x4080
    sll	$s6,$s4,0x10
    sll	$at,$at,0x10
    sd	$at,184($sp)
    ld	$at,136($sp)
    sd	$s6,176($sp)
    lui	$s6,0x7
    addu	$s0,$at,$s0
    b	.L0dae2500
    addu	$s6,$s6,$at
.L0dae2354:
    li	$a2,64
    # Line 1494
    subu	$a2,$a2,$t2
    sllv	$a2,$ra,$a2
.L0dae2360:
    # Line 1495
    lw	$a0,-11840($s0)
    and	$a0,$s1,$a0
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f1
    nop
    cvt.s.l	$f1,$f1
    mul.s	$f1,$f1,$f28
    swc1	$f1,32($sp)
    lw	$at,4($s3)
    lw	$v0,32($sp)
    nor	$v1,$a1,$zero
    and	$at,$at,$v1
    and	$v0,$v0,$a1
    or	$at,$at,$v0
    sw	$at,0($s3)
    lw	$a0,-15932($s0)
    and	$a0,$s1,$a0
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f0
    nop
    cvt.s.l	$f0,$f0
    mul.s	$f0,$f0,$f28
    swc1	$f0,32($sp)
    lw	$at,8($s3)
    lw	$v0,32($sp)
    nor	$v1,$a2,$zero
    and	$at,$at,$v1
    and	$v0,$v0,$a2
    or	$at,$at,$v0
    sw	$at,4($s3)
.L0dae23e0:
    ld	$at,112($sp)
    # Line 1499
    move	$t0,$a3
    andi	$a1,$s2,0x3
    # Line 1495
    beqz	$at,.L0dae2474
    # Line 1498
    addiu	$a2,$sp,8
    # Line 1500
    move	$t1,$zero
    blez	$s2,.L0dae2474
    move	$t2,$s2
    beqz	$a1,.L0dae2428
    move	$t3,$t1
.L0dae2408:
    addiu	$t1,$t1,1
    # Line 1501
    addiu	$t0,$t0,1
    addiu	$a2,$a2,1
    lbu	$v0,-1($a2)
    addi	$a1,$a1,-1
    bnez	$a1,.L0dae2408
    sb	$v0,-1($t0)
    move	$t3,$t1
.L0dae2428:
    move	$t8,$t0
    sra	$v1,$t2,0x2
    beqz	$v1,.L0dae2474
    move	$t9,$a2
    move	$t0,$t3
    move	$t1,$t8
    move	$a2,$t9
.L0dae2444:
    lbu	$v1,0($a2)
    sb	$v1,0($t1)
    lbu	$v0,1($a2)
    sb	$v0,1($t1)
    lbu	$at,2($a2)
    addiu	$t1,$t1,4
    sb	$at,-2($t1)
    addiu	$a2,$a2,4
    lbu	$a0,-1($a2)
    # Line 1500
    addiu	$t0,$t0,4
    bne	$t0,$s2,.L0dae2444
    # Line 1501
    sb	$a0,-1($t1)
.L0dae2474:
    # Line 1504
    lw	$a1,-25272($s8)
    # Line 1503
    ld	$at,72($sp)
    # Line 1504
    addu	$a1,$a4,$a1
    lw	$a0,0($a1)
    addiu	$s7,$s7,1
    # Line 1503
    lw	$at,152($at)
    # Line 1504
    andi	$a0,$a0,0x2
    bnez	$a0,.L0dae24ac
    # Line 1503
    addu	$a3,$at,$a3
.L0dae2498:
    # Line 1504
    lw	$at,0($a1)
    andi	$at,$at,0x2
    beqz	$at,.L0dae2498
    nop
    sd	$a3,168($sp)
.L0dae24ac:
    sd	$a3,168($sp)
    # Line 1508
    move	$a2,$zero
    move	$a1,$zero
    li	$a0,12
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    lui	$v0,0xa
    ori	$v0,$v0,0x704
    # Line 1507
    sw	$v0,0($s5)
    # Line 1508
    bal __glMgrRSSRegSet
    # Line 1507
    sw	$zero,0($s5)
    # Line 1508
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a2,1
    move	$a1,$zero
    bal __glMgrRSSRegSet
    li	$a0,351
    # Line 1465
    ld	$a2,56($sp)
    li	$a4,0xda00
    li	$a1,-1
    addiu	$a2,$a2,-1
    beq	$a2,$a1,.L0dae28fc
    # Line 1509
    sw	$a4,0($s5)
.L0dae2500:
    ld	$v1,112($sp)
    ld	$s3,168($sp)
    # Line 1465
    beqz	$v1,.L0dae28f4
    # Line 1468
    li	$a0,2
    # Line 1467
    addiu	$s3,$sp,8
    sd	$a2,56($sp)
    sd	$a0,128($sp)
.L0dae251c:
    # Line 1477
    li	$a2,1
    li	$a1,1
    li	$a0,12
    li	$ra,-4
    # Line 1472
    andi	$t8,$s3,0x3
    sd	$t8,224($sp)
    # Line 1473
    ld	$s4,120($sp)
    # Line 1475
    and	$s3,$ra,$s3
    # Line 1477
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    # Line 1473
    addu	$s4,$s4,$t8
    # Line 1474
    andi	$a3,$s4,0x7
    # Line 1477
    bal __glMgrRSSRegSet
    sd	$a3,144($sp)
    # Line 1478
    li	$a3,1
    li	$a0,339
    la	$a2,SYMBOL_LOCATION
    ld	$a1,128($sp)
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    lui	$a5,0x1
    andi	$a1,$a1,0xffff
    or	$a1,$a1,$a5
    lw	$a5,-26652($s8)
    lui	$a4,0xfffe
    li	$a6,-1793
    and	$a5,$a5,$a6
    ld	$a6,224($sp)
    ori	$a4,$a4,0x3fff
    sd	$a1,232($sp)
    andi	$a6,$a6,0x7
    sll	$a6,$a6,0x8
    or	$a5,$a5,$a6
    and	$a4,$a4,$a5
    sw	$a4,-26652($s8)
    bal __glMgrRSSRegShadow
    lw	$a2,84($a2)
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    move	$a2,$zero
    ld	$a1,232($sp)
    bal __glMgrRSSRegSet
    li	$a0,344
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a2,1
    lw	$a1,-26652($s8)
    bal __glMgrRSSRegSet
    li	$a0,345
    move	$a3,$zero
    li	$a0,70
    la	$a2,SYMBOL_LOCATION
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    ld	$a1,176($sp)
    lw	$a2,104($a2)
    bal __glMgrRSSRegShadow
    or	$a1,$a1,$s7
    li	$a3,1
    li	$a0,71
    la	$a2,SYMBOL_LOCATION
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    ld	$a1,184($sp)
    lw	$a2,108($a2)
    bal __glMgrRSSRegShadow
    or	$a1,$a1,$s7
    li	$a5,0xdb04
    sw	$a5,0($s5)
    lw	$v0,-27000($s8)
    lui	$a4,0x7
    li	$ra,-1
    li	$a7,0x8f08
    sw	$v0,0($s5)
    # Line 1479
    sw	$a7,0($s5)
    sw	$zero,0($s5)
    sw	$zero,0($s5)
    lw	$at,0($s6)
    ld	$a3,168($sp)
    ld	$a2,144($sp)
    andi	$at,$at,0x1
    bnez	$at,.L0dae2660
    ld	$a1,224($sp)
.L0dae2650:
    lw	$v1,0($s6)
    andi	$v1,$v1,0x1
    beqz	$v1,.L0dae2650
    nop
.L0dae2660:
    lw	$a0,-14984($s0)
    andi	$a0,$a0,0x100
    bnez	$a0,.L0dae2684
    # Line 1484
    ld	$v0,120($sp)
.L0dae2670:
    # Line 1479
    lw	$at,-14984($s0)
    andi	$at,$at,0x100
    beqz	$at,.L0dae2670
    nop
    # Line 1484
    ld	$v0,120($sp)
.L0dae2684:
    sll	$t2,$a2,0x3
    # Line 1479
    beqz	$a1,.L0dae2764
    # Line 1484
    sll	$t3,$a1,0x3
    li	$v1,8
    li	$t0,-1
    srlv	$t3,$ra,$t3
    subu	$v1,$v1,$a1
    slt	$v0,$v0,$v1
    beqz	$v0,.L0dae26dc
    move	$t1,$t3
    slti	$a0,$a2,5
    beqz	$a0,.L0dae26cc
    move	$t0,$zero
    li	$t1,32
    subu	$t1,$t1,$t2
    sllv	$t1,$ra,$t1
    b	.L0dae26d8
    and	$t1,$t1,$t3
.L0dae26cc:
    li	$t0,64
    subu	$t0,$t0,$t2
    sllv	$t0,$ra,$t0
.L0dae26d8:
    move	$a2,$zero
.L0dae26dc:
    # Line 1487
    addiu	$s4,$s4,-8
    # Line 1486
    lw	$a0,-11840($s0)
    and	$a0,$s1,$a0
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f3
    nop
    cvt.s.l	$f3,$f3
    mul.s	$f3,$f3,$f28
    swc1	$f3,16($sp)
    lw	$at,4($s3)
    lw	$v0,16($sp)
    nor	$v1,$t1,$zero
    and	$at,$at,$v1
    and	$v0,$v0,$t1
    or	$at,$at,$v0
    sw	$at,0($s3)
    lw	$a0,-15932($s0)
    and	$a0,$s1,$a0
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f2
    nop
    cvt.s.l	$f2,$f2
    mul.s	$f2,$f2,$f28
    addiu	$s3,$s3,8
    swc1	$f2,16($sp)
    lw	$at,0($s3)
    lw	$v0,16($sp)
    nor	$v1,$t0,$zero
    and	$at,$at,$v1
    and	$v0,$v0,$t0
    or	$at,$at,$v0
    sw	$at,-4($s3)
.L0dae2764:
    # Line 1487
    slti	$at,$s4,8
    bnez	$at,.L0dae28cc
    sra	$t0,$s4,0x2
    srl	$t0,$t0,0x1d
    addu	$t0,$t0,$s4
    sra	$t0,$t0,0x3
    andi	$v0,$t0,0x1
    beqz	$v0,.L0dae27ec
    move	$t1,$s4
    # Line 1490
    lw	$a0,-11840($s0)
    and	$a0,$s1,$a0
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f0
    nop
    cvt.s.l	$f0,$f0
    mul.s	$f0,$f0,$f28
    swc1	$f0,24($sp)
    lw	$v1,24($sp)
    sw	$v1,0($s3)
    lw	$v0,-15932($s0)
    and	$v0,$s1,$v0
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f30
    nop
    cvt.s.l	$f30,$f30
    mul.s	$f30,$f30,$f28
    swc1	$f30,24($sp)
    lw	$at,24($sp)
    # Line 1491
    addiu	$s4,$s4,-8
    # Line 1490
    addiu	$s3,$s3,8
    sw	$at,-4($s3)
    move	$t1,$s4
.L0dae27ec:
    sra	$at,$t0,0x1
    beqz	$at,.L0dae28c8
    move	$t2,$s3
    move	$t0,$t1
    move	$a1,$t2
.L0dae2800:
    lw	$v0,-11840($s0)
    and	$v0,$s1,$v0
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f2
    nop
    cvt.s.l	$f2,$f2
    mul.s	$f2,$f2,$f28
    swc1	$f2,24($sp)
    lw	$at,24($sp)
    sw	$at,0($a1)
    lw	$a0,-15932($s0)
    and	$a0,$s1,$a0
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f1
    nop
    cvt.s.l	$f1,$f1
    mul.s	$f1,$f1,$f28
    swc1	$f1,24($sp)
    lw	$v1,24($sp)
    sw	$v1,4($a1)
    lw	$v0,-11840($s0)
    and	$v0,$s1,$v0
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f0
    nop
    cvt.s.l	$f0,$f0
    mul.s	$f0,$f0,$f28
    swc1	$f0,24($sp)
    lw	$at,24($sp)
    sw	$at,8($a1)
    lw	$a0,-15932($s0)
    and	$a0,$s1,$a0
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f4
    nop
    cvt.s.l	$f4,$f4
    mul.s	$f4,$f4,$f28
    addiu	$a1,$a1,16
    swc1	$f4,24($sp)
    # Line 1491
    addiu	$t0,$t0,-16
    # Line 1490
    lw	$v0,24($sp)
    # Line 1491
    slti	$v1,$t0,8
    beqz	$v1,.L0dae2800
    # Line 1490
    sw	$v0,-4($a1)
    mov.s	$f30,$f4
    move	$s3,$a1
.L0dae28c8:
    # Line 1491
    swc1	$f30,24($sp)
.L0dae28cc:
    # Line 1494
    li	$a1,-1
    # Line 1491
    beqz	$a2,.L0dae23e0
    # Line 1494
    slti	$v1,$a2,5
    sll	$t2,$a2,0x3
    beqz	$v1,.L0dae2354
    move	$a2,$zero
    li	$a1,32
    subu	$a1,$a1,$t2
    b	.L0dae2360
    sllv	$a1,$ra,$a1
.L0dae28f4:
    b	.L0dae251c
    sd	$a2,56($sp)
.L0dae28fc:
    # Line 1511
    move	$v0,$zero
    ld	$s0,96($sp)
    ld	$s1,160($sp)
    ld	$s2,80($sp)
    ld	$s3,216($sp)
    ld	$s4,200($sp)
    ld	$s5,104($sp)
    ld	$s6,88($sp)
    ld	$s7,192($sp)
    ld	$s8,208($sp)
    ld	$ra,152($sp)
    ldc1	$f28,48($sp)
    ldc1	$f30,40($sp)
    jr	$ra
    addiu	$sp,$sp,304
.L0dae2938:
    # Line 1442
    li	$v0,1
    ld	$s3,216($sp)
    ld	$s4,200($sp)
    ld	$s7,192($sp)
    ld	$s8,208($sp)
    jr	$ra
    addiu	$sp,$sp,304
.L0dae2954:
    sdc1	$f28,48($sp)
.L0dae2958:
    # Line 1446
    lwc1	$f28,_lit_3f800000
    sd	$s1,160($sp)
    b	.L0dae2268
    # Line 1445
    li	$s1,4095
.L0dae2968:
    # Line 1458
    cvt.d.s	$f3,$f5
    add.d	$f3,$f3,$f6
    sd	$ra,152($sp)
    sd	$t1,136($sp)
    trunc.w.d	$f3,$f3
    # Line 1456
    li	$v0,1
    # Line 1457
    li	$v1,2
    sd	$v1,128($sp)
    # Line 1458
    mfc1	$at,$f3
    sd	$v0,112($sp)
    b	.L0dae2284
    sw	$at,0($sp)
.end GetPixelsFloatPIO

# Function: GetPixelsPackedPIO
# Declared: Line 1515 (Source lines: 1517-1596)
# Address: 0x0dae2998 - 0x0dae2e84 (Size: 1260 bytes, Frame: 240)
.ent GetPixelsPackedPIO
GetPixelsPackedPIO:
    # Line 1527
    lw	$at,56($a1)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f2
    # Line 1517
    addiu	$sp,$sp,-16624
    # Line 1527
    cvt.s.l	$f2,$f2
    sd	$a0,16480($sp)
    sd	$a1,16464($sp)
    sd	$a2,16408($sp)
    lwc1	$f1,76($a1)
    sd	$s5,16496($sp)
    # Line 1517
    move	$s5,$a4
    # Line 1527
    mul.s	$f1,$f1,$f2
    sd	$s0,16504($sp)
    # Line 1517
    move	$s0,$a5
    sd	$s6,16512($sp)
    # Line 1527
    lwc1	$f0,_lit_41000000
    # Line 1517
    move	$s6,$a6
    # Line 1527
    lui	$t1,0x1
    c.lt.s	$f0,$f1
    sd	$s3,16520($sp)
    addu	$s3,$t1,$a0
    bc1t	.L0dae2dc8
    lw	$v0,-25272($s3)
    # Line 1539
    li	$v1,1
    beql	$s0,$v1,.L0dae2de4
    sd	$ra,16448($sp)
    sd	$ra,16448($sp)
    sd	$v0,16384($sp)
    sd	$a3,16392($sp)
    sd	$zero,16488($sp)
.L0dae2a14:
    # Line 1551
    ld	$a0,16464($sp)
    # lw $t9, -30464($gp) # &getbasetype
    sd	$s1,16456($sp)
    lw	$a1,52($a0)
    jal	getbasetype
    lw	$a0,40($a0)
    # Line 1552
    # lw $t9, -28588($gp) # &__glBytesPerElement
    # Line 1551
    move	$s1,$v0
    # Line 1552
    jal	__glBytesPerElement
    move	$a0,$v0
    ld	$at,16464($sp)
    lw	$at,56($at)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f4
    nop
    cvt.s.l	$f4,$f4
    mul.s	$f4,$f4,$f0
    mtc1	$s0,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$t0,$f3
    # Line 1554
    li	$a7,5121
    beq	$s1,$a7,.L0dae2dfc
    sd	$t0,16472($sp)
    li	$v1,5123
    beq	$s1,$v1,.L0dae2e3c
.L0dae2a88:
    # Line 1565
    nop	# was lw $t9, -30268($gp) # &__glMgrRSSRegSet
    move	$a2,$zero
    move	$a1,$zero
    bal __glMgrRSSRegSet
    li	$a0,12
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a2,1
    move	$a1,$zero
    bal __glMgrRSSRegSet
    li	$a0,351
    sd	$s0,16528($sp)
    sd	$s2,16416($sp)
    sd	$s4,16424($sp)
    sd	$s7,16432($sp)
    # Line 1566
    li	$a7,-1
    addiu	$s6,$s6,-1
    beq	$s6,$a7,.L0dae2d94
    sd	$s8,16440($sp)
    la	$s4,SYMBOL_LOCATION
    li	$s8,0xda00
    lui	$s0,0x8
    lui	$s1,0x7
    ld	$t0,16392($sp)
    ori	$s1,$s1,0x4080
    lui	$v1,0x1
    sll	$s2,$t0,0x10
    sd	$s2,16536($sp)
    ld	$at,16528($sp)
    lui	$s2,0x7
    ld	$s7,16472($sp)
    addu	$t0,$t0,$at
    addiu	$t0,$t0,-1
    addiu	$s7,$s7,7
    sd	$s7,16400($sp)
    andi	$s7,$at,0xffff
    or	$s7,$s7,$v1
    ld	$v1,16384($sp)
    sll	$t0,$t0,0x10
    sd	$t0,16544($sp)
    addu	$s0,$v1,$s0
    b	.L0dae2c84
    addu	$s2,$s2,$v1
.L0dae2b30:
    # Line 1569
    lw	$at,-14984($s0)
    andi	$at,$at,0x100
    bnez	$at,.L0dae2b50
    ld	$a7,16472($sp)
.L0dae2b40:
    lw	$v1,-14984($s0)
    andi	$v1,$v1,0x100
    beqz	$v1,.L0dae2b40
    nop
.L0dae2b50:
    # Line 1576
    blez	$a7,.L0dae2bd4
    # Line 1574
    move	$a4,$a7
    ld	$at,16400($sp)
    # Line 1576
    sra	$t1,$at,0x2
    srl	$t1,$t1,0x1d
    addu	$t1,$t1,$at
    sra	$t1,$t1,0x3
    andi	$t0,$t1,0x1
    beqz	$t0,.L0dae2b94
    move	$t2,$a4
    # Line 1578
    lw	$v1,-11840($s0)
    sw	$v1,0($a6)
    lw	$at,-15932($s0)
    # Line 1579
    addiu	$a4,$a4,-8
    # Line 1578
    addiu	$a6,$a6,8
    sw	$at,-4($a6)
    move	$t2,$a4
.L0dae2b94:
    sra	$a7,$t1,0x1
    beqz	$a7,.L0dae2bd4
    move	$t3,$a6
    move	$a6,$t2
    move	$a4,$t3
.L0dae2ba8:
    lw	$a7,-11840($s0)
    sw	$a7,0($a4)
    lw	$v1,-15932($s0)
    sw	$v1,4($a4)
    lw	$at,-11840($s0)
    sw	$at,8($a4)
    addiu	$a4,$a4,16
    lw	$t0,-15932($s0)
    # Line 1579
    addiu	$a6,$a6,-16
    bgtz	$a6,.L0dae2ba8
    # Line 1578
    sw	$t0,-4($a4)
.L0dae2bd4:
    # Line 1579
    ld	$t0,16488($sp)
    ld	$a4,16480($sp)
    lw	$a2,52($a2)
    beqz	$t0,.L0dae2d78
    lbu	$a4,1072($a4)
    # Line 1582
    # lw $t9, -30444($gp) # &__glMgr_PackPixels
    li	$a3,1
    ld	$a1,16408($sp)
    jal	__glMgr_PackPixels
    addiu	$a0,$sp,0
    # Line 1588
    ld	$t0,16408($sp)
.L0dae2c00:
    ld	$at,16464($sp)
    # Line 1589
    lw	$v1,-25272($s3)
    lui	$v0,0x7
    # Line 1588
    lw	$at,152($at)
    # Line 1589
    addu	$v0,$v0,$v1
    lw	$a7,0($v0)
    addiu	$s5,$s5,1
    # Line 1588
    addu	$t0,$at,$t0
    # Line 1589
    andi	$a7,$a7,0x2
    bnez	$a7,.L0dae2c3c
    sd	$t0,16408($sp)
.L0dae2c2c:
    lw	$a7,0($v0)
    andi	$a7,$a7,0x2
    beqz	$a7,.L0dae2c2c
    nop
.L0dae2c3c:
    # Line 1593
    move	$a2,$zero
    move	$a1,$zero
    li	$a0,12
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    lui	$t0,0xa
    ori	$t0,$t0,0x704
    # Line 1592
    sw	$t0,0($s1)
    # Line 1593
    bal __glMgrRSSRegSet
    # Line 1592
    sw	$zero,0($s1)
    # Line 1593
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a2,1
    move	$a1,$zero
    bal __glMgrRSSRegSet
    li	$a0,351
    # Line 1566
    addiu	$s6,$s6,-1
    li	$at,-1
    beq	$s6,$at,.L0dae2d94
    # Line 1594
    sw	$s8,0($s1)
.L0dae2c84:
    # Line 1567
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a2,1
    li	$a1,1
    bal __glMgrRSSRegSet
    li	$a0,12
    # Line 1568
    li	$a3,1
    move	$a1,$s7
    li	$a0,339
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    li	$a2,-1793
    lw	$v1,-26652($s3)
    lui	$v0,0xfffe
    ori	$v0,$v0,0x3fff
    and	$v1,$v1,$a2
    and	$v0,$v0,$v1
    sw	$v0,-26652($s3)
    bal __glMgrRSSRegShadow
    lw	$a2,84($s4)
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    move	$a2,$zero
    move	$a1,$s7
    bal __glMgrRSSRegSet
    li	$a0,344
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a2,1
    lw	$a1,-26652($s3)
    bal __glMgrRSSRegSet
    li	$a0,345
    move	$a3,$zero
    lw	$a2,104($s4)
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    ld	$a1,16536($sp)
    li	$a0,70
    bal __glMgrRSSRegShadow
    or	$a1,$a1,$s5
    li	$a3,1
    lw	$a2,108($s4)
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    ld	$a1,16544($sp)
    li	$a0,71
    bal __glMgrRSSRegShadow
    or	$a1,$a1,$s5
    li	$a0,0xdb04
    sw	$a0,0($s1)
    lw	$t0,-27000($s3)
    li	$v0,0x8f08
    sw	$t0,0($s1)
    # Line 1569
    sw	$v0,0($s1)
    sw	$zero,0($s1)
    sw	$zero,0($s1)
    lw	$a7,0($s2)
    # Line 1579
    ld	$a2,16464($sp)
    # Line 1569
    andi	$a7,$a7,0x1
    bnez	$a7,.L0dae2b30
    # Line 1576
    addiu	$a6,$sp,0
.L0dae2d60:
    # Line 1569
    lw	$at,0($s2)
    andi	$at,$at,0x1
    beqz	$at,.L0dae2d60
    nop
    b	.L0dae2b30
    nop
.L0dae2d78:
    # Line 1585
    # lw $t9, -30444($gp) # &__glMgr_PackPixels
    ld	$a3,16528($sp)
    ld	$a1,16408($sp)
    jal	__glMgr_PackPixels
    addiu	$a0,$sp,0
    b	.L0dae2c00
    # Line 1588
    ld	$t0,16408($sp)
.L0dae2d94:
    # Line 1596
    move	$v0,$zero
    ld	$s0,16504($sp)
    ld	$s1,16456($sp)
    ld	$s2,16416($sp)
    ld	$s3,16520($sp)
    ld	$s4,16424($sp)
    ld	$s5,16496($sp)
    ld	$s6,16512($sp)
    ld	$ra,16448($sp)
    ld	$s7,16432($sp)
    ld	$s8,16440($sp)
    jr	$ra
    addiu	$sp,$sp,16624
.L0dae2dc8:
    # Line 1539
    li	$v0,1
    ld	$s0,16504($sp)
    ld	$s3,16520($sp)
    ld	$s5,16496($sp)
    ld	$s6,16512($sp)
    jr	$ra
    addiu	$sp,$sp,16624
.L0dae2de4:
    sd	$v0,16384($sp)
    sd	$a3,16392($sp)
    # Line 1546
    li	$s0,2
    # Line 1545
    li	$v1,1
    # Line 1546
    b	.L0dae2a14
    sd	$v1,16488($sp)
.L0dae2dfc:
    # Line 1556
    lui	$t0,0x1
    lw	$a7,-26652($s3)
    ori	$t0,$t0,0xc000
    nor	$t0,$t0,$zero
    and	$a7,$a7,$t0
    li	$t0,8
    andi	$at,$s0,0x7
    subu	$t0,$t0,$at
    andi	$t0,$t0,0x7
    andi	$t0,$t0,0x7
    sll	$t0,$t0,0xe
    or	$a7,$a7,$t0
    # Line 1557
    li	$t0,-16
    and	$a7,$a7,$t0
    # Line 1558
    b	.L0dae2a88
    # Line 1557
    sw	$a7,-26652($s3)
.L0dae2e3c:
    # Line 1560
    lui	$v1,0x1
    lw	$at,-26652($s3)
    ori	$v1,$v1,0xc000
    nor	$v1,$v1,$zero
    and	$at,$at,$v1
    li	$v1,8
    sll	$a7,$s0,0x1
    andi	$a7,$a7,0x7
    subu	$v1,$v1,$a7
    andi	$v1,$v1,0x7
    andi	$v1,$v1,0x7
    sll	$v1,$v1,0xe
    or	$at,$at,$v1
    # Line 1561
    li	$v1,-16
    and	$at,$at,$v1
    ori	$at,$at,0x1
    b	.L0dae2a88
    sw	$at,-26652($s3)
.end GetPixelsPackedPIO

# Function: GetPixelsBitmapPIO
# Declared: Line 1600 (Source lines: 1602-1672)
# Address: 0x0dae2e84 - 0x0dae32a8 (Size: 1060 bytes, Frame: 224)
.ent GetPixelsBitmapPIO
GetPixelsBitmapPIO:
    # Line 1611
    lw	$at,56($a1)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f2
    # Line 1602
    addiu	$sp,$sp,-16608
    # Line 1611
    cvt.s.l	$f2,$f2
    sd	$a0,16472($sp)
    sd	$a1,16464($sp)
    sd	$a2,16400($sp)
    lwc1	$f1,76($a1)
    sd	$s5,16496($sp)
    # Line 1602
    move	$s5,$a4
    # Line 1611
    mul.s	$f1,$f1,$f2
    sd	$s7,16488($sp)
    # Line 1602
    move	$s7,$a5
    sd	$s8,16504($sp)
    # Line 1611
    lwc1	$f0,_lit_41000000
    # Line 1602
    move	$s8,$a6
    # Line 1611
    lui	$t1,0x1
    c.lt.s	$f0,$f1
    sd	$s3,16512($sp)
    addu	$s3,$t1,$a0
    bc1t	.L0dae3270
    lw	$t0,-25272($s3)
    # Line 1623
    li	$v0,1
    beql	$s7,$v0,.L0dae328c
    sd	$s6,16448($sp)
    sd	$s6,16448($sp)
    sd	$ra,16456($sp)
    sd	$t0,16384($sp)
    sd	$a3,16392($sp)
    sd	$zero,16480($sp)
.L0dae2f04:
    # Line 1640
    move	$a2,$zero
    move	$a1,$zero
    li	$a0,12
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    # Line 1637
    lw	$v1,-26652($s3)
    lui	$s6,0xfffe
    ori	$s6,$s6,0x3fff
    and	$v1,$v1,$s6
    li	$a3,8
    andi	$a4,$s7,0x7
    subu	$a3,$a3,$a4
    andi	$a3,$a3,0x7
    andi	$a3,$a3,0x7
    sll	$a3,$a3,0xe
    or	$v1,$v1,$a3
    # Line 1638
    li	$a3,-16
    and	$v1,$v1,$a3
    # Line 1640
    bal __glMgrRSSRegSet
    # Line 1638
    sw	$v1,-26652($s3)
    # Line 1640
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a2,1
    move	$a1,$zero
    bal __glMgrRSSRegSet
    li	$a0,351
    sd	$s2,16416($sp)
    sd	$s4,16424($sp)
    sd	$s0,16432($sp)
    # Line 1641
    li	$at,-1
    addiu	$s8,$s8,-1
    beq	$s8,$at,.L0dae323c
    sd	$s1,16440($sp)
    la	$s4,SYMBOL_LOCATION
    lui	$s0,0x8
    lui	$s1,0x7
    addiu	$v0,$s7,7
    sd	$v0,16408($sp)
    ld	$v0,16392($sp)
    ori	$s1,$s1,0x4080
    lui	$at,0x1
    sll	$s2,$v0,0x10
    addu	$v0,$v0,$s7
    addiu	$v0,$v0,-1
    sll	$v0,$v0,0x10
    sd	$v0,16528($sp)
    sd	$s2,16520($sp)
    andi	$s2,$s7,0xffff
    or	$s2,$s2,$at
    ld	$at,16384($sp)
    sd	$s2,16536($sp)
    lui	$s2,0x7
    addu	$s0,$at,$s0
    b	.L0dae312c
    addu	$s2,$s2,$at
.L0dae2fd8:
    # Line 1647
    lw	$v1,-14984($s0)
    andi	$v1,$v1,0x100
    bnez	$v1,.L0dae2ff8
    nop
.L0dae2fe8:
    lw	$a7,-14984($s0)
    andi	$a7,$a7,0x100
    beqz	$a7,.L0dae2fe8
    nop
.L0dae2ff8:
    # Line 1651
    blez	$s7,.L0dae3078
    ld	$a7,16408($sp)
    sra	$a4,$a7,0x2
    srl	$a4,$a4,0x1d
    addu	$a4,$a4,$a7
    sra	$a4,$a4,0x3
    andi	$at,$a4,0x1
    beqz	$at,.L0dae3038
    sra	$v0,$a4,0x1
    # Line 1653
    lw	$at,-11840($s0)
    sw	$at,0($a3)
    lw	$a7,-15932($s0)
    # Line 1654
    addiu	$s6,$s6,-8
    # Line 1653
    addiu	$a3,$a3,8
    sw	$a7,-4($a3)
    sra	$v0,$a4,0x1
.L0dae3038:
    move	$a5,$s6
    beqz	$v0,.L0dae3078
    move	$a6,$a3
    move	$a4,$a5
    move	$a3,$a6
.L0dae304c:
    lw	$v0,-11840($s0)
    sw	$v0,0($a3)
    lw	$at,-15932($s0)
    sw	$at,4($a3)
    lw	$a7,-11840($s0)
    sw	$a7,8($a3)
    addiu	$a3,$a3,16
    lw	$v1,-15932($s0)
    # Line 1654
    addiu	$a4,$a4,-16
    bgtz	$a4,.L0dae304c
    # Line 1653
    sw	$v1,-4($a3)
.L0dae3078:
    ld	$a3,16472($sp)
    # Line 1654
    ld	$v1,16480($sp)
    lbu	$a4,1073($a3)
    beqz	$v1,.L0dae3220
    lw	$a3,1084($a3)
    # Line 1658
    # lw $t9, -30440($gp) # &__glMgr_PackBitmap
    li	$a2,1
    ld	$a1,16400($sp)
    jal	__glMgr_PackBitmap
    addiu	$a0,$sp,0
    # Line 1664
    ld	$at,16400($sp)
.L0dae30a4:
    ld	$v0,16464($sp)
    # Line 1665
    lw	$a7,-25272($s3)
    lui	$a2,0x7
    # Line 1664
    lw	$v0,152($v0)
    # Line 1665
    addu	$a2,$a2,$a7
    lw	$a7,0($a2)
    addiu	$s5,$s5,1
    # Line 1664
    addu	$at,$v0,$at
    # Line 1665
    andi	$a7,$a7,0x2
    bnez	$a7,.L0dae30e0
    sd	$at,16400($sp)
.L0dae30d0:
    lw	$at,0($a2)
    andi	$at,$at,0x2
    beqz	$at,.L0dae30d0
    nop
.L0dae30e0:
    # Line 1669
    move	$a2,$zero
    move	$a1,$zero
    li	$a0,12
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    lui	$v0,0xa
    ori	$v0,$v0,0x704
    # Line 1668
    sw	$v0,0($s1)
    # Line 1669
    bal __glMgrRSSRegSet
    # Line 1668
    sw	$zero,0($s1)
    # Line 1669
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a2,1
    move	$a1,$zero
    bal __glMgrRSSRegSet
    li	$a0,351
    # Line 1641
    addiu	$s8,$s8,-1
    li	$a7,0xda00
    li	$v1,-1
    beq	$s8,$v1,.L0dae323c
    # Line 1670
    sw	$a7,0($s1)
.L0dae312c:
    # Line 1643
    move	$s6,$s7
    # Line 1645
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a2,1
    li	$a1,1
    bal __glMgrRSSRegSet
    li	$a0,12
    # Line 1646
    li	$a3,1
    ld	$a1,16536($sp)
    li	$a0,339
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    li	$t2,-1793
    lw	$t1,-26652($s3)
    lui	$t0,0xfffe
    ori	$t0,$t0,0x3fff
    and	$t1,$t1,$t2
    and	$t0,$t0,$t1
    sw	$t0,-26652($s3)
    bal __glMgrRSSRegShadow
    lw	$a2,84($s4)
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    move	$a2,$zero
    ld	$a1,16536($sp)
    bal __glMgrRSSRegSet
    li	$a0,344
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a2,1
    lw	$a1,-26652($s3)
    bal __glMgrRSSRegSet
    li	$a0,345
    move	$a3,$zero
    lw	$a2,104($s4)
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    ld	$a1,16520($sp)
    li	$a0,70
    bal __glMgrRSSRegShadow
    or	$a1,$a1,$s5
    li	$a3,1
    lw	$a2,108($s4)
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    ld	$a1,16528($sp)
    li	$a0,71
    bal __glMgrRSSRegShadow
    or	$a1,$a1,$s5
    li	$a2,0xdb04
    sw	$a2,0($s1)
    lw	$at,-27000($s3)
    li	$a0,0x8f08
    sw	$at,0($s1)
    # Line 1647
    sw	$a0,0($s1)
    sw	$zero,0($s1)
    sw	$zero,0($s1)
    lw	$a7,0($s2)
    andi	$a7,$a7,0x1
    bnez	$a7,.L0dae2fd8
    # Line 1651
    addiu	$a3,$sp,0
.L0dae3208:
    # Line 1647
    lw	$v0,0($s2)
    andi	$v0,$v0,0x1
    beqz	$v0,.L0dae3208
    nop
    b	.L0dae2fd8
    nop
.L0dae3220:
    # Line 1661
    # lw $t9, -30440($gp) # &__glMgr_PackBitmap
    move	$a2,$s7
    ld	$a1,16400($sp)
    jal	__glMgr_PackBitmap
    addiu	$a0,$sp,0
    b	.L0dae30a4
    # Line 1664
    ld	$at,16400($sp)
.L0dae323c:
    # Line 1672
    move	$v0,$zero
    ld	$s0,16432($sp)
    ld	$s1,16440($sp)
    ld	$s2,16416($sp)
    ld	$s3,16512($sp)
    ld	$s4,16424($sp)
    ld	$s5,16496($sp)
    ld	$s6,16448($sp)
    ld	$ra,16456($sp)
    ld	$s7,16488($sp)
    ld	$s8,16504($sp)
    jr	$ra
    addiu	$sp,$sp,16608
.L0dae3270:
    # Line 1623
    li	$v0,1
    ld	$s3,16512($sp)
    ld	$s5,16496($sp)
    ld	$s7,16488($sp)
    ld	$s8,16504($sp)
    jr	$ra
    addiu	$sp,$sp,16608
.L0dae328c:
    sd	$ra,16456($sp)
    sd	$t0,16384($sp)
    sd	$a3,16392($sp)
    # Line 1630
    li	$s7,2
    # Line 1629
    li	$v1,1
    # Line 1630
    b	.L0dae2f04
    sd	$v1,16480($sp)
.end GetPixelsBitmapPIO

# Function: GetPixelsLuminancePIO
# Declared: Line 1676 (Source lines: 1679-1765)
# Address: 0x0dae32a8 - 0x0dae389c (Size: 1524 bytes, Frame: 128)
.ent GetPixelsLuminancePIO
GetPixelsLuminancePIO:
    # Line 1687
    lw	$at,56($a1)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f0
    nop
    cvt.s.l	$f0,$f0
    # Line 1679
    move	$t2,$a2
    addiu	$sp,$sp,-256
    # Line 1687
    lwc1	$f4,76($a1)
    sd	$s4,152($sp)
    # Line 1679
    move	$s4,$a3
    # Line 1687
    mul.s	$f4,$f4,$f0
    sd	$s0,144($sp)
    # Line 1679
    move	$s0,$a4
    sd	$a5,88($sp)
    # Line 1687
    lwc1	$f0,_lit_41000000
    sd	$s7,136($sp)
    sd	$s3,160($sp)
    c.lt.s	$f0,$f4
    lui	$s3,0x1
    addu	$s7,$s3,$a0
    bc1t	.L0dae3830
    lw	$t1,-25272($s7)
    # Line 1699
    ld	$v0,88($sp)
    li	$v1,1
    beq	$v0,$v1,.L0dae3874
    # Line 1707
    ldc1	$f2,_lit8_3fec000000000000
    sd	$zero,72($sp)
.L0dae3318:
    ld	$a1,88($sp)
    # Line 1711
    addu	$a1,$s4,$a1
    beqz	$a7,.L0dae384c
    addiu	$a1,$a1,-1
    sd	$ra,80($sp)
    sd	$a6,176($sp)
    ld	$at,88($sp)
    sd	$t1,24($sp)
    sd	$a1,16($sp)
    # Line 1712
    sll	$at,$at,0x4
    sd	$at,112($sp)
.L0dae3344:
    sd	$t2,104($sp)
    # Line 1715
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    move	$a2,$zero
    move	$a1,$zero
    bal __glMgrRSSRegSet
    li	$a0,12
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a2,1
    move	$a1,$zero
    bal __glMgrRSSRegSet
    li	$a0,351
    sd	$s8,32($sp)
    sd	$s2,40($sp)
    sd	$s6,48($sp)
    ld	$a3,176($sp)
    sd	$s1,56($sp)
    sd	$s5,64($sp)
    # Line 1716
    beqz	$a3,.L0dae37fc
    addiu	$a2,$a3,-1
    sd	$s8,32($sp)
    li	$a4,0xda00
    li	$a1,-1
    lw	$s2,0($sp)
    lui	$s1,0x8
    lui	$s5,0x7
    ld	$at,16($sp)
    ori	$s5,$s5,0x4080
    sll	$s6,$s4,0x10
    sll	$at,$at,0x10
    sd	$at,120($sp)
    ld	$at,24($sp)
    sd	$s6,128($sp)
    lui	$s6,0x7
    addu	$s1,$at,$s1
    b	.L0dae3534
    addu	$s6,$s6,$at
.L0dae33d4:
    li	$a1,64
    # Line 1745
    subu	$a1,$a1,$t1
    sllv	$a1,$t8,$a1
.L0dae33e0:
    # Line 1746
    lw	$v1,4($s3)
    lw	$v0,-11840($s1)
    nor	$a0,$a6,$zero
    and	$v1,$v1,$a0
    and	$v0,$v0,$a6
    or	$v0,$v0,$v1
    sw	$v0,0($s3)
    lw	$v0,8($s3)
    lw	$at,-15932($s1)
    nor	$v1,$a1,$zero
    and	$v0,$v0,$v1
    and	$at,$at,$a1
    or	$at,$at,$v0
    sw	$at,4($s3)
.L0dae3418:
    ld	$v1,72($sp)
    # Line 1750
    move	$a1,$a2
    andi	$t1,$s2,0x3
    # Line 1746
    beqz	$v1,.L0dae34ac
    # Line 1749
    addiu	$a6,$sp,8
    # Line 1751
    move	$a7,$zero
    blez	$s2,.L0dae34ac
    move	$t0,$s2
    beqzl	$t1,.L0dae3460
    move	$t1,$a7
.L0dae3440:
    addiu	$a7,$a7,1
    # Line 1752
    addiu	$a1,$a1,1
    addiu	$a6,$a6,1
    lbu	$a0,-1($a6)
    addi	$t1,$t1,-1
    bnez	$t1,.L0dae3440
    sb	$a0,-1($a1)
    move	$t1,$a7
.L0dae3460:
    move	$t2,$a1
    sra	$at,$t0,0x2
    beqz	$at,.L0dae34ac
    move	$t3,$a6
    move	$a6,$t1
    move	$a7,$t2
    move	$a1,$t3
.L0dae347c:
    lbu	$at,0($a1)
    sb	$at,0($a7)
    lbu	$a0,1($a1)
    sb	$a0,1($a7)
    lbu	$v1,2($a1)
    addiu	$a7,$a7,4
    sb	$v1,-2($a7)
    addiu	$a1,$a1,4
    lbu	$v0,-1($a1)
    # Line 1751
    addiu	$a6,$a6,4
    bne	$a6,$s2,.L0dae347c
    # Line 1752
    sb	$v0,-1($a7)
.L0dae34ac:
    # Line 1755
    lw	$a1,-25272($s7)
    addu	$a1,$a4,$a1
    lw	$v0,0($a1)
    addiu	$s0,$s0,1
    # Line 1754
    ld	$v1,112($sp)
    # Line 1755
    andi	$v0,$v0,0x2
    bnez	$v0,.L0dae34e0
    # Line 1754
    addu	$a2,$v1,$a2
.L0dae34cc:
    # Line 1755
    lw	$at,0($a1)
    andi	$at,$at,0x2
    beqz	$at,.L0dae34cc
    nop
    sd	$a2,104($sp)
.L0dae34e0:
    sd	$a2,104($sp)
    # Line 1759
    move	$a2,$zero
    move	$a1,$zero
    li	$a0,12
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    lui	$v0,0xa
    ori	$v0,$v0,0x704
    # Line 1758
    sw	$v0,0($s5)
    # Line 1759
    bal __glMgrRSSRegSet
    # Line 1758
    sw	$zero,0($s5)
    # Line 1759
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a2,1
    move	$a1,$zero
    bal __glMgrRSSRegSet
    li	$a0,351
    # Line 1716
    ld	$a2,184($sp)
    li	$a4,0xda00
    li	$a1,-1
    addiu	$a2,$a2,-1
    beq	$a2,$a1,.L0dae37fc
    # Line 1760
    sw	$a4,0($s5)
.L0dae3534:
    ld	$v1,72($sp)
    ld	$s3,104($sp)
    # Line 1716
    beqz	$v1,.L0dae37f4
    # Line 1719
    li	$a0,2
    # Line 1718
    addiu	$s3,$sp,8
    sd	$a2,184($sp)
    sd	$a0,88($sp)
.L0dae3550:
    # Line 1728
    li	$a2,1
    li	$a1,1
    li	$a0,12
    li	$t8,-4
    # Line 1723
    andi	$s8,$s3,0x3
    # Line 1724
    ld	$s4,112($sp)
    # Line 1726
    and	$s3,$t8,$s3
    # Line 1728
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    # Line 1724
    addu	$s4,$s4,$s8
    # Line 1725
    andi	$a3,$s4,0x7
    # Line 1728
    bal __glMgrRSSRegSet
    sd	$a3,96($sp)
    # Line 1729
    li	$a3,1
    li	$a0,339
    la	$a2,SYMBOL_LOCATION
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    lui	$a4,0xfffe
    ld	$a1,88($sp)
    ori	$a4,$a4,0x3fff
    lui	$a5,0x1
    andi	$a1,$a1,0xffff
    or	$a1,$a1,$a5
    lw	$a5,-26652($s7)
    sd	$a1,168($sp)
    li	$a6,-1793
    and	$a5,$a5,$a6
    andi	$a6,$s8,0x7
    sll	$a6,$a6,0x8
    or	$a5,$a5,$a6
    and	$a4,$a4,$a5
    sw	$a4,-26652($s7)
    bal __glMgrRSSRegShadow
    lw	$a2,84($a2)
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    move	$a2,$zero
    ld	$a1,168($sp)
    bal __glMgrRSSRegSet
    li	$a0,344
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a2,1
    lw	$a1,-26652($s7)
    bal __glMgrRSSRegSet
    li	$a0,345
    move	$a3,$zero
    li	$a0,70
    la	$a2,SYMBOL_LOCATION
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    ld	$a1,128($sp)
    lw	$a2,104($a2)
    bal __glMgrRSSRegShadow
    or	$a1,$a1,$s0
    li	$a3,1
    li	$a0,71
    la	$a2,SYMBOL_LOCATION
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    ld	$a1,120($sp)
    lw	$a2,108($a2)
    bal __glMgrRSSRegShadow
    or	$a1,$a1,$s0
    li	$a5,0xdb04
    sw	$a5,0($s5)
    lw	$v0,-27000($s7)
    lui	$a4,0x7
    li	$a3,0x8f08
    sw	$v0,0($s5)
    # Line 1730
    sw	$a3,0($s5)
    sw	$zero,0($s5)
    sw	$zero,0($s5)
    lw	$at,0($s6)
    li	$t8,-1
    ld	$a2,104($sp)
    andi	$at,$at,0x1
    bnez	$at,.L0dae3688
    ld	$a1,96($sp)
.L0dae3678:
    lw	$v1,0($s6)
    andi	$v1,$v1,0x1
    beqz	$v1,.L0dae3678
    nop
.L0dae3688:
    lw	$a0,-14984($s1)
    andi	$a0,$a0,0x100
    bnez	$a0,.L0dae36ac
    # Line 1735
    ld	$v0,112($sp)
.L0dae3698:
    # Line 1730
    lw	$at,-14984($s1)
    andi	$at,$at,0x100
    beqz	$at,.L0dae3698
    nop
    # Line 1735
    ld	$v0,112($sp)
.L0dae36ac:
    sll	$t1,$a1,0x3
    # Line 1730
    beqz	$s8,.L0dae3744
    # Line 1735
    sll	$t0,$s8,0x3
    li	$v1,8
    li	$a6,-1
    srlv	$t0,$t8,$t0
    subu	$v1,$v1,$s8
    slt	$v0,$v0,$v1
    beqz	$v0,.L0dae3704
    move	$a7,$t0
    slti	$a0,$a1,5
    beqz	$a0,.L0dae36f4
    move	$a6,$zero
    li	$a7,32
    subu	$a7,$a7,$t1
    sllv	$a7,$t8,$a7
    b	.L0dae3700
    and	$a7,$a7,$t0
.L0dae36f4:
    li	$a6,64
    subu	$a6,$a6,$t1
    sllv	$a6,$t8,$a6
.L0dae3700:
    move	$a1,$zero
.L0dae3704:
    # Line 1738
    addiu	$s4,$s4,-8
    # Line 1737
    lw	$v1,4($s3)
    lw	$v0,-11840($s1)
    nor	$a0,$a7,$zero
    and	$v1,$v1,$a0
    and	$v0,$v0,$a7
    or	$v0,$v0,$v1
    sw	$v0,0($s3)
    addiu	$s3,$s3,8
    lw	$v0,0($s3)
    lw	$at,-15932($s1)
    nor	$v1,$a6,$zero
    and	$v0,$v0,$v1
    and	$at,$at,$a6
    or	$at,$at,$v0
    sw	$at,-4($s3)
.L0dae3744:
    # Line 1738
    slti	$v1,$s4,8
    bnez	$v1,.L0dae37cc
    sra	$a6,$s4,0x2
    srl	$a6,$a6,0x1d
    addu	$a6,$a6,$s4
    sra	$a6,$a6,0x3
    andi	$a0,$a6,0x1
    beqz	$a0,.L0dae3784
    move	$a7,$s4
    # Line 1741
    lw	$v0,-11840($s1)
    sw	$v0,0($s3)
    lw	$at,-15932($s1)
    # Line 1742
    addiu	$s4,$s4,-8
    # Line 1741
    addiu	$s3,$s3,8
    sw	$at,-4($s3)
    move	$a7,$s4
.L0dae3784:
    sra	$v1,$a6,0x1
    beqz	$v1,.L0dae37cc
    move	$t0,$s3
    move	$t1,$a7
    move	$a6,$t0
.L0dae3798:
    lw	$a0,-11840($s1)
    sw	$a0,0($a6)
    lw	$v1,-15932($s1)
    sw	$v1,4($a6)
    lw	$v0,-11840($s1)
    addiu	$a6,$a6,16
    sw	$v0,-8($a6)
    # Line 1742
    addiu	$t1,$t1,-16
    # Line 1741
    lw	$a0,-15932($s1)
    # Line 1742
    slti	$at,$t1,8
    beqz	$at,.L0dae3798
    # Line 1741
    sw	$a0,-4($a6)
    move	$s3,$a6
.L0dae37cc:
    # Line 1742
    beqz	$a1,.L0dae3418
    # Line 1745
    sll	$t1,$a1,0x3
    slti	$a6,$a1,5
    beqz	$a6,.L0dae33d4
    li	$a6,-1
    move	$a1,$zero
    li	$a6,32
    subu	$a6,$a6,$t1
    b	.L0dae33e0
    sllv	$a6,$t8,$a6
.L0dae37f4:
    b	.L0dae3550
    sd	$a2,184($sp)
.L0dae37fc:
    # Line 1765
    move	$v0,$zero
    ld	$s0,144($sp)
    ld	$s1,56($sp)
    ld	$s2,40($sp)
    ld	$s3,160($sp)
    ld	$s4,152($sp)
    ld	$s5,64($sp)
    ld	$s6,48($sp)
    ld	$ra,80($sp)
    ld	$s7,136($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0dae3830:
    # Line 1699
    li	$v0,1
    ld	$s0,144($sp)
    ld	$s3,160($sp)
    ld	$s4,152($sp)
    ld	$s7,136($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0dae384c:
    sd	$ra,80($sp)
    sd	$a6,176($sp)
    ld	$v0,88($sp)
    sd	$t1,24($sp)
    sd	$a1,16($sp)
    # Line 1712
    sll	$at,$v0,0x2
    subu	$at,$at,$v0
    sll	$at,$at,0x2
    b	.L0dae3344
    sd	$at,112($sp)
.L0dae3874:
    # Line 1707
    cvt.d.s	$f1,$f4
    add.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    # Line 1705
    li	$a0,1
    # Line 1706
    li	$at,2
    sd	$at,88($sp)
    # Line 1707
    mfc1	$v1,$f1
    sd	$a0,72($sp)
    b	.L0dae3318
    sw	$v1,0($sp)
.end GetPixelsLuminancePIO

# Function: __glMgrRE4DMARd
# Declared: Line 1769 (Source lines: 1771-1812)
# Address: 0x0dae389c - 0x0dae3b44 (Size: 680 bytes, Frame: 144)
.globl __glMgrRE4DMARd
.ent __glMgrRE4DMARd
__glMgrRE4DMARd:
    # Line 1771
    addiu	$sp,$sp,-144
    sd	$a6,16($sp)
    sd	$a5,8($sp)
    sd	$a4,40($sp)
    sd	$a3,32($sp)
    sd	$a2,24($sp)
    sd	$s0,56($sp)
    sd	$gp,64($sp)
    lui	$at,0x12
    addiu	$at,$at,-20996
    addu	$gp,$t9,$at
    # Line 1772
    # lw $t9, -32124($gp) # &__glMgrim_Finish
    # Line 1771
    move	$s0,$a1
    sd	$ra,48($sp)
    # Line 1772
    jal	__glMgrim_Finish
    sd	$a0,0($sp)
    lw	$a0,40($s0)
    # Line 1786
    li	$a1,0x8034
    # Line 1772
    li	$v0,6409
    beq	$a0,$v0,.L0dae3ac8
    # Line 1777
    li	$v1,6410
    beq	$a0,$v1,.L0dae3b08
    ld	$a0,0($sp)
    # Line 1786
    lw	$a0,52($s0)
    sltiu	$a7,$a0,5126
    bnez	$a7,.L0dae3954
    li	$v1,5120
    sltiu	$at,$a0,5127
    bnez	$at,.L0dae3a18
    sltu	$v0,$a0,$a1
    bnez	$v0,.L0dae39c8
    sltu	$v1,$a1,$a0
    bnez	$v1,.L0dae3a84
    li	$a1,0x8036
.L0dae3924:
    ld	$a0,0($sp)
.L0dae3928:
    # Line 1805
    move	$a1,$s0
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    # lw $t9, -32716($gp) # &sub_0dae0000
    ld	$a4,40($sp)
    ld	$a5,8($sp)
    addiu	$t9,$t9,1068
    bal PackFloatData
    ld	$a6,16($sp)
    b	.L0dae3994
    # Line 1812
    ld	$ra,48($sp)
.L0dae3954:
    # Line 1786
    sltiu	$at,$a0,5123
    bnez	$at,.L0dae39a4
    sltiu	$v0,$a0,5124
    beqz	$v0,.L0dae3a00
    sltiu	$a7,$a0,5125
.L0dae3968:
    ld	$a0,0($sp)
.L0dae396c:
    # Line 1793
    move	$a1,$s0
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    # lw $t9, -32716($gp) # &sub_0dae0000
    ld	$a4,40($sp)
    ld	$a5,8($sp)
    addiu	$t9,$t9,-216
    bal PackFloatData
    ld	$a6,16($sp)
    # Line 1812
    ld	$ra,48($sp)
.L0dae3994:
    ld	$gp,64($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dae39a4:
    # Line 1786
    sltiu	$at,$a0,5121
    bnez	$at,.L0dae39f0
    sltiu	$v0,$a0,5122
    bnez	$v0,.L0dae3968
    li	$v1,5122
    bne	$a0,$v1,.L0dae3994
    # Line 1812
    ld	$ra,48($sp)
    b	.L0dae396c
    ld	$a0,0($sp)
.L0dae39c8:
    # Line 1786
    li	$a1,0x8032
    sltu	$a7,$a0,$a1
    bnez	$a7,.L0dae3a48
    sltu	$at,$a1,$a0
    beqz	$at,.L0dae3924
    li	$v0,0x8033
    bne	$a0,$v0,.L0dae3994
    # Line 1812
    ld	$ra,48($sp)
    b	.L0dae3928
    ld	$a0,0($sp)
.L0dae39f0:
    # Line 1786
    bne	$a0,$v1,.L0dae3994
    # Line 1812
    ld	$ra,48($sp)
    b	.L0dae396c
    ld	$a0,0($sp)
.L0dae3a00:
    # Line 1786
    bnez	$a7,.L0dae3aa0
    sltiu	$at,$a0,5126
    beqz	$at,.L0dae3994
    # Line 1812
    ld	$ra,48($sp)
    b	.L0dae396c
    ld	$a0,0($sp)
.L0dae3a18:
    ld	$a0,0($sp)
    # Line 1797
    move	$a1,$s0
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    # lw $t9, -32716($gp) # &sub_0dae0000
    ld	$a4,40($sp)
    ld	$a5,8($sp)
    addiu	$t9,$t9,472
    bal PackFloatData
    ld	$a6,16($sp)
    b	.L0dae3994
    # Line 1812
    ld	$ra,48($sp)
.L0dae3a48:
    # Line 1786
    li	$at,6656
    bne	$a0,$at,.L0dae3994
    # Line 1812
    ld	$ra,48($sp)
    ld	$a0,0($sp)
    # Line 1809
    move	$a1,$s0
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    # lw $t9, -32716($gp) # &sub_0dae0000
    ld	$a4,40($sp)
    ld	$a5,8($sp)
    addiu	$t9,$t9,1076
    bal PackFloatData
    ld	$a6,16($sp)
    b	.L0dae3994
    # Line 1812
    ld	$ra,48($sp)
.L0dae3a84:
    # Line 1786
    sltu	$at,$a0,$a1
    bnez	$at,.L0dae3ab4
    sltu	$v0,$a1,$a0
    bnez	$v0,.L0dae3994
    # Line 1812
    ld	$ra,48($sp)
    b	.L0dae3928
    ld	$a0,0($sp)
.L0dae3aa0:
    # Line 1786
    li	$v1,5124
    bne	$a0,$v1,.L0dae3994
    # Line 1812
    ld	$ra,48($sp)
    b	.L0dae396c
    ld	$a0,0($sp)
.L0dae3ab4:
    # Line 1786
    li	$a7,0x8035
    bne	$a0,$a7,.L0dae3994
    # Line 1812
    ld	$ra,48($sp)
    b	.L0dae3928
    ld	$a0,0($sp)
.L0dae3ac8:
    ld	$a0,0($sp)
    # Line 1775
    move	$a1,$s0
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    # lw $t9, -32716($gp) # &sub_0dae0000
    ld	$a5,8($sp)
    ld	$a6,16($sp)
    addiu	$t9,$t9,1084
    bal PackFloatData
    move	$a7,$zero
    # Line 1777
    ld	$ra,48($sp)
    ld	$gp,64($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dae3b08:
    # Line 1781
    move	$a1,$s0
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    # lw $t9, -32716($gp) # &sub_0dae0000
    ld	$a5,8($sp)
    ld	$a6,16($sp)
    addiu	$t9,$t9,1084
    bal PackFloatData
    li	$a7,1
    # Line 1783
    ld	$ra,48($sp)
    ld	$gp,64($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glMgrRE4DMARd

# Function: __glMgrRE4PIORd
# Declared: Line 1815 (Source lines: 1817-1877)
# Address: 0x0dae3b44 - 0x0dae3f0c (Size: 968 bytes, Frame: 144)
.globl __glMgrRE4PIORd
.ent __glMgrRE4PIORd
__glMgrRE4PIORd:
    # Line 1817
    addiu	$sp,$sp,-144
    sd	$s1,56($sp)
    # Line 1819
    move	$s1,$zero
    sd	$a6,16($sp)
    sd	$a5,8($sp)
    sd	$a4,32($sp)
    sd	$a3,24($sp)
    sd	$a2,0($sp)
    sd	$s0,72($sp)
    # Line 1817
    move	$s0,$a1
    sd	$gp,48($sp)
    lui	$at,0x12
    addiu	$at,$at,-21676
    addu	$gp,$t9,$at
    # Line 1821
    # lw $t9, -32124($gp) # &__glMgrim_Finish
    sd	$s2,40($sp)
    sd	$ra,64($sp)
    jal	__glMgrim_Finish
    # Line 1817
    move	$s2,$a0
    # Line 1821
    lw	$v0,40($s0)
    # Line 1833
    li	$a0,0x8034
    # Line 1821
    li	$v1,6409
    beq	$v0,$v1,.L0dae3e50
    # Line 1825
    li	$a7,6410
    beql	$v0,$a7,.L0dae3e98
    # Line 1829
    move	$a0,$s2
    # Line 1833
    lw	$v0,52($s0)
    sltiu	$t0,$v0,5126
    bnez	$t0,.L0dae3c14
    sltiu	$at,$v0,5127
    bnez	$at,.L0dae3c60
    sltu	$v1,$v0,$a0
    bnez	$v1,.L0dae3d50
    sltu	$a7,$a0,$v0
    beqz	$a7,.L0dae3be4
    li	$a0,0x8036
    sltu	$t0,$v0,$a0
    bnez	$t0,.L0dae3e0c
    sltu	$at,$a0,$v0
    bnez	$at,.L0dae3c94
.L0dae3be4:
    # Line 1870
    move	$a0,$s2
.L0dae3be8:
    move	$a1,$s0
    ld	$a2,16($sp)
    ld	$a3,0($sp)
    # lw $t9, -32716($gp) # &sub_0dae0000
    ld	$a4,24($sp)
    ld	$a5,32($sp)
    addiu	$t9,$t9,10648
    bal PackFloatData
    ld	$a6,8($sp)
    # Line 1871
    b	.L0dae3c94
    # Line 1870
    move	$s1,$v0
.L0dae3c14:
    # Line 1833
    sltiu	$at,$v0,5123
    bnez	$at,.L0dae3cb4
    sltiu	$v1,$v0,5124
    beqz	$v1,.L0dae3d08
    sltiu	$v1,$v0,5125
    # Line 1841
    lbu	$a7,1072($s2)
.L0dae3c2c:
    beqz	$a7,.L0dae3e20
    # Line 1842
    move	$a0,$s2
    move	$a1,$s0
    ld	$a2,16($sp)
    ld	$a3,0($sp)
    # lw $t9, -32716($gp) # &sub_0dae0000
    ld	$a4,24($sp)
    ld	$a5,32($sp)
    addiu	$t9,$t9,3200
    bal PackFloatData
    ld	$a6,8($sp)
    b	.L0dae3c94
    move	$s1,$v0
.L0dae3c60:
    # Line 1858
    lbu	$at,1072($s2)
    beqz	$at,.L0dae3ddc
    # Line 1859
    move	$a0,$s2
    move	$a1,$s0
    ld	$a2,16($sp)
    ld	$a3,0($sp)
    # lw $t9, -32716($gp) # &sub_0dae0000
    ld	$a4,24($sp)
    ld	$a5,32($sp)
    addiu	$t9,$t9,6656
    bal PackFloatData
    ld	$a6,8($sp)
    move	$s1,$v0
.L0dae3c94:
    ld	$gp,48($sp)
.L0dae3c98:
    # Line 1877
    ld	$s0,72($sp)
    andi	$v0,$s1,0xff
    ld	$ra,64($sp)
    ld	$s1,56($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dae3cb4:
    # Line 1833
    sltiu	$at,$v0,5121
    bnez	$at,.L0dae3cf4
    sltiu	$v1,$v0,5122
    beqz	$v1,.L0dae3d78
    # Line 1836
    move	$a0,$s2
.L0dae3cc8:
    move	$a1,$s0
    ld	$a2,16($sp)
    ld	$a3,0($sp)
    # lw $t9, -32716($gp) # &sub_0dae0000
    ld	$a4,24($sp)
    ld	$a5,32($sp)
    addiu	$t9,$t9,1672
    bal PackFloatData
    ld	$a6,8($sp)
    # Line 1837
    b	.L0dae3c94
    # Line 1836
    move	$s1,$v0
.L0dae3cf4:
    # Line 1833
    li	$at,5120
    bnel	$v0,$at,.L0dae3c98
    ld	$gp,48($sp)
    b	.L0dae3cc8
    # Line 1836
    move	$a0,$s2
.L0dae3d08:
    # Line 1833
    bnez	$v1,.L0dae3d8c
    sltiu	$a7,$v0,5126
    beqzl	$a7,.L0dae3c98
    ld	$gp,48($sp)
    # Line 1850
    lbu	$t0,1072($s2)
.L0dae3d1c:
    beqz	$t0,.L0dae3edc
    # Line 1851
    move	$a0,$s2
    move	$a1,$s0
    ld	$a2,16($sp)
    ld	$a3,0($sp)
    # lw $t9, -32716($gp) # &sub_0dae0000
    ld	$a4,24($sp)
    ld	$a5,32($sp)
    addiu	$t9,$t9,4940
    bal PackFloatData
    ld	$a6,8($sp)
    b	.L0dae3c94
    move	$s1,$v0
.L0dae3d50:
    # Line 1833
    li	$a0,0x8032
    sltu	$at,$v0,$a0
    bnez	$at,.L0dae3da0
    sltu	$v1,$a0,$v0
    beqz	$v1,.L0dae3be4
    li	$a7,0x8033
    bnel	$v0,$a7,.L0dae3c98
    ld	$gp,48($sp)
    b	.L0dae3be8
    # Line 1870
    move	$a0,$s2
.L0dae3d78:
    # Line 1833
    li	$t0,5122
    bnel	$v0,$t0,.L0dae3c98
    ld	$gp,48($sp)
    b	.L0dae3c2c
    # Line 1841
    lbu	$a7,1072($s2)
.L0dae3d8c:
    # Line 1833
    li	$at,5124
    bnel	$v0,$at,.L0dae3c98
    ld	$gp,48($sp)
    b	.L0dae3d1c
    # Line 1850
    lbu	$t0,1072($s2)
.L0dae3da0:
    # Line 1833
    li	$v1,6656
    bnel	$v0,$v1,.L0dae3c98
    ld	$gp,48($sp)
    # Line 1874
    move	$a0,$s2
    move	$a1,$s0
    ld	$a2,16($sp)
    ld	$a3,0($sp)
    # lw $t9, -32716($gp) # &sub_0dae0000
    ld	$a4,24($sp)
    ld	$a5,32($sp)
    addiu	$t9,$t9,11908
    bal PackFloatData
    ld	$a6,8($sp)
    b	.L0dae3c94
    move	$s1,$v0
.L0dae3ddc:
    # Line 1861
    move	$a0,$s2
    move	$a1,$s0
    ld	$a2,16($sp)
    ld	$a3,0($sp)
    # lw $t9, -32716($gp) # &sub_0dae0000
    ld	$a4,24($sp)
    ld	$a5,32($sp)
    addiu	$t9,$t9,8668
    bal PackFloatData
    ld	$a6,8($sp)
    b	.L0dae3c94
    move	$s1,$v0
.L0dae3e0c:
    # Line 1833
    li	$at,0x8035
    bnel	$v0,$at,.L0dae3c98
    ld	$gp,48($sp)
    b	.L0dae3be8
    # Line 1870
    move	$a0,$s2
.L0dae3e20:
    # Line 1844
    move	$a0,$s2
    move	$a1,$s0
    ld	$a2,16($sp)
    ld	$a3,0($sp)
    # lw $t9, -32716($gp) # &sub_0dae0000
    ld	$a4,24($sp)
    ld	$a5,32($sp)
    addiu	$t9,$t9,1672
    bal PackFloatData
    ld	$a6,8($sp)
    b	.L0dae3c94
    move	$s1,$v0
.L0dae3e50:
    # Line 1825
    move	$a0,$s2
    move	$a1,$s0
    ld	$a2,16($sp)
    ld	$a3,0($sp)
    ld	$a4,24($sp)
    # lw $t9, -32716($gp) # &sub_0dae0000
    ld	$a5,32($sp)
    ld	$a6,8($sp)
    addiu	$t9,$t9,12968
    bal PackFloatData
    move	$a7,$zero
    ld	$gp,48($sp)
    ld	$s0,72($sp)
    ld	$ra,64($sp)
    ld	$s1,56($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dae3e98:
    # Line 1829
    move	$a1,$s0
    ld	$a2,16($sp)
    ld	$a3,0($sp)
    ld	$a4,24($sp)
    # lw $t9, -32716($gp) # &sub_0dae0000
    ld	$a5,32($sp)
    ld	$a6,8($sp)
    addiu	$t9,$t9,12968
    bal PackFloatData
    li	$a7,1
    ld	$gp,48($sp)
    ld	$s0,72($sp)
    ld	$ra,64($sp)
    ld	$s1,56($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dae3edc:
    # Line 1853
    move	$a0,$s2
    move	$a1,$s0
    ld	$a2,16($sp)
    ld	$a3,0($sp)
    # lw $t9, -32716($gp) # &sub_0dae0000
    ld	$a4,24($sp)
    ld	$a5,32($sp)
    addiu	$t9,$t9,1672
    bal PackFloatData
    ld	$a6,8($sp)
    b	.L0dae3c94
    move	$s1,$v0
.end __glMgrRE4PIORd

# Function: __glMgr_AltWriteDMAHQSetup
# Declared: Line 1888 (Source lines: 1892-1953)
# Address: 0x0dae3f0c - 0x0dae4128 (Size: 540 bytes, Frame: 224)
.globl __glMgr_AltWriteDMAHQSetup
.ent __glMgr_AltWriteDMAHQSetup
__glMgr_AltWriteDMAHQSetup:
    # Line 1892
    move	$t3,$a1
    # Line 1894
    move	$t2,$a5
    # Line 1893
    move	$t1,$a2
    # Line 1894
    andi	$at,$a2,0x7
    # Line 1892
    addiu	$sp,$sp,-96
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$s1,8($sp)
    sd	$gp,16($sp)
    lui	$v0,0x12
    addiu	$v0,$v0,-22644
    # Line 1894
    beqz	$at,.L0dae40b8
    # Line 1892
    addu	$gp,$t9,$v0
.L0dae3f40:
    # Line 1914
    li	$t0,0xf200
    lui	$at,0x7
    lui	$s1,0x7
    lui	$a0,0x1
    addu	$t8,$a0,$s0
    lw	$t8,-25272($t8)
    ori	$s1,$s1,0x4080
    sw	$t0,0($s1)
    addu	$t8,$t8,$at
    lw	$v1,0($t8)
    andi	$v1,$v1,0x1
    bnez	$v1,.L0dae3f8c
    # Line 1946
    lw	$a0,100($sp)
.L0dae3f74:
    # Line 1914
    lw	$at,0($t8)
    andi	$at,$at,0x1
    beqz	$at,.L0dae3f74
    nop
    sd	$ra,24($sp)
    # Line 1946
    lw	$a0,100($sp)
.L0dae3f8c:
    lui	$a1,0xe
    ori	$a1,$a1,0x400
    sll	$a0,$a0,0x1
    ori	$a0,$a0,0xb1
    # Line 1922
    sll	$a5,$a5,0x10
    andi	$v1,$a4,0xffff
    or	$a5,$v1,$a5
    # Line 1921
    lui	$a4,0xa
    ori	$a4,$a4,0x304
    # Line 1919
    lui	$t0,0xa
    ori	$t0,$t0,0x204
    sw	$t0,0($s1)
    # Line 1920
    sw	$a2,0($s1)
    # Line 1921
    sw	$a4,0($s1)
    # Line 1923
    lui	$a4,0xa
    # Line 1922
    sw	$a5,0($s1)
    # Line 1923
    ori	$a4,$a4,0x404
    sw	$a4,0($s1)
    # Line 1944
    lui	$a4,0x8
    ori	$a4,$a4,0xb04
    # Line 1942
    lui	$a5,0x8
    ori	$a5,$a5,0x804
    # Line 1925
    lui	$a2,0xa
    ori	$a2,$a2,0x604
    # Line 1924
    sw	$a6,0($s1)
    # Line 1925
    sw	$a2,0($s1)
    # Line 1946
    la	$a2,__glMgrim_pipe
    sd	$ra,24($sp)
    # Line 1933
    lui	$ra,0x8000
    # Line 1934
    lui	$t9,0x8
    ori	$t9,$t9,0x404
    # Line 1936
    lui	$t0,0x8
    ori	$t0,$t0,0x504
    # Line 1940
    lui	$a6,0x8
    ori	$a6,$a6,0x704
    # Line 1932
    lui	$at,0x8
    ori	$at,$at,0x4
    # Line 1927
    lui	$v0,0xa
    ori	$v0,$v0,0x504
    # Line 1926
    li	$v1,12
    sw	$v1,0($s1)
    # Line 1927
    sw	$v0,0($s1)
    # Line 1928
    sw	$a7,0($s1)
    # Line 1932
    sw	$at,0($s1)
    # Line 1933
    sw	$ra,0($s1)
    # Line 1934
    sw	$t9,0($s1)
    move	$t9,$a2
    # Line 1935
    sw	$a3,0($s1)
    # Line 1945
    lui	$a3,0x1
    # Line 1938
    lui	$a7,0x8
    ori	$a7,$a7,0x604
    # Line 1936
    sw	$t0,0($s1)
    # Line 1937
    sw	$zero,0($s1)
    # Line 1938
    sw	$a7,0($s1)
    # Line 1939
    sw	$t3,0($s1)
    # Line 1940
    sw	$a6,0($s1)
    # Line 1941
    sw	$t2,0($s1)
    # Line 1942
    sw	$a5,0($s1)
    # Line 1943
    sw	$t1,0($s1)
    # Line 1944
    sw	$a4,0($s1)
    # Line 1946
    jalr	$a2
    # Line 1945
    sw	$a3,12($t8)
    # Line 1950
    # lw $t9, -30324($gp) # &__glMgrWaitForDMAWrite
    bal __glMgrWaitForDMAWrite
    move	$a0,$s0
    ld	$gp,16($sp)
    # Line 1953
    ld	$s0,0($sp)
    ld	$ra,24($sp)
    # Line 1952
    lui	$t0,0xa
    ori	$t0,$t0,0x704
    sw	$t0,0($s1)
    sw	$zero,0($s1)
    # Line 1953
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dae40b8:
    # Line 1894
    bne	$a2,$a3,.L0dae3f40
    # Line 1904
    andi	$v0,$a5,0x1
    # Line 1901
    multu	$a2,$a5
    lui	$at,0xf
    ori	$at,$at,0xffff
    mflo	$a0
    sltu	$at,$at,$a0
    bnez	$at,.L0dae40ec
    nop
    # Line 1903
    move	$t1,$a0
    # Line 1904
    li	$t2,1
.L0dae40e4:
    b	.L0dae3f40
    # Line 1911
    move	$a3,$t1
.L0dae40ec:
    # Line 1904
    bnez	$v0,.L0dae40e4
    lui	$a0,0x7
    ori	$a0,$a0,0xffff
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0dae40e4
    nop
    # Line 1907
    srl	$t2,$t2,0x1
.L0dae4108:
    # Line 1908
    andi	$t0,$t2,0x1
    bnez	$t0,.L0dae4120
    sll	$t1,$t1,0x1
    sltu	$at,$a0,$t1
    beqzl	$at,.L0dae4108
    # Line 1907
    srl	$t2,$t2,0x1
.L0dae4120:
    b	.L0dae40e4
    nop
.end __glMgr_AltWriteDMAHQSetup

.late_rodata
jtbl_0dbeecd0:
    .word .L0dadee38
    .word .L0dadee3c
    .word .L0dadee70
    .word .L0dadee74
    .word .L0dadeea8
    .word .L0dadeeac
    .word .L0dadf23c

.rdata
_lit8_3fec000000000000:
    .word 0x3fec0000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_406fe00000000000:
    .word 0x406fe000, 0x00000000
_lit8_40efffe000000000:
    .word 0x40efffe0, 0x00000000
_lit_2f800001:
    .word 0x2f800001
_lit_3b808081:
    .word 0x3b808081
_lit_3f800000:
    .word 0x3f800000
_lit_41000000:
    .word 0x41000000

