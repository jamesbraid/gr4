# Source: ../MGRAS/mgras_feedback.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_feedback.c
# Total Functions: 4

.text

# Function: __glMgrim_FeedbackBuffer
# Declared: Line 31 (Source lines: 32-50)
# Address: 0x0dace5fc - 0x0dace664 (Size: 104 bytes, Frame: 48)
.globl __glMgrim_FeedbackBuffer
.ent __glMgrim_FeedbackBuffer
__glMgrim_FeedbackBuffer:
    # Line 34
    lw	$a4,__glCurrentContext
    li	$v0,1
    # Line 32
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    # Line 34
    lw	$at,__glBeginMode
    # Line 32
    lui	$v1,0x13
    addiu	$v1,$v1,156
    # Line 34
    beq	$at,$v0,.L0dace648
    # Line 32
    addu	$gp,$t9,$v1
    # Line 48
    # lw $t9, -27008($gp) # &__glim_FeedbackBuffer
    # Line 47
    li	$a3,0x85dc
    addu	$a3,$a3,$a4
    # Line 48
    jal	__glim_FeedbackBuffer
    # Line 47
    sw	$zero,0($a3)
    # Line 50
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dace648:
    # Line 34
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_FeedbackBuffer

# Function: __glMgrim_PassThrough
# Declared: Line 52 (Source lines: 53-67)
# Address: 0x0dace664 - 0x0dace6fc (Size: 152 bytes, Frame: 32)
.globl __glMgrim_PassThrough
.ent __glMgrim_PassThrough
__glMgrim_PassThrough:
    # Line 55
    lw	$a1,__glCurrentContext
    li	$v0,1
    # Line 53
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 55
    lw	$at,__glBeginMode
    # Line 53
    lui	$v1,0x13
    addiu	$v1,$v1,52
    # Line 55
    beq	$at,$v0,.L0dace6c4
    # Line 53
    addu	$gp,$t9,$v1
    # Line 57
    lw	$a0,3092($a1)
    li	$at,7169
    bne	$a0,$at,.L0dace6b8
    li	$v0,0x85dc
    addu	$v0,$v0,$a1
    lw	$v0,0($v0)
    beqz	$v0,.L0dace6e4
    # Line 61
    li	$a0,23812
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sw	$a0,0($v1)
    # Line 62
    swc1	$f12,0($v1)
.L0dace6b8:
    ld	$gp,0($sp)
    # Line 67
    jr	$ra
    addiu	$sp,$sp,32
.L0dace6c4:
    # Line 57
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0dace6e4:
    # Line 64
    # lw $t9, -27004($gp) # &__glim_PassThrough
    sd	$ra,8($sp)
    jal	__glim_PassThrough
    nop
    b	.L0dace6b8
    ld	$ra,8($sp)
.end __glMgrim_PassThrough

# Function: __glMgrWriteFeedbackBuf
# Declared: Line 70 (Source lines: 72-78)
# Address: 0x0dace6fc - 0x0dace740 (Size: 68 bytes, Frame: 0)
.ent __glMgrWriteFeedbackBuf
__glMgrWriteFeedbackBuf:
    # Line 72
    lw	$a2,__glCurrentContext
    lw	$at,4572($a2)
    lw	$a3,4576($a2)
    lw	$v0,4580($a2)
    subu	$at,$a3,$at
    sra	$at,$at,0x2
    slt	$at,$at,$v0
    bnez	$at,.L0dace728
    # Line 75
    li	$v0,1
    # Line 78
    jr	$ra
    # Line 75
    sb	$v0,4568($a2)
.L0dace728:
    # Line 77
    addiu	$v1,$a3,4
    sw	$v1,4576($a2)
    lwc1	$f0,0($a0)
    swc1	$f0,-4($v1)
    # Line 78
    jr	$ra
    nop
.end __glMgrWriteFeedbackBuf

# Function: __glMgrGetFeedbackData
# Declared: Line 81 (Source lines: 82-175)
# Address: 0x0dace740 - 0x0daceb34 (Size: 1012 bytes, Frame: 128)
.globl __glMgrGetFeedbackData
.ent __glMgrGetFeedbackData
__glMgrGetFeedbackData:
    # Line 84
    li	$v0,1
    # Line 82
    addiu	$sp,$sp,-16512
    sd	$gp,16416($sp)
    lui	$at,0x13
    addiu	$at,$at,-168
    sd	$s2,16408($sp)
    # Line 84
    lw	$s2,__glCurrentContext
    # Line 82
    addu	$gp,$t9,$at
    # Line 84
    lui	$t9,0x1
    addu	$s2,$s2,$t9
    lbu	$at,-25437($s2)
    # Line 82
    la	$a0,SYMBOL_LOCATION
    sd	$ra,16424($sp)
    # Line 84
    beq	$at,$v0,.L0dace9d8
    lw	$a0,1220($a0)
    sd	$s4,16440($sp)
    sd	$s0,16432($sp)
    # Line 101
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 100
    move	$s0,$zero
    # Line 101
    li	$a2,1
    jal	__Mgr_ReturnMode
    li	$a1,1
    sd	$s1,16472($sp)
    beqz	$v0,.L0dace7d4
    move	$s4,$v0
    addiu	$s1,$sp,8
.L0dace7a8:
    # Line 103
    lw	$a2,-31256($s2)
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    move	$a0,$s0
    # Line 104
    addiu	$s0,$s0,1
    # Line 103
    jal	__Mgr_ReturnMode
    li	$a1,-1
    # Line 104
    addiu	$s1,$s1,4
    sltu	$v1,$s0,$s4
    bnez	$v1,.L0dace7a8
    # Line 103
    sw	$v0,-4($s1)
    ld	$s1,16472($sp)
.L0dace7d4:
    sd	$s3,16480($sp)
    # Line 110
    li	$a2,1
    li	$a1,1
    # Line 109
    move	$s0,$zero
    # Line 107
    li	$a3,24832
    lui	$a4,0x7
    ori	$a4,$a4,0x4080
    # Line 110
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    # Line 107
    sw	$a3,0($a4)
    # Line 110
    jal	__Mgr_ReturnMode
    lw	$a0,1220($a0)
    sd	$s1,16472($sp)
    move	$s3,$v0
    beqz	$v0,.L0dace848
    ld	$ra,16424($sp)
    addiu	$s1,$sp,8200
.L0dace818:
    # Line 112
    lw	$a2,-31256($s2)
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    move	$a0,$s0
    # Line 113
    addiu	$s0,$s0,1
    # Line 112
    jal	__Mgr_ReturnMode
    li	$a1,-1
    # Line 113
    addiu	$s1,$s1,4
    sltu	$a1,$s0,$s3
    bnez	$a1,.L0dace818
    # Line 112
    sw	$v0,-4($s1)
    ld	$s1,16472($sp)
    ld	$ra,16424($sp)
.L0dace848:
    ld	$s0,16432($sp)
    # Line 113
    beqz	$s4,.L0dacea74
    ld	$s2,16408($sp)
    beqz	$s3,.L0daceacc
    nop
    sd	$s1,16472($sp)
    sd	$s7,16456($sp)
    # Line 123
    move	$s7,$zero
    # Line 124
    move	$s0,$zero
    sd	$s6,16488($sp)
    # Line 125
    move	$s6,$zero
    sd	$s5,16464($sp)
    # Line 127
    addiu	$s5,$sp,8200
    sd	$s8,16448($sp)
    beqz	$s4,.L0dacea5c
    # Line 126
    addiu	$s8,$sp,8
    sdc1	$f30,16496($sp)
    # Line 127
    la	$s1,sub_0dad0000
    lwc1	$f30,_lit_44e00000
    b	.L0dace8d0
    addiu	$s1,$s1,-6404
.L0dace89c:
    # Line 137
    move	$a0,$s5
.L0dace8a0:
    # Line 138
    addiu	$s0,$s0,2
    # Line 137
    bal __glMgrim_PassThrough
    move	$t9,$s1
    # Line 138
    addiu	$s5,$s5,8
    addiu	$a0,$s2,8
    bal __glMgrim_PassThrough
    move	$t9,$s1
    addiu	$s6,$s6,2
    # Line 143
    addiu	$s7,$s7,2
.L0dace8c4:
    # Line 145
    sltu	$at,$s7,$s4
    beqzl	$at,.L0dace94c
    ldc1	$f30,16496($sp)
.L0dace8d0:
    # Line 127
    lwc1	$f0,0($s8)
    c.eq.s	$f0,$f30
    nop
    bc1f	.L0dace930
    # Line 134
    addiu	$s2,$s5,-4
    # Line 127
    lwc1	$f1,0($s5)
    c.eq.s	$f1,$f30
    nop
    bc1t	.L0dace89c
    # Line 143
    addiu	$s8,$s8,8
    # Line 127
    addiu	$s2,$s5,-4
.L0dace8fc:
    # Line 134
    addiu	$s5,$s5,4
    move	$t9,$s1
    addiu	$s6,$s6,1
    addiu	$s2,$s2,4
    bal __glMgrim_PassThrough
    move	$a0,$s2
    lwc1	$f2,0($s5)
    c.eq.s	$f2,$f30
    nop
    bc1f	.L0dace8fc
    addiu	$s0,$s0,1
    b	.L0dace8a0
    # Line 137
    move	$a0,$s5
.L0dace930:
    # Line 145
    move	$t9,$s1
    addiu	$s6,$s6,1
    addiu	$s8,$s8,4
    bal __glMgrim_PassThrough
    addiu	$a0,$s8,-4
    b	.L0dace8c4
    addiu	$s7,$s7,1
.L0dace94c:
    ld	$s8,16448($sp)
    ld	$s7,16456($sp)
    ld	$s4,16440($sp)
    ld	$ra,16424($sp)
    ld	$s2,16408($sp)
.L0dace960:
    sltu	$v1,$s0,$s3
    beqz	$v1,.L0dace9b4
    move	$a2,$s6
    sd	$s6,16400($sp)
    move	$a1,$s0
    sd	$s0,16392($sp)
    addiu	$s2,$s5,-4
    ld	$s5,16464($sp)
    # Line 150
    move	$t9,$s1
.L0dace984:
    addiu	$s2,$s2,4
    bal __glMgrim_PassThrough
    move	$a0,$s2
    addiu	$s0,$s0,1
    bne	$s0,$s3,.L0dace984
    move	$t9,$s1
    ld	$s6,16392($sp)
    ld	$ra,16400($sp)
    ld	$s2,16408($sp)
    subu	$s6,$s3,$s6
    addu	$s6,$s6,$ra
    ld	$ra,16424($sp)
.L0dace9b4:
    # Line 152
    move	$v0,$s6
    ld	$s6,16488($sp)
    ld	$s5,16464($sp)
    ld	$s1,16472($sp)
    ld	$s0,16432($sp)
    ld	$s3,16480($sp)
.L0dace9cc:
    ld	$gp,16416($sp)
    # Line 175
    jr	$ra
    addiu	$sp,$sp,16512
.L0dace9d8:
    sd	$s4,16440($sp)
    # Line 91
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    sd	$s0,16432($sp)
    li	$a2,1
    jal	__Mgr_ReturnMode
    li	$a1,1
    sd	$s1,16472($sp)
    move	$s4,$v0
    # Line 92
    move	$s0,$zero
    beqz	$v0,.L0dacea48
    ld	$ra,16424($sp)
    la	$s1,sub_0dad0000
    addiu	$s1,$s1,-6404
    # Line 94
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
.L0dacea10:
    move	$a0,$s0
    lw	$a2,-31256($s2)
    jal	__Mgr_ReturnMode
    li	$a1,-1
    # Line 95
    addiu	$a0,$sp,0
    # Line 94
    sw	$v0,0($sp)
    # Line 95
    bal __glMgrim_PassThrough
    move	$t9,$s1
    # Line 96
    addiu	$s0,$s0,1
    sltu	$at,$s0,$s4
    bnez	$at,.L0dacea10
    # Line 94
    nop	# was lw $t9, -30900($gp) # &__Mgr_ReturnMode
    ld	$s1,16472($sp)
    ld	$ra,16424($sp)
.L0dacea48:
    # Line 98
    move	$v0,$s4
    ld	$s4,16440($sp)
    ld	$s0,16432($sp)
    b	.L0dace9cc
    ld	$s2,16408($sp)
.L0dacea5c:
    ld	$s8,16448($sp)
    ld	$s7,16456($sp)
    # Line 145
    la	$s1,sub_0dad0000
    ld	$s4,16440($sp)
    b	.L0dace960
    addiu	$s1,$s1,-6404
.L0dacea74:
    # Line 161
    beqz	$s3,.L0daceb28
    ld	$s4,16440($sp)
    sd	$s1,16472($sp)
    # Line 163
    move	$s0,$zero
    # Line 164
    beqz	$s3,.L0daceab8
    addiu	$s2,$sp,8200
    la	$s1,sub_0dad0000
    addiu	$s1,$s1,-6404
    # Line 166
    move	$a0,$s2
.L0dacea98:
    # Line 167
    addiu	$s2,$s2,4
    # Line 166
    bal __glMgrim_PassThrough
    move	$t9,$s1
    # Line 167
    addiu	$s0,$s0,1
    bne	$s0,$s3,.L0dacea98
    # Line 166
    move	$a0,$s2
    ld	$s1,16472($sp)
    ld	$ra,16424($sp)
.L0daceab8:
    # Line 169
    move	$v0,$s3
    ld	$s3,16480($sp)
    ld	$s0,16432($sp)
    b	.L0dace9cc
    ld	$s2,16408($sp)
.L0daceacc:
    # Line 152
    beqz	$s4,.L0dacea74
    nop
    # Line 155
    move	$s0,$zero
    # Line 156
    addiu	$s2,$sp,8
    beqz	$s4,.L0daceb14
    ld	$s3,16480($sp)
    sd	$s1,16472($sp)
    la	$s1,sub_0dad0000
    addiu	$s1,$s1,-6404
    # Line 158
    move	$a0,$s2
.L0daceaf4:
    # Line 159
    addiu	$s2,$s2,4
    # Line 158
    bal __glMgrim_PassThrough
    move	$t9,$s1
    # Line 159
    addiu	$s0,$s0,1
    bne	$s0,$s4,.L0daceaf4
    # Line 158
    move	$a0,$s2
    ld	$s1,16472($sp)
    ld	$ra,16424($sp)
.L0daceb14:
    # Line 161
    move	$v0,$s4
    ld	$s4,16440($sp)
    ld	$s0,16432($sp)
    b	.L0dace9cc
    ld	$s2,16408($sp)
.L0daceb28:
    # Line 171
    move	$v0,$zero
    b	.L0dace9cc
    ld	$s3,16480($sp)
.end __glMgrGetFeedbackData

.rdata
_lit_44e00000:
    .word 0x44e00000

