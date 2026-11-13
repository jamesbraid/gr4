# Source: g_lcomp.c
# Category: gl
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c g_lcomp.c
# Total Functions: 308

.text

# Function: __gllc_ListBase
# Declared: Line 38 (Source lines: 39-50)
# Address: 0x0dbaa1b4 - 0x0dbaa230 (Size: 124 bytes, Frame: 48)
.globl __gllc_ListBase
.ent __gllc_ListBase
__gllc_ListBase:
    # Line 44
    li	$a1,4
    # Line 39
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 42
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 39
    lui	$v0,0x5
    addiu	$v0,$v0,17636
    addu	$gp,$t9,$v0
    # Line 44
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaa1fc
    # Line 45
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbaa1fc:
    # Line 49
    la	$a2,__glle_ListBase
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 46
    li	$v1,2
    # Line 49
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 48
    ld	$a3,0($sp)
    # Line 46
    sh	$v1,12($v0)
    # Line 49
    jal	__glDlistAppendOp
    # Line 48
    sw	$a3,16($v0)
    # Line 50
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_ListBase

# Function: __gllc_Color3b
# Declared: Line 55 (Source lines: 56-70)
# Address: 0x0dbaa230 - 0x0dbaa2d4 (Size: 164 bytes, Frame: 208)
.globl __gllc_Color3b
.ent __gllc_Color3b
__gllc_Color3b:
    # Line 56
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 61
    li	$a1,4
    sd	$a2,24($sp)
    sd	$a0,0($sp)
    # Line 59
    lw	$at,__glCurrentContext
    sd	$gp,32($sp)
    # Line 56
    lui	$v0,0x5
    addiu	$v0,$v0,17512
    addu	$gp,$t9,$v0
    # Line 61
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,40($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaa280
    # Line 62
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbaa280:
    # Line 69
    la	$a2,__glle_Color3bv
    # Line 63
    li	$a4,5
    sh	$a4,12($v0)
    # Line 67
    ld	$a0,24($sp)
    # Line 65
    ld	$a3,0($sp)
    # Line 66
    ld	$a1,16($sp)
    # Line 67
    sb	$a0,18($v0)
    # Line 65
    sb	$a3,16($v0)
    # Line 68
    ld	$a3,8($sp)
    # Line 66
    sb	$a1,17($v0)
    # Line 69
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 68
    lw	$v1,4696($a3)
    # Line 69
    move	$a1,$v0
    move	$a0,$a3
    # Line 68
    ori	$v1,$v1,0x4
    # Line 69
    jal	__glDlistAppendOp
    # Line 68
    sw	$v1,4696($a3)
    # Line 70
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_Color3b

# Function: __gllc_Color3bv
# Declared: Line 73 (Source lines: 74-88)
# Address: 0x0dbaa2d4 - 0x0dbaa374 (Size: 160 bytes, Frame: 48)
.globl __gllc_Color3bv
.ent __gllc_Color3bv
__gllc_Color3bv:
    # Line 79
    li	$a1,4
    # Line 74
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 77
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 74
    lui	$v0,0x5
    addiu	$v0,$v0,17348
    addu	$gp,$t9,$v0
    # Line 79
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaa31c
    # Line 80
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbaa31c:
    # Line 83
    ld	$a0,0($sp)
    # Line 81
    li	$a3,5
    sh	$a3,12($v0)
    # Line 83
    lb	$a2,0($a0)
    sb	$a2,16($v0)
    # Line 84
    lb	$a1,1($a0)
    sb	$a1,17($v0)
    # Line 85
    lb	$a0,2($a0)
    # Line 87
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 86
    ld	$a3,8($sp)
    # Line 85
    sb	$a0,18($v0)
    # Line 87
    la	$a2,__glle_Color3bv
    # Line 86
    lw	$v1,4696($a3)
    # Line 87
    move	$a1,$v0
    move	$a0,$a3
    # Line 86
    ori	$v1,$v1,0x4
    # Line 87
    jal	__glDlistAppendOp
    # Line 86
    sw	$v1,4696($a3)
    # Line 88
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Color3bv

# Function: __gllc_Color3d
# Declared: Line 91 (Source lines: 92-107)
# Address: 0x0dbaa374 - 0x0dbaa41c (Size: 168 bytes, Frame: 208)
.globl __gllc_Color3d
.ent __gllc_Color3d
__gllc_Color3d:
    # Line 97
    li	$a1,24
    # Line 92
    addiu	$sp,$sp,-80
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,32($sp)
    lui	$at,0x5
    addiu	$at,$at,17188
    addu	$gp,$t9,$at
    # Line 97
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 95
    lw	$a0,__glCurrentContext
    sd	$ra,40($sp)
    # Line 97
    jal	__glDlistAllocOp2
    sd	$a0,24($sp)
    bnez	$v0,.L0dbaa3c0
    # Line 98
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbaa3c0:
    # Line 106
    la	$a2,__glle_Color3dv
    # Line 99
    li	$a0,6
    sh	$a0,12($v0)
    # Line 100
    li	$v1,1
    sb	$v1,14($v0)
    # Line 105
    ld	$v1,24($sp)
    # Line 102
    ldc1	$f2,0($sp)
    # Line 103
    ldc1	$f1,8($sp)
    # Line 104
    ldc1	$f0,16($sp)
    # Line 102
    sdc1	$f2,16($v0)
    # Line 103
    sdc1	$f1,24($v0)
    # Line 104
    sdc1	$f0,32($v0)
    # Line 106
    move	$a1,$v0
    # Line 105
    lw	$v0,4696($v1)
    # Line 106
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 105
    ori	$v0,$v0,0x4
    # Line 106
    jal	__glDlistAppendOp
    # Line 105
    sw	$v0,4696($v1)
    # Line 107
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_Color3d

# Function: __gllc_Color3dv
# Declared: Line 110 (Source lines: 111-126)
# Address: 0x0dbaa41c - 0x0dbaa4c4 (Size: 168 bytes, Frame: 48)
.globl __gllc_Color3dv
.ent __gllc_Color3dv
__gllc_Color3dv:
    # Line 116
    li	$a1,24
    # Line 111
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 114
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 111
    lui	$v0,0x5
    addiu	$v0,$v0,17020
    addu	$gp,$t9,$v0
    # Line 116
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaa464
    # Line 117
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbaa464:
    # Line 121
    ld	$a0,0($sp)
    # Line 118
    li	$a2,6
    # Line 119
    li	$a1,1
    sb	$a1,14($v0)
    # Line 118
    sh	$a2,12($v0)
    # Line 121
    ldc1	$f2,0($a0)
    sdc1	$f2,16($v0)
    # Line 122
    ldc1	$f1,8($a0)
    sdc1	$f1,24($v0)
    # Line 123
    ldc1	$f0,16($a0)
    # Line 125
    la	$a2,__glle_Color3dv
    # Line 124
    ld	$a3,8($sp)
    # Line 123
    sdc1	$f0,32($v0)
    # Line 125
    move	$a1,$v0
    # Line 124
    lw	$v1,4696($a3)
    # Line 125
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 124
    ori	$v1,$v1,0x4
    # Line 125
    jal	__glDlistAppendOp
    # Line 124
    sw	$v1,4696($a3)
    # Line 126
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Color3dv

# Function: __gllc_Color3f
# Declared: Line 129 (Source lines: 130-144)
# Address: 0x0dbaa4c4 - 0x0dbaa564 (Size: 160 bytes, Frame: 208)
.globl __gllc_Color3f
.ent __gllc_Color3f
__gllc_Color3f:
    # Line 135
    li	$a1,12
    # Line 130
    addiu	$sp,$sp,-80
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,32($sp)
    lui	$at,0x5
    addiu	$at,$at,16852
    addu	$gp,$t9,$at
    # Line 135
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 133
    lw	$a0,__glCurrentContext
    sd	$ra,40($sp)
    # Line 135
    jal	__glDlistAllocOp2
    sd	$a0,24($sp)
    bnez	$v0,.L0dbaa510
    # Line 136
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbaa510:
    # Line 143
    la	$a2,__glle_Color3fv
    # Line 137
    li	$v1,7
    sh	$v1,12($v0)
    # Line 142
    ld	$v1,24($sp)
    # Line 139
    ldc1	$f2,0($sp)
    # Line 140
    ldc1	$f1,8($sp)
    # Line 141
    ldc1	$f0,16($sp)
    # Line 139
    swc1	$f2,16($v0)
    # Line 140
    swc1	$f1,20($v0)
    # Line 141
    swc1	$f0,24($v0)
    # Line 143
    move	$a1,$v0
    # Line 142
    lw	$v0,4696($v1)
    # Line 143
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 142
    ori	$v0,$v0,0x4
    # Line 143
    jal	__glDlistAppendOp
    # Line 142
    sw	$v0,4696($v1)
    # Line 144
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_Color3f

# Function: __gllc_Color3fv
# Declared: Line 147 (Source lines: 148-162)
# Address: 0x0dbaa564 - 0x0dbaa604 (Size: 160 bytes, Frame: 48)
.globl __gllc_Color3fv
.ent __gllc_Color3fv
__gllc_Color3fv:
    # Line 153
    li	$a1,12
    # Line 148
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 151
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 148
    lui	$v0,0x5
    addiu	$v0,$v0,16692
    addu	$gp,$t9,$v0
    # Line 153
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaa5ac
    # Line 154
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbaa5ac:
    # Line 157
    ld	$a0,0($sp)
    # Line 155
    li	$a1,7
    sh	$a1,12($v0)
    # Line 157
    lwc1	$f2,0($a0)
    swc1	$f2,16($v0)
    # Line 158
    lwc1	$f1,4($a0)
    swc1	$f1,20($v0)
    # Line 159
    lwc1	$f0,8($a0)
    # Line 161
    la	$a2,__glle_Color3fv
    # Line 160
    ld	$a3,8($sp)
    # Line 159
    swc1	$f0,24($v0)
    # Line 161
    move	$a1,$v0
    # Line 160
    lw	$v1,4696($a3)
    # Line 161
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 160
    ori	$v1,$v1,0x4
    # Line 161
    jal	__glDlistAppendOp
    # Line 160
    sw	$v1,4696($a3)
    # Line 162
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Color3fv

# Function: __gllc_Color3i
# Declared: Line 165 (Source lines: 166-180)
# Address: 0x0dbaa604 - 0x0dbaa6a8 (Size: 164 bytes, Frame: 208)
.globl __gllc_Color3i
.ent __gllc_Color3i
__gllc_Color3i:
    # Line 166
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 171
    li	$a1,12
    sd	$a2,24($sp)
    sd	$a0,0($sp)
    # Line 169
    lw	$at,__glCurrentContext
    sd	$gp,32($sp)
    # Line 166
    lui	$v0,0x5
    addiu	$v0,$v0,16532
    addu	$gp,$t9,$v0
    # Line 171
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,40($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaa654
    # Line 172
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbaa654:
    # Line 179
    la	$a2,__glle_Color3iv
    # Line 173
    li	$a4,8
    sh	$a4,12($v0)
    # Line 177
    ld	$a0,24($sp)
    # Line 175
    ld	$a3,0($sp)
    # Line 176
    ld	$a1,16($sp)
    # Line 177
    sw	$a0,24($v0)
    # Line 175
    sw	$a3,16($v0)
    # Line 178
    ld	$a3,8($sp)
    # Line 176
    sw	$a1,20($v0)
    # Line 179
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 178
    lw	$v1,4696($a3)
    # Line 179
    move	$a1,$v0
    move	$a0,$a3
    # Line 178
    ori	$v1,$v1,0x4
    # Line 179
    jal	__glDlistAppendOp
    # Line 178
    sw	$v1,4696($a3)
    # Line 180
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_Color3i

# Function: __gllc_Color3iv
# Declared: Line 183 (Source lines: 184-198)
# Address: 0x0dbaa6a8 - 0x0dbaa748 (Size: 160 bytes, Frame: 48)
.globl __gllc_Color3iv
.ent __gllc_Color3iv
__gllc_Color3iv:
    # Line 189
    li	$a1,12
    # Line 184
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 187
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 184
    lui	$v0,0x5
    addiu	$v0,$v0,16368
    addu	$gp,$t9,$v0
    # Line 189
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaa6f0
    # Line 190
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbaa6f0:
    # Line 193
    ld	$a0,0($sp)
    # Line 191
    li	$a3,8
    sh	$a3,12($v0)
    # Line 193
    lw	$a2,0($a0)
    sw	$a2,16($v0)
    # Line 194
    lw	$a1,4($a0)
    sw	$a1,20($v0)
    # Line 195
    lw	$a0,8($a0)
    # Line 197
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 196
    ld	$a3,8($sp)
    # Line 195
    sw	$a0,24($v0)
    # Line 197
    la	$a2,__glle_Color3iv
    # Line 196
    lw	$v1,4696($a3)
    # Line 197
    move	$a1,$v0
    move	$a0,$a3
    # Line 196
    ori	$v1,$v1,0x4
    # Line 197
    jal	__glDlistAppendOp
    # Line 196
    sw	$v1,4696($a3)
    # Line 198
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Color3iv

# Function: __gllc_Color3s
# Declared: Line 201 (Source lines: 202-216)
# Address: 0x0dbaa748 - 0x0dbaa7ec (Size: 164 bytes, Frame: 208)
.globl __gllc_Color3s
.ent __gllc_Color3s
__gllc_Color3s:
    # Line 202
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 207
    li	$a1,8
    sd	$a2,24($sp)
    sd	$a0,0($sp)
    # Line 205
    lw	$at,__glCurrentContext
    sd	$gp,32($sp)
    # Line 202
    lui	$v0,0x5
    addiu	$v0,$v0,16208
    addu	$gp,$t9,$v0
    # Line 207
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,40($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaa798
    # Line 208
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbaa798:
    # Line 215
    la	$a2,__glle_Color3sv
    # Line 209
    li	$a4,9
    sh	$a4,12($v0)
    # Line 213
    ld	$a0,24($sp)
    # Line 211
    ld	$a3,0($sp)
    # Line 212
    ld	$a1,16($sp)
    # Line 213
    sh	$a0,20($v0)
    # Line 211
    sh	$a3,16($v0)
    # Line 214
    ld	$a3,8($sp)
    # Line 212
    sh	$a1,18($v0)
    # Line 215
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 214
    lw	$v1,4696($a3)
    # Line 215
    move	$a1,$v0
    move	$a0,$a3
    # Line 214
    ori	$v1,$v1,0x4
    # Line 215
    jal	__glDlistAppendOp
    # Line 214
    sw	$v1,4696($a3)
    # Line 216
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_Color3s

# Function: __gllc_Color3sv
# Declared: Line 219 (Source lines: 220-234)
# Address: 0x0dbaa7ec - 0x0dbaa88c (Size: 160 bytes, Frame: 48)
.globl __gllc_Color3sv
.ent __gllc_Color3sv
__gllc_Color3sv:
    # Line 225
    li	$a1,8
    # Line 220
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 223
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 220
    lui	$v0,0x5
    addiu	$v0,$v0,16044
    addu	$gp,$t9,$v0
    # Line 225
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaa834
    # Line 226
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbaa834:
    # Line 229
    ld	$a0,0($sp)
    # Line 227
    li	$a3,9
    sh	$a3,12($v0)
    # Line 229
    lh	$a2,0($a0)
    sh	$a2,16($v0)
    # Line 230
    lh	$a1,2($a0)
    sh	$a1,18($v0)
    # Line 231
    lh	$a0,4($a0)
    # Line 233
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 232
    ld	$a3,8($sp)
    # Line 231
    sh	$a0,20($v0)
    # Line 233
    la	$a2,__glle_Color3sv
    # Line 232
    lw	$v1,4696($a3)
    # Line 233
    move	$a1,$v0
    move	$a0,$a3
    # Line 232
    ori	$v1,$v1,0x4
    # Line 233
    jal	__glDlistAppendOp
    # Line 232
    sw	$v1,4696($a3)
    # Line 234
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Color3sv

# Function: __gllc_Color3ub
# Declared: Line 237 (Source lines: 238-252)
# Address: 0x0dbaa88c - 0x0dbaa930 (Size: 164 bytes, Frame: 208)
.globl __gllc_Color3ub
.ent __gllc_Color3ub
__gllc_Color3ub:
    # Line 238
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 243
    li	$a1,4
    sd	$a2,24($sp)
    sd	$a0,0($sp)
    # Line 241
    lw	$at,__glCurrentContext
    sd	$gp,32($sp)
    # Line 238
    lui	$v0,0x5
    addiu	$v0,$v0,15884
    addu	$gp,$t9,$v0
    # Line 243
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,40($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaa8dc
    # Line 244
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbaa8dc:
    # Line 251
    la	$a2,__glle_Color3ubv
    # Line 245
    li	$a4,10
    sh	$a4,12($v0)
    # Line 249
    ld	$a0,24($sp)
    # Line 247
    ld	$a3,0($sp)
    # Line 248
    ld	$a1,16($sp)
    # Line 249
    sb	$a0,18($v0)
    # Line 247
    sb	$a3,16($v0)
    # Line 250
    ld	$a3,8($sp)
    # Line 248
    sb	$a1,17($v0)
    # Line 251
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 250
    lw	$v1,4696($a3)
    # Line 251
    move	$a1,$v0
    move	$a0,$a3
    # Line 250
    ori	$v1,$v1,0x4
    # Line 251
    jal	__glDlistAppendOp
    # Line 250
    sw	$v1,4696($a3)
    # Line 252
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_Color3ub

# Function: __gllc_Color3ubv
# Declared: Line 255 (Source lines: 256-270)
# Address: 0x0dbaa930 - 0x0dbaa9d0 (Size: 160 bytes, Frame: 48)
.globl __gllc_Color3ubv
.ent __gllc_Color3ubv
__gllc_Color3ubv:
    # Line 261
    li	$a1,4
    # Line 256
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 259
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 256
    lui	$v0,0x5
    addiu	$v0,$v0,15720
    addu	$gp,$t9,$v0
    # Line 261
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaa978
    # Line 262
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbaa978:
    # Line 265
    ld	$a0,0($sp)
    # Line 263
    li	$a3,10
    sh	$a3,12($v0)
    # Line 265
    lbu	$a2,0($a0)
    sb	$a2,16($v0)
    # Line 266
    lbu	$a1,1($a0)
    sb	$a1,17($v0)
    # Line 267
    lbu	$a0,2($a0)
    # Line 269
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 268
    ld	$a3,8($sp)
    # Line 267
    sb	$a0,18($v0)
    # Line 269
    la	$a2,__glle_Color3ubv
    # Line 268
    lw	$v1,4696($a3)
    # Line 269
    move	$a1,$v0
    move	$a0,$a3
    # Line 268
    ori	$v1,$v1,0x4
    # Line 269
    jal	__glDlistAppendOp
    # Line 268
    sw	$v1,4696($a3)
    # Line 270
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Color3ubv

# Function: __gllc_Color3ui
# Declared: Line 273 (Source lines: 274-288)
# Address: 0x0dbaa9d0 - 0x0dbaaa74 (Size: 164 bytes, Frame: 208)
.globl __gllc_Color3ui
.ent __gllc_Color3ui
__gllc_Color3ui:
    # Line 274
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 279
    li	$a1,12
    sd	$a2,24($sp)
    sd	$a0,0($sp)
    # Line 277
    lw	$at,__glCurrentContext
    sd	$gp,32($sp)
    # Line 274
    lui	$v0,0x5
    addiu	$v0,$v0,15560
    addu	$gp,$t9,$v0
    # Line 279
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,40($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaaa20
    # Line 280
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbaaa20:
    # Line 287
    la	$a2,__glle_Color3uiv
    # Line 281
    li	$a4,11
    sh	$a4,12($v0)
    # Line 285
    ld	$a0,24($sp)
    # Line 283
    ld	$a3,0($sp)
    # Line 284
    ld	$a1,16($sp)
    # Line 285
    sw	$a0,24($v0)
    # Line 283
    sw	$a3,16($v0)
    # Line 286
    ld	$a3,8($sp)
    # Line 284
    sw	$a1,20($v0)
    # Line 287
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 286
    lw	$v1,4696($a3)
    # Line 287
    move	$a1,$v0
    move	$a0,$a3
    # Line 286
    ori	$v1,$v1,0x4
    # Line 287
    jal	__glDlistAppendOp
    # Line 286
    sw	$v1,4696($a3)
    # Line 288
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_Color3ui

# Function: __gllc_Color3uiv
# Declared: Line 291 (Source lines: 292-306)
# Address: 0x0dbaaa74 - 0x0dbaab14 (Size: 160 bytes, Frame: 48)
.globl __gllc_Color3uiv
.ent __gllc_Color3uiv
__gllc_Color3uiv:
    # Line 297
    li	$a1,12
    # Line 292
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 295
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 292
    lui	$v0,0x5
    addiu	$v0,$v0,15396
    addu	$gp,$t9,$v0
    # Line 297
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaaabc
    # Line 298
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbaaabc:
    # Line 301
    ld	$a0,0($sp)
    # Line 299
    li	$a3,11
    sh	$a3,12($v0)
    # Line 301
    lw	$a2,0($a0)
    sw	$a2,16($v0)
    # Line 302
    lw	$a1,4($a0)
    sw	$a1,20($v0)
    # Line 303
    lw	$a0,8($a0)
    # Line 305
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 304
    ld	$a3,8($sp)
    # Line 303
    sw	$a0,24($v0)
    # Line 305
    la	$a2,__glle_Color3uiv
    # Line 304
    lw	$v1,4696($a3)
    # Line 305
    move	$a1,$v0
    move	$a0,$a3
    # Line 304
    ori	$v1,$v1,0x4
    # Line 305
    jal	__glDlistAppendOp
    # Line 304
    sw	$v1,4696($a3)
    # Line 306
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Color3uiv

# Function: __gllc_Color3us
# Declared: Line 309 (Source lines: 310-324)
# Address: 0x0dbaab14 - 0x0dbaabb8 (Size: 164 bytes, Frame: 208)
.globl __gllc_Color3us
.ent __gllc_Color3us
__gllc_Color3us:
    # Line 310
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 315
    li	$a1,8
    sd	$a2,24($sp)
    sd	$a0,0($sp)
    # Line 313
    lw	$at,__glCurrentContext
    sd	$gp,32($sp)
    # Line 310
    lui	$v0,0x5
    addiu	$v0,$v0,15236
    addu	$gp,$t9,$v0
    # Line 315
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,40($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaab64
    # Line 316
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbaab64:
    # Line 323
    la	$a2,__glle_Color3usv
    # Line 317
    li	$a4,12
    sh	$a4,12($v0)
    # Line 321
    ld	$a0,24($sp)
    # Line 319
    ld	$a3,0($sp)
    # Line 320
    ld	$a1,16($sp)
    # Line 321
    sh	$a0,20($v0)
    # Line 319
    sh	$a3,16($v0)
    # Line 322
    ld	$a3,8($sp)
    # Line 320
    sh	$a1,18($v0)
    # Line 323
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 322
    lw	$v1,4696($a3)
    # Line 323
    move	$a1,$v0
    move	$a0,$a3
    # Line 322
    ori	$v1,$v1,0x4
    # Line 323
    jal	__glDlistAppendOp
    # Line 322
    sw	$v1,4696($a3)
    # Line 324
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_Color3us

# Function: __gllc_Color3usv
# Declared: Line 327 (Source lines: 328-342)
# Address: 0x0dbaabb8 - 0x0dbaac58 (Size: 160 bytes, Frame: 48)
.globl __gllc_Color3usv
.ent __gllc_Color3usv
__gllc_Color3usv:
    # Line 333
    li	$a1,8
    # Line 328
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 331
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 328
    lui	$v0,0x5
    addiu	$v0,$v0,15072
    addu	$gp,$t9,$v0
    # Line 333
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaac00
    # Line 334
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbaac00:
    # Line 337
    ld	$a0,0($sp)
    # Line 335
    li	$a3,12
    sh	$a3,12($v0)
    # Line 337
    lhu	$a2,0($a0)
    sh	$a2,16($v0)
    # Line 338
    lhu	$a1,2($a0)
    sh	$a1,18($v0)
    # Line 339
    lhu	$a0,4($a0)
    # Line 341
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 340
    ld	$a3,8($sp)
    # Line 339
    sh	$a0,20($v0)
    # Line 341
    la	$a2,__glle_Color3usv
    # Line 340
    lw	$v1,4696($a3)
    # Line 341
    move	$a1,$v0
    move	$a0,$a3
    # Line 340
    ori	$v1,$v1,0x4
    # Line 341
    jal	__glDlistAppendOp
    # Line 340
    sw	$v1,4696($a3)
    # Line 342
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Color3usv

# Function: __gllc_Color4b
# Declared: Line 345 (Source lines: 346-361)
# Address: 0x0dbaac58 - 0x0dbaad08 (Size: 176 bytes, Frame: 224)
.globl __gllc_Color4b
.ent __gllc_Color4b
__gllc_Color4b:
    # Line 346
    addiu	$sp,$sp,-96
    sd	$a1,24($sp)
    # Line 351
    li	$a1,4
    sd	$a3,16($sp)
    sd	$a2,32($sp)
    sd	$a0,0($sp)
    # Line 349
    lw	$at,__glCurrentContext
    sd	$gp,40($sp)
    # Line 346
    lui	$v0,0x5
    addiu	$v0,$v0,14912
    addu	$gp,$t9,$v0
    # Line 351
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,48($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaacac
    # Line 352
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbaacac:
    # Line 360
    la	$a2,__glle_Color4bv
    # Line 353
    li	$a5,13
    sh	$a5,12($v0)
    # Line 355
    ld	$a4,0($sp)
    # Line 358
    ld	$a0,16($sp)
    # Line 357
    ld	$a1,32($sp)
    # Line 356
    ld	$a3,24($sp)
    # Line 358
    sb	$a0,19($v0)
    # Line 357
    sb	$a1,18($v0)
    # Line 356
    sb	$a3,17($v0)
    # Line 359
    ld	$a3,8($sp)
    # Line 355
    sb	$a4,16($v0)
    # Line 360
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 359
    lw	$v1,4696($a3)
    # Line 360
    move	$a1,$v0
    move	$a0,$a3
    # Line 359
    ori	$v1,$v1,0x4
    # Line 360
    jal	__glDlistAppendOp
    # Line 359
    sw	$v1,4696($a3)
    # Line 361
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_Color4b

# Function: __gllc_Color4bv
# Declared: Line 364 (Source lines: 365-380)
# Address: 0x0dbaad08 - 0x0dbaadb0 (Size: 168 bytes, Frame: 48)
.globl __gllc_Color4bv
.ent __gllc_Color4bv
__gllc_Color4bv:
    # Line 370
    li	$a1,4
    # Line 365
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 368
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 365
    lui	$v0,0x5
    addiu	$v0,$v0,14736
    addu	$gp,$t9,$v0
    # Line 370
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaad50
    # Line 371
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbaad50:
    # Line 374
    ld	$a0,0($sp)
    # Line 372
    li	$a4,13
    sh	$a4,12($v0)
    # Line 374
    lb	$a3,0($a0)
    sb	$a3,16($v0)
    # Line 375
    lb	$a2,1($a0)
    sb	$a2,17($v0)
    # Line 376
    lb	$a1,2($a0)
    sb	$a1,18($v0)
    # Line 377
    lb	$a0,3($a0)
    # Line 379
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 378
    ld	$a3,8($sp)
    # Line 377
    sb	$a0,19($v0)
    # Line 379
    la	$a2,__glle_Color4bv
    # Line 378
    lw	$v1,4696($a3)
    # Line 379
    move	$a1,$v0
    move	$a0,$a3
    # Line 378
    ori	$v1,$v1,0x4
    # Line 379
    jal	__glDlistAppendOp
    # Line 378
    sw	$v1,4696($a3)
    # Line 380
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Color4bv

# Function: __gllc_Color4d
# Declared: Line 383 (Source lines: 384-400)
# Address: 0x0dbaadb0 - 0x0dbaae64 (Size: 180 bytes, Frame: 224)
.globl __gllc_Color4d
.ent __gllc_Color4d
__gllc_Color4d:
    # Line 389
    li	$a1,32
    # Line 384
    addiu	$sp,$sp,-96
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,40($sp)
    lui	$at,0x5
    addiu	$at,$at,14568
    addu	$gp,$t9,$at
    # Line 389
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 387
    lw	$a0,__glCurrentContext
    sd	$ra,48($sp)
    # Line 389
    jal	__glDlistAllocOp2
    sd	$a0,32($sp)
    bnez	$v0,.L0dbaae00
    # Line 390
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbaae00:
    # Line 399
    la	$a2,__glle_Color4dv
    # Line 391
    li	$a0,14
    sh	$a0,12($v0)
    # Line 392
    li	$v1,1
    sb	$v1,14($v0)
    # Line 398
    ld	$v1,32($sp)
    # Line 397
    ldc1	$f0,24($sp)
    # Line 394
    ldc1	$f3,0($sp)
    # Line 395
    ldc1	$f2,8($sp)
    # Line 396
    ldc1	$f1,16($sp)
    # Line 394
    sdc1	$f3,16($v0)
    # Line 395
    sdc1	$f2,24($v0)
    # Line 396
    sdc1	$f1,32($v0)
    # Line 397
    sdc1	$f0,40($v0)
    # Line 399
    move	$a1,$v0
    # Line 398
    lw	$v0,4696($v1)
    # Line 399
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 398
    ori	$v0,$v0,0x4
    # Line 399
    jal	__glDlistAppendOp
    # Line 398
    sw	$v0,4696($v1)
    # Line 400
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_Color4d

# Function: __gllc_Color4dv
# Declared: Line 403 (Source lines: 404-420)
# Address: 0x0dbaae64 - 0x0dbaaf14 (Size: 176 bytes, Frame: 48)
.globl __gllc_Color4dv
.ent __gllc_Color4dv
__gllc_Color4dv:
    # Line 409
    li	$a1,32
    # Line 404
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 407
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 404
    lui	$v0,0x5
    addiu	$v0,$v0,14388
    addu	$gp,$t9,$v0
    # Line 409
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaaeac
    # Line 410
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbaaeac:
    # Line 414
    ld	$a0,0($sp)
    # Line 411
    li	$a2,14
    # Line 412
    li	$a1,1
    sb	$a1,14($v0)
    # Line 411
    sh	$a2,12($v0)
    # Line 414
    ldc1	$f3,0($a0)
    sdc1	$f3,16($v0)
    # Line 415
    ldc1	$f2,8($a0)
    sdc1	$f2,24($v0)
    # Line 416
    ldc1	$f1,16($a0)
    sdc1	$f1,32($v0)
    # Line 417
    ldc1	$f0,24($a0)
    # Line 419
    la	$a2,__glle_Color4dv
    # Line 418
    ld	$a3,8($sp)
    # Line 417
    sdc1	$f0,40($v0)
    # Line 419
    move	$a1,$v0
    # Line 418
    lw	$v1,4696($a3)
    # Line 419
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 418
    ori	$v1,$v1,0x4
    # Line 419
    jal	__glDlistAppendOp
    # Line 418
    sw	$v1,4696($a3)
    # Line 420
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Color4dv

# Function: __gllc_Color4f
# Declared: Line 423 (Source lines: 424-439)
# Address: 0x0dbaaf14 - 0x0dbaafc0 (Size: 172 bytes, Frame: 224)
.globl __gllc_Color4f
.ent __gllc_Color4f
__gllc_Color4f:
    # Line 429
    li	$a1,16
    # Line 424
    addiu	$sp,$sp,-96
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,40($sp)
    lui	$at,0x5
    addiu	$at,$at,14212
    addu	$gp,$t9,$at
    # Line 429
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 427
    lw	$a0,__glCurrentContext
    sd	$ra,48($sp)
    # Line 429
    jal	__glDlistAllocOp2
    sd	$a0,32($sp)
    bnez	$v0,.L0dbaaf64
    # Line 430
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbaaf64:
    # Line 438
    la	$a2,__glle_Color4fv
    # Line 431
    li	$v1,15
    sh	$v1,12($v0)
    # Line 437
    ld	$v1,32($sp)
    # Line 436
    ldc1	$f0,24($sp)
    # Line 433
    ldc1	$f3,0($sp)
    # Line 434
    ldc1	$f2,8($sp)
    # Line 435
    ldc1	$f1,16($sp)
    # Line 433
    swc1	$f3,16($v0)
    # Line 434
    swc1	$f2,20($v0)
    # Line 435
    swc1	$f1,24($v0)
    # Line 436
    swc1	$f0,28($v0)
    # Line 438
    move	$a1,$v0
    # Line 437
    lw	$v0,4696($v1)
    # Line 438
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 437
    ori	$v0,$v0,0x4
    # Line 438
    jal	__glDlistAppendOp
    # Line 437
    sw	$v0,4696($v1)
    # Line 439
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_Color4f

# Function: __gllc_Color4fv
# Declared: Line 442 (Source lines: 443-458)
# Address: 0x0dbaafc0 - 0x0dbab068 (Size: 168 bytes, Frame: 48)
.globl __gllc_Color4fv
.ent __gllc_Color4fv
__gllc_Color4fv:
    # Line 448
    li	$a1,16
    # Line 443
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 446
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 443
    lui	$v0,0x5
    addiu	$v0,$v0,14040
    addu	$gp,$t9,$v0
    # Line 448
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbab008
    # Line 449
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbab008:
    # Line 452
    ld	$a0,0($sp)
    # Line 450
    li	$a1,15
    sh	$a1,12($v0)
    # Line 452
    lwc1	$f3,0($a0)
    swc1	$f3,16($v0)
    # Line 453
    lwc1	$f2,4($a0)
    swc1	$f2,20($v0)
    # Line 454
    lwc1	$f1,8($a0)
    swc1	$f1,24($v0)
    # Line 455
    lwc1	$f0,12($a0)
    # Line 457
    la	$a2,__glle_Color4fv
    # Line 456
    ld	$a3,8($sp)
    # Line 455
    swc1	$f0,28($v0)
    # Line 457
    move	$a1,$v0
    # Line 456
    lw	$v1,4696($a3)
    # Line 457
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 456
    ori	$v1,$v1,0x4
    # Line 457
    jal	__glDlistAppendOp
    # Line 456
    sw	$v1,4696($a3)
    # Line 458
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Color4fv

# Function: __gllc_Color4i
# Declared: Line 461 (Source lines: 462-477)
# Address: 0x0dbab068 - 0x0dbab118 (Size: 176 bytes, Frame: 224)
.globl __gllc_Color4i
.ent __gllc_Color4i
__gllc_Color4i:
    # Line 462
    addiu	$sp,$sp,-96
    sd	$a1,24($sp)
    # Line 467
    li	$a1,16
    sd	$a3,16($sp)
    sd	$a2,32($sp)
    sd	$a0,0($sp)
    # Line 465
    lw	$at,__glCurrentContext
    sd	$gp,40($sp)
    # Line 462
    lui	$v0,0x5
    addiu	$v0,$v0,13872
    addu	$gp,$t9,$v0
    # Line 467
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,48($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbab0bc
    # Line 468
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbab0bc:
    # Line 476
    la	$a2,__glle_Color4iv
    # Line 469
    li	$a5,16
    sh	$a5,12($v0)
    # Line 471
    ld	$a4,0($sp)
    # Line 474
    ld	$a0,16($sp)
    # Line 473
    ld	$a1,32($sp)
    # Line 472
    ld	$a3,24($sp)
    # Line 474
    sw	$a0,28($v0)
    # Line 473
    sw	$a1,24($v0)
    # Line 472
    sw	$a3,20($v0)
    # Line 475
    ld	$a3,8($sp)
    # Line 471
    sw	$a4,16($v0)
    # Line 476
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 475
    lw	$v1,4696($a3)
    # Line 476
    move	$a1,$v0
    move	$a0,$a3
    # Line 475
    ori	$v1,$v1,0x4
    # Line 476
    jal	__glDlistAppendOp
    # Line 475
    sw	$v1,4696($a3)
    # Line 477
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_Color4i

# Function: __gllc_Color4iv
# Declared: Line 480 (Source lines: 481-496)
# Address: 0x0dbab118 - 0x0dbab1c0 (Size: 168 bytes, Frame: 48)
.globl __gllc_Color4iv
.ent __gllc_Color4iv
__gllc_Color4iv:
    # Line 486
    li	$a1,16
    # Line 481
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 484
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 481
    lui	$v0,0x5
    addiu	$v0,$v0,13696
    addu	$gp,$t9,$v0
    # Line 486
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbab160
    # Line 487
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbab160:
    # Line 490
    ld	$a0,0($sp)
    # Line 488
    li	$a4,16
    sh	$a4,12($v0)
    # Line 490
    lw	$a3,0($a0)
    sw	$a3,16($v0)
    # Line 491
    lw	$a2,4($a0)
    sw	$a2,20($v0)
    # Line 492
    lw	$a1,8($a0)
    sw	$a1,24($v0)
    # Line 493
    lw	$a0,12($a0)
    # Line 495
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 494
    ld	$a3,8($sp)
    # Line 493
    sw	$a0,28($v0)
    # Line 495
    la	$a2,__glle_Color4iv
    # Line 494
    lw	$v1,4696($a3)
    # Line 495
    move	$a1,$v0
    move	$a0,$a3
    # Line 494
    ori	$v1,$v1,0x4
    # Line 495
    jal	__glDlistAppendOp
    # Line 494
    sw	$v1,4696($a3)
    # Line 496
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Color4iv

# Function: __gllc_Color4s
# Declared: Line 499 (Source lines: 500-515)
# Address: 0x0dbab1c0 - 0x0dbab270 (Size: 176 bytes, Frame: 224)
.globl __gllc_Color4s
.ent __gllc_Color4s
__gllc_Color4s:
    # Line 500
    addiu	$sp,$sp,-96
    sd	$a1,24($sp)
    # Line 505
    li	$a1,8
    sd	$a3,16($sp)
    sd	$a2,32($sp)
    sd	$a0,0($sp)
    # Line 503
    lw	$at,__glCurrentContext
    sd	$gp,40($sp)
    # Line 500
    lui	$v0,0x5
    addiu	$v0,$v0,13528
    addu	$gp,$t9,$v0
    # Line 505
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,48($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbab214
    # Line 506
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbab214:
    # Line 514
    la	$a2,__glle_Color4sv
    # Line 507
    li	$a5,17
    sh	$a5,12($v0)
    # Line 509
    ld	$a4,0($sp)
    # Line 512
    ld	$a0,16($sp)
    # Line 511
    ld	$a1,32($sp)
    # Line 510
    ld	$a3,24($sp)
    # Line 512
    sh	$a0,22($v0)
    # Line 511
    sh	$a1,20($v0)
    # Line 510
    sh	$a3,18($v0)
    # Line 513
    ld	$a3,8($sp)
    # Line 509
    sh	$a4,16($v0)
    # Line 514
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 513
    lw	$v1,4696($a3)
    # Line 514
    move	$a1,$v0
    move	$a0,$a3
    # Line 513
    ori	$v1,$v1,0x4
    # Line 514
    jal	__glDlistAppendOp
    # Line 513
    sw	$v1,4696($a3)
    # Line 515
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_Color4s

# Function: __gllc_Color4sv
# Declared: Line 518 (Source lines: 519-534)
# Address: 0x0dbab270 - 0x0dbab318 (Size: 168 bytes, Frame: 48)
.globl __gllc_Color4sv
.ent __gllc_Color4sv
__gllc_Color4sv:
    # Line 524
    li	$a1,8
    # Line 519
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 522
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 519
    lui	$v0,0x5
    addiu	$v0,$v0,13352
    addu	$gp,$t9,$v0
    # Line 524
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbab2b8
    # Line 525
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbab2b8:
    # Line 528
    ld	$a0,0($sp)
    # Line 526
    li	$a4,17
    sh	$a4,12($v0)
    # Line 528
    lh	$a3,0($a0)
    sh	$a3,16($v0)
    # Line 529
    lh	$a2,2($a0)
    sh	$a2,18($v0)
    # Line 530
    lh	$a1,4($a0)
    sh	$a1,20($v0)
    # Line 531
    lh	$a0,6($a0)
    # Line 533
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 532
    ld	$a3,8($sp)
    # Line 531
    sh	$a0,22($v0)
    # Line 533
    la	$a2,__glle_Color4sv
    # Line 532
    lw	$v1,4696($a3)
    # Line 533
    move	$a1,$v0
    move	$a0,$a3
    # Line 532
    ori	$v1,$v1,0x4
    # Line 533
    jal	__glDlistAppendOp
    # Line 532
    sw	$v1,4696($a3)
    # Line 534
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Color4sv

# Function: __gllc_Color4ub
# Declared: Line 537 (Source lines: 538-553)
# Address: 0x0dbab318 - 0x0dbab3c8 (Size: 176 bytes, Frame: 224)
.globl __gllc_Color4ub
.ent __gllc_Color4ub
__gllc_Color4ub:
    # Line 538
    addiu	$sp,$sp,-96
    sd	$a1,24($sp)
    # Line 543
    li	$a1,4
    sd	$a3,16($sp)
    sd	$a2,32($sp)
    sd	$a0,0($sp)
    # Line 541
    lw	$at,__glCurrentContext
    sd	$gp,40($sp)
    # Line 538
    lui	$v0,0x5
    addiu	$v0,$v0,13184
    addu	$gp,$t9,$v0
    # Line 543
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,48($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbab36c
    # Line 544
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbab36c:
    # Line 552
    la	$a2,__glle_Color4ubv
    # Line 545
    li	$a5,18
    sh	$a5,12($v0)
    # Line 547
    ld	$a4,0($sp)
    # Line 550
    ld	$a0,16($sp)
    # Line 549
    ld	$a1,32($sp)
    # Line 548
    ld	$a3,24($sp)
    # Line 550
    sb	$a0,19($v0)
    # Line 549
    sb	$a1,18($v0)
    # Line 548
    sb	$a3,17($v0)
    # Line 551
    ld	$a3,8($sp)
    # Line 547
    sb	$a4,16($v0)
    # Line 552
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 551
    lw	$v1,4696($a3)
    # Line 552
    move	$a1,$v0
    move	$a0,$a3
    # Line 551
    ori	$v1,$v1,0x4
    # Line 552
    jal	__glDlistAppendOp
    # Line 551
    sw	$v1,4696($a3)
    # Line 553
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_Color4ub

# Function: __gllc_Color4ubv
# Declared: Line 556 (Source lines: 557-572)
# Address: 0x0dbab3c8 - 0x0dbab470 (Size: 168 bytes, Frame: 48)
.globl __gllc_Color4ubv
.ent __gllc_Color4ubv
__gllc_Color4ubv:
    # Line 562
    li	$a1,4
    # Line 557
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 560
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 557
    lui	$v0,0x5
    addiu	$v0,$v0,13008
    addu	$gp,$t9,$v0
    # Line 562
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbab410
    # Line 563
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbab410:
    # Line 566
    ld	$a0,0($sp)
    # Line 564
    li	$a4,18
    sh	$a4,12($v0)
    # Line 566
    lbu	$a3,0($a0)
    sb	$a3,16($v0)
    # Line 567
    lbu	$a2,1($a0)
    sb	$a2,17($v0)
    # Line 568
    lbu	$a1,2($a0)
    sb	$a1,18($v0)
    # Line 569
    lbu	$a0,3($a0)
    # Line 571
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 570
    ld	$a3,8($sp)
    # Line 569
    sb	$a0,19($v0)
    # Line 571
    la	$a2,__glle_Color4ubv
    # Line 570
    lw	$v1,4696($a3)
    # Line 571
    move	$a1,$v0
    move	$a0,$a3
    # Line 570
    ori	$v1,$v1,0x4
    # Line 571
    jal	__glDlistAppendOp
    # Line 570
    sw	$v1,4696($a3)
    # Line 572
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Color4ubv

# Function: __gllc_Color4ui
# Declared: Line 575 (Source lines: 576-591)
# Address: 0x0dbab470 - 0x0dbab520 (Size: 176 bytes, Frame: 224)
.globl __gllc_Color4ui
.ent __gllc_Color4ui
__gllc_Color4ui:
    # Line 576
    addiu	$sp,$sp,-96
    sd	$a1,24($sp)
    # Line 581
    li	$a1,16
    sd	$a3,16($sp)
    sd	$a2,32($sp)
    sd	$a0,0($sp)
    # Line 579
    lw	$at,__glCurrentContext
    sd	$gp,40($sp)
    # Line 576
    lui	$v0,0x5
    addiu	$v0,$v0,12840
    addu	$gp,$t9,$v0
    # Line 581
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,48($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbab4c4
    # Line 582
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbab4c4:
    # Line 590
    la	$a2,__glle_Color4uiv
    # Line 583
    li	$a5,19
    sh	$a5,12($v0)
    # Line 585
    ld	$a4,0($sp)
    # Line 588
    ld	$a0,16($sp)
    # Line 587
    ld	$a1,32($sp)
    # Line 586
    ld	$a3,24($sp)
    # Line 588
    sw	$a0,28($v0)
    # Line 587
    sw	$a1,24($v0)
    # Line 586
    sw	$a3,20($v0)
    # Line 589
    ld	$a3,8($sp)
    # Line 585
    sw	$a4,16($v0)
    # Line 590
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 589
    lw	$v1,4696($a3)
    # Line 590
    move	$a1,$v0
    move	$a0,$a3
    # Line 589
    ori	$v1,$v1,0x4
    # Line 590
    jal	__glDlistAppendOp
    # Line 589
    sw	$v1,4696($a3)
    # Line 591
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_Color4ui

# Function: __gllc_Color4uiv
# Declared: Line 594 (Source lines: 595-610)
# Address: 0x0dbab520 - 0x0dbab5c8 (Size: 168 bytes, Frame: 48)
.globl __gllc_Color4uiv
.ent __gllc_Color4uiv
__gllc_Color4uiv:
    # Line 600
    li	$a1,16
    # Line 595
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 598
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 595
    lui	$v0,0x5
    addiu	$v0,$v0,12664
    addu	$gp,$t9,$v0
    # Line 600
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbab568
    # Line 601
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbab568:
    # Line 604
    ld	$a0,0($sp)
    # Line 602
    li	$a4,19
    sh	$a4,12($v0)
    # Line 604
    lw	$a3,0($a0)
    sw	$a3,16($v0)
    # Line 605
    lw	$a2,4($a0)
    sw	$a2,20($v0)
    # Line 606
    lw	$a1,8($a0)
    sw	$a1,24($v0)
    # Line 607
    lw	$a0,12($a0)
    # Line 609
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 608
    ld	$a3,8($sp)
    # Line 607
    sw	$a0,28($v0)
    # Line 609
    la	$a2,__glle_Color4uiv
    # Line 608
    lw	$v1,4696($a3)
    # Line 609
    move	$a1,$v0
    move	$a0,$a3
    # Line 608
    ori	$v1,$v1,0x4
    # Line 609
    jal	__glDlistAppendOp
    # Line 608
    sw	$v1,4696($a3)
    # Line 610
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Color4uiv

# Function: __gllc_Color4us
# Declared: Line 613 (Source lines: 614-629)
# Address: 0x0dbab5c8 - 0x0dbab678 (Size: 176 bytes, Frame: 224)
.globl __gllc_Color4us
.ent __gllc_Color4us
__gllc_Color4us:
    # Line 614
    addiu	$sp,$sp,-96
    sd	$a1,24($sp)
    # Line 619
    li	$a1,8
    sd	$a3,16($sp)
    sd	$a2,32($sp)
    sd	$a0,0($sp)
    # Line 617
    lw	$at,__glCurrentContext
    sd	$gp,40($sp)
    # Line 614
    lui	$v0,0x5
    addiu	$v0,$v0,12496
    addu	$gp,$t9,$v0
    # Line 619
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,48($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbab61c
    # Line 620
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbab61c:
    # Line 628
    la	$a2,__glle_Color4usv
    # Line 621
    li	$a5,20
    sh	$a5,12($v0)
    # Line 623
    ld	$a4,0($sp)
    # Line 626
    ld	$a0,16($sp)
    # Line 625
    ld	$a1,32($sp)
    # Line 624
    ld	$a3,24($sp)
    # Line 626
    sh	$a0,22($v0)
    # Line 625
    sh	$a1,20($v0)
    # Line 624
    sh	$a3,18($v0)
    # Line 627
    ld	$a3,8($sp)
    # Line 623
    sh	$a4,16($v0)
    # Line 628
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 627
    lw	$v1,4696($a3)
    # Line 628
    move	$a1,$v0
    move	$a0,$a3
    # Line 627
    ori	$v1,$v1,0x4
    # Line 628
    jal	__glDlistAppendOp
    # Line 627
    sw	$v1,4696($a3)
    # Line 629
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_Color4us

# Function: __gllc_Color4usv
# Declared: Line 632 (Source lines: 633-648)
# Address: 0x0dbab678 - 0x0dbab720 (Size: 168 bytes, Frame: 48)
.globl __gllc_Color4usv
.ent __gllc_Color4usv
__gllc_Color4usv:
    # Line 638
    li	$a1,8
    # Line 633
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 636
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 633
    lui	$v0,0x5
    addiu	$v0,$v0,12320
    addu	$gp,$t9,$v0
    # Line 638
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbab6c0
    # Line 639
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbab6c0:
    # Line 642
    ld	$a0,0($sp)
    # Line 640
    li	$a4,20
    sh	$a4,12($v0)
    # Line 642
    lhu	$a3,0($a0)
    sh	$a3,16($v0)
    # Line 643
    lhu	$a2,2($a0)
    sh	$a2,18($v0)
    # Line 644
    lhu	$a1,4($a0)
    sh	$a1,20($v0)
    # Line 645
    lhu	$a0,6($a0)
    # Line 647
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 646
    ld	$a3,8($sp)
    # Line 645
    sh	$a0,22($v0)
    # Line 647
    la	$a2,__glle_Color4usv
    # Line 646
    lw	$v1,4696($a3)
    # Line 647
    move	$a1,$v0
    move	$a0,$a3
    # Line 646
    ori	$v1,$v1,0x4
    # Line 647
    jal	__glDlistAppendOp
    # Line 646
    sw	$v1,4696($a3)
    # Line 648
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Color4usv

# Function: __gllc_EdgeFlag
# Declared: Line 651 (Source lines: 652-663)
# Address: 0x0dbab720 - 0x0dbab79c (Size: 124 bytes, Frame: 48)
.globl __gllc_EdgeFlag
.ent __gllc_EdgeFlag
__gllc_EdgeFlag:
    # Line 657
    li	$a1,4
    # Line 652
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 655
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 652
    lui	$v0,0x5
    addiu	$v0,$v0,12152
    addu	$gp,$t9,$v0
    # Line 657
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbab768
    # Line 658
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbab768:
    # Line 662
    la	$a2,__glle_EdgeFlagv
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 659
    li	$v1,21
    # Line 662
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 661
    ld	$a3,0($sp)
    # Line 659
    sh	$v1,12($v0)
    # Line 662
    jal	__glDlistAppendOp
    # Line 661
    sb	$a3,16($v0)
    # Line 663
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_EdgeFlag

# Function: __gllc_EdgeFlagv
# Declared: Line 666 (Source lines: 667-678)
# Address: 0x0dbab79c - 0x0dbab81c (Size: 128 bytes, Frame: 48)
.globl __gllc_EdgeFlagv
.ent __gllc_EdgeFlagv
__gllc_EdgeFlagv:
    # Line 672
    li	$a1,4
    # Line 667
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 670
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 667
    lui	$v0,0x5
    addiu	$v0,$v0,12028
    addu	$gp,$t9,$v0
    # Line 672
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbab7e4
    # Line 673
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbab7e4:
    # Line 677
    la	$a2,__glle_EdgeFlagv
    move	$a1,$v0
    # Line 676
    ld	$v1,0($sp)
    # Line 674
    li	$a0,21
    sh	$a0,12($v0)
    # Line 677
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 676
    lbu	$v1,0($v1)
    # Line 677
    ld	$a0,8($sp)
    jal	__glDlistAppendOp
    # Line 676
    sb	$v1,16($v0)
    # Line 678
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_EdgeFlagv

# Function: __gllc_End
# Declared: Line 681 (Source lines: 682-690)
# Address: 0x0dbab81c - 0x0dbab888 (Size: 108 bytes, Frame: 32)
.globl __gllc_End
.ent __gllc_End
__gllc_End:
    # Line 686
    move	$a1,$zero
    # Line 682
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x5
    addiu	$at,$at,11900
    addu	$gp,$t9,$at
    # Line 686
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 684
    lw	$a0,__glCurrentContext
    sd	$ra,16($sp)
    # Line 686
    jal	__glDlistAllocOp2
    sd	$a0,0($sp)
    bnez	$v0,.L0dbab85c
    # Line 687
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0dbab85c:
    # Line 689
    la	$a2,__glle_End
    move	$a1,$v0
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    ld	$a0,0($sp)
    # Line 688
    li	$v1,22
    # Line 689
    jal	__glDlistAppendOp
    # Line 688
    sh	$v1,12($v0)
    # Line 690
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __gllc_End

# Function: __gllc_Indexd
# Declared: Line 693 (Source lines: 694-707)
# Address: 0x0dbab888 - 0x0dbab918 (Size: 144 bytes, Frame: 48)
.globl __gllc_Indexd
.ent __gllc_Indexd
__gllc_Indexd:
    # Line 699
    li	$a1,8
    # Line 694
    addiu	$sp,$sp,-48
    sdc1	$f12,0($sp)
    sd	$gp,16($sp)
    lui	$at,0x5
    addiu	$at,$at,11792
    addu	$gp,$t9,$at
    # Line 699
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 697
    lw	$a0,__glCurrentContext
    sd	$ra,24($sp)
    # Line 699
    jal	__glDlistAllocOp2
    sd	$a0,8($sp)
    bnez	$v0,.L0dbab8cc
    # Line 700
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbab8cc:
    # Line 706
    la	$a2,__glle_Indexdv
    # Line 701
    li	$a0,23
    sh	$a0,12($v0)
    # Line 702
    li	$v1,1
    # Line 704
    ldc1	$f0,0($sp)
    # Line 702
    sb	$v1,14($v0)
    # Line 705
    ld	$v1,8($sp)
    # Line 704
    sdc1	$f0,16($v0)
    # Line 706
    move	$a1,$v0
    # Line 705
    lw	$v0,4696($v1)
    # Line 706
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 705
    ori	$v0,$v0,0x10
    # Line 706
    jal	__glDlistAppendOp
    # Line 705
    sw	$v0,4696($v1)
    # Line 707
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Indexd

# Function: __gllc_Indexdv
# Declared: Line 710 (Source lines: 711-724)
# Address: 0x0dbab918 - 0x0dbab9b0 (Size: 152 bytes, Frame: 48)
.globl __gllc_Indexdv
.ent __gllc_Indexdv
__gllc_Indexdv:
    # Line 716
    li	$a1,8
    # Line 711
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 714
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 711
    lui	$v0,0x5
    addiu	$v0,$v0,11648
    addu	$gp,$t9,$v0
    # Line 716
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbab960
    # Line 717
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbab960:
    # Line 721
    ld	$a0,0($sp)
    # Line 718
    li	$a2,23
    # Line 719
    li	$a1,1
    sb	$a1,14($v0)
    # Line 718
    sh	$a2,12($v0)
    # Line 721
    ldc1	$f0,0($a0)
    # Line 723
    la	$a2,__glle_Indexdv
    # Line 722
    ld	$a3,8($sp)
    # Line 721
    sdc1	$f0,16($v0)
    # Line 723
    move	$a1,$v0
    # Line 722
    lw	$v1,4696($a3)
    # Line 723
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 722
    ori	$v1,$v1,0x10
    # Line 723
    jal	__glDlistAppendOp
    # Line 722
    sw	$v1,4696($a3)
    # Line 724
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Indexdv

# Function: __gllc_Indexf
# Declared: Line 727 (Source lines: 728-740)
# Address: 0x0dbab9b0 - 0x0dbaba38 (Size: 136 bytes, Frame: 48)
.globl __gllc_Indexf
.ent __gllc_Indexf
__gllc_Indexf:
    # Line 733
    li	$a1,4
    # Line 728
    addiu	$sp,$sp,-48
    sdc1	$f12,0($sp)
    sd	$gp,16($sp)
    lui	$at,0x5
    addiu	$at,$at,11496
    addu	$gp,$t9,$at
    # Line 733
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 731
    lw	$a0,__glCurrentContext
    sd	$ra,24($sp)
    # Line 733
    jal	__glDlistAllocOp2
    sd	$a0,8($sp)
    bnez	$v0,.L0dbab9f4
    # Line 734
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbab9f4:
    # Line 739
    la	$a2,__glle_Indexfv
    # Line 735
    li	$v1,24
    # Line 737
    ldc1	$f0,0($sp)
    # Line 735
    sh	$v1,12($v0)
    # Line 738
    ld	$v1,8($sp)
    # Line 737
    swc1	$f0,16($v0)
    # Line 739
    move	$a1,$v0
    # Line 738
    lw	$v0,4696($v1)
    # Line 739
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 738
    ori	$v0,$v0,0x10
    # Line 739
    jal	__glDlistAppendOp
    # Line 738
    sw	$v0,4696($v1)
    # Line 740
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Indexf

# Function: __gllc_Indexfv
# Declared: Line 743 (Source lines: 744-756)
# Address: 0x0dbaba38 - 0x0dbabac8 (Size: 144 bytes, Frame: 48)
.globl __gllc_Indexfv
.ent __gllc_Indexfv
__gllc_Indexfv:
    # Line 749
    li	$a1,4
    # Line 744
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 747
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 744
    lui	$v0,0x5
    addiu	$v0,$v0,11360
    addu	$gp,$t9,$v0
    # Line 749
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaba80
    # Line 750
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbaba80:
    # Line 753
    ld	$a0,0($sp)
    # Line 751
    li	$a1,24
    sh	$a1,12($v0)
    # Line 753
    lwc1	$f0,0($a0)
    # Line 755
    la	$a2,__glle_Indexfv
    # Line 754
    ld	$a3,8($sp)
    # Line 753
    swc1	$f0,16($v0)
    # Line 755
    move	$a1,$v0
    # Line 754
    lw	$v1,4696($a3)
    # Line 755
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 754
    ori	$v1,$v1,0x10
    # Line 755
    jal	__glDlistAppendOp
    # Line 754
    sw	$v1,4696($a3)
    # Line 756
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Indexfv

# Function: __gllc_Indexi
# Declared: Line 759 (Source lines: 760-772)
# Address: 0x0dbabac8 - 0x0dbabb54 (Size: 140 bytes, Frame: 48)
.globl __gllc_Indexi
.ent __gllc_Indexi
__gllc_Indexi:
    # Line 765
    li	$a1,4
    # Line 760
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 763
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 760
    lui	$v0,0x5
    addiu	$v0,$v0,11216
    addu	$gp,$t9,$v0
    # Line 765
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbabb10
    # Line 766
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbabb10:
    # Line 771
    la	$a2,__glle_Indexiv
    # Line 770
    ld	$a3,8($sp)
    # Line 769
    ld	$a0,0($sp)
    # Line 767
    li	$a1,25
    sh	$a1,12($v0)
    # Line 769
    sw	$a0,16($v0)
    # Line 771
    move	$a1,$v0
    # Line 770
    lw	$v1,4696($a3)
    # Line 771
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 770
    ori	$v1,$v1,0x10
    # Line 771
    jal	__glDlistAppendOp
    # Line 770
    sw	$v1,4696($a3)
    # Line 772
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Indexi

# Function: __gllc_Indexiv
# Declared: Line 775 (Source lines: 776-788)
# Address: 0x0dbabb54 - 0x0dbabbe4 (Size: 144 bytes, Frame: 48)
.globl __gllc_Indexiv
.ent __gllc_Indexiv
__gllc_Indexiv:
    # Line 781
    li	$a1,4
    # Line 776
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 779
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 776
    lui	$v0,0x5
    addiu	$v0,$v0,11076
    addu	$gp,$t9,$v0
    # Line 781
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbabb9c
    # Line 782
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbabb9c:
    # Line 785
    ld	$a0,0($sp)
    # Line 783
    li	$a1,25
    sh	$a1,12($v0)
    # Line 785
    lw	$a0,0($a0)
    # Line 787
    la	$a2,__glle_Indexiv
    # Line 786
    ld	$a3,8($sp)
    # Line 785
    sw	$a0,16($v0)
    # Line 787
    move	$a1,$v0
    # Line 786
    lw	$v1,4696($a3)
    # Line 787
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 786
    ori	$v1,$v1,0x10
    # Line 787
    jal	__glDlistAppendOp
    # Line 786
    sw	$v1,4696($a3)
    # Line 788
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Indexiv

# Function: __gllc_Indexs
# Declared: Line 791 (Source lines: 792-804)
# Address: 0x0dbabbe4 - 0x0dbabc70 (Size: 140 bytes, Frame: 48)
.globl __gllc_Indexs
.ent __gllc_Indexs
__gllc_Indexs:
    # Line 797
    li	$a1,4
    # Line 792
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 795
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 792
    lui	$v0,0x5
    addiu	$v0,$v0,10932
    addu	$gp,$t9,$v0
    # Line 797
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbabc2c
    # Line 798
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbabc2c:
    # Line 803
    la	$a2,__glle_Indexsv
    # Line 802
    ld	$a3,8($sp)
    # Line 801
    ld	$a0,0($sp)
    # Line 799
    li	$a1,26
    sh	$a1,12($v0)
    # Line 801
    sh	$a0,16($v0)
    # Line 803
    move	$a1,$v0
    # Line 802
    lw	$v1,4696($a3)
    # Line 803
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 802
    ori	$v1,$v1,0x10
    # Line 803
    jal	__glDlistAppendOp
    # Line 802
    sw	$v1,4696($a3)
    # Line 804
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Indexs

# Function: __gllc_Indexsv
# Declared: Line 807 (Source lines: 808-820)
# Address: 0x0dbabc70 - 0x0dbabd00 (Size: 144 bytes, Frame: 48)
.globl __gllc_Indexsv
.ent __gllc_Indexsv
__gllc_Indexsv:
    # Line 813
    li	$a1,4
    # Line 808
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 811
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 808
    lui	$v0,0x5
    addiu	$v0,$v0,10792
    addu	$gp,$t9,$v0
    # Line 813
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbabcb8
    # Line 814
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbabcb8:
    # Line 817
    ld	$a0,0($sp)
    # Line 815
    li	$a1,26
    sh	$a1,12($v0)
    # Line 817
    lh	$a0,0($a0)
    # Line 819
    la	$a2,__glle_Indexsv
    # Line 818
    ld	$a3,8($sp)
    # Line 817
    sh	$a0,16($v0)
    # Line 819
    move	$a1,$v0
    # Line 818
    lw	$v1,4696($a3)
    # Line 819
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 818
    ori	$v1,$v1,0x10
    # Line 819
    jal	__glDlistAppendOp
    # Line 818
    sw	$v1,4696($a3)
    # Line 820
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Indexsv

# Function: __gllc_Normal3b
# Declared: Line 823 (Source lines: 824-838)
# Address: 0x0dbabd00 - 0x0dbabda4 (Size: 164 bytes, Frame: 208)
.globl __gllc_Normal3b
.ent __gllc_Normal3b
__gllc_Normal3b:
    # Line 824
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 829
    li	$a1,4
    sd	$a2,24($sp)
    sd	$a0,0($sp)
    # Line 827
    lw	$at,__glCurrentContext
    sd	$gp,32($sp)
    # Line 824
    lui	$v0,0x5
    addiu	$v0,$v0,10648
    addu	$gp,$t9,$v0
    # Line 829
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,40($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbabd50
    # Line 830
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbabd50:
    # Line 837
    la	$a2,__glle_Normal3bv
    # Line 831
    li	$a4,27
    sh	$a4,12($v0)
    # Line 835
    ld	$a0,24($sp)
    # Line 833
    ld	$a3,0($sp)
    # Line 834
    ld	$a1,16($sp)
    # Line 835
    sb	$a0,18($v0)
    # Line 833
    sb	$a3,16($v0)
    # Line 836
    ld	$a3,8($sp)
    # Line 834
    sb	$a1,17($v0)
    # Line 837
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 836
    lw	$v1,4696($a3)
    # Line 837
    move	$a1,$v0
    move	$a0,$a3
    # Line 836
    ori	$v1,$v1,0x2
    # Line 837
    jal	__glDlistAppendOp
    # Line 836
    sw	$v1,4696($a3)
    # Line 838
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_Normal3b

# Function: __gllc_Normal3bv
# Declared: Line 841 (Source lines: 842-856)
# Address: 0x0dbabda4 - 0x0dbabe44 (Size: 160 bytes, Frame: 48)
.globl __gllc_Normal3bv
.ent __gllc_Normal3bv
__gllc_Normal3bv:
    # Line 847
    li	$a1,4
    # Line 842
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 845
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 842
    lui	$v0,0x5
    addiu	$v0,$v0,10484
    addu	$gp,$t9,$v0
    # Line 847
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbabdec
    # Line 848
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbabdec:
    # Line 851
    ld	$a0,0($sp)
    # Line 849
    li	$a3,27
    sh	$a3,12($v0)
    # Line 851
    lb	$a2,0($a0)
    sb	$a2,16($v0)
    # Line 852
    lb	$a1,1($a0)
    sb	$a1,17($v0)
    # Line 853
    lb	$a0,2($a0)
    # Line 855
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 854
    ld	$a3,8($sp)
    # Line 853
    sb	$a0,18($v0)
    # Line 855
    la	$a2,__glle_Normal3bv
    # Line 854
    lw	$v1,4696($a3)
    # Line 855
    move	$a1,$v0
    move	$a0,$a3
    # Line 854
    ori	$v1,$v1,0x2
    # Line 855
    jal	__glDlistAppendOp
    # Line 854
    sw	$v1,4696($a3)
    # Line 856
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Normal3bv

# Function: __gllc_Normal3d
# Declared: Line 859 (Source lines: 860-875)
# Address: 0x0dbabe44 - 0x0dbabeec (Size: 168 bytes, Frame: 208)
.globl __gllc_Normal3d
.ent __gllc_Normal3d
__gllc_Normal3d:
    # Line 865
    li	$a1,24
    # Line 860
    addiu	$sp,$sp,-80
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,32($sp)
    lui	$at,0x5
    addiu	$at,$at,10324
    addu	$gp,$t9,$at
    # Line 865
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 863
    lw	$a0,__glCurrentContext
    sd	$ra,40($sp)
    # Line 865
    jal	__glDlistAllocOp2
    sd	$a0,24($sp)
    bnez	$v0,.L0dbabe90
    # Line 866
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbabe90:
    # Line 874
    la	$a2,__glle_Normal3dv
    # Line 867
    li	$a0,28
    sh	$a0,12($v0)
    # Line 868
    li	$v1,1
    sb	$v1,14($v0)
    # Line 873
    ld	$v1,24($sp)
    # Line 870
    ldc1	$f2,0($sp)
    # Line 871
    ldc1	$f1,8($sp)
    # Line 872
    ldc1	$f0,16($sp)
    # Line 870
    sdc1	$f2,16($v0)
    # Line 871
    sdc1	$f1,24($v0)
    # Line 872
    sdc1	$f0,32($v0)
    # Line 874
    move	$a1,$v0
    # Line 873
    lw	$v0,4696($v1)
    # Line 874
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 873
    ori	$v0,$v0,0x2
    # Line 874
    jal	__glDlistAppendOp
    # Line 873
    sw	$v0,4696($v1)
    # Line 875
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_Normal3d

# Function: __gllc_Normal3dv
# Declared: Line 878 (Source lines: 879-894)
# Address: 0x0dbabeec - 0x0dbabf94 (Size: 168 bytes, Frame: 48)
.globl __gllc_Normal3dv
.ent __gllc_Normal3dv
__gllc_Normal3dv:
    # Line 884
    li	$a1,24
    # Line 879
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 882
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 879
    lui	$v0,0x5
    addiu	$v0,$v0,10156
    addu	$gp,$t9,$v0
    # Line 884
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbabf34
    # Line 885
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbabf34:
    # Line 889
    ld	$a0,0($sp)
    # Line 886
    li	$a2,28
    # Line 887
    li	$a1,1
    sb	$a1,14($v0)
    # Line 886
    sh	$a2,12($v0)
    # Line 889
    ldc1	$f2,0($a0)
    sdc1	$f2,16($v0)
    # Line 890
    ldc1	$f1,8($a0)
    sdc1	$f1,24($v0)
    # Line 891
    ldc1	$f0,16($a0)
    # Line 893
    la	$a2,__glle_Normal3dv
    # Line 892
    ld	$a3,8($sp)
    # Line 891
    sdc1	$f0,32($v0)
    # Line 893
    move	$a1,$v0
    # Line 892
    lw	$v1,4696($a3)
    # Line 893
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 892
    ori	$v1,$v1,0x2
    # Line 893
    jal	__glDlistAppendOp
    # Line 892
    sw	$v1,4696($a3)
    # Line 894
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Normal3dv

# Function: __gllc_Normal3f
# Declared: Line 897 (Source lines: 898-912)
# Address: 0x0dbabf94 - 0x0dbac034 (Size: 160 bytes, Frame: 208)
.globl __gllc_Normal3f
.ent __gllc_Normal3f
__gllc_Normal3f:
    # Line 903
    li	$a1,12
    # Line 898
    addiu	$sp,$sp,-80
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,32($sp)
    lui	$at,0x5
    addiu	$at,$at,9988
    addu	$gp,$t9,$at
    # Line 903
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 901
    lw	$a0,__glCurrentContext
    sd	$ra,40($sp)
    # Line 903
    jal	__glDlistAllocOp2
    sd	$a0,24($sp)
    bnez	$v0,.L0dbabfe0
    # Line 904
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbabfe0:
    # Line 911
    la	$a2,__glle_Normal3fv
    # Line 905
    li	$v1,29
    sh	$v1,12($v0)
    # Line 910
    ld	$v1,24($sp)
    # Line 907
    ldc1	$f2,0($sp)
    # Line 908
    ldc1	$f1,8($sp)
    # Line 909
    ldc1	$f0,16($sp)
    # Line 907
    swc1	$f2,16($v0)
    # Line 908
    swc1	$f1,20($v0)
    # Line 909
    swc1	$f0,24($v0)
    # Line 911
    move	$a1,$v0
    # Line 910
    lw	$v0,4696($v1)
    # Line 911
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 910
    ori	$v0,$v0,0x2
    # Line 911
    jal	__glDlistAppendOp
    # Line 910
    sw	$v0,4696($v1)
    # Line 912
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_Normal3f

# Function: __gllc_Normal3fv
# Declared: Line 915 (Source lines: 916-930)
# Address: 0x0dbac034 - 0x0dbac0d4 (Size: 160 bytes, Frame: 48)
.globl __gllc_Normal3fv
.ent __gllc_Normal3fv
__gllc_Normal3fv:
    # Line 921
    li	$a1,12
    # Line 916
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 919
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 916
    lui	$v0,0x5
    addiu	$v0,$v0,9828
    addu	$gp,$t9,$v0
    # Line 921
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbac07c
    # Line 922
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbac07c:
    # Line 925
    ld	$a0,0($sp)
    # Line 923
    li	$a1,29
    sh	$a1,12($v0)
    # Line 925
    lwc1	$f2,0($a0)
    swc1	$f2,16($v0)
    # Line 926
    lwc1	$f1,4($a0)
    swc1	$f1,20($v0)
    # Line 927
    lwc1	$f0,8($a0)
    # Line 929
    la	$a2,__glle_Normal3fv
    # Line 928
    ld	$a3,8($sp)
    # Line 927
    swc1	$f0,24($v0)
    # Line 929
    move	$a1,$v0
    # Line 928
    lw	$v1,4696($a3)
    # Line 929
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 928
    ori	$v1,$v1,0x2
    # Line 929
    jal	__glDlistAppendOp
    # Line 928
    sw	$v1,4696($a3)
    # Line 930
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Normal3fv

# Function: __gllc_Normal3i
# Declared: Line 933 (Source lines: 934-948)
# Address: 0x0dbac0d4 - 0x0dbac178 (Size: 164 bytes, Frame: 208)
.globl __gllc_Normal3i
.ent __gllc_Normal3i
__gllc_Normal3i:
    # Line 934
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 939
    li	$a1,12
    sd	$a2,24($sp)
    sd	$a0,0($sp)
    # Line 937
    lw	$at,__glCurrentContext
    sd	$gp,32($sp)
    # Line 934
    lui	$v0,0x5
    addiu	$v0,$v0,9668
    addu	$gp,$t9,$v0
    # Line 939
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,40($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbac124
    # Line 940
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbac124:
    # Line 947
    la	$a2,__glle_Normal3iv
    # Line 941
    li	$a4,30
    sh	$a4,12($v0)
    # Line 945
    ld	$a0,24($sp)
    # Line 943
    ld	$a3,0($sp)
    # Line 944
    ld	$a1,16($sp)
    # Line 945
    sw	$a0,24($v0)
    # Line 943
    sw	$a3,16($v0)
    # Line 946
    ld	$a3,8($sp)
    # Line 944
    sw	$a1,20($v0)
    # Line 947
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 946
    lw	$v1,4696($a3)
    # Line 947
    move	$a1,$v0
    move	$a0,$a3
    # Line 946
    ori	$v1,$v1,0x2
    # Line 947
    jal	__glDlistAppendOp
    # Line 946
    sw	$v1,4696($a3)
    # Line 948
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_Normal3i

# Function: __gllc_Normal3iv
# Declared: Line 951 (Source lines: 952-966)
# Address: 0x0dbac178 - 0x0dbac218 (Size: 160 bytes, Frame: 48)
.globl __gllc_Normal3iv
.ent __gllc_Normal3iv
__gllc_Normal3iv:
    # Line 957
    li	$a1,12
    # Line 952
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 955
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 952
    lui	$v0,0x5
    addiu	$v0,$v0,9504
    addu	$gp,$t9,$v0
    # Line 957
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbac1c0
    # Line 958
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbac1c0:
    # Line 961
    ld	$a0,0($sp)
    # Line 959
    li	$a3,30
    sh	$a3,12($v0)
    # Line 961
    lw	$a2,0($a0)
    sw	$a2,16($v0)
    # Line 962
    lw	$a1,4($a0)
    sw	$a1,20($v0)
    # Line 963
    lw	$a0,8($a0)
    # Line 965
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 964
    ld	$a3,8($sp)
    # Line 963
    sw	$a0,24($v0)
    # Line 965
    la	$a2,__glle_Normal3iv
    # Line 964
    lw	$v1,4696($a3)
    # Line 965
    move	$a1,$v0
    move	$a0,$a3
    # Line 964
    ori	$v1,$v1,0x2
    # Line 965
    jal	__glDlistAppendOp
    # Line 964
    sw	$v1,4696($a3)
    # Line 966
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Normal3iv

# Function: __gllc_Normal3s
# Declared: Line 969 (Source lines: 970-984)
# Address: 0x0dbac218 - 0x0dbac2bc (Size: 164 bytes, Frame: 208)
.globl __gllc_Normal3s
.ent __gllc_Normal3s
__gllc_Normal3s:
    # Line 970
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 975
    li	$a1,8
    sd	$a2,24($sp)
    sd	$a0,0($sp)
    # Line 973
    lw	$at,__glCurrentContext
    sd	$gp,32($sp)
    # Line 970
    lui	$v0,0x5
    addiu	$v0,$v0,9344
    addu	$gp,$t9,$v0
    # Line 975
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,40($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbac268
    # Line 976
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbac268:
    # Line 983
    la	$a2,__glle_Normal3sv
    # Line 977
    li	$a4,31
    sh	$a4,12($v0)
    # Line 981
    ld	$a0,24($sp)
    # Line 979
    ld	$a3,0($sp)
    # Line 980
    ld	$a1,16($sp)
    # Line 981
    sh	$a0,20($v0)
    # Line 979
    sh	$a3,16($v0)
    # Line 982
    ld	$a3,8($sp)
    # Line 980
    sh	$a1,18($v0)
    # Line 983
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 982
    lw	$v1,4696($a3)
    # Line 983
    move	$a1,$v0
    move	$a0,$a3
    # Line 982
    ori	$v1,$v1,0x2
    # Line 983
    jal	__glDlistAppendOp
    # Line 982
    sw	$v1,4696($a3)
    # Line 984
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_Normal3s

# Function: __gllc_Normal3sv
# Declared: Line 987 (Source lines: 988-1002)
# Address: 0x0dbac2bc - 0x0dbac35c (Size: 160 bytes, Frame: 48)
.globl __gllc_Normal3sv
.ent __gllc_Normal3sv
__gllc_Normal3sv:
    # Line 993
    li	$a1,8
    # Line 988
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 991
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 988
    lui	$v0,0x5
    addiu	$v0,$v0,9180
    addu	$gp,$t9,$v0
    # Line 993
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbac304
    # Line 994
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbac304:
    # Line 997
    ld	$a0,0($sp)
    # Line 995
    li	$a3,31
    sh	$a3,12($v0)
    # Line 997
    lh	$a2,0($a0)
    sh	$a2,16($v0)
    # Line 998
    lh	$a1,2($a0)
    sh	$a1,18($v0)
    # Line 999
    lh	$a0,4($a0)
    # Line 1001
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 1000
    ld	$a3,8($sp)
    # Line 999
    sh	$a0,20($v0)
    # Line 1001
    la	$a2,__glle_Normal3sv
    # Line 1000
    lw	$v1,4696($a3)
    # Line 1001
    move	$a1,$v0
    move	$a0,$a3
    # Line 1000
    ori	$v1,$v1,0x2
    # Line 1001
    jal	__glDlistAppendOp
    # Line 1000
    sw	$v1,4696($a3)
    # Line 1002
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Normal3sv

# Function: __gllc_RasterPos2d
# Declared: Line 1005 (Source lines: 1006-1020)
# Address: 0x0dbac35c - 0x0dbac3f8 (Size: 156 bytes, Frame: 192)
.globl __gllc_RasterPos2d
.ent __gllc_RasterPos2d
__gllc_RasterPos2d:
    # Line 1011
    li	$a1,16
    # Line 1006
    addiu	$sp,$sp,-64
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,24($sp)
    lui	$at,0x5
    addiu	$at,$at,9020
    addu	$gp,$t9,$at
    # Line 1011
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 1009
    lw	$a0,__glCurrentContext
    sd	$ra,32($sp)
    # Line 1011
    jal	__glDlistAllocOp2
    sd	$a0,16($sp)
    bnez	$v0,.L0dbac3a4
    # Line 1012
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbac3a4:
    # Line 1019
    la	$a2,__glle_RasterPos2dv
    # Line 1013
    li	$a0,32
    sh	$a0,12($v0)
    # Line 1014
    li	$v1,1
    sb	$v1,14($v0)
    # Line 1016
    ldc1	$f1,0($sp)
    # Line 1017
    ldc1	$f0,8($sp)
    # Line 1018
    ld	$v1,16($sp)
    # Line 1016
    sdc1	$f1,16($v0)
    # Line 1017
    sdc1	$f0,24($v0)
    # Line 1019
    move	$a1,$v0
    # Line 1018
    lw	$v0,4696($v1)
    # Line 1019
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 1018
    ori	$v0,$v0,0x20
    # Line 1019
    jal	__glDlistAppendOp
    # Line 1018
    sw	$v0,4696($v1)
    # Line 1020
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_RasterPos2d

# Function: __gllc_RasterPos2dv
# Declared: Line 1023 (Source lines: 1024-1038)
# Address: 0x0dbac3f8 - 0x0dbac498 (Size: 160 bytes, Frame: 48)
.globl __gllc_RasterPos2dv
.ent __gllc_RasterPos2dv
__gllc_RasterPos2dv:
    # Line 1029
    li	$a1,16
    # Line 1024
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 1027
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 1024
    lui	$v0,0x5
    addiu	$v0,$v0,8864
    addu	$gp,$t9,$v0
    # Line 1029
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbac440
    # Line 1030
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbac440:
    # Line 1034
    ld	$a0,0($sp)
    # Line 1031
    li	$a2,32
    # Line 1032
    li	$a1,1
    sb	$a1,14($v0)
    # Line 1031
    sh	$a2,12($v0)
    # Line 1034
    ldc1	$f1,0($a0)
    sdc1	$f1,16($v0)
    # Line 1035
    ldc1	$f0,8($a0)
    # Line 1037
    la	$a2,__glle_RasterPos2dv
    # Line 1036
    ld	$a3,8($sp)
    # Line 1035
    sdc1	$f0,24($v0)
    # Line 1037
    move	$a1,$v0
    # Line 1036
    lw	$v1,4696($a3)
    # Line 1037
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 1036
    ori	$v1,$v1,0x20
    # Line 1037
    jal	__glDlistAppendOp
    # Line 1036
    sw	$v1,4696($a3)
    # Line 1038
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_RasterPos2dv

# Function: __gllc_RasterPos2f
# Declared: Line 1041 (Source lines: 1042-1055)
# Address: 0x0dbac498 - 0x0dbac52c (Size: 148 bytes, Frame: 192)
.globl __gllc_RasterPos2f
.ent __gllc_RasterPos2f
__gllc_RasterPos2f:
    # Line 1047
    li	$a1,8
    # Line 1042
    addiu	$sp,$sp,-64
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,24($sp)
    lui	$at,0x5
    addiu	$at,$at,8704
    addu	$gp,$t9,$at
    # Line 1047
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 1045
    lw	$a0,__glCurrentContext
    sd	$ra,32($sp)
    # Line 1047
    jal	__glDlistAllocOp2
    sd	$a0,16($sp)
    bnez	$v0,.L0dbac4e0
    # Line 1048
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbac4e0:
    # Line 1054
    la	$a2,__glle_RasterPos2fv
    # Line 1049
    li	$v1,33
    sh	$v1,12($v0)
    # Line 1051
    ldc1	$f1,0($sp)
    # Line 1052
    ldc1	$f0,8($sp)
    # Line 1053
    ld	$v1,16($sp)
    # Line 1051
    swc1	$f1,16($v0)
    # Line 1052
    swc1	$f0,20($v0)
    # Line 1054
    move	$a1,$v0
    # Line 1053
    lw	$v0,4696($v1)
    # Line 1054
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 1053
    ori	$v0,$v0,0x20
    # Line 1054
    jal	__glDlistAppendOp
    # Line 1053
    sw	$v0,4696($v1)
    # Line 1055
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_RasterPos2f

# Function: __gllc_RasterPos2fv
# Declared: Line 1058 (Source lines: 1059-1072)
# Address: 0x0dbac52c - 0x0dbac5c4 (Size: 152 bytes, Frame: 48)
.globl __gllc_RasterPos2fv
.ent __gllc_RasterPos2fv
__gllc_RasterPos2fv:
    # Line 1064
    li	$a1,8
    # Line 1059
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 1062
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 1059
    lui	$v0,0x5
    addiu	$v0,$v0,8556
    addu	$gp,$t9,$v0
    # Line 1064
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbac574
    # Line 1065
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbac574:
    # Line 1068
    ld	$a0,0($sp)
    # Line 1066
    li	$a1,33
    sh	$a1,12($v0)
    # Line 1068
    lwc1	$f1,0($a0)
    swc1	$f1,16($v0)
    # Line 1069
    lwc1	$f0,4($a0)
    # Line 1071
    la	$a2,__glle_RasterPos2fv
    # Line 1070
    ld	$a3,8($sp)
    # Line 1069
    swc1	$f0,20($v0)
    # Line 1071
    move	$a1,$v0
    # Line 1070
    lw	$v1,4696($a3)
    # Line 1071
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 1070
    ori	$v1,$v1,0x20
    # Line 1071
    jal	__glDlistAppendOp
    # Line 1070
    sw	$v1,4696($a3)
    # Line 1072
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_RasterPos2fv

# Function: __gllc_RasterPos2i
# Declared: Line 1075 (Source lines: 1076-1089)
# Address: 0x0dbac5c4 - 0x0dbac65c (Size: 152 bytes, Frame: 192)
.globl __gllc_RasterPos2i
.ent __gllc_RasterPos2i
__gllc_RasterPos2i:
    # Line 1076
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    # Line 1081
    li	$a1,8
    sd	$a0,0($sp)
    # Line 1079
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 1076
    lui	$v0,0x5
    addiu	$v0,$v0,8404
    addu	$gp,$t9,$v0
    # Line 1081
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbac610
    # Line 1082
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbac610:
    # Line 1088
    la	$a2,__glle_RasterPos2iv
    # Line 1083
    li	$a3,34
    sh	$a3,12($v0)
    # Line 1086
    ld	$a0,8($sp)
    # Line 1085
    ld	$a1,0($sp)
    # Line 1087
    ld	$a3,16($sp)
    # Line 1086
    sw	$a0,20($v0)
    # Line 1085
    sw	$a1,16($v0)
    # Line 1088
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 1087
    lw	$v1,4696($a3)
    # Line 1088
    move	$a1,$v0
    move	$a0,$a3
    # Line 1087
    ori	$v1,$v1,0x20
    # Line 1088
    jal	__glDlistAppendOp
    # Line 1087
    sw	$v1,4696($a3)
    # Line 1089
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_RasterPos2i

# Function: __gllc_RasterPos2iv
# Declared: Line 1092 (Source lines: 1093-1106)
# Address: 0x0dbac65c - 0x0dbac6f4 (Size: 152 bytes, Frame: 48)
.globl __gllc_RasterPos2iv
.ent __gllc_RasterPos2iv
__gllc_RasterPos2iv:
    # Line 1098
    li	$a1,8
    # Line 1093
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 1096
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 1093
    lui	$v0,0x5
    addiu	$v0,$v0,8252
    addu	$gp,$t9,$v0
    # Line 1098
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbac6a4
    # Line 1099
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbac6a4:
    # Line 1102
    ld	$a0,0($sp)
    # Line 1100
    li	$a2,34
    sh	$a2,12($v0)
    # Line 1102
    lw	$a1,0($a0)
    sw	$a1,16($v0)
    # Line 1103
    lw	$a0,4($a0)
    # Line 1105
    la	$a2,__glle_RasterPos2iv
    # Line 1104
    ld	$a3,8($sp)
    # Line 1103
    sw	$a0,20($v0)
    # Line 1105
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 1104
    lw	$v1,4696($a3)
    # Line 1105
    move	$a1,$v0
    move	$a0,$a3
    # Line 1104
    ori	$v1,$v1,0x20
    # Line 1105
    jal	__glDlistAppendOp
    # Line 1104
    sw	$v1,4696($a3)
    # Line 1106
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_RasterPos2iv

# Function: __gllc_RasterPos2s
# Declared: Line 1109 (Source lines: 1110-1123)
# Address: 0x0dbac6f4 - 0x0dbac78c (Size: 152 bytes, Frame: 192)
.globl __gllc_RasterPos2s
.ent __gllc_RasterPos2s
__gllc_RasterPos2s:
    # Line 1110
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    # Line 1115
    li	$a1,4
    sd	$a0,0($sp)
    # Line 1113
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 1110
    lui	$v0,0x5
    addiu	$v0,$v0,8100
    addu	$gp,$t9,$v0
    # Line 1115
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbac740
    # Line 1116
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbac740:
    # Line 1122
    la	$a2,__glle_RasterPos2sv
    # Line 1117
    li	$a3,35
    sh	$a3,12($v0)
    # Line 1120
    ld	$a0,8($sp)
    # Line 1119
    ld	$a1,0($sp)
    # Line 1121
    ld	$a3,16($sp)
    # Line 1120
    sh	$a0,18($v0)
    # Line 1119
    sh	$a1,16($v0)
    # Line 1122
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 1121
    lw	$v1,4696($a3)
    # Line 1122
    move	$a1,$v0
    move	$a0,$a3
    # Line 1121
    ori	$v1,$v1,0x20
    # Line 1122
    jal	__glDlistAppendOp
    # Line 1121
    sw	$v1,4696($a3)
    # Line 1123
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_RasterPos2s

# Function: __gllc_RasterPos2sv
# Declared: Line 1126 (Source lines: 1127-1140)
# Address: 0x0dbac78c - 0x0dbac824 (Size: 152 bytes, Frame: 48)
.globl __gllc_RasterPos2sv
.ent __gllc_RasterPos2sv
__gllc_RasterPos2sv:
    # Line 1132
    li	$a1,4
    # Line 1127
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 1130
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 1127
    lui	$v0,0x5
    addiu	$v0,$v0,7948
    addu	$gp,$t9,$v0
    # Line 1132
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbac7d4
    # Line 1133
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbac7d4:
    # Line 1136
    ld	$a0,0($sp)
    # Line 1134
    li	$a2,35
    sh	$a2,12($v0)
    # Line 1136
    lh	$a1,0($a0)
    sh	$a1,16($v0)
    # Line 1137
    lh	$a0,2($a0)
    # Line 1139
    la	$a2,__glle_RasterPos2sv
    # Line 1138
    ld	$a3,8($sp)
    # Line 1137
    sh	$a0,18($v0)
    # Line 1139
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 1138
    lw	$v1,4696($a3)
    # Line 1139
    move	$a1,$v0
    move	$a0,$a3
    # Line 1138
    ori	$v1,$v1,0x20
    # Line 1139
    jal	__glDlistAppendOp
    # Line 1138
    sw	$v1,4696($a3)
    # Line 1140
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_RasterPos2sv

# Function: __gllc_RasterPos3d
# Declared: Line 1143 (Source lines: 1144-1159)
# Address: 0x0dbac824 - 0x0dbac8cc (Size: 168 bytes, Frame: 208)
.globl __gllc_RasterPos3d
.ent __gllc_RasterPos3d
__gllc_RasterPos3d:
    # Line 1149
    li	$a1,24
    # Line 1144
    addiu	$sp,$sp,-80
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,32($sp)
    lui	$at,0x5
    addiu	$at,$at,7796
    addu	$gp,$t9,$at
    # Line 1149
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 1147
    lw	$a0,__glCurrentContext
    sd	$ra,40($sp)
    # Line 1149
    jal	__glDlistAllocOp2
    sd	$a0,24($sp)
    bnez	$v0,.L0dbac870
    # Line 1150
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbac870:
    # Line 1158
    la	$a2,__glle_RasterPos3dv
    # Line 1151
    li	$a0,36
    sh	$a0,12($v0)
    # Line 1152
    li	$v1,1
    sb	$v1,14($v0)
    # Line 1157
    ld	$v1,24($sp)
    # Line 1154
    ldc1	$f2,0($sp)
    # Line 1155
    ldc1	$f1,8($sp)
    # Line 1156
    ldc1	$f0,16($sp)
    # Line 1154
    sdc1	$f2,16($v0)
    # Line 1155
    sdc1	$f1,24($v0)
    # Line 1156
    sdc1	$f0,32($v0)
    # Line 1158
    move	$a1,$v0
    # Line 1157
    lw	$v0,4696($v1)
    # Line 1158
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 1157
    ori	$v0,$v0,0x20
    # Line 1158
    jal	__glDlistAppendOp
    # Line 1157
    sw	$v0,4696($v1)
    # Line 1159
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_RasterPos3d

# Function: __gllc_RasterPos3dv
# Declared: Line 1162 (Source lines: 1163-1178)
# Address: 0x0dbac8cc - 0x0dbac974 (Size: 168 bytes, Frame: 48)
.globl __gllc_RasterPos3dv
.ent __gllc_RasterPos3dv
__gllc_RasterPos3dv:
    # Line 1168
    li	$a1,24
    # Line 1163
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 1166
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 1163
    lui	$v0,0x5
    addiu	$v0,$v0,7628
    addu	$gp,$t9,$v0
    # Line 1168
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbac914
    # Line 1169
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbac914:
    # Line 1173
    ld	$a0,0($sp)
    # Line 1170
    li	$a2,36
    # Line 1171
    li	$a1,1
    sb	$a1,14($v0)
    # Line 1170
    sh	$a2,12($v0)
    # Line 1173
    ldc1	$f2,0($a0)
    sdc1	$f2,16($v0)
    # Line 1174
    ldc1	$f1,8($a0)
    sdc1	$f1,24($v0)
    # Line 1175
    ldc1	$f0,16($a0)
    # Line 1177
    la	$a2,__glle_RasterPos3dv
    # Line 1176
    ld	$a3,8($sp)
    # Line 1175
    sdc1	$f0,32($v0)
    # Line 1177
    move	$a1,$v0
    # Line 1176
    lw	$v1,4696($a3)
    # Line 1177
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 1176
    ori	$v1,$v1,0x20
    # Line 1177
    jal	__glDlistAppendOp
    # Line 1176
    sw	$v1,4696($a3)
    # Line 1178
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_RasterPos3dv

# Function: __gllc_RasterPos3f
# Declared: Line 1181 (Source lines: 1182-1196)
# Address: 0x0dbac974 - 0x0dbaca14 (Size: 160 bytes, Frame: 208)
.globl __gllc_RasterPos3f
.ent __gllc_RasterPos3f
__gllc_RasterPos3f:
    # Line 1187
    li	$a1,12
    # Line 1182
    addiu	$sp,$sp,-80
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,32($sp)
    lui	$at,0x5
    addiu	$at,$at,7460
    addu	$gp,$t9,$at
    # Line 1187
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 1185
    lw	$a0,__glCurrentContext
    sd	$ra,40($sp)
    # Line 1187
    jal	__glDlistAllocOp2
    sd	$a0,24($sp)
    bnez	$v0,.L0dbac9c0
    # Line 1188
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbac9c0:
    # Line 1195
    la	$a2,__glle_RasterPos3fv
    # Line 1189
    li	$v1,37
    sh	$v1,12($v0)
    # Line 1194
    ld	$v1,24($sp)
    # Line 1191
    ldc1	$f2,0($sp)
    # Line 1192
    ldc1	$f1,8($sp)
    # Line 1193
    ldc1	$f0,16($sp)
    # Line 1191
    swc1	$f2,16($v0)
    # Line 1192
    swc1	$f1,20($v0)
    # Line 1193
    swc1	$f0,24($v0)
    # Line 1195
    move	$a1,$v0
    # Line 1194
    lw	$v0,4696($v1)
    # Line 1195
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 1194
    ori	$v0,$v0,0x20
    # Line 1195
    jal	__glDlistAppendOp
    # Line 1194
    sw	$v0,4696($v1)
    # Line 1196
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_RasterPos3f

# Function: __gllc_RasterPos3fv
# Declared: Line 1199 (Source lines: 1200-1214)
# Address: 0x0dbaca14 - 0x0dbacab4 (Size: 160 bytes, Frame: 48)
.globl __gllc_RasterPos3fv
.ent __gllc_RasterPos3fv
__gllc_RasterPos3fv:
    # Line 1205
    li	$a1,12
    # Line 1200
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 1203
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 1200
    lui	$v0,0x5
    addiu	$v0,$v0,7300
    addu	$gp,$t9,$v0
    # Line 1205
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaca5c
    # Line 1206
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbaca5c:
    # Line 1209
    ld	$a0,0($sp)
    # Line 1207
    li	$a1,37
    sh	$a1,12($v0)
    # Line 1209
    lwc1	$f2,0($a0)
    swc1	$f2,16($v0)
    # Line 1210
    lwc1	$f1,4($a0)
    swc1	$f1,20($v0)
    # Line 1211
    lwc1	$f0,8($a0)
    # Line 1213
    la	$a2,__glle_RasterPos3fv
    # Line 1212
    ld	$a3,8($sp)
    # Line 1211
    swc1	$f0,24($v0)
    # Line 1213
    move	$a1,$v0
    # Line 1212
    lw	$v1,4696($a3)
    # Line 1213
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 1212
    ori	$v1,$v1,0x20
    # Line 1213
    jal	__glDlistAppendOp
    # Line 1212
    sw	$v1,4696($a3)
    # Line 1214
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_RasterPos3fv

# Function: __gllc_RasterPos3i
# Declared: Line 1217 (Source lines: 1218-1232)
# Address: 0x0dbacab4 - 0x0dbacb58 (Size: 164 bytes, Frame: 208)
.globl __gllc_RasterPos3i
.ent __gllc_RasterPos3i
__gllc_RasterPos3i:
    # Line 1218
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 1223
    li	$a1,12
    sd	$a2,24($sp)
    sd	$a0,0($sp)
    # Line 1221
    lw	$at,__glCurrentContext
    sd	$gp,32($sp)
    # Line 1218
    lui	$v0,0x5
    addiu	$v0,$v0,7140
    addu	$gp,$t9,$v0
    # Line 1223
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,40($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbacb04
    # Line 1224
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbacb04:
    # Line 1231
    la	$a2,__glle_RasterPos3iv
    # Line 1225
    li	$a4,38
    sh	$a4,12($v0)
    # Line 1229
    ld	$a0,24($sp)
    # Line 1227
    ld	$a3,0($sp)
    # Line 1228
    ld	$a1,16($sp)
    # Line 1229
    sw	$a0,24($v0)
    # Line 1227
    sw	$a3,16($v0)
    # Line 1230
    ld	$a3,8($sp)
    # Line 1228
    sw	$a1,20($v0)
    # Line 1231
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 1230
    lw	$v1,4696($a3)
    # Line 1231
    move	$a1,$v0
    move	$a0,$a3
    # Line 1230
    ori	$v1,$v1,0x20
    # Line 1231
    jal	__glDlistAppendOp
    # Line 1230
    sw	$v1,4696($a3)
    # Line 1232
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_RasterPos3i

# Function: __gllc_RasterPos3iv
# Declared: Line 1235 (Source lines: 1236-1250)
# Address: 0x0dbacb58 - 0x0dbacbf8 (Size: 160 bytes, Frame: 48)
.globl __gllc_RasterPos3iv
.ent __gllc_RasterPos3iv
__gllc_RasterPos3iv:
    # Line 1241
    li	$a1,12
    # Line 1236
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 1239
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 1236
    lui	$v0,0x5
    addiu	$v0,$v0,6976
    addu	$gp,$t9,$v0
    # Line 1241
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbacba0
    # Line 1242
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbacba0:
    # Line 1245
    ld	$a0,0($sp)
    # Line 1243
    li	$a3,38
    sh	$a3,12($v0)
    # Line 1245
    lw	$a2,0($a0)
    sw	$a2,16($v0)
    # Line 1246
    lw	$a1,4($a0)
    sw	$a1,20($v0)
    # Line 1247
    lw	$a0,8($a0)
    # Line 1249
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 1248
    ld	$a3,8($sp)
    # Line 1247
    sw	$a0,24($v0)
    # Line 1249
    la	$a2,__glle_RasterPos3iv
    # Line 1248
    lw	$v1,4696($a3)
    # Line 1249
    move	$a1,$v0
    move	$a0,$a3
    # Line 1248
    ori	$v1,$v1,0x20
    # Line 1249
    jal	__glDlistAppendOp
    # Line 1248
    sw	$v1,4696($a3)
    # Line 1250
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_RasterPos3iv

# Function: __gllc_RasterPos3s
# Declared: Line 1253 (Source lines: 1254-1268)
# Address: 0x0dbacbf8 - 0x0dbacc9c (Size: 164 bytes, Frame: 208)
.globl __gllc_RasterPos3s
.ent __gllc_RasterPos3s
__gllc_RasterPos3s:
    # Line 1254
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 1259
    li	$a1,8
    sd	$a2,24($sp)
    sd	$a0,0($sp)
    # Line 1257
    lw	$at,__glCurrentContext
    sd	$gp,32($sp)
    # Line 1254
    lui	$v0,0x5
    addiu	$v0,$v0,6816
    addu	$gp,$t9,$v0
    # Line 1259
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,40($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbacc48
    # Line 1260
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbacc48:
    # Line 1267
    la	$a2,__glle_RasterPos3sv
    # Line 1261
    li	$a4,39
    sh	$a4,12($v0)
    # Line 1265
    ld	$a0,24($sp)
    # Line 1263
    ld	$a3,0($sp)
    # Line 1264
    ld	$a1,16($sp)
    # Line 1265
    sh	$a0,20($v0)
    # Line 1263
    sh	$a3,16($v0)
    # Line 1266
    ld	$a3,8($sp)
    # Line 1264
    sh	$a1,18($v0)
    # Line 1267
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 1266
    lw	$v1,4696($a3)
    # Line 1267
    move	$a1,$v0
    move	$a0,$a3
    # Line 1266
    ori	$v1,$v1,0x20
    # Line 1267
    jal	__glDlistAppendOp
    # Line 1266
    sw	$v1,4696($a3)
    # Line 1268
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_RasterPos3s

# Function: __gllc_RasterPos3sv
# Declared: Line 1271 (Source lines: 1272-1286)
# Address: 0x0dbacc9c - 0x0dbacd3c (Size: 160 bytes, Frame: 48)
.globl __gllc_RasterPos3sv
.ent __gllc_RasterPos3sv
__gllc_RasterPos3sv:
    # Line 1277
    li	$a1,8
    # Line 1272
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 1275
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 1272
    lui	$v0,0x5
    addiu	$v0,$v0,6652
    addu	$gp,$t9,$v0
    # Line 1277
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbacce4
    # Line 1278
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbacce4:
    # Line 1281
    ld	$a0,0($sp)
    # Line 1279
    li	$a3,39
    sh	$a3,12($v0)
    # Line 1281
    lh	$a2,0($a0)
    sh	$a2,16($v0)
    # Line 1282
    lh	$a1,2($a0)
    sh	$a1,18($v0)
    # Line 1283
    lh	$a0,4($a0)
    # Line 1285
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 1284
    ld	$a3,8($sp)
    # Line 1283
    sh	$a0,20($v0)
    # Line 1285
    la	$a2,__glle_RasterPos3sv
    # Line 1284
    lw	$v1,4696($a3)
    # Line 1285
    move	$a1,$v0
    move	$a0,$a3
    # Line 1284
    ori	$v1,$v1,0x20
    # Line 1285
    jal	__glDlistAppendOp
    # Line 1284
    sw	$v1,4696($a3)
    # Line 1286
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_RasterPos3sv

# Function: __gllc_RasterPos4d
# Declared: Line 1289 (Source lines: 1290-1306)
# Address: 0x0dbacd3c - 0x0dbacdf0 (Size: 180 bytes, Frame: 224)
.globl __gllc_RasterPos4d
.ent __gllc_RasterPos4d
__gllc_RasterPos4d:
    # Line 1295
    li	$a1,32
    # Line 1290
    addiu	$sp,$sp,-96
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,40($sp)
    lui	$at,0x5
    addiu	$at,$at,6492
    addu	$gp,$t9,$at
    # Line 1295
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 1293
    lw	$a0,__glCurrentContext
    sd	$ra,48($sp)
    # Line 1295
    jal	__glDlistAllocOp2
    sd	$a0,32($sp)
    bnez	$v0,.L0dbacd8c
    # Line 1296
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbacd8c:
    # Line 1305
    la	$a2,__glle_RasterPos4dv
    # Line 1297
    li	$a0,40
    sh	$a0,12($v0)
    # Line 1298
    li	$v1,1
    sb	$v1,14($v0)
    # Line 1304
    ld	$v1,32($sp)
    # Line 1303
    ldc1	$f0,24($sp)
    # Line 1300
    ldc1	$f3,0($sp)
    # Line 1301
    ldc1	$f2,8($sp)
    # Line 1302
    ldc1	$f1,16($sp)
    # Line 1300
    sdc1	$f3,16($v0)
    # Line 1301
    sdc1	$f2,24($v0)
    # Line 1302
    sdc1	$f1,32($v0)
    # Line 1303
    sdc1	$f0,40($v0)
    # Line 1305
    move	$a1,$v0
    # Line 1304
    lw	$v0,4696($v1)
    # Line 1305
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 1304
    ori	$v0,$v0,0x20
    # Line 1305
    jal	__glDlistAppendOp
    # Line 1304
    sw	$v0,4696($v1)
    # Line 1306
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_RasterPos4d

# Function: __gllc_RasterPos4dv
# Declared: Line 1309 (Source lines: 1310-1326)
# Address: 0x0dbacdf0 - 0x0dbacea0 (Size: 176 bytes, Frame: 48)
.globl __gllc_RasterPos4dv
.ent __gllc_RasterPos4dv
__gllc_RasterPos4dv:
    # Line 1315
    li	$a1,32
    # Line 1310
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 1313
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 1310
    lui	$v0,0x5
    addiu	$v0,$v0,6312
    addu	$gp,$t9,$v0
    # Line 1315
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbace38
    # Line 1316
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbace38:
    # Line 1320
    ld	$a0,0($sp)
    # Line 1317
    li	$a2,40
    # Line 1318
    li	$a1,1
    sb	$a1,14($v0)
    # Line 1317
    sh	$a2,12($v0)
    # Line 1320
    ldc1	$f3,0($a0)
    sdc1	$f3,16($v0)
    # Line 1321
    ldc1	$f2,8($a0)
    sdc1	$f2,24($v0)
    # Line 1322
    ldc1	$f1,16($a0)
    sdc1	$f1,32($v0)
    # Line 1323
    ldc1	$f0,24($a0)
    # Line 1325
    la	$a2,__glle_RasterPos4dv
    # Line 1324
    ld	$a3,8($sp)
    # Line 1323
    sdc1	$f0,40($v0)
    # Line 1325
    move	$a1,$v0
    # Line 1324
    lw	$v1,4696($a3)
    # Line 1325
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 1324
    ori	$v1,$v1,0x20
    # Line 1325
    jal	__glDlistAppendOp
    # Line 1324
    sw	$v1,4696($a3)
    # Line 1326
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_RasterPos4dv

# Function: __gllc_RasterPos4f
# Declared: Line 1329 (Source lines: 1330-1345)
# Address: 0x0dbacea0 - 0x0dbacf4c (Size: 172 bytes, Frame: 224)
.globl __gllc_RasterPos4f
.ent __gllc_RasterPos4f
__gllc_RasterPos4f:
    # Line 1335
    li	$a1,16
    # Line 1330
    addiu	$sp,$sp,-96
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,40($sp)
    lui	$at,0x5
    addiu	$at,$at,6136
    addu	$gp,$t9,$at
    # Line 1335
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 1333
    lw	$a0,__glCurrentContext
    sd	$ra,48($sp)
    # Line 1335
    jal	__glDlistAllocOp2
    sd	$a0,32($sp)
    bnez	$v0,.L0dbacef0
    # Line 1336
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbacef0:
    # Line 1344
    la	$a2,__glle_RasterPos4fv
    # Line 1337
    li	$v1,41
    sh	$v1,12($v0)
    # Line 1343
    ld	$v1,32($sp)
    # Line 1342
    ldc1	$f0,24($sp)
    # Line 1339
    ldc1	$f3,0($sp)
    # Line 1340
    ldc1	$f2,8($sp)
    # Line 1341
    ldc1	$f1,16($sp)
    # Line 1339
    swc1	$f3,16($v0)
    # Line 1340
    swc1	$f2,20($v0)
    # Line 1341
    swc1	$f1,24($v0)
    # Line 1342
    swc1	$f0,28($v0)
    # Line 1344
    move	$a1,$v0
    # Line 1343
    lw	$v0,4696($v1)
    # Line 1344
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 1343
    ori	$v0,$v0,0x20
    # Line 1344
    jal	__glDlistAppendOp
    # Line 1343
    sw	$v0,4696($v1)
    # Line 1345
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_RasterPos4f

# Function: __gllc_RasterPos4fv
# Declared: Line 1348 (Source lines: 1349-1364)
# Address: 0x0dbacf4c - 0x0dbacff4 (Size: 168 bytes, Frame: 48)
.globl __gllc_RasterPos4fv
.ent __gllc_RasterPos4fv
__gllc_RasterPos4fv:
    # Line 1354
    li	$a1,16
    # Line 1349
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 1352
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 1349
    lui	$v0,0x5
    addiu	$v0,$v0,5964
    addu	$gp,$t9,$v0
    # Line 1354
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbacf94
    # Line 1355
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbacf94:
    # Line 1358
    ld	$a0,0($sp)
    # Line 1356
    li	$a1,41
    sh	$a1,12($v0)
    # Line 1358
    lwc1	$f3,0($a0)
    swc1	$f3,16($v0)
    # Line 1359
    lwc1	$f2,4($a0)
    swc1	$f2,20($v0)
    # Line 1360
    lwc1	$f1,8($a0)
    swc1	$f1,24($v0)
    # Line 1361
    lwc1	$f0,12($a0)
    # Line 1363
    la	$a2,__glle_RasterPos4fv
    # Line 1362
    ld	$a3,8($sp)
    # Line 1361
    swc1	$f0,28($v0)
    # Line 1363
    move	$a1,$v0
    # Line 1362
    lw	$v1,4696($a3)
    # Line 1363
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 1362
    ori	$v1,$v1,0x20
    # Line 1363
    jal	__glDlistAppendOp
    # Line 1362
    sw	$v1,4696($a3)
    # Line 1364
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_RasterPos4fv

# Function: __gllc_RasterPos4i
# Declared: Line 1367 (Source lines: 1368-1383)
# Address: 0x0dbacff4 - 0x0dbad0a4 (Size: 176 bytes, Frame: 224)
.globl __gllc_RasterPos4i
.ent __gllc_RasterPos4i
__gllc_RasterPos4i:
    # Line 1368
    addiu	$sp,$sp,-96
    sd	$a1,24($sp)
    # Line 1373
    li	$a1,16
    sd	$a3,16($sp)
    sd	$a2,32($sp)
    sd	$a0,0($sp)
    # Line 1371
    lw	$at,__glCurrentContext
    sd	$gp,40($sp)
    # Line 1368
    lui	$v0,0x5
    addiu	$v0,$v0,5796
    addu	$gp,$t9,$v0
    # Line 1373
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,48($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbad048
    # Line 1374
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbad048:
    # Line 1382
    la	$a2,__glle_RasterPos4iv
    # Line 1375
    li	$a5,42
    sh	$a5,12($v0)
    # Line 1377
    ld	$a4,0($sp)
    # Line 1380
    ld	$a0,16($sp)
    # Line 1379
    ld	$a1,32($sp)
    # Line 1378
    ld	$a3,24($sp)
    # Line 1380
    sw	$a0,28($v0)
    # Line 1379
    sw	$a1,24($v0)
    # Line 1378
    sw	$a3,20($v0)
    # Line 1381
    ld	$a3,8($sp)
    # Line 1377
    sw	$a4,16($v0)
    # Line 1382
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 1381
    lw	$v1,4696($a3)
    # Line 1382
    move	$a1,$v0
    move	$a0,$a3
    # Line 1381
    ori	$v1,$v1,0x20
    # Line 1382
    jal	__glDlistAppendOp
    # Line 1381
    sw	$v1,4696($a3)
    # Line 1383
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_RasterPos4i

# Function: __gllc_RasterPos4iv
# Declared: Line 1386 (Source lines: 1387-1402)
# Address: 0x0dbad0a4 - 0x0dbad14c (Size: 168 bytes, Frame: 48)
.globl __gllc_RasterPos4iv
.ent __gllc_RasterPos4iv
__gllc_RasterPos4iv:
    # Line 1392
    li	$a1,16
    # Line 1387
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 1390
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 1387
    lui	$v0,0x5
    addiu	$v0,$v0,5620
    addu	$gp,$t9,$v0
    # Line 1392
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbad0ec
    # Line 1393
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbad0ec:
    # Line 1396
    ld	$a0,0($sp)
    # Line 1394
    li	$a4,42
    sh	$a4,12($v0)
    # Line 1396
    lw	$a3,0($a0)
    sw	$a3,16($v0)
    # Line 1397
    lw	$a2,4($a0)
    sw	$a2,20($v0)
    # Line 1398
    lw	$a1,8($a0)
    sw	$a1,24($v0)
    # Line 1399
    lw	$a0,12($a0)
    # Line 1401
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 1400
    ld	$a3,8($sp)
    # Line 1399
    sw	$a0,28($v0)
    # Line 1401
    la	$a2,__glle_RasterPos4iv
    # Line 1400
    lw	$v1,4696($a3)
    # Line 1401
    move	$a1,$v0
    move	$a0,$a3
    # Line 1400
    ori	$v1,$v1,0x20
    # Line 1401
    jal	__glDlistAppendOp
    # Line 1400
    sw	$v1,4696($a3)
    # Line 1402
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_RasterPos4iv

# Function: __gllc_RasterPos4s
# Declared: Line 1405 (Source lines: 1406-1421)
# Address: 0x0dbad14c - 0x0dbad1fc (Size: 176 bytes, Frame: 224)
.globl __gllc_RasterPos4s
.ent __gllc_RasterPos4s
__gllc_RasterPos4s:
    # Line 1406
    addiu	$sp,$sp,-96
    sd	$a1,24($sp)
    # Line 1411
    li	$a1,8
    sd	$a3,16($sp)
    sd	$a2,32($sp)
    sd	$a0,0($sp)
    # Line 1409
    lw	$at,__glCurrentContext
    sd	$gp,40($sp)
    # Line 1406
    lui	$v0,0x5
    addiu	$v0,$v0,5452
    addu	$gp,$t9,$v0
    # Line 1411
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,48($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbad1a0
    # Line 1412
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbad1a0:
    # Line 1420
    la	$a2,__glle_RasterPos4sv
    # Line 1413
    li	$a5,43
    sh	$a5,12($v0)
    # Line 1415
    ld	$a4,0($sp)
    # Line 1418
    ld	$a0,16($sp)
    # Line 1417
    ld	$a1,32($sp)
    # Line 1416
    ld	$a3,24($sp)
    # Line 1418
    sh	$a0,22($v0)
    # Line 1417
    sh	$a1,20($v0)
    # Line 1416
    sh	$a3,18($v0)
    # Line 1419
    ld	$a3,8($sp)
    # Line 1415
    sh	$a4,16($v0)
    # Line 1420
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 1419
    lw	$v1,4696($a3)
    # Line 1420
    move	$a1,$v0
    move	$a0,$a3
    # Line 1419
    ori	$v1,$v1,0x20
    # Line 1420
    jal	__glDlistAppendOp
    # Line 1419
    sw	$v1,4696($a3)
    # Line 1421
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_RasterPos4s

# Function: __gllc_RasterPos4sv
# Declared: Line 1424 (Source lines: 1425-1440)
# Address: 0x0dbad1fc - 0x0dbad2a4 (Size: 168 bytes, Frame: 48)
.globl __gllc_RasterPos4sv
.ent __gllc_RasterPos4sv
__gllc_RasterPos4sv:
    # Line 1430
    li	$a1,8
    # Line 1425
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 1428
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 1425
    lui	$v0,0x5
    addiu	$v0,$v0,5276
    addu	$gp,$t9,$v0
    # Line 1430
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbad244
    # Line 1431
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbad244:
    # Line 1434
    ld	$a0,0($sp)
    # Line 1432
    li	$a4,43
    sh	$a4,12($v0)
    # Line 1434
    lh	$a3,0($a0)
    sh	$a3,16($v0)
    # Line 1435
    lh	$a2,2($a0)
    sh	$a2,18($v0)
    # Line 1436
    lh	$a1,4($a0)
    sh	$a1,20($v0)
    # Line 1437
    lh	$a0,6($a0)
    # Line 1439
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 1438
    ld	$a3,8($sp)
    # Line 1437
    sh	$a0,22($v0)
    # Line 1439
    la	$a2,__glle_RasterPos4sv
    # Line 1438
    lw	$v1,4696($a3)
    # Line 1439
    move	$a1,$v0
    move	$a0,$a3
    # Line 1438
    ori	$v1,$v1,0x20
    # Line 1439
    jal	__glDlistAppendOp
    # Line 1438
    sw	$v1,4696($a3)
    # Line 1440
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_RasterPos4sv

# Function: __gllc_Rectd
# Declared: Line 1443 (Source lines: 1444-1460)
# Address: 0x0dbad2a4 - 0x0dbad358 (Size: 180 bytes, Frame: 224)
.globl __gllc_Rectd
.ent __gllc_Rectd
__gllc_Rectd:
    # Line 1449
    li	$a1,32
    # Line 1444
    addiu	$sp,$sp,-96
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,40($sp)
    lui	$at,0x5
    addiu	$at,$at,5108
    addu	$gp,$t9,$at
    # Line 1449
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 1447
    lw	$a0,__glCurrentContext
    sd	$ra,48($sp)
    # Line 1449
    jal	__glDlistAllocOp2
    sd	$a0,32($sp)
    bnez	$v0,.L0dbad2f4
    # Line 1450
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbad2f4:
    # Line 1459
    la	$a2,__glle_Rectdv
    # Line 1451
    li	$a0,44
    sh	$a0,12($v0)
    # Line 1452
    li	$v1,1
    sb	$v1,14($v0)
    # Line 1458
    ld	$v1,32($sp)
    # Line 1457
    ldc1	$f0,24($sp)
    # Line 1454
    ldc1	$f3,0($sp)
    # Line 1455
    ldc1	$f2,8($sp)
    # Line 1456
    ldc1	$f1,16($sp)
    # Line 1454
    sdc1	$f3,16($v0)
    # Line 1455
    sdc1	$f2,24($v0)
    # Line 1456
    sdc1	$f1,32($v0)
    # Line 1457
    sdc1	$f0,40($v0)
    # Line 1459
    move	$a1,$v0
    # Line 1458
    lw	$v0,4696($v1)
    # Line 1459
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 1458
    ori	$v0,$v0,0x40
    # Line 1459
    jal	__glDlistAppendOp
    # Line 1458
    sw	$v0,4696($v1)
    # Line 1460
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_Rectd

# Function: __gllc_Rectdv
# Declared: Line 1463 (Source lines: 1464-1480)
# Address: 0x0dbad358 - 0x0dbad410 (Size: 184 bytes, Frame: 192)
.globl __gllc_Rectdv
.ent __gllc_Rectdv
__gllc_Rectdv:
    # Line 1464
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    # Line 1469
    li	$a1,32
    sd	$a0,0($sp)
    # Line 1467
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 1464
    lui	$v0,0x5
    addiu	$v0,$v0,4928
    addu	$gp,$t9,$v0
    # Line 1469
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbad3a4
    # Line 1470
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbad3a4:
    # Line 1474
    ld	$a1,0($sp)
    # Line 1471
    li	$a3,44
    # Line 1472
    li	$a2,1
    sb	$a2,14($v0)
    # Line 1471
    sh	$a3,12($v0)
    # Line 1474
    ldc1	$f3,0($a1)
    sdc1	$f3,16($v0)
    # Line 1475
    ldc1	$f2,8($a1)
    # Line 1476
    ld	$a0,8($sp)
    # Line 1475
    sdc1	$f2,24($v0)
    # Line 1476
    ldc1	$f1,0($a0)
    sdc1	$f1,32($v0)
    # Line 1477
    ldc1	$f0,8($a0)
    # Line 1479
    la	$a2,__glle_Rectdv
    # Line 1478
    ld	$a3,16($sp)
    # Line 1477
    sdc1	$f0,40($v0)
    # Line 1479
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 1478
    lw	$v1,4696($a3)
    # Line 1479
    move	$a1,$v0
    move	$a0,$a3
    # Line 1478
    ori	$v1,$v1,0x40
    # Line 1479
    jal	__glDlistAppendOp
    # Line 1478
    sw	$v1,4696($a3)
    # Line 1480
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_Rectdv

# Function: __gllc_Rectf
# Declared: Line 1483 (Source lines: 1484-1499)
# Address: 0x0dbad410 - 0x0dbad4bc (Size: 172 bytes, Frame: 224)
.globl __gllc_Rectf
.ent __gllc_Rectf
__gllc_Rectf:
    # Line 1489
    li	$a1,16
    # Line 1484
    addiu	$sp,$sp,-96
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,40($sp)
    lui	$at,0x5
    addiu	$at,$at,4744
    addu	$gp,$t9,$at
    # Line 1489
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 1487
    lw	$a0,__glCurrentContext
    sd	$ra,48($sp)
    # Line 1489
    jal	__glDlistAllocOp2
    sd	$a0,32($sp)
    bnez	$v0,.L0dbad460
    # Line 1490
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbad460:
    # Line 1498
    la	$a2,__glle_Rectfv
    # Line 1491
    li	$v1,45
    sh	$v1,12($v0)
    # Line 1497
    ld	$v1,32($sp)
    # Line 1496
    ldc1	$f0,24($sp)
    # Line 1493
    ldc1	$f3,0($sp)
    # Line 1494
    ldc1	$f2,8($sp)
    # Line 1495
    ldc1	$f1,16($sp)
    # Line 1493
    swc1	$f3,16($v0)
    # Line 1494
    swc1	$f2,20($v0)
    # Line 1495
    swc1	$f1,24($v0)
    # Line 1496
    swc1	$f0,28($v0)
    # Line 1498
    move	$a1,$v0
    # Line 1497
    lw	$v0,4696($v1)
    # Line 1498
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 1497
    ori	$v0,$v0,0x40
    # Line 1498
    jal	__glDlistAppendOp
    # Line 1497
    sw	$v0,4696($v1)
    # Line 1499
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_Rectf

# Function: __gllc_Rectfv
# Declared: Line 1502 (Source lines: 1503-1518)
# Address: 0x0dbad4bc - 0x0dbad56c (Size: 176 bytes, Frame: 192)
.globl __gllc_Rectfv
.ent __gllc_Rectfv
__gllc_Rectfv:
    # Line 1503
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    # Line 1508
    li	$a1,16
    sd	$a0,0($sp)
    # Line 1506
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 1503
    lui	$v0,0x5
    addiu	$v0,$v0,4572
    addu	$gp,$t9,$v0
    # Line 1508
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbad508
    # Line 1509
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbad508:
    # Line 1512
    ld	$a1,0($sp)
    # Line 1510
    li	$a2,45
    sh	$a2,12($v0)
    # Line 1512
    lwc1	$f3,0($a1)
    swc1	$f3,16($v0)
    # Line 1513
    lwc1	$f2,4($a1)
    # Line 1514
    ld	$a0,8($sp)
    # Line 1513
    swc1	$f2,20($v0)
    # Line 1514
    lwc1	$f1,0($a0)
    swc1	$f1,24($v0)
    # Line 1515
    lwc1	$f0,4($a0)
    # Line 1517
    la	$a2,__glle_Rectfv
    # Line 1516
    ld	$a3,16($sp)
    # Line 1515
    swc1	$f0,28($v0)
    # Line 1517
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 1516
    lw	$v1,4696($a3)
    # Line 1517
    move	$a1,$v0
    move	$a0,$a3
    # Line 1516
    ori	$v1,$v1,0x40
    # Line 1517
    jal	__glDlistAppendOp
    # Line 1516
    sw	$v1,4696($a3)
    # Line 1518
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_Rectfv

# Function: __gllc_Recti
# Declared: Line 1521 (Source lines: 1522-1537)
# Address: 0x0dbad56c - 0x0dbad61c (Size: 176 bytes, Frame: 224)
.globl __gllc_Recti
.ent __gllc_Recti
__gllc_Recti:
    # Line 1522
    addiu	$sp,$sp,-96
    sd	$a1,24($sp)
    # Line 1527
    li	$a1,16
    sd	$a3,16($sp)
    sd	$a2,32($sp)
    sd	$a0,0($sp)
    # Line 1525
    lw	$at,__glCurrentContext
    sd	$gp,40($sp)
    # Line 1522
    lui	$v0,0x5
    addiu	$v0,$v0,4396
    addu	$gp,$t9,$v0
    # Line 1527
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,48($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbad5c0
    # Line 1528
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbad5c0:
    # Line 1536
    la	$a2,__glle_Rectiv
    # Line 1529
    li	$a5,46
    sh	$a5,12($v0)
    # Line 1531
    ld	$a4,0($sp)
    # Line 1534
    ld	$a0,16($sp)
    # Line 1533
    ld	$a1,32($sp)
    # Line 1532
    ld	$a3,24($sp)
    # Line 1534
    sw	$a0,28($v0)
    # Line 1533
    sw	$a1,24($v0)
    # Line 1532
    sw	$a3,20($v0)
    # Line 1535
    ld	$a3,8($sp)
    # Line 1531
    sw	$a4,16($v0)
    # Line 1536
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 1535
    lw	$v1,4696($a3)
    # Line 1536
    move	$a1,$v0
    move	$a0,$a3
    # Line 1535
    ori	$v1,$v1,0x40
    # Line 1536
    jal	__glDlistAppendOp
    # Line 1535
    sw	$v1,4696($a3)
    # Line 1537
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_Recti

# Function: __gllc_Rectiv
# Declared: Line 1540 (Source lines: 1541-1556)
# Address: 0x0dbad61c - 0x0dbad6cc (Size: 176 bytes, Frame: 192)
.globl __gllc_Rectiv
.ent __gllc_Rectiv
__gllc_Rectiv:
    # Line 1541
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    # Line 1546
    li	$a1,16
    sd	$a0,0($sp)
    # Line 1544
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 1541
    lui	$v0,0x5
    addiu	$v0,$v0,4220
    addu	$gp,$t9,$v0
    # Line 1546
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbad668
    # Line 1547
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbad668:
    # Line 1550
    ld	$a2,0($sp)
    # Line 1548
    li	$a4,46
    sh	$a4,12($v0)
    # Line 1550
    lw	$a3,0($a2)
    sw	$a3,16($v0)
    # Line 1551
    lw	$a2,4($a2)
    # Line 1552
    ld	$a0,8($sp)
    # Line 1551
    sw	$a2,20($v0)
    # Line 1552
    lw	$a1,0($a0)
    sw	$a1,24($v0)
    # Line 1553
    lw	$a0,4($a0)
    # Line 1555
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 1554
    ld	$a3,16($sp)
    # Line 1553
    sw	$a0,28($v0)
    # Line 1555
    la	$a2,__glle_Rectiv
    # Line 1554
    lw	$v1,4696($a3)
    # Line 1555
    move	$a1,$v0
    move	$a0,$a3
    # Line 1554
    ori	$v1,$v1,0x40
    # Line 1555
    jal	__glDlistAppendOp
    # Line 1554
    sw	$v1,4696($a3)
    # Line 1556
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_Rectiv

# Function: __gllc_Rects
# Declared: Line 1559 (Source lines: 1560-1575)
# Address: 0x0dbad6cc - 0x0dbad77c (Size: 176 bytes, Frame: 224)
.globl __gllc_Rects
.ent __gllc_Rects
__gllc_Rects:
    # Line 1560
    addiu	$sp,$sp,-96
    sd	$a1,24($sp)
    # Line 1565
    li	$a1,8
    sd	$a3,16($sp)
    sd	$a2,32($sp)
    sd	$a0,0($sp)
    # Line 1563
    lw	$at,__glCurrentContext
    sd	$gp,40($sp)
    # Line 1560
    lui	$v0,0x5
    addiu	$v0,$v0,4044
    addu	$gp,$t9,$v0
    # Line 1565
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,48($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbad720
    # Line 1566
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbad720:
    # Line 1574
    la	$a2,__glle_Rectsv
    # Line 1567
    li	$a5,47
    sh	$a5,12($v0)
    # Line 1569
    ld	$a4,0($sp)
    # Line 1572
    ld	$a0,16($sp)
    # Line 1571
    ld	$a1,32($sp)
    # Line 1570
    ld	$a3,24($sp)
    # Line 1572
    sh	$a0,22($v0)
    # Line 1571
    sh	$a1,20($v0)
    # Line 1570
    sh	$a3,18($v0)
    # Line 1573
    ld	$a3,8($sp)
    # Line 1569
    sh	$a4,16($v0)
    # Line 1574
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 1573
    lw	$v1,4696($a3)
    # Line 1574
    move	$a1,$v0
    move	$a0,$a3
    # Line 1573
    ori	$v1,$v1,0x40
    # Line 1574
    jal	__glDlistAppendOp
    # Line 1573
    sw	$v1,4696($a3)
    # Line 1575
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_Rects

# Function: __gllc_Rectsv
# Declared: Line 1578 (Source lines: 1579-1594)
# Address: 0x0dbad77c - 0x0dbad82c (Size: 176 bytes, Frame: 192)
.globl __gllc_Rectsv
.ent __gllc_Rectsv
__gllc_Rectsv:
    # Line 1579
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    # Line 1584
    li	$a1,8
    sd	$a0,0($sp)
    # Line 1582
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 1579
    lui	$v0,0x5
    addiu	$v0,$v0,3868
    addu	$gp,$t9,$v0
    # Line 1584
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbad7c8
    # Line 1585
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbad7c8:
    # Line 1588
    ld	$a2,0($sp)
    # Line 1586
    li	$a4,47
    sh	$a4,12($v0)
    # Line 1588
    lh	$a3,0($a2)
    sh	$a3,16($v0)
    # Line 1589
    lh	$a2,2($a2)
    # Line 1590
    ld	$a0,8($sp)
    # Line 1589
    sh	$a2,18($v0)
    # Line 1590
    lh	$a1,0($a0)
    sh	$a1,20($v0)
    # Line 1591
    lh	$a0,2($a0)
    # Line 1593
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 1592
    ld	$a3,16($sp)
    # Line 1591
    sh	$a0,22($v0)
    # Line 1593
    la	$a2,__glle_Rectsv
    # Line 1592
    lw	$v1,4696($a3)
    # Line 1593
    move	$a1,$v0
    move	$a0,$a3
    # Line 1592
    ori	$v1,$v1,0x40
    # Line 1593
    jal	__glDlistAppendOp
    # Line 1592
    sw	$v1,4696($a3)
    # Line 1594
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_Rectsv

# Function: __gllc_TexCoord1d
# Declared: Line 1597 (Source lines: 1598-1611)
# Address: 0x0dbad82c - 0x0dbad8bc (Size: 144 bytes, Frame: 48)
.globl __gllc_TexCoord1d
.ent __gllc_TexCoord1d
__gllc_TexCoord1d:
    # Line 1603
    li	$a1,8
    # Line 1598
    addiu	$sp,$sp,-48
    sdc1	$f12,0($sp)
    sd	$gp,16($sp)
    lui	$at,0x5
    addiu	$at,$at,3692
    addu	$gp,$t9,$at
    # Line 1603
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 1601
    lw	$a0,__glCurrentContext
    sd	$ra,24($sp)
    # Line 1603
    jal	__glDlistAllocOp2
    sd	$a0,8($sp)
    bnez	$v0,.L0dbad870
    # Line 1604
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbad870:
    # Line 1610
    la	$a2,__glle_TexCoord1dv
    # Line 1605
    li	$a0,48
    sh	$a0,12($v0)
    # Line 1606
    li	$v1,1
    # Line 1608
    ldc1	$f0,0($sp)
    # Line 1606
    sb	$v1,14($v0)
    # Line 1609
    ld	$v1,8($sp)
    # Line 1608
    sdc1	$f0,16($v0)
    # Line 1610
    move	$a1,$v0
    # Line 1609
    lw	$v0,4696($v1)
    # Line 1610
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 1609
    ori	$v0,$v0,0x8
    # Line 1610
    jal	__glDlistAppendOp
    # Line 1609
    sw	$v0,4696($v1)
    # Line 1611
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_TexCoord1d

# Function: __gllc_TexCoord1dv
# Declared: Line 1614 (Source lines: 1615-1628)
# Address: 0x0dbad8bc - 0x0dbad954 (Size: 152 bytes, Frame: 48)
.globl __gllc_TexCoord1dv
.ent __gllc_TexCoord1dv
__gllc_TexCoord1dv:
    # Line 1620
    li	$a1,8
    # Line 1615
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 1618
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 1615
    lui	$v0,0x5
    addiu	$v0,$v0,3548
    addu	$gp,$t9,$v0
    # Line 1620
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbad904
    # Line 1621
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbad904:
    # Line 1625
    ld	$a0,0($sp)
    # Line 1622
    li	$a2,48
    # Line 1623
    li	$a1,1
    sb	$a1,14($v0)
    # Line 1622
    sh	$a2,12($v0)
    # Line 1625
    ldc1	$f0,0($a0)
    # Line 1627
    la	$a2,__glle_TexCoord1dv
    # Line 1626
    ld	$a3,8($sp)
    # Line 1625
    sdc1	$f0,16($v0)
    # Line 1627
    move	$a1,$v0
    # Line 1626
    lw	$v1,4696($a3)
    # Line 1627
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 1626
    ori	$v1,$v1,0x8
    # Line 1627
    jal	__glDlistAppendOp
    # Line 1626
    sw	$v1,4696($a3)
    # Line 1628
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_TexCoord1dv

# Function: __gllc_TexCoord1f
# Declared: Line 1631 (Source lines: 1632-1644)
# Address: 0x0dbad954 - 0x0dbad9dc (Size: 136 bytes, Frame: 48)
.globl __gllc_TexCoord1f
.ent __gllc_TexCoord1f
__gllc_TexCoord1f:
    # Line 1637
    li	$a1,4
    # Line 1632
    addiu	$sp,$sp,-48
    sdc1	$f12,0($sp)
    sd	$gp,16($sp)
    lui	$at,0x5
    addiu	$at,$at,3396
    addu	$gp,$t9,$at
    # Line 1637
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 1635
    lw	$a0,__glCurrentContext
    sd	$ra,24($sp)
    # Line 1637
    jal	__glDlistAllocOp2
    sd	$a0,8($sp)
    bnez	$v0,.L0dbad998
    # Line 1638
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbad998:
    # Line 1643
    la	$a2,__glle_TexCoord1fv
    # Line 1639
    li	$v1,49
    # Line 1641
    ldc1	$f0,0($sp)
    # Line 1639
    sh	$v1,12($v0)
    # Line 1642
    ld	$v1,8($sp)
    # Line 1641
    swc1	$f0,16($v0)
    # Line 1643
    move	$a1,$v0
    # Line 1642
    lw	$v0,4696($v1)
    # Line 1643
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 1642
    ori	$v0,$v0,0x8
    # Line 1643
    jal	__glDlistAppendOp
    # Line 1642
    sw	$v0,4696($v1)
    # Line 1644
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_TexCoord1f

# Function: __gllc_TexCoord1fv
# Declared: Line 1647 (Source lines: 1648-1660)
# Address: 0x0dbad9dc - 0x0dbada6c (Size: 144 bytes, Frame: 48)
.globl __gllc_TexCoord1fv
.ent __gllc_TexCoord1fv
__gllc_TexCoord1fv:
    # Line 1653
    li	$a1,4
    # Line 1648
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 1651
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 1648
    lui	$v0,0x5
    addiu	$v0,$v0,3260
    addu	$gp,$t9,$v0
    # Line 1653
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbada24
    # Line 1654
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbada24:
    # Line 1657
    ld	$a0,0($sp)
    # Line 1655
    li	$a1,49
    sh	$a1,12($v0)
    # Line 1657
    lwc1	$f0,0($a0)
    # Line 1659
    la	$a2,__glle_TexCoord1fv
    # Line 1658
    ld	$a3,8($sp)
    # Line 1657
    swc1	$f0,16($v0)
    # Line 1659
    move	$a1,$v0
    # Line 1658
    lw	$v1,4696($a3)
    # Line 1659
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 1658
    ori	$v1,$v1,0x8
    # Line 1659
    jal	__glDlistAppendOp
    # Line 1658
    sw	$v1,4696($a3)
    # Line 1660
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_TexCoord1fv

# Function: __gllc_TexCoord1i
# Declared: Line 1663 (Source lines: 1664-1676)
# Address: 0x0dbada6c - 0x0dbadaf8 (Size: 140 bytes, Frame: 48)
.globl __gllc_TexCoord1i
.ent __gllc_TexCoord1i
__gllc_TexCoord1i:
    # Line 1669
    li	$a1,4
    # Line 1664
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 1667
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 1664
    lui	$v0,0x5
    addiu	$v0,$v0,3116
    addu	$gp,$t9,$v0
    # Line 1669
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbadab4
    # Line 1670
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbadab4:
    # Line 1675
    la	$a2,__glle_TexCoord1iv
    # Line 1674
    ld	$a3,8($sp)
    # Line 1673
    ld	$a0,0($sp)
    # Line 1671
    li	$a1,50
    sh	$a1,12($v0)
    # Line 1673
    sw	$a0,16($v0)
    # Line 1675
    move	$a1,$v0
    # Line 1674
    lw	$v1,4696($a3)
    # Line 1675
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 1674
    ori	$v1,$v1,0x8
    # Line 1675
    jal	__glDlistAppendOp
    # Line 1674
    sw	$v1,4696($a3)
    # Line 1676
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_TexCoord1i

# Function: __gllc_TexCoord1iv
# Declared: Line 1679 (Source lines: 1680-1692)
# Address: 0x0dbadaf8 - 0x0dbadb88 (Size: 144 bytes, Frame: 48)
.globl __gllc_TexCoord1iv
.ent __gllc_TexCoord1iv
__gllc_TexCoord1iv:
    # Line 1685
    li	$a1,4
    # Line 1680
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 1683
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 1680
    lui	$v0,0x5
    addiu	$v0,$v0,2976
    addu	$gp,$t9,$v0
    # Line 1685
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbadb40
    # Line 1686
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbadb40:
    # Line 1689
    ld	$a0,0($sp)
    # Line 1687
    li	$a1,50
    sh	$a1,12($v0)
    # Line 1689
    lw	$a0,0($a0)
    # Line 1691
    la	$a2,__glle_TexCoord1iv
    # Line 1690
    ld	$a3,8($sp)
    # Line 1689
    sw	$a0,16($v0)
    # Line 1691
    move	$a1,$v0
    # Line 1690
    lw	$v1,4696($a3)
    # Line 1691
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 1690
    ori	$v1,$v1,0x8
    # Line 1691
    jal	__glDlistAppendOp
    # Line 1690
    sw	$v1,4696($a3)
    # Line 1692
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_TexCoord1iv

# Function: __gllc_TexCoord1s
# Declared: Line 1695 (Source lines: 1696-1708)
# Address: 0x0dbadb88 - 0x0dbadc14 (Size: 140 bytes, Frame: 48)
.globl __gllc_TexCoord1s
.ent __gllc_TexCoord1s
__gllc_TexCoord1s:
    # Line 1701
    li	$a1,4
    # Line 1696
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 1699
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 1696
    lui	$v0,0x5
    addiu	$v0,$v0,2832
    addu	$gp,$t9,$v0
    # Line 1701
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbadbd0
    # Line 1702
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbadbd0:
    # Line 1707
    la	$a2,__glle_TexCoord1sv
    # Line 1706
    ld	$a3,8($sp)
    # Line 1705
    ld	$a0,0($sp)
    # Line 1703
    li	$a1,51
    sh	$a1,12($v0)
    # Line 1705
    sh	$a0,16($v0)
    # Line 1707
    move	$a1,$v0
    # Line 1706
    lw	$v1,4696($a3)
    # Line 1707
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 1706
    ori	$v1,$v1,0x8
    # Line 1707
    jal	__glDlistAppendOp
    # Line 1706
    sw	$v1,4696($a3)
    # Line 1708
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_TexCoord1s

# Function: __gllc_TexCoord1sv
# Declared: Line 1711 (Source lines: 1712-1724)
# Address: 0x0dbadc14 - 0x0dbadca4 (Size: 144 bytes, Frame: 48)
.globl __gllc_TexCoord1sv
.ent __gllc_TexCoord1sv
__gllc_TexCoord1sv:
    # Line 1717
    li	$a1,4
    # Line 1712
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 1715
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 1712
    lui	$v0,0x5
    addiu	$v0,$v0,2692
    addu	$gp,$t9,$v0
    # Line 1717
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbadc5c
    # Line 1718
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbadc5c:
    # Line 1721
    ld	$a0,0($sp)
    # Line 1719
    li	$a1,51
    sh	$a1,12($v0)
    # Line 1721
    lh	$a0,0($a0)
    # Line 1723
    la	$a2,__glle_TexCoord1sv
    # Line 1722
    ld	$a3,8($sp)
    # Line 1721
    sh	$a0,16($v0)
    # Line 1723
    move	$a1,$v0
    # Line 1722
    lw	$v1,4696($a3)
    # Line 1723
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 1722
    ori	$v1,$v1,0x8
    # Line 1723
    jal	__glDlistAppendOp
    # Line 1722
    sw	$v1,4696($a3)
    # Line 1724
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_TexCoord1sv

# Function: __gllc_TexCoord2d
# Declared: Line 1727 (Source lines: 1728-1742)
# Address: 0x0dbadca4 - 0x0dbadd40 (Size: 156 bytes, Frame: 192)
.globl __gllc_TexCoord2d
.ent __gllc_TexCoord2d
__gllc_TexCoord2d:
    # Line 1733
    li	$a1,16
    # Line 1728
    addiu	$sp,$sp,-64
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,24($sp)
    lui	$at,0x5
    addiu	$at,$at,2548
    addu	$gp,$t9,$at
    # Line 1733
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 1731
    lw	$a0,__glCurrentContext
    sd	$ra,32($sp)
    # Line 1733
    jal	__glDlistAllocOp2
    sd	$a0,16($sp)
    bnez	$v0,.L0dbadcec
    # Line 1734
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbadcec:
    # Line 1741
    la	$a2,__glle_TexCoord2dv
    # Line 1735
    li	$a0,52
    sh	$a0,12($v0)
    # Line 1736
    li	$v1,1
    sb	$v1,14($v0)
    # Line 1738
    ldc1	$f1,0($sp)
    # Line 1739
    ldc1	$f0,8($sp)
    # Line 1740
    ld	$v1,16($sp)
    # Line 1738
    sdc1	$f1,16($v0)
    # Line 1739
    sdc1	$f0,24($v0)
    # Line 1741
    move	$a1,$v0
    # Line 1740
    lw	$v0,4696($v1)
    # Line 1741
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 1740
    ori	$v0,$v0,0x8
    # Line 1741
    jal	__glDlistAppendOp
    # Line 1740
    sw	$v0,4696($v1)
    # Line 1742
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_TexCoord2d

# Function: __gllc_TexCoord2dv
# Declared: Line 1745 (Source lines: 1746-1760)
# Address: 0x0dbadd40 - 0x0dbadde0 (Size: 160 bytes, Frame: 48)
.globl __gllc_TexCoord2dv
.ent __gllc_TexCoord2dv
__gllc_TexCoord2dv:
    # Line 1751
    li	$a1,16
    # Line 1746
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 1749
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 1746
    lui	$v0,0x5
    addiu	$v0,$v0,2392
    addu	$gp,$t9,$v0
    # Line 1751
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbadd88
    # Line 1752
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbadd88:
    # Line 1756
    ld	$a0,0($sp)
    # Line 1753
    li	$a2,52
    # Line 1754
    li	$a1,1
    sb	$a1,14($v0)
    # Line 1753
    sh	$a2,12($v0)
    # Line 1756
    ldc1	$f1,0($a0)
    sdc1	$f1,16($v0)
    # Line 1757
    ldc1	$f0,8($a0)
    # Line 1759
    la	$a2,__glle_TexCoord2dv
    # Line 1758
    ld	$a3,8($sp)
    # Line 1757
    sdc1	$f0,24($v0)
    # Line 1759
    move	$a1,$v0
    # Line 1758
    lw	$v1,4696($a3)
    # Line 1759
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 1758
    ori	$v1,$v1,0x8
    # Line 1759
    jal	__glDlistAppendOp
    # Line 1758
    sw	$v1,4696($a3)
    # Line 1760
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_TexCoord2dv

# Function: __gllc_TexCoord2f
# Declared: Line 1763 (Source lines: 1764-1777)
# Address: 0x0dbadde0 - 0x0dbade74 (Size: 148 bytes, Frame: 192)
.globl __gllc_TexCoord2f
.ent __gllc_TexCoord2f
__gllc_TexCoord2f:
    # Line 1769
    li	$a1,8
    # Line 1764
    addiu	$sp,$sp,-64
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,24($sp)
    lui	$at,0x5
    addiu	$at,$at,2232
    addu	$gp,$t9,$at
    # Line 1769
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 1767
    lw	$a0,__glCurrentContext
    sd	$ra,32($sp)
    # Line 1769
    jal	__glDlistAllocOp2
    sd	$a0,16($sp)
    bnez	$v0,.L0dbade28
    # Line 1770
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbade28:
    # Line 1776
    la	$a2,__glle_TexCoord2fv
    # Line 1771
    li	$v1,53
    sh	$v1,12($v0)
    # Line 1773
    ldc1	$f1,0($sp)
    # Line 1774
    ldc1	$f0,8($sp)
    # Line 1775
    ld	$v1,16($sp)
    # Line 1773
    swc1	$f1,16($v0)
    # Line 1774
    swc1	$f0,20($v0)
    # Line 1776
    move	$a1,$v0
    # Line 1775
    lw	$v0,4696($v1)
    # Line 1776
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 1775
    ori	$v0,$v0,0x8
    # Line 1776
    jal	__glDlistAppendOp
    # Line 1775
    sw	$v0,4696($v1)
    # Line 1777
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_TexCoord2f

# Function: __gllc_TexCoord2fv
# Declared: Line 1780 (Source lines: 1781-1794)
# Address: 0x0dbade74 - 0x0dbadf0c (Size: 152 bytes, Frame: 48)
.globl __gllc_TexCoord2fv
.ent __gllc_TexCoord2fv
__gllc_TexCoord2fv:
    # Line 1786
    li	$a1,8
    # Line 1781
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 1784
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 1781
    lui	$v0,0x5
    addiu	$v0,$v0,2084
    addu	$gp,$t9,$v0
    # Line 1786
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbadebc
    # Line 1787
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbadebc:
    # Line 1790
    ld	$a0,0($sp)
    # Line 1788
    li	$a1,53
    sh	$a1,12($v0)
    # Line 1790
    lwc1	$f1,0($a0)
    swc1	$f1,16($v0)
    # Line 1791
    lwc1	$f0,4($a0)
    # Line 1793
    la	$a2,__glle_TexCoord2fv
    # Line 1792
    ld	$a3,8($sp)
    # Line 1791
    swc1	$f0,20($v0)
    # Line 1793
    move	$a1,$v0
    # Line 1792
    lw	$v1,4696($a3)
    # Line 1793
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 1792
    ori	$v1,$v1,0x8
    # Line 1793
    jal	__glDlistAppendOp
    # Line 1792
    sw	$v1,4696($a3)
    # Line 1794
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_TexCoord2fv

# Function: __gllc_TexCoord2i
# Declared: Line 1797 (Source lines: 1798-1811)
# Address: 0x0dbadf0c - 0x0dbadfa4 (Size: 152 bytes, Frame: 192)
.globl __gllc_TexCoord2i
.ent __gllc_TexCoord2i
__gllc_TexCoord2i:
    # Line 1798
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    # Line 1803
    li	$a1,8
    sd	$a0,0($sp)
    # Line 1801
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 1798
    lui	$v0,0x5
    addiu	$v0,$v0,1932
    addu	$gp,$t9,$v0
    # Line 1803
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbadf58
    # Line 1804
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbadf58:
    # Line 1810
    la	$a2,__glle_TexCoord2iv
    # Line 1805
    li	$a3,54
    sh	$a3,12($v0)
    # Line 1808
    ld	$a0,8($sp)
    # Line 1807
    ld	$a1,0($sp)
    # Line 1809
    ld	$a3,16($sp)
    # Line 1808
    sw	$a0,20($v0)
    # Line 1807
    sw	$a1,16($v0)
    # Line 1810
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 1809
    lw	$v1,4696($a3)
    # Line 1810
    move	$a1,$v0
    move	$a0,$a3
    # Line 1809
    ori	$v1,$v1,0x8
    # Line 1810
    jal	__glDlistAppendOp
    # Line 1809
    sw	$v1,4696($a3)
    # Line 1811
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_TexCoord2i

# Function: __gllc_TexCoord2iv
# Declared: Line 1814 (Source lines: 1815-1828)
# Address: 0x0dbadfa4 - 0x0dbae03c (Size: 152 bytes, Frame: 48)
.globl __gllc_TexCoord2iv
.ent __gllc_TexCoord2iv
__gllc_TexCoord2iv:
    # Line 1820
    li	$a1,8
    # Line 1815
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 1818
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 1815
    lui	$v0,0x5
    addiu	$v0,$v0,1780
    addu	$gp,$t9,$v0
    # Line 1820
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbadfec
    # Line 1821
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbadfec:
    # Line 1824
    ld	$a0,0($sp)
    # Line 1822
    li	$a2,54
    sh	$a2,12($v0)
    # Line 1824
    lw	$a1,0($a0)
    sw	$a1,16($v0)
    # Line 1825
    lw	$a0,4($a0)
    # Line 1827
    la	$a2,__glle_TexCoord2iv
    # Line 1826
    ld	$a3,8($sp)
    # Line 1825
    sw	$a0,20($v0)
    # Line 1827
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 1826
    lw	$v1,4696($a3)
    # Line 1827
    move	$a1,$v0
    move	$a0,$a3
    # Line 1826
    ori	$v1,$v1,0x8
    # Line 1827
    jal	__glDlistAppendOp
    # Line 1826
    sw	$v1,4696($a3)
    # Line 1828
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_TexCoord2iv

# Function: __gllc_TexCoord2s
# Declared: Line 1831 (Source lines: 1832-1845)
# Address: 0x0dbae03c - 0x0dbae0d4 (Size: 152 bytes, Frame: 192)
.globl __gllc_TexCoord2s
.ent __gllc_TexCoord2s
__gllc_TexCoord2s:
    # Line 1832
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    # Line 1837
    li	$a1,4
    sd	$a0,0($sp)
    # Line 1835
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 1832
    lui	$v0,0x5
    addiu	$v0,$v0,1628
    addu	$gp,$t9,$v0
    # Line 1837
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbae088
    # Line 1838
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbae088:
    # Line 1844
    la	$a2,__glle_TexCoord2sv
    # Line 1839
    li	$a3,55
    sh	$a3,12($v0)
    # Line 1842
    ld	$a0,8($sp)
    # Line 1841
    ld	$a1,0($sp)
    # Line 1843
    ld	$a3,16($sp)
    # Line 1842
    sh	$a0,18($v0)
    # Line 1841
    sh	$a1,16($v0)
    # Line 1844
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 1843
    lw	$v1,4696($a3)
    # Line 1844
    move	$a1,$v0
    move	$a0,$a3
    # Line 1843
    ori	$v1,$v1,0x8
    # Line 1844
    jal	__glDlistAppendOp
    # Line 1843
    sw	$v1,4696($a3)
    # Line 1845
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_TexCoord2s

# Function: __gllc_TexCoord2sv
# Declared: Line 1848 (Source lines: 1849-1862)
# Address: 0x0dbae0d4 - 0x0dbae16c (Size: 152 bytes, Frame: 48)
.globl __gllc_TexCoord2sv
.ent __gllc_TexCoord2sv
__gllc_TexCoord2sv:
    # Line 1854
    li	$a1,4
    # Line 1849
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 1852
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 1849
    lui	$v0,0x5
    addiu	$v0,$v0,1476
    addu	$gp,$t9,$v0
    # Line 1854
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbae11c
    # Line 1855
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbae11c:
    # Line 1858
    ld	$a0,0($sp)
    # Line 1856
    li	$a2,55
    sh	$a2,12($v0)
    # Line 1858
    lh	$a1,0($a0)
    sh	$a1,16($v0)
    # Line 1859
    lh	$a0,2($a0)
    # Line 1861
    la	$a2,__glle_TexCoord2sv
    # Line 1860
    ld	$a3,8($sp)
    # Line 1859
    sh	$a0,18($v0)
    # Line 1861
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 1860
    lw	$v1,4696($a3)
    # Line 1861
    move	$a1,$v0
    move	$a0,$a3
    # Line 1860
    ori	$v1,$v1,0x8
    # Line 1861
    jal	__glDlistAppendOp
    # Line 1860
    sw	$v1,4696($a3)
    # Line 1862
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_TexCoord2sv

# Function: __gllc_TexCoord3d
# Declared: Line 1865 (Source lines: 1866-1881)
# Address: 0x0dbae16c - 0x0dbae214 (Size: 168 bytes, Frame: 208)
.globl __gllc_TexCoord3d
.ent __gllc_TexCoord3d
__gllc_TexCoord3d:
    # Line 1871
    li	$a1,24
    # Line 1866
    addiu	$sp,$sp,-80
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,32($sp)
    lui	$at,0x5
    addiu	$at,$at,1324
    addu	$gp,$t9,$at
    # Line 1871
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 1869
    lw	$a0,__glCurrentContext
    sd	$ra,40($sp)
    # Line 1871
    jal	__glDlistAllocOp2
    sd	$a0,24($sp)
    bnez	$v0,.L0dbae1b8
    # Line 1872
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbae1b8:
    # Line 1880
    la	$a2,__glle_TexCoord3dv
    # Line 1873
    li	$a0,56
    sh	$a0,12($v0)
    # Line 1874
    li	$v1,1
    sb	$v1,14($v0)
    # Line 1879
    ld	$v1,24($sp)
    # Line 1876
    ldc1	$f2,0($sp)
    # Line 1877
    ldc1	$f1,8($sp)
    # Line 1878
    ldc1	$f0,16($sp)
    # Line 1876
    sdc1	$f2,16($v0)
    # Line 1877
    sdc1	$f1,24($v0)
    # Line 1878
    sdc1	$f0,32($v0)
    # Line 1880
    move	$a1,$v0
    # Line 1879
    lw	$v0,4696($v1)
    # Line 1880
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 1879
    ori	$v0,$v0,0x8
    # Line 1880
    jal	__glDlistAppendOp
    # Line 1879
    sw	$v0,4696($v1)
    # Line 1881
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_TexCoord3d

# Function: __gllc_TexCoord3dv
# Declared: Line 1884 (Source lines: 1885-1900)
# Address: 0x0dbae214 - 0x0dbae2bc (Size: 168 bytes, Frame: 48)
.globl __gllc_TexCoord3dv
.ent __gllc_TexCoord3dv
__gllc_TexCoord3dv:
    # Line 1890
    li	$a1,24
    # Line 1885
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 1888
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 1885
    lui	$v0,0x5
    addiu	$v0,$v0,1156
    addu	$gp,$t9,$v0
    # Line 1890
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbae25c
    # Line 1891
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbae25c:
    # Line 1895
    ld	$a0,0($sp)
    # Line 1892
    li	$a2,56
    # Line 1893
    li	$a1,1
    sb	$a1,14($v0)
    # Line 1892
    sh	$a2,12($v0)
    # Line 1895
    ldc1	$f2,0($a0)
    sdc1	$f2,16($v0)
    # Line 1896
    ldc1	$f1,8($a0)
    sdc1	$f1,24($v0)
    # Line 1897
    ldc1	$f0,16($a0)
    # Line 1899
    la	$a2,__glle_TexCoord3dv
    # Line 1898
    ld	$a3,8($sp)
    # Line 1897
    sdc1	$f0,32($v0)
    # Line 1899
    move	$a1,$v0
    # Line 1898
    lw	$v1,4696($a3)
    # Line 1899
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 1898
    ori	$v1,$v1,0x8
    # Line 1899
    jal	__glDlistAppendOp
    # Line 1898
    sw	$v1,4696($a3)
    # Line 1900
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_TexCoord3dv

# Function: __gllc_TexCoord3f
# Declared: Line 1903 (Source lines: 1904-1918)
# Address: 0x0dbae2bc - 0x0dbae35c (Size: 160 bytes, Frame: 208)
.globl __gllc_TexCoord3f
.ent __gllc_TexCoord3f
__gllc_TexCoord3f:
    # Line 1909
    li	$a1,12
    # Line 1904
    addiu	$sp,$sp,-80
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,32($sp)
    lui	$at,0x5
    addiu	$at,$at,988
    addu	$gp,$t9,$at
    # Line 1909
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 1907
    lw	$a0,__glCurrentContext
    sd	$ra,40($sp)
    # Line 1909
    jal	__glDlistAllocOp2
    sd	$a0,24($sp)
    bnez	$v0,.L0dbae308
    # Line 1910
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbae308:
    # Line 1917
    la	$a2,__glle_TexCoord3fv
    # Line 1911
    li	$v1,57
    sh	$v1,12($v0)
    # Line 1916
    ld	$v1,24($sp)
    # Line 1913
    ldc1	$f2,0($sp)
    # Line 1914
    ldc1	$f1,8($sp)
    # Line 1915
    ldc1	$f0,16($sp)
    # Line 1913
    swc1	$f2,16($v0)
    # Line 1914
    swc1	$f1,20($v0)
    # Line 1915
    swc1	$f0,24($v0)
    # Line 1917
    move	$a1,$v0
    # Line 1916
    lw	$v0,4696($v1)
    # Line 1917
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 1916
    ori	$v0,$v0,0x8
    # Line 1917
    jal	__glDlistAppendOp
    # Line 1916
    sw	$v0,4696($v1)
    # Line 1918
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_TexCoord3f

# Function: __gllc_TexCoord3fv
# Declared: Line 1921 (Source lines: 1922-1936)
# Address: 0x0dbae35c - 0x0dbae3fc (Size: 160 bytes, Frame: 48)
.globl __gllc_TexCoord3fv
.ent __gllc_TexCoord3fv
__gllc_TexCoord3fv:
    # Line 1927
    li	$a1,12
    # Line 1922
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 1925
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 1922
    lui	$v0,0x5
    addiu	$v0,$v0,828
    addu	$gp,$t9,$v0
    # Line 1927
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbae3a4
    # Line 1928
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbae3a4:
    # Line 1931
    ld	$a0,0($sp)
    # Line 1929
    li	$a1,57
    sh	$a1,12($v0)
    # Line 1931
    lwc1	$f2,0($a0)
    swc1	$f2,16($v0)
    # Line 1932
    lwc1	$f1,4($a0)
    swc1	$f1,20($v0)
    # Line 1933
    lwc1	$f0,8($a0)
    # Line 1935
    la	$a2,__glle_TexCoord3fv
    # Line 1934
    ld	$a3,8($sp)
    # Line 1933
    swc1	$f0,24($v0)
    # Line 1935
    move	$a1,$v0
    # Line 1934
    lw	$v1,4696($a3)
    # Line 1935
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 1934
    ori	$v1,$v1,0x8
    # Line 1935
    jal	__glDlistAppendOp
    # Line 1934
    sw	$v1,4696($a3)
    # Line 1936
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_TexCoord3fv

# Function: __gllc_TexCoord3i
# Declared: Line 1939 (Source lines: 1940-1954)
# Address: 0x0dbae3fc - 0x0dbae4a0 (Size: 164 bytes, Frame: 208)
.globl __gllc_TexCoord3i
.ent __gllc_TexCoord3i
__gllc_TexCoord3i:
    # Line 1940
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 1945
    li	$a1,12
    sd	$a2,24($sp)
    sd	$a0,0($sp)
    # Line 1943
    lw	$at,__glCurrentContext
    sd	$gp,32($sp)
    # Line 1940
    lui	$v0,0x5
    addiu	$v0,$v0,668
    addu	$gp,$t9,$v0
    # Line 1945
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,40($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbae44c
    # Line 1946
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbae44c:
    # Line 1953
    la	$a2,__glle_TexCoord3iv
    # Line 1947
    li	$a4,58
    sh	$a4,12($v0)
    # Line 1951
    ld	$a0,24($sp)
    # Line 1949
    ld	$a3,0($sp)
    # Line 1950
    ld	$a1,16($sp)
    # Line 1951
    sw	$a0,24($v0)
    # Line 1949
    sw	$a3,16($v0)
    # Line 1952
    ld	$a3,8($sp)
    # Line 1950
    sw	$a1,20($v0)
    # Line 1953
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 1952
    lw	$v1,4696($a3)
    # Line 1953
    move	$a1,$v0
    move	$a0,$a3
    # Line 1952
    ori	$v1,$v1,0x8
    # Line 1953
    jal	__glDlistAppendOp
    # Line 1952
    sw	$v1,4696($a3)
    # Line 1954
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_TexCoord3i

# Function: __gllc_TexCoord3iv
# Declared: Line 1957 (Source lines: 1958-1972)
# Address: 0x0dbae4a0 - 0x0dbae540 (Size: 160 bytes, Frame: 48)
.globl __gllc_TexCoord3iv
.ent __gllc_TexCoord3iv
__gllc_TexCoord3iv:
    # Line 1963
    li	$a1,12
    # Line 1958
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 1961
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 1958
    lui	$v0,0x5
    addiu	$v0,$v0,504
    addu	$gp,$t9,$v0
    # Line 1963
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbae4e8
    # Line 1964
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbae4e8:
    # Line 1967
    ld	$a0,0($sp)
    # Line 1965
    li	$a3,58
    sh	$a3,12($v0)
    # Line 1967
    lw	$a2,0($a0)
    sw	$a2,16($v0)
    # Line 1968
    lw	$a1,4($a0)
    sw	$a1,20($v0)
    # Line 1969
    lw	$a0,8($a0)
    # Line 1971
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 1970
    ld	$a3,8($sp)
    # Line 1969
    sw	$a0,24($v0)
    # Line 1971
    la	$a2,__glle_TexCoord3iv
    # Line 1970
    lw	$v1,4696($a3)
    # Line 1971
    move	$a1,$v0
    move	$a0,$a3
    # Line 1970
    ori	$v1,$v1,0x8
    # Line 1971
    jal	__glDlistAppendOp
    # Line 1970
    sw	$v1,4696($a3)
    # Line 1972
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_TexCoord3iv

# Function: __gllc_TexCoord3s
# Declared: Line 1975 (Source lines: 1976-1990)
# Address: 0x0dbae540 - 0x0dbae5e4 (Size: 164 bytes, Frame: 208)
.globl __gllc_TexCoord3s
.ent __gllc_TexCoord3s
__gllc_TexCoord3s:
    # Line 1976
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 1981
    li	$a1,8
    sd	$a2,24($sp)
    sd	$a0,0($sp)
    # Line 1979
    lw	$at,__glCurrentContext
    sd	$gp,32($sp)
    # Line 1976
    lui	$v0,0x5
    addiu	$v0,$v0,344
    addu	$gp,$t9,$v0
    # Line 1981
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,40($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbae590
    # Line 1982
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbae590:
    # Line 1989
    la	$a2,__glle_TexCoord3sv
    # Line 1983
    li	$a4,59
    sh	$a4,12($v0)
    # Line 1987
    ld	$a0,24($sp)
    # Line 1985
    ld	$a3,0($sp)
    # Line 1986
    ld	$a1,16($sp)
    # Line 1987
    sh	$a0,20($v0)
    # Line 1985
    sh	$a3,16($v0)
    # Line 1988
    ld	$a3,8($sp)
    # Line 1986
    sh	$a1,18($v0)
    # Line 1989
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 1988
    lw	$v1,4696($a3)
    # Line 1989
    move	$a1,$v0
    move	$a0,$a3
    # Line 1988
    ori	$v1,$v1,0x8
    # Line 1989
    jal	__glDlistAppendOp
    # Line 1988
    sw	$v1,4696($a3)
    # Line 1990
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_TexCoord3s

# Function: __gllc_TexCoord3sv
# Declared: Line 1993 (Source lines: 1994-2008)
# Address: 0x0dbae5e4 - 0x0dbae684 (Size: 160 bytes, Frame: 48)
.globl __gllc_TexCoord3sv
.ent __gllc_TexCoord3sv
__gllc_TexCoord3sv:
    # Line 1999
    li	$a1,8
    # Line 1994
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 1997
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 1994
    lui	$v0,0x5
    addiu	$v0,$v0,180
    addu	$gp,$t9,$v0
    # Line 1999
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbae62c
    # Line 2000
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbae62c:
    # Line 2003
    ld	$a0,0($sp)
    # Line 2001
    li	$a3,59
    sh	$a3,12($v0)
    # Line 2003
    lh	$a2,0($a0)
    sh	$a2,16($v0)
    # Line 2004
    lh	$a1,2($a0)
    sh	$a1,18($v0)
    # Line 2005
    lh	$a0,4($a0)
    # Line 2007
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 2006
    ld	$a3,8($sp)
    # Line 2005
    sh	$a0,20($v0)
    # Line 2007
    la	$a2,__glle_TexCoord3sv
    # Line 2006
    lw	$v1,4696($a3)
    # Line 2007
    move	$a1,$v0
    move	$a0,$a3
    # Line 2006
    ori	$v1,$v1,0x8
    # Line 2007
    jal	__glDlistAppendOp
    # Line 2006
    sw	$v1,4696($a3)
    # Line 2008
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_TexCoord3sv

# Function: __gllc_TexCoord4d
# Declared: Line 2011 (Source lines: 2012-2028)
# Address: 0x0dbae684 - 0x0dbae738 (Size: 180 bytes, Frame: 224)
.globl __gllc_TexCoord4d
.ent __gllc_TexCoord4d
__gllc_TexCoord4d:
    # Line 2017
    li	$a1,32
    # Line 2012
    addiu	$sp,$sp,-96
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,40($sp)
    lui	$at,0x5
    addiu	$at,$at,20
    addu	$gp,$t9,$at
    # Line 2017
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 2015
    lw	$a0,__glCurrentContext
    sd	$ra,48($sp)
    # Line 2017
    jal	__glDlistAllocOp2
    sd	$a0,32($sp)
    bnez	$v0,.L0dbae6d4
    # Line 2018
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbae6d4:
    # Line 2027
    la	$a2,__glle_TexCoord4dv
    # Line 2019
    li	$a0,60
    sh	$a0,12($v0)
    # Line 2020
    li	$v1,1
    sb	$v1,14($v0)
    # Line 2026
    ld	$v1,32($sp)
    # Line 2025
    ldc1	$f0,24($sp)
    # Line 2022
    ldc1	$f3,0($sp)
    # Line 2023
    ldc1	$f2,8($sp)
    # Line 2024
    ldc1	$f1,16($sp)
    # Line 2022
    sdc1	$f3,16($v0)
    # Line 2023
    sdc1	$f2,24($v0)
    # Line 2024
    sdc1	$f1,32($v0)
    # Line 2025
    sdc1	$f0,40($v0)
    # Line 2027
    move	$a1,$v0
    # Line 2026
    lw	$v0,4696($v1)
    # Line 2027
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 2026
    ori	$v0,$v0,0x8
    # Line 2027
    jal	__glDlistAppendOp
    # Line 2026
    sw	$v0,4696($v1)
    # Line 2028
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_TexCoord4d

# Function: __gllc_TexCoord4dv
# Declared: Line 2031 (Source lines: 2032-2048)
# Address: 0x0dbae738 - 0x0dbae7e8 (Size: 176 bytes, Frame: 48)
.globl __gllc_TexCoord4dv
.ent __gllc_TexCoord4dv
__gllc_TexCoord4dv:
    # Line 2037
    li	$a1,32
    # Line 2032
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 2035
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 2032
    lui	$v0,0x5
    addiu	$v0,$v0,-160
    addu	$gp,$t9,$v0
    # Line 2037
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbae780
    # Line 2038
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbae780:
    # Line 2042
    ld	$a0,0($sp)
    # Line 2039
    li	$a2,60
    # Line 2040
    li	$a1,1
    sb	$a1,14($v0)
    # Line 2039
    sh	$a2,12($v0)
    # Line 2042
    ldc1	$f3,0($a0)
    sdc1	$f3,16($v0)
    # Line 2043
    ldc1	$f2,8($a0)
    sdc1	$f2,24($v0)
    # Line 2044
    ldc1	$f1,16($a0)
    sdc1	$f1,32($v0)
    # Line 2045
    ldc1	$f0,24($a0)
    # Line 2047
    la	$a2,__glle_TexCoord4dv
    # Line 2046
    ld	$a3,8($sp)
    # Line 2045
    sdc1	$f0,40($v0)
    # Line 2047
    move	$a1,$v0
    # Line 2046
    lw	$v1,4696($a3)
    # Line 2047
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 2046
    ori	$v1,$v1,0x8
    # Line 2047
    jal	__glDlistAppendOp
    # Line 2046
    sw	$v1,4696($a3)
    # Line 2048
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_TexCoord4dv

# Function: __gllc_TexCoord4f
# Declared: Line 2051 (Source lines: 2052-2067)
# Address: 0x0dbae7e8 - 0x0dbae894 (Size: 172 bytes, Frame: 224)
.globl __gllc_TexCoord4f
.ent __gllc_TexCoord4f
__gllc_TexCoord4f:
    # Line 2057
    li	$a1,16
    # Line 2052
    addiu	$sp,$sp,-96
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,40($sp)
    lui	$at,0x5
    addiu	$at,$at,-336
    addu	$gp,$t9,$at
    # Line 2057
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 2055
    lw	$a0,__glCurrentContext
    sd	$ra,48($sp)
    # Line 2057
    jal	__glDlistAllocOp2
    sd	$a0,32($sp)
    bnez	$v0,.L0dbae838
    # Line 2058
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbae838:
    # Line 2066
    la	$a2,__glle_TexCoord4fv
    # Line 2059
    li	$v1,61
    sh	$v1,12($v0)
    # Line 2065
    ld	$v1,32($sp)
    # Line 2064
    ldc1	$f0,24($sp)
    # Line 2061
    ldc1	$f3,0($sp)
    # Line 2062
    ldc1	$f2,8($sp)
    # Line 2063
    ldc1	$f1,16($sp)
    # Line 2061
    swc1	$f3,16($v0)
    # Line 2062
    swc1	$f2,20($v0)
    # Line 2063
    swc1	$f1,24($v0)
    # Line 2064
    swc1	$f0,28($v0)
    # Line 2066
    move	$a1,$v0
    # Line 2065
    lw	$v0,4696($v1)
    # Line 2066
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 2065
    ori	$v0,$v0,0x8
    # Line 2066
    jal	__glDlistAppendOp
    # Line 2065
    sw	$v0,4696($v1)
    # Line 2067
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_TexCoord4f

# Function: __gllc_TexCoord4fv
# Declared: Line 2070 (Source lines: 2071-2086)
# Address: 0x0dbae894 - 0x0dbae93c (Size: 168 bytes, Frame: 48)
.globl __gllc_TexCoord4fv
.ent __gllc_TexCoord4fv
__gllc_TexCoord4fv:
    # Line 2076
    li	$a1,16
    # Line 2071
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 2074
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 2071
    lui	$v0,0x5
    addiu	$v0,$v0,-508
    addu	$gp,$t9,$v0
    # Line 2076
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbae8dc
    # Line 2077
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbae8dc:
    # Line 2080
    ld	$a0,0($sp)
    # Line 2078
    li	$a1,61
    sh	$a1,12($v0)
    # Line 2080
    lwc1	$f3,0($a0)
    swc1	$f3,16($v0)
    # Line 2081
    lwc1	$f2,4($a0)
    swc1	$f2,20($v0)
    # Line 2082
    lwc1	$f1,8($a0)
    swc1	$f1,24($v0)
    # Line 2083
    lwc1	$f0,12($a0)
    # Line 2085
    la	$a2,__glle_TexCoord4fv
    # Line 2084
    ld	$a3,8($sp)
    # Line 2083
    swc1	$f0,28($v0)
    # Line 2085
    move	$a1,$v0
    # Line 2084
    lw	$v1,4696($a3)
    # Line 2085
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 2084
    ori	$v1,$v1,0x8
    # Line 2085
    jal	__glDlistAppendOp
    # Line 2084
    sw	$v1,4696($a3)
    # Line 2086
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_TexCoord4fv

# Function: __gllc_TexCoord4i
# Declared: Line 2089 (Source lines: 2090-2105)
# Address: 0x0dbae93c - 0x0dbae9ec (Size: 176 bytes, Frame: 224)
.globl __gllc_TexCoord4i
.ent __gllc_TexCoord4i
__gllc_TexCoord4i:
    # Line 2090
    addiu	$sp,$sp,-96
    sd	$a1,24($sp)
    # Line 2095
    li	$a1,16
    sd	$a3,16($sp)
    sd	$a2,32($sp)
    sd	$a0,0($sp)
    # Line 2093
    lw	$at,__glCurrentContext
    sd	$gp,40($sp)
    # Line 2090
    lui	$v0,0x5
    addiu	$v0,$v0,-676
    addu	$gp,$t9,$v0
    # Line 2095
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,48($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbae990
    # Line 2096
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbae990:
    # Line 2104
    la	$a2,__glle_TexCoord4iv
    # Line 2097
    li	$a5,62
    sh	$a5,12($v0)
    # Line 2099
    ld	$a4,0($sp)
    # Line 2102
    ld	$a0,16($sp)
    # Line 2101
    ld	$a1,32($sp)
    # Line 2100
    ld	$a3,24($sp)
    # Line 2102
    sw	$a0,28($v0)
    # Line 2101
    sw	$a1,24($v0)
    # Line 2100
    sw	$a3,20($v0)
    # Line 2103
    ld	$a3,8($sp)
    # Line 2099
    sw	$a4,16($v0)
    # Line 2104
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 2103
    lw	$v1,4696($a3)
    # Line 2104
    move	$a1,$v0
    move	$a0,$a3
    # Line 2103
    ori	$v1,$v1,0x8
    # Line 2104
    jal	__glDlistAppendOp
    # Line 2103
    sw	$v1,4696($a3)
    # Line 2105
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_TexCoord4i

# Function: __gllc_TexCoord4iv
# Declared: Line 2108 (Source lines: 2109-2124)
# Address: 0x0dbae9ec - 0x0dbaea94 (Size: 168 bytes, Frame: 48)
.globl __gllc_TexCoord4iv
.ent __gllc_TexCoord4iv
__gllc_TexCoord4iv:
    # Line 2114
    li	$a1,16
    # Line 2109
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 2112
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 2109
    lui	$v0,0x5
    addiu	$v0,$v0,-852
    addu	$gp,$t9,$v0
    # Line 2114
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaea34
    # Line 2115
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbaea34:
    # Line 2118
    ld	$a0,0($sp)
    # Line 2116
    li	$a4,62
    sh	$a4,12($v0)
    # Line 2118
    lw	$a3,0($a0)
    sw	$a3,16($v0)
    # Line 2119
    lw	$a2,4($a0)
    sw	$a2,20($v0)
    # Line 2120
    lw	$a1,8($a0)
    sw	$a1,24($v0)
    # Line 2121
    lw	$a0,12($a0)
    # Line 2123
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 2122
    ld	$a3,8($sp)
    # Line 2121
    sw	$a0,28($v0)
    # Line 2123
    la	$a2,__glle_TexCoord4iv
    # Line 2122
    lw	$v1,4696($a3)
    # Line 2123
    move	$a1,$v0
    move	$a0,$a3
    # Line 2122
    ori	$v1,$v1,0x8
    # Line 2123
    jal	__glDlistAppendOp
    # Line 2122
    sw	$v1,4696($a3)
    # Line 2124
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_TexCoord4iv

# Function: __gllc_TexCoord4s
# Declared: Line 2127 (Source lines: 2128-2143)
# Address: 0x0dbaea94 - 0x0dbaeb44 (Size: 176 bytes, Frame: 224)
.globl __gllc_TexCoord4s
.ent __gllc_TexCoord4s
__gllc_TexCoord4s:
    # Line 2128
    addiu	$sp,$sp,-96
    sd	$a1,24($sp)
    # Line 2133
    li	$a1,8
    sd	$a3,16($sp)
    sd	$a2,32($sp)
    sd	$a0,0($sp)
    # Line 2131
    lw	$at,__glCurrentContext
    sd	$gp,40($sp)
    # Line 2128
    lui	$v0,0x5
    addiu	$v0,$v0,-1020
    addu	$gp,$t9,$v0
    # Line 2133
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,48($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaeae8
    # Line 2134
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbaeae8:
    # Line 2142
    la	$a2,__glle_TexCoord4sv
    # Line 2135
    li	$a5,63
    sh	$a5,12($v0)
    # Line 2137
    ld	$a4,0($sp)
    # Line 2140
    ld	$a0,16($sp)
    # Line 2139
    ld	$a1,32($sp)
    # Line 2138
    ld	$a3,24($sp)
    # Line 2140
    sh	$a0,22($v0)
    # Line 2139
    sh	$a1,20($v0)
    # Line 2138
    sh	$a3,18($v0)
    # Line 2141
    ld	$a3,8($sp)
    # Line 2137
    sh	$a4,16($v0)
    # Line 2142
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 2141
    lw	$v1,4696($a3)
    # Line 2142
    move	$a1,$v0
    move	$a0,$a3
    # Line 2141
    ori	$v1,$v1,0x8
    # Line 2142
    jal	__glDlistAppendOp
    # Line 2141
    sw	$v1,4696($a3)
    # Line 2143
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_TexCoord4s

# Function: __gllc_TexCoord4sv
# Declared: Line 2146 (Source lines: 2147-2162)
# Address: 0x0dbaeb44 - 0x0dbaebec (Size: 168 bytes, Frame: 48)
.globl __gllc_TexCoord4sv
.ent __gllc_TexCoord4sv
__gllc_TexCoord4sv:
    # Line 2152
    li	$a1,8
    # Line 2147
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 2150
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 2147
    lui	$v0,0x5
    addiu	$v0,$v0,-1196
    addu	$gp,$t9,$v0
    # Line 2152
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaeb8c
    # Line 2153
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbaeb8c:
    # Line 2156
    ld	$a0,0($sp)
    # Line 2154
    li	$a4,63
    sh	$a4,12($v0)
    # Line 2156
    lh	$a3,0($a0)
    sh	$a3,16($v0)
    # Line 2157
    lh	$a2,2($a0)
    sh	$a2,18($v0)
    # Line 2158
    lh	$a1,4($a0)
    sh	$a1,20($v0)
    # Line 2159
    lh	$a0,6($a0)
    # Line 2161
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 2160
    ld	$a3,8($sp)
    # Line 2159
    sh	$a0,22($v0)
    # Line 2161
    la	$a2,__glle_TexCoord4sv
    # Line 2160
    lw	$v1,4696($a3)
    # Line 2161
    move	$a1,$v0
    move	$a0,$a3
    # Line 2160
    ori	$v1,$v1,0x8
    # Line 2161
    jal	__glDlistAppendOp
    # Line 2160
    sw	$v1,4696($a3)
    # Line 2162
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_TexCoord4sv

# Function: __gllc_Vertex2d
# Declared: Line 2165 (Source lines: 2166-2180)
# Address: 0x0dbaebec - 0x0dbaec88 (Size: 156 bytes, Frame: 192)
.globl __gllc_Vertex2d
.ent __gllc_Vertex2d
__gllc_Vertex2d:
    # Line 2171
    li	$a1,16
    # Line 2166
    addiu	$sp,$sp,-64
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,24($sp)
    lui	$at,0x5
    addiu	$at,$at,-1364
    addu	$gp,$t9,$at
    # Line 2171
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 2169
    lw	$a0,__glCurrentContext
    sd	$ra,32($sp)
    # Line 2171
    jal	__glDlistAllocOp2
    sd	$a0,16($sp)
    bnez	$v0,.L0dbaec34
    # Line 2172
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbaec34:
    # Line 2179
    la	$a2,__glle_Vertex2dv
    # Line 2173
    li	$a0,64
    sh	$a0,12($v0)
    # Line 2174
    li	$v1,1
    sb	$v1,14($v0)
    # Line 2176
    ldc1	$f1,0($sp)
    # Line 2177
    ldc1	$f0,8($sp)
    # Line 2178
    ld	$v1,16($sp)
    # Line 2176
    sdc1	$f1,16($v0)
    # Line 2177
    sdc1	$f0,24($v0)
    # Line 2179
    move	$a1,$v0
    # Line 2178
    lw	$v0,4696($v1)
    # Line 2179
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 2178
    ori	$v0,$v0,0x1
    # Line 2179
    jal	__glDlistAppendOp
    # Line 2178
    sw	$v0,4696($v1)
    # Line 2180
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_Vertex2d

# Function: __gllc_Vertex2dv
# Declared: Line 2183 (Source lines: 2184-2198)
# Address: 0x0dbaec88 - 0x0dbaed28 (Size: 160 bytes, Frame: 48)
.globl __gllc_Vertex2dv
.ent __gllc_Vertex2dv
__gllc_Vertex2dv:
    # Line 2189
    li	$a1,16
    # Line 2184
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 2187
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 2184
    lui	$v0,0x5
    addiu	$v0,$v0,-1520
    addu	$gp,$t9,$v0
    # Line 2189
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaecd0
    # Line 2190
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbaecd0:
    # Line 2194
    ld	$a0,0($sp)
    # Line 2191
    li	$a2,64
    # Line 2192
    li	$a1,1
    sb	$a1,14($v0)
    # Line 2191
    sh	$a2,12($v0)
    # Line 2194
    ldc1	$f1,0($a0)
    sdc1	$f1,16($v0)
    # Line 2195
    ldc1	$f0,8($a0)
    # Line 2197
    la	$a2,__glle_Vertex2dv
    # Line 2196
    ld	$a3,8($sp)
    # Line 2195
    sdc1	$f0,24($v0)
    # Line 2197
    move	$a1,$v0
    # Line 2196
    lw	$v1,4696($a3)
    # Line 2197
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 2196
    ori	$v1,$v1,0x1
    # Line 2197
    jal	__glDlistAppendOp
    # Line 2196
    sw	$v1,4696($a3)
    # Line 2198
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Vertex2dv

# Function: __gllc_Vertex2f
# Declared: Line 2201 (Source lines: 2202-2215)
# Address: 0x0dbaed28 - 0x0dbaedbc (Size: 148 bytes, Frame: 192)
.globl __gllc_Vertex2f
.ent __gllc_Vertex2f
__gllc_Vertex2f:
    # Line 2207
    li	$a1,8
    # Line 2202
    addiu	$sp,$sp,-64
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,24($sp)
    lui	$at,0x5
    addiu	$at,$at,-1680
    addu	$gp,$t9,$at
    # Line 2207
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 2205
    lw	$a0,__glCurrentContext
    sd	$ra,32($sp)
    # Line 2207
    jal	__glDlistAllocOp2
    sd	$a0,16($sp)
    bnez	$v0,.L0dbaed70
    # Line 2208
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbaed70:
    # Line 2214
    la	$a2,__glle_Vertex2fv
    # Line 2209
    li	$v1,65
    sh	$v1,12($v0)
    # Line 2211
    ldc1	$f1,0($sp)
    # Line 2212
    ldc1	$f0,8($sp)
    # Line 2213
    ld	$v1,16($sp)
    # Line 2211
    swc1	$f1,16($v0)
    # Line 2212
    swc1	$f0,20($v0)
    # Line 2214
    move	$a1,$v0
    # Line 2213
    lw	$v0,4696($v1)
    # Line 2214
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 2213
    ori	$v0,$v0,0x1
    # Line 2214
    jal	__glDlistAppendOp
    # Line 2213
    sw	$v0,4696($v1)
    # Line 2215
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_Vertex2f

# Function: __gllc_Vertex2fv
# Declared: Line 2218 (Source lines: 2219-2232)
# Address: 0x0dbaedbc - 0x0dbaee54 (Size: 152 bytes, Frame: 48)
.globl __gllc_Vertex2fv
.ent __gllc_Vertex2fv
__gllc_Vertex2fv:
    # Line 2224
    li	$a1,8
    # Line 2219
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 2222
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 2219
    lui	$v0,0x5
    addiu	$v0,$v0,-1828
    addu	$gp,$t9,$v0
    # Line 2224
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaee04
    # Line 2225
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbaee04:
    # Line 2228
    ld	$a0,0($sp)
    # Line 2226
    li	$a1,65
    sh	$a1,12($v0)
    # Line 2228
    lwc1	$f1,0($a0)
    swc1	$f1,16($v0)
    # Line 2229
    lwc1	$f0,4($a0)
    # Line 2231
    la	$a2,__glle_Vertex2fv
    # Line 2230
    ld	$a3,8($sp)
    # Line 2229
    swc1	$f0,20($v0)
    # Line 2231
    move	$a1,$v0
    # Line 2230
    lw	$v1,4696($a3)
    # Line 2231
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 2230
    ori	$v1,$v1,0x1
    # Line 2231
    jal	__glDlistAppendOp
    # Line 2230
    sw	$v1,4696($a3)
    # Line 2232
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Vertex2fv

# Function: __gllc_Vertex2i
# Declared: Line 2235 (Source lines: 2236-2249)
# Address: 0x0dbaee54 - 0x0dbaeeec (Size: 152 bytes, Frame: 192)
.globl __gllc_Vertex2i
.ent __gllc_Vertex2i
__gllc_Vertex2i:
    # Line 2236
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    # Line 2241
    li	$a1,8
    sd	$a0,0($sp)
    # Line 2239
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 2236
    lui	$v0,0x5
    addiu	$v0,$v0,-1980
    addu	$gp,$t9,$v0
    # Line 2241
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaeea0
    # Line 2242
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbaeea0:
    # Line 2248
    la	$a2,__glle_Vertex2iv
    # Line 2243
    li	$a3,66
    sh	$a3,12($v0)
    # Line 2246
    ld	$a0,8($sp)
    # Line 2245
    ld	$a1,0($sp)
    # Line 2247
    ld	$a3,16($sp)
    # Line 2246
    sw	$a0,20($v0)
    # Line 2245
    sw	$a1,16($v0)
    # Line 2248
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 2247
    lw	$v1,4696($a3)
    # Line 2248
    move	$a1,$v0
    move	$a0,$a3
    # Line 2247
    ori	$v1,$v1,0x1
    # Line 2248
    jal	__glDlistAppendOp
    # Line 2247
    sw	$v1,4696($a3)
    # Line 2249
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_Vertex2i

# Function: __gllc_Vertex2iv
# Declared: Line 2252 (Source lines: 2253-2266)
# Address: 0x0dbaeeec - 0x0dbaef84 (Size: 152 bytes, Frame: 48)
.globl __gllc_Vertex2iv
.ent __gllc_Vertex2iv
__gllc_Vertex2iv:
    # Line 2258
    li	$a1,8
    # Line 2253
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 2256
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 2253
    lui	$v0,0x5
    addiu	$v0,$v0,-2132
    addu	$gp,$t9,$v0
    # Line 2258
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaef34
    # Line 2259
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbaef34:
    # Line 2262
    ld	$a0,0($sp)
    # Line 2260
    li	$a2,66
    sh	$a2,12($v0)
    # Line 2262
    lw	$a1,0($a0)
    sw	$a1,16($v0)
    # Line 2263
    lw	$a0,4($a0)
    # Line 2265
    la	$a2,__glle_Vertex2iv
    # Line 2264
    ld	$a3,8($sp)
    # Line 2263
    sw	$a0,20($v0)
    # Line 2265
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 2264
    lw	$v1,4696($a3)
    # Line 2265
    move	$a1,$v0
    move	$a0,$a3
    # Line 2264
    ori	$v1,$v1,0x1
    # Line 2265
    jal	__glDlistAppendOp
    # Line 2264
    sw	$v1,4696($a3)
    # Line 2266
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Vertex2iv

# Function: __gllc_Vertex2s
# Declared: Line 2269 (Source lines: 2270-2283)
# Address: 0x0dbaef84 - 0x0dbaf01c (Size: 152 bytes, Frame: 192)
.globl __gllc_Vertex2s
.ent __gllc_Vertex2s
__gllc_Vertex2s:
    # Line 2270
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    # Line 2275
    li	$a1,4
    sd	$a0,0($sp)
    # Line 2273
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 2270
    lui	$v0,0x5
    addiu	$v0,$v0,-2284
    addu	$gp,$t9,$v0
    # Line 2275
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaefd0
    # Line 2276
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbaefd0:
    # Line 2282
    la	$a2,__glle_Vertex2sv
    # Line 2277
    li	$a3,67
    sh	$a3,12($v0)
    # Line 2280
    ld	$a0,8($sp)
    # Line 2279
    ld	$a1,0($sp)
    # Line 2281
    ld	$a3,16($sp)
    # Line 2280
    sh	$a0,18($v0)
    # Line 2279
    sh	$a1,16($v0)
    # Line 2282
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 2281
    lw	$v1,4696($a3)
    # Line 2282
    move	$a1,$v0
    move	$a0,$a3
    # Line 2281
    ori	$v1,$v1,0x1
    # Line 2282
    jal	__glDlistAppendOp
    # Line 2281
    sw	$v1,4696($a3)
    # Line 2283
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_Vertex2s

# Function: __gllc_Vertex2sv
# Declared: Line 2286 (Source lines: 2287-2300)
# Address: 0x0dbaf01c - 0x0dbaf0b4 (Size: 152 bytes, Frame: 48)
.globl __gllc_Vertex2sv
.ent __gllc_Vertex2sv
__gllc_Vertex2sv:
    # Line 2292
    li	$a1,4
    # Line 2287
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 2290
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 2287
    lui	$v0,0x5
    addiu	$v0,$v0,-2436
    addu	$gp,$t9,$v0
    # Line 2292
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaf064
    # Line 2293
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbaf064:
    # Line 2296
    ld	$a0,0($sp)
    # Line 2294
    li	$a2,67
    sh	$a2,12($v0)
    # Line 2296
    lh	$a1,0($a0)
    sh	$a1,16($v0)
    # Line 2297
    lh	$a0,2($a0)
    # Line 2299
    la	$a2,__glle_Vertex2sv
    # Line 2298
    ld	$a3,8($sp)
    # Line 2297
    sh	$a0,18($v0)
    # Line 2299
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 2298
    lw	$v1,4696($a3)
    # Line 2299
    move	$a1,$v0
    move	$a0,$a3
    # Line 2298
    ori	$v1,$v1,0x1
    # Line 2299
    jal	__glDlistAppendOp
    # Line 2298
    sw	$v1,4696($a3)
    # Line 2300
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Vertex2sv

# Function: __gllc_Vertex3d
# Declared: Line 2303 (Source lines: 2304-2319)
# Address: 0x0dbaf0b4 - 0x0dbaf15c (Size: 168 bytes, Frame: 208)
.globl __gllc_Vertex3d
.ent __gllc_Vertex3d
__gllc_Vertex3d:
    # Line 2309
    li	$a1,24
    # Line 2304
    addiu	$sp,$sp,-80
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,32($sp)
    lui	$at,0x5
    addiu	$at,$at,-2588
    addu	$gp,$t9,$at
    # Line 2309
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 2307
    lw	$a0,__glCurrentContext
    sd	$ra,40($sp)
    # Line 2309
    jal	__glDlistAllocOp2
    sd	$a0,24($sp)
    bnez	$v0,.L0dbaf100
    # Line 2310
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbaf100:
    # Line 2318
    la	$a2,__glle_Vertex3dv
    # Line 2311
    li	$a0,68
    sh	$a0,12($v0)
    # Line 2312
    li	$v1,1
    sb	$v1,14($v0)
    # Line 2317
    ld	$v1,24($sp)
    # Line 2314
    ldc1	$f2,0($sp)
    # Line 2315
    ldc1	$f1,8($sp)
    # Line 2316
    ldc1	$f0,16($sp)
    # Line 2314
    sdc1	$f2,16($v0)
    # Line 2315
    sdc1	$f1,24($v0)
    # Line 2316
    sdc1	$f0,32($v0)
    # Line 2318
    move	$a1,$v0
    # Line 2317
    lw	$v0,4696($v1)
    # Line 2318
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 2317
    ori	$v0,$v0,0x1
    # Line 2318
    jal	__glDlistAppendOp
    # Line 2317
    sw	$v0,4696($v1)
    # Line 2319
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_Vertex3d

# Function: __gllc_Vertex3dv
# Declared: Line 2322 (Source lines: 2323-2338)
# Address: 0x0dbaf15c - 0x0dbaf204 (Size: 168 bytes, Frame: 48)
.globl __gllc_Vertex3dv
.ent __gllc_Vertex3dv
__gllc_Vertex3dv:
    # Line 2328
    li	$a1,24
    # Line 2323
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 2326
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 2323
    lui	$v0,0x5
    addiu	$v0,$v0,-2756
    addu	$gp,$t9,$v0
    # Line 2328
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaf1a4
    # Line 2329
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbaf1a4:
    # Line 2333
    ld	$a0,0($sp)
    # Line 2330
    li	$a2,68
    # Line 2331
    li	$a1,1
    sb	$a1,14($v0)
    # Line 2330
    sh	$a2,12($v0)
    # Line 2333
    ldc1	$f2,0($a0)
    sdc1	$f2,16($v0)
    # Line 2334
    ldc1	$f1,8($a0)
    sdc1	$f1,24($v0)
    # Line 2335
    ldc1	$f0,16($a0)
    # Line 2337
    la	$a2,__glle_Vertex3dv
    # Line 2336
    ld	$a3,8($sp)
    # Line 2335
    sdc1	$f0,32($v0)
    # Line 2337
    move	$a1,$v0
    # Line 2336
    lw	$v1,4696($a3)
    # Line 2337
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 2336
    ori	$v1,$v1,0x1
    # Line 2337
    jal	__glDlistAppendOp
    # Line 2336
    sw	$v1,4696($a3)
    # Line 2338
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Vertex3dv

# Function: __gllc_Vertex3f
# Declared: Line 2341 (Source lines: 2342-2356)
# Address: 0x0dbaf204 - 0x0dbaf2a4 (Size: 160 bytes, Frame: 208)
.globl __gllc_Vertex3f
.ent __gllc_Vertex3f
__gllc_Vertex3f:
    # Line 2347
    li	$a1,12
    # Line 2342
    addiu	$sp,$sp,-80
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,32($sp)
    lui	$at,0x5
    addiu	$at,$at,-2924
    addu	$gp,$t9,$at
    # Line 2347
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 2345
    lw	$a0,__glCurrentContext
    sd	$ra,40($sp)
    # Line 2347
    jal	__glDlistAllocOp2
    sd	$a0,24($sp)
    bnez	$v0,.L0dbaf250
    # Line 2348
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbaf250:
    # Line 2355
    la	$a2,__glle_Vertex3fv
    # Line 2349
    li	$v1,69
    sh	$v1,12($v0)
    # Line 2354
    ld	$v1,24($sp)
    # Line 2351
    ldc1	$f2,0($sp)
    # Line 2352
    ldc1	$f1,8($sp)
    # Line 2353
    ldc1	$f0,16($sp)
    # Line 2351
    swc1	$f2,16($v0)
    # Line 2352
    swc1	$f1,20($v0)
    # Line 2353
    swc1	$f0,24($v0)
    # Line 2355
    move	$a1,$v0
    # Line 2354
    lw	$v0,4696($v1)
    # Line 2355
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 2354
    ori	$v0,$v0,0x1
    # Line 2355
    jal	__glDlistAppendOp
    # Line 2354
    sw	$v0,4696($v1)
    # Line 2356
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_Vertex3f

# Function: __gllc_Vertex3fv
# Declared: Line 2359 (Source lines: 2360-2374)
# Address: 0x0dbaf2a4 - 0x0dbaf344 (Size: 160 bytes, Frame: 48)
.globl __gllc_Vertex3fv
.ent __gllc_Vertex3fv
__gllc_Vertex3fv:
    # Line 2365
    li	$a1,12
    # Line 2360
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 2363
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 2360
    lui	$v0,0x5
    addiu	$v0,$v0,-3084
    addu	$gp,$t9,$v0
    # Line 2365
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaf2ec
    # Line 2366
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbaf2ec:
    # Line 2369
    ld	$a0,0($sp)
    # Line 2367
    li	$a1,69
    sh	$a1,12($v0)
    # Line 2369
    lwc1	$f2,0($a0)
    swc1	$f2,16($v0)
    # Line 2370
    lwc1	$f1,4($a0)
    swc1	$f1,20($v0)
    # Line 2371
    lwc1	$f0,8($a0)
    # Line 2373
    la	$a2,__glle_Vertex3fv
    # Line 2372
    ld	$a3,8($sp)
    # Line 2371
    swc1	$f0,24($v0)
    # Line 2373
    move	$a1,$v0
    # Line 2372
    lw	$v1,4696($a3)
    # Line 2373
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 2372
    ori	$v1,$v1,0x1
    # Line 2373
    jal	__glDlistAppendOp
    # Line 2372
    sw	$v1,4696($a3)
    # Line 2374
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Vertex3fv

# Function: __gllc_Vertex3i
# Declared: Line 2377 (Source lines: 2378-2392)
# Address: 0x0dbaf344 - 0x0dbaf3e8 (Size: 164 bytes, Frame: 208)
.globl __gllc_Vertex3i
.ent __gllc_Vertex3i
__gllc_Vertex3i:
    # Line 2378
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 2383
    li	$a1,12
    sd	$a2,24($sp)
    sd	$a0,0($sp)
    # Line 2381
    lw	$at,__glCurrentContext
    sd	$gp,32($sp)
    # Line 2378
    lui	$v0,0x5
    addiu	$v0,$v0,-3244
    addu	$gp,$t9,$v0
    # Line 2383
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,40($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaf394
    # Line 2384
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbaf394:
    # Line 2391
    la	$a2,__glle_Vertex3iv
    # Line 2385
    li	$a4,70
    sh	$a4,12($v0)
    # Line 2389
    ld	$a0,24($sp)
    # Line 2387
    ld	$a3,0($sp)
    # Line 2388
    ld	$a1,16($sp)
    # Line 2389
    sw	$a0,24($v0)
    # Line 2387
    sw	$a3,16($v0)
    # Line 2390
    ld	$a3,8($sp)
    # Line 2388
    sw	$a1,20($v0)
    # Line 2391
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 2390
    lw	$v1,4696($a3)
    # Line 2391
    move	$a1,$v0
    move	$a0,$a3
    # Line 2390
    ori	$v1,$v1,0x1
    # Line 2391
    jal	__glDlistAppendOp
    # Line 2390
    sw	$v1,4696($a3)
    # Line 2392
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_Vertex3i

# Function: __gllc_Vertex3iv
# Declared: Line 2395 (Source lines: 2396-2410)
# Address: 0x0dbaf3e8 - 0x0dbaf488 (Size: 160 bytes, Frame: 48)
.globl __gllc_Vertex3iv
.ent __gllc_Vertex3iv
__gllc_Vertex3iv:
    # Line 2401
    li	$a1,12
    # Line 2396
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 2399
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 2396
    lui	$v0,0x5
    addiu	$v0,$v0,-3408
    addu	$gp,$t9,$v0
    # Line 2401
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaf430
    # Line 2402
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbaf430:
    # Line 2405
    ld	$a0,0($sp)
    # Line 2403
    li	$a3,70
    sh	$a3,12($v0)
    # Line 2405
    lw	$a2,0($a0)
    sw	$a2,16($v0)
    # Line 2406
    lw	$a1,4($a0)
    sw	$a1,20($v0)
    # Line 2407
    lw	$a0,8($a0)
    # Line 2409
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 2408
    ld	$a3,8($sp)
    # Line 2407
    sw	$a0,24($v0)
    # Line 2409
    la	$a2,__glle_Vertex3iv
    # Line 2408
    lw	$v1,4696($a3)
    # Line 2409
    move	$a1,$v0
    move	$a0,$a3
    # Line 2408
    ori	$v1,$v1,0x1
    # Line 2409
    jal	__glDlistAppendOp
    # Line 2408
    sw	$v1,4696($a3)
    # Line 2410
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Vertex3iv

# Function: __gllc_Vertex3s
# Declared: Line 2413 (Source lines: 2414-2428)
# Address: 0x0dbaf488 - 0x0dbaf52c (Size: 164 bytes, Frame: 208)
.globl __gllc_Vertex3s
.ent __gllc_Vertex3s
__gllc_Vertex3s:
    # Line 2414
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 2419
    li	$a1,8
    sd	$a2,24($sp)
    sd	$a0,0($sp)
    # Line 2417
    lw	$at,__glCurrentContext
    sd	$gp,32($sp)
    # Line 2414
    lui	$v0,0x5
    addiu	$v0,$v0,-3568
    addu	$gp,$t9,$v0
    # Line 2419
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,40($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaf4d8
    # Line 2420
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbaf4d8:
    # Line 2427
    la	$a2,__glle_Vertex3sv
    # Line 2421
    li	$a4,71
    sh	$a4,12($v0)
    # Line 2425
    ld	$a0,24($sp)
    # Line 2423
    ld	$a3,0($sp)
    # Line 2424
    ld	$a1,16($sp)
    # Line 2425
    sh	$a0,20($v0)
    # Line 2423
    sh	$a3,16($v0)
    # Line 2426
    ld	$a3,8($sp)
    # Line 2424
    sh	$a1,18($v0)
    # Line 2427
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 2426
    lw	$v1,4696($a3)
    # Line 2427
    move	$a1,$v0
    move	$a0,$a3
    # Line 2426
    ori	$v1,$v1,0x1
    # Line 2427
    jal	__glDlistAppendOp
    # Line 2426
    sw	$v1,4696($a3)
    # Line 2428
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_Vertex3s

# Function: __gllc_Vertex3sv
# Declared: Line 2431 (Source lines: 2432-2446)
# Address: 0x0dbaf52c - 0x0dbaf5cc (Size: 160 bytes, Frame: 48)
.globl __gllc_Vertex3sv
.ent __gllc_Vertex3sv
__gllc_Vertex3sv:
    # Line 2437
    li	$a1,8
    # Line 2432
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 2435
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 2432
    lui	$v0,0x5
    addiu	$v0,$v0,-3732
    addu	$gp,$t9,$v0
    # Line 2437
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaf574
    # Line 2438
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbaf574:
    # Line 2441
    ld	$a0,0($sp)
    # Line 2439
    li	$a3,71
    sh	$a3,12($v0)
    # Line 2441
    lh	$a2,0($a0)
    sh	$a2,16($v0)
    # Line 2442
    lh	$a1,2($a0)
    sh	$a1,18($v0)
    # Line 2443
    lh	$a0,4($a0)
    # Line 2445
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 2444
    ld	$a3,8($sp)
    # Line 2443
    sh	$a0,20($v0)
    # Line 2445
    la	$a2,__glle_Vertex3sv
    # Line 2444
    lw	$v1,4696($a3)
    # Line 2445
    move	$a1,$v0
    move	$a0,$a3
    # Line 2444
    ori	$v1,$v1,0x1
    # Line 2445
    jal	__glDlistAppendOp
    # Line 2444
    sw	$v1,4696($a3)
    # Line 2446
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Vertex3sv

# Function: __gllc_Vertex4d
# Declared: Line 2449 (Source lines: 2450-2466)
# Address: 0x0dbaf5cc - 0x0dbaf680 (Size: 180 bytes, Frame: 224)
.globl __gllc_Vertex4d
.ent __gllc_Vertex4d
__gllc_Vertex4d:
    # Line 2455
    li	$a1,32
    # Line 2450
    addiu	$sp,$sp,-96
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,40($sp)
    lui	$at,0x5
    addiu	$at,$at,-3892
    addu	$gp,$t9,$at
    # Line 2455
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 2453
    lw	$a0,__glCurrentContext
    sd	$ra,48($sp)
    # Line 2455
    jal	__glDlistAllocOp2
    sd	$a0,32($sp)
    bnez	$v0,.L0dbaf61c
    # Line 2456
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbaf61c:
    # Line 2465
    la	$a2,__glle_Vertex4dv
    # Line 2457
    li	$a0,72
    sh	$a0,12($v0)
    # Line 2458
    li	$v1,1
    sb	$v1,14($v0)
    # Line 2464
    ld	$v1,32($sp)
    # Line 2463
    ldc1	$f0,24($sp)
    # Line 2460
    ldc1	$f3,0($sp)
    # Line 2461
    ldc1	$f2,8($sp)
    # Line 2462
    ldc1	$f1,16($sp)
    # Line 2460
    sdc1	$f3,16($v0)
    # Line 2461
    sdc1	$f2,24($v0)
    # Line 2462
    sdc1	$f1,32($v0)
    # Line 2463
    sdc1	$f0,40($v0)
    # Line 2465
    move	$a1,$v0
    # Line 2464
    lw	$v0,4696($v1)
    # Line 2465
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 2464
    ori	$v0,$v0,0x1
    # Line 2465
    jal	__glDlistAppendOp
    # Line 2464
    sw	$v0,4696($v1)
    # Line 2466
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_Vertex4d

# Function: __gllc_Vertex4dv
# Declared: Line 2469 (Source lines: 2470-2486)
# Address: 0x0dbaf680 - 0x0dbaf730 (Size: 176 bytes, Frame: 48)
.globl __gllc_Vertex4dv
.ent __gllc_Vertex4dv
__gllc_Vertex4dv:
    # Line 2475
    li	$a1,32
    # Line 2470
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 2473
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 2470
    lui	$v0,0x5
    addiu	$v0,$v0,-4072
    addu	$gp,$t9,$v0
    # Line 2475
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaf6c8
    # Line 2476
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbaf6c8:
    # Line 2480
    ld	$a0,0($sp)
    # Line 2477
    li	$a2,72
    # Line 2478
    li	$a1,1
    sb	$a1,14($v0)
    # Line 2477
    sh	$a2,12($v0)
    # Line 2480
    ldc1	$f3,0($a0)
    sdc1	$f3,16($v0)
    # Line 2481
    ldc1	$f2,8($a0)
    sdc1	$f2,24($v0)
    # Line 2482
    ldc1	$f1,16($a0)
    sdc1	$f1,32($v0)
    # Line 2483
    ldc1	$f0,24($a0)
    # Line 2485
    la	$a2,__glle_Vertex4dv
    # Line 2484
    ld	$a3,8($sp)
    # Line 2483
    sdc1	$f0,40($v0)
    # Line 2485
    move	$a1,$v0
    # Line 2484
    lw	$v1,4696($a3)
    # Line 2485
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 2484
    ori	$v1,$v1,0x1
    # Line 2485
    jal	__glDlistAppendOp
    # Line 2484
    sw	$v1,4696($a3)
    # Line 2486
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Vertex4dv

# Function: __gllc_Vertex4f
# Declared: Line 2489 (Source lines: 2490-2505)
# Address: 0x0dbaf730 - 0x0dbaf7dc (Size: 172 bytes, Frame: 224)
.globl __gllc_Vertex4f
.ent __gllc_Vertex4f
__gllc_Vertex4f:
    # Line 2495
    li	$a1,16
    # Line 2490
    addiu	$sp,$sp,-96
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,40($sp)
    lui	$at,0x5
    addiu	$at,$at,-4248
    addu	$gp,$t9,$at
    # Line 2495
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 2493
    lw	$a0,__glCurrentContext
    sd	$ra,48($sp)
    # Line 2495
    jal	__glDlistAllocOp2
    sd	$a0,32($sp)
    bnez	$v0,.L0dbaf780
    # Line 2496
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbaf780:
    # Line 2504
    la	$a2,__glle_Vertex4fv
    # Line 2497
    li	$v1,73
    sh	$v1,12($v0)
    # Line 2503
    ld	$v1,32($sp)
    # Line 2502
    ldc1	$f0,24($sp)
    # Line 2499
    ldc1	$f3,0($sp)
    # Line 2500
    ldc1	$f2,8($sp)
    # Line 2501
    ldc1	$f1,16($sp)
    # Line 2499
    swc1	$f3,16($v0)
    # Line 2500
    swc1	$f2,20($v0)
    # Line 2501
    swc1	$f1,24($v0)
    # Line 2502
    swc1	$f0,28($v0)
    # Line 2504
    move	$a1,$v0
    # Line 2503
    lw	$v0,4696($v1)
    # Line 2504
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$v1
    # Line 2503
    ori	$v0,$v0,0x1
    # Line 2504
    jal	__glDlistAppendOp
    # Line 2503
    sw	$v0,4696($v1)
    # Line 2505
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_Vertex4f

# Function: __gllc_Vertex4fv
# Declared: Line 2508 (Source lines: 2509-2524)
# Address: 0x0dbaf7dc - 0x0dbaf884 (Size: 168 bytes, Frame: 48)
.globl __gllc_Vertex4fv
.ent __gllc_Vertex4fv
__gllc_Vertex4fv:
    # Line 2514
    li	$a1,16
    # Line 2509
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 2512
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 2509
    lui	$v0,0x5
    addiu	$v0,$v0,-4420
    addu	$gp,$t9,$v0
    # Line 2514
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaf824
    # Line 2515
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbaf824:
    # Line 2518
    ld	$a0,0($sp)
    # Line 2516
    li	$a1,73
    sh	$a1,12($v0)
    # Line 2518
    lwc1	$f3,0($a0)
    swc1	$f3,16($v0)
    # Line 2519
    lwc1	$f2,4($a0)
    swc1	$f2,20($v0)
    # Line 2520
    lwc1	$f1,8($a0)
    swc1	$f1,24($v0)
    # Line 2521
    lwc1	$f0,12($a0)
    # Line 2523
    la	$a2,__glle_Vertex4fv
    # Line 2522
    ld	$a3,8($sp)
    # Line 2521
    swc1	$f0,28($v0)
    # Line 2523
    move	$a1,$v0
    # Line 2522
    lw	$v1,4696($a3)
    # Line 2523
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 2522
    ori	$v1,$v1,0x1
    # Line 2523
    jal	__glDlistAppendOp
    # Line 2522
    sw	$v1,4696($a3)
    # Line 2524
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Vertex4fv

# Function: __gllc_Vertex4i
# Declared: Line 2527 (Source lines: 2528-2543)
# Address: 0x0dbaf884 - 0x0dbaf934 (Size: 176 bytes, Frame: 224)
.globl __gllc_Vertex4i
.ent __gllc_Vertex4i
__gllc_Vertex4i:
    # Line 2528
    addiu	$sp,$sp,-96
    sd	$a1,24($sp)
    # Line 2533
    li	$a1,16
    sd	$a3,16($sp)
    sd	$a2,32($sp)
    sd	$a0,0($sp)
    # Line 2531
    lw	$at,__glCurrentContext
    sd	$gp,40($sp)
    # Line 2528
    lui	$v0,0x5
    addiu	$v0,$v0,-4588
    addu	$gp,$t9,$v0
    # Line 2533
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,48($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaf8d8
    # Line 2534
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbaf8d8:
    # Line 2542
    la	$a2,__glle_Vertex4iv
    # Line 2535
    li	$a5,74
    sh	$a5,12($v0)
    # Line 2537
    ld	$a4,0($sp)
    # Line 2540
    ld	$a0,16($sp)
    # Line 2539
    ld	$a1,32($sp)
    # Line 2538
    ld	$a3,24($sp)
    # Line 2540
    sw	$a0,28($v0)
    # Line 2539
    sw	$a1,24($v0)
    # Line 2538
    sw	$a3,20($v0)
    # Line 2541
    ld	$a3,8($sp)
    # Line 2537
    sw	$a4,16($v0)
    # Line 2542
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 2541
    lw	$v1,4696($a3)
    # Line 2542
    move	$a1,$v0
    move	$a0,$a3
    # Line 2541
    ori	$v1,$v1,0x1
    # Line 2542
    jal	__glDlistAppendOp
    # Line 2541
    sw	$v1,4696($a3)
    # Line 2543
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_Vertex4i

# Function: __gllc_Vertex4iv
# Declared: Line 2546 (Source lines: 2547-2562)
# Address: 0x0dbaf934 - 0x0dbaf9dc (Size: 168 bytes, Frame: 48)
.globl __gllc_Vertex4iv
.ent __gllc_Vertex4iv
__gllc_Vertex4iv:
    # Line 2552
    li	$a1,16
    # Line 2547
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 2550
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 2547
    lui	$v0,0x5
    addiu	$v0,$v0,-4764
    addu	$gp,$t9,$v0
    # Line 2552
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbaf97c
    # Line 2553
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbaf97c:
    # Line 2556
    ld	$a0,0($sp)
    # Line 2554
    li	$a4,74
    sh	$a4,12($v0)
    # Line 2556
    lw	$a3,0($a0)
    sw	$a3,16($v0)
    # Line 2557
    lw	$a2,4($a0)
    sw	$a2,20($v0)
    # Line 2558
    lw	$a1,8($a0)
    sw	$a1,24($v0)
    # Line 2559
    lw	$a0,12($a0)
    # Line 2561
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 2560
    ld	$a3,8($sp)
    # Line 2559
    sw	$a0,28($v0)
    # Line 2561
    la	$a2,__glle_Vertex4iv
    # Line 2560
    lw	$v1,4696($a3)
    # Line 2561
    move	$a1,$v0
    move	$a0,$a3
    # Line 2560
    ori	$v1,$v1,0x1
    # Line 2561
    jal	__glDlistAppendOp
    # Line 2560
    sw	$v1,4696($a3)
    # Line 2562
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Vertex4iv

# Function: __gllc_Vertex4s
# Declared: Line 2565 (Source lines: 2566-2581)
# Address: 0x0dbaf9dc - 0x0dbafa8c (Size: 176 bytes, Frame: 224)
.globl __gllc_Vertex4s
.ent __gllc_Vertex4s
__gllc_Vertex4s:
    # Line 2566
    addiu	$sp,$sp,-96
    sd	$a1,24($sp)
    # Line 2571
    li	$a1,8
    sd	$a3,16($sp)
    sd	$a2,32($sp)
    sd	$a0,0($sp)
    # Line 2569
    lw	$at,__glCurrentContext
    sd	$gp,40($sp)
    # Line 2566
    lui	$v0,0x5
    addiu	$v0,$v0,-4932
    addu	$gp,$t9,$v0
    # Line 2571
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,48($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbafa30
    # Line 2572
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbafa30:
    # Line 2580
    la	$a2,__glle_Vertex4sv
    # Line 2573
    li	$a5,75
    sh	$a5,12($v0)
    # Line 2575
    ld	$a4,0($sp)
    # Line 2578
    ld	$a0,16($sp)
    # Line 2577
    ld	$a1,32($sp)
    # Line 2576
    ld	$a3,24($sp)
    # Line 2578
    sh	$a0,22($v0)
    # Line 2577
    sh	$a1,20($v0)
    # Line 2576
    sh	$a3,18($v0)
    # Line 2579
    ld	$a3,8($sp)
    # Line 2575
    sh	$a4,16($v0)
    # Line 2580
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 2579
    lw	$v1,4696($a3)
    # Line 2580
    move	$a1,$v0
    move	$a0,$a3
    # Line 2579
    ori	$v1,$v1,0x1
    # Line 2580
    jal	__glDlistAppendOp
    # Line 2579
    sw	$v1,4696($a3)
    # Line 2581
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_Vertex4s

# Function: __gllc_Vertex4sv
# Declared: Line 2584 (Source lines: 2585-2600)
# Address: 0x0dbafa8c - 0x0dbafb34 (Size: 168 bytes, Frame: 48)
.globl __gllc_Vertex4sv
.ent __gllc_Vertex4sv
__gllc_Vertex4sv:
    # Line 2590
    li	$a1,8
    # Line 2585
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 2588
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 2585
    lui	$v0,0x5
    addiu	$v0,$v0,-5108
    addu	$gp,$t9,$v0
    # Line 2590
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbafad4
    # Line 2591
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbafad4:
    # Line 2594
    ld	$a0,0($sp)
    # Line 2592
    li	$a4,75
    sh	$a4,12($v0)
    # Line 2594
    lh	$a3,0($a0)
    sh	$a3,16($v0)
    # Line 2595
    lh	$a2,2($a0)
    sh	$a2,18($v0)
    # Line 2596
    lh	$a1,4($a0)
    sh	$a1,20($v0)
    # Line 2597
    lh	$a0,6($a0)
    # Line 2599
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 2598
    ld	$a3,8($sp)
    # Line 2597
    sh	$a0,22($v0)
    # Line 2599
    la	$a2,__glle_Vertex4sv
    # Line 2598
    lw	$v1,4696($a3)
    # Line 2599
    move	$a1,$v0
    move	$a0,$a3
    # Line 2598
    ori	$v1,$v1,0x1
    # Line 2599
    jal	__glDlistAppendOp
    # Line 2598
    sw	$v1,4696($a3)
    # Line 2600
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Vertex4sv

# Function: __gllc_ClipPlane
# Declared: Line 2603 (Source lines: 2604-2620)
# Address: 0x0dbafb34 - 0x0dbafbe0 (Size: 172 bytes, Frame: 192)
.globl __gllc_ClipPlane
.ent __gllc_ClipPlane
__gllc_ClipPlane:
    # Line 2604
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    # Line 2609
    li	$a1,40
    sd	$a0,0($sp)
    # Line 2607
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 2604
    lui	$v0,0x5
    addiu	$v0,$v0,-5276
    addu	$gp,$t9,$v0
    # Line 2609
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbafb80
    # Line 2610
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbafb80:
    # Line 2615
    ld	$v1,8($sp)
    # Line 2611
    li	$a2,76
    # Line 2612
    li	$a1,1
    # Line 2614
    ld	$a0,0($sp)
    # Line 2612
    sb	$a1,14($v0)
    # Line 2611
    sh	$a2,12($v0)
    # Line 2614
    sw	$a0,48($v0)
    # Line 2615
    ldc1	$f3,0($v1)
    sdc1	$f3,16($v0)
    # Line 2616
    ldc1	$f2,8($v1)
    sdc1	$f2,24($v0)
    # Line 2617
    ldc1	$f1,16($v1)
    # Line 2619
    la	$a2,__glle_ClipPlane
    move	$a1,$v0
    # Line 2617
    sdc1	$f1,32($v0)
    # Line 2619
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 2618
    ldc1	$f0,24($v1)
    # Line 2619
    ld	$a0,16($sp)
    jal	__glDlistAppendOp
    # Line 2618
    sdc1	$f0,40($v0)
    # Line 2620
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_ClipPlane

# Function: __gllc_ColorMaterial
# Declared: Line 2623 (Source lines: 2624-2636)
# Address: 0x0dbafbe0 - 0x0dbafc68 (Size: 136 bytes, Frame: 192)
.globl __gllc_ColorMaterial
.ent __gllc_ColorMaterial
__gllc_ColorMaterial:
    # Line 2624
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    # Line 2629
    li	$a1,8
    sd	$a0,0($sp)
    # Line 2627
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 2624
    lui	$v0,0x5
    addiu	$v0,$v0,-5448
    addu	$gp,$t9,$v0
    # Line 2629
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbafc2c
    # Line 2630
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbafc2c:
    # Line 2635
    la	$a2,__glle_ColorMaterial
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 2631
    li	$v1,77
    sh	$v1,12($v0)
    # Line 2634
    ld	$a4,8($sp)
    # Line 2635
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 2633
    ld	$a3,0($sp)
    # Line 2634
    sw	$a4,20($v0)
    # Line 2635
    jal	__glDlistAppendOp
    # Line 2633
    sw	$a3,16($v0)
    # Line 2636
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_ColorMaterial

# Function: __gllc_CullFace
# Declared: Line 2639 (Source lines: 2640-2651)
# Address: 0x0dbafc68 - 0x0dbafce4 (Size: 124 bytes, Frame: 48)
.globl __gllc_CullFace
.ent __gllc_CullFace
__gllc_CullFace:
    # Line 2645
    li	$a1,4
    # Line 2640
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 2643
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 2640
    lui	$v0,0x5
    addiu	$v0,$v0,-5584
    addu	$gp,$t9,$v0
    # Line 2645
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbafcb0
    # Line 2646
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbafcb0:
    # Line 2650
    la	$a2,__glle_CullFace
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 2647
    li	$v1,78
    # Line 2650
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 2649
    ld	$a3,0($sp)
    # Line 2647
    sh	$v1,12($v0)
    # Line 2650
    jal	__glDlistAppendOp
    # Line 2649
    sw	$a3,16($v0)
    # Line 2651
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_CullFace

# Function: __gllc_Fogf
# Declared: Line 2654 (Source lines: 2655-2667)
# Address: 0x0dbafce4 - 0x0dbafd6c (Size: 136 bytes, Frame: 192)
.globl __gllc_Fogf
.ent __gllc_Fogf
__gllc_Fogf:
    # Line 2660
    li	$a1,8
    # Line 2655
    addiu	$sp,$sp,-64
    sdc1	$f13,0($sp)
    sd	$a0,8($sp)
    # Line 2658
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 2655
    lui	$v0,0x5
    addiu	$v0,$v0,-5708
    addu	$gp,$t9,$v0
    # Line 2660
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbafd30
    # Line 2661
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbafd30:
    # Line 2666
    la	$a2,__glle_Fogf
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 2662
    li	$v1,79
    sh	$v1,12($v0)
    # Line 2665
    ldc1	$f0,0($sp)
    # Line 2666
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 2664
    ld	$a3,8($sp)
    # Line 2665
    swc1	$f0,20($v0)
    # Line 2666
    jal	__glDlistAppendOp
    # Line 2664
    sw	$a3,16($v0)
    # Line 2667
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_Fogf

# Function: __gllc_Fogfv
# Declared: Line 2670 (Source lines: 2671-2692)
# Address: 0x0dbafd6c - 0x0dbafe48 (Size: 220 bytes, Frame: 208)
.globl __gllc_Fogfv
.ent __gllc_Fogfv
__gllc_Fogfv:
    # Line 2671
    addiu	$sp,$sp,-80
    sd	$s0,48($sp)
    # Line 2676
    lw	$s0,__glCurrentContext
    sd	$gp,32($sp)
    # Line 2671
    lui	$at,0x5
    addiu	$at,$at,-5844
    addu	$gp,$t9,$at
    # Line 2678
    # lw $t9, -25560($gp) # &__glFogfv_size
    sd	$a1,0($sp)
    sd	$ra,40($sp)
    jal	__glFogfv_size
    sd	$a0,8($sp)
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbafe28
    sd	$a5,16($sp)
    # Line 2684
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$a5,4
    bnez	$v0,.L0dbafdd8
    sd	$v0,24($sp)
    # Line 2685
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbafdd8:
    ld	$a2,16($sp)
    # Line 2689
    ld	$a1,0($sp)
    # Line 2686
    li	$a3,80
    # Line 2689
    ld	$a4,24($sp)
    # Line 2688
    ld	$a5,8($sp)
    # Line 2689
    # lw $t9, -17848($gp) # &memcpy
    addiu	$a0,$a4,20
    # Line 2688
    sw	$a5,16($a4)
    # Line 2689
    jal	memcpy
    # Line 2686
    sh	$a3,12($a4)
    # Line 2691
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,24($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_Fogfv
    # Line 2692
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbafe28:
    # Line 2680
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    # Line 2681
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_Fogfv

# Function: __gllc_Fogi
# Declared: Line 2695 (Source lines: 2696-2708)
# Address: 0x0dbafe48 - 0x0dbafed0 (Size: 136 bytes, Frame: 192)
.globl __gllc_Fogi
.ent __gllc_Fogi
__gllc_Fogi:
    # Line 2696
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    # Line 2701
    li	$a1,8
    sd	$a0,0($sp)
    # Line 2699
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 2696
    lui	$v0,0x5
    addiu	$v0,$v0,-6064
    addu	$gp,$t9,$v0
    # Line 2701
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbafe94
    # Line 2702
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbafe94:
    # Line 2707
    la	$a2,__glle_Fogi
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 2703
    li	$v1,81
    sh	$v1,12($v0)
    # Line 2706
    ld	$a4,8($sp)
    # Line 2707
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 2705
    ld	$a3,0($sp)
    # Line 2706
    sw	$a4,20($v0)
    # Line 2707
    jal	__glDlistAppendOp
    # Line 2705
    sw	$a3,16($v0)
    # Line 2708
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_Fogi

# Function: __gllc_Fogiv
# Declared: Line 2711 (Source lines: 2712-2733)
# Address: 0x0dbafed0 - 0x0dbaffac (Size: 220 bytes, Frame: 208)
.globl __gllc_Fogiv
.ent __gllc_Fogiv
__gllc_Fogiv:
    # Line 2712
    addiu	$sp,$sp,-80
    sd	$s0,48($sp)
    # Line 2717
    lw	$s0,__glCurrentContext
    sd	$gp,32($sp)
    # Line 2712
    lui	$at,0x5
    addiu	$at,$at,-6200
    addu	$gp,$t9,$at
    # Line 2719
    # lw $t9, -25564($gp) # &__glFogiv_size
    sd	$a1,0($sp)
    sd	$ra,40($sp)
    jal	__glFogiv_size
    sd	$a0,8($sp)
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbaff8c
    sd	$a5,16($sp)
    # Line 2725
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$a5,4
    bnez	$v0,.L0dbaff3c
    sd	$v0,24($sp)
    # Line 2726
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbaff3c:
    ld	$a2,16($sp)
    # Line 2730
    ld	$a1,0($sp)
    # Line 2727
    li	$a3,82
    # Line 2730
    ld	$a4,24($sp)
    # Line 2729
    ld	$a5,8($sp)
    # Line 2730
    # lw $t9, -17848($gp) # &memcpy
    addiu	$a0,$a4,20
    # Line 2729
    sw	$a5,16($a4)
    # Line 2730
    jal	memcpy
    # Line 2727
    sh	$a3,12($a4)
    # Line 2732
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,24($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_Fogiv
    # Line 2733
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbaff8c:
    # Line 2721
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    # Line 2722
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_Fogiv

# Function: __gllc_FrontFace
# Declared: Line 2736 (Source lines: 2737-2748)
# Address: 0x0dbaffac - 0x0dbb0028 (Size: 124 bytes, Frame: 48)
.globl __gllc_FrontFace
.ent __gllc_FrontFace
__gllc_FrontFace:
    # Line 2742
    li	$a1,4
    # Line 2737
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 2740
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 2737
    lui	$v0,0x5
    addiu	$v0,$v0,-6420
    addu	$gp,$t9,$v0
    # Line 2742
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbafff4
    # Line 2743
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbafff4:
    # Line 2747
    la	$a2,__glle_FrontFace
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 2744
    li	$v1,83
    # Line 2747
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 2746
    ld	$a3,0($sp)
    # Line 2744
    sh	$v1,12($v0)
    # Line 2747
    jal	__glDlistAppendOp
    # Line 2746
    sw	$a3,16($v0)
    # Line 2748
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_FrontFace

# Function: __gllc_Hint
# Declared: Line 2751 (Source lines: 2752-2764)
# Address: 0x0dbb0028 - 0x0dbb00b0 (Size: 136 bytes, Frame: 192)
.globl __gllc_Hint
.ent __gllc_Hint
__gllc_Hint:
    # Line 2752
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    # Line 2757
    li	$a1,8
    sd	$a0,0($sp)
    # Line 2755
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 2752
    lui	$v0,0x5
    addiu	$v0,$v0,-6544
    addu	$gp,$t9,$v0
    # Line 2757
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb0074
    # Line 2758
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbb0074:
    # Line 2763
    la	$a2,__glle_Hint
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 2759
    li	$v1,84
    sh	$v1,12($v0)
    # Line 2762
    ld	$a4,8($sp)
    # Line 2763
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 2761
    ld	$a3,0($sp)
    # Line 2762
    sw	$a4,20($v0)
    # Line 2763
    jal	__glDlistAppendOp
    # Line 2761
    sw	$a3,16($v0)
    # Line 2764
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_Hint

# Function: __gllc_Lightf
# Declared: Line 2767 (Source lines: 2768-2776)
# Address: 0x0dbb00b0 - 0x0dbb0134 (Size: 132 bytes, Frame: 208)
.globl __gllc_Lightf
.ent __gllc_Lightf
__gllc_Lightf:
    # Line 2768
    move	$v0,$a1
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    # Line 2771
    move	$a0,$a1
    sd	$gp,24($sp)
    # Line 2768
    lui	$v1,0x5
    swc1	$f14,64($sp)
    addiu	$v1,$v1,-6680
    addu	$gp,$t9,$v1
    # Line 2771
    # lw $t9, -25556($gp) # &__glLightfv_size
    # Line 2769
    lw	$at,__glCurrentContext
    sd	$ra,32($sp)
    # Line 2771
    jal	__glLightfv_size
    sd	$at,16($sp)
    li	$a2,1
    beq	$v0,$a2,.L0dbb0110
    # Line 2772
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    ld	$a0,16($sp)
    # Line 2773
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb0110:
    # Line 2775
    # lw $t9, -23264($gp) # &__gllc_Lightfv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __gllc_Lightfv
    addiu	$a2,$sp,64
    # Line 2776
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_Lightf

# Function: __gllc_Lightfv
# Declared: Line 2779 (Source lines: 2780-2802)
# Address: 0x0dbb0134 - 0x0dbb0224 (Size: 240 bytes, Frame: 224)
.globl __gllc_Lightfv
.ent __gllc_Lightfv
__gllc_Lightfv:
    # Line 2780
    move	$at,$a1
    addiu	$sp,$sp,-96
    sd	$s0,56($sp)
    # Line 2785
    lw	$s0,__glCurrentContext
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$gp,40($sp)
    # Line 2780
    lui	$v0,0x5
    addiu	$v0,$v0,-6812
    addu	$gp,$t9,$v0
    # Line 2787
    # lw $t9, -25556($gp) # &__glLightfv_size
    sd	$a0,16($sp)
    sd	$ra,48($sp)
    jal	__glLightfv_size
    move	$a0,$a1
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbb0204
    sd	$a5,24($sp)
    # Line 2793
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$a5,8
    bnez	$v0,.L0dbb01ac
    sd	$v0,32($sp)
    # Line 2794
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb01ac:
    ld	$a2,24($sp)
    # Line 2799
    ld	$a1,0($sp)
    # Line 2795
    li	$a3,86
    # Line 2799
    # lw $t9, -17848($gp) # &memcpy
    ld	$a4,32($sp)
    # Line 2798
    ld	$a6,8($sp)
    # Line 2797
    ld	$a5,16($sp)
    # Line 2799
    addiu	$a0,$a4,24
    # Line 2798
    sw	$a6,20($a4)
    # Line 2797
    sw	$a5,16($a4)
    # Line 2799
    jal	memcpy
    # Line 2795
    sh	$a3,12($a4)
    # Line 2801
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,32($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_Lightfv
    # Line 2802
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb0204:
    # Line 2789
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    # Line 2790
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_Lightfv

# Function: __gllc_Lighti
# Declared: Line 2805 (Source lines: 2806-2814)
# Address: 0x0dbb0224 - 0x0dbb02a8 (Size: 132 bytes, Frame: 208)
.globl __gllc_Lighti
.ent __gllc_Lighti
__gllc_Lighti:
    # Line 2806
    move	$v0,$a1
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    # Line 2809
    move	$a0,$a1
    sd	$gp,24($sp)
    # Line 2806
    lui	$v1,0x5
    sw	$a2,68($sp)
    addiu	$v1,$v1,-7052
    addu	$gp,$t9,$v1
    # Line 2809
    # lw $t9, -25552($gp) # &__glLightiv_size
    # Line 2807
    lw	$at,__glCurrentContext
    sd	$ra,32($sp)
    # Line 2809
    jal	__glLightiv_size
    sd	$at,16($sp)
    li	$a2,1
    beq	$v0,$a2,.L0dbb0284
    # Line 2810
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    ld	$a0,16($sp)
    # Line 2811
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb0284:
    # Line 2813
    # lw $t9, -23256($gp) # &__gllc_Lightiv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __gllc_Lightiv
    addiu	$a2,$sp,68
    # Line 2814
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_Lighti

# Function: __gllc_Lightiv
# Declared: Line 2817 (Source lines: 2818-2840)
# Address: 0x0dbb02a8 - 0x0dbb0398 (Size: 240 bytes, Frame: 224)
.globl __gllc_Lightiv
.ent __gllc_Lightiv
__gllc_Lightiv:
    # Line 2818
    move	$at,$a1
    addiu	$sp,$sp,-96
    sd	$s0,56($sp)
    # Line 2823
    lw	$s0,__glCurrentContext
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$gp,40($sp)
    # Line 2818
    lui	$v0,0x5
    addiu	$v0,$v0,-7184
    addu	$gp,$t9,$v0
    # Line 2825
    # lw $t9, -25552($gp) # &__glLightiv_size
    sd	$a0,16($sp)
    sd	$ra,48($sp)
    jal	__glLightiv_size
    move	$a0,$a1
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbb0378
    sd	$a5,24($sp)
    # Line 2831
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$a5,8
    bnez	$v0,.L0dbb0320
    sd	$v0,32($sp)
    # Line 2832
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb0320:
    ld	$a2,24($sp)
    # Line 2837
    ld	$a1,0($sp)
    # Line 2833
    li	$a3,88
    # Line 2837
    # lw $t9, -17848($gp) # &memcpy
    ld	$a4,32($sp)
    # Line 2836
    ld	$a6,8($sp)
    # Line 2835
    ld	$a5,16($sp)
    # Line 2837
    addiu	$a0,$a4,24
    # Line 2836
    sw	$a6,20($a4)
    # Line 2835
    sw	$a5,16($a4)
    # Line 2837
    jal	memcpy
    # Line 2833
    sh	$a3,12($a4)
    # Line 2839
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,32($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_Lightiv
    # Line 2840
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb0378:
    # Line 2827
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    # Line 2828
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_Lightiv

# Function: __gllc_LightModelf
# Declared: Line 2843 (Source lines: 2844-2852)
# Address: 0x0dbb0398 - 0x0dbb040c (Size: 116 bytes, Frame: 48)
.globl __gllc_LightModelf
.ent __gllc_LightModelf
__gllc_LightModelf:
    # Line 2844
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    sd	$gp,16($sp)
    lui	$v0,0x5
    swc1	$f13,40($sp)
    addiu	$v0,$v0,-7424
    addu	$gp,$t9,$v0
    # Line 2847
    # lw $t9, -25548($gp) # &__glLightModelfv_size
    # Line 2845
    lw	$at,__glCurrentContext
    sd	$ra,24($sp)
    # Line 2847
    jal	__glLightModelfv_size
    sd	$at,8($sp)
    li	$v1,1
    beq	$v0,$v1,.L0dbb03ec
    # Line 2848
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    ld	$a0,8($sp)
    # Line 2849
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb03ec:
    # Line 2851
    # lw $t9, -23248($gp) # &__gllc_LightModelfv
    ld	$a0,0($sp)
    bal __gllc_LightModelfv
    addiu	$a1,$sp,40
    # Line 2852
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_LightModelf

# Function: __gllc_LightModelfv
# Declared: Line 2855 (Source lines: 2856-2877)
# Address: 0x0dbb040c - 0x0dbb04e8 (Size: 220 bytes, Frame: 208)
.globl __gllc_LightModelfv
.ent __gllc_LightModelfv
__gllc_LightModelfv:
    # Line 2856
    addiu	$sp,$sp,-80
    sd	$s0,48($sp)
    # Line 2861
    lw	$s0,__glCurrentContext
    sd	$gp,32($sp)
    # Line 2856
    lui	$at,0x5
    addiu	$at,$at,-7540
    addu	$gp,$t9,$at
    # Line 2863
    # lw $t9, -25548($gp) # &__glLightModelfv_size
    sd	$a1,0($sp)
    sd	$ra,40($sp)
    jal	__glLightModelfv_size
    sd	$a0,8($sp)
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbb04c8
    sd	$a5,16($sp)
    # Line 2869
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$a5,4
    bnez	$v0,.L0dbb0478
    sd	$v0,24($sp)
    # Line 2870
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb0478:
    ld	$a2,16($sp)
    # Line 2874
    ld	$a1,0($sp)
    # Line 2871
    li	$a3,90
    # Line 2874
    ld	$a4,24($sp)
    # Line 2873
    ld	$a5,8($sp)
    # Line 2874
    # lw $t9, -17848($gp) # &memcpy
    addiu	$a0,$a4,20
    # Line 2873
    sw	$a5,16($a4)
    # Line 2874
    jal	memcpy
    # Line 2871
    sh	$a3,12($a4)
    # Line 2876
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,24($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_LightModelfv
    # Line 2877
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb04c8:
    # Line 2865
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    # Line 2866
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_LightModelfv

# Function: __gllc_LightModeli
# Declared: Line 2880 (Source lines: 2881-2889)
# Address: 0x0dbb04e8 - 0x0dbb055c (Size: 116 bytes, Frame: 48)
.globl __gllc_LightModeli
.ent __gllc_LightModeli
__gllc_LightModeli:
    # Line 2881
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    sd	$gp,16($sp)
    lui	$v0,0x5
    sw	$a1,44($sp)
    addiu	$v0,$v0,-7760
    addu	$gp,$t9,$v0
    # Line 2884
    # lw $t9, -25544($gp) # &__glLightModeliv_size
    # Line 2882
    lw	$at,__glCurrentContext
    sd	$ra,24($sp)
    # Line 2884
    jal	__glLightModeliv_size
    sd	$at,8($sp)
    li	$v1,1
    beq	$v0,$v1,.L0dbb053c
    # Line 2885
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    ld	$a0,8($sp)
    # Line 2886
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb053c:
    # Line 2888
    # lw $t9, -23240($gp) # &__gllc_LightModeliv
    ld	$a0,0($sp)
    bal __gllc_LightModeliv
    addiu	$a1,$sp,44
    # Line 2889
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_LightModeli

# Function: __gllc_LightModeliv
# Declared: Line 2892 (Source lines: 2893-2914)
# Address: 0x0dbb055c - 0x0dbb0638 (Size: 220 bytes, Frame: 208)
.globl __gllc_LightModeliv
.ent __gllc_LightModeliv
__gllc_LightModeliv:
    # Line 2893
    addiu	$sp,$sp,-80
    sd	$s0,48($sp)
    # Line 2898
    lw	$s0,__glCurrentContext
    sd	$gp,32($sp)
    # Line 2893
    lui	$at,0x5
    addiu	$at,$at,-7876
    addu	$gp,$t9,$at
    # Line 2900
    # lw $t9, -25544($gp) # &__glLightModeliv_size
    sd	$a1,0($sp)
    sd	$ra,40($sp)
    jal	__glLightModeliv_size
    sd	$a0,8($sp)
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbb0618
    sd	$a5,16($sp)
    # Line 2906
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$a5,4
    bnez	$v0,.L0dbb05c8
    sd	$v0,24($sp)
    # Line 2907
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb05c8:
    ld	$a2,16($sp)
    # Line 2911
    ld	$a1,0($sp)
    # Line 2908
    li	$a3,92
    # Line 2911
    ld	$a4,24($sp)
    # Line 2910
    ld	$a5,8($sp)
    # Line 2911
    # lw $t9, -17848($gp) # &memcpy
    addiu	$a0,$a4,20
    # Line 2910
    sw	$a5,16($a4)
    # Line 2911
    jal	memcpy
    # Line 2908
    sh	$a3,12($a4)
    # Line 2913
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,24($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_LightModeliv
    # Line 2914
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb0618:
    # Line 2902
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    # Line 2903
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_LightModeliv

# Function: __gllc_LineStipple
# Declared: Line 2917 (Source lines: 2918-2930)
# Address: 0x0dbb0638 - 0x0dbb06c0 (Size: 136 bytes, Frame: 192)
.globl __gllc_LineStipple
.ent __gllc_LineStipple
__gllc_LineStipple:
    # Line 2918
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    # Line 2923
    li	$a1,8
    sd	$a0,0($sp)
    # Line 2921
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 2918
    lui	$v0,0x5
    addiu	$v0,$v0,-8096
    addu	$gp,$t9,$v0
    # Line 2923
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb0684
    # Line 2924
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbb0684:
    # Line 2929
    la	$a2,__glle_LineStipple
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 2925
    li	$v1,93
    sh	$v1,12($v0)
    # Line 2928
    ld	$a4,8($sp)
    # Line 2929
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 2927
    ld	$a3,0($sp)
    # Line 2928
    sh	$a4,20($v0)
    # Line 2929
    jal	__glDlistAppendOp
    # Line 2927
    sw	$a3,16($v0)
    # Line 2930
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_LineStipple

# Function: __gllc_LineWidth
# Declared: Line 2933 (Source lines: 2934-2945)
# Address: 0x0dbb06c0 - 0x0dbb0738 (Size: 120 bytes, Frame: 48)
.globl __gllc_LineWidth
.ent __gllc_LineWidth
__gllc_LineWidth:
    # Line 2939
    li	$a1,4
    # Line 2934
    addiu	$sp,$sp,-48
    sdc1	$f12,0($sp)
    sd	$gp,16($sp)
    lui	$at,0x5
    addiu	$at,$at,-8232
    addu	$gp,$t9,$at
    # Line 2939
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 2937
    lw	$a0,__glCurrentContext
    sd	$ra,24($sp)
    # Line 2939
    jal	__glDlistAllocOp2
    sd	$a0,8($sp)
    bnez	$v0,.L0dbb0704
    # Line 2940
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb0704:
    # Line 2944
    la	$a2,__glle_LineWidth
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 2941
    li	$v1,94
    # Line 2944
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 2943
    ldc1	$f0,0($sp)
    # Line 2941
    sh	$v1,12($v0)
    # Line 2944
    jal	__glDlistAppendOp
    # Line 2943
    swc1	$f0,16($v0)
    # Line 2945
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_LineWidth

# Function: __gllc_Materialf
# Declared: Line 2948 (Source lines: 2949-2957)
# Address: 0x0dbb0738 - 0x0dbb07bc (Size: 132 bytes, Frame: 208)
.globl __gllc_Materialf
.ent __gllc_Materialf
__gllc_Materialf:
    # Line 2949
    move	$v0,$a1
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    # Line 2952
    move	$a0,$a1
    sd	$gp,24($sp)
    # Line 2949
    lui	$v1,0x5
    swc1	$f14,64($sp)
    addiu	$v1,$v1,-8352
    addu	$gp,$t9,$v1
    # Line 2952
    # lw $t9, -25540($gp) # &__glMaterialfv_size
    # Line 2950
    lw	$at,__glCurrentContext
    sd	$ra,32($sp)
    # Line 2952
    jal	__glMaterialfv_size
    sd	$at,16($sp)
    li	$a2,1
    beq	$v0,$a2,.L0dbb0798
    # Line 2953
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    ld	$a0,16($sp)
    # Line 2954
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb0798:
    # Line 2956
    # lw $t9, -23224($gp) # &__gllc_Materialfv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __gllc_Materialfv
    addiu	$a2,$sp,64
    # Line 2957
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_Materialf

# Function: __gllc_Materialfv
# Declared: Line 2960 (Source lines: 2961-2990)
# Address: 0x0dbb07bc - 0x0dbb08fc (Size: 320 bytes, Frame: 224)
.globl __gllc_Materialfv
.ent __gllc_Materialfv
__gllc_Materialfv:
    # Line 2969
    lwc1	$f14,0($a2)
    # Line 2961
    addiu	$sp,$sp,-96
    sd	$s0,56($sp)
    sd	$s1,40($sp)
    # Line 2967
    lw	$s1,__glCurrentContext
    sd	$a2,16($sp)
    sd	$gp,32($sp)
    # Line 2961
    lui	$at,0x5
    addiu	$at,$at,-8484
    addu	$gp,$t9,$at
    # Line 2969
    # lw $t9, -27904($gp) # &__glErrorCheckMaterial
    sd	$a1,0($sp)
    sd	$ra,48($sp)
    jal	__glErrorCheckMaterial
    sd	$a0,24($sp)
    beqz	$v0,.L0dbb0828
    move	$s0,$v0
    # Line 2971
    # lw $t9, -29412($gp) # &__gllc_Error
    move	$a0,$s1
    jal	__gllc_Error
    move	$a1,$s0
    ld	$gp,32($sp)
    # Line 2972
    ld	$ra,48($sp)
    ld	$s0,56($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb0828:
    # Line 2974
    # lw $t9, -25540($gp) # &__glMaterialfv_size
    ld	$a0,0($sp)
    jal	__glMaterialfv_size
    ld	$s0,56($sp)
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbb08dc
    sd	$a5,8($sp)
    # Line 2980
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a0,$s1
    jal	__glDlistAllocOp2
    addiu	$a1,$a5,8
    bnez	$v0,.L0dbb0878
    move	$s0,$v0
    # Line 2981
    ld	$ra,48($sp)
    ld	$gp,32($sp)
    ld	$s0,56($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb0878:
    ld	$a2,8($sp)
    # Line 2986
    ld	$a1,16($sp)
    addiu	$a0,$s0,24
    # Line 2982
    li	$a3,96
    sh	$a3,12($s0)
    # Line 2985
    ld	$a5,0($sp)
    # Line 2986
    # lw $t9, -17848($gp) # &memcpy
    # Line 2984
    ld	$a4,24($sp)
    # Line 2985
    sw	$a5,20($s0)
    # Line 2986
    jal	memcpy
    # Line 2984
    sw	$a4,16($s0)
    # Line 2989
    la	$a2,__glle_Materialfv
    move	$a1,$s0
    # Line 2988
    lw	$a6,4696($s1)
    # Line 2989
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s1
    # Line 2988
    ori	$a6,$a6,0x100
    # Line 2989
    jal	__glDlistAppendOp
    # Line 2988
    sw	$a6,4696($s1)
    ld	$gp,32($sp)
    # Line 2990
    ld	$ra,48($sp)
    ld	$s0,56($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb08dc:
    # Line 2976
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s1
    # Line 2977
    ld	$ra,48($sp)
    ld	$gp,32($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_Materialfv

# Function: __gllc_Materiali
# Declared: Line 2993 (Source lines: 2994-3002)
# Address: 0x0dbb08fc - 0x0dbb0980 (Size: 132 bytes, Frame: 208)
.globl __gllc_Materiali
.ent __gllc_Materiali
__gllc_Materiali:
    # Line 2994
    move	$v0,$a1
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    # Line 2997
    move	$a0,$a1
    sd	$gp,24($sp)
    # Line 2994
    lui	$v1,0x5
    sw	$a2,68($sp)
    addiu	$v1,$v1,-8804
    addu	$gp,$t9,$v1
    # Line 2997
    # lw $t9, -25536($gp) # &__glMaterialiv_size
    # Line 2995
    lw	$at,__glCurrentContext
    sd	$ra,32($sp)
    # Line 2997
    jal	__glMaterialiv_size
    sd	$at,16($sp)
    li	$a2,1
    beq	$v0,$a2,.L0dbb095c
    # Line 2998
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    ld	$a0,16($sp)
    # Line 2999
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb095c:
    # Line 3001
    # lw $t9, -23216($gp) # &__gllc_Materialiv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __gllc_Materialiv
    addiu	$a2,$sp,68
    # Line 3002
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_Materiali

# Function: __gllc_Materialiv
# Declared: Line 3005 (Source lines: 3006-3035)
# Address: 0x0dbb0980 - 0x0dbb0ac8 (Size: 328 bytes, Frame: 224)
.globl __gllc_Materialiv
.ent __gllc_Materialiv
__gllc_Materialiv:
    # Line 3006
    addiu	$sp,$sp,-96
    sd	$s0,56($sp)
    sd	$s1,40($sp)
    # Line 3012
    lw	$s1,__glCurrentContext
    sd	$a1,0($sp)
    sd	$a0,24($sp)
    sd	$a2,16($sp)
    sd	$gp,32($sp)
    # Line 3014
    lw	$at,0($a2)
    # Line 3006
    lui	$v0,0x5
    addiu	$v0,$v0,-8936
    addu	$gp,$t9,$v0
    # Line 3014
    # lw $t9, -27904($gp) # &__glErrorCheckMaterial
    mtc1	$at,$f14
    sd	$ra,48($sp)
    jal	__glErrorCheckMaterial
    cvt.s.w	$f14,$f14
    beqz	$v0,.L0dbb09f4
    move	$s0,$v0
    # Line 3016
    # lw $t9, -29412($gp) # &__gllc_Error
    move	$a0,$s1
    jal	__gllc_Error
    move	$a1,$s0
    ld	$gp,32($sp)
    # Line 3017
    ld	$ra,48($sp)
    ld	$s0,56($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb09f4:
    # Line 3019
    # lw $t9, -25536($gp) # &__glMaterialiv_size
    ld	$a0,0($sp)
    jal	__glMaterialiv_size
    ld	$s0,56($sp)
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbb0aa8
    sd	$a5,8($sp)
    # Line 3025
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a0,$s1
    jal	__glDlistAllocOp2
    addiu	$a1,$a5,8
    bnez	$v0,.L0dbb0a44
    move	$s0,$v0
    # Line 3026
    ld	$ra,48($sp)
    ld	$gp,32($sp)
    ld	$s0,56($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb0a44:
    ld	$a2,8($sp)
    # Line 3031
    ld	$a1,16($sp)
    addiu	$a0,$s0,24
    # Line 3027
    li	$a3,98
    sh	$a3,12($s0)
    # Line 3030
    ld	$a5,0($sp)
    # Line 3031
    # lw $t9, -17848($gp) # &memcpy
    # Line 3029
    ld	$a4,24($sp)
    # Line 3030
    sw	$a5,20($s0)
    # Line 3031
    jal	memcpy
    # Line 3029
    sw	$a4,16($s0)
    # Line 3034
    la	$a2,__glle_Materialiv
    move	$a1,$s0
    # Line 3033
    lw	$a6,4696($s1)
    # Line 3034
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s1
    # Line 3033
    ori	$a6,$a6,0x100
    # Line 3034
    jal	__glDlistAppendOp
    # Line 3033
    sw	$a6,4696($s1)
    ld	$gp,32($sp)
    # Line 3035
    ld	$ra,48($sp)
    ld	$s0,56($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb0aa8:
    # Line 3021
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s1
    # Line 3022
    ld	$ra,48($sp)
    ld	$gp,32($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_Materialiv

# Function: __gllc_PointSize
# Declared: Line 3038 (Source lines: 3039-3050)
# Address: 0x0dbb0ac8 - 0x0dbb0b40 (Size: 120 bytes, Frame: 48)
.globl __gllc_PointSize
.ent __gllc_PointSize
__gllc_PointSize:
    # Line 3044
    li	$a1,4
    # Line 3039
    addiu	$sp,$sp,-48
    sdc1	$f12,0($sp)
    sd	$gp,16($sp)
    lui	$at,0x5
    addiu	$at,$at,-9264
    addu	$gp,$t9,$at
    # Line 3044
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 3042
    lw	$a0,__glCurrentContext
    sd	$ra,24($sp)
    # Line 3044
    jal	__glDlistAllocOp2
    sd	$a0,8($sp)
    bnez	$v0,.L0dbb0b0c
    # Line 3045
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb0b0c:
    # Line 3049
    la	$a2,__glle_PointSize
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 3046
    li	$v1,99
    # Line 3049
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3048
    ldc1	$f0,0($sp)
    # Line 3046
    sh	$v1,12($v0)
    # Line 3049
    jal	__glDlistAppendOp
    # Line 3048
    swc1	$f0,16($v0)
    # Line 3050
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_PointSize

# Function: __gllc_PolygonMode
# Declared: Line 3053 (Source lines: 3054-3066)
# Address: 0x0dbb0b40 - 0x0dbb0bc8 (Size: 136 bytes, Frame: 192)
.globl __gllc_PolygonMode
.ent __gllc_PolygonMode
__gllc_PolygonMode:
    # Line 3054
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    # Line 3059
    li	$a1,8
    sd	$a0,0($sp)
    # Line 3057
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 3054
    lui	$v0,0x5
    addiu	$v0,$v0,-9384
    addu	$gp,$t9,$v0
    # Line 3059
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb0b8c
    # Line 3060
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbb0b8c:
    # Line 3065
    la	$a2,__glle_PolygonMode
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 3061
    li	$v1,100
    sh	$v1,12($v0)
    # Line 3064
    ld	$a4,8($sp)
    # Line 3065
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3063
    ld	$a3,0($sp)
    # Line 3064
    sw	$a4,20($v0)
    # Line 3065
    jal	__glDlistAppendOp
    # Line 3063
    sw	$a3,16($v0)
    # Line 3066
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_PolygonMode

# Function: __gllc_Scissor
# Declared: Line 3070 (Source lines: 3071-3085)
# Address: 0x0dbb0bc8 - 0x0dbb0c68 (Size: 160 bytes, Frame: 224)
.globl __gllc_Scissor
.ent __gllc_Scissor
__gllc_Scissor:
    # Line 3071
    addiu	$sp,$sp,-96
    sd	$a1,24($sp)
    # Line 3076
    li	$a1,16
    sd	$a3,16($sp)
    sd	$a2,32($sp)
    sd	$a0,0($sp)
    # Line 3074
    lw	$at,__glCurrentContext
    sd	$gp,40($sp)
    # Line 3071
    lui	$v0,0x5
    addiu	$v0,$v0,-9520
    addu	$gp,$t9,$v0
    # Line 3076
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,48($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb0c1c
    # Line 3077
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb0c1c:
    # Line 3084
    la	$a2,__glle_Scissor
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 3078
    li	$v1,102
    sh	$v1,12($v0)
    # Line 3080
    ld	$a3,0($sp)
    # Line 3084
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3083
    ld	$a6,16($sp)
    # Line 3082
    ld	$a5,32($sp)
    # Line 3081
    ld	$a4,24($sp)
    # Line 3083
    sw	$a6,28($v0)
    # Line 3082
    sw	$a5,24($v0)
    # Line 3081
    sw	$a4,20($v0)
    # Line 3084
    jal	__glDlistAppendOp
    # Line 3080
    sw	$a3,16($v0)
    # Line 3085
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_Scissor

# Function: __gllc_ShadeModel
# Declared: Line 3088 (Source lines: 3089-3100)
# Address: 0x0dbb0c68 - 0x0dbb0ce4 (Size: 124 bytes, Frame: 48)
.globl __gllc_ShadeModel
.ent __gllc_ShadeModel
__gllc_ShadeModel:
    # Line 3094
    li	$a1,4
    # Line 3089
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 3092
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 3089
    lui	$v0,0x5
    addiu	$v0,$v0,-9680
    addu	$gp,$t9,$v0
    # Line 3094
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb0cb0
    # Line 3095
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb0cb0:
    # Line 3099
    la	$a2,__glle_ShadeModel
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 3096
    li	$v1,103
    # Line 3099
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3098
    ld	$a3,0($sp)
    # Line 3096
    sh	$v1,12($v0)
    # Line 3099
    jal	__glDlistAppendOp
    # Line 3098
    sw	$a3,16($v0)
    # Line 3100
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_ShadeModel

# Function: __gllc_TexParameterf
# Declared: Line 3103 (Source lines: 3104-3112)
# Address: 0x0dbb0ce4 - 0x0dbb0d68 (Size: 132 bytes, Frame: 208)
.globl __gllc_TexParameterf
.ent __gllc_TexParameterf
__gllc_TexParameterf:
    # Line 3104
    move	$v0,$a1
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    # Line 3107
    move	$a0,$a1
    sd	$gp,24($sp)
    # Line 3104
    lui	$v1,0x5
    swc1	$f14,64($sp)
    addiu	$v1,$v1,-9804
    addu	$gp,$t9,$v1
    # Line 3107
    # lw $t9, -25200($gp) # &__glTexParameterfv_size
    # Line 3105
    lw	$at,__glCurrentContext
    sd	$ra,32($sp)
    # Line 3107
    jal	__glTexParameterfv_size
    sd	$at,16($sp)
    li	$a2,1
    beq	$v0,$a2,.L0dbb0d44
    # Line 3108
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    ld	$a0,16($sp)
    # Line 3109
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb0d44:
    # Line 3111
    # lw $t9, -23192($gp) # &__gllc_TexParameterfv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __gllc_TexParameterfv
    addiu	$a2,$sp,64
    # Line 3112
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_TexParameterf

# Function: __gllc_TexParameterfv
# Declared: Line 3115 (Source lines: 3116-3138)
# Address: 0x0dbb0d68 - 0x0dbb0e58 (Size: 240 bytes, Frame: 224)
.globl __gllc_TexParameterfv
.ent __gllc_TexParameterfv
__gllc_TexParameterfv:
    # Line 3116
    move	$at,$a1
    addiu	$sp,$sp,-96
    sd	$s0,56($sp)
    # Line 3121
    lw	$s0,__glCurrentContext
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$gp,40($sp)
    # Line 3116
    lui	$v0,0x5
    addiu	$v0,$v0,-9936
    addu	$gp,$t9,$v0
    # Line 3123
    # lw $t9, -25200($gp) # &__glTexParameterfv_size
    sd	$a0,16($sp)
    sd	$ra,48($sp)
    jal	__glTexParameterfv_size
    move	$a0,$a1
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbb0e38
    sd	$a5,24($sp)
    # Line 3129
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$a5,8
    bnez	$v0,.L0dbb0de0
    sd	$v0,32($sp)
    # Line 3130
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb0de0:
    ld	$a2,24($sp)
    # Line 3135
    ld	$a1,0($sp)
    # Line 3131
    li	$a3,105
    # Line 3135
    # lw $t9, -17848($gp) # &memcpy
    ld	$a4,32($sp)
    # Line 3134
    ld	$a6,8($sp)
    # Line 3133
    ld	$a5,16($sp)
    # Line 3135
    addiu	$a0,$a4,24
    # Line 3134
    sw	$a6,20($a4)
    # Line 3133
    sw	$a5,16($a4)
    # Line 3135
    jal	memcpy
    # Line 3131
    sh	$a3,12($a4)
    # Line 3137
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,32($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_TexParameterfv
    # Line 3138
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb0e38:
    # Line 3125
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    # Line 3126
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_TexParameterfv

# Function: __gllc_TexParameteri
# Declared: Line 3141 (Source lines: 3142-3150)
# Address: 0x0dbb0e58 - 0x0dbb0edc (Size: 132 bytes, Frame: 208)
.globl __gllc_TexParameteri
.ent __gllc_TexParameteri
__gllc_TexParameteri:
    # Line 3142
    move	$v0,$a1
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    # Line 3145
    move	$a0,$a1
    sd	$gp,24($sp)
    # Line 3142
    lui	$v1,0x5
    sw	$a2,68($sp)
    addiu	$v1,$v1,-10176
    addu	$gp,$t9,$v1
    # Line 3145
    # lw $t9, -25196($gp) # &__glTexParameteriv_size
    # Line 3143
    lw	$at,__glCurrentContext
    sd	$ra,32($sp)
    # Line 3145
    jal	__glTexParameteriv_size
    sd	$at,16($sp)
    li	$a2,1
    beq	$v0,$a2,.L0dbb0eb8
    # Line 3146
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    ld	$a0,16($sp)
    # Line 3147
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb0eb8:
    # Line 3149
    # lw $t9, -23184($gp) # &__gllc_TexParameteriv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __gllc_TexParameteriv
    addiu	$a2,$sp,68
    # Line 3150
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_TexParameteri

# Function: __gllc_TexParameteriv
# Declared: Line 3153 (Source lines: 3154-3176)
# Address: 0x0dbb0edc - 0x0dbb0fcc (Size: 240 bytes, Frame: 224)
.globl __gllc_TexParameteriv
.ent __gllc_TexParameteriv
__gllc_TexParameteriv:
    # Line 3154
    move	$at,$a1
    addiu	$sp,$sp,-96
    sd	$s0,56($sp)
    # Line 3159
    lw	$s0,__glCurrentContext
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$gp,40($sp)
    # Line 3154
    lui	$v0,0x5
    addiu	$v0,$v0,-10308
    addu	$gp,$t9,$v0
    # Line 3161
    # lw $t9, -25196($gp) # &__glTexParameteriv_size
    sd	$a0,16($sp)
    sd	$ra,48($sp)
    jal	__glTexParameteriv_size
    move	$a0,$a1
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbb0fac
    sd	$a5,24($sp)
    # Line 3167
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$a5,8
    bnez	$v0,.L0dbb0f54
    sd	$v0,32($sp)
    # Line 3168
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb0f54:
    ld	$a2,24($sp)
    # Line 3173
    ld	$a1,0($sp)
    # Line 3169
    li	$a3,107
    # Line 3173
    # lw $t9, -17848($gp) # &memcpy
    ld	$a4,32($sp)
    # Line 3172
    ld	$a6,8($sp)
    # Line 3171
    ld	$a5,16($sp)
    # Line 3173
    addiu	$a0,$a4,24
    # Line 3172
    sw	$a6,20($a4)
    # Line 3171
    sw	$a5,16($a4)
    # Line 3173
    jal	memcpy
    # Line 3169
    sh	$a3,12($a4)
    # Line 3175
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,32($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_TexParameteriv
    # Line 3176
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb0fac:
    # Line 3163
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    # Line 3164
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_TexParameteriv

# Function: __gllc_TexEnvf
# Declared: Line 3181 (Source lines: 3182-3190)
# Address: 0x0dbb0fcc - 0x0dbb1050 (Size: 132 bytes, Frame: 208)
.globl __gllc_TexEnvf
.ent __gllc_TexEnvf
__gllc_TexEnvf:
    # Line 3182
    move	$v0,$a1
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    # Line 3185
    move	$a0,$a1
    sd	$gp,24($sp)
    # Line 3182
    lui	$v1,0x5
    swc1	$f14,64($sp)
    addiu	$v1,$v1,-10548
    addu	$gp,$t9,$v1
    # Line 3185
    # lw $t9, -25176($gp) # &__glTexEnvfv_size
    # Line 3183
    lw	$at,__glCurrentContext
    sd	$ra,32($sp)
    # Line 3185
    jal	__glTexEnvfv_size
    sd	$at,16($sp)
    li	$a2,1
    beq	$v0,$a2,.L0dbb102c
    # Line 3186
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    ld	$a0,16($sp)
    # Line 3187
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb102c:
    # Line 3189
    # lw $t9, -23176($gp) # &__gllc_TexEnvfv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __gllc_TexEnvfv
    addiu	$a2,$sp,64
    # Line 3190
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_TexEnvf

# Function: __gllc_TexEnvfv
# Declared: Line 3193 (Source lines: 3194-3216)
# Address: 0x0dbb1050 - 0x0dbb1140 (Size: 240 bytes, Frame: 224)
.globl __gllc_TexEnvfv
.ent __gllc_TexEnvfv
__gllc_TexEnvfv:
    # Line 3194
    move	$at,$a1
    addiu	$sp,$sp,-96
    sd	$s0,56($sp)
    # Line 3199
    lw	$s0,__glCurrentContext
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$gp,40($sp)
    # Line 3194
    lui	$v0,0x5
    addiu	$v0,$v0,-10680
    addu	$gp,$t9,$v0
    # Line 3201
    # lw $t9, -25176($gp) # &__glTexEnvfv_size
    sd	$a0,16($sp)
    sd	$ra,48($sp)
    jal	__glTexEnvfv_size
    move	$a0,$a1
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbb1120
    sd	$a5,24($sp)
    # Line 3207
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$a5,8
    bnez	$v0,.L0dbb10c8
    sd	$v0,32($sp)
    # Line 3208
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb10c8:
    ld	$a2,24($sp)
    # Line 3213
    ld	$a1,0($sp)
    # Line 3209
    li	$a3,111
    # Line 3213
    # lw $t9, -17848($gp) # &memcpy
    ld	$a4,32($sp)
    # Line 3212
    ld	$a6,8($sp)
    # Line 3211
    ld	$a5,16($sp)
    # Line 3213
    addiu	$a0,$a4,24
    # Line 3212
    sw	$a6,20($a4)
    # Line 3211
    sw	$a5,16($a4)
    # Line 3213
    jal	memcpy
    # Line 3209
    sh	$a3,12($a4)
    # Line 3215
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,32($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_TexEnvfv
    # Line 3216
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb1120:
    # Line 3203
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    # Line 3204
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_TexEnvfv

# Function: __gllc_TexEnvi
# Declared: Line 3219 (Source lines: 3220-3228)
# Address: 0x0dbb1140 - 0x0dbb11c4 (Size: 132 bytes, Frame: 208)
.globl __gllc_TexEnvi
.ent __gllc_TexEnvi
__gllc_TexEnvi:
    # Line 3220
    move	$v0,$a1
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    # Line 3223
    move	$a0,$a1
    sd	$gp,24($sp)
    # Line 3220
    lui	$v1,0x5
    sw	$a2,68($sp)
    addiu	$v1,$v1,-10920
    addu	$gp,$t9,$v1
    # Line 3223
    # lw $t9, -25172($gp) # &__glTexEnviv_size
    # Line 3221
    lw	$at,__glCurrentContext
    sd	$ra,32($sp)
    # Line 3223
    jal	__glTexEnviv_size
    sd	$at,16($sp)
    li	$a2,1
    beq	$v0,$a2,.L0dbb11a0
    # Line 3224
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    ld	$a0,16($sp)
    # Line 3225
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb11a0:
    # Line 3227
    # lw $t9, -23168($gp) # &__gllc_TexEnviv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __gllc_TexEnviv
    addiu	$a2,$sp,68
    # Line 3228
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_TexEnvi

# Function: __gllc_TexEnviv
# Declared: Line 3231 (Source lines: 3232-3254)
# Address: 0x0dbb11c4 - 0x0dbb12b4 (Size: 240 bytes, Frame: 224)
.globl __gllc_TexEnviv
.ent __gllc_TexEnviv
__gllc_TexEnviv:
    # Line 3232
    move	$at,$a1
    addiu	$sp,$sp,-96
    sd	$s0,56($sp)
    # Line 3237
    lw	$s0,__glCurrentContext
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$gp,40($sp)
    # Line 3232
    lui	$v0,0x5
    addiu	$v0,$v0,-11052
    addu	$gp,$t9,$v0
    # Line 3239
    # lw $t9, -25172($gp) # &__glTexEnviv_size
    sd	$a0,16($sp)
    sd	$ra,48($sp)
    jal	__glTexEnviv_size
    move	$a0,$a1
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbb1294
    sd	$a5,24($sp)
    # Line 3245
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$a5,8
    bnez	$v0,.L0dbb123c
    sd	$v0,32($sp)
    # Line 3246
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb123c:
    ld	$a2,24($sp)
    # Line 3251
    ld	$a1,0($sp)
    # Line 3247
    li	$a3,113
    # Line 3251
    # lw $t9, -17848($gp) # &memcpy
    ld	$a4,32($sp)
    # Line 3250
    ld	$a6,8($sp)
    # Line 3249
    ld	$a5,16($sp)
    # Line 3251
    addiu	$a0,$a4,24
    # Line 3250
    sw	$a6,20($a4)
    # Line 3249
    sw	$a5,16($a4)
    # Line 3251
    jal	memcpy
    # Line 3247
    sh	$a3,12($a4)
    # Line 3253
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,32($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_TexEnviv
    # Line 3254
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb1294:
    # Line 3241
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    # Line 3242
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_TexEnviv

# Function: __gllc_TexGend
# Declared: Line 3257 (Source lines: 3258-3266)
# Address: 0x0dbb12b4 - 0x0dbb1338 (Size: 132 bytes, Frame: 208)
.globl __gllc_TexGend
.ent __gllc_TexGend
__gllc_TexGend:
    # Line 3258
    move	$v0,$a1
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    # Line 3261
    move	$a0,$a1
    sd	$gp,24($sp)
    # Line 3258
    lui	$v1,0x5
    sdc1	$f14,64($sp)
    addiu	$v1,$v1,-11292
    addu	$gp,$t9,$v1
    # Line 3261
    # lw $t9, -25228($gp) # &__glTexGendv_size
    # Line 3259
    lw	$at,__glCurrentContext
    sd	$ra,32($sp)
    # Line 3261
    jal	__glTexGendv_size
    sd	$at,16($sp)
    li	$a2,1
    beq	$v0,$a2,.L0dbb1314
    # Line 3262
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    ld	$a0,16($sp)
    # Line 3263
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb1314:
    # Line 3265
    # lw $t9, -23160($gp) # &__gllc_TexGendv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __gllc_TexGendv
    addiu	$a2,$sp,64
    # Line 3266
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_TexGend

# Function: __gllc_TexGendv
# Declared: Line 3269 (Source lines: 3270-3293)
# Address: 0x0dbb1338 - 0x0dbb1430 (Size: 248 bytes, Frame: 224)
.globl __gllc_TexGendv
.ent __gllc_TexGendv
__gllc_TexGendv:
    # Line 3270
    move	$at,$a1
    addiu	$sp,$sp,-96
    sd	$s0,56($sp)
    # Line 3275
    lw	$s0,__glCurrentContext
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$gp,40($sp)
    # Line 3270
    lui	$v0,0x5
    addiu	$v0,$v0,-11424
    addu	$gp,$t9,$v0
    # Line 3277
    # lw $t9, -25228($gp) # &__glTexGendv_size
    sd	$a0,16($sp)
    sd	$ra,48($sp)
    jal	__glTexGendv_size
    move	$a0,$a1
    sll	$a5,$v0,0x3
    move	$v1,$a5
    bltz	$v0,.L0dbb1410
    sd	$a5,24($sp)
    # Line 3283
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$a5,8
    bnez	$v0,.L0dbb13b0
    sd	$v0,32($sp)
    # Line 3284
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb13b0:
    ld	$a2,24($sp)
    # Line 3290
    ld	$a1,0($sp)
    # Line 3285
    li	$a3,115
    # Line 3286
    li	$a5,1
    # Line 3290
    # lw $t9, -17848($gp) # &memcpy
    ld	$a4,32($sp)
    # Line 3289
    ld	$a7,8($sp)
    # Line 3288
    ld	$a6,16($sp)
    # Line 3290
    addiu	$a0,$a4,24
    # Line 3289
    sw	$a7,20($a4)
    # Line 3288
    sw	$a6,16($a4)
    # Line 3286
    sb	$a5,14($a4)
    # Line 3290
    jal	memcpy
    # Line 3285
    sh	$a3,12($a4)
    # Line 3292
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,32($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_TexGendv
    # Line 3293
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb1410:
    # Line 3279
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    # Line 3280
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_TexGendv

# Function: __gllc_TexGenf
# Declared: Line 3296 (Source lines: 3297-3305)
# Address: 0x0dbb1430 - 0x0dbb14b4 (Size: 132 bytes, Frame: 208)
.globl __gllc_TexGenf
.ent __gllc_TexGenf
__gllc_TexGenf:
    # Line 3297
    move	$v0,$a1
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    # Line 3300
    move	$a0,$a1
    sd	$gp,24($sp)
    # Line 3297
    lui	$v1,0x5
    swc1	$f14,64($sp)
    addiu	$v1,$v1,-11672
    addu	$gp,$t9,$v1
    # Line 3300
    # lw $t9, -25224($gp) # &__glTexGenfv_size
    # Line 3298
    lw	$at,__glCurrentContext
    sd	$ra,32($sp)
    # Line 3300
    jal	__glTexGenfv_size
    sd	$at,16($sp)
    li	$a2,1
    beq	$v0,$a2,.L0dbb1490
    # Line 3301
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    ld	$a0,16($sp)
    # Line 3302
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb1490:
    # Line 3304
    # lw $t9, -23152($gp) # &__gllc_TexGenfv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __gllc_TexGenfv
    addiu	$a2,$sp,64
    # Line 3305
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_TexGenf

# Function: __gllc_TexGenfv
# Declared: Line 3308 (Source lines: 3309-3331)
# Address: 0x0dbb14b4 - 0x0dbb15a4 (Size: 240 bytes, Frame: 224)
.globl __gllc_TexGenfv
.ent __gllc_TexGenfv
__gllc_TexGenfv:
    # Line 3309
    move	$at,$a1
    addiu	$sp,$sp,-96
    sd	$s0,56($sp)
    # Line 3314
    lw	$s0,__glCurrentContext
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$gp,40($sp)
    # Line 3309
    lui	$v0,0x5
    addiu	$v0,$v0,-11804
    addu	$gp,$t9,$v0
    # Line 3316
    # lw $t9, -25224($gp) # &__glTexGenfv_size
    sd	$a0,16($sp)
    sd	$ra,48($sp)
    jal	__glTexGenfv_size
    move	$a0,$a1
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbb1584
    sd	$a5,24($sp)
    # Line 3322
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$a5,8
    bnez	$v0,.L0dbb152c
    sd	$v0,32($sp)
    # Line 3323
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb152c:
    ld	$a2,24($sp)
    # Line 3328
    ld	$a1,0($sp)
    # Line 3324
    li	$a3,117
    # Line 3328
    # lw $t9, -17848($gp) # &memcpy
    ld	$a4,32($sp)
    # Line 3327
    ld	$a6,8($sp)
    # Line 3326
    ld	$a5,16($sp)
    # Line 3328
    addiu	$a0,$a4,24
    # Line 3327
    sw	$a6,20($a4)
    # Line 3326
    sw	$a5,16($a4)
    # Line 3328
    jal	memcpy
    # Line 3324
    sh	$a3,12($a4)
    # Line 3330
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,32($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_TexGenfv
    # Line 3331
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb1584:
    # Line 3318
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    # Line 3319
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_TexGenfv

# Function: __gllc_TexGeni
# Declared: Line 3334 (Source lines: 3335-3343)
# Address: 0x0dbb15a4 - 0x0dbb1628 (Size: 132 bytes, Frame: 208)
.globl __gllc_TexGeni
.ent __gllc_TexGeni
__gllc_TexGeni:
    # Line 3335
    move	$v0,$a1
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    # Line 3338
    move	$a0,$a1
    sd	$gp,24($sp)
    # Line 3335
    lui	$v1,0x5
    sw	$a2,68($sp)
    addiu	$v1,$v1,-12044
    addu	$gp,$t9,$v1
    # Line 3338
    # lw $t9, -25220($gp) # &__glTexGeniv_size
    # Line 3336
    lw	$at,__glCurrentContext
    sd	$ra,32($sp)
    # Line 3338
    jal	__glTexGeniv_size
    sd	$at,16($sp)
    li	$a2,1
    beq	$v0,$a2,.L0dbb1604
    # Line 3339
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    ld	$a0,16($sp)
    # Line 3340
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb1604:
    # Line 3342
    # lw $t9, -23144($gp) # &__gllc_TexGeniv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __gllc_TexGeniv
    addiu	$a2,$sp,68
    # Line 3343
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_TexGeni

# Function: __gllc_TexGeniv
# Declared: Line 3346 (Source lines: 3347-3369)
# Address: 0x0dbb1628 - 0x0dbb1718 (Size: 240 bytes, Frame: 224)
.globl __gllc_TexGeniv
.ent __gllc_TexGeniv
__gllc_TexGeniv:
    # Line 3347
    move	$at,$a1
    addiu	$sp,$sp,-96
    sd	$s0,56($sp)
    # Line 3352
    lw	$s0,__glCurrentContext
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$gp,40($sp)
    # Line 3347
    lui	$v0,0x5
    addiu	$v0,$v0,-12176
    addu	$gp,$t9,$v0
    # Line 3354
    # lw $t9, -25220($gp) # &__glTexGeniv_size
    sd	$a0,16($sp)
    sd	$ra,48($sp)
    jal	__glTexGeniv_size
    move	$a0,$a1
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbb16f8
    sd	$a5,24($sp)
    # Line 3360
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$a5,8
    bnez	$v0,.L0dbb16a0
    sd	$v0,32($sp)
    # Line 3361
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb16a0:
    ld	$a2,24($sp)
    # Line 3366
    ld	$a1,0($sp)
    # Line 3362
    li	$a3,119
    # Line 3366
    # lw $t9, -17848($gp) # &memcpy
    ld	$a4,32($sp)
    # Line 3365
    ld	$a6,8($sp)
    # Line 3364
    ld	$a5,16($sp)
    # Line 3366
    addiu	$a0,$a4,24
    # Line 3365
    sw	$a6,20($a4)
    # Line 3364
    sw	$a5,16($a4)
    # Line 3366
    jal	memcpy
    # Line 3362
    sh	$a3,12($a4)
    # Line 3368
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,32($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_TexGeniv
    # Line 3369
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb16f8:
    # Line 3356
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    # Line 3357
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_TexGeniv

# Function: __gllc_InitNames
# Declared: Line 3375 (Source lines: 3376-3384)
# Address: 0x0dbb1718 - 0x0dbb1784 (Size: 108 bytes, Frame: 32)
.globl __gllc_InitNames
.ent __gllc_InitNames
__gllc_InitNames:
    # Line 3380
    move	$a1,$zero
    # Line 3376
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x5
    addiu	$at,$at,-12416
    addu	$gp,$t9,$at
    # Line 3380
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 3378
    lw	$a0,__glCurrentContext
    sd	$ra,16($sp)
    # Line 3380
    jal	__glDlistAllocOp2
    sd	$a0,0($sp)
    bnez	$v0,.L0dbb1758
    # Line 3381
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0dbb1758:
    # Line 3383
    la	$a2,__glle_InitNames
    move	$a1,$v0
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    ld	$a0,0($sp)
    # Line 3382
    li	$v1,120
    # Line 3383
    jal	__glDlistAppendOp
    # Line 3382
    sh	$v1,12($v0)
    # Line 3384
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __gllc_InitNames

# Function: __gllc_LoadName
# Declared: Line 3387 (Source lines: 3388-3399)
# Address: 0x0dbb1784 - 0x0dbb1800 (Size: 124 bytes, Frame: 48)
.globl __gllc_LoadName
.ent __gllc_LoadName
__gllc_LoadName:
    # Line 3393
    li	$a1,4
    # Line 3388
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 3391
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 3388
    lui	$v0,0x5
    addiu	$v0,$v0,-12524
    addu	$gp,$t9,$v0
    # Line 3393
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb17cc
    # Line 3394
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb17cc:
    # Line 3398
    la	$a2,__glle_LoadName
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 3395
    li	$v1,121
    # Line 3398
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3397
    ld	$a3,0($sp)
    # Line 3395
    sh	$v1,12($v0)
    # Line 3398
    jal	__glDlistAppendOp
    # Line 3397
    sw	$a3,16($v0)
    # Line 3399
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_LoadName

# Function: __gllc_PassThrough
# Declared: Line 3402 (Source lines: 3403-3414)
# Address: 0x0dbb1800 - 0x0dbb1878 (Size: 120 bytes, Frame: 48)
.globl __gllc_PassThrough
.ent __gllc_PassThrough
__gllc_PassThrough:
    # Line 3408
    li	$a1,4
    # Line 3403
    addiu	$sp,$sp,-48
    sdc1	$f12,0($sp)
    sd	$gp,16($sp)
    lui	$at,0x5
    addiu	$at,$at,-12648
    addu	$gp,$t9,$at
    # Line 3408
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 3406
    lw	$a0,__glCurrentContext
    sd	$ra,24($sp)
    # Line 3408
    jal	__glDlistAllocOp2
    sd	$a0,8($sp)
    bnez	$v0,.L0dbb1844
    # Line 3409
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb1844:
    # Line 3413
    la	$a2,__glle_PassThrough
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 3410
    li	$v1,122
    # Line 3413
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3412
    ldc1	$f0,0($sp)
    # Line 3410
    sh	$v1,12($v0)
    # Line 3413
    jal	__glDlistAppendOp
    # Line 3412
    swc1	$f0,16($v0)
    # Line 3414
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_PassThrough

# Function: __gllc_PopName
# Declared: Line 3417 (Source lines: 3418-3426)
# Address: 0x0dbb1878 - 0x0dbb18e4 (Size: 108 bytes, Frame: 32)
.globl __gllc_PopName
.ent __gllc_PopName
__gllc_PopName:
    # Line 3422
    move	$a1,$zero
    # Line 3418
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x5
    addiu	$at,$at,-12768
    addu	$gp,$t9,$at
    # Line 3422
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 3420
    lw	$a0,__glCurrentContext
    sd	$ra,16($sp)
    # Line 3422
    jal	__glDlistAllocOp2
    sd	$a0,0($sp)
    bnez	$v0,.L0dbb18b8
    # Line 3423
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0dbb18b8:
    # Line 3425
    la	$a2,__glle_PopName
    move	$a1,$v0
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    ld	$a0,0($sp)
    # Line 3424
    li	$v1,123
    # Line 3425
    jal	__glDlistAppendOp
    # Line 3424
    sh	$v1,12($v0)
    # Line 3426
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __gllc_PopName

# Function: __gllc_PushName
# Declared: Line 3429 (Source lines: 3430-3441)
# Address: 0x0dbb18e4 - 0x0dbb1960 (Size: 124 bytes, Frame: 48)
.globl __gllc_PushName
.ent __gllc_PushName
__gllc_PushName:
    # Line 3435
    li	$a1,4
    # Line 3430
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 3433
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 3430
    lui	$v0,0x5
    addiu	$v0,$v0,-12876
    addu	$gp,$t9,$v0
    # Line 3435
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb192c
    # Line 3436
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb192c:
    # Line 3440
    la	$a2,__glle_PushName
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 3437
    li	$v1,124
    # Line 3440
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3439
    ld	$a3,0($sp)
    # Line 3437
    sh	$v1,12($v0)
    # Line 3440
    jal	__glDlistAppendOp
    # Line 3439
    sw	$a3,16($v0)
    # Line 3441
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_PushName

# Function: __gllc_DrawBuffer
# Declared: Line 3444 (Source lines: 3445-3456)
# Address: 0x0dbb1960 - 0x0dbb19dc (Size: 124 bytes, Frame: 48)
.globl __gllc_DrawBuffer
.ent __gllc_DrawBuffer
__gllc_DrawBuffer:
    # Line 3450
    li	$a1,4
    # Line 3445
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 3448
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 3445
    lui	$v0,0x5
    addiu	$v0,$v0,-13000
    addu	$gp,$t9,$v0
    # Line 3450
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb19a8
    # Line 3451
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb19a8:
    # Line 3455
    la	$a2,__glle_DrawBuffer
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 3452
    li	$v1,125
    # Line 3455
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3454
    ld	$a3,0($sp)
    # Line 3452
    sh	$v1,12($v0)
    # Line 3455
    jal	__glDlistAppendOp
    # Line 3454
    sw	$a3,16($v0)
    # Line 3456
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_DrawBuffer

# Function: __gllc_Clear
# Declared: Line 3459 (Source lines: 3460-3471)
# Address: 0x0dbb19dc - 0x0dbb1a58 (Size: 124 bytes, Frame: 48)
.globl __gllc_Clear
.ent __gllc_Clear
__gllc_Clear:
    # Line 3465
    li	$a1,4
    # Line 3460
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 3463
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 3460
    lui	$v0,0x5
    addiu	$v0,$v0,-13124
    addu	$gp,$t9,$v0
    # Line 3465
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb1a24
    # Line 3466
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb1a24:
    # Line 3470
    la	$a2,__glle_Clear
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 3467
    li	$v1,126
    # Line 3470
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3469
    ld	$a3,0($sp)
    # Line 3467
    sh	$v1,12($v0)
    # Line 3470
    jal	__glDlistAppendOp
    # Line 3469
    sw	$a3,16($v0)
    # Line 3471
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Clear

# Function: __gllc_ClearAccum
# Declared: Line 3474 (Source lines: 3475-3489)
# Address: 0x0dbb1a58 - 0x0dbb1af4 (Size: 156 bytes, Frame: 224)
.globl __gllc_ClearAccum
.ent __gllc_ClearAccum
__gllc_ClearAccum:
    # Line 3480
    li	$a1,16
    # Line 3475
    addiu	$sp,$sp,-96
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,40($sp)
    lui	$at,0x5
    addiu	$at,$at,-13248
    addu	$gp,$t9,$at
    # Line 3480
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 3478
    lw	$a0,__glCurrentContext
    sd	$ra,48($sp)
    # Line 3480
    jal	__glDlistAllocOp2
    sd	$a0,32($sp)
    bnez	$v0,.L0dbb1aa8
    # Line 3481
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb1aa8:
    # Line 3488
    la	$a2,__glle_ClearAccum
    move	$a1,$v0
    ld	$a0,32($sp)
    # Line 3482
    li	$v1,127
    sh	$v1,12($v0)
    # Line 3484
    ldc1	$f0,0($sp)
    # Line 3488
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3487
    ldc1	$f3,24($sp)
    # Line 3486
    ldc1	$f2,16($sp)
    # Line 3485
    ldc1	$f1,8($sp)
    # Line 3487
    swc1	$f3,28($v0)
    # Line 3486
    swc1	$f2,24($v0)
    # Line 3485
    swc1	$f1,20($v0)
    # Line 3488
    jal	__glDlistAppendOp
    # Line 3484
    swc1	$f0,16($v0)
    # Line 3489
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_ClearAccum

# Function: __gllc_ClearIndex
# Declared: Line 3492 (Source lines: 3493-3504)
# Address: 0x0dbb1af4 - 0x0dbb1b6c (Size: 120 bytes, Frame: 48)
.globl __gllc_ClearIndex
.ent __gllc_ClearIndex
__gllc_ClearIndex:
    # Line 3498
    li	$a1,4
    # Line 3493
    addiu	$sp,$sp,-48
    sdc1	$f12,0($sp)
    sd	$gp,16($sp)
    lui	$at,0x5
    addiu	$at,$at,-13404
    addu	$gp,$t9,$at
    # Line 3498
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 3496
    lw	$a0,__glCurrentContext
    sd	$ra,24($sp)
    # Line 3498
    jal	__glDlistAllocOp2
    sd	$a0,8($sp)
    bnez	$v0,.L0dbb1b38
    # Line 3499
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb1b38:
    # Line 3503
    la	$a2,__glle_ClearIndex
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 3500
    li	$v1,128
    # Line 3503
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3502
    ldc1	$f0,0($sp)
    # Line 3500
    sh	$v1,12($v0)
    # Line 3503
    jal	__glDlistAppendOp
    # Line 3502
    swc1	$f0,16($v0)
    # Line 3504
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_ClearIndex

# Function: __gllc_ClearColor
# Declared: Line 3507 (Source lines: 3508-3522)
# Address: 0x0dbb1b6c - 0x0dbb1c08 (Size: 156 bytes, Frame: 224)
.globl __gllc_ClearColor
.ent __gllc_ClearColor
__gllc_ClearColor:
    # Line 3513
    li	$a1,16
    # Line 3508
    addiu	$sp,$sp,-96
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,40($sp)
    lui	$at,0x5
    addiu	$at,$at,-13524
    addu	$gp,$t9,$at
    # Line 3513
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 3511
    lw	$a0,__glCurrentContext
    sd	$ra,48($sp)
    # Line 3513
    jal	__glDlistAllocOp2
    sd	$a0,32($sp)
    bnez	$v0,.L0dbb1bbc
    # Line 3514
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb1bbc:
    # Line 3521
    la	$a2,__glle_ClearColor
    move	$a1,$v0
    ld	$a0,32($sp)
    # Line 3515
    li	$v1,129
    sh	$v1,12($v0)
    # Line 3517
    ldc1	$f0,0($sp)
    # Line 3521
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3520
    ldc1	$f3,24($sp)
    # Line 3519
    ldc1	$f2,16($sp)
    # Line 3518
    ldc1	$f1,8($sp)
    # Line 3520
    swc1	$f3,28($v0)
    # Line 3519
    swc1	$f2,24($v0)
    # Line 3518
    swc1	$f1,20($v0)
    # Line 3521
    jal	__glDlistAppendOp
    # Line 3517
    swc1	$f0,16($v0)
    # Line 3522
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_ClearColor

# Function: __gllc_ClearStencil
# Declared: Line 3525 (Source lines: 3526-3537)
# Address: 0x0dbb1c08 - 0x0dbb1c84 (Size: 124 bytes, Frame: 48)
.globl __gllc_ClearStencil
.ent __gllc_ClearStencil
__gllc_ClearStencil:
    # Line 3531
    li	$a1,4
    # Line 3526
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 3529
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 3526
    lui	$v0,0x5
    addiu	$v0,$v0,-13680
    addu	$gp,$t9,$v0
    # Line 3531
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb1c50
    # Line 3532
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb1c50:
    # Line 3536
    la	$a2,__glle_ClearStencil
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 3533
    li	$v1,130
    # Line 3536
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3535
    ld	$a3,0($sp)
    # Line 3533
    sh	$v1,12($v0)
    # Line 3536
    jal	__glDlistAppendOp
    # Line 3535
    sw	$a3,16($v0)
    # Line 3537
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_ClearStencil

# Function: __gllc_ClearDepth
# Declared: Line 3540 (Source lines: 3541-3553)
# Address: 0x0dbb1c84 - 0x0dbb1d04 (Size: 128 bytes, Frame: 48)
.globl __gllc_ClearDepth
.ent __gllc_ClearDepth
__gllc_ClearDepth:
    # Line 3546
    li	$a1,8
    # Line 3541
    addiu	$sp,$sp,-48
    sdc1	$f12,0($sp)
    sd	$gp,16($sp)
    lui	$at,0x5
    addiu	$at,$at,-13804
    addu	$gp,$t9,$at
    # Line 3546
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 3544
    lw	$a0,__glCurrentContext
    sd	$ra,24($sp)
    # Line 3546
    jal	__glDlistAllocOp2
    sd	$a0,8($sp)
    bnez	$v0,.L0dbb1cc8
    # Line 3547
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb1cc8:
    # Line 3552
    la	$a2,__glle_ClearDepth
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 3548
    li	$v1,131
    # Line 3549
    li	$a3,1
    sb	$a3,14($v0)
    # Line 3552
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3551
    ldc1	$f0,0($sp)
    # Line 3548
    sh	$v1,12($v0)
    # Line 3552
    jal	__glDlistAppendOp
    # Line 3551
    sdc1	$f0,16($v0)
    # Line 3553
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_ClearDepth

# Function: __gllc_StencilMask
# Declared: Line 3556 (Source lines: 3557-3568)
# Address: 0x0dbb1d04 - 0x0dbb1d80 (Size: 124 bytes, Frame: 48)
.globl __gllc_StencilMask
.ent __gllc_StencilMask
__gllc_StencilMask:
    # Line 3562
    li	$a1,4
    # Line 3557
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 3560
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 3557
    lui	$v0,0x5
    addiu	$v0,$v0,-13932
    addu	$gp,$t9,$v0
    # Line 3562
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb1d4c
    # Line 3563
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb1d4c:
    # Line 3567
    la	$a2,__glle_StencilMask
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 3564
    li	$v1,132
    # Line 3567
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3566
    ld	$a3,0($sp)
    # Line 3564
    sh	$v1,12($v0)
    # Line 3567
    jal	__glDlistAppendOp
    # Line 3566
    sw	$a3,16($v0)
    # Line 3568
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_StencilMask

# Function: __gllc_ColorMask
# Declared: Line 3571 (Source lines: 3572-3586)
# Address: 0x0dbb1d80 - 0x0dbb1e20 (Size: 160 bytes, Frame: 224)
.globl __gllc_ColorMask
.ent __gllc_ColorMask
__gllc_ColorMask:
    # Line 3572
    addiu	$sp,$sp,-96
    sd	$a1,24($sp)
    # Line 3577
    li	$a1,4
    sd	$a3,16($sp)
    sd	$a2,32($sp)
    sd	$a0,0($sp)
    # Line 3575
    lw	$at,__glCurrentContext
    sd	$gp,40($sp)
    # Line 3572
    lui	$v0,0x5
    addiu	$v0,$v0,-14056
    addu	$gp,$t9,$v0
    # Line 3577
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,48($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb1dd4
    # Line 3578
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb1dd4:
    # Line 3585
    la	$a2,__glle_ColorMask
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 3579
    li	$v1,133
    sh	$v1,12($v0)
    # Line 3581
    ld	$a3,0($sp)
    # Line 3585
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3584
    ld	$a6,16($sp)
    # Line 3583
    ld	$a5,32($sp)
    # Line 3582
    ld	$a4,24($sp)
    # Line 3584
    sb	$a6,19($v0)
    # Line 3583
    sb	$a5,18($v0)
    # Line 3582
    sb	$a4,17($v0)
    # Line 3585
    jal	__glDlistAppendOp
    # Line 3581
    sb	$a3,16($v0)
    # Line 3586
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_ColorMask

# Function: __gllc_DepthMask
# Declared: Line 3589 (Source lines: 3590-3601)
# Address: 0x0dbb1e20 - 0x0dbb1e9c (Size: 124 bytes, Frame: 48)
.globl __gllc_DepthMask
.ent __gllc_DepthMask
__gllc_DepthMask:
    # Line 3595
    li	$a1,4
    # Line 3590
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 3593
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 3590
    lui	$v0,0x5
    addiu	$v0,$v0,-14216
    addu	$gp,$t9,$v0
    # Line 3595
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb1e68
    # Line 3596
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb1e68:
    # Line 3600
    la	$a2,__glle_DepthMask
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 3597
    li	$v1,134
    # Line 3600
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3599
    ld	$a3,0($sp)
    # Line 3597
    sh	$v1,12($v0)
    # Line 3600
    jal	__glDlistAppendOp
    # Line 3599
    sb	$a3,16($v0)
    # Line 3601
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_DepthMask

# Function: __gllc_IndexMask
# Declared: Line 3604 (Source lines: 3605-3616)
# Address: 0x0dbb1e9c - 0x0dbb1f18 (Size: 124 bytes, Frame: 48)
.globl __gllc_IndexMask
.ent __gllc_IndexMask
__gllc_IndexMask:
    # Line 3610
    li	$a1,4
    # Line 3605
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 3608
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 3605
    lui	$v0,0x5
    addiu	$v0,$v0,-14340
    addu	$gp,$t9,$v0
    # Line 3610
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb1ee4
    # Line 3611
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb1ee4:
    # Line 3615
    la	$a2,__glle_IndexMask
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 3612
    li	$v1,135
    # Line 3615
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3614
    ld	$a3,0($sp)
    # Line 3612
    sh	$v1,12($v0)
    # Line 3615
    jal	__glDlistAppendOp
    # Line 3614
    sw	$a3,16($v0)
    # Line 3616
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_IndexMask

# Function: __gllc_Accum
# Declared: Line 3619 (Source lines: 3620-3632)
# Address: 0x0dbb1f18 - 0x0dbb1fa0 (Size: 136 bytes, Frame: 192)
.globl __gllc_Accum
.ent __gllc_Accum
__gllc_Accum:
    # Line 3625
    li	$a1,8
    # Line 3620
    addiu	$sp,$sp,-64
    sdc1	$f13,0($sp)
    sd	$a0,8($sp)
    # Line 3623
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 3620
    lui	$v0,0x5
    addiu	$v0,$v0,-14464
    addu	$gp,$t9,$v0
    # Line 3625
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb1f64
    # Line 3626
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbb1f64:
    # Line 3631
    la	$a2,__glle_Accum
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 3627
    li	$v1,136
    sh	$v1,12($v0)
    # Line 3630
    ldc1	$f0,0($sp)
    # Line 3631
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3629
    ld	$a3,8($sp)
    # Line 3630
    swc1	$f0,20($v0)
    # Line 3631
    jal	__glDlistAppendOp
    # Line 3629
    sw	$a3,16($v0)
    # Line 3632
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_Accum

# Function: __gllc_PopAttrib
# Declared: Line 3639 (Source lines: 3640-3648)
# Address: 0x0dbb1fa0 - 0x0dbb200c (Size: 108 bytes, Frame: 32)
.globl __gllc_PopAttrib
.ent __gllc_PopAttrib
__gllc_PopAttrib:
    # Line 3644
    move	$a1,$zero
    # Line 3640
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x5
    addiu	$at,$at,-14600
    addu	$gp,$t9,$at
    # Line 3644
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 3642
    lw	$a0,__glCurrentContext
    sd	$ra,16($sp)
    # Line 3644
    jal	__glDlistAllocOp2
    sd	$a0,0($sp)
    bnez	$v0,.L0dbb1fe0
    # Line 3645
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0dbb1fe0:
    # Line 3647
    la	$a2,__glle_PopAttrib
    move	$a1,$v0
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    ld	$a0,0($sp)
    # Line 3646
    li	$v1,139
    # Line 3647
    jal	__glDlistAppendOp
    # Line 3646
    sh	$v1,12($v0)
    # Line 3648
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __gllc_PopAttrib

# Function: __gllc_PushAttrib
# Declared: Line 3651 (Source lines: 3652-3663)
# Address: 0x0dbb200c - 0x0dbb2088 (Size: 124 bytes, Frame: 48)
.globl __gllc_PushAttrib
.ent __gllc_PushAttrib
__gllc_PushAttrib:
    # Line 3657
    li	$a1,4
    # Line 3652
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 3655
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 3652
    lui	$v0,0x5
    addiu	$v0,$v0,-14708
    addu	$gp,$t9,$v0
    # Line 3657
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb2054
    # Line 3658
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb2054:
    # Line 3662
    la	$a2,__glle_PushAttrib
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 3659
    li	$v1,140
    # Line 3662
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3661
    ld	$a3,0($sp)
    # Line 3659
    sh	$v1,12($v0)
    # Line 3662
    jal	__glDlistAppendOp
    # Line 3661
    sw	$a3,16($v0)
    # Line 3663
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_PushAttrib

# Function: __gllc_MapGrid1d
# Declared: Line 3670 (Source lines: 3671-3685)
# Address: 0x0dbb2088 - 0x0dbb2124 (Size: 156 bytes, Frame: 208)
.globl __gllc_MapGrid1d
.ent __gllc_MapGrid1d
__gllc_MapGrid1d:
    # Line 3676
    li	$a1,24
    # Line 3671
    addiu	$sp,$sp,-80
    sdc1	$f14,8($sp)
    sdc1	$f13,0($sp)
    sd	$a0,16($sp)
    # Line 3674
    lw	$at,__glCurrentContext
    sd	$gp,32($sp)
    # Line 3671
    lui	$v0,0x5
    addiu	$v0,$v0,-14832
    addu	$gp,$t9,$v0
    # Line 3676
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,40($sp)
    sd	$at,24($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb20d8
    # Line 3677
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb20d8:
    # Line 3684
    la	$a2,__glle_MapGrid1d
    move	$a1,$v0
    ld	$a0,24($sp)
    # Line 3678
    li	$v1,145
    # Line 3679
    li	$a3,1
    sb	$a3,14($v0)
    # Line 3678
    sh	$v1,12($v0)
    # Line 3681
    ld	$a4,16($sp)
    # Line 3683
    ldc1	$f1,8($sp)
    # Line 3682
    ldc1	$f0,0($sp)
    # Line 3684
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3683
    sdc1	$f1,24($v0)
    # Line 3682
    sdc1	$f0,16($v0)
    # Line 3684
    jal	__glDlistAppendOp
    # Line 3681
    sw	$a4,32($v0)
    # Line 3685
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_MapGrid1d

# Function: __gllc_MapGrid1f
# Declared: Line 3688 (Source lines: 3689-3702)
# Address: 0x0dbb2124 - 0x0dbb21b8 (Size: 148 bytes, Frame: 208)
.globl __gllc_MapGrid1f
.ent __gllc_MapGrid1f
__gllc_MapGrid1f:
    # Line 3694
    li	$a1,12
    # Line 3689
    addiu	$sp,$sp,-80
    sdc1	$f14,8($sp)
    sdc1	$f13,0($sp)
    sd	$a0,16($sp)
    # Line 3692
    lw	$at,__glCurrentContext
    sd	$gp,32($sp)
    # Line 3689
    lui	$v0,0x5
    addiu	$v0,$v0,-14988
    addu	$gp,$t9,$v0
    # Line 3694
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,40($sp)
    sd	$at,24($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb2174
    # Line 3695
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb2174:
    # Line 3701
    la	$a2,__glle_MapGrid1f
    move	$a1,$v0
    ld	$a0,24($sp)
    # Line 3696
    li	$v1,146
    sh	$v1,12($v0)
    # Line 3698
    ld	$a3,16($sp)
    # Line 3700
    ldc1	$f1,8($sp)
    # Line 3699
    ldc1	$f0,0($sp)
    # Line 3701
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3700
    swc1	$f1,24($v0)
    # Line 3699
    swc1	$f0,20($v0)
    # Line 3701
    jal	__glDlistAppendOp
    # Line 3698
    sw	$a3,16($v0)
    # Line 3702
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_MapGrid1f

# Function: __gllc_MapGrid2d
# Declared: Line 3705 (Source lines: 3706-3723)
# Address: 0x0dbb21b8 - 0x0dbb2278 (Size: 192 bytes, Frame: 128)
.globl __gllc_MapGrid2d
.ent __gllc_MapGrid2d
__gllc_MapGrid2d:
    # Line 3711
    li	$a1,40
    # Line 3706
    addiu	$sp,$sp,-128
    sdc1	$f17,24($sp)
    sdc1	$f16,16($sp)
    sd	$a3,40($sp)
    sdc1	$f14,8($sp)
    sdc1	$f13,0($sp)
    sd	$a0,32($sp)
    # Line 3709
    lw	$at,__glCurrentContext
    sd	$gp,56($sp)
    # Line 3706
    lui	$v0,0x5
    addiu	$v0,$v0,-15136
    addu	$gp,$t9,$v0
    # Line 3711
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,64($sp)
    sd	$at,48($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb2214
    # Line 3712
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dbb2214:
    # Line 3722
    la	$a2,__glle_MapGrid2d
    move	$a1,$v0
    ld	$a0,48($sp)
    # Line 3713
    li	$v1,147
    # Line 3714
    li	$a3,1
    sb	$a3,14($v0)
    # Line 3713
    sh	$v1,12($v0)
    # Line 3716
    ld	$a4,32($sp)
    # Line 3722
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3717
    ldc1	$f0,0($sp)
    # Line 3718
    ldc1	$f1,8($sp)
    # Line 3721
    ldc1	$f3,24($sp)
    # Line 3720
    ldc1	$f2,16($sp)
    # Line 3719
    ld	$a5,40($sp)
    # Line 3721
    sdc1	$f3,40($v0)
    # Line 3720
    sdc1	$f2,32($v0)
    # Line 3719
    sw	$a5,52($v0)
    # Line 3718
    sdc1	$f1,24($v0)
    # Line 3717
    sdc1	$f0,16($v0)
    # Line 3722
    jal	__glDlistAppendOp
    # Line 3716
    sw	$a4,48($v0)
    # Line 3723
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __gllc_MapGrid2d

# Function: __gllc_MapGrid2f
# Declared: Line 3726 (Source lines: 3727-3743)
# Address: 0x0dbb2278 - 0x0dbb2330 (Size: 184 bytes, Frame: 128)
.globl __gllc_MapGrid2f
.ent __gllc_MapGrid2f
__gllc_MapGrid2f:
    # Line 3732
    li	$a1,24
    # Line 3727
    addiu	$sp,$sp,-128
    sdc1	$f17,24($sp)
    sdc1	$f16,16($sp)
    sd	$a3,40($sp)
    sdc1	$f14,8($sp)
    sdc1	$f13,0($sp)
    sd	$a0,32($sp)
    # Line 3730
    lw	$at,__glCurrentContext
    sd	$gp,56($sp)
    # Line 3727
    lui	$v0,0x5
    addiu	$v0,$v0,-15328
    addu	$gp,$t9,$v0
    # Line 3732
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,64($sp)
    sd	$at,48($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb22d4
    # Line 3733
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dbb22d4:
    # Line 3742
    la	$a2,__glle_MapGrid2f
    move	$a1,$v0
    ld	$a0,48($sp)
    # Line 3734
    li	$v1,148
    sh	$v1,12($v0)
    # Line 3736
    ld	$a3,32($sp)
    # Line 3742
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3737
    ldc1	$f0,0($sp)
    # Line 3738
    ldc1	$f1,8($sp)
    # Line 3741
    ldc1	$f3,24($sp)
    # Line 3740
    ldc1	$f2,16($sp)
    # Line 3739
    ld	$a4,40($sp)
    # Line 3741
    swc1	$f3,36($v0)
    # Line 3740
    swc1	$f2,32($v0)
    # Line 3739
    sw	$a4,28($v0)
    # Line 3738
    swc1	$f1,24($v0)
    # Line 3737
    swc1	$f0,20($v0)
    # Line 3742
    jal	__glDlistAppendOp
    # Line 3736
    sw	$a3,16($v0)
    # Line 3743
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __gllc_MapGrid2f

# Function: __gllc_EvalCoord1d
# Declared: Line 3746 (Source lines: 3747-3759)
# Address: 0x0dbb2330 - 0x0dbb23b0 (Size: 128 bytes, Frame: 48)
.globl __gllc_EvalCoord1d
.ent __gllc_EvalCoord1d
__gllc_EvalCoord1d:
    # Line 3752
    li	$a1,8
    # Line 3747
    addiu	$sp,$sp,-48
    sdc1	$f12,0($sp)
    sd	$gp,16($sp)
    lui	$at,0x5
    addiu	$at,$at,-15512
    addu	$gp,$t9,$at
    # Line 3752
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 3750
    lw	$a0,__glCurrentContext
    sd	$ra,24($sp)
    # Line 3752
    jal	__glDlistAllocOp2
    sd	$a0,8($sp)
    bnez	$v0,.L0dbb2374
    # Line 3753
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb2374:
    # Line 3758
    la	$a2,__glle_EvalCoord1dv
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 3754
    li	$v1,149
    # Line 3755
    li	$a3,1
    sb	$a3,14($v0)
    # Line 3758
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3757
    ldc1	$f0,0($sp)
    # Line 3754
    sh	$v1,12($v0)
    # Line 3758
    jal	__glDlistAppendOp
    # Line 3757
    sdc1	$f0,16($v0)
    # Line 3759
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_EvalCoord1d

# Function: __gllc_EvalCoord1dv
# Declared: Line 3762 (Source lines: 3763-3775)
# Address: 0x0dbb23b0 - 0x0dbb2438 (Size: 136 bytes, Frame: 48)
.globl __gllc_EvalCoord1dv
.ent __gllc_EvalCoord1dv
__gllc_EvalCoord1dv:
    # Line 3768
    li	$a1,8
    # Line 3763
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 3766
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 3763
    lui	$v0,0x5
    addiu	$v0,$v0,-15640
    addu	$gp,$t9,$v0
    # Line 3768
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb23f8
    # Line 3769
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb23f8:
    # Line 3774
    la	$a2,__glle_EvalCoord1dv
    move	$a1,$v0
    # Line 3773
    ld	$v1,0($sp)
    # Line 3770
    li	$a3,149
    # Line 3771
    li	$a0,1
    sb	$a0,14($v0)
    # Line 3770
    sh	$a3,12($v0)
    # Line 3774
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3773
    ldc1	$f0,0($v1)
    # Line 3774
    ld	$a0,8($sp)
    jal	__glDlistAppendOp
    # Line 3773
    sdc1	$f0,16($v0)
    # Line 3775
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_EvalCoord1dv

# Function: __gllc_EvalCoord1f
# Declared: Line 3778 (Source lines: 3779-3790)
# Address: 0x0dbb2438 - 0x0dbb24b0 (Size: 120 bytes, Frame: 48)
.globl __gllc_EvalCoord1f
.ent __gllc_EvalCoord1f
__gllc_EvalCoord1f:
    # Line 3784
    li	$a1,4
    # Line 3779
    addiu	$sp,$sp,-48
    sdc1	$f12,0($sp)
    sd	$gp,16($sp)
    lui	$at,0x5
    addiu	$at,$at,-15776
    addu	$gp,$t9,$at
    # Line 3784
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 3782
    lw	$a0,__glCurrentContext
    sd	$ra,24($sp)
    # Line 3784
    jal	__glDlistAllocOp2
    sd	$a0,8($sp)
    bnez	$v0,.L0dbb247c
    # Line 3785
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb247c:
    # Line 3789
    la	$a2,__glle_EvalCoord1fv
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 3786
    li	$v1,150
    # Line 3789
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3788
    ldc1	$f0,0($sp)
    # Line 3786
    sh	$v1,12($v0)
    # Line 3789
    jal	__glDlistAppendOp
    # Line 3788
    swc1	$f0,16($v0)
    # Line 3790
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_EvalCoord1f

# Function: __gllc_EvalCoord1fv
# Declared: Line 3793 (Source lines: 3794-3805)
# Address: 0x0dbb24b0 - 0x0dbb2530 (Size: 128 bytes, Frame: 48)
.globl __gllc_EvalCoord1fv
.ent __gllc_EvalCoord1fv
__gllc_EvalCoord1fv:
    # Line 3799
    li	$a1,4
    # Line 3794
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 3797
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 3794
    lui	$v0,0x5
    addiu	$v0,$v0,-15896
    addu	$gp,$t9,$v0
    # Line 3799
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb24f8
    # Line 3800
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb24f8:
    # Line 3804
    la	$a2,__glle_EvalCoord1fv
    move	$a1,$v0
    # Line 3803
    ld	$v1,0($sp)
    # Line 3801
    li	$a0,150
    sh	$a0,12($v0)
    # Line 3804
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3803
    lwc1	$f0,0($v1)
    # Line 3804
    ld	$a0,8($sp)
    jal	__glDlistAppendOp
    # Line 3803
    swc1	$f0,16($v0)
    # Line 3805
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_EvalCoord1fv

# Function: __gllc_EvalCoord2d
# Declared: Line 3808 (Source lines: 3809-3822)
# Address: 0x0dbb2530 - 0x0dbb25bc (Size: 140 bytes, Frame: 192)
.globl __gllc_EvalCoord2d
.ent __gllc_EvalCoord2d
__gllc_EvalCoord2d:
    # Line 3814
    li	$a1,16
    # Line 3809
    addiu	$sp,$sp,-64
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,24($sp)
    lui	$at,0x5
    addiu	$at,$at,-16024
    addu	$gp,$t9,$at
    # Line 3814
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 3812
    lw	$a0,__glCurrentContext
    sd	$ra,32($sp)
    # Line 3814
    jal	__glDlistAllocOp2
    sd	$a0,16($sp)
    bnez	$v0,.L0dbb2578
    # Line 3815
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbb2578:
    # Line 3821
    la	$a2,__glle_EvalCoord2dv
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 3816
    li	$v1,151
    # Line 3817
    li	$a3,1
    sb	$a3,14($v0)
    # Line 3816
    sh	$v1,12($v0)
    # Line 3820
    ldc1	$f1,8($sp)
    # Line 3821
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3819
    ldc1	$f0,0($sp)
    # Line 3820
    sdc1	$f1,24($v0)
    # Line 3821
    jal	__glDlistAppendOp
    # Line 3819
    sdc1	$f0,16($v0)
    # Line 3822
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_EvalCoord2d

# Function: __gllc_EvalCoord2dv
# Declared: Line 3825 (Source lines: 3826-3839)
# Address: 0x0dbb25bc - 0x0dbb264c (Size: 144 bytes, Frame: 48)
.globl __gllc_EvalCoord2dv
.ent __gllc_EvalCoord2dv
__gllc_EvalCoord2dv:
    # Line 3831
    li	$a1,16
    # Line 3826
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 3829
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 3826
    lui	$v0,0x5
    addiu	$v0,$v0,-16164
    addu	$gp,$t9,$v0
    # Line 3831
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb2604
    # Line 3832
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb2604:
    # Line 3836
    ld	$v1,0($sp)
    # Line 3833
    li	$a1,151
    # Line 3834
    li	$a0,1
    sb	$a0,14($v0)
    # Line 3833
    sh	$a1,12($v0)
    # Line 3836
    ldc1	$f1,0($v1)
    # Line 3838
    la	$a2,__glle_EvalCoord2dv
    move	$a1,$v0
    # Line 3836
    sdc1	$f1,16($v0)
    # Line 3838
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3837
    ldc1	$f0,8($v1)
    # Line 3838
    ld	$a0,8($sp)
    jal	__glDlistAppendOp
    # Line 3837
    sdc1	$f0,24($v0)
    # Line 3839
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_EvalCoord2dv

# Function: __gllc_EvalCoord2f
# Declared: Line 3842 (Source lines: 3843-3855)
# Address: 0x0dbb264c - 0x0dbb26d0 (Size: 132 bytes, Frame: 192)
.globl __gllc_EvalCoord2f
.ent __gllc_EvalCoord2f
__gllc_EvalCoord2f:
    # Line 3848
    li	$a1,8
    # Line 3843
    addiu	$sp,$sp,-64
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,24($sp)
    lui	$at,0x5
    addiu	$at,$at,-16308
    addu	$gp,$t9,$at
    # Line 3848
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 3846
    lw	$a0,__glCurrentContext
    sd	$ra,32($sp)
    # Line 3848
    jal	__glDlistAllocOp2
    sd	$a0,16($sp)
    bnez	$v0,.L0dbb2694
    # Line 3849
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbb2694:
    # Line 3854
    la	$a2,__glle_EvalCoord2fv
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 3850
    li	$v1,152
    sh	$v1,12($v0)
    # Line 3853
    ldc1	$f1,8($sp)
    # Line 3854
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3852
    ldc1	$f0,0($sp)
    # Line 3853
    swc1	$f1,20($v0)
    # Line 3854
    jal	__glDlistAppendOp
    # Line 3852
    swc1	$f0,16($v0)
    # Line 3855
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_EvalCoord2f

# Function: __gllc_EvalCoord2fv
# Declared: Line 3858 (Source lines: 3859-3871)
# Address: 0x0dbb26d0 - 0x0dbb2758 (Size: 136 bytes, Frame: 48)
.globl __gllc_EvalCoord2fv
.ent __gllc_EvalCoord2fv
__gllc_EvalCoord2fv:
    # Line 3864
    li	$a1,8
    # Line 3859
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 3862
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 3859
    lui	$v0,0x5
    addiu	$v0,$v0,-16440
    addu	$gp,$t9,$v0
    # Line 3864
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb2718
    # Line 3865
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb2718:
    # Line 3868
    ld	$v1,0($sp)
    # Line 3866
    li	$a0,152
    sh	$a0,12($v0)
    # Line 3868
    lwc1	$f1,0($v1)
    # Line 3870
    la	$a2,__glle_EvalCoord2fv
    move	$a1,$v0
    # Line 3868
    swc1	$f1,16($v0)
    # Line 3870
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3869
    lwc1	$f0,4($v1)
    # Line 3870
    ld	$a0,8($sp)
    jal	__glDlistAppendOp
    # Line 3869
    swc1	$f0,20($v0)
    # Line 3871
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_EvalCoord2fv

# Function: __gllc_EvalMesh1
# Declared: Line 3874 (Source lines: 3875-3888)
# Address: 0x0dbb2758 - 0x0dbb27ec (Size: 148 bytes, Frame: 208)
.globl __gllc_EvalMesh1
.ent __gllc_EvalMesh1
__gllc_EvalMesh1:
    # Line 3875
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 3880
    li	$a1,12
    sd	$a2,24($sp)
    sd	$a0,0($sp)
    # Line 3878
    lw	$at,__glCurrentContext
    sd	$gp,32($sp)
    # Line 3875
    lui	$v0,0x5
    addiu	$v0,$v0,-16576
    addu	$gp,$t9,$v0
    # Line 3880
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,40($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb27a8
    # Line 3881
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb27a8:
    # Line 3887
    la	$a2,__glle_EvalMesh1
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 3882
    li	$v1,153
    sh	$v1,12($v0)
    # Line 3884
    ld	$a3,0($sp)
    # Line 3886
    ld	$a5,24($sp)
    # Line 3885
    ld	$a4,16($sp)
    # Line 3887
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3886
    sw	$a5,24($v0)
    # Line 3885
    sw	$a4,20($v0)
    # Line 3887
    jal	__glDlistAppendOp
    # Line 3884
    sw	$a3,16($v0)
    # Line 3888
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_EvalMesh1

# Function: __gllc_EvalPoint1
# Declared: Line 3891 (Source lines: 3892-3903)
# Address: 0x0dbb27ec - 0x0dbb2868 (Size: 124 bytes, Frame: 48)
.globl __gllc_EvalPoint1
.ent __gllc_EvalPoint1
__gllc_EvalPoint1:
    # Line 3897
    li	$a1,4
    # Line 3892
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 3895
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 3892
    lui	$v0,0x5
    addiu	$v0,$v0,-16724
    addu	$gp,$t9,$v0
    # Line 3897
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb2834
    # Line 3898
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb2834:
    # Line 3902
    la	$a2,__glle_EvalPoint1
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 3899
    li	$v1,154
    # Line 3902
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3901
    ld	$a3,0($sp)
    # Line 3899
    sh	$v1,12($v0)
    # Line 3902
    jal	__glDlistAppendOp
    # Line 3901
    sw	$a3,16($v0)
    # Line 3903
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_EvalPoint1

# Function: __gllc_EvalMesh2
# Declared: Line 3906 (Source lines: 3907-3922)
# Address: 0x0dbb2868 - 0x0dbb2914 (Size: 172 bytes, Frame: 240)
.globl __gllc_EvalMesh2
.ent __gllc_EvalMesh2
__gllc_EvalMesh2:
    # Line 3907
    addiu	$sp,$sp,-112
    sd	$a1,32($sp)
    # Line 3912
    li	$a1,20
    sd	$a4,8($sp)
    sd	$a3,24($sp)
    sd	$a2,40($sp)
    sd	$a0,0($sp)
    # Line 3910
    lw	$at,__glCurrentContext
    sd	$gp,48($sp)
    # Line 3907
    lui	$v0,0x5
    addiu	$v0,$v0,-16848
    addu	$gp,$t9,$v0
    # Line 3912
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,56($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb28c0
    # Line 3913
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dbb28c0:
    # Line 3921
    la	$a2,__glle_EvalMesh2
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 3914
    li	$v1,155
    sh	$v1,12($v0)
    # Line 3916
    ld	$a3,0($sp)
    # Line 3921
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3917
    ld	$a4,32($sp)
    # Line 3920
    ld	$a7,8($sp)
    # Line 3919
    ld	$a6,24($sp)
    # Line 3918
    ld	$a5,40($sp)
    # Line 3920
    sw	$a7,32($v0)
    # Line 3919
    sw	$a6,28($v0)
    # Line 3918
    sw	$a5,24($v0)
    # Line 3917
    sw	$a4,20($v0)
    # Line 3921
    jal	__glDlistAppendOp
    # Line 3916
    sw	$a3,16($v0)
    # Line 3922
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __gllc_EvalMesh2

# Function: __gllc_EvalPoint2
# Declared: Line 3925 (Source lines: 3926-3938)
# Address: 0x0dbb2914 - 0x0dbb299c (Size: 136 bytes, Frame: 192)
.globl __gllc_EvalPoint2
.ent __gllc_EvalPoint2
__gllc_EvalPoint2:
    # Line 3926
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    # Line 3931
    li	$a1,8
    sd	$a0,0($sp)
    # Line 3929
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 3926
    lui	$v0,0x5
    addiu	$v0,$v0,-17020
    addu	$gp,$t9,$v0
    # Line 3931
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb2960
    # Line 3932
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbb2960:
    # Line 3937
    la	$a2,__glle_EvalPoint2
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 3933
    li	$v1,156
    sh	$v1,12($v0)
    # Line 3936
    ld	$a4,8($sp)
    # Line 3937
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3935
    ld	$a3,0($sp)
    # Line 3936
    sw	$a4,20($v0)
    # Line 3937
    jal	__glDlistAppendOp
    # Line 3935
    sw	$a3,16($v0)
    # Line 3938
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_EvalPoint2

# Function: __gllc_AlphaFunc
# Declared: Line 3941 (Source lines: 3942-3954)
# Address: 0x0dbb299c - 0x0dbb2a24 (Size: 136 bytes, Frame: 192)
.globl __gllc_AlphaFunc
.ent __gllc_AlphaFunc
__gllc_AlphaFunc:
    # Line 3947
    li	$a1,8
    # Line 3942
    addiu	$sp,$sp,-64
    sdc1	$f13,0($sp)
    sd	$a0,8($sp)
    # Line 3945
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 3942
    lui	$v0,0x5
    addiu	$v0,$v0,-17156
    addu	$gp,$t9,$v0
    # Line 3947
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb29e8
    # Line 3948
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbb29e8:
    # Line 3953
    la	$a2,__glle_AlphaFunc
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 3949
    li	$v1,157
    sh	$v1,12($v0)
    # Line 3952
    ldc1	$f0,0($sp)
    # Line 3953
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3951
    ld	$a3,8($sp)
    # Line 3952
    swc1	$f0,20($v0)
    # Line 3953
    jal	__glDlistAppendOp
    # Line 3951
    sw	$a3,16($v0)
    # Line 3954
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_AlphaFunc

# Function: __gllc_BlendFunc
# Declared: Line 3957 (Source lines: 3958-3970)
# Address: 0x0dbb2a24 - 0x0dbb2aac (Size: 136 bytes, Frame: 192)
.globl __gllc_BlendFunc
.ent __gllc_BlendFunc
__gllc_BlendFunc:
    # Line 3958
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    # Line 3963
    li	$a1,8
    sd	$a0,0($sp)
    # Line 3961
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 3958
    lui	$v0,0x5
    addiu	$v0,$v0,-17292
    addu	$gp,$t9,$v0
    # Line 3963
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb2a70
    # Line 3964
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbb2a70:
    # Line 3969
    la	$a2,__glle_BlendFunc
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 3965
    li	$v1,158
    sh	$v1,12($v0)
    # Line 3968
    ld	$a4,8($sp)
    # Line 3969
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3967
    ld	$a3,0($sp)
    # Line 3968
    sw	$a4,20($v0)
    # Line 3969
    jal	__glDlistAppendOp
    # Line 3967
    sw	$a3,16($v0)
    # Line 3970
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_BlendFunc

# Function: __gllc_LogicOp
# Declared: Line 3973 (Source lines: 3974-3985)
# Address: 0x0dbb2aac - 0x0dbb2b28 (Size: 124 bytes, Frame: 48)
.globl __gllc_LogicOp
.ent __gllc_LogicOp
__gllc_LogicOp:
    # Line 3979
    li	$a1,4
    # Line 3974
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 3977
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 3974
    lui	$v0,0x5
    addiu	$v0,$v0,-17428
    addu	$gp,$t9,$v0
    # Line 3979
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb2af4
    # Line 3980
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb2af4:
    # Line 3984
    la	$a2,__glle_LogicOp
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 3981
    li	$v1,159
    # Line 3984
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 3983
    ld	$a3,0($sp)
    # Line 3981
    sh	$v1,12($v0)
    # Line 3984
    jal	__glDlistAppendOp
    # Line 3983
    sw	$a3,16($v0)
    # Line 3985
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_LogicOp

# Function: __gllc_StencilFunc
# Declared: Line 3988 (Source lines: 3989-4002)
# Address: 0x0dbb2b28 - 0x0dbb2bbc (Size: 148 bytes, Frame: 208)
.globl __gllc_StencilFunc
.ent __gllc_StencilFunc
__gllc_StencilFunc:
    # Line 3989
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 3994
    li	$a1,12
    sd	$a2,24($sp)
    sd	$a0,0($sp)
    # Line 3992
    lw	$at,__glCurrentContext
    sd	$gp,32($sp)
    # Line 3989
    lui	$v0,0x5
    addiu	$v0,$v0,-17552
    addu	$gp,$t9,$v0
    # Line 3994
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,40($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb2b78
    # Line 3995
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb2b78:
    # Line 4001
    la	$a2,__glle_StencilFunc
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 3996
    li	$v1,160
    sh	$v1,12($v0)
    # Line 3998
    ld	$a3,0($sp)
    # Line 4000
    ld	$a5,24($sp)
    # Line 3999
    ld	$a4,16($sp)
    # Line 4001
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4000
    sw	$a5,24($v0)
    # Line 3999
    sw	$a4,20($v0)
    # Line 4001
    jal	__glDlistAppendOp
    # Line 3998
    sw	$a3,16($v0)
    # Line 4002
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_StencilFunc

# Function: __gllc_StencilOp
# Declared: Line 4005 (Source lines: 4006-4019)
# Address: 0x0dbb2bbc - 0x0dbb2c50 (Size: 148 bytes, Frame: 208)
.globl __gllc_StencilOp
.ent __gllc_StencilOp
__gllc_StencilOp:
    # Line 4006
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 4011
    li	$a1,12
    sd	$a2,24($sp)
    sd	$a0,0($sp)
    # Line 4009
    lw	$at,__glCurrentContext
    sd	$gp,32($sp)
    # Line 4006
    lui	$v0,0x5
    addiu	$v0,$v0,-17700
    addu	$gp,$t9,$v0
    # Line 4011
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,40($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb2c0c
    # Line 4012
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb2c0c:
    # Line 4018
    la	$a2,__glle_StencilOp
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 4013
    li	$v1,161
    sh	$v1,12($v0)
    # Line 4015
    ld	$a3,0($sp)
    # Line 4017
    ld	$a5,24($sp)
    # Line 4016
    ld	$a4,16($sp)
    # Line 4018
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4017
    sw	$a5,24($v0)
    # Line 4016
    sw	$a4,20($v0)
    # Line 4018
    jal	__glDlistAppendOp
    # Line 4015
    sw	$a3,16($v0)
    # Line 4019
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_StencilOp

# Function: __gllc_DepthFunc
# Declared: Line 4022 (Source lines: 4023-4034)
# Address: 0x0dbb2c50 - 0x0dbb2ccc (Size: 124 bytes, Frame: 48)
.globl __gllc_DepthFunc
.ent __gllc_DepthFunc
__gllc_DepthFunc:
    # Line 4028
    li	$a1,4
    # Line 4023
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 4026
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 4023
    lui	$v0,0x5
    addiu	$v0,$v0,-17848
    addu	$gp,$t9,$v0
    # Line 4028
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb2c98
    # Line 4029
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb2c98:
    # Line 4033
    la	$a2,__glle_DepthFunc
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 4030
    li	$v1,162
    # Line 4033
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4032
    ld	$a3,0($sp)
    # Line 4030
    sh	$v1,12($v0)
    # Line 4033
    jal	__glDlistAppendOp
    # Line 4032
    sw	$a3,16($v0)
    # Line 4034
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_DepthFunc

# Function: __gllc_PixelZoom
# Declared: Line 4037 (Source lines: 4038-4050)
# Address: 0x0dbb2ccc - 0x0dbb2d50 (Size: 132 bytes, Frame: 192)
.globl __gllc_PixelZoom
.ent __gllc_PixelZoom
__gllc_PixelZoom:
    # Line 4043
    li	$a1,8
    # Line 4038
    addiu	$sp,$sp,-64
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,24($sp)
    lui	$at,0x5
    addiu	$at,$at,-17972
    addu	$gp,$t9,$at
    # Line 4043
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 4041
    lw	$a0,__glCurrentContext
    sd	$ra,32($sp)
    # Line 4043
    jal	__glDlistAllocOp2
    sd	$a0,16($sp)
    bnez	$v0,.L0dbb2d14
    # Line 4044
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbb2d14:
    # Line 4049
    la	$a2,__glle_PixelZoom
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 4045
    li	$v1,163
    sh	$v1,12($v0)
    # Line 4048
    ldc1	$f1,8($sp)
    # Line 4049
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4047
    ldc1	$f0,0($sp)
    # Line 4048
    swc1	$f1,20($v0)
    # Line 4049
    jal	__glDlistAppendOp
    # Line 4047
    swc1	$f0,16($v0)
    # Line 4050
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_PixelZoom

# Function: __gllc_PixelTransferf
# Declared: Line 4053 (Source lines: 4054-4066)
# Address: 0x0dbb2d50 - 0x0dbb2dd8 (Size: 136 bytes, Frame: 192)
.globl __gllc_PixelTransferf
.ent __gllc_PixelTransferf
__gllc_PixelTransferf:
    # Line 4059
    li	$a1,8
    # Line 4054
    addiu	$sp,$sp,-64
    sdc1	$f13,0($sp)
    sd	$a0,8($sp)
    # Line 4057
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 4054
    lui	$v0,0x5
    addiu	$v0,$v0,-18104
    addu	$gp,$t9,$v0
    # Line 4059
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb2d9c
    # Line 4060
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbb2d9c:
    # Line 4065
    la	$a2,__glle_PixelTransferf
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 4061
    li	$v1,164
    sh	$v1,12($v0)
    # Line 4064
    ldc1	$f0,0($sp)
    # Line 4065
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4063
    ld	$a3,8($sp)
    # Line 4064
    swc1	$f0,20($v0)
    # Line 4065
    jal	__glDlistAppendOp
    # Line 4063
    sw	$a3,16($v0)
    # Line 4066
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_PixelTransferf

# Function: __gllc_PixelTransferi
# Declared: Line 4069 (Source lines: 4070-4082)
# Address: 0x0dbb2dd8 - 0x0dbb2e60 (Size: 136 bytes, Frame: 192)
.globl __gllc_PixelTransferi
.ent __gllc_PixelTransferi
__gllc_PixelTransferi:
    # Line 4070
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    # Line 4075
    li	$a1,8
    sd	$a0,0($sp)
    # Line 4073
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 4070
    lui	$v0,0x5
    addiu	$v0,$v0,-18240
    addu	$gp,$t9,$v0
    # Line 4075
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb2e24
    # Line 4076
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbb2e24:
    # Line 4081
    la	$a2,__glle_PixelTransferi
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 4077
    li	$v1,165
    sh	$v1,12($v0)
    # Line 4080
    ld	$a4,8($sp)
    # Line 4081
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4079
    ld	$a3,0($sp)
    # Line 4080
    sw	$a4,20($v0)
    # Line 4081
    jal	__glDlistAppendOp
    # Line 4079
    sw	$a3,16($v0)
    # Line 4082
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_PixelTransferi

# Function: __gllc_PixelMapfv
# Declared: Line 4087 (Source lines: 4088-4110)
# Address: 0x0dbb2e60 - 0x0dbb2f48 (Size: 232 bytes, Frame: 224)
.globl __gllc_PixelMapfv
.ent __gllc_PixelMapfv
__gllc_PixelMapfv:
    # Line 4088
    addiu	$sp,$sp,-96
    sd	$ra,56($sp)
    sd	$s0,40($sp)
    # Line 4093
    lw	$s0,__glCurrentContext
    sd	$a2,16($sp)
    sd	$a0,8($sp)
    sd	$s1,48($sp)
    # Line 4088
    move	$s1,$a1
    sd	$gp,32($sp)
    lui	$at,0x5
    addiu	$at,$at,-18376
    # Line 4093
    bltz	$a1,.L0dbb2f24
    # Line 4088
    addu	$gp,$t9,$at
    # Line 4101
    move	$a0,$s0
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sll	$a1,$s1,0x2
    sd	$a1,0($sp)
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,8
    sd	$v0,24($sp)
    bnez	$v0,.L0dbb2ecc
    ld	$ra,56($sp)
    ld	$gp,32($sp)
    # Line 4102
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb2ecc:
    ld	$a2,0($sp)
    # Line 4107
    ld	$a1,16($sp)
    # Line 4103
    li	$a3,166
    # Line 4107
    ld	$a4,24($sp)
    # lw $t9, -17848($gp) # &memcpy
    # Line 4105
    ld	$a5,8($sp)
    # Line 4107
    addiu	$a0,$a4,24
    # Line 4106
    sw	$s1,20($a4)
    # Line 4105
    sw	$a5,16($a4)
    # Line 4107
    jal	memcpy
    # Line 4103
    sh	$a3,12($a4)
    # Line 4109
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,24($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_PixelMapfv
    ld	$gp,32($sp)
    # Line 4110
    ld	$ra,56($sp)
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb2f24:
    # Line 4097
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s0
    ld	$gp,32($sp)
    # Line 4098
    ld	$ra,56($sp)
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_PixelMapfv

# Function: __gllc_PixelMapuiv
# Declared: Line 4113 (Source lines: 4114-4136)
# Address: 0x0dbb2f48 - 0x0dbb3030 (Size: 232 bytes, Frame: 224)
.globl __gllc_PixelMapuiv
.ent __gllc_PixelMapuiv
__gllc_PixelMapuiv:
    # Line 4114
    addiu	$sp,$sp,-96
    sd	$ra,56($sp)
    sd	$s0,40($sp)
    # Line 4119
    lw	$s0,__glCurrentContext
    sd	$a2,16($sp)
    sd	$a0,8($sp)
    sd	$s1,48($sp)
    # Line 4114
    move	$s1,$a1
    sd	$gp,32($sp)
    lui	$at,0x5
    addiu	$at,$at,-18608
    # Line 4119
    bltz	$a1,.L0dbb300c
    # Line 4114
    addu	$gp,$t9,$at
    # Line 4127
    move	$a0,$s0
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sll	$a1,$s1,0x2
    sd	$a1,0($sp)
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,8
    sd	$v0,24($sp)
    bnez	$v0,.L0dbb2fb4
    ld	$ra,56($sp)
    ld	$gp,32($sp)
    # Line 4128
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb2fb4:
    ld	$a2,0($sp)
    # Line 4133
    ld	$a1,16($sp)
    # Line 4129
    li	$a3,167
    # Line 4133
    ld	$a4,24($sp)
    # lw $t9, -17848($gp) # &memcpy
    # Line 4131
    ld	$a5,8($sp)
    # Line 4133
    addiu	$a0,$a4,24
    # Line 4132
    sw	$s1,20($a4)
    # Line 4131
    sw	$a5,16($a4)
    # Line 4133
    jal	memcpy
    # Line 4129
    sh	$a3,12($a4)
    # Line 4135
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,24($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_PixelMapuiv
    ld	$gp,32($sp)
    # Line 4136
    ld	$ra,56($sp)
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb300c:
    # Line 4123
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s0
    ld	$gp,32($sp)
    # Line 4124
    ld	$ra,56($sp)
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_PixelMapuiv

# Function: __gllc_PixelMapusv
# Declared: Line 4139 (Source lines: 4140-4162)
# Address: 0x0dbb3030 - 0x0dbb3124 (Size: 244 bytes, Frame: 224)
.globl __gllc_PixelMapusv
.ent __gllc_PixelMapusv
__gllc_PixelMapusv:
    # Line 4140
    addiu	$sp,$sp,-96
    sd	$ra,56($sp)
    sd	$s0,40($sp)
    # Line 4145
    lw	$s0,__glCurrentContext
    sd	$a2,8($sp)
    sd	$a0,0($sp)
    sd	$a1,16($sp)
    sd	$gp,32($sp)
    li	$v0,-4
    # Line 4140
    lui	$at,0x5
    addiu	$at,$at,-18840
    sd	$s1,48($sp)
    # Line 4145
    addu	$s1,$a1,$a1
    addiu	$s1,$s1,3
    and	$s1,$s1,$v0
    bltz	$s1,.L0dbb3100
    # Line 4140
    addu	$gp,$t9,$at
    # Line 4153
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,8
    sd	$v0,24($sp)
    bnez	$v0,.L0dbb30a4
    ld	$ra,56($sp)
    ld	$gp,32($sp)
    # Line 4154
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb30a4:
    # Line 4159
    move	$a2,$s1
    ld	$a1,8($sp)
    # Line 4155
    li	$v0,168
    # Line 4159
    # lw $t9, -17848($gp) # &memcpy
    ld	$v1,24($sp)
    # Line 4158
    ld	$a4,16($sp)
    # Line 4157
    ld	$a3,0($sp)
    # Line 4159
    addiu	$a0,$v1,24
    # Line 4158
    sw	$a4,20($v1)
    # Line 4157
    sw	$a3,16($v1)
    # Line 4159
    jal	memcpy
    # Line 4155
    sh	$v0,12($v1)
    # Line 4161
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,24($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_PixelMapusv
    ld	$gp,32($sp)
    # Line 4162
    ld	$ra,56($sp)
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb3100:
    # Line 4149
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s0
    ld	$gp,32($sp)
    # Line 4150
    ld	$ra,56($sp)
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_PixelMapusv

# Function: __gllc_ReadBuffer
# Declared: Line 4165 (Source lines: 4166-4177)
# Address: 0x0dbb3124 - 0x0dbb31a0 (Size: 124 bytes, Frame: 48)
.globl __gllc_ReadBuffer
.ent __gllc_ReadBuffer
__gllc_ReadBuffer:
    # Line 4171
    li	$a1,4
    # Line 4166
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 4169
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 4166
    lui	$v0,0x5
    addiu	$v0,$v0,-19084
    addu	$gp,$t9,$v0
    # Line 4171
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb316c
    # Line 4172
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb316c:
    # Line 4176
    la	$a2,__glle_ReadBuffer
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 4173
    li	$v1,169
    # Line 4176
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4175
    ld	$a3,0($sp)
    # Line 4173
    sh	$v1,12($v0)
    # Line 4176
    jal	__glDlistAppendOp
    # Line 4175
    sw	$a3,16($v0)
    # Line 4177
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_ReadBuffer

# Function: __gllc_CopyPixels
# Declared: Line 4180 (Source lines: 4181-4196)
# Address: 0x0dbb31a0 - 0x0dbb324c (Size: 172 bytes, Frame: 240)
.globl __gllc_CopyPixels
.ent __gllc_CopyPixels
__gllc_CopyPixels:
    # Line 4181
    addiu	$sp,$sp,-112
    sd	$a1,32($sp)
    # Line 4186
    li	$a1,20
    sd	$a4,8($sp)
    sd	$a3,24($sp)
    sd	$a2,40($sp)
    sd	$a0,0($sp)
    # Line 4184
    lw	$at,__glCurrentContext
    sd	$gp,48($sp)
    # Line 4181
    lui	$v0,0x5
    addiu	$v0,$v0,-19208
    addu	$gp,$t9,$v0
    # Line 4186
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,56($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb31f8
    # Line 4187
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dbb31f8:
    # Line 4195
    la	$a2,__glle_CopyPixels
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 4188
    li	$v1,170
    sh	$v1,12($v0)
    # Line 4190
    ld	$a3,0($sp)
    # Line 4195
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4191
    ld	$a4,32($sp)
    # Line 4194
    ld	$a7,8($sp)
    # Line 4193
    ld	$a6,24($sp)
    # Line 4192
    ld	$a5,40($sp)
    # Line 4194
    sw	$a7,32($v0)
    # Line 4193
    sw	$a6,28($v0)
    # Line 4192
    sw	$a5,24($v0)
    # Line 4191
    sw	$a4,20($v0)
    # Line 4195
    jal	__glDlistAppendOp
    # Line 4190
    sw	$a3,16($v0)
    # Line 4196
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __gllc_CopyPixels

# Function: __gllc_DepthRange
# Declared: Line 4231 (Source lines: 4232-4245)
# Address: 0x0dbb324c - 0x0dbb32d8 (Size: 140 bytes, Frame: 192)
.globl __gllc_DepthRange
.ent __gllc_DepthRange
__gllc_DepthRange:
    # Line 4237
    li	$a1,16
    # Line 4232
    addiu	$sp,$sp,-64
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,24($sp)
    lui	$at,0x5
    addiu	$at,$at,-19380
    addu	$gp,$t9,$at
    # Line 4237
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 4235
    lw	$a0,__glCurrentContext
    sd	$ra,32($sp)
    # Line 4237
    jal	__glDlistAllocOp2
    sd	$a0,16($sp)
    bnez	$v0,.L0dbb3294
    # Line 4238
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbb3294:
    # Line 4244
    la	$a2,__glle_DepthRange
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 4239
    li	$v1,172
    # Line 4240
    li	$a3,1
    sb	$a3,14($v0)
    # Line 4239
    sh	$v1,12($v0)
    # Line 4243
    ldc1	$f1,8($sp)
    # Line 4244
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4242
    ldc1	$f0,0($sp)
    # Line 4243
    sdc1	$f1,24($v0)
    # Line 4244
    jal	__glDlistAppendOp
    # Line 4242
    sdc1	$f0,16($v0)
    # Line 4245
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_DepthRange

# Function: __gllc_Frustum
# Declared: Line 4248 (Source lines: 4249-4266)
# Address: 0x0dbb32d8 - 0x0dbb3394 (Size: 188 bytes, Frame: 128)
.globl __gllc_Frustum
.ent __gllc_Frustum
__gllc_Frustum:
    # Line 4254
    li	$a1,48
    # Line 4249
    addiu	$sp,$sp,-128
    sdc1	$f17,40($sp)
    sdc1	$f16,16($sp)
    sdc1	$f15,32($sp)
    sdc1	$f14,24($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,56($sp)
    lui	$at,0x5
    addiu	$at,$at,-19520
    addu	$gp,$t9,$at
    # Line 4254
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 4252
    lw	$a0,__glCurrentContext
    sd	$ra,64($sp)
    # Line 4254
    jal	__glDlistAllocOp2
    sd	$a0,48($sp)
    bnez	$v0,.L0dbb3330
    # Line 4255
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dbb3330:
    # Line 4265
    la	$a2,__glle_Frustum
    move	$a1,$v0
    ld	$a0,48($sp)
    # Line 4256
    li	$v1,173
    # Line 4257
    li	$a3,1
    sb	$a3,14($v0)
    # Line 4256
    sh	$v1,12($v0)
    # Line 4259
    ldc1	$f0,0($sp)
    # Line 4265
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4260
    ldc1	$f1,8($sp)
    # Line 4261
    ldc1	$f2,24($sp)
    # Line 4264
    ldc1	$f5,40($sp)
    # Line 4263
    ldc1	$f4,16($sp)
    # Line 4262
    ldc1	$f3,32($sp)
    # Line 4264
    sdc1	$f5,56($v0)
    # Line 4263
    sdc1	$f4,48($v0)
    # Line 4262
    sdc1	$f3,40($v0)
    # Line 4261
    sdc1	$f2,32($v0)
    # Line 4260
    sdc1	$f1,24($v0)
    # Line 4265
    jal	__glDlistAppendOp
    # Line 4259
    sdc1	$f0,16($v0)
    # Line 4266
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __gllc_Frustum

# Function: __gllc_LoadIdentity
# Declared: Line 4269 (Source lines: 4270-4278)
# Address: 0x0dbb3394 - 0x0dbb3400 (Size: 108 bytes, Frame: 32)
.globl __gllc_LoadIdentity
.ent __gllc_LoadIdentity
__gllc_LoadIdentity:
    # Line 4274
    move	$a1,$zero
    # Line 4270
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x5
    addiu	$at,$at,-19708
    addu	$gp,$t9,$at
    # Line 4274
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 4272
    lw	$a0,__glCurrentContext
    sd	$ra,16($sp)
    # Line 4274
    jal	__glDlistAllocOp2
    sd	$a0,0($sp)
    bnez	$v0,.L0dbb33d4
    # Line 4275
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0dbb33d4:
    # Line 4277
    la	$a2,__glle_LoadIdentity
    move	$a1,$v0
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    ld	$a0,0($sp)
    # Line 4276
    li	$v1,174
    # Line 4277
    jal	__glDlistAppendOp
    # Line 4276
    sh	$v1,12($v0)
    # Line 4278
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __gllc_LoadIdentity

# Function: __gllc_LoadMatrixf
# Declared: Line 4281 (Source lines: 4282-4293)
# Address: 0x0dbb3400 - 0x0dbb3490 (Size: 144 bytes, Frame: 192)
.globl __gllc_LoadMatrixf
.ent __gllc_LoadMatrixf
__gllc_LoadMatrixf:
    # Line 4287
    li	$a1,64
    # Line 4282
    addiu	$sp,$sp,-64
    sd	$a0,0($sp)
    # Line 4285
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 4282
    lui	$v0,0x5
    addiu	$v0,$v0,-19816
    addu	$gp,$t9,$v0
    # Line 4287
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb344c
    sd	$v0,16($sp)
    # Line 4288
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbb344c:
    # Line 4291
    li	$a2,64
    ld	$a1,0($sp)
    ld	$a3,16($sp)
    # lw $t9, -17848($gp) # &memcpy
    # Line 4289
    li	$v1,175
    # Line 4291
    addiu	$a0,$a3,16
    jal	memcpy
    # Line 4289
    sh	$v1,12($a3)
    # Line 4292
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_LoadMatrixf
    # Line 4293
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_LoadMatrixf

# Function: __gllc_LoadMatrixd
# Declared: Line 4296 (Source lines: 4297-4309)
# Address: 0x0dbb3490 - 0x0dbb3528 (Size: 152 bytes, Frame: 192)
.globl __gllc_LoadMatrixd
.ent __gllc_LoadMatrixd
__gllc_LoadMatrixd:
    # Line 4302
    li	$a1,128
    # Line 4297
    addiu	$sp,$sp,-64
    sd	$a0,0($sp)
    # Line 4300
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 4297
    lui	$v0,0x5
    addiu	$v0,$v0,-19960
    addu	$gp,$t9,$v0
    # Line 4302
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb34dc
    sd	$v0,16($sp)
    # Line 4303
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbb34dc:
    # Line 4307
    li	$a2,128
    ld	$a1,0($sp)
    # Line 4304
    li	$v1,176
    # Line 4307
    ld	$a3,16($sp)
    # Line 4305
    li	$a4,1
    # Line 4307
    # lw $t9, -17848($gp) # &memcpy
    addiu	$a0,$a3,16
    # Line 4305
    sb	$a4,14($a3)
    # Line 4307
    jal	memcpy
    # Line 4304
    sh	$v1,12($a3)
    # Line 4308
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_LoadMatrixd
    # Line 4309
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_LoadMatrixd

# Function: __gllc_MatrixMode
# Declared: Line 4312 (Source lines: 4313-4324)
# Address: 0x0dbb3528 - 0x0dbb35a4 (Size: 124 bytes, Frame: 48)
.globl __gllc_MatrixMode
.ent __gllc_MatrixMode
__gllc_MatrixMode:
    # Line 4318
    li	$a1,4
    # Line 4313
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 4316
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 4313
    lui	$v0,0x5
    addiu	$v0,$v0,-20112
    addu	$gp,$t9,$v0
    # Line 4318
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb3570
    # Line 4319
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb3570:
    # Line 4323
    la	$a2,__glle_MatrixMode
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 4320
    li	$v1,177
    # Line 4323
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4322
    ld	$a3,0($sp)
    # Line 4320
    sh	$v1,12($v0)
    # Line 4323
    jal	__glDlistAppendOp
    # Line 4322
    sw	$a3,16($v0)
    # Line 4324
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_MatrixMode

# Function: __gllc_MultMatrixf
# Declared: Line 4327 (Source lines: 4328-4339)
# Address: 0x0dbb35a4 - 0x0dbb3634 (Size: 144 bytes, Frame: 192)
.globl __gllc_MultMatrixf
.ent __gllc_MultMatrixf
__gllc_MultMatrixf:
    # Line 4333
    li	$a1,64
    # Line 4328
    addiu	$sp,$sp,-64
    sd	$a0,0($sp)
    # Line 4331
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 4328
    lui	$v0,0x5
    addiu	$v0,$v0,-20236
    addu	$gp,$t9,$v0
    # Line 4333
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb35f0
    sd	$v0,16($sp)
    # Line 4334
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbb35f0:
    # Line 4337
    li	$a2,64
    ld	$a1,0($sp)
    ld	$a3,16($sp)
    # lw $t9, -17848($gp) # &memcpy
    # Line 4335
    li	$v1,178
    # Line 4337
    addiu	$a0,$a3,16
    jal	memcpy
    # Line 4335
    sh	$v1,12($a3)
    # Line 4338
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_MultMatrixf
    # Line 4339
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_MultMatrixf

# Function: __gllc_MultMatrixd
# Declared: Line 4342 (Source lines: 4343-4355)
# Address: 0x0dbb3634 - 0x0dbb36cc (Size: 152 bytes, Frame: 192)
.globl __gllc_MultMatrixd
.ent __gllc_MultMatrixd
__gllc_MultMatrixd:
    # Line 4348
    li	$a1,128
    # Line 4343
    addiu	$sp,$sp,-64
    sd	$a0,0($sp)
    # Line 4346
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 4343
    lui	$v0,0x5
    addiu	$v0,$v0,-20380
    addu	$gp,$t9,$v0
    # Line 4348
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb3680
    sd	$v0,16($sp)
    # Line 4349
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbb3680:
    # Line 4353
    li	$a2,128
    ld	$a1,0($sp)
    # Line 4350
    li	$v1,179
    # Line 4353
    ld	$a3,16($sp)
    # Line 4351
    li	$a4,1
    # Line 4353
    # lw $t9, -17848($gp) # &memcpy
    addiu	$a0,$a3,16
    # Line 4351
    sb	$a4,14($a3)
    # Line 4353
    jal	memcpy
    # Line 4350
    sh	$v1,12($a3)
    # Line 4354
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_MultMatrixd
    # Line 4355
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_MultMatrixd

# Function: __gllc_Ortho
# Declared: Line 4358 (Source lines: 4359-4376)
# Address: 0x0dbb36cc - 0x0dbb3788 (Size: 188 bytes, Frame: 128)
.globl __gllc_Ortho
.ent __gllc_Ortho
__gllc_Ortho:
    # Line 4364
    li	$a1,48
    # Line 4359
    addiu	$sp,$sp,-128
    sdc1	$f17,40($sp)
    sdc1	$f16,16($sp)
    sdc1	$f15,32($sp)
    sdc1	$f14,24($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,56($sp)
    lui	$at,0x5
    addiu	$at,$at,-20532
    addu	$gp,$t9,$at
    # Line 4364
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 4362
    lw	$a0,__glCurrentContext
    sd	$ra,64($sp)
    # Line 4364
    jal	__glDlistAllocOp2
    sd	$a0,48($sp)
    bnez	$v0,.L0dbb3724
    # Line 4365
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dbb3724:
    # Line 4375
    la	$a2,__glle_Ortho
    move	$a1,$v0
    ld	$a0,48($sp)
    # Line 4366
    li	$v1,180
    # Line 4367
    li	$a3,1
    sb	$a3,14($v0)
    # Line 4366
    sh	$v1,12($v0)
    # Line 4369
    ldc1	$f0,0($sp)
    # Line 4375
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4370
    ldc1	$f1,8($sp)
    # Line 4371
    ldc1	$f2,24($sp)
    # Line 4374
    ldc1	$f5,40($sp)
    # Line 4373
    ldc1	$f4,16($sp)
    # Line 4372
    ldc1	$f3,32($sp)
    # Line 4374
    sdc1	$f5,56($v0)
    # Line 4373
    sdc1	$f4,48($v0)
    # Line 4372
    sdc1	$f3,40($v0)
    # Line 4371
    sdc1	$f2,32($v0)
    # Line 4370
    sdc1	$f1,24($v0)
    # Line 4375
    jal	__glDlistAppendOp
    # Line 4369
    sdc1	$f0,16($v0)
    # Line 4376
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __gllc_Ortho

# Function: __gllc_PopMatrix
# Declared: Line 4379 (Source lines: 4380-4388)
# Address: 0x0dbb3788 - 0x0dbb37f4 (Size: 108 bytes, Frame: 32)
.globl __gllc_PopMatrix
.ent __gllc_PopMatrix
__gllc_PopMatrix:
    # Line 4384
    move	$a1,$zero
    # Line 4380
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x5
    addiu	$at,$at,-20720
    addu	$gp,$t9,$at
    # Line 4384
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 4382
    lw	$a0,__glCurrentContext
    sd	$ra,16($sp)
    # Line 4384
    jal	__glDlistAllocOp2
    sd	$a0,0($sp)
    bnez	$v0,.L0dbb37c8
    # Line 4385
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0dbb37c8:
    # Line 4387
    la	$a2,__glle_PopMatrix
    move	$a1,$v0
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    ld	$a0,0($sp)
    # Line 4386
    li	$v1,181
    # Line 4387
    jal	__glDlistAppendOp
    # Line 4386
    sh	$v1,12($v0)
    # Line 4388
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __gllc_PopMatrix

# Function: __gllc_PushMatrix
# Declared: Line 4391 (Source lines: 4392-4400)
# Address: 0x0dbb37f4 - 0x0dbb3860 (Size: 108 bytes, Frame: 32)
.globl __gllc_PushMatrix
.ent __gllc_PushMatrix
__gllc_PushMatrix:
    # Line 4396
    move	$a1,$zero
    # Line 4392
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x5
    addiu	$at,$at,-20828
    addu	$gp,$t9,$at
    # Line 4396
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 4394
    lw	$a0,__glCurrentContext
    sd	$ra,16($sp)
    # Line 4396
    jal	__glDlistAllocOp2
    sd	$a0,0($sp)
    bnez	$v0,.L0dbb3834
    # Line 4397
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0dbb3834:
    # Line 4399
    la	$a2,__glle_PushMatrix
    move	$a1,$v0
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    ld	$a0,0($sp)
    # Line 4398
    li	$v1,182
    # Line 4399
    jal	__glDlistAppendOp
    # Line 4398
    sh	$v1,12($v0)
    # Line 4400
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __gllc_PushMatrix

# Function: __gllc_Rotated
# Declared: Line 4403 (Source lines: 4404-4419)
# Address: 0x0dbb3860 - 0x0dbb3904 (Size: 164 bytes, Frame: 224)
.globl __gllc_Rotated
.ent __gllc_Rotated
__gllc_Rotated:
    # Line 4409
    li	$a1,32
    # Line 4404
    addiu	$sp,$sp,-96
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,40($sp)
    lui	$at,0x5
    addiu	$at,$at,-20936
    addu	$gp,$t9,$at
    # Line 4409
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 4407
    lw	$a0,__glCurrentContext
    sd	$ra,48($sp)
    # Line 4409
    jal	__glDlistAllocOp2
    sd	$a0,32($sp)
    bnez	$v0,.L0dbb38b0
    # Line 4410
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb38b0:
    # Line 4418
    la	$a2,__glle_Rotated
    move	$a1,$v0
    ld	$a0,32($sp)
    # Line 4411
    li	$v1,183
    # Line 4412
    li	$a3,1
    sb	$a3,14($v0)
    # Line 4411
    sh	$v1,12($v0)
    # Line 4414
    ldc1	$f0,0($sp)
    # Line 4418
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4417
    ldc1	$f3,24($sp)
    # Line 4416
    ldc1	$f2,16($sp)
    # Line 4415
    ldc1	$f1,8($sp)
    # Line 4417
    sdc1	$f3,40($v0)
    # Line 4416
    sdc1	$f2,32($v0)
    # Line 4415
    sdc1	$f1,24($v0)
    # Line 4418
    jal	__glDlistAppendOp
    # Line 4414
    sdc1	$f0,16($v0)
    # Line 4419
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_Rotated

# Function: __gllc_Rotatef
# Declared: Line 4422 (Source lines: 4423-4437)
# Address: 0x0dbb3904 - 0x0dbb39a0 (Size: 156 bytes, Frame: 224)
.globl __gllc_Rotatef
.ent __gllc_Rotatef
__gllc_Rotatef:
    # Line 4428
    li	$a1,16
    # Line 4423
    addiu	$sp,$sp,-96
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,40($sp)
    lui	$at,0x5
    addiu	$at,$at,-21100
    addu	$gp,$t9,$at
    # Line 4428
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 4426
    lw	$a0,__glCurrentContext
    sd	$ra,48($sp)
    # Line 4428
    jal	__glDlistAllocOp2
    sd	$a0,32($sp)
    bnez	$v0,.L0dbb3954
    # Line 4429
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb3954:
    # Line 4436
    la	$a2,__glle_Rotatef
    move	$a1,$v0
    ld	$a0,32($sp)
    # Line 4430
    li	$v1,184
    sh	$v1,12($v0)
    # Line 4432
    ldc1	$f0,0($sp)
    # Line 4436
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4435
    ldc1	$f3,24($sp)
    # Line 4434
    ldc1	$f2,16($sp)
    # Line 4433
    ldc1	$f1,8($sp)
    # Line 4435
    swc1	$f3,28($v0)
    # Line 4434
    swc1	$f2,24($v0)
    # Line 4433
    swc1	$f1,20($v0)
    # Line 4436
    jal	__glDlistAppendOp
    # Line 4432
    swc1	$f0,16($v0)
    # Line 4437
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_Rotatef

# Function: __gllc_Scaled
# Declared: Line 4440 (Source lines: 4441-4455)
# Address: 0x0dbb39a0 - 0x0dbb3a38 (Size: 152 bytes, Frame: 208)
.globl __gllc_Scaled
.ent __gllc_Scaled
__gllc_Scaled:
    # Line 4446
    li	$a1,24
    # Line 4441
    addiu	$sp,$sp,-80
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,32($sp)
    lui	$at,0x5
    addiu	$at,$at,-21256
    addu	$gp,$t9,$at
    # Line 4446
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 4444
    lw	$a0,__glCurrentContext
    sd	$ra,40($sp)
    # Line 4446
    jal	__glDlistAllocOp2
    sd	$a0,24($sp)
    bnez	$v0,.L0dbb39ec
    # Line 4447
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb39ec:
    # Line 4454
    la	$a2,__glle_Scaled
    move	$a1,$v0
    ld	$a0,24($sp)
    # Line 4448
    li	$v1,185
    # Line 4449
    li	$a3,1
    sb	$a3,14($v0)
    # Line 4448
    sh	$v1,12($v0)
    # Line 4451
    ldc1	$f0,0($sp)
    # Line 4453
    ldc1	$f2,16($sp)
    # Line 4452
    ldc1	$f1,8($sp)
    # Line 4454
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4453
    sdc1	$f2,32($v0)
    # Line 4452
    sdc1	$f1,24($v0)
    # Line 4454
    jal	__glDlistAppendOp
    # Line 4451
    sdc1	$f0,16($v0)
    # Line 4455
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_Scaled

# Function: __gllc_Scalef
# Declared: Line 4458 (Source lines: 4459-4472)
# Address: 0x0dbb3a38 - 0x0dbb3ac8 (Size: 144 bytes, Frame: 208)
.globl __gllc_Scalef
.ent __gllc_Scalef
__gllc_Scalef:
    # Line 4464
    li	$a1,12
    # Line 4459
    addiu	$sp,$sp,-80
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,32($sp)
    lui	$at,0x5
    addiu	$at,$at,-21408
    addu	$gp,$t9,$at
    # Line 4464
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 4462
    lw	$a0,__glCurrentContext
    sd	$ra,40($sp)
    # Line 4464
    jal	__glDlistAllocOp2
    sd	$a0,24($sp)
    bnez	$v0,.L0dbb3a84
    # Line 4465
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb3a84:
    # Line 4471
    la	$a2,__glle_Scalef
    move	$a1,$v0
    ld	$a0,24($sp)
    # Line 4466
    li	$v1,186
    sh	$v1,12($v0)
    # Line 4468
    ldc1	$f0,0($sp)
    # Line 4470
    ldc1	$f2,16($sp)
    # Line 4469
    ldc1	$f1,8($sp)
    # Line 4471
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4470
    swc1	$f2,24($v0)
    # Line 4469
    swc1	$f1,20($v0)
    # Line 4471
    jal	__glDlistAppendOp
    # Line 4468
    swc1	$f0,16($v0)
    # Line 4472
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_Scalef

# Function: __gllc_Translated
# Declared: Line 4475 (Source lines: 4476-4490)
# Address: 0x0dbb3ac8 - 0x0dbb3b60 (Size: 152 bytes, Frame: 208)
.globl __gllc_Translated
.ent __gllc_Translated
__gllc_Translated:
    # Line 4481
    li	$a1,24
    # Line 4476
    addiu	$sp,$sp,-80
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,32($sp)
    lui	$at,0x5
    addiu	$at,$at,-21552
    addu	$gp,$t9,$at
    # Line 4481
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 4479
    lw	$a0,__glCurrentContext
    sd	$ra,40($sp)
    # Line 4481
    jal	__glDlistAllocOp2
    sd	$a0,24($sp)
    bnez	$v0,.L0dbb3b14
    # Line 4482
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb3b14:
    # Line 4489
    la	$a2,__glle_Translated
    move	$a1,$v0
    ld	$a0,24($sp)
    # Line 4483
    li	$v1,187
    # Line 4484
    li	$a3,1
    sb	$a3,14($v0)
    # Line 4483
    sh	$v1,12($v0)
    # Line 4486
    ldc1	$f0,0($sp)
    # Line 4488
    ldc1	$f2,16($sp)
    # Line 4487
    ldc1	$f1,8($sp)
    # Line 4489
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4488
    sdc1	$f2,32($v0)
    # Line 4487
    sdc1	$f1,24($v0)
    # Line 4489
    jal	__glDlistAppendOp
    # Line 4486
    sdc1	$f0,16($v0)
    # Line 4490
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_Translated

# Function: __gllc_Translatef
# Declared: Line 4493 (Source lines: 4494-4507)
# Address: 0x0dbb3b60 - 0x0dbb3bf0 (Size: 144 bytes, Frame: 208)
.globl __gllc_Translatef
.ent __gllc_Translatef
__gllc_Translatef:
    # Line 4499
    li	$a1,12
    # Line 4494
    addiu	$sp,$sp,-80
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,32($sp)
    lui	$at,0x5
    addiu	$at,$at,-21704
    addu	$gp,$t9,$at
    # Line 4499
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 4497
    lw	$a0,__glCurrentContext
    sd	$ra,40($sp)
    # Line 4499
    jal	__glDlistAllocOp2
    sd	$a0,24($sp)
    bnez	$v0,.L0dbb3bac
    # Line 4500
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb3bac:
    # Line 4506
    la	$a2,__glle_Translatef
    move	$a1,$v0
    ld	$a0,24($sp)
    # Line 4501
    li	$v1,188
    sh	$v1,12($v0)
    # Line 4503
    ldc1	$f0,0($sp)
    # Line 4505
    ldc1	$f2,16($sp)
    # Line 4504
    ldc1	$f1,8($sp)
    # Line 4506
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4505
    swc1	$f2,24($v0)
    # Line 4504
    swc1	$f1,20($v0)
    # Line 4506
    jal	__glDlistAppendOp
    # Line 4503
    swc1	$f0,16($v0)
    # Line 4507
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_Translatef

# Function: __gllc_Viewport
# Declared: Line 4510 (Source lines: 4511-4525)
# Address: 0x0dbb3bf0 - 0x0dbb3c90 (Size: 160 bytes, Frame: 224)
.globl __gllc_Viewport
.ent __gllc_Viewport
__gllc_Viewport:
    # Line 4511
    addiu	$sp,$sp,-96
    sd	$a1,24($sp)
    # Line 4516
    li	$a1,16
    sd	$a3,16($sp)
    sd	$a2,32($sp)
    sd	$a0,0($sp)
    # Line 4514
    lw	$at,__glCurrentContext
    sd	$gp,40($sp)
    # Line 4511
    lui	$v0,0x5
    addiu	$v0,$v0,-21848
    addu	$gp,$t9,$v0
    # Line 4516
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,48($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb3c44
    # Line 4517
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb3c44:
    # Line 4524
    la	$a2,__glle_Viewport
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 4518
    li	$v1,189
    sh	$v1,12($v0)
    # Line 4520
    ld	$a3,0($sp)
    # Line 4524
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4523
    ld	$a6,16($sp)
    # Line 4522
    ld	$a5,32($sp)
    # Line 4521
    ld	$a4,24($sp)
    # Line 4523
    sw	$a6,28($v0)
    # Line 4522
    sw	$a5,24($v0)
    # Line 4521
    sw	$a4,20($v0)
    # Line 4524
    jal	__glDlistAppendOp
    # Line 4520
    sw	$a3,16($v0)
    # Line 4525
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_Viewport

# Function: __gllc_BlendColorEXT
# Declared: Line 4528 (Source lines: 4529-4543)
# Address: 0x0dbb3c90 - 0x0dbb3d2c (Size: 156 bytes, Frame: 224)
.globl __gllc_BlendColorEXT
.ent __gllc_BlendColorEXT
__gllc_BlendColorEXT:
    # Line 4534
    li	$a1,16
    # Line 4529
    addiu	$sp,$sp,-96
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,40($sp)
    lui	$at,0x5
    addiu	$at,$at,-22008
    addu	$gp,$t9,$at
    # Line 4534
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 4532
    lw	$a0,__glCurrentContext
    sd	$ra,48($sp)
    # Line 4534
    jal	__glDlistAllocOp2
    sd	$a0,32($sp)
    bnez	$v0,.L0dbb3ce0
    # Line 4535
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb3ce0:
    # Line 4542
    la	$a2,__glle_BlendColorEXT
    move	$a1,$v0
    ld	$a0,32($sp)
    # Line 4536
    li	$v1,190
    sh	$v1,12($v0)
    # Line 4538
    ldc1	$f0,0($sp)
    # Line 4542
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4541
    ldc1	$f3,24($sp)
    # Line 4540
    ldc1	$f2,16($sp)
    # Line 4539
    ldc1	$f1,8($sp)
    # Line 4541
    swc1	$f3,28($v0)
    # Line 4540
    swc1	$f2,24($v0)
    # Line 4539
    swc1	$f1,20($v0)
    # Line 4542
    jal	__glDlistAppendOp
    # Line 4538
    swc1	$f0,16($v0)
    # Line 4543
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_BlendColorEXT

# Function: __gllc_BlendEquationEXT
# Declared: Line 4546 (Source lines: 4547-4558)
# Address: 0x0dbb3d2c - 0x0dbb3da8 (Size: 124 bytes, Frame: 48)
.globl __gllc_BlendEquationEXT
.ent __gllc_BlendEquationEXT
__gllc_BlendEquationEXT:
    # Line 4552
    li	$a1,4
    # Line 4547
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 4550
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 4547
    lui	$v0,0x5
    addiu	$v0,$v0,-22164
    addu	$gp,$t9,$v0
    # Line 4552
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb3d74
    # Line 4553
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb3d74:
    # Line 4557
    la	$a2,__glle_BlendEquationEXT
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 4554
    li	$v1,191
    # Line 4557
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4556
    ld	$a3,0($sp)
    # Line 4554
    sh	$v1,12($v0)
    # Line 4557
    jal	__glDlistAppendOp
    # Line 4556
    sw	$a3,16($v0)
    # Line 4558
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_BlendEquationEXT

# Function: __gllc_PolygonOffsetEXT
# Declared: Line 4561 (Source lines: 4562-4574)
# Address: 0x0dbb3da8 - 0x0dbb3e2c (Size: 132 bytes, Frame: 192)
.globl __gllc_PolygonOffsetEXT
.ent __gllc_PolygonOffsetEXT
__gllc_PolygonOffsetEXT:
    # Line 4567
    li	$a1,8
    # Line 4562
    addiu	$sp,$sp,-64
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,24($sp)
    lui	$at,0x5
    addiu	$at,$at,-22288
    addu	$gp,$t9,$at
    # Line 4567
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 4565
    lw	$a0,__glCurrentContext
    sd	$ra,32($sp)
    # Line 4567
    jal	__glDlistAllocOp2
    sd	$a0,16($sp)
    bnez	$v0,.L0dbb3df0
    # Line 4568
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbb3df0:
    # Line 4573
    la	$a2,__glle_PolygonOffsetEXT
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 4569
    li	$v1,192
    sh	$v1,12($v0)
    # Line 4572
    ldc1	$f1,8($sp)
    # Line 4573
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4571
    ldc1	$f0,0($sp)
    # Line 4572
    swc1	$f1,20($v0)
    # Line 4573
    jal	__glDlistAppendOp
    # Line 4571
    swc1	$f0,16($v0)
    # Line 4574
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_PolygonOffsetEXT

# Function: __gllc_ConvolutionParameterfEXT
# Declared: Line 4581 (Source lines: 4582-4595)
# Address: 0x0dbb3e2c - 0x0dbb3ec0 (Size: 148 bytes, Frame: 208)
.globl __gllc_ConvolutionParameterfEXT
.ent __gllc_ConvolutionParameterfEXT
__gllc_ConvolutionParameterfEXT:
    # Line 4582
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 4587
    li	$a1,12
    sdc1	$f14,0($sp)
    sd	$a0,8($sp)
    # Line 4585
    lw	$at,__glCurrentContext
    sd	$gp,32($sp)
    # Line 4582
    lui	$v0,0x5
    addiu	$v0,$v0,-22420
    addu	$gp,$t9,$v0
    # Line 4587
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,40($sp)
    sd	$at,24($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb3e7c
    # Line 4588
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb3e7c:
    # Line 4594
    la	$a2,__glle_ConvolutionParameterfEXT
    move	$a1,$v0
    ld	$a0,24($sp)
    # Line 4589
    li	$v1,197
    sh	$v1,12($v0)
    # Line 4591
    ld	$a3,8($sp)
    # Line 4593
    ldc1	$f0,0($sp)
    # Line 4592
    ld	$a4,16($sp)
    # Line 4594
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4593
    swc1	$f0,24($v0)
    # Line 4592
    sw	$a4,20($v0)
    # Line 4594
    jal	__glDlistAppendOp
    # Line 4591
    sw	$a3,16($v0)
    # Line 4595
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_ConvolutionParameterfEXT

# Function: __gllc_ConvolutionParameterfvEXT
# Declared: Line 4598 (Source lines: 4599-4621)
# Address: 0x0dbb3ec0 - 0x0dbb3fb0 (Size: 240 bytes, Frame: 224)
.globl __gllc_ConvolutionParameterfvEXT
.ent __gllc_ConvolutionParameterfvEXT
__gllc_ConvolutionParameterfvEXT:
    # Line 4599
    move	$at,$a1
    addiu	$sp,$sp,-96
    sd	$s0,56($sp)
    # Line 4604
    lw	$s0,__glCurrentContext
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$gp,40($sp)
    # Line 4599
    lui	$v0,0x5
    addiu	$v0,$v0,-22568
    addu	$gp,$t9,$v0
    # Line 4606
    # lw $t9, -27228($gp) # &__glConvolutionParameterfvEXT_size
    sd	$a0,16($sp)
    sd	$ra,48($sp)
    jal	__glConvolutionParameterfvEXT_size
    move	$a0,$a1
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbb3f90
    sd	$a5,24($sp)
    # Line 4612
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$a5,8
    bnez	$v0,.L0dbb3f38
    sd	$v0,32($sp)
    # Line 4613
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb3f38:
    ld	$a2,24($sp)
    # Line 4618
    ld	$a1,0($sp)
    # Line 4614
    li	$a3,198
    # Line 4618
    # lw $t9, -17848($gp) # &memcpy
    ld	$a4,32($sp)
    # Line 4617
    ld	$a6,8($sp)
    # Line 4616
    ld	$a5,16($sp)
    # Line 4618
    addiu	$a0,$a4,24
    # Line 4617
    sw	$a6,20($a4)
    # Line 4616
    sw	$a5,16($a4)
    # Line 4618
    jal	memcpy
    # Line 4614
    sh	$a3,12($a4)
    # Line 4620
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,32($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_ConvolutionParameterfvEXT
    # Line 4621
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb3f90:
    # Line 4608
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    # Line 4609
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_ConvolutionParameterfvEXT

# Function: __gllc_ConvolutionParameteriEXT
# Declared: Line 4624 (Source lines: 4625-4638)
# Address: 0x0dbb3fb0 - 0x0dbb4044 (Size: 148 bytes, Frame: 208)
.globl __gllc_ConvolutionParameteriEXT
.ent __gllc_ConvolutionParameteriEXT
__gllc_ConvolutionParameteriEXT:
    # Line 4625
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 4630
    li	$a1,12
    sd	$a2,24($sp)
    sd	$a0,0($sp)
    # Line 4628
    lw	$at,__glCurrentContext
    sd	$gp,32($sp)
    # Line 4625
    lui	$v0,0x5
    addiu	$v0,$v0,-22808
    addu	$gp,$t9,$v0
    # Line 4630
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,40($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb4000
    # Line 4631
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb4000:
    # Line 4637
    la	$a2,__glle_ConvolutionParameteriEXT
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 4632
    li	$v1,199
    sh	$v1,12($v0)
    # Line 4634
    ld	$a3,0($sp)
    # Line 4636
    ld	$a5,24($sp)
    # Line 4635
    ld	$a4,16($sp)
    # Line 4637
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4636
    sw	$a5,24($v0)
    # Line 4635
    sw	$a4,20($v0)
    # Line 4637
    jal	__glDlistAppendOp
    # Line 4634
    sw	$a3,16($v0)
    # Line 4638
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_ConvolutionParameteriEXT

# Function: __gllc_ConvolutionParameterivEXT
# Declared: Line 4641 (Source lines: 4642-4664)
# Address: 0x0dbb4044 - 0x0dbb4134 (Size: 240 bytes, Frame: 224)
.globl __gllc_ConvolutionParameterivEXT
.ent __gllc_ConvolutionParameterivEXT
__gllc_ConvolutionParameterivEXT:
    # Line 4642
    move	$at,$a1
    addiu	$sp,$sp,-96
    sd	$s0,56($sp)
    # Line 4647
    lw	$s0,__glCurrentContext
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$gp,40($sp)
    # Line 4642
    lui	$v0,0x5
    addiu	$v0,$v0,-22956
    addu	$gp,$t9,$v0
    # Line 4649
    # lw $t9, -27224($gp) # &__glConvolutionParameterivEXT_size
    sd	$a0,16($sp)
    sd	$ra,48($sp)
    jal	__glConvolutionParameterivEXT_size
    move	$a0,$a1
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbb4114
    sd	$a5,24($sp)
    # Line 4655
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$a5,8
    bnez	$v0,.L0dbb40bc
    sd	$v0,32($sp)
    # Line 4656
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb40bc:
    ld	$a2,24($sp)
    # Line 4661
    ld	$a1,0($sp)
    # Line 4657
    li	$a3,200
    # Line 4661
    # lw $t9, -17848($gp) # &memcpy
    ld	$a4,32($sp)
    # Line 4660
    ld	$a6,8($sp)
    # Line 4659
    ld	$a5,16($sp)
    # Line 4661
    addiu	$a0,$a4,24
    # Line 4660
    sw	$a6,20($a4)
    # Line 4659
    sw	$a5,16($a4)
    # Line 4661
    jal	memcpy
    # Line 4657
    sh	$a3,12($a4)
    # Line 4663
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,32($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_ConvolutionParameterivEXT
    # Line 4664
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb4114:
    # Line 4651
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    # Line 4652
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_ConvolutionParameterivEXT

# Function: __gllc_CopyConvolutionFilter1DEXT
# Declared: Line 4667 (Source lines: 4668-4683)
# Address: 0x0dbb4134 - 0x0dbb41e0 (Size: 172 bytes, Frame: 240)
.globl __gllc_CopyConvolutionFilter1DEXT
.ent __gllc_CopyConvolutionFilter1DEXT
__gllc_CopyConvolutionFilter1DEXT:
    # Line 4668
    addiu	$sp,$sp,-112
    sd	$a1,32($sp)
    # Line 4673
    li	$a1,20
    sd	$a4,8($sp)
    sd	$a3,24($sp)
    sd	$a2,40($sp)
    sd	$a0,0($sp)
    # Line 4671
    lw	$at,__glCurrentContext
    sd	$gp,48($sp)
    # Line 4668
    lui	$v0,0x5
    addiu	$v0,$v0,-23196
    addu	$gp,$t9,$v0
    # Line 4673
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,56($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb418c
    # Line 4674
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dbb418c:
    # Line 4682
    la	$a2,__glle_CopyConvolutionFilter1DEXT
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 4675
    li	$v1,201
    sh	$v1,12($v0)
    # Line 4677
    ld	$a3,0($sp)
    # Line 4682
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4678
    ld	$a4,32($sp)
    # Line 4681
    ld	$a7,8($sp)
    # Line 4680
    ld	$a6,24($sp)
    # Line 4679
    ld	$a5,40($sp)
    # Line 4681
    sw	$a7,32($v0)
    # Line 4680
    sw	$a6,28($v0)
    # Line 4679
    sw	$a5,24($v0)
    # Line 4678
    sw	$a4,20($v0)
    # Line 4682
    jal	__glDlistAppendOp
    # Line 4677
    sw	$a3,16($v0)
    # Line 4683
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __gllc_CopyConvolutionFilter1DEXT

# Function: __gllc_CopyConvolutionFilter2DEXT
# Declared: Line 4686 (Source lines: 4687-4703)
# Address: 0x0dbb41e0 - 0x0dbb4298 (Size: 184 bytes, Frame: 128)
.globl __gllc_CopyConvolutionFilter2DEXT
.ent __gllc_CopyConvolutionFilter2DEXT
__gllc_CopyConvolutionFilter2DEXT:
    # Line 4687
    addiu	$sp,$sp,-128
    sd	$a1,40($sp)
    # Line 4692
    li	$a1,24
    sd	$a5,16($sp)
    sd	$a4,8($sp)
    sd	$a3,32($sp)
    sd	$a2,48($sp)
    sd	$a0,0($sp)
    # Line 4690
    lw	$at,__glCurrentContext
    sd	$gp,56($sp)
    # Line 4687
    lui	$v0,0x5
    addiu	$v0,$v0,-23368
    addu	$gp,$t9,$v0
    # Line 4692
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,64($sp)
    sd	$at,24($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb423c
    # Line 4693
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dbb423c:
    # Line 4702
    la	$a2,__glle_CopyConvolutionFilter2DEXT
    move	$a1,$v0
    ld	$a0,24($sp)
    # Line 4694
    li	$v1,202
    sh	$v1,12($v0)
    # Line 4696
    ld	$a3,0($sp)
    # Line 4702
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4697
    ld	$a4,40($sp)
    # Line 4698
    ld	$a5,48($sp)
    # Line 4701
    ld	$t0,16($sp)
    # Line 4700
    ld	$a7,8($sp)
    # Line 4699
    ld	$a6,32($sp)
    # Line 4701
    sw	$t0,36($v0)
    # Line 4700
    sw	$a7,32($v0)
    # Line 4699
    sw	$a6,28($v0)
    # Line 4698
    sw	$a5,24($v0)
    # Line 4697
    sw	$a4,20($v0)
    # Line 4702
    jal	__glDlistAppendOp
    # Line 4696
    sw	$a3,16($v0)
    # Line 4703
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __gllc_CopyConvolutionFilter2DEXT

# Function: __gllc_HistogramEXT
# Declared: Line 4717 (Source lines: 4718-4736)
# Address: 0x0dbb4298 - 0x0dbb4370 (Size: 216 bytes, Frame: 224)
.globl __gllc_HistogramEXT
.ent __gllc_HistogramEXT
__gllc_HistogramEXT:
    # Line 4718
    move	$v0,$a3
    # Line 4721
    li	$at,0x8025
    # Line 4718
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    sd	$s0,32($sp)
    # Line 4721
    lw	$s0,__glCurrentContext
    sd	$gp,40($sp)
    # Line 4718
    lui	$v1,0x5
    addiu	$v1,$v1,-23552
    # Line 4721
    beq	$a0,$at,.L0dbb434c
    # Line 4718
    addu	$gp,$t9,$v1
    sd	$v0,0($sp)
    sd	$a2,8($sp)
    sd	$a0,24($sp)
    # Line 4727
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    sd	$a1,16($sp)
    jal	__glDlistAllocOp2
    li	$a1,16
    bnez	$v0,.L0dbb42fc
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    # Line 4728
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb42fc:
    # Line 4735
    la	$a2,__glle_HistogramEXT
    move	$a1,$v0
    move	$a0,$s0
    # Line 4729
    li	$a3,204
    sh	$a3,12($v0)
    # Line 4731
    ld	$a4,24($sp)
    # Line 4735
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4734
    ld	$a7,0($sp)
    # Line 4733
    ld	$a6,8($sp)
    # Line 4732
    ld	$a5,16($sp)
    # Line 4734
    sb	$a7,28($v0)
    # Line 4733
    sw	$a6,24($v0)
    # Line 4732
    sw	$a5,20($v0)
    # Line 4735
    jal	__glDlistAppendOp
    # Line 4731
    sw	$a4,16($v0)
    # Line 4736
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb434c:
    # Line 4724
    lw	$t9,5640($s0)
    lw	$t9,768($t9)
    jalr	$t9
    move	$a3,$v0
    # Line 4725
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_HistogramEXT

# Function: __gllc_MinmaxEXT
# Declared: Line 4739 (Source lines: 4740-4753)
# Address: 0x0dbb4370 - 0x0dbb4404 (Size: 148 bytes, Frame: 208)
.globl __gllc_MinmaxEXT
.ent __gllc_MinmaxEXT
__gllc_MinmaxEXT:
    # Line 4740
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 4745
    li	$a1,12
    sd	$a2,24($sp)
    sd	$a0,0($sp)
    # Line 4743
    lw	$at,__glCurrentContext
    sd	$gp,32($sp)
    # Line 4740
    lui	$v0,0x5
    addiu	$v0,$v0,-23768
    addu	$gp,$t9,$v0
    # Line 4745
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,40($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb43c0
    # Line 4746
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb43c0:
    # Line 4752
    la	$a2,__glle_MinmaxEXT
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 4747
    li	$v1,205
    sh	$v1,12($v0)
    # Line 4749
    ld	$a3,0($sp)
    # Line 4751
    ld	$a5,24($sp)
    # Line 4750
    ld	$a4,16($sp)
    # Line 4752
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4751
    sb	$a5,24($v0)
    # Line 4750
    sw	$a4,20($v0)
    # Line 4752
    jal	__glDlistAppendOp
    # Line 4749
    sw	$a3,16($v0)
    # Line 4753
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_MinmaxEXT

# Function: __gllc_ResetHistogramEXT
# Declared: Line 4756 (Source lines: 4757-4768)
# Address: 0x0dbb4404 - 0x0dbb4480 (Size: 124 bytes, Frame: 48)
.globl __gllc_ResetHistogramEXT
.ent __gllc_ResetHistogramEXT
__gllc_ResetHistogramEXT:
    # Line 4762
    li	$a1,4
    # Line 4757
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 4760
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 4757
    lui	$v0,0x5
    addiu	$v0,$v0,-23916
    addu	$gp,$t9,$v0
    # Line 4762
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb444c
    # Line 4763
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb444c:
    # Line 4767
    la	$a2,__glle_ResetHistogramEXT
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 4764
    li	$v1,206
    # Line 4767
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4766
    ld	$a3,0($sp)
    # Line 4764
    sh	$v1,12($v0)
    # Line 4767
    jal	__glDlistAppendOp
    # Line 4766
    sw	$a3,16($v0)
    # Line 4768
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_ResetHistogramEXT

# Function: __gllc_ResetMinmaxEXT
# Declared: Line 4771 (Source lines: 4772-4783)
# Address: 0x0dbb4480 - 0x0dbb44fc (Size: 124 bytes, Frame: 48)
.globl __gllc_ResetMinmaxEXT
.ent __gllc_ResetMinmaxEXT
__gllc_ResetMinmaxEXT:
    # Line 4777
    li	$a1,4
    # Line 4772
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 4775
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 4772
    lui	$v0,0x5
    addiu	$v0,$v0,-24040
    addu	$gp,$t9,$v0
    # Line 4777
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb44c8
    # Line 4778
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb44c8:
    # Line 4782
    la	$a2,__glle_ResetMinmaxEXT
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 4779
    li	$v1,207
    # Line 4782
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4781
    ld	$a3,0($sp)
    # Line 4779
    sh	$v1,12($v0)
    # Line 4782
    jal	__glDlistAppendOp
    # Line 4781
    sw	$a3,16($v0)
    # Line 4783
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_ResetMinmaxEXT

# Function: __gllc_BindTextureEXT
# Declared: Line 4798 (Source lines: 4799-4811)
# Address: 0x0dbb44fc - 0x0dbb4584 (Size: 136 bytes, Frame: 192)
.globl __gllc_BindTextureEXT
.ent __gllc_BindTextureEXT
__gllc_BindTextureEXT:
    # Line 4799
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    # Line 4804
    li	$a1,8
    sd	$a0,0($sp)
    # Line 4802
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 4799
    lui	$v0,0x5
    addiu	$v0,$v0,-24164
    addu	$gp,$t9,$v0
    # Line 4804
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb4548
    # Line 4805
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbb4548:
    # Line 4810
    la	$a2,__glle_BindTextureEXT
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 4806
    li	$v1,212
    sh	$v1,12($v0)
    # Line 4809
    ld	$a4,8($sp)
    # Line 4810
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4808
    ld	$a3,0($sp)
    # Line 4809
    sw	$a4,20($v0)
    # Line 4810
    jal	__glDlistAppendOp
    # Line 4808
    sw	$a3,16($v0)
    # Line 4811
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_BindTextureEXT

# Function: __gllc_PrioritizeTexturesEXT
# Declared: Line 4817 (Source lines: 4818-4847)
# Address: 0x0dbb4584 - 0x0dbb4688 (Size: 260 bytes, Frame: 224)
.globl __gllc_PrioritizeTexturesEXT
.ent __gllc_PrioritizeTexturesEXT
__gllc_PrioritizeTexturesEXT:
    # Line 4818
    addiu	$sp,$sp,-96
    sd	$ra,56($sp)
    sd	$s0,40($sp)
    # Line 4824
    lw	$s0,__glCurrentContext
    sd	$a2,8($sp)
    sd	$a1,0($sp)
    sd	$s1,48($sp)
    # Line 4818
    move	$s1,$a0
    sd	$gp,32($sp)
    lui	$at,0x5
    addiu	$at,$at,-24300
    # Line 4824
    bltz	$a0,.L0dbb4664
    # Line 4818
    addu	$gp,$t9,$at
    # Line 4837
    move	$a0,$s0
    sll	$a1,$s1,0x2
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$a1,16($sp)
    addu	$a1,$a1,$a1
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,4
    sd	$v0,24($sp)
    bnez	$v0,.L0dbb45f4
    ld	$ra,56($sp)
    ld	$gp,32($sp)
    # Line 4838
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb45f4:
    ld	$a2,16($sp)
    # Line 4842
    ld	$a1,0($sp)
    ld	$a4,24($sp)
    # Line 4839
    li	$a3,213
    # Line 4842
    # lw $t9, -17848($gp) # &memcpy
    addiu	$a0,$a4,20
    # Line 4841
    sw	$s1,16($a4)
    # Line 4842
    jal	memcpy
    # Line 4839
    sh	$a3,12($a4)
    # Line 4844
    ld	$a1,8($sp)
    ld	$a0,16($sp)
    ld	$a3,24($sp)
    # lw $t9, -17848($gp) # &memcpy
    move	$a2,$a0
    addu	$a0,$a0,$a3
    jal	memcpy
    addiu	$a0,$a0,20
    # Line 4846
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,24($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_PrioritizeTexturesEXT
    ld	$gp,32($sp)
    # Line 4847
    ld	$ra,56($sp)
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb4664:
    # Line 4828
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s0
    ld	$gp,32($sp)
    # Line 4829
    ld	$ra,56($sp)
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_PrioritizeTexturesEXT

# Function: __gllc_CopyTexImage1DEXT
# Declared: Line 4850 (Source lines: 4851-4868)
# Address: 0x0dbb4688 - 0x0dbb474c (Size: 196 bytes, Frame: 144)
.globl __gllc_CopyTexImage1DEXT
.ent __gllc_CopyTexImage1DEXT
__gllc_CopyTexImage1DEXT:
    # Line 4851
    addiu	$sp,$sp,-144
    sd	$a1,48($sp)
    # Line 4856
    li	$a1,28
    sd	$a6,32($sp)
    sd	$a5,24($sp)
    sd	$a4,16($sp)
    sd	$a3,40($sp)
    sd	$a2,56($sp)
    sd	$a0,0($sp)
    # Line 4854
    lw	$at,__glCurrentContext
    sd	$gp,64($sp)
    # Line 4851
    lui	$v0,0x5
    addiu	$v0,$v0,-24560
    addu	$gp,$t9,$v0
    # Line 4856
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,72($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb46e8
    # Line 4857
    ld	$ra,72($sp)
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dbb46e8:
    # Line 4867
    la	$a2,__glle_CopyTexImage1DEXT
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 4858
    li	$v1,214
    sh	$v1,12($v0)
    # Line 4860
    ld	$a3,0($sp)
    # Line 4867
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4861
    ld	$a4,48($sp)
    # Line 4862
    ld	$a5,56($sp)
    # Line 4863
    ld	$a6,40($sp)
    # Line 4866
    ld	$t1,32($sp)
    # Line 4865
    ld	$t0,24($sp)
    # Line 4864
    ld	$a7,16($sp)
    # Line 4866
    sw	$t1,40($v0)
    # Line 4865
    sw	$t0,36($v0)
    # Line 4864
    sw	$a7,32($v0)
    # Line 4863
    sw	$a6,28($v0)
    # Line 4862
    sw	$a5,24($v0)
    # Line 4861
    sw	$a4,20($v0)
    # Line 4867
    jal	__glDlistAppendOp
    # Line 4860
    sw	$a3,16($v0)
    # Line 4868
    ld	$ra,72($sp)
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __gllc_CopyTexImage1DEXT

# Function: __gllc_CopyTexImage2DEXT
# Declared: Line 4871 (Source lines: 4872-4890)
# Address: 0x0dbb474c - 0x0dbb481c (Size: 208 bytes, Frame: 160)
.globl __gllc_CopyTexImage2DEXT
.ent __gllc_CopyTexImage2DEXT
__gllc_CopyTexImage2DEXT:
    # Line 4872
    addiu	$sp,$sp,-160
    sd	$a1,56($sp)
    # Line 4877
    li	$a1,32
    sd	$a7,32($sp)
    sd	$a6,24($sp)
    sd	$a5,16($sp)
    sd	$a4,8($sp)
    sd	$a3,48($sp)
    sd	$a2,64($sp)
    sd	$a0,0($sp)
    # Line 4875
    lw	$at,__glCurrentContext
    sd	$gp,72($sp)
    # Line 4872
    lui	$v0,0x5
    addiu	$v0,$v0,-24756
    addu	$gp,$t9,$v0
    # Line 4877
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,80($sp)
    sd	$at,40($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb47b0
    # Line 4878
    ld	$ra,80($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dbb47b0:
    # Line 4889
    la	$a2,__glle_CopyTexImage2DEXT
    move	$a1,$v0
    ld	$a0,40($sp)
    # Line 4879
    li	$v1,215
    sh	$v1,12($v0)
    # Line 4881
    ld	$a3,0($sp)
    # Line 4889
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4882
    ld	$a4,56($sp)
    # Line 4883
    ld	$a5,64($sp)
    # Line 4884
    ld	$a6,48($sp)
    # Line 4885
    ld	$a7,8($sp)
    # Line 4888
    ld	$t2,32($sp)
    # Line 4887
    ld	$t1,24($sp)
    # Line 4886
    ld	$t0,16($sp)
    # Line 4888
    sw	$t2,44($v0)
    # Line 4887
    sw	$t1,40($v0)
    # Line 4886
    sw	$t0,36($v0)
    # Line 4885
    sw	$a7,32($v0)
    # Line 4884
    sw	$a6,28($v0)
    # Line 4883
    sw	$a5,24($v0)
    # Line 4882
    sw	$a4,20($v0)
    # Line 4889
    jal	__glDlistAppendOp
    # Line 4881
    sw	$a3,16($v0)
    # Line 4890
    ld	$ra,80($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __gllc_CopyTexImage2DEXT

# Function: __gllc_CopyTexSubImage1DEXT
# Declared: Line 4893 (Source lines: 4894-4910)
# Address: 0x0dbb481c - 0x0dbb48d4 (Size: 184 bytes, Frame: 128)
.globl __gllc_CopyTexSubImage1DEXT
.ent __gllc_CopyTexSubImage1DEXT
__gllc_CopyTexSubImage1DEXT:
    # Line 4894
    addiu	$sp,$sp,-128
    sd	$a1,40($sp)
    # Line 4899
    li	$a1,24
    sd	$a5,16($sp)
    sd	$a4,8($sp)
    sd	$a3,32($sp)
    sd	$a2,48($sp)
    sd	$a0,0($sp)
    # Line 4897
    lw	$at,__glCurrentContext
    sd	$gp,56($sp)
    # Line 4894
    lui	$v0,0x5
    addiu	$v0,$v0,-24964
    addu	$gp,$t9,$v0
    # Line 4899
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,64($sp)
    sd	$at,24($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb4878
    # Line 4900
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dbb4878:
    # Line 4909
    la	$a2,__glle_CopyTexSubImage1DEXT
    move	$a1,$v0
    ld	$a0,24($sp)
    # Line 4901
    li	$v1,216
    sh	$v1,12($v0)
    # Line 4903
    ld	$a3,0($sp)
    # Line 4909
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4904
    ld	$a4,40($sp)
    # Line 4905
    ld	$a5,48($sp)
    # Line 4908
    ld	$t0,16($sp)
    # Line 4907
    ld	$a7,8($sp)
    # Line 4906
    ld	$a6,32($sp)
    # Line 4908
    sw	$t0,36($v0)
    # Line 4907
    sw	$a7,32($v0)
    # Line 4906
    sw	$a6,28($v0)
    # Line 4905
    sw	$a5,24($v0)
    # Line 4904
    sw	$a4,20($v0)
    # Line 4909
    jal	__glDlistAppendOp
    # Line 4903
    sw	$a3,16($v0)
    # Line 4910
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __gllc_CopyTexSubImage1DEXT

# Function: __gllc_CopyTexSubImage2DEXT
# Declared: Line 4913 (Source lines: 4914-4932)
# Address: 0x0dbb48d4 - 0x0dbb49a4 (Size: 208 bytes, Frame: 160)
.globl __gllc_CopyTexSubImage2DEXT
.ent __gllc_CopyTexSubImage2DEXT
__gllc_CopyTexSubImage2DEXT:
    # Line 4914
    addiu	$sp,$sp,-160
    sd	$a1,56($sp)
    # Line 4919
    li	$a1,32
    sd	$a7,32($sp)
    sd	$a6,24($sp)
    sd	$a5,16($sp)
    sd	$a4,8($sp)
    sd	$a3,48($sp)
    sd	$a2,64($sp)
    sd	$a0,0($sp)
    # Line 4917
    lw	$at,__glCurrentContext
    sd	$gp,72($sp)
    # Line 4914
    lui	$v0,0x5
    addiu	$v0,$v0,-25148
    addu	$gp,$t9,$v0
    # Line 4919
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,80($sp)
    sd	$at,40($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb4938
    # Line 4920
    ld	$ra,80($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dbb4938:
    # Line 4931
    la	$a2,__glle_CopyTexSubImage2DEXT
    move	$a1,$v0
    ld	$a0,40($sp)
    # Line 4921
    li	$v1,217
    sh	$v1,12($v0)
    # Line 4923
    ld	$a3,0($sp)
    # Line 4931
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4924
    ld	$a4,56($sp)
    # Line 4925
    ld	$a5,64($sp)
    # Line 4926
    ld	$a6,48($sp)
    # Line 4927
    ld	$a7,8($sp)
    # Line 4930
    ld	$t2,32($sp)
    # Line 4929
    ld	$t1,24($sp)
    # Line 4928
    ld	$t0,16($sp)
    # Line 4930
    sw	$t2,44($v0)
    # Line 4929
    sw	$t1,40($v0)
    # Line 4928
    sw	$t0,36($v0)
    # Line 4927
    sw	$a7,32($v0)
    # Line 4926
    sw	$a6,28($v0)
    # Line 4925
    sw	$a5,24($v0)
    # Line 4924
    sw	$a4,20($v0)
    # Line 4931
    jal	__glDlistAppendOp
    # Line 4923
    sw	$a3,16($v0)
    # Line 4932
    ld	$ra,80($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __gllc_CopyTexSubImage2DEXT

# Function: __gllc_CopyTexSubImage3DEXT
# Declared: Line 4935 (Source lines: 4936-4955)
# Address: 0x0dbb49a4 - 0x0dbb4a7c (Size: 216 bytes, Frame: 160)
.globl __gllc_CopyTexSubImage3DEXT
.ent __gllc_CopyTexSubImage3DEXT
__gllc_CopyTexSubImage3DEXT:
    # Line 4936
    addiu	$sp,$sp,-160
    sd	$a1,56($sp)
    # Line 4941
    li	$a1,36
    sd	$a7,32($sp)
    sd	$a6,24($sp)
    sd	$a5,16($sp)
    sd	$a4,8($sp)
    sd	$a3,48($sp)
    sd	$a2,64($sp)
    sd	$a0,0($sp)
    # Line 4939
    lw	$at,__glCurrentContext
    sd	$gp,72($sp)
    # Line 4936
    lui	$v0,0x5
    addiu	$v0,$v0,-25356
    addu	$gp,$t9,$v0
    # Line 4941
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,80($sp)
    sd	$at,40($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb4a08
    # Line 4942
    ld	$ra,80($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dbb4a08:
    # Line 4954
    la	$a2,__glle_CopyTexSubImage3DEXT
    move	$a1,$v0
    ld	$a0,40($sp)
    # Line 4943
    li	$a3,218
    sh	$a3,12($v0)
    # Line 4953
    lw	$v1,164($sp)
    # Line 4954
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4945
    ld	$a4,0($sp)
    # Line 4946
    ld	$a5,56($sp)
    # Line 4947
    ld	$a6,64($sp)
    # Line 4948
    ld	$a7,48($sp)
    # Line 4949
    ld	$t0,8($sp)
    # Line 4952
    ld	$t3,32($sp)
    # Line 4951
    ld	$t2,24($sp)
    # Line 4950
    ld	$t1,16($sp)
    # Line 4952
    sw	$t3,44($v0)
    # Line 4951
    sw	$t2,40($v0)
    # Line 4950
    sw	$t1,36($v0)
    # Line 4949
    sw	$t0,32($v0)
    # Line 4948
    sw	$a7,28($v0)
    # Line 4947
    sw	$a6,24($v0)
    # Line 4946
    sw	$a5,20($v0)
    # Line 4945
    sw	$a4,16($v0)
    # Line 4954
    jal	__glDlistAppendOp
    # Line 4953
    sw	$v1,48($v0)
    # Line 4955
    ld	$ra,80($sp)
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __gllc_CopyTexSubImage3DEXT

# Function: __gllc_PolygonOffset
# Declared: Line 4968 (Source lines: 4969-4981)
# Address: 0x0dbb4a7c - 0x0dbb4b00 (Size: 132 bytes, Frame: 192)
.globl __gllc_PolygonOffset
.ent __gllc_PolygonOffset
__gllc_PolygonOffset:
    # Line 4974
    li	$a1,8
    # Line 4969
    addiu	$sp,$sp,-64
    sdc1	$f13,8($sp)
    sdc1	$f12,0($sp)
    sd	$gp,24($sp)
    lui	$at,0x5
    addiu	$at,$at,-25572
    addu	$gp,$t9,$at
    # Line 4974
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 4972
    lw	$a0,__glCurrentContext
    sd	$ra,32($sp)
    # Line 4974
    jal	__glDlistAllocOp2
    sd	$a0,16($sp)
    bnez	$v0,.L0dbb4ac4
    # Line 4975
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbb4ac4:
    # Line 4980
    la	$a2,__glle_PolygonOffset
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 4976
    li	$v1,220
    sh	$v1,12($v0)
    # Line 4979
    ldc1	$f1,8($sp)
    # Line 4980
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 4978
    ldc1	$f0,0($sp)
    # Line 4979
    swc1	$f1,20($v0)
    # Line 4980
    jal	__glDlistAppendOp
    # Line 4978
    swc1	$f0,16($v0)
    # Line 4981
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_PolygonOffset

# Function: __gllc_Indexub
# Declared: Line 4984 (Source lines: 4985-4997)
# Address: 0x0dbb4b00 - 0x0dbb4b8c (Size: 140 bytes, Frame: 48)
.globl __gllc_Indexub
.ent __gllc_Indexub
__gllc_Indexub:
    # Line 4990
    li	$a1,4
    # Line 4985
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 4988
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 4985
    lui	$v0,0x5
    addiu	$v0,$v0,-25704
    addu	$gp,$t9,$v0
    # Line 4990
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb4b48
    # Line 4991
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb4b48:
    # Line 4996
    la	$a2,__glle_Indexubv
    # Line 4995
    ld	$a3,8($sp)
    # Line 4994
    ld	$a0,0($sp)
    # Line 4992
    li	$a1,221
    sh	$a1,12($v0)
    # Line 4994
    sb	$a0,16($v0)
    # Line 4996
    move	$a1,$v0
    # Line 4995
    lw	$v1,4696($a3)
    # Line 4996
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 4995
    ori	$v1,$v1,0x10
    # Line 4996
    jal	__glDlistAppendOp
    # Line 4995
    sw	$v1,4696($a3)
    # Line 4997
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Indexub

# Function: __gllc_Indexubv
# Declared: Line 5000 (Source lines: 5001-5013)
# Address: 0x0dbb4b8c - 0x0dbb4c1c (Size: 144 bytes, Frame: 48)
.globl __gllc_Indexubv
.ent __gllc_Indexubv
__gllc_Indexubv:
    # Line 5006
    li	$a1,4
    # Line 5001
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 5004
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 5001
    lui	$v0,0x5
    addiu	$v0,$v0,-25844
    addu	$gp,$t9,$v0
    # Line 5006
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb4bd4
    # Line 5007
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb4bd4:
    # Line 5010
    ld	$a0,0($sp)
    # Line 5008
    li	$a1,221
    sh	$a1,12($v0)
    # Line 5010
    lbu	$a0,0($a0)
    # Line 5012
    la	$a2,__glle_Indexubv
    # Line 5011
    ld	$a3,8($sp)
    # Line 5010
    sb	$a0,16($v0)
    # Line 5012
    move	$a1,$v0
    # Line 5011
    lw	$v1,4696($a3)
    # Line 5012
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$a3
    # Line 5011
    ori	$v1,$v1,0x10
    # Line 5012
    jal	__glDlistAppendOp
    # Line 5011
    sw	$v1,4696($a3)
    # Line 5013
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Indexubv

# Function: __gllc_SampleMaskSGIS
# Declared: Line 5018 (Source lines: 5019-5031)
# Address: 0x0dbb4c1c - 0x0dbb4ca0 (Size: 132 bytes, Frame: 192)
.globl __gllc_SampleMaskSGIS
.ent __gllc_SampleMaskSGIS
__gllc_SampleMaskSGIS:
    # Line 5019
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    # Line 5024
    li	$a1,8
    sdc1	$f12,0($sp)
    sd	$gp,24($sp)
    # Line 5019
    lui	$at,0x5
    addiu	$at,$at,-25988
    addu	$gp,$t9,$at
    # Line 5024
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 5022
    lw	$a0,__glCurrentContext
    sd	$ra,32($sp)
    # Line 5024
    jal	__glDlistAllocOp2
    sd	$a0,16($sp)
    bnez	$v0,.L0dbb4c64
    # Line 5025
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbb4c64:
    # Line 5030
    la	$a2,__glle_SampleMaskSGIS
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 5026
    li	$v1,222
    sh	$v1,12($v0)
    # Line 5029
    ld	$a3,8($sp)
    # Line 5030
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 5028
    ldc1	$f0,0($sp)
    # Line 5029
    sb	$a3,20($v0)
    # Line 5030
    jal	__glDlistAppendOp
    # Line 5028
    swc1	$f0,16($v0)
    # Line 5031
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_SampleMaskSGIS

# Function: __gllc_SamplePatternSGIS
# Declared: Line 5034 (Source lines: 5035-5046)
# Address: 0x0dbb4ca0 - 0x0dbb4d1c (Size: 124 bytes, Frame: 48)
.globl __gllc_SamplePatternSGIS
.ent __gllc_SamplePatternSGIS
__gllc_SamplePatternSGIS:
    # Line 5040
    li	$a1,4
    # Line 5035
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 5038
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 5035
    lui	$v0,0x5
    addiu	$v0,$v0,-26120
    addu	$gp,$t9,$v0
    # Line 5040
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb4ce8
    # Line 5041
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb4ce8:
    # Line 5045
    la	$a2,__glle_SamplePatternSGIS
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 5042
    li	$v1,223
    # Line 5045
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 5044
    ld	$a3,0($sp)
    # Line 5042
    sh	$v1,12($v0)
    # Line 5045
    jal	__glDlistAppendOp
    # Line 5044
    sw	$a3,16($v0)
    # Line 5046
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_SamplePatternSGIS

# Function: __gllc_TagSampleBufferSGIX
# Declared: Line 5049 (Source lines: 5050-5058)
# Address: 0x0dbb4d1c - 0x0dbb4d88 (Size: 108 bytes, Frame: 32)
.globl __gllc_TagSampleBufferSGIX
.ent __gllc_TagSampleBufferSGIX
__gllc_TagSampleBufferSGIX:
    # Line 5054
    move	$a1,$zero
    # Line 5050
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x5
    addiu	$at,$at,-26244
    addu	$gp,$t9,$at
    # Line 5054
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 5052
    lw	$a0,__glCurrentContext
    sd	$ra,16($sp)
    # Line 5054
    jal	__glDlistAllocOp2
    sd	$a0,0($sp)
    bnez	$v0,.L0dbb4d5c
    # Line 5055
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0dbb4d5c:
    # Line 5057
    la	$a2,__glle_TagSampleBufferSGIX
    move	$a1,$v0
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    ld	$a0,0($sp)
    # Line 5056
    li	$v1,224
    # Line 5057
    jal	__glDlistAppendOp
    # Line 5056
    sh	$v1,12($v0)
    # Line 5058
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __gllc_TagSampleBufferSGIX

# Function: __gllc_DetailTexFuncSGIS
# Declared: Line 5061 (Source lines: 5062-5084)
# Address: 0x0dbb4d88 - 0x0dbb4e70 (Size: 232 bytes, Frame: 224)
.globl __gllc_DetailTexFuncSGIS
.ent __gllc_DetailTexFuncSGIS
__gllc_DetailTexFuncSGIS:
    # Line 5062
    addiu	$sp,$sp,-96
    sd	$ra,56($sp)
    sd	$s0,40($sp)
    # Line 5067
    lw	$s0,__glCurrentContext
    sd	$a2,16($sp)
    sd	$a0,8($sp)
    sd	$s1,48($sp)
    # Line 5062
    move	$s1,$a1
    sd	$gp,32($sp)
    lui	$at,0x5
    addiu	$at,$at,-26352
    # Line 5067
    bltz	$a1,.L0dbb4e4c
    # Line 5062
    addu	$gp,$t9,$at
    # Line 5075
    move	$a0,$s0
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sll	$a1,$s1,0x3
    sd	$a1,0($sp)
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,8
    sd	$v0,24($sp)
    bnez	$v0,.L0dbb4df4
    ld	$ra,56($sp)
    ld	$gp,32($sp)
    # Line 5076
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb4df4:
    ld	$a2,0($sp)
    # Line 5081
    ld	$a1,16($sp)
    # Line 5077
    li	$a3,225
    # Line 5081
    ld	$a4,24($sp)
    # lw $t9, -17848($gp) # &memcpy
    # Line 5079
    ld	$a5,8($sp)
    # Line 5081
    addiu	$a0,$a4,24
    # Line 5080
    sw	$s1,20($a4)
    # Line 5079
    sw	$a5,16($a4)
    # Line 5081
    jal	memcpy
    # Line 5077
    sh	$a3,12($a4)
    # Line 5083
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,24($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_DetailTexFuncSGIS
    ld	$gp,32($sp)
    # Line 5084
    ld	$ra,56($sp)
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb4e4c:
    # Line 5071
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s0
    ld	$gp,32($sp)
    # Line 5072
    ld	$ra,56($sp)
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_DetailTexFuncSGIS

# Function: __gllc_SharpenTexFuncSGIS
# Declared: Line 5088 (Source lines: 5089-5111)
# Address: 0x0dbb4e70 - 0x0dbb4f58 (Size: 232 bytes, Frame: 224)
.globl __gllc_SharpenTexFuncSGIS
.ent __gllc_SharpenTexFuncSGIS
__gllc_SharpenTexFuncSGIS:
    # Line 5089
    addiu	$sp,$sp,-96
    sd	$ra,56($sp)
    sd	$s0,40($sp)
    # Line 5094
    lw	$s0,__glCurrentContext
    sd	$a2,16($sp)
    sd	$a0,8($sp)
    sd	$s1,48($sp)
    # Line 5089
    move	$s1,$a1
    sd	$gp,32($sp)
    lui	$at,0x5
    addiu	$at,$at,-26584
    # Line 5094
    bltz	$a1,.L0dbb4f34
    # Line 5089
    addu	$gp,$t9,$at
    # Line 5102
    move	$a0,$s0
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sll	$a1,$s1,0x3
    sd	$a1,0($sp)
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,8
    sd	$v0,24($sp)
    bnez	$v0,.L0dbb4edc
    ld	$ra,56($sp)
    ld	$gp,32($sp)
    # Line 5103
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb4edc:
    ld	$a2,0($sp)
    # Line 5108
    ld	$a1,16($sp)
    # Line 5104
    li	$a3,226
    # Line 5108
    ld	$a4,24($sp)
    # lw $t9, -17848($gp) # &memcpy
    # Line 5106
    ld	$a5,8($sp)
    # Line 5108
    addiu	$a0,$a4,24
    # Line 5107
    sw	$s1,20($a4)
    # Line 5106
    sw	$a5,16($a4)
    # Line 5108
    jal	memcpy
    # Line 5104
    sh	$a3,12($a4)
    # Line 5110
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,24($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_SharpenTexFuncSGIS
    ld	$gp,32($sp)
    # Line 5111
    ld	$ra,56($sp)
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb4f34:
    # Line 5098
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s0
    ld	$gp,32($sp)
    # Line 5099
    ld	$ra,56($sp)
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_SharpenTexFuncSGIS

# Function: __gllc_ColorTableParameterfvSGI
# Declared: Line 5116 (Source lines: 5117-5139)
# Address: 0x0dbb4f58 - 0x0dbb5048 (Size: 240 bytes, Frame: 224)
.globl __gllc_ColorTableParameterfvSGI
.ent __gllc_ColorTableParameterfvSGI
__gllc_ColorTableParameterfvSGI:
    # Line 5117
    move	$at,$a1
    addiu	$sp,$sp,-96
    sd	$s0,56($sp)
    # Line 5122
    lw	$s0,__glCurrentContext
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$gp,40($sp)
    # Line 5117
    lui	$v0,0x5
    addiu	$v0,$v0,-26816
    addu	$gp,$t9,$v0
    # Line 5124
    # lw $t9, -25532($gp) # &__glColorTableParameterfvSGI_size
    sd	$a0,16($sp)
    sd	$ra,48($sp)
    jal	__glColorTableParameterfvSGI_size
    move	$a0,$a1
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbb5028
    sd	$a5,24($sp)
    # Line 5130
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$a5,8
    bnez	$v0,.L0dbb4fd0
    sd	$v0,32($sp)
    # Line 5131
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb4fd0:
    ld	$a2,24($sp)
    # Line 5136
    ld	$a1,0($sp)
    # Line 5132
    li	$a3,228
    # Line 5136
    # lw $t9, -17848($gp) # &memcpy
    ld	$a4,32($sp)
    # Line 5135
    ld	$a6,8($sp)
    # Line 5134
    ld	$a5,16($sp)
    # Line 5136
    addiu	$a0,$a4,24
    # Line 5135
    sw	$a6,20($a4)
    # Line 5134
    sw	$a5,16($a4)
    # Line 5136
    jal	memcpy
    # Line 5132
    sh	$a3,12($a4)
    # Line 5138
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,32($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_ColorTableParameterfvSGI
    # Line 5139
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb5028:
    # Line 5126
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    # Line 5127
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_ColorTableParameterfvSGI

# Function: __gllc_ColorTableParameterivSGI
# Declared: Line 5142 (Source lines: 5143-5165)
# Address: 0x0dbb5048 - 0x0dbb5138 (Size: 240 bytes, Frame: 224)
.globl __gllc_ColorTableParameterivSGI
.ent __gllc_ColorTableParameterivSGI
__gllc_ColorTableParameterivSGI:
    # Line 5143
    move	$at,$a1
    addiu	$sp,$sp,-96
    sd	$s0,56($sp)
    # Line 5148
    lw	$s0,__glCurrentContext
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$gp,40($sp)
    # Line 5143
    lui	$v0,0x5
    addiu	$v0,$v0,-27056
    addu	$gp,$t9,$v0
    # Line 5150
    # lw $t9, -25528($gp) # &__glColorTableParameterivSGI_size
    sd	$a0,16($sp)
    sd	$ra,48($sp)
    jal	__glColorTableParameterivSGI_size
    move	$a0,$a1
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbb5118
    sd	$a5,24($sp)
    # Line 5156
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$a5,8
    bnez	$v0,.L0dbb50c0
    sd	$v0,32($sp)
    # Line 5157
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb50c0:
    ld	$a2,24($sp)
    # Line 5162
    ld	$a1,0($sp)
    # Line 5158
    li	$a3,229
    # Line 5162
    # lw $t9, -17848($gp) # &memcpy
    ld	$a4,32($sp)
    # Line 5161
    ld	$a6,8($sp)
    # Line 5160
    ld	$a5,16($sp)
    # Line 5162
    addiu	$a0,$a4,24
    # Line 5161
    sw	$a6,20($a4)
    # Line 5160
    sw	$a5,16($a4)
    # Line 5162
    jal	memcpy
    # Line 5158
    sh	$a3,12($a4)
    # Line 5164
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,32($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_ColorTableParameterivSGI
    # Line 5165
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb5118:
    # Line 5152
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    # Line 5153
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_ColorTableParameterivSGI

# Function: __gllc_CopyColorTableSGI
# Declared: Line 5168 (Source lines: 5169-5184)
# Address: 0x0dbb5138 - 0x0dbb51e4 (Size: 172 bytes, Frame: 240)
.globl __gllc_CopyColorTableSGI
.ent __gllc_CopyColorTableSGI
__gllc_CopyColorTableSGI:
    # Line 5169
    addiu	$sp,$sp,-112
    sd	$a1,32($sp)
    # Line 5174
    li	$a1,20
    sd	$a4,8($sp)
    sd	$a3,24($sp)
    sd	$a2,40($sp)
    sd	$a0,0($sp)
    # Line 5172
    lw	$at,__glCurrentContext
    sd	$gp,48($sp)
    # Line 5169
    lui	$v0,0x5
    addiu	$v0,$v0,-27296
    addu	$gp,$t9,$v0
    # Line 5174
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,56($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb5190
    # Line 5175
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dbb5190:
    # Line 5183
    la	$a2,__glle_CopyColorTableSGI
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 5176
    li	$v1,230
    sh	$v1,12($v0)
    # Line 5178
    ld	$a3,0($sp)
    # Line 5183
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 5179
    ld	$a4,32($sp)
    # Line 5182
    ld	$a7,8($sp)
    # Line 5181
    ld	$a6,24($sp)
    # Line 5180
    ld	$a5,40($sp)
    # Line 5182
    sw	$a7,32($v0)
    # Line 5181
    sw	$a6,28($v0)
    # Line 5180
    sw	$a5,24($v0)
    # Line 5179
    sw	$a4,20($v0)
    # Line 5183
    jal	__glDlistAppendOp
    # Line 5178
    sw	$a3,16($v0)
    # Line 5184
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __gllc_CopyColorTableSGI

# Function: __gllc_PixelTexGenSGIX
# Declared: Line 5192 (Source lines: 5193-5204)
# Address: 0x0dbb51e4 - 0x0dbb5260 (Size: 124 bytes, Frame: 48)
.globl __gllc_PixelTexGenSGIX
.ent __gllc_PixelTexGenSGIX
__gllc_PixelTexGenSGIX:
    # Line 5198
    li	$a1,4
    # Line 5193
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 5196
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 5193
    lui	$v0,0x5
    addiu	$v0,$v0,-27468
    addu	$gp,$t9,$v0
    # Line 5198
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb522c
    # Line 5199
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb522c:
    # Line 5203
    la	$a2,__glle_PixelTexGenSGIX
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 5200
    li	$v1,233
    # Line 5203
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 5202
    ld	$a3,0($sp)
    # Line 5200
    sh	$v1,12($v0)
    # Line 5203
    jal	__glDlistAppendOp
    # Line 5202
    sw	$a3,16($v0)
    # Line 5204
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_PixelTexGenSGIX

# Function: __gllc_SpriteParameterfSGIX
# Declared: Line 5207 (Source lines: 5208-5220)
# Address: 0x0dbb5260 - 0x0dbb52e8 (Size: 136 bytes, Frame: 192)
.globl __gllc_SpriteParameterfSGIX
.ent __gllc_SpriteParameterfSGIX
__gllc_SpriteParameterfSGIX:
    # Line 5213
    li	$a1,8
    # Line 5208
    addiu	$sp,$sp,-64
    sdc1	$f13,0($sp)
    sd	$a0,8($sp)
    # Line 5211
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 5208
    lui	$v0,0x5
    addiu	$v0,$v0,-27592
    addu	$gp,$t9,$v0
    # Line 5213
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb52ac
    # Line 5214
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbb52ac:
    # Line 5219
    la	$a2,__glle_SpriteParameterfSGIX
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 5215
    li	$v1,234
    sh	$v1,12($v0)
    # Line 5218
    ldc1	$f0,0($sp)
    # Line 5219
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 5217
    ld	$a3,8($sp)
    # Line 5218
    swc1	$f0,20($v0)
    # Line 5219
    jal	__glDlistAppendOp
    # Line 5217
    sw	$a3,16($v0)
    # Line 5220
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_SpriteParameterfSGIX

# Function: __gllc_SpriteParameterfvSGIX
# Declared: Line 5223 (Source lines: 5224-5245)
# Address: 0x0dbb52e8 - 0x0dbb53c4 (Size: 220 bytes, Frame: 208)
.globl __gllc_SpriteParameterfvSGIX
.ent __gllc_SpriteParameterfvSGIX
__gllc_SpriteParameterfvSGIX:
    # Line 5224
    addiu	$sp,$sp,-80
    sd	$s0,48($sp)
    # Line 5229
    lw	$s0,__glCurrentContext
    sd	$gp,32($sp)
    # Line 5224
    lui	$at,0x5
    addiu	$at,$at,-27728
    addu	$gp,$t9,$at
    # Line 5231
    # lw $t9, -25524($gp) # &__glSpriteParameterfvSGIX_size
    sd	$a1,0($sp)
    sd	$ra,40($sp)
    jal	__glSpriteParameterfvSGIX_size
    sd	$a0,8($sp)
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbb53a4
    sd	$a5,16($sp)
    # Line 5237
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$a5,4
    bnez	$v0,.L0dbb5354
    sd	$v0,24($sp)
    # Line 5238
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb5354:
    ld	$a2,16($sp)
    # Line 5242
    ld	$a1,0($sp)
    # Line 5239
    li	$a3,235
    # Line 5242
    ld	$a4,24($sp)
    # Line 5241
    ld	$a5,8($sp)
    # Line 5242
    # lw $t9, -17848($gp) # &memcpy
    addiu	$a0,$a4,20
    # Line 5241
    sw	$a5,16($a4)
    # Line 5242
    jal	memcpy
    # Line 5239
    sh	$a3,12($a4)
    # Line 5244
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,24($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_SpriteParameterfvSGIX
    # Line 5245
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb53a4:
    # Line 5233
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    # Line 5234
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_SpriteParameterfvSGIX

# Function: __gllc_SpriteParameteriSGIX
# Declared: Line 5248 (Source lines: 5249-5261)
# Address: 0x0dbb53c4 - 0x0dbb544c (Size: 136 bytes, Frame: 192)
.globl __gllc_SpriteParameteriSGIX
.ent __gllc_SpriteParameteriSGIX
__gllc_SpriteParameteriSGIX:
    # Line 5249
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    # Line 5254
    li	$a1,8
    sd	$a0,0($sp)
    # Line 5252
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 5249
    lui	$v0,0x5
    addiu	$v0,$v0,-27948
    addu	$gp,$t9,$v0
    # Line 5254
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb5410
    # Line 5255
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbb5410:
    # Line 5260
    la	$a2,__glle_SpriteParameteriSGIX
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 5256
    li	$v1,236
    sh	$v1,12($v0)
    # Line 5259
    ld	$a4,8($sp)
    # Line 5260
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 5258
    ld	$a3,0($sp)
    # Line 5259
    sw	$a4,20($v0)
    # Line 5260
    jal	__glDlistAppendOp
    # Line 5258
    sw	$a3,16($v0)
    # Line 5261
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_SpriteParameteriSGIX

# Function: __gllc_SpriteParameterivSGIX
# Declared: Line 5264 (Source lines: 5265-5286)
# Address: 0x0dbb544c - 0x0dbb5528 (Size: 220 bytes, Frame: 208)
.globl __gllc_SpriteParameterivSGIX
.ent __gllc_SpriteParameterivSGIX
__gllc_SpriteParameterivSGIX:
    # Line 5265
    addiu	$sp,$sp,-80
    sd	$s0,48($sp)
    # Line 5270
    lw	$s0,__glCurrentContext
    sd	$gp,32($sp)
    # Line 5265
    lui	$at,0x5
    addiu	$at,$at,-28084
    addu	$gp,$t9,$at
    # Line 5272
    # lw $t9, -25520($gp) # &__glSpriteParameterivSGIX_size
    sd	$a1,0($sp)
    sd	$ra,40($sp)
    jal	__glSpriteParameterivSGIX_size
    sd	$a0,8($sp)
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbb5508
    sd	$a5,16($sp)
    # Line 5278
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$a5,4
    bnez	$v0,.L0dbb54b8
    sd	$v0,24($sp)
    # Line 5279
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb54b8:
    ld	$a2,16($sp)
    # Line 5283
    ld	$a1,0($sp)
    # Line 5280
    li	$a3,237
    # Line 5283
    ld	$a4,24($sp)
    # Line 5282
    ld	$a5,8($sp)
    # Line 5283
    # lw $t9, -17848($gp) # &memcpy
    addiu	$a0,$a4,20
    # Line 5282
    sw	$a5,16($a4)
    # Line 5283
    jal	memcpy
    # Line 5280
    sh	$a3,12($a4)
    # Line 5285
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,24($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_SpriteParameterivSGIX
    # Line 5286
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb5508:
    # Line 5274
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    # Line 5275
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_SpriteParameterivSGIX

# Function: __gllc_TexFilterFuncSGIS
# Declared: Line 5290 (Source lines: 5291-5314)
# Address: 0x0dbb5528 - 0x0dbb561c (Size: 244 bytes, Frame: 240)
.globl __gllc_TexFilterFuncSGIS
.ent __gllc_TexFilterFuncSGIS
__gllc_TexFilterFuncSGIS:
    # Line 5291
    addiu	$sp,$sp,-112
    sd	$ra,64($sp)
    sd	$s0,48($sp)
    # Line 5296
    lw	$s0,__glCurrentContext
    sd	$a3,16($sp)
    sd	$a1,24($sp)
    sd	$a0,8($sp)
    sd	$s1,56($sp)
    # Line 5291
    move	$s1,$a2
    sd	$gp,40($sp)
    lui	$at,0x5
    addiu	$at,$at,-28304
    # Line 5296
    bltz	$a2,.L0dbb55f8
    # Line 5291
    addu	$gp,$t9,$at
    # Line 5304
    move	$a0,$s0
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sll	$a1,$s1,0x2
    sd	$a1,0($sp)
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,12
    sd	$v0,32($sp)
    bnez	$v0,.L0dbb5598
    ld	$ra,64($sp)
    ld	$gp,40($sp)
    # Line 5305
    ld	$s0,48($sp)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dbb5598:
    ld	$a2,0($sp)
    # Line 5311
    ld	$a1,16($sp)
    # Line 5306
    li	$a3,238
    # Line 5311
    # lw $t9, -17848($gp) # &memcpy
    ld	$a4,32($sp)
    # Line 5308
    ld	$a5,8($sp)
    # Line 5309
    ld	$a6,24($sp)
    # Line 5311
    addiu	$a0,$a4,28
    # Line 5310
    sw	$s1,24($a4)
    # Line 5309
    sw	$a6,20($a4)
    # Line 5308
    sw	$a5,16($a4)
    # Line 5311
    jal	memcpy
    # Line 5306
    sh	$a3,12($a4)
    # Line 5313
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,32($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_TexFilterFuncSGIS
    ld	$gp,40($sp)
    # Line 5314
    ld	$ra,64($sp)
    ld	$s0,48($sp)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dbb55f8:
    # Line 5300
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s0
    ld	$gp,40($sp)
    # Line 5301
    ld	$ra,64($sp)
    ld	$s0,48($sp)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __gllc_TexFilterFuncSGIS

# Function: __gllc_PointParameterfSGIS
# Declared: Line 5317 (Source lines: 5318-5330)
# Address: 0x0dbb561c - 0x0dbb56a4 (Size: 136 bytes, Frame: 192)
.globl __gllc_PointParameterfSGIS
.ent __gllc_PointParameterfSGIS
__gllc_PointParameterfSGIS:
    # Line 5323
    li	$a1,8
    # Line 5318
    addiu	$sp,$sp,-64
    sdc1	$f13,0($sp)
    sd	$a0,8($sp)
    # Line 5321
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 5318
    lui	$v0,0x5
    addiu	$v0,$v0,-28548
    addu	$gp,$t9,$v0
    # Line 5323
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb5668
    # Line 5324
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbb5668:
    # Line 5329
    la	$a2,__glle_PointParameterfSGIS
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 5325
    li	$v1,239
    sh	$v1,12($v0)
    # Line 5328
    ldc1	$f0,0($sp)
    # Line 5329
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 5327
    ld	$a3,8($sp)
    # Line 5328
    swc1	$f0,20($v0)
    # Line 5329
    jal	__glDlistAppendOp
    # Line 5327
    sw	$a3,16($v0)
    # Line 5330
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_PointParameterfSGIS

# Function: __gllc_PointParameterfvSGIS
# Declared: Line 5333 (Source lines: 5334-5355)
# Address: 0x0dbb56a4 - 0x0dbb5780 (Size: 220 bytes, Frame: 208)
.globl __gllc_PointParameterfvSGIS
.ent __gllc_PointParameterfvSGIS
__gllc_PointParameterfvSGIS:
    # Line 5334
    addiu	$sp,$sp,-80
    sd	$s0,48($sp)
    # Line 5339
    lw	$s0,__glCurrentContext
    sd	$gp,32($sp)
    # Line 5334
    lui	$at,0x5
    addiu	$at,$at,-28684
    addu	$gp,$t9,$at
    # Line 5341
    # lw $t9, -25516($gp) # &__glPointParameterfvSGIS_size
    sd	$a1,0($sp)
    sd	$ra,40($sp)
    jal	__glPointParameterfvSGIS_size
    sd	$a0,8($sp)
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbb5760
    sd	$a5,16($sp)
    # Line 5347
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$a5,4
    bnez	$v0,.L0dbb5710
    sd	$v0,24($sp)
    # Line 5348
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb5710:
    ld	$a2,16($sp)
    # Line 5352
    ld	$a1,0($sp)
    # Line 5349
    li	$a3,240
    # Line 5352
    ld	$a4,24($sp)
    # Line 5351
    ld	$a5,8($sp)
    # Line 5352
    # lw $t9, -17848($gp) # &memcpy
    addiu	$a0,$a4,20
    # Line 5351
    sw	$a5,16($a4)
    # Line 5352
    jal	memcpy
    # Line 5349
    sh	$a3,12($a4)
    # Line 5354
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,24($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_PointParameterfvSGIS
    # Line 5355
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb5760:
    # Line 5343
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    # Line 5344
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_PointParameterfvSGIS

# Function: __gllc_FogFuncSGIS
# Declared: Line 5358 (Source lines: 5359-5380)
# Address: 0x0dbb5780 - 0x0dbb585c (Size: 220 bytes, Frame: 208)
.globl __gllc_FogFuncSGIS
.ent __gllc_FogFuncSGIS
__gllc_FogFuncSGIS:
    # Line 5359
    addiu	$sp,$sp,-80
    sd	$ra,48($sp)
    sd	$s0,40($sp)
    # Line 5364
    lw	$s0,__glCurrentContext
    sd	$a1,8($sp)
    sd	$s2,24($sp)
    # Line 5359
    move	$s2,$a0
    sd	$gp,32($sp)
    lui	$at,0x5
    addiu	$at,$at,-28904
    # Line 5364
    bltz	$a0,.L0dbb5838
    # Line 5359
    addu	$gp,$t9,$at
    # Line 5372
    move	$a0,$s0
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sll	$a1,$s2,0x3
    sd	$a1,0($sp)
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,4
    sd	$v0,16($sp)
    bnez	$v0,.L0dbb57e8
    ld	$ra,48($sp)
    ld	$gp,32($sp)
    # Line 5373
    ld	$s0,40($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb57e8:
    ld	$a2,0($sp)
    # Line 5377
    ld	$a1,8($sp)
    ld	$a4,16($sp)
    # Line 5374
    li	$a3,241
    # Line 5377
    # lw $t9, -17848($gp) # &memcpy
    addiu	$a0,$a4,20
    # Line 5376
    sw	$s2,16($a4)
    # Line 5377
    jal	memcpy
    # Line 5374
    sh	$a3,12($a4)
    # Line 5379
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,16($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_FogFuncSGIS
    ld	$gp,32($sp)
    # Line 5380
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb5838:
    # Line 5368
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s0
    ld	$gp,32($sp)
    # Line 5369
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_FogFuncSGIS

# Function: __gllc_ReadInstrumentsSGIX
# Declared: Line 5386 (Source lines: 5387-5398)
# Address: 0x0dbb585c - 0x0dbb58d8 (Size: 124 bytes, Frame: 48)
.globl __gllc_ReadInstrumentsSGIX
.ent __gllc_ReadInstrumentsSGIX
__gllc_ReadInstrumentsSGIX:
    # Line 5392
    li	$a1,4
    # Line 5387
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 5390
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 5387
    lui	$v0,0x5
    addiu	$v0,$v0,-29124
    addu	$gp,$t9,$v0
    # Line 5392
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb58a4
    # Line 5393
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb58a4:
    # Line 5397
    la	$a2,__glle_ReadInstrumentsSGIX
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 5394
    li	$v1,242
    # Line 5397
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 5396
    ld	$a3,0($sp)
    # Line 5394
    sh	$v1,12($v0)
    # Line 5397
    jal	__glDlistAppendOp
    # Line 5396
    sw	$a3,16($v0)
    # Line 5398
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_ReadInstrumentsSGIX

# Function: __gllc_StartInstrumentsSGIX
# Declared: Line 5401 (Source lines: 5402-5410)
# Address: 0x0dbb58d8 - 0x0dbb5944 (Size: 108 bytes, Frame: 32)
.globl __gllc_StartInstrumentsSGIX
.ent __gllc_StartInstrumentsSGIX
__gllc_StartInstrumentsSGIX:
    # Line 5406
    move	$a1,$zero
    # Line 5402
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x5
    addiu	$at,$at,-29248
    addu	$gp,$t9,$at
    # Line 5406
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 5404
    lw	$a0,__glCurrentContext
    sd	$ra,16($sp)
    # Line 5406
    jal	__glDlistAllocOp2
    sd	$a0,0($sp)
    bnez	$v0,.L0dbb5918
    # Line 5407
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0dbb5918:
    # Line 5409
    la	$a2,__glle_StartInstrumentsSGIX
    move	$a1,$v0
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    ld	$a0,0($sp)
    # Line 5408
    li	$v1,243
    # Line 5409
    jal	__glDlistAppendOp
    # Line 5408
    sh	$v1,12($v0)
    # Line 5410
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __gllc_StartInstrumentsSGIX

# Function: __gllc_StopInstrumentsSGIX
# Declared: Line 5413 (Source lines: 5414-5425)
# Address: 0x0dbb5944 - 0x0dbb59c0 (Size: 124 bytes, Frame: 48)
.globl __gllc_StopInstrumentsSGIX
.ent __gllc_StopInstrumentsSGIX
__gllc_StopInstrumentsSGIX:
    # Line 5419
    li	$a1,4
    # Line 5414
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 5417
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 5414
    lui	$v0,0x5
    addiu	$v0,$v0,-29356
    addu	$gp,$t9,$v0
    # Line 5419
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb598c
    # Line 5420
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb598c:
    # Line 5424
    la	$a2,__glle_StopInstrumentsSGIX
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 5421
    li	$v1,244
    # Line 5424
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 5423
    ld	$a3,0($sp)
    # Line 5421
    sh	$v1,12($v0)
    # Line 5424
    jal	__glDlistAppendOp
    # Line 5423
    sw	$a3,16($v0)
    # Line 5425
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_StopInstrumentsSGIX

# Function: __gllc_ReferencePlaneSGIX
# Declared: Line 5429 (Source lines: 5430-5445)
# Address: 0x0dbb59c0 - 0x0dbb5a60 (Size: 160 bytes, Frame: 48)
.globl __gllc_ReferencePlaneSGIX
.ent __gllc_ReferencePlaneSGIX
__gllc_ReferencePlaneSGIX:
    # Line 5435
    li	$a1,32
    # Line 5430
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 5433
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 5430
    lui	$v0,0x5
    addiu	$v0,$v0,-29480
    addu	$gp,$t9,$v0
    # Line 5435
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb5a08
    # Line 5436
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb5a08:
    # Line 5440
    ld	$v1,0($sp)
    # Line 5437
    li	$a1,245
    # Line 5438
    li	$a0,1
    sb	$a0,14($v0)
    # Line 5437
    sh	$a1,12($v0)
    # Line 5440
    ldc1	$f3,0($v1)
    sdc1	$f3,16($v0)
    # Line 5441
    ldc1	$f2,8($v1)
    sdc1	$f2,24($v0)
    # Line 5442
    ldc1	$f1,16($v1)
    # Line 5444
    la	$a2,__glle_ReferencePlaneSGIX
    move	$a1,$v0
    # Line 5442
    sdc1	$f1,32($v0)
    # Line 5444
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 5443
    ldc1	$f0,24($v1)
    # Line 5444
    ld	$a0,8($sp)
    jal	__glDlistAppendOp
    # Line 5443
    sdc1	$f0,40($v0)
    # Line 5445
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_ReferencePlaneSGIX

# Function: __gllc_FrameZoomSGIX
# Declared: Line 5448 (Source lines: 5449-5460)
# Address: 0x0dbb5a60 - 0x0dbb5adc (Size: 124 bytes, Frame: 48)
.globl __gllc_FrameZoomSGIX
.ent __gllc_FrameZoomSGIX
__gllc_FrameZoomSGIX:
    # Line 5454
    li	$a1,4
    # Line 5449
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 5452
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 5449
    lui	$v0,0x5
    addiu	$v0,$v0,-29640
    addu	$gp,$t9,$v0
    # Line 5454
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb5aa8
    # Line 5455
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb5aa8:
    # Line 5459
    la	$a2,__glle_FrameZoomSGIX
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 5456
    li	$v1,246
    # Line 5459
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 5458
    ld	$a3,0($sp)
    # Line 5456
    sh	$v1,12($v0)
    # Line 5459
    jal	__glDlistAppendOp
    # Line 5458
    sw	$a3,16($v0)
    # Line 5460
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_FrameZoomSGIX

# Function: __gllc_DeformSGIX
# Declared: Line 5466 (Source lines: 5467-5478)
# Address: 0x0dbb5adc - 0x0dbb5b58 (Size: 124 bytes, Frame: 48)
.globl __gllc_DeformSGIX
.ent __gllc_DeformSGIX
__gllc_DeformSGIX:
    # Line 5472
    li	$a1,4
    # Line 5467
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 5470
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 5467
    lui	$v0,0x5
    addiu	$v0,$v0,-29764
    addu	$gp,$t9,$v0
    # Line 5472
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb5b24
    # Line 5473
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb5b24:
    # Line 5477
    la	$a2,__glle_DeformSGIX
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 5474
    li	$v1,249
    # Line 5477
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 5476
    ld	$a3,0($sp)
    # Line 5474
    sh	$v1,12($v0)
    # Line 5477
    jal	__glDlistAppendOp
    # Line 5476
    sw	$a3,16($v0)
    # Line 5478
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_DeformSGIX

# Function: __gllc_LoadIdentityDeformationMapSGIX
# Declared: Line 5481 (Source lines: 5482-5493)
# Address: 0x0dbb5b58 - 0x0dbb5bd4 (Size: 124 bytes, Frame: 48)
.globl __gllc_LoadIdentityDeformationMapSGIX
.ent __gllc_LoadIdentityDeformationMapSGIX
__gllc_LoadIdentityDeformationMapSGIX:
    # Line 5487
    li	$a1,4
    # Line 5482
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 5485
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 5482
    lui	$v0,0x5
    addiu	$v0,$v0,-29888
    addu	$gp,$t9,$v0
    # Line 5487
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb5ba0
    # Line 5488
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb5ba0:
    # Line 5492
    la	$a2,__glle_LoadIdentityDeformationMapSGIX
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 5489
    li	$v1,250
    # Line 5492
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 5491
    ld	$a3,0($sp)
    # Line 5489
    sh	$v1,12($v0)
    # Line 5492
    jal	__glDlistAppendOp
    # Line 5491
    sw	$a3,16($v0)
    # Line 5493
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_LoadIdentityDeformationMapSGIX

# Function: __gllc_PixelTransformSGI
# Declared: Line 5502 (Source lines: 5503-5514)
# Address: 0x0dbb5bd4 - 0x0dbb5c50 (Size: 124 bytes, Frame: 48)
.globl __gllc_PixelTransformSGI
.ent __gllc_PixelTransformSGI
__gllc_PixelTransformSGI:
    # Line 5508
    li	$a1,4
    # Line 5503
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    # Line 5506
    lw	$at,__glCurrentContext
    sd	$gp,16($sp)
    # Line 5503
    lui	$v0,0x5
    addiu	$v0,$v0,-30012
    addu	$gp,$t9,$v0
    # Line 5508
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,24($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb5c1c
    # Line 5509
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbb5c1c:
    # Line 5513
    la	$a2,__glle_PixelTransformSGI
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 5510
    li	$v1,251
    # Line 5513
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 5512
    ld	$a3,0($sp)
    # Line 5510
    sh	$v1,12($v0)
    # Line 5513
    jal	__glDlistAppendOp
    # Line 5512
    sw	$a3,16($v0)
    # Line 5514
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_PixelTransformSGI

# Function: __gllc_PixelTransformParameterfSGI
# Declared: Line 5517 (Source lines: 5518-5531)
# Address: 0x0dbb5c50 - 0x0dbb5ce4 (Size: 148 bytes, Frame: 208)
.globl __gllc_PixelTransformParameterfSGI
.ent __gllc_PixelTransformParameterfSGI
__gllc_PixelTransformParameterfSGI:
    # Line 5518
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 5523
    li	$a1,12
    sdc1	$f14,0($sp)
    sd	$a0,8($sp)
    # Line 5521
    lw	$at,__glCurrentContext
    sd	$gp,32($sp)
    # Line 5518
    lui	$v0,0x5
    addiu	$v0,$v0,-30136
    addu	$gp,$t9,$v0
    # Line 5523
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,40($sp)
    sd	$at,24($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb5ca0
    # Line 5524
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb5ca0:
    # Line 5530
    la	$a2,__glle_PixelTransformParameterfSGI
    move	$a1,$v0
    ld	$a0,24($sp)
    # Line 5525
    li	$v1,252
    sh	$v1,12($v0)
    # Line 5527
    ld	$a3,8($sp)
    # Line 5529
    ldc1	$f0,0($sp)
    # Line 5528
    ld	$a4,16($sp)
    # Line 5530
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 5529
    swc1	$f0,24($v0)
    # Line 5528
    sw	$a4,20($v0)
    # Line 5530
    jal	__glDlistAppendOp
    # Line 5527
    sw	$a3,16($v0)
    # Line 5531
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_PixelTransformParameterfSGI

# Function: __gllc_PixelTransformParameterfvSGI
# Declared: Line 5534 (Source lines: 5535-5557)
# Address: 0x0dbb5ce4 - 0x0dbb5dcc (Size: 232 bytes, Frame: 224)
.globl __gllc_PixelTransformParameterfvSGI
.ent __gllc_PixelTransformParameterfvSGI
__gllc_PixelTransformParameterfvSGI:
    # Line 5535
    addiu	$sp,$sp,-96
    sd	$s0,56($sp)
    # Line 5540
    lw	$s0,__glCurrentContext
    sd	$a2,0($sp)
    sd	$gp,40($sp)
    # Line 5535
    lui	$at,0x5
    addiu	$at,$at,-30284
    addu	$gp,$t9,$at
    # Line 5542
    # lw $t9, -25512($gp) # &__glPixelTransformParameterfvSGI_size
    sd	$a1,8($sp)
    sd	$ra,48($sp)
    jal	__glPixelTransformParameterfvSGI_size
    sd	$a0,16($sp)
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbb5dac
    sd	$a5,24($sp)
    # Line 5548
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$a5,8
    bnez	$v0,.L0dbb5d54
    sd	$v0,32($sp)
    # Line 5549
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb5d54:
    ld	$a2,24($sp)
    # Line 5554
    ld	$a1,0($sp)
    # Line 5550
    li	$a3,253
    # Line 5554
    # lw $t9, -17848($gp) # &memcpy
    ld	$a4,32($sp)
    # Line 5553
    ld	$a6,8($sp)
    # Line 5552
    ld	$a5,16($sp)
    # Line 5554
    addiu	$a0,$a4,24
    # Line 5553
    sw	$a6,20($a4)
    # Line 5552
    sw	$a5,16($a4)
    # Line 5554
    jal	memcpy
    # Line 5550
    sh	$a3,12($a4)
    # Line 5556
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,32($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_PixelTransformParameterfvSGI
    # Line 5557
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb5dac:
    # Line 5544
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    # Line 5545
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_PixelTransformParameterfvSGI

# Function: __gllc_PixelTransformParameteriSGI
# Declared: Line 5560 (Source lines: 5561-5574)
# Address: 0x0dbb5dcc - 0x0dbb5e60 (Size: 148 bytes, Frame: 208)
.globl __gllc_PixelTransformParameteriSGI
.ent __gllc_PixelTransformParameteriSGI
__gllc_PixelTransformParameteriSGI:
    # Line 5561
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 5566
    li	$a1,12
    sd	$a2,24($sp)
    sd	$a0,0($sp)
    # Line 5564
    lw	$at,__glCurrentContext
    sd	$gp,32($sp)
    # Line 5561
    lui	$v0,0x5
    addiu	$v0,$v0,-30516
    addu	$gp,$t9,$v0
    # Line 5566
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,40($sp)
    sd	$at,8($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb5e1c
    # Line 5567
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbb5e1c:
    # Line 5573
    la	$a2,__glle_PixelTransformParameteriSGI
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 5568
    li	$v1,254
    sh	$v1,12($v0)
    # Line 5570
    ld	$a3,0($sp)
    # Line 5572
    ld	$a5,24($sp)
    # Line 5571
    ld	$a4,16($sp)
    # Line 5573
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 5572
    sw	$a5,24($v0)
    # Line 5571
    sw	$a4,20($v0)
    # Line 5573
    jal	__glDlistAppendOp
    # Line 5570
    sw	$a3,16($v0)
    # Line 5574
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_PixelTransformParameteriSGI

# Function: __gllc_PixelTransformParameterivSGI
# Declared: Line 5577 (Source lines: 5578-5600)
# Address: 0x0dbb5e60 - 0x0dbb5f48 (Size: 232 bytes, Frame: 224)
.globl __gllc_PixelTransformParameterivSGI
.ent __gllc_PixelTransformParameterivSGI
__gllc_PixelTransformParameterivSGI:
    # Line 5578
    addiu	$sp,$sp,-96
    sd	$s0,56($sp)
    # Line 5583
    lw	$s0,__glCurrentContext
    sd	$a2,0($sp)
    sd	$gp,40($sp)
    # Line 5578
    lui	$at,0x5
    addiu	$at,$at,-30664
    addu	$gp,$t9,$at
    # Line 5585
    # lw $t9, -25508($gp) # &__glPixelTransformParameterivSGI_size
    sd	$a1,8($sp)
    sd	$ra,48($sp)
    jal	__glPixelTransformParameterivSGI_size
    sd	$a0,16($sp)
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbb5f28
    sd	$a5,24($sp)
    # Line 5591
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$a5,8
    bnez	$v0,.L0dbb5ed0
    sd	$v0,32($sp)
    # Line 5592
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb5ed0:
    ld	$a2,24($sp)
    # Line 5597
    ld	$a1,0($sp)
    # Line 5593
    li	$a3,255
    # Line 5597
    # lw $t9, -17848($gp) # &memcpy
    ld	$a4,32($sp)
    # Line 5596
    ld	$a6,8($sp)
    # Line 5595
    ld	$a5,16($sp)
    # Line 5597
    addiu	$a0,$a4,24
    # Line 5596
    sw	$a6,20($a4)
    # Line 5595
    sw	$a5,16($a4)
    # Line 5597
    jal	memcpy
    # Line 5593
    sh	$a3,12($a4)
    # Line 5599
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,32($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_PixelTransformParameterivSGI
    # Line 5600
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbb5f28:
    # Line 5587
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    # Line 5588
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __gllc_PixelTransformParameterivSGI

# Function: __gllc_SubdivPatchParameterfSGIX
# Declared: Line 5606 (Source lines: 5607-5619)
# Address: 0x0dbb5f48 - 0x0dbb5fd0 (Size: 136 bytes, Frame: 192)
.globl __gllc_SubdivPatchParameterfSGIX
.ent __gllc_SubdivPatchParameterfSGIX
__gllc_SubdivPatchParameterfSGIX:
    # Line 5612
    li	$a1,8
    # Line 5607
    addiu	$sp,$sp,-64
    sdc1	$f13,0($sp)
    sd	$a0,8($sp)
    # Line 5610
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 5607
    lui	$v0,0x5
    addiu	$v0,$v0,-30896
    addu	$gp,$t9,$v0
    # Line 5612
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb5f94
    # Line 5613
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbb5f94:
    # Line 5618
    la	$a2,__glle_SubdivPatchParameterfSGIX
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 5614
    li	$v1,256
    sh	$v1,12($v0)
    # Line 5617
    ldc1	$f0,0($sp)
    # Line 5618
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 5616
    ld	$a3,8($sp)
    # Line 5617
    swc1	$f0,20($v0)
    # Line 5618
    jal	__glDlistAppendOp
    # Line 5616
    sw	$a3,16($v0)
    # Line 5619
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_SubdivPatchParameterfSGIX

# Function: __gllc_SubdivPatchParameteriSGIX
# Declared: Line 5622 (Source lines: 5623-5635)
# Address: 0x0dbb5fd0 - 0x0dbb6058 (Size: 136 bytes, Frame: 192)
.globl __gllc_SubdivPatchParameteriSGIX
.ent __gllc_SubdivPatchParameteriSGIX
__gllc_SubdivPatchParameteriSGIX:
    # Line 5623
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    # Line 5628
    li	$a1,8
    sd	$a0,0($sp)
    # Line 5626
    lw	$at,__glCurrentContext
    sd	$gp,24($sp)
    # Line 5623
    lui	$v0,0x5
    addiu	$v0,$v0,-31032
    addu	$gp,$t9,$v0
    # Line 5628
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$ra,32($sp)
    sd	$at,16($sp)
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0dbb601c
    # Line 5629
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbb601c:
    # Line 5634
    la	$a2,__glle_SubdivPatchParameteriSGIX
    move	$a1,$v0
    ld	$a0,16($sp)
    # Line 5630
    li	$v1,257
    sh	$v1,12($v0)
    # Line 5633
    ld	$a4,8($sp)
    # Line 5634
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 5632
    ld	$a3,0($sp)
    # Line 5633
    sw	$a4,20($v0)
    # Line 5634
    jal	__glDlistAppendOp
    # Line 5632
    sw	$a3,16($v0)
    # Line 5635
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_SubdivPatchParameteriSGIX

# Function: __gllc_NurbsKnots1dSGIX
# Declared: Line 5638 (Source lines: 5639-5663)
# Address: 0x0dbb6058 - 0x0dbb6154 (Size: 252 bytes, Frame: 240)
.globl __gllc_NurbsKnots1dSGIX
.ent __gllc_NurbsKnots1dSGIX
__gllc_NurbsKnots1dSGIX:
    # Line 5639
    addiu	$sp,$sp,-112
    sd	$ra,64($sp)
    sd	$s0,48($sp)
    # Line 5644
    lw	$s0,__glCurrentContext
    sd	$a3,16($sp)
    sd	$a1,24($sp)
    sd	$a0,8($sp)
    sd	$s1,56($sp)
    # Line 5639
    move	$s1,$a2
    sd	$gp,40($sp)
    lui	$at,0x5
    addiu	$at,$at,-31168
    # Line 5644
    bltz	$a2,.L0dbb6130
    # Line 5639
    addu	$gp,$t9,$at
    # Line 5652
    move	$a0,$s0
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sll	$a1,$s1,0x3
    sd	$a1,0($sp)
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,12
    sd	$v0,32($sp)
    bnez	$v0,.L0dbb60c8
    ld	$ra,64($sp)
    ld	$gp,40($sp)
    # Line 5653
    ld	$s0,48($sp)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dbb60c8:
    ld	$a2,0($sp)
    # Line 5660
    ld	$a1,16($sp)
    # Line 5654
    li	$a3,258
    # Line 5655
    li	$a5,1
    # Line 5660
    # lw $t9, -17848($gp) # &memcpy
    ld	$a4,32($sp)
    # Line 5657
    ld	$a6,8($sp)
    # Line 5658
    ld	$a7,24($sp)
    # Line 5660
    addiu	$a0,$a4,28
    # Line 5659
    sw	$s1,24($a4)
    # Line 5658
    sw	$a7,20($a4)
    # Line 5657
    sw	$a6,16($a4)
    # Line 5655
    sb	$a5,14($a4)
    # Line 5660
    jal	memcpy
    # Line 5654
    sh	$a3,12($a4)
    # Line 5662
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,32($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_NurbsKnots1dSGIX
    ld	$gp,40($sp)
    # Line 5663
    ld	$ra,64($sp)
    ld	$s0,48($sp)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dbb6130:
    # Line 5648
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s0
    ld	$gp,40($sp)
    # Line 5649
    ld	$ra,64($sp)
    ld	$s0,48($sp)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __gllc_NurbsKnots1dSGIX

# Function: __gllc_NurbsKnots1fSGIX
# Declared: Line 5666 (Source lines: 5667-5690)
# Address: 0x0dbb6154 - 0x0dbb6248 (Size: 244 bytes, Frame: 240)
.globl __gllc_NurbsKnots1fSGIX
.ent __gllc_NurbsKnots1fSGIX
__gllc_NurbsKnots1fSGIX:
    # Line 5667
    addiu	$sp,$sp,-112
    sd	$ra,64($sp)
    sd	$s0,48($sp)
    # Line 5672
    lw	$s0,__glCurrentContext
    sd	$a3,16($sp)
    sd	$a1,24($sp)
    sd	$a0,8($sp)
    sd	$s1,56($sp)
    # Line 5667
    move	$s1,$a2
    sd	$gp,40($sp)
    lui	$at,0x5
    addiu	$at,$at,-31420
    # Line 5672
    bltz	$a2,.L0dbb6224
    # Line 5667
    addu	$gp,$t9,$at
    # Line 5680
    move	$a0,$s0
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sll	$a1,$s1,0x2
    sd	$a1,0($sp)
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,12
    sd	$v0,32($sp)
    bnez	$v0,.L0dbb61c4
    ld	$ra,64($sp)
    ld	$gp,40($sp)
    # Line 5681
    ld	$s0,48($sp)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dbb61c4:
    ld	$a2,0($sp)
    # Line 5687
    ld	$a1,16($sp)
    # Line 5682
    li	$a3,259
    # Line 5687
    # lw $t9, -17848($gp) # &memcpy
    ld	$a4,32($sp)
    # Line 5684
    ld	$a5,8($sp)
    # Line 5685
    ld	$a6,24($sp)
    # Line 5687
    addiu	$a0,$a4,28
    # Line 5686
    sw	$s1,24($a4)
    # Line 5685
    sw	$a6,20($a4)
    # Line 5684
    sw	$a5,16($a4)
    # Line 5687
    jal	memcpy
    # Line 5682
    sh	$a3,12($a4)
    # Line 5689
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,32($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_NurbsKnots1fSGIX
    ld	$gp,40($sp)
    # Line 5690
    ld	$ra,64($sp)
    ld	$s0,48($sp)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dbb6224:
    # Line 5676
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s0
    ld	$gp,40($sp)
    # Line 5677
    ld	$ra,64($sp)
    ld	$s0,48($sp)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __gllc_NurbsKnots1fSGIX

# Function: __gllc_NurbsKnots2dSGIX
# Declared: Line 5693 (Source lines: 5694-5728)
# Address: 0x0dbb6248 - 0x0dbb63cc (Size: 388 bytes, Frame: 176)
.globl __gllc_NurbsKnots2dSGIX
.ent __gllc_NurbsKnots2dSGIX
__gllc_NurbsKnots2dSGIX:
    # Line 5694
    move	$v0,$a6
    addiu	$sp,$sp,-176
    sd	$s1,72($sp)
    # Line 5700
    lw	$s1,__glCurrentContext
    sd	$s0,80($sp)
    # Line 5694
    move	$s0,$a4
    sd	$s2,64($sp)
    move	$s2,$a2
    sd	$gp,88($sp)
    lui	$at,0x5
    addiu	$at,$at,-31664
    # Line 5700
    bltz	$a2,.L0dbb63a0
    # Line 5694
    addu	$gp,$t9,$at
    sd	$ra,96($sp)
    sd	$v0,8($sp)
    sd	$a1,16($sp)
    sd	$a5,24($sp)
    sd	$a3,32($sp)
    # Line 5705
    bltz	$s0,.L0dbb6378
    sd	$a0,40($sp)
    # Line 5713
    move	$a0,$s1
    sll	$a2,$s0,0x3
    sd	$a2,0($sp)
    sll	$a1,$s2,0x3
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$a1,48($sp)
    addu	$a1,$a1,$a2
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,20
    sd	$v0,56($sp)
    bnez	$v0,.L0dbb62e0
    ld	$ra,96($sp)
    ld	$gp,88($sp)
    # Line 5714
    ld	$s0,80($sp)
    ld	$s1,72($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0dbb62e0:
    ld	$a2,48($sp)
    # Line 5723
    ld	$a1,24($sp)
    # Line 5715
    li	$a3,260
    # Line 5716
    li	$a5,1
    # Line 5723
    # lw $t9, -17848($gp) # &memcpy
    # Line 5718
    ld	$a6,40($sp)
    # Line 5723
    ld	$a4,56($sp)
    # Line 5719
    ld	$a7,16($sp)
    # Line 5721
    ld	$t0,32($sp)
    # Line 5723
    addiu	$a0,$a4,36
    # Line 5722
    sw	$s0,32($a4)
    # Line 5721
    sw	$t0,28($a4)
    # Line 5720
    sw	$s2,24($a4)
    # Line 5719
    sw	$a7,20($a4)
    # Line 5718
    sw	$a6,16($a4)
    # Line 5716
    sb	$a5,14($a4)
    # Line 5723
    jal	memcpy
    # Line 5715
    sh	$a3,12($a4)
    ld	$a2,0($sp)
    # Line 5725
    ld	$a3,56($sp)
    ld	$a0,48($sp)
    # lw $t9, -17848($gp) # &memcpy
    ld	$a1,8($sp)
    addu	$a0,$a0,$a3
    jal	memcpy
    addiu	$a0,$a0,36
    # Line 5727
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s1
    ld	$a1,56($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_NurbsKnots2dSGIX
    ld	$gp,88($sp)
    # Line 5728
    ld	$s0,80($sp)
    ld	$ra,96($sp)
    ld	$s1,72($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0dbb6378:
    # Line 5709
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s1
    ld	$gp,88($sp)
    # Line 5710
    ld	$s0,80($sp)
    ld	$ra,96($sp)
    ld	$s1,72($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0dbb63a0:
    # Line 5704
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
    sd	$ra,96($sp)
    jal	__gllc_InvalidValue
    move	$a0,$s1
    ld	$gp,88($sp)
    # Line 5705
    ld	$s0,80($sp)
    ld	$ra,96($sp)
    ld	$s1,72($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end __gllc_NurbsKnots2dSGIX

# Function: __gllc_NurbsKnots2fSGIX
# Declared: Line 5731 (Source lines: 5732-5765)
# Address: 0x0dbb63cc - 0x0dbb6548 (Size: 380 bytes, Frame: 176)
.globl __gllc_NurbsKnots2fSGIX
.ent __gllc_NurbsKnots2fSGIX
__gllc_NurbsKnots2fSGIX:
    # Line 5732
    move	$v0,$a6
    addiu	$sp,$sp,-176
    sd	$s1,72($sp)
    # Line 5738
    lw	$s1,__glCurrentContext
    sd	$s0,80($sp)
    # Line 5732
    move	$s0,$a4
    sd	$s2,64($sp)
    move	$s2,$a2
    sd	$gp,88($sp)
    lui	$at,0x5
    addiu	$at,$at,-32052
    # Line 5738
    bltz	$a2,.L0dbb651c
    # Line 5732
    addu	$gp,$t9,$at
    sd	$ra,96($sp)
    sd	$v0,8($sp)
    sd	$a1,16($sp)
    sd	$a5,24($sp)
    sd	$a3,32($sp)
    # Line 5743
    bltz	$s0,.L0dbb64f4
    sd	$a0,40($sp)
    # Line 5751
    move	$a0,$s1
    sll	$a2,$s0,0x2
    sd	$a2,0($sp)
    sll	$a1,$s2,0x2
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sd	$a1,48($sp)
    addu	$a1,$a1,$a2
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,20
    sd	$v0,56($sp)
    bnez	$v0,.L0dbb6464
    ld	$ra,96($sp)
    ld	$gp,88($sp)
    # Line 5752
    ld	$s0,80($sp)
    ld	$s1,72($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0dbb6464:
    ld	$a2,48($sp)
    # Line 5760
    ld	$a1,24($sp)
    # Line 5753
    li	$a3,261
    # Line 5760
    # lw $t9, -17848($gp) # &memcpy
    # Line 5755
    ld	$a5,40($sp)
    # Line 5760
    ld	$a4,56($sp)
    # Line 5756
    ld	$a6,16($sp)
    # Line 5758
    ld	$a7,32($sp)
    # Line 5760
    addiu	$a0,$a4,36
    # Line 5759
    sw	$s0,32($a4)
    # Line 5758
    sw	$a7,28($a4)
    # Line 5757
    sw	$s2,24($a4)
    # Line 5756
    sw	$a6,20($a4)
    # Line 5755
    sw	$a5,16($a4)
    # Line 5760
    jal	memcpy
    # Line 5753
    sh	$a3,12($a4)
    ld	$a2,0($sp)
    # Line 5762
    ld	$a3,56($sp)
    ld	$a0,48($sp)
    # lw $t9, -17848($gp) # &memcpy
    ld	$a1,8($sp)
    addu	$a0,$a0,$a3
    jal	memcpy
    addiu	$a0,$a0,36
    # Line 5764
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s1
    ld	$a1,56($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_NurbsKnots2fSGIX
    ld	$gp,88($sp)
    # Line 5765
    ld	$s0,80($sp)
    ld	$ra,96($sp)
    ld	$s1,72($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0dbb64f4:
    # Line 5747
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s1
    ld	$gp,88($sp)
    # Line 5748
    ld	$s0,80($sp)
    ld	$ra,96($sp)
    ld	$s1,72($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0dbb651c:
    # Line 5742
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
    sd	$ra,96($sp)
    jal	__gllc_InvalidValue
    move	$a0,$s1
    ld	$gp,88($sp)
    # Line 5743
    ld	$s0,80($sp)
    ld	$ra,96($sp)
    ld	$s1,72($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end __gllc_NurbsKnots2fSGIX

