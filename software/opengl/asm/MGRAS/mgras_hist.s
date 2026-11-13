# Source: ../MGRAS/mgras_hist.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_hist.c
# Total Functions: 25

.text

# Function: __glMgrFreeHistogramMemory
# Declared: Line 36 (Source lines: 36-62)
# Address: 0x0dac9584 - 0x0dac95d8 (Size: 84 bytes, Frame: 32)
.ent __glMgrFreeHistogramMemory
__glMgrFreeHistogramMemory:
    # Line 36
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    lui	$s0,0x1
    addu	$s0,$a0,$s0
    lbu	$at,-32291($s0)
    beqzl	$at,.L0dac95ac
    # Line 53
    lw	$a1,-32280($s0)
    sw	$zero,-32284($s0)
    # Line 52
    sb	$zero,-32291($s0)
    # Line 53
    lw	$a1,-32280($s0)
.L0dac95ac:
    beqzl	$a1,.L0dac95d0
    # Line 62
    ld	$s0,0($sp)
    # Line 59
    lw	$t9,12($a0)
    sd	$ra,8($sp)
    jalr	$t9
    nop
    # Line 60
    sw	$zero,-32280($s0)
    ld	$ra,8($sp)
    # Line 62
    ld	$s0,0($sp)
.L0dac95d0:
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrFreeHistogramMemory

# Function: allocHistogramMemory
# Declared: Line 71 (Source lines: 71-111)
# Address: 0x0dac95d8 - 0x0dac9784 (Size: 428 bytes, Frame: 192)
.ent allocHistogramMemory
allocHistogramMemory:
    # Line 71
    addiu	$sp,$sp,-64
    sd	$s3,32($sp)
    move	$s3,$a0
    sd	$s0,24($sp)
    # Line 78
    li	$s0,256
    sd	$s2,8($sp)
    # Line 76
    lui	$s2,0x1
    addu	$s2,$a0,$s2
    lbu	$at,-25437($s2)
    sd	$s1,16($sp)
    # Line 78
    move	$s1,$zero
    sd	$at,0($sp)
.L0dac9608:
    # Line 81
    slt	$at,$s0,$a1
    beqz	$at,.L0dac9628
    # Line 84
    slti	$a2,$s0,4097
    # Line 80
    sll	$s0,$s0,0x2
    slti	$v1,$s0,4097
    bnez	$v1,.L0dac9608
    addiu	$s1,$s1,1
    # Line 84
    slti	$a2,$s0,4097
.L0dac9628:
    beqz	$a2,.L0dac9720
    # Line 85
    nop	# was lw $t9, -32720($gp) # &sub_0dad0000
    # Line 86
    lbu	$a3,-32291($s2)
    beqz	$a3,.L0dac9654
    # Line 89
    nop	# was lw $t9, -32720($gp) # &sub_0dad0000
    sd	$ra,40($sp)
    addiu	$t9,$t9,-27260
    bal image1D_to_texturecolortable
    move	$a0,$s3
    b	.L0dac965c
    # Line 92
    nop	# was lw $t9, -30252($gp) # &__glMgrAllocERAM
.L0dac9654:
    sd	$ra,40($sp)
    # lw $t9, -30252($gp) # &__glMgrAllocERAM
.L0dac965c:
    li	$a1,64
    jal	__glMgrAllocERAM
    sll	$a0,$s0,0x2
    bltz	$v0,.L0dac9750
    ld	$a2,0($sp)
    # Line 103
    mult	$a2,$s0
    # Line 96
    sw	$v0,-32288($s2)
    # Line 103
    move	$a0,$s3
    lw	$t9,0($s3)
    mflo	$a1
    sll	$a1,$a1,0x4
    jalr	$t9
    addiu	$a1,$a1,4
    sw	$v0,-32280($s2)
    beqz	$v0,.L0dac96dc
    ld	$ra,40($sp)
    # Line 110
    sll	$a3,$s1,0x2
    # Line 111
    li	$v0,1
    # Line 110
    la	$s3,sub_0dbf0000
    # Line 111
    ld	$s1,16($sp)
    # Line 109
    sw	$s0,-32284($s2)
    # Line 110
    addiu	$s0,$s3,-6696
    # Line 111
    ld	$s3,32($sp)
    # Line 110
    addu	$a3,$a3,$s0
    # Line 108
    li	$s0,1
    # Line 110
    lw	$a3,0($a3)
    # Line 108
    sb	$s0,-32291($s2)
    # Line 111
    ld	$s0,24($sp)
    # Line 110
    sw	$a3,-32260($s2)
    # Line 111
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dac96dc:
    # Line 104
    lw	$t9,16($s3)
    la	$a1,sub_0dbf0000
    move	$a0,$s3
    jalr	$t9
    addiu	$a1,$a1,-6240
    # lw $t9, -32720($gp) # &sub_0dad0000
    addiu	$t9,$t9,-27260
    # Line 105
    bal image1D_to_texturecolortable
    move	$a0,$s3
    # Line 106
    move	$v0,$zero
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$ra,40($sp)
    ld	$s2,8($sp)
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dac9720:
    sd	$ra,40($sp)
    # Line 85
    addiu	$t9,$t9,-27260
    bal image1D_to_texturecolortable
    move	$a0,$s3
    # Line 86
    move	$v0,$zero
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$ra,40($sp)
    ld	$s2,8($sp)
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dac9750:
    # Line 93
    lw	$t9,16($s3)
    la	$a1,sub_0dbf0000
    move	$a0,$s3
    jal	sub_0dad0000
    addiu	$a1,$a1,-6280
    # Line 94
    move	$v0,$zero
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$ra,40($sp)
    ld	$s2,8($sp)
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end allocHistogramMemory

# Function: __glMgr_InitPixelStatState
# Declared: Line 115 (Source lines: 119-131)
# Address: 0x0dac9784 - 0x0dac97cc (Size: 72 bytes, Frame: 0)
.globl __glMgr_InitPixelStatState
.ent __glMgr_InitPixelStatState
__glMgr_InitPixelStatState:
    # Line 126
    li	$v0,6408
    # Line 119
    lui	$at,0x1
    addu	$at,$a0,$at
    # Line 130
    sw	$v0,-32240($at)
    # Line 129
    sb	$zero,-32243($at)
    # Line 128
    sb	$zero,-32244($at)
    # Line 126
    sw	$v0,-32268($at)
    sw	$v0,-32248($at)
    # Line 125
    sb	$zero,-32272($at)
    sb	$zero,-32252($at)
    # Line 124
    sw	$zero,-32276($at)
    sw	$zero,-32256($at)
    # Line 123
    sw	$zero,-32284($at)
    # Line 122
    sw	$zero,-32288($at)
    # Line 121
    sw	$zero,-32280($at)
    # Line 120
    sb	$zero,-32291($at)
    # Line 131
    jr	$ra
    # Line 119
    sb	$zero,-32292($at)
.end __glMgr_InitPixelStatState

# Function: __glMgrFreePixelStatState
# Declared: Line 134 (Source lines: 134-141)
# Address: 0x0dac97cc - 0x0dac9838 (Size: 108 bytes, Frame: 48)
.globl __glMgrFreePixelStatState
.ent __glMgrFreePixelStatState
__glMgrFreePixelStatState:
    # Line 134
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,16($sp)
    lui	$at,0x1
    addu	$at,$a0,$at
    sd	$at,0($sp)
    lbu	$at,-32291($at)
    lui	$v0,0x13
    addiu	$v0,$v0,20172
    beqz	$at,.L0dac9828
    addu	$gp,$t9,$v0
    # Line 138
    # lw $t9, -32720($gp) # &sub_0dad0000
    sd	$ra,24($sp)
    addiu	$t9,$t9,-27260
    bal image1D_to_texturecolortable
    move	$a0,$s0
    # Line 139
    lw	$t9,12($s0)
    ld	$a1,0($sp)
    move	$a0,$s0
    jal	sub_0dad0000
    lw	$a1,-32280($a1)
    ld	$ra,24($sp)
.L0dac9828:
    ld	$gp,16($sp)
    # Line 141
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrFreePixelStatState

# Function: __glMgrResetHistogramMemory
# Declared: Line 146 (Source lines: 150-155)
# Address: 0x0dac9838 - 0x0dac9898 (Size: 96 bytes, Frame: 0)
.globl __glMgrResetHistogramMemory
.ent __glMgrResetHistogramMemory
__glMgrResetHistogramMemory:
    # Line 151
    lui	$v0,0x7
    # Line 150
    lui	$at,0x1
    addu	$at,$a0,$at
    lw	$a1,-32284($at)
    # Line 151
    ori	$v0,$v0,0x4080
    # Line 154
    lw	$at,-32288($at)
    # Line 150
    sll	$a1,$a1,0x2
    # Line 152
    sra	$a0,$a1,0x1f
    xor	$v1,$a1,$a0
    subu	$v1,$v1,$a0
    sra	$a0,$a1,0x1f
    andi	$v1,$v1,0x3
    xor	$v1,$v1,$a0
    subu	$v1,$v1,$a0
    sra	$a0,$a1,0x1
    srl	$a0,$a0,0x1e
    addu	$a0,$a0,$a1
    # Line 151
    li	$a1,0x830c
    sw	$a1,0($v0)
    # Line 152
    sra	$a0,$a0,0x2
    sw	$a0,0($v0)
    # Line 153
    sw	$v1,0($v0)
    # Line 155
    jr	$ra
    # Line 154
    sw	$at,0($v0)
.end __glMgrResetHistogramMemory

# Function: __glMgrim_HistogramEXT
# Declared: Line 203 (Source lines: 204-267)
# Address: 0x0dac9898 - 0x0dac9b30 (Size: 664 bytes, Frame: 224)
.globl __glMgrim_HistogramEXT
.ent __glMgrim_HistogramEXT
__glMgrim_HistogramEXT:
    # Line 205
    lw	$a6,__glCurrentContext
    # Line 204
    move	$v0,$a2
    # Line 205
    li	$v1,1
    # Line 204
    addiu	$sp,$sp,-96
    sd	$s1,24($sp)
    move	$s1,$a1
    sd	$gp,32($sp)
    # Line 205
    lw	$at,__glBeginMode
    sd	$s0,40($sp)
    # Line 204
    move	$s0,$a0
    lui	$a0,0x13
    addiu	$a0,$a0,19968
    # Line 205
    beq	$at,$v1,.L0dac9aa4
    # Line 204
    addu	$gp,$t9,$a0
    # Line 209
    bltz	$s1,.L0dac9acc
    # Line 214
    li	$a0,0x8024
    beq	$a0,$s0,.L0dac99b4
    li	$a4,0x8025
    beq	$s0,$a4,.L0dac99b4
    # Line 217
    li	$a1,1
    sd	$ra,48($sp)
.L0dac98ec:
    sd	$v0,8($sp)
    sd	$a6,0($sp)
    bnez	$a1,.L0dac9990
    sd	$a3,16($sp)
    # lw $t9, -30468($gp) # &getbaseformat
    bal getbaseformat
    ld	$a0,8($sp)
    move	$a0,$v0
    beqz	$v0,.L0dac9990
    ld	$ra,48($sp)
    li	$a5,0x8049
    beq	$v0,$a5,.L0dac9990
    li	$at,0x8024
    beq	$at,$s0,.L0dac9a48
.L0dac9924:
    # Line 231
    li	$a6,0x8000
    beq	$a6,$a0,.L0dac9a94
    # Line 241
    la	$a2,sub_0dbf0000
    addiu	$v0,$a0,-6403
.L0dac9934:
    addiu	$a2,$a2,-6696
    sll	$a1,$v0,0x2
    subu	$a1,$a1,$v0
    sll	$a1,$a1,0x2
    subu	$a1,$a1,$v0
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a2
    lw	$a1,16($a1)
    mult	$a1,$s1
    ld	$a4,8($sp)
    ld	$v0,0($sp)
    mflo	$v1
    slti	$v1,$v1,16385
    bnez	$v1,.L0dac99c0
    li	$a1,0x8025
    bne	$a1,$s0,.L0dac9a28
    # Line 239
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 237
    ld	$a4,0($sp)
    lui	$a5,0x1
    addu	$a4,$a4,$a5
    sw	$zero,-32256($a4)
    b	.L0dac9a34
    sw	$zero,-32248($a4)
.L0dac9990:
    # Line 220
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,32($sp)
    # Line 221
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dac99b4:
    # Line 217
    move	$a1,$zero
    b	.L0dac98ec
    sd	$ra,48($sp)
.L0dac99c0:
    # Line 241
    lui	$v1,0x1
    beq	$a1,$s0,.L0dac9af4
    addu	$v0,$v0,$v1
    # Line 252
    sw	$s1,-32276($v0)
    # Line 253
    beq	$a6,$a0,.L0dac9a9c
    sw	$a4,-32268($v0)
    # Line 254
    addiu	$a1,$a0,-6403
.L0dac99dc:
    ld	$a0,0($sp)
    # Line 261
    # lw $t9, -30588($gp) # &__glMgrResetHistogramMemory
    # Line 255
    ld	$a6,16($sp)
    # Line 254
    sll	$a5,$a1,0x2
    subu	$a5,$a5,$a1
    sll	$a5,$a5,0x2
    subu	$a5,$a5,$a1
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$a2
    lw	$a5,24($a5)
    # Line 255
    sb	$a6,-32272($v0)
    # Line 261
    bal __glMgrResetHistogramMemory
    # Line 254
    sw	$a5,-32264($v0)
    ld	$gp,32($sp)
    # Line 267
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dac9a28:
    # Line 239
    jal	__glMgrResetHistogramMemory
    li	$a0,0x8031
    ld	$ra,48($sp)
.L0dac9a34:
    ld	$gp,32($sp)
    # Line 241
    ld	$s0,40($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dac9a48:
    # Line 217
    blez	$s1,.L0dac9b14
    sd	$a0,56($sp)
    # Line 225
    # lw $t9, -32720($gp) # &sub_0dad0000
    ld	$a0,0($sp)
    addiu	$t9,$t9,-27176
    bal image1D_to_texturecolortable
    move	$a1,$s1
    ld	$ra,48($sp)
    bnez	$v0,.L0dac9924
    ld	$a0,56($sp)
    # Line 227
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    ld	$gp,32($sp)
    # Line 228
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dac9a94:
    # Line 241
    b	.L0dac9934
    li	$v0,8
.L0dac9a9c:
    # Line 254
    b	.L0dac99dc
    li	$a1,8
.L0dac9aa4:
    # Line 209
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,32($sp)
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dac9acc:
    # Line 213
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$gp,32($sp)
    # Line 214
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dac9af4:
    ld	$gp,32($sp)
    # Line 247
    ld	$s0,40($sp)
    # Line 245
    sw	$s1,-32256($v0)
    # Line 247
    ld	$s1,24($sp)
    ld	$at,8($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 246
    sw	$at,-32248($v0)
.L0dac9b14:
    # Line 231
    # lw $t9, -32720($gp) # &sub_0dad0000
    addiu	$t9,$t9,-27260
    bal image1D_to_texturecolortable
    ld	$a0,0($sp)
    ld	$ra,48($sp)
    b	.L0dac9924
    ld	$a0,56($sp)
.end __glMgrim_HistogramEXT

# Function: byteSwapMaybe
# Declared: Line 273 (Source lines: 274-303)
# Address: 0x0dac9b30 - 0x0dac9cb8 (Size: 392 bytes, Frame: 0)
.ent byteSwapMaybe
byteSwapMaybe:
    # Line 274
    lw	$at,__glCurrentContext
    lbu	$at,1072($at)
    beqz	$at,.L0dac9cb0
    move	$a4,$a0
    # Line 277
    addiu	$a5,$a1,-5120
    la	$at,sub_0dbf0000
    sltiu	$v0,$a5,7
    sll	$a5,$a5,0x2
    addiu	$at,$at,-6200
    beqz	$v0,.L0dac9bd8
    addu	$a5,$a5,$at
    lw	$at,%lo(jtbl_0dbee7c8)($a5)
    jr	$at
    # Line 284
    move	$a5,$a2
.L0dac9b68:
    beqz	$a2,.L0dac9bd8
    andi	$a4,$a2,0x3
    beqz	$a4,.L0dac9b94
    lbu	$a1,1($a0)
.L0dac9b78:
    addiu	$a2,$a2,-1
    addi	$a4,$a4,-1
    move	$v0,$a1
    # Line 285
    lbu	$a1,0($a0)
    # Line 286
    sb	$v0,0($a0)
    bnez	$a4,.L0dac9b78
    # Line 287
    sb	$a1,1($a0)
.L0dac9b94:
    sra	$v1,$a5,0x2
    move	$a6,$a1
    beqz	$v1,.L0dac9bd8
    move	$a4,$a2
    move	$a1,$a6
    move	$a2,$a4
.L0dac9bac:
    # Line 285
    lbu	$v0,0($a0)
    # Line 286
    sb	$a1,0($a0)
    # Line 285
    lbu	$a3,0($a0)
    # Line 286
    sb	$v0,0($a0)
    # Line 285
    lbu	$at,0($a0)
    # Line 286
    sb	$a3,0($a0)
    # Line 284
    addiu	$a2,$a2,-4
    # Line 285
    lbu	$a1,0($a0)
    # Line 286
    sb	$at,0($a0)
    # Line 284
    bnez	$a2,.L0dac9bac
    # Line 287
    sb	$a1,1($a0)
.L0dac9bd8:
    # Line 303
    jr	$ra
    nop
.L0dac9be0:
    # Line 281
    jr	$ra
    nop
.L0dac9be8:
    # Line 293
    beqz	$a2,.L0dac9bd8
    move	$a1,$a2
    andi	$a0,$a2,0x3
    beqz	$a0,.L0dac9c28
    sra	$v0,$a1,0x2
.L0dac9bfc:
    # Line 295
    lbu	$at,0($a4)
    # Line 293
    addiu	$a2,$a2,-1
    # Line 295
    sb	$at,3($a4)
    # Line 296
    addiu	$a4,$a4,1
    # Line 297
    lbu	$a3,0($a4)
    addi	$a0,$a0,-1
    # Line 298
    lbu	$v1,1($a4)
    # Line 299
    sb	$a3,1($a4)
    bnez	$a0,.L0dac9bfc
    # Line 298
    sb	$v1,0($a4)
    sra	$v0,$a1,0x2
.L0dac9c28:
    move	$a5,$a2
    beqz	$v0,.L0dac9ca8
    move	$a6,$a4
    move	$a0,$a5
    move	$a1,$a6
.L0dac9c3c:
    lbu	$v0,2($a1)
    # Line 297
    lbu	$a3,1($a1)
    # Line 298
    sb	$v0,1($a1)
    # Line 295
    lbu	$at,0($a1)
    lbu	$v1,1($a1)
    sb	$at,3($a1)
    # Line 299
    sb	$a3,2($a1)
    # Line 298
    lbu	$v0,3($a1)
    # Line 295
    sb	$v1,4($a1)
    # Line 297
    lbu	$at,2($a1)
    # Line 298
    sb	$v0,2($a1)
    lbu	$a3,4($a1)
    # Line 299
    sb	$at,3($a1)
    # Line 295
    lbu	$v1,2($a1)
    # Line 297
    lbu	$v0,3($a1)
    # Line 298
    sb	$a3,3($a1)
    # Line 295
    lbu	$at,3($a1)
    sb	$v1,5($a1)
    # Line 299
    sb	$v0,4($a1)
    # Line 295
    sb	$at,6($a1)
    # Line 296
    addiu	$a1,$a1,4
    # Line 297
    lbu	$a3,0($a1)
    # Line 293
    addiu	$a0,$a0,-4
    # Line 298
    lbu	$v1,1($a1)
    # Line 299
    sb	$a3,1($a1)
    # Line 293
    bnez	$a0,.L0dac9c3c
    # Line 298
    sb	$v1,0($a1)
.L0dac9ca8:
    # Line 303
    jr	$ra
    nop
.L0dac9cb0:
    # Line 277
    jr	$ra
    nop
.end byteSwapMaybe

# Function: skipPixelsMaybe
# Declared: Line 309 (Source lines: 309-336)
# Address: 0x0dac9cb8 - 0x0dac9e08 (Size: 336 bytes, Frame: 0)
.ent skipPixelsMaybe
skipPixelsMaybe:
    # Line 309
    lw	$a4,__glCurrentContext
    # Line 316
    sltiu	$v1,$a1,5123
    # Line 309
    lw	$a4,1084($a4)
    # Line 316
    sltiu	$a3,$a1,5124
    sltiu	$v0,$a1,5122
    # Line 309
    beqz	$a4,.L0dac9dac
    # Line 316
    sltiu	$at,$a1,5126
    # Line 315
    multu	$a4,$a2
    mflo	$a2
    # Line 316
    bnez	$at,.L0dac9d14
    li	$a4,0x8034
    sltiu	$v0,$a1,5127
    bnez	$v0,.L0dac9d38
    sltu	$v1,$a1,$a4
    bnez	$v1,.L0dac9d8c
    sltu	$a3,$a4,$a1
    bnez	$a3,.L0dac9dd8
    li	$a4,0x8036
.L0dac9d00:
    # Line 326
    lw	$at,0($a0)
.L0dac9d04:
    addu	$v0,$a2,$a2
    addu	$at,$at,$v0
    # Line 336
    jr	$ra
    # Line 326
    sw	$at,0($a0)
.L0dac9d14:
    # Line 316
    bnez	$v1,.L0dac9d50
    sltiu	$at,$a1,5121
    sltiu	$v0,$a1,5126
    bnez	$a3,.L0dac9d00
    sltiu	$at,$a1,5125
    bnez	$at,.L0dac9db4
    li	$a3,5124
    beqz	$v0,.L0dac9d48
    nop
.L0dac9d38:
    # Line 333
    lw	$v1,0($a0)
.L0dac9d3c:
    sll	$a3,$a2,0x2
    addu	$v1,$v1,$a3
    sw	$v1,0($a0)
.L0dac9d48:
    # Line 336
    jr	$ra
    nop
.L0dac9d50:
    # Line 316
    li	$v1,5122
    bnez	$at,.L0dac9d74
    li	$a3,5120
    bnezl	$v0,.L0dac9d80
    # Line 320
    lw	$at,0($a0)
    # Line 316
    bne	$a1,$v1,.L0dac9d48
    nop
    b	.L0dac9d04
    # Line 326
    lw	$at,0($a0)
.L0dac9d74:
    # Line 316
    bne	$a1,$a3,.L0dac9d48
    nop
    # Line 320
    lw	$at,0($a0)
.L0dac9d80:
    addu	$at,$at,$a2
    # Line 336
    jr	$ra
    # Line 320
    sw	$at,0($a0)
.L0dac9d8c:
    # Line 316
    li	$a4,0x8033
    sltu	$v0,$a1,$a4
    bnez	$v0,.L0dac9dc4
    sltu	$v1,$a4,$a1
    bnez	$v1,.L0dac9d48
    nop
    b	.L0dac9d04
    # Line 326
    lw	$at,0($a0)
.L0dac9dac:
    # Line 313
    jr	$ra
    nop
.L0dac9db4:
    # Line 316
    bne	$a1,$a3,.L0dac9d48
    nop
    b	.L0dac9d3c
    # Line 333
    lw	$v1,0($a0)
.L0dac9dc4:
    # Line 316
    li	$at,0x8032
    bne	$a1,$at,.L0dac9d48
    nop
    b	.L0dac9d80
    # Line 320
    lw	$at,0($a0)
.L0dac9dd8:
    # Line 316
    sltu	$v0,$a1,$a4
    bnez	$v0,.L0dac9df4
    sltu	$v1,$a4,$a1
    bnez	$v1,.L0dac9d48
    nop
    b	.L0dac9d3c
    # Line 333
    lw	$v1,0($a0)
.L0dac9df4:
    # Line 316
    li	$a3,0x8035
    bne	$a1,$a3,.L0dac9d48
    nop
    b	.L0dac9d3c
    # Line 333
    lw	$v1,0($a0)
.end skipPixelsMaybe

# Function: __glMgr_FormatHistogram
# Declared: Line 339 (Source lines: 341-461)
# Address: 0x0dac9e08 - 0x0daca30c (Size: 1284 bytes, Frame: 240)
.globl __glMgr_FormatHistogram
.ent __glMgr_FormatHistogram
__glMgr_FormatHistogram:
    # Line 341
    addiu	$sp,$sp,-112
    sd	$s2,32($sp)
    move	$s2,$a0
    # Line 348
    addiu	$a0,$sp,76
    sd	$s1,8($sp)
    # Line 341
    move	$s1,$a3
    sd	$s0,16($sp)
    move	$s0,$a4
    sd	$s3,48($sp)
    move	$s3,$a2
    sd	$gp,24($sp)
    sd	$ra,40($sp)
    lui	$ra,0x13
    addiu	$ra,$ra,18576
    addu	$gp,$t9,$ra
    # Line 348
    # lw $t9, -32720($gp) # &sub_0dad0000
    # Line 341
    sw	$a1,76($sp)
    # Line 348
    move	$a1,$a2
    addiu	$t9,$t9,-25416
    bal __glMgrim_HistogramEXT
    lw	$a2,0($a4)
    # Line 350
    lw	$t3,0($s1)
    blez	$t3,.L0dac9f34
    move	$a3,$zero
    lui	$t0,0xff00
    lui	$a7,0xff
    lui	$t8,0x1
    li	$t2,1
    move	$a4,$s1
    b	.L0dac9ed0
    addiu	$t9,$s3,-5120
.L0dac9e84:
    # Line 360
    lw	$at,76($sp)
    # Line 362
    lw	$v0,-32276($a2)
    # Line 360
    sll	$t1,$a6,0x2
    addu	$t1,$t1,$s0
    lw	$t1,12($t1)
    # Line 362
    blez	$v0,.L0dac9ec8
    # Line 360
    addu	$t1,$t1,$at
.L0dac9ea0:
    # Line 363
    lw	$v1,0($a1)
    sb	$v1,0($t1)
    addiu	$a1,$a1,4
    # Line 362
    lw	$v0,-32276($a2)
    lw	$at,0($s0)
    addiu	$a0,$a0,1
    slt	$v0,$a0,$v0
    bnez	$v0,.L0dac9ea0
    addu	$t1,$at,$t1
    lw	$t3,0($s1)
.L0dac9ec8:
    # Line 350
    slt	$a5,$a3,$t3
.L0dac9ecc:
    beqz	$a5,.L0dac9f34
.L0dac9ed0:
    addiu	$a4,$a4,4
    lw	$a6,24($a4)
    lw	$at,4($s0)
    # Line 355
    sll	$a0,$t9,0x2
    # Line 350
    sllv	$v0,$t2,$a6
    and	$at,$at,$v0
    beqz	$at,.L0dac9ec8
    addiu	$a3,$a3,1
    # Line 355
    addu	$a2,$t8,$s2
    lw	$a5,-32284($a2)
    mult	$a5,$a6
    la	$a1,sub_0dbf0000
    sltiu	$at,$t9,7
    addiu	$a1,$a1,-6168
    addu	$a0,$a0,$a1
    lw	$a1,-32280($a2)
    mflo	$a5
    sll	$a5,$a5,0x2
    beqz	$at,.L0dac9ec8
    addu	$a1,$a1,$a5
    lw	$at,%lo(jtbl_0dbee7e8)($a0)
    # Line 362
    move	$a0,$zero
    # Line 386
    sll	$t1,$a6,0x2
    # Line 355
    jr	$at
    # Line 386
    addu	$t1,$t1,$s0
.L0dac9f34:
    # Line 428
    lw	$a7,0($s0)
    blez	$a7,.L0dac9fec
    move	$a3,$zero
    move	$a4,$zero
    mtc1	$zero,$f4
    lui	$t8,0x1
    li	$t2,1
    move	$a1,$s0
    move	$a6,$zero
    b	.L0dac9fac
    addiu	$t9,$s3,-5120
.L0dac9f60:
    # Line 441
    addu	$a2,$t8,$s2
    lw	$at,-32276($a2)
    # Line 440
    lw	$t0,76($sp)
    # Line 441
    move	$a0,$zero
    blez	$at,.L0dac9f98
    # Line 440
    addu	$t0,$t0,$a6
.L0dac9f78:
    # Line 442
    sh	$zero,0($t0)
    # Line 441
    lw	$v1,-32276($a2)
    lw	$a7,0($s0)
    addiu	$a0,$a0,1
    slt	$v1,$a0,$v1
    addu	$v0,$a7,$a7
    bnez	$v1,.L0dac9f78
    addu	$t0,$v0,$t0
.L0dac9f98:
    # Line 428
    addiu	$a4,$a4,4
.L0dac9f9c:
    addiu	$a3,$a3,1
    slt	$a5,$a3,$a7
    beqz	$a5,.L0dac9fec
    addiu	$a6,$a6,2
.L0dac9fac:
    la	$a5,sub_0dbf0000
    lw	$v0,28($a1)
    lw	$at,4($s1)
    sll	$a0,$t9,0x2
    sllv	$v0,$t2,$v0
    and	$at,$at,$v0
    bnez	$at,.L0dac9f98
    addiu	$a1,$a1,4
    addiu	$a5,$a5,-6136
    sltiu	$at,$t9,7
    beqz	$at,.L0dac9f98
    addu	$a0,$a0,$a5
    lw	$at,%lo(jtbl_0dbee7e8)($a0)
    # Line 454
    move	$a0,$zero
    # Line 428
    jr	$at
    # Line 454
    addu	$a2,$t8,$s2
.L0dac9fec:
    ld	$gp,24($sp)
    # Line 461
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$ra,40($sp)
    ld	$s2,32($sp)
    ld	$s3,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0daca00c:
    # Line 369
    lw	$ra,-32276($a2)
    sll	$t1,$a6,0x2
    addu	$t1,$t1,$s0
    lw	$t1,12($t1)
    lbu	$v0,1072($s2)
    lw	$at,76($sp)
    addu	$t1,$t1,$t1
    beqz	$v0,.L0daca24c
    addu	$t1,$t1,$at
    # Line 372
    move	$a0,$zero
    blez	$ra,.L0dac9ecc
    # Line 350
    slt	$a5,$a3,$t3
.L0daca03c:
    # Line 373
    lw	$a5,0($a1)
    andi	$v1,$a5,0xff
    sll	$v1,$v1,0x8
    andi	$a5,$a5,0xff00
    sra	$a5,$a5,0x8
    or	$v1,$v1,$a5
    sh	$v1,0($t1)
    # Line 375
    addiu	$a1,$a1,4
    # Line 372
    lw	$v0,-32276($a2)
    lw	$at,0($s0)
    addiu	$a0,$a0,1
    slt	$v0,$a0,$v0
    addu	$at,$at,$at
    bnez	$v0,.L0daca03c
    addu	$t1,$at,$t1
    b	.L0dac9ec8
    lw	$t3,0($s1)
.L0daca080:
    # Line 386
    lw	$ra,-32276($a2)
    lw	$t1,12($t1)
    lbu	$v0,1072($s2)
    lw	$at,76($sp)
    sll	$t1,$t1,0x2
    beqz	$v0,.L0daca288
    addu	$t1,$t1,$at
    # Line 389
    move	$a0,$zero
    blez	$ra,.L0dac9ecc
    # Line 350
    slt	$a5,$a3,$t3
.L0daca0a8:
    # Line 390
    lw	$a5,0($a1)
    andi	$v1,$a5,0xff00
    sll	$v1,$v1,0x8
    sll	$at,$a5,0x18
    or	$v1,$v1,$at
    and	$at,$a5,$a7
    sra	$at,$at,0x8
    or	$v1,$v1,$at
    and	$a5,$a5,$t0
    srl	$a5,$a5,0x18
    or	$v1,$v1,$a5
    sw	$v1,0($t1)
    # Line 389
    lw	$v0,-32276($a2)
    lw	$at,0($s0)
    addiu	$a0,$a0,1
    slt	$v0,$a0,$v0
    sll	$at,$at,0x2
    bnez	$v0,.L0daca0a8
    addu	$t1,$at,$t1
    b	.L0dac9ec8
    lw	$t3,0($s1)
.L0daca0fc:
    # Line 403
    lw	$ra,-32276($a2)
    sll	$at,$a6,0x2
    addu	$at,$at,$s0
    lw	$at,12($at)
    lbu	$v0,1072($s2)
    lw	$t1,76($sp)
    sll	$at,$at,0x2
    beqz	$v0,.L0daca2c4
    addu	$t1,$t1,$at
    # Line 408
    move	$a0,$zero
    blez	$ra,.L0dac9ec8
    # Line 406
    move	$a6,$t1
.L0daca12c:
    # Line 409
    lw	$at,0($a1)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,0($sp)
    # Line 410
    lw	$v0,0($sp)
    andi	$a5,$v0,0xff00
    sll	$a5,$a5,0x8
    sll	$at,$v0,0x18
    or	$a5,$a5,$at
    and	$at,$a7,$v0
    srl	$at,$at,0x8
    and	$v0,$t0,$v0
    srl	$v0,$v0,0x18
    or	$at,$at,$v0
    or	$a5,$a5,$at
    sw	$a5,0($a6)
    # Line 409
    addiu	$a1,$a1,4
    # Line 408
    lw	$v1,-32276($a2)
    lw	$v0,0($s0)
    addiu	$a0,$a0,1
    slt	$v1,$a0,$v1
    sll	$v0,$v0,0x2
    bnez	$v1,.L0daca12c
    addu	$a6,$v0,$a6
    b	.L0dac9ec8
    lw	$t3,0($s1)
.L0daca198:
    # Line 434
    addu	$a2,$t8,$s2
    lw	$at,-32276($a2)
    # Line 433
    lw	$t0,76($sp)
    # Line 434
    move	$a0,$zero
    blez	$at,.L0dac9f98
    # Line 433
    addu	$t0,$a3,$t0
.L0daca1b0:
    # Line 435
    sb	$zero,0($t0)
    # Line 434
    lw	$v0,-32276($a2)
    lw	$a7,0($s0)
    addiu	$a0,$a0,1
    slt	$v0,$a0,$v0
    bnez	$v0,.L0daca1b0
    addu	$t0,$a7,$t0
    b	.L0dac9f9c
    # Line 428
    addiu	$a4,$a4,4
.L0daca1d4:
    # Line 448
    addu	$a2,$t8,$s2
    lw	$at,-32276($a2)
    # Line 447
    lw	$t0,76($sp)
    # Line 448
    move	$a0,$zero
    blez	$at,.L0dac9f98
    # Line 447
    addu	$t0,$t0,$a4
.L0daca1ec:
    # Line 449
    sw	$zero,0($t0)
    # Line 448
    lw	$v1,-32276($a2)
    lw	$a7,0($s0)
    addiu	$a0,$a0,1
    slt	$v1,$a0,$v1
    sll	$v0,$a7,0x2
    bnez	$v1,.L0daca1ec
    addu	$t0,$v0,$t0
    b	.L0dac9f9c
    # Line 428
    addiu	$a4,$a4,4
.L0daca214:
    # Line 454
    lw	$at,-32276($a2)
    # Line 453
    lw	$t0,76($sp)
    # Line 454
    blez	$at,.L0dac9f98
    # Line 453
    addu	$t0,$t0,$a4
.L0daca224:
    # Line 455
    swc1	$f4,0($t0)
    # Line 454
    lw	$v1,-32276($a2)
    lw	$a7,0($s0)
    addiu	$a0,$a0,1
    slt	$v1,$a0,$v1
    sll	$v0,$a7,0x2
    bnez	$v1,.L0daca224
    addu	$t0,$v0,$t0
    b	.L0dac9f9c
    # Line 428
    addiu	$a4,$a4,4
.L0daca24c:
    # Line 378
    move	$a0,$zero
    blez	$ra,.L0dac9ecc
    # Line 350
    slt	$a5,$a3,$t3
.L0daca258:
    # Line 379
    lw	$v0,0($a1)
    sh	$v0,0($t1)
    addiu	$a1,$a1,4
    # Line 378
    lw	$at,-32276($a2)
    lw	$a5,0($s0)
    addiu	$a0,$a0,1
    slt	$at,$a0,$at
    addu	$a5,$a5,$a5
    bnez	$at,.L0daca258
    addu	$t1,$a5,$t1
    b	.L0dac9ec8
    lw	$t3,0($s1)
.L0daca288:
    # Line 397
    move	$a0,$zero
    blez	$ra,.L0dac9ecc
    # Line 350
    slt	$a5,$a3,$t3
.L0daca294:
    # Line 398
    lw	$at,0($a1)
    sw	$at,0($t1)
    addiu	$a1,$a1,4
    # Line 397
    lw	$a5,-32276($a2)
    lw	$v1,0($s0)
    addiu	$a0,$a0,1
    slt	$a5,$a0,$a5
    sll	$v1,$v1,0x2
    bnez	$a5,.L0daca294
    addu	$t1,$v1,$t1
    b	.L0dac9ec8
    lw	$t3,0($s1)
.L0daca2c4:
    # Line 418
    move	$a0,$zero
    blez	$ra,.L0dac9ec8
    # Line 416
    move	$a6,$t1
.L0daca2d0:
    # Line 419
    lw	$a5,0($a1)
    mtc1	$a5,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,0($a6)
    addiu	$a1,$a1,4
    # Line 418
    lw	$v1,-32276($a2)
    lw	$v0,0($s0)
    addiu	$a0,$a0,1
    slt	$v1,$a0,$v1
    sll	$v0,$v0,0x2
    bnez	$v1,.L0daca2d0
    addu	$a6,$v0,$a6
    b	.L0dac9ec8
    lw	$t3,0($s1)
.end __glMgr_FormatHistogram

# Function: __Mgr_ReturnHistPIO
# Declared: Line 465 (Source lines: 465-496)
# Address: 0x0daca30c - 0x0daca388 (Size: 124 bytes, Frame: 48)
.ent __Mgr_ReturnHistPIO
__Mgr_ReturnHistPIO:
    # Line 465
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    # Line 487
    li	$v0,0x8b08
    lui	$at,0x7
    ori	$at,$at,0x4080
    sd	$s5,16($sp)
    # Line 468
    lw	$v1,__glCurrentContext
    sd	$s7,8($sp)
    # Line 470
    li	$s7,0x9d48
    addu	$s7,$s7,$v1
    lw	$s7,0($s7)
    # Line 483
    lui	$s5,0x2
    lui	$v1,0x7
    addu	$s7,$s7,$v1
    sw	$s5,12($s7)
    # Line 487
    sw	$v0,0($at)
    # Line 488
    sw	$a0,0($at)
    # Line 489
    sw	$a1,0($at)
    # Line 492
    # lw $t9, -17864($gp) # &sginap
.L0daca358:
    jal	sginap
    move	$a0,$zero
    # Line 494
    lw	$v0,8($s7)
    and	$v0,$v0,$s5
    beqz	$v0,.L0daca358
    # Line 492
    nop	# was lw $t9, -17864($gp) # &sginap
    # Line 496
    ld	$s5,16($sp)
    ld	$ra,0($sp)
    lw	$v0,20($s7)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __Mgr_ReturnHistPIO

# Function: __glMgr_ReadEramDMAHQSetup
# Declared: Line 506 (Source lines: 507-555)
# Address: 0x0daca388 - 0x0daca544 (Size: 444 bytes, Frame: 176)
.globl __glMgr_ReadEramDMAHQSetup
.ent __glMgr_ReadEramDMAHQSetup
__glMgr_ReadEramDMAHQSetup:
    # Line 507
    addiu	$sp,$sp,-176
    sd	$s2,88($sp)
    sd	$a4,64($sp)
    sd	$s3,32($sp)
    move	$s3,$a3
    sd	$s0,48($sp)
    move	$s0,$a2
    sd	$s1,56($sp)
    move	$s1,$a1
    sd	$s5,72($sp)
    sd	$gp,80($sp)
    lui	$at,0x13
    addiu	$at,$at,17168
    addu	$gp,$t9,$at
    # Line 511
    # lw $t9, -32124($gp) # &__glMgrim_Finish
    sd	$s4,40($sp)
    sd	$ra,24($sp)
    jal	__glMgrim_Finish
    # Line 507
    move	$s4,$a0
    # Line 517
    move	$s2,$zero
    ld	$ra,24($sp)
    # Line 515
    li	$v0,512
    # Line 514
    lui	$v1,0xc
    lui	$s5,0x7
    ori	$s5,$s5,0x4080
    ori	$v1,$v1,0x4
    sw	$v1,0($s5)
    # Line 517
    beqz	$s0,.L0daca50c
    # Line 515
    sw	$v0,0($s5)
    # Line 517
    ld	$a5,64($sp)
    sd	$s3,0($sp)
    sd	$s4,8($sp)
    sd	$s8,96($sp)
    lui	$s8,0x8
    sd	$s6,104($sp)
    lui	$s6,0x8
    sd	$s7,112($sp)
    lui	$s7,0x8
    ori	$s7,$s7,0xb04
    ori	$s6,$s6,0x704
    ori	$s8,$s8,0x504
    sll	$a5,$a5,0x1
    ori	$a5,$a5,0xb9
    b	.L0daca4e8
    sd	$a5,16($sp)
.L0daca43c:
    # Line 519
    li	$s3,8192
.L0daca440:
    # Line 543
    li	$a1,256
    move	$a0,$s3
    # Line 547
    subu	$s0,$s0,$s3
    # Line 543
    # lw $t9, -18684($gp) # &__glMgrim_pipe
    li	$ra,0x8a0c
    # Line 536
    ld	$t8,0($sp)
    # Line 533
    ld	$at,16($sp)
    li	$v1,1
    lui	$v0,0x8
    ori	$v0,$v0,0x804
    lui	$a2,0x8
    ori	$a2,$a2,0x604
    # Line 523
    sll	$s4,$s3,0x2
    lui	$a4,0x8000
    lui	$a3,0x8
    ori	$a3,$a3,0x404
    lui	$a5,0x8
    ori	$a5,$a5,0x4
    # Line 520
    sw	$a5,0($s5)
    # Line 521
    sw	$a4,0($s5)
    # Line 522
    sw	$a3,0($s5)
    # Line 523
    sw	$s4,0($s5)
    # Line 524
    sw	$s8,0($s5)
    # Line 525
    sw	$zero,0($s5)
    # Line 526
    sw	$a2,0($s5)
    # Line 527
    sw	$s1,0($s5)
    # Line 528
    sw	$s6,0($s5)
    # Line 529
    sw	$v1,0($s5)
    # Line 530
    sw	$v0,0($s5)
    # Line 531
    sw	$s4,0($s5)
    # Line 532
    sw	$s7,0($s5)
    # Line 533
    sw	$at,0($s5)
    # Line 535
    sw	$ra,0($s5)
    # Line 536
    sw	$t8,0($s5)
    # Line 543
    jal	__glMgrim_pipe
    # Line 537
    sw	$s2,0($s5)
    # Line 545
    # lw $t9, -30308($gp) # &__glMgrWaitForDMARead
    # Line 549
    addu	$s1,$s4,$s1
    # Line 545
    jal	__glMgrWaitForDMARead
    ld	$a0,8($sp)
    # Line 548
    addu	$s2,$s2,$s3
    # Line 549
    beqz	$s0,.L0daca4fc
.L0daca4e8:
    # Line 517
    sltiu	$at,$s0,8192
    beqz	$at,.L0daca43c
    # Line 519
    move	$s3,$s0
    b	.L0daca440
    nop
.L0daca4fc:
    ld	$s7,112($sp)
    ld	$ra,24($sp)
    ld	$s6,104($sp)
    ld	$s8,96($sp)
.L0daca50c:
    ld	$gp,80($sp)
    # Line 555
    ld	$s0,48($sp)
    ld	$s1,56($sp)
    ld	$s2,88($sp)
    ld	$s3,32($sp)
    ld	$s4,40($sp)
    # Line 554
    li	$v0,3584
    lui	$v1,0xc
    ori	$v1,$v1,0x4
    # Line 553
    sw	$v1,0($s5)
    # Line 554
    sw	$v0,0($s5)
    # Line 555
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end __glMgr_ReadEramDMAHQSetup

# Function: __glMgr_PackHistogram
# Declared: Line 562 (Source lines: 563-641)
# Address: 0x0daca544 - 0x0dacb358 (Size: 3604 bytes, Frame: 176)
.globl __glMgr_PackHistogram
.ent __glMgr_PackHistogram
__glMgr_PackHistogram:
    # Line 563
    addiu	$sp,$sp,-176
    # Line 571
    li	$at,0x8032
    # Line 567
    sll	$a7,$a4,0x2
    addu	$a7,$a7,$a0
    # Line 568
    addu	$t0,$a4,$a4
    sll	$t0,$t0,0x2
    addu	$t0,$t0,$a0
    # Line 569
    sll	$t1,$a4,0x2
    subu	$t1,$t1,$a4
    sll	$t1,$t1,0x2
    # Line 571
    beq	$a2,$at,.L0daca760
    # Line 569
    addu	$t1,$t1,$a0
    # Line 571
    li	$at,0x8033
    beq	$a2,$at,.L0daca8c8
    li	$v0,0x8034
    beq	$a2,$v0,.L0dacaa1c
    li	$v1,0x8035
    beq	$a2,$v1,.L0dacaba0
    li	$a4,0x8036
    beq	$a2,$a4,.L0daca5a0
    # Line 627
    move	$a6,$a1
.L0daca598:
    # Line 641
    jr	$ra
    addiu	$sp,$sp,176
.L0daca5a0:
    # Line 627
    beqz	$a5,.L0dacad60
    li	$a2,-1
    # Line 630
    addiu	$a3,$a3,-1
    beq	$a3,$a2,.L0daca598
    addiu	$a5,$a3,1
    andi	$at,$a5,0x1
    beqzl	$at,.L0daca640
    sd	$t1,120($sp)
    addiu	$a3,$a3,-1
    # Line 631
    addiu	$t0,$t0,4
    addiu	$a7,$a7,4
    addiu	$a0,$a0,4
    addiu	$a6,$a6,4
    lw	$a1,-4($t0)
    addiu	$t1,$t1,4
    sd	$t1,120($sp)
    andi	$at,$a1,0xf
    andi	$a1,$a1,0x3f0
    srl	$a1,$a1,0x4
    lw	$v1,-4($a0)
    sll	$at,$at,0xc
    lw	$a4,-4($a7)
    andi	$v0,$v1,0x300
    sll	$v1,$v1,0x18
    sll	$v0,$v0,0x8
    or	$v0,$v0,$v1
    andi	$v1,$a4,0x3f
    andi	$a4,$a4,0x3c0
    sll	$a4,$a4,0x2
    sll	$v1,$v1,0x12
    or	$v0,$v0,$v1
    lw	$v1,-4($t1)
    or	$a4,$a4,$at
    or	$v0,$v0,$a4
    andi	$v1,$v1,0x3
    sll	$v1,$v1,0x6
    or	$v1,$v1,$a1
    or	$v0,$v0,$v1
    sw	$v0,-4($a6)
    sd	$t1,120($sp)
.L0daca640:
    move	$t1,$a3
    move	$t3,$a7
    sra	$v1,$a5,0x1
    move	$t8,$a0
    move	$t9,$a6
    move	$t2,$t0
    move	$a6,$t2
    move	$a5,$t8
    ld	$a4,120($sp)
    beqz	$v1,.L0daca758
    sd	$a4,112($sp)
    move	$a7,$t9
    move	$a0,$t3
    move	$a1,$t1
    ld	$a3,112($sp)
.L0daca67c:
    addiu	$a6,$a6,8
    lw	$v0,0($a5)
    addiu	$a0,$a0,8
    addiu	$a5,$a5,8
    andi	$at,$v0,0x300
    sll	$at,$at,0x8
    lw	$a4,-8($a0)
    sll	$v0,$v0,0x18
    or	$at,$at,$v0
    andi	$v0,$a4,0x3f
    sll	$v0,$v0,0x12
    or	$at,$at,$v0
    lw	$v1,-8($a6)
    andi	$a4,$a4,0x3c0
    sll	$a4,$a4,0x2
    andi	$t0,$v1,0xf
    sll	$t0,$t0,0xc
    lw	$v0,0($a3)
    or	$a4,$a4,$t0
    or	$at,$at,$a4
    andi	$v0,$v0,0x3
    sll	$v0,$v0,0x6
    andi	$v1,$v1,0x3f0
    srl	$v1,$v1,0x4
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    sw	$at,0($a7)
    addiu	$a7,$a7,8
    lw	$at,-4($a5)
    addiu	$a3,$a3,8
    # Line 630
    addiu	$a1,$a1,-2
    # Line 631
    andi	$t0,$at,0x300
    sll	$t0,$t0,0x8
    lw	$v1,-4($a0)
    sll	$at,$at,0x18
    or	$t0,$t0,$at
    andi	$at,$v1,0x3f
    sll	$at,$at,0x12
    or	$t0,$t0,$at
    lw	$v0,-4($a6)
    andi	$v1,$v1,0x3c0
    sll	$v1,$v1,0x2
    andi	$a4,$v0,0xf
    sll	$a4,$a4,0xc
    lw	$at,-4($a3)
    or	$v1,$v1,$a4
    or	$t0,$t0,$v1
    andi	$at,$at,0x3
    sll	$at,$at,0x6
    andi	$v0,$v0,0x3f0
    srl	$v0,$v0,0x4
    or	$at,$at,$v0
    or	$t0,$t0,$at
    # Line 630
    bne	$a1,$a2,.L0daca67c
    # Line 631
    sw	$t0,-4($a7)
.L0daca758:
    b	.L0daca598
    nop
.L0daca760:
    # Line 575
    li	$a2,-1
    addiu	$a3,$a3,-1
    beq	$a3,$a2,.L0daca598
    # Line 573
    move	$a5,$a1
    # Line 575
    addiu	$a6,$a3,1
    andi	$a1,$a6,0x3
    beqz	$a1,.L0daca7cc
    move	$t9,$a3
.L0daca780:
    addiu	$a3,$a3,-1
    # Line 576
    addiu	$a5,$a5,1
    addiu	$t0,$t0,4
    addiu	$a7,$a7,4
    addiu	$a0,$a0,4
    lw	$v0,-4($a0)
    lw	$a4,-4($a7)
    addi	$a1,$a1,-1
    andi	$v0,$v0,0x7
    andi	$a4,$a4,0x7
    lw	$v1,-4($t0)
    sll	$a4,$a4,0x3
    or	$v0,$v0,$a4
    andi	$v1,$v1,0x3
    sll	$v1,$v1,0x6
    or	$v0,$v0,$v1
    bnez	$a1,.L0daca780
    sb	$v0,-1($a5)
    move	$t9,$a3
.L0daca7cc:
    move	$t3,$t0
    move	$t8,$a5
    move	$t1,$a0
    sra	$v1,$a6,0x2
    move	$t2,$a7
    move	$a6,$t2
    move	$a1,$t1
    beqz	$v1,.L0daca8c0
    move	$a5,$t8
    move	$a0,$t3
    move	$a3,$t9
.L0daca7f8:
    lw	$v1,0($a1)
    lw	$at,0($a6)
    andi	$v1,$v1,0x7
    andi	$at,$at,0x7
    lw	$a4,0($a0)
    sll	$at,$at,0x3
    or	$v1,$v1,$at
    andi	$a4,$a4,0x3
    sll	$a4,$a4,0x6
    or	$v1,$v1,$a4
    sb	$v1,0($a5)
    lw	$v0,4($a1)
    lw	$a4,4($a6)
    addiu	$a5,$a5,4
    andi	$v0,$v0,0x7
    andi	$a4,$a4,0x7
    lw	$v1,4($a0)
    sll	$a4,$a4,0x3
    or	$v0,$v0,$a4
    andi	$v1,$v1,0x3
    sll	$v1,$v1,0x6
    or	$v0,$v0,$v1
    sb	$v0,-3($a5)
    addiu	$a0,$a0,16
    lw	$at,8($a1)
    lw	$v1,8($a6)
    addiu	$a6,$a6,16
    andi	$at,$at,0x7
    andi	$v1,$v1,0x7
    lw	$v0,-8($a0)
    sll	$v1,$v1,0x3
    or	$at,$at,$v1
    andi	$v0,$v0,0x3
    sll	$v0,$v0,0x6
    or	$at,$at,$v0
    sb	$at,-2($a5)
    addiu	$a1,$a1,16
    lw	$a4,-4($a1)
    lw	$v0,-4($a6)
    # Line 575
    addiu	$a3,$a3,-4
    # Line 576
    andi	$a4,$a4,0x7
    andi	$v0,$v0,0x7
    lw	$at,-4($a0)
    sll	$v0,$v0,0x3
    or	$a4,$a4,$v0
    andi	$at,$at,0x3
    sll	$at,$at,0x6
    or	$a4,$a4,$at
    # Line 575
    bne	$a3,$a2,.L0daca7f8
    # Line 576
    sb	$a4,-1($a5)
.L0daca8c0:
    b	.L0daca598
    nop
.L0daca8c8:
    # Line 582
    move	$a6,$a1
    beqz	$a5,.L0dacaf14
    li	$a2,-1
    # Line 585
    addiu	$a3,$a3,-1
    beq	$a3,$a2,.L0daca598
    addiu	$a1,$a3,1
    andi	$a4,$a1,0x1
    beqz	$a4,.L0daca944
    move	$a4,$a6
    addiu	$a3,$a3,-1
    # Line 586
    addiu	$a6,$a6,2
    addiu	$t1,$t1,4
    addiu	$t0,$t0,4
    addiu	$a7,$a7,4
    lw	$at,-4($t0)
    lw	$v1,-4($t1)
    addiu	$a0,$a0,4
    andi	$at,$at,0xf
    andi	$v1,$v1,0xf
    sll	$v1,$v1,0x4
    lw	$v0,-4($a0)
    or	$at,$at,$v1
    lw	$v1,-4($a7)
    andi	$v0,$v0,0xf
    sll	$v0,$v0,0x8
    andi	$v1,$v1,0xf
    sll	$v1,$v1,0xc
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    sh	$at,-2($a6)
    move	$a4,$a6
.L0daca944:
    move	$v1,$a0
    sd	$a6,104($sp)
    move	$t9,$a3
    move	$t8,$t1
    move	$t3,$a7
    sra	$v0,$a1,0x1
    move	$t2,$t0
    move	$a1,$t2
    sd	$a0,96($sp)
    move	$a5,$t3
    beqz	$v0,.L0dacaa14
    move	$a3,$t8
    ld	$a7,96($sp)
    ld	$a0,104($sp)
    move	$a6,$t9
.L0daca980:
    addiu	$a0,$a0,4
    addiu	$a3,$a3,8
    addiu	$a1,$a1,8
    lw	$v0,-8($a1)
    lw	$a4,-8($a3)
    addiu	$a5,$a5,8
    andi	$v0,$v0,0xf
    andi	$a4,$a4,0xf
    sll	$a4,$a4,0x4
    lw	$v1,0($a7)
    or	$v0,$v0,$a4
    lw	$a4,-8($a5)
    andi	$v1,$v1,0xf
    sll	$v1,$v1,0x8
    andi	$a4,$a4,0xf
    sll	$a4,$a4,0xc
    or	$v1,$v1,$a4
    or	$v0,$v0,$v1
    sh	$v0,-4($a0)
    addiu	$a7,$a7,8
    lw	$at,-4($a1)
    lw	$v1,-4($a3)
    # Line 585
    addiu	$a6,$a6,-2
    # Line 586
    andi	$at,$at,0xf
    andi	$v1,$v1,0xf
    sll	$v1,$v1,0x4
    lw	$v0,-4($a7)
    or	$at,$at,$v1
    lw	$v1,-4($a5)
    andi	$v0,$v0,0xf
    sll	$v0,$v0,0x8
    andi	$v1,$v1,0xf
    sll	$v1,$v1,0xc
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    # Line 585
    bne	$a6,$a2,.L0daca980
    # Line 586
    sh	$at,-2($a0)
.L0dacaa14:
    b	.L0daca598
    nop
.L0dacaa1c:
    # Line 597
    move	$a6,$a1
    beqz	$a5,.L0dacb05c
    li	$a2,-1
    # Line 600
    addiu	$a3,$a3,-1
    beq	$a3,$a2,.L0daca598
    addiu	$a1,$a3,1
    andi	$v1,$a1,0x1
    beqz	$v1,.L0dacaaa8
    move	$t2,$a3
    addiu	$a3,$a3,-1
    # Line 601
    addiu	$a7,$a7,4
    addiu	$a6,$a6,2
    addiu	$t1,$t1,4
    addiu	$t0,$t0,4
    lw	$a4,0($a0)
    addiu	$a0,$a0,4
    lw	$v0,-4($a7)
    andi	$a4,$a4,0x1f
    sll	$a4,$a4,0x8
    andi	$at,$v0,0x7
    sll	$at,$at,0xd
    or	$a4,$a4,$at
    andi	$v0,$v0,0x18
    srl	$v0,$v0,0x3
    lw	$at,-4($t0)
    or	$a4,$a4,$v0
    lw	$v0,-4($t1)
    andi	$at,$at,0x1f
    sll	$at,$at,0x2
    andi	$v0,$v0,0x1
    sll	$v0,$v0,0x7
    or	$at,$at,$v0
    or	$a4,$a4,$at
    sh	$a4,-2($a6)
    move	$t2,$a3
.L0dacaaa8:
    move	$t3,$a7
    move	$t8,$a6
    move	$t9,$t1
    move	$v1,$t0
    sd	$t0,88($sp)
    move	$v0,$a0
    sra	$at,$a1,0x1
    beqz	$at,.L0dacab98
    sd	$a0,80($sp)
    move	$a1,$t2
    move	$a0,$t3
    move	$a6,$t8
    move	$a5,$t9
    ld	$a3,88($sp)
    ld	$a7,80($sp)
.L0dacaae4:
    addiu	$a0,$a0,8
    addiu	$a6,$a6,4
    addiu	$a5,$a5,8
    lw	$at,0($a7)
    addiu	$a3,$a3,8
    lw	$v1,-8($a0)
    andi	$at,$at,0x1f
    sll	$at,$at,0x8
    andi	$v0,$v1,0x7
    sll	$v0,$v0,0xd
    or	$at,$at,$v0
    andi	$v1,$v1,0x18
    srl	$v1,$v1,0x3
    lw	$v0,-8($a3)
    or	$at,$at,$v1
    lw	$v1,-8($a5)
    andi	$v0,$v0,0x1f
    sll	$v0,$v0,0x2
    andi	$v1,$v1,0x1
    sll	$v1,$v1,0x7
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    sh	$at,-4($a6)
    addiu	$a7,$a7,8
    lw	$a4,-4($a7)
    # Line 600
    addiu	$a1,$a1,-2
    # Line 601
    lw	$v0,-4($a0)
    andi	$a4,$a4,0x1f
    sll	$a4,$a4,0x8
    andi	$at,$v0,0x7
    sll	$at,$at,0xd
    or	$a4,$a4,$at
    andi	$v0,$v0,0x18
    srl	$v0,$v0,0x3
    lw	$at,-4($a3)
    or	$a4,$a4,$v0
    lw	$v0,-4($a5)
    andi	$at,$at,0x1f
    sll	$at,$at,0x2
    andi	$v0,$v0,0x1
    sll	$v0,$v0,0x7
    or	$at,$at,$v0
    or	$a4,$a4,$at
    # Line 600
    bne	$a1,$a2,.L0dacaae4
    # Line 601
    sh	$a4,-2($a6)
.L0dacab98:
    b	.L0daca598
    nop
.L0dacaba0:
    # Line 612
    move	$a6,$a1
    beqz	$a5,.L0dacb1a4
    li	$a2,-1
    # Line 615
    addiu	$a3,$a3,-1
    beq	$a3,$a2,.L0daca598
    addiu	$a5,$a3,1
    andi	$a1,$a5,0x3
    beqz	$a1,.L0dacac20
    move	$t3,$a3
.L0dacabc4:
    addiu	$a3,$a3,-1
    # Line 616
    addiu	$a6,$a6,4
    addiu	$t1,$t1,4
    addiu	$t0,$t0,4
    addiu	$a7,$a7,4
    addiu	$a0,$a0,4
    lw	$v0,-4($t1)
    lw	$at,-4($t0)
    addi	$a1,$a1,-1
    andi	$v0,$v0,0xff
    andi	$at,$at,0xff
    sll	$at,$at,0x8
    lw	$v1,-4($a0)
    lw	$a4,-4($a7)
    or	$v0,$v0,$at
    sll	$v1,$v1,0x18
    andi	$a4,$a4,0xff
    sll	$a4,$a4,0x10
    or	$v1,$v1,$a4
    or	$v0,$v0,$v1
    bnez	$a1,.L0dacabc4
    sw	$v0,-4($a6)
    move	$t3,$a3
.L0dacac20:
    move	$t8,$a6
    move	$t9,$t1
    sd	$t0,72($sp)
    move	$a4,$a0
    sd	$a0,64($sp)
    move	$t2,$t0
    sra	$v1,$a5,0x2
    beqz	$v1,.L0dacad58
    move	$t2,$a7
    move	$a3,$t3
    move	$a1,$t8
    move	$a0,$t9
    ld	$a6,72($sp)
    move	$a7,$t2
    ld	$a5,64($sp)
.L0dacac5c:
    lw	$a4,0($a0)
    lw	$v1,0($a6)
    andi	$a4,$a4,0xff
    andi	$v1,$v1,0xff
    sll	$v1,$v1,0x8
    lw	$at,0($a5)
    lw	$v0,0($a7)
    or	$a4,$a4,$v1
    sll	$at,$at,0x18
    andi	$v0,$v0,0xff
    sll	$v0,$v0,0x10
    or	$at,$at,$v0
    or	$a4,$a4,$at
    sw	$a4,0($a1)
    addiu	$a1,$a1,16
    lw	$v1,4($a0)
    lw	$v0,4($a6)
    addiu	$a0,$a0,16
    andi	$v1,$v1,0xff
    andi	$v0,$v0,0xff
    sll	$v0,$v0,0x8
    lw	$a4,4($a5)
    lw	$at,4($a7)
    or	$v1,$v1,$v0
    sll	$a4,$a4,0x18
    andi	$at,$at,0xff
    sll	$at,$at,0x10
    or	$a4,$a4,$at
    or	$v1,$v1,$a4
    sw	$v1,-12($a1)
    addiu	$a6,$a6,16
    lw	$v0,-8($a0)
    lw	$at,-8($a6)
    addiu	$a7,$a7,16
    andi	$v0,$v0,0xff
    andi	$at,$at,0xff
    sll	$at,$at,0x8
    lw	$v1,8($a5)
    lw	$a4,-8($a7)
    or	$v0,$v0,$at
    sll	$v1,$v1,0x18
    andi	$a4,$a4,0xff
    sll	$a4,$a4,0x10
    or	$v1,$v1,$a4
    or	$v0,$v0,$v1
    sw	$v0,-8($a1)
    addiu	$a5,$a5,16
    lw	$at,-4($a0)
    lw	$a4,-4($a6)
    # Line 615
    addiu	$a3,$a3,-4
    # Line 616
    andi	$at,$at,0xff
    andi	$a4,$a4,0xff
    sll	$a4,$a4,0x8
    lw	$v0,-4($a5)
    lw	$v1,-4($a7)
    or	$at,$at,$a4
    sll	$v0,$v0,0x18
    andi	$v1,$v1,0xff
    sll	$v1,$v1,0x10
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    # Line 615
    bne	$a3,$a2,.L0dacac5c
    # Line 616
    sw	$at,-4($a1)
.L0dacad58:
    b	.L0daca598
    nop
.L0dacad60:
    # Line 634
    addiu	$a3,$a3,-1
    beq	$a3,$a2,.L0daca598
    addiu	$a5,$a3,1
    andi	$a1,$a5,0x3
    beqz	$a1,.L0dacadd4
    move	$t2,$a3
.L0dacad78:
    addiu	$a3,$a3,-1
    # Line 635
    addiu	$a6,$a6,4
    addiu	$t1,$t1,4
    addiu	$t0,$t0,4
    addiu	$a7,$a7,4
    addiu	$a0,$a0,4
    lw	$at,-4($a0)
    lw	$a4,-4($a7)
    addi	$a1,$a1,-1
    andi	$at,$at,0x3ff
    andi	$a4,$a4,0x3ff
    sll	$a4,$a4,0xa
    lw	$v0,-4($t1)
    lw	$v1,-4($t0)
    or	$at,$at,$a4
    sll	$v0,$v0,0x1e
    andi	$v1,$v1,0x3ff
    sll	$v1,$v1,0x14
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    bnez	$a1,.L0dacad78
    sw	$at,-4($a6)
    move	$t2,$a3
.L0dacadd4:
    move	$t3,$a6
    move	$t8,$t1
    move	$t9,$t0
    move	$a4,$a7
    sd	$a7,24($sp)
    move	$v1,$a0
    sra	$v0,$a5,0x2
    beqz	$v0,.L0dacaf0c
    sd	$a0,16($sp)
    move	$a5,$t2
    move	$a1,$t3
    move	$a3,$t8
    move	$a0,$t9
    ld	$a6,24($sp)
    ld	$a7,16($sp)
.L0dacae10:
    lw	$a4,0($a7)
    lw	$v1,0($a6)
    andi	$a4,$a4,0x3ff
    andi	$v1,$v1,0x3ff
    sll	$v1,$v1,0xa
    lw	$at,0($a3)
    lw	$v0,0($a0)
    or	$a4,$a4,$v1
    sll	$at,$at,0x1e
    andi	$v0,$v0,0x3ff
    sll	$v0,$v0,0x14
    or	$at,$at,$v0
    or	$a4,$a4,$at
    sw	$a4,0($a1)
    addiu	$a1,$a1,16
    lw	$v1,4($a7)
    lw	$v0,4($a6)
    addiu	$a3,$a3,16
    andi	$v1,$v1,0x3ff
    andi	$v0,$v0,0x3ff
    sll	$v0,$v0,0xa
    lw	$a4,-12($a3)
    lw	$at,4($a0)
    or	$v1,$v1,$v0
    sll	$a4,$a4,0x1e
    andi	$at,$at,0x3ff
    sll	$at,$at,0x14
    or	$a4,$a4,$at
    or	$v1,$v1,$a4
    sw	$v1,-12($a1)
    addiu	$a0,$a0,16
    lw	$v0,8($a7)
    lw	$at,8($a6)
    addiu	$a6,$a6,16
    andi	$v0,$v0,0x3ff
    andi	$at,$at,0x3ff
    sll	$at,$at,0xa
    lw	$v1,-8($a3)
    lw	$a4,-8($a0)
    or	$v0,$v0,$at
    sll	$v1,$v1,0x1e
    andi	$a4,$a4,0x3ff
    sll	$a4,$a4,0x14
    or	$v1,$v1,$a4
    or	$v0,$v0,$v1
    sw	$v0,-8($a1)
    addiu	$a7,$a7,16
    lw	$at,-4($a7)
    lw	$a4,-4($a6)
    # Line 634
    addiu	$a5,$a5,-4
    # Line 635
    andi	$at,$at,0x3ff
    andi	$a4,$a4,0x3ff
    sll	$a4,$a4,0xa
    lw	$v0,-4($a3)
    lw	$v1,-4($a0)
    or	$at,$at,$a4
    sll	$v0,$v0,0x1e
    andi	$v1,$v1,0x3ff
    sll	$v1,$v1,0x14
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    # Line 634
    bne	$a5,$a2,.L0dacae10
    # Line 635
    sw	$at,-4($a1)
.L0dacaf0c:
    b	.L0daca598
    nop
.L0dacaf14:
    # Line 589
    addiu	$a3,$a3,-1
    beq	$a3,$a2,.L0daca598
    addiu	$a1,$a3,1
    andi	$at,$a1,0x1
    beqz	$at,.L0dacaf84
    move	$t2,$a3
    addiu	$a3,$a3,-1
    # Line 590
    addiu	$a6,$a6,2
    addiu	$t1,$t1,4
    addiu	$t0,$t0,4
    addiu	$a7,$a7,4
    lw	$v0,0($a0)
    lw	$a4,-4($a7)
    addiu	$a0,$a0,4
    andi	$v0,$v0,0xf
    andi	$a4,$a4,0xf
    sll	$a4,$a4,0x4
    lw	$v1,-4($t0)
    or	$v0,$v0,$a4
    lw	$a4,-4($t1)
    andi	$v1,$v1,0xf
    sll	$v1,$v1,0x8
    andi	$a4,$a4,0xf
    sll	$a4,$a4,0xc
    or	$v1,$v1,$a4
    or	$v0,$v0,$v1
    sh	$v0,-2($a6)
    move	$t2,$a3
.L0dacaf84:
    move	$t3,$a6
    move	$t8,$t1
    move	$t9,$t0
    move	$at,$a7
    sd	$a7,56($sp)
    move	$a4,$a0
    sra	$v1,$a1,0x1
    beqz	$v1,.L0dacb054
    sd	$a0,48($sp)
    move	$a5,$t2
    move	$a6,$t3
    move	$a7,$t8
    move	$a1,$t9
    ld	$a3,56($sp)
    ld	$a0,48($sp)
.L0dacafc0:
    addiu	$a6,$a6,4
    addiu	$a7,$a7,8
    addiu	$a1,$a1,8
    lw	$v1,0($a0)
    lw	$at,0($a3)
    addiu	$a3,$a3,8
    andi	$v1,$v1,0xf
    andi	$at,$at,0xf
    sll	$at,$at,0x4
    lw	$a4,-8($a1)
    or	$v1,$v1,$at
    lw	$at,-8($a7)
    andi	$a4,$a4,0xf
    sll	$a4,$a4,0x8
    andi	$at,$at,0xf
    sll	$at,$at,0xc
    or	$a4,$a4,$at
    or	$v1,$v1,$a4
    sh	$v1,-4($a6)
    addiu	$a0,$a0,8
    lw	$v0,-4($a0)
    lw	$a4,-4($a3)
    # Line 589
    addiu	$a5,$a5,-2
    # Line 590
    andi	$v0,$v0,0xf
    andi	$a4,$a4,0xf
    sll	$a4,$a4,0x4
    lw	$v1,-4($a1)
    or	$v0,$v0,$a4
    lw	$a4,-4($a7)
    andi	$v1,$v1,0xf
    sll	$v1,$v1,0x8
    andi	$a4,$a4,0xf
    sll	$a4,$a4,0xc
    or	$v1,$v1,$a4
    or	$v0,$v0,$v1
    # Line 589
    bne	$a5,$a2,.L0dacafc0
    # Line 590
    sh	$v0,-2($a6)
.L0dacb054:
    b	.L0daca598
    nop
.L0dacb05c:
    # Line 604
    addiu	$a3,$a3,-1
    beq	$a3,$a2,.L0daca598
    addiu	$a1,$a3,1
    andi	$a4,$a1,0x1
    beqz	$a4,.L0dacb0cc
    move	$a4,$a3
    addiu	$a3,$a3,-1
    # Line 605
    addiu	$a6,$a6,2
    addiu	$t1,$t1,4
    addiu	$t0,$t0,4
    addiu	$a7,$a7,4
    lw	$at,0($a0)
    lw	$v1,-4($a7)
    addiu	$a0,$a0,4
    andi	$at,$at,0x1f
    andi	$v1,$v1,0x1f
    sll	$v1,$v1,0x5
    lw	$v0,-4($t0)
    or	$at,$at,$v1
    lw	$v1,-4($t1)
    andi	$v0,$v0,0x1f
    sll	$v0,$v0,0xa
    andi	$v1,$v1,0x1
    sll	$v1,$v1,0xf
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    sh	$at,-2($a6)
    move	$a4,$a3
.L0dacb0cc:
    sd	$a3,40($sp)
    move	$t2,$a6
    move	$t3,$t1
    move	$t8,$t0
    move	$t9,$a7
    move	$v1,$a0
    sra	$v0,$a1,0x1
    beqz	$v0,.L0dacb19c
    sd	$a0,32($sp)
    ld	$a1,40($sp)
    move	$a0,$t2
    move	$a3,$t3
    move	$a7,$t8
    move	$a5,$t9
    ld	$a6,32($sp)
.L0dacb108:
    addiu	$a0,$a0,4
    addiu	$a3,$a3,8
    addiu	$a7,$a7,8
    lw	$v0,0($a6)
    lw	$a4,0($a5)
    addiu	$a5,$a5,8
    andi	$v0,$v0,0x1f
    andi	$a4,$a4,0x1f
    sll	$a4,$a4,0x5
    lw	$v1,-8($a7)
    or	$v0,$v0,$a4
    lw	$a4,-8($a3)
    andi	$v1,$v1,0x1f
    sll	$v1,$v1,0xa
    andi	$a4,$a4,0x1
    sll	$a4,$a4,0xf
    or	$v1,$v1,$a4
    or	$v0,$v0,$v1
    sh	$v0,-4($a0)
    addiu	$a6,$a6,8
    lw	$at,-4($a6)
    lw	$v1,-4($a5)
    # Line 604
    addiu	$a1,$a1,-2
    # Line 605
    andi	$at,$at,0x1f
    andi	$v1,$v1,0x1f
    sll	$v1,$v1,0x5
    lw	$v0,-4($a7)
    or	$at,$at,$v1
    lw	$v1,-4($a3)
    andi	$v0,$v0,0x1f
    sll	$v0,$v0,0xa
    andi	$v1,$v1,0x1
    sll	$v1,$v1,0xf
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    # Line 604
    bne	$a1,$a2,.L0dacb108
    # Line 605
    sh	$at,-2($a0)
.L0dacb19c:
    b	.L0daca598
    nop
.L0dacb1a4:
    # Line 619
    addiu	$a3,$a3,-1
    beq	$a3,$a2,.L0daca598
    addiu	$a5,$a3,1
    andi	$a1,$a5,0x3
    beqz	$a1,.L0dacb218
    move	$t2,$a3
.L0dacb1bc:
    addiu	$a3,$a3,-1
    # Line 620
    addiu	$a6,$a6,4
    addiu	$t1,$t1,4
    addiu	$t0,$t0,4
    addiu	$a7,$a7,4
    addiu	$a0,$a0,4
    lw	$v1,-4($a0)
    lw	$v0,-4($a7)
    addi	$a1,$a1,-1
    andi	$v1,$v1,0xff
    andi	$v0,$v0,0xff
    sll	$v0,$v0,0x8
    lw	$a4,-4($t1)
    lw	$at,-4($t0)
    or	$v1,$v1,$v0
    sll	$a4,$a4,0x18
    andi	$at,$at,0xff
    sll	$at,$at,0x10
    or	$a4,$a4,$at
    or	$v1,$v1,$a4
    bnez	$a1,.L0dacb1bc
    sw	$v1,-4($a6)
    move	$t2,$a3
.L0dacb218:
    move	$t3,$a6
    move	$t8,$t1
    move	$t9,$t0
    move	$v0,$a7
    sd	$a7,8($sp)
    move	$at,$a0
    sra	$a4,$a5,0x2
    beqz	$a4,.L0dacb350
    sd	$a0,0($sp)
    move	$a6,$t2
    move	$a1,$t3
    move	$a7,$t8
    move	$a0,$t9
    ld	$a3,8($sp)
    ld	$a5,0($sp)
.L0dacb254:
    lw	$v0,0($a5)
    lw	$at,0($a3)
    andi	$v0,$v0,0xff
    andi	$at,$at,0xff
    sll	$at,$at,0x8
    lw	$v1,0($a7)
    lw	$a4,0($a0)
    or	$v0,$v0,$at
    sll	$v1,$v1,0x18
    andi	$a4,$a4,0xff
    sll	$a4,$a4,0x10
    or	$v1,$v1,$a4
    or	$v0,$v0,$v1
    sw	$v0,0($a1)
    addiu	$a1,$a1,16
    lw	$at,4($a5)
    lw	$a4,4($a3)
    addiu	$a7,$a7,16
    andi	$at,$at,0xff
    andi	$a4,$a4,0xff
    sll	$a4,$a4,0x8
    lw	$v0,-12($a7)
    lw	$v1,4($a0)
    or	$at,$at,$a4
    sll	$v0,$v0,0x18
    andi	$v1,$v1,0xff
    sll	$v1,$v1,0x10
    or	$v0,$v0,$v1
    or	$at,$at,$v0
    sw	$at,-12($a1)
    addiu	$a0,$a0,16
    lw	$a4,8($a5)
    lw	$v1,8($a3)
    addiu	$a3,$a3,16
    andi	$a4,$a4,0xff
    andi	$v1,$v1,0xff
    sll	$v1,$v1,0x8
    lw	$at,-8($a7)
    lw	$v0,-8($a0)
    or	$a4,$a4,$v1
    sll	$at,$at,0x18
    andi	$v0,$v0,0xff
    sll	$v0,$v0,0x10
    or	$at,$at,$v0
    or	$a4,$a4,$at
    sw	$a4,-8($a1)
    addiu	$a5,$a5,16
    lw	$v1,-4($a5)
    lw	$v0,-4($a3)
    # Line 619
    addiu	$a6,$a6,-4
    # Line 620
    andi	$v1,$v1,0xff
    andi	$v0,$v0,0xff
    sll	$v0,$v0,0x8
    lw	$a4,-4($a7)
    lw	$at,-4($a0)
    or	$v1,$v1,$v0
    sll	$a4,$a4,0x18
    andi	$at,$at,0xff
    sll	$at,$at,0x10
    or	$a4,$a4,$at
    or	$v1,$v1,$a4
    # Line 619
    bne	$a6,$a2,.L0dacb254
    # Line 620
    sw	$v1,-4($a1)
.L0dacb350:
    b	.L0daca598
    nop
.end __glMgr_PackHistogram

# Function: __glMgrim_GetHistogramEXT
# Declared: Line 644 (Source lines: 645-779)
# Address: 0x0dacb358 - 0x0dacbab4 (Size: 1884 bytes, Frame: 224)
.globl __glMgrim_GetHistogramEXT
.ent __glMgrim_GetHistogramEXT
__glMgrim_GetHistogramEXT:
    # Line 645
    move	$v0,$a1
    addiu	$sp,$sp,-224
    sd	$s3,104($sp)
    move	$s3,$a3
    sd	$s1,80($sp)
    move	$s1,$a2
    sd	$s2,112($sp)
    sd	$gp,96($sp)
    lui	$v1,0x13
    sd	$s8,88($sp)
    sw	$a4,212($sp)
    # Line 646
    li	$s8,1
    lw	$at,__glBeginMode
    # Line 645
    addiu	$v1,$v1,13120
    addu	$gp,$t9,$v1
    # Line 646
    beq	$at,$s8,.L0dacb9e0
    lw	$s2,__glCurrentContext
    # Line 658
    lw	$a4,3088($s2)
    sd	$s0,160($sp)
    lui	$s0,0x1
    addu	$s0,$s2,$s0
    lbu	$a5,-25437($s0)
    beq	$a4,$s8,.L0dacba10
    sd	$a5,8($sp)
    # Line 664
    li	$at,0x8024
    bne	$a0,$at,.L0dacb444
    sltiu	$v1,$s1,6403
    bnez	$v1,.L0dacb444
    sltiu	$a4,$s1,6411
    bnez	$a4,.L0dacb3d8
    li	$a5,0x8000
    bne	$s1,$a5,.L0dacb444
.L0dacb3d8:
    sltiu	$at,$s3,5120
    bnez	$at,.L0dacb3e8
    sltiu	$v1,$s3,5127
    bnez	$v1,.L0dacb404
.L0dacb3e8:
    li	$a4,0x8032
    sltu	$a4,$s3,$a4
    bnez	$a4,.L0dacb444
    li	$a5,0x8036
    sltu	$a5,$a5,$s3
    bnez	$a5,.L0dacb448
    # Line 670
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0dacb404:
    # Line 671
    lbu	$at,-32291($s0)
    beqz	$at,.L0dacb7e8
    sd	$v0,72($sp)
    # Line 678
    # lw $t9, -30468($gp) # &getbaseformat
    sd	$ra,168($sp)
    bal getbaseformat
    lw	$a0,-32268($s0)
    li	$a0,0x8000
    bne	$a0,$v0,.L0dacb478
    nop	# was lw $t9, -30468($gp) # &getbaseformat
    li	$v1,8
    bne	$a0,$s1,.L0dacb490
    sd	$v1,40($sp)
.L0dacb438:
    # Line 685
    li	$v0,0x8000
.L0dacb43c:
    b	.L0dacb4c4
    li	$s1,8
.L0dacb444:
    # Line 670
    # lw $t9, -27320($gp) # &__glSetError
.L0dacb448:
    li	$a0,1280
    sd	$ra,168($sp)
    jal	__glSetError
    ld	$s0,160($sp)
    ld	$gp,96($sp)
    # Line 671
    ld	$s1,80($sp)
    ld	$s2,112($sp)
    ld	$ra,168($sp)
    ld	$s3,104($sp)
    ld	$s8,88($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0dacb478:
    # Line 678
    bal getbaseformat
    lw	$a0,-32268($s0)
    addiu	$a4,$v0,-6403
    li	$a0,0x8000
    beq	$a0,$s1,.L0dacb438
    sd	$a4,40($sp)
.L0dacb490:
    # Line 685
    # lw $t9, -30468($gp) # &getbaseformat
    bal getbaseformat
    move	$a0,$s1
    li	$a5,0x8000
    beq	$a5,$v0,.L0dacb43c
    li	$at,0x8000
    bne	$at,$s1,.L0dacb4b8
    nop	# was lw $t9, -30468($gp) # &getbaseformat
    b	.L0dacb4c0
    li	$v0,0x8000
.L0dacb4b8:
    bal getbaseformat
    move	$a0,$s1
.L0dacb4c0:
    addiu	$s1,$v0,-6403
.L0dacb4c4:
    # Line 689
    lw	$a4,-32276($s0)
    lw	$v0,-32284($s0)
    # Line 691
    lw	$v1,-32280($s0)
    # Line 689
    subu	$a4,$v0,$a4
    sd	$v1,16($sp)
    # Line 691
    andi	$v1,$v1,0x7
    beqz	$v1,.L0dacb4f0
    sd	$a4,24($sp)
    ld	$a4,16($sp)
    # Line 693
    addiu	$a4,$a4,4
    sd	$a4,16($sp)
.L0dacb4f0:
    # Line 695
    ld	$a3,8($sp)
    mult	$v0,$a3
    move	$a0,$s2
    ld	$a1,16($sp)
    li	$a5,3
    addiu	$a4,$sp,0
    # lw $t9, -30344($gp) # &__glMgr_LockSingleDMAPool
    move	$a3,$zero
    mflo	$a2
    jal	__glMgr_LockSingleDMAPool
    sll	$a2,$a2,0x4
    ld	$a5,8($sp)
    sd	$s1,64($sp)
    andi	$a4,$v0,0xff
    addiu	$a5,$a5,-1
    beqz	$a4,.L0dacb898
    sd	$a5,56($sp)
    sd	$s2,32($sp)
    sd	$s3,48($sp)
    sd	$s6,136($sp)
    sd	$s4,144($sp)
    # Line 700
    ld	$at,8($sp)
    sd	$s5,128($sp)
    sd	$s7,152($sp)
    beqz	$at,.L0dacb5ac
    ld	$s1,56($sp)
    li	$s4,-1
    lw	$a1,0($sp)
.L0dacb560:
    # Line 701
    move	$a0,$s2
    li	$a4,3
    # lw $t9, -30576($gp) # &__glMgr_ReadEramDMAHQSetup
    lw	$a2,-32284($s0)
    lw	$a3,-32288($s0)
    bal __glMgr_ReadEramDMAHQSetup
    sll	$a2,$a2,0x2
    # Line 703
    lw	$a1,-32284($s0)
    lw	$a4,0($sp)
    # Line 700
    addiu	$s1,$s1,-1
    # Line 703
    sll	$a1,$a1,0x4
    addu	$a1,$a1,$a4
    # Line 700
    bne	$s1,$s4,.L0dacb560
    # Line 703
    sw	$a1,0($sp)
    sd	$s2,32($sp)
    sd	$s3,48($sp)
    sd	$s6,136($sp)
    sd	$s5,128($sp)
    sd	$s7,152($sp)
.L0dacb5ac:
    ld	$a4,72($sp)
    # Line 708
    beqz	$a4,.L0dacb5c0
    # Line 728
    nop	# was lw $t9, -30588($gp) # &__glMgrResetHistogramMemory
    bal __glMgrResetHistogramMemory
    ld	$a0,32($sp)
.L0dacb5c0:
    ld	$a5,8($sp)
    # Line 738
    slti	$a5,$a5,2
    bnez	$a5,.L0dacb6e4
    li	$v0,1
    ld	$s7,24($sp)
    la	$t8,sub_0dbf0000
    sll	$s7,$s7,0x2
    ld	$t2,64($sp)
    addiu	$t8,$t8,-6696
    ld	$at,40($sp)
    sll	$t1,$t2,0x2
    subu	$t1,$t1,$t2
    sll	$t1,$t1,0x2
    subu	$t1,$t1,$t2
    sll	$t1,$t1,0x2
    addu	$t1,$t1,$t8
    sll	$t2,$at,0x2
    subu	$t2,$t2,$at
    sll	$t2,$t2,0x2
    subu	$t2,$t2,$at
    sll	$t2,$t2,0x2
    addu	$t2,$t2,$t8
    b	.L0dacb630
    lw	$t0,16($t2)
.L0dacb620:
    ld	$at,8($sp)
    addiu	$v0,$v0,1
    beq	$at,$v0,.L0dacb6f0
    ld	$at,48($sp)
.L0dacb630:
    # Line 740
    lw	$at,-32284($s0)
    mult	$at,$v0
    ld	$s3,16($sp)
    # Line 739
    move	$a6,$s3
    # Line 740
    mflo	$s1
    sll	$s1,$s1,0x2
    sll	$s1,$s1,0x2
    addu	$s1,$s1,$s3
    # Line 741
    blez	$t0,.L0dacb620
    move	$s3,$zero
    lw	$t3,20($t1)
    b	.L0dacb678
    move	$a7,$t2
    # Line 747
    addu	$s1,$s7,$s1
.L0dacb668:
    # Line 746
    addu	$a6,$s7,$a6
.L0dacb66c:
    # Line 741
    slt	$v1,$s3,$t0
    beqz	$v1,.L0dacb620
    nop
.L0dacb678:
    lw	$a4,44($a7)
    addiu	$a7,$a7,4
    sllv	$a4,$s8,$a4
    and	$a4,$a4,$t3
    beqz	$a4,.L0dacb6d0
    addiu	$s3,$s3,1
    # Line 743
    lw	$a5,-32276($s0)
    move	$s5,$zero
    blezl	$a5,.L0dacb668
    # Line 747
    addu	$s1,$s7,$s1
.L0dacb6a0:
    # Line 744
    lw	$v1,0($s1)
    lw	$a4,0($a6)
    addu	$v1,$v1,$a4
    sw	$v1,0($a6)
    # Line 743
    lw	$at,-32276($s0)
    addiu	$s1,$s1,4
    addiu	$s5,$s5,1
    slt	$at,$s5,$at
    bnez	$at,.L0dacb6a0
    addiu	$a6,$a6,4
    b	.L0dacb668
    # Line 747
    addu	$s1,$s7,$s1
.L0dacb6d0:
    # Line 749
    lw	$a5,-32284($s0)
    sll	$a5,$a5,0x2
    # Line 750
    addu	$s1,$a5,$s1
    b	.L0dacb66c
    # Line 749
    addu	$a6,$a5,$a6
.L0dacb6e4:
    # Line 738
    la	$t8,sub_0dbf0000
    addiu	$t8,$t8,-6696
    ld	$at,48($sp)
.L0dacb6f0:
    # Line 758
    sltiu	$at,$at,5126
    bnez	$at,.L0dacb794
    ld	$s5,128($sp)
    ld	$s6,136($sp)
    ld	$v1,48($sp)
    ld	$s4,144($sp)
    ld	$s7,152($sp)
    sltiu	$v1,$v1,5127
    beqz	$v1,.L0dacb838
    ld	$ra,168($sp)
.L0dacb718:
    ld	$a0,32($sp)
.L0dacb71c:
    # Line 766
    ld	$a2,48($sp)
    lw	$a1,212($sp)
    ld	$a5,64($sp)
    ld	$s0,160($sp)
    # lw $t9, -30580($gp) # &__glMgr_FormatHistogram
    sll	$a4,$a5,0x2
    subu	$a4,$a4,$a5
    sll	$a4,$a4,0x2
    subu	$a4,$a4,$a5
    sll	$a4,$a4,0x2
    ld	$a5,40($sp)
    addu	$a4,$a4,$t8
    addiu	$a4,$a4,16
    sll	$a3,$a5,0x2
    subu	$a3,$a3,$a5
    sll	$a3,$a3,0x2
    subu	$a3,$a3,$a5
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$t8
    bal __glMgr_FormatHistogram
    addiu	$a3,$a3,16
    ld	$ra,168($sp)
.L0dacb774:
    ld	$gp,96($sp)
.L0dacb778:
    # Line 779
    ld	$s0,160($sp)
    ld	$s1,80($sp)
    ld	$s2,112($sp)
    ld	$s3,104($sp)
    ld	$s8,88($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0dacb794:
    ld	$s5,128($sp)
    ld	$s6,136($sp)
    ld	$s4,144($sp)
    ld	$a5,48($sp)
    ld	$s7,152($sp)
    ld	$s0,160($sp)
    # Line 758
    sltiu	$a5,$a5,5123
    bnez	$a5,.L0dacb808
    ld	$ra,168($sp)
    ld	$at,48($sp)
    sltiu	$at,$at,5124
    bnez	$at,.L0dacb718
    ld	$v1,48($sp)
    sltiu	$v1,$v1,5125
    bnez	$v1,.L0dacba44
    ld	$a4,48($sp)
    sltiu	$a4,$a4,5126
    beqzl	$a4,.L0dacb778
    ld	$gp,96($sp)
    b	.L0dacb71c
    ld	$a0,32($sp)
.L0dacb7e8:
    ld	$gp,96($sp)
    # Line 675
    ld	$s0,160($sp)
    ld	$s1,80($sp)
    ld	$s2,112($sp)
    ld	$s3,104($sp)
    ld	$s8,88($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0dacb808:
    ld	$a5,48($sp)
    # Line 758
    sltiu	$a5,$a5,5121
    bnez	$a5,.L0dacb9a0
    ld	$at,48($sp)
    sltiu	$at,$at,5122
    bnez	$at,.L0dacb718
    ld	$v1,48($sp)
    li	$a4,5122
    bnel	$v1,$a4,.L0dacb778
    ld	$gp,96($sp)
    b	.L0dacb71c
    ld	$a0,32($sp)
.L0dacb838:
    ld	$a5,48($sp)
    li	$v0,0x8034
    sltu	$a5,$a5,$v0
    bnez	$a5,.L0dacb9b8
    ld	$at,48($sp)
    sltu	$at,$v0,$at
    bnez	$at,.L0dacba74
    # Line 774
    nop	# was lw $t9, -32720($gp) # &sub_0dad0000
.L0dacb858:
    li	$a2,1
    ld	$a1,48($sp)
    addiu	$t9,$t9,-25416
    bal __glMgrim_HistogramEXT
    addiu	$a0,$sp,212
    ld	$a0,16($sp)
    # Line 775
    lw	$a4,-32284($s0)
    lw	$a3,-32276($s0)
    ld	$a2,48($sp)
    # lw $t9, -30572($gp) # &__glMgr_PackHistogram
    ld	$a5,32($sp)
    lw	$a1,212($sp)
    bal __glMgr_PackHistogram
    lbu	$a5,1072($a5)
    b	.L0dacb774
    ld	$ra,168($sp)
.L0dacb898:
    sd	$s2,32($sp)
    sd	$s3,48($sp)
    sd	$s6,136($sp)
    sd	$s4,144($sp)
    sd	$s5,128($sp)
    sd	$s7,152($sp)
    # Line 708
    ld	$at,8($sp)
    ld	$v1,56($sp)
    ld	$s1,16($sp)
    beqz	$at,.L0dacb5ac
    sd	$v1,120($sp)
    sd	$s2,32($sp)
    sd	$s3,48($sp)
    sd	$s5,128($sp)
    ld	$s7,24($sp)
    li	$s4,-1
    la	$s6,sub_0dad0000
    sll	$s7,$s7,0x2
    b	.L0dacb920
    addiu	$s6,$s6,-23796
.L0dacb8e8:
    # Line 720
    lw	$at,0($v0)
    andi	$at,$at,0x1
    beqz	$at,.L0dacb8e8
    nop
    lui	$a5,0xa
.L0dacb8fc:
    lui	$a4,0x7
    ori	$a4,$a4,0x4080
    ori	$a5,$a5,0x704
    # Line 708
    ld	$v1,120($sp)
    # Line 722
    sw	$a5,0($a4)
    sw	$zero,0($a4)
    # Line 708
    addiu	$v1,$v1,-1
    beq	$v1,$s4,.L0dacb5ac
    sd	$v1,120($sp)
.L0dacb920:
    # Line 709
    move	$s2,$zero
    # Line 711
    li	$s5,3
.L0dacb928:
    # Line 713
    lw	$s3,-32276($s0)
    addiu	$s3,$s3,-1
    beq	$s3,$s4,.L0dacb95c
    # Line 711
    addiu	$s5,$s5,-1
.L0dacb938:
    # Line 714
    lw	$a0,-32288($s0)
    addiu	$s1,$s1,4
    move	$a1,$s2
    # Line 713
    addiu	$s3,$s3,-1
    # Line 714
    bal __glMgr_FormatHistogram
    move	$t9,$s6
    # Line 715
    addiu	$s2,$s2,1
    # Line 713
    bne	$s3,$s4,.L0dacb938
    # Line 714
    sw	$v0,-4($s1)
.L0dacb95c:
    # Line 717
    ld	$at,24($sp)
    # Line 718
    addu	$s1,$s7,$s1
    # Line 711
    bne	$s5,$s4,.L0dacb928
    # Line 717
    addu	$s2,$at,$s2
    li	$a4,0xf200
    lui	$v0,0x7
    lui	$a5,0x7
    # Line 720
    lw	$v1,-25272($s0)
    ori	$a5,$a5,0x4080
    sw	$a4,0($a5)
    addu	$v0,$v0,$v1
    lw	$v1,0($v0)
    andi	$v1,$v1,0x1
    bnez	$v1,.L0dacb8fc
    lui	$a5,0xa
    b	.L0dacb8e8
    nop
.L0dacb9a0:
    # Line 758
    ld	$at,48($sp)
    li	$v1,5120
    bnel	$at,$v1,.L0dacb778
    ld	$gp,96($sp)
    b	.L0dacb71c
    ld	$a0,32($sp)
.L0dacb9b8:
    ld	$a4,48($sp)
    li	$v0,0x8033
    sltu	$a4,$a4,$v0
    bnez	$a4,.L0dacba5c
    ld	$a5,48($sp)
    sltu	$a5,$v0,$a5
    bnezl	$a5,.L0dacb778
    ld	$gp,96($sp)
    b	.L0dacb858
    # Line 774
    nop	# was lw $t9, -32720($gp) # &sub_0dad0000
.L0dacb9e0:
    # Line 656
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,168($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,96($sp)
    ld	$s1,80($sp)
    ld	$s2,112($sp)
    ld	$ra,168($sp)
    ld	$s3,104($sp)
    ld	$s8,88($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0dacba10:
    # Line 661
    # lw $t9, -27320($gp) # &__glSetError
    li	$a0,1282
    sd	$ra,168($sp)
    jal	__glSetError
    ld	$s0,160($sp)
    ld	$gp,96($sp)
    # Line 662
    ld	$s1,80($sp)
    ld	$s2,112($sp)
    ld	$ra,168($sp)
    ld	$s3,104($sp)
    ld	$s8,88($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0dacba44:
    # Line 758
    ld	$at,48($sp)
    li	$v1,5124
    bnel	$at,$v1,.L0dacb778
    ld	$gp,96($sp)
    b	.L0dacb71c
    ld	$a0,32($sp)
.L0dacba5c:
    ld	$a4,48($sp)
    li	$a5,0x8032
    bnel	$a4,$a5,.L0dacb778
    ld	$gp,96($sp)
    b	.L0dacb858
    # Line 774
    nop	# was lw $t9, -32720($gp) # &sub_0dad0000
.L0dacba74:
    # Line 758
    ld	$at,48($sp)
    li	$v0,0x8036
    sltu	$at,$at,$v0
    bnez	$at,.L0dacba9c
    ld	$v1,48($sp)
    sltu	$v1,$v0,$v1
    bnezl	$v1,.L0dacb778
    ld	$gp,96($sp)
    b	.L0dacb858
    # Line 774
    nop	# was lw $t9, -32720($gp) # &sub_0dad0000
.L0dacba9c:
    # Line 758
    ld	$a4,48($sp)
    li	$a5,0x8035
    bnel	$a4,$a5,.L0dacb778
    ld	$gp,96($sp)
    b	.L0dacb858
    # Line 774
    nop	# was lw $t9, -32720($gp) # &sub_0dad0000
.end __glMgrim_GetHistogramEXT

# Function: __glMgrim_ResetHistogramEXT
# Declared: Line 782 (Source lines: 782-795)
# Address: 0x0dacbab4 - 0x0dacbb48 (Size: 148 bytes, Frame: 32)
.globl __glMgrim_ResetHistogramEXT
.ent __glMgrim_ResetHistogramEXT
__glMgrim_ResetHistogramEXT:
    # Line 782
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x13
    addiu	$v1,$v1,11236
    beq	$at,$v0,.L0dacbb28
    addu	$gp,$t9,$v1
    # Line 785
    li	$a1,0x8024
    bne	$a0,$a1,.L0dacbb0c
    # Line 793
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 785
    lw	$a0,__glCurrentContext
    li	$at,0x81dd
    addu	$at,$at,$a0
    lbu	$at,0($at)
    beqz	$at,.L0dacbb1c
    # Line 790
    nop	# was lw $t9, -30588($gp) # &__glMgrResetHistogramMemory
    sd	$ra,8($sp)
    bal __glMgrResetHistogramMemory
    nop
    b	.L0dacbb1c
    ld	$ra,8($sp)
.L0dacbb0c:
    sd	$ra,8($sp)
    # Line 793
    jal	__glMgrResetHistogramMemory
    li	$a0,1280
    ld	$ra,8($sp)
.L0dacbb1c:
    ld	$gp,0($sp)
    # Line 795
    jr	$ra
    addiu	$sp,$sp,32
.L0dacbb28:
    # Line 785
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_ResetHistogramEXT

# Function: __glMgrim_GetHistogramParameterivEXT
# Declared: Line 798 (Source lines: 799-861)
# Address: 0x0dacbb48 - 0x0dacbe58 (Size: 784 bytes, Frame: 208)
.globl __glMgrim_GetHistogramParameterivEXT
.ent __glMgrim_GetHistogramParameterivEXT
__glMgrim_GetHistogramParameterivEXT:
    # Line 800
    lw	$a5,__glCurrentContext
    li	$a4,1
    # Line 799
    addiu	$sp,$sp,-80
    sd	$gp,24($sp)
    # Line 800
    lw	$at,__glBeginMode
    # Line 799
    lui	$v0,0x13
    addiu	$v0,$v0,11088
    # Line 800
    beq	$at,$a4,.L0dacbe08
    # Line 799
    addu	$gp,$t9,$v0
    # Line 802
    lw	$v1,3088($a5)
    beq	$v1,$a4,.L0dacbe28
    # Line 808
    li	$at,0x8024
    li	$a3,0x8025
    beq	$a0,$a3,.L0dacbbac
    # Line 810
    la	$a3,sub_0dbf0000
    # Line 808
    beq	$a0,$at,.L0dacbbd8
    # Line 836
    la	$a3,sub_0dbf0000
.L0dacbb8c:
    # Line 860
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 861
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dacbbac:
    # Line 810
    lui	$a0,0xffff
    ori	$a0,$a0,0x7fda
    addu	$a0,$a1,$a0
    addiu	$a3,$a3,-6104
    sltiu	$at,$a0,8
    sll	$a0,$a0,0x2
    beqz	$at,.L0dacbb8c
    addu	$a0,$a0,$a3
    lw	$a3,%lo(jtbl_0dbee828)($a0)
    jr	$a3
    sd	$a1,0($sp)
.L0dacbbd8:
    # Line 836
    addiu	$a3,$a3,-6072
    lui	$a0,0xffff
    ori	$a0,$a0,0x7fda
    addu	$a0,$a1,$a0
    sltiu	$at,$a0,8
    sll	$a0,$a0,0x2
    beqz	$at,.L0dacbb8c
    addu	$a0,$a0,$a3
    lw	$a3,%lo(jtbl_0dbee828)($a0)
    jr	$a3
    sd	$a1,0($sp)
.L0dacbc04:
    sd	$ra,32($sp)
    sd	$a2,8($sp)
    # Line 819
    li	$at,0x8028
    sd	$at,0($sp)
.L0dacbc14:
    sd	$a2,8($sp)
    sd	$ra,32($sp)
    # Line 825
    lui	$a0,0x1
    # lw $t9, -30468($gp) # &getbaseformat
    addu	$a0,$a5,$a0
    sd	$a0,16($sp)
    bal getbaseformat
    lw	$a0,-32248($a0)
    li	$a3,0x8000
    bne	$v0,$a3,.L0dacbc48
    ld	$ra,32($sp)
    b	.L0dacbc60
    li	$a0,8
.L0dacbc48:
    # lw $t9, -30468($gp) # &getbaseformat
    ld	$a0,16($sp)
    bal getbaseformat
    lw	$a0,-32248($a0)
    addiu	$a0,$v0,-6403
    ld	$ra,32($sp)
.L0dacbc60:
    la	$at,sub_0dbf0000
    addiu	$at,$at,-6696
    sll	$a3,$a0,0x2
    subu	$a3,$a3,$a0
    sll	$a3,$a3,0x2
    subu	$a3,$a3,$a0
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$at
    ld	$at,0($sp)
    sll	$at,$at,0x2
    addu	$a3,$a3,$at
    lui	$at,0xfffe
    addu	$a3,$a3,$at
    lw	$a3,-132($a3)
    ld	$gp,24($sp)
    li	$at,-1
    beq	$a3,$at,.L0dacbe48
    li	$a0,32
.L0dacbca8:
    ld	$at,8($sp)
    # Line 829
    addiu	$sp,$sp,80
    jr	$ra
    # Line 825
    sw	$a0,0($at)
.L0dacbcb8:
    sd	$ra,32($sp)
    sd	$a2,8($sp)
    # Line 844
    li	$v0,0x8028
    sd	$v0,0($sp)
.L0dacbcc8:
    sd	$a2,8($sp)
    sd	$ra,32($sp)
    # Line 850
    lui	$a0,0x1
    # lw $t9, -30468($gp) # &getbaseformat
    addu	$a0,$a5,$a0
    sd	$a0,16($sp)
    bal getbaseformat
    lw	$a0,-32268($a0)
    li	$a3,0x8000
    bne	$v0,$a3,.L0dacbcfc
    ld	$ra,32($sp)
    b	.L0dacbd14
    li	$a0,8
.L0dacbcfc:
    # lw $t9, -30468($gp) # &getbaseformat
    ld	$a0,16($sp)
    bal getbaseformat
    lw	$a0,-32268($a0)
    addiu	$a0,$v0,-6403
    ld	$ra,32($sp)
.L0dacbd14:
    la	$at,sub_0dbf0000
    addiu	$at,$at,-6696
    sll	$a3,$a0,0x2
    subu	$a3,$a3,$a0
    sll	$a3,$a3,0x2
    subu	$a3,$a3,$a0
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$at
    ld	$at,0($sp)
    sll	$at,$at,0x2
    addu	$a3,$a3,$at
    lui	$at,0xfffe
    addu	$a3,$a3,$at
    lw	$a3,-132($a3)
    ld	$gp,24($sp)
    li	$at,-1
    beq	$a3,$at,.L0dacbe50
    li	$a0,32
.L0dacbd5c:
    ld	$at,8($sp)
    # Line 854
    addiu	$sp,$sp,80
    jr	$ra
    # Line 850
    sw	$a0,0($at)
.L0dacbd6c:
    ld	$gp,24($sp)
    # Line 812
    li	$v0,0x8208
    addu	$v0,$v0,$a5
    lw	$v0,0($v0)
    # Line 814
    addiu	$sp,$sp,80
    jr	$ra
    # Line 812
    sw	$v0,0($a2)
.L0dacbd88:
    ld	$gp,24($sp)
    # Line 816
    li	$v1,0x8200
    addu	$v1,$v1,$a5
    lw	$v1,0($v1)
    # Line 817
    addiu	$sp,$sp,80
    jr	$ra
    # Line 816
    sw	$v1,0($a2)
.L0dacbda4:
    # Line 831
    sw	$zero,0($a2)
    ld	$gp,24($sp)
    # Line 832
    jr	$ra
    addiu	$sp,$sp,80
.L0dacbdb4:
    ld	$gp,24($sp)
    # Line 838
    li	$a0,0x81ec
    addu	$a0,$a0,$a5
    lw	$a0,0($a0)
    # Line 839
    addiu	$sp,$sp,80
    jr	$ra
    # Line 838
    sw	$a0,0($a2)
.L0dacbdd0:
    ld	$gp,24($sp)
    # Line 841
    li	$a3,0x81f4
    addu	$a3,$a3,$a5
    lw	$a3,0($a3)
    # Line 842
    addiu	$sp,$sp,80
    jr	$ra
    # Line 841
    sw	$a3,0($a2)
.L0dacbdec:
    ld	$gp,24($sp)
    # Line 856
    li	$at,0x81f0
    addu	$at,$at,$a5
    lbu	$at,0($at)
    # Line 857
    addiu	$sp,$sp,80
    jr	$ra
    # Line 856
    sw	$at,0($a2)
.L0dacbe08:
    # Line 802
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dacbe28:
    # Line 805
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 806
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dacbe48:
    b	.L0dacbca8
    # Line 825
    move	$a0,$zero
.L0dacbe50:
    b	.L0dacbd5c
    # Line 850
    move	$a0,$zero
.end __glMgrim_GetHistogramParameterivEXT

# Function: __glMgrim_GetHistogramParameterfvEXT
# Declared: Line 864 (Source lines: 865-929)
# Address: 0x0dacbe58 - 0x0dacc1f0 (Size: 920 bytes, Frame: 208)
.globl __glMgrim_GetHistogramParameterfvEXT
.ent __glMgrim_GetHistogramParameterfvEXT
__glMgrim_GetHistogramParameterfvEXT:
    # Line 866
    lw	$a5,__glCurrentContext
    li	$a4,1
    # Line 865
    addiu	$sp,$sp,-80
    sd	$gp,24($sp)
    # Line 866
    lw	$at,__glBeginMode
    # Line 865
    lui	$v0,0x13
    addiu	$v0,$v0,10304
    # Line 866
    beq	$at,$a4,.L0dacc1b0
    # Line 865
    addu	$gp,$t9,$v0
    # Line 868
    lw	$v1,3088($a5)
    beq	$v1,$a4,.L0dacc1d0
    # Line 874
    li	$at,0x8024
    li	$a3,0x8025
    beq	$a0,$a3,.L0dacbebc
    # Line 876
    la	$a3,sub_0dbf0000
    # Line 874
    beq	$a0,$at,.L0dacbee8
    # Line 903
    la	$a3,sub_0dbf0000
.L0dacbe9c:
    # Line 928
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 929
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dacbebc:
    # Line 876
    lui	$a0,0xffff
    ori	$a0,$a0,0x7fda
    addu	$a0,$a1,$a0
    addiu	$a3,$a3,-6040
    sltiu	$at,$a0,8
    sll	$a0,$a0,0x2
    beqz	$at,.L0dacbe9c
    addu	$a0,$a0,$a3
    lw	$a3,%lo(jtbl_0dbee868)($a0)
    jr	$a3
    sd	$a1,0($sp)
.L0dacbee8:
    # Line 903
    addiu	$a3,$a3,-6008
    lui	$a0,0xffff
    ori	$a0,$a0,0x7fda
    addu	$a0,$a1,$a0
    sltiu	$at,$a0,8
    sll	$a0,$a0,0x2
    beqz	$at,.L0dacbe9c
    addu	$a0,$a0,$a3
    lw	$a3,%lo(jtbl_0dbee868)($a0)
    jr	$a3
    sd	$a1,0($sp)
.L0dacbf14:
    sd	$ra,32($sp)
    sd	$a2,8($sp)
    # Line 886
    li	$at,0x8028
    sd	$at,0($sp)
.L0dacbf24:
    sd	$a2,8($sp)
    sd	$ra,32($sp)
    # Line 892
    lui	$a0,0x1
    # lw $t9, -30468($gp) # &getbaseformat
    addu	$a0,$a5,$a0
    sd	$a0,16($sp)
    bal getbaseformat
    lw	$a0,-32248($a0)
    li	$a3,0x8000
    bne	$v0,$a3,.L0dacbf58
    ld	$ra,32($sp)
    b	.L0dacbf70
    li	$a0,8
.L0dacbf58:
    # lw $t9, -30468($gp) # &getbaseformat
    ld	$a0,16($sp)
    bal getbaseformat
    lw	$a0,-32248($a0)
    addiu	$a0,$v0,-6403
    ld	$ra,32($sp)
.L0dacbf70:
    la	$at,sub_0dbf0000
    addiu	$at,$at,-6696
    sll	$a3,$a0,0x2
    subu	$a3,$a3,$a0
    sll	$a3,$a3,0x2
    subu	$a3,$a3,$a0
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$at
    ld	$at,0($sp)
    sll	$at,$at,0x2
    addu	$a3,$a3,$at
    lui	$at,0xfffe
    addu	$a3,$a3,$at
    lw	$a3,-132($a3)
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f1,_lit_bf800000
    c.eq.s	$f0,$f1
    move	$a0,$zero
    bc1t	.L0dacbfcc
    ld	$at,8($sp)
    li	$a0,32
.L0dacbfcc:
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    ld	$gp,24($sp)
    # Line 896
    addiu	$sp,$sp,80
    jr	$ra
    # Line 892
    swc1	$f1,0($at)
.L0dacbfe8:
    sd	$ra,32($sp)
    sd	$a2,8($sp)
    # Line 912
    li	$v0,0x8028
    sd	$v0,0($sp)
.L0dacbff8:
    sd	$a2,8($sp)
    sd	$ra,32($sp)
    # Line 918
    lui	$a0,0x1
    # lw $t9, -30468($gp) # &getbaseformat
    addu	$a0,$a5,$a0
    sd	$a0,16($sp)
    bal getbaseformat
    lw	$a0,-32268($a0)
    li	$a3,0x8000
    bne	$v0,$a3,.L0dacc02c
    ld	$ra,32($sp)
    b	.L0dacc044
    li	$a0,8
.L0dacc02c:
    # lw $t9, -30468($gp) # &getbaseformat
    ld	$a0,16($sp)
    bal getbaseformat
    lw	$a0,-32268($a0)
    addiu	$a0,$v0,-6403
    ld	$ra,32($sp)
.L0dacc044:
    la	$at,sub_0dbf0000
    addiu	$at,$at,-6696
    sll	$a3,$a0,0x2
    subu	$a3,$a3,$a0
    sll	$a3,$a3,0x2
    subu	$a3,$a3,$a0
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$at
    ld	$at,0($sp)
    sll	$at,$at,0x2
    addu	$a3,$a3,$at
    lui	$at,0xfffe
    addu	$a3,$a3,$at
    lw	$a3,-132($a3)
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f3,_lit_bf800000
    c.eq.s	$f2,$f3
    nop
    bc1t	.L0dacc0a4
    ld	$at,8($sp)
    b	.L0dacc0a8
    li	$a0,32
.L0dacc0a4:
    move	$a0,$zero
.L0dacc0a8:
    mtc1	$a0,$f3
    nop
    cvt.s.w	$f3,$f3
    ld	$gp,24($sp)
    # Line 922
    addiu	$sp,$sp,80
    jr	$ra
    # Line 918
    swc1	$f3,0($at)
.L0dacc0c4:
    # Line 878
    li	$v0,0x8208
    addu	$v0,$v0,$a5
    lw	$v0,0($v0)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f4
    nop
    cvt.s.l	$f4,$f4
    ld	$gp,24($sp)
    # Line 880
    addiu	$sp,$sp,80
    jr	$ra
    # Line 878
    swc1	$f4,0($a2)
.L0dacc0f4:
    # Line 882
    li	$v1,0x8200
    addu	$v1,$v1,$a5
    lw	$v1,0($v1)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    ld	$gp,24($sp)
    # Line 884
    addiu	$sp,$sp,80
    jr	$ra
    # Line 882
    swc1	$f0,0($a2)
.L0dacc11c:
    # Line 898
    mtc1	$zero,$f1
    ld	$gp,24($sp)
    # Line 899
    addiu	$sp,$sp,80
    jr	$ra
    # Line 898
    swc1	$f1,0($a2)
.L0dacc130:
    # Line 905
    li	$a0,0x81ec
    addu	$a0,$a0,$a5
    lw	$a0,0($a0)
    mtc1	$a0,$f2
    nop
    cvt.s.w	$f2,$f2
    ld	$gp,24($sp)
    # Line 906
    addiu	$sp,$sp,80
    jr	$ra
    # Line 905
    swc1	$f2,0($a2)
.L0dacc158:
    # Line 908
    li	$a3,0x81f4
    addu	$a3,$a3,$a5
    lw	$a3,0($a3)
    dsll32	$a3,$a3,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f3
    nop
    cvt.s.l	$f3,$f3
    ld	$gp,24($sp)
    # Line 910
    addiu	$sp,$sp,80
    jr	$ra
    # Line 908
    swc1	$f3,0($a2)
.L0dacc188:
    # Line 924
    li	$at,0x81f0
    addu	$at,$at,$a5
    lbu	$at,0($at)
    mtc1	$at,$f4
    nop
    cvt.s.w	$f4,$f4
    ld	$gp,24($sp)
    # Line 925
    addiu	$sp,$sp,80
    jr	$ra
    # Line 924
    swc1	$f4,0($a2)
.L0dacc1b0:
    # Line 868
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dacc1d0:
    # Line 871
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 872
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrim_GetHistogramParameterfvEXT

# Function: __glMgrResetMinMaxMemory
# Declared: Line 936 (Source lines: 936-950)
# Address: 0x0dacc1f0 - 0x0dacc2cc (Size: 220 bytes, Frame: 48)
.globl __glMgrResetMinMaxMemory
.ent __glMgrResetMinMaxMemory
__glMgrResetMinMaxMemory:
    # Line 941
    li	$a1,-2
    # Line 936
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$gp,32($sp)
    lui	$at,0x13
    addiu	$at,$at,9384
    addu	$gp,$t9,$at
    # Line 939
    lwc1	$f1,_lit_3f800000
    sd	$s0,16($sp)
    # Line 940
    mtc1	$zero,$f0
    # Line 939
    swc1	$f1,0($sp)
    # Line 941
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    lw	$s0,0($sp)
    # Line 940
    swc1	$f0,8($sp)
    # Line 941
    jal	__glMgrInitPixelStateCRAM
    move	$a0,$s0
    # Line 942
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s0
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 943
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s0
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 944
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s0
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 945
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    lw	$s0,8($sp)
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    move	$a0,$s0
    # Line 946
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s0
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 947
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s0
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 948
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s0
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 949
    li	$a1,-1
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    la	$a0,SYMBOL_LOCATION
    ld	$s0,16($sp)
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,472($a0)
    # Line 950
    ld	$ra,24($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrResetMinMaxMemory

# Function: __glMgrim_MinmaxEXT
# Declared: Line 953 (Source lines: 953-981)
# Address: 0x0dacc2cc - 0x0dacc3d4 (Size: 264 bytes, Frame: 208)
.globl __glMgrim_MinmaxEXT
.ent __glMgrim_MinmaxEXT
__glMgrim_MinmaxEXT:
    # Line 954
    lw	$a5,__glCurrentContext
    li	$v1,1
    # Line 953
    addiu	$sp,$sp,-80
    sd	$gp,24($sp)
    move	$v0,$a1
    # Line 954
    lw	$at,__glBeginMode
    # Line 953
    lui	$a1,0x13
    addiu	$a1,$a1,9164
    # Line 954
    beq	$at,$v1,.L0dacc3b4
    # Line 953
    addu	$gp,$t9,$a1
    sd	$ra,32($sp)
    sd	$v0,0($sp)
    sd	$a2,8($sp)
    # Line 960
    li	$a3,0x802e
    bne	$a0,$a3,.L0dacc38c
    sd	$a5,16($sp)
    # lw $t9, -30468($gp) # &getbaseformat
    bal getbaseformat
    ld	$a0,0($sp)
    # Line 969
    ld	$a1,16($sp)
    ld	$v1,0($sp)
    # Line 960
    beqz	$v0,.L0dacc38c
    # Line 969
    li	$at,0x8000
    # Line 960
    li	$a4,0x8049
    beq	$v0,$a4,.L0dacc38c
    # Line 969
    lui	$a3,0x1
    addu	$a1,$a1,$a3
    beq	$v0,$at,.L0dacc3a8
    sw	$v1,-32240($a1)
    # Line 970
    addiu	$a0,$v0,-6403
.L0dacc344:
    la	$a5,sub_0dbf0000
    addiu	$a5,$a5,-6696
    sll	$a4,$a0,0x2
    subu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    subu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a5
    # Line 971
    ld	$a5,8($sp)
    # Line 976
    # lw $t9, -30552($gp) # &__glMgrResetMinMaxMemory
    # Line 970
    lw	$a4,24($a4)
    # Line 971
    sb	$a5,-32243($a1)
    # Line 976
    bal __glMgrResetMinMaxMemory
    # Line 970
    sw	$a4,-32236($a1)
    # Line 981
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dacc38c:
    # Line 963
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 964
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dacc3a8:
    # Line 970
    li	$a0,8
    b	.L0dacc344
    nop
.L0dacc3b4:
    # Line 958
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrim_MinmaxEXT

# Function: __glMgr_FormatMinmax
# Declared: Line 984 (Source lines: 987-1061)
# Address: 0x0dacc3d4 - 0x0dacc8f4 (Size: 1312 bytes, Frame: 176)
.globl __glMgr_FormatMinmax
.ent __glMgr_FormatMinmax
__glMgr_FormatMinmax:
    # Line 987
    addiu	$sp,$sp,-176
    sd	$s3,64($sp)
    sd	$s4,80($sp)
    sd	$s5,88($sp)
    sd	$s6,72($sp)
    sd	$s8,104($sp)
    sd	$a0,56($sp)
    # Line 991
    addiu	$a0,$sp,124
    sd	$s1,0($sp)
    # Line 987
    move	$s1,$a5
    sd	$a4,48($sp)
    sd	$a3,40($sp)
    sd	$s0,8($sp)
    move	$s0,$a6
    sd	$s7,96($sp)
    sd	$s2,32($sp)
    move	$s2,$a2
    sw	$a1,124($sp)
    sd	$gp,24($sp)
    sd	$ra,16($sp)
    lui	$ra,0x13
    addiu	$ra,$ra,8900
    addu	$gp,$t9,$ra
    # Line 991
    # lw $t9, -32720($gp) # &sub_0dad0000
    move	$a1,$a2
    lw	$a2,0($a6)
    addiu	$t9,$t9,-25416
    bal __glMgrim_HistogramEXT
    addu	$a2,$a2,$a2
    # Line 992
    addiu	$s7,$s2,-5120
    move	$s3,$zero
    move	$s4,$zero
    li	$s8,4
    li	$s6,1
    b	.L0dacc4e4
    move	$s5,$zero
.L0dacc464:
    ld	$v1,56($sp)
    # Line 1025
    ld	$a7,40($sp)
    lwc1	$f0,3304($v1)
    addu	$a7,$s4,$a7
    lwc1	$f1,0($a7)
    mul.s	$f0,$f0,$f1
    lwc1	$f3,3280($v1)
    add.s	$f3,$f3,$f0
    trunc.l.s	$f3,$f3
    lw	$v0,124($sp)
    dmfc1	$at,$f3
    # Line 1026
    ld	$a7,48($sp)
    # Line 1025
    addu	$v0,$v0,$s4
    sw	$at,0($v0)
    # Line 1026
    addu	$a7,$s4,$a7
    lwc1	$f2,0($a7)
    lwc1	$f1,3304($v1)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,3280($v1)
    add.s	$f0,$f0,$f1
    lw	$v0,0($s0)
    trunc.l.s	$f0,$f0
    lw	$v1,124($sp)
    addu	$v0,$v0,$s3
    dmfc1	$at,$f0
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    sw	$at,0($v0)
.L0dacc4d4:
    # Line 992
    addiu	$s4,$s4,4
    addiu	$s3,$s3,1
    beq	$s3,$s8,.L0dacc538
    addiu	$s5,$s5,2
.L0dacc4e4:
    lw	$at,4($s0)
    sll	$a1,$s7,0x2
    sllv	$v0,$s6,$s3
    and	$at,$at,$v0
    beqz	$at,.L0dacc4d4
    addu	$a7,$s4,$s0
    lw	$a7,28($a7)
    lw	$v1,4($s1)
    sllv	$a7,$s6,$a7
    and	$v1,$v1,$a7
    beqz	$v1,.L0dacc588
    # Line 1033
    sltiu	$at,$s7,7
    # Line 992
    la	$a7,sub_0dbf0000
    sltiu	$at,$s7,7
    addiu	$a7,$a7,-5976
    beqz	$at,.L0dacc4d4
    addu	$a1,$a1,$a7
    lw	$at,%lo(jtbl_0dbee8a8)($a1)
    # Line 1030
    lw	$v1,124($sp)
    # Line 992
    jr	$at
    ld	$a7,40($sp)
.L0dacc538:
    # Line 1060
    move	$a1,$s2
    # lw $t9, -32720($gp) # &sub_0dad0000
    lw	$a0,124($sp)
    lw	$a2,0($s0)
    addiu	$t9,$t9,-25808
    bal __glMgrim_HistogramEXT
    addu	$a2,$a2,$a2
    ld	$gp,24($sp)
    # Line 1061
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    ld	$s2,32($sp)
    ld	$s3,64($sp)
    ld	$s4,80($sp)
    ld	$s5,88($sp)
    ld	$s6,72($sp)
    ld	$ra,16($sp)
    ld	$s7,96($sp)
    ld	$s8,104($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0dacc588:
    # Line 1033
    la	$a7,sub_0dbf0000
    sll	$a1,$s7,0x2
    addiu	$a7,$a7,-5944
    beqz	$at,.L0dacc4d4
    addu	$a1,$a1,$a7
    lw	$at,%lo(jtbl_0dbee8a8)($a1)
    jr	$at
    mtc1	$zero,$f3
.L0dacc5a8:
    ld	$v0,56($sp)
    # Line 1000
    ld	$v1,40($sp)
    lwc1	$f13,3288($v0)
    addu	$v1,$s4,$v1
    lwc1	$f14,0($v1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($v0)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    # Line 1001
    ld	$a0,56($sp)
    # Line 1000
    lw	$a3,124($sp)
    mfc1	$a2,$f15
    # Line 1001
    ld	$a1,48($sp)
    # Line 1000
    addu	$a3,$a3,$s3
    sb	$a2,0($a3)
    # Line 1001
    addu	$a1,$s4,$a1
    lwc1	$f14,0($a1)
    lwc1	$f13,3288($a0)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($a0)
    jal	floorf
    mul.s	$f12,$f12,$f13
    lw	$at,0($s0)
    trunc.w.s	$f0,$f0
    lw	$v0,124($sp)
    addu	$at,$at,$s3
    mfc1	$a7,$f0
    addu	$at,$at,$v0
    # Line 1003
    b	.L0dacc4d4
    # Line 1001
    sb	$a7,0($at)
.L0dacc62c:
    ld	$a7,56($sp)
    # Line 1005
    ld	$at,40($sp)
    lwc1	$f1,3288($a7)
    addu	$at,$s4,$at
    lwc1	$f2,0($at)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,3280($a7)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$v1,124($sp)
    mfc1	$v0,$f0
    # Line 1006
    ld	$at,48($sp)
    # Line 1005
    addu	$v1,$v1,$s3
    sb	$v0,0($v1)
    # Line 1006
    addu	$at,$s4,$at
    lwc1	$f3,0($at)
    lwc1	$f2,3288($a7)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,3280($a7)
    add.s	$f1,$f1,$f2
    lw	$v1,0($s0)
    trunc.w.s	$f1,$f1
    lw	$a7,124($sp)
    addu	$v1,$v1,$s3
    mfc1	$v0,$f1
    addu	$v1,$v1,$a7
    # Line 1008
    b	.L0dacc4d4
    # Line 1006
    sb	$v0,0($v1)
.L0dacc69c:
    ld	$v0,56($sp)
    # Line 1010
    ld	$v1,40($sp)
    lwc1	$f13,3296($v0)
    addu	$v1,$s4,$v1
    lwc1	$f14,0($v1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($v0)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    # Line 1011
    ld	$a0,56($sp)
    # Line 1010
    lw	$a3,124($sp)
    mfc1	$a2,$f15
    # Line 1011
    ld	$a1,48($sp)
    # Line 1010
    addu	$a3,$a3,$s5
    sh	$a2,0($a3)
    # Line 1011
    addu	$a1,$s4,$a1
    lwc1	$f14,0($a1)
    lwc1	$f13,3296($a0)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($a0)
    jal	floorf
    mul.s	$f12,$f12,$f13
    lw	$at,0($s0)
    trunc.w.s	$f0,$f0
    lw	$v0,124($sp)
    addu	$at,$at,$s3
    addu	$at,$at,$at
    mfc1	$a7,$f0
    addu	$at,$at,$v0
    # Line 1013
    b	.L0dacc4d4
    # Line 1011
    sh	$a7,0($at)
.L0dacc724:
    ld	$a7,56($sp)
    # Line 1015
    ld	$at,40($sp)
    lwc1	$f1,3296($a7)
    addu	$at,$s4,$at
    lwc1	$f2,0($at)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,3280($a7)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$v1,124($sp)
    mfc1	$v0,$f0
    # Line 1016
    ld	$at,48($sp)
    # Line 1015
    addu	$v1,$v1,$s5
    sh	$v0,0($v1)
    # Line 1016
    addu	$at,$s4,$at
    lwc1	$f3,0($at)
    lwc1	$f2,3296($a7)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,3280($a7)
    add.s	$f1,$f1,$f2
    lw	$v1,0($s0)
    trunc.w.s	$f1,$f1
    lw	$a7,124($sp)
    addu	$v1,$v1,$s3
    addu	$v1,$v1,$v1
    mfc1	$v0,$f1
    addu	$v1,$v1,$a7
    # Line 1018
    b	.L0dacc4d4
    # Line 1016
    sh	$v0,0($v1)
.L0dacc798:
    ld	$v0,56($sp)
    # Line 1020
    ld	$v1,40($sp)
    lwc1	$f13,3304($v0)
    addu	$v1,$s4,$v1
    lwc1	$f14,0($v1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($v0)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    # Line 1021
    ld	$a0,56($sp)
    # Line 1020
    lw	$a3,124($sp)
    mfc1	$a2,$f15
    # Line 1021
    ld	$a1,48($sp)
    # Line 1020
    addu	$a3,$a3,$s4
    sw	$a2,0($a3)
    # Line 1021
    addu	$a1,$s4,$a1
    lwc1	$f14,0($a1)
    lwc1	$f13,3304($a0)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($a0)
    jal	floorf
    mul.s	$f12,$f12,$f13
    lw	$at,0($s0)
    trunc.w.s	$f0,$f0
    lw	$v0,124($sp)
    addu	$at,$at,$s3
    sll	$at,$at,0x2
    mfc1	$a7,$f0
    addu	$at,$at,$v0
    # Line 1023
    b	.L0dacc4d4
    # Line 1021
    sw	$a7,0($at)
.L0dacc820:
    # Line 1030
    addu	$v1,$v1,$s4
    addu	$a7,$s4,$a7
    lwc1	$f2,0($a7)
    # Line 1031
    ld	$a7,48($sp)
    # Line 1030
    swc1	$f2,0($v1)
    # Line 1031
    addu	$a7,$s4,$a7
    lw	$v0,0($s0)
    lwc1	$f1,0($a7)
    lw	$v1,124($sp)
    addu	$v0,$v0,$s3
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    # Line 1032
    b	.L0dacc4d4
    # Line 1031
    swc1	$f1,0($v0)
.L0dacc858:
    # Line 1038
    lw	$v0,0($s0)
    lw	$v1,124($sp)
    addu	$v0,$v0,$s3
    addu	$v0,$v0,$v1
    sb	$zero,0($v0)
    lw	$at,124($sp)
    addu	$at,$s3,$at
    # Line 1040
    b	.L0dacc4d4
    # Line 1038
    sb	$zero,0($at)
.L0dacc87c:
    # Line 1043
    lw	$a7,0($s0)
    lw	$at,124($sp)
    addu	$a7,$a7,$s3
    addu	$a7,$a7,$a7
    addu	$a7,$a7,$at
    sh	$zero,0($a7)
    lw	$v1,124($sp)
    addu	$v1,$v1,$s5
    # Line 1045
    b	.L0dacc4d4
    # Line 1043
    sh	$zero,0($v1)
.L0dacc8a4:
    # Line 1048
    lw	$v0,0($s0)
    lw	$v1,124($sp)
    addu	$v0,$v0,$s3
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    sw	$zero,0($v0)
    lw	$at,124($sp)
    addu	$at,$at,$s4
    # Line 1050
    b	.L0dacc4d4
    # Line 1048
    sw	$zero,0($at)
.L0dacc8cc:
    # Line 1052
    lw	$a7,0($s0)
    lw	$at,124($sp)
    addu	$a7,$a7,$s3
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$at
    swc1	$f3,0($a7)
    lw	$v1,124($sp)
    addu	$v1,$v1,$s4
    b	.L0dacc4d4
    swc1	$f3,0($v1)
.end __glMgr_FormatMinmax

# Function: __glMgr_ReadCramDMAHQSetup
# Declared: Line 1070 (Source lines: 1071-1109)
# Address: 0x0dacc8f4 - 0x0dacca34 (Size: 320 bytes, Frame: 240)
.globl __glMgr_ReadCramDMAHQSetup
.ent __glMgr_ReadCramDMAHQSetup
__glMgr_ReadCramDMAHQSetup:
    # Line 1071
    addiu	$sp,$sp,-112
    sd	$a4,32($sp)
    sd	$a3,40($sp)
    sd	$s5,16($sp)
    move	$s5,$a2
    sd	$s1,8($sp)
    sd	$gp,48($sp)
    lui	$at,0x13
    addiu	$at,$at,7588
    addu	$gp,$t9,$at
    # Line 1074
    # lw $t9, -32124($gp) # &__glMgrim_Finish
    # Line 1071
    move	$s1,$a1
    sd	$ra,0($sp)
    # Line 1074
    jal	__glMgrim_Finish
    sd	$a0,24($sp)
    # Line 1102
    li	$a1,256
    move	$a0,$s5
    # Line 1095
    li	$a2,0xf308
    # Line 1102
    # lw $t9, -18684($gp) # &__glMgrim_pipe
    # Line 1092
    lui	$a4,0x8
    ori	$a4,$a4,0xb04
    # Line 1077
    lui	$v0,0xc
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    ori	$v0,$v0,0x4
    sw	$v0,0($v1)
    # Line 1096
    ld	$v0,40($sp)
    # Line 1089
    li	$a7,1
    # Line 1093
    ld	$a3,32($sp)
    # Line 1090
    lui	$a6,0x8
    ori	$a6,$a6,0x804
    # Line 1093
    sll	$a3,$a3,0x1
    ori	$a3,$a3,0xb9
    # Line 1088
    lui	$t0,0x8
    ori	$t0,$t0,0x704
    # Line 1086
    lui	$t1,0x8
    ori	$t1,$t1,0x604
    # Line 1083
    sll	$a5,$s5,0x2
    # Line 1084
    lui	$t2,0x8
    ori	$t2,$t2,0x504
    # Line 1081
    lui	$t8,0x8000
    # Line 1082
    lui	$t3,0x8
    ori	$t3,$t3,0x404
    # Line 1078
    li	$at,512
    # Line 1080
    lui	$ra,0x8
    ori	$ra,$ra,0x4
    # Line 1078
    sw	$at,0($v1)
    # Line 1080
    sw	$ra,0($v1)
    # Line 1081
    sw	$t8,0($v1)
    # Line 1082
    sw	$t3,0($v1)
    # Line 1083
    sw	$a5,0($v1)
    # Line 1084
    sw	$t2,0($v1)
    # Line 1085
    sw	$zero,0($v1)
    # Line 1086
    sw	$t1,0($v1)
    # Line 1087
    sw	$s1,0($v1)
    # Line 1088
    sw	$t0,0($v1)
    # Line 1089
    sw	$a7,0($v1)
    # Line 1090
    sw	$a6,0($v1)
    # Line 1091
    sw	$a5,0($v1)
    # Line 1092
    sw	$a4,0($v1)
    # Line 1093
    sw	$a3,0($v1)
    # Line 1095
    sw	$a2,0($v1)
    # Line 1102
    jal	__glMgrim_pipe
    # Line 1096
    sw	$v0,0($v1)
    # Line 1104
    # lw $t9, -30308($gp) # &__glMgrWaitForDMARead
    ld	$a0,24($sp)
    ld	$s5,16($sp)
    jal	__glMgrWaitForDMARead
    ld	$s1,8($sp)
    # Line 1108
    li	$a5,3584
    lui	$at,0xc
    lui	$ra,0x7
    ori	$ra,$ra,0x4080
    ori	$at,$at,0x4
    # Line 1107
    sw	$at,0($ra)
    # Line 1108
    sw	$a5,0($ra)
    # Line 1109
    ld	$ra,0($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glMgr_ReadCramDMAHQSetup

# Function: __glMgr_PackMinmax
# Declared: Line 1116 (Source lines: 1117-1170)
# Address: 0x0dacca34 - 0x0dacd218 (Size: 2020 bytes, Frame: 0)
.globl __glMgr_PackMinmax
.ent __glMgr_PackMinmax
__glMgr_PackMinmax:
    # Line 1118
    li	$v0,0x8032
    # Line 1117
    lui	$v1,0x13
    addiu	$v1,$v1,7268
    # Line 1118
    beq	$a1,$v0,.L0dacceec
    # Line 1117
    addu	$at,$t9,$v1
    # Line 1118
    li	$a5,0x8033
    beq	$a1,$a5,.L0daccbc4
    li	$a6,0x8034
    beq	$a1,$a6,.L0dacccd0
    li	$v0,0x8035
    beq	$a1,$v0,.L0daccdf0
    li	$v1,0x8036
    beql	$a1,$v1,.L0dacca74
    # Line 1159
    lwc1	$f0,0($a2)
    # Line 1170
    jr	$ra
    nop
.L0dacca74:
    # Line 1159
    lwc1	$f4,_lit_447fc000
    lwc1	$f2,8($a2)
    mul.s	$f0,$f0,$f4
    lwc1	$f5,_lit_40400000
    lwc1	$f3,12($a2)
    mul.s	$f2,$f2,$f4
    mul.s	$f3,$f3,$f5
    lwc1	$f1,4($a2)
    mul.s	$f1,$f1,$f4
    trunc.l.s	$f3,$f3
    trunc.l.s	$f2,$f2
    trunc.l.s	$f0,$f0
    trunc.l.s	$f1,$f1
    dmfc1	$t1,$f0
    dmfc1	$t0,$f2
    dmfc1	$a7,$f3
    dmfc1	$a1,$f1
    sll	$t0,$t0,0x0
    sll	$a7,$a7,0x0
    sll	$a1,$a1,0x0
    # Line 1165
    andi	$a6,$a1,0x3ff
    # Line 1159
    beqz	$a4,.L0daccfb0
    sll	$t1,$t1,0x0
    # Line 1163
    andi	$a6,$t0,0xf
    sll	$a6,$a6,0xc
    sll	$a5,$t1,0x18
    andi	$a2,$t1,0x300
    sll	$a2,$a2,0x8
    or	$a2,$a2,$a5
    andi	$a5,$a1,0x3f
    sll	$a5,$a5,0x12
    or	$a2,$a2,$a5
    andi	$a5,$a1,0x3c0
    sll	$a5,$a5,0x2
    or	$a5,$a5,$a6
    andi	$a6,$t0,0x3f0
    srl	$a6,$a6,0x4
    or	$a2,$a2,$a5
    andi	$a5,$a7,0x3
    sll	$a5,$a5,0x6
    or	$a5,$a5,$a6
    or	$a2,$a2,$a5
    sw	$a2,0($a0)
    lwc1	$f0,12($a3)
    mul.s	$f0,$f0,$f5
    lwc1	$f1,8($a3)
    mul.s	$f1,$f1,$f4
    lwc1	$f2,4($a3)
    mul.s	$f2,$f2,$f4
    lwc1	$f3,0($a3)
    mul.s	$f3,$f3,$f4
    trunc.l.s	$f1,$f1
    trunc.l.s	$f0,$f0
    dmfc1	$a2,$f1
    trunc.l.s	$f2,$f2
    sll	$a2,$a2,0x0
    andi	$a6,$a2,0xf
    trunc.l.s	$f3,$f3
    andi	$a2,$a2,0x3f0
    srl	$a2,$a2,0x4
    dmfc1	$a5,$f2
    dmfc1	$v1,$f3
    sll	$a6,$a6,0xc
    sll	$a5,$a5,0x0
    sll	$v1,$v1,0x0
    andi	$v0,$v1,0x300
    sll	$v1,$v1,0x18
    sll	$v0,$v0,0x8
    or	$v0,$v0,$v1
    andi	$v1,$a5,0x3f
    andi	$a5,$a5,0x3c0
    sll	$a5,$a5,0x2
    sll	$v1,$v1,0x12
    or	$v0,$v0,$v1
    dmfc1	$v1,$f0
    or	$a5,$a5,$a6
    or	$v0,$v0,$a5
    sll	$v1,$v1,0x0
    andi	$v1,$v1,0x3
    sll	$v1,$v1,0x6
    or	$v1,$v1,$a2
    or	$v0,$v0,$v1
    # Line 1170
    jr	$ra
    # Line 1163
    sw	$v0,4($a0)
.L0daccbc4:
    # Line 1126
    lwc1	$f1,4($a2)
    lwc1	$f4,_lit_41700000
    lwc1	$f0,0($a2)
    mul.s	$f1,$f1,$f4
    mul.s	$f0,$f0,$f4
    lwc1	$f3,12($a2)
    lwc1	$f2,8($a2)
    mul.s	$f3,$f3,$f4
    mul.s	$f2,$f2,$f4
    trunc.l.s	$f0,$f0
    trunc.l.s	$f1,$f1
    dmfc1	$a1,$f0
    trunc.l.s	$f2,$f2
    dmfc1	$a7,$f1
    sll	$a1,$a1,0x0
    trunc.l.s	$f3,$f3
    sll	$a7,$a7,0x0
    andi	$a7,$a7,0xf
    dmfc1	$t1,$f2
    dmfc1	$t0,$f3
    andi	$a1,$a1,0xf
    sll	$t1,$t1,0x0
    sll	$t0,$t0,0x0
    andi	$t0,$t0,0xf
    andi	$t1,$t1,0xf
    # Line 1132
    sll	$a5,$t1,0x8
    # Line 1126
    beqz	$a4,.L0dacd050
    # Line 1132
    sll	$a6,$t0,0xc
    # Line 1130
    sll	$a5,$a7,0xc
    sll	$v1,$a1,0x8
    or	$v1,$v1,$a5
    sll	$a5,$t0,0x4
    or	$a5,$a5,$t1
    or	$v1,$v1,$a5
    sh	$v1,0($a0)
    lwc1	$f0,4($a3)
    lwc1	$f1,0($a3)
    mul.s	$f0,$f0,$f4
    mul.s	$f1,$f1,$f4
    lwc1	$f3,8($a3)
    mul.s	$f3,$f3,$f4
    lwc1	$f2,12($a3)
    mul.s	$f2,$f2,$f4
    trunc.l.s	$f1,$f1
    trunc.l.s	$f3,$f3
    trunc.l.s	$f2,$f2
    dmfc1	$v1,$f1
    trunc.l.s	$f0,$f0
    dmfc1	$v0,$f3
    sll	$v1,$v1,0x0
    dmfc1	$a5,$f2
    sll	$v0,$v0,0x0
    andi	$v0,$v0,0xf
    sll	$a5,$a5,0x0
    andi	$a5,$a5,0xf
    sll	$a5,$a5,0x4
    or	$v0,$v0,$a5
    dmfc1	$a5,$f0
    andi	$v1,$v1,0xf
    sll	$v1,$v1,0x8
    sll	$a5,$a5,0x0
    andi	$a5,$a5,0xf
    sll	$a5,$a5,0xc
    or	$v1,$v1,$a5
    or	$v0,$v0,$v1
    # Line 1170
    jr	$ra
    # Line 1130
    sh	$v0,2($a0)
.L0dacccd0:
    # Line 1137
    lwc1	$f4,_lit_41f80000
    lwc1	$f2,4($a2)
    lwc1	$f0,0($a2)
    mul.s	$f2,$f2,$f4
    lwc1	$f1,8($a2)
    mul.s	$f0,$f0,$f4
    mul.s	$f1,$f1,$f4
    lwc1	$f3,12($a2)
    trunc.l.s	$f3,$f3
    trunc.l.s	$f1,$f1
    dmfc1	$a1,$f3
    trunc.l.s	$f0,$f0
    sll	$a1,$a1,0x0
    andi	$a1,$a1,0x1
    trunc.l.s	$f2,$f2
    # Line 1143
    sll	$v0,$a1,0xf
    # Line 1137
    dmfc1	$a7,$f0
    dmfc1	$t1,$f1
    dmfc1	$t0,$f2
    sll	$a7,$a7,0x0
    sll	$t1,$t1,0x0
    sll	$t0,$t0,0x0
    # Line 1141
    andi	$a6,$t0,0x7
    # Line 1137
    andi	$t1,$t1,0x1f
    beqz	$a4,.L0dacd0e4
    andi	$a7,$a7,0x1f
    # Line 1141
    sll	$a6,$a6,0xd
    sll	$v1,$t1,0x2
    sll	$v0,$a7,0x8
    or	$a6,$a6,$v0
    andi	$v0,$t0,0x18
    srl	$v0,$v0,0x3
    or	$a6,$a6,$v0
    sll	$v0,$a1,0x7
    or	$v0,$v0,$v1
    or	$a6,$a6,$v0
    sh	$a6,0($a0)
    lwc1	$f3,8($a3)
    mul.s	$f3,$f3,$f4
    lwc1	$f2,0($a3)
    lwc1	$f1,4($a3)
    mul.s	$f2,$f2,$f4
    mul.s	$f1,$f1,$f4
    trunc.l.s	$f2,$f2
    lwc1	$f0,12($a3)
    trunc.l.s	$f1,$f1
    trunc.l.s	$f0,$f0
    dmfc1	$v0,$f1
    dmfc1	$a5,$f2
    trunc.l.s	$f3,$f3
    sll	$v0,$v0,0x0
    sll	$a5,$a5,0x0
    andi	$a5,$a5,0x1f
    andi	$a6,$v0,0x7
    sll	$a6,$a6,0xd
    sll	$a5,$a5,0x8
    or	$a5,$a5,$a6
    dmfc1	$a6,$f0
    andi	$v0,$v0,0x18
    srl	$v0,$v0,0x3
    sll	$a6,$a6,0x0
    or	$a5,$a5,$v0
    dmfc1	$v0,$f3
    andi	$a6,$a6,0x1
    sll	$a6,$a6,0x7
    sll	$v0,$v0,0x0
    andi	$v0,$v0,0x1f
    sll	$v0,$v0,0x2
    or	$a6,$a6,$v0
    or	$a5,$a5,$a6
    # Line 1170
    jr	$ra
    # Line 1141
    sh	$a5,2($a0)
.L0daccdf0:
    # Line 1148
    lwc1	$f1,0($a2)
    lwc1	$f4,_lit_437f0000
    mul.s	$f1,$f1,$f4
    lwc1	$f0,8($a2)
    lwc1	$f3,4($a2)
    mul.s	$f0,$f0,$f4
    lwc1	$f2,12($a2)
    mul.s	$f3,$f3,$f4
    mul.s	$f2,$f2,$f4
    trunc.l.s	$f1,$f1
    trunc.l.s	$f2,$f2
    trunc.l.s	$f3,$f3
    dmfc1	$t1,$f1
    trunc.l.s	$f0,$f0
    sll	$t1,$t1,0x0
    dmfc1	$a7,$f3
    dmfc1	$t0,$f2
    dmfc1	$a1,$f0
    sll	$a7,$a7,0x0
    sll	$t0,$t0,0x0
    sll	$a1,$a1,0x0
    andi	$a1,$a1,0xff
    # Line 1152
    andi	$v1,$t0,0xff
    # Line 1148
    beqz	$a4,.L0dacd17c
    andi	$a7,$a7,0xff
    # Line 1152
    sll	$a6,$a7,0x10
    sll	$a5,$a1,0x8
    or	$v1,$v1,$a5
    sll	$a5,$t1,0x18
    or	$a5,$a5,$a6
    or	$v1,$v1,$a5
    sw	$v1,0($a0)
    lwc1	$f0,0($a3)
    mul.s	$f0,$f0,$f4
    lwc1	$f3,4($a3)
    mul.s	$f3,$f3,$f4
    lwc1	$f2,12($a3)
    mul.s	$f2,$f2,$f4
    lwc1	$f1,8($a3)
    mul.s	$f1,$f1,$f4
    trunc.l.s	$f0,$f0
    trunc.l.s	$f2,$f2
    trunc.l.s	$f1,$f1
    dmfc1	$v1,$f0
    dmfc1	$v0,$f2
    trunc.l.s	$f3,$f3
    dmfc1	$a5,$f1
    sll	$v0,$v0,0x0
    andi	$v0,$v0,0xff
    sll	$a5,$a5,0x0
    andi	$a5,$a5,0xff
    sll	$a5,$a5,0x8
    or	$v0,$v0,$a5
    dmfc1	$a5,$f3
    sll	$v1,$v1,0x0
    sll	$v1,$v1,0x18
    sll	$a5,$a5,0x0
    andi	$a5,$a5,0xff
    sll	$a5,$a5,0x10
    or	$v1,$v1,$a5
    or	$v0,$v0,$v1
    # Line 1170
    jr	$ra
    # Line 1152
    sw	$v0,4($a0)
.L0dacceec:
    # Line 1122
    lwc1	$f0,0($a2)
    lwc1	$f2,_lit_40e00000
    lwc1	$f1,_lit_40400000
    lwc1	$f3,8($a2)
    mul.s	$f0,$f0,$f2
    mul.s	$f3,$f3,$f1
    lwc1	$f4,4($a2)
    mul.s	$f4,$f4,$f2
    trunc.l.s	$f3,$f3
    trunc.l.s	$f0,$f0
    dmfc1	$v1,$f3
    dmfc1	$v0,$f0
    trunc.l.s	$f4,$f4
    sll	$v1,$v1,0x0
    sll	$v0,$v0,0x0
    andi	$v0,$v0,0x7
    dmfc1	$a5,$f4
    andi	$v1,$v1,0x3
    sll	$v1,$v1,0x6
    sll	$a5,$a5,0x0
    andi	$a5,$a5,0x7
    sll	$a5,$a5,0x3
    or	$v0,$v0,$a5
    or	$v0,$v0,$v1
    sb	$v0,0($a0)
    lwc1	$f0,0($a3)
    lwc1	$f3,8($a3)
    mul.s	$f0,$f0,$f2
    mul.s	$f3,$f3,$f1
    lwc1	$f4,4($a3)
    mul.s	$f4,$f4,$f2
    trunc.l.s	$f3,$f3
    trunc.l.s	$f0,$f0
    dmfc1	$v0,$f3
    dmfc1	$a6,$f0
    trunc.l.s	$f4,$f4
    sll	$v0,$v0,0x0
    sll	$a6,$a6,0x0
    andi	$a6,$a6,0x7
    dmfc1	$v1,$f4
    andi	$v0,$v0,0x3
    sll	$v0,$v0,0x6
    sll	$v1,$v1,0x0
    andi	$v1,$v1,0x7
    sll	$v1,$v1,0x3
    or	$a6,$a6,$v1
    or	$a6,$a6,$v0
    # Line 1170
    jr	$ra
    # Line 1122
    sb	$a6,1($a0)
.L0daccfb0:
    # Line 1165
    sll	$a6,$a6,0xa
    sll	$v0,$a7,0x1e
    andi	$a5,$t1,0x3ff
    or	$a5,$a5,$a6
    andi	$a6,$t0,0x3ff
    sll	$a6,$a6,0x14
    or	$a6,$a6,$v0
    or	$a5,$a5,$a6
    sw	$a5,0($a0)
    lwc1	$f2,12($a3)
    mul.s	$f2,$f2,$f5
    lwc1	$f1,8($a3)
    mul.s	$f1,$f1,$f4
    lwc1	$f0,0($a3)
    mul.s	$f0,$f0,$f4
    lwc1	$f3,4($a3)
    mul.s	$f3,$f3,$f4
    trunc.l.s	$f2,$f2
    trunc.l.s	$f0,$f0
    trunc.l.s	$f3,$f3
    dmfc1	$a5,$f2
    dmfc1	$v1,$f0
    trunc.l.s	$f1,$f1
    dmfc1	$a6,$f3
    sll	$v1,$v1,0x0
    andi	$v1,$v1,0x3ff
    sll	$a6,$a6,0x0
    andi	$a6,$a6,0x3ff
    sll	$a6,$a6,0xa
    or	$v1,$v1,$a6
    dmfc1	$a6,$f1
    sll	$a5,$a5,0x0
    sll	$a5,$a5,0x1e
    sll	$a6,$a6,0x0
    andi	$a6,$a6,0x3ff
    sll	$a6,$a6,0x14
    or	$a5,$a5,$a6
    or	$v1,$v1,$a5
    # Line 1170
    jr	$ra
    # Line 1165
    sw	$v1,4($a0)
.L0dacd050:
    # Line 1132
    or	$a5,$a5,$a6
    sll	$v1,$a7,0x4
    or	$v1,$v1,$a1
    or	$v1,$v1,$a5
    sh	$v1,0($a0)
    lwc1	$f1,12($a3)
    lwc1	$f2,8($a3)
    mul.s	$f1,$f1,$f4
    mul.s	$f2,$f2,$f4
    lwc1	$f0,0($a3)
    mul.s	$f0,$f0,$f4
    lwc1	$f3,4($a3)
    mul.s	$f3,$f3,$f4
    trunc.l.s	$f2,$f2
    trunc.l.s	$f0,$f0
    trunc.l.s	$f3,$f3
    dmfc1	$v1,$f2
    trunc.l.s	$f1,$f1
    dmfc1	$v0,$f0
    sll	$v1,$v1,0x0
    dmfc1	$a5,$f3
    sll	$v0,$v0,0x0
    andi	$v0,$v0,0xf
    sll	$a5,$a5,0x0
    andi	$a5,$a5,0xf
    sll	$a5,$a5,0x4
    or	$v0,$v0,$a5
    dmfc1	$a5,$f1
    andi	$v1,$v1,0xf
    sll	$v1,$v1,0x8
    sll	$a5,$a5,0x0
    andi	$a5,$a5,0xf
    sll	$a5,$a5,0xc
    or	$v1,$v1,$a5
    or	$v0,$v0,$v1
    # Line 1170
    jr	$ra
    # Line 1132
    sh	$v0,2($a0)
.L0dacd0e4:
    # Line 1143
    sll	$v1,$t1,0xa
    or	$v0,$v0,$v1
    andi	$a6,$t0,0x1f
    sll	$a6,$a6,0x5
    or	$a6,$a6,$a7
    or	$a6,$a6,$v0
    sh	$a6,0($a0)
    lwc1	$f1,8($a3)
    mul.s	$f1,$f1,$f4
    lwc1	$f2,0($a3)
    lwc1	$f3,4($a3)
    mul.s	$f2,$f2,$f4
    mul.s	$f3,$f3,$f4
    trunc.l.s	$f2,$f2
    trunc.l.s	$f3,$f3
    dmfc1	$a5,$f2
    trunc.l.s	$f1,$f1
    dmfc1	$v0,$f3
    sll	$a5,$a5,0x0
    andi	$a5,$a5,0x1f
    sll	$v0,$v0,0x0
    andi	$v0,$v0,0x1f
    sll	$v0,$v0,0x5
    lwc1	$f2,12($a3)
    or	$a5,$a5,$v0
    dmfc1	$v0,$f1
    trunc.l.s	$f2,$f2
    sll	$v0,$v0,0x0
    dmfc1	$a6,$f2
    andi	$v0,$v0,0x1f
    sll	$v0,$v0,0xa
    sll	$a6,$a6,0x0
    andi	$a6,$a6,0x1
    sll	$a6,$a6,0xf
    or	$a6,$a6,$v0
    or	$a5,$a5,$a6
    # Line 1170
    jr	$ra
    # Line 1143
    sh	$a5,2($a0)
.L0dacd17c:
    # Line 1154
    andi	$v1,$t1,0xff
    sll	$a5,$a7,0x8
    or	$v1,$v1,$a5
    sll	$a5,$t0,0x18
    sll	$a6,$a1,0x10
    or	$a5,$a5,$a6
    or	$v1,$v1,$a5
    sw	$v1,0($a0)
    lwc1	$f2,0($a3)
    mul.s	$f2,$f2,$f4
    lwc1	$f1,4($a3)
    mul.s	$f1,$f1,$f4
    lwc1	$f0,12($a3)
    mul.s	$f0,$f0,$f4
    trunc.l.s	$f2,$f2
    lwc1	$f3,8($a3)
    dmfc1	$v0,$f2
    trunc.l.s	$f1,$f1
    mul.s	$f3,$f3,$f4
    sll	$v0,$v0,0x0
    dmfc1	$a5,$f1
    andi	$v0,$v0,0xff
    trunc.l.s	$f0,$f0
    sll	$a5,$a5,0x0
    andi	$a5,$a5,0xff
    trunc.l.s	$f3,$f3
    sll	$a5,$a5,0x8
    dmfc1	$v1,$f0
    or	$v0,$v0,$a5
    dmfc1	$a5,$f3
    sll	$v1,$v1,0x0
    sll	$v1,$v1,0x18
    sll	$a5,$a5,0x0
    andi	$a5,$a5,0xff
    sll	$a5,$a5,0x10
    or	$v1,$v1,$a5
    or	$v0,$v0,$v1
    # Line 1170
    jr	$ra
    # Line 1154
    sw	$v0,4($a0)
.end __glMgr_PackMinmax

# Function: __glMgrim_GetMinmaxEXT
# Declared: Line 1173 (Source lines: 1174-1296)
# Address: 0x0dacd218 - 0x0dacd8a4 (Size: 1676 bytes, Frame: 240)
.globl __glMgrim_GetMinmaxEXT
.ent __glMgrim_GetMinmaxEXT
__glMgrim_GetMinmaxEXT:
    # Line 1174
    addiu	$sp,$sp,-240
    sd	$s5,72($sp)
    move	$s5,$a3
    sd	$s4,96($sp)
    move	$s4,$a2
    sd	$gp,104($sp)
    move	$v0,$a1
    lui	$a1,0x13
    sd	$s7,80($sp)
    # Line 1186
    li	$s7,1
    # Line 1174
    sw	$a4,228($sp)
    sd	$s0,88($sp)
    # Line 1175
    lw	$s0,__glCurrentContext
    # Line 1174
    addiu	$a1,$a1,5248
    # Line 1186
    lui	$v1,0x1
    lw	$at,3088($s0)
    addu	$v1,$s0,$v1
    sd	$v1,48($sp)
    lbu	$v1,-25437($v1)
    # Line 1174
    addu	$gp,$t9,$a1
    # Line 1186
    beq	$at,$s7,.L0dacd860
    sd	$v1,40($sp)
    # Line 1190
    li	$a4,0x802e
    beq	$a0,$a4,.L0dacd2ac
    # Line 1196
    sltiu	$a5,$s4,6403
    # Line 1193
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,112($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,104($sp)
    # Line 1194
    ld	$s0,88($sp)
    ld	$s4,96($sp)
    ld	$ra,112($sp)
    ld	$s5,72($sp)
    ld	$s7,80($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0dacd2ac:
    # Line 1196
    bnez	$a5,.L0dacd690
    sd	$s8,152($sp)
    sltiu	$s8,$s4,6411
    bnez	$s8,.L0dacd2c8
    li	$s8,0x8000
    bne	$s8,$s4,.L0dacd694
    # Line 1198
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0dacd2c8:
    sd	$s6,136($sp)
    # Line 1209
    li	$s6,0x8218
    addu	$s6,$s0,$s6
    andi	$at,$s6,0x7
    beqzl	$at,.L0dacd2f4
    sd	$s3,128($sp)
    sd	$ra,112($sp)
    sd	$v0,64($sp)
    # Line 1211
    li	$s6,0x821c
    addu	$s6,$s0,$s6
    sd	$s3,128($sp)
.L0dacd2f4:
    sd	$v0,64($sp)
    # Line 1213
    move	$a0,$s0
    move	$a1,$s6
    li	$a5,3
    addiu	$a4,$sp,0
    # lw $t9, -30344($gp) # &__glMgr_LockSingleDMAPool
    move	$a3,$zero
    sd	$ra,112($sp)
    jal	__glMgr_LockSingleDMAPool
    li	$a2,64
    sd	$s1,144($sp)
    ld	$s3,40($sp)
    andi	$at,$v0,0xff
    beqz	$at,.L0dacd6e8
    addiu	$s3,$s3,-1
    sd	$s2,120($sp)
    # Line 1218
    ld	$at,40($sp)
    sd	$s3,56($sp)
    # Line 1217
    la	$s3,SYMBOL_LOCATION
    # Line 1218
    ld	$s1,56($sp)
    beqz	$at,.L0dacd728
    # Line 1217
    lw	$s3,472($s3)
    # Line 1218
    li	$s2,-1
    lw	$a1,0($sp)
.L0dacd354:
    # Line 1219
    move	$a0,$s0
    # lw $t9, -30540($gp) # &__glMgr_ReadCramDMAHQSetup
    li	$a4,3
    move	$a3,$s3
    bal __glMgr_ReadCramDMAHQSetup
    li	$a2,8
    # Line 1218
    addiu	$s1,$s1,-1
    # Line 1220
    lw	$a1,0($sp)
    addiu	$a1,$a1,32
    # Line 1218
    bne	$s1,$s2,.L0dacd354
    # Line 1220
    sw	$a1,0($sp)
    # Line 1224
    beq	$s8,$s4,.L0dacd684
    ld	$s3,56($sp)
    # Line 1239
    # lw $t9, -30468($gp) # &getbaseformat
.L0dacd38c:
    bal getbaseformat
    move	$a0,$s4
    beq	$s8,$v0,.L0dacd688
    nop
    bne	$s8,$s4,.L0dacd3ac
    nop	# was lw $t9, -30468($gp) # &getbaseformat
    b	.L0dacd3b4
    li	$v0,0x8000
.L0dacd3ac:
    bal getbaseformat
    move	$a0,$s4
.L0dacd3b4:
    addiu	$s1,$v0,-6403
.L0dacd3b8:
    # Line 1243
    # lw $t9, -30468($gp) # &getbaseformat
    ld	$a0,48($sp)
    bal getbaseformat
    lw	$a0,-32240($a0)
    bne	$s8,$v0,.L0dacd3dc
    ld	$ra,112($sp)
    li	$t3,8
    b	.L0dacd3f8
    ld	$s8,152($sp)
.L0dacd3dc:
    # lw $t9, -30468($gp) # &getbaseformat
    ld	$a0,48($sp)
    ld	$s8,152($sp)
    bal getbaseformat
    lw	$a0,-32240($a0)
    addiu	$t3,$v0,-6403
    ld	$ra,112($sp)
.L0dacd3f8:
    # Line 1247
    move	$s4,$zero
    li	$t1,4
    mtc1	$zero,$f7
    addiu	$a2,$sp,24
    addiu	$a0,$sp,8
    ld	$t0,40($sp)
    la	$t8,sub_0dbf0000
    move	$a3,$zero
    addiu	$t0,$t0,-2
    addiu	$t8,$t8,-6696
    sll	$t2,$s1,0x2
    subu	$t2,$t2,$s1
    sll	$t2,$t2,0x2
    subu	$t2,$t2,$s1
    sll	$t2,$t2,0x2
    addu	$t2,$t2,$t8
    b	.L0dacd450
    lw	$a7,20($t2)
.L0dacd440:
    addiu	$a0,$a0,4
    addiu	$a2,$a2,4
    beq	$s4,$t1,.L0dacd55c
    addiu	$a3,$a3,4
.L0dacd450:
    # Line 1249
    addu	$v0,$a3,$s6
    # Line 1253
    ld	$v1,40($sp)
    # Line 1247
    sllv	$at,$s7,$s4
    and	$at,$at,$a7
    beqz	$at,.L0dacd654
    addiu	$s4,$s4,1
    # Line 1249
    lwc1	$f4,0($v0)
    swc1	$f4,0($a0)
    # Line 1253
    move	$s1,$t0
    # Line 1250
    lwc1	$f5,16($v0)
    # Line 1251
    addiu	$v0,$v0,32
    # Line 1253
    beq	$v1,$s7,.L0dacd440
    # Line 1250
    swc1	$f5,0($a2)
    # Line 1253
    move	$a6,$s3
    andi	$v1,$s3,0x1
    beqz	$v1,.L0dacd4d0
    sra	$a4,$a6,0x1
    lwc1	$f6,0($v0)
    c.lt.s	$f6,$f4
    nop
    bc1f	.L0dacd4b0
    addiu	$s1,$s1,-1
    # Line 1255
    mov.s	$f4,$f6
    swc1	$f6,0($a0)
.L0dacd4b0:
    lwc1	$f6,16($v0)
    c.lt.s	$f5,$f6
    nop
    bc1f	.L0dacd4cc
    # Line 1260
    addiu	$v0,$v0,32
    # Line 1258
    mov.s	$f5,$f6
    swc1	$f6,0($a2)
.L0dacd4cc:
    sra	$a4,$a6,0x1
.L0dacd4d0:
    beqz	$a4,.L0dacd440
    nop
    b	.L0dacd508
    # Line 1253
    lwc1	$f6,0($v0)
.L0dacd4e0:
    # Line 1255
    lwc1	$f6,48($v0)
.L0dacd4e4:
    c.lt.s	$f5,$f6
    nop
    bc1f	.L0dacd4fc
    # Line 1260
    addiu	$v0,$v0,64
    # Line 1258
    mov.s	$f5,$f6
    swc1	$f6,0($a2)
.L0dacd4fc:
    # Line 1253
    beq	$s1,$s2,.L0dacd440
    nop
    lwc1	$f6,0($v0)
.L0dacd508:
    c.lt.s	$f6,$f4
    nop
    bc1f	.L0dacd520
    addiu	$s1,$s1,-2
    # Line 1255
    mov.s	$f4,$f6
    swc1	$f6,0($a0)
.L0dacd520:
    lwc1	$f6,16($v0)
    c.lt.s	$f5,$f6
    nop
    bc1fl	.L0dacd540
    # Line 1253
    lwc1	$f6,32($v0)
    # Line 1258
    mov.s	$f5,$f6
    swc1	$f6,0($a2)
    # Line 1253
    lwc1	$f6,32($v0)
.L0dacd540:
    c.lt.s	$f6,$f4
    nop
    bc1fl	.L0dacd4e4
    # Line 1255
    lwc1	$f6,48($v0)
    mov.s	$f4,$f6
    b	.L0dacd4e0
    swc1	$f6,0($a0)
.L0dacd55c:
    # Line 1270
    sltiu	$a5,$s5,5126
    bnez	$a5,.L0dacd5cc
    ld	$s2,120($sp)
    ld	$s3,128($sp)
    ld	$s6,136($sp)
    sltiu	$at,$s5,5127
    bnez	$at,.L0dacd5ec
    ld	$s1,144($sp)
    li	$v0,0x8034
    sltu	$v1,$s5,$v0
    bnez	$v1,.L0dacd7e8
    sltu	$a4,$v0,$s5
    bnez	$a4,.L0dacd830
    # Line 1287
    nop	# was lw $t9, -32720($gp) # &sub_0dad0000
.L0dacd594:
    li	$a2,1
    move	$a1,$s5
    addiu	$t9,$t9,-25416
    bal __glMgrim_HistogramEXT
    addiu	$a0,$sp,228
    # Line 1288
    lbu	$a4,1072($s0)
    addiu	$a3,$sp,24
    # lw $t9, -30536($gp) # &__glMgr_PackMinmax
    addiu	$a2,$sp,8
    move	$a1,$s5
    bal __glMgr_PackMinmax
    lw	$a0,228($sp)
    b	.L0dacd62c
    ld	$ra,112($sp)
.L0dacd5cc:
    ld	$s2,120($sp)
    ld	$s3,128($sp)
    ld	$s6,136($sp)
    # Line 1270
    sltiu	$at,$s5,5123
    bnez	$at,.L0dacd6c4
    ld	$s1,144($sp)
    sltiu	$v1,$s5,5124
    beqz	$v1,.L0dacd7cc
.L0dacd5ec:
    # Line 1278
    move	$a0,$s0
.L0dacd5f0:
    addiu	$a6,$t2,16
    addiu	$a4,$sp,24
    addiu	$a3,$sp,8
    move	$a2,$s5
    lw	$a1,228($sp)
    # lw $t9, -30544($gp) # &__glMgr_FormatMinmax
    sll	$a5,$t3,0x2
    subu	$a5,$a5,$t3
    sll	$a5,$a5,0x2
    subu	$a5,$a5,$t3
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$t8
    bal __glMgr_FormatMinmax
    addiu	$a5,$a5,16
    ld	$ra,112($sp)
.L0dacd62c:
    ld	$at,64($sp)
.L0dacd630:
    # Line 1290
    beq	$s7,$at,.L0dacd850
    # Line 1294
    nop	# was lw $t9, -30552($gp) # &__glMgrResetMinMaxMemory
.L0dacd638:
    ld	$gp,104($sp)
    # Line 1296
    ld	$s0,88($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    ld	$s7,80($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0dacd654:
    # Line 1263
    swc1	$f7,0($a0)
    b	.L0dacd440
    swc1	$f7,0($a2)
.L0dacd660:
    li	$s7,1
    li	$s8,0x8000
    ld	$s3,56($sp)
    ld	$s6,176($sp)
    ld	$s5,168($sp)
    ld	$s4,160($sp)
.L0dacd678:
    # Line 1224
    li	$s2,-1
.L0dacd67c:
    bne	$s8,$s4,.L0dacd38c
    # Line 1239
    nop	# was lw $t9, -30468($gp) # &getbaseformat
.L0dacd684:
    li	$v0,0x8000
.L0dacd688:
    b	.L0dacd3b8
    li	$s1,8
.L0dacd690:
    # Line 1198
    # lw $t9, -27320($gp) # &__glSetError
.L0dacd694:
    li	$a0,1280
    sd	$ra,112($sp)
    jal	__glSetError
    ld	$s8,152($sp)
    ld	$gp,104($sp)
    # Line 1199
    ld	$s0,88($sp)
    ld	$s4,96($sp)
    ld	$ra,112($sp)
    ld	$s5,72($sp)
    ld	$s7,80($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0dacd6c4:
    # Line 1270
    sltiu	$v1,$s5,5121
    bnez	$v1,.L0dacd7b8
    sltiu	$a4,$s5,5122
    bnez	$a4,.L0dacd5ec
    li	$a5,5122
    bne	$s5,$a5,.L0dacd630
    ld	$at,64($sp)
    b	.L0dacd5f0
    # Line 1278
    move	$a0,$s0
.L0dacd6e8:
    # Line 1224
    ld	$at,40($sp)
    sd	$s2,120($sp)
    # Line 1223
    move	$s2,$s6
    # Line 1224
    blez	$at,.L0dacd678
    move	$s1,$zero
    sd	$s4,160($sp)
    sd	$s3,56($sp)
    lui	$s8,0x7
    sd	$s5,168($sp)
    li	$s5,8
    sd	$s6,176($sp)
    lui	$s6,0x7
    lui	$s7,0xa
    ori	$s7,$s7,0x704
    b	.L0dacd748
    ori	$s6,$s6,0x4080
.L0dacd728:
    # Line 1218
    li	$s2,-1
    b	.L0dacd67c
    ld	$s3,56($sp)
.L0dacd734:
    # Line 1224
    addiu	$s1,$s1,1
.L0dacd738:
    ld	$at,40($sp)
    # Line 1231
    sw	$s7,0($s6)
    # Line 1224
    beq	$at,$s1,.L0dacd660
    # Line 1231
    sw	$zero,0($s6)
.L0dacd748:
    la	$s3,SYMBOL_LOCATION
    # Line 1226
    move	$s4,$zero
    # Line 1225
    lw	$s3,472($s3)
.L0dacd754:
    # Line 1227
    li	$a2,1
    move	$a1,$zero
    move	$a0,$s3
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 1226
    addiu	$s3,$s3,1
    addiu	$s4,$s4,1
    # Line 1227
    jal	__Mgr_ReturnMode
    addiu	$s2,$s2,4
    # Line 1226
    bne	$s4,$s5,.L0dacd754
    # Line 1227
    sw	$v0,-4($s2)
    ld	$v0,48($sp)
    # Line 1229
    lw	$v0,-25272($v0)
    li	$v1,0xf200
    sw	$v1,0($s6)
    addu	$v0,$s8,$v0
    lw	$at,0($v0)
    andi	$at,$at,0x1
    bnezl	$at,.L0dacd738
    # Line 1224
    addiu	$s1,$s1,1
.L0dacd7a0:
    # Line 1229
    lw	$v1,0($v0)
    andi	$v1,$v1,0x1
    beqz	$v1,.L0dacd7a0
    nop
    b	.L0dacd734
    nop
.L0dacd7b8:
    # Line 1270
    li	$a4,5120
    bne	$s5,$a4,.L0dacd630
    ld	$at,64($sp)
    b	.L0dacd5f0
    # Line 1278
    move	$a0,$s0
.L0dacd7cc:
    # Line 1270
    sltiu	$a5,$s5,5125
    bnez	$a5,.L0dacd808
    sltiu	$at,$s5,5126
    beqz	$at,.L0dacd630
    ld	$at,64($sp)
    b	.L0dacd5f0
    # Line 1278
    move	$a0,$s0
.L0dacd7e8:
    # Line 1270
    li	$v0,0x8033
    sltu	$v1,$s5,$v0
    bnez	$v1,.L0dacd81c
    sltu	$a4,$v0,$s5
    bnez	$a4,.L0dacd630
    ld	$at,64($sp)
    b	.L0dacd594
    # Line 1287
    nop	# was lw $t9, -32720($gp) # &sub_0dad0000
.L0dacd808:
    # Line 1270
    li	$a5,5124
    bne	$s5,$a5,.L0dacd630
    ld	$at,64($sp)
    b	.L0dacd5f0
    # Line 1278
    move	$a0,$s0
.L0dacd81c:
    # Line 1270
    li	$at,0x8032
    bne	$s5,$at,.L0dacd630
    ld	$at,64($sp)
    b	.L0dacd594
    # Line 1287
    nop	# was lw $t9, -32720($gp) # &sub_0dad0000
.L0dacd830:
    # Line 1270
    li	$v0,0x8036
    sltu	$v1,$s5,$v0
    bnez	$v1,.L0dacd890
    sltu	$a4,$v0,$s5
    bnez	$a4,.L0dacd630
    ld	$at,64($sp)
    b	.L0dacd594
    # Line 1287
    nop	# was lw $t9, -32720($gp) # &sub_0dad0000
.L0dacd850:
    # Line 1294
    bal __glMgrResetMinMaxMemory
    nop
    b	.L0dacd638
    ld	$ra,112($sp)
.L0dacd860:
    # Line 1189
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,112($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,104($sp)
    # Line 1190
    ld	$s0,88($sp)
    ld	$s4,96($sp)
    ld	$ra,112($sp)
    ld	$s5,72($sp)
    ld	$s7,80($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0dacd890:
    # Line 1270
    li	$a5,0x8035
    bne	$s5,$a5,.L0dacd630
    ld	$at,64($sp)
    b	.L0dacd594
    # Line 1287
    nop	# was lw $t9, -32720($gp) # &sub_0dad0000
.end __glMgrim_GetMinmaxEXT

# Function: __glMgrim_ResetMinmaxEXT
# Declared: Line 1299 (Source lines: 1299-1307)
# Address: 0x0dacd8a4 - 0x0dacd920 (Size: 124 bytes, Frame: 32)
.globl __glMgrim_ResetMinmaxEXT
.ent __glMgrim_ResetMinmaxEXT
__glMgrim_ResetMinmaxEXT:
    # Line 1299
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x13
    addiu	$v1,$v1,3572
    beq	$at,$v0,.L0dacd900
    addu	$gp,$t9,$v1
    # Line 1300
    li	$a1,0x802e
    beq	$a0,$a1,.L0dacd8ec
    sd	$ra,8($sp)
    # Line 1305
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0dacd8e0:
    ld	$gp,0($sp)
    # Line 1307
    jr	$ra
    addiu	$sp,$sp,32
.L0dacd8ec:
    # Line 1303
    # lw $t9, -30552($gp) # &__glMgrResetMinMaxMemory
    bal __glMgrResetMinMaxMemory
    nop
    b	.L0dacd8e0
    ld	$ra,8($sp)
.L0dacd900:
    # Line 1300
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_ResetMinmaxEXT

# Function: __glMgrim_GetMinmaxParameterivEXT
# Declared: Line 1310 (Source lines: 1310-1328)
# Address: 0x0dacd920 - 0x0dacda18 (Size: 248 bytes, Frame: 208)
.globl __glMgrim_GetMinmaxParameterivEXT
.ent __glMgrim_GetMinmaxParameterivEXT
__glMgrim_GetMinmaxParameterivEXT:
    # Line 1311
    li	$v0,1
    # Line 1310
    addiu	$sp,$sp,-80
    sd	$a2,0($sp)
    sd	$s0,24($sp)
    move	$s0,$a1
    sd	$gp,16($sp)
    lui	$v1,0x13
    addiu	$v1,$v1,3448
    # Line 1311
    lw	$at,__glBeginMode
    lw	$a3,__glCurrentContext
    # Line 1310
    addu	$gp,$t9,$v1
    # Line 1311
    beq	$at,$v0,.L0dacd9f4
    sd	$a3,8($sp)
    # Line 1313
    li	$at,0x802e
    beq	$a0,$at,.L0dacd970
    # Line 1316
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,32($sp)
.L0dacd970:
    # Line 1318
    li	$v0,0x802f
    beq	$s0,$v0,.L0dacd9cc
    li	$v1,0x8030
    beq	$s0,$v1,.L0dacd9a8
    # Line 1324
    li	$a0,0x820d
    # Line 1327
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1328
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dacd9a8:
    # Line 1324
    ld	$a3,8($sp)
    ld	$gp,16($sp)
    # Line 1325
    ld	$s0,24($sp)
    # Line 1324
    addu	$a0,$a0,$a3
    ld	$a3,0($sp)
    lbu	$a0,0($a0)
    # Line 1325
    addiu	$sp,$sp,80
    jr	$ra
    # Line 1324
    sw	$a0,0($a3)
.L0dacd9cc:
    # Line 1320
    ld	$at,8($sp)
    li	$s0,0x8210
    addu	$s0,$s0,$at
    ld	$at,0($sp)
    lw	$s0,0($s0)
    ld	$gp,16($sp)
    sw	$s0,0($at)
    # Line 1322
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dacd9f4:
    # Line 1313
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrim_GetMinmaxParameterivEXT

# Function: __glMgrim_GetMinmaxParameterfvEXT
# Declared: Line 1331 (Source lines: 1332-1350)
# Address: 0x0dacda18 - 0x0dacdb30 (Size: 280 bytes, Frame: 208)
.globl __glMgrim_GetMinmaxParameterfvEXT
.ent __glMgrim_GetMinmaxParameterfvEXT
__glMgrim_GetMinmaxParameterfvEXT:
    # Line 1333
    li	$v0,1
    # Line 1332
    addiu	$sp,$sp,-80
    sd	$a2,0($sp)
    sd	$s0,24($sp)
    move	$s0,$a1
    sd	$gp,16($sp)
    lui	$v1,0x13
    addiu	$v1,$v1,3200
    # Line 1333
    lw	$at,__glBeginMode
    lw	$a3,__glCurrentContext
    # Line 1332
    addu	$gp,$t9,$v1
    # Line 1333
    beq	$at,$v0,.L0dacdb0c
    sd	$a3,8($sp)
    # Line 1335
    li	$at,0x802e
    beq	$a0,$at,.L0dacda68
    # Line 1338
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,32($sp)
.L0dacda68:
    # Line 1340
    li	$v0,0x802f
    beq	$s0,$v0,.L0dacdad0
    li	$v1,0x8030
    beq	$s0,$v1,.L0dacdaa0
    # Line 1346
    ld	$a0,0($sp)
    # Line 1349
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1350
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dacdaa0:
    # Line 1346
    ld	$s0,8($sp)
    li	$a3,0x820d
    addu	$a3,$a3,$s0
    lbu	$a3,0($a3)
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    ld	$gp,16($sp)
    # Line 1347
    ld	$s0,24($sp)
    addiu	$sp,$sp,80
    jr	$ra
    # Line 1346
    swc1	$f0,0($a0)
.L0dacdad0:
    # Line 1342
    ld	$at,0($sp)
    ld	$v1,8($sp)
    li	$v0,0x8210
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f1
    nop
    cvt.s.l	$f1,$f1
    ld	$gp,16($sp)
    # Line 1344
    ld	$s0,24($sp)
    addiu	$sp,$sp,80
    jr	$ra
    # Line 1342
    swc1	$f1,0($at)
.L0dacdb0c:
    # Line 1335
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrim_GetMinmaxParameterfvEXT

.late_rodata
jtbl_0dbee7c8:
    .word .L0dac9be0
    .word .L0dac9be0
    .word .L0dac9b68
    .word .L0dac9b68
    .word .L0dac9be8
    .word .L0dac9be8
    .word .L0dac9be8
jtbl_0dbee7e8:
    .word .L0dac9e84
    .word .L0dac9e84
    .word .L0daca00c
    .word .L0daca00c
    .word .L0daca080
    .word .L0daca080
    .word .L0daca0fc
jtbl_0dbee808:
    .word .L0daca198
    .word .L0daca198
    .word .L0dac9f60
    .word .L0dac9f60
    .word .L0daca1d4
    .word .L0daca1d4
    .word .L0daca214
jtbl_0dbee828:
    .word .L0dacbd88
    .word .L0dacbd6c
    .word .L0dacbc14
    .word .L0dacbc14
    .word .L0dacbc14
    .word .L0dacbc14
    .word .L0dacbc04
    .word .L0dacbda4
    .word .L0dacbdb4
    .word .L0dacbdd0
    .word .L0dacbcc8
    .word .L0dacbcc8
    .word .L0dacbcc8
    .word .L0dacbcc8
    .word .L0dacbcb8
    .word .L0dacbdec
jtbl_0dbee868:
    .word .L0dacc0f4
    .word .L0dacc0c4
    .word .L0dacbf24
    .word .L0dacbf24
    .word .L0dacbf24
    .word .L0dacbf24
    .word .L0dacbf14
    .word .L0dacc11c
    .word .L0dacc130
    .word .L0dacc158
    .word .L0dacbff8
    .word .L0dacbff8
    .word .L0dacbff8
    .word .L0dacbff8
    .word .L0dacbfe8
    .word .L0dacc188
jtbl_0dbee8a8:
    .word .L0dacc5a8
    .word .L0dacc62c
    .word .L0dacc69c
    .word .L0dacc724
    .word .L0dacc798
    .word .L0dacc464
    .word .L0dacc820
jtbl_0dbee8c8:
    .word .L0dacc858
    .word .L0dacc858
    .word .L0dacc87c
    .word .L0dacc87c
    .word .L0dacc8a4
    .word .L0dacc8a4
    .word .L0dacc8cc

.rdata
_lit_3f800000:
    .word 0x3f800000
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
_lit_bf800000:
    .word 0xbf800000

