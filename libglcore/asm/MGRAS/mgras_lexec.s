# Source: ../MGRAS/mgras_lexec.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_lexec.c
# Total Functions: 10

.text

# Function: __glMgrle_TexImage1D
# Declared: Line 41 (Source lines: 42-71)
# Address: 0x0da7af78 - 0x0da7b118 (Size: 416 bytes, Frame: 224)
.globl __glMgrle_TexImage1D
.ent __glMgrle_TexImage1D
__glMgrle_TexImage1D:
    # Line 49
    li	$a3,9
    move	$a1,$zero
    # Line 42
    addiu	$sp,$sp,-96
    # Line 49
    addiu	$a5,$sp,0
    sd	$s1,48($sp)
    # Line 42
    move	$s1,$a0
    # Line 50
    li	$a0,9
    sd	$gp,40($sp)
    # Line 42
    lui	$at,0x18
    sd	$s0,56($sp)
    # Line 47
    lw	$s0,__glCurrentContext
    # Line 42
    addiu	$at,$at,14112
    addu	$gp,$t9,$at
    # Line 49
    addiu	$a4,$s0,1108
.L0da7afb0:
    addu	$v0,$a1,$a4
    addu	$v1,$a1,$a5
    addiu	$a1,$a1,4
    lw	$v0,0($v0)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0da7afb0
    sw	$v0,0($v1)
    # Line 50
    move	$a1,$zero
    addiu	$a3,$s0,1108
    la	$a4,__glMgr_InternalUnpack
.L0da7afd8:
    addu	$a2,$a1,$a3
    addu	$v1,$a1,$a4
    addiu	$a1,$a1,4
    lw	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da7afd8
    sw	$v1,0($a2)
    # Line 53
    addiu	$a7,$s1,32
    lw	$a6,24($s1)
    lw	$a5,20($s1)
    lw	$a4,16($s1)
    lw	$a3,12($s1)
    lw	$a2,8($s1)
    lw	$t9,4344($zero)
    lw	$a1,4($s1)
    sd	$ra,72($sp)
    jalr	$t9
    lw	$a0,0($s1)
    lui	$a3,0x1
    addu	$a3,$s0,$a3
    lw	$a2,-30164($a3)
    li	$a0,0x8a30
    addu	$a0,$s0,$a0
    bne	$a2,$a0,.L0da7b074
    ld	$ra,72($sp)
    li	$at,-1
    dsll	$at,$at,0x10
    ori	$at,$at,0x75d0
    beq	$s0,$at,.L0da7b054
    lw	$a1,-29964($a3)
    beqz	$a1,.L0da7b0fc
.L0da7b054:
    # Line 63
    la	$v0,MgrasPrevVidTexture
    lw	$v0,0($v0)
    bnez	$v0,.L0da7b0cc
    # Line 65
    nop	# was lw $t9, -30748($gp) # &mgrTM_VidTexWait
.L0da7b064:
    lw	$v1,-28164($a3)
    lw	$v1,484($v1)
    bne	$v1,$a1,.L0da7b0ec
    # Line 67
    nop	# was lw $t9, -30744($gp) # &mgrTM_DrawSetup
.L0da7b074:
    # Line 70
    li	$a1,9
    move	$a0,$zero
    addiu	$a4,$sp,0
    addiu	$a3,$s0,1108
    # Line 71
    ld	$s0,56($sp)
.L0da7b088:
    # Line 70
    addu	$a2,$a0,$a4
    addu	$at,$a0,$a3
    addiu	$a0,$a0,4
    lw	$a2,0($a2)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da7b088
    sw	$a2,0($at)
    # Line 71
    li	$v1,-4
    lw	$v0,28($s1)
    ld	$gp,40($sp)
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s1
    ld	$s1,48($sp)
    addiu	$sp,$sp,96
    jr	$ra
    addiu	$v0,$v0,32
.L0da7b0cc:
    sd	$a3,64($sp)
    # Line 65
    move	$a0,$s0
    jal	mgrTM_DrawSetup
    li	$a2,1
    ld	$a3,64($sp)
    ld	$ra,72($sp)
    b	.L0da7b064
    lw	$a1,-29964($a3)
.L0da7b0ec:
    # Line 67
    jalr	$t9
    move	$a0,$s0
    b	.L0da7b074
    ld	$ra,72($sp)
.L0da7b0fc:
    # Line 63
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    jal	mgrTM_RefreshDim
    sd	$a3,64($sp)
    ld	$a3,64($sp)
    ld	$ra,72($sp)
    b	.L0da7b054
    lw	$a1,-29964($a3)
.end __glMgrle_TexImage1D

# Function: __glMgrle_TexImage2D
# Declared: Line 79 (Source lines: 80-109)
# Address: 0x0da7b118 - 0x0da7b2c4 (Size: 428 bytes, Frame: 240)
.globl __glMgrle_TexImage2D
.ent __glMgrle_TexImage2D
__glMgrle_TexImage2D:
    # Line 87
    li	$a3,9
    move	$a1,$zero
    # Line 80
    addiu	$sp,$sp,-112
    # Line 87
    addiu	$a5,$sp,16
    sd	$s1,64($sp)
    # Line 80
    move	$s1,$a0
    # Line 88
    li	$a0,9
    sd	$gp,56($sp)
    # Line 80
    lui	$at,0x18
    sd	$s0,72($sp)
    # Line 85
    lw	$s0,__glCurrentContext
    # Line 80
    addiu	$at,$at,13696
    addu	$gp,$t9,$at
    # Line 87
    addiu	$a4,$s0,1108
.L0da7b150:
    addu	$v0,$a1,$a4
    addu	$v1,$a1,$a5
    addiu	$a1,$a1,4
    lw	$v0,0($v0)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0da7b150
    sw	$v0,0($v1)
    # Line 88
    move	$a1,$zero
    addiu	$a3,$s0,1108
    la	$a4,__glMgr_InternalUnpack
.L0da7b178:
    addu	$a2,$a1,$a3
    addu	$v1,$a1,$a4
    addiu	$a1,$a1,4
    lw	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da7b178
    sw	$v1,0($a2)
    # Line 91
    lw	$a7,28($s1)
    lw	$a6,24($s1)
    lw	$a5,20($s1)
    lw	$a4,16($s1)
    lw	$a3,12($s1)
    lw	$a2,8($s1)
    lw	$a1,4($s1)
    lw	$a0,0($s1)
    addiu	$t0,$s1,36
    sw	$t0,4($sp)
    lw	$t9,4348($zero)
    sd	$ra,88($sp)
    jalr	$t9
    nop
    lui	$a3,0x1
    addu	$a3,$s0,$a3
    lw	$at,-30164($a3)
    li	$a0,0x8bc8
    addu	$a0,$s0,$a0
    bne	$at,$a0,.L0da7b220
    ld	$ra,88($sp)
    li	$at,-1
    dsll	$at,$at,0x10
    ori	$at,$at,0x7438
    beq	$s0,$at,.L0da7b200
    lw	$a1,-29556($a3)
    beqz	$a1,.L0da7b2a8
.L0da7b200:
    # Line 101
    la	$v0,MgrasPrevVidTexture
    lw	$v0,0($v0)
    bnez	$v0,.L0da7b278
    # Line 103
    nop	# was lw $t9, -30748($gp) # &mgrTM_VidTexWait
.L0da7b210:
    lw	$v1,-28164($a3)
    lw	$v1,484($v1)
    bne	$v1,$a1,.L0da7b298
    # Line 105
    nop	# was lw $t9, -30744($gp) # &mgrTM_DrawSetup
.L0da7b220:
    # Line 108
    li	$a1,9
    move	$a0,$zero
    addiu	$a4,$sp,16
    addiu	$a3,$s0,1108
    # Line 109
    ld	$s0,72($sp)
.L0da7b234:
    # Line 108
    addu	$a2,$a0,$a4
    addu	$at,$a0,$a3
    addiu	$a0,$a0,4
    lw	$a2,0($a2)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da7b234
    sw	$a2,0($at)
    # Line 109
    li	$v1,-4
    lw	$v0,32($s1)
    ld	$gp,56($sp)
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s1
    ld	$s1,64($sp)
    addiu	$sp,$sp,112
    jr	$ra
    addiu	$v0,$v0,36
.L0da7b278:
    sd	$a3,80($sp)
    # Line 103
    move	$a0,$s0
    jal	mgrTM_DrawSetup
    li	$a2,1
    ld	$a3,80($sp)
    ld	$ra,88($sp)
    b	.L0da7b210
    lw	$a1,-29556($a3)
.L0da7b298:
    # Line 105
    jalr	$t9
    move	$a0,$s0
    b	.L0da7b220
    ld	$ra,88($sp)
.L0da7b2a8:
    # Line 101
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    jal	mgrTM_RefreshDim
    sd	$a3,80($sp)
    ld	$a3,80($sp)
    ld	$ra,88($sp)
    b	.L0da7b200
    lw	$a1,-29556($a3)
.end __glMgrle_TexImage2D

# Function: __glMgrle_TexImage3DEXT
# Declared: Line 117 (Source lines: 118-147)
# Address: 0x0da7b2c4 - 0x0da7b478 (Size: 436 bytes, Frame: 240)
.globl __glMgrle_TexImage3DEXT
.ent __glMgrle_TexImage3DEXT
__glMgrle_TexImage3DEXT:
    # Line 125
    li	$a3,9
    move	$a1,$zero
    # Line 118
    addiu	$sp,$sp,-112
    # Line 125
    addiu	$a5,$sp,16
    sd	$s1,64($sp)
    # Line 118
    move	$s1,$a0
    # Line 126
    li	$a0,9
    sd	$gp,56($sp)
    # Line 118
    lui	$at,0x18
    sd	$s0,72($sp)
    # Line 123
    lw	$s0,__glCurrentContext
    # Line 118
    addiu	$at,$at,13268
    addu	$gp,$t9,$at
    # Line 125
    addiu	$a4,$s0,1108
.L0da7b2fc:
    addu	$v0,$a1,$a4
    addu	$v1,$a1,$a5
    addiu	$a1,$a1,4
    lw	$v0,0($v0)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0da7b2fc
    sw	$v0,0($v1)
    # Line 126
    move	$a1,$zero
    addiu	$a3,$s0,1108
    la	$a4,__glMgr_InternalUnpack
.L0da7b324:
    addu	$a2,$a1,$a3
    addu	$v1,$a1,$a4
    addiu	$a1,$a1,4
    lw	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da7b324
    sw	$v1,0($a2)
    # Line 129
    lw	$a7,28($s1)
    lw	$a6,24($s1)
    lw	$a5,20($s1)
    lw	$a4,16($s1)
    lw	$a3,12($s1)
    lw	$a2,8($s1)
    lw	$a1,4($s1)
    lw	$a0,0($s1)
    lw	$t1,32($s1)
    addiu	$t0,$s1,40
    sw	$t0,12($sp)
    sw	$t1,4($sp)
    lw	$t9,4952($zero)
    sd	$ra,88($sp)
    jalr	$t9
    nop
    lui	$a3,0x1
    addu	$a3,$s0,$a3
    lw	$at,-30164($a3)
    li	$a0,0x8d60
    addu	$a0,$s0,$a0
    bne	$at,$a0,.L0da7b3d4
    ld	$ra,88($sp)
    li	$at,-1
    dsll	$at,$at,0x10
    ori	$at,$at,0x72a0
    beq	$s0,$at,.L0da7b3b4
    lw	$a1,-29148($a3)
    beqz	$a1,.L0da7b45c
.L0da7b3b4:
    # Line 139
    la	$v0,MgrasPrevVidTexture
    lw	$v0,0($v0)
    bnez	$v0,.L0da7b42c
    # Line 141
    nop	# was lw $t9, -30748($gp) # &mgrTM_VidTexWait
.L0da7b3c4:
    lw	$v1,-28164($a3)
    lw	$v1,484($v1)
    bne	$v1,$a1,.L0da7b44c
    # Line 143
    nop	# was lw $t9, -30744($gp) # &mgrTM_DrawSetup
.L0da7b3d4:
    # Line 146
    li	$a1,9
    move	$a0,$zero
    addiu	$a4,$sp,16
    addiu	$a3,$s0,1108
    # Line 147
    ld	$s0,72($sp)
.L0da7b3e8:
    # Line 146
    addu	$a2,$a0,$a4
    addu	$at,$a0,$a3
    addiu	$a0,$a0,4
    lw	$a2,0($a2)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da7b3e8
    sw	$a2,0($at)
    # Line 147
    li	$v1,-4
    lw	$v0,36($s1)
    ld	$gp,56($sp)
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s1
    ld	$s1,64($sp)
    addiu	$sp,$sp,112
    jr	$ra
    addiu	$v0,$v0,40
.L0da7b42c:
    sd	$a3,80($sp)
    # Line 141
    move	$a0,$s0
    jal	mgrTM_DrawSetup
    li	$a2,1
    ld	$a3,80($sp)
    ld	$ra,88($sp)
    b	.L0da7b3c4
    lw	$a1,-29148($a3)
.L0da7b44c:
    # Line 143
    jalr	$t9
    move	$a0,$s0
    b	.L0da7b3d4
    ld	$ra,88($sp)
.L0da7b45c:
    # Line 139
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    jal	mgrTM_RefreshDim
    sd	$a3,80($sp)
    ld	$a3,80($sp)
    ld	$ra,88($sp)
    b	.L0da7b3b4
    lw	$a1,-29148($a3)
.end __glMgrle_TexImage3DEXT

# Function: __glMgrle_TexSubImage1DEXT
# Declared: Line 155 (Source lines: 156-171)
# Address: 0x0da7b478 - 0x0da7b578 (Size: 256 bytes, Frame: 224)
.globl __glMgrle_TexSubImage1DEXT
.ent __glMgrle_TexSubImage1DEXT
__glMgrle_TexSubImage1DEXT:
    # Line 161
    li	$a3,9
    move	$a2,$zero
    # Line 156
    addiu	$sp,$sp,-96
    # Line 161
    addiu	$a5,$sp,0
    sd	$s7,48($sp)
    # Line 156
    move	$s7,$a0
    # Line 162
    li	$a0,9
    sd	$gp,40($sp)
    # Line 156
    lui	$at,0x18
    sd	$s5,56($sp)
    # Line 159
    lw	$s5,__glCurrentContext
    # Line 156
    addiu	$at,$at,12832
    addu	$gp,$t9,$at
    # Line 161
    addiu	$a4,$s5,1108
.L0da7b4b0:
    addu	$v0,$a2,$a4
    addu	$v1,$a2,$a5
    addiu	$a2,$a2,4
    lw	$v0,0($v0)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0da7b4b0
    sw	$v0,0($v1)
    # Line 162
    move	$a2,$zero
    addiu	$a3,$s5,1108
    la	$a4,__glMgr_InternalUnpack
.L0da7b4d8:
    addu	$a1,$a2,$a3
    addu	$v1,$a2,$a4
    addiu	$a2,$a2,4
    lw	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da7b4d8
    sw	$v1,0($a1)
    # Line 165
    addiu	$a6,$s7,28
    lw	$a5,20($s7)
    lw	$a4,16($s7)
    lw	$a3,12($s7)
    lw	$a2,8($s7)
    lw	$t9,4852($zero)
    lw	$a1,4($s7)
    sd	$ra,64($sp)
    jalr	$t9
    lw	$a0,0($s7)
    # Line 170
    li	$a0,9
    move	$a2,$zero
    addiu	$a4,$sp,0
    ld	$ra,64($sp)
    addiu	$a3,$s5,1108
    # Line 171
    ld	$s5,56($sp)
.L0da7b534:
    # Line 170
    addu	$a1,$a2,$a4
    addu	$at,$a2,$a3
    addiu	$a2,$a2,4
    lw	$a1,0($a1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da7b534
    sw	$a1,0($at)
    # Line 171
    li	$v1,-4
    lw	$v0,24($s7)
    ld	$gp,40($sp)
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s7
    ld	$s7,48($sp)
    addiu	$sp,$sp,96
    jr	$ra
    addiu	$v0,$v0,28
.end __glMgrle_TexSubImage1DEXT

# Function: __glMgrle_TexSubImage2DEXT
# Declared: Line 179 (Source lines: 180-197)
# Address: 0x0da7b578 - 0x0da7b688 (Size: 272 bytes, Frame: 240)
.globl __glMgrle_TexSubImage2DEXT
.ent __glMgrle_TexSubImage2DEXT
__glMgrle_TexSubImage2DEXT:
    # Line 185
    li	$a3,9
    move	$a2,$zero
    # Line 180
    addiu	$sp,$sp,-112
    # Line 185
    addiu	$a5,$sp,16
    sd	$s7,64($sp)
    # Line 180
    move	$s7,$a0
    # Line 186
    li	$a0,9
    sd	$gp,56($sp)
    # Line 180
    lui	$at,0x18
    sd	$s5,72($sp)
    # Line 183
    lw	$s5,__glCurrentContext
    # Line 180
    addiu	$at,$at,12576
    addu	$gp,$t9,$at
    # Line 185
    addiu	$a4,$s5,1108
.L0da7b5b0:
    addu	$v0,$a2,$a4
    addu	$v1,$a2,$a5
    addiu	$a2,$a2,4
    lw	$v0,0($v0)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0da7b5b0
    sw	$v0,0($v1)
    # Line 186
    move	$a2,$zero
    addiu	$a3,$s5,1108
    la	$a4,__glMgr_InternalUnpack
.L0da7b5d8:
    addu	$a1,$a2,$a3
    addu	$v1,$a2,$a4
    addiu	$a2,$a2,4
    lw	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da7b5d8
    sw	$v1,0($a1)
    # Line 189
    lw	$a7,28($s7)
    lw	$a6,24($s7)
    lw	$a5,20($s7)
    lw	$a4,16($s7)
    lw	$a3,12($s7)
    lw	$a2,8($s7)
    lw	$a1,4($s7)
    lw	$a0,0($s7)
    addiu	$t0,$s7,36
    sw	$t0,4($sp)
    lw	$t9,4856($zero)
    sd	$ra,80($sp)
    jalr	$t9
    nop
    # Line 196
    li	$a0,9
    move	$a2,$zero
    addiu	$a4,$sp,16
    ld	$ra,80($sp)
    addiu	$a3,$s5,1108
    # Line 197
    ld	$s5,72($sp)
.L0da7b644:
    # Line 196
    addu	$at,$a2,$a4
    addu	$v0,$a2,$a3
    addiu	$a2,$a2,4
    lw	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da7b644
    sw	$at,0($v0)
    # Line 197
    li	$v1,-4
    lw	$v0,32($s7)
    ld	$gp,56($sp)
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s7
    ld	$s7,64($sp)
    addiu	$sp,$sp,112
    jr	$ra
    addiu	$v0,$v0,36
.end __glMgrle_TexSubImage2DEXT

# Function: __glMgrle_TexSubImage3DEXT
# Declared: Line 205 (Source lines: 206-223)
# Address: 0x0da7b688 - 0x0da7b7a8 (Size: 288 bytes, Frame: 128)
.globl __glMgrle_TexSubImage3DEXT
.ent __glMgrle_TexSubImage3DEXT
__glMgrle_TexSubImage3DEXT:
    # Line 211
    li	$a3,9
    move	$a2,$zero
    # Line 206
    addiu	$sp,$sp,-128
    # Line 211
    addiu	$a5,$sp,32
    sd	$s7,80($sp)
    # Line 206
    move	$s7,$a0
    # Line 212
    li	$a0,9
    sd	$gp,72($sp)
    # Line 206
    lui	$at,0x18
    sd	$s5,88($sp)
    # Line 209
    lw	$s5,__glCurrentContext
    # Line 206
    addiu	$at,$at,12304
    addu	$gp,$t9,$at
    # Line 211
    addiu	$a4,$s5,1108
.L0da7b6c0:
    addu	$v0,$a2,$a4
    addu	$v1,$a2,$a5
    addiu	$a2,$a2,4
    lw	$v0,0($v0)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0da7b6c0
    sw	$v0,0($v1)
    # Line 212
    move	$a2,$zero
    addiu	$a3,$s5,1108
    la	$a4,__glMgr_InternalUnpack
.L0da7b6e8:
    addu	$a1,$a2,$a3
    addu	$v1,$a2,$a4
    addiu	$a2,$a2,4
    lw	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da7b6e8
    sw	$v1,0($a1)
    # Line 215
    lw	$a7,28($s7)
    lw	$a6,24($s7)
    lw	$a5,20($s7)
    lw	$a4,16($s7)
    lw	$a3,12($s7)
    lw	$a2,8($s7)
    lw	$t2,32($s7)
    lw	$a1,4($s7)
    lw	$a0,0($s7)
    sw	$t2,4($sp)
    lw	$t1,36($s7)
    addiu	$t0,$s7,44
    sw	$t0,20($sp)
    sw	$t1,12($sp)
    lw	$t9,4956($zero)
    sd	$ra,96($sp)
    jalr	$t9
    nop
    # Line 222
    li	$a0,9
    move	$a2,$zero
    addiu	$a4,$sp,32
    ld	$ra,96($sp)
    addiu	$a3,$s5,1108
    # Line 223
    ld	$s5,88($sp)
.L0da7b764:
    # Line 222
    addu	$at,$a2,$a4
    addu	$v0,$a2,$a3
    addiu	$a2,$a2,4
    lw	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da7b764
    sw	$at,0($v0)
    # Line 223
    li	$v1,-4
    lw	$v0,40($s7)
    ld	$gp,72($sp)
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s7
    ld	$s7,80($sp)
    addiu	$sp,$sp,128
    jr	$ra
    addiu	$v0,$v0,44
.end __glMgrle_TexSubImage3DEXT

# Function: __glMgrle_ConvolutionFilter1DEXT
# Declared: Line 231 (Source lines: 232-249)
# Address: 0x0da7b7a8 - 0x0da7b898 (Size: 240 bytes, Frame: 224)
.globl __glMgrle_ConvolutionFilter1DEXT
.ent __glMgrle_ConvolutionFilter1DEXT
__glMgrle_ConvolutionFilter1DEXT:
    # Line 239
    li	$a3,9
    move	$a2,$zero
    # Line 232
    addiu	$sp,$sp,-96
    # Line 239
    addiu	$a5,$sp,0
    sd	$s7,48($sp)
    # Line 232
    move	$s7,$a0
    # Line 240
    li	$a0,9
    sd	$gp,40($sp)
    # Line 232
    lui	$at,0x18
    sd	$s5,56($sp)
    # Line 237
    lw	$s5,__glCurrentContext
    # Line 232
    addiu	$at,$at,12016
    addu	$gp,$t9,$at
    # Line 239
    addiu	$a4,$s5,1108
.L0da7b7e0:
    addu	$v0,$a2,$a4
    addu	$v1,$a2,$a5
    addiu	$a2,$a2,4
    lw	$v0,0($v0)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0da7b7e0
    sw	$v0,0($v1)
    # Line 240
    move	$a2,$zero
    addiu	$a3,$s5,1108
    la	$a4,__glMgr_InternalUnpack
.L0da7b808:
    addu	$a1,$a2,$a3
    addu	$v1,$a2,$a4
    addiu	$a2,$a2,4
    lw	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da7b808
    sw	$v1,0($a1)
    # Line 243
    addiu	$a5,$s7,24
    lw	$a4,16($s7)
    lw	$a3,12($s7)
    lw	$a2,8($s7)
    lw	$t9,4860($zero)
    lw	$a1,4($s7)
    sd	$ra,64($sp)
    jalr	$t9
    lw	$a0,0($s7)
    # Line 248
    li	$a0,9
    move	$a2,$zero
    addiu	$a4,$sp,0
    ld	$ra,64($sp)
    addiu	$a3,$s5,1108
    # Line 249
    ld	$s5,56($sp)
.L0da7b860:
    # Line 248
    addu	$a1,$a2,$a4
    addu	$at,$a2,$a3
    addiu	$a2,$a2,4
    lw	$a1,0($a1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da7b860
    sw	$a1,0($at)
    # Line 249
    lw	$v0,20($s7)
    ld	$gp,40($sp)
    addu	$v0,$v0,$s7
    ld	$s7,48($sp)
    addiu	$sp,$sp,96
    jr	$ra
    addiu	$v0,$v0,24
.end __glMgrle_ConvolutionFilter1DEXT

# Function: __glMgrle_ConvolutionFilter2DEXT
# Declared: Line 257 (Source lines: 258-275)
# Address: 0x0da7b898 - 0x0da7b98c (Size: 244 bytes, Frame: 224)
.globl __glMgrle_ConvolutionFilter2DEXT
.ent __glMgrle_ConvolutionFilter2DEXT
__glMgrle_ConvolutionFilter2DEXT:
    # Line 265
    li	$a3,9
    move	$a2,$zero
    # Line 258
    addiu	$sp,$sp,-96
    # Line 265
    addiu	$a5,$sp,0
    sd	$s7,48($sp)
    # Line 258
    move	$s7,$a0
    # Line 266
    li	$a0,9
    sd	$gp,40($sp)
    # Line 258
    lui	$at,0x18
    sd	$s5,56($sp)
    # Line 263
    lw	$s5,__glCurrentContext
    # Line 258
    addiu	$at,$at,11776
    addu	$gp,$t9,$at
    # Line 265
    addiu	$a4,$s5,1108
.L0da7b8d0:
    addu	$v0,$a2,$a4
    addu	$v1,$a2,$a5
    addiu	$a2,$a2,4
    lw	$v0,0($v0)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0da7b8d0
    sw	$v0,0($v1)
    # Line 266
    move	$a2,$zero
    addiu	$a3,$s5,1108
    la	$a4,__glMgr_InternalUnpack
.L0da7b8f8:
    addu	$a1,$a2,$a3
    addu	$v1,$a2,$a4
    addiu	$a2,$a2,4
    lw	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da7b8f8
    sw	$v1,0($a1)
    # Line 269
    addiu	$a6,$s7,28
    lw	$a5,20($s7)
    lw	$a4,16($s7)
    lw	$a3,12($s7)
    lw	$a2,8($s7)
    lw	$t9,4864($zero)
    lw	$a1,4($s7)
    sd	$ra,64($sp)
    jalr	$t9
    lw	$a0,0($s7)
    # Line 274
    li	$a0,9
    move	$a2,$zero
    addiu	$a4,$sp,0
    ld	$ra,64($sp)
    addiu	$a3,$s5,1108
    # Line 275
    ld	$s5,56($sp)
.L0da7b954:
    # Line 274
    addu	$a1,$a2,$a4
    addu	$at,$a2,$a3
    addiu	$a2,$a2,4
    lw	$a1,0($a1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da7b954
    sw	$a1,0($at)
    # Line 275
    lw	$v0,24($s7)
    ld	$gp,40($sp)
    addu	$v0,$v0,$s7
    ld	$s7,48($sp)
    addiu	$sp,$sp,96
    jr	$ra
    addiu	$v0,$v0,28
.end __glMgrle_ConvolutionFilter2DEXT

# Function: __glMgrle_SeparableFilter2DEXT
# Declared: Line 301 (Source lines: 302-320)
# Address: 0x0da7b98c - 0x0da7ba94 (Size: 264 bytes, Frame: 224)
.globl __glMgrle_SeparableFilter2DEXT
.ent __glMgrle_SeparableFilter2DEXT
__glMgrle_SeparableFilter2DEXT:
    # Line 309
    li	$a3,9
    move	$a2,$zero
    # Line 302
    addiu	$sp,$sp,-96
    # Line 309
    addiu	$a5,$sp,0
    sd	$s7,48($sp)
    # Line 302
    move	$s7,$a0
    # Line 310
    li	$a0,9
    sd	$gp,40($sp)
    # Line 302
    lui	$at,0x18
    sd	$s5,56($sp)
    # Line 307
    lw	$s5,__glCurrentContext
    # Line 302
    addiu	$at,$at,11532
    addu	$gp,$t9,$at
    # Line 309
    addiu	$a4,$s5,1108
.L0da7b9c4:
    addu	$v0,$a2,$a4
    addu	$v1,$a2,$a5
    addiu	$a2,$a2,4
    lw	$v0,0($v0)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0da7b9c4
    sw	$v0,0($v1)
    # Line 310
    move	$a2,$zero
    addiu	$a3,$s5,1108
    la	$a4,__glMgr_InternalUnpack
.L0da7b9ec:
    addu	$a1,$a2,$a3
    addu	$v1,$a2,$a4
    addiu	$a2,$a2,4
    lw	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da7b9ec
    sw	$v1,0($a1)
    # Line 314
    addiu	$a6,$s7,32
    lw	$a5,20($s7)
    lw	$a4,16($s7)
    lw	$a3,12($s7)
    lw	$a2,8($s7)
    lw	$a1,4($s7)
    lw	$a0,0($s7)
    lw	$a7,24($s7)
    lw	$t9,4908($zero)
    sd	$ra,64($sp)
    addu	$a7,$a7,$s7
    jalr	$t9
    addiu	$a7,$a7,32
    # Line 319
    li	$a0,9
    move	$a2,$zero
    addiu	$a4,$sp,0
    ld	$ra,64($sp)
    addiu	$a3,$s5,1108
    # Line 320
    ld	$s5,56($sp)
.L0da7ba54:
    # Line 319
    addu	$at,$a2,$a4
    addu	$v0,$a2,$a3
    addiu	$a2,$a2,4
    lw	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da7ba54
    sw	$at,0($v0)
    # Line 320
    lw	$v1,24($s7)
    ld	$gp,40($sp)
    lw	$v0,28($s7)
    addu	$v1,$v1,$s7
    ld	$s7,48($sp)
    addiu	$sp,$sp,96
    addu	$v0,$v0,$v1
    jr	$ra
    addiu	$v0,$v0,32
.end __glMgrle_SeparableFilter2DEXT

# Function: __glMgrle_ColorTableSGI
# Declared: Line 328 (Source lines: 329-345)
# Address: 0x0da7ba94 - 0x0da7bb84 (Size: 240 bytes, Frame: 224)
.globl __glMgrle_ColorTableSGI
.ent __glMgrle_ColorTableSGI
__glMgrle_ColorTableSGI:
    # Line 336
    li	$a3,9
    move	$a2,$zero
    # Line 329
    addiu	$sp,$sp,-96
    # Line 336
    addiu	$a5,$sp,0
    sd	$s7,48($sp)
    # Line 329
    move	$s7,$a0
    # Line 337
    li	$a0,9
    sd	$gp,40($sp)
    # Line 329
    lui	$at,0x18
    sd	$s5,56($sp)
    # Line 334
    lw	$s5,__glCurrentContext
    # Line 329
    addiu	$at,$at,11268
    addu	$gp,$t9,$at
    # Line 336
    addiu	$a4,$s5,1108
.L0da7bacc:
    addu	$v0,$a2,$a4
    addu	$v1,$a2,$a5
    addiu	$a2,$a2,4
    lw	$v0,0($v0)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0da7bacc
    sw	$v0,0($v1)
    # Line 337
    move	$a2,$zero
    addiu	$a3,$s5,1108
    la	$a4,__glMgr_InternalUnpack
.L0da7baf4:
    addu	$a1,$a2,$a3
    addu	$v1,$a2,$a4
    addiu	$a2,$a2,4
    lw	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da7baf4
    sw	$v1,0($a1)
    # Line 340
    addiu	$a5,$s7,24
    lw	$a4,16($s7)
    lw	$a3,12($s7)
    lw	$a2,8($s7)
    lw	$t9,5120($zero)
    lw	$a1,4($s7)
    sd	$ra,64($sp)
    jalr	$t9
    lw	$a0,0($s7)
    # Line 344
    li	$a0,9
    move	$a2,$zero
    addiu	$a4,$sp,0
    ld	$ra,64($sp)
    addiu	$a3,$s5,1108
    # Line 345
    ld	$s5,56($sp)
.L0da7bb4c:
    # Line 344
    addu	$a1,$a2,$a4
    addu	$at,$a2,$a3
    addiu	$a2,$a2,4
    lw	$a1,0($a1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da7bb4c
    sw	$a1,0($at)
    # Line 345
    lw	$v0,20($s7)
    ld	$gp,40($sp)
    addu	$v0,$v0,$s7
    ld	$s7,48($sp)
    addiu	$sp,$sp,96
    jr	$ra
    addiu	$v0,$v0,24
.end __glMgrle_ColorTableSGI

