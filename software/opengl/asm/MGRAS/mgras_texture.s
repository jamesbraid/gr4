# Source: ../MGRAS/mgras_texture.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_texture.c
# Total Functions: 44

.text

# Function: __glMgrLookUpTexture
# Declared: Line 54 (Source lines: 55-77)
# Address: 0x0da92bcc - 0x0da92de0 (Size: 532 bytes, Frame: 48)
.globl __glMgrLookUpTexture
.ent __glMgrLookUpTexture
__glMgrLookUpTexture:
    # Line 55
    move	$a4,$a0
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    li	$v0,0x806f
    lui	$v1,0x17
    addiu	$v1,$v1,-17716
    sltu	$at,$a1,$v0
    bnez	$at,.L0da92c34
    addu	$gp,$t9,$v1
    # Line 56
    sltu	$a2,$v0,$a1
    beqz	$a2,.L0da92cac
    li	$v0,0x8095
    sltu	$a3,$a1,$v0
    bnez	$a3,.L0da92d18
    sltu	$at,$v0,$a1
    # Line 69
    li	$v0,0x9154
    # Line 56
    beqz	$at,.L0da92d50
    li	$v1,0x8134
    bne	$a1,$v1,.L0da92c60
    # Line 77
    move	$v0,$zero
    ld	$gp,8($sp)
    # Line 67
    li	$v0,0x8fbc
    addu	$v0,$v0,$a4
    lw	$v0,0($v0)
    jr	$ra
    addiu	$sp,$sp,48
.L0da92c34:
    # Line 56
    li	$v0,0x8063
    sltu	$v1,$a1,$v0
    bnez	$v1,.L0da92c6c
    sltu	$a2,$v0,$a1
    # Line 71
    li	$v0,0x8bc0
    # Line 56
    beqz	$a2,.L0da92d3c
    li	$a3,0x8064
    # Line 73
    li	$v0,0x8d58
    # Line 56
    beq	$a1,$a3,.L0da92d64
    # Line 73
    addu	$v0,$v0,$a4
.L0da92c5c:
    # Line 77
    move	$v0,$zero
.L0da92c60:
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da92c6c:
    # Line 56
    sltiu	$at,$a1,3553
    bnez	$at,.L0da92cdc
    sltiu	$v1,$a1,3554
    beqz	$v1,.L0da92c5c
    # Line 61
    li	$a2,-1
    dsll	$a2,$a2,0x10
    lui	$a1,0x1
    addu	$a1,$a4,$a1
    ori	$a2,$a2,0x7438
    beq	$a4,$a2,.L0da92ca0
    lw	$v0,-29556($a1)
    beqz	$v0,.L0da92d98
    sd	$a1,0($sp)
.L0da92ca0:
    ld	$gp,8($sp)
    # Line 62
    jr	$ra
    addiu	$sp,$sp,48
.L0da92cac:
    # Line 64
    lui	$a1,0x1
    addu	$a1,$a4,$a1
    li	$a2,-1
    dsll	$a2,$a2,0x10
    ori	$a2,$a2,0x72a0
    beq	$a4,$a2,.L0da92cd0
    lw	$v0,-29148($a1)
    beqz	$v0,.L0da92d74
    sd	$a1,0($sp)
.L0da92cd0:
    ld	$gp,8($sp)
    # Line 65
    jr	$ra
    addiu	$sp,$sp,48
.L0da92cdc:
    # Line 56
    li	$a2,3552
    bne	$a1,$a2,.L0da92c60
    # Line 77
    move	$v0,$zero
    # Line 58
    lui	$a1,0x1
    addu	$a1,$a4,$a1
    li	$a3,-1
    dsll	$a3,$a3,0x10
    ori	$a3,$a3,0x75d0
    beq	$a4,$a3,.L0da92d0c
    lw	$v0,-29964($a1)
    beqz	$v0,.L0da92dbc
    sd	$a1,0($sp)
.L0da92d0c:
    ld	$gp,8($sp)
    # Line 59
    jr	$ra
    addiu	$sp,$sp,48
.L0da92d18:
    # Line 56
    li	$a2,0x8070
    bne	$a1,$a2,.L0da92c60
    # Line 77
    move	$v0,$zero
    ld	$gp,8($sp)
    # Line 75
    li	$v0,0x8ef0
    addu	$v0,$v0,$a4
    lw	$v0,0($v0)
    jr	$ra
    addiu	$sp,$sp,48
.L0da92d3c:
    # Line 71
    addu	$v0,$v0,$a4
    lw	$v0,0($v0)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da92d50:
    # Line 69
    addu	$v0,$v0,$a4
    lw	$v0,0($v0)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da92d64:
    # Line 73
    lw	$v0,0($v0)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da92d74:
    # Line 64
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    sd	$ra,16($sp)
    li	$a0,0x8d60
    jal	mgrTM_RefreshDim
    addu	$a0,$a4,$a0
    ld	$v0,0($sp)
    ld	$ra,16($sp)
    b	.L0da92cd0
    lw	$v0,-29148($v0)
.L0da92d98:
    # Line 61
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    sd	$ra,16($sp)
    li	$a0,0x8bc8
    jal	mgrTM_RefreshDim
    addu	$a0,$a4,$a0
    ld	$v0,0($sp)
    ld	$ra,16($sp)
    b	.L0da92ca0
    lw	$v0,-29556($v0)
.L0da92dbc:
    # Line 58
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    sd	$ra,16($sp)
    li	$a0,0x8a30
    jal	mgrTM_RefreshDim
    addu	$a0,$a4,$a0
    ld	$v0,0($sp)
    ld	$ra,16($sp)
    b	.L0da92d0c
    lw	$v0,-29964($v0)
.end __glMgrLookUpTexture

# Function: __glMgrNeedSoftFilter4
# Declared: Line 82 (Source lines: 82-105)
# Address: 0x0da92de0 - 0x0da92efc (Size: 284 bytes, Frame: 32)
.globl __glMgrNeedSoftFilter4
.ent __glMgrNeedSoftFilter4
__glMgrNeedSoftFilter4:
    # Line 82
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x17
    addiu	$at,$at,-18248
    addu	$gp,$t9,$at
    # Line 85
    # lw $t9, -16560($gp) # &glIsEnabled
    sd	$ra,16($sp)
    jal	glIsEnabled
    li	$a0,3552
    beqz	$v0,.L0da92e54
    # Line 86
    nop	# was lw $t9, -16572($gp) # &glGetTexParameteriv
    addiu	$a2,$sp,0
    li	$a1,10241
    jal	glGetTexParameteriv
    li	$a0,3552
    lw	$v0,0($sp)
    li	$v1,0x8146
    beq	$v0,$v1,.L0da92ec4
    # Line 88
    ld	$ra,16($sp)
    # Line 90
    # lw $t9, -16572($gp) # &glGetTexParameteriv
    addiu	$a2,$sp,0
    li	$a1,10240
    jal	glGetTexParameteriv
    li	$a0,3552
    lw	$a0,0($sp)
    # Line 92
    li	$v0,1
    li	$at,0x8146
    # Line 90
    beq	$a0,$at,.L0da92ed4
    # Line 92
    ld	$ra,16($sp)
.L0da92e54:
    # Line 95
    # lw $t9, -16560($gp) # &glIsEnabled
    jal	glIsEnabled
    li	$a0,3553
    beqz	$v0,.L0da92eb0
    # Line 96
    nop	# was lw $t9, -16572($gp) # &glGetTexParameteriv
    addiu	$a2,$sp,0
    li	$a1,10241
    jal	glGetTexParameteriv
    li	$a0,3553
    lw	$v0,0($sp)
    li	$v1,0x8146
    beq	$v0,$v1,.L0da92ee0
    # Line 98
    ld	$ra,16($sp)
    # Line 100
    # lw $t9, -16572($gp) # &glGetTexParameteriv
    addiu	$a2,$sp,0
    li	$a1,10240
    jal	glGetTexParameteriv
    li	$a0,3553
    # Line 102
    li	$v0,1
    # Line 100
    lw	$a0,0($sp)
    li	$at,0x8146
    beq	$a0,$at,.L0da92ef0
    # Line 102
    ld	$ra,16($sp)
.L0da92eb0:
    # Line 105
    ld	$ra,16($sp)
    move	$v0,$zero
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da92ec4:
    # Line 88
    li	$v0,1
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da92ed4:
    ld	$gp,8($sp)
    # Line 92
    jr	$ra
    addiu	$sp,$sp,32
.L0da92ee0:
    # Line 98
    li	$v0,1
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da92ef0:
    ld	$gp,8($sp)
    # Line 102
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrNeedSoftFilter4

# Function: __glMgrim_SoftTexParameterfv
# Declared: Line 109 (Source lines: 109-124)
# Address: 0x0da92efc - 0x0da92fac (Size: 176 bytes, Frame: 192)
.globl __glMgrim_SoftTexParameterfv
.ent __glMgrim_SoftTexParameterfv
__glMgrim_SoftTexParameterfv:
    # Line 111
    li	$v0,1
    # Line 109
    addiu	$sp,$sp,-64
    sd	$ra,16($sp)
    sd	$gp,8($sp)
    lui	$v1,0x17
    addiu	$v1,$v1,-18532
    # Line 111
    lw	$at,__glBeginMode
    lw	$a3,__glCurrentContext
    # Line 109
    addu	$gp,$t9,$v1
    # Line 111
    beq	$at,$v0,.L0da92f90
    sd	$a3,0($sp)
    # Line 114
    # lw $t9, -25216($gp) # &__glim_TexParameterfv
    jal	__glim_TexParameterfv
    nop
    # Line 116
    # lw $t9, -31436($gp) # &__glMgrNeedSoftFilter4
    bal __glMgrNeedSoftFilter4
    nop
    ld	$ra,16($sp)
    ld	$a1,0($sp)
    lui	$a2,0x1
    addu	$a1,$a1,$a2
    beqz	$v0,.L0da92f6c
    lw	$a2,-28068($a1)
    # Line 117
    ori	$a3,$a2,0x40
    sw	$a3,-28068($a1)
.L0da92f60:
    ld	$gp,8($sp)
    # Line 124
    jr	$ra
    addiu	$sp,$sp,64
.L0da92f6c:
    # Line 119
    li	$at,-65
    and	$at,$a2,$at
    bnez	$at,.L0da92f60
    sw	$at,-28068($a1)
    # Line 121
    # lw $t9, -29604($gp) # &__glMgrExitSoftPath
    jal	__glMgrExitSoftPath
    ld	$a0,0($sp)
    b	.L0da92f60
    ld	$ra,16($sp)
.L0da92f90:
    # Line 111
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_SoftTexParameterfv

# Function: __glMgrim_TexParameterfv
# Declared: Line 127 (Source lines: 127-444)
# Address: 0x0da92fac - 0x0da93d24 (Size: 3448 bytes, Frame: 240)
.globl __glMgrim_TexParameterfv
.ent __glMgrim_TexParameterfv
__glMgrim_TexParameterfv:
    # Line 132
    li	$v0,1
    # Line 127
    addiu	$sp,$sp,-112
    sd	$ra,64($sp)
    sd	$s2,32($sp)
    # Line 132
    lw	$s2,__glCurrentContext
    sd	$a2,16($sp)
    sd	$s0,40($sp)
    # Line 127
    move	$s0,$a1
    sd	$a0,24($sp)
    sd	$gp,48($sp)
    # Line 132
    lw	$at,__glBeginMode
    # Line 127
    lui	$v1,0x17
    addiu	$v1,$v1,-18708
    # Line 132
    beq	$at,$v0,.L0da933e4
    # Line 127
    addu	$gp,$t9,$v1
    # Line 135
    # lw $t9, -31440($gp) # &__glMgrLookUpTexture
    sd	$s1,56($sp)
    move	$a0,$s2
    bal __glMgrLookUpTexture
    ld	$a1,24($sp)
    move	$s1,$v0
    beqz	$v0,.L0da93038
    ld	$ra,64($sp)
    # Line 141
    li	$v0,0x809b
    sltu	$a3,$s0,$v0
    bnez	$a3,.L0da93060
    sltu	$a4,$v0,$s0
    bnez	$a4,.L0da9317c
    ld	$v1,16($sp)
    # Line 382
    lwc1	$f1,0($v1)
    trunc.l.s	$f1,$f1
    dmfc1	$at,$f1
    li	$v1,260
    sll	$at,$at,0x0
    beq	$at,$v1,.L0da93164
.L0da93038:
    # Line 137
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da9303c:
    li	$a0,1280
    jal	__glSetError
    ld	$s1,56($sp)
    ld	$gp,48($sp)
    # Line 138
    ld	$ra,64($sp)
    ld	$s0,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da93060:
    # Line 141
    sltiu	$a3,$s0,10243
    bnez	$a3,.L0da930f8
    sltiu	$a4,$s0,10244
    beqz	$a4,.L0da9326c
    ld	$v1,16($sp)
    # Line 168
    lwc1	$f2,0($v1)
    trunc.l.s	$f2,$f2
    dmfc1	$v0,$f2
    li	$at,10497
    sll	$v0,$v0,0x0
    beq	$v0,$at,.L0da938e4
    li	$a4,0x812d
    li	$a3,10496
    beq	$v0,$a3,.L0da939cc
    li	$a3,1
    bne	$v0,$a4,.L0da9303c
    # Line 137
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 182
    sb	$zero,175($s1)
    li	$v1,1
    # Line 181
    lw	$at,104($s1)
    # Line 180
    sb	$v1,173($s1)
    # Line 183
    li	$v1,-16385
    # Line 181
    ori	$at,$at,0x1000
    # Line 183
    and	$at,$at,$v1
    sw	$at,104($s1)
.L0da930c4:
    # Line 187
    li	$a3,0x91fc
    addu	$a3,$a3,$s2
    lw	$a3,0($a3)
    lw	$a3,484($a3)
    bnel	$a3,$s1,.L0da93168
    ld	$gp,48($sp)
    # Line 189
    # lw $t9, -32736($gp) # &sub_0da90000
    move	$a0,$s2
    addiu	$t9,$t9,20528
    bal __glMgrim_TexParameteri
    move	$a1,$s1
    b	.L0da93164
    ld	$ra,64($sp)
.L0da930f8:
    # Line 141
    sltiu	$at,$s0,10241
    bnez	$at,.L0da9320c
    sltiu	$v1,$s0,10242
    beqz	$v1,.L0da934fc
    ld	$v1,16($sp)
    # Line 229
    lwc1	$f0,0($v1)
    trunc.l.s	$f3,$f0
    dmfc1	$v0,$f3
    nop
    sll	$v0,$v0,0x0
    sltiu	$a3,$v0,9987
    bnez	$a3,.L0da93828
    sltiu	$a3,$v0,9988
    beqz	$a3,.L0da939a8
    li	$a5,0x8185
    # Line 262
    lbu	$a4,179($s1)
    slti	$a4,$a4,4
    beqz	$a4,.L0da93038
    # Line 267
    lui	$v0,0x1
    li	$v1,1
    # Line 266
    sb	$v1,171($s1)
    # Line 265
    sb	$v1,176($s1)
    # Line 264
    sb	$v1,181($s1)
    # Line 267
    addu	$v0,$s2,$v0
.L0da93158:
    # Line 283
    sb	$zero,192($s1)
    # Line 284
    lw	$a3,-28164($v0)
    sw	$zero,484($a3)
.L0da93164:
    ld	$gp,48($sp)
.L0da93168:
    # Line 444
    ld	$s0,40($sp)
    ld	$s1,56($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da9317c:
    # Line 141
    li	$v0,0x813a
    sltu	$a4,$s0,$v0
    bnez	$a4,.L0da93364
    sltu	$at,$v0,$s0
    beqz	$at,.L0da93640
    li	$v0,0x813c
    sltu	$v1,$s0,$v0
    bnez	$v1,.L0da9372c
    sltu	$a3,$v0,$s0
    bnez	$a3,.L0da938fc
    ld	$a4,16($sp)
    # Line 390
    mtc1	$zero,$f4
    lwc1	$f0,0($a4)
    c.lt.s	$f0,$f4
    nop
    bc1t	.L0da93cb8
    # Line 391
    nop	# was lw $t9, -27320($gp) # &__glSetError
    trunc.l.s	$f1,$f0
    dmfc1	$at,$f1
    lw	$v1,136($s1)
    sll	$at,$at,0x0
    sltu	$at,$at,$v1
    beqzl	$at,.L0da931e4
    # Line 394
    sb	$zero,192($s1)
    # Line 393
    sb	$zero,193($s1)
    # Line 394
    sb	$zero,192($s1)
.L0da931e4:
    # Line 395
    li	$a4,0x91fc
    addu	$a4,$a4,$s2
    lw	$a4,0($a4)
    # Line 396
    ld	$a3,16($sp)
    # Line 395
    sw	$zero,484($a4)
    # Line 396
    lwc1	$f2,0($a3)
    trunc.l.s	$f2,$f2
    dmfc1	$v1,$f2
    # Line 397
    b	.L0da93164
    # Line 396
    sw	$v1,136($s1)
.L0da9320c:
    # Line 141
    sltiu	$at,$s0,10240
    bnez	$at,.L0da93408
    sltiu	$v1,$s0,10241
    beqz	$v1,.L0da93038
    ld	$v1,16($sp)
    # Line 288
    lwc1	$f0,0($v1)
    trunc.l.s	$f3,$f0
    dmfc1	$v0,$f3
    li	$a5,0x8146
    sll	$v0,$v0,0x0
    sltu	$a3,$v0,$a5
    bnez	$a3,.L0da93868
    sltu	$a3,$a5,$v0
    beqz	$a3,.L0da93acc
    li	$a5,0x8185
    sltu	$a4,$v0,$a5
    bnez	$a4,.L0da938b4
    sltu	$at,$a5,$v0
    beqz	$at,.L0da938c0
    li	$v1,0x8186
    bne	$v0,$v1,.L0da9303c
    # Line 137
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da938c4
    # Line 307
    trunc.w.s	$f4,$f0
.L0da9326c:
    # Line 141
    li	$v0,0x8072
    sltu	$a3,$s0,$v0
    bnez	$a3,.L0da93588
    sltu	$a4,$v0,$s0
    beqz	$a4,.L0da937a4
    li	$at,0x809a
    bne	$s0,$at,.L0da93038
    # Line 359
    ld	$v1,16($sp)
    mtc1	$zero,$f4
    lwc1	$f0,0($v1)
    c.lt.s	$f4,$f0
    nop
    bc1t	.L0da93c90
    # Line 365
    ld	$a4,16($sp)
    # Line 364
    swc1	$f0,116($s1)
    # Line 365
    lwc1	$f1,0($a4)
    ldc1	$f2,_lit8_bfe0000000000000
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    mfc1	$v0,$f1
    li	$a3,-2
    beq	$v0,$a3,.L0da93b24
    li	$at,-1
    beql	$v0,$at,.L0da93b28
    # Line 368
    li	$v0,4
    # Line 365
    beqz	$v0,.L0da93b24
    li	$v1,-3
    beq	$v0,$v1,.L0da93cdc
    li	$a3,-4
    beq	$v0,$a3,.L0da93cf4
    li	$a4,-5
    beq	$v0,$a4,.L0da93ce8
    # Line 372
    move	$v0,$zero
    sb	$zero,191($s1)
.L0da932f8:
    # Line 373
    li	$at,0x91fc
    addu	$at,$at,$s2
    lw	$at,0($at)
    lw	$at,484($at)
    bnel	$at,$s1,.L0da93168
    ld	$gp,48($sp)
    lbu	$v1,190($s1)
    li	$a3,1
    bnel	$v1,$a3,.L0da93168
    ld	$gp,48($sp)
    # Line 376
    li	$a4,1
    li	$a1,385
    move	$a0,$s2
    # lw $t9, -30696($gp) # &__glMgrasWrite
    la	$a3,SYMBOL_LOCATION
    # Line 375
    lw	$a2,96($s1)
    lui	$a5,0x7
    nor	$a5,$a5,$zero
    and	$a2,$a2,$a5
    andi	$a5,$v0,0x7
    sll	$a5,$a5,0x10
    or	$a2,$a2,$a5
    sw	$a2,96($s1)
    # Line 376
    jal	__glMgrasWrite
    lw	$a3,220($a3)
    b	.L0da93164
    ld	$ra,64($sp)
.L0da93364:
    # Line 141
    li	$v0,0x8125
    sltu	$at,$s0,$v0
    bnez	$at,.L0da935cc
    sltu	$v1,$v0,$s0
    bnez	$v1,.L0da936e8
    ld	$v1,16($sp)
    # Line 347
    lwc1	$f2,0($v1)
    trunc.l.s	$f2,$f2
    dmfc1	$v0,$f2
    nop
    sll	$v0,$v0,0x0
    sltiu	$a3,$v0,4
    beqz	$a3,.L0da93c48
    # Line 351
    li	$a3,0x91fc
    sb	$v0,189($s1)
    addu	$a3,$a3,$s2
    lw	$a3,0($a3)
    lw	$a3,484($a3)
    bnel	$a3,$s1,.L0da93168
    ld	$gp,48($sp)
    lbu	$a4,187($s1)
    beqz	$a4,.L0da93164
    # Line 353
    nop	# was lw $t9, -30740($gp) # &mgrTM_tram_select
    move	$a0,$s2
    jal	mgrTM_tram_select
    move	$a1,$s1
    # Line 354
    # lw $t9, -30728($gp) # &mgrTM_SendTexmode1
    move	$a0,$s2
    jal	mgrTM_SendTexmode1
    move	$a1,$s1
    b	.L0da93164
    ld	$ra,64($sp)
.L0da933e4:
    # Line 132
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,48($sp)
    ld	$ra,64($sp)
    ld	$s0,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da93408:
    # Line 141
    li	$at,4100
    bne	$s0,$at,.L0da9303c
    # Line 137
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 323
    # lw $t9, -26700($gp) # &__glClampColorf
    move	$a0,$s2
    ld	$a2,16($sp)
    jal	__glClampColorf
    addiu	$a1,$sp,0
    # Line 324
    lwc1	$f1,_lit_4b7fffff
    lwc1	$f2,0($sp)
    lwc1	$f3,4($sp)
    mul.s	$f2,$f2,$f1
    mul.s	$f3,$f3,$f1
    trunc.w.s	$f2,$f2
    trunc.w.s	$f3,$f3
    lui	$ra,0xff
    mfc1	$a3,$f2
    mfc1	$a2,$f3
    ori	$ra,$ra,0xf000
    sra	$a3,$a3,0xc
    and	$a2,$a2,$ra
    or	$a2,$a2,$a3
    sw	$a2,144($s1)
    # Line 325
    lwc1	$f3,8($sp)
    lwc1	$f4,12($sp)
    mul.s	$f3,$f3,$f1
    mul.s	$f4,$f4,$f1
    trunc.w.s	$f3,$f3
    trunc.w.s	$f4,$f4
    mfc1	$a4,$f3
    mfc1	$a3,$f4
    li	$v1,0x91fc
    sra	$a4,$a4,0xc
    and	$a3,$a3,$ra
    or	$a3,$a3,$a4
    sw	$a3,148($s1)
    addu	$v1,$v1,$s2
    lw	$v1,0($v1)
    lw	$v1,484($v1)
    bne	$v1,$s1,.L0da93164
    ld	$ra,64($sp)
    lw	$at,76($s1)
    lw	$at,20($at)
    bnezl	$at,.L0da93168
    ld	$gp,48($sp)
    # Line 327
    move	$a4,$zero
    li	$a1,388
    # lw $t9, -30696($gp) # &__glMgrasWrite
    # Line 326
    la	$s0,SYMBOL_LOCATION
    # Line 327
    move	$a0,$s2
    jal	__glMgrasWrite
    lw	$a3,232($s0)
    # Line 329
    move	$a0,$s2
    li	$a4,1
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,236($s0)
    lw	$a2,148($s1)
    jal	__glMgrasWrite
    li	$a1,389
    b	.L0da93164
    ld	$ra,64($sp)
.L0da934fc:
    # Line 141
    li	$v1,10242
    bne	$s0,$v1,.L0da93038
    ld	$v1,16($sp)
    # Line 143
    lwc1	$f4,0($v1)
    trunc.l.s	$f4,$f4
    dmfc1	$v0,$f4
    li	$a3,10497
    sll	$v0,$v0,0x0
    beq	$v0,$a3,.L0da93b30
    li	$a3,10496
    beq	$v0,$a3,.L0da93b70
    li	$a4,0x812d
    bne	$v0,$a4,.L0da9303c
    # Line 137
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 157
    sb	$zero,175($s1)
    li	$v1,1
    # Line 156
    lw	$at,104($s1)
    # Line 155
    sb	$v1,172($s1)
    # Line 158
    li	$v1,-16385
    # Line 156
    ori	$at,$at,0x800
    # Line 158
    and	$at,$at,$v1
    sw	$at,104($s1)
.L0da93554:
    # Line 162
    li	$a3,0x91fc
    addu	$a3,$a3,$s2
    lw	$a3,0($a3)
    lw	$a3,484($a3)
    bnel	$a3,$s1,.L0da93168
    ld	$gp,48($sp)
    # Line 164
    # lw $t9, -32736($gp) # &sub_0da90000
    move	$a0,$s2
    addiu	$t9,$t9,20528
    bal __glMgrim_TexParameteri
    move	$a1,$s1
    b	.L0da93164
    ld	$ra,64($sp)
.L0da93588:
    # Line 141
    li	$at,0x8066
    bne	$s0,$at,.L0da9303c
    # Line 137
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 436
    lwc1	$f14,3284($s2)
    # lw $t9, -32732($gp) # &sub_0daa0000
    mtc1	$zero,$f13
    ld	$v0,16($sp)
    addiu	$t9,$t9,-23884
    bal __glMgrim_DeleteTexturesEXT
    lwc1	$f12,0($v0)
    lbu	$at,179($s1)
    swc1	$f0,112($s1)
    li	$v1,8
    beq	$at,$v1,.L0da93164
    ld	$ra,64($sp)
    b	.L0da93164
    # Line 438
    swc1	$f0,108($s1)
.L0da935cc:
    # Line 141
    li	$a3,0x8124
    bne	$s0,$a3,.L0da93038
    ld	$v1,16($sp)
    # Line 335
    lwc1	$f1,0($v1)
    trunc.l.s	$f1,$f1
    dmfc1	$v0,$f1
    nop
    sll	$v0,$v0,0x0
    sltiu	$a4,$v0,2
    beqz	$a4,.L0da93b48
    # Line 339
    li	$a3,0x91fc
    sb	$v0,188($s1)
    addu	$a3,$a3,$s2
    lw	$a3,0($a3)
    lw	$a3,484($a3)
    bnel	$a3,$s1,.L0da93168
    ld	$gp,48($sp)
    lbu	$a4,187($s1)
    beqz	$a4,.L0da93164
    # Line 341
    nop	# was lw $t9, -30740($gp) # &mgrTM_tram_select
    move	$a0,$s2
    jal	mgrTM_tram_select
    move	$a1,$s1
    # Line 342
    # lw $t9, -30728($gp) # &mgrTM_SendTexmode1
    move	$a0,$s2
    jal	mgrTM_SendTexmode1
    move	$a1,$s1
    b	.L0da93164
    ld	$ra,64($sp)
.L0da93640:
    ld	$at,16($sp)
    # Line 410
    lwc1	$f6,128($s1)
    lwc1	$f0,0($at)
    c.eq.s	$f0,$f6
    nop
    bc1t	.L0da93164
    mtc1	$zero,$f7
    c.lt.s	$f0,$f7
    nop
    bc1f	.L0da93670
    # Line 411
    mov.s	$f5,$f0
    mov.s	$f5,$f7
.L0da93670:
    c.lt.s	$f5,$f6
    nop
    bc1f	.L0da936cc
    # Line 421
    li	$a4,0x91fc
    # Line 415
    trunc.l.s	$f2,$f5
    dmfc1	$a1,$f2
    # Line 414
    sb	$zero,193($s1)
    # Line 415
    sll	$a1,$a1,0x0
    slti	$v1,$a1,12
    beqz	$v1,.L0da936c8
    addiu	$a0,$a1,1
    sll	$v0,$a0,0x2
    addu	$v0,$v0,$s1
.L0da936a4:
    lw	$a0,20($v0)
    addiu	$v1,$s1,52
    beqz	$a0,.L0da936c8
    addiu	$v0,$v0,4
    lw	$a1,28($a0)
    beqz	$a1,.L0da936c8
    nop
    bne	$v1,$v0,.L0da936a4
    # Line 417
    sb	$zero,87($a1)
.L0da936c8:
    # Line 421
    li	$a4,0x91fc
.L0da936cc:
    addu	$a4,$a4,$s2
    lw	$a4,0($a4)
    # Line 422
    ld	$a3,16($sp)
    # Line 421
    sw	$zero,484($a4)
    # Line 422
    lwc1	$f3,0($a3)
    # Line 423
    b	.L0da93164
    # Line 422
    swc1	$f3,128($s1)
.L0da936e8:
    # Line 141
    li	$at,0x8137
    bne	$s0,$at,.L0da93038
    ld	$s1,56($sp)
    ld	$v1,16($sp)
    # Line 218
    lwc1	$f4,0($v1)
    trunc.l.s	$f4,$f4
    dmfc1	$v0,$f4
    li	$v1,10496
    sll	$v0,$v0,0x0
    beq	$v0,$v1,.L0da93164
    li	$a3,10497
    beq	$v0,$a3,.L0da93164
    li	$a4,0x812d
    beql	$v0,$a4,.L0da93168
    ld	$gp,48($sp)
    b	.L0da9303c
    # Line 137
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da9372c:
    # Line 141
    li	$at,0x813b
    bne	$s0,$at,.L0da93038
    ld	$v1,16($sp)
    # Line 426
    lwc1	$f5,132($s1)
    lwc1	$f0,0($v1)
    c.eq.s	$f0,$f5
    nop
    bc1t	.L0da93164
    lwc1	$f1,_lit_447a0000
    c.eq.s	$f5,$f1
    nop
    bc1fl	.L0da93774
    # Line 428
    c.lt.s	$f5,$f0
    lwc1	$f5,_lit_bf800000
    ld	$a3,16($sp)
    swc1	$f5,132($s1)
    lwc1	$f0,0($a3)
    c.lt.s	$f5,$f0
.L0da93774:
    nop
    bc1f	.L0da93788
    # Line 431
    li	$at,0x91fc
    # Line 430
    sb	$zero,193($s1)
    # Line 431
    li	$at,0x91fc
.L0da93788:
    addu	$at,$at,$s2
    lw	$at,0($at)
    # Line 432
    ld	$a4,16($sp)
    # Line 431
    sw	$zero,484($at)
    # Line 432
    lwc1	$f2,0($a4)
    # Line 433
    b	.L0da93164
    # Line 432
    swc1	$f2,132($s1)
.L0da937a4:
    ld	$v1,16($sp)
    # Line 193
    lwc1	$f3,0($v1)
    trunc.l.s	$f3,$f3
    dmfc1	$v0,$f3
    li	$v1,10497
    sll	$v0,$v0,0x0
    beq	$v0,$v1,.L0da93b90
    li	$a3,10496
    beq	$v0,$a3,.L0da93c70
    li	$a4,0x812d
    bne	$v0,$a4,.L0da9303c
    # Line 137
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 207
    sb	$zero,175($s1)
    li	$v1,1
    # Line 206
    lw	$at,104($s1)
    # Line 205
    sb	$v1,174($s1)
    # Line 208
    li	$v1,-16385
    # Line 206
    ori	$at,$at,0x2000
    # Line 208
    and	$at,$at,$v1
    sw	$at,104($s1)
.L0da937f4:
    # Line 212
    li	$a3,0x91fc
    addu	$a3,$a3,$s2
    lw	$a3,0($a3)
    lw	$a3,484($a3)
    bnel	$a3,$s1,.L0da93168
    ld	$gp,48($sp)
    # Line 214
    # lw $t9, -32736($gp) # &sub_0da90000
    move	$a0,$s2
    addiu	$t9,$t9,20528
    bal __glMgrim_TexParameteri
    move	$a1,$s1
    b	.L0da93164
    ld	$ra,64($sp)
.L0da93828:
    # Line 229
    sltiu	$at,$v0,9984
    bnez	$at,.L0da9396c
    sltiu	$v1,$v0,9985
    beqz	$v1,.L0da93a6c
    sltiu	$v1,$v0,9986
    # Line 241
    lbu	$a3,179($s1)
    slti	$a3,$a3,4
    beqz	$a3,.L0da9303c
    # Line 137
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 245
    sb	$zero,171($s1)
    # Line 244
    sb	$zero,176($s1)
    # Line 246
    lui	$v0,0x1
    li	$v1,1
    # Line 243
    sb	$v1,181($s1)
    # Line 246
    b	.L0da93158
    addu	$v0,$s2,$v0
.L0da93868:
    # Line 288
    li	$a0,0x8097
    sltu	$a3,$v0,$a0
    bnez	$a3,.L0da93a18
    sltu	$a4,$a0,$v0
    beqz	$a4,.L0da93888
    li	$at,0x8099
    bne	$v0,$at,.L0da9303c
    # Line 137
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da93888:
    # Line 299
    lbu	$v1,179($s1)
    andi	$v1,$v1,0x1e
    li	$a3,2
    bne	$v1,$a3,.L0da93038
    li	$v1,1
    # Line 303
    lui	$v0,0x1
    addu	$v0,$s2,$v0
    # Line 302
    sb	$v1,190($s1)
    # Line 301
    sb	$v1,177($s1)
    # Line 303
    b	.L0da938d8
    ld	$s1,56($sp)
.L0da938b4:
    # Line 288
    li	$a3,0x8184
    bne	$v0,$a3,.L0da9303c
    # Line 137
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da938c0:
    # Line 307
    trunc.w.s	$f4,$f0
.L0da938c4:
    mfc1	$a4,$f4
    # Line 308
    lui	$v0,0x1
    addu	$v0,$s2,$v0
    # Line 307
    sw	$a4,124($s1)
    ld	$s1,56($sp)
.L0da938d8:
    # Line 319
    lw	$v1,-28164($v0)
    # Line 320
    b	.L0da93164
    # Line 319
    sw	$zero,484($v1)
.L0da938e4:
    # Line 171
    lw	$a3,104($s1)
    # Line 170
    sb	$zero,173($s1)
    # Line 171
    li	$a4,-4097
    and	$a3,$a3,$a4
    # Line 172
    b	.L0da930c4
    # Line 171
    sw	$a3,104($s1)
.L0da938fc:
    # Line 141
    li	$at,0x813d
    bne	$s0,$at,.L0da93038
    ld	$v1,16($sp)
    # Line 400
    mtc1	$zero,$f1
    lwc1	$f0,0($v1)
    c.lt.s	$f0,$f1
    nop
    bc1t	.L0da93d00
    # Line 401
    nop	# was lw $t9, -27320($gp) # &__glSetError
    trunc.l.s	$f2,$f0
    dmfc1	$a4,$f2
    lw	$a3,140($s1)
    sll	$a4,$a4,0x0
    sltu	$a3,$a3,$a4
    beqz	$a3,.L0da93944
    # Line 405
    ld	$a3,16($sp)
    # Line 403
    sb	$zero,193($s1)
    # Line 405
    ld	$a3,16($sp)
.L0da93944:
    # Line 404
    sb	$zero,192($s1)
    # Line 405
    lwc1	$f3,0($a3)
    trunc.l.s	$f3,$f3
    dmfc1	$v1,$f3
    # Line 406
    li	$at,0x91fc
    # Line 405
    sw	$v1,140($s1)
    # Line 406
    addu	$at,$at,$s2
    lw	$at,0($at)
    # Line 407
    b	.L0da93164
    # Line 406
    sw	$zero,484($at)
.L0da9396c:
    # Line 229
    sltiu	$a4,$v0,9729
    bnez	$a4,.L0da93a48
    sltiu	$at,$v0,9730
    beqz	$at,.L0da9303c
    # Line 137
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 236
    sb	$zero,181($s1)
    # Line 239
    lui	$v0,0x1
    addu	$v0,$s2,$v0
    li	$v1,1
    # Line 238
    lbu	$a3,179($s1)
    # Line 237
    sb	$v1,176($s1)
    # Line 238
    li	$v1,3
    slt	$v1,$v1,$a3
    # Line 239
    b	.L0da93158
    # Line 238
    sb	$v1,171($s1)
.L0da939a8:
    # Line 229
    sltu	$a3,$v0,$a5
    bnez	$a3,.L0da939e8
    sltu	$a4,$a5,$v0
    beqz	$a4,.L0da93a00
    li	$at,0x8186
    bne	$v0,$at,.L0da9303c
    # Line 137
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da93a04
    # Line 271
    trunc.w.s	$f4,$f0
.L0da939cc:
    # Line 175
    lw	$v1,104($s1)
    # Line 176
    sb	$a3,175($s1)
    # Line 174
    sb	$a3,173($s1)
    # Line 175
    ori	$v1,$v1,0x1000
    # Line 177
    ori	$v1,$v1,0x4000
    # Line 178
    b	.L0da930c4
    # Line 177
    sw	$v1,104($s1)
.L0da939e8:
    # Line 229
    li	$a5,0x8184
    sltu	$a4,$v0,$a5
    bnez	$a4,.L0da93be0
    sltu	$at,$a5,$v0
    bnez	$at,.L0da9303c
    # Line 137
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da93a00:
    # Line 271
    trunc.w.s	$f4,$f0
.L0da93a04:
    # Line 272
    lui	$v0,0x1
    # Line 271
    mfc1	$v1,$f4
    # Line 272
    addu	$v0,$s2,$v0
    b	.L0da93158
    # Line 271
    sw	$v1,124($s1)
.L0da93a18:
    # Line 288
    sltiu	$v1,$v0,9729
    bnez	$v1,.L0da93aa8
    sltiu	$a3,$v0,9730
    beqz	$a3,.L0da9303c
    # Line 137
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 295
    sb	$zero,190($s1)
    li	$v1,1
    # Line 296
    lui	$v0,0x1
    addu	$v0,$s2,$v0
    # Line 294
    sb	$v1,177($s1)
    # Line 296
    b	.L0da938d8
    ld	$s1,56($sp)
.L0da93a48:
    # Line 229
    li	$a3,9728
    bne	$v0,$a3,.L0da9303c
    # Line 137
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 233
    sb	$zero,171($s1)
    # Line 232
    sb	$zero,176($s1)
    # Line 231
    sb	$zero,181($s1)
    # Line 234
    lui	$v0,0x1
    b	.L0da93158
    addu	$v0,$s2,$v0
.L0da93a6c:
    # Line 229
    bnez	$v1,.L0da93ba8
    sltiu	$a3,$v0,9987
    beqz	$a3,.L0da9303c
    # Line 137
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 255
    lbu	$a4,179($s1)
    slti	$a4,$a4,4
    beqz	$a4,.L0da9303c
    # Line 137
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 258
    sb	$zero,176($s1)
    # Line 260
    lui	$v0,0x1
    li	$v1,1
    # Line 259
    sb	$v1,171($s1)
    # Line 257
    sb	$v1,181($s1)
    # Line 260
    b	.L0da93158
    addu	$v0,$s2,$v0
.L0da93aa8:
    # Line 288
    li	$a3,9728
    bne	$v0,$a3,.L0da9303c
    # Line 137
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 291
    sb	$zero,190($s1)
    # Line 290
    sb	$zero,177($s1)
    ld	$s1,56($sp)
    # Line 292
    lui	$v0,0x1
    b	.L0da938d8
    addu	$v0,$s2,$v0
.L0da93acc:
    # Line 310
    # lw $t9, -16560($gp) # &glIsEnabled
    jal	glIsEnabled
    ld	$a0,24($sp)
    lui	$s1,0x1
    beqz	$v0,.L0da93afc
    addu	$s1,$s2,$s1
    # Line 311
    # lw $t9, -29672($gp) # &__glMgrEnterSoftPath
    jal	__glMgrEnterSoftPath
    move	$a0,$s2
    # Line 312
    lw	$at,-28068($s1)
    ori	$at,$at,0x40
    sw	$at,-28068($s1)
.L0da93afc:
    sd	$s1,72($sp)
    # Line 314
    # lw $t9, -25216($gp) # &__glim_TexParameterfv
    ld	$a0,24($sp)
    move	$a1,$s0
    jal	__glim_TexParameterfv
    ld	$a2,16($sp)
    ld	$ra,64($sp)
    ld	$s1,56($sp)
    b	.L0da938d8
    ld	$v0,72($sp)
.L0da93b24:
    # Line 368
    li	$v0,4
.L0da93b28:
    b	.L0da932f8
    sb	$v0,191($s1)
.L0da93b30:
    # Line 146
    lw	$v1,104($s1)
    # Line 145
    sb	$zero,172($s1)
    # Line 146
    li	$a3,-2049
    and	$v1,$v1,$a3
    # Line 147
    b	.L0da93554
    # Line 146
    sw	$v1,104($s1)
.L0da93b48:
    # Line 336
    # lw $t9, -27320($gp) # &__glSetError
    li	$a0,1281
    jal	__glSetError
    ld	$s1,56($sp)
    ld	$gp,48($sp)
    # Line 337
    ld	$ra,64($sp)
    ld	$s0,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da93b70:
    li	$at,1
    # Line 150
    lw	$a4,104($s1)
    # Line 151
    sb	$at,175($s1)
    # Line 149
    sb	$at,172($s1)
    # Line 150
    ori	$a4,$a4,0x800
    # Line 152
    ori	$a4,$a4,0x4000
    # Line 153
    b	.L0da93554
    # Line 152
    sw	$a4,104($s1)
.L0da93b90:
    # Line 196
    lw	$v1,104($s1)
    # Line 195
    sb	$zero,174($s1)
    # Line 196
    li	$a3,-8193
    and	$v1,$v1,$a3
    # Line 197
    b	.L0da937f4
    # Line 196
    sw	$v1,104($s1)
.L0da93ba8:
    # Line 229
    li	$a4,9985
    bne	$v0,$a4,.L0da9303c
    # Line 137
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 248
    lbu	$at,179($s1)
    slti	$at,$at,4
    beqz	$at,.L0da9303c
    # Line 137
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 252
    sb	$zero,171($s1)
    # Line 253
    lui	$v0,0x1
    li	$v1,1
    # Line 251
    sb	$v1,176($s1)
    # Line 250
    sb	$v1,181($s1)
    # Line 253
    b	.L0da93158
    addu	$v0,$s2,$v0
.L0da93be0:
    # Line 229
    li	$a3,0x8146
    bne	$v0,$a3,.L0da9303c
    # Line 137
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 274
    # lw $t9, -16560($gp) # &glIsEnabled
    jal	glIsEnabled
    ld	$a0,24($sp)
    lui	$a5,0x1
    beqz	$v0,.L0da93c24
    addu	$a5,$s2,$a5
    # Line 275
    # lw $t9, -29672($gp) # &__glMgrEnterSoftPath
    sd	$a5,72($sp)
    jal	__glMgrEnterSoftPath
    move	$a0,$s2
    ld	$a5,72($sp)
    # Line 276
    lw	$at,-28068($a5)
    ori	$at,$at,0x40
    sw	$at,-28068($a5)
.L0da93c24:
    sd	$a5,72($sp)
    # Line 278
    # lw $t9, -25216($gp) # &__glim_TexParameterfv
    ld	$a0,24($sp)
    move	$a1,$s0
    jal	__glim_TexParameterfv
    ld	$a2,16($sp)
    ld	$ra,64($sp)
    b	.L0da93158
    ld	$v0,72($sp)
.L0da93c48:
    # Line 348
    # lw $t9, -27320($gp) # &__glSetError
    li	$a0,1281
    jal	__glSetError
    ld	$s1,56($sp)
    ld	$gp,48($sp)
    # Line 349
    ld	$ra,64($sp)
    ld	$s0,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da93c70:
    li	$a3,1
    # Line 200
    lw	$v1,104($s1)
    # Line 201
    sb	$a3,175($s1)
    # Line 199
    sb	$a3,174($s1)
    # Line 200
    ori	$v1,$v1,0x2000
    # Line 202
    ori	$v1,$v1,0x4000
    # Line 203
    b	.L0da937f4
    # Line 202
    sw	$v1,104($s1)
.L0da93c90:
    # Line 361
    # lw $t9, -27320($gp) # &__glSetError
    li	$a0,1281
    jal	__glSetError
    ld	$s1,56($sp)
    ld	$gp,48($sp)
    # Line 362
    ld	$ra,64($sp)
    ld	$s0,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da93cb8:
    # Line 391
    li	$a0,1281
    jalr	$t9
    ld	$s1,56($sp)
    ld	$gp,48($sp)
    ld	$ra,64($sp)
    ld	$s0,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da93cdc:
    # Line 369
    li	$v0,3
    b	.L0da932f8
    sb	$v0,191($s1)
.L0da93ce8:
    # Line 371
    li	$v0,1
    b	.L0da932f8
    sb	$v0,191($s1)
.L0da93cf4:
    # Line 370
    li	$v0,2
    b	.L0da932f8
    sb	$v0,191($s1)
.L0da93d00:
    # Line 401
    li	$a0,1281
    jalr	$t9
    ld	$s1,56($sp)
    ld	$gp,48($sp)
    ld	$ra,64($sp)
    ld	$s0,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glMgrim_TexParameterfv

# Function: __glMgrim_SoftTexParameterf
# Declared: Line 447 (Source lines: 447-465)
# Address: 0x0da93d24 - 0x0da93e30 (Size: 268 bytes, Frame: 48)
.globl __glMgrim_SoftTexParameterf
.ent __glMgrim_SoftTexParameterf
__glMgrim_SoftTexParameterf:
    # Line 447
    addiu	$sp,$sp,-48
    swc1	$f14,32($sp)
    sd	$gp,0($sp)
    li	$a3,0x8066
    lui	$v0,0x17
    addiu	$v0,$v0,-22156
    sltu	$at,$a1,$a3
    bnez	$at,.L0da93d90
    addu	$gp,$t9,$v0
    # Line 449
    sltu	$v1,$a3,$a1
    beqz	$v1,.L0da93dc8
    li	$a3,0x819a
    sltu	$a2,$a1,$a3
    bnez	$a2,.L0da93dfc
    sltu	$at,$a3,$a1
    beqz	$at,.L0da93dc8
    li	$v0,0x819b
    beq	$a1,$v0,.L0da93dc8
    sd	$ra,8($sp)
.L0da93d70:
    # Line 462
    # lw $t9, -27320($gp) # &__glSetError
.L0da93d74:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 463
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da93d90:
    # Line 449
    sltiu	$v1,$a1,10242
    bnez	$v1,.L0da93db4
    sltiu	$a2,$a1,10243
    bnez	$a2,.L0da93dc8
    li	$at,10243
    bne	$a1,$at,.L0da93d74
    # Line 462
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da93dc8
    sd	$ra,8($sp)
.L0da93db4:
    # Line 449
    sltiu	$v0,$a1,10241
    bnez	$v0,.L0da93de8
    sltiu	$v1,$a1,10242
    beqz	$v1,.L0da93d70
    sd	$ra,8($sp)
.L0da93dc8:
    # Line 459
    # lw $t9, -31432($gp) # &__glMgrim_SoftTexParameterfv
    sd	$ra,8($sp)
    bal __glMgrim_SoftTexParameterfv
    addiu	$a2,$sp,32
    # Line 465
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da93de8:
    # Line 449
    li	$a2,10240
    bne	$a1,$a2,.L0da93d74
    # Line 462
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da93dc8
    sd	$ra,8($sp)
.L0da93dfc:
    # Line 449
    li	$a3,0x80bf
    sltu	$at,$a1,$a3
    bnez	$at,.L0da93e1c
    sltu	$v0,$a3,$a1
    bnez	$v0,.L0da93d74
    # Line 462
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da93dc8
    sd	$ra,8($sp)
.L0da93e1c:
    # Line 449
    li	$v1,0x8072
    bne	$a1,$v1,.L0da93d74
    # Line 462
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da93dc8
    sd	$ra,8($sp)
.end __glMgrim_SoftTexParameterf

# Function: __glMgrim_TexParameterf
# Declared: Line 468 (Source lines: 468-496)
# Address: 0x0da93e30 - 0x0da94004 (Size: 468 bytes, Frame: 48)
.globl __glMgrim_TexParameterf
.ent __glMgrim_TexParameterf
__glMgrim_TexParameterf:
    # Line 468
    addiu	$sp,$sp,-48
    swc1	$f14,32($sp)
    sd	$gp,0($sp)
    li	$a3,0x8125
    lui	$v0,0x17
    addiu	$v0,$v0,-22424
    sltu	$at,$a1,$a3
    bnez	$at,.L0da93e98
    addu	$gp,$t9,$v0
    # Line 470
    sltu	$v1,$a3,$a1
    beqz	$v1,.L0da93eac
    li	$a3,0x813d
    sltu	$a2,$a1,$a3
    bnez	$a2,.L0da93f4c
    sltu	$at,$a3,$a1
    beqz	$at,.L0da93eac
    li	$a3,0x8185
    sltu	$v0,$a1,$a3
    bnez	$v0,.L0da93ff0
    sltu	$v1,$a3,$a1
    beqz	$v1,.L0da93eac
    li	$a2,0x8186
    bne	$a1,$a2,.L0da93eec
    # Line 493
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da93eac
    sd	$ra,8($sp)
.L0da93e98:
    # Line 470
    li	$a3,0x8066
    sltu	$at,$a1,$a3
    bnez	$at,.L0da93ecc
    sltu	$v0,$a3,$a1
    bnez	$v0,.L0da93f24
.L0da93eac:
    # Line 489
    nop	# was lw $t9, -31428($gp) # &__glMgrim_TexParameterfv
    sd	$ra,8($sp)
    bal __glMgrim_TexParameterfv
    addiu	$a2,$sp,32
    # Line 496
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da93ecc:
    # Line 470
    sltiu	$v1,$a1,10242
    bnez	$v1,.L0da93f08
    sltiu	$a2,$a1,10243
    bnez	$a2,.L0da93eac
    li	$at,10243
    beq	$a1,$at,.L0da93eac
    sd	$ra,8($sp)
    # Line 493
    # lw $t9, -27320($gp) # &__glSetError
.L0da93eec:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 494
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da93f08:
    # Line 470
    sltiu	$v0,$a1,10241
    bnez	$v0,.L0da93f74
    sltiu	$v1,$a1,10242
    beqz	$v1,.L0da93eec
    # Line 493
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da93eac
    sd	$ra,8($sp)
.L0da93f24:
    # Line 470
    li	$a3,0x809b
    sltu	$a2,$a1,$a3
    bnez	$a2,.L0da93f88
    sltu	$at,$a3,$a1
    beqz	$at,.L0da93eac
    li	$v0,0x8124
    bne	$a1,$v0,.L0da93eec
    # Line 493
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da93eac
    sd	$ra,8($sp)
.L0da93f4c:
    # Line 470
    li	$a3,0x813b
    sltu	$v1,$a1,$a3
    bnez	$v1,.L0da93fa8
    sltu	$a2,$a3,$a1
    beqz	$a2,.L0da93eac
    li	$at,0x813c
    bne	$a1,$at,.L0da93eec
    # Line 493
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da93eac
    sd	$ra,8($sp)
.L0da93f74:
    # Line 470
    li	$v0,10240
    bne	$a1,$v0,.L0da93eec
    # Line 493
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da93eac
    sd	$ra,8($sp)
.L0da93f88:
    # Line 470
    li	$a3,0x809a
    sltu	$v1,$a1,$a3
    bnez	$v1,.L0da93fc8
    sltu	$a2,$a3,$a1
    bnez	$a2,.L0da93eec
    # Line 493
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da93eac
    sd	$ra,8($sp)
.L0da93fa8:
    # Line 470
    li	$a3,0x813a
    sltu	$at,$a1,$a3
    bnez	$at,.L0da93fdc
    sltu	$v0,$a3,$a1
    bnez	$v0,.L0da93eec
    # Line 493
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da93eac
    sd	$ra,8($sp)
.L0da93fc8:
    # Line 470
    li	$v1,0x8072
    bne	$a1,$v1,.L0da93eec
    # Line 493
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da93eac
    sd	$ra,8($sp)
.L0da93fdc:
    # Line 470
    li	$a2,0x8137
    bne	$a1,$a2,.L0da93eec
    # Line 493
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da93eac
    sd	$ra,8($sp)
.L0da93ff0:
    # Line 470
    li	$at,0x8184
    bne	$a1,$at,.L0da93eec
    # Line 493
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da93eac
    sd	$ra,8($sp)
.end __glMgrim_TexParameterf

# Function: __glMgrim_SoftTexParameteriv
# Declared: Line 499 (Source lines: 499-514)
# Address: 0x0da94004 - 0x0da940b4 (Size: 176 bytes, Frame: 192)
.globl __glMgrim_SoftTexParameteriv
.ent __glMgrim_SoftTexParameteriv
__glMgrim_SoftTexParameteriv:
    # Line 501
    li	$v0,1
    # Line 499
    addiu	$sp,$sp,-64
    sd	$ra,16($sp)
    sd	$gp,8($sp)
    lui	$v1,0x17
    addiu	$v1,$v1,-22892
    # Line 501
    lw	$at,__glBeginMode
    lw	$a3,__glCurrentContext
    # Line 499
    addu	$gp,$t9,$v1
    # Line 501
    beq	$at,$v0,.L0da94098
    sd	$a3,0($sp)
    # Line 504
    # lw $t9, -25208($gp) # &__glim_TexParameteriv
    jal	__glim_TexParameteriv
    nop
    # Line 506
    # lw $t9, -31436($gp) # &__glMgrNeedSoftFilter4
    bal __glMgrNeedSoftFilter4
    nop
    ld	$ra,16($sp)
    ld	$a1,0($sp)
    lui	$a2,0x1
    addu	$a1,$a1,$a2
    beqz	$v0,.L0da94074
    lw	$a2,-28068($a1)
    # Line 507
    ori	$a3,$a2,0x40
    sw	$a3,-28068($a1)
.L0da94068:
    ld	$gp,8($sp)
    # Line 514
    jr	$ra
    addiu	$sp,$sp,64
.L0da94074:
    # Line 509
    li	$at,-65
    and	$at,$a2,$at
    bnez	$at,.L0da94068
    sw	$at,-28068($a1)
    # Line 511
    # lw $t9, -29604($gp) # &__glMgrExitSoftPath
    jal	__glMgrExitSoftPath
    ld	$a0,0($sp)
    b	.L0da94068
    ld	$ra,16($sp)
.L0da94098:
    # Line 501
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_SoftTexParameteriv

# Function: __glMgrim_TexParameteriv
# Declared: Line 517 (Source lines: 517-830)
# Address: 0x0da940b4 - 0x0da94d70 (Size: 3260 bytes, Frame: 240)
.globl __glMgrim_TexParameteriv
.ent __glMgrim_TexParameteriv
__glMgrim_TexParameteriv:
    # Line 523
    li	$v0,1
    # Line 517
    addiu	$sp,$sp,-112
    sd	$ra,64($sp)
    sd	$s2,32($sp)
    # Line 523
    lw	$s2,__glCurrentContext
    sd	$a2,16($sp)
    sd	$s0,40($sp)
    # Line 517
    move	$s0,$a1
    sd	$a0,24($sp)
    sd	$gp,48($sp)
    # Line 523
    lw	$at,__glBeginMode
    # Line 517
    lui	$v1,0x17
    addiu	$v1,$v1,-23068
    # Line 523
    beq	$at,$v0,.L0da9455c
    # Line 517
    addu	$gp,$t9,$v1
    # Line 526
    # lw $t9, -31440($gp) # &__glMgrLookUpTexture
    sd	$s1,56($sp)
    move	$a0,$s2
    bal __glMgrLookUpTexture
    ld	$a1,24($sp)
    move	$s1,$v0
    beqz	$v0,.L0da94134
    ld	$ra,64($sp)
    # Line 532
    li	$v0,0x809b
    sltu	$a3,$s0,$v0
    bnez	$a3,.L0da9415c
    sltu	$a4,$v0,$s0
    bnez	$a4,.L0da94264
    # Line 773
    li	$v1,260
    ld	$at,16($sp)
    lw	$at,0($at)
    beq	$at,$v1,.L0da94388
.L0da94134:
    # Line 528
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da94138:
    li	$a0,1280
    jal	__glSetError
    ld	$s1,56($sp)
    ld	$gp,48($sp)
    # Line 529
    ld	$ra,64($sp)
    ld	$s0,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da9415c:
    # Line 532
    sltiu	$v1,$s0,10242
    bnez	$v1,.L0da941f8
    sltiu	$a3,$s0,10243
    bnez	$a3,.L0da944e0
    li	$v0,0x8072
    sltu	$a4,$s0,$v0
    bnez	$a4,.L0da94580
    sltu	$at,$v0,$s0
    bnez	$at,.L0da946ac
    ld	$v0,16($sp)
    # Line 584
    lw	$v0,0($v0)
    li	$v1,10497
    beq	$v0,$v1,.L0da94bdc
    li	$v1,10496
    beq	$v0,$v1,.L0da94c1c
    li	$a3,0x812d
    bne	$v0,$a3,.L0da94138
    # Line 528
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 598
    sb	$zero,175($s1)
    li	$at,1
    # Line 597
    lw	$a4,104($s1)
    # Line 596
    sb	$at,174($s1)
    # Line 599
    li	$at,-16385
    # Line 597
    ori	$a4,$a4,0x2000
    # Line 599
    and	$a4,$a4,$at
    sw	$a4,104($s1)
.L0da941c4:
    # Line 603
    li	$v1,0x91fc
    addu	$v1,$v1,$s2
    lw	$v1,0($v1)
    lw	$v1,484($v1)
    bnel	$v1,$s1,.L0da9438c
    ld	$gp,48($sp)
    # Line 605
    # lw $t9, -32736($gp) # &sub_0da90000
    move	$a0,$s2
    addiu	$t9,$t9,20528
    bal __glMgrim_TexParameteri
    move	$a1,$s1
    b	.L0da94388
    ld	$ra,64($sp)
.L0da941f8:
    # Line 532
    sltiu	$at,$s0,10240
    bnez	$at,.L0da943a0
    sltiu	$v1,$s0,10241
    bnez	$v1,.L0da94664
    li	$a3,10241
    bne	$s0,$a3,.L0da94134
    ld	$a5,16($sp)
    # Line 620
    lw	$a5,0($a5)
    sltiu	$a4,$a5,9987
    bnez	$a4,.L0da94908
    move	$v0,$a5
    sltiu	$at,$v0,9988
    beqz	$at,.L0da94a30
    li	$a6,0x8185
    # Line 653
    lbu	$v1,179($s1)
    slti	$v1,$v1,4
    beqz	$v1,.L0da94134
    # Line 658
    lui	$v0,0x1
    li	$v1,1
    # Line 657
    sb	$v1,171($s1)
    # Line 656
    sb	$v1,176($s1)
    # Line 655
    sb	$v1,181($s1)
    # Line 658
    addu	$v0,$s2,$v0
.L0da94254:
    # Line 674
    sb	$zero,192($s1)
    # Line 675
    lw	$a3,-28164($v0)
    # Line 676
    b	.L0da94388
    # Line 675
    sw	$zero,484($a3)
.L0da94264:
    # Line 532
    li	$v0,0x813a
    sltu	$a4,$s0,$v0
    bnez	$a4,.L0da94494
    sltu	$at,$v0,$s0
    beqz	$at,.L0da942dc
    li	$v0,0x813c
    sltu	$v1,$s0,$v0
    bnez	$v1,.L0da947a4
    sltu	$a3,$v0,$s0
    beqz	$a3,.L0da94990
    li	$a4,0x813d
    bne	$s0,$a4,.L0da94134
    ld	$a5,16($sp)
    # Line 792
    lw	$a5,0($a5)
    bltz	$a5,.L0da94d4c
    # Line 793
    nop	# was lw $t9, -27320($gp) # &__glSetError
    lw	$at,140($s1)
    sltu	$at,$at,$a5
    beqzl	$at,.L0da942bc
    # Line 796
    sb	$zero,192($s1)
    # Line 795
    sb	$zero,193($s1)
    # Line 796
    sb	$zero,192($s1)
.L0da942bc:
    # Line 797
    li	$a3,0x91fc
    addu	$a3,$a3,$s2
    lw	$a3,0($a3)
    # Line 798
    ld	$v1,16($sp)
    # Line 797
    sw	$zero,484($a3)
    # Line 798
    lw	$v1,0($v1)
    # Line 799
    b	.L0da94388
    # Line 798
    sw	$v1,140($s1)
.L0da942dc:
    ld	$a5,16($sp)
    # Line 802
    lw	$a5,0($a5)
    mtc1	$a5,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f4,128($s1)
    c.eq.s	$f0,$f4
    nop
    bc1t	.L0da9438c
    ld	$gp,48($sp)
    bltz	$a5,.L0da94ab0
    # Line 803
    move	$a0,$a5
.L0da9430c:
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    c.lt.s	$f1,$f4
    nop
    bc1f	.L0da94360
    # Line 807
    addiu	$a1,$a0,1
    slti	$at,$a0,12
    beqz	$at,.L0da94360
    # Line 806
    sb	$zero,193($s1)
    # Line 807
    sll	$v0,$a1,0x2
    addu	$v0,$v0,$s1
.L0da9433c:
    lw	$a0,20($v0)
    addiu	$v1,$s1,52
    beqz	$a0,.L0da94360
    addiu	$v0,$v0,4
    lw	$a1,28($a0)
    beqz	$a1,.L0da94360
    nop
    bne	$v1,$v0,.L0da9433c
    # Line 809
    sb	$zero,87($a1)
.L0da94360:
    # Line 813
    li	$a4,0x91fc
    addu	$a4,$a4,$s2
    lw	$a4,0($a4)
    # Line 814
    ld	$a3,16($sp)
    # Line 813
    sw	$zero,484($a4)
    # Line 814
    lw	$a3,0($a3)
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,128($s1)
.L0da94388:
    ld	$gp,48($sp)
.L0da9438c:
    # Line 830
    ld	$s0,40($sp)
    ld	$s1,56($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da943a0:
    # Line 532
    li	$at,4100
    bne	$s0,$at,.L0da94138
    # Line 528
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 714
    # lw $t9, -26688($gp) # &__glClampColori
    move	$a0,$s2
    ld	$a2,16($sp)
    jal	__glClampColori
    addiu	$a1,$sp,0
    # Line 715
    lwc1	$f1,_lit_4b7fffff
    lwc1	$f2,0($sp)
    lwc1	$f3,4($sp)
    mul.s	$f2,$f2,$f1
    mul.s	$f3,$f3,$f1
    trunc.w.s	$f2,$f2
    trunc.w.s	$f3,$f3
    lui	$ra,0xff
    mfc1	$a3,$f2
    mfc1	$a2,$f3
    ori	$ra,$ra,0xf000
    sra	$a3,$a3,0xc
    and	$a2,$a2,$ra
    or	$a2,$a2,$a3
    sw	$a2,144($s1)
    # Line 716
    lwc1	$f3,8($sp)
    lwc1	$f0,12($sp)
    mul.s	$f3,$f3,$f1
    mul.s	$f0,$f0,$f1
    trunc.w.s	$f3,$f3
    trunc.w.s	$f0,$f0
    mfc1	$a4,$f3
    mfc1	$a3,$f0
    li	$v1,0x91fc
    sra	$a4,$a4,0xc
    and	$a3,$a3,$ra
    or	$a3,$a3,$a4
    sw	$a3,148($s1)
    addu	$v1,$v1,$s2
    lw	$v1,0($v1)
    lw	$v1,484($v1)
    bne	$v1,$s1,.L0da94388
    ld	$ra,64($sp)
    lw	$at,76($s1)
    lw	$at,20($at)
    bnezl	$at,.L0da9438c
    ld	$gp,48($sp)
    # Line 718
    move	$a4,$zero
    li	$a1,388
    # lw $t9, -30696($gp) # &__glMgrasWrite
    # Line 717
    la	$s0,SYMBOL_LOCATION
    # Line 718
    move	$a0,$s2
    jal	__glMgrasWrite
    lw	$a3,232($s0)
    # Line 720
    move	$a0,$s2
    li	$a4,1
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a3,236($s0)
    lw	$a2,148($s1)
    jal	__glMgrasWrite
    li	$a1,389
    b	.L0da94388
    ld	$ra,64($sp)
.L0da94494:
    # Line 532
    li	$v0,0x8125
    sltu	$v1,$s0,$v0
    bnez	$v1,.L0da94600
    sltu	$a3,$v0,$s0
    beqz	$a3,.L0da94884
    li	$a4,0x8137
    bne	$s0,$a4,.L0da94134
    ld	$s1,56($sp)
    ld	$v0,16($sp)
    # Line 609
    lw	$v0,0($v0)
    li	$at,10496
    beq	$v0,$at,.L0da94388
    li	$v1,10497
    beq	$v0,$v1,.L0da94388
    li	$a3,0x812d
    beql	$v0,$a3,.L0da9438c
    ld	$gp,48($sp)
    b	.L0da94138
    # Line 528
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da944e0:
    ld	$v0,16($sp)
    # Line 534
    lw	$v0,0($v0)
    li	$a4,10497
    beq	$v0,$a4,.L0da94948
    li	$a3,0x812d
    li	$v1,10496
    beq	$v0,$v1,.L0da949d8
    li	$at,1
    bne	$v0,$a3,.L0da94138
    # Line 528
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 548
    sb	$zero,175($s1)
    li	$at,1
    # Line 547
    lw	$a4,104($s1)
    # Line 546
    sb	$at,172($s1)
    # Line 549
    li	$at,-16385
    # Line 547
    ori	$a4,$a4,0x800
    # Line 549
    and	$a4,$a4,$at
    sw	$a4,104($s1)
.L0da94528:
    # Line 553
    li	$v1,0x91fc
    addu	$v1,$v1,$s2
    lw	$v1,0($v1)
    lw	$v1,484($v1)
    bnel	$v1,$s1,.L0da9438c
    ld	$gp,48($sp)
    # Line 555
    # lw $t9, -32736($gp) # &sub_0da90000
    move	$a0,$s2
    addiu	$t9,$t9,20528
    bal __glMgrim_TexParameteri
    move	$a1,$s1
    b	.L0da94388
    ld	$ra,64($sp)
.L0da9455c:
    # Line 523
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,48($sp)
    ld	$ra,64($sp)
    ld	$s0,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da94580:
    # Line 532
    li	$at,10243
    bne	$s0,$at,.L0da94134
    ld	$v0,16($sp)
    # Line 559
    lw	$v0,0($v0)
    li	$v1,10497
    beq	$v0,$v1,.L0da94b1c
    li	$v1,10496
    beq	$v0,$v1,.L0da94bbc
    li	$a3,0x812d
    bne	$v0,$a3,.L0da94138
    # Line 528
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 573
    sb	$zero,175($s1)
    li	$at,1
    # Line 572
    lw	$a4,104($s1)
    # Line 571
    sb	$at,173($s1)
    # Line 574
    li	$at,-16385
    # Line 572
    ori	$a4,$a4,0x1000
    # Line 574
    and	$a4,$a4,$at
    sw	$a4,104($s1)
.L0da945cc:
    # Line 578
    li	$v1,0x91fc
    addu	$v1,$v1,$s2
    lw	$v1,0($v1)
    lw	$v1,484($v1)
    bnel	$v1,$s1,.L0da9438c
    ld	$gp,48($sp)
    # Line 580
    # lw $t9, -32736($gp) # &sub_0da90000
    move	$a0,$s2
    addiu	$t9,$t9,20528
    bal __glMgrim_TexParameteri
    move	$a1,$s1
    b	.L0da94388
    ld	$ra,64($sp)
.L0da94600:
    # Line 532
    li	$at,0x8124
    bne	$s0,$at,.L0da94134
    ld	$a5,16($sp)
    # Line 726
    lw	$a5,0($a5)
    sltiu	$v1,$a5,2
    beqz	$v1,.L0da94b94
    # Line 730
    li	$at,0x91fc
    sb	$a5,188($s1)
    addu	$at,$at,$s2
    lw	$at,0($at)
    lw	$at,484($at)
    bnel	$at,$s1,.L0da9438c
    ld	$gp,48($sp)
    lbu	$v1,187($s1)
    beqz	$v1,.L0da94388
    # Line 732
    nop	# was lw $t9, -30740($gp) # &mgrTM_tram_select
    move	$a0,$s2
    jal	mgrTM_tram_select
    move	$a1,$s1
    # Line 733
    # lw $t9, -30728($gp) # &mgrTM_SendTexmode1
    move	$a0,$s2
    jal	mgrTM_SendTexmode1
    move	$a1,$s1
    b	.L0da94388
    ld	$ra,64($sp)
.L0da94664:
    # Line 679
    li	$a6,0x8146
    ld	$a5,16($sp)
    lw	$a5,0($a5)
    sltu	$a3,$a5,$a6
    bnez	$a3,.L0da94840
    move	$v0,$a5
    sltu	$at,$a6,$v0
    beqz	$at,.L0da94ab8
    li	$a6,0x8185
    sltu	$v1,$v0,$a6
    bnez	$v1,.L0da948e0
    sltu	$a3,$a6,$v0
    beqz	$a3,.L0da948ec
    li	$a4,0x8186
    bne	$v0,$a4,.L0da94138
    # Line 528
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da948f0
    # Line 698
    sw	$a5,124($s1)
.L0da946ac:
    # Line 532
    li	$at,0x809a
    bne	$s0,$at,.L0da94134
    ld	$v1,16($sp)
    # Line 750
    lw	$v1,0($v1)
    mtc1	$v1,$f4
    nop
    cvt.s.w	$f4,$f4
    mtc1	$zero,$f0
    c.lt.s	$f0,$f4
    nop
    bc1t	.L0da94cdc
    # Line 756
    ld	$a4,16($sp)
    # Line 755
    swc1	$f4,116($s1)
    # Line 756
    lw	$a4,0($a4)
    mtc1	$a4,$f0
    nop
    cvt.d.w	$f0,$f0
    ldc1	$f1,_lit8_bfe0000000000000
    add.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    mfc1	$v0,$f0
    li	$a3,-2
    beq	$v0,$a3,.L0da94b10
    li	$at,-1
    beql	$v0,$at,.L0da94b14
    # Line 759
    li	$v0,4
    # Line 756
    beqz	$v0,.L0da94b10
    li	$v1,-3
    beq	$v0,$v1,.L0da94d04
    li	$a3,-4
    beq	$v0,$a3,.L0da94d1c
    li	$a4,-5
    beq	$v0,$a4,.L0da94d10
    # Line 763
    move	$v0,$zero
    sb	$zero,191($s1)
.L0da94738:
    # Line 764
    li	$at,0x91fc
    addu	$at,$at,$s2
    lw	$at,0($at)
    lw	$at,484($at)
    bnel	$at,$s1,.L0da9438c
    ld	$gp,48($sp)
    lbu	$v1,190($s1)
    li	$a3,1
    bnel	$v1,$a3,.L0da9438c
    ld	$gp,48($sp)
    # Line 767
    li	$a4,1
    li	$a1,385
    move	$a0,$s2
    # lw $t9, -30696($gp) # &__glMgrasWrite
    la	$a3,SYMBOL_LOCATION
    # Line 766
    lw	$a2,96($s1)
    lui	$a5,0x7
    nor	$a5,$a5,$zero
    and	$a2,$a2,$a5
    andi	$a5,$v0,0x7
    sll	$a5,$a5,0x10
    or	$a2,$a2,$a5
    sw	$a2,96($s1)
    # Line 767
    jal	__glMgrasWrite
    lw	$a3,220($a3)
    b	.L0da94388
    ld	$ra,64($sp)
.L0da947a4:
    # Line 532
    li	$at,0x813b
    bne	$s0,$at,.L0da94134
    ld	$v1,16($sp)
    # Line 818
    lw	$v1,0($v1)
    mtc1	$v1,$f5
    nop
    cvt.s.w	$f5,$f5
    lwc1	$f4,132($s1)
    c.eq.s	$f4,$f5
    nop
    bc1t	.L0da94388
    lwc1	$f0,_lit_447a0000
    c.eq.s	$f4,$f0
    nop
    bc1fl	.L0da94804
    # Line 820
    c.lt.s	$f4,$f5
    lwc1	$f4,_lit_bf800000
    ld	$a3,16($sp)
    swc1	$f4,132($s1)
    lw	$a3,0($a3)
    mtc1	$a3,$f5
    nop
    cvt.s.w	$f5,$f5
    c.lt.s	$f4,$f5
.L0da94804:
    nop
    bc1f	.L0da94818
    # Line 823
    li	$at,0x91fc
    # Line 822
    sb	$zero,193($s1)
    # Line 823
    li	$at,0x91fc
.L0da94818:
    addu	$at,$at,$s2
    lw	$at,0($at)
    # Line 824
    ld	$a4,16($sp)
    # Line 823
    sw	$zero,484($at)
    # Line 824
    lw	$a4,0($a4)
    mtc1	$a4,$f0
    nop
    cvt.s.w	$f0,$f0
    b	.L0da94388
    swc1	$f0,132($s1)
.L0da94840:
    # Line 679
    li	$a0,0x8097
    sltu	$v1,$v0,$a0
    bnez	$v1,.L0da94960
    sltu	$a3,$a0,$v0
    bnez	$a3,.L0da94aa0
    li	$v1,0x8099
    # Line 690
    lbu	$a4,179($s1)
.L0da9485c:
    andi	$a4,$a4,0x1e
    li	$at,2
    bne	$a4,$at,.L0da94134
    li	$v1,1
    # Line 694
    lui	$v0,0x1
    addu	$v0,$s2,$v0
    # Line 693
    sb	$v1,190($s1)
    # Line 692
    sb	$v1,177($s1)
    # Line 694
    b	.L0da948fc
    ld	$s1,56($sp)
.L0da94884:
    ld	$a5,16($sp)
    # Line 738
    lw	$a5,0($a5)
    sltiu	$a3,$a5,4
    beqz	$a3,.L0da94bf4
    # Line 742
    li	$at,0x91fc
    sb	$a5,189($s1)
    addu	$at,$at,$s2
    lw	$at,0($at)
    lw	$at,484($at)
    bnel	$at,$s1,.L0da9438c
    ld	$gp,48($sp)
    lbu	$v1,187($s1)
    beqz	$v1,.L0da94388
    # Line 744
    nop	# was lw $t9, -30740($gp) # &mgrTM_tram_select
    move	$a0,$s2
    jal	mgrTM_tram_select
    move	$a1,$s1
    # Line 745
    # lw $t9, -30728($gp) # &mgrTM_SendTexmode1
    move	$a0,$s2
    jal	mgrTM_SendTexmode1
    move	$a1,$s1
    b	.L0da94388
    ld	$ra,64($sp)
.L0da948e0:
    # Line 679
    li	$a3,0x8184
    bne	$v0,$a3,.L0da94138
    # Line 528
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da948ec:
    # Line 698
    sw	$a5,124($s1)
.L0da948f0:
    ld	$s1,56($sp)
    # Line 699
    lui	$v0,0x1
    addu	$v0,$s2,$v0
.L0da948fc:
    # Line 710
    lw	$v1,-28164($v0)
    # Line 711
    b	.L0da94388
    # Line 710
    sw	$zero,484($v1)
.L0da94908:
    # Line 620
    sltiu	$a3,$v0,9984
    bnez	$a3,.L0da949f4
    sltiu	$a4,$v0,9985
    beqz	$a4,.L0da94b58
    sltiu	$v1,$v0,9986
    # Line 632
    lbu	$at,179($s1)
    slti	$at,$at,4
    beqz	$at,.L0da94138
    # Line 528
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 636
    sb	$zero,171($s1)
    # Line 635
    sb	$zero,176($s1)
    # Line 637
    lui	$v0,0x1
    li	$v1,1
    # Line 634
    sb	$v1,181($s1)
    # Line 637
    b	.L0da94254
    addu	$v0,$s2,$v0
.L0da94948:
    # Line 537
    lw	$a3,104($s1)
    # Line 536
    sb	$zero,172($s1)
    # Line 537
    li	$a4,-2049
    and	$a3,$a3,$a4
    # Line 538
    b	.L0da94528
    # Line 537
    sw	$a3,104($s1)
.L0da94960:
    # Line 679
    sltiu	$at,$v0,9729
    bnez	$at,.L0da94a7c
    sltiu	$v1,$v0,9730
    beqz	$v1,.L0da94138
    # Line 528
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 686
    sb	$zero,190($s1)
    li	$v1,1
    # Line 687
    lui	$v0,0x1
    addu	$v0,$s2,$v0
    # Line 685
    sb	$v1,177($s1)
    # Line 687
    b	.L0da948fc
    ld	$s1,56($sp)
.L0da94990:
    ld	$a5,16($sp)
    # Line 782
    lw	$a5,0($a5)
    bltz	$a5,.L0da94d28
    # Line 783
    nop	# was lw $t9, -27320($gp) # &__glSetError
    lw	$at,136($s1)
    sltu	$at,$a5,$at
    beqzl	$at,.L0da949b8
    # Line 786
    sb	$zero,192($s1)
    # Line 785
    sb	$zero,193($s1)
    # Line 786
    sb	$zero,192($s1)
.L0da949b8:
    # Line 787
    li	$a3,0x91fc
    addu	$a3,$a3,$s2
    lw	$a3,0($a3)
    # Line 788
    ld	$v1,16($sp)
    # Line 787
    sw	$zero,484($a3)
    # Line 788
    lw	$v1,0($v1)
    # Line 789
    b	.L0da94388
    # Line 788
    sw	$v1,136($s1)
.L0da949d8:
    # Line 541
    lw	$a4,104($s1)
    # Line 542
    sb	$at,175($s1)
    # Line 540
    sb	$at,172($s1)
    # Line 541
    ori	$a4,$a4,0x800
    # Line 543
    ori	$a4,$a4,0x4000
    # Line 544
    b	.L0da94528
    # Line 543
    sw	$a4,104($s1)
.L0da949f4:
    # Line 620
    sltiu	$v1,$v0,9729
    bnez	$v1,.L0da94b34
    sltiu	$a3,$v0,9730
    beqz	$a3,.L0da94138
    # Line 528
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 627
    sb	$zero,181($s1)
    # Line 630
    lui	$v0,0x1
    li	$v1,1
    # Line 628
    sb	$v1,176($s1)
    # Line 629
    lbu	$at,179($s1)
    # Line 630
    addu	$v0,$s2,$v0
    # Line 629
    li	$a4,3
    slt	$a4,$a4,$at
    # Line 630
    b	.L0da94254
    # Line 629
    sb	$a4,171($s1)
.L0da94a30:
    # Line 620
    sltu	$a3,$v0,$a6
    bnez	$a3,.L0da94a54
    sltu	$a4,$a6,$v0
    beqz	$a4,.L0da94a6c
    li	$at,0x8186
    bne	$v0,$at,.L0da94138
    # Line 528
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da94a70
    # Line 662
    sw	$a5,124($s1)
.L0da94a54:
    # Line 620
    li	$a6,0x8184
    sltu	$v1,$v0,$a6
    bnez	$v1,.L0da94c74
    sltu	$a3,$a6,$v0
    bnez	$a3,.L0da94138
    # Line 528
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da94a6c:
    # Line 662
    sw	$a5,124($s1)
.L0da94a70:
    # Line 663
    lui	$v0,0x1
    b	.L0da94254
    addu	$v0,$s2,$v0
.L0da94a7c:
    # Line 679
    li	$v1,9728
    bne	$v0,$v1,.L0da94138
    # Line 528
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 682
    sb	$zero,190($s1)
    # Line 681
    sb	$zero,177($s1)
    ld	$s1,56($sp)
    # Line 683
    lui	$v0,0x1
    b	.L0da948fc
    addu	$v0,$s2,$v0
.L0da94aa0:
    # Line 679
    bne	$v0,$v1,.L0da94138
    # Line 528
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9485c
    # Line 690
    lbu	$a4,179($s1)
.L0da94ab0:
    # Line 803
    b	.L0da9430c
    move	$a0,$zero
.L0da94ab8:
    # Line 701
    # lw $t9, -16560($gp) # &glIsEnabled
    jal	glIsEnabled
    ld	$a0,24($sp)
    lui	$s1,0x1
    beqz	$v0,.L0da94ae8
    addu	$s1,$s2,$s1
    # Line 702
    # lw $t9, -29672($gp) # &__glMgrEnterSoftPath
    jal	__glMgrEnterSoftPath
    move	$a0,$s2
    # Line 703
    lw	$at,-28068($s1)
    ori	$at,$at,0x40
    sw	$at,-28068($s1)
.L0da94ae8:
    sd	$s1,72($sp)
    # Line 705
    # lw $t9, -25208($gp) # &__glim_TexParameteriv
    ld	$a0,24($sp)
    move	$a1,$s0
    jal	__glim_TexParameteriv
    ld	$a2,16($sp)
    ld	$ra,64($sp)
    ld	$s1,56($sp)
    b	.L0da948fc
    ld	$v0,72($sp)
.L0da94b10:
    # Line 759
    li	$v0,4
.L0da94b14:
    b	.L0da94738
    sb	$v0,191($s1)
.L0da94b1c:
    # Line 562
    lw	$v1,104($s1)
    # Line 561
    sb	$zero,173($s1)
    # Line 562
    li	$a3,-4097
    and	$v1,$v1,$a3
    # Line 563
    b	.L0da945cc
    # Line 562
    sw	$v1,104($s1)
.L0da94b34:
    # Line 620
    li	$a4,9728
    bne	$v0,$a4,.L0da94138
    # Line 528
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 624
    sb	$zero,171($s1)
    # Line 623
    sb	$zero,176($s1)
    # Line 622
    sb	$zero,181($s1)
    # Line 625
    lui	$v0,0x1
    b	.L0da94254
    addu	$v0,$s2,$v0
.L0da94b58:
    # Line 620
    bnez	$v1,.L0da94c3c
    sltiu	$a3,$v0,9987
    beqz	$a3,.L0da94138
    # Line 528
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 646
    lbu	$a4,179($s1)
    slti	$a4,$a4,4
    beqz	$a4,.L0da94138
    # Line 528
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 649
    sb	$zero,176($s1)
    # Line 651
    lui	$v0,0x1
    li	$v1,1
    # Line 650
    sb	$v1,171($s1)
    # Line 648
    sb	$v1,181($s1)
    # Line 651
    b	.L0da94254
    addu	$v0,$s2,$v0
.L0da94b94:
    # Line 727
    # lw $t9, -27320($gp) # &__glSetError
    li	$a0,1281
    jal	__glSetError
    ld	$s1,56($sp)
    ld	$gp,48($sp)
    # Line 728
    ld	$ra,64($sp)
    ld	$s0,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da94bbc:
    li	$a4,1
    # Line 566
    lw	$a3,104($s1)
    # Line 567
    sb	$a4,175($s1)
    # Line 565
    sb	$a4,173($s1)
    # Line 566
    ori	$a3,$a3,0x1000
    # Line 568
    ori	$a3,$a3,0x4000
    # Line 569
    b	.L0da945cc
    # Line 568
    sw	$a3,104($s1)
.L0da94bdc:
    # Line 587
    lw	$at,104($s1)
    # Line 586
    sb	$zero,174($s1)
    # Line 587
    li	$v1,-8193
    and	$at,$at,$v1
    # Line 588
    b	.L0da941c4
    # Line 587
    sw	$at,104($s1)
.L0da94bf4:
    # Line 739
    # lw $t9, -27320($gp) # &__glSetError
    li	$a0,1281
    jal	__glSetError
    ld	$s1,56($sp)
    ld	$gp,48($sp)
    # Line 740
    ld	$ra,64($sp)
    ld	$s0,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da94c1c:
    li	$a4,1
    # Line 591
    lw	$a3,104($s1)
    # Line 592
    sb	$a4,175($s1)
    # Line 590
    sb	$a4,174($s1)
    # Line 591
    ori	$a3,$a3,0x2000
    # Line 593
    ori	$a3,$a3,0x4000
    # Line 594
    b	.L0da941c4
    # Line 593
    sw	$a3,104($s1)
.L0da94c3c:
    # Line 620
    li	$at,9985
    bne	$v0,$at,.L0da94138
    # Line 528
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 639
    lbu	$v1,179($s1)
    slti	$v1,$v1,4
    beqz	$v1,.L0da94138
    # Line 528
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 643
    sb	$zero,171($s1)
    # Line 644
    lui	$v0,0x1
    li	$v1,1
    # Line 642
    sb	$v1,176($s1)
    # Line 641
    sb	$v1,181($s1)
    # Line 644
    b	.L0da94254
    addu	$v0,$s2,$v0
.L0da94c74:
    # Line 620
    li	$a3,0x8146
    bne	$v0,$a3,.L0da94138
    # Line 528
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 665
    # lw $t9, -16560($gp) # &glIsEnabled
    jal	glIsEnabled
    ld	$a0,24($sp)
    lui	$a5,0x1
    beqz	$v0,.L0da94cb8
    addu	$a5,$s2,$a5
    # Line 666
    # lw $t9, -29672($gp) # &__glMgrEnterSoftPath
    sd	$a5,72($sp)
    jal	__glMgrEnterSoftPath
    move	$a0,$s2
    ld	$a5,72($sp)
    # Line 667
    lw	$at,-28068($a5)
    ori	$at,$at,0x40
    sw	$at,-28068($a5)
.L0da94cb8:
    sd	$a5,72($sp)
    # Line 669
    # lw $t9, -25208($gp) # &__glim_TexParameteriv
    ld	$a0,24($sp)
    move	$a1,$s0
    jal	__glim_TexParameteriv
    ld	$a2,16($sp)
    ld	$ra,64($sp)
    b	.L0da94254
    ld	$v0,72($sp)
.L0da94cdc:
    # Line 752
    # lw $t9, -27320($gp) # &__glSetError
    li	$a0,1281
    jal	__glSetError
    ld	$s1,56($sp)
    ld	$gp,48($sp)
    # Line 753
    ld	$ra,64($sp)
    ld	$s0,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da94d04:
    # Line 760
    li	$v0,3
    b	.L0da94738
    sb	$v0,191($s1)
.L0da94d10:
    # Line 762
    li	$v0,1
    b	.L0da94738
    sb	$v0,191($s1)
.L0da94d1c:
    # Line 761
    li	$v0,2
    b	.L0da94738
    sb	$v0,191($s1)
.L0da94d28:
    # Line 783
    li	$a0,1281
    jalr	$t9
    ld	$s1,56($sp)
    ld	$gp,48($sp)
    ld	$ra,64($sp)
    ld	$s0,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da94d4c:
    # Line 793
    li	$a0,1281
    jalr	$t9
    ld	$s1,56($sp)
    ld	$gp,48($sp)
    ld	$ra,64($sp)
    ld	$s0,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glMgrim_TexParameteriv

# Function: __glMgrim_SoftTexParameteri
# Declared: Line 833 (Source lines: 833-851)
# Address: 0x0da94d70 - 0x0da94e7c (Size: 268 bytes, Frame: 48)
.globl __glMgrim_SoftTexParameteri
.ent __glMgrim_SoftTexParameteri
__glMgrim_SoftTexParameteri:
    # Line 833
    addiu	$sp,$sp,-48
    sw	$a2,36($sp)
    sd	$gp,0($sp)
    li	$a4,0x8066
    lui	$v0,0x17
    addiu	$v0,$v0,-26328
    sltu	$at,$a1,$a4
    bnez	$at,.L0da94ddc
    addu	$gp,$t9,$v0
    # Line 835
    sltu	$v1,$a4,$a1
    beqz	$v1,.L0da94e14
    li	$a3,0x819a
    sltu	$a2,$a1,$a3
    bnez	$a2,.L0da94e48
    sltu	$at,$a3,$a1
    beqz	$at,.L0da94e14
    li	$v0,0x819b
    beq	$a1,$v0,.L0da94e14
    sd	$ra,8($sp)
.L0da94dbc:
    # Line 848
    # lw $t9, -27320($gp) # &__glSetError
.L0da94dc0:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 849
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da94ddc:
    # Line 835
    sltiu	$v1,$a1,10242
    bnez	$v1,.L0da94e00
    sltiu	$a2,$a1,10243
    bnez	$a2,.L0da94e14
    li	$at,10243
    bne	$a1,$at,.L0da94dc0
    # Line 848
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da94e14
    sd	$ra,8($sp)
.L0da94e00:
    # Line 835
    sltiu	$v0,$a1,10241
    bnez	$v0,.L0da94e34
    sltiu	$v1,$a1,10242
    beqz	$v1,.L0da94dbc
    sd	$ra,8($sp)
.L0da94e14:
    # Line 845
    # lw $t9, -31416($gp) # &__glMgrim_SoftTexParameteriv
    sd	$ra,8($sp)
    bal __glMgrim_SoftTexParameteriv
    addiu	$a2,$sp,36
    # Line 851
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da94e34:
    # Line 835
    li	$a2,10240
    bne	$a1,$a2,.L0da94dc0
    # Line 848
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da94e14
    sd	$ra,8($sp)
.L0da94e48:
    # Line 835
    li	$a3,0x80bf
    sltu	$at,$a1,$a3
    bnez	$at,.L0da94e68
    sltu	$v0,$a3,$a1
    bnez	$v0,.L0da94dc0
    # Line 848
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da94e14
    sd	$ra,8($sp)
.L0da94e68:
    # Line 835
    li	$v1,0x8072
    bne	$a1,$v1,.L0da94dc0
    # Line 848
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da94e14
    sd	$ra,8($sp)
.end __glMgrim_SoftTexParameteri

# Function: __glMgrim_TexParameteri
# Declared: Line 854 (Source lines: 854-881)
# Address: 0x0da94e7c - 0x0da95030 (Size: 436 bytes, Frame: 48)
.globl __glMgrim_TexParameteri
.ent __glMgrim_TexParameteri
__glMgrim_TexParameteri:
    # Line 854
    addiu	$sp,$sp,-48
    sw	$a2,36($sp)
    sd	$gp,0($sp)
    li	$a4,0x8125
    lui	$v0,0x17
    addiu	$v0,$v0,-26596
    sltu	$at,$a1,$a4
    bnez	$at,.L0da94ee4
    addu	$gp,$t9,$v0
    # Line 856
    sltu	$v1,$a4,$a1
    beqz	$v1,.L0da94ef8
    li	$a3,0x813d
    sltu	$a2,$a1,$a3
    bnez	$a2,.L0da94f98
    sltu	$at,$a3,$a1
    beqz	$at,.L0da94ef8
    li	$a3,0x8185
    sltu	$v0,$a1,$a3
    bnez	$v0,.L0da9501c
    sltu	$v1,$a3,$a1
    beqz	$v1,.L0da94ef8
    li	$a2,0x8186
    bne	$a1,$a2,.L0da94f38
    # Line 878
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da94ef8
    sd	$ra,8($sp)
.L0da94ee4:
    # Line 856
    li	$a3,0x8072
    sltu	$at,$a1,$a3
    bnez	$at,.L0da94f18
    sltu	$v0,$a3,$a1
    bnez	$v0,.L0da94f70
.L0da94ef8:
    # Line 874
    nop	# was lw $t9, -31412($gp) # &__glMgrim_TexParameteriv
    sd	$ra,8($sp)
    bal __glMgrim_TexParameteriv
    addiu	$a2,$sp,36
    # Line 881
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da94f18:
    # Line 856
    sltiu	$v1,$a1,10242
    bnez	$v1,.L0da94f54
    sltiu	$a2,$a1,10243
    bnez	$a2,.L0da94ef8
    li	$at,10243
    beq	$a1,$at,.L0da94ef8
    sd	$ra,8($sp)
    # Line 878
    # lw $t9, -27320($gp) # &__glSetError
.L0da94f38:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 879
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da94f54:
    # Line 856
    sltiu	$v0,$a1,10241
    bnez	$v0,.L0da94fc0
    sltiu	$v1,$a1,10242
    beqz	$v1,.L0da94f38
    # Line 878
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da94ef8
    sd	$ra,8($sp)
.L0da94f70:
    # Line 856
    li	$a3,0x809b
    sltu	$a2,$a1,$a3
    bnez	$a2,.L0da94fd4
    sltu	$at,$a3,$a1
    beqz	$at,.L0da94ef8
    li	$v0,0x8124
    bne	$a1,$v0,.L0da94f38
    # Line 878
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da94ef8
    sd	$ra,8($sp)
.L0da94f98:
    # Line 856
    li	$a3,0x813b
    sltu	$v1,$a1,$a3
    bnez	$v1,.L0da94fe8
    sltu	$a2,$a3,$a1
    beqz	$a2,.L0da94ef8
    li	$at,0x813c
    bne	$a1,$at,.L0da94f38
    # Line 878
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da94ef8
    sd	$ra,8($sp)
.L0da94fc0:
    # Line 856
    li	$v0,10240
    bne	$a1,$v0,.L0da94f38
    # Line 878
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da94ef8
    sd	$ra,8($sp)
.L0da94fd4:
    # Line 856
    li	$v1,0x809a
    bne	$a1,$v1,.L0da94f38
    # Line 878
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da94ef8
    sd	$ra,8($sp)
.L0da94fe8:
    # Line 856
    li	$a3,0x813a
    sltu	$a2,$a1,$a3
    bnez	$a2,.L0da95008
    sltu	$at,$a3,$a1
    bnez	$at,.L0da94f38
    # Line 878
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da94ef8
    sd	$ra,8($sp)
.L0da95008:
    # Line 856
    li	$v0,0x8137
    bne	$a1,$v0,.L0da94f38
    # Line 878
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da94ef8
    sd	$ra,8($sp)
.L0da9501c:
    # Line 856
    li	$v1,0x8184
    bne	$a1,$v1,.L0da94f38
    # Line 878
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da94ef8
    sd	$ra,8($sp)
.end __glMgrim_TexParameteri

# Function: send_only_texmode2
# Declared: Line 884 (Source lines: 887-903)
# Address: 0x0da95030 - 0x0da950dc (Size: 172 bytes, Frame: 32)
.ent send_only_texmode2
send_only_texmode2:
    # Line 890
    li	$a4,1
    lw	$a2,104($a1)
    # Line 887
    addiu	$sp,$sp,-32
    sd	$s7,8($sp)
    move	$s7,$a1
    # Line 890
    li	$a1,384
    # lw $t9, -30696($gp) # &__glMgrasWrite
    la	$a3,SYMBOL_LOCATION
    sd	$ra,0($sp)
    jal	__glMgrasWrite
    lw	$a3,216($a3)
    # Line 893
    mtc1	$zero,$f1
    # Line 890
    lbu	$at,194($s7)
    # Line 893
    lui	$a0,0x7
    # Line 890
    beqz	$at,.L0da950b0
    ld	$ra,0($sp)
    # Line 893
    li	$v0,1
    lh	$a1,162($s7)
    # Line 899
    lui	$at,0x7
    # Line 893
    beq	$a1,$v0,.L0da950c4
    # Line 901
    lui	$v1,0x7
    # Line 899
    beqz	$a1,.L0da95098
    # Line 901
    ori	$v1,$v1,0x4080
.L0da9508c:
    # Line 903
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da95098:
    # Line 901
    lwc1	$f0,120($s7)
    li	$a0,24324
    sw	$a0,0($v1)
    neg.s	$f0,$f0
    b	.L0da9508c
    swc1	$f0,0($v1)
.L0da950b0:
    # Line 893
    ori	$a0,$a0,0x4080
    li	$at,24324
    sw	$at,0($a0)
    b	.L0da9508c
    swc1	$f1,0($a0)
.L0da950c4:
    # Line 899
    ori	$at,$at,0x4080
    li	$v0,24324
    lwc1	$f2,120($s7)
    sw	$v0,0($at)
    b	.L0da9508c
    swc1	$f2,0($at)
.end send_only_texmode2

# Function: __glMgrim_TexEnvfv
# Declared: Line 906 (Source lines: 907-955)
# Address: 0x0da950dc - 0x0da952c4 (Size: 488 bytes, Frame: 208)
.globl __glMgrim_TexEnvfv
.ent __glMgrim_TexEnvfv
__glMgrim_TexEnvfv:
    # Line 912
    lw	$a4,__glCurrentContext
    li	$v0,1
    # Line 907
    addiu	$sp,$sp,-80
    sd	$gp,32($sp)
    # Line 912
    lw	$at,__glBeginMode
    # Line 907
    lui	$v1,0x17
    addiu	$v1,$v1,-27204
    # Line 912
    beq	$at,$v0,.L0da951cc
    # Line 907
    addu	$gp,$t9,$v1
    # Line 914
    li	$a3,8960
    bne	$a0,$a3,.L0da95128
    # Line 923
    li	$a3,8448
    # Line 921
    li	$at,8704
    beq	$a1,$at,.L0da95148
    # Line 923
    li	$v1,3042
    # Line 921
    li	$v0,8705
    sd	$ra,40($sp)
    beq	$a1,$v0,.L0da9520c
    sd	$a4,16($sp)
.L0da95128:
    # Line 916
    # lw $t9, -27320($gp) # &__glSetError
.L0da9512c:
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 917
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da95148:
    # Line 923
    lwc1	$f0,0($a2)
    trunc.l.s	$f0,$f0
    li	$a5,7681
    li	$at,8449
    dmfc1	$a0,$f0
    # Line 930
    lui	$a2,0x1
    addu	$a2,$a4,$a2
    # Line 923
    sll	$a0,$a0,0x0
    beq	$a0,$v1,.L0da95188
    move	$a1,$a0
    beql	$a5,$a0,.L0da95194
    # Line 929
    li	$a1,8448
    # Line 923
    beq	$a0,$a3,.L0da95188
    nop
    bne	$a0,$at,.L0da9512c
    # Line 916
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da95188:
    # Line 928
    bnel	$a5,$a0,.L0da95198
    # Line 930
    lw	$a0,-30164($a2)
    # Line 929
    li	$a1,8448
.L0da95194:
    # Line 930
    lw	$a0,-30164($a2)
.L0da95198:
    beqz	$a0,.L0da951c0
    sw	$a1,-28324($a2)
    lw	$a1,196($a0)
    sd	$ra,40($sp)
    beqz	$a1,.L0da951ec
    sd	$a2,24($sp)
.L0da951b0:
    # Line 935
    # lw $t9, -30728($gp) # &mgrTM_SendTexmode1
    jal	mgrTM_SendTexmode1
    move	$a0,$a4
    ld	$ra,40($sp)
.L0da951c0:
    ld	$gp,32($sp)
    # Line 955
    jr	$ra
    addiu	$sp,$sp,80
.L0da951cc:
    # Line 912
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da951ec:
    # Line 933
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    jal	mgrTM_RefreshDim
    sd	$a4,16($sp)
    ld	$a1,24($sp)
    lw	$a1,-30164($a1)
    ld	$a4,16($sp)
    b	.L0da951b0
    lw	$a1,196($a1)
.L0da9520c:
    # Line 945
    # lw $t9, -26700($gp) # &__glClampColorf
    ld	$a0,16($sp)
    jal	__glClampColorf
    addiu	$a1,$sp,0
    # Line 946
    lwc1	$f2,_lit_4b7fffff
    lwc1	$f3,0($sp)
    lwc1	$f4,4($sp)
    mul.s	$f3,$f3,$f2
    mul.s	$f4,$f4,$f2
    trunc.w.s	$f3,$f3
    lui	$a6,0x1
    ld	$a0,16($sp)
    trunc.w.s	$f4,$f4
    lui	$a4,0xff
    ori	$a4,$a4,0xf000
    mfc1	$a3,$f3
    mfc1	$a2,$f4
    addu	$a6,$a0,$a6
    sra	$a3,$a3,0xc
    and	$a2,$a2,$a4
    or	$a2,$a2,$a3
    sw	$a2,-28320($a6)
    # Line 947
    lwc1	$f1,8($sp)
    mul.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    # Line 948
    li	$a1,322
    # lw $t9, -30696($gp) # &__glMgrasWrite
    sd	$a6,24($sp)
    # Line 947
    mfc1	$a5,$f1
    # Line 948
    move	$a4,$zero
    # Line 946
    la	$a3,SYMBOL_LOCATION
    # Line 947
    sra	$a5,$a5,0xc
    sw	$a5,-28316($a6)
    # Line 948
    jal	__glMgrasWrite
    lw	$a3,28($a3)
    # Line 949
    ld	$a0,16($sp)
    li	$a4,1
    li	$a1,323
    la	$a3,SYMBOL_LOCATION
    # lw $t9, -30696($gp) # &__glMgrasWrite
    ld	$a2,24($sp)
    lw	$a3,32($a3)
    jal	__glMgrasWrite
    lw	$a2,-28316($a2)
    b	.L0da951c0
    ld	$ra,40($sp)
.end __glMgrim_TexEnvfv

# Function: __glMgrim_TexEnvf
# Declared: Line 958 (Source lines: 959-970)
# Address: 0x0da952c4 - 0x0da95320 (Size: 92 bytes, Frame: 48)
.globl __glMgrim_TexEnvf
.ent __glMgrim_TexEnvf
__glMgrim_TexEnvf:
    # Line 959
    li	$at,8704
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    swc1	$f14,32($sp)
    sd	$gp,0($sp)
    lui	$v0,0x17
    addiu	$v0,$v0,-27692
    beq	$a1,$at,.L0da95304
    addu	$gp,$t9,$v0
    # Line 967
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 968
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da95304:
    # Line 963
    # lw $t9, -31400($gp) # &__glMgrim_TexEnvfv
    bal __glMgrim_TexEnvfv
    addiu	$a2,$sp,32
    # Line 970
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_TexEnvf

# Function: __glMgrim_TexEnviv
# Declared: Line 973 (Source lines: 974-1023)
# Address: 0x0da95320 - 0x0da95508 (Size: 488 bytes, Frame: 208)
.globl __glMgrim_TexEnviv
.ent __glMgrim_TexEnviv
__glMgrim_TexEnviv:
    # Line 979
    li	$v0,1
    # Line 974
    addiu	$sp,$sp,-80
    sd	$s0,32($sp)
    # Line 979
    lw	$s0,__glCurrentContext
    sd	$gp,24($sp)
    lw	$at,__glBeginMode
    # Line 974
    lui	$v1,0x17
    addiu	$v1,$v1,-27784
    # Line 979
    beq	$at,$v0,.L0da95410
    # Line 974
    addu	$gp,$t9,$v1
    # Line 983
    lw	$at,3340($s0)
    # Line 989
    li	$v1,8705
    # Line 983
    addiu	$a3,$a0,-8960
    sltu	$a3,$a3,$at
    beqz	$a3,.L0da95374
    # Line 989
    li	$v0,8704
    # Line 991
    li	$a3,8448
    # Line 989
    beq	$a1,$v0,.L0da95398
    # Line 991
    li	$a4,7681
    # Line 989
    beq	$a1,$v1,.L0da95450
    sd	$ra,40($sp)
.L0da95374:
    # Line 985
    # lw $t9, -27320($gp) # &__glSetError
.L0da95378:
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 986
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da95398:
    # Line 991
    lw	$a0,0($a2)
    # Line 998
    lui	$a2,0x1
    # Line 991
    li	$a1,3042
    beq	$a0,$a1,.L0da953c4
    move	$a1,$a0
    beql	$a4,$a0,.L0da953d0
    # Line 997
    li	$a1,8448
    # Line 991
    beq	$a0,$a3,.L0da953c4
    li	$at,8449
    bne	$a0,$at,.L0da95378
    # Line 985
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da953c4:
    # Line 996
    bnel	$a4,$a0,.L0da953d4
    # Line 998
    addu	$a2,$s0,$a2
    # Line 997
    li	$a1,8448
.L0da953d0:
    # Line 998
    addu	$a2,$s0,$a2
.L0da953d4:
    lw	$a0,-30164($a2)
    beqz	$a0,.L0da95400
    sw	$a1,-28324($a2)
    lw	$a1,196($a0)
    sd	$ra,40($sp)
    beqz	$a1,.L0da95434
    sd	$a2,16($sp)
.L0da953f0:
    # Line 1003
    # lw $t9, -30728($gp) # &mgrTM_SendTexmode1
    jal	mgrTM_SendTexmode1
    move	$a0,$s0
    ld	$ra,40($sp)
.L0da95400:
    ld	$gp,24($sp)
    # Line 1023
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da95410:
    # Line 979
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da95434:
    # Line 1001
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    jal	mgrTM_RefreshDim
    nop
    ld	$a1,16($sp)
    lw	$a1,-30164($a1)
    b	.L0da953f0
    lw	$a1,196($a1)
.L0da95450:
    # Line 1013
    # lw $t9, -26692($gp) # &__glClampAndScaleColori
    move	$a0,$s0
    jal	__glClampAndScaleColori
    addiu	$a1,$sp,0
    # Line 1014
    lwc1	$f1,_lit_4b7fffff
    lwc1	$f2,0($sp)
    lwc1	$f3,4($sp)
    mul.s	$f2,$f2,$f1
    mul.s	$f3,$f3,$f1
    trunc.w.s	$f2,$f2
    lui	$a6,0x1
    trunc.w.s	$f3,$f3
    addu	$a6,$s0,$a6
    lui	$a4,0xff
    mfc1	$a3,$f2
    mfc1	$a2,$f3
    ori	$a4,$a4,0xf000
    sra	$a3,$a3,0xc
    and	$a2,$a2,$a4
    or	$a2,$a2,$a3
    sw	$a2,-28320($a6)
    # Line 1015
    lwc1	$f0,8($sp)
    mul.s	$f0,$f0,$f1
    # Line 1016
    li	$a1,322
    # Line 1015
    trunc.w.s	$f0,$f0
    # Line 1016
    move	$a0,$s0
    sd	$a6,16($sp)
    # lw $t9, -30696($gp) # &__glMgrasWrite
    # Line 1015
    mfc1	$a5,$f0
    # Line 1016
    move	$a4,$zero
    # Line 1014
    la	$a3,SYMBOL_LOCATION
    # Line 1015
    sra	$a5,$a5,0xc
    sw	$a5,-28316($a6)
    # Line 1016
    jal	__glMgrasWrite
    lw	$a3,28($a3)
    # Line 1017
    move	$a0,$s0
    li	$a4,1
    li	$a1,323
    la	$a3,SYMBOL_LOCATION
    # lw $t9, -30696($gp) # &__glMgrasWrite
    ld	$a2,16($sp)
    lw	$a3,32($a3)
    jal	__glMgrasWrite
    lw	$a2,-28316($a2)
    b	.L0da95400
    ld	$ra,40($sp)
.end __glMgrim_TexEnviv

# Function: __glMgrim_TexEnvi
# Declared: Line 1026 (Source lines: 1027-1038)
# Address: 0x0da95508 - 0x0da95564 (Size: 92 bytes, Frame: 48)
.globl __glMgrim_TexEnvi
.ent __glMgrim_TexEnvi
__glMgrim_TexEnvi:
    # Line 1027
    li	$at,8704
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    sw	$a2,36($sp)
    sd	$gp,0($sp)
    lui	$v0,0x17
    addiu	$v0,$v0,-28272
    beq	$a1,$at,.L0da95548
    addu	$gp,$t9,$v0
    # Line 1035
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 1036
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da95548:
    # Line 1031
    # lw $t9, -31392($gp) # &__glMgrim_TexEnviv
    bal __glMgrim_TexEnviv
    addiu	$a2,$sp,36
    # Line 1038
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_TexEnvi

# Function: __glMgrim_TexImage1D
# Declared: Line 1041 (Source lines: 1044-1066)
# Address: 0x0da95564 - 0x0da956bc (Size: 344 bytes, Frame: 192)
.globl __glMgrim_TexImage1D
.ent __glMgrim_TexImage1D
__glMgrim_TexImage1D:
    # Line 1044
    addiu	$sp,$sp,-192
    sd	$a7,32($sp)
    sd	$ra,96($sp)
    move	$ra,$a7
    # Line 1049
    addiu	$a7,$sp,0
    sd	$a6,8($sp)
    sd	$a5,16($sp)
    sd	$a4,56($sp)
    sd	$a3,72($sp)
    sd	$a2,80($sp)
    sd	$a1,24($sp)
    sd	$gp,104($sp)
    # Line 1044
    lui	$at,0x17
    addiu	$at,$at,-28364
    addu	$gp,$t9,$at
    # lw $t9, -32736($gp) # &sub_0da90000
    # Line 1048
    sltu	$ra,$zero,$ra
    sw	$ra,0($sp)
    # Line 1044
    addiu	$t9,$t9,22412
    # Line 1049
    bal __glMgrim_CopyTexImage1DEXT
    sd	$a0,88($sp)
    beqz	$v0,.L0da95600
    move	$a5,$v0
    # Line 1051
    lbu	$v1,179($v0)
    li	$t0,1
    beq	$v1,$t0,.L0da95610
.L0da955cc:
    # Line 1057
    lw	$t1,0($sp)
.L0da955d0:
    blez	$t1,.L0da955f0
    # Line 1065
    move	$a0,$a5
    ld	$a1,24($sp)
    # lw $t9, -30680($gp) # &mgrTM_DoTexLoad
    ld	$a2,16($sp)
    ld	$a3,8($sp)
    jal	mgrTM_DoTexLoad
    ld	$a4,32($sp)
.L0da955f0:
    # Line 1066
    ld	$ra,96($sp)
    ld	$gp,104($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da95600:
    # Line 1051
    ld	$ra,96($sp)
    ld	$gp,104($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da95610:
    lbu	$at,181($v0)
    # Line 1056
    ld	$v1,72($sp)
    # Line 1051
    beqz	$at,.L0da955cc
    # Line 1056
    ld	$v0,56($sp)
    # Line 1055
    sw	$zero,0($sp)
    sd	$zero,40($sp)
    # Line 1056
    ld	$t0,24($sp)
    sll	$v0,$v0,0x1
    subu	$v1,$v1,$v0
    sllv	$v1,$v1,$t0
    # Line 1057
    blez	$v1,.L0da955cc
    sd	$v1,48($sp)
    sd	$a5,112($sp)
    sd	$v0,64($sp)
.L0da95648:
    # Line 1058
    ld	$a0,88($sp)
    ld	$a1,40($sp)
    ld	$a2,80($sp)
    addiu	$a7,$sp,0
    ld	$a6,8($sp)
    sd	$a5,112($sp)
    ld	$a5,16($sp)
    ld	$a4,56($sp)
    # lw $t9, -32736($gp) # &sub_0da90000
    ld	$t0,48($sp)
    ld	$a3,64($sp)
    addiu	$t9,$t9,22412
    bal __glMgrim_CopyTexImage1DEXT
    addu	$a3,$a3,$t0
    ld	$at,48($sp)
    beqz	$v0,.L0da956ac
    ld	$a5,112($sp)
    # Line 1057
    sra	$at,$at,0x1
    ld	$v1,40($sp)
    sd	$at,48($sp)
    addiu	$v1,$v1,1
    bgtz	$at,.L0da95648
    sd	$v1,40($sp)
    b	.L0da955d0
    lw	$t1,0($sp)
.L0da956ac:
    # Line 1060
    ld	$ra,96($sp)
    ld	$gp,104($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glMgrim_TexImage1D

# Function: __glMgrim_CopyTexImage1DEXT
# Declared: Line 1069 (Source lines: 1071-1082)
# Address: 0x0da956bc - 0x0da9578c (Size: 208 bytes, Frame: 160)
.globl __glMgrim_CopyTexImage1DEXT
.ent __glMgrim_CopyTexImage1DEXT
__glMgrim_CopyTexImage1DEXT:
    # Line 1071
    addiu	$sp,$sp,-160
    sd	$a2,64($sp)
    # Line 1076
    addiu	$a2,$sp,4
    sd	$s0,72($sp)
    # Line 1071
    move	$s0,$a1
    # Line 1076
    addiu	$a1,$sp,0
    sd	$s1,32($sp)
    # Line 1071
    move	$s1,$a0
    # Line 1076
    li	$a0,6144
    sd	$a6,48($sp)
    sd	$a5,56($sp)
    sd	$gp,40($sp)
    # Line 1071
    lui	$at,0x17
    addiu	$at,$at,-28708
    addu	$gp,$t9,$at
    # Line 1076
    # lw $t9, -30432($gp) # &__glMgrGetVisualInfo
    sd	$a4,16($sp)
    sd	$ra,80($sp)
    jal	__glMgrGetVisualInfo
    sd	$a3,24($sp)
    # Line 1077
    move	$a0,$s1
    move	$a1,$s0
    ld	$a2,64($sp)
    ld	$a3,56($sp)
    ld	$a4,48($sp)
    # lw $t9, -32736($gp) # &sub_0da90000
    addiu	$a7,$sp,8
    lw	$a6,0($sp)
    addiu	$t9,$t9,22412
    bal __glMgrim_CopyTexImage1DEXT
    lw	$a5,4($sp)
    bnez	$v0,.L0da95754
    # Line 1079
    ld	$s1,32($sp)
    ld	$ra,80($sp)
    ld	$gp,40($sp)
    ld	$s0,72($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0da95754:
    # Line 1081
    move	$a0,$v0
    move	$a1,$s0
    ld	$a5,16($sp)
    # lw $t9, -30672($gp) # &mgrTM_DoCopyTex
    ld	$a4,24($sp)
    lw	$a3,0($sp)
    jal	mgrTM_DoCopyTex
    lw	$a2,4($sp)
    ld	$gp,40($sp)
    # Line 1082
    ld	$ra,80($sp)
    ld	$s0,72($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __glMgrim_CopyTexImage1DEXT

# Function: mgrTM_TexImage1D_setup
# Declared: Line 1085 (Source lines: 1087-1214)
# Address: 0x0da9578c - 0x0da95d94 (Size: 1544 bytes, Frame: 240)
.ent mgrTM_TexImage1D_setup
mgrTM_TexImage1D_setup:
    # Line 1088
    move	$t2,$zero
    # Line 1093
    lw	$v0,__glCurrentContext
    # Line 1099
    li	$t1,-1
    # Line 1093
    li	$t3,1
    lw	$at,__glBeginMode
    # Line 1087
    addiu	$sp,$sp,-240
    sd	$s0,136($sp)
    # Line 1093
    beq	$at,$t3,.L0da95b98
    # Line 1087
    move	$s0,$a1
    # Line 1096
    li	$v1,0x8063
    beq	$a0,$v1,.L0da95914
    li	$t0,3552
    beq	$a0,$t0,.L0da957e4
    sd	$ra,144($sp)
.L0da957c4:
    # Line 1106
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 1107
    ld	$ra,144($sp)
    move	$v0,$zero
    ld	$s0,136($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0da957e4:
    # Line 1102
    move	$t9,$zero
    # Line 1108
    bltz	$s0,.L0da95920
.L0da957ec:
    # Line 1110
    slti	$t1,$s0,14
    beqz	$t1,.L0da95920
    # Line 1115
    sll	$v1,$t9,0x2
    bltz	$a3,.L0da95804
    slti	$at,$a3,8193
    bnez	$at,.L0da95810
.L0da95804:
    li	$a0,1
    b	.L0da95814
    nop
.L0da95810:
    move	$a0,$zero
.L0da95814:
    bnezl	$a0,.L0da95924
    # Line 1112
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,144($sp)
    sd	$v0,40($sp)
    sd	$a3,64($sp)
    sd	$a7,24($sp)
    sd	$a4,56($sp)
    sd	$t2,72($sp)
    sd	$a2,80($sp)
    # Line 1115
    lui	$a0,0x1
    li	$t0,-1
    dsll	$t0,$t0,0x10
    ori	$t0,$t0,0x75d0
    subu	$v1,$v1,$t9
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$t9
    sll	$v1,$v1,0x2
    subu	$v1,$v1,$t9
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$v0
    sd	$v1,96($sp)
    addu	$a1,$a0,$v1
    beq	$v1,$t0,.L0da95898
    lw	$t8,-29964($a1)
    sd	$ra,144($sp)
    sd	$v0,40($sp)
    sd	$a3,64($sp)
    sd	$a7,24($sp)
    sd	$a4,56($sp)
    sd	$t2,72($sp)
    sd	$a2,80($sp)
    beqz	$t8,.L0da95c5c
    sd	$a1,88($sp)
.L0da95898:
    # Line 1119
    move	$a3,$t8
    sd	$t8,32($sp)
    # Line 1120
    # lw $t9, -30768($gp) # &mgrTM_set_externalformat
    ld	$a0,40($sp)
    move	$a1,$a5
    jal	mgrTM_set_externalformat
    move	$a2,$a6
    lui	$at,0x1
    beqz	$v0,.L0da957c4
    ld	$ra,144($sp)
    # Line 1122
    ld	$v1,40($sp)
    # Line 1124
    ld	$t1,64($sp)
    # Line 1122
    addu	$at,$at,$v1
    sd	$at,128($sp)
    lw	$at,-28164($at)
    # Line 1124
    bnez	$t1,.L0da95944
    # Line 1122
    sw	$zero,484($at)
.L0da958dc:
    # Line 1125
    ld	$t0,32($sp)
    lbu	$t0,179($t0)
    li	$t1,1
    beq	$t0,$t1,.L0da95bbc
    # Line 1128
    nop	# was lw $t9, -30716($gp) # &mgrTM_RemoveLev
    ld	$a0,40($sp)
    ld	$a1,32($sp)
    jal	mgrTM_RemoveLev
    move	$a2,$s0
    ld	$ra,144($sp)
.L0da95904:
    # Line 1129
    move	$v0,$zero
    ld	$s0,136($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0da95914:
    # Line 1098
    li	$t9,1
    # Line 1108
    bgez	$s0,.L0da957ec
    # Line 1099
    sw	$t1,0($a7)
.L0da95920:
    # Line 1112
    # lw $t9, -27320($gp) # &__glSetError
.L0da95924:
    sd	$ra,144($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 1113
    ld	$ra,144($sp)
    move	$v0,$zero
    ld	$s0,136($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0da95944:
    ld	$t9,40($sp)
    # Line 1132
    move	$a0,$t9
    lw	$t9,0($t9)
    jalr	$t9
    li	$a1,68
    move	$a0,$v0
    sd	$v0,120($sp)
    # Line 1133
    # lw $t9, -17868($gp) # &bzero
    sd	$v0,48($sp)
    # Line 1132
    move	$ra,$v0
    # Line 1133
    jal	bzero
    li	$a1,68
    # Line 1137
    ld	$at,40($sp)
    li	$v1,1
    # Line 1134
    ld	$t1,120($sp)
    # Line 1136
    ld	$t0,64($sp)
    # Line 1137
    ld	$v0,48($sp)
    # Line 1134
    ld	$a1,32($sp)
    # Line 1136
    sh	$t0,40($t1)
    # Line 1135
    sb	$s0,63($t1)
    # Line 1134
    sw	$a1,0($t1)
    # Line 1137
    sh	$v1,42($v0)
    sh	$v1,44($v0)
    sh	$v1,46($v0)
    lw	$at,32100($at)
    lui	$v1,0x10
    and	$at,$at,$v1
    beqz	$at,.L0da959dc
    # Line 1147
    ld	$t1,80($sp)
    ld	$at,128($sp)
    # Line 1137
    lbu	$at,-32108($at)
    beqz	$at,.L0da959dc
    ld	$t0,128($sp)
    # Line 1142
    ld	$v1,64($sp)
    lw	$t0,-32116($t0)
    subu	$t0,$v1,$t0
    addiu	$v1,$t0,1
    sd	$v1,64($sp)
.L0da959dc:
    # Line 1145
    sw	$zero,8($v0)
    sw	$zero,12($v0)
    sw	$zero,16($v0)
    ld	$at,56($sp)
    # Line 1147
    sw	$t1,24($v0)
    # Line 1144
    ld	$v1,64($sp)
    # Line 1146
    sw	$at,20($v0)
    # Line 1144
    addu	$a6,$at,$at
    subu	$v1,$v1,$a6
    sw	$v1,4($v0)
    # Line 1147
    lw	$a6,76($a1)
    beqz	$a6,.L0da95c8c
    # Line 1151
    sll	$at,$s0,0x2
    # Line 1156
    lbu	$t0,63($a6)
    slt	$t0,$t0,$s0
    beqz	$t0,.L0da95a50
    addiu	$a5,$v0,4
    sd	$a5,112($sp)
    # Line 1161
    # lw $t9, -17848($gp) # &memcpy
    li	$a2,24
    addiu	$a1,$a6,4
    jal	memcpy
    addiu	$a0,$sp,0
    # Line 1163
    ld	$t2,32($sp)
    lw	$t2,76($t2)
    lbu	$t2,63($t2)
    ld	$a1,112($sp)
    b	.L0da95a78
    subu	$a6,$s0,$t2
.L0da95a50:
    # Line 1166
    # lw $t9, -17848($gp) # &memcpy
    li	$a2,24
    move	$a1,$a5
    jal	memcpy
    addiu	$a0,$sp,0
    ld	$a1,32($sp)
    # Line 1167
    lw	$a1,76($a1)
    # Line 1168
    lbu	$t2,63($a1)
    # Line 1167
    addiu	$a1,$a1,4
    # Line 1168
    subu	$a6,$t2,$s0
.L0da95a78:
    beq	$s0,$t2,.L0da95a9c
    lw	$a5,0($sp)
    addiu	$t0,$a6,-1
    srav	$t0,$a5,$t0
    slti	$t0,$t0,2
    beqz	$t0,.L0da95a9c
    # Line 1171
    li	$t1,1
    b	.L0da95aa8
    sd	$t1,72($sp)
.L0da95a9c:
    # Line 1173
    srav	$at,$a5,$a6
    beqz	$at,.L0da95c48
    sw	$at,0($sp)
.L0da95aa8:
    ld	$v1,72($sp)
    # Line 1176
    beqz	$v1,.L0da95bd4
    # Line 1177
    nop	# was lw $t9, -30720($gp) # &mgrTM_RemoveTex
.L0da95ab4:
    ld	$a0,40($sp)
    jal	mgrTM_RemoveTex
    ld	$a1,32($sp)
    # Line 1178
    sll	$a2,$s0,0x2
    ld	$a1,48($sp)
    ld	$a3,32($sp)
    # Line 1179
    # lw $t9, -32732($gp) # &sub_0daa0000
    move	$a0,$a1
    # Line 1178
    addu	$a2,$a2,$a3
    # Line 1179
    addiu	$t9,$t9,-29152
    bal __glMgrim_TexSubImage4DSGIS
    # Line 1178
    sw	$a1,20($a2)
    # Line 1179
    beqz	$v0,.L0da958dc
    ld	$ra,144($sp)
    # Line 1181
    # lw $t9, -30764($gp) # &mgrTM_set_internalformat
    ld	$a0,40($sp)
    ld	$a1,32($sp)
    jal	mgrTM_set_internalformat
    ld	$a2,48($sp)
    beqz	$v0,.L0da958dc
    ld	$ra,144($sp)
    ld	$a0,40($sp)
    # Line 1183
    # lw $t9, -30760($gp) # &mgrTM_process_level
    ld	$a1,32($sp)
    ld	$a2,48($sp)
    jal	mgrTM_process_level
    ld	$a3,24($sp)
    ld	$ra,144($sp)
    beqz	$v0,.L0da958dc
    ld	$a2,48($sp)
.L0da95b2c:
    ld	$t0,56($sp)
.L0da95b30:
    # Line 1176
    beqz	$t0,.L0da95c54
    # Line 1206
    li	$v0,-1
.L0da95b38:
    # Line 1208
    sh	$zero,36($a2)
    sh	$zero,38($a2)
    # Line 1206
    sh	$v0,32($a2)
    # Line 1211
    ld	$a6,32($sp)
    # Line 1207
    li	$t1,-1
    # Line 1209
    andi	$t0,$s0,0x1
    sb	$t0,58($a2)
    # Line 1207
    sh	$t1,34($a2)
    # Line 1211
    lw	$a6,76($a6)
    beqz	$a6,.L0da95b78
    ld	$v1,32($sp)
    lbu	$at,63($a6)
    slt	$at,$s0,$at
    beqz	$at,.L0da95b80
    ld	$t0,128($sp)
    ld	$v1,32($sp)
.L0da95b78:
    # Line 1212
    sw	$a2,76($v1)
    ld	$t0,128($sp)
.L0da95b80:
    # Line 1214
    ld	$v0,32($sp)
    ld	$s0,136($sp)
    # Line 1213
    lw	$t0,-28164($t0)
    # Line 1214
    addiu	$sp,$sp,240
    jr	$ra
    # Line 1213
    sw	$zero,488($t0)
.L0da95b98:
    # Line 1093
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,144($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,144($sp)
    move	$v0,$zero
    ld	$s0,136($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0da95bbc:
    # Line 1127
    # lw $t9, -30720($gp) # &mgrTM_RemoveTex
    ld	$a0,40($sp)
    jal	mgrTM_RemoveTex
    ld	$a1,32($sp)
    b	.L0da95904
    ld	$ra,144($sp)
.L0da95bd4:
    # Line 1176
    # lw $t9, -17796($gp) # &memcmp
    li	$a2,24
    jal	memcmp
    addiu	$a0,$sp,0
    bnez	$v0,.L0da95ab4
    # Line 1177
    nop	# was lw $t9, -30720($gp) # &mgrTM_RemoveTex
    # Line 1176
    ld	$a6,32($sp)
    sll	$a5,$s0,0x2
    addu	$a5,$a5,$a6
    lw	$a6,20($a5)
    beqz	$a6,.L0da95d48
    ld	$a1,48($sp)
    # Line 1195
    lh	$a7,40($a1)
    # Line 1196
    ld	$a0,40($sp)
    # Line 1195
    sh	$a7,40($a6)
    # Line 1196
    lw	$t9,12($a0)
    jal	mgrTM_RemoveTex
    sd	$a5,104($sp)
    ld	$a2,104($sp)
    # Line 1197
    lw	$a2,20($a2)
    lbu	$t0,64($a2)
    beqz	$t0,.L0da95cfc
    ld	$ra,144($sp)
    # Line 1199
    move	$v0,$zero
    ld	$s0,136($sp)
    ld	$t0,24($sp)
    addiu	$sp,$sp,240
    jr	$ra
    sw	$zero,0($t0)
.L0da95c48:
    li	$t1,1
    b	.L0da95aa8
    # Line 1174
    sw	$t1,0($sp)
.L0da95c54:
    b	.L0da95b38
    # Line 1206
    move	$v0,$zero
.L0da95c5c:
    sd	$a6,160($sp)
    sd	$a5,152($sp)
    # Line 1118
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    ld	$a0,96($sp)
    li	$a1,0x8a30
    jal	mgrTM_RefreshDim
    addu	$a0,$a0,$a1
    ld	$a5,152($sp)
    ld	$t8,88($sp)
    ld	$a6,160($sp)
    b	.L0da95898
    lw	$t8,-29964($t8)
.L0da95c8c:
    ld	$ra,48($sp)
    # Line 1151
    addu	$at,$at,$a1
    # Line 1152
    # lw $t9, -32732($gp) # &sub_0daa0000
    move	$a0,$ra
    # Line 1151
    sw	$ra,20($at)
    # Line 1152
    addiu	$t9,$t9,-29152
    bal __glMgrim_TexSubImage4DSGIS
    nop
    beqz	$v0,.L0da958dc
    ld	$ra,144($sp)
    # Line 1154
    # lw $t9, -30764($gp) # &mgrTM_set_internalformat
    ld	$a0,40($sp)
    ld	$a1,32($sp)
    jal	mgrTM_set_internalformat
    ld	$a2,48($sp)
    beqz	$v0,.L0da958dc
    ld	$ra,144($sp)
    ld	$a0,40($sp)
    # Line 1156
    # lw $t9, -30760($gp) # &mgrTM_process_level
    ld	$a1,32($sp)
    ld	$a2,48($sp)
    jal	mgrTM_process_level
    ld	$a3,24($sp)
    ld	$ra,144($sp)
    beqz	$v0,.L0da958dc
    ld	$a2,48($sp)
    b	.L0da95b30
    ld	$t0,56($sp)
.L0da95cfc:
    # Line 1199
    lw	$a1,28($a2)
    beqz	$a1,.L0da95b30
    ld	$t0,56($sp)
    lbu	$v1,89($a1)
    bnez	$v1,.L0da95b30
    ld	$t0,56($sp)
    ld	$t0,24($sp)
    # Line 1200
    lw	$t0,0($t0)
    blez	$t0,.L0da95b2c
    ld	$a0,40($sp)
    # Line 1201
    li	$a4,1
    # lw $t9, -30756($gp) # &mgrTM_MakeResident
    li	$a3,1
    sd	$a2,48($sp)
    jal	mgrTM_MakeResident
    li	$a2,1
    ld	$ra,144($sp)
    b	.L0da95b2c
    ld	$a2,48($sp)
.L0da95d48:
    # Line 1189
    ld	$t1,48($sp)
    # lw $t9, -32732($gp) # &sub_0daa0000
    move	$a0,$t1
    addiu	$t9,$t9,-29152
    bal __glMgrim_TexSubImage4DSGIS
    # Line 1188
    sw	$t1,20($a5)
    # Line 1189
    beqz	$v0,.L0da958dc
    ld	$ra,144($sp)
    ld	$a0,40($sp)
    # Line 1191
    # lw $t9, -30760($gp) # &mgrTM_process_level
    ld	$a1,32($sp)
    ld	$a2,48($sp)
    jal	mgrTM_process_level
    ld	$a3,24($sp)
    ld	$ra,144($sp)
    beqz	$v0,.L0da958dc
    ld	$a2,48($sp)
    b	.L0da95b30
    ld	$t0,56($sp)
.end mgrTM_TexImage1D_setup

# Function: __glMgrim_TexSubImage1DEXT
# Declared: Line 1218 (Source lines: 1220-1269)
# Address: 0x0da95d94 - 0x0da96110 (Size: 892 bytes, Frame: 176)
.globl __glMgrim_TexSubImage1DEXT
.ent __glMgrim_TexSubImage1DEXT
__glMgrim_TexSubImage1DEXT:
    # Line 1225
    lw	$t0,__glCurrentContext
    # Line 1229
    li	$t1,-1
    # Line 1225
    li	$v0,1
    # Line 1220
    addiu	$sp,$sp,-176
    sd	$s0,80($sp)
    move	$s0,$a1
    sd	$gp,72($sp)
    # Line 1225
    lw	$at,__glBeginMode
    # Line 1220
    lui	$v1,0x17
    addiu	$v1,$v1,-30460
    # Line 1225
    beq	$at,$v0,.L0da96014
    # Line 1220
    addu	$gp,$t9,$v1
    # Line 1225
    li	$a7,3552
    beq	$a0,$a7,.L0da95df4
    # Line 1229
    dsll	$t1,$t1,0x10
    # Line 1228
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,88($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1229
    ld	$ra,88($sp)
    ld	$gp,72($sp)
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da95df4:
    lui	$a1,0x1
    addu	$a1,$t0,$a1
    ori	$t1,$t1,0x75d0
    beq	$t0,$t1,.L0da95e10
    lw	$t1,-29964($a1)
    beqzl	$t1,.L0da96048
    sd	$t0,24($sp)
.L0da95e10:
    # Line 1235
    bltz	$s0,.L0da95fa8
    # Line 1233
    move	$a0,$t1
    # Line 1235
    slti	$a7,$s0,14
    beqz	$a7,.L0da95fa8
    # Line 1237
    sll	$t3,$s0,0x2
    addu	$t3,$t3,$a0
    lw	$t3,20($t3)
    beqz	$t3,.L0da960a0
    move	$t1,$t3
    # Line 1238
    lbu	$at,64($t3)
    beqz	$at,.L0da95e50
    # Line 1242
    lui	$v1,0x10
    ld	$gp,72($sp)
    # Line 1239
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da95e50:
    # Line 1242
    sh	$a3,40($t3)
    lw	$v0,32100($t0)
    and	$v0,$v0,$v1
    beqz	$v0,.L0da95e7c
    # Line 1241
    lw	$t2,20($t3)
    # Line 1242
    lbu	$a7,-32108($a1)
    beqz	$a7,.L0da95e7c
    nop
    # Line 1246
    lw	$a7,-32116($a1)
    subu	$a3,$a3,$a7
    addiu	$a3,$a3,1
.L0da95e7c:
    # Line 1249
    blez	$a3,.L0da95ff0
    addu	$a1,$a2,$a3
    negu	$at,$t2
    slt	$at,$a2,$at
    bnez	$at,.L0da95ff4
    # Line 1250
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1249
    lw	$t8,4($t3)
    addu	$t9,$t8,$t2
    slt	$v0,$t9,$a1
    bnez	$v0,.L0da95ff0
    # Line 1253
    slti	$at,$a3,32
    # Line 1250
    andi	$v1,$a1,0x1f
    beqz	$v1,.L0da95ebc
    # Line 1253
    sll	$a7,$t2,0x1
    bne	$a1,$t9,.L0da95fcc
    sll	$a7,$t2,0x1
.L0da95ebc:
    addu	$a7,$a7,$t8
    beql	$a7,$a3,.L0da95ef8
    sd	$t0,24($sp)
    sd	$ra,88($sp)
    sd	$t0,24($sp)
    sd	$a3,32($sp)
    sd	$a2,40($sp)
    sd	$a0,16($sp)
    sd	$a5,8($sp)
    sd	$a4,0($sp)
    sd	$a6,48($sp)
    sd	$t1,56($sp)
    bnez	$at,.L0da95fcc
    sd	$t2,64($sp)
    sd	$t0,24($sp)
.L0da95ef8:
    sd	$a5,8($sp)
    sd	$a4,0($sp)
    sd	$a6,48($sp)
    sd	$t1,56($sp)
    sd	$t2,64($sp)
    sd	$a0,16($sp)
    move	$a0,$t0
    # Line 1257
    move	$a1,$a4
    sd	$a2,40($sp)
    move	$a2,$a5
    # lw $t9, -30768($gp) # &mgrTM_set_externalformat
    sd	$a3,32($sp)
    sd	$ra,88($sp)
    jal	mgrTM_set_externalformat
    ld	$a3,16($sp)
    beqz	$v0,.L0da960c4
    ld	$ra,88($sp)
    ld	$v0,48($sp)
    # Line 1258
    beqz	$v0,.L0da96038
    ld	$at,56($sp)
    li	$a7,1
    # Line 1261
    ld	$v0,40($sp)
    # Line 1263
    sh	$a7,42($at)
    sh	$a7,44($at)
    sh	$a7,46($at)
    # Line 1262
    sh	$zero,34($at)
    sh	$zero,36($at)
    sh	$zero,38($at)
    # Line 1263
    lw	$a1,28($at)
    # Line 1261
    sh	$v0,32($at)
    # Line 1263
    lbu	$v1,89($a1)
    beqz	$v1,.L0da960d4
    ld	$a0,16($sp)
.L0da95f7c:
    # Line 1268
    move	$a1,$s0
    # lw $t9, -30680($gp) # &mgrTM_DoTexLoad
    ld	$a2,0($sp)
    ld	$a3,8($sp)
    jal	mgrTM_DoTexLoad
    ld	$a4,48($sp)
    # Line 1269
    ld	$ra,88($sp)
    ld	$gp,72($sp)
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da95fa8:
    # Line 1236
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,88($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$ra,88($sp)
    ld	$gp,72($sp)
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da95fcc:
    # Line 1255
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,88($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$ra,88($sp)
    ld	$gp,72($sp)
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da95ff0:
    # Line 1250
    # lw $t9, -27320($gp) # &__glSetError
.L0da95ff4:
    sd	$ra,88($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$ra,88($sp)
    ld	$gp,72($sp)
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da96014:
    # Line 1225
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,88($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,88($sp)
    ld	$gp,72($sp)
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da96038:
    ld	$gp,72($sp)
    # Line 1260
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da96048:
    sd	$a3,32($sp)
    sd	$a2,40($sp)
    sd	$a5,8($sp)
    sd	$a4,0($sp)
    sd	$a6,48($sp)
    sd	$ra,88($sp)
    # Line 1232
    move	$a0,$t0
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    sd	$a1,96($sp)
    li	$a1,0x8a30
    jal	mgrTM_RefreshDim
    addu	$a0,$t0,$a1
    ld	$a6,48($sp)
    ld	$a4,0($sp)
    ld	$a5,8($sp)
    ld	$a2,40($sp)
    ld	$a3,32($sp)
    ld	$t0,24($sp)
    ld	$a1,96($sp)
    ld	$ra,88($sp)
    b	.L0da95e10
    lw	$t1,-29964($a1)
.L0da960a0:
    # Line 1238
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,88($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,88($sp)
    ld	$gp,72($sp)
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da960c4:
    ld	$gp,72($sp)
    # Line 1258
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da960d4:
    # Line 1267
    ld	$a4,56($sp)
    ld	$a0,24($sp)
    ld	$a5,64($sp)
    lw	$a4,4($a4)
    li	$a3,1
    addu	$a5,$a5,$a5
    addu	$a4,$a4,$a5
    ld	$a5,32($sp)
    # lw $t9, -30756($gp) # &mgrTM_MakeResident
    li	$a2,1
    xor	$a4,$a4,$a5
    jal	mgrTM_MakeResident
    sltiu	$a4,$a4,1
    b	.L0da95f7c
    ld	$a0,16($sp)
.end __glMgrim_TexSubImage1DEXT

# Function: __glMgrim_CopyTexSubImage1DEXT
# Declared: Line 1272 (Source lines: 1274-1322)
# Address: 0x0da96110 - 0x0da9640c (Size: 764 bytes, Frame: 176)
.globl __glMgrim_CopyTexSubImage1DEXT
.ent __glMgrim_CopyTexSubImage1DEXT
__glMgrim_CopyTexSubImage1DEXT:
    # Line 1280
    lw	$a7,__glCurrentContext
    # Line 1284
    li	$t3,-1
    # Line 1280
    li	$v0,1
    # Line 1274
    addiu	$sp,$sp,-176
    sd	$gp,80($sp)
    # Line 1280
    lw	$at,__glBeginMode
    # Line 1274
    lui	$v1,0x17
    addiu	$v1,$v1,-31352
    # Line 1280
    beq	$at,$v0,.L0da96338
    # Line 1274
    addu	$gp,$t9,$v1
    # Line 1280
    li	$a6,3552
    beq	$a0,$a6,.L0da96164
    # Line 1284
    dsll	$t3,$t3,0x10
    # Line 1283
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,88($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1284
    ld	$ra,88($sp)
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da96164:
    lui	$t0,0x1
    addu	$t0,$a7,$t0
    ori	$t3,$t3,0x75d0
    beq	$a7,$t3,.L0da9617c
    lw	$t3,-29964($t0)
    beqz	$t3,.L0da96358
.L0da9617c:
    # Line 1290
    sll	$a0,$a1,0x2
    addu	$a0,$a0,$t3
    lw	$a0,20($a0)
    # Line 1288
    move	$t2,$t3
    # Line 1290
    beqz	$a0,.L0da963b4
    move	$t1,$a0
    # Line 1291
    lbu	$a6,64($a0)
    beqz	$a6,.L0da961ac
    # Line 1295
    lui	$at,0x10
    ld	$gp,80($sp)
    # Line 1292
    jr	$ra
    addiu	$sp,$sp,176
.L0da961ac:
    # Line 1295
    sh	$a5,40($a0)
    lw	$t3,32100($a7)
    and	$t3,$t3,$at
    beqz	$t3,.L0da961d8
    # Line 1294
    lw	$t3,20($a0)
    # Line 1295
    lbu	$v0,-32108($t0)
    beqz	$v0,.L0da961d8
    nop
    # Line 1299
    lw	$a6,-32116($t0)
    subu	$a5,$a5,$a6
    addiu	$a5,$a5,1
.L0da961d8:
    # Line 1302
    blez	$a5,.L0da96318
    addu	$t0,$a2,$a5
    negu	$at,$t3
    sd	$at,72($sp)
    slt	$at,$a2,$at
    bnez	$at,.L0da9631c
    # Line 1303
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1302
    lw	$t8,4($a0)
    addu	$t9,$t8,$t3
    slt	$v0,$t9,$t0
    bnez	$v0,.L0da96318
    # Line 1308
    slti	$at,$a5,32
    # Line 1304
    andi	$v1,$t0,0x1f
    beqz	$v1,.L0da9621c
    # Line 1308
    sll	$a6,$t3,0x1
    bne	$t0,$t9,.L0da96254
    sll	$a6,$t3,0x1
.L0da9621c:
    addu	$a6,$a6,$t8
    beql	$a6,$a5,.L0da96278
    sd	$a5,8($sp)
    sd	$ra,88($sp)
    sd	$a5,8($sp)
    sd	$a7,16($sp)
    sd	$a1,24($sp)
    sd	$a0,32($sp)
    sd	$a3,40($sp)
    sd	$a4,48($sp)
    sd	$t1,96($sp)
    sd	$t2,56($sp)
    beqz	$at,.L0da96274
    sd	$t3,64($sp)
.L0da96254:
    # Line 1310
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,88($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$ra,88($sp)
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da96274:
    sd	$a5,8($sp)
.L0da96278:
    sd	$a7,16($sp)
    sd	$a3,40($sp)
    sd	$a4,48($sp)
    sd	$t1,96($sp)
    sd	$t2,56($sp)
    sd	$t3,64($sp)
    # Line 1312
    addiu	$a2,$sp,4
    sd	$a1,24($sp)
    addiu	$a1,$sp,0
    # lw $t9, -30432($gp) # &__glMgrGetVisualInfo
    sd	$a0,32($sp)
    sd	$ra,88($sp)
    jal	__glMgrGetVisualInfo
    li	$a0,6144
    ld	$a5,32($sp)
    # Line 1314
    ld	$a1,72($sp)
    sh	$a1,32($a5)
    # Line 1316
    ld	$a5,96($sp)
    li	$v1,1
    sh	$v1,42($a5)
    sh	$v1,44($a5)
    sh	$v1,46($a5)
    # Line 1315
    sh	$zero,34($a5)
    sh	$zero,36($a5)
    # Line 1316
    lw	$a1,28($a5)
    # Line 1315
    sh	$zero,38($a5)
    # Line 1316
    lbu	$v0,89($a1)
    beqz	$v0,.L0da963d4
    ld	$a0,56($sp)
.L0da962ec:
    # Line 1321
    ld	$a1,24($sp)
    ld	$a5,48($sp)
    # lw $t9, -30672($gp) # &mgrTM_DoCopyTex
    ld	$a4,40($sp)
    lw	$a3,0($sp)
    jal	mgrTM_DoCopyTex
    lw	$a2,4($sp)
    # Line 1322
    ld	$ra,88($sp)
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da96318:
    # Line 1303
    # lw $t9, -27320($gp) # &__glSetError
.L0da9631c:
    sd	$ra,88($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 1304
    ld	$ra,88($sp)
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da96338:
    # Line 1280
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,88($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,88($sp)
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da96358:
    sd	$a5,8($sp)
    sd	$a7,16($sp)
    sd	$a2,112($sp)
    sd	$a3,40($sp)
    sd	$a4,48($sp)
    sd	$t0,104($sp)
    sd	$ra,88($sp)
    # Line 1287
    move	$a0,$a7
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    sd	$a1,24($sp)
    li	$a1,0x8a30
    jal	mgrTM_RefreshDim
    addu	$a0,$a7,$a1
    ld	$a4,48($sp)
    ld	$a3,40($sp)
    ld	$a2,112($sp)
    ld	$a1,24($sp)
    ld	$a7,16($sp)
    ld	$a5,8($sp)
    ld	$t0,104($sp)
    ld	$ra,88($sp)
    b	.L0da9617c
    lw	$t3,-29964($t0)
.L0da963b4:
    # Line 1291
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,88($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,88($sp)
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da963d4:
    # Line 1320
    lw	$a4,4($a5)
    ld	$a5,64($sp)
    ld	$a0,16($sp)
    li	$a3,1
    addu	$a5,$a5,$a5
    addu	$a4,$a4,$a5
    ld	$a5,8($sp)
    # lw $t9, -30756($gp) # &mgrTM_MakeResident
    li	$a2,1
    xor	$a4,$a4,$a5
    jal	mgrTM_MakeResident
    sltiu	$a4,$a4,1
    b	.L0da962ec
    ld	$a0,56($sp)
.end __glMgrim_CopyTexSubImage1DEXT

# Function: __glMgrim_TexImage2D
# Declared: Line 1325 (Source lines: 1328-1353)
# Address: 0x0da9640c - 0x0da96628 (Size: 540 bytes, Frame: 224)
.globl __glMgrim_TexImage2D
.ent __glMgrim_TexImage2D
__glMgrim_TexImage2D:
    # Line 1328
    addiu	$sp,$sp,-224
    sd	$s4,128($sp)
    move	$s4,$a7
    sd	$s3,136($sp)
    move	$s3,$a6
    sd	$s5,104($sp)
    move	$s5,$a5
    sd	$a4,80($sp)
    sd	$a3,72($sp)
    sd	$s7,112($sp)
    move	$s7,$a2
    sd	$a1,24($sp)
    sd	$s6,152($sp)
    move	$s6,$a0
    sd	$ra,120($sp)
    # Line 1333
    addiu	$ra,$sp,16
    # Line 1332
    lw	$at,228($sp)
    sd	$s8,144($sp)
    sd	$gp,96($sp)
    sd	$at,40($sp)
    sltu	$at,$zero,$at
    # Line 1328
    lui	$v0,0x17
    addiu	$v0,$v0,-32116
    addu	$gp,$t9,$v0
    la	$s8,sub_0da90000
    # Line 1332
    sw	$at,16($sp)
    # Line 1333
    sw	$ra,4($sp)
    # Line 1328
    addiu	$s8,$s8,26400
    # Line 1333
    bal __glMgrim_CopyTexImage2DEXT
    move	$t9,$s8
    move	$v1,$v0
    beqz	$v0,.L0da96500
    sd	$v0,88($sp)
    sd	$s2,48($sp)
    # Line 1335
    lbu	$t0,179($v0)
    sd	$s0,56($sp)
    li	$t1,3
    beq	$t0,$t1,.L0da96528
    sd	$s1,64($sp)
.L0da964a8:
    # Line 1342
    lw	$at,16($sp)
.L0da964ac:
    ld	$s1,64($sp)
    ld	$s0,56($sp)
    blez	$at,.L0da964d8
    ld	$s2,48($sp)
    ld	$a0,88($sp)
    # Line 1352
    ld	$a1,24($sp)
    # lw $t9, -30680($gp) # &mgrTM_DoTexLoad
    move	$a2,$s3
    move	$a3,$s4
    jal	mgrTM_DoTexLoad
    ld	$a4,40($sp)
.L0da964d8:
    ld	$gp,96($sp)
    # Line 1353
    ld	$s3,136($sp)
    ld	$s4,128($sp)
    ld	$s5,104($sp)
    ld	$s6,152($sp)
    ld	$ra,120($sp)
    ld	$s7,112($sp)
    ld	$s8,144($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0da96500:
    ld	$gp,96($sp)
    # Line 1335
    ld	$s3,136($sp)
    ld	$s4,128($sp)
    ld	$s5,104($sp)
    ld	$s6,152($sp)
    ld	$ra,120($sp)
    ld	$s7,112($sp)
    ld	$s8,144($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0da96528:
    lbu	$v1,181($v0)
    sd	$s2,48($sp)
    sd	$s0,56($sp)
    beqz	$v1,.L0da964a8
    sd	$s1,64($sp)
    # Line 1339
    sw	$zero,16($sp)
    # Line 1340
    sll	$at,$s5,0x1
    sd	$at,32($sp)
    ld	$s1,72($sp)
    # Line 1341
    ld	$v0,80($sp)
    ld	$s2,24($sp)
    # Line 1340
    subu	$s1,$s1,$at
    # Line 1341
    subu	$v0,$v0,$at
    sllv	$v0,$v0,$s2
    # Line 1340
    sllv	$s1,$s1,$s2
    # Line 1342
    move	$s2,$zero
    beqz	$s1,.L0da96618
    # Line 1341
    move	$s0,$v0
.L0da96570:
    # Line 1342
    beqz	$s1,.L0da96610
    nop
.L0da96578:
    # Line 1343
    beqz	$s0,.L0da965d4
.L0da9657c:
    # Line 1345
    move	$a0,$s6
    move	$a1,$s2
    move	$a2,$s7
    move	$a7,$s4
    move	$a6,$s3
    move	$a5,$s5
    move	$t9,$s8
    ld	$a3,32($sp)
    addiu	$v1,$sp,16
    sw	$v1,4($sp)
    addu	$a4,$a3,$s0
    bal __glMgrim_CopyTexImage2DEXT
    addu	$a3,$a3,$s1
    # Line 1342
    addiu	$s2,$s2,1
    # Line 1345
    beqz	$v0,.L0da965dc
    # Line 1342
    sra	$s1,$s1,0x1
    bnez	$s1,.L0da96578
    sra	$s0,$s0,0x1
    bnez	$s0,.L0da96570
    nop
    b	.L0da964ac
    lw	$at,16($sp)
.L0da965d4:
    b	.L0da9657c
    # Line 1344
    li	$s0,1
.L0da965dc:
    ld	$gp,96($sp)
    # Line 1347
    ld	$s0,56($sp)
    ld	$s1,64($sp)
    ld	$s2,48($sp)
    ld	$s3,136($sp)
    ld	$s4,128($sp)
    ld	$s5,104($sp)
    ld	$s6,152($sp)
    ld	$ra,120($sp)
    ld	$s7,112($sp)
    ld	$s8,144($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0da96610:
    b	.L0da96578
    # Line 1343
    li	$s1,1
.L0da96618:
    # Line 1342
    beqz	$v0,.L0da964ac
    lw	$at,16($sp)
    b	.L0da96570
    nop
.end __glMgrim_TexImage2D

# Function: __glMgrim_CopyTexImage2DEXT
# Declared: Line 1356 (Source lines: 1358-1374)
# Address: 0x0da96628 - 0x0da96720 (Size: 248 bytes, Frame: 176)
.globl __glMgrim_CopyTexImage2DEXT
.ent __glMgrim_CopyTexImage2DEXT
__glMgrim_CopyTexImage2DEXT:
    # Line 1358
    li	$at,0x8064
    addiu	$sp,$sp,-176
    sd	$ra,104($sp)
    sd	$a7,48($sp)
    sd	$a6,64($sp)
    sd	$a5,80($sp)
    sd	$a4,40($sp)
    sd	$a3,32($sp)
    sd	$a2,72($sp)
    sd	$s0,96($sp)
    move	$s0,$a1
    sd	$a0,56($sp)
    sd	$gp,88($sp)
    lui	$v0,0x17
    addiu	$v0,$v0,-32656
    beq	$a0,$at,.L0da96700
    addu	$gp,$t9,$v0
    # Line 1368
    # lw $t9, -30432($gp) # &__glMgrGetVisualInfo
    addiu	$a2,$sp,20
    addiu	$a1,$sp,16
    jal	__glMgrGetVisualInfo
    li	$a0,6144
    ld	$a0,56($sp)
    # Line 1369
    move	$a1,$s0
    ld	$a2,72($sp)
    ld	$a3,80($sp)
    ld	$a4,64($sp)
    ld	$a5,48($sp)
    lw	$a7,16($sp)
    # lw $t9, -32736($gp) # &sub_0da90000
    lw	$a6,20($sp)
    addiu	$v1,$sp,24
    addiu	$t9,$t9,26400
    bal __glMgrim_CopyTexImage2DEXT
    sw	$v1,4($sp)
    bnez	$v0,.L0da966cc
    ld	$ra,104($sp)
    ld	$gp,88($sp)
    # Line 1371
    ld	$s0,96($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da966cc:
    # Line 1373
    move	$a0,$v0
    move	$a1,$s0
    ld	$a5,40($sp)
    # lw $t9, -30672($gp) # &mgrTM_DoCopyTex
    ld	$a4,32($sp)
    lw	$a3,16($sp)
    jal	mgrTM_DoCopyTex
    lw	$a2,20($sp)
    # Line 1374
    ld	$ra,104($sp)
    ld	$gp,88($sp)
    ld	$s0,96($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da96700:
    # Line 1364
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 1365
    ld	$ra,104($sp)
    ld	$gp,88($sp)
    ld	$s0,96($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end __glMgrim_CopyTexImage2DEXT

# Function: mgrTM_TexImage2D_setup
# Declared: Line 1377 (Source lines: 1380-1533)
# Address: 0x0da96720 - 0x0da96fd8 (Size: 2232 bytes, Frame: 192)
.ent mgrTM_TexImage2D_setup
mgrTM_TexImage2D_setup:
    # Line 1380
    move	$t8,$zero
    move	$t9,$zero
    # Line 1381
    move	$t3,$zero
    # Line 1386
    lw	$t2,__glCurrentContext
    # Line 1380
    move	$v0,$a1
    # Line 1386
    li	$v1,1
    # Line 1380
    addiu	$sp,$sp,-320
    sd	$zero,176($sp)
    sd	$zero,192($sp)
    sd	$zero,160($sp)
    sd	$zero,168($sp)
    sd	$zero,200($sp)
    # Line 1386
    lw	$at,__glBeginMode
    sd	$zero,184($sp)
    sd	$zero,216($sp)
    beq	$at,$v1,.L0da96cc0
    sd	$zero,208($sp)
    # Line 1389
    li	$t0,0x8064
    beq	$a0,$t0,.L0da96940
    li	$t1,3553
    beq	$a0,$t1,.L0da9679c
    li	$at,0x8095
    beq	$a0,$at,.L0da96954
    sd	$ra,224($sp)
.L0da96780:
    # Line 1402
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 1403
    ld	$ra,224($sp)
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,320
.L0da9679c:
    # Line 1395
    li	$a0,2
.L0da967a0:
    # Line 1406
    li	$a1,8
    beq	$a0,$a1,.L0da9695c
    # Line 1411
    li	$v1,-2
    and	$v1,$a5,$v1
    beqz	$v1,.L0da967d8
    nop
.L0da967b8:
    # Line 1413
    # lw $t9, -27320($gp) # &__glSetError
.L0da967bc:
    sd	$ra,224($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 1414
    ld	$ra,224($sp)
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,320
.L0da967d8:
    # Line 1416
    bltz	$v0,.L0da967e4
    slti	$t0,$v0,14
    bnez	$t0,.L0da967f0
.L0da967e4:
    li	$a1,1
    b	.L0da967f4
    nop
.L0da967f0:
    move	$a1,$zero
.L0da967f4:
    bnezl	$a1,.L0da967bc
    # Line 1413
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da967fc:
    # Line 1419
    bltz	$a3,.L0da96820
    li	$a1,1
    slti	$t1,$a3,8193
    beqz	$t1,.L0da96820
    nop
    bltz	$a4,.L0da96820
    slti	$at,$a4,8193
    bnez	$at,.L0da96cb8
    nop
.L0da96820:
    bnez	$a1,.L0da967b8
    lui	$t0,0x1
    sd	$ra,224($sp)
    sd	$v0,56($sp)
    sd	$a3,32($sp)
    sd	$t2,72($sp)
    sd	$a4,24($sp)
    sd	$a5,48($sp)
    sd	$t3,64($sp)
    sd	$a2,80($sp)
    sd	$t8,88($sp)
    sd	$t9,96($sp)
    sd	$a0,104($sp)
    li	$v1,-1
    dsll	$v1,$v1,0x10
    sll	$a1,$a0,0x2
    subu	$a1,$a1,$a0
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a0
    sll	$a1,$a1,0x2
    subu	$a1,$a1,$a0
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$t2
    addu	$t0,$t0,$a1
    sd	$t0,152($sp)
    lw	$t0,-29964($t0)
    ori	$v1,$v1,0x75d0
    beq	$a1,$v1,.L0da968c8
    sd	$t0,144($sp)
    sd	$ra,224($sp)
    sd	$v0,56($sp)
    sd	$a3,32($sp)
    sd	$t2,72($sp)
    sd	$a4,24($sp)
    sd	$a5,48($sp)
    sd	$t3,64($sp)
    sd	$a2,80($sp)
    ld	$t0,144($sp)
    sd	$t8,88($sp)
    sd	$t9,96($sp)
    beqz	$t0,.L0da96e2c
    sd	$a0,104($sp)
.L0da968c8:
    # Line 1425
    ld	$a0,72($sp)
    move	$a1,$a6
    # lw $t9, -30768($gp) # &mgrTM_set_externalformat
    ld	$a3,144($sp)
    move	$a2,$a7
    jal	mgrTM_set_externalformat
    sd	$a3,40($sp)
    beqz	$v0,.L0da96780
    ld	$ra,224($sp)
    ld	$t0,104($sp)
    andi	$t0,$t0,0x1
    beqz	$t0,.L0da96cf8
.L0da968f8:
    ld	$t1,32($sp)
    # Line 1428
    beqz	$t1,.L0da9690c
    ld	$at,24($sp)
    # Line 1430
    bnez	$at,.L0da96974
    ld	$t9,72($sp)
.L0da9690c:
    ld	$v1,40($sp)
.L0da96910:
    # Line 1431
    lbu	$v1,179($v1)
    li	$t0,3
    beq	$v1,$t0,.L0da96ce0
    # Line 1434
    nop	# was lw $t9, -30716($gp) # &mgrTM_RemoveLev
    ld	$a0,72($sp)
    ld	$a1,40($sp)
    jal	mgrTM_RemoveLev
    ld	$a2,56($sp)
    ld	$ra,224($sp)
.L0da96934:
    # Line 1435
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,320
.L0da96940:
    # Line 1392
    lw	$t1,324($sp)
    # Line 1391
    li	$a0,3
    # Line 1392
    li	$t0,-1
    # Line 1393
    b	.L0da967a0
    # Line 1392
    sw	$t0,0($t1)
.L0da96954:
    # Line 1399
    b	.L0da967a0
    # Line 1398
    li	$a0,8
.L0da9695c:
    # Line 1407
    beqz	$v0,.L0da96d10
.L0da96960:
    li	$a1,1
.L0da96964:
    bnezl	$a1,.L0da967bc
    # Line 1413
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da967fc
    nop
.L0da96974:
    # Line 1438
    move	$a0,$t9
    lw	$t9,0($t9)
    jal	__glSetError
    li	$a1,68
    move	$a0,$v0
    sd	$v0,136($sp)
    # Line 1439
    # lw $t9, -17868($gp) # &bzero
    sd	$v0,120($sp)
    # Line 1438
    move	$ra,$v0
    # Line 1439
    jal	bzero
    li	$a1,68
    # Line 1444
    ld	$at,72($sp)
    li	$a7,1
    # Line 1440
    ld	$a3,40($sp)
    # Line 1442
    ld	$t0,32($sp)
    ld	$v1,136($sp)
    # Line 1443
    ld	$v0,24($sp)
    # Line 1441
    ld	$t1,56($sp)
    # Line 1442
    sh	$t0,40($v1)
    # Line 1443
    sh	$v0,42($v1)
    # Line 1444
    ld	$v0,120($sp)
    # Line 1441
    sb	$t1,63($v1)
    # Line 1440
    sw	$a3,0($v1)
    # Line 1444
    sh	$a7,44($v0)
    sh	$a7,46($v0)
    lw	$at,32100($at)
    lui	$v1,0x10
    and	$at,$at,$v1
    beqz	$at,.L0da96a28
    ld	$t0,72($sp)
    lui	$a6,0x1
    addu	$a6,$a6,$t0
    lbu	$at,-32028($a6)
    beqzl	$at,.L0da96de0
    # Line 1446
    lbu	$at,-31948($a6)
    lw	$at,-32036($a6)
    lw	$t0,-32032($a6)
    ld	$v1,24($sp)
    ld	$t1,32($sp)
    subu	$t0,$v1,$t0
    subu	$at,$t1,$at
    addiu	$t1,$at,1
    addiu	$v1,$t0,1
    sd	$v1,24($sp)
    sd	$t1,32($sp)
.L0da96a28:
    # Line 1449
    sw	$zero,12($v0)
.L0da96a2c:
    sw	$zero,16($v0)
    # Line 1451
    ld	$t1,56($sp)
    # Line 1450
    ld	$v1,48($sp)
    # Line 1447
    ld	$at,32($sp)
    ld	$a6,80($sp)
    # Line 1450
    sw	$v1,20($v0)
    # Line 1447
    addu	$v1,$v1,$v1
    # Line 1451
    sw	$a6,24($v0)
    # Line 1448
    ld	$a6,24($sp)
    # Line 1447
    subu	$at,$at,$v1
    sw	$at,4($v0)
    # Line 1448
    subu	$a6,$a6,$v1
    # Line 1451
    beqz	$t1,.L0da96dc0
    # Line 1448
    sw	$a6,8($v0)
.L0da96a64:
    # Line 1458
    lw	$a4,76($a3)
    beqz	$a4,.L0da96e5c
    # Line 1467
    ld	$t1,56($sp)
    lbu	$t0,63($a4)
    slt	$t0,$t0,$t1
    beqz	$t0,.L0da96ab4
    addiu	$a6,$v0,4
    sd	$a6,112($sp)
    # Line 1472
    # lw $t9, -17848($gp) # &memcpy
    li	$a2,24
    addiu	$a1,$a4,4
    jal	memcpy
    addiu	$a0,$sp,0
    # Line 1474
    ld	$a7,40($sp)
    lw	$a7,76($a7)
    ld	$a4,56($sp)
    lbu	$a7,63($a7)
    ld	$a1,112($sp)
    b	.L0da96ae0
    subu	$a4,$a4,$a7
.L0da96ab4:
    # Line 1477
    # lw $t9, -17848($gp) # &memcpy
    li	$a2,24
    move	$a1,$a6
    jal	memcpy
    addiu	$a0,$sp,0
    ld	$a1,40($sp)
    # Line 1478
    lw	$a1,76($a1)
    # Line 1479
    ld	$a4,56($sp)
    lbu	$a7,63($a1)
    # Line 1478
    addiu	$a1,$a1,4
    # Line 1479
    subu	$a4,$a7,$a4
.L0da96ae0:
    ld	$t0,56($sp)
    beq	$t0,$a7,.L0da96b18
    lw	$a6,0($sp)
    addiu	$t2,$a4,-1
    srav	$t1,$a6,$t2
    slti	$t1,$t1,2
    beqz	$t1,.L0da96b1c
    lw	$a7,4($sp)
    # Line 1481
    srav	$at,$a7,$t2
    slti	$at,$at,2
    beqz	$at,.L0da96b1c
    # Line 1483
    li	$v1,1
    b	.L0da96b34
    sd	$v1,64($sp)
.L0da96b18:
    lw	$a7,4($sp)
.L0da96b1c:
    # Line 1485
    srav	$t0,$a6,$a4
    beqz	$t0,.L0da96e14
    sw	$t0,0($sp)
.L0da96b28:
    # Line 1487
    srav	$t1,$a7,$a4
    beqz	$t1,.L0da96e20
    sw	$t1,4($sp)
.L0da96b34:
    ld	$at,64($sp)
    # Line 1488
    beqz	$at,.L0da96d38
    # Line 1491
    nop	# was lw $t9, -30720($gp) # &mgrTM_RemoveTex
.L0da96b40:
    ld	$a0,72($sp)
    jal	mgrTM_RemoveTex
    ld	$a1,40($sp)
    ld	$v0,120($sp)
    # Line 1493
    move	$a0,$v0
    # lw $t9, -32732($gp) # &sub_0daa0000
    # Line 1492
    ld	$v1,56($sp)
    ld	$a1,40($sp)
    # Line 1493
    addiu	$t9,$t9,-29152
    # Line 1492
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a1
    # Line 1493
    bal __glMgrim_TexSubImage4DSGIS
    # Line 1492
    sw	$v0,20($v1)
    ld	$ra,224($sp)
    # Line 1493
    sltiu	$t0,$v0,1
    beqz	$v0,.L0da96bcc
    sd	$t0,96($sp)
    # Line 1495
    # lw $t9, -30764($gp) # &mgrTM_set_internalformat
    ld	$a0,72($sp)
    ld	$a1,40($sp)
    jal	mgrTM_set_internalformat
    ld	$a2,120($sp)
    ld	$ra,224($sp)
    sltiu	$t1,$v0,1
    beqz	$v0,.L0da96bcc
    sd	$t1,160($sp)
    ld	$a0,72($sp)
    # Line 1497
    # lw $t9, -30760($gp) # &mgrTM_process_level
    ld	$a1,40($sp)
    ld	$a2,120($sp)
    jal	mgrTM_process_level
    lw	$a3,324($sp)
    sltiu	$ra,$v0,1
    sd	$ra,168($sp)
    ld	$ra,224($sp)
.L0da96bcc:
    ld	$at,88($sp)
    # Line 1463
    bnez	$at,.L0da96910
    ld	$v1,40($sp)
    ld	$v1,176($sp)
    # Line 1465
    bnez	$v1,.L0da96910
    ld	$v1,40($sp)
    ld	$t0,192($sp)
    # Line 1467
    bnez	$t0,.L0da96910
    ld	$v1,40($sp)
    ld	$t1,96($sp)
    # Line 1493
    bnez	$t1,.L0da96910
    ld	$v1,40($sp)
    ld	$at,160($sp)
    # Line 1495
    bnez	$at,.L0da96910
    ld	$v1,40($sp)
    ld	$v1,168($sp)
    # Line 1497
    bnez	$v1,.L0da96910
    ld	$v1,40($sp)
    ld	$t0,200($sp)
    # Line 1503
    bnez	$t0,.L0da96910
    ld	$v1,40($sp)
    ld	$t1,216($sp)
    # Line 1505
    bnez	$t1,.L0da96910
    ld	$v1,40($sp)
    ld	$at,40($sp)
    lbu	$at,179($at)
    li	$v1,8
    beq	$at,$v1,.L0da96f94
.L0da96c3c:
    ld	$v1,48($sp)
    # Line 1523
    beqz	$v1,.L0da96f8c
    # Line 1526
    li	$v0,-1
.L0da96c48:
    ld	$t1,120($sp)
    # Line 1530
    ld	$a4,40($sp)
    # Line 1527
    sh	$zero,36($t1)
    sh	$zero,38($t1)
    # Line 1528
    ld	$t0,56($sp)
    # Line 1526
    sh	$v0,32($t1)
    sh	$v0,34($t1)
    # Line 1528
    andi	$t0,$t0,0x1
    sb	$t0,58($t1)
    # Line 1530
    lw	$a4,76($a4)
    beqz	$a4,.L0da96c90
    # Line 1531
    ld	$t0,40($sp)
    # Line 1530
    lbu	$at,63($a4)
    ld	$t1,56($sp)
    slt	$t1,$t1,$at
    beqz	$t1,.L0da96c9c
    # Line 1532
    ld	$at,72($sp)
    # Line 1531
    ld	$t0,40($sp)
.L0da96c90:
    ld	$v1,120($sp)
    sw	$v1,76($t0)
    # Line 1532
    ld	$at,72($sp)
.L0da96c9c:
    # Line 1533
    ld	$v0,40($sp)
    lui	$t1,0x1
    # Line 1532
    addu	$t1,$t1,$at
    lw	$t1,-28164($t1)
    # Line 1533
    addiu	$sp,$sp,320
    jr	$ra
    # Line 1532
    sw	$zero,488($t1)
.L0da96cb8:
    b	.L0da96820
    # Line 1419
    move	$a1,$zero
.L0da96cc0:
    # Line 1386
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,224($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,224($sp)
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,320
.L0da96ce0:
    # Line 1433
    # lw $t9, -30720($gp) # &mgrTM_RemoveTex
    ld	$a0,72($sp)
    jal	mgrTM_RemoveTex
    ld	$a1,40($sp)
    b	.L0da96934
    ld	$ra,224($sp)
.L0da96cf8:
    # Line 1428
    ld	$t0,72($sp)
    lui	$v1,0x1
    addu	$v1,$v1,$t0
    lw	$v1,-28164($v1)
    b	.L0da968f8
    sw	$zero,484($v1)
.L0da96d10:
    # Line 1407
    bnez	$a5,.L0da96964
    li	$a1,1
    bne	$a3,$a4,.L0da96960
    li	$t1,128
    beq	$a3,$t1,.L0da96d30
    li	$at,256
    bne	$a3,$at,.L0da96964
    li	$a1,1
.L0da96d30:
    b	.L0da96964
    move	$a1,$zero
.L0da96d38:
    # Line 1490
    # lw $t9, -17796($gp) # &memcmp
    li	$a2,24
    jal	memcmp
    addiu	$a0,$sp,0
    bnez	$v0,.L0da96b40
    # Line 1491
    nop	# was lw $t9, -30720($gp) # &mgrTM_RemoveTex
    ld	$a4,56($sp)
    # Line 1490
    ld	$a6,40($sp)
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a6
    lw	$a6,20($a4)
    beqz	$a6,.L0da96f10
    ld	$a1,120($sp)
    # Line 1509
    lh	$a7,40($a1)
    sh	$a7,40($a6)
    # Line 1510
    move	$a6,$a4
    lw	$a6,20($a4)
    lh	$a5,42($a1)
    # Line 1511
    ld	$a0,72($sp)
    # Line 1510
    sh	$a5,42($a6)
    # Line 1511
    lw	$t9,12($a0)
    jal	mgrTM_RemoveTex
    sd	$a4,128($sp)
    ld	$t0,128($sp)
    # Line 1512
    lw	$t0,20($t0)
    sd	$t0,120($sp)
    lbu	$t0,64($t0)
    beqz	$t0,.L0da96edc
    ld	$ra,224($sp)
    # Line 1514
    move	$v0,$zero
    lw	$t1,324($sp)
    addiu	$sp,$sp,320
    jr	$ra
    sw	$zero,0($t1)
.L0da96dc0:
    # Line 1458
    mtc1	$a6,$f1
    nop
    cvt.d.w	$f1,$f1
    ldc1	$f0,_lit8_3fd0000000000000
    div.d	$f0,$f0,$f1
    cvt.s.d	$f0,$f0
    b	.L0da96a64
    swc1	$f0,120($a3)
.L0da96de0:
    # Line 1446
    beqzl	$at,.L0da96a2c
    # Line 1449
    sw	$zero,12($v0)
    # Line 1446
    lw	$t0,-31956($a6)
    lw	$at,-31952($a6)
    ld	$t1,24($sp)
    ld	$v1,32($sp)
    subu	$at,$t1,$at
    subu	$t0,$v1,$t0
    addiu	$v1,$t0,1
    addiu	$t1,$at,1
    sd	$t1,24($sp)
    b	.L0da96a28
    sd	$v1,32($sp)
.L0da96e14:
    li	$v1,1
    b	.L0da96b28
    # Line 1486
    sw	$v1,0($sp)
.L0da96e20:
    li	$t0,1
    b	.L0da96b34
    # Line 1488
    sw	$t0,4($sp)
.L0da96e2c:
    sd	$a6,240($sp)
    # Line 1423
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    sd	$a7,232($sp)
    li	$a0,0x8a30
    jal	mgrTM_RefreshDim
    addu	$a0,$a1,$a0
    ld	$a6,152($sp)
    lw	$a6,-29964($a6)
    ld	$a7,232($sp)
    sd	$a6,144($sp)
    b	.L0da968c8
    ld	$a6,240($sp)
.L0da96e5c:
    ld	$a7,120($sp)
    # Line 1463
    # lw $t9, -32732($gp) # &sub_0daa0000
    # Line 1462
    ld	$t0,56($sp)
    # Line 1463
    move	$a0,$a7
    addiu	$t9,$t9,-29152
    # Line 1462
    sll	$t0,$t0,0x2
    addu	$t0,$t0,$a3
    # Line 1463
    bal __glMgrim_TexSubImage4DSGIS
    # Line 1462
    sw	$a7,20($t0)
    ld	$ra,224($sp)
    # Line 1463
    sltiu	$t1,$v0,1
    beqz	$v0,.L0da96bcc
    sd	$t1,88($sp)
    # Line 1465
    # lw $t9, -30764($gp) # &mgrTM_set_internalformat
    ld	$a0,72($sp)
    ld	$a1,40($sp)
    jal	mgrTM_set_internalformat
    ld	$a2,120($sp)
    sltiu	$ra,$v0,1
    sd	$ra,176($sp)
    beqz	$v0,.L0da96bcc
    ld	$ra,224($sp)
    ld	$a0,72($sp)
    # Line 1467
    # lw $t9, -30760($gp) # &mgrTM_process_level
    ld	$a1,40($sp)
    ld	$a2,120($sp)
    jal	mgrTM_process_level
    lw	$a3,324($sp)
    ld	$ra,224($sp)
    sltiu	$at,$v0,1
    b	.L0da96bcc
    sd	$at,192($sp)
.L0da96edc:
    ld	$a1,120($sp)
    # Line 1514
    lw	$a1,28($a1)
    beqz	$a1,.L0da96ef8
    ld	$t1,184($sp)
    lbu	$t0,89($a1)
    beqz	$t0,.L0da96f60
.L0da96ef4:
    ld	$t1,184($sp)
.L0da96ef8:
    # Line 1503
    move	$at,$t1
    bnez	$t1,.L0da96bcc
    sd	$t1,200($sp)
    ld	$v1,208($sp)
    b	.L0da96bcc
    sd	$v1,216($sp)
.L0da96f10:
    ld	$a1,120($sp)
    # lw $t9, -32732($gp) # &sub_0daa0000
    move	$a0,$a1
    addiu	$t9,$t9,-29152
    bal __glMgrim_TexSubImage4DSGIS
    # Line 1502
    sw	$a1,20($a4)
    # Line 1503
    sltiu	$ra,$v0,1
    sd	$ra,184($sp)
    beqz	$v0,.L0da96ef4
    ld	$ra,224($sp)
    ld	$a0,72($sp)
    # Line 1505
    # lw $t9, -30760($gp) # &mgrTM_process_level
    ld	$a1,40($sp)
    ld	$a2,120($sp)
    jal	mgrTM_process_level
    lw	$a3,324($sp)
    ld	$ra,224($sp)
    sltiu	$at,$v0,1
    b	.L0da96ef4
    sd	$at,208($sp)
.L0da96f60:
    # Line 1515
    lw	$v1,324($sp)
    lw	$v1,0($v1)
    blez	$v1,.L0da96ef4
    ld	$a0,72($sp)
    # Line 1516
    # lw $t9, -30756($gp) # &mgrTM_MakeResident
    li	$a4,1
    li	$a3,1
    jal	mgrTM_MakeResident
    li	$a2,1
    b	.L0da96ef4
    ld	$ra,224($sp)
.L0da96f8c:
    b	.L0da96c48
    # Line 1526
    move	$v0,$zero
.L0da96f94:
    ld	$a5,120($sp)
    # Line 1523
    li	$a4,1
    # Line 1522
    lh	$a3,44($a5)
    # Line 1523
    li	$a1,402
    ld	$a2,40($sp)
    # Line 1522
    addiu	$a3,$a3,1
    sh	$a3,44($a5)
    # Line 1523
    ld	$a0,72($sp)
    lw	$a2,20($a2)
    la	$a3,SYMBOL_LOCATION
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a2,28($a2)
    lw	$a3,276($a3)
    jal	__glMgrasWrite
    lh	$a2,74($a2)
    b	.L0da96c3c
    ld	$ra,224($sp)
.end mgrTM_TexImage2D_setup

# Function: __glMgrim_TexSubImage2DEXT
# Declared: Line 1537 (Source lines: 1540-1549)
# Address: 0x0da96fd8 - 0x0da9709c (Size: 196 bytes, Frame: 240)
.globl __glMgrim_TexSubImage2DEXT
.ent __glMgrim_TexSubImage2DEXT
__glMgrim_TexSubImage2DEXT:
    # Line 1540
    addiu	$sp,$sp,-112
    sd	$s2,8($sp)
    move	$s2,$a7
    sd	$s1,24($sp)
    move	$s1,$a6
    sd	$s0,32($sp)
    move	$s0,$a1
    sd	$gp,16($sp)
    lui	$v0,0x16
    lw	$at,116($sp)
    addiu	$v0,$v0,30400
    addu	$gp,$t9,$v0
    beqz	$at,.L0da97084
    sd	$at,0($sp)
    # Line 1544
    move	$a1,$s0
    # lw $t9, -32736($gp) # &sub_0da90000
    move	$a6,$s1
    sd	$ra,40($sp)
    addiu	$t9,$t9,29272
    bal __glMgrim_CopyTexSubImage2DEXT
    move	$a7,$s2
    bnez	$v0,.L0da9704c
    ld	$ra,40($sp)
    ld	$gp,16($sp)
    # Line 1546
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da9704c:
    # Line 1548
    move	$a0,$v0
    move	$a1,$s0
    # lw $t9, -30680($gp) # &mgrTM_DoTexLoad
    move	$a2,$s1
    move	$a3,$s2
    jal	mgrTM_DoTexLoad
    ld	$a4,0($sp)
    ld	$gp,16($sp)
    # Line 1549
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,24($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da97084:
    ld	$gp,16($sp)
    # Line 1543
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glMgrim_TexSubImage2DEXT

# Function: __glMgrIsCurrentGLXReadVideo
# Declared: Line 1563 (Source lines: 1564-1585)
# Address: 0x0da9709c - 0x0da97148 (Size: 172 bytes, Frame: 48)
.globl __glMgrIsCurrentGLXReadVideo
.ent __glMgrIsCurrentGLXReadVideo
__glMgrIsCurrentGLXReadVideo:
    # Line 1564
    addiu	$sp,$sp,-48
    sd	$gp,24($sp)
    lui	$at,0x16
    sd	$a0,8($sp)
    # Line 1565
    lw	$a0,__glCurrentContext
    # Line 1564
    addiu	$at,$at,30204
    addu	$gp,$t9,$at
    # Line 1568
    lw	$t9,64($a0)
    sd	$ra,16($sp)
    jalr	$t9
    sd	$a1,0($sp)
    lw	$v1,0($v0)
    ld	$gp,24($sp)
    li	$a2,3
    bne	$v1,$a2,.L0da9711c
    # Line 1585
    ld	$ra,16($sp)
    # Line 1570
    lw	$a0,28($v0)
    ld	$gp,24($sp)
    # Line 1575
    li	$a2,0x8058
    # Line 1570
    lw	$a0,20($a0)
    li	$a3,0x8051
    beq	$a0,$a3,.L0da97138
    # Line 1582
    li	$v0,1
    # Line 1575
    beq	$a0,$a2,.L0da97128
    ld	$a3,0($sp)
    # Line 1579
    sw	$a0,0($a3)
.L0da97104:
    # Line 1580
    ld	$at,8($sp)
    li	$ra,5121
    sw	$ra,0($at)
    # Line 1582
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da9711c:
    # Line 1585
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,48
.L0da97128:
    # Line 1577
    li	$v1,6408
    ld	$a2,0($sp)
    b	.L0da97104
    sw	$v1,0($a2)
.L0da97138:
    # Line 1575
    ld	$at,0($sp)
    li	$a3,6407
    b	.L0da97104
    sw	$a3,0($at)
.end __glMgrIsCurrentGLXReadVideo

# Function: __glMgrim_CopyTexSubImage2DEXT
# Declared: Line 1589 (Source lines: 1591-1619)
# Address: 0x0da97148 - 0x0da97258 (Size: 272 bytes, Frame: 160)
.globl __glMgrim_CopyTexSubImage2DEXT
.ent __glMgrim_CopyTexSubImage2DEXT
__glMgrim_CopyTexSubImage2DEXT:
    # Line 1591
    addiu	$sp,$sp,-160
    sd	$s0,64($sp)
    move	$s0,$a1
    # Line 1605
    addiu	$a1,$sp,4
    sd	$s5,80($sp)
    # Line 1591
    move	$s5,$a0
    # Line 1605
    addiu	$a0,$sp,0
    sd	$a7,32($sp)
    sd	$a6,24($sp)
    sd	$a5,40($sp)
    sd	$a4,48($sp)
    sd	$gp,72($sp)
    # Line 1591
    lui	$at,0x16
    addiu	$at,$at,30032
    addu	$gp,$t9,$at
    # Line 1605
    # lw $t9, -31356($gp) # &__glMgrIsCurrentGLXReadVideo
    sd	$a3,16($sp)
    sd	$ra,88($sp)
    bal __glMgrIsCurrentGLXReadVideo
    sd	$a2,8($sp)
    beqz	$v0,.L0da9723c
    sd	$v0,56($sp)
    # Line 1609
    move	$a0,$s5
.L0da971a4:
    move	$a1,$s0
    ld	$a2,8($sp)
    ld	$a3,16($sp)
    ld	$a4,24($sp)
    # lw $t9, -32736($gp) # &sub_0da90000
    ld	$a5,32($sp)
    lw	$a7,0($sp)
    addiu	$t9,$t9,29272
    bal __glMgrim_CopyTexSubImage2DEXT
    lw	$a6,4($sp)
    # Line 1611
    ld	$ra,88($sp)
    # Line 1609
    beqz	$v0,.L0da97220
    # Line 1614
    li	$v1,1
    ld	$at,56($sp)
    # Line 1611
    beqz	$at,.L0da97234
    nop
    # Line 1614
    sb	$v1,194($v0)
.L0da971e8:
    # Line 1618
    move	$a0,$v0
    move	$a1,$s0
    ld	$a5,40($sp)
    # lw $t9, -30672($gp) # &mgrTM_DoCopyTex
    ld	$a4,48($sp)
    lw	$a3,0($sp)
    jal	mgrTM_DoCopyTex
    lw	$a2,4($sp)
    ld	$gp,72($sp)
    # Line 1619
    ld	$ra,88($sp)
    ld	$s0,64($sp)
    ld	$s5,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0da97220:
    # Line 1611
    ld	$s5,80($sp)
    ld	$gp,72($sp)
    ld	$s0,64($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0da97234:
    b	.L0da971e8
    # Line 1616
    sb	$zero,194($v0)
.L0da9723c:
    # Line 1607
    # lw $t9, -30432($gp) # &__glMgrGetVisualInfo
    addiu	$a2,$sp,4
    addiu	$a1,$sp,0
    jal	__glMgrGetVisualInfo
    li	$a0,6144
    b	.L0da971a4
    # Line 1609
    move	$a0,$s5
.end __glMgrim_CopyTexSubImage2DEXT

# Function: mgrTM_TexSubImage2D_setup
# Declared: Line 1622 (Source lines: 1625-1690)
# Address: 0x0da97258 - 0x0da97658 (Size: 1024 bytes, Frame: 176)
.ent mgrTM_TexSubImage2D_setup
mgrTM_TexSubImage2D_setup:
    # Line 1630
    lw	$v0,__glCurrentContext
    # Line 1648
    li	$t1,-1
    # Line 1630
    li	$t3,1
    lw	$at,__glBeginMode
    # Line 1625
    addiu	$sp,$sp,-176
    sd	$s0,56($sp)
    # Line 1630
    beq	$at,$t3,.L0da97550
    # Line 1625
    move	$s0,$a1
    # Line 1630
    li	$v1,3553
    beq	$a0,$v1,.L0da97350
    # Line 1637
    li	$t0,0x8095
    bne	$a0,$t0,.L0da97330
    # Line 1647
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1637
    beqz	$s0,.L0da972b8
    # Line 1644
    li	$a1,8
    # Line 1641
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,64($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 1642
    ld	$ra,64($sp)
    move	$v0,$zero
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da972b8:
    # Line 1648
    lui	$t2,0x1
.L0da972bc:
    dsll	$t1,$t1,0x10
    ori	$t1,$t1,0x75d0
    sll	$t9,$a1,0x2
    subu	$t9,$t9,$a1
    sll	$t9,$t9,0x2
    addu	$t9,$t9,$a1
    sll	$t9,$t9,0x2
    subu	$t9,$t9,$a1
    sll	$t9,$t9,0x2
    addu	$t9,$t9,$v0
    addu	$a0,$t2,$t9
    beq	$t9,$t1,.L0da972fc
    lw	$t8,-29964($a0)
    sd	$a0,40($sp)
    beqz	$t8,.L0da975bc
    sd	$t9,72($sp)
.L0da972fc:
    # Line 1654
    sll	$t9,$s0,0x2
    addu	$t9,$t9,$t8
    lw	$t9,20($t9)
    # Line 1652
    move	$a1,$t8
    # Line 1654
    beqz	$t9,.L0da97624
    move	$a0,$t9
    # Line 1656
    lbu	$at,64($t9)
    beqz	$at,.L0da97368
    # Line 1665
    lui	$t1,0x10
    # Line 1659
    ld	$s0,56($sp)
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,176
.L0da97330:
    sd	$ra,64($sp)
    # Line 1647
    jalr	$t9
    li	$a0,1280
    # Line 1648
    ld	$ra,64($sp)
    move	$v0,$zero
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da97350:
    # Line 1633
    bltz	$s0,.L0da97574
    slti	$v1,$s0,14
    beqz	$v1,.L0da97574
    # Line 1637
    li	$a1,2
    b	.L0da972bc
    # Line 1648
    lui	$t2,0x1
.L0da97368:
    # Line 1661
    lw	$s0,20($t9)
    # Line 1663
    sh	$a4,40($t9)
    # Line 1664
    sh	$a5,42($t9)
    # Line 1665
    sh	$t3,46($a0)
    sh	$t3,44($a0)
    lw	$t0,32100($v0)
    and	$t0,$t0,$t1
    beqz	$t0,.L0da973b0
    addu	$t3,$t2,$v0
    lbu	$at,-32028($t3)
    beqzl	$at,.L0da97598
    # Line 1667
    lbu	$at,-31948($t3)
    lw	$t0,-32036($t3)
    lw	$t1,-32032($t3)
    subu	$a4,$a4,$t0
    subu	$a5,$a5,$t1
    addiu	$a5,$a5,1
    addiu	$a4,$a4,1
.L0da973b0:
    # Line 1669
    blez	$a4,.L0da97508
    addu	$t2,$a2,$a4
    blez	$a5,.L0da97508
    negu	$t3,$s0
    slt	$at,$a2,$t3
    bnez	$at,.L0da9750c
    # Line 1671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1669
    lw	$t8,4($a0)
    addu	$t9,$t8,$s0
    slt	$v1,$t9,$t2
    bnez	$v1,.L0da97508
    slt	$t0,$a3,$t3
    bnezl	$t0,.L0da9750c
    # Line 1671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1669
    lw	$t1,8($a0)
    addu	$t1,$t1,$s0
    addu	$at,$a3,$a5
    slt	$t1,$t1,$at
    bnez	$t1,.L0da97508
    # Line 1672
    andi	$at,$t2,0x1f
    beqz	$at,.L0da97410
    # Line 1675
    sll	$v1,$s0,0x1
    bne	$t2,$t9,.L0da9752c
    sll	$v1,$s0,0x1
.L0da97410:
    addu	$v1,$v1,$t8
    beql	$v1,$a4,.L0da97448
    sd	$v0,48($sp)
    sd	$ra,64($sp)
    sd	$v0,48($sp)
    sd	$a4,8($sp)
    sd	$a5,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a0,80($sp)
    slti	$t0,$a4,32
    bnez	$t0,.L0da9752c
    sd	$a1,0($sp)
    sd	$v0,48($sp)
.L0da97448:
    sd	$a4,8($sp)
    sd	$a5,16($sp)
    sd	$a0,80($sp)
    move	$a0,$v0
    sd	$a1,0($sp)
    # Line 1679
    move	$a1,$a6
    sd	$a2,24($sp)
    move	$a2,$a7
    # lw $t9, -30768($gp) # &mgrTM_set_externalformat
    sd	$a3,32($sp)
    sd	$ra,64($sp)
    jal	mgrTM_set_externalformat
    ld	$a3,0($sp)
    ld	$ra,64($sp)
    beqz	$v0,.L0da97648
    ld	$a0,80($sp)
    # Line 1684
    sh	$zero,36($a0)
    sh	$zero,38($a0)
    # Line 1683
    ld	$at,32($sp)
    # Line 1682
    ld	$v1,24($sp)
    # Line 1684
    lw	$a1,28($a0)
    # Line 1683
    sh	$at,34($a0)
    # Line 1682
    sh	$v1,32($a0)
    # Line 1684
    lbu	$t1,89($a1)
    bnez	$t1,.L0da974fc
    ld	$v0,0($sp)
    lw	$t0,4($a0)
    ld	$t1,8($sp)
    addu	$v0,$s0,$s0
    addu	$t0,$t0,$v0
    bne	$t0,$t1,.L0da974e0
    # Line 1688
    move	$a4,$zero
    # Line 1684
    lw	$t1,8($a0)
    ld	$at,16($sp)
    addu	$t1,$t1,$v0
    bne	$t1,$at,.L0da974e0
    # Line 1688
    move	$a4,$zero
    li	$a4,1
.L0da974e0:
    # lw $t9, -30756($gp) # &mgrTM_MakeResident
    ld	$a0,48($sp)
    li	$a3,1
    jal	mgrTM_MakeResident
    li	$a2,1
    ld	$ra,64($sp)
    ld	$v0,0($sp)
.L0da974fc:
    # Line 1690
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da97508:
    # Line 1671
    # lw $t9, -27320($gp) # &__glSetError
.L0da9750c:
    sd	$ra,64($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 1672
    ld	$ra,64($sp)
    move	$v0,$zero
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da9752c:
    # Line 1677
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,64($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$ra,64($sp)
    move	$v0,$zero
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da97550:
    # Line 1630
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,64($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,64($sp)
    move	$v0,$zero
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da97574:
    # Line 1634
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,64($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 1635
    ld	$ra,64($sp)
    move	$v0,$zero
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da97598:
    # Line 1667
    beqz	$at,.L0da973b0
    nop
    lw	$t1,-31952($t3)
    lw	$t0,-31956($t3)
    subu	$a5,$a5,$t1
    addiu	$a5,$a5,1
    subu	$a4,$a4,$t0
    b	.L0da973b0
    addiu	$a4,$a4,1
.L0da975bc:
    sd	$v0,48($sp)
    sd	$a4,8($sp)
    sd	$a5,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a7,96($sp)
    sd	$a6,88($sp)
    sd	$ra,64($sp)
    # Line 1651
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    ld	$a0,72($sp)
    li	$a1,0x8a30
    jal	mgrTM_RefreshDim
    addu	$a0,$a0,$a1
    lui	$t2,0x1
    li	$t3,1
    ld	$a6,88($sp)
    ld	$a7,96($sp)
    ld	$a3,32($sp)
    ld	$a2,24($sp)
    ld	$a5,16($sp)
    ld	$a4,8($sp)
    ld	$v0,48($sp)
    ld	$t8,40($sp)
    ld	$ra,64($sp)
    b	.L0da972fc
    lw	$t8,-29964($t8)
.L0da97624:
    # Line 1655
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,64($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 1656
    ld	$ra,64($sp)
    move	$v0,$zero
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da97648:
    # Line 1680
    move	$v0,$zero
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end mgrTM_TexSubImage2D_setup

# Function: __glMgrim_TexImage3DEXT
# Declared: Line 1694 (Source lines: 1697-1803)
# Address: 0x0da97658 - 0x0da97c58 (Size: 1536 bytes, Frame: 160)
.globl __glMgrim_TexImage3DEXT
.ent __glMgrim_TexImage3DEXT
__glMgrim_TexImage3DEXT:
    # Line 1703
    lw	$v0,__glCurrentContext
    # Line 1697
    move	$t2,$zero
    move	$t8,$zero
    move	$t3,$zero
    # Line 1703
    li	$v1,1
    # Line 1697
    addiu	$sp,$sp,-288
    sd	$zero,176($sp)
    sd	$zero,184($sp)
    sd	$zero,152($sp)
    sd	$zero,168($sp)
    sd	$zero,160($sp)
    sd	$zero,144($sp)
    sd	$gp,192($sp)
    # Line 1703
    lw	$at,__glBeginMode
    # Line 1697
    lui	$t0,0x16
    addiu	$t0,$t0,28736
    # Line 1703
    beq	$at,$v1,.L0da97ad0
    # Line 1697
    addu	$gp,$t9,$t0
    # Line 1706
    lw	$t9,300($sp)
    # Line 1707
    li	$v1,0x806f
    li	$at,0x8070
    # Line 1706
    sltu	$t1,$zero,$t9
    # Line 1707
    beq	$a0,$at,.L0da97710
    # Line 1706
    sw	$t1,0($sp)
    # Line 1707
    beq	$a0,$v1,.L0da976dc
    sd	$ra,200($sp)
.L0da976c0:
    # Line 1717
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 1718
    ld	$ra,200($sp)
    ld	$gp,192($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0da976dc:
    # Line 1713
    li	$a0,4
.L0da976e0:
    # Line 1719
    bnezl	$a1,.L0da976f4
    # Line 1724
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1722
    beqz	$a6,.L0da97720
    nop
.L0da976f0:
    # Line 1724
    # lw $t9, -27320($gp) # &__glSetError
.L0da976f4:
    sd	$ra,200($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 1725
    ld	$ra,200($sp)
    ld	$gp,192($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0da97710:
    # Line 1710
    li	$t0,-1
    # Line 1709
    li	$a0,5
    # Line 1711
    b	.L0da976e0
    # Line 1710
    sw	$t0,0($sp)
.L0da97720:
    # Line 1727
    bltz	$a3,.L0da9774c
    slti	$t1,$a3,8193
    beqz	$t1,.L0da97750
    li	$a6,1
    bltz	$a4,.L0da9774c
    slti	$at,$a4,8193
    beqz	$at,.L0da97750
    li	$a6,1
    bltz	$a5,.L0da9774c
    slti	$v1,$a5,513
    bnez	$v1,.L0da97af0
.L0da9774c:
    li	$a6,1
.L0da97750:
    bnez	$a6,.L0da976f0
    sll	$t0,$a0,0x2
    sd	$ra,200($sp)
    sd	$v0,32($sp)
    sd	$a3,56($sp)
    sd	$a1,8($sp)
    sd	$a4,48($sp)
    sd	$a5,40($sp)
    sd	$t2,208($sp)
    sd	$a7,64($sp)
    sd	$t3,72($sp)
    sd	$t8,88($sp)
    sd	$a2,96($sp)
    sd	$t9,104($sp)
    lui	$a6,0x1
    li	$t1,-1
    dsll	$t1,$t1,0x10
    ori	$t1,$t1,0x75d0
    subu	$t0,$t0,$a0
    sll	$t0,$t0,0x2
    addu	$t0,$t0,$a0
    sll	$t0,$t0,0x2
    subu	$t0,$t0,$a0
    sll	$t0,$t0,0x2
    addu	$t0,$t0,$v0
    sd	$t0,128($sp)
    addu	$a6,$a6,$t0
    sd	$a6,120($sp)
    beq	$t0,$t1,.L0da977fc
    lw	$a6,-29964($a6)
    sd	$ra,200($sp)
    sd	$v0,32($sp)
    sd	$a3,56($sp)
    sd	$a1,8($sp)
    sd	$a4,48($sp)
    sd	$a5,40($sp)
    sd	$t2,208($sp)
    sd	$a7,64($sp)
    sd	$t3,72($sp)
    sd	$t8,88($sp)
    sd	$a2,96($sp)
    beqz	$a6,.L0da97c38
    sd	$t9,104($sp)
.L0da977fc:
    # Line 1733
    move	$a3,$a6
    sd	$a6,80($sp)
    # Line 1734
    ld	$a1,64($sp)
    # lw $t9, -30768($gp) # &mgrTM_set_externalformat
    lw	$a2,292($sp)
    ld	$a0,32($sp)
    jal	mgrTM_set_externalformat
    sd	$a2,24($sp)
    ld	$t1,40($sp)
    beqz	$v0,.L0da976c0
    ld	$t0,48($sp)
    # Line 1736
    ld	$v1,32($sp)
    ld	$at,56($sp)
    lui	$v0,0x1
    addu	$v0,$v0,$v1
    lw	$v1,-28164($v0)
    slti	$at,$at,2
    bnez	$at,.L0da97aac
    sw	$zero,484($v1)
    beqz	$t0,.L0da97ab0
    # Line 1740
    nop	# was lw $t9, -30716($gp) # &mgrTM_RemoveLev
    # Line 1738
    beqz	$t1,.L0da97aac
    sd	$v0,16($sp)
    ld	$t9,32($sp)
    # Line 1744
    move	$a0,$t9
    lw	$t9,0($t9)
    jal	mgrTM_RemoveLev
    li	$a1,68
    move	$a0,$v0
    sd	$v0,216($sp)
    # Line 1745
    # lw $t9, -17868($gp) # &bzero
    sd	$v0,136($sp)
    # Line 1744
    move	$ra,$v0
    # Line 1745
    jal	bzero
    li	$a1,68
    # Line 1751
    ld	$at,32($sp)
    li	$a7,1
    # Line 1750
    ld	$v1,40($sp)
    ld	$t0,80($sp)
    # Line 1746
    ld	$a5,216($sp)
    # Line 1749
    ld	$v0,48($sp)
    # Line 1747
    ld	$a0,8($sp)
    # Line 1746
    sw	$t0,0($a5)
    # Line 1749
    sh	$v0,42($a5)
    # Line 1747
    sb	$a0,63($a5)
    # Line 1748
    ld	$a0,56($sp)
    # Line 1750
    sh	$v1,44($a5)
    # Line 1751
    sh	$a7,46($a5)
    # Line 1748
    sh	$a0,40($a5)
    # Line 1751
    lw	$at,32100($at)
    lui	$v1,0x10
    and	$at,$at,$v1
    beqz	$at,.L0da978f8
    ld	$t1,16($sp)
    lbu	$t1,-32028($t1)
    beqz	$t1,.L0da97c0c
    ld	$t0,16($sp)
    # Line 1753
    lw	$v1,-32032($t0)
    lw	$t0,-32036($t0)
    subu	$a0,$a0,$t0
    subu	$v0,$v0,$v1
    addiu	$v0,$v0,1
    addiu	$a0,$a0,1
.L0da978f8:
    # Line 1759
    ld	$a6,8($sp)
    # Line 1754
    sw	$a0,4($a5)
    # Line 1755
    sw	$v0,8($a5)
    # Line 1757
    sw	$zero,16($a5)
    # Line 1759
    ld	$t0,96($sp)
    # Line 1758
    sw	$zero,20($a5)
    # Line 1756
    ld	$t1,40($sp)
    # Line 1759
    sw	$t0,24($a5)
    ld	$t0,80($sp)
    # Line 1756
    sw	$t1,12($a5)
    # Line 1759
    lw	$t2,76($t0)
    sll	$a6,$a6,0x2
    beqz	$t2,.L0da97b9c
    addu	$a6,$a6,$t0
    sd	$a6,112($sp)
    # Line 1772
    li	$a2,24
    # lw $t9, -17796($gp) # &memcmp
    ld	$a1,136($sp)
    addiu	$a0,$t2,4
    jal	memcmp
    addiu	$a1,$a1,4
    beqz	$v0,.L0da97af8
    # Line 1773
    nop	# was lw $t9, -30720($gp) # &mgrTM_RemoveTex
    ld	$a0,32($sp)
    jal	mgrTM_RemoveTex
    ld	$a1,80($sp)
    # Line 1775
    ld	$a2,136($sp)
    # lw $t9, -32732($gp) # &sub_0daa0000
    # Line 1774
    ld	$a3,112($sp)
    # Line 1775
    move	$a0,$a2
    addiu	$t9,$t9,-29152
    bal __glMgrim_TexSubImage4DSGIS
    # Line 1774
    sw	$a2,20($a3)
    # Line 1775
    sltiu	$a0,$v0,1
    beqz	$v0,.L0da979dc
    ld	$ra,200($sp)
    sd	$a0,208($sp)
    # Line 1777
    # lw $t9, -30764($gp) # &mgrTM_set_internalformat
    ld	$a0,32($sp)
    ld	$a1,80($sp)
    jal	mgrTM_set_internalformat
    ld	$a2,136($sp)
    ld	$a0,208($sp)
    sltiu	$ra,$v0,1
    sd	$ra,152($sp)
    beqz	$v0,.L0da979dc
    ld	$ra,200($sp)
    ld	$a0,32($sp)
    # Line 1779
    # lw $t9, -30760($gp) # &mgrTM_process_level
    ld	$a1,80($sp)
    ld	$a2,136($sp)
    jal	mgrTM_process_level
    addiu	$a3,$sp,0
    ld	$ra,200($sp)
    ld	$a0,208($sp)
    sltiu	$at,$v0,1
    sd	$at,176($sp)
.L0da979dc:
    # Line 1775
    move	$v1,$a0
.L0da979e0:
    beqz	$a0,.L0da97b80
    sd	$a0,88($sp)
.L0da979e8:
    ld	$t0,72($sp)
    # Line 1764
    bnez	$t0,.L0da97aac
    ld	$t1,144($sp)
    # Line 1766
    bnez	$t1,.L0da97aac
    ld	$at,160($sp)
    # Line 1768
    bnez	$at,.L0da97aac
    ld	$v1,88($sp)
    # Line 1775
    bnez	$v1,.L0da97aac
    ld	$t0,168($sp)
    # Line 1777
    bnez	$t0,.L0da97aac
    ld	$t1,184($sp)
    # Line 1779
    bnez	$t1,.L0da97aac
    # Line 1793
    ld	$at,136($sp)
    # Line 1796
    move	$a0,$zero
    li	$v1,1
    # Line 1793
    sb	$v1,58($at)
    # Line 1792
    sh	$zero,32($at)
    sh	$zero,34($at)
    # Line 1796
    lhu	$v0,54($at)
    # Line 1792
    sh	$zero,36($at)
    sh	$zero,38($at)
    # Line 1797
    sra	$v0,$v0,0x1
    beqz	$v0,.L0da97a60
    # Line 1796
    sh	$zero,52($at)
.L0da97a48:
    # Line 1797
    sra	$v0,$v0,0x1
    addiu	$a0,$a0,1
    ld	$t0,136($sp)
    andi	$a0,$a0,0xffff
    bnez	$v0,.L0da97a48
    sh	$a0,52($t0)
.L0da97a60:
    # Line 1799
    ld	$v1,80($sp)
    ld	$at,136($sp)
    # Line 1800
    ld	$t1,16($sp)
    # Line 1799
    sw	$at,76($v1)
    # Line 1800
    lw	$t1,-28164($t1)
    sw	$zero,488($t1)
    lw	$t0,0($sp)
    blez	$t0,.L0da97aa0
    ld	$a0,80($sp)
    # Line 1802
    move	$a1,$zero
    # lw $t9, -30680($gp) # &mgrTM_DoTexLoad
    ld	$a2,64($sp)
    ld	$a3,24($sp)
    jal	mgrTM_DoTexLoad
    ld	$a4,104($sp)
    ld	$ra,200($sp)
.L0da97aa0:
    ld	$gp,192($sp)
    # Line 1803
    jr	$ra
    addiu	$sp,$sp,288
.L0da97aac:
    # Line 1740
    # lw $t9, -30716($gp) # &mgrTM_RemoveLev
.L0da97ab0:
    ld	$a0,32($sp)
    ld	$a1,80($sp)
    jal	mgrTM_RemoveLev
    ld	$a2,8($sp)
    # Line 1741
    ld	$ra,200($sp)
    ld	$gp,192($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0da97ad0:
    # Line 1703
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,200($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,200($sp)
    ld	$gp,192($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0da97af0:
    b	.L0da97750
    # Line 1727
    move	$a6,$zero
.L0da97af8:
    # Line 1783
    ld	$a2,112($sp)
    ld	$a1,136($sp)
    lw	$a4,20($a2)
    lh	$a3,40($a1)
    sh	$a3,40($a4)
    # Line 1784
    lw	$a2,20($a2)
    lh	$a0,42($a1)
    sh	$a0,42($a2)
    # Line 1785
    ld	$a0,32($sp)
    lw	$t9,12($a0)
    jalr	$t9
    nop
    ld	$a1,112($sp)
    # Line 1786
    lw	$a1,20($a1)
    sd	$a1,136($sp)
    lw	$a1,28($a1)
    ld	$ra,200($sp)
    beqz	$a1,.L0da979dc
    ld	$a0,208($sp)
    lbu	$t0,89($a1)
    bnez	$t0,.L0da979e0
    # Line 1775
    move	$v1,$a0
    # Line 1787
    lw	$t1,0($sp)
    blez	$t1,.L0da979e0
    # Line 1775
    move	$v1,$a0
    ld	$a0,32($sp)
    # Line 1788
    # lw $t9, -30756($gp) # &mgrTM_MakeResident
    li	$a4,1
    li	$a3,1
    jal	mgrTM_MakeResident
    li	$a2,1
    ld	$ra,200($sp)
    b	.L0da979dc
    ld	$a0,208($sp)
.L0da97b80:
    ld	$at,152($sp)
    # Line 1777
    move	$v1,$at
    bnez	$at,.L0da979e8
    sd	$at,168($sp)
    ld	$t0,176($sp)
    b	.L0da979e8
    sd	$t0,184($sp)
.L0da97b9c:
    # Line 1764
    # lw $t9, -32732($gp) # &sub_0daa0000
    move	$a0,$a5
    addiu	$t9,$t9,-29152
    bal __glMgrim_TexSubImage4DSGIS
    # Line 1763
    sw	$a5,20($a6)
    # Line 1764
    sltiu	$ra,$v0,1
    sd	$ra,72($sp)
    beqz	$v0,.L0da979e8
    ld	$ra,200($sp)
    # Line 1766
    # lw $t9, -30764($gp) # &mgrTM_set_internalformat
    ld	$a0,32($sp)
    ld	$a1,80($sp)
    jal	mgrTM_set_internalformat
    ld	$a2,136($sp)
    ld	$ra,200($sp)
    sltiu	$at,$v0,1
    beqz	$v0,.L0da979e8
    sd	$at,144($sp)
    ld	$a0,32($sp)
    # Line 1768
    # lw $t9, -30760($gp) # &mgrTM_process_level
    ld	$a1,80($sp)
    ld	$a2,136($sp)
    jal	mgrTM_process_level
    addiu	$a3,$sp,0
    ld	$ra,200($sp)
    sltiu	$v0,$v0,1
    b	.L0da979e8
    sd	$v0,160($sp)
.L0da97c0c:
    ld	$v1,16($sp)
    # Line 1753
    lbu	$v1,-31948($v1)
    beqz	$v1,.L0da978f8
    ld	$t0,16($sp)
    lw	$v1,-31952($t0)
    lw	$t0,-31956($t0)
    subu	$a0,$a0,$t0
    subu	$v0,$v0,$v1
    addiu	$v0,$v0,1
    b	.L0da978f8
    addiu	$a0,$a0,1
.L0da97c38:
    # Line 1732
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    ld	$a0,128($sp)
    li	$a1,0x8a30
    jal	mgrTM_RefreshDim
    addu	$a0,$a0,$a1
    ld	$a6,120($sp)
    b	.L0da977fc
    lw	$a6,-29964($a6)
.end __glMgrim_TexImage3DEXT

# Function: __glMgrim_TexSubImage3DEXT
# Declared: Line 1806 (Source lines: 1810-1867)
# Address: 0x0da97c58 - 0x0da98068 (Size: 1040 bytes, Frame: 192)
.globl __glMgrim_TexSubImage3DEXT
.ent __glMgrim_TexSubImage3DEXT
__glMgrim_TexSubImage3DEXT:
    # Line 1815
    li	$t2,1
    # Line 1810
    addiu	$sp,$sp,-192
    sd	$s2,64($sp)
    # Line 1815
    lw	$s2,__glCurrentContext
    sd	$s1,80($sp)
    # Line 1810
    move	$s1,$a6
    sd	$s0,72($sp)
    move	$s0,$a5
    sd	$gp,88($sp)
    # Line 1815
    lw	$at,__glBeginMode
    # Line 1810
    lui	$v0,0x16
    addiu	$v0,$v0,27200
    # Line 1815
    beq	$at,$t2,.L0da97fcc
    # Line 1810
    addu	$gp,$t9,$v0
    # Line 1815
    lw	$t1,212($sp)
    beqz	$t1,.L0da97f3c
    # Line 1817
    li	$v1,0x806f
    beq	$a0,$v1,.L0da97cd0
    # Line 1820
    lui	$a5,0x1
    # Line 1819
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,96($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,88($sp)
    # Line 1820
    ld	$s0,72($sp)
    ld	$ra,96($sp)
    ld	$s1,80($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da97cd0:
    addu	$a5,$s2,$a5
    li	$a0,-1
    dsll	$a0,$a0,0x10
    ori	$a0,$a0,0x72a0
    beq	$s2,$a0,.L0da97cf0
    lw	$a0,-29148($a5)
    beqzl	$a0,.L0da97ff8
    sd	$a7,24($sp)
.L0da97cf0:
    # Line 1824
    beqz	$a1,.L0da97d24
    move	$a6,$a0
    # Line 1827
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,96($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$gp,88($sp)
    # Line 1828
    ld	$s0,72($sp)
    ld	$ra,96($sp)
    ld	$s1,80($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da97d24:
    # Line 1830
    lw	$a0,20($a6)
    beqz	$a0,.L0da97fa4
    # Line 1832
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1839
    sh	$t2,46($a0)
    # Line 1838
    sh	$a7,44($a0)
    # Line 1837
    sh	$s1,42($a0)
    # Line 1836
    sh	$s0,40($a0)
    # Line 1839
    lw	$t0,32100($s2)
    lui	$at,0x10
    and	$t0,$t0,$at
    beqz	$t0,.L0da97d78
    nop
    lbu	$v0,-32028($a5)
    beqzl	$v0,.L0da97f80
    # Line 1841
    lbu	$v1,-31948($a5)
    lw	$at,-32036($a5)
    lw	$v0,-32032($a5)
    subu	$s0,$s0,$at
    subu	$s1,$s1,$v0
    addiu	$s1,$s1,1
    addiu	$s0,$s0,1
.L0da97d78:
    # Line 1843
    blez	$s0,.L0da97f10
    addu	$at,$a3,$s1
    blez	$s1,.L0da97f14
    # Line 1846
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1843
    blez	$a7,.L0da97f14
    # Line 1846
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1843
    bltz	$a2,.L0da97f10
    addu	$a1,$a2,$s0
    lw	$a5,4($a0)
    sltu	$v1,$a5,$a1
    bnez	$v1,.L0da97f14
    # Line 1846
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1843
    bltz	$a3,.L0da97f14
    # Line 1846
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1843
    lw	$t0,8($a0)
    slt	$t0,$t0,$at
    bnez	$t0,.L0da97f14
    # Line 1846
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1843
    bltz	$a4,.L0da97f14
    # Line 1846
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1843
    lw	$v0,12($a0)
    addu	$v1,$a4,$a7
    slt	$v0,$v0,$v1
    bnez	$v0,.L0da97f10
    # Line 1847
    andi	$t0,$a1,0x1f
    beqz	$t0,.L0da97dec
    # Line 1850
    sll	$at,$a5,0x1
    bne	$at,$a1,.L0da97f58
    # Line 1852
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da97dec:
    # Line 1850
    beql	$a5,$s0,.L0da97e20
    sd	$a7,24($sp)
    sd	$ra,96($sp)
    sd	$a7,24($sp)
    sd	$a2,32($sp)
    sd	$a0,104($sp)
    sd	$a3,40($sp)
    sd	$a4,48($sp)
    sd	$a6,0($sp)
    slti	$v0,$s0,32
    bnez	$v0,.L0da97f54
    sd	$t1,56($sp)
    sd	$a7,24($sp)
.L0da97e20:
    sd	$a4,48($sp)
    sd	$a6,0($sp)
    sd	$t1,56($sp)
    sd	$a3,40($sp)
    move	$a3,$a6
    sd	$a0,104($sp)
    # Line 1854
    move	$a0,$s2
    sd	$ra,96($sp)
    sd	$a2,32($sp)
    lw	$a2,204($sp)
    # lw $t9, -30768($gp) # &mgrTM_set_externalformat
    lw	$a1,196($sp)
    sd	$a2,16($sp)
    jal	mgrTM_set_externalformat
    sd	$a1,8($sp)
    ld	$ra,96($sp)
    beqz	$v0,.L0da98050
    ld	$a0,104($sp)
    # Line 1860
    sh	$zero,38($a0)
    lw	$a1,28($a0)
    # Line 1859
    ld	$t0,48($sp)
    # Line 1858
    ld	$at,40($sp)
    # Line 1857
    ld	$v0,32($sp)
    # Line 1859
    sh	$t0,36($a0)
    # Line 1858
    sh	$at,34($a0)
    # Line 1857
    sh	$v0,32($a0)
    # Line 1860
    lbu	$v1,89($a1)
    bnezl	$v1,.L0da97edc
    ld	$a0,0($sp)
    lw	$v1,4($a0)
    bne	$v1,$s0,.L0da97ec4
    # Line 1864
    move	$a4,$zero
    # Line 1860
    lw	$t0,8($a0)
    bne	$t0,$s1,.L0da97ec0
    # Line 1864
    ld	$v0,24($sp)
    lw	$at,12($a0)
    bne	$at,$v0,.L0da97ec4
    move	$a4,$zero
    b	.L0da97ec4
    li	$a4,1
.L0da97ec0:
    move	$a4,$zero
.L0da97ec4:
    # lw $t9, -30756($gp) # &mgrTM_MakeResident
    move	$a0,$s2
    li	$a3,1
    jal	mgrTM_MakeResident
    li	$a2,1
    ld	$a0,0($sp)
.L0da97edc:
    # Line 1866
    move	$a1,$zero
    # lw $t9, -30680($gp) # &mgrTM_DoTexLoad
    ld	$a2,8($sp)
    ld	$a3,16($sp)
    jal	mgrTM_DoTexLoad
    ld	$a4,56($sp)
    ld	$ra,96($sp)
    ld	$gp,88($sp)
    # Line 1867
    ld	$s0,72($sp)
    ld	$s1,80($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da97f10:
    # Line 1846
    # lw $t9, -27320($gp) # &__glSetError
.L0da97f14:
    sd	$ra,96($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$gp,88($sp)
    # Line 1847
    ld	$s0,72($sp)
    ld	$ra,96($sp)
    ld	$s1,80($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da97f3c:
    ld	$gp,88($sp)
    # Line 1817
    ld	$s0,72($sp)
    ld	$s1,80($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da97f54:
    # Line 1852
    # lw $t9, -27320($gp) # &__glSetError
.L0da97f58:
    sd	$ra,96($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$gp,88($sp)
    ld	$s0,72($sp)
    ld	$ra,96($sp)
    ld	$s1,80($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da97f80:
    # Line 1841
    beqz	$v1,.L0da97d78
    nop
    lw	$v0,-31952($a5)
    lw	$at,-31956($a5)
    subu	$s1,$s1,$v0
    addiu	$s1,$s1,1
    subu	$s0,$s0,$at
    b	.L0da97d78
    addiu	$s0,$s0,1
.L0da97fa4:
    sd	$ra,96($sp)
    # Line 1832
    jalr	$t9
    li	$a0,1282
    ld	$gp,88($sp)
    # Line 1833
    ld	$s0,72($sp)
    ld	$ra,96($sp)
    ld	$s1,80($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da97fcc:
    # Line 1815
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,96($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,88($sp)
    ld	$s0,72($sp)
    ld	$ra,96($sp)
    ld	$s1,80($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da97ff8:
    sd	$a2,32($sp)
    sd	$a3,40($sp)
    sd	$a4,48($sp)
    sd	$a1,120($sp)
    sd	$a5,112($sp)
    sd	$t1,56($sp)
    # Line 1823
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    sd	$ra,96($sp)
    li	$a0,0x8d60
    jal	mgrTM_RefreshDim
    addu	$a0,$s2,$a0
    li	$t2,1
    ld	$t1,56($sp)
    ld	$a1,120($sp)
    ld	$a4,48($sp)
    ld	$a3,40($sp)
    ld	$a2,32($sp)
    ld	$a7,24($sp)
    ld	$a5,112($sp)
    ld	$ra,96($sp)
    b	.L0da97cf0
    lw	$a0,-29148($a5)
.L0da98050:
    ld	$gp,88($sp)
    # Line 1855
    ld	$s0,72($sp)
    ld	$s1,80($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glMgrim_TexSubImage3DEXT

# Function: __glMgrim_CopyTexSubImage3DEXT
# Declared: Line 1870 (Source lines: 1872-1944)
# Address: 0x0da98068 - 0x0da9845c (Size: 1012 bytes, Frame: 192)
.globl __glMgrim_CopyTexSubImage3DEXT
.ent __glMgrim_CopyTexSubImage3DEXT
__glMgrim_CopyTexSubImage3DEXT:
    # Line 1872
    move	$t2,$a4
    move	$v0,$a2
    move	$t3,$a5
    # Line 1882
    li	$t1,-1
    # Line 1878
    li	$t8,1
    # Line 1872
    addiu	$sp,$sp,-192
    sd	$s1,96($sp)
    # Line 1878
    lw	$s1,__glCurrentContext
    sd	$s0,88($sp)
    # Line 1872
    move	$s0,$a7
    sd	$gp,80($sp)
    # Line 1878
    lw	$at,__glBeginMode
    # Line 1872
    lui	$v1,0x16
    addiu	$v1,$v1,26160
    # Line 1878
    beq	$at,$t8,.L0da983b4
    # Line 1872
    addu	$gp,$t9,$v1
    # Line 1878
    li	$t0,0x806f
    beq	$a0,$t0,.L0da980dc
    # Line 1882
    dsll	$t1,$t1,0x10
    # Line 1881
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,112($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,80($sp)
    # Line 1882
    ld	$ra,112($sp)
    ld	$s0,88($sp)
    ld	$s1,96($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da980dc:
    lui	$a5,0x1
    addu	$a5,$s1,$a5
    ori	$t1,$t1,0x72a0
    beq	$s1,$t1,.L0da980f8
    lw	$a0,-29148($a5)
    beqzl	$a0,.L0da983dc
    sd	$v0,8($sp)
.L0da980f8:
    # Line 1887
    beqz	$a1,.L0da98128
    move	$a4,$a0
    # Line 1890
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,112($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$gp,80($sp)
    # Line 1891
    ld	$ra,112($sp)
    ld	$s0,88($sp)
    ld	$s1,96($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da98128:
    # Line 1893
    lw	$a0,20($a4)
    beqz	$a0,.L0da98334
    # Line 1895
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1899
    sh	$s0,40($a0)
    # Line 1900
    lw	$a2,196($sp)
    # Line 1901
    sh	$t8,46($a0)
    sh	$t8,44($a0)
    # Line 1900
    sh	$a2,42($a0)
    # Line 1901
    lw	$t0,32100($s1)
    lui	$t1,0x10
    and	$t0,$t0,$t1
    beqz	$t0,.L0da98180
    nop
    lbu	$at,-32028($a5)
    beqzl	$at,.L0da98310
    # Line 1903
    lbu	$at,-31948($a5)
    lw	$at,-32036($a5)
    lw	$t0,-32032($a5)
    subu	$s0,$s0,$at
    subu	$a2,$a2,$t0
    addiu	$a2,$a2,1
    addiu	$s0,$s0,1
.L0da98180:
    # Line 1905
    blez	$s0,.L0da982c0
    addu	$v1,$a3,$a2
    blez	$a2,.L0da982c4
    # Line 1907
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1905
    bltz	$v0,.L0da982c4
    # Line 1907
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1905
    lw	$a7,4($a0)
    addu	$a5,$v0,$s0
    sltu	$t1,$a7,$a5
    bnez	$t1,.L0da982c0
    # Line 1908
    andi	$t0,$a5,0x1f
    # Line 1905
    bltz	$a3,.L0da982c4
    # Line 1907
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1905
    lw	$at,8($a0)
    slt	$at,$at,$v1
    bnez	$at,.L0da982c4
    # Line 1907
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1908
    beqz	$t0,.L0da981d4
    # Line 1912
    sll	$t1,$a7,0x1
    bne	$t1,$a5,.L0da982ec
    # Line 1914
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da981d4:
    # Line 1912
    beql	$a7,$s0,.L0da98210
    sd	$v0,8($sp)
    sd	$ra,112($sp)
    sd	$v0,8($sp)
    sd	$a1,16($sp)
    sd	$a3,24($sp)
    sd	$a0,32($sp)
    sd	$a2,40($sp)
    sd	$a4,48($sp)
    sd	$t2,56($sp)
    sd	$t3,64($sp)
    slti	$at,$s0,32
    bnez	$at,.L0da982e8
    sd	$a6,72($sp)
    sd	$v0,8($sp)
.L0da98210:
    sd	$a3,24($sp)
    sd	$a2,40($sp)
    sd	$a4,48($sp)
    sd	$t2,56($sp)
    sd	$t3,64($sp)
    sd	$a6,72($sp)
    sd	$a1,16($sp)
    # Line 1925
    addiu	$a1,$sp,4
    # lw $t9, -31356($gp) # &__glMgrIsCurrentGLXReadVideo
    sd	$a0,32($sp)
    sd	$ra,112($sp)
    bal __glMgrIsCurrentGLXReadVideo
    addiu	$a0,$sp,0
    beqz	$v0,.L0da98434
.L0da98248:
    # Line 1929
    ld	$v1,8($sp)
    ld	$t0,32($sp)
    # Line 1931
    ld	$t1,56($sp)
    # Line 1930
    ld	$at,24($sp)
    # Line 1932
    sh	$zero,38($t0)
    # Line 1931
    sh	$t1,36($t0)
    # Line 1930
    sh	$at,34($t0)
    # Line 1932
    lw	$a1,28($t0)
    # Line 1929
    sh	$v1,32($t0)
    # Line 1932
    lbu	$v1,89($a1)
    beqz	$v1,.L0da98358
    ld	$t1,32($sp)
.L0da98278:
    # Line 1935
    beqz	$v0,.L0da983a8
    ld	$t1,48($sp)
    li	$t0,1
    # Line 1939
    sb	$t0,194($t1)
.L0da98288:
    ld	$a0,48($sp)
    # Line 1943
    ld	$a1,16($sp)
    ld	$a5,72($sp)
    # lw $t9, -30672($gp) # &mgrTM_DoCopyTex
    ld	$a4,64($sp)
    lw	$a3,0($sp)
    jal	mgrTM_DoCopyTex
    lw	$a2,4($sp)
    ld	$gp,80($sp)
    # Line 1944
    ld	$ra,112($sp)
    ld	$s0,88($sp)
    ld	$s1,96($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da982c0:
    # Line 1907
    # lw $t9, -27320($gp) # &__glSetError
.L0da982c4:
    sd	$ra,112($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$gp,80($sp)
    # Line 1908
    ld	$ra,112($sp)
    ld	$s0,88($sp)
    ld	$s1,96($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da982e8:
    # Line 1914
    # lw $t9, -27320($gp) # &__glSetError
.L0da982ec:
    sd	$ra,112($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$gp,80($sp)
    ld	$ra,112($sp)
    ld	$s0,88($sp)
    ld	$s1,96($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da98310:
    # Line 1903
    beqz	$at,.L0da98180
    nop
    lw	$t0,-31952($a5)
    lw	$at,-31956($a5)
    subu	$a2,$a2,$t0
    addiu	$a2,$a2,1
    subu	$s0,$s0,$at
    b	.L0da98180
    addiu	$s0,$s0,1
.L0da98334:
    sd	$ra,112($sp)
    # Line 1895
    jalr	$t9
    li	$a0,1282
    ld	$gp,80($sp)
    # Line 1896
    ld	$ra,112($sp)
    ld	$s0,88($sp)
    ld	$s1,96($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da98358:
    # Line 1932
    lw	$t1,4($t1)
    bne	$t1,$s0,.L0da98384
    ld	$at,32($sp)
    ld	$v1,40($sp)
    lw	$at,8($at)
    bne	$at,$v1,.L0da98384
    ld	$v1,32($sp)
    # Line 1935
    lw	$v1,12($v1)
    li	$t0,1
    beql	$v1,$t0,.L0da98454
    sd	$v0,104($sp)
.L0da98384:
    sd	$v0,104($sp)
    move	$a4,$zero
.L0da9838c:
    # lw $t9, -30756($gp) # &mgrTM_MakeResident
    move	$a0,$s1
    li	$a3,1
    jal	mgrTM_MakeResident
    li	$a2,1
    b	.L0da98278
    ld	$v0,104($sp)
.L0da983a8:
    ld	$t0,48($sp)
    b	.L0da98288
    # Line 1941
    sb	$zero,194($t0)
.L0da983b4:
    # Line 1878
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,112($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,80($sp)
    ld	$ra,112($sp)
    ld	$s0,88($sp)
    ld	$s1,96($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da983dc:
    sd	$a1,16($sp)
    sd	$a3,24($sp)
    sd	$a5,120($sp)
    sd	$t2,56($sp)
    sd	$t3,64($sp)
    sd	$a6,72($sp)
    # Line 1886
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    sd	$ra,112($sp)
    li	$a0,0x8d60
    jal	mgrTM_RefreshDim
    addu	$a0,$s1,$a0
    li	$t8,1
    ld	$a6,72($sp)
    ld	$t3,64($sp)
    ld	$t2,56($sp)
    ld	$a3,24($sp)
    ld	$a1,16($sp)
    ld	$v0,8($sp)
    ld	$a5,120($sp)
    ld	$ra,112($sp)
    b	.L0da980f8
    lw	$a0,-29148($a5)
.L0da98434:
    sd	$v0,104($sp)
    # Line 1927
    # lw $t9, -30432($gp) # &__glMgrGetVisualInfo
    addiu	$a2,$sp,4
    addiu	$a1,$sp,0
    jal	__glMgrGetVisualInfo
    li	$a0,6144
    b	.L0da98248
    ld	$v0,104($sp)
.L0da98454:
    # Line 1935
    b	.L0da9838c
    li	$a4,1
.end __glMgrim_CopyTexSubImage3DEXT

# Function: __glMgrim_TexImage4DSGIS
# Declared: Line 1947 (Source lines: 1950-2055)
# Address: 0x0da9845c - 0x0da98a1c (Size: 1472 bytes, Frame: 160)
.globl __glMgrim_TexImage4DSGIS
.ent __glMgrim_TexImage4DSGIS
__glMgrim_TexImage4DSGIS:
    # Line 1956
    lw	$t2,__glCurrentContext
    # Line 1950
    move	$t3,$zero
    move	$t8,$zero
    # Line 1956
    li	$v1,1
    # Line 1950
    addiu	$sp,$sp,-288
    sd	$zero,160($sp)
    sd	$zero,168($sp)
    sd	$zero,136($sp)
    sd	$zero,152($sp)
    sd	$zero,176($sp)
    sd	$zero,144($sp)
    sd	$zero,128($sp)
    sd	$gp,184($sp)
    move	$v0,$a1
    # Line 1956
    lw	$at,__glBeginMode
    # Line 1950
    lui	$a1,0x16
    addiu	$a1,$a1,25148
    # Line 1956
    beq	$at,$v1,.L0da988ac
    # Line 1950
    addu	$gp,$t9,$a1
    # Line 1959
    lw	$a1,308($sp)
    # Line 1960
    li	$at,0x8134
    li	$t1,0x8135
    # Line 1959
    sltu	$t0,$zero,$a1
    # Line 1960
    beq	$a0,$t1,.L0da9858c
    # Line 1959
    sw	$t0,0($sp)
    # Line 1960
    beq	$a0,$at,.L0da984e4
    sd	$ra,192($sp)
.L0da984c8:
    # Line 1970
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 1971
    ld	$ra,192($sp)
    ld	$gp,184($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0da984e4:
    # Line 1966
    li	$a0,6
.L0da984e8:
    # Line 1972
    bnez	$v0,.L0da9856c
    # Line 1980
    slti	$t0,$a4,8193
    # Line 1975
    bnez	$a7,.L0da98570
    # Line 1977
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1980
    bltz	$a3,.L0da98534
    slti	$v1,$a3,8193
    beqz	$v1,.L0da98538
    li	$a7,1
    bltz	$a4,.L0da98538
    li	$a7,1
    beqz	$t0,.L0da98538
    li	$a7,1
    bltz	$a5,.L0da98534
    slti	$t1,$a5,513
    beqz	$t1,.L0da98538
    li	$a7,1
    bltz	$a6,.L0da98534
    slti	$at,$a6,257
    bnez	$at,.L0da98a14
.L0da98534:
    li	$a7,1
.L0da98538:
    sd	$ra,192($sp)
    sd	$v0,8($sp)
    sd	$a3,80($sp)
    sd	$a4,72($sp)
    sd	$t2,56($sp)
    sd	$a5,32($sp)
    sd	$a6,24($sp)
    sd	$t3,208($sp)
    sd	$t8,64($sp)
    sd	$a2,88($sp)
    sd	$a1,96($sp)
    beqz	$a7,.L0da9859c
    sd	$a0,216($sp)
.L0da9856c:
    # Line 1977
    # lw $t9, -27320($gp) # &__glSetError
.L0da98570:
    sd	$ra,192($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 1978
    ld	$ra,192($sp)
    ld	$gp,184($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0da9858c:
    # Line 1963
    li	$v1,-1
    # Line 1962
    li	$a0,7
    # Line 1964
    b	.L0da984e8
    # Line 1963
    sw	$v1,0($sp)
.L0da9859c:
    # Line 1986
    # lw $t9, -30768($gp) # &mgrTM_set_externalformat
    lw	$a1,292($sp)
    lw	$a2,300($sp)
    ld	$a4,56($sp)
    # Line 1985
    ld	$a5,216($sp)
    sd	$a2,48($sp)
    # Line 1986
    move	$a0,$a4
    # Line 1985
    sll	$a3,$a5,0x2
    subu	$a3,$a3,$a5
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a5
    sll	$a3,$a3,0x2
    subu	$a3,$a3,$a5
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a4
    lui	$a4,0x1
    addu	$a3,$a3,$a4
    lw	$a3,-29964($a3)
    sd	$a1,40($sp)
    # Line 1986
    jal	mgrTM_set_externalformat
    sd	$a3,104($sp)
    beqz	$v0,.L0da984c8
    ld	$at,24($sp)
    # Line 1988
    ld	$v1,56($sp)
    ld	$t0,80($sp)
    lui	$v0,0x1
    addu	$v0,$v0,$v1
    lw	$t1,-28164($v0)
    slti	$t0,$t0,2
    bnez	$t0,.L0da98888
    sw	$zero,484($t1)
    ld	$t0,72($sp)
    beqz	$t0,.L0da98888
    ld	$t1,32($sp)
    # Line 1990
    beqz	$t1,.L0da9888c
    # Line 1992
    nop	# was lw $t9, -30716($gp) # &mgrTM_RemoveLev
    # Line 1990
    beqz	$at,.L0da98888
    sd	$v0,16($sp)
    ld	$t9,56($sp)
    # Line 1996
    move	$a0,$t9
    lw	$t9,0($t9)
    jal	mgrTM_RemoveLev
    li	$a1,68
    move	$a0,$v0
    sd	$v0,200($sp)
    # Line 1997
    # lw $t9, -17868($gp) # &bzero
    sd	$v0,112($sp)
    # Line 1996
    move	$ra,$v0
    # Line 1997
    jal	bzero
    li	$a1,68
    # Line 1999
    ld	$t1,8($sp)
    # Line 2000
    ld	$a1,80($sp)
    # Line 2003
    ld	$v1,24($sp)
    # Line 1998
    ld	$a7,200($sp)
    # Line 2002
    ld	$t0,32($sp)
    # Line 2001
    ld	$v0,72($sp)
    # Line 2003
    sh	$v1,46($a7)
    # Line 2002
    sh	$t0,44($a7)
    ld	$at,104($sp)
    # Line 2001
    sh	$v0,42($a7)
    # Line 2000
    sh	$a1,40($a7)
    # Line 1998
    sw	$at,0($a7)
    # Line 2003
    ld	$at,56($sp)
    # Line 1999
    sb	$t1,63($a7)
    # Line 2003
    lw	$at,32100($at)
    lui	$v1,0x10
    and	$at,$at,$v1
    beqz	$at,.L0da986d4
    ld	$v1,16($sp)
    lbu	$v1,-32028($v1)
    beqz	$v1,.L0da989e8
    ld	$t0,16($sp)
    # Line 2005
    lw	$v1,-32032($t0)
    lw	$t0,-32036($t0)
    subu	$a1,$a1,$t0
    subu	$v0,$v0,$v1
    addiu	$v0,$v0,1
    addiu	$a1,$a1,1
.L0da986d4:
    # Line 2010
    sw	$zero,20($a7)
    # Line 2007
    sw	$v0,8($a7)
    # Line 2006
    sw	$a1,4($a7)
    # Line 2008
    ld	$v1,32($sp)
    # Line 2009
    ld	$at,24($sp)
    # Line 2011
    ld	$t3,88($sp)
    # Line 2008
    sw	$v1,12($a7)
    # Line 2009
    sw	$at,16($a7)
    # Line 2011
    ld	$at,104($sp)
    sw	$t3,24($a7)
    ld	$t2,8($sp)
    lw	$t3,76($at)
    sll	$t2,$t2,0x2
    beqz	$t3,.L0da9896c
    addu	$t2,$t2,$at
    sd	$t2,120($sp)
    # Line 2024
    li	$a2,24
    # lw $t9, -17796($gp) # &memcmp
    ld	$a1,112($sp)
    addiu	$a0,$t3,4
    jal	memcmp
    addiu	$a1,$a1,4
    beqz	$v0,.L0da988cc
    # Line 2025
    nop	# was lw $t9, -30720($gp) # &mgrTM_RemoveTex
    ld	$a0,56($sp)
    jal	mgrTM_RemoveTex
    ld	$a1,104($sp)
    # Line 2027
    ld	$a2,112($sp)
    # lw $t9, -32732($gp) # &sub_0daa0000
    # Line 2026
    ld	$a3,120($sp)
    # Line 2027
    move	$a0,$a2
    addiu	$t9,$t9,-29152
    bal __glMgrim_TexSubImage4DSGIS
    # Line 2026
    sw	$a2,20($a3)
    # Line 2027
    sltiu	$a0,$v0,1
    beqz	$v0,.L0da987bc
    ld	$ra,192($sp)
    sd	$a0,208($sp)
    # Line 2029
    # lw $t9, -30764($gp) # &mgrTM_set_internalformat
    ld	$a0,56($sp)
    ld	$a1,104($sp)
    jal	mgrTM_set_internalformat
    ld	$a2,112($sp)
    ld	$a0,208($sp)
    sltiu	$ra,$v0,1
    sd	$ra,136($sp)
    beqz	$v0,.L0da987bc
    ld	$ra,192($sp)
    ld	$a0,56($sp)
    # Line 2031
    # lw $t9, -30760($gp) # &mgrTM_process_level
    ld	$a1,104($sp)
    ld	$a2,112($sp)
    jal	mgrTM_process_level
    addiu	$a3,$sp,0
    ld	$ra,192($sp)
    ld	$a0,208($sp)
    sltiu	$at,$v0,1
    sd	$at,160($sp)
.L0da987bc:
    # Line 2027
    beqz	$a0,.L0da98950
    move	$a5,$a0
.L0da987c4:
    ld	$v1,64($sp)
    # Line 2016
    bnez	$v1,.L0da98888
    ld	$t0,128($sp)
    # Line 2018
    bnez	$t0,.L0da98888
    ld	$t1,144($sp)
    # Line 2020
    bnez	$t1,.L0da9888c
    # Line 1992
    nop	# was lw $t9, -30716($gp) # &mgrTM_RemoveLev
    # Line 2027
    bnez	$a5,.L0da98888
    ld	$at,152($sp)
    # Line 2029
    bnez	$at,.L0da98888
    ld	$v1,168($sp)
    # Line 2031
    bnez	$v1,.L0da98888
    # Line 2045
    ld	$t0,112($sp)
    # Line 2048
    move	$v0,$zero
    li	$t1,1
    # Line 2045
    sb	$t1,58($t0)
    # Line 2044
    sh	$zero,32($t0)
    sh	$zero,34($t0)
    # Line 2048
    lhu	$a0,54($t0)
    # Line 2044
    sh	$zero,36($t0)
    sh	$zero,38($t0)
    # Line 2049
    sra	$a0,$a0,0x1
    beqz	$a0,.L0da9883c
    # Line 2048
    sh	$zero,52($t0)
.L0da98824:
    # Line 2049
    sra	$a0,$a0,0x1
    addiu	$v0,$v0,1
    ld	$at,112($sp)
    andi	$v0,$v0,0xffff
    bnez	$a0,.L0da98824
    sh	$v0,52($at)
.L0da9883c:
    # Line 2051
    ld	$at,104($sp)
    ld	$t1,112($sp)
    # Line 2052
    ld	$t0,16($sp)
    # Line 2051
    sw	$t1,76($at)
    # Line 2052
    lw	$t0,-28164($t0)
    sw	$zero,488($t0)
    lw	$v1,0($sp)
    blez	$v1,.L0da9887c
    ld	$a0,104($sp)
    # Line 2054
    move	$a1,$zero
    # lw $t9, -30680($gp) # &mgrTM_DoTexLoad
    ld	$a2,40($sp)
    ld	$a3,48($sp)
    jal	mgrTM_DoTexLoad
    ld	$a4,96($sp)
    ld	$ra,192($sp)
.L0da9887c:
    ld	$gp,184($sp)
    # Line 2055
    jr	$ra
    addiu	$sp,$sp,288
.L0da98888:
    # Line 1992
    # lw $t9, -30716($gp) # &mgrTM_RemoveLev
.L0da9888c:
    ld	$a0,56($sp)
    ld	$a1,104($sp)
    jal	mgrTM_RemoveLev
    ld	$a2,8($sp)
    # Line 1993
    ld	$ra,192($sp)
    ld	$gp,184($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0da988ac:
    # Line 1956
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,192($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,192($sp)
    ld	$gp,184($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0da988cc:
    # Line 2035
    ld	$v1,120($sp)
    ld	$a1,112($sp)
    lw	$a2,20($v1)
    lh	$a0,40($a1)
    sh	$a0,40($a2)
    # Line 2036
    lw	$v1,20($v1)
    lh	$v0,42($a1)
    # Line 2037
    ld	$a0,56($sp)
    # Line 2036
    sh	$v0,42($v1)
    # Line 2037
    lw	$t9,12($a0)
    jalr	$t9
    nop
    ld	$a1,120($sp)
    # Line 2038
    lw	$a1,20($a1)
    sd	$a1,112($sp)
    lw	$a1,28($a1)
    ld	$ra,192($sp)
    beqz	$a1,.L0da987bc
    ld	$a0,208($sp)
    lbu	$t0,89($a1)
    bnez	$t0,.L0da987bc
    # Line 2039
    lw	$t1,0($sp)
    blez	$t1,.L0da987bc
    nop
    ld	$a0,56($sp)
    # Line 2040
    # lw $t9, -30756($gp) # &mgrTM_MakeResident
    li	$a4,1
    li	$a3,1
    jal	mgrTM_MakeResident
    li	$a2,1
    ld	$ra,192($sp)
    b	.L0da987bc
    ld	$a0,208($sp)
.L0da98950:
    ld	$at,136($sp)
    # Line 2029
    move	$v1,$at
    bnez	$at,.L0da987c4
    sd	$at,152($sp)
    ld	$t0,160($sp)
    b	.L0da987c4
    sd	$t0,168($sp)
.L0da9896c:
    # Line 2016
    # lw $t9, -32732($gp) # &sub_0daa0000
    move	$a0,$a7
    addiu	$t9,$t9,-29152
    bal __glMgrim_TexSubImage4DSGIS
    # Line 2015
    sw	$a7,20($t2)
    ld	$a5,176($sp)
    # Line 2016
    sltiu	$ra,$v0,1
    sd	$ra,64($sp)
    beqz	$v0,.L0da987c4
    ld	$ra,192($sp)
    # Line 2018
    # lw $t9, -30764($gp) # &mgrTM_set_internalformat
    ld	$a0,56($sp)
    ld	$a1,104($sp)
    jal	mgrTM_set_internalformat
    ld	$a2,112($sp)
    ld	$ra,192($sp)
    ld	$a5,176($sp)
    sltiu	$at,$v0,1
    beqz	$v0,.L0da987c4
    sd	$at,128($sp)
    ld	$a0,56($sp)
    # Line 2020
    # lw $t9, -30760($gp) # &mgrTM_process_level
    ld	$a1,104($sp)
    ld	$a2,112($sp)
    jal	mgrTM_process_level
    addiu	$a3,$sp,0
    ld	$ra,192($sp)
    ld	$a5,176($sp)
    sltiu	$v0,$v0,1
    b	.L0da987c4
    sd	$v0,144($sp)
.L0da989e8:
    ld	$v1,16($sp)
    # Line 2005
    lbu	$v1,-31948($v1)
    beqz	$v1,.L0da986d4
    ld	$t0,16($sp)
    lw	$v1,-31952($t0)
    lw	$t0,-31956($t0)
    subu	$a1,$a1,$t0
    subu	$v0,$v0,$v1
    addiu	$v0,$v0,1
    b	.L0da986d4
    addiu	$a1,$a1,1
.L0da98a14:
    b	.L0da98538
    # Line 1980
    move	$a7,$zero
.end __glMgrim_TexImage4DSGIS

# Function: __glMgrim_TexSubImage4DSGIS
# Declared: Line 2058 (Source lines: 2062-2121)
# Address: 0x0da98a1c - 0x0da98e20 (Size: 1028 bytes, Frame: 192)
.globl __glMgrim_TexSubImage4DSGIS
.ent __glMgrim_TexSubImage4DSGIS
__glMgrim_TexSubImage4DSGIS:
    # Line 2067
    li	$v0,1
    # Line 2062
    addiu	$sp,$sp,-192
    sd	$s2,72($sp)
    # Line 2067
    lw	$s2,__glCurrentContext
    sd	$s0,88($sp)
    # Line 2062
    move	$s0,$a6
    sd	$s1,80($sp)
    move	$s1,$a7
    sd	$gp,96($sp)
    # Line 2067
    lw	$at,__glBeginMode
    # Line 2062
    lui	$v1,0x16
    addiu	$v1,$v1,23676
    # Line 2067
    beq	$at,$v0,.L0da98dc0
    # Line 2062
    addu	$gp,$t9,$v1
    # Line 2067
    li	$t0,0x8134
    beq	$a0,$t0,.L0da98a8c
    # Line 2074
    lui	$a7,0x1
    # Line 2070
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,120($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,96($sp)
    # Line 2071
    ld	$s0,88($sp)
    ld	$ra,120($sp)
    ld	$s1,80($sp)
    ld	$s2,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da98a8c:
    # Line 2074
    addu	$a7,$s2,$a7
    beqz	$a1,.L0da98ac4
    lw	$a0,-28740($a7)
    # Line 2077
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,120($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$gp,96($sp)
    # Line 2078
    ld	$s0,88($sp)
    ld	$ra,120($sp)
    ld	$s1,80($sp)
    ld	$s2,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da98ac4:
    sd	$s3,104($sp)
    # Line 2080
    lw	$s3,20($a0)
    beqz	$s3,.L0da98d90
    # Line 2088
    lw	$a1,196($sp)
    # Line 2087
    sh	$s1,42($s3)
    # Line 2089
    lw	$a6,204($sp)
    # Line 2086
    sh	$s0,40($s3)
    # Line 2088
    sh	$a1,44($s3)
    # Line 2089
    sh	$a6,46($s3)
    lw	$t0,32100($s2)
    lui	$at,0x10
    and	$t0,$t0,$at
    beqz	$t0,.L0da98b20
    nop
    lbu	$v0,-32028($a7)
    beqzl	$v0,.L0da98d6c
    # Line 2091
    lbu	$t0,-31948($a7)
    lw	$at,-32036($a7)
    lw	$v0,-32032($a7)
    subu	$s0,$s0,$at
    subu	$s1,$s1,$v0
    addiu	$s1,$s1,1
    addiu	$s0,$s0,1
.L0da98b20:
    # Line 2093
    blez	$s0,.L0da98cac
    addu	$at,$a3,$s1
    blez	$s1,.L0da98cb0
    # Line 2098
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2093
    blez	$a1,.L0da98cb0
    # Line 2098
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2093
    blez	$a6,.L0da98cb0
    # Line 2098
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2093
    bltz	$a2,.L0da98cac
    addu	$a7,$a2,$s0
    lw	$t1,4($s3)
    slt	$v1,$t1,$a7
    bnez	$v1,.L0da98cb0
    # Line 2098
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2093
    bltz	$a3,.L0da98cb0
    # Line 2098
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2093
    lw	$t0,8($s3)
    slt	$t0,$t0,$at
    bnez	$t0,.L0da98cb0
    # Line 2098
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2093
    bltz	$a4,.L0da98cb0
    # Line 2098
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2093
    lw	$v0,12($s3)
    addu	$v1,$a4,$a1
    slt	$v0,$v0,$v1
    bnez	$v0,.L0da98cb0
    # Line 2098
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2093
    bltz	$a5,.L0da98cb0
    # Line 2098
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2093
    lw	$t0,16($s3)
    addu	$at,$a5,$a6
    slt	$t0,$t0,$at
    bnez	$t0,.L0da98cac
    # Line 2099
    andi	$v0,$a7,0x1f
    beqz	$v0,.L0da98bb8
    # Line 2102
    sll	$v1,$t1,0x1
    bne	$v1,$a7,.L0da98d40
    # Line 2104
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da98bb8:
    # Line 2102
    beql	$t1,$s0,.L0da98bec
    sd	$a4,40($sp)
    sd	$ra,120($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a0,0($sp)
    sd	$a1,56($sp)
    slti	$t0,$s0,32
    bnez	$t0,.L0da98d3c
    sd	$a6,64($sp)
    sd	$a4,40($sp)
.L0da98bec:
    sd	$a5,48($sp)
    sd	$a6,64($sp)
    sd	$a0,0($sp)
    sd	$a3,32($sp)
    move	$a3,$a0
    # Line 2106
    move	$a0,$s2
    sd	$ra,120($sp)
    # lw $t9, -30768($gp) # &mgrTM_set_externalformat
    sd	$a2,24($sp)
    lw	$a2,220($sp)
    sd	$a1,56($sp)
    lw	$a1,212($sp)
    sd	$a2,8($sp)
    jal	mgrTM_set_externalformat
    sd	$a1,16($sp)
    beqz	$v0,.L0da98e04
    ld	$ra,120($sp)
    # Line 2107
    lw	$a6,228($sp)
    beqzl	$a6,.L0da98dec
    ld	$gp,96($sp)
    # Line 2113
    lw	$a1,28($s3)
    # Line 2110
    ld	$at,24($sp)
    # Line 2113
    ld	$v0,48($sp)
    # Line 2112
    ld	$v1,40($sp)
    # Line 2111
    ld	$t0,32($sp)
    # Line 2113
    sh	$v0,38($s3)
    # Line 2112
    sh	$v1,36($s3)
    # Line 2111
    sh	$t0,34($s3)
    # Line 2110
    sh	$at,32($s3)
    # Line 2113
    lbu	$at,89($a1)
    bnez	$at,.L0da98d04
    ld	$a0,0($sp)
    lw	$v0,4($s3)
    bnel	$v0,$s0,.L0da98ce0
    sd	$a6,112($sp)
    lw	$v1,8($s3)
    bne	$v1,$s1,.L0da98cdc
    # Line 2117
    ld	$at,56($sp)
    lw	$t0,12($s3)
    bne	$t0,$at,.L0da98cdc
    ld	$v1,64($sp)
    lw	$v0,16($s3)
    bnel	$v0,$v1,.L0da98ce0
    sd	$a6,112($sp)
    sd	$a6,112($sp)
    li	$a4,1
    b	.L0da98ce8
    ld	$s3,104($sp)
.L0da98cac:
    # Line 2098
    # lw $t9, -27320($gp) # &__glSetError
.L0da98cb0:
    li	$a0,1281
    sd	$ra,120($sp)
    jal	__glSetError
    ld	$s3,104($sp)
    ld	$gp,96($sp)
    # Line 2099
    ld	$s0,88($sp)
    ld	$ra,120($sp)
    ld	$s1,80($sp)
    ld	$s2,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da98cdc:
    sd	$a6,112($sp)
.L0da98ce0:
    # Line 2117
    move	$a4,$zero
    ld	$s3,104($sp)
.L0da98ce8:
    # lw $t9, -30756($gp) # &mgrTM_MakeResident
    move	$a0,$s2
    li	$a3,1
    jal	mgrTM_MakeResident
    li	$a2,1
    ld	$a6,112($sp)
    ld	$a0,0($sp)
.L0da98d04:
    # Line 2120
    move	$a1,$zero
    ld	$a2,16($sp)
    # lw $t9, -30680($gp) # &mgrTM_DoTexLoad
    ld	$a3,8($sp)
    move	$a4,$a6
    jal	mgrTM_DoTexLoad
    ld	$s3,104($sp)
    ld	$ra,120($sp)
    ld	$gp,96($sp)
    # Line 2121
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da98d3c:
    # Line 2104
    # lw $t9, -27320($gp) # &__glSetError
.L0da98d40:
    li	$a0,1281
    sd	$ra,120($sp)
    jal	__glSetError
    ld	$s3,104($sp)
    ld	$gp,96($sp)
    ld	$s0,88($sp)
    ld	$ra,120($sp)
    ld	$s1,80($sp)
    ld	$s2,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da98d6c:
    # Line 2091
    beqz	$t0,.L0da98b20
    nop
    lw	$v0,-31952($a7)
    lw	$at,-31956($a7)
    subu	$s1,$s1,$v0
    addiu	$s1,$s1,1
    subu	$s0,$s0,$at
    b	.L0da98b20
    addiu	$s0,$s0,1
.L0da98d90:
    # Line 2082
    # lw $t9, -27320($gp) # &__glSetError
    li	$a0,1282
    sd	$ra,120($sp)
    jal	__glSetError
    ld	$s3,104($sp)
    ld	$gp,96($sp)
    # Line 2083
    ld	$s0,88($sp)
    ld	$ra,120($sp)
    ld	$s1,80($sp)
    ld	$s2,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da98dc0:
    # Line 2067
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,120($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,96($sp)
    ld	$s0,88($sp)
    ld	$ra,120($sp)
    ld	$s1,80($sp)
    ld	$s2,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da98dec:
    # Line 2109
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,72($sp)
    ld	$s3,104($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da98e04:
    ld	$gp,96($sp)
    # Line 2107
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,72($sp)
    ld	$s3,104($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glMgrim_TexSubImage4DSGIS

# Function: mgrTM_compute_log_sizes
# Declared: Line 2125 (Source lines: 2127-2158)
# Address: 0x0da98e20 - 0x0da98fb8 (Size: 408 bytes, Frame: 32)
.ent mgrTM_compute_log_sizes
mgrTM_compute_log_sizes:
    # Line 2127
    addiu	$sp,$sp,-32
    # Line 2131
    li	$a4,15
    li	$a3,1
    lw	$a5,4($a0)
    move	$a2,$zero
    # Line 2130
    sb	$zero,59($a0)
    sb	$zero,60($a0)
    sb	$zero,61($a0)
    sb	$zero,62($a0)
    # Line 2132
    sllv	$at,$a3,$a2
.L0da98e48:
    beq	$at,$a5,.L0da98e7c
    nop
    # Line 2131
    addiu	$a2,$a2,1
    bne	$a2,$a4,.L0da98e48
    # Line 2132
    sllv	$at,$a3,$a2
    # Line 2134
    # lw $t9, -27320($gp) # &__glSetError
.L0da98e60:
    sd	$ra,0($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$ra,0($sp)
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.L0da98e7c:
    # Line 2133
    beq	$a2,$a4,.L0da98e60
    # Line 2134
    nop	# was lw $t9, -27320($gp) # &__glSetError
    lw	$a6,0($a0)
    # Line 2133
    sb	$a2,59($a0)
    # Line 2134
    lbu	$v0,179($a6)
    slti	$v0,$v0,2
    bnez	$v0,.L0da98f48
    # Line 2137
    move	$a2,$zero
    lw	$a5,8($a0)
    # Line 2138
    sllv	$v1,$a3,$a2
.L0da98ea4:
    beq	$v1,$a5,.L0da98ed8
    nop
    # Line 2137
    addiu	$a2,$a2,1
    bne	$a2,$a4,.L0da98ea4
    # Line 2138
    sllv	$v1,$a3,$a2
    # Line 2140
    # lw $t9, -27320($gp) # &__glSetError
.L0da98ebc:
    sd	$ra,0($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$ra,0($sp)
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.L0da98ed8:
    # Line 2139
    beq	$a2,$a4,.L0da98ebc
    # Line 2140
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2139
    sb	$a2,60($a0)
    # Line 2140
    lbu	$a5,179($a6)
    li	$a1,8
    beq	$a5,$a1,.L0da98fac
    # Line 2145
    move	$a2,$zero
    # Line 2143
    slti	$at,$a5,4
    bnez	$at,.L0da98f4c
    # Line 2158
    li	$v0,1
    # Line 2145
    lw	$a5,12($a0)
    # Line 2146
    sllv	$v0,$a3,$a2
.L0da98f08:
    beq	$v0,$a5,.L0da98f54
    nop
    # Line 2145
    addiu	$a2,$a2,1
    bne	$a2,$a4,.L0da98f08
    # Line 2146
    sllv	$v0,$a3,$a2
    # Line 2148
    # lw $t9, -27320($gp) # &__glSetError
.L0da98f20:
    sd	$ra,0($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$ra,0($sp)
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.L0da98f3c:
    # Line 2153
    beq	$a2,$a4,.L0da98f90
    # Line 2154
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2153
    sb	$a2,62($a0)
.L0da98f48:
    # Line 2158
    li	$v0,1
.L0da98f4c:
    jr	$ra
    addiu	$sp,$sp,32
.L0da98f54:
    # Line 2147
    beq	$a2,$a4,.L0da98f20
    # Line 2148
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2147
    sb	$a2,61($a0)
    # Line 2148
    lbu	$v1,179($a6)
    slti	$v1,$v1,6
    bnez	$v1,.L0da98f48
    # Line 2151
    move	$a2,$zero
    lw	$a5,16($a0)
    # Line 2152
    sllv	$a1,$a3,$a2
.L0da98f78:
    beq	$a1,$a5,.L0da98f3c
    nop
    # Line 2151
    addiu	$a2,$a2,1
    bne	$a2,$a4,.L0da98f78
    # Line 2152
    sllv	$a1,$a3,$a2
    # Line 2154
    # lw $t9, -27320($gp) # &__glSetError
.L0da98f90:
    sd	$ra,0($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$ra,0($sp)
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.L0da98fac:
    # Line 2143
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,32
.end mgrTM_compute_log_sizes

# Function: __glMgrim_DetailTexFuncSGIS
# Declared: Line 2173 (Source lines: 2177-2255)
# Address: 0x0da98fb8 - 0x0da99584 (Size: 1484 bytes, Frame: 240)
.globl __glMgrim_DetailTexFuncSGIS
.ent __glMgrim_DetailTexFuncSGIS
__glMgrim_DetailTexFuncSGIS:
    # Line 2183
    li	$v0,1
    # Line 2177
    addiu	$sp,$sp,-112
    sd	$s4,32($sp)
    # Line 2183
    lw	$s4,__glCurrentContext
    sd	$s1,24($sp)
    # Line 2177
    move	$s1,$a2
    sd	$s2,48($sp)
    move	$s2,$a1
    sd	$gp,40($sp)
    # Line 2183
    lw	$at,__glBeginMode
    # Line 2177
    lui	$v1,0x16
    addiu	$v1,$v1,22240
    # Line 2183
    beq	$at,$v0,.L0da9953c
    # Line 2177
    addu	$gp,$t9,$v1
    # Line 2183
    li	$a3,3553
    beql	$a0,$a3,.L0da99028
    sd	$ra,56($sp)
    # Line 2187
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,56($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,40($sp)
    # Line 2188
    ld	$s1,24($sp)
    ld	$ra,56($sp)
    ld	$s2,48($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da99028:
    sd	$s0,16($sp)
    # Line 2192
    lui	$s0,0x1
    addu	$s0,$s4,$s0
    sd	$s0,0($sp)
    lw	$s0,-28172($s0)
    sd	$s3,64($sp)
    # Line 2191
    li	$s3,0x9168
    # Line 2192
    beqz	$s0,.L0da99160
    # Line 2191
    addu	$s3,$s4,$s3
    sd	$ra,56($sp)
    # Line 2192
    sll	$at,$s2,0x3
    b	.L0da9906c
    sd	$at,8($sp)
    # Line 2195
    lw	$s3,140($s3)
.L0da99060:
    # Line 2192
    lw	$s0,140($s3)
    beqz	$s0,.L0da99094
    nop
.L0da9906c:
    lw	$v1,0($s0)
    bnel	$v1,$s2,.L0da99060
    # Line 2195
    lw	$s3,140($s3)
    # Line 2193
    # lw $t9, -17796($gp) # &memcmp
    ld	$a2,8($sp)
    move	$a1,$s1
    jal	memcmp
    lw	$a0,4($s0)
    bnezl	$v0,.L0da99060
    # Line 2195
    lw	$s3,140($s3)
.L0da99094:
    # Line 2197
    beqzl	$s0,.L0da99164
    # Line 2198
    lw	$t9,0($s4)
    ld	$s3,64($sp)
.L0da990a0:
    # Line 2236
    ld	$v0,0($sp)
    li	$a3,-1
    dsll	$a3,$a3,0x10
    ori	$a3,$a3,0x7438
    beq	$s4,$a3,.L0da990bc
    lw	$v0,-29556($v0)
    beqz	$v0,.L0da99568
.L0da990bc:
    # Line 2245
    li	$a4,1
    move	$a2,$zero
    li	$a1,400
    move	$a0,$s4
    # lw $t9, -30696($gp) # &__glMgrasWrite
    # Line 2242
    la	$s1,SYMBOL_LOCATION
    # Line 2243
    sw	$s0,80($v0)
    # Line 2245
    jal	__glMgrasWrite
    lw	$a3,268($s1)
    li	$a7,404
    li	$a0,0xec10
    lw	$a6,268($s1)
    lw	$a2,284($s1)
    addiu	$a5,$s0,128
    move	$v0,$s0
    ld	$ra,56($sp)
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
.L0da99104:
    # Line 2247
    sw	$a0,0($a1)
    # Line 2248
    sw	$a6,0($a1)
    # Line 2249
    sw	$a2,0($a1)
    # Line 2250
    sw	$a7,0($a1)
    # Line 2251
    lw	$a4,8($v0)
    sw	$a4,0($a1)
    # Line 2247
    sw	$a0,0($a1)
    # Line 2248
    sw	$a6,0($a1)
    # Line 2249
    sw	$a2,0($a1)
    # Line 2250
    sw	$a7,0($a1)
    # Line 2251
    lw	$a3,12($v0)
    # Line 2246
    addiu	$v0,$v0,8
    bne	$v0,$a5,.L0da99104
    # Line 2251
    sw	$a3,0($a1)
    ld	$gp,40($sp)
    ld	$s1,0($sp)
    # Line 2255
    ld	$s2,48($sp)
    ld	$s4,32($sp)
    # Line 2254
    sw	$s0,-28168($s1)
    # Line 2255
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da99160:
    # Line 2198
    lw	$t9,0($s4)
.L0da99164:
    move	$a0,$s4
    jalr	$t9
    li	$a1,144
    # Line 2199
    lw	$t8,140($s3)
    sw	$t8,140($v0)
    # Line 2200
    sw	$v0,140($s3)
    # Line 2198
    move	$s0,$v0
    # Line 2201
    lw	$t9,0($s4)
    move	$a0,$s4
    sll	$a1,$s2,0x3
    jalr	$t9
    sd	$a1,8($sp)
    move	$a0,$v0
    # Line 2202
    ld	$a2,8($sp)
    # lw $t9, -17848($gp) # &memcpy
    move	$a1,$s1
    # Line 2201
    sw	$v0,4($s0)
    # Line 2202
    jal	memcpy
    ld	$s3,64($sp)
    # Line 2205
    li	$a2,128
    # lw $t9, -17876($gp) # &memset
    li	$a1,255
    addiu	$a0,$s0,8
    jal	memset
    # Line 2203
    sw	$s2,0($s0)
    # Line 2206
    blez	$s2,.L0da992fc
    move	$a5,$zero
    ldc1	$f5,_lit8_403fffbe76c8b439
    la	$a2,sub_0dbe0000
    li	$a6,5
    b	.L0da99214
    addiu	$a2,$a2,-16208
.L0da991e4:
    addiu	$a5,$a5,1
.L0da991e8:
    # Line 2213
    lwc1	$f0,4($s1)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f5
    trunc.w.d	$f0,$f0
    addiu	$s1,$s1,8
    mfc1	$a3,$f0
    sll	$a4,$v0,0x2
    addu	$a4,$a4,$s0
    andi	$a3,$a3,0x1f
    # Line 2206
    beq	$s2,$a5,.L0da992fc
    # Line 2213
    sw	$a3,8($a4)
.L0da99214:
    # Line 2208
    lwc1	$f4,0($s1)
    li	$a0,16
    move	$v0,$zero
    move	$a1,$zero
    # Line 2209
    or	$v0,$v0,$a0
    sll	$a4,$v0,0x2
    addu	$a4,$a4,$a2
    lwc1	$f1,0($a4)
    c.lt.s	$f4,$f1
    # Line 2208
    addiu	$a1,$a1,1
    # Line 2209
    bc1f	.L0da99248
    nop
    # Line 2211
    xor	$v0,$v0,$a0
.L0da99248:
    # Line 2208
    beq	$a1,$a6,.L0da991e4
    sra	$a0,$a0,0x1
    # Line 2209
    or	$v0,$v0,$a0
    sll	$at,$v0,0x2
    addu	$at,$at,$a2
    lwc1	$f2,0($at)
    c.lt.s	$f4,$f2
    nop
    bc1f	.L0da99274
    # Line 2208
    addiu	$a1,$a1,1
    # Line 2211
    xor	$v0,$v0,$a0
.L0da99274:
    # Line 2208
    beq	$a1,$a6,.L0da991e4
    sra	$a0,$a0,0x1
    # Line 2209
    or	$v0,$v0,$a0
    sll	$v1,$v0,0x2
    addu	$v1,$v1,$a2
    lwc1	$f3,0($v1)
    c.lt.s	$f4,$f3
    nop
    bc1f	.L0da992a0
    # Line 2208
    addiu	$a1,$a1,1
    # Line 2211
    xor	$v0,$v0,$a0
.L0da992a0:
    # Line 2208
    beq	$a1,$a6,.L0da991e4
    sra	$a0,$a0,0x1
    # Line 2209
    or	$v0,$v0,$a0
    sll	$a3,$v0,0x2
    addu	$a3,$a3,$a2
    lwc1	$f0,0($a3)
    c.lt.s	$f4,$f0
    nop
    bc1f	.L0da992cc
    # Line 2208
    addiu	$a1,$a1,1
    # Line 2211
    xor	$v0,$v0,$a0
.L0da992cc:
    # Line 2208
    beq	$a1,$a6,.L0da991e4
    sra	$a0,$a0,0x1
    # Line 2209
    or	$v0,$v0,$a0
    sll	$a4,$v0,0x2
    addu	$a4,$a4,$a2
    lwc1	$f1,0($a4)
    c.lt.s	$f4,$f1
    nop
    bc1fl	.L0da991e8
    # Line 2206
    addiu	$a5,$a5,1
    b	.L0da991e4
    # Line 2211
    xor	$v0,$v0,$a0
.L0da992fc:
    # Line 2215
    move	$a5,$zero
    li	$t1,32
    li	$t2,31
    ldc1	$f6,_lit8_3fe0000000000000
    li	$t0,4
    move	$a2,$s0
    move	$a6,$zero
    b	.L0da99388
    li	$v0,-1
.L0da99320:
    sra	$at,$v0,0x1
    move	$a1,$a7
    beqz	$at,.L0da99370
    mov.s	$f7,$f4
    move	$v0,$a1
    mov.s	$f4,$f7
.L0da99338:
    # Line 2223
    add.s	$f3,$f4,$f5
    # Line 2224
    cvt.d.s	$f4,$f4
    add.d	$f4,$f4,$f6
    cvt.d.s	$f2,$f3
    add.d	$f2,$f2,$f6
    trunc.w.d	$f4,$f4
    trunc.w.d	$f2,$f2
    # Line 2223
    addiu	$v0,$v0,8
    # Line 2224
    mfc1	$a3,$f4
    # Line 2223
    add.s	$f4,$f3,$f5
    # Line 2224
    mfc1	$v1,$f2
    sw	$a3,0($v0)
    # Line 2223
    bne	$v0,$a0,.L0da99338
    # Line 2224
    sw	$v1,4($v0)
.L0da99370:
    # Line 2226
    move	$v0,$a5
.L0da99374:
    # Line 2215
    addiu	$a2,$a2,4
.L0da99378:
    addiu	$a6,$a6,4
    addiu	$a5,$a5,1
    beq	$a5,$t1,.L0da99504
    addiu	$t0,$t0,4
.L0da99388:
    lw	$a0,8($a2)
    # Line 2222
    subu	$a1,$a5,$v0
    # Line 2221
    sll	$t3,$v0,0x2
    # Line 2215
    bltz	$a0,.L0da99410
    # Line 2221
    addu	$t3,$t3,$s0
    # Line 2215
    bltzl	$v0,.L0da99498
    andi	$v0,$a5,0x3
    # Line 2222
    mtc1	$a0,$f5
    # Line 2221
    lw	$at,8($t3)
    # Line 2222
    cvt.s.w	$f5,$f5
    # Line 2221
    mtc1	$at,$f4
    nop
    cvt.s.w	$f4,$f4
    # Line 2222
    mtc1	$a1,$f0
    nop
    cvt.s.w	$f0,$f0
    slt	$a4,$v0,$a5
    move	$v0,$a1
    sub.s	$f5,$f5,$f4
    addu	$a0,$a6,$s0
    andi	$at,$a1,0x1
    beqz	$a4,.L0da99370
    div.s	$f5,$f5,$f0
    beqz	$at,.L0da99320
    move	$a7,$t3
    # Line 2224
    cvt.d.s	$f0,$f4
    add.d	$f0,$f0,$f6
    trunc.w.d	$f0,$f0
    mfc1	$v1,$f0
    # Line 2223
    add.s	$f4,$f4,$f5
    addiu	$a7,$a7,4
    # Line 2224
    sw	$v1,4($a7)
    b	.L0da99320
    nop
.L0da99410:
    # Line 2226
    bnel	$a5,$t2,.L0da99378
    # Line 2215
    addiu	$a2,$a2,4
    # Line 2228
    sll	$t3,$v0,0x2
    subu	$t9,$a5,$v0
    addiu	$a1,$v0,1
    slt	$a3,$a5,$a1
    bnez	$a3,.L0da99374
    sll	$a7,$a1,0x2
    addu	$t3,$t3,$s0
    addu	$t8,$t0,$s0
    andi	$a0,$t9,0x3
    beqz	$a0,.L0da99458
    addu	$a7,$a7,$s0
.L0da99444:
    addiu	$a7,$a7,4
    # Line 2229
    lw	$at,8($t3)
    addi	$a0,$a0,-1
    bnez	$a0,.L0da99444
    sw	$at,4($a7)
.L0da99458:
    sra	$v1,$t9,0x2
    beqz	$v1,.L0da99490
    move	$a1,$a7
    move	$a0,$a1
.L0da99468:
    lw	$v1,8($t3)
    sw	$v1,8($a0)
    lw	$at,8($t3)
    sw	$at,12($a0)
    lw	$a4,8($t3)
    sw	$a4,16($a0)
    lw	$a3,8($t3)
    # Line 2228
    addiu	$a0,$a0,16
    bne	$a0,$t8,.L0da99468
    # Line 2229
    sw	$a3,4($a0)
.L0da99490:
    b	.L0da99378
    # Line 2215
    addiu	$a2,$a2,4
.L0da99498:
    blez	$a5,.L0da99370
    move	$a1,$a5
    addu	$a0,$a6,$s0
    move	$a7,$s0
    beqz	$v0,.L0da994c8
    sra	$a4,$a1,0x2
.L0da994b0:
    # Line 2218
    addiu	$a7,$a7,4
    # Line 2219
    lw	$a3,8($a2)
    addi	$v0,$v0,-1
    bnez	$v0,.L0da994b0
    sw	$a3,4($a7)
    sra	$a4,$a1,0x2
.L0da994c8:
    beqz	$a4,.L0da994fc
    move	$t3,$a7
    move	$v0,$t3
.L0da994d4:
    lw	$a4,8($a2)
    sw	$a4,8($v0)
    lw	$a3,8($a2)
    sw	$a3,12($v0)
    lw	$v1,8($a2)
    sw	$v1,16($v0)
    lw	$at,8($a2)
    # Line 2218
    addiu	$v0,$v0,16
    bne	$v0,$a0,.L0da994d4
    # Line 2219
    sw	$at,4($v0)
.L0da994fc:
    b	.L0da99374
    # Line 2226
    move	$v0,$a5
.L0da99504:
    # Line 2232
    li	$v0,-1
    addiu	$a2,$s0,124
    li	$a5,31
    # Line 2231
    sw	$zero,136($s0)
    # Line 2233
    sll	$v1,$a5,0x1
.L0da99518:
    sw	$v1,136($s0)
    # Line 2234
    lw	$at,8($a2)
    # Line 2232
    addiu	$a2,$a2,-4
    # Line 2234
    bnez	$at,.L0da99534
    # Line 2232
    addiu	$a5,$a5,-1
    bne	$a5,$v0,.L0da99518
    # Line 2233
    sll	$v1,$a5,0x1
.L0da99534:
    b	.L0da990a0
    ld	$s3,64($sp)
.L0da9953c:
    # Line 2183
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,56($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,40($sp)
    ld	$s1,24($sp)
    ld	$ra,56($sp)
    ld	$s2,48($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da99568:
    # Line 2242
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    li	$a0,0x8bc8
    jal	mgrTM_RefreshDim
    addu	$a0,$s4,$a0
    ld	$v0,0($sp)
    b	.L0da990bc
    lw	$v0,-29556($v0)
.end __glMgrim_DetailTexFuncSGIS

# Function: __glMgrim_PixelTexGenSGIX
# Declared: Line 2258 (Source lines: 2259-2286)
# Address: 0x0da99584 - 0x0da99690 (Size: 268 bytes, Frame: 32)
.globl __glMgrim_PixelTexGenSGIX
.ent __glMgrim_PixelTexGenSGIX
__glMgrim_PixelTexGenSGIX:
    # Line 2262
    lw	$a2,__glCurrentContext
    li	$a4,1
    # Line 2259
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 2262
    lw	$at,__glBeginMode
    # Line 2259
    lui	$v0,0x16
    addiu	$v0,$v0,20756
    # Line 2262
    beq	$at,$a4,.L0da99670
    # Line 2259
    addu	$gp,$t9,$v0
    # Line 2262
    li	$a3,0x8187
    sltu	$v1,$a0,$a3
    bnez	$v1,.L0da995e8
    # Line 2265
    sltu	$a1,$a3,$a0
    beqz	$a1,.L0da9960c
    li	$a3,0x8189
    sltu	$at,$a0,$a3
    bnez	$at,.L0da99648
    sltu	$v0,$a3,$a0
    beqz	$v0,.L0da99660
    li	$v1,0x818a
    bne	$a0,$v1,.L0da99628
    # Line 2280
    li	$a1,0x9254
    addu	$a1,$a1,$a2
    # Line 2281
    b	.L0da99618
    # Line 2280
    sw	$zero,0($a1)
.L0da995e8:
    # Line 2265
    sltiu	$at,$a0,6407
    bnez	$at,.L0da99624
    sltiu	$v0,$a0,6408
    bnez	$v0,.L0da99618
    li	$v1,6408
    bne	$a0,$v1,.L0da9962c
    # Line 2283
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9961c
    ld	$gp,0($sp)
.L0da9960c:
    # Line 2271
    li	$a1,0x9250
    addu	$a1,$a1,$a2
    sw	$a4,0($a1)
.L0da99618:
    ld	$gp,0($sp)
.L0da9961c:
    # Line 2286
    jr	$ra
    addiu	$sp,$sp,32
.L0da99624:
    # Line 2265
    beqz	$a0,.L0da99618
.L0da99628:
    # Line 2283
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da9962c:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 2284
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da99648:
    # Line 2265
    li	$at,0x8188
    bne	$a0,$at,.L0da99628
    # Line 2274
    li	$v0,0x9250
    addu	$v0,$v0,$a2
    # Line 2275
    b	.L0da99618
    # Line 2274
    sw	$zero,0($v0)
.L0da99660:
    # Line 2277
    li	$v1,0x9254
    addu	$v1,$v1,$a2
    # Line 2278
    b	.L0da99618
    # Line 2277
    sw	$a4,0($v1)
.L0da99670:
    # Line 2262
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_PixelTexGenSGIX

# Function: FreeTextureInfo
# Declared: Line 2289 (Source lines: 2290-2305)
# Address: 0x0da99690 - 0x0da99738 (Size: 168 bytes, Frame: 48)
.ent FreeTextureInfo
FreeTextureInfo:
    # Line 2290
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a1
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$gp,16($sp)
    lbu	$at,183($a1)
    lui	$v0,0x16
    addiu	$v0,$v0,20488
    beqz	$at,.L0da996ec
    addu	$gp,$t9,$v0
    lui	$a0,0x1
    addu	$a0,$s1,$a0
    lw	$a0,-28164($a0)
    lw	$v1,480($a0)
    bnel	$v1,$s0,.L0da996dc
    # Line 2298
    lw	$a0,12($s0)
    sw	$zero,480($a0)
    lw	$a0,12($s0)
.L0da996dc:
    beqz	$a0,.L0da996f0
    # Line 2302
    nop	# was lw $t9, -31724($gp) # &__glMgrFreeDLTex
    sd	$ra,24($sp)
    # Line 2300
    sw	$zero,12($a0)
.L0da996ec:
    # Line 2302
    # lw $t9, -31724($gp) # &__glMgrFreeDLTex
.L0da996f0:
    move	$a0,$s1
    sd	$ra,24($sp)
    jal	__glMgrFreeDLTex
    lw	$a1,8($s0)
    # Line 2303
    # lw $t9, -30720($gp) # &mgrTM_RemoveTex
    move	$a0,$s1
    jal	mgrTM_RemoveTex
    move	$a1,$s0
    # Line 2304
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s0
    ld	$gp,16($sp)
    # Line 2305
    ld	$ra,24($sp)
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end FreeTextureInfo

# Function: __glMgr_NewTexObj
# Declared: Line 2308 (Source lines: 2309-2328)
# Address: 0x0da99738 - 0x0da997fc (Size: 196 bytes, Frame: 208)
.globl __glMgr_NewTexObj
.ent __glMgr_NewTexObj
__glMgr_NewTexObj:
    # Line 2309
    addiu	$sp,$sp,-80
    sd	$s1,40($sp)
    sd	$s7,24($sp)
    move	$s7,$a2
    # Line 2315
    li	$a2,196
    sd	$s2,0($sp)
    # Line 2309
    move	$s2,$a0
    sd	$s0,8($sp)
    sd	$gp,32($sp)
    lui	$at,0x16
    addiu	$at,$at,20320
    addu	$gp,$t9,$at
    # Line 2315
    lw	$t9,4($a0)
    # Line 2309
    move	$s0,$a1
    sd	$ra,16($sp)
    # Line 2315
    jalr	$t9
    li	$a1,1
    move	$s1,$v0
    # Line 2318
    move	$a0,$s2
    move	$a3,$v0
    # lw $t9, -26224($gp) # &__glNamesNewData
    li	$a1,0x91fc
    addu	$a1,$a1,$s2
    lw	$a1,0($a1)
    move	$a2,$s0
    jal	__glNamesNewData
    lw	$a1,1180($a1)
    # Line 2327
    move	$a1,$s1
    move	$a0,$s2
    # Line 2326
    sb	$s7,179($s1)
    # Line 2325
    sw	$s0,84($s1)
    # Line 2324
    sw	$zero,8($s1)
    # Line 2322
    lw	$a2,0($s1)
    # Line 2323
    la	$a3,sub_0daa0000
    # Line 2327
    # lw $t9, -30776($gp) # &mgrTM_InitTexture
    # Line 2322
    addiu	$a2,$a2,1
    # Line 2323
    addiu	$a3,$a3,-26992
    sw	$a3,4($s1)
    # Line 2327
    jal	mgrTM_InitTexture
    # Line 2322
    sw	$a2,0($s1)
    ld	$gp,32($sp)
    # Line 2328
    ld	$s0,8($sp)
    move	$v0,$s1
    ld	$s1,40($sp)
    ld	$ra,16($sp)
    ld	$s2,0($sp)
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgr_NewTexObj

# Function: __glMgrim_BindTextureEXT
# Declared: Line 2332 (Source lines: 2333-2400)
# Address: 0x0da997fc - 0x0da99b78 (Size: 892 bytes, Frame: 208)
.globl __glMgrim_BindTextureEXT
.ent __glMgrim_BindTextureEXT
__glMgrim_BindTextureEXT:
    # Line 2337
    li	$v0,1
    # Line 2333
    addiu	$sp,$sp,-80
    sd	$s2,16($sp)
    # Line 2337
    lw	$s2,__glCurrentContext
    sd	$s1,24($sp)
    # Line 2333
    move	$s1,$a1
    sd	$gp,32($sp)
    # Line 2337
    lw	$at,__glBeginMode
    # Line 2333
    lui	$v1,0x16
    addiu	$v1,$v1,20124
    # Line 2337
    beq	$at,$v0,.L0da99b50
    # Line 2333
    addu	$gp,$t9,$v1
    # Line 2337
    li	$v0,0x806f
    sltu	$a3,$a0,$v0
    bnez	$a3,.L0da9986c
    # Line 2339
    sltu	$a4,$v0,$a0
    beqz	$a4,.L0da99890
    li	$v0,0x8134
    sltu	$at,$a0,$v0
    bnez	$at,.L0da99a4c
    sltu	$v1,$v0,$a0
    beqz	$v1,.L0da99af0
    li	$a3,0x8135
    bne	$a0,$a3,.L0da99a28
    # Line 2350
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$s0,48($sp)
    # Line 2348
    b	.L0da99898
    li	$s0,7
.L0da9986c:
    # Line 2339
    li	$v0,0x8063
    sltu	$a4,$a0,$v0
    bnez	$a4,.L0da999c0
    sltu	$at,$v0,$a0
    bnez	$at,.L0da99a10
    li	$a3,0x8064
    sd	$s0,48($sp)
    # Line 2345
    b	.L0da99898
    li	$s0,1
.L0da99890:
    sd	$s0,48($sp)
    # Line 2342
    li	$s0,4
.L0da99898:
    # Line 2352
    lui	$v0,0x1
    li	$v1,-1
    dsll	$v1,$v1,0x10
    ori	$v1,$v1,0x75d0
    sll	$a0,$s0,0x2
    subu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$s0
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s2
    addu	$v0,$v0,$a0
    sd	$v0,8($sp)
    beq	$a0,$v1,.L0da998e0
    lw	$v0,-29964($v0)
    beqzl	$v0,.L0da99b28
    sd	$a0,0($sp)
.L0da998e0:
    # Line 2358
    lw	$a3,84($v0)
    # Line 2365
    li	$a4,0x8a30
    # Line 2358
    beq	$a3,$s1,.L0da999e0
    # Line 2365
    addu	$a4,$a0,$a4
    # Line 2359
    bnez	$s1,.L0da99924
    # Line 2366
    move	$a0,$s2
    bnez	$a4,.L0da99950
    sd	$a4,56($sp)
.L0da99900:
    # Line 2374
    move	$a0,$s2
    # lw $t9, -31320($gp) # &__glMgr_NewTexObj
    move	$a1,$s1
    sd	$ra,40($sp)
    bal __glMgr_NewTexObj
    move	$a2,$s0
    move	$s1,$v0
    b	.L0da9995c
    ld	$ra,40($sp)
.L0da99924:
    # Line 2366
    move	$a2,$s1
    # lw $t9, -26220($gp) # &__glNamesLockData
    lui	$a1,0x1
    addu	$a1,$a1,$s2
    lw	$a1,-28164($a1)
    sd	$ra,40($sp)
    jal	__glNamesLockData
    lw	$a1,1180($a1)
    sd	$v0,56($sp)
    beqz	$v0,.L0da99900
    ld	$ra,40($sp)
.L0da99950:
    ld	$s1,56($sp)
    # Line 2374
    lbu	$a3,179($s1)
    bne	$a3,$s0,.L0da99afc
.L0da9995c:
    ld	$a1,8($sp)
    # Line 2387
    lw	$a1,-29964($a1)
    lw	$a4,84($a1)
    beqz	$a4,.L0da99994
    # Line 2394
    ld	$v1,8($sp)
    # Line 2387
    lw	$a3,0($a1)
    li	$a4,1
    beq	$a3,$a4,.L0da99ac0
    sd	$ra,40($sp)
    # Line 2391
    # lw $t9, -26212($gp) # &__glNamesUnlockData
    jal	__glNamesUnlockData
    move	$a0,$s2
    ld	$ra,40($sp)
.L0da99990:
    # Line 2394
    ld	$v1,8($sp)
.L0da99994:
    li	$at,8
    beq	$s0,$at,.L0da99a70
    sw	$s1,-29964($v1)
.L0da999a0:
    # Line 2400
    ld	$s1,24($sp)
    # Line 2396
    andi	$a3,$s0,0x1
    beqz	$a3,.L0da99aa8
    ld	$s0,48($sp)
.L0da999b0:
    ld	$gp,32($sp)
    # Line 2400
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da999c0:
    # Line 2339
    sltiu	$a4,$a0,3553
    bnez	$a4,.L0da999f8
    sltiu	$at,$a0,3554
    beqz	$at,.L0da99a28
    # Line 2350
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$s0,48($sp)
    # Line 2341
    b	.L0da99898
    li	$s0,2
.L0da999e0:
    ld	$gp,32($sp)
    # Line 2359
    ld	$s0,48($sp)
    ld	$s1,24($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da999f8:
    # Line 2339
    li	$v1,3552
    bne	$a0,$v1,.L0da99a28
    # Line 2350
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$s0,48($sp)
    # Line 2340
    b	.L0da99898
    move	$s0,$zero
.L0da99a10:
    # Line 2339
    bne	$a0,$a3,.L0da99a28
    # Line 2350
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$s0,48($sp)
    # Line 2346
    b	.L0da99898
    li	$s0,3
    # Line 2350
    # lw $t9, -27320($gp) # &__glSetError
.L0da99a28:
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,32($sp)
    # Line 2351
    ld	$ra,40($sp)
    ld	$s1,24($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da99a4c:
    # Line 2339
    li	$v0,0x8095
    sltu	$a4,$a0,$v0
    bnez	$a4,.L0da99ad8
    sltu	$at,$v0,$a0
    bnez	$at,.L0da99a28
    # Line 2350
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$s0,48($sp)
    # Line 2344
    b	.L0da99898
    li	$s0,8
.L0da99a70:
    # Line 2394
    lw	$v0,20($s1)
    beqz	$v0,.L0da999a0
    # Line 2396
    move	$a0,$s2
    li	$a4,1
    li	$a1,402
    sd	$ra,40($sp)
    la	$a3,SYMBOL_LOCATION
    # lw $t9, -30696($gp) # &__glMgrasWrite
    lw	$a2,28($v0)
    lw	$a3,276($a3)
    jal	__glMgrasWrite
    lh	$a2,74($a2)
    b	.L0da999a0
    ld	$ra,40($sp)
.L0da99aa8:
    lui	$a4,0x1
    # Line 2399
    addu	$a4,$a4,$s2
    lw	$a4,-28164($a4)
    ld	$s0,48($sp)
    b	.L0da999b0
    sw	$zero,484($a4)
.L0da99ac0:
    # Line 2390
    # lw $t9, -32732($gp) # &sub_0daa0000
    addiu	$t9,$t9,-26992
    bal __glMgrim_PixelTexGenSGIX
    move	$a0,$s2
    b	.L0da99990
    ld	$ra,40($sp)
.L0da99ad8:
    # Line 2339
    li	$at,0x8070
    bne	$a0,$at,.L0da99a28
    # Line 2350
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$s0,48($sp)
    # Line 2347
    b	.L0da99898
    li	$s0,5
.L0da99af0:
    sd	$s0,48($sp)
    # Line 2343
    b	.L0da99898
    li	$s0,6
.L0da99afc:
    # Line 2381
    # lw $t9, -27320($gp) # &__glSetError
    li	$a0,1282
    sd	$ra,40($sp)
    jal	__glSetError
    ld	$s0,48($sp)
    ld	$gp,32($sp)
    # Line 2382
    ld	$ra,40($sp)
    ld	$s1,24($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da99b28:
    # Line 2358
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    sd	$ra,40($sp)
    li	$a1,0x8a30
    jal	mgrTM_RefreshDim
    addu	$a0,$a0,$a1
    ld	$a0,0($sp)
    ld	$v0,8($sp)
    ld	$ra,40($sp)
    b	.L0da998e0
    lw	$v0,-29964($v0)
.L0da99b50:
    # Line 2337
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,32($sp)
    ld	$ra,40($sp)
    ld	$s1,24($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrim_BindTextureEXT

# Function: __glMgrim_PrioritizeTexturesEXT
# Declared: Line 2402 (Source lines: 2404-2426)
# Address: 0x0da99b78 - 0x0da99ccc (Size: 340 bytes, Frame: 128)
.globl __glMgrim_PrioritizeTexturesEXT
.ent __glMgrim_PrioritizeTexturesEXT
__glMgrim_PrioritizeTexturesEXT:
    # Line 2408
    li	$v0,1
    # Line 2404
    addiu	$sp,$sp,-128
    sd	$s3,16($sp)
    # Line 2408
    lw	$s3,__glCurrentContext
    sd	$s7,0($sp)
    # Line 2404
    move	$s7,$a2
    sd	$gp,8($sp)
    # Line 2408
    lw	$at,__glBeginMode
    # Line 2404
    lui	$v1,0x16
    addiu	$v1,$v1,19232
    # Line 2408
    beq	$at,$v0,.L0da99ca4
    # Line 2404
    addu	$gp,$t9,$v1
    # Line 2408
    blezl	$a0,.L0da99c94
    ld	$gp,8($sp)
    sd	$ra,24($sp)
    sd	$s4,32($sp)
    sd	$s1,64($sp)
    move	$s1,$zero
    sd	$s8,80($sp)
    li	$s8,8
    sdc1	$f20,88($sp)
    mtc1	$zero,$f20
    sd	$s2,40($sp)
    lui	$s2,0x1
    sd	$s0,56($sp)
    move	$s0,$a1
    sd	$s5,72($sp)
    sll	$s5,$a0,0x2
    sd	$s6,48($sp)
    la	$s6,sub_0daa0000
    addu	$s5,$s5,$a1
    b	.L0da99c14
    addiu	$s6,$s6,-23884
.L0da99bfc:
    # Line 2424
    # lw $t9, -26212($gp) # &__glNamesUnlockData
    move	$a0,$s3
    jal	__glNamesUnlockData
    move	$a1,$s4
.L0da99c0c:
    # Line 2411
    beq	$s0,$s5,.L0da99c6c
    addiu	$s1,$s1,4
.L0da99c14:
    # Line 2408
    lw	$a2,0($s0)
    beqz	$a2,.L0da99c0c
    # Line 2411
    addiu	$s0,$s0,4
    # Line 2415
    # lw $t9, -26220($gp) # &__glNamesLockData
    addu	$a1,$s2,$s3
    lw	$a1,-28164($a1)
    move	$a0,$s3
    jal	__glNamesLockData
    lw	$a1,1180($a1)
    beqz	$v0,.L0da99c0c
    move	$s4,$v0
    # Line 2421
    lwc1	$f14,3284($s3)
    mov.s	$f13,$f20
    move	$t9,$s6
    addu	$a2,$s1,$s7
    bal __glMgrim_DeleteTexturesEXT
    lwc1	$f12,0($a2)
    lbu	$a3,179($s4)
    beq	$a3,$s8,.L0da99bfc
    swc1	$f0,112($s4)
    b	.L0da99bfc
    # Line 2423
    swc1	$f0,108($s4)
.L0da99c6c:
    ldc1	$f20,88($sp)
    ld	$s8,80($sp)
    ld	$s5,72($sp)
    ld	$s1,64($sp)
    ld	$s0,56($sp)
    ld	$s4,32($sp)
    ld	$ra,24($sp)
    ld	$s6,48($sp)
    ld	$s2,40($sp)
    ld	$gp,8($sp)
.L0da99c94:
    # Line 2426
    ld	$s3,16($sp)
    ld	$s7,0($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0da99ca4:
    # Line 2408
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,8($sp)
    ld	$ra,24($sp)
    ld	$s3,16($sp)
    ld	$s7,0($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glMgrim_PrioritizeTexturesEXT

# Function: __glMgrim_AreTexturesResidentEXT
# Declared: Line 2428 (Source lines: 2430-2472)
# Address: 0x0da99ccc - 0x0da99f28 (Size: 604 bytes, Frame: 128)
.globl __glMgrim_AreTexturesResidentEXT
.ent __glMgrim_AreTexturesResidentEXT
__glMgrim_AreTexturesResidentEXT:
    # Line 2435
    li	$v0,1
    # Line 2433
    li	$a3,1
    # Line 2430
    addiu	$sp,$sp,-128
    sd	$s0,72($sp)
    # Line 2435
    lw	$s0,__glCurrentContext
    sd	$a3,48($sp)
    sd	$s6,88($sp)
    # Line 2430
    move	$s6,$a2
    sd	$s5,64($sp)
    move	$s5,$a1
    sd	$gp,80($sp)
    # Line 2435
    lw	$at,__glBeginMode
    # Line 2430
    lui	$v1,0x16
    addiu	$v1,$v1,18892
    # Line 2435
    beq	$at,$v0,.L0da99ef8
    # Line 2430
    addu	$gp,$t9,$v1
    sd	$s3,40($sp)
    sd	$ra,24($sp)
    sd	$s4,32($sp)
    sd	$s1,0($sp)
    sd	$s7,8($sp)
    sd	$s8,16($sp)
    sd	$s2,56($sp)
    # Line 2438
    blez	$a0,.L0da99e38
    move	$s2,$zero
    sd	$ra,24($sp)
    sd	$s4,32($sp)
    sd	$s7,8($sp)
    lui	$s3,0x1
    move	$s1,$s5
    b	.L0da99d74
    sll	$s8,$a0,0x2
.L0da99d4c:
    # Line 2459
    beqz	$a2,.L0da99e30
    li	$a4,1
.L0da99d54:
    # Line 2465
    sb	$a4,0($s7)
.L0da99d58:
    # Line 2469
    # lw $t9, -26212($gp) # &__glNamesUnlockData
    move	$a0,$s0
    jal	__glNamesUnlockData
    move	$a1,$s4
    # Line 2438
    addu	$at,$s8,$s5
    beq	$at,$s1,.L0da99e3c
    ld	$v0,48($sp)
.L0da99d74:
    lw	$a2,0($s1)
    beqz	$a2,.L0da99e70
    # Line 2454
    addu	$s7,$s2,$s6
    # Line 2444
    # lw $t9, -26220($gp) # &__glNamesLockData
    addu	$a1,$s3,$s0
    lw	$a1,-28164($a1)
    move	$a0,$s0
    jal	__glNamesLockData
    lw	$a1,1180($a1)
    beqz	$v0,.L0da99eb4
    move	$s4,$v0
    # Line 2454
    sb	$zero,0($s7)
    lbu	$a3,192($s4)
    # Line 2438
    addiu	$s2,$s2,1
    # Line 2454
    beqz	$a3,.L0da99e0c
    # Line 2438
    addiu	$s1,$s1,4
    # Line 2459
    lbu	$a0,164($s4)
.L0da99db8:
    lbu	$a1,165($s4)
    # Line 2458
    li	$a2,1
    # Line 2459
    slt	$a4,$a1,$a0
    sll	$v0,$a0,0x2
    bnez	$a4,.L0da99e28
    # Line 2458
    sb	$a2,193($s4)
    # Line 2459
    addu	$v0,$s4,$v0
    b	.L0da99de8
    lw	$a3,20($v0)
.L0da99ddc:
    bnez	$v1,.L0da99d4c
    nop
    lw	$a3,20($v0)
.L0da99de8:
    lw	$a3,28($a3)
    lbu	$a3,89($a3)
    addiu	$v0,$v0,4
    addiu	$a0,$a0,1
    bnez	$a3,.L0da99ddc
    slt	$v1,$a1,$a0
    # Line 2461
    move	$a2,$zero
    b	.L0da99ddc
    sb	$zero,193($s4)
.L0da99e0c:
    # Line 2456
    # lw $t9, -30736($gp) # &mgrTM_TexValidate
    jal	mgrTM_TexValidate
    move	$a0,$s4
    lbu	$a4,192($s4)
    bnezl	$a4,.L0da99db8
    # Line 2459
    lbu	$a0,164($s4)
    lbu	$a2,193($s4)
.L0da99e28:
    bnez	$a2,.L0da99d54
    li	$a4,1
.L0da99e30:
    b	.L0da99d58
    sd	$zero,48($sp)
.L0da99e38:
    ld	$v0,48($sp)
.L0da99e3c:
    ld	$gp,80($sp)
    # Line 2472
    ld	$s0,72($sp)
    ld	$s1,0($sp)
    ld	$s2,56($sp)
    ld	$s3,40($sp)
    ld	$s4,32($sp)
    ld	$s5,64($sp)
    ld	$s6,88($sp)
    ld	$ra,24($sp)
    ld	$s7,8($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0da99e70:
    # Line 2441
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    # Line 2442
    move	$v0,$zero
    ld	$gp,80($sp)
    ld	$s0,72($sp)
    ld	$s1,0($sp)
    ld	$s2,56($sp)
    ld	$s3,40($sp)
    ld	$s4,32($sp)
    ld	$s5,64($sp)
    ld	$s6,88($sp)
    ld	$ra,24($sp)
    ld	$s7,8($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0da99eb4:
    # Line 2450
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    # Line 2451
    move	$v0,$zero
    ld	$gp,80($sp)
    ld	$s0,72($sp)
    ld	$s1,0($sp)
    ld	$s2,56($sp)
    ld	$s3,40($sp)
    ld	$s4,32($sp)
    ld	$s5,64($sp)
    ld	$s6,88($sp)
    ld	$ra,24($sp)
    ld	$s7,8($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0da99ef8:
    # Line 2435
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    move	$v0,$zero
    ld	$gp,80($sp)
    ld	$s0,72($sp)
    ld	$ra,24($sp)
    ld	$s5,64($sp)
    ld	$s6,88($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glMgrim_AreTexturesResidentEXT

# Function: __glMgrim_IsTextureEXT
# Declared: Line 2475 (Source lines: 2476-2491)
# Address: 0x0da99f28 - 0x0da99ff8 (Size: 208 bytes, Frame: 48)
.globl __glMgrim_IsTextureEXT
.ent __glMgrim_IsTextureEXT
__glMgrim_IsTextureEXT:
    # Line 2476
    move	$a2,$a0
    # Line 2479
    li	$v0,1
    # Line 2476
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    # Line 2479
    lw	$s0,__glCurrentContext
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    # Line 2476
    lui	$v1,0x16
    addiu	$v1,$v1,18288
    # Line 2479
    beq	$at,$v0,.L0da99fd0
    # Line 2476
    addu	$gp,$t9,$v1
    # Line 2479
    beqz	$a2,.L0da99fbc
    # Line 2484
    move	$a0,$s0
    # lw $t9, -26220($gp) # &__glNamesLockData
    li	$a1,0x91fc
    addu	$a1,$a1,$s0
    lw	$a1,0($a1)
    sd	$ra,16($sp)
    jal	__glNamesLockData
    lw	$a1,1180($a1)
    bnez	$v0,.L0da99f94
    ld	$ra,16($sp)
    # Line 2487
    move	$v0,$zero
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da99f94:
    # Line 2489
    # lw $t9, -26212($gp) # &__glNamesUnlockData
    move	$a0,$s0
    jal	__glNamesUnlockData
    move	$a1,$v0
    # Line 2491
    li	$v0,1
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da99fbc:
    # Line 2482
    move	$v0,$zero
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da99fd0:
    # Line 2479
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    move	$v0,$zero
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_IsTextureEXT

# Function: __glMgrim_GenTexturesEXT
# Declared: Line 2494 (Source lines: 2495-2511)
# Address: 0x0da99ff8 - 0x0da9a0b4 (Size: 188 bytes, Frame: 32)
.globl __glMgrim_GenTexturesEXT
.ent __glMgrim_GenTexturesEXT
__glMgrim_GenTexturesEXT:
    # Line 2497
    lw	$a5,__glCurrentContext
    # Line 2495
    move	$a3,$a1
    move	$a2,$a0
    # Line 2497
    li	$v0,1
    # Line 2495
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 2497
    lw	$at,__glBeginMode
    # Line 2495
    lui	$v1,0x16
    addiu	$v1,$v1,18080
    # Line 2497
    beq	$at,$v0,.L0da9a080
    # Line 2495
    addu	$gp,$t9,$v1
    # Line 2497
    blez	$a2,.L0da9a06c
    nop
    # Line 2502
    bnez	$a3,.L0da9a040
    # Line 2510
    move	$a0,$a5
    ld	$gp,0($sp)
    # Line 2505
    jr	$ra
    addiu	$sp,$sp,32
.L0da9a040:
    # Line 2510
    # lw $t9, -26192($gp) # &__glNamesGenNames
    li	$a1,0x91fc
    addu	$a1,$a1,$a5
    lw	$a1,0($a1)
    sd	$ra,8($sp)
    jal	__glNamesGenNames
    lw	$a1,1180($a1)
    # Line 2511
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da9a06c:
    # Line 2497
    bltz	$a2,.L0da9a0a0
    # Line 2501
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da9a074:
    ld	$gp,0($sp)
    # Line 2502
    jr	$ra
    addiu	$sp,$sp,32
.L0da9a080:
    # Line 2497
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da9a0a0:
    sd	$ra,8($sp)
    # Line 2501
    jalr	$t9
    li	$a0,1281
    b	.L0da9a074
    ld	$ra,8($sp)
.end __glMgrim_GenTexturesEXT

# Function: __glMgrim_DeleteTexturesEXT
# Declared: Line 2513 (Source lines: 2514-2572)
# Address: 0x0da9a0b4 - 0x0da9a2b4 (Size: 512 bytes, Frame: 144)
.globl __glMgrim_DeleteTexturesEXT
.ent __glMgrim_DeleteTexturesEXT
__glMgrim_DeleteTexturesEXT:
    # Line 2519
    li	$v0,1
    # Line 2514
    addiu	$sp,$sp,-144
    sd	$s1,8($sp)
    # Line 2519
    lw	$s1,__glCurrentContext
    sd	$gp,16($sp)
    lw	$at,__glBeginMode
    # Line 2514
    lui	$v1,0x16
    addiu	$v1,$v1,17892
    # Line 2519
    beq	$at,$v0,.L0da9a290
    # Line 2514
    addu	$gp,$t9,$v1
    sd	$s6,56($sp)
    # Line 2532
    lw	$s6,0($a1)
    sd	$s0,64($sp)
    # Line 2522
    lui	$s0,0x1
    addu	$at,$s0,$s1
    sd	$at,40($sp)
    sd	$at,32($sp)
    lw	$at,-28164($at)
    sd	$ra,48($sp)
    # Line 2532
    move	$a3,$s6
    # Line 2522
    lw	$at,1180($at)
    sd	$s6,24($sp)
    # Line 2532
    beqz	$a0,.L0da9a258
    sd	$at,0($sp)
    sd	$ra,48($sp)
    sd	$s4,80($sp)
    sd	$s5,72($sp)
    sd	$s3,96($sp)
    li	$s3,30160
    sd	$s7,104($sp)
    li	$s7,0x8a30
    sd	$s2,88($sp)
    move	$s2,$a1
    sd	$s8,112($sp)
    sll	$s8,$a0,0x2
    b	.L0da9a188
    addu	$s8,$s8,$a1
.L0da9a148:
    # Line 2553
    # lw $t9, -26212($gp) # &__glNamesUnlockData
    jal	__glNamesUnlockData
    move	$a0,$s1
    # Line 2556
    ld	$at,32($sp)
    sw	$s5,-29964($s4)
    lw	$at,-30164($at)
    bne	$at,$s5,.L0da9a170
    ld	$v0,32($sp)
    # Line 2560
    lw	$v0,-28164($v0)
    sw	$zero,484($v0)
.L0da9a170:
    # Line 2561
    lw	$a2,0($s2)
.L0da9a174:
    # Line 2565
    bne	$a2,$s6,.L0da9a1d8
    # Line 2567
    move	$a0,$s1
.L0da9a17c:
    # Line 2533
    addiu	$s2,$s2,4
    beq	$s2,$s8,.L0da9a240
    addiu	$s6,$s6,1
.L0da9a188:
    # Line 2532
    lw	$a2,0($s2)
    # Line 2539
    addu	$s5,$s7,$s1
    # Line 2532
    beqz	$a2,.L0da9a214
    ld	$s4,40($sp)
    b	.L0da9a1c8
    nop
.L0da9a1a0:
    # Line 2539
    beqz	$a0,.L0da9a200
    # Line 2548
    nop	# was lw $t9, -30792($gp) # &mgrTM_RefreshDim
.L0da9a1a8:
    # Line 2549
    lw	$v1,84($a0)
    beq	$v1,$a2,.L0da9a148
    move	$a1,$a0
    # Line 2547
    addu	$a3,$s0,$s1
    addiu	$s4,$s4,204
    addiu	$a3,$a3,1836
    beq	$a3,$s4,.L0da9a174
    addiu	$s5,$s5,204
.L0da9a1c8:
    # Line 2539
    beq	$s3,$s4,.L0da9a1a8
    lw	$a0,-29964($s4)
    b	.L0da9a1a0
    nop
.L0da9a1d8:
    # Line 2567
    ld	$a3,24($sp)
    # lw $t9, -26200($gp) # &__glNamesDeleteRange
    ld	$a1,0($sp)
    move	$a2,$a3
    jal	__glNamesDeleteRange
    subu	$a3,$s6,$a3
    # Line 2568
    lw	$s6,0($s2)
    move	$at,$s6
    b	.L0da9a17c
    sd	$s6,24($sp)
.L0da9a200:
    # Line 2548
    jalr	$t9
    move	$a0,$s5
    lw	$a0,-29964($s4)
    b	.L0da9a1a8
    lw	$a2,0($s2)
.L0da9a214:
    # Line 2536
    move	$a0,$s1
    ld	$a3,24($sp)
    # lw $t9, -26200($gp) # &__glNamesDeleteRange
    ld	$a1,0($sp)
    move	$a2,$a3
    jal	__glNamesDeleteRange
    subu	$a3,$s6,$a3
    # Line 2538
    lw	$s6,4($s2)
    sd	$s6,24($sp)
    # Line 2539
    b	.L0da9a17c
    addiu	$s6,$s6,-1
.L0da9a240:
    ld	$s8,112($sp)
    ld	$s7,104($sp)
    ld	$s5,72($sp)
    ld	$s4,80($sp)
    ld	$s3,96($sp)
    ld	$s2,88($sp)
.L0da9a258:
    # Line 2571
    move	$a0,$s1
    ld	$a1,0($sp)
    ld	$a3,24($sp)
    # lw $t9, -26200($gp) # &__glNamesDeleteRange
    ld	$s0,64($sp)
    move	$a2,$a3
    jal	__glNamesDeleteRange
    subu	$a3,$s6,$a3
    ld	$gp,16($sp)
    # Line 2572
    ld	$ra,48($sp)
    ld	$s1,8($sp)
    ld	$s6,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0da9a290:
    # Line 2519
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,48($sp)
    ld	$gp,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glMgrim_DeleteTexturesEXT

# Function: Clampf
# Declared: Line 2574 (Source lines: 2575-2578)
# Address: 0x0da9a2b4 - 0x0da9a2ec (Size: 56 bytes, Frame: 0)
.ent Clampf
Clampf:
    # Line 2575
    c.lt.s	$f12,$f13
    nop
    bc1t	.L0da9a2e4
    # Line 2578
    mov.s	$f0,$f12
    # Line 2576
    c.lt.s	$f14,$f12
    nop
    bc1f	.L0da9a2dc
    nop
    # Line 2577
    jr	$ra
    mov.s	$f0,$f14
.L0da9a2dc:
    # Line 2578
    jr	$ra
    nop
.L0da9a2e4:
    # Line 2576
    jr	$ra
    mov.s	$f0,$f13
.end Clampf

.rdata
_lit8_3fd0000000000000:
    .word 0x3fd00000, 0x00000000
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_403fffbe76c8b439:
    .word 0x403fffbe, 0x76c8b439
_lit8_bfe0000000000000:
    .word 0xbfe00000, 0x00000000
_lit_447a0000:
    .word 0x447a0000
_lit_4b7fffff:
    .word 0x4b7fffff
_lit_bf800000:
    .word 0xbf800000

