# Source: ../MGRAS/mgras_tex_io.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_tex_io.c
# Total Functions: 11

.text

# Function: flushRegs
# Declared: Line 50 (Source lines: 56-64)
# Address: 0x0dabf1f8 - 0x0dabf29c (Size: 164 bytes, Frame: 0)
.ent flushRegs
flushRegs:
    # Line 61
    move	$a7,$a2
    andi	$a6,$a2,0x3
    # Line 56
    lui	$a5,0x7
    ori	$a5,$a5,0x4080
    # Line 61
    sll	$at,$a2,0x2
    lui	$v0,0xf
    ori	$v0,$v0,0xffff
    and	$at,$at,$v0
    lui	$v0,0x8000
    or	$at,$at,$v0
    # Line 56
    ori	$v0,$a0,0x8
    sw	$v0,0($a5)
    # Line 57
    sw	$a3,0($a5)
    # Line 58
    sw	$a2,0($a5)
    # Line 61
    blez	$a2,.L0dabf294
    sw	$at,0($a5)
    move	$a4,$a1
    sll	$a3,$a2,0x2
    beqz	$a6,.L0dabf25c
    addu	$a3,$a3,$a1
.L0dabf248:
    # Line 62
    addiu	$a4,$a4,4
    # Line 63
    lw	$at,-4($a4)
    addi	$a6,$a6,-1
    bnez	$a6,.L0dabf248
    sw	$at,0($a5)
.L0dabf25c:
    sra	$v0,$a7,0x2
    beqz	$v0,.L0dabf294
    move	$a2,$a4
    move	$a1,$a2
.L0dabf26c:
    lw	$v0,0($a1)
    sw	$v0,0($a5)
    lw	$at,4($a1)
    sw	$at,0($a5)
    lw	$a0,8($a1)
    sw	$a0,0($a5)
    lw	$v1,12($a1)
    # Line 62
    addiu	$a1,$a1,16
    bne	$a1,$a3,.L0dabf26c
    # Line 63
    sw	$v1,0($a5)
.L0dabf294:
    # Line 64
    jr	$ra
    nop
.end flushRegs

# Function: __glMgrasWrite
# Declared: Line 68 (Source lines: 69-81)
# Address: 0x0dabf29c - 0x0dabf380 (Size: 228 bytes, Frame: 208)
.globl __glMgrasWrite
.ent __glMgrasWrite
__glMgrasWrite:
    # Line 71
    lui	$v1,0x1
    addu	$a6,$v1,$a0
    lw	$at,-19460($a6)
    addiu	$at,$at,1
    sw	$at,-19460($a6)
    sll	$a7,$at,0x2
    addu	$a7,$a7,$a0
    addu	$a7,$a7,$v1
    sw	$a1,-21064($a7)
    # Line 69
    addiu	$sp,$sp,-80
    # Line 72
    lw	$a5,-19460($a6)
    sd	$gp,8($sp)
    # Line 69
    move	$t0,$a0
    # Line 72
    addiu	$a5,$a5,1
    sw	$a5,-19460($a6)
    sll	$a1,$a5,0x2
    addu	$a1,$a1,$a0
    addu	$a1,$a1,$v1
    sw	$a2,-21064($a1)
    # Line 69
    lui	$a0,0x14
    # Line 73
    lw	$v0,-19460($a6)
    # Line 69
    addiu	$a0,$a0,-3076
    addu	$gp,$t9,$a0
    # Line 73
    addiu	$v0,$v0,1
    sw	$v0,-19460($a6)
    sll	$at,$v0,0x2
    addu	$at,$at,$t0
    addu	$at,$at,$v1
    sw	$a3,-21064($at)
    # Line 74
    bnez	$a4,.L0dabf324
    lw	$a7,-19460($a6)
    slti	$v0,$a7,400
    bnez	$v0,.L0dabf374
    sd	$a6,0($sp)
.L0dabf324:
    # Line 76
    li	$a4,3
    div	$zero,$a7,$a4
    sd	$a6,0($sp)
    # Line 78
    li	$a0,31744
    # Line 77
    move	$v1,$a6
    sd	$ra,16($sp)
    # Line 78
    li	$a1,0xadbc
    addu	$a1,$t0,$a1
    # Line 76
    teq	$a4,$zero,0x7
    # Line 77
    li	$a3,-2
    # Line 78
    # lw $t9, -32724($gp) # &sub_0dac0000
    # Line 77
    addiu	$a2,$a7,1
    and	$a2,$a2,$a3
    # Line 78
    addiu	$t9,$t9,-3592
    # Line 76
    mflo	$a3
    # Line 78
    bal mgrTM_FreeDMAPool
    # Line 77
    sw	$a2,-19460($a6)
    ld	$ra,0($sp)
    # Line 79
    sw	$zero,-19460($ra)
    ld	$ra,16($sp)
.L0dabf374:
    ld	$gp,8($sp)
    # Line 81
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrasWrite

# Function: __glMgrasSet
# Declared: Line 85 (Source lines: 86-93)
# Address: 0x0dabf380 - 0x0dabf42c (Size: 172 bytes, Frame: 192)
.globl __glMgrasSet
.ent __glMgrasSet
__glMgrasSet:
    # Line 86
    addiu	$sp,$sp,-64
    # Line 87
    lui	$v1,0x1
    addu	$a5,$v1,$a0
    lw	$a6,-17856($a5)
    sd	$gp,8($sp)
    # Line 86
    move	$a7,$a0
    # Line 87
    addiu	$a6,$a6,1
    sw	$a6,-17856($a5)
    sll	$a4,$a6,0x2
    addu	$a4,$a4,$a0
    addu	$a4,$a4,$v1
    sw	$a1,-19460($a4)
    # Line 86
    lui	$a0,0x14
    # Line 88
    lw	$v0,-17856($a5)
    # Line 86
    addiu	$a0,$a0,-3304
    addu	$gp,$t9,$a0
    # Line 88
    addiu	$v0,$v0,1
    sw	$v0,-17856($a5)
    sll	$at,$v0,0x2
    addu	$at,$at,$a7
    addu	$at,$at,$v1
    sw	$a2,-19460($at)
    # Line 89
    bnez	$a3,.L0dabf3ec
    lw	$a6,-17856($a5)
    slti	$at,$a6,400
    bnez	$at,.L0dabf420
    sd	$a5,0($sp)
.L0dabf3ec:
    sd	$a5,0($sp)
    # Line 90
    sra	$a3,$a6,0x1
    move	$a2,$a6
    li	$a0,32512
    # lw $t9, -32724($gp) # &sub_0dac0000
    sd	$ra,16($sp)
    li	$a1,0xb400
    addiu	$t9,$t9,-3592
    bal mgrTM_FreeDMAPool
    addu	$a1,$a7,$a1
    ld	$ra,0($sp)
    # Line 91
    sw	$zero,-17856($ra)
    ld	$ra,16($sp)
.L0dabf420:
    ld	$gp,8($sp)
    # Line 93
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrasSet

# Function: __glMgrSaveTexmode
# Declared: Line 96 (Source lines: 101-106)
# Address: 0x0dabf42c - 0x0dabf450 (Size: 36 bytes, Frame: 0)
.globl __glMgrSaveTexmode
.ent __glMgrSaveTexmode
__glMgrSaveTexmode:
    # Line 101
    li	$v0,0xe910
    lui	$at,0x7
    ori	$at,$at,0x4080
    sw	$v0,0($at)
    # Line 102
    sw	$a0,0($at)
    # Line 103
    sw	$a1,0($at)
    # Line 104
    sw	$a2,0($at)
    # Line 106
    jr	$ra
    # Line 105
    sw	$a3,0($at)
.end __glMgrSaveTexmode

# Function: __glMgrRestoreTexmode
# Declared: Line 109 (Source lines: 113-114)
# Address: 0x0dabf450 - 0x0dabf464 (Size: 20 bytes, Frame: 0)
.globl __glMgrRestoreTexmode
.ent __glMgrRestoreTexmode
__glMgrRestoreTexmode:
    # Line 113
    li	$at,0xea00
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    # Line 114
    jr	$ra
    # Line 113
    sw	$at,0($v0)
.end __glMgrRestoreTexmode

# Function: mgrTM_DoTexLoad
# Declared: Line 117 (Source lines: 123-450)
# Address: 0x0dabf464 - 0x0dac0444 (Size: 4064 bytes, Frame: 240)
.globl mgrTM_DoTexLoad
.ent mgrTM_DoTexLoad
mgrTM_DoTexLoad:
    # Line 123
    addiu	$sp,$sp,-368
    sd	$s8,168($sp)
    move	$s8,$a2
    # Line 153
    move	$a2,$zero
    sd	$zero,48($sp)
    sd	$s0,160($sp)
    # Line 123
    move	$s0,$a4
    sd	$s5,144($sp)
    move	$s5,$a3
    sd	$ra,184($sp)
    sd	$a1,256($sp)
    sd	$s4,176($sp)
    move	$s4,$a1
    # Line 153
    move	$a1,$a0
    sd	$s1,152($sp)
    # Line 123
    move	$s1,$a0
    sd	$s3,200($sp)
    # Line 137
    lw	$s3,__glCurrentContext
    # Line 129
    sll	$s4,$s4,0x2
    addu	$s4,$s4,$s1
    # Line 153
    move	$a0,$s3
    sd	$gp,192($sp)
    # Line 123
    lui	$t8,0x14
    sd	$s7,128($sp)
    # Line 145
    lui	$s7,0x1
    # Line 123
    addiu	$t8,$t8,-3532
    addu	$gp,$t9,$t8
    # Line 153
    # lw $t9, -30748($gp) # &mgrTM_VidTexWait
    # Line 145
    addu	$s7,$s3,$s7
    lw	$at,-28164($s7)
    # Line 129
    lw	$s4,20($s4)
    # Line 153
    bal mgrTM_VidTexWait
    sd	$at,64($sp)
    # Line 155
    # lw $t9, -31964($gp) # &__glMgrGetColorMatrixState
    jal	__glMgrGetColorMatrixState
    move	$a0,$s3
    ld	$at,64($sp)
    lw	$at,488($at)
    beq	$at,$s4,.L0dabf5b0
    nop
    lbu	$v1,167($s1)
    slti	$v1,$v1,2
    bnez	$v1,.L0dabf52c
    # Line 162
    nop	# was lw $t9, -30752($gp) # &mgrTM_SetLoadBuffer
    # Line 155
    lbu	$t0,166($s1)
    slti	$t0,$t0,2
    bnez	$t0,.L0dabf528
    # Line 159
    li	$t1,1
    sd	$t1,48($sp)
.L0dabf528:
    # Line 162
    # lw $t9, -30752($gp) # &mgrTM_SetLoadBuffer
.L0dabf52c:
    move	$a0,$s3
    bal mgrTM_SetLoadBuffer
    move	$a1,$s1
    # Line 163
    # lw $t9, -30732($gp) # &mgrTM_SendTlMode
    move	$a0,$s3
    bal mgrTM_SendTlMode
    move	$a1,$s4
    # Line 169
    li	$a4,1
    li	$a1,418
    # Line 168
    la	$a3,SYMBOL_LOCATION
    # Line 169
    move	$a0,$s3
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,296($a3)
    # Line 168
    ld	$a2,256($sp)
    lbu	$a5,60($s4)
    lbu	$a7,179($s1)
    andi	$a2,$a2,0xf
    andi	$a5,$a5,0xf
    sll	$a5,$a5,0x8
    or	$a2,$a2,$a5
    li	$a5,-241
    and	$a2,$a2,$a5
    lbu	$a5,59($s4)
    li	$a6,3
    slt	$a6,$a6,$a7
    addu	$a5,$a5,$a6
    andi	$a5,$a5,0xf
    sll	$a5,$a5,0x4
    or	$a2,$a2,$a5
    # Line 169
    bal __glMgrasWrite
    # Line 168
    sw	$a2,32($sp)
    ld	$t0,64($sp)
    # Line 170
    sw	$s4,488($t0)
.L0dabf5b0:
    lw	$a0,1112($s3)
    beqzl	$a0,.L0dabf5c0
    # Line 173
    lh	$v0,40($s4)
    move	$v0,$a0
.L0dabf5c0:
    lw	$a0,1132($s3)
    beqz	$a0,.L0dabf5d4
    # Line 174
    move	$t1,$a0
    b	.L0dabf5dc
    sd	$a0,208($sp)
.L0dabf5d4:
    lh	$at,42($s4)
    sd	$at,208($sp)
.L0dabf5dc:
    lw	$a0,1140($s3)
    beqz	$a0,.L0dabf5f0
    # Line 175
    move	$v1,$a0
    b	.L0dabf5f8
    sd	$a0,224($sp)
.L0dabf5f0:
    lh	$t0,44($s4)
    sd	$t0,224($sp)
.L0dabf5f8:
    sd	$v0,136($sp)
    # Line 177
    lw	$v0,12($s4)
    lh	$at,38($s4)
    mult	$at,$v0
    lh	$ra,36($s4)
    lhu	$t8,54($s4)
    mflo	$t9
    sra	$ra,$ra,0x1
    addu	$t9,$t9,$ra
    mult	$t8,$t9
    sd	$s6,272($sp)
    # Line 179
    li	$a4,3
    # Line 176
    lw	$t2,28($s4)
    # Line 179
    move	$a3,$zero
    move	$a2,$zero
    # Line 176
    lh	$t3,74($t2)
    # Line 179
    lui	$a1,0x140
    li	$a0,-1
    sd	$t3,56($sp)
    # lw $t9, -30284($gp) # &__glMgrSaveRSS
    # Line 177
    mflo	$t1
    addu	$t1,$t1,$t3
    # Line 179
    jal	__glMgrSaveRSS
    # Line 177
    sh	$t1,74($t2)
    # Line 183
    lbu	$v0,168($s1)
    lh	$s6,36($s4)
    beqz	$v0,.L0dabfde4
    andi	$s6,$s6,0x1
    ld	$v1,136($sp)
    # Line 188
    mult	$v1,$v0
    mflo	$at
    nop
    sd	$at,216($sp)
.L0dabf67c:
    # Line 191
    ld	$t1,224($sp)
    lw	$t0,1136($s3)
    multu	$t0,$t1
    lw	$v0,1128($s3)
    mflo	$v1
    addu	$v0,$v0,$v1
    ld	$v1,208($sp)
    multu	$v0,$v1
    ld	$at,216($sp)
    mflo	$t1
    nop
    nop
    multu	$t1,$at
    # Line 199
    lh	$t0,44($s4)
    slti	$t0,$t0,2
    # Line 191
    mflo	$v0
    # Line 199
    beqz	$t0,.L0dabf6d4
    # Line 191
    addu	$v0,$v0,$s0
    # Line 199
    lh	$at,46($s4)
    slti	$at,$at,2
    bnez	$at,.L0dabf814
    sd	$s2,280($sp)
.L0dabf6d4:
    lbu	$v1,179($s1)
    li	$t0,8
    beq	$v1,$t0,.L0dabf814
    sd	$s2,280($sp)
    lw	$t1,-31380($s7)
    beqz	$t1,.L0dabfc18
    # Line 201
    move	$a3,$zero
    move	$a2,$zero
    li	$a1,4
    sd	$s2,280($sp)
    addiu	$s2,$s3,31676
    move	$a0,$s2
    lh	$a7,42($s4)
    lh	$a6,40($s4)
    lh	$a5,34($s4)
    lh	$a4,32($s4)
    sw	$s8,4($sp)
    # lw $t9, -29768($gp) # &__glMgrMakePixelDesc
    lw	$t2,152($s1)
    sw	$s0,28($sp)
    sw	$s5,20($sp)
    jal	__glMgrMakePixelDesc
    sw	$t2,12($sp)
    lw	$at,31676($s3)
    bnez	$at,.L0dabffd4
    # Line 208
    nop	# was lw $t9, -30028($gp) # &__glMgrBuildChain
    # Line 212
    lh	$a7,46($s4)
.L0dabf740:
    lh	$a6,44($s4)
    mult	$a6,$a7
    lw	$a5,31860($s3)
    lw	$a4,-32320($s7)
    mflo	$a2
    nop
    nop
    mult	$a4,$a5
    mflo	$a3
    nop
    nop
    mult	$a2,$a3
    # Line 214
    move	$a0,$s3
    lw	$t9,0($s3)
    # Line 212
    mflo	$a1
    sd	$a1,96($sp)
    # Line 214
    jal	__glMgrBuildChain
    sll	$a1,$a1,0x2
    ld	$t0,208($sp)
    move	$a3,$v0
    beqz	$t0,.L0dac003c
    sd	$v0,120($sp)
    ld	$t1,208($sp)
    sd	$a3,312($sp)
    sd	$t1,104($sp)
.L0dabf7a4:
    # Line 217
    lh	$t3,46($s4)
    lh	$t2,44($s4)
    mult	$t2,$t3
    # lw $t9, -30336($gp) # &__glMgrBuildLockPageList
    move	$a0,$s2
    mflo	$a2
    jal	__glMgrBuildLockPageList
    ld	$a1,120($sp)
    # Line 218
    ld	$t8,216($sp)
    ld	$s2,104($sp)
    mult	$s2,$t8
    move	$a0,$s3
    ld	$a1,96($sp)
    ld	$a2,120($sp)
    move	$a5,$zero
    # lw $t9, -30332($gp) # &__glMgr_LockMultiDMAPool
    li	$a4,1
    mflo	$a3
    jal	__glMgr_LockMultiDMAPool
    ld	$s2,280($sp)
    lw	$a0,32016($s3)
    beqz	$v0,.L0dac004c
    ld	$a1,312($sp)
    # Line 220
    ori	$at,$a0,0x1
    sw	$at,32016($s3)
.L0dabf808:
    # Line 226
    lw	$t9,12($s3)
    jalr	$t9
    move	$a0,$s3
.L0dabf814:
    # Line 297
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
.L0dabf818:
    li	$a1,-2
    lw	$a0,4($s4)
    jal	__glMgrInitPixelStateERAM
    ld	$s2,280($sp)
    # Line 298
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$s6
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    ld	$s6,272($sp)
    # Line 299
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    ld	$a0,256($sp)
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    # Line 300
    li	$a1,-2
    lw	$a0,28($s4)
    lbu	$a2,58($s4)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    lh	$a0,74($a0)
    sll	$a2,$a2,0x8
    jal	__glMgrInitPixelStateERAM
    or	$a0,$a0,$a2
    # Line 301
    lw	$a2,28($s4)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    lh	$a0,56($s4)
    lh	$a2,74($a2)
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    addu	$a0,$a0,$a2
    # Line 302
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lhu	$a0,54($s4)
    la	$a0,SYMBOL_LOCATION
    # Line 303
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    lw	$a0,1184($a0)
    li	$a1,-1
    jal	__glMgrInitPixelStateERAM
    addiu	$a0,$a0,9
    sd	$s5,240($sp)
    # Line 306
    lh	$a5,46($s4)
    sd	$s8,248($sp)
    sd	$s2,280($sp)
    blez	$a5,.L0dabfb14
    sd	$zero,112($sp)
    sd	$s0,232($sp)
    li	$s8,0x9c00
    lh	$v0,44($s4)
    addiu	$s2,$s3,31676
    lui	$s5,0x7
    lw	$at,44($sp)
    ori	$s5,$s5,0x4080
    b	.L0dabf908
    sd	$at,264($sp)
.L0dabf8ec:
    # Line 308
    lh	$a5,46($s4)
.L0dabf8f0:
    ld	$v1,112($sp)
    # Line 306
    addiu	$v1,$v1,1
    sd	$v1,112($sp)
    slt	$v1,$v1,$a5
    beqz	$v1,.L0dabfafc
    ld	$s6,272($sp)
.L0dabf908:
    # Line 307
    lh	$s6,36($s4)
    # Line 308
    move	$s0,$zero
    blez	$v0,.L0dabf8f0
    # Line 307
    andi	$s6,$s6,0x1
    b	.L0dabf9f8
    # Line 308
    lbu	$t0,194($s1)
.L0dabf920:
    # Line 312
    sw	$at,0($s5)
    lbu	$t3,179($s1)
.L0dabf928:
    li	$v1,8
    beq	$v1,$t3,.L0dabfa4c
    # Line 314
    move	$t2,$s0
.L0dabf934:
    lw	$v0,152($s1)
    lh	$a5,34($s4)
    lh	$a4,32($s4)
    lw	$a6,-31380($s7)
    lh	$a7,42($s4)
    beqz	$a6,.L0dabfa54
    lh	$a6,40($s4)
    beqz	$t3,.L0dabfae4
    # Line 318
    li	$a1,4
.L0dabf958:
    move	$a0,$s2
    move	$a2,$zero
    move	$a3,$zero
    sw	$v0,12($sp)
    ld	$t0,248($sp)
    ld	$t2,232($sp)
    ld	$t1,240($sp)
    # lw $t9, -29768($gp) # &__glMgrMakePixelDesc
    sw	$t2,28($sp)
    sw	$t1,20($sp)
    jal	__glMgrMakePixelDesc
    sw	$t0,4($sp)
.L0dabf988:
    # Line 325
    lw	$at,31676($s3)
    bnez	$at,.L0dabfa1c
    # Line 335
    nop	# was lw $t9, -30028($gp) # &__glMgrBuildChain
    # Line 339
    sw	$zero,32076($s3)
.L0dabf998:
    lw	$v1,-31380($s7)
    beqz	$v1,.L0dabfadc
    # Line 343
    li	$t0,3
    sd	$zero,264($sp)
.L0dabf9a8:
    # Line 345
    move	$a0,$s2
    # lw $t9, -31880($gp) # &__glMgrSendPixels
    move	$a1,$zero
    move	$a2,$s0
    jal	__glMgrSendPixels
    li	$a3,1
    # Line 308
    addiu	$s0,$s0,1
    # Line 348
    lhu	$v1,54($s4)
    mult	$v1,$s6
    lw	$at,28($s4)
    lh	$t1,74($at)
    mflo	$v0
    addu	$t1,$t1,$v0
    sh	$t1,74($at)
    # Line 308
    lh	$v0,44($s4)
    # Line 350
    xori	$s6,$s6,0x1
    # Line 308
    slt	$t0,$s0,$v0
    beqz	$t0,.L0dabf8ec
    # Line 349
    sw	$s8,0($s5)
    # Line 308
    lbu	$t0,194($s1)
.L0dabf9f8:
    beqz	$t0,.L0dabf920
    li	$at,0x9b00
    # Line 310
    # lw $t9, -30724($gp) # &mgrTM_SendTlTable
    move	$a0,$s3
    move	$a1,$s1
    bal mgrTM_SendTlTable
    ld	$a2,256($sp)
    b	.L0dabf928
    # Line 312
    lbu	$t3,179($s1)
.L0dabfa1c:
    # Line 335
    jal	mgrTM_SendTlTable
    move	$a0,$s2
    # Line 336
    # lw $t9, -29788($gp) # &__glMgrMakeTiles
    move	$a0,$s2
    jal	__glMgrMakeTiles
    move	$a1,$s3
    # Line 337
    # lw $t9, -29820($gp) # &__glMgrMakePages
    move	$a0,$s2
    jal	__glMgrMakePages
    move	$a1,$s3
    b	.L0dabf998
    # Line 339
    sw	$zero,32076($s3)
.L0dabfa4c:
    # Line 314
    b	.L0dabf934
    move	$t2,$zero
.L0dabfa54:
    # Line 318
    beqz	$t3,.L0dabfaf0
    # Line 325
    li	$a1,4
.L0dabfa5c:
    sw	$v0,12($sp)
    ld	$v0,240($sp)
    ld	$v1,248($sp)
    sw	$v0,20($sp)
    sw	$v1,4($sp)
    ld	$at,112($sp)
    lw	$ra,1136($s3)
    addu	$ra,$ra,$at
    ld	$at,224($sp)
    multu	$ra,$at
    lw	$t9,1128($s3)
    addu	$t9,$t9,$t2
    mflo	$ra
    addu	$t9,$t9,$ra
    ld	$ra,208($sp)
    multu	$t9,$ra
    ld	$t8,216($sp)
    mflo	$t3
    nop
    nop
    multu	$t3,$t8
    move	$a0,$s2
    move	$a2,$zero
    move	$a3,$zero
    ld	$t2,232($sp)
    # lw $t9, -29768($gp) # &__glMgrMakePixelDesc
    mflo	$t1
    addu	$t1,$t1,$t2
    jal	__glMgrMakePixelDesc
    sw	$t1,28($sp)
    b	.L0dabf988
    nop
.L0dabfadc:
    b	.L0dabf9a8
    sd	$t0,264($sp)
.L0dabfae4:
    # Line 318
    li	$a1,3
    b	.L0dabf958
    nop
.L0dabfaf0:
    # Line 325
    li	$a1,3
    b	.L0dabfa5c
    nop
.L0dabfafc:
    ld	$s2,280($sp)
    ld	$s8,248($sp)
    ld	$t1,264($sp)
    ld	$s5,240($sp)
    ld	$s0,232($sp)
    # Line 306
    sw	$t1,44($sp)
.L0dabfb14:
    # Line 355
    lw	$at,20($s4)
    beqzl	$at,.L0dabfe00
    lbu	$t0,179($s1)
.L0dabfb20:
    lw	$v1,4($s4)
    lbu	$a0,169($s1)
    srav	$v1,$v1,$a0
    li	$t0,512
    beq	$v1,$t0,.L0dabfe10
    # Line 426
    lw	$t0,44($sp)
    sd	$t0,264($sp)
.L0dabfb3c:
    ld	$a0,264($sp)
.L0dabfb40:
    # Line 369
    sll	$a0,$a0,0x4
    addu	$a0,$a0,$s3
    lw	$v0,32016($a0)
    andi	$t1,$v0,0x1
    beqz	$t1,.L0dabfb7c
    # Line 431
    li	$t1,3
    ld	$t0,264($sp)
    li	$at,-2
    and	$at,$v0,$at
    beq	$t0,$t1,.L0dac0004
    sw	$at,32016($a0)
    # Line 435
    # lw $t9, -30328($gp) # &__glMgr_UnlockMultiDMAPool
    move	$a0,$s3
    jal	__glMgr_UnlockMultiDMAPool
    move	$a1,$zero
.L0dabfb7c:
    # Line 439
    # lw $t9, -30280($gp) # &__glMgrRestoreRSS
.L0dabfb80:
    jal	__glMgrRestoreRSS
    nop
    # Line 440
    lw	$t1,28($s4)
    ld	$v1,48($sp)
    ld	$t0,56($sp)
    beqz	$v1,.L0dabfbc4
    sh	$t0,74($t1)
    # Line 442
    move	$a0,$s3
    li	$a4,1
    move	$a2,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    la	$a3,SYMBOL_LOCATION
    li	$a1,417
    bal __glMgrasWrite
    lw	$a3,292($a3)
    ld	$t0,64($sp)
    # Line 443
    sw	$zero,488($t0)
.L0dabfbc4:
    lw	$t1,-28164($s7)
    lhu	$t1,1236($t1)
    beqz	$t1,.L0dabfbe8
    lw	$a1,28($s4)
    # Line 447
    # lw $t9, -30712($gp) # &mgrTM_SaveData
    bal mgrTM_SaveData
    move	$a0,$s3
    b	.L0dabfbf0
    ld	$gp,192($sp)
.L0dabfbe8:
    # Line 449
    sb	$zero,85($a1)
    ld	$gp,192($sp)
.L0dabfbf0:
    # Line 450
    ld	$s0,160($sp)
    ld	$s1,152($sp)
    ld	$s3,200($sp)
    ld	$s4,176($sp)
    ld	$s5,144($sp)
    ld	$ra,184($sp)
    ld	$s7,128($sp)
    ld	$s8,168($sp)
    jr	$ra
    addiu	$sp,$sp,368
.L0dabfc18:
    ld	$at,224($sp)
    # Line 226
    beqz	$at,.L0dac0024
    # Line 228
    ld	$v1,208($sp)
    beqz	$v1,.L0dac0030
    ld	$a6,224($sp)
.L0dabfc2c:
    sd	$v0,72($sp)
    ld	$a7,208($sp)
.L0dabfc34:
    lh	$a3,46($s4)
    mult	$a3,$a6
    ld	$a2,216($sp)
    mflo	$a0
    nop
    nop
    mult	$a7,$a2
    mflo	$a1
    nop
    nop
    mult	$a0,$a1
    # Line 231
    li	$a5,3
    addiu	$a4,$sp,40
    # lw $t9, -30344($gp) # &__glMgr_LockSingleDMAPool
    li	$a3,1
    ld	$a1,72($sp)
    move	$a0,$s3
    # Line 228
    mflo	$a2
    # Line 231
    jal	__glMgr_LockSingleDMAPool
    sd	$a2,88($sp)
    bnez	$v0,.L0dabfd3c
    andi	$a0,$v0,0xff
    la	$a7,errno
    ld	$a4,88($sp)
    li	$t2,11
    li	$a6,12
    andi	$a3,$a4,0xfff
    srl	$a4,$a4,0xc
    addiu	$a5,$a4,1
.L0dabfca8:
    lw	$v0,0($a7)
    beq	$v0,$a6,.L0dac00c8
    nop
    beq	$v0,$t2,.L0dac00c8
    # Line 233
    li	$v0,1
.L0dabfcbc:
    bnez	$v0,.L0dabfd3c
    # Line 234
    move	$a2,$a4
    beqzl	$a3,.L0dabfcd4
    # Line 237
    lw	$t0,-28164($s7)
    # Line 236
    move	$a2,$a5
    # Line 237
    lw	$t0,-28164($s7)
.L0dabfcd4:
    lhu	$t0,1232($t0)
    sd	$a3,304($sp)
    sd	$a4,296($sp)
    sltu	$t0,$t0,$a2
    bnez	$t0,.L0dabfd3c
    sd	$a5,288($sp)
    # Line 238
    # lw $t9, -30704($gp) # &mgrTM_UnlockPages
    move	$a0,$s3
    bal mgrTM_UnlockPages
    move	$a1,$zero
    # Line 231
    move	$a0,$s3
    ld	$a1,72($sp)
    ld	$a2,88($sp)
    # lw $t9, -30344($gp) # &__glMgr_LockSingleDMAPool
    li	$a5,3
    addiu	$a4,$sp,40
    jal	__glMgr_LockSingleDMAPool
    li	$a3,1
    li	$a6,12
    la	$a7,errno
    li	$t2,11
    andi	$a0,$v0,0xff
    ld	$a5,288($sp)
    ld	$a4,296($sp)
    beqz	$v0,.L0dabfca8
    ld	$a3,304($sp)
.L0dabfd3c:
    # Line 240
    beqz	$a0,.L0dac005c
    lw	$v0,32064($s3)
    # Line 241
    ori	$at,$v0,0x1
    sw	$at,32064($s3)
    lh	$t1,46($s4)
    li	$a0,1
    bne	$t1,$a0,.L0dabf814
    sd	$s2,280($sp)
    lw	$v1,1132($s3)
    bnez	$v1,.L0dabf814
    sd	$s2,280($sp)
    # Line 244
    lw	$t0,1112($s3)
    bnez	$t0,.L0dabf814
    sd	$s2,280($sp)
    # Line 246
    move	$a3,$zero
    move	$a2,$zero
    li	$a1,4
    addiu	$s2,$s3,31676
    move	$a0,$s2
    lh	$a4,32($s4)
    lh	$a5,34($s4)
    lh	$a6,40($s4)
    lh	$a7,42($s4)
    sw	$s8,4($sp)
    # lw $t9, -29768($gp) # &__glMgrMakePixelDesc
    lw	$t1,152($s1)
    sw	$s0,28($sp)
    sw	$s5,20($sp)
    jal	__glMgrMakePixelDesc
    sw	$t1,12($sp)
    lw	$at,31676($s3)
    bnez	$at,.L0dac03c0
    # Line 253
    nop	# was lw $t9, -30028($gp) # &__glMgrBuildChain
    # Line 255
    lw	$v1,-32368($s7)
.L0dabfdc4:
    li	$t0,1
    bne	$v1,$t0,.L0dabf818
    # Line 297
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    # Line 259
    lh	$t1,46($s4)
    blez	$t1,.L0dac0314
    sd	$zero,112($sp)
    b	.L0dac024c
    # Line 260
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
.L0dabfde4:
    ld	$v1,136($sp)
    # Line 189
    sra	$at,$v1,0x3
    andi	$v1,$v1,0x7
    sltu	$v1,$zero,$v1
    addu	$at,$at,$v1
    b	.L0dabf67c
    sd	$at,216($sp)
.L0dabfe00:
    # Line 355
    beqz	$t0,.L0dabfb20
    # Line 426
    lw	$t1,44($sp)
    b	.L0dabfb3c
    sd	$t1,264($sp)
.L0dabfe10:
    # Line 355
    lbu	$at,180($s1)
    beqz	$at,.L0dac00d0
    # Line 426
    lw	$t1,44($sp)
    # Line 358
    lh	$a6,40($s4)
    lh	$a4,32($s4)
    # Line 356
    li	$a1,256
    sllv	$a1,$a1,$a0
    # Line 358
    slt	$v0,$a4,$a1
    beqz	$v0,.L0dabfe9c
    move	$v0,$s0
    # Line 360
    subu	$t1,$a1,$a4
    # Line 361
    subu	$a6,$a6,$t1
    dsll32	$a6,$a6,0x10
    dsra32	$a6,$a6,0x10
    sh	$a6,40($s4)
    # Line 362
    dsll32	$a4,$a1,0x10
    dsra32	$a4,$a4,0x10
    sh	$a4,32($s4)
    # Line 363
    lbu	$t0,168($s1)
    mult	$t0,$t1
    mfhi	$zero
    dsll32	$v1,$a1,0x10
    dsra32	$v1,$v1,0x10
    addu	$v1,$v1,$a6
    sll	$t0,$a1,0x1
    addiu	$t0,$t0,1
    mflo	$v0
    bne	$v1,$t0,.L0dabfe94
    addu	$v0,$v0,$s0
    # Line 365
    addiu	$a6,$a6,-1
    dsll32	$a6,$a6,0x10
    dsra32	$a6,$a6,0x10
    sh	$a6,40($s4)
.L0dabfe94:
    # Line 366
    addu	$t0,$a4,$a1
    sh	$t0,32($s4)
.L0dabfe9c:
    blez	$a6,.L0dac00bc
    sd	$v0,72($sp)
    # Line 372
    li	$a4,1
    li	$a1,418
    move	$a0,$s3
    # Line 370
    li	$a7,0x9c00
    lui	$t0,0x7
    ori	$t0,$t0,0x4080
    sw	$a7,0($t0)
    # Line 372
    # lw $t9, -30696($gp) # &__glMgrasWrite
    # Line 371
    li	$a2,-241
    la	$a3,SYMBOL_LOCATION
    lw	$a6,32($sp)
    lbu	$a5,169($s1)
    # Line 372
    lw	$a3,296($a3)
    # Line 371
    and	$a2,$a2,$a6
    addiu	$a5,$a5,10
    andi	$a5,$a5,0xf
    sll	$a5,$a5,0x4
    or	$a2,$a2,$a5
    # Line 372
    bal __glMgrasWrite
    sd	$a2,80($sp)
    lh	$a5,34($s4)
    li	$t0,-1
    beql	$a5,$t0,.L0dac00d8
    lh	$a6,40($s4)
.L0dabff04:
    # Line 397
    lbu	$t1,179($s1)
.L0dabff08:
    beqz	$t1,.L0dac016c
    # Line 423
    lw	$t1,44($sp)
    # Line 397
    lh	$at,42($s4)
    lh	$a5,34($s4)
    lw	$v1,20($s4)
    lw	$t2,8($s4)
    addu	$at,$at,$a5
    addu	$v1,$v1,$t2
    bne	$at,$v1,.L0dac0070
    # Line 401
    ld	$at,216($sp)
    sd	$s2,280($sp)
    subu	$s2,$t2,$a5
    mult	$s2,$at
    lw	$v0,152($s1)
    lh	$a4,32($s4)
    lh	$a6,40($s4)
    lw	$v1,-31380($s7)
    ld	$t0,72($sp)
    addiu	$s2,$s3,31676
    mflo	$t1
    addu	$t0,$t1,$t0
    beqz	$v1,.L0dac01a4
    sd	$t0,72($sp)
    # Line 403
    move	$a0,$s2
    sw	$s0,28($sp)
    sw	$s5,20($sp)
    sw	$v0,12($sp)
    sw	$s8,4($sp)
    li	$a7,1
    move	$a5,$t2
    # lw $t9, -29768($gp) # &__glMgrMakePixelDesc
    move	$a3,$zero
    move	$a2,$zero
    jal	__glMgrMakePixelDesc
    li	$a1,4
.L0dabff94:
    # Line 407
    lw	$v1,31676($s3)
    bnez	$v1,.L0dac0174
    # Line 413
    nop	# was lw $t9, -30028($gp) # &__glMgrBuildChain
    # Line 418
    sw	$zero,32076($s3)
.L0dabffa4:
    lw	$t0,-31380($s7)
    beqz	$t0,.L0dac01e0
    # Line 421
    li	$at,3
    sd	$zero,264($sp)
.L0dabffb4:
    # Line 423
    move	$a0,$s2
    # lw $t9, -31880($gp) # &__glMgrSendPixels
    move	$a1,$zero
    move	$a2,$zero
    jal	__glMgrSendPixels
    li	$a3,1
    b	.L0dac0078
    ld	$s2,280($sp)
.L0dabffd4:
    # Line 208
    jalr	$t9
    move	$a0,$s2
    # Line 209
    # lw $t9, -29788($gp) # &__glMgrMakeTiles
    move	$a0,$s2
    jal	__glMgrMakeTiles
    move	$a1,$s3
    # Line 210
    # lw $t9, -29820($gp) # &__glMgrMakePages
    move	$a0,$s2
    jal	__glMgrMakePages
    move	$a1,$s3
    b	.L0dabf740
    # Line 212
    lh	$a7,46($s4)
.L0dac0004:
    # Line 433
    move	$a0,$s3
    # lw $t9, -30340($gp) # &__glMgr_UnlockSingleDMAPool
    move	$a1,$zero
    move	$a2,$zero
    jal	__glMgr_UnlockSingleDMAPool
    li	$a3,3
    b	.L0dabfb80
    # Line 439
    nop	# was lw $t9, -30280($gp) # &__glMgrRestoreRSS
.L0dac0024:
    # Line 228
    ld	$t1,208($sp)
    bnez	$t1,.L0dabfc2c
    li	$a6,1
.L0dac0030:
    sd	$v0,72($sp)
    b	.L0dabfc34
    li	$a7,1
.L0dac003c:
    sd	$a3,312($sp)
    # Line 216
    li	$at,1
    b	.L0dabf7a4
    sd	$at,104($sp)
.L0dac004c:
    # Line 223
    li	$v1,-2
    and	$v1,$a0,$v1
    b	.L0dabf808
    sw	$v1,32016($s3)
.L0dac005c:
    sd	$s2,280($sp)
    # Line 292
    li	$t0,-2
    and	$t0,$v0,$t0
    b	.L0dabf814
    sw	$t0,32064($s3)
.L0dac0070:
    # Line 423
    lw	$t1,44($sp)
    sd	$t1,264($sp)
.L0dac0078:
    # Line 426
    li	$a4,1
    li	$a1,418
    move	$a0,$s3
    li	$a2,-241
    # lw $t9, -30696($gp) # &__glMgrasWrite
    la	$a3,SYMBOL_LOCATION
    # Line 425
    ld	$a6,80($sp)
    lbu	$a5,169($s1)
    # Line 426
    lw	$a3,296($a3)
    # Line 425
    and	$a2,$a2,$a6
    addiu	$a5,$a5,9
    andi	$a5,$a5,0xf
    sll	$a5,$a5,0x4
    # Line 426
    bal __glMgrasWrite
    # Line 425
    or	$a2,$a2,$a5
    b	.L0dabfb40
    ld	$a0,264($sp)
.L0dac00bc:
    # Line 426
    lw	$t0,44($sp)
    b	.L0dabfb3c
    sd	$t0,264($sp)
.L0dac00c8:
    b	.L0dabfcbc
    # Line 233
    move	$v0,$zero
.L0dac00d0:
    b	.L0dabfb3c
    sd	$t1,264($sp)
.L0dac00d8:
    # Line 372
    blezl	$a6,.L0dabff08
    # Line 397
    lbu	$t1,179($s1)
    # Line 373
    lw	$v0,152($s1)
    lh	$a4,32($s4)
    lw	$at,-31380($s7)
    sd	$s2,280($sp)
    addiu	$s2,$s3,31676
    beqz	$at,.L0dac03f0
    lbu	$t3,179($s1)
    beqz	$t3,.L0dac0434
    # Line 375
    li	$a1,4
.L0dac0104:
    move	$a0,$s2
    move	$a2,$zero
    move	$a3,$zero
    sw	$s0,28($sp)
    sw	$s5,20($sp)
    # lw $t9, -29768($gp) # &__glMgrMakePixelDesc
    sw	$v0,12($sp)
    sw	$s8,4($sp)
    jal	__glMgrMakePixelDesc
    li	$a7,1
.L0dac012c:
    # Line 380
    lw	$v1,31676($s3)
    bnez	$v1,.L0dac01e8
    # Line 387
    nop	# was lw $t9, -30028($gp) # &__glMgrBuildChain
    # Line 392
    sw	$zero,32076($s3)
.L0dac013c:
    lw	$t0,-31380($s7)
    beqz	$t0,.L0dac042c
    # Line 395
    li	$at,3
    # Line 394
    sw	$zero,44($sp)
.L0dac014c:
    # Line 397
    move	$a0,$s2
    # lw $t9, -31880($gp) # &__glMgrSendPixels
    move	$a1,$zero
    move	$a2,$zero
    jal	__glMgrSendPixels
    li	$a3,1
    b	.L0dabff04
    ld	$s2,280($sp)
.L0dac016c:
    b	.L0dac0078
    sd	$t1,264($sp)
.L0dac0174:
    # Line 413
    jalr	$t9
    move	$a0,$s2
    # Line 414
    # lw $t9, -29788($gp) # &__glMgrMakeTiles
    move	$a0,$s2
    jal	__glMgrMakeTiles
    move	$a1,$s3
    # Line 415
    # lw $t9, -29820($gp) # &__glMgrMakePages
    move	$a0,$s2
    jal	__glMgrMakePages
    move	$a1,$s3
    b	.L0dabffa4
    # Line 418
    sw	$zero,32076($s3)
.L0dac01a4:
    # Line 407
    move	$a0,$s2
    sw	$s5,20($sp)
    sw	$v0,12($sp)
    sw	$s8,4($sp)
    li	$a7,1
    move	$a5,$t2
    move	$a3,$zero
    move	$a2,$zero
    # lw $t9, -29768($gp) # &__glMgrMakePixelDesc
    ld	$t3,72($sp)
    li	$a1,4
    jal	__glMgrMakePixelDesc
    sw	$t3,28($sp)
    b	.L0dabff94
    nop
.L0dac01e0:
    b	.L0dabffb4
    sd	$at,264($sp)
.L0dac01e8:
    # Line 387
    jalr	$t9
    move	$a0,$s2
    # Line 388
    # lw $t9, -29788($gp) # &__glMgrMakeTiles
    move	$a0,$s2
    jal	__glMgrMakeTiles
    move	$a1,$s3
    # Line 389
    # lw $t9, -29820($gp) # &__glMgrMakePages
    move	$a0,$s2
    jal	__glMgrMakePages
    move	$a1,$s3
    b	.L0dac013c
    # Line 392
    sw	$zero,32076($s3)
.L0dac0218:
    # Line 274
    lhu	$v1,50($s4)
    div	$zero,$v1,$t0
    lw	$at,28($s4)
    lh	$t1,74($at)
    mflo	$v0
    addu	$t1,$t1,$v0
    sh	$t1,74($at)
    ld	$v0,112($sp)
    lh	$v1,46($s4)
    teq	$t0,$zero,0x7
    slt	$v0,$v0,$v1
.L0dac0244:
    beqz	$v0,.L0dac0314
    # Line 260
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
.L0dac024c:
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,4($s4)
    # Line 261
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$s6
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    # Line 262
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$zero
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    # Line 263
    li	$a1,-2
    lw	$a0,28($s4)
    lbu	$a2,58($s4)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    lh	$a0,74($a0)
    sll	$a2,$a2,0x8
    jal	__glMgrInitPixelStateERAM
    or	$a0,$a0,$a2
    # Line 265
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    lw	$a0,28($s4)
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lh	$a0,74($a0)
    # Line 266
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lhu	$a0,54($s4)
    la	$a0,SYMBOL_LOCATION
    # Line 267
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    lw	$a0,1184($a0)
    li	$a1,-1
    jal	__glMgrInitPixelStateERAM
    addiu	$a0,$a0,9
    # Line 270
    move	$a2,$zero
    move	$a1,$zero
    # lw $t9, -31880($gp) # &__glMgrSendPixels
    move	$a0,$s2
    # Line 269
    sw	$zero,32076($s3)
    # Line 270
    jal	__glMgrSendPixels
    lh	$a3,44($s4)
    # Line 271
    ld	$v0,112($sp)
    lh	$v1,46($s4)
    addiu	$v0,$v0,1
    sd	$v0,112($sp)
    slt	$v0,$v0,$v1
    beqz	$v0,.L0dac0244
    nop
    b	.L0dac0218
    # Line 274
    lw	$t0,16($s4)
.L0dac0314:
    # Line 279
    li	$a3,3
    move	$a2,$zero
    move	$a1,$zero
    move	$a0,$s3
    ld	$s6,272($sp)
    ld	$s2,280($sp)
    # Line 276
    lw	$a4,32064($s3)
    # Line 279
    # lw $t9, -30340($gp) # &__glMgr_UnlockSingleDMAPool
    # Line 276
    li	$a5,-2
    and	$a4,$a4,$a5
    # Line 279
    jal	__glMgr_UnlockSingleDMAPool
    # Line 276
    sw	$a4,32064($s3)
    # Line 280
    # lw $t9, -30280($gp) # &__glMgrRestoreRSS
    jal	__glMgrRestoreRSS
    nop
    # Line 281
    lw	$v1,28($s4)
    ld	$at,56($sp)
    sh	$at,74($v1)
    # Line 282
    ld	$t0,48($sp)
    lw	$t1,28($s4)
    beqz	$t0,.L0dac0394
    sb	$zero,85($t1)
    # Line 284
    move	$a0,$s3
    li	$a4,1
    move	$a2,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    la	$a3,SYMBOL_LOCATION
    li	$a1,417
    bal __glMgrasWrite
    lw	$a3,292($a3)
    ld	$t0,64($sp)
    # Line 286
    sw	$zero,488($t0)
.L0dac0394:
    ld	$gp,192($sp)
    # Line 288
    ld	$s0,160($sp)
    ld	$s1,152($sp)
    ld	$s3,200($sp)
    ld	$s4,176($sp)
    ld	$s5,144($sp)
    ld	$ra,184($sp)
    ld	$s7,128($sp)
    ld	$s8,168($sp)
    jr	$ra
    addiu	$sp,$sp,368
.L0dac03c0:
    # Line 253
    jal	__glMgrasWrite
    move	$a0,$s2
    # Line 254
    # lw $t9, -29788($gp) # &__glMgrMakeTiles
    move	$a0,$s2
    jal	__glMgrMakeTiles
    move	$a1,$s3
    # Line 255
    # lw $t9, -29820($gp) # &__glMgrMakePages
    move	$a0,$s2
    jal	__glMgrMakePages
    move	$a1,$s3
    b	.L0dabfdc4
    lw	$v1,-32368($s7)
.L0dac03f0:
    # Line 375
    beqz	$t3,.L0dac043c
    # Line 380
    li	$a1,4
.L0dac03f8:
    move	$a0,$s2
    move	$a2,$zero
    move	$a3,$zero
    sw	$s5,20($sp)
    sw	$v0,12($sp)
    sw	$s8,4($sp)
    # lw $t9, -29768($gp) # &__glMgrMakePixelDesc
    ld	$t1,72($sp)
    li	$a7,1
    jal	__glMgrMakePixelDesc
    sw	$t1,28($sp)
    b	.L0dac012c
    nop
.L0dac042c:
    b	.L0dac014c
    # Line 395
    sw	$at,44($sp)
.L0dac0434:
    # Line 375
    b	.L0dac0104
    li	$a1,3
.L0dac043c:
    # Line 380
    b	.L0dac03f8
    li	$a1,3
.end mgrTM_DoTexLoad

# Function: mgrTM_DoTexRead
# Declared: Line 461 (Source lines: 467-809)
# Address: 0x0dac0444 - 0x0dac1544 (Size: 4352 bytes, Frame: 240)
.globl mgrTM_DoTexRead
.ent mgrTM_DoTexRead
mgrTM_DoTexRead:
    # Line 467
    addiu	$sp,$sp,-496
    sd	$a4,192($sp)
    sd	$s1,280($sp)
    move	$s1,$a3
    sd	$s2,320($sp)
    move	$s2,$a2
    sd	$s0,288($sp)
    move	$s0,$a0
    sd	$s3,312($sp)
    # Line 490
    lui	$s3,0x1
    sd	$gp,296($sp)
    sd	$s5,272($sp)
    # Line 498
    sll	$s5,$a1,0x2
    sd	$s6,304($sp)
    # Line 467
    lui	$s6,0x14
    addiu	$s6,$s6,-7596
    addu	$gp,$t9,$s6
    # Line 487
    lw	$s6,__glCurrentContext
    # Line 498
    addu	$s5,$s5,$a0
    lw	$s5,20($s5)
    # Line 490
    addu	$s3,$s6,$s3
    sd	$s3,144($sp)
    # Line 498
    beqz	$s5,.L0dac1118
    # Line 490
    lw	$s3,-28164($s3)
    # Line 501
    lw	$v0,12($s5)
    li	$at,1
    sh	$at,44($s5)
    beqz	$v0,.L0dac04bc
    sh	$at,46($s5)
    # Line 503
    sh	$v0,44($s5)
.L0dac04bc:
    lw	$v0,16($s5)
    beqz	$v0,.L0dac04d4
    # Line 511
    move	$a0,$s6
    sd	$ra,408($sp)
    # Line 505
    sh	$v0,46($s5)
    # Line 511
    move	$a0,$s6
.L0dac04d4:
    # lw $t9, -30748($gp) # &mgrTM_VidTexWait
    move	$a1,$s0
    sd	$ra,408($sp)
    bal mgrTM_VidTexWait
    move	$a2,$zero
    lw	$a1,28($s5)
    lbu	$v1,89($a1)
    beqz	$v1,.L0dac12a4
    # Line 518
    move	$a4,$zero
.L0dac04f8:
    move	$a2,$zero
    li	$a1,387
    move	$a0,$s6
    # Line 517
    sw	$zero,488($s3)
    # Line 518
    # lw $t9, -30696($gp) # &__glMgrasWrite
    # Line 514
    la	$a3,SYMBOL_LOCATION
    # Line 516
    sw	$zero,484($s3)
    # Line 518
    bal __glMgrasWrite
    lw	$a3,228($a3)
    # Line 519
    move	$a0,$s6
    move	$a4,$zero
    li	$a1,396
    lw	$a2,8($s5)
    la	$a3,SYMBOL_LOCATION
    lw	$a5,4($s5)
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,264($a3)
    sll	$a5,$a5,0xd
    bal __glMgrasWrite
    or	$a2,$a2,$a5
    lw	$v0,0($s5)
    lbu	$a6,183($v0)
    beqzl	$a6,.L0dac0578
    # Line 531
    lbu	$v1,185($v0)
    # Line 519
    lw	$a7,1168($s3)
    lbu	$a5,184($v0)
    beq	$a7,$a5,.L0dac11b0
    # Line 524
    move	$a0,$s6
.L0dac0568:
    # Line 526
    lw	$at,1176($s3)
    bne	$at,$a5,.L0dac11e8
    # Line 529
    move	$a0,$s6
.L0dac0574:
    # Line 531
    lbu	$v1,185($v0)
.L0dac0578:
    beqz	$v1,.L0dac05b4
    ld	$at,144($sp)
    lw	$a6,1164($s3)
    lbu	$a0,186($v0)
    bnel	$a6,$a0,.L0dac05a4
    # Line 536
    lw	$a7,1172($s3)
    xori	$a6,$a0,0x1
    sw	$a6,1164($s3)
    lw	$a0,0($s5)
    lbu	$a0,186($a0)
    lw	$a7,1172($s3)
.L0dac05a4:
    beq	$a7,$a0,.L0dac05b4
    ld	$at,144($sp)
    # Line 538
    sw	$a0,1172($s3)
    ld	$at,144($sp)
.L0dac05b4:
    lw	$at,-28164($at)
    lw	$at,1160($at)
    beqz	$at,.L0dac05ec
    # Line 542
    move	$a0,$s6
    move	$a4,$zero
    move	$a2,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    la	$a3,SYMBOL_LOCATION
    li	$a1,394
    bal __glMgrasWrite
    lw	$a3,256($a3)
    ld	$a6,144($sp)
    # Line 543
    lw	$a6,-28164($a6)
    sw	$zero,1160($a6)
.L0dac05ec:
    # Line 546
    move	$a0,$s6
    move	$a4,$zero
    li	$a1,417
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a2,0($s5)
    la	$a3,SYMBOL_LOCATION
    lw	$a5,1164($s3)
    lbu	$a2,183($a2)
    lw	$a3,292($a3)
    sll	$a5,$a5,0x3
    sll	$a2,$a2,0x8
    bal __glMgrasWrite
    or	$a2,$a2,$a5
    # Line 548
    sw	$zero,96($s0)
    # Line 549
    lbu	$a2,59($s5)
    andi	$a2,$a2,0xf
    sw	$a2,96($s0)
    # Line 551
    lbu	$a6,179($s0)
    # Line 549
    lbu	$a7,59($s5)
    li	$s3,-3841
    and	$a2,$a2,$s3
    andi	$a7,$a7,0xf
    sll	$a7,$a7,0x8
    or	$a2,$a2,$a7
    sw	$a2,96($s0)
    # Line 551
    slti	$a6,$a6,4
    # Line 550
    lbu	$a7,60($s5)
    li	$s3,-241
    and	$a2,$s3,$a2
    andi	$a7,$a7,0xf
    sll	$a7,$a7,0x4
    or	$a2,$a2,$a7
    sw	$a2,96($s0)
    li	$at,0xf000
    lbu	$a7,60($s5)
    nor	$at,$at,$zero
    and	$a2,$a2,$at
    andi	$a7,$a7,0xf
    sll	$a7,$a7,0xc
    or	$a2,$a2,$a7
    sw	$a2,96($s0)
    # Line 551
    lui	$at,0x78
    lbu	$a7,61($s5)
    nor	$at,$at,$zero
    and	$a2,$a2,$at
    andi	$a7,$a7,0xf
    sll	$a7,$a7,0x13
    or	$a2,$a2,$a7
    bnez	$a6,.L0dac06d0
    sw	$a2,96($s0)
    # Line 554
    andi	$a6,$a2,0xf
    addiu	$a6,$a6,1
    andi	$a6,$a6,0xf
    li	$a7,-16
    and	$a2,$a2,$a7
    or	$a2,$a6,$a2
    sw	$a2,96($s0)
.L0dac06d0:
    # Line 556
    move	$a0,$s6
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    la	$a3,SYMBOL_LOCATION
    li	$a1,385
    bal __glMgrasWrite
    lw	$a3,220($a3)
    # Line 557
    move	$a0,$s6
    move	$a4,$zero
    li	$a1,273
    la	$a3,SYMBOL_LOCATION
    ld	$a2,144($sp)
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,212($a3)
    lw	$a6,-28164($a2)
    lbu	$a5,166($s0)
    lw	$a2,-28084($a2)
    lw	$a6,1172($a6)
    sll	$a5,$a5,0x3
    sll	$a2,$a2,0x5
    sll	$a6,$a6,0x7
    or	$a2,$a2,$a6
    bal __glMgrasWrite
    or	$a2,$a2,$a5
    # Line 559
    move	$a0,$s6
    li	$a4,1
    li	$a1,384
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a5,0($s5)
    la	$a3,SYMBOL_LOCATION
    lbu	$a2,167($s0)
    lbu	$a5,183($a5)
    lw	$a3,216($a3)
    sll	$a2,$a2,0x2
    sll	$a5,$a5,0x4
    or	$a2,$a2,$a5
    bal __glMgrasWrite
    ori	$a2,$a2,0x1800
    lw	$v0,1076($s6)
    beqzl	$v0,.L0dac077c
    # Line 562
    lw	$at,20($s5)
    b	.L0dac0788
    move	$s3,$v0
.L0dac077c:
    lw	$s3,4($s5)
    sll	$at,$at,0x1
    addu	$s3,$s3,$at
.L0dac0788:
    lw	$v0,1096($s6)
    beqz	$v0,.L0dac079c
    # Line 563
    move	$v1,$v0
    b	.L0dac07b0
    sd	$v0,200($sp)
.L0dac079c:
    lw	$a7,20($s5)
    lw	$a6,8($s5)
    sll	$a7,$a7,0x1
    addu	$a6,$a6,$a7
    sd	$a6,200($sp)
.L0dac07b0:
    lw	$v0,1104($s6)
    beqz	$v0,.L0dac07c4
    # Line 564
    move	$at,$v0
    b	.L0dac07cc
    sd	$v0,208($sp)
.L0dac07c4:
    lw	$v1,12($s5)
    sd	$v1,208($sp)
.L0dac07cc:
    # Line 565
    lw	$a1,28($s5)
    # Line 570
    # lw $t9, -28592($gp) # &__glElementsPerGroup
    # Line 565
    lh	$a1,74($a1)
    # Line 570
    move	$a0,$s2
    jal	__glElementsPerGroup
    sd	$a1,240($sp)
    sd	$s7,424($sp)
    sdc1	$f28,352($sp)
    sd	$v0,248($sp)
    # Line 571
    # lw $t9, -28588($gp) # &__glBytesPerElement
    # Line 570
    move	$a2,$v0
    sd	$v0,152($sp)
    # Line 571
    jal	__glBytesPerElement
    move	$a0,$s1
    # Line 572
    ld	$a6,248($sp)
    mult	$a6,$s3
    # Line 571
    mov.s	$f28,$f0
    # Line 572
    mflo	$a7
    mtc1	$a7,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f28,$f0
    trunc.w.s	$f0,$f0
    lbu	$t2,166($s0)
    mfc1	$t1,$f0
    addiu	$a6,$a6,-1
    bne	$a6,$t2,.L0dac0854
    move	$s7,$t1
    # Line 574
    sltiu	$at,$s1,5126
    bnez	$at,.L0dac1110
    li	$v1,0x8033
    beq	$s1,$v1,.L0dac1110
    li	$a6,0x8034
    beq	$s1,$a6,.L0dac1110
.L0dac0854:
    # Line 578
    li	$a7,1
    sd	$a7,168($sp)
.L0dac085c:
    beqz	$t2,.L0dac1188
.L0dac0860:
    # Line 581
    lui	$s3,0x40
.L0dac0864:
    lw	$a3,20($s5)
    ld	$at,168($sp)
    lw	$t0,8($s5)
    sll	$a3,$a3,0x1
    beqz	$at,.L0dac12c4
    addu	$t0,$t0,$a3
    lbu	$v0,167($s0)
    beqz	$v0,.L0dac1218
    addiu	$a0,$t2,1
    # Line 585
    addiu	$at,$v0,-1
    li	$a7,1
    sllv	$a7,$a7,$at
    mult	$a7,$a0
    mflo	$a6
    nop
    sd	$a6,136($sp)
.L0dac08a4:
    # Line 588
    lw	$v1,4($s5)
    ld	$a0,136($sp)
    addu	$v1,$v1,$a3
    mult	$v1,$a0
    mflo	$v0
    nop
    nop
    # Line 590
    mult	$t0,$v0
    # Line 591
    lw	$t9,0($s6)
    move	$a0,$s6
    # Line 588
    sw	$v0,0($sp)
    # Line 590
    mflo	$a1
    # Line 591
    jalr	$t9
    sd	$a1,184($sp)
    move	$a1,$v0
    move	$s3,$v0
    # Line 593
    li	$a5,3
    addiu	$a4,$sp,8
    move	$a3,$zero
    # lw $t9, -30344($gp) # &__glMgr_LockSingleDMAPool
    ld	$a2,184($sp)
    move	$a0,$s6
    jal	__glMgr_LockSingleDMAPool
    # Line 591
    sw	$v0,4($sp)
    # Line 593
    andi	$a0,$v0,0xff
    bnez	$v0,.L0dac09cc
    ld	$ra,408($sp)
    la	$t2,errno
    ld	$a3,184($sp)
    li	$t3,11
    li	$t1,12
    andi	$a5,$a3,0xfff
    srl	$a3,$a3,0xc
    addiu	$t0,$a3,1
.L0dac092c:
    lw	$v0,0($t2)
    beq	$v0,$t1,.L0dac123c
    nop
    beq	$v0,$t3,.L0dac123c
    # Line 595
    li	$v0,1
.L0dac0940:
    bnezl	$v0,.L0dac09c8
    sd	$s4,416($sp)
    # Line 596
    beqz	$a5,.L0dac0954
    move	$a2,$a3
    # Line 598
    move	$a2,$t0
.L0dac0954:
    ld	$a6,144($sp)
    # Line 599
    lw	$a6,-28164($a6)
    lhu	$a6,1232($a6)
    sd	$a3,400($sp)
    sd	$a5,392($sp)
    sltu	$a6,$a6,$a2
    bnez	$a6,.L0dac09c4
    sd	$t0,384($sp)
    # Line 600
    # lw $t9, -30704($gp) # &mgrTM_UnlockPages
    move	$a0,$s6
    bal mgrTM_UnlockPages
    move	$a1,$zero
    # Line 593
    move	$a0,$s6
    move	$a1,$s3
    ld	$a2,184($sp)
    # lw $t9, -30344($gp) # &__glMgr_LockSingleDMAPool
    move	$a3,$zero
    li	$a5,3
    jal	__glMgr_LockSingleDMAPool
    addiu	$a4,$sp,8
    li	$t1,12
    la	$t2,errno
    li	$t3,11
    andi	$a0,$v0,0xff
    ld	$t0,384($sp)
    ld	$a5,392($sp)
    beqz	$v0,.L0dac092c
    ld	$a3,400($sp)
.L0dac09c4:
    sd	$s4,416($sp)
.L0dac09c8:
    ld	$ra,408($sp)
.L0dac09cc:
    # Line 603
    sw	$zero,16($sp)
    # Line 604
    lw	$v1,16($sp)
    li	$a7,-241
    lui	$v0,0x40
    or	$v0,$v0,$v1
    sw	$v0,16($sp)
    sd	$s4,416($sp)
    # Line 603
    la	$s4,sub_0dbe0000
    # Line 605
    lbu	$at,166($s0)
    lw	$v1,16($sp)
    # Line 603
    addiu	$s4,$s4,-15408
    # Line 605
    sll	$at,$at,0x2
    addu	$at,$at,$s4
    lw	$at,0($at)
    lbu	$v0,167($s0)
    and	$a7,$a7,$v1
    andi	$at,$at,0xf
    sll	$at,$at,0x4
    or	$a7,$a7,$at
    beqz	$v0,.L0dac1224
    sw	$a7,16($sp)
    # Line 606
    addiu	$a3,$v0,-1
.L0dac0a24:
    lw	$a6,16($sp)
    andi	$v1,$a3,0xf
    li	$a7,-16
    and	$a6,$a6,$a7
    or	$v1,$v1,$a6
    # Line 648
    beqz	$a0,.L0dac1158
    # Line 606
    sw	$v1,16($sp)
    # Line 654
    move	$a4,$zero
.L0dac0a44:
    move	$a3,$zero
    li	$a0,-1
    lui	$a2,0x1f
    # lw $t9, -30284($gp) # &__glMgrSaveRSS
    ori	$a2,$a2,0xc0ff
    lui	$a1,0x100
    jal	__glMgrSaveRSS
    ori	$a1,$a1,0x1000
    # Line 659
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    li	$a0,397
    # Line 660
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    la	$a0,SYMBOL_LOCATION
    li	$a1,-1
    jal	__glMgrInitPixelStateERAM
    lw	$a0,972($a0)
    # Line 662
    # lw $t9, -32124($gp) # &__glMgrim_Finish
    jal	__glMgrim_Finish
    sd	$s8,432($sp)
    sd	$zero,256($sp)
    # Line 665
    lwc1	$f1,_lit_3f000000
    lbu	$v0,179($s0)
    # Line 664
    move	$s8,$zero
    # Line 665
    swc1	$f1,40($sp)
    beqz	$v0,.L0dac1244
    swc1	$f1,32($sp)
    # Line 671
    li	$a6,2
    beql	$v0,$a6,.L0dac1280
    lw	$v1,20($s5)
.L0dac0abc:
    # Line 678
    lh	$a7,46($s5)
.L0dac0ac0:
    blez	$a7,.L0dac108c
    sd	$zero,176($sp)
    sd	$s2,336($sp)
    la	$a3,SYMBOL_LOCATION
    lw	$a7,40($sp)
    sd	$s1,344($sp)
    lw	$a3,268($a3)
    sd	$a7,224($sp)
    ld	$v1,168($sp)
    lw	$a6,0($sp)
    trunc.l.s	$f2,$f28
    xori	$v1,$v1,0x1
    sd	$a6,136($sp)
    lw	$a6,32($sp)
    dmfc1	$at,$f2
    sd	$v1,216($sp)
    sd	$a6,232($sp)
    sll	$at,$at,0x0
    b	.L0dac0b2c
    sd	$at,328($sp)
.L0dac0b10:
    ld	$a7,176($sp)
    lh	$at,46($s5)
    addiu	$a7,$a7,1
    sd	$a7,176($sp)
    slt	$a7,$a7,$at
    beqz	$a7,.L0dac1090
    # Line 801
    nop	# was lw $t9, -30280($gp) # &__glMgrRestoreRSS
.L0dac0b2c:
    sd	$zero,160($sp)
    # Line 680
    move	$a0,$s6
    # lw $t9, -30696($gp) # &__glMgrasWrite
    li	$a4,1
    move	$a2,$zero
    bal __glMgrasWrite
    li	$a1,400
    # Line 686
    lw	$v1,0($s5)
    # Line 685
    lw	$v0,28($s5)
    li	$t8,401
    li	$a1,0xec10
    la	$a2,SYMBOL_LOCATION
    lui	$a7,0x7
    ori	$a7,$a7,0x4080
    # Line 682
    lw	$a3,268($a2)
    # Line 683
    lw	$a6,272($a2)
    # Line 681
    sw	$a1,0($a7)
    # Line 682
    sw	$a3,0($a7)
    # Line 683
    sw	$a6,0($a7)
    # Line 684
    sw	$t8,0($a7)
    # Line 685
    lbu	$a6,58($s5)
    lh	$v0,74($v0)
    # Line 686
    lbu	$v1,179($v1)
    # Line 685
    sll	$a6,$a6,0x8
    or	$a6,$a6,$v0
    # Line 686
    beqz	$v1,.L0dac0ba4
    # Line 685
    sw	$a6,0($a7)
    # Line 686
    lw	$at,20($s5)
    beqzl	$at,.L0dac0bd4
    # Line 693
    lh	$a7,44($s5)
.L0dac0ba4:
    # Line 691
    lh	$v1,56($s5)
    li	$a7,403
    addu	$v1,$v1,$v0
    # Line 689
    lw	$at,280($a2)
    lui	$a6,0x7
    ori	$a6,$a6,0x4080
    # Line 687
    sw	$a1,0($a6)
    # Line 688
    sw	$a3,0($a6)
    # Line 689
    sw	$at,0($a6)
    # Line 690
    sw	$a7,0($a6)
    # Line 691
    sw	$v1,0($a6)
    # Line 693
    lh	$a7,44($s5)
.L0dac0bd4:
    blez	$a7,.L0dac0b10
    move	$v0,$zero
    b	.L0dac0ca8
    lw	$t0,8($sp)
.L0dac0be4:
    # Line 790
    ld	$t0,160($sp)
    lhu	$t1,54($s5)
    mult	$t1,$t0
    # Line 792
    li	$a4,1
    move	$a2,$zero
    li	$a1,400
    move	$a0,$s6
    la	$a3,SYMBOL_LOCATION
    # Line 790
    lw	$a6,28($s5)
    # Line 792
    # lw $t9, -30696($gp) # &__glMgrasWrite
    # Line 791
    xori	$t0,$t0,0x1
    # Line 790
    lh	$a5,74($a6)
    sd	$t0,160($sp)
    mflo	$a7
    addu	$a5,$a5,$a7
    sh	$a5,74($a6)
    # Line 792
    bal __glMgrasWrite
    lw	$a3,268($a3)
    # Line 797
    lw	$v1,28($s5)
    li	$t8,401
    ld	$t0,160($sp)
    lbu	$a7,58($s5)
    # Line 693
    ld	$v0,184($sp)
    ld	$at,216($sp)
    # Line 797
    xor	$a7,$a7,$t0
    li	$a1,0xec10
    # Line 693
    multu	$at,$v0
    la	$a2,SYMBOL_LOCATION
    lui	$a6,0x7
    ori	$a6,$a6,0x4080
    # Line 794
    lw	$a3,268($a2)
    # Line 795
    lw	$v0,272($a2)
    # Line 793
    sw	$a1,0($a6)
    # Line 794
    sw	$a3,0($a6)
    # Line 795
    sw	$v0,0($a6)
    # Line 693
    ld	$v0,440($sp)
    # Line 796
    sw	$t8,0($a6)
    # Line 693
    lw	$at,8($sp)
    # Line 797
    lh	$v1,74($v1)
    # Line 693
    mflo	$t0
    addu	$t0,$t0,$at
    sw	$t0,8($sp)
    # Line 797
    sll	$a7,$a7,0x8
    # Line 693
    lh	$at,44($s5)
    addiu	$v0,$v0,1
    # Line 797
    or	$v1,$v1,$a7
    # Line 693
    slt	$at,$v0,$at
    beqz	$at,.L0dac0b10
    # Line 797
    sw	$v1,0($a6)
.L0dac0ca8:
    # Line 693
    lbu	$a7,179($s0)
    li	$a6,0xf018
    li	$at,8
    beq	$a7,$at,.L0dac0ff4
    # Line 695
    ld	$v1,176($sp)
    # Line 694
    move	$t1,$v0
.L0dac0cc0:
    # Line 695
    lw	$a4,1100($s6)
    addu	$a4,$a4,$v1
    ld	$v1,208($sp)
    multu	$a4,$v1
    lw	$v1,1092($s6)
    addu	$v1,$v1,$t1
    mflo	$a4
    addu	$v1,$v1,$a4
    ld	$a4,200($sp)
    multu	$v1,$a4
    li	$a7,7
    # Line 697
    sw	$a7,48($sp)
    # Line 698
    sw	$a6,52($sp)
    # Line 699
    lw	$v1,4($s5)
    # Line 743
    li	$t3,512
    li	$at,16397
    # Line 699
    addu	$v1,$v1,$s8
    sw	$v1,56($sp)
    # Line 695
    mflo	$a4
    # Line 703
    lw	$a6,16($sp)
    # Line 700
    lw	$a7,8($s5)
    # Line 695
    multu	$a4,$s7
    # Line 703
    sw	$a6,72($sp)
    # Line 695
    ld	$a6,192($sp)
    # Line 701
    ld	$v1,224($sp)
    # Line 704
    sw	$at,76($sp)
    # Line 700
    ld	$at,256($sp)
    # Line 701
    sw	$v1,64($sp)
    # Line 704
    ld	$v1,168($sp)
    # Line 700
    addu	$a7,$a7,$at
    # Line 702
    ld	$a4,232($sp)
    # Line 700
    sw	$a7,60($sp)
    li	$a7,4
    # Line 702
    sw	$a4,68($sp)
    # Line 695
    mflo	$a4
    # Line 704
    beqz	$v1,.L0dac0f30
    # Line 695
    addu	$a4,$a4,$a6
    sd	$v0,440($sp)
    # Line 716
    addiu	$a2,$sp,48
    lui	$a1,0x6d67
    ori	$a1,$a1,0x15
    # lw $t9, -17944($gp) # &ioctl
    li	$a0,3
    # Line 708
    ld	$t1,136($sp)
    sd	$a4,264($sp)
    # Line 707
    sw	$t0,92($sp)
    # Line 709
    sw	$t1,100($sp)
    # Line 708
    sw	$t1,96($sp)
    li	$a4,16397
    # Line 710
    lw	$t0,4($s5)
    li	$a3,512
    # Line 712
    lw	$a5,16($sp)
    # Line 710
    addu	$t0,$t0,$s8
    sw	$t0,104($sp)
    # Line 711
    ld	$a7,256($sp)
    lw	$a6,8($s5)
    # Line 714
    sw	$a3,120($sp)
    # Line 713
    sw	$a4,116($sp)
    # Line 712
    sw	$a5,112($sp)
    # Line 715
    sw	$a0,124($sp)
    # Line 711
    addu	$a6,$a6,$a7
    sw	$a6,108($sp)
    # Line 716
    jal	ioctl
    lw	$a0,31560($s6)
    bltz	$v0,.L0dac1034
    # Line 761
    nop	# was lw $t9, -30308($gp) # &__glMgrWaitForDMARead
.L0dac0dc8:
    jal	__glMgrWaitForDMARead
    move	$a0,$s6
    li	$a6,3584
    lui	$at,0xc
    # Line 767
    ld	$v1,144($sp)
    ori	$at,$at,0x4
    lui	$a7,0x7
    lw	$v1,-25272($v1)
    ori	$a7,$a7,0x4080
    lui	$v0,0x7
    addu	$v0,$v0,$v1
    lui	$v1,0xa
    ori	$v1,$v1,0x704
    # Line 763
    sw	$v1,0($a7)
    sw	$zero,0($a7)
    # Line 766
    sw	$at,0($a7)
    # Line 767
    sw	$a6,0($a7)
    lw	$v1,0($v0)
    li	$at,0xda00
    andi	$v1,$v1,0x2
    bnez	$v1,.L0dac0e30
    # Line 771
    ld	$a7,168($sp)
.L0dac0e20:
    # Line 767
    lw	$a6,0($v0)
    andi	$a6,$a6,0x2
    beqz	$a6,.L0dac0e20
    nop
.L0dac0e30:
    li	$a6,-1
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    # Line 771
    beqz	$a7,.L0dac0be4
    sw	$at,0($v1)
    # Line 775
    lw	$s3,1080($s6)
    multu	$s3,$s7
    ld	$s2,152($sp)
    lw	$s1,1084($s6)
    mflo	$v1
    nop
    nop
    multu	$s1,$s2
    mflo	$a7
    dsll32	$a7,$a7,0x0
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f4
    nop
    cvt.s.l	$f4,$f4
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f3
    nop
    cvt.s.l	$f3,$f3
    mul.s	$f4,$f4,$f28
    add.s	$f3,$f3,$f4
    # Line 779
    ld	$at,256($sp)
    lw	$s3,8($s5)
    # Line 775
    trunc.l.s	$f3,$f3
    # Line 779
    addu	$s3,$s3,$at
    addiu	$s3,$s3,-1
    # Line 775
    dmfc1	$s2,$f3
    ld	$at,264($sp)
    # Line 774
    lw	$s1,4($sp)
    # Line 775
    sll	$s2,$s2,0x0
    # Line 779
    beq	$s3,$a6,.L0dac0be4
    # Line 775
    addu	$s2,$s2,$at
    b	.L0dac0f1c
    # Line 779
    lbu	$v0,167($s0)
.L0dac0ecc:
    # Line 780
    addiu	$a3,$v0,-1
.L0dac0ed0:
    move	$a0,$s1
    lbu	$a7,1072($s6)
    ld	$a5,344($sp)
    ld	$a4,336($sp)
    move	$a1,$s2
    lw	$a6,4($s5)
    lbu	$a2,166($s0)
    # lw $t9, -30436($gp) # &__glMgr_FormatTexels
    addu	$a6,$a6,$s8
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$s4
    jal	__glMgr_FormatTexels
    lw	$a2,0($a2)
    # Line 786
    addu	$s2,$s7,$s2
    # Line 785
    ld	$at,136($sp)
    li	$a7,-1
    # Line 779
    beq	$s3,$a7,.L0dac0be4
    # Line 785
    addu	$s1,$at,$s1
    # Line 779
    lbu	$v0,167($s0)
.L0dac0f1c:
    # Line 780
    move	$a3,$zero
    # Line 779
    bnez	$v0,.L0dac0ecc
    addiu	$s3,$s3,-1
    b	.L0dac0ed0
    nop
.L0dac0f30:
    # Line 718
    lbu	$v1,1072($s6)
    ld	$a6,328($sp)
    beqz	$v1,.L0dac1000
    lbu	$t2,166($s0)
    # Line 722
    move	$t1,$a6
    # Line 729
    andi	$at,$t2,0x3
    # Line 722
    beqz	$a6,.L0dac1024
    # Line 729
    sll	$at,$at,0x2
    # Line 724
    beq	$a7,$t1,.L0dac102c
    nop
.L0dac0f58:
    sd	$v0,440($sp)
    sd	$a4,264($sp)
    # Line 729
    andi	$t3,$t1,0x3
    or	$t3,$t3,$at
    ori	$t3,$t3,0x240
.L0dac0f6c:
    # Line 754
    addiu	$a2,$sp,48
    lui	$a1,0x6d67
    ori	$a1,$a1,0x15
    # lw $t9, -17944($gp) # &ioctl
    # Line 747
    sw	$s7,100($sp)
    # Line 746
    sw	$s7,96($sp)
    # Line 745
    sw	$t0,92($sp)
    li	$v1,16397
    # Line 748
    lw	$a5,4($s5)
    li	$v0,3
    # Line 750
    lw	$a0,16($sp)
    # Line 748
    addu	$a5,$a5,$s8
    sw	$a5,104($sp)
    # Line 749
    ld	$a4,256($sp)
    lw	$a3,8($s5)
    # Line 753
    sw	$v0,124($sp)
    # Line 752
    sw	$t3,120($sp)
    # Line 751
    sw	$v1,116($sp)
    # Line 750
    sw	$a0,112($sp)
    # Line 749
    addu	$a3,$a3,$a4
    sw	$a3,108($sp)
    # Line 754
    jal	ioctl
    lw	$a0,31560($s6)
    bgez	$v0,.L0dac0dc8
    # Line 761
    nop	# was lw $t9, -30308($gp) # &__glMgrWaitForDMARead
    # Line 756
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbe0000
    jal	perror
    addiu	$a0,$a0,-15392
    # Line 757
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dac0dc8
    # Line 761
    nop	# was lw $t9, -30308($gp) # &__glMgrWaitForDMARead
.L0dac0ff4:
    # Line 694
    move	$t1,$zero
    b	.L0dac0cc0
    nop
.L0dac1000:
    li	$a6,1
    # Line 732
    beq	$a6,$t2,.L0dac1058
    ld	$at,336($sp)
    li	$a7,0x8000
    beq	$a7,$at,.L0dac105c
    ld	$a6,328($sp)
    sd	$v0,440($sp)
    b	.L0dac0f6c
    sd	$a4,264($sp)
.L0dac1024:
    b	.L0dac0f58
    # Line 724
    li	$t1,1
.L0dac102c:
    b	.L0dac0f58
    # Line 727
    li	$t1,3
.L0dac1034:
    # Line 717
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbe0000
    jal	perror
    addiu	$a0,$a0,-15392
    # Line 718
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dac0dc8
    # Line 761
    nop	# was lw $t9, -30308($gp) # &__glMgrWaitForDMARead
.L0dac1058:
    ld	$a6,328($sp)
.L0dac105c:
    li	$a7,4
    # Line 734
    beqz	$a6,.L0dac122c
    move	$t1,$a6
    # Line 736
    beq	$a7,$t1,.L0dac1234
.L0dac106c:
    # Line 741
    andi	$at,$t2,0x3
    sd	$v0,440($sp)
    sd	$a4,264($sp)
    sll	$at,$at,0x2
    andi	$t3,$t1,0x3
    or	$t3,$t3,$at
    b	.L0dac0f6c
    ori	$t3,$t3,0x280
.L0dac108c:
    # Line 801
    # lw $t9, -30280($gp) # &__glMgrRestoreRSS
.L0dac1090:
    jal	__glMgrRestoreRSS
    nop
    ldc1	$f28,352($sp)
    ld	$v1,168($sp)
    ld	$s7,424($sp)
    ld	$s4,416($sp)
    beqz	$v1,.L0dac1260
    ld	$s8,432($sp)
    # Line 803
    li	$a3,3
    ld	$a2,184($sp)
    # lw $t9, -30340($gp) # &__glMgr_UnlockSingleDMAPool
    lw	$s3,4($sp)
    move	$a0,$s6
    jal	__glMgr_UnlockSingleDMAPool
    move	$a1,$s3
    # Line 804
    lw	$t9,12($s6)
    move	$a0,$s6
    jalr	$t9
    move	$a1,$s3
    ld	$ra,408($sp)
.L0dac10e0:
    ld	$gp,296($sp)
    # Line 809
    ld	$s0,288($sp)
    ld	$s1,280($sp)
    ld	$s2,320($sp)
    ld	$s3,312($sp)
    # Line 808
    lw	$a7,28($s5)
    # Line 809
    ld	$s5,272($sp)
    ld	$s6,304($sp)
    # Line 808
    ld	$a6,240($sp)
    # Line 809
    addiu	$sp,$sp,496
    jr	$ra
    # Line 808
    sh	$a6,74($a7)
.L0dac1110:
    # Line 577
    b	.L0dac085c
    sd	$zero,168($sp)
.L0dac1118:
    ld	$gp,296($sp)
    # Line 500
    ld	$s0,288($sp)
    ld	$s1,280($sp)
    ld	$s2,320($sp)
    ld	$s3,312($sp)
    ld	$s5,272($sp)
    ld	$s6,304($sp)
    jr	$ra
    addiu	$sp,$sp,496
.L0dac113c:
    # Line 637
    lw	$at,16($sp)
    li	$v1,-16
    and	$at,$at,$v1
    ori	$at,$at,0x7
    sw	$at,16($sp)
.L0dac1150:
    # Line 648
    bnez	$a0,.L0dac0a44
    # Line 654
    move	$a4,$zero
.L0dac1158:
    ld	$gp,296($sp)
    # Line 652
    ld	$s0,288($sp)
    ld	$s1,280($sp)
    ld	$s2,320($sp)
    ld	$s3,312($sp)
    ld	$s4,416($sp)
    ld	$s5,272($sp)
    ld	$s6,304($sp)
    ld	$s7,424($sp)
    ldc1	$f28,352($sp)
    jr	$ra
    addiu	$sp,$sp,496
.L0dac1188:
    # Line 579
    li	$a6,6404
    beq	$s2,$a6,.L0dac11a4
    li	$a7,6405
    beq	$s2,$a7,.L0dac11a4
    li	$at,6406
    bne	$s2,$at,.L0dac0864
    # Line 581
    lui	$s3,0x40
.L0dac11a4:
    li	$v1,1
    b	.L0dac0860
    sd	$v1,168($sp)
.L0dac11b0:
    # Line 524
    move	$a4,$zero
    sltiu	$a2,$a5,1
    # lw $t9, -30696($gp) # &__glMgrasWrite
    la	$a3,SYMBOL_LOCATION
    li	$a1,416
    bal __glMgrasWrite
    lw	$a3,288($a3)
    # Line 526
    lw	$a5,0($s5)
    lbu	$a5,184($a5)
    sltiu	$a5,$a5,1
    sw	$a5,1168($s3)
    lw	$v0,0($s5)
    b	.L0dac0568
    lbu	$a5,184($v0)
.L0dac11e8:
    # Line 529
    move	$a4,$zero
    move	$a2,$a5
    # lw $t9, -30696($gp) # &__glMgrasWrite
    la	$a3,SYMBOL_LOCATION
    li	$a1,395
    bal __glMgrasWrite
    lw	$a3,260($a3)
    # Line 531
    lw	$a6,0($s5)
    lbu	$a6,184($a6)
    sw	$a6,1176($s3)
    b	.L0dac0574
    lw	$v0,0($s5)
.L0dac1218:
    # Line 587
    move	$a7,$a0
    b	.L0dac08a4
    sd	$a0,136($sp)
.L0dac1224:
    # Line 606
    b	.L0dac0a24
    move	$a3,$zero
.L0dac122c:
    b	.L0dac106c
    # Line 736
    li	$t1,1
.L0dac1234:
    b	.L0dac106c
    # Line 739
    li	$t1,3
.L0dac123c:
    b	.L0dac0940
    # Line 595
    move	$v0,$zero
.L0dac1244:
    # Line 665
    lw	$at,20($s5)
    beqz	$at,.L0dac1258
    lwc1	$f0,_lit_bf000000
    # Line 669
    swc1	$f0,40($sp)
    # Line 668
    li	$s8,2
.L0dac1258:
    # Line 671
    b	.L0dac0abc
    swc1	$f0,32($sp)
.L0dac1260:
    # Line 806
    move	$a0,$s6
    # lw $t9, -30340($gp) # &__glMgr_UnlockSingleDMAPool
    ld	$a1,192($sp)
    li	$a3,3
    jal	__glMgr_UnlockSingleDMAPool
    lw	$a2,24($sp)
    b	.L0dac10e0
    ld	$ra,408($sp)
.L0dac1280:
    # Line 671
    beqzl	$v1,.L0dac0ac0
    # Line 678
    lh	$a7,46($s5)
    # Line 674
    li	$s8,2
    # Line 675
    lwc1	$f1,_lit_bf000000
    # Line 674
    li	$a6,2
    sd	$a6,256($sp)
    # Line 675
    swc1	$f1,40($sp)
    b	.L0dac0abc
    swc1	$f1,32($sp)
.L0dac12a4:
    # Line 514
    move	$a0,$s6
    # lw $t9, -30756($gp) # &mgrTM_MakeResident
    move	$a4,$zero
    li	$a3,1
    bal mgrTM_MakeResident
    li	$a2,1
    b	.L0dac04f8
    # Line 518
    move	$a4,$zero
.L0dac12c4:
    # Line 608
    mult	$t0,$t1
    # Line 609
    lh	$t3,46($s5)
    lh	$t2,44($s5)
    # Line 608
    mflo	$t1
    nop
    nop
    # Line 609
    mult	$t2,$t3
    mflo	$t0
    nop
    nop
    multu	$t0,$t1
    # Line 610
    li	$a5,3
    addiu	$a4,$sp,8
    move	$a3,$zero
    ld	$a1,192($sp)
    move	$a0,$s6
    # lw $t9, -30344($gp) # &__glMgr_LockSingleDMAPool
    sd	$t1,184($sp)
    # Line 609
    mflo	$a7
    sd	$a7,128($sp)
    # Line 610
    move	$a2,$a7
    jal	__glMgr_LockSingleDMAPool
    # Line 609
    sw	$a7,24($sp)
    # Line 610
    andi	$a0,$v0,0xff
    bnez	$v0,.L0dac13d8
    ld	$ra,408($sp)
    ld	$a5,128($sp)
    andi	$a3,$a5,0xfff
    srl	$a5,$a5,0xc
    addiu	$t0,$a5,1
.L0dac133c:
    la	$v0,errno
    lw	$v0,0($v0)
    li	$a6,12
    beq	$v0,$a6,.L0dac14e8
    li	$v1,11
    beq	$v0,$v1,.L0dac14e8
    # Line 612
    li	$v0,1
.L0dac1358:
    bnezl	$v0,.L0dac13d4
    sd	$s4,416($sp)
    # Line 613
    beqz	$a3,.L0dac136c
    move	$a2,$a5
    # Line 615
    move	$a2,$t0
.L0dac136c:
    ld	$a6,144($sp)
    # Line 616
    lw	$a6,-28164($a6)
    lhu	$a6,1232($a6)
    sd	$a3,376($sp)
    sd	$a5,368($sp)
    sltu	$a6,$a6,$a2
    bnez	$a6,.L0dac13d0
    sd	$t0,360($sp)
    # Line 617
    # lw $t9, -30704($gp) # &mgrTM_UnlockPages
    move	$a0,$s6
    bal mgrTM_UnlockPages
    move	$a1,$zero
    # Line 610
    move	$a0,$s6
    ld	$a1,192($sp)
    ld	$a2,128($sp)
    # lw $t9, -30344($gp) # &__glMgr_LockSingleDMAPool
    move	$a3,$zero
    li	$a5,3
    jal	__glMgr_LockSingleDMAPool
    addiu	$a4,$sp,8
    andi	$a0,$v0,0xff
    ld	$t0,360($sp)
    ld	$a5,368($sp)
    beqz	$v0,.L0dac133c
    ld	$a3,376($sp)
.L0dac13d0:
    sd	$s4,416($sp)
.L0dac13d4:
    ld	$ra,408($sp)
.L0dac13d8:
    # Line 620
    sw	$zero,16($sp)
    # Line 621
    lw	$a6,16($sp)
    # Line 623
    sltiu	$a7,$s1,5124
    # Line 621
    or	$a6,$s3,$a6
    sw	$a6,16($sp)
    sd	$s4,416($sp)
    # Line 620
    la	$s4,sub_0dbe0000
    # Line 622
    lbu	$v1,166($s0)
    lw	$a6,16($sp)
    # Line 620
    addiu	$s4,$s4,-15408
    # Line 622
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s4
    lw	$v1,0($v1)
    li	$at,-241
    and	$at,$at,$a6
    andi	$v1,$v1,0xf
    sll	$v1,$v1,0x4
    or	$at,$at,$v1
    # Line 623
    bnez	$a7,.L0dac1468
    # Line 622
    sw	$at,16($sp)
    # Line 623
    sltiu	$a6,$s1,5125
    bnez	$a6,.L0dac113c
    li	$v0,0x8033
    sltu	$a7,$s1,$v0
    bnez	$a7,.L0dac14c4
    sltu	$at,$v0,$s1
    beqz	$at,.L0dac152c
    li	$v1,0x8034
    bne	$s1,$v1,.L0dac1150
    nop
    # Line 646
    lw	$a6,16($sp)
    li	$a7,-16
    and	$a6,$a6,$a7
    ori	$a6,$a6,0xa
    b	.L0dac1150
    sw	$a6,16($sp)
.L0dac1468:
    # Line 623
    sltiu	$at,$s1,5122
    bnez	$at,.L0dac149c
    sltiu	$v1,$s1,5123
    bnez	$v1,.L0dac1514
    li	$a6,5123
    bne	$s1,$a6,.L0dac1150
    nop
    # Line 634
    lw	$a7,16($sp)
    li	$at,-16
    and	$a7,$a7,$at
    ori	$a7,$a7,0x1
    # Line 635
    b	.L0dac1150
    # Line 634
    sw	$a7,16($sp)
.L0dac149c:
    # Line 623
    sltiu	$v1,$s1,5121
    bnez	$v1,.L0dac14f0
    sltiu	$a6,$s1,5122
    beqz	$a6,.L0dac1150
    nop
    # Line 628
    lw	$a7,16($sp)
    li	$at,-16
    and	$a7,$a7,$at
    # Line 629
    b	.L0dac1150
    # Line 628
    sw	$a7,16($sp)
.L0dac14c4:
    # Line 623
    li	$v1,5125
    bne	$s1,$v1,.L0dac1150
    nop
    # Line 640
    lw	$a6,16($sp)
    li	$a7,-16
    and	$a6,$a6,$a7
    ori	$a6,$a6,0x3
    # Line 641
    b	.L0dac1150
    # Line 640
    sw	$a6,16($sp)
.L0dac14e8:
    b	.L0dac1358
    # Line 612
    move	$v0,$zero
.L0dac14f0:
    # Line 623
    li	$at,5120
    bne	$s1,$at,.L0dac1150
    nop
    # Line 625
    lw	$v1,16($sp)
    li	$a6,-16
    and	$v1,$v1,$a6
    ori	$v1,$v1,0x4
    # Line 626
    b	.L0dac1150
    # Line 625
    sw	$v1,16($sp)
.L0dac1514:
    # Line 631
    lw	$a7,16($sp)
    li	$at,-16
    and	$a7,$a7,$at
    ori	$a7,$a7,0x5
    # Line 632
    b	.L0dac1150
    # Line 631
    sw	$a7,16($sp)
.L0dac152c:
    # Line 643
    lw	$v1,16($sp)
    li	$a6,-16
    and	$v1,$v1,$a6
    ori	$v1,$v1,0x8
    # Line 644
    b	.L0dac1150
    # Line 643
    sw	$v1,16($sp)
.end mgrTM_DoTexRead

# Function: mgrTM_DoCopyTex
# Declared: Line 812 (Source lines: 819-1003)
# Address: 0x0dac1544 - 0x0dac1da8 (Size: 2148 bytes, Frame: 192)
.globl mgrTM_DoCopyTex
.ent mgrTM_DoCopyTex
mgrTM_DoCopyTex:
    # Line 833
    li	$t0,9
    move	$a7,$zero
    # Line 819
    addiu	$sp,$sp,-320
    sd	$a5,184($sp)
    sd	$a4,176($sp)
    sd	$s6,232($sp)
    move	$s6,$a3
    # Line 832
    addiu	$v0,$sp,32
    sd	$s2,240($sp)
    # Line 822
    sll	$s2,$a1,0x2
    addu	$s2,$s2,$a0
    lw	$s2,20($s2)
    sd	$s0,208($sp)
    # Line 819
    move	$s0,$a0
    sd	$s4,216($sp)
    sd	$s1,200($sp)
    # Line 827
    lw	$s1,__glCurrentContext
    # Line 819
    move	$s4,$a2
    sd	$gp,192($sp)
    # Line 833
    addiu	$t2,$s1,1072
    sd	$s3,224($sp)
    # Line 819
    lui	$s3,0x14
    addiu	$s3,$s3,-11948
    addu	$gp,$t9,$s3
    # Line 833
    la	$t1,__glMgr_DefaultPack
    # Line 834
    addiu	$a3,$s1,1108
    # Line 819
    move	$s3,$a1
    # Line 832
    lw	$a2,1104($s1)
    ld	$a0,1088($s1)
    ld	$v1,1080($s1)
    ld	$at,1072($s1)
    ld	$a1,1096($s1)
    sd	$v1,8($v0)
    sd	$at,0($v0)
    sd	$a1,24($v0)
    # Line 834
    li	$a1,9
    # Line 832
    sd	$a0,16($v0)
    # Line 834
    move	$a0,$zero
    # Line 832
    sw	$a2,32($v0)
.L0dac15e0:
    # Line 833
    addu	$v0,$a7,$t2
    addu	$at,$a7,$t1
    addiu	$a7,$a7,4
    lw	$at,0($at)
    addiu	$t0,$t0,-1
    bgtz	$t0,.L0dac15e0
    sw	$at,0($v0)
    # Line 834
    addiu	$a2,$sp,72
.L0dac1600:
    addu	$v0,$a0,$a3
    addu	$v1,$a0,$a2
    addiu	$a0,$a0,4
    lw	$v0,0($v0)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0dac1600
    sw	$v0,0($v1)
    # Line 835
    li	$a0,9
    move	$a1,$zero
    addiu	$a3,$s1,1108
    la	$a2,__glMgr_DefaultUnpack
.L0dac162c:
    addu	$a6,$a1,$a3
    addu	$v1,$a1,$a2
    addiu	$a1,$a1,4
    lw	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0dac162c
    sw	$v1,0($a6)
    lbu	$a6,194($s0)
    # Line 843
    move	$a1,$s3
    # Line 835
    beqz	$a6,.L0dac1688
    # Line 843
    slti	$v0,$s3,9
    # Line 835
    lbu	$at,181($s0)
    beqz	$at,.L0dac168c
    # Line 856
    move	$a0,$s1
    # Line 843
    beqz	$v0,.L0dac1688
    sll	$a0,$a1,0x2
    addu	$a0,$a0,$s0
    lw	$a6,20($a0)
.L0dac1674:
    addiu	$at,$s0,36
    beqz	$a6,.L0dac1a2c
    addiu	$a0,$a0,4
    bnel	$at,$a0,.L0dac1674
    lw	$a6,20($a0)
.L0dac1688:
    # Line 856
    move	$a0,$s1
.L0dac168c:
    move	$a1,$s0
    # lw $t9, -30748($gp) # &mgrTM_VidTexWait
    sd	$s5,256($sp)
    sd	$ra,248($sp)
    bal mgrTM_VidTexWait
    move	$a2,$zero
    # Line 859
    lui	$s5,0x1
    addu	$s5,$s1,$s5
    lw	$v0,-28164($s5)
    lw	$v0,488($v0)
    bne	$v0,$s2,.L0dac16c8
    # Line 860
    nop	# was lw $t9, -30752($gp) # &mgrTM_SetLoadBuffer
    # Line 859
    lbu	$at,194($s0)
    beqz	$at,.L0dac1abc
    # Line 860
    nop	# was lw $t9, -30752($gp) # &mgrTM_SetLoadBuffer
.L0dac16c8:
    move	$a0,$s1
    bal mgrTM_SetLoadBuffer
    move	$a1,$s0
    # Line 861
    # lw $t9, -30732($gp) # &mgrTM_SendTlMode
    move	$a0,$s1
    bal mgrTM_SendTlMode
    move	$a1,$s2
    # Line 863
    sw	$zero,-26360($s5)
    # Line 864
    lw	$a0,-26360($s5)
    li	$a6,-16
    and	$a0,$a0,$a6
    andi	$a6,$s3,0xf
    or	$a0,$a0,$a6
    sw	$a0,-26360($s5)
    # Line 866
    li	$a6,-241
    # Line 865
    lbu	$at,60($s2)
    li	$v0,-3841
    and	$a0,$a0,$v0
    andi	$at,$at,0xf
    sll	$at,$at,0x8
    or	$a0,$a0,$at
    sw	$a0,-26360($s5)
    # Line 866
    and	$a0,$a0,$a6
    lbu	$v0,179($s0)
    lbu	$a6,59($s2)
    li	$at,3
    slt	$at,$at,$v0
    addu	$a6,$a6,$at
    andi	$a6,$a6,0xf
    sll	$a6,$a6,0x4
    or	$a0,$a0,$a6
    sw	$a0,-26360($s5)
    lbu	$v0,194($s0)
    beqz	$v0,.L0dac1774
    # Line 871
    move	$a4,$zero
    # Line 866
    lbu	$at,181($s0)
    beqz	$at,.L0dac1770
    # Line 870
    li	$v0,0xf000
    nor	$v0,$v0,$zero
    and	$v0,$a0,$v0
    ori	$v0,$v0,0x9000
    sw	$v0,-26360($s5)
.L0dac1770:
    # Line 871
    move	$a4,$zero
.L0dac1774:
    lw	$a2,-26360($s5)
    li	$a1,418
    # lw $t9, -30696($gp) # &__glMgrasWrite
    # Line 870
    la	$a3,SYMBOL_LOCATION
    # Line 871
    move	$a0,$s1
    bal __glMgrasWrite
    lw	$a3,296($a3)
    # Line 873
    lw	$a6,-28164($s5)
    sw	$s2,488($a6)
    # Line 877
    lw	$at,12($s2)
.L0dac179c:
    lh	$ra,38($s2)
    mult	$ra,$at
    lh	$t9,36($s2)
    lhu	$t3,50($s2)
    mflo	$t8
    sra	$t9,$t9,0x1
    addu	$t8,$t8,$t9
    mult	$t3,$t8
    # Line 876
    lw	$t1,28($s2)
    # Line 879
    move	$a2,$s3
    # Line 876
    lh	$t2,74($t1)
    # Line 879
    move	$a1,$s0
    # Line 877
    mflo	$t0
    addu	$t0,$t0,$t2
    sh	$t0,74($t1)
    # Line 879
    move	$a0,$s1
    # Line 878
    lh	$a7,36($s2)
    # Line 879
    # lw $t9, -30724($gp) # &mgrTM_SendTlTable
    sd	$t2,160($sp)
    # Line 878
    andi	$a7,$a7,0x1
    # Line 879
    bal mgrTM_SendTlTable
    sd	$a7,168($sp)
    # Line 880
    # lw $t9, -31964($gp) # &__glMgrGetColorMatrixState
    la	$s3,SYMBOL_LOCATION
    jal	__glMgrGetColorMatrixState
    move	$a0,$s1
    ld	$t1,168($sp)
    lbu	$v0,179($s0)
    ld	$a3,184($sp)
    li	$v1,2
    beq	$v0,$v1,.L0dac1b0c
    ld	$a2,176($sp)
    # Line 881
    li	$a1,8
.L0dac1820:
    lw	$t2,4($s2)
    mult	$t2,$t1
    addiu	$a0,$s1,31676
    sd	$a0,152($sp)
    lh	$a4,32($s2)
    lh	$a7,42($s2)
    lh	$a6,40($s2)
    lh	$a5,34($s2)
    sw	$s4,4($sp)
    # lw $t9, -29768($gp) # &__glMgrMakePixelDesc
    lw	$t1,152($s0)
    sw	$zero,28($sp)
    sw	$s6,20($sp)
    sw	$t1,12($sp)
    mflo	$t0
    jal	__glMgrMakePixelDesc
    addu	$a4,$a4,$t0
    lbu	$at,194($s0)
    beqz	$at,.L0dac1ac4
    # Line 898
    move	$a4,$zero
    li	$a1,425
    move	$a0,$s1
    # Line 893
    li	$v1,-1
    sh	$v1,162($s0)
    # Line 896
    la	$v0,MgrasPrevVidTexture
    # Line 898
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,324($s3)
    # Line 896
    sw	$s0,0($v0)
    # Line 898
    bal __glMgrasWrite
    lh	$a2,40($s2)
    # Line 900
    move	$a0,$s1
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,328($s3)
    lh	$a2,42($s2)
    bal __glMgrasWrite
    li	$a1,426
    # Line 902
    move	$a0,$s1
    move	$a4,$zero
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,332($s3)
    lh	$a2,32($s2)
    bal __glMgrasWrite
    li	$a1,427
    # Line 904
    move	$a0,$s1
    li	$a4,1
    lw	$a3,336($s3)
    lh	$a5,42($s2)
    lh	$a2,34($s2)
    # lw $t9, -30696($gp) # &__glMgrasWrite
    li	$a1,428
    addu	$a2,$a2,$a5
    bal __glMgrasWrite
    addiu	$a2,$a2,-1
    # Line 911
    # lw $t9, -32124($gp) # &__glMgrim_Finish
    jal	__glMgrim_Finish
    nop
    # Line 919
    sw	$zero,112($sp)
    # Line 920
    li	$a2,1
    sw	$a2,116($sp)
    # Line 921
    lbu	$v1,183($s0)
    sw	$v1,148($sp)
    # Line 922
    lh	$v0,40($s2)
    sw	$v0,120($sp)
    # Line 923
    lh	$at,42($s2)
    sw	$at,124($sp)
    lbu	$a6,181($s0)
    beqz	$a6,.L0dac1b24
    li	$a1,-1
    # Line 926
    sw	$a2,128($sp)
.L0dac1938:
    # Line 928
    li	$a6,6407
    beq	$s4,$a6,.L0dac1cd8
    # Line 931
    li	$at,6408
    beq	$s4,$at,.L0dac1cd0
    nop
    # Line 935
    sw	$a1,132($sp)
.L0dac1950:
    li	$v0,5121
    beq	$s6,$v0,.L0dac1b2c
    nop
    # Line 939
    sw	$a1,136($sp)
.L0dac1960:
    # Line 940
    addiu	$a2,$sp,112
    # lw $t9, -17944($gp) # &ioctl
    lw	$a0,31560($s1)
    lui	$a1,0x6d67
    jal	ioctl
    ori	$a1,$a1,0x16
    bltz	$v0,.L0dac1b34
    ld	$ra,248($sp)
.L0dac1980:
    # Line 964
    lw	$a6,20($s2)
    beqzl	$a6,.L0dac1b14
    lbu	$a6,179($s0)
    lw	$at,4($s2)
.L0dac1990:
    li	$v0,512
    beq	$at,$v0,.L0dac1be8
.L0dac1998:
    # Line 1002
    li	$a0,9
.L0dac199c:
    move	$a1,$zero
    addiu	$a3,$sp,72
    ld	$gp,192($sp)
    # Line 1003
    ld	$s0,208($sp)
    # Line 999
    lw	$v1,28($s2)
    ld	$v0,160($sp)
    # Line 1002
    addiu	$a2,$s1,1108
    # Line 1003
    ld	$s3,224($sp)
    # Line 999
    sh	$v0,74($v1)
    # Line 1003
    ld	$s6,232($sp)
    # Line 1000
    lw	$at,28($s2)
    # Line 1003
    ld	$s2,240($sp)
    # Line 1001
    addiu	$v1,$sp,32
    lw	$s5,32($v1)
    ld	$a6,24($v1)
    # Line 1000
    sb	$zero,85($at)
    # Line 1001
    sw	$s5,1104($s1)
    ld	$s5,16($v1)
    sd	$a6,1096($s1)
    ld	$a6,8($v1)
    ld	$v1,0($v1)
    sd	$s5,1088($s1)
    ld	$s5,256($sp)
    sd	$a6,1080($s1)
    sd	$v1,1072($s1)
.L0dac1a00:
    # Line 1002
    addu	$a6,$a1,$a3
    addu	$at,$a1,$a2
    addiu	$a1,$a1,4
    lw	$a6,0($a6)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0dac1a00
    sw	$a6,0($at)
    # Line 1003
    ld	$s4,216($sp)
    ld	$s1,200($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0dac1a2c:
    # Line 845
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,248($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 847
    li	$a1,9
    move	$a0,$zero
    addiu	$a2,$s1,1108
    # Line 846
    addiu	$ra,$sp,32
    lw	$v0,32($ra)
    # Line 847
    addiu	$a3,$sp,72
    # Line 846
    ld	$at,24($ra)
    sw	$v0,1104($s1)
    ld	$v0,16($ra)
    sd	$at,1096($s1)
    ld	$at,8($ra)
    ld	$ra,0($ra)
    sd	$v0,1088($s1)
    sd	$at,1080($s1)
    sd	$ra,1072($s1)
    ld	$ra,248($sp)
.L0dac1a7c:
    # Line 847
    addu	$v1,$a0,$a3
    addu	$a6,$a0,$a2
    addiu	$a0,$a0,4
    lw	$v1,0($v1)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0dac1a7c
    sw	$v1,0($a6)
    ld	$gp,192($sp)
    # Line 848
    ld	$s0,208($sp)
    ld	$s1,200($sp)
    ld	$s2,240($sp)
    ld	$s3,224($sp)
    ld	$s4,216($sp)
    ld	$s6,232($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0dac1abc:
    b	.L0dac179c
    # Line 877
    lw	$at,12($s2)
.L0dac1ac4:
    # Line 957
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$zero
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    # Line 958
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$zero
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    # Line 959
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    lw	$a0,1184($s3)
    li	$a1,-1
    jal	__glMgrInitPixelStateERAM
    addiu	$a0,$a0,9
    # Line 961
    # lw $t9, -31864($gp) # &__glMgrCopyPixels
    jal	__glMgrCopyPixels
    ld	$a0,152($sp)
    b	.L0dac1980
    ld	$ra,248($sp)
.L0dac1b0c:
    # Line 881
    b	.L0dac1820
    li	$a1,9
.L0dac1b14:
    # Line 964
    bnez	$a6,.L0dac199c
    # Line 1002
    li	$a0,9
    b	.L0dac1990
    # Line 964
    lw	$at,4($s2)
.L0dac1b24:
    b	.L0dac1938
    # Line 928
    sw	$zero,128($sp)
.L0dac1b2c:
    # Line 937
    b	.L0dac1960
    sw	$zero,136($sp)
.L0dac1b34:
    # Line 941
    lw	$a0,144($sp)
    li	$at,3
    beq	$a0,$at,.L0dac1ce0
    ld	$s5,256($sp)
    li	$v0,4
    beq	$a0,$v0,.L0dac1ce0
    li	$v1,5
    beq	$a0,$v1,.L0dac1ce0
    li	$a6,6
    beq	$a0,$a6,.L0dac1ce0
    # Line 947
    nop	# was lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,248($sp)
.L0dac1b6c:
    # Line 949
    li	$a0,9
    move	$a1,$zero
    addiu	$a2,$s1,1108
    # Line 948
    addiu	$at,$sp,32
    lw	$v1,32($at)
    ld	$v0,24($at)
    # Line 949
    addiu	$a3,$sp,72
    # Line 948
    sw	$v1,1104($s1)
    sd	$v0,1096($s1)
    ld	$v1,16($at)
    ld	$v0,8($at)
    ld	$at,0($at)
    sd	$v1,1088($s1)
    sd	$v0,1080($s1)
    sd	$at,1072($s1)
.L0dac1ba8:
    # Line 949
    addu	$a6,$a1,$a3
    addu	$at,$a1,$a2
    addiu	$a1,$a1,4
    lw	$a6,0($a6)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0dac1ba8
    sw	$a6,0($at)
    ld	$gp,192($sp)
    # Line 950
    ld	$s0,208($sp)
    ld	$s1,200($sp)
    ld	$s2,240($sp)
    ld	$s3,224($sp)
    ld	$s4,216($sp)
    ld	$s6,232($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0dac1be8:
    # Line 964
    lbu	$at,180($s0)
    beqz	$at,.L0dac1998
    # Line 968
    li	$a4,1
    li	$a1,418
    move	$a0,$s1
    # Line 967
    lw	$a2,-26360($s5)
    # Line 968
    # lw $t9, -30696($gp) # &__glMgrasWrite
    # Line 967
    li	$a3,-241
    and	$a2,$a2,$a3
    ori	$a2,$a2,0xa0
    sw	$a2,-26360($s5)
    # Line 968
    bal __glMgrasWrite
    lw	$a3,296($s3)
    lh	$a4,32($s2)
    slti	$a6,$a4,256
    beqzl	$a6,.L0dac1c68
    # Line 976
    lh	$a5,34($s2)
    # Line 972
    lh	$a1,40($s2)
    addu	$a1,$a1,$a4
    # Line 973
    li	$a4,256
    sh	$a4,32($s2)
    li	$at,257
    # Line 972
    addiu	$a1,$a1,-256
    dsll32	$a1,$a1,0x10
    dsra32	$a1,$a1,0x10
    # Line 973
    beq	$a1,$at,.L0dac1d8c
    # Line 972
    sh	$a1,40($s2)
.L0dac1c54:
    # Line 976
    addiu	$a4,$a4,256
    dsll32	$a4,$a4,0x10
    dsra32	$a4,$a4,0x10
    sh	$a4,32($s2)
    lh	$a5,34($s2)
.L0dac1c68:
    li	$a6,-1
    beql	$a5,$a6,.L0dac1cf4
    lbu	$a6,179($s0)
    # Line 984
    lbu	$at,179($s0)
.L0dac1c78:
    beqz	$at,.L0dac1ca0
    # Line 995
    li	$a4,1
    # Line 984
    lh	$v0,34($s2)
    lh	$a6,42($s2)
    lw	$v1,20($s2)
    lw	$a5,8($s2)
    addu	$v0,$v0,$a6
    addu	$v1,$v1,$a5
    beq	$v0,$v1,.L0dac1d40
    # Line 995
    li	$a4,1
.L0dac1ca0:
    li	$a1,418
    move	$a0,$s1
    # Line 994
    lw	$a2,-26360($s5)
    # Line 995
    # lw $t9, -30696($gp) # &__glMgrasWrite
    li	$a3,-241
    # Line 994
    and	$a2,$a2,$a3
    ori	$a2,$a2,0x90
    sw	$a2,-26360($s5)
    # Line 995
    bal __glMgrasWrite
    lw	$a3,296($s3)
    b	.L0dac1998
    ld	$ra,248($sp)
.L0dac1cd0:
    # Line 933
    b	.L0dac1950
    sw	$a2,132($sp)
.L0dac1cd8:
    # Line 931
    b	.L0dac1950
    sw	$zero,132($sp)
.L0dac1ce0:
    # Line 945
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0dac1b6c
    ld	$ra,248($sp)
.L0dac1cf4:
    # Line 976
    beqz	$a6,.L0dac1da0
    # Line 980
    li	$a1,9
.L0dac1cfc:
    ld	$a0,152($sp)
    move	$a2,$zero
    move	$a3,$zero
    li	$a7,1
    lh	$a6,40($s2)
    sw	$s4,4($sp)
    # lw $t9, -29768($gp) # &__glMgrMakePixelDesc
    lw	$t0,152($s0)
    sw	$zero,28($sp)
    sw	$s6,20($sp)
    jal	__glMgrMakePixelDesc
    sw	$t0,12($sp)
    # Line 984
    # lw $t9, -31864($gp) # &__glMgrCopyPixels
    jal	__glMgrCopyPixels
    ld	$a0,152($sp)
    b	.L0dac1c78
    lbu	$at,179($s0)
.L0dac1d40:
    ld	$a0,152($sp)
    # Line 988
    li	$a7,1
    move	$a3,$zero
    move	$a2,$zero
    li	$a1,9
    lh	$a6,40($s2)
    lh	$a4,32($s2)
    sw	$s4,4($sp)
    # lw $t9, -29768($gp) # &__glMgrMakePixelDesc
    lw	$t1,152($s0)
    sw	$zero,28($sp)
    sw	$s6,20($sp)
    jal	__glMgrMakePixelDesc
    sw	$t1,12($sp)
    # Line 992
    # lw $t9, -31864($gp) # &__glMgrCopyPixels
    jal	__glMgrCopyPixels
    ld	$a0,152($sp)
    b	.L0dac1ca0
    # Line 995
    li	$a4,1
.L0dac1d8c:
    # Line 975
    addiu	$at,$a1,-1
    dsll32	$at,$at,0x10
    dsra32	$at,$at,0x10
    b	.L0dac1c54
    sh	$at,40($s2)
.L0dac1da0:
    # Line 980
    b	.L0dac1cfc
    li	$a1,8
.end mgrTM_DoCopyTex

# Function: __glMgrInitHostToTE
# Declared: Line 1006 (Source lines: 1007-1033)
# Address: 0x0dac1da8 - 0x0dac1f6c (Size: 452 bytes, Frame: 208)
.globl __glMgrInitHostToTE
.ent __glMgrInitHostToTE
__glMgrInitHostToTE:
    # Line 1011
    li	$v0,6
    # Line 1007
    addiu	$sp,$sp,-80
    sd	$s0,0($sp)
    # Line 1011
    lui	$a6,0x1
    sd	$s5,8($sp)
    lw	$s5,1432($a1)
    addu	$a6,$a0,$a6
    lw	$a5,-26652($a6)
    lw	$s5,100($s5)
    li	$a4,-241
    and	$a5,$a5,$a4
    andi	$s5,$s5,0xf
    sll	$s5,$s5,0x4
    or	$a5,$a5,$s5
    sw	$a5,-26652($a6)
    # Line 1007
    move	$s0,$a1
    # Line 1011
    lw	$at,1432($a1)
    sd	$gp,16($sp)
    # Line 1007
    lui	$v1,0x14
    # Line 1011
    lw	$at,100($at)
    # Line 1007
    addiu	$v1,$v1,-14096
    addu	$gp,$t9,$v1
    # Line 1011
    beq	$at,$v0,.L0dac1f50
    # Line 1007
    move	$s5,$a2
.L0dac1e08:
    # Line 1024
    li	$a3,1
    li	$a1,345
    sd	$s1,40($sp)
    # Line 1021
    lui	$a4,0x80
    # Line 1020
    lui	$a2,0x10
    nor	$a2,$a2,$zero
    # Line 1018
    lui	$t9,0x4
    # Line 1015
    li	$at,-14337
    sd	$ra,32($sp)
    # Line 1014
    li	$ra,-1793
    and	$ra,$a5,$ra
    # Line 1015
    and	$ra,$ra,$at
    sw	$ra,-26652($a6)
    # Line 1018
    nor	$t9,$t9,$zero
    # Line 1016
    lw	$at,1432($s0)
    lui	$v0,0x1
    ori	$v0,$v0,0xc000
    lbu	$at,65($at)
    nor	$v0,$v0,$zero
    and	$ra,$ra,$v0
    andi	$at,$at,0x7
    sll	$at,$at,0xe
    or	$ra,$ra,$at
    sw	$ra,-26652($a6)
    # Line 1017
    lui	$v0,0x2
    lbu	$at,1109($a0)
    nor	$v0,$v0,$zero
    and	$ra,$ra,$v0
    sltu	$at,$zero,$at
    sll	$at,$at,0x11
    or	$ra,$ra,$at
    sw	$ra,-26652($a6)
    # Line 1019
    lui	$at,0x8
    nor	$at,$at,$zero
    # Line 1018
    and	$t9,$ra,$t9
    # Line 1019
    and	$t9,$t9,$at
    # Line 1020
    and	$a2,$t9,$a2
    # Line 1021
    or	$a2,$a2,$a4
    sw	$a2,-26652($a6)
    sd	$s4,24($sp)
    # Line 1023
    lw	$t8,1532($s0)
    lw	$s4,36($s0)
    # Line 1024
    # lw $t9, -30692($gp) # &__glMgrasSet
    # Line 1022
    lw	$s1,1432($s0)
    # Line 1023
    subu	$s4,$s4,$t8
    # Line 1024
    bal __glMgrasSet
    # Line 1022
    lw	$s1,52($s1)
    # Line 1026
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    lw	$a0,24($s0)
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    addu	$a0,$a0,$s5
    # Line 1027
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    lw	$a0,28($s0)
    jal	__glMgrInitPixelStateERAM
    ld	$s5,8($sp)
    # Line 1028
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$s1
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    ld	$s0,0($sp)
    # Line 1029
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$s4
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    # Line 1030
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    sll	$a0,$s4,0x10
    jal	__glMgrInitPixelStateERAM
    or	$a0,$a0,$s1
    # Line 1031
    li	$a1,-1
    ld	$s1,40($sp)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    la	$a0,SYMBOL_LOCATION
    ld	$s4,24($sp)
    jal	__glMgrInitPixelStateERAM
    lw	$a0,1184($a0)
    # Line 1033
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dac1f50:
    sd	$s1,40($sp)
    sd	$ra,32($sp)
    sd	$s4,24($sp)
    # Line 1013
    and	$a5,$a4,$a5
    ori	$a5,$a5,0x90
    b	.L0dac1e08
    sw	$a5,-26652($a6)
.end __glMgrInitHostToTE

# Function: mgrTM_SR_TexLoad
# Declared: Line 1036 (Source lines: 1039-1148)
# Address: 0x0dac1f6c - 0x0dac2458 (Size: 1260 bytes, Frame: 160)
.globl mgrTM_SR_TexLoad
.ent mgrTM_SR_TexLoad
mgrTM_SR_TexLoad:
    # Line 1050
    li	$a4,3
    move	$a3,$zero
    move	$a2,$zero
    # Line 1039
    addiu	$sp,$sp,-160
    sd	$s0,48($sp)
    move	$s0,$a1
    # Line 1050
    lui	$a1,0x140
    sd	$s8,32($sp)
    # Line 1039
    move	$s8,$a0
    # Line 1050
    li	$a0,-1
    sd	$s4,56($sp)
    sd	$gp,72($sp)
    # Line 1039
    lui	$t8,0x14
    addiu	$t8,$t8,-14548
    sd	$s7,40($sp)
    # Line 1045
    lw	$s7,24($s0)
    # Line 1039
    addu	$gp,$t9,$t8
    # Line 1050
    # lw $t9, -30284($gp) # &__glMgrSaveRSS
    # Line 1046
    lw	$s4,4($s7)
    sd	$ra,64($sp)
    # Line 1050
    jal	__glMgrSaveRSS
    # Line 1046
    lw	$s4,0($s4)
    # Line 1056
    lbu	$v1,82($s7)
    la	$at,sub_0dbe0000
    lbu	$v0,81($s7)
    sll	$v1,$v1,0x2
    addiu	$at,$at,-15408
    # Line 1054
    sw	$zero,0($sp)
    # Line 1055
    lw	$a2,0($sp)
    # Line 1056
    addu	$v1,$v1,$at
    # Line 1055
    lui	$at,0x40
    or	$a2,$a2,$at
    sw	$a2,0($sp)
    # Line 1056
    lw	$at,0($sp)
    lw	$v1,0($v1)
    li	$a2,-241
    and	$at,$at,$a2
    andi	$v1,$v1,0xf
    sll	$v1,$v1,0x4
    or	$at,$at,$v1
    beqz	$v0,.L0dac244c
    sw	$at,0($sp)
    # Line 1057
    li	$a5,8
.L0dac2018:
    # Line 1058
    li	$a3,1
    li	$a1,345
    move	$a0,$s8
    # lw $t9, -30692($gp) # &__glMgrasSet
    # Line 1057
    lw	$a4,0($sp)
    andi	$a2,$a5,0xf
    li	$a5,-16
    and	$a4,$a4,$a5
    or	$a2,$a2,$a4
    sw	$a2,0($sp)
    # Line 1058
    bal __glMgrasSet
    lw	$a2,0($sp)
    # Line 1061
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    sd	$s1,128($sp)
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    li	$a0,338
    sd	$s2,112($sp)
    sd	$s3,120($sp)
    sd	$s5,136($sp)
    # Line 1062
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    la	$s1,SYMBOL_LOCATION
    li	$a1,-1
    jal	__glMgrInitPixelStateERAM
    lw	$a0,972($s1)
    sd	$s6,104($sp)
    # Line 1069
    move	$s3,$zero
    # Line 1073
    lui	$a2,0x8
    # Line 1066
    lh	$s2,72($s7)
    lh	$v1,32($s0)
    # Line 1073
    ori	$a2,$a2,0x604
    # Line 1064
    lhu	$v0,70($s7)
    # Line 1066
    subu	$v1,$v1,$s2
    # Line 1064
    lh	$s2,38($s0)
    # Line 1071
    lui	$at,0x8
    ori	$at,$at,0x404
    # Line 1064
    mult	$s2,$v0
    # Line 1068
    li	$v0,-4096
    # Line 1066
    lw	$s5,52($s7)
    # Line 1072
    li	$s2,4096
    # Line 1066
    sll	$v1,$v1,0x2
    addu	$s5,$s5,$v1
    lw	$s5,0($s5)
    # Line 1071
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sw	$at,0($v1)
    # Line 1072
    sw	$s2,0($v1)
    # Line 1068
    and	$v0,$s5,$v0
    # Line 1073
    sw	$a2,0($v1)
    # Line 1064
    lbu	$at,183($s4)
    # Line 1074
    sw	$zero,0($v1)
    # Line 1064
    mflo	$s2
    sllv	$s2,$s2,$at
    # Line 1074
    beqz	$s2,.L0dac23d8
    sd	$v0,80($sp)
    sd	$s6,104($sp)
    li	$a0,1
    li	$t1,0x8000
    lui	$at,0x1
    addu	$at,$at,$s8
    b	.L0dac2388
    sd	$at,24($sp)
.L0dac2110:
    # Line 1081
    mult	$s1,$a1
    # Line 1094
    move	$a5,$zero
    # Line 1090
    li	$v1,4096
    li	$v0,4096
    # Line 1081
    mflo	$s6
    addu	$a4,$s6,$s4
    addiu	$a4,$a4,4095
    srl	$a4,$a4,0xc
    beq	$a0,$a4,.L0dac23bc
    # Line 1087
    subu	$v0,$v0,$s4
    sd	$v0,88($sp)
    # Line 1088
    addu	$at,$s6,$s4
    addiu	$at,$at,-4096
    andi	$at,$at,0xfff
    beqz	$at,.L0dac23d0
    sd	$at,96($sp)
.L0dac2150:
    # Line 1094
    move	$t0,$a4
    addu	$a3,$a4,$a4
    blez	$a4,.L0dac243c
    srl	$a1,$a7,0xc
    addiu	$a6,$sp,8
    addiu	$at,$sp,8
    andi	$v0,$a4,0x1
    beqz	$v0,.L0dac218c
    addu	$a3,$a3,$at
    # Line 1095
    lhu	$v0,32($s0)
    # Line 1094
    addiu	$a6,$a6,2
    # Line 1095
    addu	$v0,$v0,$a1
    addu	$v0,$v0,$a5
    # Line 1094
    addiu	$a5,$a5,1
    # Line 1095
    sh	$v0,-2($a6)
.L0dac218c:
    sra	$v1,$t0,0x1
    move	$a4,$a6
    beqz	$v1,.L0dac21d4
    move	$a7,$a5
    move	$a6,$a4
    move	$a5,$a7
.L0dac21a4:
    lhu	$at,32($s0)
    addu	$at,$at,$a1
    addu	$at,$at,$a5
    sh	$at,0($a6)
    # Line 1094
    addiu	$a6,$a6,4
    # Line 1095
    lhu	$a2,32($s0)
    # Line 1094
    addiu	$at,$a5,1
    addiu	$a5,$at,1
    # Line 1095
    addu	$a2,$a2,$a1
    addu	$a2,$a2,$at
    # Line 1094
    bne	$a6,$a3,.L0dac21a4
    # Line 1095
    sh	$a2,-2($a6)
.L0dac21d4:
    # Line 1099
    li	$a1,-2
    # Line 1097
    lhu	$v0,-2($a3)
    # Line 1099
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$zero
    # Line 1097
    ori	$v0,$v0,0x8000
    # Line 1099
    jal	__glMgrInitPixelStateERAM
    # Line 1097
    sh	$v0,-2($a3)
    # Line 1100
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$s3
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    # Line 1101
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    li	$a0,64
    # Line 1102
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$s1
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    # Line 1103
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    sll	$a0,$s1,0x10
    jal	__glMgrInitPixelStateERAM
    ori	$a0,$a0,0x40
    # Line 1104
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    la	$a0,SYMBOL_LOCATION
    li	$a1,-1
    jal	__glMgrInitPixelStateERAM
    lw	$a0,1184($a0)
    # Line 1107
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$zero
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    # Line 1108
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$zero
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    la	$a0,SYMBOL_LOCATION
    # Line 1109
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    lw	$a0,1184($a0)
    li	$a1,-1
    jal	__glMgrInitPixelStateERAM
    addiu	$a0,$a0,9
    # Line 1112
    # lw $t9, -30312($gp) # &__glMgr_WriteDMAGESetup
    li	$a2,298
    move	$a1,$s1
    jal	__glMgr_WriteDMAGESetup
    lhu	$a0,68($s7)
    # Line 1138
    addu	$s5,$s6,$s5
    # Line 1129
    li	$a0,163
    lui	$a2,0x1
    lui	$a1,0xe
    ori	$a1,$a1,0x400
    # lw $t9, -18684($gp) # &__glMgrim_pipe
    li	$a6,1
    lui	$a4,0x8
    ori	$a4,$a4,0xb04
    lui	$a7,0x8
    ori	$a7,$a7,0x704
    lui	$t1,0x8
    ori	$t1,$t1,0x904
    lui	$t3,0x8
    ori	$t3,$t3,0x804
    lui	$t0,0x8
    lui	$a5,0x7
    ori	$a5,$a5,0x4080
    ori	$t0,$t0,0x10
    # Line 1114
    sw	$t0,0($a5)
    # Line 1124
    ld	$t0,96($sp)
    lui	$t2,0x7
    lui	$t8,0x8
    ori	$t8,$t8,0x504
    # Line 1128
    ld	$a3,24($sp)
    # Line 1118
    lw	$ra,20($sp)
    # Line 1117
    lw	$at,16($sp)
    # Line 1128
    lw	$a3,-25272($a3)
    # Line 1116
    lw	$v0,12($sp)
    # Line 1115
    lw	$v1,8($sp)
    # Line 1128
    addu	$a3,$a3,$t2
    # Line 1122
    ld	$t2,88($sp)
    # Line 1115
    sw	$v1,0($a5)
    # Line 1116
    sw	$v0,0($a5)
    # Line 1117
    sw	$at,0($a5)
    # Line 1118
    sw	$ra,0($a5)
    # Line 1119
    sw	$t8,0($a5)
    # Line 1120
    sw	$s4,0($a5)
    # Line 1121
    sw	$t3,0($a5)
    # Line 1122
    sw	$t2,0($a5)
    # Line 1123
    sw	$t1,0($a5)
    # Line 1124
    sw	$t0,0($a5)
    # Line 1125
    sw	$a7,0($a5)
    # Line 1126
    sw	$a6,0($a5)
    # Line 1127
    sw	$a4,0($a5)
    # Line 1129
    jal	__glMgrim_pipe
    # Line 1128
    sw	$a2,12($a3)
    # Line 1131
    # lw $t9, -30324($gp) # &__glMgrWaitForDMAWrite
    # Line 1140
    subu	$s2,$s2,$s1
    # Line 1131
    jal	__glMgrWaitForDMAWrite
    move	$a0,$s8
    # Line 1137
    move	$a0,$s8
    # lw $t9, -30692($gp) # &__glMgrasSet
    li	$a3,1
    li	$a2,-1
    bal __glMgrasSet
    li	$a1,342
    # Line 1139
    addu	$s3,$s1,$s3
    li	$a0,1
    # Line 1140
    beqz	$s2,.L0dac23d8
    li	$t1,0x8000
.L0dac2388:
    ld	$a7,80($sp)
    # Line 1079
    lhu	$a1,68($s7)
    subu	$a7,$s5,$a7
    andi	$s4,$a7,0xfff
    subu	$v0,$t1,$s4
    divu	$zero,$v0,$a1
    # Line 1080
    move	$s1,$s2
    # Line 1079
    mflo	$a3
    slt	$at,$a3,$s2
    beqz	$at,.L0dac2110
    teq	$a1,$zero,0x7
    # Line 1080
    b	.L0dac2110
    move	$s1,$a3
.L0dac23bc:
    # Line 1085
    move	$at,$s6
    move	$v0,$s6
    sd	$s6,96($sp)
    b	.L0dac2150
    sd	$s6,88($sp)
.L0dac23d0:
    b	.L0dac2150
    sd	$v1,96($sp)
.L0dac23d8:
    # Line 1144
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$zero
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 1145
    li	$a1,-1
    ld	$s6,104($sp)
    ld	$s2,112($sp)
    ld	$s3,120($sp)
    ld	$s1,128($sp)
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    la	$a0,SYMBOL_LOCATION
    ld	$s5,136($sp)
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,976($a0)
    # Line 1147
    # lw $t9, -30280($gp) # &__glMgrRestoreRSS
    jal	__glMgrRestoreRSS
    nop
    ld	$gp,72($sp)
    # Line 1148
    ld	$s0,48($sp)
    ld	$s4,56($sp)
    ld	$ra,64($sp)
    ld	$s7,40($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dac243c:
    addiu	$at,$sp,8
    # Line 1094
    addu	$a3,$a4,$a4
    b	.L0dac21d4
    addu	$a3,$a3,$at
.L0dac244c:
    # Line 1057
    lbu	$a5,83($s7)
    b	.L0dac2018
    addiu	$a5,$a5,-1
.end mgrTM_SR_TexLoad

# Function: mgrTM_SR_TexRead
# Declared: Line 1153 (Source lines: 1156-1247)
# Address: 0x0dac2458 - 0x0dac28d4 (Size: 1148 bytes, Frame: 144)
.globl mgrTM_SR_TexRead
.ent mgrTM_SR_TexRead
mgrTM_SR_TexRead:
    # Line 1156
    addiu	$sp,$sp,-272
    # Line 1160
    lw	$t8,0($a1)
    sd	$ra,184($sp)
    # Line 1165
    lhu	$ra,70($a1)
    sd	$t8,104($sp)
    lh	$t8,38($t8)
    mult	$t8,$ra
    sd	$s4,160($sp)
    # Line 1162
    lw	$s4,4($a1)
    # Line 1166
    lhu	$a3,68($a1)
    # Line 1162
    lw	$s4,0($s4)
    sd	$s0,168($sp)
    sd	$s1,192($sp)
    # Line 1165
    lbu	$s1,183($s4)
    mflo	$s0
    sd	$s5,176($sp)
    sllv	$s0,$s0,$s1
    # Line 1166
    multu	$a3,$s0
    # Line 1156
    move	$s5,$a1
    # Line 1168
    lw	$a1,44($a1)
    move	$a5,$zero
    addiu	$a4,$sp,0
    lw	$a1,0($a1)
    sd	$gp,200($sp)
    # Line 1156
    lui	$a2,0x14
    addiu	$a2,$a2,-15808
    addu	$gp,$t9,$a2
    # Line 1168
    # lw $t9, -30344($gp) # &__glMgr_LockSingleDMAPool
    # Line 1156
    move	$s1,$a0
    # Line 1168
    move	$a3,$zero
    # Line 1166
    mflo	$a2
    # Line 1168
    jal	__glMgr_LockSingleDMAPool
    sd	$a2,112($sp)
    bnez	$v0,.L0dac25b4
    lui	$a0,0x1
    addu	$a3,$a0,$s1
    la	$at,__iob
    ld	$v0,112($sp)
    sd	$a3,152($sp)
    addiu	$at,$at,32
    andi	$v1,$v0,0xfff
    sd	$v1,128($sp)
    sd	$at,96($sp)
    srl	$v0,$v0,0xc
    sd	$v0,120($sp)
    addiu	$v0,$v0,1
    sd	$v0,136($sp)
    la	$a0,errno
.L0dac2518:
    lw	$a0,0($a0)
    li	$at,12
    beq	$a0,$at,.L0dac254c
    li	$a3,11
    beq	$a0,$a3,.L0dac254c
    # Line 1171
    nop	# was lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbe0000
    ld	$a0,96($sp)
    jal	fprintf
    addiu	$a1,$a1,-15368
    # Line 1172
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
.L0dac254c:
    # Line 1174
    ld	$a3,128($sp)
    ld	$at,152($sp)
    beqz	$a3,.L0dac2560
    ld	$a2,120($sp)
    ld	$a2,136($sp)
.L0dac2560:
    # Line 1177
    lw	$at,-28164($at)
    lhu	$at,1232($at)
    sltu	$at,$at,$a2
    bnez	$at,.L0dac25bc
    # Line 1178
    nop	# was lw $t9, -30704($gp) # &mgrTM_UnlockPages
    move	$a0,$s1
    bal mgrTM_UnlockPages
    move	$a1,$zero
    # Line 1168
    move	$a0,$s1
    move	$a5,$zero
    addiu	$a4,$sp,0
    move	$a3,$zero
    # lw $t9, -30344($gp) # &__glMgr_LockSingleDMAPool
    lw	$a1,44($s5)
    ld	$a2,112($sp)
    jal	__glMgr_LockSingleDMAPool
    lw	$a1,0($a1)
    beqz	$v0,.L0dac2518
    la	$a0,errno
    b	.L0dac25c0
    # Line 1183
    lbu	$v1,82($s5)
.L0dac25b4:
    # Line 1168
    addu	$a3,$a0,$s1
    sd	$a3,152($sp)
.L0dac25bc:
    # Line 1183
    lbu	$v1,82($s5)
.L0dac25c0:
    # Line 1181
    la	$a1,sub_0dbe0000
    # Line 1183
    lbu	$v0,81($s5)
    sll	$v1,$v1,0x2
    # Line 1181
    addiu	$a1,$a1,-15408
    sw	$zero,8($sp)
    # Line 1182
    lw	$a3,8($sp)
    # Line 1183
    addu	$v1,$v1,$a1
    # Line 1182
    lui	$at,0x40
    or	$a3,$a3,$at
    sw	$a3,8($sp)
    # Line 1183
    lw	$at,8($sp)
    lw	$v1,0($v1)
    li	$a3,-241
    and	$at,$at,$a3
    andi	$v1,$v1,0xf
    sll	$v1,$v1,0x4
    or	$at,$at,$v1
    beqz	$v0,.L0dac28c0
    sw	$at,8($sp)
    sd	$s7,224($sp)
    sd	$s3,216($sp)
    # Line 1184
    li	$a0,8
.L0dac2618:
    ld	$s7,152($sp)
    # Line 1188
    lbu	$a3,183($s4)
    # Line 1186
    la	$at,sub_0dbf0000
    lbu	$s7,-25436($s7)
    # Line 1188
    lhu	$v1,70($s5)
    # Line 1186
    addiu	$at,$at,12072
    sll	$s7,$s7,0x2
    addu	$s7,$s7,$at
    lw	$s7,0($s7)
    # Line 1188
    sllv	$v1,$v1,$a3
    divu	$zero,$s7,$v1
    # Line 1187
    ld	$s3,104($sp)
    # Line 1184
    li	$v0,-16
    # Line 1187
    lh	$s3,34($s3)
    # Line 1184
    lw	$at,8($sp)
    # Line 1188
    teq	$v1,$zero,0x7
    # Line 1184
    andi	$a3,$a0,0xf
    and	$at,$at,$v0
    or	$a3,$a3,$at
    sw	$a3,8($sp)
    # Line 1188
    mflo	$at
    beqz	$s0,.L0dac2860
    sd	$at,208($sp)
    sd	$s6,240($sp)
    la	$s6,SYMBOL_LOCATION
    sd	$s8,248($sp)
    li	$s8,0xec10
    sd	$s2,232($sp)
    lui	$s2,0x7
    addiu	$at,$a1,16
    sd	$at,144($sp)
    b	.L0dac2840
    ori	$s2,$s2,0x4080
.L0dac269c:
    # Line 1190
    move	$s4,$s7
.L0dac26a0:
    # Line 1192
    move	$a0,$s1
    li	$a4,1
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,268($s6)
    move	$a2,$zero
    bal __glMgrasWrite
    li	$a1,400
    # Line 1199
    move	$a4,$zero
    move	$a3,$zero
    li	$a0,-1
    # Line 1197
    andi	$v0,$s3,0xff
    lui	$a1,0x100
    lui	$a2,0x1f
    ori	$a2,$a2,0xc0ff
    ori	$a1,$a1,0x1000
    li	$v1,401
    # Line 1199
    # lw $t9, -30284($gp) # &__glMgrSaveRSS
    # Line 1194
    lw	$a6,268($s6)
    # Line 1195
    lw	$a5,272($s6)
    # Line 1193
    sw	$s8,0($s2)
    # Line 1194
    sw	$a6,0($s2)
    # Line 1195
    sw	$a5,0($s2)
    # Line 1196
    sw	$v1,0($s2)
    # Line 1199
    jal	__glMgrSaveRSS
    # Line 1197
    sw	$v0,0($s2)
    # Line 1204
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    li	$a0,397
    # Line 1205
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-1
    jal	__glMgrInitPixelStateERAM
    lw	$a0,972($s6)
    # Line 1207
    # lw $t9, -32124($gp) # &__glMgrim_Finish
    jal	__glMgrim_Finish
    nop
    # Line 1224
    addiu	$a2,$sp,16
    lui	$a1,0x6d67
    ori	$a1,$a1,0x15
    # Line 1212
    sw	$s4,24($sp)
    li	$t8,4
    li	$t3,0xe50c
    li	$a4,16397
    # Line 1214
    sw	$a4,32($sp)
    # Line 1211
    sw	$t3,20($sp)
    # Line 1215
    lw	$t1,0($sp)
    # Line 1213
    lw	$t2,8($sp)
    # Line 1210
    sw	$t8,16($sp)
    # Line 1215
    sw	$t1,60($sp)
    # Line 1213
    sw	$t2,28($sp)
    # Line 1224
    # lw $t9, -17944($gp) # &ioctl
    # Line 1216
    lhu	$t0,68($s5)
    li	$a6,64
    li	$a3,512
    sw	$t0,64($sp)
    # Line 1220
    lw	$a5,8($sp)
    # Line 1217
    lhu	$a7,68($s5)
    # Line 1223
    sw	$zero,92($sp)
    # Line 1222
    sw	$a3,88($sp)
    # Line 1221
    sw	$a4,84($sp)
    # Line 1220
    sw	$a5,80($sp)
    # Line 1219
    sw	$s4,76($sp)
    # Line 1218
    sw	$a6,72($sp)
    # Line 1217
    sw	$a7,68($sp)
    # Line 1224
    jal	ioctl
    lw	$a0,31560($s1)
    bltz	$v0,.L0dac28a0
    # Line 1229
    nop	# was lw $t9, -30308($gp) # &__glMgrWaitForDMARead
.L0dac27b0:
    jal	__glMgrWaitForDMARead
    move	$a0,$s1
    li	$a4,3584
    lui	$a2,0x7
    lui	$a1,0xc
    ori	$a1,$a1,0x4
    lui	$a0,0xa
    ori	$a0,$a0,0x704
    ld	$a5,152($sp)
    # Line 1231
    sw	$a0,0($s2)
    sw	$zero,0($s2)
    # Line 1235
    lw	$a5,-25272($a5)
    # Line 1234
    sw	$a1,0($s2)
    # Line 1235
    sw	$a4,0($s2)
    addu	$a5,$a2,$a5
    lw	$a3,0($a5)
    andi	$a3,$a3,0x2
    bnez	$a3,.L0dac280c
    li	$a6,0xda00
.L0dac27fc:
    lw	$a3,0($a5)
    andi	$a3,$a3,0x2
    beqz	$a3,.L0dac27fc
    nop
.L0dac280c:
    # Line 1240
    # lw $t9, -30280($gp) # &__glMgrRestoreRSS
    jal	__glMgrRestoreRSS
    # Line 1239
    sw	$a6,0($s2)
    # Line 1243
    subu	$s0,$s0,$s4
    # Line 1244
    lhu	$a3,68($s5)
    multu	$a3,$s4
    # Line 1242
    ld	$v1,208($sp)
    # Line 1244
    lw	$v0,0($sp)
    # Line 1242
    addu	$s3,$s3,$v1
    # Line 1244
    mflo	$at
    addu	$at,$at,$v0
    beqz	$s0,.L0dac2854
    sw	$at,0($sp)
.L0dac2840:
    # Line 1188
    sltu	$at,$s0,$s7
    beqz	$at,.L0dac269c
    # Line 1190
    move	$s4,$s0
    b	.L0dac26a0
    nop
.L0dac2854:
    ld	$s8,248($sp)
    ld	$s6,240($sp)
    ld	$s2,232($sp)
.L0dac2860:
    # Line 1246
    move	$a0,$s1
    move	$a1,$zero
    move	$a2,$zero
    move	$a3,$zero
    ld	$s7,224($sp)
    ld	$s5,176($sp)
    # lw $t9, -30340($gp) # &__glMgr_UnlockSingleDMAPool
    ld	$s0,168($sp)
    ld	$s4,160($sp)
    jal	__glMgr_UnlockSingleDMAPool
    ld	$s3,216($sp)
    # Line 1247
    ld	$ra,184($sp)
    ld	$gp,200($sp)
    ld	$s1,192($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0dac28a0:
    # Line 1225
    # lw $t9, -17888($gp) # &perror
    jal	perror
    ld	$a0,144($sp)
    # Line 1226
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
    b	.L0dac27b0
    # Line 1229
    nop	# was lw $t9, -30308($gp) # &__glMgrWaitForDMARead
.L0dac28c0:
    sd	$s7,224($sp)
    # Line 1184
    lbu	$a0,83($s5)
    sd	$s3,216($sp)
    b	.L0dac2618
    addiu	$a0,$a0,-1
.end mgrTM_SR_TexRead

.rdata
_lit_3f000000:
    .word 0x3f000000
_lit_bf000000:
    .word 0xbf000000

