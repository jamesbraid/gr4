# Source: ../MGRAS/mgras_dltex.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_dltex.c
# Total Functions: 5

.text

# Function: NewTexState
# Declared: Line 38 (Source lines: 39-56)
# Address: 0x0da8d700 - 0x0da8d748 (Size: 72 bytes, Frame: 192)
.ent NewTexState
NewTexState:
    # Line 39
    addiu	$sp,$sp,-64
    sd	$a2,16($sp)
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    # Line 42
    lw	$t9,0($a0)
    # Line 39
    move	$s8,$a1
    # Line 42
    sll	$a1,$a2,0x3
    jalr	$t9
    addiu	$a1,$a1,28
    # Line 54
    sw	$zero,8($v0)
    # Line 52
    sw	$s8,0($v0)
    # Line 56
    ld	$s8,8($sp)
    # Line 53
    ld	$a3,16($sp)
    # Line 56
    ld	$ra,0($sp)
    addiu	$sp,$sp,64
    # Line 53
    addiu	$a3,$a3,2
    # Line 56
    jr	$ra
    # Line 53
    sw	$a3,4($v0)
.end NewTexState

# Function: AddTex
# Declared: Line 65 (Source lines: 67-101)
# Address: 0x0da8d748 - 0x0da8d8f4 (Size: 428 bytes, Frame: 240)
.ent AddTex
AddTex:
    # Line 67
    move	$v0,$a1
    addiu	$sp,$sp,-112
    # Line 72
    lw	$a7,0($a1)
    sd	$s4,0($sp)
    sd	$s1,24($sp)
    # Line 74
    lw	$t0,8($a7)
    # Line 67
    move	$s1,$a2
    sd	$s0,32($sp)
    # Line 74
    sltu	$at,$a4,$t0
    beqz	$at,.L0da8d7a4
    move	$s0,$a4
    sll	$a1,$t0,0x3
    sll	$s4,$s0,0x3
    addu	$a2,$s4,$a7
.L0da8d780:
    # Line 76
    lw	$v1,12($a2)
    # Line 74
    addiu	$a2,$a2,8
    # Line 76
    sltu	$v1,$v1,$s1
    beqz	$v1,.L0da8d7a8
    # Line 74
    addu	$a5,$a1,$a7
    addiu	$s4,$s4,8
    sltu	$a5,$a2,$a5
    bnez	$a5,.L0da8d780
    addiu	$s0,$s0,1
.L0da8d7a4:
    sll	$s4,$s0,0x3
.L0da8d7a8:
    # Line 79
    sltu	$a6,$s0,$t0
    beqz	$a6,.L0da8d7c0
    addu	$at,$s4,$a7
    lw	$at,12($at)
    beql	$at,$s1,.L0da8d8e0
    # Line 81
    addiu	$v0,$s0,1
.L0da8d7c0:
    lw	$a4,4($a7)
    beq	$t0,$a4,.L0da8d898
    sd	$v0,8($sp)
.L0da8d7cc:
    # Line 94
    sltu	$v1,$s0,$t0
    beqz	$v1,.L0da8d86c
    move	$a2,$t0
    sll	$v0,$a2,0x3
    sll	$a0,$s0,0x3
    addu	$a0,$a0,$a7
    subu	$a4,$a2,$s0
    andi	$a1,$a4,0x3
    beqz	$a1,.L0da8d810
    addu	$v0,$v0,$a7
.L0da8d7f4:
    addiu	$v0,$v0,-8
    # Line 95
    lw	$a6,16($v0)
    addi	$a1,$a1,-1
    lw	$a5,12($v0)
    sw	$a6,24($v0)
    bnez	$a1,.L0da8d7f4
    sw	$a5,20($v0)
.L0da8d810:
    sra	$at,$a4,0x2
    beqz	$at,.L0da8d868
    move	$a1,$v0
    move	$v0,$a1
.L0da8d820:
    # Line 94
    addiu	$v0,$v0,-32
    # Line 95
    lw	$at,16($v0)
    lw	$a6,12($v0)
    lw	$a5,24($v0)
    sw	$at,24($v0)
    lw	$v1,20($v0)
    sw	$a6,20($v0)
    lw	$at,32($v0)
    sw	$a5,32($v0)
    lw	$a6,28($v0)
    sw	$v1,28($v0)
    lw	$a5,40($v0)
    sw	$at,40($v0)
    lw	$v1,36($v0)
    sw	$a6,36($v0)
    sw	$a5,48($v0)
    # Line 94
    bne	$v0,$a0,.L0da8d820
    # Line 95
    sw	$v1,44($v0)
.L0da8d868:
    # Line 94
    lw	$t0,8($a7)
.L0da8d86c:
    # Line 101
    addiu	$v0,$s0,1
    ld	$s0,32($sp)
    # Line 98
    addu	$v1,$s4,$a7
    # Line 101
    ld	$s4,0($sp)
    # Line 97
    addiu	$a5,$t0,1
    sw	$a5,8($a7)
    # Line 99
    sw	$a3,16($v1)
    # Line 98
    sw	$s1,12($v1)
    # Line 101
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da8d898:
    sd	$a3,40($sp)
    # Line 86
    move	$a1,$a7
    sd	$ra,48($sp)
    # Line 85
    addiu	$a2,$a4,2
    # Line 86
    lw	$t9,8($a0)
    sd	$a2,16($sp)
    sll	$a2,$a2,0x3
    jalr	$t9
    addiu	$a2,$a2,12
    move	$a7,$v0
    # Line 90
    ld	$a5,8($sp)
    # Line 91
    ld	$a3,16($sp)
    ld	$ra,48($sp)
    # Line 90
    sw	$v0,0($a5)
    # Line 91
    sw	$a3,4($v0)
    ld	$a3,40($sp)
    b	.L0da8d7cc
    lw	$t0,8($v0)
.L0da8d8e0:
    # Line 81
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$s4,0($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end AddTex

# Function: __glMgrDLTexInit
# Declared: Line 119 (Source lines: 120-152)
# Address: 0x0da8d8f4 - 0x0da8d9fc (Size: 264 bytes, Frame: 224)
.globl __glMgrDLTexInit
.ent __glMgrDLTexInit
__glMgrDLTexInit:
    # Line 134
    move	$a4,$zero
    # Line 120
    addiu	$sp,$sp,-96
    sd	$s1,8($sp)
    # Line 137
    move	$s1,$zero
    sd	$s4,24($sp)
    # Line 120
    move	$s4,$a0
    sd	$s5,16($sp)
    move	$s5,$a1
    sd	$gp,32($sp)
    sd	$s6,40($sp)
    # Line 131
    lw	$s6,20($a1)
    # Line 134
    sw	$zero,0($sp)
    # Line 120
    lui	$at,0x17
    # Line 137
    lw	$a3,24($a1)
    # Line 120
    addiu	$at,$at,3492
    addu	$gp,$t9,$at
    # Line 137
    blez	$a3,.L0da8d9d8
    # Line 136
    lw	$a5,16($a1)
    sd	$ra,48($sp)
    sd	$s0,64($sp)
    # Line 137
    move	$s0,$a5
    sd	$s2,72($sp)
    sd	$s3,56($sp)
    la	$s3,sub_0da90000
    la	$s2,__glMgrle_BindTextureEXT
    b	.L0da8d9ac
    addiu	$s3,$s3,-10424
.L0da8d960:
    # Line 142
    move	$a0,$s4
    move	$a1,$s6
    addiu	$t9,$t9,-10496
    bal __glMgrDLNodeUnlink
    move	$a2,$zero
    sw	$v0,0($sp)
    # Line 147
    addiu	$a1,$sp,0
.L0da8d97c:
    move	$a0,$s4
    lw	$a2,4($s0)
    move	$a4,$zero
    move	$t9,$s3
    lw	$a3,0($a2)
    bal __glMgrDLNodeUnlink
    lw	$a2,4($a2)
    lw	$a4,0($sp)
    lw	$a3,24($s5)
.L0da8d9a0:
    # Line 137
    slt	$at,$s1,$a3
    beqz	$at,.L0da8d9c8
    addiu	$s0,$s0,8
.L0da8d9ac:
    lw	$v0,0($s0)
    bne	$v0,$s2,.L0da8d9a0
    addiu	$s1,$s1,1
    bnez	$a4,.L0da8d97c
    # Line 147
    addiu	$a1,$sp,0
    b	.L0da8d960
    nop	# was lw $t9, -32736($gp) # &sub_0da90000
.L0da8d9c8:
    ld	$s2,72($sp)
    ld	$s0,64($sp)
    ld	$ra,48($sp)
    ld	$s3,56($sp)
.L0da8d9d8:
    ld	$gp,32($sp)
    # Line 152
    ld	$s1,8($sp)
    ld	$s4,24($sp)
    ld	$s5,16($sp)
    # Line 151
    sw	$a4,48($s6)
    sw	$a4,8($s6)
    # Line 152
    ld	$s6,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glMgrDLTexInit

# Function: __glMgrDLTexMerge
# Declared: Line 160 (Source lines: 163-205)
# Address: 0x0da8d9fc - 0x0da8db8c (Size: 400 bytes, Frame: 240)
.globl __glMgrDLTexMerge
.ent __glMgrDLTexMerge
__glMgrDLTexMerge:
    # Line 163
    addiu	$sp,$sp,-112
    sd	$s6,24($sp)
    move	$s6,$a1
    sd	$s2,32($sp)
    move	$s2,$a0
    sd	$gp,8($sp)
    sd	$s5,16($sp)
    # Line 168
    lw	$s5,8($a2)
    # Line 163
    lui	$at,0x17
    addiu	$at,$at,3228
    # Line 168
    beqz	$s5,.L0da8db54
    # Line 163
    addu	$gp,$t9,$at
    sd	$s3,72($sp)
    # Line 171
    lw	$s3,8($s6)
    beqzl	$s3,.L0da8db6c
    # Line 174
    sw	$s5,8($s6)
    # Line 178
    lw	$v0,8($s3)
    lw	$a2,8($s5)
    sltu	$v1,$a2,$v0
    beqzl	$v1,.L0da8da5c
    sd	$s0,48($sp)
    sd	$ra,64($sp)
    # Line 180
    move	$a2,$v0
    sd	$s0,48($sp)
.L0da8da5c:
    # Line 181
    # lw $t9, -32736($gp) # &sub_0da90000
    move	$a0,$s2
    sd	$ra,64($sp)
    addiu	$t9,$t9,-10496
    bal __glMgrDLNodeUnlink
    move	$a1,$s6
    sw	$v0,0($sp)
    # Line 184
    move	$s0,$zero
    lw	$at,8($s3)
    # Line 183
    move	$a4,$zero
    sd	$s1,40($sp)
    # Line 184
    beqz	$at,.L0da8dadc
    ld	$ra,64($sp)
    la	$s1,sub_0da90000
    sd	$s4,56($sp)
    move	$s4,$s3
    addiu	$s1,$s1,-10424
.L0da8daa0:
    # Line 186
    move	$a0,$s2
    lw	$a3,16($s4)
    lw	$a2,12($s4)
    addiu	$a1,$sp,0
    # Line 184
    addiu	$s4,$s4,8
    # Line 186
    bal __glMgrDLNodeUnlink
    move	$t9,$s1
    # Line 184
    lw	$at,8($s3)
    addiu	$s0,$s0,1
    sltu	$at,$s0,$at
    bnez	$at,.L0da8daa0
    # Line 186
    move	$a4,$v0
    ld	$s4,56($sp)
    b	.L0da8dae4
    ld	$ra,64($sp)
.L0da8dadc:
    # Line 184
    la	$s1,sub_0da90000
    addiu	$s1,$s1,-10424
.L0da8dae4:
    # Line 192
    lw	$at,8($s5)
    sd	$s4,56($sp)
    # Line 191
    move	$a4,$zero
    # Line 192
    beqz	$at,.L0da8db38
    move	$s0,$zero
    move	$s4,$s5
    # Line 194
    move	$a0,$s2
.L0da8db00:
    lw	$a3,16($s4)
    lw	$a2,12($s4)
    addiu	$a1,$sp,0
    # Line 192
    addiu	$s4,$s4,8
    # Line 194
    bal __glMgrDLNodeUnlink
    move	$t9,$s1
    move	$a4,$v0
    # Line 192
    lw	$v0,8($s5)
    addiu	$s0,$s0,1
    sltu	$v0,$s0,$v0
    bnez	$v0,.L0da8db00
    # Line 194
    move	$a0,$s2
    ld	$s4,56($sp)
    ld	$ra,64($sp)
.L0da8db38:
    # Line 192
    lw	$v1,0($s3)
    ld	$s1,40($sp)
    beq	$v1,$s6,.L0da8db74
    ld	$s0,48($sp)
.L0da8db48:
    # Line 202
    lw	$a3,0($sp)
    ld	$s3,72($sp)
    sw	$a3,8($s6)
.L0da8db54:
    ld	$gp,8($sp)
    # Line 205
    ld	$s2,32($sp)
    ld	$s5,16($sp)
    ld	$s6,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da8db6c:
    # Line 174
    b	.L0da8db54
    ld	$s3,72($sp)
.L0da8db74:
    # Line 201
    lw	$t9,12($s2)
    move	$a0,$s2
    jal	sub_0da90000
    move	$a1,$s3
    b	.L0da8db48
    ld	$ra,64($sp)
.end __glMgrDLTexMerge

# Function: __glMgrDLTexFree
# Declared: Line 212 (Source lines: 213-241)
# Address: 0x0da8db8c - 0x0da8dc34 (Size: 168 bytes, Frame: 192)
.globl __glMgrDLTexFree
.ent __glMgrDLTexFree
__glMgrDLTexFree:
    # Line 213
    addiu	$sp,$sp,-64
    sd	$s3,8($sp)
    sd	$gp,32($sp)
    sd	$s1,24($sp)
    # Line 220
    lw	$s1,20($a1)
    # Line 213
    lui	$at,0x17
    sd	$s0,16($sp)
    # Line 224
    lw	$s0,8($s1)
    # Line 213
    addiu	$at,$at,2828
    addu	$gp,$t9,$at
    # Line 224
    beqz	$s0,.L0da8dbe0
    # Line 223
    lw	$s3,48($s1)
    # Line 224
    bnez	$s3,.L0da8dbf8
.L0da8dbc0:
    move	$v0,$s3
    # Line 233
    beq	$v0,$s0,.L0da8dbd8
    ld	$s3,8($sp)
    lw	$v1,0($s0)
    beq	$v1,$s1,.L0da8dc1c
    ld	$s3,8($sp)
.L0da8dbd8:
    # Line 239
    sw	$zero,48($s1)
    sw	$zero,8($s1)
.L0da8dbe0:
    ld	$gp,32($sp)
    # Line 241
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    ld	$s3,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da8dbf8:
    move	$t9,$a0
    # Line 233
    lw	$t9,12($t9)
    sd	$a0,0($sp)
    sd	$ra,40($sp)
    jalr	$t9
    move	$a1,$s3
    ld	$a0,0($sp)
    b	.L0da8dbc0
    ld	$ra,40($sp)
.L0da8dc1c:
    # Line 237
    lw	$t9,12($a0)
    sd	$ra,40($sp)
    jalr	$t9
    move	$a1,$s0
    b	.L0da8dbd8
    ld	$ra,40($sp)
.end __glMgrDLTexFree

