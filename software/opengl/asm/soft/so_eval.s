# Source: ../soft/so_eval.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_eval.c
# Total Functions: 56

.text

# Function: __glEvalComputeK
# Declared: Line 48 (Source lines: 49-74)
# Address: 0x0db3cd14 - 0x0db3cd70 (Size: 92 bytes, Frame: 0)
.globl __glEvalComputeK
.ent __glEvalComputeK
__glEvalComputeK:
    # Line 49
    addiu	$a3,$a0,-3472
    lui	$v0,0xc
    addiu	$v0,$v0,6532
    addu	$at,$t9,$v0
    # lw $t9, -32624($gp) # &sub_0dbf0000
    sltiu	$v0,$a3,41
    sll	$a3,$a3,0x2
    addiu	$t9,$t9,-3216
    beqz	$v0,.L0db3cd48
    addu	$a3,$a3,$t9
    lw	$v1,%lo(jtbl_0dbef370)($a3)
    jr	$v1
    # Line 72
    li	$v0,1
.L0db3cd48:
    # Line 74
    jr	$ra
    li	$v0,-1
.L0db3cd50:
    # Line 57
    jr	$ra
    li	$v0,4
.L0db3cd58:
    # Line 64
    jr	$ra
    li	$v0,3
.L0db3cd60:
    # Line 67
    jr	$ra
    li	$v0,2
.L0db3cd68:
    # Line 72
    jr	$ra
    nop
.end __glEvalComputeK

# Function: __glInitEvaluatorState
# Declared: Line 95 (Source lines: 96-159)
# Address: 0x0db3cd70 - 0x0db3cf34 (Size: 452 bytes, Frame: 240)
.globl __glInitEvaluatorState
.ent __glInitEvaluatorState
__glInitEvaluatorState:
    # Line 96
    addiu	$sp,$sp,-112
    sd	$s1,40($sp)
    sd	$s6,72($sp)
    sd	$ra,64($sp)
    sd	$s8,8($sp)
    li	$s8,1
    sd	$s2,88($sp)
    move	$s2,$a0
    sd	$s0,48($sp)
    move	$s0,$a0
    sd	$s5,32($sp)
    move	$s5,$a0
    sd	$s7,24($sp)
    addiu	$s7,$a0,216
    sdc1	$f30,0($sp)
    sd	$s3,80($sp)
    sd	$gp,16($sp)
    sd	$s4,56($sp)
    lui	$s4,0xc
    addiu	$s4,$s4,6440
    addu	$gp,$t9,$s4
    la	$s3,sub_0dbf0000
    move	$s4,$a0
    mtc1	$zero,$f30
    addiu	$s3,$s3,-3432
.L0db3cdd4:
    # Line 118
    swc1	$f30,28296($s4)
    # Line 117
    sw	$s8,28292($s4)
    # Line 120
    lw	$s1,4($s3)
    # Line 119
    lwc1	$f2,3284($s2)
    # Line 120
    sw	$s1,28288($s4)
    # Line 119
    swc1	$f2,28300($s4)
    # Line 123
    swc1	$f30,28516($s5)
    # Line 122
    sw	$s8,28512($s5)
    # Line 121
    sw	$s8,28508($s5)
    # Line 124
    lwc1	$f1,3284($s2)
    # Line 125
    swc1	$f30,28524($s5)
    # Line 124
    swc1	$f1,28520($s5)
    # Line 126
    lwc1	$f0,3284($s2)
    # Line 127
    sw	$s1,28504($s5)
    # Line 126
    swc1	$f0,28528($s5)
    # Line 129
    move	$a0,$s2
    lw	$t9,0($s2)
    # Line 107
    addiu	$s4,$s4,24
    # Line 129
    sll	$s6,$s1,0x2
    jalr	$t9
    move	$a1,$s6
    sw	$v0,28864($s0)
    # Line 131
    lw	$t9,0($s2)
    move	$a1,$s6
    jalr	$t9
    move	$a0,$s2
    sw	$v0,28900($s0)
    # Line 134
    lw	$t9,0($s2)
    li	$a1,8
    jalr	$t9
    move	$a0,$s2
    sw	$v0,28936($s0)
    # Line 136
    lw	$t9,0($s2)
    li	$a1,8
    jalr	$t9
    move	$a0,$s2
    sw	$v0,28972($s0)
    # Line 138
    lw	$t9,0($s2)
    li	$a1,8
    jalr	$t9
    move	$a0,$s2
    sw	$v0,29008($s0)
    # Line 141
    move	$a1,$s3
    blez	$s1,.L0db3cebc
    move	$a0,$zero
    move	$a3,$zero
.L0db3ce8c:
    # Line 142
    lw	$v0,28864($s0)
    lwc1	$f3,8($a1)
    addu	$v0,$v0,$a3
    swc1	$f3,0($v0)
    # Line 141
    addiu	$a1,$a1,4
    # Line 143
    lw	$at,28900($s0)
    # Line 141
    addiu	$a0,$a0,1
    slt	$v0,$a0,$s1
    # Line 143
    addu	$at,$at,$a3
    # Line 141
    addiu	$a3,$a3,4
    bnez	$v0,.L0db3ce8c
    # Line 143
    swc1	$f3,0($at)
.L0db3cebc:
    # Line 107
    addiu	$s5,$s5,40
    addiu	$s3,$s3,24
    bne	$s4,$s7,.L0db3cdd4
    addiu	$s0,$s0,4
    ld	$gp,16($sp)
    # Line 159
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$s3,80($sp)
    ld	$s4,56($sp)
    ld	$s5,32($sp)
    ld	$s6,72($sp)
    ld	$s7,24($sp)
    # Line 158
    sw	$s8,1868($s2)
    # Line 157
    sw	$s8,1852($s2)
    # Line 156
    sw	$s8,1836($s2)
    # Line 159
    ld	$s8,8($sp)
    # Line 152
    swc1	$f30,1856($s2)
    # Line 151
    swc1	$f30,1840($s2)
    # Line 150
    swc1	$f30,1824($s2)
    # Line 159
    ldc1	$f30,0($sp)
    # Line 148
    sw	$zero,29696($s2)
    # Line 153
    lwc1	$f4,3284($s2)
    # Line 147
    sw	$zero,29692($s2)
    # Line 159
    ld	$ra,64($sp)
    # Line 155
    swc1	$f4,1860($s2)
    # Line 154
    swc1	$f4,1844($s2)
    # Line 153
    swc1	$f4,1828($s2)
    # Line 159
    ld	$s2,88($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glInitEvaluatorState

# Function: __glFreeEvaluatorState
# Declared: Line 161 (Source lines: 162-188)
# Address: 0x0db3cf34 - 0x0db3d01c (Size: 232 bytes, Frame: 192)
.globl __glFreeEvaluatorState
.ent __glFreeEvaluatorState
__glFreeEvaluatorState:
    # Line 162
    addiu	$sp,$sp,-64
    sd	$ra,16($sp)
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$s2,32($sp)
    addiu	$s2,$a0,36
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    lui	$at,0xc
    addiu	$at,$at,5988
    b	.L0db3cfc8
    addu	$gp,$t9,$at
.L0db3cf68:
    # Line 173
    lw	$a1,28936($s0)
.L0db3cf6c:
    beqzl	$a1,.L0db3cf88
    # Line 177
    lw	$a1,28972($s0)
    # Line 176
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 177
    sw	$zero,28936($s0)
    lw	$a1,28972($s0)
.L0db3cf88:
    beqzl	$a1,.L0db3cfa4
    # Line 181
    lw	$a1,29008($s0)
    # Line 180
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 181
    sw	$zero,28972($s0)
    lw	$a1,29008($s0)
.L0db3cfa4:
    beqzl	$a1,.L0db3cfc0
    # Line 166
    addiu	$s0,$s0,4
    # Line 184
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 185
    sw	$zero,29008($s0)
    # Line 166
    addiu	$s0,$s0,4
.L0db3cfc0:
    beql	$s0,$s2,.L0db3d004
    ld	$gp,0($sp)
.L0db3cfc8:
    # Line 162
    lw	$a1,28864($s0)
    beqzl	$a1,.L0db3cfe8
    # Line 169
    lw	$a1,28900($s0)
    # Line 168
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 169
    sw	$zero,28864($s0)
    lw	$a1,28900($s0)
.L0db3cfe8:
    beqzl	$a1,.L0db3cf6c
    # Line 173
    lw	$a1,28936($s0)
    # Line 172
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    b	.L0db3cf68
    # Line 173
    sw	$zero,28900($s0)
.L0db3d004:
    # Line 188
    ld	$s0,24($sp)
    ld	$ra,16($sp)
    ld	$s1,8($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glFreeEvaluatorState

# Function: __glim_Map1d
# Declared: Line 190 (Source lines: 192-207)
# Address: 0x0db3d01c - 0x0db3d148 (Size: 300 bytes, Frame: 240)
.globl __glim_Map1d
.ent __glim_Map1d
__glim_Map1d:
    # Line 195
    li	$v0,1
    # Line 192
    addiu	$sp,$sp,-112
    sd	$ra,48($sp)
    sd	$s2,32($sp)
    # Line 195
    lw	$s2,__glCurrentContext
    sd	$a5,0($sp)
    sd	$s1,8($sp)
    # Line 192
    move	$s1,$a4
    sd	$s3,40($sp)
    move	$s3,$a3
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$gp,24($sp)
    # Line 195
    lw	$at,__glBeginMode
    # Line 192
    lui	$v1,0xc
    addiu	$v1,$v1,5756
    # Line 195
    beq	$at,$v0,.L0db3d11c
    # Line 192
    addu	$gp,$t9,$v1
    # Line 197
    move	$a0,$s2
    move	$a1,$s0
    # lw $t9, -27052($gp) # &__glSetUpMap1
    cvt.s.d	$f16,$f14
    move	$a2,$s1
    bal __glSetUpMap1
    cvt.s.d	$f15,$f13
    beqz	$v0,.L0db3d100
    ld	$ra,48($sp)
    # Line 199
    lw	$a0,0($v0)
    slt	$a6,$s3,$a0
    beqz	$a6,.L0db3d0c0
    # Line 202
    nop	# was lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    li	$a0,1281
    ld	$gp,24($sp)
    # Line 203
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$ra,48($sp)
    ld	$s2,32($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db3d0c0:
    # Line 206
    move	$a1,$s1
    move	$a2,$s3
    ld	$a3,0($sp)
    # lw $t9, -27072($gp) # &__glFillMap1d
    sll	$a4,$s0,0x2
    addu	$a4,$a4,$s2
    bal __glFillMap1d
    lw	$a4,14976($a4)
    ld	$gp,24($sp)
    # Line 207
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$ra,48($sp)
    ld	$s2,32($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db3d100:
    ld	$gp,24($sp)
    # Line 199
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,32($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db3d11c:
    # Line 195
    # lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$ra,48($sp)
    ld	$s2,32($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glim_Map1d

# Function: __glim_Map1f
# Declared: Line 209 (Source lines: 211-226)
# Address: 0x0db3d148 - 0x0db3d274 (Size: 300 bytes, Frame: 240)
.globl __glim_Map1f
.ent __glim_Map1f
__glim_Map1f:
    # Line 214
    li	$v0,1
    # Line 211
    addiu	$sp,$sp,-112
    sd	$ra,48($sp)
    sd	$s2,32($sp)
    # Line 214
    lw	$s2,__glCurrentContext
    sd	$a5,0($sp)
    sd	$s1,8($sp)
    # Line 211
    move	$s1,$a4
    sd	$s3,40($sp)
    move	$s3,$a3
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$gp,24($sp)
    # Line 214
    lw	$at,__glBeginMode
    # Line 211
    lui	$v1,0xc
    addiu	$v1,$v1,5456
    # Line 214
    beq	$at,$v0,.L0db3d248
    # Line 211
    addu	$gp,$t9,$v1
    # Line 216
    move	$a0,$s2
    move	$a1,$s0
    # lw $t9, -27052($gp) # &__glSetUpMap1
    move	$a2,$s1
    mov.s	$f15,$f13
    bal __glSetUpMap1
    mov.s	$f16,$f14
    beqz	$v0,.L0db3d22c
    ld	$ra,48($sp)
    # Line 218
    lw	$a0,0($v0)
    slt	$a6,$s3,$a0
    beqz	$a6,.L0db3d1ec
    # Line 221
    nop	# was lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    li	$a0,1281
    ld	$gp,24($sp)
    # Line 222
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$ra,48($sp)
    ld	$s2,32($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db3d1ec:
    # Line 225
    move	$a1,$s1
    move	$a2,$s3
    ld	$a3,0($sp)
    # lw $t9, -27076($gp) # &__glFillMap1f
    sll	$a4,$s0,0x2
    addu	$a4,$a4,$s2
    bal __glFillMap1f
    lw	$a4,14976($a4)
    ld	$gp,24($sp)
    # Line 226
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$ra,48($sp)
    ld	$s2,32($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db3d22c:
    ld	$gp,24($sp)
    # Line 218
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,32($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db3d248:
    # Line 214
    # lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$ra,48($sp)
    ld	$s2,32($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glim_Map1f

# Function: __glim_Map2d
# Declared: Line 228 (Source lines: 234-254)
# Address: 0x0db3d274 - 0x0db3d3f8 (Size: 388 bytes, Frame: 128)
.globl __glim_Map2d
.ent __glim_Map2d
__glim_Map2d:
    # Line 234
    mov.d	$f5,$f18
    mov.d	$f4,$f17
    # Line 237
    li	$v0,1
    # Line 234
    addiu	$sp,$sp,-128
    sd	$ra,56($sp)
    sd	$s2,40($sp)
    # Line 237
    lw	$s2,__glCurrentContext
    sd	$a7,8($sp)
    sd	$s1,16($sp)
    # Line 234
    move	$s1,$a4
    sd	$s3,48($sp)
    move	$s3,$a3
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$gp,32($sp)
    # Line 237
    lw	$at,__glBeginMode
    # Line 234
    lui	$v1,0xc
    addiu	$v1,$v1,5156
    # Line 237
    beq	$at,$v0,.L0db3d3cc
    # Line 234
    addu	$gp,$t9,$v1
    # Line 239
    cvt.s.d	$f19,$f5
    cvt.s.d	$f18,$f4
    cvt.s.d	$f17,$f14
    cvt.s.d	$f16,$f13
    move	$a2,$s1
    move	$a1,$s0
    # lw $t9, -27048($gp) # &__glSetUpMap2
    lw	$a3,132($sp)
    move	$a0,$s2
    bal __glSetUpMap2
    sd	$a3,0($sp)
    beqz	$v0,.L0db3d384
    ld	$ra,56($sp)
    # Line 241
    lw	$a0,0($v0)
    slt	$a5,$s3,$a0
    bnez	$a5,.L0db3d3a0
    ld	$a6,8($sp)
    # Line 245
    slt	$a6,$a6,$a0
    beqz	$a6,.L0db3d33c
    # Line 248
    nop	# was lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    li	$a0,1281
    ld	$gp,32($sp)
    # Line 249
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$ra,56($sp)
    ld	$s2,40($sp)
    ld	$s3,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db3d33c:
    # Line 252
    move	$a1,$s1
    ld	$a2,0($sp)
    move	$a3,$s3
    ld	$a4,8($sp)
    lw	$a5,140($sp)
    # lw $t9, -27060($gp) # &__glFillMap2d
    sll	$a6,$s0,0x2
    addu	$a6,$a6,$s2
    bal __glFillMap2d
    lw	$a6,14884($a6)
    ld	$gp,32($sp)
    # Line 254
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$ra,56($sp)
    ld	$s2,40($sp)
    ld	$s3,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db3d384:
    ld	$gp,32($sp)
    # Line 241
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,40($sp)
    ld	$s3,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db3d3a0:
    # Line 244
    # lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    li	$a0,1281
    ld	$gp,32($sp)
    # Line 245
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$ra,56($sp)
    ld	$s2,40($sp)
    ld	$s3,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db3d3cc:
    # Line 237
    # lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$gp,32($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$ra,56($sp)
    ld	$s2,40($sp)
    ld	$s3,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glim_Map2d

# Function: __glim_Map2f
# Declared: Line 256 (Source lines: 262-282)
# Address: 0x0db3d3f8 - 0x0db3d578 (Size: 384 bytes, Frame: 128)
.globl __glim_Map2f
.ent __glim_Map2f
__glim_Map2f:
    # Line 262
    mov.s	$f19,$f18
    mov.s	$f4,$f17
    # Line 265
    li	$v0,1
    # Line 262
    addiu	$sp,$sp,-128
    sd	$ra,56($sp)
    sd	$s2,40($sp)
    # Line 265
    lw	$s2,__glCurrentContext
    sd	$a7,8($sp)
    sd	$s1,16($sp)
    # Line 262
    move	$s1,$a4
    sd	$s3,48($sp)
    move	$s3,$a3
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$gp,32($sp)
    # Line 265
    lw	$at,__glBeginMode
    # Line 262
    lui	$v1,0xc
    addiu	$v1,$v1,4768
    # Line 265
    beq	$at,$v0,.L0db3d54c
    # Line 262
    addu	$gp,$t9,$v1
    # Line 267
    mov.s	$f18,$f4
    mov.s	$f17,$f14
    mov.s	$f16,$f13
    move	$a2,$s1
    move	$a1,$s0
    # lw $t9, -27048($gp) # &__glSetUpMap2
    lw	$a3,132($sp)
    move	$a0,$s2
    bal __glSetUpMap2
    sd	$a3,0($sp)
    beqz	$v0,.L0db3d504
    ld	$ra,56($sp)
    # Line 269
    lw	$a0,0($v0)
    slt	$a5,$s3,$a0
    bnez	$a5,.L0db3d520
    ld	$a6,8($sp)
    # Line 273
    slt	$a6,$a6,$a0
    beqz	$a6,.L0db3d4bc
    # Line 276
    nop	# was lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    li	$a0,1281
    ld	$gp,32($sp)
    # Line 277
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$ra,56($sp)
    ld	$s2,40($sp)
    ld	$s3,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db3d4bc:
    # Line 280
    move	$a1,$s1
    ld	$a2,0($sp)
    move	$a3,$s3
    ld	$a4,8($sp)
    lw	$a5,140($sp)
    # lw $t9, -27064($gp) # &__glFillMap2f
    sll	$a6,$s0,0x2
    addu	$a6,$a6,$s2
    bal __glFillMap2f
    lw	$a6,14884($a6)
    ld	$gp,32($sp)
    # Line 282
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$ra,56($sp)
    ld	$s2,40($sp)
    ld	$s3,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db3d504:
    ld	$gp,32($sp)
    # Line 269
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,40($sp)
    ld	$s3,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db3d520:
    # Line 272
    # lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    li	$a0,1281
    ld	$gp,32($sp)
    # Line 273
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$ra,56($sp)
    ld	$s2,40($sp)
    ld	$s3,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db3d54c:
    # Line 265
    # lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$gp,32($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$ra,56($sp)
    ld	$s2,40($sp)
    ld	$s3,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glim_Map2f

# Function: __glim_EvalCoord1d
# Declared: Line 284 (Source lines: 285-288)
# Address: 0x0db3d578 - 0x0db3d5b0 (Size: 56 bytes, Frame: 32)
.globl __glim_EvalCoord1d
.ent __glim_EvalCoord1d
__glim_EvalCoord1d:
    # Line 285
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0xc
    # Line 286
    lw	$a0,__glCurrentContext
    # Line 285
    addiu	$at,$at,4384
    addu	$gp,$t9,$at
    # Line 287
    lw	$t9,12060($a0)
    sd	$ra,0($sp)
    jalr	$t9
    cvt.s.d	$f13,$f12
    # Line 288
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_EvalCoord1d

# Function: __glim_EvalCoord1dv
# Declared: Line 290 (Source lines: 291-294)
# Address: 0x0db3d5b0 - 0x0db3d5f0 (Size: 64 bytes, Frame: 32)
.globl __glim_EvalCoord1dv
.ent __glim_EvalCoord1dv
__glim_EvalCoord1dv:
    # Line 291
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$v0,0xc
    move	$at,$a0
    # Line 292
    lw	$a0,__glCurrentContext
    # Line 291
    addiu	$v0,$v0,4328
    addu	$gp,$t9,$v0
    # Line 293
    lw	$t9,12060($a0)
    ldc1	$f13,0($at)
    sd	$ra,0($sp)
    jalr	$t9
    cvt.s.d	$f13,$f13
    # Line 294
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_EvalCoord1dv

# Function: __glim_EvalCoord1f
# Declared: Line 296 (Source lines: 297-300)
# Address: 0x0db3d5f0 - 0x0db3d628 (Size: 56 bytes, Frame: 32)
.globl __glim_EvalCoord1f
.ent __glim_EvalCoord1f
__glim_EvalCoord1f:
    # Line 297
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0xc
    # Line 298
    lw	$a0,__glCurrentContext
    # Line 297
    addiu	$at,$at,4264
    addu	$gp,$t9,$at
    # Line 299
    lw	$t9,12060($a0)
    sd	$ra,0($sp)
    jalr	$t9
    # Line 297
    mov.s	$f13,$f12
    # Line 300
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_EvalCoord1f

# Function: __glim_EvalCoord1fv
# Declared: Line 302 (Source lines: 303-306)
# Address: 0x0db3d628 - 0x0db3d664 (Size: 60 bytes, Frame: 32)
.globl __glim_EvalCoord1fv
.ent __glim_EvalCoord1fv
__glim_EvalCoord1fv:
    # Line 303
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$v0,0xc
    move	$at,$a0
    # Line 304
    lw	$a0,__glCurrentContext
    # Line 303
    addiu	$v0,$v0,4208
    addu	$gp,$t9,$v0
    # Line 305
    lw	$t9,12060($a0)
    sd	$ra,0($sp)
    jalr	$t9
    lwc1	$f13,0($at)
    # Line 306
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_EvalCoord1fv

# Function: __glim_EvalCoord2d
# Declared: Line 308 (Source lines: 309-312)
# Address: 0x0db3d664 - 0x0db3d6a4 (Size: 64 bytes, Frame: 32)
.globl __glim_EvalCoord2d
.ent __glim_EvalCoord2d
__glim_EvalCoord2d:
    # Line 309
    mov.d	$f14,$f13
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0xc
    # Line 310
    lw	$a0,__glCurrentContext
    # Line 309
    addiu	$at,$at,4148
    addu	$gp,$t9,$at
    # Line 311
    lw	$t9,12064($a0)
    cvt.s.d	$f13,$f12
    sd	$ra,0($sp)
    jalr	$t9
    cvt.s.d	$f14,$f14
    # Line 312
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_EvalCoord2d

# Function: __glim_EvalCoord2dv
# Declared: Line 314 (Source lines: 315-318)
# Address: 0x0db3d6a4 - 0x0db3d6ec (Size: 72 bytes, Frame: 32)
.globl __glim_EvalCoord2dv
.ent __glim_EvalCoord2dv
__glim_EvalCoord2dv:
    # Line 317
    ldc1	$f14,8($a0)
    cvt.s.d	$f14,$f14
    # Line 315
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$v0,0xc
    move	$at,$a0
    # Line 316
    lw	$a0,__glCurrentContext
    # Line 315
    addiu	$v0,$v0,4084
    addu	$gp,$t9,$v0
    # Line 317
    lw	$t9,12064($a0)
    ldc1	$f13,0($at)
    sd	$ra,0($sp)
    jalr	$t9
    cvt.s.d	$f13,$f13
    # Line 318
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_EvalCoord2dv

# Function: __glim_EvalCoord2f
# Declared: Line 320 (Source lines: 321-324)
# Address: 0x0db3d6ec - 0x0db3d72c (Size: 64 bytes, Frame: 32)
.globl __glim_EvalCoord2f
.ent __glim_EvalCoord2f
__glim_EvalCoord2f:
    # Line 321
    mov.s	$f0,$f12
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0xc
    # Line 322
    lw	$a0,__glCurrentContext
    # Line 321
    addiu	$at,$at,4012
    addu	$gp,$t9,$at
    # Line 323
    lw	$t9,12064($a0)
    # Line 321
    mov.s	$f14,$f13
    sd	$ra,0($sp)
    # Line 323
    jalr	$t9
    mov.s	$f13,$f12
    # Line 324
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_EvalCoord2f

# Function: __glim_EvalCoord2fv
# Declared: Line 326 (Source lines: 327-330)
# Address: 0x0db3d72c - 0x0db3d76c (Size: 64 bytes, Frame: 32)
.globl __glim_EvalCoord2fv
.ent __glim_EvalCoord2fv
__glim_EvalCoord2fv:
    # Line 327
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$v0,0xc
    move	$at,$a0
    # Line 328
    lw	$a0,__glCurrentContext
    # Line 327
    addiu	$v0,$v0,3948
    addu	$gp,$t9,$v0
    # Line 329
    lw	$t9,12064($a0)
    lwc1	$f14,4($at)
    sd	$ra,0($sp)
    jalr	$t9
    lwc1	$f13,0($at)
    # Line 330
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_EvalCoord2fv

# Function: __glim_MapGrid1d
# Declared: Line 332 (Source lines: 333-339)
# Address: 0x0db3d76c - 0x0db3d7d0 (Size: 100 bytes, Frame: 48)
.globl __glim_MapGrid1d
.ent __glim_MapGrid1d
__glim_MapGrid1d:
    # Line 334
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 333
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 334
    lw	$at,__glBeginMode
    # Line 333
    lui	$v1,0xc
    addiu	$v1,$v1,3884
    # Line 334
    beq	$at,$v0,.L0db3d7b0
    # Line 333
    addu	$gp,$t9,$v1
    # Line 337
    cvt.s.d	$f1,$f14
    # Line 338
    sw	$a0,1836($a2)
    ld	$gp,0($sp)
    # Line 336
    cvt.s.d	$f0,$f13
    # Line 339
    addiu	$sp,$sp,48
    # Line 337
    swc1	$f1,1828($a2)
    # Line 339
    jr	$ra
    # Line 336
    swc1	$f0,1824($a2)
.L0db3d7b0:
    # Line 334
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    bal __glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_MapGrid1d

# Function: __glim_MapGrid1f
# Declared: Line 341 (Source lines: 342-348)
# Address: 0x0db3d7d0 - 0x0db3d82c (Size: 92 bytes, Frame: 48)
.globl __glim_MapGrid1f
.ent __glim_MapGrid1f
__glim_MapGrid1f:
    # Line 343
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 342
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 343
    lw	$at,__glBeginMode
    # Line 342
    lui	$v1,0xc
    addiu	$v1,$v1,3784
    # Line 343
    beq	$at,$v0,.L0db3d80c
    # Line 342
    addu	$gp,$t9,$v1
    # Line 347
    sw	$a0,1836($a2)
    # Line 346
    swc1	$f14,1828($a2)
    # Line 345
    swc1	$f13,1824($a2)
    ld	$gp,0($sp)
    # Line 348
    jr	$ra
    addiu	$sp,$sp,48
.L0db3d80c:
    # Line 343
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    bal __glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_MapGrid1f

# Function: __glim_MapGrid2d
# Declared: Line 350 (Source lines: 352-361)
# Address: 0x0db3d82c - 0x0db3d8a4 (Size: 120 bytes, Frame: 192)
.globl __glim_MapGrid2d
.ent __glim_MapGrid2d
__glim_MapGrid2d:
    # Line 353
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 352
    addiu	$sp,$sp,-64
    sd	$gp,0($sp)
    # Line 353
    lw	$at,__glBeginMode
    # Line 352
    lui	$v1,0xc
    addiu	$v1,$v1,3692
    # Line 353
    beq	$at,$v0,.L0db3d884
    # Line 352
    addu	$gp,$t9,$v1
    # Line 356
    cvt.s.d	$f1,$f14
    # Line 358
    cvt.s.d	$f2,$f16
    # Line 360
    sw	$a3,1868($a2)
    # Line 357
    sw	$a0,1852($a2)
    # Line 359
    cvt.s.d	$f3,$f17
    ld	$gp,0($sp)
    # Line 361
    addiu	$sp,$sp,64
    # Line 355
    cvt.s.d	$f0,$f13
    # Line 359
    swc1	$f3,1860($a2)
    # Line 358
    swc1	$f2,1856($a2)
    # Line 356
    swc1	$f1,1844($a2)
    # Line 361
    jr	$ra
    # Line 355
    swc1	$f0,1840($a2)
.L0db3d884:
    # Line 353
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    bal __glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_MapGrid2d

# Function: __glim_MapGrid2f
# Declared: Line 363 (Source lines: 365-374)
# Address: 0x0db3d8a4 - 0x0db3d90c (Size: 104 bytes, Frame: 192)
.globl __glim_MapGrid2f
.ent __glim_MapGrid2f
__glim_MapGrid2f:
    # Line 366
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 365
    addiu	$sp,$sp,-64
    sd	$gp,0($sp)
    # Line 366
    lw	$at,__glBeginMode
    # Line 365
    lui	$v1,0xc
    addiu	$v1,$v1,3572
    # Line 366
    beq	$at,$v0,.L0db3d8ec
    # Line 365
    addu	$gp,$t9,$v1
    # Line 373
    sw	$a3,1868($a2)
    # Line 372
    swc1	$f17,1860($a2)
    # Line 371
    swc1	$f16,1856($a2)
    # Line 370
    sw	$a0,1852($a2)
    # Line 369
    swc1	$f14,1844($a2)
    # Line 368
    swc1	$f13,1840($a2)
    ld	$gp,0($sp)
    # Line 374
    jr	$ra
    addiu	$sp,$sp,64
.L0db3d8ec:
    # Line 366
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    bal __glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_MapGrid2f

# Function: __glim_EvalMesh1
# Declared: Line 376 (Source lines: 377-391)
# Address: 0x0db3d90c - 0x0db3d9f4 (Size: 232 bytes, Frame: 208)
.globl __glim_EvalMesh1
.ent __glim_EvalMesh1
__glim_EvalMesh1:
    # Line 378
    lw	$a4,__glCurrentContext
    # Line 377
    addiu	$sp,$sp,-80
    sd	$gp,8($sp)
    # Line 378
    lw	$a5,__glBeginMode
    # Line 377
    lui	$at,0xc
    addiu	$at,$at,3468
    # Line 378
    beqz	$a5,.L0db3d990
    # Line 377
    addu	$gp,$t9,$at
    sd	$ra,16($sp)
    sd	$a0,40($sp)
    sd	$a4,0($sp)
    sd	$a2,32($sp)
    # Line 378
    li	$v0,2
    beq	$a5,$v0,.L0db3d964
    sd	$a1,24($sp)
    # lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db3d964:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11856($t9)
    jal	__glSetError
    nop
    sw	$zero,__glBeginMode
    ld	$a1,24($sp)
    ld	$a2,32($sp)
    ld	$a4,0($sp)
    ld	$a0,40($sp)
    ld	$ra,16($sp)
.L0db3d990:
    # Line 380
    li	$at,6913
    beq	$a0,$at,.L0db3d9dc
    li	$v0,6912
    beq	$a0,$v0,.L0db3d9c0
    sd	$ra,16($sp)
    # Line 388
    # lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    # Line 389
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db3d9c0:
    # Line 385
    # lw $t9, -27032($gp) # &__glEvalMesh1Point
    bal __glEvalMesh1Point
    move	$a0,$a4
    ld	$ra,16($sp)
.L0db3d9d0:
    ld	$gp,8($sp)
    # Line 391
    jr	$ra
    addiu	$sp,$sp,80
.L0db3d9dc:
    # Line 382
    # lw $t9, -27036($gp) # &__glEvalMesh1Line
    sd	$ra,16($sp)
    bal __glEvalMesh1Line
    move	$a0,$a4
    b	.L0db3d9d0
    ld	$ra,16($sp)
.end __glim_EvalMesh1

# Function: __glim_EvalPoint1
# Declared: Line 393 (Source lines: 394-402)
# Address: 0x0db3d9f4 - 0x0db3da70 (Size: 124 bytes, Frame: 32)
.globl __glim_EvalPoint1
.ent __glim_EvalPoint1
__glim_EvalPoint1:
    # Line 394
    addiu	$sp,$sp,-32
    # Line 397
    lw	$a2,__glCurrentContext
    sd	$gp,0($sp)
    # Line 394
    lui	$at,0xc
    # Line 397
    lw	$a3,1836($a2)
    # Line 394
    addiu	$at,$at,3236
    addu	$gp,$t9,$at
    # Line 397
    bne	$a3,$a0,.L0db3da24
    lwc1	$f4,1828($a2)
    sd	$ra,8($sp)
    # Line 401
    b	.L0db3da54
    mov.s	$f13,$f4
.L0db3da24:
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f0,1824($a2)
    sub.s	$f1,$f4,$f0
    div.s	$f1,$f1,$f2
    mtc1	$a0,$f13
    nop
    cvt.s.w	$f13,$f13
    mul.s	$f13,$f13,$f1
    sd	$ra,8($sp)
    add.s	$f13,$f13,$f0
.L0db3da54:
    lw	$t9,12060($a2)
    jalr	$t9
    move	$a0,$a2
    # Line 402
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_EvalPoint1

# Function: __glim_EvalMesh2
# Declared: Line 404 (Source lines: 407-424)
# Address: 0x0db3da70 - 0x0db3dbb4 (Size: 324 bytes, Frame: 240)
.globl __glim_EvalMesh2
.ent __glim_EvalMesh2
__glim_EvalMesh2:
    # Line 408
    lw	$a6,__glCurrentContext
    # Line 407
    move	$t0,$a3
    move	$a7,$a2
    addiu	$sp,$sp,-112
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$gp,8($sp)
    # Line 408
    lw	$t1,__glBeginMode
    # Line 407
    lui	$at,0xc
    addiu	$at,$at,3112
    # Line 408
    beqz	$t1,.L0db3db10
    # Line 407
    addu	$gp,$t9,$at
    sd	$ra,24($sp)
    sd	$a6,0($sp)
    sd	$a7,56($sp)
    sd	$a4,48($sp)
    sd	$t0,40($sp)
    # Line 408
    li	$v0,2
    beq	$t1,$v0,.L0db3dae0
    sd	$a1,32($sp)
    # lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db3dae0:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11856($t9)
    jal	__glSetError
    nop
    sw	$zero,__glBeginMode
    ld	$a1,32($sp)
    ld	$t0,40($sp)
    ld	$a4,48($sp)
    ld	$a7,56($sp)
    ld	$a6,0($sp)
    ld	$ra,24($sp)
.L0db3db10:
    # Line 410
    li	$at,6914
    beq	$s0,$at,.L0db3db74
    li	$v0,6913
    beq	$s0,$v0,.L0db3db94
    li	$v1,6912
    beq	$s0,$v1,.L0db3db4c
    sd	$ra,24($sp)
    # Line 421
    # lw $t9, -27320($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    # Line 422
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db3db4c:
    # Line 418
    # lw $t9, -27024($gp) # &__glEvalMesh2Point
    move	$a0,$a6
    move	$a2,$t0
    bal __glEvalMesh2Point
    move	$a3,$a7
    ld	$ra,24($sp)
.L0db3db64:
    ld	$gp,8($sp)
    # Line 424
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db3db74:
    # Line 412
    move	$a0,$a6
    # lw $t9, -27028($gp) # &__glEvalMesh2Fill
    move	$a2,$t0
    sd	$ra,24($sp)
    bal __glEvalMesh2Fill
    move	$a3,$a7
    b	.L0db3db64
    ld	$ra,24($sp)
.L0db3db94:
    # Line 415
    move	$a0,$a6
    # lw $t9, -27020($gp) # &__glEvalMesh2Line
    move	$a2,$t0
    sd	$ra,24($sp)
    bal __glEvalMesh2Line
    move	$a3,$a7
    b	.L0db3db64
    ld	$ra,24($sp)
.end __glim_EvalMesh2

# Function: __glim_EvalPoint2
# Declared: Line 426 (Source lines: 427-440)
# Address: 0x0db3dbb4 - 0x0db3dc70 (Size: 188 bytes, Frame: 32)
.globl __glim_EvalPoint2
.ent __glim_EvalPoint2
__glim_EvalPoint2:
    # Line 427
    addiu	$sp,$sp,-32
    # Line 432
    lw	$a3,__glCurrentContext
    sd	$gp,0($sp)
    # Line 427
    lui	$at,0xc
    # Line 432
    lw	$a4,1852($a3)
    # Line 427
    addiu	$at,$at,2788
    addu	$gp,$t9,$at
    # Line 432
    bne	$a4,$a0,.L0db3dbe0
    lwc1	$f4,1844($a3)
    # Line 438
    b	.L0db3dc0c
    mov.s	$f13,$f4
.L0db3dbe0:
    mtc1	$a4,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f0,1840($a3)
    sub.s	$f1,$f4,$f0
    div.s	$f1,$f1,$f2
    mtc1	$a0,$f13
    nop
    cvt.s.w	$f13,$f13
    mul.s	$f13,$f13,$f1
    add.s	$f13,$f13,$f0
.L0db3dc0c:
    lw	$a0,1868($a3)
    bne	$a0,$a1,.L0db3dc24
    lwc1	$f4,1860($a3)
    sd	$ra,8($sp)
    b	.L0db3dc54
    mov.s	$f14,$f4
.L0db3dc24:
    mtc1	$a0,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f0,1856($a3)
    sub.s	$f1,$f4,$f0
    div.s	$f1,$f1,$f2
    mtc1	$a1,$f14
    nop
    cvt.s.w	$f14,$f14
    mul.s	$f14,$f14,$f1
    sd	$ra,8($sp)
    add.s	$f14,$f14,$f0
.L0db3dc54:
    lw	$t9,12064($a3)
    jalr	$t9
    move	$a0,$a3
    # Line 440
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_EvalPoint2

# Function: __glFillMap1f
# Declared: Line 446 (Source lines: 448-466)
# Address: 0x0db3dc70 - 0x0db3dd90 (Size: 288 bytes, Frame: 208)
.globl __glFillMap1f
.ent __glFillMap1f
__glFillMap1f:
    # Line 448
    addiu	$sp,$sp,-80
    sd	$s0,16($sp)
    move	$s0,$a3
    sd	$s1,8($sp)
    move	$s1,$a4
    sd	$gp,0($sp)
    lui	$at,0xc
    addiu	$at,$at,2600
    beq	$a0,$a2,.L0db3dd54
    addu	$gp,$t9,$at
    # Line 459
    blez	$a1,.L0db3dd40
    move	$a7,$zero
    sll	$t0,$a0,0x2
    b	.L0db3dd00
    sll	$t3,$a2,0x2
    move	$t2,$a2
.L0db3dcb0:
    sra	$v0,$t1,0x2
    beqz	$v0,.L0db3dcf0
    move	$a6,$a3
    move	$a3,$t2
    move	$a2,$a6
.L0db3dcc4:
    # Line 461
    lwc1	$f3,0($a2)
    swc1	$f3,0($a3)
    lwc1	$f2,4($a2)
    swc1	$f2,4($a3)
    lwc1	$f1,8($a2)
    swc1	$f1,8($a3)
    # Line 460
    addiu	$a3,$a3,16
    # Line 461
    lwc1	$f0,12($a2)
    # Line 460
    addiu	$a2,$a2,16
    bne	$a2,$a4,.L0db3dcc4
    # Line 461
    swc1	$f0,-4($a3)
.L0db3dcf0:
    # Line 459
    addiu	$a7,$a7,1
    # Line 464
    addu	$s1,$t0,$s1
    # Line 459
    beq	$a1,$a7,.L0db3dd40
    # Line 463
    addu	$s0,$t3,$s0
.L0db3dd00:
    # Line 459
    move	$a2,$s1
    andi	$a6,$a0,0x3
    blez	$a0,.L0db3dcf0
    move	$a3,$s0
    addu	$a4,$t0,$s0
    move	$t1,$a0
    beqz	$a6,.L0db3dcb0
    move	$t2,$a2
.L0db3dd20:
    # Line 460
    addiu	$a3,$a3,4
    addiu	$a2,$a2,4
    # Line 461
    lwc1	$f0,-4($a3)
    addi	$a6,$a6,-1
    bnez	$a6,.L0db3dd20
    swc1	$f0,-4($a2)
    b	.L0db3dcb0
    move	$t2,$a2
.L0db3dd40:
    ld	$gp,0($sp)
    # Line 466
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db3dd54:
    # Line 454
    # lw $t9, -27068($gp) # &__glMap1_size
    sd	$ra,24($sp)
    bal __glMap1_size
    nop
    # lw $t9, -17848($gp) # &memcpy
    move	$a0,$s1
    move	$a1,$s0
    jal	memcpy
    sll	$a2,$v0,0x2
    ld	$gp,0($sp)
    # Line 456
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glFillMap1f

# Function: __glFillMap1d
# Declared: Line 468 (Source lines: 470-480)
# Address: 0x0db3dd90 - 0x0db3de64 (Size: 212 bytes, Frame: 192)
.globl __glFillMap1d
.ent __glFillMap1d
__glFillMap1d:
    # Line 470
    addiu	$sp,$sp,-64
    # Line 473
    blez	$a1,.L0db3de5c
    move	$t1,$zero
    sll	$t8,$a0,0x2
    sll	$t9,$a2,0x3
    sll	$at,$a0,0x3
    b	.L0db3de30
    sd	$at,0($sp)
.L0db3ddb0:
    # Line 475
    ldc1	$f0,0($a6)
.L0db3ddb4:
    # Line 474
    addiu	$a6,$a6,8
    # Line 475
    cvt.s.d	$f0,$f0
    # Line 474
    addiu	$a2,$a2,4
    addi	$t0,$t0,-1
    bnez	$t0,.L0db3ddb0
    # Line 475
    swc1	$f0,-4($a2)
    move	$t3,$a2
.L0db3ddd0:
    sra	$v0,$t2,0x2
    beqz	$v0,.L0db3de20
    move	$t0,$a6
    move	$a6,$t3
    move	$a2,$t0
.L0db3dde4:
    ldc1	$f0,0($a2)
    cvt.s.d	$f0,$f0
    swc1	$f0,0($a6)
    ldc1	$f3,8($a2)
    cvt.s.d	$f3,$f3
    swc1	$f3,4($a6)
    ldc1	$f2,16($a2)
    cvt.s.d	$f2,$f2
    swc1	$f2,8($a6)
    ldc1	$f1,24($a2)
    cvt.s.d	$f1,$f1
    # Line 474
    addiu	$a6,$a6,16
    addiu	$a2,$a2,32
    bne	$a2,$a7,.L0db3dde4
    # Line 475
    swc1	$f1,-4($a6)
.L0db3de20:
    # Line 473
    addiu	$t1,$t1,1
    # Line 478
    addu	$a4,$t8,$a4
    # Line 473
    beq	$a1,$t1,.L0db3de5c
    # Line 477
    addu	$a3,$t9,$a3
.L0db3de30:
    # Line 473
    ld	$a7,0($sp)
    move	$a2,$a4
    blez	$a0,.L0db3de20
    move	$a6,$a3
    addu	$a7,$a7,$a3
    move	$t2,$a0
    andi	$t0,$a0,0x3
    beqz	$t0,.L0db3ddd0
    move	$t3,$a2
    b	.L0db3ddb4
    # Line 475
    ldc1	$f0,0($a6)
.L0db3de5c:
    # Line 480
    jr	$ra
    addiu	$sp,$sp,64
.end __glFillMap1d

# Function: __glMap1_size
# Declared: Line 482 (Source lines: 484-484)
# Address: 0x0db3de64 - 0x0db3de74 (Size: 16 bytes, Frame: 0)
.globl __glMap1_size
.ent __glMap1_size
__glMap1_size:
    # Line 484
    mult	$a0,$a1
    mflo	$v0
    jr	$ra
    nop
.end __glMap1_size

# Function: __glFillMap2f
# Declared: Line 487 (Source lines: 490-511)
# Address: 0x0db3de74 - 0x0db3dfdc (Size: 360 bytes, Frame: 240)
.globl __glFillMap2f
.ent __glFillMap2f
__glFillMap2f:
    # Line 490
    addiu	$sp,$sp,-112
    sd	$s0,16($sp)
    move	$s0,$a5
    sd	$s1,24($sp)
    move	$s1,$a6
    sd	$gp,32($sp)
    lui	$at,0xc
    addiu	$at,$at,2084
    bne	$a0,$a4,.L0db3deac
    addu	$gp,$t9,$at
    mult	$a0,$a2
    mflo	$v0
    beq	$v0,$a3,.L0db3dfa4
    # Line 496
    nop	# was lw $t9, -27056($gp) # &__glMap2_size
.L0db3deac:
    sd	$s8,0($sp)
    # Line 501
    blez	$a1,.L0db3df8c
    move	$s8,$zero
    mult	$a2,$a4
    sll	$t1,$a0,0x2
    sll	$t9,$a4,0x2
    mflo	$v1
    b	.L0db3dee8
    sd	$v1,8($sp)
.L0db3ded0:
    # Line 509
    ld	$a7,8($sp)
    # Line 501
    addiu	$s8,$s8,1
    # Line 509
    subu	$a7,$a3,$a7
    sll	$a7,$a7,0x2
    # Line 501
    beq	$a1,$s8,.L0db3df8c
    # Line 509
    addu	$s0,$a7,$s0
.L0db3dee8:
    # Line 502
    blez	$a2,.L0db3ded0
    move	$t0,$zero
    b	.L0db3df50
    move	$a6,$s1
    sra	$at,$t2,0x2
.L0db3defc:
    move	$t8,$a6
    beqz	$at,.L0db3df3c
    move	$t3,$a5
    move	$a6,$t8
    move	$a5,$t3
.L0db3df10:
    # Line 504
    lwc1	$f3,0($a5)
    swc1	$f3,0($a6)
    lwc1	$f2,4($a5)
    swc1	$f2,4($a6)
    lwc1	$f1,8($a5)
    swc1	$f1,8($a6)
    # Line 503
    addiu	$a6,$a6,16
    # Line 504
    lwc1	$f0,12($a5)
    # Line 503
    addiu	$a5,$a5,16
    bne	$a5,$a4,.L0db3df10
    # Line 504
    swc1	$f0,-4($a6)
.L0db3df3c:
    # Line 502
    addiu	$t0,$t0,1
    # Line 507
    addu	$s1,$t1,$s1
    # Line 502
    beq	$a2,$t0,.L0db3ded0
    # Line 506
    addu	$s0,$t9,$s0
    # Line 502
    move	$a6,$s1
.L0db3df50:
    andi	$t3,$a0,0x3
    blez	$a0,.L0db3df3c
    move	$a5,$s0
    addu	$a4,$t1,$s0
    move	$t2,$a0
    beqz	$t3,.L0db3defc
    sra	$at,$t2,0x2
.L0db3df6c:
    # Line 503
    addiu	$a5,$a5,4
    addiu	$a6,$a6,4
    # Line 504
    lwc1	$f0,-4($a5)
    addi	$t3,$t3,-1
    bnez	$t3,.L0db3df6c
    swc1	$f0,-4($a6)
    b	.L0db3defc
    sra	$at,$t2,0x2
.L0db3df8c:
    ld	$gp,32($sp)
    # Line 511
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db3dfa4:
    sd	$ra,40($sp)
    # Line 496
    bal __glMap2_size
    nop
    # lw $t9, -17848($gp) # &memcpy
    move	$a0,$s1
    move	$a1,$s0
    jal	memcpy
    sll	$a2,$v0,0x2
    ld	$gp,32($sp)
    # Line 498
    ld	$ra,40($sp)
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glFillMap2f

# Function: __glFillMap2d
# Declared: Line 513 (Source lines: 516-529)
# Address: 0x0db3dfdc - 0x0db3e100 (Size: 292 bytes, Frame: 240)
.globl __glFillMap2d
.ent __glFillMap2d
__glFillMap2d:
    # Line 519
    move	$t3,$zero
    # Line 516
    addiu	$sp,$sp,-112
    # Line 519
    blez	$a1,.L0db3e0f4
    sd	$s7,8($sp)
    mult	$a2,$a4
    sd	$s7,8($sp)
    sll	$at,$a0,0x3
    sll	$v1,$a4,0x3
    sll	$a7,$a0,0x2
    sd	$a7,24($sp)
    sd	$v1,32($sp)
    sd	$at,16($sp)
    mflo	$v0
    b	.L0db3e030
    sd	$v0,0($sp)
.L0db3e018:
    # Line 527
    ld	$at,0($sp)
    # Line 519
    addiu	$t3,$t3,1
    # Line 527
    subu	$at,$a3,$at
    sll	$at,$at,0x3
    # Line 519
    beq	$a1,$t3,.L0db3e0f4
    # Line 527
    addu	$a5,$at,$a5
.L0db3e030:
    # Line 520
    blez	$a2,.L0db3e018
    move	$t2,$zero
    b	.L0db3e0c8
    ld	$a4,16($sp)
.L0db3e040:
    # Line 522
    ldc1	$f0,0($t1)
.L0db3e044:
    # Line 521
    addiu	$t1,$t1,8
    # Line 522
    cvt.s.d	$f0,$f0
    # Line 521
    addiu	$t0,$t0,4
    addi	$t9,$t9,-1
    bnez	$t9,.L0db3e040
    # Line 522
    swc1	$f0,-4($t0)
    move	$s7,$t0
.L0db3e060:
    sra	$v0,$t8,0x2
    beqz	$v0,.L0db3e0b0
    move	$t9,$t1
    move	$t1,$s7
    move	$t0,$t9
.L0db3e074:
    ldc1	$f0,0($t0)
    cvt.s.d	$f0,$f0
    swc1	$f0,0($t1)
    ldc1	$f3,8($t0)
    cvt.s.d	$f3,$f3
    swc1	$f3,4($t1)
    ldc1	$f2,16($t0)
    cvt.s.d	$f2,$f2
    swc1	$f2,8($t1)
    ldc1	$f1,24($t0)
    cvt.s.d	$f1,$f1
    # Line 521
    addiu	$t1,$t1,16
    addiu	$t0,$t0,32
    bne	$t0,$a4,.L0db3e074
    # Line 522
    swc1	$f1,-4($t1)
.L0db3e0b0:
    # Line 520
    addiu	$t2,$t2,1
    ld	$a7,24($sp)
    # Line 524
    addu	$a5,$v1,$a5
    # Line 520
    beq	$a2,$t2,.L0db3e018
    # Line 525
    addu	$a6,$a7,$a6
    # Line 520
    ld	$a4,16($sp)
.L0db3e0c8:
    move	$t0,$a6
    blez	$a0,.L0db3e0b0
    # Line 524
    ld	$v1,32($sp)
    # Line 520
    addu	$a4,$a4,$a5
    move	$t8,$a0
    move	$t1,$a5
    andi	$t9,$a0,0x3
    beqz	$t9,.L0db3e060
    move	$s7,$t0
    b	.L0db3e044
    # Line 522
    ldc1	$f0,0($t1)
.L0db3e0f4:
    # Line 529
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glFillMap2d

# Function: __glMap2_size
# Declared: Line 531 (Source lines: 533-533)
# Address: 0x0db3e100 - 0x0db3e120 (Size: 32 bytes, Frame: 0)
.globl __glMap2_size
.ent __glMap2_size
__glMap2_size:
    # Line 533
    mult	$a0,$a1
    mflo	$at
    nop
    nop
    mult	$at,$a2
    mflo	$v0
    jr	$ra
    nop
.end __glMap2_size

# Function: __glSetUpMap1
# Declared: Line 539 (Source lines: 541-573)
# Address: 0x0db3e120 - 0x0db3e264 (Size: 324 bytes, Frame: 224)
.globl __glSetUpMap1
.ent __glSetUpMap1
__glSetUpMap1:
    # Line 541
    move	$a4,$a1
    addiu	$sp,$sp,-96
    sd	$s0,32($sp)
    move	$s0,$a0
    addiu	$a5,$a1,-3472
    sd	$gp,24($sp)
    lui	$at,0xc
    addiu	$at,$at,1400
    addu	$gp,$t9,$at
    # lw $t9, -32624($gp) # &sub_0dbf0000
    sltiu	$at,$a5,9
    sll	$a5,$a5,0x2
    addiu	$t9,$t9,-3048
    beqz	$at,.L0db3e23c
    addu	$a5,$a5,$t9
    # Line 562
    c.eq.s	$f15,$f16
    nop
    bc1t	.L0db3e18c
    # Line 563
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 562
    blez	$a2,.L0db3e18c
    # Line 563
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 562
    lw	$v0,3472($s0)
    sd	$ra,40($sp)
    slt	$v0,$v0,$a2
    beqz	$v0,.L0db3e1b0
    sd	$a4,16($sp)
    # Line 563
    # lw $t9, -27320($gp) # &__glSetError
.L0db3e18c:
    sd	$ra,40($sp)
    bal __glSetError
    li	$a0,1281
    # Line 564
    move	$v0,$zero
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db3e1b0:
    # Line 566
    ld	$a0,16($sp)
    # Line 569
    move	$a1,$a2
    # lw $t9, -27068($gp) # &__glMap1_size
    # Line 566
    sll	$v1,$a0,0x2
    subu	$v1,$v1,$a0
    lui	$a0,0xffff
    sll	$v1,$v1,0x3
    addu	$v1,$v1,$s0
    sd	$v1,0($sp)
    addu	$v1,$v1,$a0
    # Line 569
    lw	$a0,10496($v1)
    # Line 568
    swc1	$f16,10508($v1)
    # Line 567
    swc1	$f15,10504($v1)
    # Line 569
    bal __glMap1_size
    # Line 566
    sw	$a2,10500($v1)
    # Line 569
    sll	$a2,$v0,0x2
    ld	$a1,16($sp)
    move	$a0,$s0
    lw	$t9,8($s0)
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$s0
    sd	$a1,8($sp)
    jal	__glMap1_size
    lw	$a1,14976($a1)
    ld	$gp,24($sp)
    # Line 573
    ld	$s0,32($sp)
    lui	$v1,0xffff
    # Line 569
    ld	$a0,8($sp)
    # Line 573
    ori	$v1,$v1,0x2900
    ld	$ra,40($sp)
    # Line 569
    sw	$v0,14976($a0)
    # Line 573
    ld	$v0,0($sp)
    addiu	$sp,$sp,96
    jr	$ra
    addu	$v0,$v0,$v1
.L0db3e23c:
    # Line 559
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,40($sp)
    bal __glSetError
    li	$a0,1280
    # Line 560
    move	$v0,$zero
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glSetUpMap1

# Function: __glSetUpMap2
# Declared: Line 579 (Source lines: 583-621)
# Address: 0x0db3e264 - 0x0db3e3d0 (Size: 364 bytes, Frame: 240)
.globl __glSetUpMap2
.ent __glSetUpMap2
__glSetUpMap2:
    # Line 583
    move	$a6,$a2
    move	$a5,$a1
    addiu	$sp,$sp,-112
    sd	$s0,32($sp)
    move	$s0,$a0
    addiu	$a7,$a1,-3504
    sd	$gp,24($sp)
    lui	$at,0xc
    addiu	$at,$at,1076
    addu	$gp,$t9,$at
    # lw $t9, -32624($gp) # &sub_0dbf0000
    sltiu	$at,$a7,9
    sll	$a7,$a7,0x2
    addiu	$t9,$t9,-3008
    beqz	$at,.L0db3e3a8
    addu	$a7,$a7,$t9
    # Line 604
    blez	$a3,.L0db3e2e8
    # Line 607
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 604
    lw	$a0,3472($s0)
    slt	$v0,$a0,$a3
    bnez	$v0,.L0db3e2e8
    # Line 607
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 604
    blez	$a6,.L0db3e2e4
    slt	$v1,$a0,$a6
    bnez	$v1,.L0db3e2e4
    c.eq.s	$f16,$f17
    nop
    bc1t	.L0db3e2e4
    c.eq.s	$f18,$f19
    sd	$ra,40($sp)
    bc1f	.L0db3e30c
    sd	$a5,16($sp)
.L0db3e2e4:
    # Line 607
    # lw $t9, -27320($gp) # &__glSetError
.L0db3e2e8:
    sd	$ra,40($sp)
    bal __glSetError
    li	$a0,1281
    # Line 608
    move	$v0,$zero
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db3e30c:
    # Line 616
    move	$a2,$a3
    # Line 610
    ld	$a5,16($sp)
    # Line 616
    move	$a1,$a6
    # lw $t9, -27056($gp) # &__glMap2_size
    # Line 610
    sll	$a4,$a5,0x2
    addu	$a4,$a4,$a5
    lui	$a5,0xfffe
    sll	$a4,$a4,0x3
    addu	$a4,$a4,$s0
    sd	$a4,0($sp)
    addu	$a4,$a4,$a5
    # Line 616
    lw	$a0,19416($a4)
    # Line 615
    swc1	$f19,19440($a4)
    # Line 614
    swc1	$f18,19436($a4)
    # Line 613
    swc1	$f17,19432($a4)
    # Line 612
    swc1	$f16,19428($a4)
    # Line 611
    sw	$a3,19424($a4)
    # Line 616
    bal __glMap2_size
    # Line 610
    sw	$a6,19420($a4)
    # Line 616
    sll	$a2,$v0,0x2
    ld	$a1,16($sp)
    move	$a0,$s0
    lw	$t9,8($s0)
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$s0
    sd	$a1,8($sp)
    jal	__glMap2_size
    lw	$a1,14884($a1)
    ld	$gp,24($sp)
    # Line 621
    ld	$s0,32($sp)
    lui	$v1,0xfffe
    # Line 616
    ld	$a0,8($sp)
    # Line 621
    ori	$v1,$v1,0x4bd8
    ld	$ra,40($sp)
    # Line 616
    sw	$v0,14884($a0)
    # Line 621
    ld	$v0,0($sp)
    addiu	$sp,$sp,112
    jr	$ra
    addu	$v0,$v0,$v1
.L0db3e3a8:
    # Line 601
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,40($sp)
    bal __glSetError
    li	$a0,1280
    # Line 602
    move	$v0,$zero
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glSetUpMap2

# Function: PreEvaluate
# Declared: Line 627 (Source lines: 628-658)
# Address: 0x0db3e3d0 - 0x0db3e50c (Size: 316 bytes, Frame: 0)
.ent PreEvaluate
PreEvaluate:
    # Line 628
    li	$at,1
    beq	$a0,$at,.L0db3e4fc
    lwc1	$f4,_lit_3f800000
    # Line 644
    sub.s	$f9,$f4,$f13
    # Line 645
    swc1	$f13,4($a2)
    li	$v0,2
    beq	$a0,$v0,.L0db3e504
    # Line 644
    swc1	$f9,0($a2)
    # Line 648
    slti	$v1,$a0,3
    bnez	$v1,.L0db3e4f4
    li	$a5,2
    li	$a7,8
    b	.L0db3e4bc
    li	$t0,1
.L0db3e408:
    # Line 653
    lwc1	$f1,0($a3)
.L0db3e40c:
    # Line 654
    mul.s	$f0,$f9,$f1
    # Line 651
    addiu	$a3,$a3,4
    # Line 654
    add.s	$f0,$f0,$f5
    addi	$a6,$a6,-1
    # Line 653
    mul.s	$f5,$f1,$f13
    bnez	$a6,.L0db3e408
    # Line 654
    swc1	$f0,-4($a3)
.L0db3e428:
    sra	$a1,$t1,0x2
    move	$a6,$a3
    beqz	$a1,.L0db3e49c
    mov.s	$f6,$f5
    move	$a3,$a6
    mov.s	$f4,$f6
.L0db3e440:
    # Line 653
    lwc1	$f6,12($a3)
    # Line 654
    mul.s	$f5,$f9,$f6
    # Line 653
    lwc1	$f3,8($a3)
    mul.s	$f0,$f3,$f13
    # Line 654
    mul.s	$f3,$f9,$f3
    # Line 653
    lwc1	$f2,4($a3)
    mul.s	$f8,$f2,$f13
    # Line 654
    mul.s	$f2,$f9,$f2
    # Line 653
    lwc1	$f1,0($a3)
    mul.s	$f7,$f1,$f13
    # Line 654
    add.s	$f5,$f5,$f0
    mul.s	$f1,$f9,$f1
    add.s	$f3,$f3,$f8
    add.s	$f2,$f2,$f7
    # Line 651
    addiu	$a3,$a3,16
    # Line 654
    add.s	$f1,$f1,$f4
    # Line 653
    mul.s	$f4,$f6,$f13
    # Line 654
    swc1	$f5,-4($a3)
    swc1	$f3,-8($a3)
    swc1	$f2,-12($a3)
    # Line 651
    bne	$a3,$a4,.L0db3e440
    # Line 654
    swc1	$f1,-16($a3)
    mov.s	$f5,$f4
.L0db3e49c:
    # Line 651
    move	$a3,$a5
.L0db3e4a0:
    # Line 648
    addiu	$t0,$t0,1
    addiu	$a7,$a7,4
    addiu	$a5,$a5,1
    # Line 656
    sll	$at,$a3,0x2
    addu	$at,$at,$a2
    # Line 648
    beq	$a0,$a5,.L0db3e4f4
    # Line 656
    swc1	$f5,0($at)
.L0db3e4bc:
    # Line 649
    lwc1	$f5,0($a2)
    # Line 651
    li	$a3,1
    # Line 650
    mul.s	$f0,$f5,$f9
    # Line 651
    addu	$a4,$a7,$a2
    move	$t1,$t0
    andi	$a6,$t0,0x3
    slti	$v0,$a5,2
    # Line 649
    mul.s	$f5,$f5,$f13
    # Line 651
    bnez	$v0,.L0db3e4a0
    # Line 650
    swc1	$f0,0($a2)
    beqz	$a6,.L0db3e428
    # Line 651
    addiu	$a3,$a2,4
    b	.L0db3e40c
    # Line 653
    lwc1	$f1,0($a3)
.L0db3e4f4:
    # Line 658
    jr	$ra
    nop
.L0db3e4fc:
    # Line 640
    jr	$ra
    # Line 639
    swc1	$f4,0($a2)
.L0db3e504:
    # Line 646
    jr	$ra
    nop
.end PreEvaluate

# Function: PreEvaluateWithDeriv
# Declared: Line 663 (Source lines: 665-720)
# Address: 0x0db3e50c - 0x0db3e7fc (Size: 752 bytes, Frame: 0)
.ent PreEvaluateWithDeriv
PreEvaluateWithDeriv:
    # Line 665
    li	$at,1
    beq	$a0,$at,.L0db3e7ec
    lwc1	$f4,_lit_3f800000
    # Line 679
    li	$v0,2
    beq	$a0,$v0,.L0db3e7d4
    sub.s	$f9,$f4,$f13
    # Line 687
    mov.s	$f4,$f9
    # Line 689
    li	$a6,2
    # Line 688
    swc1	$f13,4($a2)
    # Line 689
    slti	$v1,$a0,4
    bnez	$v1,.L0db3e7cc
    # Line 687
    swc1	$f9,0($a2)
    # Line 689
    addiu	$t3,$a0,-1
    li	$t0,8
    b	.L0db3e600
    li	$t1,1
.L0db3e54c:
    # Line 694
    lwc1	$f1,0($a4)
.L0db3e550:
    # Line 695
    mul.s	$f0,$f9,$f1
    # Line 692
    addiu	$a4,$a4,4
    # Line 695
    add.s	$f0,$f0,$f5
    addi	$a7,$a7,-1
    # Line 694
    mul.s	$f5,$f1,$f13
    bnez	$a7,.L0db3e54c
    # Line 695
    swc1	$f0,-4($a4)
.L0db3e56c:
    sra	$a1,$t2,0x2
    move	$a7,$a4
    beqz	$a1,.L0db3e5e0
    mov.s	$f6,$f5
    move	$a4,$a7
    mov.s	$f4,$f6
.L0db3e584:
    # Line 694
    lwc1	$f6,12($a4)
    # Line 695
    mul.s	$f5,$f9,$f6
    # Line 694
    lwc1	$f3,8($a4)
    mul.s	$f0,$f3,$f13
    # Line 695
    mul.s	$f3,$f9,$f3
    # Line 694
    lwc1	$f2,4($a4)
    mul.s	$f8,$f2,$f13
    # Line 695
    mul.s	$f2,$f9,$f2
    # Line 694
    lwc1	$f1,0($a4)
    mul.s	$f7,$f1,$f13
    # Line 695
    add.s	$f5,$f5,$f0
    mul.s	$f1,$f9,$f1
    add.s	$f3,$f3,$f8
    add.s	$f2,$f2,$f7
    # Line 692
    addiu	$a4,$a4,16
    # Line 695
    add.s	$f1,$f1,$f4
    # Line 694
    mul.s	$f4,$f6,$f13
    # Line 695
    swc1	$f5,-4($a4)
    swc1	$f3,-8($a4)
    swc1	$f2,-12($a4)
    # Line 692
    bne	$a4,$a5,.L0db3e584
    # Line 695
    swc1	$f1,-16($a4)
    mov.s	$f5,$f4
.L0db3e5e0:
    # Line 692
    move	$a4,$a6
.L0db3e5e4:
    # Line 689
    addiu	$t1,$t1,1
    addiu	$t0,$t0,4
    addiu	$a6,$a6,1
    # Line 697
    sll	$at,$a4,0x2
    addu	$at,$at,$a2
    # Line 689
    beq	$t3,$a6,.L0db3e638
    # Line 697
    swc1	$f5,0($at)
.L0db3e600:
    # Line 690
    lwc1	$f5,0($a2)
    # Line 692
    li	$a4,1
    # Line 691
    mul.s	$f0,$f5,$f9
    # Line 692
    addu	$a5,$t0,$a2
    move	$t2,$t1
    andi	$a7,$t1,0x3
    slti	$v0,$a6,2
    # Line 690
    mul.s	$f5,$f5,$f13
    # Line 692
    bnez	$v0,.L0db3e5e4
    # Line 691
    swc1	$f0,0($a2)
    beqz	$a7,.L0db3e56c
    # Line 692
    addiu	$a4,$a2,4
    b	.L0db3e550
    # Line 694
    lwc1	$f1,0($a4)
.L0db3e638:
    # Line 689
    move	$a6,$t3
    lwc1	$f4,0($a2)
.L0db3e640:
    # Line 699
    addiu	$t1,$a0,-2
    li	$t0,1
    slt	$a7,$t1,$t0
    beqzl	$a7,.L0db3e654
    move	$t0,$t1
.L0db3e654:
    addiu	$a7,$a3,4
    sll	$a5,$t3,0x2
    addu	$a5,$a5,$a2
    addiu	$t8,$a2,4
    move	$a4,$t8
    neg.s	$f0,$f4
    move	$t1,$t0
    andi	$v1,$t0,0x1
    beqz	$v1,.L0db3e694
    swc1	$f0,0($a3)
    # Line 707
    lwc1	$f1,-4($a4)
    lwc1	$f2,0($a4)
    sub.s	$f1,$f1,$f2
    # Line 708
    addiu	$a4,$a4,4
    addiu	$a7,$a7,4
    # Line 707
    swc1	$f1,-4($a7)
.L0db3e694:
    move	$t3,$a7
    sra	$at,$t1,0x1
    beqz	$at,.L0db3e6dc
    move	$t2,$a4
    move	$a4,$t3
    move	$a0,$t2
.L0db3e6ac:
    lwc1	$f1,-4($a0)
    lwc1	$f2,0($a0)
    sub.s	$f1,$f1,$f2
    swc1	$f1,0($a4)
    lwc1	$f3,0($a0)
    lwc1	$f0,4($a0)
    # Line 708
    addiu	$a4,$a4,8
    # Line 707
    sub.s	$f3,$f3,$f0
    # Line 708
    addiu	$a0,$a0,8
    sltu	$v0,$a0,$a5
    bnez	$v0,.L0db3e6ac
    # Line 707
    swc1	$f3,-4($a4)
.L0db3e6dc:
    # Line 710
    sll	$a1,$t0,0x2
    addu	$a4,$a1,$a2
    lwc1	$f0,0($a4)
    addu	$a1,$a1,$a3
    swc1	$f0,4($a1)
    # Line 712
    lwc1	$f5,0($a2)
    # Line 713
    mul.s	$f3,$f5,$f9
    # Line 714
    li	$a4,1
    slti	$v1,$a6,2
    # Line 712
    mul.s	$f5,$f5,$f13
    # Line 714
    bnez	$v1,.L0db3e7bc
    # Line 713
    swc1	$f3,0($a2)
    # Line 714
    move	$a4,$t8
    sll	$a5,$a6,0x2
    addiu	$a3,$a6,-1
    andi	$a0,$a3,0x3
    beqz	$a0,.L0db3e744
    addu	$a5,$a5,$a2
.L0db3e724:
    # Line 716
    lwc1	$f2,0($a4)
    # Line 717
    mul.s	$f1,$f9,$f2
    # Line 714
    addiu	$a4,$a4,4
    # Line 717
    add.s	$f1,$f1,$f5
    addi	$a0,$a0,-1
    # Line 716
    mul.s	$f5,$f2,$f13
    bnez	$a0,.L0db3e724
    # Line 717
    swc1	$f1,-4($a4)
.L0db3e744:
    move	$a7,$a4
    sra	$at,$a3,0x2
    beqz	$at,.L0db3e7b8
    mov.s	$f6,$f5
    move	$a0,$a7
    mov.s	$f4,$f6
.L0db3e75c:
    # Line 716
    lwc1	$f7,12($a0)
    # Line 717
    mul.s	$f6,$f9,$f7
    # Line 716
    lwc1	$f5,8($a0)
    mul.s	$f1,$f5,$f13
    # Line 717
    mul.s	$f5,$f9,$f5
    # Line 716
    lwc1	$f3,4($a0)
    mul.s	$f0,$f3,$f13
    # Line 717
    mul.s	$f3,$f9,$f3
    # Line 716
    lwc1	$f2,0($a0)
    mul.s	$f8,$f2,$f13
    # Line 717
    add.s	$f6,$f6,$f1
    mul.s	$f2,$f9,$f2
    add.s	$f5,$f5,$f0
    add.s	$f3,$f3,$f8
    # Line 714
    addiu	$a0,$a0,16
    # Line 717
    add.s	$f2,$f2,$f4
    # Line 716
    mul.s	$f4,$f7,$f13
    # Line 717
    swc1	$f6,-4($a0)
    swc1	$f5,-8($a0)
    swc1	$f3,-12($a0)
    # Line 714
    bne	$a0,$a5,.L0db3e75c
    # Line 717
    swc1	$f2,-16($a0)
    mov.s	$f5,$f4
.L0db3e7b8:
    # Line 714
    move	$a4,$a6
.L0db3e7bc:
    # Line 719
    sll	$v0,$a4,0x2
    addu	$v0,$v0,$a2
    # Line 720
    jr	$ra
    # Line 719
    swc1	$f5,0($v0)
.L0db3e7cc:
    b	.L0db3e640
    # Line 689
    addiu	$t3,$a0,-1
.L0db3e7d4:
    # Line 681
    lwc1	$f0,_lit_bf800000
    # Line 682
    swc1	$f4,4($a3)
    # Line 681
    swc1	$f0,0($a3)
    # Line 684
    swc1	$f13,4($a2)
    # Line 685
    jr	$ra
    # Line 683
    swc1	$f9,0($a2)
.L0db3e7ec:
    # Line 678
    mtc1	$zero,$f1
    # Line 677
    swc1	$f4,0($a2)
    # Line 679
    jr	$ra
    # Line 678
    swc1	$f1,0($a3)
.end PreEvaluateWithDeriv

# Function: DoDomain1
# Declared: Line 731 (Source lines: 733-761)
# Address: 0x0db3e7fc - 0x0db3e930 (Size: 308 bytes, Frame: 224)
.ent DoDomain1
DoDomain1:
    # Line 733
    lwc1	$f5,12($a2)
    lwc1	$f6,8($a2)
    addiu	$sp,$sp,-96
    sd	$s1,8($sp)
    c.eq.s	$f6,$f5
    move	$s1,$a0
    sd	$s0,16($sp)
    bc1t	.L0db3e920
    move	$s0,$a2
    # Line 741
    sub.s	$f4,$f13,$f6
    sub.s	$f0,$f5,$f6
    div.s	$f4,$f4,$f0
    # Line 744
    lwc1	$f0,756($s1)
    c.eq.s	$f0,$f4
    nop
    bc1f	.L0db3e84c
    lw	$a0,4($s0)
    lw	$at,1404($s1)
    beq	$at,$a0,.L0db3e894
    sdc1	$f4,0($sp)
.L0db3e84c:
    sd	$a4,32($sp)
    sd	$a3,24($sp)
    sdc1	$f4,0($sp)
    # Line 746
    # lw $t9, -32692($gp) # &sub_0db40000
    mov.s	$f13,$f4
    sd	$ra,40($sp)
    addiu	$t9,$t9,-7216
    bal __glSetUpMap2
    addiu	$a2,$s1,764
    ld	$a3,24($sp)
    # Line 747
    li	$at,2
    sw	$at,1412($s1)
    # Line 749
    ldc1	$f1,0($sp)
    # Line 748
    lw	$ra,4($s0)
    ld	$a4,32($sp)
    # Line 749
    swc1	$f1,756($s1)
    # Line 748
    sw	$ra,1404($s1)
    ld	$ra,40($sp)
.L0db3e894:
    # Line 752
    lw	$a2,0($s0)
    blez	$a2,.L0db3e910
    move	$a0,$a2
    mtc1	$zero,$f5
    move	$a5,$a3
    move	$a7,$a4
    sll	$a6,$a0,0x2
    b	.L0db3e8ec
    addu	$t0,$a6,$a4
.L0db3e8b8:
    # Line 757
    lwc1	$f2,0($a0)
    lwc1	$f3,764($a3)
    mul.s	$f2,$f2,$f3
    add.s	$f4,$f2,$f4
    swc1	$f4,0($a5)
    # Line 756
    lw	$v0,4($s0)
    addiu	$a3,$a3,4
    addiu	$a2,$a2,1
    slt	$v0,$a2,$v0
    bnez	$v0,.L0db3e8b8
    # Line 758
    addu	$a0,$a6,$a0
.L0db3e8e4:
    # Line 753
    beq	$a7,$t0,.L0db3e910
    addiu	$a5,$a5,4
.L0db3e8ec:
    # Line 755
    swc1	$f5,0($a5)
    mov.s	$f4,$f5
    # Line 756
    lw	$v1,4($s0)
    # Line 754
    move	$a0,$a7
    # Line 753
    addiu	$a7,$a7,4
    # Line 756
    blez	$v1,.L0db3e8e4
    move	$a2,$zero
    b	.L0db3e8b8
    move	$a3,$s1
.L0db3e910:
    # Line 761
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0db3e920:
    # Line 740
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end DoDomain1

# Function: DoEvalCoord1
# Declared: Line 763 (Source lines: 764-836)
# Address: 0x0db3e930 - 0x0db3ecb0 (Size: 896 bytes, Frame: 128)
.ent DoEvalCoord1
DoEvalCoord1:
    # Line 768
    li	$a3,177
    move	$a2,$zero
    addiu	$a4,$a0,28288
    # Line 764
    addiu	$sp,$sp,-1536
    sd	$s0,1496($sp)
    move	$s0,$a0
    sdc1	$f20,1488($sp)
    mov.s	$f20,$f13
    # Line 768
    addiu	$a5,$sp,0
    # Line 767
    lwc1	$f0,408($a0)
    lwc1	$f3,420($a0)
    lwc1	$f2,416($a0)
    lwc1	$f1,412($a0)
    sdc1	$f3,1472($sp)
    sdc1	$f2,1456($sp)
    sdc1	$f1,1464($sp)
    sdc1	$f0,1480($sp)
.L0db3e974:
    # Line 768
    addu	$v0,$a2,$a5
    addu	$at,$a2,$a4
    addiu	$a2,$a2,8
    ld	$at,0($at)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0db3e974
    sd	$at,0($v0)
    addu	$v1,$a2,$a4
    lw	$v1,0($v1)
    addu	$a0,$a2,$a5
    sw	$v1,0($a0)
    lbu	$v0,3105($s0)
    beqz	$v0,.L0db3ebe0
    lw	$a0,1712($s0)
    andi	$a1,$a0,0x2
    beqz	$a1,.L0db3eb90
    sd	$s1,1504($sp)
    # Line 772
    lw	$a4,28868($s0)
    addiu	$a3,$s0,168
    addiu	$a2,$s0,28312
    mov.s	$f13,$f20
    la	$s1,sub_0db40000
    addiu	$a0,$sp,0
    sd	$ra,1512($sp)
    addiu	$s1,$s1,-6148
    bal __glSetUpMap2
    move	$t9,$s1
    lw	$a0,1712($s0)
    ld	$ra,1512($sp)
.L0db3e9e8:
    # Line 784
    andi	$at,$a0,0x40
    beqz	$at,.L0db3eb08
    # Line 790
    andi	$v1,$a0,0x20
    lw	$a4,28888($s0)
    addiu	$a3,$s0,200
    addiu	$a2,$s0,28432
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    sd	$ra,1512($sp)
    bal __glSetUpMap2
    move	$t9,$s1
    lw	$a0,1712($s0)
    ld	$ra,1512($sp)
.L0db3ea1c:
    # Line 806
    andi	$v0,$a0,0x4
.L0db3ea20:
    beqz	$v0,.L0db3ea54
    # Line 810
    andi	$v1,$a0,0x100
    lw	$a4,28872($s0)
    addiu	$a3,$s0,184
    addiu	$a2,$s0,28336
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    sd	$ra,1512($sp)
    bal __glSetUpMap2
    move	$t9,$s1
    lw	$a0,1712($s0)
    ld	$ra,1512($sp)
    andi	$v1,$a0,0x100
.L0db3ea54:
    beqz	$v1,.L0db3eb44
    # Line 818
    andi	$a1,$a0,0x80
    # Line 817
    lw	$a4,28896($s0)
    addiu	$a3,$sp,1424
    addiu	$a2,$s0,28480
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    sd	$ra,1512($sp)
    bal __glSetUpMap2
    move	$t9,$s1
    # Line 818
    lw	$t9,5640($s0)
    lw	$t9,1560($t9)
    addiu	$a0,$sp,1424
    ldc1	$f20,1488($sp)
    jalr	$t9
    ld	$s1,1504($sp)
    lw	$a0,1712($s0)
    ld	$ra,1512($sp)
.L0db3ea9c:
    ldc1	$f20,1488($sp)
.L0db3eaa0:
    # Line 823
    andi	$at,$a0,0x1
    beqz	$at,.L0db3eafc
    ld	$s1,1504($sp)
    lw	$v0,1696($s0)
    andi	$v0,$v0,0x80
    beqzl	$v0,.L0db3eb00
    # Line 836
    ld	$s0,1496($sp)
    # Line 830
    lw	$t9,12072($s0)
    sd	$ra,1512($sp)
    jalr	$t9
    move	$a0,$s0
    # Line 834
    move	$a0,$s0
    # Line 833
    ldc1	$f4,1480($sp)
    # Line 834
    lw	$t9,12072($s0)
    # Line 833
    ldc1	$f7,1472($sp)
    ldc1	$f6,1456($sp)
    ldc1	$f5,1464($sp)
    swc1	$f7,420($s0)
    swc1	$f6,416($s0)
    swc1	$f5,412($s0)
    # Line 834
    jalr	$t9
    # Line 833
    swc1	$f4,408($s0)
    ld	$ra,1512($sp)
.L0db3eafc:
    # Line 836
    ld	$s0,1496($sp)
.L0db3eb00:
    jr	$ra
    addiu	$sp,$sp,1536
.L0db3eb08:
    # Line 790
    beqz	$v1,.L0db3eb9c
    # Line 795
    andi	$at,$a0,0x10
    # Line 793
    lw	$a4,28884($s0)
    addiu	$a3,$s0,200
    addiu	$a2,$s0,28408
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    sd	$ra,1512($sp)
    bal __glSetUpMap2
    move	$t9,$s1
    # Line 795
    lw	$a0,1712($s0)
    lwc1	$f0,3284($s0)
    ld	$ra,1512($sp)
    b	.L0db3ea1c
    swc1	$f0,212($s0)
.L0db3eb44:
    # Line 818
    beqzl	$a1,.L0db3eaa0
    ldc1	$f20,1488($sp)
    # Line 822
    lw	$a4,28892($s0)
    addiu	$a3,$sp,1440
    addiu	$a2,$s0,28456
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    sd	$ra,1512($sp)
    bal __glSetUpMap2
    move	$t9,$s1
    # Line 823
    lw	$t9,5640($s0)
    lw	$t9,1528($t9)
    addiu	$a0,$sp,1440
    ldc1	$f20,1488($sp)
    jalr	$t9
    ld	$s1,1504($sp)
    lw	$a0,1712($s0)
    b	.L0db3ea9c
    ld	$ra,1512($sp)
.L0db3eb90:
    # Line 772
    la	$s1,sub_0db40000
    b	.L0db3e9e8
    addiu	$s1,$s1,-6148
.L0db3eb9c:
    # Line 795
    beqz	$at,.L0db3ec38
    # Line 800
    andi	$v0,$a0,0x8
    # Line 797
    lw	$a4,28880($s0)
    addiu	$a3,$s0,200
    addiu	$a2,$s0,28384
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    sd	$ra,1512($sp)
    bal __glSetUpMap2
    move	$t9,$s1
    # Line 800
    lw	$a0,1712($s0)
    lwc1	$f2,3284($s0)
    ld	$ra,1512($sp)
    # Line 799
    mtc1	$zero,$f1
    # Line 800
    swc1	$f2,212($s0)
    b	.L0db3ea1c
    # Line 799
    swc1	$f1,208($s0)
.L0db3ebe0:
    # Line 772
    andi	$v0,$a0,0x1
    beqz	$v0,.L0db3ec80
    sd	$s1,1504($sp)
    # Line 778
    lw	$a4,28864($s0)
    addiu	$a3,$s0,408
    addiu	$a2,$s0,28288
    mov.s	$f13,$f20
    la	$s1,sub_0db40000
    addiu	$a0,$sp,0
    sd	$ra,1512($sp)
    addiu	$s1,$s1,-6148
    bal __glSetUpMap2
    move	$t9,$s1
    # Line 780
    lw	$t9,12072($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$at,1696($s0)
    andi	$at,$at,0x80
    beqz	$at,.L0db3ec8c
    ld	$ra,1512($sp)
.L0db3ec30:
    # Line 784
    b	.L0db3e9e8
    lw	$a0,1712($s0)
.L0db3ec38:
    # Line 800
    beqz	$v0,.L0db3ea20
    # Line 806
    andi	$v0,$a0,0x4
    # Line 802
    lw	$a4,28876($s0)
    addiu	$a3,$s0,200
    addiu	$a2,$s0,28360
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    sd	$ra,1512($sp)
    bal __glSetUpMap2
    move	$t9,$s1
    # Line 806
    lw	$a0,1712($s0)
    lwc1	$f0,3284($s0)
    # Line 804
    mtc1	$zero,$f3
    ld	$ra,1512($sp)
    # Line 806
    swc1	$f0,212($s0)
    # Line 805
    swc1	$f3,208($s0)
    b	.L0db3ea1c
    # Line 804
    swc1	$f3,204($s0)
.L0db3ec80:
    # Line 784
    la	$s1,sub_0db40000
    b	.L0db3e9e8
    addiu	$s1,$s1,-6148
.L0db3ec8c:
    ldc1	$f1,1480($sp)
    ldc1	$f0,1472($sp)
    ldc1	$f3,1456($sp)
    ldc1	$f2,1464($sp)
    swc1	$f0,420($s0)
    swc1	$f3,416($s0)
    swc1	$f2,412($s0)
    b	.L0db3ec30
    swc1	$f1,408($s0)
.end DoEvalCoord1

# Function: __glDoEvalCoord1
# Declared: Line 838 (Source lines: 839-852)
# Address: 0x0db3ecb0 - 0x0db3edb0 (Size: 256 bytes, Frame: 144)
.globl __glDoEvalCoord1
.ent __glDoEvalCoord1
__glDoEvalCoord1:
    # Line 839
    addiu	$sp,$sp,-144
    sdc1	$f30,0($sp)
    sd	$s8,104($sp)
    move	$s8,$a0
    # Line 843
    lwc1	$f30,168($s8)
    lwc1	$f0,172($s8)
    lwc1	$f1,176($s8)
    lwc1	$f2,180($s8)
    # Line 844
    lwc1	$f3,184($s8)
    lwc1	$f4,188($s8)
    lwc1	$f5,192($s8)
    lwc1	$f6,196($s8)
    # Line 845
    lwc1	$f7,200($s8)
    lwc1	$f10,212($s8)
    lwc1	$f9,208($s8)
    lwc1	$f8,204($s8)
    sdc1	$f10,8($sp)
    sdc1	$f9,16($sp)
    sdc1	$f8,24($sp)
    sdc1	$f7,32($sp)
    sdc1	$f6,40($sp)
    sdc1	$f5,48($sp)
    sdc1	$f4,56($sp)
    sdc1	$f3,64($sp)
    sd	$gp,112($sp)
    sd	$ra,96($sp)
    # Line 839
    lui	$ra,0xc
    addiu	$ra,$ra,-1560
    addu	$gp,$t9,$ra
    # Line 847
    # lw $t9, -32692($gp) # &sub_0db40000
    sdc1	$f2,72($sp)
    sdc1	$f1,80($sp)
    addiu	$t9,$t9,-5840
    bal __glSetUpMap2
    sdc1	$f0,88($sp)
    ld	$gp,112($sp)
    # Line 849
    swc1	$f30,168($s8)
    # Line 852
    ldc1	$f30,0($sp)
    ld	$ra,96($sp)
    # Line 851
    ldc1	$f4,16($sp)
    # Line 850
    ldc1	$f1,40($sp)
    # Line 851
    ldc1	$f3,24($sp)
    ldc1	$f2,32($sp)
    # Line 850
    swc1	$f1,196($s8)
    # Line 849
    ldc1	$f1,80($sp)
    # Line 851
    swc1	$f2,200($s8)
    # Line 849
    ldc1	$f2,72($sp)
    # Line 851
    swc1	$f3,204($s8)
    # Line 850
    ldc1	$f3,64($sp)
    ldc1	$f0,8($sp)
    # Line 851
    swc1	$f4,208($s8)
    # Line 850
    ldc1	$f4,56($sp)
    # Line 851
    swc1	$f0,212($s8)
    # Line 850
    ldc1	$f0,48($sp)
    swc1	$f4,188($s8)
    swc1	$f3,184($s8)
    swc1	$f0,192($s8)
    # Line 849
    ldc1	$f0,88($sp)
    swc1	$f2,180($s8)
    swc1	$f1,176($s8)
    swc1	$f0,172($s8)
    # Line 852
    ld	$s8,104($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glDoEvalCoord1

# Function: ComputeFirstPartials
# Declared: Line 854 (Source lines: 856-863)
# Address: 0x0db3edb0 - 0x0db3ee64 (Size: 180 bytes, Frame: 0)
.ent ComputeFirstPartials
ComputeFirstPartials:
    # Line 856
    lwc1	$f3,12($a0)
    lwc1	$f2,0($a1)
    lwc1	$f4,12($a1)
    mul.s	$f2,$f2,$f3
    lwc1	$f3,0($a0)
    mul.s	$f3,$f3,$f4
    sub.s	$f2,$f2,$f3
    swc1	$f2,0($a1)
    # Line 857
    lwc1	$f0,4($a1)
    lwc1	$f1,12($a0)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,4($a0)
    mul.s	$f1,$f1,$f4
    sub.s	$f0,$f0,$f1
    swc1	$f0,4($a1)
    # Line 858
    lwc1	$f2,8($a1)
    lwc1	$f3,12($a0)
    mul.s	$f2,$f2,$f3
    lwc1	$f3,8($a0)
    mul.s	$f3,$f3,$f4
    sub.s	$f2,$f2,$f3
    swc1	$f2,8($a1)
    # Line 860
    lwc1	$f1,12($a0)
    lwc1	$f0,0($a2)
    lwc1	$f2,12($a2)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,0($a0)
    mul.s	$f1,$f1,$f2
    sub.s	$f0,$f0,$f1
    swc1	$f0,0($a2)
    # Line 861
    lwc1	$f3,4($a2)
    lwc1	$f4,12($a0)
    mul.s	$f3,$f3,$f4
    lwc1	$f4,4($a0)
    mul.s	$f4,$f4,$f2
    sub.s	$f3,$f3,$f4
    swc1	$f3,4($a2)
    # Line 862
    lwc1	$f0,8($a2)
    lwc1	$f1,12($a0)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,8($a0)
    mul.s	$f1,$f1,$f2
    sub.s	$f0,$f0,$f1
    # Line 863
    jr	$ra
    # Line 862
    swc1	$f0,8($a2)
.end ComputeFirstPartials

# Function: ComputeNormal2
# Declared: Line 865 (Source lines: 867-872)
# Address: 0x0db3ee64 - 0x0db3eee8 (Size: 132 bytes, Frame: 48)
.ent ComputeNormal2
ComputeNormal2:
    # Line 868
    lwc1	$f5,8($a3)
    lwc1	$f4,4($a2)
    lwc1	$f6,8($a2)
    mul.s	$f4,$f4,$f5
    lwc1	$f5,4($a3)
    mul.s	$f5,$f5,$f6
    sub.s	$f4,$f4,$f5
    swc1	$f4,0($a1)
    # Line 869
    lwc1	$f3,8($a2)
    lwc1	$f2,0($a3)
    lwc1	$f4,8($a3)
    mul.s	$f2,$f2,$f3
    lwc1	$f3,0($a2)
    mul.s	$f3,$f3,$f4
    sub.s	$f2,$f2,$f3
    swc1	$f2,4($a1)
    # Line 870
    lwc1	$f1,4($a3)
    lwc1	$f0,0($a2)
    lwc1	$f2,4($a2)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,0($a3)
    mul.s	$f1,$f1,$f2
    sub.s	$f0,$f0,$f1
    swc1	$f0,8($a1)
    # Line 867
    move	$t9,$a0
    # Line 871
    lw	$t9,11976($t9)
    # Line 867
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    # Line 871
    jalr	$t9
    # Line 867
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 872
    jr	$ra
    addiu	$sp,$sp,48
.end ComputeNormal2

# Function: DoDomain2
# Declared: Line 874 (Source lines: 876-924)
# Address: 0x0db3eee8 - 0x0db3f160 (Size: 632 bytes, Frame: 240)
.ent DoDomain2
DoDomain2:
    # Line 876
    addiu	$sp,$sp,-112
    sd	$s1,32($sp)
    # Line 884
    lwc1	$f6,16($a3)
    lwc1	$f5,12($a3)
    # Line 876
    move	$s1,$a0
    sd	$s0,40($sp)
    # Line 884
    c.eq.s	$f5,$f6
    # Line 876
    move	$s0,$a3
    sd	$a4,24($sp)
    # Line 884
    bc1t	.L0db3f10c
    sd	$a5,16($sp)
    lwc1	$f8,20($s0)
    lwc1	$f7,24($s0)
    c.eq.s	$f8,$f7
    nop
    bc1tl	.L0db3f110
    # Line 885
    ld	$s0,40($sp)
    # Line 886
    sub.s	$f0,$f6,$f5
    sub.s	$f4,$f13,$f5
    div.s	$f4,$f4,$f0
    # Line 887
    sub.s	$f1,$f7,$f8
    sub.s	$f0,$f14,$f8
    div.s	$f0,$f0,$f1
    # Line 892
    lwc1	$f2,756($s1)
    c.eq.s	$f2,$f4
    lw	$a0,4($s0)
    bc1f	.L0db3f11c
    sdc1	$f0,0($sp)
    lw	$at,1404($s1)
    bne	$at,$a0,.L0db3f11c
    sdc1	$f4,8($sp)
    # Line 896
    la	$a3,sub_0db40000
    addiu	$a3,$a3,-7216
.L0db3ef6c:
    # Line 898
    ldc1	$f2,0($sp)
    lwc1	$f1,760($s1)
    c.eq.s	$f1,$f2
    nop
    bc1f	.L0db3ef90
    lw	$a0,8($s0)
    lw	$at,1408($s1)
    beql	$at,$a0,.L0db3efc4
    # Line 905
    lw	$a2,0($s0)
.L0db3ef90:
    # Line 899
    ldc1	$f13,0($sp)
    addiu	$a2,$s1,924
    sd	$ra,48($sp)
    bal __glSetUpMap2
    move	$t9,$a3
    # Line 900
    li	$v1,2
    sw	$v1,1416($s1)
    # Line 902
    ldc1	$f3,0($sp)
    # Line 901
    lw	$v0,8($s0)
    ld	$ra,48($sp)
    # Line 902
    swc1	$f3,760($s1)
    # Line 901
    sw	$v0,1408($s1)
    # Line 905
    lw	$a2,0($s0)
.L0db3efc4:
    blez	$a2,.L0db3f0fc
    move	$a0,$a2
    mtc1	$zero,$f8
    ld	$t3,16($sp)
    ld	$t1,24($sp)
    sll	$a3,$a0,0x2
    move	$t2,$t3
    b	.L0db3eff4
    addu	$t3,$a3,$t3
.L0db3efe8:
    # Line 906
    addiu	$t2,$t2,4
    beq	$t2,$t3,.L0db3f0fc
    addiu	$t1,$t1,4
.L0db3eff4:
    # Line 908
    swc1	$f8,0($t1)
    # Line 909
    lw	$at,4($s0)
    # Line 907
    move	$a2,$t2
    # Line 908
    mov.s	$f6,$f8
    # Line 909
    blez	$at,.L0db3efe8
    move	$a6,$zero
    b	.L0db3f094
    move	$a7,$s1
.L0db3f014:
    move	$t8,$a5
.L0db3f018:
    sra	$v0,$t0,0x1
    mov.s	$f7,$f5
    beqz	$v0,.L0db3f070
    move	$t9,$a2
    mov.s	$f4,$f7
    move	$a2,$t8
    move	$a0,$t9
.L0db3f034:
    # Line 919
    addu	$a1,$a3,$a0
    # Line 918
    lwc1	$f1,0($a0)
    lwc1	$f3,924($a2)
    lwc1	$f0,0($a1)
    lwc1	$f2,928($a2)
    mul.s	$f1,$f1,$f3
    mul.s	$f0,$f0,$f2
    # Line 919
    addu	$a0,$a3,$a1
    # Line 918
    add.s	$f4,$f1,$f4
    # Line 917
    addiu	$a2,$a2,8
    sltu	$v1,$a2,$a4
    bnez	$v1,.L0db3f034
    # Line 918
    add.s	$f4,$f0,$f4
    mov.s	$f5,$f4
    move	$a2,$a0
.L0db3f070:
    # Line 909
    addiu	$a6,$a6,1
    # Line 921
    lwc1	$f0,764($a7)
    mul.s	$f0,$f0,$f5
    add.s	$f6,$f0,$f6
    swc1	$f6,0($t1)
    # Line 909
    lw	$at,4($s0)
    slt	$at,$a6,$at
    beqz	$at,.L0db3efe8
    addiu	$a7,$a7,4
.L0db3f094:
    # Line 915
    lwc1	$f5,0($a2)
    # Line 916
    lw	$a0,8($s0)
    addu	$a2,$a3,$a2
    # Line 915
    lwc1	$f0,924($s1)
    # Line 916
    addiu	$v1,$a0,-1
    sll	$a4,$a0,0x2
    slti	$v0,$a0,2
    bnez	$v0,.L0db3f070
    # Line 915
    mul.s	$f5,$f5,$f0
    # Line 916
    li	$t0,1
    slt	$v0,$v1,$t0
    beqzl	$v0,.L0db3f0c8
    move	$t0,$v1
.L0db3f0c8:
    addu	$a4,$a4,$s1
    addiu	$a5,$s1,4
    andi	$at,$t0,0x1
    beqz	$at,.L0db3f018
    move	$t8,$a5
    # Line 918
    lwc1	$f2,924($a5)
    lwc1	$f1,0($a2)
    mul.s	$f1,$f1,$f2
    # Line 917
    addiu	$a5,$a5,4
    # Line 919
    addu	$a2,$a3,$a2
    # Line 918
    add.s	$f5,$f1,$f5
    b	.L0db3f014
    nop
.L0db3f0fc:
    # Line 924
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db3f10c:
    # Line 885
    ld	$s0,40($sp)
.L0db3f110:
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0db3f11c:
    sdc1	$f4,8($sp)
    # Line 892
    # lw $t9, -32692($gp) # &sub_0db40000
    # Line 893
    addiu	$a2,$s1,764
    sd	$ra,48($sp)
    # Line 892
    addiu	$t9,$t9,-7216
    # Line 893
    bal __glSetUpMap2
    mov.s	$f13,$f4
    la	$a3,sub_0db40000
    # Line 894
    li	$at,2
    sw	$at,1412($s1)
    # Line 896
    ldc1	$f3,8($sp)
    # Line 895
    lw	$ra,4($s0)
    addiu	$a3,$a3,-7216
    # Line 896
    swc1	$f3,756($s1)
    # Line 895
    sw	$ra,1404($s1)
    # Line 896
    b	.L0db3ef6c
    ld	$ra,48($sp)
.end DoDomain2

# Function: DoDomain2WithDerivs
# Declared: Line 926 (Source lines: 929-986)
# Address: 0x0db3f160 - 0x0db3f3f8 (Size: 664 bytes, Frame: 144)
.ent DoDomain2WithDerivs
DoDomain2WithDerivs:
    # Line 929
    addiu	$sp,$sp,-144
    sd	$s1,48($sp)
    move	$s1,$a0
    sd	$s0,56($sp)
    # Line 938
    lwc1	$f5,16($a3)
    lwc1	$f4,12($a3)
    # Line 929
    move	$s0,$a3
    sd	$a4,16($sp)
    # Line 938
    c.eq.s	$f4,$f5
    sd	$a5,24($sp)
    sd	$a6,32($sp)
    bc1t	.L0db3f3e8
    sd	$a7,40($sp)
    lwc1	$f7,20($s0)
    lwc1	$f6,24($s0)
    c.eq.s	$f7,$f6
    nop
    bc1tl	.L0db3f3ec
    # Line 939
    ld	$s0,56($sp)
    # Line 940
    sub.s	$f0,$f5,$f4
    sub.s	$f3,$f13,$f4
    div.s	$f3,$f3,$f0
    # Line 941
    sub.s	$f1,$f6,$f7
    sub.s	$f0,$f14,$f7
    div.s	$f0,$f0,$f1
    # Line 946
    lwc1	$f2,756($s1)
    c.eq.s	$f2,$f3
    li	$a0,1
    sdc1	$f3,8($sp)
    bc1f	.L0db3f200
    sdc1	$f0,0($sp)
    lw	$at,1412($s1)
    bne	$at,$a0,.L0db3f208
    lw	$t0,4($s0)
    lw	$v0,1404($s1)
    bne	$v0,$t0,.L0db3f20c
    # Line 948
    addiu	$a3,$s1,1084
    # Line 951
    la	$t0,sub_0db40000
    b	.L0db3f24c
    addiu	$t0,$t0,-6900
.L0db3f200:
    sd	$ra,64($sp)
    # Line 946
    lw	$t0,4($s0)
.L0db3f208:
    # Line 948
    addiu	$a3,$s1,1084
.L0db3f20c:
    addiu	$a2,$s1,764
    # Line 946
    # lw $t9, -32692($gp) # &sub_0db40000
    # Line 948
    ldc1	$f13,8($sp)
    sd	$ra,64($sp)
    # Line 946
    addiu	$t9,$t9,-6900
    # Line 948
    bal __glSetUpMap2
    move	$a0,$t0
    la	$t0,sub_0db40000
    li	$a0,1
    # Line 949
    sw	$a0,1412($s1)
    # Line 951
    ldc1	$f1,8($sp)
    # Line 950
    lw	$ra,4($s0)
    addiu	$t0,$t0,-6900
    # Line 951
    swc1	$f1,756($s1)
    # Line 950
    sw	$ra,1404($s1)
    ld	$ra,64($sp)
.L0db3f24c:
    # Line 953
    ldc1	$f3,0($sp)
    lwc1	$f2,760($s1)
    c.eq.s	$f2,$f3
    nop
    bc1fl	.L0db3f284
    sd	$ra,64($sp)
    lw	$t1,1416($s1)
    bne	$t1,$a0,.L0db3f288
    lw	$t1,8($s0)
    lw	$at,1408($s1)
    beql	$at,$t1,.L0db3f2c4
    # Line 961
    lw	$a3,0($s0)
    b	.L0db3f288
    sd	$ra,64($sp)
.L0db3f284:
    # Line 953
    lw	$t1,8($s0)
.L0db3f288:
    # Line 955
    move	$a0,$t1
    ldc1	$f13,0($sp)
    addiu	$a3,$s1,1244
    addiu	$a2,$s1,924
    sd	$ra,64($sp)
    bal __glSetUpMap2
    move	$t9,$t0
    li	$v1,1
    # Line 956
    sw	$v1,1416($s1)
    # Line 958
    ldc1	$f0,0($sp)
    # Line 957
    lw	$v0,8($s0)
    ld	$ra,64($sp)
    # Line 958
    swc1	$f0,760($s1)
    # Line 957
    sw	$v0,1408($s1)
    # Line 961
    lw	$a3,0($s0)
.L0db3f2c4:
    blez	$a3,.L0db3f3d8
    move	$a2,$a3
    mtc1	$zero,$f6
    ld	$a0,16($sp)
    ld	$a7,24($sp)
    ld	$t3,40($sp)
    ld	$t0,32($sp)
    sll	$a4,$a2,0x2
    move	$t2,$t3
    b	.L0db3f304
    addu	$t3,$a4,$t3
.L0db3f2f0:
    # Line 962
    addiu	$t0,$t0,4
    addiu	$a7,$a7,4
    addiu	$t2,$t2,4
    beq	$t2,$t3,.L0db3f3d8
    addiu	$a0,$a0,4
.L0db3f304:
    # Line 964
    swc1	$f6,0($t0)
    swc1	$f6,0($a7)
    swc1	$f6,0($a0)
    # Line 965
    lw	$at,4($s0)
    # Line 963
    move	$a2,$t2
    # Line 965
    blez	$at,.L0db3f2f0
    move	$a6,$zero
    b	.L0db3f3a8
    move	$t8,$s1
.L0db3f328:
    # Line 973
    addiu	$a3,$s1,4
.L0db3f32c:
    # Line 977
    lwc1	$f2,1244($a3)
    # Line 976
    lwc1	$f3,0($a2)
    # Line 977
    mul.s	$f2,$f2,$f3
    # Line 976
    lwc1	$f1,924($a3)
    mul.s	$f1,$f1,$f3
    # Line 978
    addu	$a2,$a4,$a2
    # Line 974
    addiu	$a3,$a3,4
    # Line 977
    add.s	$f4,$f2,$f4
    # Line 974
    sltu	$at,$a3,$a5
    bnez	$at,.L0db3f32c
    # Line 976
    add.s	$f5,$f1,$f5
.L0db3f358:
    # Line 965
    addiu	$a6,$a6,1
    # Line 981
    lwc1	$f0,764($t8)
    mul.s	$f0,$f0,$f5
    lwc1	$f3,0($a0)
    add.s	$f3,$f3,$f0
    swc1	$f3,0($a0)
    # Line 982
    lwc1	$f2,1084($t8)
    mul.s	$f2,$f2,$f5
    lwc1	$f1,0($a7)
    add.s	$f1,$f1,$f2
    swc1	$f1,0($a7)
    # Line 983
    lwc1	$f0,764($t8)
    mul.s	$f0,$f0,$f4
    lwc1	$f3,0($t0)
    add.s	$f3,$f3,$f0
    swc1	$f3,0($t0)
    # Line 965
    lw	$v0,4($s0)
    slt	$v0,$a6,$v0
    beqz	$v0,.L0db3f2f0
    addiu	$t8,$t8,4
.L0db3f3a8:
    # Line 971
    lwc1	$f0,0($a2)
    # Line 973
    addu	$a2,$a4,$a2
    # Line 972
    lwc1	$f4,1244($s1)
    # Line 973
    lw	$t1,8($s0)
    # Line 971
    lwc1	$f5,924($s1)
    # Line 972
    mul.s	$f4,$f4,$f0
    # Line 973
    slti	$v1,$t1,2
    bnez	$v1,.L0db3f358
    # Line 971
    mul.s	$f5,$f5,$f0
    # Line 973
    sll	$a5,$t1,0x2
    b	.L0db3f328
    addu	$a5,$a5,$s1
.L0db3f3d8:
    # Line 986
    ld	$s0,56($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db3f3e8:
    # Line 939
    ld	$s0,56($sp)
.L0db3f3ec:
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end DoDomain2WithDerivs

# Function: DoEvalCoord2
# Declared: Line 992 (Source lines: 994-1145)
# Address: 0x0db3f3f8 - 0x0db3fb94 (Size: 1948 bytes, Frame: 224)
.ent DoEvalCoord2
DoEvalCoord2:
    # Line 1000
    li	$a4,177
    move	$a2,$zero
    addiu	$a5,$a0,28288
    # Line 1006
    lui	$a1,0x80
    # Line 994
    addiu	$sp,$sp,-1632
    sd	$s0,1552($sp)
    move	$s0,$a0
    sdc1	$f20,1544($sp)
    mov.s	$f20,$f13
    sdc1	$f22,1536($sp)
    mov.s	$f22,$f14
    sd	$s1,1560($sp)
    move	$s1,$a3
    # Line 1000
    addiu	$a6,$sp,0
    # Line 998
    lwc1	$f0,408($a0)
    lwc1	$f3,420($a0)
    lwc1	$f2,416($a0)
    lwc1	$f1,412($a0)
    sdc1	$f3,1504($sp)
    sdc1	$f2,1512($sp)
    sdc1	$f1,1520($sp)
    sdc1	$f0,1528($sp)
.L0db3f450:
    # Line 1000
    addu	$v0,$a2,$a6
    addu	$at,$a2,$a5
    addiu	$a2,$a2,8
    ld	$at,0($at)
    addiu	$a4,$a4,-1
    bgtz	$a4,.L0db3f450
    sd	$at,0($v0)
    addu	$v0,$a2,$a5
    lw	$v0,0($v0)
    addu	$v1,$a2,$a6
    beqz	$s1,.L0db3f488
    sw	$v0,0($v1)
    sd	$s2,1576($sp)
    # Line 1003
    sw	$zero,0($s1)
.L0db3f488:
    # Line 1006
    lw	$v1,1696($s0)
    lw	$a0,1716($s0)
    sd	$s2,1576($sp)
    and	$v1,$v1,$a1
    beqz	$v1,.L0db3f938
    li	$s2,-1
    andi	$at,$a0,0x100
    beqz	$at,.L0db3f768
    # Line 1020
    andi	$at,$a0,0x80
    # Line 1011
    lw	$a7,28932($s0)
    addiu	$a6,$sp,1456
    addiu	$a5,$sp,1440
    addiu	$a4,$sp,1424
    addiu	$a3,$s0,28824
    mov.s	$f14,$f22
    # lw $t9, -32692($gp) # &sub_0db40000
    mov.s	$f13,$f20
    sd	$ra,1584($sp)
    addiu	$t9,$t9,-3744
    bal __glDoEvalCoord1
    addiu	$a0,$sp,0
    # Line 1013
    # lw $t9, -32692($gp) # &sub_0db40000
    addiu	$a2,$sp,1456
    addiu	$a1,$sp,1440
    addiu	$t9,$t9,-4688
    bal __glDoEvalCoord1
    addiu	$a0,$sp,1424
    # Line 1014
    move	$a0,$s0
    # lw $t9, -32692($gp) # &sub_0db40000
    addiu	$a3,$sp,1456
    addiu	$a2,$sp,1440
    addiu	$t9,$t9,-4508
    bal __glDoEvalCoord1
    addiu	$a1,$s0,184
    beqz	$s1,.L0db3f564
    ld	$ra,1584($sp)
    # Line 1016
    lw	$at,0($s1)
    ori	$at,$at,0x12
    sw	$at,0($s1)
    # Line 1017
    lwc1	$f3,184($s0)
    swc1	$f3,20($s1)
    lwc1	$f2,188($s0)
    swc1	$f2,24($s1)
    lwc1	$f1,192($s0)
    swc1	$f1,28($s1)
    lwc1	$f0,196($s0)
    swc1	$f0,32($s1)
    # Line 1018
    lwc1	$f3,1424($sp)
    swc1	$f3,52($s1)
    lwc1	$f2,1428($sp)
    swc1	$f2,56($s1)
    lwc1	$f1,1432($sp)
    swc1	$f1,60($s1)
    lwc1	$f0,1436($sp)
    swc1	$f0,64($s1)
.L0db3f564:
    # Line 1020
    li	$s2,4
    sd	$s3,1568($sp)
    lw	$a0,1716($s0)
.L0db3f570:
    sd	$s3,1568($sp)
.L0db3f574:
    # Line 1032
    la	$s3,sub_0db40000
    addiu	$s3,$s3,-4376
.L0db3f57c:
    # Line 1058
    lbu	$at,3105($s0)
.L0db3f580:
    beqz	$at,.L0db3f8a0
    andi	$v0,$a0,0x2
    beqz	$v0,.L0db3f5f0
    # Line 1088
    andi	$a1,$a0,0x40
    # Line 1063
    lw	$a5,28904($s0)
    addiu	$a4,$s0,168
    addiu	$a3,$s0,28544
    mov.s	$f14,$f22
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    sd	$ra,1584($sp)
    bal __glDoEvalCoord1
    move	$t9,$s3
    beqz	$s1,.L0db3f5e8
    ld	$ra,1584($sp)
    # Line 1066
    lw	$v1,0($s1)
    ori	$v1,$v1,0x1
    sw	$v1,0($s1)
    # Line 1067
    lwc1	$f3,168($s0)
    swc1	$f3,4($s1)
    lwc1	$f2,172($s0)
    swc1	$f2,8($s1)
    lwc1	$f1,176($s0)
    swc1	$f1,12($s1)
    lwc1	$f0,180($s0)
    swc1	$f0,16($s1)
.L0db3f5e8:
    lw	$a0,1716($s0)
.L0db3f5ec:
    # Line 1088
    andi	$a1,$a0,0x40
.L0db3f5f0:
    beqz	$a1,.L0db3f6f0
    # Line 1098
    andi	$v1,$a0,0x20
    # Line 1094
    lw	$a5,28924($s0)
    addiu	$a4,$s0,200
    addiu	$a3,$s0,28744
    mov.s	$f14,$f22
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    sd	$ra,1584($sp)
    bal __glDoEvalCoord1
    move	$t9,$s3
    ldc1	$f20,1544($sp)
    ldc1	$f22,1536($sp)
    ld	$ra,1584($sp)
    beqz	$s1,.L0db3f65c
    ld	$s3,1568($sp)
    # Line 1097
    lw	$at,0($s1)
    ori	$at,$at,0x4
    sw	$at,0($s1)
    # Line 1098
    lwc1	$f3,200($s0)
    swc1	$f3,36($s1)
    lwc1	$f2,204($s0)
    swc1	$f2,40($s1)
    lwc1	$f1,208($s0)
    swc1	$f1,44($s1)
    lwc1	$f0,212($s0)
    swc1	$f0,48($s1)
.L0db3f65c:
    ldc1	$f20,1544($sp)
.L0db3f660:
    ldc1	$f22,1536($sp)
    ld	$s1,1560($sp)
    move	$v1,$s2
    # Line 1125
    li	$v0,3
    beq	$s2,$v0,.L0db3fb14
    ld	$s3,1568($sp)
    # Line 1130
    li	$a1,4
    beq	$v1,$a1,.L0db3fb34
    ld	$s2,1576($sp)
.L0db3f684:
    # Line 1132
    lw	$at,1716($s0)
    andi	$at,$at,0x1
    beqzl	$at,.L0db3f6e8
    # Line 1145
    ld	$s0,1552($sp)
    # Line 1132
    lw	$v0,1696($s0)
    andi	$v0,$v0,0x80
    beqzl	$v0,.L0db3f6e8
    # Line 1145
    ld	$s0,1552($sp)
    # Line 1139
    lw	$t9,12072($s0)
    sd	$ra,1584($sp)
    jal	sub_0db40000
    move	$a0,$s0
    # Line 1143
    move	$a0,$s0
    # Line 1142
    ldc1	$f4,1528($sp)
    # Line 1143
    lw	$t9,12072($s0)
    # Line 1142
    ldc1	$f7,1504($sp)
    ldc1	$f6,1512($sp)
    ldc1	$f5,1520($sp)
    swc1	$f7,420($s0)
    swc1	$f6,416($s0)
    swc1	$f5,412($s0)
    # Line 1143
    jalr	$t9
    # Line 1142
    swc1	$f4,408($s0)
    ld	$ra,1584($sp)
    # Line 1145
    ld	$s0,1552($sp)
.L0db3f6e8:
    jr	$ra
    addiu	$sp,$sp,1632
.L0db3f6f0:
    # Line 1098
    beqz	$v1,.L0db3f820
    # Line 1106
    andi	$v0,$a0,0x10
    # Line 1101
    lw	$a5,28920($s0)
    addiu	$a4,$s0,200
    addiu	$a3,$s0,28704
    mov.s	$f14,$f22
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    sd	$ra,1584($sp)
    bal __glDoEvalCoord1
    move	$t9,$s3
    ldc1	$f22,1536($sp)
    # Line 1103
    lwc1	$f20,3284($s0)
    ld	$ra,1584($sp)
    ld	$s3,1568($sp)
    swc1	$f20,212($s0)
    beqz	$s1,.L0db3f65c
    ldc1	$f20,1544($sp)
    # Line 1105
    lw	$a1,0($s1)
    ori	$a1,$a1,0x4
    sw	$a1,0($s1)
    # Line 1106
    lwc1	$f3,200($s0)
    swc1	$f3,36($s1)
    lwc1	$f2,204($s0)
    swc1	$f2,40($s1)
    lwc1	$f1,208($s0)
    swc1	$f1,44($s1)
    lwc1	$f0,212($s0)
    b	.L0db3f65c
    swc1	$f0,48($s1)
.L0db3f768:
    # Line 1020
    beqzl	$at,.L0db3f574
    sd	$s3,1568($sp)
    # Line 1024
    lw	$a7,28928($s0)
    addiu	$a6,$sp,1488
    addiu	$a5,$sp,1472
    addiu	$a4,$sp,1424
    addiu	$a3,$s0,28784
    mov.s	$f14,$f22
    # lw $t9, -32692($gp) # &sub_0db40000
    mov.s	$f13,$f20
    sd	$ra,1584($sp)
    addiu	$t9,$t9,-3744
    bal __glDoEvalCoord1
    addiu	$a0,$sp,0
    # Line 1026
    move	$a0,$s0
    # lw $t9, -32692($gp) # &sub_0db40000
    addiu	$a3,$sp,1488
    addiu	$a2,$sp,1472
    addiu	$t9,$t9,-4508
    bal __glDoEvalCoord1
    addiu	$a1,$s0,184
    beqz	$s1,.L0db3f810
    ld	$ra,1584($sp)
    # Line 1028
    lw	$at,0($s1)
    ori	$at,$at,0xa
    sw	$at,0($s1)
    # Line 1029
    lwc1	$f3,184($s0)
    swc1	$f3,20($s1)
    lwc1	$f2,188($s0)
    swc1	$f2,24($s1)
    lwc1	$f1,192($s0)
    swc1	$f1,28($s1)
    lwc1	$f0,196($s0)
    swc1	$f0,32($s1)
    # Line 1030
    lwc1	$f3,1424($sp)
    swc1	$f3,52($s1)
    lwc1	$f2,1428($sp)
    swc1	$f2,56($s1)
    lwc1	$f1,1432($sp)
    swc1	$f1,60($s1)
    lwc1	$f0,1436($sp)
    swc1	$f0,64($s1)
.L0db3f810:
    sd	$s3,1568($sp)
    # Line 1032
    lw	$a0,1716($s0)
    b	.L0db3f570
    li	$s2,3
.L0db3f820:
    # Line 1106
    beqz	$v0,.L0db3fa24
    # Line 1115
    andi	$v1,$a0,0x8
    # Line 1109
    lw	$a5,28916($s0)
    addiu	$a4,$s0,200
    addiu	$a3,$s0,28664
    mov.s	$f14,$f22
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    sd	$ra,1584($sp)
    bal __glDoEvalCoord1
    move	$t9,$s3
    ld	$ra,1584($sp)
    # Line 1111
    mtc1	$zero,$f20
    ld	$s3,1568($sp)
    # Line 1112
    lwc1	$f22,3284($s0)
    # Line 1111
    swc1	$f20,208($s0)
    ldc1	$f20,1544($sp)
    # Line 1112
    swc1	$f22,212($s0)
    beqz	$s1,.L0db3f65c
    ldc1	$f22,1536($sp)
    # Line 1114
    lw	$v1,0($s1)
    ori	$v1,$v1,0x4
    sw	$v1,0($s1)
    # Line 1115
    lwc1	$f3,200($s0)
    swc1	$f3,36($s1)
    lwc1	$f2,204($s0)
    swc1	$f2,40($s1)
    lwc1	$f1,208($s0)
    swc1	$f1,44($s1)
    lwc1	$f0,212($s0)
    b	.L0db3f65c
    swc1	$f0,48($s1)
.L0db3f8a0:
    # Line 1067
    andi	$a1,$a0,0x1
    beqz	$a1,.L0db3f5f0
    # Line 1088
    andi	$a1,$a0,0x40
    # Line 1073
    lw	$a5,28900($s0)
    addiu	$a4,$s0,408
    addiu	$a3,$s0,28504
    mov.s	$f14,$f22
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    sd	$ra,1584($sp)
    bal __glDoEvalCoord1
    move	$t9,$s3
    # Line 1075
    lw	$t9,12072($s0)
    jal	sub_0db40000
    move	$a0,$s0
    beqz	$s1,.L0db3f920
    ld	$ra,1584($sp)
    # Line 1077
    lw	$v0,0($s1)
    ori	$v0,$v0,0x1
    sw	$v0,0($s1)
    lw	$at,1696($s0)
    andi	$at,$at,0x80
    beqzl	$at,.L0db3fb74
    # Line 1082
    lwc1	$f3,168($s0)
    # Line 1080
    lwc1	$f3,408($s0)
    swc1	$f3,4($s1)
    lwc1	$f2,412($s0)
    swc1	$f2,8($s1)
    lwc1	$f1,416($s0)
    swc1	$f1,12($s1)
    lwc1	$f0,420($s0)
    swc1	$f0,16($s1)
.L0db3f920:
    # Line 1082
    lw	$v1,1696($s0)
    andi	$v1,$v1,0x80
    beqz	$v1,.L0db3fb54
    # Line 1088
    ldc1	$f0,1528($sp)
.L0db3f930:
    b	.L0db3f5ec
    lw	$a0,1716($s0)
.L0db3f938:
    # Line 1032
    andi	$a1,$a0,0x4
    beqz	$a1,.L0db3f9ac
    sd	$s3,1568($sp)
    # Line 1036
    lw	$a5,28908($s0)
    addiu	$a4,$s0,184
    addiu	$a3,$s0,28584
    mov.s	$f14,$f22
    mov.s	$f13,$f20
    la	$s3,sub_0db40000
    addiu	$a0,$sp,0
    sd	$ra,1584($sp)
    addiu	$s3,$s3,-4376
    bal __glDoEvalCoord1
    move	$t9,$s3
    beqz	$s1,.L0db3f9a4
    ld	$ra,1584($sp)
    # Line 1039
    lw	$at,0($s1)
    ori	$at,$at,0x2
    sw	$at,0($s1)
    # Line 1040
    lwc1	$f3,184($s0)
    swc1	$f3,20($s1)
    lwc1	$f2,188($s0)
    swc1	$f2,24($s1)
    lwc1	$f1,192($s0)
    swc1	$f1,28($s1)
    lwc1	$f0,196($s0)
    swc1	$f0,32($s1)
.L0db3f9a4:
    b	.L0db3f9b4
    lw	$a0,1716($s0)
.L0db3f9ac:
    la	$s3,sub_0db40000
    addiu	$s3,$s3,-4376
.L0db3f9b4:
    andi	$at,$a0,0x100
    beqz	$at,.L0db3faa8
    # Line 1050
    andi	$at,$a0,0x80
    # Line 1044
    lw	$a5,28932($s0)
    addiu	$a4,$sp,1424
    addiu	$a3,$s0,28824
    mov.s	$f14,$f22
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    sd	$ra,1584($sp)
    bal __glDoEvalCoord1
    move	$t9,$s3
    beqz	$s1,.L0db3fa18
    ld	$ra,1584($sp)
    # Line 1047
    lw	$v0,0($s1)
    ori	$v0,$v0,0x10
    sw	$v0,0($s1)
    # Line 1048
    lwc1	$f3,1424($sp)
    swc1	$f3,52($s1)
    lwc1	$f2,1428($sp)
    swc1	$f2,56($s1)
    lwc1	$f1,1432($sp)
    swc1	$f1,60($s1)
    lwc1	$f0,1436($sp)
    swc1	$f0,64($s1)
.L0db3fa18:
    # Line 1050
    lw	$a0,1716($s0)
    b	.L0db3f57c
    li	$s2,4
.L0db3fa24:
    # Line 1115
    beqzl	$v1,.L0db3f660
    ldc1	$f20,1544($sp)
    # Line 1118
    lw	$a5,28912($s0)
    addiu	$a4,$s0,200
    addiu	$a3,$s0,28624
    mov.s	$f14,$f22
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    sd	$ra,1584($sp)
    bal __glDoEvalCoord1
    move	$t9,$s3
    ld	$ra,1584($sp)
    # Line 1120
    mtc1	$zero,$f20
    ld	$s3,1568($sp)
    # Line 1122
    lwc1	$f22,3284($s0)
    # Line 1121
    swc1	$f20,208($s0)
    # Line 1120
    swc1	$f20,204($s0)
    ldc1	$f20,1544($sp)
    # Line 1122
    swc1	$f22,212($s0)
    beqz	$s1,.L0db3f65c
    ldc1	$f22,1536($sp)
    # Line 1124
    lw	$a1,0($s1)
    ori	$a1,$a1,0x4
    sw	$a1,0($s1)
    # Line 1125
    lwc1	$f3,200($s0)
    swc1	$f3,36($s1)
    lwc1	$f2,204($s0)
    swc1	$f2,40($s1)
    lwc1	$f1,208($s0)
    swc1	$f1,44($s1)
    lwc1	$f0,212($s0)
    b	.L0db3f65c
    swc1	$f0,48($s1)
.L0db3faa8:
    # Line 1050
    beqzl	$at,.L0db3f580
    # Line 1058
    lbu	$at,3105($s0)
    # Line 1052
    lw	$a5,28928($s0)
    addiu	$a4,$sp,1424
    addiu	$a3,$s0,28784
    mov.s	$f14,$f22
    mov.s	$f13,$f20
    addiu	$a0,$sp,0
    sd	$ra,1584($sp)
    bal __glDoEvalCoord1
    move	$t9,$s3
    beqz	$s1,.L0db3fb08
    ld	$ra,1584($sp)
    # Line 1055
    lw	$v0,0($s1)
    ori	$v0,$v0,0x8
    sw	$v0,0($s1)
    # Line 1056
    lwc1	$f3,1424($sp)
    swc1	$f3,52($s1)
    lwc1	$f2,1428($sp)
    swc1	$f2,56($s1)
    lwc1	$f1,1432($sp)
    swc1	$f1,60($s1)
    lwc1	$f0,1436($sp)
    swc1	$f0,64($s1)
.L0db3fb08:
    # Line 1058
    lw	$a0,1716($s0)
    b	.L0db3f57c
    li	$s2,3
.L0db3fb14:
    # Line 1130
    lw	$t9,5640($s0)
    lw	$t9,1528($t9)
    addiu	$a0,$sp,1424
    sd	$ra,1584($sp)
    jalr	$t9
    ld	$s2,1576($sp)
    b	.L0db3f684
    ld	$ra,1584($sp)
.L0db3fb34:
    # Line 1132
    lw	$t9,5640($s0)
    lw	$t9,1560($t9)
    addiu	$a0,$sp,1424
    sd	$ra,1584($sp)
    jalr	$t9
    ld	$s2,1576($sp)
    b	.L0db3f684
    ld	$ra,1584($sp)
.L0db3fb54:
    ldc1	$f3,1504($sp)
    # Line 1088
    ldc1	$f2,1512($sp)
    ldc1	$f1,1520($sp)
    swc1	$f3,420($s0)
    swc1	$f2,416($s0)
    swc1	$f1,412($s0)
    b	.L0db3f930
    swc1	$f0,408($s0)
.L0db3fb74:
    # Line 1082
    swc1	$f3,4($s1)
    lwc1	$f2,172($s0)
    swc1	$f2,8($s1)
    lwc1	$f1,176($s0)
    swc1	$f1,12($s1)
    lwc1	$f0,180($s0)
    b	.L0db3f920
    swc1	$f0,16($s1)
.end DoEvalCoord2

# Function: __glDoEvalCoord2
# Declared: Line 1147 (Source lines: 1148-1161)
# Address: 0x0db3fb94 - 0x0db3fc98 (Size: 260 bytes, Frame: 160)
.globl __glDoEvalCoord2
.ent __glDoEvalCoord2
__glDoEvalCoord2:
    # Line 1156
    move	$a3,$zero
    # Line 1148
    addiu	$sp,$sp,-160
    sdc1	$f30,0($sp)
    sd	$s8,104($sp)
    move	$s8,$a0
    # Line 1152
    lwc1	$f30,168($s8)
    lwc1	$f0,172($s8)
    lwc1	$f1,176($s8)
    lwc1	$f2,180($s8)
    # Line 1153
    lwc1	$f3,184($s8)
    lwc1	$f4,188($s8)
    lwc1	$f5,192($s8)
    lwc1	$f6,196($s8)
    # Line 1154
    lwc1	$f7,200($s8)
    lwc1	$f10,212($s8)
    lwc1	$f9,208($s8)
    lwc1	$f8,204($s8)
    sdc1	$f10,8($sp)
    sdc1	$f9,16($sp)
    sdc1	$f8,24($sp)
    sdc1	$f7,32($sp)
    sdc1	$f6,40($sp)
    sdc1	$f5,48($sp)
    sdc1	$f4,56($sp)
    sdc1	$f3,64($sp)
    sd	$gp,112($sp)
    sd	$ra,96($sp)
    # Line 1148
    lui	$ra,0xc
    addiu	$ra,$ra,-5372
    addu	$gp,$t9,$ra
    # Line 1156
    # lw $t9, -32692($gp) # &sub_0db40000
    sdc1	$f2,72($sp)
    sdc1	$f1,80($sp)
    addiu	$t9,$t9,-3080
    bal __glDoEvalCoord1
    sdc1	$f0,88($sp)
    ld	$gp,112($sp)
    # Line 1158
    swc1	$f30,168($s8)
    # Line 1161
    ldc1	$f30,0($sp)
    ld	$ra,96($sp)
    # Line 1160
    ldc1	$f4,16($sp)
    # Line 1159
    ldc1	$f1,40($sp)
    # Line 1160
    ldc1	$f3,24($sp)
    ldc1	$f2,32($sp)
    # Line 1159
    swc1	$f1,196($s8)
    # Line 1158
    ldc1	$f1,80($sp)
    # Line 1160
    swc1	$f2,200($s8)
    # Line 1158
    ldc1	$f2,72($sp)
    # Line 1160
    swc1	$f3,204($s8)
    # Line 1159
    ldc1	$f3,64($sp)
    ldc1	$f0,8($sp)
    # Line 1160
    swc1	$f4,208($s8)
    # Line 1159
    ldc1	$f4,56($sp)
    # Line 1160
    swc1	$f0,212($s8)
    # Line 1159
    ldc1	$f0,48($sp)
    swc1	$f4,188($s8)
    swc1	$f3,184($s8)
    swc1	$f0,192($s8)
    # Line 1158
    ldc1	$f0,88($sp)
    swc1	$f2,180($s8)
    swc1	$f1,176($s8)
    swc1	$f0,172($s8)
    # Line 1161
    ld	$s8,104($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __glDoEvalCoord2

# Function: __glEvalMesh1Line
# Declared: Line 1163 (Source lines: 1164-1192)
# Address: 0x0db3fc98 - 0x0db3fe70 (Size: 472 bytes, Frame: 208)
.globl __glEvalMesh1Line
.ent __glEvalMesh1Line
__glEvalMesh1Line:
    # Line 1164
    addiu	$sp,$sp,-208
    sd	$s4,112($sp)
    move	$s4,$a2
    sd	$a1,96($sp)
    sd	$s1,104($sp)
    move	$s1,$a0
    sd	$gp,120($sp)
    lw	$a4,1836($a0)
    lui	$at,0xc
    addiu	$at,$at,-5632
    beqz	$a4,.L0db3fe5c
    addu	$gp,$t9,$at
    sd	$s0,144($sp)
    # Line 1183
    li	$a0,3
    sd	$ra,136($sp)
    # Line 1176
    lwc1	$f29,188($s1)
    lwc1	$f31,192($s1)
    lwc1	$f0,196($s1)
    # Line 1177
    lwc1	$f1,200($s1)
    lwc1	$f4,212($s1)
    lwc1	$f3,208($s1)
    lwc1	$f2,204($s1)
    sdc1	$f4,8($sp)
    sdc1	$f3,48($sp)
    sdc1	$f2,32($sp)
    sdc1	$f1,24($sp)
    sdc1	$f0,40($sp)
    sdc1	$f31,88($sp)
    sdc1	$f29,80($sp)
    # Line 1183
    lw	$t9,5640($s1)
    sdc1	$f22,128($sp)
    # Line 1173
    mtc1	$a4,$f23
    lwc1	$f22,1828($s1)
    # Line 1176
    lwc1	$f27,184($s1)
    # Line 1173
    cvt.s.w	$f23,$f23
    # Line 1175
    lwc1	$f25,180($s1)
    sdc1	$f27,72($sp)
    lwc1	$f27,176($s1)
    sdc1	$f25,64($sp)
    # Line 1173
    lwc1	$f25,1824($s1)
    sdc1	$f27,56($sp)
    # Line 1175
    lwc1	$f27,172($s1)
    # Line 1173
    sub.s	$f22,$f22,$f25
    # Line 1175
    lwc1	$f25,168($s1)
    # Line 1183
    lw	$t9,28($t9)
    sdc1	$f27,16($sp)
    sdc1	$f25,0($sp)
    jalr	$t9
    # Line 1173
    div.s	$f22,$f22,$f23
    ld	$at,96($sp)
    # Line 1184
    move	$s0,$at
    slt	$at,$s4,$at
    bnezl	$at,.L0db3fdd4
    # Line 1187
    lw	$t9,5640($s1)
    sd	$s5,160($sp)
    sd	$s3,152($sp)
    # Line 1184
    la	$s3,sub_0db40000
    addiu	$s5,$s4,1
    b	.L0db3fdb8
    addiu	$s3,$s3,-5840
.L0db3fd88:
    # Line 1185
    mtc1	$s0,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f22
    lwc1	$f13,1824($s1)
    add.s	$f13,$f13,$f0
.L0db3fda0:
    move	$a0,$s1
    bal __glSetUpMap2
    move	$t9,$s3
    # Line 1184
    addiu	$s0,$s0,1
    beql	$s5,$s0,.L0db3fdcc
    ld	$s5,160($sp)
.L0db3fdb8:
    lw	$at,1836($s1)
    bne	$at,$s0,.L0db3fd88
    nop
    # Line 1185
    b	.L0db3fda0
    lwc1	$f13,1828($s1)
.L0db3fdcc:
    ld	$s3,152($sp)
    # Line 1187
    lw	$t9,5640($s1)
.L0db3fdd4:
    lw	$t9,44($t9)
    ldc1	$f22,128($sp)
    jalr	$t9
    ld	$s0,144($sp)
    ld	$gp,120($sp)
    # Line 1192
    ld	$s4,112($sp)
    ld	$ra,136($sp)
    # Line 1190
    ldc1	$f3,40($sp)
    # Line 1191
    ldc1	$f4,24($sp)
    ldc1	$f0,32($sp)
    # Line 1190
    swc1	$f3,196($s1)
    # Line 1189
    ldc1	$f3,56($sp)
    # Line 1191
    swc1	$f0,204($s1)
    # Line 1190
    ldc1	$f0,72($sp)
    # Line 1191
    swc1	$f4,200($s1)
    # Line 1189
    ldc1	$f4,64($sp)
    # Line 1190
    swc1	$f0,184($s1)
    ldc1	$f2,8($sp)
    # Line 1189
    swc1	$f4,180($s1)
    # Line 1191
    ldc1	$f1,48($sp)
    swc1	$f2,212($s1)
    # Line 1190
    ldc1	$f2,88($sp)
    # Line 1191
    swc1	$f1,208($s1)
    # Line 1190
    ldc1	$f1,80($sp)
    swc1	$f2,192($s1)
    # Line 1189
    ldc1	$f2,16($sp)
    # Line 1190
    swc1	$f1,188($s1)
    # Line 1189
    ldc1	$f1,0($sp)
    swc1	$f3,176($s1)
    swc1	$f2,172($s1)
    swc1	$f1,168($s1)
    # Line 1192
    ld	$s1,104($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db3fe5c:
    ld	$gp,120($sp)
    # Line 1172
    ld	$s1,104($sp)
    ld	$s4,112($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end __glEvalMesh1Line

# Function: __glEvalMesh1Point
# Declared: Line 1194 (Source lines: 1195-1223)
# Address: 0x0db3fe70 - 0x0db40048 (Size: 472 bytes, Frame: 208)
.globl __glEvalMesh1Point
.ent __glEvalMesh1Point
__glEvalMesh1Point:
    # Line 1195
    addiu	$sp,$sp,-208
    sd	$s4,112($sp)
    move	$s4,$a2
    sd	$a1,96($sp)
    sd	$s1,104($sp)
    move	$s1,$a0
    sd	$gp,120($sp)
    lw	$a4,1836($a0)
    lui	$at,0xc
    addiu	$at,$at,-6104
    beqz	$a4,.L0db40034
    addu	$gp,$t9,$at
    sd	$s0,144($sp)
    # Line 1214
    move	$a0,$zero
    sd	$ra,136($sp)
    # Line 1207
    lwc1	$f29,188($s1)
    lwc1	$f31,192($s1)
    lwc1	$f0,196($s1)
    # Line 1208
    lwc1	$f1,200($s1)
    lwc1	$f4,212($s1)
    lwc1	$f3,208($s1)
    lwc1	$f2,204($s1)
    sdc1	$f4,8($sp)
    sdc1	$f3,48($sp)
    sdc1	$f2,32($sp)
    sdc1	$f1,24($sp)
    sdc1	$f0,40($sp)
    sdc1	$f31,88($sp)
    sdc1	$f29,80($sp)
    # Line 1214
    lw	$t9,5640($s1)
    sdc1	$f22,128($sp)
    # Line 1204
    mtc1	$a4,$f23
    lwc1	$f22,1828($s1)
    # Line 1207
    lwc1	$f27,184($s1)
    # Line 1204
    cvt.s.w	$f23,$f23
    # Line 1206
    lwc1	$f25,180($s1)
    sdc1	$f27,72($sp)
    lwc1	$f27,176($s1)
    sdc1	$f25,64($sp)
    # Line 1204
    lwc1	$f25,1824($s1)
    sdc1	$f27,56($sp)
    # Line 1206
    lwc1	$f27,172($s1)
    # Line 1204
    sub.s	$f22,$f22,$f25
    # Line 1206
    lwc1	$f25,168($s1)
    # Line 1214
    lw	$t9,28($t9)
    sdc1	$f27,16($sp)
    sdc1	$f25,0($sp)
    jalr	$t9
    # Line 1204
    div.s	$f22,$f22,$f23
    ld	$at,96($sp)
    # Line 1215
    move	$s0,$at
    slt	$at,$s4,$at
    bnezl	$at,.L0db3ffac
    # Line 1218
    lw	$t9,5640($s1)
    sd	$s5,160($sp)
    sd	$s3,152($sp)
    # Line 1215
    la	$s3,sub_0db40000
    addiu	$s5,$s4,1
    b	.L0db3ff90
    addiu	$s3,$s3,-5840
.L0db3ff60:
    # Line 1216
    mtc1	$s0,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f22
    lwc1	$f13,1824($s1)
    add.s	$f13,$f13,$f0
.L0db3ff78:
    move	$a0,$s1
    bal __glSetUpMap2
    move	$t9,$s3
    # Line 1215
    addiu	$s0,$s0,1
    beql	$s5,$s0,.L0db3ffa4
    ld	$s5,160($sp)
.L0db3ff90:
    lw	$at,1836($s1)
    bne	$at,$s0,.L0db3ff60
    nop
    # Line 1216
    b	.L0db3ff78
    lwc1	$f13,1828($s1)
.L0db3ffa4:
    ld	$s3,152($sp)
    # Line 1218
    lw	$t9,5640($s1)
.L0db3ffac:
    lw	$t9,44($t9)
    ldc1	$f22,128($sp)
    jalr	$t9
    ld	$s0,144($sp)
    ld	$gp,120($sp)
    # Line 1223
    ld	$s4,112($sp)
    ld	$ra,136($sp)
    # Line 1221
    ldc1	$f3,40($sp)
    # Line 1222
    ldc1	$f4,24($sp)
    ldc1	$f0,32($sp)
    # Line 1221
    swc1	$f3,196($s1)
    # Line 1220
    ldc1	$f3,56($sp)
    # Line 1222
    swc1	$f0,204($s1)
    # Line 1221
    ldc1	$f0,72($sp)
    # Line 1222
    swc1	$f4,200($s1)
    # Line 1220
    ldc1	$f4,64($sp)
    # Line 1221
    swc1	$f0,184($s1)
    ldc1	$f2,8($sp)
    # Line 1220
    swc1	$f4,180($s1)
    # Line 1222
    ldc1	$f1,48($sp)
    swc1	$f2,212($s1)
    # Line 1221
    ldc1	$f2,88($sp)
    # Line 1222
    swc1	$f1,208($s1)
    # Line 1221
    ldc1	$f1,80($sp)
    swc1	$f2,192($s1)
    # Line 1220
    ldc1	$f2,16($sp)
    # Line 1221
    swc1	$f1,188($s1)
    # Line 1220
    ldc1	$f1,0($sp)
    swc1	$f3,176($s1)
    swc1	$f2,172($s1)
    swc1	$f1,168($s1)
    # Line 1223
    ld	$s1,104($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db40034:
    ld	$gp,120($sp)
    # Line 1203
    ld	$s1,104($sp)
    ld	$s4,112($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end __glEvalMesh1Point

# Function: sendChange
# Declared: Line 1225 (Source lines: 1226-1259)
# Address: 0x0db40048 - 0x0db40204 (Size: 444 bytes, Frame: 208)
.ent sendChange
sendChange:
    # Line 1226
    addiu	$sp,$sp,-80
    sd	$s0,32($sp)
    move	$s0,$a0
    sd	$s1,40($sp)
    move	$s1,$a1
    # Line 1227
    lwc1	$f0,408($a0)
    lwc1	$f3,420($a0)
    lwc1	$f1,412($a0)
    lwc1	$f2,416($a0)
    sdc1	$f3,0($sp)
    lw	$a3,0($a1)
    sdc1	$f2,8($sp)
    sdc1	$f1,16($sp)
    andi	$at,$a3,0x1
    beqz	$at,.L0db400ec
    sdc1	$f0,24($sp)
    lw	$v0,1696($s0)
    andi	$v0,$v0,0x80
    beqz	$v0,.L0db400cc
    lwc1	$f4,4($s1)
    # Line 1231
    swc1	$f4,408($s0)
    lwc1	$f6,8($s1)
    swc1	$f6,412($s0)
    lwc1	$f5,12($s1)
    # Line 1232
    move	$a0,$s0
    # Line 1231
    swc1	$f5,416($s0)
    # Line 1232
    lw	$t9,12072($s0)
    # Line 1231
    lwc1	$f4,16($s1)
    sd	$ra,48($sp)
    # Line 1232
    jalr	$t9
    # Line 1231
    swc1	$f4,420($s0)
    b	.L0db400e8
    ld	$ra,48($sp)
.L0db400cc:
    # Line 1234
    swc1	$f4,168($s0)
    lwc1	$f2,8($s1)
    swc1	$f2,172($s0)
    lwc1	$f1,12($s1)
    swc1	$f1,176($s0)
    lwc1	$f0,16($s1)
    swc1	$f0,180($s0)
.L0db400e8:
    lw	$a3,0($s1)
.L0db400ec:
    andi	$v1,$a3,0x4
    beqz	$v1,.L0db40120
    # Line 1238
    andi	$a2,$a3,0x2
    lwc1	$f2,36($s1)
    swc1	$f2,200($s0)
    lwc1	$f1,40($s1)
    swc1	$f1,204($s0)
    lwc1	$f0,44($s1)
    swc1	$f0,208($s0)
    lwc1	$f3,48($s1)
    swc1	$f3,212($s0)
    lw	$a3,0($s1)
    andi	$a2,$a3,0x2
.L0db40120:
    beqz	$a2,.L0db40150
    # Line 1241
    andi	$at,$a3,0x8
    lwc1	$f2,20($s1)
    swc1	$f2,184($s0)
    lwc1	$f1,24($s1)
    swc1	$f1,188($s0)
    lwc1	$f0,28($s1)
    swc1	$f0,192($s0)
    lwc1	$f3,32($s1)
    swc1	$f3,196($s0)
    lw	$a3,0($s1)
    andi	$at,$a3,0x8
.L0db40150:
    beqz	$at,.L0db401dc
    # Line 1244
    andi	$v1,$a3,0x10
    lw	$t9,5640($s0)
    lw	$t9,1528($t9)
    sd	$ra,48($sp)
    jalr	$t9
    addiu	$a0,$s1,52
    lw	$a3,0($s1)
    ld	$ra,48($sp)
.L0db40174:
    # Line 1246
    andi	$at,$a3,0x1
.L0db40178:
    beqz	$at,.L0db401d0
    ld	$s1,40($sp)
    lw	$v0,1696($s0)
    andi	$v0,$v0,0x80
    beqzl	$v0,.L0db401d4
    # Line 1259
    ld	$s0,32($sp)
    # Line 1252
    lw	$t9,12072($s0)
    sd	$ra,48($sp)
    jalr	$t9
    move	$a0,$s0
    # Line 1256
    move	$a0,$s0
    # Line 1255
    ldc1	$f3,24($sp)
    # Line 1256
    lw	$t9,12072($s0)
    # Line 1255
    ldc1	$f6,0($sp)
    ldc1	$f5,8($sp)
    ldc1	$f4,16($sp)
    swc1	$f6,420($s0)
    swc1	$f5,416($s0)
    swc1	$f4,412($s0)
    # Line 1256
    jalr	$t9
    # Line 1255
    swc1	$f3,408($s0)
    ld	$ra,48($sp)
.L0db401d0:
    # Line 1259
    ld	$s0,32($sp)
.L0db401d4:
    jr	$ra
    addiu	$sp,$sp,80
.L0db401dc:
    # Line 1244
    beqz	$v1,.L0db40178
    # Line 1246
    andi	$at,$a3,0x1
    lw	$t9,5640($s0)
    lw	$t9,1560($t9)
    sd	$ra,48($sp)
    jalr	$t9
    addiu	$a0,$s1,52
    lw	$a3,0($s1)
    b	.L0db40174
    ld	$ra,48($sp)
.end sendChange

# Function: __glEvalMesh2Fill
# Declared: Line 1268 (Source lines: 1270-1320)
# Address: 0x0db40204 - 0x0db4059c (Size: 920 bytes, Frame: 0)
.globl __glEvalMesh2Fill
.ent __glEvalMesh2Fill
__glEvalMesh2Fill:
    # Line 1270
    move	$v0,$s8
    # Line 1280
    lw	$a6,1852($a0)
    # Line 1270
    lui	$at,0x1
    ori	$at,$at,0x1150
    subu	$sp,$sp,$at
    sd	$v0,152($sp)
    sd	$a4,112($sp)
    sd	$a3,168($sp)
    sd	$s6,136($sp)
    move	$s6,$a1
    sd	$s0,144($sp)
    move	$s0,$a0
    sd	$gp,160($sp)
    addu	$s8,$sp,$at
    lui	$at,0xc
    addiu	$at,$at,-7020
    # Line 1280
    beqz	$a6,.L0db40580
    # Line 1270
    addu	$gp,$t9,$at
    # Line 1280
    lw	$a0,1868($s0)
    beqzl	$a0,.L0db40584
    ld	$gp,160($sp)
    sd	$s3,248($sp)
    sd	$s7,240($sp)
    sdc1	$f28,184($sp)
    # Line 1283
    mtc1	$a0,$f28
    sd	$s4,224($sp)
    lwc1	$f0,1856($s0)
    cvt.s.w	$f28,$f28
    sdc1	$f26,176($sp)
    lwc1	$f26,1860($s0)
    sd	$s5,216($sp)
    # Line 1289
    ld	$v1,168($sp)
    # Line 1283
    sub.s	$f26,$f26,$f0
    # Line 1289
    move	$s5,$s6
    slt	$v1,$s6,$v1
    # Line 1287
    lwc1	$f2,204($s0)
    # Line 1283
    div.s	$f26,$f26,$f28
    # Line 1287
    lwc1	$f3,208($s0)
    sdc1	$f2,64($sp)
    # Line 1286
    lwc1	$f2,184($s0)
    sdc1	$f3,72($sp)
    # Line 1287
    lwc1	$f1,200($s0)
    # Line 1286
    lwc1	$f3,188($s0)
    sdc1	$f2,24($sp)
    sdc1	$f1,56($sp)
    # Line 1285
    lwc1	$f1,180($s0)
    lwc1	$f2,172($s0)
    # Line 1286
    lwc1	$f0,196($s0)
    sdc1	$f1,80($sp)
    # Line 1287
    lwc1	$f28,212($s0)
    sdc1	$f0,48($sp)
    # Line 1282
    mtc1	$a6,$f0
    sdc1	$f28,16($sp)
    # Line 1286
    lwc1	$f28,192($s0)
    # Line 1282
    lwc1	$f1,1840($s0)
    cvt.s.w	$f0,$f0
    sdc1	$f28,40($sp)
    lwc1	$f28,1844($s0)
    sdc1	$f3,32($sp)
    # Line 1285
    lwc1	$f3,176($s0)
    # Line 1282
    sub.s	$f28,$f28,$f1
    # Line 1285
    lwc1	$f1,168($s0)
    sdc1	$f3,96($sp)
    sdc1	$f2,88($sp)
    sdc1	$f1,8($sp)
    # Line 1289
    beqz	$v1,.L0db404f8
    # Line 1282
    div.s	$f28,$f28,$f0
    sd	$s1,264($sp)
    sd	$s2,256($sp)
    sd	$ra,232($sp)
    sdc1	$f22,208($sp)
    sdc1	$f24,200($sp)
    sdc1	$f20,192($sp)
    # Line 1289
    addiu	$s4,$s8,-48
    addiu	$a0,$s5,1
    addiu	$v1,$a2,-1
    sd	$v1,104($sp)
    la	$s7,sub_0db40000
    la	$s3,sub_0db40000
    ld	$at,112($sp)
    addiu	$s7,$s7,72
    addiu	$s3,$s3,-3080
    subu	$v0,$at,$a2
    slt	$at,$at,$a2
    xori	$at,$at,0x1
    addiu	$v0,$v0,1
    sd	$v0,128($sp)
    b	.L0db4038c
    sd	$at,120($sp)
.L0db40368:
    # Line 1314
    lw	$t9,5640($s0)
    lw	$t9,44($t9)
    jalr	$t9
    nop
    # Line 1289
    addiu	$s5,$s5,1
    ld	$at,168($sp)
    ld	$a0,272($sp)
    beq	$at,$s5,.L0db404d4
    addiu	$a0,$a0,1
.L0db4038c:
    lw	$a6,1852($s0)
    bne	$a6,$s5,.L0db404ac
    nop
    # Line 1290
    beq	$a6,$a0,.L0db404c8
    lwc1	$f24,1844($s0)
.L0db403a0:
    # Line 1291
    mtc1	$a0,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f28
    lwc1	$f22,1840($s0)
    sd	$a0,272($sp)
    add.s	$f22,$f22,$f0
.L0db403bc:
    # Line 1292
    lw	$t9,5640($s0)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,8
    # Line 1294
    ld	$at,120($sp)
    beqz	$at,.L0db40368
    ld	$s2,112($sp)
    lui	$s1,0xffff
    addu	$s1,$s1,$s8
    b	.L0db40428
    addiu	$s1,$s1,-4144
.L0db403e8:
    # Line 1302
    move	$a0,$s0
    mov.s	$f13,$f24
    mov.s	$f14,$f20
    move	$a3,$zero
    bal __glDoEvalCoord1
    move	$t9,$s3
.L0db40400:
    # Line 1305
    move	$a0,$s0
    mov.s	$f13,$f22
    mov.s	$f14,$f20
    move	$a3,$s1
    bal __glDoEvalCoord1
    move	$t9,$s3
    # Line 1294
    addiu	$s2,$s2,-1
.L0db4041c:
    ld	$at,104($sp)
    beq	$at,$s2,.L0db40368
    # Line 1311
    addiu	$s1,$s1,68
.L0db40428:
    # Line 1294
    lw	$v0,1868($s0)
    bne	$v0,$s2,.L0db4043c
    # Line 1295
    sltu	$v1,$s1,$s4
    b	.L0db40454
    lwc1	$f20,1860($s0)
.L0db4043c:
    mtc1	$s2,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f26
    lwc1	$f20,1856($s0)
    add.s	$f20,$f20,$f0
.L0db40454:
    beqz	$v1,.L0db40478
    # Line 1308
    move	$a0,$s0
    # Line 1295
    beq	$s6,$s5,.L0db403e8
    # Line 1300
    move	$a0,$s0
    move	$a1,$s1
    bal __glEvalMesh1Point
    move	$t9,$s7
    b	.L0db40400
    nop
.L0db40478:
    # Line 1308
    mov.s	$f13,$f24
    mov.s	$f14,$f20
    move	$a3,$zero
    bal __glDoEvalCoord1
    move	$t9,$s3
    # Line 1309
    move	$a0,$s0
    mov.s	$f13,$f22
    mov.s	$f14,$f20
    move	$a3,$zero
    bal __glDoEvalCoord1
    move	$t9,$s3
    b	.L0db4041c
    # Line 1294
    addiu	$s2,$s2,-1
.L0db404ac:
    # Line 1290
    mtc1	$s5,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f28
    lwc1	$f24,1840($s0)
    bne	$a6,$a0,.L0db403a0
    add.s	$f24,$f24,$f0
.L0db404c8:
    sd	$a0,272($sp)
    # Line 1291
    b	.L0db403bc
    lwc1	$f22,1844($s0)
.L0db404d4:
    ldc1	$f20,192($sp)
    ldc1	$f24,200($sp)
    ldc1	$f22,208($sp)
    ld	$s4,224($sp)
    ld	$ra,232($sp)
    ld	$s7,240($sp)
    ld	$s3,248($sp)
    ld	$s2,256($sp)
    ld	$s1,264($sp)
.L0db404f8:
    ld	$gp,160($sp)
    # Line 1320
    ld	$s5,216($sp)
    ld	$s6,136($sp)
    # Line 1318
    ldc1	$f28,32($sp)
    # Line 1320
    ld	$a0,152($sp)
    # Line 1318
    ldc1	$f0,40($sp)
    swc1	$f28,188($s0)
    # Line 1320
    ldc1	$f28,184($sp)
    # Line 1318
    swc1	$f0,192($s0)
    # Line 1319
    ldc1	$f3,64($sp)
    ldc1	$f26,16($sp)
    # Line 1318
    ldc1	$f1,48($sp)
    # Line 1319
    ldc1	$f4,72($sp)
    ldc1	$f2,56($sp)
    # Line 1318
    swc1	$f1,196($s0)
    # Line 1317
    ldc1	$f1,8($sp)
    # Line 1319
    swc1	$f2,200($s0)
    # Line 1317
    ldc1	$f2,88($sp)
    # Line 1319
    swc1	$f4,208($s0)
    # Line 1317
    ldc1	$f4,80($sp)
    # Line 1319
    swc1	$f26,212($s0)
    # Line 1318
    ldc1	$f26,24($sp)
    # Line 1319
    swc1	$f3,204($s0)
    # Line 1317
    ldc1	$f3,96($sp)
    # Line 1318
    swc1	$f26,184($s0)
    # Line 1317
    swc1	$f4,180($s0)
    swc1	$f3,176($s0)
    swc1	$f2,172($s0)
    swc1	$f1,168($s0)
    # Line 1320
    ld	$s0,144($sp)
    ldc1	$f26,176($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a0
.L0db40580:
    ld	$gp,160($sp)
.L0db40584:
    # Line 1281
    ld	$s0,144($sp)
    ld	$s6,136($sp)
    ld	$a5,152($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a5
.end __glEvalMesh2Fill

# Function: __glEvalMesh2Point
# Declared: Line 1322 (Source lines: 1324-1355)
# Address: 0x0db4059c - 0x0db40830 (Size: 660 bytes, Frame: 144)
.globl __glEvalMesh2Point
.ent __glEvalMesh2Point
__glEvalMesh2Point:
    # Line 1324
    addiu	$sp,$sp,-272
    sd	$s2,136($sp)
    move	$s2,$a3
    sd	$s1,112($sp)
    move	$s1,$a2
    sd	$s0,120($sp)
    move	$s0,$a0
    sd	$gp,128($sp)
    # Line 1332
    lw	$a6,1852($a0)
    # Line 1324
    lui	$at,0xc
    addiu	$at,$at,-7940
    # Line 1332
    beqz	$a6,.L0db40818
    # Line 1324
    addu	$gp,$t9,$at
    # Line 1332
    lw	$a2,1868($s0)
    sd	$a1,184($sp)
    beqz	$a2,.L0db40818
    sd	$a4,104($sp)
    # Line 1335
    mtc1	$a2,$f23
    sd	$s5,176($sp)
    # Line 1341
    move	$a0,$zero
    # Line 1335
    cvt.s.w	$f23,$f23
    sdc1	$f24,152($sp)
    lwc1	$f24,1856($s0)
    sdc1	$f22,144($sp)
    lwc1	$f22,1860($s0)
    sd	$ra,168($sp)
    # Line 1338
    lwc1	$f31,188($s0)
    # Line 1335
    sub.s	$f22,$f22,$f24
    # Line 1338
    lwc1	$f0,192($s0)
    lwc1	$f1,196($s0)
    # Line 1339
    lwc1	$f2,200($s0)
    # Line 1335
    div.s	$f22,$f22,$f23
    # Line 1339
    lwc1	$f5,212($s0)
    lwc1	$f4,208($s0)
    lwc1	$f3,204($s0)
    sdc1	$f5,64($sp)
    sdc1	$f4,48($sp)
    sdc1	$f3,40($sp)
    sdc1	$f2,32($sp)
    sdc1	$f1,24($sp)
    sdc1	$f0,16($sp)
    sdc1	$f31,56($sp)
    # Line 1334
    mtc1	$a6,$f25
    # Line 1341
    lw	$t9,5640($s0)
    # Line 1338
    lwc1	$f29,184($s0)
    # Line 1334
    cvt.s.w	$f25,$f25
    # Line 1337
    lwc1	$f27,180($s0)
    sdc1	$f29,88($sp)
    lwc1	$f29,176($s0)
    sdc1	$f27,80($sp)
    # Line 1334
    lwc1	$f27,1840($s0)
    lwc1	$f24,1844($s0)
    sdc1	$f29,72($sp)
    # Line 1337
    lwc1	$f29,172($s0)
    # Line 1334
    sub.s	$f24,$f24,$f27
    # Line 1337
    lwc1	$f27,168($s0)
    # Line 1341
    lw	$t9,28($t9)
    sdc1	$f29,8($sp)
    sdc1	$f27,0($sp)
    jalr	$t9
    # Line 1334
    div.s	$f24,$f24,$f25
    sd	$s3,216($sp)
    sd	$s6,208($sp)
    ld	$a0,184($sp)
    sd	$s4,200($sp)
    sd	$s7,192($sp)
    # Line 1342
    slt	$at,$s2,$a0
    bnez	$at,.L0db40784
    move	$s5,$a0
    sdc1	$f20,160($sp)
    la	$s3,sub_0db40000
    ld	$s7,104($sp)
    addiu	$s6,$s2,1
    addiu	$s3,$s3,-3080
    addiu	$s4,$s7,1
    subu	$at,$s7,$s1
    slt	$s7,$s7,$s1
    xori	$s7,$s7,0x1
    addiu	$at,$at,1
    b	.L0db406ec
    sd	$at,96($sp)
.L0db406e0:
    addiu	$s5,$s5,1
.L0db406e4:
    beq	$s6,$s5,.L0db40774
    ldc1	$f20,160($sp)
.L0db406ec:
    lw	$v0,1852($s0)
    bne	$v0,$s5,.L0db40700
    # Line 1344
    move	$s2,$s1
    # Line 1343
    b	.L0db40718
    lwc1	$f20,1844($s0)
.L0db40700:
    mtc1	$s5,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f24
    lwc1	$f20,1840($s0)
    add.s	$f20,$f20,$f0
.L0db40718:
    # Line 1344
    beqzl	$s7,.L0db406e4
    # Line 1342
    addiu	$s5,$s5,1
    b	.L0db40764
    # Line 1344
    lw	$v1,1868($s0)
.L0db40728:
    # Line 1345
    mtc1	$s2,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f22
    lwc1	$f14,1856($s0)
    add.s	$f14,$f14,$f0
.L0db40740:
    # Line 1347
    move	$a0,$s0
    mov.s	$f13,$f20
    move	$a3,$zero
    bal __glDoEvalCoord1
    move	$t9,$s3
    # Line 1344
    addiu	$s2,$s2,1
    beq	$s4,$s2,.L0db406e0
    nop
    lw	$v1,1868($s0)
.L0db40764:
    bne	$v1,$s2,.L0db40728
    nop
    # Line 1345
    b	.L0db40740
    lwc1	$f14,1860($s0)
.L0db40774:
    ld	$s7,192($sp)
    ld	$s4,200($sp)
    ld	$s6,208($sp)
    ld	$s3,216($sp)
.L0db40784:
    # Line 1350
    lw	$t9,5640($s0)
    lw	$t9,44($t9)
    ldc1	$f22,144($sp)
    ldc1	$f24,152($sp)
    jalr	$t9
    ld	$s5,176($sp)
    ld	$gp,128($sp)
    # Line 1355
    ld	$s1,112($sp)
    ld	$s2,136($sp)
    ld	$ra,168($sp)
    # Line 1353
    ldc1	$f3,24($sp)
    # Line 1354
    ldc1	$f4,32($sp)
    ldc1	$f0,40($sp)
    # Line 1353
    swc1	$f3,196($s0)
    # Line 1352
    ldc1	$f3,72($sp)
    # Line 1354
    swc1	$f0,204($s0)
    # Line 1353
    ldc1	$f0,88($sp)
    # Line 1354
    swc1	$f4,200($s0)
    # Line 1352
    ldc1	$f4,80($sp)
    # Line 1353
    swc1	$f0,184($s0)
    ldc1	$f2,64($sp)
    # Line 1352
    swc1	$f4,180($s0)
    # Line 1354
    ldc1	$f1,48($sp)
    swc1	$f2,212($s0)
    # Line 1353
    ldc1	$f2,16($sp)
    # Line 1354
    swc1	$f1,208($s0)
    # Line 1353
    ldc1	$f1,56($sp)
    swc1	$f2,192($s0)
    # Line 1352
    ldc1	$f2,8($sp)
    # Line 1353
    swc1	$f1,188($s0)
    # Line 1352
    ldc1	$f1,0($sp)
    swc1	$f3,176($s0)
    swc1	$f2,172($s0)
    swc1	$f1,168($s0)
    # Line 1355
    ld	$s0,120($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0db40818:
    ld	$gp,128($sp)
    # Line 1333
    ld	$s0,120($sp)
    ld	$s1,112($sp)
    ld	$s2,136($sp)
    jr	$ra
    addiu	$sp,$sp,272
.end __glEvalMesh2Point

# Function: __glEvalMesh2Line
# Declared: Line 1357 (Source lines: 1359-1438)
# Address: 0x0db40830 - 0x0db40e38 (Size: 1544 bytes, Frame: 0)
.globl __glEvalMesh2Line
.ent __glEvalMesh2Line
__glEvalMesh2Line:
    # Line 1359
    move	$v0,$s8
    # Line 1370
    lw	$a6,1852($a0)
    # Line 1359
    lui	$at,0x1
    ori	$at,$at,0x1190
    subu	$sp,$sp,$at
    sd	$v0,176($sp)
    sd	$a4,112($sp)
    sd	$a3,216($sp)
    sd	$a2,128($sp)
    sd	$s7,160($sp)
    move	$s7,$a1
    sd	$s0,168($sp)
    move	$s0,$a0
    sd	$gp,184($sp)
    addu	$s8,$sp,$at
    lui	$at,0xc
    addiu	$at,$at,-8600
    # Line 1370
    beqz	$a6,.L0db40e1c
    # Line 1359
    addu	$gp,$t9,$at
    # Line 1370
    lw	$a0,1868($s0)
    beqzl	$a0,.L0db40e20
    ld	$gp,184($sp)
    sdc1	$f30,248($sp)
    # Line 1373
    mtc1	$a0,$f30
    sd	$s2,328($sp)
    lwc1	$f0,1856($s0)
    cvt.s.w	$f30,$f30
    sdc1	$f26,256($sp)
    lwc1	$f26,1860($s0)
    sd	$s6,312($sp)
    # Line 1379
    ld	$v1,216($sp)
    # Line 1373
    sub.s	$f26,$f26,$f0
    # Line 1379
    move	$s6,$s7
    slt	$v1,$s7,$v1
    # Line 1377
    lwc1	$f2,204($s0)
    # Line 1373
    div.s	$f26,$f26,$f30
    # Line 1377
    lwc1	$f3,208($s0)
    sdc1	$f2,80($sp)
    # Line 1376
    lwc1	$f2,184($s0)
    sdc1	$f3,24($sp)
    # Line 1377
    lwc1	$f1,200($s0)
    # Line 1376
    lwc1	$f3,188($s0)
    sdc1	$f2,72($sp)
    sdc1	$f1,40($sp)
    # Line 1375
    lwc1	$f1,180($s0)
    lwc1	$f2,172($s0)
    # Line 1376
    lwc1	$f0,196($s0)
    sdc1	$f1,88($sp)
    # Line 1377
    lwc1	$f30,212($s0)
    sdc1	$f0,48($sp)
    # Line 1372
    mtc1	$a6,$f0
    sdc1	$f30,16($sp)
    # Line 1376
    lwc1	$f30,192($s0)
    # Line 1372
    lwc1	$f1,1840($s0)
    cvt.s.w	$f0,$f0
    sdc1	$f30,56($sp)
    lwc1	$f30,1844($s0)
    sdc1	$f3,64($sp)
    # Line 1375
    lwc1	$f3,176($s0)
    # Line 1372
    sub.s	$f30,$f30,$f1
    # Line 1375
    lwc1	$f1,168($s0)
    sdc1	$f3,96($sp)
    sdc1	$f2,32($sp)
    sdc1	$f1,104($sp)
    # Line 1379
    beqz	$v1,.L0db40ddc
    # Line 1372
    div.s	$f30,$f30,$f0
    sd	$s1,320($sp)
    sd	$s5,336($sp)
    sd	$s3,296($sp)
    sd	$ra,288($sp)
    sd	$s4,304($sp)
    sdc1	$f22,280($sp)
    sdc1	$f20,240($sp)
    sdc1	$f24,272($sp)
    sdc1	$f28,264($sp)
    ld	$at,112($sp)
    # Line 1379
    ld	$v0,128($sp)
    addiu	$v1,$s6,1
    sd	$v1,224($sp)
    subu	$v1,$at,$v0
    addiu	$s2,$at,1
    slt	$at,$at,$v0
    xori	$at,$at,0x1
    addiu	$v1,$v1,1
    sd	$s2,232($sp)
    addiu	$s2,$s8,-116
    addiu	$s2,$s2,68
    sd	$s2,136($sp)
    la	$s2,sub_0db40000
    sd	$v1,192($sp)
    sd	$at,152($sp)
    addiu	$s2,$s2,-3080
    addiu	$a5,$v0,1
    sd	$a5,200($sp)
    addiu	$a5,$s8,-48
    addiu	$a5,$a5,68
    sd	$a5,120($sp)
    lui	$a5,0xffff
    addu	$a5,$a5,$s8
    addiu	$a5,$a5,-4144
    addiu	$a5,$a5,68
    b	.L0db409ec
    sd	$a5,208($sp)
.L0db409cc:
    ld	$a0,192($sp)
    # Line 1384
    lw	$a6,1852($s0)
.L0db409d4:
    # Line 1379
    ld	$v0,224($sp)
    ld	$at,216($sp)
    addiu	$s6,$s6,1
    addiu	$v0,$v0,1
    beq	$at,$s6,.L0db40bf8
    sd	$v0,224($sp)
.L0db409ec:
    ld	$v1,224($sp)
    # Line 1383
    move	$a0,$zero
    ld	$at,224($sp)
    # Line 1379
    bne	$a6,$v1,.L0db40bd4
    # Line 1384
    ld	$a5,152($sp)
    # Line 1380
    beq	$a6,$s6,.L0db40bf0
    lwc1	$f28,1844($s0)
.L0db40a08:
    # Line 1381
    mtc1	$s6,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f30
    lwc1	$f24,1840($s0)
    add.s	$f24,$f24,$f0
.L0db40a20:
    # Line 1384
    ld	$s1,128($sp)
    lui	$s5,0xffff
    beqz	$a5,.L0db409d4
    ld	$s3,208($sp)
    ld	$s4,200($sp)
    addu	$s5,$s5,$s8
    b	.L0db40a98
    addiu	$s5,$s5,-4144
.L0db40a40:
    # Line 1404
    move	$a0,$s0
.L0db40a44:
    mov.s	$f13,$f24
    mov.s	$f14,$f20
    move	$a3,$zero
    bal __glDoEvalCoord1
    move	$t9,$s2
.L0db40a58:
    # Line 1406
    move	$a0,$s0
    mov.s	$f13,$f28
    mov.s	$f14,$f20
    move	$a3,$s5
    bal __glDoEvalCoord1
    move	$t9,$s2
    # Line 1411
    lw	$t9,5640($s0)
.L0db40a74:
    lw	$t9,44($t9)
    jalr	$t9
    nop
    # Line 1384
    addiu	$s4,$s4,1
    ld	$at,232($sp)
    # Line 1412
    addiu	$s3,$s3,68
    # Line 1384
    addiu	$s1,$s1,1
    beq	$at,$s1,.L0db409cc
    # Line 1412
    addiu	$s5,$s5,68
.L0db40a98:
    # Line 1384
    lw	$a0,1868($s0)
    bne	$a0,$s1,.L0db40b3c
    nop
    # Line 1385
    beq	$a0,$s4,.L0db40b58
    lwc1	$f20,1860($s0)
.L0db40aac:
    # Line 1386
    mtc1	$s4,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f26
    lwc1	$f22,1856($s0)
    add.s	$f22,$f22,$f0
.L0db40ac4:
    # Line 1388
    lw	$t9,5640($s0)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,3
    ld	$at,112($sp)
    beq	$at,$s1,.L0db40b04
    ld	$v0,136($sp)
    sltu	$v0,$s3,$v0
    beqz	$v0,.L0db40bb8
    # Line 1397
    move	$a0,$s0
    # Line 1388
    beq	$s7,$s6,.L0db40b98
    nop	# was lw $t9, -32692($gp) # &sub_0db40000
    # Line 1392
    move	$a0,$s0
    addiu	$t9,$t9,72
    bal __glEvalMesh1Point
    move	$a1,$s3
.L0db40b04:
    ld	$at,120($sp)
.L0db40b08:
    # Line 1397
    sltu	$at,$s3,$at
    beqz	$at,.L0db40b60
    ld	$v0,128($sp)
    beq	$s7,$s6,.L0db40a44
    # Line 1404
    move	$a0,$s0
    # Line 1397
    beq	$v0,$s1,.L0db40a40
    nop	# was lw $t9, -32692($gp) # &sub_0db40000
    # Line 1402
    move	$a0,$s0
    addiu	$t9,$t9,72
    bal __glEvalMesh1Point
    move	$a1,$s5
    b	.L0db40a58
    nop
.L0db40b3c:
    # Line 1385
    mtc1	$s1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f26
    lwc1	$f20,1856($s0)
    bne	$a0,$s4,.L0db40aac
    add.s	$f20,$f20,$f0
.L0db40b58:
    # Line 1386
    b	.L0db40ac4
    lwc1	$f22,1860($s0)
.L0db40b60:
    # Line 1408
    move	$a0,$s0
    mov.s	$f13,$f24
    mov.s	$f14,$f20
    move	$a3,$zero
    bal __glDoEvalCoord1
    move	$t9,$s2
    # Line 1409
    move	$a0,$s0
    mov.s	$f13,$f28
    mov.s	$f14,$f20
    move	$a3,$zero
    bal __glDoEvalCoord1
    move	$t9,$s2
    b	.L0db40a74
    # Line 1411
    lw	$t9,5640($s0)
.L0db40b98:
    # Line 1394
    move	$a0,$s0
    mov.s	$f13,$f24
    mov.s	$f14,$f22
    move	$a3,$s3
    bal __glDoEvalCoord1
    move	$t9,$s2
    b	.L0db40b08
    ld	$at,120($sp)
.L0db40bb8:
    # Line 1397
    mov.s	$f13,$f24
    mov.s	$f14,$f22
    move	$a3,$zero
    bal __glDoEvalCoord1
    move	$t9,$s2
    b	.L0db40b08
    ld	$at,120($sp)
.L0db40bd4:
    # Line 1380
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f30
    lwc1	$f28,1840($s0)
    bne	$a6,$s6,.L0db40a08
    add.s	$f28,$f28,$f0
.L0db40bf0:
    # Line 1381
    b	.L0db40a20
    lwc1	$f24,1844($s0)
.L0db40bf8:
    ld	$s6,216($sp)
    ldc1	$f28,264($sp)
    ldc1	$f24,272($sp)
    ldc1	$f20,240($sp)
    ldc1	$f22,280($sp)
    ld	$ra,288($sp)
    ld	$s5,336($sp)
    ld	$s1,320($sp)
    lui	$s4,0xffff
    la	$s3,sub_0db40000
    addu	$s4,$s4,$s8
    addiu	$s4,$s4,-4144
    addiu	$s3,$s3,72
.L0db40c2c:
    sdc1	$f20,240($sp)
    # Line 1419
    bne	$a6,$s6,.L0db40c50
    addiu	$a0,$a0,-1
    sd	$a0,144($sp)
    sd	$ra,288($sp)
    # Line 1420
    lwc1	$f20,1844($s0)
    ldc1	$f30,248($sp)
    b	.L0db40c78
    ld	$s6,312($sp)
.L0db40c50:
    mtc1	$s6,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f30,$f0,$f30
    sd	$a0,144($sp)
    lwc1	$f20,1840($s0)
    sd	$ra,288($sp)
    ld	$s6,312($sp)
    add.s	$f20,$f20,$f30
    ldc1	$f30,248($sp)
.L0db40c78:
    # Line 1421
    lw	$t9,5640($s0)
    lw	$t9,28($t9)
    sd	$s1,320($sp)
    jal	sub_0db40000
    li	$a0,3
    # Line 1422
    ld	$at,152($sp)
    sd	$s5,336($sp)
    beqz	$at,.L0db40d38
    ld	$s1,112($sp)
    ld	$s7,128($sp)
    ld	$at,144($sp)
    addiu	$s6,$s8,-48
    addiu	$s7,$s7,-1
    sll	$s5,$at,0x4
    addu	$s5,$s5,$at
    sll	$s5,$s5,0x2
    b	.L0db40cdc
    addu	$s5,$s5,$s4
.L0db40cc0:
    # Line 1428
    move	$a0,$s0
    mov.s	$f13,$f20
    move	$a3,$zero
    bal __glDoEvalCoord1
    move	$t9,$s2
.L0db40cd4:
    # Line 1422
    beq	$s7,$s1,.L0db40d30
    # Line 1431
    addiu	$s5,$s5,-68
.L0db40cdc:
    # Line 1422
    lw	$at,1868($s0)
    bne	$at,$s1,.L0db40cf0
    # Line 1423
    sltu	$v0,$s5,$s4
    b	.L0db40d08
    lwc1	$f14,1860($s0)
.L0db40cf0:
    mtc1	$s1,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f26
    lwc1	$f14,1856($s0)
    add.s	$f14,$f14,$f0
.L0db40d08:
    # Line 1422
    addiu	$s1,$s1,-1
    # Line 1423
    bnez	$v0,.L0db40cc0
    sltu	$v1,$s5,$s6
    beqz	$v1,.L0db40cc0
    # Line 1426
    move	$a0,$s0
    move	$a1,$s5
    bal __glEvalMesh1Point
    move	$t9,$s3
    b	.L0db40cd4
    nop
.L0db40d30:
    ld	$s6,312($sp)
    ld	$s5,336($sp)
.L0db40d38:
    ldc1	$f20,240($sp)
    # Line 1433
    lw	$t9,5640($s0)
    ldc1	$f26,256($sp)
    ld	$s3,296($sp)
    lw	$t9,44($t9)
    ld	$s4,304($sp)
    ld	$s1,320($sp)
    jalr	$t9
    ld	$s2,328($sp)
    ld	$gp,184($sp)
    # Line 1438
    ld	$s7,160($sp)
    ld	$ra,288($sp)
    ld	$at,176($sp)
    # Line 1436
    ldc1	$f3,48($sp)
    # Line 1437
    ldc1	$f4,40($sp)
    ldc1	$f0,80($sp)
    # Line 1436
    swc1	$f3,196($s0)
    # Line 1435
    ldc1	$f3,96($sp)
    # Line 1437
    swc1	$f0,204($s0)
    # Line 1436
    ldc1	$f0,72($sp)
    # Line 1437
    swc1	$f4,200($s0)
    # Line 1435
    ldc1	$f4,88($sp)
    # Line 1436
    swc1	$f0,184($s0)
    ldc1	$f2,16($sp)
    # Line 1435
    swc1	$f4,180($s0)
    # Line 1437
    ldc1	$f1,24($sp)
    swc1	$f2,212($s0)
    # Line 1436
    ldc1	$f2,56($sp)
    # Line 1437
    swc1	$f1,208($s0)
    # Line 1436
    ldc1	$f1,64($sp)
    swc1	$f2,192($s0)
    # Line 1435
    ldc1	$f2,32($sp)
    # Line 1436
    swc1	$f1,188($s0)
    # Line 1435
    ldc1	$f1,104($sp)
    swc1	$f3,176($s0)
    swc1	$f2,172($s0)
    swc1	$f1,168($s0)
    # Line 1438
    ld	$s0,168($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0db40ddc:
    # Line 1379
    lw	$a0,8($sp)
    sd	$s4,304($sp)
    lui	$s4,0xffff
    addu	$s4,$s4,$s8
    addiu	$s4,$s4,-4144
    la	$s2,sub_0db40000
    sd	$s3,296($sp)
    la	$s3,sub_0db40000
    ld	$v0,128($sp)
    ld	$at,112($sp)
    addiu	$s3,$s3,72
    addiu	$s2,$s2,-3080
    slt	$at,$at,$v0
    xori	$at,$at,0x1
    b	.L0db40c2c
    sd	$at,152($sp)
.L0db40e1c:
    ld	$gp,184($sp)
.L0db40e20:
    # Line 1371
    ld	$s0,168($sp)
    ld	$s7,160($sp)
    ld	$v1,176($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v1
.end __glEvalMesh2Line

# Function: NurbsKnots1Common
# Declared: Line 1450 (Source lines: 1451-1486)
# Address: 0x0db40e38 - 0x0db40f5c (Size: 292 bytes, Frame: 48)
.globl NurbsKnots1Common
.ent NurbsKnots1Common
NurbsKnots1Common:
    # Line 1455
    lw	$a6,__glCurrentContext
    # Line 1451
    move	$a4,$a1
    move	$a5,$a0
    # Line 1455
    li	$v0,1
    # Line 1451
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # Line 1455
    lw	$at,__glBeginMode
    # Line 1451
    lui	$v1,0xc
    addiu	$v1,$v1,-10144
    # Line 1455
    beq	$at,$v0,.L0db40f38
    # Line 1451
    addu	$gp,$t9,$v1
    # Line 1455
    addiu	$a0,$a5,-3472
    la	$a2,sub_0dbf0000
    sltiu	$at,$a0,9
    sll	$a0,$a0,0x2
    addiu	$a2,$a2,-2968
    beqz	$at,.L0db40f14
    addu	$a0,$a0,$a2
    # Line 1474
    bltz	$a4,.L0db40e9c
    # Line 1475
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1474
    lw	$a2,3472($a6)
    slt	$a2,$a4,$a2
    bnez	$a2,.L0db40ebc
    sd	$ra,16($sp)
    # Line 1475
    # lw $t9, -27320($gp) # &__glSetError
.L0db40e9c:
    sd	$ra,16($sp)
    bal __glSetError
    li	$a0,1281
    # Line 1476
    ld	$ra,16($sp)
    move	$v0,$zero
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db40ebc:
    # Line 1483
    sll	$a2,$a4,0x3
    move	$a0,$a6
    # Line 1479
    lui	$a3,0xffff
    ori	$a3,$a3,0x2910
    sll	$a7,$a5,0x2
    subu	$a7,$a7,$a5
    sll	$a7,$a7,0x3
    addu	$a7,$a7,$a6
    addu	$a3,$a3,$a7
    sw	$a4,0($a3)
    # Line 1483
    sll	$a1,$a5,0x2
    lw	$t9,8($a6)
    addu	$a1,$a1,$a6
    sd	$a1,0($sp)
    jal	__glSetError
    lw	$a1,15048($a1)
    ld	$ra,0($sp)
    sw	$v0,15048($ra)
    # Line 1486
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db40f14:
    # Line 1470
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1471
    ld	$ra,16($sp)
    move	$v0,$zero
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db40f38:
    # Line 1455
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    move	$v0,$zero
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end NurbsKnots1Common

# Function: NurbsKnots2Common
# Declared: Line 1489 (Source lines: 1490-1531)
# Address: 0x0db40f5c - 0x0db410a4 (Size: 328 bytes, Frame: 192)
.globl NurbsKnots2Common
.ent NurbsKnots2Common
NurbsKnots2Common:
    # Line 1494
    lw	$a4,__glCurrentContext
    li	$v0,1
    # Line 1490
    addiu	$sp,$sp,-64
    sd	$gp,8($sp)
    # Line 1494
    lw	$at,__glBeginMode
    # Line 1490
    lui	$v1,0xc
    addiu	$v1,$v1,-10436
    # Line 1494
    beq	$at,$v0,.L0db41080
    # Line 1490
    addu	$gp,$t9,$v1
    # Line 1494
    addiu	$a5,$a0,-3504
    la	$at,sub_0dbf0000
    sltiu	$v0,$a5,9
    sll	$a5,$a5,0x2
    addiu	$at,$at,-2928
    beqz	$v0,.L0db4105c
    addu	$a5,$a5,$at
    # Line 1513
    bltz	$a1,.L0db4103c
    # Line 1514
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1513
    lw	$at,3472($a4)
    slt	$at,$a1,$at
    beqz	$at,.L0db4103c
    # Line 1514
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$s7,0($sp)
    # Line 1515
    lui	$at,0xfffe
    sll	$a6,$a0,0x2
    addu	$a6,$a6,$a4
    # Line 1524
    addiu	$s7,$a6,14956
    # Line 1515
    sll	$a5,$a0,0x2
    addu	$a5,$a5,$a0
    sll	$a5,$a5,0x3
    addu	$a5,$a5,$a4
    beqz	$a2,.L0db41024
    addu	$a5,$a5,$at
    # Line 1521
    addiu	$s7,$a6,14992
    # Line 1520
    move	$a7,$a1
    sd	$ra,16($sp)
    # Line 1521
    lw	$t0,19444($a5)
    # Line 1520
    sw	$a1,19448($a5)
.L0db40ff4:
    # Line 1527
    move	$a0,$a4
    lw	$t9,8($a4)
    lw	$a1,0($s7)
    addu	$a2,$a7,$t0
    jal	__glSetError
    sll	$a2,$a2,0x3
    ld	$gp,8($sp)
    # Line 1531
    ld	$ra,16($sp)
    # Line 1527
    sw	$v0,0($s7)
    # Line 1531
    ld	$s7,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db41024:
    # Line 1523
    move	$t0,$a1
    sd	$ra,16($sp)
    # Line 1524
    lw	$a7,19448($a5)
    b	.L0db40ff4
    # Line 1523
    sw	$a1,19444($a5)
    # Line 1514
    # lw $t9, -27320($gp) # &__glSetError
.L0db4103c:
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 1515
    ld	$ra,16($sp)
    move	$v0,$zero
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db4105c:
    # Line 1509
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1510
    ld	$ra,16($sp)
    move	$v0,$zero
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db41080:
    # Line 1494
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    move	$v0,$zero
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end NurbsKnots2Common

# Function: __glim_NurbsKnots1dSGIX
# Declared: Line 1535 (Source lines: 1538-1549)
# Address: 0x0db410a4 - 0x0db411a4 (Size: 256 bytes, Frame: 208)
.globl __glim_NurbsKnots1dSGIX
.ent __glim_NurbsKnots1dSGIX
__glim_NurbsKnots1dSGIX:
    # Line 1538
    addiu	$sp,$sp,-80
    sd	$s1,24($sp)
    move	$s1,$a3
    sd	$s0,32($sp)
    move	$s0,$a2
    sd	$gp,8($sp)
    lui	$at,0xc
    addiu	$at,$at,-10764
    addu	$gp,$t9,$at
    # Line 1541
    # lw $t9, -27016($gp) # &NurbsKnots1Common
    sd	$a1,0($sp)
    sd	$ra,16($sp)
    bal NurbsKnots1Common
    move	$a1,$a2
    # Line 1545
    move	$a5,$s0
    # Line 1541
    beqz	$v0,.L0db4118c
    # Line 1545
    move	$a1,$zero
    blez	$s0,.L0db41178
    # Line 1549
    ld	$ra,16($sp)
    # Line 1545
    ld	$a3,0($sp)
    andi	$a2,$s0,0x3
    beqz	$a2,.L0db4111c
    sll	$a3,$a3,0x3
.L0db41100:
    addiu	$a1,$a1,1
    # Line 1546
    ldc1	$f0,0($s1)
    # Line 1547
    addu	$s1,$a3,$s1
    # Line 1546
    addiu	$v0,$v0,8
    addi	$a2,$a2,-1
    bnez	$a2,.L0db41100
    sdc1	$f0,-8($v0)
.L0db4111c:
    move	$a7,$s1
    sra	$a4,$a5,0x2
    move	$t0,$a1
    beqz	$a4,.L0db41178
    move	$a6,$v0
    move	$a1,$t0
    move	$v0,$a7
    move	$a2,$a6
.L0db4113c:
    ldc1	$f0,0($v0)
    sdc1	$f0,0($a2)
    # Line 1547
    addu	$v0,$a3,$v0
    # Line 1546
    ldc1	$f3,0($v0)
    sdc1	$f3,8($a2)
    # Line 1547
    addu	$v0,$a3,$v0
    # Line 1546
    ldc1	$f2,0($v0)
    addiu	$a2,$a2,32
    # Line 1545
    addiu	$a1,$a1,4
    # Line 1546
    sdc1	$f2,-16($a2)
    # Line 1547
    addu	$v0,$a3,$v0
    # Line 1546
    ldc1	$f1,0($v0)
    # Line 1547
    addu	$v0,$a3,$v0
    # Line 1545
    bne	$s0,$a1,.L0db4113c
    # Line 1546
    sdc1	$f1,-8($a2)
.L0db41178:
    ld	$gp,8($sp)
    # Line 1549
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db4118c:
    ld	$gp,8($sp)
    # Line 1542
    ld	$ra,16($sp)
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glim_NurbsKnots1dSGIX

# Function: __glim_NurbsKnots1fSGIX
# Declared: Line 1551 (Source lines: 1554-1565)
# Address: 0x0db411a4 - 0x0db412b8 (Size: 276 bytes, Frame: 208)
.globl __glim_NurbsKnots1fSGIX
.ent __glim_NurbsKnots1fSGIX
__glim_NurbsKnots1fSGIX:
    # Line 1554
    addiu	$sp,$sp,-80
    sd	$s1,24($sp)
    move	$s1,$a3
    sd	$s0,32($sp)
    move	$s0,$a2
    sd	$gp,8($sp)
    lui	$at,0xc
    addiu	$at,$at,-11020
    addu	$gp,$t9,$at
    # Line 1557
    # lw $t9, -27016($gp) # &NurbsKnots1Common
    sd	$a1,0($sp)
    sd	$ra,16($sp)
    bal NurbsKnots1Common
    move	$a1,$a2
    # Line 1561
    move	$a5,$s0
    # Line 1557
    beqz	$v0,.L0db412a0
    # Line 1561
    move	$a1,$zero
    blez	$s0,.L0db4128c
    # Line 1565
    ld	$ra,16($sp)
    # Line 1561
    ld	$a3,0($sp)
    andi	$a2,$s0,0x3
    beqz	$a2,.L0db41220
    sll	$a3,$a3,0x2
.L0db41200:
    addiu	$a1,$a1,1
    # Line 1562
    lwc1	$f0,0($s1)
    # Line 1563
    addu	$s1,$a3,$s1
    # Line 1562
    addiu	$v0,$v0,8
    addi	$a2,$a2,-1
    cvt.d.s	$f0,$f0
    bnez	$a2,.L0db41200
    sdc1	$f0,-8($v0)
.L0db41220:
    move	$a7,$s1
    sra	$a4,$a5,0x2
    move	$t0,$a1
    beqz	$a4,.L0db4128c
    move	$a6,$v0
    move	$a1,$t0
    move	$v0,$a7
    move	$a2,$a6
.L0db41240:
    lwc1	$f0,0($v0)
    cvt.d.s	$f0,$f0
    sdc1	$f0,0($a2)
    # Line 1563
    addu	$v0,$a3,$v0
    # Line 1562
    lwc1	$f3,0($v0)
    cvt.d.s	$f3,$f3
    sdc1	$f3,8($a2)
    # Line 1563
    addu	$v0,$a3,$v0
    # Line 1562
    lwc1	$f2,0($v0)
    cvt.d.s	$f2,$f2
    addiu	$a2,$a2,32
    sdc1	$f2,-16($a2)
    # Line 1563
    addu	$v0,$a3,$v0
    # Line 1562
    lwc1	$f1,0($v0)
    # Line 1561
    addiu	$a1,$a1,4
    # Line 1563
    addu	$v0,$a3,$v0
    # Line 1562
    cvt.d.s	$f1,$f1
    # Line 1561
    bne	$s0,$a1,.L0db41240
    # Line 1562
    sdc1	$f1,-8($a2)
.L0db4128c:
    ld	$gp,8($sp)
    # Line 1565
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db412a0:
    ld	$gp,8($sp)
    # Line 1558
    ld	$ra,16($sp)
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glim_NurbsKnots1fSGIX

# Function: __glim_NurbsKnots1iSGIX
# Declared: Line 1567 (Source lines: 1570-1581)
# Address: 0x0db412b8 - 0x0db413f0 (Size: 312 bytes, Frame: 208)
.globl __glim_NurbsKnots1iSGIX
.ent __glim_NurbsKnots1iSGIX
__glim_NurbsKnots1iSGIX:
    # Line 1570
    addiu	$sp,$sp,-80
    sd	$s1,24($sp)
    move	$s1,$a3
    sd	$s0,32($sp)
    move	$s0,$a2
    sd	$gp,8($sp)
    lui	$at,0xc
    addiu	$at,$at,-11296
    addu	$gp,$t9,$at
    # Line 1573
    # lw $t9, -27016($gp) # &NurbsKnots1Common
    sd	$a1,0($sp)
    sd	$ra,16($sp)
    bal NurbsKnots1Common
    move	$a1,$a2
    # Line 1577
    move	$a5,$s0
    # Line 1573
    beqz	$v0,.L0db413d8
    # Line 1577
    move	$a1,$zero
    blez	$s0,.L0db413c4
    # Line 1581
    ld	$ra,16($sp)
    # Line 1577
    ld	$a3,0($sp)
    andi	$a2,$s0,0x3
    beqz	$a2,.L0db41338
    sll	$a3,$a3,0x2
.L0db41314:
    # Line 1578
    lw	$a4,0($s1)
    mtc1	$a4,$f0
    # Line 1577
    addiu	$a1,$a1,1
    # Line 1578
    cvt.d.w	$f0,$f0
    # Line 1579
    addu	$s1,$a3,$s1
    # Line 1578
    addiu	$v0,$v0,8
    addi	$a2,$a2,-1
    bnez	$a2,.L0db41314
    sdc1	$f0,-8($v0)
.L0db41338:
    move	$a7,$s1
    sra	$at,$a5,0x2
    move	$t0,$a1
    beqz	$at,.L0db413c4
    move	$a6,$v0
    move	$a1,$t0
    move	$v0,$a7
    move	$a2,$a6
.L0db41358:
    lw	$a0,0($v0)
    mtc1	$a0,$f0
    nop
    cvt.d.w	$f0,$f0
    sdc1	$f0,0($a2)
    # Line 1579
    addu	$v0,$a3,$v0
    # Line 1578
    lw	$v1,0($v0)
    mtc1	$v1,$f3
    nop
    cvt.d.w	$f3,$f3
    sdc1	$f3,8($a2)
    # Line 1579
    addu	$v0,$a3,$v0
    # Line 1578
    lw	$v1,0($v0)
    mtc1	$v1,$f2
    nop
    cvt.d.w	$f2,$f2
    sdc1	$f2,16($a2)
    # Line 1579
    addu	$v0,$a3,$v0
    # Line 1578
    lw	$v1,0($v0)
    mtc1	$v1,$f1
    nop
    cvt.d.w	$f1,$f1
    addiu	$a2,$a2,32
    # Line 1577
    addiu	$a1,$a1,4
    # Line 1579
    addu	$v0,$a3,$v0
    # Line 1577
    bne	$s0,$a1,.L0db41358
    # Line 1578
    sdc1	$f1,-8($a2)
.L0db413c4:
    ld	$gp,8($sp)
    # Line 1581
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db413d8:
    ld	$gp,8($sp)
    # Line 1574
    ld	$ra,16($sp)
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glim_NurbsKnots1iSGIX

# Function: __glim_NurbsKnots2dSGIX
# Declared: Line 1583 (Source lines: 1587-1608)
# Address: 0x0db413f0 - 0x0db415f0 (Size: 512 bytes, Frame: 144)
.globl __glim_NurbsKnots2dSGIX
.ent __glim_NurbsKnots2dSGIX
__glim_NurbsKnots2dSGIX:
    # Line 1587
    addiu	$sp,$sp,-144
    sd	$s0,24($sp)
    move	$s0,$a2
    # Line 1593
    move	$a2,$zero
    sd	$s3,40($sp)
    # Line 1587
    move	$s3,$a6
    sd	$s2,64($sp)
    move	$s2,$a5
    sd	$s1,32($sp)
    move	$s1,$a4
    sd	$a3,0($sp)
    sd	$a0,16($sp)
    sd	$gp,48($sp)
    lui	$at,0xc
    addiu	$at,$at,-11608
    addu	$gp,$t9,$at
    # Line 1593
    # lw $t9, -27012($gp) # &NurbsKnots2Common
    sd	$a1,8($sp)
    sd	$ra,56($sp)
    bal NurbsKnots2Common
    move	$a1,$s0
    # Line 1596
    ld	$a2,8($sp)
    # Line 1593
    beqz	$v0,.L0db415b4
    # Line 1596
    move	$a4,$s0
    move	$a0,$zero
    blez	$s0,.L0db414e0
    sll	$a2,$a2,0x3
    andi	$a1,$s0,0x3
    beqz	$a1,.L0db41488
    move	$t1,$a0
.L0db41468:
    addiu	$a0,$a0,1
    # Line 1597
    ldc1	$f0,0($s2)
    # Line 1598
    addu	$s2,$a2,$s2
    # Line 1597
    addiu	$v0,$v0,8
    addi	$a1,$a1,-1
    bnez	$a1,.L0db41468
    sdc1	$f0,-8($v0)
    move	$t1,$a0
.L0db41488:
    sra	$a7,$a4,0x2
    move	$a6,$s2
    beqz	$a7,.L0db414e0
    move	$a5,$v0
    move	$a0,$a6
    move	$v0,$t1
    move	$a1,$a5
.L0db414a4:
    ldc1	$f0,0($a0)
    sdc1	$f0,0($a1)
    # Line 1598
    addu	$a0,$a2,$a0
    # Line 1597
    ldc1	$f3,0($a0)
    sdc1	$f3,8($a1)
    # Line 1598
    addu	$a0,$a2,$a0
    # Line 1597
    ldc1	$f2,0($a0)
    addiu	$a1,$a1,32
    # Line 1596
    addiu	$v0,$v0,4
    # Line 1597
    sdc1	$f2,-16($a1)
    # Line 1598
    addu	$a0,$a2,$a0
    # Line 1597
    ldc1	$f1,0($a0)
    # Line 1598
    addu	$a0,$a2,$a0
    # Line 1596
    bne	$s0,$v0,.L0db414a4
    # Line 1597
    sdc1	$f1,-8($a1)
.L0db414e0:
    # Line 1601
    # lw $t9, -27012($gp) # &NurbsKnots2Common
    ld	$a0,16($sp)
    move	$a1,$s1
    bal NurbsKnots2Common
    li	$a2,1
    # Line 1604
    ld	$a2,0($sp)
    move	$a0,$zero
    # Line 1602
    ld	$s2,64($sp)
    # Line 1601
    beqz	$v0,.L0db415d4
    # Line 1608
    ld	$ra,56($sp)
    # Line 1604
    blez	$s1,.L0db4159c
    # Line 1608
    ld	$s0,24($sp)
    # Line 1604
    sll	$a2,$a2,0x3
    move	$a3,$s1
    andi	$a1,$s1,0x3
    beqz	$a1,.L0db41544
    move	$a4,$a0
.L0db41524:
    addiu	$a0,$a0,1
    # Line 1605
    ldc1	$f1,0($s3)
    # Line 1606
    addu	$s3,$a2,$s3
    # Line 1605
    addiu	$v0,$v0,8
    addi	$a1,$a1,-1
    bnez	$a1,.L0db41524
    sdc1	$f1,-8($v0)
    move	$a4,$a0
.L0db41544:
    move	$a5,$v0
    move	$a6,$s3
    sra	$a7,$a3,0x2
    beqz	$a7,.L0db4159c
    move	$a1,$a6
    move	$a0,$a4
    move	$v0,$a5
.L0db41560:
    ldc1	$f1,0($a1)
    sdc1	$f1,0($v0)
    # Line 1606
    addu	$a1,$a2,$a1
    # Line 1605
    ldc1	$f0,0($a1)
    sdc1	$f0,8($v0)
    # Line 1606
    addu	$a1,$a2,$a1
    # Line 1605
    ldc1	$f3,0($a1)
    addiu	$v0,$v0,32
    # Line 1604
    addiu	$a0,$a0,4
    # Line 1605
    sdc1	$f3,-16($v0)
    # Line 1606
    addu	$a1,$a2,$a1
    # Line 1605
    ldc1	$f2,0($a1)
    # Line 1606
    addu	$a1,$a2,$a1
    # Line 1604
    bne	$s1,$a0,.L0db41560
    # Line 1605
    sdc1	$f2,-8($v0)
.L0db4159c:
    # Line 1608
    ld	$s2,64($sp)
    ld	$gp,48($sp)
    ld	$s1,32($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db415b4:
    # Line 1594
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s2,64($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db415d4:
    ld	$gp,48($sp)
    # Line 1602
    ld	$s0,24($sp)
    ld	$ra,56($sp)
    ld	$s1,32($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glim_NurbsKnots2dSGIX

# Function: __glim_NurbsKnots2fSGIX
# Declared: Line 1610 (Source lines: 1614-1635)
# Address: 0x0db415f0 - 0x0db41818 (Size: 552 bytes, Frame: 144)
.globl __glim_NurbsKnots2fSGIX
.ent __glim_NurbsKnots2fSGIX
__glim_NurbsKnots2fSGIX:
    # Line 1614
    addiu	$sp,$sp,-144
    sd	$s0,24($sp)
    move	$s0,$a2
    # Line 1620
    move	$a2,$zero
    sd	$s3,40($sp)
    # Line 1614
    move	$s3,$a6
    sd	$s2,64($sp)
    move	$s2,$a5
    sd	$s1,32($sp)
    move	$s1,$a4
    sd	$a3,0($sp)
    sd	$a0,16($sp)
    sd	$gp,48($sp)
    lui	$at,0xc
    addiu	$at,$at,-12120
    addu	$gp,$t9,$at
    # Line 1620
    # lw $t9, -27012($gp) # &NurbsKnots2Common
    sd	$a1,8($sp)
    sd	$ra,56($sp)
    bal NurbsKnots2Common
    move	$a1,$s0
    # Line 1623
    ld	$a2,8($sp)
    # Line 1620
    beqz	$v0,.L0db417dc
    # Line 1623
    move	$a4,$s0
    move	$a0,$zero
    blez	$s0,.L0db416f4
    sll	$a2,$a2,0x2
    andi	$a1,$s0,0x3
    beqz	$a1,.L0db4168c
    move	$t1,$a0
.L0db41668:
    addiu	$a0,$a0,1
    # Line 1624
    lwc1	$f0,0($s2)
    # Line 1625
    addu	$s2,$a2,$s2
    # Line 1624
    addiu	$v0,$v0,8
    addi	$a1,$a1,-1
    cvt.d.s	$f0,$f0
    bnez	$a1,.L0db41668
    sdc1	$f0,-8($v0)
    move	$t1,$a0
.L0db4168c:
    sra	$a7,$a4,0x2
    move	$a6,$s2
    beqz	$a7,.L0db416f4
    move	$a5,$v0
    move	$a0,$a6
    move	$v0,$t1
    move	$a1,$a5
.L0db416a8:
    lwc1	$f0,0($a0)
    cvt.d.s	$f0,$f0
    sdc1	$f0,0($a1)
    # Line 1625
    addu	$a0,$a2,$a0
    # Line 1624
    lwc1	$f3,0($a0)
    cvt.d.s	$f3,$f3
    sdc1	$f3,8($a1)
    # Line 1625
    addu	$a0,$a2,$a0
    # Line 1624
    lwc1	$f2,0($a0)
    cvt.d.s	$f2,$f2
    addiu	$a1,$a1,32
    sdc1	$f2,-16($a1)
    # Line 1625
    addu	$a0,$a2,$a0
    # Line 1624
    lwc1	$f1,0($a0)
    # Line 1623
    addiu	$v0,$v0,4
    # Line 1625
    addu	$a0,$a2,$a0
    # Line 1624
    cvt.d.s	$f1,$f1
    # Line 1623
    bne	$s0,$v0,.L0db416a8
    # Line 1624
    sdc1	$f1,-8($a1)
.L0db416f4:
    # Line 1628
    # lw $t9, -27012($gp) # &NurbsKnots2Common
    ld	$a0,16($sp)
    move	$a1,$s1
    bal NurbsKnots2Common
    li	$a2,1
    # Line 1631
    ld	$a2,0($sp)
    move	$a0,$zero
    # Line 1629
    ld	$s2,64($sp)
    # Line 1628
    beqz	$v0,.L0db417fc
    # Line 1635
    ld	$ra,56($sp)
    # Line 1631
    blez	$s1,.L0db417c4
    # Line 1635
    ld	$s0,24($sp)
    # Line 1631
    sll	$a2,$a2,0x2
    move	$a3,$s1
    andi	$a1,$s1,0x3
    beqz	$a1,.L0db4175c
    move	$a4,$a0
.L0db41738:
    addiu	$a0,$a0,1
    # Line 1632
    lwc1	$f1,0($s3)
    # Line 1633
    addu	$s3,$a2,$s3
    # Line 1632
    addiu	$v0,$v0,8
    addi	$a1,$a1,-1
    cvt.d.s	$f1,$f1
    bnez	$a1,.L0db41738
    sdc1	$f1,-8($v0)
    move	$a4,$a0
.L0db4175c:
    move	$a5,$v0
    move	$a6,$s3
    sra	$a7,$a3,0x2
    beqz	$a7,.L0db417c4
    move	$a1,$a6
    move	$a0,$a4
    move	$v0,$a5
.L0db41778:
    lwc1	$f1,0($a1)
    cvt.d.s	$f1,$f1
    sdc1	$f1,0($v0)
    # Line 1633
    addu	$a1,$a2,$a1
    # Line 1632
    lwc1	$f0,0($a1)
    cvt.d.s	$f0,$f0
    sdc1	$f0,8($v0)
    # Line 1633
    addu	$a1,$a2,$a1
    # Line 1632
    lwc1	$f3,0($a1)
    cvt.d.s	$f3,$f3
    addiu	$v0,$v0,32
    sdc1	$f3,-16($v0)
    # Line 1633
    addu	$a1,$a2,$a1
    # Line 1632
    lwc1	$f2,0($a1)
    # Line 1631
    addiu	$a0,$a0,4
    # Line 1633
    addu	$a1,$a2,$a1
    # Line 1632
    cvt.d.s	$f2,$f2
    # Line 1631
    bne	$s1,$a0,.L0db41778
    # Line 1632
    sdc1	$f2,-8($v0)
.L0db417c4:
    # Line 1635
    ld	$s2,64($sp)
    ld	$gp,48($sp)
    ld	$s1,32($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db417dc:
    # Line 1621
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s2,64($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db417fc:
    ld	$gp,48($sp)
    # Line 1629
    ld	$s0,24($sp)
    ld	$ra,56($sp)
    ld	$s1,32($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glim_NurbsKnots2fSGIX

# Function: __glim_NurbsKnots2iSGIX
# Declared: Line 1637 (Source lines: 1641-1662)
# Address: 0x0db41818 - 0x0db41a88 (Size: 624 bytes, Frame: 144)
.globl __glim_NurbsKnots2iSGIX
.ent __glim_NurbsKnots2iSGIX
__glim_NurbsKnots2iSGIX:
    # Line 1641
    addiu	$sp,$sp,-144
    sd	$s0,24($sp)
    move	$s0,$a2
    # Line 1647
    move	$a2,$zero
    sd	$s3,40($sp)
    # Line 1641
    move	$s3,$a6
    sd	$s2,64($sp)
    move	$s2,$a5
    sd	$s1,32($sp)
    move	$s1,$a4
    sd	$a3,0($sp)
    sd	$a0,16($sp)
    sd	$gp,48($sp)
    lui	$at,0xc
    addiu	$at,$at,-12672
    addu	$gp,$t9,$at
    # Line 1647
    # lw $t9, -27012($gp) # &NurbsKnots2Common
    sd	$a1,8($sp)
    sd	$ra,56($sp)
    bal NurbsKnots2Common
    move	$a1,$s0
    # Line 1650
    ld	$a2,8($sp)
    # Line 1647
    beqz	$v0,.L0db41a4c
    # Line 1650
    move	$a4,$s0
    move	$a0,$zero
    blez	$s0,.L0db41940
    sll	$a2,$a2,0x2
    andi	$a1,$s0,0x3
    beqz	$a1,.L0db418b8
    move	$t1,$a0
.L0db41890:
    # Line 1651
    lw	$a7,0($s2)
    mtc1	$a7,$f0
    # Line 1650
    addiu	$a0,$a0,1
    # Line 1651
    cvt.d.w	$f0,$f0
    # Line 1652
    addu	$s2,$a2,$s2
    # Line 1651
    addiu	$v0,$v0,8
    addi	$a1,$a1,-1
    bnez	$a1,.L0db41890
    sdc1	$f0,-8($v0)
    move	$t1,$a0
.L0db418b8:
    sra	$t0,$a4,0x2
    move	$a6,$s2
    beqz	$t0,.L0db41940
    move	$a5,$v0
    move	$a0,$a6
    move	$v0,$t1
    move	$a1,$a5
.L0db418d4:
    lw	$t0,0($a0)
    mtc1	$t0,$f0
    nop
    cvt.d.w	$f0,$f0
    sdc1	$f0,0($a1)
    # Line 1652
    addu	$a0,$a2,$a0
    # Line 1651
    lw	$a7,0($a0)
    mtc1	$a7,$f3
    nop
    cvt.d.w	$f3,$f3
    sdc1	$f3,8($a1)
    # Line 1652
    addu	$a0,$a2,$a0
    # Line 1651
    lw	$a7,0($a0)
    mtc1	$a7,$f2
    nop
    cvt.d.w	$f2,$f2
    sdc1	$f2,16($a1)
    # Line 1652
    addu	$a0,$a2,$a0
    # Line 1651
    lw	$a7,0($a0)
    mtc1	$a7,$f1
    nop
    cvt.d.w	$f1,$f1
    addiu	$a1,$a1,32
    # Line 1650
    addiu	$v0,$v0,4
    # Line 1652
    addu	$a0,$a2,$a0
    # Line 1650
    bne	$s0,$v0,.L0db418d4
    # Line 1651
    sdc1	$f1,-8($a1)
.L0db41940:
    # Line 1655
    # lw $t9, -27012($gp) # &NurbsKnots2Common
    ld	$a0,16($sp)
    move	$a1,$s1
    bal NurbsKnots2Common
    li	$a2,1
    # Line 1658
    ld	$a2,0($sp)
    move	$a0,$zero
    # Line 1656
    ld	$s2,64($sp)
    # Line 1655
    beqz	$v0,.L0db41a6c
    # Line 1662
    ld	$ra,56($sp)
    # Line 1658
    blez	$s1,.L0db41a34
    # Line 1662
    ld	$s0,24($sp)
    # Line 1658
    sll	$a2,$a2,0x2
    move	$a3,$s1
    andi	$a1,$s1,0x3
    beqz	$a1,.L0db419ac
    move	$a4,$a0
.L0db41984:
    # Line 1659
    lw	$a7,0($s3)
    mtc1	$a7,$f1
    # Line 1658
    addiu	$a0,$a0,1
    # Line 1659
    cvt.d.w	$f1,$f1
    # Line 1660
    addu	$s3,$a2,$s3
    # Line 1659
    addiu	$v0,$v0,8
    addi	$a1,$a1,-1
    bnez	$a1,.L0db41984
    sdc1	$f1,-8($v0)
    move	$a4,$a0
.L0db419ac:
    move	$a5,$v0
    move	$a6,$s3
    sra	$t0,$a3,0x2
    beqz	$t0,.L0db41a34
    move	$a1,$a6
    move	$a0,$a4
    move	$v0,$a5
.L0db419c8:
    lw	$t0,0($a1)
    mtc1	$t0,$f1
    nop
    cvt.d.w	$f1,$f1
    sdc1	$f1,0($v0)
    # Line 1660
    addu	$a1,$a2,$a1
    # Line 1659
    lw	$a7,0($a1)
    mtc1	$a7,$f0
    nop
    cvt.d.w	$f0,$f0
    sdc1	$f0,8($v0)
    # Line 1660
    addu	$a1,$a2,$a1
    # Line 1659
    lw	$a7,0($a1)
    mtc1	$a7,$f3
    nop
    cvt.d.w	$f3,$f3
    sdc1	$f3,16($v0)
    # Line 1660
    addu	$a1,$a2,$a1
    # Line 1659
    lw	$a7,0($a1)
    mtc1	$a7,$f2
    nop
    cvt.d.w	$f2,$f2
    addiu	$v0,$v0,32
    # Line 1658
    addiu	$a0,$a0,4
    # Line 1660
    addu	$a1,$a2,$a1
    # Line 1658
    bne	$s1,$a0,.L0db419c8
    # Line 1659
    sdc1	$f2,-8($v0)
.L0db41a34:
    # Line 1662
    ld	$s2,64($sp)
    ld	$gp,48($sp)
    ld	$s1,32($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db41a4c:
    # Line 1648
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s2,64($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db41a6c:
    ld	$gp,48($sp)
    # Line 1656
    ld	$s0,24($sp)
    ld	$ra,56($sp)
    ld	$s1,32($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glim_NurbsKnots2iSGIX

.late_rodata
jtbl_0dbef370:
    .word .L0db3cd50
    .word .L0db3cd68
    .word .L0db3cd58
    .word .L0db3cd68
    .word .L0db3cd60
    .word .L0db3cd58
    .word .L0db3cd50
    .word .L0db3cd58
    .word .L0db3cd50
    .word .L0db3cd48
    .word .L0db3cd48
    .word .L0db3cd48
    .word .L0db3cd48
    .word .L0db3cd48
    .word .L0db3cd48
    .word .L0db3cd48
    .word .L0db3cd48
    .word .L0db3cd48
    .word .L0db3cd48
    .word .L0db3cd48
    .word .L0db3cd48
    .word .L0db3cd48
    .word .L0db3cd48
    .word .L0db3cd48
    .word .L0db3cd48
    .word .L0db3cd48
    .word .L0db3cd48
    .word .L0db3cd48
    .word .L0db3cd48
    .word .L0db3cd48
    .word .L0db3cd48
    .word .L0db3cd48
    .word .L0db3cd50
    .word .L0db3cd68
    .word .L0db3cd58
    .word .L0db3cd68
    .word .L0db3cd60
    .word .L0db3cd58
    .word .L0db3cd50
    .word .L0db3cd58
    .word .L0db3cd50

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_bf800000:
    .word 0xbf800000

