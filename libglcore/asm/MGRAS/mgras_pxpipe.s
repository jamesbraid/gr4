# Source: ../MGRAS/mgras_pxpipe.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_pxpipe.c
# Total Functions: 67

.text

# Function: __glMgrSaveRSS
# Declared: Line 37 (Source lines: 45-51)
# Address: 0x0dae4134 - 0x0dae415c (Size: 40 bytes, Frame: 0)
.globl __glMgrSaveRSS
.ent __glMgrSaveRSS
__glMgrSaveRSS:
    # Line 45
    li	$v0,0xd214
    lui	$at,0x7
    ori	$at,$at,0x4080
    sw	$v0,0($at)
    # Line 46
    sw	$a0,0($at)
    # Line 47
    sw	$a1,0($at)
    # Line 48
    sw	$a2,0($at)
    # Line 49
    sw	$a3,0($at)
    # Line 51
    jr	$ra
    # Line 50
    sw	$a4,0($at)
.end __glMgrSaveRSS

# Function: __glMgrRestoreRSS
# Declared: Line 54 (Source lines: 59-60)
# Address: 0x0dae415c - 0x0dae4170 (Size: 20 bytes, Frame: 0)
.globl __glMgrRestoreRSS
.ent __glMgrRestoreRSS
__glMgrRestoreRSS:
    # Line 59
    li	$at,0xd300
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    # Line 60
    jr	$ra
    # Line 59
    sw	$at,0($v0)
.end __glMgrRestoreRSS

# Function: __glMgrFlushImageRegs
# Declared: Line 63 (Source lines: 69-77)
# Address: 0x0dae4170 - 0x0dae4214 (Size: 164 bytes, Frame: 0)
.globl __glMgrFlushImageRegs
.ent __glMgrFlushImageRegs
__glMgrFlushImageRegs:
    # Line 74
    move	$a7,$a2
    andi	$a6,$a2,0x3
    # Line 69
    lui	$a5,0x7
    ori	$a5,$a5,0x4080
    # Line 74
    sll	$at,$a2,0x2
    lui	$v0,0xf
    ori	$v0,$v0,0xffff
    and	$at,$at,$v0
    lui	$v0,0x8000
    or	$at,$at,$v0
    # Line 69
    ori	$v0,$a0,0x8
    sw	$v0,0($a5)
    # Line 70
    sw	$a3,0($a5)
    # Line 71
    sw	$a2,0($a5)
    # Line 74
    blez	$a2,.L0dae420c
    sw	$at,0($a5)
    move	$a4,$a1
    sll	$a3,$a2,0x2
    beqz	$a6,.L0dae41d4
    addu	$a3,$a3,$a1
.L0dae41c0:
    # Line 75
    addiu	$a4,$a4,4
    # Line 76
    lw	$at,-4($a4)
    addi	$a6,$a6,-1
    bnez	$a6,.L0dae41c0
    sw	$at,0($a5)
.L0dae41d4:
    sra	$v0,$a7,0x2
    beqz	$v0,.L0dae420c
    move	$a2,$a4
    move	$a1,$a2
.L0dae41e4:
    lw	$v0,0($a1)
    sw	$v0,0($a5)
    lw	$at,4($a1)
    sw	$at,0($a5)
    lw	$a0,8($a1)
    sw	$a0,0($a5)
    lw	$v1,12($a1)
    # Line 75
    addiu	$a1,$a1,16
    bne	$a1,$a3,.L0dae41e4
    # Line 76
    sw	$v1,0($a5)
.L0dae420c:
    # Line 77
    jr	$ra
    nop
.end __glMgrFlushImageRegs

# Function: __glMgrRSSRegShadow
# Declared: Line 81 (Source lines: 82-100)
# Address: 0x0dae4214 - 0x0dae42f4 (Size: 224 bytes, Frame: 192)
.globl __glMgrRSSRegShadow
.ent __glMgrRSSRegShadow
__glMgrRSSRegShadow:
    # Line 83
    lw	$a7,__glCurrentContext
    # Line 88
    lui	$v1,0x1
    addu	$a5,$v1,$a7
    lw	$v0,-22936($a5)
    addiu	$v0,$v0,1
    sw	$v0,-22936($a5)
    sll	$at,$v0,0x2
    addu	$at,$at,$a7
    addu	$at,$at,$v1
    sw	$a0,-23196($at)
    # Line 89
    lw	$a6,-22936($a5)
    # Line 82
    addiu	$sp,$sp,-64
    sd	$gp,8($sp)
    # Line 89
    addiu	$a6,$a6,1
    sw	$a6,-22936($a5)
    sll	$a4,$a6,0x2
    addu	$a4,$a4,$a7
    addu	$a4,$a4,$v1
    sw	$a1,-23196($a4)
    # Line 82
    lui	$a0,0x12
    # Line 90
    lw	$v0,-22936($a5)
    # Line 82
    addiu	$a0,$a0,-23420
    addu	$gp,$t9,$a0
    # Line 90
    addiu	$v0,$v0,1
    sw	$v0,-22936($a5)
    sll	$at,$v0,0x2
    addu	$at,$at,$a7
    addu	$at,$at,$v1
    sw	$a2,-23196($at)
    # Line 92
    bnez	$a3,.L0dae429c
    lw	$a6,-22936($a5)
    slti	$v1,$a6,64
    bnez	$v1,.L0dae42e8
    sd	$a5,0($sp)
.L0dae429c:
    # Line 94
    li	$a4,3
    div	$zero,$a6,$a4
    sd	$a5,0($sp)
    # Line 96
    li	$a0,31744
    sd	$ra,16($sp)
    li	$a1,0xa568
    addu	$a1,$a7,$a1
    # Line 94
    teq	$a4,$zero,0x7
    # Line 95
    move	$a4,$a5
    li	$a3,-2
    addiu	$a2,$a6,1
    # Line 96
    # lw $t9, -30276($gp) # &__glMgrFlushImageRegs
    # Line 95
    and	$a2,$a2,$a3
    # Line 94
    mflo	$a3
    # Line 96
    bal __glMgrFlushImageRegs
    # Line 95
    sw	$a2,-22936($a5)
    ld	$ra,0($sp)
    # Line 98
    sw	$zero,-22936($ra)
    ld	$ra,16($sp)
.L0dae42e8:
    ld	$gp,8($sp)
    # Line 100
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrRSSRegShadow

# Function: __glMgrRSSRegSet
# Declared: Line 104 (Source lines: 105-120)
# Address: 0x0dae42f4 - 0x0dae439c (Size: 168 bytes, Frame: 192)
.globl __glMgrRSSRegSet
.ent __glMgrRSSRegSet
__glMgrRSSRegSet:
    # Line 106
    lw	$a6,__glCurrentContext
    # Line 111
    lui	$v1,0x1
    addu	$a4,$v1,$a6
    lw	$a5,-22676($a4)
    # Line 105
    addiu	$sp,$sp,-64
    sd	$gp,8($sp)
    # Line 111
    addiu	$a5,$a5,1
    sw	$a5,-22676($a4)
    sll	$a3,$a5,0x2
    addu	$a3,$a3,$a6
    addu	$a3,$a3,$v1
    sw	$a0,-22936($a3)
    # Line 105
    lui	$a0,0x12
    # Line 112
    lw	$v0,-22676($a4)
    # Line 105
    addiu	$a0,$a0,-23644
    addu	$gp,$t9,$a0
    # Line 112
    addiu	$v0,$v0,1
    sw	$v0,-22676($a4)
    sll	$at,$v0,0x2
    addu	$at,$at,$a6
    addu	$at,$at,$v1
    sw	$a1,-22936($at)
    # Line 116
    bnez	$a2,.L0dae4360
    lw	$a5,-22676($a4)
    slti	$at,$a5,64
    bnez	$at,.L0dae4390
    sd	$a4,0($sp)
.L0dae4360:
    sd	$a4,0($sp)
    # Line 117
    sra	$a3,$a5,0x1
    move	$a2,$a5
    li	$a0,32512
    # lw $t9, -30276($gp) # &__glMgrFlushImageRegs
    sd	$ra,16($sp)
    li	$a1,0xa66c
    bal __glMgrFlushImageRegs
    addu	$a1,$a6,$a1
    ld	$ra,0($sp)
    # Line 118
    sw	$zero,-22676($ra)
    ld	$ra,16($sp)
.L0dae4390:
    ld	$gp,8($sp)
    # Line 120
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrRSSRegSet

# Function: __glMgrLoadRasterPosInfo
# Declared: Line 123 (Source lines: 126-127)
# Address: 0x0dae439c - 0x0dae43b0 (Size: 20 bytes, Frame: 0)
.globl __glMgrLoadRasterPosInfo
.ent __glMgrLoadRasterPosInfo
__glMgrLoadRasterPosInfo:
    # Line 126
    li	$at,0xd700
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    # Line 127
    jr	$ra
    # Line 126
    sw	$at,0($v0)
.end __glMgrLoadRasterPosInfo

# Function: __glMgrUpdateRasterPos
# Declared: Line 130 (Source lines: 134-137)
# Address: 0x0dae43b0 - 0x0dae43cc (Size: 28 bytes, Frame: 0)
.globl __glMgrUpdateRasterPos
.ent __glMgrUpdateRasterPos
__glMgrUpdateRasterPos:
    # Line 134
    li	$v0,0xd608
    lui	$at,0x7
    ori	$at,$at,0x4080
    sw	$v0,0($at)
    # Line 135
    swc1	$f12,0($at)
    # Line 137
    jr	$ra
    # Line 136
    swc1	$f13,0($at)
.end __glMgrUpdateRasterPos

# Function: __glMgrInitPixelPath
# Declared: Line 140 (Source lines: 141-193)
# Address: 0x0dae43cc - 0x0dae455c (Size: 400 bytes, Frame: 0)
.globl __glMgrInitPixelPath
.ent __glMgrInitPixelPath
__glMgrInitPixelPath:
    # Line 142
    lw	$a6,__glCurrentContext
    # Line 141
    lui	$v0,0x12
    addiu	$v0,$v0,-23860
    # Line 142
    beqz	$a0,.L0dae4528
    # Line 141
    addu	$at,$t9,$v0
    # Line 161
    li	$v1,234
    beq	$a0,$v1,.L0dae4450
    li	$a2,235
    beq	$a0,$a2,.L0dae4450
    # Line 163
    li	$a3,287
    beq	$a0,$a3,.L0dae4450
    # Line 166
    lui	$a2,0x1
    sll	$a0,$a0,0x2
    la	$a4,SYMBOL_LOCATION
    addu	$a5,$a2,$a6
    lw	$a3,-21072($a5)
    addu	$a0,$a0,$a4
    lw	$a0,0($a0)
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a6
    addu	$a3,$a3,$a2
    sw	$a0,-22680($a3)
    # Line 167
    lw	$v1,-21072($a5)
    addiu	$v1,$v1,1
    sw	$v1,-21072($a5)
    sll	$v0,$v1,0x2
    addu	$v0,$v0,$a6
    addu	$v0,$v0,$a2
    sw	$a1,-22672($v0)
    # Line 168
    lw	$a4,-21072($a5)
    addiu	$a4,$a4,1
    # Line 169
    jr	$ra
    # Line 168
    sw	$a4,-21072($a5)
.L0dae4450:
    # Line 172
    sll	$v1,$a0,0x2
    # Line 169
    la	$t1,SYMBOL_LOCATION
    # Line 172
    lui	$a2,0x1
    addu	$a7,$a2,$a6
    lw	$a1,-21072($a7)
    addu	$v1,$v1,$t1
    lw	$v1,0($v1)
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a6
    addu	$a1,$a1,$a2
    sw	$v1,-22680($a1)
    # Line 175
    lw	$a5,-21072($a7)
    # Line 176
    li	$v0,5
    div	$zero,$a5,$v0
    # Line 172
    move	$t0,$a7
    # Line 185
    move	$a0,$a7
    # Line 176
    teq	$v0,$zero,0x7
    # Line 175
    lui	$a4,0x7
    ori	$a4,$a4,0x4080
    # Line 179
    lw	$t1,412($t1)
    # Line 178
    sll	$v0,$a5,0x2
    # Line 175
    sll	$a2,$a5,0x3
    addiu	$a2,$a2,32
    ori	$a2,$a2,0x8000
    sw	$a2,0($a4)
    # Line 176
    mflo	$a1
    sw	$a1,0($a4)
    # Line 185
    move	$a1,$zero
    # Line 176
    mfhi	$v1
    # Line 177
    sw	$v1,0($a4)
    # Line 178
    sw	$v0,0($a4)
    # Line 179
    sw	$t1,0($a4)
    # Line 180
    sw	$zero,0($a4)
    # Line 182
    sw	$zero,0($a4)
    # Line 185
    blez	$a5,.L0dae44f8
    # Line 184
    sw	$a5,0($a4)
.L0dae44e0:
    # Line 185
    addiu	$a0,$a0,4
    addiu	$a1,$a1,1
    # Line 186
    lw	$a2,-22676($a0)
    # Line 185
    slt	$a3,$a1,$a5
    bnez	$a3,.L0dae44e0
    # Line 186
    sw	$a2,0($a4)
.L0dae44f8:
    # Line 188
    sw	$a5,0($a4)
    # Line 189
    blez	$a5,.L0dae4520
    move	$a1,$zero
    move	$a0,$a7
.L0dae4508:
    addiu	$a0,$a0,4
    addiu	$a1,$a1,1
    # Line 190
    lw	$v0,-22676($a0)
    # Line 189
    slt	$v1,$a1,$a5
    bnez	$v1,.L0dae4508
    # Line 190
    sw	$v0,0($a4)
.L0dae4520:
    # Line 193
    jr	$ra
    # Line 192
    sw	$zero,-21072($t0)
.L0dae4528:
    # Line 159
    lui	$v1,0x1
    addu	$a2,$v1,$a6
    lw	$v0,-21072($a2)
    addiu	$v0,$v0,1
    sw	$v0,-21072($a2)
    sll	$a3,$v0,0x2
    addu	$a3,$a3,$a6
    addu	$a3,$a3,$v1
    sw	$a1,-22672($a3)
    # Line 160
    lw	$a0,-21072($a2)
    addiu	$a0,$a0,1
    # Line 161
    jr	$ra
    # Line 160
    sw	$a0,-21072($a2)
.end __glMgrInitPixelPath

# Function: __glMgrAllocERAM
# Declared: Line 207 (Source lines: 208-429)
# Address: 0x0dae455c - 0x0dae4df4 (Size: 2200 bytes, Frame: 208)
.globl __glMgrAllocERAM
.ent __glMgrAllocERAM
__glMgrAllocERAM:
    # Line 212
    sltiu	$at,$a0,257
    # Line 208
    addiu	$sp,$sp,-80
    sd	$s3,24($sp)
    # Line 212
    lw	$s3,__glCurrentContext
    sd	$s1,32($sp)
    # Line 208
    move	$s1,$a0
    sd	$gp,40($sp)
    lui	$v0,0x12
    addiu	$v0,$v0,-24260
    # Line 212
    beqz	$at,.L0dae463c
    # Line 208
    addu	$gp,$t9,$v0
    # Line 217
    li	$s1,256
.L0dae458c:
    # Line 233
    sltiu	$v1,$a1,2048
    bnez	$v1,.L0dae4650
    sltiu	$a2,$a1,2049
    beqz	$a2,.L0dae472c
    # Line 337
    lui	$v0,0x1
    addu	$v0,$s3,$v0
    sd	$v0,16($sp)
    lw	$v0,-31304($v0)
    beqz	$v0,.L0dae45e4
    sd	$ra,48($sp)
    # Line 341
    addiu	$a2,$sp,0
    lui	$a1,0x6d67
    # Line 339
    ld	$v1,16($sp)
    # Line 338
    sw	$v0,0($sp)
    # Line 341
    ori	$a1,$a1,0x13
    # Line 339
    lw	$v1,-31336($v1)
    # Line 341
    # lw $t9, -17944($gp) # &ioctl
    # Line 340
    sw	$zero,8($sp)
    # Line 339
    sw	$v1,4($sp)
    # Line 341
    jal	ioctl
    lw	$a0,31560($s3)
    bltz	$v0,.L0dae4bfc
.L0dae45e4:
    # Line 349
    addiu	$a2,$sp,0
.L0dae45e8:
    lui	$a1,0x6d67
    ori	$a1,$a1,0x12
    # lw $t9, -17944($gp) # &ioctl
    # Line 348
    sw	$zero,8($sp)
    # Line 347
    sw	$s1,0($sp)
    # Line 349
    jal	ioctl
    lw	$a0,31560($s3)
    ld	$s3,24($sp)
    bltz	$v0,.L0dae4bac
    ld	$ra,48($sp)
.L0dae4610:
    ld	$a2,16($sp)
    # Line 354
    sw	$s1,-31304($a2)
    # Line 355
    lw	$v1,4($sp)
    # Line 356
    la	$v0,SYMBOL_LOCATION
    # Line 355
    sw	$v1,-31336($a2)
    # Line 356
    lw	$v0,1024($v0)
    ld	$s1,32($sp)
    addu	$v0,$v0,$v1
.L0dae4630:
    ld	$gp,40($sp)
    # Line 429
    jr	$ra
    addiu	$sp,$sp,80
.L0dae463c:
    # Line 217
    sltiu	$a3,$s1,513
    beqz	$a3,.L0dae46f8
    # Line 219
    sltiu	$a3,$s1,1025
    b	.L0dae458c
    li	$s1,512
.L0dae4650:
    # Line 233
    sltiu	$at,$a1,16
    bnez	$at,.L0dae4708
    sltiu	$v1,$a1,17
    beqz	$v1,.L0dae477c
.L0dae4660:
    # Line 268
    lui	$v0,0x1
.L0dae4664:
    addu	$v0,$s3,$v0
    sd	$v0,16($sp)
    lw	$v0,-31316($v0)
    beqz	$v0,.L0dae46a8
    sd	$ra,48($sp)
    # Line 272
    addiu	$a2,$sp,0
    lui	$a1,0x6d67
    # Line 270
    ld	$v1,16($sp)
    # Line 269
    sw	$v0,0($sp)
    # Line 272
    ori	$a1,$a1,0x13
    # Line 270
    lw	$v1,-31348($v1)
    # Line 272
    # lw $t9, -17944($gp) # &ioctl
    # Line 271
    sw	$zero,8($sp)
    # Line 270
    sw	$v1,4($sp)
    # Line 272
    jal	ioctl
    lw	$a0,31560($s3)
    bltz	$v0,.L0dae4c20
.L0dae46a8:
    # Line 280
    addiu	$a2,$sp,0
.L0dae46ac:
    lui	$a1,0x6d67
    ori	$a1,$a1,0x12
    # lw $t9, -17944($gp) # &ioctl
    # Line 279
    sw	$zero,8($sp)
    # Line 278
    sw	$s1,0($sp)
    # Line 280
    jal	ioctl
    lw	$a0,31560($s3)
    ld	$s3,24($sp)
    bltz	$v0,.L0dae4bd0
    ld	$ra,48($sp)
.L0dae46d4:
    ld	$a2,16($sp)
    # Line 285
    sw	$s1,-31316($a2)
    # Line 286
    lw	$v1,4($sp)
    # Line 287
    la	$v0,SYMBOL_LOCATION
    # Line 286
    sw	$v1,-31348($a2)
    # Line 287
    lw	$v0,1024($v0)
    ld	$s1,32($sp)
    # Line 288
    b	.L0dae4630
    # Line 287
    addu	$v0,$v0,$v1
.L0dae46f8:
    # Line 219
    beqz	$a3,.L0dae4754
    # Line 221
    sltiu	$v1,$s1,2049
    b	.L0dae458c
    li	$s1,1024
.L0dae4708:
    # Line 233
    sltiu	$at,$a1,8
    bnez	$at,.L0dae4764
    sltiu	$v1,$a1,9
    bnez	$v1,.L0dae4664
    # Line 268
    lui	$v0,0x1
    # Line 426
    lw	$v0,12($sp)
    ld	$s3,24($sp)
    b	.L0dae4630
    ld	$s1,32($sp)
.L0dae472c:
    # Line 233
    sltiu	$a2,$a1,16384
    bnez	$a2,.L0dae4824
    sltiu	$a3,$a1,16385
    bnez	$a3,.L0dae490c
    li	$at,0x8000
    beq	$a1,$at,.L0dae4ae4
    # Line 426
    lw	$v0,12($sp)
    ld	$s3,24($sp)
    b	.L0dae4630
    ld	$s1,32($sp)
.L0dae4754:
    # Line 221
    beqz	$v1,.L0dae48cc
    # Line 223
    sltiu	$a3,$s1,4097
    b	.L0dae458c
    li	$s1,2048
.L0dae4764:
    # Line 233
    li	$a2,4
    beq	$a1,$a2,.L0dae49a4
    # Line 426
    lw	$v0,12($sp)
    ld	$s3,24($sp)
    b	.L0dae4630
    ld	$s1,32($sp)
.L0dae477c:
    # Line 233
    sltiu	$a3,$a1,64
    bnez	$a3,.L0dae48dc
    sltiu	$at,$a1,65
    beqz	$at,.L0dae4b7c
    # Line 242
    lui	$v0,0x1
    addu	$v0,$s3,$v0
    sd	$v0,16($sp)
    lw	$v0,-31320($v0)
    beqz	$v0,.L0dae47d4
    sd	$ra,48($sp)
    # Line 246
    addiu	$a2,$sp,0
    lui	$a1,0x6d67
    # Line 244
    ld	$v1,16($sp)
    # Line 243
    sw	$v0,0($sp)
    # Line 246
    ori	$a1,$a1,0x13
    # Line 244
    lw	$v1,-31352($v1)
    # Line 246
    # lw $t9, -17944($gp) # &ioctl
    # Line 245
    sw	$zero,8($sp)
    # Line 244
    sw	$v1,4($sp)
    # Line 246
    jal	ioctl
    lw	$a0,31560($s3)
    bltz	$v0,.L0dae4cf8
.L0dae47d4:
    # Line 254
    addiu	$a2,$sp,0
.L0dae47d8:
    lui	$a1,0x6d67
    ori	$a1,$a1,0x12
    # lw $t9, -17944($gp) # &ioctl
    # Line 252
    sw	$s1,0($sp)
    # Line 253
    sw	$zero,8($sp)
    # Line 254
    jal	ioctl
    lw	$a0,31560($s3)
    ld	$s3,24($sp)
    bltz	$v0,.L0dae4c68
    ld	$ra,48($sp)
.L0dae4800:
    ld	$a2,16($sp)
    # Line 259
    sw	$s1,-31320($a2)
    # Line 260
    lw	$v1,4($sp)
    # Line 261
    la	$v0,SYMBOL_LOCATION
    # Line 260
    sw	$v1,-31352($a2)
    # Line 261
    lw	$v0,1024($v0)
    ld	$s1,32($sp)
    # Line 262
    b	.L0dae4630
    # Line 261
    addu	$v0,$v0,$v1
.L0dae4824:
    # Line 233
    sltiu	$a3,$a1,8192
    bnez	$a3,.L0dae48f4
    sltiu	$at,$a1,8193
    beqz	$at,.L0dae4b8c
    # Line 360
    lui	$v0,0x1
    addu	$v0,$s3,$v0
    sd	$v0,16($sp)
    lw	$v0,-31300($v0)
    beqz	$v0,.L0dae487c
    sd	$ra,48($sp)
    # Line 364
    addiu	$a2,$sp,0
    lui	$a1,0x6d67
    # Line 362
    ld	$v1,16($sp)
    # Line 361
    sw	$v0,0($sp)
    # Line 364
    ori	$a1,$a1,0x13
    # Line 362
    lw	$v1,-31332($v1)
    # Line 364
    # lw $t9, -17944($gp) # &ioctl
    # Line 363
    sw	$zero,8($sp)
    # Line 362
    sw	$v1,4($sp)
    # Line 364
    jal	ioctl
    lw	$a0,31560($s3)
    bltz	$v0,.L0dae4d1c
.L0dae487c:
    # Line 372
    addiu	$a2,$sp,0
.L0dae4880:
    lui	$a1,0x6d67
    ori	$a1,$a1,0x12
    # lw $t9, -17944($gp) # &ioctl
    # Line 370
    sw	$s1,0($sp)
    # Line 371
    sw	$zero,8($sp)
    # Line 372
    jal	ioctl
    lw	$a0,31560($s3)
    ld	$s3,24($sp)
    bltz	$v0,.L0dae4c8c
    ld	$ra,48($sp)
.L0dae48a8:
    ld	$a2,16($sp)
    # Line 377
    sw	$s1,-31300($a2)
    # Line 378
    lw	$v1,4($sp)
    # Line 379
    la	$v0,SYMBOL_LOCATION
    # Line 378
    sw	$v1,-31332($a2)
    # Line 379
    lw	$v0,1024($v0)
    ld	$s1,32($sp)
    # Line 380
    b	.L0dae4630
    # Line 379
    addu	$v0,$v0,$v1
.L0dae48cc:
    # Line 223
    beqz	$a3,.L0dae4a3c
    # Line 225
    sltiu	$a3,$s1,8193
    b	.L0dae458c
    li	$s1,4096
.L0dae48dc:
    # Line 233
    li	$at,32
    beq	$a1,$at,.L0dae4660
    # Line 426
    lw	$v0,12($sp)
    ld	$s3,24($sp)
    b	.L0dae4630
    ld	$s1,32($sp)
.L0dae48f4:
    # Line 233
    li	$v1,4096
    beq	$a1,$v1,.L0dae4a4c
    # Line 426
    lw	$v0,12($sp)
    ld	$s3,24($sp)
    b	.L0dae4630
    ld	$s1,32($sp)
.L0dae490c:
    # Line 383
    lui	$v0,0x1
    addu	$v0,$s3,$v0
    sd	$v0,16($sp)
    lw	$v0,-31296($v0)
    beqz	$v0,.L0dae4954
    sd	$ra,48($sp)
    # Line 387
    addiu	$a2,$sp,0
    lui	$a1,0x6d67
    # Line 385
    ld	$v1,16($sp)
    # Line 384
    sw	$v0,0($sp)
    # Line 387
    ori	$a1,$a1,0x13
    # Line 385
    lw	$v1,-31328($v1)
    # Line 387
    # lw $t9, -17944($gp) # &ioctl
    # Line 386
    sw	$zero,8($sp)
    # Line 385
    sw	$v1,4($sp)
    # Line 387
    jal	ioctl
    lw	$a0,31560($s3)
    bltz	$v0,.L0dae4cd4
.L0dae4954:
    # Line 395
    addiu	$a2,$sp,0
.L0dae4958:
    lui	$a1,0x6d67
    ori	$a1,$a1,0x12
    # lw $t9, -17944($gp) # &ioctl
    # Line 393
    sw	$s1,0($sp)
    # Line 394
    sw	$zero,8($sp)
    # Line 395
    jal	ioctl
    lw	$a0,31560($s3)
    ld	$s3,24($sp)
    bltz	$v0,.L0dae4c44
    ld	$ra,48($sp)
.L0dae4980:
    ld	$a2,16($sp)
    # Line 400
    sw	$s1,-31296($a2)
    # Line 401
    lw	$v1,4($sp)
    # Line 402
    la	$v0,SYMBOL_LOCATION
    # Line 401
    sw	$v1,-31328($a2)
    # Line 402
    lw	$v0,1024($v0)
    ld	$s1,32($sp)
    # Line 403
    b	.L0dae4630
    # Line 402
    addu	$v0,$v0,$v1
.L0dae49a4:
    # Line 291
    lui	$v0,0x1
    addu	$v0,$s3,$v0
    sd	$v0,16($sp)
    lw	$v0,-31312($v0)
    beqz	$v0,.L0dae49ec
    sd	$ra,48($sp)
    # Line 295
    addiu	$a2,$sp,0
    lui	$a1,0x6d67
    # Line 293
    ld	$v1,16($sp)
    # Line 292
    sw	$v0,0($sp)
    # Line 295
    ori	$a1,$a1,0x13
    # Line 293
    lw	$v1,-31344($v1)
    # Line 295
    # lw $t9, -17944($gp) # &ioctl
    # Line 294
    sw	$zero,8($sp)
    # Line 293
    sw	$v1,4($sp)
    # Line 295
    jal	ioctl
    lw	$a0,31560($s3)
    bltz	$v0,.L0dae4d40
.L0dae49ec:
    # Line 303
    addiu	$a2,$sp,0
.L0dae49f0:
    lui	$a1,0x6d67
    ori	$a1,$a1,0x12
    # lw $t9, -17944($gp) # &ioctl
    # Line 301
    sw	$s1,0($sp)
    # Line 302
    sw	$zero,8($sp)
    # Line 303
    jal	ioctl
    lw	$a0,31560($s3)
    ld	$s3,24($sp)
    bltz	$v0,.L0dae4cb0
    ld	$ra,48($sp)
.L0dae4a18:
    ld	$a2,16($sp)
    # Line 308
    sw	$s1,-31312($a2)
    # Line 309
    lw	$v1,4($sp)
    # Line 310
    la	$v0,SYMBOL_LOCATION
    # Line 309
    sw	$v1,-31344($a2)
    # Line 310
    lw	$v0,1024($v0)
    ld	$s1,32($sp)
    # Line 311
    b	.L0dae4630
    # Line 310
    addu	$v0,$v0,$v1
.L0dae4a3c:
    # Line 225
    beqz	$a3,.L0dae4b9c
    # Line 227
    sltiu	$a3,$s1,16385
    b	.L0dae458c
    li	$s1,8192
.L0dae4a4c:
    # Line 314
    lui	$v0,0x1
    addu	$v0,$s3,$v0
    sd	$v0,16($sp)
    lw	$v0,-31308($v0)
    beqz	$v0,.L0dae4a94
    sd	$ra,48($sp)
    # Line 318
    addiu	$a2,$sp,0
    lui	$a1,0x6d67
    # Line 316
    ld	$v1,16($sp)
    # Line 315
    sw	$v0,0($sp)
    # Line 318
    ori	$a1,$a1,0x13
    # Line 316
    lw	$v1,-31340($v1)
    # Line 318
    # lw $t9, -17944($gp) # &ioctl
    # Line 317
    sw	$zero,8($sp)
    # Line 316
    sw	$v1,4($sp)
    # Line 318
    jal	ioctl
    lw	$a0,31560($s3)
    bltz	$v0,.L0dae4dac
.L0dae4a94:
    # Line 326
    addiu	$a2,$sp,0
.L0dae4a98:
    lui	$a1,0x6d67
    ori	$a1,$a1,0x12
    # lw $t9, -17944($gp) # &ioctl
    # Line 324
    sw	$s1,0($sp)
    # Line 325
    sw	$zero,8($sp)
    # Line 326
    jal	ioctl
    lw	$a0,31560($s3)
    ld	$s3,24($sp)
    bltz	$v0,.L0dae4d64
    ld	$ra,48($sp)
.L0dae4ac0:
    ld	$a2,16($sp)
    # Line 331
    sw	$s1,-31308($a2)
    # Line 332
    lw	$v1,4($sp)
    # Line 333
    la	$v0,SYMBOL_LOCATION
    # Line 332
    sw	$v1,-31340($a2)
    # Line 333
    lw	$v0,1024($v0)
    ld	$s1,32($sp)
    # Line 334
    b	.L0dae4630
    # Line 333
    addu	$v0,$v0,$v1
.L0dae4ae4:
    # Line 406
    lui	$v0,0x1
    addu	$v0,$s3,$v0
    sd	$v0,16($sp)
    lw	$v0,-31292($v0)
    beqz	$v0,.L0dae4b2c
    sd	$ra,48($sp)
    # Line 410
    addiu	$a2,$sp,0
    lui	$a1,0x6d67
    # Line 408
    ld	$v1,16($sp)
    # Line 407
    sw	$v0,0($sp)
    # Line 410
    ori	$a1,$a1,0x13
    # Line 408
    lw	$v1,-31324($v1)
    # Line 410
    # lw $t9, -17944($gp) # &ioctl
    # Line 409
    sw	$zero,8($sp)
    # Line 408
    sw	$v1,4($sp)
    # Line 410
    jal	ioctl
    lw	$a0,31560($s3)
    bltz	$v0,.L0dae4dd0
.L0dae4b2c:
    # Line 418
    addiu	$a2,$sp,0
.L0dae4b30:
    lui	$a1,0x6d67
    ori	$a1,$a1,0x12
    # lw $t9, -17944($gp) # &ioctl
    # Line 416
    sw	$s1,0($sp)
    # Line 417
    sw	$zero,8($sp)
    # Line 418
    jal	ioctl
    lw	$a0,31560($s3)
    ld	$s3,24($sp)
    bltz	$v0,.L0dae4d88
    ld	$ra,48($sp)
.L0dae4b58:
    ld	$a2,16($sp)
    # Line 423
    sw	$s1,-31292($a2)
    # Line 424
    lw	$v1,4($sp)
    # Line 425
    la	$v0,SYMBOL_LOCATION
    # Line 424
    sw	$v1,-31324($a2)
    # Line 425
    lw	$v0,1024($v0)
    ld	$s1,32($sp)
    # Line 426
    b	.L0dae4630
    # Line 425
    addu	$v0,$v0,$v1
.L0dae4b7c:
    # Line 426
    lw	$v0,12($sp)
    ld	$s3,24($sp)
    b	.L0dae4630
    ld	$s1,32($sp)
.L0dae4b8c:
    lw	$v0,12($sp)
    ld	$s3,24($sp)
    b	.L0dae4630
    ld	$s1,32($sp)
.L0dae4b9c:
    # Line 227
    beqz	$a3,.L0dae4bf4
    nop
    # Line 229
    b	.L0dae458c
    li	$s1,16384
.L0dae4bac:
    # Line 351
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbf0000
    jal	perror
    addiu	$a0,$a0,-4840
    # Line 352
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dae4610
    ld	$ra,48($sp)
.L0dae4bd0:
    # Line 282
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbf0000
    jal	perror
    addiu	$a0,$a0,-4840
    # Line 283
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dae46d4
    ld	$ra,48($sp)
.L0dae4bf4:
    b	.L0dae458c
    # Line 231
    li	$s1,0x8000
.L0dae4bfc:
    # Line 343
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbf0000
    jal	perror
    addiu	$a0,$a0,-4880
    # Line 344
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dae45e8
    # Line 349
    addiu	$a2,$sp,0
.L0dae4c20:
    # Line 274
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbf0000
    jal	perror
    addiu	$a0,$a0,-4880
    # Line 275
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dae46ac
    # Line 280
    addiu	$a2,$sp,0
.L0dae4c44:
    # Line 397
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbf0000
    jal	perror
    addiu	$a0,$a0,-4840
    # Line 398
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dae4980
    ld	$ra,48($sp)
.L0dae4c68:
    # Line 256
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbf0000
    jal	perror
    addiu	$a0,$a0,-4840
    # Line 257
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dae4800
    ld	$ra,48($sp)
.L0dae4c8c:
    # Line 374
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbf0000
    jal	perror
    addiu	$a0,$a0,-4840
    # Line 375
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dae48a8
    ld	$ra,48($sp)
.L0dae4cb0:
    # Line 305
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbf0000
    jal	perror
    addiu	$a0,$a0,-4840
    # Line 306
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dae4a18
    ld	$ra,48($sp)
.L0dae4cd4:
    # Line 389
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbf0000
    jal	perror
    addiu	$a0,$a0,-4880
    # Line 390
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dae4958
    # Line 395
    addiu	$a2,$sp,0
.L0dae4cf8:
    # Line 248
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbf0000
    jal	perror
    addiu	$a0,$a0,-4880
    # Line 249
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dae47d8
    # Line 254
    addiu	$a2,$sp,0
.L0dae4d1c:
    # Line 366
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbf0000
    jal	perror
    addiu	$a0,$a0,-4880
    # Line 367
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dae4880
    # Line 372
    addiu	$a2,$sp,0
.L0dae4d40:
    # Line 297
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbf0000
    jal	perror
    addiu	$a0,$a0,-4880
    # Line 298
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dae49f0
    # Line 303
    addiu	$a2,$sp,0
.L0dae4d64:
    # Line 328
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbf0000
    jal	perror
    addiu	$a0,$a0,-4840
    # Line 329
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dae4ac0
    ld	$ra,48($sp)
.L0dae4d88:
    # Line 420
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbf0000
    jal	perror
    addiu	$a0,$a0,-4840
    # Line 421
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dae4b58
    ld	$ra,48($sp)
.L0dae4dac:
    # Line 320
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbf0000
    jal	perror
    addiu	$a0,$a0,-4880
    # Line 321
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dae4a98
    # Line 326
    addiu	$a2,$sp,0
.L0dae4dd0:
    # Line 412
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbf0000
    jal	perror
    addiu	$a0,$a0,-4880
    # Line 413
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dae4b30
    # Line 418
    addiu	$a2,$sp,0
.end __glMgrAllocERAM

# Function: __glMgrInitUnpackState
# Declared: Line 434 (Source lines: 436-583)
# Address: 0x0dae4df4 - 0x0dae5600 (Size: 2060 bytes, Frame: 128)
.globl __glMgrInitUnpackState
.ent __glMgrInitUnpackState
__glMgrInitUnpackState:
    # Line 442
    move	$a1,$zero
    # Line 436
    addiu	$sp,$sp,-128
    sd	$s8,64($sp)
    move	$s8,$a3
    sd	$s1,48($sp)
    sd	$gp,72($sp)
    lui	$at,0x12
    addiu	$at,$at,-26460
    addu	$gp,$t9,$at
    # Line 442
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    # Line 436
    move	$s1,$a0
    sd	$ra,56($sp)
    # Line 442
    jal	__glMgrInitPixelStateERAM
    lw	$a0,204($a0)
    # Line 443
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,1
    jal	__glMgrInitPixelStateERAM
    lw	$a0,208($s1)
    # Line 444
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,220($s1)
    # Line 445
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateERAM
    lw	$a0,212($s1)
    # Line 446
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,1
    jal	__glMgrInitPixelStateERAM
    lw	$a0,216($s1)
    # Line 448
    lw	$a3,1432($s1)
    lw	$a0,72($a3)
    li	$a1,0x8034
    li	$v0,0x8032
    beq	$a0,$v0,.L0dae509c
    li	$v1,0x8033
    beql	$a0,$v1,.L0dae51b0
    # Line 472
    lw	$a2,24($a3)
    # Line 448
    beq	$a0,$a1,.L0dae52c4
    li	$at,0x8035
    beq	$a0,$at,.L0dae53dc
    li	$v0,0x8036
    beql	$a0,$v0,.L0dae54ec
    # Line 535
    lw	$a2,24($a3)
.L0dae4ea4:
    # Line 554
    lw	$v1,68($a3)
    li	$a1,0x8000
    beq	$v1,$a1,.L0dae4fac
    sd	$s5,80($sp)
    # Line 568
    addiu	$s5,$sp,32
    ld	$s1,48($sp)
    # Line 573
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,0($s5)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,4($s5)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,8($s5)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,12($s5)
    # Line 572
    addiu	$s5,$sp,0
    # Line 576
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,0($s5)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,4($s5)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,8($s5)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,12($s5)
    # Line 575
    addiu	$s5,$sp,16
    # Line 579
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,0($s5)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,4($s5)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,8($s5)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,12($s5)
    ld	$s5,80($sp)
.L0dae4f88:
    # Line 582
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$s8
    jal	__glMgrInitPixelStateERAM
    li	$a1,-1
    # Line 583
    ld	$ra,56($sp)
    ld	$gp,72($sp)
    ld	$s8,64($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dae4fac:
    # Line 554
    addiu	$s5,$sp,32
    addiu	$s5,$s5,12
    # Line 560
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,0($s5)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,-4($s5)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,-8($s5)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,-12($s5)
    # Line 559
    addiu	$s5,$sp,0
    addiu	$s5,$s5,12
    # Line 563
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,0($s5)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,-4($s5)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,-8($s5)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,-12($s5)
    # Line 562
    addiu	$s5,$sp,16
    addiu	$s5,$s5,12
    # Line 566
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,0($s5)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,-4($s5)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,-8($s5)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,-12($s5)
    # Line 568
    lw	$v0,1432($s1)
    ld	$s1,48($sp)
    ld	$s5,80($sp)
    li	$at,6408
    b	.L0dae4f88
    sw	$at,68($v0)
.L0dae509c:
    # Line 451
    lw	$a2,24($a3)
    move	$a1,$zero
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sra	$a0,$a2,0x1
    srl	$a0,$a0,0x1e
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    sra	$a0,$a0,0x2
    # Line 452
    lw	$a2,1432($s1)
    lw	$a2,28($a2)
    li	$a1,1
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sra	$a0,$a2,0x1
    srl	$a0,$a0,0x1e
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    sra	$a0,$a0,0x2
    # Line 453
    lw	$a2,1432($s1)
    lw	$a2,24($a2)
    move	$a1,$zero
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x3
    sra	$a2,$a2,0x1f
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    subu	$a0,$a0,$a2
    # Line 454
    lw	$a2,1432($s1)
    lw	$a2,28($a2)
    li	$a1,1
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x3
    sra	$a2,$a2,0x1f
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    subu	$a0,$a0,$a2
    # Line 455
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    li	$a0,2
    # Line 463
    sw	$zero,28($sp)
    # Line 462
    sw	$zero,24($sp)
    # Line 461
    sw	$zero,20($sp)
    # Line 460
    sw	$zero,16($sp)
    # Line 459
    sw	$zero,12($sp)
    # Line 458
    li	$a1,3
    sw	$a1,8($sp)
    # Line 457
    li	$v1,28
    sw	$v1,4($sp)
    # Line 456
    li	$v0,224
    # Line 467
    lwc1	$f3,_lit_3f800000
    # Line 456
    sw	$v0,0($sp)
    # Line 466
    lwc1	$f2,_lit_3eaaaaab
    # Line 467
    swc1	$f3,44($sp)
    # Line 465
    lwc1	$f1,_lit_3d124925
    # Line 466
    swc1	$f2,40($sp)
    # Line 464
    lwc1	$f0,_lit_3b924925
    # Line 465
    swc1	$f1,36($sp)
    # Line 468
    lw	$at,1432($s1)
    # Line 464
    swc1	$f0,32($sp)
    # Line 468
    li	$a3,5121
    sw	$a3,72($at)
    # Line 469
    b	.L0dae4ea4
    lw	$a3,1432($s1)
.L0dae51b0:
    # Line 472
    move	$a1,$zero
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sra	$a0,$a2,0x1
    srl	$a0,$a0,0x1e
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    sra	$a0,$a0,0x2
    # Line 473
    lw	$a2,1432($s1)
    lw	$a2,28($a2)
    li	$a1,1
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sra	$a0,$a2,0x1
    srl	$a0,$a0,0x1e
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    sra	$a0,$a0,0x2
    # Line 474
    lw	$a2,1432($s1)
    lw	$a2,24($a2)
    move	$a1,$zero
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x3
    sra	$a2,$a2,0x1f
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    subu	$a0,$a0,$a2
    # Line 475
    lw	$a2,1432($s1)
    lw	$a2,28($a2)
    li	$a1,1
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x3
    sra	$a2,$a2,0x1f
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    subu	$a0,$a0,$a2
    # Line 476
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$zero
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    # Line 484
    sw	$zero,28($sp)
    # Line 483
    sw	$zero,24($sp)
    # Line 482
    sw	$zero,20($sp)
    # Line 481
    sw	$zero,16($sp)
    # Line 480
    li	$a3,15
    sw	$a3,12($sp)
    # Line 479
    li	$a1,240
    sw	$a1,8($sp)
    # Line 478
    li	$v1,3840
    sw	$v1,4($sp)
    # Line 477
    li	$v0,0xf000
    # Line 488
    lwc1	$f3,_lit_3d888889
    # Line 477
    sw	$v0,0($sp)
    # Line 487
    lwc1	$f2,_lit_3b888889
    # Line 488
    swc1	$f3,44($sp)
    # Line 486
    lwc1	$f1,_lit_39888889
    # Line 487
    swc1	$f2,40($sp)
    # Line 485
    lwc1	$f0,_lit_37888889
    # Line 486
    swc1	$f1,36($sp)
    # Line 489
    lw	$at,1432($s1)
    # Line 485
    swc1	$f0,32($sp)
    # Line 489
    li	$a3,5121
    sw	$a3,72($at)
    # Line 490
    b	.L0dae4ea4
    lw	$a3,1432($s1)
.L0dae52c4:
    # Line 493
    lw	$a2,24($a3)
    move	$a1,$zero
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sra	$a0,$a2,0x1
    srl	$a0,$a0,0x1e
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    sra	$a0,$a0,0x2
    # Line 494
    lw	$a2,1432($s1)
    lw	$a2,28($a2)
    li	$a1,1
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sra	$a0,$a2,0x1
    srl	$a0,$a0,0x1e
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    sra	$a0,$a0,0x2
    # Line 495
    lw	$a2,1432($s1)
    lw	$a2,24($a2)
    move	$a1,$zero
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x3
    sra	$a2,$a2,0x1f
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    subu	$a0,$a0,$a2
    # Line 496
    lw	$a2,1432($s1)
    lw	$a2,28($a2)
    li	$a1,1
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x3
    sra	$a2,$a2,0x1f
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    subu	$a0,$a0,$a2
    # Line 497
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$zero
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    # Line 505
    sw	$zero,28($sp)
    # Line 504
    sw	$zero,24($sp)
    # Line 503
    sw	$zero,20($sp)
    # Line 502
    sw	$zero,16($sp)
    # Line 501
    li	$a3,1
    sw	$a3,12($sp)
    # Line 500
    li	$a1,62
    sw	$a1,8($sp)
    # Line 499
    li	$v1,1984
    sw	$v1,4($sp)
    # Line 498
    li	$v0,0xf800
    # Line 509
    lwc1	$f3,_lit_3f800000
    # Line 498
    sw	$v0,0($sp)
    # Line 508
    lwc1	$f2,_lit_3c842108
    # Line 509
    swc1	$f3,44($sp)
    # Line 507
    lwc1	$f1,_lit_3a042108
    # Line 508
    swc1	$f2,40($sp)
    # Line 506
    lwc1	$f0,_lit_37842108
    # Line 507
    swc1	$f1,36($sp)
    # Line 510
    lw	$at,1432($s1)
    # Line 506
    swc1	$f0,32($sp)
    # Line 510
    li	$a3,5121
    sw	$a3,72($at)
    # Line 511
    b	.L0dae4ea4
    lw	$a3,1432($s1)
.L0dae53dc:
    # Line 514
    lw	$a2,24($a3)
    move	$a1,$zero
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    srl	$a0,$a2,0x1f
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    sra	$a0,$a0,0x1
    # Line 515
    lw	$a2,1432($s1)
    lw	$a2,28($a2)
    li	$a1,1
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    srl	$a0,$a2,0x1f
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    sra	$a0,$a0,0x1
    # Line 516
    lw	$a2,1432($s1)
    lw	$a2,24($a2)
    move	$a1,$zero
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x1
    sra	$a2,$a2,0x1f
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    subu	$a0,$a0,$a2
    # Line 517
    lw	$a2,1432($s1)
    lw	$a2,28($a2)
    li	$a1,1
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x1
    sra	$a2,$a2,0x1f
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    subu	$a0,$a0,$a2
    # Line 518
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    li	$a0,1
    # Line 526
    sw	$zero,28($sp)
    # Line 525
    sw	$zero,24($sp)
    # Line 524
    sw	$zero,20($sp)
    # Line 523
    li	$at,24
    sw	$at,16($sp)
    # Line 522
    li	$a3,255
    sw	$a3,12($sp)
    # Line 521
    li	$a1,0xff00
    sw	$a1,8($sp)
    # Line 520
    lui	$v1,0xff
    sw	$v1,4($sp)
    # Line 519
    lui	$v0,0xff00
    sw	$v0,0($sp)
    # Line 527
    lwc1	$f0,_lit_3b808081
    # Line 529
    lwc1	$f2,_lit_37808081
    # Line 528
    lwc1	$f1,_lit_33808081
    # Line 530
    swc1	$f0,44($sp)
    # Line 529
    swc1	$f2,40($sp)
    # Line 528
    swc1	$f1,36($sp)
    # Line 531
    lw	$at,1432($s1)
    # Line 527
    swc1	$f0,32($sp)
    # Line 531
    li	$a3,5121
    sw	$a3,72($at)
    # Line 532
    b	.L0dae4ea4
    lw	$a3,1432($s1)
.L0dae54ec:
    # Line 535
    move	$a1,$zero
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    srl	$a0,$a2,0x1f
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    sra	$a0,$a0,0x1
    # Line 536
    lw	$a2,1432($s1)
    lw	$a2,28($a2)
    li	$a1,1
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    srl	$a0,$a2,0x1f
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    sra	$a0,$a0,0x1
    # Line 537
    lw	$a2,1432($s1)
    lw	$a2,24($a2)
    move	$a1,$zero
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x1
    sra	$a2,$a2,0x1f
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    subu	$a0,$a0,$a2
    # Line 538
    lw	$a2,1432($s1)
    lw	$a2,28($a2)
    li	$a1,1
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x1
    sra	$a2,$a2,0x1f
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    subu	$a0,$a0,$a2
    # Line 539
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    li	$a0,1
    # Line 547
    sw	$zero,28($sp)
    # Line 546
    sw	$zero,24($sp)
    # Line 545
    sw	$zero,20($sp)
    # Line 544
    li	$at,22
    sw	$at,16($sp)
    # Line 543
    li	$a3,3
    sw	$a3,12($sp)
    # Line 542
    li	$a1,4092
    sw	$a1,8($sp)
    # Line 540
    lui	$v1,0xffc0
    sw	$v1,0($sp)
    # Line 541
    lui	$v0,0x3f
    ori	$v0,$v0,0xf000
    # Line 551
    lwc1	$f2,_lit_3eaaaaab
    # Line 541
    sw	$v0,4($sp)
    # Line 550
    lwc1	$f1,_lit_39802008
    # Line 551
    swc1	$f2,44($sp)
    # Line 549
    lwc1	$f0,_lit_34802008
    # Line 550
    swc1	$f1,40($sp)
    # Line 548
    lwc1	$f3,_lit_3a802008
    # Line 549
    swc1	$f0,36($sp)
    # Line 552
    lw	$at,1432($s1)
    # Line 548
    swc1	$f3,32($sp)
    # Line 552
    li	$a3,5123
    sw	$a3,72($at)
    b	.L0dae4ea4
    # Line 553
    lw	$a3,1432($s1)
.end __glMgrInitUnpackState

# Function: __glMgrInitShiftAdd
# Declared: Line 587 (Source lines: 589-609)
# Address: 0x0dae5600 - 0x0dae5778 (Size: 376 bytes, Frame: 208)
.globl __glMgrInitShiftAdd
.ent __glMgrInitShiftAdd
__glMgrInitShiftAdd:
    # Line 597
    move	$a1,$zero
    # Line 589
    addiu	$sp,$sp,-80
    sd	$s8,24($sp)
    # Line 592
    lw	$s8,0($a2)
    sd	$a3,16($sp)
    sd	$s0,0($sp)
    # Line 589
    move	$s0,$a0
    # Line 597
    lw	$a0,204($a0)
    sd	$gp,32($sp)
    # Line 589
    lui	$at,0x12
    addiu	$at,$at,-28520
    addu	$gp,$t9,$at
    # Line 597
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    # Line 593
    lw	$v0,4($a2)
    sd	$ra,8($sp)
    # Line 597
    jal	__glMgrInitPixelStateCRAM
    sd	$v0,40($sp)
    # Line 598
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,208($s0)
    # Line 599
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,220($s0)
    # Line 600
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,212($s0)
    # Line 601
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,216($s0)
    # Line 602
    lw	$a2,1432($s0)
    lw	$a2,0($a2)
    move	$a1,$zero
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a0,$a2,0x2
    srl	$a0,$a0,0x1d
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    sra	$a0,$a0,0x3
    # Line 603
    lw	$a2,1432($s0)
    lw	$a2,4($a2)
    li	$a1,1
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a0,$a2,0x2
    srl	$a0,$a0,0x1d
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    sra	$a0,$a0,0x3
    # Line 604
    lw	$a2,1432($s0)
    lw	$a2,0($a2)
    move	$a1,$zero
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    sra	$a2,$a2,0x1f
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x7
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    subu	$a0,$a0,$a2
    # Line 605
    lw	$a2,1432($s0)
    lw	$a2,4($a2)
    li	$a1,1
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    sra	$a2,$a2,0x1f
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x7
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    subu	$a0,$a0,$a2
    # Line 606
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s8
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    ld	$s0,0($sp)
    # Line 607
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,40($sp)
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    ld	$s8,16($sp)
    # Line 608
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s8
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-1
    # Line 609
    ld	$ra,8($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrInitShiftAdd

# Function: __glMgrInitShiftAddRGB
# Declared: Line 613 (Source lines: 615-635)
# Address: 0x0dae5778 - 0x0dae58f0 (Size: 376 bytes, Frame: 208)
.globl __glMgrInitShiftAddRGB
.ent __glMgrInitShiftAddRGB
__glMgrInitShiftAddRGB:
    # Line 623
    move	$a1,$zero
    # Line 615
    addiu	$sp,$sp,-80
    sd	$s8,24($sp)
    # Line 618
    lw	$s8,0($a2)
    sd	$a3,16($sp)
    sd	$s0,0($sp)
    # Line 615
    move	$s0,$a0
    # Line 623
    lw	$a0,204($a0)
    sd	$gp,32($sp)
    # Line 615
    lui	$at,0x12
    addiu	$at,$at,-28896
    addu	$gp,$t9,$at
    # Line 623
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    # Line 619
    lw	$v0,4($a2)
    sd	$ra,8($sp)
    # Line 623
    jal	__glMgrInitPixelStateCRAM
    sd	$v0,40($sp)
    # Line 624
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,208($s0)
    # Line 625
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,220($s0)
    # Line 626
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,212($s0)
    # Line 627
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,216($s0)
    # Line 628
    lw	$a2,1432($s0)
    lw	$a2,24($a2)
    move	$a1,$zero
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a0,$a2,0x1
    srl	$a0,$a0,0x1e
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    sra	$a0,$a0,0x2
    # Line 629
    lw	$a2,1432($s0)
    lw	$a2,28($a2)
    li	$a1,1
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a0,$a2,0x1
    srl	$a0,$a0,0x1e
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    sra	$a0,$a0,0x2
    # Line 630
    lw	$a2,1432($s0)
    lw	$a2,24($a2)
    move	$a1,$zero
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    sra	$a2,$a2,0x1f
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x3
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    subu	$a0,$a0,$a2
    # Line 631
    lw	$a2,1432($s0)
    lw	$a2,28($a2)
    li	$a1,1
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    sra	$a2,$a2,0x1f
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x3
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    subu	$a0,$a0,$a2
    # Line 632
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s8
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    ld	$s0,0($sp)
    # Line 633
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,40($sp)
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    ld	$s8,16($sp)
    # Line 634
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s8
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-1
    # Line 635
    ld	$ra,8($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrInitShiftAddRGB

# Function: __glMgrInitShiftAddLuminance
# Declared: Line 639 (Source lines: 641-705)
# Address: 0x0dae58f0 - 0x0dae5b5c (Size: 620 bytes, Frame: 208)
.globl __glMgrInitShiftAddLuminance
.ent __glMgrInitShiftAddLuminance
__glMgrInitShiftAddLuminance:
    # Line 650
    move	$a1,$zero
    # Line 641
    addiu	$sp,$sp,-80
    sd	$s8,16($sp)
    # Line 645
    lw	$s8,0($a2)
    sd	$a3,8($sp)
    sd	$s0,40($sp)
    # Line 641
    move	$s0,$a0
    # Line 650
    lw	$a0,204($a0)
    sd	$gp,24($sp)
    # Line 641
    lui	$at,0x12
    addiu	$at,$at,-29272
    addu	$gp,$t9,$at
    # Line 650
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    # Line 646
    lw	$v0,4($a2)
    sd	$ra,0($sp)
    # Line 650
    jal	__glMgrInitPixelStateCRAM
    sd	$v0,32($sp)
    # Line 651
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,208($s0)
    # Line 652
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,220($s0)
    # Line 653
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,212($s0)
    # Line 654
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,216($s0)
    # Line 655
    lw	$a2,1432($s0)
    lw	$a2,24($a2)
    move	$a1,$zero
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a0,$a2,0x1
    srl	$a0,$a0,0x1e
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    sra	$a0,$a0,0x2
    # Line 656
    lw	$a2,1432($s0)
    lw	$a2,28($a2)
    li	$a1,1
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a0,$a2,0x1
    srl	$a0,$a0,0x1e
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    sra	$a0,$a0,0x2
    # Line 657
    lw	$a2,1432($s0)
    lw	$a2,24($a2)
    move	$a1,$zero
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    sra	$a2,$a2,0x1f
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x3
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    subu	$a0,$a0,$a2
    # Line 658
    lw	$a2,1432($s0)
    lw	$a2,28($a2)
    li	$a1,1
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    sra	$a2,$a2,0x1f
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x3
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    subu	$a0,$a0,$a2
    # Line 659
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s8
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 660
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,32($sp)
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    ld	$s8,8($sp)
    # Line 661
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s8
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-1
    # Line 672
    lw	$a1,1432($s0)
    lw	$a0,24($a1)
    sll	$a0,$a0,0x2
    sw	$a0,0($a1)
    # Line 673
    lw	$a0,1432($s0)
    lw	$v1,28($a0)
    ld	$s8,16($sp)
    sll	$v1,$v1,0x2
    sw	$v1,4($a0)
    ld	$ra,0($sp)
    # Line 678
    lw	$v0,1432($s0)
    # Line 684
    li	$a4,4
    # Line 678
    li	$a5,8
    sw	$a5,100($v0)
    # Line 684
    li	$a1,3
    # Line 678
    lw	$at,0($s0)
    # Line 684
    li	$v1,2
    li	$v0,1
    # Line 678
    bnez	$at,.L0dae5b00
    lw	$a0,1432($s0)
    # Line 681
    lw	$at,28($a0)
    lw	$a3,24($a0)
    # Line 684
    lw	$a2,84($a0)
    # Line 681
    addu	$a3,$a3,$at
    # Line 684
    beqz	$a2,.L0dae5b08
    # Line 681
    sll	$a3,$a3,0x2
    # Line 684
    beql	$a2,$v0,.L0dae5b0c
    # Line 689
    li	$a4,4
    # Line 684
    beql	$a2,$v1,.L0dae5b40
    # Line 694
    li	$a4,4
    # Line 684
    beq	$a2,$a1,.L0dae5b3c
    # Line 697
    sll	$at,$a3,0x2
    # Line 684
    beq	$a4,$a2,.L0dae5b24
.L0dae5ad4:
    ld	$gp,24($sp)
    # Line 702
    li	$v1,6408
    sw	$v1,68($a0)
    # Line 703
    lw	$v0,1432($s0)
    sw	$a4,76($v0)
    # Line 704
    lw	$at,1432($s0)
    li	$s0,15
    sw	$s0,92($at)
    # Line 705
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dae5b00:
    b	.L0dae5ad4
    # Line 699
    li	$a4,4
.L0dae5b08:
    # Line 689
    li	$a4,4
.L0dae5b0c:
    # Line 688
    andi	$a1,$a3,0x7
    subu	$a1,$a5,$a1
    andi	$a1,$a1,0x7
    sb	$a1,65($a0)
    # Line 689
    b	.L0dae5ad4
    lw	$a0,1432($s0)
.L0dae5b24:
    # Line 697
    andi	$at,$at,0x7
    subu	$at,$a5,$at
    andi	$at,$at,0x7
    sb	$at,65($a0)
    # Line 698
    b	.L0dae5ad4
    lw	$a0,1432($s0)
.L0dae5b3c:
    # Line 694
    li	$a4,4
.L0dae5b40:
    # Line 693
    sll	$v0,$a3,0x1
    andi	$v0,$v0,0x7
    subu	$v0,$a5,$v0
    andi	$v0,$v0,0x7
    sb	$v0,65($a0)
    # Line 694
    b	.L0dae5ad4
    lw	$a0,1432($s0)
.end __glMgrInitShiftAddLuminance

# Function: __glMgrInitI2FState
# Declared: Line 709 (Source lines: 711-728)
# Address: 0x0dae5b5c - 0x0dae5ca0 (Size: 324 bytes, Frame: 208)
.globl __glMgrInitI2FState
.ent __glMgrInitI2FState
__glMgrInitI2FState:
    # Line 717
    move	$a1,$zero
    # Line 711
    addiu	$sp,$sp,-80
    sd	$s8,24($sp)
    move	$s8,$a3
    sd	$s5,16($sp)
    move	$s5,$a0
    # Line 717
    lw	$a0,204($a0)
    sd	$gp,32($sp)
    # Line 711
    lui	$at,0x12
    addiu	$at,$at,-29892
    addu	$gp,$t9,$at
    # Line 717
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    # Line 716
    lwc1	$f0,0($a2)
    sd	$ra,8($sp)
    # Line 717
    jal	__glMgrInitPixelStateERAM
    # Line 716
    swc1	$f0,0($sp)
    # Line 718
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,1
    jal	__glMgrInitPixelStateERAM
    lw	$a0,208($s5)
    # Line 719
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,220($s5)
    # Line 720
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateERAM
    lw	$a0,212($s5)
    # Line 721
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sd	$s7,40($sp)
    li	$a1,1
    jal	__glMgrInitPixelStateERAM
    lw	$a0,216($s5)
    # Line 722
    lw	$v0,1432($s5)
    lw	$v0,0($v0)
    li	$s7,24
    div	$zero,$v0,$s7
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a1,$zero
    mflo	$a0
    jal	__glMgrInitPixelStateERAM
    teq	$s7,$zero,0x7
    # Line 723
    lw	$v1,1432($s5)
    lw	$v1,4($v1)
    div	$zero,$v1,$s7
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,1
    mflo	$a0
    jal	__glMgrInitPixelStateERAM
    teq	$s7,$zero,0x7
    # Line 724
    lw	$a0,1432($s5)
    lw	$a0,0($a0)
    div	$zero,$a0,$s7
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a1,$zero
    mfhi	$a0
    jal	__glMgrInitPixelStateERAM
    teq	$s7,$zero,0x7
    # Line 725
    lw	$a1,1432($s5)
    lw	$a1,4($a1)
    div	$zero,$a1,$s7
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    teq	$s7,$zero,0x7
    mfhi	$a0
    jal	__glMgrInitPixelStateERAM
    li	$a1,1
    # Line 726
    li	$a1,-2
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    lw	$a0,0($sp)
    ld	$s7,40($sp)
    jal	__glMgrInitPixelStateERAM
    ld	$s5,16($sp)
    # Line 727
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$s8
    jal	__glMgrInitPixelStateERAM
    li	$a1,-1
    # Line 728
    ld	$ra,8($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrInitI2FState

# Function: __glMgrInitCopyFifoLineState
# Declared: Line 732 (Source lines: 734-753)
# Address: 0x0dae5ca0 - 0x0dae5de8 (Size: 328 bytes, Frame: 192)
.globl __glMgrInitCopyFifoLineState
.ent __glMgrInitCopyFifoLineState
__glMgrInitCopyFifoLineState:
    # Line 743
    move	$a1,$zero
    # Line 734
    addiu	$sp,$sp,-64
    sd	$s8,16($sp)
    move	$s8,$a3
    sd	$s0,0($sp)
    sd	$gp,24($sp)
    lui	$at,0x12
    addiu	$at,$at,-30216
    addu	$gp,$t9,$at
    # Line 743
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    # Line 734
    move	$s0,$a0
    sd	$ra,8($sp)
    # Line 743
    jal	__glMgrInitPixelStateERAM
    lw	$a0,204($a0)
    # Line 744
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,1
    jal	__glMgrInitPixelStateERAM
    lw	$a0,208($s0)
    # Line 745
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,220($s0)
    # Line 746
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateERAM
    lw	$a0,212($s0)
    # Line 747
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,1
    jal	__glMgrInitPixelStateERAM
    lw	$a0,216($s0)
    # Line 748
    lw	$a2,1432($s0)
    lw	$a2,0($a2)
    move	$a1,$zero
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sra	$a0,$a2,0x2
    srl	$a0,$a0,0x1d
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    sra	$a0,$a0,0x3
    # Line 749
    lw	$a2,1432($s0)
    lw	$a2,4($a2)
    li	$a1,1
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sra	$a0,$a2,0x2
    srl	$a0,$a0,0x1d
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    sra	$a0,$a0,0x3
    # Line 750
    lw	$a2,1432($s0)
    lw	$a2,0($a2)
    move	$a1,$zero
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    sra	$a2,$a2,0x1f
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x7
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    subu	$a0,$a0,$a2
    # Line 751
    lw	$a2,1432($s0)
    lw	$a2,4($a2)
    li	$a1,1
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    sra	$a2,$a2,0x1f
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x7
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    subu	$a0,$a0,$a2
    # Line 752
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$s8
    li	$a1,-1
    jal	__glMgrInitPixelStateERAM
    ld	$s0,0($sp)
    # Line 753
    ld	$ra,8($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrInitCopyFifoLineState

# Function: __glMgrInitScaleBiasState
# Declared: Line 757 (Source lines: 759-800)
# Address: 0x0dae5de8 - 0x0dae605c (Size: 628 bytes, Frame: 240)
.globl __glMgrInitScaleBiasState
.ent __glMgrInitScaleBiasState
__glMgrInitScaleBiasState:
    # Line 759
    addiu	$sp,$sp,-112
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$s1,24($sp)
    move	$s1,$a2
    sd	$s8,32($sp)
    move	$s8,$a3
    sd	$gp,40($sp)
    lui	$at,0x12
    addiu	$at,$at,-30544
    beqz	$a1,.L0dae5e7c
    addu	$gp,$t9,$at
    # Line 771
    lwc1	$f3,0($s1)
    lwc1	$f2,0($a1)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,16($s1)
    add.s	$f1,$f1,$f2
    swc1	$f1,0($a1)
    # Line 772
    lwc1	$f3,4($a1)
    lwc1	$f0,4($s1)
    mul.s	$f3,$f3,$f0
    lwc1	$f2,20($s1)
    add.s	$f2,$f2,$f3
    swc1	$f2,4($a1)
    # Line 773
    lwc1	$f0,8($a1)
    lwc1	$f1,8($s1)
    mul.s	$f0,$f0,$f1
    lwc1	$f3,24($s1)
    add.s	$f3,$f3,$f0
    swc1	$f3,8($a1)
    # Line 774
    lwc1	$f1,12($a1)
    lwc1	$f2,12($s1)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,28($s1)
    add.s	$f0,$f0,$f1
    sd	$ra,48($sp)
    swc1	$f0,12($a1)
.L0dae5e7c:
    # Line 777
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a1,$zero
    sd	$ra,48($sp)
    jal	__glMgrInitPixelStateERAM
    lw	$a0,204($s0)
    # Line 778
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,1
    jal	__glMgrInitPixelStateERAM
    lw	$a0,208($s0)
    # Line 779
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,220($s0)
    # Line 780
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateERAM
    lw	$a0,212($s0)
    # Line 781
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sd	$s4,56($sp)
    li	$a1,1
    jal	__glMgrInitPixelStateERAM
    lw	$a0,212($s0)
    # Line 782
    lw	$v0,1432($s0)
    lw	$v0,0($v0)
    li	$s4,24
    div	$zero,$v0,$s4
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a1,$zero
    mflo	$a0
    jal	__glMgrInitPixelStateERAM
    teq	$s4,$zero,0x7
    # Line 783
    lw	$v1,1432($s0)
    lw	$v1,4($v1)
    div	$zero,$v1,$s4
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,1
    mflo	$a0
    jal	__glMgrInitPixelStateERAM
    teq	$s4,$zero,0x7
    # Line 784
    lw	$a0,1432($s0)
    lw	$a0,0($a0)
    div	$zero,$a0,$s4
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a1,$zero
    mfhi	$a0
    jal	__glMgrInitPixelStateERAM
    teq	$s4,$zero,0x7
    # Line 785
    lw	$a1,1432($s0)
    lw	$a1,4($a1)
    div	$zero,$a1,$s4
    sd	$s7,72($sp)
    sd	$s5,64($sp)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    teq	$s4,$zero,0x7
    mfhi	$a0
    jal	__glMgrInitPixelStateERAM
    li	$a1,1
    # Line 788
    move	$s4,$zero
    # Line 789
    move	$s5,$zero
    li	$s7,12
.L0dae5f6c:
    # Line 791
    lw	$a2,264($s0)
    # Line 793
    li	$a1,-2
    # Line 791
    addu	$a2,$s4,$a2
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$s1
    lwc1	$f5,0($a2)
    # Line 792
    lwc1	$f4,16($a2)
    # Line 793
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    # Line 791
    swc1	$f5,0($sp)
    # Line 792
    swc1	$f4,8($sp)
    # Line 793
    jal	__glMgrInitPixelStateERAM
    lw	$a0,8($sp)
    # Line 794
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,0($sp)
    # Line 796
    lw	$a3,1432($s0)
    lw	$a3,76($a3)
    addiu	$a5,$s4,1
    divu	$zero,$a5,$a3
    # Line 793
    li	$a1,-2
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    # Line 791
    lw	$a4,264($s0)
    # Line 796
    teq	$a3,$zero,0x7
    mfhi	$s4
    # Line 791
    addu	$a4,$s4,$a4
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$s1
    lwc1	$f7,0($a4)
    # Line 792
    lwc1	$f6,16($a4)
    # Line 796
    addiu	$s4,$s4,1
    # Line 791
    swc1	$f7,0($sp)
    # Line 792
    swc1	$f6,8($sp)
    # Line 793
    jal	__glMgrInitPixelStateERAM
    lw	$a0,8($sp)
    # Line 794
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,0($sp)
    # Line 789
    addiu	$s5,$s5,2
    # Line 796
    lw	$a4,1432($s0)
    lw	$a4,76($a4)
    divu	$zero,$s4,$a4
    mfhi	$s4
    # Line 789
    bne	$s5,$s7,.L0dae5f6c
    # Line 796
    teq	$a4,$zero,0x7
    # Line 799
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$s8
    jal	__glMgrInitPixelStateERAM
    li	$a1,-1
    ld	$gp,40($sp)
    # Line 800
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    ld	$s4,56($sp)
    ld	$s5,64($sp)
    ld	$ra,48($sp)
    ld	$s7,72($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glMgrInitScaleBiasState

# Function: __glMgrInitExpandState
# Declared: Line 804 (Source lines: 806-1000)
# Address: 0x0dae605c - 0x0dae6b98 (Size: 2876 bytes, Frame: 240)
.globl __glMgrInitExpandState
.ent __glMgrInitExpandState
__glMgrInitExpandState:
    # Line 806
    addiu	$sp,$sp,-112
    sd	$s2,40($sp)
    move	$s2,$a1
    # Line 814
    move	$a1,$zero
    sd	$s6,48($sp)
    # Line 806
    move	$s6,$a2
    sd	$s0,64($sp)
    sd	$gp,72($sp)
    lui	$at,0x12
    addiu	$at,$at,-31172
    addu	$gp,$t9,$at
    # Line 814
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    # Line 806
    move	$s0,$a0
    sd	$ra,56($sp)
    # Line 814
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,204($a0)
    # Line 815
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,208($s0)
    # Line 816
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,220($s0)
    # Line 836
    la	$a3,sub_0dbf0000
    # Line 823
    lwc1	$f2,0($s6)
    ld	$s6,48($sp)
    lwc1	$f1,_lit_3f800000
    # Line 821
    lwc1	$f0,12($s2)
    # Line 820
    lwc1	$f3,8($s2)
    # Line 823
    swc1	$f1,16($sp)
    # Line 819
    lwc1	$f1,4($s2)
    # Line 820
    swc1	$f3,8($sp)
    # Line 823
    dmtc1	$zero,$f3
    cvt.d.s	$f2,$f2
    # Line 821
    swc1	$f0,12($sp)
    # Line 823
    c.eq.d	$f2,$f3
    # Line 818
    lwc1	$f0,0($s2)
    # Line 819
    swc1	$f1,4($sp)
    # Line 823
    bc1t	.L0dae6114
    # Line 818
    swc1	$f0,0($sp)
    ld	$s2,40($sp)
    # Line 834
    lw	$a1,1508($s0)
    ld	$s6,48($sp)
    b	.L0dae611c
    negu	$a1,$a1
.L0dae6114:
    ld	$s2,40($sp)
    # Line 836
    move	$a1,$zero
.L0dae611c:
    lw	$a0,1432($s0)
    lw	$a0,68($a0)
    addiu	$a3,$a3,-4800
    addiu	$a0,$a0,-6400
    sltiu	$at,$a0,11
    sll	$a0,$a0,0x2
    beqz	$at,.L0dae6238
    addu	$a0,$a0,$a3
    lw	$a3,%lo(jtbl_0dbeed40)($a0)
    jr	$a3
    sd	$a1,32($sp)
.L0dae6148:
    # Line 904
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,212($s0)
    # Line 905
    lw	$a5,1432($s0)
    lw	$a5,24($a5)
    li	$a4,6
    div	$zero,$a5,$a4
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    mflo	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$a4,$zero,0x7
    # Line 906
    lw	$a7,1432($s0)
    lw	$a7,24($a7)
    li	$a6,6
    div	$zero,$a7,$a6
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    mfhi	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$a6,$zero,0x7
    # Line 907
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,216($s0)
    # Line 908
    lw	$t1,1432($s0)
    lw	$t1,28($t1)
    li	$t0,6
    div	$zero,$t1,$t0
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    mflo	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$t0,$zero,0x7
    # Line 909
    lw	$t3,1432($s0)
    lw	$t3,28($t3)
    li	$t2,6
    div	$zero,$t3,$t2
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    mfhi	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$t2,$zero,0x7
    # Line 910
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    li	$a0,4
    # Line 911
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,32($sp)
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 912
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,12($sp)
    # Line 913
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,16($sp)
.L0dae6238:
    # Line 949
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
.L0dae623c:
    la	$a0,SYMBOL_LOCATION
    li	$a1,-1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,416($a0)
    ld	$ra,56($sp)
    # Line 973
    li	$a4,4
    # Line 961
    lw	$a1,0($s0)
    # Line 955
    lw	$v0,1432($s0)
    lw	$at,24($v0)
    sll	$at,$at,0x2
    sw	$at,0($v0)
    # Line 956
    lw	$at,1432($s0)
    lw	$a5,28($at)
    sll	$a5,$a5,0x2
    sw	$a5,4($at)
    # Line 961
    lw	$a3,1432($s0)
    li	$a5,8
    sw	$a5,100($a3)
    bnez	$a1,.L0dae630c
    lw	$a1,1432($s0)
    lw	$at,256($s0)
    lw	$a3,28($a1)
    lw	$a0,24($a1)
    andi	$at,$at,0x8023
    beqz	$at,.L0dae6314
    addu	$a0,$a0,$a3
    # Line 966
    lw	$a2,1536($s0)
    addu	$a2,$a2,$a2
    subu	$a2,$a0,$a2
    sll	$a2,$a2,0x2
.L0dae62b4:
    # Line 973
    lw	$a0,84($a1)
    li	$at,2
    beqz	$a0,.L0dae631c
    li	$a3,1
    beql	$a0,$a3,.L0dae6320
    # Line 978
    li	$a4,4
    # Line 973
    beq	$a0,$at,.L0dae6350
    li	$v0,3
    beq	$a0,$v0,.L0dae6350
    # Line 986
    sll	$v1,$a2,0x2
    # Line 973
    beq	$a4,$a0,.L0dae6338
.L0dae62e0:
    ld	$gp,72($sp)
    # Line 991
    li	$at,6408
    sw	$at,68($a1)
    # Line 992
    lw	$a3,1432($s0)
    sw	$a4,76($a3)
    # Line 993
    li	$v1,15
    lw	$a0,1432($s0)
    # Line 1000
    ld	$s0,64($sp)
    addiu	$sp,$sp,112
    jr	$ra
    # Line 993
    sw	$v1,92($a0)
.L0dae630c:
    b	.L0dae62e0
    # Line 988
    li	$a4,4
.L0dae6314:
    b	.L0dae62b4
    # Line 970
    sll	$a2,$a0,0x2
.L0dae631c:
    # Line 978
    li	$a4,4
.L0dae6320:
    # Line 977
    andi	$v0,$a2,0x7
    subu	$v0,$a5,$v0
    andi	$v0,$v0,0x7
    sb	$v0,65($a1)
    # Line 978
    b	.L0dae62e0
    lw	$a1,1432($s0)
.L0dae6338:
    # Line 986
    andi	$v1,$v1,0x7
    subu	$v1,$a5,$v1
    andi	$v1,$v1,0x7
    sb	$v1,65($a1)
    # Line 987
    b	.L0dae62e0
    lw	$a1,1432($s0)
.L0dae6350:
    # Line 983
    li	$a4,4
    # Line 982
    sll	$a3,$a2,0x1
    andi	$a3,$a3,0x7
    subu	$a3,$a5,$a3
    andi	$a3,$a3,0x7
    sb	$a3,65($a1)
    # Line 983
    b	.L0dae62e0
    lw	$a1,1432($s0)
.L0dae6370:
    # Line 841
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,212($s0)
    # Line 842
    lw	$a5,1432($s0)
    lw	$a5,24($a5)
    li	$a4,6
    div	$zero,$a5,$a4
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    mflo	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$a4,$zero,0x7
    # Line 843
    lw	$a7,1432($s0)
    lw	$a7,24($a7)
    li	$a6,6
    div	$zero,$a7,$a6
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    mfhi	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$a6,$zero,0x7
    # Line 844
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,216($s0)
    # Line 845
    lw	$t1,1432($s0)
    lw	$t1,28($t1)
    li	$t0,6
    div	$zero,$t1,$t0
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    mflo	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$t0,$zero,0x7
    # Line 846
    lw	$t3,1432($s0)
    lw	$t3,28($t3)
    li	$t2,6
    div	$zero,$t3,$t2
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    mfhi	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$t2,$zero,0x7
    # Line 847
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    li	$a0,6
    # Line 848
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,32($sp)
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 849
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,12($sp)
    b	.L0dae623c
    # Line 949
    nop	# was lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
.L0dae6458:
    # Line 852
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,212($s0)
    # Line 853
    lw	$t9,1432($s0)
    lw	$t9,24($t9)
    li	$t8,6
    div	$zero,$t9,$t8
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    mflo	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$t8,$zero,0x7
    # Line 854
    lw	$a3,1432($s0)
    lw	$a3,24($a3)
    li	$a2,6
    div	$zero,$a3,$a2
    move	$a1,$zero
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    teq	$a2,$zero,0x7
    mfhi	$a0
    jal	__glMgrInitPixelStateCRAM
    sll	$a0,$a0,0x2
    # Line 855
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,216($s0)
    # Line 856
    lw	$a5,1432($s0)
    lw	$a5,28($a5)
    li	$a4,6
    div	$zero,$a5,$a4
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    mflo	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$a4,$zero,0x7
    # Line 857
    lw	$a3,1432($s0)
    lw	$a3,28($a3)
    li	$a2,6
    div	$zero,$a3,$a2
    li	$a1,1
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    teq	$a2,$zero,0x7
    mfhi	$a0
    jal	__glMgrInitPixelStateCRAM
    sll	$a0,$a0,0x2
    # Line 858
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    li	$a0,3
    # Line 859
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,32($sp)
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 860
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,4($sp)
    # Line 861
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,8($sp)
    # Line 862
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,12($sp)
    b	.L0dae623c
    # Line 949
    nop	# was lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
.L0dae6568:
    # Line 865
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,212($s0)
    # Line 866
    lw	$a5,1432($s0)
    lw	$a5,24($a5)
    li	$a4,6
    addiu	$a5,$a5,-1
    div	$zero,$a5,$a4
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    mflo	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$a4,$zero,0x7
    # Line 867
    lw	$a3,1432($s0)
    lw	$a3,24($a3)
    li	$a2,6
    addiu	$a3,$a3,-1
    div	$zero,$a3,$a2
    move	$a1,$zero
    teq	$a2,$zero,0x7
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    mfhi	$a0
    sll	$a0,$a0,0x2
    jal	__glMgrInitPixelStateCRAM
    addiu	$a0,$a0,3
    # Line 868
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,216($s0)
    # Line 869
    lw	$a5,1432($s0)
    lw	$a5,28($a5)
    li	$a4,6
    addiu	$a5,$a5,-1
    div	$zero,$a5,$a4
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    mflo	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$a4,$zero,0x7
    # Line 870
    lw	$a3,1432($s0)
    lw	$a3,28($a3)
    li	$a2,6
    addiu	$a3,$a3,-1
    div	$zero,$a3,$a2
    li	$a1,1
    teq	$a2,$zero,0x7
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    mfhi	$a0
    sll	$a0,$a0,0x2
    jal	__glMgrInitPixelStateCRAM
    addiu	$a0,$a0,3
    # Line 871
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    li	$a0,2
    # Line 872
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,32($sp)
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 873
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,8($sp)
    # Line 874
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,12($sp)
    # Line 875
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,0($sp)
    b	.L0dae623c
    # Line 949
    nop	# was lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
.L0dae6690:
    # Line 878
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,212($s0)
    # Line 879
    lw	$a5,1432($s0)
    lw	$a5,24($a5)
    li	$a4,6
    addiu	$a5,$a5,-1
    div	$zero,$a5,$a4
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    mflo	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$a4,$zero,0x7
    # Line 880
    lw	$a3,1432($s0)
    lw	$a3,24($a3)
    li	$a2,6
    addiu	$a3,$a3,-1
    div	$zero,$a3,$a2
    move	$a1,$zero
    teq	$a2,$zero,0x7
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    mfhi	$a0
    sll	$a0,$a0,0x2
    jal	__glMgrInitPixelStateCRAM
    addiu	$a0,$a0,2
    # Line 881
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,216($s0)
    # Line 882
    lw	$a5,1432($s0)
    lw	$a5,28($a5)
    li	$a4,6
    addiu	$a5,$a5,-1
    div	$zero,$a5,$a4
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    mflo	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$a4,$zero,0x7
    # Line 883
    lw	$a3,1432($s0)
    lw	$a3,28($a3)
    li	$a2,6
    addiu	$a3,$a3,-1
    div	$zero,$a3,$a2
    li	$a1,1
    teq	$a2,$zero,0x7
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    mfhi	$a0
    sll	$a0,$a0,0x2
    jal	__glMgrInitPixelStateCRAM
    addiu	$a0,$a0,2
    # Line 884
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    li	$a0,1
    # Line 885
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,32($sp)
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 886
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,12($sp)
    # Line 887
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,0($sp)
    # Line 888
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,4($sp)
    b	.L0dae623c
    # Line 949
    nop	# was lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
.L0dae67b8:
    # Line 891
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,212($s0)
    # Line 892
    lw	$a5,1432($s0)
    lw	$a5,24($a5)
    li	$a4,6
    addiu	$a5,$a5,-1
    div	$zero,$a5,$a4
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    mflo	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$a4,$zero,0x7
    # Line 893
    lw	$a3,1432($s0)
    lw	$a3,24($a3)
    li	$a2,6
    addiu	$a3,$a3,-1
    div	$zero,$a3,$a2
    move	$a1,$zero
    teq	$a2,$zero,0x7
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    mfhi	$a0
    sll	$a0,$a0,0x2
    jal	__glMgrInitPixelStateCRAM
    addiu	$a0,$a0,1
    # Line 894
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,216($s0)
    # Line 895
    lw	$a5,1432($s0)
    lw	$a5,28($a5)
    li	$a4,6
    addiu	$a5,$a5,-1
    div	$zero,$a5,$a4
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    mflo	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$a4,$zero,0x7
    # Line 896
    lw	$a3,1432($s0)
    lw	$a3,28($a3)
    li	$a2,6
    addiu	$a3,$a3,-1
    div	$zero,$a3,$a2
    li	$a1,1
    teq	$a2,$zero,0x7
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    mfhi	$a0
    sll	$a0,$a0,0x2
    jal	__glMgrInitPixelStateCRAM
    addiu	$a0,$a0,1
    # Line 897
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$zero
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 898
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,32($sp)
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 899
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,0($sp)
    # Line 900
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,4($sp)
    # Line 901
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,8($sp)
    b	.L0dae623c
    # Line 949
    nop	# was lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
.L0dae68e0:
    # Line 916
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,212($s0)
    # Line 917
    lw	$a5,1432($s0)
    lw	$a5,24($a5)
    li	$a4,6
    div	$zero,$a5,$a4
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    mflo	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$a4,$zero,0x7
    # Line 918
    lw	$a7,1432($s0)
    lw	$a7,24($a7)
    li	$a6,6
    div	$zero,$a7,$a6
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    mfhi	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$a6,$zero,0x7
    # Line 919
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,216($s0)
    # Line 920
    lw	$t1,1432($s0)
    lw	$t1,28($t1)
    li	$t0,6
    div	$zero,$t1,$t0
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    mflo	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$t0,$zero,0x7
    # Line 921
    lw	$t3,1432($s0)
    lw	$t3,28($t3)
    li	$t2,6
    div	$zero,$t3,$t2
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    mfhi	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$t2,$zero,0x7
    # Line 922
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    li	$a0,5
    # Line 923
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,32($sp)
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 924
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    lw	$a0,16($sp)
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    sd	$a0,24($sp)
    # Line 925
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,24($sp)
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    b	.L0dae623c
    # Line 949
    nop	# was lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
.L0dae69dc:
    # Line 928
    lw	$at,256($s0)
    sd	$a1,32($sp)
    andi	$at,$at,0x2000
    beqz	$at,.L0dae6ac4
    lw	$a0,212($s0)
    # Line 929
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    jal	__glMgrInitPixelStateCRAM
    move	$a1,$zero
    # Line 930
    lw	$v1,1432($s0)
    lw	$v1,24($v1)
    li	$v0,12
    div	$zero,$v1,$v0
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    mflo	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$v0,$zero,0x7
    # Line 931
    lw	$a3,1432($s0)
    lw	$a3,24($a3)
    li	$a2,12
    div	$zero,$a3,$a2
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    mfhi	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$a2,$zero,0x7
    # Line 932
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,216($s0)
    # Line 933
    lw	$a5,1432($s0)
    lw	$a5,28($a5)
    li	$a4,12
    div	$zero,$a5,$a4
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    mflo	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$a4,$zero,0x7
    # Line 934
    lw	$a7,1432($s0)
    lw	$a7,28($a7)
    li	$a6,12
    div	$zero,$a7,$a6
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    mfhi	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$a6,$zero,0x7
    # Line 935
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    li	$a0,8
    # Line 936
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,32($sp)
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    b	.L0dae623c
    # Line 949
    nop	# was lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
.L0dae6ac4:
    # Line 938
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    jal	__glMgrInitPixelStateCRAM
    move	$a1,$zero
    # Line 939
    lw	$t1,1432($s0)
    lw	$t1,24($t1)
    li	$t0,6
    div	$zero,$t1,$t0
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    mflo	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$t0,$zero,0x7
    # Line 940
    lw	$t3,1432($s0)
    lw	$t3,24($t3)
    li	$t2,6
    div	$zero,$t3,$t2
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    mfhi	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$t2,$zero,0x7
    # Line 941
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,216($s0)
    # Line 942
    lw	$t9,1432($s0)
    lw	$t9,28($t9)
    li	$t8,6
    div	$zero,$t9,$t8
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    mflo	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$t8,$zero,0x7
    # Line 943
    lw	$at,1432($s0)
    lw	$at,28($at)
    li	$ra,6
    div	$zero,$at,$ra
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    teq	$ra,$zero,0x7
    mfhi	$a0
    jal	__glMgrInitPixelStateCRAM
    li	$a1,1
    # Line 944
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    li	$a0,7
    # Line 945
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,32($sp)
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    b	.L0dae623c
    # Line 949
    nop	# was lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
.end __glMgrInitExpandState

# Function: __glMgrInitClampState
# Declared: Line 1004 (Source lines: 1006-1073)
# Address: 0x0dae6b98 - 0x0dae70f8 (Size: 1376 bytes, Frame: 128)
.globl __glMgrInitClampState
.ent __glMgrInitClampState
__glMgrInitClampState:
    # Line 1006
    addiu	$sp,$sp,-128
    sd	$s3,24($sp)
    move	$s3,$a2
    sd	$s8,32($sp)
    move	$s8,$a3
    sd	$s4,16($sp)
    move	$s4,$a0
    sd	$gp,40($sp)
    lui	$at,0x11
    addiu	$at,$at,31488
    beqz	$a1,.L0dae6d18
    addu	$gp,$t9,$at
    li	$a0,1
    lwc1	$f6,0($a1)
    ldc1	$f5,_lit8_3ff0000000000000
    cvt.d.s	$f6,$f6
    c.lt.d	$f6,$f5
    nop
    bc1fl	.L0dae6be8
    move	$a0,$zero
.L0dae6be8:
    beqz	$a0,.L0dae706c
    # Line 1017
    dmtc1	$zero,$f4
    mov.d	$f7,$f6
.L0dae6bf4:
    c.lt.d	$f4,$f7
    nop
    bc1f	.L0dae6c10
    mov.d	$f7,$f4
    beqz	$a0,.L0dae70d8
    mov.d	$f8,$f6
.L0dae6c0c:
    mov.d	$f7,$f8
.L0dae6c10:
    lwc1	$f0,0($s3)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f7
    lwc1	$f6,4($a1)
    cvt.d.s	$f6,$f6
    c.lt.d	$f6,$f5
    li	$a0,1
    cvt.s.d	$f0,$f0
    bc1fl	.L0dae6c38
    move	$a0,$zero
.L0dae6c38:
    beqz	$a0,.L0dae7074
    swc1	$f0,0($a1)
    # Line 1018
    mov.d	$f7,$f6
.L0dae6c44:
    c.lt.d	$f4,$f7
    nop
    bc1f	.L0dae6c60
    mov.d	$f7,$f4
    beqz	$a0,.L0dae70e0
    mov.d	$f8,$f6
.L0dae6c5c:
    mov.d	$f7,$f8
.L0dae6c60:
    lwc1	$f1,4($s3)
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f7
    lwc1	$f6,8($a1)
    cvt.d.s	$f6,$f6
    c.lt.d	$f6,$f5
    li	$a0,1
    cvt.s.d	$f1,$f1
    bc1fl	.L0dae6c88
    move	$a0,$zero
.L0dae6c88:
    beqz	$a0,.L0dae707c
    swc1	$f1,4($a1)
    # Line 1019
    mov.d	$f7,$f6
.L0dae6c94:
    c.lt.d	$f4,$f7
    nop
    bc1f	.L0dae6cb0
    mov.d	$f7,$f4
    beqz	$a0,.L0dae70e8
    mov.d	$f8,$f6
.L0dae6cac:
    mov.d	$f7,$f8
.L0dae6cb0:
    lwc1	$f2,8($s3)
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f7
    lwc1	$f6,12($a1)
    cvt.d.s	$f6,$f6
    c.lt.d	$f6,$f5
    li	$a0,1
    cvt.s.d	$f2,$f2
    bc1fl	.L0dae6cd8
    move	$a0,$zero
.L0dae6cd8:
    beqz	$a0,.L0dae7084
    swc1	$f2,8($a1)
    # Line 1020
    mov.d	$f7,$f6
.L0dae6ce4:
    c.lt.d	$f4,$f7
    nop
    bc1fl	.L0dae6d00
    mov.d	$f5,$f4
    beqz	$a0,.L0dae70f0
    mov.d	$f4,$f6
.L0dae6cfc:
    mov.d	$f5,$f4
.L0dae6d00:
    lwc1	$f3,12($s3)
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f5
    cvt.s.d	$f3,$f3
    sd	$ra,72($sp)
    swc1	$f3,12($a1)
.L0dae6d18:
    # Line 1023
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a1,$zero
    sd	$ra,72($sp)
    jal	__glMgrInitPixelStateERAM
    lw	$a0,204($s4)
    # Line 1024
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,1
    jal	__glMgrInitPixelStateERAM
    lw	$a0,208($s4)
    # Line 1025
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,220($s4)
    # Line 1026
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateERAM
    lw	$a0,212($s4)
    # Line 1027
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sd	$s0,48($sp)
    li	$a1,1
    jal	__glMgrInitPixelStateERAM
    lw	$a0,216($s4)
    # Line 1028
    lw	$v0,1432($s4)
    lw	$v0,0($v0)
    li	$s0,24
    div	$zero,$v0,$s0
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a1,$zero
    mflo	$a0
    jal	__glMgrInitPixelStateERAM
    teq	$s0,$zero,0x7
    # Line 1029
    lw	$v1,1432($s4)
    lw	$v1,4($v1)
    div	$zero,$v1,$s0
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,1
    mflo	$a0
    jal	__glMgrInitPixelStateERAM
    teq	$s0,$zero,0x7
    # Line 1030
    lw	$a0,1432($s4)
    lw	$a0,0($a0)
    div	$zero,$a0,$s0
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a1,$zero
    mfhi	$a0
    jal	__glMgrInitPixelStateERAM
    teq	$s0,$zero,0x7
    # Line 1031
    lw	$a1,1432($s4)
    lw	$a1,4($a1)
    div	$zero,$a1,$s0
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    teq	$s0,$zero,0x7
    mfhi	$a0
    jal	__glMgrInitPixelStateERAM
    li	$a1,1
    # Line 1037
    lw	$a0,1432($s4)
    li	$at,6405
    lw	$a0,68($a0)
    li	$a2,6403
    beq	$a2,$a0,.L0dae6ee8
    li	$a4,6404
    beq	$a0,$a4,.L0dae6eec
    # Line 1042
    move	$a1,$a0
    # Line 1037
    beq	$a0,$at,.L0dae6ee8
    li	$v0,6406
    beq	$a0,$v0,.L0dae6eec
    # Line 1042
    move	$a1,$a0
    sd	$s5,64($sp)
    # Line 1064
    move	$s5,$zero
    # Line 1065
    move	$s0,$zero
    sd	$s1,56($sp)
    li	$s1,12
.L0dae6e38:
    # Line 1066
    sll	$v1,$s5,0x2
    addu	$v1,$v1,$s3
    lwc1	$f4,0($v1)
    # Line 1067
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    # Line 1066
    swc1	$f4,8($sp)
    # Line 1067
    jal	__glMgrInitPixelStateERAM
    lw	$a0,8($sp)
    # Line 1065
    addiu	$s0,$s0,2
    # Line 1068
    lw	$a0,1432($s4)
    lw	$a0,76($a0)
    addiu	$a3,$s5,1
    divu	$zero,$a3,$a0
    # Line 1067
    li	$a1,-2
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    # Line 1068
    mfhi	$s5
    # Line 1066
    sll	$a2,$s5,0x2
    addu	$a2,$a2,$s3
    lwc1	$f5,0($a2)
    # Line 1068
    teq	$a0,$zero,0x7
    addiu	$s5,$s5,1
    # Line 1066
    swc1	$f5,8($sp)
    # Line 1067
    jal	__glMgrInitPixelStateERAM
    lw	$a0,8($sp)
    # Line 1068
    lw	$a4,1432($s4)
    lw	$a4,76($a4)
    divu	$zero,$s5,$a4
    mfhi	$s5
    # Line 1065
    bne	$s0,$s1,.L0dae6e38
    # Line 1068
    teq	$a4,$zero,0x7
    ld	$s5,64($sp)
    ld	$s1,56($sp)
    ld	$s0,48($sp)
    ld	$s4,16($sp)
    ld	$s3,24($sp)
.L0dae6ec4:
    # Line 1072
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$s8
    jal	__glMgrInitPixelStateERAM
    li	$a1,-1
    # Line 1073
    ld	$ra,72($sp)
    ld	$gp,40($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dae6ee8:
    # Line 1042
    move	$a1,$a0
.L0dae6eec:
    beq	$a2,$a0,.L0dae708c
    ld	$s4,16($sp)
    li	$at,6404
    beq	$a1,$at,.L0dae70a0
    li	$v0,6405
    beq	$a1,$v0,.L0dae70b4
    li	$v1,6406
    beq	$a1,$v1,.L0dae70c8
    sd	$s5,64($sp)
    sd	$s2,80($sp)
    sd	$s1,56($sp)
    lw	$s5,0($sp)
.L0dae6f1c:
    # Line 1057
    sll	$a4,$s5,0x2
    addu	$a4,$a4,$s3
    lwc1	$f0,0($a4)
    # Line 1058
    li	$s1,12
    # Line 1057
    swc1	$f0,8($sp)
    # Line 1058
    move	$s0,$zero
    lw	$s2,8($sp)
    # Line 1059
    move	$a0,$s2
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    ld	$s5,64($sp)
    jal	__glMgrInitPixelStateERAM
    ld	$s3,24($sp)
    # Line 1058
    addiu	$s0,$s0,1
    beq	$s0,$s1,.L0dae705c
    # Line 1059
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$s2
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    # Line 1058
    addiu	$s0,$s0,1
    beq	$s0,$s1,.L0dae705c
    # Line 1059
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$s2
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    # Line 1058
    addiu	$s0,$s0,1
    beq	$s0,$s1,.L0dae705c
    # Line 1059
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$s2
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    # Line 1058
    addiu	$s0,$s0,1
    beq	$s0,$s1,.L0dae705c
    # Line 1059
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$s2
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    # Line 1058
    addiu	$s0,$s0,1
    beq	$s0,$s1,.L0dae705c
    # Line 1059
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$s2
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    # Line 1058
    addiu	$s0,$s0,1
    beq	$s0,$s1,.L0dae705c
    # Line 1059
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$s2
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    # Line 1058
    addiu	$s0,$s0,1
    beq	$s0,$s1,.L0dae705c
    # Line 1059
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$s2
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    # Line 1058
    addiu	$s0,$s0,1
    beq	$s0,$s1,.L0dae705c
    # Line 1059
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$s2
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    # Line 1058
    addiu	$s0,$s0,1
    beq	$s0,$s1,.L0dae705c
    # Line 1059
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$s2
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    # Line 1058
    addiu	$s0,$s0,1
    beq	$s0,$s1,.L0dae705c
    # Line 1059
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$s2
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    # Line 1058
    addiu	$s0,$s0,1
    beq	$s0,$s1,.L0dae705c
    # Line 1059
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$s2
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    ld	$s1,56($sp)
.L0dae705c:
    ld	$s1,56($sp)
    ld	$s0,48($sp)
    b	.L0dae6ec4
    ld	$s2,80($sp)
.L0dae706c:
    b	.L0dae6bf4
    # Line 1017
    mov.d	$f7,$f5
.L0dae7074:
    b	.L0dae6c44
    # Line 1018
    mov.d	$f7,$f5
.L0dae707c:
    b	.L0dae6c94
    # Line 1019
    mov.d	$f7,$f5
.L0dae7084:
    b	.L0dae6ce4
    # Line 1020
    mov.d	$f7,$f5
.L0dae708c:
    sd	$s2,80($sp)
    sd	$s1,56($sp)
    sd	$s5,64($sp)
    # Line 1045
    b	.L0dae6f1c
    # Line 1044
    move	$s5,$zero
.L0dae70a0:
    sd	$s2,80($sp)
    sd	$s1,56($sp)
    sd	$s5,64($sp)
    # Line 1048
    b	.L0dae6f1c
    # Line 1047
    li	$s5,1
.L0dae70b4:
    sd	$s2,80($sp)
    sd	$s1,56($sp)
    sd	$s5,64($sp)
    # Line 1051
    b	.L0dae6f1c
    # Line 1050
    li	$s5,2
.L0dae70c8:
    sd	$s2,80($sp)
    sd	$s1,56($sp)
    b	.L0dae6f1c
    # Line 1053
    li	$s5,3
.L0dae70d8:
    b	.L0dae6c0c
    # Line 1017
    mov.d	$f8,$f5
.L0dae70e0:
    b	.L0dae6c5c
    # Line 1018
    mov.d	$f8,$f5
.L0dae70e8:
    b	.L0dae6cac
    # Line 1019
    mov.d	$f8,$f5
.L0dae70f0:
    b	.L0dae6cfc
    # Line 1020
    mov.d	$f4,$f5
.end __glMgrInitClampState

# Function: __glMgrInitLUTState
# Declared: Line 1076 (Source lines: 1079-1229)
# Address: 0x0dae70f8 - 0x0dae772c (Size: 1588 bytes, Frame: 176)
.globl __glMgrInitLUTState
.ent __glMgrInitLUTState
__glMgrInitLUTState:
    # Line 1079
    addiu	$sp,$sp,-176
    sd	$s5,64($sp)
    move	$s5,$a1
    # Line 1087
    move	$a1,$zero
    sdc1	$f18,40($sp)
    sd	$s1,72($sp)
    # Line 1079
    move	$s1,$a5
    sd	$s2,104($sp)
    move	$s2,$a4
    sd	$a3,56($sp)
    sd	$a2,48($sp)
    sd	$s0,88($sp)
    sd	$gp,80($sp)
    lui	$at,0x11
    addiu	$at,$at,30112
    addu	$gp,$t9,$at
    # Line 1087
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    # Line 1079
    move	$s0,$a0
    sd	$ra,96($sp)
    # Line 1087
    jal	__glMgrInitPixelStateERAM
    lw	$a0,204($a0)
    # Line 1088
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,1
    jal	__glMgrInitPixelStateERAM
    lw	$a0,208($s0)
    # Line 1089
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,220($s0)
    # Line 1090
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateERAM
    lw	$a0,212($s0)
    # Line 1091
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,1
    jal	__glMgrInitPixelStateERAM
    lw	$a0,216($s0)
    lw	$a6,256($s0)
    lw	$a4,1432($s0)
    andi	$a6,$a6,0x2000
    beqz	$a6,.L0dae73e0
    lw	$a4,0($a4)
    # Line 1093
    li	$a7,24
    sra	$t0,$a4,0x1
    div	$zero,$t0,$a7
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a1,$zero
    mflo	$a0
    jal	__glMgrInitPixelStateERAM
    teq	$a7,$zero,0x7
    # Line 1094
    lw	$t2,1432($s0)
    lw	$t2,4($t2)
    li	$t1,24
    sra	$t2,$t2,0x1
    div	$zero,$t2,$t1
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,1
    mflo	$a0
    jal	__glMgrInitPixelStateERAM
    teq	$t1,$zero,0x7
    # Line 1095
    lw	$t8,1432($s0)
    lw	$t8,0($t8)
    li	$t3,24
    sra	$t8,$t8,0x1
    div	$zero,$t8,$t3
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a1,$zero
    mfhi	$a0
    jal	__glMgrInitPixelStateERAM
    teq	$t3,$zero,0x7
    # Line 1096
    lw	$at,1432($s0)
    lw	$at,4($at)
    li	$ra,24
    sra	$at,$at,0x1
    div	$zero,$at,$ra
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    teq	$ra,$zero,0x7
    mfhi	$a0
    jal	__glMgrInitPixelStateERAM
    li	$a1,1
    # Line 1114
    lw	$a1,420($s0)
.L0dae723c:
    and	$v0,$a1,$s1
    beqz	$v0,.L0dae76fc
    # Line 1126
    sltiu	$v1,$s1,32
    bnez	$v1,.L0dae7280
    sltiu	$a6,$s1,33
    bnez	$a6,.L0dae7290
    sltiu	$at,$s1,8192
    bnez	$at,.L0dae74f4
    sltiu	$v0,$s1,8193
    bnez	$v0,.L0dae7660
    li	$v1,16384
    bnel	$s1,$v1,.L0dae72a4
    # Line 1156
    lw	$a0,1432($s0)
    # Line 1154
    li	$a6,-16385
    and	$a6,$a1,$a6
    b	.L0dae72a0
    sw	$a6,420($s0)
.L0dae7280:
    # Line 1126
    sltiu	$at,$s1,8
    bnez	$at,.L0dae74b4
    sltiu	$v0,$s1,9
    beqz	$v0,.L0dae74e0
.L0dae7290:
    # Line 1138
    nor	$v1,$s1,$zero
.L0dae7294:
    # Line 1135
    ori	$a6,$a1,0x38
    # Line 1138
    and	$v1,$v1,$a6
    sw	$v1,420($s0)
.L0dae72a0:
    # Line 1156
    lw	$a0,1432($s0)
.L0dae72a4:
    la	$a6,sub_0dbf0000
    lw	$a0,68($a0)
    # Line 1189
    addiu	$s0,$sp,24
    # Line 1156
    addiu	$a6,$a6,-4752
    addiu	$a0,$a0,-6400
    sltiu	$at,$a0,11
    sll	$a0,$a0,0x2
    beqz	$at,.L0dae72d4
    addu	$a0,$a0,$a6
    lw	$a6,%lo(jtbl_0dbeed70)($a0)
    jr	$a6
    ld	$a1,56($sp)
.L0dae72d4:
    # Line 1192
    li	$at,256
.L0dae72d8:
    beq	$s2,$at,.L0dae74d0
    li	$v0,1024
    beq	$s2,$v0,.L0dae74d8
    li	$v1,4096
    beq	$s2,$v1,.L0dae75a0
    lw	$a0,24($sp)
.L0dae72f0:
    # Line 1216
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    # Line 1218
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    ld	$a0,48($sp)
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    addiu	$s1,$sp,0
    # Line 1222
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,0($s1)
    # Line 1220
    addiu	$s1,$s1,4
    beq	$s1,$s0,.L0dae7398
    # Line 1222
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,0($s1)
    # Line 1220
    addiu	$s1,$s1,4
    beq	$s1,$s0,.L0dae7398
    # Line 1222
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,0($s1)
    # Line 1220
    addiu	$s1,$s1,4
    beq	$s1,$s0,.L0dae7398
    # Line 1222
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,0($s1)
    # Line 1220
    addiu	$s1,$s1,4
    beq	$s1,$s0,.L0dae7398
    # Line 1222
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,0($s1)
    # Line 1220
    addiu	$s1,$s1,4
    beq	$s1,$s0,.L0dae7398
    # Line 1222
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,0($s1)
.L0dae7398:
    # Line 1225
    ldc1	$f0,40($sp)
    # Line 1226
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    # Line 1225
    swc1	$f0,32($sp)
    # Line 1226
    jal	__glMgrInitPixelStateERAM
    lw	$a0,32($sp)
    # Line 1228
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$s5
    jal	__glMgrInitPixelStateERAM
    li	$a1,-1
    ld	$gp,80($sp)
    # Line 1229
    ld	$s0,88($sp)
    ld	$s1,72($sp)
    ld	$ra,96($sp)
    ld	$s2,104($sp)
    ld	$s5,64($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0dae73e0:
    # Line 1096
    lw	$a6,996($s0)
    andi	$a6,$a6,0x2
    beqz	$a6,.L0dae7670
    # Line 1111
    li	$a7,24
    # Line 1096
    lw	$at,56($s0)
    li	$v0,2
    beq	$at,$v0,.L0dae75a8
    # Line 1105
    move	$a1,$zero
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sra	$a2,$a4,0x2
    sra	$a0,$a2,0x2
    srl	$a0,$a0,0x1d
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    sra	$a0,$a0,0x3
    # Line 1106
    lw	$a2,1432($s0)
    lw	$a2,4($a2)
    li	$a1,1
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sra	$a2,$a2,0x2
    sra	$a0,$a2,0x2
    srl	$a0,$a0,0x1d
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    sra	$a0,$a0,0x3
    # Line 1107
    lw	$a2,1432($s0)
    lw	$a2,0($a2)
    move	$a1,$zero
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sra	$a2,$a2,0x2
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x7
    sra	$a2,$a2,0x1f
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    subu	$a0,$a0,$a2
    # Line 1108
    lw	$a2,1432($s0)
    lw	$a2,4($a2)
    li	$a1,1
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sra	$a2,$a2,0x2
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x7
    sra	$a2,$a2,0x1f
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    subu	$a0,$a0,$a2
    b	.L0dae723c
    # Line 1114
    lw	$a1,420($s0)
.L0dae74b4:
    # Line 1126
    li	$a6,4
    bnel	$s1,$a6,.L0dae72a4
    # Line 1156
    lw	$a0,1432($s0)
    # Line 1145
    li	$at,-5
    and	$at,$a1,$at
    # Line 1146
    b	.L0dae72a0
    # Line 1145
    sw	$at,420($s0)
.L0dae74d0:
    # Line 1199
    b	.L0dae72f0
    # Line 1195
    li	$a0,12
.L0dae74d8:
    # Line 1206
    b	.L0dae72f0
    # Line 1202
    li	$a0,13
.L0dae74e0:
    # Line 1126
    li	$v0,16
    bnel	$s1,$v0,.L0dae72a4
    # Line 1156
    lw	$a0,1432($s0)
    b	.L0dae7294
    # Line 1138
    nor	$v1,$s1,$zero
.L0dae74f4:
    # Line 1126
    li	$v1,4096
    bnel	$s1,$v1,.L0dae72a4
    # Line 1156
    lw	$a0,1432($s0)
    # Line 1148
    li	$a6,-4097
    and	$a6,$a1,$a6
    # Line 1149
    b	.L0dae72a0
    # Line 1148
    sw	$a6,420($s0)
.L0dae7510:
    # Line 1163
    addiu	$s1,$sp,0
    # Line 1165
    lw	$v0,4($a1)
    # Line 1167
    sw	$v0,20($s1)
    # Line 1165
    lw	$at,0($a1)
    # Line 1166
    sw	$v0,12($s1)
    # Line 1165
    sw	$v0,4($s1)
    # Line 1167
    sw	$at,16($s1)
    # Line 1166
    sw	$at,8($s1)
    # Line 1165
    sw	$at,0($s1)
    # Line 1169
    b	.L0dae72d4
    addiu	$s0,$sp,24
.L0dae753c:
    ld	$a1,56($sp)
    # Line 1171
    addiu	$s1,$sp,0
    # Line 1173
    lw	$at,8($a1)
    # Line 1174
    sw	$at,20($s1)
    # Line 1173
    lw	$a6,4($a1)
    sw	$at,8($s1)
    lw	$v1,0($a1)
    # Line 1174
    sw	$a6,16($s1)
    # Line 1173
    sw	$a6,4($s1)
    # Line 1174
    sw	$v1,12($s1)
    # Line 1173
    sw	$v1,0($s1)
    # Line 1176
    b	.L0dae72d4
    addiu	$s0,$sp,24
.L0dae7570:
    # Line 1185
    ld	$a1,56($sp)
    addiu	$s0,$sp,24
    addiu	$s1,$sp,0
    lw	$a1,0($a1)
    # Line 1187
    sw	$a1,20($s1)
    sw	$a1,16($s1)
    sw	$a1,12($s1)
    sw	$a1,8($s1)
    sw	$a1,4($s1)
    sw	$a1,0($s1)
    b	.L0dae72d8
    # Line 1192
    li	$at,256
.L0dae75a0:
    b	.L0dae72f0
    # Line 1209
    li	$a0,14
.L0dae75a8:
    # Line 1100
    move	$a1,$zero
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sra	$a2,$a4,0x1
    sra	$a0,$a2,0x2
    srl	$a0,$a0,0x1d
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    sra	$a0,$a0,0x3
    # Line 1101
    lw	$a2,1432($s0)
    lw	$a2,4($a2)
    li	$a1,1
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sra	$a2,$a2,0x1
    sra	$a0,$a2,0x2
    srl	$a0,$a0,0x1d
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    sra	$a0,$a0,0x3
    # Line 1102
    lw	$a2,1432($s0)
    lw	$a2,0($a2)
    move	$a1,$zero
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sra	$a2,$a2,0x1
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x7
    sra	$a2,$a2,0x1f
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    subu	$a0,$a0,$a2
    # Line 1103
    lw	$a2,1432($s0)
    lw	$a2,4($a2)
    li	$a1,1
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sra	$a2,$a2,0x1
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x7
    sra	$a2,$a2,0x1f
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateERAM
    subu	$a0,$a0,$a2
    b	.L0dae723c
    # Line 1114
    lw	$a1,420($s0)
.L0dae7660:
    # Line 1151
    li	$a6,-8193
    and	$a6,$a1,$a6
    # Line 1152
    b	.L0dae72a0
    # Line 1151
    sw	$a6,420($s0)
.L0dae7670:
    # Line 1111
    div	$zero,$a4,$a7
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a1,$zero
    mflo	$a0
    jal	__glMgrInitPixelStateERAM
    teq	$a7,$zero,0x7
    # Line 1112
    lw	$t1,1432($s0)
    lw	$t1,4($t1)
    li	$t0,24
    div	$zero,$t1,$t0
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,1
    mflo	$a0
    jal	__glMgrInitPixelStateERAM
    teq	$t0,$zero,0x7
    # Line 1113
    lw	$t3,1432($s0)
    lw	$t3,0($t3)
    li	$t2,24
    div	$zero,$t3,$t2
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a1,$zero
    mfhi	$a0
    jal	__glMgrInitPixelStateERAM
    teq	$t2,$zero,0x7
    # Line 1114
    lw	$t9,1432($s0)
    lw	$t9,4($t9)
    li	$t8,24
    div	$zero,$t9,$t8
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,1
    mfhi	$a0
    jal	__glMgrInitPixelStateERAM
    teq	$t8,$zero,0x7
    b	.L0dae723c
    lw	$a1,420($s0)
.L0dae76fc:
    # Line 1120
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$s5
    jal	__glMgrInitPixelStateERAM
    li	$a1,-1
    ld	$gp,80($sp)
    # Line 1121
    ld	$s0,88($sp)
    ld	$s1,72($sp)
    ld	$ra,96($sp)
    ld	$s2,104($sp)
    ld	$s5,64($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end __glMgrInitLUTState

# Function: __glMgrInitLUTRGB
# Declared: Line 1233 (Source lines: 1235-1432)
# Address: 0x0dae772c - 0x0dae7e00 (Size: 1748 bytes, Frame: 224)
.globl __glMgrInitLUTRGB
.ent __glMgrInitLUTRGB
__glMgrInitLUTRGB:
    # Line 1254
    lw	$a7,__glCurrentContext
    # Line 1235
    move	$v0,$a3
    # Line 1254
    li	$v1,1
    # Line 1235
    addiu	$sp,$sp,-224
    sd	$gp,136($sp)
    # Line 1254
    lw	$at,__glBeginMode
    sd	$s0,128($sp)
    # Line 1235
    move	$s0,$a0
    lui	$a0,0x11
    addiu	$a0,$a0,28524
    # Line 1254
    beq	$at,$v1,.L0dae7d9c
    # Line 1235
    addu	$gp,$t9,$a0
    # Line 1259
    lw	$a5,8($a2)
    sd	$s4,144($sp)
    dsll32	$a5,$a5,0x0
    dsrl32	$a5,$a5,0x0
    dmtc1	$a5,$f4
    # Line 1258
    lbu	$s4,1($a2)
    # Line 1259
    beqz	$a1,.L0dae77fc
    cvt.s.l	$f4,$f4
    # Line 1270
    lwc1	$f0,0($a1)
    trunc.w.s	$f0,$f0
    # Line 1271
    lwc1	$f3,4($a1)
    # Line 1270
    mfc1	$a5,$f0
    lw	$v1,1032($a7)
    # Line 1271
    trunc.w.s	$f3,$f3
    # Line 1270
    sll	$a5,$a5,0x2
    addu	$v1,$v1,$a5
    lwc1	$f0,0($v1)
    # Line 1272
    lwc1	$f2,8($a1)
    # Line 1270
    swc1	$f0,0($a1)
    # Line 1271
    mfc1	$at,$f3
    lw	$a6,1044($a7)
    # Line 1272
    trunc.w.s	$f2,$f2
    # Line 1271
    sll	$at,$at,0x2
    addu	$a6,$a6,$at
    lwc1	$f3,0($a6)
    # Line 1273
    lwc1	$f1,12($a1)
    # Line 1271
    swc1	$f3,4($a1)
    # Line 1272
    mfc1	$a5,$f2
    lw	$v1,1056($a7)
    # Line 1273
    trunc.w.s	$f1,$f1
    # Line 1272
    sll	$a5,$a5,0x2
    addu	$v1,$v1,$a5
    lwc1	$f2,0($v1)
    swc1	$f2,8($a1)
    # Line 1273
    mfc1	$at,$f1
    lw	$a6,1068($a7)
    sll	$at,$at,0x2
    addu	$a6,$a6,$at
    lwc1	$f0,0($a6)
    swc1	$f0,12($a1)
.L0dae77fc:
    lw	$a6,420($s0)
    andi	$a6,$a6,0x20
    beqz	$a6,.L0dae7dc0
    # Line 1280
    addiu	$a0,$sp,16
    # Line 1289
    sw	$zero,20($a0)
    sw	$zero,16($a0)
    sw	$zero,12($a0)
    sw	$zero,8($a0)
    sw	$zero,4($a0)
    sw	$zero,0($a0)
    # Line 1292
    lw	$a0,1432($s0)
    lw	$a0,68($a0)
    li	$at,6408
    beq	$a0,$at,.L0dae7c3c
    li	$a5,6407
    beq	$a0,$a5,.L0dae7c88
    li	$a6,6403
    beq	$a0,$a6,.L0dae7ce0
    li	$at,6404
    beq	$a0,$at,.L0dae7d10
    li	$v1,6405
    beq	$a0,$v1,.L0dae7d40
    li	$a5,6406
    beq	$a0,$a5,.L0dae7d70
    sd	$s5,168($sp)
    lw	$a3,20($sp)
    lw	$a0,16($sp)
    lw	$s5,40($sp)
    lw	$a1,24($sp)
    lw	$a4,28($sp)
.L0dae7874:
    # Line 1340
    slt	$a6,$a3,$a0
    beqz	$a6,.L0dae7884
    # Line 1344
    move	$a2,$a3
    move	$a2,$a0
.L0dae7884:
    slt	$at,$a2,$a1
    beqz	$at,.L0dae7894
    # Line 1345
    move	$a0,$a2
    move	$a0,$a1
.L0dae7894:
    slt	$v1,$a0,$a4
    beqz	$v1,.L0dae78a4
    # Line 1346
    move	$a1,$a0
    move	$a1,$a4
.L0dae78a4:
    slti	$a5,$a1,257
    beqz	$a5,.L0dae7c0c
    # Line 1349
    slti	$a5,$a1,1025
    sd	$ra,152($sp)
    sd	$v0,120($sp)
    sdc1	$f4,80($sp)
    sd	$s1,176($sp)
    li	$s1,256
.L0dae78c4:
    # Line 1357
    mult	$s1,$s5
    # lw $t9, -30252($gp) # &__glMgrAllocERAM
    mflo	$a0
    bal __glMgrAllocERAM
    li	$a1,32
    sd	$s7,160($sp)
    # Line 1362
    blez	$s5,.L0dae7bc4
    sd	$zero,88($sp)
    li	$a7,0xffff
    lwc1	$f4,_lit_477fff00
    lui	$a2,0x8000
    li	$s7,0x8904
    addiu	$t3,$sp,48
    addiu	$a3,$sp,16
    lui	$a1,0xf
    ori	$a1,$a1,0xffff
    addiu	$a4,$sp,0
    addiu	$at,$sp,0
    sll	$a6,$s5,0x2
    addu	$a6,$a6,$at
    sd	$a4,96($sp)
    lui	$a4,0x7
    ori	$a4,$a4,0x4080
    b	.L0dae7950
    sd	$a6,104($sp)
    # Line 1427
    addiu	$a3,$a3,8
.L0dae792c:
    addiu	$t3,$t3,8
    # Line 1426
    ld	$at,88($sp)
    # Line 1364
    ld	$a5,96($sp)
    ld	$a6,104($sp)
    # Line 1426
    addu	$at,$s1,$at
    # Line 1364
    addiu	$a5,$a5,4
    sd	$a5,96($sp)
    beq	$a5,$a6,.L0dae7bc4
    sd	$at,88($sp)
.L0dae7950:
    ld	$v1,88($sp)
    # Line 1366
    ld	$a0,96($sp)
    move	$t9,$v1
    sw	$v1,0($a0)
    # Line 1368
    beqz	$s4,.L0dae7ba0
    move	$a0,$zero
    # Line 1371
    move	$a5,$s1
    sd	$s1,112($sp)
.L0dae7970:
    ld	$a6,112($sp)
    # Line 1373
    blezl	$a6,.L0dae792c
    # Line 1427
    addiu	$a3,$a3,8
    b	.L0dae79c0
    nop
.L0dae7984:
    # Line 1412
    sh	$a7,74($sp)
.L0dae7988:
    # Line 1414
    lw	$at,72($sp)
    # Line 1402
    addiu	$t0,$t0,1
    # Line 1414
    sw	$at,0($a4)
.L0dae7994:
    sra	$v1,$s5,0x1
    bnez	$v1,.L0dae7a90
    # Line 1402
    slt	$a6,$a0,$t2
.L0dae79a0:
    # Line 1423
    addu	$t9,$t9,$t8
    # Line 1402
    andi	$a5,$ra,0x1
    beqz	$a5,.L0dae79b4
    ld	$a6,112($sp)
    # Line 1421
    sw	$zero,0($a4)
.L0dae79b4:
    # Line 1423
    slt	$a6,$a0,$a6
    beqzl	$a6,.L0dae792c
    # Line 1427
    addiu	$a3,$a3,8
.L0dae79c0:
    # Line 1373
    beqz	$s4,.L0dae7b88
    ld	$t0,112($sp)
.L0dae79c8:
    # Line 1381
    li	$t8,256
.L0dae79cc:
    # Line 1385
    sw	$s7,0($a4)
    # Line 1386
    sra	$a5,$t8,0x1
    srl	$a5,$a5,0x1e
    addu	$a5,$a5,$t8
    sra	$a5,$a5,0x2
    sw	$a5,0($a4)
    andi	$a5,$t8,0x1
    # Line 1390
    sll	$t0,$t8,0x2
    # Line 1388
    addiu	$ra,$t8,6
    # Line 1386
    sra	$v1,$t8,0x1f
    xor	$at,$t8,$v1
    subu	$at,$at,$v1
    sra	$v1,$t8,0x1f
    andi	$at,$at,0x3
    xor	$at,$at,$v1
    subu	$at,$at,$v1
    # Line 1388
    sll	$v1,$ra,0x2
    and	$v1,$v1,$a1
    or	$v1,$v1,$a2
    sw	$v1,0($a4)
    # Line 1389
    sw	$at,0($a4)
    # Line 1390
    sw	$t0,0($a4)
    # Line 1402
    move	$t0,$zero
    # Line 1391
    sw	$v0,0($a4)
    # Line 1392
    sw	$zero,0($a4)
    # Line 1393
    sw	$t9,0($a4)
    # Line 1402
    blez	$t8,.L0dae79a0
    # Line 1395
    sw	$t8,0($a4)
    # Line 1402
    lw	$t2,0($a3)
    move	$s5,$t8
    beqz	$a5,.L0dae7994
    lw	$t1,4($a3)
    slt	$a6,$a0,$t2
    beqzl	$a6,.L0dae7b58
    # Line 1407
    sh	$a7,72($sp)
    # Line 1405
    lw	$v1,0($t3)
    addiu	$v1,$v1,4
    lwc1	$f1,-4($v1)
    mul.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    mfc1	$at,$f1
    sw	$v1,0($t3)
    b	.L0dae7b58
    sh	$at,72($sp)
.L0dae7a7c:
    # Line 1412
    sh	$a7,74($sp)
.L0dae7a80:
    # Line 1414
    lw	$a5,72($sp)
    # Line 1402
    beq	$t8,$t0,.L0dae79a0
    # Line 1414
    sw	$a5,0($a4)
    # Line 1402
    slt	$a6,$a0,$t2
.L0dae7a90:
    beqz	$a6,.L0dae7abc
    # Line 1407
    slt	$a5,$a0,$t1
    # Line 1405
    lw	$v1,0($t3)
    addiu	$v1,$v1,4
    lwc1	$f2,-4($v1)
    mul.s	$f2,$f2,$f4
    trunc.w.s	$f2,$f2
    mfc1	$at,$f2
    sw	$v1,0($t3)
    b	.L0dae7ac0
    sh	$at,72($sp)
.L0dae7abc:
    # Line 1407
    sh	$a7,72($sp)
.L0dae7ac0:
    # Line 1416
    addiu	$a0,$a0,1
    # Line 1407
    beqzl	$a5,.L0dae7aec
    # Line 1412
    sh	$a7,74($sp)
    # Line 1410
    lw	$at,4($t3)
    addiu	$at,$at,4
    lwc1	$f3,-4($at)
    mul.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$a6,$f3
    sw	$at,4($t3)
    sh	$a6,74($sp)
.L0dae7aec:
    # Line 1414
    lw	$v1,72($sp)
    # Line 1402
    slt	$a5,$a0,$t2
    beqz	$a5,.L0dae7b20
    # Line 1414
    sw	$v1,0($a4)
    # Line 1405
    lw	$at,0($t3)
    addiu	$at,$at,4
    lwc1	$f0,-4($at)
    mul.s	$f0,$f0,$f4
    trunc.w.s	$f0,$f0
    mfc1	$a6,$f0
    sw	$at,0($t3)
    b	.L0dae7b24
    sh	$a6,72($sp)
.L0dae7b20:
    # Line 1407
    sh	$a7,72($sp)
.L0dae7b24:
    # Line 1402
    addiu	$t0,$t0,2
    # Line 1407
    slt	$v1,$a0,$t1
    beqz	$v1,.L0dae7a7c
    # Line 1416
    addiu	$a0,$a0,1
    # Line 1410
    lw	$a6,4($t3)
    addiu	$a6,$a6,4
    lwc1	$f1,-4($a6)
    mul.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    mfc1	$a5,$f1
    sw	$a6,4($t3)
    b	.L0dae7a80
    sh	$a5,74($sp)
.L0dae7b58:
    # Line 1407
    slt	$at,$a0,$t1
    beqz	$at,.L0dae7984
    # Line 1416
    addiu	$a0,$a0,1
    # Line 1410
    lw	$a5,4($t3)
    addiu	$a5,$a5,4
    lwc1	$f2,-4($a5)
    mul.s	$f2,$f2,$f4
    trunc.w.s	$f2,$f2
    mfc1	$v1,$f2
    sw	$a5,4($t3)
    b	.L0dae7988
    sh	$v1,74($sp)
.L0dae7b88:
    # Line 1373
    subu	$t0,$t0,$a0
    slti	$a6,$t0,256
    beqz	$a6,.L0dae79c8
    # Line 1379
    move	$t8,$t0
    b	.L0dae79cc
    nop
.L0dae7ba0:
    # Line 1371
    lw	$t1,4($a3)
    lw	$t2,0($a3)
    slt	$at,$t1,$t2
    beqz	$at,.L0dae7bb8
    # Line 1373
    move	$t0,$t1
    move	$t0,$t2
.L0dae7bb8:
    move	$v1,$t0
    b	.L0dae7970
    sd	$t0,112($sp)
.L0dae7bc4:
    # Line 1430
    move	$a0,$s0
    ld	$a1,120($sp)
    move	$a2,$v0
    ldc1	$f18,80($sp)
    # lw $t9, -30212($gp) # &__glMgrInitLUTState
    li	$a5,32
    move	$a4,$s1
    bal __glMgrInitLUTState
    addiu	$a3,$sp,0
    ld	$gp,136($sp)
    # Line 1432
    ld	$s0,128($sp)
    ld	$s1,176($sp)
    ld	$s4,144($sp)
    ld	$ra,152($sp)
    ld	$s5,168($sp)
    ld	$s7,160($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0dae7c0c:
    # Line 1349
    beqz	$a5,.L0dae7c28
    sd	$s1,176($sp)
    sd	$ra,152($sp)
    sd	$v0,120($sp)
    sdc1	$f4,80($sp)
    # Line 1351
    b	.L0dae78c4
    li	$s1,1024
.L0dae7c28:
    sd	$ra,152($sp)
    sd	$v0,120($sp)
    sdc1	$f4,80($sp)
    b	.L0dae78c4
    # Line 1353
    li	$s1,4096
.L0dae7c3c:
    sd	$s5,168($sp)
    # Line 1303
    li	$s5,2
    # Line 1296
    lw	$a3,1036($a7)
    # Line 1297
    lw	$a1,1048($a7)
    # Line 1298
    lw	$a4,1060($a7)
    # Line 1301
    lw	$v1,1056($a7)
    # Line 1300
    lw	$at,1044($a7)
    # Line 1299
    lw	$a6,1032($a7)
    # Line 1301
    sw	$v1,56($sp)
    # Line 1300
    sw	$at,52($sp)
    # Line 1299
    sw	$a6,48($sp)
    # Line 1302
    lw	$a0,1068($a7)
    # Line 1298
    sw	$a4,28($sp)
    # Line 1297
    sw	$a1,24($sp)
    # Line 1302
    sw	$a0,60($sp)
    # Line 1295
    lw	$a0,1024($a7)
    # Line 1296
    sw	$a3,20($sp)
    # Line 1304
    b	.L0dae7874
    # Line 1295
    sw	$a0,16($sp)
.L0dae7c88:
    sd	$s5,168($sp)
    # Line 1318
    li	$s5,3
    # Line 1312
    lw	$a4,1032($a7)
    # Line 1306
    lw	$a0,1024($a7)
    # Line 1307
    lw	$a3,1036($a7)
    # Line 1314
    lw	$a6,1056($a7)
    # Line 1313
    lw	$a5,1044($a7)
    # Line 1308
    lw	$a1,1048($a7)
    # Line 1317
    sw	$a6,68($sp)
    # Line 1316
    sw	$a5,64($sp)
    # Line 1314
    sw	$a6,56($sp)
    # Line 1313
    sw	$a5,52($sp)
    # Line 1311
    sw	$a1,36($sp)
    # Line 1310
    sw	$a3,32($sp)
    # Line 1308
    sw	$a1,24($sp)
    # Line 1307
    sw	$a3,20($sp)
    # Line 1306
    sw	$a0,16($sp)
    # Line 1315
    sw	$a4,60($sp)
    # Line 1312
    sw	$a4,48($sp)
    # Line 1309
    move	$a4,$a0
    # Line 1319
    b	.L0dae7874
    # Line 1309
    sw	$a0,28($sp)
.L0dae7ce0:
    # Line 1324
    lw	$a1,24($sp)
    lw	$a4,28($sp)
    sd	$s5,168($sp)
    # Line 1322
    lw	$at,1032($a7)
    # Line 1323
    li	$s5,1
    # Line 1321
    lw	$a3,1024($a7)
    # Line 1322
    sw	$at,48($sp)
    sw	$at,52($sp)
    # Line 1321
    sw	$a3,20($sp)
    move	$a0,$a3
    # Line 1324
    b	.L0dae7874
    # Line 1321
    sw	$a3,16($sp)
.L0dae7d10:
    # Line 1329
    lw	$a1,24($sp)
    lw	$a4,28($sp)
    sd	$s5,168($sp)
    # Line 1327
    lw	$v1,1044($a7)
    # Line 1328
    li	$s5,1
    # Line 1326
    lw	$a3,1036($a7)
    # Line 1327
    sw	$v1,48($sp)
    sw	$v1,52($sp)
    # Line 1326
    sw	$a3,20($sp)
    move	$a0,$a3
    # Line 1329
    b	.L0dae7874
    # Line 1326
    sw	$a3,16($sp)
.L0dae7d40:
    # Line 1334
    lw	$a1,24($sp)
    lw	$a4,28($sp)
    sd	$s5,168($sp)
    # Line 1331
    lw	$a3,1048($a7)
    # Line 1332
    lw	$a0,1056($a7)
    # Line 1333
    li	$s5,1
    # Line 1331
    sw	$a3,20($sp)
    # Line 1332
    sw	$a0,48($sp)
    sw	$a0,52($sp)
    # Line 1331
    move	$a0,$a3
    # Line 1334
    b	.L0dae7874
    # Line 1331
    sw	$a3,16($sp)
.L0dae7d70:
    # Line 1339
    lw	$a1,24($sp)
    lw	$a4,28($sp)
    # Line 1337
    lw	$a5,1068($a7)
    # Line 1338
    li	$s5,1
    # Line 1336
    lw	$a3,1060($a7)
    # Line 1337
    sw	$a5,48($sp)
    sw	$a5,52($sp)
    # Line 1336
    sw	$a3,20($sp)
    move	$a0,$a3
    b	.L0dae7874
    sw	$a3,16($sp)
.L0dae7d9c:
    # Line 1254
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,152($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,152($sp)
    ld	$gp,136($sp)
    ld	$s0,128($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0dae7dc0:
    # Line 1278
    move	$a0,$s0
    move	$a1,$v0
    move	$a2,$zero
    mov.s	$f18,$f4
    li	$a5,32
    move	$a4,$zero
    # lw $t9, -30212($gp) # &__glMgrInitLUTState
    addiu	$a3,$sp,0
    sd	$ra,152($sp)
    bal __glMgrInitLUTState
    ld	$s4,144($sp)
    # Line 1280
    ld	$ra,152($sp)
    ld	$gp,136($sp)
    ld	$s0,128($sp)
    jr	$ra
    addiu	$sp,$sp,224
.end __glMgrInitLUTRGB

# Function: __glMgrInitColorTable
# Declared: Line 1436 (Source lines: 1438-1697)
# Address: 0x0dae7e00 - 0x0dae86ec (Size: 2284 bytes, Frame: 240)
.globl __glMgrInitColorTable
.ent __glMgrInitColorTable
__glMgrInitColorTable:
    # Line 1461
    lw	$a4,__glCurrentContext
    # Line 1438
    move	$v0,$a3
    # Line 1461
    li	$a5,1
    # Line 1438
    addiu	$sp,$sp,-240
    sd	$s2,120($sp)
    move	$s2,$a0
    sd	$gp,112($sp)
    # Line 1461
    lw	$at,__glBeginMode
    # Line 1438
    lui	$v1,0x11
    addiu	$v1,$v1,26776
    # Line 1461
    beq	$at,$a5,.L0dae8674
    # Line 1438
    addu	$gp,$t9,$v1
    sd	$s4,152($sp)
    # Line 1466
    lw	$s4,4($a2)
    # Line 1467
    lw	$a7,8($a2)
    sd	$s0,144($sp)
    # Line 1465
    lw	$s0,0($a2)
    # Line 1467
    dsll32	$a7,$a7,0x0
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f4
    andi	$a6,$s0,0x1000
    beqz	$a6,.L0dae8458
    cvt.s.l	$f4,$f4
    sd	$s3,136($sp)
    # Line 1470
    li	$a2,0x838c
    addu	$a2,$a4,$a2
.L0dae7e68:
    # Line 1489
    lw	$a0,12($a2)
    # Line 1477
    lw	$a3,20($a2)
    # Line 1489
    li	$a6,6408
    beq	$a0,$a6,.L0dae8474
    # Line 1476
    lw	$s3,16($a2)
    # Line 1489
    li	$a7,6407
    beq	$a0,$a7,.L0dae84a0
    li	$at,6409
    beq	$a0,$at,.L0dae84c8
    li	$v1,6410
    beq	$a0,$v1,.L0dae84e4
    li	$a6,6406
    beq	$a0,$a6,.L0dae8508
    li	$a7,0x8049
    beql	$a0,$a7,.L0dae8650
    # Line 1521
    lw	$at,0($a2)
.L0dae7ea8:
    # Line 1524
    beqz	$a1,.L0dae7f7c
    lw	$a0,0($sp)
    beqzl	$a0,.L0dae7ee4
    # Line 1528
    lw	$a0,4($sp)
    lwc1	$f1,0($a1)
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    lw	$a6,24($sp)
    mult	$v1,$a6
    mflo	$at
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    lwc1	$f0,0($at)
    swc1	$f0,0($a1)
    lw	$a0,4($sp)
.L0dae7ee4:
    beqzl	$a0,.L0dae7f18
    # Line 1529
    lw	$a0,8($sp)
    lwc1	$f3,4($a1)
    trunc.w.s	$f3,$f3
    mfc1	$at,$f3
    lw	$v1,24($sp)
    mult	$at,$v1
    mflo	$a7
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$a0
    lwc1	$f2,0($a7)
    swc1	$f2,4($a1)
    lw	$a0,8($sp)
.L0dae7f18:
    beqzl	$a0,.L0dae7f4c
    # Line 1530
    lw	$a0,12($sp)
    lwc1	$f1,8($a1)
    trunc.w.s	$f1,$f1
    mfc1	$a7,$f1
    lw	$at,24($sp)
    mult	$a7,$at
    mflo	$a6
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$a0
    lwc1	$f0,0($a6)
    swc1	$f0,8($a1)
    lw	$a0,12($sp)
.L0dae7f4c:
    beqzl	$a0,.L0dae7f80
    # Line 1531
    lw	$at,420($s2)
    lwc1	$f3,12($a1)
    trunc.w.s	$f3,$f3
    mfc1	$a6,$f3
    lw	$a7,24($sp)
    mult	$a6,$a7
    mflo	$v1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    lwc1	$f2,0($v1)
    swc1	$f2,12($a1)
.L0dae7f7c:
    lw	$at,420($s2)
.L0dae7f80:
    and	$at,$at,$s0
    beqz	$at,.L0dae8698
    # Line 1536
    move	$a0,$s2
    # Line 1538
    lw	$a0,1432($s2)
    lw	$a0,68($a0)
    addiu	$a0,$a0,-6403
    la	$a6,sub_0dbf0000
    sltiu	$a7,$a0,8
    sll	$a0,$a0,0x2
    addiu	$a6,$a6,-4704
    beqz	$a7,.L0dae7fbc
    addu	$a0,$a0,$a6
    lw	$a6,%lo(jtbl_0dbeeda0)($a0)
    jr	$a6
    nop
.L0dae7fbc:
    sd	$s5,192($sp)
    # Line 1594
    lw	$s5,56($sp)
.L0dae7fc4:
    # Line 1595
    slti	$a7,$s3,257
    beqz	$a7,.L0dae8428
    # Line 1600
    slti	$v1,$s3,1025
    sd	$ra,168($sp)
    sd	$v0,104($sp)
    sdc1	$f4,72($sp)
    sd	$s1,184($sp)
    li	$s1,256
.L0dae7fe4:
    # Line 1608
    mult	$s1,$s5
    # lw $t9, -30252($gp) # &__glMgrAllocERAM
    mflo	$a0
    bal __glMgrAllocERAM
    move	$a1,$s0
    sd	$s6,176($sp)
    sd	$s8,128($sp)
    sd	$s7,160($sp)
    # Line 1612
    blez	$s5,.L0dae83d0
    move	$a3,$zero
    addiu	$a7,$s3,-1
    mtc1	$a7,$f0
    nop
    cvt.d.w	$f0,$f0
    ldc1	$f5,_lit8_40efffe000000000
    div.d	$f5,$f5,$f0
    sd	$s6,176($sp)
    sd	$s7,160($sp)
    lwc1	$f4,_lit_477fff00
    lui	$s8,0x8000
    li	$a1,0x8904
    addiu	$a5,$sp,0
    addiu	$t3,$sp,48
    lui	$t0,0x7
    lui	$a2,0xf
    addiu	$a6,$sp,32
    sd	$a6,80($sp)
    ori	$a2,$a2,0xffff
    ori	$t0,$t0,0x4080
    addiu	$v1,$sp,32
    sll	$at,$s5,0x2
    lw	$t9,24($sp)
    addu	$at,$at,$v1
    sd	$at,88($sp)
    sll	$t9,$t9,0x2
    b	.L0dae8098
    cvt.s.d	$f5,$f5
    # Line 1692
    addiu	$t3,$t3,2
.L0dae807c:
    addiu	$a5,$a5,8
    # Line 1615
    ld	$at,80($sp)
    ld	$v1,88($sp)
    # Line 1691
    addu	$a3,$s1,$a3
    # Line 1615
    addiu	$at,$at,4
    beq	$at,$v1,.L0dae83d0
    sd	$at,80($sp)
.L0dae8098:
    # Line 1617
    ld	$a0,80($sp)
    move	$s5,$a3
    sw	$a3,0($a0)
    # Line 1619
    beqz	$s4,.L0dae83c4
    move	$a0,$zero
    # Line 1622
    move	$a6,$s1
    sd	$s1,96($sp)
.L0dae80b4:
    ld	$a7,96($sp)
    # Line 1624
    blezl	$a7,.L0dae807c
    # Line 1692
    addiu	$t3,$t3,2
    b	.L0dae8158
    nop
.L0dae80c8:
    # Line 1661
    lbu	$t1,0($t3)
    beqz	$t1,.L0dae8384
    lw	$t1,0($a5)
    # Line 1666
    lwc1	$f1,0($t1)
    mul.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    mfc1	$at,$f1
    nop
    sh	$at,64($sp)
.L0dae80ec:
    # Line 1668
    lbu	$v1,1($t3)
    beqz	$v1,.L0dae83a4
    lw	$t2,4($a5)
    # Line 1671
    lwc1	$f2,0($t2)
    mul.s	$f2,$f2,$f4
    trunc.w.s	$f2,$f2
    mfc1	$a6,$f2
    nop
    sh	$a6,66($sp)
.L0dae8110:
    # Line 1676
    lw	$a4,64($sp)
    # Line 1675
    addu	$a7,$t9,$t1
    # Line 1676
    addu	$at,$t9,$t2
    sw	$at,4($a5)
    # Line 1675
    sw	$a7,0($a5)
.L0dae8124:
    # Line 1681
    addiu	$a0,$a0,1
    # Line 1679
    sw	$a4,0($t0)
.L0dae812c:
    sra	$v1,$s7,0x1
    bnez	$v1,.L0dae8260
    # Line 1657
    slt	$v1,$a0,$s3
.L0dae8138:
    andi	$a6,$s6,0x1
    beqz	$a6,.L0dae8148
    ld	$a7,96($sp)
    # Line 1686
    sw	$zero,0($t0)
.L0dae8148:
    # Line 1688
    slt	$a7,$a0,$a7
    addu	$s5,$s5,$ra
    beqzl	$a7,.L0dae807c
    # Line 1692
    addiu	$t3,$t3,2
.L0dae8158:
    # Line 1624
    beqz	$s4,.L0dae836c
    ld	$a4,96($sp)
.L0dae8160:
    # Line 1632
    li	$ra,256
    # Line 1657
    move	$s7,$ra
.L0dae8168:
    # Line 1641
    sll	$t8,$ra,0x2
    # Line 1636
    sw	$a1,0($t0)
    # Line 1639
    addiu	$s6,$ra,6
    # Line 1637
    sra	$a6,$ra,0x1
    srl	$a6,$a6,0x1e
    addu	$a6,$a6,$ra
    sra	$a6,$a6,0x2
    sw	$a6,0($t0)
    sra	$v1,$ra,0x1f
    xor	$at,$ra,$v1
    subu	$at,$at,$v1
    sra	$v1,$ra,0x1f
    andi	$at,$at,0x3
    xor	$at,$at,$v1
    subu	$at,$at,$v1
    # Line 1639
    sll	$v1,$s6,0x2
    and	$v1,$v1,$a2
    or	$v1,$v1,$s8
    sw	$v1,0($t0)
    # Line 1640
    sw	$at,0($t0)
    # Line 1641
    sw	$t8,0($t0)
    # Line 1657
    move	$t8,$zero
    # Line 1642
    sw	$v0,0($t0)
    # Line 1643
    sw	$zero,0($t0)
    # Line 1644
    sw	$s5,0($t0)
    # Line 1657
    blez	$ra,.L0dae8138
    # Line 1646
    sw	$ra,0($t0)
    andi	$a6,$ra,0x1
    beqz	$a6,.L0dae812c
    # Line 1657
    slt	$a7,$a0,$s3
    bnez	$a7,.L0dae80c8
    addiu	$t8,$t8,1
    # Line 1661
    li	$a4,-1
    b	.L0dae8124
    sw	$a4,64($sp)
.L0dae81f4:
    lbu	$t1,0($t3)
    beqz	$t1,.L0dae832c
    lw	$t1,0($a5)
    # Line 1666
    lwc1	$f3,0($t1)
    mul.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$at,$f3
    nop
    sh	$at,64($sp)
.L0dae8218:
    # Line 1668
    lbu	$v1,1($t3)
    beqz	$v1,.L0dae834c
    lw	$t2,4($a5)
    # Line 1671
    lwc1	$f0,0($t2)
    mul.s	$f0,$f0,$f4
    trunc.w.s	$f0,$f0
    mfc1	$a6,$f0
    nop
    sh	$a6,66($sp)
.L0dae823c:
    # Line 1676
    lw	$a4,64($sp)
    # Line 1675
    addu	$a7,$t9,$t1
    # Line 1676
    addu	$at,$t9,$t2
    sw	$at,4($a5)
    # Line 1675
    sw	$a7,0($a5)
.L0dae8250:
    # Line 1681
    addiu	$a0,$a0,1
    # Line 1657
    beq	$ra,$t8,.L0dae8138
    # Line 1679
    sw	$a4,0($t0)
    # Line 1657
    slt	$v1,$a0,$s3
.L0dae8260:
    bnezl	$v1,.L0dae8274
    # Line 1661
    lbu	$a6,0($t3)
    li	$a4,-1
    b	.L0dae82cc
    sw	$a4,64($sp)
.L0dae8274:
    beqz	$a6,.L0dae82ec
    lw	$t1,0($a5)
    # Line 1666
    lwc1	$f1,0($t1)
    mul.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    mfc1	$a7,$f1
    nop
    sh	$a7,64($sp)
.L0dae8294:
    # Line 1668
    lbu	$t2,1($t3)
    beqz	$t2,.L0dae830c
    lw	$t2,4($a5)
    # Line 1671
    lwc1	$f2,0($t2)
    mul.s	$f2,$f2,$f4
    trunc.w.s	$f2,$f2
    mfc1	$at,$f2
    nop
    sh	$at,66($sp)
.L0dae82b8:
    # Line 1676
    lw	$a4,64($sp)
    # Line 1675
    addu	$v1,$t9,$t1
    # Line 1676
    addu	$a6,$t9,$t2
    sw	$a6,4($a5)
    # Line 1675
    sw	$v1,0($a5)
.L0dae82cc:
    # Line 1657
    addiu	$t8,$t8,2
    # Line 1681
    addiu	$a0,$a0,1
    # Line 1657
    slt	$a7,$a0,$s3
    bnez	$a7,.L0dae81f4
    # Line 1679
    sw	$a4,0($t0)
    # Line 1661
    li	$a4,-1
    b	.L0dae8250
    sw	$a4,64($sp)
.L0dae82ec:
    # Line 1668
    mtc1	$a0,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f5
    trunc.w.s	$f3,$f3
    mfc1	$at,$f3
    b	.L0dae8294
    sh	$at,64($sp)
.L0dae830c:
    # Line 1673
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f5
    trunc.w.s	$f0,$f0
    mfc1	$v1,$f0
    b	.L0dae82b8
    sh	$v1,66($sp)
.L0dae832c:
    # Line 1668
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f5
    trunc.w.s	$f1,$f1
    mfc1	$a6,$f1
    b	.L0dae8218
    sh	$a6,64($sp)
.L0dae834c:
    # Line 1673
    mtc1	$a0,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f5
    trunc.w.s	$f2,$f2
    mfc1	$a7,$f2
    b	.L0dae823c
    sh	$a7,66($sp)
.L0dae836c:
    # Line 1624
    subu	$a4,$a4,$a0
    slti	$at,$a4,256
    beqz	$at,.L0dae8160
    # Line 1630
    move	$ra,$a4
    b	.L0dae8168
    # Line 1657
    move	$s7,$ra
.L0dae8384:
    # Line 1668
    mtc1	$a0,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f5
    trunc.w.s	$f3,$f3
    mfc1	$a6,$f3
    b	.L0dae80ec
    sh	$a6,64($sp)
.L0dae83a4:
    # Line 1673
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f5
    trunc.w.s	$f0,$f0
    mfc1	$a7,$f0
    b	.L0dae8110
    sh	$a7,66($sp)
.L0dae83c4:
    # Line 1624
    move	$at,$s3
    b	.L0dae80b4
    sd	$s3,96($sp)
.L0dae83d0:
    # Line 1695
    move	$a0,$s2
    ld	$a1,104($sp)
    move	$a2,$v0
    ldc1	$f18,72($sp)
    # lw $t9, -30212($gp) # &__glMgrInitLUTState
    move	$a5,$s0
    move	$a4,$s1
    bal __glMgrInitLUTState
    addiu	$a3,$sp,32
    ld	$gp,112($sp)
    # Line 1697
    ld	$s0,144($sp)
    ld	$s1,184($sp)
    ld	$s2,120($sp)
    ld	$s3,136($sp)
    ld	$s4,152($sp)
    ld	$s5,192($sp)
    ld	$s6,176($sp)
    ld	$ra,168($sp)
    ld	$s7,160($sp)
    ld	$s8,128($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0dae8428:
    # Line 1600
    beqz	$v1,.L0dae8444
    sd	$s1,184($sp)
    sd	$ra,168($sp)
    sd	$v0,104($sp)
    sdc1	$f4,72($sp)
    # Line 1602
    b	.L0dae7fe4
    li	$s1,1024
.L0dae8444:
    sd	$ra,168($sp)
    sd	$v0,104($sp)
    sdc1	$f4,72($sp)
    b	.L0dae7fe4
    # Line 1604
    li	$s1,4096
.L0dae8458:
    # Line 1470
    andi	$a6,$s0,0x2000
    beqzl	$a6,.L0dae8668
    sd	$s3,136($sp)
    sd	$s3,136($sp)
    # Line 1472
    li	$a2,0x8404
    b	.L0dae7e68
    addu	$a2,$a4,$a2
.L0dae8474:
    # Line 1492
    lw	$a6,0($a2)
    # Line 1496
    li	$v1,4
    sw	$v1,24($sp)
    # Line 1492
    sw	$a6,0($sp)
    # Line 1495
    addiu	$at,$a6,12
    sw	$at,12($sp)
    # Line 1494
    addiu	$a7,$a6,8
    sw	$a7,8($sp)
    # Line 1493
    addiu	$a6,$a6,4
    # Line 1497
    b	.L0dae7ea8
    # Line 1493
    sw	$a6,4($sp)
.L0dae84a0:
    # Line 1502
    sw	$zero,12($sp)
    # Line 1499
    lw	$a6,0($a2)
    # Line 1503
    li	$at,3
    sw	$at,24($sp)
    # Line 1499
    sw	$a6,0($sp)
    # Line 1501
    addiu	$a7,$a6,8
    sw	$a7,8($sp)
    # Line 1500
    addiu	$a6,$a6,4
    # Line 1504
    b	.L0dae7ea8
    # Line 1500
    sw	$a6,4($sp)
.L0dae84c8:
    # Line 1506
    lw	$v1,0($a2)
    # Line 1508
    sw	$a5,24($sp)
    # Line 1507
    sw	$zero,12($sp)
    # Line 1506
    sw	$v1,0($sp)
    sw	$v1,4($sp)
    # Line 1509
    b	.L0dae7ea8
    # Line 1506
    sw	$v1,8($sp)
.L0dae84e4:
    # Line 1511
    lw	$a6,0($a2)
    # Line 1513
    li	$a7,2
    sw	$a7,24($sp)
    # Line 1511
    sw	$a6,0($sp)
    sw	$a6,4($sp)
    sw	$a6,8($sp)
    # Line 1512
    addiu	$a6,$a6,4
    # Line 1514
    b	.L0dae7ea8
    # Line 1512
    sw	$a6,12($sp)
.L0dae8508:
    # Line 1518
    sw	$a5,24($sp)
    # Line 1516
    sw	$zero,0($sp)
    sw	$zero,4($sp)
    # Line 1517
    lw	$at,0($a2)
    # Line 1516
    sw	$zero,8($sp)
    # Line 1519
    b	.L0dae7ea8
    # Line 1517
    sw	$at,12($sp)
.L0dae8524:
    sd	$s5,192($sp)
    # Line 1552
    li	$s5,2
    # Line 1548
    andi	$v1,$a3,0x8
    # Line 1549
    andi	$a6,$a3,0x4
    # Line 1550
    andi	$a7,$a3,0x2
    # Line 1551
    andi	$at,$a3,0x1
    sb	$at,51($sp)
    # Line 1550
    sb	$a7,50($sp)
    # Line 1549
    sb	$a6,49($sp)
    # Line 1553
    b	.L0dae7fc4
    # Line 1548
    sb	$v1,48($sp)
.L0dae8550:
    sd	$s5,192($sp)
    # Line 1561
    li	$s5,3
    # Line 1558
    andi	$at,$a3,0x8
    # Line 1557
    lw	$a7,8($sp)
    # Line 1558
    sb	$at,48($sp)
    sb	$at,51($sp)
    # Line 1557
    sw	$a7,20($sp)
    # Line 1559
    andi	$v1,$a3,0x4
    # Line 1560
    andi	$a6,$a3,0x2
    sb	$a6,50($sp)
    sb	$a6,53($sp)
    # Line 1556
    lw	$a6,4($sp)
    # Line 1559
    sb	$v1,49($sp)
    sb	$v1,52($sp)
    # Line 1555
    lw	$v1,0($sp)
    # Line 1556
    sw	$a6,16($sp)
    # Line 1562
    b	.L0dae7fc4
    # Line 1555
    sw	$v1,12($sp)
.L0dae8598:
    sd	$s5,192($sp)
    # Line 1567
    li	$s5,1
    # Line 1566
    andi	$at,$a3,0x8
    sb	$at,48($sp)
    # Line 1565
    lw	$a7,0($sp)
    # Line 1566
    sb	$at,49($sp)
    # Line 1568
    b	.L0dae7fc4
    # Line 1565
    sw	$a7,4($sp)
.L0dae85b8:
    sd	$s5,192($sp)
    # Line 1572
    li	$s5,1
    # Line 1571
    andi	$a6,$a3,0x4
    sb	$a6,48($sp)
    # Line 1570
    lw	$v1,4($sp)
    # Line 1571
    sb	$a6,49($sp)
    # Line 1573
    b	.L0dae7fc4
    # Line 1570
    sw	$v1,0($sp)
.L0dae85d8:
    sd	$s5,192($sp)
    # Line 1577
    li	$s5,1
    # Line 1576
    andi	$at,$a3,0x2
    # Line 1575
    lw	$a7,8($sp)
    # Line 1576
    sb	$at,48($sp)
    sb	$at,49($sp)
    # Line 1575
    sw	$a7,0($sp)
    # Line 1578
    b	.L0dae7fc4
    # Line 1575
    sw	$a7,4($sp)
.L0dae85fc:
    sd	$s5,192($sp)
    # Line 1582
    li	$s5,1
    # Line 1581
    andi	$a6,$a3,0x1
    # Line 1580
    lw	$v1,12($sp)
    # Line 1581
    sb	$a6,48($sp)
    sb	$a6,49($sp)
    # Line 1580
    sw	$v1,0($sp)
    # Line 1583
    b	.L0dae7fc4
    # Line 1580
    sw	$v1,4($sp)
.L0dae8620:
    # Line 1585
    lw	$a7,996($s2)
    andi	$a1,$a3,0x1
    lw	$a0,12($sp)
    andi	$a7,$a7,0x2
    beqz	$a7,.L0dae86dc
    sw	$a0,4($sp)
    sd	$s5,192($sp)
    # Line 1588
    sb	$a1,48($sp)
    # Line 1587
    sw	$a0,0($sp)
.L0dae8644:
    # Line 1593
    li	$s5,1
    # Line 1594
    b	.L0dae7fc4
    # Line 1592
    sb	$a1,49($sp)
.L0dae8650:
    # Line 1522
    sw	$a5,24($sp)
    # Line 1521
    sw	$at,0($sp)
    sw	$at,4($sp)
    sw	$at,8($sp)
    b	.L0dae7ea8
    sw	$at,12($sp)
.L0dae8668:
    # Line 1474
    li	$a2,0x8440
    b	.L0dae7e68
    addu	$a2,$a4,$a2
.L0dae8674:
    # Line 1461
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,168($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,168($sp)
    ld	$gp,112($sp)
    ld	$s2,120($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0dae8698:
    # Line 1536
    move	$a1,$v0
    move	$a2,$zero
    mov.s	$f18,$f4
    move	$a5,$s0
    move	$a4,$zero
    addiu	$a3,$sp,32
    # lw $t9, -30212($gp) # &__glMgrInitLUTState
    ld	$s3,136($sp)
    sd	$ra,168($sp)
    bal __glMgrInitLUTState
    ld	$s4,152($sp)
    ld	$gp,112($sp)
    # Line 1538
    ld	$ra,168($sp)
    ld	$s0,144($sp)
    ld	$s2,120($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0dae86dc:
    sd	$s5,192($sp)
    # Line 1590
    andi	$a6,$a3,0x8
    b	.L0dae8644
    sb	$a6,48($sp)
.end __glMgrInitColorTable

# Function: __glMgrInitLUTCIST
# Declared: Line 1701 (Source lines: 1703-1828)
# Address: 0x0dae86ec - 0x0dae8ab0 (Size: 964 bytes, Frame: 128)
.globl __glMgrInitLUTCIST
.ent __glMgrInitLUTCIST
__glMgrInitLUTCIST:
    # Line 1703
    addiu	$sp,$sp,-256
    sd	$a3,80($sp)
    sd	$gp,88($sp)
    # Line 1726
    lw	$v0,1024($a0)
    sd	$a0,48($sp)
    sdc1	$f30,16($sp)
    # Line 1725
    lw	$a5,4($a2)
    sd	$s0,72($sp)
    # Line 1724
    lw	$s0,0($a2)
    sd	$a5,40($sp)
    # Line 1726
    lw	$a5,1028($a0)
    # Line 1703
    lui	$a0,0x11
    # Line 1726
    lw	$v1,8($a2)
    andi	$at,$s0,0x4
    # Line 1703
    addiu	$a0,$a0,24492
    # Line 1726
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f30
    # Line 1703
    addu	$gp,$t9,$a0
    # Line 1726
    beqz	$at,.L0dae89ec
    cvt.s.l	$f30,$f30
    # Line 1734
    li	$a2,48
    # Line 1736
    andi	$a7,$a5,0x30
    andi	$a6,$v0,0x30
    sd	$s1,136($sp)
    # Line 1735
    li	$s1,16
    ld	$at,48($sp)
    sd	$s1,64($sp)
    # Line 1733
    li	$s1,1
    # Line 1736
    lw	$a1,420($at)
    addiu	$at,$at,1056
    beq	$a6,$a7,.L0dae877c
    sd	$at,56($sp)
    # Line 1739
    ld	$v1,48($sp)
    ori	$a1,$a1,0x4
    sw	$a1,420($v1)
.L0dae877c:
    # Line 1755
    and	$a6,$a1,$s0
    beqz	$a6,.L0dae8a34
    sd	$ra,144($sp)
    # Line 1766
    and	$t0,$a5,$a2
    # Line 1765
    nor	$t1,$a2,$zero
    and	$t1,$t1,$v0
    # Line 1766
    or	$t0,$t0,$t1
    ld	$t1,48($sp)
    # Line 1768
    ld	$a7,56($sp)
    # Line 1766
    sw	$t0,1024($t1)
    # Line 1768
    lw	$a7,0($a7)
    # Line 1771
    mult	$s1,$a7
    # lw $t9, -30252($gp) # &__glMgrAllocERAM
    move	$a1,$s0
    mflo	$a0
    bal __glMgrAllocERAM
    sd	$a7,24($sp)
    sd	$s6,184($sp)
    sd	$s4,176($sp)
    sd	$s7,160($sp)
    sd	$s8,152($sp)
    sd	$v0,32($sp)
    # Line 1775
    blez	$s1,.L0dae89ac
    sd	$zero,128($sp)
    sd	$s0,208($sp)
    sd	$s2,200($sp)
    sd	$s3,192($sp)
    sd	$s5,168($sp)
    lui	$s6,0x8000
    li	$s8,0x8904
    sd	$zero,112($sp)
    lui	$s4,0x7
    lui	$s7,0xf
    ori	$s7,$s7,0xffff
    ori	$s4,$s4,0x4080
    addiu	$at,$sp,0
    ld	$v1,24($sp)
    sd	$at,120($sp)
    sll	$at,$s1,0x2
    sll	$v1,$v1,0x2
    sd	$v1,96($sp)
    addiu	$v1,$sp,0
    addu	$at,$at,$v1
    b	.L0dae8864
    sd	$at,104($sp)
.L0dae8830:
    # Line 1823
    ld	$at,128($sp)
.L0dae8834:
    ld	$v1,24($sp)
    ld	$a7,96($sp)
    # Line 1777
    ld	$a6,112($sp)
    # Line 1823
    addu	$at,$v1,$at
    # Line 1777
    addu	$a6,$a6,$a7
    sd	$a6,112($sp)
    ld	$a6,120($sp)
    ld	$a7,104($sp)
    sd	$at,128($sp)
    addiu	$a6,$a6,4
    beq	$a6,$a7,.L0dae898c
    sd	$a6,120($sp)
.L0dae8864:
    ld	$v1,128($sp)
    # Line 1779
    ld	$a6,120($sp)
    # Line 1781
    ld	$at,48($sp)
    # Line 1779
    move	$s3,$v1
    sw	$v1,0($a6)
    # Line 1781
    ld	$v1,64($sp)
    lw	$at,1028($at)
    ld	$s2,56($sp)
    and	$at,$at,$v1
    beqz	$at,.L0dae897c
    move	$s1,$zero
    ld	$s2,56($sp)
    # Line 1784
    lw	$s2,4($s2)
.L0dae8898:
    ld	$at,24($sp)
    # Line 1786
    blez	$at,.L0dae8834
    # Line 1823
    ld	$at,128($sp)
    b	.L0dae88c4
    ld	$a6,40($sp)
.L0dae88ac:
    # Line 1818
    sw	$zero,0($s4)
.L0dae88b0:
    # Line 1820
    addu	$s3,$s3,$s0
    ld	$v1,24($sp)
    slt	$v1,$s1,$v1
    beqz	$v1,.L0dae8830
    ld	$a6,40($sp)
.L0dae88c4:
    ld	$v0,24($sp)
    # Line 1786
    beqz	$a6,.L0dae8964
    # Line 1796
    li	$s0,256
.L0dae88d0:
    # Line 1812
    move	$a1,$s2
    move	$a0,$s0
    # lw $t9, -18688($gp) # &__glMgr_PushPixels
    # Line 1805
    sll	$t0,$s0,0x2
    # Line 1806
    ld	$a7,32($sp)
    # Line 1800
    sw	$s8,0($s4)
    # Line 1803
    addiu	$s5,$s0,6
    # Line 1801
    sra	$t3,$s0,0x1
    srl	$t3,$t3,0x1e
    addu	$t3,$t3,$s0
    sra	$t3,$t3,0x2
    sw	$t3,0($s4)
    sra	$t2,$s0,0x1f
    xor	$t1,$s0,$t2
    subu	$t1,$t1,$t2
    sra	$t2,$s0,0x1f
    andi	$t1,$t1,0x3
    xor	$t1,$t1,$t2
    subu	$t1,$t1,$t2
    # Line 1803
    sll	$t2,$s5,0x2
    and	$t2,$t2,$s7
    or	$t2,$t2,$s6
    sw	$t2,0($s4)
    # Line 1804
    sw	$t1,0($s4)
    # Line 1805
    sw	$t0,0($s4)
    # Line 1806
    sw	$a7,0($s4)
    # Line 1807
    sw	$zero,0($s4)
    # Line 1808
    sw	$s3,0($s4)
    # Line 1812
    jal	__glMgr_PushPixels
    # Line 1810
    sw	$s0,0($s4)
    # Line 1814
    addu	$s1,$s1,$s0
    # Line 1813
    sll	$at,$s0,0x2
    # Line 1814
    andi	$v1,$s5,0x1
    beqz	$v1,.L0dae88b0
    # Line 1813
    addu	$s2,$at,$s2
    b	.L0dae88ac
    nop
.L0dae8964:
    # Line 1786
    subu	$v0,$v0,$s1
    slti	$a6,$v0,256
    beqz	$a6,.L0dae88d0
    nop
    # Line 1794
    b	.L0dae88d0
    move	$s0,$v0
.L0dae897c:
    # Line 1786
    ld	$at,112($sp)
    lw	$s2,8($s2)
    b	.L0dae8898
    addu	$s2,$s2,$at
.L0dae898c:
    ld	$s8,152($sp)
    ld	$s7,160($sp)
    ld	$s5,168($sp)
    ld	$s4,176($sp)
    ld	$s6,184($sp)
    ld	$s3,192($sp)
    ld	$s2,200($sp)
    ld	$s0,208($sp)
.L0dae89ac:
    ld	$a0,48($sp)
    # Line 1826
    ld	$a1,80($sp)
    ld	$a2,32($sp)
    mov.s	$f18,$f30
    move	$a5,$s0
    # lw $t9, -30212($gp) # &__glMgrInitLUTState
    ld	$a4,24($sp)
    addiu	$a3,$sp,0
    bal __glMgrInitLUTState
    ld	$s1,136($sp)
    ld	$gp,88($sp)
    # Line 1828
    ld	$ra,144($sp)
    ld	$s0,72($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0dae89ec:
    # Line 1739
    andi	$at,$s0,0x8
    beqz	$at,.L0dae8a74
    sd	$s1,136($sp)
    # Line 1742
    li	$a2,3
    # Line 1744
    andi	$a6,$a5,0x3
    andi	$v1,$v0,0x3
    ld	$s1,48($sp)
    # Line 1743
    li	$a7,1
    sd	$a7,64($sp)
    # Line 1744
    lw	$a1,420($s1)
    addiu	$s1,$s1,1032
    sd	$s1,56($sp)
    beq	$v1,$a6,.L0dae877c
    # Line 1741
    li	$s1,1
    # Line 1747
    ld	$at,48($sp)
    ori	$a1,$a1,0x8
    b	.L0dae877c
    sw	$a1,420($at)
.L0dae8a34:
    ld	$a0,48($sp)
    # Line 1760
    ld	$a1,80($sp)
    move	$a2,$zero
    mov.s	$f18,$f30
    move	$a5,$s0
    # lw $t9, -30212($gp) # &__glMgrInitLUTState
    move	$a4,$zero
    addiu	$a3,$sp,0
    bal __glMgrInitLUTState
    ld	$s1,136($sp)
    ld	$gp,88($sp)
    # Line 1762
    ld	$ra,144($sp)
    ld	$s0,72($sp)
    ldc1	$f30,16($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0dae8a74:
    # Line 1750
    li	$a2,12
    # Line 1752
    andi	$a6,$a5,0xc
    andi	$v1,$v0,0xc
    ld	$s1,48($sp)
    # Line 1751
    li	$a7,4
    sd	$a7,64($sp)
    # Line 1752
    lw	$a1,420($s1)
    addiu	$s1,$s1,1044
    sd	$s1,56($sp)
    beq	$v1,$a6,.L0dae877c
    # Line 1749
    li	$s1,2
    # Line 1755
    ld	$at,48($sp)
    ori	$a1,$a1,0x10
    b	.L0dae877c
    sw	$a1,420($at)
.end __glMgrInitLUTCIST

# Function: __glMgrInitConvolve2DState
# Declared: Line 1832 (Source lines: 1834-2165)
# Address: 0x0dae8ab0 - 0x0dae9710 (Size: 3168 bytes, Frame: 176)
.globl __glMgrInitConvolve2DState
.ent __glMgrInitConvolve2DState
__glMgrInitConvolve2DState:
    # Line 1870
    lw	$a6,1536($a0)
    lw	$a4,1432($a0)
    # Line 1834
    addiu	$sp,$sp,-304
    sd	$s4,144($sp)
    # Line 1870
    lw	$s4,76($a4)
    multu	$a6,$s4
    sd	$s8,128($sp)
    # Line 1863
    lw	$s8,16($a2)
    # Line 1870
    lw	$v1,0($a4)
    # Line 1851
    lw	$a6,__glCurrentContext
    # Line 1870
    mflo	$a5
    subu	$v1,$v1,$a5
    sw	$v1,0($a4)
    # Line 1872
    lw	$at,1432($a0)
    lw	$v0,1524($a0)
    lw	$s4,8($at)
    subu	$s4,$s4,$v0
    sw	$s4,8($at)
    sd	$s5,136($sp)
    # Line 1873
    lw	$a4,1432($a0)
    # Line 1834
    move	$s5,$a2
    # Line 1873
    lw	$a5,1536($a0)
    lw	$a2,24($a4)
    subu	$a2,$a2,$a5
    sw	$a2,24($a4)
    sd	$a0,104($sp)
    lw	$v0,1432($a0)
    sd	$gp,152($sp)
    # Line 1834
    lui	$v1,0x11
    # Line 1873
    lw	$at,28($v0)
    # Line 1834
    addiu	$v1,$v1,23528
    addu	$gp,$t9,$v1
    # Line 1873
    beqz	$at,.L0dae8b90
    # Line 1834
    move	$s4,$a3
    # Line 1877
    ld	$at,104($sp)
    lw	$a4,76($v0)
    lw	$v1,1536($at)
    multu	$v1,$a4
    lw	$a4,4($v0)
    mflo	$a5
    subu	$a4,$a4,$a5
    sw	$a4,4($v0)
    # Line 1879
    lw	$v0,1432($at)
    lw	$v1,1524($at)
    lw	$a5,12($v0)
    subu	$a5,$a5,$v1
    sw	$a5,12($v0)
    # Line 1880
    lw	$v1,1432($at)
    lw	$a4,1536($at)
    lw	$v0,28($v1)
    sd	$s6,232($sp)
    sd	$s3,248($sp)
    subu	$v0,$v0,$a4
    sw	$v0,28($v1)
    sd	$s1,240($sp)
    lw	$v0,1432($at)
.L0dae8b90:
    sd	$s6,232($sp)
    # Line 1883
    ld	$s6,104($sp)
    sd	$s1,240($sp)
    lw	$at,52($v0)
    lw	$v1,1536($s6)
    sd	$s3,248($sp)
    # Line 1887
    lui	$s3,0x1
    # Line 1883
    subu	$at,$at,$v1
    sw	$at,52($v0)
    # Line 1887
    addu	$s3,$a6,$s3
    # Line 1889
    lw	$s6,1432($s6)
    # Line 1888
    lw	$at,-32032($s3)
    # Line 1887
    lw	$s1,-32036($s3)
    # Line 1889
    lw	$s6,76($s6)
    sd	$at,96($sp)
    beqz	$a1,.L0dae8c14
    sll	$s6,$s6,0x2
    # Line 1893
    lwc1	$f2,-32024($s3)
    lwc1	$f3,0($a1)
    mul.s	$f2,$f2,$f3
    swc1	$f2,0($a1)
    # Line 1894
    lwc1	$f0,-32020($s3)
    lwc1	$f1,4($a1)
    mul.s	$f0,$f0,$f1
    swc1	$f0,4($a1)
    # Line 1895
    lwc1	$f2,-32016($s3)
    lwc1	$f3,8($a1)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a1)
    # Line 1896
    lwc1	$f0,-32012($s3)
    lwc1	$f1,12($a1)
    mul.s	$f0,$f0,$f1
    swc1	$f0,12($a1)
.L0dae8c14:
    ld	$a4,96($sp)
    slt	$a4,$a4,$s1
    beqzl	$a4,.L0dae8c30
    sd	$s0,256($sp)
    sd	$s0,256($sp)
    # Line 1900
    b	.L0dae8c34
    move	$v0,$s1
.L0dae8c30:
    ld	$v0,96($sp)
.L0dae8c34:
    slti	$a5,$v0,4
    beqz	$a5,.L0dae90a0
    move	$s0,$v0
    # Line 1902
    li	$s0,3
.L0dae8c44:
    # Line 1904
    ld	$at,96($sp)
.L0dae8c48:
    li	$v1,1
    beq	$at,$v1,.L0dae92ec
    ld	$v0,96($sp)
    # Line 1910
    subu	$v0,$v0,$s0
    addiu	$v0,$v0,-1
.L0dae8c5c:
    # Line 1911
    ld	$a4,104($sp)
    # Line 1914
    li	$v1,3
    beq	$s0,$v1,.L0dae92f4
    # Line 1911
    sw	$v0,124($a4)
    # Line 1914
    li	$a5,5
    beq	$s0,$a5,.L0dae9378
    li	$at,7
    beq	$s0,$at,.L0dae94d0
    la	$a1,SYMBOL_LOCATION
    sd	$s2,216($sp)
    lw	$s2,0($sp)
.L0dae8c88:
    ld	$v1,104($sp)
    # Line 1939
    lw	$v1,408($v1)
    beqz	$v1,.L0dae9318
    lw	$v1,784($a1)
.L0dae8c98:
    ld	$a1,104($sp)
    # Line 1947
    lw	$a4,256($a1)
    sd	$s7,208($sp)
    li	$a2,0x80c8
    andi	$a4,$a4,0x9023
    beqz	$a4,.L0dae9350
    lw	$a1,1504($a1)
    ld	$s7,104($sp)
    # Line 1963
    lw	$s7,1508($s7)
    sd	$ra,224($sp)
    # Line 1964
    subu	$a0,$a1,$s7
    addu	$a0,$a0,$a2
    move	$v0,$a0
.L0dae8ccc:
    # Line 1972
    ld	$ra,104($sp)
    # Line 1975
    sra	$a2,$v0,0x1
    # Line 1972
    lw	$at,1520($ra)
    # Line 1987
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    # Line 1975
    sw	$a2,132($ra)
    # Line 1972
    sll	$t8,$at,0x2
    # Line 1973
    sll	$v1,$at,0x2
    subu	$v1,$v1,$at
    # Line 1972
    subu	$t8,$t8,$at
    sll	$t8,$t8,0x2
    # Line 1973
    sll	$v1,$v1,0x3
    addu	$v1,$v1,$v0
    # Line 1972
    addu	$t8,$t8,$v0
    # Line 1976
    sra	$t8,$t8,0x1
    # Line 1977
    sra	$v1,$v1,0x1
    sw	$v1,136($ra)
    # Line 1976
    sw	$t8,128($ra)
    # Line 1987
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 1988
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s8
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 1989
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    sra	$a0,$s7,0x1
    # Line 1990
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s6
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    ld	$s7,208($sp)
    # Line 1991
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s2
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 1992
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,104($sp)
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,220($a0)
    # Line 1993
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,104($sp)
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,204($a0)
    # Line 1994
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,104($sp)
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,208($a0)
    # Line 1995
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,104($sp)
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,212($a0)
    # Line 1996
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,104($sp)
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,216($a0)
    ld	$a2,104($sp)
    # Line 1997
    lw	$a2,1432($a2)
    lw	$a2,0($a2)
    move	$a1,$zero
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a0,$a2,0x1
    srl	$a0,$a0,0x1e
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    sra	$a0,$a0,0x2
    ld	$a2,104($sp)
    # Line 1998
    lw	$a2,1432($a2)
    lw	$a2,4($a2)
    li	$a1,1
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a0,$a2,0x1
    srl	$a0,$a0,0x1e
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    sra	$a0,$a0,0x2
    ld	$a2,104($sp)
    # Line 1999
    lw	$a2,1432($a2)
    lw	$a2,0($a2)
    move	$a1,$zero
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    sra	$a2,$a2,0x1f
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x3
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    subu	$a0,$a0,$a2
    ld	$a2,104($sp)
    # Line 2000
    lw	$a2,1432($a2)
    lw	$a2,4($a2)
    li	$a1,1
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    sra	$a2,$a2,0x1f
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x3
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    subu	$a0,$a0,$a2
    # Line 2001
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    li	$a0,1
    move	$s6,$s5
    # Line 2005
    lwc1	$f4,0($s6)
    # Line 2006
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 2005
    swc1	$f4,16($sp)
    # Line 2006
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,16($sp)
    # Line 2005
    lwc1	$f5,4($s6)
    # Line 2006
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 2005
    swc1	$f5,16($sp)
    # Line 2006
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,16($sp)
    # Line 2005
    lwc1	$f6,8($s6)
    # Line 2006
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 2005
    swc1	$f6,16($sp)
    # Line 2006
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,16($sp)
    # Line 2005
    lwc1	$f7,12($s6)
    # Line 2006
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 2005
    swc1	$f7,16($sp)
    # Line 2006
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,16($sp)
    # Line 2009
    li	$a1,-2
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,104($sp)
    ld	$s6,232($sp)
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,408($a0)
    # Line 2010
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s4
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-1
    ld	$v0,104($sp)
    lw	$v0,420($v0)
    andi	$a4,$v0,0x800
    beqz	$a4,.L0dae959c
    ld	$ra,224($sp)
    # Line 2017
    li	$v1,-2049
    ld	$a4,104($sp)
    lw	$a2,4($sp)
    and	$v1,$v0,$v1
    lw	$a1,260($a4)
    beqz	$a2,.L0dae9364
    sw	$v1,420($a4)
    # Line 2024
    lw	$a4,8($sp)
    # Line 2025
    ori	$at,$a1,0x1
    ld	$v1,104($sp)
    # Line 2021
    lui	$a5,0x7
    ori	$a5,$a5,0x4080
    # Line 2025
    sw	$at,260($v1)
    # Line 2021
    li	$at,0x850c
    sw	$at,0($a5)
    # Line 2022
    sw	$a2,0($a5)
    # Line 2023
    sw	$s2,0($a5)
    # Line 2024
    sw	$a4,0($a5)
.L0dae8f70:
    ld	$a2,96($sp)
    # Line 2031
    multu	$s1,$a2
    lw	$a0,__glCurrentContext
    lw	$t9,0($a0)
    mflo	$a1
    jalr	$t9
    sll	$a1,$a1,0x4
    ld	$a4,96($sp)
    mult	$s1,$a4
    sdc1	$f30,200($sp)
    move	$a5,$v0
    mflo	$a0
    sll	$a0,$a0,0x2
    sll	$a0,$a0,0x2
    addu	$a0,$v0,$a0
    beq	$v0,$a0,.L0dae8fe0
    sd	$v0,112($sp)
    mtc1	$zero,$f30
.L0dae8fb8:
    # Line 2037
    addiu	$v0,$v0,4
    beq	$a0,$v0,.L0dae8fdc
    swc1	$f30,-4($v0)
    addiu	$v0,$v0,4
    beq	$a0,$v0,.L0dae8fdc
    swc1	$f30,-4($v0)
    addiu	$v0,$v0,4
    bne	$a0,$v0,.L0dae8fb8
    swc1	$f30,-4($v0)
.L0dae8fdc:
    ldc1	$f30,200($sp)
.L0dae8fe0:
    # Line 2040
    lw	$v0,-32040($s3)
    li	$at,6409
    beq	$v0,$at,.L0dae9468
    li	$v1,6406
    beq	$v0,$v1,.L0dae9534
    li	$a4,6410
    beq	$v0,$a4,.L0dae90b4
    li	$a5,0x8049
    beq	$v0,$a5,.L0dae964c
    li	$at,6407
    beq	$v0,$at,.L0dae93dc
    li	$v1,6408
    bne	$v0,$v1,.L0dae912c
    ld	$v0,104($sp)
    ld	$v1,96($sp)
    # Line 2082
    addiu	$v1,$v1,-1
    sra	$v1,$v1,0x1
    mult	$v1,$s1
    lwc1	$f4,_lit_3f800000
    ld	$a4,112($sp)
    addiu	$v0,$s1,-1
    sra	$v0,$v0,0x1
    sll	$v0,$v0,0x2
    sll	$v0,$v0,0x2
    mflo	$v1
    sll	$v1,$v1,0x2
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a4
    addu	$v0,$v0,$v1
    # Line 2083
    swc1	$f4,12($v0)
    swc1	$f4,8($v0)
    swc1	$f4,4($v0)
    swc1	$f4,0($v0)
    # Line 2085
    sw	$zero,40($sp)
    # Line 2087
    li	$a5,2
    # Line 2089
    li	$at,4
    li	$v1,1
    # Line 2086
    sw	$v1,44($sp)
    li	$a4,3
    # Line 2088
    sw	$a4,52($sp)
    # Line 2084
    lw	$a4,-32052($s3)
    # Line 2089
    sw	$at,56($sp)
    # Line 2087
    sw	$a5,48($sp)
    # Line 2084
    sw	$a4,24($sp)
    sw	$a4,28($sp)
    sw	$a4,32($sp)
    b	.L0dae9128
    sw	$a4,36($sp)
.L0dae90a0:
    # Line 1902
    andi	$a5,$v0,0x1
    bnez	$a5,.L0dae8c48
    # Line 1904
    ld	$at,96($sp)
    b	.L0dae8c44
    addiu	$s0,$v0,1
.L0dae90b4:
    ld	$a4,96($sp)
    # Line 2057
    addiu	$a4,$a4,-1
    sra	$a4,$a4,0x1
    mult	$a4,$s1
    lwc1	$f4,_lit_3f800000
    li	$v1,-2
    addiu	$v0,$s1,-1
    and	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    ld	$a4,112($sp)
    mflo	$v1
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a4
    addu	$v0,$v0,$v1
    # Line 2058
    swc1	$f4,4($v0)
    swc1	$f4,0($v0)
    # Line 2060
    sw	$zero,40($sp)
    sw	$zero,44($sp)
    sw	$zero,48($sp)
    # Line 2062
    li	$at,2
    li	$v1,1
    # Line 2059
    lw	$a5,-32052($s3)
    # Line 2061
    sw	$v1,52($sp)
    # Line 2062
    sw	$at,56($sp)
    # Line 2059
    sw	$a5,24($sp)
    sw	$a5,28($sp)
    sw	$a5,32($sp)
    sw	$a5,36($sp)
.L0dae9128:
    ld	$v0,104($sp)
.L0dae912c:
    # Line 2091
    lw	$v0,1432($v0)
    la	$a5,sub_0dbf0000
    lw	$a0,68($v0)
    addiu	$a5,$a5,-4672
    addiu	$a0,$a0,-6403
    sltiu	$a4,$a0,8
    sll	$a0,$a0,0x2
    beqz	$a4,.L0dae915c
    addu	$a0,$a0,$a5
    lw	$v1,%lo(jtbl_0dbeedc0)($a0)
    jr	$v1
    li	$v1,3
.L0dae915c:
    # Line 2125
    lw	$a4,80($sp)
    sd	$a4,160($sp)
.L0dae9164:
    # Line 2141
    ld	$a5,160($sp)
    sd	$s2,120($sp)
    sdc1	$f30,200($sp)
    blez	$a5,.L0dae9294
    sd	$zero,168($sp)
    lw	$s4,56($sp)
    mult	$s1,$s4
    sd	$s2,120($sp)
    addiu	$s8,$sp,24
    mtc1	$zero,$f30
    lw	$a1,76($v0)
    mflo	$at
    sll	$at,$at,0x2
    b	.L0dae91b4
    sd	$at,184($sp)
.L0dae91a0:
    ld	$v1,168($sp)
    ld	$a4,160($sp)
    addiu	$v1,$v1,1
    beq	$v1,$a4,.L0dae9294
    sd	$v1,168($sp)
.L0dae91b4:
    # Line 2142
    beqz	$a1,.L0dae91a0
    sd	$zero,176($sp)
    b	.L0dae91e8
    addiu	$s7,$sp,64
.L0dae91c4:
    ld	$a1,104($sp)
    # Line 2143
    lw	$a1,1432($a1)
    lw	$a1,76($a1)
.L0dae91d0:
    ld	$a4,176($sp)
    # Line 2142
    addiu	$a4,$a4,1
    sd	$a4,176($sp)
    sltu	$a4,$a4,$a1
    beqz	$a4,.L0dae91a0
    addiu	$s7,$s7,4
.L0dae91e8:
    # Line 2143
    blez	$s0,.L0dae91d0
    sd	$zero,192($sp)
    b	.L0dae9210
    move	$s6,$zero
.L0dae91f8:
    ld	$at,184($sp)
    ld	$a5,192($sp)
    addu	$s6,$s6,$at
    addiu	$a5,$a5,1
    beq	$s0,$a5,.L0dae91c4
    sd	$a5,192($sp)
.L0dae9210:
    # Line 2144
    ld	$s5,192($sp)
    blez	$s0,.L0dae91f8
    move	$s2,$zero
    ld	$at,96($sp)
    move	$s3,$zero
    b	.L0dae924c
    slt	$s5,$s5,$at
.L0dae922c:
    # Line 2152
    swc1	$f30,88($sp)
.L0dae9230:
    # Line 2144
    addiu	$s2,$s2,1
    # Line 2154
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,88($sp)
    # Line 2144
    addu	$s3,$s3,$s4
    beq	$s0,$s2,.L0dae91f8
.L0dae924c:
    slt	$v1,$s2,$s1
    beqzl	$v1,.L0dae9230
    # Line 2152
    swc1	$f30,88($sp)
    # Line 2144
    beqz	$s5,.L0dae922c
    addiu	$at,$sp,40
    # Line 2147
    lw	$a5,0($s7)
    sll	$a5,$a5,0x2
    addu	$a4,$a5,$s8
    lw	$a4,0($a4)
    addu	$a5,$a5,$at
    lw	$a5,0($a5)
    addu	$a4,$a4,$s6
    addu	$a5,$a5,$s3
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f0,0($a4)
    b	.L0dae9230
    swc1	$f0,88($sp)
.L0dae9294:
    # Line 2162
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,120($sp)
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-1
    # Line 2164
    ld	$a1,112($sp)
    ldc1	$f30,200($sp)
    ld	$s3,248($sp)
    lw	$a0,__glCurrentContext
    ld	$s1,240($sp)
    ld	$s6,232($sp)
    lw	$t9,12($a0)
    ld	$s2,216($sp)
    ld	$s7,208($sp)
    jalr	$t9
    ld	$s0,256($sp)
    ld	$gp,152($sp)
    # Line 2165
    ld	$s4,144($sp)
    ld	$ra,224($sp)
    ld	$s5,136($sp)
    ld	$s8,128($sp)
    jr	$ra
    addiu	$sp,$sp,304
.L0dae92ec:
    # Line 1908
    b	.L0dae8c5c
    move	$v0,$zero
.L0dae92f4:
    ld	$at,104($sp)
    # Line 1917
    lw	$at,0($at)
    beqz	$at,.L0dae96b4
    # Line 1918
    nop	# was lw $t9, -30256($gp) # &__glMgrInitPixelPath
.L0dae9304:
    # Line 1921
    sw	$zero,4($sp)
    # Line 1918
    la	$a1,SYMBOL_LOCATION
    sd	$s2,216($sp)
    # Line 1922
    b	.L0dae8c88
    # Line 1919
    lw	$s2,964($a1)
.L0dae9318:
    # Line 1939
    sltiu	$v1,$v1,1024
    bnezl	$v1,.L0dae9330
    sd	$ra,224($sp)
    sd	$ra,224($sp)
    # Line 1943
    b	.L0dae9334
    li	$a0,1024
.L0dae9330:
    # Line 1945
    li	$a0,2048
.L0dae9334:
    # Line 1947
    # lw $t9, -30252($gp) # &__glMgrAllocERAM
    bal __glMgrAllocERAM
    li	$a1,0x8000
    ld	$a4,104($sp)
    ld	$ra,224($sp)
    b	.L0dae8c98
    sw	$v0,408($a4)
.L0dae9350:
    sd	$ra,224($sp)
    # Line 1969
    move	$s7,$zero
    # Line 1968
    addu	$a0,$a1,$a2
    b	.L0dae8ccc
    move	$v0,$a0
.L0dae9364:
    # Line 2028
    li	$a5,-2
    ld	$at,104($sp)
    and	$a5,$a1,$a5
    b	.L0dae8f70
    sw	$a5,260($at)
.L0dae9378:
    ld	$at,104($sp)
    # Line 1924
    lw	$at,0($at)
    beqz	$at,.L0dae96d0
.L0dae9384:
    # Line 1926
    li	$a4,100
    # Line 1925
    la	$a1,SYMBOL_LOCATION
    # Line 1927
    ld	$v1,104($sp)
    sd	$s2,216($sp)
    # Line 1926
    lw	$a5,960($a1)
    # Line 1927
    lw	$v1,420($v1)
    lw	$s2,964($a1)
    # Line 1926
    subu	$a4,$a4,$a5
    # Line 1927
    andi	$v1,$v1,0x800
    addu	$s2,$s2,$a5
    addiu	$s2,$s2,-100
    beqz	$v1,.L0dae8c88
    # Line 1926
    sw	$a4,4($sp)
    # Line 1929
    # lw $t9, -30252($gp) # &__glMgrAllocERAM
    li	$a1,2048
    sd	$ra,224($sp)
    bal __glMgrAllocERAM
    li	$a0,256
    la	$a1,SYMBOL_LOCATION
    sw	$v0,8($sp)
    b	.L0dae8c88
    ld	$ra,224($sp)
.L0dae93dc:
    ld	$a4,96($sp)
    # Line 2071
    addiu	$a4,$a4,-1
    sra	$a4,$a4,0x1
    mult	$a4,$s1
    lwc1	$f4,_lit_3f800000
    addiu	$v1,$s1,-1
    sra	$v1,$v1,0x1
    sll	$v0,$v1,0x2
    subu	$v0,$v0,$v1
    mflo	$a4
    sll	$v1,$a4,0x2
    subu	$v1,$v1,$a4
    ld	$a4,112($sp)
    sll	$v0,$v0,0x2
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a4
    addu	$v0,$v0,$v1
    # Line 2072
    swc1	$f4,8($v0)
    swc1	$f4,4($v0)
    swc1	$f4,0($v0)
    # Line 2078
    sw	$zero,52($sp)
    # Line 2075
    sw	$zero,40($sp)
    # Line 2077
    li	$at,2
    li	$a4,1
    # Line 2076
    sw	$a4,44($sp)
    # Line 2074
    ld	$v1,112($sp)
    li	$a5,3
    # Line 2079
    sw	$a5,56($sp)
    # Line 2073
    lw	$a5,-32052($s3)
    # Line 2077
    sw	$at,48($sp)
    # Line 2074
    sw	$v1,36($sp)
    # Line 2073
    sw	$a5,24($sp)
    sw	$a5,28($sp)
    # Line 2080
    b	.L0dae9128
    # Line 2073
    sw	$a5,32($sp)
.L0dae9468:
    # Line 2043
    ld	$at,96($sp)
    addiu	$at,$at,-1
    sra	$at,$at,0x1
    mult	$at,$s1
    # Line 2046
    sw	$zero,40($sp)
    sw	$zero,44($sp)
    # Line 2043
    lwc1	$f1,_lit_3f800000
    ld	$v1,112($sp)
    li	$a5,1
    # Line 2047
    sw	$a5,56($sp)
    # Line 2043
    addiu	$a5,$s1,-1
    sra	$a5,$a5,0x1
    sll	$a5,$a5,0x2
    mflo	$a4
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$v1
    addu	$a4,$a4,$a5
    swc1	$f1,0($a4)
    # Line 2046
    sw	$zero,48($sp)
    # Line 2044
    lw	$at,-32052($s3)
    # Line 2046
    sw	$zero,52($sp)
    # Line 2045
    sw	$v1,36($sp)
    # Line 2044
    sw	$at,24($sp)
    sw	$at,28($sp)
    # Line 2048
    b	.L0dae9128
    # Line 2044
    sw	$at,32($sp)
.L0dae94d0:
    ld	$v1,104($sp)
    # Line 1932
    lw	$v1,0($v1)
    beqz	$v1,.L0dae96f0
.L0dae94dc:
    # Line 1934
    li	$a5,196
    # Line 1933
    la	$a1,SYMBOL_LOCATION
    # Line 1935
    ld	$a4,104($sp)
    sd	$s2,216($sp)
    # Line 1934
    lw	$at,960($a1)
    # Line 1935
    lw	$a4,420($a4)
    lw	$s2,964($a1)
    # Line 1934
    subu	$a5,$a5,$at
    # Line 1935
    andi	$a4,$a4,0x800
    addu	$s2,$s2,$at
    addiu	$s2,$s2,-196
    beqz	$a4,.L0dae8c88
    # Line 1934
    sw	$a5,4($sp)
    # Line 1937
    # lw $t9, -30252($gp) # &__glMgrAllocERAM
    li	$a1,2048
    sd	$ra,224($sp)
    bal __glMgrAllocERAM
    li	$a0,256
    la	$a1,SYMBOL_LOCATION
    sw	$v0,8($sp)
    b	.L0dae8c88
    ld	$ra,224($sp)
.L0dae9534:
    # Line 2050
    ld	$a5,96($sp)
    addiu	$a5,$a5,-1
    sra	$a5,$a5,0x1
    mult	$a5,$s1
    # Line 2053
    sw	$zero,40($sp)
    sw	$zero,44($sp)
    # Line 2051
    ld	$at,112($sp)
    # Line 2053
    sw	$zero,48($sp)
    sw	$zero,52($sp)
    # Line 2051
    sw	$at,24($sp)
    # Line 2050
    lwc1	$f2,_lit_3f800000
    li	$a4,1
    # Line 2054
    sw	$a4,56($sp)
    # Line 2050
    addiu	$a4,$s1,-1
    sra	$a4,$a4,0x1
    sll	$a4,$a4,0x2
    mflo	$v1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$at
    addu	$v1,$v1,$a4
    swc1	$f2,0($v1)
    # Line 2051
    sw	$at,28($sp)
    # Line 2052
    lw	$a5,-32052($s3)
    # Line 2051
    sw	$at,32($sp)
    # Line 2055
    b	.L0dae9128
    # Line 2052
    sw	$a5,36($sp)
.L0dae959c:
    ld	$gp,152($sp)
    # Line 2015
    ld	$s0,256($sp)
    ld	$s1,240($sp)
    ld	$s2,216($sp)
    ld	$s3,248($sp)
    ld	$s4,144($sp)
    ld	$s5,136($sp)
    ld	$s8,128($sp)
    jr	$ra
    addiu	$sp,$sp,304
.L0dae95c4:
    # Line 2098
    sw	$zero,64($sp)
    # Line 2099
    li	$at,4
    # Line 2100
    b	.L0dae9164
    sd	$at,160($sp)
.L0dae95d4:
    li	$v1,1
    # Line 2103
    li	$a4,4
    sd	$a4,160($sp)
    # Line 2104
    b	.L0dae9164
    # Line 2102
    sw	$v1,64($sp)
.L0dae95e8:
    # Line 2106
    li	$a5,2
    # Line 2107
    li	$at,4
    sd	$at,160($sp)
    # Line 2108
    b	.L0dae9164
    # Line 2106
    sw	$a5,64($sp)
.L0dae95fc:
    # Line 2111
    li	$a4,4
    sd	$a4,160($sp)
    # Line 2112
    b	.L0dae9164
    # Line 2110
    sw	$v1,64($sp)
.L0dae960c:
    # Line 2115
    sw	$zero,64($sp)
    # Line 2117
    li	$a5,2
    li	$at,1
    li	$v1,3
    # Line 2119
    li	$a4,1
    sd	$a4,160($sp)
    # Line 2118
    sw	$v1,76($sp)
    # Line 2116
    sw	$at,68($sp)
    # Line 2120
    b	.L0dae9164
    # Line 2117
    sw	$a5,72($sp)
.L0dae9634:
    # Line 2123
    sw	$zero,64($sp)
    # Line 2122
    li	$a5,2
    li	$at,3
    # Line 2124
    sw	$at,68($sp)
    # Line 2125
    b	.L0dae9164
    sd	$a5,160($sp)
.L0dae964c:
    # Line 2065
    ld	$at,96($sp)
    addiu	$at,$at,-1
    sra	$at,$at,0x1
    mult	$at,$s1
    # Line 2067
    sw	$zero,40($sp)
    # Line 2065
    lwc1	$f3,_lit_3f800000
    li	$a5,1
    # Line 2068
    sw	$a5,56($sp)
    # Line 2065
    ld	$a5,112($sp)
    mflo	$a4
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a5
    addiu	$a5,$s1,-1
    sra	$a5,$a5,0x1
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    swc1	$f3,0($a4)
    # Line 2067
    sw	$zero,44($sp)
    # Line 2066
    lw	$v1,-32052($s3)
    # Line 2067
    sw	$zero,48($sp)
    sw	$zero,52($sp)
    # Line 2066
    sw	$v1,24($sp)
    sw	$v1,28($sp)
    sw	$v1,32($sp)
    # Line 2069
    b	.L0dae9128
    # Line 2066
    sw	$v1,36($sp)
.L0dae96b4:
    # Line 1918
    move	$a1,$zero
    sd	$ra,224($sp)
    bal __glMgrInitPixelPath
    li	$a0,224
    sd	$s2,216($sp)
    b	.L0dae9304
    ld	$ra,224($sp)
.L0dae96d0:
    # Line 1925
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    move	$a1,$zero
    sd	$ra,224($sp)
    bal __glMgrInitPixelPath
    li	$a0,238
    sd	$s2,216($sp)
    b	.L0dae9384
    ld	$ra,224($sp)
.L0dae96f0:
    # Line 1933
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    move	$a1,$zero
    sd	$ra,224($sp)
    bal __glMgrInitPixelPath
    li	$a0,239
    sd	$s2,216($sp)
    b	.L0dae94dc
    ld	$ra,224($sp)
.end __glMgrInitConvolve2DState

# Function: __glMgrInitConvolve1DState
# Declared: Line 2169 (Source lines: 2171-2215)
# Address: 0x0dae9710 - 0x0dae9800 (Size: 240 bytes, Frame: 224)
.globl __glMgrInitConvolve1DState
.ent __glMgrInitConvolve1DState
__glMgrInitConvolve1DState:
    # Line 2171
    addiu	$sp,$sp,-96
    sd	$gp,8($sp)
    sd	$s0,40($sp)
    # Line 2183
    lw	$s0,__glCurrentContext
    sd	$s8,0($sp)
    # Line 2171
    lui	$s8,0x11
    addiu	$s8,$s8,20360
    addu	$gp,$t9,$s8
    # Line 2183
    lui	$t9,0x1
    beqz	$a1,.L0dae9780
    addu	$s0,$s0,$t9
    # Line 2189
    lwc1	$f3,0($a1)
    lwc1	$f2,-32104($s0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,0($a1)
    # Line 2190
    lwc1	$f1,4($a1)
    lwc1	$f0,-32100($s0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,4($a1)
    # Line 2191
    lwc1	$f3,8($a1)
    lwc1	$f2,-32096($s0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a1)
    # Line 2192
    lwc1	$f1,12($a1)
    lwc1	$f0,-32092($s0)
    mul.s	$f0,$f0,$f1
    sd	$ra,48($sp)
    swc1	$f0,12($a1)
.L0dae9780:
    # Line 2208
    move	$a1,$zero
    # Line 2196
    lw	$s8,-32052($s0)
    # Line 2203
    lw	$at,-32120($s0)
    # Line 2208
    # lw $t9, -30196($gp) # &__glMgrInitConvolve2DState
    sd	$ra,48($sp)
    # Line 2202
    lw	$ra,-32132($s0)
    # Line 2197
    lw	$v0,-32040($s0)
    # Line 2204
    lw	$v1,-32116($s0)
    # Line 2199
    lw	$a6,-32032($s0)
    # Line 2205
    lw	$a5,-32112($s0)
    # Line 2198
    lw	$a4,-32036($s0)
    sd	$a6,16($sp)
    # Line 2205
    sw	$a5,-32032($s0)
    sd	$a4,24($sp)
    # Line 2204
    sw	$v1,-32036($s0)
    sd	$v0,32($sp)
    # Line 2202
    sw	$ra,-32052($s0)
    # Line 2208
    bal __glMgrInitConvolve2DState
    # Line 2203
    sw	$at,-32040($s0)
    ld	$gp,8($sp)
    # Line 2211
    sw	$s8,-32052($s0)
    # Line 2215
    ld	$s8,0($sp)
    ld	$v0,16($sp)
    # Line 2212
    ld	$ra,32($sp)
    # Line 2213
    ld	$at,24($sp)
    # Line 2214
    sw	$v0,-32032($s0)
    # Line 2212
    sw	$ra,-32040($s0)
    # Line 2215
    ld	$ra,48($sp)
    # Line 2213
    sw	$at,-32036($s0)
    # Line 2215
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glMgrInitConvolve1DState

# Function: __glMgrInitSeparable2DState
# Declared: Line 2219 (Source lines: 2221-2656)
# Address: 0x0dae9800 - 0x0daea620 (Size: 3616 bytes, Frame: 240)
.globl __glMgrInitSeparable2DState
.ent __glMgrInitSeparable2DState
__glMgrInitSeparable2DState:
    # Line 2221
    addiu	$sp,$sp,-368
    sd	$s7,200($sp)
    move	$s7,$a3
    sd	$s6,224($sp)
    move	$s6,$a2
    sd	$a0,104($sp)
    sd	$gp,216($sp)
    lui	$at,0x11
    addiu	$at,$at,20120
    sd	$s5,208($sp)
    # Line 2238
    lw	$s5,__glCurrentContext
    # Line 2221
    addu	$gp,$t9,$at
    # Line 2246
    lui	$t9,0x1
    sd	$s5,184($sp)
    beqz	$a1,.L0dae9888
    addu	$s5,$s5,$t9
    # Line 2254
    lwc1	$f3,0($a1)
    lwc1	$f2,-31944($s5)
    mul.s	$f2,$f2,$f3
    swc1	$f2,0($a1)
    # Line 2255
    lwc1	$f1,4($a1)
    lwc1	$f0,-31940($s5)
    mul.s	$f0,$f0,$f1
    swc1	$f0,4($a1)
    # Line 2256
    lwc1	$f3,8($a1)
    lwc1	$f2,-31936($s5)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a1)
    # Line 2257
    lwc1	$f1,12($a1)
    lwc1	$f0,-31932($s5)
    mul.s	$f0,$f0,$f1
    sd	$s2,280($sp)
    sd	$s0,288($sp)
    swc1	$f0,12($a1)
.L0dae9888:
    sd	$s0,288($sp)
    # Line 2265
    ld	$a2,104($sp)
    # Line 2263
    lw	$s0,-31956($s5)
    sd	$s2,280($sp)
    # Line 2265
    lw	$a2,1432($a2)
    # Line 2264
    lw	$s2,-31952($s5)
    # Line 2265
    lw	$v0,76($a2)
    slt	$v1,$s2,$s0
    beqz	$v1,.L0dae98bc
    sll	$a1,$v0,0x2
    sd	$s1,296($sp)
    # Line 2268
    b	.L0dae98c4
    move	$a3,$s0
.L0dae98bc:
    sd	$s1,296($sp)
    move	$a3,$s2
.L0dae98c4:
    slti	$a4,$a3,4
    beqz	$a4,.L0dae9dfc
    move	$s1,$a3
    # Line 2270
    li	$s1,3
.L0dae98d4:
    ld	$a5,104($sp)
.L0dae98d8:
    # Line 2276
    lw	$a5,8($a5)
    beqz	$a5,.L0dae9e10
    ld	$at,104($sp)
    lw	$at,0($at)
    beqz	$at,.L0dae9e10
    li	$v1,3
    beq	$s1,$v1,.L0dae9e10
    ld	$a5,104($sp)
    # Line 2347
    lw	$v1,1536($a5)
    multu	$v1,$v0
    lw	$a4,0($a2)
    mflo	$at
    subu	$a4,$a4,$at
    sw	$a4,0($a2)
    # Line 2349
    lw	$at,1432($a5)
    lw	$v1,1524($a5)
    lw	$a4,8($at)
    subu	$a4,$a4,$v1
    sw	$a4,8($at)
    # Line 2350
    lw	$v1,1432($a5)
    lw	$a2,1536($a5)
    lw	$at,24($v1)
    subu	$at,$at,$a2
    sw	$at,24($v1)
    lw	$a2,1432($a5)
    lw	$a4,28($a2)
    beqz	$a4,.L0dae9990
    # Line 2354
    ld	$a4,104($sp)
    lw	$v1,76($a2)
    lw	$at,1536($a4)
    multu	$at,$v1
    lw	$v1,4($a2)
    mflo	$a5
    subu	$v1,$v1,$a5
    sw	$v1,4($a2)
    # Line 2356
    lw	$a5,1432($a4)
    lw	$at,1524($a4)
    lw	$a2,12($a5)
    subu	$a2,$a2,$at
    sw	$a2,12($a5)
    # Line 2357
    lw	$at,1432($a4)
    lw	$v1,1536($a4)
    lw	$a5,28($at)
    subu	$a5,$a5,$v1
    sw	$a5,28($at)
    lw	$a2,1432($a4)
.L0dae9990:
    # Line 2360
    ld	$at,104($sp)
    lw	$a5,52($a2)
    lw	$at,1536($at)
    li	$a4,1
    subu	$a5,$a5,$at
    beq	$s2,$a4,.L0daea2b4
    sw	$a5,52($a2)
    # Line 2370
    subu	$v0,$s2,$s1
    addiu	$v0,$v0,-1
.L0dae99b4:
    # Line 2371
    ld	$a4,104($sp)
    # Line 2374
    li	$v1,5
    beq	$s1,$v1,.L0daea32c
    # Line 2371
    sw	$v0,124($a4)
    # Line 2374
    li	$a5,7
    beq	$s1,$a5,.L0daea444
    sd	$s3,272($sp)
    la	$a2,SYMBOL_LOCATION
    lw	$s3,0($sp)
.L0dae99d8:
    ld	$at,104($sp)
    # Line 2392
    lw	$at,408($at)
    beqz	$at,.L0daea2bc
    lw	$a5,784($a2)
.L0dae99e8:
    ld	$a2,104($sp)
    # Line 2400
    lw	$v1,256($a2)
    li	$a3,0x80c8
    andi	$v1,$v1,0x9023
    beqz	$v1,.L0daea300
    lw	$a2,1504($a2)
    ld	$a0,104($sp)
    # Line 2416
    lw	$a0,1508($a0)
    sd	$ra,304($sp)
    sd	$a1,112($sp)
    sd	$a0,176($sp)
    # Line 2417
    subu	$a0,$a2,$a0
    addu	$a0,$a0,$a3
    move	$v0,$a0
.L0dae9a20:
    # Line 2425
    ld	$a4,104($sp)
    lw	$a5,1520($a4)
    # Line 2428
    sra	$a7,$v0,0x1
    sw	$a7,132($a4)
    # Line 2425
    sll	$a6,$a5,0x2
    # Line 2426
    sll	$a3,$a5,0x2
    subu	$a3,$a3,$a5
    # Line 2425
    subu	$a6,$a6,$a5
    sll	$a6,$a6,0x2
    # Line 2426
    sll	$a3,$a3,0x3
    addu	$a3,$a3,$v0
    # Line 2425
    addu	$a6,$a6,$v0
    # Line 2429
    sra	$a6,$a6,0x1
    # Line 2430
    sra	$a3,$a3,0x1
    sw	$a3,136($a4)
    # Line 2429
    sw	$a6,128($a4)
    # Line 2450
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    # Line 2439
    lw	$a2,16($s6)
    # Line 2450
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    sd	$a2,168($sp)
    # Line 2451
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,168($sp)
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 2452
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,176($sp)
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    sra	$a0,$a0,0x1
    # Line 2453
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,112($sp)
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 2454
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s3
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 2455
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,104($sp)
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,220($a0)
    # Line 2456
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,104($sp)
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,204($a0)
    # Line 2457
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,104($sp)
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,208($a0)
    # Line 2458
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,104($sp)
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,212($a0)
    # Line 2459
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,104($sp)
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,216($a0)
    ld	$a2,104($sp)
    # Line 2460
    lw	$a2,1432($a2)
    lw	$a2,0($a2)
    move	$a1,$zero
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a0,$a2,0x1
    srl	$a0,$a0,0x1e
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    sra	$a0,$a0,0x2
    ld	$a2,104($sp)
    # Line 2461
    lw	$a2,1432($a2)
    lw	$a2,4($a2)
    li	$a1,1
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a0,$a2,0x1
    srl	$a0,$a0,0x1e
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    sra	$a0,$a0,0x2
    ld	$a2,104($sp)
    # Line 2462
    lw	$a2,1432($a2)
    lw	$a2,0($a2)
    move	$a1,$zero
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    sra	$a2,$a2,0x1f
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x3
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    subu	$a0,$a0,$a2
    ld	$a2,104($sp)
    # Line 2463
    lw	$a2,1432($a2)
    lw	$a2,4($a2)
    li	$a1,1
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    sra	$a2,$a2,0x1f
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x3
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    subu	$a0,$a0,$a2
    # Line 2464
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sd	$s4,312($sp)
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    li	$a0,1
    move	$s4,$s6
    # Line 2468
    lwc1	$f4,0($s4)
    # Line 2469
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 2468
    swc1	$f4,16($sp)
    # Line 2469
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,16($sp)
    # Line 2468
    lwc1	$f5,4($s4)
    # Line 2469
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 2468
    swc1	$f5,16($sp)
    # Line 2469
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,16($sp)
    # Line 2468
    lwc1	$f6,8($s4)
    # Line 2469
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 2468
    swc1	$f6,16($sp)
    # Line 2469
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,16($sp)
    # Line 2468
    lwc1	$f7,12($s4)
    # Line 2469
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 2468
    swc1	$f7,16($sp)
    # Line 2469
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,16($sp)
    # Line 2472
    li	$a1,-2
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,104($sp)
    ld	$s4,312($sp)
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,408($a0)
    # Line 2473
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s7
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-1
    ld	$v0,104($sp)
    lw	$v0,420($v0)
    andi	$a4,$v0,0x800
    beqz	$a4,.L0daea508
    ld	$ra,304($sp)
    # Line 2481
    li	$v1,-2049
    ld	$a4,104($sp)
    lw	$a2,4($sp)
    and	$v1,$v0,$v1
    lw	$a1,260($a4)
    beqz	$a2,.L0daea318
    sw	$v1,420($a4)
    # Line 2488
    lw	$a4,8($sp)
    # Line 2489
    ori	$at,$a1,0x1
    ld	$v1,104($sp)
    # Line 2485
    lui	$a5,0x7
    ori	$a5,$a5,0x4080
    # Line 2489
    sw	$at,260($v1)
    # Line 2485
    li	$at,0x850c
    sw	$at,0($a5)
    # Line 2486
    sw	$a2,0($a5)
    # Line 2487
    sw	$s3,0($a5)
    # Line 2488
    sw	$a4,0($a5)
.L0dae9cd0:
    # Line 2495
    lw	$a0,__glCurrentContext
    lw	$t9,0($a0)
    addu	$s4,$s0,$s2
    jalr	$t9
    sll	$a1,$s4,0x4
    sdc1	$f30,264($sp)
    move	$a4,$v0
    sll	$a0,$s4,0x2
    sll	$a0,$a0,0x2
    addu	$a0,$v0,$a0
    beq	$v0,$a0,.L0dae9d2c
    sd	$v0,96($sp)
    mtc1	$zero,$f30
.L0dae9d04:
    # Line 2501
    addiu	$v0,$v0,4
    beq	$a0,$v0,.L0dae9d28
    swc1	$f30,-4($v0)
    addiu	$v0,$v0,4
    beq	$a0,$v0,.L0dae9d28
    swc1	$f30,-4($v0)
    addiu	$v0,$v0,4
    bne	$a0,$v0,.L0dae9d04
    swc1	$f30,-4($v0)
.L0dae9d28:
    ldc1	$f30,264($sp)
.L0dae9d2c:
    # Line 2504
    lw	$t2,-31960($s5)
    li	$a5,6409
    beq	$t2,$a5,.L0daea3dc
    li	$at,6406
    beq	$t2,$at,.L0daea4a0
    li	$v1,6410
    beq	$t2,$v1,.L0dae9eb8
    li	$a4,0x8049
    beq	$t2,$a4,.L0daea5b8
    li	$a5,6407
    beq	$t2,$a5,.L0daea340
    li	$at,6408
    bne	$t2,$at,.L0dae9f34
    ld	$a2,104($sp)
    # Line 2553
    lwc1	$f4,_lit_3f800000
    sll	$v0,$s0,0x2
    sll	$v0,$v0,0x2
    ld	$a4,96($sp)
    addiu	$v1,$s2,-1
    addiu	$a0,$s0,-1
    sra	$a0,$a0,0x1
    sra	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    sll	$a0,$a0,0x2
    sll	$a0,$a0,0x2
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$a4
    addu	$v0,$v0,$v1
    addu	$a0,$a0,$a4
    # Line 2554
    swc1	$f4,0($a0)
    # Line 2555
    swc1	$f4,0($v0)
    # Line 2554
    swc1	$f4,4($a0)
    # Line 2555
    swc1	$f4,4($v0)
    # Line 2554
    swc1	$f4,8($a0)
    # Line 2555
    swc1	$f4,8($v0)
    # Line 2554
    swc1	$f4,12($a0)
    # Line 2555
    swc1	$f4,12($v0)
    # Line 2558
    sw	$zero,40($sp)
    # Line 2560
    li	$a4,2
    # Line 2562
    li	$a5,4
    li	$at,1
    # Line 2559
    sw	$at,44($sp)
    li	$v1,3
    # Line 2561
    sw	$v1,52($sp)
    # Line 2557
    lw	$v1,-31972($s5)
    # Line 2562
    sw	$a5,56($sp)
    # Line 2560
    sw	$a4,48($sp)
    # Line 2557
    sw	$v1,24($sp)
    sw	$v1,28($sp)
    sw	$v1,32($sp)
    b	.L0dae9f30
    sw	$v1,36($sp)
.L0dae9dfc:
    # Line 2270
    andi	$a4,$a3,0x1
    bnez	$a4,.L0dae98d8
    ld	$a5,104($sp)
    b	.L0dae98d4
    # Line 2272
    addiu	$s1,$a3,1
.L0dae9e10:
    sd	$ra,304($sp)
    # Line 2287
    lw	$a5,-32052($s5)
    # Line 2295
    # lw $t9, -28592($gp) # &__glElementsPerGroup
    # Line 2293
    lw	$a0,-31960($s5)
    # Line 2290
    lw	$t0,-32032($s5)
    # Line 2289
    lw	$a7,-32036($s5)
    # Line 2288
    lw	$a6,-32040($s5)
    sd	$t0,128($sp)
    sd	$a7,136($sp)
    sd	$a6,120($sp)
    sd	$a0,144($sp)
    # Line 2295
    jal	__glElementsPerGroup
    sd	$a5,152($sp)
    # Line 2296
    lw	$s0,-31956($s5)
    # Line 2297
    lw	$s2,-31952($s5)
    # Line 2299
    mult	$s2,$s0
    mflo	$a2
    nop
    nop
    mult	$a2,$v0
    ld	$a0,184($sp)
    sd	$s4,312($sp)
    lw	$t9,0($a0)
    # Line 2295
    move	$s1,$v0
    # Line 2299
    mflo	$a1
    jalr	$t9
    sll	$a1,$a1,0x2
    # Line 2304
    mult	$s0,$s1
    sd	$s3,272($sp)
    sdc1	$f30,264($sp)
    # Line 2299
    move	$at,$v0
    sd	$v0,160($sp)
    # Line 2306
    move	$s4,$zero
    # Line 2302
    lw	$t2,-31972($s5)
    # Line 2304
    mflo	$t8
    sll	$t8,$t8,0x2
    # Line 2306
    blez	$s2,.L0daea04c
    # Line 2304
    addu	$t8,$t8,$t2
    sd	$s3,272($sp)
    sdc1	$f30,264($sp)
    b	.L0dae9f70
    # Line 2306
    sll	$t9,$s1,0x2
.L0dae9eb8:
    # Line 2523
    lwc1	$f4,_lit_3f800000
    addiu	$v1,$s2,-1
    li	$a5,-2
    addiu	$a0,$s0,-1
    sll	$v0,$s0,0x1
    sll	$v0,$v0,0x2
    and	$a0,$a0,$a5
    and	$v1,$v1,$a5
    ld	$a4,96($sp)
    sll	$v1,$v1,0x2
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a4
    addu	$v0,$v0,$a4
    addu	$v0,$v0,$v1
    # Line 2524
    swc1	$f4,0($a0)
    # Line 2525
    swc1	$f4,0($v0)
    # Line 2524
    swc1	$f4,4($a0)
    # Line 2525
    swc1	$f4,4($v0)
    # Line 2528
    sw	$zero,40($sp)
    sw	$zero,44($sp)
    sw	$zero,48($sp)
    # Line 2530
    li	$a4,2
    li	$a5,1
    # Line 2527
    lw	$v1,-31972($s5)
    # Line 2529
    sw	$a5,52($sp)
    # Line 2530
    sw	$a4,56($sp)
    # Line 2527
    sw	$v1,24($sp)
    sw	$v1,28($sp)
    sw	$v1,32($sp)
    sw	$v1,36($sp)
.L0dae9f30:
    ld	$a2,104($sp)
.L0dae9f34:
    # Line 2564
    lw	$a2,1432($a2)
    la	$v1,sub_0dbf0000
    lw	$v0,68($a2)
    addiu	$v1,$v1,-4640
    addiu	$v0,$v0,-6403
    sltiu	$at,$v0,8
    sll	$v0,$v0,0x2
    beqz	$at,.L0daea0e0
    addu	$v0,$v0,$v1
    lw	$a4,%lo(jtbl_0dbeede0)($v0)
    jr	$a4
    li	$at,3
.L0dae9f64:
    # Line 2306
    addiu	$s4,$s4,1
    beq	$s2,$s4,.L0daea04c
    # Line 2317
    addu	$t8,$t9,$t8
.L0dae9f70:
    # Line 2306
    move	$a7,$t2
    # Line 2308
    blez	$s0,.L0dae9f64
    move	$s3,$zero
    b	.L0daea008
    move	$a3,$s1
    move	$t0,$a2
.L0dae9f88:
    sra	$a5,$a3,0x2
    move	$t1,$v0
    beqz	$a5,.L0dae9ffc
    move	$t3,$a7
    move	$a3,$t1
    move	$v0,$t0
    move	$a2,$t3
.L0dae9fa4:
    # Line 2312
    lwc1	$f2,0($a2)
    lwc1	$f3,0($v0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,0($a3)
    lwc1	$f0,4($a2)
    lwc1	$f1,4($v0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,4($a3)
    lwc1	$f2,8($a2)
    lwc1	$f3,8($v0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a3)
    lwc1	$f0,12($a2)
    lwc1	$f1,12($v0)
    mul.s	$f0,$f0,$f1
    addiu	$a3,$a3,16
    addiu	$a2,$a2,16
    # Line 2310
    addiu	$v0,$v0,16
    bne	$v0,$a6,.L0dae9fa4
    # Line 2312
    swc1	$f0,-4($a3)
    move	$a7,$a2
    move	$v0,$a3
.L0dae9ffc:
    # Line 2308
    addiu	$s3,$s3,1
    beq	$s0,$s3,.L0dae9f64
    move	$a3,$s1
.L0daea008:
    addu	$a6,$t9,$t8
    blez	$s1,.L0dae9ffc
    move	$a2,$t8
    andi	$t0,$s1,0x3
    beqzl	$t0,.L0dae9f88
    move	$t0,$a2
.L0daea020:
    # Line 2312
    lwc1	$f0,0($a7)
    lwc1	$f1,0($a2)
    mul.s	$f0,$f0,$f1
    # Line 2310
    addiu	$a2,$a2,4
    # Line 2312
    addiu	$v0,$v0,4
    addiu	$a7,$a7,4
    addi	$t0,$t0,-1
    bnez	$t0,.L0daea020
    swc1	$f0,-4($v0)
    b	.L0dae9f88
    move	$t0,$a2
.L0daea04c:
    # Line 2327
    move	$a3,$s7
    move	$a2,$s6
    move	$a1,$zero
    ld	$a0,104($sp)
    # Line 2324
    sw	$s2,-32032($s5)
    # Line 2323
    sw	$s0,-32036($s5)
    # Line 2322
    ld	$a6,144($sp)
    # Line 2327
    # lw $t9, -30196($gp) # &__glMgrInitConvolve2DState
    # Line 2321
    ld	$s1,160($sp)
    # Line 2322
    sw	$a6,-32040($s5)
    # Line 2327
    bal __glMgrInitConvolve2DState
    # Line 2321
    sw	$s1,-32052($s5)
    # Line 2335
    move	$a1,$s1
    ldc1	$f30,264($sp)
    ld	$a0,184($sp)
    ld	$t2,152($sp)
    # Line 2333
    ld	$a7,128($sp)
    # Line 2332
    ld	$t0,136($sp)
    # Line 2331
    ld	$t1,120($sp)
    # Line 2333
    sw	$a7,-32032($s5)
    # Line 2332
    sw	$t0,-32036($s5)
    # Line 2331
    sw	$t1,-32040($s5)
    # Line 2330
    sw	$t2,-32052($s5)
    ld	$s3,272($sp)
    # Line 2335
    lw	$t9,12($a0)
    ld	$s4,312($sp)
    ld	$s0,288($sp)
    jal	__glMgrInitConvolve2DState
    ld	$s2,280($sp)
    ld	$gp,216($sp)
    # Line 2337
    ld	$s1,296($sp)
    ld	$s5,208($sp)
    ld	$ra,304($sp)
    ld	$s6,224($sp)
    ld	$s7,200($sp)
    jr	$ra
    addiu	$sp,$sp,368
.L0daea0e0:
    # Line 2598
    lw	$at,80($sp)
    sd	$at,232($sp)
.L0daea0e8:
    sd	$s3,192($sp)
    # Line 2613
    ld	$v1,232($sp)
    sd	$s8,320($sp)
    sdc1	$f30,264($sp)
    blez	$v1,.L0daea25c
    sd	$zero,240($sp)
    lw	$s7,56($sp)
    mult	$s0,$s7
    sd	$s3,192($sp)
    addiu	$s8,$sp,24
    mtc1	$zero,$f30
    lw	$v0,76($a2)
    sll	$s6,$s7,0x2
    mflo	$a4
    sll	$a4,$a4,0x2
    b	.L0daea140
    sd	$a4,256($sp)
.L0daea12c:
    ld	$a5,240($sp)
    ld	$at,232($sp)
    addiu	$a5,$a5,1
    beq	$a5,$at,.L0daea25c
    sd	$a5,240($sp)
.L0daea140:
    # Line 2614
    beqz	$v0,.L0daea12c
    sd	$zero,248($sp)
    b	.L0daea174
    addiu	$s5,$sp,64
.L0daea150:
    ld	$v0,104($sp)
    lw	$v0,1432($v0)
    ld	$v1,248($sp)
    lw	$v0,76($v0)
    addiu	$v1,$v1,1
    sd	$v1,248($sp)
    sltu	$v1,$v1,$v0
    beqz	$v1,.L0daea12c
    addiu	$s5,$s5,4
.L0daea174:
    # Line 2616
    blez	$s1,.L0daea1e4
    move	$s3,$zero
    move	$s4,$zero
    b	.L0daea1ac
    slt	$v1,$s3,$s0
.L0daea188:
    # Line 2622
    swc1	$f30,88($sp)
.L0daea18c:
    # Line 2616
    addiu	$s3,$s3,1
    # Line 2624
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,88($sp)
    # Line 2616
    addu	$s4,$s4,$s6
    beq	$s1,$s3,.L0daea1e4
    slt	$v1,$s3,$s0
.L0daea1ac:
    beqz	$v1,.L0daea188
    addiu	$at,$sp,40
    # Line 2618
    lw	$a5,0($s5)
    sll	$a5,$a5,0x2
    addu	$a4,$a5,$s8
    addu	$a5,$a5,$at
    lw	$a5,0($a5)
    lw	$a4,0($a4)
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$s4
    addu	$a4,$a4,$a5
    lwc1	$f2,0($a4)
    b	.L0daea18c
    swc1	$f2,88($sp)
.L0daea1e4:
    # Line 2632
    blez	$s1,.L0daea150
    move	$s4,$zero
    move	$s3,$zero
    b	.L0daea21c
    slt	$at,$s4,$s2
.L0daea1f8:
    # Line 2639
    swc1	$f30,88($sp)
.L0daea1fc:
    # Line 2632
    addiu	$s4,$s4,1
    # Line 2641
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,88($sp)
    # Line 2632
    addu	$s3,$s3,$s7
    beq	$s1,$s4,.L0daea150
    slt	$at,$s4,$s2
.L0daea21c:
    beqz	$at,.L0daea1f8
    addiu	$a5,$sp,40
    # Line 2634
    lw	$a4,0($s5)
    sll	$a4,$a4,0x2
    addu	$v1,$a4,$s8
    addu	$a4,$a4,$a5
    ld	$a5,256($sp)
    lw	$v1,0($v1)
    lw	$a4,0($a4)
    addu	$v1,$v1,$a5
    addu	$a4,$a4,$s3
    sll	$a4,$a4,0x2
    addu	$v1,$v1,$a4
    lwc1	$f3,0($v1)
    b	.L0daea1fc
    swc1	$f3,88($sp)
.L0daea25c:
    # Line 2650
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,192($sp)
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-1
    # Line 2654
    ld	$a1,96($sp)
    ldc1	$f30,264($sp)
    ld	$s4,312($sp)
    lw	$a0,__glCurrentContext
    ld	$s3,272($sp)
    ld	$s8,320($sp)
    lw	$t9,12($a0)
    ld	$s2,280($sp)
    ld	$s0,288($sp)
    jalr	$t9
    ld	$s1,296($sp)
    ld	$gp,216($sp)
    # Line 2656
    ld	$s5,208($sp)
    ld	$ra,304($sp)
    ld	$s6,224($sp)
    ld	$s7,200($sp)
    jr	$ra
    addiu	$sp,$sp,368
.L0daea2b4:
    # Line 2368
    b	.L0dae99b4
    move	$v0,$zero
.L0daea2bc:
    # Line 2392
    sltiu	$a5,$a5,1024
    bnezl	$a5,.L0daea2d8
    sd	$ra,304($sp)
    sd	$ra,304($sp)
    sd	$a1,112($sp)
    # Line 2396
    b	.L0daea2e0
    li	$a0,1024
.L0daea2d8:
    sd	$a1,112($sp)
    # Line 2398
    li	$a0,2048
.L0daea2e0:
    # Line 2400
    # lw $t9, -30252($gp) # &__glMgrAllocERAM
    bal __glMgrAllocERAM
    li	$a1,0x8000
    ld	$ra,104($sp)
    ld	$a1,112($sp)
    sw	$v0,408($ra)
    b	.L0dae99e8
    ld	$ra,304($sp)
.L0daea300:
    sd	$ra,304($sp)
    sd	$a1,112($sp)
    sd	$zero,176($sp)
    # Line 2421
    addu	$a0,$a2,$a3
    b	.L0dae9a20
    move	$v0,$a0
.L0daea318:
    # Line 2492
    li	$at,-2
    ld	$v1,104($sp)
    and	$at,$a1,$at
    b	.L0dae9cd0
    sw	$at,260($v1)
.L0daea32c:
    # Line 2384
    sw	$zero,4($sp)
    # Line 2382
    la	$a2,SYMBOL_LOCATION
    sd	$s3,272($sp)
    # Line 2385
    b	.L0dae99d8
    # Line 2382
    lw	$s3,964($a2)
.L0daea340:
    # Line 2540
    lwc1	$f4,_lit_3f800000
    ld	$a4,96($sp)
    sll	$v0,$s0,0x2
    subu	$v0,$v0,$s0
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a4
    addiu	$a5,$s0,-1
    sra	$a5,$a5,0x1
    addiu	$a0,$s2,-1
    sra	$a0,$a0,0x1
    sll	$v1,$a0,0x2
    subu	$v1,$v1,$a0
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    sll	$a0,$a5,0x2
    subu	$a0,$a0,$a5
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a4
    # Line 2541
    swc1	$f4,0($a0)
    # Line 2542
    swc1	$f4,0($v0)
    # Line 2541
    swc1	$f4,4($a0)
    # Line 2542
    swc1	$f4,4($v0)
    # Line 2541
    swc1	$f4,8($a0)
    # Line 2542
    swc1	$f4,8($v0)
    # Line 2549
    sw	$zero,52($sp)
    # Line 2546
    sw	$zero,40($sp)
    # Line 2548
    li	$a4,2
    li	$at,1
    # Line 2547
    sw	$at,44($sp)
    # Line 2545
    ld	$a5,96($sp)
    li	$v1,3
    # Line 2550
    sw	$v1,56($sp)
    # Line 2544
    lw	$v1,-31972($s5)
    # Line 2548
    sw	$a4,48($sp)
    # Line 2545
    sw	$a5,36($sp)
    # Line 2544
    sw	$v1,24($sp)
    sw	$v1,28($sp)
    # Line 2551
    b	.L0dae9f30
    # Line 2544
    sw	$v1,32($sp)
.L0daea3dc:
    # Line 2511
    sw	$zero,40($sp)
    sw	$zero,44($sp)
    # Line 2507
    lwc1	$f0,_lit_3f800000
    # Line 2508
    sll	$at,$s0,0x2
    ld	$a5,96($sp)
    li	$v1,1
    # Line 2512
    sw	$v1,56($sp)
    # Line 2508
    addiu	$v1,$s2,-1
    sra	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$at,$at,$a5
    addu	$at,$at,$v1
    # Line 2507
    addiu	$v1,$s0,-1
    sra	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a5
    swc1	$f0,0($v1)
    # Line 2508
    swc1	$f0,0($at)
    # Line 2511
    sw	$zero,48($sp)
    # Line 2509
    lw	$a4,-31972($s5)
    # Line 2511
    sw	$zero,52($sp)
    # Line 2510
    sw	$a5,36($sp)
    # Line 2509
    sw	$a4,24($sp)
    sw	$a4,28($sp)
    # Line 2513
    b	.L0dae9f30
    # Line 2509
    sw	$a4,32($sp)
.L0daea444:
    # Line 2387
    la	$a2,SYMBOL_LOCATION
    # Line 2388
    ld	$a4,104($sp)
    # Line 2387
    li	$a5,56
    lw	$at,960($a2)
    # Line 2388
    lw	$a4,420($a4)
    lw	$s3,964($a2)
    # Line 2387
    subu	$a5,$a5,$at
    # Line 2388
    andi	$a4,$a4,0x800
    addu	$s3,$s3,$at
    addiu	$s3,$s3,-56
    beqz	$a4,.L0dae99d8
    # Line 2387
    sw	$a5,4($sp)
    sd	$a1,112($sp)
    # Line 2390
    # lw $t9, -30252($gp) # &__glMgrAllocERAM
    li	$a1,2048
    sd	$ra,304($sp)
    bal __glMgrAllocERAM
    li	$a0,256
    la	$a2,SYMBOL_LOCATION
    sw	$v0,8($sp)
    ld	$a1,112($sp)
    b	.L0dae99d8
    ld	$ra,304($sp)
.L0daea4a0:
    # Line 2519
    sw	$zero,40($sp)
    sw	$zero,44($sp)
    # Line 2517
    ld	$at,96($sp)
    # Line 2519
    sw	$zero,48($sp)
    sw	$zero,52($sp)
    # Line 2517
    sw	$at,24($sp)
    # Line 2515
    lwc1	$f1,_lit_3f800000
    # Line 2516
    sll	$v1,$s0,0x2
    li	$a4,1
    # Line 2520
    sw	$a4,56($sp)
    # Line 2516
    addiu	$a4,$s2,-1
    sra	$a4,$a4,0x1
    sll	$a4,$a4,0x2
    addu	$v1,$v1,$at
    addu	$v1,$v1,$a4
    # Line 2515
    addiu	$a4,$s0,-1
    sra	$a4,$a4,0x1
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$at
    swc1	$f1,0($a4)
    # Line 2516
    swc1	$f1,0($v1)
    # Line 2517
    sw	$at,28($sp)
    # Line 2518
    lw	$a5,-31972($s5)
    # Line 2517
    sw	$at,32($sp)
    # Line 2521
    b	.L0dae9f30
    # Line 2518
    sw	$a5,36($sp)
.L0daea508:
    ld	$gp,216($sp)
    # Line 2479
    ld	$s0,288($sp)
    ld	$s1,296($sp)
    ld	$s2,280($sp)
    ld	$s3,272($sp)
    ld	$s5,208($sp)
    ld	$s6,224($sp)
    ld	$s7,200($sp)
    jr	$ra
    addiu	$sp,$sp,368
.L0daea530:
    # Line 2571
    sw	$zero,64($sp)
    # Line 2572
    li	$a5,4
    # Line 2573
    b	.L0daea0e8
    sd	$a5,232($sp)
.L0daea540:
    li	$at,1
    # Line 2576
    li	$v1,4
    sd	$v1,232($sp)
    # Line 2577
    b	.L0daea0e8
    # Line 2575
    sw	$at,64($sp)
.L0daea554:
    # Line 2579
    li	$a4,2
    # Line 2580
    li	$a5,4
    sd	$a5,232($sp)
    # Line 2581
    b	.L0daea0e8
    # Line 2579
    sw	$a4,64($sp)
.L0daea568:
    # Line 2584
    li	$v1,4
    sd	$v1,232($sp)
    # Line 2585
    b	.L0daea0e8
    # Line 2583
    sw	$at,64($sp)
.L0daea578:
    # Line 2588
    sw	$zero,64($sp)
    # Line 2590
    li	$a4,2
    li	$a5,1
    li	$at,3
    # Line 2592
    li	$v1,1
    sd	$v1,232($sp)
    # Line 2591
    sw	$at,76($sp)
    # Line 2589
    sw	$a5,68($sp)
    # Line 2593
    b	.L0daea0e8
    # Line 2590
    sw	$a4,72($sp)
.L0daea5a0:
    # Line 2596
    sw	$zero,64($sp)
    # Line 2595
    li	$a4,2
    li	$a5,3
    # Line 2597
    sw	$a5,68($sp)
    # Line 2598
    b	.L0daea0e8
    sd	$a4,232($sp)
.L0daea5b8:
    # Line 2536
    sw	$zero,40($sp)
    # Line 2533
    lwc1	$f2,_lit_3f800000
    # Line 2534
    sll	$v1,$s0,0x2
    ld	$a5,96($sp)
    li	$a4,1
    # Line 2537
    sw	$a4,56($sp)
    # Line 2534
    addiu	$a4,$s2,-1
    sra	$a4,$a4,0x1
    sll	$a4,$a4,0x2
    addu	$v1,$v1,$a5
    addu	$v1,$v1,$a4
    # Line 2533
    addiu	$a4,$s0,-1
    sra	$a4,$a4,0x1
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a5
    swc1	$f2,0($a4)
    # Line 2534
    swc1	$f2,0($v1)
    # Line 2536
    sw	$zero,44($sp)
    # Line 2535
    lw	$at,-31972($s5)
    # Line 2536
    sw	$zero,48($sp)
    sw	$zero,52($sp)
    # Line 2535
    sw	$at,24($sp)
    sw	$at,28($sp)
    sw	$at,32($sp)
    # Line 2538
    b	.L0dae9f30
    # Line 2535
    sw	$at,36($sp)
.end __glMgrInitSeparable2DState

# Function: __glMgrInitColorMatrixState
# Declared: Line 2660 (Source lines: 2662-2675)
# Address: 0x0daea620 - 0x0daea768 (Size: 328 bytes, Frame: 192)
.globl __glMgrInitColorMatrixState
.ent __glMgrInitColorMatrixState
__glMgrInitColorMatrixState:
    # Line 2665
    move	$a1,$zero
    # Line 2662
    addiu	$sp,$sp,-64
    sd	$ra,8($sp)
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$gp,24($sp)
    sd	$s8,16($sp)
    move	$s8,$a3
    # Line 2665
    lw	$a2,1432($a0)
    # Line 2662
    lui	$a3,0x11
    addiu	$a3,$a3,16504
    # Line 2665
    lw	$a2,0($a2)
    # Line 2662
    addu	$gp,$t9,$a3
    # Line 2665
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a0,$a2,0x2
    srl	$a0,$a0,0x1d
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    sra	$a0,$a0,0x3
    # Line 2666
    lw	$a2,1432($s0)
    lw	$a2,4($a2)
    li	$a1,1
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a0,$a2,0x2
    srl	$a0,$a0,0x1d
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    sra	$a0,$a0,0x3
    # Line 2667
    lw	$a2,1432($s0)
    lw	$a2,0($a2)
    move	$a1,$zero
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    sra	$a2,$a2,0x1f
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x7
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    subu	$a0,$a0,$a2
    # Line 2668
    lw	$a2,1432($s0)
    lw	$a2,4($a2)
    li	$a1,1
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    sra	$a2,$a2,0x1f
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x7
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    subu	$a0,$a0,$a2
    # Line 2669
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,220($s0)
    # Line 2670
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,212($s0)
    # Line 2671
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,216($s0)
    # Line 2672
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,204($s0)
    # Line 2673
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,208($s0)
    # Line 2674
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s8
    li	$a1,-1
    jal	__glMgrInitPixelStateCRAM
    ld	$s0,0($sp)
    # Line 2675
    ld	$ra,8($sp)
    ld	$gp,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrInitColorMatrixState

# Function: __glMgrInitHistogramState
# Declared: Line 2679 (Source lines: 2681-2761)
# Address: 0x0daea768 - 0x0daeab3c (Size: 980 bytes, Frame: 224)
.globl __glMgrInitHistogramState
.ent __glMgrInitHistogramState
__glMgrInitHistogramState:
    # Line 2694
    addiu	$a5,$a0,276
    # Line 2702
    move	$a7,$zero
    # Line 2681
    addiu	$sp,$sp,-96
    sd	$s8,24($sp)
    move	$s8,$a3
    # Line 2692
    lw	$a4,1432($a0)
    sd	$s0,48($sp)
    # Line 2681
    move	$s0,$a0
    # Line 2692
    lw	$a4,92($a4)
    sd	$gp,32($sp)
    # Line 2681
    lui	$a6,0x11
    addiu	$a6,$a6,16176
    sd	$s1,40($sp)
    # Line 2687
    lw	$s1,__glCurrentContext
    # Line 2681
    addu	$gp,$t9,$a6
    # Line 2693
    lui	$t9,0x1
    addu	$s1,$s1,$t9
    lw	$a6,-32264($s1)
    # Line 2695
    lw	$t0,-32276($s1)
    # Line 2702
    sw	$zero,268($a0)
    andi	$at,$a6,0x8
    beqz	$at,.L0daea7d0
    # Line 2695
    addiu	$t0,$t0,-1
    # Line 2702
    andi	$at,$a4,0x8
    beqz	$at,.L0daea9cc
    # Line 2705
    dsll32	$at,$t0,0x0
.L0daea7d0:
    # Line 2709
    lw	$a0,-32288($s1)
    sw	$a0,0($sp)
.L0daea7d8:
    andi	$v0,$a6,0x4
    beqz	$v0,.L0daea7ec
    andi	$v1,$a4,0x4
    beqz	$v1,.L0daeaa1c
    # Line 2712
    dsll32	$v1,$t0,0x0
.L0daea7ec:
    # Line 2717
    lw	$a3,-32284($s1)
    addu	$a2,$a0,$a3
    sw	$a2,0($sp)
.L0daea7f8:
    andi	$at,$a6,0x2
    beqz	$at,.L0daea808
    andi	$v0,$a4,0x2
    beqz	$v0,.L0daeaa78
.L0daea808:
    # Line 2726
    addu	$v1,$a3,$a3
    addu	$v1,$v1,$a0
    sw	$v1,0($sp)
.L0daea814:
    andi	$a2,$a6,0x1
    beqz	$a2,.L0daea824
    andi	$at,$a4,0x1
    beqz	$at,.L0daeaadc
.L0daea824:
    # Line 2735
    sll	$v0,$a3,0x2
    subu	$v0,$v0,$a3
    addu	$v0,$v0,$a0
    sw	$v0,0($sp)
.L0daea834:
    # Line 2739
    lw	$a3,0($sp)
    slti	$v1,$a7,3
    beqz	$v1,.L0daea8a4
    move	$a0,$a7
    li	$a4,3
    subu	$a6,$a4,$a0
    andi	$a1,$a6,0x3
    beqz	$a1,.L0daea870
    move	$a7,$a0
.L0daea858:
    addiu	$a0,$a0,1
    # Line 2740
    sw	$a3,0($a5)
    addi	$a1,$a1,-1
    bnez	$a1,.L0daea858
    addiu	$a5,$a5,4
    move	$a7,$a0
.L0daea870:
    sra	$a2,$a6,0x2
    beqz	$a2,.L0daea8a0
    move	$t0,$a5
    move	$a0,$a7
    move	$a1,$t0
.L0daea884:
    addiu	$a1,$a1,16
    # Line 2739
    addiu	$a0,$a0,4
    # Line 2740
    sw	$a3,-16($a1)
    sw	$a3,-12($a1)
    sw	$a3,-8($a1)
    # Line 2739
    bne	$a0,$a4,.L0daea884
    # Line 2740
    sw	$a3,-4($a1)
.L0daea8a0:
    sd	$ra,56($sp)
.L0daea8a4:
    # Line 2747
    lw	$a5,264($s0)
    lw	$a4,-32284($s1)
    # Line 2745
    lw	$a3,-32276($s1)
    # Line 2747
    multu	$a4,$a5
    # Line 2745
    addiu	$a3,$a3,-1
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 2747
    li	$a1,-2
    sd	$ra,56($sp)
    lw	$a0,-32288($s1)
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sdc1	$f0,16($sp)
    mflo	$a2
    jal	__glMgrInitPixelStateCRAM
    addu	$a0,$a0,$a2
    # Line 2748
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    lw	$a0,1432($s0)
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,76($a0)
    # Line 2749
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,-32284($s1)
    # Line 2750
    ldc1	$f1,16($sp)
    # Line 2751
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 2750
    swc1	$f1,8($sp)
    # Line 2751
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,8($sp)
    # Line 2752
    lw	$a1,-32276($s1)
    addiu	$a1,$a1,-1
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 2753
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 2752
    swc1	$f2,8($sp)
    # Line 2753
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,8($sp)
    # Line 2754
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,204($s0)
    # Line 2755
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,208($s0)
    # Line 2756
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    lw	$a0,1432($s0)
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,0($a0)
    # Line 2757
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    lw	$a0,1432($s0)
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,4($a0)
    # Line 2758
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,-32260($s1)
    # Line 2760
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s8
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-1
    ld	$gp,32($sp)
    # Line 2761
    ld	$s0,48($sp)
    ld	$ra,56($sp)
    ld	$s1,40($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daea9cc:
    # Line 2705
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f0
    nop
    cvt.s.l	$f0,$f0
    lwc1	$f3,0($a1)
    mul.s	$f3,$f3,$f0
    ldc1	$f0,_lit8_3fe0000000000000
    cvt.d.s	$f3,$f3
    add.d	$f3,$f3,$f0
    trunc.l.d	$f3,$f3
    dmfc1	$a7,$f3
    lw	$a2,-32288($s1)
    addiu	$a5,$s0,280
    sll	$a7,$a7,0x0
    addu	$a2,$a2,$a7
    sw	$a2,276($s0)
    # Line 2707
    li	$a7,1
    sw	$a7,268($s0)
    b	.L0daea7d8
    lw	$a0,-32288($s1)
.L0daeaa1c:
    # Line 2712
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f2
    nop
    cvt.s.l	$f2,$f2
    lwc1	$f1,4($a1)
    mul.s	$f1,$f1,$f2
    ldc1	$f2,_lit8_3fe0000000000000
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f2
    trunc.l.d	$f1,$f1
    dmfc1	$v0,$f1
    lw	$at,-32284($s1)
    sll	$v0,$v0,0x0
    addu	$at,$at,$v0
    addu	$at,$at,$a0
    sw	$at,0($a5)
    # Line 2715
    lw	$a7,268($s0)
    addiu	$a7,$a7,1
    sw	$a7,268($s0)
    # Line 2712
    addiu	$a5,$a5,4
    # Line 2715
    lw	$a3,-32284($s1)
    b	.L0daea7f8
    lw	$a0,-32288($s1)
.L0daeaa78:
    # Line 2721
    dsll32	$v0,$t0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f0
    nop
    cvt.s.l	$f0,$f0
    lwc1	$f3,8($a1)
    mul.s	$f3,$f3,$f0
    ldc1	$f0,_lit8_3fe0000000000000
    cvt.d.s	$f3,$f3
    add.d	$f3,$f3,$f0
    trunc.l.d	$f3,$f3
    dmfc1	$at,$f3
    nop
    sll	$at,$at,0x0
    addu	$v0,$a3,$a3
    addu	$at,$at,$v0
    addu	$at,$at,$a0
    sw	$at,0($a5)
    # Line 2724
    lw	$a7,268($s0)
    addiu	$a7,$a7,1
    sw	$a7,268($s0)
    # Line 2721
    addiu	$a5,$a5,4
    # Line 2724
    lw	$a3,-32284($s1)
    b	.L0daea814
    lw	$a0,-32288($s1)
.L0daeaadc:
    # Line 2730
    dsll32	$v0,$t0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f2
    nop
    cvt.s.l	$f2,$f2
    lwc1	$f1,12($a1)
    mul.s	$f1,$f1,$f2
    ldc1	$f2,_lit8_3fe0000000000000
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f2
    trunc.l.d	$f1,$f1
    dmfc1	$at,$f1
    nop
    sll	$at,$at,0x0
    sll	$v0,$a3,0x2
    subu	$v0,$v0,$a3
    addu	$at,$at,$v0
    addu	$at,$at,$a0
    sw	$at,0($a5)
    # Line 2733
    lw	$a7,268($s0)
    # Line 2730
    addiu	$a5,$a5,4
    # Line 2733
    addiu	$a7,$a7,1
    b	.L0daea834
    sw	$a7,268($s0)
.end __glMgrInitHistogramState

# Function: __glMgrInitMinMaxState
# Declared: Line 2765 (Source lines: 2767-2834)
# Address: 0x0daeab3c - 0x0daeae24 (Size: 744 bytes, Frame: 224)
.globl __glMgrInitMinMaxState
.ent __glMgrInitMinMaxState
__glMgrInitMinMaxState:
    # Line 2778
    addiu	$t0,$a0,300
    # Line 2777
    addiu	$a5,$a0,288
    # Line 2767
    addiu	$sp,$sp,-96
    sd	$s8,16($sp)
    move	$s8,$a3
    sd	$s1,32($sp)
    move	$s1,$a0
    sd	$gp,24($sp)
    # Line 2779
    lw	$a4,1432($a0)
    # Line 2767
    lui	$at,0x11
    addiu	$at,$at,15196
    # Line 2780
    lw	$a7,__glCurrentContext
    # Line 2767
    addu	$gp,$t9,$at
    # Line 2780
    li	$a6,0x8214
    addu	$a6,$a6,$a7
    lw	$a6,0($a6)
    # Line 2787
    move	$a7,$zero
    # Line 2779
    lw	$a4,92($a4)
    # Line 2787
    andi	$at,$a6,0x8
    beqz	$at,.L0daeab98
    sw	$zero,272($a0)
    andi	$v0,$a4,0x8
    beqz	$v0,.L0daead88
.L0daeab98:
    # Line 2792
    la	$a0,SYMBOL_LOCATION
    # Line 2794
    lw	$v1,472($a0)
    sw	$v1,0($sp)
.L0daeaba4:
    andi	$a2,$a6,0x4
    beqz	$a2,.L0daeabb4
    andi	$at,$a4,0x4
    beqz	$at,.L0daeadb0
.L0daeabb4:
    # Line 2801
    lw	$v0,832($a0)
    sw	$v0,0($sp)
.L0daeabbc:
    andi	$v1,$a6,0x2
    beqz	$v1,.L0daeabcc
    andi	$a2,$a4,0x2
    beqz	$a2,.L0daeadd8
.L0daeabcc:
    # Line 2808
    lw	$at,836($a0)
    sw	$at,0($sp)
.L0daeabd4:
    andi	$v0,$a6,0x1
    beqz	$v0,.L0daeabe4
    andi	$v1,$a4,0x1
    beqz	$v1,.L0daeae00
.L0daeabe4:
    # Line 2815
    lw	$a2,840($a0)
    sw	$a2,0($sp)
.L0daeabec:
    # Line 2817
    lw	$a3,0($sp)
    slti	$at,$a7,3
    beqz	$at,.L0daeac5c
    move	$a0,$a7
    li	$a4,3
    subu	$a6,$a4,$a0
    andi	$a1,$a6,0x3
    beqz	$a1,.L0daeac28
    move	$a7,$a0
.L0daeac10:
    addiu	$a0,$a0,1
    # Line 2818
    sw	$a3,0($a5)
    addi	$a1,$a1,-1
    bnez	$a1,.L0daeac10
    addiu	$a5,$a5,4
    move	$a7,$a0
.L0daeac28:
    sra	$v0,$a6,0x2
    beqz	$v0,.L0daeac58
    move	$t0,$a5
    move	$a0,$a7
    move	$a1,$t0
.L0daeac3c:
    addiu	$a1,$a1,16
    # Line 2817
    addiu	$a0,$a0,4
    # Line 2818
    sw	$a3,-16($a1)
    sw	$a3,-12($a1)
    sw	$a3,-8($a1)
    # Line 2817
    bne	$a0,$a4,.L0daeac3c
    # Line 2818
    sw	$a3,-4($a1)
.L0daeac58:
    sd	$ra,40($sp)
.L0daeac5c:
    # Line 2821
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    sd	$ra,40($sp)
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,204($s1)
    # Line 2822
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sd	$s5,48($sp)
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,208($s1)
    # Line 2823
    lw	$v1,1432($s1)
    lw	$v1,0($v1)
    li	$s5,12
    div	$zero,$v1,$s5
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    mflo	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$s5,$zero,0x7
    # Line 2824
    lw	$a0,1432($s1)
    lw	$a0,4($a0)
    div	$zero,$a0,$s5
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    mflo	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$s5,$zero,0x7
    # Line 2825
    lw	$a1,1432($s1)
    lw	$a1,0($a1)
    div	$zero,$a1,$s5
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    teq	$s5,$zero,0x7
    mfhi	$a0
    jal	__glMgrInitPixelStateCRAM
    move	$a1,$zero
    # Line 2826
    lw	$a2,1432($s1)
    lw	$a2,4($a2)
    div	$zero,$a2,$s5
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    mfhi	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$s5,$zero,0x7
    # Line 2827
    li	$a1,-2
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    lw	$a0,1432($s1)
    ld	$s5,48($sp)
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,76($a0)
    # Line 2828
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,264($s1)
    # Line 2829
    mtc1	$zero,$f0
    # Line 2830
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 2829
    swc1	$f0,8($sp)
    # Line 2830
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,8($sp)
    # Line 2831
    lwc1	$f1,_lit_3f800000
    # Line 2832
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 2831
    swc1	$f1,8($sp)
    # Line 2832
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,8($sp)
    # Line 2833
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s8
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-1
    ld	$gp,24($sp)
    # Line 2834
    ld	$ra,40($sp)
    ld	$s1,32($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daead88:
    # Line 2789
    la	$a0,SYMBOL_LOCATION
    # Line 2790
    lw	$a2,472($a0)
    # Line 2791
    addiu	$t0,$s1,304
    # Line 2790
    addiu	$a5,$s1,292
    sw	$a2,288($s1)
    # Line 2792
    li	$a7,1
    # Line 2791
    lwc1	$f2,0($a1)
    # Line 2792
    sw	$a7,272($s1)
    b	.L0daeaba4
    # Line 2791
    swc1	$f2,300($s1)
.L0daeadb0:
    # Line 2797
    lw	$at,832($a0)
    sw	$at,0($a5)
    # Line 2798
    lwc1	$f3,4($a1)
    swc1	$f3,0($t0)
    # Line 2799
    lw	$a7,272($s1)
    # Line 2798
    addiu	$t0,$t0,4
    # Line 2797
    addiu	$a5,$a5,4
    # Line 2799
    addiu	$a7,$a7,1
    b	.L0daeabbc
    sw	$a7,272($s1)
.L0daeadd8:
    # Line 2804
    lw	$at,836($a0)
    sw	$at,0($a5)
    # Line 2805
    lwc1	$f0,8($a1)
    swc1	$f0,0($t0)
    # Line 2806
    lw	$a7,272($s1)
    # Line 2805
    addiu	$t0,$t0,4
    # Line 2804
    addiu	$a5,$a5,4
    # Line 2806
    addiu	$a7,$a7,1
    b	.L0daeabd4
    sw	$a7,272($s1)
.L0daeae00:
    # Line 2811
    lw	$at,840($a0)
    sw	$at,0($a5)
    # Line 2812
    lwc1	$f1,12($a1)
    swc1	$f1,0($t0)
    # Line 2813
    lw	$a7,272($s1)
    # Line 2811
    addiu	$a5,$a5,4
    # Line 2813
    addiu	$a7,$a7,1
    b	.L0daeabec
    sw	$a7,272($s1)
.end __glMgrInitMinMaxState

# Function: __glMgrInitCompressState
# Declared: Line 2838 (Source lines: 2840-2932)
# Address: 0x0daeae24 - 0x0daeb1a8 (Size: 900 bytes, Frame: 208)
.globl __glMgrInitCompressState
.ent __glMgrInitCompressState
__glMgrInitCompressState:
    # Line 2846
    li	$a1,-2
    # Line 2840
    addiu	$sp,$sp,-80
    sd	$s8,16($sp)
    move	$s8,$a3
    sd	$s0,40($sp)
    sd	$gp,24($sp)
    lui	$at,0x11
    addiu	$at,$at,14452
    addu	$gp,$t9,$at
    # Line 2846
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    # Line 2840
    move	$s0,$a0
    sd	$ra,8($sp)
    # Line 2846
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,220($a0)
    # Line 2847
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,204($s0)
    # Line 2848
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,208($s0)
    # Line 2849
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,212($s0)
    # Line 2850
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,216($s0)
    # Line 2851
    lw	$a2,1432($s0)
    lw	$a2,24($a2)
    move	$a1,$zero
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a0,$a2,0x2
    srl	$a0,$a0,0x1d
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    sra	$a0,$a0,0x3
    # Line 2852
    lw	$a2,1432($s0)
    lw	$a2,28($a2)
    li	$a1,1
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a0,$a2,0x2
    srl	$a0,$a0,0x1d
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    sra	$a0,$a0,0x3
    # Line 2853
    lw	$a2,1432($s0)
    lw	$a2,24($a2)
    move	$a1,$zero
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    sra	$a2,$a2,0x1f
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x7
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    subu	$a0,$a0,$a2
    # Line 2854
    lw	$a2,1432($s0)
    lw	$a2,28($a2)
    li	$a1,1
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    sra	$a2,$a2,0x1f
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0x7
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    subu	$a0,$a0,$a2
    # Line 2856
    lw	$a0,44($s0)
    li	$v1,6410
    li	$at,6406
    beq	$a0,$at,.L0daeb098
    li	$v0,6409
    beql	$a0,$v0,.L0daeb110
    # Line 2863
    li	$a0,1
    # Line 2856
    beq	$a0,$v1,.L0daeb11c
    li	$a1,0x8049
    beq	$a0,$a1,.L0daeb12c
    li	$at,6407
    beq	$a0,$at,.L0daeb14c
    lw	$v0,0($sp)
    lw	$a0,4($sp)
    sd	$v0,32($sp)
.L0daeaf80:
    # Line 2886
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 2888
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s8
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-1
    # Line 2894
    lw	$a1,1432($s0)
    ld	$v0,32($sp)
    lw	$a2,24($a1)
    mult	$a2,$v0
    mflo	$v1
    sw	$v1,0($a1)
    # Line 2895
    lw	$s8,1432($s0)
    lw	$at,28($s8)
    mult	$at,$v0
    mflo	$a2
    sw	$a2,4($s8)
    # Line 2900
    lw	$a1,44($s0)
    lw	$a2,1432($s0)
    andi	$a1,$a1,0xf
    sw	$a1,100($a2)
    lw	$v1,0($s0)
    ld	$s8,16($sp)
    bnez	$v1,.L0daeb024
    lw	$a2,1432($s0)
    # Line 2906
    lw	$a0,48($s0)
    # Line 2903
    lw	$at,4($a2)
    lw	$a3,0($a2)
    # Line 2906
    sltiu	$v0,$a0,5124
    bnez	$v0,.L0daeb068
    # Line 2903
    addu	$a3,$a3,$at
    # Line 2906
    sltiu	$v1,$a0,5125
    beqz	$v1,.L0daeb0d4
.L0daeb008:
    # Line 2925
    li	$a1,8
.L0daeb00c:
    sll	$at,$a3,0x2
    andi	$at,$at,0x7
    subu	$a1,$a1,$at
    andi	$a1,$a1,0x7
    sb	$a1,65($a2)
    # Line 2926
    lw	$a2,1432($s0)
.L0daeb024:
    # Line 2929
    lw	$v0,44($s0)
.L0daeb028:
    # Line 2930
    # lw $t9, -28592($gp) # &__glElementsPerGroup
    # Line 2929
    sw	$v0,68($a2)
    # Line 2930
    jal	__glElementsPerGroup
    lw	$a0,44($s0)
    lw	$v1,1432($s0)
    # Line 2931
    # lw $t9, -30472($gp) # &getchannels
    # Line 2930
    sw	$v0,76($v1)
    # Line 2931
    jal	getchannels
    lw	$a0,44($s0)
    ld	$gp,24($sp)
    # Line 2932
    ld	$ra,8($sp)
    # Line 2931
    lw	$a0,1432($s0)
    # Line 2932
    ld	$s0,40($sp)
    addiu	$sp,$sp,80
    jr	$ra
    # Line 2931
    sw	$v0,92($a0)
.L0daeb068:
    # Line 2906
    sltiu	$a1,$a0,5122
    bnez	$a1,.L0daeb0a8
    sltiu	$at,$a0,5123
    beqz	$at,.L0daeb170
    # Line 2919
    li	$v0,8
.L0daeb07c:
    sll	$v1,$a3,0x1
    andi	$v1,$v1,0x7
    subu	$v0,$v0,$v1
    andi	$v0,$v0,0x7
    sb	$v0,65($a2)
    # Line 2920
    b	.L0daeb024
    lw	$a2,1432($s0)
.L0daeb098:
    # Line 2859
    move	$a0,$zero
    # Line 2860
    li	$a1,1
    # Line 2861
    b	.L0daeaf80
    sd	$a1,32($sp)
.L0daeb0a8:
    # Line 2906
    sltiu	$at,$a0,5121
    bnez	$at,.L0daeb15c
    sltiu	$v0,$a0,5122
    beqz	$v0,.L0daeb024
    # Line 2914
    li	$v1,8
.L0daeb0bc:
    andi	$a1,$a3,0x7
    subu	$v1,$v1,$a1
    andi	$v1,$v1,0x7
    sb	$v1,65($a2)
    # Line 2915
    b	.L0daeb024
    lw	$a2,1432($s0)
.L0daeb0d4:
    # Line 2906
    sltiu	$at,$a0,5126
    bnez	$at,.L0daeb184
    sltiu	$v0,$a0,5127
    bnez	$v0,.L0daeb008
    li	$v1,6656
    bnel	$a0,$v1,.L0daeb028
    # Line 2929
    lw	$v0,44($s0)
    # Line 2909
    li	$a1,8
    sll	$at,$a3,0x1
    andi	$at,$at,0x7
    subu	$a1,$a1,$at
    andi	$a1,$a1,0x7
    sb	$a1,65($a2)
    # Line 2910
    b	.L0daeb024
    lw	$a2,1432($s0)
.L0daeb110:
    # Line 2864
    li	$v0,1
    # Line 2865
    b	.L0daeaf80
    sd	$v0,32($sp)
.L0daeb11c:
    # Line 2867
    li	$a0,2
    # Line 2868
    li	$v1,2
    # Line 2869
    b	.L0daeaf80
    sd	$v1,32($sp)
.L0daeb12c:
    # Line 2871
    lw	$a1,424($s0)
    lui	$at,0x100
    and	$a1,$a1,$at
    beqz	$a1,.L0daeb198
    # Line 2873
    li	$a0,1
    # Line 2872
    li	$v0,1
    # Line 2873
    b	.L0daeaf80
    sd	$v0,32($sp)
.L0daeb14c:
    # Line 2881
    li	$a0,4
    # Line 2882
    li	$v1,3
    b	.L0daeaf80
    sd	$v1,32($sp)
.L0daeb15c:
    # Line 2906
    li	$a1,5120
    bnel	$a0,$a1,.L0daeb028
    # Line 2929
    lw	$v0,44($s0)
    b	.L0daeb0bc
    # Line 2914
    li	$v1,8
.L0daeb170:
    # Line 2906
    li	$at,5123
    bnel	$a0,$at,.L0daeb028
    # Line 2929
    lw	$v0,44($s0)
    b	.L0daeb07c
    # Line 2919
    li	$v0,8
.L0daeb184:
    # Line 2906
    li	$v0,5125
    bnel	$a0,$v0,.L0daeb028
    # Line 2929
    lw	$v0,44($s0)
    b	.L0daeb00c
    # Line 2925
    li	$a1,8
.L0daeb198:
    # Line 2877
    li	$a0,3
    # Line 2876
    li	$v1,2
    b	.L0daeaf80
    sd	$v1,32($sp)
.end __glMgrInitCompressState

# Function: __glMgrInitXZoomState
# Declared: Line 2936 (Source lines: 2938-3070)
# Address: 0x0daeb1a8 - 0x0daeb6c0 (Size: 1304 bytes, Frame: 160)
.globl __glMgrInitXZoomState
.ent __glMgrInitXZoomState
__glMgrInitXZoomState:
    # Line 2938
    addiu	$sp,$sp,-160
    sd	$a3,56($sp)
    sd	$s0,72($sp)
    move	$s0,$a0
    sd	$gp,80($sp)
    sd	$s1,64($sp)
    # Line 2943
    lw	$s1,0($a2)
    # Line 2938
    lui	$at,0x11
    addiu	$at,$at,13552
    # Line 2943
    beqz	$s1,.L0daeb1e4
    # Line 2938
    addu	$gp,$t9,$at
    # Line 2945
    lw	$s1,1512($s0)
    sd	$s2,96($sp)
    sd	$s4,88($sp)
    negu	$s1,$s1
.L0daeb1e4:
    sd	$s4,88($sp)
    addiu	$s4,$sp,0
    sd	$s2,96($sp)
    addiu	$a5,$sp,0
    addiu	$s2,$a5,44
    # Line 2948
    sw	$zero,40($s4)
    sw	$zero,36($s4)
    sw	$zero,32($s4)
    sw	$zero,28($s4)
    sw	$zero,24($s4)
    sw	$zero,20($s4)
    sw	$zero,16($s4)
    sw	$zero,12($s4)
    sw	$zero,8($s4)
    sw	$zero,4($s4)
    sw	$zero,0($s4)
    # Line 2950
    lw	$a0,412($s0)
    lw	$a3,1432($s0)
    li	$a2,2
    beq	$a0,$a2,.L0daeb594
    lw	$a3,76($a3)
    li	$at,3
    beq	$a0,$at,.L0daeb5e8
    li	$v0,4
    beq	$a0,$v0,.L0daeb628
    li	$v1,6
    beq	$a0,$v1,.L0daeb55c
    li	$a1,12
    beq	$a0,$a1,.L0daeb664
    sd	$s5,112($sp)
    lw	$s4,52($sp)
    lw	$s5,48($sp)
.L0daeb264:
    # Line 3016
    andi	$at,$a3,0x1
    beqz	$at,.L0daeb27c
    # Line 3021
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sd	$ra,104($sp)
    # Line 3019
    sll	$s5,$s5,0x1
    # Line 3021
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
.L0daeb27c:
    li	$a1,-2
    sd	$ra,104($sp)
    jal	__glMgrInitPixelStateERAM
    lw	$a0,220($s0)
    # Line 3022
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateERAM
    lw	$a0,204($s0)
    # Line 3023
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,1
    jal	__glMgrInitPixelStateERAM
    lw	$a0,208($s0)
    # Line 3024
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateERAM
    lw	$a0,212($s0)
    # Line 3025
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,1
    jal	__glMgrInitPixelStateERAM
    lw	$a0,216($s0)
    # Line 3026
    lw	$v0,1432($s0)
    lw	$v0,24($v0)
    div	$zero,$v0,$s5
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a1,$zero
    mflo	$a0
    jal	__glMgrInitPixelStateERAM
    teq	$s5,$zero,0x7
    # Line 3027
    lw	$v1,1432($s0)
    lw	$v1,28($v1)
    div	$zero,$v1,$s5
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,1
    mflo	$a0
    jal	__glMgrInitPixelStateERAM
    teq	$s5,$zero,0x7
    # Line 3028
    lw	$a2,1432($s0)
    lw	$a2,24($a2)
    div	$zero,$a2,$s5
    lw	$a0,412($s0)
    mfhi	$a1
    nop
    nop
    mult	$a0,$a1
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    teq	$s5,$zero,0x7
    mflo	$a0
    jal	__glMgrInitPixelStateERAM
    move	$a1,$zero
    # Line 3029
    lw	$a5,1432($s0)
    lw	$a5,28($a5)
    div	$zero,$a5,$s5
    lw	$a3,412($s0)
    mfhi	$a4
    nop
    nop
    mult	$a3,$a4
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,1
    mflo	$a0
    jal	__glMgrInitPixelStateERAM
    teq	$s5,$zero,0x7
    # Line 3030
    li	$a1,-2
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    lw	$a0,1432($s0)
    ld	$s5,112($sp)
    jal	__glMgrInitPixelStateERAM
    lw	$a0,76($a0)
    # Line 3031
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$s4
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    # Line 3032
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$s1
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    addiu	$s4,$sp,0
    ld	$s1,64($sp)
    # Line 3035
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,0($s4)
    # Line 3034
    addiu	$s4,$s4,4
    beq	$s4,$s2,.L0daeb4b8
    # Line 3035
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,0($s4)
    # Line 3034
    addiu	$s4,$s4,4
    beq	$s4,$s2,.L0daeb4b8
    # Line 3035
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,0($s4)
    # Line 3034
    addiu	$s4,$s4,4
    beq	$s4,$s2,.L0daeb4b8
    # Line 3035
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,0($s4)
    # Line 3034
    addiu	$s4,$s4,4
    beq	$s4,$s2,.L0daeb4b8
    # Line 3035
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,0($s4)
    # Line 3034
    addiu	$s4,$s4,4
    beq	$s4,$s2,.L0daeb4b8
    # Line 3035
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,0($s4)
    # Line 3034
    addiu	$s4,$s4,4
    beq	$s4,$s2,.L0daeb4b8
    # Line 3035
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,0($s4)
    # Line 3034
    addiu	$s4,$s4,4
    beq	$s4,$s2,.L0daeb4b8
    # Line 3035
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,0($s4)
    # Line 3034
    addiu	$s4,$s4,4
    beq	$s4,$s2,.L0daeb4b8
    # Line 3035
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,0($s4)
    # Line 3034
    addiu	$s4,$s4,4
    beq	$s4,$s2,.L0daeb4b8
    # Line 3035
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,0($s4)
    # Line 3034
    addiu	$s4,$s4,4
    beq	$s4,$s2,.L0daeb4b8
    # Line 3035
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    lw	$a0,0($s4)
    jal	__glMgrInitPixelStateERAM
    ld	$s2,96($sp)
.L0daeb4b8:
    ld	$a0,56($sp)
    # Line 3037
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-1
    ld	$s2,96($sp)
    jal	__glMgrInitPixelStateERAM
    ld	$s4,88($sp)
    # Line 3043
    lw	$ra,1432($s0)
    lw	$v0,412($s0)
    lw	$at,0($ra)
    mult	$at,$v0
    mflo	$a1
    sw	$a1,0($ra)
    # Line 3044
    lw	$at,1432($s0)
    lw	$v1,412($s0)
    lw	$v0,4($at)
    mult	$v0,$v1
    mflo	$ra
    sw	$ra,4($at)
    lw	$a1,0($s0)
    bnez	$a1,.L0daeb54c
    ld	$ra,104($sp)
    # Line 3050
    lw	$a3,1432($s0)
    lw	$s0,4($a3)
    lw	$a2,0($a3)
    # Line 3053
    lw	$a0,84($a3)
    # Line 3050
    addu	$a2,$a2,$s0
    # Line 3053
    beqz	$a0,.L0daeb670
    ld	$s0,72($sp)
    li	$at,1
    beq	$a0,$at,.L0daeb670
    ld	$s0,72($sp)
    li	$v0,2
    beq	$v0,$a0,.L0daeb6a4
    li	$v1,3
    beq	$a0,$v1,.L0daeb6a4
    li	$a1,4
    beq	$a0,$a1,.L0daeb688
.L0daeb54c:
    ld	$gp,80($sp)
    # Line 3070
    ld	$s0,72($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0daeb55c:
    # Line 3005
    sll	$a4,$a3,0x2
    addiu	$s4,$a5,20
    sd	$s5,112($sp)
    li	$s5,2
    # Line 3004
    sll	$a0,$a3,0x3
    sd	$a0,120($sp)
    # Line 3008
    sw	$a4,20($s4)
    sw	$a4,16($s4)
    sw	$a4,12($s4)
    sw	$a4,8($s4)
    sw	$a4,4($s4)
    sw	$a4,0($s4)
    b	.L0daeb264
    ld	$s4,120($sp)
.L0daeb594:
    sd	$s5,112($sp)
    # Line 2953
    li	$s5,6
    # Line 2954
    sll	$v0,$a3,0x2
    # Line 2956
    sw	$v0,8($sp)
    # Line 2955
    sw	$v0,4($sp)
    # Line 2952
    sll	$s4,$a3,0x2
    subu	$s4,$s4,$a3
    sll	$s4,$s4,0x3
    # Line 2958
    addu	$at,$v0,$v0
    # Line 2959
    sw	$at,16($sp)
    # Line 2958
    sw	$at,12($sp)
    # Line 2960
    addu	$at,$at,$v0
    # Line 2962
    sw	$at,24($sp)
    # Line 2961
    sw	$at,20($sp)
    # Line 2963
    addu	$at,$at,$v0
    # Line 2965
    sw	$at,32($sp)
    # Line 2964
    sw	$at,28($sp)
    # Line 2966
    addu	$at,$at,$v0
    # Line 2968
    sw	$at,40($sp)
    # Line 2969
    b	.L0daeb264
    # Line 2967
    sw	$at,36($sp)
.L0daeb5e8:
    sd	$s5,112($sp)
    # Line 2973
    li	$s5,4
    # Line 2972
    sll	$s4,$a3,0x4
    # Line 2974
    sll	$v0,$a3,0x2
    # Line 2977
    sw	$v0,16($sp)
    # Line 2976
    sw	$v0,12($sp)
    # Line 2975
    sw	$v0,8($sp)
    # Line 2979
    addu	$at,$v0,$v0
    # Line 2981
    sw	$at,28($sp)
    # Line 2980
    sw	$at,24($sp)
    # Line 2979
    sw	$at,20($sp)
    # Line 2982
    addu	$at,$at,$v0
    # Line 2985
    sw	$at,40($sp)
    # Line 2984
    sw	$at,36($sp)
    # Line 2986
    b	.L0daeb264
    # Line 2983
    sw	$at,32($sp)
.L0daeb628:
    sd	$s5,112($sp)
    # Line 2990
    li	$s5,3
    # Line 2991
    sll	$at,$a3,0x2
    # Line 2989
    sll	$s4,$a3,0x2
    subu	$s4,$s4,$a3
    # Line 2995
    sw	$at,24($sp)
    # Line 2994
    sw	$at,20($sp)
    # Line 2992
    sw	$at,12($sp)
    # Line 2997
    addu	$at,$at,$at
    # Line 3000
    sw	$at,40($sp)
    # Line 2999
    sw	$at,36($sp)
    # Line 2998
    sw	$at,32($sp)
    # Line 2997
    sw	$at,28($sp)
    # Line 3001
    b	.L0daeb264
    # Line 2989
    sll	$s4,$s4,0x2
.L0daeb664:
    # Line 3014
    li	$s5,1
    b	.L0daeb264
    # Line 3013
    sll	$s4,$a3,0x2
.L0daeb670:
    # Line 3057
    li	$v0,8
    andi	$v1,$a2,0x7
    subu	$v0,$v0,$v1
    andi	$v0,$v0,0x7
    # Line 3058
    b	.L0daeb54c
    # Line 3057
    sb	$v0,65($a3)
.L0daeb688:
    # Line 3066
    li	$a1,8
    sll	$at,$a2,0x2
    andi	$at,$at,0x7
    subu	$a1,$a1,$at
    andi	$a1,$a1,0x7
    b	.L0daeb54c
    sb	$a1,65($a3)
.L0daeb6a4:
    # Line 3062
    li	$v0,8
    sll	$v1,$a2,0x1
    andi	$v1,$v1,0x7
    subu	$v0,$v0,$v1
    andi	$v0,$v0,0x7
    # Line 3063
    b	.L0daeb54c
    # Line 3062
    sb	$v0,65($a3)
.end __glMgrInitXZoomState

# Function: __glMgrInitZoomState
# Declared: Line 3074 (Source lines: 3076-3134)
# Address: 0x0daeb6c0 - 0x0daeb930 (Size: 624 bytes, Frame: 240)
.globl __glMgrInitZoomState
.ent __glMgrInitZoomState
__glMgrInitZoomState:
    # Line 3088
    move	$a1,$zero
    # Line 3076
    addiu	$sp,$sp,-112
    sd	$s3,56($sp)
    move	$s3,$a3
    # Line 3088
    move	$a3,$zero
    sd	$s0,40($sp)
    # Line 3076
    move	$s0,$a0
    sd	$ra,48($sp)
    # Line 3078
    li	$v0,1
    sb	$zero,2($sp)
    sb	$v0,1($sp)
    sb	$v0,0($sp)
    sdc1	$f30,24($sp)
    # Line 3084
    lwc1	$f30,4($a2)
    sd	$gp,64($sp)
    # Line 3076
    lui	$at,0x11
    addiu	$at,$at,12248
    addu	$gp,$t9,$at
    # Line 3088
    # lw $t9, -30156($gp) # &__glMgrInitCleanupState
    # Line 3083
    lwc1	$f0,0($a2)
    # Line 3088
    addiu	$a2,$sp,0
    bal __glMgrInitCleanupState
    sdc1	$f0,32($sp)
    # Line 3091
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,204($s0)
    # Line 3092
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,208($s0)
    # Line 3093
    lw	$a2,1432($s0)
    lw	$a2,0($a2)
    move	$a1,$zero
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a0,$a2,0x3
    srl	$a0,$a0,0x1c
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    sra	$a0,$a0,0x4
    # Line 3094
    lw	$a2,1432($s0)
    lw	$a2,4($a2)
    li	$a1,1
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a0,$a2,0x3
    srl	$a0,$a0,0x1c
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    sra	$a0,$a0,0x4
    # Line 3095
    lw	$a2,1432($s0)
    lw	$a2,0($a2)
    move	$a1,$zero
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    sra	$a2,$a2,0x1f
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0xf
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    subu	$a0,$a0,$a2
    # Line 3096
    lw	$a2,1432($s0)
    lw	$a2,4($a2)
    li	$a1,1
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    sra	$a2,$a2,0x1f
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0xf
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    subu	$a0,$a0,$a2
    # Line 3099
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 3098
    swc1	$f30,8($sp)
    # Line 3099
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,8($sp)
    # Line 3102
    li	$a1,-2
    # Line 3101
    ldc1	$f1,32($sp)
    # Line 3102
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ldc1	$f30,24($sp)
    # Line 3101
    swc1	$f1,16($sp)
    # Line 3102
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,16($sp)
    # Line 3104
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s3
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-1
    # Line 3106
    lw	$a0,1104($s0)
    ld	$s0,40($sp)
    beqz	$a0,.L0daeb8ac
    ld	$s3,56($sp)
    lw	$a4,16($a0)
    lw	$a3,20($a0)
    slt	$at,$a3,$a4
    beqz	$at,.L0daeb84c
    # Line 3107
    move	$a2,$a3
    move	$a2,$a4
.L0daeb84c:
    slti	$v0,$a2,4
    beqz	$v0,.L0daeb860
    move	$a0,$a2
    b	.L0daeb870
    # Line 3109
    li	$a0,3
.L0daeb860:
    andi	$v1,$a2,0x1
    beqz	$v1,.L0daeb8b8
    nop
.L0daeb86c:
    # Line 3116
    beqz	$a0,.L0daeb8f8
.L0daeb870:
    li	$a1,3
    beq	$a0,$a1,.L0daeb8c0
    li	$at,5
    beq	$a0,$at,.L0daeb8dc
    li	$v0,7
    beq	$a0,$v0,.L0daeb914
    la	$a3,SYMBOL_LOCATION
.L0daeb88c:
    # Line 3133
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,1032($a3)
    # Line 3134
    ld	$ra,48($sp)
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0daeb8ac:
    # Line 3113
    move	$a0,$zero
    b	.L0daeb86c
    ld	$s0,40($sp)
.L0daeb8b8:
    # Line 3111
    b	.L0daeb86c
    addiu	$a0,$a2,1
.L0daeb8c0:
    # Line 3122
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    la	$a0,SYMBOL_LOCATION
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,1124($a0)
    b	.L0daeb88c
    la	$a3,SYMBOL_LOCATION
.L0daeb8dc:
    # Line 3126
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    la	$a0,SYMBOL_LOCATION
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,1128($a0)
    b	.L0daeb88c
    la	$a3,SYMBOL_LOCATION
.L0daeb8f8:
    # Line 3118
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    la	$a0,SYMBOL_LOCATION
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,940($a0)
    b	.L0daeb88c
    la	$a3,SYMBOL_LOCATION
.L0daeb914:
    # Line 3130
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    la	$a0,SYMBOL_LOCATION
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,1132($a0)
    b	.L0daeb88c
    la	$a3,SYMBOL_LOCATION
.end __glMgrInitZoomState

# Function: __glMgrInitXYZoomState
# Declared: Line 3138 (Source lines: 3140-3180)
# Address: 0x0daeb930 - 0x0daebaa8 (Size: 376 bytes, Frame: 208)
.globl __glMgrInitXYZoomState
.ent __glMgrInitXYZoomState
__glMgrInitXYZoomState:
    # Line 3147
    move	$a1,$zero
    # Line 3141
    li	$at,1
    # Line 3140
    addiu	$sp,$sp,-80
    sd	$s3,24($sp)
    move	$s3,$a3
    # Line 3147
    move	$a3,$zero
    addiu	$a2,$sp,0
    # Line 3141
    sb	$zero,2($sp)
    sd	$s0,8($sp)
    # Line 3140
    move	$s0,$a0
    sd	$gp,32($sp)
    lui	$v0,0x11
    addiu	$v0,$v0,11624
    addu	$gp,$t9,$v0
    # Line 3147
    # lw $t9, -30156($gp) # &__glMgrInitCleanupState
    # Line 3141
    sb	$at,1($sp)
    sd	$ra,16($sp)
    # Line 3147
    bal __glMgrInitCleanupState
    # Line 3141
    sb	$at,0($sp)
    # Line 3149
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,220($s0)
    # Line 3150
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$s3
    jal	__glMgrInitPixelStateERAM
    li	$a1,-1
    # Line 3152
    lw	$a0,1104($s0)
    ld	$s0,8($sp)
    beqz	$a0,.L0daeba24
    ld	$s3,24($sp)
    lw	$a4,16($a0)
    lw	$a3,20($a0)
    slt	$v1,$a3,$a4
    beqz	$v1,.L0daeb9c4
    # Line 3153
    move	$a2,$a3
    move	$a2,$a4
.L0daeb9c4:
    slti	$a1,$a2,4
    beqz	$a1,.L0daeb9d8
    move	$a0,$a2
    b	.L0daeb9e8
    # Line 3155
    li	$a0,3
.L0daeb9d8:
    andi	$at,$a2,0x1
    beqz	$at,.L0daeba30
    nop
.L0daeb9e4:
    # Line 3162
    beqz	$a0,.L0daeba70
.L0daeb9e8:
    li	$v0,3
    beq	$a0,$v0,.L0daeba38
    li	$v1,5
    beq	$a0,$v1,.L0daeba54
    li	$a1,7
    beq	$a0,$a1,.L0daeba8c
    la	$a3,SYMBOL_LOCATION
.L0daeba04:
    # Line 3179
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,1032($a3)
    # Line 3180
    ld	$ra,16($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daeba24:
    # Line 3159
    move	$a0,$zero
    b	.L0daeb9e4
    ld	$s0,8($sp)
.L0daeba30:
    # Line 3157
    b	.L0daeb9e4
    addiu	$a0,$a2,1
.L0daeba38:
    # Line 3168
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    la	$a0,SYMBOL_LOCATION
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,1124($a0)
    b	.L0daeba04
    la	$a3,SYMBOL_LOCATION
.L0daeba54:
    # Line 3172
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    la	$a0,SYMBOL_LOCATION
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,1128($a0)
    b	.L0daeba04
    la	$a3,SYMBOL_LOCATION
.L0daeba70:
    # Line 3164
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    la	$a0,SYMBOL_LOCATION
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,940($a0)
    b	.L0daeba04
    la	$a3,SYMBOL_LOCATION
.L0daeba8c:
    # Line 3176
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    la	$a0,SYMBOL_LOCATION
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,1132($a0)
    b	.L0daeba04
    la	$a3,SYMBOL_LOCATION
.end __glMgrInitXYZoomState

# Function: __glMgrInitCleanupState
# Declared: Line 3184 (Source lines: 3186-3281)
# Address: 0x0daebaa8 - 0x0daebdc0 (Size: 792 bytes, Frame: 208)
.globl __glMgrInitCleanupState
.ent __glMgrInitCleanupState
__glMgrInitCleanupState:
    # Line 3202
    lw	$a3,1548($a0)
    # Line 3186
    addiu	$sp,$sp,-80
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$gp,32($sp)
    # Line 3202
    lw	$v1,__glCurrentContext
    # Line 3186
    lui	$v0,0x11
    addiu	$v0,$v0,11248
    # Line 3202
    lwc1	$f0,724($v1)
    # Line 3186
    addu	$gp,$t9,$v0
    # Line 3202
    dmtc1	$zero,$f1
    cvt.d.s	$f0,$f0
    sd	$s1,16($sp)
    c.lt.d	$f0,$f1
    # Line 3201
    lbu	$at,0($a2)
    # Line 3202
    lbu	$s1,1($a2)
    bc1f	.L0daebafc
    sd	$at,0($sp)
    # Line 3205
    negu	$a1,$a3
    b	.L0daebb04
    sd	$a1,8($sp)
.L0daebafc:
    move	$at,$a3
    sd	$a3,8($sp)
.L0daebb04:
    beqz	$s1,.L0daebd24
    # Line 3225
    nop	# was lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    # Line 3205
    lbu	$v0,2($a2)
    beqz	$v0,.L0daebcc4
    lw	$a0,1432($s0)
    lw	$v1,24($a0)
    addiu	$v1,$v1,7
    sra	$v1,$v1,0x3
    andi	$v1,$v1,0x7
    beqz	$v1,.L0daebd04
    sd	$ra,40($sp)
    # Line 3213
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lui	$a0,0x4200
    move	$a1,$s1
.L0daebb44:
    # Line 3225
    beqz	$a1,.L0daebca0
    ld	$s1,16($sp)
    lw	$v0,1432($s0)
    lwc1	$f1,88($v0)
    trunc.w.s	$f1,$f1
    lw	$v0,4($v0)
    mfc1	$v1,$f1
    nop
    mult	$v0,$v1
    mflo	$at
    andi	$at,$at,0x7
    beqz	$at,.L0daebca0
    ld	$s1,16($sp)
    # Line 3229
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lui	$a0,0x4200
    # Line 3233
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
.L0daebb8c:
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lui	$a0,0x4201
    # Line 3240
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    lw	$a0,1432($s0)
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,32($a0)
    # Line 3241
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    lw	$a0,1432($s0)
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,36($a0)
    # Line 3242
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,0($sp)
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 3243
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    lui	$a0,0x3
    jal	__glMgrInitPixelStateCRAM
    ori	$a0,$a0,0x4000
    # Line 3244
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$zero
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 3245
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,8($sp)
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 3247
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    la	$a0,SYMBOL_LOCATION
    li	$a1,-1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,420($a0)
    # Line 3249
    lw	$a2,1104($s0)
    ld	$s0,24($sp)
    beqz	$a2,.L0daebcb8
    # Line 3259
    li	$v1,3
    # Line 3249
    lw	$a3,16($a2)
    lw	$a0,20($a2)
    slt	$a1,$a0,$a3
    beqz	$a1,.L0daebc40
    # Line 3250
    move	$a2,$a0
    move	$a2,$a3
.L0daebc40:
    slti	$at,$a2,4
    beqz	$at,.L0daebc54
    move	$a0,$a2
    b	.L0daebc64
    # Line 3252
    li	$a0,3
.L0daebc54:
    andi	$v0,$a2,0x1
    beqz	$v0,.L0daebd1c
    nop
.L0daebc60:
    # Line 3259
    beqz	$a0,.L0daebd70
.L0daebc64:
    li	$at,7
    beq	$a0,$v1,.L0daebd3c
    li	$a1,5
    beq	$a0,$a1,.L0daebd58
    # Line 3269
    nop	# was lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    # Line 3259
    beq	$a0,$at,.L0daebda4
    # Line 3276
    nop	# was lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
.L0daebc80:
    la	$a0,SYMBOL_LOCATION
    li	$a1,-1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,1032($a0)
    # Line 3281
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daebca0:
    # Line 3231
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$zero
    jal	__glMgrInitPixelStateCRAM
    li	$a1,1
    b	.L0daebb8c
    # Line 3233
    nop	# was lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
.L0daebcb8:
    # Line 3256
    move	$a0,$zero
    b	.L0daebc60
    ld	$s0,24($sp)
.L0daebcc4:
    # Line 3215
    lwc1	$f2,88($a0)
    trunc.w.s	$f2,$f2
    lw	$at,0($a0)
    mfc1	$v0,$f2
    nop
    mult	$at,$v0
    mflo	$a1
    andi	$a1,$a1,0x7
    beqz	$a1,.L0daebd8c
    sd	$ra,40($sp)
    # Line 3219
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lui	$a0,0x4200
    b	.L0daebb44
    move	$a1,$s1
.L0daebd04:
    # Line 3215
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$zero
    jal	__glMgrInitPixelStateCRAM
    move	$a1,$zero
    b	.L0daebb44
    move	$a1,$s1
.L0daebd1c:
    # Line 3254
    b	.L0daebc60
    addiu	$a0,$a2,1
.L0daebd24:
    # Line 3225
    move	$a0,$zero
    sd	$ra,40($sp)
    jalr	$t9
    move	$a1,$zero
    b	.L0daebb44
    move	$a1,$s1
.L0daebd3c:
    # Line 3265
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    la	$a0,SYMBOL_LOCATION
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,1172($a0)
    b	.L0daebc80
    # Line 3276
    nop	# was lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
.L0daebd58:
    la	$a0,SYMBOL_LOCATION
    # Line 3269
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,1176($a0)
    b	.L0daebc80
    # Line 3276
    nop	# was lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
.L0daebd70:
    # Line 3261
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    la	$a0,SYMBOL_LOCATION
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,936($a0)
    b	.L0daebc80
    # Line 3276
    nop	# was lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
.L0daebd8c:
    # Line 3221
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$zero
    jal	__glMgrInitPixelStateCRAM
    move	$a1,$zero
    b	.L0daebb44
    move	$a1,$s1
.L0daebda4:
    # Line 3273
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    la	$a0,SYMBOL_LOCATION
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,1180($a0)
    b	.L0daebc80
    # Line 3276
    nop	# was lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
.end __glMgrInitCleanupState

# Function: __glMgrInitPackingState
# Declared: Line 3285 (Source lines: 3287-3388)
# Address: 0x0daebdc0 - 0x0daec1b0 (Size: 1008 bytes, Frame: 128)
.globl __glMgrInitPackingState
.ent __glMgrInitPackingState
__glMgrInitPackingState:
    # Line 3287
    addiu	$sp,$sp,-128
    sd	$gp,64($sp)
    lw	$at,248($a0)
    lui	$v0,0x11
    addiu	$v0,$v0,10456
    andi	$at,$at,0x2
    beqz	$at,.L0daec088
    addu	$gp,$t9,$v0
    # Line 3301
    move	$a4,$zero
.L0daebde4:
    # Line 3305
    lw	$a3,1432($a0)
    # Line 3360
    addiu	$a5,$sp,0
    # Line 3305
    lw	$a2,84($a3)
    li	$at,3
    li	$v0,4
    beqz	$a2,.L0daebfa0
    li	$v1,1
    beq	$a2,$v1,.L0daebfa0
    li	$a1,2
    beql	$a2,$a1,.L0daec030
    # Line 3323
    lui	$a2,0x4010
    # Line 3305
    beql	$a2,$at,.L0daec030
    # Line 3323
    lui	$a2,0x4010
    # Line 3305
    beq	$a2,$v0,.L0daec0c4
    # Line 3331
    lui	$a1,0x4020
.L0daebe20:
    # Line 3339
    lw	$a2,256($a0)
    andi	$v1,$a2,0x4000
    beqz	$v1,.L0daec090
    andi	$a1,$a2,0xe00
.L0daebe30:
    # Line 3360
    lw	$a1,68($a3)
    li	$at,6410
    bne	$a1,$at,.L0daebef0
    sd	$s7,80($sp)
    lui	$a3,0x4000
    addiu	$s7,$sp,0
    lui	$a4,0xbfff
    ori	$a4,$a4,0xffff
    lw	$a0,4($s7)
    and	$at,$a3,$a0
    beqz	$at,.L0daebe70
    lw	$a2,0($s7)
    # Line 3375
    and	$a0,$a4,$a0
    sw	$a0,4($s7)
    # Line 3374
    or	$a2,$a3,$a2
    sw	$a2,0($s7)
.L0daebe70:
    # Line 3379
    sw	$a0,0($s7)
    # Line 3360
    lw	$a0,12($s7)
    # Line 3380
    sw	$a2,4($s7)
    # Line 3360
    and	$v0,$a3,$a0
    beqz	$v0,.L0daebe98
    lw	$a2,8($s7)
    # Line 3375
    and	$a0,$a4,$a0
    sw	$a0,12($s7)
    # Line 3374
    or	$a2,$a3,$a2
    sw	$a2,8($s7)
.L0daebe98:
    # Line 3379
    sw	$a0,8($s7)
    # Line 3360
    lw	$a0,20($s7)
    # Line 3380
    sw	$a2,12($s7)
    # Line 3360
    and	$v1,$a3,$a0
    beqz	$v1,.L0daebec0
    lw	$a2,16($s7)
    # Line 3375
    and	$a0,$a4,$a0
    sw	$a0,20($s7)
    # Line 3374
    or	$a2,$a3,$a2
    sw	$a2,16($s7)
.L0daebec0:
    # Line 3379
    sw	$a0,16($s7)
    # Line 3360
    lw	$a0,28($s7)
    # Line 3380
    sw	$a2,20($s7)
    # Line 3360
    and	$a1,$a3,$a0
    beqz	$a1,.L0daebee8
    lw	$a2,24($s7)
    # Line 3375
    and	$a0,$a4,$a0
    sw	$a0,28($s7)
    # Line 3374
    or	$a2,$a3,$a2
    sw	$a2,24($s7)
.L0daebee8:
    # Line 3380
    sw	$a2,28($s7)
    # Line 3379
    sw	$a0,24($s7)
.L0daebef0:
    sd	$ra,72($sp)
    # Line 3370
    addiu	$s7,$sp,0
    # Line 3384
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,0($s7)
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,4($s7)
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,8($s7)
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,12($s7)
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,16($s7)
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,20($s7)
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,24($s7)
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,28($s7)
    # Line 3386
    li	$a1,-1
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    la	$a0,SYMBOL_LOCATION
    ld	$s7,80($sp)
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,424($a0)
    # Line 3388
    ld	$ra,72($sp)
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0daebfa0:
    # Line 3316
    lui	$v0,0x4008
    # Line 3309
    sll	$a1,$a4,0x18
    lui	$at,0x300
    and	$a1,$a1,$at
    # Line 3316
    or	$v0,$a1,$v0
    sw	$v0,28($sp)
    # Line 3315
    lui	$at,0x8
    ori	$at,$at,0x800
    or	$at,$a1,$at
    sw	$at,24($sp)
    # Line 3314
    lui	$v1,0x8
    ori	$v1,$v1,0x1000
    or	$v1,$a1,$v1
    sw	$v1,20($sp)
    # Line 3313
    lui	$v0,0x8
    ori	$v0,$v0,0x1800
    or	$v0,$a1,$v0
    sw	$v0,16($sp)
    # Line 3312
    lui	$at,0x8
    ori	$at,$at,0x2000
    or	$at,$a1,$at
    sw	$at,12($sp)
    # Line 3311
    lui	$v1,0x8
    ori	$v1,$v1,0x2800
    or	$v1,$a1,$v1
    sw	$v1,8($sp)
    # Line 3310
    lui	$v0,0x8
    ori	$v0,$v0,0x3000
    or	$v0,$a1,$v0
    sw	$v0,4($sp)
    # Line 3309
    lui	$at,0x8
    ori	$at,$at,0x3800
    or	$a1,$a1,$at
    # Line 3317
    b	.L0daebe20
    # Line 3309
    sw	$a1,0($sp)
    # Line 3323
    lui	$a2,0x4010
.L0daec030:
    # Line 3320
    sll	$v0,$a4,0x18
    lui	$v1,0x300
    and	$v0,$v0,$v1
    # Line 3323
    or	$a2,$v0,$a2
    # Line 3327
    sw	$a2,28($sp)
    # Line 3322
    lui	$a1,0x10
    ori	$a1,$a1,0x1000
    or	$a1,$v0,$a1
    # Line 3326
    sw	$a1,24($sp)
    # Line 3321
    lui	$v1,0x10
    ori	$v1,$v1,0x2000
    or	$v1,$v0,$v1
    # Line 3325
    sw	$v1,20($sp)
    # Line 3320
    lui	$at,0x10
    ori	$at,$at,0x3000
    or	$v0,$v0,$at
    # Line 3324
    sw	$v0,16($sp)
    # Line 3323
    sw	$a2,12($sp)
    # Line 3322
    sw	$a1,8($sp)
    # Line 3321
    sw	$v1,4($sp)
    # Line 3328
    b	.L0daebe20
    # Line 3320
    sw	$v0,0($sp)
.L0daec088:
    b	.L0daebde4
    # Line 3303
    li	$a4,2
.L0daec090:
    # Line 3339
    beqz	$a1,.L0daec1a8
    nop
    # Line 3348
    lw	$a2,40($a0)
    li	$a6,6406
    beq	$a2,$a6,.L0daec104
    # Line 3347
    li	$a6,1
    # Line 3348
    li	$at,6405
    beq	$a2,$at,.L0daec108
    li	$v0,6404
    beq	$a2,$v0,.L0daec110
    # Line 3354
    move	$a2,$a6
    # Line 3348
    b	.L0daebe30
    addiu	$a5,$sp,0
.L0daec0c4:
    # Line 3330
    sll	$v1,$a4,0x18
    lui	$at,0x300
    and	$v1,$v1,$at
    # Line 3331
    or	$a1,$v1,$a1
    # Line 3337
    sw	$a1,28($sp)
    # Line 3330
    lui	$at,0x20
    ori	$at,$at,0x2000
    or	$v1,$v1,$at
    # Line 3336
    sw	$v1,24($sp)
    # Line 3335
    sw	$a1,20($sp)
    # Line 3334
    sw	$v1,16($sp)
    # Line 3333
    sw	$a1,12($sp)
    # Line 3332
    sw	$v1,8($sp)
    # Line 3331
    sw	$a1,4($sp)
    b	.L0daebe20
    # Line 3330
    sw	$v1,0($sp)
.L0daec104:
    # Line 3351
    li	$a6,2
.L0daec108:
    # Line 3353
    addiu	$a6,$a6,1
    # Line 3354
    move	$a2,$a6
.L0daec110:
    addiu	$a5,$sp,0
    addiu	$a0,$sp,32
    addiu	$a4,$a6,8
.L0daec11c:
    # Line 3355
    addiu	$a0,$a0,4
    # Line 3356
    sra	$v1,$a2,0x1f
    xor	$v0,$a2,$v1
    subu	$v0,$v0,$v1
    andi	$v0,$v0,0x7
    sra	$v1,$a2,0x1f
    xor	$v0,$v0,$v1
    subu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a5
    lw	$v0,0($v0)
    # Line 3355
    addiu	$a2,$a2,1
    bne	$a2,$a4,.L0daec11c
    # Line 3356
    sw	$v0,-4($a0)
    sd	$s7,80($sp)
    # Line 3355
    addiu	$s7,$sp,0
    addiu	$a0,$sp,32
    # Line 3358
    lw	$v1,28($a0)
    lw	$v0,24($a0)
    sw	$v1,28($s7)
    sw	$v0,24($s7)
    lw	$at,20($a0)
    lw	$a1,16($a0)
    lw	$v1,12($a0)
    sw	$at,20($s7)
    sw	$a1,16($s7)
    sw	$v1,12($s7)
    lw	$v0,8($a0)
    lw	$at,4($a0)
    lw	$a1,0($a0)
    sw	$v0,8($s7)
    sw	$at,4($s7)
    sw	$a1,0($s7)
    b	.L0daebe30
    ld	$s7,80($sp)
.L0daec1a8:
    b	.L0daebe30
    # Line 3360
    addiu	$a5,$sp,0
.end __glMgrInitPackingState

# Function: __glMgrInitMaskState
# Declared: Line 3393 (Source lines: 3395-3411)
# Address: 0x0daec1b0 - 0x0daec2f0 (Size: 320 bytes, Frame: 208)
.globl __glMgrInitMaskState
.ent __glMgrInitMaskState
__glMgrInitMaskState:
    # Line 3400
    move	$a1,$zero
    # Line 3395
    addiu	$sp,$sp,-80
    sd	$s8,16($sp)
    # Line 3396
    lw	$s8,0($a2)
    sd	$a3,32($sp)
    sd	$s5,8($sp)
    sd	$gp,24($sp)
    # Line 3395
    lui	$at,0x11
    addiu	$at,$at,9448
    addu	$gp,$t9,$at
    # Line 3400
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    # Line 3395
    move	$s5,$a0
    sd	$ra,0($sp)
    # Line 3400
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,204($a0)
    # Line 3401
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,208($s5)
    # Line 3402
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,220($s5)
    # Line 3403
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,212($s5)
    # Line 3404
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sd	$s7,40($sp)
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,216($s5)
    # Line 3405
    lw	$v0,1432($s5)
    lw	$v0,0($v0)
    li	$s7,24
    div	$zero,$v0,$s7
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    mflo	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$s7,$zero,0x7
    # Line 3406
    lw	$v1,1432($s5)
    lw	$v1,4($v1)
    div	$zero,$v1,$s7
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    mflo	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$s7,$zero,0x7
    # Line 3407
    lw	$a0,1432($s5)
    lw	$a0,0($a0)
    div	$zero,$a0,$s7
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    mfhi	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$s7,$zero,0x7
    # Line 3408
    lw	$a1,1432($s5)
    lw	$a1,4($a1)
    div	$zero,$a1,$s7
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    teq	$s7,$zero,0x7
    mfhi	$a0
    jal	__glMgrInitPixelStateCRAM
    li	$a1,1
    # Line 3409
    move	$a0,$s8
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    ld	$s7,40($sp)
    jal	__glMgrInitPixelStateCRAM
    ld	$s5,8($sp)
    # Line 3410
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    ld	$a0,32($sp)
    li	$a1,-1
    jal	__glMgrInitPixelStateCRAM
    ld	$s8,16($sp)
    # Line 3411
    ld	$ra,0($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrInitMaskState

# Function: __glMgrInitB2IState
# Declared: Line 3415 (Source lines: 3417-3436)
# Address: 0x0daec2f0 - 0x0daec484 (Size: 404 bytes, Frame: 208)
.globl __glMgrInitB2IState
.ent __glMgrInitB2IState
__glMgrInitB2IState:
    # Line 3423
    move	$a1,$zero
    # Line 3417
    addiu	$sp,$sp,-80
    sd	$s1,0($sp)
    # Line 3419
    lw	$s1,4($a2)
    sd	$s8,32($sp)
    # Line 3418
    lw	$s8,0($a2)
    sd	$a3,24($sp)
    sd	$s5,16($sp)
    sd	$gp,40($sp)
    # Line 3417
    lui	$at,0x11
    addiu	$at,$at,9128
    addu	$gp,$t9,$at
    # Line 3423
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    # Line 3417
    move	$s5,$a0
    sd	$ra,8($sp)
    # Line 3423
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,204($a0)
    # Line 3424
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,208($s5)
    # Line 3425
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,220($s5)
    # Line 3426
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,212($s5)
    # Line 3427
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,216($s5)
    # Line 3428
    lw	$a2,1432($s5)
    lw	$a2,0($a2)
    move	$a1,$zero
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    addu	$a2,$a2,$s1
    sra	$a0,$a2,0x3
    srl	$a0,$a0,0x1c
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    sra	$a0,$a0,0x4
    # Line 3429
    lw	$a2,1432($s5)
    lw	$a2,4($a2)
    li	$a1,1
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a0,$a2,0x3
    srl	$a0,$a0,0x1c
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    sra	$a0,$a0,0x4
    # Line 3430
    lw	$a2,1432($s5)
    lw	$a2,0($a2)
    move	$a1,$zero
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    addu	$a2,$a2,$s1
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    sra	$a2,$a2,0x1f
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0xf
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    subu	$a0,$a0,$a2
    # Line 3431
    lw	$a2,1432($s5)
    lw	$a2,4($a2)
    li	$a1,1
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    sra	$a2,$a2,0x1f
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0xf
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    subu	$a0,$a0,$a2
    # Line 3432
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s8
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    ld	$s5,16($sp)
    # Line 3433
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    sll	$a0,$s1,0x2
    jal	__glMgrInitPixelStateCRAM
    ld	$s8,24($sp)
    # Line 3434
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$zero
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    ld	$s1,0($sp)
    # Line 3435
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s8
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-1
    # Line 3436
    ld	$ra,8($sp)
    ld	$gp,40($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrInitB2IState

# Function: __glMgrInitF2IState
# Declared: Line 3440 (Source lines: 3442-3460)
# Address: 0x0daec484 - 0x0daec5c8 (Size: 324 bytes, Frame: 208)
.globl __glMgrInitF2IState
.ent __glMgrInitF2IState
__glMgrInitF2IState:
    # Line 3449
    move	$a1,$zero
    # Line 3442
    addiu	$sp,$sp,-80
    sd	$s8,24($sp)
    move	$s8,$a3
    sd	$s5,16($sp)
    move	$s5,$a0
    # Line 3449
    lw	$a0,204($a0)
    sd	$gp,32($sp)
    # Line 3442
    lui	$at,0x11
    addiu	$at,$at,8724
    addu	$gp,$t9,$at
    # Line 3449
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    # Line 3447
    lwc1	$f0,0($a2)
    sd	$ra,8($sp)
    # Line 3449
    jal	__glMgrInitPixelStateCRAM
    # Line 3447
    swc1	$f0,0($sp)
    # Line 3450
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,208($s5)
    # Line 3451
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,220($s5)
    # Line 3452
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,212($s5)
    # Line 3453
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sd	$s7,40($sp)
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,216($s5)
    # Line 3454
    lw	$v0,1432($s5)
    lw	$v0,0($v0)
    li	$s7,24
    div	$zero,$v0,$s7
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    mflo	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$s7,$zero,0x7
    # Line 3455
    lw	$v1,1432($s5)
    lw	$v1,4($v1)
    div	$zero,$v1,$s7
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    mflo	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$s7,$zero,0x7
    # Line 3456
    lw	$a0,1432($s5)
    lw	$a0,0($a0)
    div	$zero,$a0,$s7
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    mfhi	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$s7,$zero,0x7
    # Line 3457
    lw	$a1,1432($s5)
    lw	$a1,4($a1)
    div	$zero,$a1,$s7
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    teq	$s7,$zero,0x7
    mfhi	$a0
    jal	__glMgrInitPixelStateCRAM
    li	$a1,1
    # Line 3458
    li	$a1,-2
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    lw	$a0,0($sp)
    ld	$s7,40($sp)
    jal	__glMgrInitPixelStateCRAM
    ld	$s5,16($sp)
    # Line 3459
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s8
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-1
    # Line 3460
    ld	$ra,8($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrInitF2IState

# Function: __glMgrInitB2FState
# Declared: Line 3464 (Source lines: 3466-3485)
# Address: 0x0daec5c8 - 0x0daec75c (Size: 404 bytes, Frame: 208)
.globl __glMgrInitB2FState
.ent __glMgrInitB2FState
__glMgrInitB2FState:
    # Line 3472
    move	$a1,$zero
    # Line 3466
    addiu	$sp,$sp,-80
    sd	$s1,0($sp)
    # Line 3468
    lw	$s1,4($a2)
    sd	$s8,32($sp)
    # Line 3467
    lw	$s8,0($a2)
    sd	$a3,24($sp)
    sd	$s5,16($sp)
    sd	$gp,40($sp)
    # Line 3466
    lui	$at,0x11
    addiu	$at,$at,8400
    addu	$gp,$t9,$at
    # Line 3472
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    # Line 3466
    move	$s5,$a0
    sd	$ra,8($sp)
    # Line 3472
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,204($a0)
    # Line 3473
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,208($s5)
    # Line 3474
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,220($s5)
    # Line 3475
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,212($s5)
    # Line 3476
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,216($s5)
    # Line 3477
    lw	$a2,1432($s5)
    lw	$a2,0($a2)
    move	$a1,$zero
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    addu	$a2,$a2,$s1
    sra	$a0,$a2,0x3
    srl	$a0,$a0,0x1c
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    sra	$a0,$a0,0x4
    # Line 3478
    lw	$a2,1432($s5)
    lw	$a2,4($a2)
    li	$a1,1
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a0,$a2,0x3
    srl	$a0,$a0,0x1c
    addu	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    sra	$a0,$a0,0x4
    # Line 3479
    lw	$a2,1432($s5)
    lw	$a2,0($a2)
    move	$a1,$zero
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    addu	$a2,$a2,$s1
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    sra	$a2,$a2,0x1f
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0xf
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    subu	$a0,$a0,$a2
    # Line 3480
    lw	$a2,1432($s5)
    lw	$a2,4($a2)
    li	$a1,1
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sra	$a3,$a2,0x1f
    xor	$a0,$a2,$a3
    sra	$a2,$a2,0x1f
    subu	$a0,$a0,$a3
    andi	$a0,$a0,0xf
    xor	$a0,$a0,$a2
    jal	__glMgrInitPixelStateCRAM
    subu	$a0,$a0,$a2
    # Line 3481
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s8
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    ld	$s5,16($sp)
    # Line 3482
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    sll	$a0,$s1,0x2
    jal	__glMgrInitPixelStateCRAM
    ld	$s8,24($sp)
    # Line 3483
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$zero
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    ld	$s1,0($sp)
    # Line 3484
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s8
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-1
    # Line 3485
    ld	$ra,8($sp)
    ld	$gp,40($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrInitB2FState

# Function: __glMgrInitDepthFinalState
# Declared: Line 3489 (Source lines: 3491-3509)
# Address: 0x0daec75c - 0x0daec8a0 (Size: 324 bytes, Frame: 208)
.globl __glMgrInitDepthFinalState
.ent __glMgrInitDepthFinalState
__glMgrInitDepthFinalState:
    # Line 3498
    move	$a1,$zero
    # Line 3491
    addiu	$sp,$sp,-80
    sd	$s8,24($sp)
    move	$s8,$a3
    sd	$s5,16($sp)
    move	$s5,$a0
    # Line 3498
    lw	$a0,204($a0)
    sd	$gp,32($sp)
    # Line 3491
    lui	$at,0x11
    addiu	$at,$at,7996
    addu	$gp,$t9,$at
    # Line 3498
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    # Line 3496
    lwc1	$f0,0($a2)
    sd	$ra,8($sp)
    # Line 3498
    jal	__glMgrInitPixelStateCRAM
    # Line 3496
    swc1	$f0,0($sp)
    # Line 3499
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,208($s5)
    # Line 3500
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,220($s5)
    # Line 3501
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,212($s5)
    # Line 3502
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sd	$s7,40($sp)
    li	$a1,1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,216($s5)
    # Line 3503
    lw	$v0,1432($s5)
    lw	$v0,0($v0)
    li	$s7,24
    div	$zero,$v0,$s7
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    mflo	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$s7,$zero,0x7
    # Line 3504
    lw	$v1,1432($s5)
    lw	$v1,4($v1)
    div	$zero,$v1,$s7
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,1
    mflo	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$s7,$zero,0x7
    # Line 3505
    lw	$a0,1432($s5)
    lw	$a0,0($a0)
    div	$zero,$a0,$s7
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a1,$zero
    mfhi	$a0
    jal	__glMgrInitPixelStateCRAM
    teq	$s7,$zero,0x7
    # Line 3506
    lw	$a1,1432($s5)
    lw	$a1,4($a1)
    div	$zero,$a1,$s7
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    teq	$s7,$zero,0x7
    mfhi	$a0
    jal	__glMgrInitPixelStateCRAM
    li	$a1,1
    # Line 3507
    li	$a1,-2
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    lw	$a0,0($sp)
    ld	$s7,40($sp)
    jal	__glMgrInitPixelStateCRAM
    ld	$s5,16($sp)
    # Line 3508
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$s8
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-1
    # Line 3509
    ld	$ra,8($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrInitDepthFinalState

# Function: __glMgrInitScaleBiasFill
# Declared: Line 3513 (Source lines: 3518-3522)
# Address: 0x0daec8a0 - 0x0daec904 (Size: 100 bytes, Frame: 0)
.globl __glMgrInitScaleBiasFill
.ent __glMgrInitScaleBiasFill
__glMgrInitScaleBiasFill:
    # Line 3518
    lwc1	$f1,0($a1)
    lwc1	$f0,0($a0)
    mul.s	$f0,$f0,$f1
    lwc1	$f4,16($a1)
    add.s	$f4,$f4,$f0
    swc1	$f4,0($a0)
    # Line 3519
    lwc1	$f2,4($a0)
    lwc1	$f3,4($a1)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,20($a1)
    add.s	$f1,$f1,$f2
    swc1	$f1,4($a0)
    # Line 3520
    lwc1	$f4,8($a0)
    lwc1	$f0,8($a1)
    mul.s	$f4,$f4,$f0
    lwc1	$f3,24($a1)
    add.s	$f3,$f3,$f4
    swc1	$f3,8($a0)
    # Line 3521
    lwc1	$f1,12($a0)
    lwc1	$f2,12($a1)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,28($a1)
    add.s	$f0,$f0,$f1
    # Line 3522
    jr	$ra
    # Line 3521
    swc1	$f0,12($a0)
.end __glMgrInitScaleBiasFill

# Function: __glMgrInitClampFill
# Declared: Line 3526 (Source lines: 3527-3534)
# Address: 0x0daec904 - 0x0daecaa4 (Size: 416 bytes, Frame: 0)
.globl __glMgrInitClampFill
.ent __glMgrInitClampFill
__glMgrInitClampFill:
    # Line 3527
    lwc1	$f6,0($a0)
    lui	$v0,0x11
    addiu	$v0,$v0,7572
    addu	$at,$t9,$v0
    ldc1	$f5,_lit8_3ff0000000000000
    cvt.d.s	$f6,$f6
    c.lt.d	$f6,$f5
    li	$a4,1
    bc1fl	.L0daec92c
    move	$a4,$zero
.L0daec92c:
    # Line 3530
    dmtc1	$zero,$f4
    # Line 3527
    beqz	$a4,.L0daeca64
    # Line 3530
    mov.d	$f7,$f6
.L0daec938:
    c.lt.d	$f4,$f7
    nop
    bc1f	.L0daec954
    mov.d	$f7,$f4
    beqz	$a4,.L0daeca8c
    mov.d	$f8,$f6
.L0daec950:
    mov.d	$f7,$f8
.L0daec954:
    lwc1	$f0,0($a1)
    lwc1	$f6,4($a0)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f7
    cvt.d.s	$f6,$f6
    c.lt.d	$f6,$f5
    li	$a4,1
    bc1fl	.L0daec978
    move	$a4,$zero
.L0daec978:
    cvt.s.d	$f0,$f0
    # Line 3531
    mov.d	$f7,$f6
    # Line 3530
    beqz	$a4,.L0daeca6c
    swc1	$f0,0($a0)
.L0daec988:
    # Line 3531
    c.lt.d	$f4,$f7
    nop
    bc1f	.L0daec9a4
    mov.d	$f7,$f4
    beqz	$a4,.L0daeca94
    mov.d	$f8,$f6
.L0daec9a0:
    mov.d	$f7,$f8
.L0daec9a4:
    lwc1	$f1,4($a1)
    lwc1	$f6,8($a0)
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f7
    cvt.d.s	$f6,$f6
    c.lt.d	$f6,$f5
    li	$a4,1
    bc1fl	.L0daec9c8
    move	$a4,$zero
.L0daec9c8:
    cvt.s.d	$f1,$f1
    # Line 3532
    mov.d	$f7,$f6
    # Line 3531
    beqz	$a4,.L0daeca74
    swc1	$f1,4($a0)
.L0daec9d8:
    # Line 3532
    c.lt.d	$f4,$f7
    nop
    bc1f	.L0daec9f4
    mov.d	$f7,$f4
    beqz	$a4,.L0daeca9c
    mov.d	$f8,$f6
.L0daec9f0:
    mov.d	$f7,$f8
.L0daec9f4:
    lwc1	$f2,8($a1)
    lwc1	$f6,12($a0)
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f7
    cvt.d.s	$f6,$f6
    c.lt.d	$f6,$f5
    li	$a4,1
    bc1fl	.L0daeca18
    move	$a4,$zero
.L0daeca18:
    cvt.s.d	$f2,$f2
    # Line 3533
    mov.d	$f7,$f6
    # Line 3532
    beqz	$a4,.L0daeca7c
    swc1	$f2,8($a0)
.L0daeca28:
    # Line 3533
    c.lt.d	$f4,$f7
    nop
    bc1f	.L0daeca5c
    nop
    beqz	$a4,.L0daeca84
    mov.d	$f4,$f6
.L0daeca40:
    mov.d	$f5,$f4
.L0daeca44:
    lwc1	$f3,12($a1)
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f5
    cvt.s.d	$f3,$f3
    # Line 3534
    jr	$ra
    # Line 3533
    swc1	$f3,12($a0)
.L0daeca5c:
    b	.L0daeca44
    mov.d	$f5,$f4
.L0daeca64:
    b	.L0daec938
    # Line 3530
    mov.d	$f7,$f5
.L0daeca6c:
    b	.L0daec988
    # Line 3531
    mov.d	$f7,$f5
.L0daeca74:
    b	.L0daec9d8
    # Line 3532
    mov.d	$f7,$f5
.L0daeca7c:
    b	.L0daeca28
    # Line 3533
    mov.d	$f7,$f5
.L0daeca84:
    b	.L0daeca40
    mov.d	$f4,$f5
.L0daeca8c:
    b	.L0daec950
    # Line 3530
    mov.d	$f8,$f5
.L0daeca94:
    b	.L0daec9a0
    # Line 3531
    mov.d	$f8,$f5
.L0daeca9c:
    b	.L0daec9f0
    # Line 3532
    mov.d	$f8,$f5
.end __glMgrInitClampFill

# Function: __glMgrInitLUTRGBFill
# Declared: Line 3538 (Source lines: 3541-3555)
# Address: 0x0daecaa4 - 0x0daecb2c (Size: 136 bytes, Frame: 0)
.globl __glMgrInitLUTRGBFill
.ent __glMgrInitLUTRGBFill
__glMgrInitLUTRGBFill:
    # Line 3551
    lwc1	$f4,0($a0)
    trunc.w.s	$f4,$f4
    # Line 3541
    lw	$at,__glCurrentContext
    # Line 3552
    lwc1	$f3,4($a0)
    # Line 3551
    mfc1	$a1,$f4
    lw	$v1,1032($at)
    # Line 3552
    trunc.w.s	$f3,$f3
    # Line 3551
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a1
    lwc1	$f4,0($v1)
    # Line 3553
    lwc1	$f2,8($a0)
    # Line 3551
    swc1	$f4,0($a0)
    # Line 3552
    mfc1	$v0,$f3
    lw	$a1,1044($at)
    # Line 3553
    trunc.w.s	$f2,$f2
    # Line 3552
    sll	$v0,$v0,0x2
    addu	$a1,$a1,$v0
    lwc1	$f3,0($a1)
    # Line 3554
    lwc1	$f1,12($a0)
    # Line 3552
    swc1	$f3,4($a0)
    # Line 3553
    mfc1	$v1,$f2
    lw	$v0,1056($at)
    # Line 3554
    trunc.w.s	$f1,$f1
    # Line 3553
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lwc1	$f2,0($v0)
    swc1	$f2,8($a0)
    # Line 3554
    mfc1	$v0,$f1
    lw	$at,1068($at)
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f0,0($at)
    # Line 3555
    jr	$ra
    # Line 3554
    swc1	$f0,12($a0)
.end __glMgrInitLUTRGBFill

# Function: __glMgrInitColorTableFill
# Declared: Line 3559 (Source lines: 3562-3612)
# Address: 0x0daecb2c - 0x0daece18 (Size: 748 bytes, Frame: 0)
.globl __glMgrInitColorTableFill
.ent __glMgrInitColorTableFill
__glMgrInitColorTableFill:
    # Line 3562
    lw	$a4,0($a1)
    # Line 3578
    li	$v1,6410
    li	$a1,6406
    # Line 3564
    andi	$at,$a4,0x1000
    beqz	$at,.L0daecb9c
    lw	$a3,__glCurrentContext
    # Line 3567
    li	$a4,0x838c
    addu	$a4,$a3,$a4
.L0daecb4c:
    # Line 3573
    lw	$a3,0($a4)
    # Line 3578
    li	$a5,6408
    lw	$a2,12($a4)
    # Line 3576
    addiu	$a7,$a3,12
    # Line 3575
    addiu	$a6,$a3,8
    # Line 3578
    beq	$a2,$a5,.L0daecc20
    # Line 3574
    addiu	$a5,$a3,4
    # Line 3578
    li	$at,6407
    beq	$a2,$at,.L0daecca4
    li	$v0,6409
    beql	$a2,$v0,.L0daecd14
    # Line 3592
    lwc1	$f3,0($a0)
    # Line 3578
    beql	$a2,$v1,.L0daecd68
    # Line 3599
    lwc1	$f1,8($a0)
    # Line 3578
    beq	$a2,$a1,.L0daecde8
    li	$at,0x8049
    beql	$a2,$at,.L0daecbb0
    # Line 3609
    lwc1	$f3,12($a0)
    # Line 3612
    jr	$ra
    nop
.L0daecb9c:
    # Line 3567
    andi	$v0,$a4,0x2000
    beqz	$v0,.L0daece0c
    # Line 3569
    li	$a4,0x8404
    b	.L0daecb4c
    addu	$a4,$a3,$a4
.L0daecbb0:
    # Line 3609
    trunc.w.s	$f3,$f3
    # Line 3606
    lwc1	$f0,0($a0)
    # Line 3607
    lwc1	$f2,4($a0)
    # Line 3606
    trunc.w.s	$f0,$f0
    # Line 3608
    lwc1	$f1,8($a0)
    # Line 3607
    trunc.w.s	$f2,$f2
    # Line 3606
    mfc1	$a1,$f0
    # Line 3608
    trunc.w.s	$f1,$f1
    # Line 3607
    mfc1	$v1,$f2
    # Line 3606
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a3
    lwc1	$f0,0($a1)
    # Line 3608
    mfc1	$v0,$f1
    # Line 3607
    sll	$v1,$v1,0x2
    # Line 3606
    swc1	$f0,0($a0)
    # Line 3607
    addu	$v1,$v1,$a3
    lwc1	$f2,0($v1)
    # Line 3609
    mfc1	$at,$f3
    # Line 3608
    sll	$v0,$v0,0x2
    # Line 3607
    swc1	$f2,4($a0)
    # Line 3608
    addu	$v0,$v0,$a3
    lwc1	$f1,0($v0)
    # Line 3609
    sll	$at,$at,0x2
    # Line 3608
    swc1	$f1,8($a0)
    # Line 3609
    addu	$at,$at,$a3
    lwc1	$f0,0($at)
    # Line 3612
    jr	$ra
    # Line 3609
    swc1	$f0,12($a0)
.L0daecc20:
    # Line 3583
    lwc1	$f1,8($a0)
    trunc.w.s	$f1,$f1
    # Line 3584
    lwc1	$f3,12($a0)
    trunc.w.s	$f3,$f3
    # Line 3581
    lwc1	$f2,0($a0)
    # Line 3582
    lwc1	$f0,4($a0)
    # Line 3581
    trunc.w.s	$f2,$f2
    # Line 3582
    trunc.w.s	$f0,$f0
    # Line 3583
    mfc1	$v0,$f1
    # Line 3581
    mfc1	$a1,$f2
    # Line 3584
    mfc1	$at,$f3
    # Line 3582
    mfc1	$v1,$f0
    # Line 3581
    sll	$a1,$a1,0x2
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a3
    lwc1	$f3,0($a1)
    # Line 3582
    sll	$v1,$v1,0x2
    sll	$v1,$v1,0x2
    # Line 3581
    swc1	$f3,0($a0)
    # Line 3582
    addu	$v1,$v1,$a5
    lwc1	$f2,0($v1)
    # Line 3583
    sll	$v0,$v0,0x2
    sll	$v0,$v0,0x2
    # Line 3582
    swc1	$f2,4($a0)
    # Line 3583
    addu	$v0,$v0,$a6
    lwc1	$f1,0($v0)
    # Line 3584
    sll	$at,$at,0x2
    sll	$at,$at,0x2
    # Line 3583
    swc1	$f1,8($a0)
    # Line 3584
    addu	$at,$at,$a7
    lwc1	$f0,0($at)
    # Line 3612
    jr	$ra
    # Line 3584
    swc1	$f0,12($a0)
.L0daecca4:
    # Line 3589
    lwc1	$f1,8($a0)
    trunc.w.s	$f1,$f1
    # Line 3588
    lwc1	$f0,4($a0)
    trunc.w.s	$f0,$f0
    # Line 3587
    lwc1	$f3,0($a0)
    trunc.w.s	$f3,$f3
    # Line 3589
    mfc1	$a4,$f1
    # Line 3588
    mfc1	$v0,$f0
    # Line 3587
    mfc1	$a1,$f3
    # Line 3589
    sll	$a2,$a4,0x2
    # Line 3588
    sll	$at,$v0,0x2
    # Line 3587
    sll	$v1,$a1,0x2
    subu	$v1,$v1,$a1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a3
    lwc1	$f2,0($v1)
    # Line 3588
    subu	$at,$at,$v0
    sll	$at,$at,0x2
    # Line 3587
    swc1	$f2,0($a0)
    # Line 3588
    addu	$at,$at,$a5
    lwc1	$f1,0($at)
    # Line 3589
    subu	$a2,$a2,$a4
    sll	$a2,$a2,0x2
    # Line 3588
    swc1	$f1,4($a0)
    # Line 3589
    addu	$a2,$a2,$a6
    lwc1	$f0,0($a2)
    # Line 3612
    jr	$ra
    # Line 3589
    swc1	$f0,8($a0)
.L0daecd14:
    # Line 3593
    lwc1	$f2,4($a0)
    # Line 3592
    trunc.w.s	$f3,$f3
    # Line 3594
    lwc1	$f1,8($a0)
    # Line 3593
    trunc.w.s	$f2,$f2
    # Line 3592
    mfc1	$v1,$f3
    # Line 3594
    trunc.w.s	$f1,$f1
    # Line 3593
    mfc1	$v0,$f2
    # Line 3592
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a3
    lwc1	$f0,0($v1)
    # Line 3594
    mfc1	$at,$f1
    # Line 3593
    sll	$v0,$v0,0x2
    # Line 3592
    swc1	$f0,0($a0)
    # Line 3593
    addu	$v0,$v0,$a3
    lwc1	$f3,0($v0)
    # Line 3594
    sll	$at,$at,0x2
    # Line 3593
    swc1	$f3,4($a0)
    # Line 3594
    addu	$at,$at,$a3
    lwc1	$f2,0($at)
    # Line 3612
    jr	$ra
    # Line 3594
    swc1	$f2,8($a0)
.L0daecd68:
    # Line 3599
    trunc.w.s	$f1,$f1
    # Line 3600
    lwc1	$f3,12($a0)
    trunc.w.s	$f3,$f3
    # Line 3597
    lwc1	$f2,0($a0)
    # Line 3598
    lwc1	$f0,4($a0)
    # Line 3597
    trunc.w.s	$f2,$f2
    # Line 3598
    trunc.w.s	$f0,$f0
    # Line 3599
    mfc1	$at,$f1
    # Line 3597
    mfc1	$v1,$f2
    # Line 3600
    mfc1	$a1,$f3
    # Line 3598
    mfc1	$v0,$f0
    # Line 3597
    sll	$v1,$v1,0x1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a3
    lwc1	$f3,0($v1)
    # Line 3598
    sll	$v0,$v0,0x1
    sll	$v0,$v0,0x2
    # Line 3597
    swc1	$f3,0($a0)
    # Line 3598
    addu	$v0,$v0,$a3
    lwc1	$f2,0($v0)
    # Line 3599
    sll	$at,$at,0x1
    sll	$at,$at,0x2
    # Line 3598
    swc1	$f2,4($a0)
    # Line 3599
    addu	$at,$at,$a3
    lwc1	$f1,0($at)
    # Line 3600
    sll	$a1,$a1,0x1
    sll	$a1,$a1,0x2
    # Line 3599
    swc1	$f1,8($a0)
    # Line 3600
    addu	$a1,$a1,$a5
    lwc1	$f0,0($a1)
    # Line 3612
    jr	$ra
    # Line 3600
    swc1	$f0,12($a0)
.L0daecde8:
    # Line 3603
    lwc1	$f1,12($a0)
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    nop
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a3
    lwc1	$f0,0($a1)
    # Line 3612
    jr	$ra
    # Line 3603
    swc1	$f0,12($a0)
.L0daece0c:
    # Line 3571
    li	$a4,0x8440
    b	.L0daecb4c
    addu	$a4,$a3,$a4
.end __glMgrInitColorTableFill

# Function: __glMgrInitConvolve2DFill
# Declared: Line 3616 (Source lines: 3618-3624)
# Address: 0x0daece18 - 0x0daece68 (Size: 80 bytes, Frame: 0)
.globl __glMgrInitConvolve2DFill
.ent __glMgrInitConvolve2DFill
__glMgrInitConvolve2DFill:
    # Line 3618
    lw	$at,__glCurrentContext
    # Line 3620
    lwc1	$f2,0($a0)
    lui	$v0,0x1
    addu	$at,$at,$v0
    lwc1	$f1,-32024($at)
    mul.s	$f1,$f1,$f2
    swc1	$f1,0($a0)
    # Line 3621
    lwc1	$f0,4($a0)
    lwc1	$f4,-32020($at)
    mul.s	$f4,$f4,$f0
    swc1	$f4,4($a0)
    # Line 3622
    lwc1	$f3,8($a0)
    lwc1	$f2,-32016($at)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a0)
    # Line 3623
    lwc1	$f1,12($a0)
    lwc1	$f0,-32012($at)
    mul.s	$f0,$f0,$f1
    # Line 3624
    jr	$ra
    # Line 3623
    swc1	$f0,12($a0)
.end __glMgrInitConvolve2DFill

# Function: __glMgrInitConvolve1DFill
# Declared: Line 3628 (Source lines: 3630-3636)
# Address: 0x0daece68 - 0x0daeceb8 (Size: 80 bytes, Frame: 0)
.globl __glMgrInitConvolve1DFill
.ent __glMgrInitConvolve1DFill
__glMgrInitConvolve1DFill:
    # Line 3630
    lw	$at,__glCurrentContext
    # Line 3632
    lwc1	$f2,0($a0)
    lui	$v0,0x1
    addu	$at,$at,$v0
    lwc1	$f1,-32104($at)
    mul.s	$f1,$f1,$f2
    swc1	$f1,0($a0)
    # Line 3633
    lwc1	$f0,4($a0)
    lwc1	$f4,-32100($at)
    mul.s	$f4,$f4,$f0
    swc1	$f4,4($a0)
    # Line 3634
    lwc1	$f3,8($a0)
    lwc1	$f2,-32096($at)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a0)
    # Line 3635
    lwc1	$f1,12($a0)
    lwc1	$f0,-32092($at)
    mul.s	$f0,$f0,$f1
    # Line 3636
    jr	$ra
    # Line 3635
    swc1	$f0,12($a0)
.end __glMgrInitConvolve1DFill

# Function: __glMgrInitSeparable2DFill
# Declared: Line 3640 (Source lines: 3642-3648)
# Address: 0x0daeceb8 - 0x0daecf08 (Size: 80 bytes, Frame: 0)
.globl __glMgrInitSeparable2DFill
.ent __glMgrInitSeparable2DFill
__glMgrInitSeparable2DFill:
    # Line 3642
    lw	$at,__glCurrentContext
    # Line 3644
    lwc1	$f2,0($a0)
    lui	$v0,0x1
    addu	$at,$at,$v0
    lwc1	$f1,-31944($at)
    mul.s	$f1,$f1,$f2
    swc1	$f1,0($a0)
    # Line 3645
    lwc1	$f0,4($a0)
    lwc1	$f4,-31940($at)
    mul.s	$f4,$f4,$f0
    swc1	$f4,4($a0)
    # Line 3646
    lwc1	$f3,8($a0)
    lwc1	$f2,-31936($at)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a0)
    # Line 3647
    lwc1	$f1,12($a0)
    lwc1	$f0,-31932($at)
    mul.s	$f0,$f0,$f1
    # Line 3648
    jr	$ra
    # Line 3647
    swc1	$f0,12($a0)
.end __glMgrInitSeparable2DFill

# Function: __glMgrBuildFastPathChain
# Declared: Line 3651 (Source lines: 3652-3679)
# Address: 0x0daecf08 - 0x0daecff0 (Size: 232 bytes, Frame: 48)
.globl __glMgrBuildFastPathChain
.ent __glMgrBuildFastPathChain
__glMgrBuildFastPathChain:
    # Line 3660
    li	$v0,6656
    # Line 3652
    addiu	$sp,$sp,-48
    sd	$s7,8($sp)
    move	$s7,$a0
    sd	$gp,16($sp)
    sd	$s5,0($sp)
    # Line 3653
    lw	$s5,__glCurrentContext
    # Line 3658
    li	$a2,1
    # Line 3657
    li	$a1,-1
    sw	$a1,32168($s5)
    # Line 3658
    sb	$a2,32172($s5)
    # Line 3659
    sb	$a2,32173($s5)
    # Line 3660
    sb	$a2,32174($s5)
    # Line 3652
    lui	$v1,0x11
    # Line 3660
    lw	$at,52($a0)
    # Line 3652
    addiu	$v1,$v1,6032
    # Line 3660
    beq	$at,$v0,.L0daecfb4
    # Line 3652
    addu	$gp,$t9,$v1
    sd	$ra,24($sp)
    # Line 3670
    sb	$zero,32174($s5)
.L0daecf58:
    # Line 3673
    addiu	$a5,$s5,32168
    move	$a3,$zero
    la	$a2,__glMgrInitMaskState
    li	$a1,230
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    addiu	$a0,$s7,428
    bal __glMgrAddModule
    lw	$a4,428($a4)
    # Line 3676
    addiu	$a5,$s5,32172
    move	$a4,$zero
    move	$a3,$zero
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a2,__glMgrInitCleanupState
    li	$a1,234
    bal __glMgrAddModule
    addiu	$a0,$s7,456
    ld	$gp,16($sp)
    # Line 3679
    ld	$ra,24($sp)
    ld	$s5,0($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daecfb4:
    # Line 3665
    li	$a1,-14337
    # Line 3664
    lui	$v0,0x1
    addu	$v0,$s5,$v0
    lw	$at,-26652($v0)
    ori	$at,$at,0xf
    sw	$at,-26652($v0)
    # Line 3665
    lbu	$v1,104($s7)
    sd	$ra,24($sp)
    and	$at,$at,$a1
    andi	$v1,$v1,0x7
    sll	$v1,$v1,0xb
    or	$at,$at,$v1
    sw	$at,-26652($v0)
    # Line 3666
    b	.L0daecf58
    sb	$a2,32174($s5)
.end __glMgrBuildFastPathChain

# Function: __glMgrBuildColorChainHead
# Declared: Line 3682 (Source lines: 3683-3831)
# Address: 0x0daecff0 - 0x0daed534 (Size: 1348 bytes, Frame: 208)
.globl __glMgrBuildColorChainHead
.ent __glMgrBuildColorChainHead
__glMgrBuildColorChainHead:
    # Line 3688
    li	$v1,-1
    # Line 3683
    addiu	$sp,$sp,-80
    sd	$s1,8($sp)
    # Line 3684
    lw	$s1,__glCurrentContext
    # Line 3691
    li	$v0,4096
    # Line 3693
    lui	$a2,0x80
    # Line 3696
    sw	$a2,32272($s1)
    # Line 3695
    sw	$zero,32268($s1)
    # Line 3694
    sw	$zero,32264($s1)
    # Line 3693
    sw	$a2,32260($s1)
    # Line 3692
    sw	$zero,32256($s1)
    # Line 3691
    sw	$v0,32252($s1)
    # Line 3689
    sw	$zero,32180($s1)
    # Line 3688
    sw	$v1,32176($s1)
    sd	$gp,16($sp)
    # Line 3683
    lui	$a1,0x11
    addiu	$a1,$a1,5800
    addu	$gp,$t9,$a1
    # Line 3697
    lwc1	$f0,_lit_3f800000
    # Line 3698
    mtc1	$zero,$f1
    # Line 3690
    lwc1	$f2,_lit_37800080
    # Line 3701
    swc1	$f0,32292($s1)
    # Line 3700
    swc1	$f1,32288($s1)
    # Line 3699
    swc1	$f1,32284($s1)
    # Line 3698
    swc1	$f1,32280($s1)
    # Line 3697
    swc1	$f0,32276($s1)
    # Line 3690
    swc1	$f2,32248($s1)
    # Line 3701
    lw	$at,424($a0)
    sd	$s3,40($sp)
    sd	$s0,0($sp)
    and	$at,$at,$a2
    beqz	$at,.L0daed0a8
    # Line 3683
    move	$s0,$a0
    # Line 3705
    move	$a5,$zero
    move	$a3,$zero
    la	$a2,__glMgrInitUnpackState
    li	$a1,236
    addiu	$a0,$s0,428
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$s3,SYMBOL_LOCATION
    sd	$ra,56($sp)
    bal __glMgrAddModule
    lw	$a4,844($s3)
    lui	$a2,0x80
    b	.L0daed0ac
    ld	$ra,56($sp)
.L0daed0a8:
    la	$s3,SYMBOL_LOCATION
.L0daed0ac:
    lw	$a3,52($s0)
    li	$at,5125
    beq	$a3,$at,.L0daed47c
.L0daed0b8:
    # Line 3710
    li	$v0,5126
    beq	$a3,$v0,.L0daed378
    lw	$a0,424($s0)
    and	$v1,$a2,$a0
    beqz	$v1,.L0daed4ec
    # Line 3716
    addiu	$a5,$s0,108
.L0daed0d0:
    # Line 3721
    andi	$a1,$a0,0x2
.L0daed0d4:
    beqz	$a1,.L0daed0fc
    andi	$at,$a0,0x1
    beqz	$at,.L0daed0fc
    dmtc1	$zero,$f0
    lwc1	$f3,112($s0)
    cvt.d.s	$f3,$f3
    c.eq.d	$f3,$f0
    nop
    bc1t	.L0daed1b4
    nop
.L0daed0fc:
    # Line 3725
    lw	$v0,__glCurrentContext
    # Line 3727
    lwc1	$f6,616($v0)
    swc1	$f6,32184($s1)
    # Line 3728
    lwc1	$f4,620($v0)
    swc1	$f4,32188($s1)
    # Line 3729
    lwc1	$f7,624($v0)
    swc1	$f7,32192($s1)
    # Line 3730
    lwc1	$f2,628($v0)
    swc1	$f2,32196($s1)
    # Line 3732
    lwc1	$f9,112($s0)
    mul.s	$f9,$f9,$f6
    lwc1	$f8,636($v0)
    add.s	$f8,$f8,$f9
    swc1	$f8,32200($s1)
    # Line 3734
    lwc1	$f9,112($s0)
    mul.s	$f9,$f9,$f4
    lwc1	$f5,640($v0)
    add.s	$f5,$f5,$f9
    swc1	$f5,32204($s1)
    # Line 3736
    lwc1	$f0,112($s0)
    mul.s	$f0,$f0,$f7
    lwc1	$f9,644($v0)
    add.s	$f9,$f9,$f0
    swc1	$f9,32208($s1)
    # Line 3738
    lwc1	$f1,112($s0)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,648($v0)
    add.s	$f0,$f0,$f1
    swc1	$f0,32212($s1)
    lw	$t1,256($s0)
    beqzl	$t1,.L0daed434
    lw	$v1,252($s0)
    sd	$ra,56($sp)
    sd	$s2,48($sp)
    # Line 3753
    addiu	$s2,$s0,428
.L0daed188:
    # Line 3760
    move	$a0,$s2
.L0daed18c:
    addiu	$a5,$s1,32184
    lw	$a4,436($s3)
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a3,__glMgrInitScaleBiasFill
    la	$a2,__glMgrInitScaleBiasState
    bal __glMgrAddModule
    li	$a1,232
    lw	$a0,424($s0)
    ld	$s2,48($sp)
    ld	$ra,56($sp)
.L0daed1b4:
    andi	$v1,$a0,0x10
    beqz	$v1,.L0daed380
    # Line 3795
    la	$a3,__glMgrInitClampFill
    sd	$s2,48($sp)
    # Line 3769
    lw	$t1,256($s0)
    lw	$a7,__glCurrentContext
    beqz	$t1,.L0daed3ec
    addiu	$a7,$a7,952
    # Line 3774
    addiu	$s2,$s0,428
    sd	$ra,56($sp)
.L0daed1dc:
    # Line 3780
    lw	$t3,72($a7)
    addiu	$t3,$t3,-1
    mtc1	$t3,$f13
    nop
    cvt.s.w	$f13,$f13
    swc1	$f13,32216($s1)
    # Line 3782
    lw	$t2,84($a7)
    addiu	$t2,$t2,-1
    mtc1	$t2,$f12
    nop
    cvt.s.w	$f12,$f12
    swc1	$f12,32220($s1)
    # Line 3784
    lw	$t1,96($a7)
    addiu	$t1,$t1,-1
    mtc1	$t1,$f11
    nop
    cvt.s.w	$f11,$f11
    swc1	$f11,32224($s1)
    # Line 3786
    lw	$t0,108($a7)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f10
    # Line 3789
    addiu	$a5,$s1,32216
    # Line 3786
    cvt.s.w	$f10,$f10
    # Line 3789
    li	$a1,222
    move	$a0,$s2
    # Line 3774
    la	$a3,__glMgrInitClampFill
    # Line 3789
    # lw $t9, -30072($gp) # &__glMgrAddModule
    # Line 3774
    la	$a2,__glMgrInitClampState
    # Line 3786
    swc1	$f10,32228($s1)
    # Line 3789
    bal __glMgrAddModule
    lw	$a4,756($s3)
    # Line 3792
    move	$a0,$s2
    addiu	$a5,$s1,32264
    lw	$a4,448($s3)
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a3,__glMgrInitLUTRGBFill
    la	$a2,__glMgrInitLUTRGB
    bal __glMgrAddModule
    li	$a1,219
    la	$a2,__glMgrInitI2FState
    # Line 3795
    move	$a0,$s2
    addiu	$a5,$s1,32248
    # lw $t9, -30072($gp) # &__glMgrAddModule
    lw	$a4,740($s3)
    move	$a3,$zero
    bal __glMgrAddModule
    li	$a1,229
    la	$t0,__glMgrInitClampState
    la	$a3,__glMgrInitClampFill
    lw	$a0,424($s0)
    ld	$s2,48($sp)
    ld	$ra,56($sp)
.L0daed2ac:
    lui	$at,0x200
    and	$at,$a0,$at
    beqzl	$at,.L0daed364
    ld	$gp,16($sp)
    lw	$t1,256($s0)
    lui	$a0,0x1
    beqz	$t1,.L0daed388
    # Line 3808
    addu	$a7,$a0,$s1
    sd	$ra,56($sp)
    sd	$s2,48($sp)
    addiu	$s2,$s0,428
.L0daed2d8:
    # Line 3814
    lw	$v0,-31844($a7)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f14
    # Line 3820
    addiu	$a5,$s1,32232
    # Line 3814
    cvt.s.w	$f14,$f14
    # Line 3820
    move	$a2,$t0
    li	$a1,222
    move	$a0,$s2
    ld	$s0,0($sp)
    # lw $t9, -30072($gp) # &__glMgrAddModule
    # Line 3814
    swc1	$f14,32232($s1)
    swc1	$f14,32236($s1)
    swc1	$f14,32240($s1)
    swc1	$f14,32244($s1)
    # Line 3820
    bal __glMgrAddModule
    lw	$a4,760($s3)
    # Line 3823
    move	$a0,$s2
    addiu	$a5,$s1,32252
    lw	$a4,456($s3)
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a3,__glMgrInitColorTableFill
    la	$a2,__glMgrInitColorTable
    bal __glMgrAddModule
    li	$a1,219
    la	$a2,__glMgrInitI2FState
    # Line 3826
    move	$a0,$s2
    addiu	$a5,$s1,32248
    # lw $t9, -30072($gp) # &__glMgrAddModule
    lw	$a4,744($s3)
    move	$a3,$zero
    bal __glMgrAddModule
    li	$a1,229
    ld	$s2,48($sp)
    ld	$ra,56($sp)
    ld	$gp,16($sp)
.L0daed364:
    # Line 3831
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daed378:
    b	.L0daed0d4
    # Line 3721
    andi	$a1,$a0,0x2
.L0daed380:
    b	.L0daed2ac
    # Line 3795
    la	$t0,__glMgrInitClampState
.L0daed388:
    lw	$v1,252($s0)
    sd	$s2,48($sp)
    andi	$v1,$v1,0x10
    beqz	$v1,.L0daed518
    addu	$a7,$a0,$s1
    # Line 3804
    lw	$a1,-31840($a7)
    sd	$ra,56($sp)
    andi	$a1,$a1,0x10
    bnez	$a1,.L0daed2d8
    addiu	$s2,$s0,428
    sd	$a7,32($sp)
    la	$a2,__glMgrInitExpandState
    # Line 3808
    addiu	$a5,$s1,32276
    move	$a3,$zero
    li	$a1,226
    move	$a0,$s2
    # lw $t9, -30072($gp) # &__glMgrAddModule
    # Line 3807
    ori	$a4,$t1,0x4002
    sw	$a4,256($s0)
    # Line 3808
    bal __glMgrAddModule
    lw	$a4,416($s3)
    la	$t0,__glMgrInitClampState
    la	$a3,__glMgrInitClampFill
    b	.L0daed2d8
    ld	$a7,32($sp)
.L0daed3ec:
    # Line 3769
    lw	$at,252($s0)
    sd	$ra,56($sp)
    andi	$at,$at,0x10
    beqz	$at,.L0daed1dc
    addiu	$s2,$s0,428
    sd	$a7,24($sp)
    la	$a2,__glMgrInitExpandState
    # Line 3774
    addiu	$a5,$s1,32276
    move	$a3,$zero
    li	$a1,226
    move	$a0,$s2
    # lw $t9, -30072($gp) # &__glMgrAddModule
    # Line 3773
    ori	$v0,$t1,0x4001
    sw	$v0,256($s0)
    # Line 3774
    bal __glMgrAddModule
    lw	$a4,416($s3)
    b	.L0daed1dc
    ld	$a7,24($sp)
.L0daed434:
    # Line 3738
    andi	$v1,$v1,0x10
    beqz	$v1,.L0daed524
    # Line 3743
    c.eq.s	$f6,$f4
    nop
    bc1f	.L0daed4b0
    c.eq.s	$f4,$f7
    nop
    bc1f	.L0daed4b0
    c.eq.s	$f8,$f5
    nop
    bc1f	.L0daed4b0
    c.eq.s	$f5,$f9
    nop
    bc1f	.L0daed4b0
    sd	$s2,48($sp)
    sd	$ra,56($sp)
    b	.L0daed188
    addiu	$s2,$s0,428
.L0daed47c:
    # Line 3710
    addiu	$a5,$s1,32176
    lw	$a4,432($s3)
    move	$a3,$zero
    la	$a2,__glMgrInitShiftAdd
    # lw $t9, -30072($gp) # &__glMgrAddModule
    li	$a1,233
    sd	$ra,56($sp)
    bal __glMgrAddModule
    addiu	$a0,$s0,428
    lui	$a2,0x80
    lw	$a3,52($s0)
    b	.L0daed0b8
    ld	$ra,56($sp)
.L0daed4b0:
    # Line 3753
    addiu	$a5,$s1,32276
    move	$a3,$zero
    li	$a1,226
    sd	$ra,56($sp)
    sd	$s2,48($sp)
    addiu	$s2,$s0,428
    move	$a0,$s2
    # lw $t9, -30072($gp) # &__glMgrAddModule
    # Line 3752
    ori	$a2,$t1,0xc000
    sw	$a2,256($s0)
    # Line 3743
    la	$a2,__glMgrInitExpandState
    # Line 3753
    bal __glMgrAddModule
    lw	$a4,416($s3)
    b	.L0daed18c
    # Line 3760
    move	$a0,$s2
.L0daed4ec:
    # Line 3716
    lw	$a4,736($s3)
    move	$a3,$zero
    li	$a1,229
    # lw $t9, -30072($gp) # &__glMgrAddModule
    # Line 3715
    la	$a2,__glMgrInitI2FState
    sd	$ra,56($sp)
    # Line 3716
    bal __glMgrAddModule
    addiu	$a0,$s0,428
    lw	$a0,424($s0)
    b	.L0daed0d0
    ld	$ra,56($sp)
.L0daed518:
    sd	$ra,56($sp)
    b	.L0daed2d8
    # Line 3808
    addiu	$s2,$s0,428
.L0daed524:
    sd	$ra,56($sp)
    sd	$s2,48($sp)
    b	.L0daed188
    # Line 3753
    addiu	$s2,$s0,428
.end __glMgrBuildColorChainHead

# Function: __glMgrBuildColorChainTail
# Declared: Line 3836 (Source lines: 3837-4254)
# Address: 0x0daed534 - 0x0daee190 (Size: 3164 bytes, Frame: 240)
.globl __glMgrBuildColorChainTail
.ent __glMgrBuildColorChainTail
__glMgrBuildColorChainTail:
    # Line 3882
    li	$at,0x827c
    # Line 3849
    li	$a4,8192
    # Line 3852
    li	$a1,16384
    # Line 3837
    addiu	$sp,$sp,-112
    sd	$s1,48($sp)
    # Line 3841
    lw	$s1,__glCurrentContext
    # Line 3851
    lui	$v1,0x80
    # Line 3860
    li	$v0,1
    # Line 3865
    sb	$zero,32493($s1)
    # Line 3864
    sb	$zero,32492($s1)
    # Line 3863
    sb	$v0,32491($s1)
    # Line 3862
    sb	$zero,32490($s1)
    # Line 3861
    sb	$v0,32489($s1)
    # Line 3860
    sb	$v0,32488($s1)
    # Line 3854
    sw	$v1,32436($s1)
    # Line 3853
    sw	$zero,32432($s1)
    # Line 3852
    sw	$a1,32428($s1)
    # Line 3851
    sw	$v1,32376($s1)
    # Line 3850
    sw	$zero,32372($s1)
    # Line 3849
    sw	$a4,32368($s1)
    sd	$gp,32($sp)
    sd	$s0,24($sp)
    # Line 3837
    lui	$s0,0x11
    addiu	$s0,$s0,4452
    addu	$gp,$t9,$s0
    # Line 3856
    mtc1	$zero,$f0
    # Line 3848
    lwc1	$f2,_lit_37800080
    # Line 3855
    lwc1	$f1,_lit_3f800000
    # Line 3871
    swc1	$f0,32300($s1)
    swc1	$f0,32304($s1)
    swc1	$f0,32308($s1)
    swc1	$f0,32312($s1)
    # Line 3859
    swc1	$f1,32472($s1)
    # Line 3858
    swc1	$f0,32468($s1)
    # Line 3857
    swc1	$f0,32464($s1)
    # Line 3856
    swc1	$f0,32460($s1)
    # Line 3855
    swc1	$f1,32456($s1)
    # Line 3848
    swc1	$f2,32296($s1)
    sd	$s4,40($sp)
    # Line 3882
    lw	$s4,1104($a0)
    # Line 3837
    move	$s0,$a0
    # Line 3882
    addu	$at,$s1,$at
    bne	$at,$s4,.L0daed618
    # Line 3842
    move	$a1,$zero
    # Line 3887
    la	$v0,__glMgrInitConvolve1DFill
    # Line 3886
    la	$at,__glMgrInitConvolve1DState
    # Line 3887
    sw	$v0,4($sp)
    # Line 3886
    sw	$at,0($sp)
.L0daed5f4:
    # Line 3898
    beqz	$s4,.L0daed734
    lw	$a3,248($s0)
    lw	$a5,20($s4)
    lw	$a2,16($s4)
    slt	$v1,$a5,$a2
    beqz	$v1,.L0daed63c
    # Line 3903
    move	$a0,$a5
    b	.L0daed63c
    move	$a0,$a2
.L0daed618:
    # Line 3887
    li	$a4,0x82cc
    addu	$a4,$s1,$a4
    bne	$a4,$s4,.L0daeda2c
    # Line 3892
    li	$at,0x831c
    la	$v0,__glMgrInitConvolve2DFill
    # Line 3891
    la	$at,__glMgrInitConvolve2DState
    # Line 3892
    sw	$v0,4($sp)
    b	.L0daed5f4
    # Line 3891
    sw	$at,0($sp)
.L0daed63c:
    # Line 3906
    lw	$a7,256($s0)
    sd	$s2,64($sp)
    ori	$v1,$a3,0x8
    beqz	$a7,.L0daedda8
    sw	$v1,248($s0)
    sd	$s3,72($sp)
    # Line 3912
    la	$s3,SYMBOL_LOCATION
    addiu	$s2,$s0,428
.L0daed65c:
    beqzl	$a7,.L0daeddc4
    # Line 3918
    lw	$a3,40($s0)
.L0daed664:
    # Line 3924
    beqz	$a1,.L0daed698
    # Line 3932
    slti	$v1,$a0,4
    # Line 3924
    lw	$a4,8($s0)
    beqz	$a4,.L0daed698
    # Line 3932
    slti	$v1,$a0,4
    # Line 3931
    lw	$at,0($s0)
    beqz	$at,.L0daed694
    slti	$v0,$a0,4
    beqz	$v0,.L0daede30
    # Line 3933
    slti	$v1,$a0,6
    b	.L0daed6a0
    li	$s4,224
.L0daed694:
    # Line 3932
    slti	$v1,$a0,4
.L0daed698:
    beqz	$v1,.L0daedb84
    # Line 3941
    li	$s4,224
.L0daed6a0:
    # Line 3940
    lw	$a0,432($s0)
    lw	$a0,16($a0)
    li	$a4,229
    beq	$a0,$a4,.L0daede6c
    # Line 3952
    li	$a4,236
    bne	$a0,$a4,.L0daed6d4
    # Line 3962
    move	$a0,$s2
    # Line 3957
    lw	$v0,1212($s3)
    lw	$at,844($s3)
    sd	$ra,56($sp)
    addu	$at,$at,$v0
    b	.L0daed704
    sw	$at,12($sp)
.L0daed6d4:
    # Line 3962
    move	$a5,$zero
    lw	$a4,1156($s3)
    move	$a3,$zero
    # lw $t9, -30068($gp) # &__glMgrInsertModule
    la	$a2,__glMgrInitCopyFifoLineState
    sd	$ra,56($sp)
    bal __glMgrInsertModule
    li	$a1,288
    # Line 3965
    lw	$v1,1156($s3)
    lw	$a4,1160($s3)
    addu	$v1,$v1,$a4
    sw	$v1,12($sp)
.L0daed704:
    # Line 3971
    addiu	$a5,$s1,32300
    lw	$a3,4($sp)
    lw	$a2,0($sp)
    move	$a1,$s4
    # Line 3970
    lwc1	$f3,12($sp)
    # Line 3971
    # lw $t9, -30072($gp) # &__glMgrAddModule
    move	$a0,$s2
    # Line 3970
    swc1	$f3,32316($s1)
    # Line 3971
    bal __glMgrAddModule
    lw	$a4,808($s3)
    b	.L0daed750
    ld	$ra,56($sp)
.L0daed734:
    sd	$s3,72($sp)
    # Line 3977
    la	$s3,SYMBOL_LOCATION
    sd	$s2,64($sp)
    addiu	$s2,$s0,428
    li	$at,-9
    and	$at,$a3,$at
    sw	$at,248($s0)
.L0daed750:
    lw	$a0,424($s0)
    lui	$v0,0x10
    and	$v0,$a0,$v0
    beqz	$v0,.L0daedc14
    # Line 3980
    lui	$v1,0x8
    and	$v1,$a0,$v1
    beqz	$v1,.L0daedefc
    lui	$a4,0x4
    and	$a4,$a0,$a4
    beqz	$a4,.L0daedf00
    # Line 3984
    lui	$v1,0x1
.L0daed77c:
    # Line 3993
    lui	$at,0x400
.L0daed780:
    and	$at,$a0,$at
    beqz	$at,.L0daedc54
    nop
    lw	$a7,256($s0)
    beqz	$a7,.L0daedc5c
    lui	$a0,0x1
    sd	$ra,56($sp)
    # Line 4006
    addu	$s4,$a0,$s1
.L0daed7a0:
    # Line 4012
    lw	$v0,-31724($s4)
.L0daed7a4:
    addiu	$v0,$v0,-1
    mtc1	$v0,$f4
    # Line 4018
    addiu	$a5,$s1,32352
    # Line 4012
    cvt.s.w	$f4,$f4
    # Line 4018
    li	$a1,222
    move	$a0,$s2
    # Line 4006
    la	$a3,__glMgrInitClampFill
    la	$a2,__glMgrInitClampState
    # Line 4018
    # lw $t9, -30072($gp) # &__glMgrAddModule
    # Line 4012
    swc1	$f4,32352($s1)
    swc1	$f4,32356($s1)
    swc1	$f4,32360($s1)
    swc1	$f4,32364($s1)
    # Line 4018
    bal __glMgrAddModule
    lw	$a4,764($s3)
    # Line 4021
    addiu	$a5,$s1,32368
    lw	$a4,732($s3)
    li	$a1,219
    # lw $t9, -30072($gp) # &__glMgrAddModule
    move	$a0,$s2
    la	$a3,__glMgrInitColorTableFill
    bal __glMgrAddModule
    la	$a2,__glMgrInitColorTable
    # Line 4024
    addiu	$a5,$s1,32296
    lw	$a4,748($s3)
    move	$a3,$zero
    li	$a1,229
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$s4,__glMgrInitI2FState
    move	$a0,$s2
    bal __glMgrAddModule
    move	$a2,$s4
    lw	$a0,424($s0)
    ld	$ra,56($sp)
.L0daed82c:
    andi	$v1,$a0,0x100
    beqz	$v1,.L0daedc1c
.L0daed834:
    # Line 4048
    andi	$a4,$a0,0x400
    beqz	$a4,.L0daede84
    andi	$at,$a0,0x200
    beqz	$at,.L0daede84
.L0daed844:
    # Line 4060
    lui	$v0,0x800
    and	$v0,$a0,$v0
    beqz	$v0,.L0daed8f8
    # Line 4091
    andi	$a4,$a0,0x40
    # Line 4060
    lw	$a7,256($s0)
    beqz	$a7,.L0daedcb0
    lui	$a0,0x1
    sd	$ra,56($sp)
    # Line 4073
    addu	$s4,$a0,$s1
.L0daed868:
    # Line 4079
    lw	$v1,-31664($s4)
.L0daed86c:
    addiu	$v1,$v1,-1
    mtc1	$v1,$f5
    la	$a3,__glMgrInitClampFill
    cvt.s.w	$f5,$f5
    la	$a2,__glMgrInitClampState
    # Line 4085
    addiu	$a5,$s1,32412
    li	$a1,222
    move	$a0,$s2
    # lw $t9, -30072($gp) # &__glMgrAddModule
    # Line 4079
    swc1	$f5,32412($s1)
    swc1	$f5,32416($s1)
    swc1	$f5,32420($s1)
    swc1	$f5,32424($s1)
    # Line 4085
    bal __glMgrAddModule
    lw	$a4,768($s3)
    la	$s4,__glMgrInitI2FState
    la	$a2,__glMgrInitColorTable
    la	$a3,__glMgrInitColorTableFill
    # Line 4088
    move	$a0,$s2
    # lw $t9, -30072($gp) # &__glMgrAddModule
    addiu	$a5,$s1,32428
    lw	$a4,872($s3)
    bal __glMgrAddModule
    li	$a1,219
    # Line 4091
    move	$a0,$s2
    addiu	$a5,$s1,32296
    lw	$a4,752($s3)
    # lw $t9, -30072($gp) # &__glMgrAddModule
    move	$a3,$zero
    move	$a2,$s4
    bal __glMgrAddModule
    li	$a1,229
    lw	$a0,424($s0)
    ld	$ra,56($sp)
    andi	$a4,$a0,0x40
.L0daed8f8:
    beqz	$a4,.L0daed998
    # Line 4120
    andi	$v1,$a0,0x80
    # Line 4091
    lw	$a7,256($s0)
    beqz	$a7,.L0daedd04
    lui	$a0,0x1
    sd	$ra,56($sp)
    # Line 4104
    addu	$s4,$a0,$s1
.L0daed914:
    # Line 4110
    move	$a0,$s2
.L0daed918:
    move	$a5,$zero
    lw	$a4,464($s3)
    # lw $t9, -30072($gp) # &__glMgrAddModule
    move	$a3,$zero
    la	$a2,__glMgrInitHistogramState
    bal __glMgrAddModule
    li	$a1,228
    lbu	$at,-32272($s4)
    beqz	$at,.L0daed990
    ld	$ra,56($sp)
    # Line 4116
    addiu	$a5,$s1,32491
    move	$a4,$zero
    move	$a3,$zero
    la	$a2,__glMgrInitCleanupState
    li	$a1,234
    # lw $t9, -30072($gp) # &__glMgrAddModule
    addiu	$a0,$s0,456
    ld	$s2,64($sp)
    bal __glMgrAddModule
    ld	$s3,72($sp)
    ld	$gp,32($sp)
    # Line 4120
    ld	$s1,48($sp)
    # Line 4119
    lw	$v0,248($s0)
    # Line 4120
    ld	$s4,40($sp)
    ld	$ra,56($sp)
    # Line 4119
    ori	$v0,$v0,0x1
    sw	$v0,248($s0)
    # Line 4120
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0daed990:
    lw	$a0,424($s0)
    andi	$v1,$a0,0x80
.L0daed998:
    beqz	$v1,.L0daeda4c
    sd	$ra,56($sp)
    lw	$a7,256($s0)
    beqz	$a7,.L0daedd68
    sd	$ra,56($sp)
.L0daed9ac:
    # Line 4136
    move	$a0,$s2
.L0daed9b0:
    move	$a5,$zero
    lw	$a4,468($s3)
    # lw $t9, -30072($gp) # &__glMgrAddModule
    move	$a3,$zero
    la	$a2,__glMgrInitMinMaxState
    bal __glMgrAddModule
    li	$a1,231
    li	$a4,0x820d
    addu	$a4,$a4,$s1
    lbu	$a4,0($a4)
    beqz	$a4,.L0daeda4c
    # Line 4141
    addiu	$a5,$s1,32491
    move	$a4,$zero
    move	$a3,$zero
    la	$a2,__glMgrInitCleanupState
    li	$a1,234
    # lw $t9, -30072($gp) # &__glMgrAddModule
    addiu	$a0,$s0,456
    ld	$s3,72($sp)
    bal __glMgrAddModule
    ld	$s2,64($sp)
    ld	$gp,32($sp)
    # Line 4144
    lw	$s1,248($s0)
    # Line 4145
    ld	$s4,40($sp)
    ld	$ra,56($sp)
    # Line 4144
    ori	$s1,$s1,0x1
    sw	$s1,248($s0)
    # Line 4145
    ld	$s0,24($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0daeda2c:
    # Line 3892
    addu	$at,$s1,$at
    bne	$at,$s4,.L0daed5f4
    # Line 3898
    la	$v1,__glMgrInitSeparable2DFill
    # Line 3896
    li	$a1,1
    # Line 3897
    la	$v0,__glMgrInitSeparable2DState
    # Line 3898
    sw	$v1,4($sp)
    b	.L0daed5f4
    # Line 3897
    sw	$v0,0($sp)
.L0daeda4c:
    # Line 4150
    lwc1	$f10,116($s0)
    swc1	$f10,32440($s1)
    # Line 4151
    lwc1	$f9,116($s0)
    swc1	$f9,32444($s1)
    # Line 4152
    lwc1	$f8,116($s0)
    swc1	$f8,32448($s1)
    la	$a2,__glMgrInitClampState
    # Line 4153
    lwc1	$f7,116($s0)
    la	$a3,__glMgrInitClampFill
    # Line 4156
    addiu	$a5,$s1,32440
    # Line 4153
    swc1	$f7,32452($s1)
    # Line 4156
    li	$a1,222
    # Line 4154
    lwc1	$f6,116($s0)
    # Line 4156
    # lw $t9, -30072($gp) # &__glMgrAddModule
    move	$a0,$s2
    # Line 4154
    swc1	$f6,32472($s1)
    # Line 4156
    bal __glMgrAddModule
    lw	$a4,772($s3)
    lw	$a7,256($s0)
    beqz	$a7,.L0daedf8c
    ld	$ra,56($sp)
    # Line 4180
    li	$s4,6408
.L0daedaa4:
    andi	$a4,$a7,0xe00
.L0daedaa8:
    beqz	$a4,.L0daedad4
    la	$a2,__glMgrInitExpandState
    # Line 4184
    move	$a0,$s2
    addiu	$a5,$s1,32456
    # lw $t9, -30072($gp) # &__glMgrAddModule
    lw	$a4,416($s3)
    move	$a3,$zero
    bal __glMgrAddModule
    li	$a1,226
    lw	$a7,256($s0)
    ld	$ra,56($sp)
.L0daedad4:
    # Line 4189
    beqzl	$a7,.L0daedfc8
    lw	$a3,40($s0)
.L0daedadc:
    lw	$at,44($s0)
.L0daedae0:
    beq	$at,$s4,.L0daedb3c
    lw	$a0,424($s0)
    lui	$v0,0x100
    and	$v0,$a0,$v0
    beqz	$v0,.L0daedb40
    # Line 4195
    lui	$s4,0x100
    # Line 4191
    move	$a0,$s2
    move	$a5,$zero
    lw	$a4,848($s3)
    # lw $t9, -30072($gp) # &__glMgrAddModule
    move	$a3,$zero
    la	$a2,__glMgrInitCompressState
    bal __glMgrAddModule
    li	$a1,237
    # Line 4194
    lw	$v1,248($s0)
    lw	$a7,256($s0)
    ld	$ra,56($sp)
    ori	$v1,$v1,0x10
    beqz	$a7,.L0daedb38
    sw	$v1,248($s0)
    # Line 4196
    ori	$a4,$a7,0x4000
    sw	$a4,256($s0)
.L0daedb38:
    lw	$a0,424($s0)
.L0daedb3c:
    # Line 4195
    lui	$s4,0x100
.L0daedb40:
    lui	$at,0x1100
    and	$at,$a0,$at
    beqz	$at,.L0daedfe0
    ori	$s4,$s4,0x800
    # Line 4227
    la	$a2,__glMgrInitZoomState
.L0daedb54:
    and	$v0,$s4,$a0
    bnez	$v0,.L0daede40
    # Line 4251
    addiu	$a5,$s1,32488
    # Line 4233
    lw	$v1,__glCurrentContext
    mtc1	$zero,$f0
    lwc1	$f5,724($v1)
    c.lt.s	$f5,$f0
    nop
    bc1f	.L0daedb98
    # Line 4235
    mov.s	$f4,$f5
    b	.L0daedb98
    neg.s	$f4,$f5
.L0daedb84:
    # Line 3941
    slti	$a4,$a0,6
    beqz	$a4,.L0daedd58
    # Line 3943
    slti	$a4,$a0,8
    b	.L0daed6a0
    li	$s4,238
.L0daedb98:
    # Line 4235
    ldc1	$f2,_lit8_3ff0000000000000
    cvt.d.s	$f3,$f4
    div.d	$f2,$f2,$f3
    mtc1	$zero,$f1
    cvt.s.d	$f2,$f2
    # Line 4236
    swc1	$f1,32480($s1)
    # Line 4235
    swc1	$f2,32476($s1)
    # Line 4236
    lw	$at,424($s0)
    lui	$v0,0x1000
    and	$at,$at,$v0
    beqz	$at,.L0daedbe4
    # Line 4240
    move	$a0,$s2
    addiu	$a5,$s1,32476
    # lw $t9, -30072($gp) # &__glMgrAddModule
    lw	$a4,580($s3)
    move	$a3,$zero
    bal __glMgrAddModule
    li	$a1,235
    ld	$ra,56($sp)
.L0daedbe4:
    lw	$a7,256($s0)
    ld	$s2,64($sp)
    beqz	$a7,.L0daedbfc
    ld	$s3,72($sp)
    # Line 4247
    ori	$v1,$a7,0x4000
    sw	$v1,256($s0)
.L0daedbfc:
    ld	$gp,32($sp)
    # Line 4254
    ld	$s0,24($sp)
    ld	$s1,48($sp)
    ld	$s4,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0daedc14:
    b	.L0daed780
    # Line 3993
    lui	$at,0x400
.L0daedc1c:
    # Line 4024
    lw	$a7,256($s0)
    beqz	$a7,.L0daee02c
    sd	$ra,56($sp)
.L0daedc28:
    # Line 4042
    move	$a0,$s2
.L0daedc2c:
    move	$a5,$zero
    lw	$a4,476($s3)
    # lw $t9, -30072($gp) # &__glMgrAddModule
    move	$a3,$zero
    la	$a2,__glMgrInitColorMatrixState
    bal __glMgrAddModule
    li	$a1,223
    lw	$a0,424($s0)
    b	.L0daed834
    ld	$ra,56($sp)
.L0daedc54:
    b	.L0daed82c
    # Line 4024
    la	$s4,__glMgrInitI2FState
.L0daedc5c:
    # Line 3993
    lw	$a4,252($s0)
    sd	$ra,56($sp)
    andi	$a4,$a4,0x10
    beqz	$a4,.L0daed7a0
    addu	$s4,$a0,$s1
    # Line 4002
    lw	$at,-31720($s4)
    andi	$at,$at,0x10
    bnez	$at,.L0daed7a0
    sd	$ra,56($sp)
    la	$a2,__glMgrInitExpandState
    # Line 4006
    addiu	$a5,$s1,32456
    move	$a3,$zero
    li	$a1,226
    move	$a0,$s2
    # lw $t9, -30072($gp) # &__glMgrAddModule
    # Line 4005
    ori	$v0,$a7,0x4004
    sw	$v0,256($s0)
    # Line 4006
    bal __glMgrAddModule
    lw	$a4,416($s3)
    b	.L0daed7a4
    # Line 4012
    lw	$v0,-31724($s4)
.L0daedcb0:
    # Line 4060
    lw	$v1,252($s0)
    sd	$ra,56($sp)
    andi	$v1,$v1,0x10
    beqz	$v1,.L0daed868
    addu	$s4,$a0,$s1
    # Line 4069
    lw	$a4,-31660($s4)
    andi	$a4,$a4,0x10
    bnez	$a4,.L0daed868
    sd	$ra,56($sp)
    la	$a2,__glMgrInitExpandState
    # Line 4073
    addiu	$a5,$s1,32456
    move	$a3,$zero
    li	$a1,226
    move	$a0,$s2
    # lw $t9, -30072($gp) # &__glMgrAddModule
    # Line 4072
    ori	$a6,$a7,0x4008
    sw	$a6,256($s0)
    # Line 4073
    bal __glMgrAddModule
    lw	$a4,416($s3)
    b	.L0daed86c
    # Line 4079
    lw	$v1,-31664($s4)
.L0daedd04:
    # Line 4091
    lw	$at,252($s0)
    sd	$ra,56($sp)
    andi	$at,$at,0x10
    beqz	$at,.L0daed914
    addu	$s4,$a0,$s1
    # Line 4100
    lw	$v0,-32264($s4)
    andi	$v0,$v0,0x10
    bnez	$v0,.L0daed914
    sd	$ra,56($sp)
    la	$a2,__glMgrInitExpandState
    # Line 4104
    addiu	$a5,$s1,32456
    move	$a3,$zero
    li	$a1,226
    move	$a0,$s2
    # lw $t9, -30072($gp) # &__glMgrAddModule
    # Line 4103
    ori	$v1,$a7,0x4080
    sw	$v1,256($s0)
    # Line 4104
    bal __glMgrAddModule
    lw	$a4,416($s3)
    b	.L0daed918
    # Line 4110
    move	$a0,$s2
.L0daedd58:
    # Line 3943
    beqz	$a4,.L0daedf74
    nop
    # Line 3945
    b	.L0daed6a0
    li	$s4,239
.L0daedd68:
    # Line 4120
    lw	$at,40($s0)
    li	$v0,6409
    bne	$at,$v0,.L0daed9ac
    sd	$ra,56($sp)
    la	$a2,__glMgrInitExpandState
    # Line 4130
    addiu	$a5,$s1,32456
    move	$a3,$zero
    li	$a1,226
    move	$a0,$s2
    # lw $t9, -30072($gp) # &__glMgrAddModule
    # Line 4129
    ori	$v1,$a7,0x4100
    sw	$v1,256($s0)
    # Line 4130
    bal __glMgrAddModule
    lw	$a4,416($s3)
    b	.L0daed9b0
    # Line 4136
    move	$a0,$s2
.L0daedda8:
    # Line 3906
    lw	$a4,40($s0)
    sd	$s3,72($sp)
    li	$at,6407
    beq	$a4,$at,.L0daee138
    addiu	$s2,$s0,428
    b	.L0daed65c
    # Line 3912
    la	$s3,SYMBOL_LOCATION
.L0daeddc4:
    # Line 3918
    li	$v0,6409
    beq	$a3,$v0,.L0daeddd8
    li	$v1,6410
    bne	$a3,$v1,.L0daed664
    nop
.L0daeddd8:
    lw	$a2,12($s4)
    li	$a4,6408
    beq	$a2,$a4,.L0daeddec
    li	$at,6407
    bne	$a2,$at,.L0daed664
.L0daeddec:
    la	$a2,__glMgrInitExpandState
    # Line 3924
    addiu	$a5,$s1,32456
    move	$a3,$zero
    sd	$a1,88($sp)
    li	$a1,226
    sd	$a0,80($sp)
    move	$a0,$s2
    sd	$ra,56($sp)
    # lw $t9, -30072($gp) # &__glMgrAddModule
    # Line 3923
    ori	$v0,$a7,0x4020
    sw	$v0,256($s0)
    # Line 3924
    bal __glMgrAddModule
    lw	$a4,416($s3)
    ld	$a0,80($sp)
    ld	$a1,88($sp)
    b	.L0daed664
    ld	$ra,56($sp)
.L0daede30:
    # Line 3933
    beqz	$v1,.L0daedf7c
    # Line 3935
    slti	$a4,$a0,8
    b	.L0daed6a0
    li	$s4,279
.L0daede40:
    # Line 4251
    move	$a4,$zero
    move	$a3,$zero
    la	$a2,__glMgrInitCleanupState
    li	$a1,234
    # lw $t9, -30072($gp) # &__glMgrAddModule
    addiu	$a0,$s0,456
    ld	$s2,64($sp)
    bal __glMgrAddModule
    ld	$s3,72($sp)
    b	.L0daedbfc
    ld	$ra,56($sp)
.L0daede6c:
    # Line 3952
    lw	$at,1164($s3)
    lw	$a4,736($s3)
    sd	$ra,56($sp)
    addu	$a4,$a4,$at
    b	.L0daed704
    sw	$a4,12($sp)
.L0daede84:
    # Line 4051
    lui	$v0,0x1
    addu	$v0,$s1,$v0
    lwc1	$f11,-32164($v0)
    swc1	$f11,32380($s1)
    # Line 4052
    lwc1	$f10,-32160($v0)
    swc1	$f10,32384($s1)
    # Line 4053
    lwc1	$f9,-32156($v0)
    swc1	$f9,32388($s1)
    # Line 4054
    lwc1	$f8,-32152($v0)
    swc1	$f8,32392($s1)
    # Line 4055
    lwc1	$f7,-32148($v0)
    swc1	$f7,32396($s1)
    # Line 4056
    lwc1	$f6,-32144($v0)
    la	$a2,__glMgrInitScaleBiasState
    swc1	$f6,32400($s1)
    la	$a3,__glMgrInitScaleBiasFill
    # Line 4057
    lwc1	$f5,-32140($v0)
    # Line 4060
    addiu	$a5,$s1,32380
    li	$a1,232
    # Line 4057
    swc1	$f5,32404($s1)
    # Line 4060
    move	$a0,$s2
    # Line 4058
    lwc1	$f4,-32136($v0)
    # Line 4060
    # lw $t9, -30072($gp) # &__glMgrAddModule
    sd	$ra,56($sp)
    # Line 4058
    swc1	$f4,32408($s1)
    # Line 4060
    bal __glMgrAddModule
    lw	$a4,444($s3)
    lw	$a0,424($s0)
    b	.L0daed844
    ld	$ra,56($sp)
.L0daedefc:
    # Line 3984
    lui	$v1,0x1
.L0daedf00:
    addu	$v1,$s1,$v1
    lwc1	$f19,-31892($v1)
    swc1	$f19,32320($s1)
    # Line 3985
    lwc1	$f18,-31888($v1)
    swc1	$f18,32324($s1)
    # Line 3986
    lwc1	$f17,-31884($v1)
    swc1	$f17,32328($s1)
    # Line 3987
    lwc1	$f16,-31880($v1)
    swc1	$f16,32332($s1)
    # Line 3988
    lwc1	$f15,-31876($v1)
    swc1	$f15,32336($s1)
    # Line 3989
    lwc1	$f14,-31872($v1)
    # Line 3993
    addiu	$a5,$s1,32320
    # Line 3989
    swc1	$f14,32340($s1)
    # Line 3993
    li	$a1,232
    # Line 3990
    lwc1	$f13,-31868($v1)
    # Line 3993
    move	$a0,$s2
    # Line 3980
    la	$a3,__glMgrInitScaleBiasFill
    # Line 3990
    swc1	$f13,32344($s1)
    # Line 3980
    la	$a2,__glMgrInitScaleBiasState
    # Line 3991
    lwc1	$f12,-31864($v1)
    # Line 3993
    # lw $t9, -30072($gp) # &__glMgrAddModule
    sd	$ra,56($sp)
    # Line 3991
    swc1	$f12,32348($s1)
    # Line 3993
    bal __glMgrAddModule
    lw	$a4,440($s3)
    lw	$a0,424($s0)
    # Line 3980
    b	.L0daed77c
    ld	$ra,56($sp)
.L0daedf74:
    b	.L0daed6a0
    # Line 3945
    lw	$s4,8($sp)
.L0daedf7c:
    # Line 3935
    beqz	$a4,.L0daee06c
    nop
    # Line 3937
    b	.L0daed6a0
    li	$s4,280
.L0daedf8c:
    # Line 4156
    lw	$at,424($s0)
    lui	$v0,0x100
    and	$at,$at,$v0
    beqz	$at,.L0daee0a0
    lw	$a3,40($s0)
    lw	$v1,44($s0)
    beq	$a3,$v1,.L0daee074
    li	$s4,6408
    beq	$s4,$a3,.L0daee074
    # Line 4166
    li	$a4,0x8000
    beq	$a3,$a4,.L0daee078
    li	$v1,6403
.L0daedfbc:
    # Line 4170
    ori	$a7,$a7,0x200
.L0daedfc0:
    b	.L0daedaa4
    sw	$a7,256($s0)
.L0daedfc8:
    # Line 4189
    beq	$s4,$a3,.L0daedadc
    li	$at,0x8000
    beql	$a3,$at,.L0daedae0
    lw	$at,44($s0)
    b	.L0daedb3c
    # Line 4196
    lw	$a0,424($s0)
.L0daedfe0:
    # Line 4195
    and	$v0,$s4,$a0
    beqz	$v0,.L0daee0c4
    addiu	$a5,$s1,32484
    # Line 4220
    move	$a3,$zero
    la	$a2,__glMgrInitXZoomState
    li	$a1,277
    # lw $t9, -30072($gp) # &__glMgrAddModule
    move	$a0,$s2
    # Line 4219
    sw	$zero,32484($s1)
    # Line 4220
    bal __glMgrAddModule
    lw	$a4,1104($s3)
    la	$a2,__glMgrInitZoomState
    ld	$ra,56($sp)
.L0daee014:
    lw	$a7,256($s0)
    beqz	$a7,.L0daee024
    # Line 4227
    ori	$v1,$a7,0x4000
    sw	$v1,256($s0)
.L0daee024:
    b	.L0daedb54
    lw	$a0,424($s0)
.L0daee02c:
    # Line 4024
    lw	$a4,56($s0)
    li	$at,4
    beq	$a4,$at,.L0daedc28
    sd	$ra,56($sp)
    la	$a2,__glMgrInitExpandState
    # Line 4036
    addiu	$a5,$s1,32456
    move	$a3,$zero
    li	$a1,226
    move	$a0,$s2
    # lw $t9, -30072($gp) # &__glMgrAddModule
    # Line 4035
    ori	$v0,$a7,0x4040
    sw	$v0,256($s0)
    # Line 4036
    bal __glMgrAddModule
    lw	$a4,416($s3)
    b	.L0daedc2c
    # Line 4042
    move	$a0,$s2
.L0daee06c:
    b	.L0daed6a0
    # Line 3937
    lw	$s4,8($sp)
.L0daee074:
    # Line 4166
    li	$v1,6403
.L0daee078:
    beq	$a3,$v1,.L0daedfbc
    li	$a4,6404
    beq	$a3,$a4,.L0daedfbc
    li	$at,6405
    beq	$a3,$at,.L0daedfbc
    li	$v0,6406
    bne	$a3,$v0,.L0daedaa8
    # Line 4180
    andi	$a4,$a7,0xe00
    b	.L0daedfc0
    # Line 4170
    ori	$a7,$a7,0x200
.L0daee0a0:
    # Line 4173
    li	$v1,6410
    beq	$a3,$v1,.L0daee184
    li	$a4,6406
    beql	$a3,$a4,.L0daee188
    # Line 4174
    ori	$a7,$a7,0x400
    # Line 4180
    ori	$a7,$a7,0x800
    sw	$a7,256($s0)
.L0daee0bc:
    b	.L0daedaa4
    li	$s4,6408
.L0daee0c4:
    sd	$a5,16($sp)
    # Line 4205
    addiu	$a5,$s1,32476
    move	$a3,$zero
    li	$a1,286
    move	$a0,$s2
    # lw $t9, -30072($gp) # &__glMgrAddModule
    # Line 4204
    la	$a2,__glMgrInitZoomState
    sw	$zero,32484($s1)
    # Line 4205
    bal __glMgrAddModule
    lw	$a4,580($s3)
    # Line 4209
    move	$a0,$s2
    ld	$a5,16($sp)
    lw	$a4,1104($s3)
    # lw $t9, -30072($gp) # &__glMgrAddModule
    move	$a3,$zero
    la	$a2,__glMgrInitXZoomState
    bal __glMgrAddModule
    li	$a1,277
    # Line 4213
    move	$a0,$s2
    move	$a5,$zero
    lw	$a4,1104($s3)
    # lw $t9, -30072($gp) # &__glMgrAddModule
    move	$a3,$zero
    la	$a2,__glMgrInitXYZoomState
    bal __glMgrAddModule
    li	$a1,287
    la	$a2,__glMgrInitZoomState
    b	.L0daee014
    ld	$ra,56($sp)
.L0daee138:
    # Line 3912
    addiu	$a5,$s1,32456
    move	$a3,$zero
    sd	$a1,88($sp)
    li	$a1,226
    sd	$a0,80($sp)
    move	$a0,$s2
    # Line 3909
    la	$a2,__glMgrInitExpandState
    sd	$ra,56($sp)
    la	$s3,SYMBOL_LOCATION
    # Line 3912
    # lw $t9, -30072($gp) # &__glMgrAddModule
    # Line 3911
    ori	$a6,$a7,0x4020
    sw	$a6,256($s0)
    # Line 3912
    bal __glMgrAddModule
    lw	$a4,416($s3)
    lw	$a7,256($s0)
    ld	$a0,80($sp)
    ld	$a1,88($sp)
    b	.L0daed65c
    ld	$ra,56($sp)
.L0daee184:
    # Line 4174
    ori	$a7,$a7,0x400
.L0daee188:
    b	.L0daee0bc
    sw	$a7,256($s0)
.end __glMgrBuildColorChainTail

# Function: __glMgrBuildCIChainHead
# Declared: Line 4258 (Source lines: 4259-4445)
# Address: 0x0daee190 - 0x0daee70c (Size: 1404 bytes, Frame: 208)
.globl __glMgrBuildCIChainHead
.ent __glMgrBuildCIChainHead
__glMgrBuildCIChainHead:
    # Line 4259
    addiu	$sp,$sp,-80
    sd	$s2,16($sp)
    sd	$s0,8($sp)
    # Line 4260
    lw	$s0,__glCurrentContext
    sd	$gp,24($sp)
    # Line 4259
    lui	$v1,0x11
    addiu	$v1,$v1,1288
    addu	$gp,$t9,$v1
    # Line 4266
    lwc1	$f0,_lit_3f800000
    lui	$v0,0x1
    addu	$v0,$s0,$v0
    swc1	$f0,-21068($v0)
    swc1	$f0,-21064($v0)
    # Line 4259
    move	$s2,$a0
    # Line 4268
    lw	$a2,424($a0)
    sd	$s3,32($sp)
    # Line 4263
    addiu	$s3,$s0,952
    # Line 4268
    andi	$at,$a2,0x8
    beqz	$at,.L0daee340
    # Line 4262
    addiu	$a7,$s0,616
    # Line 4268
    andi	$a1,$a2,0x4
    beqzl	$a1,.L0daee344
    lw	$a2,52($s2)
    # Line 4303
    lw	$a0,40($s2)
    li	$a3,6401
    beq	$a3,$a0,.L0daee484
    # Line 4344
    lui	$at,0x102
    ori	$at,$at,0x10
    and	$at,$a2,$at
    beqz	$at,.L0daee49c
    nop
.L0daee20c:
    beq	$a3,$a0,.L0daee518
    lui	$v0,0x102
    and	$v0,$a2,$v0
    beqzl	$v0,.L0daee524
    # Line 4361
    lw	$a0,0($s3)
    # Line 4344
    lw	$a3,24($s3)
    lw	$a0,36($s3)
    slt	$v1,$a0,$a3
    beqz	$v1,.L0daee238
    # Line 4351
    move	$a2,$a0
    move	$a2,$a3
.L0daee238:
    sw	$a2,32512($s0)
    lw	$a3,48($s3)
    sltu	$a1,$a2,$a3
    beqz	$a1,.L0daee250
    # Line 4354
    move	$a0,$a2
    move	$a0,$a3
.L0daee250:
    sw	$a0,32512($s0)
    lw	$a2,60($s3)
    sltu	$at,$a0,$a2
    beqz	$at,.L0daee268
    # Line 4357
    move	$a3,$a0
    move	$a3,$a2
.L0daee268:
    move	$a0,$a3
    sw	$a3,32512($s0)
.L0daee270:
    # Line 4364
    beqz	$a0,.L0daee288
    # Line 4375
    li	$at,5125
    sd	$s1,48($sp)
    # Line 4367
    addiu	$a0,$a0,-1
    sw	$a0,32512($s0)
    # Line 4375
    li	$at,5125
.L0daee288:
    # Line 4367
    lw	$a2,52($s2)
    sd	$s1,48($sp)
    li	$v0,6656
    beq	$a2,$v0,.L0daee688
    addiu	$s1,$s2,428
    # Line 4375
    addiu	$s3,$s0,32512
    li	$s2,0xadb8
    beq	$a2,$at,.L0daee5b8
    addu	$s2,$s0,$s2
    # Line 4388
    li	$v0,5126
    beq	$a2,$v0,.L0daee60c
    li	$v1,5120
    bne	$a2,$v1,.L0daee2dc
    # Line 4398
    move	$a5,$s3
    # Line 4388
    sltiu	$a1,$a0,127
    beqz	$a1,.L0daee2d0
    # Line 4395
    li	$a2,127
    move	$a2,$a0
.L0daee2d0:
    sd	$ra,40($sp)
    sw	$a2,32512($s0)
    # Line 4398
    move	$a5,$s3
.L0daee2dc:
    move	$a3,$zero
    la	$a2,__glMgrInitMaskState
    li	$a1,230
    move	$a0,$s1
    # lw $t9, -30072($gp) # &__glMgrAddModule
    # Line 4395
    la	$s0,SYMBOL_LOCATION
    sd	$ra,40($sp)
    # Line 4398
    bal __glMgrAddModule
    lw	$a4,864($s0)
    # Line 4403
    move	$a0,$s1
    move	$a5,$s2
    lw	$a4,736($s0)
    # lw $t9, -30072($gp) # &__glMgrAddModule
    move	$a3,$zero
    la	$a2,__glMgrInitI2FState
    bal __glMgrAddModule
    li	$a1,229
    ld	$ra,40($sp)
.L0daee324:
    ld	$gp,24($sp)
.L0daee328:
    # Line 4445
    ld	$s0,8($sp)
    ld	$s1,48($sp)
    ld	$s2,16($sp)
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daee340:
    # Line 4268
    lw	$a2,52($s2)
.L0daee344:
    sd	$s1,48($sp)
    li	$at,6656
    beq	$a2,$at,.L0daee574
    addiu	$s1,$s2,428
    # Line 4280
    li	$v0,5126
    beql	$a2,$v0,.L0daee540
    sd	$a7,0($sp)
    sd	$ra,40($sp)
.L0daee364:
    # Line 4295
    addiu	$a5,$s0,32504
    move	$a3,$zero
    # Line 4292
    lw	$t0,112($a7)
    # Line 4295
    la	$a2,__glMgrInitShiftAdd
    li	$a1,233
    # Line 4292
    sw	$t0,32504($s0)
    # Line 4295
    move	$a0,$s1
    # Line 4293
    lw	$a6,116($a7)
    # Line 4295
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    # Line 4293
    sw	$a6,32508($s0)
    # Line 4295
    bal __glMgrAddModule
    lw	$a4,432($a4)
    lw	$a0,40($s2)
    li	$a3,6401
    beq	$a3,$a0,.L0daee4fc
    ld	$ra,40($sp)
    # Line 4303
    lw	$a2,424($s2)
    lui	$at,0x102
    ori	$at,$at,0x10
    and	$at,$a2,$at
    beqz	$at,.L0daee4f4
    nop
.L0daee3c0:
    beq	$a3,$a0,.L0daee52c
    lui	$v0,0x102
    and	$v0,$a2,$v0
    beqzl	$v0,.L0daee538
    # Line 4318
    lw	$a0,0($s3)
    # Line 4303
    lw	$a0,36($s3)
    lw	$a3,24($s3)
    slt	$v1,$a0,$a3
    beqz	$v1,.L0daee3ec
    # Line 4308
    move	$a2,$a0
    move	$a2,$a3
.L0daee3ec:
    sw	$a2,32512($s0)
    lw	$a3,48($s3)
    sltu	$a1,$a2,$a3
    beqz	$a1,.L0daee404
    # Line 4311
    move	$a0,$a2
    move	$a0,$a3
.L0daee404:
    sw	$a0,32512($s0)
    lw	$a2,60($s3)
    sltu	$at,$a0,$a2
    beqz	$at,.L0daee41c
    # Line 4314
    move	$a3,$a0
    move	$a3,$a2
.L0daee41c:
    move	$a0,$a3
    sw	$a3,32512($s0)
.L0daee424:
    # Line 4321
    beqz	$a0,.L0daee430
    # Line 4324
    addiu	$v0,$a0,-1
    sw	$v0,32512($s0)
.L0daee430:
    # Line 4326
    move	$a0,$s1
    addiu	$a5,$s0,32512
    move	$a3,$zero
    la	$a2,__glMgrInitMaskState
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    li	$a1,230
    bal __glMgrAddModule
    lw	$a4,864($a4)
    # Line 4330
    move	$a0,$s1
    move	$a3,$zero
    la	$a2,__glMgrInitI2FState
    li	$a1,229
    li	$a5,0xadb8
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    addu	$a5,$s0,$a5
    bal __glMgrAddModule
    lw	$a4,736($a4)
    b	.L0daee324
    ld	$ra,40($sp)
.L0daee484:
    # Line 4344
    lui	$at,0x20
.L0daee488:
    and	$at,$a2,$at
    beqzl	$at,.L0daee4a8
    # Line 4370
    lw	$a2,52($s2)
    b	.L0daee20c
    nop
.L0daee49c:
    # Line 4344
    beq	$a3,$a0,.L0daee488
    lui	$at,0x20
    # Line 4370
    lw	$a2,52($s2)
.L0daee4a8:
    li	$v0,6656
    beq	$a2,$v0,.L0daee6c8
    # Line 4434
    li	$v1,5126
    bne	$a2,$v1,.L0daee324
    sd	$s1,48($sp)
    # Line 4440
    move	$a3,$zero
    la	$a2,__glMgrInitF2IState
    li	$a1,227
    addiu	$a0,$s2,428
    sd	$ra,40($sp)
    li	$a5,0xadb4
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    addu	$a5,$s0,$a5
    bal __glMgrAddModule
    lw	$a4,820($a4)
    sd	$s1,48($sp)
    b	.L0daee324
    ld	$ra,40($sp)
.L0daee4f4:
    # Line 4303
    bnel	$a3,$a0,.L0daee328
    ld	$gp,24($sp)
.L0daee4fc:
    lw	$a2,424($s2)
    lui	$at,0x20
    and	$at,$a2,$at
    beqzl	$at,.L0daee328
    ld	$gp,24($sp)
    b	.L0daee3c0
    nop
.L0daee518:
    # Line 4364
    lw	$a0,12($s3)
    b	.L0daee270
    sw	$a0,32512($s0)
.L0daee524:
    b	.L0daee270
    # Line 4361
    sw	$a0,32512($s0)
.L0daee52c:
    # Line 4321
    lw	$a0,12($s3)
    b	.L0daee424
    sw	$a0,32512($s0)
.L0daee538:
    b	.L0daee424
    # Line 4318
    sw	$a0,32512($s0)
.L0daee540:
    # Line 4286
    move	$a3,$zero
    la	$a2,__glMgrInitF2IState
    li	$a1,227
    move	$a0,$s1
    sd	$ra,40($sp)
    li	$a5,0xadb4
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    addu	$a5,$s0,$a5
    bal __glMgrAddModule
    lw	$a4,820($a4)
    b	.L0daee364
    ld	$a7,0($sp)
.L0daee574:
    # Line 4280
    addiu	$a5,$s0,32496
    move	$a3,$zero
    la	$a2,__glMgrInitB2IState
    sd	$a7,0($sp)
    # Line 4277
    lbu	$a7,493($a7)
    # Line 4280
    li	$a1,221
    move	$a0,$s1
    # Line 4277
    sw	$a7,32496($s0)
    sd	$ra,40($sp)
    # Line 4278
    lbu	$a6,104($s2)
    # Line 4280
    # lw $t9, -30072($gp) # &__glMgrAddModule
    # Line 4277
    la	$a4,SYMBOL_LOCATION
    # Line 4278
    sw	$a6,32500($s0)
    # Line 4280
    bal __glMgrAddModule
    lw	$a4,816($a4)
    b	.L0daee364
    ld	$a7,0($sp)
.L0daee5b8:
    # Line 4383
    move	$a5,$s3
    move	$a3,$zero
    la	$a2,__glMgrInitMaskState
    li	$a1,230
    move	$a0,$s1
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    sd	$ra,40($sp)
    bal __glMgrAddModule
    lw	$a4,864($a4)
    # Line 4388
    move	$a0,$s1
    move	$a5,$s2
    move	$a3,$zero
    la	$a2,__glMgrInitI2FState
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    li	$a1,229
    bal __glMgrAddModule
    lw	$a4,736($a4)
    b	.L0daee324
    ld	$ra,40($sp)
.L0daee60c:
    # Line 4409
    move	$a3,$zero
    la	$a2,__glMgrInitF2IState
    li	$a1,227
    move	$a0,$s1
    sd	$ra,40($sp)
    li	$a5,0xadb4
    # lw $t9, -30072($gp) # &__glMgrAddModule
    # Line 4403
    la	$a4,SYMBOL_LOCATION
    # Line 4409
    addu	$a5,$s0,$a5
    bal __glMgrAddModule
    lw	$a4,820($a4)
    # Line 4413
    move	$a0,$s1
    move	$a5,$s3
    move	$a3,$zero
    la	$a2,__glMgrInitMaskState
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    li	$a1,230
    bal __glMgrAddModule
    lw	$a4,864($a4)
    # Line 4418
    move	$a0,$s1
    move	$a5,$s2
    move	$a3,$zero
    la	$a2,__glMgrInitI2FState
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    li	$a1,229
    bal __glMgrAddModule
    lw	$a4,736($a4)
    b	.L0daee324
    ld	$ra,40($sp)
.L0daee688:
    # Line 4375
    addiu	$a5,$s0,32516
    move	$a3,$zero
    la	$a2,__glMgrInitB2FState
    # Line 4372
    lbu	$a7,493($a7)
    # Line 4375
    li	$a1,220
    move	$a0,$s1
    # Line 4372
    sw	$a7,32516($s0)
    sd	$ra,40($sp)
    # Line 4373
    lbu	$a6,104($s2)
    # Line 4375
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    # Line 4373
    sw	$a6,32520($s0)
    # Line 4375
    bal __glMgrAddModule
    lw	$a4,796($a4)
    b	.L0daee324
    ld	$ra,40($sp)
.L0daee6c8:
    # Line 4434
    addiu	$a5,$s0,32496
    move	$a3,$zero
    la	$a2,__glMgrInitB2IState
    # Line 4431
    lbu	$a7,493($a7)
    # Line 4434
    li	$a1,221
    addiu	$a0,$s2,428
    # Line 4431
    sw	$a7,32496($s0)
    sd	$ra,40($sp)
    # Line 4432
    lbu	$a6,104($s2)
    # Line 4434
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    # Line 4432
    sw	$a6,32500($s0)
    # Line 4434
    bal __glMgrAddModule
    lw	$a4,816($a4)
    sd	$s1,48($sp)
    b	.L0daee324
    ld	$ra,40($sp)
.end __glMgrBuildCIChainHead

# Function: __glMgrBuildCItoColorChain
# Declared: Line 4448 (Source lines: 4449-4477)
# Address: 0x0daee70c - 0x0daee800 (Size: 244 bytes, Frame: 48)
.globl __glMgrBuildCItoColorChain
.ent __glMgrBuildCItoColorChain
__glMgrBuildCItoColorChain:
    # Line 4467
    move	$a3,$zero
    li	$a1,226
    # Line 4449
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    sd	$s1,8($sp)
    # Line 4467
    addiu	$s1,$a0,428
    sd	$gp,24($sp)
    # Line 4449
    lui	$t2,0x11
    addiu	$t2,$t2,-116
    addu	$gp,$t9,$t2
    # Line 4467
    la	$a2,__glMgrInitExpandState
    # Line 4457
    li	$t1,16
    sd	$s0,0($sp)
    # Line 4450
    lw	$s0,__glCurrentContext
    # Line 4458
    li	$t0,1
    # Line 4459
    lui	$a7,0x80
    sw	$a7,32536($s0)
    # Line 4458
    sw	$t0,32532($s0)
    # Line 4457
    sw	$t1,32528($s0)
    # Line 4460
    lwc1	$f0,_lit_3f800000
    # Line 4461
    mtc1	$zero,$f1
    # Line 4456
    lwc1	$f2,_lit_37800080
    # Line 4464
    swc1	$f0,32556($s0)
    # Line 4463
    swc1	$f1,32552($s0)
    # Line 4462
    swc1	$f1,32548($s0)
    # Line 4461
    swc1	$f1,32544($s0)
    # Line 4460
    swc1	$f0,32540($s0)
    # Line 4456
    swc1	$f2,32524($s0)
    # Line 4467
    addiu	$a5,$s0,32540
    # Line 4466
    lw	$a6,256($a0)
    # Line 4449
    la	$a4,SYMBOL_LOCATION
    # Line 4467
    # lw $t9, -30072($gp) # &__glMgrAddModule
    # Line 4466
    ori	$a6,$a6,0x5000
    sw	$a6,256($a0)
    # Line 4467
    move	$a0,$s1
    bal __glMgrAddModule
    lw	$a4,416($a4)
    # Line 4471
    move	$a0,$s1
    addiu	$a5,$s0,32528
    move	$a3,$zero
    la	$a2,__glMgrInitLUTCIST
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    li	$a1,219
    bal __glMgrAddModule
    lw	$a4,448($a4)
    # Line 4474
    move	$a0,$s1
    addiu	$a5,$s0,32524
    move	$a3,$zero
    la	$a2,__glMgrInitI2FState
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    li	$a1,229
    bal __glMgrAddModule
    lw	$a4,740($a4)
    ld	$gp,24($sp)
    # Line 4477
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrBuildCItoColorChain

# Function: __glMgrBuildCIChainTail
# Declared: Line 4480 (Source lines: 4481-4570)
# Address: 0x0daee800 - 0x0daeead4 (Size: 724 bytes, Frame: 224)
.globl __glMgrBuildCIChainTail
.ent __glMgrBuildCIChainTail
__glMgrBuildCIChainTail:
    # Line 4481
    move	$a7,$a1
    # Line 4487
    li	$a5,6401
    # Line 4481
    addiu	$sp,$sp,-96
    sd	$a2,16($sp)
    sd	$s0,32($sp)
    sd	$s1,24($sp)
    # Line 4483
    lw	$s1,__glCurrentContext
    # Line 4481
    move	$s0,$a0
    # Line 4485
    li	$v0,1
    # Line 4487
    sb	$zero,32590($s1)
    # Line 4486
    sb	$v0,32589($s1)
    # Line 4485
    sb	$v0,32588($s1)
    sd	$gp,40($sp)
    # Line 4487
    lw	$a4,40($a0)
    # Line 4481
    lui	$at,0x11
    addiu	$at,$at,-360
    # Line 4487
    beq	$a5,$a4,.L0daee9ac
    # Line 4481
    addu	$gp,$t9,$at
    # Line 4490
    lw	$v1,424($s0)
    andi	$v1,$v1,0x10
    beqz	$v1,.L0daeea34
    li	$a3,8
.L0daee858:
    beq	$a7,$a3,.L0daeea24
    # Line 4495
    la	$a4,SYMBOL_LOCATION
    sd	$ra,48($sp)
    # Line 4497
    lw	$a4,452($a4)
.L0daee868:
    # Line 4503
    addiu	$a5,$s1,32560
    move	$a3,$zero
    la	$a2,__glMgrInitLUTCIST
    li	$a1,219
    # Line 4500
    sw	$zero,32564($s1)
    # Line 4499
    sw	$a7,32560($s1)
    # Line 4501
    lui	$a6,0x80
    # Line 4503
    # lw $t9, -30072($gp) # &__glMgrAddModule
    addiu	$a0,$s0,428
    sd	$a0,8($sp)
    bal __glMgrAddModule
    # Line 4501
    sw	$a6,32568($s1)
.L0daee898:
    # Line 4510
    addiu	$a5,$s1,32584
    move	$a3,$zero
    la	$a2,__glMgrInitMaskState
    li	$a1,230
    ld	$a0,8($sp)
    # Line 4509
    ld	$a6,16($sp)
    # Line 4510
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    # Line 4509
    sw	$a6,32584($s1)
    # Line 4510
    bal __glMgrAddModule
    lw	$a4,428($a4)
    ld	$ra,48($sp)
    lui	$a3,0x1100
    lw	$a1,424($s0)
    lui	$a0,0x100
    ori	$a0,$a0,0x800
    and	$a3,$a1,$a3
    and	$at,$a0,$a1
    beqz	$a3,.L0daee9d0
    # Line 4542
    la	$a2,__glMgrInitZoomState
.L0daee8e8:
    # Line 4551
    ldc1	$f0,_lit8_3ff0000000000000
    # Line 4542
    and	$at,$a0,$a1
    bnez	$at,.L0daee980
    # Line 4552
    lui	$a3,0x1000
    # Line 4549
    lw	$v0,__glCurrentContext
    mtc1	$zero,$f6
    lwc1	$f5,724($v0)
    c.lt.s	$f5,$f6
    nop
    bc1f	.L0daee918
    # Line 4551
    mov.s	$f4,$f5
    neg.s	$f4,$f5
.L0daee918:
    cvt.d.s	$f1,$f4
    div.d	$f0,$f0,$f1
    cvt.s.d	$f0,$f0
    # Line 4552
    swc1	$f6,32576($s1)
    # Line 4551
    swc1	$f0,32572($s1)
    # Line 4552
    lw	$v1,424($s0)
    and	$v1,$v1,$a3
    beqz	$v1,.L0daee95c
    # Line 4556
    ld	$a0,8($sp)
    addiu	$a5,$s1,32572
    move	$a3,$zero
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    li	$a1,235
    bal __glMgrAddModule
    lw	$a4,580($a4)
    ld	$ra,48($sp)
.L0daee95c:
    lw	$a1,256($s0)
    beqz	$a1,.L0daee970
    ld	$s1,24($sp)
    # Line 4563
    ori	$at,$a1,0x4000
    sw	$at,256($s0)
.L0daee970:
    ld	$gp,40($sp)
    # Line 4570
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daee980:
    # Line 4567
    addiu	$a5,$s1,32588
    move	$a4,$zero
    move	$a3,$zero
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a2,__glMgrInitCleanupState
    li	$a1,234
    bal __glMgrAddModule
    addiu	$a0,$s0,456
    ld	$ra,48($sp)
    b	.L0daee970
    ld	$s1,24($sp)
.L0daee9ac:
    # Line 4490
    lw	$v0,424($s0)
.L0daee9b0:
    lui	$v1,0x20
    and	$v0,$v0,$v1
    bnez	$v0,.L0daee858
    li	$a3,8
    sd	$ra,48($sp)
    # Line 4499
    addiu	$a3,$s0,428
    b	.L0daee898
    sd	$a3,8($sp)
.L0daee9d0:
    # Line 4510
    addiu	$a5,$s1,32580
    beqz	$at,.L0daeea4c
    # Line 4535
    move	$a3,$zero
    la	$a2,__glMgrInitXZoomState
    li	$a1,277
    ld	$a0,8($sp)
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    # Line 4534
    sw	$zero,32580($s1)
    # Line 4535
    bal __glMgrAddModule
    lw	$a4,1104($a4)
    la	$a2,__glMgrInitZoomState
    ld	$ra,48($sp)
    lui	$a0,0x100
    ori	$a0,$a0,0x800
.L0daeea0c:
    lw	$a1,256($s0)
    beqz	$a1,.L0daeea1c
    # Line 4542
    ori	$a3,$a1,0x4000
    sw	$a3,256($s0)
.L0daeea1c:
    b	.L0daee8e8
    lw	$a1,424($s0)
.L0daeea24:
    # Line 4495
    la	$a4,SYMBOL_LOCATION
    sd	$ra,48($sp)
    b	.L0daee868
    lw	$a4,448($a4)
.L0daeea34:
    # Line 4490
    beql	$a5,$a4,.L0daee9b0
    lw	$v0,424($s0)
    sd	$ra,48($sp)
    # Line 4503
    addiu	$at,$s0,428
    b	.L0daee898
    sd	$at,8($sp)
.L0daeea4c:
    sd	$a5,0($sp)
    # Line 4520
    addiu	$a5,$s1,32572
    move	$a3,$zero
    li	$a1,286
    ld	$a0,8($sp)
    # Line 4519
    la	$a2,__glMgrInitZoomState
    # Line 4520
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    # Line 4519
    sw	$zero,32580($s1)
    # Line 4520
    bal __glMgrAddModule
    lw	$a4,580($a4)
    ld	$a0,8($sp)
    # Line 4524
    ld	$a5,0($sp)
    move	$a3,$zero
    la	$a2,__glMgrInitXZoomState
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    li	$a1,277
    bal __glMgrAddModule
    lw	$a4,1104($a4)
    ld	$a0,8($sp)
    # Line 4528
    move	$a5,$zero
    move	$a3,$zero
    la	$a2,__glMgrInitXYZoomState
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    li	$a1,287
    bal __glMgrAddModule
    lw	$a4,1104($a4)
    la	$a2,__glMgrInitZoomState
    ld	$ra,48($sp)
    lui	$a0,0x100
    b	.L0daeea0c
    ori	$a0,$a0,0x800
.end __glMgrBuildCIChainTail

# Function: __glMgrBuildDepthChain
# Declared: Line 4573 (Source lines: 4574-4702)
# Address: 0x0daeead4 - 0x0daeee34 (Size: 864 bytes, Frame: 208)
.globl __glMgrBuildDepthChain
.ent __glMgrBuildDepthChain
__glMgrBuildDepthChain:
    # Line 4582
    li	$at,5125
    # Line 4574
    addiu	$sp,$sp,-80
    sd	$s3,24($sp)
    sd	$gp,40($sp)
    # Line 4580
    li	$v1,1
    sd	$s0,8($sp)
    # Line 4574
    move	$s0,$a0
    sd	$s1,0($sp)
    sd	$s2,32($sp)
    # Line 4575
    lw	$s2,__glCurrentContext
    # Line 4582
    addiu	$s1,$a0,428
    # Line 4578
    li	$a0,-1
    # Line 4582
    sb	$zero,32646($s2)
    # Line 4581
    sb	$v1,32645($s2)
    # Line 4580
    sb	$v1,32644($s2)
    # Line 4579
    sw	$zero,32596($s2)
    # Line 4578
    sw	$a0,32592($s2)
    # Line 4574
    lui	$v0,0x11
    # Line 4582
    lw	$a2,52($s0)
    # Line 4574
    addiu	$v0,$v0,-1084
    addu	$gp,$t9,$v0
    # Line 4582
    beq	$a2,$at,.L0daeed58
    # Line 4576
    addiu	$s3,$s2,616
    # Line 4613
    li	$a1,5126
    beq	$a2,$a1,.L0daeecf8
    # Line 4618
    addiu	$a5,$s0,108
    move	$a3,$zero
    la	$a2,__glMgrInitI2FState
    li	$a1,229
    move	$a0,$s1
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    sd	$ra,48($sp)
    bal __glMgrAddModule
    lw	$a4,736($a4)
    ld	$ra,48($sp)
.L0daeeb64:
    # Line 4624
    lwc1	$f4,16($s3)
.L0daeeb68:
    ldc1	$f1,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f4
    c.eq.d	$f0,$f1
    nop
    bc1f	.L0daeebb0
    dmtc1	$zero,$f5
    lwc1	$f2,36($s3)
    cvt.d.s	$f2,$f2
    c.eq.d	$f2,$f5
    nop
    bc1fl	.L0daeebb4
    # Line 4628
    swc1	$f4,32600($s2)
    # Line 4624
    lwc1	$f3,112($s0)
    cvt.d.s	$f3,$f3
    c.eq.d	$f3,$f5
    nop
    bc1t	.L0daeebf0
    sd	$ra,48($sp)
.L0daeebb0:
    # Line 4628
    swc1	$f4,32600($s2)
.L0daeebb4:
    # Line 4629
    lwc1	$f5,112($s0)
    mul.s	$f5,$f5,$f4
    # Line 4632
    addiu	$a5,$s2,32600
    la	$a3,__glMgrInitScaleBiasFill
    la	$a2,__glMgrInitScaleBiasState
    # Line 4629
    lwc1	$f4,36($s3)
    # Line 4632
    li	$a1,232
    move	$a0,$s1
    # Line 4629
    add.s	$f4,$f4,$f5
    sd	$ra,48($sp)
    # Line 4632
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    # Line 4629
    swc1	$f4,32616($s2)
    # Line 4632
    bal __glMgrAddModule
    lw	$a4,436($a4)
.L0daeebf0:
    # Line 4639
    move	$a0,$s1
    addiu	$a5,$s0,116
    la	$a3,__glMgrInitClampFill
    la	$a2,__glMgrInitClampState
    li	$a1,222
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    ld	$s3,24($sp)
    bal __glMgrAddModule
    lw	$a4,756($a4)
    lw	$a3,424($s0)
    ld	$ra,48($sp)
    lui	$a1,0x1100
    lui	$a0,0x100
    and	$a1,$a3,$a1
    beqz	$a1,.L0daeed00
    ori	$a0,$a0,0x800
    # Line 4677
    la	$a2,__glMgrInitZoomState
.L0daeec38:
    ldc1	$f0,_lit8_3ff0000000000000
    and	$at,$a0,$a3
    bnez	$at,.L0daeecb8
    # Line 4687
    lui	$a1,0x1000
    # Line 4684
    lw	$v0,__glCurrentContext
    mtc1	$zero,$f6
    lwc1	$f4,724($v0)
    c.lt.s	$f4,$f6
    nop
    bc1f	.L0daeec68
    # Line 4686
    mov.s	$f5,$f4
    neg.s	$f5,$f4
.L0daeec68:
    cvt.d.s	$f1,$f5
    div.d	$f0,$f0,$f1
    cvt.s.d	$f0,$f0
    # Line 4687
    swc1	$f6,32636($s2)
    # Line 4686
    swc1	$f0,32632($s2)
    # Line 4687
    lw	$v1,424($s0)
    and	$v1,$v1,$a1
    beqz	$v1,.L0daeece4
    ld	$s0,8($sp)
    # Line 4691
    move	$a0,$s1
    addiu	$a5,$s2,32632
    move	$a3,$zero
    li	$a1,235
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    ld	$s0,8($sp)
    bal __glMgrAddModule
    lw	$a4,580($a4)
    b	.L0daeece4
    ld	$ra,48($sp)
.L0daeecb8:
    # Line 4699
    addiu	$a5,$s2,32644
    move	$a4,$zero
    move	$a3,$zero
    la	$a2,__glMgrInitCleanupState
    # lw $t9, -30072($gp) # &__glMgrAddModule
    li	$a1,234
    addiu	$a0,$s0,456
    bal __glMgrAddModule
    ld	$s1,0($sp)
    ld	$s0,8($sp)
    ld	$ra,48($sp)
.L0daeece4:
    ld	$gp,40($sp)
    # Line 4702
    ld	$s1,0($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daeecf8:
    b	.L0daeeb68
    # Line 4624
    lwc1	$f4,16($s3)
.L0daeed00:
    # Line 4639
    and	$at,$a0,$a3
    beqz	$at,.L0daeedac
    addiu	$a5,$s2,32640
    # Line 4670
    move	$a3,$zero
    la	$a2,__glMgrInitXZoomState
    li	$a1,277
    move	$a0,$s1
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    # Line 4669
    sw	$zero,32640($s2)
    # Line 4670
    bal __glMgrAddModule
    lw	$a4,1104($a4)
    la	$a2,__glMgrInitZoomState
    ld	$ra,48($sp)
    lui	$a0,0x100
    ori	$a0,$a0,0x800
.L0daeed40:
    lw	$a3,256($s0)
    beqz	$a3,.L0daeed50
    # Line 4677
    ori	$a1,$a3,0x4000
    sw	$a1,256($s0)
.L0daeed50:
    b	.L0daeec38
    lw	$a3,424($s0)
.L0daeed58:
    # Line 4609
    addiu	$a5,$s2,32592
    move	$a3,$zero
    la	$a2,__glMgrInitShiftAdd
    li	$a1,233
    move	$a0,$s1
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    sd	$ra,48($sp)
    bal __glMgrAddModule
    lw	$a4,432($a4)
    # Line 4613
    move	$a0,$s1
    addiu	$a5,$s0,108
    move	$a3,$zero
    la	$a2,__glMgrInitI2FState
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    li	$a1,229
    bal __glMgrAddModule
    lw	$a4,736($a4)
    b	.L0daeeb64
    ld	$ra,48($sp)
.L0daeedac:
    sd	$a5,16($sp)
    # Line 4655
    addiu	$a5,$s2,32632
    move	$a3,$zero
    li	$a1,286
    move	$a0,$s1
    # Line 4654
    la	$a2,__glMgrInitZoomState
    # Line 4655
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    # Line 4654
    sw	$zero,32640($s2)
    # Line 4655
    bal __glMgrAddModule
    lw	$a4,580($a4)
    # Line 4659
    move	$a0,$s1
    ld	$a5,16($sp)
    move	$a3,$zero
    la	$a2,__glMgrInitXZoomState
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    li	$a1,277
    bal __glMgrAddModule
    lw	$a4,1104($a4)
    # Line 4663
    move	$a0,$s1
    move	$a5,$zero
    move	$a3,$zero
    la	$a2,__glMgrInitXYZoomState
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    li	$a1,287
    bal __glMgrAddModule
    lw	$a4,1104($a4)
    la	$a2,__glMgrInitZoomState
    ld	$ra,48($sp)
    lui	$a0,0x100
    b	.L0daeed40
    ori	$a0,$a0,0x800
.end __glMgrBuildDepthChain

# Function: __glMgrAddModule
# Declared: Line 4705 (Source lines: 4709-4726)
# Address: 0x0daeee34 - 0x0daeeec8 (Size: 148 bytes, Frame: 240)
.globl __glMgrAddModule
.ent __glMgrAddModule
__glMgrAddModule:
    # Line 4709
    addiu	$sp,$sp,-112
    sd	$a1,56($sp)
    # Line 4712
    li	$a1,28
    sd	$a5,24($sp)
    sd	$a4,32($sp)
    sd	$gp,16($sp)
    # Line 4709
    lui	$at,0x11
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 4712
    lw	$a0,__glCurrentContext
    # Line 4709
    addiu	$at,$at,-1948
    addu	$gp,$t9,$at
    # Line 4712
    lw	$t9,0($a0)
    sd	$a3,40($sp)
    sd	$ra,0($sp)
    jalr	$t9
    sd	$a2,48($sp)
    ld	$gp,16($sp)
    # Line 4720
    ld	$v1,48($sp)
    # Line 4721
    ld	$a0,40($sp)
    # Line 4722
    ld	$a6,24($sp)
    # Line 4715
    lw	$ra,0($s8)
    # Line 4723
    ld	$a7,56($sp)
    # Line 4716
    sw	$s8,4($v0)
    # Line 4715
    sw	$ra,0($v0)
    # Line 4717
    sw	$v0,4($ra)
    # Line 4718
    sw	$v0,0($s8)
    # Line 4723
    sw	$a7,16($v0)
    # Line 4722
    sw	$a6,24($v0)
    # Line 4721
    sw	$a0,12($v0)
    # Line 4724
    ld	$s8,32($sp)
    # Line 4720
    sw	$v1,8($v0)
    # Line 4726
    ld	$ra,0($sp)
    # Line 4724
    sw	$s8,20($v0)
    # Line 4726
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glMgrAddModule

# Function: __glMgrInsertModule
# Declared: Line 4730 (Source lines: 4734-4751)
# Address: 0x0daeeec8 - 0x0daeef60 (Size: 152 bytes, Frame: 240)
.globl __glMgrInsertModule
.ent __glMgrInsertModule
__glMgrInsertModule:
    # Line 4734
    addiu	$sp,$sp,-112
    sd	$a1,56($sp)
    # Line 4737
    li	$a1,28
    sd	$a5,24($sp)
    sd	$a4,32($sp)
    sd	$gp,16($sp)
    # Line 4734
    lui	$at,0x11
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 4737
    lw	$a0,__glCurrentContext
    # Line 4734
    addiu	$at,$at,-2096
    addu	$gp,$t9,$at
    # Line 4737
    lw	$t9,0($a0)
    sd	$a3,40($sp)
    sd	$ra,0($sp)
    jalr	$t9
    sd	$a2,48($sp)
    ld	$gp,16($sp)
    # Line 4740
    lw	$v1,4($s8)
    # Line 4746
    ld	$a0,40($sp)
    # Line 4747
    ld	$a6,24($sp)
    # Line 4740
    sw	$v1,4($v0)
    # Line 4748
    ld	$a7,56($sp)
    # Line 4741
    lw	$at,4($s8)
    # Line 4749
    ld	$ra,32($sp)
    # Line 4745
    ld	$v1,48($sp)
    # Line 4741
    sw	$v0,0($at)
    # Line 4742
    sw	$v0,4($s8)
    # Line 4748
    sw	$a7,16($v0)
    # Line 4747
    sw	$a6,24($v0)
    # Line 4746
    sw	$a0,12($v0)
    # Line 4745
    sw	$v1,8($v0)
    # Line 4749
    sw	$ra,20($v0)
    # Line 4751
    ld	$ra,0($sp)
    # Line 4743
    sw	$s8,0($v0)
    # Line 4751
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glMgrInsertModule

# Function: __glMgrDeleteModule
# Declared: Line 4755 (Source lines: 4756-4763)
# Address: 0x0daeef60 - 0x0daeefb4 (Size: 84 bytes, Frame: 32)
.globl __glMgrDeleteModule
.ent __glMgrDeleteModule
__glMgrDeleteModule:
    # Line 4756
    addiu	$sp,$sp,-32
    # Line 4759
    lw	$v0,4($a0)
    lw	$v1,0($a0)
    # Line 4756
    move	$a1,$a0
    # Line 4757
    lw	$a0,__glCurrentContext
    # Line 4759
    sw	$v0,4($v1)
    sd	$gp,8($sp)
    # Line 4760
    lw	$v1,4($a1)
    lw	$v0,0($a1)
    # Line 4756
    lui	$at,0x11
    addiu	$at,$at,-2248
    # Line 4760
    sw	$v0,0($v1)
    # Line 4756
    addu	$gp,$t9,$at
    # Line 4762
    lw	$t9,12($a0)
    sd	$ra,0($sp)
    jalr	$t9
    nop
    # Line 4763
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrDeleteModule

# Function: __glMgrFreeChain
# Declared: Line 4766 (Source lines: 4767-4781)
# Address: 0x0daeefb4 - 0x0daef028 (Size: 116 bytes, Frame: 192)
.globl __glMgrFreeChain
.ent __glMgrFreeChain
__glMgrFreeChain:
    # Line 4767
    addiu	$sp,$sp,-64
    sd	$s5,8($sp)
    # Line 4769
    lw	$s5,__glCurrentContext
    sd	$s1,24($sp)
    # Line 4767
    move	$s1,$a0
    sd	$gp,16($sp)
    sd	$s0,0($sp)
    # Line 4771
    lw	$s0,4($a0)
    # Line 4767
    lui	$at,0x11
    addiu	$at,$at,-2332
    # Line 4771
    beq	$a0,$s0,.L0daef008
    # Line 4767
    addu	$gp,$t9,$at
    sd	$ra,32($sp)
    # Line 4776
    lw	$t9,12($s5)
.L0daeefec:
    # Line 4775
    lw	$s0,4($s0)
    # Line 4776
    move	$a0,$s5
    jalr	$t9
    lw	$a1,0($s0)
    bnel	$s1,$s0,.L0daeefec
    lw	$t9,12($s5)
    ld	$ra,32($sp)
.L0daef008:
    ld	$gp,16($sp)
    # Line 4781
    ld	$s0,0($sp)
    # Line 4780
    sw	$s1,0($s1)
    # Line 4779
    sw	$s1,4($s1)
    # Line 4781
    ld	$s1,24($sp)
    ld	$s5,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrFreeChain

# Function: __glMgrOptimizationFixups
# Declared: Line 4784 (Source lines: 4785-4795)
# Address: 0x0daef028 - 0x0daef08c (Size: 100 bytes, Frame: 0)
.globl __glMgrOptimizationFixups
.ent __glMgrOptimizationFixups
__glMgrOptimizationFixups:
    # Line 4785
    lw	$at,996($a1)
    # Line 4793
    lui	$v1,0x1
    # Line 4785
    andi	$at,$at,0x1
    beqz	$at,.L0daef084
    # Line 4793
    addu	$v1,$a0,$v1
    # Line 4789
    lw	$v0,1008($a1)
    # Line 4792
    lwc1	$f0,1016($a1)
    # Line 4788
    lw	$a2,1004($a1)
    # Line 4790
    lwc1	$f1,1012($a1)
    # Line 4787
    lw	$at,1000($a1)
    # Line 4788
    sw	$a2,68($a1)
    # Line 4790
    swc1	$f1,80($a1)
    # Line 4787
    sw	$at,484($a1)
    # Line 4791
    lbu	$at,1020($a1)
    # Line 4792
    swc1	$f0,108($a1)
    # Line 4789
    sw	$v0,64($a1)
    # Line 4791
    sb	$at,105($a1)
    # Line 4793
    lw	$v0,-26652($v1)
    andi	$a2,$a2,0xf
    li	$at,-16
    and	$v0,$v0,$at
    or	$v0,$v0,$a2
    sw	$v0,-26652($v1)
.L0daef084:
    # Line 4795
    jr	$ra
    nop
.end __glMgrOptimizationFixups

# Function: __glMgrOptimizeFinalExpand
# Declared: Line 4798 (Source lines: 4799-4829)
# Address: 0x0daef08c - 0x0daef1e0 (Size: 340 bytes, Frame: 208)
.globl __glMgrOptimizeFinalExpand
.ent __glMgrOptimizeFinalExpand
__glMgrOptimizeFinalExpand:
    # Line 4799
    addiu	$sp,$sp,-80
    sd	$gp,40($sp)
    lui	$v0,0x11
    addiu	$v0,$v0,-2548
    addu	$gp,$t9,$v0
    # Line 4807
    lwc1	$f0,_lit_3f800000
    # Line 4804
    mtc1	$zero,$f4
    # Line 4807
    swc1	$f0,12($sp)
    # Line 4806
    swc1	$f4,8($sp)
    # Line 4805
    swc1	$f4,4($sp)
    # Line 4804
    swc1	$f4,0($sp)
    sd	$s0,16($sp)
    # Line 4809
    lw	$s0,32108($a0)
    sd	$s1,24($sp)
    lw	$at,16($s0)
    sd	$s5,32($sp)
    li	$s5,226
    beq	$at,$s5,.L0daef114
    # Line 4799
    move	$s1,$a1
    b	.L0daef0f0
    sd	$ra,48($sp)
    # Line 4816
    lw	$s0,4($s0)
.L0daef0e4:
    lw	$v1,16($s0)
    beq	$v1,$s5,.L0daef110
    lwc1	$f4,0($sp)
.L0daef0f0:
    # Line 4809
    lw	$t9,12($s0)
    beqzl	$t9,.L0daef0e4
    # Line 4816
    lw	$s0,4($s0)
    # Line 4814
    lw	$a1,24($s0)
    jalr	$t9
    addiu	$a0,$sp,0
    b	.L0daef0e4
    # Line 4816
    lw	$s0,4($s0)
.L0daef110:
    ld	$ra,48($sp)
.L0daef114:
    # Line 4819
    lw	$a0,24($s0)
    addiu	$a0,$a0,4
    # Line 4821
    lwc1	$f1,0($a0)
    c.eq.s	$f1,$f4
    nop
    bc1t	.L0daef13c
    ld	$s5,32($sp)
    lw	$a2,252($s1)
    andi	$a2,$a2,0x8
    beqz	$a2,.L0daef1cc
.L0daef13c:
    lwc1	$f3,4($sp)
    lwc1	$f2,4($a0)
    c.eq.s	$f2,$f3
    nop
    bc1t	.L0daef164
    lwc1	$f1,8($sp)
    lw	$at,252($s1)
    andi	$at,$at,0x4
    beqz	$at,.L0daef1cc
    lwc1	$f1,8($sp)
.L0daef164:
    lwc1	$f0,8($a0)
    c.eq.s	$f0,$f1
    nop
    bc1t	.L0daef188
    lwc1	$f3,12($sp)
    lw	$v0,252($s1)
    andi	$v0,$v0,0x2
    beqz	$v0,.L0daef1cc
    lwc1	$f3,12($sp)
.L0daef188:
    lwc1	$f2,12($a0)
    c.eq.s	$f2,$f3
    nop
    bc1t	.L0daef1ac
    # Line 4826
    nop	# was lw $t9, -30064($gp) # &__glMgrDeleteModule
    # Line 4821
    lw	$v1,252($s1)
    andi	$v1,$v1,0x1
    beqz	$v1,.L0daef1cc
    # Line 4826
    nop	# was lw $t9, -30064($gp) # &__glMgrDeleteModule
.L0daef1ac:
    sd	$ra,48($sp)
    bal __glMgrDeleteModule
    move	$a0,$s0
    # Line 4827
    lw	$a2,256($s1)
    li	$ra,-18433
    and	$a2,$a2,$ra
    ld	$ra,48($sp)
    sw	$a2,256($s1)
.L0daef1cc:
    ld	$gp,40($sp)
    # Line 4829
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrOptimizeFinalExpand

# Function: __glMgrOptimizeCILUT
# Declared: Line 4836 (Source lines: 4837-4925)
# Address: 0x0daef1e0 - 0x0daef414 (Size: 564 bytes, Frame: 192)
.globl __glMgrOptimizeCILUT
.ent __glMgrOptimizeCILUT
__glMgrOptimizeCILUT:
    # Line 4841
    move	$a3,$zero
    # Line 4845
    li	$v0,230
    # Line 4837
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    move	$s0,$a1
    # Line 4843
    sw	$zero,32648($a0)
    # Line 4845
    lw	$a4,32108($a0)
    # Line 4844
    sw	$zero,32652($a0)
    sd	$gp,32($sp)
    # Line 4845
    lw	$at,16($a4)
    # Line 4837
    lui	$v1,0x11
    addiu	$v1,$v1,-2888
    # Line 4845
    beq	$at,$v0,.L0daef2d8
    # Line 4837
    addu	$gp,$t9,$v1
.L0daef218:
    # Line 4871
    lw	$a2,1028($s0)
.L0daef21c:
    sd	$a0,16($sp)
    # Line 4872
    li	$at,-5
    # Line 4871
    ori	$a2,$a2,0x8
    # Line 4872
    and	$a2,$a2,$at
    beqz	$a3,.L0daef2c8
    sw	$a2,1028($s0)
    # Line 4875
    lw	$a0,12($sp)
    # Line 4874
    lw	$a3,996($s0)
    # Line 4875
    # lw $t9, -30064($gp) # &__glMgrDeleteModule
    sd	$ra,40($sp)
    # Line 4874
    ori	$a3,$a3,0x1
    # Line 4875
    bal __glMgrDeleteModule
    # Line 4874
    sw	$a3,996($s0)
    # Line 4876
    # lw $t9, -30064($gp) # &__glMgrDeleteModule
    bal __glMgrDeleteModule
    lw	$a0,0($sp)
    # Line 4877
    # lw $t9, -30064($gp) # &__glMgrDeleteModule
    bal __glMgrDeleteModule
    lw	$a0,8($sp)
    # Line 4879
    lw	$v1,4($sp)
    # Line 4882
    li	$a2,2
    # Line 4879
    lw	$v1,24($v1)
    # Line 4882
    li	$a3,3
    # Line 4880
    li	$v0,16
    # Line 4879
    sw	$zero,8($v1)
    # Line 4881
    li	$at,-3
    lw	$ra,248($s0)
    # Line 4880
    sw	$v0,484($s0)
    # Line 4882
    lw	$a1,64($s0)
    # Line 4881
    and	$ra,$ra,$at
    sw	$ra,248($s0)
    # Line 4882
    beqz	$a1,.L0daef37c
    ld	$ra,40($sp)
    li	$a4,1
    beq	$a4,$a1,.L0daef380
    # Line 4889
    lui	$v0,0x1
    # Line 4882
    beql	$a1,$a2,.L0daef2cc
    ld	$gp,32($sp)
    beq	$a3,$a1,.L0daef2c8
    # Line 4909
    lwc1	$f0,_lit_40000000
    # Line 4882
    li	$at,4
    beq	$a1,$at,.L0daef3c4
    # Line 4911
    ld	$v1,16($sp)
.L0daef2c8:
    ld	$gp,32($sp)
.L0daef2cc:
    # Line 4925
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daef2d8:
    # Line 4847
    lw	$a4,4($a4)
    beqz	$a4,.L0daef218
    li	$a1,229
    lw	$v0,16($a4)
    bnel	$v0,$a1,.L0daef21c
    # Line 4871
    lw	$a2,1028($s0)
    # Line 4849
    sw	$a4,0($sp)
    # Line 4850
    lw	$a4,4($a4)
    beqzl	$a4,.L0daef21c
    # Line 4871
    lw	$a2,1028($s0)
    # Line 4850
    lw	$v1,16($a4)
    li	$a2,226
    beq	$v1,$a2,.L0daef40c
    nop
.L0daef310:
    # Line 4853
    beqzl	$a4,.L0daef21c
    # Line 4871
    lw	$a2,1028($s0)
    # Line 4853
    lw	$at,16($a4)
    li	$v0,219
    bnel	$at,$v0,.L0daef21c
    # Line 4871
    lw	$a2,1028($s0)
    # Line 4856
    sw	$a4,4($sp)
    # Line 4857
    lw	$a4,4($a4)
    beqzl	$a4,.L0daef21c
    # Line 4871
    lw	$a2,1028($s0)
    # Line 4857
    lw	$v1,16($a4)
    bnel	$v1,$a1,.L0daef21c
    # Line 4871
    lw	$a2,1028($s0)
    # Line 4859
    sw	$a4,8($sp)
    # Line 4860
    lw	$a4,4($a4)
    beqzl	$a4,.L0daef21c
    # Line 4871
    lw	$a2,1028($s0)
    # Line 4860
    lw	$a2,16($a4)
    li	$at,222
    bnel	$a2,$at,.L0daef21c
    # Line 4871
    lw	$a2,1028($s0)
    # Line 4862
    lw	$v0,4($a4)
    addiu	$v1,$a0,32104
    bne	$v0,$v1,.L0daef218
    sw	$a4,12($sp)
    b	.L0daef218
    # Line 4864
    li	$a3,1
.L0daef37c:
    # Line 4889
    lui	$v0,0x1
.L0daef380:
    # Line 4887
    lw	$a2,256($s0)
    # Line 4886
    li	$v1,-9
    # Line 4885
    lw	$at,1028($s0)
    # Line 4887
    ori	$a2,$a2,0x6000
    sw	$a2,256($s0)
    # Line 4885
    ori	$at,$at,0x4
    # Line 4886
    and	$at,$at,$v1
    sw	$at,1028($s0)
    # Line 4889
    ld	$at,16($sp)
    # Line 4888
    li	$v1,3
    sw	$v1,64($s0)
    # Line 4889
    addu	$at,$at,$v0
    lw	$a2,-26652($at)
    li	$v0,-16
    and	$a2,$a2,$v0
    # Line 4890
    b	.L0daef2c8
    # Line 4889
    sw	$a2,-26652($at)
.L0daef3c4:
    # Line 4908
    sw	$a4,68($s0)
    # Line 4907
    sw	$a3,64($s0)
    # Line 4909
    swc1	$f0,80($s0)
    # Line 4910
    lw	$v0,88($s0)
    # Line 4911
    lui	$a2,0x1
    # Line 4910
    li	$at,8
    sll	$v0,$v0,0x1
    andi	$v0,$v0,0x7
    subu	$at,$at,$v0
    andi	$at,$at,0x7
    sb	$at,105($s0)
    # Line 4911
    addu	$v1,$v1,$a2
    lw	$v0,-26652($v1)
    li	$a2,-16
    and	$v0,$v0,$a2
    ori	$v0,$v0,0x1
    b	.L0daef2c8
    sw	$v0,-26652($v1)
.L0daef40c:
    b	.L0daef310
    # Line 4853
    lw	$a4,4($a4)
.end __glMgrOptimizeCILUT

# Function: __glMgrOptimizeRGBLUT
# Declared: Line 4933 (Source lines: 4935-4935)
# Address: 0x0daef414 - 0x0daef41c (Size: 8 bytes, Frame: 0)
.globl __glMgrOptimizeRGBLUT
.ent __glMgrOptimizeRGBLUT
__glMgrOptimizeRGBLUT:
    # Line 4935
    jr	$ra
    nop
.end __glMgrOptimizeRGBLUT

# Function: AdjustLUTI2F
# Declared: Line 4938 (Source lines: 4941-4984)
# Address: 0x0daef41c - 0x0daef52c (Size: 272 bytes, Frame: 0)
.ent AdjustLUTI2F
AdjustLUTI2F:
    # Line 4941
    lw	$a5,__glCurrentContext
    # Line 4944
    sw	$zero,32660($a5)
    # Line 4943
    sw	$zero,32656($a5)
    # Line 4945
    lw	$a4,60($a0)
    li	$v0,2
    li	$at,1
    beqz	$a4,.L0daef48c
    li	$a0,4
    beql	$a4,$at,.L0daef490
    # Line 4948
    lw	$a3,16($a1)
    # Line 4945
    beq	$a4,$v0,.L0daef4b0
    # Line 4962
    li	$at,-6
    # Line 4945
    li	$v1,3
    beql	$a4,$v1,.L0daef4b4
    # Line 4959
    lw	$a3,16($a1)
    # Line 4945
    beq	$a4,$a0,.L0daef4d8
    # Line 4970
    li	$at,-24
.L0daef460:
    # Line 4980
    sw	$zero,12($a2)
    # Line 4983
    la	$a1,SYMBOL_LOCATION
    # Line 4981
    addiu	$v0,$a5,32656
    # Line 4982
    li	$at,233
    # Line 4979
    la	$v1,__glMgrInitShiftAdd
    # Line 4982
    sw	$at,16($a2)
    # Line 4981
    sw	$v0,24($a2)
    # Line 4979
    sw	$v1,8($a2)
    # Line 4983
    lw	$a1,432($a1)
    # Line 4984
    jr	$ra
    # Line 4983
    sw	$a1,20($a2)
.L0daef48c:
    # Line 4948
    lw	$a3,16($a1)
.L0daef490:
    slti	$a0,$a3,257
    bnez	$a0,.L0daef50c
    # Line 4951
    li	$v0,2
    # Line 4949
    slti	$at,$a3,1025
    beqz	$at,.L0daef4fc
    # Line 4953
    li	$at,4
    # Line 4951
    b	.L0daef460
    sw	$v0,32656($a5)
.L0daef4b0:
    # Line 4959
    lw	$a3,16($a1)
.L0daef4b4:
    # Line 4960
    li	$a0,-8
    # Line 4959
    slti	$v1,$a3,257
    bnez	$v1,.L0daef51c
    # Line 4964
    li	$v0,-4
    # Line 4960
    slti	$a0,$a3,1025
    beqz	$a0,.L0daef504
    nop
    # Line 4962
    b	.L0daef460
    sw	$at,32656($a5)
.L0daef4d8:
    # Line 4969
    lw	$a3,16($a1)
    slti	$v0,$a3,257
    bnez	$v0,.L0daef524
    # Line 4972
    li	$a0,-22
    # Line 4970
    slti	$v1,$a3,1025
    beqz	$v1,.L0daef514
    # Line 4974
    li	$v1,-20
    # Line 4972
    b	.L0daef460
    sw	$a0,32656($a5)
.L0daef4fc:
    b	.L0daef460
    # Line 4953
    sw	$at,32656($a5)
.L0daef504:
    b	.L0daef460
    # Line 4964
    sw	$v0,32656($a5)
.L0daef50c:
    # Line 4949
    b	.L0daef460
    sw	$zero,32656($a5)
.L0daef514:
    b	.L0daef460
    # Line 4974
    sw	$v1,32656($a5)
.L0daef51c:
    # Line 4960
    b	.L0daef460
    sw	$a0,32656($a5)
.L0daef524:
    # Line 4970
    b	.L0daef460
    sw	$at,32656($a5)
.end AdjustLUTI2F

# Function: __glMgrOptimizeColorTable
# Declared: Line 4991 (Source lines: 4992-5204)
# Address: 0x0daef52c - 0x0daefca0 (Size: 1908 bytes, Frame: 128)
.globl __glMgrOptimizeColorTable
.ent __glMgrOptimizeColorTable
__glMgrOptimizeColorTable:
    # Line 4999
    move	$a2,$zero
    # Line 5002
    sw	$zero,32668($a0)
    # Line 5001
    sw	$zero,32664($a0)
    # Line 4992
    addiu	$sp,$sp,-128
    sd	$s0,48($sp)
    move	$s0,$a1
    sd	$s1,64($sp)
    move	$s1,$a0
    sd	$gp,88($sp)
    # Line 5003
    lw	$a4,32108($a0)
    # Line 4992
    lui	$at,0x11
    addiu	$at,$at,-3732
    # Line 5003
    beqz	$a4,.L0daef574
    # Line 4992
    addu	$gp,$t9,$at
    # Line 5003
    lw	$v0,16($a4)
    li	$a0,229
    beql	$v0,$a0,.L0daef838
    # Line 5005
    sw	$a4,0($sp)
.L0daef574:
    # Line 5007
    beqz	$a2,.L0daef638
    # Line 5035
    lw	$a0,8($sp)
    # Line 5032
    lw	$a1,996($s0)
    # Line 5033
    lw	$v1,0($sp)
    sd	$a0,80($sp)
    # Line 5032
    ori	$a1,$a1,0x1
    sw	$a1,996($s0)
    sd	$v1,72($sp)
    # Line 5033
    lw	$v1,24($v1)
    # Line 5035
    lw	$a0,24($a0)
    lwc1	$f1,0($v1)
    lwc1	$f0,0($a0)
    mul.s	$f0,$f0,$f1
    # Line 5036
    # lw $t9, -30064($gp) # &__glMgrDeleteModule
    sd	$ra,96($sp)
    lw	$a0,16($sp)
    bal __glMgrDeleteModule
    # Line 5035
    swc1	$f0,0($v1)
    # Line 5037
    # lw $t9, -30064($gp) # &__glMgrDeleteModule
    bal __glMgrDeleteModule
    ld	$a0,80($sp)
    # Line 5038
    # lw $t9, -30064($gp) # &__glMgrDeleteModule
    bal __glMgrDeleteModule
    lw	$a0,20($sp)
    # Line 5039
    lw	$a4,248($s0)
    # Line 5041
    lw	$a1,12($sp)
    # Line 5039
    li	$ra,-3
    and	$a4,$a4,$ra
    sw	$a4,248($s0)
    # Line 5041
    lw	$a4,24($a1)
    # Line 5042
    lw	$a0,0($a4)
    andi	$a3,$a0,0x1000
    beqz	$a3,.L0daef76c
    ld	$ra,96($sp)
    # Line 5044
    li	$a0,0x838c
    addu	$a0,$s1,$a0
.L0daef604:
    # Line 5050
    lw	$a5,64($s0)
    li	$a2,2
    beqz	$a5,.L0daef64c
    li	$a7,1
    beq	$a7,$a5,.L0daef650
    # Line 5053
    li	$t0,-8
    # Line 5050
    beq	$a2,$a5,.L0daef6d0
    li	$a4,4
    li	$a6,3
    beq	$a6,$a5,.L0daef6d0
    # Line 5168
    lwc1	$f2,_lit_40000000
    # Line 5050
    beq	$a4,$a5,.L0daef780
    # Line 5170
    lui	$v1,0x1
.L0daef638:
    ld	$gp,88($sp)
    # Line 5204
    ld	$s0,48($sp)
    ld	$s1,64($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0daef64c:
    # Line 5053
    li	$t0,-8
.L0daef650:
    lw	$a2,424($s0)
    addiu	$a7,$s0,428
    lui	$a3,0x100
    and	$a2,$a2,$a3
    beqz	$a2,.L0daef948
    li	$a2,6406
    lw	$at,12($a0)
    addiu	$a5,$s1,32664
    sd	$a0,56($sp)
    bne	$at,$a2,.L0daef73c
    sd	$a1,24($sp)
    sd	$a7,40($sp)
    sd	$a5,32($sp)
    ld	$a2,72($sp)
    # Line 5058
    ld	$a1,56($sp)
    move	$a0,$s0
    # Line 5056
    li	$v0,16
    # Line 5058
    # lw $t9, -32712($gp) # &sub_0daf0000
    # Line 5055
    lw	$v1,996($s0)
    # Line 5056
    sw	$v0,484($s0)
    # Line 5058
    addiu	$t9,$t9,-3044
    # Line 5055
    ori	$v1,$v1,0x2
    sw	$v1,996($s0)
    # Line 5058
    bal __glMgrOptimizeRGBLUT
    # Line 5057
    sw	$zero,8($a4)
    ld	$a4,56($sp)
    # Line 5058
    lw	$a4,16($a4)
    slti	$at,$a4,257
    beqz	$at,.L0daef8dc
    li	$a0,-8
    # Line 5060
    b	.L0daef8f8
    sw	$zero,32664($s1)
.L0daef6d0:
    # Line 5133
    lw	$at,12($a0)
    sd	$a0,56($sp)
    li	$v0,6406
    bne	$at,$v0,.L0daef638
    sd	$a1,24($sp)
    ld	$a2,72($sp)
    # Line 5138
    ld	$a1,56($sp)
    # lw $t9, -32712($gp) # &sub_0daf0000
    # Line 5137
    ld	$v1,24($sp)
    # Line 5134
    lw	$a3,996($s0)
    # Line 5135
    li	$a0,16
    sw	$a0,484($s0)
    # Line 5134
    ori	$a3,$a3,0x2
    sw	$a3,996($s0)
    # Line 5138
    move	$a0,$s0
    # Line 5137
    lw	$v1,24($v1)
    # Line 5138
    addiu	$t9,$t9,-3044
    bal __glMgrOptimizeRGBLUT
    # Line 5137
    sw	$zero,8($v1)
    ld	$a4,56($sp)
    # Line 5138
    lw	$a4,16($a4)
    slti	$at,$a4,257
    beqz	$at,.L0daefa58
    li	$a2,2
    # Line 5140
    li	$at,8
    b	.L0daefa74
    sw	$at,32664($s1)
.L0daef73c:
    # Line 5087
    move	$a3,$zero
    la	$a2,__glMgrInitShiftAdd
    li	$a1,233
    move	$a0,$a7
    ld	$s0,48($sp)
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    # Line 5086
    sw	$t0,32664($s1)
    # Line 5087
    bal __glMgrAddModule
    lw	$a4,1064($a4)
    b	.L0daef638
    ld	$ra,96($sp)
.L0daef76c:
    # Line 5044
    andi	$at,$a0,0x2000
    beqz	$at,.L0daefa00
    # Line 5046
    li	$a0,0x8404
    b	.L0daef604
    addu	$a0,$s1,$a0
.L0daef780:
    # Line 5169
    li	$a3,8
    # Line 5166
    sw	$a6,64($s0)
    # Line 5169
    lw	$at,88($s0)
    # Line 5167
    sw	$a7,68($s0)
    # Line 5168
    swc1	$f2,80($s0)
    # Line 5169
    sll	$at,$at,0x1
    andi	$at,$at,0x7
    subu	$a3,$a3,$at
    andi	$a3,$a3,0x7
    sb	$a3,105($s0)
    # Line 5170
    addu	$v1,$s1,$v1
    lw	$v0,-26652($v1)
    li	$a3,-16
    and	$v0,$v0,$a3
    ori	$v0,$v0,0x1
    sw	$v0,-26652($v1)
    lw	$a3,12($a0)
    sd	$a0,56($sp)
    li	$at,6406
    bne	$a3,$at,.L0daef638
    sd	$a1,24($sp)
    ld	$a2,72($sp)
    # Line 5176
    ld	$a1,56($sp)
    # lw $t9, -32712($gp) # &sub_0daf0000
    # Line 5175
    ld	$v0,24($sp)
    # Line 5172
    lw	$a0,996($s0)
    # Line 5173
    li	$v1,16
    sw	$v1,484($s0)
    # Line 5172
    ori	$a0,$a0,0x2
    sw	$a0,996($s0)
    # Line 5176
    addiu	$t9,$t9,-3044
    # Line 5175
    lw	$v0,24($v0)
    # Line 5176
    move	$a0,$s0
    bal __glMgrOptimizeRGBLUT
    # Line 5175
    sw	$zero,8($v0)
    # Line 5177
    ld	$v0,24($sp)
    ld	$a4,56($sp)
    li	$at,263
    sw	$at,16($v0)
    lw	$a4,16($a4)
    slti	$a3,$a4,257
    beqz	$a3,.L0daefad8
    # Line 5179
    slti	$at,$a4,1025
    li	$v1,8
    b	.L0daefaf0
    sw	$v1,32664($s1)
.L0daef838:
    # Line 5006
    lw	$a4,4($a4)
    beqz	$a4,.L0daef574
    nop
    lw	$a3,16($a4)
    li	$at,226
    beql	$a3,$at,.L0daefad0
    # Line 5009
    sw	$a4,4($sp)
.L0daef854:
    # Line 5010
    beqz	$a4,.L0daef574
    nop
    lw	$v0,16($a4)
    li	$a1,222
    bne	$v0,$a1,.L0daef574
    nop
    # Line 5013
    sw	$a4,8($sp)
    # Line 5014
    lw	$a4,4($a4)
    beqz	$a4,.L0daef574
    nop
    lw	$v1,16($a4)
    li	$a3,219
    bne	$v1,$a3,.L0daef574
    nop
    # Line 5016
    sw	$a4,12($sp)
    # Line 5017
    lw	$a4,4($a4)
    beqz	$a4,.L0daef574
    nop
    lw	$at,16($a4)
    bne	$at,$a0,.L0daef574
    nop
    # Line 5019
    sw	$a4,16($sp)
    # Line 5020
    lw	$a4,4($a4)
    beqz	$a4,.L0daef574
    nop
    lw	$v0,16($a4)
    bne	$v0,$a1,.L0daef574
    nop
    # Line 5022
    lw	$v1,4($a4)
    addiu	$a3,$s1,32104
    bne	$v1,$a3,.L0daef574
    sw	$a4,20($sp)
    b	.L0daef574
    # Line 5024
    li	$a2,1
.L0daef8dc:
    # Line 5060
    slti	$at,$a4,1025
    beqz	$at,.L0daef8f0
    # Line 5062
    li	$v0,-2
    b	.L0daef8f8
    sw	$v0,32664($s1)
.L0daef8f0:
    # Line 5064
    li	$v1,-4
    sw	$v1,32664($s1)
.L0daef8f8:
    # Line 5066
    sw	$a0,32668($s1)
    lw	$a3,56($s0)
    li	$at,2
    beq	$a3,$at,.L0daefa0c
    ld	$a5,32($sp)
    # Line 5077
    move	$a3,$zero
    la	$a2,__glMgrInitShiftAddRGB
    li	$a1,264
    ld	$a0,40($sp)
    ld	$s0,48($sp)
    ld	$s1,64($sp)
    la	$a4,SYMBOL_LOCATION
    # Line 5076
    ld	$a7,24($sp)
    # Line 5077
    # lw $t9, -30072($gp) # &__glMgrAddModule
    # Line 5076
    li	$a6,262
    sw	$a6,16($a7)
    # Line 5077
    bal __glMgrAddModule
    lw	$a4,1064($a4)
    b	.L0daef638
    ld	$ra,96($sp)
.L0daef948:
    # Line 5097
    lui	$v1,0x1
    # Line 5095
    lwc1	$f3,_lit_40000000
    # Line 5094
    li	$v0,1
    sw	$v0,68($s0)
    # Line 5095
    swc1	$f3,80($s0)
    # Line 5093
    li	$a3,3
    # Line 5096
    lw	$at,88($s0)
    # Line 5093
    sw	$a3,64($s0)
    # Line 5096
    li	$a3,8
    sll	$at,$at,0x1
    andi	$at,$at,0x7
    subu	$a3,$a3,$at
    andi	$a3,$a3,0x7
    sb	$a3,105($s0)
    # Line 5097
    addu	$v1,$s1,$v1
    lw	$v0,-26652($v1)
    li	$a3,-16
    and	$v0,$v0,$a3
    ori	$v0,$v0,0x1
    sw	$v0,-26652($v1)
    lw	$at,12($a0)
    sd	$a0,56($sp)
    bne	$at,$a2,.L0daef638
    sd	$a1,24($sp)
    ld	$a2,72($sp)
    # Line 5103
    ld	$a1,56($sp)
    # lw $t9, -32712($gp) # &sub_0daf0000
    # Line 5102
    ld	$a4,24($sp)
    # Line 5099
    lw	$a6,996($s0)
    # Line 5100
    li	$a5,16
    sw	$a5,484($s0)
    # Line 5099
    ori	$a6,$a6,0x2
    sw	$a6,996($s0)
    # Line 5103
    move	$a0,$s0
    # Line 5102
    lw	$a4,24($a4)
    # Line 5103
    addiu	$t9,$t9,-3044
    bal __glMgrOptimizeRGBLUT
    # Line 5102
    sw	$zero,8($a4)
    ld	$a4,56($sp)
    # Line 5103
    lw	$a4,16($a4)
    slti	$at,$a4,257
    beqz	$at,.L0daefbdc
    # Line 5105
    slti	$at,$a4,1025
    li	$at,8
    b	.L0daefbf4
    sw	$at,32664($s1)
.L0daefa00:
    # Line 5048
    li	$a0,0x8440
    b	.L0daef604
    addu	$a0,$s1,$a0
.L0daefa0c:
    # Line 5070
    lw	$a0,4($sp)
    ld	$s0,48($sp)
    ld	$s1,64($sp)
    # lw $t9, -30064($gp) # &__glMgrDeleteModule
    # Line 5069
    ld	$a2,24($sp)
    li	$a1,263
    # Line 5070
    bal __glMgrDeleteModule
    # Line 5069
    sw	$a1,16($a2)
    ld	$a0,40($sp)
    # Line 5071
    ld	$a5,32($sp)
    move	$a3,$zero
    la	$a2,__glMgrInitShiftAddLuminance
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    li	$a1,265
    bal __glMgrAddModule
    lw	$a4,1064($a4)
    b	.L0daef638
    ld	$ra,96($sp)
.L0daefa58:
    # Line 5140
    slti	$at,$a4,1025
    beqz	$at,.L0daefa6c
    # Line 5142
    li	$v0,6
    b	.L0daefa74
    sw	$v0,32664($s1)
.L0daefa6c:
    # Line 5144
    li	$v1,4
    sw	$v1,32664($s1)
.L0daefa74:
    # Line 5146
    sw	$zero,32668($s1)
    addiu	$at,$s0,428
    lw	$a3,56($s0)
    addiu	$v0,$s1,32664
    sd	$v0,32($sp)
    beq	$a3,$a2,.L0daefb50
    sd	$at,40($sp)
    ld	$a5,32($sp)
    # Line 5157
    move	$a3,$zero
    la	$a2,__glMgrInitShiftAddRGB
    li	$a1,264
    ld	$a0,40($sp)
    ld	$s0,48($sp)
    ld	$s1,64($sp)
    la	$a4,SYMBOL_LOCATION
    # Line 5156
    ld	$a7,24($sp)
    # Line 5157
    # lw $t9, -30072($gp) # &__glMgrAddModule
    # Line 5156
    li	$a6,262
    sw	$a6,16($a7)
    # Line 5157
    bal __glMgrAddModule
    lw	$a4,1064($a4)
    b	.L0daef638
    ld	$ra,96($sp)
.L0daefad0:
    b	.L0daef854
    # Line 5010
    lw	$a4,4($a4)
.L0daefad8:
    # Line 5179
    beqz	$at,.L0daefae8
    # Line 5181
    li	$v0,6
    b	.L0daefaf0
    sw	$v0,32664($s1)
.L0daefae8:
    li	$v1,4
    # Line 5183
    sw	$v1,32664($s1)
.L0daefaf0:
    # Line 5185
    addiu	$v0,$s0,428
    sw	$zero,32668($s1)
    li	$at,2
    lw	$a3,56($s0)
    addiu	$v1,$s1,32664
    sd	$v1,32($sp)
    beq	$a3,$at,.L0daefb9c
    sd	$v0,40($sp)
    ld	$a5,32($sp)
    # Line 5195
    move	$a3,$zero
    la	$a2,__glMgrInitShiftAddRGB
    li	$a1,264
    ld	$a0,40($sp)
    ld	$s0,48($sp)
    ld	$s1,64($sp)
    la	$a4,SYMBOL_LOCATION
    # Line 5194
    ld	$a7,24($sp)
    # Line 5195
    # lw $t9, -30072($gp) # &__glMgrAddModule
    # Line 5194
    li	$a6,262
    sw	$a6,16($a7)
    # Line 5195
    bal __glMgrAddModule
    lw	$a4,1064($a4)
    b	.L0daef638
    ld	$ra,96($sp)
.L0daefb50:
    # Line 5150
    lw	$a0,4($sp)
    ld	$s0,48($sp)
    ld	$s1,64($sp)
    # lw $t9, -30064($gp) # &__glMgrDeleteModule
    # Line 5149
    ld	$t1,24($sp)
    li	$t0,263
    # Line 5150
    bal __glMgrDeleteModule
    # Line 5149
    sw	$t0,16($t1)
    ld	$a0,40($sp)
    # Line 5151
    ld	$a5,32($sp)
    move	$a3,$zero
    la	$a2,__glMgrInitShiftAddLuminance
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    li	$a1,265
    bal __glMgrAddModule
    lw	$a4,1064($a4)
    b	.L0daef638
    ld	$ra,96($sp)
.L0daefb9c:
    # Line 5188
    # lw $t9, -30064($gp) # &__glMgrDeleteModule
    lw	$a0,4($sp)
    ld	$s0,48($sp)
    bal __glMgrDeleteModule
    ld	$s1,64($sp)
    ld	$a0,40($sp)
    # Line 5189
    ld	$a5,32($sp)
    move	$a3,$zero
    la	$a2,__glMgrInitShiftAddLuminance
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    li	$a1,265
    bal __glMgrAddModule
    lw	$a4,1064($a4)
    b	.L0daef638
    ld	$ra,96($sp)
.L0daefbdc:
    # Line 5105
    beqz	$at,.L0daefbec
    # Line 5107
    li	$v0,6
    b	.L0daefbf4
    sw	$v0,32664($s1)
.L0daefbec:
    # Line 5109
    li	$v1,4
    sw	$v1,32664($s1)
.L0daefbf4:
    # Line 5111
    addiu	$v0,$s0,428
    sw	$zero,32668($s1)
    li	$at,2
    lw	$a3,56($s0)
    addiu	$v1,$s1,32664
    sd	$v1,32($sp)
    beq	$a3,$at,.L0daefc54
    sd	$v0,40($sp)
    ld	$a5,32($sp)
    # Line 5122
    move	$a3,$zero
    la	$a2,__glMgrInitShiftAddRGB
    li	$a1,264
    ld	$a0,40($sp)
    ld	$s0,48($sp)
    ld	$s1,64($sp)
    la	$a4,SYMBOL_LOCATION
    # Line 5121
    ld	$a7,24($sp)
    # Line 5122
    # lw $t9, -30072($gp) # &__glMgrAddModule
    # Line 5121
    li	$a6,262
    sw	$a6,16($a7)
    # Line 5122
    bal __glMgrAddModule
    lw	$a4,1064($a4)
    b	.L0daef638
    ld	$ra,96($sp)
.L0daefc54:
    # Line 5115
    lw	$a0,4($sp)
    ld	$s0,48($sp)
    ld	$s1,64($sp)
    # lw $t9, -30064($gp) # &__glMgrDeleteModule
    # Line 5114
    ld	$t1,24($sp)
    li	$t0,263
    # Line 5115
    bal __glMgrDeleteModule
    # Line 5114
    sw	$t0,16($t1)
    ld	$a0,40($sp)
    # Line 5116
    ld	$a5,32($sp)
    move	$a3,$zero
    la	$a2,__glMgrInitShiftAddLuminance
    # lw $t9, -30072($gp) # &__glMgrAddModule
    la	$a4,SYMBOL_LOCATION
    li	$a1,265
    bal __glMgrAddModule
    lw	$a4,1064($a4)
    b	.L0daef638
    ld	$ra,96($sp)
.end __glMgrOptimizeColorTable

# Function: __glMgrOptimizeCIMask
# Declared: Line 5207 (Source lines: 5208-5257)
# Address: 0x0daefca0 - 0x0daefd8c (Size: 236 bytes, Frame: 32)
.globl __glMgrOptimizeCIMask
.ent __glMgrOptimizeCIMask
__glMgrOptimizeCIMask:
    # Line 5211
    li	$v0,230
    lw	$a4,32108($a0)
    # Line 5208
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 5211
    lw	$at,16($a4)
    # Line 5208
    lui	$v1,0x11
    addiu	$v1,$v1,-5640
    # Line 5211
    bne	$at,$v0,.L0daefd5c
    # Line 5208
    addu	$gp,$t9,$v1
    # Line 5216
    li	$v0,5122
    lw	$a3,52($a1)
    li	$a2,5120
    beq	$a3,$a2,.L0daefd68
    li	$at,5121
    beq	$a3,$at,.L0daefd68
    li	$a2,5124
    beq	$a3,$v0,.L0daefd74
    li	$at,5125
    li	$v1,5123
    beq	$a3,$v1,.L0daefd78
    # Line 5224
    li	$a1,0xffff
    # Line 5216
    beq	$a3,$a2,.L0daefd84
    # Line 5229
    li	$a1,-1
    # Line 5216
    beq	$a3,$at,.L0daefd80
    # Line 5233
    li	$a1,-1
    # Line 5235
    lw	$v0,24($a4)
.L0daefd08:
    lw	$v0,0($v0)
    # Line 5241
    li	$a2,235
    # Line 5235
    and	$v0,$v0,$a1
    bne	$v0,$a1,.L0daefd5c
    # Line 5239
    addiu	$v1,$a0,32104
    lw	$a1,4($a4)
    beqz	$a1,.L0daefd5c
    # Line 5241
    li	$v0,286
    # Line 5239
    beql	$v1,$a1,.L0daefd60
    ld	$gp,0($sp)
    # Line 5241
    lw	$a3,16($a1)
    beq	$a3,$a2,.L0daefd5c
    li	$at,277
    beql	$a3,$at,.L0daefd60
    ld	$gp,0($sp)
    beq	$a3,$v0,.L0daefd5c
    # Line 5252
    nop	# was lw $t9, -30064($gp) # &__glMgrDeleteModule
    sd	$ra,8($sp)
    bal __glMgrDeleteModule
    move	$a0,$a4
    ld	$ra,8($sp)
.L0daefd5c:
    ld	$gp,0($sp)
.L0daefd60:
    # Line 5257
    jr	$ra
    addiu	$sp,$sp,32
.L0daefd68:
    # Line 5219
    li	$a1,255
    # Line 5220
    b	.L0daefd08
    # Line 5235
    lw	$v0,24($a4)
.L0daefd74:
    # Line 5224
    li	$a1,0xffff
.L0daefd78:
    # Line 5225
    b	.L0daefd08
    # Line 5235
    lw	$v0,24($a4)
.L0daefd80:
    # Line 5229
    li	$a1,-1
.L0daefd84:
    # Line 5230
    b	.L0daefd08
    # Line 5235
    lw	$v0,24($a4)
.end __glMgrOptimizeCIMask

# Function: __glMgrOptimizeChain
# Declared: Line 5260 (Source lines: 5261-5299)
# Address: 0x0daefd8c - 0x0daefedc (Size: 336 bytes, Frame: 48)
.globl __glMgrOptimizeChain
.ent __glMgrOptimizeChain
__glMgrOptimizeChain:
    # Line 5262
    lw	$v1,__glCurrentContext
    # Line 5264
    sw	$zero,996($a0)
    # Line 5261
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$gp,8($sp)
    lui	$v0,0x11
    # Line 5264
    lw	$at,248($a0)
    # Line 5261
    addiu	$v0,$v0,-5876
    addu	$gp,$t9,$v0
    # Line 5264
    andi	$at,$at,0x4
    beqz	$at,.L0daefdd0
    sd	$v1,0($sp)
    ld	$gp,8($sp)
    # Line 5266
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daefdd0:
    lw	$a0,256($s0)
    andi	$a2,$a0,0x800
    beqz	$a2,.L0daefdf8
    # Line 5269
    nop	# was lw $t9, -30052($gp) # &__glMgrOptimizeFinalExpand
    ld	$a0,0($sp)
    sd	$ra,24($sp)
    bal __glMgrOptimizeFinalExpand
    move	$a1,$s0
    lw	$a0,256($s0)
    ld	$ra,24($sp)
.L0daefdf8:
    andi	$at,$a0,0x1000
    beqz	$at,.L0daefeb0
    # Line 5273
    nop	# was lw $t9, -30048($gp) # &__glMgrOptimizeCILUT
    ld	$a0,0($sp)
    sd	$ra,24($sp)
    bal __glMgrOptimizeCILUT
    move	$a1,$s0
    lw	$a0,424($s0)
    ld	$ra,24($sp)
.L0daefe1c:
    # Line 5275
    lui	$v0,0x200
    and	$v0,$a0,$v0
    beqz	$v0,.L0daefe44
    # Line 5279
    nop	# was lw $t9, -30040($gp) # &__glMgrOptimizeColorTable
    ld	$a0,0($sp)
    sd	$ra,24($sp)
    bal __glMgrOptimizeColorTable
    move	$a1,$s0
    lw	$a0,424($s0)
    ld	$ra,24($sp)
.L0daefe44:
    andi	$v1,$a0,0x4000
    beqz	$v1,.L0daefe64
    # Line 5287
    nop	# was lw $t9, -30036($gp) # &__glMgrOptimizeCIMask
    ld	$a0,0($sp)
    sd	$ra,24($sp)
    bal __glMgrOptimizeCIMask
    move	$a1,$s0
    ld	$ra,24($sp)
.L0daefe64:
    lw	$a2,996($s0)
    andi	$a2,$a2,0x1
    beqz	$a2,.L0daefea4
    ld	$gp,8($sp)
    # Line 5291
    lw	$at,484($s0)
    # Line 5292
    lw	$v0,68($s0)
    # Line 5293
    lw	$v1,64($s0)
    # Line 5296
    lwc1	$f1,108($s0)
    # Line 5295
    lbu	$a2,105($s0)
    # Line 5294
    lwc1	$f0,80($s0)
    # Line 5296
    swc1	$f1,1016($s0)
    # Line 5295
    sb	$a2,1020($s0)
    # Line 5294
    swc1	$f0,1012($s0)
    # Line 5293
    sw	$v1,1008($s0)
    # Line 5292
    sw	$v0,1004($s0)
    # Line 5291
    sw	$at,1000($s0)
.L0daefea4:
    # Line 5299
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daefeb0:
    # Line 5273
    lw	$a0,424($s0)
    andi	$at,$a0,0x10
    beqz	$at,.L0daefe1c
    # Line 5275
    nop	# was lw $t9, -30044($gp) # &__glMgrOptimizeRGBLUT
    ld	$a0,0($sp)
    sd	$ra,24($sp)
    bal __glMgrOptimizeRGBLUT
    move	$a1,$s0
    lw	$a0,424($s0)
    b	.L0daefe1c
    ld	$ra,24($sp)
.end __glMgrOptimizeChain

# Function: __glMgrBuildChain
# Declared: Line 5302 (Source lines: 5303-5398)
# Address: 0x0daefedc - 0x0daf02a4 (Size: 968 bytes, Frame: 208)
.globl __glMgrBuildChain
.ent __glMgrBuildChain
__glMgrBuildChain:
    # Line 5303
    addiu	$sp,$sp,-80
    sd	$ra,32($sp)
    sd	$s1,8($sp)
    # Line 5305
    lw	$s1,__glCurrentContext
    sd	$s0,16($sp)
    # Line 5303
    move	$s0,$a0
    sd	$gp,24($sp)
    lui	$v0,0x11
    addiu	$v0,$v0,-6212
    # Line 5305
    lw	$at,420($a0)
    lui	$v1,0x3
    nor	$v1,$v1,$zero
    and	$at,$at,$v1
    beqz	$at,.L0daf01cc
    # Line 5303
    addu	$gp,$t9,$v0
    # Line 5315
    addiu	$a0,$s0,428
    # lw $t9, -30060($gp) # &__glMgrFreeChain
    # Line 5313
    sw	$zero,256($s0)
    # Line 5312
    li	$v1,2
    # Line 5315
    bal __glMgrFreeChain
    # Line 5312
    sw	$v1,248($s0)
    # Line 5316
    # lw $t9, -30060($gp) # &__glMgrFreeChain
    addiu	$a0,$s0,456
    bal __glMgrFreeChain
    sd	$a0,0($sp)
    # Line 5320
    lui	$at,0x100e
    ori	$at,$at,0x8f03
    lw	$a1,424($s0)
    lui	$a2,0x3e9e
    ori	$a2,$a2,0x8ff3
    and	$a2,$a1,$a2
    beq	$a2,$at,.L0daeff88
    lui	$v0,0x1000
    ori	$v0,$v0,0x480c
    lui	$at,0x3002
    ori	$at,$at,0x483c
    and	$at,$a1,$at
    bne	$at,$v0,.L0daf0168
    lui	$v1,0x3021
    lw	$v0,52($s0)
    li	$v1,6656
    beq	$v0,$v1,.L0daf0168
    lui	$v1,0x3021
.L0daeff88:
    lw	$a3,40($s0)
.L0daeff8c:
    li	$a2,6410
    beq	$a3,$a2,.L0daf01b8
    lui	$a2,0x100
    lw	$a4,44($s0)
.L0daeff9c:
    beq	$a3,$a4,.L0daf00d0
    li	$at,6408
    beq	$a4,$at,.L0daf00c4
    lui	$v0,0x100
.L0daeffac:
    and	$v0,$a1,$v0
    beqz	$v0,.L0daeffbc
    li	$v1,0x8049
    beq	$a4,$v1,.L0daf01f4
.L0daeffbc:
    # Line 5334
    andi	$a2,$a1,0x8000
.L0daeffc0:
    beqz	$a2,.L0daf0120
    # Line 5338
    nop	# was lw $t9, -30096($gp) # &__glMgrBuildColorChainHead
    bal __glMgrBuildColorChainHead
    move	$a0,$s0
    # Line 5339
    # lw $t9, -30092($gp) # &__glMgrBuildColorChainTail
    bal __glMgrBuildColorChainTail
    move	$a0,$s0
.L0daeffdc:
    ld	$a0,0($sp)
.L0daeffe0:
    # Line 5369
    move	$a1,$zero
    move	$a5,$zero
    # lw $t9, -30072($gp) # &__glMgrAddModule
    move	$a4,$zero
    move	$a3,$zero
    bal __glMgrAddModule
    la	$a2,__glMgrInitPackingState
    # Line 5372
    # lw $t9, -30032($gp) # &__glMgrOptimizeChain
    bal __glMgrOptimizeChain
    move	$a0,$s0
    # Line 5376
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    move	$a0,$zero
    jal	__glMgrInitPixelPath
    move	$a1,$zero
    ld	$ra,32($sp)
    sd	$s2,48($sp)
    sd	$s5,56($sp)
    # Line 5378
    addiu	$s5,$s1,32104
    lw	$s2,32108($s1)
    beql	$s5,$s2,.L0daf005c
    # Line 5385
    lw	$s2,32136($s1)
    # Line 5381
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
.L0daf0038:
    lw	$a1,20($s2)
    jal	__glMgrInitPixelPath
    lw	$a0,16($s2)
    # Line 5382
    lw	$s2,4($s2)
    bne	$s5,$s2,.L0daf0038
    # Line 5381
    nop	# was lw $t9, -30256($gp) # &__glMgrInitPixelPath
    sd	$s4,40($sp)
    ld	$ra,32($sp)
    # Line 5385
    lw	$s2,32136($s1)
.L0daf005c:
    sd	$s4,40($sp)
    addiu	$s4,$s1,32132
    beq	$s4,$s2,.L0daf009c
    ld	$s5,56($sp)
    b	.L0daf0084
    lw	$a0,16($s2)
.L0daf0074:
    # Line 5390
    lw	$s2,4($s2)
.L0daf0078:
    beq	$s4,$s2,.L0daf009c
    ld	$ra,32($sp)
    # Line 5385
    lw	$a0,16($s2)
.L0daf0084:
    beqz	$a0,.L0daf0074
    # Line 5389
    nop	# was lw $t9, -30256($gp) # &__glMgrInitPixelPath
    jal	__glMgrInitPixelPath
    lw	$a1,20($s2)
    b	.L0daf0078
    # Line 5390
    lw	$s2,4($s2)
.L0daf009c:
    lw	$at,248($s0)
    ld	$s4,40($sp)
    andi	$at,$at,0x8
    beqz	$at,.L0daf0208
    ld	$s2,48($sp)
.L0daf00b0:
    ld	$gp,24($sp)
    # Line 5398
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daf00c4:
    # Line 5320
    li	$v0,0x8000
    bne	$a3,$v0,.L0daeffac
    lui	$v0,0x100
.L0daf00d0:
    lw	$v1,48($s0)
.L0daf00d4:
    lw	$a2,52($s0)
    bne	$v1,$a2,.L0daeffbc
    lui	$at,0x100
    and	$at,$a1,$at
    bnezl	$at,.L0daf00fc
    # Line 5331
    lw	$v1,248($s0)
    # Line 5320
    li	$v0,6406
    beq	$a4,$v0,.L0daeffc0
    # Line 5334
    andi	$a2,$a1,0x8000
    # Line 5331
    lw	$v1,248($s0)
.L0daf00fc:
    # Line 5334
    move	$a0,$s0
    # lw $t9, -30100($gp) # &__glMgrBuildFastPathChain
    # Line 5331
    ori	$v1,$v1,0x4
    # Line 5332
    li	$a1,-3
    and	$v1,$v1,$a1
    # Line 5334
    bal __glMgrBuildFastPathChain
    # Line 5332
    sw	$v1,248($s0)
    b	.L0daeffe0
    ld	$a0,0($sp)
.L0daf0120:
    # Line 5339
    andi	$a2,$a1,0x4000
    beqz	$a2,.L0daf0198
    # Line 5343
    nop	# was lw $t9, -30088($gp) # &__glMgrBuildCIChainHead
    bal __glMgrBuildCIChainHead
    move	$a0,$s0
    lw	$at,424($s0)
    lui	$v0,0x102
    and	$at,$at,$v0
    beqz	$at,.L0daf0234
    # Line 5347
    nop	# was lw $t9, -30084($gp) # &__glMgrBuildCItoColorChain
    bal __glMgrBuildCItoColorChain
    move	$a0,$s0
    # Line 5348
    # lw $t9, -30092($gp) # &__glMgrBuildColorChainTail
    bal __glMgrBuildColorChainTail
    move	$a0,$s0
    b	.L0daeffe0
    ld	$a0,0($sp)
    # Line 5320
    lui	$v1,0x3021
.L0daf0168:
    ori	$v1,$v1,0x82c
    and	$v1,$a1,$v1
    lui	$a2,0x1001
    ori	$a2,$a2,0x80c
    bne	$v1,$a2,.L0daeffc0
    # Line 5334
    andi	$a2,$a1,0x8000
    # Line 5320
    lw	$a2,52($s0)
    li	$at,6656
    beq	$a2,$at,.L0daeffc0
    # Line 5334
    andi	$a2,$a1,0x8000
    b	.L0daeff8c
    # Line 5320
    lw	$a3,40($s0)
.L0daf0198:
    # Line 5354
    lw	$v0,40($s0)
    li	$v1,6401
    beq	$v0,$v1,.L0daf0260
    # Line 5366
    nop	# was lw $t9, -30076($gp) # &__glMgrBuildDepthChain
    bal __glMgrBuildDepthChain
    move	$a0,$s0
    b	.L0daeffe0
    ld	$a0,0($sp)
.L0daf01b8:
    # Line 5320
    and	$a2,$a1,$a2
    beqz	$a2,.L0daeffc0
    # Line 5334
    andi	$a2,$a1,0x8000
    b	.L0daeff9c
    # Line 5320
    lw	$a4,44($s0)
.L0daf01cc:
    # Line 5308
    # lw $t9, -30056($gp) # &__glMgrOptimizationFixups
    move	$a0,$s1
    bal __glMgrOptimizationFixups
    move	$a1,$s0
    ld	$gp,24($sp)
    # Line 5309
    ld	$ra,32($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daf01f4:
    # Line 5320
    li	$at,6409
    bne	$a3,$at,.L0daeffc0
    # Line 5334
    andi	$a2,$a1,0x8000
    b	.L0daf00d4
    # Line 5320
    lw	$v1,48($s0)
.L0daf0208:
    # Line 5395
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$zero
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 5396
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    la	$a0,SYMBOL_LOCATION
    li	$a1,-1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,968($a0)
    b	.L0daf00b0
    ld	$ra,32($sp)
.L0daf0234:
    # Line 5352
    move	$a0,$s0
    # lw $t9, -30080($gp) # &__glMgrBuildCIChainTail
    lw	$a2,__glCurrentContext
    li	$a1,8
    bal __glMgrBuildCIChainTail
    lw	$a2,30788($a2)
    # Line 5354
    lw	$at,248($s0)
    li	$v0,-3
    and	$at,$at,$v0
    b	.L0daeffdc
    sw	$at,248($s0)
.L0daf0260:
    # Line 5359
    # lw $t9, -30088($gp) # &__glMgrBuildCIChainHead
    bal __glMgrBuildCIChainHead
    move	$a0,$s0
    # Line 5360
    lw	$a3,__glCurrentContext
    move	$a0,$s0
    li	$a1,4
    lw	$a3,31172($a3)
    # lw $t9, -30080($gp) # &__glMgrBuildCIChainTail
    li	$a2,2
    sllv	$a2,$a2,$a3
    bal __glMgrBuildCIChainTail
    addiu	$a2,$a2,-1
    # Line 5362
    lw	$at,248($s0)
    li	$v0,-3
    and	$at,$at,$v0
    b	.L0daeffdc
    sw	$at,248($s0)
.end __glMgrBuildChain

# Function: __glMgrInitPixelPipe
# Declared: Line 5401 (Source lines: 5401-5490)
# Address: 0x0daf02a4 - 0x0daf05ac (Size: 776 bytes, Frame: 224)
.globl __glMgrInitPixelPipe
.ent __glMgrInitPixelPipe
__glMgrInitPixelPipe:
    # Line 5408
    lw	$a1,1432($a0)
    # Line 5401
    addiu	$sp,$sp,-96
    sd	$s2,24($sp)
    # Line 5404
    lw	$s2,__glCurrentContext
    sd	$gp,40($sp)
    # Line 5401
    lui	$at,0x11
    addiu	$at,$at,-7180
    addu	$gp,$t9,$at
    # Line 5408
    # lw $t9, -29800($gp) # &__glMgrComputeStrideSkipBytes
    sd	$s1,32($sp)
    sd	$ra,48($sp)
    bal __glMgrComputeStrideSkipBytes
    # Line 5401
    move	$s1,$a0
    # Line 5408
    lw	$a0,1432($s1)
    sb	$v0,65($a0)
    # Line 5452
    lwc1	$f0,_lit_3f800000
    # Line 5408
    lw	$v0,420($s1)
    lui	$v1,0x1
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    beqz	$v0,.L0daf04a0
    lw	$a0,1432($s1)
.L0daf02fc:
    # Line 5426
    lw	$a1,248($s1)
    andi	$a1,$a1,0x4
    beqzl	$a1,.L0daf0578
    # Line 5431
    lw	$v0,40($s1)
.L0daf030c:
    sd	$s0,64($sp)
    # Line 5436
    lw	$s0,52($s1)
    sw	$s0,72($a0)
    # Line 5437
    lw	$a1,1432($s1)
    lw	$v1,56($s1)
    sw	$v1,76($a1)
    # Line 5438
    lw	$v0,1432($s1)
    lw	$at,252($s1)
    sw	$at,92($v0)
    # Line 5439
    lw	$s0,1432($s1)
    lw	$a1,72($s1)
    sw	$a1,100($s0)
    # Line 5442
    lw	$s0,1432($s1)
    lw	$v1,32($s0)
    sw	$v1,204($s1)
    # Line 5443
    lw	$v0,36($s0)
    sw	$v0,208($s1)
    # Line 5449
    mtc1	$zero,$f1
    # Line 5444
    lw	$at,40($s0)
    # Line 5446
    lw	$v1,1504($s1)
    li	$a1,0x80c8
    # Line 5444
    sw	$at,212($s1)
    # Line 5446
    addu	$v1,$v1,$a1
    # Line 5445
    lw	$s0,44($s0)
    # Line 5446
    sra	$v1,$v1,0x1
    sw	$v1,220($s1)
    # Line 5445
    sw	$s0,216($s1)
    # Line 5449
    swc1	$f1,0($sp)
    # Line 5450
    swc1	$f1,4($sp)
    # Line 5451
    swc1	$f1,8($sp)
    # Line 5452
    swc1	$f0,12($sp)
    # Line 5455
    lw	$s0,32108($s2)
    lw	$at,4($s0)
    addiu	$v0,$s2,32104
    bne	$at,$v0,.L0daf0428
    sd	$v0,16($sp)
    # Line 5476
    addiu	$a1,$sp,0
.L0daf03a0:
    # Line 5475
    lui	$t8,0x1
    ori	$t8,$t8,0xa000
    sw	$t8,220($s1)
    # Line 5476
    move	$a0,$s1
    lw	$t9,8($s0)
    sd	$s4,56($sp)
    lw	$a3,20($s0)
    jal	__glMgrComputeStrideSkipBytes
    lw	$a2,24($s0)
    # Line 5480
    lw	$s0,32136($s2)
    addiu	$s4,$s2,32132
    beql	$s4,$s0,.L0daf03fc
    ld	$gp,40($sp)
    # Line 5483
    move	$a0,$s1
.L0daf03d8:
    lw	$t9,8($s0)
    lw	$a3,20($s0)
    lw	$a2,24($s0)
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 5485
    lw	$s0,4($s0)
    bne	$s4,$s0,.L0daf03d8
    # Line 5483
    move	$a0,$s1
    ld	$gp,40($sp)
.L0daf03fc:
    # Line 5490
    ld	$s0,64($sp)
    # Line 5488
    sw	$zero,420($s1)
    # Line 5489
    lw	$at,1432($s1)
    # Line 5490
    ld	$s1,32($sp)
    # Line 5489
    li	$ra,1
    sb	$ra,104($at)
    # Line 5490
    ld	$ra,48($sp)
    ld	$s2,24($sp)
    ld	$s4,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daf0428:
    # Line 5458
    move	$a0,$s1
    lw	$t9,8($s0)
    lw	$a3,20($s0)
    lw	$a2,24($s0)
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 5462
    lw	$a1,1432($s1)
    lw	$at,40($a1)
    # Line 5460
    lw	$s0,4($s0)
    # Line 5462
    sw	$at,204($s1)
    # Line 5463
    lw	$a1,44($a1)
    # Line 5464
    sw	$zero,220($s1)
    # Line 5463
    sw	$a1,208($s1)
    # Line 5464
    ld	$v1,16($sp)
    lw	$v0,4($s0)
    beq	$v0,$v1,.L0daf03a0
    # Line 5476
    addiu	$a1,$sp,0
    # Line 5469
    move	$a0,$s1
.L0daf0470:
    lw	$t9,8($s0)
    lw	$a3,20($s0)
    lw	$a2,24($s0)
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 5471
    lw	$s0,4($s0)
    ld	$v1,16($sp)
    lw	$v0,4($s0)
    bne	$v0,$v1,.L0daf0470
    # Line 5469
    move	$a0,$s1
    b	.L0daf03a0
    # Line 5476
    addiu	$a1,$sp,0
.L0daf04a0:
    # Line 5408
    lbu	$a1,104($a0)
    beqz	$a1,.L0daf02fc
    # Line 5426
    ld	$ra,48($sp)
    # Line 5411
    lw	$at,248($s1)
    # Line 5426
    ld	$s2,24($sp)
    # Line 5411
    andi	$at,$at,0x8
    beqz	$at,.L0daf056c
    ld	$gp,40($sp)
    # Line 5413
    lw	$v1,76($a0)
    lw	$v0,1536($s1)
    multu	$v0,$v1
    lw	$a1,0($a0)
    mflo	$at
    subu	$a1,$a1,$at
    sw	$a1,0($a0)
    # Line 5415
    lw	$v0,1432($s1)
    lw	$v1,1524($s1)
    lw	$at,8($v0)
    subu	$at,$at,$v1
    sw	$at,8($v0)
    # Line 5416
    lw	$a0,1432($s1)
    lw	$a1,1536($s1)
    lw	$v1,24($a0)
    subu	$v1,$v1,$a1
    sw	$v1,24($a0)
    lw	$a0,1432($s1)
    lw	$v0,28($a0)
    beqzl	$v0,.L0daf0560
    # Line 5424
    lw	$at,1536($s1)
    # Line 5419
    lw	$v1,76($a0)
    lw	$v0,1536($s1)
    multu	$v0,$v1
    lw	$a1,4($a0)
    mflo	$at
    subu	$a1,$a1,$at
    sw	$a1,4($a0)
    # Line 5421
    lw	$v1,1432($s1)
    lw	$a0,1524($s1)
    lw	$v0,12($v1)
    subu	$v0,$v0,$a0
    sw	$v0,12($v1)
    # Line 5422
    lw	$a1,1432($s1)
    lw	$at,1536($s1)
    lw	$a0,28($a1)
    subu	$a0,$a0,$at
    sw	$a0,28($a1)
    lw	$a0,1432($s1)
    # Line 5424
    lw	$at,1536($s1)
.L0daf0560:
    lw	$a1,52($a0)
    subu	$a1,$a1,$at
    sw	$a1,52($a0)
.L0daf056c:
    # Line 5426
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daf0578:
    # Line 5431
    sw	$v0,68($a0)
    # Line 5432
    lw	$at,1432($s1)
    lw	$a1,60($s1)
    sw	$a1,80($at)
    # Line 5433
    lw	$a0,1432($s1)
    lw	$v1,64($s1)
    sw	$v1,84($a0)
    # Line 5434
    lw	$v0,1432($s1)
    lwc1	$f2,80($s1)
    sd	$s0,64($sp)
    swc1	$f2,88($v0)
    b	.L0daf030c
    lw	$a0,1432($s1)
.end __glMgrInitPixelPipe

.late_rodata
jtbl_0dbeed40:
    .word .L0dae69dc
    .word .L0dae6238
    .word .L0dae6238
    .word .L0dae6458
    .word .L0dae6568
    .word .L0dae6690
    .word .L0dae67b8
    .word .L0dae6370
    .word .L0dae6238
    .word .L0dae6148
    .word .L0dae68e0
jtbl_0dbeed70:
    .word .L0dae7570
    .word .L0dae7570
    .word .L0dae72d4
    .word .L0dae7570
    .word .L0dae7570
    .word .L0dae7570
    .word .L0dae7570
    .word .L0dae753c
    .word .L0dae7510
    .word .L0dae7570
    .word .L0dae7570
jtbl_0dbeeda0:
    .word .L0dae8598
    .word .L0dae85b8
    .word .L0dae85d8
    .word .L0dae85fc
    .word .L0dae8550
    .word .L0dae8524
    .word .L0dae8598
    .word .L0dae8620
jtbl_0dbeedc0:
    .word .L0dae95c4
    .word .L0dae95d4
    .word .L0dae95e8
    .word .L0dae95fc
    .word .L0dae960c
    .word .L0dae960c
    .word .L0dae95c4
    .word .L0dae9634
jtbl_0dbeede0:
    .word .L0daea530
    .word .L0daea540
    .word .L0daea554
    .word .L0daea568
    .word .L0daea578
    .word .L0daea578
    .word .L0daea530
    .word .L0daea5a0

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_40efffe000000000:
    .word 0x40efffe0, 0x00000000
_lit_33808081:
    .word 0x33808081
_lit_34802008:
    .word 0x34802008
_lit_37800080:
    .word 0x37800080
_lit_37808081:
    .word 0x37808081
_lit_37842108:
    .word 0x37842108
_lit_37888889:
    .word 0x37888889
_lit_39802008:
    .word 0x39802008
_lit_39888889:
    .word 0x39888889
_lit_3a042108:
    .word 0x3a042108
_lit_3a802008:
    .word 0x3a802008
_lit_3b808081:
    .word 0x3b808081
_lit_3b888889:
    .word 0x3b888889
_lit_3b924925:
    .word 0x3b924925
_lit_3c842108:
    .word 0x3c842108
_lit_3d124925:
    .word 0x3d124925
_lit_3d888889:
    .word 0x3d888889
_lit_3eaaaaab:
    .word 0x3eaaaaab
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_477fff00:
    .word 0x477fff00

