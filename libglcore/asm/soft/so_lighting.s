# Source: ../soft/so_lighting.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_lighting.c
# Total Functions: 33

.text

# Function: __glScaleColorf
# Declared: Line 30 (Source lines: 32-36)
# Address: 0x0db4ca88 - 0x0db4cacc (Size: 68 bytes, Frame: 0)
.globl __glScaleColorf
.ent __glScaleColorf
__glScaleColorf:
    # Line 32
    lwc1	$f2,30804($a0)
    lwc1	$f1,0($a2)
    mul.s	$f1,$f1,$f2
    swc1	$f1,0($a1)
    # Line 33
    lwc1	$f0,30808($a0)
    lwc1	$f4,4($a2)
    mul.s	$f4,$f4,$f0
    swc1	$f4,4($a1)
    # Line 34
    lwc1	$f3,30812($a0)
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a1)
    # Line 35
    lwc1	$f1,30844($a0)
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f1
    # Line 36
    jr	$ra
    # Line 35
    swc1	$f0,12($a1)
.end __glScaleColorf

# Function: __glClampAndScaleColorf
# Declared: Line 41 (Source lines: 42-60)
# Address: 0x0db4cacc - 0x0db4cbd4 (Size: 264 bytes, Frame: 0)
.globl __glClampAndScaleColorf
.ent __glClampAndScaleColorf
__glClampAndScaleColorf:
    # Line 45
    lwc1	$f0,30804($a0)
    lwc1	$f5,0($a2)
    mul.s	$f5,$f5,$f0
    # Line 42
    lui	$v0,0xb
    addiu	$v0,$v0,7116
    addu	$at,$t9,$v0
    # Line 45
    mtc1	$zero,$f4
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0db4cb00
    swc1	$f5,0($a1)
    # Line 46
    mov.s	$f5,$f4
    swc1	$f4,0($a1)
.L0db4cb00:
    lwc1	$f6,30804($a0)
    c.lt.s	$f6,$f5
    nop
    bc1fl	.L0db4cb1c
    # Line 49
    lwc1	$f0,30808($a0)
    # Line 47
    swc1	$f6,0($a1)
    # Line 49
    lwc1	$f0,30808($a0)
.L0db4cb1c:
    lwc1	$f5,4($a2)
    mul.s	$f5,$f5,$f0
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0db4cb3c
    swc1	$f5,4($a1)
    # Line 50
    mov.s	$f5,$f4
    swc1	$f4,4($a1)
.L0db4cb3c:
    lwc1	$f6,30808($a0)
    c.lt.s	$f6,$f5
    nop
    bc1fl	.L0db4cb58
    # Line 53
    lwc1	$f0,30812($a0)
    # Line 51
    swc1	$f6,4($a1)
    # Line 53
    lwc1	$f0,30812($a0)
.L0db4cb58:
    lwc1	$f5,8($a2)
    mul.s	$f5,$f5,$f0
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0db4cb78
    swc1	$f5,8($a1)
    # Line 54
    mov.s	$f5,$f4
    swc1	$f4,8($a1)
.L0db4cb78:
    lwc1	$f6,30812($a0)
    c.lt.s	$f6,$f5
    nop
    bc1fl	.L0db4cb94
    # Line 57
    lwc1	$f0,30844($a0)
    # Line 55
    swc1	$f6,8($a1)
    # Line 57
    lwc1	$f0,30844($a0)
.L0db4cb94:
    lwc1	$f5,12($a2)
    mul.s	$f5,$f5,$f0
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0db4cbb4
    swc1	$f5,12($a1)
    # Line 58
    mov.s	$f5,$f4
    swc1	$f4,12($a1)
.L0db4cbb4:
    lwc1	$f4,30844($a0)
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0db4cbcc
    nop
    # Line 59
    swc1	$f4,12($a1)
.L0db4cbcc:
    # Line 60
    jr	$ra
    nop
.end __glClampAndScaleColorf

# Function: __glClampColorf
# Declared: Line 65 (Source lines: 66-91)
# Address: 0x0db4cbd4 - 0x0db4cca4 (Size: 208 bytes, Frame: 0)
.globl __glClampColorf
.ent __glClampColorf
__glClampColorf:
    # Line 71
    lwc1	$f9,0($a2)
    # Line 66
    lui	$v0,0xb
    addiu	$v0,$v0,6852
    addu	$at,$t9,$v0
    # Line 74
    mtc1	$zero,$f5
    lwc1	$f6,12($a2)
    c.lt.s	$f9,$f5
    # Line 73
    lwc1	$f8,8($a2)
    # Line 72
    lwc1	$f7,4($a2)
    # Line 74
    bc1f	.L0db4cc08
    # Line 68
    lwc1	$f4,3284($a0)
    # Line 76
    b	.L0db4cc1c
    swc1	$f5,0($a1)
.L0db4cc08:
    c.lt.s	$f4,$f9
    nop
    bc1fl	.L0db4cc1c
    # Line 78
    swc1	$f9,0($a1)
    # Line 77
    swc1	$f4,0($a1)
.L0db4cc1c:
    # Line 78
    c.lt.s	$f7,$f5
    nop
    bc1fl	.L0db4cc34
    # Line 80
    c.lt.s	$f4,$f7
    b	.L0db4cc44
    swc1	$f5,4($a1)
.L0db4cc34:
    nop
    bc1fl	.L0db4cc44
    # Line 82
    swc1	$f7,4($a1)
    # Line 81
    swc1	$f4,4($a1)
.L0db4cc44:
    # Line 82
    c.lt.s	$f8,$f5
    nop
    bc1fl	.L0db4cc5c
    # Line 84
    c.lt.s	$f4,$f8
    b	.L0db4cc6c
    swc1	$f5,8($a1)
.L0db4cc5c:
    nop
    bc1fl	.L0db4cc6c
    # Line 86
    swc1	$f8,8($a1)
    # Line 85
    swc1	$f4,8($a1)
.L0db4cc6c:
    # Line 86
    c.lt.s	$f6,$f5
    nop
    bc1t	.L0db4cc9c
    nop
    # Line 88
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0db4cc94
    # Line 90
    swc1	$f6,12($a1)
    # Line 91
    jr	$ra
    # Line 89
    swc1	$f4,12($a1)
.L0db4cc94:
    # Line 91
    jr	$ra
    nop
.L0db4cc9c:
    jr	$ra
    # Line 88
    swc1	$f5,12($a1)
.end __glClampColorf

# Function: __glScaleColori
# Declared: Line 97 (Source lines: 98-103)
# Address: 0x0db4cca4 - 0x0db4cd68 (Size: 196 bytes, Frame: 0)
.globl __glScaleColori
.ent __glScaleColori
__glScaleColori:
    # Line 99
    lw	$v0,0($a2)
    mtc1	$v0,$f2
    # Line 98
    lui	$a4,0xb
    # Line 99
    cvt.s.w	$f2,$f2
    # Line 98
    addiu	$a4,$a4,6644
    addu	$at,$t9,$a4
    # Line 99
    lwc1	$f4,_lit_40000000
    mul.s	$f2,$f2,$f4
    lwc1	$f3,_lit_3f800000
    add.s	$f2,$f2,$f3
    lwc1	$f1,3308($a0)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,30804($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($a1)
    # Line 100
    lw	$a3,4($a2)
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f4
    add.s	$f2,$f2,$f3
    lwc1	$f1,3308($a0)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,30808($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,4($a1)
    # Line 101
    lw	$v1,8($a2)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f4
    add.s	$f2,$f2,$f3
    lwc1	$f1,3308($a0)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,30812($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,8($a1)
    # Line 102
    lw	$v0,12($a2)
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f4
    add.s	$f2,$f2,$f3
    lwc1	$f1,3308($a0)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,30844($a0)
    mul.s	$f0,$f0,$f1
    # Line 103
    jr	$ra
    # Line 102
    swc1	$f0,12($a1)
.end __glScaleColori

# Function: __glClampAndScaleColori
# Declared: Line 108 (Source lines: 109-127)
# Address: 0x0db4cd68 - 0x0db4cee4 (Size: 380 bytes, Frame: 0)
.globl __glClampAndScaleColori
.ent __glClampAndScaleColori
__glClampAndScaleColori:
    # Line 112
    lw	$v1,0($a2)
    mtc1	$v1,$f1
    # Line 109
    lui	$v0,0xb
    # Line 112
    cvt.s.w	$f1,$f1
    # Line 109
    addiu	$v0,$v0,6448
    addu	$at,$t9,$v0
    # Line 112
    lwc1	$f5,_lit_40000000
    mul.s	$f1,$f1,$f5
    lwc1	$f6,_lit_3f800000
    add.s	$f1,$f1,$f6
    lwc1	$f0,3308($a0)
    mul.s	$f0,$f0,$f1
    lwc1	$f7,30804($a0)
    mul.s	$f7,$f7,$f0
    mtc1	$zero,$f4
    c.lt.s	$f7,$f4
    nop
    bc1f	.L0db4cdbc
    swc1	$f7,0($a1)
    # Line 113
    mov.s	$f7,$f4
    swc1	$f4,0($a1)
.L0db4cdbc:
    lwc1	$f8,30804($a0)
    c.lt.s	$f8,$f7
    nop
    bc1fl	.L0db4cdd8
    # Line 116
    lw	$a3,4($a2)
    # Line 114
    swc1	$f8,0($a1)
    # Line 116
    lw	$a3,4($a2)
.L0db4cdd8:
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f5
    add.s	$f1,$f1,$f6
    lwc1	$f0,3308($a0)
    mul.s	$f0,$f0,$f1
    lwc1	$f7,30808($a0)
    mul.s	$f7,$f7,$f0
    c.lt.s	$f7,$f4
    nop
    bc1f	.L0db4ce14
    swc1	$f7,4($a1)
    # Line 117
    mov.s	$f7,$f4
    swc1	$f4,4($a1)
.L0db4ce14:
    lwc1	$f8,30808($a0)
    c.lt.s	$f8,$f7
    nop
    bc1fl	.L0db4ce30
    # Line 120
    lw	$a4,8($a2)
    # Line 118
    swc1	$f8,4($a1)
    # Line 120
    lw	$a4,8($a2)
.L0db4ce30:
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f5
    add.s	$f1,$f1,$f6
    lwc1	$f0,3308($a0)
    mul.s	$f0,$f0,$f1
    lwc1	$f7,30812($a0)
    mul.s	$f7,$f7,$f0
    c.lt.s	$f7,$f4
    nop
    bc1f	.L0db4ce6c
    swc1	$f7,8($a1)
    # Line 121
    mov.s	$f7,$f4
    swc1	$f4,8($a1)
.L0db4ce6c:
    lwc1	$f8,30812($a0)
    c.lt.s	$f8,$f7
    nop
    bc1fl	.L0db4ce88
    # Line 124
    lw	$v0,12($a2)
    # Line 122
    swc1	$f8,8($a1)
    # Line 124
    lw	$v0,12($a2)
.L0db4ce88:
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f5
    add.s	$f1,$f1,$f6
    lwc1	$f0,3308($a0)
    mul.s	$f0,$f0,$f1
    lwc1	$f7,30844($a0)
    mul.s	$f7,$f7,$f0
    c.lt.s	$f7,$f4
    nop
    bc1f	.L0db4cec4
    swc1	$f7,12($a1)
    # Line 125
    mov.s	$f7,$f4
    swc1	$f4,12($a1)
.L0db4cec4:
    lwc1	$f4,30844($a0)
    c.lt.s	$f4,$f7
    nop
    bc1f	.L0db4cedc
    nop
    # Line 126
    swc1	$f4,12($a1)
.L0db4cedc:
    # Line 127
    jr	$ra
    nop
.end __glClampAndScaleColori

# Function: __glClampColori
# Declared: Line 132 (Source lines: 133-158)
# Address: 0x0db4cee4 - 0x0db4d018 (Size: 308 bytes, Frame: 0)
.globl __glClampColori
.ent __glClampColori
__glClampColori:
    # Line 141
    lw	$v0,12($a2)
    mtc1	$v0,$f6
    nop
    cvt.s.w	$f6,$f6
    # Line 133
    lui	$a4,0xb
    addiu	$a4,$a4,6068
    addu	$at,$t9,$a4
    # Line 138
    lwc1	$f0,_lit_40000000
    # Line 141
    mul.s	$f6,$f6,$f0
    # Line 140
    lw	$a3,8($a2)
    mtc1	$a3,$f8
    # Line 138
    lw	$v1,0($a2)
    # Line 140
    cvt.s.w	$f8,$f8
    # Line 138
    mtc1	$v1,$f9
    # Line 139
    lw	$v0,4($a2)
    # Line 138
    cvt.s.w	$f9,$f9
    # Line 139
    mtc1	$v0,$f7
    nop
    cvt.s.w	$f7,$f7
    # Line 138
    mul.s	$f9,$f9,$f0
    # Line 140
    mul.s	$f8,$f8,$f0
    # Line 138
    lwc1	$f1,_lit_3f800000
    # Line 139
    mul.s	$f7,$f7,$f0
    # Line 138
    add.s	$f9,$f9,$f1
    lwc1	$f0,3308($a0)
    # Line 140
    add.s	$f8,$f8,$f1
    # Line 138
    mul.s	$f9,$f9,$f0
    # Line 141
    add.s	$f6,$f6,$f1
    mtc1	$zero,$f5
    # Line 139
    add.s	$f7,$f7,$f1
    # Line 141
    mul.s	$f6,$f6,$f0
    c.lt.s	$f9,$f5
    # Line 140
    mul.s	$f8,$f8,$f0
    # Line 135
    lwc1	$f4,3284($a0)
    # Line 141
    bc1f	.L0db4cf7c
    # Line 139
    mul.s	$f7,$f7,$f0
    # Line 143
    b	.L0db4cf90
    swc1	$f5,0($a1)
.L0db4cf7c:
    c.lt.s	$f4,$f9
    nop
    bc1fl	.L0db4cf90
    # Line 145
    swc1	$f9,0($a1)
    # Line 144
    swc1	$f4,0($a1)
.L0db4cf90:
    # Line 145
    c.lt.s	$f7,$f5
    nop
    bc1fl	.L0db4cfa8
    # Line 147
    c.lt.s	$f4,$f7
    b	.L0db4cfb8
    swc1	$f5,4($a1)
.L0db4cfa8:
    nop
    bc1fl	.L0db4cfb8
    # Line 149
    swc1	$f7,4($a1)
    # Line 148
    swc1	$f4,4($a1)
.L0db4cfb8:
    # Line 149
    c.lt.s	$f8,$f5
    nop
    bc1fl	.L0db4cfd0
    # Line 151
    c.lt.s	$f4,$f8
    b	.L0db4cfe0
    swc1	$f5,8($a1)
.L0db4cfd0:
    nop
    bc1fl	.L0db4cfe0
    # Line 153
    swc1	$f8,8($a1)
    # Line 152
    swc1	$f4,8($a1)
.L0db4cfe0:
    # Line 153
    c.lt.s	$f6,$f5
    nop
    bc1t	.L0db4d010
    nop
    # Line 155
    c.lt.s	$f4,$f6
    nop
    bc1fl	.L0db4d008
    # Line 157
    swc1	$f6,12($a1)
    # Line 158
    jr	$ra
    # Line 156
    swc1	$f4,12($a1)
.L0db4d008:
    # Line 158
    jr	$ra
    nop
.L0db4d010:
    jr	$ra
    # Line 155
    swc1	$f5,12($a1)
.end __glClampColori

# Function: __glUnScaleColorf
# Declared: Line 163 (Source lines: 165-169)
# Address: 0x0db4d018 - 0x0db4d05c (Size: 68 bytes, Frame: 0)
.globl __glUnScaleColorf
.ent __glUnScaleColorf
__glUnScaleColorf:
    # Line 165
    lwc1	$f2,30852($a0)
    lwc1	$f1,0($a2)
    mul.s	$f1,$f1,$f2
    swc1	$f1,0($a1)
    # Line 166
    lwc1	$f0,30856($a0)
    lwc1	$f4,4($a2)
    mul.s	$f4,$f4,$f0
    swc1	$f4,4($a1)
    # Line 167
    lwc1	$f3,30860($a0)
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a1)
    # Line 168
    lwc1	$f1,30864($a0)
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f1
    # Line 169
    jr	$ra
    # Line 168
    swc1	$f0,12($a1)
.end __glUnScaleColorf

# Function: __glUnScaleColori
# Declared: Line 174 (Source lines: 175-180)
# Address: 0x0db4d05c - 0x0db4d174 (Size: 280 bytes, Frame: 208)
.globl __glUnScaleColori
.ent __glUnScaleColori
__glUnScaleColori:
    # Line 175
    addiu	$sp,$sp,-80
    sd	$s4,0($sp)
    # Line 176
    lwc1	$f15,30852($a0)
    lwc1	$f14,0($a2)
    # Line 175
    move	$s4,$a2
    sd	$s1,16($sp)
    # Line 176
    mul.s	$f14,$f14,$f15
    # Line 175
    move	$s1,$a0
    sd	$s0,32($sp)
    move	$s0,$a1
    # Line 176
    lwc1	$f13,3304($a0)
    sd	$gp,24($sp)
    # Line 175
    lui	$at,0xb
    # Line 176
    mul.s	$f13,$f13,$f14
    # Line 175
    addiu	$at,$at,5692
    addu	$gp,$t9,$at
    # Line 176
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($a0)
    sd	$ra,8($sp)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f16,$f0
    mfc1	$v0,$f16
    nop
    sw	$v0,0($s0)
    # Line 177
    lwc1	$f15,30856($s1)
    lwc1	$f14,4($s4)
    mul.s	$f14,$f14,$f15
    lwc1	$f13,3304($s1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($s1)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f16,$f0
    mfc1	$v1,$f16
    nop
    sw	$v1,4($s0)
    # Line 178
    lwc1	$f15,30860($s1)
    lwc1	$f14,8($s4)
    mul.s	$f14,$f14,$f15
    lwc1	$f13,3304($s1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($s1)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f16,$f0
    mfc1	$a0,$f16
    nop
    sw	$a0,8($s0)
    # Line 179
    lwc1	$f15,30864($s1)
    lwc1	$f14,12($s4)
    mul.s	$f14,$f14,$f15
    lwc1	$f13,3304($s1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($s1)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f0,$f0
    ld	$gp,24($sp)
    # Line 180
    ld	$s1,16($sp)
    # Line 179
    mfc1	$a3,$f0
    # Line 180
    ld	$s4,0($sp)
    ld	$ra,8($sp)
    # Line 179
    sw	$a3,12($s0)
    # Line 180
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glUnScaleColori

# Function: __glClampRGBColor
# Declared: Line 185 (Source lines: 186-231)
# Address: 0x0db4d174 - 0x0db4d250 (Size: 220 bytes, Frame: 0)
.globl __glClampRGBColor
.ent __glClampRGBColor
__glClampRGBColor:
    # Line 191
    lwc1	$f6,0($a2)
    # Line 186
    lui	$v0,0xb
    addiu	$v0,$v0,5412
    addu	$at,$t9,$v0
    # Line 191
    mtc1	$zero,$f4
    c.le.s	$f6,$f4
    nop
    bc1f	.L0db4d1a0
    lwc1	$f5,30804($a0)
    # Line 193
    b	.L0db4d1b4
    swc1	$f4,0($a1)
.L0db4d1a0:
    c.le.s	$f5,$f6
    nop
    bc1fl	.L0db4d1b4
    # Line 198
    swc1	$f6,0($a1)
    # Line 196
    swc1	$f5,0($a1)
.L0db4d1b4:
    # Line 201
    lwc1	$f6,4($a2)
    c.le.s	$f6,$f4
    nop
    bc1f	.L0db4d1d0
    lwc1	$f5,30808($a0)
    # Line 203
    b	.L0db4d1e4
    swc1	$f4,4($a1)
.L0db4d1d0:
    c.le.s	$f5,$f6
    nop
    bc1fl	.L0db4d1e4
    # Line 208
    swc1	$f6,4($a1)
    # Line 206
    swc1	$f5,4($a1)
.L0db4d1e4:
    # Line 211
    lwc1	$f6,8($a2)
    c.le.s	$f6,$f4
    nop
    bc1f	.L0db4d200
    lwc1	$f5,30812($a0)
    # Line 213
    b	.L0db4d214
    swc1	$f4,8($a1)
.L0db4d200:
    c.le.s	$f5,$f6
    nop
    bc1fl	.L0db4d214
    # Line 218
    swc1	$f6,8($a1)
    # Line 216
    swc1	$f5,8($a1)
.L0db4d214:
    # Line 221
    lwc1	$f5,12($a2)
    c.le.s	$f5,$f4
    nop
    bc1t	.L0db4d248
    lwc1	$f6,30844($a0)
    # Line 223
    c.le.s	$f6,$f5
    nop
    bc1fl	.L0db4d240
    # Line 228
    swc1	$f5,12($a1)
    # Line 231
    jr	$ra
    # Line 226
    swc1	$f6,12($a1)
.L0db4d240:
    # Line 231
    jr	$ra
    nop
.L0db4d248:
    jr	$ra
    # Line 223
    swc1	$f4,12($a1)
.end __glClampRGBColor

# Function: vvec
# Declared: Line 238 (Source lines: 242-302)
# Address: 0x0db4d250 - 0x0db4d338 (Size: 232 bytes, Frame: 0)
.ent vvec
vvec:
    # Line 242
    lw	$at,12($a1)
    lw	$a4,12($a2)
    sll	$at,$at,0x1
    beqz	$at,.L0db4d2cc
    sll	$a4,$a4,0x1
    beqz	$a4,.L0db4d2f8
    lwc1	$f4,0($a2)
    # Line 253
    lwc1	$f2,12($a1)
    # Line 255
    lwc1	$f1,4($a2)
    # Line 257
    mul.s	$f0,$f4,$f2
    # Line 256
    lwc1	$f3,8($a2)
    # Line 258
    mul.s	$f1,$f2,$f1
    # Line 259
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a0)
    # Line 258
    swc1	$f1,4($a0)
    # Line 257
    swc1	$f0,0($a0)
    # Line 262
    lwc1	$f5,4($a1)
    # Line 260
    lwc1	$f7,12($a2)
    # Line 263
    lwc1	$f6,8($a1)
    # Line 265
    mul.s	$f5,$f7,$f5
    # Line 264
    lwc1	$f3,0($a1)
    # Line 266
    mul.s	$f6,$f7,$f6
    # Line 264
    mul.s	$f3,$f3,$f7
    # Line 265
    sub.s	$f1,$f1,$f5
    # Line 266
    sub.s	$f2,$f2,$f6
    # Line 264
    sub.s	$f0,$f0,$f3
    # Line 266
    swc1	$f2,8($a0)
    # Line 265
    swc1	$f1,4($a0)
    # Line 264
    swc1	$f0,0($a0)
    # Line 302
    jr	$ra
    nop
.L0db4d2cc:
    # Line 276
    lwc1	$f4,0($a1)
    lwc1	$f5,8($a1)
    beqz	$a4,.L0db4d310
    lwc1	$f6,4($a1)
    # Line 285
    neg.s	$f2,$f4
    # Line 287
    neg.s	$f0,$f5
    # Line 286
    neg.s	$f3,$f6
    # Line 287
    swc1	$f0,8($a0)
    # Line 286
    swc1	$f3,4($a0)
    # Line 302
    jr	$ra
    # Line 285
    swc1	$f2,0($a0)
.L0db4d2f8:
    # Line 274
    swc1	$f4,0($a0)
    # Line 275
    lwc1	$f2,4($a2)
    swc1	$f2,4($a0)
    # Line 276
    lwc1	$f1,8($a2)
    # Line 302
    jr	$ra
    # Line 276
    swc1	$f1,8($a0)
.L0db4d310:
    # Line 296
    lwc1	$f0,4($a2)
    # Line 297
    lwc1	$f1,8($a2)
    # Line 296
    sub.s	$f0,$f0,$f6
    # Line 298
    lwc1	$f3,0($a2)
    # Line 297
    sub.s	$f1,$f1,$f5
    # Line 298
    sub.s	$f3,$f3,$f4
    # Line 300
    swc1	$f1,8($a0)
    # Line 299
    swc1	$f0,4($a0)
    # Line 302
    jr	$ra
    # Line 298
    swc1	$f3,0($a0)
.end vvec

# Function: __glCalcRGBColor
# Declared: Line 305 (Source lines: 306-496)
# Address: 0x0db4d338 - 0x0db4d964 (Size: 1580 bytes, Frame: 144)
.globl __glCalcRGBColor
.ent __glCalcRGBColor
__glCalcRGBColor:
    # Line 306
    addiu	$sp,$sp,-272
    sdc1	$f22,88($sp)
    sdc1	$f24,80($sp)
    sdc1	$f26,96($sp)
    sd	$s6,144($sp)
    sd	$s0,120($sp)
    move	$s0,$a0
    sdc1	$f30,168($sp)
    sdc1	$f28,160($sp)
    sd	$gp,136($sp)
    lui	$at,0xb
    addiu	$at,$at,4960
    sd	$s4,112($sp)
    move	$s4,$a2
    # Line 323
    addiu	$v0,$s4,160
    # Line 306
    addu	$gp,$t9,$at
    lwc1	$f5,36($a2)
    lwc1	$f4,40($a2)
    lwc1	$f6,32($a2)
    # Line 320
    mov.s	$f28,$f5
    # Line 306
    beqz	$a1,.L0db4d940
    # Line 319
    mov.s	$f2,$f6
    # Line 324
    addiu	$s6,$s0,28196
    sd	$s5,192($sp)
    sd	$s1,184($sp)
    sdc1	$f20,176($sp)
    # Line 327
    neg.s	$f30,$f4
    # Line 326
    neg.s	$f28,$f5
    # Line 325
    neg.s	$f0,$f6
    sd	$v0,128($sp)
    sdc1	$f0,104($sp)
.L0db4d3b4:
    # Line 335
    mtc1	$zero,$f20
    lwc1	$f1,108($s4)
    c.eq.s	$f1,$f20
    li	$v1,1
    bc1fl	.L0db4d3cc
    move	$v1,$zero
.L0db4d3cc:
    # Line 336
    lbu	$s5,1324($s0)
    # Line 334
    lwc1	$f22,8($s6)
    # Line 337
    lw	$s1,28236($s0)
    # Line 333
    lwc1	$f26,4($s6)
    # Line 332
    lwc1	$f24,0($s6)
    # Line 337
    beqz	$s1,.L0db4d824
    sd	$v1,152($sp)
    sd	$s3,208($sp)
    sd	$ra,200($sp)
    sd	$s8,232($sp)
    sll	$s8,$a1,0x2
    subu	$s8,$s8,$a1
    sll	$s8,$s8,0x4
    sd	$s7,224($sp)
    la	$s7,sub_0dbf0000
    sd	$s2,216($sp)
    la	$s2,sub_0db50000
    addiu	$s7,$s7,13216
    b	.L0db4d48c
    addiu	$s2,$s2,-11696
.L0db4d41c:
    # Line 419
    lwc1	$f8,3284($s0)
.L0db4d420:
    # Line 422
    lwc1	$f0,40($a0)
    # Line 421
    lwc1	$f3,36($a0)
    # Line 422
    mul.s	$f0,$f0,$f8
    # Line 420
    lwc1	$f2,32($a0)
    # Line 421
    mul.s	$f3,$f3,$f8
    # Line 420
    mul.s	$f2,$f2,$f8
    # Line 422
    add.s	$f6,$f0,$f6
    # Line 421
    add.s	$f7,$f3,$f7
    # Line 420
    add.s	$f5,$f2,$f5
    # Line 426
    lwc1	$f3,24($a0)
.L0db4d448:
    # Line 425
    lwc1	$f2,20($a0)
    # Line 426
    mul.s	$f3,$f3,$f9
    # Line 424
    lwc1	$f1,16($a0)
    # Line 425
    mul.s	$f2,$f2,$f9
    # Line 424
    mul.s	$f1,$f1,$f9
    # Line 426
    add.s	$f6,$f3,$f6
    # Line 425
    add.s	$f7,$f2,$f7
    # Line 424
    add.s	$f5,$f1,$f5
.L0db4d468:
    # Line 431
    mul.s	$f2,$f4,$f6
    # Line 430
    mul.s	$f1,$f4,$f7
    # Line 429
    mul.s	$f0,$f4,$f5
    # Line 431
    add.s	$f22,$f2,$f22
    # Line 430
    add.s	$f26,$f1,$f26
    # Line 429
    add.s	$f24,$f0,$f24
.L0db4d480:
    # Line 461
    lw	$s1,200($s1)
    beqzl	$s1,.L0db4d814
    ld	$s8,232($sp)
.L0db4d48c:
    # Line 340
    lbu	$at,220($s1)
    ld	$v0,152($sp)
    bnez	$at,.L0db4d4a8
    # Line 346
    addiu	$s3,$s4,96
    # Line 436
    addu	$a0,$s8,$s1
    # Line 340
    beqz	$v0,.L0db4d750
    # Line 441
    ldc1	$f0,104($sp)
.L0db4d4a8:
    # Line 346
    addiu	$a2,$s1,116
    addiu	$a0,$sp,0
    move	$t9,$s2
    bal __glClampRGBColor
    move	$a1,$s3
    # Line 347
    lw	$t9,11976($s0)
    addiu	$a1,$sp,0
    jalr	$t9
    addiu	$a0,$sp,16
    # Line 357
    lwc1	$f0,24($sp)
    # Line 347
    beqz	$s5,.L0db4d530
    # Line 355
    lwc1	$f2,16($sp)
    # Line 349
    addiu	$a0,$sp,32
    move	$a1,$s3
    move	$a2,$s7
    bal __glClampRGBColor
    move	$t9,$s2
    # Line 350
    lw	$t9,11976($s0)
    addiu	$a1,$sp,32
    jalr	$t9
    addiu	$a0,$sp,32
    # Line 353
    lwc1	$f2,40($sp)
    lwc1	$f1,24($sp)
    # Line 352
    lwc1	$f0,20($sp)
    # Line 353
    add.s	$f1,$f1,$f2
    # Line 352
    lwc1	$f2,36($sp)
    # Line 351
    lwc1	$f3,16($sp)
    # Line 352
    add.s	$f0,$f0,$f2
    # Line 351
    lwc1	$f2,32($sp)
    add.s	$f3,$f3,$f2
    # Line 353
    swc1	$f1,56($sp)
    # Line 352
    swc1	$f0,52($sp)
    # Line 353
    b	.L0db4d548
    # Line 351
    swc1	$f3,48($sp)
.L0db4d530:
    # Line 356
    lwc1	$f1,20($sp)
    # Line 355
    swc1	$f2,48($sp)
    # Line 356
    swc1	$f1,52($sp)
    # Line 357
    lwc1	$f3,3284($s0)
    add.s	$f3,$f3,$f0
    swc1	$f3,56($sp)
.L0db4d548:
    # Line 359
    lw	$t9,11976($s0)
    addiu	$a1,$sp,48
    jalr	$t9
    addiu	$a0,$sp,64
    lwc1	$f6,128($s1)
    c.eq.s	$f6,$f20
    nop
    bc1tl	.L0db4d594
    # Line 377
    lwc1	$f5,3284($s0)
    # Line 366
    lwc1	$f7,104($s1)
    # Line 367
    c.eq.s	$f7,$f20
    nop
    bc1f	.L0db4d708
    lwc1	$f4,108($s1)
    c.eq.s	$f4,$f20
    nop
    bc1f	.L0db4d70c
    # Line 374
    lwc1	$f0,4($sp)
    # Line 370
    lwc1	$f5,152($s1)
.L0db4d594:
    # Line 381
    lbu	$v1,156($s1)
    beqz	$v1,.L0db4d640
    mov.s	$f4,$f5
    c.eq.s	$f6,$f20
    nop
    bc1t	.L0db4d640
    # Line 388
    lwc1	$f1,20($sp)
    lwc1	$f0,136($s1)
    lwc1	$f7,16($sp)
    lwc1	$f6,132($s1)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,24($sp)
    mul.s	$f6,$f6,$f7
    lwc1	$f7,140($s1)
    mul.s	$f7,$f7,$f1
    add.s	$f6,$f6,$f0
    add.s	$f6,$f6,$f7
    lwc1	$f7,208($s1)
    neg.s	$f6,$f6
    c.le.s	$f7,$f6
    nop
    bc1fl	.L0db4d640
    # Line 397
    mov.s	$f4,$f20
    # Line 388
    lwc1	$f0,148($s1)
    c.le.s	$f0,$f6
    nop
    bc1fl	.L0db4d640
    # Line 397
    mov.s	$f4,$f20
    # Line 391
    sub.s	$f3,$f6,$f7
    lwc1	$f2,212($s1)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,3280($s0)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$a0,$f1
    nop
    slti	$a3,$a0,256
    beqz	$a3,.L0db4d640
    # Line 394
    sll	$v0,$a0,0x2
    lw	$at,204($s1)
    addu	$at,$at,$v0
    lwc1	$f4,0($at)
    mul.s	$f4,$f4,$f5
.L0db4d640:
    # Line 390
    c.eq.s	$f4,$f20
    # Line 408
    lwc1	$f0,16($sp)
    # Line 406
    addu	$a0,$s8,$s1
    # Line 390
    bc1t	.L0db4d480
    # Line 408
    ldc1	$f1,104($sp)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,20($sp)
    lwc1	$f9,24($sp)
    mul.s	$f1,$f1,$f28
    mul.s	$f9,$f9,$f30
    add.s	$f0,$f0,$f1
    add.s	$f9,$f9,$f0
    c.lt.s	$f20,$f9
    lwc1	$f6,8($a0)
    # Line 407
    lwc1	$f7,4($a0)
    # Line 408
    bc1f	.L0db4d468
    # Line 406
    lwc1	$f5,0($a0)
    # Line 413
    lwc1	$f2,68($sp)
    ldc1	$f0,104($sp)
    lwc1	$f8,64($sp)
    mul.s	$f2,$f2,$f28
    mul.s	$f8,$f8,$f0
    lwc1	$f0,72($sp)
    mul.s	$f0,$f0,$f30
    lwc1	$f1,16($s6)
    add.s	$f8,$f8,$f2
    c.eq.s	$f1,$f20
    add.s	$f8,$f8,$f0
    lwc1	$f0,24($s6)
    bc1f	.L0db4d6c0
    sub.s	$f8,$f8,$f0
    # Line 414
    lwc1	$f8,3284($s0)
.L0db4d6c0:
    c.le.s	$f20,$f8
    nop
    bc1fl	.L0db4d448
    # Line 426
    lwc1	$f3,24($a0)
    # Line 416
    lwc1	$f2,28($s6)
    mul.s	$f2,$f2,$f8
    lwc1	$f1,3280($s0)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    nop
    slti	$v1,$a1,256
    beqz	$v1,.L0db4d41c
    # Line 418
    sll	$at,$a1,0x2
    lw	$a3,20($s6)
    addu	$a3,$a3,$at
    b	.L0db4d420
    lwc1	$f8,0($a3)
.L0db4d708:
    # Line 374
    lwc1	$f0,4($sp)
.L0db4d70c:
    lwc1	$f5,0($sp)
    mul.s	$f0,$f0,$f0
    lwc1	$f3,8($sp)
    mul.s	$f5,$f5,$f5
    mul.s	$f3,$f3,$f3
    add.s	$f5,$f5,$f0
    add.s	$f3,$f3,$f5
    sqrt.s	$f3,$f3
    mul.s	$f1,$f3,$f4
    mul.s	$f2,$f3,$f7
    mul.s	$f1,$f1,$f3
    lwc1	$f0,100($s1)
    add.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    lwc1	$f5,3284($s0)
    b	.L0db4d594
    div.s	$f5,$f5,$f0
.L0db4d750:
    # Line 441
    lwc1	$f2,180($s1)
    lwc1	$f5,176($s1)
    mul.s	$f2,$f2,$f28
    mul.s	$f5,$f5,$f0
    lwc1	$f0,184($s1)
    mul.s	$f0,$f0,$f30
    # Line 438
    lwc1	$f1,8($a0)
    # Line 441
    add.s	$f5,$f5,$f2
    # Line 438
    add.s	$f22,$f1,$f22
    # Line 437
    lwc1	$f1,4($a0)
    # Line 441
    add.s	$f5,$f5,$f0
    # Line 437
    add.s	$f26,$f1,$f26
    # Line 441
    c.lt.s	$f20,$f5
    # Line 436
    lwc1	$f0,0($a0)
    # Line 441
    bc1f	.L0db4d480
    # Line 436
    add.s	$f24,$f0,$f24
    # Line 445
    lwc1	$f2,164($s1)
    ldc1	$f0,104($sp)
    lwc1	$f4,160($s1)
    mul.s	$f2,$f2,$f28
    mul.s	$f4,$f4,$f0
    lwc1	$f0,168($s1)
    mul.s	$f0,$f0,$f30
    lwc1	$f1,16($s6)
    add.s	$f4,$f4,$f2
    c.eq.s	$f1,$f20
    add.s	$f4,$f4,$f0
    lwc1	$f0,24($s6)
    bc1f	.L0db4d7cc
    sub.s	$f4,$f4,$f0
    # Line 446
    lwc1	$f4,3284($s0)
.L0db4d7cc:
    c.le.s	$f20,$f4
    nop
    bc1fl	.L0db4d8e4
    # Line 458
    lwc1	$f1,24($a0)
    # Line 448
    lwc1	$f2,28($s6)
    mul.s	$f2,$f2,$f4
    lwc1	$f1,3280($s0)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    nop
    slti	$v0,$a1,256
    beqz	$v0,.L0db4d8b8
    # Line 450
    sll	$a3,$a1,0x2
    lw	$v1,20($s6)
    addu	$v1,$v1,$a3
    b	.L0db4d8bc
    lwc1	$f4,0($v1)
.L0db4d814:
    ld	$s7,224($sp)
    ld	$ra,200($sp)
    ld	$s3,208($sp)
    ld	$s2,216($sp)
.L0db4d824:
    ldc1	$f30,168($sp)
    ldc1	$f28,160($sp)
    ld	$s5,192($sp)
    ld	$s1,184($sp)
    # Line 469
    lwc1	$f4,30812($s0)
    c.le.s	$f24,$f20
    # Line 468
    lwc1	$f6,30808($s0)
    # Line 467
    lwc1	$f5,30804($s0)
    # Line 469
    bc1f	.L0db4d908
    ld	$s4,112($sp)
    ld	$s0,120($sp)
    # Line 471
    mov.s	$f24,$f20
.L0db4d854:
    # Line 474
    c.le.s	$f26,$f20
.L0db4d858:
    ld	$at,128($sp)
    bc1fl	.L0db4d920
    # Line 478
    c.le.s	$f6,$f26
    mov.s	$f26,$f20
.L0db4d868:
    # Line 481
    c.le.s	$f22,$f20
.L0db4d86c:
    nop
    bc1t	.L0db4d934
    ld	$gp,136($sp)
    # Line 485
    c.le.s	$f4,$f22
    nop
    bc1f	.L0db4d88c
    ldc1	$f20,176($sp)
    # Line 488
    mov.s	$f22,$f4
.L0db4d88c:
    # Line 493
    swc1	$f22,8($at)
    # Line 496
    ldc1	$f22,88($sp)
    # Line 491
    swc1	$f24,0($at)
    # Line 496
    ldc1	$f24,80($sp)
    # Line 492
    swc1	$f26,4($at)
    # Line 496
    ldc1	$f26,96($sp)
    # Line 494
    lwc1	$f3,36($s6)
    # Line 496
    ld	$s6,144($sp)
    addiu	$sp,$sp,272
    jr	$ra
    # Line 494
    swc1	$f3,12($at)
.L0db4d8b8:
    # Line 451
    lwc1	$f4,3284($s0)
.L0db4d8bc:
    # Line 454
    lwc1	$f2,40($a0)
    # Line 453
    lwc1	$f1,36($a0)
    # Line 454
    mul.s	$f2,$f2,$f4
    # Line 452
    lwc1	$f0,32($a0)
    # Line 453
    mul.s	$f1,$f1,$f4
    # Line 452
    mul.s	$f0,$f0,$f4
    # Line 454
    add.s	$f22,$f2,$f22
    # Line 453
    add.s	$f26,$f1,$f26
    # Line 452
    add.s	$f24,$f0,$f24
    # Line 458
    lwc1	$f1,24($a0)
.L0db4d8e4:
    # Line 457
    lwc1	$f0,20($a0)
    # Line 458
    mul.s	$f1,$f1,$f5
    # Line 456
    lwc1	$f3,16($a0)
    # Line 457
    mul.s	$f0,$f0,$f5
    # Line 456
    mul.s	$f3,$f3,$f5
    # Line 458
    add.s	$f22,$f1,$f22
    # Line 457
    add.s	$f26,$f0,$f26
    b	.L0db4d480
    # Line 456
    add.s	$f24,$f3,$f24
.L0db4d908:
    # Line 471
    c.le.s	$f5,$f24
    ld	$s0,120($sp)
    bc1fl	.L0db4d858
    # Line 474
    c.le.s	$f26,$f20
    b	.L0db4d854
    mov.s	$f24,$f5
.L0db4d920:
    nop
    # Line 478
    bc1fl	.L0db4d86c
    # Line 481
    c.le.s	$f22,$f20
    b	.L0db4d868
    mov.s	$f26,$f6
.L0db4d934:
    # Line 485
    mov.s	$f22,$f20
    b	.L0db4d88c
    ldc1	$f20,176($sp)
.L0db4d940:
    # Line 321
    mov.s	$f30,$f4
    # Line 318
    addiu	$s6,$s0,28156
    sd	$s5,192($sp)
    sd	$s1,184($sp)
    sdc1	$f20,176($sp)
    sdc1	$f6,104($sp)
    # Line 317
    addiu	$v0,$s4,144
    # Line 321
    b	.L0db4d3b4
    sd	$v0,128($sp)
.end __glCalcRGBColor

# Function: __glFastCalcRGBColor
# Declared: Line 500 (Source lines: 501-595)
# Address: 0x0db4d964 - 0x0db4db98 (Size: 564 bytes, Frame: 0)
.globl __glFastCalcRGBColor
.ent __glFastCalcRGBColor
__glFastCalcRGBColor:
    # Line 520
    addiu	$t0,$a2,160
    # Line 501
    lui	$v0,0xb
    addiu	$v0,$v0,3380
    addu	$at,$t9,$v0
    lwc1	$f6,36($a2)
    lwc1	$f5,40($a2)
    lwc1	$f4,32($a2)
    # Line 517
    mov.s	$f10,$f6
    # Line 501
    beqz	$a1,.L0db4db88
    # Line 516
    mov.s	$f11,$f4
    # Line 521
    addiu	$a5,$a0,28196
    # Line 524
    neg.s	$f9,$f5
    # Line 523
    neg.s	$f10,$f6
    # Line 522
    neg.s	$f11,$f4
.L0db4d99c:
    # Line 530
    lwc1	$f4,8($a5)
    # Line 529
    lwc1	$f5,4($a5)
    # Line 531
    lw	$a2,28236($a0)
    sll	$a6,$a1,0x2
    beqz	$a2,.L0db4db7c
    # Line 528
    lwc1	$f6,0($a5)
    # Line 531
    subu	$a6,$a6,$a1
    mtc1	$zero,$f7
    b	.L0db4da1c
    sll	$a6,$a6,0x4
.L0db4d9c4:
    # Line 551
    lwc1	$f8,3284($a0)
.L0db4d9c8:
    # Line 554
    lwc1	$f2,40($a1)
    # Line 553
    lwc1	$f1,36($a1)
    # Line 554
    mul.s	$f2,$f2,$f8
    # Line 552
    lwc1	$f0,32($a1)
    # Line 553
    mul.s	$f1,$f1,$f8
    # Line 552
    mul.s	$f0,$f0,$f8
    # Line 554
    add.s	$f4,$f2,$f4
    # Line 553
    add.s	$f5,$f1,$f5
    # Line 552
    add.s	$f6,$f0,$f6
    # Line 558
    lwc1	$f1,24($a1)
.L0db4d9f0:
    # Line 557
    lwc1	$f0,20($a1)
    # Line 558
    mul.s	$f1,$f1,$f12
    # Line 556
    lwc1	$f3,16($a1)
    # Line 557
    mul.s	$f0,$f0,$f12
    # Line 556
    mul.s	$f3,$f3,$f12
    # Line 558
    add.s	$f4,$f1,$f4
    # Line 557
    add.s	$f5,$f0,$f5
    # Line 556
    add.s	$f6,$f3,$f6
.L0db4da10:
    # Line 560
    lw	$a2,200($a2)
    beqz	$a2,.L0db4dae0
    nop
.L0db4da1c:
    # Line 541
    lwc1	$f2,180($a2)
    lwc1	$f12,176($a2)
    mul.s	$f2,$f2,$f10
    mul.s	$f12,$f12,$f11
    lwc1	$f0,184($a2)
    # Line 536
    addu	$a1,$a6,$a2
    # Line 541
    mul.s	$f0,$f0,$f9
    # Line 538
    lwc1	$f1,8($a1)
    # Line 541
    add.s	$f12,$f12,$f2
    # Line 538
    add.s	$f4,$f1,$f4
    # Line 537
    lwc1	$f3,4($a1)
    # Line 541
    add.s	$f12,$f12,$f0
    # Line 537
    add.s	$f5,$f3,$f5
    # Line 541
    c.lt.s	$f7,$f12
    # Line 536
    lwc1	$f2,0($a1)
    # Line 541
    bc1f	.L0db4da10
    # Line 536
    add.s	$f6,$f2,$f6
    # Line 545
    lwc1	$f2,164($a2)
    lwc1	$f8,160($a2)
    mul.s	$f2,$f2,$f10
    mul.s	$f8,$f8,$f11
    lwc1	$f0,168($a2)
    mul.s	$f0,$f0,$f9
    lwc1	$f1,16($a5)
    add.s	$f8,$f8,$f2
    c.eq.s	$f1,$f7
    add.s	$f8,$f8,$f0
    lwc1	$f0,24($a5)
    bc1f	.L0db4da98
    sub.s	$f8,$f8,$f0
    # Line 546
    lwc1	$f8,3284($a0)
.L0db4da98:
    c.le.s	$f7,$f8
    nop
    bc1fl	.L0db4d9f0
    # Line 558
    lwc1	$f1,24($a1)
    # Line 548
    lwc1	$f1,28($a5)
    mul.s	$f1,$f1,$f8
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a7,$f0
    nop
    slti	$v0,$a7,256
    beqz	$v0,.L0db4d9c4
    # Line 550
    sll	$a3,$a7,0x2
    lw	$v1,20($a5)
    addu	$v1,$v1,$a3
    b	.L0db4d9c8
    lwc1	$f8,0($v1)
.L0db4dae0:
    # Line 568
    c.le.s	$f6,$f7
    lwc1	$f8,30812($a0)
    # Line 567
    lwc1	$f9,30808($a0)
    # Line 568
    bc1f	.L0db4db48
    # Line 566
    lwc1	$f10,30804($a0)
    # Line 570
    mov.s	$f6,$f7
.L0db4daf8:
    # Line 573
    c.le.s	$f5,$f7
.L0db4dafc:
    nop
    bc1fl	.L0db4db60
    # Line 577
    c.le.s	$f9,$f5
    mov.s	$f5,$f7
.L0db4db0c:
    # Line 580
    c.le.s	$f4,$f7
.L0db4db10:
    nop
    bc1t	.L0db4db74
    nop
    # Line 584
    c.le.s	$f8,$f4
    nop
    bc1fl	.L0db4db34
    # Line 592
    swc1	$f4,8($t0)
    # Line 587
    mov.s	$f4,$f8
.L0db4db30:
    # Line 592
    swc1	$f4,8($t0)
.L0db4db34:
    # Line 591
    swc1	$f5,4($t0)
    # Line 590
    swc1	$f6,0($t0)
    # Line 593
    lwc1	$f2,36($a5)
    # Line 595
    jr	$ra
    # Line 593
    swc1	$f2,12($t0)
.L0db4db48:
    # Line 570
    c.le.s	$f10,$f6
    nop
    bc1fl	.L0db4dafc
    # Line 573
    c.le.s	$f5,$f7
    b	.L0db4daf8
    mov.s	$f6,$f10
.L0db4db60:
    nop
    # Line 577
    bc1fl	.L0db4db10
    # Line 580
    c.le.s	$f4,$f7
    b	.L0db4db0c
    mov.s	$f5,$f9
.L0db4db74:
    # Line 584
    b	.L0db4db30
    mov.s	$f4,$f7
.L0db4db7c:
    # Line 560
    mtc1	$zero,$f7
    b	.L0db4dae0
    nop
.L0db4db88:
    # Line 518
    mov.s	$f9,$f5
    # Line 515
    addiu	$a5,$a0,28156
    # Line 518
    b	.L0db4d99c
    # Line 514
    addiu	$t0,$a2,144
.end __glFastCalcRGBColor

# Function: __glFogRGBColor
# Declared: Line 598 (Source lines: 604-612)
# Address: 0x0db4db98 - 0x0db4dbf8 (Size: 96 bytes, Frame: 0)
.globl __glFogRGBColor
.ent __glFogRGBColor
__glFogRGBColor:
    # Line 609
    sll	$at,$a1,0x4
    addu	$at,$at,$a2
    # Line 604
    lwc1	$f1,176($a2)
    # Line 605
    lwc1	$f2,3284($a0)
    # Line 609
    lwc1	$f4,144($at)
    lwc1	$f0,1496($a0)
    # Line 605
    sub.s	$f2,$f2,$f1
    # Line 609
    mul.s	$f4,$f4,$f1
    mul.s	$f0,$f0,$f2
    add.s	$f4,$f4,$f0
    # Line 610
    lwc1	$f3,148($at)
    # Line 609
    swc1	$f4,144($at)
    # Line 610
    mul.s	$f3,$f3,$f1
    lwc1	$f4,1500($a0)
    mul.s	$f4,$f4,$f2
    add.s	$f3,$f3,$f4
    # Line 611
    lwc1	$f0,152($at)
    # Line 610
    swc1	$f3,148($at)
    # Line 611
    mul.s	$f0,$f0,$f1
    lwc1	$f1,1504($a0)
    mul.s	$f1,$f1,$f2
    add.s	$f0,$f0,$f1
    # Line 612
    jr	$ra
    # Line 611
    swc1	$f0,152($at)
.end __glFogRGBColor

# Function: __glFogLitRGBColor
# Declared: Line 614 (Source lines: 615-631)
# Address: 0x0db4dbf8 - 0x0db4dca0 (Size: 168 bytes, Frame: 208)
.globl __glFogLitRGBColor
.ent __glFogLitRGBColor
__glFogLitRGBColor:
    # Line 615
    addiu	$sp,$sp,-80
    sd	$a2,24($sp)
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    lui	$at,0xb
    addiu	$at,$at,2720
    addu	$gp,$t9,$at
    # Line 620
    lw	$t9,12080($a0)
    # Line 615
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 620
    jalr	$t9
    sd	$a1,32($sp)
    # Line 628
    ld	$v0,32($sp)
    ld	$v1,24($sp)
    # Line 624
    lwc1	$f2,3284($s8)
    # Line 628
    sll	$v0,$v0,0x4
    addu	$v0,$v0,$v1
    # Line 623
    lwc1	$f1,176($v1)
    # Line 628
    lwc1	$f4,144($v0)
    lwc1	$f0,1496($s8)
    # Line 624
    sub.s	$f2,$f2,$f1
    # Line 628
    mul.s	$f4,$f4,$f1
    mul.s	$f0,$f0,$f2
    add.s	$f4,$f4,$f0
    # Line 629
    lwc1	$f3,148($v0)
    # Line 628
    swc1	$f4,144($v0)
    # Line 629
    mul.s	$f3,$f3,$f1
    lwc1	$f4,1500($s8)
    mul.s	$f4,$f4,$f2
    add.s	$f3,$f3,$f4
    # Line 630
    lwc1	$f0,152($v0)
    # Line 629
    swc1	$f3,148($v0)
    # Line 630
    mul.s	$f0,$f0,$f1
    lwc1	$f1,1504($s8)
    mul.s	$f1,$f1,$f2
    ld	$gp,16($sp)
    # Line 631
    ld	$ra,0($sp)
    # Line 630
    add.s	$f0,$f0,$f1
    # Line 631
    ld	$s8,8($sp)
    addiu	$sp,$sp,80
    jr	$ra
    # Line 630
    swc1	$f0,152($v0)
.end __glFogLitRGBColor

# Function: __glCalcCIColor
# Declared: Line 633 (Source lines: 634-777)
# Address: 0x0db4dca0 - 0x0db4e1d4 (Size: 1332 bytes, Frame: 144)
.globl __glCalcCIColor
.ent __glCalcCIColor
__glCalcCIColor:
    # Line 634
    lwc1	$f5,40($a2)
    addiu	$sp,$sp,-272
    sd	$s7,184($sp)
    sdc1	$f22,136($sp)
    sdc1	$f26,128($sp)
    sdc1	$f24,144($sp)
    sd	$gp,112($sp)
    lui	$at,0xb
    sd	$s1,88($sp)
    move	$s1,$a0
    addiu	$at,$at,2552
    sd	$s4,80($sp)
    move	$s4,$a2
    # Line 652
    addiu	$v0,$s4,160
    # Line 634
    addu	$gp,$t9,$at
    lwc1	$f6,36($a2)
    # Line 646
    addiu	$v1,$s1,1328
    # Line 634
    lwc1	$f4,32($a2)
    # Line 649
    mov.s	$f24,$f6
    # Line 634
    beqz	$a1,.L0db4e1a4
    # Line 648
    mov.s	$f26,$f4
    # Line 653
    addiu	$v1,$s1,1408
    # Line 654
    addiu	$s7,$s1,28196
    sd	$s8,192($sp)
    sd	$s5,176($sp)
    sd	$s0,168($sp)
    sdc1	$f30,160($sp)
    sdc1	$f28,152($sp)
    sdc1	$f20,120($sp)
    # Line 657
    neg.s	$f22,$f5
    # Line 656
    neg.s	$f24,$f6
    # Line 655
    neg.s	$f26,$f4
    sd	$v0,96($sp)
    sd	$v1,104($sp)
.L0db4dd28:
    # Line 661
    mtc1	$zero,$f20
    # Line 664
    lwc1	$f0,108($s4)
    c.eq.s	$f0,$f20
    li	$s8,1
    bc1fl	.L0db4dd40
    move	$s8,$zero
.L0db4dd40:
    # Line 663
    lw	$s0,28236($s1)
    # Line 665
    lbu	$s5,1324($s1)
    # Line 662
    mov.s	$f28,$f20
    # Line 665
    beqz	$s0,.L0db4e0e8
    # Line 661
    mov.s	$f30,$f20
    sd	$s3,208($sp)
    sd	$ra,200($sp)
    sd	$s2,216($sp)
    # Line 665
    la	$s2,sub_0db50000
    sd	$s6,224($sp)
    la	$s6,sub_0dbf0000
    addiu	$s2,$s2,-11696
    b	.L0db4dda8
    addiu	$s6,$s6,13232
.L0db4dd78:
    # Line 738
    lwc1	$f6,3284($s1)
.L0db4dd7c:
    # Line 739
    mul.s	$f2,$f4,$f6
    lwc1	$f1,192($s0)
    mul.s	$f1,$f1,$f2
    add.s	$f30,$f1,$f30
    # Line 741
    mul.s	$f0,$f5,$f4
.L0db4dd90:
    lwc1	$f3,196($s0)
    mul.s	$f3,$f3,$f0
    add.s	$f28,$f3,$f28
.L0db4dd9c:
    # Line 764
    lw	$s0,200($s0)
.L0db4dda0:
    beqz	$s0,.L0db4e0dc
    ld	$ra,200($sp)
.L0db4dda8:
    # Line 667
    lbu	$at,220($s0)
    bnez	$at,.L0db4ddb8
    # Line 673
    addiu	$s3,$s4,96
    # Line 667
    beqz	$s8,.L0db4e02c
.L0db4ddb8:
    # Line 673
    addiu	$a2,$s0,116
    addiu	$a0,$sp,0
    move	$t9,$s2
    bal __glClampRGBColor
    move	$a1,$s3
    # Line 674
    lw	$t9,11976($s1)
    addiu	$a1,$sp,0
    jalr	$t9
    addiu	$a0,$sp,16
    # Line 684
    lwc1	$f2,24($sp)
    # Line 674
    beqz	$s5,.L0db4de40
    # Line 682
    lwc1	$f0,16($sp)
    # Line 676
    addiu	$a0,$sp,32
    move	$a1,$s3
    move	$a2,$s6
    bal __glClampRGBColor
    move	$t9,$s2
    # Line 677
    lw	$t9,11976($s1)
    addiu	$a1,$sp,32
    jalr	$t9
    addiu	$a0,$sp,32
    # Line 680
    lwc1	$f0,40($sp)
    lwc1	$f3,24($sp)
    # Line 679
    lwc1	$f2,20($sp)
    # Line 680
    add.s	$f3,$f3,$f0
    # Line 679
    lwc1	$f0,36($sp)
    # Line 678
    lwc1	$f1,16($sp)
    # Line 679
    add.s	$f2,$f2,$f0
    # Line 678
    lwc1	$f0,32($sp)
    add.s	$f1,$f1,$f0
    # Line 680
    swc1	$f3,56($sp)
    # Line 679
    swc1	$f2,52($sp)
    # Line 680
    b	.L0db4de58
    # Line 678
    swc1	$f1,48($sp)
.L0db4de40:
    # Line 683
    lwc1	$f3,20($sp)
    # Line 682
    swc1	$f0,48($sp)
    # Line 683
    swc1	$f3,52($sp)
    # Line 684
    lwc1	$f1,3284($s1)
    add.s	$f1,$f1,$f2
    swc1	$f1,56($sp)
.L0db4de58:
    # Line 686
    lw	$t9,11976($s1)
    addiu	$a1,$sp,48
    jalr	$t9
    addiu	$a0,$sp,64
    lwc1	$f1,128($s0)
    c.eq.s	$f1,$f20
    nop
    bc1tl	.L0db4dea4
    # Line 704
    lwc1	$f5,3284($s1)
    # Line 693
    lwc1	$f6,104($s0)
    # Line 694
    c.eq.s	$f6,$f20
    nop
    bc1f	.L0db4dfe4
    lwc1	$f4,108($s0)
    c.eq.s	$f4,$f20
    nop
    bc1f	.L0db4dfe8
    # Line 701
    lwc1	$f0,4($sp)
    # Line 697
    lwc1	$f5,152($s0)
.L0db4dea4:
    # Line 708
    lbu	$v0,156($s0)
    beqz	$v0,.L0db4df44
    mov.s	$f4,$f5
    # Line 715
    lwc1	$f1,20($sp)
    lwc1	$f0,136($s0)
    lwc1	$f7,16($sp)
    lwc1	$f6,132($s0)
    mul.s	$f0,$f0,$f1
    lwc1	$f1,24($sp)
    mul.s	$f6,$f6,$f7
    lwc1	$f7,140($s0)
    mul.s	$f7,$f7,$f1
    add.s	$f6,$f6,$f0
    add.s	$f6,$f6,$f7
    lwc1	$f7,208($s0)
    neg.s	$f6,$f6
    c.le.s	$f7,$f6
    nop
    bc1fl	.L0db4df44
    # Line 724
    mov.s	$f4,$f20
    # Line 715
    lwc1	$f0,148($s0)
    c.le.s	$f0,$f6
    nop
    bc1fl	.L0db4df44
    # Line 724
    mov.s	$f4,$f20
    # Line 718
    sub.s	$f3,$f6,$f7
    lwc1	$f2,212($s0)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,3280($s1)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$a0,$f1
    nop
    slti	$v1,$a0,256
    beqz	$v1,.L0db4df44
    # Line 721
    sll	$at,$a0,0x2
    lw	$a3,204($s0)
    addu	$a3,$a3,$at
    lwc1	$f4,0($a3)
    mul.s	$f4,$f4,$f5
.L0db4df44:
    # Line 724
    c.eq.s	$f4,$f20
    lwc1	$f0,16($sp)
    bc1t	.L0db4dd9c
    lwc1	$f1,20($sp)
    mul.s	$f1,$f1,$f24
    lwc1	$f5,24($sp)
    mul.s	$f0,$f0,$f26
    mul.s	$f5,$f5,$f22
    add.s	$f0,$f0,$f1
    add.s	$f5,$f5,$f0
    c.lt.s	$f20,$f5
    # Line 733
    lwc1	$f6,64($sp)
    # Line 724
    bc1f	.L0db4dd9c
    # Line 733
    lwc1	$f1,68($sp)
    mul.s	$f1,$f1,$f24
    lwc1	$f0,72($sp)
    mul.s	$f6,$f6,$f26
    mul.s	$f0,$f0,$f22
    add.s	$f6,$f6,$f1
    add.s	$f6,$f6,$f0
    lwc1	$f0,24($s7)
    sub.s	$f6,$f6,$f0
    c.le.s	$f20,$f6
    nop
    bc1fl	.L0db4dd90
    # Line 741
    mul.s	$f0,$f5,$f4
    # Line 735
    lwc1	$f1,28($s7)
    mul.s	$f1,$f1,$f6
    lwc1	$f0,3280($s1)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a0,$f0
    nop
    slti	$v0,$a0,256
    beqz	$v0,.L0db4dd78
    # Line 737
    sll	$a3,$a0,0x2
    lw	$v1,20($s7)
    addu	$v1,$v1,$a3
    b	.L0db4dd7c
    lwc1	$f6,0($v1)
.L0db4dfe4:
    # Line 701
    lwc1	$f0,4($sp)
.L0db4dfe8:
    lwc1	$f5,0($sp)
    mul.s	$f0,$f0,$f0
    lwc1	$f3,8($sp)
    mul.s	$f5,$f5,$f5
    mul.s	$f3,$f3,$f3
    add.s	$f5,$f5,$f0
    add.s	$f3,$f3,$f5
    sqrt.s	$f3,$f3
    mul.s	$f1,$f3,$f4
    mul.s	$f2,$f3,$f6
    mul.s	$f1,$f1,$f3
    lwc1	$f0,100($s0)
    add.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    lwc1	$f5,3284($s1)
    b	.L0db4dea4
    div.s	$f5,$f5,$f0
.L0db4e02c:
    # Line 748
    lwc1	$f1,180($s0)
    lwc1	$f5,176($s0)
    mul.s	$f1,$f1,$f24
    lwc1	$f0,184($s0)
    mul.s	$f5,$f5,$f26
    mul.s	$f0,$f0,$f22
    add.s	$f5,$f5,$f1
    add.s	$f5,$f5,$f0
    c.lt.s	$f20,$f5
    nop
    bc1fl	.L0db4dda0
    # Line 764
    lw	$s0,200($s0)
    # Line 752
    lwc1	$f2,164($s0)
    lwc1	$f4,160($s0)
    mul.s	$f2,$f2,$f24
    mul.s	$f4,$f4,$f26
    lwc1	$f0,168($s0)
    mul.s	$f0,$f0,$f22
    lwc1	$f1,16($s7)
    add.s	$f4,$f4,$f2
    c.eq.s	$f1,$f20
    add.s	$f4,$f4,$f0
    lwc1	$f0,24($s7)
    bc1f	.L0db4e094
    sub.s	$f4,$f4,$f0
    # Line 753
    lwc1	$f4,3284($s1)
.L0db4e094:
    c.le.s	$f20,$f4
    nop
    bc1fl	.L0db4e198
    # Line 761
    lwc1	$f3,196($s0)
    # Line 755
    lwc1	$f1,28($s7)
    mul.s	$f1,$f1,$f4
    lwc1	$f0,3280($s1)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a0,$f0
    nop
    slti	$at,$a0,256
    beqz	$at,.L0db4e184
    # Line 757
    sll	$v1,$a0,0x2
    lw	$v0,20($s7)
    addu	$v0,$v0,$v1
    b	.L0db4e188
    lwc1	$f4,0($v0)
.L0db4e0dc:
    ld	$s6,224($sp)
    ld	$s3,208($sp)
    ld	$s2,216($sp)
.L0db4e0e8:
    # Line 764
    lwc1	$f5,3284($s1)
    ld	$s1,88($sp)
    ldc1	$f24,144($sp)
    ldc1	$f22,136($sp)
    ldc1	$f26,128($sp)
    ldc1	$f20,120($sp)
    ld	$s8,192($sp)
    ld	$s7,184($sp)
    ld	$s5,176($sp)
    c.lt.s	$f5,$f30
    ld	$s0,168($sp)
    ld	$at,96($sp)
    bc1f	.L0db4e128
    ld	$s4,80($sp)
    # Line 769
    mov.s	$f30,$f5
    ld	$s1,88($sp)
.L0db4e128:
    # Line 771
    sub.s	$f1,$f5,$f30
    ld	$a3,104($sp)
    mul.s	$f1,$f1,$f28
    lwc1	$f0,68($a3)
    lwc1	$f4,76($a3)
    lwc1	$f6,72($a3)
    sub.s	$f4,$f4,$f0
    sub.s	$f28,$f6,$f0
    mul.s	$f4,$f4,$f1
    mul.s	$f28,$f28,$f30
    add.s	$f4,$f4,$f0
    add.s	$f4,$f4,$f28
    c.lt.s	$f6,$f4
    ldc1	$f30,160($sp)
    bc1f	.L0db4e174
    ldc1	$f28,152($sp)
    # Line 774
    mov.s	$f4,$f6
    ldc1	$f30,160($sp)
    ldc1	$f28,152($sp)
.L0db4e174:
    ld	$gp,112($sp)
    # Line 777
    addiu	$sp,$sp,272
    jr	$ra
    # Line 776
    swc1	$f4,0($at)
.L0db4e184:
    # Line 758
    lwc1	$f4,3284($s1)
.L0db4e188:
    # Line 759
    lwc1	$f2,192($s0)
    mul.s	$f2,$f2,$f4
    add.s	$f30,$f2,$f30
    # Line 761
    lwc1	$f3,196($s0)
.L0db4e198:
    mul.s	$f3,$f3,$f5
    b	.L0db4dd9c
    add.s	$f28,$f3,$f28
.L0db4e1a4:
    # Line 650
    mov.s	$f22,$f5
    # Line 647
    addiu	$s7,$s1,28156
    sd	$s8,192($sp)
    sd	$s5,176($sp)
    sd	$s0,168($sp)
    sdc1	$f30,160($sp)
    sdc1	$f28,152($sp)
    sdc1	$f20,120($sp)
    sd	$v1,104($sp)
    # Line 645
    addiu	$v0,$s4,144
    # Line 650
    b	.L0db4dd28
    sd	$v0,96($sp)
.end __glCalcCIColor

# Function: __glFastCalcCIColor
# Declared: Line 782 (Source lines: 783-849)
# Address: 0x0db4e1d4 - 0x0db4e3b4 (Size: 480 bytes, Frame: 48)
.globl __glFastCalcCIColor
.ent __glFastCalcCIColor
__glFastCalcCIColor:
    # Line 783
    lwc1	$f0,108($a2)
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$at,0xb
    addiu	$at,$at,1220
    addu	$gp,$t9,$at
    mtc1	$zero,$f4
    c.eq.s	$f0,$f4
    # Line 807
    addiu	$a5,$a0,1408
    # Line 783
    bc1t	.L0db4e394
    # Line 808
    addiu	$a4,$a0,28196
    # Line 794
    lwc1	$f10,36($a2)
    lwc1	$f9,40($a2)
    lwc1	$f5,32($a2)
    beqz	$a1,.L0db4e37c
    # Line 804
    mov.s	$f7,$f9
    # Line 806
    addiu	$a6,$a2,160
    # Line 811
    neg.s	$f7,$f9
    # Line 810
    neg.s	$f8,$f10
    # Line 809
    neg.s	$f6,$f5
.L0db4e224:
    # Line 816
    lw	$a1,28236($a0)
    # Line 814
    mov.s	$f11,$f4
    # Line 816
    beqz	$a1,.L0db4e374
    # Line 815
    mov.s	$f10,$f4
    b	.L0db4e260
    # Line 816
    lwc1	$f12,3284($a0)
.L0db4e23c:
    # Line 832
    lwc1	$f1,192($a1)
    mul.s	$f1,$f1,$f5
    add.s	$f11,$f1,$f11
    # Line 834
    lwc1	$f2,196($a1)
.L0db4e24c:
    mul.s	$f2,$f2,$f9
    add.s	$f10,$f2,$f10
    # Line 836
    lw	$a1,200($a1)
.L0db4e258:
    beqz	$a1,.L0db4e314
    nop
.L0db4e260:
    # Line 821
    lwc1	$f1,180($a1)
    lwc1	$f9,176($a1)
    mul.s	$f1,$f1,$f8
    lwc1	$f0,184($a1)
    mul.s	$f9,$f9,$f6
    mul.s	$f0,$f0,$f7
    add.s	$f9,$f9,$f1
    add.s	$f9,$f9,$f0
    c.lt.s	$f4,$f9
    nop
    bc1fl	.L0db4e258
    # Line 836
    lw	$a1,200($a1)
    # Line 825
    lwc1	$f2,164($a1)
    lwc1	$f5,160($a1)
    mul.s	$f2,$f2,$f8
    mul.s	$f5,$f5,$f6
    lwc1	$f0,168($a1)
    mul.s	$f0,$f0,$f7
    lwc1	$f1,16($a4)
    add.s	$f5,$f5,$f2
    c.eq.s	$f1,$f4
    add.s	$f5,$f5,$f0
    lwc1	$f0,24($a4)
    bc1f	.L0db4e2c8
    sub.s	$f5,$f5,$f0
    # Line 826
    mov.s	$f5,$f12
.L0db4e2c8:
    c.le.s	$f4,$f5
    nop
    bc1fl	.L0db4e24c
    # Line 834
    lwc1	$f2,196($a1)
    # Line 828
    lwc1	$f1,28($a4)
    mul.s	$f1,$f1,$f5
    lwc1	$f0,3280($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a2,$f0
    nop
    slti	$v0,$a2,256
    beqz	$v0,.L0db4e23c
    # Line 831
    mov.s	$f5,$f12
    # Line 830
    sll	$a3,$a2,0x2
    lw	$v1,20($a4)
    addu	$v1,$v1,$a3
    b	.L0db4e23c
    lwc1	$f5,0($v1)
.L0db4e314:
    # Line 836
    c.lt.s	$f12,$f11
    ld	$gp,0($sp)
    bc1fl	.L0db4e32c
    # Line 843
    sub.s	$f2,$f12,$f11
    # Line 841
    mov.s	$f11,$f12
    # Line 843
    sub.s	$f2,$f12,$f11
.L0db4e32c:
    mul.s	$f2,$f2,$f10
    lwc1	$f1,68($a5)
    lwc1	$f4,76($a5)
    lwc1	$f5,72($a5)
    sub.s	$f4,$f4,$f1
    sub.s	$f0,$f5,$f1
    mul.s	$f4,$f4,$f2
    mul.s	$f0,$f0,$f11
    add.s	$f4,$f4,$f1
    add.s	$f4,$f4,$f0
    c.lt.s	$f5,$f4
    nop
    bc1fl	.L0db4e36c
    # Line 848
    swc1	$f4,0($a6)
    # Line 846
    mov.s	$f4,$f5
    # Line 848
    swc1	$f4,0($a6)
.L0db4e36c:
    # Line 849
    jr	$ra
    addiu	$sp,$sp,48
.L0db4e374:
    b	.L0db4e314
    # Line 836
    lwc1	$f12,3284($a0)
.L0db4e37c:
    # Line 803
    mov.s	$f8,$f10
    # Line 799
    addiu	$a6,$a2,144
    # Line 801
    addiu	$a4,$a0,28156
    # Line 800
    addiu	$a5,$a0,1328
    # Line 804
    b	.L0db4e224
    # Line 802
    mov.s	$f6,$f5
.L0db4e394:
    # Line 793
    # lw $t9, -26656($gp) # &__glCalcCIColor
    sd	$ra,8($sp)
    bal __glCalcCIColor
    nop
    # Line 794
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glFastCalcCIColor

# Function: __glFogCIColor
# Declared: Line 851 (Source lines: 862-867)
# Address: 0x0db4e3b4 - 0x0db4e414 (Size: 96 bytes, Frame: 0)
.globl __glFogCIColor
.ent __glFogCIColor
__glFogCIColor:
    # Line 862
    lwc1	$f3,176($a2)
    lwc1	$f2,3284($a0)
    sub.s	$f2,$f2,$f3
    lwc1	$f1,1528($a0)
    mul.s	$f1,$f1,$f2
    sll	$a4,$a1,0x4
    addu	$a4,$a4,$a2
    lwc1	$f0,144($a4)
    add.s	$f0,$f0,$f1
    swc1	$f0,144($a4)
    # Line 863
    lw	$v0,3136($a0)
    li	$at,1
    sllv	$at,$at,$v0
    addiu	$at,$at,-1
    mtc1	$at,$f4
    nop
    cvt.s.w	$f4,$f4
    c.lt.s	$f4,$f0
    nop
    bc1f	.L0db4e40c
    nop
    # Line 865
    swc1	$f4,144($a4)
.L0db4e40c:
    # Line 867
    jr	$ra
    nop
.end __glFogCIColor

# Function: __glFogLitCIColor
# Declared: Line 869 (Source lines: 870-888)
# Address: 0x0db4e414 - 0x0db4e4b4 (Size: 160 bytes, Frame: 208)
.globl __glFogLitCIColor
.ent __glFogLitCIColor
__glFogLitCIColor:
    # Line 870
    addiu	$sp,$sp,-80
    sd	$a2,24($sp)
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    lui	$at,0xb
    addiu	$at,$at,644
    addu	$gp,$t9,$at
    # Line 875
    lw	$t9,12080($a0)
    # Line 870
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 875
    jalr	$t9
    sd	$a1,32($sp)
    # Line 883
    ld	$a3,24($sp)
    lwc1	$f2,3284($s8)
    lwc1	$f3,176($a3)
    sub.s	$f2,$f2,$f3
    lwc1	$f1,1528($s8)
    ld	$a0,32($sp)
    mul.s	$f1,$f1,$f2
    sll	$a0,$a0,0x4
    addu	$a0,$a0,$a3
    lwc1	$f0,144($a0)
    add.s	$f0,$f0,$f1
    swc1	$f0,144($a0)
    # Line 884
    lw	$v1,3136($s8)
    li	$v0,1
    sllv	$v0,$v0,$v1
    addiu	$v0,$v0,-1
    mtc1	$v0,$f4
    nop
    cvt.s.w	$f4,$f4
    c.lt.s	$f4,$f0
    ld	$ra,0($sp)
    bc1f	.L0db4e4a8
    ld	$s8,8($sp)
    # Line 886
    swc1	$f4,144($a0)
    ld	$s8,8($sp)
.L0db4e4a8:
    ld	$gp,16($sp)
    # Line 888
    jr	$ra
    addiu	$sp,$sp,80
.end __glFogLitCIColor

# Function: __glClampAndScaleColor
# Declared: Line 904 (Source lines: 905-950)
# Address: 0x0db4e4b4 - 0x0db4e5b0 (Size: 252 bytes, Frame: 0)
.globl __glClampAndScaleColor
.ent __glClampAndScaleColor
__glClampAndScaleColor:
    # Line 910
    lwc1	$f9,408($a0)
    # Line 905
    lui	$v0,0xb
    addiu	$v0,$v0,484
    addu	$at,$t9,$v0
    # Line 913
    mtc1	$zero,$f4
    lwc1	$f6,420($a0)
    c.le.s	$f9,$f4
    # Line 912
    lwc1	$f8,416($a0)
    # Line 911
    lwc1	$f7,412($a0)
    # Line 913
    bc1f	.L0db4e4e8
    # Line 906
    lwc1	$f5,3284($a0)
    # Line 916
    b	.L0db4e508
    swc1	$f4,168($a0)
.L0db4e4e8:
    c.le.s	$f5,$f9
    nop
    bc1f	.L0db4e500
    lwc1	$f10,30804($a0)
    # Line 919
    b	.L0db4e508
    swc1	$f10,168($a0)
.L0db4e500:
    # Line 921
    mul.s	$f0,$f10,$f9
    swc1	$f0,168($a0)
.L0db4e508:
    c.le.s	$f7,$f4
    nop
    bc1fl	.L0db4e520
    # Line 925
    c.le.s	$f5,$f7
    b	.L0db4e53c
    swc1	$f4,172($a0)
.L0db4e520:
    nop
    bc1f	.L0db4e534
    lwc1	$f9,30808($a0)
    # Line 928
    b	.L0db4e53c
    swc1	$f9,172($a0)
.L0db4e534:
    # Line 930
    mul.s	$f1,$f9,$f7
    swc1	$f1,172($a0)
.L0db4e53c:
    c.le.s	$f8,$f4
    nop
    bc1fl	.L0db4e554
    # Line 934
    c.le.s	$f5,$f8
    b	.L0db4e570
    swc1	$f4,176($a0)
.L0db4e554:
    nop
    bc1f	.L0db4e568
    lwc1	$f7,30812($a0)
    # Line 937
    b	.L0db4e570
    swc1	$f7,176($a0)
.L0db4e568:
    # Line 939
    mul.s	$f2,$f7,$f8
    swc1	$f2,176($a0)
.L0db4e570:
    c.le.s	$f6,$f4
    nop
    bc1t	.L0db4e5a8
    nop
    # Line 943
    c.le.s	$f5,$f6
    nop
    bc1f	.L0db4e598
    lwc1	$f4,30844($a0)
    # Line 950
    jr	$ra
    # Line 946
    swc1	$f4,180($a0)
.L0db4e598:
    # Line 948
    mul.s	$f3,$f4,$f6
    swc1	$f3,180($a0)
    # Line 950
    jr	$ra
    nop
.L0db4e5a8:
    jr	$ra
    # Line 943
    swc1	$f4,180($a0)
.end __glClampAndScaleColor

# Function: ChangeMaterialEmission
# Declared: Line 954 (Source lines: 959-971)
# Address: 0x0db4e5b0 - 0x0db4e630 (Size: 128 bytes, Frame: 0)
.ent ChangeMaterialEmission
ChangeMaterialEmission:
    # Line 961
    lwc1	$f2,30812($a0)
    lwc1	$f1,416($a0)
    mul.s	$f1,$f1,$f2
    # Line 959
    lwc1	$f4,30804($a0)
    lwc1	$f3,408($a0)
    # Line 960
    lwc1	$f0,30808($a0)
    # Line 959
    mul.s	$f3,$f3,$f4
    # Line 960
    lwc1	$f4,412($a0)
    mul.s	$f4,$f4,$f0
    # Line 965
    swc1	$f1,56($a1)
    # Line 963
    swc1	$f3,48($a1)
    # Line 964
    swc1	$f4,52($a1)
    # Line 966
    lwc1	$f0,30844($a0)
    lwc1	$f2,420($a0)
    mul.s	$f2,$f2,$f0
    swc1	$f2,60($a1)
    # Line 968
    lwc1	$f2,0($a1)
    lwc1	$f0,1308($a0)
    mul.s	$f2,$f2,$f0
    add.s	$f2,$f2,$f3
    swc1	$f2,0($a2)
    # Line 969
    lwc1	$f0,1312($a0)
    lwc1	$f3,4($a1)
    mul.s	$f3,$f3,$f0
    add.s	$f3,$f3,$f4
    swc1	$f3,4($a2)
    # Line 970
    lwc1	$f2,1316($a0)
    lwc1	$f0,8($a1)
    mul.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    # Line 971
    jr	$ra
    # Line 970
    swc1	$f0,8($a2)
.end ChangeMaterialEmission

# Function: ChangeMaterialSpecular
# Declared: Line 973 (Source lines: 982-1005)
# Address: 0x0db4e630 - 0x0db4e6b0 (Size: 128 bytes, Frame: 0)
.ent ChangeMaterialSpecular
ChangeMaterialSpecular:
    # Line 982
    lwc1	$f4,408($a0)
    # Line 983
    lwc1	$f5,412($a0)
    # Line 984
    lwc1	$f6,416($a0)
    # Line 986
    swc1	$f4,32($a1)
    # Line 987
    swc1	$f5,36($a1)
    # Line 988
    swc1	$f6,40($a1)
    # Line 989
    lwc1	$f0,420($a0)
    # Line 996
    addiu	$at,$a0,28196
    xor	$at,$at,$a2
    # Line 989
    swc1	$f0,44($a1)
    # Line 996
    sltiu	$at,$at,1
    lw	$a4,28236($a0)
    sll	$a3,$at,0x2
    subu	$a3,$a3,$at
    beqz	$a4,.L0db4e6a8
    sll	$a3,$a3,0x4
    # Line 998
    lw	$v1,96($a4)
.L0db4e674:
    # Line 1001
    lwc1	$f3,32($v1)
    mul.s	$f3,$f3,$f4
    addu	$v0,$a3,$a4
    swc1	$f3,32($v0)
    # Line 1002
    lwc1	$f2,36($v1)
    mul.s	$f2,$f2,$f5
    swc1	$f2,36($v0)
    # Line 1003
    lwc1	$f1,40($v1)
    mul.s	$f1,$f1,$f6
    swc1	$f1,40($v0)
    # Line 996
    lw	$a4,200($a4)
    bnezl	$a4,.L0db4e674
    # Line 998
    lw	$v1,96($a4)
.L0db4e6a8:
    # Line 1005
    jr	$ra
    nop
.end ChangeMaterialSpecular

# Function: ChangeMaterialAmbient
# Declared: Line 1007 (Source lines: 1016-1043)
# Address: 0x0db4e6b0 - 0x0db4e76c (Size: 188 bytes, Frame: 0)
.ent ChangeMaterialAmbient
ChangeMaterialAmbient:
    # Line 1016
    lwc1	$f4,408($a0)
    # Line 1017
    lwc1	$f5,412($a0)
    # Line 1018
    lwc1	$f6,416($a0)
    # Line 1020
    swc1	$f4,0($a1)
    # Line 1021
    swc1	$f5,4($a1)
    # Line 1022
    swc1	$f6,8($a1)
    # Line 1023
    lwc1	$f2,420($a0)
    swc1	$f2,12($a1)
    # Line 1025
    lwc1	$f1,1308($a0)
    mul.s	$f1,$f1,$f4
    lwc1	$f0,48($a1)
    add.s	$f0,$f0,$f1
    swc1	$f0,0($a2)
    # Line 1026
    lwc1	$f3,1312($a0)
    mul.s	$f3,$f3,$f5
    lwc1	$f2,52($a1)
    add.s	$f2,$f2,$f3
    swc1	$f2,4($a2)
    # Line 1027
    lwc1	$f1,1316($a0)
    mul.s	$f1,$f1,$f6
    lwc1	$f0,56($a1)
    add.s	$f0,$f0,$f1
    # Line 1034
    addiu	$at,$a0,28196
    xor	$at,$at,$a2
    # Line 1027
    swc1	$f0,8($a2)
    # Line 1034
    sltiu	$at,$at,1
    lw	$a4,28236($a0)
    sll	$a3,$at,0x2
    subu	$a3,$a3,$at
    beqz	$a4,.L0db4e764
    sll	$a3,$a3,0x4
    # Line 1036
    lw	$v1,96($a4)
.L0db4e730:
    # Line 1039
    lwc1	$f1,0($v1)
    mul.s	$f1,$f1,$f4
    addu	$v0,$a3,$a4
    swc1	$f1,0($v0)
    # Line 1040
    lwc1	$f0,4($v1)
    mul.s	$f0,$f0,$f5
    swc1	$f0,4($v0)
    # Line 1041
    lwc1	$f3,8($v1)
    mul.s	$f3,$f3,$f6
    swc1	$f3,8($v0)
    # Line 1034
    lw	$a4,200($a4)
    bnezl	$a4,.L0db4e730
    # Line 1036
    lw	$v1,96($a4)
.L0db4e764:
    # Line 1043
    jr	$ra
    nop
.end ChangeMaterialAmbient

# Function: ChangeMaterialDiffuse
# Declared: Line 1045 (Source lines: 1047-1085)
# Address: 0x0db4e76c - 0x0db4e830 (Size: 196 bytes, Frame: 0)
.ent ChangeMaterialDiffuse
ChangeMaterialDiffuse:
    # Line 1056
    lwc1	$f5,416($a0)
    # Line 1055
    lwc1	$f4,412($a0)
    # Line 1057
    lwc1	$f7,420($a0)
    # Line 1047
    lui	$v0,0xb
    addiu	$v0,$v0,-212
    addu	$at,$t9,$v0
    # Line 1062
    mtc1	$zero,$f8
    # Line 1054
    lwc1	$f6,408($a0)
    # Line 1062
    swc1	$f7,28($a1)
    c.lt.s	$f7,$f8
    # Line 1061
    swc1	$f5,24($a1)
    # Line 1060
    swc1	$f4,20($a1)
    # Line 1062
    bc1f	.L0db4e814
    # Line 1059
    swc1	$f6,16($a1)
    # Line 1065
    mov.s	$f7,$f8
.L0db4e7a8:
    # Line 1069
    lwc1	$f0,30844($a0)
.L0db4e7ac:
    mul.s	$f0,$f0,$f7
    # Line 1076
    addiu	$v0,$a0,28196
    xor	$v0,$v0,$a2
    # Line 1069
    swc1	$f0,36($a2)
    # Line 1076
    sltiu	$v0,$v0,1
    lw	$a4,28236($a0)
    sll	$a5,$v0,0x2
    subu	$a5,$a5,$v0
    beqz	$a4,.L0db4e80c
    sll	$a5,$a5,0x4
    # Line 1078
    lw	$a1,96($a4)
.L0db4e7d8:
    # Line 1081
    lwc1	$f3,16($a1)
    mul.s	$f3,$f3,$f6
    addu	$v1,$a5,$a4
    swc1	$f3,16($v1)
    # Line 1082
    lwc1	$f2,20($a1)
    mul.s	$f2,$f2,$f4
    swc1	$f2,20($v1)
    # Line 1083
    lwc1	$f1,24($a1)
    mul.s	$f1,$f1,$f5
    swc1	$f1,24($v1)
    # Line 1076
    lw	$a4,200($a4)
    bnezl	$a4,.L0db4e7d8
    # Line 1078
    lw	$a1,96($a4)
.L0db4e80c:
    # Line 1085
    jr	$ra
    nop
.L0db4e814:
    # Line 1065
    lwc1	$f8,3284($a0)
    c.lt.s	$f8,$f7
    nop
    bc1fl	.L0db4e7ac
    # Line 1069
    lwc1	$f0,30844($a0)
    b	.L0db4e7a8
    # Line 1067
    mov.s	$f7,$f8
.end ChangeMaterialDiffuse

# Function: ChangeMaterialAmbientAndDiffuse
# Declared: Line 1087 (Source lines: 1090-1141)
# Address: 0x0db4e830 - 0x0db4e964 (Size: 308 bytes, Frame: 0)
.ent ChangeMaterialAmbientAndDiffuse
ChangeMaterialAmbientAndDiffuse:
    # Line 1099
    lwc1	$f5,416($a0)
    # Line 1100
    lwc1	$f7,420($a0)
    # Line 1098
    lwc1	$f4,412($a0)
    # Line 1097
    lwc1	$f6,408($a0)
    # Line 1110
    swc1	$f7,28($a1)
    # Line 1109
    swc1	$f5,24($a1)
    # Line 1108
    swc1	$f4,20($a1)
    # Line 1107
    swc1	$f6,16($a1)
    # Line 1105
    swc1	$f7,12($a1)
    # Line 1104
    swc1	$f5,8($a1)
    # Line 1103
    swc1	$f4,4($a1)
    # Line 1102
    swc1	$f6,0($a1)
    # Line 1112
    lwc1	$f0,1308($a0)
    mul.s	$f0,$f0,$f6
    lwc1	$f8,48($a1)
    add.s	$f8,$f8,$f0
    swc1	$f8,0($a2)
    # Line 1113
    lwc1	$f3,1312($a0)
    mul.s	$f3,$f3,$f4
    lwc1	$f2,52($a1)
    add.s	$f2,$f2,$f3
    swc1	$f2,4($a2)
    # Line 1114
    lwc1	$f1,1316($a0)
    # Line 1090
    lui	$v0,0xb
    addiu	$v0,$v0,-408
    # Line 1114
    mul.s	$f1,$f1,$f5
    # Line 1090
    addu	$at,$t9,$v0
    # Line 1114
    mtc1	$zero,$f8
    lwc1	$f0,56($a1)
    c.lt.s	$f7,$f8
    add.s	$f0,$f0,$f1
    bc1f	.L0db4e948
    swc1	$f0,8($a2)
    # Line 1117
    mov.s	$f7,$f8
.L0db4e8b8:
    # Line 1121
    lwc1	$f1,30844($a0)
.L0db4e8bc:
    mul.s	$f1,$f1,$f7
    # Line 1127
    addiu	$v0,$a0,28196
    xor	$v0,$v0,$a2
    # Line 1121
    swc1	$f1,36($a2)
    # Line 1127
    sltiu	$v0,$v0,1
    lw	$a4,28236($a0)
    sll	$a5,$v0,0x2
    subu	$a5,$a5,$v0
    beqz	$a4,.L0db4e940
    sll	$a5,$a5,0x4
    # Line 1129
    lw	$a1,96($a4)
.L0db4e8e8:
    # Line 1132
    lwc1	$f3,0($a1)
    mul.s	$f3,$f3,$f6
    addu	$v1,$a5,$a4
    swc1	$f3,0($v1)
    # Line 1133
    lwc1	$f2,4($a1)
    mul.s	$f2,$f2,$f4
    swc1	$f2,4($v1)
    # Line 1134
    lwc1	$f1,8($a1)
    mul.s	$f1,$f1,$f5
    swc1	$f1,8($v1)
    # Line 1137
    lwc1	$f0,16($a1)
    mul.s	$f0,$f0,$f6
    swc1	$f0,16($v1)
    # Line 1138
    lwc1	$f3,20($a1)
    mul.s	$f3,$f3,$f4
    swc1	$f3,20($v1)
    # Line 1139
    lwc1	$f2,24($a1)
    mul.s	$f2,$f2,$f5
    swc1	$f2,24($v1)
    # Line 1127
    lw	$a4,200($a4)
    bnezl	$a4,.L0db4e8e8
    # Line 1129
    lw	$a1,96($a4)
.L0db4e940:
    # Line 1141
    jr	$ra
    nop
.L0db4e948:
    # Line 1117
    lwc1	$f8,3284($a0)
    c.lt.s	$f8,$f7
    nop
    bc1fl	.L0db4e8bc
    # Line 1121
    lwc1	$f1,30844($a0)
    b	.L0db4e8b8
    # Line 1119
    mov.s	$f7,$f8
.end ChangeMaterialAmbientAndDiffuse

# Function: __glChangeOneMaterialColor
# Declared: Line 1145 (Source lines: 1146-1166)
# Address: 0x0db4e964 - 0x0db4e9f8 (Size: 148 bytes, Frame: 48)
.globl __glChangeOneMaterialColor
.ent __glChangeOneMaterialColor
__glChangeOneMaterialColor:
    # Line 1146
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$gp,8($sp)
    lw	$at,__glBeginMode
    lui	$v1,0xb
    addiu	$v1,$v1,-716
    beq	$at,$v0,.L0db4e9c4
    addu	$gp,$t9,$v1
.L0db4e990:
    # Line 1157
    lw	$t9,12088($s0)
.L0db4e994:
    move	$a0,$s0
    lw	$a2,28244($s0)
    jalr	$t9
    lw	$a1,28240($s0)
    lw	$a1,1696($s0)
    andi	$a1,$a1,0x40
    beqz	$a1,.L0db4e9e4
    ld	$ra,16($sp)
.L0db4e9b4:
    ld	$gp,8($sp)
    # Line 1166
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db4e9c4:
    # Line 1146
    lw	$at,28144($s0)
    beqz	$at,.L0db4e990
    sd	$ra,16($sp)
    # Line 1154
    lw	$t9,12092($s0)
    jalr	$t9
    move	$a0,$s0
    b	.L0db4e994
    # Line 1157
    lw	$t9,12088($s0)
.L0db4e9e4:
    # Line 1164
    # lw $t9, -26640($gp) # &__glClampAndScaleColor
    bal __glClampAndScaleColor
    move	$a0,$s0
    b	.L0db4e9b4
    ld	$ra,16($sp)
.end __glChangeOneMaterialColor

# Function: __glChangeBothMaterialColors
# Declared: Line 1168 (Source lines: 1169-1189)
# Address: 0x0db4e9f8 - 0x0db4eaa0 (Size: 168 bytes, Frame: 48)
.globl __glChangeBothMaterialColors
.ent __glChangeBothMaterialColors
__glChangeBothMaterialColors:
    # Line 1169
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$gp,8($sp)
    lw	$at,__glBeginMode
    lui	$v1,0xb
    addiu	$v1,$v1,-864
    beq	$at,$v0,.L0db4ea6c
    addu	$gp,$t9,$v1
.L0db4ea24:
    # Line 1179
    lw	$t9,12088($s0)
.L0db4ea28:
    move	$a0,$s0
    addiu	$a2,$s0,28156
    jalr	$t9
    addiu	$a1,$s0,1328
    # Line 1180
    lw	$t9,12088($s0)
    move	$a0,$s0
    addiu	$a2,$s0,28196
    jalr	$t9
    addiu	$a1,$s0,1408
    lw	$a1,1696($s0)
    andi	$a1,$a1,0x40
    beqz	$a1,.L0db4ea8c
    ld	$ra,16($sp)
.L0db4ea5c:
    ld	$gp,8($sp)
    # Line 1189
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db4ea6c:
    # Line 1169
    lw	$at,28144($s0)
    beqz	$at,.L0db4ea24
    sd	$ra,16($sp)
    # Line 1176
    lw	$t9,12092($s0)
    jalr	$t9
    move	$a0,$s0
    b	.L0db4ea28
    # Line 1179
    lw	$t9,12088($s0)
.L0db4ea8c:
    # Line 1187
    # lw $t9, -26640($gp) # &__glClampAndScaleColor
    bal __glClampAndScaleColor
    move	$a0,$s0
    b	.L0db4ea5c
    ld	$ra,16($sp)
.end __glChangeBothMaterialColors

# Function: ComputeMaterialState
# Declared: Line 1203 (Source lines: 1205-1269)
# Address: 0x0db4eaa0 - 0x0db4ec04 (Size: 356 bytes, Frame: 208)
.ent ComputeMaterialState
ComputeMaterialState:
    # Line 1205
    andi	$at,$a3,0x1b
    addiu	$sp,$sp,-80
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$s2,24($sp)
    move	$s2,$a1
    sd	$s0,16($sp)
    move	$s0,$a2
    sd	$s3,32($sp)
    beqz	$at,.L0db4ebec
    move	$s3,$a3
    # Line 1214
    lw	$a1,32($s0)
    beqz	$a1,.L0db4eb98
    lwc1	$f4,64($s2)
    lwc1	$f0,16($s0)
    c.eq.s	$f0,$f4
    nop
    bc1f	.L0db4eb98
.L0db4eae8:
    # Line 1247
    andi	$v0,$s3,0x9
    beqz	$v0,.L0db4eb40
    # Line 1256
    andi	$v1,$s3,0x2
    # Line 1252
    lwc1	$f1,1308($s1)
    lwc1	$f0,0($s2)
    mul.s	$f0,$f0,$f1
    lwc1	$f3,48($s2)
    add.s	$f3,$f3,$f0
    swc1	$f3,0($s0)
    # Line 1254
    lwc1	$f2,1312($s1)
    lwc1	$f1,4($s2)
    mul.s	$f1,$f1,$f2
    lwc1	$f0,52($s2)
    add.s	$f0,$f0,$f1
    swc1	$f0,4($s0)
    # Line 1256
    lwc1	$f3,1316($s1)
    lwc1	$f2,8($s2)
    mul.s	$f2,$f2,$f3
    lwc1	$f1,56($s2)
    add.s	$f1,$f1,$f2
    swc1	$f1,8($s0)
    andi	$v1,$s3,0x2
.L0db4eb40:
    beqz	$v1,.L0db4eb84
    # Line 1269
    ld	$s3,32($sp)
    # Line 1262
    lwc1	$f5,30844($s1)
    lwc1	$f4,28($s2)
    mul.s	$f4,$f4,$f5
    mtc1	$zero,$f5
    c.lt.s	$f4,$f5
    nop
    bc1t	.L0db4ebe4
    swc1	$f4,36($s0)
    # Line 1264
    lwc1	$f5,30844($s1)
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0db4eb84
    # Line 1269
    ld	$s3,32($sp)
    # Line 1266
    swc1	$f5,36($s0)
.L0db4eb80:
    # Line 1269
    ld	$s3,32($sp)
.L0db4eb84:
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db4eb98:
    sdc1	$f4,0($sp)
    # Line 1243
    # lw $t9, -25480($gp) # &__glFreeSpecLUT
    move	$a0,$s1
    sd	$ra,40($sp)
    jal	__glFreeSpecLUT
    # Line 1241
    swc1	$f4,16($s0)
    # Line 1244
    # lw $t9, -25484($gp) # &__glCreateSpecLUT
    move	$a0,$s1
    jal	__glCreateSpecLUT
    ldc1	$f13,0($sp)
    sw	$v0,32($s0)
    # Line 1245
    lwc1	$f1,4($v0)
    ld	$ra,40($sp)
    swc1	$f1,24($s0)
    # Line 1247
    addiu	$a4,$v0,16
    # Line 1246
    lwc1	$f0,8($v0)
    # Line 1247
    sw	$a4,20($s0)
    b	.L0db4eae8
    # Line 1246
    swc1	$f0,28($s0)
.L0db4ebe4:
    # Line 1264
    b	.L0db4eb80
    swc1	$f5,36($s0)
.L0db4ebec:
    # Line 1211
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,24($sp)
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end ComputeMaterialState

# Function: ComputeLightState
# Declared: Line 1286 (Source lines: 1287-1376)
# Address: 0x0db4ec04 - 0x0db4eec4 (Size: 704 bytes, Frame: 160)
.ent ComputeLightState
ComputeLightState:
    # Line 1287
    addiu	$sp,$sp,-160
    sd	$s2,16($sp)
    move	$s2,$a0
    sd	$s4,32($sp)
    # Line 1301
    move	$s4,$zero
    sd	$s3,24($sp)
    # Line 1300
    lw	$s3,1704($a0)
    sd	$s5,56($sp)
    # Line 1299
    addiu	$s5,$a0,28236
    sd	$s0,40($sp)
    # Line 1301
    lw	$a1,3328($a0)
    # Line 1298
    lw	$s0,28152($a0)
    sd	$s1,48($sp)
    # Line 1301
    blez	$a1,.L0db4eea0
    # Line 1297
    lw	$s1,1488($a0)
    sd	$ra,80($sp)
    sd	$s7,72($sp)
    sd	$s6,88($sp)
    # Line 1301
    li	$s6,1
    sdc1	$f28,128($sp)
    lwc1	$f28,_lit_3de147ae
    sdc1	$f26,104($sp)
    lwc1	$f26,_lit_3f170a3d
    sdc1	$f24,120($sp)
    lwc1	$f24,_lit_3e99999a
    sdc1	$f20,96($sp)
    mtc1	$zero,$f20
    sdc1	$f30,136($sp)
    lwc1	$f30,_lit_3c8efa35
    sdc1	$f22,112($sp)
    b	.L0db4ed5c
    lwc1	$f22,_lit_43340000
.L0db4ec84:
    # Line 1334
    # lw $t9, -25484($gp) # &__glCreateSpecLUT
    move	$a0,$s2
    jal	__glCreateSpecLUT
    mov.s	$f13,$f4
    sw	$v0,216($s0)
    # Line 1335
    lwc1	$f1,4($v0)
    swc1	$f1,208($s0)
    # Line 1336
    lwc1	$f0,8($v0)
    # Line 1337
    addiu	$at,$v0,16
    sw	$at,204($s0)
    # Line 1336
    swc1	$f0,212($s0)
.L0db4ecb0:
    # Line 1340
    lwc1	$f2,104($s1)
.L0db4ecb4:
    c.eq.s	$f2,$f20
    nop
    bc1t	.L0db4ecd4
    swc1	$f2,100($s0)
    # Line 1342
    lwc1	$f0,104($s1)
    lwc1	$f3,3284($s2)
    div.s	$f3,$f3,$f0
    swc1	$f3,152($s0)
.L0db4ecd4:
    # Line 1344
    lwc1	$f2,108($s1)
    swc1	$f2,104($s0)
    # Line 1345
    lwc1	$f1,112($s1)
    swc1	$f1,108($s0)
    lbu	$v0,3105($s2)
    beqzl	$v0,.L0db4ed3c
    # Line 1355
    lbu	$v1,1324($s2)
    # Line 1352
    lwc1	$f2,36($s1)
    lwc1	$f0,32($s1)
    mul.s	$f2,$f2,$f26
    lwc1	$f1,40($s1)
    mul.s	$f0,$f0,$f24
    mul.s	$f1,$f1,$f28
    add.s	$f0,$f0,$f2
    add.s	$f0,$f0,$f1
    swc1	$f0,192($s0)
    # Line 1355
    lwc1	$f1,20($s1)
    lwc1	$f3,16($s1)
    mul.s	$f1,$f1,$f26
    lwc1	$f0,24($s1)
    mul.s	$f3,$f3,$f24
    mul.s	$f0,$f0,$f28
    add.s	$f3,$f3,$f1
    add.s	$f3,$f3,$f0
    swc1	$f3,196($s0)
    lbu	$v1,1324($s2)
.L0db4ed3c:
    beqzl	$v1,.L0db4ee10
    lbu	$v0,156($s0)
    # Line 1372
    sb	$s6,220($s0)
.L0db4ed48:
    lw	$a1,3328($s2)
.L0db4ed4c:
    # Line 1302
    addiu	$s0,$s0,224
    slt	$a2,$s4,$a1
    beqz	$a2,.L0db4ee7c
    addiu	$s1,$s1,116
.L0db4ed5c:
    addiu	$s4,$s4,1
    # Line 1301
    andi	$at,$s3,0x1
    beqz	$at,.L0db4ed4c
    # Line 1302
    srl	$s3,$s3,0x1
    # Line 1306
    sw	$s0,0($s5)
    # Line 1307
    sw	$s1,96($s0)
    # Line 1314
    lwc1	$f1,64($s1)
    swc1	$f1,116($s0)
    lwc1	$f0,68($s1)
    swc1	$f0,120($s0)
    lwc1	$f3,72($s1)
    swc1	$f3,124($s0)
    lwc1	$f2,76($s1)
    swc1	$f2,128($s0)
    # Line 1315
    lwc1	$f1,100($s1)
    c.eq.s	$f1,$f22
    li	$s7,1
    bc1tl	.L0db4eda8
    move	$s7,$zero
.L0db4eda8:
    # Line 1308
    addiu	$s5,$s0,200
    # Line 1315
    beqz	$s7,.L0db4ecb0
    sb	$s7,156($s0)
    # Line 1317
    # lw $t9, -17720($gp) # &cosf
    lwc1	$f12,100($s1)
    jal	cosf
    mul.s	$f12,$f12,$f30
    beqz	$s7,.L0db4ecb0
    swc1	$f0,148($s0)
    # Line 1321
    lw	$a1,216($s0)
    beqz	$a1,.L0db4edec
    lwc1	$f5,96($s1)
    lwc1	$f0,112($s0)
    c.eq.s	$f0,$f5
    nop
    bc1tl	.L0db4ecb4
    # Line 1340
    lwc1	$f2,104($s1)
.L0db4edec:
    # Line 1329
    mov.s	$f4,$f5
    beqz	$a1,.L0db4ec84
    swc1	$f5,112($s0)
    # Line 1332
    # lw $t9, -25480($gp) # &__glFreeSpecLUT
    sdc1	$f4,64($sp)
    jal	__glFreeSpecLUT
    move	$a0,$s2
    b	.L0db4ec84
    ldc1	$f4,64($sp)
.L0db4ee10:
    # Line 1355
    bnezl	$v0,.L0db4ed48
    # Line 1372
    sb	$s6,220($s0)
    # Line 1359
    lwc1	$f1,128($s0)
    c.eq.s	$f1,$f20
    nop
    bc1fl	.L0db4ed48
    # Line 1372
    sb	$s6,220($s0)
    # Line 1364
    lw	$t9,11976($s2)
    addiu	$a1,$s0,116
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 1365
    lwc1	$f6,0($sp)
    swc1	$f6,176($s0)
    # Line 1366
    lwc1	$f5,4($sp)
    swc1	$f5,180($s0)
    # Line 1367
    lwc1	$f4,8($sp)
    swc1	$f4,184($s0)
    # Line 1368
    lwc1	$f3,8($sp)
    lwc1	$f2,3284($s2)
    add.s	$f2,$f2,$f3
    swc1	$f2,8($sp)
    # Line 1369
    lw	$t9,11976($s2)
    addiu	$a1,$sp,0
    jalr	$t9
    addiu	$a0,$s0,160
    # Line 1370
    b	.L0db4ed48
    sb	$zero,220($s0)
.L0db4ee7c:
    ldc1	$f30,136($sp)
    ldc1	$f28,128($sp)
    ldc1	$f24,120($sp)
    ldc1	$f22,112($sp)
    ldc1	$f26,104($sp)
    ldc1	$f20,96($sp)
    ld	$s7,72($sp)
    ld	$ra,80($sp)
    ld	$s6,88($sp)
.L0db4eea0:
    # Line 1376
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    ld	$s2,16($sp)
    ld	$s3,24($sp)
    ld	$s4,32($sp)
    # Line 1375
    sw	$zero,0($s5)
    # Line 1376
    ld	$s5,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end ComputeLightState

# Function: ComputeLightProcs
# Declared: Line 1388 (Source lines: 1390-1441)
# Address: 0x0db4eec4 - 0x0db4efec (Size: 296 bytes, Frame: 0)
.ent ComputeLightProcs
ComputeLightProcs:
    # Line 1393
    lw	$a2,28236($a0)
    beqz	$a2,.L0db4eee0
    # Line 1390
    move	$a3,$zero
    # Line 1393
    lbu	$at,220($a2)
.L0db4eed4:
    beqzl	$at,.L0db4ef44
    lw	$a2,200($a2)
    # Line 1395
    li	$a3,1
.L0db4eee0:
    # Line 1400
    lw	$v0,1696($a0)
.L0db4eee4:
    # Line 1405
    la	$a2,__glCalcCIColor
    # Line 1428
    li	$v1,7168
    # Line 1400
    andi	$v0,$v0,0x40
    beqz	$v0,.L0db4ef7c
    # Line 1414
    lui	$a1,0x2
    # Line 1400
    lbu	$a4,3105($a0)
    beqz	$a4,.L0db4ef68
    nop
    beqzl	$a3,.L0db4efc0
    # Line 1403
    la	$a2,__glFastCalcCIColor
    # Line 1405
    sw	$a2,12076($a0)
.L0db4ef10:
    # Line 1414
    lw	$a3,30488($a0)
    # Line 1415
    li	$v0,7168
    # Line 1414
    andi	$v1,$a3,0x2000
    beqz	$v1,.L0db4ef3c
    sw	$a2,12084($a0)
    and	$a1,$a3,$a1
    beqz	$a1,.L0db4ef3c
    nop
    # Line 1415
    lw	$at,3092($a0)
    beq	$at,$v0,.L0db4ef54
    nop
.L0db4ef3c:
    # Line 1441
    jr	$ra
    nop
.L0db4ef44:
    # Line 1393
    bnezl	$a2,.L0db4eed4
    lbu	$at,220($a2)
    b	.L0db4eee4
    # Line 1400
    lw	$v0,1696($a0)
.L0db4ef54:
    # Line 1418
    beqz	$a4,.L0db4efd0
    sw	$a2,12080($a0)
    # Line 1420
    la	$v1,__glFogLitCIColor
    # Line 1441
    jr	$ra
    # Line 1420
    sw	$v1,12076($a0)
.L0db4ef68:
    # Line 1405
    beqz	$a3,.L0db4efdc
    # Line 1409
    la	$a2,__glFastCalcRGBColor
    # Line 1411
    la	$a2,__glCalcRGBColor
    b	.L0db4ef10
    sw	$a2,12076($a0)
.L0db4ef7c:
    # Line 1426
    lw	$a3,30488($a0)
    # Line 1422
    la	$a2,__glNop
    # Line 1426
    andi	$a1,$a3,0x2000
    beqz	$a1,.L0db4efc8
    sw	$a2,12084($a0)
    lui	$at,0x2
    and	$at,$a3,$at
    beqz	$at,.L0db4efc8
    nop
    # Line 1428
    lw	$v0,3092($a0)
    bne	$v0,$v1,.L0db4efc8
    # Line 1432
    la	$at,__glFogCIColor
    # Line 1428
    lbu	$a1,3105($a0)
    beqz	$a1,.L0db4efe4
    # Line 1434
    la	$v1,__glFogRGBColor
    # Line 1441
    jr	$ra
    # Line 1432
    sw	$at,12076($a0)
.L0db4efc0:
    # Line 1403
    b	.L0db4ef10
    sw	$a2,12076($a0)
.L0db4efc8:
    # Line 1441
    jr	$ra
    # Line 1437
    sw	$a2,12076($a0)
.L0db4efd0:
    # Line 1422
    la	$v0,__glFogLitRGBColor
    # Line 1441
    jr	$ra
    # Line 1422
    sw	$v0,12076($a0)
.L0db4efdc:
    # Line 1409
    b	.L0db4ef10
    sw	$a2,12076($a0)
.L0db4efe4:
    # Line 1441
    jr	$ra
    # Line 1434
    sw	$v1,12076($a0)
.end ComputeLightProcs

# Function: ComputeLightMaterialState
# Declared: Line 1449 (Source lines: 1451-1520)
# Address: 0x0db4efec - 0x0db4f18c (Size: 416 bytes, Frame: 48)
.ent ComputeLightMaterialState
ComputeLightMaterialState:
    # Line 1466
    andi	$t0,$a1,0x4
    andi	$t3,$a1,0x2
    andi	$t1,$a1,0x1
    # Line 1451
    or	$a5,$a1,$a2
    andi	$at,$a5,0x7
    beqz	$at,.L0db4f184
    addiu	$sp,$sp,-48
    # Line 1466
    lw	$a4,28236($a0)
    beqz	$a4,.L0db4f17c
    sd	$a5,0($sp)
    andi	$t8,$a2,0x1
    ld	$a5,0($sp)
    andi	$t2,$a2,0x2
    andi	$t9,$a2,0x4
    andi	$a6,$a5,0x4
    andi	$a7,$a5,0x2
    b	.L0db4f13c
    andi	$a5,$a5,0x1
.L0db4f034:
    # Line 1479
    beqz	$t8,.L0db4f060
    nop
    # Line 1482
    lwc1	$f2,1408($a0)
    mul.s	$f2,$f2,$f4
    swc1	$f2,48($a4)
    # Line 1483
    lwc1	$f1,1412($a0)
    mul.s	$f1,$f1,$f5
    swc1	$f1,52($a4)
    # Line 1484
    lwc1	$f0,1416($a0)
    mul.s	$f0,$f0,$f6
    swc1	$f0,56($a4)
.L0db4f060:
    beqz	$a7,.L0db4f0c8
    nop
    # Line 1491
    lwc1	$f6,24($a1)
    # Line 1490
    lwc1	$f5,20($a1)
    # Line 1491
    beqz	$t3,.L0db4f09c
    # Line 1489
    lwc1	$f4,16($a1)
    # Line 1493
    lwc1	$f1,1344($a0)
    mul.s	$f1,$f1,$f4
    swc1	$f1,16($a4)
    # Line 1494
    lwc1	$f0,1348($a0)
    mul.s	$f0,$f0,$f5
    swc1	$f0,20($a4)
    # Line 1495
    lwc1	$f3,1352($a0)
    mul.s	$f3,$f3,$f6
    swc1	$f3,24($a4)
.L0db4f09c:
    beqz	$t2,.L0db4f0c8
    nop
    # Line 1498
    lwc1	$f0,1424($a0)
    mul.s	$f0,$f0,$f4
    swc1	$f0,64($a4)
    # Line 1499
    lwc1	$f3,1428($a0)
    mul.s	$f3,$f3,$f5
    swc1	$f3,68($a4)
    # Line 1500
    lwc1	$f2,1432($a0)
    mul.s	$f2,$f2,$f6
    swc1	$f2,72($a4)
.L0db4f0c8:
    beqzl	$a6,.L0db4f134
    # Line 1466
    lw	$a4,200($a4)
    # Line 1507
    lwc1	$f6,40($a1)
    # Line 1506
    lwc1	$f5,36($a1)
    # Line 1507
    beqz	$t0,.L0db4f104
    # Line 1505
    lwc1	$f4,32($a1)
    # Line 1509
    lwc1	$f3,1360($a0)
    mul.s	$f3,$f3,$f4
    swc1	$f3,32($a4)
    # Line 1510
    lwc1	$f2,1364($a0)
    mul.s	$f2,$f2,$f5
    swc1	$f2,36($a4)
    # Line 1511
    lwc1	$f1,1368($a0)
    mul.s	$f1,$f1,$f6
    swc1	$f1,40($a4)
.L0db4f104:
    beqzl	$t9,.L0db4f134
    # Line 1466
    lw	$a4,200($a4)
    # Line 1514
    lwc1	$f2,1440($a0)
    mul.s	$f2,$f2,$f4
    swc1	$f2,80($a4)
    # Line 1515
    lwc1	$f1,1444($a0)
    mul.s	$f1,$f1,$f5
    swc1	$f1,84($a4)
    # Line 1516
    lwc1	$f0,1448($a0)
    mul.s	$f0,$f0,$f6
    swc1	$f0,88($a4)
    # Line 1466
    lw	$a4,200($a4)
.L0db4f134:
    beqz	$a4,.L0db4f17c
    nop
.L0db4f13c:
    # Line 1467
    beqz	$a5,.L0db4f060
    lw	$a1,96($a4)
    # Line 1475
    lwc1	$f6,8($a1)
    # Line 1474
    lwc1	$f5,4($a1)
    # Line 1475
    beqz	$t1,.L0db4f034
    # Line 1473
    lwc1	$f4,0($a1)
    # Line 1477
    lwc1	$f1,1328($a0)
    mul.s	$f1,$f1,$f4
    swc1	$f1,0($a4)
    # Line 1478
    lwc1	$f0,1332($a0)
    mul.s	$f0,$f0,$f5
    swc1	$f0,4($a4)
    # Line 1479
    lwc1	$f3,1336($a0)
    mul.s	$f3,$f3,$f6
    b	.L0db4f034
    swc1	$f3,8($a4)
.L0db4f17c:
    # Line 1520
    jr	$ra
    addiu	$sp,$sp,48
.L0db4f184:
    # Line 1461
    jr	$ra
    addiu	$sp,$sp,48
.end ComputeLightMaterialState

# Function: __glValidateMaterial
# Declared: Line 1534 (Source lines: 1535-1541)
# Address: 0x0db4f18c - 0x0db4f21c (Size: 144 bytes, Frame: 208)
.globl __glValidateMaterial
.ent __glValidateMaterial
__glValidateMaterial:
    # Line 1535
    move	$a3,$a1
    addiu	$sp,$sp,-80
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$s0,0($sp)
    move	$s0,$a2
    sd	$gp,24($sp)
    sd	$ra,16($sp)
    lui	$ra,0xb
    addiu	$ra,$ra,-2804
    addu	$gp,$t9,$ra
    # lw $t9, -32688($gp) # &sub_0db50000
    # Line 1536
    addiu	$a2,$a0,28156
    sd	$a1,32($sp)
    # Line 1535
    addiu	$t9,$t9,-5472
    # Line 1536
    bal __glChangeBothMaterialColors
    addiu	$a1,$a0,1328
    # Line 1538
    move	$a0,$s1
    # lw $t9, -32688($gp) # &sub_0db50000
    addiu	$a2,$s1,28196
    addiu	$a1,$s1,1408
    addiu	$t9,$t9,-5472
    bal __glChangeBothMaterialColors
    move	$a3,$s0
    # Line 1540
    # lw $t9, -32688($gp) # &sub_0db50000
    move	$a0,$s1
    ld	$a1,32($sp)
    addiu	$t9,$t9,-4116
    bal __glChangeBothMaterialColors
    move	$a2,$s0
    ld	$gp,24($sp)
    # Line 1541
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glValidateMaterial

# Function: __glValidateLighting
# Declared: Line 1558 (Source lines: 1559-1567)
# Address: 0x0db4f21c - 0x0db4f2ac (Size: 144 bytes, Frame: 48)
.globl __glValidateLighting
.ent __glValidateLighting
__glValidateLighting:
    # Line 1559
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$gp,8($sp)
    lw	$at,11828($a0)
    lui	$v0,0xb
    addiu	$v0,$v0,-2948
    andi	$at,$at,0x20
    beqz	$at,.L0db4f290
    addu	$gp,$t9,$v0
    # Line 1561
    # lw $t9, -32688($gp) # &sub_0db50000
    addiu	$t9,$t9,-5116
    bal __glChangeBothMaterialColors
    move	$a0,$s0
    # Line 1562
    # lw $t9, -32688($gp) # &sub_0db50000
    addiu	$t9,$t9,-4412
    bal __glChangeBothMaterialColors
    move	$a0,$s0
    # Line 1563
    # lw $t9, -26628($gp) # &__glValidateMaterial
    move	$a0,$s0
    li	$a2,63
    bal __glValidateMaterial
    li	$a1,63
    ld	$ra,16($sp)
    ld	$s0,0($sp)
.L0db4f284:
    ld	$gp,8($sp)
    # Line 1567
    jr	$ra
    addiu	$sp,$sp,48
.L0db4f290:
    # Line 1565
    # lw $t9, -32688($gp) # &sub_0db50000
    addiu	$t9,$t9,-4412
    bal __glChangeBothMaterialColors
    move	$a0,$s0
    ld	$ra,16($sp)
    b	.L0db4f284
    ld	$s0,0($sp)
.end __glValidateLighting

# Function: __glGenericPickColorMaterialProcs
# Declared: Line 1569 (Source lines: 1570-1648)
# Address: 0x0db4f2ac - 0x0db4f3f8 (Size: 332 bytes, Frame: 0)
.globl __glGenericPickColorMaterialProcs
.ent __glGenericPickColorMaterialProcs
__glGenericPickColorMaterialProcs:
    # Line 1570
    lbu	$v0,3104($a0)
    lui	$v1,0xb
    addiu	$v1,$v1,-3092
    beqz	$v0,.L0db4f3a4
    addu	$at,$t9,$v1
    lw	$a3,1696($a0)
    # Line 1573
    li	$v1,1029
    # Line 1570
    andi	$a1,$a3,0x80
    beqz	$a1,.L0db4f330
    # Line 1573
    li	$v0,1028
    lw	$a3,1296($a0)
    li	$a2,1032
    beq	$a3,$a2,.L0db4f358
    # Line 1575
    la	$a1,__glChangeBothMaterialColors
    # Line 1573
    beq	$a3,$v0,.L0db4f368
    # Line 1580
    la	$a2,__glChangeOneMaterialColor
    # Line 1573
    beq	$a3,$v1,.L0db4f38c
    # Line 1586
    addiu	$v0,$a0,1408
.L0db4f2f4:
    # Line 1590
    lw	$a3,1300($a0)
    li	$v0,4608
    li	$a1,5632
    beq	$a3,$a1,.L0db4f3b0
    li	$a2,4610
    beq	$a3,$a2,.L0db4f3c0
    li	$a1,5634
    beq	$a3,$v0,.L0db4f3d0
    li	$v1,4609
    beql	$a3,$v1,.L0db4f3e0
    # Line 1622
    la	$a1,sub_0db50000
    # Line 1590
    beq	$a3,$a1,.L0db4f380
    # Line 1625
    la	$a1,sub_0db50000
    # Line 1648
    jr	$ra
    nop
.L0db4f330:
    # Line 1628
    andi	$a2,$a3,0x40
    beqz	$a2,.L0db4f3f0
    # Line 1638
    la	$a2,__glClampAndScaleColor
    # Line 1628
    lw	$v0,31548($a0)
    nor	$v0,$v0,$zero
    andi	$v0,$v0,0x1
    beqz	$v0,.L0db4f3ec
    # Line 1636
    la	$v1,__glNop
    # Line 1648
    jr	$ra
    # Line 1636
    sw	$v1,12072($a0)
.L0db4f358:
    # Line 1577
    sw	$zero,28244($a0)
    # Line 1576
    sw	$zero,28240($a0)
    # Line 1578
    b	.L0db4f2f4
    # Line 1575
    sw	$a1,12072($a0)
.L0db4f368:
    # Line 1580
    sw	$a2,12072($a0)
    # Line 1581
    addiu	$v0,$a0,1328
    # Line 1582
    addiu	$v1,$a0,28156
    sw	$v1,28244($a0)
    # Line 1583
    b	.L0db4f2f4
    # Line 1581
    sw	$v0,28240($a0)
.L0db4f380:
    # Line 1625
    addiu	$a1,$a1,-6096
    # Line 1648
    jr	$ra
    # Line 1625
    sw	$a1,12088($a0)
.L0db4f38c:
    # Line 1587
    addiu	$v1,$a0,28196
    sw	$v1,28244($a0)
    # Line 1585
    la	$a2,__glChangeOneMaterialColor
    # Line 1586
    sw	$v0,28240($a0)
    b	.L0db4f2f4
    # Line 1585
    sw	$a2,12072($a0)
.L0db4f3a4:
    # Line 1646
    la	$a1,__glNop
    # Line 1648
    jr	$ra
    # Line 1646
    sw	$a1,12072($a0)
.L0db4f3b0:
    # Line 1613
    la	$a2,sub_0db50000
    addiu	$a2,$a2,-6736
    # Line 1648
    jr	$ra
    # Line 1613
    sw	$a2,12088($a0)
.L0db4f3c0:
    # Line 1616
    la	$v0,sub_0db50000
    addiu	$v0,$v0,-6608
    # Line 1648
    jr	$ra
    # Line 1616
    sw	$v0,12088($a0)
.L0db4f3d0:
    # Line 1619
    la	$v1,sub_0db50000
    addiu	$v1,$v1,-6480
    # Line 1648
    jr	$ra
    # Line 1619
    sw	$v1,12088($a0)
.L0db4f3e0:
    # Line 1622
    addiu	$a1,$a1,-6292
    # Line 1648
    jr	$ra
    # Line 1622
    sw	$a1,12088($a0)
.L0db4f3ec:
    # Line 1638
    la	$a2,__glClampAndScaleColor
.L0db4f3f0:
    # Line 1648
    jr	$ra
    # Line 1638
    sw	$a2,12072($a0)
.end __glGenericPickColorMaterialProcs

.rdata
_lit_3c8efa35:
    .word 0x3c8efa35
_lit_3de147ae:
    .word 0x3de147ae
_lit_3e99999a:
    .word 0x3e99999a
_lit_3f170a3d:
    .word 0x3f170a3d
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_43340000:
    .word 0x43340000

