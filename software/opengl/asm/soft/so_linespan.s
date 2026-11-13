# Source: ../soft/so_linespan.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_linespan.c
# Total Functions: 21

.text

# Function: __glProcessLine
# Declared: Line 28 (Source lines: 29-64)
# Address: 0x0db516e4 - 0x0db5187c (Size: 408 bytes, Frame: 0)
.globl __glProcessLine
.ent __glProcessLine
__glProcessLine:
    # Line 29
    lui	$a1,0xb
    addiu	$a1,$a1,-12364
    # Line 36
    lui	$v0,0xffff
    # Line 37
    lui	$v1,0xffff
    # Line 29
    lui	$at,0x1
    ori	$at,$at,0x150
    subu	$sp,$sp,$at
    sd	$s4,24($sp)
    # Line 41
    move	$s4,$zero
    sd	$gp,8($sp)
    # Line 29
    addu	$gp,$t9,$a1
    sd	$s5,56($sp)
    sd	$s3,48($sp)
    move	$a2,$s8
    sd	$s0,32($sp)
    move	$s0,$a0
    # Line 44
    move	$s3,$s0
    sb	$zero,30528($a0)
    sd	$a2,16($sp)
    # Line 29
    addu	$s8,$sp,$at
    # Line 38
    lui	$a0,0xffff
    addu	$a0,$a0,$s8
    # Line 37
    addu	$v1,$v1,$s8
    # Line 36
    addu	$v0,$v0,$s8
    addiu	$v0,$v0,32752
    # Line 37
    addiu	$v1,$v1,-16
    # Line 38
    addiu	$a0,$a0,-272
    sw	$a0,30524($s0)
    # Line 37
    sw	$v1,30520($s0)
    # Line 42
    lw	$a2,12436($s0)
    # Line 39
    lw	$at,11832($s0)
    # Line 36
    sw	$v0,30516($s0)
    # Line 44
    blez	$a2,.L0db517f0
    # Line 39
    sw	$at,30532($s0)
    # Line 44
    sll	$s5,$a2,0x2
    bnez	$s4,.L0db517b4
    sd	$ra,40($sp)
    # Line 54
    lw	$t9,12308($s3)
.L0db5177c:
    jalr	$t9
    move	$a0,$s0
    beqz	$v0,.L0db5179c
    ld	$ra,40($sp)
    lbu	$at,30528($s0)
    # Line 55
    li	$v0,1
    # Line 54
    bnez	$at,.L0db51858
    # Line 56
    li	$s4,1
.L0db5179c:
    # Line 47
    addiu	$s3,$s3,4
    addu	$v0,$s5,$s0
    beql	$v0,$s3,.L0db517f4
    sd	$ra,40($sp)
    # Line 44
    beqzl	$s4,.L0db5177c
    # Line 54
    lw	$t9,12308($s3)
.L0db517b4:
    # Line 49
    lw	$t9,12372($s3)
    jalr	$t9
    move	$a0,$s0
    beqz	$v0,.L0db5179c
    ld	$ra,40($sp)
    # Line 51
    ld	$v1,16($sp)
    li	$v0,1
    ld	$gp,8($sp)
    ld	$s0,32($sp)
    ld	$s3,48($sp)
    ld	$s4,24($sp)
    ld	$s5,56($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v1
.L0db517f0:
    sd	$ra,40($sp)
.L0db517f4:
    ld	$s3,48($sp)
    # Line 47
    beqz	$s4,.L0db5182c
    ld	$s5,56($sp)
    # Line 62
    lw	$t9,12456($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$gp,8($sp)
    ld	$s0,32($sp)
    ld	$s4,24($sp)
    ld	$ra,40($sp)
    ld	$a0,16($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a0
.L0db5182c:
    # Line 64
    lw	$t9,12452($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$gp,8($sp)
    ld	$s0,32($sp)
    ld	$s4,24($sp)
    ld	$ra,40($sp)
    ld	$a1,16($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a1
.L0db51858:
    # Line 55
    ld	$a2,16($sp)
    ld	$gp,8($sp)
    ld	$s0,32($sp)
    ld	$s3,48($sp)
    ld	$s4,24($sp)
    ld	$s5,56($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a2
.end __glProcessLine

# Function: __glProcessLine3NW
# Declared: Line 77 (Source lines: 78-106)
# Address: 0x0db5187c - 0x0db519d8 (Size: 348 bytes, Frame: 0)
.globl __glProcessLine3NW
.ent __glProcessLine3NW
__glProcessLine3NW:
    # Line 83
    lui	$v0,0xffff
    # Line 85
    lui	$a1,0xffff
    # Line 78
    move	$a2,$s8
    lui	$at,0x1
    ori	$at,$at,0x140
    subu	$sp,$sp,$at
    sd	$a2,16($sp)
    sd	$ra,24($sp)
    sd	$s1,32($sp)
    move	$s1,$a0
    # Line 88
    sb	$zero,30528($s1)
    sd	$gp,8($sp)
    # Line 78
    addu	$s8,$sp,$at
    # Line 85
    addu	$a1,$a1,$s8
    # Line 83
    addu	$v0,$v0,$s8
    addiu	$v0,$v0,32752
    # Line 85
    addiu	$a1,$a1,-272
    sw	$a1,30524($s1)
    # Line 84
    lui	$v1,0xffff
    addu	$v1,$v1,$s8
    addiu	$v1,$v1,-16
    sw	$v1,30520($s1)
    # Line 78
    lui	$v1,0xb
    addiu	$v1,$v1,-12772
    addu	$gp,$t9,$v1
    # Line 91
    lw	$t9,12308($s1)
    # Line 86
    lw	$at,11832($s1)
    # Line 83
    sw	$v0,30516($s1)
    # Line 91
    jalr	$t9
    # Line 86
    sw	$at,30532($s1)
    # Line 91
    beqz	$v0,.L0db51950
    # Line 92
    ld	$v1,16($sp)
    # Line 91
    lbu	$at,30528($s1)
    beqz	$at,.L0db51920
    # Line 92
    li	$v0,1
    ld	$gp,8($sp)
    ld	$ra,24($sp)
    ld	$s1,32($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v1
.L0db51920:
    # Line 102
    lw	$t9,12376($s1)
    jalr	$t9
    move	$a0,$s1
    beqz	$v0,.L0db51988
    # Line 103
    ld	$a0,16($sp)
    li	$v0,1
    ld	$gp,8($sp)
    ld	$ra,24($sp)
    ld	$s1,32($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a0
.L0db51950:
    # Line 95
    lw	$t9,12312($s1)
    jalr	$t9
    move	$a0,$s1
    beqz	$v0,.L0db519b0
    # Line 96
    ld	$a2,16($sp)
    # Line 95
    lbu	$a1,30528($s1)
    beqz	$a1,.L0db51988
    # Line 96
    li	$v0,1
    ld	$gp,8($sp)
    ld	$ra,24($sp)
    ld	$s1,32($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a2
.L0db51988:
    # Line 106
    lw	$t9,12380($s1)
    jalr	$t9
    move	$a0,$s1
    ld	$gp,8($sp)
    ld	$s1,32($sp)
    ld	$ra,24($sp)
    ld	$at,16($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0db519b0:
    # Line 99
    lw	$t9,12316($s1)
    jalr	$t9
    move	$a0,$s1
    ld	$gp,8($sp)
    ld	$s1,32($sp)
    ld	$ra,24($sp)
    ld	$v1,16($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v1
.end __glProcessLine3NW

# Function: __glWideLineRep
# Declared: Line 114 (Source lines: 115-156)
# Address: 0x0db519d8 - 0x0db51b38 (Size: 352 bytes, Frame: 240)
.globl __glWideLineRep
.ent __glWideLineRep
__glWideLineRep:
    # Line 119
    lw	$a2,12436($a0)
    # Line 120
    lw	$a3,12440($a0)
    # Line 115
    addiu	$sp,$sp,-112
    sd	$s1,48($sp)
    sd	$s3,72($sp)
    sd	$s4,56($sp)
    sd	$s7,32($sp)
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$gp,8($sp)
    sd	$s2,24($sp)
    # Line 125
    lw	$s2,29996($a0)
    # Line 115
    lui	$at,0xb
    addiu	$at,$at,-13120
    # Line 125
    addiu	$s2,$s2,-1
    bltz	$s2,.L0db51b20
    # Line 115
    addu	$gp,$t9,$at
    sd	$s6,80($sp)
    sd	$ra,64($sp)
    sd	$s5,40($sp)
    # Line 125
    li	$s7,-1
    sll	$s1,$a3,0x2
    sll	$s4,$a2,0x2
    slt	$s3,$a2,$a3
    subu	$v0,$a3,$a2
    b	.L0db51a7c
    sd	$v0,0($sp)
.L0db51a44:
    # Line 127
    beqzl	$s6,.L0db51af0
    # Line 146
    lw	$t9,12460($s0)
    # Line 144
    lw	$t9,12464($s0)
    jalr	$t9
    move	$a0,$s0
.L0db51a58:
    # Line 148
    lw	$v1,29904($s0)
.L0db51a5c:
    beqzl	$v1,.L0db51ae4
    # Line 150
    lw	$v1,29924($s0)
    # Line 152
    lw	$a1,29920($s0)
    addiu	$a1,$a1,1
    sw	$a1,29920($s0)
.L0db51a70:
    # Line 125
    addiu	$s2,$s2,-1
    beql	$s2,$s7,.L0db51b08
    ld	$s7,32($sp)
.L0db51a7c:
    # Line 126
    beqz	$s3,.L0db51a44
    move	$s6,$zero
    addu	$s5,$s4,$s0
    bnezl	$s6,.L0db51acc
    # Line 129
    lw	$t9,12372($s5)
    # Line 134
    lw	$t9,12308($s5)
.L0db51a94:
    jalr	$t9
    move	$a0,$s0
    beqzl	$v0,.L0db51ab4
    # Line 127
    addiu	$s5,$s5,4
    # Line 134
    lbu	$at,30528($s0)
    bnez	$at,.L0db51b00
    # Line 139
    li	$s6,1
    # Line 127
    addiu	$s5,$s5,4
.L0db51ab4:
    addu	$v0,$s1,$s0
    beq	$v0,$s5,.L0db51a44
    nop
    # Line 126
    beqzl	$s6,.L0db51a94
    # Line 134
    lw	$t9,12308($s5)
    # Line 129
    lw	$t9,12372($s5)
.L0db51acc:
    jalr	$t9
    move	$a0,$s0
    bnezl	$v0,.L0db51a5c
    # Line 148
    lw	$v1,29904($s0)
    b	.L0db51ab4
    # Line 127
    addiu	$s5,$s5,4
.L0db51ae4:
    # Line 150
    addiu	$v1,$v1,1
    b	.L0db51a70
    sw	$v1,29924($s0)
.L0db51af0:
    # Line 146
    jalr	$t9
    move	$a0,$s0
    b	.L0db51a5c
    # Line 148
    lw	$v1,29904($s0)
.L0db51b00:
    # Line 137
    b	.L0db51a58
    # Line 136
    sb	$zero,30528($s0)
.L0db51b08:
    ld	$s5,40($sp)
    ld	$s1,48($sp)
    ld	$s4,56($sp)
    ld	$ra,64($sp)
    ld	$s3,72($sp)
    ld	$s6,80($sp)
.L0db51b20:
    # Line 156
    move	$v0,$zero
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glWideLineRep

# Function: __glWideStippleLineRep
# Declared: Line 164 (Source lines: 165-215)
# Address: 0x0db51b38 - 0x0db51d80 (Size: 584 bytes, Frame: 240)
.globl __glWideStippleLineRep
.ent __glWideStippleLineRep
__glWideStippleLineRep:
    # Line 186
    move	$a3,$zero
    # Line 184
    lw	$a2,30524($a0)
    # Line 173
    lw	$a5,12440($a0)
    # Line 172
    lw	$a4,12436($a0)
    # Line 165
    addiu	$sp,$sp,-368
    # Line 185
    addiu	$a7,$sp,0
    sd	$s0,280($sp)
    # Line 165
    move	$s0,$a0
    sd	$s3,272($sp)
    # Line 176
    lw	$s3,452($a0)
    sd	$gp,288($sp)
    # Line 165
    lui	$at,0xb
    sd	$s2,264($sp)
    # Line 174
    lw	$s2,30300($a0)
    # Line 165
    addiu	$at,$at,-13472
    addu	$gp,$t9,$at
    # Line 186
    addiu	$s2,$s2,31
    sra	$s2,$s2,0x5
    blez	$s2,.L0db51c00
    move	$a6,$s2
    andi	$a0,$s2,0x3
    beqz	$a0,.L0db51bb4
    move	$t1,$a7
.L0db51b94:
    addiu	$a3,$a3,1
    # Line 187
    addiu	$a7,$a7,4
    addiu	$a2,$a2,4
    lw	$v0,-4($a2)
    addi	$a0,$a0,-1
    bnez	$a0,.L0db51b94
    sw	$v0,-4($a7)
    move	$t1,$a7
.L0db51bb4:
    sra	$v1,$a6,0x2
    move	$t2,$a3
    beqz	$v1,.L0db51c00
    move	$t0,$a2
    move	$a0,$t2
    move	$a2,$t1
    move	$a3,$t0
.L0db51bd0:
    lw	$v1,0($a3)
    sw	$v1,0($a2)
    lw	$v0,4($a3)
    sw	$v0,4($a2)
    lw	$at,8($a3)
    addiu	$a2,$a2,16
    sw	$at,-8($a2)
    addiu	$a3,$a3,16
    lw	$a1,-4($a3)
    # Line 186
    addiu	$a0,$a0,4
    bne	$s2,$a0,.L0db51bd0
    # Line 187
    sw	$a1,-4($a2)
.L0db51c00:
    sd	$s6,336($sp)
    sd	$s5,312($sp)
    # Line 191
    sll	$s5,$a4,0x2
    sd	$s4,320($sp)
    slt	$s4,$a4,$a5
    addiu	$s3,$s3,-1
    bltz	$s3,.L0db51d54
    sd	$s1,304($sp)
    li	$s6,-1
    sd	$ra,328($sp)
    sd	$s7,296($sp)
    sll	$s1,$a5,0x2
    subu	$a1,$a5,$a4
    bnez	$s4,.L0db51d18
    sd	$a1,256($sp)
.L0db51c3c:
    # Line 198
    lw	$t9,12464($s0)
.L0db51c40:
    jalr	$t9
    move	$a0,$s0
    sd	$s7,296($sp)
.L0db51c4c:
    ld	$s7,296($sp)
    # Line 203
    move	$a3,$zero
    # Line 199
    beqz	$s3,.L0db51d04
    ld	$ra,328($sp)
    # Line 202
    addiu	$a2,$sp,0
    # Line 201
    lw	$a7,30524($s0)
    ld	$s7,296($sp)
    # Line 203
    move	$t0,$s2
    blez	$s2,.L0db51cec
    ld	$ra,328($sp)
    andi	$a0,$s2,0x3
    beqz	$a0,.L0db51ca0
    move	$a6,$a2
.L0db51c80:
    addiu	$a3,$a3,1
    # Line 204
    addiu	$a7,$a7,4
    addiu	$a2,$a2,4
    lw	$at,-4($a2)
    addi	$a0,$a0,-1
    bnez	$a0,.L0db51c80
    sw	$at,-4($a7)
    move	$a6,$a2
.L0db51ca0:
    move	$a5,$a3
    move	$a4,$a7
    sra	$v0,$t0,0x2
    beqz	$v0,.L0db51cec
    move	$a3,$a4
    move	$a0,$a5
    move	$a2,$a6
.L0db51cbc:
    lw	$v0,0($a2)
    sw	$v0,0($a3)
    lw	$at,4($a2)
    sw	$at,4($a3)
    lw	$a1,8($a2)
    addiu	$a3,$a3,16
    sw	$a1,-8($a3)
    addiu	$a2,$a2,16
    lw	$v1,-4($a2)
    # Line 203
    addiu	$a0,$a0,4
    bne	$s2,$a0,.L0db51cbc
    # Line 204
    sw	$v1,-4($a3)
.L0db51cec:
    # Line 203
    lw	$v1,29904($s0)
    beqzl	$v1,.L0db51d48
    # Line 208
    lw	$v0,29924($s0)
    # Line 210
    lw	$a1,29920($s0)
    addiu	$a1,$a1,1
    sw	$a1,29920($s0)
.L0db51d04:
    # Line 191
    addiu	$s3,$s3,-1
    beq	$s3,$s6,.L0db51d58
    # Line 215
    move	$v0,$zero
    # Line 191
    beqzl	$s4,.L0db51c40
    # Line 198
    lw	$t9,12464($s0)
.L0db51d18:
    sd	$ra,328($sp)
    # Line 191
    addu	$s7,$s5,$s0
    # Line 193
    lw	$t9,12372($s7)
.L0db51d24:
    jalr	$t9
    move	$a0,$s0
    bnez	$v0,.L0db51c4c
    # Line 192
    addu	$at,$s1,$s0
    addiu	$s7,$s7,4
    bnel	$at,$s7,.L0db51d24
    # Line 193
    lw	$t9,12372($s7)
    b	.L0db51c3c
    ld	$s7,296($sp)
.L0db51d48:
    # Line 208
    addiu	$v0,$v0,1
    b	.L0db51d04
    sw	$v0,29924($s0)
.L0db51d54:
    # Line 215
    move	$v0,$zero
.L0db51d58:
    ld	$gp,288($sp)
    ld	$s0,280($sp)
    ld	$s1,304($sp)
    ld	$s2,264($sp)
    ld	$s3,272($sp)
    ld	$s4,320($sp)
    ld	$s5,312($sp)
    ld	$s6,336($sp)
    jr	$ra
    addiu	$sp,$sp,368
.end __glWideStippleLineRep

# Function: __glDrawBothLine
# Declared: Line 226 (Source lines: 227-297)
# Address: 0x0db51d80 - 0x0db52218 (Size: 1176 bytes, Frame: 0)
.globl __glDrawBothLine
.ent __glDrawBothLine
__glDrawBothLine:
    # Line 241
    lw	$a3,30516($a0)
    # Line 235
    lw	$a5,12444($a0)
    # Line 234
    lw	$a4,12440($a0)
    # Line 227
    lui	$a2,0xffff
    move	$v0,$s8
    li	$at,0x8080
    subu	$sp,$sp,$at
    sd	$v0,88($sp)
    sd	$s1,72($sp)
    move	$s1,$a0
    sd	$s4,80($sp)
    sd	$gp,96($sp)
    addu	$s8,$sp,$at
    lui	$at,0xb
    addiu	$at,$at,-14056
    addu	$gp,$t9,$at
    # Line 242
    lbu	$at,3104($a0)
    # Line 233
    lw	$s4,30300($a0)
    # Line 227
    addu	$a2,$a2,$s8
    # Line 242
    beqz	$at,.L0db520f0
    # Line 227
    addiu	$a2,$a2,32752
    # Line 244
    blez	$s4,.L0db51edc
    move	$a0,$zero
    andi	$a6,$s4,0x3
    beqz	$a6,.L0db51e1c
    move	$a7,$s4
.L0db51de8:
    # Line 245
    lwc1	$f3,0($a3)
    swc1	$f3,0($a2)
    lwc1	$f2,4($a3)
    swc1	$f2,4($a2)
    lwc1	$f1,8($a3)
    # Line 244
    addiu	$a0,$a0,1
    # Line 245
    addiu	$a2,$a2,16
    swc1	$f1,-8($a2)
    addiu	$a3,$a3,16
    lwc1	$f0,-4($a3)
    addi	$a6,$a6,-1
    bnez	$a6,.L0db51de8
    swc1	$f0,-4($a2)
.L0db51e1c:
    move	$t1,$a0
    move	$t0,$a2
    sra	$v1,$a7,0x2
    beqz	$v1,.L0db51ecc
    move	$a6,$a3
    move	$a0,$t1
    move	$a2,$t0
    move	$a3,$a6
.L0db51e3c:
    lwc1	$f3,0($a3)
    swc1	$f3,0($a2)
    lwc1	$f2,4($a3)
    swc1	$f2,4($a2)
    lwc1	$f1,8($a3)
    swc1	$f1,8($a2)
    lwc1	$f0,12($a3)
    swc1	$f0,12($a2)
    lwc1	$f3,16($a3)
    swc1	$f3,16($a2)
    lwc1	$f2,20($a3)
    swc1	$f2,20($a2)
    lwc1	$f1,24($a3)
    swc1	$f1,24($a2)
    lwc1	$f0,28($a3)
    swc1	$f0,28($a2)
    lwc1	$f3,32($a3)
    swc1	$f3,32($a2)
    lwc1	$f2,36($a3)
    swc1	$f2,36($a2)
    lwc1	$f1,40($a3)
    swc1	$f1,40($a2)
    lwc1	$f0,44($a3)
    swc1	$f0,44($a2)
    lwc1	$f3,48($a3)
    swc1	$f3,48($a2)
    lwc1	$f2,52($a3)
    swc1	$f2,52($a2)
    lwc1	$f1,56($a3)
    addiu	$a2,$a2,64
    swc1	$f1,-8($a2)
    addiu	$a3,$a3,64
    lwc1	$f0,-4($a3)
    # Line 244
    addiu	$a0,$a0,4
    bne	$s4,$a0,.L0db51e3c
    # Line 245
    swc1	$f0,-4($a2)
.L0db51ecc:
    sd	$s5,32($sp)
    sd	$s3,56($sp)
    sd	$s6,8($sp)
    sd	$s7,16($sp)
.L0db51edc:
    sd	$s2,40($sp)
    sd	$s0,48($sp)
    sd	$ra,24($sp)
    sd	$s5,32($sp)
    # Line 256
    move	$s5,$zero
    sd	$s3,56($sp)
    sll	$s3,$a5,0x2
    sd	$s7,16($sp)
    sll	$s7,$a4,0x2
    sd	$s6,8($sp)
    slt	$s6,$a4,$a5
    subu	$a1,$a5,$a4
    sd	$a1,64($sp)
.L0db51f10:
    beqz	$s5,.L0db51fd0
    # Line 260
    addiu	$at,$s1,30936
    sw	$at,30532($s1)
.L0db51f1c:
    # Line 262
    move	$s2,$zero
    beqz	$s6,.L0db51f7c
    addu	$s0,$s7,$s1
    bnezl	$s2,.L0db51f6c
    # Line 265
    lw	$t9,12372($s0)
    # Line 270
    lw	$t9,12308($s0)
.L0db51f34:
    jalr	$t9
    move	$a0,$s1
    beqzl	$v0,.L0db51f54
    # Line 263
    addiu	$s0,$s0,4
    # Line 270
    lbu	$v0,30528($s1)
    bnez	$v0,.L0db52184
    # Line 275
    li	$s2,1
    # Line 263
    addiu	$s0,$s0,4
.L0db51f54:
    addu	$v1,$s3,$s1
    beq	$v1,$s0,.L0db51f80
    # Line 284
    move	$a4,$s4
    # Line 262
    beqzl	$s2,.L0db51f34
    # Line 270
    lw	$t9,12308($s0)
    # Line 265
    lw	$t9,12372($s0)
.L0db51f6c:
    jalr	$t9
    move	$a0,$s1
    beqz	$v0,.L0db51f54
    # Line 263
    addiu	$s0,$s0,4
.L0db51f7c:
    # Line 284
    move	$a4,$s4
.L0db51f80:
    # Line 280
    beqz	$s5,.L0db51fdc
    lui	$a3,0xffff
.L0db51f88:
    li	$a1,2
.L0db51f8c:
    # Line 256
    addiu	$s5,$s5,1
    bne	$s5,$a1,.L0db51f10
    # Line 297
    move	$v0,$zero
    ld	$gp,96($sp)
    ld	$s0,48($sp)
    ld	$s1,72($sp)
    ld	$s2,40($sp)
    ld	$s3,56($sp)
    ld	$s4,80($sp)
    ld	$s5,32($sp)
    ld	$s6,8($sp)
    ld	$s7,16($sp)
    ld	$ra,24($sp)
    ld	$a2,88($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a2
.L0db51fd0:
    # Line 258
    addiu	$at,$s1,30716
    b	.L0db51f1c
    sw	$at,30532($s1)
.L0db51fdc:
    # Line 282
    lbu	$v0,3104($s1)
    # Line 281
    lw	$a2,30516($s1)
    addu	$a3,$a3,$s8
    # Line 282
    beqz	$v0,.L0db5218c
    addiu	$a3,$a3,32752
    # Line 284
    move	$a0,$zero
    blez	$s4,.L0db51f88
    andi	$a5,$s4,0x3
    beqz	$a5,.L0db5203c
    move	$a7,$a0
.L0db52004:
    # Line 285
    lwc1	$f3,0($a3)
    swc1	$f3,0($a2)
    lwc1	$f2,4($a3)
    swc1	$f2,4($a2)
    lwc1	$f1,8($a3)
    # Line 284
    addiu	$a0,$a0,1
    # Line 285
    addiu	$a2,$a2,16
    swc1	$f1,-8($a2)
    addiu	$a3,$a3,16
    lwc1	$f0,-4($a3)
    addi	$a5,$a5,-1
    bnez	$a5,.L0db52004
    swc1	$f0,-4($a2)
    move	$a7,$a0
.L0db5203c:
    sra	$at,$a4,0x2
    move	$a5,$a2
    beqz	$at,.L0db520e8
    move	$a6,$a3
    move	$a2,$a5
    move	$a3,$a7
    move	$a0,$a6
.L0db52058:
    lwc1	$f3,0($a0)
    swc1	$f3,0($a2)
    lwc1	$f2,4($a0)
    swc1	$f2,4($a2)
    lwc1	$f1,8($a0)
    swc1	$f1,8($a2)
    lwc1	$f0,12($a0)
    swc1	$f0,12($a2)
    lwc1	$f3,16($a0)
    swc1	$f3,16($a2)
    lwc1	$f2,20($a0)
    swc1	$f2,20($a2)
    lwc1	$f1,24($a0)
    swc1	$f1,24($a2)
    lwc1	$f0,28($a0)
    swc1	$f0,28($a2)
    lwc1	$f3,32($a0)
    swc1	$f3,32($a2)
    lwc1	$f2,36($a0)
    swc1	$f2,36($a2)
    lwc1	$f1,40($a0)
    swc1	$f1,40($a2)
    lwc1	$f0,44($a0)
    swc1	$f0,44($a2)
    lwc1	$f3,48($a0)
    swc1	$f3,48($a2)
    lwc1	$f2,52($a0)
    swc1	$f2,52($a2)
    lwc1	$f1,56($a0)
    addiu	$a2,$a2,64
    swc1	$f1,-8($a2)
    addiu	$a0,$a0,64
    lwc1	$f0,-4($a0)
    # Line 284
    addiu	$a3,$a3,4
    bne	$s4,$a3,.L0db52058
    # Line 285
    swc1	$f0,-4($a2)
.L0db520e8:
    b	.L0db51f8c
    li	$a1,2
.L0db520f0:
    # Line 248
    blez	$s4,.L0db51edc
    move	$a0,$zero
    andi	$a6,$s4,0x3
    beqz	$a6,.L0db52120
    move	$a7,$s4
.L0db52104:
    addiu	$a0,$a0,1
    # Line 251
    addiu	$a2,$a2,16
    # Line 250
    addiu	$a3,$a3,16
    # Line 249
    lwc1	$f0,-16($a3)
    addi	$a6,$a6,-1
    bnez	$a6,.L0db52104
    swc1	$f0,-16($a2)
.L0db52120:
    move	$t1,$a0
    move	$t0,$a2
    sra	$v0,$a7,0x2
    beqz	$v0,.L0db52170
    move	$a6,$a3
    move	$a3,$t1
    move	$a0,$t0
    move	$a2,$a6
.L0db52140:
    lwc1	$f0,0($a2)
    swc1	$f0,0($a0)
    lwc1	$f3,16($a2)
    swc1	$f3,16($a0)
    lwc1	$f2,32($a2)
    # Line 251
    addiu	$a0,$a0,64
    # Line 249
    swc1	$f2,-32($a0)
    # Line 250
    addiu	$a2,$a2,64
    # Line 249
    lwc1	$f1,-16($a2)
    # Line 248
    addiu	$a3,$a3,4
    bne	$s4,$a3,.L0db52140
    # Line 249
    swc1	$f1,-16($a0)
.L0db52170:
    sd	$s5,32($sp)
    sd	$s3,56($sp)
    sd	$s6,8($sp)
    b	.L0db51edc
    sd	$s7,16($sp)
.L0db52184:
    # Line 273
    b	.L0db51f7c
    # Line 272
    sb	$zero,30528($s1)
.L0db5218c:
    # Line 288
    move	$a0,$zero
    blez	$s4,.L0db51f88
    move	$a4,$s4
    andi	$a5,$s4,0x3
    beqz	$a5,.L0db521c4
    move	$a7,$a0
.L0db521a4:
    addiu	$a0,$a0,1
    # Line 291
    addiu	$a2,$a2,16
    # Line 290
    addiu	$a3,$a3,16
    # Line 289
    lwc1	$f1,-16($a3)
    addi	$a5,$a5,-1
    bnez	$a5,.L0db521a4
    swc1	$f1,-16($a2)
    move	$a7,$a0
.L0db521c4:
    move	$a6,$a3
    move	$a5,$a2
    sra	$v1,$a4,0x2
    beqz	$v1,.L0db52210
    move	$a2,$a5
    move	$a0,$a7
    move	$a3,$a6
.L0db521e0:
    lwc1	$f1,0($a3)
    swc1	$f1,0($a2)
    lwc1	$f0,16($a3)
    swc1	$f0,16($a2)
    lwc1	$f3,32($a3)
    # Line 291
    addiu	$a2,$a2,64
    # Line 289
    swc1	$f3,-32($a2)
    # Line 290
    addiu	$a3,$a3,64
    # Line 289
    lwc1	$f2,-16($a3)
    # Line 288
    addiu	$a0,$a0,4
    bne	$s4,$a0,.L0db521e0
    # Line 289
    swc1	$f2,-16($a2)
.L0db52210:
    b	.L0db51f8c
    li	$a1,2
.end __glDrawBothLine

# Function: __glDrawBothStippledLine
# Declared: Line 305 (Source lines: 306-385)
# Address: 0x0db52218 - 0x0db5277c (Size: 1380 bytes, Frame: 0)
.globl __glDrawBothStippledLine
.ent __glDrawBothStippledLine
__glDrawBothStippledLine:
    # Line 323
    lw	$a2,30516($a0)
    # Line 314
    lw	$a5,12440($a0)
    # Line 313
    lw	$a4,12444($a0)
    # Line 306
    lui	$a3,0xffff
    li	$v1,0x8180
    subu	$sp,$sp,$v1
    sd	$s2,64($sp)
    sd	$s4,24($sp)
    sd	$s5,88($sp)
    sd	$s6,40($sp)
    sd	$s7,32($sp)
    sd	$ra,48($sp)
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$s3,72($sp)
    # Line 316
    lw	$s3,30300($a0)
    sd	$gp,56($sp)
    # Line 306
    move	$at,$s8
    sd	$s0,80($sp)
    lui	$s0,0xb
    addu	$s8,$sp,$v1
    addu	$a3,$a3,$s8
    sd	$at,96($sp)
    # Line 324
    lbu	$at,3104($a0)
    # Line 306
    addiu	$s0,$s0,-15232
    addu	$gp,$t9,$s0
    # Line 324
    beqz	$at,.L0db5266c
    # Line 306
    addiu	$a3,$a3,32752
    # Line 326
    blez	$s3,.L0db52380
    move	$a0,$zero
    andi	$a6,$s3,0x3
    beqz	$a6,.L0db522d0
    move	$a7,$s3
.L0db5229c:
    # Line 327
    lwc1	$f3,0($a2)
    swc1	$f3,0($a3)
    lwc1	$f2,4($a2)
    swc1	$f2,4($a3)
    lwc1	$f1,8($a2)
    # Line 326
    addiu	$a0,$a0,1
    # Line 327
    addiu	$a3,$a3,16
    swc1	$f1,-8($a3)
    addiu	$a2,$a2,16
    lwc1	$f0,-4($a2)
    addi	$a6,$a6,-1
    bnez	$a6,.L0db5229c
    swc1	$f0,-4($a3)
.L0db522d0:
    move	$t1,$a0
    move	$t0,$a3
    sra	$v0,$a7,0x2
    beqz	$v0,.L0db52380
    move	$a6,$a2
    move	$a2,$t1
    move	$a3,$t0
    move	$a0,$a6
.L0db522f0:
    lwc1	$f3,0($a0)
    swc1	$f3,0($a3)
    lwc1	$f2,4($a0)
    swc1	$f2,4($a3)
    lwc1	$f1,8($a0)
    swc1	$f1,8($a3)
    lwc1	$f0,12($a0)
    swc1	$f0,12($a3)
    lwc1	$f3,16($a0)
    swc1	$f3,16($a3)
    lwc1	$f2,20($a0)
    swc1	$f2,20($a3)
    lwc1	$f1,24($a0)
    swc1	$f1,24($a3)
    lwc1	$f0,28($a0)
    swc1	$f0,28($a3)
    lwc1	$f3,32($a0)
    swc1	$f3,32($a3)
    lwc1	$f2,36($a0)
    swc1	$f2,36($a3)
    lwc1	$f1,40($a0)
    swc1	$f1,40($a3)
    lwc1	$f0,44($a0)
    swc1	$f0,44($a3)
    lwc1	$f3,48($a0)
    swc1	$f3,48($a3)
    lwc1	$f2,52($a0)
    swc1	$f2,52($a3)
    lwc1	$f1,56($a0)
    addiu	$a3,$a3,64
    swc1	$f1,-8($a3)
    addiu	$a0,$a0,64
    lwc1	$f0,-4($a0)
    # Line 326
    addiu	$a2,$a2,4
    bne	$s3,$a2,.L0db522f0
    # Line 327
    swc1	$f0,-4($a3)
.L0db52380:
    # Line 345
    move	$a0,$zero
.L0db52384:
    # Line 343
    lw	$a2,30524($s1)
    # Line 345
    addiu	$s4,$s3,31
    # Line 330
    lui	$a3,0xffff
    addu	$a3,$a3,$s8
    # Line 345
    sra	$s4,$s4,0x5
    blez	$s4,.L0db52418
    # Line 330
    addiu	$a3,$a3,32496
    andi	$a6,$s4,0x3
    beqz	$a6,.L0db523c8
    # Line 345
    move	$t1,$s4
.L0db523ac:
    addiu	$a0,$a0,1
    # Line 346
    addiu	$a3,$a3,4
    addiu	$a2,$a2,4
    lw	$at,-4($a2)
    addi	$a6,$a6,-1
    bnez	$a6,.L0db523ac
    sw	$at,-4($a3)
.L0db523c8:
    move	$a7,$a0
    move	$a6,$a3
    sra	$v0,$t1,0x2
    beqz	$v0,.L0db52418
    move	$t0,$a2
    move	$a3,$a7
    move	$a2,$a6
    move	$a0,$t0
.L0db523e8:
    lw	$v0,0($a0)
    sw	$v0,0($a2)
    lw	$at,4($a0)
    sw	$at,4($a2)
    lw	$a1,8($a0)
    addiu	$a2,$a2,16
    sw	$a1,-8($a2)
    addiu	$a0,$a0,16
    lw	$v1,-4($a0)
    # Line 345
    addiu	$a3,$a3,4
    bne	$s4,$a3,.L0db523e8
    # Line 346
    sw	$v1,-4($a2)
.L0db52418:
    # Line 350
    move	$s5,$zero
    sll	$s2,$a4,0x2
    sll	$s7,$a5,0x2
    slt	$s6,$a5,$a4
    subu	$v1,$a4,$a5
    sd	$v1,8($sp)
.L0db52430:
    beqz	$s5,.L0db52664
    # Line 352
    addiu	$v1,$s1,30716
    # Line 354
    addiu	$a1,$s1,30936
    sw	$a1,30532($s1)
.L0db52440:
    beqz	$s6,.L0db52468
    addu	$s0,$s7,$s1
    # Line 357
    lw	$t9,12372($s0)
.L0db5244c:
    jalr	$t9
    move	$a0,$s1
    bnez	$v0,.L0db52468
    # Line 356
    addu	$at,$s2,$s1
    addiu	$s0,$s0,4
    bnel	$at,$s0,.L0db5244c
    # Line 357
    lw	$t9,12372($s0)
.L0db52468:
    andi	$a4,$s3,0x3
    # Line 362
    beqz	$s5,.L0db524bc
    # Line 366
    move	$a0,$zero
.L0db52474:
    li	$v0,2
.L0db52478:
    # Line 350
    addiu	$s5,$s5,1
    bne	$s5,$v0,.L0db52430
    # Line 385
    move	$v0,$zero
    ld	$gp,56($sp)
    ld	$s0,80($sp)
    ld	$s1,16($sp)
    ld	$s2,64($sp)
    ld	$s3,72($sp)
    ld	$s4,24($sp)
    ld	$s5,88($sp)
    ld	$s6,40($sp)
    ld	$s7,32($sp)
    ld	$ra,48($sp)
    ld	$v1,96($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v1
.L0db524bc:
    # Line 363
    lw	$a3,30516($s1)
    # Line 364
    lbu	$a1,3104($s1)
    lui	$a2,0xffff
    addu	$a2,$a2,$s8
    beqz	$a1,.L0db526f4
    addiu	$a2,$a2,32752
    # Line 366
    blezl	$s3,.L0db525cc
    # Line 377
    lw	$a3,30524($s1)
    beqz	$a4,.L0db52518
    # Line 366
    move	$a5,$s3
.L0db524e4:
    # Line 367
    lwc1	$f3,0($a2)
    swc1	$f3,0($a3)
    lwc1	$f2,4($a2)
    swc1	$f2,4($a3)
    lwc1	$f1,8($a2)
    # Line 366
    addiu	$a0,$a0,1
    # Line 367
    addiu	$a3,$a3,16
    swc1	$f1,-8($a3)
    addiu	$a2,$a2,16
    lwc1	$f0,-4($a2)
    addi	$a4,$a4,-1
    bnez	$a4,.L0db524e4
    swc1	$f0,-4($a3)
.L0db52518:
    move	$a4,$a2
    move	$a7,$a0
    move	$a6,$a3
    sra	$at,$a5,0x2
    beqz	$at,.L0db525c8
    move	$a0,$a6
    move	$a3,$a7
    move	$a2,$a4
.L0db52538:
    lwc1	$f3,0($a2)
    swc1	$f3,0($a0)
    lwc1	$f2,4($a2)
    swc1	$f2,4($a0)
    lwc1	$f1,8($a2)
    swc1	$f1,8($a0)
    lwc1	$f0,12($a2)
    swc1	$f0,12($a0)
    lwc1	$f3,16($a2)
    swc1	$f3,16($a0)
    lwc1	$f2,20($a2)
    swc1	$f2,20($a0)
    lwc1	$f1,24($a2)
    swc1	$f1,24($a0)
    lwc1	$f0,28($a2)
    swc1	$f0,28($a0)
    lwc1	$f3,32($a2)
    swc1	$f3,32($a0)
    lwc1	$f2,36($a2)
    swc1	$f2,36($a0)
    lwc1	$f1,40($a2)
    swc1	$f1,40($a0)
    lwc1	$f0,44($a2)
    swc1	$f0,44($a0)
    lwc1	$f3,48($a2)
    swc1	$f3,48($a0)
    lwc1	$f2,52($a2)
    swc1	$f2,52($a0)
    lwc1	$f1,56($a2)
    addiu	$a0,$a0,64
    swc1	$f1,-8($a0)
    addiu	$a2,$a2,64
    lwc1	$f0,-4($a2)
    # Line 366
    addiu	$a3,$a3,4
    bne	$s3,$a3,.L0db52538
    # Line 367
    swc1	$f0,-4($a0)
.L0db525c8:
    # Line 377
    lw	$a3,30524($s1)
.L0db525cc:
    # Line 379
    move	$a0,$zero
    move	$a5,$s4
    lui	$a2,0xffff
    addu	$a2,$a2,$s8
    blez	$s4,.L0db52474
    addiu	$a2,$a2,32496
    andi	$a4,$s4,0x3
    beqzl	$a4,.L0db52610
    move	$a4,$a2
.L0db525f0:
    addiu	$a0,$a0,1
    # Line 380
    addiu	$a3,$a3,4
    addiu	$a2,$a2,4
    lw	$at,-4($a2)
    addi	$a4,$a4,-1
    bnez	$a4,.L0db525f0
    sw	$at,-4($a3)
    move	$a4,$a2
.L0db52610:
    move	$a7,$a0
    move	$a6,$a3
    sra	$v0,$a5,0x2
    beqz	$v0,.L0db5265c
    move	$a0,$a6
    move	$a3,$a7
    move	$a2,$a4
.L0db5262c:
    lw	$v0,0($a2)
    sw	$v0,0($a0)
    lw	$at,4($a2)
    sw	$at,4($a0)
    lw	$a1,8($a2)
    addiu	$a0,$a0,16
    sw	$a1,-8($a0)
    addiu	$a2,$a2,16
    lw	$v1,-4($a2)
    # Line 379
    addiu	$a3,$a3,4
    bne	$s4,$a3,.L0db5262c
    # Line 380
    sw	$v1,-4($a0)
.L0db5265c:
    b	.L0db52478
    li	$v0,2
.L0db52664:
    # Line 352
    b	.L0db52440
    sw	$v1,30532($s1)
.L0db5266c:
    # Line 330
    blez	$s3,.L0db52380
    move	$a0,$zero
    andi	$a6,$s3,0x3
    beqz	$a6,.L0db5269c
    move	$a7,$s3
.L0db52680:
    addiu	$a0,$a0,1
    # Line 333
    addiu	$a3,$a3,16
    # Line 332
    addiu	$a2,$a2,16
    # Line 331
    lwc1	$f0,-16($a2)
    addi	$a6,$a6,-1
    bnez	$a6,.L0db52680
    swc1	$f0,-16($a3)
.L0db5269c:
    move	$t1,$a0
    move	$t0,$a3
    sra	$a1,$a7,0x2
    beqz	$a1,.L0db526ec
    move	$a6,$a2
    move	$a0,$t1
    move	$a2,$t0
    move	$a3,$a6
.L0db526bc:
    lwc1	$f0,0($a3)
    swc1	$f0,0($a2)
    lwc1	$f3,16($a3)
    swc1	$f3,16($a2)
    lwc1	$f2,32($a3)
    # Line 333
    addiu	$a2,$a2,64
    # Line 331
    swc1	$f2,-32($a2)
    # Line 332
    addiu	$a3,$a3,64
    # Line 331
    lwc1	$f1,-16($a3)
    # Line 330
    addiu	$a0,$a0,4
    bne	$s3,$a0,.L0db526bc
    # Line 331
    swc1	$f1,-16($a2)
.L0db526ec:
    b	.L0db52384
    # Line 345
    move	$a0,$zero
.L0db526f4:
    # Line 370
    blez	$s3,.L0db525c8
    move	$a0,$zero
    andi	$a4,$s3,0x3
    beqz	$a4,.L0db52724
    move	$a5,$s3
.L0db52708:
    addiu	$a0,$a0,1
    # Line 373
    addiu	$a3,$a3,16
    # Line 372
    addiu	$a2,$a2,16
    # Line 371
    lwc1	$f1,-16($a2)
    addi	$a4,$a4,-1
    bnez	$a4,.L0db52708
    swc1	$f1,-16($a3)
.L0db52724:
    move	$a4,$a2
    move	$a7,$a0
    move	$a6,$a3
    sra	$at,$a5,0x2
    beqz	$at,.L0db52774
    move	$a0,$a6
    move	$a3,$a7
    move	$a2,$a4
.L0db52744:
    lwc1	$f1,0($a2)
    swc1	$f1,0($a0)
    lwc1	$f0,16($a2)
    swc1	$f0,16($a0)
    lwc1	$f3,32($a2)
    # Line 373
    addiu	$a0,$a0,64
    # Line 371
    swc1	$f3,-32($a0)
    # Line 372
    addiu	$a2,$a2,64
    # Line 371
    lwc1	$f2,-16($a2)
    # Line 370
    addiu	$a3,$a3,4
    bne	$s3,$a3,.L0db52744
    # Line 371
    swc1	$f2,-16($a0)
.L0db52774:
    b	.L0db525cc
    # Line 377
    lw	$a3,30524($s1)
.end __glDrawBothStippledLine

# Function: __glScissorLine
# Declared: Line 388 (Source lines: 389-523)
# Address: 0x0db5277c - 0x0db52b4c (Size: 976 bytes, Frame: 128)
.globl __glScissorLine
.ent __glScissorLine
__glScissorLine:
    # Line 389
    move	$a3,$a0
    # Line 413
    lw	$a4,29924($a0)
    # Line 405
    lw	$t9,29760($a0)
    # Line 389
    addiu	$sp,$sp,-128
    sd	$s7,64($sp)
    # Line 410
    lw	$s7,29940($a0)
    sd	$s5,56($sp)
    # Line 409
    lw	$s5,29932($a0)
    sd	$s8,48($sp)
    # Line 407
    lw	$s8,29764($a0)
    sd	$s4,72($sp)
    # Line 404
    lw	$t1,29752($a0)
    # Line 412
    lw	$a2,29920($a0)
    # Line 406
    lw	$s4,29756($a0)
    # Line 402
    lw	$a6,30300($a0)
    # Line 413
    slt	$at,$a2,$t1
    bnez	$at,.L0db5290c
    # Line 402
    move	$a7,$a6
    # Line 413
    slt	$v0,$a2,$t9
    beqz	$v0,.L0db5290c
    # Line 418
    slt	$v1,$a4,$s4
    bnez	$v1,.L0db5290c
    slt	$a1,$a4,$s8
    beqz	$a1,.L0db5290c
    addiu	$a0,$a7,-1
    mult	$a0,$s5
    mflo	$a5
    addu	$a5,$a5,$a2
    slt	$at,$a5,$t1
    bnez	$at,.L0db52820
    slt	$at,$a5,$t9
    beqzl	$at,.L0db52824
    # Line 432
    lw	$a5,29944($a3)
    # Line 425
    mult	$a0,$s7
    mflo	$a5
    addu	$a5,$a5,$a4
    slt	$v0,$a5,$s4
    bnez	$v0,.L0db52820
    slt	$at,$a5,$s8
    bnez	$at,.L0db52b34
    # Line 427
    move	$v0,$zero
.L0db52820:
    # Line 432
    lw	$a5,29944($a3)
.L0db52824:
    # Line 431
    lw	$t8,29936($a3)
    # Line 433
    lw	$t2,29948($a3)
    # Line 430
    lw	$t0,29928($a3)
    sd	$t8,24($sp)
    # Line 433
    bltz	$t2,.L0db52b20
    # Line 430
    move	$t3,$t0
.L0db5283c:
    # Line 438
    srl	$v0,$t2,0x10
    multu	$a0,$v0
    mflo	$a1
    nop
    andi	$at,$t2,0xffff
    mult	$a0,$at
    srl	$v1,$a5,0x10
    addu	$v1,$v1,$a1
    andi	$a1,$a5,0xffff
    mflo	$at
    addu	$a1,$a1,$at
    srl	$a1,$a1,0x10
    addu	$v1,$v1,$a1
    srl	$v1,$v1,0xf
    mult	$s5,$v1
    sd	$v1,8($sp)
    mflo	$v0
    subu	$v1,$a7,$v1
    addiu	$v1,$v1,-1
    mult	$v1,$t3
    sd	$v1,0($sp)
    addu	$v0,$v0,$a2
    mflo	$v1
    addu	$v0,$v0,$v1
    sd	$v0,16($sp)
    slt	$v0,$v0,$t1
    bnez	$v0,.L0db52920
    ld	$v1,16($sp)
    slt	$v1,$v1,$t9
    beqz	$v1,.L0db52920
    ld	$at,8($sp)
    # Line 454
    mult	$s7,$at
    ld	$a1,0($sp)
    mflo	$a0
    nop
    nop
    mult	$a1,$t8
    addu	$a0,$a0,$a4
    mflo	$a1
    addu	$a0,$a0,$a1
    slt	$a1,$a0,$s4
    bnez	$a1,.L0db52920
    slt	$v0,$a0,$s8
    beqzl	$v0,.L0db52924
    sd	$s0,96($sp)
    # Line 456
    move	$v0,$zero
    ld	$s4,72($sp)
    ld	$s5,56($sp)
    ld	$s7,64($sp)
    ld	$s8,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db5290c:
    # Line 463
    lw	$t0,29928($a3)
    lw	$v1,29936($a3)
    lw	$t2,29948($a3)
    # Line 462
    lw	$a5,29944($a3)
    sd	$v1,24($sp)
.L0db52920:
    sd	$s0,96($sp)
.L0db52924:
    sd	$s1,88($sp)
    ld	$t8,24($sp)
    # Line 463
    move	$t3,$t0
    move	$a0,$a6
    # Line 480
    lw	$a1,30524($a3)
    # Line 479
    move	$a7,$zero
    # Line 480
    beqz	$a6,.L0db52acc
    sd	$a1,32($sp)
    sd	$a3,40($sp)
    li	$s0,-1
    lui	$s1,0x7fff
    b	.L0db5296c
    ori	$s1,$s1,0xffff
.L0db52958:
    ld	$at,32($sp)
    # Line 514
    sw	$a6,0($at)
    addiu	$at,$at,4
    beqz	$a0,.L0db52ab8
    sd	$at,32($sp)
.L0db5296c:
    # Line 488
    li	$a6,-1
    # Line 482
    slti	$v0,$a0,33
    bnez	$v0,.L0db52980
    move	$t0,$a0
    # Line 484
    li	$t0,32
.L0db52980:
    lui	$a3,0x8000
    # Line 486
    subu	$a0,$a0,$t0
    # Line 490
    addiu	$t0,$t0,-1
    bltz	$t0,.L0db52958
    addiu	$v1,$t0,1
    sd	$v1,80($sp)
    andi	$v1,$v1,0x1
    beqz	$v1,.L0db529e8
    # Line 491
    slt	$a1,$a2,$t1
    bnez	$a1,.L0db529c8
    # Line 497
    addu	$a5,$a5,$t2
    # Line 491
    slt	$at,$a2,$t9
    beqz	$at,.L0db529c8
    slt	$v0,$a4,$s4
    bnez	$v0,.L0db529c8
    slt	$v1,$a4,$s8
    bnez	$v1,.L0db529d4
    nop
.L0db529c8:
    # Line 494
    addiu	$a7,$a7,1
    # Line 493
    nor	$a1,$a3,$zero
    and	$a6,$a1,$a6
.L0db529d4:
    # Line 497
    bltz	$a5,.L0db52aec
    # Line 508
    srl	$a3,$a3,0x1
    # Line 504
    addu	$a4,$a4,$t8
    # Line 503
    addu	$a2,$a2,$t3
.L0db529e4:
    # Line 490
    addiu	$t0,$t0,-1
.L0db529e8:
    ld	$at,80($sp)
    sra	$at,$at,0x1
    beqz	$at,.L0db52958
    nop
    b	.L0db52a6c
    # Line 491
    slt	$at,$a2,$t9
.L0db52a00:
    # Line 494
    addiu	$a7,$a7,1
.L0db52a04:
    # Line 493
    nor	$v0,$a3,$zero
    and	$a6,$v0,$a6
    # Line 497
    addu	$a5,$a5,$t2
.L0db52a10:
    bltz	$a5,.L0db52a98
    # Line 508
    srl	$a3,$a3,0x1
    # Line 504
    addu	$a4,$a4,$t8
    # Line 503
    addu	$a2,$a2,$t3
.L0db52a20:
    # Line 491
    slt	$v1,$a2,$t1
    bnez	$v1,.L0db52a44
    slt	$a1,$a2,$t9
    beqz	$a1,.L0db52a44
    slt	$at,$a4,$s4
    bnez	$at,.L0db52a44
    slt	$v0,$a4,$s8
    bnezl	$v0,.L0db52a54
    # Line 497
    addu	$a5,$a5,$t2
.L0db52a44:
    # Line 494
    addiu	$a7,$a7,1
    # Line 493
    nor	$v1,$a3,$zero
    and	$a6,$v1,$a6
    # Line 497
    addu	$a5,$a5,$t2
.L0db52a54:
    bltz	$a5,.L0db52aa8
    # Line 508
    srl	$a3,$a3,0x1
    # Line 504
    addu	$a4,$a4,$t8
    # Line 503
    addu	$a2,$a2,$t3
.L0db52a64:
    # Line 490
    beq	$t0,$s0,.L0db52958
    # Line 491
    slt	$at,$a2,$t9
.L0db52a6c:
    slt	$a1,$a2,$t1
    bnez	$a1,.L0db52a00
    # Line 490
    addiu	$t0,$t0,-2
    # Line 491
    beqz	$at,.L0db52a00
    slt	$v0,$a4,$s4
    bnez	$v0,.L0db52a00
    slt	$v1,$a4,$s8
    bnezl	$v1,.L0db52a10
    # Line 497
    addu	$a5,$a5,$t2
    b	.L0db52a04
    # Line 494
    addiu	$a7,$a7,1
.L0db52a98:
    # Line 501
    addu	$a4,$s7,$a4
    # Line 500
    addu	$a2,$s5,$a2
    # Line 501
    b	.L0db52a20
    # Line 499
    and	$a5,$a5,$s1
.L0db52aa8:
    # Line 501
    addu	$a4,$s7,$a4
    # Line 500
    addu	$a2,$s5,$a2
    # Line 501
    b	.L0db52a64
    # Line 499
    and	$a5,$a5,$s1
.L0db52ab8:
    ld	$s1,88($sp)
    ld	$a6,40($sp)
    ld	$s0,96($sp)
    ld	$a3,40($sp)
    # Line 514
    lw	$a6,30300($a6)
.L0db52acc:
    beq	$a6,$a7,.L0db52afc
    # Line 519
    li	$v0,1
    ld	$s4,72($sp)
    ld	$s5,56($sp)
    ld	$s7,64($sp)
    ld	$s8,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db52aec:
    # Line 501
    addu	$a4,$s7,$a4
    # Line 500
    addu	$a2,$s5,$a2
    # Line 501
    b	.L0db529e4
    # Line 499
    and	$a5,$a5,$s1
.L0db52afc:
    # Line 523
    li	$v0,1
    ld	$s5,56($sp)
    ld	$s7,64($sp)
    ld	$s8,48($sp)
    # Line 522
    li	$s4,1
    sb	$s4,30528($a3)
    # Line 523
    ld	$s4,72($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db52b20:
    # Line 437
    negu	$t2,$t2
    # Line 438
    lui	$at,0x7fff
    ori	$at,$at,0xffff
    b	.L0db5283c
    subu	$a5,$at,$a5
.L0db52b34:
    # Line 427
    ld	$s4,72($sp)
    ld	$s5,56($sp)
    ld	$s7,64($sp)
    ld	$s8,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glScissorLine

# Function: __glScissorStippledLine
# Declared: Line 526 (Source lines: 527-664)
# Address: 0x0db52b4c - 0x0db52f60 (Size: 1044 bytes, Frame: 128)
.globl __glScissorStippledLine
.ent __glScissorStippledLine
__glScissorStippledLine:
    # Line 527
    move	$a2,$a0
    # Line 552
    lw	$a5,29924($a0)
    # Line 527
    addiu	$sp,$sp,-128
    sd	$s7,56($sp)
    # Line 549
    lw	$s7,29940($a0)
    sd	$s5,48($sp)
    # Line 548
    lw	$s5,29932($a0)
    sd	$s8,40($sp)
    # Line 546
    lw	$s8,29764($a0)
    sd	$s4,64($sp)
    # Line 545
    lw	$s4,29756($a0)
    sd	$ra,72($sp)
    # Line 543
    lw	$t3,29752($a0)
    # Line 551
    lw	$a3,29920($a0)
    # Line 544
    lw	$ra,29760($a0)
    # Line 541
    lw	$a7,30300($a0)
    # Line 552
    slt	$at,$a3,$t3
    bnez	$at,.L0db52ce4
    # Line 541
    move	$a6,$a7
    # Line 552
    slt	$v0,$a3,$ra
    beqz	$v0,.L0db52ce4
    # Line 557
    slt	$v1,$a5,$s4
    bnez	$v1,.L0db52ce4
    slt	$a1,$a5,$s8
    beqz	$a1,.L0db52ce4
    addiu	$a0,$a6,-1
    mult	$a0,$s5
    mflo	$a4
    addu	$a4,$a4,$a3
    slt	$at,$a4,$t3
    bnez	$at,.L0db52bf4
    slt	$at,$a4,$ra
    beqzl	$at,.L0db52bf8
    # Line 571
    lw	$a4,29944($a2)
    # Line 564
    mult	$a0,$s7
    mflo	$a4
    addu	$a4,$a4,$a5
    slt	$v0,$a4,$s4
    bnez	$v0,.L0db52bf4
    slt	$at,$a4,$s8
    bnez	$at,.L0db52f44
    # Line 566
    move	$v0,$zero
.L0db52bf4:
    # Line 571
    lw	$a4,29944($a2)
.L0db52bf8:
    # Line 570
    lw	$t1,29936($a2)
    # Line 572
    lw	$t2,29948($a2)
    # Line 569
    lw	$t0,29928($a2)
    # Line 570
    move	$t9,$t1
    # Line 572
    bltz	$t2,.L0db52f30
    # Line 569
    move	$t8,$t0
.L0db52c10:
    # Line 577
    srl	$v0,$t2,0x10
    multu	$a0,$v0
    mflo	$a1
    nop
    andi	$at,$t2,0xffff
    mult	$a0,$at
    srl	$v1,$a4,0x10
    addu	$v1,$v1,$a1
    andi	$a1,$a4,0xffff
    mflo	$at
    addu	$a1,$a1,$at
    srl	$a1,$a1,0x10
    addu	$v1,$v1,$a1
    srl	$v1,$v1,0xf
    mult	$s5,$v1
    sd	$v1,8($sp)
    mflo	$v0
    subu	$v1,$a6,$v1
    addiu	$v1,$v1,-1
    mult	$v1,$t8
    sd	$v1,0($sp)
    addu	$v0,$v0,$a3
    mflo	$v1
    addu	$v0,$v0,$v1
    sd	$v0,16($sp)
    slt	$v0,$v0,$t3
    bnez	$v0,.L0db52cf4
    ld	$v1,16($sp)
    slt	$v1,$v1,$ra
    beqz	$v1,.L0db52cf4
    ld	$at,8($sp)
    # Line 593
    mult	$s7,$at
    ld	$a1,0($sp)
    mflo	$a0
    nop
    nop
    mult	$a1,$t9
    addu	$a0,$a0,$a5
    mflo	$a1
    addu	$a0,$a0,$a1
    slt	$a1,$a0,$s4
    bnez	$a1,.L0db52cf4
    slt	$v0,$a0,$s8
    beqzl	$v0,.L0db52cf8
    sd	$s0,96($sp)
    # Line 595
    move	$v0,$zero
    ld	$s4,64($sp)
    ld	$s5,48($sp)
    ld	$ra,72($sp)
    ld	$s7,56($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db52ce4:
    # Line 602
    lw	$t1,29936($a2)
    lw	$t0,29928($a2)
    lw	$t2,29948($a2)
    # Line 601
    lw	$a4,29944($a2)
.L0db52cf4:
    sd	$s0,96($sp)
.L0db52cf8:
    sd	$s1,88($sp)
    # Line 602
    move	$t9,$t1
    move	$t8,$t0
    move	$a0,$a7
    # Line 618
    lw	$v1,30524($a2)
    # Line 619
    move	$a6,$zero
    beqz	$a7,.L0db52ed4
    sd	$v1,24($sp)
    sd	$a2,32($sp)
    li	$s0,-1
    lui	$s1,0x7fff
    b	.L0db52d44
    ori	$s1,$s1,0xffff
.L0db52d2c:
    ld	$v0,24($sp)
    # Line 656
    and	$at,$t1,$a7
    addiu	$v0,$v0,4
    sd	$v0,24($sp)
    beqz	$a0,.L0db52ec4
    sw	$at,-4($v0)
.L0db52d44:
    # Line 628
    li	$a7,-1
    # Line 627
    ld	$t1,24($sp)
    # Line 621
    slti	$v1,$a0,33
    bnez	$v1,.L0db52d5c
    move	$t0,$a0
    # Line 623
    li	$t0,32
.L0db52d5c:
    lui	$a2,0x8000
    # Line 625
    subu	$a0,$a0,$t0
    # Line 630
    addiu	$t0,$t0,-1
    bltz	$t0,.L0db52d2c
    # Line 627
    lw	$t1,0($t1)
    # Line 630
    addiu	$at,$t0,1
    sd	$at,80($sp)
    andi	$at,$at,0x1
    beqz	$at,.L0db52dd0
    and	$v0,$t1,$a2
    beqz	$v0,.L0db52ef8
    # Line 639
    addu	$a4,$a4,$t2
    # Line 632
    slt	$v1,$a3,$t3
    bnez	$v1,.L0db52db0
    slt	$a1,$a3,$ra
    beqz	$a1,.L0db52db0
    slt	$at,$a5,$s4
    bnez	$at,.L0db52db0
    slt	$v0,$a5,$s8
    bnez	$v0,.L0db52dbc
    nop
.L0db52db0:
    # Line 635
    addiu	$a6,$a6,1
    # Line 634
    nor	$v1,$a2,$zero
    and	$a7,$v1,$a7
.L0db52dbc:
    # Line 639
    bltz	$a4,.L0db52f00
    # Line 650
    srl	$a2,$a2,0x1
    # Line 646
    addu	$a5,$a5,$t9
    # Line 645
    addu	$a3,$a3,$t8
.L0db52dcc:
    # Line 630
    addiu	$t0,$t0,-1
.L0db52dd0:
    ld	$a1,80($sp)
    sra	$a1,$a1,0x1
    beqz	$a1,.L0db52d2c
    nop
    b	.L0db52e5c
    # Line 632
    slt	$at,$a3,$t3
.L0db52de8:
    # Line 635
    addiu	$a6,$a6,1
.L0db52dec:
    # Line 634
    nor	$at,$a2,$zero
    and	$a7,$at,$a7
.L0db52df4:
    # Line 639
    addu	$a4,$a4,$t2
.L0db52df8:
    bltz	$a4,.L0db52e94
    # Line 650
    srl	$a2,$a2,0x1
    # Line 646
    addu	$a5,$a5,$t9
    # Line 645
    addu	$a3,$a3,$t8
.L0db52e08:
    # Line 630
    and	$v0,$t1,$a2
    beqz	$v0,.L0db52eb4
    # Line 632
    slt	$v1,$a3,$t3
    bnez	$v1,.L0db52e34
    slt	$a1,$a3,$ra
    beqz	$a1,.L0db52e34
    slt	$at,$a5,$s4
    bnez	$at,.L0db52e34
    slt	$v0,$a5,$s8
    bnezl	$v0,.L0db52e44
    # Line 639
    addu	$a4,$a4,$t2
.L0db52e34:
    # Line 635
    addiu	$a6,$a6,1
    # Line 634
    nor	$v1,$a2,$zero
    and	$a7,$v1,$a7
.L0db52e40:
    # Line 639
    addu	$a4,$a4,$t2
.L0db52e44:
    bltz	$a4,.L0db52ea4
    # Line 650
    srl	$a2,$a2,0x1
    # Line 646
    addu	$a5,$a5,$t9
    # Line 645
    addu	$a3,$a3,$t8
.L0db52e54:
    # Line 630
    beq	$t0,$s0,.L0db52d2c
    # Line 632
    slt	$at,$a3,$t3
.L0db52e5c:
    # Line 630
    and	$a1,$t1,$a2
    beqz	$a1,.L0db52ebc
    addiu	$t0,$t0,-2
    # Line 632
    bnez	$at,.L0db52de8
    slt	$a1,$a5,$s8
    slt	$v0,$a3,$ra
    beqz	$v0,.L0db52de8
    slt	$v1,$a5,$s4
    bnezl	$v1,.L0db52dec
    # Line 635
    addiu	$a6,$a6,1
    # Line 632
    bnezl	$a1,.L0db52df8
    # Line 639
    addu	$a4,$a4,$t2
    b	.L0db52dec
    # Line 635
    addiu	$a6,$a6,1
.L0db52e94:
    # Line 643
    addu	$a5,$s7,$a5
    # Line 642
    addu	$a3,$s5,$a3
    # Line 643
    b	.L0db52e08
    # Line 641
    and	$a4,$a4,$s1
.L0db52ea4:
    # Line 643
    addu	$a5,$s7,$a5
    # Line 642
    addu	$a3,$s5,$a3
    # Line 643
    b	.L0db52e54
    # Line 641
    and	$a4,$a4,$s1
.L0db52eb4:
    b	.L0db52e40
    # Line 637
    addiu	$a6,$a6,1
.L0db52ebc:
    b	.L0db52df4
    addiu	$a6,$a6,1
.L0db52ec4:
    ld	$a7,32($sp)
    ld	$s1,88($sp)
    ld	$s0,96($sp)
    # Line 656
    lw	$a7,30300($a7)
.L0db52ed4:
    beq	$a7,$a6,.L0db52f10
    # Line 661
    move	$v0,$zero
    ld	$s4,64($sp)
    ld	$s5,48($sp)
    ld	$ra,72($sp)
    ld	$s7,56($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db52ef8:
    b	.L0db52dbc
    # Line 637
    addiu	$a6,$a6,1
.L0db52f00:
    # Line 643
    addu	$a5,$s7,$a5
    # Line 642
    addu	$a3,$s5,$a3
    # Line 643
    b	.L0db52dcc
    # Line 641
    and	$a4,$a4,$s1
.L0db52f10:
    # Line 664
    li	$v0,1
    ld	$s4,64($sp)
    ld	$s5,48($sp)
    ld	$ra,72($sp)
    ld	$s7,56($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db52f30:
    # Line 576
    negu	$t2,$t2
    # Line 577
    lui	$at,0x7fff
    ori	$at,$at,0xffff
    b	.L0db52c10
    subu	$a4,$at,$a4
.L0db52f44:
    # Line 566
    ld	$s4,64($sp)
    ld	$s5,48($sp)
    ld	$ra,72($sp)
    ld	$s7,56($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glScissorStippledLine

# Function: __glStippleLine
# Declared: Line 670 (Source lines: 671-726)
# Address: 0x0db52f60 - 0x0db53100 (Size: 416 bytes, Frame: 48)
.globl __glStippleLine
.ent __glStippleLine
__glStippleLine:
    # Line 671
    move	$a3,$a0
    # Line 684
    lhu	$a7,456($a0)
    # Line 681
    lh	$t0,458($a0)
    # Line 680
    lw	$a2,29896($a0)
    # Line 685
    move	$t8,$zero
    # Line 683
    li	$t1,1
    # Line 671
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 679
    lw	$at,30524($a0)
    # Line 678
    lw	$t9,30300($a0)
    # Line 682
    lw	$a6,29892($a0)
    sd	$at,16($sp)
    # Line 685
    beqz	$t9,.L0db530a8
    # Line 683
    sllv	$a4,$t1,$a6
    sd	$a3,0($sp)
    # Line 685
    li	$t2,-1
    b	.L0db52fb4
    ld	$a0,16($sp)
.L0db52fa8:
    # Line 714
    sw	$t3,0($a0)
    beqz	$t9,.L0db530a8
    addiu	$a0,$a0,4
.L0db52fb4:
    # Line 693
    li	$t3,-1
    # Line 687
    slti	$v0,$t9,33
    bnez	$v0,.L0db52fc8
    move	$a5,$t9
    # Line 689
    li	$a5,32
.L0db52fc8:
    # Line 691
    subu	$t9,$t9,$a5
    # Line 695
    addiu	$a5,$a5,-1
    lui	$a3,0x8000
    bltz	$a5,.L0db52fa8
    addiu	$v1,$a5,1
    sd	$v1,8($sp)
    andi	$v1,$v1,0x1
    beqz	$v1,.L0db53014
    and	$a1,$a4,$a7
    beqz	$a1,.L0db530d0
    # Line 702
    addiu	$a2,$a2,1
.L0db52ff4:
    slt	$at,$a2,$t0
    bnez	$at,.L0db53010
    # Line 709
    srl	$a3,$a3,0x1
    # Line 705
    move	$a2,$zero
    # Line 703
    addiu	$a6,$a6,1
    andi	$a6,$a6,0xf
    # Line 704
    sllv	$a4,$t1,$a6
.L0db53010:
    # Line 695
    addiu	$a5,$a5,-1
.L0db53014:
    ld	$at,8($sp)
    sra	$at,$at,0x1
    beqz	$at,.L0db52fa8
    nop
    b	.L0db53060
    and	$at,$a4,$a7
.L0db5302c:
    and	$v0,$a4,$a7
    beqzl	$v0,.L0db5309c
    # Line 699
    addiu	$t8,$t8,1
.L0db53038:
    # Line 702
    addiu	$a2,$a2,1
    slt	$v1,$a2,$t0
    bnez	$v1,.L0db53058
    # Line 709
    srl	$a3,$a3,0x1
    # Line 705
    move	$a2,$zero
    # Line 703
    addiu	$a6,$a6,1
    andi	$a6,$a6,0xf
    # Line 704
    sllv	$a4,$t1,$a6
.L0db53058:
    # Line 695
    beq	$a5,$t2,.L0db52fa8
    and	$at,$a4,$a7
.L0db53060:
    beqz	$at,.L0db5308c
    addiu	$a5,$a5,-2
.L0db53068:
    # Line 702
    addiu	$a2,$a2,1
    slt	$v0,$a2,$t0
    bnez	$v0,.L0db5302c
    # Line 709
    srl	$a3,$a3,0x1
    # Line 705
    move	$a2,$zero
    # Line 703
    addiu	$a6,$a6,1
    andi	$a6,$a6,0xf
    b	.L0db5302c
    # Line 704
    sllv	$a4,$t1,$a6
.L0db5308c:
    # Line 699
    addiu	$t8,$t8,1
    # Line 698
    nor	$at,$a3,$zero
    b	.L0db53068
    and	$t3,$at,$t3
.L0db5309c:
    nor	$v0,$a3,$zero
    b	.L0db53038
    and	$t3,$v0,$t3
.L0db530a8:
    ld	$v1,0($sp)
    # Line 718
    sw	$a6,29892($v1)
    beqz	$t8,.L0db530f4
    # Line 717
    sw	$a2,29896($v1)
    ld	$a1,0($sp)
    # Line 721
    lw	$a1,30300($a1)
    beq	$a1,$t8,.L0db530e0
    # Line 723
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,48
.L0db530d0:
    # Line 698
    nor	$at,$a3,$zero
    # Line 699
    addiu	$t8,$t8,1
    b	.L0db52ff4
    # Line 698
    and	$t3,$at,$t3
.L0db530e0:
    # Line 726
    li	$v0,1
    # Line 725
    ld	$v1,0($sp)
    # Line 726
    addiu	$sp,$sp,48
    jr	$ra
    # Line 725
    sb	$t1,30528($v1)
.L0db530f4:
    # Line 721
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,48
.end __glStippleLine

# Function: __glStencilTestLine
# Declared: Line 732 (Source lines: 733-802)
# Address: 0x0db53100 - 0x0db53378 (Size: 632 bytes, Frame: 208)
.globl __glStencilTestLine
.ent __glStencilTestLine
__glStencilTestLine:
    # Line 733
    move	$a4,$a0
    addiu	$sp,$sp,-80
    sd	$s7,24($sp)
    # Line 748
    lw	$s7,31160($a0)
    lw	$a3,29924($a0)
    sd	$a0,8($sp)
    lw	$a7,3376($s7)
    lw	$a0,31188($a0)
    subu	$a3,$a3,$a7
    mult	$a3,$a0
    # Line 750
    lw	$a2,29936($a4)
    # Line 748
    mflo	$v0
    nop
    nop
    # Line 750
    mult	$a2,$a0
    sd	$s5,32($sp)
    # Line 756
    lh	$t1,1576($a4)
    sd	$s8,0($sp)
    # Line 755
    lw	$s8,31236($a4)
    # Line 754
    lw	$t0,31232($a4)
    # Line 757
    lw	$a1,30524($a4)
    # Line 751
    lw	$v1,29940($a4)
    # Line 750
    mflo	$t9
    # Line 743
    lw	$at,30300($a4)
    sd	$a1,16($sp)
    # Line 751
    mult	$v1,$a0
    sd	$at,48($sp)
    # Line 753
    lw	$a7,29948($a4)
    # Line 752
    lw	$a3,29944($a4)
    # Line 748
    lw	$t2,31176($a4)
    lw	$a2,29920($a4)
    lw	$s7,3372($s7)
    addu	$t2,$t2,$v0
    addu	$a2,$a2,$t2
    # Line 750
    lw	$t2,29928($a4)
    # Line 748
    subu	$a2,$a2,$s7
    # Line 751
    lw	$s7,29932($a4)
    # Line 750
    addu	$t2,$t2,$t9
    # Line 751
    mflo	$t9
    addu	$s7,$s7,$t9
    # Line 758
    beqz	$at,.L0db532f4
    move	$t9,$zero
    sd	$a4,8($sp)
    li	$t3,-1
    ld	$a0,48($sp)
    lui	$s5,0x7fff
    b	.L0db531d4
    ori	$s5,$s5,0xffff
.L0db531c0:
    ld	$at,16($sp)
    # Line 790
    sw	$t8,0($at)
    addiu	$at,$at,4
    beqz	$a0,.L0db532f4
    sd	$at,16($sp)
.L0db531d4:
    # Line 766
    li	$t8,-1
    # Line 760
    slti	$v0,$a0,33
    bnez	$v0,.L0db531e8
    move	$a6,$a0
    # Line 762
    li	$a6,32
.L0db531e8:
    lui	$a4,0x8000
    # Line 764
    subu	$a0,$a0,$a6
    # Line 768
    addiu	$a6,$a6,-1
    bltz	$a6,.L0db531c0
    addiu	$a5,$a6,1
    andi	$v1,$a5,0x1
    beqz	$v1,.L0db53240
    sra	$at,$a5,0x1
    sd	$a5,40($sp)
    # Line 769
    lbu	$a5,0($a2)
    and	$a1,$a5,$t1
    addu	$a1,$a1,$t0
    lbu	$a1,0($a1)
    # Line 777
    addu	$a3,$a3,$a7
    # Line 769
    beqz	$a1,.L0db53328
    # Line 773
    addu	$v1,$a5,$s8
.L0db53228:
    # Line 785
    srl	$a4,$a4,0x1
    # Line 777
    bltz	$a3,.L0db5331c
    ld	$a5,40($sp)
    # Line 782
    addu	$a2,$t2,$a2
.L0db53238:
    # Line 768
    addiu	$a6,$a6,-1
    sra	$at,$a5,0x1
.L0db53240:
    beqz	$at,.L0db531c0
    nop
    b	.L0db53260
    # Line 769
    lbu	$a5,0($a2)
.L0db53250:
    # Line 782
    addu	$a2,$t2,$a2
.L0db53254:
    # Line 768
    beq	$a6,$t3,.L0db531c0
    nop
    # Line 769
    lbu	$a5,0($a2)
.L0db53260:
    and	$v0,$a5,$t1
    addu	$v0,$v0,$t0
    lbu	$v0,0($v0)
    # Line 772
    nor	$at,$a4,$zero
    # Line 769
    beqz	$v0,.L0db532c4
    # Line 777
    addu	$a3,$a3,$a7
.L0db53278:
    bltz	$a3,.L0db532b8
    # Line 785
    srl	$a4,$a4,0x1
    # Line 782
    addu	$a2,$t2,$a2
.L0db53284:
    # Line 769
    lbu	$a5,0($a2)
    and	$v1,$a5,$t1
    addu	$v1,$v1,$t0
    lbu	$v1,0($v1)
    # Line 768
    addiu	$a6,$a6,-2
    # Line 777
    addu	$a3,$a3,$a7
    # Line 769
    beqz	$v1,.L0db532dc
    # Line 773
    addu	$at,$a5,$s8
.L0db532a4:
    # Line 777
    bgez	$a3,.L0db53250
    # Line 785
    srl	$a4,$a4,0x1
    # Line 780
    addu	$a2,$s7,$a2
    b	.L0db53254
    # Line 779
    and	$a3,$a3,$s5
.L0db532b8:
    # Line 780
    addu	$a2,$s7,$a2
    b	.L0db53284
    # Line 779
    and	$a3,$a3,$s5
.L0db532c4:
    # Line 773
    addu	$a1,$a5,$s8
    # Line 774
    addiu	$t9,$t9,1
    # Line 773
    lbu	$a1,0($a1)
    # Line 772
    and	$t8,$at,$t8
    b	.L0db53278
    # Line 773
    sb	$a1,0($a2)
.L0db532dc:
    # Line 774
    addiu	$t9,$t9,1
    # Line 772
    nor	$v0,$a4,$zero
    # Line 773
    lbu	$at,0($at)
    # Line 772
    and	$t8,$v0,$t8
    b	.L0db532a4
    # Line 773
    sb	$at,0($a2)
.L0db532f4:
    # Line 790
    beqz	$t9,.L0db53360
    ld	$v0,8($sp)
    # Line 794
    lw	$v0,30300($v0)
    beq	$v0,$t9,.L0db53340
    ld	$s5,32($sp)
    # Line 798
    li	$v0,1
    ld	$s7,24($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db5331c:
    # Line 780
    addu	$a2,$s7,$a2
    b	.L0db53238
    # Line 779
    and	$a3,$a3,$s5
.L0db53328:
    # Line 774
    addiu	$t9,$t9,1
    # Line 772
    nor	$a1,$a4,$zero
    # Line 773
    lbu	$v1,0($v1)
    # Line 772
    and	$t8,$a1,$t8
    b	.L0db53228
    # Line 773
    sb	$v1,0($a2)
.L0db53340:
    # Line 802
    li	$v0,1
    ld	$s7,24($sp)
    ld	$s8,0($sp)
    # Line 801
    ld	$a1,8($sp)
    # Line 802
    addiu	$sp,$sp,80
    # Line 801
    li	$a0,1
    # Line 802
    jr	$ra
    # Line 801
    sb	$a0,30528($a1)
.L0db53360:
    # Line 794
    move	$v0,$zero
    ld	$s5,32($sp)
    ld	$s7,24($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glStencilTestLine

# Function: __glStencilTestStippledLine
# Declared: Line 808 (Source lines: 809-876)
# Address: 0x0db53378 - 0x0db5360c (Size: 660 bytes, Frame: 208)
.globl __glStencilTestStippledLine
.ent __glStencilTestStippledLine
__glStencilTestStippledLine:
    # Line 809
    addiu	$sp,$sp,-80
    sd	$s7,24($sp)
    # Line 825
    lw	$s7,31160($a0)
    lw	$a6,29924($a0)
    lw	$a7,3376($s7)
    lw	$a1,31188($a0)
    subu	$a6,$a6,$a7
    mult	$a6,$a1
    # Line 827
    lw	$a4,29936($a0)
    # Line 825
    mflo	$v0
    nop
    nop
    # Line 827
    mult	$a4,$a1
    # Line 809
    move	$a5,$a0
    # Line 820
    lw	$v1,30524($a5)
    sd	$s1,40($sp)
    sd	$v1,8($sp)
    # Line 830
    lw	$a7,29948($a5)
    # Line 833
    lh	$t1,1576($a0)
    # Line 832
    lw	$a2,31236($a0)
    # Line 831
    lw	$t3,31232($a0)
    # Line 828
    lw	$a0,29940($a0)
    # Line 827
    mflo	$t8
    # Line 825
    lw	$t2,31176($a5)
    sd	$a2,56($sp)
    # Line 828
    mult	$a0,$a1
    # Line 819
    lw	$a6,30300($a5)
    # Line 825
    lw	$a2,29920($a5)
    lw	$s7,3372($s7)
    # Line 819
    move	$at,$a6
    sd	$a6,0($sp)
    # Line 829
    lw	$a4,29944($a5)
    # Line 825
    addu	$t2,$t2,$v0
    addu	$a2,$a2,$t2
    # Line 827
    lw	$t2,29928($a5)
    # Line 825
    subu	$a2,$a2,$s7
    # Line 828
    lw	$s7,29932($a5)
    # Line 827
    addu	$t2,$t2,$t8
    # Line 828
    mflo	$t8
    addu	$s7,$s7,$t8
    # Line 834
    beqz	$a6,.L0db535bc
    move	$t8,$zero
    sd	$s5,32($sp)
    sd	$a5,16($sp)
    li	$t9,-1
    ld	$a0,56($sp)
    lui	$s1,0x7fff
    b	.L0db53458
    ori	$s1,$s1,0xffff
.L0db5343c:
    ld	$v1,8($sp)
    # Line 869
    and	$v0,$a6,$s5
    ld	$at,0($sp)
    addiu	$v1,$v1,4
    sd	$v1,8($sp)
    beqz	$at,.L0db535ac
    sw	$v0,-4($v1)
.L0db53458:
    # Line 842
    ld	$a6,8($sp)
    ld	$a1,0($sp)
    # Line 840
    ld	$at,0($sp)
    # Line 843
    li	$s5,-1
    # Line 836
    move	$a5,$a1
    slti	$a1,$a1,33
    bnez	$a1,.L0db5347c
    lui	$a3,0x8000
    # Line 838
    li	$a5,32
.L0db5347c:
    # Line 842
    lw	$a6,0($a6)
    # Line 840
    subu	$at,$at,$a5
    # Line 845
    addiu	$a5,$a5,-1
    bltz	$a5,.L0db5343c
    sd	$at,0($sp)
    addiu	$t0,$a5,1
    andi	$v0,$t0,0x1
    beqz	$v0,.L0db534dc
    and	$v1,$a6,$a3
    beqz	$v1,.L0db535d0
    # Line 856
    addu	$a4,$a4,$a7
    sd	$t0,48($sp)
    # Line 847
    lbu	$t0,0($a2)
    and	$a1,$t0,$t1
    addu	$a1,$a1,$t3
    lbu	$a1,0($a1)
    # Line 850
    nor	$v0,$a3,$zero
    # Line 847
    beqz	$a1,.L0db535f8
    # Line 851
    addu	$at,$t0,$a0
.L0db534c8:
    # Line 864
    srl	$a3,$a3,0x1
    # Line 856
    bltz	$a4,.L0db535dc
    ld	$t0,48($sp)
    # Line 861
    addu	$a2,$t2,$a2
.L0db534d8:
    # Line 845
    addiu	$a5,$a5,-1
.L0db534dc:
    sra	$at,$t0,0x1
    beqz	$at,.L0db5343c
    nop
    b	.L0db53508
    addiu	$a5,$a5,-2
.L0db534f0:
    # Line 856
    addu	$a4,$a4,$a7
    bltz	$a4,.L0db53580
    # Line 864
    srl	$a3,$a3,0x1
    # Line 861
    addu	$a2,$t2,$a2
.L0db53500:
    # Line 845
    beq	$a5,$t9,.L0db5343c
    addiu	$a5,$a5,-2
.L0db53508:
    and	$v0,$a6,$a3
    beqz	$v0,.L0db5358c
    # Line 856
    addu	$a4,$a4,$a7
    # Line 847
    lbu	$t0,0($a2)
    and	$v1,$t0,$t1
    addu	$v1,$v1,$t3
    lbu	$v1,0($v1)
    beqz	$v1,.L0db53594
    # Line 850
    nor	$a1,$a3,$zero
.L0db5352c:
    # Line 856
    bltz	$a4,.L0db53574
    # Line 864
    srl	$a3,$a3,0x1
    # Line 861
    addu	$a2,$t2,$a2
.L0db53538:
    # Line 845
    and	$a1,$a6,$a3
    beqzl	$a1,.L0db534f0
    # Line 854
    addiu	$t8,$t8,1
    # Line 847
    lbu	$t0,0($a2)
    and	$at,$t0,$t1
    addu	$at,$at,$t3
    lbu	$at,0($at)
    # Line 850
    nor	$v1,$a3,$zero
    # Line 847
    bnez	$at,.L0db534f0
    # Line 851
    addu	$v0,$t0,$a0
    # Line 852
    addiu	$t8,$t8,1
    # Line 851
    lbu	$v0,0($v0)
    # Line 850
    and	$s5,$v1,$s5
    # Line 852
    b	.L0db534f0
    # Line 851
    sb	$v0,0($a2)
.L0db53574:
    # Line 859
    addu	$a2,$s7,$a2
    b	.L0db53538
    # Line 858
    and	$a4,$a4,$s1
.L0db53580:
    # Line 859
    addu	$a2,$s7,$a2
    b	.L0db53500
    # Line 858
    and	$a4,$a4,$s1
.L0db5358c:
    b	.L0db5352c
    # Line 854
    addiu	$t8,$t8,1
.L0db53594:
    # Line 852
    addiu	$t8,$t8,1
    # Line 851
    addu	$v1,$t0,$a0
    lbu	$v1,0($v1)
    # Line 850
    and	$s5,$a1,$s5
    # Line 852
    b	.L0db5352c
    # Line 851
    sb	$v1,0($a2)
.L0db535ac:
    ld	$a6,16($sp)
    ld	$s5,32($sp)
    ld	$s1,40($sp)
    # Line 869
    lw	$a6,30300($a6)
.L0db535bc:
    beq	$a6,$t8,.L0db535e8
    # Line 874
    move	$v0,$zero
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db535d0:
    sd	$t0,48($sp)
    b	.L0db534c8
    # Line 854
    addiu	$t8,$t8,1
.L0db535dc:
    # Line 859
    addu	$a2,$s7,$a2
    b	.L0db534d8
    # Line 858
    and	$a4,$a4,$s1
.L0db535e8:
    # Line 876
    li	$v0,1
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db535f8:
    # Line 852
    addiu	$t8,$t8,1
    # Line 851
    lbu	$at,0($at)
    # Line 850
    and	$s5,$v0,$s5
    # Line 852
    b	.L0db534c8
    # Line 851
    sb	$at,0($a2)
.end __glStencilTestStippledLine

# Function: __glDepthTestLine
# Declared: Line 881 (Source lines: 882-960)
# Address: 0x0db5360c - 0x0db538b8 (Size: 684 bytes, Frame: 192)
.globl __glDepthTestLine
.ent __glDepthTestLine
__glDepthTestLine:
    # Line 901
    lw	$a1,31280($a0)
    # Line 882
    move	$at,$s1
    # Line 901
    lw	$v0,29924($a0)
    lw	$v1,3376($a1)
    lw	$s1,31308($a0)
    subu	$v0,$v0,$v1
    mult	$v0,$s1
    # Line 882
    move	$a2,$s6
    # Line 910
    lw	$s6,12096($a0)
    # Line 882
    addiu	$sp,$sp,-192
    sd	$zero,112($sp)
    sd	$at,0($sp)
    move	$at,$s2
    # Line 905
    lw	$s2,29944($a0)
    # Line 903
    lw	$a3,29936($a0)
    # Line 901
    mflo	$v0
    sd	$at,40($sp)
    # Line 895
    lw	$at,30300($a0)
    # Line 903
    mult	$a3,$s1
    sd	$a0,48($sp)
    sd	$s8,128($sp)
    sd	$at,96($sp)
    sd	$a2,32($sp)
    # Line 909
    lw	$a2,31360($a0)
    # Line 882
    move	$v1,$s4
    # Line 906
    lw	$s4,29948($a0)
    sd	$gp,8($sp)
    sd	$a2,64($sp)
    # Line 882
    lui	$a2,0xb
    sd	$v1,24($sp)
    # Line 904
    lw	$a3,29940($a0)
    # Line 903
    mflo	$v1
    # Line 882
    addiu	$a2,$a2,-20340
    sd	$s7,16($sp)
    # Line 904
    mult	$a3,$s1
    # Line 911
    lw	$s7,30256($a0)
    # Line 882
    addu	$gp,$t9,$a2
    # Line 904
    lw	$a2,29932($a0)
    sd	$s7,88($sp)
    # Line 912
    lw	$s7,30376($a0)
    # Line 913
    lw	$s1,30380($a0)
    # Line 901
    sll	$t9,$v0,0x2
    lw	$v0,29920($a0)
    sd	$s1,72($sp)
    # Line 908
    lw	$s1,31368($a0)
    # Line 901
    sll	$v0,$v0,0x2
    # Line 914
    lw	$a3,30524($a0)
    # Line 912
    srav	$s7,$s7,$s1
    sd	$s1,56($sp)
    # Line 901
    lw	$s1,31296($a0)
    sd	$a3,80($sp)
    # Line 903
    lw	$a3,29928($a0)
    # Line 901
    addu	$s1,$s1,$t9
    lw	$t9,3372($a1)
    # Line 903
    addu	$a3,$a3,$v1
    # Line 901
    addu	$s1,$s1,$v0
    sll	$t9,$t9,0x2
    subu	$s1,$s1,$t9
    # Line 904
    mflo	$t9
    # Line 915
    beqz	$at,.L0db53828
    # Line 904
    addu	$a2,$a2,$t9
    sd	$s3,160($sp)
    sd	$ra,152($sp)
    sd	$s0,144($sp)
    sd	$s5,136($sp)
    # Line 915
    li	$a0,-1
    sll	$s8,$a3,0x2
    sll	$a1,$a2,0x2
    b	.L0db53750
    sd	$a1,104($sp)
.L0db53724:
    # Line 946
    ld	$v0,80($sp)
    ld	$v1,120($sp)
    # Line 947
    ld	$a1,88($sp)
    ld	$at,72($sp)
    # Line 946
    sw	$v1,0($v0)
    # Line 947
    addu	$a1,$at,$a1
    ld	$at,96($sp)
    # Line 946
    addiu	$v0,$v0,4
    sd	$a1,88($sp)
    # Line 947
    beqz	$at,.L0db53814
    sd	$v0,80($sp)
.L0db53750:
    # Line 923
    ld	$at,56($sp)
    ld	$v0,96($sp)
    ld	$s0,88($sp)
    # Line 924
    li	$v1,-1
    # Line 917
    move	$s5,$v0
    slti	$v0,$v0,33
    bnez	$v0,.L0db53774
    lui	$s3,0x8000
    # Line 919
    li	$s5,32
.L0db53774:
    # Line 923
    srlv	$s0,$s0,$at
    ld	$at,64($sp)
    # Line 921
    ld	$v0,96($sp)
    sd	$v1,120($sp)
    # Line 923
    addu	$s0,$s0,$at
    # Line 921
    subu	$v0,$v0,$s5
    # Line 926
    addiu	$s5,$s5,-1
    bltz	$s5,.L0db53724
    sd	$v0,96($sp)
    b	.L0db537b4
    # Line 927
    lw	$a1,0($s1)
.L0db537a0:
    # Line 938
    addu	$s1,$s8,$s1
.L0db537a4:
    # Line 941
    srl	$s3,$s3,0x1
    # Line 926
    beq	$s5,$a0,.L0db53724
    nop
    # Line 927
    lw	$a1,0($s1)
.L0db537b4:
    move	$a2,$s1
    move	$a0,$s0
    # Line 931
    addu	$s0,$s7,$s0
    # Line 927
    jalr	$s6
    move	$t9,$s6
    # Line 933
    addu	$s2,$s2,$s4
    # Line 927
    beqz	$v0,.L0db537f4
    li	$a0,-1
.L0db537d4:
    # Line 926
    addiu	$s5,$s5,-1
    # Line 933
    bgez	$s2,.L0db537a0
    ld	$at,104($sp)
    # Line 936
    addu	$s1,$at,$s1
    lui	$a1,0x7fff
    ori	$a1,$a1,0xffff
    b	.L0db537a4
    # Line 935
    and	$s2,$s2,$a1
.L0db537f4:
    ld	$v1,112($sp)
    # Line 929
    addiu	$v1,$v1,1
    # Line 928
    ld	$at,120($sp)
    sd	$v1,112($sp)
    nor	$v0,$s3,$zero
    and	$at,$v0,$at
    b	.L0db537d4
    sd	$at,120($sp)
.L0db53814:
    ld	$s8,128($sp)
    ld	$s5,136($sp)
    ld	$s0,144($sp)
    ld	$ra,152($sp)
    ld	$s3,160($sp)
.L0db53828:
    ld	$a1,112($sp)
    # Line 947
    beqz	$a1,.L0db53894
    ld	$at,48($sp)
    # Line 952
    ld	$v0,112($sp)
    lw	$at,30300($at)
    beq	$at,$v0,.L0db53864
    # Line 956
    li	$v0,1
    ld	$gp,8($sp)
    ld	$s1,0($sp)
    ld	$s2,40($sp)
    ld	$s4,24($sp)
    ld	$s6,32($sp)
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db53864:
    # Line 960
    li	$v0,1
    ld	$gp,8($sp)
    ld	$s1,0($sp)
    ld	$s2,40($sp)
    ld	$s4,24($sp)
    ld	$s6,32($sp)
    ld	$s7,16($sp)
    # Line 959
    ld	$a0,48($sp)
    # Line 960
    addiu	$sp,$sp,192
    # Line 959
    li	$v1,1
    # Line 960
    jr	$ra
    # Line 959
    sb	$v1,30528($a0)
.L0db53894:
    # Line 952
    move	$v0,$zero
    ld	$gp,8($sp)
    ld	$s1,0($sp)
    ld	$s2,40($sp)
    ld	$s4,24($sp)
    ld	$s6,32($sp)
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glDepthTestLine

# Function: __glDepthTestStippledLine
# Declared: Line 965 (Source lines: 966-1040)
# Address: 0x0db538b8 - 0x0db53b38 (Size: 640 bytes, Frame: 192)
.globl __glDepthTestStippledLine
.ent __glDepthTestStippledLine
__glDepthTestStippledLine:
    # Line 966
    addiu	$sp,$sp,-192
    sd	$s8,16($sp)
    # Line 985
    lw	$s8,31280($a0)
    sd	$s7,32($sp)
    lw	$s7,29924($a0)
    lw	$at,3376($s8)
    lw	$a2,31308($a0)
    subu	$s7,$s7,$at
    mult	$s7,$a2
    sd	$a0,8($sp)
    sd	$s6,40($sp)
    sd	$s2,56($sp)
    # Line 987
    lw	$s2,29936($a0)
    # Line 985
    mflo	$v1
    # Line 997
    lw	$s6,30380($a0)
    sd	$s3,48($sp)
    # Line 987
    mult	$s2,$a2
    # Line 995
    lw	$s3,30256($a0)
    sd	$s6,72($sp)
    # Line 990
    lw	$s6,29948($a0)
    sd	$s3,88($sp)
    # Line 994
    lw	$a4,12096($a0)
    sd	$gp,24($sp)
    # Line 966
    lui	$v0,0xb
    # Line 980
    lw	$a1,30524($a0)
    # Line 966
    addiu	$v0,$v0,-21024
    addu	$gp,$t9,$v0
    sd	$a1,96($sp)
    # Line 988
    lw	$a1,29940($a0)
    # Line 987
    mflo	$t9
    sd	$a4,0($sp)
    # Line 979
    lw	$a4,30300($a0)
    # Line 988
    mult	$a1,$a2
    # Line 989
    lw	$s3,29944($a0)
    # Line 993
    lw	$a3,31360($a0)
    sd	$a4,104($sp)
    # Line 985
    lw	$v0,29920($a0)
    sd	$a3,64($sp)
    # Line 987
    lw	$a3,29928($a0)
    # Line 985
    sll	$v0,$v0,0x2
    lw	$s8,3372($s8)
    # Line 992
    lw	$at,31368($a0)
    # Line 996
    lw	$s7,30376($a0)
    # Line 985
    sll	$s8,$s8,0x2
    sd	$at,80($sp)
    # Line 996
    srav	$s7,$s7,$at
    # Line 985
    lw	$s2,31296($a0)
    # Line 979
    move	$at,$a4
    # Line 985
    sll	$v1,$v1,0x2
    addu	$s2,$s2,$v1
    addu	$s2,$s2,$v0
    subu	$s2,$s2,$s8
    # Line 998
    move	$s8,$zero
    # Line 987
    addu	$a3,$a3,$t9
    # Line 988
    lw	$a2,29932($a0)
    mflo	$t9
    # Line 998
    beqz	$a4,.L0db53aec
    # Line 988
    addu	$a2,$a2,$t9
    sd	$s4,168($sp)
    sd	$ra,160($sp)
    sd	$s0,152($sp)
    sd	$s1,144($sp)
    sd	$s5,136($sp)
    # Line 998
    li	$a0,-1
    sll	$v0,$a2,0x2
    sll	$v1,$a3,0x2
    sd	$v1,128($sp)
    b	.L0db539fc
    sd	$v0,112($sp)
.L0db539cc:
    # Line 1033
    ld	$v0,88($sp)
    ld	$v1,72($sp)
    # Line 1032
    ld	$at,120($sp)
    # Line 1033
    addu	$v0,$v1,$v0
    sd	$v0,88($sp)
    # Line 1032
    ld	$v0,96($sp)
    # Line 1033
    ld	$a1,104($sp)
    # Line 1032
    and	$at,$s5,$at
    addiu	$v0,$v0,4
    sd	$v0,96($sp)
    # Line 1033
    beqz	$a1,.L0db53ad0
    # Line 1032
    sw	$at,-4($v0)
.L0db539fc:
    lui	$s0,0x8000
    # Line 1004
    ld	$v0,104($sp)
    ld	$a1,104($sp)
    # Line 1006
    ld	$s1,88($sp)
    # Line 1008
    li	$at,-1
    # Line 1000
    move	$s4,$a1
    slti	$a1,$a1,33
    bnez	$a1,.L0db53a24
    # Line 1007
    ld	$s5,96($sp)
    # Line 1002
    li	$s4,32
.L0db53a24:
    # Line 1007
    lw	$s5,0($s5)
    sd	$at,120($sp)
    # Line 1006
    ld	$at,80($sp)
    # Line 1004
    subu	$v0,$v0,$s4
    # Line 1010
    addiu	$s4,$s4,-1
    # Line 1006
    srlv	$s1,$s1,$at
    ld	$at,64($sp)
    sd	$v0,104($sp)
    # Line 1010
    bltz	$s4,.L0db539cc
    # Line 1006
    addu	$s1,$s1,$at
    b	.L0db53a7c
    # Line 1019
    addu	$s3,$s3,$s6
.L0db53a54:
    # Line 1016
    addiu	$s8,$s8,1
.L0db53a58:
    ld	$v1,112($sp)
    # Line 1019
    bltz	$s3,.L0db53abc
    # Line 1017
    addu	$s1,$s7,$s1
    ld	$v0,128($sp)
    # Line 1024
    addu	$s2,$v0,$s2
.L0db53a6c:
    # Line 1027
    srl	$s0,$s0,0x1
    # Line 1010
    beq	$s4,$a0,.L0db539cc
    nop
    # Line 1019
    addu	$s3,$s3,$s6
.L0db53a7c:
    # Line 1010
    and	$v1,$s5,$s0
    beqz	$v1,.L0db53a54
    addiu	$s4,$s4,-1
    # Line 1012
    ld	$t9,0($sp)
    move	$a0,$s1
    lw	$a1,0($s2)
    jalr	$t9
    move	$a2,$s2
    bnez	$v0,.L0db53a58
    li	$a0,-1
    # Line 1013
    nor	$at,$s0,$zero
    ld	$a1,120($sp)
    # Line 1014
    addiu	$s8,$s8,1
    # Line 1013
    and	$a1,$at,$a1
    # Line 1014
    b	.L0db53a58
    sd	$a1,120($sp)
.L0db53abc:
    # Line 1022
    addu	$s2,$v1,$s2
    lui	$v0,0x7fff
    ori	$v0,$v0,0xffff
    b	.L0db53a6c
    # Line 1021
    and	$s3,$s3,$v0
.L0db53ad0:
    ld	$s5,136($sp)
    ld	$s1,144($sp)
    ld	$s0,152($sp)
    ld	$a4,8($sp)
    ld	$ra,160($sp)
    ld	$s4,168($sp)
    # Line 1033
    lw	$a4,30300($a4)
.L0db53aec:
    beq	$a4,$s8,.L0db53b14
    # Line 1038
    move	$v0,$zero
    ld	$gp,24($sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    ld	$s6,40($sp)
    ld	$s7,32($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db53b14:
    # Line 1040
    li	$v0,1
    ld	$gp,24($sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    ld	$s6,40($sp)
    ld	$s7,32($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glDepthTestStippledLine

# Function: __glDepthTestStencilLine
# Declared: Line 1043 (Source lines: 1044-1138)
# Address: 0x0db53b38 - 0x0db53e94 (Size: 860 bytes, Frame: 224)
.globl __glDepthTestStencilLine
.ent __glDepthTestStencilLine
__glDepthTestStencilLine:
    # Line 1065
    lw	$a2,31280($a0)
    # Line 1044
    move	$at,$a0
    # Line 1065
    lw	$a1,29924($a0)
    lw	$a2,3376($a2)
    lw	$a0,31308($a0)
    subu	$a2,$a1,$a2
    mult	$a2,$a0
    # Line 1064
    lw	$v0,29936($at)
    # Line 1065
    mflo	$a4
    nop
    nop
    # Line 1067
    mult	$a0,$v0
    # Line 1062
    lw	$v1,29940($at)
    # Line 1067
    mflo	$a3
    nop
    nop
    # Line 1068
    mult	$a0,$v1
    # Line 1072
    lw	$a0,31160($at)
    # Line 1044
    addiu	$sp,$sp,-224
    sd	$s0,0($sp)
    # Line 1072
    lw	$s0,3376($a0)
    subu	$a1,$a1,$s0
    lw	$s0,31188($at)
    # Line 1068
    mflo	$a2
    nop
    nop
    # Line 1072
    mult	$a1,$s0
    mflo	$a1
    sd	$zero,136($sp)
    sd	$s3,40($sp)
    # Line 1074
    mult	$s0,$v0
    # Line 1076
    lw	$s3,29944($at)
    sd	$s8,8($sp)
    # Line 1077
    lw	$s8,29948($at)
    sd	$at,56($sp)
    sd	$s7,16($sp)
    # Line 1080
    lw	$s7,31244($at)
    sd	$s2,48($sp)
    # Line 1081
    lw	$s2,31368($at)
    sd	$s6,32($sp)
    # Line 1085
    lw	$s6,30376($at)
    sd	$gp,24($sp)
    sd	$s7,160($sp)
    srav	$s6,$s6,$s2
    sd	$s2,64($sp)
    # Line 1082
    lw	$s2,31360($at)
    # Line 1086
    lw	$s7,30380($at)
    # Line 1079
    lw	$v0,31240($at)
    sd	$s2,72($sp)
    # Line 1087
    lw	$s2,30524($at)
    sd	$v0,128($sp)
    # Line 1084
    lw	$v0,30256($at)
    sd	$s7,80($sp)
    sd	$s2,88($sp)
    sd	$v0,96($sp)
    # Line 1074
    mflo	$v0
    # Line 1065
    lw	$s2,31296($at)
    sll	$a4,$a4,0x2
    # Line 1075
    mult	$s0,$v1
    # Line 1065
    lw	$s0,31280($at)
    lw	$v1,29920($at)
    addu	$s2,$s2,$a4
    lw	$s0,3372($s0)
    sll	$a4,$v1,0x2
    addu	$s2,$s2,$a4
    sll	$s0,$s0,0x2
    subu	$s2,$s2,$s0
    # Line 1072
    lw	$s0,31176($at)
    # Line 1083
    lw	$s7,12096($at)
    # Line 1059
    lw	$a4,30300($at)
    # Line 1072
    addu	$s0,$s0,$a1
    addu	$s0,$s0,$v1
    # Line 1063
    lw	$v1,29928($at)
    # Line 1061
    lw	$at,29932($at)
    sd	$a4,104($sp)
    # Line 1067
    addu	$a3,$a3,$v1
    # Line 1068
    addu	$a2,$a2,$at
    # Line 1044
    lui	$a1,0xb
    addiu	$a1,$a1,-21664
    addu	$gp,$t9,$a1
    # Line 1072
    lw	$t9,3372($a0)
    # Line 1074
    addu	$v0,$v0,$v1
    sd	$v0,168($sp)
    # Line 1072
    subu	$s0,$s0,$t9
    # Line 1075
    mflo	$t9
    addu	$t9,$t9,$at
    # Line 1088
    beqz	$a4,.L0db53df8
    sd	$t9,120($sp)
    sd	$s4,200($sp)
    sd	$ra,192($sp)
    sd	$s1,184($sp)
    sd	$s5,176($sp)
    li	$a0,-1
    sll	$at,$a2,0x2
    sll	$v0,$a3,0x2
    sd	$v0,152($sp)
    b	.L0db53cec
    sd	$at,112($sp)
.L0db53cc0:
    # Line 1124
    ld	$a1,88($sp)
    ld	$at,144($sp)
    # Line 1125
    ld	$v0,96($sp)
    ld	$v1,80($sp)
    # Line 1124
    sw	$at,0($a1)
    # Line 1125
    addu	$v0,$v1,$v0
    ld	$v1,104($sp)
    # Line 1124
    addiu	$a1,$a1,4
    sd	$v0,96($sp)
    # Line 1125
    beqz	$v1,.L0db53de8
    sd	$a1,88($sp)
.L0db53cec:
    # Line 1097
    li	$v1,-1
    # Line 1094
    ld	$v0,104($sp)
    # Line 1096
    ld	$at,64($sp)
    ld	$s1,96($sp)
    ld	$a1,104($sp)
    lui	$s4,0x8000
    srlv	$s1,$s1,$at
    # Line 1090
    move	$s5,$a1
    slti	$a1,$a1,33
    bnez	$a1,.L0db53d1c
    # Line 1096
    ld	$at,72($sp)
    # Line 1092
    li	$s5,32
.L0db53d1c:
    # Line 1096
    addu	$s1,$s1,$at
    sd	$v1,144($sp)
    # Line 1094
    subu	$v0,$v0,$s5
    # Line 1099
    addiu	$s5,$s5,-1
    bltz	$s5,.L0db53cc0
    sd	$v0,104($sp)
    b	.L0db53d58
    # Line 1100
    lw	$a1,0($s2)
.L0db53d3c:
    ld	$at,168($sp)
    # Line 1115
    addu	$s2,$a1,$s2
    # Line 1116
    addu	$s0,$at,$s0
.L0db53d48:
    # Line 1119
    srl	$s4,$s4,0x1
    # Line 1099
    beq	$s5,$a0,.L0db53cc0
    nop
    # Line 1100
    lw	$a1,0($s2)
.L0db53d58:
    move	$a2,$s2
    move	$a0,$s1
    # Line 1107
    addu	$s1,$s6,$s1
    # Line 1100
    jalr	$s7
    move	$t9,$s7
    ld	$at,136($sp)
    # Line 1109
    addu	$s3,$s3,$s8
    li	$a0,-1
    # Line 1100
    beqz	$v0,.L0db53dbc
    lbu	$a2,0($s0)
    ld	$v0,160($sp)
    # Line 1101
    addu	$v0,$a2,$v0
    lbu	$v0,0($v0)
    sb	$v0,0($s0)
.L0db53d90:
    # Line 1099
    addiu	$s5,$s5,-1
    lui	$v1,0x7fff
    ld	$at,120($sp)
    # Line 1109
    bgez	$s3,.L0db53d3c
    # Line 1115
    ld	$a1,152($sp)
    # Line 1113
    addu	$s0,$at,$s0
    ori	$v1,$v1,0xffff
    # Line 1112
    ld	$a1,112($sp)
    # Line 1111
    and	$s3,$s3,$v1
    # Line 1113
    b	.L0db53d48
    # Line 1112
    addu	$s2,$a1,$s2
.L0db53dbc:
    # Line 1105
    addiu	$at,$at,1
    sd	$at,136($sp)
    # Line 1104
    ld	$at,144($sp)
    # Line 1103
    ld	$a1,128($sp)
    # Line 1104
    nor	$v0,$s4,$zero
    and	$at,$v0,$at
    # Line 1103
    addu	$a1,$a2,$a1
    lbu	$a1,0($a1)
    sd	$at,144($sp)
    b	.L0db53d90
    sb	$a1,0($s0)
.L0db53de8:
    ld	$s5,176($sp)
    ld	$s1,184($sp)
    ld	$ra,192($sp)
    ld	$s4,200($sp)
.L0db53df8:
    ld	$v0,136($sp)
    # Line 1125
    beqz	$v0,.L0db53e6c
    ld	$v1,56($sp)
    # Line 1130
    ld	$a1,136($sp)
    lw	$v1,30300($v1)
    beq	$v1,$a1,.L0db53e38
    # Line 1134
    li	$v0,1
    ld	$gp,24($sp)
    ld	$s0,0($sp)
    ld	$s2,48($sp)
    ld	$s3,40($sp)
    ld	$s6,32($sp)
    ld	$s7,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0db53e38:
    # Line 1138
    li	$v0,1
    ld	$gp,24($sp)
    ld	$s0,0($sp)
    ld	$s2,48($sp)
    ld	$s3,40($sp)
    ld	$s6,32($sp)
    ld	$s7,16($sp)
    ld	$s8,8($sp)
    # Line 1137
    ld	$a1,56($sp)
    # Line 1138
    addiu	$sp,$sp,224
    # Line 1137
    li	$a0,1
    # Line 1138
    jr	$ra
    # Line 1137
    sb	$a0,30528($a1)
.L0db53e6c:
    # Line 1130
    move	$v0,$zero
    ld	$gp,24($sp)
    ld	$s0,0($sp)
    ld	$s2,48($sp)
    ld	$s3,40($sp)
    ld	$s6,32($sp)
    ld	$s7,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,224
.end __glDepthTestStencilLine

# Function: __glDepthTestStencilStippledLine
# Declared: Line 1141 (Source lines: 1142-1234)
# Address: 0x0db53e94 - 0x0db541d8 (Size: 836 bytes, Frame: 240)
.globl __glDepthTestStencilStippledLine
.ent __glDepthTestStencilStippledLine
__glDepthTestStencilStippledLine:
    # Line 1164
    lw	$a2,31280($a0)
    lw	$a1,29924($a0)
    lw	$a5,3376($a2)
    lw	$a3,31308($a0)
    subu	$a5,$a1,$a5
    mult	$a5,$a3
    # Line 1166
    lw	$a4,29936($a0)
    # Line 1164
    mflo	$a5
    nop
    nop
    # Line 1166
    mult	$a3,$a4
    # Line 1161
    lw	$v1,29940($a0)
    # Line 1166
    mflo	$a4
    nop
    nop
    # Line 1167
    mult	$a3,$v1
    # Line 1142
    addiu	$sp,$sp,-240
    # Line 1171
    lw	$at,31160($a0)
    sd	$s0,16($sp)
    lw	$s0,31188($a0)
    lw	$v0,3376($at)
    # Line 1167
    mflo	$a3
    nop
    # Line 1171
    subu	$a1,$a1,$v0
    mult	$a1,$s0
    sd	$zero,168($sp)
    sd	$s4,48($sp)
    # Line 1175
    lw	$s4,29944($a0)
    sd	$a0,8($sp)
    sd	$gp,32($sp)
    sd	$s7,24($sp)
    # Line 1184
    lw	$s7,30376($a0)
    # Line 1142
    move	$v0,$s8
    sd	$v0,40($sp)
    # Line 1178
    lw	$v0,31368($a0)
    # Line 1171
    lw	$at,3372($at)
    sd	$s3,56($sp)
    # Line 1184
    srav	$s7,$s7,$v0
    sd	$v0,80($sp)
    # Line 1179
    lw	$v0,31360($a0)
    # Line 1180
    lw	$s3,12096($a0)
    # Line 1158
    lw	$a1,30524($a0)
    sd	$v0,64($sp)
    # Line 1182
    lw	$v0,31244($a0)
    sd	$a1,96($sp)
    # Line 1181
    lw	$a1,31240($a0)
    sd	$v0,144($sp)
    # Line 1173
    lw	$v0,29936($a0)
    sd	$a1,112($sp)
    # Line 1171
    mflo	$a1
    sd	$s3,0($sp)
    # Line 1183
    lw	$s3,30256($a0)
    # Line 1173
    mult	$s0,$v0
    # Line 1164
    lw	$a2,3372($a2)
    sd	$s3,88($sp)
    # Line 1185
    lw	$s3,30380($a0)
    # Line 1176
    lw	$s8,29948($a0)
    # Line 1164
    sll	$a2,$a2,0x2
    sd	$s3,72($sp)
    lw	$s3,31296($a0)
    lw	$v0,29920($a0)
    sll	$a5,$a5,0x2
    addu	$s3,$s3,$a5
    sll	$a5,$v0,0x2
    addu	$s3,$s3,$a5
    # Line 1173
    mflo	$a5
    # Line 1164
    subu	$s3,$s3,$a2
    # Line 1157
    lw	$a2,30300($a0)
    # Line 1174
    mult	$s0,$v1
    # Line 1171
    lw	$s0,31176($a0)
    sd	$a2,104($sp)
    # Line 1157
    move	$v1,$a2
    # Line 1171
    addu	$s0,$s0,$a1
    addu	$s0,$s0,$v0
    # Line 1142
    lui	$a1,0xb
    addiu	$a1,$a1,-22524
    addu	$gp,$t9,$a1
    # Line 1162
    lw	$t9,29928($a0)
    # Line 1160
    lw	$a1,29932($a0)
    # Line 1171
    subu	$s0,$s0,$at
    # Line 1166
    addu	$a4,$a4,$t9
    # Line 1167
    addu	$a3,$a3,$a1
    # Line 1173
    addu	$a5,$a5,$t9
    sd	$a5,160($sp)
    # Line 1174
    mflo	$a0
    addu	$a0,$a0,$a1
    # Line 1186
    beqz	$a2,.L0db54188
    sd	$a0,128($sp)
    sd	$s2,208($sp)
    sd	$s6,200($sp)
    sd	$ra,192($sp)
    sd	$s1,184($sp)
    sd	$s5,176($sp)
    li	$a0,-1
    sll	$at,$a3,0x2
    sll	$v0,$a4,0x2
    sd	$v0,152($sp)
    b	.L0db54050
    sd	$at,120($sp)
.L0db54020:
    # Line 1226
    ld	$at,88($sp)
    ld	$v0,72($sp)
    # Line 1225
    ld	$a1,136($sp)
    # Line 1226
    addu	$at,$v0,$at
    sd	$at,88($sp)
    # Line 1225
    ld	$at,96($sp)
    # Line 1226
    ld	$v1,104($sp)
    # Line 1225
    and	$a1,$s6,$a1
    addiu	$at,$at,4
    sd	$at,96($sp)
    # Line 1226
    beqz	$v1,.L0db5416c
    # Line 1225
    sw	$a1,-4($at)
.L0db54050:
    lui	$s1,0x8000
    # Line 1192
    ld	$v0,104($sp)
    ld	$v1,104($sp)
    # Line 1194
    ld	$s2,88($sp)
    # Line 1196
    li	$at,-1
    # Line 1188
    move	$s5,$v1
    slti	$v1,$v1,33
    bnez	$v1,.L0db54078
    # Line 1195
    ld	$s6,96($sp)
    # Line 1190
    li	$s5,32
.L0db54078:
    # Line 1195
    lw	$s6,0($s6)
    sd	$at,136($sp)
    # Line 1194
    ld	$at,80($sp)
    # Line 1192
    subu	$v0,$v0,$s5
    # Line 1198
    addiu	$s5,$s5,-1
    # Line 1194
    srlv	$s2,$s2,$at
    ld	$at,64($sp)
    sd	$v0,104($sp)
    # Line 1198
    bltz	$s5,.L0db54020
    # Line 1194
    addu	$s2,$s2,$at
    b	.L0db540e4
    # Line 1210
    addu	$s4,$s4,$s8
.L0db540a8:
    ld	$v0,144($sp)
    # Line 1201
    addu	$v0,$a2,$v0
    lbu	$v0,0($v0)
    sb	$v0,0($s0)
.L0db540b8:
    # Line 1216
    ld	$v1,152($sp)
    # Line 1213
    ld	$v0,120($sp)
    # Line 1210
    bltz	$s4,.L0db54150
    # Line 1208
    addu	$s2,$s7,$s2
    ld	$a1,160($sp)
    # Line 1216
    addu	$s3,$v1,$s3
    # Line 1217
    addu	$s0,$a1,$s0
.L0db540d4:
    # Line 1220
    srl	$s1,$s1,0x1
    # Line 1198
    beq	$s5,$a0,.L0db54020
    nop
    # Line 1210
    addu	$s4,$s4,$s8
.L0db540e4:
    # Line 1198
    and	$at,$s6,$s1
    beqz	$at,.L0db54140
    addiu	$s5,$s5,-1
    # Line 1200
    ld	$t9,0($sp)
    move	$a0,$s2
    lw	$a1,0($s3)
    jalr	$t9
    move	$a2,$s3
    li	$a0,-1
    bnez	$v0,.L0db540a8
    lbu	$a2,0($s0)
    # Line 1204
    nor	$a1,$s1,$zero
    # Line 1203
    ld	$v0,112($sp)
    ld	$v1,168($sp)
    addu	$v0,$a2,$v0
    lbu	$v0,0($v0)
    # Line 1205
    addiu	$v1,$v1,1
    sd	$v1,168($sp)
    # Line 1204
    ld	$v1,136($sp)
    # Line 1203
    sb	$v0,0($s0)
    # Line 1204
    and	$v1,$a1,$v1
    b	.L0db540b8
    sd	$v1,136($sp)
.L0db54140:
    ld	$a1,168($sp)
    # Line 1207
    addiu	$a1,$a1,1
    b	.L0db540b8
    sd	$a1,168($sp)
.L0db54150:
    # Line 1213
    addu	$s3,$v0,$s3
    lui	$at,0x7fff
    ori	$at,$at,0xffff
    ld	$v1,128($sp)
    # Line 1212
    and	$s4,$s4,$at
    # Line 1214
    b	.L0db540d4
    addu	$s0,$v1,$s0
.L0db5416c:
    ld	$s5,176($sp)
    ld	$s1,184($sp)
    ld	$ra,192($sp)
    ld	$a2,8($sp)
    ld	$s6,200($sp)
    ld	$s2,208($sp)
    # Line 1226
    lw	$a2,30300($a2)
.L0db54188:
    ld	$at,168($sp)
    beq	$a2,$at,.L0db541b4
    # Line 1231
    move	$v0,$zero
    ld	$gp,32($sp)
    ld	$s0,16($sp)
    ld	$s3,56($sp)
    ld	$s4,48($sp)
    ld	$s7,24($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0db541b4:
    # Line 1234
    li	$v0,1
    ld	$gp,32($sp)
    ld	$s0,16($sp)
    ld	$s3,56($sp)
    ld	$s4,48($sp)
    ld	$s7,24($sp)
    ld	$s8,40($sp)
    jr	$ra
    addiu	$sp,$sp,240
.end __glDepthTestStencilStippledLine

# Function: __glDepthPassLine
# Declared: Line 1237 (Source lines: 1251-1270)
# Address: 0x0db541d8 - 0x0db54308 (Size: 304 bytes, Frame: 0)
.globl __glDepthPassLine
.ent __glDepthPassLine
__glDepthPassLine:
    # Line 1251
    lw	$at,31160($a0)
    lw	$a2,29924($a0)
    lw	$a3,3376($at)
    lw	$v0,31188($a0)
    subu	$a2,$a2,$a3
    mult	$a2,$v0
    # Line 1253
    lw	$a1,29936($a0)
    # Line 1251
    mflo	$v1
    nop
    nop
    # Line 1253
    mult	$a1,$v0
    # Line 1258
    lw	$a5,31244($a0)
    # Line 1256
    lw	$a6,29948($a0)
    # Line 1259
    lui	$t0,0x7fff
    # Line 1254
    lw	$a7,29940($a0)
    # Line 1253
    mflo	$t1
    # Line 1259
    lw	$a4,30300($a0)
    ori	$t0,$t0,0xffff
    # Line 1254
    mult	$a7,$v0
    # Line 1259
    addiu	$a4,$a4,-1
    addiu	$t2,$a4,1
    # Line 1255
    lw	$a3,29944($a0)
    # Line 1251
    lw	$at,3372($at)
    # Line 1253
    lw	$a7,29928($a0)
    # Line 1251
    lw	$a2,29920($a0)
    lw	$v0,31176($a0)
    # Line 1253
    addu	$a7,$a7,$t1
    # Line 1254
    lw	$t1,29932($a0)
    # Line 1251
    addu	$v0,$v0,$v1
    addu	$a2,$a2,$v0
    subu	$a2,$a2,$at
    # Line 1254
    mflo	$at
    # Line 1259
    bltz	$a4,.L0db54298
    # Line 1254
    addu	$t1,$t1,$at
    andi	$at,$t2,0x1
    beqz	$at,.L0db5428c
    # Line 1259
    li	$a1,-1
    # Line 1260
    lbu	$v0,0($a2)
    # Line 1259
    addiu	$a4,$a4,-1
    # Line 1260
    addu	$v0,$v0,$a5
    lbu	$v0,0($v0)
    # Line 1261
    addu	$a3,$a3,$a6
    bltz	$a3,.L0db542fc
    # Line 1260
    sb	$v0,0($a2)
    # Line 1266
    addu	$a2,$a7,$a2
.L0db5428c:
    sra	$v1,$t2,0x1
    bnezl	$v1,.L0db542b4
    # Line 1260
    lbu	$a0,0($a2)
.L0db54298:
    # Line 1270
    jr	$ra
    move	$v0,$zero
.L0db542a0:
    # Line 1264
    addu	$a2,$t1,$a2
    # Line 1263
    and	$a3,$a3,$t0
.L0db542a8:
    # Line 1259
    beq	$a4,$a1,.L0db54298
    nop
    # Line 1260
    lbu	$a0,0($a2)
.L0db542b4:
    # Line 1259
    addiu	$a4,$a4,-2
    # Line 1260
    addu	$a0,$a0,$a5
    lbu	$a0,0($a0)
    # Line 1261
    addu	$a3,$a3,$a6
    bltz	$a3,.L0db542f0
    # Line 1260
    sb	$a0,0($a2)
    # Line 1266
    addu	$a2,$a7,$a2
.L0db542d0:
    # Line 1260
    lbu	$at,0($a2)
    addu	$at,$at,$a5
    lbu	$at,0($at)
    # Line 1261
    addu	$a3,$a3,$a6
    bltz	$a3,.L0db542a0
    # Line 1260
    sb	$at,0($a2)
    b	.L0db542a8
    # Line 1266
    addu	$a2,$a7,$a2
.L0db542f0:
    # Line 1264
    addu	$a2,$t1,$a2
    b	.L0db542d0
    # Line 1263
    and	$a3,$a3,$t0
.L0db542fc:
    # Line 1264
    addu	$a2,$t1,$a2
    b	.L0db5428c
    # Line 1263
    and	$a3,$a3,$t0
.end __glDepthPassLine

# Function: __glDepthPassStippledLine
# Declared: Line 1273 (Source lines: 1274-1325)
# Address: 0x0db54308 - 0x0db544a4 (Size: 412 bytes, Frame: 32)
.globl __glDepthPassStippledLine
.ent __glDepthPassStippledLine
__glDepthPassStippledLine:
    # Line 1290
    lw	$at,31160($a0)
    lw	$a6,29924($a0)
    lw	$a7,3376($at)
    lw	$a2,31188($a0)
    subu	$a6,$a6,$a7
    mult	$a6,$a2
    # Line 1292
    lw	$a3,29936($a0)
    # Line 1290
    mflo	$v1
    nop
    nop
    # Line 1292
    mult	$a3,$a2
    # Line 1274
    addiu	$sp,$sp,-32
    # Line 1293
    lw	$a1,29940($a0)
    # Line 1292
    mflo	$t3
    # Line 1296
    lw	$t0,31244($a0)
    # Line 1284
    lw	$t9,30524($a0)
    # Line 1293
    mult	$a1,$a2
    # Line 1283
    lw	$t8,30300($a0)
    # Line 1290
    lw	$v0,31176($a0)
    lw	$at,3372($at)
    # Line 1295
    lw	$a6,29948($a0)
    # Line 1292
    lw	$a7,29928($a0)
    # Line 1294
    lw	$a3,29944($a0)
    # Line 1290
    addu	$v0,$v0,$v1
    lw	$a2,29920($a0)
    # Line 1292
    addu	$a7,$a7,$t3
    # Line 1293
    lw	$t3,29932($a0)
    # Line 1290
    addu	$a2,$a2,$v0
    subu	$a2,$a2,$at
    # Line 1293
    mflo	$at
    # Line 1296
    beqz	$t8,.L0db54490
    # Line 1293
    addu	$t3,$t3,$at
    # Line 1296
    li	$t1,-1
    lui	$t2,0x7fff
    b	.L0db5439c
    ori	$t2,$t2,0xffff
.L0db54398:
    # Line 1306
    beqz	$t8,.L0db54490
.L0db5439c:
    # Line 1298
    slti	$at,$t8,33
    bnez	$at,.L0db543ac
    move	$a4,$t8
    # Line 1300
    li	$a4,32
.L0db543ac:
    # Line 1304
    lw	$a5,0($t9)
    lui	$a1,0x8000
    # Line 1302
    subu	$t8,$t8,$a4
    # Line 1306
    addiu	$a4,$a4,-1
    bltz	$a4,.L0db54398
    # Line 1304
    addiu	$t9,$t9,4
    # Line 1306
    addiu	$v0,$a4,1
    sd	$v0,0($sp)
    andi	$v0,$v0,0x1
    beqz	$v0,.L0db54408
    ld	$at,0($sp)
    # Line 1310
    addu	$a3,$a3,$a6
    # Line 1306
    and	$v1,$a5,$a1
    beqz	$v1,.L0db543f8
    # Line 1318
    srl	$a1,$a1,0x1
    # Line 1308
    lbu	$a0,0($a2)
    addu	$a0,$a0,$t0
    lbu	$a0,0($a0)
    sb	$a0,0($a2)
.L0db543f8:
    # Line 1310
    bltzl	$a3,.L0db5449c
    # Line 1313
    addu	$a2,$t3,$a2
    # Line 1315
    addu	$a2,$a7,$a2
.L0db54404:
    # Line 1306
    addiu	$a4,$a4,-1
.L0db54408:
    sra	$at,$at,0x1
    beqz	$at,.L0db54398
    nop
    b	.L0db54430
    and	$v0,$a5,$a1
.L0db5441c:
    # Line 1310
    bltz	$a3,.L0db54484
    # Line 1318
    srl	$a1,$a1,0x1
    # Line 1315
    addu	$a2,$a7,$a2
.L0db54428:
    # Line 1306
    beq	$a4,$t1,.L0db54398
    and	$v0,$a5,$a1
.L0db54430:
    # Line 1318
    srl	$a1,$a1,0x1
    # Line 1306
    beqz	$v0,.L0db5444c
    # Line 1310
    addu	$a3,$a3,$a6
    # Line 1308
    lbu	$v1,0($a2)
    addu	$v1,$v1,$t0
    lbu	$v1,0($v1)
    sb	$v1,0($a2)
.L0db5444c:
    # Line 1306
    and	$a0,$a5,$a1
    # Line 1310
    bltzl	$a3,.L0db5447c
    # Line 1313
    addu	$a2,$t3,$a2
    # Line 1315
    addu	$a2,$a7,$a2
.L0db5445c:
    # Line 1306
    addiu	$a4,$a4,-2
    beqz	$a0,.L0db5441c
    # Line 1310
    addu	$a3,$a3,$a6
    # Line 1308
    lbu	$at,0($a2)
    addu	$at,$at,$t0
    lbu	$at,0($at)
    b	.L0db5441c
    sb	$at,0($a2)
.L0db5447c:
    # Line 1313
    b	.L0db5445c
    # Line 1312
    and	$a3,$a3,$t2
.L0db54484:
    # Line 1313
    addu	$a2,$t3,$a2
    b	.L0db54428
    # Line 1312
    and	$a3,$a3,$t2
.L0db54490:
    # Line 1325
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.L0db5449c:
    # Line 1313
    b	.L0db54404
    # Line 1312
    and	$a3,$a3,$t2
.end __glDepthPassStippledLine

# Function: __glStoreLine
# Declared: Line 1360 (Source lines: 1361-1399)
# Address: 0x0db544a4 - 0x0db545ec (Size: 328 bytes, Frame: 176)
.globl __glStoreLine
.ent __glStoreLine
__glStoreLine:
    # Line 1372
    lw	$a1,29932($a0)
    # Line 1373
    lw	$v1,29940($a0)
    # Line 1361
    addiu	$sp,$sp,-176
    sd	$a1,64($sp)
    sd	$v1,56($sp)
    sd	$gp,136($sp)
    lui	$at,0xb
    addiu	$at,$at,-24076
    sd	$s1,112($sp)
    # Line 1378
    lw	$s1,30516($a0)
    sd	$s5,120($sp)
    # Line 1377
    lw	$s5,29948($a0)
    sd	$s0,104($sp)
    # Line 1376
    lw	$s0,29944($a0)
    sd	$s7,128($sp)
    # Line 1375
    lw	$s7,29936($a0)
    sd	$s6,88($sp)
    # Line 1374
    lw	$s6,29928($a0)
    sd	$s2,72($sp)
    # Line 1370
    lw	$s2,30300($a0)
    sd	$s3,80($sp)
    # Line 1379
    lw	$s3,30532($a0)
    # Line 1381
    lw	$v0,29920($a0)
    sd	$s4,96($sp)
    # Line 1380
    lw	$s4,164($s3)
    # Line 1381
    sw	$v0,0($sp)
    # Line 1361
    addu	$gp,$t9,$at
    # Line 1382
    lw	$at,29924($a0)
    # Line 1384
    addiu	$s2,$s2,-1
    bltz	$s2,.L0db545bc
    # Line 1382
    sw	$at,4($sp)
    sd	$ra,144($sp)
    sd	$s8,152($sp)
    b	.L0db5454c
    # Line 1384
    li	$s8,-1
.L0db54530:
    # Line 1394
    addu	$v0,$s6,$a2
    sw	$v0,0($sp)
    # Line 1395
    addu	$v1,$s7,$a0
    sw	$v1,4($sp)
.L0db54540:
    # Line 1384
    addiu	$s2,$s2,-1
    beql	$s2,$s8,.L0db545b8
    ld	$s8,152($sp)
.L0db5454c:
    # Line 1385
    lwc1	$f3,0($s1)
    swc1	$f3,12($sp)
    lwc1	$f2,4($s1)
    swc1	$f2,16($sp)
    # Line 1386
    addiu	$a1,$sp,0
    # Line 1385
    lwc1	$f1,8($s1)
    # Line 1386
    move	$a0,$s3
    # Line 1385
    addiu	$s1,$s1,16
    swc1	$f1,20($sp)
    # Line 1386
    move	$t9,$s4
    # Line 1385
    lwc1	$f0,-4($s1)
    # Line 1388
    addu	$s0,$s0,$s5
    # Line 1386
    jalr	$s4
    # Line 1385
    swc1	$f0,24($sp)
    # Line 1388
    lw	$a2,0($sp)
    # Line 1391
    ld	$a1,64($sp)
    # Line 1392
    ld	$at,56($sp)
    # Line 1388
    bgez	$s0,.L0db54530
    lw	$a0,4($sp)
    # Line 1392
    addu	$at,$at,$a0
    # Line 1391
    addu	$a1,$a1,$a2
    sw	$a1,0($sp)
    # Line 1392
    sw	$at,4($sp)
    lui	$v0,0x7fff
    ori	$v0,$v0,0xffff
    b	.L0db54540
    # Line 1390
    and	$s0,$s0,$v0
.L0db545b8:
    ld	$ra,144($sp)
.L0db545bc:
    # Line 1399
    move	$v0,$zero
    ld	$gp,136($sp)
    ld	$s0,104($sp)
    ld	$s1,112($sp)
    ld	$s2,72($sp)
    ld	$s3,80($sp)
    ld	$s4,96($sp)
    ld	$s5,120($sp)
    ld	$s6,88($sp)
    ld	$s7,128($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end __glStoreLine

# Function: __glStoreStippledLine
# Declared: Line 1408 (Source lines: 1409-1470)
# Address: 0x0db545ec - 0x0db54798 (Size: 428 bytes, Frame: 224)
.globl __glStoreStippledLine
.ent __glStoreStippledLine
__glStoreStippledLine:
    # Line 1409
    addiu	$sp,$sp,-224
    sd	$s3,104($sp)
    # Line 1433
    lw	$s3,29924($a0)
    sd	$s1,88($sp)
    # Line 1432
    lw	$s1,29920($a0)
    sd	$s2,112($sp)
    # Line 1429
    lw	$s2,30516($a0)
    sd	$s7,80($sp)
    # Line 1428
    lw	$s7,29948($a0)
    sd	$s4,96($sp)
    # Line 1427
    lw	$s4,29944($a0)
    sd	$s8,72($sp)
    # Line 1426
    lw	$s8,29936($a0)
    # Line 1421
    lw	$a1,30524($a0)
    # Line 1425
    lw	$v1,29928($a0)
    sd	$gp,120($sp)
    sd	$a1,128($sp)
    sd	$v1,160($sp)
    # Line 1409
    lui	$v1,0xb
    addiu	$v1,$v1,-24404
    # Line 1424
    lw	$v0,29940($a0)
    # Line 1409
    addu	$gp,$t9,$v1
    # Line 1423
    lw	$at,29932($a0)
    sd	$v0,144($sp)
    # Line 1430
    lw	$v0,30532($a0)
    sd	$at,152($sp)
    # Line 1420
    lw	$at,30300($a0)
    sd	$v0,64($sp)
    # Line 1431
    lw	$v0,164($v0)
    sd	$at,136($sp)
    # Line 1433
    beqz	$at,.L0db54770
    sd	$v0,56($sp)
    sd	$s6,192($sp)
    sd	$ra,184($sp)
    sd	$s0,176($sp)
    sd	$s5,168($sp)
    b	.L0db5468c
    li	$a0,-1
.L0db54684:
    ld	$a1,136($sp)
    # Line 1444
    beqz	$a1,.L0db54760
.L0db5468c:
    ld	$at,136($sp)
    # Line 1436
    move	$s5,$at
    slti	$at,$at,33
    bnez	$at,.L0db546a4
    # Line 1442
    ld	$v0,128($sp)
    # Line 1438
    li	$s5,32
.L0db546a4:
    lui	$s0,0x8000
    # Line 1442
    lw	$s6,0($v0)
    # Line 1440
    ld	$v1,136($sp)
    # Line 1442
    addiu	$v0,$v0,4
    sd	$v0,128($sp)
    # Line 1440
    subu	$v1,$v1,$s5
    # Line 1444
    addiu	$s5,$s5,-1
    bltz	$s5,.L0db54684
    sd	$v1,136($sp)
    b	.L0db546f8
    # Line 1453
    addu	$s4,$s4,$s7
.L0db546d0:
    ld	$a1,144($sp)
    bltz	$s4,.L0db54744
    # Line 1452
    addiu	$s2,$s2,16
    # Line 1459
    ld	$a1,160($sp)
    # Line 1460
    addu	$s3,$s8,$s3
    # Line 1459
    addu	$s1,$a1,$s1
.L0db546e8:
    # Line 1463
    srl	$s0,$s0,0x1
    # Line 1444
    beq	$s5,$a0,.L0db54684
    nop
    # Line 1453
    addu	$s4,$s4,$s7
.L0db546f8:
    # Line 1444
    and	$at,$s6,$s0
    beqz	$at,.L0db546d0
    addiu	$s5,$s5,-1
    # Line 1447
    sw	$s3,4($sp)
    # Line 1446
    sw	$s1,0($sp)
    # Line 1448
    lwc1	$f3,0($s2)
    swc1	$f3,12($sp)
    lwc1	$f2,4($s2)
    swc1	$f2,16($sp)
    lwc1	$f1,8($s2)
    # Line 1449
    addiu	$a1,$sp,0
    # Line 1448
    swc1	$f1,20($sp)
    # Line 1449
    ld	$t9,56($sp)
    # Line 1448
    lwc1	$f0,12($s2)
    # Line 1449
    ld	$a0,64($sp)
    jalr	$t9
    # Line 1448
    swc1	$f0,24($sp)
    b	.L0db546d0
    li	$a0,-1
.L0db54744:
    # Line 1456
    ld	$v1,152($sp)
    # Line 1457
    addu	$s3,$a1,$s3
    # Line 1456
    addu	$s1,$v1,$s1
    lui	$v0,0x7fff
    ori	$v0,$v0,0xffff
    # Line 1457
    b	.L0db546e8
    # Line 1455
    and	$s4,$s4,$v0
.L0db54760:
    ld	$s5,168($sp)
    ld	$s0,176($sp)
    ld	$ra,184($sp)
    ld	$s6,192($sp)
.L0db54770:
    # Line 1470
    move	$v0,$zero
    ld	$gp,120($sp)
    ld	$s1,88($sp)
    ld	$s2,112($sp)
    ld	$s3,104($sp)
    ld	$s4,96($sp)
    ld	$s7,80($sp)
    ld	$s8,72($sp)
    jr	$ra
    addiu	$sp,$sp,224
.end __glStoreStippledLine

# Function: __glAntiAliasLine
# Declared: Line 1473 (Source lines: 1474-1635)
# Address: 0x0db54798 - 0x0db54bb8 (Size: 1056 bytes, Frame: 224)
.globl __glAntiAliasLine
.ent __glAntiAliasLine
__glAntiAliasLine:
    # Line 1487
    lw	$a2,30488($a0)
    # Line 1474
    addiu	$sp,$sp,-224
    sd	$s8,168($sp)
    sdc1	$f30,136($sp)
    sd	$s1,72($sp)
    move	$s1,$a0
    sdc1	$f20,16($sp)
    # Line 1502
    lwc1	$f20,30048($a0)
    sdc1	$f22,0($sp)
    # Line 1501
    lwc1	$f22,30044($a0)
    sd	$s3,88($sp)
    # Line 1494
    lw	$s3,30516($a0)
    sd	$s7,64($sp)
    # Line 1492
    lw	$s7,29948($a0)
    sd	$s2,96($sp)
    # Line 1491
    lw	$s2,29944($a0)
    sd	$s6,80($sp)
    # Line 1508
    move	$s6,$zero
    sd	$gp,104($sp)
    # Line 1474
    lui	$v0,0xb
    addiu	$v0,$v0,-24832
    addu	$gp,$t9,$v0
    # Line 1489
    lw	$at,30300($a0)
    # Line 1498
    lwc1	$f2,30036($a0)
    # Line 1497
    lwc1	$f1,30032($a0)
    # Line 1499
    lwc1	$f3,30040($a0)
    # Line 1507
    lw	$v1,30524($a0)
    sdc1	$f1,32($sp)
    # Line 1496
    lwc1	$f0,30028($a0)
    sdc1	$f26,8($sp)
    # Line 1504
    lwc1	$f26,448($a0)
    sdc1	$f0,48($sp)
    # Line 1503
    lwc1	$f0,3280($a0)
    lwc1	$f1,30008($a0)
    sd	$v1,112($sp)
    # Line 1504
    mul.s	$f26,$f26,$f0
    # Line 1503
    sub.s	$f1,$f1,$f0
    sdc1	$f3,24($sp)
    sdc1	$f2,56($sp)
    sd	$at,120($sp)
    sdc1	$f1,40($sp)
    # Line 1508
    beqz	$at,.L0db54b14
    # Line 1504
    sub.s	$f26,$f26,$f0
    sd	$ra,200($sp)
    sd	$s4,192($sp)
    sd	$s0,184($sp)
    sd	$s5,176($sp)
    sdc1	$f24,152($sp)
    sdc1	$f28,144($sp)
    # Line 1508
    li	$s8,-1
    li	$a0,1
    mtc1	$zero,$f30
    andi	$a1,$a2,0x8000
    b	.L0db5488c
    sd	$a1,128($sp)
.L0db54874:
    ld	$v0,112($sp)
    # Line 1622
    ld	$at,120($sp)
    sw	$s5,0($v0)
    addiu	$v0,$v0,4
    beqz	$at,.L0db54af4
    sd	$v0,112($sp)
.L0db5488c:
    ld	$v1,120($sp)
    lui	$s0,0x8000
    # Line 1510
    move	$s4,$v1
    slti	$v1,$v1,33
    bnez	$v1,.L0db548a8
    # Line 1514
    ld	$a1,120($sp)
    # Line 1512
    li	$s4,32
.L0db548a8:
    # Line 1516
    li	$s5,-1
    # Line 1514
    subu	$a1,$a1,$s4
    # Line 1519
    addiu	$s4,$s4,-1
    bltz	$s4,.L0db54874
    sd	$a1,120($sp)
    b	.L0db549bc
    c.lt.s	$f26,$f20
.L0db548c4:
    # Line 1564
    add.s	$f12,$f4,$f5
.L0db548c8:
    # Line 1566
    # lw $t9, -17792($gp) # &floorf
    jal	floorf
    sdc1	$f12,160($sp)
    trunc.w.s	$f4,$f0
    cvt.s.w	$f7,$f4
    lwc1	$f6,30056($s1)
    mul.s	$f5,$f6,$f7
    trunc.w.s	$f5,$f5
    # Line 1578
    li	$a4,1
    li	$a0,1
    # Line 1566
    mfc1	$a2,$f4
    mfc1	$at,$f5
    lhu	$a3,456($s1)
    # Line 1580
    addu	$v1,$a2,$a0
    # Line 1566
    andi	$at,$at,0xf
    sllv	$at,$a0,$at
    and	$at,$at,$a3
    beqz	$at,.L0db54aec
    ldc1	$f5,160($sp)
.L0db54914:
    # Line 1580
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f6
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    # Line 1586
    move	$a2,$zero
    # Line 1589
    sub.s	$f3,$f5,$f7
    # Line 1580
    andi	$v0,$v0,0xf
    sllv	$v0,$a0,$v0
    and	$v0,$v0,$a3
    beqz	$v0,.L0db5494c
    # Line 1589
    sub.s	$f0,$f28,$f3
    # Line 1584
    li	$a2,1
.L0db5494c:
    # Line 1589
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f2,$f2,$f3
    mul.s	$f1,$f1,$f0
    add.s	$f1,$f1,$f2
    mul.s	$f24,$f1,$f24
    # Line 1593
    c.eq.s	$f24,$f30
.L0db54978:
    nop
    bc1fl	.L0db54aa0
    # Line 1596
    lbu	$v0,3105($s1)
.L0db54984:
    addiu	$s6,$s6,1
.L0db54988:
    # Line 1595
    nor	$a1,$s0,$zero
    and	$s5,$a1,$s5
.L0db54990:
    # Line 1612
    ldc1	$f2,48($sp)
    ldc1	$f0,24($sp)
    # Line 1606
    bltz	$s2,.L0db54ac0
    # Line 1604
    addiu	$s3,$s3,16
    # Line 1612
    add.s	$f22,$f2,$f22
    ldc1	$f3,56($sp)
    # Line 1613
    add.s	$f20,$f3,$f20
.L0db549ac:
    # Line 1617
    srl	$s0,$s0,0x1
    # Line 1519
    beq	$s4,$s8,.L0db54874
    nop
    c.lt.s	$f26,$f20
.L0db549bc:
    addiu	$s4,$s4,-1
    # Line 1606
    addu	$s2,$s2,$s7
    # Line 1519
    bc1f	.L0db549ec
    lwc1	$f28,3284($s1)
    # Line 1522
    sub.s	$f24,$f26,$f20
    add.s	$f24,$f24,$f28
    c.lt.s	$f24,$f30
    nop
    bc1fl	.L0db54a24
    # Line 1534
    lwc1	$f4,3280($s1)
    b	.L0db54988
    # Line 1596
    addiu	$s6,$s6,1
.L0db549ec:
    # Line 1525
    neg.s	$f0,$f26
    c.lt.s	$f20,$f0
    nop
    bc1f	.L0db54a20
    # Line 1534
    mov.s	$f24,$f28
    # Line 1528
    add.s	$f24,$f20,$f26
    add.s	$f24,$f24,$f28
    c.lt.s	$f24,$f30
    nop
    bc1fl	.L0db54a24
    # Line 1534
    lwc1	$f4,3280($s1)
    b	.L0db54988
    # Line 1596
    addiu	$s6,$s6,1
.L0db54a20:
    # Line 1534
    lwc1	$f4,3280($s1)
.L0db54a24:
    c.lt.s	$f22,$f4
    nop
    bc1f	.L0db54a54
    ldc1	$f1,40($sp)
    # Line 1539
    add.s	$f0,$f4,$f22
    mul.s	$f24,$f0,$f24
    c.lt.s	$f24,$f30
    nop
    bc1f	.L0db54a80
    ld	$at,128($sp)
    b	.L0db54988
    # Line 1596
    addiu	$s6,$s6,1
.L0db54a54:
    # Line 1542
    c.lt.s	$f1,$f22
    nop
    bc1f	.L0db54a7c
    ldc1	$f2,40($sp)
    # Line 1545
    sub.s	$f2,$f2,$f22
    add.s	$f2,$f2,$f28
    mul.s	$f24,$f2,$f24
    c.lt.s	$f24,$f30
    nop
    bc1t	.L0db54984
.L0db54a7c:
    ld	$at,128($sp)
.L0db54a80:
    # Line 1548
    beqz	$at,.L0db54978
    # Line 1593
    c.eq.s	$f24,$f30
    # Line 1548
    c.lt.s	$f4,$f22
    nop
    bc1f	.L0db548c4
    lwc1	$f5,30052($s1)
    # Line 1562
    b	.L0db548c8
    add.s	$f12,$f5,$f22
.L0db54aa0:
    # Line 1596
    beqz	$v0,.L0db54adc
    # Line 1599
    nop	# was lw $t9, -26096($gp) # &__glBuildAntiAliasIndex
    mov.s	$f13,$f24
    jal	__glBuildAntiAliasIndex
    lwc1	$f12,0($s3)
    li	$a0,1
    b	.L0db54990
    swc1	$f0,0($s3)
.L0db54ac0:
    # Line 1609
    ldc1	$f3,32($sp)
    # Line 1610
    add.s	$f20,$f0,$f20
    # Line 1609
    add.s	$f22,$f3,$f22
    lui	$v1,0x7fff
    ori	$v1,$v1,0xffff
    # Line 1610
    b	.L0db549ac
    # Line 1608
    and	$s2,$s2,$v1
.L0db54adc:
    # Line 1601
    lwc1	$f1,12($s3)
    mul.s	$f1,$f1,$f24
    b	.L0db54990
    swc1	$f1,12($s3)
.L0db54aec:
    b	.L0db54914
    # Line 1580
    move	$a4,$zero
.L0db54af4:
    ldc1	$f30,136($sp)
    ldc1	$f28,144($sp)
    ldc1	$f24,152($sp)
    ld	$s8,168($sp)
    ld	$s5,176($sp)
    ld	$s0,184($sp)
    ld	$s4,192($sp)
    ld	$ra,200($sp)
.L0db54b14:
    # Line 1622
    beqz	$s6,.L0db54b8c
    # Line 1627
    move	$v0,$zero
    lw	$a1,30300($s1)
    beq	$a1,$s6,.L0db54b54
    # Line 1631
    li	$v0,1
    ld	$gp,104($sp)
    ld	$s1,72($sp)
    ld	$s2,96($sp)
    ld	$s3,88($sp)
    ld	$s6,80($sp)
    ld	$s7,64($sp)
    ldc1	$f20,16($sp)
    ldc1	$f22,0($sp)
    ldc1	$f26,8($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0db54b54:
    # Line 1635
    li	$v0,1
    ld	$gp,104($sp)
    ld	$s2,96($sp)
    ld	$s3,88($sp)
    ld	$s6,80($sp)
    ld	$s7,64($sp)
    ldc1	$f20,16($sp)
    ldc1	$f22,0($sp)
    ldc1	$f26,8($sp)
    # Line 1634
    li	$a2,1
    sb	$a2,30528($s1)
    # Line 1635
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0db54b8c:
    ld	$gp,104($sp)
    # Line 1627
    ld	$s1,72($sp)
    ld	$s2,96($sp)
    ld	$s3,88($sp)
    ld	$s6,80($sp)
    ld	$s7,64($sp)
    ldc1	$f20,16($sp)
    ldc1	$f22,0($sp)
    ldc1	$f26,8($sp)
    jr	$ra
    addiu	$sp,$sp,224
.end __glAntiAliasLine

# Function: __glAntiAliasStippledLine
# Declared: Line 1638 (Source lines: 1639-1794)
# Address: 0x0db54bb8 - 0x0db54fe0 (Size: 1064 bytes, Frame: 224)
.globl __glAntiAliasStippledLine
.ent __glAntiAliasStippledLine
__glAntiAliasStippledLine:
    # Line 1664
    lwc1	$f5,30036($a0)
    # Line 1662
    lwc1	$f6,30028($a0)
    # Line 1652
    lw	$a3,30488($a0)
    # Line 1639
    addiu	$sp,$sp,-224
    sdc1	$f30,120($sp)
    sd	$s3,72($sp)
    move	$s3,$a0
    sdc1	$f20,16($sp)
    # Line 1668
    lwc1	$f20,30048($a0)
    sdc1	$f22,0($sp)
    # Line 1667
    lwc1	$f22,30044($a0)
    sd	$s2,80($sp)
    # Line 1660
    lw	$s2,30516($a0)
    sd	$s7,48($sp)
    # Line 1658
    lw	$s7,29948($a0)
    sd	$s1,64($sp)
    # Line 1657
    lw	$s1,29944($a0)
    sd	$s5,56($sp)
    # Line 1672
    move	$s5,$zero
    sd	$gp,88($sp)
    # Line 1639
    lui	$v0,0xb
    addiu	$v0,$v0,-25888
    # Line 1665
    lwc1	$f1,30040($a0)
    # Line 1639
    addu	$gp,$t9,$v0
    # Line 1654
    lw	$a2,30300($a0)
    sdc1	$f1,24($sp)
    # Line 1663
    lwc1	$f0,30032($a0)
    sdc1	$f26,8($sp)
    # Line 1670
    lwc1	$f26,448($a0)
    sdc1	$f0,32($sp)
    # Line 1669
    lwc1	$f0,3280($a0)
    lwc1	$f1,30008($a0)
    # Line 1655
    lw	$v1,30524($a0)
    # Line 1670
    mul.s	$f26,$f26,$f0
    # Line 1669
    sub.s	$f1,$f1,$f0
    sd	$v1,96($sp)
    # Line 1654
    move	$at,$a2
    sd	$a2,104($sp)
    sdc1	$f1,40($sp)
    # Line 1672
    beqz	$a2,.L0db54f7c
    # Line 1670
    sub.s	$f26,$f26,$f0
    sd	$s6,200($sp)
    sd	$ra,192($sp)
    sd	$s4,184($sp)
    sd	$s0,176($sp)
    sd	$s8,168($sp)
    sdc1	$f24,136($sp)
    sdc1	$f28,128($sp)
    # Line 1672
    li	$a0,-1
    li	$a2,1
    mtc1	$zero,$f30
    andi	$a1,$a3,0x8000
    b	.L0db54cac
    sd	$a1,112($sp)
.L0db54c90:
    ld	$v1,96($sp)
    # Line 1788
    and	$v0,$s8,$s6
    ld	$at,104($sp)
    addiu	$v1,$v1,4
    sd	$v1,96($sp)
    beqz	$at,.L0db54f58
    sw	$v0,-4($v1)
.L0db54cac:
    # Line 1680
    ld	$s8,96($sp)
    ld	$a1,104($sp)
    # Line 1678
    ld	$at,104($sp)
    # Line 1681
    li	$s6,-1
    # Line 1674
    move	$s4,$a1
    slti	$a1,$a1,33
    bnez	$a1,.L0db54cd0
    lui	$s0,0x8000
    # Line 1676
    li	$s4,32
.L0db54cd0:
    # Line 1680
    lw	$s8,0($s8)
    # Line 1678
    subu	$at,$at,$s4
    # Line 1683
    addiu	$s4,$s4,-1
    bltz	$s4,.L0db54c90
    sd	$at,104($sp)
    b	.L0db54df0
    # Line 1772
    addu	$s1,$s1,$s7
.L0db54cec:
    sdc1	$f5,160($sp)
    sdc1	$f6,152($sp)
    # Line 1729
    add.s	$f12,$f4,$f7
.L0db54cf8:
    # Line 1731
    # lw $t9, -17792($gp) # &floorf
    jal	floorf
    sdc1	$f12,144($sp)
    trunc.w.s	$f2,$f0
    cvt.s.w	$f9,$f2
    lwc1	$f8,30056($s3)
    mul.s	$f3,$f8,$f9
    li	$a0,-1
    ldc1	$f6,152($sp)
    ldc1	$f5,160($sp)
    # Line 1745
    move	$a5,$zero
    # Line 1731
    trunc.w.s	$f3,$f3
    ldc1	$f7,144($sp)
    li	$a2,1
    mfc1	$a3,$f2
    mfc1	$v0,$f3
    lhu	$a4,456($s3)
    # Line 1745
    addu	$a1,$a3,$a2
    # Line 1731
    andi	$v0,$v0,0xf
    sllv	$v0,$a2,$v0
    and	$v0,$v0,$a4
    beqz	$v0,.L0db54d58
    # Line 1754
    sub.s	$f3,$f7,$f9
    # Line 1743
    li	$a5,1
.L0db54d58:
    # Line 1745
    mtc1	$a1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f8
    trunc.w.s	$f0,$f0
    mfc1	$v1,$f0
    # Line 1749
    li	$a3,1
    # Line 1745
    andi	$v1,$v1,0xf
    sllv	$v1,$a2,$v1
    and	$v1,$v1,$a4
    beqz	$v1,.L0db54f50
    # Line 1754
    sub.s	$f0,$f28,$f3
.L0db54d88:
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    mtc1	$a5,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f2,$f2,$f3
    mul.s	$f1,$f1,$f0
    add.s	$f1,$f1,$f2
    mul.s	$f24,$f1,$f24
    # Line 1758
    c.eq.s	$f24,$f30
.L0db54db4:
    nop
    bc1fl	.L0db54ee8
    # Line 1761
    lbu	$a1,3105($s3)
.L0db54dc0:
    addiu	$s5,$s5,1
.L0db54dc4:
    # Line 1760
    nor	$at,$s0,$zero
    and	$s6,$at,$s6
.L0db54dcc:
    ldc1	$f0,24($sp)
    # Line 1772
    bltz	$s1,.L0db54f28
    # Line 1770
    addiu	$s2,$s2,16
    # Line 1779
    add.s	$f20,$f5,$f20
    # Line 1778
    add.s	$f22,$f6,$f22
.L0db54de0:
    # Line 1783
    srl	$s0,$s0,0x1
    # Line 1683
    beq	$s4,$a0,.L0db54c90
    nop
    # Line 1772
    addu	$s1,$s1,$s7
.L0db54df0:
    # Line 1683
    and	$v0,$s8,$s0
    beqz	$v0,.L0db54f20
    addiu	$s4,$s4,-1
    c.lt.s	$f26,$f20
    nop
    bc1f	.L0db54e2c
    lwc1	$f28,3284($s3)
    # Line 1687
    sub.s	$f24,$f26,$f20
    add.s	$f24,$f24,$f28
    c.lt.s	$f24,$f30
    nop
    bc1fl	.L0db54e64
    # Line 1699
    lwc1	$f4,3280($s3)
    b	.L0db54dc4
    # Line 1761
    addiu	$s5,$s5,1
.L0db54e2c:
    # Line 1690
    neg.s	$f0,$f26
    c.lt.s	$f20,$f0
    nop
    bc1f	.L0db54e60
    # Line 1699
    mov.s	$f24,$f28
    # Line 1693
    add.s	$f24,$f20,$f26
    add.s	$f24,$f24,$f28
    c.lt.s	$f24,$f30
    nop
    bc1fl	.L0db54e64
    # Line 1699
    lwc1	$f4,3280($s3)
    b	.L0db54dc4
    # Line 1761
    addiu	$s5,$s5,1
.L0db54e60:
    # Line 1699
    lwc1	$f4,3280($s3)
.L0db54e64:
    c.lt.s	$f22,$f4
    nop
    bc1f	.L0db54e94
    ldc1	$f1,40($sp)
    # Line 1704
    add.s	$f0,$f4,$f22
    mul.s	$f24,$f0,$f24
    c.lt.s	$f24,$f30
    nop
    bc1f	.L0db54ec0
    ld	$v1,112($sp)
    b	.L0db54dc4
    # Line 1761
    addiu	$s5,$s5,1
.L0db54e94:
    # Line 1707
    c.lt.s	$f1,$f22
    nop
    bc1f	.L0db54ebc
    ldc1	$f2,40($sp)
    # Line 1710
    sub.s	$f2,$f2,$f22
    add.s	$f2,$f2,$f28
    mul.s	$f24,$f2,$f24
    c.lt.s	$f24,$f30
    nop
    bc1t	.L0db54dc0
.L0db54ebc:
    ld	$v1,112($sp)
.L0db54ec0:
    # Line 1713
    beqz	$v1,.L0db54db4
    # Line 1758
    c.eq.s	$f24,$f30
    # Line 1713
    c.lt.s	$f4,$f22
    nop
    bc1f	.L0db54cec
    lwc1	$f7,30052($s3)
    sdc1	$f5,160($sp)
    sdc1	$f6,152($sp)
    # Line 1727
    b	.L0db54cf8
    add.s	$f12,$f7,$f22
.L0db54ee8:
    # Line 1761
    beqzl	$a1,.L0db54f44
    # Line 1766
    lwc1	$f1,12($s2)
    sdc1	$f5,160($sp)
    # Line 1764
    # lw $t9, -26096($gp) # &__glBuildAntiAliasIndex
    sdc1	$f6,152($sp)
    mov.s	$f13,$f24
    jal	__glBuildAntiAliasIndex
    lwc1	$f12,0($s2)
    li	$a0,-1
    li	$a2,1
    swc1	$f0,0($s2)
    ldc1	$f6,152($sp)
    b	.L0db54dcc
    ldc1	$f5,160($sp)
.L0db54f20:
    b	.L0db54dcc
    # Line 1769
    addiu	$s5,$s5,1
.L0db54f28:
    # Line 1775
    ldc1	$f3,32($sp)
    # Line 1776
    add.s	$f20,$f0,$f20
    # Line 1775
    add.s	$f22,$f3,$f22
    lui	$at,0x7fff
    ori	$at,$at,0xffff
    # Line 1776
    b	.L0db54de0
    # Line 1774
    and	$s1,$s1,$at
.L0db54f44:
    # Line 1766
    mul.s	$f1,$f1,$f24
    b	.L0db54dcc
    swc1	$f1,12($s2)
.L0db54f50:
    b	.L0db54d88
    # Line 1751
    move	$a3,$zero
.L0db54f58:
    # Line 1788
    lw	$a2,30300($s3)
    ldc1	$f30,120($sp)
    ldc1	$f28,128($sp)
    ldc1	$f24,136($sp)
    ld	$s8,168($sp)
    ld	$s0,176($sp)
    ld	$s4,184($sp)
    ld	$ra,192($sp)
    ld	$s6,200($sp)
.L0db54f7c:
    bne	$a2,$s5,.L0db54fb0
    # Line 1792
    li	$v0,1
    ld	$gp,88($sp)
    ld	$s1,64($sp)
    ld	$s2,80($sp)
    ld	$s3,72($sp)
    ld	$s5,56($sp)
    ld	$s7,48($sp)
    ldc1	$f20,16($sp)
    ldc1	$f22,0($sp)
    ldc1	$f26,8($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0db54fb0:
    # Line 1794
    move	$v0,$zero
    ld	$gp,88($sp)
    ld	$s1,64($sp)
    ld	$s2,80($sp)
    ld	$s3,72($sp)
    ld	$s5,56($sp)
    ld	$s7,48($sp)
    ldc1	$f20,16($sp)
    ldc1	$f22,0($sp)
    ldc1	$f26,8($sp)
    jr	$ra
    addiu	$sp,$sp,224
.end __glAntiAliasStippledLine

