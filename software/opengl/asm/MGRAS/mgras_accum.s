# Source: ../MGRAS/mgras_accum.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_accum.c
# Total Functions: 7

.text

# Function: __glMgrGetClipBox
# Declared: Line 25 (Source lines: 26-97)
# Address: 0x0da6d5c0 - 0x0da6d7dc (Size: 540 bytes, Frame: 224)
.ent __glMgrGetClipBox
__glMgrGetClipBox:
    # Line 44
    li	$a2,1
    li	$a1,1
    # Line 26
    addiu	$sp,$sp,-96
    sd	$s5,56($sp)
    # Line 44
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    sd	$s0,40($sp)
    # Line 26
    move	$s0,$a0
    la	$a0,SYMBOL_LOCATION
    sd	$ra,32($sp)
    # Line 44
    jal	__Mgr_ReturnMode
    lw	$a0,1044($a0)
    sd	$s1,64($sp)
    # Line 49
    li	$a2,1
    li	$a1,1
    # Line 45
    dsll32	$s5,$v0,0x10
    dsra32	$s5,$s5,0x10
    # Line 49
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    # Line 46
    sra	$a3,$v0,0x10
    dsll32	$a3,$a3,0x10
    dsra32	$a3,$a3,0x10
    # Line 49
    lw	$a0,48($a0)
    jal	__Mgr_ReturnMode
    sd	$a3,48($sp)
    sd	$s4,72($sp)
    # Line 50
    li	$a2,1
    li	$a1,1
    # Line 49
    dsll32	$s1,$v0,0x10
    # Line 50
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    # Line 49
    dsra32	$s1,$s1,0x10
    # Line 50
    jal	__Mgr_ReturnMode
    lw	$a0,52($a0)
    dsll32	$a1,$v0,0x10
    dsra32	$a1,$a1,0x10
    # Line 59
    lw	$a3,31416($s0)
    andi	$a0,$s1,0xffff
    subu	$a0,$a0,$s5
    addiu	$a0,$a0,1
    # Line 55
    dsll32	$s4,$v0,0x10
    ld	$s5,48($sp)
    dsra32	$s4,$s4,0x10
    andi	$s4,$s4,0xffff
    subu	$s4,$s4,$s5
    ld	$s5,56($sp)
    # Line 59
    addiu	$a2,$s4,1
    bne	$a3,$a0,.L0da6d694
    # Line 55
    addiu	$s4,$s4,1
    # Line 59
    lw	$a3,31420($s0)
    sd	$a0,16($sp)
    sd	$a1,24($sp)
    beq	$a3,$a2,.L0da6d6ac
    ld	$s5,56($sp)
.L0da6d694:
    sd	$a0,16($sp)
    # Line 60
    lw	$t9,31468($s0)
    sd	$a1,24($sp)
    move	$a1,$a0
    jalr	$t9
    addiu	$a0,$s0,31412
.L0da6d6ac:
    # Line 62
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    jal	__glMgrim_IsEnabled
    li	$a0,3089
    ld	$a5,24($sp)
    # Line 84
    move	$a0,$s4
    # Line 62
    beqz	$v0,.L0da6d76c
    ld	$ra,32($sp)
    # Line 65
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    addiu	$a1,$sp,0
    li	$a0,3088
    jal	__glMgrim_GetIntegerv
    ld	$s1,64($sp)
    ld	$ra,32($sp)
    # Line 66
    lw	$a4,0($sp)
    # Line 68
    lw	$a2,8($sp)
    # Line 67
    lw	$a5,4($sp)
    # Line 69
    lw	$a0,12($sp)
    # Line 68
    addu	$a2,$a2,$a4
    # Line 71
    bltz	$a2,.L0da6d714
    # Line 69
    addu	$a0,$a0,$a5
    # Line 71
    bltz	$a0,.L0da6d714
    slt	$a3,$a4,$a2
    beqz	$a3,.L0da6d714
    slt	$at,$a5,$a0
    bnez	$at,.L0da6d798
    # Line 77
    sltu	$v1,$s4,$a0
.L0da6d714:
    # Line 73
    move	$a0,$zero
    move	$a2,$zero
    move	$a5,$zero
    move	$a4,$zero
.L0da6d724:
    # Line 88
    lw	$a1,3376($s0)
.L0da6d728:
    # Line 87
    lw	$v0,3372($s0)
    # Line 88
    lbu	$v1,4552($s0)
    addu	$a3,$v0,$a2
    # Line 87
    addu	$v0,$v0,$a4
    # Line 88
    sw	$a3,29760($s0)
    beqz	$v1,.L0da6d780
    # Line 87
    sw	$v0,29752($s0)
    # Line 92
    subu	$at,$s4,$a5
    addu	$at,$at,$a1
    sw	$at,29764($s0)
    # Line 91
    subu	$s4,$s4,$a0
    addu	$s4,$s4,$a1
    sw	$s4,29756($s0)
    ld	$s4,72($sp)
.L0da6d760:
    # Line 97
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da6d76c:
    # Line 82
    sra	$a5,$a5,0x10
    # Line 83
    ld	$a2,16($sp)
    # Line 81
    sra	$a4,$s1,0x10
    b	.L0da6d724
    ld	$s1,64($sp)
.L0da6d780:
    # Line 95
    addu	$at,$a1,$a0
    sw	$at,29764($s0)
    # Line 94
    addu	$s4,$a1,$a5
    sw	$s4,29756($s0)
    b	.L0da6d760
    ld	$s4,72($sp)
.L0da6d798:
    ld	$v0,16($sp)
    # Line 73
    bltz	$a4,.L0da6d7cc
    nop
    # Line 75
    bltz	$a5,.L0da6d7d4
    nop
.L0da6d7ac:
    # Line 76
    sltu	$v0,$v0,$a2
    beqz	$v0,.L0da6d7bc
    nop
    ld	$a2,16($sp)
.L0da6d7bc:
    # Line 77
    beqzl	$v1,.L0da6d728
    # Line 88
    lw	$a1,3376($s0)
    # Line 78
    b	.L0da6d724
    move	$a0,$s4
.L0da6d7cc:
    # Line 75
    bgez	$a5,.L0da6d7ac
    move	$a4,$zero
.L0da6d7d4:
    b	.L0da6d7ac
    # Line 76
    move	$a5,$zero
.end __glMgrGetClipBox

# Function: __glMgrim_SoftAccum
# Declared: Line 100 (Source lines: 101-115)
# Address: 0x0da6d7dc - 0x0da6d8b0 (Size: 212 bytes, Frame: 48)
.globl __glMgrim_SoftAccum
.ent __glMgrim_SoftAccum
__glMgrim_SoftAccum:
    # Line 102
    lw	$a3,__glCurrentContext
    # Line 101
    mov.s	$f4,$f13
    move	$a2,$a0
    # Line 102
    li	$v0,1
    # Line 101
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # Line 102
    lw	$at,__glBeginMode
    # Line 101
    lui	$v1,0x19
    addiu	$v1,$v1,3772
    # Line 102
    beq	$at,$v0,.L0da6d874
    # Line 101
    addu	$gp,$t9,$v1
    # Line 102
    lbu	$a1,3276($a3)
    beqz	$a1,.L0da6d894
    # Line 105
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 106
    lbu	$at,3108($a3)
    sd	$ra,24($sp)
    sd	$a2,8($sp)
    beqz	$at,.L0da6d858
    sdc1	$f4,0($sp)
    # Line 113
    # lw $t9, -32744($gp) # &sub_0da70000
    addiu	$t9,$t9,-10816
    bal __glMgrim_SoftAccum-0x21c
    move	$a0,$a3
    # Line 114
    # lw $t9, -28044($gp) # &__glim_Accum
    ld	$a0,8($sp)
    jal	__glim_Accum
    ldc1	$f13,0($sp)
    # Line 115
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da6d858:
    # Line 109
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 110
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da6d874:
    # Line 102
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da6d894:
    sd	$ra,24($sp)
    # Line 105
    jalr	$t9
    li	$a0,1282
    # Line 106
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_SoftAccum

# Function: __glMgrim_SoftAccumClear
# Declared: Line 118 (Source lines: 119-126)
# Address: 0x0da6d8b0 - 0x0da6d914 (Size: 100 bytes, Frame: 48)
.globl __glMgrim_SoftAccumClear
.ent __glMgrim_SoftAccumClear
__glMgrim_SoftAccumClear:
    # Line 119
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    # Line 120
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    sd	$s8,8($sp)
    # Line 119
    lui	$s8,0x19
    addiu	$s8,$s8,3560
    addu	$gp,$t9,$s8
    # Line 123
    # lw $t9, -32744($gp) # &sub_0da70000
    sd	$at,24($sp)
    # Line 119
    move	$s8,$a0
    # Line 123
    addiu	$t9,$t9,-10816
    bal __glMgrim_SoftAccum-0x21c
    move	$a0,$at
    # Line 125
    ld	$ra,24($sp)
    li	$t9,0x9268
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    jal	sub_0da70000
    move	$a0,$s8
    # Line 126
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_SoftAccumClear

# Function: __glMgrim_Accum
# Declared: Line 130 (Source lines: 132-132)
# Address: 0x0da6d914 - 0x0da6d91c (Size: 8 bytes, Frame: 0)
.globl __glMgrim_Accum
.ent __glMgrim_Accum
__glMgrim_Accum:
    # Line 132
    jr	$ra
    nop
.end __glMgrim_Accum

# Function: Clear
# Declared: Line 136 (Source lines: 138-138)
# Address: 0x0da6d91c - 0x0da6d924 (Size: 8 bytes, Frame: 0)
.ent Clear
Clear:
    # Line 138
    jr	$ra
    nop
.end Clear

# Function: Pick
# Declared: Line 142 (Source lines: 144-144)
# Address: 0x0da6d924 - 0x0da6d92c (Size: 8 bytes, Frame: 0)
.ent Pick
Pick:
    # Line 144
    jr	$ra
    nop
.end Pick

# Function: __glMgrInitAccum
# Declared: Line 147 (Source lines: 148-156)
# Address: 0x0da6d92c - 0x0da6d994 (Size: 104 bytes, Frame: 48)
.globl __glMgrInitAccum
.ent __glMgrInitAccum
__glMgrInitAccum:
    # Line 148
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    sd	$gp,16($sp)
    lui	$at,0x19
    addiu	$at,$at,3436
    addu	$gp,$t9,$at
    # Line 149
    # lw $t9, -27596($gp) # &__glInitBuffer
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glInitBuffer
    # Line 148
    move	$s8,$a0
    # Line 155
    la	$a0,sub_0da70000
    # Line 154
    la	$v1,sub_0da70000
    ld	$gp,16($sp)
    # Line 156
    ld	$ra,0($sp)
    # Line 154
    addiu	$v1,$v1,-9956
    # Line 152
    ld	$v0,24($sp)
    # Line 151
    sw	$zero,24($s8)
    # Line 155
    addiu	$a0,$a0,-9948
    # Line 152
    lw	$v0,3112($v0)
    # Line 155
    sw	$a0,104($s8)
    # Line 154
    sw	$v1,108($s8)
    # Line 152
    sw	$v0,12($s8)
    # Line 156
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrInitAccum

