# Source: ../soft/so_store.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_store.c
# Total Functions: 11

.text

# Function: __glDoStore_ASD
# Declared: Line 26 (Source lines: 27-61)
# Address: 0x0db728e0 - 0x0db72a88 (Size: 424 bytes, Frame: 208)
.globl __glDoStore_ASD
.ent __glDoStore_ASD
__glDoStore_ASD:
    # Line 27
    addiu	$sp,$sp,-80
    sd	$s1,40($sp)
    # Line 34
    lw	$s1,4($a1)
    sd	$gp,32($sp)
    sd	$s0,48($sp)
    # Line 31
    lw	$s0,0($a0)
    sd	$s2,24($sp)
    # Line 33
    lw	$s2,0($a1)
    # Line 37
    lw	$at,29752($s0)
    # Line 27
    lui	$v0,0x9
    addiu	$v0,$v0,-16968
    # Line 37
    slt	$at,$s2,$at
    bnez	$at,.L0db729fc
    # Line 27
    addu	$gp,$t9,$v0
    # Line 37
    lw	$v1,29756($s0)
    slt	$v1,$s1,$v1
    bnezl	$v1,.L0db72a00
    ld	$gp,32($sp)
    lw	$a3,29760($s0)
    slt	$a3,$s2,$a3
    beqzl	$a3,.L0db72a00
    ld	$gp,32($sp)
    lw	$at,29764($s0)
    slt	$at,$s1,$at
    beqzl	$at,.L0db72a00
    ld	$gp,32($sp)
    # Line 39
    lwc1	$f1,3424($s0)
    lwc1	$f0,24($a1)
    mul.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$v0,30800($s0)
    mfc1	$v1,$f0
    nop
    addu	$v0,$v0,$v1
    lbu	$v0,0($v0)
    sd	$a1,8($sp)
    beqz	$v0,.L0db72a14
    sd	$a0,16($sp)
    # Line 47
    move	$a2,$s1
    move	$a1,$s2
    lw	$t9,31260($s0)
    sd	$ra,56($sp)
    addiu	$a0,$s0,31160
    jalr	$t9
    sd	$a0,0($sp)
    beqz	$v0,.L0db72a58
    # Line 52
    move	$a2,$s1
    move	$a1,$s2
    lw	$t9,31396($s0)
    ld	$a3,8($sp)
    addiu	$a0,$s0,31280
    jalr	$t9
    lw	$a3,8($a3)
    beqzl	$v0,.L0db72a2c
    # Line 54
    lw	$t9,31268($s0)
    # Line 57
    lw	$t9,31272($s0)
    ld	$a0,0($sp)
    move	$a1,$s2
    jalr	$t9
    move	$a2,$s1
    # Line 60
    lw	$t9,12672($s0)
    ld	$a0,16($sp)
    jalr	$t9
    ld	$a1,8($sp)
    ld	$gp,32($sp)
    # Line 61
    ld	$s0,48($sp)
    ld	$ra,56($sp)
    ld	$s1,40($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db729fc:
    ld	$gp,32($sp)
.L0db72a00:
    # Line 39
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db72a14:
    ld	$gp,32($sp)
    # Line 45
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db72a2c:
    ld	$a0,0($sp)
    # Line 54
    move	$a1,$s2
    jalr	$t9
    move	$a2,$s1
    ld	$gp,32($sp)
    # Line 55
    ld	$s0,48($sp)
    ld	$ra,56($sp)
    ld	$s1,40($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db72a58:
    # Line 49
    lw	$t9,31264($s0)
    ld	$a0,0($sp)
    move	$a1,$s2
    jalr	$t9
    move	$a2,$s1
    ld	$gp,32($sp)
    # Line 50
    ld	$s0,48($sp)
    ld	$ra,56($sp)
    ld	$s1,40($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glDoStore_ASD

# Function: __glDoStore_AS
# Declared: Line 67 (Source lines: 68-96)
# Address: 0x0db72a88 - 0x0db72bd8 (Size: 336 bytes, Frame: 208)
.globl __glDoStore_AS
.ent __glDoStore_AS
__glDoStore_AS:
    # Line 68
    addiu	$sp,$sp,-80
    sd	$s1,32($sp)
    # Line 75
    lw	$s1,4($a1)
    sd	$s0,40($sp)
    # Line 72
    lw	$s0,0($a0)
    sd	$gp,24($sp)
    # Line 74
    lw	$a2,0($a1)
    # Line 78
    lw	$at,29752($s0)
    # Line 68
    lui	$v0,0x9
    addiu	$v0,$v0,-17392
    # Line 78
    slt	$at,$a2,$at
    bnez	$at,.L0db72b84
    # Line 68
    addu	$gp,$t9,$v0
    # Line 78
    lw	$v1,29756($s0)
    slt	$v1,$s1,$v1
    bnezl	$v1,.L0db72b88
    ld	$gp,24($sp)
    lw	$a3,29760($s0)
    slt	$a3,$a2,$a3
    beqzl	$a3,.L0db72b88
    ld	$gp,24($sp)
    lw	$at,29764($s0)
    slt	$at,$s1,$at
    beqzl	$at,.L0db72b88
    ld	$gp,24($sp)
    # Line 80
    lwc1	$f1,3424($s0)
    lwc1	$f0,24($a1)
    mul.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$v0,30800($s0)
    mfc1	$v1,$f0
    nop
    addu	$v0,$v0,$v1
    lbu	$v0,0($v0)
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    beqz	$v0,.L0db72b98
    sd	$a0,16($sp)
    # Line 88
    move	$a2,$s1
    ld	$a1,0($sp)
    lw	$t9,31260($s0)
    sd	$ra,56($sp)
    addiu	$a0,$s0,31160
    jalr	$t9
    sd	$a0,48($sp)
    ld	$a6,48($sp)
    beqz	$v0,.L0db72bac
    ld	$a5,0($sp)
    # Line 93
    lw	$t9,31272($s0)
    move	$a0,$a6
    move	$a1,$a5
    jalr	$t9
    move	$a2,$s1
    # Line 95
    lw	$t9,12672($s0)
    ld	$a0,16($sp)
    jalr	$t9
    ld	$a1,8($sp)
    ld	$gp,24($sp)
    # Line 96
    ld	$ra,56($sp)
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db72b84:
    ld	$gp,24($sp)
.L0db72b88:
    # Line 80
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db72b98:
    ld	$gp,24($sp)
    # Line 86
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db72bac:
    # Line 90
    lw	$t9,31264($s0)
    move	$a0,$a6
    move	$a1,$a5
    jalr	$t9
    move	$a2,$s1
    ld	$gp,24($sp)
    # Line 91
    ld	$ra,56($sp)
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glDoStore_AS

# Function: __glDoStore_AD
# Declared: Line 102 (Source lines: 103-129)
# Address: 0x0db72bd8 - 0x0db72ce4 (Size: 268 bytes, Frame: 192)
.globl __glDoStore_AD
.ent __glDoStore_AD
__glDoStore_AD:
    # Line 103
    move	$a4,$a1
    # Line 110
    lw	$a2,4($a1)
    # Line 103
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    # Line 107
    lw	$s0,0($a0)
    sd	$gp,16($sp)
    # Line 109
    lw	$a5,0($a1)
    # Line 113
    lw	$at,29752($s0)
    # Line 103
    lui	$v0,0x9
    addiu	$v0,$v0,-17728
    # Line 113
    slt	$at,$a5,$at
    bnez	$at,.L0db72ca0
    # Line 103
    addu	$gp,$t9,$v0
    # Line 113
    lw	$v1,29756($s0)
    slt	$v1,$a2,$v1
    bnezl	$v1,.L0db72ca4
    ld	$gp,16($sp)
    lw	$a3,29760($s0)
    slt	$a3,$a5,$a3
    beqzl	$a3,.L0db72ca4
    ld	$gp,16($sp)
    lw	$at,29764($s0)
    slt	$at,$a2,$at
    beqzl	$at,.L0db72ca4
    ld	$gp,16($sp)
    # Line 115
    lwc1	$f1,3424($s0)
    lwc1	$f0,24($a4)
    mul.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$v0,30800($s0)
    mfc1	$v1,$f0
    nop
    addu	$v0,$v0,$v1
    lbu	$v0,0($v0)
    sd	$a4,0($sp)
    beqz	$v0,.L0db72cd4
    sd	$a0,8($sp)
    # Line 123
    move	$a1,$a5
    addiu	$a0,$s0,31280
    lw	$t9,31396($s0)
    ld	$a3,0($sp)
    sd	$ra,32($sp)
    jalr	$t9
    lw	$a3,8($a3)
    bnez	$v0,.L0db72cb0
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    # Line 125
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db72ca0:
    ld	$gp,16($sp)
.L0db72ca4:
    # Line 115
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db72cb0:
    # Line 128
    lw	$t9,12672($s0)
    ld	$a0,8($sp)
    jalr	$t9
    ld	$a1,0($sp)
    # Line 129
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db72cd4:
    ld	$gp,16($sp)
    # Line 121
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glDoStore_AD

# Function: __glDoStore_SD
# Declared: Line 135 (Source lines: 136-164)
# Address: 0x0db72ce4 - 0x0db72e40 (Size: 348 bytes, Frame: 208)
.globl __glDoStore_SD
.ent __glDoStore_SD
__glDoStore_SD:
    # Line 136
    addiu	$sp,$sp,-80
    sd	$s1,40($sp)
    # Line 143
    lw	$s1,4($a1)
    sd	$s0,48($sp)
    # Line 140
    lw	$s0,0($a0)
    sd	$gp,32($sp)
    # Line 142
    lw	$a2,0($a1)
    # Line 146
    lw	$at,29752($s0)
    # Line 136
    lui	$v0,0x9
    addiu	$v0,$v0,-17996
    # Line 146
    slt	$at,$a2,$at
    bnez	$at,.L0db72d50
    # Line 136
    addu	$gp,$t9,$v0
    # Line 146
    lw	$v1,29756($s0)
    slt	$v1,$s1,$v1
    bnezl	$v1,.L0db72d54
    ld	$gp,32($sp)
    lw	$a3,29760($s0)
    slt	$a3,$a2,$a3
    beqzl	$a3,.L0db72d54
    ld	$gp,32($sp)
    lw	$at,29764($s0)
    sd	$a2,0($sp)
    sd	$a1,16($sp)
    slt	$at,$s1,$at
    bnez	$at,.L0db72d64
    sd	$a0,24($sp)
.L0db72d50:
    ld	$gp,32($sp)
.L0db72d54:
    # Line 148
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db72d64:
    # Line 151
    move	$a2,$s1
    ld	$a1,0($sp)
    lw	$t9,31260($s0)
    sd	$ra,56($sp)
    addiu	$a0,$s0,31160
    jalr	$t9
    sd	$a0,8($sp)
    beqz	$v0,.L0db72e14
    # Line 156
    move	$a2,$s1
    ld	$a1,0($sp)
    lw	$t9,31396($s0)
    ld	$a3,16($sp)
    addiu	$a0,$s0,31280
    jalr	$t9
    lw	$a3,8($a3)
    ld	$a6,8($sp)
    beqz	$v0,.L0db72de8
    ld	$a5,0($sp)
    # Line 161
    lw	$t9,31272($s0)
    move	$a0,$a6
    move	$a1,$a5
    jalr	$t9
    move	$a2,$s1
    # Line 163
    lw	$t9,12672($s0)
    ld	$a0,24($sp)
    jalr	$t9
    ld	$a1,16($sp)
    ld	$gp,32($sp)
    # Line 164
    ld	$ra,56($sp)
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db72de8:
    # Line 158
    lw	$t9,31268($s0)
    move	$a0,$a6
    move	$a1,$a5
    jalr	$t9
    move	$a2,$s1
    ld	$gp,32($sp)
    # Line 159
    ld	$ra,56($sp)
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db72e14:
    # Line 153
    lw	$t9,31264($s0)
    ld	$a0,8($sp)
    ld	$a1,0($sp)
    jalr	$t9
    move	$a2,$s1
    ld	$gp,32($sp)
    # Line 154
    ld	$ra,56($sp)
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glDoStore_SD

# Function: __glDoStore_A
# Declared: Line 170 (Source lines: 171-193)
# Address: 0x0db72e40 - 0x0db72efc (Size: 188 bytes, Frame: 32)
.globl __glDoStore_A
.ent __glDoStore_A
__glDoStore_A:
    # Line 178
    lw	$a4,4($a1)
    # Line 171
    addiu	$sp,$sp,-32
    # Line 175
    lw	$a3,0($a0)
    sd	$gp,0($sp)
    # Line 177
    lw	$a5,0($a1)
    # Line 181
    lw	$at,29752($a3)
    # Line 171
    lui	$v0,0x9
    addiu	$v0,$v0,-18344
    # Line 181
    slt	$at,$a5,$at
    bnez	$at,.L0db72ed4
    # Line 171
    addu	$gp,$t9,$v0
    # Line 181
    lw	$v1,29756($a3)
    slt	$v1,$a4,$v1
    bnezl	$v1,.L0db72ed8
    ld	$gp,0($sp)
    lw	$a2,29760($a3)
    slt	$a2,$a5,$a2
    beqzl	$a2,.L0db72ed8
    ld	$gp,0($sp)
    lw	$at,29764($a3)
    slt	$at,$a4,$at
    beqzl	$at,.L0db72ed8
    ld	$gp,0($sp)
    # Line 183
    lwc1	$f1,3424($a3)
    lwc1	$f0,24($a1)
    mul.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$v0,30800($a3)
    mfc1	$v1,$f0
    nop
    addu	$v0,$v0,$v1
    lbu	$v0,0($v0)
    bnezl	$v0,.L0db72ee0
    # Line 192
    lw	$t9,12672($a3)
    ld	$gp,0($sp)
    # Line 189
    jr	$ra
    addiu	$sp,$sp,32
.L0db72ed4:
    ld	$gp,0($sp)
.L0db72ed8:
    # Line 183
    jr	$ra
    addiu	$sp,$sp,32
.L0db72ee0:
    sd	$ra,8($sp)
    # Line 192
    jalr	$t9
    nop
    # Line 193
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDoStore_A

# Function: __glDoStore_S
# Declared: Line 199 (Source lines: 200-223)
# Address: 0x0db72efc - 0x0db73008 (Size: 268 bytes, Frame: 208)
.globl __glDoStore_S
.ent __glDoStore_S
__glDoStore_S:
    # Line 200
    addiu	$sp,$sp,-80
    sd	$s1,40($sp)
    # Line 207
    lw	$s1,4($a1)
    sd	$s0,48($sp)
    # Line 204
    lw	$s0,0($a0)
    sd	$gp,32($sp)
    # Line 206
    lw	$a2,0($a1)
    # Line 210
    lw	$at,29752($s0)
    # Line 200
    lui	$v0,0x9
    addiu	$v0,$v0,-18532
    # Line 210
    slt	$at,$a2,$at
    bnez	$at,.L0db72f68
    # Line 200
    addu	$gp,$t9,$v0
    # Line 210
    lw	$v1,29756($s0)
    slt	$v1,$s1,$v1
    bnezl	$v1,.L0db72f6c
    ld	$gp,32($sp)
    lw	$a3,29760($s0)
    slt	$a3,$a2,$a3
    beqzl	$a3,.L0db72f6c
    ld	$gp,32($sp)
    lw	$at,29764($s0)
    sd	$a2,0($sp)
    sd	$a1,16($sp)
    slt	$at,$s1,$at
    bnez	$at,.L0db72f7c
    sd	$a0,24($sp)
.L0db72f68:
    ld	$gp,32($sp)
.L0db72f6c:
    # Line 212
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db72f7c:
    # Line 215
    move	$a2,$s1
    ld	$a1,0($sp)
    lw	$t9,31260($s0)
    sd	$ra,56($sp)
    addiu	$a0,$s0,31160
    jalr	$t9
    sd	$a0,8($sp)
    beqz	$v0,.L0db72fdc
    ld	$a5,0($sp)
    # Line 220
    lw	$t9,31272($s0)
    ld	$a0,8($sp)
    move	$a1,$a5
    jalr	$t9
    move	$a2,$s1
    # Line 222
    lw	$t9,12672($s0)
    ld	$a0,24($sp)
    jalr	$t9
    ld	$a1,16($sp)
    ld	$gp,32($sp)
    # Line 223
    ld	$ra,56($sp)
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db72fdc:
    # Line 217
    lw	$t9,31264($s0)
    ld	$a0,8($sp)
    move	$a1,$a5
    jalr	$t9
    move	$a2,$s1
    ld	$gp,32($sp)
    # Line 218
    ld	$ra,56($sp)
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glDoStore_S

# Function: __glDoStore_D
# Declared: Line 229 (Source lines: 230-251)
# Address: 0x0db73008 - 0x0db730d8 (Size: 208 bytes, Frame: 192)
.globl __glDoStore_D
.ent __glDoStore_D
__glDoStore_D:
    # Line 230
    move	$a4,$a1
    # Line 237
    lw	$a2,4($a1)
    # Line 230
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    # Line 234
    lw	$s0,0($a0)
    sd	$gp,16($sp)
    # Line 236
    lw	$a5,0($a1)
    # Line 240
    lw	$at,29752($s0)
    # Line 230
    lui	$v0,0x9
    addiu	$v0,$v0,-18800
    # Line 240
    slt	$at,$a5,$at
    bnez	$at,.L0db73070
    # Line 230
    addu	$gp,$t9,$v0
    # Line 240
    lw	$v1,29756($s0)
    slt	$v1,$a2,$v1
    bnezl	$v1,.L0db73074
    ld	$gp,16($sp)
    lw	$a3,29760($s0)
    slt	$a3,$a5,$a3
    beqzl	$a3,.L0db73074
    ld	$gp,16($sp)
    lw	$at,29764($s0)
    sd	$a4,0($sp)
    slt	$at,$a2,$at
    bnez	$at,.L0db73080
    sd	$a0,8($sp)
.L0db73070:
    ld	$gp,16($sp)
.L0db73074:
    # Line 242
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db73080:
    # Line 245
    move	$a1,$a5
    addiu	$a0,$s0,31280
    lw	$t9,31396($s0)
    ld	$a3,0($sp)
    sd	$ra,32($sp)
    jalr	$t9
    lw	$a3,8($a3)
    bnez	$v0,.L0db730b4
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    # Line 247
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db730b4:
    # Line 250
    lw	$t9,12672($s0)
    ld	$a0,8($sp)
    jalr	$t9
    ld	$a1,0($sp)
    # Line 251
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glDoStore_D

# Function: __glDoStore
# Declared: Line 257 (Source lines: 258-274)
# Address: 0x0db730d8 - 0x0db7315c (Size: 132 bytes, Frame: 32)
.globl __glDoStore
.ent __glDoStore
__glDoStore:
    # Line 265
    lw	$a4,4($a1)
    # Line 258
    addiu	$sp,$sp,-32
    # Line 262
    lw	$a3,0($a0)
    sd	$gp,0($sp)
    # Line 264
    lw	$a5,0($a1)
    # Line 268
    lw	$at,29752($a3)
    # Line 258
    lui	$v0,0x9
    addiu	$v0,$v0,-19008
    # Line 268
    slt	$at,$a5,$at
    bnez	$at,.L0db73134
    # Line 258
    addu	$gp,$t9,$v0
    # Line 268
    lw	$v1,29756($a3)
    slt	$v1,$a4,$v1
    bnezl	$v1,.L0db73138
    ld	$gp,0($sp)
    lw	$a2,29760($a3)
    slt	$a2,$a5,$a2
    beqzl	$a2,.L0db73138
    ld	$gp,0($sp)
    lw	$at,29764($a3)
    slt	$at,$a4,$at
    bnezl	$at,.L0db73140
    # Line 273
    lw	$t9,12672($a3)
.L0db73134:
    ld	$gp,0($sp)
.L0db73138:
    # Line 270
    jr	$ra
    addiu	$sp,$sp,32
.L0db73140:
    sd	$ra,8($sp)
    # Line 273
    jalr	$t9
    nop
    # Line 274
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDoStore

# Function: __glDoNullStore
# Declared: Line 292 (Source lines: 294-294)
# Address: 0x0db7315c - 0x0db73164 (Size: 8 bytes, Frame: 0)
.globl __glDoNullStore
.ent __glDoNullStore
__glDoNullStore:
    # Line 294
    jr	$ra
    nop
.end __glDoNullStore

# Function: __glDoDoubleStore
# Declared: Line 296 (Source lines: 297-303)
# Address: 0x0db73164 - 0x0db731c0 (Size: 92 bytes, Frame: 48)
.globl __glDoDoubleStore
.ent __glDoDoubleStore
__glDoDoubleStore:
    # Line 297
    addiu	$sp,$sp,-48
    # Line 298
    lw	$a0,0($a0)
    sd	$gp,16($sp)
    # Line 297
    lui	$at,0x9
    sd	$a0,24($sp)
    # Line 299
    lw	$a0,30708($a0)
    # Line 297
    addiu	$at,$at,-19148
    addu	$gp,$t9,$at
    # Line 300
    lw	$t9,164($a0)
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 297
    move	$s8,$a1
    ld	$a0,24($sp)
    # Line 301
    lw	$a0,30712($a0)
    # Line 302
    lw	$t9,164($a0)
    jalr	$t9
    move	$a1,$s8
    # Line 303
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glDoDoubleStore

# Function: __glGenericPickStoreProcs
# Declared: Line 310 (Source lines: 311-363)
# Address: 0x0db731c0 - 0x0db7331c (Size: 348 bytes, Frame: 0)
.globl __glGenericPickStoreProcs
.ent __glGenericPickStoreProcs
__glGenericPickStoreProcs:
    # Line 312
    move	$a3,$zero
    # Line 313
    lw	$a4,30488($a0)
    # Line 311
    lui	$v1,0x9
    addiu	$v1,$v1,-19240
    # Line 313
    andi	$v0,$a4,0x200
    beqz	$v0,.L0db731ec
    # Line 311
    addu	$at,$t9,$v1
    # Line 313
    lbu	$a1,3104($a0)
    beqz	$a1,.L0db731f0
    # Line 316
    andi	$a2,$a4,0x20
    li	$a3,1
.L0db731ec:
    andi	$a2,$a4,0x20
.L0db731f0:
    beqz	$a2,.L0db73200
    # Line 319
    andi	$v0,$a4,0x4
    ori	$a3,$a3,0x2
    andi	$v0,$a4,0x4
.L0db73200:
    beqzl	$v0,.L0db73210
    # Line 324
    lw	$a4,1788($a0)
    # Line 322
    ori	$a3,$a3,0x4
    # Line 324
    lw	$a4,1788($a0)
.L0db73210:
    sltiu	$v1,$a4,1033
    bnez	$v1,.L0db73248
    li	$v0,1032
    sltiu	$a1,$a4,1034
    bnez	$a1,.L0db732a4
    sltiu	$a2,$a4,1035
    bnez	$a2,.L0db732fc
    sltiu	$v0,$a4,1036
    bnez	$v0,.L0db732a4
    li	$v1,1036
    bne	$a4,$v1,.L0db732cc
    nop
    b	.L0db732a4
    nop
.L0db73248:
    sltiu	$a1,$a4,1029
    bnez	$a1,.L0db73290
    sltiu	$a2,$a4,1030
    bnez	$a2,.L0db732a4
    nop
    bne	$a4,$v0,.L0db732cc
    nop
    # Line 330
    lbu	$v1,30704($a0)
    beqz	$v1,.L0db732a4
    # Line 331
    la	$v0,sub_0dbf0000
    # Line 332
    la	$a2,__glDoDoubleStore
    # Line 331
    sll	$a1,$a3,0x2
    addiu	$v0,$v0,13440
    addu	$a1,$a1,$v0
    lw	$a1,0($a1)
    # Line 332
    sw	$a2,12672($a0)
    # Line 363
    jr	$ra
    # Line 331
    sw	$a1,12668($a0)
.L0db73290:
    # Line 324
    sltiu	$v1,$a4,1028
    bnez	$v1,.L0db732d4
    sltiu	$a1,$a4,1029
    beqz	$a1,.L0db732cc
    nop
.L0db732a4:
    # Line 340
    beqz	$a3,.L0db73310
    lw	$a4,11832($a0)
    # Line 358
    sll	$v0,$a3,0x2
    la	$v1,sub_0dbf0000
    addiu	$v1,$v1,13440
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    sw	$v0,12668($a0)
    # Line 359
    lw	$a2,164($a4)
    sw	$a2,12672($a0)
.L0db732cc:
    # Line 363
    jr	$ra
    nop
.L0db732d4:
    # Line 324
    bnez	$a4,.L0db732cc
    # Line 326
    la	$v0,sub_0dbf0000
    # Line 327
    la	$a2,__glDoNullStore
    # Line 326
    sll	$a1,$a3,0x2
    addiu	$v0,$v0,13440
    addu	$a1,$a1,$v0
    lw	$a1,0($a1)
    # Line 327
    sw	$a2,12672($a0)
    # Line 363
    jr	$ra
    # Line 326
    sw	$a1,12668($a0)
.L0db732fc:
    # Line 324
    li	$v1,1034
    bne	$a4,$v1,.L0db732cc
    nop
    b	.L0db732a4
    nop
.L0db73310:
    # Line 356
    lw	$a1,164($a4)
    # Line 363
    jr	$ra
    # Line 356
    sw	$a1,12668($a0)
.end __glGenericPickStoreProcs

