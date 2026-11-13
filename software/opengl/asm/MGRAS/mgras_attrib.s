# Source: ../MGRAS/mgras_attrib.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_attrib.c
# Total Functions: 23

.text

# Function: __glMgrim_SoftEnable
# Declared: Line 96 (Source lines: 96-194)
# Address: 0x0da9b104 - 0x0da9b508 (Size: 1028 bytes, Frame: 48)
.globl __glMgrim_SoftEnable
.ent __glMgrim_SoftEnable
__glMgrim_SoftEnable:
    # Line 100
    li	$a2,1
    # Line 96
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    # Line 100
    lw	$s0,__glCurrentContext
    sd	$gp,8($sp)
    lw	$at,__glBeginMode
    # Line 96
    lui	$v0,0x16
    addiu	$v0,$v0,13716
    # Line 100
    beq	$at,$a2,.L0da9b4b4
    # Line 96
    addu	$gp,$t9,$v0
    # Line 100
    sltiu	$v1,$a0,3042
    bnez	$v1,.L0da9b190
    # Line 103
    sltiu	$a1,$a0,3043
    bnez	$a1,.L0da9b1e4
    sltiu	$at,$a0,3552
    bnez	$at,.L0da9b298
    sltiu	$v0,$a0,3553
    bnez	$v0,.L0da9b42c
    li	$a2,0x806f
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0da9b454
    sltu	$a1,$a2,$a0
    bnez	$a1,.L0da9b374
    # Line 189
    nop	# was lw $t9, -27844($gp) # &__glim_Enable
    # Line 183
    lw	$a1,1696($s0)
    lui	$a0,0x1
    lui	$at,0x4000
    or	$a1,$a1,$at
    sw	$a1,1696($s0)
    addu	$a0,$s0,$a0
    lbu	$at,-25435($a0)
    beqzl	$at,.L0da9b4e4
    # Line 185
    lw	$at,-28068($a0)
.L0da9b188:
    # Line 186
    b	.L0da9b210
    li	$a0,2
.L0da9b190:
    # Line 103
    sltiu	$v0,$a0,2960
    bnez	$v0,.L0da9b230
    sltiu	$v1,$a0,2961
    bnez	$v1,.L0da9b34c
    # Line 167
    lui	$a1,0x7
    # Line 103
    sltiu	$a1,$a0,3024
    bnez	$a1,.L0da9b38c
    sltiu	$at,$a0,3025
    beqz	$at,.L0da9b374
    # Line 189
    nop	# was lw $t9, -27844($gp) # &__glim_Enable
    # Line 131
    li	$a0,2
    # Line 130
    li	$v1,3
    li	$at,26372
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 129
    lw	$v0,1696($s0)
    # Line 130
    sw	$at,0($a1)
    sw	$v1,0($a1)
    # Line 129
    ori	$v0,$v0,0x8
    # Line 131
    b	.L0da9b210
    # Line 129
    sw	$v0,1696($s0)
.L0da9b1e4:
    # Line 111
    lui	$at,0x7
    # Line 110
    lw	$v0,1696($s0)
    # Line 115
    li	$a0,2
    # Line 111
    ori	$at,$at,0x4080
    # Line 110
    ori	$v0,$v0,0x2
    sw	$v0,1696($s0)
    # Line 111
    li	$v0,25860
    sw	$v0,0($at)
    sw	$a2,0($at)
    # Line 114
    sw	$v0,0($at)
    sw	$a2,0($at)
.L0da9b210:
    # Line 193
    sw	$a0,__glBeginMode
.L0da9b214:
    lw	$v1,11828($s0)
    ld	$gp,8($sp)
    ori	$v1,$v1,0x1
    sw	$v1,11828($s0)
    # Line 194
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da9b230:
    # Line 103
    sltiu	$a1,$a0,2881
    bnez	$a1,.L0da9b2dc
    sltiu	$at,$a0,2882
    bnez	$at,.L0da9b3f4
    li	$v0,2929
    bne	$a0,$v0,.L0da9b374
    # Line 189
    nop	# was lw $t9, -27844($gp) # &__glim_Enable
    # Line 118
    lw	$at,1696($s0)
    # Line 119
    li	$a3,0x9265
    addu	$a3,$a3,$s0
    # Line 118
    ori	$at,$at,0x10
    sw	$at,1696($s0)
    # Line 119
    sb	$a2,0($a3)
    lbu	$a1,3109($s0)
    li	$a3,26116
    lui	$a0,0x7
    beqz	$a1,.L0da9b4fc
    ori	$a0,$a0,0x4080
    # Line 121
    sw	$a3,0($a0)
    sw	$a2,0($a0)
.L0da9b280:
    # Line 125
    li	$a0,2
    sw	$a0,__glBeginMode
    lw	$at,11828($s0)
    ori	$at,$at,0x80
    # Line 126
    b	.L0da9b210
    # Line 125
    sw	$at,11828($s0)
.L0da9b298:
    # Line 103
    sltiu	$v0,$a0,3058
    bnez	$v0,.L0da9b3c0
    sltiu	$v1,$a0,3059
    bnez	$v1,.L0da9b48c
    li	$a1,3089
    bne	$a0,$a1,.L0da9b374
    # Line 189
    nop	# was lw $t9, -27844($gp) # &__glim_Enable
    # Line 163
    li	$a0,2
    # Line 162
    li	$v1,28164
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    # Line 161
    lw	$at,1696($s0)
    # Line 162
    sw	$v1,0($v0)
    sw	$a2,0($v0)
    # Line 161
    ori	$at,$at,0x4000
    # Line 163
    b	.L0da9b210
    # Line 161
    sw	$at,1696($s0)
.L0da9b2dc:
    # Line 103
    li	$v1,2848
    bne	$a0,$v1,.L0da9b374
    # Line 189
    nop	# was lw $t9, -27844($gp) # &__glim_Enable
    # Line 134
    lw	$a3,1696($s0)
    nor	$a1,$a3,$zero
    andi	$a1,$a1,0x200
    beqz	$a1,.L0da9b344
    # Line 137
    addiu	$a1,$sp,0
    li	$a0,2849
    # lw $t9, -26824($gp) # &__glim_GetFloatv
    sd	$ra,24($sp)
    # Line 135
    ori	$a2,$a3,0x200
    # Line 137
    jal	__glim_GetFloatv
    # Line 135
    sw	$a2,1696($s0)
    # Line 137
    lwc1	$f1,0($sp)
    ldc1	$f0,_lit8_3ff0000000000000
    cvt.d.s	$f1,$f1
    c.lt.d	$f0,$f1
    nop
    bc1f	.L0da9b344
    ld	$ra,24($sp)
    # Line 139
    lui	$v0,0x1
    addu	$v0,$s0,$v0
    lw	$at,-28068($v0)
    ori	$at,$at,0x4
    sw	$at,-28068($v0)
.L0da9b344:
    # Line 141
    b	.L0da9b210
    li	$a0,2
.L0da9b34c:
    # Line 167
    ori	$a1,$a1,0x4080
    # Line 168
    li	$a0,2
    # Line 167
    li	$at,28420
    # Line 166
    lw	$v1,1696($s0)
    # Line 167
    sw	$at,0($a1)
    sw	$a2,0($a1)
    # Line 166
    ori	$v1,$v1,0x8000
    # Line 168
    b	.L0da9b210
    # Line 166
    sw	$v1,1696($s0)
    # Line 189
    # lw $t9, -27844($gp) # &__glim_Enable
.L0da9b374:
    sd	$ra,24($sp)
    jal	__glim_Enable
    nop
    li	$a0,2
    b	.L0da9b210
    ld	$ra,24($sp)
.L0da9b38c:
    # Line 103
    li	$at,3008
    bne	$a0,$at,.L0da9b374
    # Line 189
    nop	# was lw $t9, -27844($gp) # &__glim_Enable
    # Line 107
    li	$a0,2
    # Line 106
    li	$a1,25604
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    # Line 105
    lw	$v0,1696($s0)
    # Line 106
    sw	$a1,0($v1)
    sw	$a2,0($v1)
    # Line 105
    ori	$v0,$v0,0x1
    # Line 107
    b	.L0da9b210
    # Line 105
    sw	$v0,1696($s0)
.L0da9b3c0:
    # Line 103
    li	$a1,3057
    bne	$a0,$a1,.L0da9b374
    # Line 189
    nop	# was lw $t9, -27844($gp) # &__glim_Enable
    # Line 146
    li	$a0,2
    # Line 145
    li	$v1,27396
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    # Line 144
    lw	$at,1696($s0)
    # Line 145
    sw	$v1,0($v0)
    sw	$a2,0($v0)
    # Line 144
    ori	$at,$at,0x4
    # Line 146
    b	.L0da9b210
    # Line 144
    sw	$at,1696($s0)
.L0da9b3f4:
    # Line 154
    lw	$a3,1696($s0)
    nor	$v1,$a3,$zero
    andi	$v1,$v1,0x800
    beqz	$v1,.L0da9b424
    # Line 158
    li	$a0,2
    # Line 156
    lui	$at,0x1
    # Line 155
    ori	$v0,$a3,0x800
    sw	$v0,1696($s0)
    # Line 156
    addu	$at,$s0,$at
    lw	$a1,-28068($at)
    ori	$a1,$a1,0x2
    sw	$a1,-28068($at)
.L0da9b424:
    # Line 158
    b	.L0da9b214
    # Line 193
    sw	$a0,__glBeginMode
.L0da9b42c:
    # Line 171
    lw	$a1,1696($s0)
    lui	$a0,0x1
    or	$a1,$a1,$a0
    sw	$a1,1696($s0)
    addu	$a0,$a0,$s0
    lbu	$v1,-25435($a0)
    beqzl	$v1,.L0da9b4d8
    # Line 173
    lw	$a1,-28068($a0)
.L0da9b44c:
    # Line 174
    b	.L0da9b210
    li	$a0,2
.L0da9b454:
    # Line 103
    li	$at,3553
    bne	$a0,$at,.L0da9b374
    # Line 189
    nop	# was lw $t9, -27844($gp) # &__glim_Enable
    # Line 177
    lw	$a1,1696($s0)
    lui	$a0,0x1
    lui	$at,0x2
    or	$a1,$a1,$at
    sw	$a1,1696($s0)
    addu	$a0,$s0,$a0
    lbu	$v0,-25435($a0)
    beqzl	$v0,.L0da9b4f0
    # Line 179
    lw	$v0,-28068($a0)
.L0da9b484:
    # Line 180
    b	.L0da9b210
    li	$a0,2
.L0da9b48c:
    # Line 151
    li	$a0,2
    # Line 150
    li	$a1,27396
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    # Line 149
    lw	$v0,1700($s0)
    # Line 150
    sw	$a1,0($v1)
    sw	$a2,0($v1)
    # Line 149
    ori	$v0,$v0,0x800
    # Line 151
    b	.L0da9b210
    # Line 149
    sw	$v0,1700($s0)
.L0da9b4b4:
    # Line 100
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da9b4d8:
    # Line 173
    ori	$a1,$a1,0x8
    b	.L0da9b44c
    sw	$a1,-28068($a0)
.L0da9b4e4:
    # Line 185
    ori	$at,$at,0x20
    b	.L0da9b188
    sw	$at,-28068($a0)
.L0da9b4f0:
    # Line 179
    ori	$v0,$v0,0x10
    b	.L0da9b484
    sw	$v0,-28068($a0)
.L0da9b4fc:
    # Line 123
    sw	$a3,0($a0)
    b	.L0da9b280
    sw	$zero,0($a0)
.end __glMgrim_SoftEnable

# Function: __glMgrEvalEnable
# Declared: Line 196 (Source lines: 197-276)
# Address: 0x0da9b508 - 0x0da9b874 (Size: 876 bytes, Frame: 32)
.globl __glMgrEvalEnable
.ent __glMgrEvalEnable
__glMgrEvalEnable:
    # Line 200
    lw	$a2,__glCurrentContext
    addiu	$a3,$a0,-3456
    # Line 197
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$at,0x16
    addiu	$at,$at,12688
    addu	$gp,$t9,$at
    # Line 200
    # lw $t9, -32624($gp) # &sub_0dbf0000
    sltiu	$at,$a3,57
    sll	$a3,$a3,0x2
    addiu	$t9,$t9,-8592
    beqz	$at,.L0da9b560
    addu	$a3,$a3,$t9
    lw	$v0,%lo(jtbl_0dbede70)($a3)
    # Line 267
    sll	$a4,$a0,0x2
    # Line 200
    jr	$v0
    # Line 267
    lui	$a3,0xfffe
.L0da9b54c:
    # Line 269
    sb	$a1,-16260($a3)
    addu	$a0,$a2,$a0
    lbu	$v1,-30188($a0)
    beqzl	$v1,.L0da9b854
    sd	$ra,8($sp)
.L0da9b560:
    ld	$gp,0($sp)
.L0da9b564:
    # Line 276
    jr	$ra
    addiu	$sp,$sp,32
.L0da9b56c:
    # Line 209
    lui	$a3,0xfffe
    sll	$a4,$a0,0x2
    subu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a2
    addu	$a3,$a4,$a3
    lbu	$at,-15116($a3)
    beqz	$at,.L0da9b6e0
    # Line 211
    li	$a5,1
    ld	$gp,0($sp)
    # Line 210
    jr	$ra
    addiu	$sp,$sp,32
.L0da9b5a4:
    # Line 220
    lui	$a3,0xfffe
    sll	$a4,$a0,0x2
    subu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a2
    addu	$a3,$a4,$a3
    lbu	$at,-15116($a3)
    # Line 222
    xori	$v0,$a0,0xd91
    # Line 220
    beqz	$at,.L0da9b734
    # Line 222
    li	$v1,1
    ld	$gp,0($sp)
    # Line 221
    jr	$ra
    addiu	$sp,$sp,32
.L0da9b5e0:
    # Line 229
    lui	$a3,0xfffe
    sll	$a4,$a0,0x2
    subu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a2
    addu	$a3,$a4,$a3
    lbu	$at,-15116($a3)
    beqzl	$at,.L0da9b808
    sd	$ra,8($sp)
    ld	$gp,0($sp)
    # Line 230
    jr	$ra
    addiu	$sp,$sp,32
.L0da9b618:
    # Line 236
    lui	$a0,0x1
    addu	$a0,$a2,$a0
    lbu	$at,-30188($a0)
    beqzl	$at,.L0da9b838
    # Line 238
    sw	$zero,-30700($a0)
    ld	$gp,0($sp)
    # Line 236
    jr	$ra
    addiu	$sp,$sp,32
.L0da9b638:
    # Line 247
    lui	$a3,0xfffe
    sll	$a4,$a0,0x2
    subu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a2
    addu	$a3,$a4,$a3
    lbu	$a1,-16260($a3)
    beqz	$a1,.L0da9b774
    # Line 249
    li	$a5,1
    ld	$gp,0($sp)
    # Line 248
    jr	$ra
    addiu	$sp,$sp,32
.L0da9b670:
    # Line 258
    lui	$a3,0xfffe
    sll	$a4,$a0,0x2
    subu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a2
    addu	$a3,$a4,$a3
    lbu	$at,-16260($a3)
    # Line 260
    xori	$v0,$a0,0xdb1
    # Line 258
    beqz	$at,.L0da9b7c8
    # Line 260
    li	$v1,1
    ld	$gp,0($sp)
    # Line 259
    jr	$ra
    addiu	$sp,$sp,32
.L0da9b6ac:
    # Line 267
    subu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a2
    addu	$a3,$a4,$a3
    lbu	$at,-16260($a3)
    # Line 269
    li	$a1,1
    # Line 267
    beqz	$at,.L0da9b54c
    # Line 269
    lui	$a0,0x1
    ld	$gp,0($sp)
    # Line 268
    jr	$ra
    addiu	$sp,$sp,32
.L0da9b6e0:
    # Line 212
    lw	$a1,-15132($a3)
    # Line 211
    sb	$a5,-15116($a3)
    # Line 212
    lui	$a5,0xfffd
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    li	$a1,0x85f4
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a2
    addu	$a0,$a0,$a1
    lw	$at,0($a0)
    ori	$a5,$a5,0xc4e4
    addu	$a5,$a4,$a5
    sltu	$at,$at,$a5
    beqzl	$at,.L0da9b564
    ld	$gp,0($sp)
    # Line 215
    # lw $t9, -31068($gp) # &__glMgrCleanUp1D
    sd	$ra,8($sp)
    jal	__glMgrCleanUp1D
    # Line 214
    sw	$a5,0($a0)
    b	.L0da9b560
    ld	$ra,8($sp)
.L0da9b734:
    # Line 222
    sltiu	$v0,$v0,1
    sb	$v1,-15116($a3)
    lbu	$at,3105($a2)
    bnel	$at,$v0,.L0da9b564
    ld	$gp,0($sp)
    sd	$ra,8($sp)
    # Line 224
    li	$a1,0x8600
    addu	$a1,$a1,$a2
    # Line 225
    # lw $t9, -31068($gp) # &__glMgrCleanUp1D
    # Line 224
    lui	$a0,0xfffd
    ori	$a0,$a0,0xc4e4
    addu	$a0,$a4,$a0
    # Line 225
    jal	__glMgrCleanUp1D
    # Line 224
    sw	$a0,0($a1)
    b	.L0da9b560
    ld	$ra,8($sp)
.L0da9b774:
    # Line 250
    lw	$a1,-16276($a3)
    # Line 249
    sb	$a5,-16260($a3)
    # Line 250
    lui	$a5,0xfffd
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    li	$a1,0x87fc
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a2
    addu	$a0,$a0,$a1
    lw	$a1,0($a0)
    ori	$a5,$a5,0xc06c
    addu	$a5,$a4,$a5
    sltu	$a1,$a1,$a5
    beqzl	$a1,.L0da9b564
    ld	$gp,0($sp)
    # Line 253
    # lw $t9, -31052($gp) # &__glMgrCleanUp2D
    sd	$ra,8($sp)
    jal	__glMgrCleanUp2D
    # Line 252
    sw	$a5,0($a0)
    b	.L0da9b560
    ld	$ra,8($sp)
.L0da9b7c8:
    # Line 260
    sltiu	$v0,$v0,1
    sb	$v1,-16260($a3)
    lbu	$at,3105($a2)
    bnel	$at,$v0,.L0da9b564
    ld	$gp,0($sp)
    sd	$ra,8($sp)
    # Line 262
    li	$a1,0x8808
    addu	$a1,$a1,$a2
    # Line 263
    # lw $t9, -31052($gp) # &__glMgrCleanUp2D
    # Line 262
    lui	$a0,0xfffd
    ori	$a0,$a0,0xc06c
    addu	$a0,$a4,$a0
    # Line 263
    jal	__glMgrCleanUp2D
    # Line 262
    sw	$a0,0($a1)
    b	.L0da9b560
    ld	$ra,8($sp)
.L0da9b808:
    # Line 232
    li	$a5,0x860c
    addu	$a2,$a5,$a2
    # Line 233
    # lw $t9, -31068($gp) # &__glMgrCleanUp1D
    # Line 232
    lui	$a1,0xfffd
    ori	$a1,$a1,0xc4e4
    addu	$a1,$a4,$a1
    # Line 231
    li	$a4,1
    sb	$a4,-15116($a3)
    # Line 233
    jal	__glMgrCleanUp1D
    # Line 232
    sw	$a1,0($a2)
    b	.L0da9b560
    ld	$ra,8($sp)
.L0da9b838:
    # Line 239
    # lw $t9, -31052($gp) # &__glMgrCleanUp2D
    sd	$ra,8($sp)
    # Line 237
    li	$a2,1
    # Line 239
    jal	__glMgrCleanUp2D
    # Line 237
    sb	$a2,-30188($a0)
    b	.L0da9b560
    ld	$ra,8($sp)
.L0da9b854:
    # Line 272
    # lw $t9, -31052($gp) # &__glMgrCleanUp2D
    # Line 271
    lui	$a3,0xfffd
    ori	$a3,$a3,0xc06c
    addu	$a3,$a4,$a3
    # Line 272
    jal	__glMgrCleanUp2D
    # Line 271
    sw	$a3,-30700($a0)
    b	.L0da9b560
    ld	$ra,8($sp)
.end __glMgrEvalEnable

# Function: __glMgrEnableLightSource
# Declared: Line 279 (Source lines: 283-284)
# Address: 0x0da9b874 - 0x0da9b88c (Size: 24 bytes, Frame: 0)
.globl __glMgrEnableLightSource
.ent __glMgrEnableLightSource
__glMgrEnableLightSource:
    # Line 283
    li	$v0,28932
    lui	$at,0x7
    ori	$at,$at,0x4080
    sw	$v0,0($at)
    # Line 284
    jr	$ra
    # Line 283
    sw	$a1,0($at)
.end __glMgrEnableLightSource

# Function: __glMgrim_Enable
# Declared: Line 287 (Source lines: 287-675)
# Address: 0x0da9b88c - 0x0da9ccb0 (Size: 5156 bytes, Frame: 208)
.globl __glMgrim_Enable
.ent __glMgrim_Enable
__glMgrim_Enable:
    # Line 291
    li	$a3,1
    # Line 287
    addiu	$sp,$sp,-80
    sd	$s0,32($sp)
    # Line 291
    lw	$s0,__glCurrentContext
    sd	$s1,16($sp)
    # Line 287
    move	$s1,$a0
    sd	$gp,24($sp)
    # Line 291
    lw	$at,__glBeginMode
    # Line 287
    lui	$v0,0x16
    addiu	$v0,$v0,11788
    # Line 291
    beq	$at,$a3,.L0da9bed8
    # Line 287
    addu	$gp,$t9,$v0
    # Line 291
    sltiu	$v1,$s1,3511
    bnez	$v1,.L0da9b924
    # Line 294
    sltiu	$a1,$s1,3512
    beqz	$a1,.L0da9b9ec
.L0da9b8cc:
    # Line 568
    nop	# was lw $t9, -31200($gp) # &__glMgrEvalEnable
    sd	$ra,40($sp)
    bal __glMgrEvalEnable
    move	$a0,$s1
    # Line 570
    lw	$ra,1716($s0)
    addiu	$v0,$s1,-3504
    li	$at,1
    sllv	$at,$at,$v0
    andi	$at,$at,0xffff
    or	$ra,$ra,$at
    sw	$ra,1716($s0)
    ld	$ra,40($sp)
.L0da9b8fc:
    # Line 674
    li	$a0,2
.L0da9b900:
    sw	$a0,__glBeginMode
    lw	$v1,11828($s0)
    ld	$gp,24($sp)
    # Line 675
    ld	$s1,16($sp)
    # Line 674
    ori	$v1,$v1,0x1
    sw	$v1,11828($s0)
    # Line 675
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da9b924:
    # Line 294
    sltiu	$a1,$s1,3169
    bnez	$a1,.L0da9b978
    sltiu	$at,$s1,3170
    bnez	$at,.L0da9bae0
    sltiu	$v0,$s1,3478
    bnez	$v0,.L0da9bb18
    sltiu	$v1,$s1,3479
    bnez	$v1,.L0da9bb68
    sltiu	$a1,$s1,3506
    bnez	$a1,.L0da9bf84
    sltiu	$at,$s1,3507
    bnez	$at,.L0da9b8cc
    sltiu	$v0,$s1,3509
    bnez	$v0,.L0da9c628
    sltiu	$v1,$s1,3510
    bnez	$v1,.L0da9b8cc
    li	$a1,3510
    bne	$s1,$a1,.L0da9ba94
    # Line 671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9b8cc
    sd	$ra,40($sp)
.L0da9b978:
    # Line 294
    sltiu	$at,$s1,2929
    bnez	$at,.L0da9ba64
    sltiu	$v0,$s1,2930
    bnez	$v0,.L0da9bc28
    sltiu	$v1,$s1,3042
    bnez	$v1,.L0da9bc90
    sltiu	$a1,$s1,3043
    bnez	$a1,.L0da9c090
    sltiu	$at,$s1,3089
    bnez	$at,.L0da9c1cc
    sltiu	$v0,$s1,3090
    bnez	$v0,.L0da9c69c
    li	$v1,3168
    bne	$s1,$v1,.L0da9ba94
    # Line 671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 507
    lw	$at,1696($s0)
    li	$a1,0x9ca5
    lui	$v0,0x4
    or	$at,$at,$v0
    sw	$at,1696($s0)
    addu	$a1,$a1,$s0
    lbu	$a1,0($a1)
    beqz	$a1,.L0da9b8fc
    # Line 509
    li	$a1,29956
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sw	$a1,0($v1)
    b	.L0da9b8fc
    sw	$s1,0($v1)
.L0da9b9ec:
    # Line 294
    li	$a0,0x8010
    sltu	$a1,$s1,$a0
    bnez	$a1,.L0da9bab8
    sltu	$at,$a0,$s1
    beqz	$at,.L0da9bc54
    li	$a0,0x8077
    sltu	$v0,$s1,$a0
    bnez	$v0,.L0da9bcc4
    sltu	$v1,$a0,$s1
    beqz	$v1,.L0da9c314
    li	$a0,0x80d1
    sltu	$a1,$s1,$a0
    bnez	$a1,.L0da9c100
    sltu	$at,$a0,$s1
    beqz	$at,.L0da9c468
    li	$a0,0x8139
    sltu	$v0,$s1,$a0
    bnez	$v0,.L0da9c730
    sltu	$v1,$a0,$s1
    beqz	$v1,.L0da9c970
    li	$a1,0xbead
    bne	$s1,$a1,.L0da9ba90
    sd	$ra,40($sp)
    # Line 548
    # lw $t9, -29588($gp) # &__glMgrim_IglooInterfaceSGIX
    addiu	$a1,$sp,4
    li	$a0,0x81a3
    jal	__glMgrim_IglooInterfaceSGIX
    # Line 547
    sw	$a3,4($sp)
    b	.L0da9b8fc
    ld	$ra,40($sp)
.L0da9ba64:
    # Line 294
    sltiu	$at,$s1,2882
    bnez	$at,.L0da9bb9c
    sltiu	$v0,$s1,2883
    bnez	$v0,.L0da9c170
    sltiu	$v1,$s1,2903
    bnez	$v1,.L0da9be68
    sltiu	$a1,$s1,2904
    bnez	$a1,.L0da9c1ac
    li	$at,2912
    beq	$s1,$at,.L0da9c978
    sd	$ra,40($sp)
.L0da9ba90:
    # Line 671
    # lw $t9, -27320($gp) # &__glSetError
.L0da9ba94:
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,24($sp)
    # Line 672
    ld	$ra,40($sp)
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da9bab8:
    # Line 294
    sltiu	$v0,$s1,12292
    bnez	$v0,.L0da9bbf4
    sltiu	$v1,$s1,12293
    beqz	$v1,.L0da9bde8
.L0da9bac8:
    # Line 534
    li	$at,0xa604
.L0da9bacc:
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    sw	$at,0($a1)
    b	.L0da9b8fc
    sw	$s1,0($a1)
.L0da9bae0:
    # Line 513
    lw	$v0,1696($s0)
    li	$at,0x9ca5
    lui	$v1,0x8
    or	$v0,$v0,$v1
    sw	$v0,1696($s0)
    addu	$at,$at,$s0
    lbu	$at,0($at)
    # Line 515
    lui	$a1,0x7
    # Line 513
    beqz	$at,.L0da9b8fc
    # Line 515
    ori	$a1,$a1,0x4080
    li	$at,29956
    sw	$at,0($a1)
    b	.L0da9b8fc
    sw	$s1,0($a1)
.L0da9bb18:
    # Line 294
    sltiu	$at,$s1,3473
    bnez	$at,.L0da9bb4c
    sltiu	$v0,$s1,3474
    bnez	$v0,.L0da9bb68
    sltiu	$v1,$s1,3476
    bnez	$v1,.L0da9c270
    sltiu	$a1,$s1,3477
    bnez	$a1,.L0da9bb68
    li	$at,3477
    bne	$s1,$at,.L0da9ba94
    # Line 671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9bb68
    sd	$ra,40($sp)
.L0da9bb4c:
    # Line 294
    sltiu	$v0,$s1,3456
    bnez	$v0,.L0da9bf38
    sltiu	$v1,$s1,3457
    bnez	$v1,.L0da9c7fc
    li	$a1,3472
    bne	$s1,$a1,.L0da9ba90
    sd	$ra,40($sp)
.L0da9bb68:
    # Line 558
    # lw $t9, -31200($gp) # &__glMgrEvalEnable
    sd	$ra,40($sp)
    bal __glMgrEvalEnable
    move	$a0,$s1
    # Line 560
    lw	$ra,1712($s0)
    addiu	$v0,$s1,-3472
    li	$at,1
    sllv	$at,$at,$v0
    andi	$at,$at,0xffff
    or	$ra,$ra,$at
    sw	$ra,1712($s0)
    # Line 561
    b	.L0da9b8fc
    ld	$ra,40($sp)
.L0da9bb9c:
    # Line 294
    sltiu	$v1,$s1,2852
    bnez	$v1,.L0da9bd2c
    sltiu	$a1,$s1,2853
    bnez	$a1,.L0da9c0b0
    li	$at,2881
    bne	$s1,$at,.L0da9ba90
    # Line 383
    lui	$s1,0x1
    addu	$s1,$s0,$s1
    lbu	$v0,-28062($s1)
    beqz	$v0,.L0da9bbe4
    # Line 387
    nop	# was lw $t9, -29672($gp) # &__glMgrEnterSoftPath
    sd	$ra,40($sp)
    jal	__glMgrEnterSoftPath
    move	$a0,$s0
    # Line 388
    lw	$ra,-28068($s1)
    ori	$ra,$ra,0x2
    sw	$ra,-28068($s1)
    ld	$ra,40($sp)
.L0da9bbe4:
    # Line 390
    lw	$at,1696($s0)
    ori	$at,$at,0x800
    # Line 391
    b	.L0da9b8fc
    # Line 390
    sw	$at,1696($s0)
.L0da9bbf4:
    # Line 294
    sltiu	$v0,$s1,10754
    bnez	$v0,.L0da9bd98
    sltiu	$v1,$s1,10755
    bnez	$v1,.L0da9c0c8
    sltiu	$a1,$s1,12290
    bnez	$a1,.L0da9c2a8
    sltiu	$at,$s1,12291
    bnez	$at,.L0da9bac8
    li	$v0,12291
    bne	$s1,$v0,.L0da9ba94
    # Line 671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9bacc
    # Line 534
    li	$at,0xa604
.L0da9bc28:
    # Line 314
    li	$v0,0x9265
    addu	$v0,$v0,$s0
    sb	$a3,0($v0)
    lbu	$at,3109($s0)
    li	$a0,26116
    lui	$s1,0x7
    beqz	$at,.L0da9c200
    ori	$s1,$s1,0x4080
    # Line 316
    sw	$a0,0($s1)
    b	.L0da9b8fc
    sw	$a3,0($s1)
.L0da9bc54:
    # Line 586
    li	$v0,0x8294
    # Line 585
    lw	$v1,1696($s0)
    # Line 586
    addu	$v0,$v0,$s0
    # Line 585
    lui	$a1,0x200
    or	$v1,$v1,$a1
    sw	$v1,1696($s0)
    # Line 586
    sb	$a3,0($v0)
    # Line 588
    lw	$at,32096($s0)
    ori	$at,$at,0x800
    # Line 587
    lw	$v1,32100($s0)
    # Line 588
    sw	$at,32096($s0)
    # Line 587
    lui	$a1,0x10
    or	$v1,$v1,$a1
    # Line 589
    b	.L0da9b8fc
    # Line 587
    sw	$v1,32100($s0)
.L0da9bc90:
    # Line 294
    sltiu	$v1,$s1,3008
    bnez	$v1,.L0da9bf00
    sltiu	$a1,$s1,3009
    bnez	$a1,.L0da9c374
    li	$at,3024
    bne	$s1,$at,.L0da9ba90
    # Line 322
    li	$v0,3
    li	$a1,26372
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sw	$a1,0($v1)
    b	.L0da9b8fc
    sw	$v0,0($v1)
.L0da9bcc4:
    # Line 294
    li	$a0,0x8037
    sltu	$a1,$s1,$a0
    bnez	$a1,.L0da9bfa8
    sltu	$at,$a0,$s1
    beqz	$at,.L0da9c38c
    li	$a0,0x8075
    sltu	$v0,$s1,$a0
    bnez	$v0,.L0da9c4c0
    sltu	$v1,$a0,$s1
    beqz	$v1,.L0da9c9e0
    li	$a1,0x8076
    bne	$s1,$a1,.L0da9ba94
    # Line 671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    ld	$gp,24($sp)
    # Line 654
    lui	$at,0xf
    lw	$s1,4944($s0)
    # Line 655
    lw	$v0,4948($s0)
    # Line 654
    ori	$at,$at,0xf000
    or	$s1,$s1,$at
    # Line 655
    ori	$v0,$v0,0x2
    sw	$v0,4948($s0)
    # Line 654
    sw	$s1,4944($s0)
    # Line 656
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da9bd2c:
    # Line 294
    sltiu	$v1,$s1,2848
    bnez	$v1,.L0da9bffc
    sltiu	$a1,$s1,2849
    beqz	$a1,.L0da9ba90
    # Line 343
    lui	$s1,0x1
    addu	$s1,$s0,$s1
    lbu	$at,-28063($s1)
    beqz	$at,.L0da9c850
    # Line 347
    nop	# was lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$sp,0
    sd	$ra,40($sp)
    jal	__glMgrim_GetFloatv
    li	$a0,2849
    lwc1	$f1,0($sp)
    ldc1	$f0,_lit8_3ff0000000000000
    cvt.d.s	$f1,$f1
    c.lt.d	$f0,$f1
    nop
    bc1t	.L0da9c824
    ld	$ra,40($sp)
    li	$at,1
    # Line 354
    li	$v1,26884
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    sw	$v1,0($v0)
    b	.L0da9b8fc
    sw	$at,0($v0)
.L0da9bd98:
    # Line 294
    sltiu	$v1,$s1,3553
    bnez	$v1,.L0da9c028
    sltiu	$a1,$s1,3554
    bnez	$a1,.L0da9c3c8
    li	$at,10753
    bne	$s1,$at,.L0da9ba90
    # Line 641
    li	$at,0xe804
    # Line 639
    lw	$v0,1700($s0)
    # Line 641
    lui	$a1,0x7
    # Line 640
    lui	$v1,0x1
    # Line 639
    ori	$v0,$v0,0x200
    sw	$v0,1700($s0)
    # Line 640
    addu	$v1,$s0,$v1
    lw	$v0,-25264($v1)
    # Line 641
    ori	$a1,$a1,0x4080
    sw	$at,0($a1)
    # Line 640
    ori	$v0,$v0,0x4
    # Line 641
    sw	$v0,0($a1)
    b	.L0da9b8fc
    # Line 640
    sw	$v0,-25264($v1)
.L0da9bde8:
    # Line 294
    sltiu	$v1,$s1,16387
    bnez	$v1,.L0da9be1c
    sltiu	$a1,$s1,16388
    bnez	$a1,.L0da9be2c
    sltiu	$at,$s1,16390
    bnez	$at,.L0da9c6dc
    sltiu	$v0,$s1,16391
    bnez	$v0,.L0da9be2c
    li	$v1,16391
    bne	$s1,$v1,.L0da9ba94
    # Line 671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9be2c
    sd	$ra,40($sp)
.L0da9be1c:
    # Line 294
    sltiu	$a1,$s1,16385
    bnez	$a1,.L0da9c358
    sltiu	$at,$s1,16386
    beqz	$at,.L0da9c6c8
.L0da9be2c:
    # Line 542
    addiu	$a1,$s1,-16384
    move	$a0,$s0
    sd	$ra,40($sp)
    # Line 540
    lw	$v0,1704($s0)
    # Line 542
    # lw $t9, -31196($gp) # &__glMgrEnableLightSource
    # Line 540
    sllv	$v1,$a3,$s1
    or	$v0,$v0,$v1
    # Line 542
    bal __glMgrEnableLightSource
    # Line 540
    sw	$v0,1704($s0)
    ld	$gp,24($sp)
    # Line 543
    ld	$ra,40($sp)
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da9be68:
    # Line 294
    sltiu	$a1,$s1,2896
    bnez	$a1,.L0da9c148
    sltiu	$at,$s1,2897
    beqz	$at,.L0da9ba90
    sd	$ra,40($sp)
    # Line 336
    lw	$a0,1696($s0)
    # Line 337
    li	$v1,2
    # Line 336
    ori	$a0,$a0,0x40
    sw	$a0,1696($s0)
    # Line 337
    sw	$v1,__glBeginMode
    lw	$v0,11828($s0)
    # Line 338
    lw	$t9,11864($s0)
    move	$a0,$s0
    # Line 337
    ori	$v0,$v0,0x20
    # Line 338
    jal	__glMgrEnableLightSource
    # Line 337
    sw	$v0,11828($s0)
    # Line 339
    lw	$t9,12072($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 340
    # lw $t9, -32552($gp) # &__glMgrEnableLighting
    jal	__glMgrEnableLighting
    move	$a0,$s0
    ld	$gp,24($sp)
    # Line 341
    ld	$ra,40($sp)
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da9bed8:
    # Line 291
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,40($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,24($sp)
    ld	$ra,40($sp)
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da9bf00:
    # Line 294
    sltiu	$a1,$s1,2977
    bnez	$a1,.L0da9c20c
    sltiu	$at,$s1,2978
    beqz	$at,.L0da9ba90
    # Line 373
    li	$at,0xa304
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    sw	$at,0($a1)
    # Line 372
    lw	$v0,1696($s0)
    # Line 373
    sw	$a3,0($a1)
    # Line 372
    lui	$v1,0x40
    or	$v0,$v0,$v1
    # Line 373
    b	.L0da9b8fc
    # Line 372
    sw	$v0,1696($s0)
.L0da9bf38:
    # Line 294
    sltiu	$at,$s1,3171
    bnez	$at,.L0da9c22c
    sltiu	$v0,$s1,3172
    beqz	$v0,.L0da9ba94
    # Line 671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 525
    lw	$a1,1696($s0)
    li	$v1,0x9ca5
    lui	$at,0x20
    or	$a1,$a1,$at
    sw	$a1,1696($s0)
    addu	$v1,$v1,$s0
    lbu	$v1,0($v1)
    beqz	$v1,.L0da9b8fc
    # Line 527
    li	$v1,29956
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    sw	$v1,0($v0)
    b	.L0da9b8fc
    sw	$s1,0($v0)
.L0da9bf84:
    # Line 294
    sltiu	$v1,$s1,3504
    bnez	$v1,.L0da9c28c
    sltiu	$a1,$s1,3505
    bnez	$a1,.L0da9b8cc
    li	$at,3505
    bne	$s1,$at,.L0da9ba94
    # Line 671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9b8cc
    sd	$ra,40($sp)
.L0da9bfa8:
    # Line 294
    li	$a0,0x8024
    sltu	$v0,$s1,$a0
    bnez	$v0,.L0da9c2c4
    sltu	$v1,$a0,$s1
    beqz	$v1,.L0da9c6f8
    li	$a1,0x802e
    bne	$s1,$a1,.L0da9ba90
    # Line 580
    li	$v1,0x820c
    # Line 579
    lw	$a1,1696($s0)
    # Line 580
    addu	$v1,$v1,$s0
    # Line 579
    lui	$at,0x2000
    or	$a1,$a1,$at
    sw	$a1,1696($s0)
    # Line 580
    sb	$a3,0($v1)
    # Line 582
    lw	$v0,32096($s0)
    # Line 581
    lw	$at,32100($s0)
    # Line 582
    ori	$v0,$v0,0x80
    sw	$v0,32096($s0)
    # Line 581
    ori	$at,$at,0x80
    # Line 583
    b	.L0da9b8fc
    # Line 581
    sw	$at,32100($s0)
.L0da9bffc:
    # Line 294
    li	$a1,2832
    bne	$s1,$a1,.L0da9ba90
    # Line 380
    li	$v1,27652
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    # Line 379
    lw	$at,1696($s0)
    # Line 380
    sw	$v1,0($v0)
    sw	$a3,0($v0)
    # Line 379
    ori	$at,$at,0x400
    # Line 380
    b	.L0da9b8fc
    # Line 379
    sw	$at,1696($s0)
.L0da9c028:
    # Line 294
    sltiu	$v1,$s1,3552
    bnez	$v1,.L0da9c344
    sltiu	$a1,$s1,3553
    beqz	$a1,.L0da9ba94
    # Line 671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 403
    lw	$at,1696($s0)
    lui	$s1,0x1
    or	$at,$at,$s1
    sw	$at,1696($s0)
    addu	$s1,$s1,$s0
    lbu	$at,-25435($s1)
    beqz	$at,.L0da9cae4
    sd	$ra,40($sp)
    # Line 405
    # lw $t9, -31436($gp) # &__glMgrNeedSoftFilter4
    jal	__glMgrNeedSoftFilter4
    nop
    beqz	$v0,.L0da9c598
    ld	$ra,40($sp)
    # Line 406
    # lw $t9, -29672($gp) # &__glMgrEnterSoftPath
    jal	__glMgrEnterSoftPath
    move	$a0,$s0
    # Line 407
    lw	$v0,-28068($s1)
    ld	$ra,40($sp)
    ori	$v0,$v0,0x40
    b	.L0da9b8fc
    sw	$v0,-28068($s1)
.L0da9c090:
    # Line 299
    li	$a1,25860
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sw	$a1,0($v1)
    sw	$a3,0($v1)
    # Line 302
    sw	$a1,0($v1)
    b	.L0da9b8fc
    sw	$a3,0($v1)
.L0da9c0b0:
    # Line 361
    li	$at,27140
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    sw	$at,0($a1)
    b	.L0da9b8fc
    sw	$a3,0($a1)
.L0da9c0c8:
    # Line 636
    li	$a1,0xe804
    # Line 634
    lw	$at,1700($s0)
    # Line 636
    lui	$v1,0x7
    # Line 635
    lui	$v0,0x1
    # Line 634
    ori	$at,$at,0x400
    sw	$at,1700($s0)
    # Line 635
    addu	$v0,$s0,$v0
    lw	$at,-25264($v0)
    # Line 636
    ori	$v1,$v1,0x4080
    sw	$a1,0($v1)
    # Line 635
    ori	$at,$at,0x2
    # Line 636
    sw	$at,0($v1)
    b	.L0da9b8fc
    # Line 635
    sw	$at,-25264($v0)
.L0da9c100:
    # Line 294
    li	$a0,0x80bc
    sltu	$v0,$s1,$a0
    bnez	$v0,.L0da9c420
    sltu	$v1,$a0,$s1
    beqz	$v1,.L0da9c9c0
    li	$a1,0x80d0
    bne	$s1,$a1,.L0da9ba90
    # Line 603
    li	$a1,0x83a4
    addu	$a1,$a1,$s0
    sb	$a3,0($a1)
    # Line 605
    lw	$v1,32096($s0)
    ori	$v1,$v1,0x1000
    # Line 604
    lw	$at,32100($s0)
    # Line 605
    sw	$v1,32096($s0)
    # Line 604
    lui	$v0,0x200
    or	$at,$at,$v0
    # Line 606
    b	.L0da9b8fc
    # Line 604
    sw	$at,32100($s0)
.L0da9c148:
    # Line 294
    li	$at,2884
    bne	$s1,$at,.L0da9ba90
    # Line 311
    li	$v1,29184
    lui	$a1,0x7
    # Line 310
    lw	$v0,1696($s0)
    # Line 311
    ori	$a1,$a1,0x4080
    sw	$v1,0($a1)
    # Line 310
    ori	$v0,$v0,0x1000
    # Line 312
    b	.L0da9b8fc
    # Line 310
    sw	$v0,1696($s0)
.L0da9c170:
    # Line 394
    move	$a0,$s0
    sd	$ra,40($sp)
    # Line 393
    li	$a4,27908
    # Line 394
    lw	$t9,12716($s0)
    # Line 393
    lui	$a2,0x7
    ori	$a2,$a2,0x4080
    sw	$a4,0($a2)
    # Line 394
    jalr	$t9
    # Line 393
    sw	$a3,0($a2)
    ld	$gp,24($sp)
    # Line 395
    ld	$ra,40($sp)
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da9c1ac:
    # Line 307
    li	$v0,0xc200
    lui	$v1,0x7
    # Line 306
    lw	$at,1696($s0)
    # Line 307
    ori	$v1,$v1,0x4080
    sw	$v0,0($v1)
    # Line 306
    ori	$at,$at,0x80
    b	.L0da9b8fc
    sw	$at,1696($s0)
.L0da9c1cc:
    # Line 294
    sltiu	$a1,$s1,3058
    bnez	$a1,.L0da9c494
    sltiu	$at,$s1,3059
    beqz	$at,.L0da9ba90
    # Line 369
    li	$a1,27396
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    # Line 368
    lw	$v0,1700($s0)
    # Line 369
    sw	$a1,0($v1)
    sw	$a3,0($v1)
    # Line 368
    ori	$v0,$v0,0x800
    # Line 369
    b	.L0da9b8fc
    # Line 368
    sw	$v0,1700($s0)
.L0da9c200:
    # Line 318
    sw	$a0,0($s1)
    b	.L0da9b8fc
    sw	$zero,0($s1)
.L0da9c20c:
    # Line 294
    li	$a1,2960
    bne	$s1,$a1,.L0da9ba90
    # Line 400
    li	$v0,28420
    lui	$at,0x7
    ori	$at,$at,0x4080
    sw	$v0,0($at)
    b	.L0da9b8fc
    sw	$a3,0($at)
.L0da9c22c:
    # Line 294
    li	$v0,3170
    bne	$s1,$v0,.L0da9ba94
    # Line 671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 519
    lw	$a1,1696($s0)
    li	$v1,0x9ca5
    lui	$at,0x10
    or	$a1,$a1,$at
    sw	$a1,1696($s0)
    addu	$v1,$v1,$s0
    lbu	$v1,0($v1)
    beqz	$v1,.L0da9b8fc
    # Line 521
    li	$v1,29956
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    sw	$v1,0($v0)
    b	.L0da9b8fc
    sw	$s1,0($v0)
.L0da9c270:
    # Line 294
    sltiu	$v1,$s1,3475
    bnez	$v1,.L0da9c600
    sltiu	$a1,$s1,3476
    beqz	$a1,.L0da9ba94
    # Line 671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9bb68
    sd	$ra,40($sp)
.L0da9c28c:
    # Line 294
    sltiu	$at,$s1,3480
    bnez	$at,.L0da9c614
    sltiu	$v0,$s1,3481
    beqz	$v0,.L0da9ba94
    # Line 671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9bb68
    sd	$ra,40($sp)
.L0da9c2a8:
    # Line 294
    sltiu	$v1,$s1,12289
    bnez	$v1,.L0da9c644
    sltiu	$a1,$s1,12290
    beqz	$a1,.L0da9ba94
    # Line 671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9bacc
    # Line 534
    li	$at,0xa604
.L0da9c2c4:
    # Line 294
    li	$a0,0x8012
    sltu	$at,$s1,$a0
    bnez	$at,.L0da9c658
    sltu	$v0,$a0,$s1
    bnez	$v0,.L0da9ba90
    # Line 598
    li	$v0,0x8334
    # Line 597
    lw	$v1,1696($s0)
    # Line 598
    addu	$v0,$v0,$s0
    # Line 597
    lui	$a1,0x800
    or	$v1,$v1,$a1
    sw	$v1,1696($s0)
    # Line 598
    sb	$a3,0($v0)
    # Line 600
    lw	$at,32096($s0)
    ori	$at,$at,0x800
    # Line 599
    lw	$v1,32100($s0)
    # Line 600
    sw	$at,32096($s0)
    # Line 599
    lui	$a1,0x10
    or	$v1,$v1,$a1
    # Line 601
    b	.L0da9b8fc
    # Line 599
    sw	$v1,32100($s0)
.L0da9c314:
    ld	$gp,24($sp)
    # Line 660
    ld	$s1,16($sp)
    # Line 658
    lw	$v1,4944($s0)
    # Line 659
    lw	$a1,4948($s0)
    # Line 658
    lui	$a0,0xf000
    or	$v1,$v1,$a0
    # Line 659
    ori	$a1,$a1,0x8
    sw	$a1,4948($s0)
    # Line 658
    sw	$v1,4944($s0)
    # Line 660
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da9c344:
    # Line 294
    li	$at,3512
    bne	$s1,$at,.L0da9ba94
    # Line 671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9b8cc
    sd	$ra,40($sp)
.L0da9c358:
    # Line 294
    sltiu	$v0,$s1,16384
    bnez	$v0,.L0da9c6b4
    sltiu	$v1,$s1,16385
    beqz	$v1,.L0da9ba94
    # Line 671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9be2c
    sd	$ra,40($sp)
.L0da9c374:
    # Line 296
    li	$at,25604
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    sw	$at,0($a1)
    b	.L0da9b8fc
    sw	$a3,0($a1)
.L0da9c38c:
    # Line 631
    li	$a0,0xe804
    lui	$v1,0x7
    # Line 629
    lw	$a1,1696($s0)
    # Line 630
    lui	$v0,0x1
    # Line 629
    lui	$at,0x100
    or	$a1,$a1,$at
    sw	$a1,1696($s0)
    # Line 630
    addu	$v0,$s0,$v0
    lw	$at,-25264($v0)
    # Line 631
    ori	$v1,$v1,0x4080
    sw	$a0,0($v1)
    # Line 630
    ori	$at,$at,0x1
    # Line 631
    sw	$at,0($v1)
    b	.L0da9b8fc
    # Line 630
    sw	$at,-25264($v0)
.L0da9c3c8:
    # Line 426
    lw	$at,1696($s0)
    lui	$s1,0x1
    lui	$v0,0x2
    or	$at,$at,$v0
    sw	$at,1696($s0)
    addu	$s1,$s0,$s1
    lbu	$v0,-25435($s1)
    beqz	$v0,.L0da9cac4
    sd	$ra,40($sp)
    # Line 428
    # lw $t9, -31436($gp) # &__glMgrNeedSoftFilter4
    jal	__glMgrNeedSoftFilter4
    nop
    beqz	$v0,.L0da9c504
    ld	$ra,40($sp)
    # Line 429
    # lw $t9, -29672($gp) # &__glMgrEnterSoftPath
    jal	__glMgrEnterSoftPath
    move	$a0,$s0
    # Line 430
    lw	$v1,-28068($s1)
    ld	$ra,40($sp)
    ori	$v1,$v1,0x40
    b	.L0da9b8fc
    sw	$v1,-28068($s1)
.L0da9c420:
    # Line 294
    li	$a0,0x8079
    sltu	$a1,$s1,$a0
    bnez	$a1,.L0da9c7c0
    sltu	$at,$a0,$s1
    bnez	$at,.L0da9ba94
    # Line 671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    ld	$gp,24($sp)
    # Line 668
    ld	$s1,16($sp)
    # Line 666
    lw	$v0,4944($s0)
    # Line 667
    lw	$a0,4948($s0)
    # Line 666
    lui	$v1,0x800
    or	$v0,$v0,$v1
    # Line 667
    ori	$a0,$a0,0x10
    sw	$a0,4948($s0)
    # Line 666
    sw	$v0,4944($s0)
    # Line 668
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da9c468:
    # Line 618
    li	$v1,0x841c
    addu	$v1,$v1,$s0
    sb	$a3,0($v1)
    # Line 620
    lw	$v0,32096($s0)
    ori	$v0,$v0,0x2000
    # Line 619
    lw	$a1,32100($s0)
    # Line 620
    sw	$v0,32096($s0)
    # Line 619
    lui	$at,0x400
    or	$a1,$a1,$at
    # Line 621
    b	.L0da9b8fc
    # Line 619
    sw	$a1,32100($s0)
.L0da9c494:
    # Line 294
    li	$a1,3057
    bne	$s1,$a1,.L0da9ba90
    # Line 365
    li	$v1,27396
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    # Line 364
    lw	$at,1696($s0)
    # Line 365
    sw	$v1,0($v0)
    sw	$a3,0($v0)
    # Line 364
    ori	$at,$at,0x4
    # Line 365
    b	.L0da9b8fc
    # Line 364
    sw	$at,1696($s0)
.L0da9c4c0:
    # Line 294
    li	$a0,0x8074
    sltu	$v1,$s1,$a0
    bnez	$v1,.L0da9c868
    sltu	$a1,$a0,$s1
    bnez	$a1,.L0da9ba94
    # Line 671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 646
    lw	$s1,4944($s0)
    # Line 647
    lw	$at,4948($s0)
    ld	$gp,24($sp)
    # Line 646
    ori	$s1,$s1,0xff
    # Line 647
    ori	$at,$at,0x20
    sw	$at,4948($s0)
    # Line 646
    sw	$s1,4944($s0)
    # Line 648
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da9c504:
    # Line 430
    lw	$a4,-30164($s1)
    beqz	$a4,.L0da9c538
    # Line 434
    li	$a1,-1
    # Line 430
    lw	$v0,196($a4)
    beqz	$v0,.L0da9ca40
    # Line 432
    nop	# was lw $t9, -30792($gp) # &mgrTM_RefreshDim
.L0da9c51c:
    # Line 433
    beqz	$a4,.L0da9c538
    # Line 434
    li	$a1,-1
    # Line 433
    lw	$v1,196($a4)
    lbu	$v1,179($v1)
    slti	$v1,$v1,2
    beqz	$v1,.L0da9b8fc
    # Line 434
    li	$a1,-1
.L0da9c538:
    dsll	$a1,$a1,0x10
    ori	$a1,$a1,0x7438
    li	$a0,0x8bc8
    addu	$a0,$s0,$a0
    move	$a4,$a0
    beq	$s0,$a1,.L0da9c560
    sw	$a0,-30164($s1)
    lw	$at,-29556($s1)
    beqz	$at,.L0da9cb48
    # Line 435
    nop	# was lw $t9, -30792($gp) # &mgrTM_RefreshDim
.L0da9c560:
    lw	$v0,-28164($s1)
    lw	$v0,484($v0)
    lw	$a6,196($a4)
    beql	$v0,$a6,.L0da9ca54
    sd	$a6,48($sp)
    sd	$s1,8($sp)
    # Line 448
    lui	$s1,0x7
    ori	$s1,$s1,0x4080
    ld	$a0,8($sp)
.L0da9c584:
    # Line 454
    li	$at,2816
    li	$v0,1
    # Line 455
    sw	$v0,-28088($a0)
    b	.L0da9b8fc
    # Line 454
    sw	$at,0($s1)
.L0da9c598:
    # Line 407
    lw	$v1,-30164($s1)
    bnez	$v1,.L0da9b8fc
    # Line 410
    li	$a1,-1
    dsll	$a1,$a1,0x10
    ori	$a1,$a1,0x75d0
    li	$a0,0x8a30
    addu	$a0,$s0,$a0
    move	$a4,$a0
    beq	$s0,$a1,.L0da9c5c8
    sw	$a0,-30164($s1)
    lw	$at,-29964($s1)
    beqz	$at,.L0da9cb9c
.L0da9c5c8:
    move	$v1,$s1
    # Line 411
    lw	$v1,-28164($s1)
    lw	$v0,196($a4)
    lw	$v1,484($v1)
    sd	$s1,8($sp)
    lui	$s1,0x7
    beq	$v0,$v1,.L0da9ca0c
    ori	$s1,$s1,0x4080
.L0da9c5e8:
    li	$at,1
    # Line 416
    li	$a1,2816
    # Line 417
    ld	$v0,8($sp)
    # Line 416
    sw	$a1,0($s1)
    # Line 417
    b	.L0da9b8fc
    sw	$at,-28088($v0)
.L0da9c600:
    # Line 294
    li	$v1,3474
    bne	$s1,$v1,.L0da9ba94
    # Line 671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9bb68
    sd	$ra,40($sp)
.L0da9c614:
    # Line 294
    li	$a1,3479
    bne	$s1,$a1,.L0da9ba94
    # Line 671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9bb68
    sd	$ra,40($sp)
.L0da9c628:
    # Line 294
    sltiu	$at,$s1,3508
    bnez	$at,.L0da9c914
    sltiu	$v0,$s1,3509
    beqz	$v0,.L0da9ba94
    # Line 671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9b8cc
    sd	$ra,40($sp)
.L0da9c644:
    # Line 294
    li	$v1,12288
    bne	$s1,$v1,.L0da9ba94
    # Line 671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9bacc
    # Line 534
    li	$at,0xa604
.L0da9c658:
    # Line 294
    li	$a1,0x8011
    bne	$s1,$a1,.L0da9ba90
    # Line 592
    li	$a1,0x82e4
    # Line 591
    lw	$at,1696($s0)
    # Line 592
    addu	$a1,$a1,$s0
    # Line 591
    lui	$v0,0x400
    or	$at,$at,$v0
    sw	$at,1696($s0)
    # Line 592
    sb	$a3,0($a1)
    # Line 594
    lw	$v1,32096($s0)
    ori	$v1,$v1,0x800
    # Line 593
    lw	$at,32100($s0)
    # Line 594
    sw	$v1,32096($s0)
    # Line 593
    lui	$v0,0x10
    or	$at,$at,$v0
    # Line 595
    b	.L0da9b8fc
    # Line 593
    sw	$at,32100($s0)
.L0da9c69c:
    # Line 397
    li	$v0,28164
    lui	$at,0x7
    ori	$at,$at,0x4080
    sw	$v0,0($at)
    b	.L0da9b8fc
    sw	$a3,0($at)
.L0da9c6b4:
    # Line 294
    li	$v0,12293
    bne	$s1,$v0,.L0da9ba94
    # Line 671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9bacc
    # Line 534
    li	$at,0xa604
.L0da9c6c8:
    # Line 294
    li	$v1,16386
    bne	$s1,$v1,.L0da9ba94
    # Line 671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9be2c
    sd	$ra,40($sp)
.L0da9c6dc:
    # Line 294
    sltiu	$a1,$s1,16389
    bnez	$a1,.L0da9c928
    sltiu	$at,$s1,16390
    beqz	$at,.L0da9ba94
    # Line 671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9be2c
    sd	$ra,40($sp)
.L0da9c6f8:
    # Line 574
    li	$a1,0x81dc
    # Line 573
    lw	$at,1696($s0)
    # Line 574
    addu	$a1,$a1,$s0
    # Line 573
    lui	$v0,0x1000
    or	$at,$at,$v0
    sw	$at,1696($s0)
    # Line 574
    sb	$a3,0($a1)
    # Line 576
    lw	$v1,32096($s0)
    # Line 575
    lw	$v0,32100($s0)
    # Line 576
    ori	$v1,$v1,0x40
    sw	$v1,32096($s0)
    # Line 575
    ori	$v0,$v0,0x40
    # Line 577
    b	.L0da9b8fc
    # Line 575
    sw	$v0,32100($s0)
.L0da9c730:
    # Line 294
    li	$a0,0x8134
    sltu	$at,$s1,$a0
    bnez	$at,.L0da9c93c
    sltu	$v0,$a0,$s1
    bnez	$v0,.L0da9ba90
    # Line 483
    lui	$a2,0x1
    addu	$a2,$s0,$a2
    lbu	$v1,-25435($a2)
    beqz	$v1,.L0da9cc64
    # Line 498
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 483
    lw	$a4,-30164($a2)
    beqzl	$a4,.L0da9c790
    # Line 486
    lw	$v0,-28164($a2)
    # Line 483
    lw	$at,196($a4)
    beqz	$at,.L0da9cbb8
    # Line 484
    nop	# was lw $t9, -30792($gp) # &mgrTM_RefreshDim
.L0da9c770:
    # Line 485
    beqzl	$a4,.L0da9c790
    # Line 486
    lw	$v0,-28164($a2)
    # Line 485
    lw	$v0,196($a4)
    lbu	$v0,179($v0)
    slti	$v0,$v0,6
    beqz	$v0,.L0da9b900
    # Line 674
    li	$a0,2
    # Line 486
    lw	$v0,-28164($a2)
.L0da9c790:
    li	$v1,0x8ef8
    addu	$v1,$s0,$v1
    sw	$v1,-30164($a2)
    lw	$at,-28740($a2)
    lw	$v0,484($v0)
    lui	$s1,0x7
    beq	$at,$v0,.L0da9cb04
    ori	$s1,$s1,0x4080
.L0da9c7b0:
    # Line 492
    sw	$a3,-28088($a2)
    # Line 491
    li	$a1,2816
    # Line 492
    b	.L0da9b8fc
    # Line 491
    sw	$a1,0($s1)
.L0da9c7c0:
    # Line 294
    li	$at,0x8078
    bne	$s1,$at,.L0da9ba94
    # Line 671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    ld	$gp,24($sp)
    # Line 664
    ld	$s1,16($sp)
    # Line 662
    lw	$v0,4944($s0)
    # Line 663
    lw	$a0,4948($s0)
    # Line 662
    lui	$v1,0x7f0
    or	$v0,$v0,$v1
    # Line 663
    ori	$a0,$a0,0x4
    sw	$a0,4948($s0)
    # Line 662
    sw	$v0,4944($s0)
    # Line 664
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da9c7fc:
    # Line 504
    li	$a0,3456
    sd	$ra,40($sp)
    # Line 503
    lw	$a1,1696($s0)
    # Line 504
    # lw $t9, -31200($gp) # &__glMgrEvalEnable
    # Line 503
    lui	$a2,0x80
    or	$a1,$a1,$a2
    # Line 504
    bal __glMgrEvalEnable
    # Line 503
    sw	$a1,1696($s0)
    b	.L0da9b8fc
    ld	$ra,40($sp)
.L0da9c824:
    # Line 350
    # lw $t9, -29672($gp) # &__glMgrEnterSoftPath
    jal	__glMgrEnterSoftPath
    move	$a0,$s0
    # Line 351
    lw	$at,-28068($s1)
    ori	$at,$at,0x4
    sw	$at,-28068($s1)
    # Line 352
    lw	$ra,1696($s0)
    ori	$ra,$ra,0x200
    sw	$ra,1696($s0)
    b	.L0da9b8fc
    ld	$ra,40($sp)
.L0da9c850:
    # Line 357
    li	$v1,26884
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    sw	$v1,0($v0)
    b	.L0da9b8fc
    sw	$a3,0($v0)
.L0da9c868:
    # Line 294
    li	$v1,0x806f
    bne	$s1,$v1,.L0da9ba94
    # Line 671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 464
    lw	$a1,1696($s0)
    lui	$a0,0x1
    lui	$at,0x4000
    or	$a1,$a1,$at
    sw	$a1,1696($s0)
    addu	$a0,$s0,$a0
    lbu	$a1,-25435($a0)
    beqz	$a1,.L0da9cc88
    # Line 478
    nop	# was lw $t9, -29672($gp) # &__glMgrEnterSoftPath
    # Line 464
    lw	$a4,-30164($a0)
    beqzl	$a4,.L0da9c8e4
    # Line 469
    lw	$v0,-28164($a0)
    # Line 464
    lw	$v0,196($a4)
    beqz	$v0,.L0da9cbdc
    # Line 466
    nop	# was lw $t9, -30792($gp) # &mgrTM_RefreshDim
.L0da9c8b0:
    # Line 467
    beqzl	$a4,.L0da9c8e4
    # Line 469
    lw	$v0,-28164($a0)
    # Line 467
    lw	$v1,196($a4)
    lbu	$v1,179($v1)
    slti	$v1,$v1,4
    beqzl	$v1,.L0da9b900
    # Line 674
    li	$a0,2
    # Line 467
    beqzl	$a4,.L0da9c8e4
    # Line 469
    lw	$v0,-28164($a0)
    # Line 467
    lw	$a1,196($a4)
    beqz	$a1,.L0da9cc00
    # Line 468
    nop	# was lw $t9, -30792($gp) # &mgrTM_RefreshDim
.L0da9c8e0:
    # Line 469
    lw	$v0,-28164($a0)
.L0da9c8e4:
    li	$v1,0x8d60
    addu	$v1,$s0,$v1
    sw	$v1,-30164($a0)
    lw	$at,-29148($a0)
    lw	$v0,484($v0)
    lui	$s1,0x7
    beq	$at,$v0,.L0da9cb5c
    ori	$s1,$s1,0x4080
.L0da9c904:
    # Line 475
    sw	$a3,-28088($a0)
    # Line 474
    li	$a1,2816
    # Line 475
    b	.L0da9b8fc
    # Line 474
    sw	$a1,0($s1)
.L0da9c914:
    # Line 294
    li	$at,3507
    bne	$s1,$at,.L0da9ba94
    # Line 671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9b8cc
    sd	$ra,40($sp)
.L0da9c928:
    # Line 294
    li	$v0,16388
    bne	$s1,$v0,.L0da9ba94
    # Line 671
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9be2c
    sd	$ra,40($sp)
.L0da9c93c:
    # Line 294
    li	$v1,0x80d2
    bne	$s1,$v1,.L0da9ba90
    # Line 623
    li	$v1,0x8458
    addu	$v1,$v1,$s0
    sb	$a3,0($v1)
    # Line 625
    lw	$v0,32096($s0)
    ori	$v0,$v0,0x4000
    # Line 624
    lw	$a1,32100($s0)
    # Line 625
    sw	$v0,32096($s0)
    # Line 624
    lui	$at,0x800
    or	$a1,$a1,$at
    # Line 626
    b	.L0da9b8fc
    # Line 624
    sw	$a1,32100($s0)
.L0da9c970:
    # Line 377
    b	.L0da9b8fc
    # Line 376
    sw	$a3,32068($s0)
.L0da9c978:
    # Line 332
    move	$a1,$zero
    move	$a0,$s0
    # Line 331
    lui	$a3,0x1
    addu	$a3,$s0,$a3
    lw	$a2,-26944($a3)
    # Line 332
    # lw $t9, -30728($gp) # &mgrTM_SendTexmode1
    # Line 331
    lui	$a4,0x2
    or	$a2,$a2,$a4
    # Line 332
    jal	mgrTM_SendTexmode1
    # Line 331
    sw	$a2,-26944($a3)
    li	$ra,1
    # Line 333
    li	$v0,26628
    lui	$at,0x7
    ori	$at,$at,0x4080
    sw	$v0,0($at)
    sw	$ra,0($at)
    b	.L0da9b8fc
    ld	$ra,40($sp)
.L0da9c9c0:
    sd	$ra,40($sp)
    # Line 615
    # lw $t9, -30604($gp) # &__glMgrUpdateTextureColorTableState
    # Line 614
    li	$v0,0x83e0
    addu	$v0,$v0,$s0
    # Line 615
    jal	__glMgrUpdateTextureColorTableState
    # Line 614
    sb	$a3,0($v0)
    b	.L0da9b8fc
    ld	$ra,40($sp)
.L0da9c9e0:
    ld	$gp,24($sp)
    # Line 650
    lw	$v1,4944($s0)
    # Line 651
    lw	$a0,4948($s0)
    # Line 652
    ld	$s1,16($sp)
    # Line 650
    ori	$v1,$v1,0xf00
    # Line 651
    ori	$a0,$a0,0x1
    sw	$a0,4948($s0)
    # Line 650
    sw	$v1,4944($s0)
    # Line 652
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da9ca0c:
    # Line 413
    move	$a3,$zero
    # lw $t9, -30688($gp) # &__glMgrSaveTexmode
    move	$a2,$zero
    li	$a1,1
    jal	__glMgrSaveTexmode
    li	$a0,1
    # Line 414
    li	$ra,24324
    sw	$ra,0($s1)
    ld	$ra,40($sp)
    lui	$a1,0xe
    ori	$a1,$a1,0x100
    b	.L0da9c5e8
    sw	$a1,0($s1)
.L0da9ca40:
    # Line 432
    jalr	$t9
    move	$a0,$a4
    lw	$a4,-30164($s1)
    b	.L0da9c51c
    ld	$ra,40($sp)
.L0da9ca54:
    # Line 439
    move	$a3,$zero
    # lw $t9, -30688($gp) # &__glMgrSaveTexmode
    move	$a2,$zero
    li	$a1,1
    jal	__glMgrSaveTexmode
    li	$a0,1
    ld	$a2,48($sp)
    lbu	$a0,194($a2)
    beqz	$a0,.L0da9caa0
    ld	$ra,40($sp)
    lh	$at,162($a2)
    li	$v0,1
    beql	$at,$v0,.L0da9cc20
    # Line 447
    li	$a0,24324
    beqz	$a0,.L0da9caa4
    # Line 451
    li	$a0,24324
    # Line 447
    lh	$v1,162($a2)
    beqz	$v1,.L0da9cc40
    sd	$s1,8($sp)
.L0da9caa0:
    # Line 451
    li	$a0,24324
.L0da9caa4:
    mtc1	$zero,$f2
    sd	$s1,8($sp)
    lui	$s1,0x7
    ori	$s1,$s1,0x4080
    sw	$a0,0($s1)
    ld	$a0,8($sp)
    b	.L0da9c584
    swc1	$f2,0($s1)
.L0da9cac4:
    # Line 459
    # lw $t9, -29672($gp) # &__glMgrEnterSoftPath
    jal	__glMgrEnterSoftPath
    move	$a0,$s0
    # Line 460
    lw	$ra,-28068($s1)
    ori	$ra,$ra,0x10
    sw	$ra,-28068($s1)
    b	.L0da9b8fc
    ld	$ra,40($sp)
.L0da9cae4:
    # Line 421
    # lw $t9, -29672($gp) # &__glMgrEnterSoftPath
    jal	__glMgrEnterSoftPath
    move	$a0,$s0
    # Line 422
    lw	$at,-28068($s1)
    ld	$ra,40($sp)
    ori	$at,$at,0x8
    b	.L0da9b8fc
    sw	$at,-28068($s1)
.L0da9cb04:
    # Line 488
    move	$a3,$zero
    sd	$a2,8($sp)
    move	$a2,$zero
    # lw $t9, -30688($gp) # &__glMgrSaveTexmode
    li	$a1,1
    sd	$ra,40($sp)
    jal	__glMgrSaveTexmode
    li	$a0,1
    li	$a3,1
    ld	$a2,8($sp)
    ld	$ra,40($sp)
    # Line 489
    lui	$v0,0xe
    li	$v1,24324
    sw	$v1,0($s1)
    ori	$v0,$v0,0x100
    b	.L0da9c7b0
    sw	$v0,0($s1)
.L0da9cb48:
    # Line 435
    jalr	$t9
    nop
    lw	$a4,-30164($s1)
    b	.L0da9c560
    ld	$ra,40($sp)
.L0da9cb5c:
    # Line 471
    move	$a3,$zero
    move	$a2,$zero
    li	$a1,1
    # lw $t9, -30688($gp) # &__glMgrSaveTexmode
    sd	$a0,8($sp)
    sd	$ra,40($sp)
    jal	__glMgrSaveTexmode
    li	$a0,1
    li	$a3,1
    ld	$a0,8($sp)
    ld	$ra,40($sp)
    # Line 472
    li	$v1,24324
    mtc1	$zero,$f3
    sw	$v1,0($s1)
    b	.L0da9c904
    swc1	$f3,0($s1)
.L0da9cb9c:
    # Line 411
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    jal	mgrTM_RefreshDim
    nop
    sd	$s1,8($sp)
    lw	$a4,-30164($s1)
    b	.L0da9c5c8
    ld	$ra,40($sp)
.L0da9cbb8:
    sd	$a2,8($sp)
    sd	$ra,40($sp)
    # Line 484
    jalr	$t9
    move	$a0,$a4
    li	$a3,1
    ld	$a2,8($sp)
    ld	$ra,40($sp)
    b	.L0da9c770
    lw	$a4,-30164($a2)
.L0da9cbdc:
    sd	$a0,8($sp)
    sd	$ra,40($sp)
    # Line 466
    jalr	$t9
    move	$a0,$a4
    li	$a3,1
    ld	$a0,8($sp)
    ld	$ra,40($sp)
    b	.L0da9c8b0
    lw	$a4,-30164($a0)
.L0da9cc00:
    sd	$a0,8($sp)
    sd	$ra,40($sp)
    # Line 468
    jalr	$t9
    move	$a0,$a4
    li	$a3,1
    ld	$a0,8($sp)
    b	.L0da9c8e0
    ld	$ra,40($sp)
.L0da9cc20:
    # Line 447
    lwc1	$f0,120($a2)
    sd	$s1,8($sp)
    lui	$s1,0x7
    ori	$s1,$s1,0x4080
    sw	$a0,0($s1)
    ld	$a0,8($sp)
    b	.L0da9c584
    swc1	$f0,0($s1)
.L0da9cc40:
    ld	$a0,8($sp)
    # Line 449
    li	$at,24324
    lui	$s1,0x7
    lwc1	$f1,120($a2)
    ori	$s1,$s1,0x4080
    sw	$at,0($s1)
    neg.s	$f1,$f1
    b	.L0da9c584
    swc1	$f1,0($s1)
.L0da9cc64:
    sd	$ra,40($sp)
    # Line 498
    jalr	$t9
    li	$a0,1280
    ld	$gp,24($sp)
    # Line 499
    ld	$ra,40($sp)
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da9cc88:
    sd	$a0,8($sp)
    sd	$ra,40($sp)
    # Line 478
    jalr	$t9
    move	$a0,$s0
    ld	$at,8($sp)
    # Line 479
    lw	$ra,-28068($at)
    ori	$ra,$ra,0x20
    sw	$ra,-28068($at)
    b	.L0da9b8fc
    ld	$ra,40($sp)
.end __glMgrim_Enable

# Function: __glMgrim_SoftDisable
# Declared: Line 678 (Source lines: 678-815)
# Address: 0x0da9ccb0 - 0x0da9d230 (Size: 1408 bytes, Frame: 48)
.globl __glMgrim_SoftDisable
.ent __glMgrim_SoftDisable
__glMgrim_SoftDisable:
    # Line 681
    li	$v0,1
    # Line 678
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    # Line 681
    lw	$s0,__glCurrentContext
    sd	$gp,8($sp)
    lw	$at,__glBeginMode
    # Line 678
    lui	$v1,0x16
    addiu	$v1,$v1,6632
    # Line 681
    beq	$at,$v0,.L0da9d158
    # Line 678
    addu	$gp,$t9,$v1
    # Line 681
    sltiu	$a1,$a0,3042
    bnez	$a1,.L0da9cd5c
    # Line 684
    sltiu	$at,$a0,3043
    bnez	$at,.L0da9cdb4
    sltiu	$v0,$a0,3552
    bnez	$v0,.L0da9ce5c
    sltiu	$v1,$a0,3553
    bnez	$v1,.L0da9cff0
    li	$a2,0x806f
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0da9d088
    sltu	$at,$a2,$a0
    bnez	$at,.L0da9cf20
    # Line 810
    nop	# was lw $t9, -27840($gp) # &__glim_Disable
    # Line 798
    lui	$a0,0x1
    lw	$a1,1696($s0)
    lui	$at,0x4000
    nor	$at,$at,$zero
    and	$a1,$a1,$at
    sw	$a1,1696($s0)
    addu	$a0,$s0,$a0
    lbu	$v0,-25435($a0)
    bnez	$v0,.L0da9cd54
    nop
    lw	$a3,-28068($a0)
    andi	$v0,$a3,0x20
    beqz	$v0,.L0da9cd54
    # Line 801
    li	$v1,-33
    and	$v1,$a3,$v1
    beqz	$v1,.L0da9d200
    sw	$v1,-28068($a0)
.L0da9cd54:
    # Line 807
    b	.L0da9cddc
    li	$a0,2
.L0da9cd5c:
    # Line 684
    sltiu	$a1,$a0,2960
    bnez	$a1,.L0da9cdfc
    # Line 752
    li	$v0,0x8000
    # Line 684
    sltiu	$at,$a0,2961
    bnez	$at,.L0da9cef4
    # Line 753
    lui	$v1,0x7
    # Line 684
    sltiu	$v0,$a0,3024
    bnez	$v0,.L0da9cf38
    sltiu	$v1,$a0,3025
    beqz	$v1,.L0da9cf20
    # Line 810
    nop	# was lw $t9, -27840($gp) # &__glim_Disable
    # Line 705
    li	$a0,2
    # Line 704
    li	$v1,26372
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    sw	$v1,0($v0)
    # Line 703
    lw	$a1,1696($s0)
    # Line 704
    sw	$zero,0($v0)
    # Line 703
    li	$at,-9
    and	$a1,$a1,$at
    # Line 705
    b	.L0da9cddc
    # Line 703
    sw	$a1,1696($s0)
.L0da9cdb4:
    # Line 691
    li	$a1,-3
    # Line 693
    li	$a0,2
    # Line 692
    li	$v0,25860
    lui	$at,0x7
    ori	$at,$at,0x4080
    # Line 691
    lw	$v1,1696($s0)
    # Line 692
    sw	$v0,0($at)
    sw	$zero,0($at)
    # Line 691
    and	$v1,$v1,$a1
    sw	$v1,1696($s0)
.L0da9cddc:
    # Line 814
    sw	$a0,__glBeginMode
    lw	$v0,11828($s0)
    ld	$gp,8($sp)
    ori	$v0,$v0,0x1
    sw	$v0,11828($s0)
    # Line 815
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da9cdfc:
    # Line 684
    sltiu	$v1,$a0,2881
    bnez	$v1,.L0da9cea4
    sltiu	$a1,$a0,2882
    bnez	$a1,.L0da9cfa8
    li	$at,2929
    bne	$a0,$at,.L0da9cf1c
    # Line 699
    li	$v0,26116
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sw	$v0,0($v1)
    # Line 696
    lw	$a1,1696($s0)
    # Line 697
    li	$a0,2
    # Line 696
    li	$at,-17
    and	$a1,$a1,$at
    sw	$a1,1696($s0)
    # Line 697
    sw	$a0,__glBeginMode
    # Line 699
    sw	$zero,0($v1)
    # Line 697
    lw	$v1,11828($s0)
    # Line 698
    li	$v0,0x9265
    addu	$v0,$v0,$s0
    # Line 697
    ori	$v1,$v1,0x80
    sw	$v1,11828($s0)
    # Line 699
    b	.L0da9cddc
    # Line 698
    sb	$zero,0($v0)
.L0da9ce5c:
    # Line 684
    sltiu	$a1,$a0,3058
    bnez	$a1,.L0da9cf70
    sltiu	$at,$a0,3059
    bnez	$at,.L0da9d108
    li	$v0,3089
    bne	$a0,$v0,.L0da9cf20
    # Line 810
    nop	# was lw $t9, -27840($gp) # &__glim_Disable
    # Line 749
    li	$a0,2
    # Line 748
    li	$v0,28164
    lui	$at,0x7
    ori	$at,$at,0x4080
    sw	$v0,0($at)
    # Line 747
    lw	$v1,1696($s0)
    # Line 748
    sw	$zero,0($at)
    # Line 747
    li	$a1,-16385
    and	$v1,$v1,$a1
    # Line 749
    b	.L0da9cddc
    # Line 747
    sw	$v1,1696($s0)
.L0da9cea4:
    # Line 684
    li	$v0,2848
    bne	$a0,$v0,.L0da9cf1c
    # Line 708
    lui	$a2,0x1
    addu	$a2,$s0,$a2
    lbu	$v1,-28063($a2)
    beqz	$v1,.L0da9d1c0
    # Line 718
    nop	# was lw $t9, -27840($gp) # &__glim_Disable
    # Line 709
    lw	$v0,1696($s0)
    li	$v1,-513
    and	$v0,$v0,$v1
    sw	$v0,1696($s0)
    lw	$a3,-28068($a2)
    andi	$at,$a3,0x4
    beqz	$at,.L0da9ceec
    # Line 711
    li	$a1,-5
    and	$a1,$a3,$a1
    beqz	$a1,.L0da9d17c
    sw	$a1,-28068($a2)
.L0da9ceec:
    # Line 720
    b	.L0da9cddc
    li	$a0,2
.L0da9cef4:
    # Line 752
    nor	$v0,$v0,$zero
    # Line 754
    li	$a0,2
    # Line 753
    ori	$v1,$v1,0x4080
    li	$a1,28420
    # Line 752
    lw	$at,1696($s0)
    # Line 753
    sw	$a1,0($v1)
    sw	$zero,0($v1)
    # Line 752
    and	$at,$at,$v0
    # Line 754
    b	.L0da9cddc
    # Line 752
    sw	$at,1696($s0)
.L0da9cf1c:
    # Line 810
    # lw $t9, -27840($gp) # &__glim_Disable
.L0da9cf20:
    sd	$ra,24($sp)
    jal	__glim_Disable
    nop
    li	$a0,2
    b	.L0da9cddc
    ld	$ra,24($sp)
.L0da9cf38:
    # Line 684
    li	$a1,3008
    bne	$a0,$a1,.L0da9cf20
    # Line 810
    nop	# was lw $t9, -27840($gp) # &__glim_Disable
    # Line 688
    li	$a0,2
    # Line 687
    li	$a1,25604
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sw	$a1,0($v1)
    # Line 686
    lw	$at,1696($s0)
    # Line 687
    sw	$zero,0($v1)
    # Line 686
    li	$v0,-2
    and	$at,$at,$v0
    # Line 688
    b	.L0da9cddc
    # Line 686
    sw	$at,1696($s0)
.L0da9cf70:
    # Line 684
    li	$a1,3057
    bne	$a0,$a1,.L0da9cf20
    # Line 810
    nop	# was lw $t9, -27840($gp) # &__glim_Disable
    # Line 725
    li	$a0,2
    # Line 724
    li	$a1,27396
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sw	$a1,0($v1)
    # Line 723
    lw	$at,1696($s0)
    # Line 724
    sw	$zero,0($v1)
    # Line 723
    li	$v0,-5
    and	$at,$at,$v0
    # Line 725
    b	.L0da9cddc
    # Line 723
    sw	$at,1696($s0)
.L0da9cfa8:
    # Line 733
    lui	$a2,0x1
    addu	$a2,$s0,$a2
    lbu	$a1,-28062($a2)
    beqz	$a1,.L0da9d1d4
    # Line 742
    nop	# was lw $t9, -27840($gp) # &__glim_Disable
    # Line 733
    lw	$a3,-28068($a2)
    andi	$at,$a3,0x2
    beqz	$at,.L0da9cfe8
    # Line 735
    li	$v1,-3
    and	$v1,$a3,$v1
    sw	$v1,-28068($a2)
    # Line 736
    lw	$v0,1696($s0)
    li	$a1,-2049
    and	$v0,$v0,$a1
    beqz	$v1,.L0da9d1a8
    sw	$v0,1696($s0)
.L0da9cfe8:
    # Line 744
    b	.L0da9cddc
    li	$a0,2
.L0da9cff0:
    # Line 756
    lui	$a0,0x1
    lw	$a1,1696($s0)
    lui	$at,0x1
    nor	$at,$at,$zero
    and	$a1,$a1,$at
    sw	$a1,1696($s0)
    addu	$a0,$s0,$a0
    lbu	$a1,-25435($a0)
    beqz	$a1,.L0da9d064
    # Line 758
    nop	# was lw $t9, -31436($gp) # &__glMgrNeedSoftFilter4
    sd	$ra,24($sp)
    jal	__glMgrNeedSoftFilter4
    sd	$a0,0($sp)
    bnez	$v0,.L0da9d080
    ld	$ra,24($sp)
    ld	$a3,0($sp)
    lw	$a3,-28068($a3)
    andi	$v0,$a3,0x40
    beqz	$v0,.L0da9d080
    # Line 760
    li	$at,-65
    ld	$v0,0($sp)
    and	$at,$a3,$at
    bnez	$at,.L0da9d080
    sw	$at,-28068($v0)
    # Line 762
    # lw $t9, -29604($gp) # &__glMgrExitSoftPath
    jal	__glMgrExitSoftPath
    move	$a0,$s0
    b	.L0da9d080
    ld	$ra,24($sp)
.L0da9d064:
    lw	$a3,-28068($a0)
    andi	$v0,$a3,0x8
    beqz	$v0,.L0da9d080
    # Line 768
    li	$v1,-9
    and	$v1,$a3,$v1
    beqz	$v1,.L0da9d1e8
    sw	$v1,-28068($a0)
.L0da9d080:
    # Line 774
    b	.L0da9cddc
    li	$a0,2
.L0da9d088:
    # Line 684
    li	$a1,3553
    bne	$a0,$a1,.L0da9cf20
    # Line 810
    nop	# was lw $t9, -27840($gp) # &__glim_Disable
    # Line 777
    lui	$a0,0x1
    lw	$a1,1696($s0)
    lui	$at,0x2
    nor	$at,$at,$zero
    and	$a1,$a1,$at
    sw	$a1,1696($s0)
    addu	$a0,$s0,$a0
    lbu	$at,-25435($a0)
    beqz	$at,.L0da9d134
    # Line 779
    nop	# was lw $t9, -31436($gp) # &__glMgrNeedSoftFilter4
    sd	$ra,24($sp)
    jal	__glMgrNeedSoftFilter4
    sd	$a0,0($sp)
    bnez	$v0,.L0da9d150
    ld	$ra,24($sp)
    ld	$a3,0($sp)
    lw	$a3,-28068($a3)
    andi	$v0,$a3,0x40
    beqz	$v0,.L0da9d150
    # Line 781
    li	$at,-65
    ld	$v0,0($sp)
    and	$at,$a3,$at
    bnez	$at,.L0da9d150
    sw	$at,-28068($v0)
    # Line 783
    # lw $t9, -29604($gp) # &__glMgrExitSoftPath
    jal	__glMgrExitSoftPath
    move	$a0,$s0
    b	.L0da9d150
    ld	$ra,24($sp)
.L0da9d108:
    # Line 730
    li	$a0,2
    # Line 729
    li	$at,27396
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    sw	$at,0($a1)
    # Line 728
    lw	$v0,1700($s0)
    # Line 729
    sw	$zero,0($a1)
    # Line 728
    li	$v1,-2049
    and	$v0,$v0,$v1
    # Line 730
    b	.L0da9cddc
    # Line 728
    sw	$v0,1700($s0)
.L0da9d134:
    # Line 783
    lw	$a3,-28068($a0)
    andi	$at,$a3,0x10
    beqz	$at,.L0da9d150
    # Line 789
    li	$v0,-17
    and	$v0,$a3,$v0
    beqz	$v0,.L0da9d218
    sw	$v0,-28068($a0)
.L0da9d150:
    # Line 795
    b	.L0da9cddc
    li	$a0,2
.L0da9d158:
    # Line 681
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da9d17c:
    # Line 713
    # lw $t9, -29604($gp) # &__glMgrExitSoftPath
    sd	$ra,24($sp)
    jal	__glMgrExitSoftPath
    move	$a0,$s0
    ld	$ra,24($sp)
    # Line 714
    li	$a1,26884
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sw	$a1,0($v1)
    b	.L0da9ceec
    sw	$zero,0($v1)
.L0da9d1a8:
    # Line 738
    # lw $t9, -29604($gp) # &__glMgrExitSoftPath
    sd	$ra,24($sp)
    jal	__glMgrExitSoftPath
    move	$a0,$s0
    b	.L0da9cfe8
    ld	$ra,24($sp)
.L0da9d1c0:
    sd	$ra,24($sp)
    # Line 718
    jalr	$t9
    nop
    b	.L0da9ceec
    ld	$ra,24($sp)
.L0da9d1d4:
    sd	$ra,24($sp)
    # Line 742
    jalr	$t9
    nop
    b	.L0da9cfe8
    ld	$ra,24($sp)
.L0da9d1e8:
    # Line 770
    # lw $t9, -29604($gp) # &__glMgrExitSoftPath
    sd	$ra,24($sp)
    jal	__glMgrExitSoftPath
    move	$a0,$s0
    b	.L0da9d080
    ld	$ra,24($sp)
.L0da9d200:
    # Line 803
    # lw $t9, -29604($gp) # &__glMgrExitSoftPath
    sd	$ra,24($sp)
    jal	__glMgrExitSoftPath
    move	$a0,$s0
    b	.L0da9cd54
    ld	$ra,24($sp)
.L0da9d218:
    # Line 791
    # lw $t9, -29604($gp) # &__glMgrExitSoftPath
    sd	$ra,24($sp)
    jal	__glMgrExitSoftPath
    move	$a0,$s0
    b	.L0da9d150
    ld	$ra,24($sp)
.end __glMgrim_SoftDisable

# Function: __glMgrEvalDisable
# Declared: Line 817 (Source lines: 818-933)
# Address: 0x0da9d230 - 0x0da9d644 (Size: 1044 bytes, Frame: 32)
.globl __glMgrEvalDisable
.ent __glMgrEvalDisable
__glMgrEvalDisable:
    # Line 821
    lw	$a2,__glCurrentContext
    addiu	$a3,$a0,-3456
    # Line 818
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$at,0x16
    addiu	$at,$at,5224
    addu	$gp,$t9,$at
    # Line 821
    # lw $t9, -32624($gp) # &sub_0dbf0000
    sltiu	$at,$a3,57
    sll	$a3,$a3,0x2
    addiu	$t9,$t9,-8360
    beqz	$at,.L0da9d28c
    addu	$a3,$a3,$t9
    lw	$v0,%lo(jtbl_0dbedf58)($a3)
    # Line 916
    sll	$a4,$a0,0x2
    # Line 899
    sll	$a5,$a0,0x2
    # Line 821
    jr	$v0
    # Line 916
    lui	$at,0xfffe
.L0da9d278:
    # Line 926
    lui	$a0,0x1
    addu	$a0,$a2,$a0
    lbu	$v1,-30188($a0)
    beqz	$v1,.L0da9d62c
    sb	$zero,-30556($a0)
.L0da9d28c:
    ld	$gp,0($sp)
.L0da9d290:
    # Line 933
    jr	$ra
    addiu	$sp,$sp,32
.L0da9d298:
    # Line 826
    lui	$a4,0xfffe
    sll	$a3,$a0,0x2
    subu	$a3,$a3,$a0
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a0
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a2
    addu	$a4,$a3,$a4
    lbu	$a1,-15116($a4)
    # Line 829
    lui	$a0,0x1
    # Line 826
    beqz	$a1,.L0da9d5e4
    # Line 829
    lui	$v0,0xfffd
    addu	$a0,$a2,$a0
    sb	$zero,-15116($a4)
    lw	$at,-31244($a0)
    ori	$v0,$v0,0xc4e4
    addu	$v0,$a3,$v0
    bnel	$at,$v0,.L0da9d290
    ld	$gp,0($sp)
    lbu	$a1,-30816($a0)
    beqzl	$a1,.L0da9d5d4
    sd	$ra,8($sp)
    sd	$ra,8($sp)
    # Line 833
    li	$at,0x8790
    addu	$at,$a2,$at
    sw	$at,-31244($a0)
.L0da9d300:
    # Line 834
    # lw $t9, -31068($gp) # &__glMgrCleanUp1D
    jal	__glMgrCleanUp1D
    nop
    b	.L0da9d28c
    ld	$ra,8($sp)
.L0da9d314:
    # Line 841
    lui	$at,0xfffd
    lui	$a4,0xfffe
    sll	$a5,$a0,0x2
    subu	$a5,$a5,$a0
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$a0
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$a2
    addu	$a4,$a5,$a4
    lbu	$v0,-15116($a4)
    ori	$at,$at,0xc4e4
    addu	$a5,$a5,$at
    beqz	$v0,.L0da9d5f0
    move	$a3,$a5
    # Line 844
    sb	$zero,-15116($a4)
    lui	$a0,0x1
    addu	$a0,$a2,$a0
    lw	$at,-31208($a0)
    li	$a4,0x86c0
    bne	$at,$a5,.L0da9d28c
    addu	$a4,$a2,$a4
.L0da9d368:
    beql	$a4,$a3,.L0da9d5c4
    sd	$ra,8($sp)
    # Line 851
    lbu	$at,-36($a3)
    beqz	$at,.L0da9d368
    addiu	$a3,$a3,-52
.L0da9d37c:
    # Line 853
    # lw $t9, -31068($gp) # &__glMgrCleanUp1D
    sd	$ra,8($sp)
    jal	__glMgrCleanUp1D
    # Line 852
    sw	$a3,-31208($a0)
    b	.L0da9d28c
    ld	$ra,8($sp)
.L0da9d394:
    # Line 858
    lui	$at,0xfffe
    sll	$a4,$a0,0x2
    subu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a2
    addu	$a4,$a4,$at
    lbu	$v0,-15116($a4)
    beqzl	$v0,.L0da9d5fc
    ld	$gp,0($sp)
    # Line 860
    sb	$zero,-15116($a4)
    lbu	$at,3105($a2)
    xori	$v0,$a0,0xd91
    sltiu	$v0,$v0,1
    bnel	$at,$v0,.L0da9d290
    ld	$gp,0($sp)
    sd	$ra,8($sp)
    # Line 863
    # lw $t9, -31068($gp) # &__glMgrCleanUp1D
    # Line 862
    li	$v1,0x8600
    addu	$v1,$v1,$a2
    # Line 863
    jal	__glMgrCleanUp1D
    # Line 862
    sw	$zero,0($v1)
    b	.L0da9d28c
    ld	$ra,8($sp)
.L0da9d3f8:
    # Line 867
    lui	$a0,0x1
    addu	$a0,$a2,$a0
    lbu	$a1,-31076($a0)
    bnez	$a1,.L0da9d5ac
    # Line 871
    nop	# was lw $t9, -31068($gp) # &__glMgrCleanUp1D
    ld	$gp,0($sp)
    # Line 868
    jr	$ra
    addiu	$sp,$sp,32
.L0da9d418:
    # Line 874
    lui	$a0,0x1
    addu	$a0,$a2,$a0
    lbu	$a1,-30188($a0)
    beqzl	$a1,.L0da9d604
    ld	$gp,0($sp)
    # Line 875
    lbu	$a1,-30556($a0)
    beqz	$a1,.L0da9d28c
    sb	$zero,-30188($a0)
    sd	$ra,8($sp)
    # Line 879
    # lw $t9, -31052($gp) # &__glMgrCleanUp2D
    # Line 878
    li	$a3,0x8894
    addu	$a2,$a2,$a3
    # Line 879
    jal	__glMgrCleanUp2D
    # Line 878
    sw	$a2,-30700($a0)
    b	.L0da9d28c
    ld	$ra,8($sp)
.L0da9d458:
    # Line 884
    lui	$a4,0xfffe
    sll	$a3,$a0,0x2
    subu	$a3,$a3,$a0
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a0
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a2
    addu	$a4,$a3,$a4
    lbu	$at,-16260($a4)
    # Line 887
    lui	$a0,0x1
    # Line 884
    beqz	$at,.L0da9d60c
    # Line 887
    lui	$v0,0xfffd
    addu	$a0,$a2,$a0
    sb	$zero,-16260($a4)
    lw	$at,-30724($a0)
    ori	$v0,$v0,0xc06c
    addu	$v0,$a3,$v0
    bnel	$at,$v0,.L0da9d290
    ld	$gp,0($sp)
    lbu	$a1,-30296($a0)
    beqzl	$a1,.L0da9d5dc
    sd	$ra,8($sp)
    sd	$ra,8($sp)
    # Line 891
    li	$at,0x8998
    addu	$at,$a2,$at
    sw	$at,-30724($a0)
.L0da9d4c0:
    # Line 892
    # lw $t9, -31052($gp) # &__glMgrCleanUp2D
    jal	__glMgrCleanUp2D
    nop
    b	.L0da9d28c
    ld	$ra,8($sp)
.L0da9d4d4:
    # Line 899
    lui	$at,0xfffd
    lui	$a4,0xfffe
    subu	$a5,$a5,$a0
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$a0
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$a2
    addu	$a4,$a5,$a4
    lbu	$v0,-16260($a4)
    ori	$at,$at,0xc06c
    addu	$a5,$a5,$at
    beqz	$v0,.L0da9d618
    move	$a3,$a5
    # Line 902
    sb	$zero,-16260($a4)
    lui	$a0,0x1
    addu	$a0,$a2,$a0
    lw	$at,-30688($a0)
    li	$a4,0x88c8
    bne	$at,$a5,.L0da9d28c
    addu	$a4,$a2,$a4
.L0da9d524:
    beql	$a4,$a3,.L0da9d5cc
    sd	$ra,8($sp)
    # Line 909
    lbu	$at,-36($a3)
    beqz	$at,.L0da9d524
    addiu	$a3,$a3,-52
.L0da9d538:
    # Line 911
    # lw $t9, -31052($gp) # &__glMgrCleanUp2D
    sd	$ra,8($sp)
    jal	__glMgrCleanUp2D
    # Line 910
    sw	$a3,-30688($a0)
    b	.L0da9d28c
    ld	$ra,8($sp)
.L0da9d550:
    # Line 916
    subu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a2
    addu	$a4,$a4,$at
    lbu	$v0,-16260($a4)
    beqzl	$v0,.L0da9d624
    ld	$gp,0($sp)
    # Line 918
    sb	$zero,-16260($a4)
    lbu	$at,3105($a2)
    xori	$v0,$a0,0xdb1
    sltiu	$v0,$v0,1
    bnel	$at,$v0,.L0da9d290
    ld	$gp,0($sp)
    sd	$ra,8($sp)
    # Line 921
    # lw $t9, -31052($gp) # &__glMgrCleanUp2D
    # Line 920
    li	$v1,0x8808
    addu	$v1,$v1,$a2
    # Line 921
    jal	__glMgrCleanUp2D
    # Line 920
    sw	$zero,0($v1)
    b	.L0da9d28c
    ld	$ra,8($sp)
.L0da9d5ac:
    # Line 870
    sw	$zero,-31220($a0)
    sd	$ra,8($sp)
    # Line 871
    jalr	$t9
    # Line 869
    sb	$zero,-31076($a0)
    b	.L0da9d28c
    ld	$ra,8($sp)
.L0da9d5c4:
    # Line 849
    b	.L0da9d37c
    # Line 848
    move	$a3,$zero
.L0da9d5cc:
    # Line 907
    b	.L0da9d538
    # Line 906
    move	$a3,$zero
.L0da9d5d4:
    # Line 832
    b	.L0da9d300
    sw	$zero,-31244($a0)
.L0da9d5dc:
    # Line 890
    b	.L0da9d4c0
    sw	$zero,-30724($a0)
.L0da9d5e4:
    ld	$gp,0($sp)
    # Line 828
    jr	$ra
    addiu	$sp,$sp,32
.L0da9d5f0:
    ld	$gp,0($sp)
    # Line 843
    jr	$ra
    addiu	$sp,$sp,32
.L0da9d5fc:
    # Line 859
    jr	$ra
    addiu	$sp,$sp,32
.L0da9d604:
    # Line 874
    jr	$ra
    addiu	$sp,$sp,32
.L0da9d60c:
    ld	$gp,0($sp)
    # Line 886
    jr	$ra
    addiu	$sp,$sp,32
.L0da9d618:
    ld	$gp,0($sp)
    # Line 901
    jr	$ra
    addiu	$sp,$sp,32
.L0da9d624:
    # Line 917
    jr	$ra
    addiu	$sp,$sp,32
.L0da9d62c:
    # Line 929
    # lw $t9, -31052($gp) # &__glMgrCleanUp2D
    sd	$ra,8($sp)
    jal	__glMgrCleanUp2D
    # Line 928
    sw	$zero,-30700($a0)
    b	.L0da9d28c
    ld	$ra,8($sp)
.end __glMgrEvalDisable

# Function: __glMgrDisableLightSource
# Declared: Line 937 (Source lines: 941-942)
# Address: 0x0da9d644 - 0x0da9d65c (Size: 24 bytes, Frame: 0)
.globl __glMgrDisableLightSource
.ent __glMgrDisableLightSource
__glMgrDisableLightSource:
    # Line 941
    li	$v0,0xa004
    lui	$at,0x7
    ori	$at,$at,0x4080
    sw	$v0,0($at)
    # Line 942
    jr	$ra
    # Line 941
    sw	$a1,0($at)
.end __glMgrDisableLightSource

# Function: __glMgrim_Disable
# Declared: Line 945 (Source lines: 946-1259)
# Address: 0x0da9d65c - 0x0da9e8c8 (Size: 4716 bytes, Frame: 192)
.globl __glMgrim_Disable
.ent __glMgrim_Disable
__glMgrim_Disable:
    # Line 949
    li	$a3,1
    # Line 946
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    # Line 949
    lw	$s0,__glCurrentContext
    sd	$s2,8($sp)
    # Line 946
    move	$s2,$a0
    sd	$gp,16($sp)
    # Line 949
    lw	$at,__glBeginMode
    # Line 946
    lui	$v0,0x16
    addiu	$v0,$v0,4156
    # Line 949
    beq	$at,$a3,.L0da9dbe8
    # Line 946
    addu	$gp,$t9,$v0
    # Line 949
    sltiu	$v1,$s2,3511
    bnez	$v1,.L0da9d6f8
    # Line 952
    sltiu	$a1,$s2,3512
    beqz	$a1,.L0da9d7c8
.L0da9d69c:
    # Line 1158
    nop	# was lw $t9, -31184($gp) # &__glMgrEvalDisable
    sd	$ra,32($sp)
    bal __glMgrEvalDisable
    move	$a0,$s2
    # Line 1160
    lw	$ra,1716($s0)
    addiu	$v0,$s2,-3504
    li	$at,1
    sllv	$at,$at,$v0
    nor	$at,$at,$zero
    andi	$at,$at,0xffff
    and	$ra,$ra,$at
    sw	$ra,1716($s0)
    ld	$ra,32($sp)
.L0da9d6d0:
    # Line 1258
    li	$a0,2
.L0da9d6d4:
    sw	$a0,__glBeginMode
    lw	$v1,11828($s0)
    ld	$gp,16($sp)
    # Line 1259
    ld	$s2,8($sp)
    # Line 1258
    ori	$v1,$v1,0x1
    sw	$v1,11828($s0)
    # Line 1259
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da9d6f8:
    # Line 952
    sltiu	$a1,$s2,3169
    bnez	$a1,.L0da9d754
    sltiu	$at,$s2,3170
    bnez	$at,.L0da9d8bc
    # Line 1102
    lui	$a1,0x8
    # Line 952
    sltiu	$v0,$s2,3478
    bnez	$v0,.L0da9d8f4
    sltiu	$v1,$s2,3479
    beqz	$v1,.L0da9da48
.L0da9d71c:
    # Line 1148
    nop	# was lw $t9, -31184($gp) # &__glMgrEvalDisable
    sd	$ra,32($sp)
    bal __glMgrEvalDisable
    move	$a0,$s2
    # Line 1150
    lw	$a1,1712($s0)
    addiu	$at,$s2,-3472
    li	$ra,1
    sllv	$ra,$ra,$at
    nor	$ra,$ra,$zero
    andi	$ra,$ra,0xffff
    and	$a1,$a1,$ra
    ld	$ra,32($sp)
    # Line 1151
    b	.L0da9d6d0
    # Line 1150
    sw	$a1,1712($s0)
.L0da9d754:
    # Line 952
    sltiu	$v0,$s2,2929
    bnez	$v0,.L0da9d840
    sltiu	$v1,$s2,2930
    bnez	$v1,.L0da9d98c
    sltiu	$a1,$s2,3042
    bnez	$a1,.L0da9d9f4
    sltiu	$at,$s2,3043
    bnez	$at,.L0da9de98
    sltiu	$v0,$s2,3089
    bnez	$v0,.L0da9df54
    sltiu	$v1,$s2,3090
    bnez	$v1,.L0da9e420
    li	$a1,3168
    bne	$s2,$a1,.L0da9d86c
    # Line 1096
    li	$at,0x9ca5
    lw	$v0,1696($s0)
    lui	$v1,0x4
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    sw	$v0,1696($s0)
    addu	$at,$at,$s0
    lbu	$at,0($at)
    beqz	$at,.L0da9d6d0
    # Line 1098
    li	$at,30212
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    sw	$at,0($a1)
    b	.L0da9d6d0
    sw	$s2,0($a1)
.L0da9d7c8:
    # Line 952
    li	$a0,0x8010
    sltu	$at,$s2,$a0
    bnez	$at,.L0da9d894
    sltu	$v0,$a0,$s2
    beqz	$v0,.L0da9d9b0
    li	$a0,0x8077
    sltu	$v1,$s2,$a0
    bnez	$v1,.L0da9da7c
    sltu	$a1,$a0,$s2
    beqz	$a1,.L0da9e0f8
    li	$a0,0x80d1
    sltu	$at,$s2,$a0
    bnez	$at,.L0da9df08
    sltu	$v0,$a0,$s2
    beqz	$v0,.L0da9e2d0
    li	$a0,0x8139
    sltu	$v1,$s2,$a0
    bnez	$v1,.L0da9e4a8
    sltu	$a1,$a0,$s2
    beqz	$a1,.L0da9e69c
    li	$at,0xbead
    bne	$s2,$at,.L0da9d86c
    sd	$ra,32($sp)
    # Line 1138
    # lw $t9, -29588($gp) # &__glMgrim_IglooInterfaceSGIX
    addiu	$a1,$sp,0
    li	$a0,0x81a3
    jal	__glMgrim_IglooInterfaceSGIX
    # Line 1137
    sw	$zero,0($sp)
    b	.L0da9d6d0
    ld	$ra,32($sp)
.L0da9d840:
    # Line 952
    sltiu	$v0,$s2,2882
    bnez	$v0,.L0da9d928
    sltiu	$v1,$s2,2883
    bnez	$v1,.L0da9dbd0
    sltiu	$a1,$s2,2903
    bnez	$a1,.L0da9dc10
    sltiu	$at,$s2,2904
    bnez	$at,.L0da9e19c
    li	$v0,2912
    beq	$s2,$v0,.L0da9e70c
    sd	$ra,32($sp)
.L0da9d86c:
    # Line 1255
    # lw $t9, -27320($gp) # &__glSetError
.L0da9d870:
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,16($sp)
    # Line 1256
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da9d894:
    # Line 952
    sltiu	$v1,$s2,12292
    bnez	$v1,.L0da9d958
    sltiu	$a1,$s2,12293
    beqz	$a1,.L0da9db6c
.L0da9d8a4:
    # Line 1123
    li	$v0,0xa704
.L0da9d8a8:
    lui	$at,0x7
    ori	$at,$at,0x4080
    sw	$v0,0($at)
    b	.L0da9d6d0
    sw	$s2,0($at)
.L0da9d8bc:
    # Line 1102
    lw	$v1,1696($s0)
    li	$v0,0x9ca5
    nor	$a1,$a1,$zero
    and	$v1,$v1,$a1
    sw	$v1,1696($s0)
    addu	$v0,$v0,$s0
    lbu	$v0,0($v0)
    # Line 1104
    lui	$at,0x7
    # Line 1102
    beqz	$v0,.L0da9d6d0
    # Line 1104
    ori	$at,$at,0x4080
    li	$v0,30212
    sw	$v0,0($at)
    b	.L0da9d6d0
    sw	$s2,0($at)
.L0da9d8f4:
    # Line 952
    sltiu	$v0,$s2,3473
    bnez	$v0,.L0da9da24
    sltiu	$v1,$s2,3474
    bnez	$v1,.L0da9d71c
    sltiu	$a1,$s2,3476
    bnez	$a1,.L0da9e04c
    sltiu	$at,$s2,3477
    bnez	$at,.L0da9d71c
    li	$v0,3477
    bne	$s2,$v0,.L0da9d870
    # Line 1255
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9d71c
    sd	$ra,32($sp)
.L0da9d928:
    # Line 952
    sltiu	$v1,$s2,2852
    bnez	$v1,.L0da9daec
    sltiu	$a1,$s2,2853
    bnez	$a1,.L0da9deb0
    li	$at,2881
    bne	$s2,$at,.L0da9d870
    # Line 1255
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1015
    lw	$v0,1696($s0)
    li	$v1,-2049
    and	$v0,$v0,$v1
    # Line 1016
    b	.L0da9d6d0
    # Line 1015
    sw	$v0,1696($s0)
.L0da9d958:
    # Line 952
    sltiu	$a1,$s2,10754
    bnez	$a1,.L0da9db14
    sltiu	$at,$s2,10755
    bnez	$at,.L0da9dec8
    sltiu	$v0,$s2,12290
    bnez	$v0,.L0da9e084
    sltiu	$v1,$s2,12291
    bnez	$v1,.L0da9d8a4
    li	$a1,12291
    bne	$s2,$a1,.L0da9d870
    # Line 1255
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9d8a8
    # Line 1123
    li	$v0,0xa704
.L0da9d98c:
    # Line 971
    li	$v0,0x9265
    addu	$v0,$v0,$s0
    sb	$zero,0($v0)
    # Line 972
    li	$v0,26116
    lui	$at,0x7
    ori	$at,$at,0x4080
    sw	$v0,0($at)
    b	.L0da9d6d0
    sw	$zero,0($at)
.L0da9d9b0:
    # Line 1176
    li	$v0,0x8294
    addu	$v0,$v0,$s0
    # Line 1175
    lw	$v1,1696($s0)
    lui	$a1,0x200
    nor	$a1,$a1,$zero
    and	$v1,$v1,$a1
    sw	$v1,1696($s0)
    # Line 1176
    sb	$zero,0($v0)
    # Line 1178
    lw	$at,32096($s0)
    ori	$at,$at,0x800
    sw	$at,32096($s0)
    # Line 1177
    lw	$v1,32100($s0)
    lui	$a1,0x10
    nor	$a1,$a1,$zero
    and	$v1,$v1,$a1
    # Line 1179
    b	.L0da9d6d0
    # Line 1177
    sw	$v1,32100($s0)
.L0da9d9f4:
    # Line 952
    sltiu	$v1,$s2,3008
    bnez	$v1,.L0da9dc84
    sltiu	$a1,$s2,3009
    bnez	$a1,.L0da9e184
    li	$at,3024
    bne	$s2,$at,.L0da9d86c
    # Line 975
    li	$v1,26372
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    sw	$v1,0($v0)
    b	.L0da9d6d0
    sw	$zero,0($v0)
.L0da9da24:
    # Line 952
    sltiu	$v1,$s2,3456
    bnez	$v1,.L0da9dcc0
    sltiu	$a1,$s2,3457
    bnez	$a1,.L0da9e588
    li	$at,3472
    bne	$s2,$at,.L0da9d870
    # Line 1255
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9d71c
    sd	$ra,32($sp)
.L0da9da48:
    # Line 952
    sltiu	$v0,$s2,3506
    bnez	$v0,.L0da9dd0c
    sltiu	$v1,$s2,3507
    bnez	$v1,.L0da9d69c
    sltiu	$a1,$s2,3509
    bnez	$a1,.L0da9e3a4
    sltiu	$at,$s2,3510
    bnez	$at,.L0da9d69c
    li	$v0,3510
    bne	$s2,$v0,.L0da9d870
    # Line 1255
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9d69c
    sd	$ra,32($sp)
.L0da9da7c:
    # Line 952
    li	$a0,0x8037
    sltu	$v1,$s2,$a0
    bnez	$v1,.L0da9dd30
    sltu	$a1,$a0,$s2
    beqz	$a1,.L0da9e1c0
    li	$a0,0x8075
    sltu	$at,$s2,$a0
    bnez	$at,.L0da9e330
    sltu	$v0,$a0,$s2
    beqz	$v0,.L0da9e6c4
    li	$v1,0x8076
    bne	$s2,$v1,.L0da9d870
    # Line 1255
    nop	# was lw $t9, -27320($gp) # &__glSetError
    ld	$gp,16($sp)
    # Line 1239
    li	$at,-3
    lw	$s2,4948($s0)
    # Line 1238
    lw	$a0,4944($s0)
    lui	$a1,0xf
    ori	$a1,$a1,0xf000
    nor	$a1,$a1,$zero
    and	$a0,$a0,$a1
    # Line 1239
    and	$s2,$s2,$at
    sw	$s2,4948($s0)
    # Line 1238
    sw	$a0,4944($s0)
    # Line 1240
    ld	$s0,24($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da9daec:
    # Line 952
    sltiu	$v0,$s2,2848
    bnez	$v0,.L0da9dd8c
    sltiu	$v1,$s2,2849
    beqz	$v1,.L0da9d86c
    # Line 990
    li	$at,26884
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    sw	$at,0($a1)
    b	.L0da9d6d0
    sw	$zero,0($a1)
.L0da9db14:
    # Line 952
    sltiu	$at,$s2,3553
    bnez	$at,.L0da9ddbc
    sltiu	$v0,$s2,3554
    bnez	$v0,.L0da9e204
    li	$v1,10753
    bne	$s2,$v1,.L0da9d86c
    # Line 1225
    li	$v1,0xe804
    lui	$at,0x7
    ori	$at,$at,0x4080
    # Line 1223
    lw	$v0,1700($s0)
    # Line 1224
    lui	$a1,0x1
    # Line 1223
    li	$a0,-513
    and	$v0,$v0,$a0
    sw	$v0,1700($s0)
    # Line 1224
    addu	$a1,$s0,$a1
    lw	$a0,-25264($a1)
    # Line 1225
    sw	$v1,0($at)
    # Line 1224
    li	$v0,-5
    and	$a0,$a0,$v0
    # Line 1225
    sw	$a0,0($at)
    b	.L0da9d6d0
    # Line 1224
    sw	$a0,-25264($a1)
.L0da9db6c:
    # Line 952
    sltiu	$v0,$s2,16387
    bnez	$v0,.L0da9de74
    sltiu	$v1,$s2,16388
    beqz	$v1,.L0da9e160
.L0da9db7c:
    # Line 1131
    li	$a4,2
    # Line 1130
    lw	$a5,1704($s0)
    addiu	$a1,$s2,-16384
    sllv	$a6,$a3,$a1
    nor	$a6,$a6,$zero
    and	$a5,$a5,$a6
    sw	$a5,1704($s0)
    # Line 1131
    sw	$a4,__glBeginMode
    # Line 1132
    move	$a0,$s0
    # Line 1131
    lw	$a2,11828($s0)
    # Line 1132
    # lw $t9, -31180($gp) # &__glMgrDisableLightSource
    sd	$ra,32($sp)
    # Line 1131
    ori	$a2,$a2,0x20
    # Line 1132
    bal __glMgrDisableLightSource
    # Line 1131
    sw	$a2,11828($s0)
    ld	$gp,16($sp)
    # Line 1133
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da9dbd0:
    # Line 1018
    li	$v0,27908
    lui	$at,0x7
    ori	$at,$at,0x4080
    sw	$v0,0($at)
    b	.L0da9d6d0
    sw	$zero,0($at)
.L0da9dbe8:
    # Line 949
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,16($sp)
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da9dc10:
    # Line 952
    sltiu	$v0,$s2,2896
    bnez	$v0,.L0da9df8c
    sltiu	$v1,$s2,2897
    beqz	$v1,.L0da9d86c
    sd	$ra,32($sp)
    # Line 983
    lw	$a3,1696($s0)
    # Line 984
    li	$a2,2
    # Line 983
    li	$a4,-65
    and	$a3,$a3,$a4
    sw	$a3,1696($s0)
    # Line 984
    sw	$a2,__glBeginMode
    lw	$a1,11828($s0)
    # Line 985
    lw	$t9,11864($s0)
    move	$a0,$s0
    # Line 984
    ori	$a1,$a1,0x20
    # Line 985
    jalr	$t9
    # Line 984
    sw	$a1,11828($s0)
    # Line 986
    lw	$t9,12072($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 987
    # lw $t9, -32548($gp) # &__glMgrDisableLighting
    jal	__glMgrDisableLighting
    move	$a0,$s0
    ld	$gp,16($sp)
    # Line 988
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da9dc84:
    # Line 952
    sltiu	$at,$s2,2977
    bnez	$at,.L0da9dfe8
    sltiu	$v0,$s2,2978
    beqz	$v0,.L0da9d86c
    # Line 1005
    li	$v0,0xa304
    lui	$at,0x7
    ori	$at,$at,0x4080
    sw	$v0,0($at)
    sw	$zero,0($at)
    # Line 1004
    lw	$v1,1696($s0)
    lui	$a1,0x40
    nor	$a1,$a1,$zero
    and	$v1,$v1,$a1
    # Line 1005
    b	.L0da9d6d0
    # Line 1004
    sw	$v1,1696($s0)
.L0da9dcc0:
    # Line 952
    sltiu	$v0,$s2,3171
    bnez	$v0,.L0da9e008
    sltiu	$v1,$s2,3172
    beqz	$v1,.L0da9d86c
    # Line 1114
    li	$a1,0x9ca5
    lw	$at,1696($s0)
    lui	$v0,0x20
    nor	$v0,$v0,$zero
    and	$at,$at,$v0
    sw	$at,1696($s0)
    addu	$a1,$a1,$s0
    lbu	$a1,0($a1)
    beqz	$a1,.L0da9d6d0
    # Line 1116
    li	$a1,30212
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sw	$a1,0($v1)
    b	.L0da9d6d0
    sw	$s2,0($v1)
.L0da9dd0c:
    # Line 952
    sltiu	$a1,$s2,3504
    bnez	$a1,.L0da9e068
    sltiu	$at,$s2,3505
    bnez	$at,.L0da9d69c
    li	$v0,3505
    bne	$s2,$v0,.L0da9d870
    # Line 1255
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9d69c
    sd	$ra,32($sp)
.L0da9dd30:
    # Line 952
    li	$a0,0x8024
    sltu	$v1,$s2,$a0
    bnez	$v1,.L0da9e0a0
    sltu	$a1,$a0,$s2
    beqz	$a1,.L0da9e468
    li	$at,0x802e
    bne	$s2,$at,.L0da9d86c
    # Line 1170
    li	$at,0x820c
    addu	$at,$at,$s0
    # Line 1169
    lw	$v0,1696($s0)
    lui	$v1,0x2000
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    sw	$v0,1696($s0)
    # Line 1170
    sb	$zero,0($at)
    # Line 1172
    lw	$a1,32096($s0)
    ori	$a1,$a1,0x80
    # Line 1171
    lw	$v0,32100($s0)
    # Line 1172
    sw	$a1,32096($s0)
    # Line 1171
    li	$v1,-129
    and	$v0,$v0,$v1
    # Line 1173
    b	.L0da9d6d0
    # Line 1171
    sw	$v0,32100($s0)
.L0da9dd8c:
    # Line 952
    li	$v0,2832
    bne	$s2,$v0,.L0da9d86c
    # Line 1012
    li	$v0,27652
    lui	$at,0x7
    ori	$at,$at,0x4080
    sw	$v0,0($at)
    # Line 1011
    lw	$v1,1696($s0)
    # Line 1012
    sw	$zero,0($at)
    # Line 1011
    li	$a1,-1025
    and	$v1,$v1,$a1
    # Line 1012
    b	.L0da9d6d0
    # Line 1011
    sw	$v1,1696($s0)
.L0da9ddbc:
    # Line 952
    sltiu	$v0,$s2,3552
    bnez	$v0,.L0da9e130
    sltiu	$v1,$s2,3553
    beqz	$v1,.L0da9d86c
    # Line 1027
    lui	$s2,0x1
    lw	$at,1696($s0)
    lui	$v0,0x1
    nor	$v0,$v0,$zero
    and	$at,$at,$v0
    sw	$at,1696($s0)
    addu	$s2,$s0,$s2
    lw	$a0,-30164($s2)
    beqzl	$a0,.L0da9de04
    # Line 1028
    lbu	$a1,-25435($s2)
    # Line 1027
    lw	$v1,196($a0)
    beqz	$v1,.L0da9e76c
    # Line 1028
    nop	# was lw $t9, -30792($gp) # &mgrTM_RefreshDim
.L0da9de00:
    lbu	$a1,-25435($s2)
.L0da9de04:
    beqz	$a1,.L0da9d6d4
    # Line 1258
    li	$a0,2
    # Line 1028
    lw	$a0,-30164($s2)
    beqzl	$a0,.L0da9d6d4
    # Line 1258
    li	$a0,2
    # Line 1028
    lw	$at,196($a0)
    lbu	$at,179($at)
    bgtz	$at,.L0da9d6d4
    # Line 1258
    li	$a0,2
    # Line 1032
    move	$a3,$zero
    move	$a2,$zero
    move	$a1,$zero
    # lw $t9, -30688($gp) # &__glMgrSaveTexmode
    li	$a0,1
    sd	$ra,32($sp)
    jal	__glMgrSaveTexmode
    # Line 1031
    sw	$zero,-30164($s2)
    # Line 1035
    sw	$zero,-28088($s2)
    ld	$ra,32($sp)
    # Line 1034
    li	$v0,3072
    # Line 1033
    li	$a1,24324
    mtc1	$zero,$f0
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sw	$a1,0($v1)
    swc1	$f0,0($v1)
    # Line 1035
    b	.L0da9d6d0
    # Line 1034
    sw	$v0,0($v1)
.L0da9de74:
    # Line 952
    sltiu	$a1,$s2,16385
    bnez	$a1,.L0da9e144
    sltiu	$at,$s2,16386
    bnez	$at,.L0da9db7c
    li	$v0,16386
    bne	$s2,$v0,.L0da9d870
    # Line 1255
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9db7c
    sd	$ra,32($sp)
.L0da9de98:
    # Line 957
    li	$a1,25860
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sw	$a1,0($v1)
    b	.L0da9d6d0
    sw	$zero,0($v1)
.L0da9deb0:
    # Line 993
    li	$at,27140
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    sw	$at,0($a1)
    b	.L0da9d6d0
    sw	$zero,0($a1)
.L0da9dec8:
    # Line 1220
    li	$a1,0xe804
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    # Line 1218
    lw	$a0,1700($s0)
    # Line 1219
    lui	$v0,0x1
    # Line 1218
    li	$at,-1025
    and	$a0,$a0,$at
    sw	$a0,1700($s0)
    # Line 1219
    addu	$v0,$s0,$v0
    lw	$at,-25264($v0)
    # Line 1220
    sw	$a1,0($v1)
    # Line 1219
    li	$a0,-3
    and	$at,$at,$a0
    # Line 1220
    sw	$at,0($v1)
    b	.L0da9d6d0
    # Line 1219
    sw	$at,-25264($v0)
.L0da9df08:
    # Line 952
    li	$a0,0x80bc
    sltu	$a1,$s2,$a0
    bnez	$a1,.L0da9e280
    sltu	$at,$a0,$s2
    beqz	$at,.L0da9e6a4
    li	$v0,0x80d0
    bne	$s2,$v0,.L0da9d86c
    # Line 1193
    li	$v0,0x83a4
    addu	$v0,$v0,$s0
    sb	$zero,0($v0)
    # Line 1195
    lw	$at,32096($s0)
    ori	$at,$at,0x1000
    sw	$at,32096($s0)
    # Line 1194
    lw	$v1,32100($s0)
    lui	$a1,0x200
    nor	$a1,$a1,$zero
    and	$v1,$v1,$a1
    # Line 1196
    b	.L0da9d6d0
    # Line 1194
    sw	$v1,32100($s0)
.L0da9df54:
    # Line 952
    sltiu	$v1,$s2,3058
    bnez	$v1,.L0da9e300
    sltiu	$a1,$s2,3059
    beqz	$a1,.L0da9d86c
    # Line 1001
    li	$a1,27396
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sw	$a1,0($v1)
    # Line 1000
    lw	$at,1696($s0)
    # Line 1001
    sw	$zero,0($v1)
    # Line 1000
    li	$v0,-2049
    and	$at,$at,$v0
    # Line 1001
    b	.L0da9d6d0
    # Line 1000
    sw	$at,1696($s0)
.L0da9df8c:
    # Line 952
    li	$a1,2884
    bne	$s2,$a1,.L0da9d870
    # Line 1255
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 965
    lw	$a0,1696($s0)
    andi	$at,$a0,0x1000
    beqz	$at,.L0da9e6f8
    ld	$gp,16($sp)
    # Line 968
    li	$v1,29440
    # Line 966
    li	$s2,-4097
    and	$s2,$a0,$s2
    sw	$s2,1696($s0)
    # Line 969
    ld	$s2,8($sp)
    # Line 967
    li	$a1,2
    sw	$a1,__glBeginMode
    # Line 968
    lui	$a0,0x7
    # Line 967
    lw	$v0,11828($s0)
    # Line 968
    ori	$a0,$a0,0x4080
    sw	$v1,0($a0)
    # Line 967
    ori	$v0,$v0,0x4
    sw	$v0,11828($s0)
    # Line 969
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da9dfe8:
    # Line 952
    li	$at,2960
    bne	$s2,$at,.L0da9d86c
    # Line 1024
    li	$v1,28420
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    sw	$v1,0($v0)
    b	.L0da9d6d0
    sw	$zero,0($v0)
.L0da9e008:
    # Line 952
    li	$v1,3170
    bne	$s2,$v1,.L0da9d86c
    # Line 1108
    li	$a1,0x9ca5
    lw	$at,1696($s0)
    lui	$v0,0x10
    nor	$v0,$v0,$zero
    and	$at,$at,$v0
    sw	$at,1696($s0)
    addu	$a1,$a1,$s0
    lbu	$a1,0($a1)
    beqz	$a1,.L0da9d6d0
    # Line 1110
    li	$a1,30212
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sw	$a1,0($v1)
    b	.L0da9d6d0
    sw	$s2,0($v1)
.L0da9e04c:
    # Line 952
    sltiu	$a1,$s2,3475
    bnez	$a1,.L0da9e37c
    sltiu	$at,$s2,3476
    beqz	$at,.L0da9d870
    # Line 1255
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9d71c
    sd	$ra,32($sp)
.L0da9e068:
    # Line 952
    sltiu	$v0,$s2,3480
    bnez	$v0,.L0da9e390
    sltiu	$v1,$s2,3481
    beqz	$v1,.L0da9d870
    # Line 1255
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9d71c
    sd	$ra,32($sp)
.L0da9e084:
    # Line 952
    sltiu	$a1,$s2,12289
    bnez	$a1,.L0da9e3c0
    sltiu	$at,$s2,12290
    beqz	$at,.L0da9d870
    # Line 1255
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9d8a8
    # Line 1123
    li	$v0,0xa704
.L0da9e0a0:
    # Line 952
    li	$a0,0x8012
    sltu	$v0,$s2,$a0
    bnez	$v0,.L0da9e3d4
    sltu	$v1,$a0,$s2
    bnez	$v1,.L0da9d86c
    # Line 1188
    li	$v1,0x8334
    addu	$v1,$v1,$s0
    # Line 1187
    lw	$a1,1696($s0)
    lui	$at,0x800
    nor	$at,$at,$zero
    and	$a1,$a1,$at
    sw	$a1,1696($s0)
    # Line 1188
    sb	$zero,0($v1)
    # Line 1190
    lw	$v0,32096($s0)
    ori	$v0,$v0,0x800
    sw	$v0,32096($s0)
    # Line 1189
    lw	$a1,32100($s0)
    lui	$at,0x10
    nor	$at,$at,$zero
    and	$a1,$a1,$at
    # Line 1191
    b	.L0da9d6d0
    # Line 1189
    sw	$a1,32100($s0)
.L0da9e0f8:
    ld	$gp,16($sp)
    # Line 1243
    li	$at,-9
    # Line 1242
    lui	$a1,0xfff
    lw	$a0,4944($s0)
    # Line 1243
    lw	$s2,4948($s0)
    # Line 1242
    ori	$a1,$a1,0xffff
    and	$a0,$a0,$a1
    # Line 1243
    and	$s2,$s2,$at
    sw	$s2,4948($s0)
    # Line 1242
    sw	$a0,4944($s0)
    # Line 1244
    ld	$s0,24($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da9e130:
    # Line 952
    li	$v0,3512
    bne	$s2,$v0,.L0da9d870
    # Line 1255
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9d69c
    sd	$ra,32($sp)
.L0da9e144:
    # Line 952
    sltiu	$v1,$s2,16384
    bnez	$v1,.L0da9e438
    sltiu	$a1,$s2,16385
    beqz	$a1,.L0da9d870
    # Line 1255
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9db7c
    sd	$ra,32($sp)
.L0da9e160:
    # Line 952
    sltiu	$at,$s2,16390
    bnez	$at,.L0da9e44c
    sltiu	$v0,$s2,16391
    bnez	$v0,.L0da9db7c
    li	$v1,16391
    bne	$s2,$v1,.L0da9d870
    # Line 1255
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9db7c
    sd	$ra,32($sp)
.L0da9e184:
    # Line 954
    li	$at,25604
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    sw	$at,0($a1)
    b	.L0da9d6d0
    sw	$zero,0($a1)
.L0da9e19c:
    # Line 962
    li	$v1,0xc300
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 961
    lw	$at,1696($s0)
    # Line 962
    sw	$v1,0($a1)
    # Line 961
    li	$v0,-129
    and	$at,$at,$v0
    b	.L0da9d6d0
    sw	$at,1696($s0)
.L0da9e1c0:
    # Line 1215
    li	$a1,0xe804
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    # Line 1214
    lui	$v0,0x1
    # Line 1213
    lw	$a0,1696($s0)
    lui	$at,0x100
    nor	$at,$at,$zero
    and	$a0,$a0,$at
    sw	$a0,1696($s0)
    # Line 1214
    addu	$v0,$s0,$v0
    lw	$at,-25264($v0)
    # Line 1215
    sw	$a1,0($v1)
    # Line 1214
    li	$a0,-2
    and	$at,$at,$a0
    # Line 1215
    sw	$at,0($v1)
    b	.L0da9d6d0
    # Line 1214
    sw	$at,-25264($v0)
.L0da9e204:
    # Line 1039
    lui	$a2,0x1
    lw	$a0,1696($s0)
    lui	$a1,0x2
    nor	$a1,$a1,$zero
    and	$a0,$a0,$a1
    sw	$a0,1696($s0)
    addu	$s2,$a2,$s0
    lw	$a0,-30164($s2)
    beqzl	$a0,.L0da9e23c
    # Line 1040
    lbu	$v0,-25435($s2)
    # Line 1039
    lw	$at,196($a0)
    beqz	$at,.L0da9e754
    # Line 1040
    nop	# was lw $t9, -30792($gp) # &mgrTM_RefreshDim
.L0da9e238:
    lbu	$v0,-25435($s2)
.L0da9e23c:
    beqz	$v0,.L0da9d6d4
    # Line 1258
    li	$a0,2
    # Line 1040
    lw	$a0,-30164($s2)
    beqzl	$a0,.L0da9d6d4
    # Line 1258
    li	$a0,2
    # Line 1040
    lw	$v1,196($a0)
    lbu	$v1,179($v1)
    slti	$v1,$v1,3
    beqz	$v1,.L0da9d6d4
    # Line 1258
    li	$a0,2
    # Line 1041
    lw	$a1,1696($s0)
    and	$a1,$a1,$a2
    beqz	$a1,.L0da9e7b8
    # Line 1044
    li	$at,0x8a30
    addu	$at,$s0,$at
    b	.L0da9d6d0
    sw	$at,-30164($s2)
.L0da9e280:
    # Line 952
    li	$a0,0x8079
    sltu	$v0,$s2,$a0
    bnez	$v0,.L0da9e544
    sltu	$v1,$a0,$s2
    bnez	$v1,.L0da9d870
    # Line 1255
    nop	# was lw $t9, -27320($gp) # &__glSetError
    ld	$gp,16($sp)
    # Line 1251
    li	$at,-17
    # Line 1250
    lui	$a1,0x800
    lw	$a0,4944($s0)
    # Line 1251
    lw	$s2,4948($s0)
    # Line 1250
    nor	$a1,$a1,$zero
    and	$a0,$a0,$a1
    # Line 1251
    and	$s2,$s2,$at
    sw	$s2,4948($s0)
    # Line 1250
    sw	$a0,4944($s0)
    # Line 1252
    ld	$s0,24($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da9e2d0:
    # Line 1202
    li	$at,0x841c
    addu	$at,$at,$s0
    sb	$zero,0($at)
    # Line 1204
    lw	$a1,32096($s0)
    ori	$a1,$a1,0x2000
    sw	$a1,32096($s0)
    # Line 1203
    lw	$v0,32100($s0)
    lui	$v1,0x400
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    # Line 1205
    b	.L0da9d6d0
    # Line 1203
    sw	$v0,32100($s0)
.L0da9e300:
    # Line 952
    li	$v0,3057
    bne	$s2,$v0,.L0da9d86c
    # Line 997
    li	$v0,27396
    lui	$at,0x7
    ori	$at,$at,0x4080
    sw	$v0,0($at)
    # Line 996
    lw	$v1,1696($s0)
    # Line 997
    sw	$zero,0($at)
    # Line 996
    li	$a1,-5
    and	$v1,$v1,$a1
    # Line 997
    b	.L0da9d6d0
    # Line 996
    sw	$v1,1696($s0)
.L0da9e330:
    # Line 952
    li	$a0,0x8074
    sltu	$v0,$s2,$a0
    bnez	$v0,.L0da9e5b4
    sltu	$v1,$a0,$s2
    bnez	$v1,.L0da9d870
    # Line 1255
    nop	# was lw $t9, -27320($gp) # &__glSetError
    ld	$gp,16($sp)
    # Line 1231
    li	$at,-33
    # Line 1230
    lw	$a0,4944($s0)
    # Line 1231
    lw	$s2,4948($s0)
    # Line 1230
    li	$a1,-256
    and	$a0,$a0,$a1
    # Line 1231
    and	$s2,$s2,$at
    sw	$s2,4948($s0)
    # Line 1230
    sw	$a0,4944($s0)
    # Line 1232
    ld	$s0,24($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da9e37c:
    # Line 952
    li	$v0,3474
    bne	$s2,$v0,.L0da9d870
    # Line 1255
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9d71c
    sd	$ra,32($sp)
.L0da9e390:
    # Line 952
    li	$v1,3479
    bne	$s2,$v1,.L0da9d870
    # Line 1255
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9d71c
    sd	$ra,32($sp)
.L0da9e3a4:
    # Line 952
    sltiu	$a1,$s2,3508
    bnez	$a1,.L0da9e63c
    sltiu	$at,$s2,3509
    beqz	$at,.L0da9d870
    # Line 1255
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9d69c
    sd	$ra,32($sp)
.L0da9e3c0:
    # Line 952
    li	$v0,12288
    bne	$s2,$v0,.L0da9d870
    # Line 1255
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9d8a8
    # Line 1123
    li	$v0,0xa704
.L0da9e3d4:
    # Line 952
    li	$v1,0x8011
    bne	$s2,$v1,.L0da9d86c
    # Line 1182
    li	$v1,0x82e4
    addu	$v1,$v1,$s0
    # Line 1181
    lw	$a1,1696($s0)
    lui	$at,0x400
    nor	$at,$at,$zero
    and	$a1,$a1,$at
    sw	$a1,1696($s0)
    # Line 1182
    sb	$zero,0($v1)
    # Line 1184
    lw	$v0,32096($s0)
    ori	$v0,$v0,0x800
    sw	$v0,32096($s0)
    # Line 1183
    lw	$a1,32100($s0)
    lui	$at,0x10
    nor	$at,$at,$zero
    and	$a1,$a1,$at
    # Line 1185
    b	.L0da9d6d0
    # Line 1183
    sw	$a1,32100($s0)
.L0da9e420:
    # Line 1021
    li	$at,28164
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    sw	$at,0($a1)
    b	.L0da9d6d0
    sw	$zero,0($a1)
.L0da9e438:
    # Line 952
    li	$at,12293
    bne	$s2,$at,.L0da9d870
    # Line 1255
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9d8a8
    # Line 1123
    li	$v0,0xa704
.L0da9e44c:
    # Line 952
    sltiu	$v0,$s2,16389
    bnez	$v0,.L0da9e650
    sltiu	$v1,$s2,16390
    beqz	$v1,.L0da9d870
    # Line 1255
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9db7c
    sd	$ra,32($sp)
.L0da9e468:
    # Line 1164
    li	$v1,0x81dc
    addu	$v1,$v1,$s0
    # Line 1163
    lw	$a1,1696($s0)
    lui	$at,0x1000
    nor	$at,$at,$zero
    and	$a1,$a1,$at
    sw	$a1,1696($s0)
    # Line 1164
    sb	$zero,0($v1)
    # Line 1166
    lw	$v0,32096($s0)
    ori	$v0,$v0,0x40
    # Line 1165
    lw	$a1,32100($s0)
    # Line 1166
    sw	$v0,32096($s0)
    # Line 1165
    li	$at,-65
    and	$a1,$a1,$at
    # Line 1167
    b	.L0da9d6d0
    # Line 1165
    sw	$a1,32100($s0)
.L0da9e4a8:
    # Line 952
    li	$a0,0x8134
    sltu	$a1,$s2,$a0
    bnez	$a1,.L0da9e664
    sltu	$at,$a0,$s2
    bnez	$at,.L0da9d86c
    # Line 1073
    lui	$s2,0x1
    addu	$s2,$s2,$s0
    lw	$a0,-30164($s2)
    beqzl	$a0,.L0da9e4e0
    lbu	$v0,-25435($s2)
    lw	$at,196($a0)
    beqz	$at,.L0da9e804
    nop	# was lw $t9, -30792($gp) # &mgrTM_RefreshDim
.L0da9e4dc:
    lbu	$v0,-25435($s2)
.L0da9e4e0:
    beqz	$v0,.L0da9d6d4
    # Line 1258
    li	$a0,2
    # Line 1073
    lw	$a0,-30164($s2)
    beqzl	$a0,.L0da9d6d4
    # Line 1258
    li	$a0,2
    # Line 1073
    lw	$v1,196($a0)
    lbu	$v1,179($v1)
    slti	$v1,$v1,7
    beqz	$v1,.L0da9d6d4
    # Line 1258
    li	$a0,2
    # Line 1074
    lw	$a0,1696($s0)
    lui	$a1,0x4000
    and	$a1,$a0,$a1
    beqz	$a1,.L0da9e528
    # Line 1077
    li	$at,0x8d60
    addu	$at,$s0,$at
    sw	$at,-30164($s2)
    lw	$a0,1696($s0)
.L0da9e528:
    lui	$v0,0x2
    and	$v0,$a0,$v0
    beqz	$v0,.L0da9e780
    # Line 1079
    li	$v1,0x8bc8
    addu	$v1,$s0,$v1
    b	.L0da9d6d0
    sw	$v1,-30164($s2)
.L0da9e544:
    # Line 952
    li	$a1,0x8078
    bne	$s2,$a1,.L0da9d870
    # Line 1255
    nop	# was lw $t9, -27320($gp) # &__glSetError
    ld	$gp,16($sp)
    # Line 1247
    li	$v1,-5
    # Line 1246
    lui	$at,0x7f0
    lw	$s2,4944($s0)
    # Line 1247
    lw	$v0,4948($s0)
    # Line 1246
    nor	$at,$at,$zero
    and	$s2,$s2,$at
    # Line 1247
    and	$v0,$v0,$v1
    sw	$v0,4948($s0)
    # Line 1246
    sw	$s2,4944($s0)
    # Line 1248
    ld	$s0,24($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da9e588:
    # Line 1093
    li	$a0,3456
    sd	$ra,32($sp)
    # lw $t9, -31184($gp) # &__glMgrEvalDisable
    # Line 1092
    lw	$a1,1696($s0)
    lui	$a2,0x80
    nor	$a2,$a2,$zero
    and	$a1,$a1,$a2
    # Line 1093
    bal __glMgrEvalDisable
    # Line 1092
    sw	$a1,1696($s0)
    b	.L0da9d6d0
    ld	$ra,32($sp)
.L0da9e5b4:
    # Line 952
    li	$at,0x806f
    bne	$s2,$at,.L0da9d86c
    # Line 1055
    lui	$s2,0x1
    lw	$at,1696($s0)
    lui	$v0,0x4000
    nor	$v0,$v0,$zero
    and	$at,$at,$v0
    sw	$at,1696($s0)
    addu	$s2,$s2,$s0
    lw	$a0,-30164($s2)
    beqzl	$a0,.L0da9e5f4
    # Line 1056
    lbu	$a1,-25435($s2)
    # Line 1055
    lw	$v1,196($a0)
    beqz	$v1,.L0da9e818
    # Line 1056
    nop	# was lw $t9, -30792($gp) # &mgrTM_RefreshDim
.L0da9e5f0:
    lbu	$a1,-25435($s2)
.L0da9e5f4:
    beqz	$a1,.L0da9d6d4
    # Line 1258
    li	$a0,2
    # Line 1056
    lw	$a0,-30164($s2)
    beqzl	$a0,.L0da9d6d4
    # Line 1258
    li	$a0,2
    # Line 1056
    lw	$at,196($a0)
    lbu	$at,179($at)
    slti	$at,$at,5
    beqz	$at,.L0da9d6d4
    # Line 1258
    li	$a0,2
    # Line 1057
    lw	$a0,1696($s0)
    lui	$v0,0x2
    and	$v0,$a0,$v0
    beqz	$v0,.L0da9e79c
    # Line 1060
    li	$v1,0x8bc8
    addu	$v1,$s0,$v1
    b	.L0da9d6d0
    sw	$v1,-30164($s2)
.L0da9e63c:
    # Line 952
    li	$a1,3507
    bne	$s2,$a1,.L0da9d870
    # Line 1255
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9d69c
    sd	$ra,32($sp)
.L0da9e650:
    # Line 952
    li	$at,16388
    bne	$s2,$at,.L0da9d870
    # Line 1255
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da9db7c
    sd	$ra,32($sp)
.L0da9e664:
    # Line 952
    li	$v0,0x80d2
    bne	$s2,$v0,.L0da9d86c
    # Line 1207
    li	$v0,0x8458
    addu	$v0,$v0,$s0
    sb	$zero,0($v0)
    # Line 1209
    lw	$at,32096($s0)
    ori	$at,$at,0x4000
    sw	$at,32096($s0)
    # Line 1208
    lw	$v1,32100($s0)
    lui	$a1,0x800
    nor	$a1,$a1,$zero
    and	$v1,$v1,$a1
    # Line 1210
    b	.L0da9d6d0
    # Line 1208
    sw	$v1,32100($s0)
.L0da9e69c:
    # Line 1009
    b	.L0da9d6d0
    # Line 1008
    sw	$zero,32068($s0)
.L0da9e6a4:
    sd	$ra,32($sp)
    # Line 1199
    # lw $t9, -30604($gp) # &__glMgrUpdateTextureColorTableState
    # Line 1198
    li	$v1,0x83e0
    addu	$v1,$v1,$s0
    # Line 1199
    jal	__glMgrUpdateTextureColorTableState
    # Line 1198
    sb	$zero,0($v1)
    b	.L0da9d6d0
    ld	$ra,32($sp)
.L0da9e6c4:
    ld	$gp,16($sp)
    # Line 1235
    li	$at,-2
    # Line 1234
    lw	$a0,4944($s0)
    # Line 1235
    lw	$s2,4948($s0)
    # Line 1234
    li	$a1,-3841
    and	$a0,$a0,$a1
    # Line 1235
    and	$s2,$s2,$at
    sw	$s2,4948($s0)
    # Line 1234
    sw	$a0,4944($s0)
    # Line 1236
    ld	$s0,24($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da9e6f8:
    ld	$gp,16($sp)
    # Line 965
    ld	$s0,24($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da9e70c:
    # Line 979
    move	$a1,$zero
    move	$a0,$s0
    # lw $t9, -30728($gp) # &mgrTM_SendTexmode1
    # Line 978
    lui	$v1,0x1
    addu	$v1,$s0,$v1
    lw	$v0,-26944($v1)
    lui	$a2,0x2
    nor	$a2,$a2,$zero
    and	$v0,$v0,$a2
    # Line 979
    jal	mgrTM_SendTexmode1
    # Line 978
    sw	$v0,-26944($v1)
    # Line 980
    li	$ra,26628
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    sw	$ra,0($a1)
    ld	$ra,32($sp)
    b	.L0da9d6d0
    sw	$zero,0($a1)
.L0da9e754:
    sd	$ra,32($sp)
    # Line 1040
    jalr	$t9
    nop
    lui	$a2,0x1
    b	.L0da9e238
    ld	$ra,32($sp)
.L0da9e76c:
    sd	$ra,32($sp)
    # Line 1028
    jalr	$t9
    nop
    b	.L0da9de00
    ld	$ra,32($sp)
.L0da9e780:
    lui	$at,0x1
    # Line 1079
    and	$at,$at,$a0
    beqz	$at,.L0da9e82c
    # Line 1081
    li	$v0,0x8a30
    addu	$v0,$s0,$v0
    b	.L0da9d6d0
    sw	$v0,-30164($s2)
.L0da9e79c:
    lui	$v1,0x1
    # Line 1060
    and	$v1,$v1,$a0
    beqz	$v1,.L0da9e87c
    # Line 1062
    li	$a1,0x8a30
    addu	$a1,$s0,$a1
    b	.L0da9d6d0
    sw	$a1,-30164($s2)
.L0da9e7b8:
    # Line 1047
    move	$a3,$zero
    move	$a2,$zero
    move	$a1,$zero
    # lw $t9, -30688($gp) # &__glMgrSaveTexmode
    li	$a0,1
    sd	$ra,32($sp)
    jal	__glMgrSaveTexmode
    # Line 1046
    sw	$zero,-30164($s2)
    # Line 1050
    sw	$zero,-28088($s2)
    # Line 1049
    li	$ra,3072
    # Line 1048
    li	$v0,24324
    mtc1	$zero,$f1
    lui	$at,0x7
    ori	$at,$at,0x4080
    sw	$v0,0($at)
    swc1	$f1,0($at)
    # Line 1049
    sw	$ra,0($at)
    b	.L0da9d6d0
    ld	$ra,32($sp)
.L0da9e804:
    sd	$ra,32($sp)
    # Line 1073
    jalr	$t9
    nop
    b	.L0da9e4dc
    ld	$ra,32($sp)
.L0da9e818:
    sd	$ra,32($sp)
    # Line 1056
    jalr	$t9
    nop
    b	.L0da9e5f0
    ld	$ra,32($sp)
.L0da9e82c:
    # Line 1084
    move	$a3,$zero
    move	$a2,$zero
    move	$a1,$zero
    # lw $t9, -30688($gp) # &__glMgrSaveTexmode
    li	$a0,1
    sd	$ra,32($sp)
    jal	__glMgrSaveTexmode
    # Line 1083
    sw	$zero,-30164($s2)
    # Line 1087
    sw	$zero,-28088($s2)
    # Line 1086
    li	$v0,3072
    # Line 1085
    li	$ra,24324
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sw	$ra,0($v1)
    ld	$ra,32($sp)
    lui	$a1,0xe
    ori	$a1,$a1,0x100
    sw	$a1,0($v1)
    b	.L0da9d6d0
    # Line 1086
    sw	$v0,0($v1)
.L0da9e87c:
    # Line 1065
    move	$a3,$zero
    move	$a2,$zero
    move	$a1,$zero
    # lw $t9, -30688($gp) # &__glMgrSaveTexmode
    li	$a0,1
    sd	$ra,32($sp)
    jal	__glMgrSaveTexmode
    # Line 1064
    sw	$zero,-30164($s2)
    # Line 1068
    sw	$zero,-28088($s2)
    # Line 1067
    li	$ra,3072
    # Line 1066
    li	$v0,24324
    mtc1	$zero,$f2
    lui	$at,0x7
    ori	$at,$at,0x4080
    sw	$v0,0($at)
    swc1	$f2,0($at)
    # Line 1067
    sw	$ra,0($at)
    b	.L0da9d6d0
    ld	$ra,32($sp)
.end __glMgrim_Disable

# Function: __glMgrim_ClearColor
# Declared: Line 1271 (Source lines: 1272-1294)
# Address: 0x0da9e8c8 - 0x0da9e9d0 (Size: 264 bytes, Frame: 48)
.globl __glMgrim_ClearColor
.ent __glMgrim_ClearColor
__glMgrim_ClearColor:
    # Line 1272
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x16
    addiu	$v1,$v1,-560
    beq	$at,$v0,.L0da9e9b0
    addu	$gp,$t9,$v1
    # Line 1279
    mtc1	$zero,$f5
    c.lt.s	$f12,$f5
    lw	$a0,__glCurrentContext
    # Line 1290
    li	$at,0xba10
    # Line 1279
    bc1f	.L0da9e904
    lwc1	$f4,3284($a0)
    # Line 1281
    mov.s	$f12,$f5
.L0da9e904:
    c.lt.s	$f4,$f12
    nop
    bc1fl	.L0da9e91c
    # Line 1282
    c.lt.s	$f13,$f5
    mov.s	$f12,$f4
    c.lt.s	$f13,$f5
.L0da9e91c:
    nop
    bc1fl	.L0da9e930
    # Line 1283
    c.lt.s	$f4,$f13
    mov.s	$f13,$f5
    c.lt.s	$f4,$f13
.L0da9e930:
    nop
    bc1fl	.L0da9e944
    # Line 1284
    c.lt.s	$f14,$f5
    mov.s	$f13,$f4
    c.lt.s	$f14,$f5
.L0da9e944:
    nop
    bc1fl	.L0da9e958
    # Line 1285
    c.lt.s	$f4,$f14
    mov.s	$f14,$f5
    c.lt.s	$f4,$f14
.L0da9e958:
    nop
    bc1fl	.L0da9e96c
    # Line 1286
    c.lt.s	$f15,$f5
    mov.s	$f14,$f4
    c.lt.s	$f15,$f5
.L0da9e96c:
    nop
    bc1fl	.L0da9e980
    # Line 1287
    c.lt.s	$f4,$f15
    mov.s	$f15,$f5
    c.lt.s	$f4,$f15
.L0da9e980:
    ld	$gp,0($sp)
    # Line 1290
    lui	$a1,0x7
    # Line 1287
    bc1f	.L0da9e994
    # Line 1290
    ori	$a1,$a1,0x4080
    # Line 1288
    mov.s	$f15,$f4
.L0da9e994:
    # Line 1294
    addiu	$sp,$sp,48
    # Line 1290
    sw	$at,0($a1)
    swc1	$f12,0($a1)
    # Line 1291
    swc1	$f13,0($a1)
    # Line 1292
    swc1	$f14,0($a1)
    # Line 1294
    jr	$ra
    # Line 1293
    swc1	$f15,0($a1)
.L0da9e9b0:
    # Line 1277
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_ClearColor

# Function: __glMgrim_ClearAccum
# Declared: Line 1298 (Source lines: 1299-1320)
# Address: 0x0da9e9d0 - 0x0da9ead8 (Size: 264 bytes, Frame: 48)
.globl __glMgrim_ClearAccum
.ent __glMgrim_ClearAccum
__glMgrim_ClearAccum:
    # Line 1299
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x16
    addiu	$v1,$v1,-824
    beq	$at,$v0,.L0da9eab8
    addu	$gp,$t9,$v1
    # Line 1306
    lwc1	$f5,_lit_bf800000
    c.lt.s	$f12,$f5
    lw	$a0,__glCurrentContext
    # Line 1316
    li	$at,0xbb10
    # Line 1306
    bc1f	.L0da9ea0c
    lwc1	$f4,3284($a0)
    # Line 1307
    mov.s	$f12,$f5
.L0da9ea0c:
    c.lt.s	$f4,$f12
    nop
    bc1fl	.L0da9ea24
    # Line 1308
    c.lt.s	$f13,$f5
    mov.s	$f12,$f4
    c.lt.s	$f13,$f5
.L0da9ea24:
    nop
    bc1fl	.L0da9ea38
    # Line 1309
    c.lt.s	$f4,$f13
    mov.s	$f13,$f5
    c.lt.s	$f4,$f13
.L0da9ea38:
    nop
    bc1fl	.L0da9ea4c
    # Line 1310
    c.lt.s	$f14,$f5
    mov.s	$f13,$f4
    c.lt.s	$f14,$f5
.L0da9ea4c:
    nop
    bc1fl	.L0da9ea60
    # Line 1311
    c.lt.s	$f4,$f14
    mov.s	$f14,$f5
    c.lt.s	$f4,$f14
.L0da9ea60:
    nop
    bc1fl	.L0da9ea74
    # Line 1312
    c.lt.s	$f15,$f5
    mov.s	$f14,$f4
    c.lt.s	$f15,$f5
.L0da9ea74:
    nop
    bc1fl	.L0da9ea88
    # Line 1313
    c.lt.s	$f4,$f15
    mov.s	$f15,$f5
    c.lt.s	$f4,$f15
.L0da9ea88:
    ld	$gp,0($sp)
    # Line 1316
    lui	$a1,0x7
    # Line 1313
    bc1f	.L0da9ea9c
    # Line 1316
    ori	$a1,$a1,0x4080
    # Line 1314
    mov.s	$f15,$f4
.L0da9ea9c:
    # Line 1320
    addiu	$sp,$sp,48
    # Line 1316
    sw	$at,0($a1)
    swc1	$f12,0($a1)
    # Line 1317
    swc1	$f13,0($a1)
    # Line 1318
    swc1	$f14,0($a1)
    # Line 1320
    jr	$ra
    # Line 1319
    swc1	$f15,0($a1)
.L0da9eab8:
    # Line 1303
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_ClearAccum

# Function: __glMgrim_ClearDepth
# Declared: Line 1332 (Source lines: 1333-1346)
# Address: 0x0da9ead8 - 0x0da9eb6c (Size: 148 bytes, Frame: 32)
.globl __glMgrim_ClearDepth
.ent __glMgrim_ClearDepth
__glMgrim_ClearDepth:
    # Line 1333
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x16
    addiu	$v1,$v1,-1088
    beq	$at,$v0,.L0da9eb4c
    addu	$gp,$t9,$v1
    # Line 1337
    dmtc1	$zero,$f4
    c.lt.d	$f12,$f4
    # Line 1345
    ldc1	$f0,_lit8_416fffffe0000000
    # Line 1337
    bc1f	.L0da9eb10
    # Line 1345
    li	$at,0xbc04
    # Line 1340
    mov.d	$f12,$f4
.L0da9eb10:
    ldc1	$f4,_lit8_3ff0000000000000
    c.lt.d	$f4,$f12
    nop
    bc1f	.L0da9eb28
    ld	$gp,0($sp)
    # Line 1341
    mov.d	$f12,$f4
.L0da9eb28:
    # Line 1345
    lui	$a1,0x7
    mul.d	$f0,$f12,$f0
    trunc.w.d	$f0,$f0
    # Line 1346
    addiu	$sp,$sp,32
    # Line 1345
    ori	$a1,$a1,0x4080
    mfc1	$a0,$f0
    sw	$at,0($a1)
    # Line 1346
    jr	$ra
    # Line 1345
    sw	$a0,0($a1)
.L0da9eb4c:
    # Line 1337
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_ClearDepth

# Function: __glMgrim_ClearIndex
# Declared: Line 1357 (Source lines: 1358-1364)
# Address: 0x0da9eb6c - 0x0da9ec04 (Size: 152 bytes, Frame: 32)
.globl __glMgrim_ClearIndex
.ent __glMgrim_ClearIndex
__glMgrim_ClearIndex:
    # Line 1358
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x16
    addiu	$v1,$v1,-1236
    beq	$at,$v0,.L0da9ebe4
    addu	$gp,$t9,$v1
    # Line 1363
    lui	$a0,0x7
    # Line 1362
    lwc1	$f1,_lit_41800000
    mul.s	$f1,$f12,$f1
    lw	$at,__glCurrentContext
    trunc.w.s	$f1,$f1
    lw	$at,30788($at)
    mfc1	$a1,$f1
    sll	$at,$at,0x4
    ori	$at,$at,0xf
    and	$a1,$a1,$at
    mtc1	$a1,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f1,_lit_3d800000
    mul.s	$f0,$f0,$f1
    # Line 1363
    ori	$a0,$a0,0x4080
    ld	$gp,0($sp)
    # Line 1364
    addiu	$sp,$sp,32
    # Line 1363
    li	$a1,0xbd04
    sw	$a1,0($a0)
    # Line 1364
    jr	$ra
    # Line 1363
    swc1	$f0,0($a0)
.L0da9ebe4:
    # Line 1360
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_ClearIndex

# Function: __glMgrim_ClearStencil
# Declared: Line 1375 (Source lines: 1376-1381)
# Address: 0x0da9ec04 - 0x0da9ec78 (Size: 116 bytes, Frame: 32)
.globl __glMgrim_ClearStencil
.ent __glMgrim_ClearStencil
__glMgrim_ClearStencil:
    # Line 1378
    lw	$a2,__glCurrentContext
    li	$a3,1
    # Line 1376
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 1378
    lw	$at,__glBeginMode
    # Line 1376
    lui	$v0,0x16
    addiu	$v0,$v0,-1388
    # Line 1378
    beq	$at,$a3,.L0da9ec58
    # Line 1376
    addu	$gp,$t9,$v0
    # Line 1380
    li	$a1,0xbe04
    lw	$v1,3132($a2)
    ld	$gp,0($sp)
    # Line 1381
    addiu	$sp,$sp,32
    # Line 1380
    sllv	$v1,$a3,$v1
    addiu	$v1,$v1,-1
    and	$v1,$v1,$a0
    lui	$a0,0x7
    ori	$a0,$a0,0x4080
    sw	$a1,0($a0)
    # Line 1381
    jr	$ra
    # Line 1380
    sw	$v1,0($a0)
.L0da9ec58:
    # Line 1378
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_ClearStencil

# Function: __glMgrim_ColorMaterial
# Declared: Line 1392 (Source lines: 1393-1422)
# Address: 0x0da9ec78 - 0x0da9ed8c (Size: 276 bytes, Frame: 32)
.globl __glMgrim_ColorMaterial
.ent __glMgrim_ColorMaterial
__glMgrim_ColorMaterial:
    # Line 1393
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x16
    addiu	$v1,$v1,-1504
    beq	$at,$v0,.L0da9ed6c
    addu	$gp,$t9,$v1
    # Line 1395
    li	$a2,4608
    beq	$a1,$a2,.L0da9ece4
    li	$at,4609
    beq	$a1,$at,.L0da9ece4
    li	$v0,4610
    beq	$a1,$v0,.L0da9ece4
    li	$v1,5632
    beq	$a1,$v1,.L0da9ece4
    li	$a2,5634
    beq	$a1,$a2,.L0da9ece8
    # Line 1408
    li	$at,1028
    # Line 1405
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1406
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da9ece4:
    # Line 1408
    li	$at,1028
.L0da9ece8:
    beq	$a0,$at,.L0da9ed3c
    li	$v0,1029
    beq	$a0,$v0,.L0da9ed54
    li	$v1,1032
    beq	$a0,$v1,.L0da9ed1c
    # Line 1419
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1420
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da9ed1c:
    # Line 1416
    li	$at,0xc104
    lui	$a2,0x7
    ori	$a2,$a2,0x4080
    sw	$at,0($a2)
    sw	$a1,0($a2)
.L0da9ed30:
    ld	$gp,0($sp)
    # Line 1422
    jr	$ra
    addiu	$sp,$sp,32
.L0da9ed3c:
    # Line 1410
    li	$v0,0xbf04
    lui	$at,0x7
    ori	$at,$at,0x4080
    sw	$v0,0($at)
    b	.L0da9ed30
    sw	$a1,0($at)
.L0da9ed54:
    # Line 1413
    li	$v1,0xc004
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    sw	$v1,0($v0)
    b	.L0da9ed30
    sw	$a1,0($v0)
.L0da9ed6c:
    # Line 1395
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_ColorMaterial

# Function: __glMgrim_Hint
# Declared: Line 1425 (Source lines: 1426-1468)
# Address: 0x0da9ed8c - 0x0da9eed4 (Size: 328 bytes, Frame: 32)
.globl __glMgrim_Hint
.ent __glMgrim_Hint
__glMgrim_Hint:
    # Line 1428
    li	$v0,1
    # Line 1426
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$v1,0x16
    addiu	$v1,$v1,-1780
    # Line 1428
    lw	$at,__glBeginMode
    lw	$a4,__glCurrentContext
    # Line 1426
    addu	$gp,$t9,$v1
    # Line 1428
    beq	$at,$v0,.L0da9eeb4
    move	$a3,$a4
    li	$a2,4352
    beq	$a1,$a2,.L0da9edf0
    li	$at,4353
    beq	$a1,$at,.L0da9edf0
    li	$v0,4354
    beq	$a1,$v0,.L0da9edf4
    # Line 1442
    li	$v1,3152
    # Line 1438
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1439
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da9edf0:
    # Line 1442
    li	$v1,3152
.L0da9edf4:
    beq	$a0,$v1,.L0da9ee50
    li	$a2,3153
    beq	$a0,$a2,.L0da9ee58
    li	$at,3154
    beq	$a0,$at,.L0da9ee74
    li	$v0,3155
    beq	$a0,$v0,.L0da9ee90
    li	$v1,3156
    beq	$a0,$v1,.L0da9eeac
    li	$a2,0x812e
    beq	$a0,$a2,.L0da9ee40
    # Line 1465
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1466
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da9ee40:
    # Line 1462
    sw	$a1,1816($a4)
.L0da9ee44:
    ld	$gp,0($sp)
    # Line 1468
    jr	$ra
    addiu	$sp,$sp,32
.L0da9ee50:
    # Line 1445
    b	.L0da9ee44
    # Line 1444
    sw	$a1,1796($a3)
.L0da9ee58:
    # Line 1448
    li	$v0,2
    # Line 1447
    sw	$a1,1800($a3)
    # Line 1448
    sw	$v0,__glBeginMode
    lw	$at,11828($a3)
    ori	$at,$at,0x8
    # Line 1449
    b	.L0da9ee44
    # Line 1448
    sw	$at,11828($a3)
.L0da9ee74:
    # Line 1452
    li	$a2,2
    # Line 1451
    sw	$a1,1804($a3)
    # Line 1452
    sw	$a2,__glBeginMode
    lw	$v1,11828($a3)
    ori	$v1,$v1,0x2
    # Line 1453
    b	.L0da9ee44
    # Line 1452
    sw	$v1,11828($a3)
.L0da9ee90:
    # Line 1455
    sw	$a1,1808($a3)
    # Line 1456
    li	$v0,2
    sw	$v0,__glBeginMode
    lw	$at,11828($a3)
    ori	$at,$at,0x4
    # Line 1457
    b	.L0da9ee44
    # Line 1456
    sw	$at,11828($a3)
.L0da9eeac:
    # Line 1460
    b	.L0da9ee44
    # Line 1459
    sw	$a1,1812($a4)
.L0da9eeb4:
    # Line 1428
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_Hint

# Function: __glMgrim_SoftPushAttrib
# Declared: Line 1471 (Source lines: 1471-1772)
# Address: 0x0da9eed4 - 0x0da9fefc (Size: 4136 bytes, Frame: 144)
.globl __glMgrim_SoftPushAttrib
.ent __glMgrim_SoftPushAttrib
__glMgrim_SoftPushAttrib:
    # Line 1476
    li	$v0,1
    # Line 1471
    addiu	$sp,$sp,-144
    sd	$s1,56($sp)
    # Line 1476
    lw	$s1,__glCurrentContext
    sd	$s2,64($sp)
    # Line 1471
    move	$s2,$a0
    sd	$gp,72($sp)
    # Line 1476
    lw	$at,__glBeginMode
    # Line 1471
    lui	$v1,0x16
    addiu	$v1,$v1,-2108
    # Line 1476
    beq	$at,$v0,.L0da9fed4
    # Line 1471
    addu	$gp,$t9,$v1
    sd	$s3,96($sp)
    # Line 1480
    lui	$s3,0x1
    addu	$s3,$s3,$s1
    sd	$s4,88($sp)
    lw	$a4,3480($s1)
    lw	$a3,12728($s1)
    # Line 1479
    lw	$s4,12732($s1)
    # Line 1480
    sll	$a4,$a4,0x2
    addu	$a3,$a3,$a4
    sltu	$a3,$s4,$a3
    beqz	$a3,.L0da9fc94
    lw	$a0,-28048($s3)
    sd	$s0,104($sp)
    # Line 1483
    lw	$s0,0($s4)
    beqzl	$s0,.L0da9fc50
    sd	$a0,112($sp)
.L0da9ef44:
    # Line 1495
    sw	$s2,0($s0)
    # Line 1496
    ld	$v1,1696($s1)
    sd	$v1,1544($s0)
    ld	$at,1704($s1)
    # Line 1497
    addiu	$a3,$s4,4
    # Line 1496
    sd	$at,1552($s0)
    ld	$s4,88($sp)
    ld	$a4,1712($s1)
    # Line 1498
    addiu	$v1,$a0,4
    andi	$at,$s2,0x200
    # Line 1496
    sd	$a4,1560($s0)
    # Line 1497
    sw	$a3,12732($s1)
    # Line 1498
    beqz	$at,.L0da9efa0
    sw	$v1,-28048($s3)
    # Line 1501
    lwc1	$f3,1552($s1)
    swc1	$f3,1400($s0)
    lwc1	$f2,1556($s1)
    swc1	$f2,1404($s0)
    lwc1	$f1,1560($s1)
    swc1	$f1,1408($s0)
    lwc1	$f0,1564($s1)
    ld	$s4,88($sp)
    swc1	$f0,1412($s0)
.L0da9efa0:
    andi	$a3,$s2,0x4000
    beqz	$a3,.L0da9f170
    # Line 1507
    li	$a0,9
    move	$v0,$zero
    addiu	$a2,$s0,1568
    addiu	$a1,$s1,1720
.L0da9efb8:
    addu	$at,$v0,$a2
    addu	$a4,$v0,$a1
    addiu	$v0,$v0,8
    ld	$a4,0($a4)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da9efb8
    sd	$a4,0($at)
    # Line 1509
    li	$a0,3008
    sd	$ra,80($sp)
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    # Line 1507
    addu	$a5,$v0,$a1
    lw	$a5,0($a5)
    addu	$a6,$v0,$a2
    # Line 1509
    jal	__glMgrim_IsEnabled
    # Line 1507
    sw	$a5,0($a6)
    # Line 1509
    beqz	$v0,.L0da9fc00
    lw	$a0,1544($s0)
    ori	$at,$a0,0x1
    sw	$at,1544($s0)
.L0da9f004:
    # Line 1510
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,1568
    jal	__glMgrim_GetIntegerv
    li	$a0,3009
    # Line 1512
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s0,1572
    jal	__glMgrim_GetFloatv
    li	$a0,3010
    # Line 1515
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3042
    beqz	$v0,.L0da9fc10
    lw	$a0,1544($s0)
    ori	$v1,$a0,0x2
    sw	$v1,1544($s0)
.L0da9f040:
    # Line 1516
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,1576
    jal	__glMgrim_GetIntegerv
    li	$a0,3041
    # Line 1518
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,1580
    jal	__glMgrim_GetIntegerv
    li	$a0,3040
    # Line 1520
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,1584
    jal	__glMgrim_GetIntegerv
    li	$a0,0x8009
    # Line 1523
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3024
    beqz	$v0,.L0da9fc20
    lw	$a0,1544($s0)
    ori	$a3,$a0,0x8
    sw	$a3,1544($s0)
.L0da9f08c:
    # Line 1525
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,1640
    jal	__glMgrim_GetIntegerv
    li	$a0,3073
    # Line 1529
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    # Line 1527
    lw	$a4,1788($s1)
    # Line 1529
    li	$a0,3057
    jal	__glMgrim_IsEnabled
    # Line 1527
    sw	$a4,1636($s0)
    # Line 1529
    beqz	$v0,.L0da9fc30
    lw	$a0,1544($s0)
    ori	$at,$a0,0x4
    sw	$at,1544($s0)
.L0da9f0c0:
    # Line 1530
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3058
    beqz	$v0,.L0da9fc40
    lw	$a0,1548($s0)
    ori	$v1,$a0,0x800
    sw	$v1,1548($s0)
.L0da9f0dc:
    # Line 1531
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,1604
    jal	__glMgrim_GetIntegerv
    li	$a0,3056
    # Line 1534
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$sp,0
    jal	__glMgrim_GetFloatv
    li	$a0,3106
    # Line 1535
    lwc1	$f7,0($sp)
    swc1	$f7,1608($s0)
    # Line 1536
    lwc1	$f6,4($sp)
    swc1	$f6,1612($s0)
    # Line 1537
    lwc1	$f5,8($sp)
    # Line 1540
    addiu	$a1,$s0,1624
    # Line 1537
    swc1	$f5,1616($s0)
    # Line 1540
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    # Line 1538
    lwc1	$f4,12($sp)
    # Line 1540
    li	$a0,3104
    jal	__glMgrim_GetFloatv
    # Line 1538
    swc1	$f4,1620($s0)
    # Line 1543
    # lw $t9, -30868($gp) # &__glMgrim_GetBooleanv
    addiu	$a1,$sp,16
    jal	__glMgrim_GetBooleanv
    li	$a0,3107
    # Line 1544
    lbu	$a5,16($sp)
    sb	$a5,1632($s0)
    # Line 1545
    lbu	$a4,17($sp)
    sb	$a4,1633($s0)
    # Line 1546
    lbu	$a3,18($sp)
    # Line 1549
    addiu	$a1,$s0,1628
    # Line 1546
    sb	$a3,1634($s0)
    # Line 1549
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    # Line 1547
    lbu	$a2,19($sp)
    # Line 1549
    li	$a0,3105
    jal	__glMgrim_GetIntegerv
    # Line 1547
    sb	$a2,1635($s0)
    ld	$ra,80($sp)
.L0da9f170:
    # Line 1549
    andi	$at,$s2,0x1
    beqz	$at,.L0da9f1c4
    # Line 1554
    li	$v0,34
    move	$a0,$zero
    addiu	$a2,$s0,8
    addiu	$a1,$s1,160
.L0da9f188:
    addu	$a3,$a0,$a2
    addu	$v1,$a0,$a1
    addiu	$a0,$a0,8
    ld	$v1,0($v1)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0da9f188
    sd	$v1,0($a3)
    # Line 1556
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s0,208
    sd	$ra,80($sp)
    jal	__glMgrim_GetFloatv
    li	$a0,2820
    ld	$ra,80($sp)
    # Line 1558
    addiu	$a3,$s1,360
    sw	$a3,68($s0)
.L0da9f1c4:
    andi	$a4,$s2,0x100
    beqz	$a4,.L0da9f238
    # Line 1570
    andi	$v1,$s2,0x2000
    # Line 1563
    ld	$a6,1536($s1)
    # Line 1565
    li	$a0,2929
    # Line 1563
    sd	$a6,1384($s0)
    # Line 1565
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    # Line 1563
    ld	$a5,1544($s1)
    sd	$ra,80($sp)
    # Line 1565
    jal	__glMgrim_IsEnabled
    # Line 1563
    sd	$a5,1392($s0)
    # Line 1565
    beqz	$v0,.L0da9fdb0
    lw	$a0,1544($s0)
    ori	$at,$a0,0x10
    sw	$at,1544($s0)
.L0da9f200:
    # Line 1566
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,1384
    jal	__glMgrim_GetIntegerv
    li	$a0,2932
    # Line 1568
    # lw $t9, -30868($gp) # &__glMgrim_GetBooleanv
    addiu	$a1,$s0,1388
    jal	__glMgrim_GetBooleanv
    li	$a0,2930
    # Line 1570
    # lw $t9, -30884($gp) # &__glMgrim_GetDoublev
    addiu	$a1,$s0,1392
    jal	__glMgrim_GetDoublev
    li	$a0,2931
    ld	$ra,80($sp)
    andi	$v1,$s2,0x2000
.L0da9f238:
    beqz	$v1,.L0da9f3d4
    # Line 1575
    nop	# was lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    sd	$ra,80($sp)
    jal	__glMgrim_IsEnabled
    li	$a0,3008
    beqz	$v0,.L0da9fcc4
    lw	$a0,1544($s0)
    ori	$a3,$a0,0x1
    sw	$a3,1544($s0)
.L0da9f25c:
    # Line 1576
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3042
    beqz	$v0,.L0da9fcd4
    lw	$a0,1544($s0)
    ori	$a4,$a0,0x2
    sw	$a4,1544($s0)
.L0da9f278:
    # Line 1577
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2929
    beqz	$v0,.L0da9fce4
    lw	$a0,1544($s0)
    ori	$at,$a0,0x10
    sw	$at,1544($s0)
.L0da9f294:
    # Line 1578
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3024
    beqz	$v0,.L0da9fcf4
    lw	$a0,1544($s0)
    ori	$v1,$a0,0x8
    sw	$v1,1544($s0)
.L0da9f2b0:
    # Line 1579
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2848
    beqz	$v0,.L0da9fd04
    lw	$a0,1544($s0)
    ori	$a3,$a0,0x200
    sw	$a3,1544($s0)
.L0da9f2cc:
    # Line 1580
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3057
    beqz	$v0,.L0da9fd14
    lw	$a0,1544($s0)
    ori	$a4,$a0,0x4
    sw	$a4,1544($s0)
.L0da9f2e8:
    # Line 1581
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2832
    beqz	$v0,.L0da9fd24
    lw	$a0,1544($s0)
    ori	$at,$a0,0x400
    sw	$at,1544($s0)
.L0da9f304:
    # Line 1582
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3089
    beqz	$v0,.L0da9fd34
    lw	$a0,1544($s0)
    ori	$v1,$a0,0x4000
    sw	$v1,1544($s0)
.L0da9f320:
    # Line 1583
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2960
    beqz	$v0,.L0da9fd44
    lw	$a0,1544($s0)
    ori	$a3,$a0,0x8000
    sw	$a3,1544($s0)
.L0da9f33c:
    # Line 1584
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,0x8012
    beqz	$v0,.L0da9fd58
    lw	$a0,1544($s0)
    lui	$a4,0x800
    or	$a4,$a0,$a4
    sw	$a4,1544($s0)
.L0da9f35c:
    # Line 1585
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,0x8037
    beqz	$v0,.L0da9fd6c
    lw	$a0,1544($s0)
    lui	$at,0x100
    or	$at,$a0,$at
    sw	$at,1544($s0)
.L0da9f37c:
    # Line 1586
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3058
    beqz	$v0,.L0da9fd80
    lw	$a0,1548($s0)
    ori	$v1,$a0,0x800
    sw	$v1,1548($s0)
.L0da9f398:
    # Line 1587
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,10754
    beqz	$v0,.L0da9fd90
    lw	$a0,1548($s0)
    ori	$a3,$a0,0x400
    sw	$a3,1548($s0)
.L0da9f3b4:
    # Line 1588
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,10753
    lw	$a0,1548($s0)
    beqz	$v0,.L0da9fda0
    ld	$ra,80($sp)
    ori	$a4,$a0,0x200
    sw	$a4,1548($s0)
.L0da9f3d4:
    lui	$at,0x1
    and	$at,$at,$s2
    beqz	$at,.L0da9f418
    # Line 1592
    andi	$a4,$s2,0x80
    ld	$a3,1824($s1)
    sd	$a3,1672($s0)
    ld	$v1,1832($s1)
    sd	$v1,1680($s0)
    ld	$at,1840($s1)
    sd	$at,1688($s0)
    ld	$a4,1848($s1)
    sd	$a4,1696($s0)
    ld	$a3,1856($s1)
    sd	$a3,1704($s0)
    ld	$v1,1864($s1)
    sd	$v1,1712($s0)
    andi	$a4,$s2,0x80
.L0da9f418:
    beqz	$a4,.L0da9f448
    # Line 1596
    li	$v0,10
    move	$a0,$zero
    addiu	$a1,$s0,1340
    addiu	$a2,$s1,1492
.L0da9f42c:
    addu	$v1,$a0,$a1
    addu	$at,$a0,$a2
    addiu	$a0,$a0,4
    lw	$at,0($at)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0da9f42c
    sw	$at,0($v1)
.L0da9f448:
    andi	$v1,$s2,0x8000
    beqz	$v1,.L0da9f490
    # Line 1600
    andi	$v1,$s2,0x40
    lw	$at,1796($s1)
    sw	$at,1644($s0)
    lw	$a4,1800($s1)
    sw	$a4,1648($s0)
    lw	$a3,1804($s1)
    sw	$a3,1652($s0)
    lw	$v1,1808($s1)
    sw	$v1,1656($s0)
    lw	$at,1812($s1)
    sw	$at,1660($s0)
    lw	$a4,1816($s1)
    sw	$a4,1664($s0)
    lw	$a3,1820($s1)
    sw	$a3,1668($s0)
    andi	$v1,$s2,0x40
.L0da9f490:
    beqz	$v1,.L0da9f580
    # Line 1613
    andi	$a3,$s2,0x4
    # Line 1605
    lw	$a4,1296($s1)
    # Line 1603
    lw	$at,3328($s1)
    # Line 1605
    sw	$a4,1144($s0)
    # Line 1606
    lw	$a3,1300($s1)
    sw	$a3,1148($s0)
    # Line 1607
    lw	$a2,1304($s1)
    sw	$a2,1152($s0)
    # Line 1608
    lw	$a1,1308($s1)
    sw	$a1,1156($s0)
    lw	$a0,1312($s1)
    sw	$a0,1160($s0)
    # Line 1609
    li	$v0,10
    # Line 1608
    lw	$v1,1316($s1)
    # Line 1603
    sll	$s4,$at,0x3
    subu	$s4,$s4,$at
    # Line 1608
    sw	$v1,1164($s0)
    # Line 1603
    sll	$s4,$s4,0x2
    # Line 1608
    lw	$v1,1320($s1)
    # Line 1603
    addu	$s4,$s4,$at
    sll	$s4,$s4,0x2
    # Line 1608
    sw	$v1,1168($s0)
    # Line 1609
    addiu	$a2,$s0,1176
    # Line 1608
    lw	$a3,1324($s1)
    # Line 1609
    addiu	$a1,$s1,1328
    move	$a0,$zero
    # Line 1608
    sw	$a3,1172($s0)
.L0da9f500:
    # Line 1609
    addu	$v1,$a0,$a2
    addu	$at,$a0,$a1
    addiu	$a0,$a0,8
    ld	$at,0($at)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0da9f500
    sd	$at,0($v1)
    # Line 1610
    li	$a0,10
    move	$v0,$zero
    addiu	$a1,$s0,1256
    addiu	$a2,$s1,1408
.L0da9f52c:
    addu	$a3,$v0,$a1
    addu	$v1,$v0,$a2
    addiu	$v0,$v0,8
    ld	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da9f52c
    sd	$v1,0($a3)
    # Line 1611
    lw	$t9,0($s1)
    move	$a0,$s1
    sd	$ra,80($sp)
    jalr	$t9
    move	$a1,$s4
    move	$a0,$v0
    # Line 1613
    # lw $t9, -17848($gp) # &memcpy
    move	$a2,$s4
    # Line 1611
    sw	$v0,1336($s0)
    # Line 1613
    jal	memcpy
    lw	$a1,1488($s1)
    ld	$s4,88($sp)
    ld	$ra,80($sp)
    andi	$a3,$s2,0x4
.L0da9f580:
    beqz	$a3,.L0da9f5e8
    # Line 1620
    lui	$v1,0x2
    # Line 1617
    lwc1	$f9,444($s1)
    swc1	$f9,292($s0)
    lwc1	$f8,448($s1)
    swc1	$f8,296($s0)
    lw	$a6,452($s1)
    sw	$a6,300($s0)
    lhu	$a5,456($s1)
    # Line 1619
    li	$a0,2848
    # Line 1617
    sh	$a5,304($s0)
    # Line 1619
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    # Line 1617
    lh	$a4,458($s1)
    sd	$ra,80($sp)
    # Line 1619
    jal	__glMgrim_IsEnabled
    # Line 1617
    sh	$a4,306($s0)
    # Line 1619
    beqz	$v0,.L0da9fdc0
    lw	$a0,1544($s0)
    ori	$at,$a0,0x200
    sw	$at,1544($s0)
.L0da9f5d0:
    # Line 1620
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s0,292
    jal	__glMgrim_GetFloatv
    li	$a0,2849
    ld	$ra,80($sp)
    lui	$v1,0x2
.L0da9f5e8:
    and	$v1,$s2,$v1
    beqz	$v1,.L0da9f600
    # Line 1625
    andi	$a4,$s2,0x20
    lw	$a3,1872($s1)
    sw	$a3,1720($s0)
    andi	$a4,$s2,0x20
.L0da9f600:
    beqz	$a4,.L0da9f680
    # Line 1634
    andi	$a4,$s2,0x2
    # Line 1629
    lw	$v0,1148($s1)
    # Line 1631
    li	$a0,15
    # Line 1629
    sw	$v0,996($s0)
    # Line 1631
    addiu	$a2,$s0,464
    # Line 1630
    lw	$at,1152($s1)
    # Line 1631
    addiu	$a5,$s1,616
    move	$v0,$zero
    # Line 1630
    sw	$at,1000($s0)
.L0da9f628:
    # Line 1631
    addu	$a3,$v0,$a2
    addu	$v1,$v0,$a5
    addiu	$v0,$v0,8
    ld	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da9f628
    sd	$v1,0($a3)
    # Line 1632
    addiu	$a1,$s0,2276
    addiu	$a0,$s1,4952
    sd	$ra,80($sp)
    # lw $t9, -27344($gp) # &__glCopyColorTableScaleBias
    # Line 1631
    addu	$a3,$v0,$a5
    lw	$a3,0($a3)
    addu	$a4,$v0,$a2
    # Line 1632
    jal	__glCopyColorTableScaleBias
    # Line 1631
    sw	$a3,0($a4)
    # Line 1634
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,1000
    jal	__glMgrim_GetIntegerv
    li	$a0,3074
    ld	$ra,80($sp)
    andi	$a4,$s2,0x2
.L0da9f680:
    beqz	$a4,.L0da9f6e0
    # Line 1662
    andi	$a3,$s2,0x8
    # Line 1639
    lwc1	$f11,432($s1)
    swc1	$f11,280($s0)
    lwc1	$f10,436($s1)
    # Line 1641
    li	$a0,2832
    # Line 1639
    swc1	$f10,284($s0)
    # Line 1641
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    # Line 1639
    lw	$a5,440($s1)
    sd	$ra,80($sp)
    # Line 1641
    jal	__glMgrim_IsEnabled
    # Line 1639
    sw	$a5,288($s0)
    # Line 1641
    beqz	$v0,.L0da9fdd0
    lw	$a0,1544($s0)
    ori	$at,$a0,0x400
    sw	$at,1544($s0)
.L0da9f6c0:
    # Line 1642
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s0,280
    jal	__glMgrim_GetFloatv
    li	$a0,2833
    lbu	$v1,-25435($s3)
    beqz	$v1,.L0da9fde0
    ld	$ra,80($sp)
.L0da9f6dc:
    # Line 1662
    andi	$a3,$s2,0x8
.L0da9f6e0:
    beqz	$a3,.L0da9f780
    ld	$s3,96($sp)
    # Line 1668
    lw	$t2,460($s1)
    sw	$t2,308($s0)
    lw	$t1,464($s1)
    sw	$t1,312($s0)
    lw	$t0,468($s1)
    sw	$t0,316($s0)
    lw	$a7,472($s1)
    sw	$a7,320($s0)
    lw	$a6,476($s1)
    sw	$a6,324($s0)
    lw	$a5,480($s1)
    # Line 1669
    li	$a0,0x8037
    # Line 1668
    sw	$a5,328($s0)
    # Line 1669
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    # Line 1668
    lw	$a4,484($s1)
    sd	$ra,80($sp)
    # Line 1669
    jal	__glMgrim_IsEnabled
    # Line 1668
    sw	$a4,332($s0)
    # Line 1669
    beqz	$v0,.L0da9fe3c
    lw	$a0,1544($s0)
    lui	$at,0x100
    or	$at,$a0,$at
    sw	$at,1544($s0)
.L0da9f744:
    # Line 1670
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,10754
    beqz	$v0,.L0da9fe50
    lw	$a0,1548($s0)
    ori	$v1,$a0,0x400
    sw	$v1,1548($s0)
.L0da9f760:
    # Line 1671
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,10753
    lw	$a0,1548($s0)
    beqz	$v0,.L0da9fe60
    ld	$ra,80($sp)
    ori	$a3,$a0,0x200
    sw	$a3,1548($s0)
.L0da9f780:
    andi	$a4,$s2,0x10
    beqz	$a4,.L0da9f7b4
    # Line 1675
    li	$a0,16
    move	$v0,$zero
    addiu	$a2,$s0,336
    addiu	$a1,$s1,488
.L0da9f798:
    addu	$v1,$v0,$a2
    addu	$at,$v0,$a1
    addiu	$v0,$v0,8
    ld	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da9f798
    sd	$at,0($v1)
.L0da9f7b4:
    lui	$v1,0x8
    and	$v1,$s2,$v1
    beqz	$v1,.L0da9f83c
    # Line 1689
    andi	$at,$s2,0x400
    # Line 1681
    lw	$a4,2412($s1)
    sw	$a4,2260($s0)
    lw	$a3,2416($s1)
    sw	$a3,2264($s0)
    lw	$a2,2420($s1)
    # Line 1683
    li	$a0,3089
    # Line 1681
    sw	$a2,2268($s0)
    # Line 1683
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    # Line 1681
    lw	$a1,2424($s1)
    sd	$ra,80($sp)
    # Line 1683
    jal	__glMgrim_IsEnabled
    # Line 1681
    sw	$a1,2272($s0)
    # Line 1683
    beqz	$v0,.L0da9fe70
    lw	$a0,1544($s0)
    ori	$at,$a0,0x4000
    sw	$at,1544($s0)
.L0da9f804:
    # Line 1685
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$sp,24
    jal	__glMgrim_GetIntegerv
    li	$a0,3088
    # Line 1686
    lw	$ra,24($sp)
    sw	$ra,2260($s0)
    # Line 1687
    lw	$a4,28($sp)
    sw	$a4,2264($s0)
    # Line 1688
    lw	$a3,32($sp)
    sw	$a3,2268($s0)
    # Line 1689
    lw	$v1,36($sp)
    ld	$ra,80($sp)
    sw	$v1,2272($s0)
    andi	$at,$s2,0x400
.L0da9f83c:
    beqz	$at,.L0da9f924
    # Line 1712
    lui	$at,0x4
    # Line 1695
    ld	$a0,1568($s1)
    sd	$a0,1416($s0)
    ld	$v1,1576($s1)
    sd	$ra,80($sp)
    sd	$v1,1424($s0)
    # Line 1697
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    # Line 1695
    ld	$v0,1584($s1)
    # Line 1697
    li	$a0,2960
    jal	__glMgrim_IsEnabled
    # Line 1695
    sd	$v0,1432($s0)
    # Line 1697
    beqz	$v0,.L0da9fe80
    lw	$a0,1544($s0)
    ori	$a3,$a0,0x8000
    sw	$a3,1544($s0)
.L0da9f87c:
    # Line 1698
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,1416
    jal	__glMgrim_GetIntegerv
    li	$a0,2962
    # Line 1700
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$sp,40
    jal	__glMgrim_GetIntegerv
    li	$a0,2961
    # Line 1702
    addiu	$a1,$sp,40
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    # Line 1701
    lw	$a4,40($sp)
    # Line 1702
    li	$a0,2967
    jal	__glMgrim_GetIntegerv
    # Line 1701
    sh	$a4,1420($s0)
    # Line 1704
    addiu	$a1,$sp,40
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    # Line 1703
    lw	$a5,40($sp)
    # Line 1704
    li	$a0,2963
    jal	__glMgrim_GetIntegerv
    # Line 1703
    sh	$a5,1422($s0)
    # Line 1706
    addiu	$a1,$sp,40
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    # Line 1705
    lw	$a6,40($sp)
    # Line 1706
    li	$a0,2968
    jal	__glMgrim_GetIntegerv
    # Line 1705
    sh	$a6,1424($s0)
    # Line 1708
    addiu	$a1,$s0,1428
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    # Line 1707
    lw	$a7,40($sp)
    # Line 1708
    li	$a0,2964
    jal	__glMgrim_GetIntegerv
    # Line 1707
    sh	$a7,1426($s0)
    # Line 1710
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,1432
    jal	__glMgrim_GetIntegerv
    li	$a0,2965
    # Line 1712
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,1436
    jal	__glMgrim_GetIntegerv
    li	$a0,2966
    ld	$ra,80($sp)
    lui	$at,0x4
.L0da9f924:
    and	$at,$s2,$at
    beqz	$at,.L0da9fabc
    # Line 1721
    li	$a0,31
    move	$v0,$zero
    addiu	$a2,$s0,1724
    # Line 1719
    lw	$s4,3340($s1)
    # Line 1721
    addiu	$a1,$s1,1876
    # Line 1717
    lw	$at,3336($s1)
    # Line 1719
    sll	$s3,$s4,0x3
    addu	$s3,$s3,$s4
    sll	$s3,$s3,0x2
    # Line 1717
    sll	$s4,$at,0x3
    subu	$s4,$s4,$at
    sll	$s4,$s4,0x5
.L0da9f95c:
    # Line 1721
    addu	$v1,$v0,$a2
    addu	$at,$v0,$a1
    addiu	$v0,$v0,4
    lw	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da9f95c
    sw	$at,0($v1)
    # Line 1722
    li	$a0,15
    move	$v0,$zero
    addiu	$a2,$s0,1848
    addiu	$a5,$s1,2000
.L0da9f988:
    addu	$a3,$v0,$a2
    addu	$v1,$v0,$a5
    addiu	$v0,$v0,8
    ld	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da9f988
    sd	$v1,0($a3)
    # Line 1723
    li	$a0,31
    move	$a1,$zero
    addiu	$a6,$s0,1972
    # Line 1722
    addu	$a3,$v0,$a5
    lw	$a3,0($a3)
    # Line 1723
    addiu	$a7,$s1,2124
    # Line 1722
    addu	$a4,$v0,$a2
    sw	$a3,0($a4)
.L0da9f9c4:
    # Line 1723
    addu	$at,$a1,$a6
    addu	$a4,$a1,$a7
    addiu	$a1,$a1,4
    lw	$a4,0($a4)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da9f9c4
    sw	$a4,0($at)
    # Line 1724
    li	$a0,15
    move	$v0,$zero
    addiu	$a2,$s0,2096
    addiu	$a5,$s1,2248
.L0da9f9f0:
    addu	$v1,$v0,$a2
    addu	$at,$v0,$a5
    addiu	$v0,$v0,8
    ld	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da9f9f0
    sd	$at,0($v1)
    addu	$v1,$v0,$a5
    lw	$v1,0($v1)
    addu	$a0,$v0,$a2
    sw	$v1,0($a0)
    # Line 1726
    lwc1	$f19,2380($s1)
    swc1	$f19,2228($s0)
    # Line 1727
    lwc1	$f18,2384($s1)
    swc1	$f18,2232($s0)
    # Line 1728
    lwc1	$f17,2388($s1)
    swc1	$f17,2236($s0)
    # Line 1729
    lwc1	$f16,2392($s1)
    swc1	$f16,2240($s0)
    # Line 1731
    lwc1	$f15,2396($s1)
    swc1	$f15,2244($s0)
    # Line 1732
    lwc1	$f14,2400($s1)
    swc1	$f14,2248($s0)
    # Line 1733
    lwc1	$f13,2404($s1)
    swc1	$f13,2252($s0)
    # Line 1734
    lwc1	$f12,2408($s1)
    swc1	$f12,2256($s0)
    # Line 1736
    lw	$t9,0($s1)
    move	$a1,$s4
    sd	$ra,80($sp)
    jalr	$t9
    move	$a0,$s1
    move	$a0,$v0
    # Line 1738
    # lw $t9, -17848($gp) # &memcpy
    move	$a2,$s4
    # Line 1736
    sw	$v0,2220($s0)
    # Line 1738
    jal	memcpy
    lw	$a1,2372($s1)
    # Line 1740
    lw	$t9,0($s1)
    move	$a0,$s1
    move	$a1,$s3
    jalr	$t9
    ld	$s4,88($sp)
    move	$a0,$v0
    # Line 1742
    # lw $t9, -17848($gp) # &memcpy
    move	$a2,$s3
    # Line 1740
    sw	$v0,2224($s0)
    # Line 1742
    jal	memcpy
    lw	$a1,2376($s1)
    ld	$s3,96($sp)
    ld	$ra,80($sp)
.L0da9fabc:
    andi	$a3,$s2,0x1000
    beqz	$a3,.L0da9fb10
    # Line 1751
    andi	$at,$s2,0x800
    # Line 1748
    lw	$t8,1648($s1)
    # Line 1746
    lw	$s3,3332($s1)
    # Line 1748
    sw	$t8,1496($s0)
    # Line 1749
    move	$a0,$s1
    lw	$t9,0($s1)
    sd	$ra,80($sp)
    # Line 1746
    sll	$s3,$s3,0x4
    # Line 1749
    jalr	$t9
    move	$a1,$s3
    move	$a0,$v0
    # Line 1751
    # lw $t9, -17848($gp) # &memcpy
    move	$a2,$s3
    # Line 1749
    sw	$v0,1500($s0)
    # Line 1751
    jal	memcpy
    lw	$a1,1652($s1)
    ld	$s3,96($sp)
    ld	$ra,80($sp)
    andi	$at,$s2,0x800
.L0da9fb10:
    beqzl	$at,.L0da9fbec
    ld	$gp,72($sp)
    # Line 1758
    ld	$a4,1592($s1)
    sd	$a4,1440($s0)
    ld	$a3,1600($s1)
    sd	$a3,1448($s0)
    ld	$a2,1608($s1)
    sd	$a2,1456($s0)
    ld	$a1,1616($s1)
    sd	$a1,1464($s0)
    ld	$a0,1624($s1)
    sd	$a0,1472($s0)
    ld	$v1,1632($s1)
    sd	$ra,80($sp)
    # Line 1760
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    # Line 1758
    sd	$v1,1480($s0)
    # Line 1760
    addiu	$a1,$sp,48
    # Line 1758
    ld	$v0,1640($s1)
    # Line 1760
    li	$a0,2928
    jal	__glMgrim_GetFloatv
    # Line 1758
    sd	$v0,1488($s0)
    # Line 1761
    lwc1	$f1,48($sp)
    cvt.d.s	$f1,$f1
    sdc1	$f1,1456($s0)
    # Line 1762
    lwc1	$f2,52($sp)
    cvt.d.s	$f2,$f2
    sdc1	$f2,1464($s0)
    # Line 1763
    lw	$at,31356($s1)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f3
    nop
    cvt.s.l	$f3,$f3
    lwc1	$f0,3280($s1)
    mul.s	$f0,$f0,$f3
    sub.d	$f3,$f2,$f1
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f3
    cvt.s.d	$f0,$f0
    swc1	$f0,1488($s0)
    # Line 1765
    lw	$ra,31356($s1)
    dsll32	$ra,$ra,0x0
    dsrl32	$ra,$ra,0x0
    dmtc1	$ra,$f3
    nop
    cvt.s.l	$f3,$f3
    lwc1	$f0,3280($s1)
    mul.s	$f0,$f0,$f3
    add.d	$f1,$f1,$f2
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f1
    cvt.s.d	$f0,$f0
    ld	$ra,80($sp)
    swc1	$f0,1492($s0)
    ld	$gp,72($sp)
.L0da9fbec:
    # Line 1772
    ld	$s0,104($sp)
    ld	$s1,56($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0da9fc00:
    # Line 1509
    li	$v1,-2
    and	$v1,$a0,$v1
    b	.L0da9f004
    sw	$v1,1544($s0)
.L0da9fc10:
    # Line 1515
    li	$a3,-3
    and	$a3,$a0,$a3
    b	.L0da9f040
    sw	$a3,1544($s0)
.L0da9fc20:
    # Line 1523
    li	$a4,-9
    and	$a4,$a0,$a4
    b	.L0da9f08c
    sw	$a4,1544($s0)
.L0da9fc30:
    # Line 1529
    li	$at,-5
    and	$at,$a0,$at
    b	.L0da9f0c0
    sw	$at,1544($s0)
.L0da9fc40:
    # Line 1530
    li	$v1,-2049
    and	$v1,$a0,$v1
    b	.L0da9f0dc
    sw	$v1,1548($s0)
.L0da9fc50:
    # Line 1486
    move	$a0,$s1
    lw	$t9,4($s1)
    li	$a2,2936
    sd	$ra,80($sp)
    jalr	$t9
    li	$a1,1
    # Line 1488
    sw	$v0,0($s4)
    # Line 1486
    move	$s0,$v0
    # Line 1490
    lw	$t9,4($s1)
    li	$a2,912
    li	$a1,1
    jalr	$t9
    move	$a0,$s1
    ld	$a0,112($sp)
    ld	$ra,80($sp)
    b	.L0da9ef44
    # Line 1492
    sw	$v0,0($a0)
.L0da9fc94:
    # Line 1769
    li	$a0,1283
    # lw $t9, -27320($gp) # &__glSetError
    ld	$s4,88($sp)
    sd	$ra,80($sp)
    jal	__glSetError
    ld	$s3,96($sp)
    ld	$gp,72($sp)
    # Line 1770
    ld	$ra,80($sp)
    ld	$s1,56($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0da9fcc4:
    # Line 1575
    li	$a3,-2
    and	$a3,$a0,$a3
    b	.L0da9f25c
    sw	$a3,1544($s0)
.L0da9fcd4:
    # Line 1576
    li	$a4,-3
    and	$a4,$a0,$a4
    b	.L0da9f278
    sw	$a4,1544($s0)
.L0da9fce4:
    # Line 1577
    li	$at,-17
    and	$at,$a0,$at
    b	.L0da9f294
    sw	$at,1544($s0)
.L0da9fcf4:
    # Line 1578
    li	$v1,-9
    and	$v1,$a0,$v1
    b	.L0da9f2b0
    sw	$v1,1544($s0)
.L0da9fd04:
    # Line 1579
    li	$a3,-513
    and	$a3,$a0,$a3
    b	.L0da9f2cc
    sw	$a3,1544($s0)
.L0da9fd14:
    # Line 1580
    li	$a4,-5
    and	$a4,$a0,$a4
    b	.L0da9f2e8
    sw	$a4,1544($s0)
.L0da9fd24:
    # Line 1581
    li	$at,-1025
    and	$at,$a0,$at
    b	.L0da9f304
    sw	$at,1544($s0)
.L0da9fd34:
    # Line 1582
    li	$v1,-16385
    and	$v1,$a0,$v1
    b	.L0da9f320
    sw	$v1,1544($s0)
.L0da9fd44:
    # Line 1583
    li	$a3,0x8000
    nor	$a3,$a3,$zero
    and	$a3,$a0,$a3
    b	.L0da9f33c
    sw	$a3,1544($s0)
.L0da9fd58:
    # Line 1584
    lui	$a4,0x800
    nor	$a4,$a4,$zero
    and	$a4,$a0,$a4
    b	.L0da9f35c
    sw	$a4,1544($s0)
.L0da9fd6c:
    # Line 1585
    lui	$at,0x100
    nor	$at,$at,$zero
    and	$at,$a0,$at
    b	.L0da9f37c
    sw	$at,1544($s0)
.L0da9fd80:
    # Line 1586
    li	$v1,-2049
    and	$v1,$a0,$v1
    b	.L0da9f398
    sw	$v1,1548($s0)
.L0da9fd90:
    # Line 1587
    li	$a3,-1025
    and	$a3,$a0,$a3
    b	.L0da9f3b4
    sw	$a3,1548($s0)
.L0da9fda0:
    # Line 1588
    li	$a4,-513
    and	$a4,$a0,$a4
    b	.L0da9f3d4
    sw	$a4,1548($s0)
.L0da9fdb0:
    # Line 1565
    li	$at,-17
    and	$at,$a0,$at
    b	.L0da9f200
    sw	$at,1544($s0)
.L0da9fdc0:
    # Line 1619
    li	$v1,-513
    and	$v1,$a0,$v1
    b	.L0da9f5d0
    sw	$v1,1544($s0)
.L0da9fdd0:
    # Line 1641
    li	$a3,-1025
    and	$a3,$a0,$a3
    b	.L0da9f6c0
    sw	$a3,1544($s0)
.L0da9fde0:
    # Line 1647
    lwc1	$f4,280($s0)
    ldc1	$f2,_lit8_3ff0000000000000
    cvt.d.s	$f7,$f4
    c.lt.d	$f7,$f2
    # Line 1646
    lwc1	$f6,3452($s1)
    # Line 1645
    lwc1	$f5,3448($s1)
    # Line 1647
    bc1f	.L0da9fe0c
    ld	$s3,96($sp)
    li	$a4,1
    # Line 1650
    b	.L0da9fe24
    sw	$a4,288($s0)
.L0da9fe0c:
    # Line 1652
    ldc1	$f3,_lit8_3fe0000000000000
    add.d	$f3,$f7,$f3
    trunc.w.d	$f3,$f3
    mfc1	$at,$f3
    nop
    sw	$at,288($s0)
.L0da9fe24:
    c.le.s	$f4,$f5
    nop
    bc1fl	.L0da9fe94
    # Line 1655
    c.le.s	$f6,$f4
    b	.L0da9f6dc
    swc1	$f5,280($s0)
.L0da9fe3c:
    # Line 1669
    lui	$v1,0x100
    nor	$v1,$v1,$zero
    and	$v1,$a0,$v1
    b	.L0da9f744
    sw	$v1,1544($s0)
.L0da9fe50:
    # Line 1670
    li	$a3,-1025
    and	$a3,$a0,$a3
    b	.L0da9f760
    sw	$a3,1548($s0)
.L0da9fe60:
    # Line 1671
    li	$a4,-513
    and	$a4,$a0,$a4
    b	.L0da9f780
    sw	$a4,1548($s0)
.L0da9fe70:
    # Line 1683
    li	$at,-16385
    and	$at,$a0,$at
    b	.L0da9f804
    sw	$at,1544($s0)
.L0da9fe80:
    # Line 1697
    li	$v1,0x8000
    nor	$v1,$v1,$zero
    and	$v1,$a0,$v1
    b	.L0da9f87c
    sw	$v1,1544($s0)
.L0da9fe94:
    nop
    # Line 1655
    bc1fl	.L0da9fea8
    # Line 1662
    sub.s	$f0,$f4,$f5
    # Line 1657
    b	.L0da9f6dc
    swc1	$f6,280($s0)
.L0da9fea8:
    # Line 1659
    lwc1	$f1,3456($s1)
    # Line 1662
    div.s	$f0,$f0,$f1
    ldc1	$f2,_lit8_3fe0000000000000
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f2
    trunc.w.d	$f0,$f0
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f1
    add.s	$f0,$f0,$f5
    b	.L0da9f6dc
    swc1	$f0,280($s0)
.L0da9fed4:
    # Line 1476
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,80($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,72($sp)
    ld	$ra,80($sp)
    ld	$s1,56($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glMgrim_SoftPushAttrib

# Function: __glMgrim_PushAttrib
# Declared: Line 1775 (Source lines: 1775-2349)
# Address: 0x0da9fefc - 0x0daa2140 (Size: 8772 bytes, Frame: 128)
.globl __glMgrim_PushAttrib
.ent __glMgrim_PushAttrib
__glMgrim_PushAttrib:
    # Line 1781
    li	$v0,1
    # Line 1775
    addiu	$sp,$sp,-384
    sd	$s3,224($sp)
    # Line 1781
    lw	$s3,__glCurrentContext
    sd	$s5,208($sp)
    # Line 1775
    move	$s5,$a0
    sd	$gp,216($sp)
    # Line 1781
    lw	$at,__glBeginMode
    # Line 1775
    lui	$v1,0x16
    addiu	$v1,$v1,-6244
    # Line 1781
    beq	$at,$v0,.L0daa2118
    # Line 1775
    addu	$gp,$t9,$v1
    sd	$s4,296($sp)
    sd	$s2,320($sp)
    sd	$s8,304($sp)
    # Line 1785
    lui	$s8,0x1
    addu	$s2,$s8,$s3
    sd	$s6,312($sp)
    lw	$a4,3480($s3)
    lw	$a3,12728($s3)
    # Line 1784
    lw	$s6,12732($s3)
    # Line 1785
    sll	$a4,$a4,0x2
    addu	$a3,$a3,$a4
    sltu	$a3,$s6,$a3
    beqz	$a3,.L0daa1af4
    lw	$s4,-28048($s2)
    sd	$s0,336($sp)
    # Line 1788
    lw	$s0,0($s6)
    sd	$s1,344($sp)
    # Line 1789
    beqz	$s0,.L0daa1a24
    lw	$s1,0($s4)
.L0da9ff78:
    # Line 1800
    sw	$s5,0($s0)
    # Line 1801
    ld	$v1,1696($s3)
    sd	$v1,1544($s0)
    ld	$at,1704($s3)
    sd	$at,1552($s0)
    # Line 1802
    addiu	$a3,$s6,4
    # Line 1801
    ld	$a4,1712($s3)
    # Line 1803
    andi	$v1,$s5,0x200
    addiu	$at,$s4,4
    # Line 1801
    sd	$a4,1560($s0)
    # Line 1802
    sw	$a3,12732($s3)
    # Line 1803
    beqz	$v1,.L0da9ffe4
    sw	$at,-28048($s2)
    # Line 1807
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$sp,0
    sd	$ra,288($sp)
    jal	__glMgrim_GetFloatv
    li	$a0,2944
    # Line 1808
    lwc1	$f3,0($sp)
    swc1	$f3,1400($s0)
    # Line 1809
    lwc1	$f2,4($sp)
    swc1	$f2,1404($s0)
    # Line 1810
    lwc1	$f1,8($sp)
    swc1	$f1,1408($s0)
    # Line 1811
    lwc1	$f0,12($sp)
    ld	$ra,288($sp)
    swc1	$f0,1412($s0)
.L0da9ffe4:
    andi	$a3,$s5,0x4000
    beqz	$a3,.L0daa0170
    # Line 1817
    nop	# was lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    sd	$ra,288($sp)
    jal	__glMgrim_IsEnabled
    li	$a0,3008
    beqz	$v0,.L0daa1b2c
    lw	$a0,1544($s0)
    ori	$a4,$a0,0x1
    sw	$a4,1544($s0)
.L0daa000c:
    # Line 1818
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,1568
    jal	__glMgrim_GetIntegerv
    li	$a0,3009
    # Line 1819
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s0,1572
    jal	__glMgrim_GetFloatv
    li	$a0,3010
    # Line 1820
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3042
    beqz	$v0,.L0daa1b3c
    lw	$a0,1544($s0)
    ori	$at,$a0,0x2
    sw	$at,1544($s0)
.L0daa0048:
    # Line 1821
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,1576
    jal	__glMgrim_GetIntegerv
    li	$a0,3041
    # Line 1822
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,1580
    jal	__glMgrim_GetIntegerv
    li	$a0,3040
    # Line 1823
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,1584
    jal	__glMgrim_GetIntegerv
    li	$a0,0x8009
    # Line 1825
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3024
    beqz	$v0,.L0daa1b4c
    lw	$a0,1544($s0)
    ori	$v1,$a0,0x8
    sw	$v1,1544($s0)
.L0daa0094:
    # Line 1826
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,1640
    jal	__glMgrim_GetIntegerv
    li	$a0,3073
    # Line 1827
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3057
    beqz	$v0,.L0daa1b5c
    lw	$a0,1544($s0)
    ori	$a3,$a0,0x4
    sw	$a3,1544($s0)
.L0daa00c0:
    # Line 1828
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3058
    beqz	$v0,.L0daa1b6c
    lw	$a0,1548($s0)
    ori	$a4,$a0,0x800
    sw	$a4,1548($s0)
.L0daa00dc:
    # Line 1829
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,1604
    jal	__glMgrim_GetIntegerv
    li	$a0,3056
    # Line 1830
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$sp,16
    jal	__glMgrim_GetFloatv
    li	$a0,3106
    # Line 1831
    lwc1	$f7,16($sp)
    swc1	$f7,1608($s0)
    # Line 1832
    lwc1	$f6,20($sp)
    swc1	$f6,1612($s0)
    # Line 1833
    lwc1	$f5,24($sp)
    # Line 1835
    addiu	$a1,$s0,1624
    # Line 1833
    swc1	$f5,1616($s0)
    # Line 1835
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    # Line 1834
    lwc1	$f4,28($sp)
    # Line 1835
    li	$a0,3104
    jal	__glMgrim_GetFloatv
    # Line 1834
    swc1	$f4,1620($s0)
    # Line 1836
    # lw $t9, -30868($gp) # &__glMgrim_GetBooleanv
    addiu	$a1,$sp,32
    jal	__glMgrim_GetBooleanv
    li	$a0,3107
    # Line 1837
    lbu	$t0,32($sp)
    sb	$t0,1632($s0)
    # Line 1838
    lbu	$a7,33($sp)
    sb	$a7,1633($s0)
    # Line 1839
    lbu	$a6,34($sp)
    # Line 1841
    addiu	$a1,$s0,1628
    # Line 1839
    sb	$a6,1634($s0)
    # Line 1841
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    # Line 1840
    lbu	$a5,35($sp)
    # Line 1841
    li	$a0,3105
    jal	__glMgrim_GetIntegerv
    # Line 1840
    sb	$a5,1635($s0)
    ld	$ra,288($sp)
.L0daa0170:
    # Line 1841
    andi	$at,$s5,0x1
    beqz	$at,.L0daa0348
    # Line 1848
    nop	# was lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$sp,40
    sd	$ra,288($sp)
    jal	__glMgrim_GetFloatv
    li	$a0,2823
    # Line 1849
    lwc1	$f14,40($sp)
    ldc1	$f13,_lit8_40e7fff000000000
    cvt.d.s	$f14,$f14
    add.d	$f14,$f14,$f13
    ldc1	$f12,_lit8_3fe0000000000000
    add.d	$f14,$f14,$f12
    cvt.s.d	$f14,$f14
    swc1	$f14,192($s0)
    # Line 1850
    lwc1	$f11,44($sp)
    cvt.d.s	$f11,$f11
    add.d	$f11,$f11,$f13
    add.d	$f11,$f11,$f12
    cvt.s.d	$f11,$f11
    swc1	$f11,196($s0)
    # Line 1859
    addiu	$a1,$s0,208
    # Line 1852
    lwc1	$f10,48($sp)
    # Line 1859
    li	$a0,2820
    # Line 1858
    lwc1	$f9,_lit_3f800000
    # Line 1852
    swc1	$f10,200($s0)
    # Line 1859
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    # Line 1853
    lwc1	$f8,52($sp)
    # Line 1858
    swc1	$f9,188($s0)
    # Line 1859
    jal	__glMgrim_GetFloatv
    # Line 1853
    swc1	$f8,204($s0)
    # Line 1861
    addiu	$a3,$s3,360
    sw	$a3,68($s0)
    lbu	$v1,-25435($s2)
    beqz	$v1,.L0daa0230
    # Line 1865
    nop	# was lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$sp,40
    jal	__glMgrim_GetFloatv
    li	$a0,2822
    # Line 1866
    lwc1	$f3,40($sp)
    swc1	$f3,112($s0)
    # Line 1867
    lwc1	$f2,44($sp)
    swc1	$f2,116($s0)
    # Line 1868
    lwc1	$f1,48($sp)
    swc1	$f1,120($s0)
    # Line 1869
    lwc1	$f0,52($sp)
    b	.L0daa0250
    swc1	$f0,124($s0)
.L0daa0230:
    # Line 1871
    lwc1	$f3,264($s3)
    swc1	$f3,112($s0)
    lwc1	$f2,268($s3)
    swc1	$f2,116($s0)
    lwc1	$f1,272($s3)
    swc1	$f1,120($s0)
    lwc1	$f0,276($s3)
    swc1	$f0,124($s0)
.L0daa0250:
    # Line 1875
    # lw $t9, -30868($gp) # &__glMgrim_GetBooleanv
    addiu	$a1,$sp,56
    jal	__glMgrim_GetBooleanv
    li	$a0,2824
    # Line 1876
    lbu	$a4,56($sp)
    sb	$a4,276($s0)
    # Line 1878
    lwc1	$f8,408($s3)
    swc1	$f8,256($s0)
    lwc1	$f7,412($s3)
    swc1	$f7,260($s0)
    lwc1	$f6,416($s3)
    swc1	$f6,264($s0)
    lwc1	$f5,420($s3)
    # Line 1881
    addiu	$a1,$s0,277
    # Line 1878
    swc1	$f5,268($s0)
    # Line 1881
    # lw $t9, -30868($gp) # &__glMgrim_GetBooleanv
    # Line 1879
    lwc1	$f4,424($s3)
    # Line 1881
    li	$a0,2883
    jal	__glMgrim_GetBooleanv
    # Line 1879
    swc1	$f4,272($s0)
    # Line 1883
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s0,256
    jal	__glMgrim_GetFloatv
    li	$a0,2816
    # Line 1885
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s0,272
    jal	__glMgrim_GetFloatv
    li	$a0,2817
    lbu	$at,3104($s3)
    beqzl	$at,.L0daa20d0
    # Line 1890
    lwc1	$f2,272($s0)
    # Line 1888
    lwc1	$f3,268($s0)
    swc1	$f3,28($s0)
    lwc1	$f2,264($s0)
    lwc1	$f1,260($s0)
    lwc1	$f0,256($s0)
    swc1	$f2,24($s0)
    swc1	$f1,20($s0)
    swc1	$f0,16($s0)
.L0daa02ec:
    # Line 1892
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$sp,40
    jal	__glMgrim_GetFloatv
    li	$a0,2818
    # Line 1893
    lwc1	$f6,40($sp)
    swc1	$f6,32($s0)
    # Line 1894
    lwc1	$f5,44($sp)
    # Line 1897
    addiu	$a1,$sp,40
    # Line 1894
    swc1	$f5,36($s0)
    # Line 1897
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    # Line 1895
    lwc1	$f4,48($sp)
    # Line 1897
    li	$a0,2819
    jal	__glMgrim_GetFloatv
    # Line 1895
    swc1	$f4,40($s0)
    # Line 1898
    lwc1	$f3,40($sp)
    swc1	$f3,48($s0)
    # Line 1899
    lwc1	$f2,44($sp)
    swc1	$f2,52($s0)
    # Line 1900
    lwc1	$f1,48($sp)
    swc1	$f1,56($s0)
    # Line 1901
    lwc1	$f0,52($sp)
    ld	$ra,288($sp)
    swc1	$f0,60($s0)
.L0daa0348:
    andi	$v1,$s5,0x100
    beqz	$v1,.L0daa03a4
    # Line 1906
    nop	# was lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    sd	$ra,288($sp)
    jal	__glMgrim_IsEnabled
    li	$a0,2929
    beqz	$v0,.L0daa1b7c
    lw	$a0,1544($s0)
    ori	$a3,$a0,0x10
    sw	$a3,1544($s0)
.L0daa0370:
    # Line 1907
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,1384
    jal	__glMgrim_GetIntegerv
    li	$a0,2932
    # Line 1908
    # lw $t9, -30868($gp) # &__glMgrim_GetBooleanv
    addiu	$a1,$s0,1388
    jal	__glMgrim_GetBooleanv
    li	$a0,2930
    # Line 1909
    # lw $t9, -30884($gp) # &__glMgrim_GetDoublev
    addiu	$a1,$s0,1392
    jal	__glMgrim_GetDoublev
    li	$a0,2931
    ld	$ra,288($sp)
.L0daa03a4:
    andi	$a4,$s5,0x2000
    beqz	$a4,.L0daa1938
    # Line 1914
    nop	# was lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    sd	$ra,288($sp)
    jal	__glMgrim_IsEnabled
    li	$a0,3008
    beqz	$v0,.L0daa1b8c
    lw	$a0,1544($s0)
    ori	$at,$a0,0x1
    sw	$at,1544($s0)
.L0daa03cc:
    # Line 1915
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3456
    beqz	$v0,.L0daa1b9c
    lw	$a0,1544($s0)
    lui	$v1,0x80
    or	$v1,$a0,$v1
    sw	$v1,1544($s0)
.L0daa03ec:
    # Line 1916
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3042
    beqz	$v0,.L0daa1bb0
    lw	$a0,1544($s0)
    ori	$a3,$a0,0x2
    sw	$a3,1544($s0)
.L0daa0408:
    # Line 1917
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2884
    beqz	$v0,.L0daa1bc0
    lw	$a0,1544($s0)
    ori	$a4,$a0,0x1000
    sw	$a4,1544($s0)
.L0daa0424:
    # Line 1918
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2929
    beqz	$v0,.L0daa1bd0
    lw	$a0,1544($s0)
    ori	$at,$a0,0x10
    sw	$at,1544($s0)
.L0daa0440:
    # Line 1919
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3024
    beqz	$v0,.L0daa1be0
    lw	$a0,1544($s0)
    ori	$v1,$a0,0x8
    sw	$v1,1544($s0)
.L0daa045c:
    # Line 1920
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2912
    beqz	$v0,.L0daa1bf0
    lw	$a0,1544($s0)
    ori	$a3,$a0,0x20
    sw	$a3,1544($s0)
.L0daa0478:
    # Line 1921
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2848
    beqz	$v0,.L0daa1c00
    lw	$a0,1544($s0)
    ori	$a4,$a0,0x200
    sw	$a4,1544($s0)
.L0daa0494:
    # Line 1922
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2852
    beqz	$v0,.L0daa1c10
    lw	$a0,1544($s0)
    ori	$at,$a0,0x100
    sw	$at,1544($s0)
.L0daa04b0:
    # Line 1923
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3057
    beqz	$v0,.L0daa1c20
    lw	$a0,1544($s0)
    ori	$v1,$a0,0x4
    sw	$v1,1544($s0)
.L0daa04cc:
    # Line 1924
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3058
    beqz	$v0,.L0daa1c30
    lw	$a0,1544($s0)
    ori	$a3,$a0,0x800
    sw	$a3,1544($s0)
.L0daa04e8:
    # Line 1925
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2977
    beqz	$v0,.L0daa1c40
    lw	$a0,1544($s0)
    lui	$a4,0x40
    or	$a4,$a0,$a4
    sw	$a4,1544($s0)
.L0daa0508:
    # Line 1926
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2832
    beqz	$v0,.L0daa1c54
    lw	$a0,1544($s0)
    ori	$at,$a0,0x400
    sw	$at,1544($s0)
.L0daa0524:
    # Line 1927
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2881
    beqz	$v0,.L0daa1c64
    lw	$a0,1544($s0)
    ori	$v1,$a0,0x800
    sw	$v1,1544($s0)
.L0daa0540:
    # Line 1928
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2882
    beqz	$v0,.L0daa1c74
    lw	$a0,1544($s0)
    ori	$a3,$a0,0x2000
    sw	$a3,1544($s0)
.L0daa055c:
    # Line 1929
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3089
    beqz	$v0,.L0daa1c84
    lw	$a0,1544($s0)
    ori	$a4,$a0,0x4000
    sw	$a4,1544($s0)
.L0daa0578:
    # Line 1930
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2960
    beqz	$v0,.L0daa1c94
    lw	$a0,1544($s0)
    ori	$at,$a0,0x8000
    sw	$at,1544($s0)
.L0daa0594:
    # Line 1931
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3552
    beqz	$v0,.L0daa1ca8
    lw	$a0,1544($s0)
    or	$v1,$s8,$a0
    sw	$v1,1544($s0)
.L0daa05b0:
    # Line 1932
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    sd	$s7,328($sp)
    jal	__glMgrim_IsEnabled
    li	$a0,3553
    lui	$s7,0x2
    beqz	$v0,.L0daa1cbc
    lw	$a0,1544($s0)
    or	$a3,$s7,$a0
    sw	$a3,1544($s0)
.L0daa05d4:
    # Line 1933
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3168
    lui	$s4,0x4
    beqz	$v0,.L0daa1cd0
    lw	$a0,1544($s0)
    or	$a4,$s4,$a0
    sw	$a4,1544($s0)
.L0daa05f4:
    # Line 1934
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3169
    lui	$s6,0x8
    beqz	$v0,.L0daa1ce4
    lw	$a0,1544($s0)
    or	$at,$s6,$a0
    sw	$at,1544($s0)
.L0daa0614:
    # Line 1935
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3170
    beqz	$v0,.L0daa1cf8
    lw	$a0,1544($s0)
    lui	$v1,0x10
    or	$v1,$a0,$v1
    sw	$v1,1544($s0)
.L0daa0634:
    # Line 1936
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3171
    beqz	$v0,.L0daa1d0c
    lw	$a0,1544($s0)
    lui	$a3,0x20
    or	$a3,$a0,$a3
    sw	$a3,1544($s0)
.L0daa0654:
    # Line 1937
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,0x8037
    beqz	$v0,.L0daa1d20
    lw	$a0,1544($s0)
    lui	$a4,0x100
    or	$a4,$a0,$a4
    sw	$a4,1544($s0)
.L0daa0674:
    # Line 1938
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,12288
    beqz	$v0,.L0daa1d34
    lw	$a0,1556($s0)
    ori	$at,$a0,0x1
    sw	$at,1556($s0)
.L0daa0690:
    # Line 1939
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,12289
    beqz	$v0,.L0daa1d44
    lw	$a0,1556($s0)
    ori	$v1,$a0,0x2
    sw	$v1,1556($s0)
.L0daa06ac:
    # Line 1940
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,12290
    beqz	$v0,.L0daa1d54
    lw	$a0,1556($s0)
    ori	$a3,$a0,0x4
    sw	$a3,1556($s0)
.L0daa06c8:
    # Line 1941
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,12291
    beqz	$v0,.L0daa1d64
    lw	$a0,1556($s0)
    ori	$a4,$a0,0x8
    sw	$a4,1556($s0)
.L0daa06e4:
    # Line 1942
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,12292
    beqz	$v0,.L0daa1d74
    lw	$a0,1556($s0)
    ori	$at,$a0,0x10
    sw	$at,1556($s0)
.L0daa0700:
    # Line 1943
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,12293
    beqz	$v0,.L0daa1d84
    lw	$a0,1556($s0)
    ori	$v1,$a0,0x20
    sw	$v1,1556($s0)
.L0daa071c:
    # Line 1944
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2896
    beqz	$v0,.L0daa1d94
    lw	$a0,1544($s0)
    ori	$a3,$a0,0x40
    sw	$a3,1544($s0)
.L0daa0738:
    # Line 1945
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16384
    beqz	$v0,.L0daa1da4
    lw	$a0,1552($s0)
    ori	$a4,$a0,0x1
    sw	$a4,1552($s0)
.L0daa0754:
    # Line 1946
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16385
    beqz	$v0,.L0daa1db4
    lw	$a0,1552($s0)
    ori	$at,$a0,0x2
    sw	$at,1552($s0)
.L0daa0770:
    # Line 1947
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16386
    beqz	$v0,.L0daa1dc4
    lw	$a0,1552($s0)
    ori	$v1,$a0,0x4
    sw	$v1,1552($s0)
.L0daa078c:
    # Line 1948
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16387
    beqz	$v0,.L0daa1dd4
    lw	$a0,1552($s0)
    ori	$a3,$a0,0x8
    sw	$a3,1552($s0)
.L0daa07a8:
    # Line 1949
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16388
    beqz	$v0,.L0daa1de4
    lw	$a0,1552($s0)
    ori	$a4,$a0,0x10
    sw	$a4,1552($s0)
.L0daa07c4:
    # Line 1950
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16389
    beqz	$v0,.L0daa1df4
    lw	$a0,1552($s0)
    ori	$at,$a0,0x20
    sw	$at,1552($s0)
.L0daa07e0:
    # Line 1951
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16390
    beqz	$v0,.L0daa1e04
    lw	$a0,1552($s0)
    ori	$v1,$a0,0x40
    sw	$v1,1552($s0)
.L0daa07fc:
    # Line 1952
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16391
    beqz	$v0,.L0daa1e14
    lw	$a0,1552($s0)
    ori	$a3,$a0,0x80
    sw	$a3,1552($s0)
.L0daa0818:
    # Line 1954
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,0xbead
    beqz	$v0,.L0daa1e24
    lw	$a0,1552($s0)
    lui	$a4,0x8000
    or	$a4,$a0,$a4
    sw	$a4,1552($s0)
.L0daa0838:
    # Line 1957
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,0x8024
    beqz	$v0,.L0daa1e38
    lw	$a0,1544($s0)
    lui	$at,0x1000
    or	$at,$a0,$at
    sw	$at,1544($s0)
.L0daa0858:
    # Line 1958
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,0x802e
    beqz	$v0,.L0daa1e4c
    lw	$a0,1544($s0)
    lui	$v1,0x2000
    or	$v1,$a0,$v1
    sw	$v1,1544($s0)
.L0daa0878:
    # Line 1959
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,0x8010
    beqz	$v0,.L0daa1e60
    lw	$a0,1544($s0)
    lui	$a3,0x200
    or	$a3,$a0,$a3
    sw	$a3,1544($s0)
.L0daa0898:
    # Line 1960
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,0x8011
    beqz	$v0,.L0daa1e74
    lw	$a0,1544($s0)
    lui	$a4,0x400
    or	$a4,$a0,$a4
    sw	$a4,1544($s0)
.L0daa08b8:
    # Line 1961
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,0x8012
    beqz	$v0,.L0daa1e88
    lw	$a0,1544($s0)
    lui	$at,0x800
    or	$at,$a0,$at
    sw	$at,1544($s0)
.L0daa08d8:
    # Line 1962
    lw	$v1,1712($s3)
    sw	$v1,1560($s0)
    # Line 1965
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    # Line 1963
    lw	$v0,1716($s3)
    # Line 1965
    li	$a0,2903
    jal	__glMgrim_IsEnabled
    # Line 1963
    sw	$v0,1564($s0)
    # Line 1965
    beqz	$v0,.L0daa1e9c
    lw	$a0,1548($s0)
    ori	$a3,$a0,0x80
    sw	$a3,1548($s0)
.L0daa0904:
    # Line 1966
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,10754
    beqz	$v0,.L0daa1eac
    lw	$a0,1548($s0)
    ori	$a4,$a0,0x400
    sw	$a4,1548($s0)
.L0daa0920:
    # Line 1967
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,10753
    lw	$a0,1548($s0)
    beqz	$v0,.L0daa1ebc
    ld	$ra,288($sp)
    ori	$at,$a0,0x200
    sw	$at,1548($s0)
.L0daa0940:
    and	$v1,$s8,$s5
    beqz	$v1,.L0daa0980
    # Line 1973
    andi	$at,$s5,0x80
    ld	$a4,1824($s3)
    sd	$a4,1672($s0)
    ld	$a3,1832($s3)
    sd	$a3,1680($s0)
    ld	$v1,1840($s3)
    sd	$v1,1688($s0)
    ld	$at,1848($s3)
    sd	$at,1696($s0)
    ld	$a4,1856($s3)
    sd	$a4,1704($s0)
    ld	$a3,1864($s3)
    sd	$a3,1712($s0)
    andi	$at,$s5,0x80
.L0daa0980:
    beqz	$at,.L0daa0a20
    # Line 1979
    nop	# was lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    sd	$ra,288($sp)
    jal	__glMgrim_IsEnabled
    li	$a0,2912
    beqz	$v0,.L0daa1ecc
    lw	$a0,1544($s0)
    ori	$v1,$a0,0x20
    sw	$v1,1544($s0)
.L0daa09a4:
    # Line 1980
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s0,1376
    jal	__glMgrim_GetFloatv
    li	$a0,2913
    # Line 1981
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s0,1360
    jal	__glMgrim_GetFloatv
    li	$a0,2914
    # Line 1982
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s0,1364
    jal	__glMgrim_GetFloatv
    li	$a0,2915
    # Line 1983
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s0,1368
    jal	__glMgrim_GetFloatv
    li	$a0,2916
    # Line 1984
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,1340
    jal	__glMgrim_GetIntegerv
    li	$a0,2917
    # Line 1985
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$sp,64
    jal	__glMgrim_GetFloatv
    li	$a0,2918
    # Line 1986
    lwc1	$f2,64($sp)
    swc1	$f2,1344($s0)
    # Line 1987
    lwc1	$f1,68($sp)
    swc1	$f1,1348($s0)
    # Line 1988
    lwc1	$f0,72($sp)
    ld	$ra,288($sp)
    swc1	$f0,1352($s0)
.L0daa0a20:
    andi	$a3,$s5,0x8000
    beqz	$a3,.L0daa0a68
    # Line 1992
    andi	$a3,$s5,0x40
    lw	$v1,1796($s3)
    sw	$v1,1644($s0)
    lw	$at,1800($s3)
    sw	$at,1648($s0)
    lw	$a4,1804($s3)
    sw	$a4,1652($s0)
    lw	$a3,1808($s3)
    sw	$a3,1656($s0)
    lw	$v1,1812($s3)
    sw	$v1,1660($s0)
    lw	$at,1816($s3)
    sw	$at,1664($s0)
    lw	$a4,1820($s3)
    sw	$a4,1668($s0)
    andi	$a3,$s5,0x40
.L0daa0a68:
    beqz	$a3,.L0daa0f00
    sd	$ra,288($sp)
    # Line 1999
    lw	$a5,3328($s3)
    # Line 2002
    li	$a0,2896
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    # Line 1999
    sll	$a4,$a5,0x3
    subu	$a4,$a4,$a5
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a5
    sll	$a4,$a4,0x2
    # Line 2002
    jal	__glMgrim_IsEnabled
    sd	$a4,200($sp)
    beqz	$v0,.L0daa1edc
    lw	$a0,1544($s0)
    ori	$at,$a0,0x40
    sw	$at,1544($s0)
.L0daa0aa8:
    # Line 2003
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16384
    beqz	$v0,.L0daa1eec
    lw	$a0,1552($s0)
    ori	$v1,$a0,0x1
    sw	$v1,1552($s0)
.L0daa0ac4:
    # Line 2004
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16385
    beqz	$v0,.L0daa1efc
    lw	$a0,1552($s0)
    ori	$a3,$a0,0x2
    sw	$a3,1552($s0)
.L0daa0ae0:
    # Line 2005
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16386
    beqz	$v0,.L0daa1f0c
    lw	$a0,1552($s0)
    ori	$a4,$a0,0x4
    sw	$a4,1552($s0)
.L0daa0afc:
    # Line 2006
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16387
    beqz	$v0,.L0daa1f1c
    lw	$a0,1552($s0)
    ori	$at,$a0,0x8
    sw	$at,1552($s0)
.L0daa0b18:
    # Line 2007
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16388
    beqz	$v0,.L0daa1f2c
    lw	$a0,1552($s0)
    ori	$v1,$a0,0x10
    sw	$v1,1552($s0)
.L0daa0b34:
    # Line 2008
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16389
    beqz	$v0,.L0daa1f3c
    lw	$a0,1552($s0)
    ori	$a3,$a0,0x20
    sw	$a3,1552($s0)
.L0daa0b50:
    # Line 2009
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16390
    beqz	$v0,.L0daa1f4c
    lw	$a0,1552($s0)
    ori	$a4,$a0,0x40
    sw	$a4,1552($s0)
.L0daa0b6c:
    # Line 2010
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,16391
    beqz	$v0,.L0daa1f5c
    lw	$a0,1552($s0)
    ori	$at,$a0,0x80
    sw	$at,1552($s0)
.L0daa0b88:
    # Line 2011
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2903
    beqz	$v0,.L0daa1f6c
    lw	$a0,1544($s0)
    ori	$v1,$a0,0x80
    sw	$v1,1544($s0)
.L0daa0ba4:
    # Line 2013
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,1144
    jal	__glMgrim_GetIntegerv
    li	$a0,2901
    # Line 2015
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,1148
    jal	__glMgrim_GetIntegerv
    li	$a0,2902
    # Line 2017
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,1152
    jal	__glMgrim_GetIntegerv
    li	$a0,2900
    # Line 2019
    # lw $t9, -30868($gp) # &__glMgrim_GetBooleanv
    addiu	$a1,$s0,1172
    jal	__glMgrim_GetBooleanv
    li	$a0,2897
    # Line 2021
    # lw $t9, -30868($gp) # &__glMgrim_GetBooleanv
    addiu	$a1,$s0,1173
    jal	__glMgrim_GetBooleanv
    li	$a0,2898
    # Line 2023
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$sp,80
    jal	__glMgrim_GetFloatv
    li	$a0,2899
    # Line 2024
    lwc1	$f6,80($sp)
    swc1	$f6,1156($s0)
    # Line 2025
    lwc1	$f5,84($sp)
    swc1	$f5,1160($s0)
    # Line 2026
    lwc1	$f4,88($sp)
    # Line 2029
    addiu	$a2,$s0,1176
    li	$a1,4608
    # Line 2026
    swc1	$f4,1164($s0)
    # Line 2029
    # lw $t9, -30852($gp) # &__glMgrim_GetMaterialfv
    # Line 2027
    lwc1	$f3,92($sp)
    # Line 2029
    li	$a0,1028
    jal	__glMgrim_GetMaterialfv
    # Line 2027
    swc1	$f3,1168($s0)
    # Line 2031
    # lw $t9, -30852($gp) # &__glMgrim_GetMaterialfv
    addiu	$a2,$s0,1256
    li	$a1,4608
    jal	__glMgrim_GetMaterialfv
    li	$a0,1029
    # Line 2034
    # lw $t9, -30852($gp) # &__glMgrim_GetMaterialfv
    addiu	$a2,$s0,1192
    li	$a1,4609
    jal	__glMgrim_GetMaterialfv
    li	$a0,1028
    # Line 2036
    # lw $t9, -30852($gp) # &__glMgrim_GetMaterialfv
    addiu	$a2,$s0,1272
    li	$a1,4609
    jal	__glMgrim_GetMaterialfv
    li	$a0,1029
    # Line 2039
    # lw $t9, -30852($gp) # &__glMgrim_GetMaterialfv
    addiu	$a2,$s0,1208
    li	$a1,4610
    jal	__glMgrim_GetMaterialfv
    li	$a0,1028
    # Line 2041
    # lw $t9, -30852($gp) # &__glMgrim_GetMaterialfv
    addiu	$a2,$s0,1288
    li	$a1,4610
    jal	__glMgrim_GetMaterialfv
    li	$a0,1029
    # Line 2044
    # lw $t9, -30852($gp) # &__glMgrim_GetMaterialfv
    addiu	$a2,$s0,1224
    li	$a1,5632
    jal	__glMgrim_GetMaterialfv
    li	$a0,1028
    # Line 2046
    # lw $t9, -30852($gp) # &__glMgrim_GetMaterialfv
    addiu	$a2,$s0,1304
    li	$a1,5632
    jal	__glMgrim_GetMaterialfv
    li	$a0,1029
    # Line 2049
    # lw $t9, -30852($gp) # &__glMgrim_GetMaterialfv
    addiu	$a2,$s0,1240
    li	$a1,5633
    jal	__glMgrim_GetMaterialfv
    li	$a0,1028
    # Line 2051
    # lw $t9, -30852($gp) # &__glMgrim_GetMaterialfv
    addiu	$a2,$s0,1320
    li	$a1,5633
    jal	__glMgrim_GetMaterialfv
    li	$a0,1029
    # Line 2054
    # lw $t9, -30852($gp) # &__glMgrim_GetMaterialfv
    addiu	$a2,$sp,80
    li	$a1,5635
    jal	__glMgrim_GetMaterialfv
    li	$a0,1028
    # Line 2055
    lwc1	$f9,80($sp)
    swc1	$f9,1244($s0)
    # Line 2056
    lwc1	$f8,84($sp)
    # Line 2059
    addiu	$a2,$sp,80
    li	$a1,5635
    # Line 2056
    swc1	$f8,1252($s0)
    # Line 2059
    # lw $t9, -30852($gp) # &__glMgrim_GetMaterialfv
    # Line 2057
    lwc1	$f7,88($sp)
    # Line 2059
    li	$a0,1029
    jal	__glMgrim_GetMaterialfv
    # Line 2057
    swc1	$f7,1248($s0)
    # Line 2060
    lwc1	$f12,80($sp)
    swc1	$f12,1324($s0)
    # Line 2061
    lwc1	$f11,84($sp)
    swc1	$f11,1332($s0)
    # Line 2062
    lwc1	$f10,88($sp)
    swc1	$f10,1328($s0)
    # Line 2064
    lw	$t9,0($s3)
    ld	$a1,200($sp)
    jalr	$t9
    move	$a0,$s3
    sw	$v0,1336($s0)
    sd	$s1,352($sp)
    # Line 2067
    lw	$a3,3328($s3)
    # Line 2064
    move	$s4,$v0
    sd	$zero,232($sp)
    # Line 2067
    beqz	$a3,.L0daa0f00
    ld	$ra,288($sp)
    addiu	$s7,$s4,104
    addiu	$s6,$s4,96
    addiu	$s1,$s4,64
    addiu	$s8,$s4,80
    addiu	$a4,$s4,32
    addiu	$at,$s4,100
    addiu	$v1,$s4,108
    addiu	$a3,$s4,112
    sd	$a3,280($sp)
    sd	$v1,240($sp)
    sd	$at,272($sp)
    sd	$a4,248($sp)
    sd	$s8,256($sp)
    addiu	$s8,$s4,16
    sd	$s1,264($sp)
    li	$s1,16384
.L0daa0db0:
    # Line 2068
    # lw $t9, -30860($gp) # &__glMgrim_GetLightfv
    move	$a0,$s1
    move	$a2,$s4
    jal	__glMgrim_GetLightfv
    li	$a1,4608
    # Line 2070
    # lw $t9, -30860($gp) # &__glMgrim_GetLightfv
    move	$a0,$s1
    move	$a2,$s8
    jal	__glMgrim_GetLightfv
    li	$a1,4609
    # Line 2072
    # lw $t9, -30860($gp) # &__glMgrim_GetLightfv
    move	$a0,$s1
    ld	$a2,248($sp)
    jal	__glMgrim_GetLightfv
    li	$a1,4610
    # Line 2075
    # lw $t9, -30860($gp) # &__glMgrim_GetLightfv
    move	$a0,$s1
    ld	$a2,264($sp)
    jal	__glMgrim_GetLightfv
    li	$a1,4611
    # Line 2077
    # lw $t9, -30860($gp) # &__glMgrim_GetLightfv
    move	$a0,$s1
    ld	$a2,256($sp)
    jal	__glMgrim_GetLightfv
    li	$a1,4612
    # Line 2079
    # lw $t9, -30860($gp) # &__glMgrim_GetLightfv
    move	$a0,$s1
    move	$a2,$s6
    jal	__glMgrim_GetLightfv
    li	$a1,4613
    # Line 2081
    # lw $t9, -30860($gp) # &__glMgrim_GetLightfv
    move	$a0,$s1
    ld	$a2,272($sp)
    jal	__glMgrim_GetLightfv
    li	$a1,4614
    # Line 2089
    addiu	$s4,$s4,116
    # Line 2083
    # lw $t9, -30860($gp) # &__glMgrim_GetLightfv
    move	$a0,$s1
    move	$a2,$s7
    jal	__glMgrim_GetLightfv
    li	$a1,4615
    # Line 2089
    addiu	$s7,$s7,116
    # Line 2085
    # lw $t9, -30860($gp) # &__glMgrim_GetLightfv
    move	$a0,$s1
    ld	$a2,240($sp)
    jal	__glMgrim_GetLightfv
    li	$a1,4616
    # Line 2089
    addiu	$s8,$s8,116
    # Line 2087
    # lw $t9, -30860($gp) # &__glMgrim_GetLightfv
    ld	$a2,280($sp)
    move	$a0,$s1
    jal	__glMgrim_GetLightfv
    li	$a1,4617
    # Line 2089
    addiu	$s6,$s6,116
    # Line 2067
    addiu	$s1,$s1,1
    # Line 2089
    ld	$a3,248($sp)
    ld	$v1,264($sp)
    ld	$at,256($sp)
    addiu	$a3,$a3,116
    addiu	$v1,$v1,116
    addiu	$at,$at,116
    sd	$at,256($sp)
    # Line 2067
    lw	$at,3328($s3)
    sd	$v1,264($sp)
    # Line 2089
    ld	$v1,280($sp)
    sd	$a3,248($sp)
    ld	$a4,272($sp)
    ld	$a3,240($sp)
    addiu	$v1,$v1,116
    addiu	$a4,$a4,116
    sd	$a4,272($sp)
    # Line 2067
    ld	$a4,232($sp)
    # Line 2089
    addiu	$a3,$a3,116
    sd	$a3,240($sp)
    # Line 2067
    addiu	$a4,$a4,1
    sd	$a4,232($sp)
    sltu	$a4,$a4,$at
    bnez	$a4,.L0daa0db0
    sd	$v1,280($sp)
    lui	$s6,0x8
    lui	$s7,0x2
    lui	$s8,0x1
    ld	$ra,288($sp)
    ld	$s1,352($sp)
.L0daa0f00:
    andi	$a4,$s5,0x4
    beqz	$a4,.L0daa0f8c
    lui	$s4,0x4
    # Line 2095
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    sd	$ra,288($sp)
    jal	__glMgrim_IsEnabled
    li	$a0,2848
    beqz	$v0,.L0daa1f7c
    lw	$a0,1544($s0)
    ori	$at,$a0,0x200
    sw	$at,1544($s0)
.L0daa0f2c:
    # Line 2096
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2852
    beqz	$v0,.L0daa1f8c
    lw	$a0,1544($s0)
    ori	$v1,$a0,0x100
    sw	$v1,1544($s0)
.L0daa0f48:
    # Line 2097
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s0,292
    jal	__glMgrim_GetFloatv
    li	$a0,2849
    # Line 2098
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$sp,96
    jal	__glMgrim_GetIntegerv
    li	$a0,2853
    # Line 2100
    addiu	$a1,$sp,96
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    # Line 2099
    lw	$a2,96($sp)
    # Line 2100
    li	$a0,2854
    jal	__glMgrim_GetIntegerv
    # Line 2099
    sh	$a2,304($s0)
    # Line 2101
    lw	$a3,96($sp)
    ld	$ra,288($sp)
    sh	$a3,306($s0)
.L0daa0f8c:
    and	$a4,$s7,$s5
    beqz	$a4,.L0daa0fa4
    # Line 2105
    andi	$v1,$s5,0x20
    lw	$at,1872($s3)
    sw	$at,1720($s0)
    andi	$v1,$s5,0x20
.L0daa0fa4:
    beqz	$v1,.L0daa10dc
    # Line 2110
    li	$a0,15
    move	$v0,$zero
    addiu	$a2,$s0,464
    addiu	$a5,$s3,616
.L0daa0fb8:
    addu	$a4,$v0,$a2
    addu	$a3,$v0,$a5
    addiu	$v0,$v0,8
    ld	$a3,0($a3)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0daa0fb8
    sd	$a3,0($a4)
    # Line 2111
    li	$a0,12
    move	$a1,$zero
    move	$a7,$s1
    # Line 2110
    addu	$a4,$v0,$a5
    lw	$a4,0($a4)
    # Line 2111
    addiu	$a6,$s2,-32292
    # Line 2110
    addu	$at,$v0,$a2
    sw	$a4,0($at)
.L0daa0ff4:
    # Line 2111
    addu	$v1,$a1,$a7
    addu	$at,$a1,$a6
    addiu	$a1,$a1,4
    lw	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0daa0ff4
    sw	$at,0($v1)
    # Line 2112
    li	$v0,20
    move	$a0,$zero
    addiu	$a1,$s1,48
    addiu	$a2,$s2,-32244
.L0daa1020:
    addu	$a3,$a0,$a1
    addu	$v1,$a0,$a2
    addiu	$a0,$a0,4
    lw	$v1,0($v1)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0daa1020
    sw	$v1,0($a3)
    # Line 2113
    li	$a0,8
    move	$v0,$zero
    addiu	$a1,$s1,128
    addiu	$a2,$s2,-32164
.L0daa104c:
    addu	$a4,$v0,$a1
    addu	$a3,$v0,$a2
    addiu	$v0,$v0,4
    lw	$a3,0($a3)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0daa104c
    sw	$a3,0($a4)
    # Line 2114
    li	$v0,68
    move	$a0,$zero
    addiu	$a1,$s1,160
    addiu	$a2,$s2,-32132
.L0daa1078:
    addu	$at,$a0,$a1
    addu	$a4,$a0,$a2
    addiu	$a0,$a0,4
    lw	$a4,0($a4)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0daa1078
    sw	$a4,0($at)
    # Line 2115
    li	$v0,120
    move	$a0,$zero
    addiu	$a2,$s2,-31860
    addiu	$a1,$s1,432
    ld	$s1,344($sp)
.L0daa10a8:
    addu	$v1,$a0,$a1
    addu	$at,$a0,$a2
    addiu	$a0,$a0,4
    lw	$at,0($at)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0daa10a8
    sw	$at,0($v1)
    # Line 2116
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,1000
    sd	$ra,288($sp)
    jal	__glMgrim_GetIntegerv
    li	$a0,3074
    ld	$ra,288($sp)
.L0daa10dc:
    andi	$v1,$s5,0x2
    beqz	$v1,.L0daa1124
    ld	$s1,344($sp)
    # Line 2120
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    sd	$ra,288($sp)
    jal	__glMgrim_IsEnabled
    li	$a0,2832
    beqz	$v0,.L0daa1f9c
    lw	$a0,1544($s0)
    ori	$a3,$a0,0x400
    sw	$a3,1544($s0)
.L0daa1108:
    # Line 2121
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$s0,280
    jal	__glMgrim_GetFloatv
    li	$a0,2833
    lbu	$a4,-25435($s2)
    beqz	$a4,.L0daa1fac
    ld	$ra,288($sp)
.L0daa1124:
    # Line 2141
    andi	$at,$s5,0x8
    beqz	$at,.L0daa11ec
    # Line 2149
    nop	# was lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,316
    sd	$ra,288($sp)
    jal	__glMgrim_GetIntegerv
    li	$a0,2885
    # Line 2150
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,320
    jal	__glMgrim_GetIntegerv
    li	$a0,2886
    # Line 2151
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$sp,104
    jal	__glMgrim_GetIntegerv
    li	$a0,2880
    # Line 2152
    lw	$v1,104($sp)
    sw	$v1,308($s0)
    # Line 2155
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    # Line 2153
    lw	$v0,108($sp)
    # Line 2155
    li	$a0,10754
    jal	__glMgrim_IsEnabled
    # Line 2153
    sw	$v0,312($s0)
    # Line 2155
    beqz	$v0,.L0daa2004
    lw	$a0,1548($s0)
    ori	$a3,$a0,0x400
    sw	$a3,1548($s0)
.L0daa118c:
    # Line 2156
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,10753
    beqz	$v0,.L0daa2014
    lw	$a0,1548($s0)
    ori	$a4,$a0,0x200
    sw	$a4,1548($s0)
.L0daa11a8:
    # Line 2157
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,0x8037
    beqz	$v0,.L0daa2024
    lw	$a0,1544($s0)
    lui	$at,0x100
    or	$at,$a0,$at
    sw	$at,1544($s0)
.L0daa11c8:
    # Line 2158
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,324
    jal	__glMgrim_GetIntegerv
    li	$a0,0x8038
    # Line 2159
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,328
    jal	__glMgrim_GetIntegerv
    li	$a0,0x8039
    ld	$ra,288($sp)
.L0daa11ec:
    andi	$v1,$s5,0x10
    beqz	$v1,.L0daa1220
    # Line 2163
    li	$v0,16
    move	$a0,$zero
    addiu	$a1,$s0,336
    addiu	$a2,$s3,488
.L0daa1204:
    addu	$a4,$a0,$a1
    addu	$a3,$a0,$a2
    addiu	$a0,$a0,8
    ld	$a3,0($a3)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0daa1204
    sd	$a3,0($a4)
.L0daa1220:
    and	$a4,$s6,$s5
    beqz	$a4,.L0daa127c
    # Line 2168
    nop	# was lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    sd	$ra,288($sp)
    jal	__glMgrim_IsEnabled
    li	$a0,3089
    beqz	$v0,.L0daa2038
    lw	$a0,1544($s0)
    ori	$at,$a0,0x4000
    sw	$at,1544($s0)
.L0daa1248:
    # Line 2169
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$sp,112
    jal	__glMgrim_GetIntegerv
    li	$a0,3088
    # Line 2170
    lw	$ra,112($sp)
    sw	$ra,2260($s0)
    # Line 2171
    lw	$a4,116($sp)
    sw	$a4,2264($s0)
    # Line 2172
    lw	$a3,120($sp)
    sw	$a3,2268($s0)
    # Line 2173
    lw	$v1,124($sp)
    ld	$ra,288($sp)
    sw	$v1,2272($s0)
.L0daa127c:
    andi	$at,$s5,0x400
    beqz	$at,.L0daa1348
    # Line 2179
    nop	# was lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    sd	$ra,288($sp)
    jal	__glMgrim_IsEnabled
    li	$a0,2960
    beqz	$v0,.L0daa2048
    lw	$a0,1544($s0)
    ori	$v1,$a0,0x8000
    sw	$v1,1544($s0)
.L0daa12a4:
    # Line 2180
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,1416
    jal	__glMgrim_GetIntegerv
    li	$a0,2962
    # Line 2181
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$sp,128
    jal	__glMgrim_GetIntegerv
    li	$a0,2961
    # Line 2183
    addiu	$a1,$sp,128
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    # Line 2182
    lw	$a2,128($sp)
    # Line 2183
    li	$a0,2967
    jal	__glMgrim_GetIntegerv
    # Line 2182
    sh	$a2,1420($s0)
    # Line 2185
    addiu	$a1,$sp,128
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    # Line 2184
    lw	$a3,128($sp)
    # Line 2185
    li	$a0,2963
    jal	__glMgrim_GetIntegerv
    # Line 2184
    sh	$a3,1422($s0)
    # Line 2187
    addiu	$a1,$sp,128
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    # Line 2186
    lw	$a4,128($sp)
    # Line 2187
    li	$a0,2968
    jal	__glMgrim_GetIntegerv
    # Line 2186
    sh	$a4,1424($s0)
    # Line 2189
    addiu	$a1,$s0,1428
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    # Line 2188
    lw	$a5,128($sp)
    # Line 2189
    li	$a0,2964
    jal	__glMgrim_GetIntegerv
    # Line 2188
    sh	$a5,1426($s0)
    # Line 2190
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,1432
    jal	__glMgrim_GetIntegerv
    li	$a0,2965
    # Line 2191
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,1436
    jal	__glMgrim_GetIntegerv
    li	$a0,2966
    ld	$ra,288($sp)
.L0daa1348:
    and	$at,$s4,$s5
    beqz	$at,.L0daa166c
    # Line 2196
    li	$v0,31
    move	$a0,$zero
    addiu	$a1,$s0,1724
    addiu	$a2,$s3,1876
.L0daa1360:
    addu	$a3,$a0,$a1
    addu	$v1,$a0,$a2
    addiu	$a0,$a0,4
    lw	$v1,0($v1)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0daa1360
    sw	$v1,0($a3)
    # Line 2197
    li	$a0,15
    move	$v0,$zero
    addiu	$a5,$s0,1848
    addiu	$a2,$s3,2000
.L0daa138c:
    addu	$a4,$v0,$a5
    addu	$a3,$v0,$a2
    addiu	$v0,$v0,8
    ld	$a3,0($a3)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0daa138c
    sd	$a3,0($a4)
    # Line 2198
    li	$a1,31
    move	$a0,$zero
    addiu	$a6,$s0,1972
    # Line 2197
    addu	$a4,$v0,$a2
    lw	$a4,0($a4)
    # Line 2198
    addiu	$a7,$s3,2124
    # Line 2197
    addu	$at,$v0,$a5
    sw	$a4,0($at)
.L0daa13c8:
    # Line 2198
    addu	$v1,$a0,$a6
    addu	$at,$a0,$a7
    addiu	$a0,$a0,4
    lw	$at,0($at)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0daa13c8
    sw	$at,0($v1)
    # Line 2199
    li	$a0,15
    move	$v0,$zero
    addiu	$a1,$s0,2096
    addiu	$a2,$s3,2248
.L0daa13f4:
    addu	$a3,$v0,$a1
    addu	$v1,$v0,$a2
    addiu	$v0,$v0,8
    ld	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0daa13f4
    sd	$v1,0($a3)
    addu	$a4,$v0,$a2
    lw	$a4,0($a4)
    addu	$t9,$v0,$a1
    sw	$a4,0($t9)
    lbu	$a3,-25435($s2)
    sd	$ra,288($sp)
    beqz	$a3,.L0daa1958
    lw	$t9,0($s3)
    # Line 2205
    move	$a0,$s3
    jalr	$t9
    li	$a1,1120
    sw	$v0,2220($s0)
    # Line 2207
    lw	$t9,0($s3)
    li	$a1,36
    jalr	$t9
    move	$a0,$s3
    # Line 2210
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    li	$a0,3552
    jal	__glMgrim_IsEnabled
    # Line 2207
    sw	$v0,2224($s0)
    # Line 2210
    beqz	$v0,.L0daa1a68
    lw	$a0,1544($s0)
    or	$at,$s8,$a0
    sw	$at,1544($s0)
.L0daa1470:
    # Line 2211
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3553
    beqz	$v0,.L0daa1a7c
    lw	$a0,1544($s0)
    or	$v1,$s7,$a0
    sw	$v1,1544($s0)
.L0daa148c:
    # Line 2212
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,0x806f
    beqz	$v0,.L0daa1a90
    lw	$a0,1544($s0)
    lui	$a3,0x4000
    or	$a3,$a0,$a3
    sw	$a3,1544($s0)
.L0daa14ac:
    # Line 2214
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3168
    beqz	$v0,.L0daa1aa4
    lw	$a0,1544($s0)
    or	$a4,$s4,$a0
    sw	$a4,1544($s0)
.L0daa14c8:
    # Line 2215
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3169
    beqz	$v0,.L0daa1ab8
    lw	$a0,1544($s0)
    or	$at,$s6,$a0
    sw	$at,1544($s0)
.L0daa14e4:
    # Line 2216
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3170
    beqz	$v0,.L0daa1acc
    lw	$a0,1544($s0)
    lui	$v1,0x10
    or	$v1,$a0,$v1
    sw	$v1,1544($s0)
.L0daa1504:
    # Line 2217
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3171
    beqz	$v0,.L0daa1ae0
    lw	$a0,1544($s0)
    lui	$a3,0x20
    or	$a3,$a0,$a3
    sw	$a3,1544($s0)
.L0daa1524:
    move	$s4,$zero
    li	$s7,1120
    li	$s8,224
    lw	$s2,136($sp)
    b	.L0daa15ec
    lw	$s6,132($sp)
.L0daa153c:
    # Line 2224
    li	$s6,0x8068
    # Line 2223
    li	$s2,3552
.L0daa1544:
    # Line 2243
    # lw $t9, -30816($gp) # &__glMgrim_GetTexParameteriv
.L0daa1548:
    move	$a0,$s2
    move	$a2,$s1
    jal	__glMgrim_GetTexParameteriv
    li	$a1,10242
    # Line 2245
    # lw $t9, -30816($gp) # &__glMgrim_GetTexParameteriv
    move	$a0,$s2
    addiu	$a2,$s1,4
    jal	__glMgrim_GetTexParameteriv
    li	$a1,10243
    # Line 2247
    # lw $t9, -30816($gp) # &__glMgrim_GetTexParameteriv
    move	$a0,$s2
    addiu	$a2,$s1,8
    jal	__glMgrim_GetTexParameteriv
    li	$a1,0x8072
    # Line 2249
    # lw $t9, -30816($gp) # &__glMgrim_GetTexParameteriv
    move	$a0,$s2
    addiu	$a2,$s1,12
    jal	__glMgrim_GetTexParameteriv
    li	$a1,10241
    # Line 2251
    # lw $t9, -30816($gp) # &__glMgrim_GetTexParameteriv
    move	$a0,$s2
    addiu	$a2,$s1,16
    jal	__glMgrim_GetTexParameteriv
    li	$a1,10240
    # Line 2253
    # lw $t9, -30820($gp) # &__glMgrim_GetTexParameterfv
    move	$a0,$s2
    addiu	$a2,$s1,152
    jal	__glMgrim_GetTexParameterfv
    li	$a1,4100
    # Line 2255
    # lw $t9, -30820($gp) # &__glMgrim_GetTexParameterfv
    move	$a0,$s2
    addiu	$a2,$s1,220
    jal	__glMgrim_GetTexParameterfv
    li	$a1,0x8066
    # Line 2257
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    move	$a0,$s6
    jal	__glMgrim_GetIntegerv
    addiu	$a1,$s1,216
    # Line 2219
    addiu	$s4,$s4,224
    beq	$s7,$s4,.L0daa1628
    # Line 2261
    li	$a1,8704
.L0daa15ec:
    # Line 2220
    lw	$s1,2220($s0)
    li	$at,448
    # Line 2221
    beqz	$s4,.L0daa153c
    # Line 2220
    addu	$s1,$s1,$s4
    # Line 2221
    beql	$s8,$s4,.L0daa1924
    # Line 2228
    li	$s6,0x8069
    # Line 2221
    beq	$at,$s4,.L0daa192c
    li	$v1,672
    beq	$v1,$s4,.L0daa194c
    li	$a3,896
    bne	$a3,$s4,.L0daa1548
    # Line 2243
    nop	# was lw $t9, -30816($gp) # &__glMgrim_GetTexParameteriv
    # Line 2240
    li	$s6,0x8096
    b	.L0daa1544
    # Line 2239
    li	$s2,0x8095
.L0daa1628:
    # Line 2261
    # lw $t9, -30824($gp) # &__glMgrim_GetTexEnviv
    # Line 2260
    lw	$s1,2224($s0)
    # Line 2261
    li	$a0,8960
    jal	__glMgrim_GetTexEnviv
    move	$a2,$s1
    # Line 2263
    addiu	$a2,$s1,4
    li	$a1,8705
    li	$a0,8960
    ld	$s7,328($sp)
    ld	$s2,320($sp)
    # lw $t9, -30828($gp) # &__glMgrim_GetTexEnvfv
    ld	$s6,312($sp)
    ld	$s8,304($sp)
    jal	__glMgrim_GetTexEnvfv
    ld	$s4,296($sp)
    ld	$s1,344($sp)
    ld	$ra,288($sp)
.L0daa166c:
    sd	$ra,288($sp)
    ld	$s7,328($sp)
    ld	$s2,320($sp)
    ld	$s6,312($sp)
    ld	$s8,304($sp)
    # Line 2288
    andi	$a4,$s5,0x1000
    beqz	$a4,.L0daa1820
    ld	$s4,296($sp)
    # Line 2299
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    # Line 2296
    lw	$s1,3332($s3)
    # Line 2299
    li	$a0,12288
    jal	__glMgrim_IsEnabled
    # Line 2296
    sll	$s1,$s1,0x4
    # Line 2299
    beqz	$v0,.L0daa205c
    lw	$a0,1556($s0)
    ori	$at,$a0,0x1
    sw	$at,1556($s0)
.L0daa16b0:
    # Line 2300
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,12289
    beqz	$v0,.L0daa206c
    lw	$a0,1556($s0)
    ori	$v1,$a0,0x2
    sw	$v1,1556($s0)
.L0daa16cc:
    # Line 2301
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,12290
    beqz	$v0,.L0daa207c
    lw	$a0,1556($s0)
    ori	$a3,$a0,0x4
    sw	$a3,1556($s0)
.L0daa16e8:
    # Line 2302
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,12291
    beqz	$v0,.L0daa208c
    lw	$a0,1556($s0)
    ori	$a4,$a0,0x8
    sw	$a4,1556($s0)
.L0daa1704:
    # Line 2303
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,12292
    beqz	$v0,.L0daa209c
    lw	$a0,1556($s0)
    ori	$at,$a0,0x10
    sw	$at,1556($s0)
.L0daa1720:
    # Line 2304
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,12293
    beqz	$v0,.L0daa20ac
    lw	$a0,1556($s0)
    ori	$v1,$a0,0x20
    sw	$v1,1556($s0)
.L0daa173c:
    # Line 2305
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,2977
    beqz	$v0,.L0daa20bc
    lw	$a0,1544($s0)
    lui	$a3,0x40
    or	$a3,$a0,$a3
    sw	$a3,1544($s0)
.L0daa175c:
    # Line 2307
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$s0,1496
    jal	__glMgrim_GetIntegerv
    li	$a0,2976
    # Line 2308
    lw	$t9,0($s3)
    move	$a0,$s3
    jalr	$t9
    move	$a1,$s1
    sw	$v0,1500($s0)
    # Line 2311
    lw	$a4,3332($s3)
    move	$s2,$zero
    ld	$s1,344($sp)
    blez	$a4,.L0daa1820
    ld	$ra,288($sp)
    li	$s1,12288
    move	$s4,$zero
.L0daa179c:
    # Line 2312
    # lw $t9, -30864($gp) # &__glMgrim_GetClipPlane
    move	$a0,$s1
    # Line 2311
    addiu	$s2,$s2,1
    # Line 2312
    jal	__glMgrim_GetClipPlane
    addiu	$a1,$sp,144
    # Line 2313
    ldc1	$f3,144($sp)
    lw	$at,1500($s0)
    cvt.s.d	$f3,$f3
    addu	$at,$at,$s4
    swc1	$f3,0($at)
    # Line 2314
    ldc1	$f2,152($sp)
    lw	$a4,1500($s0)
    cvt.s.d	$f2,$f2
    addu	$a4,$a4,$s4
    swc1	$f2,4($a4)
    # Line 2315
    ldc1	$f1,160($sp)
    lw	$a3,1500($s0)
    cvt.s.d	$f1,$f1
    addu	$a3,$a3,$s4
    swc1	$f1,8($a3)
    # Line 2316
    ldc1	$f0,168($sp)
    lw	$v1,1500($s0)
    cvt.s.d	$f0,$f0
    addu	$v1,$v1,$s4
    swc1	$f0,12($v1)
    # Line 2311
    lw	$at,3332($s3)
    addiu	$s1,$s1,1
    slt	$at,$s2,$at
    bnez	$at,.L0daa179c
    addiu	$s4,$s4,16
    ld	$s1,344($sp)
    ld	$s4,296($sp)
    ld	$ra,288($sp)
.L0daa1820:
    andi	$v1,$s5,0x800
    beqz	$v1,.L0daa190c
    ld	$s2,320($sp)
    # Line 2326
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$sp,176
    sd	$ra,288($sp)
    jal	__glMgrim_GetIntegerv
    li	$a0,2978
    # Line 2328
    lw	$a2,176($sp)
    sw	$a2,1440($s0)
    # Line 2329
    lw	$a0,180($sp)
    sw	$a0,1444($s0)
    # Line 2330
    lw	$a3,184($sp)
    sw	$a3,1448($s0)
    # Line 2332
    mtc1	$a3,$f9
    # Line 2331
    lw	$a1,188($sp)
    # Line 2332
    cvt.s.w	$f9,$f9
    # Line 2331
    sw	$a1,1452($s0)
    # Line 2332
    lwc1	$f8,3280($s3)
    mul.s	$f8,$f8,$f9
    # Line 2333
    mtc1	$a2,$f7
    nop
    cvt.s.w	$f7,$f7
    # Line 2334
    mtc1	$a1,$f6
    # Line 2333
    add.s	$f7,$f7,$f8
    # Line 2334
    cvt.s.w	$f6,$f6
    # Line 2332
    swc1	$f8,1472($s0)
    # Line 2333
    swc1	$f7,1476($s0)
    # Line 2334
    lwc1	$f5,3280($s3)
    mul.s	$f5,$f5,$f6
    # Line 2335
    mtc1	$a0,$f4
    nop
    cvt.s.w	$f4,$f4
    # Line 2337
    addiu	$a1,$sp,192
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    # Line 2335
    add.s	$f4,$f4,$f5
    # Line 2337
    li	$a0,2928
    # Line 2334
    swc1	$f5,1480($s0)
    # Line 2337
    jal	__glMgrim_GetFloatv
    # Line 2335
    swc1	$f4,1484($s0)
    # Line 2338
    lwc1	$f1,192($sp)
    cvt.d.s	$f1,$f1
    sdc1	$f1,1456($s0)
    # Line 2339
    lwc1	$f2,196($sp)
    cvt.d.s	$f2,$f2
    sdc1	$f2,1464($s0)
    # Line 2340
    sub.d	$f0,$f2,$f1
    lwc1	$f3,3280($s3)
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f0
    cvt.s.d	$f3,$f3
    swc1	$f3,1488($s0)
    # Line 2342
    add.d	$f1,$f1,$f2
    lwc1	$f0,3280($s3)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f1
    cvt.s.d	$f0,$f0
    ld	$ra,288($sp)
    swc1	$f0,1492($s0)
.L0daa190c:
    ld	$gp,216($sp)
    # Line 2349
    ld	$s0,336($sp)
    ld	$s3,224($sp)
    ld	$s5,208($sp)
    jr	$ra
    addiu	$sp,$sp,384
.L0daa1924:
    # Line 2229
    b	.L0daa1544
    # Line 2227
    li	$s2,3553
.L0daa192c:
    # Line 2232
    li	$s6,0x806a
    # Line 2233
    b	.L0daa1544
    # Line 2231
    li	$s2,0x806f
.L0daa1938:
    # Line 1967
    lui	$s6,0x8
    lui	$s4,0x4
    sd	$s7,328($sp)
    b	.L0daa0940
    lui	$s7,0x2
.L0daa194c:
    # Line 2236
    li	$s6,0x814f
    # Line 2237
    b	.L0daa1544
    # Line 2235
    li	$s2,0x8134
.L0daa1958:
    # Line 2271
    move	$a0,$s3
    ld	$s7,328($sp)
    ld	$s6,312($sp)
    # Line 2268
    lw	$s2,3340($s3)
    ld	$s8,304($sp)
    # Line 2266
    lw	$s4,3336($s3)
    # Line 2268
    sll	$s1,$s2,0x3
    addu	$s1,$s1,$s2
    sll	$s1,$s1,0x2
    # Line 2266
    sll	$s2,$s4,0x3
    subu	$s2,$s2,$s4
    ld	$s4,296($sp)
    sll	$s2,$s2,0x5
    # Line 2271
    jalr	$t9
    move	$a1,$s2
    sw	$v0,2220($s0)
    # Line 2273
    lw	$t9,0($s3)
    move	$a1,$s1
    jalr	$t9
    move	$a0,$s3
    sw	$v0,2224($s0)
    # Line 2276
    lwc1	$f9,2380($s3)
    swc1	$f9,2228($s0)
    # Line 2277
    lwc1	$f8,2384($s3)
    swc1	$f8,2232($s0)
    # Line 2278
    lwc1	$f7,2388($s3)
    swc1	$f7,2236($s0)
    # Line 2279
    lwc1	$f6,2392($s3)
    swc1	$f6,2240($s0)
    # Line 2281
    lwc1	$f5,2396($s3)
    swc1	$f5,2244($s0)
    # Line 2282
    lwc1	$f4,2400($s3)
    swc1	$f4,2248($s0)
    # Line 2283
    lwc1	$f3,2404($s3)
    swc1	$f3,2252($s0)
    # Line 2286
    move	$a2,$s2
    # Line 2284
    lwc1	$f2,2408($s3)
    # Line 2286
    # lw $t9, -17848($gp) # &memcpy
    lw	$a0,2220($s0)
    # Line 2284
    swc1	$f2,2256($s0)
    # Line 2286
    jal	memcpy
    lw	$a1,2372($s3)
    # Line 2288
    move	$a2,$s1
    # lw $t9, -17848($gp) # &memcpy
    lw	$a1,2376($s3)
    lw	$a0,2224($s0)
    jal	memcpy
    ld	$s2,320($sp)
    ld	$s1,344($sp)
    b	.L0daa166c
    ld	$ra,288($sp)
.L0daa1a24:
    # Line 1791
    move	$a0,$s3
    lw	$t9,4($s3)
    li	$a2,2936
    sd	$ra,288($sp)
    jalr	$t9
    li	$a1,1
    # Line 1793
    sw	$v0,0($s6)
    # Line 1791
    move	$s0,$v0
    # Line 1795
    lw	$t9,4($s3)
    li	$a2,912
    li	$a1,1
    jalr	$t9
    move	$a0,$s3
    move	$s1,$v0
    # Line 1797
    sw	$v0,0($s4)
    b	.L0da9ff78
    ld	$ra,288($sp)
.L0daa1a68:
    # Line 2210
    lui	$at,0x1
    nor	$at,$at,$zero
    and	$at,$a0,$at
    b	.L0daa1470
    sw	$at,1544($s0)
.L0daa1a7c:
    # Line 2211
    lui	$v1,0x2
    nor	$v1,$v1,$zero
    and	$v1,$a0,$v1
    b	.L0daa148c
    sw	$v1,1544($s0)
.L0daa1a90:
    # Line 2212
    lui	$a3,0x4000
    nor	$a3,$a3,$zero
    and	$a3,$a0,$a3
    b	.L0daa14ac
    sw	$a3,1544($s0)
.L0daa1aa4:
    # Line 2214
    lui	$a4,0x4
    nor	$a4,$a4,$zero
    and	$a4,$a0,$a4
    b	.L0daa14c8
    sw	$a4,1544($s0)
.L0daa1ab8:
    # Line 2215
    lui	$at,0x8
    nor	$at,$at,$zero
    and	$at,$a0,$at
    b	.L0daa14e4
    sw	$at,1544($s0)
.L0daa1acc:
    # Line 2216
    lui	$v1,0x10
    nor	$v1,$v1,$zero
    and	$v1,$a0,$v1
    b	.L0daa1504
    sw	$v1,1544($s0)
.L0daa1ae0:
    # Line 2217
    lui	$a3,0x20
    nor	$a3,$a3,$zero
    and	$a3,$a0,$a3
    b	.L0daa1524
    sw	$a3,1544($s0)
.L0daa1af4:
    # Line 2346
    li	$a0,1283
    ld	$s4,296($sp)
    ld	$s8,304($sp)
    # lw $t9, -27320($gp) # &__glSetError
    ld	$s6,312($sp)
    sd	$ra,288($sp)
    jal	__glSetError
    ld	$s2,320($sp)
    ld	$gp,216($sp)
    # Line 2347
    ld	$ra,288($sp)
    ld	$s3,224($sp)
    ld	$s5,208($sp)
    jr	$ra
    addiu	$sp,$sp,384
.L0daa1b2c:
    # Line 1817
    li	$a4,-2
    and	$a4,$a0,$a4
    b	.L0daa000c
    sw	$a4,1544($s0)
.L0daa1b3c:
    # Line 1820
    li	$at,-3
    and	$at,$a0,$at
    b	.L0daa0048
    sw	$at,1544($s0)
.L0daa1b4c:
    # Line 1825
    li	$v1,-9
    and	$v1,$a0,$v1
    b	.L0daa0094
    sw	$v1,1544($s0)
.L0daa1b5c:
    # Line 1827
    li	$a3,-5
    and	$a3,$a0,$a3
    b	.L0daa00c0
    sw	$a3,1544($s0)
.L0daa1b6c:
    # Line 1828
    li	$a4,-2049
    and	$a4,$a0,$a4
    b	.L0daa00dc
    sw	$a4,1548($s0)
.L0daa1b7c:
    # Line 1906
    li	$at,-17
    and	$at,$a0,$at
    b	.L0daa0370
    sw	$at,1544($s0)
.L0daa1b8c:
    # Line 1914
    li	$v1,-2
    and	$v1,$a0,$v1
    b	.L0daa03cc
    sw	$v1,1544($s0)
.L0daa1b9c:
    # Line 1915
    lui	$a3,0x80
    nor	$a3,$a3,$zero
    and	$a3,$a0,$a3
    b	.L0daa03ec
    sw	$a3,1544($s0)
.L0daa1bb0:
    # Line 1916
    li	$a4,-3
    and	$a4,$a0,$a4
    b	.L0daa0408
    sw	$a4,1544($s0)
.L0daa1bc0:
    # Line 1917
    li	$at,-4097
    and	$at,$a0,$at
    b	.L0daa0424
    sw	$at,1544($s0)
.L0daa1bd0:
    # Line 1918
    li	$v1,-17
    and	$v1,$a0,$v1
    b	.L0daa0440
    sw	$v1,1544($s0)
.L0daa1be0:
    # Line 1919
    li	$a3,-9
    and	$a3,$a0,$a3
    b	.L0daa045c
    sw	$a3,1544($s0)
.L0daa1bf0:
    # Line 1920
    li	$a4,-33
    and	$a4,$a0,$a4
    b	.L0daa0478
    sw	$a4,1544($s0)
.L0daa1c00:
    # Line 1921
    li	$at,-513
    and	$at,$a0,$at
    b	.L0daa0494
    sw	$at,1544($s0)
.L0daa1c10:
    # Line 1922
    li	$v1,-257
    and	$v1,$a0,$v1
    b	.L0daa04b0
    sw	$v1,1544($s0)
.L0daa1c20:
    # Line 1923
    li	$a3,-5
    and	$a3,$a0,$a3
    b	.L0daa04cc
    sw	$a3,1544($s0)
.L0daa1c30:
    # Line 1924
    li	$a4,-2049
    and	$a4,$a0,$a4
    b	.L0daa04e8
    sw	$a4,1544($s0)
.L0daa1c40:
    # Line 1925
    lui	$at,0x40
    nor	$at,$at,$zero
    and	$at,$a0,$at
    b	.L0daa0508
    sw	$at,1544($s0)
.L0daa1c54:
    # Line 1926
    li	$v1,-1025
    and	$v1,$a0,$v1
    b	.L0daa0524
    sw	$v1,1544($s0)
.L0daa1c64:
    # Line 1927
    li	$a3,-2049
    and	$a3,$a0,$a3
    b	.L0daa0540
    sw	$a3,1544($s0)
.L0daa1c74:
    # Line 1928
    li	$a4,-8193
    and	$a4,$a0,$a4
    b	.L0daa055c
    sw	$a4,1544($s0)
.L0daa1c84:
    # Line 1929
    li	$at,-16385
    and	$at,$a0,$at
    b	.L0daa0578
    sw	$at,1544($s0)
.L0daa1c94:
    # Line 1930
    li	$v1,0x8000
    nor	$v1,$v1,$zero
    and	$v1,$a0,$v1
    b	.L0daa0594
    sw	$v1,1544($s0)
.L0daa1ca8:
    # Line 1931
    lui	$a3,0x1
    nor	$a3,$a3,$zero
    and	$a3,$a0,$a3
    b	.L0daa05b0
    sw	$a3,1544($s0)
.L0daa1cbc:
    # Line 1932
    lui	$a4,0x2
    nor	$a4,$a4,$zero
    and	$a4,$a0,$a4
    b	.L0daa05d4
    sw	$a4,1544($s0)
.L0daa1cd0:
    # Line 1933
    lui	$at,0x4
    nor	$at,$at,$zero
    and	$at,$a0,$at
    b	.L0daa05f4
    sw	$at,1544($s0)
.L0daa1ce4:
    # Line 1934
    lui	$v1,0x8
    nor	$v1,$v1,$zero
    and	$v1,$a0,$v1
    b	.L0daa0614
    sw	$v1,1544($s0)
.L0daa1cf8:
    # Line 1935
    lui	$a3,0x10
    nor	$a3,$a3,$zero
    and	$a3,$a0,$a3
    b	.L0daa0634
    sw	$a3,1544($s0)
.L0daa1d0c:
    # Line 1936
    lui	$a4,0x20
    nor	$a4,$a4,$zero
    and	$a4,$a0,$a4
    b	.L0daa0654
    sw	$a4,1544($s0)
.L0daa1d20:
    # Line 1937
    lui	$at,0x100
    nor	$at,$at,$zero
    and	$at,$a0,$at
    b	.L0daa0674
    sw	$at,1544($s0)
.L0daa1d34:
    # Line 1938
    li	$v1,-2
    and	$v1,$a0,$v1
    b	.L0daa0690
    sw	$v1,1556($s0)
.L0daa1d44:
    # Line 1939
    li	$a3,-3
    and	$a3,$a0,$a3
    b	.L0daa06ac
    sw	$a3,1556($s0)
.L0daa1d54:
    # Line 1940
    li	$a4,-5
    and	$a4,$a0,$a4
    b	.L0daa06c8
    sw	$a4,1556($s0)
.L0daa1d64:
    # Line 1941
    li	$at,-9
    and	$at,$a0,$at
    b	.L0daa06e4
    sw	$at,1556($s0)
.L0daa1d74:
    # Line 1942
    li	$v1,-17
    and	$v1,$a0,$v1
    b	.L0daa0700
    sw	$v1,1556($s0)
.L0daa1d84:
    # Line 1943
    li	$a3,-33
    and	$a3,$a0,$a3
    b	.L0daa071c
    sw	$a3,1556($s0)
.L0daa1d94:
    # Line 1944
    li	$a4,-65
    and	$a4,$a0,$a4
    b	.L0daa0738
    sw	$a4,1544($s0)
.L0daa1da4:
    # Line 1945
    li	$at,-2
    and	$at,$a0,$at
    b	.L0daa0754
    sw	$at,1552($s0)
.L0daa1db4:
    # Line 1946
    li	$v1,-3
    and	$v1,$a0,$v1
    b	.L0daa0770
    sw	$v1,1552($s0)
.L0daa1dc4:
    # Line 1947
    li	$a3,-5
    and	$a3,$a0,$a3
    b	.L0daa078c
    sw	$a3,1552($s0)
.L0daa1dd4:
    # Line 1948
    li	$a4,-9
    and	$a4,$a0,$a4
    b	.L0daa07a8
    sw	$a4,1552($s0)
.L0daa1de4:
    # Line 1949
    li	$at,-17
    and	$at,$a0,$at
    b	.L0daa07c4
    sw	$at,1552($s0)
.L0daa1df4:
    # Line 1950
    li	$v1,-33
    and	$v1,$a0,$v1
    b	.L0daa07e0
    sw	$v1,1552($s0)
.L0daa1e04:
    # Line 1951
    li	$a3,-65
    and	$a3,$a0,$a3
    b	.L0daa07fc
    sw	$a3,1552($s0)
.L0daa1e14:
    # Line 1952
    li	$a4,-129
    and	$a4,$a0,$a4
    b	.L0daa0818
    sw	$a4,1552($s0)
.L0daa1e24:
    # Line 1954
    lui	$at,0x7fff
    ori	$at,$at,0xffff
    and	$at,$a0,$at
    b	.L0daa0838
    sw	$at,1552($s0)
.L0daa1e38:
    # Line 1957
    lui	$v1,0x1000
    nor	$v1,$v1,$zero
    and	$v1,$a0,$v1
    b	.L0daa0858
    sw	$v1,1544($s0)
.L0daa1e4c:
    # Line 1958
    lui	$a3,0x2000
    nor	$a3,$a3,$zero
    and	$a3,$a0,$a3
    b	.L0daa0878
    sw	$a3,1544($s0)
.L0daa1e60:
    # Line 1959
    lui	$a4,0x200
    nor	$a4,$a4,$zero
    and	$a4,$a0,$a4
    b	.L0daa0898
    sw	$a4,1544($s0)
.L0daa1e74:
    # Line 1960
    lui	$at,0x400
    nor	$at,$at,$zero
    and	$at,$a0,$at
    b	.L0daa08b8
    sw	$at,1544($s0)
.L0daa1e88:
    # Line 1961
    lui	$v1,0x800
    nor	$v1,$v1,$zero
    and	$v1,$a0,$v1
    b	.L0daa08d8
    sw	$v1,1544($s0)
.L0daa1e9c:
    # Line 1965
    li	$a3,-129
    and	$a3,$a0,$a3
    b	.L0daa0904
    sw	$a3,1548($s0)
.L0daa1eac:
    # Line 1966
    li	$a4,-1025
    and	$a4,$a0,$a4
    b	.L0daa0920
    sw	$a4,1548($s0)
.L0daa1ebc:
    # Line 1967
    li	$at,-513
    and	$at,$a0,$at
    b	.L0daa0940
    sw	$at,1548($s0)
.L0daa1ecc:
    # Line 1979
    li	$v1,-33
    and	$v1,$a0,$v1
    b	.L0daa09a4
    sw	$v1,1544($s0)
.L0daa1edc:
    # Line 2002
    li	$a3,-65
    and	$a3,$a0,$a3
    b	.L0daa0aa8
    sw	$a3,1544($s0)
.L0daa1eec:
    # Line 2003
    li	$a4,-2
    and	$a4,$a0,$a4
    b	.L0daa0ac4
    sw	$a4,1552($s0)
.L0daa1efc:
    # Line 2004
    li	$at,-3
    and	$at,$a0,$at
    b	.L0daa0ae0
    sw	$at,1552($s0)
.L0daa1f0c:
    # Line 2005
    li	$v1,-5
    and	$v1,$a0,$v1
    b	.L0daa0afc
    sw	$v1,1552($s0)
.L0daa1f1c:
    # Line 2006
    li	$a3,-9
    and	$a3,$a0,$a3
    b	.L0daa0b18
    sw	$a3,1552($s0)
.L0daa1f2c:
    # Line 2007
    li	$a4,-17
    and	$a4,$a0,$a4
    b	.L0daa0b34
    sw	$a4,1552($s0)
.L0daa1f3c:
    # Line 2008
    li	$at,-33
    and	$at,$a0,$at
    b	.L0daa0b50
    sw	$at,1552($s0)
.L0daa1f4c:
    # Line 2009
    li	$v1,-65
    and	$v1,$a0,$v1
    b	.L0daa0b6c
    sw	$v1,1552($s0)
.L0daa1f5c:
    # Line 2010
    li	$a3,-129
    and	$a3,$a0,$a3
    b	.L0daa0b88
    sw	$a3,1552($s0)
.L0daa1f6c:
    # Line 2011
    li	$a4,-129
    and	$a4,$a0,$a4
    b	.L0daa0ba4
    sw	$a4,1544($s0)
.L0daa1f7c:
    # Line 2095
    li	$at,-513
    and	$at,$a0,$at
    b	.L0daa0f2c
    sw	$at,1544($s0)
.L0daa1f8c:
    # Line 2096
    li	$v1,-257
    and	$v1,$a0,$v1
    b	.L0daa0f48
    sw	$v1,1544($s0)
.L0daa1f9c:
    # Line 2120
    li	$a3,-1025
    and	$a3,$a0,$a3
    b	.L0daa1108
    sw	$a3,1544($s0)
.L0daa1fac:
    # Line 2126
    lwc1	$f4,280($s0)
    ldc1	$f0,_lit8_3ff0000000000000
    cvt.d.s	$f7,$f4
    c.lt.d	$f7,$f0
    # Line 2125
    lwc1	$f6,3452($s3)
    # Line 2126
    bc1f	.L0daa1fd4
    # Line 2124
    lwc1	$f5,3448($s3)
    li	$a4,1
    # Line 2129
    b	.L0daa1fec
    sw	$a4,288($s0)
.L0daa1fd4:
    # Line 2131
    ldc1	$f1,_lit8_3fe0000000000000
    add.d	$f1,$f7,$f1
    trunc.w.d	$f1,$f1
    mfc1	$at,$f1
    nop
    sw	$at,288($s0)
.L0daa1fec:
    c.le.s	$f4,$f5
    nop
    bc1fl	.L0daa20d8
    # Line 2134
    c.le.s	$f6,$f4
    b	.L0daa1124
    swc1	$f5,280($s0)
.L0daa2004:
    # Line 2155
    li	$v1,-1025
    and	$v1,$a0,$v1
    b	.L0daa118c
    sw	$v1,1548($s0)
.L0daa2014:
    # Line 2156
    li	$a3,-513
    and	$a3,$a0,$a3
    b	.L0daa11a8
    sw	$a3,1548($s0)
.L0daa2024:
    # Line 2157
    lui	$a4,0x100
    nor	$a4,$a4,$zero
    and	$a4,$a0,$a4
    b	.L0daa11c8
    sw	$a4,1544($s0)
.L0daa2038:
    # Line 2168
    li	$at,-16385
    and	$at,$a0,$at
    b	.L0daa1248
    sw	$at,1544($s0)
.L0daa2048:
    # Line 2179
    li	$v1,0x8000
    nor	$v1,$v1,$zero
    and	$v1,$a0,$v1
    b	.L0daa12a4
    sw	$v1,1544($s0)
.L0daa205c:
    # Line 2299
    li	$a3,-2
    and	$a3,$a0,$a3
    b	.L0daa16b0
    sw	$a3,1556($s0)
.L0daa206c:
    # Line 2300
    li	$a4,-3
    and	$a4,$a0,$a4
    b	.L0daa16cc
    sw	$a4,1556($s0)
.L0daa207c:
    # Line 2301
    li	$at,-5
    and	$at,$a0,$at
    b	.L0daa16e8
    sw	$at,1556($s0)
.L0daa208c:
    # Line 2302
    li	$v1,-9
    and	$v1,$a0,$v1
    b	.L0daa1704
    sw	$v1,1556($s0)
.L0daa209c:
    # Line 2303
    li	$a3,-17
    and	$a3,$a0,$a3
    b	.L0daa1720
    sw	$a3,1556($s0)
.L0daa20ac:
    # Line 2304
    li	$a4,-33
    and	$a4,$a0,$a4
    b	.L0daa173c
    sw	$a4,1556($s0)
.L0daa20bc:
    # Line 2305
    lui	$at,0x40
    nor	$at,$at,$zero
    and	$at,$a0,$at
    b	.L0daa175c
    sw	$at,1544($s0)
.L0daa20d0:
    b	.L0daa02ec
    # Line 1890
    swc1	$f2,16($s0)
.L0daa20d8:
    nop
    # Line 2134
    bc1fl	.L0daa20ec
    # Line 2141
    sub.s	$f3,$f4,$f5
    # Line 2136
    b	.L0daa1124
    swc1	$f6,280($s0)
.L0daa20ec:
    # Line 2138
    lwc1	$f0,3456($s3)
    # Line 2141
    div.s	$f3,$f3,$f0
    ldc1	$f1,_lit8_3fe0000000000000
    cvt.d.s	$f3,$f3
    add.d	$f3,$f3,$f1
    trunc.w.d	$f3,$f3
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f0
    add.s	$f3,$f3,$f5
    b	.L0daa1124
    swc1	$f3,280($s0)
.L0daa2118:
    # Line 1781
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,288($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,216($sp)
    ld	$ra,288($sp)
    ld	$s3,224($sp)
    ld	$s5,208($sp)
    jr	$ra
    addiu	$sp,$sp,384
.end __glMgrim_PushAttrib

# Function: __glMgrRestoreRasterPosition
# Declared: Line 2352 (Source lines: 2352-2391)
# Address: 0x0daa2140 - 0x0daa2348 (Size: 520 bytes, Frame: 192)
.globl __glMgrRestoreRasterPosition
.ent __glMgrRestoreRasterPosition
__glMgrRestoreRasterPosition:
    # Line 2355
    li	$v0,1
    # Line 2352
    addiu	$sp,$sp,-64
    sd	$ra,32($sp)
    sd	$s2,8($sp)
    # Line 2355
    lw	$s2,__glCurrentContext
    sd	$a1,0($sp)
    sd	$s1,24($sp)
    # Line 2352
    move	$s1,$a0
    sd	$gp,16($sp)
    # Line 2355
    lw	$at,__glBeginMode
    # Line 2352
    lui	$v1,0x16
    addiu	$v1,$v1,-15016
    # Line 2355
    beq	$at,$v0,.L0daa230c
    # Line 2352
    addu	$gp,$t9,$v1
    # Line 2359
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,144($s1)
    # Line 2360
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,148($s1)
    # Line 2361
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,152($s1)
    # Line 2362
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,156($s1)
    # Line 2365
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,48($s1)
    # Line 2366
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,52($s1)
    # Line 2367
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,56($s1)
    # Line 2368
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,60($s1)
    li	$a2,0x9ca5
    addu	$a2,$a2,$s2
    lbu	$a2,0($a2)
    beqzl	$a2,.L0daa22ec
    # Line 2370
    lwc1	$f1,48($s1)
.L0daa220c:
    # Line 2373
    lwc1	$f1,132($s1)
    # Line 2372
    ldc1	$f2,_lit8_bfe0000000000000
    # Line 2373
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f2
    # Line 2372
    lwc1	$f0,128($s1)
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f2
    # Line 2373
    cvt.s.d	$f1,$f1
    # Line 2372
    cvt.s.d	$f0,$f0
    # Line 2375
    li	$a1,-2
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    # Line 2373
    swc1	$f1,132($s1)
    # Line 2372
    swc1	$f0,128($s1)
    # Line 2375
    jal	__glMgrInitPixelStateERAM
    lw	$a0,128($s1)
    # Line 2376
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,132($s1)
    # Line 2377
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,136($s1)
    # Line 2378
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    la	$s2,SYMBOL_LOCATION
    li	$a1,-1
    jal	__glMgrInitPixelStateERAM
    lw	$a0,520($s2)
    # Line 2380
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,140($s1)
    # Line 2381
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-1
    jal	__glMgrInitPixelStateERAM
    lw	$a0,564($s2)
    ld	$at,0($sp)
    beqz	$at,.L0daa2330
    # Line 2384
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,576($s2)
    # Line 2388
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
.L0daa22b8:
    li	$a1,-1
    jal	__glMgrInitPixelStateERAM
    lw	$a0,568($s2)
    # Line 2390
    # lw $t9, -30260($gp) # &__glMgrUpdateRasterPos
    mtc1	$zero,$f12
    jal	__glMgrUpdateRasterPos
    mov.s	$f13,$f12
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    # Line 2391
    ld	$s1,24($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daa22ec:
    # Line 2370
    swc1	$f1,264($s2)
    lwc1	$f0,52($s1)
    swc1	$f0,268($s2)
    lwc1	$f3,56($s1)
    swc1	$f3,272($s2)
    lwc1	$f2,60($s1)
    b	.L0daa220c
    swc1	$f2,276($s2)
.L0daa230c:
    # Line 2355
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,16($sp)
    ld	$ra,32($sp)
    ld	$s1,24($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daa2330:
    # Line 2386
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$zero
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    b	.L0daa22b8
    # Line 2388
    nop	# was lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
.end __glMgrRestoreRasterPosition

# Function: __glMgrim_SoftPopAttrib
# Declared: Line 2394 (Source lines: 2394-2828)
# Address: 0x0daa2348 - 0x0daa3e48 (Size: 6912 bytes, Frame: 224)
.globl __glMgrim_SoftPopAttrib
.ent __glMgrim_SoftPopAttrib
__glMgrim_SoftPopAttrib:
    # Line 2400
    li	$v0,1
    # Line 2394
    addiu	$sp,$sp,-96
    sd	$s3,8($sp)
    # Line 2400
    lw	$s3,__glCurrentContext
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    # Line 2394
    lui	$v1,0x16
    addiu	$v1,$v1,-15536
    # Line 2400
    beq	$at,$v0,.L0daa3e24
    # Line 2394
    addu	$gp,$t9,$v1
    # Line 2403
    lw	$a0,12732($s3)
    lw	$a3,12728($s3)
    sltu	$a3,$a3,$a0
    beqz	$a3,.L0daa3b78
    # Line 2414
    addiu	$v1,$a0,-4
    sd	$s6,32($sp)
    sd	$s7,56($sp)
    # Line 2408
    lui	$s7,0x1
    sd	$s4,40($sp)
    # Line 2409
    lw	$s4,-4($a0)
    # Line 2408
    addu	$s7,$s7,$s3
    lw	$v0,-28048($s7)
    # Line 2412
    lw	$s6,0($s4)
    # Line 2414
    sw	$v1,12732($s3)
    # Line 2408
    addiu	$v0,$v0,-4
    # Line 2415
    andi	$at,$s6,0x200
    beqz	$at,.L0daa23d8
    sw	$v0,-28048($s7)
    # Line 2418
    lwc1	$f3,1400($s4)
    swc1	$f3,1552($s3)
    lwc1	$f2,1404($s4)
    swc1	$f2,1556($s3)
    lwc1	$f1,1408($s4)
    swc1	$f1,1560($s3)
    lwc1	$f0,1412($s4)
    swc1	$f0,1564($s3)
.L0daa23d8:
    andi	$at,$s6,0x4000
    beqz	$at,.L0daa2554
    # Line 2421
    li	$a1,9
    move	$a0,$zero
    addiu	$a2,$s3,1720
    addiu	$a4,$s4,1568
.L0daa23f0:
    addu	$v1,$a0,$a2
    addu	$v0,$a0,$a4
    addiu	$a0,$a0,8
    ld	$v0,0($v0)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0daa23f0
    sd	$v0,0($v1)
    addu	$a3,$a0,$a4
    lw	$a3,0($a3)
    addu	$at,$a0,$a2
    sw	$a3,0($at)
    # Line 2422
    lw	$v0,1696($s3)
    li	$v1,-16
    # Line 2425
    lw	$a3,11824($s3)
    # Line 2422
    and	$v0,$v0,$v1
    sw	$v0,1696($s3)
    # Line 2423
    lw	$at,1544($s4)
    # Line 2425
    ori	$a3,$a3,0x1
    sw	$a3,11824($s3)
    # Line 2423
    andi	$at,$at,0xf
    or	$at,$at,$v0
    sw	$at,1696($s3)
    # Line 2425
    lw	$v1,1544($s4)
    andi	$v1,$v1,0x1
    beqz	$v1,.L0daa3844
    sd	$ra,16($sp)
    # Line 2427
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3008
    # Line 2428
    # lw $t9, -32104($gp) # &__glMgrim_AlphaFunc
.L0daa2468:
    lwc1	$f13,1572($s4)
    jal	__glMgrim_AlphaFunc
    lw	$a0,1568($s4)
    lw	$at,1544($s4)
    andi	$at,$at,0x2
    beqz	$at,.L0daa3858
    # Line 2430
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3042
    # Line 2431
    # lw $t9, -32096($gp) # &__glMgrim_BlendFunc
.L0daa2490:
    lw	$a1,1580($s4)
    jal	__glMgrim_BlendFunc
    lw	$a0,1576($s4)
    # Line 2432
    # lw $t9, -32100($gp) # &__glMgrim_BlendEquationEXT
    jal	__glMgrim_BlendEquationEXT
    lw	$a0,1584($s4)
    lw	$v0,1544($s4)
    andi	$v0,$v0,0x8
    beqz	$v0,.L0daa386c
    # Line 2433
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3024
    # Line 2434
    # lw $t9, -32052($gp) # &__glMgrim_DrawBuffer
.L0daa24c4:
    jal	__glMgrim_DrawBuffer
    lw	$a0,1640($s4)
    lw	$v1,1544($s4)
    andi	$v1,$v1,0x4
    beqz	$v1,.L0daa3880
    # Line 2435
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3057
    lw	$a3,1548($s4)
.L0daa24e8:
    andi	$a3,$a3,0x800
    beqz	$a3,.L0daa3894
    # Line 2436
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3058
    # Line 2437
    # lw $t9, -32092($gp) # &__glMgrim_LogicOp
.L0daa2500:
    jal	__glMgrim_LogicOp
    lw	$a0,1604($s4)
    # Line 2439
    lbu	$a3,1635($s4)
    lw	$t9,8000($s3)
    lbu	$a2,1634($s4)
    lbu	$a1,1633($s4)
    jalr	$t9
    lbu	$a0,1632($s4)
    # Line 2443
    lw	$t9,8008($s3)
    jalr	$t9
    lw	$a0,1628($s4)
    # Line 2445
    # lw $t9, -31160($gp) # &__glMgrim_ClearIndex
    bal __glMgrim_ClearIndex
    lwc1	$f12,1624($s4)
    # Line 2446
    lwc1	$f15,1620($s4)
    # lw $t9, -31172($gp) # &__glMgrim_ClearColor
    lwc1	$f14,1616($s4)
    lwc1	$f13,1612($s4)
    bal __glMgrim_ClearColor
    lwc1	$f12,1608($s4)
    ld	$ra,16($sp)
.L0daa2554:
    andi	$at,$s6,0x1
    beqz	$at,.L0daa25a4
    # Line 2450
    li	$a1,34
    move	$a0,$zero
    addiu	$a2,$s3,160
    addiu	$a4,$s4,8
.L0daa256c:
    addu	$v1,$a0,$a2
    addu	$v0,$a0,$a4
    addiu	$a0,$a0,8
    ld	$v0,0($v0)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0daa256c
    sd	$v0,0($v1)
    # Line 2452
    # lw $t9, -31136($gp) # &__glMgrRestoreRasterPosition
    lbu	$a1,276($s4)
    sd	$ra,16($sp)
    bal __glMgrRestoreRasterPosition
    addiu	$a0,$s4,64
    sd	$s8,48($sp)
    ld	$ra,16($sp)
.L0daa25a4:
    sd	$s8,48($sp)
    andi	$v1,$s6,0x100
    beqz	$v1,.L0daa2638
    li	$s8,2
    # Line 2456
    ld	$v0,1384($s4)
    # Line 2457
    lw	$v1,1696($s3)
    # Line 2456
    sd	$v0,1536($s3)
    # Line 2457
    li	$a3,-17
    # Line 2456
    ld	$at,1392($s4)
    # Line 2457
    and	$v1,$v1,$a3
    sw	$v1,1696($s3)
    # Line 2456
    sd	$at,1544($s3)
    # Line 2458
    lw	$v0,1544($s4)
    andi	$v0,$v0,0x10
    or	$v0,$v0,$v1
    sw	$v0,1696($s3)
    # Line 2460
    sw	$s8,__glBeginMode
    lw	$at,11828($s3)
    ori	$at,$at,0x80
    sw	$at,11828($s3)
    lw	$a3,1544($s4)
    andi	$a3,$a3,0x10
    beqz	$a3,.L0daa3bc0
    sd	$ra,16($sp)
    # Line 2462
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,2929
    # Line 2463
    # lw $t9, -32080($gp) # &__glMgrim_DepthFunc
.L0daa2614:
    jal	__glMgrim_DepthFunc
    lw	$a0,1384($s4)
    # Line 2464
    # lw $t9, -32112($gp) # &__glMgrim_DepthMask
    jal	__glMgrim_DepthMask
    lbu	$a0,1388($s4)
    # Line 2465
    # lw $t9, -31164($gp) # &__glMgrim_ClearDepth
    bal __glMgrim_ClearDepth
    ldc1	$f12,1392($s4)
    ld	$ra,16($sp)
.L0daa2638:
    andi	$v1,$s6,0x2000
    beqz	$v1,.L0daa2a5c
    lui	$at,0x1
    lw	$a0,1544($s4)
    lw	$a1,1696($s3)
    nor	$a3,$a0,$zero
    and	$a3,$a3,$a1
    andi	$a3,$a3,0x4000
    beqz	$a3,.L0daa2678
    # Line 2471
    nop	# was lw $t9, -24148($gp) # &__glReadjustZCounts
    sd	$ra,16($sp)
    jal	__glReadjustZCounts
    move	$a0,$s3
    lw	$a0,1544($s4)
    lw	$a1,1696($s3)
    ld	$ra,16($sp)
.L0daa2678:
    nor	$at,$a1,$zero
    and	$at,$at,$a0
    andi	$at,$at,0x4000
    beqzl	$at,.L0daa269c
    # Line 2478
    ld	$a2,1544($s4)
    # Line 2476
    lw	$v0,31360($s3)
    sd	$ra,16($sp)
    sw	$v0,31364($s3)
    # Line 2478
    ld	$a2,1544($s4)
.L0daa269c:
    sd	$a2,1696($s3)
    ld	$a1,1552($s4)
    sd	$a1,1704($s3)
    ld	$a0,1560($s4)
    sd	$a0,1712($s3)
    # Line 2479
    sw	$s8,__glBeginMode
    sd	$ra,16($sp)
    lw	$v1,11828($s3)
    # Line 2482
    lw	$t9,11864($s3)
    move	$a0,$s3
    # Line 2479
    ori	$v1,$v1,0xbe
    # Line 2482
    jalr	$t9
    # Line 2479
    sw	$v1,11828($s3)
    # Line 2483
    lw	$t9,12072($s3)
    jalr	$t9
    move	$a0,$s3
    # Line 2484
    lw	$t9,11988($s3)
    jalr	$t9
    move	$a0,$s3
    # Line 2485
    lw	$t9,11980($s3)
    jalr	$t9
    move	$a0,$s3
    lw	$a3,1544($s4)
    andi	$a3,$a3,0x1
    beqz	$a3,.L0daa38a8
    # Line 2487
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3008
    lw	$at,1544($s4)
.L0daa2710:
    andi	$at,$at,0x2
    beqz	$at,.L0daa38bc
    # Line 2488
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3042
    lw	$v0,1544($s4)
.L0daa2728:
    andi	$v0,$v0,0x10
    beqz	$v0,.L0daa38d0
    # Line 2489
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,2929
    lw	$v1,1544($s4)
.L0daa2740:
    andi	$v1,$v1,0x8
    beqz	$v1,.L0daa38e4
    # Line 2490
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3024
    lw	$a3,1544($s4)
.L0daa2758:
    andi	$a3,$a3,0x200
    beqz	$a3,.L0daa38f8
    # Line 2491
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,2848
    lw	$at,1544($s4)
.L0daa2770:
    andi	$at,$at,0x4
    beqz	$at,.L0daa390c
    # Line 2492
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3057
    lw	$v0,1544($s4)
.L0daa2788:
    lui	$v1,0x100
    and	$v0,$v0,$v1
    beqz	$v0,.L0daa3920
    # Line 2493
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,0x8037
    lw	$a3,1548($s4)
.L0daa27a4:
    andi	$a3,$a3,0x800
    beqz	$a3,.L0daa3934
    # Line 2494
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3058
    lw	$at,1548($s4)
.L0daa27bc:
    andi	$at,$at,0x400
    beqz	$at,.L0daa3948
    # Line 2495
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,10754
    lw	$v0,1548($s4)
.L0daa27d4:
    andi	$v0,$v0,0x200
    beqz	$v0,.L0daa395c
    # Line 2496
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,10753
    lw	$v1,1544($s4)
.L0daa27ec:
    andi	$v1,$v1,0x4000
    beqz	$v1,.L0daa3970
    # Line 2497
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3089
    lw	$a3,1544($s4)
.L0daa2804:
    andi	$a3,$a3,0x8000
    beqz	$a3,.L0daa3984
    # Line 2498
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,2960
    lw	$at,1544($s4)
.L0daa281c:
    lui	$v0,0x1000
    and	$at,$at,$v0
    beqz	$at,.L0daa3998
    # Line 2501
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,0x8024
    lw	$v1,1544($s4)
.L0daa2838:
    lui	$a3,0x2000
    and	$v1,$v1,$a3
    beqz	$v1,.L0daa39ac
    # Line 2502
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,0x802e
    lw	$at,1544($s4)
.L0daa2854:
    lui	$v0,0x200
    and	$at,$at,$v0
    beqz	$at,.L0daa39c0
    # Line 2503
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,0x8010
    lw	$v1,1544($s4)
.L0daa2870:
    lui	$a3,0x400
    and	$v1,$v1,$a3
    beqz	$v1,.L0daa39d4
    # Line 2504
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,0x8011
    lw	$at,1544($s4)
.L0daa288c:
    lui	$v0,0x800
    and	$at,$at,$v0
    beqz	$at,.L0daa39e8
    # Line 2505
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,0x8012
    lw	$v1,1560($s4)
.L0daa28a8:
    andi	$v1,$v1,0x1
    beqz	$v1,.L0daa39fc
    # Line 2507
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3472
    lw	$a3,1560($s4)
.L0daa28c0:
    andi	$a3,$a3,0x2
    beqz	$a3,.L0daa3a10
    # Line 2508
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3473
    lw	$at,1560($s4)
.L0daa28d8:
    andi	$at,$at,0x4
    beqz	$at,.L0daa3a24
    # Line 2509
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3474
    lw	$v0,1560($s4)
.L0daa28f0:
    andi	$v0,$v0,0x8
    beqz	$v0,.L0daa3a38
    # Line 2510
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3475
    lw	$v1,1560($s4)
.L0daa2908:
    andi	$v1,$v1,0x10
    beqz	$v1,.L0daa3a4c
    # Line 2511
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3476
    lw	$a3,1560($s4)
.L0daa2920:
    andi	$a3,$a3,0x20
    beqz	$a3,.L0daa3a60
    # Line 2512
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3477
    lw	$at,1560($s4)
.L0daa2938:
    andi	$at,$at,0x40
    beqz	$at,.L0daa3a74
    # Line 2513
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3478
    lw	$v0,1560($s4)
.L0daa2950:
    andi	$v0,$v0,0x80
    beqz	$v0,.L0daa3a88
    # Line 2514
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3479
    lw	$v1,1560($s4)
.L0daa2968:
    andi	$v1,$v1,0x100
    beqz	$v1,.L0daa3a9c
    # Line 2515
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3480
    lw	$a3,1564($s4)
.L0daa2980:
    andi	$a3,$a3,0x1
    beqz	$a3,.L0daa3ab0
    # Line 2517
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3504
    lw	$at,1564($s4)
.L0daa2998:
    andi	$at,$at,0x2
    beqz	$at,.L0daa3ac4
    # Line 2518
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3505
    lw	$v0,1564($s4)
.L0daa29b0:
    andi	$v0,$v0,0x4
    beqz	$v0,.L0daa3ad8
    # Line 2519
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3506
    lw	$v1,1564($s4)
.L0daa29c8:
    andi	$v1,$v1,0x8
    beqz	$v1,.L0daa3aec
    # Line 2520
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3507
    lw	$a3,1564($s4)
.L0daa29e0:
    andi	$a3,$a3,0x10
    beqz	$a3,.L0daa3b00
    # Line 2521
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3508
    lw	$at,1564($s4)
.L0daa29f8:
    andi	$at,$at,0x20
    beqz	$at,.L0daa3b14
    # Line 2522
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3509
    lw	$v0,1564($s4)
.L0daa2a10:
    andi	$v0,$v0,0x40
    beqz	$v0,.L0daa3b28
    # Line 2523
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3510
    lw	$v1,1564($s4)
.L0daa2a28:
    andi	$v1,$v1,0x80
    beqz	$v1,.L0daa3b3c
    # Line 2524
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3511
    lw	$a3,1564($s4)
.L0daa2a40:
    andi	$a3,$a3,0x100
    beqz	$a3,.L0daa3b50
    # Line 2525
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3512
    ld	$ra,16($sp)
.L0daa2a58:
    lui	$at,0x1
.L0daa2a5c:
    and	$at,$at,$s6
    beqz	$at,.L0daa2c98
    # Line 2554
    andi	$v1,$s6,0x80
    # Line 2528
    ld	$at,1672($s4)
    sd	$at,1824($s3)
    ld	$a3,1680($s4)
    sd	$a3,1832($s3)
    ld	$v1,1688($s4)
    sd	$v1,1840($s3)
    ld	$v0,1696($s4)
    sd	$v0,1848($s3)
    ld	$at,1704($s4)
    # Line 2529
    lui	$v1,0x80
    lw	$v0,1696($s3)
    # Line 2528
    sd	$at,1856($s3)
    # Line 2529
    nor	$v1,$v1,$zero
    # Line 2528
    ld	$a3,1712($s4)
    # Line 2529
    and	$v0,$v0,$v1
    sw	$v0,1696($s3)
    # Line 2528
    sd	$a3,1864($s3)
    # Line 2530
    lw	$at,1544($s4)
    lui	$v1,0x80
    and	$at,$at,$v1
    or	$at,$at,$v0
    sw	$at,1696($s3)
    # Line 2532
    lw	$a3,1560($s4)
    sw	$a3,1712($s3)
    # Line 2533
    lw	$v1,1564($s4)
    sw	$v1,1716($s3)
    lw	$v0,1560($s4)
    andi	$v0,$v0,0x1
    beqz	$v0,.L0daa3bd4
    sd	$ra,16($sp)
    # Line 2535
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3472
    lw	$v0,1560($s4)
.L0daa2af0:
    andi	$v0,$v0,0x2
    beqz	$v0,.L0daa3be8
    # Line 2536
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3473
    lw	$v1,1560($s4)
.L0daa2b08:
    andi	$v1,$v1,0x4
    beqz	$v1,.L0daa3bfc
    # Line 2537
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3474
    lw	$a3,1560($s4)
.L0daa2b20:
    andi	$a3,$a3,0x8
    beqz	$a3,.L0daa3c10
    # Line 2538
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3475
    lw	$at,1560($s4)
.L0daa2b38:
    andi	$at,$at,0x10
    beqz	$at,.L0daa3c24
    # Line 2539
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3476
    lw	$v0,1560($s4)
.L0daa2b50:
    andi	$v0,$v0,0x20
    beqz	$v0,.L0daa3c38
    # Line 2540
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3477
    lw	$v1,1560($s4)
.L0daa2b68:
    andi	$v1,$v1,0x40
    beqz	$v1,.L0daa3c4c
    # Line 2541
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3478
    lw	$a3,1560($s4)
.L0daa2b80:
    andi	$a3,$a3,0x80
    beqz	$a3,.L0daa3c60
    # Line 2542
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3479
    lw	$at,1560($s4)
.L0daa2b98:
    andi	$at,$at,0x100
    beqz	$at,.L0daa3c74
    # Line 2543
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3480
    lw	$v0,1564($s4)
.L0daa2bb0:
    andi	$v0,$v0,0x1
    beqz	$v0,.L0daa3c88
    # Line 2545
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3504
    lw	$v1,1564($s4)
.L0daa2bc8:
    andi	$v1,$v1,0x2
    beqz	$v1,.L0daa3c9c
    # Line 2546
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3505
    lw	$a3,1564($s4)
.L0daa2be0:
    andi	$a3,$a3,0x4
    beqz	$a3,.L0daa3cb0
    # Line 2547
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3506
    lw	$at,1564($s4)
.L0daa2bf8:
    andi	$at,$at,0x8
    beqz	$at,.L0daa3cc4
    # Line 2548
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3507
    lw	$v0,1564($s4)
.L0daa2c10:
    andi	$v0,$v0,0x10
    beqz	$v0,.L0daa3cd8
    # Line 2549
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3508
    lw	$v1,1564($s4)
.L0daa2c28:
    andi	$v1,$v1,0x20
    beqz	$v1,.L0daa3cec
    # Line 2550
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3509
    lw	$a3,1564($s4)
.L0daa2c40:
    andi	$a3,$a3,0x40
    beqz	$a3,.L0daa3d00
    # Line 2551
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3510
    lw	$at,1564($s4)
.L0daa2c58:
    andi	$at,$at,0x80
    beqz	$at,.L0daa3d14
    # Line 2552
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3511
    lw	$v0,1564($s4)
.L0daa2c70:
    andi	$v0,$v0,0x100
    beqz	$v0,.L0daa3d28
    # Line 2553
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3512
    # Line 2554
    # lw $t9, -30904($gp) # &__glMgrUpdateEvalAttributes
.L0daa2c88:
    jal	__glMgrUpdateEvalAttributes
    move	$a0,$s3
    ld	$ra,16($sp)
    andi	$v1,$s6,0x80
.L0daa2c98:
    beqz	$v1,.L0daa2ce8
    # Line 2557
    li	$a1,10
    move	$a0,$zero
    addiu	$a4,$s3,1492
    addiu	$a2,$s4,1340
.L0daa2cac:
    addu	$at,$a0,$a4
    addu	$a3,$a0,$a2
    addiu	$a0,$a0,4
    lw	$a3,0($a3)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0daa2cac
    sw	$a3,0($at)
    # Line 2558
    lw	$v0,1696($s3)
    li	$v1,-33
    and	$v0,$v0,$v1
    sw	$v0,1696($s3)
    # Line 2559
    lw	$at,1544($s4)
    andi	$at,$at,0x20
    or	$at,$at,$v0
    sw	$at,1696($s3)
.L0daa2ce8:
    andi	$a3,$s6,0x8000
    beqz	$a3,.L0daa2d30
    # Line 2563
    andi	$a3,$s6,0x40
    lw	$v1,1644($s4)
    sw	$v1,1796($s3)
    lw	$v0,1648($s4)
    sw	$v0,1800($s3)
    lw	$at,1652($s4)
    sw	$at,1804($s3)
    lw	$a3,1656($s4)
    sw	$a3,1808($s3)
    lw	$v1,1660($s4)
    sw	$v1,1812($s3)
    lw	$v0,1664($s4)
    sw	$v0,1816($s3)
    lw	$at,1668($s4)
    sw	$at,1820($s3)
    andi	$a3,$s6,0x40
.L0daa2d30:
    beqz	$a3,.L0daa2e50
    # Line 2581
    andi	$a3,$s6,0x4
    # Line 2566
    lw	$a4,1144($s4)
    sw	$a4,1296($s3)
    # Line 2567
    lw	$a3,1148($s4)
    sw	$a3,1300($s3)
    # Line 2568
    lw	$a2,1152($s4)
    sw	$a2,1304($s3)
    # Line 2569
    lw	$a1,1156($s4)
    sw	$a1,1308($s3)
    lw	$a0,1160($s4)
    sw	$a0,1312($s3)
    lw	$v1,1164($s4)
    sw	$v1,1316($s3)
    lw	$v0,1168($s4)
    # Line 2570
    li	$a1,10
    # Line 2569
    sw	$v0,1320($s3)
    # Line 2570
    move	$a0,$zero
    # Line 2569
    lw	$at,1172($s4)
    # Line 2570
    addiu	$a2,$s3,1328
    addiu	$a4,$s4,1176
    # Line 2569
    sw	$at,1324($s3)
.L0daa2d88:
    # Line 2570
    addu	$v0,$a0,$a2
    addu	$at,$a0,$a4
    addiu	$a0,$a0,8
    ld	$at,0($at)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0daa2d88
    sd	$at,0($v0)
    # Line 2571
    li	$a1,10
    move	$a0,$zero
    addiu	$a4,$s3,1408
    addiu	$a2,$s4,1256
.L0daa2db4:
    addu	$v1,$a0,$a4
    addu	$v0,$a0,$a2
    addiu	$a0,$a0,8
    ld	$v0,0($v0)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0daa2db4
    sd	$v0,0($v1)
    # Line 2572
    lw	$a1,1336($s4)
    lw	$a0,1488($s3)
    lw	$a3,3328($s3)
    sd	$ra,16($sp)
    # lw $t9, -17848($gp) # &memcpy
    sll	$a2,$a3,0x3
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a3
    jal	memcpy
    sll	$a2,$a2,0x2
    # Line 2575
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,1336($s4)
    # Line 2576
    sw	$zero,1336($s4)
    # Line 2577
    lw	$v0,1696($s3)
    li	$v1,-193
    and	$v0,$v0,$v1
    sw	$v0,1696($s3)
    # Line 2578
    lw	$at,1544($s4)
    andi	$at,$at,0xc0
    or	$at,$at,$v0
    sw	$at,1696($s3)
    # Line 2580
    lw	$ra,1552($s4)
    sw	$ra,1704($s3)
    # Line 2581
    sw	$s8,__glBeginMode
    lw	$a3,11828($s3)
    ld	$ra,16($sp)
    ori	$a3,$a3,0x20
    sw	$a3,11828($s3)
    andi	$a3,$s6,0x4
.L0daa2e50:
    beqz	$a3,.L0daa2f08
    # Line 2593
    lui	$v0,0x2
    # Line 2584
    lwc1	$f1,292($s4)
    swc1	$f1,444($s3)
    lwc1	$f0,296($s4)
    swc1	$f0,448($s3)
    lw	$a3,300($s4)
    sw	$a3,452($s3)
    lhu	$v1,304($s4)
    # Line 2585
    lw	$a3,1696($s3)
    # Line 2584
    sh	$v1,456($s3)
    # Line 2585
    li	$at,-769
    # Line 2584
    lh	$v0,306($s4)
    # Line 2585
    and	$a3,$a3,$at
    sw	$a3,1696($s3)
    # Line 2584
    sh	$v0,458($s3)
    # Line 2586
    lw	$v1,1544($s4)
    andi	$v1,$v1,0x300
    or	$v1,$v1,$a3
    sw	$v1,1696($s3)
    # Line 2588
    sw	$s8,__glBeginMode
    lw	$v0,11828($s3)
    ori	$v0,$v0,0x2
    sw	$v0,11828($s3)
    lw	$at,1544($s4)
    andi	$at,$at,0x200
    beqz	$at,.L0daa3d3c
    sd	$ra,16($sp)
    # Line 2590
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,2848
    lw	$at,1544($s4)
.L0daa2ed0:
    andi	$at,$at,0x100
    beqz	$at,.L0daa3d50
    # Line 2591
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,2852
    # Line 2592
    # lw $t9, -32044($gp) # &__glMgrim_LineWidth
.L0daa2ee8:
    jal	__glMgrim_LineWidth
    lwc1	$f12,292($s4)
    # Line 2593
    # lw $t9, -32048($gp) # &__glMgrim_LineStipple
    lhu	$a1,304($s4)
    jal	__glMgrim_LineStipple
    lh	$a0,306($s4)
    ld	$ra,16($sp)
    lui	$v0,0x2
.L0daa2f08:
    and	$v0,$v0,$s6
    beqz	$v0,.L0daa2f20
    # Line 2596
    andi	$a3,$s6,0x20
    lw	$v1,1720($s4)
    sw	$v1,1872($s3)
    andi	$a3,$s6,0x20
.L0daa2f20:
    beqz	$a3,.L0daa2fec
    # Line 2599
    li	$a0,15
    move	$a2,$zero
    addiu	$a4,$s3,616
    addiu	$a5,$s4,464
.L0daa2f34:
    addu	$v0,$a2,$a4
    addu	$at,$a2,$a5
    addiu	$a2,$a2,8
    ld	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0daa2f34
    sd	$at,0($v0)
    addu	$a0,$a2,$a5
    lw	$a0,0($a0)
    addu	$a1,$a2,$a4
    sw	$a0,0($a1)
    # Line 2600
    lw	$v1,1000($s4)
    sd	$ra,16($sp)
    # Line 2602
    # lw $t9, -27344($gp) # &__glCopyColorTableScaleBias
    # Line 2600
    sw	$v1,1152($s3)
    # Line 2602
    addiu	$a1,$s3,4952
    # Line 2601
    lw	$v0,996($s4)
    # Line 2602
    addiu	$a0,$s4,2276
    jal	__glCopyColorTableScaleBias
    # Line 2601
    sw	$v0,1148($s3)
    # Line 2603
    lw	$a4,1696($s3)
    lui	$a5,0xe00
    nor	$a5,$a5,$zero
    and	$a4,$a4,$a5
    sw	$a4,1696($s3)
    # Line 2604
    lw	$a3,1544($s4)
    lui	$a5,0xe00
    and	$a3,$a3,$a5
    or	$a3,$a3,$a4
    # Line 2606
    lui	$a4,0x3000
    nor	$a4,$a4,$zero
    and	$a3,$a3,$a4
    sw	$a3,1696($s3)
    # Line 2607
    lw	$a2,1544($s4)
    lui	$a4,0x3000
    and	$a2,$a2,$a4
    or	$a2,$a2,$a3
    sw	$a2,1696($s3)
    # Line 2609
    sw	$s8,__glBeginMode
    lw	$a1,11828($s3)
    # Line 2611
    # lw $t9, -32060($gp) # &__glMgrim_ReadBuffer
    # Line 2609
    ori	$a1,$a1,0x10
    sw	$a1,11828($s3)
    # Line 2611
    jal	__glMgrim_ReadBuffer
    lw	$a0,1000($s4)
    ld	$ra,16($sp)
.L0daa2fec:
    andi	$at,$s6,0x2
    beqz	$at,.L0daa3058
    # Line 2620
    andi	$a3,$s6,0x8
    # Line 2614
    lwc1	$f3,280($s4)
    swc1	$f3,432($s3)
    lwc1	$f2,284($s4)
    # Line 2615
    lw	$a0,1696($s3)
    # Line 2614
    swc1	$f2,436($s3)
    # Line 2615
    li	$a1,-1025
    # Line 2614
    lw	$a2,288($s4)
    # Line 2615
    and	$a0,$a0,$a1
    sw	$a0,1696($s3)
    # Line 2614
    sw	$a2,440($s3)
    # Line 2616
    lw	$v1,1544($s4)
    andi	$v1,$v1,0x400
    or	$v1,$v1,$a0
    sw	$v1,1696($s3)
    # Line 2618
    sw	$s8,__glBeginMode
    lw	$v0,11828($s3)
    sd	$ra,16($sp)
    # Line 2620
    # lw $t9, -32040($gp) # &__glMgrim_PointSize
    # Line 2618
    ori	$v0,$v0,0x8
    sw	$v0,11828($s3)
    # Line 2620
    jal	__glMgrim_PointSize
    lwc1	$f12,280($s4)
    ld	$ra,16($sp)
    andi	$a3,$s6,0x8
.L0daa3058:
    beqz	$a3,.L0daa30f4
    # Line 2630
    andi	$v1,$s6,0x10
    # Line 2623
    lw	$v0,308($s4)
    sw	$v0,460($s3)
    lw	$at,312($s4)
    sw	$at,464($s3)
    lw	$a3,316($s4)
    sw	$a3,468($s3)
    lw	$v1,320($s4)
    sw	$v1,472($s3)
    lw	$v0,324($s4)
    sw	$v0,476($s3)
    lw	$at,328($s4)
    sw	$at,480($s3)
    # Line 2624
    ld	$v1,-14800($gp)
    # Line 2623
    lw	$a3,332($s4)
    # Line 2624
    lw	$v0,1696($s3)
    # Line 2623
    sw	$a3,484($s3)
    # Line 2624
    and	$v0,$v0,$v1
    sw	$v0,1696($s3)
    # Line 2625
    lw	$at,1544($s4)
    lui	$v1,0x100
    ori	$v1,$v1,0x3800
    and	$at,$at,$v1
    or	$at,$at,$v0
    # Line 2627
    lw	$v1,1700($s3)
    # Line 2625
    sw	$at,1696($s3)
    # Line 2627
    li	$a3,-1537
    and	$v1,$v1,$a3
    sw	$v1,1700($s3)
    # Line 2628
    lw	$v0,1548($s4)
    andi	$v0,$v0,0x600
    or	$v0,$v0,$v1
    sw	$v0,1700($s3)
    # Line 2630
    sw	$s8,__glBeginMode
    lw	$at,11828($s3)
    ori	$at,$at,0x4
    sw	$at,11828($s3)
    andi	$v1,$s6,0x10
.L0daa30f4:
    beqz	$v1,.L0daa3168
    # Line 2633
    li	$a1,16
    move	$a0,$zero
    addiu	$a2,$s3,488
    addiu	$a4,$s4,336
.L0daa3108:
    addu	$at,$a0,$a2
    addu	$a3,$a0,$a4
    addiu	$a0,$a0,8
    ld	$a3,0($a3)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0daa3108
    sd	$a3,0($at)
    # Line 2634
    lw	$a5,1696($s3)
    li	$a6,-8193
    and	$a5,$a5,$a6
    sw	$a5,1696($s3)
    # Line 2637
    move	$a0,$s3
    # Line 2635
    lw	$a4,1544($s4)
    sd	$ra,16($sp)
    # Line 2637
    lw	$t9,12716($s3)
    # Line 2635
    andi	$a4,$a4,0x2000
    or	$a4,$a4,$a5
    # Line 2637
    jalr	$t9
    # Line 2635
    sw	$a4,1696($s3)
    # Line 2638
    sw	$s8,__glBeginMode
    lw	$ra,11828($s3)
    ori	$ra,$ra,0x4
    sw	$ra,11828($s3)
    ld	$ra,16($sp)
.L0daa3168:
    lui	$at,0x8
    and	$at,$s6,$at
    beqz	$at,.L0daa32a8
    # Line 2671
    andi	$v0,$s6,0x400
    # Line 2638
    lw	$a1,1696($s3)
    andi	$v0,$a1,0x4000
    beqzl	$v0,.L0daa31cc
    # Line 2647
    lw	$a0,1544($s4)
    lw	$v1,2260($s4)
    lw	$a3,2412($s3)
    bne	$v1,$a3,.L0daa31e0
    # Line 2655
    nop	# was lw $t9, -24148($gp) # &__glReadjustZCounts
    # Line 2647
    lw	$at,2264($s4)
    lw	$v0,2416($s3)
    bne	$at,$v0,.L0daa31e0
    # Line 2655
    nop	# was lw $t9, -24148($gp) # &__glReadjustZCounts
    # Line 2647
    lw	$v1,2268($s4)
    lw	$a3,2420($s3)
    bne	$v1,$a3,.L0daa31e0
    # Line 2655
    nop	# was lw $t9, -24148($gp) # &__glReadjustZCounts
    # Line 2647
    lw	$at,2272($s4)
    lw	$v0,2424($s3)
    bne	$at,$v0,.L0daa31e0
    # Line 2655
    nop	# was lw $t9, -24148($gp) # &__glReadjustZCounts
    # Line 2647
    lw	$a0,1544($s4)
.L0daa31cc:
    nor	$v1,$a0,$zero
    and	$v1,$v1,$a1
    andi	$v1,$v1,0x4000
    beqz	$v1,.L0daa31f8
    # Line 2655
    nop	# was lw $t9, -24148($gp) # &__glReadjustZCounts
.L0daa31e0:
    sd	$ra,16($sp)
    jal	__glReadjustZCounts
    move	$a0,$s3
    lw	$a0,1544($s4)
    lw	$a1,1696($s3)
    ld	$ra,16($sp)
.L0daa31f8:
    nor	$a3,$a1,$zero
    and	$a3,$a3,$a0
    andi	$a3,$a3,0x4000
    beqzl	$a3,.L0daa321c
    # Line 2662
    lw	$a4,2260($s4)
    # Line 2660
    lw	$at,31360($s3)
    sd	$ra,16($sp)
    sw	$at,31364($s3)
    # Line 2662
    lw	$a4,2260($s4)
.L0daa321c:
    sw	$a4,2412($s3)
    lw	$a3,2264($s4)
    sw	$a3,2416($s3)
    lw	$a2,2268($s4)
    sw	$a2,2420($s3)
    # Line 2663
    li	$v1,-16385
    # Line 2662
    lw	$a0,2272($s4)
    # Line 2663
    and	$v1,$a1,$v1
    sw	$v1,1696($s3)
    # Line 2662
    sw	$a0,2424($s3)
    sd	$ra,16($sp)
    # Line 2664
    lw	$v0,1544($s4)
    # Line 2667
    lw	$t9,11988($s3)
    move	$a0,$s3
    # Line 2664
    andi	$v0,$v0,0x4000
    or	$v0,$v0,$v1
    # Line 2667
    jalr	$t9
    # Line 2664
    sw	$v0,1696($s3)
    # Line 2668
    lw	$t9,11980($s3)
    jalr	$t9
    move	$a0,$s3
    lw	$at,1544($s4)
    andi	$at,$at,0x4000
    beqz	$at,.L0daa3b64
    # Line 2670
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,3089
    # Line 2671
    lw	$a3,2272($s4)
.L0daa328c:
    # lw $t9, -31284($gp) # &__glMgrim_Scissor
    lw	$a2,2268($s4)
    lw	$a1,2264($s4)
    jal	__glMgrim_Scissor
    lw	$a0,2260($s4)
    ld	$ra,16($sp)
    andi	$v0,$s6,0x400
.L0daa32a8:
    beqz	$v0,.L0daa335c
    # Line 2689
    lui	$v1,0x4
    # Line 2676
    ld	$v0,1416($s4)
    sd	$v0,1568($s3)
    ld	$at,1424($s4)
    # Line 2677
    li	$v1,0x8000
    lw	$v0,1696($s3)
    # Line 2676
    sd	$at,1576($s3)
    # Line 2677
    nor	$v1,$v1,$zero
    # Line 2676
    ld	$a3,1432($s4)
    # Line 2677
    and	$v0,$v0,$v1
    sw	$v0,1696($s3)
    # Line 2676
    sd	$a3,1584($s3)
    # Line 2680
    lw	$a3,11824($s3)
    # Line 2678
    lw	$at,1544($s4)
    # Line 2680
    ori	$a3,$a3,0x6
    sw	$a3,11824($s3)
    # Line 2678
    andi	$at,$at,0x8000
    or	$at,$at,$v0
    sw	$at,1696($s3)
    # Line 2680
    lw	$v1,1544($s4)
    andi	$v1,$v1,0x8000
    beqz	$v1,.L0daa3d64
    sd	$ra,16($sp)
    # Line 2683
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    bal __glMgrim_Enable
    li	$a0,2960
    # Line 2684
    # lw $t9, -32120($gp) # &__glMgrim_StencilMask
.L0daa3318:
    jal	__glMgrim_StencilMask
    lh	$a0,1426($s4)
    # Line 2685
    # lw $t9, -32088($gp) # &__glMgrim_StencilFunc
    lh	$a2,1424($s4)
    lh	$a1,1422($s4)
    jal	__glMgrim_StencilFunc
    lw	$a0,1416($s4)
    # Line 2687
    # lw $t9, -32084($gp) # &__glMgrim_StencilOp
    lw	$a2,1436($s4)
    lw	$a1,1432($s4)
    jal	__glMgrim_StencilOp
    lw	$a0,1428($s4)
    # Line 2689
    # lw $t9, -31156($gp) # &__glMgrim_ClearStencil
    bal __glMgrim_ClearStencil
    lh	$a0,1420($s4)
    ld	$ra,16($sp)
    lui	$v1,0x4
.L0daa335c:
    and	$v1,$s6,$v1
    beqz	$v1,.L0daa3578
    # Line 2694
    li	$a0,31
    move	$a1,$zero
    addiu	$a2,$s3,1876
    addiu	$a4,$s4,1724
    sd	$s5,64($sp)
    # Line 2692
    lw	$s5,3336($s3)
.L0daa337c:
    # Line 2694
    addu	$at,$a1,$a2
    addu	$a3,$a1,$a4
    addiu	$a1,$a1,4
    lw	$a3,0($a3)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0daa337c
    sw	$a3,0($at)
    # Line 2695
    li	$a1,15
    move	$a0,$zero
    addiu	$a4,$s3,2000
    addiu	$a5,$s4,1848
.L0daa33a8:
    addu	$v0,$a0,$a4
    addu	$at,$a0,$a5
    addiu	$a0,$a0,8
    ld	$at,0($at)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0daa33a8
    sd	$at,0($v0)
    # Line 2696
    li	$a2,31
    move	$a1,$zero
    addiu	$a7,$s3,2124
    # Line 2695
    addu	$v0,$a0,$a5
    lw	$v0,0($v0)
    # Line 2696
    addiu	$a6,$s4,1972
    # Line 2695
    addu	$v1,$a0,$a4
    sw	$v0,0($v1)
.L0daa33e4:
    # Line 2696
    addu	$a3,$a1,$a7
    addu	$v1,$a1,$a6
    addiu	$a1,$a1,4
    lw	$v1,0($v1)
    addiu	$a2,$a2,-1
    bgtz	$a2,.L0daa33e4
    sw	$v1,0($a3)
    # Line 2697
    li	$a0,15
    move	$a2,$zero
    addiu	$a5,$s3,2248
    addiu	$a4,$s4,2096
.L0daa3410:
    addu	$at,$a2,$a5
    addu	$a3,$a2,$a4
    addiu	$a2,$a2,8
    ld	$a3,0($a3)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0daa3410
    sd	$a3,0($at)
    sd	$s0,80($sp)
    addu	$s0,$a2,$a4
    lw	$s0,0($s0)
    sd	$s1,72($sp)
    addu	$s1,$a2,$a5
    sw	$s0,0($s1)
    # Line 2699
    lwc1	$f3,2228($s4)
    swc1	$f3,2380($s3)
    # Line 2700
    lwc1	$f2,2232($s4)
    swc1	$f2,2384($s3)
    # Line 2701
    lwc1	$f1,2236($s4)
    swc1	$f1,2388($s3)
    # Line 2702
    lwc1	$f0,2240($s4)
    swc1	$f0,2392($s3)
    # Line 2704
    lwc1	$f3,2244($s4)
    swc1	$f3,2396($s3)
    # Line 2705
    lwc1	$f2,2248($s4)
    swc1	$f2,2400($s3)
    # Line 2706
    lwc1	$f1,2252($s4)
    swc1	$f1,2404($s3)
    sd	$ra,16($sp)
    # Line 2707
    lwc1	$f0,2256($s4)
    sd	$s2,88($sp)
    # Line 2721
    lw	$a0,2372($s3)
    # Line 2707
    swc1	$f0,2408($s3)
    # Line 2723
    move	$s0,$zero
    # Line 2722
    lw	$a1,2220($s4)
    # Line 2721
    move	$s1,$a0
    # Line 2723
    beqz	$s5,.L0daa34e0
    # Line 2722
    move	$s2,$a1
    andi	$at,$s5,0x1
    beqz	$at,.L0daa34cc
    # Line 2723
    move	$a0,$s5
    lw	$v0,216($s1)
    lw	$a2,216($s2)
    bnel	$v0,$a2,.L0daa3d78
    sd	$a0,24($sp)
.L0daa34c0:
    # Line 2724
    addiu	$s2,$s2,224
    addiu	$s1,$s1,224
    addiu	$s0,$s0,1
.L0daa34cc:
    sra	$v1,$a0,0x1
    bnez	$v1,.L0daa37d4
    sd	$ra,16($sp)
    lw	$a1,2220($s4)
.L0daa34dc:
    lw	$a0,2372($s3)
.L0daa34e0:
    ld	$s1,72($sp)
    ld	$s0,80($sp)
    ld	$s2,88($sp)
    # Line 2731
    # lw $t9, -17848($gp) # &memcpy
    sll	$a2,$s5,0x3
    subu	$a2,$a2,$s5
    jal	memcpy
    sll	$a2,$a2,0x5
    # Line 2733
    lw	$a1,2224($s4)
    lw	$a0,2376($s3)
    lw	$a3,3340($s3)
    ld	$s5,64($sp)
    # lw $t9, -17848($gp) # &memcpy
    sll	$a2,$a3,0x3
    addu	$a2,$a2,$a3
    jal	memcpy
    sll	$a2,$a2,0x2
    # Line 2736
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,2220($s4)
    # Line 2737
    sw	$zero,2220($s4)
    # Line 2738
    lw	$t9,12($s3)
    lw	$a1,2224($s4)
    jalr	$t9
    move	$a0,$s3
    # Line 2739
    sw	$zero,2224($s4)
    # Line 2740
    lw	$at,1696($s3)
    lui	$v0,0x3fc0
    ori	$v0,$v0,0xffff
    and	$at,$at,$v0
    sw	$at,1696($s3)
    # Line 2741
    lw	$ra,1544($s4)
    lui	$v0,0xc03f
    and	$ra,$ra,$v0
    or	$ra,$ra,$at
    sw	$ra,1696($s3)
    ld	$ra,16($sp)
.L0daa3578:
    andi	$v1,$s6,0x1000
    beqz	$v1,.L0daa35ec
    # Line 2752
    andi	$v0,$s6,0x800
    # Line 2746
    lw	$a0,1652($s3)
    sd	$ra,16($sp)
    lw	$a2,3332($s3)
    # Line 2745
    lw	$a1,1496($s4)
    # Line 2746
    # lw $t9, -17848($gp) # &memcpy
    sll	$a2,$a2,0x4
    # Line 2745
    sw	$a1,1648($s3)
    # Line 2746
    jal	memcpy
    lw	$a1,1500($s4)
    # Line 2749
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,1500($s4)
    # Line 2750
    sw	$zero,1500($s4)
    # Line 2751
    lw	$ra,1696($s3)
    lui	$at,0x40
    nor	$at,$at,$zero
    and	$ra,$ra,$at
    sw	$ra,1696($s3)
    # Line 2752
    lw	$a3,1544($s4)
    lui	$at,0x40
    and	$a3,$a3,$at
    or	$a3,$a3,$ra
    ld	$ra,16($sp)
    sw	$a3,1696($s3)
    andi	$v0,$s6,0x800
.L0daa35ec:
    beqz	$v0,.L0daa366c
    ld	$s6,32($sp)
    # Line 2756
    ld	$a5,1440($s4)
    sd	$a5,1592($s3)
    ld	$a4,1448($s4)
    sd	$a4,1600($s3)
    ld	$a3,1456($s4)
    sd	$a3,1608($s3)
    ld	$a2,1464($s4)
    sd	$a2,1616($s3)
    ld	$a1,1472($s4)
    sd	$a1,1624($s3)
    ld	$a0,1480($s4)
    ld	$s6,32($sp)
    sd	$ra,16($sp)
    sd	$a0,1632($s3)
    # Line 2757
    # lw $t9, -24160($gp) # &__glUpdateViewportTransform
    # Line 2756
    ld	$v1,1488($s4)
    # Line 2757
    move	$a0,$s3
    jal	__glUpdateViewportTransform
    # Line 2756
    sd	$v1,1640($s3)
    # Line 2759
    lw	$a3,1452($s4)
    # lw $t9, -24156($gp) # &__glim_Viewport
    lw	$a2,1448($s4)
    lw	$a1,1444($s4)
    jal	__glim_Viewport
    lw	$a0,1440($s4)
    # Line 2761
    # lw $t9, -32032($gp) # &__glMgrim_DepthRange
    ldc1	$f13,1464($s4)
    jal	__glMgrim_DepthRange
    ldc1	$f12,1456($s4)
    ld	$ra,16($sp)
.L0daa366c:
    # Line 2768
    sw	$zero,0($s4)
    # Line 2770
    sw	$s8,__glBeginMode
    lw	$v0,11828($s3)
    ori	$v0,$v0,0x1
    sw	$v0,11828($s3)
    lbu	$at,-28063($s7)
    ld	$s4,40($sp)
    ld	$s8,48($sp)
    beqz	$at,.L0daa36c4
    lw	$a0,-28068($s7)
    ld	$s4,40($sp)
    andi	$v1,$a0,0x4
    beqz	$v1,.L0daa36c4
    ld	$s8,48($sp)
    # Line 2773
    lw	$a3,1696($s3)
    nor	$a3,$a3,$zero
    andi	$a3,$a3,0x200
    beqz	$a3,.L0daa3b9c
    # Line 2776
    li	$at,-5
.L0daa36b8:
    and	$a0,$a0,$at
    beqz	$a0,.L0daa3dec
    sw	$a0,-28068($s7)
.L0daa36c4:
    # Line 2777
    lbu	$v0,-28062($s7)
.L0daa36c8:
    beqz	$v0,.L0daa36f8
    andi	$v1,$a0,0x2
    beqz	$v1,.L0daa36fc
    # Line 2788
    andi	$v0,$a0,0x8
    # Line 2777
    lw	$a3,1696($s3)
    nor	$a3,$a3,$zero
    andi	$a3,$a3,0x800
    beqz	$a3,.L0daa36f8
    # Line 2786
    li	$at,-3
    and	$a0,$a0,$at
    beqz	$a0,.L0daa3e08
    sw	$a0,-28068($s7)
.L0daa36f8:
    # Line 2788
    andi	$v0,$a0,0x8
.L0daa36fc:
    beqz	$v0,.L0daa372c
    # Line 2796
    andi	$at,$a0,0x10
    # Line 2788
    lw	$v1,1696($s3)
    lui	$a3,0x1
    nor	$v1,$v1,$zero
    and	$v1,$v1,$a3
    beqz	$v1,.L0daa3728
    # Line 2795
    li	$a3,-9
    and	$a0,$a0,$a3
    beqz	$a0,.L0daa3d98
    sw	$a0,-28068($s7)
.L0daa3728:
    # Line 2796
    andi	$at,$a0,0x10
.L0daa372c:
    beqz	$at,.L0daa375c
    # Line 2804
    andi	$a3,$a0,0x20
    # Line 2796
    lw	$v0,1696($s3)
    lui	$v1,0x2
    nor	$v0,$v0,$zero
    and	$v0,$v0,$v1
    beqz	$v0,.L0daa3758
    # Line 2803
    li	$v1,-17
    and	$a0,$a0,$v1
    beqz	$a0,.L0daa3db4
    sw	$a0,-28068($s7)
.L0daa3758:
    # Line 2804
    andi	$a3,$a0,0x20
.L0daa375c:
    beqz	$a3,.L0daa378c
    # Line 2812
    andi	$v1,$a0,0x40
    # Line 2804
    lw	$at,1696($s3)
    nor	$at,$at,$zero
    lui	$v0,0x4000
    and	$at,$at,$v0
    beqz	$at,.L0daa3788
    # Line 2811
    li	$v0,-33
    and	$a0,$a0,$v0
    beqz	$a0,.L0daa3dd0
    sw	$a0,-28068($s7)
.L0daa3788:
    # Line 2812
    andi	$v1,$a0,0x40
.L0daa378c:
    beqz	$v1,.L0daa37a8
    # Line 2817
    nop	# was lw $t9, -31436($gp) # &__glMgrNeedSoftFilter4
    sd	$ra,16($sp)
    jal	__glMgrNeedSoftFilter4
    nop
    beqz	$v0,.L0daa3818
    ld	$ra,16($sp)
.L0daa37a8:
    ld	$gp,0($sp)
    # Line 2828
    ld	$s3,8($sp)
    ld	$s7,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daa37bc:
    # Line 2726
    move	$a0,$s3
    jalr	$t9
    move	$a1,$s0
.L0daa37c8:
    # Line 2724
    addiu	$s0,$s0,1
    beql	$s5,$s0,.L0daa34dc
    lw	$a1,2220($s4)
.L0daa37d4:
    # Line 2723
    lw	$a2,216($s2)
    lw	$a3,216($s1)
    bne	$a3,$a2,.L0daa3804
    # Line 2726
    nop	# was lw $t9, -24588($gp) # &__glBindTexture
    # Line 2723
    lw	$a2,440($s2)
.L0daa37e8:
    lw	$at,440($s1)
    # Line 2724
    addiu	$s2,$s2,448
    addiu	$s1,$s1,448
    # Line 2723
    beq	$at,$a2,.L0daa37c8
    # Line 2724
    addiu	$s0,$s0,1
    b	.L0daa37bc
    # Line 2726
    nop	# was lw $t9, -24588($gp) # &__glBindTexture
.L0daa3804:
    move	$a0,$s3
    jal	__glBindTexture
    move	$a1,$s0
    b	.L0daa37e8
    # Line 2723
    lw	$a2,440($s2)
.L0daa3818:
    # Line 2819
    lw	$v0,-28068($s7)
    li	$v1,-65
    and	$v0,$v0,$v1
    bnez	$v0,.L0daa37a8
    sw	$v0,-28068($s7)
    # Line 2821
    # lw $t9, -29604($gp) # &__glMgrExitSoftPath
    move	$a0,$s3
    jal	__glMgrExitSoftPath
    ld	$s7,56($sp)
    b	.L0daa37a8
    ld	$ra,16($sp)
.L0daa3844:
    # Line 2427
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3008
    b	.L0daa2468
    # Line 2428
    nop	# was lw $t9, -32104($gp) # &__glMgrim_AlphaFunc
.L0daa3858:
    # Line 2430
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3042
    b	.L0daa2490
    # Line 2431
    nop	# was lw $t9, -32096($gp) # &__glMgrim_BlendFunc
.L0daa386c:
    # Line 2433
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3024
    b	.L0daa24c4
    # Line 2434
    nop	# was lw $t9, -32052($gp) # &__glMgrim_DrawBuffer
.L0daa3880:
    # Line 2435
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3057
    b	.L0daa24e8
    lw	$a3,1548($s4)
.L0daa3894:
    # Line 2436
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3058
    b	.L0daa2500
    # Line 2437
    nop	# was lw $t9, -32092($gp) # &__glMgrim_LogicOp
.L0daa38a8:
    # Line 2487
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3008
    b	.L0daa2710
    lw	$at,1544($s4)
.L0daa38bc:
    # Line 2488
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3042
    b	.L0daa2728
    lw	$v0,1544($s4)
.L0daa38d0:
    # Line 2489
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,2929
    b	.L0daa2740
    lw	$v1,1544($s4)
.L0daa38e4:
    # Line 2490
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3024
    b	.L0daa2758
    lw	$a3,1544($s4)
.L0daa38f8:
    # Line 2491
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,2848
    b	.L0daa2770
    lw	$at,1544($s4)
.L0daa390c:
    # Line 2492
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3057
    b	.L0daa2788
    lw	$v0,1544($s4)
.L0daa3920:
    # Line 2493
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,0x8037
    b	.L0daa27a4
    lw	$a3,1548($s4)
.L0daa3934:
    # Line 2494
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3058
    b	.L0daa27bc
    lw	$at,1548($s4)
.L0daa3948:
    # Line 2495
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,10754
    b	.L0daa27d4
    lw	$v0,1548($s4)
.L0daa395c:
    # Line 2496
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,10753
    b	.L0daa27ec
    lw	$v1,1544($s4)
.L0daa3970:
    # Line 2497
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3089
    b	.L0daa2804
    lw	$a3,1544($s4)
.L0daa3984:
    # Line 2498
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,2960
    b	.L0daa281c
    lw	$at,1544($s4)
.L0daa3998:
    # Line 2501
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,0x8024
    b	.L0daa2838
    lw	$v1,1544($s4)
.L0daa39ac:
    # Line 2502
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,0x802e
    b	.L0daa2854
    lw	$at,1544($s4)
.L0daa39c0:
    # Line 2503
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,0x8010
    b	.L0daa2870
    lw	$v1,1544($s4)
.L0daa39d4:
    # Line 2504
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,0x8011
    b	.L0daa288c
    lw	$at,1544($s4)
.L0daa39e8:
    # Line 2505
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,0x8012
    b	.L0daa28a8
    lw	$v1,1560($s4)
.L0daa39fc:
    # Line 2507
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3472
    b	.L0daa28c0
    lw	$a3,1560($s4)
.L0daa3a10:
    # Line 2508
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3473
    b	.L0daa28d8
    lw	$at,1560($s4)
.L0daa3a24:
    # Line 2509
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3474
    b	.L0daa28f0
    lw	$v0,1560($s4)
.L0daa3a38:
    # Line 2510
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3475
    b	.L0daa2908
    lw	$v1,1560($s4)
.L0daa3a4c:
    # Line 2511
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3476
    b	.L0daa2920
    lw	$a3,1560($s4)
.L0daa3a60:
    # Line 2512
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3477
    b	.L0daa2938
    lw	$at,1560($s4)
.L0daa3a74:
    # Line 2513
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3478
    b	.L0daa2950
    lw	$v0,1560($s4)
.L0daa3a88:
    # Line 2514
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3479
    b	.L0daa2968
    lw	$v1,1560($s4)
.L0daa3a9c:
    # Line 2515
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3480
    b	.L0daa2980
    lw	$a3,1564($s4)
.L0daa3ab0:
    # Line 2517
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3504
    b	.L0daa2998
    lw	$at,1564($s4)
.L0daa3ac4:
    # Line 2518
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3505
    b	.L0daa29b0
    lw	$v0,1564($s4)
.L0daa3ad8:
    # Line 2519
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3506
    b	.L0daa29c8
    lw	$v1,1564($s4)
.L0daa3aec:
    # Line 2520
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3507
    b	.L0daa29e0
    lw	$a3,1564($s4)
.L0daa3b00:
    # Line 2521
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3508
    b	.L0daa29f8
    lw	$at,1564($s4)
.L0daa3b14:
    # Line 2522
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3509
    b	.L0daa2a10
    lw	$v0,1564($s4)
.L0daa3b28:
    # Line 2523
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3510
    b	.L0daa2a28
    lw	$v1,1564($s4)
.L0daa3b3c:
    # Line 2524
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3511
    b	.L0daa2a40
    lw	$a3,1564($s4)
.L0daa3b50:
    # Line 2525
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3512
    b	.L0daa2a58
    ld	$ra,16($sp)
.L0daa3b64:
    # Line 2670
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3089
    b	.L0daa328c
    # Line 2671
    lw	$a3,2272($s4)
.L0daa3b78:
    # Line 2825
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1284
    # Line 2826
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s3,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daa3b9c:
    # Line 2773
    lwc1	$f0,444($s3)
    ldc1	$f1,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f1
    nop
    bc1fl	.L0daa36c8
    # Line 2777
    lbu	$v0,-28062($s7)
    b	.L0daa36b8
    # Line 2776
    li	$at,-5
.L0daa3bc0:
    # Line 2462
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,2929
    b	.L0daa2614
    # Line 2463
    nop	# was lw $t9, -32080($gp) # &__glMgrim_DepthFunc
.L0daa3bd4:
    # Line 2535
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3472
    b	.L0daa2af0
    lw	$v0,1560($s4)
.L0daa3be8:
    # Line 2536
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3473
    b	.L0daa2b08
    lw	$v1,1560($s4)
.L0daa3bfc:
    # Line 2537
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3474
    b	.L0daa2b20
    lw	$a3,1560($s4)
.L0daa3c10:
    # Line 2538
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3475
    b	.L0daa2b38
    lw	$at,1560($s4)
.L0daa3c24:
    # Line 2539
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3476
    b	.L0daa2b50
    lw	$v0,1560($s4)
.L0daa3c38:
    # Line 2540
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3477
    b	.L0daa2b68
    lw	$v1,1560($s4)
.L0daa3c4c:
    # Line 2541
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3478
    b	.L0daa2b80
    lw	$a3,1560($s4)
.L0daa3c60:
    # Line 2542
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3479
    b	.L0daa2b98
    lw	$at,1560($s4)
.L0daa3c74:
    # Line 2543
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3480
    b	.L0daa2bb0
    lw	$v0,1564($s4)
.L0daa3c88:
    # Line 2545
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3504
    b	.L0daa2bc8
    lw	$v1,1564($s4)
.L0daa3c9c:
    # Line 2546
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3505
    b	.L0daa2be0
    lw	$a3,1564($s4)
.L0daa3cb0:
    # Line 2547
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3506
    b	.L0daa2bf8
    lw	$at,1564($s4)
.L0daa3cc4:
    # Line 2548
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3507
    b	.L0daa2c10
    lw	$v0,1564($s4)
.L0daa3cd8:
    # Line 2549
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3508
    b	.L0daa2c28
    lw	$v1,1564($s4)
.L0daa3cec:
    # Line 2550
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3509
    b	.L0daa2c40
    lw	$a3,1564($s4)
.L0daa3d00:
    # Line 2551
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3510
    b	.L0daa2c58
    lw	$at,1564($s4)
.L0daa3d14:
    # Line 2552
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3511
    b	.L0daa2c70
    lw	$v0,1564($s4)
.L0daa3d28:
    # Line 2553
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,3512
    b	.L0daa2c88
    # Line 2554
    nop	# was lw $t9, -30904($gp) # &__glMgrUpdateEvalAttributes
.L0daa3d3c:
    # Line 2590
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,2848
    b	.L0daa2ed0
    lw	$at,1544($s4)
.L0daa3d50:
    # Line 2591
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,2852
    b	.L0daa2ee8
    # Line 2592
    nop	# was lw $t9, -32044($gp) # &__glMgrim_LineWidth
.L0daa3d64:
    # Line 2683
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    bal __glMgrim_Disable
    li	$a0,2960
    b	.L0daa3318
    # Line 2684
    nop	# was lw $t9, -32120($gp) # &__glMgrim_StencilMask
.L0daa3d78:
    # Line 2726
    # lw $t9, -24588($gp) # &__glBindTexture
    move	$a0,$s3
    sd	$ra,16($sp)
    jal	__glBindTexture
    move	$a1,$s0
    ld	$a0,24($sp)
    b	.L0daa34c0
    ld	$ra,16($sp)
.L0daa3d98:
    # Line 2797
    # lw $t9, -29604($gp) # &__glMgrExitSoftPath
    sd	$ra,16($sp)
    jal	__glMgrExitSoftPath
    move	$a0,$s3
    lw	$a0,-28068($s7)
    b	.L0daa3728
    ld	$ra,16($sp)
.L0daa3db4:
    # Line 2805
    # lw $t9, -29604($gp) # &__glMgrExitSoftPath
    sd	$ra,16($sp)
    jal	__glMgrExitSoftPath
    move	$a0,$s3
    lw	$a0,-28068($s7)
    b	.L0daa3758
    ld	$ra,16($sp)
.L0daa3dd0:
    # Line 2813
    # lw $t9, -29604($gp) # &__glMgrExitSoftPath
    sd	$ra,16($sp)
    jal	__glMgrExitSoftPath
    move	$a0,$s3
    lw	$a0,-28068($s7)
    b	.L0daa3788
    ld	$ra,16($sp)
.L0daa3dec:
    # Line 2778
    # lw $t9, -29604($gp) # &__glMgrExitSoftPath
    sd	$ra,16($sp)
    jal	__glMgrExitSoftPath
    move	$a0,$s3
    lw	$a0,-28068($s7)
    b	.L0daa36c4
    ld	$ra,16($sp)
.L0daa3e08:
    # Line 2788
    # lw $t9, -29604($gp) # &__glMgrExitSoftPath
    sd	$ra,16($sp)
    jal	__glMgrExitSoftPath
    move	$a0,$s3
    lw	$a0,-28068($s7)
    b	.L0daa36f8
    ld	$ra,16($sp)
.L0daa3e24:
    # Line 2400
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s3,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glMgrim_SoftPopAttrib

# Function: __glMgrim_PopAttrib
# Declared: Line 2831 (Source lines: 2831-3416)
# Address: 0x0daa3e48 - 0x0daa6604 (Size: 10172 bytes, Frame: 160)
.globl __glMgrim_PopAttrib
.ent __glMgrim_PopAttrib
__glMgrim_PopAttrib:
    # Line 2838
    li	$v0,1
    # Line 2831
    addiu	$sp,$sp,-160
    sd	$s3,64($sp)
    # Line 2838
    lw	$s3,__glCurrentContext
    sd	$gp,72($sp)
    lw	$at,__glBeginMode
    # Line 2831
    lui	$v1,0x16
    addiu	$v1,$v1,-22448
    # Line 2838
    beq	$at,$v0,.L0daa65c0
    # Line 2831
    addu	$gp,$t9,$v1
    sd	$s4,88($sp)
    # Line 2841
    lw	$a0,12732($s3)
    # Line 2842
    lw	$a3,12728($s3)
    lui	$s4,0x1
    addu	$s4,$s4,$s3
    sltu	$a3,$a3,$a0
    beqz	$a3,.L0daa61e0
    lw	$a1,-28048($s4)
    sd	$s8,104($sp)
    sd	$s0,56($sp)
    # Line 2846
    lw	$s0,-4($a0)
    # Line 2849
    addiu	$v1,$a0,-4
    sd	$s5,112($sp)
    # Line 2848
    lw	$s5,0($s0)
    # Line 2849
    sw	$v1,12732($s3)
    # Line 2853
    addiu	$v0,$a1,-4
    # Line 2851
    lw	$s8,-4($a1)
    # Line 2853
    andi	$at,$s5,0x200
    beqz	$at,.L0daa3ee0
    sw	$v0,-28048($s4)
    # Line 2856
    lwc1	$f15,1412($s0)
    lwc1	$f14,1408($s0)
    # lw $t9, -28024($gp) # &__glim_ClearAccum
    lwc1	$f13,1404($s0)
    sd	$ra,80($sp)
    jal	__glim_ClearAccum
    lwc1	$f12,1400($s0)
    ld	$ra,80($sp)
.L0daa3ee0:
    andi	$a3,$s5,0x4000
    beqz	$a3,.L0daa3ff4
    # Line 2861
    nop	# was lw $t9, -32052($gp) # &__glMgrim_DrawBuffer
    sd	$ra,80($sp)
    jal	__glMgrim_DrawBuffer
    lw	$a0,1640($s0)
    lw	$at,1544($s0)
    andi	$at,$at,0x1
    beqz	$at,.L0daa64fc
    # Line 2862
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3008
    # Line 2863
    # lw $t9, -32104($gp) # &__glMgrim_AlphaFunc
.L0daa3f14:
    lwc1	$f13,1572($s0)
    jal	__glMgrim_AlphaFunc
    lw	$a0,1568($s0)
    lw	$v0,1544($s0)
    andi	$v0,$v0,0x2
    beqz	$v0,.L0daa6510
    # Line 2865
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3042
    # Line 2866
    # lw $t9, -32096($gp) # &__glMgrim_BlendFunc
.L0daa3f3c:
    lw	$a1,1580($s0)
    jal	__glMgrim_BlendFunc
    lw	$a0,1576($s0)
    # Line 2867
    # lw $t9, -32100($gp) # &__glMgrim_BlendEquationEXT
    jal	__glMgrim_BlendEquationEXT
    lw	$a0,1584($s0)
    lw	$v1,1544($s0)
    andi	$v1,$v1,0x8
    beqz	$v1,.L0daa6524
    # Line 2868
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3024
    lw	$a3,1544($s0)
.L0daa3f70:
    andi	$a3,$a3,0x4
    beqz	$a3,.L0daa6538
    # Line 2869
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3057
    lw	$at,1548($s0)
.L0daa3f88:
    andi	$at,$at,0x800
    beqz	$at,.L0daa654c
    # Line 2870
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3058
    # Line 2871
    # lw $t9, -32092($gp) # &__glMgrim_LogicOp
.L0daa3fa0:
    jal	__glMgrim_LogicOp
    lw	$a0,1604($s0)
    # Line 2873
    lbu	$a3,1635($s0)
    # lw $t9, -16864($gp) # &glColorMask
    lbu	$a2,1634($s0)
    lbu	$a1,1633($s0)
    jal	glColorMask
    lbu	$a0,1632($s0)
    # Line 2875
    # lw $t9, -16856($gp) # &glIndexMask
    jal	glIndexMask
    lw	$a0,1628($s0)
    # Line 2877
    # lw $t9, -31160($gp) # &__glMgrim_ClearIndex
    bal __glMgrim_ClearIndex
    lwc1	$f12,1624($s0)
    # Line 2878
    lwc1	$f15,1620($s0)
    # lw $t9, -31172($gp) # &__glMgrim_ClearColor
    lwc1	$f14,1616($s0)
    lwc1	$f13,1612($s0)
    bal __glMgrim_ClearColor
    lwc1	$f12,1608($s0)
    ld	$ra,80($sp)
.L0daa3ff4:
    andi	$v0,$s5,0x1
    beqz	$v0,.L0daa4080
    # Line 2896
    andi	$at,$s5,0x100
    # Line 2883
    lw	$t9,5640($s3)
    lwc1	$f15,268($s0)
    lwc1	$f14,264($s0)
    lw	$t9,1660($t9)
    lwc1	$f13,260($s0)
    sd	$ra,80($sp)
    jal	__glMgrim_ClearColor
    lwc1	$f12,256($s0)
    # Line 2887
    lw	$t9,5640($s3)
    lw	$t9,1716($t9)
    jalr	$t9
    lwc1	$f12,272($s0)
    # Line 2889
    # lw $t9, -31136($gp) # &__glMgrRestoreRasterPosition
    lbu	$a1,276($s0)
    bal __glMgrRestoreRasterPosition
    addiu	$a0,$s0,64
    # Line 2892
    # lw $t9, -18488($gp) # &__glMgrim_Normal3f
    lwc1	$f14,40($s0)
    lwc1	$f13,36($s0)
    jal	__glMgrim_Normal3f
    lwc1	$f12,32($s0)
    # Line 2894
    lwc1	$f15,60($s0)
    # lw $t9, -17224($gp) # &glTexCoord4f
    lwc1	$f14,56($s0)
    lwc1	$f13,52($s0)
    jal	glTexCoord4f
    lwc1	$f12,48($s0)
    # Line 2896
    # lw $t9, -31292($gp) # &__glMgrim_EdgeFlag
    jal	__glMgrim_EdgeFlag
    lbu	$a0,277($s0)
    ld	$ra,80($sp)
    andi	$at,$s5,0x100
.L0daa4080:
    beqz	$at,.L0daa40d0
    # Line 2904
    andi	$v1,$s5,0x2000
    # Line 2896
    lw	$v0,1544($s0)
    andi	$v0,$v0,0x10
    beqz	$v0,.L0daa5b8c
    sd	$ra,80($sp)
    # Line 2901
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2929
    # Line 2902
    # lw $t9, -32080($gp) # &__glMgrim_DepthFunc
.L0daa40a8:
    jal	__glMgrim_DepthFunc
    lw	$a0,1384($s0)
    # Line 2903
    # lw $t9, -32112($gp) # &__glMgrim_DepthMask
    jal	__glMgrim_DepthMask
    lbu	$a0,1388($s0)
    # Line 2904
    # lw $t9, -31164($gp) # &__glMgrim_ClearDepth
    bal __glMgrim_ClearDepth
    ldc1	$f12,1392($s0)
    ld	$ra,80($sp)
    andi	$v1,$s5,0x2000
.L0daa40d0:
    beqz	$v1,.L0daa476c
    lui	$v1,0x1
    lw	$a3,1544($s0)
    andi	$a3,$a3,0x1
    beqz	$a3,.L0daa5ba0
    sd	$ra,80($sp)
    # Line 2910
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3008
    lw	$at,1544($s0)
.L0daa40f8:
    lui	$v0,0x80
    and	$at,$at,$v0
    beqz	$at,.L0daa5bb4
    # Line 2911
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3456
    lw	$v1,1544($s0)
.L0daa4114:
    andi	$v1,$v1,0x2
    beqz	$v1,.L0daa5bc8
    # Line 2912
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3042
    lw	$a3,1544($s0)
.L0daa412c:
    andi	$a3,$a3,0x1000
    beqz	$a3,.L0daa5bdc
    # Line 2913
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2884
    lw	$at,1544($s0)
.L0daa4144:
    andi	$at,$at,0x10
    beqz	$at,.L0daa5bf0
    # Line 2914
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2929
    lw	$v0,1544($s0)
.L0daa415c:
    andi	$v0,$v0,0x8
    beqz	$v0,.L0daa5c04
    # Line 2915
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3024
    lw	$v1,1544($s0)
.L0daa4174:
    andi	$v1,$v1,0x80
    beqz	$v1,.L0daa5c18
    # Line 2916
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2903
    lw	$a3,1544($s0)
.L0daa418c:
    andi	$a3,$a3,0x20
    beqz	$a3,.L0daa5c2c
    # Line 2917
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2912
    lw	$at,1544($s0)
.L0daa41a4:
    andi	$at,$at,0x200
    beqz	$at,.L0daa5c40
    # Line 2918
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2848
    lw	$v0,1544($s0)
.L0daa41bc:
    andi	$v0,$v0,0x100
    beqz	$v0,.L0daa5c54
    # Line 2919
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2852
    lw	$v1,1544($s0)
.L0daa41d4:
    andi	$v1,$v1,0x4
    beqz	$v1,.L0daa5c68
    # Line 2920
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3057
    lw	$a3,1548($s0)
.L0daa41ec:
    andi	$a3,$a3,0x800
    beqz	$a3,.L0daa5c7c
    # Line 2921
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3058
    lw	$at,1544($s0)
.L0daa4204:
    lui	$v0,0x40
    and	$at,$at,$v0
    beqz	$at,.L0daa5c90
    # Line 2922
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2977
    lw	$v1,1544($s0)
.L0daa4220:
    andi	$v1,$v1,0x400
    beqz	$v1,.L0daa5ca4
    # Line 2923
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2832
    lw	$a3,1544($s0)
.L0daa4238:
    andi	$a3,$a3,0x800
    beqz	$a3,.L0daa5cb8
    # Line 2924
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2881
    lw	$at,1544($s0)
.L0daa4250:
    andi	$at,$at,0x2000
    beqz	$at,.L0daa5ccc
    # Line 2925
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2882
    lw	$v0,1544($s0)
.L0daa4268:
    andi	$v0,$v0,0x4000
    beqz	$v0,.L0daa5ce0
    # Line 2926
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3089
    lw	$v1,1544($s0)
.L0daa4280:
    andi	$v1,$v1,0x8000
    beqz	$v1,.L0daa5cf4
    # Line 2927
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2960
    lw	$a3,1544($s0)
.L0daa4298:
    lui	$at,0x1
    and	$a3,$a3,$at
    beqz	$a3,.L0daa5d08
    # Line 2928
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3552
    lw	$v0,1544($s0)
.L0daa42b4:
    lui	$v1,0x2
    and	$v0,$v0,$v1
    beqz	$v0,.L0daa5d1c
    # Line 2929
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3553
    lw	$a3,1544($s0)
.L0daa42d0:
    lui	$at,0x4000
    and	$a3,$a3,$at
    beqz	$a3,.L0daa5d30
    # Line 2930
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,0x806f
    lw	$v0,1544($s0)
.L0daa42ec:
    lui	$v1,0x4
    and	$v0,$v0,$v1
    beqz	$v0,.L0daa5d44
    # Line 2931
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3168
    lw	$a3,1544($s0)
.L0daa4308:
    lui	$at,0x8
    and	$a3,$a3,$at
    beqz	$a3,.L0daa5d58
    # Line 2932
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3169
    lw	$v0,1544($s0)
.L0daa4324:
    lui	$v1,0x10
    and	$v0,$v0,$v1
    beqz	$v0,.L0daa5d6c
    # Line 2933
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3170
    lw	$a3,1544($s0)
.L0daa4340:
    lui	$at,0x20
    and	$a3,$a3,$at
    beqz	$a3,.L0daa5d80
    # Line 2934
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3171
    lw	$v0,1544($s0)
.L0daa435c:
    lui	$v1,0x100
    and	$v0,$v0,$v1
    beqz	$v0,.L0daa5d94
    # Line 2935
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,0x8037
    lw	$a3,1548($s0)
.L0daa4378:
    andi	$a3,$a3,0x400
    beqz	$a3,.L0daa5da8
    # Line 2936
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,10754
    lw	$at,1548($s0)
.L0daa4390:
    andi	$at,$at,0x200
    beqz	$at,.L0daa5dbc
    # Line 2937
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,10753
    lw	$v0,1556($s0)
.L0daa43a8:
    andi	$v0,$v0,0x1
    beqz	$v0,.L0daa5dd0
    # Line 2938
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,12288
    lw	$v1,1556($s0)
.L0daa43c0:
    andi	$v1,$v1,0x2
    beqz	$v1,.L0daa5de4
    # Line 2939
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,12289
    lw	$a3,1556($s0)
.L0daa43d8:
    andi	$a3,$a3,0x4
    beqz	$a3,.L0daa5df8
    # Line 2940
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,12290
    lw	$at,1556($s0)
.L0daa43f0:
    andi	$at,$at,0x8
    beqz	$at,.L0daa5e0c
    # Line 2941
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,12291
    lw	$v0,1556($s0)
.L0daa4408:
    andi	$v0,$v0,0x10
    beqz	$v0,.L0daa5e20
    # Line 2942
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,12292
    lw	$v1,1556($s0)
.L0daa4420:
    andi	$v1,$v1,0x20
    beqz	$v1,.L0daa5e34
    # Line 2943
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,12293
    lw	$a3,1544($s0)
.L0daa4438:
    andi	$a3,$a3,0x40
    beqz	$a3,.L0daa5e48
    # Line 2944
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2896
    lw	$at,1552($s0)
.L0daa4450:
    andi	$at,$at,0x1
    beqz	$at,.L0daa5e5c
    # Line 2945
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16384
    lw	$v0,1552($s0)
.L0daa4468:
    andi	$v0,$v0,0x2
    beqz	$v0,.L0daa5e70
    # Line 2946
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16385
    lw	$v1,1552($s0)
.L0daa4480:
    andi	$v1,$v1,0x4
    beqz	$v1,.L0daa5e84
    # Line 2947
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16386
    lw	$a3,1552($s0)
.L0daa4498:
    andi	$a3,$a3,0x8
    beqz	$a3,.L0daa5e98
    # Line 2948
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16387
    lw	$at,1552($s0)
.L0daa44b0:
    andi	$at,$at,0x10
    beqz	$at,.L0daa5eac
    # Line 2949
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16388
    lw	$v0,1552($s0)
.L0daa44c8:
    andi	$v0,$v0,0x20
    beqz	$v0,.L0daa5ec0
    # Line 2950
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16389
    lw	$v1,1552($s0)
.L0daa44e0:
    andi	$v1,$v1,0x40
    beqz	$v1,.L0daa5ed4
    # Line 2951
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16390
    lw	$a3,1552($s0)
.L0daa44f8:
    andi	$a3,$a3,0x80
    beqz	$a3,.L0daa5ee8
    # Line 2952
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16391
    lw	$at,1552($s0)
.L0daa4510:
    lui	$v0,0x8000
    and	$at,$at,$v0
    beqz	$at,.L0daa5efc
    # Line 2954
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,0xbead
    lw	$v1,1544($s0)
.L0daa452c:
    lui	$a3,0x1000
    and	$v1,$v1,$a3
    beqz	$v1,.L0daa5f10
    # Line 2957
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,0x8024
    lw	$at,1544($s0)
.L0daa4548:
    lui	$v0,0x2000
    and	$at,$at,$v0
    beqz	$at,.L0daa5f24
    # Line 2958
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,0x802e
    lw	$v1,1544($s0)
.L0daa4564:
    lui	$a3,0x200
    and	$v1,$v1,$a3
    beqz	$v1,.L0daa5f38
    # Line 2959
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,0x8010
    lw	$at,1544($s0)
.L0daa4580:
    lui	$v0,0x400
    and	$at,$at,$v0
    beqz	$at,.L0daa5f4c
    # Line 2960
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,0x8011
    lw	$v1,1544($s0)
.L0daa459c:
    lui	$a3,0x800
    and	$v1,$v1,$a3
    beqz	$v1,.L0daa5f60
    # Line 2961
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,0x8012
    lw	$at,1560($s0)
.L0daa45b8:
    andi	$at,$at,0x1
    beqz	$at,.L0daa5f74
    # Line 2963
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3472
    lw	$v0,1560($s0)
.L0daa45d0:
    andi	$v0,$v0,0x2
    beqz	$v0,.L0daa5f88
    # Line 2964
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3473
    lw	$v1,1560($s0)
.L0daa45e8:
    andi	$v1,$v1,0x4
    beqz	$v1,.L0daa5f9c
    # Line 2965
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3474
    lw	$a3,1560($s0)
.L0daa4600:
    andi	$a3,$a3,0x8
    beqz	$a3,.L0daa5fb0
    # Line 2966
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3475
    lw	$at,1560($s0)
.L0daa4618:
    andi	$at,$at,0x10
    beqz	$at,.L0daa5fc4
    # Line 2967
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3476
    lw	$v0,1560($s0)
.L0daa4630:
    andi	$v0,$v0,0x20
    beqz	$v0,.L0daa5fd8
    # Line 2968
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3477
    lw	$v1,1560($s0)
.L0daa4648:
    andi	$v1,$v1,0x40
    beqz	$v1,.L0daa5fec
    # Line 2969
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3478
    lw	$a3,1560($s0)
.L0daa4660:
    andi	$a3,$a3,0x80
    beqz	$a3,.L0daa6000
    # Line 2970
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3479
    lw	$at,1560($s0)
.L0daa4678:
    andi	$at,$at,0x100
    beqz	$at,.L0daa6014
    # Line 2971
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3480
    lw	$v0,1564($s0)
.L0daa4690:
    andi	$v0,$v0,0x1
    beqz	$v0,.L0daa6028
    # Line 2973
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3504
    lw	$v1,1564($s0)
.L0daa46a8:
    andi	$v1,$v1,0x2
    beqz	$v1,.L0daa603c
    # Line 2974
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3505
    lw	$a3,1564($s0)
.L0daa46c0:
    andi	$a3,$a3,0x4
    beqz	$a3,.L0daa6050
    # Line 2975
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3506
    lw	$at,1564($s0)
.L0daa46d8:
    andi	$at,$at,0x8
    beqz	$at,.L0daa6064
    # Line 2976
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3507
    lw	$v0,1564($s0)
.L0daa46f0:
    andi	$v0,$v0,0x10
    beqz	$v0,.L0daa6078
    # Line 2977
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3508
    lw	$v1,1564($s0)
.L0daa4708:
    andi	$v1,$v1,0x20
    beqz	$v1,.L0daa608c
    # Line 2978
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3509
    lw	$a3,1564($s0)
.L0daa4720:
    andi	$a3,$a3,0x40
    beqz	$a3,.L0daa60a0
    # Line 2979
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3510
    lw	$at,1564($s0)
.L0daa4738:
    andi	$at,$at,0x80
    beqz	$at,.L0daa60b4
    # Line 2980
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3511
    lw	$v0,1564($s0)
.L0daa4750:
    andi	$v0,$v0,0x100
    beqz	$v0,.L0daa60c8
    # Line 2981
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3512
    ld	$ra,80($sp)
.L0daa4768:
    lui	$v1,0x1
.L0daa476c:
    and	$v1,$v1,$s5
    beqz	$v1,.L0daa49a8
    # Line 3012
    andi	$at,$s5,0x80
    # Line 2986
    ld	$v1,1672($s0)
    sd	$v1,1824($s3)
    ld	$v0,1680($s0)
    sd	$v0,1832($s3)
    ld	$at,1688($s0)
    sd	$at,1840($s3)
    ld	$a3,1696($s0)
    sd	$a3,1848($s3)
    ld	$v1,1704($s0)
    # Line 2987
    lui	$at,0x80
    lw	$a3,1696($s3)
    # Line 2986
    sd	$v1,1856($s3)
    # Line 2987
    nor	$at,$at,$zero
    # Line 2986
    ld	$v0,1712($s0)
    # Line 2987
    and	$a3,$a3,$at
    sw	$a3,1696($s3)
    # Line 2986
    sd	$v0,1864($s3)
    # Line 2988
    lw	$v1,1544($s0)
    lui	$at,0x80
    and	$v1,$v1,$at
    or	$v1,$v1,$a3
    sw	$v1,1696($s3)
    # Line 2990
    lw	$v0,1560($s0)
    sw	$v0,1712($s3)
    # Line 2991
    lw	$at,1564($s0)
    sw	$at,1716($s3)
    lw	$a3,1560($s0)
    andi	$a3,$a3,0x1
    beqz	$a3,.L0daa6208
    sd	$ra,80($sp)
    # Line 2993
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3472
    lw	$a3,1560($s0)
.L0daa4800:
    andi	$a3,$a3,0x2
    beqz	$a3,.L0daa621c
    # Line 2994
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3473
    lw	$at,1560($s0)
.L0daa4818:
    andi	$at,$at,0x4
    beqz	$at,.L0daa6230
    # Line 2995
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3474
    lw	$v0,1560($s0)
.L0daa4830:
    andi	$v0,$v0,0x8
    beqz	$v0,.L0daa6244
    # Line 2996
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3475
    lw	$v1,1560($s0)
.L0daa4848:
    andi	$v1,$v1,0x10
    beqz	$v1,.L0daa6258
    # Line 2997
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3476
    lw	$a3,1560($s0)
.L0daa4860:
    andi	$a3,$a3,0x20
    beqz	$a3,.L0daa626c
    # Line 2998
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3477
    lw	$at,1560($s0)
.L0daa4878:
    andi	$at,$at,0x40
    beqz	$at,.L0daa6280
    # Line 2999
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3478
    lw	$v0,1560($s0)
.L0daa4890:
    andi	$v0,$v0,0x80
    beqz	$v0,.L0daa6294
    # Line 3000
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3479
    lw	$v1,1560($s0)
.L0daa48a8:
    andi	$v1,$v1,0x100
    beqz	$v1,.L0daa62a8
    # Line 3001
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3480
    lw	$a3,1564($s0)
.L0daa48c0:
    andi	$a3,$a3,0x1
    beqz	$a3,.L0daa62bc
    # Line 3003
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3504
    lw	$at,1564($s0)
.L0daa48d8:
    andi	$at,$at,0x2
    beqz	$at,.L0daa62d0
    # Line 3004
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3505
    lw	$v0,1564($s0)
.L0daa48f0:
    andi	$v0,$v0,0x4
    beqz	$v0,.L0daa62e4
    # Line 3005
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3506
    lw	$v1,1564($s0)
.L0daa4908:
    andi	$v1,$v1,0x8
    beqz	$v1,.L0daa62f8
    # Line 3006
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3507
    lw	$a3,1564($s0)
.L0daa4920:
    andi	$a3,$a3,0x10
    beqz	$a3,.L0daa630c
    # Line 3007
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3508
    lw	$at,1564($s0)
.L0daa4938:
    andi	$at,$at,0x20
    beqz	$at,.L0daa6320
    # Line 3008
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3509
    lw	$v0,1564($s0)
.L0daa4950:
    andi	$v0,$v0,0x40
    beqz	$v0,.L0daa6334
    # Line 3009
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3510
    lw	$v1,1564($s0)
.L0daa4968:
    andi	$v1,$v1,0x80
    beqz	$v1,.L0daa6348
    # Line 3010
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3511
    lw	$a3,1564($s0)
.L0daa4980:
    andi	$a3,$a3,0x100
    beqz	$a3,.L0daa635c
    # Line 3011
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3512
    # Line 3012
    # lw $t9, -30904($gp) # &__glMgrUpdateEvalAttributes
.L0daa4998:
    jal	__glMgrUpdateEvalAttributes
    move	$a0,$s3
    ld	$ra,80($sp)
    andi	$at,$s5,0x80
.L0daa49a8:
    beqz	$at,.L0daa4a34
    # Line 3023
    andi	$v1,$s5,0x8000
    # Line 3012
    lw	$v0,1544($s0)
    andi	$v0,$v0,0x20
    beqz	$v0,.L0daa60dc
    sd	$ra,80($sp)
    # Line 3017
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2912
    # Line 3018
    # lw $t9, -31976($gp) # &__glMgrim_Fogi
.L0daa49d0:
    lw	$a1,1340($s0)
    jal	__glMgrim_Fogi
    li	$a0,2917
    # Line 3019
    # lw $t9, -31984($gp) # &__glMgrim_Fogf
    lwc1	$f13,1360($s0)
    jal	__glMgrim_Fogf
    li	$a0,2914
    # Line 3020
    # lw $t9, -31984($gp) # &__glMgrim_Fogf
    lwc1	$f13,1376($s0)
    jal	__glMgrim_Fogf
    li	$a0,2913
    # Line 3021
    # lw $t9, -31984($gp) # &__glMgrim_Fogf
    lwc1	$f13,1364($s0)
    jal	__glMgrim_Fogf
    li	$a0,2915
    # Line 3022
    # lw $t9, -31984($gp) # &__glMgrim_Fogf
    lwc1	$f13,1368($s0)
    jal	__glMgrim_Fogf
    li	$a0,2916
    # Line 3023
    # lw $t9, -31988($gp) # &__glMgrim_Fogfv
    addiu	$a1,$s0,1344
    jal	__glMgrim_Fogfv
    li	$a0,2918
    ld	$ra,80($sp)
    andi	$v1,$s5,0x8000
.L0daa4a34:
    beqz	$v1,.L0daa4a78
    # Line 3027
    andi	$v1,$s5,0x40
    lw	$v0,1644($s0)
    sw	$v0,1796($s3)
    lw	$at,1648($s0)
    sw	$at,1800($s3)
    lw	$a3,1652($s0)
    sw	$a3,1804($s3)
    lw	$v1,1656($s0)
    sw	$v1,1808($s3)
    lw	$v0,1660($s0)
    sw	$v0,1812($s3)
    lw	$at,1664($s0)
    sw	$at,1816($s3)
    lw	$a3,1668($s0)
    sw	$a3,1820($s3)
    andi	$v1,$s5,0x40
.L0daa4a78:
    beqz	$v1,.L0daa4d78
    # Line 3142
    andi	$a3,$s5,0x4
    # Line 3027
    lw	$a3,1544($s0)
    andi	$a3,$a3,0x40
    beqz	$a3,.L0daa60f0
    sd	$ra,80($sp)
    # Line 3035
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2896
    lw	$at,1552($s0)
.L0daa4aa0:
    andi	$at,$at,0x1
    beqz	$at,.L0daa6104
    # Line 3036
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16384
    lw	$v0,1552($s0)
.L0daa4ab8:
    andi	$v0,$v0,0x2
    beqz	$v0,.L0daa6118
    # Line 3037
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16385
    lw	$v1,1552($s0)
.L0daa4ad0:
    andi	$v1,$v1,0x4
    beqz	$v1,.L0daa612c
    # Line 3038
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16386
    lw	$a3,1552($s0)
.L0daa4ae8:
    andi	$a3,$a3,0x8
    beqz	$a3,.L0daa6140
    # Line 3039
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16387
    lw	$at,1552($s0)
.L0daa4b00:
    andi	$at,$at,0x10
    beqz	$at,.L0daa6154
    # Line 3040
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16388
    lw	$v0,1552($s0)
.L0daa4b18:
    andi	$v0,$v0,0x20
    beqz	$v0,.L0daa6168
    # Line 3041
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16389
    lw	$v1,1552($s0)
.L0daa4b30:
    andi	$v1,$v1,0x40
    beqz	$v1,.L0daa617c
    # Line 3042
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16390
    lw	$a3,1552($s0)
.L0daa4b48:
    andi	$a3,$a3,0x80
    beqz	$a3,.L0daa6190
    # Line 3043
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,16391
    lw	$at,1544($s0)
.L0daa4b60:
    andi	$at,$at,0x80
    beqz	$at,.L0daa61a4
    # Line 3044
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2903
    # Line 3046
    # lw $t9, -17100($gp) # &glColorMaterial
.L0daa4b78:
    lw	$a1,1148($s0)
    jal	glColorMaterial
    lw	$a0,1144($s0)
    # Line 3048
    # lw $t9, -16996($gp) # &glShadeModel
    jal	glShadeModel
    lw	$a0,1152($s0)
    # Line 3049
    # lw $t9, -17048($gp) # &glLightModelfv
    addiu	$a1,$s0,1156
    jal	glLightModelfv
    li	$a0,2899
    # Line 3052
    lbu	$v0,1172($s0)
    # lw $t9, -17052($gp) # &glLightModelf
    mtc1	$v0,$f13
    li	$a0,2897
    jal	glLightModelf
    cvt.s.w	$f13,$f13
    # Line 3054
    lbu	$v1,1173($s0)
    # lw $t9, -17052($gp) # &glLightModelf
    mtc1	$v1,$f13
    li	$a0,2898
    jal	glLightModelf
    cvt.s.w	$f13,$f13
    # Line 3057
    # lw $t9, -17024($gp) # &glMaterialfv
    addiu	$a2,$s0,1176
    li	$a1,4608
    jal	glMaterialfv
    li	$a0,1028
    # Line 3059
    # lw $t9, -17024($gp) # &glMaterialfv
    addiu	$a2,$s0,1256
    li	$a1,4608
    jal	glMaterialfv
    li	$a0,1029
    # Line 3062
    # lw $t9, -17024($gp) # &glMaterialfv
    addiu	$a2,$s0,1192
    li	$a1,4609
    jal	glMaterialfv
    li	$a0,1028
    # Line 3064
    # lw $t9, -17024($gp) # &glMaterialfv
    addiu	$a2,$s0,1272
    li	$a1,4609
    jal	glMaterialfv
    li	$a0,1029
    # Line 3067
    # lw $t9, -17024($gp) # &glMaterialfv
    addiu	$a2,$s0,1208
    li	$a1,4610
    jal	glMaterialfv
    li	$a0,1028
    # Line 3069
    # lw $t9, -17024($gp) # &glMaterialfv
    addiu	$a2,$s0,1288
    li	$a1,4610
    jal	glMaterialfv
    li	$a0,1029
    # Line 3072
    # lw $t9, -17024($gp) # &glMaterialfv
    addiu	$a2,$s0,1224
    li	$a1,5632
    jal	glMaterialfv
    li	$a0,1028
    # Line 3074
    # lw $t9, -17024($gp) # &glMaterialfv
    addiu	$a2,$s0,1304
    li	$a1,5632
    jal	glMaterialfv
    li	$a0,1029
    # Line 3077
    # lw $t9, -17028($gp) # &glMaterialf
    lwc1	$f14,1240($s0)
    li	$a1,5633
    jal	glMaterialf
    li	$a0,1028
    # Line 3079
    # lw $t9, -17028($gp) # &glMaterialf
    lwc1	$f14,1320($s0)
    li	$a1,5633
    jal	glMaterialf
    li	$a0,1029
    # Line 3082
    lwc1	$f16,1244($s0)
    swc1	$f16,0($sp)
    # Line 3083
    lwc1	$f15,1252($s0)
    # Line 3085
    addiu	$a2,$sp,0
    li	$a1,5635
    # Line 3083
    swc1	$f15,4($sp)
    # Line 3085
    # lw $t9, -17024($gp) # &glMaterialfv
    # Line 3084
    lwc1	$f14,1248($s0)
    # Line 3085
    li	$a0,1028
    jal	glMaterialfv
    # Line 3084
    swc1	$f14,8($sp)
    # Line 3087
    lwc1	$f19,1324($s0)
    swc1	$f19,0($sp)
    # Line 3088
    lwc1	$f18,1332($s0)
    # Line 3090
    addiu	$a2,$sp,0
    li	$a1,5635
    # Line 3088
    swc1	$f18,4($sp)
    # Line 3090
    # lw $t9, -17024($gp) # &glMaterialfv
    # Line 3089
    lwc1	$f17,1328($s0)
    # Line 3090
    li	$a0,1029
    jal	glMaterialfv
    # Line 3089
    swc1	$f17,8($sp)
    sd	$s2,144($sp)
    # Line 3093
    lw	$a3,3328($s3)
    # Line 3092
    lw	$a1,1336($s0)
    sd	$zero,32($sp)
    # Line 3093
    beqz	$a3,.L0daa4d34
    # Line 3092
    move	$s2,$a1
    sd	$s7,128($sp)
    # Line 3093
    addiu	$s7,$s2,32
    sd	$s6,136($sp)
    addiu	$s6,$s2,16
    sd	$s1,120($sp)
    b	.L0daa57e8
    li	$s1,16384
.L0daa4d24:
    lw	$a1,1336($s0)
    ld	$s1,120($sp)
    ld	$s7,128($sp)
    ld	$s6,136($sp)
.L0daa4d34:
    # Line 3136
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    ld	$s2,144($sp)
    # Line 3137
    sw	$zero,1336($s0)
    # Line 3139
    lw	$v0,1696($s3)
    li	$v1,-193
    and	$v0,$v0,$v1
    sw	$v0,1696($s3)
    # Line 3140
    lw	$at,1544($s0)
    andi	$at,$at,0xc0
    or	$at,$at,$v0
    sw	$at,1696($s3)
    # Line 3142
    lw	$ra,1552($s0)
    sw	$ra,1704($s3)
    ld	$ra,80($sp)
    andi	$a3,$s5,0x4
.L0daa4d78:
    beqz	$a3,.L0daa4dd8
    lui	$v1,0x2
    lw	$at,1544($s0)
    andi	$at,$at,0x200
    beqz	$at,.L0daa61b8
    sd	$ra,80($sp)
    # Line 3147
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2848
    lw	$v0,1544($s0)
.L0daa4da0:
    andi	$v0,$v0,0x100
    beqz	$v0,.L0daa61cc
    # Line 3148
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2852
    # Line 3149
    # lw $t9, -32044($gp) # &__glMgrim_LineWidth
.L0daa4db8:
    jal	__glMgrim_LineWidth
    lwc1	$f12,292($s0)
    # Line 3150
    # lw $t9, -32048($gp) # &__glMgrim_LineStipple
    lhu	$a1,304($s0)
    jal	__glMgrim_LineStipple
    lh	$a0,306($s0)
    ld	$ra,80($sp)
    lui	$v1,0x2
.L0daa4dd8:
    and	$v1,$v1,$s5
    beqz	$v1,.L0daa4df0
    # Line 3155
    andi	$at,$s5,0x20
    lw	$a3,1720($s0)
    sw	$a3,1872($s3)
    andi	$at,$s5,0x20
.L0daa4df0:
    beqz	$at,.L0daa4fa8
    # Line 3160
    li	$a0,15
    move	$a1,$zero
    addiu	$a4,$s3,616
    addiu	$a2,$s0,464
.L0daa4e04:
    addu	$v1,$a1,$a4
    addu	$v0,$a1,$a2
    addiu	$a1,$a1,8
    ld	$v0,0($v0)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0daa4e04
    sd	$v0,0($v1)
    sd	$ra,80($sp)
    addu	$v1,$a1,$a2
    lw	$v1,0($v1)
    # Line 3161
    # lw $t9, -32060($gp) # &__glMgrim_ReadBuffer
    # Line 3160
    addu	$a0,$a1,$a4
    sw	$v1,0($a0)
    # Line 3161
    jal	__glMgrim_ReadBuffer
    lw	$a0,1000($s0)
    lw	$a3,1544($s0)
    lui	$at,0x1000
    and	$a3,$a3,$at
    beqz	$a3,.L0daa59fc
    # Line 3162
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,0x8024
    lw	$v0,1544($s0)
.L0daa4e60:
    lui	$v1,0x2000
    and	$v0,$v0,$v1
    beqz	$v0,.L0daa5a10
    # Line 3163
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,0x802e
    lw	$a3,1544($s0)
.L0daa4e7c:
    lui	$at,0x200
    and	$a3,$a3,$at
    beqz	$a3,.L0daa5a24
    # Line 3164
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,0x8010
    lw	$v0,1544($s0)
.L0daa4e98:
    lui	$v1,0x400
    and	$v0,$v0,$v1
    beqz	$v0,.L0daa5a38
    # Line 3165
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,0x8011
    ld	$ra,80($sp)
.L0daa4eb4:
    # Line 3166
    move	$a2,$s8
    li	$a1,12
    move	$a0,$zero
    addiu	$a4,$s4,-32292
.L0daa4ec4:
    addu	$at,$a0,$a4
    addu	$a3,$a0,$a2
    addiu	$a0,$a0,4
    lw	$a3,0($a3)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0daa4ec4
    sw	$a3,0($at)
    # Line 3167
    li	$a0,20
    move	$a1,$zero
    addiu	$a2,$s4,-32244
    addiu	$a4,$s8,48
.L0daa4ef0:
    addu	$v0,$a1,$a2
    addu	$at,$a1,$a4
    addiu	$a1,$a1,4
    lw	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0daa4ef0
    sw	$at,0($v0)
    # Line 3168
    li	$a1,8
    move	$a0,$zero
    addiu	$a2,$s4,-32164
    addiu	$a4,$s8,128
.L0daa4f1c:
    addu	$v1,$a0,$a2
    addu	$v0,$a0,$a4
    addiu	$a0,$a0,4
    lw	$v0,0($v0)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0daa4f1c
    sw	$v0,0($v1)
    # Line 3169
    li	$a1,68
    move	$a0,$zero
    addiu	$a4,$s4,-32132
    addiu	$a2,$s8,160
.L0daa4f48:
    addu	$a3,$a0,$a4
    addu	$v1,$a0,$a2
    addiu	$a0,$a0,4
    lw	$v1,0($v1)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0daa4f48
    sw	$v1,0($a3)
    # Line 3170
    li	$a0,120
    move	$a1,$zero
    addiu	$a2,$s4,-31860
    addiu	$a4,$s8,432
    ld	$s8,104($sp)
.L0daa4f78:
    addu	$at,$a1,$a2
    addu	$a3,$a1,$a4
    addiu	$a1,$a1,4
    lw	$a3,0($a3)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0daa4f78
    sw	$a3,0($at)
    li	$v0,2
    # Line 3171
    sw	$v0,__glBeginMode
    lw	$at,11828($s3)
    ori	$at,$at,0x10
    sw	$at,11828($s3)
.L0daa4fa8:
    andi	$v1,$s5,0x2
    beqz	$v1,.L0daa4fe0
    ld	$s8,104($sp)
    lw	$a3,1544($s0)
    andi	$a3,$a3,0x400
    beqz	$a3,.L0daa5ad8
    sd	$ra,80($sp)
    # Line 3176
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2832
    # Line 3177
    # lw $t9, -32040($gp) # &__glMgrim_PointSize
.L0daa4fd4:
    jal	__glMgrim_PointSize
    lwc1	$f12,280($s0)
    ld	$ra,80($sp)
.L0daa4fe0:
    andi	$at,$s5,0x8
    beqz	$at,.L0daa50d4
    # Line 3192
    andi	$at,$s5,0x10
    # Line 3177
    lw	$v0,1544($s0)
    andi	$v0,$v0,0x1000
    beqz	$v0,.L0daa5aec
    sd	$ra,80($sp)
    # Line 3182
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2884
    lw	$v1,1544($s0)
.L0daa500c:
    andi	$v1,$v1,0x800
    beqz	$v1,.L0daa5b00
    # Line 3183
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2881
    lw	$a3,1544($s0)
.L0daa5024:
    andi	$a3,$a3,0x2000
    beqz	$a3,.L0daa5b14
    # Line 3184
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2882
    lw	$at,1544($s0)
.L0daa503c:
    lui	$v0,0x100
    and	$at,$at,$v0
    beqz	$at,.L0daa5b28
    # Line 3185
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,0x8037
    lw	$v1,1544($s0)
.L0daa5058:
    andi	$v1,$v1,0x400
    beqz	$v1,.L0daa5b3c
    # Line 3186
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,10754
    lw	$a3,1544($s0)
.L0daa5070:
    andi	$a3,$a3,0x200
    beqz	$a3,.L0daa5b50
    # Line 3187
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,10753
    # Line 3188
    # lw $t9, -32076($gp) # &__glMgrim_CullFace
.L0daa5088:
    jal	__glMgrim_CullFace
    lw	$a0,316($s0)
    # Line 3189
    # lw $t9, -32072($gp) # &__glMgrim_PolygonMode
    lw	$a1,308($s0)
    jal	__glMgrim_PolygonMode
    li	$a0,1028
    # Line 3190
    # lw $t9, -32072($gp) # &__glMgrim_PolygonMode
    lw	$a1,312($s0)
    jal	__glMgrim_PolygonMode
    li	$a0,1029
    # Line 3191
    # lw $t9, -32544($gp) # &__glMgrim_FrontFace
    jal	__glMgrim_FrontFace
    lw	$a0,320($s0)
    # Line 3192
    # lw $t9, -31972($gp) # &__glMgrim_PolygonOffsetEXT
    lwc1	$f13,328($s0)
    jal	__glMgrim_PolygonOffsetEXT
    lwc1	$f12,324($s0)
    ld	$ra,80($sp)
    andi	$at,$s5,0x10
.L0daa50d4:
    beqz	$at,.L0daa514c
    # Line 3197
    li	$a0,16
    move	$a1,$zero
    addiu	$a4,$s3,488
    addiu	$a2,$s0,336
.L0daa50e8:
    addu	$v1,$a1,$a4
    addu	$v0,$a1,$a2
    addiu	$a1,$a1,8
    ld	$v0,0($v0)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0daa50e8
    sd	$v0,0($v1)
    # Line 3198
    lw	$a1,1696($s3)
    li	$a2,-8193
    and	$a1,$a1,$a2
    sw	$a1,1696($s3)
    # Line 3201
    move	$a0,$s3
    # Line 3199
    lw	$v1,1544($s0)
    sd	$ra,80($sp)
    # Line 3201
    lw	$t9,12716($s3)
    # Line 3199
    andi	$v1,$v1,0x2000
    or	$v1,$v1,$a1
    # Line 3201
    jalr	$t9
    # Line 3199
    sw	$v1,1696($s3)
    li	$ra,2
    # Line 3202
    sw	$ra,__glBeginMode
    lw	$a3,11828($s3)
    ld	$ra,80($sp)
    ori	$a3,$a3,0x4
    sw	$a3,11828($s3)
.L0daa514c:
    lui	$at,0x8
    and	$at,$at,$s5
    beqz	$at,.L0daa5198
    # Line 3208
    andi	$v1,$s5,0x400
    # Line 3202
    lw	$v0,1544($s0)
    andi	$v0,$v0,0x4000
    beqz	$v0,.L0daa5b64
    sd	$ra,80($sp)
    # Line 3207
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3089
    # Line 3208
    lw	$a3,2272($s0)
.L0daa517c:
    # lw $t9, -31284($gp) # &__glMgrim_Scissor
    lw	$a2,2268($s0)
    lw	$a1,2264($s0)
    jal	__glMgrim_Scissor
    lw	$a0,2260($s0)
    ld	$ra,80($sp)
    andi	$v1,$s5,0x400
.L0daa5198:
    beqz	$v1,.L0daa5204
    lui	$at,0x4
    lw	$a3,1544($s0)
    andi	$a3,$a3,0x8000
    beqz	$a3,.L0daa5b78
    sd	$ra,80($sp)
    # Line 3214
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2960
    # Line 3215
    # lw $t9, -32120($gp) # &__glMgrim_StencilMask
.L0daa51c0:
    jal	__glMgrim_StencilMask
    lh	$a0,1426($s0)
    # Line 3216
    # lw $t9, -32088($gp) # &__glMgrim_StencilFunc
    lh	$a2,1424($s0)
    lh	$a1,1422($s0)
    jal	__glMgrim_StencilFunc
    lw	$a0,1416($s0)
    # Line 3218
    # lw $t9, -32084($gp) # &__glMgrim_StencilOp
    lw	$a2,1436($s0)
    lw	$a1,1432($s0)
    jal	__glMgrim_StencilOp
    lw	$a0,1428($s0)
    # Line 3220
    # lw $t9, -31156($gp) # &__glMgrim_ClearStencil
    bal __glMgrim_ClearStencil
    lh	$a0,1420($s0)
    ld	$ra,80($sp)
    lui	$at,0x4
.L0daa5204:
    and	$at,$at,$s5
    beqz	$at,.L0daa5614
    # Line 3224
    li	$a0,31
    move	$a1,$zero
    addiu	$a4,$s3,1876
    addiu	$a2,$s0,1724
.L0daa521c:
    addu	$v1,$a1,$a4
    addu	$v0,$a1,$a2
    addiu	$a1,$a1,4
    lw	$v0,0($v0)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0daa521c
    sw	$v0,0($v1)
    # Line 3225
    li	$a1,15
    move	$a0,$zero
    addiu	$a5,$s3,2000
    addiu	$a4,$s0,1848
.L0daa5248:
    addu	$a3,$a0,$a5
    addu	$v1,$a0,$a4
    addiu	$a0,$a0,8
    ld	$v1,0($v1)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0daa5248
    sd	$v1,0($a3)
    # Line 3226
    li	$a2,31
    move	$a1,$zero
    addiu	$a6,$s3,2124
    # Line 3225
    addu	$a3,$a0,$a4
    lw	$a3,0($a3)
    # Line 3226
    addiu	$a7,$s0,1972
    # Line 3225
    addu	$at,$a0,$a5
    sw	$a3,0($at)
.L0daa5284:
    # Line 3226
    addu	$v0,$a1,$a6
    addu	$at,$a1,$a7
    addiu	$a1,$a1,4
    lw	$at,0($at)
    addiu	$a2,$a2,-1
    bgtz	$a2,.L0daa5284
    sw	$at,0($v0)
    # Line 3227
    li	$a1,15
    move	$a0,$zero
    addiu	$a4,$s3,2248
    addiu	$a2,$s0,2096
.L0daa52b0:
    addu	$v1,$a0,$a4
    addu	$v0,$a0,$a2
    addiu	$a0,$a0,8
    ld	$v0,0($v0)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0daa52b0
    sd	$v0,0($v1)
    addu	$a3,$a0,$a2
    lw	$a3,0($a3)
    addu	$at,$a0,$a4
    sw	$a3,0($at)
    lbu	$v1,-25435($s4)
    beqzl	$v1,.L0daa63c0
    # Line 3306
    lwc1	$f3,2228($s0)
    # Line 3227
    lw	$at,1544($s0)
    lui	$v0,0x4
    and	$at,$at,$v0
    beqz	$at,.L0daa6370
    sd	$ra,80($sp)
    # Line 3233
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3168
    lw	$v1,1544($s0)
.L0daa530c:
    lui	$a3,0x8
    and	$v1,$v1,$a3
    beqz	$v1,.L0daa6384
    # Line 3234
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3169
    lw	$at,1544($s0)
.L0daa5328:
    lui	$v0,0x10
    and	$at,$at,$v0
    beqz	$at,.L0daa6398
    # Line 3235
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3170
    lw	$v1,1544($s0)
.L0daa5344:
    lui	$a3,0x20
    and	$v1,$v1,$a3
    beqz	$v1,.L0daa63ac
    # Line 3236
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3171
    # Line 3238
    # lw $t9, -32008($gp) # &__glMgrim_TexGeniv
.L0daa5360:
    addiu	$a2,$s3,1876
    li	$a1,9472
    jal	__glMgrim_TexGeniv
    li	$a0,8192
    # Line 3240
    # lw $t9, -32024($gp) # &__glMgrim_TexGenfv
    addiu	$a2,$s3,1896
    li	$a1,9473
    jal	__glMgrim_TexGenfv
    li	$a0,8192
    # Line 3242
    # lw $t9, -32024($gp) # &__glMgrim_TexGenfv
    addiu	$a2,$s3,1880
    li	$a1,9474
    jal	__glMgrim_TexGenfv
    li	$a0,8192
    # Line 3245
    # lw $t9, -32008($gp) # &__glMgrim_TexGeniv
    addiu	$a2,$s3,2000
    li	$a1,9472
    jal	__glMgrim_TexGeniv
    li	$a0,8193
    # Line 3247
    # lw $t9, -32024($gp) # &__glMgrim_TexGenfv
    addiu	$a2,$s3,2020
    li	$a1,9473
    jal	__glMgrim_TexGenfv
    li	$a0,8193
    # Line 3249
    # lw $t9, -32024($gp) # &__glMgrim_TexGenfv
    addiu	$a2,$s3,2004
    li	$a1,9474
    jal	__glMgrim_TexGenfv
    li	$a0,8193
    # Line 3252
    # lw $t9, -32008($gp) # &__glMgrim_TexGeniv
    addiu	$a2,$s3,2124
    li	$a1,9472
    jal	__glMgrim_TexGeniv
    li	$a0,8194
    # Line 3254
    # lw $t9, -32024($gp) # &__glMgrim_TexGenfv
    addiu	$a2,$s3,2144
    li	$a1,9473
    jal	__glMgrim_TexGenfv
    li	$a0,8194
    # Line 3256
    # lw $t9, -32024($gp) # &__glMgrim_TexGenfv
    addiu	$a2,$s3,2128
    li	$a1,9474
    jal	__glMgrim_TexGenfv
    li	$a0,8194
    # Line 3259
    # lw $t9, -32008($gp) # &__glMgrim_TexGeniv
    addiu	$a2,$s3,2248
    li	$a1,9472
    jal	__glMgrim_TexGeniv
    li	$a0,8195
    # Line 3261
    # lw $t9, -32024($gp) # &__glMgrim_TexGenfv
    addiu	$a2,$s3,2268
    li	$a1,9473
    jal	__glMgrim_TexGenfv
    li	$a0,8195
    # Line 3263
    # lw $t9, -32024($gp) # &__glMgrim_TexGenfv
    addiu	$a2,$s3,2252
    li	$a1,9474
    jal	__glMgrim_TexGenfv
    li	$a0,8195
    sd	$s2,144($sp)
    sd	$s6,136($sp)
    sd	$s7,128($sp)
    sd	$s1,120($sp)
    move	$s4,$zero
    li	$s6,1120
    li	$s7,224
    b	.L0daa551c
    lw	$s2,24($sp)
.L0daa5470:
    # Line 3269
    li	$s2,3552
.L0daa5474:
    # Line 3275
    # lw $t9, -31316($gp) # &__glMgrim_BindTextureEXT
.L0daa5478:
    move	$a0,$s2
    jal	__glMgrim_BindTextureEXT
    lw	$a1,216($s1)
    # Line 3276
    # lw $t9, -31412($gp) # &__glMgrim_TexParameteriv
    move	$a0,$s2
    move	$a2,$s1
    jal	__glMgrim_TexParameteriv
    li	$a1,10242
    # Line 3278
    # lw $t9, -31412($gp) # &__glMgrim_TexParameteriv
    move	$a0,$s2
    addiu	$a2,$s1,4
    jal	__glMgrim_TexParameteriv
    li	$a1,10243
    # Line 3280
    # lw $t9, -31412($gp) # &__glMgrim_TexParameteriv
    move	$a0,$s2
    addiu	$a2,$s1,8
    jal	__glMgrim_TexParameteriv
    li	$a1,0x8072
    # Line 3282
    # lw $t9, -31412($gp) # &__glMgrim_TexParameteriv
    move	$a0,$s2
    addiu	$a2,$s1,12
    jal	__glMgrim_TexParameteriv
    li	$a1,10241
    # Line 3284
    # lw $t9, -31412($gp) # &__glMgrim_TexParameteriv
    move	$a0,$s2
    addiu	$a2,$s1,16
    jal	__glMgrim_TexParameteriv
    li	$a1,10240
    # Line 3286
    # lw $t9, -31428($gp) # &__glMgrim_TexParameterfv
    move	$a0,$s2
    addiu	$a2,$s1,152
    jal	__glMgrim_TexParameterfv
    li	$a1,4100
    # Line 3288
    # lw $t9, -31428($gp) # &__glMgrim_TexParameterfv
    move	$a0,$s2
    addiu	$a2,$s1,220
    jal	__glMgrim_TexParameterfv
    li	$a1,0x8066
    # Line 3266
    addiu	$s4,$s4,224
    beql	$s6,$s4,.L0daa5554
    # Line 3292
    lw	$t9,12($s3)
.L0daa551c:
    # Line 3267
    lw	$s1,2220($s0)
    li	$at,448
    # Line 3268
    beqz	$s4,.L0daa5470
    # Line 3267
    addu	$s1,$s1,$s4
    # Line 3268
    beq	$s7,$s4,.L0daa5748
    nop
    beq	$at,$s4,.L0daa5750
    li	$v0,672
    beq	$v0,$s4,.L0daa58c8
    li	$v1,896
    bne	$v1,$s4,.L0daa5478
    # Line 3275
    nop	# was lw $t9, -31316($gp) # &__glMgrim_BindTextureEXT
    b	.L0daa5474
    # Line 3273
    li	$s2,0x8095
.L0daa5554:
    # Line 3292
    move	$a0,$s3
    jal	__glMgrim_BindTextureEXT
    lw	$a1,2220($s0)
    # Line 3296
    li	$a1,8704
    li	$a0,8960
    # Line 3293
    sw	$zero,2220($s0)
    ld	$s4,88($sp)
    ld	$s1,120($sp)
    ld	$s7,128($sp)
    ld	$s6,136($sp)
    # Line 3296
    # lw $t9, -31392($gp) # &__glMgrim_TexEnviv
    # Line 3295
    lw	$a2,2224($s0)
    ld	$s2,144($sp)
    # Line 3296
    jal	__glMgrim_TexEnviv
    sd	$a2,40($sp)
    # Line 3298
    li	$a1,8705
    # lw $t9, -31400($gp) # &__glMgrim_TexEnvfv
    ld	$a2,40($sp)
    li	$a0,8960
    jal	__glMgrim_TexEnvfv
    addiu	$a2,$a2,4
    # Line 3301
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,2224($s0)
    # Line 3302
    sw	$zero,2224($s0)
.L0daa55bc:
    # Line 3348
    lw	$a3,1544($s0)
    lui	$at,0x1
    and	$a3,$a3,$at
    beqz	$a3,.L0daa59c0
    # Line 3352
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3552
    lw	$v0,1544($s0)
.L0daa55dc:
    lui	$v1,0x2
    and	$v0,$v0,$v1
    beqz	$v0,.L0daa59d4
    # Line 3353
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,3553
    lw	$a3,1544($s0)
.L0daa55f8:
    lui	$at,0x4000
    and	$a3,$a3,$at
    beqz	$a3,.L0daa59e8
    # Line 3354
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,0x806f
    ld	$ra,80($sp)
.L0daa5614:
    andi	$v0,$s5,0x1000
    beqz	$v0,.L0daa56dc
    ld	$s4,88($sp)
    lw	$v1,1544($s0)
    lui	$a3,0x40
    and	$v1,$v1,$a3
    beqz	$v1,.L0daa5a4c
    sd	$ra,80($sp)
    # Line 3362
    # lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,2977
    lw	$at,1556($s0)
.L0daa5644:
    andi	$at,$at,0x1
    beqz	$at,.L0daa5a60
    # Line 3363
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,12288
    lw	$v0,1556($s0)
.L0daa565c:
    andi	$v0,$v0,0x2
    beqz	$v0,.L0daa5a74
    # Line 3364
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,12289
    lw	$v1,1556($s0)
.L0daa5674:
    andi	$v1,$v1,0x4
    beqz	$v1,.L0daa5a88
    # Line 3365
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,12290
    lw	$a3,1556($s0)
.L0daa568c:
    andi	$a3,$a3,0x8
    beqz	$a3,.L0daa5a9c
    # Line 3366
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,12291
    lw	$at,1556($s0)
.L0daa56a4:
    andi	$at,$at,0x10
    beqz	$at,.L0daa5ab0
    # Line 3367
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,12292
    lw	$v0,1556($s0)
.L0daa56bc:
    andi	$v0,$v0,0x20
    beqz	$v0,.L0daa5ac4
    # Line 3368
    nop	# was lw $t9, -31192($gp) # &__glMgrim_Enable
    jal	__glMgrim_Enable
    li	$a0,12293
    ld	$ra,80($sp)
.L0daa56d4:
    lw	$v1,1500($s0)
    bnez	$v1,.L0daa58d0
.L0daa56dc:
    # Line 3395
    andi	$a3,$s5,0x800
.L0daa56e0:
    beqz	$a3,.L0daa571c
    ld	$s5,112($sp)
    # Line 3400
    lw	$a3,1452($s0)
    lw	$a2,1448($s0)
    lw	$a1,1444($s0)
    # lw $t9, -31212($gp) # &__glMgrim_Viewport
    lw	$a0,1440($s0)
    sd	$ra,80($sp)
    jal	__glMgrim_Viewport
    ld	$s5,112($sp)
    # Line 3403
    # lw $t9, -32032($gp) # &__glMgrim_DepthRange
    ldc1	$f13,1464($s0)
    jal	__glMgrim_DepthRange
    ldc1	$f12,1456($s0)
    ld	$ra,80($sp)
.L0daa571c:
    # Line 3410
    sw	$zero,0($s0)
    li	$at,2
    # Line 3411
    sw	$at,__glBeginMode
    lw	$s0,11828($s3)
    ld	$gp,72($sp)
    ori	$s0,$s0,0x1
    sw	$s0,11828($s3)
    # Line 3416
    ld	$s0,56($sp)
    ld	$s3,64($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0daa5748:
    # Line 3270
    b	.L0daa5474
    li	$s2,3553
.L0daa5750:
    # Line 3271
    b	.L0daa5474
    li	$s2,0x806f
.L0daa5758:
    # Line 3120
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1283
.L0daa5764:
    # Line 3123
    # lw $t9, -17068($gp) # &glLightf
    move	$a0,$s1
    lwc1	$f14,96($s2)
    jal	glLightf
    li	$a1,4613
    # Line 3125
    # lw $t9, -17068($gp) # &glLightf
    move	$a0,$s1
    lwc1	$f14,100($s2)
    jal	glLightf
    li	$a1,4614
    # Line 3127
    # lw $t9, -17068($gp) # &glLightf
    move	$a0,$s1
    lwc1	$f14,104($s2)
    jal	glLightf
    li	$a1,4615
    # Line 3129
    # lw $t9, -17068($gp) # &glLightf
    move	$a0,$s1
    lwc1	$f14,108($s2)
    jal	glLightf
    li	$a1,4616
    # Line 3131
    lwc1	$f14,112($s2)
    # lw $t9, -17068($gp) # &glLightf
    move	$a0,$s1
    # Line 3133
    addiu	$s2,$s2,116
    # Line 3131
    jal	glLightf
    li	$a1,4617
    # Line 3093
    ld	$v0,32($sp)
    lw	$v1,3328($s3)
    addiu	$v0,$v0,1
    sd	$v0,32($sp)
    sltu	$v0,$v0,$v1
    beqz	$v0,.L0daa4d24
    addiu	$s1,$s1,1
.L0daa57e8:
    # Line 3094
    # lw $t9, -17064($gp) # &glLightfv
    move	$a0,$s1
    move	$a2,$s2
    jal	glLightfv
    li	$a1,4608
    # Line 3096
    # lw $t9, -17064($gp) # &glLightfv
    move	$a0,$s1
    move	$a2,$s6
    jal	glLightfv
    li	$a1,4609
    # Line 3098
    # lw $t9, -17064($gp) # &glLightfv
    move	$a0,$s1
    move	$a2,$s7
    jal	glLightfv
    li	$a1,4610
    # Line 3105
    # lw $t9, -16652($gp) # &glGetIntegerv
    addiu	$a1,$sp,16
    jal	glGetIntegerv
    li	$a0,2979
    lw	$at,3492($s3)
    lw	$a3,16($sp)
    # Line 3133
    addiu	$s7,$s7,116
    # Line 3105
    slt	$a3,$a3,$at
    beqz	$a3,.L0daa5758
    # Line 3133
    addiu	$s6,$s6,116
    # Line 3107
    # lw $t9, -16652($gp) # &glGetIntegerv
    addiu	$a1,$sp,20
    jal	glGetIntegerv
    li	$a0,2976
    # Line 3108
    # lw $t9, -16532($gp) # &glMatrixMode
    jal	glMatrixMode
    li	$a0,5888
    # Line 3110
    # lw $t9, -16512($gp) # &glPushMatrix
    jal	glPushMatrix
    nop
    # Line 3111
    # lw $t9, -16544($gp) # &glLoadIdentity
    jal	glLoadIdentity
    nop
    # Line 3112
    # lw $t9, -17064($gp) # &glLightfv
    move	$a0,$s1
    addiu	$a2,$s2,64
    jal	glLightfv
    li	$a1,4611
    # Line 3114
    # lw $t9, -17064($gp) # &glLightfv
    move	$a0,$s1
    addiu	$a2,$s2,80
    jal	glLightfv
    li	$a1,4612
    # Line 3116
    # lw $t9, -16516($gp) # &glPopMatrix
    jal	glPopMatrix
    nop
    # Line 3118
    # lw $t9, -16532($gp) # &glMatrixMode
    jal	glMatrixMode
    lw	$a0,20($sp)
    b	.L0daa5764
    nop
.L0daa58c8:
    # Line 3272
    b	.L0daa5474
    li	$s2,0x8134
.L0daa58d0:
    # Line 3375
    # lw $t9, -16652($gp) # &glGetIntegerv
    addiu	$a1,$sp,28
    jal	glGetIntegerv
    li	$a0,2979
    lw	$v0,28($sp)
    lw	$v1,3492($s3)
    slt	$v0,$v0,$v1
    beqz	$v0,.L0daa599c
    # Line 3377
    nop	# was lw $t9, -16532($gp) # &glMatrixMode
    jal	glMatrixMode
    li	$a0,5888
    # Line 3379
    # lw $t9, -16512($gp) # &glPushMatrix
    jal	glPushMatrix
    nop
    # Line 3380
    # lw $t9, -16544($gp) # &glLoadIdentity
    jal	glLoadIdentity
    nop
    # Line 3381
    lw	$a3,3332($s3)
    sd	$s1,120($sp)
    blez	$a3,.L0daa5978
    sd	$zero,48($sp)
    li	$s1,12288
    move	$s4,$zero
.L0daa592c:
    # Line 3383
    lw	$a4,1500($s0)
    move	$a0,$s1
    # lw $t9, -31276($gp) # &__glMgrim_PassClipPlane
    addu	$a4,$a4,$s4
    # Line 3382
    addiu	$s4,$s4,16
    # Line 3383
    ldl	$a1,0($a4)
    ldl	$a2,8($a4)
    ldr	$a2,15($a4)
    jal	__glMgrim_PassClipPlane
    ldr	$a1,7($a4)
    # Line 3382
    ld	$at,48($sp)
    lw	$v0,3332($s3)
    addiu	$at,$at,1
    sd	$at,48($sp)
    slt	$at,$at,$v0
    bnez	$at,.L0daa592c
    addiu	$s1,$s1,1
    ld	$s4,88($sp)
    ld	$s1,120($sp)
.L0daa5978:
    # Line 3387
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,1500($s0)
    # Line 3390
    # lw $t9, -16516($gp) # &glPopMatrix
    jal	glPopMatrix
    # Line 3388
    sw	$zero,1500($s0)
    b	.L0daa59ac
    # Line 3395
    nop	# was lw $t9, -16532($gp) # &glMatrixMode
.L0daa599c:
    # Line 3392
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1283
    # Line 3395
    # lw $t9, -16532($gp) # &glMatrixMode
.L0daa59ac:
    jal	glMatrixMode
    lw	$a0,1496($s0)
    ld	$ra,80($sp)
    b	.L0daa56e0
    andi	$a3,$s5,0x800
.L0daa59c0:
    # Line 3352
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3552
    b	.L0daa55dc
    lw	$v0,1544($s0)
.L0daa59d4:
    # Line 3353
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3553
    b	.L0daa55f8
    lw	$a3,1544($s0)
.L0daa59e8:
    # Line 3354
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,0x806f
    b	.L0daa5614
    ld	$ra,80($sp)
.L0daa59fc:
    # Line 3162
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,0x8024
    b	.L0daa4e60
    lw	$v0,1544($s0)
.L0daa5a10:
    # Line 3163
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,0x802e
    b	.L0daa4e7c
    lw	$a3,1544($s0)
.L0daa5a24:
    # Line 3164
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,0x8010
    b	.L0daa4e98
    lw	$v0,1544($s0)
.L0daa5a38:
    # Line 3165
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,0x8011
    b	.L0daa4eb4
    ld	$ra,80($sp)
.L0daa5a4c:
    # Line 3362
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2977
    b	.L0daa5644
    lw	$at,1556($s0)
.L0daa5a60:
    # Line 3363
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,12288
    b	.L0daa565c
    lw	$v0,1556($s0)
.L0daa5a74:
    # Line 3364
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,12289
    b	.L0daa5674
    lw	$v1,1556($s0)
.L0daa5a88:
    # Line 3365
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,12290
    b	.L0daa568c
    lw	$a3,1556($s0)
.L0daa5a9c:
    # Line 3366
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,12291
    b	.L0daa56a4
    lw	$at,1556($s0)
.L0daa5ab0:
    # Line 3367
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,12292
    b	.L0daa56bc
    lw	$v0,1556($s0)
.L0daa5ac4:
    # Line 3368
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,12293
    b	.L0daa56d4
    ld	$ra,80($sp)
.L0daa5ad8:
    # Line 3176
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2832
    b	.L0daa4fd4
    # Line 3177
    nop	# was lw $t9, -32040($gp) # &__glMgrim_PointSize
.L0daa5aec:
    # Line 3182
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2884
    b	.L0daa500c
    lw	$v1,1544($s0)
.L0daa5b00:
    # Line 3183
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2881
    b	.L0daa5024
    lw	$a3,1544($s0)
.L0daa5b14:
    # Line 3184
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2882
    b	.L0daa503c
    lw	$at,1544($s0)
.L0daa5b28:
    # Line 3185
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,0x8037
    b	.L0daa5058
    lw	$v1,1544($s0)
.L0daa5b3c:
    # Line 3186
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,10754
    b	.L0daa5070
    lw	$a3,1544($s0)
.L0daa5b50:
    # Line 3187
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,10753
    b	.L0daa5088
    # Line 3188
    nop	# was lw $t9, -32076($gp) # &__glMgrim_CullFace
.L0daa5b64:
    # Line 3207
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3089
    b	.L0daa517c
    # Line 3208
    lw	$a3,2272($s0)
.L0daa5b78:
    # Line 3214
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2960
    b	.L0daa51c0
    # Line 3215
    nop	# was lw $t9, -32120($gp) # &__glMgrim_StencilMask
.L0daa5b8c:
    # Line 2901
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2929
    b	.L0daa40a8
    # Line 2902
    nop	# was lw $t9, -32080($gp) # &__glMgrim_DepthFunc
.L0daa5ba0:
    # Line 2910
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3008
    b	.L0daa40f8
    lw	$at,1544($s0)
.L0daa5bb4:
    # Line 2911
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3456
    b	.L0daa4114
    lw	$v1,1544($s0)
.L0daa5bc8:
    # Line 2912
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3042
    b	.L0daa412c
    lw	$a3,1544($s0)
.L0daa5bdc:
    # Line 2913
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2884
    b	.L0daa4144
    lw	$at,1544($s0)
.L0daa5bf0:
    # Line 2914
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2929
    b	.L0daa415c
    lw	$v0,1544($s0)
.L0daa5c04:
    # Line 2915
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3024
    b	.L0daa4174
    lw	$v1,1544($s0)
.L0daa5c18:
    # Line 2916
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2903
    b	.L0daa418c
    lw	$a3,1544($s0)
.L0daa5c2c:
    # Line 2917
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2912
    b	.L0daa41a4
    lw	$at,1544($s0)
.L0daa5c40:
    # Line 2918
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2848
    b	.L0daa41bc
    lw	$v0,1544($s0)
.L0daa5c54:
    # Line 2919
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2852
    b	.L0daa41d4
    lw	$v1,1544($s0)
.L0daa5c68:
    # Line 2920
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3057
    b	.L0daa41ec
    lw	$a3,1548($s0)
.L0daa5c7c:
    # Line 2921
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3058
    b	.L0daa4204
    lw	$at,1544($s0)
.L0daa5c90:
    # Line 2922
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2977
    b	.L0daa4220
    lw	$v1,1544($s0)
.L0daa5ca4:
    # Line 2923
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2832
    b	.L0daa4238
    lw	$a3,1544($s0)
.L0daa5cb8:
    # Line 2924
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2881
    b	.L0daa4250
    lw	$at,1544($s0)
.L0daa5ccc:
    # Line 2925
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2882
    b	.L0daa4268
    lw	$v0,1544($s0)
.L0daa5ce0:
    # Line 2926
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3089
    b	.L0daa4280
    lw	$v1,1544($s0)
.L0daa5cf4:
    # Line 2927
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2960
    b	.L0daa4298
    lw	$a3,1544($s0)
.L0daa5d08:
    # Line 2928
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3552
    b	.L0daa42b4
    lw	$v0,1544($s0)
.L0daa5d1c:
    # Line 2929
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3553
    b	.L0daa42d0
    lw	$a3,1544($s0)
.L0daa5d30:
    # Line 2930
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,0x806f
    b	.L0daa42ec
    lw	$v0,1544($s0)
.L0daa5d44:
    # Line 2931
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3168
    b	.L0daa4308
    lw	$a3,1544($s0)
.L0daa5d58:
    # Line 2932
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3169
    b	.L0daa4324
    lw	$v0,1544($s0)
.L0daa5d6c:
    # Line 2933
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3170
    b	.L0daa4340
    lw	$a3,1544($s0)
.L0daa5d80:
    # Line 2934
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3171
    b	.L0daa435c
    lw	$v0,1544($s0)
.L0daa5d94:
    # Line 2935
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,0x8037
    b	.L0daa4378
    lw	$a3,1548($s0)
.L0daa5da8:
    # Line 2936
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,10754
    b	.L0daa4390
    lw	$at,1548($s0)
.L0daa5dbc:
    # Line 2937
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,10753
    b	.L0daa43a8
    lw	$v0,1556($s0)
.L0daa5dd0:
    # Line 2938
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,12288
    b	.L0daa43c0
    lw	$v1,1556($s0)
.L0daa5de4:
    # Line 2939
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,12289
    b	.L0daa43d8
    lw	$a3,1556($s0)
.L0daa5df8:
    # Line 2940
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,12290
    b	.L0daa43f0
    lw	$at,1556($s0)
.L0daa5e0c:
    # Line 2941
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,12291
    b	.L0daa4408
    lw	$v0,1556($s0)
.L0daa5e20:
    # Line 2942
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,12292
    b	.L0daa4420
    lw	$v1,1556($s0)
.L0daa5e34:
    # Line 2943
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,12293
    b	.L0daa4438
    lw	$a3,1544($s0)
.L0daa5e48:
    # Line 2944
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2896
    b	.L0daa4450
    lw	$at,1552($s0)
.L0daa5e5c:
    # Line 2945
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16384
    b	.L0daa4468
    lw	$v0,1552($s0)
.L0daa5e70:
    # Line 2946
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16385
    b	.L0daa4480
    lw	$v1,1552($s0)
.L0daa5e84:
    # Line 2947
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16386
    b	.L0daa4498
    lw	$a3,1552($s0)
.L0daa5e98:
    # Line 2948
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16387
    b	.L0daa44b0
    lw	$at,1552($s0)
.L0daa5eac:
    # Line 2949
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16388
    b	.L0daa44c8
    lw	$v0,1552($s0)
.L0daa5ec0:
    # Line 2950
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16389
    b	.L0daa44e0
    lw	$v1,1552($s0)
.L0daa5ed4:
    # Line 2951
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16390
    b	.L0daa44f8
    lw	$a3,1552($s0)
.L0daa5ee8:
    # Line 2952
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16391
    b	.L0daa4510
    lw	$at,1552($s0)
.L0daa5efc:
    # Line 2954
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,0xbead
    b	.L0daa452c
    lw	$v1,1544($s0)
.L0daa5f10:
    # Line 2957
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,0x8024
    b	.L0daa4548
    lw	$at,1544($s0)
.L0daa5f24:
    # Line 2958
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,0x802e
    b	.L0daa4564
    lw	$v1,1544($s0)
.L0daa5f38:
    # Line 2959
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,0x8010
    b	.L0daa4580
    lw	$at,1544($s0)
.L0daa5f4c:
    # Line 2960
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,0x8011
    b	.L0daa459c
    lw	$v1,1544($s0)
.L0daa5f60:
    # Line 2961
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,0x8012
    b	.L0daa45b8
    lw	$at,1560($s0)
.L0daa5f74:
    # Line 2963
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3472
    b	.L0daa45d0
    lw	$v0,1560($s0)
.L0daa5f88:
    # Line 2964
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3473
    b	.L0daa45e8
    lw	$v1,1560($s0)
.L0daa5f9c:
    # Line 2965
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3474
    b	.L0daa4600
    lw	$a3,1560($s0)
.L0daa5fb0:
    # Line 2966
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3475
    b	.L0daa4618
    lw	$at,1560($s0)
.L0daa5fc4:
    # Line 2967
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3476
    b	.L0daa4630
    lw	$v0,1560($s0)
.L0daa5fd8:
    # Line 2968
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3477
    b	.L0daa4648
    lw	$v1,1560($s0)
.L0daa5fec:
    # Line 2969
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3478
    b	.L0daa4660
    lw	$a3,1560($s0)
.L0daa6000:
    # Line 2970
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3479
    b	.L0daa4678
    lw	$at,1560($s0)
.L0daa6014:
    # Line 2971
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3480
    b	.L0daa4690
    lw	$v0,1564($s0)
.L0daa6028:
    # Line 2973
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3504
    b	.L0daa46a8
    lw	$v1,1564($s0)
.L0daa603c:
    # Line 2974
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3505
    b	.L0daa46c0
    lw	$a3,1564($s0)
.L0daa6050:
    # Line 2975
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3506
    b	.L0daa46d8
    lw	$at,1564($s0)
.L0daa6064:
    # Line 2976
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3507
    b	.L0daa46f0
    lw	$v0,1564($s0)
.L0daa6078:
    # Line 2977
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3508
    b	.L0daa4708
    lw	$v1,1564($s0)
.L0daa608c:
    # Line 2978
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3509
    b	.L0daa4720
    lw	$a3,1564($s0)
.L0daa60a0:
    # Line 2979
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3510
    b	.L0daa4738
    lw	$at,1564($s0)
.L0daa60b4:
    # Line 2980
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3511
    b	.L0daa4750
    lw	$v0,1564($s0)
.L0daa60c8:
    # Line 2981
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3512
    b	.L0daa4768
    ld	$ra,80($sp)
.L0daa60dc:
    # Line 3017
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2912
    b	.L0daa49d0
    # Line 3018
    nop	# was lw $t9, -31976($gp) # &__glMgrim_Fogi
.L0daa60f0:
    # Line 3035
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2896
    b	.L0daa4aa0
    lw	$at,1552($s0)
.L0daa6104:
    # Line 3036
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16384
    b	.L0daa4ab8
    lw	$v0,1552($s0)
.L0daa6118:
    # Line 3037
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16385
    b	.L0daa4ad0
    lw	$v1,1552($s0)
.L0daa612c:
    # Line 3038
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16386
    b	.L0daa4ae8
    lw	$a3,1552($s0)
.L0daa6140:
    # Line 3039
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16387
    b	.L0daa4b00
    lw	$at,1552($s0)
.L0daa6154:
    # Line 3040
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16388
    b	.L0daa4b18
    lw	$v0,1552($s0)
.L0daa6168:
    # Line 3041
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16389
    b	.L0daa4b30
    lw	$v1,1552($s0)
.L0daa617c:
    # Line 3042
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16390
    b	.L0daa4b48
    lw	$a3,1552($s0)
.L0daa6190:
    # Line 3043
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,16391
    b	.L0daa4b60
    lw	$at,1544($s0)
.L0daa61a4:
    # Line 3044
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2903
    b	.L0daa4b78
    # Line 3046
    nop	# was lw $t9, -17100($gp) # &glColorMaterial
.L0daa61b8:
    # Line 3147
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2848
    b	.L0daa4da0
    lw	$v0,1544($s0)
.L0daa61cc:
    # Line 3148
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,2852
    b	.L0daa4db8
    # Line 3149
    nop	# was lw $t9, -32044($gp) # &__glMgrim_LineWidth
.L0daa61e0:
    # Line 3413
    # lw $t9, -27320($gp) # &__glSetError
    li	$a0,1284
    sd	$ra,80($sp)
    jal	__glSetError
    ld	$s4,88($sp)
    # Line 3414
    ld	$ra,80($sp)
    ld	$gp,72($sp)
    ld	$s3,64($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0daa6208:
    # Line 2993
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3472
    b	.L0daa4800
    lw	$a3,1560($s0)
.L0daa621c:
    # Line 2994
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3473
    b	.L0daa4818
    lw	$at,1560($s0)
.L0daa6230:
    # Line 2995
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3474
    b	.L0daa4830
    lw	$v0,1560($s0)
.L0daa6244:
    # Line 2996
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3475
    b	.L0daa4848
    lw	$v1,1560($s0)
.L0daa6258:
    # Line 2997
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3476
    b	.L0daa4860
    lw	$a3,1560($s0)
.L0daa626c:
    # Line 2998
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3477
    b	.L0daa4878
    lw	$at,1560($s0)
.L0daa6280:
    # Line 2999
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3478
    b	.L0daa4890
    lw	$v0,1560($s0)
.L0daa6294:
    # Line 3000
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3479
    b	.L0daa48a8
    lw	$v1,1560($s0)
.L0daa62a8:
    # Line 3001
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3480
    b	.L0daa48c0
    lw	$a3,1564($s0)
.L0daa62bc:
    # Line 3003
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3504
    b	.L0daa48d8
    lw	$at,1564($s0)
.L0daa62d0:
    # Line 3004
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3505
    b	.L0daa48f0
    lw	$v0,1564($s0)
.L0daa62e4:
    # Line 3005
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3506
    b	.L0daa4908
    lw	$v1,1564($s0)
.L0daa62f8:
    # Line 3006
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3507
    b	.L0daa4920
    lw	$a3,1564($s0)
.L0daa630c:
    # Line 3007
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3508
    b	.L0daa4938
    lw	$at,1564($s0)
.L0daa6320:
    # Line 3008
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3509
    b	.L0daa4950
    lw	$v0,1564($s0)
.L0daa6334:
    # Line 3009
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3510
    b	.L0daa4968
    lw	$v1,1564($s0)
.L0daa6348:
    # Line 3010
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3511
    b	.L0daa4980
    lw	$a3,1564($s0)
.L0daa635c:
    # Line 3011
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3512
    b	.L0daa4998
    # Line 3012
    nop	# was lw $t9, -30904($gp) # &__glMgrUpdateEvalAttributes
.L0daa6370:
    # Line 3233
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3168
    b	.L0daa530c
    lw	$v1,1544($s0)
.L0daa6384:
    # Line 3234
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3169
    b	.L0daa5328
    lw	$at,1544($s0)
.L0daa6398:
    # Line 3235
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3170
    b	.L0daa5344
    lw	$v1,1544($s0)
.L0daa63ac:
    # Line 3236
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3171
    b	.L0daa5360
    # Line 3238
    nop	# was lw $t9, -32008($gp) # &__glMgrim_TexGeniv
.L0daa63c0:
    # Line 3306
    swc1	$f3,2380($s3)
    # Line 3307
    lwc1	$f2,2232($s0)
    swc1	$f2,2384($s3)
    # Line 3308
    lwc1	$f1,2236($s0)
    swc1	$f1,2388($s3)
    # Line 3309
    lwc1	$f0,2240($s0)
    swc1	$f0,2392($s3)
    # Line 3311
    lwc1	$f3,2244($s0)
    swc1	$f3,2396($s3)
    # Line 3312
    lwc1	$f2,2248($s0)
    swc1	$f2,2400($s3)
    sd	$ra,80($sp)
    # Line 3313
    lwc1	$f1,2252($s0)
    sd	$s1,120($sp)
    # Line 3330
    move	$s1,$zero
    # Line 3313
    swc1	$f1,2404($s3)
    sd	$s2,144($sp)
    # Line 3314
    lwc1	$f0,2256($s0)
    # Line 3328
    lw	$a0,2372($s3)
    sd	$s6,136($sp)
    # Line 3314
    swc1	$f0,2408($s3)
    # Line 3304
    lw	$s6,3336($s3)
    # Line 3329
    lw	$a1,2220($s0)
    # Line 3328
    move	$s2,$a0
    # Line 3330
    beqz	$s6,.L0daa6464
    # Line 3329
    move	$s4,$a1
    andi	$v1,$s6,0x1
    beqz	$v1,.L0daa6450
    # Line 3330
    move	$a0,$s6
    lw	$a3,216($s2)
    lw	$a2,216($s4)
    bnel	$a3,$a2,.L0daa65e4
    sd	$a0,96($sp)
.L0daa6444:
    # Line 3331
    addiu	$s4,$s4,224
    addiu	$s2,$s2,224
    addiu	$s1,$s1,1
.L0daa6450:
    sra	$at,$a0,0x1
    bnez	$at,.L0daa656c
    sd	$ra,80($sp)
    lw	$a0,2372($s3)
.L0daa6460:
    lw	$a1,2220($s0)
.L0daa6464:
    ld	$s4,88($sp)
    ld	$s1,120($sp)
    ld	$s2,144($sp)
    # Line 3338
    # lw $t9, -17848($gp) # &memcpy
    sll	$a2,$s6,0x3
    subu	$a2,$a2,$s6
    jal	memcpy
    sll	$a2,$a2,0x5
    # Line 3340
    lw	$a1,2224($s0)
    lw	$a0,2376($s3)
    lw	$a3,3340($s3)
    ld	$s6,136($sp)
    # lw $t9, -17848($gp) # &memcpy
    sll	$a2,$a3,0x3
    addu	$a2,$a2,$a3
    jal	memcpy
    sll	$a2,$a2,0x2
    # Line 3343
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,2220($s0)
    # Line 3344
    sw	$zero,2220($s0)
    # Line 3345
    lw	$t9,12($s3)
    lw	$a1,2224($s0)
    jalr	$t9
    move	$a0,$s3
    # Line 3346
    sw	$zero,2224($s0)
    # Line 3347
    lw	$v0,1696($s3)
    lui	$v1,0x3fc0
    ori	$v1,$v1,0xffff
    and	$v0,$v0,$v1
    sw	$v0,1696($s3)
    # Line 3348
    lw	$at,1544($s0)
    lui	$v1,0xc03f
    and	$at,$at,$v1
    or	$at,$at,$v0
    b	.L0daa55bc
    sw	$at,1696($s3)
.L0daa64fc:
    # Line 2862
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3008
    b	.L0daa3f14
    # Line 2863
    nop	# was lw $t9, -32104($gp) # &__glMgrim_AlphaFunc
.L0daa6510:
    # Line 2865
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3042
    b	.L0daa3f3c
    # Line 2866
    nop	# was lw $t9, -32096($gp) # &__glMgrim_BlendFunc
.L0daa6524:
    # Line 2868
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3024
    b	.L0daa3f70
    lw	$a3,1544($s0)
.L0daa6538:
    # Line 2869
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3057
    b	.L0daa3f88
    lw	$at,1548($s0)
.L0daa654c:
    # Line 2870
    # lw $t9, -31176($gp) # &__glMgrim_Disable
    jal	__glMgrim_Disable
    li	$a0,3058
    b	.L0daa3fa0
    # Line 2871
    nop	# was lw $t9, -32092($gp) # &__glMgrim_LogicOp
.L0daa6560:
    # Line 3331
    addiu	$s1,$s1,1
.L0daa6564:
    beql	$s6,$s1,.L0daa6460
    lw	$a0,2372($s3)
.L0daa656c:
    # Line 3330
    lw	$a2,216($s4)
    lw	$a3,216($s2)
    bne	$a3,$a2,.L0daa65ac
    # Line 3333
    nop	# was lw $t9, -24588($gp) # &__glBindTexture
    # Line 3330
    lw	$a2,440($s4)
.L0daa6580:
    lw	$at,440($s2)
    # Line 3331
    addiu	$s4,$s4,448
    addiu	$s2,$s2,448
    # Line 3330
    beq	$at,$a2,.L0daa6560
    # Line 3331
    addiu	$s1,$s1,1
    # Line 3333
    # lw $t9, -24588($gp) # &__glBindTexture
    move	$a0,$s3
    jal	__glBindTexture
    move	$a1,$s1
    b	.L0daa6564
    # Line 3331
    addiu	$s1,$s1,1
.L0daa65ac:
    # Line 3333
    move	$a0,$s3
    jalr	$t9
    move	$a1,$s1
    b	.L0daa6580
    # Line 3330
    lw	$a2,440($s4)
.L0daa65c0:
    # Line 2838
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,80($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,80($sp)
    ld	$gp,72($sp)
    ld	$s3,64($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0daa65e4:
    # Line 3333
    # lw $t9, -24588($gp) # &__glBindTexture
    move	$a0,$s3
    sd	$ra,80($sp)
    jal	__glBindTexture
    move	$a1,$s1
    ld	$a0,96($sp)
    b	.L0daa6444
    ld	$ra,80($sp)
.end __glMgrim_PopAttrib

# Function: __glMgrInitAttributeState
# Declared: Line 3422 (Source lines: 3423-3431)
# Address: 0x0daa6604 - 0x0daa6658 (Size: 84 bytes, Frame: 48)
.globl __glMgrInitAttributeState
.ent __glMgrInitAttributeState
__glMgrInitAttributeState:
    # Line 3427
    li	$a2,4
    lw	$a1,3480($a0)
    # Line 3423
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$at,0x16
    addiu	$at,$at,-32620
    addu	$gp,$t9,$at
    # Line 3427
    lw	$t9,4($a0)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 3423
    move	$s8,$a0
    ld	$gp,16($sp)
    # Line 3427
    lui	$v1,0x1
    addu	$v1,$s8,$v1
    # Line 3431
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    addiu	$sp,$sp,48
    # Line 3430
    sw	$v0,-28048($v1)
    # Line 3431
    jr	$ra
    # Line 3427
    sw	$v0,-28052($v1)
.end __glMgrInitAttributeState

# Function: __glMgrFreeAttributeState
# Declared: Line 3434 (Source lines: 3435-3449)
# Address: 0x0daa6658 - 0x0daa6710 (Size: 184 bytes, Frame: 192)
.globl __glMgrFreeAttributeState
.ent __glMgrFreeAttributeState
__glMgrFreeAttributeState:
    # Line 3435
    addiu	$sp,$sp,-64
    sd	$ra,32($sp)
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$s4,0($sp)
    sd	$gp,16($sp)
    lui	$v0,0x16
    addiu	$v0,$v0,-32704
    # Line 3439
    lw	$at,3480($a0)
    sd	$s1,24($sp)
    lui	$s1,0x1
    addu	$s1,$a0,$s1
    lw	$a3,-28052($s1)
    # Line 3435
    addu	$gp,$t9,$v0
    # Line 3439
    sll	$at,$at,0x2
    addu	$at,$at,$a3
    sltu	$at,$a3,$at
    beqz	$at,.L0daa66e0
    move	$s4,$a3
    sd	$ra,32($sp)
    # Line 3442
    lw	$a1,0($s4)
.L0daa66ac:
    beqz	$a1,.L0daa66e0
    nop
    # Line 3443
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 3441
    addiu	$s4,$s4,4
    # Line 3445
    lw	$at,3480($s0)
    lw	$a3,-28052($s1)
    sll	$at,$at,0x2
    addu	$at,$at,$a3
    sltu	$at,$s4,$at
    bnezl	$at,.L0daa66ac
    # Line 3442
    lw	$a1,0($s4)
.L0daa66e0:
    # Line 3447
    lw	$t9,12($s0)
    move	$a0,$s0
    move	$a1,$a3
    jalr	$t9
    ld	$s4,0($sp)
    ld	$gp,16($sp)
    # Line 3449
    ld	$s0,8($sp)
    ld	$ra,32($sp)
    # Line 3448
    sw	$zero,-28052($s1)
    # Line 3449
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrFreeAttributeState

# Function: __glMgrCopyContext
# Declared: Line 3460 (Source lines: 3461-3670)
# Address: 0x0daa6710 - 0x0daa6fd0 (Size: 2240 bytes, Frame: 208)
.globl __glMgrCopyContext
.ent __glMgrCopyContext
__glMgrCopyContext:
    # Line 3461
    addiu	$sp,$sp,-80
    sd	$s1,24($sp)
    move	$s1,$a1
    # Line 3481
    lwc1	$f3,30804($a1)
    sd	$s4,8($sp)
    # Line 3461
    move	$s4,$a2
    # Line 3481
    swc1	$f3,30804($a0)
    sd	$ra,0($sp)
    # Line 3482
    lwc1	$f2,30808($a1)
    sd	$s0,16($sp)
    sd	$gp,32($sp)
    swc1	$f2,30808($a0)
    # Line 3461
    lui	$at,0x15
    # Line 3483
    lwc1	$f1,30812($a1)
    # Line 3461
    addiu	$at,$at,32648
    addu	$gp,$t9,$at
    # Line 3483
    swc1	$f1,30812($a0)
    # Line 3489
    # lw $t9, -27336($gp) # &__glContextSetColorScales
    # Line 3484
    lwc1	$f0,30844($a1)
    # Line 3461
    move	$s0,$a0
    # Line 3489
    jal	__glContextSetColorScales
    # Line 3484
    swc1	$f0,30844($s0)
    # Line 3489
    andi	$v0,$s4,0x200
    beqz	$v0,.L0daa6794
    ld	$ra,0($sp)
    # Line 3492
    lwc1	$f3,1552($s1)
    swc1	$f3,1552($s0)
    lwc1	$f2,1556($s1)
    swc1	$f2,1556($s0)
    lwc1	$f1,1560($s1)
    swc1	$f1,1560($s0)
    lwc1	$f0,1564($s1)
    swc1	$f0,1564($s0)
.L0daa6794:
    andi	$v1,$s4,0x4000
    beqz	$v1,.L0daa6818
    # Line 3496
    li	$a1,9
    move	$a0,$zero
    addiu	$a2,$s0,1720
    addiu	$a4,$s1,1720
.L0daa67ac:
    addu	$at,$a0,$a2
    addu	$a3,$a0,$a4
    addiu	$a0,$a0,8
    ld	$a3,0($a3)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0daa67ac
    sd	$a3,0($at)
    addu	$v1,$a0,$a4
    lw	$v1,0($v1)
    addu	$a3,$a0,$a2
    sw	$v1,0($a3)
    # Line 3497
    lw	$at,1696($s0)
    li	$v0,-16
    and	$at,$at,$v0
    sw	$at,1696($s0)
    # Line 3498
    lw	$a3,1696($s1)
    andi	$a3,$a3,0xf
    or	$a3,$a3,$at
    # Line 3500
    lw	$v0,1700($s0)
    # Line 3498
    sw	$a3,1696($s0)
    # Line 3500
    li	$v1,-2049
    and	$v0,$v0,$v1
    sw	$v0,1700($s0)
    # Line 3501
    lw	$at,1700($s1)
    andi	$at,$at,0x800
    or	$at,$at,$v0
    sw	$at,1700($s0)
.L0daa6818:
    andi	$a3,$s4,0x1
    beqz	$a3,.L0daa684c
    # Line 3506
    li	$a1,34
    move	$a0,$zero
    addiu	$a2,$s0,160
    addiu	$a4,$s1,160
.L0daa6830:
    addu	$v0,$a0,$a2
    addu	$at,$a0,$a4
    addiu	$a0,$a0,8
    ld	$at,0($at)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0daa6830
    sd	$at,0($v0)
.L0daa684c:
    andi	$v0,$s4,0x100
    beqz	$v0,.L0daa688c
    # Line 3512
    andi	$a3,$s4,0x2000
    # Line 3510
    ld	$v1,1536($s1)
    sd	$v1,1536($s0)
    ld	$v0,1544($s1)
    # Line 3511
    lw	$a3,1696($s0)
    # Line 3510
    sd	$v0,1544($s0)
    # Line 3511
    li	$at,-17
    and	$a3,$a3,$at
    sw	$a3,1696($s0)
    # Line 3512
    lw	$v1,1696($s1)
    andi	$v1,$v1,0x10
    or	$v1,$v1,$a3
    sw	$v1,1696($s0)
    andi	$a3,$s4,0x2000
.L0daa688c:
    beqz	$a3,.L0daa68b0
    # Line 3517
    lui	$a3,0x1
    ld	$v1,1696($s1)
    sd	$v1,1696($s0)
    ld	$v0,1704($s1)
    sd	$v0,1704($s0)
    ld	$at,1712($s1)
    sd	$at,1712($s0)
    lui	$a3,0x1
.L0daa68b0:
    and	$a3,$s4,$a3
    beqz	$a3,.L0daa6928
    # Line 3526
    andi	$a3,$s4,0x80
    # Line 3521
    ld	$v1,1824($s1)
    sd	$v1,1824($s0)
    ld	$v0,1832($s1)
    sd	$v0,1832($s0)
    ld	$at,1840($s1)
    sd	$at,1840($s0)
    ld	$a3,1848($s1)
    sd	$a3,1848($s0)
    ld	$v1,1856($s1)
    sd	$v1,1856($s0)
    ld	$v0,1864($s1)
    sd	$v0,1864($s0)
    # Line 3522
    lw	$a3,1696($s0)
    lui	$at,0x80
    nor	$at,$at,$zero
    and	$a3,$a3,$at
    sw	$a3,1696($s0)
    # Line 3523
    lw	$v1,1696($s1)
    lui	$at,0x80
    and	$v1,$v1,$at
    or	$v1,$v1,$a3
    sw	$v1,1696($s0)
    # Line 3525
    lw	$v0,1712($s1)
    sw	$v0,1712($s0)
    # Line 3526
    lw	$at,1716($s1)
    sw	$at,1716($s0)
    andi	$a3,$s4,0x80
.L0daa6928:
    beqz	$a3,.L0daa6978
    # Line 3530
    li	$a0,10
    move	$a1,$zero
    addiu	$a4,$s0,1492
    addiu	$a2,$s1,1492
.L0daa693c:
    addu	$v0,$a1,$a4
    addu	$at,$a1,$a2
    addiu	$a1,$a1,4
    lw	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0daa693c
    sw	$at,0($v0)
    # Line 3531
    lw	$v1,1696($s0)
    li	$a3,-33
    and	$v1,$v1,$a3
    sw	$v1,1696($s0)
    # Line 3532
    lw	$v0,1696($s1)
    andi	$v0,$v0,0x20
    or	$v0,$v0,$v1
    sw	$v0,1696($s0)
.L0daa6978:
    andi	$at,$s4,0x8000
    beqz	$at,.L0daa69c0
    # Line 3537
    andi	$at,$s4,0x40
    lw	$a3,1796($s1)
    sw	$a3,1796($s0)
    lw	$v1,1800($s1)
    sw	$v1,1800($s0)
    lw	$v0,1804($s1)
    sw	$v0,1804($s0)
    lw	$at,1808($s1)
    sw	$at,1808($s0)
    lw	$a3,1812($s1)
    sw	$a3,1812($s0)
    lw	$v1,1816($s1)
    sw	$v1,1816($s0)
    lw	$v0,1820($s1)
    sw	$v0,1820($s0)
    andi	$at,$s4,0x40
.L0daa69c0:
    beqz	$at,.L0daa6ab8
    # Line 3555
    andi	$v1,$s4,0x4
    # Line 3541
    lw	$at,1296($s1)
    sw	$at,1296($s0)
    # Line 3542
    lw	$a4,1300($s1)
    sw	$a4,1300($s0)
    # Line 3543
    lw	$a3,1304($s1)
    sw	$a3,1304($s0)
    # Line 3544
    lw	$a2,1308($s1)
    sw	$a2,1308($s0)
    lw	$a1,1312($s1)
    sw	$a1,1312($s0)
    lw	$a0,1316($s1)
    sw	$a0,1316($s0)
    lw	$v1,1320($s1)
    # Line 3545
    li	$a0,10
    # Line 3544
    sw	$v1,1320($s0)
    # Line 3545
    move	$a1,$zero
    # Line 3544
    lw	$v0,1324($s1)
    # Line 3545
    addiu	$a2,$s0,1328
    addiu	$a4,$s1,1328
    # Line 3544
    sw	$v0,1324($s0)
.L0daa6a18:
    # Line 3545
    addu	$v1,$a1,$a2
    addu	$v0,$a1,$a4
    addiu	$a1,$a1,8
    ld	$v0,0($v0)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0daa6a18
    sd	$v0,0($v1)
    # Line 3546
    li	$a1,10
    move	$a0,$zero
    addiu	$a2,$s0,1408
    addiu	$a4,$s1,1408
.L0daa6a44:
    addu	$a3,$a0,$a2
    addu	$v1,$a0,$a4
    addiu	$a0,$a0,8
    ld	$v1,0($v1)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0daa6a44
    sd	$v1,0($a3)
    # Line 3548
    lw	$a1,1488($s1)
    lw	$a3,3328($s0)
    lw	$a0,1488($s0)
    # lw $t9, -17848($gp) # &memcpy
    sll	$a2,$a3,0x3
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a3
    jal	memcpy
    sll	$a2,$a2,0x2
    # Line 3552
    lw	$at,1696($s0)
    li	$v0,-193
    and	$at,$at,$v0
    sw	$at,1696($s0)
    # Line 3553
    lw	$ra,1696($s1)
    andi	$ra,$ra,0xc0
    or	$ra,$ra,$at
    sw	$ra,1696($s0)
    # Line 3555
    lw	$a3,1704($s1)
    ld	$ra,0($sp)
    sw	$a3,1704($s0)
    andi	$v1,$s4,0x4
.L0daa6ab8:
    beqz	$v1,.L0daa6b0c
    # Line 3561
    lui	$v0,0x2
    # Line 3559
    lwc1	$f1,444($s1)
    swc1	$f1,444($s0)
    lwc1	$f0,448($s1)
    swc1	$f0,448($s0)
    lw	$at,452($s1)
    sw	$at,452($s0)
    lhu	$a3,456($s1)
    sh	$a3,456($s0)
    lh	$v1,458($s1)
    # Line 3560
    lw	$at,1696($s0)
    # Line 3559
    sh	$v1,458($s0)
    # Line 3560
    li	$v0,-769
    and	$at,$at,$v0
    sw	$at,1696($s0)
    # Line 3561
    lw	$a3,1696($s1)
    andi	$a3,$a3,0x300
    or	$a3,$a3,$at
    sw	$a3,1696($s0)
    lui	$v0,0x2
.L0daa6b0c:
    and	$v0,$s4,$v0
    beqz	$v0,.L0daa6b24
    # Line 3566
    andi	$a3,$s4,0x20
    lw	$v1,1872($s1)
    sw	$v1,1872($s0)
    andi	$a3,$s4,0x20
.L0daa6b24:
    beqz	$a3,.L0daa6bd8
    # Line 3580
    andi	$at,$s4,0x2
    # Line 3570
    lw	$v0,1148($s1)
    # Line 3572
    li	$a0,15
    # Line 3570
    sw	$v0,1148($s0)
    # Line 3572
    move	$a2,$zero
    # Line 3571
    lw	$at,1152($s1)
    # Line 3572
    addiu	$a4,$s0,616
    addiu	$a5,$s1,616
    # Line 3571
    sw	$at,1152($s0)
.L0daa6b4c:
    # Line 3572
    addu	$a3,$a2,$a4
    addu	$v1,$a2,$a5
    addiu	$a2,$a2,8
    ld	$v1,0($v1)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0daa6b4c
    sd	$v1,0($a3)
    addu	$a6,$a2,$a5
    lw	$a6,0($a6)
    addu	$a7,$a2,$a4
    sw	$a6,0($a7)
    # Line 3573
    lw	$a4,1696($s0)
    lui	$a5,0xe00
    nor	$a5,$a5,$zero
    and	$a4,$a4,$a5
    sw	$a4,1696($s0)
    # Line 3574
    lw	$a3,1696($s1)
    # Line 3580
    addiu	$a1,$s0,4952
    # Line 3574
    lui	$a5,0xe00
    and	$a3,$a3,$a5
    or	$a3,$a3,$a4
    # Line 3576
    lui	$a4,0x3000
    nor	$a4,$a4,$zero
    and	$a3,$a3,$a4
    sw	$a3,1696($s0)
    # Line 3580
    addiu	$a0,$s1,4952
    # Line 3577
    lw	$a2,1696($s1)
    # Line 3580
    # lw $t9, -27344($gp) # &__glCopyColorTableScaleBias
    # Line 3577
    lui	$a4,0x3000
    and	$a2,$a2,$a4
    or	$a2,$a2,$a3
    # Line 3580
    jal	__glCopyColorTableScaleBias
    # Line 3577
    sw	$a2,1696($s0)
    ld	$ra,0($sp)
    # Line 3580
    andi	$at,$s4,0x2
.L0daa6bd8:
    beqz	$at,.L0daa6c1c
    # Line 3586
    andi	$v0,$s4,0x8
    # Line 3584
    lwc1	$f3,432($s1)
    swc1	$f3,432($s0)
    lwc1	$f2,436($s1)
    swc1	$f2,436($s0)
    lw	$at,440($s1)
    # Line 3585
    lw	$v1,1696($s0)
    # Line 3584
    sw	$at,440($s0)
    # Line 3585
    li	$a3,-1025
    and	$v1,$v1,$a3
    sw	$v1,1696($s0)
    # Line 3586
    lw	$v0,1696($s1)
    andi	$v0,$v0,0x400
    or	$v0,$v0,$v1
    sw	$v0,1696($s0)
    andi	$v0,$s4,0x8
.L0daa6c1c:
    beqz	$v0,.L0daa6ca8
    # Line 3596
    andi	$a3,$s4,0x10
    # Line 3591
    lw	$v1,460($s1)
    sw	$v1,460($s0)
    lw	$v0,464($s1)
    sw	$v0,464($s0)
    lw	$at,468($s1)
    sw	$at,468($s0)
    lw	$a3,472($s1)
    sw	$a3,472($s0)
    lw	$v1,476($s1)
    sw	$v1,476($s0)
    lw	$v0,480($s1)
    sw	$v0,480($s0)
    # Line 3592
    ld	$a3,-14800($gp)
    # Line 3591
    lw	$at,484($s1)
    # Line 3592
    lw	$v1,1696($s0)
    # Line 3591
    sw	$at,484($s0)
    # Line 3592
    and	$v1,$v1,$a3
    sw	$v1,1696($s0)
    # Line 3593
    lw	$v0,1696($s1)
    lui	$a3,0x100
    ori	$a3,$a3,0x3800
    and	$v0,$v0,$a3
    or	$v0,$v0,$v1
    # Line 3595
    lw	$a3,1700($s0)
    # Line 3593
    sw	$v0,1696($s0)
    # Line 3595
    li	$at,-1537
    and	$a3,$a3,$at
    sw	$a3,1700($s0)
    # Line 3596
    lw	$v1,1700($s1)
    andi	$v1,$v1,0x600
    or	$v1,$v1,$a3
    sw	$v1,1700($s0)
    andi	$a3,$s4,0x10
.L0daa6ca8:
    beqz	$a3,.L0daa6cf8
    # Line 3601
    li	$a0,16
    move	$a1,$zero
    addiu	$a2,$s0,488
    addiu	$a4,$s1,488
.L0daa6cbc:
    addu	$v0,$a1,$a2
    addu	$at,$a1,$a4
    addiu	$a1,$a1,8
    ld	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0daa6cbc
    sd	$at,0($v0)
    # Line 3602
    lw	$v1,1696($s0)
    li	$a3,-8193
    and	$v1,$v1,$a3
    sw	$v1,1696($s0)
    # Line 3603
    lw	$v0,1696($s1)
    andi	$v0,$v0,0x2000
    or	$v0,$v0,$v1
    sw	$v0,1696($s0)
.L0daa6cf8:
    lui	$at,0x8
    and	$at,$s4,$at
    beqz	$at,.L0daa6d4c
    # Line 3610
    andi	$at,$s4,0x400
    # Line 3608
    lw	$a3,2412($s1)
    sw	$a3,2412($s0)
    lw	$v1,2416($s1)
    sw	$v1,2416($s0)
    lw	$v0,2420($s1)
    sw	$v0,2420($s0)
    lw	$at,2424($s1)
    # Line 3609
    lw	$v1,1696($s0)
    # Line 3608
    sw	$at,2424($s0)
    # Line 3609
    li	$a3,-16385
    and	$v1,$v1,$a3
    sw	$v1,1696($s0)
    # Line 3610
    lw	$v0,1696($s1)
    andi	$v0,$v0,0x4000
    or	$v0,$v0,$v1
    sw	$v0,1696($s0)
    andi	$at,$s4,0x400
.L0daa6d4c:
    beqz	$at,.L0daa6d94
    # Line 3617
    lui	$a3,0x4
    # Line 3615
    ld	$v1,1568($s1)
    sd	$v1,1568($s0)
    ld	$v0,1576($s1)
    sd	$v0,1576($s0)
    ld	$at,1584($s1)
    sd	$at,1584($s0)
    # Line 3616
    lw	$v1,1696($s0)
    li	$a3,0x8000
    nor	$a3,$a3,$zero
    and	$v1,$v1,$a3
    sw	$v1,1696($s0)
    # Line 3617
    lw	$v0,1696($s1)
    andi	$v0,$v0,0x8000
    or	$v0,$v0,$v1
    sw	$v0,1696($s0)
    lui	$a3,0x4
.L0daa6d94:
    and	$a3,$s4,$a3
    beqz	$a3,.L0daa6f18
    # Line 3622
    li	$a0,31
    move	$a1,$zero
    addiu	$a2,$s0,1876
    addiu	$a4,$s1,1876
.L0daa6dac:
    addu	$v0,$a1,$a2
    addu	$at,$a1,$a4
    addiu	$a1,$a1,4
    lw	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0daa6dac
    sw	$at,0($v0)
    # Line 3623
    li	$a1,15
    move	$a0,$zero
    addiu	$a4,$s0,2000
    addiu	$a5,$s1,2000
    # Line 3624
    move	$a2,$zero
    addiu	$a7,$s1,2124
.L0daa6de0:
    # Line 3623
    addu	$v1,$a0,$a4
    addu	$v0,$a0,$a5
    addiu	$a0,$a0,8
    ld	$v0,0($v0)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0daa6de0
    sd	$v0,0($v1)
    # Line 3624
    addiu	$a6,$s0,2124
    li	$a1,31
    # Line 3623
    addu	$a3,$a0,$a4
    addu	$v1,$a0,$a5
    lw	$v1,0($v1)
    # Line 3625
    li	$a0,15
    move	$a4,$zero
    # Line 3623
    sw	$v1,0($a3)
.L0daa6e1c:
    # Line 3624
    addu	$at,$a2,$a6
    addu	$a3,$a2,$a7
    addiu	$a2,$a2,4
    lw	$a3,0($a3)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0daa6e1c
    sw	$a3,0($at)
    # Line 3625
    addiu	$a5,$s0,2248
    addiu	$a6,$s1,2248
.L0daa6e40:
    addu	$v0,$a4,$a5
    addu	$at,$a4,$a6
    addiu	$a4,$a4,8
    ld	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0daa6e40
    sd	$at,0($v0)
    addu	$a6,$a4,$a6
    lw	$a6,0($a6)
    addu	$a7,$a4,$a5
    sw	$a6,0($a7)
    # Line 3627
    lwc1	$f11,2380($s1)
    swc1	$f11,2380($s0)
    # Line 3628
    lwc1	$f10,2384($s1)
    swc1	$f10,2384($s0)
    # Line 3629
    lwc1	$f9,2388($s1)
    swc1	$f9,2388($s0)
    # Line 3630
    lwc1	$f8,2392($s1)
    swc1	$f8,2392($s0)
    # Line 3632
    lwc1	$f7,2396($s1)
    swc1	$f7,2396($s0)
    # Line 3633
    lwc1	$f6,2400($s1)
    swc1	$f6,2400($s0)
    # Line 3637
    # lw $t9, -17848($gp) # &memcpy
    # Line 3634
    lwc1	$f5,2404($s1)
    # Line 3637
    lw	$a3,3336($s0)
    lw	$a0,2372($s0)
    # Line 3634
    swc1	$f5,2404($s0)
    # Line 3637
    sll	$a2,$a3,0x3
    # Line 3635
    lwc1	$f4,2408($s1)
    # Line 3637
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x5
    # Line 3635
    swc1	$f4,2408($s0)
    # Line 3637
    jal	memcpy
    lw	$a1,2372($s1)
    # Line 3640
    lw	$a1,2376($s1)
    lw	$a3,3340($s0)
    lw	$a0,2376($s0)
    # lw $t9, -17848($gp) # &memcpy
    sll	$a2,$a3,0x3
    addu	$a2,$a2,$a3
    jal	memcpy
    sll	$a2,$a2,0x2
    # Line 3643
    lw	$at,1696($s0)
    lui	$v0,0x3fc0
    ori	$v0,$v0,0xffff
    and	$at,$at,$v0
    sw	$at,1696($s0)
    # Line 3644
    lw	$ra,1696($s1)
    lui	$v0,0xc03f
    and	$ra,$ra,$v0
    or	$ra,$ra,$at
    sw	$ra,1696($s0)
    ld	$ra,0($sp)
.L0daa6f18:
    andi	$v1,$s4,0x1000
    beqz	$v1,.L0daa6f74
    # Line 3654
    andi	$v0,$s4,0x800
    # Line 3650
    lw	$a0,1652($s0)
    lw	$a2,3332($s0)
    # Line 3649
    lw	$a1,1648($s1)
    # Line 3650
    # lw $t9, -17848($gp) # &memcpy
    sll	$a2,$a2,0x4
    # Line 3649
    sw	$a1,1648($s0)
    # Line 3650
    jal	memcpy
    lw	$a1,1652($s1)
    # Line 3653
    lw	$ra,1696($s0)
    lui	$at,0x40
    nor	$at,$at,$zero
    and	$ra,$ra,$at
    sw	$ra,1696($s0)
    # Line 3654
    lw	$a3,1696($s1)
    lui	$at,0x40
    and	$a3,$a3,$at
    or	$a3,$a3,$ra
    ld	$ra,0($sp)
    sw	$a3,1696($s0)
    andi	$v0,$s4,0x800
.L0daa6f74:
    beqz	$v0,.L0daa6fb8
    ld	$s4,8($sp)
    # Line 3659
    ld	$a3,1592($s1)
    sd	$a3,1592($s0)
    ld	$v1,1600($s1)
    sd	$v1,1600($s0)
    ld	$v0,1608($s1)
    sd	$v0,1608($s0)
    ld	$at,1616($s1)
    sd	$at,1616($s0)
    ld	$s4,1624($s1)
    sd	$s4,1624($s0)
    ld	$a3,1632($s1)
    sd	$a3,1632($s0)
    ld	$v1,1640($s1)
    ld	$s4,8($sp)
    sd	$v1,1640($s0)
.L0daa6fb8:
    ld	$gp,32($sp)
    # Line 3670
    li	$v0,1
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrCopyContext

.late_rodata
jtbl_0dbede70:
    .word .L0da9b618
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b5a4
    .word .L0da9b5a4
    .word .L0da9b5e0
    .word .L0da9b56c
    .word .L0da9b56c
    .word .L0da9b56c
    .word .L0da9b56c
    .word .L0da9b56c
    .word .L0da9b56c
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b560
    .word .L0da9b670
    .word .L0da9b670
    .word .L0da9b6ac
    .word .L0da9b638
    .word .L0da9b638
    .word .L0da9b638
    .word .L0da9b638
    .word .L0da9b638
    .word .L0da9b638
jtbl_0dbedf58:
    .word .L0da9d418
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d394
    .word .L0da9d394
    .word .L0da9d3f8
    .word .L0da9d314
    .word .L0da9d314
    .word .L0da9d314
    .word .L0da9d314
    .word .L0da9d298
    .word .L0da9d298
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d28c
    .word .L0da9d550
    .word .L0da9d550
    .word .L0da9d278
    .word .L0da9d4d4
    .word .L0da9d4d4
    .word .L0da9d4d4
    .word .L0da9d4d4
    .word .L0da9d458
    .word .L0da9d458

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_40e7fff000000000:
    .word 0x40e7fff0, 0x00000000
_lit8_416fffffe0000000:
    .word 0x416fffff, 0xe0000000
_lit8_bfe0000000000000:
    .word 0xbfe00000, 0x00000000
_lit_3d800000:
    .word 0x3d800000
_lit_3f800000:
    .word 0x3f800000
_lit_41800000:
    .word 0x41800000
_lit_bf800000:
    .word 0xbf800000

