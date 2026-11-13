# Source: ../soft/so_blend.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_blend.c
# Total Functions: 48

.text

# Function: __glDoBlendAdd
# Declared: Line 30 (Source lines: 33-37)
# Address: 0x0db309a8 - 0x0db309ec (Size: 68 bytes, Frame: 0)
.globl __glDoBlendAdd
.ent __glDoBlendAdd
__glDoBlendAdd:
    # Line 33
    lwc1	$f2,0($a3)
    lwc1	$f1,0($a2)
    add.s	$f1,$f1,$f2
    swc1	$f1,0($a3)
    # Line 34
    lwc1	$f0,4($a3)
    lwc1	$f4,4($a2)
    add.s	$f4,$f4,$f0
    swc1	$f4,4($a3)
    # Line 35
    lwc1	$f3,8($a3)
    lwc1	$f2,8($a2)
    add.s	$f2,$f2,$f3
    swc1	$f2,8($a3)
    # Line 36
    lwc1	$f1,12($a3)
    lwc1	$f0,12($a2)
    add.s	$f0,$f0,$f1
    # Line 37
    jr	$ra
    # Line 36
    swc1	$f0,12($a3)
.end __glDoBlendAdd

# Function: __glDoBlendMin
# Declared: Line 40 (Source lines: 42-47)
# Address: 0x0db309ec - 0x0db30a64 (Size: 120 bytes, Frame: 0)
.globl __glDoBlendMin
.ent __glDoBlendMin
__glDoBlendMin:
    # Line 42
    lwc1	$f0,0($a3)
    lwc1	$f4,0($a2)
    c.lt.s	$f4,$f0
    nop
    bc1fl	.L0db30a0c
    # Line 43
    lwc1	$f1,4($a3)
    swc1	$f4,0($a3)
    lwc1	$f1,4($a3)
.L0db30a0c:
    lwc1	$f4,4($a2)
    c.lt.s	$f4,$f1
    nop
    bc1fl	.L0db30a28
    # Line 44
    lwc1	$f2,8($a3)
    swc1	$f4,4($a3)
    lwc1	$f2,8($a3)
.L0db30a28:
    lwc1	$f4,8($a2)
    c.lt.s	$f4,$f2
    nop
    bc1fl	.L0db30a44
    # Line 45
    lwc1	$f3,12($a3)
    swc1	$f4,8($a3)
    lwc1	$f3,12($a3)
.L0db30a44:
    lwc1	$f4,12($a2)
    c.lt.s	$f4,$f3
    nop
    bc1f	.L0db30a5c
    nop
    # Line 46
    swc1	$f4,12($a3)
.L0db30a5c:
    # Line 47
    jr	$ra
    nop
.end __glDoBlendMin

# Function: __glDoBlendMax
# Declared: Line 50 (Source lines: 52-57)
# Address: 0x0db30a64 - 0x0db30adc (Size: 120 bytes, Frame: 0)
.globl __glDoBlendMax
.ent __glDoBlendMax
__glDoBlendMax:
    # Line 52
    lwc1	$f4,0($a2)
    lwc1	$f0,0($a3)
    c.lt.s	$f0,$f4
    nop
    bc1fl	.L0db30a84
    # Line 53
    lwc1	$f4,4($a2)
    swc1	$f4,0($a3)
    lwc1	$f4,4($a2)
.L0db30a84:
    lwc1	$f1,4($a3)
    c.lt.s	$f1,$f4
    nop
    bc1fl	.L0db30aa0
    # Line 54
    lwc1	$f4,8($a2)
    swc1	$f4,4($a3)
    lwc1	$f4,8($a2)
.L0db30aa0:
    lwc1	$f2,8($a3)
    c.lt.s	$f2,$f4
    nop
    bc1fl	.L0db30abc
    # Line 55
    lwc1	$f4,12($a2)
    swc1	$f4,8($a3)
    lwc1	$f4,12($a2)
.L0db30abc:
    lwc1	$f3,12($a3)
    c.lt.s	$f3,$f4
    nop
    bc1f	.L0db30ad4
    nop
    # Line 56
    swc1	$f4,12($a3)
.L0db30ad4:
    # Line 57
    jr	$ra
    nop
.end __glDoBlendMax

# Function: __glDoBlendSubtract
# Declared: Line 60 (Source lines: 63-67)
# Address: 0x0db30adc - 0x0db30b20 (Size: 68 bytes, Frame: 0)
.globl __glDoBlendSubtract
.ent __glDoBlendSubtract
__glDoBlendSubtract:
    # Line 63
    lwc1	$f2,0($a2)
    lwc1	$f1,0($a3)
    sub.s	$f1,$f1,$f2
    swc1	$f1,0($a3)
    # Line 64
    lwc1	$f4,4($a3)
    lwc1	$f0,4($a2)
    sub.s	$f4,$f4,$f0
    swc1	$f4,4($a3)
    # Line 65
    lwc1	$f2,8($a3)
    lwc1	$f3,8($a2)
    sub.s	$f2,$f2,$f3
    swc1	$f2,8($a3)
    # Line 66
    lwc1	$f0,12($a3)
    lwc1	$f1,12($a2)
    sub.s	$f0,$f0,$f1
    # Line 67
    jr	$ra
    # Line 66
    swc1	$f0,12($a3)
.end __glDoBlendSubtract

# Function: __glDoBlendReverseSubtract
# Declared: Line 70 (Source lines: 73-77)
# Address: 0x0db30b20 - 0x0db30b64 (Size: 68 bytes, Frame: 0)
.globl __glDoBlendReverseSubtract
.ent __glDoBlendReverseSubtract
__glDoBlendReverseSubtract:
    # Line 73
    lwc1	$f2,0($a3)
    lwc1	$f1,0($a2)
    sub.s	$f1,$f1,$f2
    swc1	$f1,0($a3)
    # Line 74
    lwc1	$f0,4($a3)
    lwc1	$f4,4($a2)
    sub.s	$f4,$f4,$f0
    swc1	$f4,4($a3)
    # Line 75
    lwc1	$f3,8($a3)
    lwc1	$f2,8($a2)
    sub.s	$f2,$f2,$f3
    swc1	$f2,8($a3)
    # Line 76
    lwc1	$f1,12($a3)
    lwc1	$f0,12($a2)
    sub.s	$f0,$f0,$f1
    # Line 77
    jr	$ra
    # Line 76
    swc1	$f0,12($a3)
.end __glDoBlendReverseSubtract

# Function: __glDoBlendLogicOp
# Declared: Line 87 (Source lines: 89-231)
# Address: 0x0db30b64 - 0x0db311a4 (Size: 1600 bytes, Frame: 208)
.globl __glDoBlendLogicOp
.ent __glDoBlendLogicOp
__glDoBlendLogicOp:
    # Line 89
    addiu	$sp,$sp,-80
    # Line 96
    li	$v0,5376
    # Line 93
    lw	$a5,1756($a0)
    # Line 89
    lui	$v1,0xd
    addiu	$v1,$v1,-9420
    # Line 96
    beq	$a5,$v0,.L0db30eac
    # Line 89
    addu	$at,$t9,$v1
    # Line 96
    li	$a1,5391
    beq	$a5,$a1,.L0db30ec8
    li	$a4,5379
    beq	$a5,$a4,.L0db30ea4
    li	$v0,5381
    beql	$a5,$v0,.L0db30f14
    # Line 112
    lwc1	$f1,0($a2)
    # Line 117
    lw	$a6,3140($a0)
    # Line 129
    ldc1	$f16,_lit8_3ff0000000000000
    # Line 117
    beqz	$a6,.L0db30e74
    # Line 124
    li	$t2,1
    sllv	$t2,$t2,$a6
    addiu	$t2,$t2,-1
.L0db30bb4:
    lw	$a6,3144($a0)
    beqz	$a6,.L0db30e80
    # Line 125
    li	$t3,1
    sllv	$t3,$t3,$a6
    addiu	$t3,$t3,-1
.L0db30bc8:
    lw	$a6,3148($a0)
    beqz	$a6,.L0db30e8c
    # Line 129
    ldc1	$f1,_lit8_4000000000000000
    # Line 126
    li	$t8,1
    sllv	$t8,$t8,$a6
    addiu	$t8,$t8,-1
.L0db30be0:
    lw	$a6,3152($a0)
    beqz	$a6,.L0db30e98
    # Line 127
    li	$t9,1
    sllv	$t9,$t9,$a6
    addiu	$t9,$t9,-1
.L0db30bf4:
    # Line 132
    mtc1	$t9,$f10
    nop
    cvt.d.w	$f10,$f10
    mul.d	$f10,$f10,$f1
    div.d	$f10,$f16,$f10
    # Line 131
    mtc1	$t8,$f12
    nop
    cvt.d.w	$f12,$f12
    mul.d	$f12,$f12,$f1
    div.d	$f12,$f16,$f12
    # Line 130
    mtc1	$t3,$f15
    nop
    cvt.d.w	$f15,$f15
    mul.d	$f15,$f15,$f1
    div.d	$f15,$f16,$f15
    # Line 129
    mtc1	$t2,$f0
    nop
    cvt.d.w	$f0,$f0
    mul.d	$f0,$f0,$f1
    # Line 131
    mtc1	$t8,$f4
    lwc1	$f13,30860($a0)
    # Line 129
    div.d	$f16,$f16,$f0
    # Line 131
    lwc1	$f2,8($a3)
    cvt.s.w	$f4,$f4
    # Line 132
    lwc1	$f11,30864($a0)
    # Line 131
    mul.s	$f2,$f2,$f13
    # Line 132
    lwc1	$f3,12($a3)
    mul.s	$f3,$f3,$f11
    # Line 131
    mul.s	$f2,$f2,$f4
    # Line 130
    lwc1	$f14,30856($a0)
    lwc1	$f1,4($a3)
    # Line 129
    lwc1	$f9,30852($a0)
    # Line 130
    mul.s	$f1,$f1,$f14
    # Line 129
    lwc1	$f0,0($a3)
    mul.s	$f0,$f0,$f9
    # Line 132
    mtc1	$t9,$f5
    nop
    cvt.s.w	$f5,$f5
    # Line 129
    mtc1	$t2,$f7
    nop
    cvt.s.w	$f7,$f7
    # Line 130
    mtc1	$t3,$f6
    nop
    cvt.s.w	$f6,$f6
    # Line 129
    mul.s	$f0,$f0,$f7
    # Line 131
    cvt.d.s	$f2,$f2
    # Line 132
    mul.s	$f3,$f3,$f5
    # Line 131
    add.d	$f2,$f2,$f12
    # Line 129
    cvt.d.s	$f0,$f0
    # Line 130
    mul.s	$f1,$f1,$f6
    # Line 129
    add.d	$f0,$f0,$f16
    # Line 132
    cvt.d.s	$f3,$f3
    add.d	$f3,$f3,$f10
    # Line 129
    trunc.w.d	$f0,$f0
    # Line 130
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f15
    # Line 132
    trunc.w.d	$f3,$f3
    lw	$v1,30816($a0)
    # Line 130
    trunc.w.d	$f1,$f1
    # Line 132
    li	$v0,5388
    mtc1	$v1,$f8
    # Line 131
    trunc.w.d	$f2,$f2
    # Line 132
    mfc1	$t1,$f3
    # Line 130
    mfc1	$t0,$f1
    # Line 129
    mfc1	$a7,$f0
    # Line 131
    mfc1	$a6,$f2
    # Line 137
    nor	$a1,$t0,$zero
    # Line 132
    beq	$a5,$v0,.L0db30f38
    cvt.s.w	$f8,$f8
    # Line 147
    lwc1	$f0,0($a2)
    mul.s	$f0,$f0,$f9
    # Line 148
    lwc1	$f1,4($a2)
    mul.s	$f1,$f1,$f14
    # Line 147
    mul.s	$f0,$f0,$f7
    # Line 148
    mul.s	$f1,$f1,$f6
    # Line 150
    lwc1	$f3,12($a2)
    mul.s	$f3,$f3,$f11
    # Line 149
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f13
    # Line 147
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f16
    # Line 150
    mul.s	$f3,$f3,$f5
    # Line 148
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f15
    # Line 149
    mul.s	$f2,$f2,$f4
    # Line 150
    cvt.d.s	$f3,$f3
    add.d	$f3,$f3,$f10
    # Line 149
    cvt.d.s	$f2,$f2
    add.d	$f2,$f2,$f12
    # Line 150
    addiu	$a4,$a5,-5377
    trunc.w.d	$f3,$f3
    sltiu	$a1,$a4,14
    sll	$a4,$a4,0x2
    # Line 149
    trunc.w.d	$f2,$f2
    # Line 150
    mfc1	$v1,$f3
    la	$v0,sub_0dbf0000
    # Line 148
    trunc.w.d	$f1,$f1
    sd	$v1,16($sp)
    # Line 149
    mfc1	$v1,$f2
    # Line 150
    addiu	$v0,$v0,-3984
    # Line 147
    trunc.w.d	$f0,$f0
    sd	$v1,8($sp)
    # Line 148
    mfc1	$v1,$f1
    # Line 150
    addu	$a4,$a4,$v0
    sd	$a4,32($sp)
    sd	$v1,0($sp)
    # Line 147
    mfc1	$v1,$f0
    ld	$v0,32($sp)
    # Line 150
    beqz	$a1,.L0db30dd8
    sd	$v1,24($sp)
    lw	$v0,%lo(jtbl_0dbef070)($v0)
    jr	$v0
    ld	$v0,16($sp)
.L0db30db8:
    # Line 196
    ld	$a7,24($sp)
    ld	$t1,16($sp)
    # Line 198
    ld	$a6,8($sp)
    # Line 197
    ld	$t0,0($sp)
    # Line 199
    nor	$t1,$t1,$zero
    # Line 198
    nor	$a6,$a6,$zero
    # Line 197
    nor	$t0,$t0,$zero
    # Line 196
    nor	$a7,$a7,$zero
.L0db30dd8:
    # Line 222
    and	$a1,$t2,$a7
    # Line 227
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f8
    div.s	$f2,$f2,$f7
    # Line 223
    and	$v1,$t3,$t0
    # Line 228
    mtc1	$v1,$f1
    # Line 227
    swc1	$f2,0($a3)
    # Line 228
    lw	$v0,30820($a0)
    cvt.s.w	$f1,$f1
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f1,$f1,$f2
    div.s	$f1,$f1,$f6
    # Line 224
    and	$a4,$t8,$a6
    # Line 229
    mtc1	$a4,$f0
    # Line 228
    swc1	$f1,4($a3)
    # Line 229
    lw	$a1,30824($a0)
    cvt.s.w	$f0,$f0
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f0,$f0,$f1
    div.s	$f0,$f0,$f4
    # Line 225
    and	$v1,$t9,$t1
    # Line 230
    mtc1	$v1,$f4
    # Line 229
    swc1	$f0,8($a3)
    # Line 230
    lw	$v0,30848($a0)
    cvt.s.w	$f4,$f4
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f4,$f4,$f0
    div.s	$f4,$f4,$f5
    # Line 231
    addiu	$sp,$sp,80
    jr	$ra
    # Line 230
    swc1	$f4,12($a3)
.L0db30e74:
    # Line 124
    li	$t2,1
    b	.L0db30bb4
    nop
.L0db30e80:
    # Line 125
    li	$t3,1
    b	.L0db30bc8
    nop
.L0db30e8c:
    # Line 126
    li	$t8,1
    b	.L0db30be0
    nop
.L0db30e98:
    # Line 127
    li	$t9,1
    b	.L0db30bf4
    nop
.L0db30ea4:
    # Line 110
    jr	$ra
    addiu	$sp,$sp,80
.L0db30eac:
    # Line 98
    mtc1	$zero,$f3
    # Line 102
    addiu	$sp,$sp,80
    # Line 101
    swc1	$f3,12($a3)
    # Line 100
    swc1	$f3,8($a3)
    # Line 99
    swc1	$f3,4($a3)
    # Line 102
    jr	$ra
    # Line 98
    swc1	$f3,0($a3)
.L0db30ec8:
    # Line 104
    lw	$v1,30788($a0)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,0($a3)
    # Line 105
    lw	$v0,30792($a0)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,4($a3)
    # Line 106
    lw	$a4,30796($a0)
    mtc1	$a4,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,8($a3)
    # Line 107
    lwc1	$f4,30844($a0)
    # Line 108
    addiu	$sp,$sp,80
    jr	$ra
    # Line 107
    swc1	$f4,12($a3)
.L0db30f14:
    # Line 112
    swc1	$f1,0($a3)
    # Line 113
    lwc1	$f0,4($a2)
    swc1	$f0,4($a3)
    # Line 114
    lwc1	$f4,8($a2)
    swc1	$f4,8($a3)
    # Line 115
    lwc1	$f3,12($a2)
    # Line 116
    addiu	$sp,$sp,80
    jr	$ra
    # Line 115
    swc1	$f3,12($a3)
.L0db30f38:
    # Line 137
    and	$a1,$a1,$t3
    # Line 136
    nor	$a4,$a7,$zero
    and	$a4,$a4,$t2
    # Line 140
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f8
    div.s	$f1,$f1,$f7
    # Line 141
    mtc1	$a1,$f0
    # Line 140
    swc1	$f1,0($a3)
    # Line 141
    lw	$v1,30820($a0)
    cvt.s.w	$f0,$f0
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f0,$f0,$f1
    div.s	$f0,$f0,$f6
    # Line 138
    nor	$v0,$a6,$zero
    and	$v0,$v0,$t8
    # Line 142
    mtc1	$v0,$f3
    # Line 141
    swc1	$f0,4($a3)
    # Line 142
    lw	$a4,30824($a0)
    cvt.s.w	$f3,$f3
    mtc1	$a4,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f3,$f3,$f0
    div.s	$f3,$f3,$f4
    # Line 139
    nor	$a1,$t1,$zero
    and	$a1,$a1,$t9
    # Line 143
    mtc1	$a1,$f2
    # Line 142
    swc1	$f3,8($a3)
    # Line 143
    lw	$a0,30848($a0)
    cvt.s.w	$f2,$f2
    mtc1	$a0,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f2,$f2,$f3
    div.s	$f2,$f2,$f5
    # Line 144
    addiu	$sp,$sp,80
    jr	$ra
    # Line 143
    swc1	$f2,12($a3)
.L0db30fe0:
    # Line 154
    ld	$v0,24($sp)
    ld	$a4,16($sp)
    # Line 156
    ld	$a1,8($sp)
    # Line 155
    ld	$v1,0($sp)
    # Line 157
    and	$t1,$t1,$a4
    # Line 156
    and	$a6,$a6,$a1
    # Line 155
    and	$t0,$t0,$v1
    # Line 158
    b	.L0db30dd8
    # Line 154
    and	$a7,$a7,$v0
.L0db31004:
    ld	$a4,16($sp)
    # Line 160
    ld	$v0,24($sp)
    # Line 161
    ld	$v1,0($sp)
    # Line 162
    ld	$a1,8($sp)
    # Line 160
    nor	$v0,$v0,$zero
    # Line 161
    nor	$v1,$v1,$zero
    # Line 162
    nor	$a1,$a1,$zero
    # Line 163
    nor	$a4,$a4,$zero
    and	$t1,$a4,$t1
    # Line 162
    and	$a6,$a1,$a6
    # Line 161
    and	$t0,$v1,$t0
    # Line 164
    b	.L0db30dd8
    # Line 160
    and	$a7,$v0,$a7
.L0db31038:
    # Line 169
    ld	$v0,16($sp)
    nor	$t1,$t1,$zero
    and	$t1,$t1,$v0
    # Line 168
    ld	$v0,8($sp)
    nor	$a6,$a6,$zero
    and	$a6,$a6,$v0
    # Line 167
    ld	$v0,0($sp)
    nor	$t0,$t0,$zero
    and	$t0,$t0,$v0
    # Line 166
    ld	$v0,24($sp)
    nor	$a7,$a7,$zero
    # Line 170
    b	.L0db30dd8
    # Line 166
    and	$a7,$a7,$v0
.L0db3106c:
    # Line 172
    ld	$v1,24($sp)
    ld	$v0,16($sp)
    # Line 174
    ld	$a4,8($sp)
    # Line 173
    ld	$a1,0($sp)
    # Line 175
    xor	$t1,$t1,$v0
    # Line 174
    xor	$a6,$a6,$a4
    # Line 173
    xor	$t0,$t0,$a1
    # Line 176
    b	.L0db30dd8
    # Line 172
    xor	$a7,$a7,$v1
.L0db31090:
    # Line 178
    ld	$v1,24($sp)
    ld	$v0,16($sp)
    # Line 180
    ld	$a4,8($sp)
    # Line 179
    ld	$a1,0($sp)
    # Line 181
    or	$t1,$t1,$v0
    # Line 180
    or	$a6,$a6,$a4
    # Line 179
    or	$t0,$t0,$a1
    # Line 182
    b	.L0db30dd8
    # Line 178
    or	$a7,$a7,$v1
.L0db310b4:
    # Line 184
    ld	$v1,24($sp)
    ld	$v0,16($sp)
    # Line 186
    ld	$a4,8($sp)
    # Line 185
    ld	$a1,0($sp)
    # Line 187
    nor	$t1,$t1,$v0
    # Line 186
    nor	$a6,$a6,$a4
    # Line 185
    nor	$t0,$t0,$a1
    # Line 188
    b	.L0db30dd8
    # Line 184
    nor	$a7,$a7,$v1
.L0db310d8:
    ld	$v0,16($sp)
    # Line 193
    xor	$t1,$t1,$v0
    # Line 192
    ld	$v0,8($sp)
    xor	$a6,$a6,$v0
    # Line 191
    ld	$v0,0($sp)
    # Line 193
    nor	$t1,$t1,$zero
    # Line 191
    xor	$t0,$t0,$v0
    # Line 190
    ld	$v0,24($sp)
    # Line 192
    nor	$a6,$a6,$zero
    # Line 191
    nor	$t0,$t0,$zero
    # Line 190
    xor	$a7,$a7,$v0
    # Line 194
    b	.L0db30dd8
    # Line 190
    nor	$a7,$a7,$zero
.L0db3110c:
    ld	$v0,16($sp)
    # Line 202
    ld	$v1,24($sp)
    # Line 203
    ld	$a1,0($sp)
    # Line 204
    ld	$a4,8($sp)
    # Line 202
    nor	$v1,$v1,$zero
    # Line 203
    nor	$a1,$a1,$zero
    # Line 204
    nor	$a4,$a4,$zero
    # Line 205
    nor	$v0,$v0,$zero
    or	$t1,$v0,$t1
    # Line 204
    or	$a6,$a4,$a6
    # Line 203
    or	$t0,$a1,$t0
    # Line 206
    b	.L0db30dd8
    # Line 202
    or	$a7,$v1,$a7
.L0db31140:
    # Line 211
    ld	$v0,16($sp)
    nor	$t1,$t1,$zero
    or	$t1,$t1,$v0
    # Line 210
    ld	$v0,8($sp)
    nor	$a6,$a6,$zero
    or	$a6,$a6,$v0
    # Line 209
    ld	$v0,0($sp)
    nor	$t0,$t0,$zero
    or	$t0,$t0,$v0
    # Line 208
    ld	$v0,24($sp)
    nor	$a7,$a7,$zero
    # Line 212
    b	.L0db30dd8
    # Line 208
    or	$a7,$a7,$v0
.L0db31174:
    # Line 217
    and	$t1,$t1,$v0
    # Line 216
    ld	$v0,8($sp)
    and	$a6,$a6,$v0
    # Line 215
    ld	$v0,0($sp)
    # Line 217
    nor	$t1,$t1,$zero
    # Line 215
    and	$t0,$t0,$v0
    # Line 214
    ld	$v0,24($sp)
    # Line 216
    nor	$a6,$a6,$zero
    # Line 215
    nor	$t0,$t0,$zero
    # Line 214
    and	$a7,$a7,$v0
    b	.L0db30dd8
    nor	$a7,$a7,$zero
.end __glDoBlendLogicOp

# Function: __glDoBlendSourceZERO
# Declared: Line 234 (Source lines: 236-248)
# Address: 0x0db311a4 - 0x0db311c8 (Size: 36 bytes, Frame: 0)
.globl __glDoBlendSourceZERO
.ent __glDoBlendSourceZERO
__glDoBlendSourceZERO:
    # Line 236
    lui	$v0,0xd
    addiu	$v0,$v0,-11020
    addu	$at,$t9,$v0
    # Line 244
    mtc1	$zero,$f0
    # Line 247
    swc1	$f0,12($a3)
    # Line 246
    swc1	$f0,8($a3)
    # Line 245
    swc1	$f0,4($a3)
    # Line 248
    jr	$ra
    # Line 244
    swc1	$f0,0($a3)
.end __glDoBlendSourceZERO

# Function: __glDoBlendDestZERO
# Declared: Line 251 (Source lines: 253-263)
# Address: 0x0db311c8 - 0x0db31210 (Size: 72 bytes, Frame: 192)
.globl __glDoBlendDestZERO
.ent __glDoBlendDestZERO
__glDoBlendDestZERO:
    # Line 253
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    lui	$at,0xd
    addiu	$at,$at,-11056
    addu	$gp,$t9,$at
    # Line 257
    mtc1	$zero,$f0
    # Line 260
    swc1	$f0,12($sp)
    # Line 259
    swc1	$f0,8($sp)
    # Line 258
    swc1	$f0,4($sp)
    # Line 257
    swc1	$f0,0($sp)
    # Line 262
    lw	$t9,12616($a0)
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a2,$sp,0
    # Line 263
    ld	$ra,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glDoBlendDestZERO

# Function: __glDoBlendSourceONE
# Declared: Line 266 (Source lines: 277-285)
# Address: 0x0db31210 - 0x0db31234 (Size: 36 bytes, Frame: 0)
.globl __glDoBlendSourceONE
.ent __glDoBlendSourceONE
__glDoBlendSourceONE:
    # Line 281
    lwc1	$f0,0($a1)
    # Line 279
    lwc1	$f3,12($a1)
    # Line 278
    lwc1	$f2,8($a1)
    # Line 277
    lwc1	$f1,4($a1)
    # Line 284
    swc1	$f3,12($a3)
    # Line 283
    swc1	$f2,8($a3)
    # Line 282
    swc1	$f1,4($a3)
    # Line 285
    jr	$ra
    # Line 281
    swc1	$f0,0($a3)
.end __glDoBlendSourceONE

# Function: __glDoBlendDestONE
# Declared: Line 288 (Source lines: 290-297)
# Address: 0x0db31234 - 0x0db31268 (Size: 52 bytes, Frame: 48)
.globl __glDoBlendDestONE
.ent __glDoBlendDestONE
__glDoBlendDestONE:
    # Line 290
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0xd
    addiu	$at,$at,-11164
    addu	$gp,$t9,$at
    # Line 296
    lw	$t9,12616($a0)
    sd	$ra,0($sp)
    jalr	$t9
    nop
    # Line 297
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glDoBlendDestONE

# Function: __glDoBlendDestSC
# Declared: Line 299 (Source lines: 301-310)
# Address: 0x0db31268 - 0x0db312fc (Size: 148 bytes, Frame: 192)
.globl __glDoBlendDestSC
.ent __glDoBlendDestSC
__glDoBlendDestSC:
    # Line 304
    lwc1	$f11,0($a2)
    lwc1	$f10,0($a1)
    mul.s	$f10,$f10,$f11
    lwc1	$f9,30852($a0)
    mul.s	$f9,$f9,$f10
    # Line 301
    addiu	$sp,$sp,-64
    # Line 304
    swc1	$f9,0($sp)
    # Line 305
    lwc1	$f8,4($a2)
    lwc1	$f7,4($a1)
    mul.s	$f7,$f7,$f8
    lwc1	$f6,30856($a0)
    mul.s	$f6,$f6,$f7
    swc1	$f6,4($sp)
    # Line 306
    lwc1	$f5,8($a2)
    lwc1	$f4,8($a1)
    mul.s	$f4,$f4,$f5
    lwc1	$f3,30860($a0)
    mul.s	$f3,$f3,$f4
    swc1	$f3,8($sp)
    # Line 307
    lwc1	$f2,12($a2)
    lwc1	$f1,12($a1)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,30864($a0)
    mul.s	$f0,$f0,$f1
    sd	$gp,24($sp)
    # Line 301
    lui	$at,0xd
    addiu	$at,$at,-11216
    # Line 307
    swc1	$f0,12($sp)
    # Line 301
    addu	$gp,$t9,$at
    # Line 309
    lw	$t9,12616($a0)
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a2,$sp,0
    # Line 310
    ld	$ra,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glDoBlendDestSC

# Function: __glDoBlendDestMSC
# Declared: Line 312 (Source lines: 314-324)
# Address: 0x0db312fc - 0x0db313a4 (Size: 168 bytes, Frame: 192)
.globl __glDoBlendDestMSC
.ent __glDoBlendDestMSC
__glDoBlendDestMSC:
    # Line 318
    lwc1	$f12,30852($a0)
    lwc1	$f11,0($a1)
    mul.s	$f11,$f11,$f12
    # Line 316
    lwc1	$f1,3284($a0)
    # Line 318
    sub.s	$f11,$f1,$f11
    lwc1	$f10,0($a2)
    mul.s	$f10,$f10,$f11
    # Line 314
    addiu	$sp,$sp,-64
    # Line 318
    swc1	$f10,0($sp)
    # Line 319
    lwc1	$f9,30856($a0)
    lwc1	$f8,4($a1)
    mul.s	$f8,$f8,$f9
    sub.s	$f8,$f1,$f8
    lwc1	$f7,4($a2)
    mul.s	$f7,$f7,$f8
    swc1	$f7,4($sp)
    # Line 320
    lwc1	$f6,30860($a0)
    lwc1	$f5,8($a1)
    mul.s	$f5,$f5,$f6
    sub.s	$f5,$f1,$f5
    lwc1	$f4,8($a2)
    mul.s	$f4,$f4,$f5
    swc1	$f4,8($sp)
    # Line 321
    lwc1	$f3,30864($a0)
    lwc1	$f2,12($a1)
    mul.s	$f2,$f2,$f3
    sub.s	$f1,$f1,$f2
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f1
    sd	$gp,24($sp)
    # Line 314
    lui	$at,0xd
    addiu	$at,$at,-11364
    # Line 321
    swc1	$f0,12($sp)
    # Line 314
    addu	$gp,$t9,$at
    # Line 323
    lw	$t9,12616($a0)
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a2,$sp,0
    # Line 324
    ld	$ra,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glDoBlendDestMSC

# Function: __glDoBlendSourceDC
# Declared: Line 326 (Source lines: 333-341)
# Address: 0x0db313a4 - 0x0db31408 (Size: 100 bytes, Frame: 0)
.globl __glDoBlendSourceDC
.ent __glDoBlendSourceDC
__glDoBlendSourceDC:
    # Line 335
    lwc1	$f1,12($a2)
    lwc1	$f0,12($a1)
    # Line 334
    lwc1	$f4,8($a1)
    # Line 335
    mul.s	$f0,$f0,$f1
    # Line 334
    lwc1	$f1,8($a2)
    # Line 335
    lwc1	$f3,30864($a0)
    # Line 334
    mul.s	$f4,$f4,$f1
    # Line 333
    lwc1	$f1,4($a2)
    # Line 335
    mul.s	$f3,$f3,$f0
    # Line 333
    lwc1	$f0,4($a1)
    # Line 334
    lwc1	$f2,30860($a0)
    # Line 333
    mul.s	$f0,$f0,$f1
    # Line 337
    lwc1	$f1,0($a2)
    # Line 334
    mul.s	$f2,$f2,$f4
    # Line 337
    lwc1	$f4,0($a1)
    mul.s	$f4,$f4,$f1
    # Line 333
    lwc1	$f1,30856($a0)
    mul.s	$f1,$f1,$f0
    # Line 337
    lwc1	$f0,30852($a0)
    mul.s	$f0,$f0,$f4
    # Line 340
    swc1	$f3,12($a3)
    # Line 339
    swc1	$f2,8($a3)
    # Line 338
    swc1	$f1,4($a3)
    # Line 341
    jr	$ra
    # Line 337
    swc1	$f0,0($a3)
.end __glDoBlendSourceDC

# Function: __glDoBlendSourceMDC
# Declared: Line 343 (Source lines: 348-359)
# Address: 0x0db31408 - 0x0db31480 (Size: 120 bytes, Frame: 0)
.globl __glDoBlendSourceMDC
.ent __glDoBlendSourceMDC
__glDoBlendSourceMDC:
    # Line 353
    lwc1	$f0,30864($a0)
    lwc1	$f5,12($a2)
    # Line 352
    lwc1	$f2,30860($a0)
    lwc1	$f1,8($a2)
    # Line 353
    mul.s	$f5,$f5,$f0
    # Line 352
    mul.s	$f1,$f1,$f2
    # Line 351
    lwc1	$f2,30856($a0)
    # Line 348
    lwc1	$f4,3284($a0)
    # Line 351
    lwc1	$f0,4($a2)
    # Line 353
    lwc1	$f3,12($a1)
    sub.s	$f5,$f4,$f5
    # Line 351
    mul.s	$f0,$f0,$f2
    # Line 355
    lwc1	$f2,30852($a0)
    # Line 353
    mul.s	$f3,$f3,$f5
    # Line 355
    lwc1	$f5,0($a2)
    mul.s	$f5,$f5,$f2
    # Line 352
    sub.s	$f1,$f4,$f1
    lwc1	$f2,8($a1)
    # Line 351
    sub.s	$f0,$f4,$f0
    # Line 352
    mul.s	$f2,$f2,$f1
    # Line 351
    lwc1	$f1,4($a1)
    mul.s	$f1,$f1,$f0
    # Line 355
    sub.s	$f4,$f4,$f5
    lwc1	$f0,0($a1)
    mul.s	$f0,$f0,$f4
    # Line 358
    swc1	$f3,12($a3)
    # Line 357
    swc1	$f2,8($a3)
    # Line 356
    swc1	$f1,4($a3)
    # Line 359
    jr	$ra
    # Line 355
    swc1	$f0,0($a3)
.end __glDoBlendSourceMDC

# Function: __glDoBlendSourceSA
# Declared: Line 362 (Source lines: 371-382)
# Address: 0x0db31480 - 0x0db314bc (Size: 60 bytes, Frame: 0)
.globl __glDoBlendSourceSA
.ent __glDoBlendSourceSA
__glDoBlendSourceSA:
    # Line 371
    lwc1	$f3,12($a1)
    lwc1	$f4,30864($a0)
    mul.s	$f4,$f4,$f3
    # Line 374
    lwc1	$f1,4($a1)
    mul.s	$f1,$f1,$f4
    # Line 375
    lwc1	$f2,8($a1)
    # Line 376
    mul.s	$f3,$f3,$f4
    # Line 373
    lwc1	$f0,0($a1)
    # Line 375
    mul.s	$f2,$f2,$f4
    # Line 373
    mul.s	$f0,$f0,$f4
    # Line 381
    swc1	$f3,12($a3)
    # Line 380
    swc1	$f2,8($a3)
    # Line 379
    swc1	$f1,4($a3)
    # Line 382
    jr	$ra
    # Line 378
    swc1	$f0,0($a3)
.end __glDoBlendSourceSA

# Function: __glDoBlendDestSA
# Declared: Line 384 (Source lines: 386-398)
# Address: 0x0db314bc - 0x0db3152c (Size: 112 bytes, Frame: 192)
.globl __glDoBlendDestSA
.ent __glDoBlendDestSA
__glDoBlendDestSA:
    # Line 390
    lwc1	$f2,30864($a0)
    lwc1	$f1,12($a1)
    mul.s	$f1,$f1,$f2
    # Line 392
    lwc1	$f4,0($a2)
    mul.s	$f4,$f4,$f1
    # Line 386
    addiu	$sp,$sp,-64
    # Line 392
    swc1	$f4,0($sp)
    # Line 393
    lwc1	$f3,4($a2)
    mul.s	$f3,$f3,$f1
    swc1	$f3,4($sp)
    # Line 394
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f1
    swc1	$f2,8($sp)
    # Line 395
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f1
    sd	$gp,24($sp)
    # Line 386
    lui	$at,0xd
    addiu	$at,$at,-11812
    # Line 395
    swc1	$f0,12($sp)
    # Line 386
    addu	$gp,$t9,$at
    # Line 397
    lw	$t9,12616($a0)
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a2,$sp,0
    # Line 398
    ld	$ra,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glDoBlendDestSA

# Function: __glDoBlendSourceMSA
# Declared: Line 401 (Source lines: 406-420)
# Address: 0x0db3152c - 0x0db31570 (Size: 68 bytes, Frame: 0)
.globl __glDoBlendSourceMSA
.ent __glDoBlendSourceMSA
__glDoBlendSourceMSA:
    # Line 406
    lwc1	$f3,12($a1)
    lwc1	$f0,30864($a0)
    mul.s	$f0,$f0,$f3
    lwc1	$f4,3284($a0)
    sub.s	$f4,$f4,$f0
    # Line 412
    lwc1	$f1,4($a1)
    mul.s	$f1,$f1,$f4
    # Line 413
    lwc1	$f2,8($a1)
    # Line 414
    mul.s	$f3,$f3,$f4
    # Line 416
    lwc1	$f0,0($a1)
    # Line 413
    mul.s	$f2,$f2,$f4
    # Line 416
    mul.s	$f0,$f0,$f4
    # Line 419
    swc1	$f3,12($a3)
    # Line 418
    swc1	$f2,8($a3)
    # Line 417
    swc1	$f1,4($a3)
    # Line 420
    jr	$ra
    # Line 416
    swc1	$f0,0($a3)
.end __glDoBlendSourceMSA

# Function: __glDoBlendDestMSA
# Declared: Line 422 (Source lines: 424-435)
# Address: 0x0db31570 - 0x0db315e8 (Size: 120 bytes, Frame: 192)
.globl __glDoBlendDestMSA
.ent __glDoBlendDestMSA
__glDoBlendDestMSA:
    # Line 426
    lwc1	$f3,30864($a0)
    lwc1	$f2,12($a1)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,3284($a0)
    sub.s	$f1,$f1,$f2
    # Line 429
    lwc1	$f4,0($a2)
    mul.s	$f4,$f4,$f1
    # Line 424
    addiu	$sp,$sp,-64
    # Line 429
    swc1	$f4,0($sp)
    # Line 430
    lwc1	$f3,4($a2)
    mul.s	$f3,$f3,$f1
    swc1	$f3,4($sp)
    # Line 431
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f1
    swc1	$f2,8($sp)
    # Line 432
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f1
    sd	$gp,24($sp)
    # Line 424
    lui	$at,0xd
    addiu	$at,$at,-11992
    # Line 432
    swc1	$f0,12($sp)
    # Line 424
    addu	$gp,$t9,$at
    # Line 434
    lw	$t9,12616($a0)
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a2,$sp,0
    # Line 435
    ld	$ra,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glDoBlendDestMSA

# Function: __glDoBlendSourceDA
# Declared: Line 437 (Source lines: 442-453)
# Address: 0x0db315e8 - 0x0db31628 (Size: 64 bytes, Frame: 0)
.globl __glDoBlendSourceDA
.ent __glDoBlendSourceDA
__glDoBlendSourceDA:
    # Line 442
    lwc1	$f0,30864($a0)
    lwc1	$f4,12($a2)
    mul.s	$f4,$f4,$f0
    # Line 445
    lwc1	$f1,4($a1)
    # Line 447
    lwc1	$f3,12($a1)
    # Line 445
    mul.s	$f1,$f1,$f4
    # Line 446
    lwc1	$f2,8($a1)
    # Line 447
    mul.s	$f3,$f3,$f4
    # Line 444
    lwc1	$f0,0($a1)
    # Line 446
    mul.s	$f2,$f2,$f4
    # Line 444
    mul.s	$f0,$f0,$f4
    # Line 452
    swc1	$f3,12($a3)
    # Line 451
    swc1	$f2,8($a3)
    # Line 450
    swc1	$f1,4($a3)
    # Line 453
    jr	$ra
    # Line 449
    swc1	$f0,0($a3)
.end __glDoBlendSourceDA

# Function: __glDoBlendDestDA
# Declared: Line 455 (Source lines: 457-467)
# Address: 0x0db31628 - 0x0db31698 (Size: 112 bytes, Frame: 192)
.globl __glDoBlendDestDA
.ent __glDoBlendDestDA
__glDoBlendDestDA:
    # Line 459
    lwc1	$f2,30864($a0)
    lwc1	$f1,12($a2)
    mul.s	$f1,$f1,$f2
    # Line 461
    lwc1	$f4,0($a2)
    mul.s	$f4,$f4,$f1
    # Line 457
    addiu	$sp,$sp,-64
    # Line 461
    swc1	$f4,0($sp)
    # Line 462
    lwc1	$f3,4($a2)
    mul.s	$f3,$f3,$f1
    swc1	$f3,4($sp)
    # Line 463
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f1
    swc1	$f2,8($sp)
    # Line 464
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f1
    sd	$gp,24($sp)
    # Line 457
    lui	$at,0xd
    addiu	$at,$at,-12176
    # Line 464
    swc1	$f0,12($sp)
    # Line 457
    addu	$gp,$t9,$at
    # Line 466
    lw	$t9,12616($a0)
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a2,$sp,0
    # Line 467
    ld	$ra,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glDoBlendDestDA

# Function: __glDoBlendSourceMDA
# Declared: Line 469 (Source lines: 476-487)
# Address: 0x0db31698 - 0x0db316e0 (Size: 72 bytes, Frame: 0)
.globl __glDoBlendSourceMDA
.ent __glDoBlendSourceMDA
__glDoBlendSourceMDA:
    # Line 476
    lwc1	$f1,30864($a0)
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f1
    lwc1	$f4,3284($a0)
    sub.s	$f4,$f4,$f0
    # Line 479
    lwc1	$f1,4($a1)
    # Line 481
    lwc1	$f3,12($a1)
    # Line 479
    mul.s	$f1,$f1,$f4
    # Line 480
    lwc1	$f2,8($a1)
    # Line 481
    mul.s	$f3,$f3,$f4
    # Line 483
    lwc1	$f0,0($a1)
    # Line 480
    mul.s	$f2,$f2,$f4
    # Line 483
    mul.s	$f0,$f0,$f4
    # Line 486
    swc1	$f3,12($a3)
    # Line 485
    swc1	$f2,8($a3)
    # Line 484
    swc1	$f1,4($a3)
    # Line 487
    jr	$ra
    # Line 483
    swc1	$f0,0($a3)
.end __glDoBlendSourceMDA

# Function: __glDoBlendDestMDA
# Declared: Line 489 (Source lines: 491-503)
# Address: 0x0db316e0 - 0x0db31758 (Size: 120 bytes, Frame: 192)
.globl __glDoBlendDestMDA
.ent __glDoBlendDestMDA
__glDoBlendDestMDA:
    # Line 495
    lwc1	$f3,30864($a0)
    lwc1	$f2,12($a2)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,3284($a0)
    sub.s	$f1,$f1,$f2
    # Line 497
    lwc1	$f4,0($a2)
    mul.s	$f4,$f4,$f1
    # Line 491
    addiu	$sp,$sp,-64
    # Line 497
    swc1	$f4,0($sp)
    # Line 498
    lwc1	$f3,4($a2)
    mul.s	$f3,$f3,$f1
    swc1	$f3,4($sp)
    # Line 499
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f1
    swc1	$f2,8($sp)
    # Line 500
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f1
    sd	$gp,24($sp)
    # Line 491
    lui	$at,0xd
    addiu	$at,$at,-12360
    # Line 500
    swc1	$f0,12($sp)
    # Line 491
    addu	$gp,$t9,$at
    # Line 502
    lw	$t9,12616($a0)
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a2,$sp,0
    # Line 503
    ld	$ra,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glDoBlendDestMDA

# Function: __glDoBlendSourceSAT
# Declared: Line 505 (Source lines: 512-527)
# Address: 0x0db31758 - 0x0db317b8 (Size: 96 bytes, Frame: 0)
.globl __glDoBlendSourceSAT
.ent __glDoBlendSourceSAT
__glDoBlendSourceSAT:
    # Line 512
    lwc1	$f12,30864($a0)
    lwc1	$f0,12($a2)
    # Line 513
    lwc1	$f8,12($a1)
    # Line 512
    mul.s	$f0,$f0,$f12
    # Line 513
    mul.s	$f12,$f12,$f8
    # Line 512
    lwc1	$f11,3284($a0)
    sub.s	$f11,$f11,$f0
    # Line 513
    c.lt.s	$f12,$f11
    lwc1	$f7,8($a1)
    lwc1	$f6,4($a1)
    bc1f	.L0db31798
    lwc1	$f5,0($a1)
    # Line 517
    mul.s	$f4,$f7,$f12
    # Line 516
    mul.s	$f10,$f6,$f12
    # Line 517
    b	.L0db317a4
    # Line 515
    mul.s	$f9,$f5,$f12
.L0db31798:
    # Line 521
    mul.s	$f4,$f7,$f11
    # Line 520
    mul.s	$f10,$f6,$f11
    # Line 519
    mul.s	$f9,$f5,$f11
.L0db317a4:
    # Line 526
    swc1	$f4,8($a3)
    # Line 525
    swc1	$f10,4($a3)
    # Line 524
    swc1	$f9,0($a3)
    # Line 527
    jr	$ra
    # Line 523
    swc1	$f8,12($a3)
.end __glDoBlendSourceSAT

# Function: __glDoBlendSourceCC
# Declared: Line 534 (Source lines: 546-554)
# Address: 0x0db317b8 - 0x0db317fc (Size: 68 bytes, Frame: 0)
.globl __glDoBlendSourceCC
.ent __glDoBlendSourceCC
__glDoBlendSourceCC:
    # Line 548
    lwc1	$f4,1752($a0)
    lwc1	$f3,12($a1)
    # Line 547
    lwc1	$f2,8($a1)
    # Line 548
    mul.s	$f3,$f3,$f4
    # Line 547
    lwc1	$f4,1748($a0)
    # Line 546
    lwc1	$f1,4($a1)
    # Line 547
    mul.s	$f2,$f2,$f4
    # Line 546
    lwc1	$f4,1744($a0)
    # Line 550
    lwc1	$f0,0($a1)
    # Line 546
    mul.s	$f1,$f1,$f4
    # Line 550
    lwc1	$f4,1740($a0)
    mul.s	$f0,$f0,$f4
    # Line 553
    swc1	$f3,12($a3)
    # Line 552
    swc1	$f2,8($a3)
    # Line 551
    swc1	$f1,4($a3)
    # Line 554
    jr	$ra
    # Line 550
    swc1	$f0,0($a3)
.end __glDoBlendSourceCC

# Function: __glDoBlendDestCC
# Declared: Line 556 (Source lines: 558-569)
# Address: 0x0db317fc - 0x0db31870 (Size: 116 bytes, Frame: 192)
.globl __glDoBlendDestCC
.ent __glDoBlendDestCC
__glDoBlendDestCC:
    # Line 563
    lwc1	$f7,1740($a0)
    lwc1	$f6,0($a2)
    mul.s	$f6,$f6,$f7
    # Line 560
    lwc1	$f1,1752($a0)
    lwc1	$f3,1748($a0)
    lwc1	$f5,1744($a0)
    # Line 558
    addiu	$sp,$sp,-64
    # Line 563
    swc1	$f6,0($sp)
    # Line 564
    lwc1	$f4,4($a2)
    mul.s	$f4,$f4,$f5
    swc1	$f4,4($sp)
    # Line 565
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($sp)
    # Line 566
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f1
    sd	$gp,24($sp)
    # Line 558
    lui	$at,0xd
    addiu	$at,$at,-12644
    # Line 566
    swc1	$f0,12($sp)
    # Line 558
    addu	$gp,$t9,$at
    # Line 568
    lw	$t9,12616($a0)
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a2,$sp,0
    # Line 569
    ld	$ra,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glDoBlendDestCC

# Function: __glDoBlendSourceCA
# Declared: Line 572 (Source lines: 577-592)
# Address: 0x0db31870 - 0x0db318a8 (Size: 56 bytes, Frame: 0)
.globl __glDoBlendSourceCA
.ent __glDoBlendSourceCA
__glDoBlendSourceCA:
    # Line 577
    lwc1	$f4,1752($a0)
    # Line 584
    lwc1	$f1,4($a1)
    # Line 586
    lwc1	$f3,12($a1)
    # Line 584
    mul.s	$f1,$f1,$f4
    # Line 585
    lwc1	$f2,8($a1)
    # Line 586
    mul.s	$f3,$f3,$f4
    # Line 588
    lwc1	$f0,0($a1)
    # Line 585
    mul.s	$f2,$f2,$f4
    # Line 588
    mul.s	$f0,$f0,$f4
    # Line 591
    swc1	$f3,12($a3)
    # Line 590
    swc1	$f2,8($a3)
    # Line 589
    swc1	$f1,4($a3)
    # Line 592
    jr	$ra
    # Line 588
    swc1	$f0,0($a3)
.end __glDoBlendSourceCA

# Function: __glDoBlendDestCA
# Declared: Line 594 (Source lines: 596-606)
# Address: 0x0db318a8 - 0x0db31910 (Size: 104 bytes, Frame: 192)
.globl __glDoBlendDestCA
.ent __glDoBlendDestCA
__glDoBlendDestCA:
    # Line 598
    lwc1	$f1,1752($a0)
    # Line 600
    lwc1	$f4,0($a2)
    mul.s	$f4,$f4,$f1
    # Line 596
    addiu	$sp,$sp,-64
    # Line 600
    swc1	$f4,0($sp)
    # Line 601
    lwc1	$f3,4($a2)
    mul.s	$f3,$f3,$f1
    swc1	$f3,4($sp)
    # Line 602
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f1
    swc1	$f2,8($sp)
    # Line 603
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f1
    sd	$gp,24($sp)
    # Line 596
    lui	$at,0xd
    addiu	$at,$at,-12816
    # Line 603
    swc1	$f0,12($sp)
    # Line 596
    addu	$gp,$t9,$at
    # Line 605
    lw	$t9,12616($a0)
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a2,$sp,0
    # Line 606
    ld	$ra,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glDoBlendDestCA

# Function: __glDoBlendSourceMCC
# Declared: Line 609 (Source lines: 621-629)
# Address: 0x0db31910 - 0x0db31968 (Size: 88 bytes, Frame: 0)
.globl __glDoBlendSourceMCC
.ent __glDoBlendSourceMCC
__glDoBlendSourceMCC:
    # Line 623
    lwc1	$f0,1752($a0)
    # Line 621
    lwc1	$f4,3284($a0)
    # Line 622
    lwc1	$f5,1748($a0)
    # Line 623
    sub.s	$f0,$f4,$f0
    lwc1	$f3,12($a1)
    # Line 622
    lwc1	$f2,8($a1)
    sub.s	$f5,$f4,$f5
    # Line 623
    mul.s	$f3,$f3,$f0
    # Line 621
    lwc1	$f0,1744($a0)
    # Line 622
    mul.s	$f2,$f2,$f5
    # Line 625
    lwc1	$f5,1740($a0)
    # Line 621
    sub.s	$f0,$f4,$f0
    lwc1	$f1,4($a1)
    # Line 625
    sub.s	$f4,$f4,$f5
    # Line 621
    mul.s	$f1,$f1,$f0
    # Line 625
    lwc1	$f0,0($a1)
    mul.s	$f0,$f0,$f4
    # Line 628
    swc1	$f3,12($a3)
    # Line 627
    swc1	$f2,8($a3)
    # Line 626
    swc1	$f1,4($a3)
    # Line 629
    jr	$ra
    # Line 625
    swc1	$f0,0($a3)
.end __glDoBlendSourceMCC

# Function: __glDoBlendDestMCC
# Declared: Line 632 (Source lines: 634-647)
# Address: 0x0db31968 - 0x0db319fc (Size: 148 bytes, Frame: 192)
.globl __glDoBlendDestMCC
.ent __glDoBlendDestMCC
__glDoBlendDestMCC:
    # Line 641
    lwc1	$f11,1740($a0)
    lwc1	$f10,3284($a0)
    sub.s	$f10,$f10,$f11
    lwc1	$f9,0($a2)
    mul.s	$f9,$f9,$f10
    # Line 636
    lwc1	$f2,1752($a0)
    lwc1	$f5,1748($a0)
    lwc1	$f8,1744($a0)
    # Line 634
    addiu	$sp,$sp,-64
    # Line 641
    swc1	$f9,0($sp)
    # Line 642
    lwc1	$f7,3284($a0)
    sub.s	$f7,$f7,$f8
    lwc1	$f6,4($a2)
    mul.s	$f6,$f6,$f7
    swc1	$f6,4($sp)
    # Line 643
    lwc1	$f4,3284($a0)
    sub.s	$f4,$f4,$f5
    lwc1	$f3,8($a2)
    mul.s	$f3,$f3,$f4
    swc1	$f3,8($sp)
    # Line 644
    lwc1	$f1,3284($a0)
    sub.s	$f1,$f1,$f2
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f1
    sd	$gp,24($sp)
    # Line 634
    lui	$at,0xd
    addiu	$at,$at,-13008
    # Line 644
    swc1	$f0,12($sp)
    # Line 634
    addu	$gp,$t9,$at
    # Line 646
    lw	$t9,12616($a0)
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a2,$sp,0
    # Line 647
    ld	$ra,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glDoBlendDestMCC

# Function: __glDoBlendSourceMCA
# Declared: Line 650 (Source lines: 660-671)
# Address: 0x0db319fc - 0x0db31a3c (Size: 64 bytes, Frame: 0)
.globl __glDoBlendSourceMCA
.ent __glDoBlendSourceMCA
__glDoBlendSourceMCA:
    # Line 660
    lwc1	$f0,1752($a0)
    lwc1	$f4,3284($a0)
    sub.s	$f4,$f4,$f0
    # Line 663
    lwc1	$f1,4($a1)
    # Line 665
    lwc1	$f3,12($a1)
    # Line 663
    mul.s	$f1,$f1,$f4
    # Line 664
    lwc1	$f2,8($a1)
    # Line 665
    mul.s	$f3,$f3,$f4
    # Line 667
    lwc1	$f0,0($a1)
    # Line 664
    mul.s	$f2,$f2,$f4
    # Line 667
    mul.s	$f0,$f0,$f4
    # Line 670
    swc1	$f3,12($a3)
    # Line 669
    swc1	$f2,8($a3)
    # Line 668
    swc1	$f1,4($a3)
    # Line 671
    jr	$ra
    # Line 667
    swc1	$f0,0($a3)
.end __glDoBlendSourceMCA

# Function: __glDoBlendDestMCA
# Declared: Line 673 (Source lines: 675-687)
# Address: 0x0db31a3c - 0x0db31aac (Size: 112 bytes, Frame: 192)
.globl __glDoBlendDestMCA
.ent __glDoBlendDestMCA
__glDoBlendDestMCA:
    # Line 679
    lwc1	$f2,1752($a0)
    lwc1	$f1,3284($a0)
    sub.s	$f1,$f1,$f2
    # Line 681
    lwc1	$f4,0($a2)
    mul.s	$f4,$f4,$f1
    # Line 675
    addiu	$sp,$sp,-64
    # Line 681
    swc1	$f4,0($sp)
    # Line 682
    lwc1	$f3,4($a2)
    mul.s	$f3,$f3,$f1
    swc1	$f3,4($sp)
    # Line 683
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f1
    swc1	$f2,8($sp)
    # Line 684
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f1
    sd	$gp,24($sp)
    # Line 675
    lui	$at,0xd
    addiu	$at,$at,-13220
    # Line 684
    swc1	$f0,12($sp)
    # Line 675
    addu	$gp,$t9,$at
    # Line 686
    lw	$t9,12616($a0)
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a2,$sp,0
    # Line 687
    ld	$ra,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glDoBlendDestMCA

# Function: Nop
# Declared: Line 692 (Source lines: 701-701)
# Address: 0x0db31aac - 0x0db31ab4 (Size: 8 bytes, Frame: 0)
.ent Nop
Nop:
    # Line 701
    jr	$ra
    nop
.end Nop

# Function: __glDoNoFetchBlend
# Declared: Line 707 (Source lines: 709-714)
# Address: 0x0db31ab4 - 0x0db31aec (Size: 56 bytes, Frame: 48)
.globl __glDoNoFetchBlend
.ent __glDoNoFetchBlend
__glDoNoFetchBlend:
    # Line 709
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0xd
    addiu	$at,$at,-13340
    addu	$gp,$t9,$at
    # Line 713
    lw	$t9,12604($a0)
    addiu	$a1,$a2,12
    sd	$ra,0($sp)
    jalr	$t9
    move	$a2,$zero
    # Line 714
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glDoNoFetchBlend

# Function: __glDoFetchBlend
# Declared: Line 719 (Source lines: 721-727)
# Address: 0x0db31aec - 0x0db31b60 (Size: 116 bytes, Frame: 224)
.globl __glDoFetchBlend
.ent __glDoFetchBlend
__glDoFetchBlend:
    # Line 721
    addiu	$sp,$sp,-96
    sd	$a3,40($sp)
    # Line 724
    addiu	$a3,$sp,0
    sd	$ra,16($sp)
    sd	$a2,48($sp)
    sd	$s8,24($sp)
    # Line 721
    move	$s8,$a0
    move	$a0,$a1
    sd	$gp,32($sp)
    lui	$a4,0xd
    addiu	$a4,$a4,-13396
    addu	$gp,$t9,$a4
    # Line 724
    lw	$t9,168($a1)
    # Line 721
    move	$a1,$a2
    # Line 724
    lw	$a2,4($a2)
    jalr	$t9
    lw	$a1,0($a1)
    # Line 726
    move	$a0,$s8
    ld	$a3,40($sp)
    lw	$t9,12604($s8)
    ld	$a1,48($sp)
    addiu	$a2,$sp,0
    jalr	$t9
    addiu	$a1,$a1,12
    # Line 727
    ld	$ra,16($sp)
    ld	$gp,32($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glDoFetchBlend

# Function: __glDoBlend
# Declared: Line 729 (Source lines: 731-747)
# Address: 0x0db31b60 - 0x0db31c40 (Size: 224 bytes, Frame: 208)
.globl __glDoBlend
.ent __glDoBlend
__glDoBlend:
    # Line 731
    addiu	$sp,$sp,-80
    sd	$s0,0($sp)
    move	$s0,$a3
    sd	$s8,32($sp)
    move	$s8,$a2
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$gp,40($sp)
    lui	$at,0xd
    addiu	$at,$at,-13512
    addu	$gp,$t9,$at
    # Line 732
    lw	$t9,12608($a0)
    sd	$s7,24($sp)
    sd	$ra,16($sp)
    jalr	$t9
    # Line 731
    move	$s7,$a1
    # Line 733
    move	$a0,$s1
    lw	$t9,12612($s1)
    move	$a1,$s7
    move	$a2,$s8
    jalr	$t9
    move	$a3,$s0
    lwc1	$f0,0($s0)
    lwc1	$f4,30804($s1)
    c.lt.s	$f4,$f0
    ld	$s8,32($sp)
    ld	$s7,24($sp)
    bc1f	.L0db31bd8
    ld	$ra,16($sp)
    # Line 736
    swc1	$f4,0($s0)
.L0db31bd8:
    lwc1	$f1,4($s0)
    lwc1	$f4,30808($s1)
    c.lt.s	$f4,$f1
    nop
    bc1fl	.L0db31bf8
    # Line 739
    lwc1	$f2,8($s0)
    swc1	$f4,4($s0)
    lwc1	$f2,8($s0)
.L0db31bf8:
    lwc1	$f4,30812($s1)
    c.lt.s	$f4,$f2
    nop
    bc1fl	.L0db31c14
    # Line 742
    lwc1	$f3,12($s0)
    swc1	$f4,8($s0)
    lwc1	$f3,12($s0)
.L0db31c14:
    lwc1	$f4,30844($s1)
    c.lt.s	$f4,$f3
    nop
    bc1f	.L0db31c30
    ld	$s1,8($sp)
    # Line 745
    swc1	$f4,12($s0)
    ld	$s1,8($sp)
.L0db31c30:
    ld	$gp,40($sp)
    # Line 747
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glDoBlend

# Function: __glDoBlendZeroClamp
# Declared: Line 752 (Source lines: 754-770)
# Address: 0x0db31c40 - 0x0db31d08 (Size: 200 bytes, Frame: 208)
.globl __glDoBlendZeroClamp
.ent __glDoBlendZeroClamp
__glDoBlendZeroClamp:
    # Line 754
    addiu	$sp,$sp,-80
    sd	$s0,0($sp)
    move	$s0,$a3
    sd	$a2,40($sp)
    sd	$s7,16($sp)
    move	$s7,$a0
    sd	$gp,32($sp)
    lui	$at,0xd
    addiu	$at,$at,-13736
    addu	$gp,$t9,$at
    # Line 755
    lw	$t9,12608($a0)
    sd	$s8,24($sp)
    sd	$ra,8($sp)
    jalr	$t9
    # Line 754
    move	$s8,$a1
    # Line 756
    move	$a0,$s7
    lw	$t9,12612($s7)
    move	$a1,$s8
    ld	$a2,40($sp)
    jalr	$t9
    move	$a3,$s0
    mtc1	$zero,$f4
    lwc1	$f0,0($s0)
    c.lt.s	$f0,$f4
    ld	$s8,24($sp)
    ld	$s7,16($sp)
    bc1f	.L0db31cb4
    ld	$ra,8($sp)
    # Line 759
    swc1	$f4,0($s0)
.L0db31cb4:
    lwc1	$f1,4($s0)
    c.lt.s	$f1,$f4
    ld	$gp,32($sp)
    bc1fl	.L0db31cd0
    # Line 762
    lwc1	$f2,8($s0)
    swc1	$f4,4($s0)
    lwc1	$f2,8($s0)
.L0db31cd0:
    c.lt.s	$f2,$f4
    nop
    bc1fl	.L0db31ce8
    # Line 765
    lwc1	$f3,12($s0)
    swc1	$f4,8($s0)
    lwc1	$f3,12($s0)
.L0db31ce8:
    c.lt.s	$f3,$f4
    nop
    bc1fl	.L0db31d00
    # Line 770
    ld	$s0,0($sp)
    # Line 768
    swc1	$f4,12($s0)
    # Line 770
    ld	$s0,0($sp)
.L0db31d00:
    jr	$ra
    addiu	$sp,$sp,80
.end __glDoBlendZeroClamp

# Function: __glDoBlendNoClamp
# Declared: Line 772 (Source lines: 774-777)
# Address: 0x0db31d08 - 0x0db31d68 (Size: 96 bytes, Frame: 208)
.globl __glDoBlendNoClamp
.ent __glDoBlendNoClamp
__glDoBlendNoClamp:
    # Line 774
    addiu	$sp,$sp,-80
    sd	$a3,24($sp)
    sd	$a2,32($sp)
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    lui	$at,0xd
    addiu	$at,$at,-13936
    addu	$gp,$t9,$at
    # Line 775
    lw	$t9,12608($a0)
    # Line 774
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 775
    jalr	$t9
    sd	$a1,40($sp)
    # Line 776
    move	$a0,$s8
    lw	$t9,12612($s8)
    ld	$a1,40($sp)
    ld	$a2,32($sp)
    jalr	$t9
    ld	$a3,24($sp)
    # Line 777
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glDoBlendNoClamp

# Function: __glDoBlend_SA_ZERO
# Declared: Line 783 (Source lines: 791-796)
# Address: 0x0db31d68 - 0x0db31da8 (Size: 64 bytes, Frame: 0)
.globl __glDoBlend_SA_ZERO
.ent __glDoBlend_SA_ZERO
__glDoBlend_SA_ZERO:
    # Line 791
    lwc1	$f2,30864($a0)
    lwc1	$f1,12($a1)
    mul.s	$f1,$f1,$f2
    # Line 792
    lwc1	$f4,0($a1)
    mul.s	$f4,$f4,$f1
    swc1	$f4,0($a3)
    # Line 793
    lwc1	$f3,4($a1)
    mul.s	$f3,$f3,$f1
    swc1	$f3,4($a3)
    # Line 794
    lwc1	$f2,8($a1)
    mul.s	$f2,$f2,$f1
    swc1	$f2,8($a3)
    # Line 795
    lwc1	$f0,12($a1)
    mul.s	$f0,$f0,$f1
    # Line 796
    jr	$ra
    # Line 795
    swc1	$f0,12($a3)
.end __glDoBlend_SA_ZERO

# Function: __glDoBlend_SA_ONE
# Declared: Line 801 (Source lines: 806-828)
# Address: 0x0db31da8 - 0x0db31e60 (Size: 184 bytes, Frame: 0)
.globl __glDoBlend_SA_ONE
.ent __glDoBlend_SA_ONE
__glDoBlend_SA_ONE:
    # Line 806
    lwc1	$f9,12($a1)
    lwc1	$f4,30864($a0)
    mul.s	$f4,$f4,$f9
    # Line 807
    lwc1	$f0,0($a1)
    mul.s	$f0,$f0,$f4
    lwc1	$f7,0($a2)
    add.s	$f7,$f7,$f0
    lwc1	$f5,30804($a0)
    c.lt.s	$f5,$f7
    nop
    bc1f	.L0db31ddc
    # Line 819
    mul.s	$f10,$f9,$f4
    # Line 809
    mov.s	$f7,$f5
.L0db31ddc:
    # Line 811
    lwc1	$f0,4($a1)
    mul.s	$f0,$f0,$f4
    lwc1	$f8,4($a2)
    add.s	$f8,$f8,$f0
    lwc1	$f5,30808($a0)
    c.lt.s	$f5,$f8
    nop
    bc1fl	.L0db31e08
    # Line 815
    lwc1	$f0,8($a1)
    # Line 813
    mov.s	$f8,$f5
    # Line 815
    lwc1	$f0,8($a1)
.L0db31e08:
    mul.s	$f0,$f0,$f4
    lwc1	$f6,8($a2)
    add.s	$f6,$f6,$f0
    lwc1	$f5,30812($a0)
    c.lt.s	$f5,$f6
    nop
    bc1fl	.L0db31e30
    # Line 819
    lwc1	$f5,12($a2)
    # Line 817
    mov.s	$f6,$f5
    # Line 819
    lwc1	$f5,12($a2)
.L0db31e30:
    add.s	$f5,$f5,$f10
    lwc1	$f10,30844($a0)
    c.lt.s	$f10,$f5
    nop
    bc1fl	.L0db31e50
    # Line 827
    swc1	$f5,12($a3)
    # Line 821
    mov.s	$f5,$f10
    # Line 827
    swc1	$f5,12($a3)
.L0db31e50:
    # Line 826
    swc1	$f6,8($a3)
    # Line 825
    swc1	$f8,4($a3)
    # Line 828
    jr	$ra
    # Line 824
    swc1	$f7,0($a3)
.end __glDoBlend_SA_ONE

# Function: __glDoBlend_SA_MSA
# Declared: Line 837 (Source lines: 842-853)
# Address: 0x0db31e60 - 0x0db31ed4 (Size: 116 bytes, Frame: 0)
.globl __glDoBlend_SA_MSA
.ent __glDoBlend_SA_MSA
__glDoBlend_SA_MSA:
    # Line 842
    lwc1	$f8,12($a1)
    lwc1	$f4,30864($a0)
    mul.s	$f4,$f4,$f8
    # Line 846
    lwc1	$f2,8($a1)
    # Line 847
    mul.s	$f8,$f8,$f4
    # Line 845
    lwc1	$f1,4($a1)
    # Line 846
    mul.s	$f2,$f2,$f4
    # Line 849
    lwc1	$f0,0($a1)
    # Line 843
    lwc1	$f7,3284($a0)
    # Line 845
    mul.s	$f1,$f1,$f4
    lwc1	$f5,4($a2)
    # Line 843
    sub.s	$f7,$f7,$f4
    # Line 849
    mul.s	$f0,$f0,$f4
    # Line 846
    lwc1	$f6,8($a2)
    # Line 845
    mul.s	$f5,$f5,$f7
    # Line 847
    lwc1	$f3,12($a2)
    # Line 846
    mul.s	$f6,$f6,$f7
    # Line 849
    lwc1	$f4,0($a2)
    # Line 847
    mul.s	$f3,$f3,$f7
    # Line 845
    add.s	$f1,$f1,$f5
    # Line 849
    mul.s	$f4,$f4,$f7
    # Line 846
    add.s	$f2,$f2,$f6
    # Line 847
    add.s	$f3,$f3,$f8
    # Line 849
    add.s	$f0,$f0,$f4
    # Line 852
    swc1	$f3,12($a3)
    # Line 851
    swc1	$f2,8($a3)
    # Line 850
    swc1	$f1,4($a3)
    # Line 853
    jr	$ra
    # Line 849
    swc1	$f0,0($a3)
.end __glDoBlend_SA_MSA

# Function: __glDoBlend_MSA_SA
# Declared: Line 862 (Source lines: 867-878)
# Address: 0x0db31ed4 - 0x0db31f48 (Size: 116 bytes, Frame: 0)
.globl __glDoBlend_MSA_SA
.ent __glDoBlend_MSA_SA
__glDoBlend_MSA_SA:
    # Line 867
    lwc1	$f8,12($a1)
    lwc1	$f7,30864($a0)
    mul.s	$f7,$f7,$f8
    # Line 871
    lwc1	$f6,8($a2)
    # Line 872
    lwc1	$f3,12($a2)
    # Line 871
    mul.s	$f6,$f6,$f7
    # Line 870
    lwc1	$f5,4($a2)
    # Line 868
    lwc1	$f4,3284($a0)
    # Line 872
    mul.s	$f3,$f3,$f7
    # Line 868
    sub.s	$f4,$f4,$f7
    # Line 870
    mul.s	$f5,$f5,$f7
    # Line 871
    lwc1	$f2,8($a1)
    # Line 872
    mul.s	$f8,$f8,$f4
    # Line 870
    lwc1	$f1,4($a1)
    # Line 871
    mul.s	$f2,$f2,$f4
    # Line 874
    lwc1	$f0,0($a1)
    # Line 870
    mul.s	$f1,$f1,$f4
    # Line 874
    mul.s	$f0,$f0,$f4
    lwc1	$f4,0($a2)
    # Line 870
    add.s	$f1,$f1,$f5
    # Line 874
    mul.s	$f4,$f4,$f7
    # Line 872
    add.s	$f3,$f3,$f8
    # Line 871
    add.s	$f2,$f2,$f6
    # Line 877
    swc1	$f3,12($a3)
    # Line 874
    add.s	$f0,$f0,$f4
    # Line 876
    swc1	$f2,8($a3)
    # Line 875
    swc1	$f1,4($a3)
    # Line 878
    jr	$ra
    # Line 874
    swc1	$f0,0($a3)
.end __glDoBlend_MSA_SA

# Function: __glGenericPickBlendProcs
# Declared: Line 880 (Source lines: 881-1066)
# Address: 0x0db31f48 - 0x0db32484 (Size: 1340 bytes, Frame: 0)
.globl __glGenericPickBlendProcs
.ent __glGenericPickBlendProcs
__glGenericPickBlendProcs:
    # Line 885
    lw	$a6,1756($a0)
    # Line 884
    lw	$a3,1736($a0)
    # Line 883
    lw	$a5,1732($a0)
    # Line 882
    lw	$a4,1728($a0)
    # Line 885
    lbu	$v0,3105($a0)
    # Line 881
    lui	$v1,0xd
    addiu	$v1,$v1,-14512
    # Line 885
    beqz	$v0,.L0db31f74
    # Line 881
    addu	$at,$t9,$v1
    # Line 888
    jr	$ra
    nop
.L0db31f74:
    # Line 895
    li	$a7,0x8007
    beq	$a7,$a3,.L0db31f90
    li	$a1,0x8008
    beq	$a3,$a1,.L0db31f90
    li	$a2,3057
    bne	$a3,$a2,.L0db31f98
    nop
.L0db31f90:
    # Line 898
    li	$a5,1
    # Line 897
    li	$a4,1
.L0db31f98:
    # Line 898
    beqz	$a5,.L0db3221c
.L0db31f9c:
    # Line 902
    li	$v0,3057
    beq	$a3,$v0,.L0db321f0
    # Line 910
    la	$v1,__glDoFetchBlend
.L0db31fa8:
    sw	$v1,12600($a0)
.L0db31fac:
    lw	$a1,1700($a0)
    # Line 940
    li	$v1,0x800b
    # Line 910
    andi	$a1,$a1,0x800
    beqz	$a1,.L0db32250
    # Line 927
    li	$a2,771
    # Line 915
    li	$t1,770
.L0db31fc4:
    beq	$t1,$a4,.L0db32270
    li	$a1,260
.L0db31fcc:
    # Line 927
    beq	$a4,$a2,.L0db3229c
    # Line 940
    li	$v0,0x800a
.L0db31fd4:
    beq	$a3,$v0,.L0db321a0
    # Line 942
    la	$v0,__glDoBlendZeroClamp
    # Line 940
    beq	$a3,$v1,.L0db321a0
    # Line 942
    la	$v0,__glDoBlendZeroClamp
    # Line 943
    beq	$a7,$a3,.L0db32190
    li	$a1,0x8008
    beq	$a3,$a1,.L0db32190
    li	$a2,3057
    beq	$a3,$a2,.L0db32190
    # Line 945
    li	$t0,772
    beq	$t0,$a4,.L0db32180
    li	$a6,773
.L0db32004:
    # Line 946
    beq	$a6,$a4,.L0db32340
    nop
    li	$t0,0x8001
.L0db32010:
    beq	$t0,$a4,.L0db32350
    li	$a6,0x8002
.L0db32018:
    beq	$a6,$a4,.L0db32360
    li	$v0,769
.L0db32020:
    beq	$a5,$v0,.L0db32184
    li	$v1,775
    beq	$a4,$v1,.L0db32188
    # Line 956
    la	$a1,__glDoBlendNoClamp
    # Line 946
    beqz	$a5,.L0db32188
    # Line 956
    la	$a1,__glDoBlendNoClamp
    # Line 946
    beqz	$a4,.L0db32184
    # Line 958
    la	$a1,__glDoBlend
    sw	$a1,12604($a0)
.L0db32044:
    # Line 961
    sltiu	$a2,$a4,774
    bnez	$a2,.L0db3208c
    sltiu	$v0,$a4,775
    bnez	$v0,.L0db320bc
    li	$a6,0x8002
    sltu	$v1,$a4,$a6
    bnez	$v1,.L0db322bc
    sltu	$a1,$a6,$a4
    beqz	$a1,.L0db323d4
    li	$a6,0x8004
    sltu	$a2,$a4,$a6
    bnez	$a2,.L0db32430
    sltu	$v0,$a6,$a4
    bnez	$v0,.L0db320c8
    # Line 1002
    sltiu	$v0,$a5,772
    # Line 999
    la	$v1,__glDoBlendSourceMCA
    b	.L0db320c4
    sw	$v1,12608($a0)
.L0db3208c:
    # Line 961
    sltiu	$a1,$a4,771
    bnez	$a1,.L0db321a8
    sltiu	$a2,$a4,772
    bnez	$a2,.L0db32314
    sltiu	$v0,$a4,773
    bnez	$v0,.L0db32370
    sltiu	$v1,$a4,774
    beqz	$v1,.L0db320c8
    # Line 1002
    sltiu	$v0,$a5,772
    # Line 984
    la	$a1,__glDoBlendSourceMDA
    # Line 985
    b	.L0db320c4
    # Line 984
    sw	$a1,12608($a0)
.L0db320bc:
    # Line 969
    la	$a2,__glDoBlendSourceDC
    sw	$a2,12608($a0)
.L0db320c4:
    # Line 1002
    sltiu	$v0,$a5,772
.L0db320c8:
    bnez	$v0,.L0db3210c
    sltiu	$v1,$a5,773
    bnez	$v1,.L0db3213c
    li	$a6,0x8002
    sltu	$a1,$a5,$a6
    bnez	$a1,.L0db322e4
    sltu	$a2,$a6,$a5
    beqz	$a2,.L0db323ec
    li	$a6,0x8004
    sltu	$v0,$a5,$a6
    bnez	$v0,.L0db32448
    sltu	$v1,$a6,$a5
    bnez	$v1,.L0db32148
    # Line 1046
    li	$v1,0x8006
    # Line 1037
    la	$a1,__glDoBlendDestMCA
    b	.L0db32144
    sw	$a1,12612($a0)
.L0db3210c:
    # Line 1002
    sltiu	$a2,$a5,769
    bnez	$a2,.L0db321cc
    sltiu	$v0,$a5,770
    bnez	$v0,.L0db3232c
    sltiu	$v1,$a5,771
    bnez	$v1,.L0db323a0
    sltiu	$a1,$a5,772
    beqz	$a1,.L0db32148
    # Line 1046
    li	$v1,0x8006
    # Line 1019
    la	$a2,__glDoBlendDestMSA
    # Line 1020
    b	.L0db32144
    # Line 1019
    sw	$a2,12612($a0)
.L0db3213c:
    # Line 1022
    la	$v0,__glDoBlendDestDA
    sw	$v0,12612($a0)
.L0db32144:
    # Line 1046
    li	$v1,0x8006
.L0db32148:
    beq	$a3,$v1,.L0db323f8
    # Line 1048
    la	$a2,__glDoBlendAdd
    # Line 1046
    beq	$a7,$a3,.L0db32400
    li	$a1,0x8008
    beq	$a3,$a1,.L0db3240c
    li	$a2,0x800a
    beq	$a3,$a2,.L0db32418
    li	$v0,0x800b
    beq	$a3,$v0,.L0db32424
    li	$v1,3057
    beq	$a3,$v1,.L0db32338
    # Line 1063
    la	$a2,__glDoBlendLogicOp
    # Line 1066
    jr	$ra
    nop
.L0db32180:
    # Line 946
    bne	$a6,$a5,.L0db32004
.L0db32184:
    # Line 956
    la	$a1,__glDoBlendNoClamp
.L0db32188:
    b	.L0db32044
    sw	$a1,12604($a0)
.L0db32190:
    # Line 945
    la	$a2,__glDoBlendNoClamp
    b	.L0db32044
    sw	$a2,12604($a0)
    # Line 942
    la	$v0,__glDoBlendZeroClamp
.L0db321a0:
    b	.L0db32044
    sw	$v0,12604($a0)
.L0db321a8:
    # Line 961
    beqz	$a4,.L0db32308
    sltiu	$v1,$a4,2
    bnez	$v1,.L0db323cc
    # Line 966
    la	$a2,__glDoBlendSourceONE
    # Line 961
    bne	$t1,$a4,.L0db320c8
    # Line 1002
    sltiu	$v0,$a5,772
    # Line 975
    la	$a1,__glDoBlendSourceSA
    # Line 976
    b	.L0db320c4
    # Line 975
    sw	$a1,12608($a0)
.L0db321cc:
    # Line 1002
    beqz	$a5,.L0db32320
    sltiu	$a2,$a5,2
    bnez	$a2,.L0db323e0
    li	$v0,768
    bne	$a5,$v0,.L0db32148
    # Line 1046
    li	$v1,0x8006
    # Line 1010
    la	$v1,__glDoBlendDestSC
    # Line 1011
    b	.L0db32144
    # Line 1010
    sw	$v1,12612($a0)
.L0db321f0:
    # Line 902
    li	$a1,5376
    beq	$a6,$a1,.L0db32244
    li	$a2,5379
    beq	$a6,$a2,.L0db32244
    li	$v0,5388
    beq	$a6,$v0,.L0db32244
    li	$v1,5391
    bne	$a6,$v1,.L0db31fa8
    # Line 910
    la	$v1,__glDoFetchBlend
    b	.L0db32248
    # Line 908
    la	$a2,__glDoNoFetchBlend
.L0db3221c:
    # Line 898
    li	$a1,774
    beq	$a4,$a1,.L0db31f9c
    # Line 902
    li	$a2,775
    beq	$a4,$a2,.L0db31f9c
    li	$v0,772
    beq	$a4,$v0,.L0db31f9c
    li	$v1,773
    beq	$a4,$v1,.L0db31f9c
    li	$a1,776
    beq	$a4,$a1,.L0db31f9c
.L0db32244:
    # Line 908
    la	$a2,__glDoNoFetchBlend
.L0db32248:
    b	.L0db31fac
    sw	$a2,12600($a0)
.L0db32250:
    # Line 910
    lw	$v0,1696($a0)
    andi	$v0,$v0,0x2
    bnez	$v0,.L0db31fc4
    # Line 915
    li	$t1,770
    la	$v1,sub_0db30000
    addiu	$v1,$v1,6828
    b	.L0db32144
    sw	$v1,12604($a0)
.L0db32270:
    bne	$a3,$a1,.L0db31fcc
    nop
    # Line 918
    beqz	$a5,.L0db3246c
    # Line 921
    li	$a2,1
    beq	$a5,$a2,.L0db32478
    # Line 925
    li	$v0,771
    bne	$a5,$v0,.L0db31fd4
    # Line 940
    li	$v0,0x800a
    # Line 928
    la	$v1,__glDoBlend_SA_MSA
    # Line 929
    jr	$ra
    # Line 928
    sw	$v1,12604($a0)
.L0db3229c:
    # Line 927
    li	$a1,260
    bne	$a3,$a1,.L0db31fd4
    # Line 940
    li	$v0,0x800a
    # Line 932
    bne	$t1,$a5,.L0db31fd4
    # Line 940
    li	$v0,0x800a
    # Line 934
    la	$a2,__glDoBlend_MSA_SA
    # Line 935
    jr	$ra
    # Line 934
    sw	$a2,12604($a0)
.L0db322bc:
    # Line 961
    sltiu	$v0,$a4,776
    bnez	$v0,.L0db32388
    sltiu	$v1,$a4,777
    bnez	$v1,.L0db32460
    li	$a1,0x8001
    bne	$a4,$a1,.L0db320c8
    # Line 1002
    sltiu	$v0,$a5,772
    # Line 990
    la	$a2,__glDoBlendSourceCC
    # Line 991
    b	.L0db320c4
    # Line 990
    sw	$a2,12608($a0)
.L0db322e4:
    # Line 1002
    li	$t0,0x8001
    sltu	$v0,$a5,$t0
    bnez	$v0,.L0db323b4
    sltu	$v1,$t0,$a5
    bnez	$v1,.L0db32148
    # Line 1046
    li	$v1,0x8006
    # Line 1028
    la	$a1,__glDoBlendDestCC
    # Line 1029
    b	.L0db32144
    # Line 1028
    sw	$a1,12612($a0)
.L0db32308:
    # Line 963
    la	$a2,__glDoBlendSourceZERO
    # Line 964
    b	.L0db320c4
    # Line 963
    sw	$a2,12608($a0)
.L0db32314:
    # Line 978
    la	$v0,__glDoBlendSourceMSA
    # Line 979
    b	.L0db320c4
    # Line 978
    sw	$v0,12608($a0)
.L0db32320:
    # Line 1004
    la	$v1,__glDoBlendDestZERO
    # Line 1005
    b	.L0db32144
    # Line 1004
    sw	$v1,12612($a0)
.L0db3232c:
    # Line 1013
    la	$a1,__glDoBlendDestMSC
    # Line 1014
    b	.L0db32144
    # Line 1013
    sw	$a1,12612($a0)
.L0db32338:
    # Line 1066
    jr	$ra
    # Line 1063
    sw	$a2,12616($a0)
.L0db32340:
    # Line 946
    beq	$t0,$a5,.L0db32188
    # Line 956
    la	$a1,__glDoBlendNoClamp
    b	.L0db32010
    # Line 946
    li	$t0,0x8001
.L0db32350:
    beq	$a6,$a5,.L0db32188
    # Line 956
    la	$a1,__glDoBlendNoClamp
    b	.L0db32018
    nop
.L0db32360:
    # Line 946
    beq	$t0,$a5,.L0db32188
    # Line 956
    la	$a1,__glDoBlendNoClamp
    b	.L0db32020
    # Line 946
    li	$v0,769
.L0db32370:
    # Line 961
    li	$v0,772
    bne	$a4,$v0,.L0db320c8
    # Line 1002
    sltiu	$v0,$a5,772
    # Line 981
    la	$v1,__glDoBlendSourceDA
    # Line 982
    b	.L0db320c4
    # Line 981
    sw	$v1,12608($a0)
.L0db32388:
    # Line 961
    li	$a1,775
    bne	$a4,$a1,.L0db320c8
    # Line 1002
    sltiu	$v0,$a5,772
    # Line 972
    la	$a2,__glDoBlendSourceMDC
    # Line 973
    b	.L0db320c4
    # Line 972
    sw	$a2,12608($a0)
.L0db323a0:
    # Line 1002
    bne	$t1,$a5,.L0db32148
    # Line 1046
    li	$v1,0x8006
    # Line 1016
    la	$v0,__glDoBlendDestSA
    # Line 1017
    b	.L0db32144
    # Line 1016
    sw	$v0,12612($a0)
.L0db323b4:
    # Line 1002
    li	$v1,773
    bne	$a5,$v1,.L0db32148
    # Line 1046
    li	$v1,0x8006
    # Line 1025
    la	$a1,__glDoBlendDestMDA
    # Line 1026
    b	.L0db32144
    # Line 1025
    sw	$a1,12612($a0)
.L0db323cc:
    # Line 967
    b	.L0db320c4
    # Line 966
    sw	$a2,12608($a0)
.L0db323d4:
    # Line 996
    la	$v0,__glDoBlendSourceMCC
    # Line 997
    b	.L0db320c4
    # Line 996
    sw	$v0,12608($a0)
.L0db323e0:
    # Line 1007
    la	$v1,__glDoBlendDestONE
    # Line 1008
    b	.L0db32144
    # Line 1007
    sw	$v1,12612($a0)
.L0db323ec:
    # Line 1034
    la	$a1,__glDoBlendDestMCC
    # Line 1035
    b	.L0db32144
    # Line 1034
    sw	$a1,12612($a0)
.L0db323f8:
    # Line 1066
    jr	$ra
    # Line 1048
    sw	$a2,12616($a0)
.L0db32400:
    # Line 1051
    la	$v0,__glDoBlendMin
    # Line 1066
    jr	$ra
    # Line 1051
    sw	$v0,12616($a0)
.L0db3240c:
    # Line 1054
    la	$v1,__glDoBlendMax
    # Line 1066
    jr	$ra
    # Line 1054
    sw	$v1,12616($a0)
.L0db32418:
    # Line 1057
    la	$a1,__glDoBlendSubtract
    # Line 1066
    jr	$ra
    # Line 1057
    sw	$a1,12616($a0)
.L0db32424:
    # Line 1060
    la	$a2,__glDoBlendReverseSubtract
    # Line 1066
    jr	$ra
    # Line 1060
    sw	$a2,12616($a0)
.L0db32430:
    # Line 961
    li	$v0,0x8003
    bne	$a4,$v0,.L0db320c8
    # Line 1002
    sltiu	$v0,$a5,772
    # Line 993
    la	$v1,__glDoBlendSourceCA
    # Line 994
    b	.L0db320c4
    # Line 993
    sw	$v1,12608($a0)
.L0db32448:
    # Line 1002
    li	$a1,0x8003
    bne	$a5,$a1,.L0db32148
    # Line 1046
    li	$v1,0x8006
    # Line 1031
    la	$a2,__glDoBlendDestCA
    # Line 1032
    b	.L0db32144
    # Line 1031
    sw	$a2,12612($a0)
.L0db32460:
    # Line 987
    la	$v0,__glDoBlendSourceSAT
    # Line 988
    b	.L0db320c4
    # Line 987
    sw	$v0,12608($a0)
.L0db3246c:
    # Line 920
    la	$v1,__glDoBlend_SA_ZERO
    # Line 921
    jr	$ra
    # Line 920
    sw	$v1,12604($a0)
.L0db32478:
    # Line 924
    la	$a1,__glDoBlend_SA_ONE
    # Line 925
    jr	$ra
    # Line 924
    sw	$a1,12604($a0)
.end __glGenericPickBlendProcs

# Function: __glBlendSpan
# Declared: Line 1070 (Source lines: 1071-1086)
# Address: 0x0db32484 - 0x0db325e4 (Size: 352 bytes, Frame: 224)
.globl __glBlendSpan
.ent __glBlendSpan
__glBlendSpan:
    # Line 1071
    addiu	$sp,$sp,-96
    sd	$s4,64($sp)
    sd	$s3,24($sp)
    move	$s3,$a0
    sd	$s0,32($sp)
    # Line 1078
    lw	$s0,30520($a0)
    sd	$s1,40($sp)
    # Line 1077
    lw	$s1,30516($a0)
    sd	$gp,48($sp)
    sd	$s2,16($sp)
    # Line 1079
    lw	$s2,30300($a0)
    # Line 1071
    lui	$at,0xd
    addiu	$at,$at,-15852
    # Line 1079
    addiu	$s2,$s2,-1
    bltz	$s2,.L0db325c4
    # Line 1071
    addu	$gp,$t9,$at
    # Line 1079
    addiu	$a0,$s2,1
    andi	$v0,$a0,0x1
    beqz	$v0,.L0db32528
    li	$s4,-1
    sd	$a0,56($sp)
    # Line 1080
    move	$a0,$s3
    move	$a1,$s1
    move	$a2,$s0
    lw	$t9,12604($s3)
    # Line 1083
    addiu	$s0,$s0,16
    sd	$ra,72($sp)
    # Line 1080
    jalr	$t9
    addiu	$a3,$sp,0
    # Line 1081
    lwc1	$f3,0($sp)
    swc1	$f3,0($s1)
    lwc1	$f2,4($sp)
    swc1	$f2,4($s1)
    lwc1	$f1,8($sp)
    # Line 1079
    addiu	$s2,$s2,-1
    # Line 1081
    swc1	$f1,8($s1)
    # Line 1082
    addiu	$s1,$s1,16
    # Line 1081
    lwc1	$f0,12($sp)
    ld	$a0,56($sp)
    ld	$ra,72($sp)
    swc1	$f0,-4($s1)
.L0db32528:
    sra	$v1,$a0,0x1
    beqz	$v1,.L0db325bc
    sd	$ra,72($sp)
.L0db32534:
    # Line 1080
    move	$a0,$s3
    move	$a1,$s1
    lw	$t9,12604($s3)
    move	$a2,$s0
    # Line 1083
    addiu	$s0,$s0,16
    # Line 1080
    jalr	$t9
    addiu	$a3,$sp,0
    # Line 1081
    lwc1	$f7,0($sp)
    swc1	$f7,0($s1)
    lwc1	$f6,4($sp)
    swc1	$f6,4($s1)
    lwc1	$f5,8($sp)
    swc1	$f5,8($s1)
    # Line 1079
    addiu	$s2,$s2,-2
    # Line 1081
    lwc1	$f4,12($sp)
    # Line 1080
    addiu	$a3,$sp,0
    move	$a0,$s3
    # Line 1081
    swc1	$f4,12($s1)
    # Line 1080
    move	$a2,$s0
    lw	$t9,12604($s3)
    # Line 1083
    addiu	$s0,$s0,16
    # Line 1082
    addiu	$s1,$s1,16
    # Line 1080
    jalr	$t9
    move	$a1,$s1
    # Line 1081
    lwc1	$f3,0($sp)
    swc1	$f3,0($s1)
    lwc1	$f2,4($sp)
    swc1	$f2,4($s1)
    lwc1	$f1,8($sp)
    swc1	$f1,8($s1)
    lwc1	$f0,12($sp)
    # Line 1082
    addiu	$s1,$s1,16
    # Line 1079
    bne	$s2,$s4,.L0db32534
    # Line 1081
    swc1	$f0,-4($s1)
.L0db325bc:
    ld	$s4,64($sp)
    ld	$ra,72($sp)
.L0db325c4:
    # Line 1086
    move	$v0,$zero
    ld	$gp,48($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s2,16($sp)
    ld	$s3,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glBlendSpan

# Function: __glBlendSpan_SA_MSA
# Declared: Line 1095 (Source lines: 1098-1123)
# Address: 0x0db325e4 - 0x0db32688 (Size: 164 bytes, Frame: 0)
.globl __glBlendSpan_SA_MSA
.ent __glBlendSpan_SA_MSA
__glBlendSpan_SA_MSA:
    # Line 1105
    lwc1	$f10,30864($a0)
    # Line 1106
    lw	$a2,30300($a0)
    # Line 1104
    lw	$a4,30520($a0)
    # Line 1103
    lw	$a3,30516($a0)
    # Line 1106
    addiu	$a2,$a2,-1
    bltz	$a2,.L0db3267c
    # Line 1098
    lwc1	$f9,3284($a0)
    # Line 1106
    li	$a1,-1
.L0db32604:
    # Line 1107
    lwc1	$f8,12($a3)
    mul.s	$f3,$f8,$f10
    # Line 1111
    sub.s	$f7,$f9,$f3
    # Line 1113
    lwc1	$f4,12($a4)
    mul.s	$f4,$f4,$f7
    mul.s	$f8,$f8,$f3
    # Line 1112
    lwc1	$f2,8($a3)
    mul.s	$f2,$f2,$f3
    lwc1	$f6,8($a4)
    mul.s	$f6,$f6,$f7
    # Line 1111
    lwc1	$f1,4($a3)
    mul.s	$f1,$f1,$f3
    lwc1	$f5,4($a4)
    mul.s	$f5,$f5,$f7
    # Line 1115
    lwc1	$f0,0($a3)
    mul.s	$f0,$f0,$f3
    lwc1	$f3,0($a4)
    # Line 1113
    add.s	$f4,$f4,$f8
    # Line 1115
    mul.s	$f3,$f3,$f7
    # Line 1112
    add.s	$f2,$f2,$f6
    # Line 1120
    addiu	$a4,$a4,16
    # Line 1119
    addiu	$a3,$a3,16
    # Line 1111
    add.s	$f1,$f1,$f5
    # Line 1106
    addiu	$a2,$a2,-1
    # Line 1118
    swc1	$f4,-4($a3)
    # Line 1115
    add.s	$f0,$f0,$f3
    # Line 1117
    swc1	$f2,-8($a3)
    # Line 1116
    swc1	$f1,-12($a3)
    # Line 1106
    bne	$a2,$a1,.L0db32604
    # Line 1115
    swc1	$f0,-16($a3)
.L0db3267c:
    # Line 1123
    move	$v0,$zero
    jr	$ra
    nop
.end __glBlendSpan_SA_MSA

# Function: __glBlendSpan_MSA_SA
# Declared: Line 1132 (Source lines: 1139-1158)
# Address: 0x0db32688 - 0x0db3272c (Size: 164 bytes, Frame: 0)
.globl __glBlendSpan_MSA_SA
.ent __glBlendSpan_MSA_SA
__glBlendSpan_MSA_SA:
    # Line 1142
    lw	$a4,30300($a0)
    # Line 1141
    lwc1	$f9,30864($a0)
    # Line 1140
    lw	$a3,30520($a0)
    # Line 1142
    addiu	$a4,$a4,-1
    bltz	$a4,.L0db32720
    # Line 1139
    lw	$a2,30516($a0)
    # Line 1142
    li	$a5,-1
.L0db326a4:
    # Line 1143
    lwc1	$f8,12($a2)
    mul.s	$f7,$f8,$f9
    # Line 1144
    lwc1	$f3,3284($a0)
    # Line 1148
    lwc1	$f4,12($a3)
    # Line 1144
    sub.s	$f3,$f3,$f7
    # Line 1148
    mul.s	$f4,$f4,$f7
    mul.s	$f8,$f8,$f3
    # Line 1147
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f3
    lwc1	$f6,8($a3)
    mul.s	$f6,$f6,$f7
    # Line 1146
    lwc1	$f1,4($a2)
    mul.s	$f1,$f1,$f3
    lwc1	$f5,4($a3)
    mul.s	$f5,$f5,$f7
    # Line 1150
    lwc1	$f0,0($a2)
    mul.s	$f0,$f0,$f3
    lwc1	$f3,0($a3)
    # Line 1148
    add.s	$f4,$f4,$f8
    # Line 1150
    mul.s	$f3,$f3,$f7
    # Line 1147
    add.s	$f2,$f2,$f6
    # Line 1155
    addiu	$a3,$a3,16
    # Line 1154
    addiu	$a2,$a2,16
    # Line 1146
    add.s	$f1,$f1,$f5
    # Line 1142
    addiu	$a4,$a4,-1
    # Line 1153
    swc1	$f4,-4($a2)
    # Line 1150
    add.s	$f0,$f0,$f3
    # Line 1152
    swc1	$f2,-8($a2)
    # Line 1151
    swc1	$f1,-12($a2)
    # Line 1142
    bne	$a4,$a5,.L0db326a4
    # Line 1150
    swc1	$f0,-16($a2)
.L0db32720:
    # Line 1158
    move	$v0,$zero
    jr	$ra
    nop
.end __glBlendSpan_MSA_SA

# Function: __glBlendSpan_SA_ZERO
# Declared: Line 1161 (Source lines: 1168-1184)
# Address: 0x0db3272c - 0x0db32824 (Size: 248 bytes, Frame: 0)
.globl __glBlendSpan_SA_ZERO
.ent __glBlendSpan_SA_ZERO
__glBlendSpan_SA_ZERO:
    # Line 1170
    lw	$a2,30300($a0)
    # Line 1169
    lwc1	$f9,30864($a0)
    # Line 1170
    addiu	$a2,$a2,-1
    bltz	$a2,.L0db32818
    # Line 1168
    lw	$a4,30516($a0)
    # Line 1170
    addiu	$a1,$a2,1
    andi	$a3,$a1,0x1
    beqz	$a3,.L0db3278c
    li	$a3,-1
    # Line 1171
    lwc1	$f3,12($a4)
    mul.s	$f4,$f3,$f9
    # Line 1173
    lwc1	$f1,4($a4)
    # Line 1174
    lwc1	$f2,8($a4)
    # Line 1173
    mul.s	$f1,$f1,$f4
    # Line 1174
    mul.s	$f2,$f2,$f4
    # Line 1177
    lwc1	$f0,0($a4)
    # Line 1175
    mul.s	$f3,$f3,$f4
    # Line 1177
    mul.s	$f0,$f0,$f4
    # Line 1170
    addiu	$a2,$a2,-1
    # Line 1181
    addiu	$a4,$a4,16
    # Line 1180
    swc1	$f3,-4($a4)
    # Line 1179
    swc1	$f2,-8($a4)
    # Line 1178
    swc1	$f1,-12($a4)
    # Line 1177
    swc1	$f0,-16($a4)
.L0db3278c:
    sra	$at,$a1,0x1
    move	$a5,$a2
    beqz	$at,.L0db32818
    move	$a6,$a4
    move	$a2,$a5
    move	$a1,$a6
.L0db327a4:
    # Line 1171
    lwc1	$f3,28($a1)
    mul.s	$f4,$f3,$f9
    # Line 1175
    mul.s	$f3,$f3,$f4
    # Line 1174
    lwc1	$f2,24($a1)
    mul.s	$f2,$f2,$f4
    # Line 1173
    lwc1	$f0,20($a1)
    mul.s	$f0,$f0,$f4
    # Line 1171
    lwc1	$f7,12($a1)
    mul.s	$f1,$f7,$f9
    # Line 1177
    lwc1	$f8,16($a1)
    mul.s	$f8,$f8,$f4
    # Line 1175
    mul.s	$f7,$f7,$f1
    # Line 1174
    lwc1	$f6,8($a1)
    mul.s	$f6,$f6,$f1
    # Line 1173
    lwc1	$f5,4($a1)
    # Line 1181
    addiu	$a1,$a1,32
    # Line 1170
    addiu	$a2,$a2,-2
    # Line 1173
    mul.s	$f5,$f5,$f1
    # Line 1177
    lwc1	$f4,-32($a1)
    # Line 1180
    swc1	$f3,-4($a1)
    # Line 1179
    swc1	$f2,-8($a1)
    # Line 1177
    mul.s	$f4,$f4,$f1
    # Line 1178
    swc1	$f0,-12($a1)
    # Line 1177
    swc1	$f8,-16($a1)
    # Line 1180
    swc1	$f7,-20($a1)
    # Line 1179
    swc1	$f6,-24($a1)
    # Line 1178
    swc1	$f5,-28($a1)
    # Line 1170
    bne	$a2,$a3,.L0db327a4
    # Line 1177
    swc1	$f4,-32($a1)
.L0db32818:
    # Line 1184
    move	$v0,$zero
    jr	$ra
    nop
.end __glBlendSpan_SA_ZERO

# Function: __glBlendSpan_SA_ONE
# Declared: Line 1187 (Source lines: 1195-1228)
# Address: 0x0db32824 - 0x0db32a30 (Size: 524 bytes, Frame: 0)
.globl __glBlendSpan_SA_ONE
.ent __glBlendSpan_SA_ONE
__glBlendSpan_SA_ONE:
    # Line 1200
    lwc1	$f13,30844($a0)
    # Line 1199
    lwc1	$f11,30812($a0)
    # Line 1198
    lwc1	$f12,30808($a0)
    # Line 1201
    lw	$a4,30300($a0)
    # Line 1197
    lwc1	$f10,30804($a0)
    # Line 1196
    lw	$a3,30520($a0)
    # Line 1201
    addiu	$a4,$a4,-1
    bltz	$a4,.L0db328fc
    # Line 1195
    lw	$a2,30516($a0)
    # Line 1201
    addiu	$a6,$a4,1
    andi	$a5,$a6,0x1
    beqz	$a5,.L0db328f0
    li	$a5,-1
    # Line 1202
    lwc1	$f9,12($a2)
    lwc1	$f7,30864($a0)
    mul.s	$f7,$f7,$f9
    # Line 1203
    lwc1	$f1,0($a2)
    mul.s	$f1,$f1,$f7
    lwc1	$f8,0($a3)
    # Line 1204
    lwc1	$f0,4($a2)
    # Line 1203
    add.s	$f8,$f8,$f1
    # Line 1204
    mul.s	$f0,$f0,$f7
    c.lt.s	$f10,$f8
    lwc1	$f4,4($a3)
    # Line 1201
    addiu	$a4,$a4,-1
    # Line 1204
    bc1f	.L0db32894
    add.s	$f4,$f4,$f0
    # Line 1206
    mov.s	$f8,$f10
.L0db32894:
    # Line 1208
    lwc1	$f0,8($a2)
    mul.s	$f0,$f0,$f7
    c.lt.s	$f12,$f4
    lwc1	$f5,8($a3)
    bc1f	.L0db328b0
    add.s	$f5,$f5,$f0
    # Line 1210
    mov.s	$f4,$f12
.L0db328b0:
    # Line 1212
    mul.s	$f0,$f9,$f7
    c.lt.s	$f11,$f5
    lwc1	$f6,12($a3)
    # Line 1225
    addiu	$a3,$a3,16
    # Line 1212
    bc1f	.L0db328cc
    add.s	$f6,$f6,$f0
    # Line 1214
    mov.s	$f5,$f11
.L0db328cc:
    # Line 1217
    c.lt.s	$f13,$f6
    nop
    bc1f	.L0db328e0
    swc1	$f8,0($a2)
    # Line 1219
    mov.s	$f6,$f13
.L0db328e0:
    # Line 1224
    addiu	$a2,$a2,16
    # Line 1223
    swc1	$f6,-4($a2)
    # Line 1222
    swc1	$f5,-8($a2)
    # Line 1221
    swc1	$f4,-12($a2)
.L0db328f0:
    sra	$at,$a6,0x1
    bnezl	$at,.L0db32968
    # Line 1202
    lwc1	$f9,12($a2)
.L0db328fc:
    # Line 1228
    move	$v0,$zero
    jr	$ra
    nop
.L0db32908:
    # Line 1208
    lwc1	$f0,24($a2)
    mul.s	$f0,$f0,$f7
    c.lt.s	$f12,$f4
    lwc1	$f5,-8($a3)
    bc1f	.L0db32924
    add.s	$f5,$f5,$f0
    # Line 1210
    mov.s	$f4,$f12
.L0db32924:
    # Line 1212
    mul.s	$f0,$f9,$f7
    c.lt.s	$f11,$f5
    lwc1	$f6,-4($a3)
    bc1f	.L0db3293c
    add.s	$f6,$f6,$f0
    # Line 1214
    mov.s	$f5,$f11
.L0db3293c:
    # Line 1217
    c.lt.s	$f13,$f6
    nop
    bc1f	.L0db32950
    swc1	$f8,16($a2)
    # Line 1219
    mov.s	$f6,$f13
.L0db32950:
    # Line 1224
    addiu	$a2,$a2,32
    # Line 1223
    swc1	$f6,-4($a2)
    # Line 1222
    swc1	$f5,-8($a2)
    # Line 1201
    beq	$a4,$a5,.L0db328fc
    # Line 1221
    swc1	$f4,-12($a2)
    # Line 1202
    lwc1	$f9,12($a2)
.L0db32968:
    lwc1	$f7,30864($a0)
    mul.s	$f7,$f7,$f9
    # Line 1203
    lwc1	$f1,0($a2)
    mul.s	$f1,$f1,$f7
    lwc1	$f8,0($a3)
    # Line 1204
    lwc1	$f0,4($a2)
    # Line 1203
    add.s	$f8,$f8,$f1
    # Line 1204
    mul.s	$f0,$f0,$f7
    c.lt.s	$f10,$f8
    lwc1	$f4,4($a3)
    # Line 1201
    addiu	$a4,$a4,-2
    # Line 1204
    bc1f	.L0db329a0
    add.s	$f4,$f4,$f0
    # Line 1206
    mov.s	$f8,$f10
.L0db329a0:
    # Line 1208
    lwc1	$f0,8($a2)
    mul.s	$f0,$f0,$f7
    c.lt.s	$f12,$f4
    lwc1	$f5,8($a3)
    bc1f	.L0db329bc
    add.s	$f5,$f5,$f0
    # Line 1210
    mov.s	$f4,$f12
.L0db329bc:
    # Line 1212
    mul.s	$f0,$f9,$f7
    c.lt.s	$f11,$f5
    lwc1	$f6,12($a3)
    bc1f	.L0db329d4
    add.s	$f6,$f6,$f0
    # Line 1214
    mov.s	$f5,$f11
.L0db329d4:
    # Line 1217
    c.lt.s	$f13,$f6
    # Line 1202
    lwc1	$f9,28($a2)
    # Line 1203
    lwc1	$f1,16($a2)
    # Line 1217
    bc1f	.L0db329ec
    swc1	$f8,0($a2)
    # Line 1219
    mov.s	$f6,$f13
.L0db329ec:
    # Line 1221
    swc1	$f4,4($a2)
    # Line 1222
    swc1	$f5,8($a2)
    # Line 1223
    swc1	$f6,12($a2)
    # Line 1202
    lwc1	$f7,30864($a0)
    mul.s	$f7,$f7,$f9
    # Line 1203
    mul.s	$f1,$f1,$f7
    lwc1	$f8,16($a3)
    # Line 1204
    lwc1	$f0,20($a2)
    # Line 1203
    add.s	$f8,$f8,$f1
    # Line 1204
    mul.s	$f0,$f0,$f7
    c.lt.s	$f10,$f8
    lwc1	$f4,20($a3)
    # Line 1225
    addiu	$a3,$a3,32
    # Line 1204
    bc1f	.L0db32908
    add.s	$f4,$f4,$f0
    b	.L0db32908
    # Line 1206
    mov.s	$f8,$f10
.end __glBlendSpan_SA_ONE

# Function: __glBlendStippledSpan
# Declared: Line 1231 (Source lines: 1232-1267)
# Address: 0x0db32a30 - 0x0db32b50 (Size: 288 bytes, Frame: 128)
.globl __glBlendStippledSpan
.ent __glBlendStippledSpan
__glBlendStippledSpan:
    # Line 1232
    addiu	$sp,$sp,-128
    sd	$s5,64($sp)
    sd	$s6,48($sp)
    move	$s6,$a0
    sd	$s2,56($sp)
    # Line 1242
    lw	$s2,30520($a0)
    sd	$s0,40($sp)
    # Line 1241
    lw	$s0,30516($a0)
    sd	$s8,16($sp)
    # Line 1239
    lw	$s8,30524($a0)
    sd	$gp,24($sp)
    sd	$s7,32($sp)
    # Line 1238
    lw	$s7,30300($a0)
    # Line 1232
    lui	$at,0xd
    addiu	$at,$at,-17304
    # Line 1242
    beqz	$s7,.L0db32b2c
    # Line 1232
    addu	$gp,$t9,$at
    sd	$s3,96($sp)
    sd	$ra,88($sp)
    sd	$s4,80($sp)
    sd	$s1,72($sp)
    b	.L0db32a90
    # Line 1242
    li	$s5,-1
.L0db32a8c:
    # Line 1252
    beqz	$s7,.L0db32b18
.L0db32a90:
    # Line 1244
    slti	$v0,$s7,33
    bnez	$v0,.L0db32aa0
    move	$s3,$s7
    # Line 1246
    li	$s3,32
.L0db32aa0:
    lui	$s1,0x8000
    # Line 1250
    lw	$s4,0($s8)
    # Line 1248
    subu	$s7,$s7,$s3
    # Line 1252
    addiu	$s3,$s3,-1
    bltz	$s3,.L0db32a8c
    # Line 1250
    addiu	$s8,$s8,4
    b	.L0db32ad0
    # Line 1252
    addiu	$s3,$s3,-1
.L0db32ac0:
    # Line 1258
    addiu	$s2,$s2,16
    # Line 1252
    beq	$s3,$s5,.L0db32a8c
    # Line 1257
    addiu	$s0,$s0,16
    # Line 1252
    addiu	$s3,$s3,-1
.L0db32ad0:
    and	$v1,$s4,$s1
    beqz	$v1,.L0db32ac0
    # Line 1260
    srl	$s1,$s1,0x1
    # Line 1254
    move	$a0,$s6
    lw	$t9,12604($s6)
    move	$a1,$s0
    move	$a2,$s2
    jalr	$t9
    addiu	$a3,$sp,0
    # Line 1255
    lwc1	$f3,0($sp)
    swc1	$f3,0($s0)
    lwc1	$f2,4($sp)
    swc1	$f2,4($s0)
    lwc1	$f1,8($sp)
    swc1	$f1,8($s0)
    lwc1	$f0,12($sp)
    b	.L0db32ac0
    swc1	$f0,12($s0)
.L0db32b18:
    ld	$s5,64($sp)
    ld	$s1,72($sp)
    ld	$s4,80($sp)
    ld	$ra,88($sp)
    ld	$s3,96($sp)
.L0db32b2c:
    # Line 1267
    move	$v0,$zero
    ld	$gp,24($sp)
    ld	$s0,40($sp)
    ld	$s2,56($sp)
    ld	$s6,48($sp)
    ld	$s7,32($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glBlendStippledSpan

.late_rodata
jtbl_0dbef070:
    .word .L0db30fe0
    .word .L0db31004
    .word .L0db30dd8
    .word .L0db31038
    .word .L0db30dd8
    .word .L0db3106c
    .word .L0db31090
    .word .L0db310b4
    .word .L0db310d8
    .word .L0db30db8
    .word .L0db3110c
    .word .L0db30dd8
    .word .L0db31140
    .word .L0db31174

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4000000000000000:
    .word 0x40000000, 0x00000000

