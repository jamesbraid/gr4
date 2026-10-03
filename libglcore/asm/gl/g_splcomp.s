# Source: g_splcomp.c
# Category: gl
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c g_splcomp.c
# Total Functions: 308

.text

# Function: __glsplc_ListBase
# Declared: Line 48 (Source lines: 49-55)
# Address: 0x0dbba4e4 - 0x0dbba53c (Size: 88 bytes, Frame: 48)
.globl __glsplc_ListBase
.ent __glsplc_ListBase
__glsplc_ListBase:
    # Line 52
    li	$a1,2
    # Line 49
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,16820
    addu	$gp,$t9,$at
    # Line 52
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbba52c
    # Line 55
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 53
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbba52c:
    ld	$gp,8($sp)
    # Line 55
    addiu	$sp,$sp,48
    jr	$ra
    # Line 54
    sw	$v1,0($v0)
.end __glsplc_ListBase

# Function: __glsplc_Color3b
# Declared: Line 60 (Source lines: 61-69)
# Address: 0x0dbba53c - 0x0dbba5ac (Size: 112 bytes, Frame: 208)
.globl __glsplc_Color3b
.ent __glsplc_Color3b
__glsplc_Color3b:
    # Line 61
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    # Line 64
    li	$a1,5
    sd	$a0,0($sp)
    sd	$gp,24($sp)
    # Line 61
    lui	$at,0x4
    addiu	$at,$at,16732
    addu	$gp,$t9,$at
    # Line 64
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,4
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sd	$a2,16($sp)
    # Line 67
    ld	$a3,8($sp)
    # Line 69
    ld	$ra,32($sp)
    # Line 64
    bnez	$v0,.L0dbba590
    ld	$a4,16($sp)
    ld	$gp,24($sp)
    # Line 65
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbba590:
    ld	$gp,24($sp)
    # Line 66
    ld	$v1,0($sp)
    # Line 69
    addiu	$sp,$sp,80
    # Line 68
    sb	$a4,2($v0)
    # Line 67
    sb	$a3,1($v0)
    # Line 69
    jr	$ra
    # Line 66
    sb	$v1,0($v0)
.end __glsplc_Color3b

# Function: __glsplc_Color3bv
# Declared: Line 72 (Source lines: 73-81)
# Address: 0x0dbba5ac - 0x0dbba618 (Size: 108 bytes, Frame: 48)
.globl __glsplc_Color3bv
.ent __glsplc_Color3bv
__glsplc_Color3bv:
    # Line 76
    li	$a1,5
    # Line 73
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,16620
    addu	$gp,$t9,$at
    # Line 76
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    bnez	$v0,.L0dbba5f0
    # Line 81
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 77
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbba5f0:
    ld	$v1,0($sp)
    # Line 78
    lb	$a2,0($v1)
    sb	$a2,0($v0)
    # Line 79
    lb	$a1,1($v1)
    sb	$a1,1($v0)
    ld	$gp,8($sp)
    # Line 80
    lb	$v1,2($v1)
    # Line 81
    addiu	$sp,$sp,48
    jr	$ra
    # Line 80
    sb	$v1,2($v0)
.end __glsplc_Color3bv

# Function: __glsplc_Color3d
# Declared: Line 84 (Source lines: 85-93)
# Address: 0x0dbba618 - 0x0dbba688 (Size: 112 bytes, Frame: 208)
.globl __glsplc_Color3d
.ent __glsplc_Color3d
__glsplc_Color3d:
    # Line 88
    li	$a1,6
    li	$a0,24
    # Line 85
    addiu	$sp,$sp,-80
    sdc1	$f14,16($sp)
    sd	$gp,24($sp)
    lui	$at,0x4
    addiu	$at,$at,16512
    addu	$gp,$t9,$at
    # Line 88
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sdc1	$f13,8($sp)
    sd	$ra,32($sp)
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    # Line 91
    ldc1	$f1,8($sp)
    # Line 93
    ld	$ra,32($sp)
    # Line 88
    bnez	$v0,.L0dbba66c
    ldc1	$f2,16($sp)
    ld	$gp,24($sp)
    # Line 89
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbba66c:
    ld	$gp,24($sp)
    # Line 90
    ldc1	$f0,0($sp)
    # Line 93
    addiu	$sp,$sp,80
    # Line 92
    sdc1	$f2,16($v0)
    # Line 91
    sdc1	$f1,8($v0)
    # Line 93
    jr	$ra
    # Line 90
    sdc1	$f0,0($v0)
.end __glsplc_Color3d

# Function: __glsplc_Color3dv
# Declared: Line 96 (Source lines: 97-105)
# Address: 0x0dbba688 - 0x0dbba6f4 (Size: 108 bytes, Frame: 48)
.globl __glsplc_Color3dv
.ent __glsplc_Color3dv
__glsplc_Color3dv:
    # Line 100
    li	$a1,6
    # Line 97
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,16400
    addu	$gp,$t9,$at
    # Line 100
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc2
    li	$a0,24
    bnez	$v0,.L0dbba6cc
    # Line 105
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 101
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbba6cc:
    ld	$v1,0($sp)
    # Line 102
    ldc1	$f2,0($v1)
    sdc1	$f2,0($v0)
    # Line 103
    ldc1	$f1,8($v1)
    sdc1	$f1,8($v0)
    ld	$gp,8($sp)
    # Line 104
    ldc1	$f0,16($v1)
    # Line 105
    addiu	$sp,$sp,48
    jr	$ra
    # Line 104
    sdc1	$f0,16($v0)
.end __glsplc_Color3dv

# Function: __glsplc_Color3f
# Declared: Line 108 (Source lines: 109-117)
# Address: 0x0dbba6f4 - 0x0dbba764 (Size: 112 bytes, Frame: 208)
.globl __glsplc_Color3f
.ent __glsplc_Color3f
__glsplc_Color3f:
    # Line 112
    li	$a1,7
    li	$a0,12
    # Line 109
    addiu	$sp,$sp,-80
    sdc1	$f14,16($sp)
    sd	$gp,24($sp)
    lui	$at,0x4
    addiu	$at,$at,16292
    addu	$gp,$t9,$at
    # Line 112
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sdc1	$f13,8($sp)
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    # Line 115
    ldc1	$f1,8($sp)
    # Line 117
    ld	$ra,32($sp)
    # Line 112
    bnez	$v0,.L0dbba748
    ldc1	$f2,16($sp)
    ld	$gp,24($sp)
    # Line 113
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbba748:
    ld	$gp,24($sp)
    # Line 114
    ldc1	$f0,0($sp)
    # Line 117
    addiu	$sp,$sp,80
    # Line 116
    swc1	$f2,8($v0)
    # Line 115
    swc1	$f1,4($v0)
    # Line 117
    jr	$ra
    # Line 114
    swc1	$f0,0($v0)
.end __glsplc_Color3f

# Function: __glsplc_Color3fv
# Declared: Line 120 (Source lines: 121-129)
# Address: 0x0dbba764 - 0x0dbba7d0 (Size: 108 bytes, Frame: 48)
.globl __glsplc_Color3fv
.ent __glsplc_Color3fv
__glsplc_Color3fv:
    # Line 124
    li	$a1,7
    # Line 121
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,16180
    addu	$gp,$t9,$at
    # Line 124
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,12
    bnez	$v0,.L0dbba7a8
    # Line 129
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 125
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbba7a8:
    ld	$v1,0($sp)
    # Line 126
    lwc1	$f2,0($v1)
    swc1	$f2,0($v0)
    # Line 127
    lwc1	$f1,4($v1)
    swc1	$f1,4($v0)
    ld	$gp,8($sp)
    # Line 128
    lwc1	$f0,8($v1)
    # Line 129
    addiu	$sp,$sp,48
    jr	$ra
    # Line 128
    swc1	$f0,8($v0)
.end __glsplc_Color3fv

# Function: __glsplc_Color3i
# Declared: Line 132 (Source lines: 133-141)
# Address: 0x0dbba7d0 - 0x0dbba840 (Size: 112 bytes, Frame: 208)
.globl __glsplc_Color3i
.ent __glsplc_Color3i
__glsplc_Color3i:
    # Line 133
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    # Line 136
    li	$a1,8
    sd	$a0,0($sp)
    sd	$gp,24($sp)
    # Line 133
    lui	$at,0x4
    addiu	$at,$at,16072
    addu	$gp,$t9,$at
    # Line 136
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,12
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sd	$a2,16($sp)
    # Line 139
    ld	$a3,8($sp)
    # Line 141
    ld	$ra,32($sp)
    # Line 136
    bnez	$v0,.L0dbba824
    ld	$a4,16($sp)
    ld	$gp,24($sp)
    # Line 137
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbba824:
    ld	$gp,24($sp)
    # Line 138
    ld	$v1,0($sp)
    # Line 141
    addiu	$sp,$sp,80
    # Line 140
    sw	$a4,8($v0)
    # Line 139
    sw	$a3,4($v0)
    # Line 141
    jr	$ra
    # Line 138
    sw	$v1,0($v0)
.end __glsplc_Color3i

# Function: __glsplc_Color3iv
# Declared: Line 144 (Source lines: 145-153)
# Address: 0x0dbba840 - 0x0dbba8ac (Size: 108 bytes, Frame: 48)
.globl __glsplc_Color3iv
.ent __glsplc_Color3iv
__glsplc_Color3iv:
    # Line 148
    li	$a1,8
    # Line 145
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,15960
    addu	$gp,$t9,$at
    # Line 148
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,12
    bnez	$v0,.L0dbba884
    # Line 153
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 149
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbba884:
    ld	$v1,0($sp)
    # Line 150
    lw	$a2,0($v1)
    sw	$a2,0($v0)
    # Line 151
    lw	$a1,4($v1)
    sw	$a1,4($v0)
    ld	$gp,8($sp)
    # Line 152
    lw	$v1,8($v1)
    # Line 153
    addiu	$sp,$sp,48
    jr	$ra
    # Line 152
    sw	$v1,8($v0)
.end __glsplc_Color3iv

# Function: __glsplc_Color3s
# Declared: Line 156 (Source lines: 157-165)
# Address: 0x0dbba8ac - 0x0dbba91c (Size: 112 bytes, Frame: 208)
.globl __glsplc_Color3s
.ent __glsplc_Color3s
__glsplc_Color3s:
    # Line 157
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    # Line 160
    li	$a1,9
    sd	$a0,0($sp)
    sd	$gp,24($sp)
    # Line 157
    lui	$at,0x4
    addiu	$at,$at,15852
    addu	$gp,$t9,$at
    # Line 160
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,8
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sd	$a2,16($sp)
    # Line 163
    ld	$a3,8($sp)
    # Line 165
    ld	$ra,32($sp)
    # Line 160
    bnez	$v0,.L0dbba900
    ld	$a4,16($sp)
    ld	$gp,24($sp)
    # Line 161
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbba900:
    ld	$gp,24($sp)
    # Line 162
    ld	$v1,0($sp)
    # Line 165
    addiu	$sp,$sp,80
    # Line 164
    sh	$a4,4($v0)
    # Line 163
    sh	$a3,2($v0)
    # Line 165
    jr	$ra
    # Line 162
    sh	$v1,0($v0)
.end __glsplc_Color3s

# Function: __glsplc_Color3sv
# Declared: Line 168 (Source lines: 169-177)
# Address: 0x0dbba91c - 0x0dbba988 (Size: 108 bytes, Frame: 48)
.globl __glsplc_Color3sv
.ent __glsplc_Color3sv
__glsplc_Color3sv:
    # Line 172
    li	$a1,9
    # Line 169
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,15740
    addu	$gp,$t9,$at
    # Line 172
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,8
    bnez	$v0,.L0dbba960
    # Line 177
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 173
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbba960:
    ld	$v1,0($sp)
    # Line 174
    lh	$a2,0($v1)
    sh	$a2,0($v0)
    # Line 175
    lh	$a1,2($v1)
    sh	$a1,2($v0)
    ld	$gp,8($sp)
    # Line 176
    lh	$v1,4($v1)
    # Line 177
    addiu	$sp,$sp,48
    jr	$ra
    # Line 176
    sh	$v1,4($v0)
.end __glsplc_Color3sv

# Function: __glsplc_Color3ub
# Declared: Line 180 (Source lines: 181-189)
# Address: 0x0dbba988 - 0x0dbba9f8 (Size: 112 bytes, Frame: 208)
.globl __glsplc_Color3ub
.ent __glsplc_Color3ub
__glsplc_Color3ub:
    # Line 181
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    # Line 184
    li	$a1,10
    sd	$a0,0($sp)
    sd	$gp,24($sp)
    # Line 181
    lui	$at,0x4
    addiu	$at,$at,15632
    addu	$gp,$t9,$at
    # Line 184
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,4
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sd	$a2,16($sp)
    # Line 187
    ld	$a3,8($sp)
    # Line 189
    ld	$ra,32($sp)
    # Line 184
    bnez	$v0,.L0dbba9dc
    ld	$a4,16($sp)
    ld	$gp,24($sp)
    # Line 185
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbba9dc:
    ld	$gp,24($sp)
    # Line 186
    ld	$v1,0($sp)
    # Line 189
    addiu	$sp,$sp,80
    # Line 188
    sb	$a4,2($v0)
    # Line 187
    sb	$a3,1($v0)
    # Line 189
    jr	$ra
    # Line 186
    sb	$v1,0($v0)
.end __glsplc_Color3ub

# Function: __glsplc_Color3ubv
# Declared: Line 192 (Source lines: 193-201)
# Address: 0x0dbba9f8 - 0x0dbbaa64 (Size: 108 bytes, Frame: 48)
.globl __glsplc_Color3ubv
.ent __glsplc_Color3ubv
__glsplc_Color3ubv:
    # Line 196
    li	$a1,10
    # Line 193
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,15520
    addu	$gp,$t9,$at
    # Line 196
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    bnez	$v0,.L0dbbaa3c
    # Line 201
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 197
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbaa3c:
    ld	$v1,0($sp)
    # Line 198
    lbu	$a2,0($v1)
    sb	$a2,0($v0)
    # Line 199
    lbu	$a1,1($v1)
    sb	$a1,1($v0)
    ld	$gp,8($sp)
    # Line 200
    lbu	$v1,2($v1)
    # Line 201
    addiu	$sp,$sp,48
    jr	$ra
    # Line 200
    sb	$v1,2($v0)
.end __glsplc_Color3ubv

# Function: __glsplc_Color3ui
# Declared: Line 204 (Source lines: 205-213)
# Address: 0x0dbbaa64 - 0x0dbbaad4 (Size: 112 bytes, Frame: 208)
.globl __glsplc_Color3ui
.ent __glsplc_Color3ui
__glsplc_Color3ui:
    # Line 205
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    # Line 208
    li	$a1,11
    sd	$a0,0($sp)
    sd	$gp,24($sp)
    # Line 205
    lui	$at,0x4
    addiu	$at,$at,15412
    addu	$gp,$t9,$at
    # Line 208
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,12
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sd	$a2,16($sp)
    # Line 211
    ld	$a3,8($sp)
    # Line 213
    ld	$ra,32($sp)
    # Line 208
    bnez	$v0,.L0dbbaab8
    ld	$a4,16($sp)
    ld	$gp,24($sp)
    # Line 209
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbaab8:
    ld	$gp,24($sp)
    # Line 210
    ld	$v1,0($sp)
    # Line 213
    addiu	$sp,$sp,80
    # Line 212
    sw	$a4,8($v0)
    # Line 211
    sw	$a3,4($v0)
    # Line 213
    jr	$ra
    # Line 210
    sw	$v1,0($v0)
.end __glsplc_Color3ui

# Function: __glsplc_Color3uiv
# Declared: Line 216 (Source lines: 217-225)
# Address: 0x0dbbaad4 - 0x0dbbab40 (Size: 108 bytes, Frame: 48)
.globl __glsplc_Color3uiv
.ent __glsplc_Color3uiv
__glsplc_Color3uiv:
    # Line 220
    li	$a1,11
    # Line 217
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,15300
    addu	$gp,$t9,$at
    # Line 220
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,12
    bnez	$v0,.L0dbbab18
    # Line 225
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 221
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbab18:
    ld	$v1,0($sp)
    # Line 222
    lw	$a2,0($v1)
    sw	$a2,0($v0)
    # Line 223
    lw	$a1,4($v1)
    sw	$a1,4($v0)
    ld	$gp,8($sp)
    # Line 224
    lw	$v1,8($v1)
    # Line 225
    addiu	$sp,$sp,48
    jr	$ra
    # Line 224
    sw	$v1,8($v0)
.end __glsplc_Color3uiv

# Function: __glsplc_Color3us
# Declared: Line 228 (Source lines: 229-237)
# Address: 0x0dbbab40 - 0x0dbbabb0 (Size: 112 bytes, Frame: 208)
.globl __glsplc_Color3us
.ent __glsplc_Color3us
__glsplc_Color3us:
    # Line 229
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    # Line 232
    li	$a1,12
    sd	$a0,0($sp)
    sd	$gp,24($sp)
    # Line 229
    lui	$at,0x4
    addiu	$at,$at,15192
    addu	$gp,$t9,$at
    # Line 232
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,8
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sd	$a2,16($sp)
    # Line 235
    ld	$a3,8($sp)
    # Line 237
    ld	$ra,32($sp)
    # Line 232
    bnez	$v0,.L0dbbab94
    ld	$a4,16($sp)
    ld	$gp,24($sp)
    # Line 233
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbab94:
    ld	$gp,24($sp)
    # Line 234
    ld	$v1,0($sp)
    # Line 237
    addiu	$sp,$sp,80
    # Line 236
    sh	$a4,4($v0)
    # Line 235
    sh	$a3,2($v0)
    # Line 237
    jr	$ra
    # Line 234
    sh	$v1,0($v0)
.end __glsplc_Color3us

# Function: __glsplc_Color3usv
# Declared: Line 240 (Source lines: 241-249)
# Address: 0x0dbbabb0 - 0x0dbbac1c (Size: 108 bytes, Frame: 48)
.globl __glsplc_Color3usv
.ent __glsplc_Color3usv
__glsplc_Color3usv:
    # Line 244
    li	$a1,12
    # Line 241
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,15080
    addu	$gp,$t9,$at
    # Line 244
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,8
    bnez	$v0,.L0dbbabf4
    # Line 249
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 245
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbabf4:
    ld	$v1,0($sp)
    # Line 246
    lhu	$a2,0($v1)
    sh	$a2,0($v0)
    # Line 247
    lhu	$a1,2($v1)
    sh	$a1,2($v0)
    ld	$gp,8($sp)
    # Line 248
    lhu	$v1,4($v1)
    # Line 249
    addiu	$sp,$sp,48
    jr	$ra
    # Line 248
    sh	$v1,4($v0)
.end __glsplc_Color3usv

# Function: __glsplc_Color4b
# Declared: Line 252 (Source lines: 253-262)
# Address: 0x0dbbac1c - 0x0dbbac98 (Size: 124 bytes, Frame: 208)
.globl __glsplc_Color4b
.ent __glsplc_Color4b
__glsplc_Color4b:
    # Line 253
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 256
    li	$a1,13
    sd	$a0,0($sp)
    li	$a0,4
    sd	$gp,32($sp)
    # Line 253
    lui	$at,0x4
    addiu	$at,$at,14972
    addu	$gp,$t9,$at
    # Line 256
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a3,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    ld	$ra,8($sp)
    # Line 260
    ld	$a5,24($sp)
    # Line 256
    bnez	$v0,.L0dbbac74
    # Line 258
    ld	$v1,0($sp)
    ld	$gp,32($sp)
    # Line 257
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbac74:
    # Line 258
    sb	$v1,0($v0)
    ld	$gp,32($sp)
    # Line 259
    ld	$a4,16($sp)
    # Line 261
    sb	$ra,3($v0)
    # Line 262
    ld	$ra,40($sp)
    addiu	$sp,$sp,80
    # Line 260
    sb	$a5,2($v0)
    # Line 262
    jr	$ra
    # Line 259
    sb	$a4,1($v0)
.end __glsplc_Color4b

# Function: __glsplc_Color4bv
# Declared: Line 265 (Source lines: 266-275)
# Address: 0x0dbbac98 - 0x0dbbad0c (Size: 116 bytes, Frame: 48)
.globl __glsplc_Color4bv
.ent __glsplc_Color4bv
__glsplc_Color4bv:
    # Line 269
    li	$a1,13
    # Line 266
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,14848
    addu	$gp,$t9,$at
    # Line 269
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$gp,8($sp)
    bnez	$v0,.L0dbbacd8
    # Line 270
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbacd8:
    ld	$gp,8($sp)
    ld	$v1,0($sp)
    # Line 271
    lb	$ra,0($v1)
    sb	$ra,0($v0)
    # Line 272
    lb	$a2,1($v1)
    sb	$a2,1($v0)
    # Line 273
    lb	$a1,2($v1)
    sb	$a1,2($v0)
    # Line 275
    ld	$ra,16($sp)
    # Line 274
    lb	$v1,3($v1)
    # Line 275
    addiu	$sp,$sp,48
    jr	$ra
    # Line 274
    sb	$v1,3($v0)
.end __glsplc_Color4bv

# Function: __glsplc_Color4d
# Declared: Line 278 (Source lines: 279-288)
# Address: 0x0dbbad0c - 0x0dbbad88 (Size: 124 bytes, Frame: 208)
.globl __glsplc_Color4d
.ent __glsplc_Color4d
__glsplc_Color4d:
    # Line 282
    li	$a1,14
    li	$a0,32
    # Line 279
    addiu	$sp,$sp,-80
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sd	$gp,32($sp)
    lui	$at,0x4
    addiu	$at,$at,14732
    addu	$gp,$t9,$at
    # Line 282
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    # Line 286
    ldc1	$f2,16($sp)
    # Line 284
    ldc1	$f0,0($sp)
    # Line 282
    bnez	$v0,.L0dbbad64
    ldc1	$f3,24($sp)
    ld	$gp,32($sp)
    # Line 283
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbad64:
    # Line 288
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    # Line 285
    ldc1	$f1,8($sp)
    # Line 288
    addiu	$sp,$sp,80
    # Line 287
    sdc1	$f3,24($v0)
    # Line 286
    sdc1	$f2,16($v0)
    # Line 284
    sdc1	$f0,0($v0)
    # Line 288
    jr	$ra
    # Line 285
    sdc1	$f1,8($v0)
.end __glsplc_Color4d

# Function: __glsplc_Color4dv
# Declared: Line 291 (Source lines: 292-301)
# Address: 0x0dbbad88 - 0x0dbbadfc (Size: 116 bytes, Frame: 48)
.globl __glsplc_Color4dv
.ent __glsplc_Color4dv
__glsplc_Color4dv:
    # Line 295
    li	$a1,14
    # Line 292
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,14608
    addu	$gp,$t9,$at
    # Line 295
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc2
    li	$a0,32
    bnez	$v0,.L0dbbadcc
    # Line 301
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 296
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbadcc:
    ld	$v1,0($sp)
    # Line 297
    ldc1	$f3,0($v1)
    sdc1	$f3,0($v0)
    # Line 298
    ldc1	$f2,8($v1)
    sdc1	$f2,8($v0)
    # Line 299
    ldc1	$f1,16($v1)
    sdc1	$f1,16($v0)
    ld	$gp,8($sp)
    # Line 300
    ldc1	$f0,24($v1)
    # Line 301
    addiu	$sp,$sp,48
    jr	$ra
    # Line 300
    sdc1	$f0,24($v0)
.end __glsplc_Color4dv

# Function: __glsplc_Color4f
# Declared: Line 304 (Source lines: 305-314)
# Address: 0x0dbbadfc - 0x0dbbae78 (Size: 124 bytes, Frame: 208)
.globl __glsplc_Color4f
.ent __glsplc_Color4f
__glsplc_Color4f:
    # Line 308
    li	$a1,15
    li	$a0,16
    # Line 305
    addiu	$sp,$sp,-80
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sd	$gp,32($sp)
    lui	$at,0x4
    addiu	$at,$at,14492
    addu	$gp,$t9,$at
    # Line 308
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    # Line 312
    ldc1	$f2,16($sp)
    # Line 310
    ldc1	$f0,0($sp)
    # Line 308
    bnez	$v0,.L0dbbae54
    ldc1	$f3,24($sp)
    ld	$gp,32($sp)
    # Line 309
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbae54:
    # Line 314
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    # Line 311
    ldc1	$f1,8($sp)
    # Line 314
    addiu	$sp,$sp,80
    # Line 313
    swc1	$f3,12($v0)
    # Line 312
    swc1	$f2,8($v0)
    # Line 310
    swc1	$f0,0($v0)
    # Line 314
    jr	$ra
    # Line 311
    swc1	$f1,4($v0)
.end __glsplc_Color4f

# Function: __glsplc_Color4fv
# Declared: Line 317 (Source lines: 318-327)
# Address: 0x0dbbae78 - 0x0dbbaeec (Size: 116 bytes, Frame: 48)
.globl __glsplc_Color4fv
.ent __glsplc_Color4fv
__glsplc_Color4fv:
    # Line 321
    li	$a1,15
    # Line 318
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,14368
    addu	$gp,$t9,$at
    # Line 321
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,16
    bnez	$v0,.L0dbbaebc
    # Line 327
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 322
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbaebc:
    ld	$v1,0($sp)
    # Line 323
    lwc1	$f3,0($v1)
    swc1	$f3,0($v0)
    # Line 324
    lwc1	$f2,4($v1)
    swc1	$f2,4($v0)
    # Line 325
    lwc1	$f1,8($v1)
    swc1	$f1,8($v0)
    ld	$gp,8($sp)
    # Line 326
    lwc1	$f0,12($v1)
    # Line 327
    addiu	$sp,$sp,48
    jr	$ra
    # Line 326
    swc1	$f0,12($v0)
.end __glsplc_Color4fv

# Function: __glsplc_Color4i
# Declared: Line 330 (Source lines: 331-340)
# Address: 0x0dbbaeec - 0x0dbbaf68 (Size: 124 bytes, Frame: 208)
.globl __glsplc_Color4i
.ent __glsplc_Color4i
__glsplc_Color4i:
    # Line 331
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 334
    li	$a1,16
    sd	$a0,0($sp)
    li	$a0,16
    sd	$gp,32($sp)
    # Line 331
    lui	$at,0x4
    addiu	$at,$at,14252
    addu	$gp,$t9,$at
    # Line 334
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a3,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    ld	$ra,8($sp)
    # Line 338
    ld	$a5,24($sp)
    # Line 334
    bnez	$v0,.L0dbbaf44
    # Line 336
    ld	$v1,0($sp)
    ld	$gp,32($sp)
    # Line 335
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbaf44:
    # Line 336
    sw	$v1,0($v0)
    ld	$gp,32($sp)
    # Line 337
    ld	$a4,16($sp)
    # Line 339
    sw	$ra,12($v0)
    # Line 340
    ld	$ra,40($sp)
    addiu	$sp,$sp,80
    # Line 338
    sw	$a5,8($v0)
    # Line 340
    jr	$ra
    # Line 337
    sw	$a4,4($v0)
.end __glsplc_Color4i

# Function: __glsplc_Color4iv
# Declared: Line 343 (Source lines: 344-353)
# Address: 0x0dbbaf68 - 0x0dbbafdc (Size: 116 bytes, Frame: 48)
.globl __glsplc_Color4iv
.ent __glsplc_Color4iv
__glsplc_Color4iv:
    # Line 347
    li	$a1,16
    # Line 344
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,14128
    addu	$gp,$t9,$at
    # Line 347
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,16
    ld	$gp,8($sp)
    bnez	$v0,.L0dbbafa8
    # Line 348
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbafa8:
    ld	$gp,8($sp)
    ld	$v1,0($sp)
    # Line 349
    lw	$ra,0($v1)
    sw	$ra,0($v0)
    # Line 350
    lw	$a2,4($v1)
    sw	$a2,4($v0)
    # Line 351
    lw	$a1,8($v1)
    sw	$a1,8($v0)
    # Line 353
    ld	$ra,16($sp)
    # Line 352
    lw	$v1,12($v1)
    # Line 353
    addiu	$sp,$sp,48
    jr	$ra
    # Line 352
    sw	$v1,12($v0)
.end __glsplc_Color4iv

# Function: __glsplc_Color4s
# Declared: Line 356 (Source lines: 357-366)
# Address: 0x0dbbafdc - 0x0dbbb058 (Size: 124 bytes, Frame: 208)
.globl __glsplc_Color4s
.ent __glsplc_Color4s
__glsplc_Color4s:
    # Line 357
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 360
    li	$a1,17
    sd	$a0,0($sp)
    li	$a0,8
    sd	$gp,32($sp)
    # Line 357
    lui	$at,0x4
    addiu	$at,$at,14012
    addu	$gp,$t9,$at
    # Line 360
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a3,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    ld	$ra,8($sp)
    # Line 364
    ld	$a5,24($sp)
    # Line 360
    bnez	$v0,.L0dbbb034
    # Line 362
    ld	$v1,0($sp)
    ld	$gp,32($sp)
    # Line 361
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbb034:
    # Line 362
    sh	$v1,0($v0)
    ld	$gp,32($sp)
    # Line 363
    ld	$a4,16($sp)
    # Line 365
    sh	$ra,6($v0)
    # Line 366
    ld	$ra,40($sp)
    addiu	$sp,$sp,80
    # Line 364
    sh	$a5,4($v0)
    # Line 366
    jr	$ra
    # Line 363
    sh	$a4,2($v0)
.end __glsplc_Color4s

# Function: __glsplc_Color4sv
# Declared: Line 369 (Source lines: 370-379)
# Address: 0x0dbbb058 - 0x0dbbb0cc (Size: 116 bytes, Frame: 48)
.globl __glsplc_Color4sv
.ent __glsplc_Color4sv
__glsplc_Color4sv:
    # Line 373
    li	$a1,17
    # Line 370
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,13888
    addu	$gp,$t9,$at
    # Line 373
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,8
    ld	$gp,8($sp)
    bnez	$v0,.L0dbbb098
    # Line 374
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbb098:
    ld	$gp,8($sp)
    ld	$v1,0($sp)
    # Line 375
    lh	$ra,0($v1)
    sh	$ra,0($v0)
    # Line 376
    lh	$a2,2($v1)
    sh	$a2,2($v0)
    # Line 377
    lh	$a1,4($v1)
    sh	$a1,4($v0)
    # Line 379
    ld	$ra,16($sp)
    # Line 378
    lh	$v1,6($v1)
    # Line 379
    addiu	$sp,$sp,48
    jr	$ra
    # Line 378
    sh	$v1,6($v0)
.end __glsplc_Color4sv

# Function: __glsplc_Color4ub
# Declared: Line 382 (Source lines: 383-392)
# Address: 0x0dbbb0cc - 0x0dbbb148 (Size: 124 bytes, Frame: 208)
.globl __glsplc_Color4ub
.ent __glsplc_Color4ub
__glsplc_Color4ub:
    # Line 383
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 386
    li	$a1,18
    sd	$a0,0($sp)
    li	$a0,4
    sd	$gp,32($sp)
    # Line 383
    lui	$at,0x4
    addiu	$at,$at,13772
    addu	$gp,$t9,$at
    # Line 386
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a3,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    ld	$ra,8($sp)
    # Line 390
    ld	$a5,24($sp)
    # Line 386
    bnez	$v0,.L0dbbb124
    # Line 388
    ld	$v1,0($sp)
    ld	$gp,32($sp)
    # Line 387
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbb124:
    # Line 388
    sb	$v1,0($v0)
    ld	$gp,32($sp)
    # Line 389
    ld	$a4,16($sp)
    # Line 391
    sb	$ra,3($v0)
    # Line 392
    ld	$ra,40($sp)
    addiu	$sp,$sp,80
    # Line 390
    sb	$a5,2($v0)
    # Line 392
    jr	$ra
    # Line 389
    sb	$a4,1($v0)
.end __glsplc_Color4ub

# Function: __glsplc_Color4ubv
# Declared: Line 395 (Source lines: 396-405)
# Address: 0x0dbbb148 - 0x0dbbb1bc (Size: 116 bytes, Frame: 48)
.globl __glsplc_Color4ubv
.ent __glsplc_Color4ubv
__glsplc_Color4ubv:
    # Line 399
    li	$a1,18
    # Line 396
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,13648
    addu	$gp,$t9,$at
    # Line 399
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$gp,8($sp)
    bnez	$v0,.L0dbbb188
    # Line 400
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbb188:
    ld	$gp,8($sp)
    ld	$v1,0($sp)
    # Line 401
    lbu	$ra,0($v1)
    sb	$ra,0($v0)
    # Line 402
    lbu	$a2,1($v1)
    sb	$a2,1($v0)
    # Line 403
    lbu	$a1,2($v1)
    sb	$a1,2($v0)
    # Line 405
    ld	$ra,16($sp)
    # Line 404
    lbu	$v1,3($v1)
    # Line 405
    addiu	$sp,$sp,48
    jr	$ra
    # Line 404
    sb	$v1,3($v0)
.end __glsplc_Color4ubv

# Function: __glsplc_Color4ui
# Declared: Line 408 (Source lines: 409-418)
# Address: 0x0dbbb1bc - 0x0dbbb238 (Size: 124 bytes, Frame: 208)
.globl __glsplc_Color4ui
.ent __glsplc_Color4ui
__glsplc_Color4ui:
    # Line 409
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 412
    li	$a1,19
    sd	$a0,0($sp)
    li	$a0,16
    sd	$gp,32($sp)
    # Line 409
    lui	$at,0x4
    addiu	$at,$at,13532
    addu	$gp,$t9,$at
    # Line 412
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a3,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    ld	$ra,8($sp)
    # Line 416
    ld	$a5,24($sp)
    # Line 412
    bnez	$v0,.L0dbbb214
    # Line 414
    ld	$v1,0($sp)
    ld	$gp,32($sp)
    # Line 413
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbb214:
    # Line 414
    sw	$v1,0($v0)
    ld	$gp,32($sp)
    # Line 415
    ld	$a4,16($sp)
    # Line 417
    sw	$ra,12($v0)
    # Line 418
    ld	$ra,40($sp)
    addiu	$sp,$sp,80
    # Line 416
    sw	$a5,8($v0)
    # Line 418
    jr	$ra
    # Line 415
    sw	$a4,4($v0)
.end __glsplc_Color4ui

# Function: __glsplc_Color4uiv
# Declared: Line 421 (Source lines: 422-431)
# Address: 0x0dbbb238 - 0x0dbbb2ac (Size: 116 bytes, Frame: 48)
.globl __glsplc_Color4uiv
.ent __glsplc_Color4uiv
__glsplc_Color4uiv:
    # Line 425
    li	$a1,19
    # Line 422
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,13408
    addu	$gp,$t9,$at
    # Line 425
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,16
    ld	$gp,8($sp)
    bnez	$v0,.L0dbbb278
    # Line 426
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbb278:
    ld	$gp,8($sp)
    ld	$v1,0($sp)
    # Line 427
    lw	$ra,0($v1)
    sw	$ra,0($v0)
    # Line 428
    lw	$a2,4($v1)
    sw	$a2,4($v0)
    # Line 429
    lw	$a1,8($v1)
    sw	$a1,8($v0)
    # Line 431
    ld	$ra,16($sp)
    # Line 430
    lw	$v1,12($v1)
    # Line 431
    addiu	$sp,$sp,48
    jr	$ra
    # Line 430
    sw	$v1,12($v0)
.end __glsplc_Color4uiv

# Function: __glsplc_Color4us
# Declared: Line 434 (Source lines: 435-444)
# Address: 0x0dbbb2ac - 0x0dbbb328 (Size: 124 bytes, Frame: 208)
.globl __glsplc_Color4us
.ent __glsplc_Color4us
__glsplc_Color4us:
    # Line 435
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 438
    li	$a1,20
    sd	$a0,0($sp)
    li	$a0,8
    sd	$gp,32($sp)
    # Line 435
    lui	$at,0x4
    addiu	$at,$at,13292
    addu	$gp,$t9,$at
    # Line 438
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a3,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    ld	$ra,8($sp)
    # Line 442
    ld	$a5,24($sp)
    # Line 438
    bnez	$v0,.L0dbbb304
    # Line 440
    ld	$v1,0($sp)
    ld	$gp,32($sp)
    # Line 439
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbb304:
    # Line 440
    sh	$v1,0($v0)
    ld	$gp,32($sp)
    # Line 441
    ld	$a4,16($sp)
    # Line 443
    sh	$ra,6($v0)
    # Line 444
    ld	$ra,40($sp)
    addiu	$sp,$sp,80
    # Line 442
    sh	$a5,4($v0)
    # Line 444
    jr	$ra
    # Line 441
    sh	$a4,2($v0)
.end __glsplc_Color4us

# Function: __glsplc_Color4usv
# Declared: Line 447 (Source lines: 448-457)
# Address: 0x0dbbb328 - 0x0dbbb39c (Size: 116 bytes, Frame: 48)
.globl __glsplc_Color4usv
.ent __glsplc_Color4usv
__glsplc_Color4usv:
    # Line 451
    li	$a1,20
    # Line 448
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,13168
    addu	$gp,$t9,$at
    # Line 451
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,8
    ld	$gp,8($sp)
    bnez	$v0,.L0dbbb368
    # Line 452
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbb368:
    ld	$gp,8($sp)
    ld	$v1,0($sp)
    # Line 453
    lhu	$ra,0($v1)
    sh	$ra,0($v0)
    # Line 454
    lhu	$a2,2($v1)
    sh	$a2,2($v0)
    # Line 455
    lhu	$a1,4($v1)
    sh	$a1,4($v0)
    # Line 457
    ld	$ra,16($sp)
    # Line 456
    lhu	$v1,6($v1)
    # Line 457
    addiu	$sp,$sp,48
    jr	$ra
    # Line 456
    sh	$v1,6($v0)
.end __glsplc_Color4usv

# Function: __glsplc_EdgeFlag
# Declared: Line 460 (Source lines: 461-467)
# Address: 0x0dbbb39c - 0x0dbbb3f4 (Size: 88 bytes, Frame: 48)
.globl __glsplc_EdgeFlag
.ent __glsplc_EdgeFlag
__glsplc_EdgeFlag:
    # Line 464
    li	$a1,21
    # Line 461
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,13052
    addu	$gp,$t9,$at
    # Line 464
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbbb3e4
    # Line 467
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 465
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbb3e4:
    ld	$gp,8($sp)
    # Line 467
    addiu	$sp,$sp,48
    jr	$ra
    # Line 466
    sb	$v1,0($v0)
.end __glsplc_EdgeFlag

# Function: __glsplc_EdgeFlagv
# Declared: Line 470 (Source lines: 471-477)
# Address: 0x0dbbb3f4 - 0x0dbbb450 (Size: 92 bytes, Frame: 48)
.globl __glsplc_EdgeFlagv
.ent __glsplc_EdgeFlagv
__glsplc_EdgeFlagv:
    # Line 474
    li	$a1,21
    # Line 471
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,12964
    addu	$gp,$t9,$at
    # Line 474
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    bnez	$v0,.L0dbbb438
    # Line 477
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 475
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbb438:
    ld	$v1,0($sp)
    ld	$gp,8($sp)
    # Line 476
    lbu	$v1,0($v1)
    # Line 477
    addiu	$sp,$sp,48
    jr	$ra
    # Line 476
    sb	$v1,0($v0)
.end __glsplc_EdgeFlagv

# Function: __glsplc_End
# Declared: Line 480 (Source lines: 481-485)
# Address: 0x0dbbb450 - 0x0dbbb488 (Size: 56 bytes, Frame: 16)
.globl __glsplc_End
.ent __glsplc_End
__glsplc_End:
    # Line 481
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,12872
    addu	$gp,$t9,$at
    # Line 484
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,22
    sd	$ra,0($sp)
    jal	__glSPDlalloc
    move	$a0,$zero
    # Line 485
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_End

# Function: __glsplc_Indexd
# Declared: Line 489 (Source lines: 490-496)
# Address: 0x0dbbb488 - 0x0dbbb4e0 (Size: 88 bytes, Frame: 48)
.globl __glsplc_Indexd
.ent __glsplc_Indexd
__glsplc_Indexd:
    # Line 493
    li	$a1,23
    # Line 490
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,12816
    addu	$gp,$t9,$at
    # Line 493
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    li	$a0,8
    sd	$ra,16($sp)
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    ldc1	$f0,0($sp)
    bnez	$v0,.L0dbbb4d0
    # Line 496
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 494
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbb4d0:
    ld	$gp,8($sp)
    # Line 496
    addiu	$sp,$sp,48
    jr	$ra
    # Line 495
    sdc1	$f0,0($v0)
.end __glsplc_Indexd

# Function: __glsplc_Indexdv
# Declared: Line 499 (Source lines: 500-506)
# Address: 0x0dbbb4e0 - 0x0dbbb53c (Size: 92 bytes, Frame: 48)
.globl __glsplc_Indexdv
.ent __glsplc_Indexdv
__glsplc_Indexdv:
    # Line 503
    li	$a1,23
    # Line 500
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,12728
    addu	$gp,$t9,$at
    # Line 503
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc2
    li	$a0,8
    bnez	$v0,.L0dbbb524
    # Line 506
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 504
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbb524:
    ld	$v1,0($sp)
    ld	$gp,8($sp)
    # Line 505
    ldc1	$f0,0($v1)
    # Line 506
    addiu	$sp,$sp,48
    jr	$ra
    # Line 505
    sdc1	$f0,0($v0)
.end __glsplc_Indexdv

# Function: __glsplc_Indexf
# Declared: Line 509 (Source lines: 510-516)
# Address: 0x0dbbb53c - 0x0dbbb594 (Size: 88 bytes, Frame: 48)
.globl __glsplc_Indexf
.ent __glsplc_Indexf
__glsplc_Indexf:
    # Line 513
    li	$a1,24
    # Line 510
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,12636
    addu	$gp,$t9,$at
    # Line 513
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,4
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    ldc1	$f0,0($sp)
    bnez	$v0,.L0dbbb584
    # Line 516
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 514
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbb584:
    ld	$gp,8($sp)
    # Line 516
    addiu	$sp,$sp,48
    jr	$ra
    # Line 515
    swc1	$f0,0($v0)
.end __glsplc_Indexf

# Function: __glsplc_Indexfv
# Declared: Line 519 (Source lines: 520-526)
# Address: 0x0dbbb594 - 0x0dbbb5f0 (Size: 92 bytes, Frame: 48)
.globl __glsplc_Indexfv
.ent __glsplc_Indexfv
__glsplc_Indexfv:
    # Line 523
    li	$a1,24
    # Line 520
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,12548
    addu	$gp,$t9,$at
    # Line 523
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    bnez	$v0,.L0dbbb5d8
    # Line 526
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 524
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbb5d8:
    ld	$v1,0($sp)
    ld	$gp,8($sp)
    # Line 525
    lwc1	$f0,0($v1)
    # Line 526
    addiu	$sp,$sp,48
    jr	$ra
    # Line 525
    swc1	$f0,0($v0)
.end __glsplc_Indexfv

# Function: __glsplc_Indexi
# Declared: Line 529 (Source lines: 530-536)
# Address: 0x0dbbb5f0 - 0x0dbbb648 (Size: 88 bytes, Frame: 48)
.globl __glsplc_Indexi
.ent __glsplc_Indexi
__glsplc_Indexi:
    # Line 533
    li	$a1,25
    # Line 530
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,12456
    addu	$gp,$t9,$at
    # Line 533
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbbb638
    # Line 536
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 534
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbb638:
    ld	$gp,8($sp)
    # Line 536
    addiu	$sp,$sp,48
    jr	$ra
    # Line 535
    sw	$v1,0($v0)
.end __glsplc_Indexi

# Function: __glsplc_Indexiv
# Declared: Line 539 (Source lines: 540-546)
# Address: 0x0dbbb648 - 0x0dbbb6a4 (Size: 92 bytes, Frame: 48)
.globl __glsplc_Indexiv
.ent __glsplc_Indexiv
__glsplc_Indexiv:
    # Line 543
    li	$a1,25
    # Line 540
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,12368
    addu	$gp,$t9,$at
    # Line 543
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    bnez	$v0,.L0dbbb68c
    # Line 546
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 544
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbb68c:
    ld	$v1,0($sp)
    ld	$gp,8($sp)
    # Line 545
    lw	$v1,0($v1)
    # Line 546
    addiu	$sp,$sp,48
    jr	$ra
    # Line 545
    sw	$v1,0($v0)
.end __glsplc_Indexiv

# Function: __glsplc_Indexs
# Declared: Line 549 (Source lines: 550-556)
# Address: 0x0dbbb6a4 - 0x0dbbb6fc (Size: 88 bytes, Frame: 48)
.globl __glsplc_Indexs
.ent __glsplc_Indexs
__glsplc_Indexs:
    # Line 553
    li	$a1,26
    # Line 550
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,12276
    addu	$gp,$t9,$at
    # Line 553
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbbb6ec
    # Line 556
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 554
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbb6ec:
    ld	$gp,8($sp)
    # Line 556
    addiu	$sp,$sp,48
    jr	$ra
    # Line 555
    sh	$v1,0($v0)
.end __glsplc_Indexs

# Function: __glsplc_Indexsv
# Declared: Line 559 (Source lines: 560-566)
# Address: 0x0dbbb6fc - 0x0dbbb758 (Size: 92 bytes, Frame: 48)
.globl __glsplc_Indexsv
.ent __glsplc_Indexsv
__glsplc_Indexsv:
    # Line 563
    li	$a1,26
    # Line 560
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,12188
    addu	$gp,$t9,$at
    # Line 563
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    bnez	$v0,.L0dbbb740
    # Line 566
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 564
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbb740:
    ld	$v1,0($sp)
    ld	$gp,8($sp)
    # Line 565
    lh	$v1,0($v1)
    # Line 566
    addiu	$sp,$sp,48
    jr	$ra
    # Line 565
    sh	$v1,0($v0)
.end __glsplc_Indexsv

# Function: __glsplc_Normal3b
# Declared: Line 569 (Source lines: 570-578)
# Address: 0x0dbbb758 - 0x0dbbb7c8 (Size: 112 bytes, Frame: 208)
.globl __glsplc_Normal3b
.ent __glsplc_Normal3b
__glsplc_Normal3b:
    # Line 570
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    # Line 573
    li	$a1,27
    sd	$a0,0($sp)
    sd	$gp,24($sp)
    # Line 570
    lui	$at,0x4
    addiu	$at,$at,12096
    addu	$gp,$t9,$at
    # Line 573
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,4
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sd	$a2,16($sp)
    # Line 576
    ld	$a3,8($sp)
    # Line 578
    ld	$ra,32($sp)
    # Line 573
    bnez	$v0,.L0dbbb7ac
    ld	$a4,16($sp)
    ld	$gp,24($sp)
    # Line 574
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbb7ac:
    ld	$gp,24($sp)
    # Line 575
    ld	$v1,0($sp)
    # Line 578
    addiu	$sp,$sp,80
    # Line 577
    sb	$a4,2($v0)
    # Line 576
    sb	$a3,1($v0)
    # Line 578
    jr	$ra
    # Line 575
    sb	$v1,0($v0)
.end __glsplc_Normal3b

# Function: __glsplc_Normal3bv
# Declared: Line 581 (Source lines: 582-590)
# Address: 0x0dbbb7c8 - 0x0dbbb834 (Size: 108 bytes, Frame: 48)
.globl __glsplc_Normal3bv
.ent __glsplc_Normal3bv
__glsplc_Normal3bv:
    # Line 585
    li	$a1,27
    # Line 582
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,11984
    addu	$gp,$t9,$at
    # Line 585
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    bnez	$v0,.L0dbbb80c
    # Line 590
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 586
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbb80c:
    ld	$v1,0($sp)
    # Line 587
    lb	$a2,0($v1)
    sb	$a2,0($v0)
    # Line 588
    lb	$a1,1($v1)
    sb	$a1,1($v0)
    ld	$gp,8($sp)
    # Line 589
    lb	$v1,2($v1)
    # Line 590
    addiu	$sp,$sp,48
    jr	$ra
    # Line 589
    sb	$v1,2($v0)
.end __glsplc_Normal3bv

# Function: __glsplc_Normal3d
# Declared: Line 593 (Source lines: 594-602)
# Address: 0x0dbbb834 - 0x0dbbb8a4 (Size: 112 bytes, Frame: 208)
.globl __glsplc_Normal3d
.ent __glsplc_Normal3d
__glsplc_Normal3d:
    # Line 597
    li	$a1,28
    li	$a0,24
    # Line 594
    addiu	$sp,$sp,-80
    sdc1	$f14,16($sp)
    sd	$gp,24($sp)
    lui	$at,0x4
    addiu	$at,$at,11876
    addu	$gp,$t9,$at
    # Line 597
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sdc1	$f13,8($sp)
    sd	$ra,32($sp)
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    # Line 600
    ldc1	$f1,8($sp)
    # Line 602
    ld	$ra,32($sp)
    # Line 597
    bnez	$v0,.L0dbbb888
    ldc1	$f2,16($sp)
    ld	$gp,24($sp)
    # Line 598
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbb888:
    ld	$gp,24($sp)
    # Line 599
    ldc1	$f0,0($sp)
    # Line 602
    addiu	$sp,$sp,80
    # Line 601
    sdc1	$f2,16($v0)
    # Line 600
    sdc1	$f1,8($v0)
    # Line 602
    jr	$ra
    # Line 599
    sdc1	$f0,0($v0)
.end __glsplc_Normal3d

# Function: __glsplc_Normal3dv
# Declared: Line 605 (Source lines: 606-614)
# Address: 0x0dbbb8a4 - 0x0dbbb910 (Size: 108 bytes, Frame: 48)
.globl __glsplc_Normal3dv
.ent __glsplc_Normal3dv
__glsplc_Normal3dv:
    # Line 609
    li	$a1,28
    # Line 606
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,11764
    addu	$gp,$t9,$at
    # Line 609
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc2
    li	$a0,24
    bnez	$v0,.L0dbbb8e8
    # Line 614
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 610
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbb8e8:
    ld	$v1,0($sp)
    # Line 611
    ldc1	$f2,0($v1)
    sdc1	$f2,0($v0)
    # Line 612
    ldc1	$f1,8($v1)
    sdc1	$f1,8($v0)
    ld	$gp,8($sp)
    # Line 613
    ldc1	$f0,16($v1)
    # Line 614
    addiu	$sp,$sp,48
    jr	$ra
    # Line 613
    sdc1	$f0,16($v0)
.end __glsplc_Normal3dv

# Function: __glsplc_Normal3f
# Declared: Line 617 (Source lines: 618-626)
# Address: 0x0dbbb910 - 0x0dbbb980 (Size: 112 bytes, Frame: 208)
.globl __glsplc_Normal3f
.ent __glsplc_Normal3f
__glsplc_Normal3f:
    # Line 621
    li	$a1,29
    li	$a0,12
    # Line 618
    addiu	$sp,$sp,-80
    sdc1	$f14,16($sp)
    sd	$gp,24($sp)
    lui	$at,0x4
    addiu	$at,$at,11656
    addu	$gp,$t9,$at
    # Line 621
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sdc1	$f13,8($sp)
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    # Line 624
    ldc1	$f1,8($sp)
    # Line 626
    ld	$ra,32($sp)
    # Line 621
    bnez	$v0,.L0dbbb964
    ldc1	$f2,16($sp)
    ld	$gp,24($sp)
    # Line 622
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbb964:
    ld	$gp,24($sp)
    # Line 623
    ldc1	$f0,0($sp)
    # Line 626
    addiu	$sp,$sp,80
    # Line 625
    swc1	$f2,8($v0)
    # Line 624
    swc1	$f1,4($v0)
    # Line 626
    jr	$ra
    # Line 623
    swc1	$f0,0($v0)
.end __glsplc_Normal3f

# Function: __glsplc_Normal3fv
# Declared: Line 629 (Source lines: 630-638)
# Address: 0x0dbbb980 - 0x0dbbb9ec (Size: 108 bytes, Frame: 48)
.globl __glsplc_Normal3fv
.ent __glsplc_Normal3fv
__glsplc_Normal3fv:
    # Line 633
    li	$a1,29
    # Line 630
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,11544
    addu	$gp,$t9,$at
    # Line 633
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,12
    bnez	$v0,.L0dbbb9c4
    # Line 638
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 634
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbb9c4:
    ld	$v1,0($sp)
    # Line 635
    lwc1	$f2,0($v1)
    swc1	$f2,0($v0)
    # Line 636
    lwc1	$f1,4($v1)
    swc1	$f1,4($v0)
    ld	$gp,8($sp)
    # Line 637
    lwc1	$f0,8($v1)
    # Line 638
    addiu	$sp,$sp,48
    jr	$ra
    # Line 637
    swc1	$f0,8($v0)
.end __glsplc_Normal3fv

# Function: __glsplc_Normal3i
# Declared: Line 641 (Source lines: 642-650)
# Address: 0x0dbbb9ec - 0x0dbbba5c (Size: 112 bytes, Frame: 208)
.globl __glsplc_Normal3i
.ent __glsplc_Normal3i
__glsplc_Normal3i:
    # Line 642
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    # Line 645
    li	$a1,30
    sd	$a0,0($sp)
    sd	$gp,24($sp)
    # Line 642
    lui	$at,0x4
    addiu	$at,$at,11436
    addu	$gp,$t9,$at
    # Line 645
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,12
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sd	$a2,16($sp)
    # Line 648
    ld	$a3,8($sp)
    # Line 650
    ld	$ra,32($sp)
    # Line 645
    bnez	$v0,.L0dbbba40
    ld	$a4,16($sp)
    ld	$gp,24($sp)
    # Line 646
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbba40:
    ld	$gp,24($sp)
    # Line 647
    ld	$v1,0($sp)
    # Line 650
    addiu	$sp,$sp,80
    # Line 649
    sw	$a4,8($v0)
    # Line 648
    sw	$a3,4($v0)
    # Line 650
    jr	$ra
    # Line 647
    sw	$v1,0($v0)
.end __glsplc_Normal3i

# Function: __glsplc_Normal3iv
# Declared: Line 653 (Source lines: 654-662)
# Address: 0x0dbbba5c - 0x0dbbbac8 (Size: 108 bytes, Frame: 48)
.globl __glsplc_Normal3iv
.ent __glsplc_Normal3iv
__glsplc_Normal3iv:
    # Line 657
    li	$a1,30
    # Line 654
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,11324
    addu	$gp,$t9,$at
    # Line 657
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,12
    bnez	$v0,.L0dbbbaa0
    # Line 662
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 658
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbbaa0:
    ld	$v1,0($sp)
    # Line 659
    lw	$a2,0($v1)
    sw	$a2,0($v0)
    # Line 660
    lw	$a1,4($v1)
    sw	$a1,4($v0)
    ld	$gp,8($sp)
    # Line 661
    lw	$v1,8($v1)
    # Line 662
    addiu	$sp,$sp,48
    jr	$ra
    # Line 661
    sw	$v1,8($v0)
.end __glsplc_Normal3iv

# Function: __glsplc_Normal3s
# Declared: Line 665 (Source lines: 666-674)
# Address: 0x0dbbbac8 - 0x0dbbbb38 (Size: 112 bytes, Frame: 208)
.globl __glsplc_Normal3s
.ent __glsplc_Normal3s
__glsplc_Normal3s:
    # Line 666
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    # Line 669
    li	$a1,31
    sd	$a0,0($sp)
    sd	$gp,24($sp)
    # Line 666
    lui	$at,0x4
    addiu	$at,$at,11216
    addu	$gp,$t9,$at
    # Line 669
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,8
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sd	$a2,16($sp)
    # Line 672
    ld	$a3,8($sp)
    # Line 674
    ld	$ra,32($sp)
    # Line 669
    bnez	$v0,.L0dbbbb1c
    ld	$a4,16($sp)
    ld	$gp,24($sp)
    # Line 670
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbbb1c:
    ld	$gp,24($sp)
    # Line 671
    ld	$v1,0($sp)
    # Line 674
    addiu	$sp,$sp,80
    # Line 673
    sh	$a4,4($v0)
    # Line 672
    sh	$a3,2($v0)
    # Line 674
    jr	$ra
    # Line 671
    sh	$v1,0($v0)
.end __glsplc_Normal3s

# Function: __glsplc_Normal3sv
# Declared: Line 677 (Source lines: 678-686)
# Address: 0x0dbbbb38 - 0x0dbbbba4 (Size: 108 bytes, Frame: 48)
.globl __glsplc_Normal3sv
.ent __glsplc_Normal3sv
__glsplc_Normal3sv:
    # Line 681
    li	$a1,31
    # Line 678
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,11104
    addu	$gp,$t9,$at
    # Line 681
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,8
    bnez	$v0,.L0dbbbb7c
    # Line 686
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 682
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbbb7c:
    ld	$v1,0($sp)
    # Line 683
    lh	$a2,0($v1)
    sh	$a2,0($v0)
    # Line 684
    lh	$a1,2($v1)
    sh	$a1,2($v0)
    ld	$gp,8($sp)
    # Line 685
    lh	$v1,4($v1)
    # Line 686
    addiu	$sp,$sp,48
    jr	$ra
    # Line 685
    sh	$v1,4($v0)
.end __glsplc_Normal3sv

# Function: __glsplc_RasterPos2d
# Declared: Line 689 (Source lines: 690-697)
# Address: 0x0dbbbba4 - 0x0dbbbc08 (Size: 100 bytes, Frame: 48)
.globl __glsplc_RasterPos2d
.ent __glsplc_RasterPos2d
__glsplc_RasterPos2d:
    # Line 693
    li	$a1,32
    li	$a0,16
    # Line 690
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$at,0x4
    addiu	$at,$at,10996
    addu	$gp,$t9,$at
    # Line 693
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sdc1	$f13,8($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    # Line 695
    ldc1	$f0,0($sp)
    # Line 693
    bnez	$v0,.L0dbbbbf0
    ldc1	$f1,8($sp)
    ld	$gp,16($sp)
    # Line 694
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbbbf0:
    # Line 697
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 696
    sdc1	$f1,8($v0)
    # Line 697
    jr	$ra
    # Line 695
    sdc1	$f0,0($v0)
.end __glsplc_RasterPos2d

# Function: __glsplc_RasterPos2dv
# Declared: Line 700 (Source lines: 701-708)
# Address: 0x0dbbbc08 - 0x0dbbbc6c (Size: 100 bytes, Frame: 48)
.globl __glsplc_RasterPos2dv
.ent __glsplc_RasterPos2dv
__glsplc_RasterPos2dv:
    # Line 704
    li	$a1,32
    # Line 701
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,10896
    addu	$gp,$t9,$at
    # Line 704
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc2
    li	$a0,16
    bnez	$v0,.L0dbbbc4c
    # Line 708
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 705
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbbc4c:
    ld	$v1,0($sp)
    # Line 706
    ldc1	$f1,0($v1)
    sdc1	$f1,0($v0)
    ld	$gp,8($sp)
    # Line 707
    ldc1	$f0,8($v1)
    # Line 708
    addiu	$sp,$sp,48
    jr	$ra
    # Line 707
    sdc1	$f0,8($v0)
.end __glsplc_RasterPos2dv

# Function: __glsplc_RasterPos2f
# Declared: Line 711 (Source lines: 712-719)
# Address: 0x0dbbbc6c - 0x0dbbbcd0 (Size: 100 bytes, Frame: 48)
.globl __glsplc_RasterPos2f
.ent __glsplc_RasterPos2f
__glsplc_RasterPos2f:
    # Line 715
    li	$a1,33
    li	$a0,8
    # Line 712
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$at,0x4
    addiu	$at,$at,10796
    addu	$gp,$t9,$at
    # Line 715
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sdc1	$f13,8($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    # Line 717
    ldc1	$f0,0($sp)
    # Line 715
    bnez	$v0,.L0dbbbcb8
    ldc1	$f1,8($sp)
    ld	$gp,16($sp)
    # Line 716
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbbcb8:
    # Line 719
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 718
    swc1	$f1,4($v0)
    # Line 719
    jr	$ra
    # Line 717
    swc1	$f0,0($v0)
.end __glsplc_RasterPos2f

# Function: __glsplc_RasterPos2fv
# Declared: Line 722 (Source lines: 723-730)
# Address: 0x0dbbbcd0 - 0x0dbbbd34 (Size: 100 bytes, Frame: 48)
.globl __glsplc_RasterPos2fv
.ent __glsplc_RasterPos2fv
__glsplc_RasterPos2fv:
    # Line 726
    li	$a1,33
    # Line 723
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,10696
    addu	$gp,$t9,$at
    # Line 726
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,8
    bnez	$v0,.L0dbbbd14
    # Line 730
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 727
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbbd14:
    ld	$v1,0($sp)
    # Line 728
    lwc1	$f1,0($v1)
    swc1	$f1,0($v0)
    ld	$gp,8($sp)
    # Line 729
    lwc1	$f0,4($v1)
    # Line 730
    addiu	$sp,$sp,48
    jr	$ra
    # Line 729
    swc1	$f0,4($v0)
.end __glsplc_RasterPos2fv

# Function: __glsplc_RasterPos2i
# Declared: Line 733 (Source lines: 734-741)
# Address: 0x0dbbbd34 - 0x0dbbbd98 (Size: 100 bytes, Frame: 48)
.globl __glsplc_RasterPos2i
.ent __glsplc_RasterPos2i
__glsplc_RasterPos2i:
    # Line 734
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    # Line 737
    li	$a1,34
    sd	$gp,16($sp)
    # Line 734
    lui	$at,0x4
    addiu	$at,$at,10596
    addu	$gp,$t9,$at
    # Line 737
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    li	$a0,8
    # Line 739
    ld	$v1,0($sp)
    # Line 737
    bnez	$v0,.L0dbbbd80
    ld	$a2,8($sp)
    ld	$gp,16($sp)
    # Line 738
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbbd80:
    # Line 741
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 740
    sw	$a2,4($v0)
    # Line 741
    jr	$ra
    # Line 739
    sw	$v1,0($v0)
.end __glsplc_RasterPos2i

# Function: __glsplc_RasterPos2iv
# Declared: Line 744 (Source lines: 745-752)
# Address: 0x0dbbbd98 - 0x0dbbbdfc (Size: 100 bytes, Frame: 48)
.globl __glsplc_RasterPos2iv
.ent __glsplc_RasterPos2iv
__glsplc_RasterPos2iv:
    # Line 748
    li	$a1,34
    # Line 745
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,10496
    addu	$gp,$t9,$at
    # Line 748
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,8
    bnez	$v0,.L0dbbbddc
    # Line 752
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 749
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbbddc:
    ld	$v1,0($sp)
    # Line 750
    lw	$a1,0($v1)
    sw	$a1,0($v0)
    ld	$gp,8($sp)
    # Line 751
    lw	$v1,4($v1)
    # Line 752
    addiu	$sp,$sp,48
    jr	$ra
    # Line 751
    sw	$v1,4($v0)
.end __glsplc_RasterPos2iv

# Function: __glsplc_RasterPos2s
# Declared: Line 755 (Source lines: 756-763)
# Address: 0x0dbbbdfc - 0x0dbbbe60 (Size: 100 bytes, Frame: 48)
.globl __glsplc_RasterPos2s
.ent __glsplc_RasterPos2s
__glsplc_RasterPos2s:
    # Line 756
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    # Line 759
    li	$a1,35
    sd	$gp,16($sp)
    # Line 756
    lui	$at,0x4
    addiu	$at,$at,10396
    addu	$gp,$t9,$at
    # Line 759
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    li	$a0,4
    # Line 761
    ld	$v1,0($sp)
    # Line 759
    bnez	$v0,.L0dbbbe48
    ld	$a2,8($sp)
    ld	$gp,16($sp)
    # Line 760
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbbe48:
    # Line 763
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 762
    sh	$a2,2($v0)
    # Line 763
    jr	$ra
    # Line 761
    sh	$v1,0($v0)
.end __glsplc_RasterPos2s

# Function: __glsplc_RasterPos2sv
# Declared: Line 766 (Source lines: 767-774)
# Address: 0x0dbbbe60 - 0x0dbbbec4 (Size: 100 bytes, Frame: 48)
.globl __glsplc_RasterPos2sv
.ent __glsplc_RasterPos2sv
__glsplc_RasterPos2sv:
    # Line 770
    li	$a1,35
    # Line 767
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,10296
    addu	$gp,$t9,$at
    # Line 770
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    bnez	$v0,.L0dbbbea4
    # Line 774
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 771
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbbea4:
    ld	$v1,0($sp)
    # Line 772
    lh	$a1,0($v1)
    sh	$a1,0($v0)
    ld	$gp,8($sp)
    # Line 773
    lh	$v1,2($v1)
    # Line 774
    addiu	$sp,$sp,48
    jr	$ra
    # Line 773
    sh	$v1,2($v0)
.end __glsplc_RasterPos2sv

# Function: __glsplc_RasterPos3d
# Declared: Line 777 (Source lines: 778-786)
# Address: 0x0dbbbec4 - 0x0dbbbf34 (Size: 112 bytes, Frame: 208)
.globl __glsplc_RasterPos3d
.ent __glsplc_RasterPos3d
__glsplc_RasterPos3d:
    # Line 781
    li	$a1,36
    li	$a0,24
    # Line 778
    addiu	$sp,$sp,-80
    sdc1	$f14,16($sp)
    sd	$gp,24($sp)
    lui	$at,0x4
    addiu	$at,$at,10196
    addu	$gp,$t9,$at
    # Line 781
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sdc1	$f13,8($sp)
    sd	$ra,32($sp)
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    # Line 784
    ldc1	$f1,8($sp)
    # Line 786
    ld	$ra,32($sp)
    # Line 781
    bnez	$v0,.L0dbbbf18
    ldc1	$f2,16($sp)
    ld	$gp,24($sp)
    # Line 782
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbbf18:
    ld	$gp,24($sp)
    # Line 783
    ldc1	$f0,0($sp)
    # Line 786
    addiu	$sp,$sp,80
    # Line 785
    sdc1	$f2,16($v0)
    # Line 784
    sdc1	$f1,8($v0)
    # Line 786
    jr	$ra
    # Line 783
    sdc1	$f0,0($v0)
.end __glsplc_RasterPos3d

# Function: __glsplc_RasterPos3dv
# Declared: Line 789 (Source lines: 790-798)
# Address: 0x0dbbbf34 - 0x0dbbbfa0 (Size: 108 bytes, Frame: 48)
.globl __glsplc_RasterPos3dv
.ent __glsplc_RasterPos3dv
__glsplc_RasterPos3dv:
    # Line 793
    li	$a1,36
    # Line 790
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,10084
    addu	$gp,$t9,$at
    # Line 793
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc2
    li	$a0,24
    bnez	$v0,.L0dbbbf78
    # Line 798
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 794
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbbf78:
    ld	$v1,0($sp)
    # Line 795
    ldc1	$f2,0($v1)
    sdc1	$f2,0($v0)
    # Line 796
    ldc1	$f1,8($v1)
    sdc1	$f1,8($v0)
    ld	$gp,8($sp)
    # Line 797
    ldc1	$f0,16($v1)
    # Line 798
    addiu	$sp,$sp,48
    jr	$ra
    # Line 797
    sdc1	$f0,16($v0)
.end __glsplc_RasterPos3dv

# Function: __glsplc_RasterPos3f
# Declared: Line 801 (Source lines: 802-810)
# Address: 0x0dbbbfa0 - 0x0dbbc010 (Size: 112 bytes, Frame: 208)
.globl __glsplc_RasterPos3f
.ent __glsplc_RasterPos3f
__glsplc_RasterPos3f:
    # Line 805
    li	$a1,37
    li	$a0,12
    # Line 802
    addiu	$sp,$sp,-80
    sdc1	$f14,16($sp)
    sd	$gp,24($sp)
    lui	$at,0x4
    addiu	$at,$at,9976
    addu	$gp,$t9,$at
    # Line 805
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sdc1	$f13,8($sp)
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    # Line 808
    ldc1	$f1,8($sp)
    # Line 810
    ld	$ra,32($sp)
    # Line 805
    bnez	$v0,.L0dbbbff4
    ldc1	$f2,16($sp)
    ld	$gp,24($sp)
    # Line 806
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbbff4:
    ld	$gp,24($sp)
    # Line 807
    ldc1	$f0,0($sp)
    # Line 810
    addiu	$sp,$sp,80
    # Line 809
    swc1	$f2,8($v0)
    # Line 808
    swc1	$f1,4($v0)
    # Line 810
    jr	$ra
    # Line 807
    swc1	$f0,0($v0)
.end __glsplc_RasterPos3f

# Function: __glsplc_RasterPos3fv
# Declared: Line 813 (Source lines: 814-822)
# Address: 0x0dbbc010 - 0x0dbbc07c (Size: 108 bytes, Frame: 48)
.globl __glsplc_RasterPos3fv
.ent __glsplc_RasterPos3fv
__glsplc_RasterPos3fv:
    # Line 817
    li	$a1,37
    # Line 814
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,9864
    addu	$gp,$t9,$at
    # Line 817
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,12
    bnez	$v0,.L0dbbc054
    # Line 822
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 818
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbc054:
    ld	$v1,0($sp)
    # Line 819
    lwc1	$f2,0($v1)
    swc1	$f2,0($v0)
    # Line 820
    lwc1	$f1,4($v1)
    swc1	$f1,4($v0)
    ld	$gp,8($sp)
    # Line 821
    lwc1	$f0,8($v1)
    # Line 822
    addiu	$sp,$sp,48
    jr	$ra
    # Line 821
    swc1	$f0,8($v0)
.end __glsplc_RasterPos3fv

# Function: __glsplc_RasterPos3i
# Declared: Line 825 (Source lines: 826-834)
# Address: 0x0dbbc07c - 0x0dbbc0ec (Size: 112 bytes, Frame: 208)
.globl __glsplc_RasterPos3i
.ent __glsplc_RasterPos3i
__glsplc_RasterPos3i:
    # Line 826
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    # Line 829
    li	$a1,38
    sd	$a0,0($sp)
    sd	$gp,24($sp)
    # Line 826
    lui	$at,0x4
    addiu	$at,$at,9756
    addu	$gp,$t9,$at
    # Line 829
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,12
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sd	$a2,16($sp)
    # Line 832
    ld	$a3,8($sp)
    # Line 834
    ld	$ra,32($sp)
    # Line 829
    bnez	$v0,.L0dbbc0d0
    ld	$a4,16($sp)
    ld	$gp,24($sp)
    # Line 830
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbc0d0:
    ld	$gp,24($sp)
    # Line 831
    ld	$v1,0($sp)
    # Line 834
    addiu	$sp,$sp,80
    # Line 833
    sw	$a4,8($v0)
    # Line 832
    sw	$a3,4($v0)
    # Line 834
    jr	$ra
    # Line 831
    sw	$v1,0($v0)
.end __glsplc_RasterPos3i

# Function: __glsplc_RasterPos3iv
# Declared: Line 837 (Source lines: 838-846)
# Address: 0x0dbbc0ec - 0x0dbbc158 (Size: 108 bytes, Frame: 48)
.globl __glsplc_RasterPos3iv
.ent __glsplc_RasterPos3iv
__glsplc_RasterPos3iv:
    # Line 841
    li	$a1,38
    # Line 838
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,9644
    addu	$gp,$t9,$at
    # Line 841
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,12
    bnez	$v0,.L0dbbc130
    # Line 846
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 842
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbc130:
    ld	$v1,0($sp)
    # Line 843
    lw	$a2,0($v1)
    sw	$a2,0($v0)
    # Line 844
    lw	$a1,4($v1)
    sw	$a1,4($v0)
    ld	$gp,8($sp)
    # Line 845
    lw	$v1,8($v1)
    # Line 846
    addiu	$sp,$sp,48
    jr	$ra
    # Line 845
    sw	$v1,8($v0)
.end __glsplc_RasterPos3iv

# Function: __glsplc_RasterPos3s
# Declared: Line 849 (Source lines: 850-858)
# Address: 0x0dbbc158 - 0x0dbbc1c8 (Size: 112 bytes, Frame: 208)
.globl __glsplc_RasterPos3s
.ent __glsplc_RasterPos3s
__glsplc_RasterPos3s:
    # Line 850
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    # Line 853
    li	$a1,39
    sd	$a0,0($sp)
    sd	$gp,24($sp)
    # Line 850
    lui	$at,0x4
    addiu	$at,$at,9536
    addu	$gp,$t9,$at
    # Line 853
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,8
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sd	$a2,16($sp)
    # Line 856
    ld	$a3,8($sp)
    # Line 858
    ld	$ra,32($sp)
    # Line 853
    bnez	$v0,.L0dbbc1ac
    ld	$a4,16($sp)
    ld	$gp,24($sp)
    # Line 854
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbc1ac:
    ld	$gp,24($sp)
    # Line 855
    ld	$v1,0($sp)
    # Line 858
    addiu	$sp,$sp,80
    # Line 857
    sh	$a4,4($v0)
    # Line 856
    sh	$a3,2($v0)
    # Line 858
    jr	$ra
    # Line 855
    sh	$v1,0($v0)
.end __glsplc_RasterPos3s

# Function: __glsplc_RasterPos3sv
# Declared: Line 861 (Source lines: 862-870)
# Address: 0x0dbbc1c8 - 0x0dbbc234 (Size: 108 bytes, Frame: 48)
.globl __glsplc_RasterPos3sv
.ent __glsplc_RasterPos3sv
__glsplc_RasterPos3sv:
    # Line 865
    li	$a1,39
    # Line 862
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,9424
    addu	$gp,$t9,$at
    # Line 865
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,8
    bnez	$v0,.L0dbbc20c
    # Line 870
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 866
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbc20c:
    ld	$v1,0($sp)
    # Line 867
    lh	$a2,0($v1)
    sh	$a2,0($v0)
    # Line 868
    lh	$a1,2($v1)
    sh	$a1,2($v0)
    ld	$gp,8($sp)
    # Line 869
    lh	$v1,4($v1)
    # Line 870
    addiu	$sp,$sp,48
    jr	$ra
    # Line 869
    sh	$v1,4($v0)
.end __glsplc_RasterPos3sv

# Function: __glsplc_RasterPos4d
# Declared: Line 873 (Source lines: 874-883)
# Address: 0x0dbbc234 - 0x0dbbc2b0 (Size: 124 bytes, Frame: 208)
.globl __glsplc_RasterPos4d
.ent __glsplc_RasterPos4d
__glsplc_RasterPos4d:
    # Line 877
    li	$a1,40
    li	$a0,32
    # Line 874
    addiu	$sp,$sp,-80
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sd	$gp,32($sp)
    lui	$at,0x4
    addiu	$at,$at,9316
    addu	$gp,$t9,$at
    # Line 877
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    # Line 881
    ldc1	$f2,16($sp)
    # Line 879
    ldc1	$f0,0($sp)
    # Line 877
    bnez	$v0,.L0dbbc28c
    ldc1	$f3,24($sp)
    ld	$gp,32($sp)
    # Line 878
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbc28c:
    # Line 883
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    # Line 880
    ldc1	$f1,8($sp)
    # Line 883
    addiu	$sp,$sp,80
    # Line 882
    sdc1	$f3,24($v0)
    # Line 881
    sdc1	$f2,16($v0)
    # Line 879
    sdc1	$f0,0($v0)
    # Line 883
    jr	$ra
    # Line 880
    sdc1	$f1,8($v0)
.end __glsplc_RasterPos4d

# Function: __glsplc_RasterPos4dv
# Declared: Line 886 (Source lines: 887-896)
# Address: 0x0dbbc2b0 - 0x0dbbc324 (Size: 116 bytes, Frame: 48)
.globl __glsplc_RasterPos4dv
.ent __glsplc_RasterPos4dv
__glsplc_RasterPos4dv:
    # Line 890
    li	$a1,40
    # Line 887
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,9192
    addu	$gp,$t9,$at
    # Line 890
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc2
    li	$a0,32
    bnez	$v0,.L0dbbc2f4
    # Line 896
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 891
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbc2f4:
    ld	$v1,0($sp)
    # Line 892
    ldc1	$f3,0($v1)
    sdc1	$f3,0($v0)
    # Line 893
    ldc1	$f2,8($v1)
    sdc1	$f2,8($v0)
    # Line 894
    ldc1	$f1,16($v1)
    sdc1	$f1,16($v0)
    ld	$gp,8($sp)
    # Line 895
    ldc1	$f0,24($v1)
    # Line 896
    addiu	$sp,$sp,48
    jr	$ra
    # Line 895
    sdc1	$f0,24($v0)
.end __glsplc_RasterPos4dv

# Function: __glsplc_RasterPos4f
# Declared: Line 899 (Source lines: 900-909)
# Address: 0x0dbbc324 - 0x0dbbc3a0 (Size: 124 bytes, Frame: 208)
.globl __glsplc_RasterPos4f
.ent __glsplc_RasterPos4f
__glsplc_RasterPos4f:
    # Line 903
    li	$a1,41
    li	$a0,16
    # Line 900
    addiu	$sp,$sp,-80
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sd	$gp,32($sp)
    lui	$at,0x4
    addiu	$at,$at,9076
    addu	$gp,$t9,$at
    # Line 903
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    # Line 907
    ldc1	$f2,16($sp)
    # Line 905
    ldc1	$f0,0($sp)
    # Line 903
    bnez	$v0,.L0dbbc37c
    ldc1	$f3,24($sp)
    ld	$gp,32($sp)
    # Line 904
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbc37c:
    # Line 909
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    # Line 906
    ldc1	$f1,8($sp)
    # Line 909
    addiu	$sp,$sp,80
    # Line 908
    swc1	$f3,12($v0)
    # Line 907
    swc1	$f2,8($v0)
    # Line 905
    swc1	$f0,0($v0)
    # Line 909
    jr	$ra
    # Line 906
    swc1	$f1,4($v0)
.end __glsplc_RasterPos4f

# Function: __glsplc_RasterPos4fv
# Declared: Line 912 (Source lines: 913-922)
# Address: 0x0dbbc3a0 - 0x0dbbc414 (Size: 116 bytes, Frame: 48)
.globl __glsplc_RasterPos4fv
.ent __glsplc_RasterPos4fv
__glsplc_RasterPos4fv:
    # Line 916
    li	$a1,41
    # Line 913
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,8952
    addu	$gp,$t9,$at
    # Line 916
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,16
    bnez	$v0,.L0dbbc3e4
    # Line 922
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 917
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbc3e4:
    ld	$v1,0($sp)
    # Line 918
    lwc1	$f3,0($v1)
    swc1	$f3,0($v0)
    # Line 919
    lwc1	$f2,4($v1)
    swc1	$f2,4($v0)
    # Line 920
    lwc1	$f1,8($v1)
    swc1	$f1,8($v0)
    ld	$gp,8($sp)
    # Line 921
    lwc1	$f0,12($v1)
    # Line 922
    addiu	$sp,$sp,48
    jr	$ra
    # Line 921
    swc1	$f0,12($v0)
.end __glsplc_RasterPos4fv

# Function: __glsplc_RasterPos4i
# Declared: Line 925 (Source lines: 926-935)
# Address: 0x0dbbc414 - 0x0dbbc490 (Size: 124 bytes, Frame: 208)
.globl __glsplc_RasterPos4i
.ent __glsplc_RasterPos4i
__glsplc_RasterPos4i:
    # Line 926
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 929
    li	$a1,42
    sd	$a0,0($sp)
    li	$a0,16
    sd	$gp,32($sp)
    # Line 926
    lui	$at,0x4
    addiu	$at,$at,8836
    addu	$gp,$t9,$at
    # Line 929
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a3,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    ld	$ra,8($sp)
    # Line 933
    ld	$a5,24($sp)
    # Line 929
    bnez	$v0,.L0dbbc46c
    # Line 931
    ld	$v1,0($sp)
    ld	$gp,32($sp)
    # Line 930
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbc46c:
    # Line 931
    sw	$v1,0($v0)
    ld	$gp,32($sp)
    # Line 932
    ld	$a4,16($sp)
    # Line 934
    sw	$ra,12($v0)
    # Line 935
    ld	$ra,40($sp)
    addiu	$sp,$sp,80
    # Line 933
    sw	$a5,8($v0)
    # Line 935
    jr	$ra
    # Line 932
    sw	$a4,4($v0)
.end __glsplc_RasterPos4i

# Function: __glsplc_RasterPos4iv
# Declared: Line 938 (Source lines: 939-948)
# Address: 0x0dbbc490 - 0x0dbbc504 (Size: 116 bytes, Frame: 48)
.globl __glsplc_RasterPos4iv
.ent __glsplc_RasterPos4iv
__glsplc_RasterPos4iv:
    # Line 942
    li	$a1,42
    # Line 939
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,8712
    addu	$gp,$t9,$at
    # Line 942
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,16
    ld	$gp,8($sp)
    bnez	$v0,.L0dbbc4d0
    # Line 943
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbc4d0:
    ld	$gp,8($sp)
    ld	$v1,0($sp)
    # Line 944
    lw	$ra,0($v1)
    sw	$ra,0($v0)
    # Line 945
    lw	$a2,4($v1)
    sw	$a2,4($v0)
    # Line 946
    lw	$a1,8($v1)
    sw	$a1,8($v0)
    # Line 948
    ld	$ra,16($sp)
    # Line 947
    lw	$v1,12($v1)
    # Line 948
    addiu	$sp,$sp,48
    jr	$ra
    # Line 947
    sw	$v1,12($v0)
.end __glsplc_RasterPos4iv

# Function: __glsplc_RasterPos4s
# Declared: Line 951 (Source lines: 952-961)
# Address: 0x0dbbc504 - 0x0dbbc580 (Size: 124 bytes, Frame: 208)
.globl __glsplc_RasterPos4s
.ent __glsplc_RasterPos4s
__glsplc_RasterPos4s:
    # Line 952
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 955
    li	$a1,43
    sd	$a0,0($sp)
    li	$a0,8
    sd	$gp,32($sp)
    # Line 952
    lui	$at,0x4
    addiu	$at,$at,8596
    addu	$gp,$t9,$at
    # Line 955
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a3,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    ld	$ra,8($sp)
    # Line 959
    ld	$a5,24($sp)
    # Line 955
    bnez	$v0,.L0dbbc55c
    # Line 957
    ld	$v1,0($sp)
    ld	$gp,32($sp)
    # Line 956
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbc55c:
    # Line 957
    sh	$v1,0($v0)
    ld	$gp,32($sp)
    # Line 958
    ld	$a4,16($sp)
    # Line 960
    sh	$ra,6($v0)
    # Line 961
    ld	$ra,40($sp)
    addiu	$sp,$sp,80
    # Line 959
    sh	$a5,4($v0)
    # Line 961
    jr	$ra
    # Line 958
    sh	$a4,2($v0)
.end __glsplc_RasterPos4s

# Function: __glsplc_RasterPos4sv
# Declared: Line 964 (Source lines: 965-974)
# Address: 0x0dbbc580 - 0x0dbbc5f4 (Size: 116 bytes, Frame: 48)
.globl __glsplc_RasterPos4sv
.ent __glsplc_RasterPos4sv
__glsplc_RasterPos4sv:
    # Line 968
    li	$a1,43
    # Line 965
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,8472
    addu	$gp,$t9,$at
    # Line 968
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,8
    ld	$gp,8($sp)
    bnez	$v0,.L0dbbc5c0
    # Line 969
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbc5c0:
    ld	$gp,8($sp)
    ld	$v1,0($sp)
    # Line 970
    lh	$ra,0($v1)
    sh	$ra,0($v0)
    # Line 971
    lh	$a2,2($v1)
    sh	$a2,2($v0)
    # Line 972
    lh	$a1,4($v1)
    sh	$a1,4($v0)
    # Line 974
    ld	$ra,16($sp)
    # Line 973
    lh	$v1,6($v1)
    # Line 974
    addiu	$sp,$sp,48
    jr	$ra
    # Line 973
    sh	$v1,6($v0)
.end __glsplc_RasterPos4sv

# Function: __glsplc_Rectd
# Declared: Line 977 (Source lines: 978-987)
# Address: 0x0dbbc5f4 - 0x0dbbc670 (Size: 124 bytes, Frame: 208)
.globl __glsplc_Rectd
.ent __glsplc_Rectd
__glsplc_Rectd:
    # Line 981
    li	$a1,44
    li	$a0,32
    # Line 978
    addiu	$sp,$sp,-80
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sd	$gp,32($sp)
    lui	$at,0x4
    addiu	$at,$at,8356
    addu	$gp,$t9,$at
    # Line 981
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    # Line 985
    ldc1	$f2,16($sp)
    # Line 983
    ldc1	$f0,0($sp)
    # Line 981
    bnez	$v0,.L0dbbc64c
    ldc1	$f3,24($sp)
    ld	$gp,32($sp)
    # Line 982
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbc64c:
    # Line 987
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    # Line 984
    ldc1	$f1,8($sp)
    # Line 987
    addiu	$sp,$sp,80
    # Line 986
    sdc1	$f3,24($v0)
    # Line 985
    sdc1	$f2,16($v0)
    # Line 983
    sdc1	$f0,0($v0)
    # Line 987
    jr	$ra
    # Line 984
    sdc1	$f1,8($v0)
.end __glsplc_Rectd

# Function: __glsplc_Rectdv
# Declared: Line 990 (Source lines: 991-1000)
# Address: 0x0dbbc670 - 0x0dbbc6ec (Size: 124 bytes, Frame: 48)
.globl __glsplc_Rectdv
.ent __glsplc_Rectdv
__glsplc_Rectdv:
    # Line 991
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    # Line 994
    li	$a1,44
    sd	$gp,16($sp)
    # Line 991
    lui	$at,0x4
    addiu	$at,$at,8232
    addu	$gp,$t9,$at
    # Line 994
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc2
    li	$a0,32
    # Line 1000
    ld	$ra,24($sp)
    # Line 994
    bnez	$v0,.L0dbbc6bc
    ld	$gp,16($sp)
    # Line 995
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbc6bc:
    ld	$a2,0($sp)
    # Line 996
    ldc1	$f3,0($a2)
    sdc1	$f3,0($v0)
    # Line 997
    ldc1	$f2,8($a2)
    # Line 998
    ld	$v1,8($sp)
    # Line 997
    sdc1	$f2,8($v0)
    # Line 998
    ldc1	$f1,0($v1)
    sdc1	$f1,16($v0)
    # Line 999
    ldc1	$f0,8($v1)
    # Line 1000
    addiu	$sp,$sp,48
    jr	$ra
    # Line 999
    sdc1	$f0,24($v0)
.end __glsplc_Rectdv

# Function: __glsplc_Rectf
# Declared: Line 1003 (Source lines: 1004-1013)
# Address: 0x0dbbc6ec - 0x0dbbc768 (Size: 124 bytes, Frame: 208)
.globl __glsplc_Rectf
.ent __glsplc_Rectf
__glsplc_Rectf:
    # Line 1007
    li	$a1,45
    li	$a0,16
    # Line 1004
    addiu	$sp,$sp,-80
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sd	$gp,32($sp)
    lui	$at,0x4
    addiu	$at,$at,8108
    addu	$gp,$t9,$at
    # Line 1007
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    # Line 1011
    ldc1	$f2,16($sp)
    # Line 1009
    ldc1	$f0,0($sp)
    # Line 1007
    bnez	$v0,.L0dbbc744
    ldc1	$f3,24($sp)
    ld	$gp,32($sp)
    # Line 1008
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbc744:
    # Line 1013
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    # Line 1010
    ldc1	$f1,8($sp)
    # Line 1013
    addiu	$sp,$sp,80
    # Line 1012
    swc1	$f3,12($v0)
    # Line 1011
    swc1	$f2,8($v0)
    # Line 1009
    swc1	$f0,0($v0)
    # Line 1013
    jr	$ra
    # Line 1010
    swc1	$f1,4($v0)
.end __glsplc_Rectf

# Function: __glsplc_Rectfv
# Declared: Line 1016 (Source lines: 1017-1026)
# Address: 0x0dbbc768 - 0x0dbbc7e4 (Size: 124 bytes, Frame: 48)
.globl __glsplc_Rectfv
.ent __glsplc_Rectfv
__glsplc_Rectfv:
    # Line 1017
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    # Line 1020
    li	$a1,45
    sd	$gp,16($sp)
    # Line 1017
    lui	$at,0x4
    addiu	$at,$at,7984
    addu	$gp,$t9,$at
    # Line 1020
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    li	$a0,16
    # Line 1026
    ld	$ra,24($sp)
    # Line 1020
    bnez	$v0,.L0dbbc7b4
    ld	$gp,16($sp)
    # Line 1021
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbc7b4:
    ld	$a2,0($sp)
    # Line 1022
    lwc1	$f3,0($a2)
    swc1	$f3,0($v0)
    # Line 1023
    lwc1	$f2,4($a2)
    # Line 1024
    ld	$v1,8($sp)
    # Line 1023
    swc1	$f2,4($v0)
    # Line 1024
    lwc1	$f1,0($v1)
    swc1	$f1,8($v0)
    # Line 1025
    lwc1	$f0,4($v1)
    # Line 1026
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1025
    swc1	$f0,12($v0)
.end __glsplc_Rectfv

# Function: __glsplc_Recti
# Declared: Line 1029 (Source lines: 1030-1039)
# Address: 0x0dbbc7e4 - 0x0dbbc860 (Size: 124 bytes, Frame: 208)
.globl __glsplc_Recti
.ent __glsplc_Recti
__glsplc_Recti:
    # Line 1030
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 1033
    li	$a1,46
    sd	$a0,0($sp)
    li	$a0,16
    sd	$gp,32($sp)
    # Line 1030
    lui	$at,0x4
    addiu	$at,$at,7860
    addu	$gp,$t9,$at
    # Line 1033
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a3,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    ld	$ra,8($sp)
    # Line 1037
    ld	$a5,24($sp)
    # Line 1033
    bnez	$v0,.L0dbbc83c
    # Line 1035
    ld	$v1,0($sp)
    ld	$gp,32($sp)
    # Line 1034
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbc83c:
    # Line 1035
    sw	$v1,0($v0)
    ld	$gp,32($sp)
    # Line 1036
    ld	$a4,16($sp)
    # Line 1038
    sw	$ra,12($v0)
    # Line 1039
    ld	$ra,40($sp)
    addiu	$sp,$sp,80
    # Line 1037
    sw	$a5,8($v0)
    # Line 1039
    jr	$ra
    # Line 1036
    sw	$a4,4($v0)
.end __glsplc_Recti

# Function: __glsplc_Rectiv
# Declared: Line 1042 (Source lines: 1043-1052)
# Address: 0x0dbbc860 - 0x0dbbc8dc (Size: 124 bytes, Frame: 48)
.globl __glsplc_Rectiv
.ent __glsplc_Rectiv
__glsplc_Rectiv:
    # Line 1043
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    # Line 1046
    li	$a1,46
    sd	$gp,16($sp)
    # Line 1043
    lui	$at,0x4
    addiu	$at,$at,7736
    addu	$gp,$t9,$at
    # Line 1046
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    li	$a0,16
    # Line 1047
    ld	$ra,24($sp)
    # Line 1046
    bnez	$v0,.L0dbbc8a8
    ld	$gp,16($sp)
    ld	$gp,16($sp)
    # Line 1047
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbc8a8:
    ld	$a3,0($sp)
    # Line 1048
    lw	$ra,0($a3)
    sw	$ra,0($v0)
    # Line 1049
    lw	$a3,4($a3)
    # Line 1050
    ld	$v1,8($sp)
    # Line 1049
    sw	$a3,4($v0)
    # Line 1050
    lw	$a2,0($v1)
    sw	$a2,8($v0)
    # Line 1052
    ld	$ra,24($sp)
    # Line 1051
    lw	$v1,4($v1)
    # Line 1052
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1051
    sw	$v1,12($v0)
.end __glsplc_Rectiv

# Function: __glsplc_Rects
# Declared: Line 1055 (Source lines: 1056-1065)
# Address: 0x0dbbc8dc - 0x0dbbc958 (Size: 124 bytes, Frame: 208)
.globl __glsplc_Rects
.ent __glsplc_Rects
__glsplc_Rects:
    # Line 1056
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 1059
    li	$a1,47
    sd	$a0,0($sp)
    li	$a0,8
    sd	$gp,32($sp)
    # Line 1056
    lui	$at,0x4
    addiu	$at,$at,7612
    addu	$gp,$t9,$at
    # Line 1059
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a3,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    ld	$ra,8($sp)
    # Line 1063
    ld	$a5,24($sp)
    # Line 1059
    bnez	$v0,.L0dbbc934
    # Line 1061
    ld	$v1,0($sp)
    ld	$gp,32($sp)
    # Line 1060
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbc934:
    # Line 1061
    sh	$v1,0($v0)
    ld	$gp,32($sp)
    # Line 1062
    ld	$a4,16($sp)
    # Line 1064
    sh	$ra,6($v0)
    # Line 1065
    ld	$ra,40($sp)
    addiu	$sp,$sp,80
    # Line 1063
    sh	$a5,4($v0)
    # Line 1065
    jr	$ra
    # Line 1062
    sh	$a4,2($v0)
.end __glsplc_Rects

# Function: __glsplc_Rectsv
# Declared: Line 1068 (Source lines: 1069-1078)
# Address: 0x0dbbc958 - 0x0dbbc9d4 (Size: 124 bytes, Frame: 48)
.globl __glsplc_Rectsv
.ent __glsplc_Rectsv
__glsplc_Rectsv:
    # Line 1069
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    # Line 1072
    li	$a1,47
    sd	$gp,16($sp)
    # Line 1069
    lui	$at,0x4
    addiu	$at,$at,7488
    addu	$gp,$t9,$at
    # Line 1072
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    li	$a0,8
    # Line 1073
    ld	$ra,24($sp)
    # Line 1072
    bnez	$v0,.L0dbbc9a0
    ld	$gp,16($sp)
    ld	$gp,16($sp)
    # Line 1073
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbc9a0:
    ld	$a3,0($sp)
    # Line 1074
    lh	$ra,0($a3)
    sh	$ra,0($v0)
    # Line 1075
    lh	$a3,2($a3)
    # Line 1076
    ld	$v1,8($sp)
    # Line 1075
    sh	$a3,2($v0)
    # Line 1076
    lh	$a2,0($v1)
    sh	$a2,4($v0)
    # Line 1078
    ld	$ra,24($sp)
    # Line 1077
    lh	$v1,2($v1)
    # Line 1078
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1077
    sh	$v1,6($v0)
.end __glsplc_Rectsv

# Function: __glsplc_TexCoord1d
# Declared: Line 1081 (Source lines: 1082-1088)
# Address: 0x0dbbc9d4 - 0x0dbbca2c (Size: 88 bytes, Frame: 48)
.globl __glsplc_TexCoord1d
.ent __glsplc_TexCoord1d
__glsplc_TexCoord1d:
    # Line 1085
    li	$a1,48
    # Line 1082
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,7364
    addu	$gp,$t9,$at
    # Line 1085
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    li	$a0,8
    sd	$ra,16($sp)
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    ldc1	$f0,0($sp)
    bnez	$v0,.L0dbbca1c
    # Line 1088
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1086
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbca1c:
    ld	$gp,8($sp)
    # Line 1088
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1087
    sdc1	$f0,0($v0)
.end __glsplc_TexCoord1d

# Function: __glsplc_TexCoord1dv
# Declared: Line 1091 (Source lines: 1092-1098)
# Address: 0x0dbbca2c - 0x0dbbca88 (Size: 92 bytes, Frame: 48)
.globl __glsplc_TexCoord1dv
.ent __glsplc_TexCoord1dv
__glsplc_TexCoord1dv:
    # Line 1095
    li	$a1,48
    # Line 1092
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,7276
    addu	$gp,$t9,$at
    # Line 1095
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc2
    li	$a0,8
    bnez	$v0,.L0dbbca70
    # Line 1098
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1096
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbca70:
    ld	$v1,0($sp)
    ld	$gp,8($sp)
    # Line 1097
    ldc1	$f0,0($v1)
    # Line 1098
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1097
    sdc1	$f0,0($v0)
.end __glsplc_TexCoord1dv

# Function: __glsplc_TexCoord1f
# Declared: Line 1101 (Source lines: 1102-1108)
# Address: 0x0dbbca88 - 0x0dbbcae0 (Size: 88 bytes, Frame: 48)
.globl __glsplc_TexCoord1f
.ent __glsplc_TexCoord1f
__glsplc_TexCoord1f:
    # Line 1105
    li	$a1,49
    # Line 1102
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,7184
    addu	$gp,$t9,$at
    # Line 1105
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,4
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    ldc1	$f0,0($sp)
    bnez	$v0,.L0dbbcad0
    # Line 1108
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1106
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbcad0:
    ld	$gp,8($sp)
    # Line 1108
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1107
    swc1	$f0,0($v0)
.end __glsplc_TexCoord1f

# Function: __glsplc_TexCoord1fv
# Declared: Line 1111 (Source lines: 1112-1118)
# Address: 0x0dbbcae0 - 0x0dbbcb3c (Size: 92 bytes, Frame: 48)
.globl __glsplc_TexCoord1fv
.ent __glsplc_TexCoord1fv
__glsplc_TexCoord1fv:
    # Line 1115
    li	$a1,49
    # Line 1112
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,7096
    addu	$gp,$t9,$at
    # Line 1115
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    bnez	$v0,.L0dbbcb24
    # Line 1118
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1116
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbcb24:
    ld	$v1,0($sp)
    ld	$gp,8($sp)
    # Line 1117
    lwc1	$f0,0($v1)
    # Line 1118
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1117
    swc1	$f0,0($v0)
.end __glsplc_TexCoord1fv

# Function: __glsplc_TexCoord1i
# Declared: Line 1121 (Source lines: 1122-1128)
# Address: 0x0dbbcb3c - 0x0dbbcb94 (Size: 88 bytes, Frame: 48)
.globl __glsplc_TexCoord1i
.ent __glsplc_TexCoord1i
__glsplc_TexCoord1i:
    # Line 1125
    li	$a1,50
    # Line 1122
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,7004
    addu	$gp,$t9,$at
    # Line 1125
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbbcb84
    # Line 1128
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1126
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbcb84:
    ld	$gp,8($sp)
    # Line 1128
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1127
    sw	$v1,0($v0)
.end __glsplc_TexCoord1i

# Function: __glsplc_TexCoord1iv
# Declared: Line 1131 (Source lines: 1132-1138)
# Address: 0x0dbbcb94 - 0x0dbbcbf0 (Size: 92 bytes, Frame: 48)
.globl __glsplc_TexCoord1iv
.ent __glsplc_TexCoord1iv
__glsplc_TexCoord1iv:
    # Line 1135
    li	$a1,50
    # Line 1132
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,6916
    addu	$gp,$t9,$at
    # Line 1135
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    bnez	$v0,.L0dbbcbd8
    # Line 1138
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1136
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbcbd8:
    ld	$v1,0($sp)
    ld	$gp,8($sp)
    # Line 1137
    lw	$v1,0($v1)
    # Line 1138
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1137
    sw	$v1,0($v0)
.end __glsplc_TexCoord1iv

# Function: __glsplc_TexCoord1s
# Declared: Line 1141 (Source lines: 1142-1148)
# Address: 0x0dbbcbf0 - 0x0dbbcc48 (Size: 88 bytes, Frame: 48)
.globl __glsplc_TexCoord1s
.ent __glsplc_TexCoord1s
__glsplc_TexCoord1s:
    # Line 1145
    li	$a1,51
    # Line 1142
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,6824
    addu	$gp,$t9,$at
    # Line 1145
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbbcc38
    # Line 1148
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1146
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbcc38:
    ld	$gp,8($sp)
    # Line 1148
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1147
    sh	$v1,0($v0)
.end __glsplc_TexCoord1s

# Function: __glsplc_TexCoord1sv
# Declared: Line 1151 (Source lines: 1152-1158)
# Address: 0x0dbbcc48 - 0x0dbbcca4 (Size: 92 bytes, Frame: 48)
.globl __glsplc_TexCoord1sv
.ent __glsplc_TexCoord1sv
__glsplc_TexCoord1sv:
    # Line 1155
    li	$a1,51
    # Line 1152
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,6736
    addu	$gp,$t9,$at
    # Line 1155
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    bnez	$v0,.L0dbbcc8c
    # Line 1158
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1156
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbcc8c:
    ld	$v1,0($sp)
    ld	$gp,8($sp)
    # Line 1157
    lh	$v1,0($v1)
    # Line 1158
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1157
    sh	$v1,0($v0)
.end __glsplc_TexCoord1sv

# Function: __glsplc_TexCoord2d
# Declared: Line 1161 (Source lines: 1162-1169)
# Address: 0x0dbbcca4 - 0x0dbbcd08 (Size: 100 bytes, Frame: 48)
.globl __glsplc_TexCoord2d
.ent __glsplc_TexCoord2d
__glsplc_TexCoord2d:
    # Line 1165
    li	$a1,52
    li	$a0,16
    # Line 1162
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$at,0x4
    addiu	$at,$at,6644
    addu	$gp,$t9,$at
    # Line 1165
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sdc1	$f13,8($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    # Line 1167
    ldc1	$f0,0($sp)
    # Line 1165
    bnez	$v0,.L0dbbccf0
    ldc1	$f1,8($sp)
    ld	$gp,16($sp)
    # Line 1166
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbccf0:
    # Line 1169
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 1168
    sdc1	$f1,8($v0)
    # Line 1169
    jr	$ra
    # Line 1167
    sdc1	$f0,0($v0)
.end __glsplc_TexCoord2d

# Function: __glsplc_TexCoord2dv
# Declared: Line 1172 (Source lines: 1173-1180)
# Address: 0x0dbbcd08 - 0x0dbbcd6c (Size: 100 bytes, Frame: 48)
.globl __glsplc_TexCoord2dv
.ent __glsplc_TexCoord2dv
__glsplc_TexCoord2dv:
    # Line 1176
    li	$a1,52
    # Line 1173
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,6544
    addu	$gp,$t9,$at
    # Line 1176
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc2
    li	$a0,16
    bnez	$v0,.L0dbbcd4c
    # Line 1180
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1177
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbcd4c:
    ld	$v1,0($sp)
    # Line 1178
    ldc1	$f1,0($v1)
    sdc1	$f1,0($v0)
    ld	$gp,8($sp)
    # Line 1179
    ldc1	$f0,8($v1)
    # Line 1180
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1179
    sdc1	$f0,8($v0)
.end __glsplc_TexCoord2dv

# Function: __glsplc_TexCoord2f
# Declared: Line 1183 (Source lines: 1184-1191)
# Address: 0x0dbbcd6c - 0x0dbbcdd0 (Size: 100 bytes, Frame: 48)
.globl __glsplc_TexCoord2f
.ent __glsplc_TexCoord2f
__glsplc_TexCoord2f:
    # Line 1187
    li	$a1,53
    li	$a0,8
    # Line 1184
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$at,0x4
    addiu	$at,$at,6444
    addu	$gp,$t9,$at
    # Line 1187
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sdc1	$f13,8($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    # Line 1189
    ldc1	$f0,0($sp)
    # Line 1187
    bnez	$v0,.L0dbbcdb8
    ldc1	$f1,8($sp)
    ld	$gp,16($sp)
    # Line 1188
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbcdb8:
    # Line 1191
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 1190
    swc1	$f1,4($v0)
    # Line 1191
    jr	$ra
    # Line 1189
    swc1	$f0,0($v0)
.end __glsplc_TexCoord2f

# Function: __glsplc_TexCoord2fv
# Declared: Line 1194 (Source lines: 1195-1202)
# Address: 0x0dbbcdd0 - 0x0dbbce34 (Size: 100 bytes, Frame: 48)
.globl __glsplc_TexCoord2fv
.ent __glsplc_TexCoord2fv
__glsplc_TexCoord2fv:
    # Line 1198
    li	$a1,53
    # Line 1195
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,6344
    addu	$gp,$t9,$at
    # Line 1198
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,8
    bnez	$v0,.L0dbbce14
    # Line 1202
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1199
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbce14:
    ld	$v1,0($sp)
    # Line 1200
    lwc1	$f1,0($v1)
    swc1	$f1,0($v0)
    ld	$gp,8($sp)
    # Line 1201
    lwc1	$f0,4($v1)
    # Line 1202
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1201
    swc1	$f0,4($v0)
.end __glsplc_TexCoord2fv

# Function: __glsplc_TexCoord2i
# Declared: Line 1205 (Source lines: 1206-1213)
# Address: 0x0dbbce34 - 0x0dbbce98 (Size: 100 bytes, Frame: 48)
.globl __glsplc_TexCoord2i
.ent __glsplc_TexCoord2i
__glsplc_TexCoord2i:
    # Line 1206
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    # Line 1209
    li	$a1,54
    sd	$gp,16($sp)
    # Line 1206
    lui	$at,0x4
    addiu	$at,$at,6244
    addu	$gp,$t9,$at
    # Line 1209
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    li	$a0,8
    # Line 1211
    ld	$v1,0($sp)
    # Line 1209
    bnez	$v0,.L0dbbce80
    ld	$a2,8($sp)
    ld	$gp,16($sp)
    # Line 1210
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbce80:
    # Line 1213
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 1212
    sw	$a2,4($v0)
    # Line 1213
    jr	$ra
    # Line 1211
    sw	$v1,0($v0)
.end __glsplc_TexCoord2i

# Function: __glsplc_TexCoord2iv
# Declared: Line 1216 (Source lines: 1217-1224)
# Address: 0x0dbbce98 - 0x0dbbcefc (Size: 100 bytes, Frame: 48)
.globl __glsplc_TexCoord2iv
.ent __glsplc_TexCoord2iv
__glsplc_TexCoord2iv:
    # Line 1220
    li	$a1,54
    # Line 1217
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,6144
    addu	$gp,$t9,$at
    # Line 1220
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,8
    bnez	$v0,.L0dbbcedc
    # Line 1224
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1221
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbcedc:
    ld	$v1,0($sp)
    # Line 1222
    lw	$a1,0($v1)
    sw	$a1,0($v0)
    ld	$gp,8($sp)
    # Line 1223
    lw	$v1,4($v1)
    # Line 1224
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1223
    sw	$v1,4($v0)
.end __glsplc_TexCoord2iv

# Function: __glsplc_TexCoord2s
# Declared: Line 1227 (Source lines: 1228-1235)
# Address: 0x0dbbcefc - 0x0dbbcf60 (Size: 100 bytes, Frame: 48)
.globl __glsplc_TexCoord2s
.ent __glsplc_TexCoord2s
__glsplc_TexCoord2s:
    # Line 1228
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    # Line 1231
    li	$a1,55
    sd	$gp,16($sp)
    # Line 1228
    lui	$at,0x4
    addiu	$at,$at,6044
    addu	$gp,$t9,$at
    # Line 1231
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    li	$a0,4
    # Line 1233
    ld	$v1,0($sp)
    # Line 1231
    bnez	$v0,.L0dbbcf48
    ld	$a2,8($sp)
    ld	$gp,16($sp)
    # Line 1232
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbcf48:
    # Line 1235
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 1234
    sh	$a2,2($v0)
    # Line 1235
    jr	$ra
    # Line 1233
    sh	$v1,0($v0)
.end __glsplc_TexCoord2s

# Function: __glsplc_TexCoord2sv
# Declared: Line 1238 (Source lines: 1239-1246)
# Address: 0x0dbbcf60 - 0x0dbbcfc4 (Size: 100 bytes, Frame: 48)
.globl __glsplc_TexCoord2sv
.ent __glsplc_TexCoord2sv
__glsplc_TexCoord2sv:
    # Line 1242
    li	$a1,55
    # Line 1239
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,5944
    addu	$gp,$t9,$at
    # Line 1242
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    bnez	$v0,.L0dbbcfa4
    # Line 1246
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1243
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbcfa4:
    ld	$v1,0($sp)
    # Line 1244
    lh	$a1,0($v1)
    sh	$a1,0($v0)
    ld	$gp,8($sp)
    # Line 1245
    lh	$v1,2($v1)
    # Line 1246
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1245
    sh	$v1,2($v0)
.end __glsplc_TexCoord2sv

# Function: __glsplc_TexCoord3d
# Declared: Line 1249 (Source lines: 1250-1258)
# Address: 0x0dbbcfc4 - 0x0dbbd034 (Size: 112 bytes, Frame: 208)
.globl __glsplc_TexCoord3d
.ent __glsplc_TexCoord3d
__glsplc_TexCoord3d:
    # Line 1253
    li	$a1,56
    li	$a0,24
    # Line 1250
    addiu	$sp,$sp,-80
    sdc1	$f14,16($sp)
    sd	$gp,24($sp)
    lui	$at,0x4
    addiu	$at,$at,5844
    addu	$gp,$t9,$at
    # Line 1253
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sdc1	$f13,8($sp)
    sd	$ra,32($sp)
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    # Line 1256
    ldc1	$f1,8($sp)
    # Line 1258
    ld	$ra,32($sp)
    # Line 1253
    bnez	$v0,.L0dbbd018
    ldc1	$f2,16($sp)
    ld	$gp,24($sp)
    # Line 1254
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbd018:
    ld	$gp,24($sp)
    # Line 1255
    ldc1	$f0,0($sp)
    # Line 1258
    addiu	$sp,$sp,80
    # Line 1257
    sdc1	$f2,16($v0)
    # Line 1256
    sdc1	$f1,8($v0)
    # Line 1258
    jr	$ra
    # Line 1255
    sdc1	$f0,0($v0)
.end __glsplc_TexCoord3d

# Function: __glsplc_TexCoord3dv
# Declared: Line 1261 (Source lines: 1262-1270)
# Address: 0x0dbbd034 - 0x0dbbd0a0 (Size: 108 bytes, Frame: 48)
.globl __glsplc_TexCoord3dv
.ent __glsplc_TexCoord3dv
__glsplc_TexCoord3dv:
    # Line 1265
    li	$a1,56
    # Line 1262
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,5732
    addu	$gp,$t9,$at
    # Line 1265
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc2
    li	$a0,24
    bnez	$v0,.L0dbbd078
    # Line 1270
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1266
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbd078:
    ld	$v1,0($sp)
    # Line 1267
    ldc1	$f2,0($v1)
    sdc1	$f2,0($v0)
    # Line 1268
    ldc1	$f1,8($v1)
    sdc1	$f1,8($v0)
    ld	$gp,8($sp)
    # Line 1269
    ldc1	$f0,16($v1)
    # Line 1270
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1269
    sdc1	$f0,16($v0)
.end __glsplc_TexCoord3dv

# Function: __glsplc_TexCoord3f
# Declared: Line 1273 (Source lines: 1274-1282)
# Address: 0x0dbbd0a0 - 0x0dbbd110 (Size: 112 bytes, Frame: 208)
.globl __glsplc_TexCoord3f
.ent __glsplc_TexCoord3f
__glsplc_TexCoord3f:
    # Line 1277
    li	$a1,57
    li	$a0,12
    # Line 1274
    addiu	$sp,$sp,-80
    sdc1	$f14,16($sp)
    sd	$gp,24($sp)
    lui	$at,0x4
    addiu	$at,$at,5624
    addu	$gp,$t9,$at
    # Line 1277
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sdc1	$f13,8($sp)
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    # Line 1280
    ldc1	$f1,8($sp)
    # Line 1282
    ld	$ra,32($sp)
    # Line 1277
    bnez	$v0,.L0dbbd0f4
    ldc1	$f2,16($sp)
    ld	$gp,24($sp)
    # Line 1278
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbd0f4:
    ld	$gp,24($sp)
    # Line 1279
    ldc1	$f0,0($sp)
    # Line 1282
    addiu	$sp,$sp,80
    # Line 1281
    swc1	$f2,8($v0)
    # Line 1280
    swc1	$f1,4($v0)
    # Line 1282
    jr	$ra
    # Line 1279
    swc1	$f0,0($v0)
.end __glsplc_TexCoord3f

# Function: __glsplc_TexCoord3fv
# Declared: Line 1285 (Source lines: 1286-1294)
# Address: 0x0dbbd110 - 0x0dbbd17c (Size: 108 bytes, Frame: 48)
.globl __glsplc_TexCoord3fv
.ent __glsplc_TexCoord3fv
__glsplc_TexCoord3fv:
    # Line 1289
    li	$a1,57
    # Line 1286
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,5512
    addu	$gp,$t9,$at
    # Line 1289
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,12
    bnez	$v0,.L0dbbd154
    # Line 1294
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1290
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbd154:
    ld	$v1,0($sp)
    # Line 1291
    lwc1	$f2,0($v1)
    swc1	$f2,0($v0)
    # Line 1292
    lwc1	$f1,4($v1)
    swc1	$f1,4($v0)
    ld	$gp,8($sp)
    # Line 1293
    lwc1	$f0,8($v1)
    # Line 1294
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1293
    swc1	$f0,8($v0)
.end __glsplc_TexCoord3fv

# Function: __glsplc_TexCoord3i
# Declared: Line 1297 (Source lines: 1298-1306)
# Address: 0x0dbbd17c - 0x0dbbd1ec (Size: 112 bytes, Frame: 208)
.globl __glsplc_TexCoord3i
.ent __glsplc_TexCoord3i
__glsplc_TexCoord3i:
    # Line 1298
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    # Line 1301
    li	$a1,58
    sd	$a0,0($sp)
    sd	$gp,24($sp)
    # Line 1298
    lui	$at,0x4
    addiu	$at,$at,5404
    addu	$gp,$t9,$at
    # Line 1301
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,12
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sd	$a2,16($sp)
    # Line 1304
    ld	$a3,8($sp)
    # Line 1306
    ld	$ra,32($sp)
    # Line 1301
    bnez	$v0,.L0dbbd1d0
    ld	$a4,16($sp)
    ld	$gp,24($sp)
    # Line 1302
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbd1d0:
    ld	$gp,24($sp)
    # Line 1303
    ld	$v1,0($sp)
    # Line 1306
    addiu	$sp,$sp,80
    # Line 1305
    sw	$a4,8($v0)
    # Line 1304
    sw	$a3,4($v0)
    # Line 1306
    jr	$ra
    # Line 1303
    sw	$v1,0($v0)
.end __glsplc_TexCoord3i

# Function: __glsplc_TexCoord3iv
# Declared: Line 1309 (Source lines: 1310-1318)
# Address: 0x0dbbd1ec - 0x0dbbd258 (Size: 108 bytes, Frame: 48)
.globl __glsplc_TexCoord3iv
.ent __glsplc_TexCoord3iv
__glsplc_TexCoord3iv:
    # Line 1313
    li	$a1,58
    # Line 1310
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,5292
    addu	$gp,$t9,$at
    # Line 1313
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,12
    bnez	$v0,.L0dbbd230
    # Line 1318
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1314
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbd230:
    ld	$v1,0($sp)
    # Line 1315
    lw	$a2,0($v1)
    sw	$a2,0($v0)
    # Line 1316
    lw	$a1,4($v1)
    sw	$a1,4($v0)
    ld	$gp,8($sp)
    # Line 1317
    lw	$v1,8($v1)
    # Line 1318
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1317
    sw	$v1,8($v0)
.end __glsplc_TexCoord3iv

# Function: __glsplc_TexCoord3s
# Declared: Line 1321 (Source lines: 1322-1330)
# Address: 0x0dbbd258 - 0x0dbbd2c8 (Size: 112 bytes, Frame: 208)
.globl __glsplc_TexCoord3s
.ent __glsplc_TexCoord3s
__glsplc_TexCoord3s:
    # Line 1322
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    # Line 1325
    li	$a1,59
    sd	$a0,0($sp)
    sd	$gp,24($sp)
    # Line 1322
    lui	$at,0x4
    addiu	$at,$at,5184
    addu	$gp,$t9,$at
    # Line 1325
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,8
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sd	$a2,16($sp)
    # Line 1328
    ld	$a3,8($sp)
    # Line 1330
    ld	$ra,32($sp)
    # Line 1325
    bnez	$v0,.L0dbbd2ac
    ld	$a4,16($sp)
    ld	$gp,24($sp)
    # Line 1326
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbd2ac:
    ld	$gp,24($sp)
    # Line 1327
    ld	$v1,0($sp)
    # Line 1330
    addiu	$sp,$sp,80
    # Line 1329
    sh	$a4,4($v0)
    # Line 1328
    sh	$a3,2($v0)
    # Line 1330
    jr	$ra
    # Line 1327
    sh	$v1,0($v0)
.end __glsplc_TexCoord3s

# Function: __glsplc_TexCoord3sv
# Declared: Line 1333 (Source lines: 1334-1342)
# Address: 0x0dbbd2c8 - 0x0dbbd334 (Size: 108 bytes, Frame: 48)
.globl __glsplc_TexCoord3sv
.ent __glsplc_TexCoord3sv
__glsplc_TexCoord3sv:
    # Line 1337
    li	$a1,59
    # Line 1334
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,5072
    addu	$gp,$t9,$at
    # Line 1337
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,8
    bnez	$v0,.L0dbbd30c
    # Line 1342
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1338
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbd30c:
    ld	$v1,0($sp)
    # Line 1339
    lh	$a2,0($v1)
    sh	$a2,0($v0)
    # Line 1340
    lh	$a1,2($v1)
    sh	$a1,2($v0)
    ld	$gp,8($sp)
    # Line 1341
    lh	$v1,4($v1)
    # Line 1342
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1341
    sh	$v1,4($v0)
.end __glsplc_TexCoord3sv

# Function: __glsplc_TexCoord4d
# Declared: Line 1345 (Source lines: 1346-1355)
# Address: 0x0dbbd334 - 0x0dbbd3b0 (Size: 124 bytes, Frame: 208)
.globl __glsplc_TexCoord4d
.ent __glsplc_TexCoord4d
__glsplc_TexCoord4d:
    # Line 1349
    li	$a1,60
    li	$a0,32
    # Line 1346
    addiu	$sp,$sp,-80
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sd	$gp,32($sp)
    lui	$at,0x4
    addiu	$at,$at,4964
    addu	$gp,$t9,$at
    # Line 1349
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    # Line 1353
    ldc1	$f2,16($sp)
    # Line 1351
    ldc1	$f0,0($sp)
    # Line 1349
    bnez	$v0,.L0dbbd38c
    ldc1	$f3,24($sp)
    ld	$gp,32($sp)
    # Line 1350
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbd38c:
    # Line 1355
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    # Line 1352
    ldc1	$f1,8($sp)
    # Line 1355
    addiu	$sp,$sp,80
    # Line 1354
    sdc1	$f3,24($v0)
    # Line 1353
    sdc1	$f2,16($v0)
    # Line 1351
    sdc1	$f0,0($v0)
    # Line 1355
    jr	$ra
    # Line 1352
    sdc1	$f1,8($v0)
.end __glsplc_TexCoord4d

# Function: __glsplc_TexCoord4dv
# Declared: Line 1358 (Source lines: 1359-1368)
# Address: 0x0dbbd3b0 - 0x0dbbd424 (Size: 116 bytes, Frame: 48)
.globl __glsplc_TexCoord4dv
.ent __glsplc_TexCoord4dv
__glsplc_TexCoord4dv:
    # Line 1362
    li	$a1,60
    # Line 1359
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,4840
    addu	$gp,$t9,$at
    # Line 1362
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc2
    li	$a0,32
    bnez	$v0,.L0dbbd3f4
    # Line 1368
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1363
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbd3f4:
    ld	$v1,0($sp)
    # Line 1364
    ldc1	$f3,0($v1)
    sdc1	$f3,0($v0)
    # Line 1365
    ldc1	$f2,8($v1)
    sdc1	$f2,8($v0)
    # Line 1366
    ldc1	$f1,16($v1)
    sdc1	$f1,16($v0)
    ld	$gp,8($sp)
    # Line 1367
    ldc1	$f0,24($v1)
    # Line 1368
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1367
    sdc1	$f0,24($v0)
.end __glsplc_TexCoord4dv

# Function: __glsplc_TexCoord4f
# Declared: Line 1371 (Source lines: 1372-1381)
# Address: 0x0dbbd424 - 0x0dbbd4a0 (Size: 124 bytes, Frame: 208)
.globl __glsplc_TexCoord4f
.ent __glsplc_TexCoord4f
__glsplc_TexCoord4f:
    # Line 1375
    li	$a1,61
    li	$a0,16
    # Line 1372
    addiu	$sp,$sp,-80
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sd	$gp,32($sp)
    lui	$at,0x4
    addiu	$at,$at,4724
    addu	$gp,$t9,$at
    # Line 1375
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    # Line 1379
    ldc1	$f2,16($sp)
    # Line 1377
    ldc1	$f0,0($sp)
    # Line 1375
    bnez	$v0,.L0dbbd47c
    ldc1	$f3,24($sp)
    ld	$gp,32($sp)
    # Line 1376
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbd47c:
    # Line 1381
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    # Line 1378
    ldc1	$f1,8($sp)
    # Line 1381
    addiu	$sp,$sp,80
    # Line 1380
    swc1	$f3,12($v0)
    # Line 1379
    swc1	$f2,8($v0)
    # Line 1377
    swc1	$f0,0($v0)
    # Line 1381
    jr	$ra
    # Line 1378
    swc1	$f1,4($v0)
.end __glsplc_TexCoord4f

# Function: __glsplc_TexCoord4fv
# Declared: Line 1384 (Source lines: 1385-1394)
# Address: 0x0dbbd4a0 - 0x0dbbd514 (Size: 116 bytes, Frame: 48)
.globl __glsplc_TexCoord4fv
.ent __glsplc_TexCoord4fv
__glsplc_TexCoord4fv:
    # Line 1388
    li	$a1,61
    # Line 1385
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,4600
    addu	$gp,$t9,$at
    # Line 1388
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,16
    bnez	$v0,.L0dbbd4e4
    # Line 1394
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1389
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbd4e4:
    ld	$v1,0($sp)
    # Line 1390
    lwc1	$f3,0($v1)
    swc1	$f3,0($v0)
    # Line 1391
    lwc1	$f2,4($v1)
    swc1	$f2,4($v0)
    # Line 1392
    lwc1	$f1,8($v1)
    swc1	$f1,8($v0)
    ld	$gp,8($sp)
    # Line 1393
    lwc1	$f0,12($v1)
    # Line 1394
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1393
    swc1	$f0,12($v0)
.end __glsplc_TexCoord4fv

# Function: __glsplc_TexCoord4i
# Declared: Line 1397 (Source lines: 1398-1407)
# Address: 0x0dbbd514 - 0x0dbbd590 (Size: 124 bytes, Frame: 208)
.globl __glsplc_TexCoord4i
.ent __glsplc_TexCoord4i
__glsplc_TexCoord4i:
    # Line 1398
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 1401
    li	$a1,62
    sd	$a0,0($sp)
    li	$a0,16
    sd	$gp,32($sp)
    # Line 1398
    lui	$at,0x4
    addiu	$at,$at,4484
    addu	$gp,$t9,$at
    # Line 1401
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a3,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    ld	$ra,8($sp)
    # Line 1405
    ld	$a5,24($sp)
    # Line 1401
    bnez	$v0,.L0dbbd56c
    # Line 1403
    ld	$v1,0($sp)
    ld	$gp,32($sp)
    # Line 1402
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbd56c:
    # Line 1403
    sw	$v1,0($v0)
    ld	$gp,32($sp)
    # Line 1404
    ld	$a4,16($sp)
    # Line 1406
    sw	$ra,12($v0)
    # Line 1407
    ld	$ra,40($sp)
    addiu	$sp,$sp,80
    # Line 1405
    sw	$a5,8($v0)
    # Line 1407
    jr	$ra
    # Line 1404
    sw	$a4,4($v0)
.end __glsplc_TexCoord4i

# Function: __glsplc_TexCoord4iv
# Declared: Line 1410 (Source lines: 1411-1420)
# Address: 0x0dbbd590 - 0x0dbbd604 (Size: 116 bytes, Frame: 48)
.globl __glsplc_TexCoord4iv
.ent __glsplc_TexCoord4iv
__glsplc_TexCoord4iv:
    # Line 1414
    li	$a1,62
    # Line 1411
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,4360
    addu	$gp,$t9,$at
    # Line 1414
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,16
    ld	$gp,8($sp)
    bnez	$v0,.L0dbbd5d0
    # Line 1415
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbd5d0:
    ld	$gp,8($sp)
    ld	$v1,0($sp)
    # Line 1416
    lw	$ra,0($v1)
    sw	$ra,0($v0)
    # Line 1417
    lw	$a2,4($v1)
    sw	$a2,4($v0)
    # Line 1418
    lw	$a1,8($v1)
    sw	$a1,8($v0)
    # Line 1420
    ld	$ra,16($sp)
    # Line 1419
    lw	$v1,12($v1)
    # Line 1420
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1419
    sw	$v1,12($v0)
.end __glsplc_TexCoord4iv

# Function: __glsplc_TexCoord4s
# Declared: Line 1423 (Source lines: 1424-1433)
# Address: 0x0dbbd604 - 0x0dbbd680 (Size: 124 bytes, Frame: 208)
.globl __glsplc_TexCoord4s
.ent __glsplc_TexCoord4s
__glsplc_TexCoord4s:
    # Line 1424
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 1427
    li	$a1,63
    sd	$a0,0($sp)
    li	$a0,8
    sd	$gp,32($sp)
    # Line 1424
    lui	$at,0x4
    addiu	$at,$at,4244
    addu	$gp,$t9,$at
    # Line 1427
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a3,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    ld	$ra,8($sp)
    # Line 1431
    ld	$a5,24($sp)
    # Line 1427
    bnez	$v0,.L0dbbd65c
    # Line 1429
    ld	$v1,0($sp)
    ld	$gp,32($sp)
    # Line 1428
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbd65c:
    # Line 1429
    sh	$v1,0($v0)
    ld	$gp,32($sp)
    # Line 1430
    ld	$a4,16($sp)
    # Line 1432
    sh	$ra,6($v0)
    # Line 1433
    ld	$ra,40($sp)
    addiu	$sp,$sp,80
    # Line 1431
    sh	$a5,4($v0)
    # Line 1433
    jr	$ra
    # Line 1430
    sh	$a4,2($v0)
.end __glsplc_TexCoord4s

# Function: __glsplc_TexCoord4sv
# Declared: Line 1436 (Source lines: 1437-1446)
# Address: 0x0dbbd680 - 0x0dbbd6f4 (Size: 116 bytes, Frame: 48)
.globl __glsplc_TexCoord4sv
.ent __glsplc_TexCoord4sv
__glsplc_TexCoord4sv:
    # Line 1440
    li	$a1,63
    # Line 1437
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,4120
    addu	$gp,$t9,$at
    # Line 1440
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,8
    ld	$gp,8($sp)
    bnez	$v0,.L0dbbd6c0
    # Line 1441
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbd6c0:
    ld	$gp,8($sp)
    ld	$v1,0($sp)
    # Line 1442
    lh	$ra,0($v1)
    sh	$ra,0($v0)
    # Line 1443
    lh	$a2,2($v1)
    sh	$a2,2($v0)
    # Line 1444
    lh	$a1,4($v1)
    sh	$a1,4($v0)
    # Line 1446
    ld	$ra,16($sp)
    # Line 1445
    lh	$v1,6($v1)
    # Line 1446
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1445
    sh	$v1,6($v0)
.end __glsplc_TexCoord4sv

# Function: __glsplc_Vertex2d
# Declared: Line 1449 (Source lines: 1450-1457)
# Address: 0x0dbbd6f4 - 0x0dbbd758 (Size: 100 bytes, Frame: 48)
.globl __glsplc_Vertex2d
.ent __glsplc_Vertex2d
__glsplc_Vertex2d:
    # Line 1453
    li	$a1,64
    li	$a0,16
    # Line 1450
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$at,0x4
    addiu	$at,$at,4004
    addu	$gp,$t9,$at
    # Line 1453
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sdc1	$f13,8($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    # Line 1455
    ldc1	$f0,0($sp)
    # Line 1453
    bnez	$v0,.L0dbbd740
    ldc1	$f1,8($sp)
    ld	$gp,16($sp)
    # Line 1454
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbd740:
    # Line 1457
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 1456
    sdc1	$f1,8($v0)
    # Line 1457
    jr	$ra
    # Line 1455
    sdc1	$f0,0($v0)
.end __glsplc_Vertex2d

# Function: __glsplc_Vertex2dv
# Declared: Line 1460 (Source lines: 1461-1468)
# Address: 0x0dbbd758 - 0x0dbbd7bc (Size: 100 bytes, Frame: 48)
.globl __glsplc_Vertex2dv
.ent __glsplc_Vertex2dv
__glsplc_Vertex2dv:
    # Line 1464
    li	$a1,64
    # Line 1461
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,3904
    addu	$gp,$t9,$at
    # Line 1464
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc2
    li	$a0,16
    bnez	$v0,.L0dbbd79c
    # Line 1468
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1465
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbd79c:
    ld	$v1,0($sp)
    # Line 1466
    ldc1	$f1,0($v1)
    sdc1	$f1,0($v0)
    ld	$gp,8($sp)
    # Line 1467
    ldc1	$f0,8($v1)
    # Line 1468
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1467
    sdc1	$f0,8($v0)
.end __glsplc_Vertex2dv

# Function: __glsplc_Vertex2f
# Declared: Line 1471 (Source lines: 1472-1479)
# Address: 0x0dbbd7bc - 0x0dbbd820 (Size: 100 bytes, Frame: 48)
.globl __glsplc_Vertex2f
.ent __glsplc_Vertex2f
__glsplc_Vertex2f:
    # Line 1475
    li	$a1,65
    li	$a0,8
    # Line 1472
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$at,0x4
    addiu	$at,$at,3804
    addu	$gp,$t9,$at
    # Line 1475
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sdc1	$f13,8($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    # Line 1477
    ldc1	$f0,0($sp)
    # Line 1475
    bnez	$v0,.L0dbbd808
    ldc1	$f1,8($sp)
    ld	$gp,16($sp)
    # Line 1476
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbd808:
    # Line 1479
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 1478
    swc1	$f1,4($v0)
    # Line 1479
    jr	$ra
    # Line 1477
    swc1	$f0,0($v0)
.end __glsplc_Vertex2f

# Function: __glsplc_Vertex2fv
# Declared: Line 1482 (Source lines: 1483-1490)
# Address: 0x0dbbd820 - 0x0dbbd884 (Size: 100 bytes, Frame: 48)
.globl __glsplc_Vertex2fv
.ent __glsplc_Vertex2fv
__glsplc_Vertex2fv:
    # Line 1486
    li	$a1,65
    # Line 1483
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,3704
    addu	$gp,$t9,$at
    # Line 1486
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,8
    bnez	$v0,.L0dbbd864
    # Line 1490
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1487
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbd864:
    ld	$v1,0($sp)
    # Line 1488
    lwc1	$f1,0($v1)
    swc1	$f1,0($v0)
    ld	$gp,8($sp)
    # Line 1489
    lwc1	$f0,4($v1)
    # Line 1490
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1489
    swc1	$f0,4($v0)
.end __glsplc_Vertex2fv

# Function: __glsplc_Vertex2i
# Declared: Line 1493 (Source lines: 1494-1501)
# Address: 0x0dbbd884 - 0x0dbbd8e8 (Size: 100 bytes, Frame: 48)
.globl __glsplc_Vertex2i
.ent __glsplc_Vertex2i
__glsplc_Vertex2i:
    # Line 1494
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    # Line 1497
    li	$a1,66
    sd	$gp,16($sp)
    # Line 1494
    lui	$at,0x4
    addiu	$at,$at,3604
    addu	$gp,$t9,$at
    # Line 1497
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    li	$a0,8
    # Line 1499
    ld	$v1,0($sp)
    # Line 1497
    bnez	$v0,.L0dbbd8d0
    ld	$a2,8($sp)
    ld	$gp,16($sp)
    # Line 1498
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbd8d0:
    # Line 1501
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 1500
    sw	$a2,4($v0)
    # Line 1501
    jr	$ra
    # Line 1499
    sw	$v1,0($v0)
.end __glsplc_Vertex2i

# Function: __glsplc_Vertex2iv
# Declared: Line 1504 (Source lines: 1505-1512)
# Address: 0x0dbbd8e8 - 0x0dbbd94c (Size: 100 bytes, Frame: 48)
.globl __glsplc_Vertex2iv
.ent __glsplc_Vertex2iv
__glsplc_Vertex2iv:
    # Line 1508
    li	$a1,66
    # Line 1505
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,3504
    addu	$gp,$t9,$at
    # Line 1508
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,8
    bnez	$v0,.L0dbbd92c
    # Line 1512
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1509
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbd92c:
    ld	$v1,0($sp)
    # Line 1510
    lw	$a1,0($v1)
    sw	$a1,0($v0)
    ld	$gp,8($sp)
    # Line 1511
    lw	$v1,4($v1)
    # Line 1512
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1511
    sw	$v1,4($v0)
.end __glsplc_Vertex2iv

# Function: __glsplc_Vertex2s
# Declared: Line 1515 (Source lines: 1516-1523)
# Address: 0x0dbbd94c - 0x0dbbd9b0 (Size: 100 bytes, Frame: 48)
.globl __glsplc_Vertex2s
.ent __glsplc_Vertex2s
__glsplc_Vertex2s:
    # Line 1516
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    # Line 1519
    li	$a1,67
    sd	$gp,16($sp)
    # Line 1516
    lui	$at,0x4
    addiu	$at,$at,3404
    addu	$gp,$t9,$at
    # Line 1519
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    li	$a0,4
    # Line 1521
    ld	$v1,0($sp)
    # Line 1519
    bnez	$v0,.L0dbbd998
    ld	$a2,8($sp)
    ld	$gp,16($sp)
    # Line 1520
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbd998:
    # Line 1523
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 1522
    sh	$a2,2($v0)
    # Line 1523
    jr	$ra
    # Line 1521
    sh	$v1,0($v0)
.end __glsplc_Vertex2s

# Function: __glsplc_Vertex2sv
# Declared: Line 1526 (Source lines: 1527-1534)
# Address: 0x0dbbd9b0 - 0x0dbbda14 (Size: 100 bytes, Frame: 48)
.globl __glsplc_Vertex2sv
.ent __glsplc_Vertex2sv
__glsplc_Vertex2sv:
    # Line 1530
    li	$a1,67
    # Line 1527
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,3304
    addu	$gp,$t9,$at
    # Line 1530
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    bnez	$v0,.L0dbbd9f4
    # Line 1534
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1531
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbd9f4:
    ld	$v1,0($sp)
    # Line 1532
    lh	$a1,0($v1)
    sh	$a1,0($v0)
    ld	$gp,8($sp)
    # Line 1533
    lh	$v1,2($v1)
    # Line 1534
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1533
    sh	$v1,2($v0)
.end __glsplc_Vertex2sv

# Function: __glsplc_Vertex3d
# Declared: Line 1537 (Source lines: 1538-1546)
# Address: 0x0dbbda14 - 0x0dbbda84 (Size: 112 bytes, Frame: 208)
.globl __glsplc_Vertex3d
.ent __glsplc_Vertex3d
__glsplc_Vertex3d:
    # Line 1541
    li	$a1,68
    li	$a0,24
    # Line 1538
    addiu	$sp,$sp,-80
    sdc1	$f14,16($sp)
    sd	$gp,24($sp)
    lui	$at,0x4
    addiu	$at,$at,3204
    addu	$gp,$t9,$at
    # Line 1541
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sdc1	$f13,8($sp)
    sd	$ra,32($sp)
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    # Line 1544
    ldc1	$f1,8($sp)
    # Line 1546
    ld	$ra,32($sp)
    # Line 1541
    bnez	$v0,.L0dbbda68
    ldc1	$f2,16($sp)
    ld	$gp,24($sp)
    # Line 1542
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbda68:
    ld	$gp,24($sp)
    # Line 1543
    ldc1	$f0,0($sp)
    # Line 1546
    addiu	$sp,$sp,80
    # Line 1545
    sdc1	$f2,16($v0)
    # Line 1544
    sdc1	$f1,8($v0)
    # Line 1546
    jr	$ra
    # Line 1543
    sdc1	$f0,0($v0)
.end __glsplc_Vertex3d

# Function: __glsplc_Vertex3dv
# Declared: Line 1549 (Source lines: 1550-1558)
# Address: 0x0dbbda84 - 0x0dbbdaf0 (Size: 108 bytes, Frame: 48)
.globl __glsplc_Vertex3dv
.ent __glsplc_Vertex3dv
__glsplc_Vertex3dv:
    # Line 1553
    li	$a1,68
    # Line 1550
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,3092
    addu	$gp,$t9,$at
    # Line 1553
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc2
    li	$a0,24
    bnez	$v0,.L0dbbdac8
    # Line 1558
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1554
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbdac8:
    ld	$v1,0($sp)
    # Line 1555
    ldc1	$f2,0($v1)
    sdc1	$f2,0($v0)
    # Line 1556
    ldc1	$f1,8($v1)
    sdc1	$f1,8($v0)
    ld	$gp,8($sp)
    # Line 1557
    ldc1	$f0,16($v1)
    # Line 1558
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1557
    sdc1	$f0,16($v0)
.end __glsplc_Vertex3dv

# Function: __glsplc_Vertex3f
# Declared: Line 1561 (Source lines: 1562-1570)
# Address: 0x0dbbdaf0 - 0x0dbbdb60 (Size: 112 bytes, Frame: 208)
.globl __glsplc_Vertex3f
.ent __glsplc_Vertex3f
__glsplc_Vertex3f:
    # Line 1565
    li	$a1,69
    li	$a0,12
    # Line 1562
    addiu	$sp,$sp,-80
    sdc1	$f14,16($sp)
    sd	$gp,24($sp)
    lui	$at,0x4
    addiu	$at,$at,2984
    addu	$gp,$t9,$at
    # Line 1565
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sdc1	$f13,8($sp)
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    # Line 1568
    ldc1	$f1,8($sp)
    # Line 1570
    ld	$ra,32($sp)
    # Line 1565
    bnez	$v0,.L0dbbdb44
    ldc1	$f2,16($sp)
    ld	$gp,24($sp)
    # Line 1566
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbdb44:
    ld	$gp,24($sp)
    # Line 1567
    ldc1	$f0,0($sp)
    # Line 1570
    addiu	$sp,$sp,80
    # Line 1569
    swc1	$f2,8($v0)
    # Line 1568
    swc1	$f1,4($v0)
    # Line 1570
    jr	$ra
    # Line 1567
    swc1	$f0,0($v0)
.end __glsplc_Vertex3f

# Function: __glsplc_Vertex3fv
# Declared: Line 1573 (Source lines: 1574-1582)
# Address: 0x0dbbdb60 - 0x0dbbdbcc (Size: 108 bytes, Frame: 48)
.globl __glsplc_Vertex3fv
.ent __glsplc_Vertex3fv
__glsplc_Vertex3fv:
    # Line 1577
    li	$a1,69
    # Line 1574
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,2872
    addu	$gp,$t9,$at
    # Line 1577
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,12
    bnez	$v0,.L0dbbdba4
    # Line 1582
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1578
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbdba4:
    ld	$v1,0($sp)
    # Line 1579
    lwc1	$f2,0($v1)
    swc1	$f2,0($v0)
    # Line 1580
    lwc1	$f1,4($v1)
    swc1	$f1,4($v0)
    ld	$gp,8($sp)
    # Line 1581
    lwc1	$f0,8($v1)
    # Line 1582
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1581
    swc1	$f0,8($v0)
.end __glsplc_Vertex3fv

# Function: __glsplc_Vertex3i
# Declared: Line 1585 (Source lines: 1586-1594)
# Address: 0x0dbbdbcc - 0x0dbbdc3c (Size: 112 bytes, Frame: 208)
.globl __glsplc_Vertex3i
.ent __glsplc_Vertex3i
__glsplc_Vertex3i:
    # Line 1586
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    # Line 1589
    li	$a1,70
    sd	$a0,0($sp)
    sd	$gp,24($sp)
    # Line 1586
    lui	$at,0x4
    addiu	$at,$at,2764
    addu	$gp,$t9,$at
    # Line 1589
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,12
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sd	$a2,16($sp)
    # Line 1592
    ld	$a3,8($sp)
    # Line 1594
    ld	$ra,32($sp)
    # Line 1589
    bnez	$v0,.L0dbbdc20
    ld	$a4,16($sp)
    ld	$gp,24($sp)
    # Line 1590
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbdc20:
    ld	$gp,24($sp)
    # Line 1591
    ld	$v1,0($sp)
    # Line 1594
    addiu	$sp,$sp,80
    # Line 1593
    sw	$a4,8($v0)
    # Line 1592
    sw	$a3,4($v0)
    # Line 1594
    jr	$ra
    # Line 1591
    sw	$v1,0($v0)
.end __glsplc_Vertex3i

# Function: __glsplc_Vertex3iv
# Declared: Line 1597 (Source lines: 1598-1606)
# Address: 0x0dbbdc3c - 0x0dbbdca8 (Size: 108 bytes, Frame: 48)
.globl __glsplc_Vertex3iv
.ent __glsplc_Vertex3iv
__glsplc_Vertex3iv:
    # Line 1601
    li	$a1,70
    # Line 1598
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,2652
    addu	$gp,$t9,$at
    # Line 1601
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,12
    bnez	$v0,.L0dbbdc80
    # Line 1606
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1602
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbdc80:
    ld	$v1,0($sp)
    # Line 1603
    lw	$a2,0($v1)
    sw	$a2,0($v0)
    # Line 1604
    lw	$a1,4($v1)
    sw	$a1,4($v0)
    ld	$gp,8($sp)
    # Line 1605
    lw	$v1,8($v1)
    # Line 1606
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1605
    sw	$v1,8($v0)
.end __glsplc_Vertex3iv

# Function: __glsplc_Vertex3s
# Declared: Line 1609 (Source lines: 1610-1618)
# Address: 0x0dbbdca8 - 0x0dbbdd18 (Size: 112 bytes, Frame: 208)
.globl __glsplc_Vertex3s
.ent __glsplc_Vertex3s
__glsplc_Vertex3s:
    # Line 1610
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    # Line 1613
    li	$a1,71
    sd	$a0,0($sp)
    sd	$gp,24($sp)
    # Line 1610
    lui	$at,0x4
    addiu	$at,$at,2544
    addu	$gp,$t9,$at
    # Line 1613
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,8
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sd	$a2,16($sp)
    # Line 1616
    ld	$a3,8($sp)
    # Line 1618
    ld	$ra,32($sp)
    # Line 1613
    bnez	$v0,.L0dbbdcfc
    ld	$a4,16($sp)
    ld	$gp,24($sp)
    # Line 1614
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbdcfc:
    ld	$gp,24($sp)
    # Line 1615
    ld	$v1,0($sp)
    # Line 1618
    addiu	$sp,$sp,80
    # Line 1617
    sh	$a4,4($v0)
    # Line 1616
    sh	$a3,2($v0)
    # Line 1618
    jr	$ra
    # Line 1615
    sh	$v1,0($v0)
.end __glsplc_Vertex3s

# Function: __glsplc_Vertex3sv
# Declared: Line 1621 (Source lines: 1622-1630)
# Address: 0x0dbbdd18 - 0x0dbbdd84 (Size: 108 bytes, Frame: 48)
.globl __glsplc_Vertex3sv
.ent __glsplc_Vertex3sv
__glsplc_Vertex3sv:
    # Line 1625
    li	$a1,71
    # Line 1622
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,2432
    addu	$gp,$t9,$at
    # Line 1625
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,8
    bnez	$v0,.L0dbbdd5c
    # Line 1630
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1626
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbdd5c:
    ld	$v1,0($sp)
    # Line 1627
    lh	$a2,0($v1)
    sh	$a2,0($v0)
    # Line 1628
    lh	$a1,2($v1)
    sh	$a1,2($v0)
    ld	$gp,8($sp)
    # Line 1629
    lh	$v1,4($v1)
    # Line 1630
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1629
    sh	$v1,4($v0)
.end __glsplc_Vertex3sv

# Function: __glsplc_Vertex4d
# Declared: Line 1633 (Source lines: 1634-1643)
# Address: 0x0dbbdd84 - 0x0dbbde00 (Size: 124 bytes, Frame: 208)
.globl __glsplc_Vertex4d
.ent __glsplc_Vertex4d
__glsplc_Vertex4d:
    # Line 1637
    li	$a1,72
    li	$a0,32
    # Line 1634
    addiu	$sp,$sp,-80
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sd	$gp,32($sp)
    lui	$at,0x4
    addiu	$at,$at,2324
    addu	$gp,$t9,$at
    # Line 1637
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    # Line 1641
    ldc1	$f2,16($sp)
    # Line 1639
    ldc1	$f0,0($sp)
    # Line 1637
    bnez	$v0,.L0dbbdddc
    ldc1	$f3,24($sp)
    ld	$gp,32($sp)
    # Line 1638
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbdddc:
    # Line 1643
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    # Line 1640
    ldc1	$f1,8($sp)
    # Line 1643
    addiu	$sp,$sp,80
    # Line 1642
    sdc1	$f3,24($v0)
    # Line 1641
    sdc1	$f2,16($v0)
    # Line 1639
    sdc1	$f0,0($v0)
    # Line 1643
    jr	$ra
    # Line 1640
    sdc1	$f1,8($v0)
.end __glsplc_Vertex4d

# Function: __glsplc_Vertex4dv
# Declared: Line 1646 (Source lines: 1647-1656)
# Address: 0x0dbbde00 - 0x0dbbde74 (Size: 116 bytes, Frame: 48)
.globl __glsplc_Vertex4dv
.ent __glsplc_Vertex4dv
__glsplc_Vertex4dv:
    # Line 1650
    li	$a1,72
    # Line 1647
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,2200
    addu	$gp,$t9,$at
    # Line 1650
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc2
    li	$a0,32
    bnez	$v0,.L0dbbde44
    # Line 1656
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1651
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbde44:
    ld	$v1,0($sp)
    # Line 1652
    ldc1	$f3,0($v1)
    sdc1	$f3,0($v0)
    # Line 1653
    ldc1	$f2,8($v1)
    sdc1	$f2,8($v0)
    # Line 1654
    ldc1	$f1,16($v1)
    sdc1	$f1,16($v0)
    ld	$gp,8($sp)
    # Line 1655
    ldc1	$f0,24($v1)
    # Line 1656
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1655
    sdc1	$f0,24($v0)
.end __glsplc_Vertex4dv

# Function: __glsplc_Vertex4f
# Declared: Line 1659 (Source lines: 1660-1669)
# Address: 0x0dbbde74 - 0x0dbbdef0 (Size: 124 bytes, Frame: 208)
.globl __glsplc_Vertex4f
.ent __glsplc_Vertex4f
__glsplc_Vertex4f:
    # Line 1663
    li	$a1,73
    li	$a0,16
    # Line 1660
    addiu	$sp,$sp,-80
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sd	$gp,32($sp)
    lui	$at,0x4
    addiu	$at,$at,2084
    addu	$gp,$t9,$at
    # Line 1663
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    # Line 1667
    ldc1	$f2,16($sp)
    # Line 1665
    ldc1	$f0,0($sp)
    # Line 1663
    bnez	$v0,.L0dbbdecc
    ldc1	$f3,24($sp)
    ld	$gp,32($sp)
    # Line 1664
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbdecc:
    # Line 1669
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    # Line 1666
    ldc1	$f1,8($sp)
    # Line 1669
    addiu	$sp,$sp,80
    # Line 1668
    swc1	$f3,12($v0)
    # Line 1667
    swc1	$f2,8($v0)
    # Line 1665
    swc1	$f0,0($v0)
    # Line 1669
    jr	$ra
    # Line 1666
    swc1	$f1,4($v0)
.end __glsplc_Vertex4f

# Function: __glsplc_Vertex4fv
# Declared: Line 1672 (Source lines: 1673-1682)
# Address: 0x0dbbdef0 - 0x0dbbdf64 (Size: 116 bytes, Frame: 48)
.globl __glsplc_Vertex4fv
.ent __glsplc_Vertex4fv
__glsplc_Vertex4fv:
    # Line 1676
    li	$a1,73
    # Line 1673
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,1960
    addu	$gp,$t9,$at
    # Line 1676
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,16
    bnez	$v0,.L0dbbdf34
    # Line 1682
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1677
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbdf34:
    ld	$v1,0($sp)
    # Line 1678
    lwc1	$f3,0($v1)
    swc1	$f3,0($v0)
    # Line 1679
    lwc1	$f2,4($v1)
    swc1	$f2,4($v0)
    # Line 1680
    lwc1	$f1,8($v1)
    swc1	$f1,8($v0)
    ld	$gp,8($sp)
    # Line 1681
    lwc1	$f0,12($v1)
    # Line 1682
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1681
    swc1	$f0,12($v0)
.end __glsplc_Vertex4fv

# Function: __glsplc_Vertex4i
# Declared: Line 1685 (Source lines: 1686-1695)
# Address: 0x0dbbdf64 - 0x0dbbdfe0 (Size: 124 bytes, Frame: 208)
.globl __glsplc_Vertex4i
.ent __glsplc_Vertex4i
__glsplc_Vertex4i:
    # Line 1686
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 1689
    li	$a1,74
    sd	$a0,0($sp)
    li	$a0,16
    sd	$gp,32($sp)
    # Line 1686
    lui	$at,0x4
    addiu	$at,$at,1844
    addu	$gp,$t9,$at
    # Line 1689
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a3,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    ld	$ra,8($sp)
    # Line 1693
    ld	$a5,24($sp)
    # Line 1689
    bnez	$v0,.L0dbbdfbc
    # Line 1691
    ld	$v1,0($sp)
    ld	$gp,32($sp)
    # Line 1690
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbdfbc:
    # Line 1691
    sw	$v1,0($v0)
    ld	$gp,32($sp)
    # Line 1692
    ld	$a4,16($sp)
    # Line 1694
    sw	$ra,12($v0)
    # Line 1695
    ld	$ra,40($sp)
    addiu	$sp,$sp,80
    # Line 1693
    sw	$a5,8($v0)
    # Line 1695
    jr	$ra
    # Line 1692
    sw	$a4,4($v0)
.end __glsplc_Vertex4i

# Function: __glsplc_Vertex4iv
# Declared: Line 1698 (Source lines: 1699-1708)
# Address: 0x0dbbdfe0 - 0x0dbbe054 (Size: 116 bytes, Frame: 48)
.globl __glsplc_Vertex4iv
.ent __glsplc_Vertex4iv
__glsplc_Vertex4iv:
    # Line 1702
    li	$a1,74
    # Line 1699
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,1720
    addu	$gp,$t9,$at
    # Line 1702
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,16
    ld	$gp,8($sp)
    bnez	$v0,.L0dbbe020
    # Line 1703
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbe020:
    ld	$gp,8($sp)
    ld	$v1,0($sp)
    # Line 1704
    lw	$ra,0($v1)
    sw	$ra,0($v0)
    # Line 1705
    lw	$a2,4($v1)
    sw	$a2,4($v0)
    # Line 1706
    lw	$a1,8($v1)
    sw	$a1,8($v0)
    # Line 1708
    ld	$ra,16($sp)
    # Line 1707
    lw	$v1,12($v1)
    # Line 1708
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1707
    sw	$v1,12($v0)
.end __glsplc_Vertex4iv

# Function: __glsplc_Vertex4s
# Declared: Line 1711 (Source lines: 1712-1721)
# Address: 0x0dbbe054 - 0x0dbbe0d0 (Size: 124 bytes, Frame: 208)
.globl __glsplc_Vertex4s
.ent __glsplc_Vertex4s
__glsplc_Vertex4s:
    # Line 1712
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 1715
    li	$a1,75
    sd	$a0,0($sp)
    li	$a0,8
    sd	$gp,32($sp)
    # Line 1712
    lui	$at,0x4
    addiu	$at,$at,1604
    addu	$gp,$t9,$at
    # Line 1715
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a3,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    ld	$ra,8($sp)
    # Line 1719
    ld	$a5,24($sp)
    # Line 1715
    bnez	$v0,.L0dbbe0ac
    # Line 1717
    ld	$v1,0($sp)
    ld	$gp,32($sp)
    # Line 1716
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbe0ac:
    # Line 1717
    sh	$v1,0($v0)
    ld	$gp,32($sp)
    # Line 1718
    ld	$a4,16($sp)
    # Line 1720
    sh	$ra,6($v0)
    # Line 1721
    ld	$ra,40($sp)
    addiu	$sp,$sp,80
    # Line 1719
    sh	$a5,4($v0)
    # Line 1721
    jr	$ra
    # Line 1718
    sh	$a4,2($v0)
.end __glsplc_Vertex4s

# Function: __glsplc_Vertex4sv
# Declared: Line 1724 (Source lines: 1725-1734)
# Address: 0x0dbbe0d0 - 0x0dbbe144 (Size: 116 bytes, Frame: 48)
.globl __glsplc_Vertex4sv
.ent __glsplc_Vertex4sv
__glsplc_Vertex4sv:
    # Line 1728
    li	$a1,75
    # Line 1725
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,1480
    addu	$gp,$t9,$at
    # Line 1728
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,8
    ld	$gp,8($sp)
    bnez	$v0,.L0dbbe110
    # Line 1729
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbe110:
    ld	$gp,8($sp)
    ld	$v1,0($sp)
    # Line 1730
    lh	$ra,0($v1)
    sh	$ra,0($v0)
    # Line 1731
    lh	$a2,2($v1)
    sh	$a2,2($v0)
    # Line 1732
    lh	$a1,4($v1)
    sh	$a1,4($v0)
    # Line 1734
    ld	$ra,16($sp)
    # Line 1733
    lh	$v1,6($v1)
    # Line 1734
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1733
    sh	$v1,6($v0)
.end __glsplc_Vertex4sv

# Function: __glsplc_ClipPlane
# Declared: Line 1737 (Source lines: 1738-1748)
# Address: 0x0dbbe144 - 0x0dbbe1c4 (Size: 128 bytes, Frame: 48)
.globl __glsplc_ClipPlane
.ent __glsplc_ClipPlane
__glsplc_ClipPlane:
    # Line 1738
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    # Line 1741
    li	$a1,76
    sd	$gp,16($sp)
    # Line 1738
    lui	$at,0x4
    addiu	$at,$at,1364
    addu	$gp,$t9,$at
    # Line 1741
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc2
    li	$a0,40
    # Line 1748
    ld	$ra,24($sp)
    # Line 1741
    bnez	$v0,.L0dbbe190
    ld	$gp,16($sp)
    # Line 1742
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbe190:
    ld	$a2,0($sp)
    # Line 1744
    ld	$v1,8($sp)
    # Line 1743
    sw	$a2,32($v0)
    # Line 1744
    ldc1	$f3,0($v1)
    sdc1	$f3,0($v0)
    # Line 1745
    ldc1	$f2,8($v1)
    sdc1	$f2,8($v0)
    # Line 1746
    ldc1	$f1,16($v1)
    sdc1	$f1,16($v0)
    # Line 1747
    ldc1	$f0,24($v1)
    # Line 1748
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1747
    sdc1	$f0,24($v0)
.end __glsplc_ClipPlane

# Function: __glsplc_ColorMaterial
# Declared: Line 1751 (Source lines: 1752-1759)
# Address: 0x0dbbe1c4 - 0x0dbbe228 (Size: 100 bytes, Frame: 48)
.globl __glsplc_ColorMaterial
.ent __glsplc_ColorMaterial
__glsplc_ColorMaterial:
    # Line 1752
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    # Line 1755
    li	$a1,77
    sd	$gp,16($sp)
    # Line 1752
    lui	$at,0x4
    addiu	$at,$at,1236
    addu	$gp,$t9,$at
    # Line 1755
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    li	$a0,8
    # Line 1757
    ld	$v1,0($sp)
    # Line 1755
    bnez	$v0,.L0dbbe210
    ld	$a2,8($sp)
    ld	$gp,16($sp)
    # Line 1756
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbe210:
    # Line 1759
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 1758
    sw	$a2,4($v0)
    # Line 1759
    jr	$ra
    # Line 1757
    sw	$v1,0($v0)
.end __glsplc_ColorMaterial

# Function: __glsplc_CullFace
# Declared: Line 1762 (Source lines: 1763-1769)
# Address: 0x0dbbe228 - 0x0dbbe280 (Size: 88 bytes, Frame: 48)
.globl __glsplc_CullFace
.ent __glsplc_CullFace
__glsplc_CullFace:
    # Line 1766
    li	$a1,78
    # Line 1763
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,1136
    addu	$gp,$t9,$at
    # Line 1766
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbbe270
    # Line 1769
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1767
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbe270:
    ld	$gp,8($sp)
    # Line 1769
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1768
    sw	$v1,0($v0)
.end __glsplc_CullFace

# Function: __glsplc_Fogf
# Declared: Line 1772 (Source lines: 1773-1780)
# Address: 0x0dbbe280 - 0x0dbbe2e4 (Size: 100 bytes, Frame: 48)
.globl __glsplc_Fogf
.ent __glsplc_Fogf
__glsplc_Fogf:
    # Line 1776
    li	$a1,79
    # Line 1773
    addiu	$sp,$sp,-48
    sd	$a0,8($sp)
    sd	$gp,16($sp)
    lui	$at,0x4
    addiu	$at,$at,1048
    addu	$gp,$t9,$at
    # Line 1776
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,8
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    sdc1	$f13,0($sp)
    # Line 1778
    ld	$v1,8($sp)
    # Line 1776
    bnez	$v0,.L0dbbe2cc
    ldc1	$f0,0($sp)
    ld	$gp,16($sp)
    # Line 1777
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbe2cc:
    # Line 1780
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 1779
    swc1	$f0,4($v0)
    # Line 1780
    jr	$ra
    # Line 1778
    sw	$v1,0($v0)
.end __glsplc_Fogf

# Function: __glsplc_Fogfv
# Declared: Line 1783 (Source lines: 1784-1800)
# Address: 0x0dbbe2e4 - 0x0dbbe388 (Size: 164 bytes, Frame: 192)
.globl __glsplc_Fogfv
.ent __glsplc_Fogfv
__glsplc_Fogfv:
    # Line 1784
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    lui	$at,0x4
    addiu	$at,$at,948
    addu	$gp,$t9,$at
    # Line 1789
    # lw $t9, -25560($gp) # &__glFogfv_size
    sd	$a1,0($sp)
    sd	$ra,32($sp)
    jal	__glFogfv_size
    sd	$a0,8($sp)
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbbe36c
    sd	$a5,16($sp)
    # Line 1795
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,80
    jal	__glSPDlalloc
    addiu	$a0,$a5,4
    bnez	$v0,.L0dbbe340
    # Line 1796
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbbe340:
    ld	$a2,16($sp)
    # Line 1798
    ld	$a1,0($sp)
    # lw $t9, -17848($gp) # &memcpy
    # Line 1797
    ld	$a3,8($sp)
    # Line 1798
    addiu	$a0,$v0,4
    jal	memcpy
    # Line 1797
    sw	$a3,0($v0)
    # Line 1800
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbbe36c:
    # Line 1791
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 1792
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_Fogfv

# Function: __glsplc_Fogi
# Declared: Line 1803 (Source lines: 1804-1811)
# Address: 0x0dbbe388 - 0x0dbbe3ec (Size: 100 bytes, Frame: 48)
.globl __glsplc_Fogi
.ent __glsplc_Fogi
__glsplc_Fogi:
    # Line 1804
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    # Line 1807
    li	$a1,81
    sd	$gp,16($sp)
    # Line 1804
    lui	$at,0x4
    addiu	$at,$at,784
    addu	$gp,$t9,$at
    # Line 1807
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    li	$a0,8
    # Line 1809
    ld	$v1,0($sp)
    # Line 1807
    bnez	$v0,.L0dbbe3d4
    ld	$a2,8($sp)
    ld	$gp,16($sp)
    # Line 1808
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbe3d4:
    # Line 1811
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 1810
    sw	$a2,4($v0)
    # Line 1811
    jr	$ra
    # Line 1809
    sw	$v1,0($v0)
.end __glsplc_Fogi

# Function: __glsplc_Fogiv
# Declared: Line 1814 (Source lines: 1815-1831)
# Address: 0x0dbbe3ec - 0x0dbbe490 (Size: 164 bytes, Frame: 192)
.globl __glsplc_Fogiv
.ent __glsplc_Fogiv
__glsplc_Fogiv:
    # Line 1815
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    lui	$at,0x4
    addiu	$at,$at,684
    addu	$gp,$t9,$at
    # Line 1820
    # lw $t9, -25564($gp) # &__glFogiv_size
    sd	$a1,0($sp)
    sd	$ra,32($sp)
    jal	__glFogiv_size
    sd	$a0,8($sp)
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbbe474
    sd	$a5,16($sp)
    # Line 1826
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,82
    jal	__glSPDlalloc
    addiu	$a0,$a5,4
    bnez	$v0,.L0dbbe448
    # Line 1827
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbbe448:
    ld	$a2,16($sp)
    # Line 1829
    ld	$a1,0($sp)
    # lw $t9, -17848($gp) # &memcpy
    # Line 1828
    ld	$a3,8($sp)
    # Line 1829
    addiu	$a0,$v0,4
    jal	memcpy
    # Line 1828
    sw	$a3,0($v0)
    # Line 1831
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbbe474:
    # Line 1822
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 1823
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_Fogiv

# Function: __glsplc_FrontFace
# Declared: Line 1834 (Source lines: 1835-1841)
# Address: 0x0dbbe490 - 0x0dbbe4e8 (Size: 88 bytes, Frame: 48)
.globl __glsplc_FrontFace
.ent __glsplc_FrontFace
__glsplc_FrontFace:
    # Line 1838
    li	$a1,83
    # Line 1835
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,520
    addu	$gp,$t9,$at
    # Line 1838
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbbe4d8
    # Line 1841
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1839
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbe4d8:
    ld	$gp,8($sp)
    # Line 1841
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1840
    sw	$v1,0($v0)
.end __glsplc_FrontFace

# Function: __glsplc_Hint
# Declared: Line 1844 (Source lines: 1845-1852)
# Address: 0x0dbbe4e8 - 0x0dbbe54c (Size: 100 bytes, Frame: 48)
.globl __glsplc_Hint
.ent __glsplc_Hint
__glsplc_Hint:
    # Line 1845
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    # Line 1848
    li	$a1,84
    sd	$gp,16($sp)
    # Line 1845
    lui	$at,0x4
    addiu	$at,$at,432
    addu	$gp,$t9,$at
    # Line 1848
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    li	$a0,8
    # Line 1850
    ld	$v1,0($sp)
    # Line 1848
    bnez	$v0,.L0dbbe534
    ld	$a2,8($sp)
    ld	$gp,16($sp)
    # Line 1849
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbe534:
    # Line 1852
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 1851
    sw	$a2,4($v0)
    # Line 1852
    jr	$ra
    # Line 1850
    sw	$v1,0($v0)
.end __glsplc_Hint

# Function: __glsplc_Lightf
# Declared: Line 1855 (Source lines: 1856-1862)
# Address: 0x0dbbe54c - 0x0dbbe5c8 (Size: 124 bytes, Frame: 192)
.globl __glsplc_Lightf
.ent __glsplc_Lightf
__glsplc_Lightf:
    # Line 1856
    move	$at,$a1
    addiu	$sp,$sp,-64
    swc1	$f14,48($sp)
    sd	$a1,8($sp)
    sd	$gp,16($sp)
    lui	$v0,0x4
    addiu	$v0,$v0,332
    addu	$gp,$t9,$v0
    # Line 1857
    # lw $t9, -25556($gp) # &__glLightfv_size
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glLightfv_size
    move	$a0,$a1
    li	$v1,1
    beq	$v0,$v1,.L0dbbe5a4
    # Line 1858
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 1859
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbbe5a4:
    # Line 1861
    # lw $t9, -21720($gp) # &__glsplc_Lightfv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __glsplc_Lightfv
    addiu	$a2,$sp,48
    # Line 1862
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_Lightf

# Function: __glsplc_Lightfv
# Declared: Line 1865 (Source lines: 1866-1883)
# Address: 0x0dbbe5c8 - 0x0dbbe680 (Size: 184 bytes, Frame: 208)
.globl __glsplc_Lightfv
.ent __glsplc_Lightfv
__glsplc_Lightfv:
    # Line 1866
    move	$at,$a1
    addiu	$sp,$sp,-80
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$gp,32($sp)
    lui	$v0,0x4
    addiu	$v0,$v0,208
    addu	$gp,$t9,$v0
    # Line 1871
    # lw $t9, -25556($gp) # &__glLightfv_size
    sd	$a0,16($sp)
    sd	$ra,40($sp)
    jal	__glLightfv_size
    move	$a0,$a1
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbbe664
    sd	$a5,24($sp)
    # Line 1877
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,86
    jal	__glSPDlalloc
    addiu	$a0,$a5,8
    bnez	$v0,.L0dbbe630
    # Line 1878
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbe630:
    ld	$a2,24($sp)
    # Line 1881
    ld	$a1,0($sp)
    addiu	$a0,$v0,8
    # Line 1880
    ld	$a4,8($sp)
    # Line 1881
    # lw $t9, -17848($gp) # &memcpy
    # Line 1879
    ld	$a3,16($sp)
    # Line 1880
    sw	$a4,4($v0)
    # Line 1881
    jal	memcpy
    # Line 1879
    sw	$a3,0($v0)
    # Line 1883
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbe664:
    # Line 1873
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 1874
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_Lightfv

# Function: __glsplc_Lighti
# Declared: Line 1886 (Source lines: 1887-1893)
# Address: 0x0dbbe680 - 0x0dbbe6fc (Size: 124 bytes, Frame: 192)
.globl __glsplc_Lighti
.ent __glsplc_Lighti
__glsplc_Lighti:
    # Line 1887
    move	$at,$a1
    addiu	$sp,$sp,-64
    sw	$a2,52($sp)
    sd	$a1,8($sp)
    sd	$gp,16($sp)
    lui	$v0,0x4
    addiu	$v0,$v0,24
    addu	$gp,$t9,$v0
    # Line 1888
    # lw $t9, -25552($gp) # &__glLightiv_size
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glLightiv_size
    move	$a0,$a1
    li	$v1,1
    beq	$v0,$v1,.L0dbbe6d8
    # Line 1889
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 1890
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbbe6d8:
    # Line 1892
    # lw $t9, -21716($gp) # &__glsplc_Lightiv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __glsplc_Lightiv
    addiu	$a2,$sp,52
    # Line 1893
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_Lighti

# Function: __glsplc_Lightiv
# Declared: Line 1896 (Source lines: 1897-1914)
# Address: 0x0dbbe6fc - 0x0dbbe7b4 (Size: 184 bytes, Frame: 208)
.globl __glsplc_Lightiv
.ent __glsplc_Lightiv
__glsplc_Lightiv:
    # Line 1897
    move	$at,$a1
    addiu	$sp,$sp,-80
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$gp,32($sp)
    lui	$v0,0x4
    addiu	$v0,$v0,-100
    addu	$gp,$t9,$v0
    # Line 1902
    # lw $t9, -25552($gp) # &__glLightiv_size
    sd	$a0,16($sp)
    sd	$ra,40($sp)
    jal	__glLightiv_size
    move	$a0,$a1
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbbe798
    sd	$a5,24($sp)
    # Line 1908
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,88
    jal	__glSPDlalloc
    addiu	$a0,$a5,8
    bnez	$v0,.L0dbbe764
    # Line 1909
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbe764:
    ld	$a2,24($sp)
    # Line 1912
    ld	$a1,0($sp)
    addiu	$a0,$v0,8
    # Line 1911
    ld	$a4,8($sp)
    # Line 1912
    # lw $t9, -17848($gp) # &memcpy
    # Line 1910
    ld	$a3,16($sp)
    # Line 1911
    sw	$a4,4($v0)
    # Line 1912
    jal	memcpy
    # Line 1910
    sw	$a3,0($v0)
    # Line 1914
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbe798:
    # Line 1904
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 1905
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_Lightiv

# Function: __glsplc_LightModelf
# Declared: Line 1917 (Source lines: 1918-1924)
# Address: 0x0dbbe7b4 - 0x0dbbe820 (Size: 108 bytes, Frame: 48)
.globl __glsplc_LightModelf
.ent __glsplc_LightModelf
__glsplc_LightModelf:
    # Line 1918
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-284
    addu	$gp,$t9,$at
    # Line 1919
    # lw $t9, -25548($gp) # &__glLightModelfv_size
    # Line 1918
    swc1	$f13,40($sp)
    sd	$ra,16($sp)
    # Line 1919
    jal	__glLightModelfv_size
    sd	$a0,0($sp)
    li	$v1,1
    beq	$v0,$v1,.L0dbbe800
    # Line 1920
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 1921
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbe800:
    # Line 1923
    # lw $t9, -21712($gp) # &__glsplc_LightModelfv
    ld	$a0,0($sp)
    bal __glsplc_LightModelfv
    addiu	$a1,$sp,40
    # Line 1924
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_LightModelf

# Function: __glsplc_LightModelfv
# Declared: Line 1927 (Source lines: 1928-1944)
# Address: 0x0dbbe820 - 0x0dbbe8c4 (Size: 164 bytes, Frame: 192)
.globl __glsplc_LightModelfv
.ent __glsplc_LightModelfv
__glsplc_LightModelfv:
    # Line 1928
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    lui	$at,0x4
    addiu	$at,$at,-392
    addu	$gp,$t9,$at
    # Line 1933
    # lw $t9, -25548($gp) # &__glLightModelfv_size
    sd	$a1,0($sp)
    sd	$ra,32($sp)
    jal	__glLightModelfv_size
    sd	$a0,8($sp)
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbbe8a8
    sd	$a5,16($sp)
    # Line 1939
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,90
    jal	__glSPDlalloc
    addiu	$a0,$a5,4
    bnez	$v0,.L0dbbe87c
    # Line 1940
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbbe87c:
    ld	$a2,16($sp)
    # Line 1942
    ld	$a1,0($sp)
    # lw $t9, -17848($gp) # &memcpy
    # Line 1941
    ld	$a3,8($sp)
    # Line 1942
    addiu	$a0,$v0,4
    jal	memcpy
    # Line 1941
    sw	$a3,0($v0)
    # Line 1944
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbbe8a8:
    # Line 1935
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 1936
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_LightModelfv

# Function: __glsplc_LightModeli
# Declared: Line 1947 (Source lines: 1948-1954)
# Address: 0x0dbbe8c4 - 0x0dbbe930 (Size: 108 bytes, Frame: 48)
.globl __glsplc_LightModeli
.ent __glsplc_LightModeli
__glsplc_LightModeli:
    # Line 1948
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-556
    addu	$gp,$t9,$at
    # Line 1949
    # lw $t9, -25544($gp) # &__glLightModeliv_size
    # Line 1948
    sw	$a1,44($sp)
    sd	$ra,16($sp)
    # Line 1949
    jal	__glLightModeliv_size
    sd	$a0,0($sp)
    li	$v1,1
    beq	$v0,$v1,.L0dbbe910
    # Line 1950
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 1951
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbe910:
    # Line 1953
    # lw $t9, -21708($gp) # &__glsplc_LightModeliv
    ld	$a0,0($sp)
    bal __glsplc_LightModeliv
    addiu	$a1,$sp,44
    # Line 1954
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_LightModeli

# Function: __glsplc_LightModeliv
# Declared: Line 1957 (Source lines: 1958-1974)
# Address: 0x0dbbe930 - 0x0dbbe9d4 (Size: 164 bytes, Frame: 192)
.globl __glsplc_LightModeliv
.ent __glsplc_LightModeliv
__glsplc_LightModeliv:
    # Line 1958
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    lui	$at,0x4
    addiu	$at,$at,-664
    addu	$gp,$t9,$at
    # Line 1963
    # lw $t9, -25544($gp) # &__glLightModeliv_size
    sd	$a1,0($sp)
    sd	$ra,32($sp)
    jal	__glLightModeliv_size
    sd	$a0,8($sp)
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbbe9b8
    sd	$a5,16($sp)
    # Line 1969
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,92
    jal	__glSPDlalloc
    addiu	$a0,$a5,4
    bnez	$v0,.L0dbbe98c
    # Line 1970
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbbe98c:
    ld	$a2,16($sp)
    # Line 1972
    ld	$a1,0($sp)
    # lw $t9, -17848($gp) # &memcpy
    # Line 1971
    ld	$a3,8($sp)
    # Line 1972
    addiu	$a0,$v0,4
    jal	memcpy
    # Line 1971
    sw	$a3,0($v0)
    # Line 1974
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbbe9b8:
    # Line 1965
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 1966
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_LightModeliv

# Function: __glsplc_LineStipple
# Declared: Line 1977 (Source lines: 1978-1985)
# Address: 0x0dbbe9d4 - 0x0dbbea38 (Size: 100 bytes, Frame: 48)
.globl __glsplc_LineStipple
.ent __glsplc_LineStipple
__glsplc_LineStipple:
    # Line 1978
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    # Line 1981
    li	$a1,93
    sd	$gp,16($sp)
    # Line 1978
    lui	$at,0x4
    addiu	$at,$at,-828
    addu	$gp,$t9,$at
    # Line 1981
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    li	$a0,8
    # Line 1983
    ld	$v1,0($sp)
    # Line 1981
    bnez	$v0,.L0dbbea20
    ld	$a2,8($sp)
    ld	$gp,16($sp)
    # Line 1982
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbea20:
    # Line 1985
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 1984
    sh	$a2,4($v0)
    # Line 1985
    jr	$ra
    # Line 1983
    sw	$v1,0($v0)
.end __glsplc_LineStipple

# Function: __glsplc_LineWidth
# Declared: Line 1988 (Source lines: 1989-1995)
# Address: 0x0dbbea38 - 0x0dbbea90 (Size: 88 bytes, Frame: 48)
.globl __glsplc_LineWidth
.ent __glsplc_LineWidth
__glsplc_LineWidth:
    # Line 1992
    li	$a1,94
    # Line 1989
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-928
    addu	$gp,$t9,$at
    # Line 1992
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,4
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    ldc1	$f0,0($sp)
    bnez	$v0,.L0dbbea80
    # Line 1995
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1993
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbea80:
    ld	$gp,8($sp)
    # Line 1995
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1994
    swc1	$f0,0($v0)
.end __glsplc_LineWidth

# Function: __glsplc_Materialf
# Declared: Line 1998 (Source lines: 1999-2005)
# Address: 0x0dbbea90 - 0x0dbbeb0c (Size: 124 bytes, Frame: 192)
.globl __glsplc_Materialf
.ent __glsplc_Materialf
__glsplc_Materialf:
    # Line 1999
    move	$at,$a1
    addiu	$sp,$sp,-64
    swc1	$f14,48($sp)
    sd	$a1,8($sp)
    sd	$gp,16($sp)
    lui	$v0,0x4
    addiu	$v0,$v0,-1016
    addu	$gp,$t9,$v0
    # Line 2000
    # lw $t9, -25540($gp) # &__glMaterialfv_size
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glMaterialfv_size
    move	$a0,$a1
    li	$v1,1
    beq	$v0,$v1,.L0dbbeae8
    # Line 2001
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 2002
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbbeae8:
    # Line 2004
    # lw $t9, -21704($gp) # &__glsplc_Materialfv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __glsplc_Materialfv
    addiu	$a2,$sp,48
    # Line 2005
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_Materialf

# Function: __glsplc_Materialfv
# Declared: Line 2008 (Source lines: 2009-2033)
# Address: 0x0dbbeb0c - 0x0dbbebf0 (Size: 228 bytes, Frame: 208)
.globl __glsplc_Materialfv
.ent __glsplc_Materialfv
__glsplc_Materialfv:
    # Line 2015
    lwc1	$f14,0($a2)
    # Line 2009
    addiu	$sp,$sp,-80
    sd	$a2,16($sp)
    sd	$gp,32($sp)
    lui	$at,0x4
    addiu	$at,$at,-1140
    addu	$gp,$t9,$at
    # Line 2015
    # lw $t9, -27904($gp) # &__glErrorCheckMaterial
    sd	$a1,8($sp)
    sd	$ra,40($sp)
    jal	__glErrorCheckMaterial
    sd	$a0,24($sp)
    beqz	$v0,.L0dbbeb60
    # Line 2018
    nop	# was lw $t9, -29412($gp) # &__gllc_Error
    move	$a1,$v0
    jal	__gllc_Error
    lw	$a0,__glCurrentContext
    # Line 2019
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbeb60:
    # Line 2021
    # lw $t9, -25540($gp) # &__glMaterialfv_size
    jal	__glMaterialfv_size
    ld	$a0,8($sp)
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbbebd4
    sd	$a5,0($sp)
    # Line 2027
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,96
    jal	__glSPDlalloc
    addiu	$a0,$a5,8
    bnez	$v0,.L0dbbeba0
    # Line 2028
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbeba0:
    ld	$a2,0($sp)
    # Line 2031
    ld	$a1,16($sp)
    addiu	$a0,$v0,8
    # Line 2030
    ld	$a4,8($sp)
    # Line 2031
    # lw $t9, -17848($gp) # &memcpy
    # Line 2029
    ld	$a3,24($sp)
    # Line 2030
    sw	$a4,4($v0)
    # Line 2031
    jal	memcpy
    # Line 2029
    sw	$a3,0($v0)
    # Line 2033
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbebd4:
    # Line 2023
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 2024
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_Materialfv

# Function: __glsplc_Materiali
# Declared: Line 2036 (Source lines: 2037-2043)
# Address: 0x0dbbebf0 - 0x0dbbec6c (Size: 124 bytes, Frame: 192)
.globl __glsplc_Materiali
.ent __glsplc_Materiali
__glsplc_Materiali:
    # Line 2037
    move	$at,$a1
    addiu	$sp,$sp,-64
    sw	$a2,52($sp)
    sd	$a1,8($sp)
    sd	$gp,16($sp)
    lui	$v0,0x4
    addiu	$v0,$v0,-1368
    addu	$gp,$t9,$v0
    # Line 2038
    # lw $t9, -25536($gp) # &__glMaterialiv_size
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glMaterialiv_size
    move	$a0,$a1
    li	$v1,1
    beq	$v0,$v1,.L0dbbec48
    # Line 2039
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 2040
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbbec48:
    # Line 2042
    # lw $t9, -21700($gp) # &__glsplc_Materialiv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __glsplc_Materialiv
    addiu	$a2,$sp,52
    # Line 2043
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_Materiali

# Function: __glsplc_Materialiv
# Declared: Line 2046 (Source lines: 2047-2071)
# Address: 0x0dbbec6c - 0x0dbbed58 (Size: 236 bytes, Frame: 208)
.globl __glsplc_Materialiv
.ent __glsplc_Materialiv
__glsplc_Materialiv:
    # Line 2047
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    sd	$a0,24($sp)
    sd	$a2,16($sp)
    sd	$gp,32($sp)
    # Line 2053
    lw	$at,0($a2)
    # Line 2047
    lui	$v0,0x4
    addiu	$v0,$v0,-1492
    addu	$gp,$t9,$v0
    # Line 2053
    # lw $t9, -27904($gp) # &__glErrorCheckMaterial
    mtc1	$at,$f14
    sd	$ra,40($sp)
    jal	__glErrorCheckMaterial
    cvt.s.w	$f14,$f14
    beqz	$v0,.L0dbbecc8
    # Line 2056
    nop	# was lw $t9, -29412($gp) # &__gllc_Error
    move	$a1,$v0
    jal	__gllc_Error
    lw	$a0,__glCurrentContext
    # Line 2057
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbecc8:
    # Line 2059
    # lw $t9, -25536($gp) # &__glMaterialiv_size
    jal	__glMaterialiv_size
    ld	$a0,8($sp)
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbbed3c
    sd	$a5,0($sp)
    # Line 2065
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,98
    jal	__glSPDlalloc
    addiu	$a0,$a5,8
    bnez	$v0,.L0dbbed08
    # Line 2066
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbed08:
    ld	$a2,0($sp)
    # Line 2069
    ld	$a1,16($sp)
    addiu	$a0,$v0,8
    # Line 2068
    ld	$a4,8($sp)
    # Line 2069
    # lw $t9, -17848($gp) # &memcpy
    # Line 2067
    ld	$a3,24($sp)
    # Line 2068
    sw	$a4,4($v0)
    # Line 2069
    jal	memcpy
    # Line 2067
    sw	$a3,0($v0)
    # Line 2071
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbed3c:
    # Line 2061
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 2062
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_Materialiv

# Function: __glsplc_PointSize
# Declared: Line 2074 (Source lines: 2075-2081)
# Address: 0x0dbbed58 - 0x0dbbedb0 (Size: 88 bytes, Frame: 48)
.globl __glsplc_PointSize
.ent __glsplc_PointSize
__glsplc_PointSize:
    # Line 2078
    li	$a1,99
    # Line 2075
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-1728
    addu	$gp,$t9,$at
    # Line 2078
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,4
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    ldc1	$f0,0($sp)
    bnez	$v0,.L0dbbeda0
    # Line 2081
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2079
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbeda0:
    ld	$gp,8($sp)
    # Line 2081
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2080
    swc1	$f0,0($v0)
.end __glsplc_PointSize

# Function: __glsplc_PolygonMode
# Declared: Line 2084 (Source lines: 2085-2092)
# Address: 0x0dbbedb0 - 0x0dbbee14 (Size: 100 bytes, Frame: 48)
.globl __glsplc_PolygonMode
.ent __glsplc_PolygonMode
__glsplc_PolygonMode:
    # Line 2085
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    # Line 2088
    li	$a1,100
    sd	$gp,16($sp)
    # Line 2085
    lui	$at,0x4
    addiu	$at,$at,-1816
    addu	$gp,$t9,$at
    # Line 2088
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    li	$a0,8
    # Line 2090
    ld	$v1,0($sp)
    # Line 2088
    bnez	$v0,.L0dbbedfc
    ld	$a2,8($sp)
    ld	$gp,16($sp)
    # Line 2089
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbedfc:
    # Line 2092
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 2091
    sw	$a2,4($v0)
    # Line 2092
    jr	$ra
    # Line 2090
    sw	$v1,0($v0)
.end __glsplc_PolygonMode

# Function: __glsplc_Scissor
# Declared: Line 2096 (Source lines: 2097-2106)
# Address: 0x0dbbee14 - 0x0dbbee90 (Size: 124 bytes, Frame: 208)
.globl __glsplc_Scissor
.ent __glsplc_Scissor
__glsplc_Scissor:
    # Line 2097
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 2100
    li	$a1,102
    sd	$a0,0($sp)
    li	$a0,16
    sd	$gp,32($sp)
    # Line 2097
    lui	$at,0x4
    addiu	$at,$at,-1916
    addu	$gp,$t9,$at
    # Line 2100
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a3,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    ld	$ra,8($sp)
    # Line 2104
    ld	$a5,24($sp)
    # Line 2100
    bnez	$v0,.L0dbbee6c
    # Line 2102
    ld	$v1,0($sp)
    ld	$gp,32($sp)
    # Line 2101
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbee6c:
    # Line 2102
    sw	$v1,0($v0)
    ld	$gp,32($sp)
    # Line 2103
    ld	$a4,16($sp)
    # Line 2105
    sw	$ra,12($v0)
    # Line 2106
    ld	$ra,40($sp)
    addiu	$sp,$sp,80
    # Line 2104
    sw	$a5,8($v0)
    # Line 2106
    jr	$ra
    # Line 2103
    sw	$a4,4($v0)
.end __glsplc_Scissor

# Function: __glsplc_ShadeModel
# Declared: Line 2109 (Source lines: 2110-2116)
# Address: 0x0dbbee90 - 0x0dbbeee8 (Size: 88 bytes, Frame: 48)
.globl __glsplc_ShadeModel
.ent __glsplc_ShadeModel
__glsplc_ShadeModel:
    # Line 2113
    li	$a1,103
    # Line 2110
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-2040
    addu	$gp,$t9,$at
    # Line 2113
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbbeed8
    # Line 2116
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2114
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbeed8:
    ld	$gp,8($sp)
    # Line 2116
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2115
    sw	$v1,0($v0)
.end __glsplc_ShadeModel

# Function: __glsplc_TexParameterf
# Declared: Line 2119 (Source lines: 2120-2126)
# Address: 0x0dbbeee8 - 0x0dbbef64 (Size: 124 bytes, Frame: 192)
.globl __glsplc_TexParameterf
.ent __glsplc_TexParameterf
__glsplc_TexParameterf:
    # Line 2120
    move	$at,$a1
    addiu	$sp,$sp,-64
    swc1	$f14,48($sp)
    sd	$a1,8($sp)
    sd	$gp,16($sp)
    lui	$v0,0x4
    addiu	$v0,$v0,-2128
    addu	$gp,$t9,$v0
    # Line 2121
    # lw $t9, -25200($gp) # &__glTexParameterfv_size
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glTexParameterfv_size
    move	$a0,$a1
    li	$v1,1
    beq	$v0,$v1,.L0dbbef40
    # Line 2122
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 2123
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbbef40:
    # Line 2125
    # lw $t9, -21688($gp) # &__glsplc_TexParameterfv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __glsplc_TexParameterfv
    addiu	$a2,$sp,48
    # Line 2126
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_TexParameterf

# Function: __glsplc_TexParameterfv
# Declared: Line 2129 (Source lines: 2130-2147)
# Address: 0x0dbbef64 - 0x0dbbf01c (Size: 184 bytes, Frame: 208)
.globl __glsplc_TexParameterfv
.ent __glsplc_TexParameterfv
__glsplc_TexParameterfv:
    # Line 2130
    move	$at,$a1
    addiu	$sp,$sp,-80
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$gp,32($sp)
    lui	$v0,0x4
    addiu	$v0,$v0,-2252
    addu	$gp,$t9,$v0
    # Line 2135
    # lw $t9, -25200($gp) # &__glTexParameterfv_size
    sd	$a0,16($sp)
    sd	$ra,40($sp)
    jal	__glTexParameterfv_size
    move	$a0,$a1
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbbf000
    sd	$a5,24($sp)
    # Line 2141
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,105
    jal	__glSPDlalloc
    addiu	$a0,$a5,8
    bnez	$v0,.L0dbbefcc
    # Line 2142
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbefcc:
    ld	$a2,24($sp)
    # Line 2145
    ld	$a1,0($sp)
    addiu	$a0,$v0,8
    # Line 2144
    ld	$a4,8($sp)
    # Line 2145
    # lw $t9, -17848($gp) # &memcpy
    # Line 2143
    ld	$a3,16($sp)
    # Line 2144
    sw	$a4,4($v0)
    # Line 2145
    jal	memcpy
    # Line 2143
    sw	$a3,0($v0)
    # Line 2147
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbf000:
    # Line 2137
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 2138
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_TexParameterfv

# Function: __glsplc_TexParameteri
# Declared: Line 2150 (Source lines: 2151-2157)
# Address: 0x0dbbf01c - 0x0dbbf098 (Size: 124 bytes, Frame: 192)
.globl __glsplc_TexParameteri
.ent __glsplc_TexParameteri
__glsplc_TexParameteri:
    # Line 2151
    move	$at,$a1
    addiu	$sp,$sp,-64
    sw	$a2,52($sp)
    sd	$a1,8($sp)
    sd	$gp,16($sp)
    lui	$v0,0x4
    addiu	$v0,$v0,-2436
    addu	$gp,$t9,$v0
    # Line 2152
    # lw $t9, -25196($gp) # &__glTexParameteriv_size
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glTexParameteriv_size
    move	$a0,$a1
    li	$v1,1
    beq	$v0,$v1,.L0dbbf074
    # Line 2153
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 2154
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbbf074:
    # Line 2156
    # lw $t9, -21680($gp) # &__glsplc_TexParameteriv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __glsplc_TexParameteriv
    addiu	$a2,$sp,52
    # Line 2157
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_TexParameteri

# Function: __glsplc_TexParameteriv
# Declared: Line 2160 (Source lines: 2161-2178)
# Address: 0x0dbbf098 - 0x0dbbf150 (Size: 184 bytes, Frame: 208)
.globl __glsplc_TexParameteriv
.ent __glsplc_TexParameteriv
__glsplc_TexParameteriv:
    # Line 2161
    move	$at,$a1
    addiu	$sp,$sp,-80
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$gp,32($sp)
    lui	$v0,0x4
    addiu	$v0,$v0,-2560
    addu	$gp,$t9,$v0
    # Line 2166
    # lw $t9, -25196($gp) # &__glTexParameteriv_size
    sd	$a0,16($sp)
    sd	$ra,40($sp)
    jal	__glTexParameteriv_size
    move	$a0,$a1
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbbf134
    sd	$a5,24($sp)
    # Line 2172
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,107
    jal	__glSPDlalloc
    addiu	$a0,$a5,8
    bnez	$v0,.L0dbbf100
    # Line 2173
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbf100:
    ld	$a2,24($sp)
    # Line 2176
    ld	$a1,0($sp)
    addiu	$a0,$v0,8
    # Line 2175
    ld	$a4,8($sp)
    # Line 2176
    # lw $t9, -17848($gp) # &memcpy
    # Line 2174
    ld	$a3,16($sp)
    # Line 2175
    sw	$a4,4($v0)
    # Line 2176
    jal	memcpy
    # Line 2174
    sw	$a3,0($v0)
    # Line 2178
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbf134:
    # Line 2168
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 2169
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_TexParameteriv

# Function: __glsplc_TexEnvf
# Declared: Line 2183 (Source lines: 2184-2190)
# Address: 0x0dbbf150 - 0x0dbbf1cc (Size: 124 bytes, Frame: 192)
.globl __glsplc_TexEnvf
.ent __glsplc_TexEnvf
__glsplc_TexEnvf:
    # Line 2184
    move	$at,$a1
    addiu	$sp,$sp,-64
    swc1	$f14,48($sp)
    sd	$a1,8($sp)
    sd	$gp,16($sp)
    lui	$v0,0x4
    addiu	$v0,$v0,-2744
    addu	$gp,$t9,$v0
    # Line 2185
    # lw $t9, -25176($gp) # &__glTexEnvfv_size
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glTexEnvfv_size
    move	$a0,$a1
    li	$v1,1
    beq	$v0,$v1,.L0dbbf1a8
    # Line 2186
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 2187
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbbf1a8:
    # Line 2189
    # lw $t9, -21672($gp) # &__glsplc_TexEnvfv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __glsplc_TexEnvfv
    addiu	$a2,$sp,48
    # Line 2190
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_TexEnvf

# Function: __glsplc_TexEnvfv
# Declared: Line 2193 (Source lines: 2194-2211)
# Address: 0x0dbbf1cc - 0x0dbbf284 (Size: 184 bytes, Frame: 208)
.globl __glsplc_TexEnvfv
.ent __glsplc_TexEnvfv
__glsplc_TexEnvfv:
    # Line 2194
    move	$at,$a1
    addiu	$sp,$sp,-80
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$gp,32($sp)
    lui	$v0,0x4
    addiu	$v0,$v0,-2868
    addu	$gp,$t9,$v0
    # Line 2199
    # lw $t9, -25176($gp) # &__glTexEnvfv_size
    sd	$a0,16($sp)
    sd	$ra,40($sp)
    jal	__glTexEnvfv_size
    move	$a0,$a1
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbbf268
    sd	$a5,24($sp)
    # Line 2205
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,111
    jal	__glSPDlalloc
    addiu	$a0,$a5,8
    bnez	$v0,.L0dbbf234
    # Line 2206
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbf234:
    ld	$a2,24($sp)
    # Line 2209
    ld	$a1,0($sp)
    addiu	$a0,$v0,8
    # Line 2208
    ld	$a4,8($sp)
    # Line 2209
    # lw $t9, -17848($gp) # &memcpy
    # Line 2207
    ld	$a3,16($sp)
    # Line 2208
    sw	$a4,4($v0)
    # Line 2209
    jal	memcpy
    # Line 2207
    sw	$a3,0($v0)
    # Line 2211
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbf268:
    # Line 2201
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 2202
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_TexEnvfv

# Function: __glsplc_TexEnvi
# Declared: Line 2214 (Source lines: 2215-2221)
# Address: 0x0dbbf284 - 0x0dbbf300 (Size: 124 bytes, Frame: 192)
.globl __glsplc_TexEnvi
.ent __glsplc_TexEnvi
__glsplc_TexEnvi:
    # Line 2215
    move	$at,$a1
    addiu	$sp,$sp,-64
    sw	$a2,52($sp)
    sd	$a1,8($sp)
    sd	$gp,16($sp)
    lui	$v0,0x4
    addiu	$v0,$v0,-3052
    addu	$gp,$t9,$v0
    # Line 2216
    # lw $t9, -25172($gp) # &__glTexEnviv_size
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glTexEnviv_size
    move	$a0,$a1
    li	$v1,1
    beq	$v0,$v1,.L0dbbf2dc
    # Line 2217
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 2218
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbbf2dc:
    # Line 2220
    # lw $t9, -21664($gp) # &__glsplc_TexEnviv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __glsplc_TexEnviv
    addiu	$a2,$sp,52
    # Line 2221
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_TexEnvi

# Function: __glsplc_TexEnviv
# Declared: Line 2224 (Source lines: 2225-2242)
# Address: 0x0dbbf300 - 0x0dbbf3b8 (Size: 184 bytes, Frame: 208)
.globl __glsplc_TexEnviv
.ent __glsplc_TexEnviv
__glsplc_TexEnviv:
    # Line 2225
    move	$at,$a1
    addiu	$sp,$sp,-80
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$gp,32($sp)
    lui	$v0,0x4
    addiu	$v0,$v0,-3176
    addu	$gp,$t9,$v0
    # Line 2230
    # lw $t9, -25172($gp) # &__glTexEnviv_size
    sd	$a0,16($sp)
    sd	$ra,40($sp)
    jal	__glTexEnviv_size
    move	$a0,$a1
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbbf39c
    sd	$a5,24($sp)
    # Line 2236
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,113
    jal	__glSPDlalloc
    addiu	$a0,$a5,8
    bnez	$v0,.L0dbbf368
    # Line 2237
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbf368:
    ld	$a2,24($sp)
    # Line 2240
    ld	$a1,0($sp)
    addiu	$a0,$v0,8
    # Line 2239
    ld	$a4,8($sp)
    # Line 2240
    # lw $t9, -17848($gp) # &memcpy
    # Line 2238
    ld	$a3,16($sp)
    # Line 2239
    sw	$a4,4($v0)
    # Line 2240
    jal	memcpy
    # Line 2238
    sw	$a3,0($v0)
    # Line 2242
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbf39c:
    # Line 2232
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 2233
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_TexEnviv

# Function: __glsplc_TexGend
# Declared: Line 2245 (Source lines: 2246-2252)
# Address: 0x0dbbf3b8 - 0x0dbbf434 (Size: 124 bytes, Frame: 192)
.globl __glsplc_TexGend
.ent __glsplc_TexGend
__glsplc_TexGend:
    # Line 2246
    move	$at,$a1
    addiu	$sp,$sp,-64
    sdc1	$f14,48($sp)
    sd	$a1,8($sp)
    sd	$gp,16($sp)
    lui	$v0,0x4
    addiu	$v0,$v0,-3360
    addu	$gp,$t9,$v0
    # Line 2247
    # lw $t9, -25228($gp) # &__glTexGendv_size
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glTexGendv_size
    move	$a0,$a1
    li	$v1,1
    beq	$v0,$v1,.L0dbbf410
    # Line 2248
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 2249
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbbf410:
    # Line 2251
    # lw $t9, -21656($gp) # &__glsplc_TexGendv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __glsplc_TexGendv
    addiu	$a2,$sp,48
    # Line 2252
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_TexGend

# Function: __glsplc_TexGendv
# Declared: Line 2255 (Source lines: 2256-2273)
# Address: 0x0dbbf434 - 0x0dbbf4ec (Size: 184 bytes, Frame: 208)
.globl __glsplc_TexGendv
.ent __glsplc_TexGendv
__glsplc_TexGendv:
    # Line 2256
    move	$at,$a1
    addiu	$sp,$sp,-80
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$gp,32($sp)
    lui	$v0,0x4
    addiu	$v0,$v0,-3484
    addu	$gp,$t9,$v0
    # Line 2261
    # lw $t9, -25228($gp) # &__glTexGendv_size
    sd	$a0,16($sp)
    sd	$ra,40($sp)
    jal	__glTexGendv_size
    move	$a0,$a1
    sll	$a5,$v0,0x3
    move	$v1,$a5
    bltz	$v0,.L0dbbf4d0
    sd	$a5,24($sp)
    # Line 2267
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    li	$a1,115
    jal	__glSPDlalloc2
    addiu	$a0,$a5,8
    bnez	$v0,.L0dbbf49c
    # Line 2268
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbf49c:
    ld	$a2,24($sp)
    # Line 2271
    ld	$a1,0($sp)
    addiu	$a0,$v0,8
    # Line 2270
    ld	$a4,8($sp)
    # Line 2271
    # lw $t9, -17848($gp) # &memcpy
    # Line 2269
    ld	$a3,16($sp)
    # Line 2270
    sw	$a4,4($v0)
    # Line 2271
    jal	memcpy
    # Line 2269
    sw	$a3,0($v0)
    # Line 2273
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbf4d0:
    # Line 2263
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 2264
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_TexGendv

# Function: __glsplc_TexGenf
# Declared: Line 2276 (Source lines: 2277-2283)
# Address: 0x0dbbf4ec - 0x0dbbf568 (Size: 124 bytes, Frame: 192)
.globl __glsplc_TexGenf
.ent __glsplc_TexGenf
__glsplc_TexGenf:
    # Line 2277
    move	$at,$a1
    addiu	$sp,$sp,-64
    swc1	$f14,48($sp)
    sd	$a1,8($sp)
    sd	$gp,16($sp)
    lui	$v0,0x4
    addiu	$v0,$v0,-3668
    addu	$gp,$t9,$v0
    # Line 2278
    # lw $t9, -25224($gp) # &__glTexGenfv_size
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glTexGenfv_size
    move	$a0,$a1
    li	$v1,1
    beq	$v0,$v1,.L0dbbf544
    # Line 2279
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 2280
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbbf544:
    # Line 2282
    # lw $t9, -21648($gp) # &__glsplc_TexGenfv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __glsplc_TexGenfv
    addiu	$a2,$sp,48
    # Line 2283
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_TexGenf

# Function: __glsplc_TexGenfv
# Declared: Line 2286 (Source lines: 2287-2304)
# Address: 0x0dbbf568 - 0x0dbbf620 (Size: 184 bytes, Frame: 208)
.globl __glsplc_TexGenfv
.ent __glsplc_TexGenfv
__glsplc_TexGenfv:
    # Line 2287
    move	$at,$a1
    addiu	$sp,$sp,-80
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$gp,32($sp)
    lui	$v0,0x4
    addiu	$v0,$v0,-3792
    addu	$gp,$t9,$v0
    # Line 2292
    # lw $t9, -25224($gp) # &__glTexGenfv_size
    sd	$a0,16($sp)
    sd	$ra,40($sp)
    jal	__glTexGenfv_size
    move	$a0,$a1
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbbf604
    sd	$a5,24($sp)
    # Line 2298
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,117
    jal	__glSPDlalloc
    addiu	$a0,$a5,8
    bnez	$v0,.L0dbbf5d0
    # Line 2299
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbf5d0:
    ld	$a2,24($sp)
    # Line 2302
    ld	$a1,0($sp)
    addiu	$a0,$v0,8
    # Line 2301
    ld	$a4,8($sp)
    # Line 2302
    # lw $t9, -17848($gp) # &memcpy
    # Line 2300
    ld	$a3,16($sp)
    # Line 2301
    sw	$a4,4($v0)
    # Line 2302
    jal	memcpy
    # Line 2300
    sw	$a3,0($v0)
    # Line 2304
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbf604:
    # Line 2294
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 2295
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_TexGenfv

# Function: __glsplc_TexGeni
# Declared: Line 2307 (Source lines: 2308-2314)
# Address: 0x0dbbf620 - 0x0dbbf69c (Size: 124 bytes, Frame: 192)
.globl __glsplc_TexGeni
.ent __glsplc_TexGeni
__glsplc_TexGeni:
    # Line 2308
    move	$at,$a1
    addiu	$sp,$sp,-64
    sw	$a2,52($sp)
    sd	$a1,8($sp)
    sd	$gp,16($sp)
    lui	$v0,0x4
    addiu	$v0,$v0,-3976
    addu	$gp,$t9,$v0
    # Line 2309
    # lw $t9, -25220($gp) # &__glTexGeniv_size
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glTexGeniv_size
    move	$a0,$a1
    li	$v1,1
    beq	$v0,$v1,.L0dbbf678
    # Line 2310
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 2311
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbbf678:
    # Line 2313
    # lw $t9, -21640($gp) # &__glsplc_TexGeniv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __glsplc_TexGeniv
    addiu	$a2,$sp,52
    # Line 2314
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_TexGeni

# Function: __glsplc_TexGeniv
# Declared: Line 2317 (Source lines: 2318-2335)
# Address: 0x0dbbf69c - 0x0dbbf754 (Size: 184 bytes, Frame: 208)
.globl __glsplc_TexGeniv
.ent __glsplc_TexGeniv
__glsplc_TexGeniv:
    # Line 2318
    move	$at,$a1
    addiu	$sp,$sp,-80
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$gp,32($sp)
    lui	$v0,0x4
    addiu	$v0,$v0,-4100
    addu	$gp,$t9,$v0
    # Line 2323
    # lw $t9, -25220($gp) # &__glTexGeniv_size
    sd	$a0,16($sp)
    sd	$ra,40($sp)
    jal	__glTexGeniv_size
    move	$a0,$a1
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbbf738
    sd	$a5,24($sp)
    # Line 2329
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,119
    jal	__glSPDlalloc
    addiu	$a0,$a5,8
    bnez	$v0,.L0dbbf704
    # Line 2330
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbf704:
    ld	$a2,24($sp)
    # Line 2333
    ld	$a1,0($sp)
    addiu	$a0,$v0,8
    # Line 2332
    ld	$a4,8($sp)
    # Line 2333
    # lw $t9, -17848($gp) # &memcpy
    # Line 2331
    ld	$a3,16($sp)
    # Line 2332
    sw	$a4,4($v0)
    # Line 2333
    jal	memcpy
    # Line 2331
    sw	$a3,0($v0)
    # Line 2335
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbf738:
    # Line 2325
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 2326
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_TexGeniv

# Function: __glsplc_InitNames
# Declared: Line 2341 (Source lines: 2342-2346)
# Address: 0x0dbbf754 - 0x0dbbf78c (Size: 56 bytes, Frame: 16)
.globl __glsplc_InitNames
.ent __glsplc_InitNames
__glsplc_InitNames:
    # Line 2342
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-4284
    addu	$gp,$t9,$at
    # Line 2345
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,120
    sd	$ra,0($sp)
    jal	__glSPDlalloc
    move	$a0,$zero
    # Line 2346
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_InitNames

# Function: __glsplc_LoadName
# Declared: Line 2350 (Source lines: 2351-2357)
# Address: 0x0dbbf78c - 0x0dbbf7e4 (Size: 88 bytes, Frame: 48)
.globl __glsplc_LoadName
.ent __glsplc_LoadName
__glsplc_LoadName:
    # Line 2354
    li	$a1,121
    # Line 2351
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-4340
    addu	$gp,$t9,$at
    # Line 2354
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbbf7d4
    # Line 2357
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2355
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbf7d4:
    ld	$gp,8($sp)
    # Line 2357
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2356
    sw	$v1,0($v0)
.end __glsplc_LoadName

# Function: __glsplc_PassThrough
# Declared: Line 2360 (Source lines: 2361-2367)
# Address: 0x0dbbf7e4 - 0x0dbbf83c (Size: 88 bytes, Frame: 48)
.globl __glsplc_PassThrough
.ent __glsplc_PassThrough
__glsplc_PassThrough:
    # Line 2364
    li	$a1,122
    # Line 2361
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-4428
    addu	$gp,$t9,$at
    # Line 2364
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,4
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    ldc1	$f0,0($sp)
    bnez	$v0,.L0dbbf82c
    # Line 2367
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2365
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbf82c:
    ld	$gp,8($sp)
    # Line 2367
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2366
    swc1	$f0,0($v0)
.end __glsplc_PassThrough

# Function: __glsplc_PopName
# Declared: Line 2370 (Source lines: 2371-2375)
# Address: 0x0dbbf83c - 0x0dbbf874 (Size: 56 bytes, Frame: 16)
.globl __glsplc_PopName
.ent __glsplc_PopName
__glsplc_PopName:
    # Line 2371
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-4516
    addu	$gp,$t9,$at
    # Line 2374
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,123
    sd	$ra,0($sp)
    jal	__glSPDlalloc
    move	$a0,$zero
    # Line 2375
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_PopName

# Function: __glsplc_PushName
# Declared: Line 2379 (Source lines: 2380-2386)
# Address: 0x0dbbf874 - 0x0dbbf8cc (Size: 88 bytes, Frame: 48)
.globl __glsplc_PushName
.ent __glsplc_PushName
__glsplc_PushName:
    # Line 2383
    li	$a1,124
    # Line 2380
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-4572
    addu	$gp,$t9,$at
    # Line 2383
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbbf8bc
    # Line 2386
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2384
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbf8bc:
    ld	$gp,8($sp)
    # Line 2386
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2385
    sw	$v1,0($v0)
.end __glsplc_PushName

# Function: __glsplc_DrawBuffer
# Declared: Line 2389 (Source lines: 2390-2396)
# Address: 0x0dbbf8cc - 0x0dbbf924 (Size: 88 bytes, Frame: 48)
.globl __glsplc_DrawBuffer
.ent __glsplc_DrawBuffer
__glsplc_DrawBuffer:
    # Line 2393
    li	$a1,125
    # Line 2390
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-4660
    addu	$gp,$t9,$at
    # Line 2393
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbbf914
    # Line 2396
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2394
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbf914:
    ld	$gp,8($sp)
    # Line 2396
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2395
    sw	$v1,0($v0)
.end __glsplc_DrawBuffer

# Function: __glsplc_Clear
# Declared: Line 2399 (Source lines: 2400-2406)
# Address: 0x0dbbf924 - 0x0dbbf97c (Size: 88 bytes, Frame: 48)
.globl __glsplc_Clear
.ent __glsplc_Clear
__glsplc_Clear:
    # Line 2403
    li	$a1,126
    # Line 2400
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-4748
    addu	$gp,$t9,$at
    # Line 2403
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbbf96c
    # Line 2406
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2404
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbf96c:
    ld	$gp,8($sp)
    # Line 2406
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2405
    sw	$v1,0($v0)
.end __glsplc_Clear

# Function: __glsplc_ClearAccum
# Declared: Line 2409 (Source lines: 2410-2419)
# Address: 0x0dbbf97c - 0x0dbbf9f8 (Size: 124 bytes, Frame: 208)
.globl __glsplc_ClearAccum
.ent __glsplc_ClearAccum
__glsplc_ClearAccum:
    # Line 2413
    li	$a1,127
    li	$a0,16
    # Line 2410
    addiu	$sp,$sp,-80
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sd	$gp,32($sp)
    lui	$at,0x4
    addiu	$at,$at,-4836
    addu	$gp,$t9,$at
    # Line 2413
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    # Line 2417
    ldc1	$f2,16($sp)
    # Line 2415
    ldc1	$f0,0($sp)
    # Line 2413
    bnez	$v0,.L0dbbf9d4
    ldc1	$f3,24($sp)
    ld	$gp,32($sp)
    # Line 2414
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbf9d4:
    # Line 2419
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    # Line 2416
    ldc1	$f1,8($sp)
    # Line 2419
    addiu	$sp,$sp,80
    # Line 2418
    swc1	$f3,12($v0)
    # Line 2417
    swc1	$f2,8($v0)
    # Line 2415
    swc1	$f0,0($v0)
    # Line 2419
    jr	$ra
    # Line 2416
    swc1	$f1,4($v0)
.end __glsplc_ClearAccum

# Function: __glsplc_ClearIndex
# Declared: Line 2422 (Source lines: 2423-2429)
# Address: 0x0dbbf9f8 - 0x0dbbfa50 (Size: 88 bytes, Frame: 48)
.globl __glsplc_ClearIndex
.ent __glsplc_ClearIndex
__glsplc_ClearIndex:
    # Line 2426
    li	$a1,128
    # Line 2423
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-4960
    addu	$gp,$t9,$at
    # Line 2426
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,4
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    ldc1	$f0,0($sp)
    bnez	$v0,.L0dbbfa40
    # Line 2429
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2427
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbfa40:
    ld	$gp,8($sp)
    # Line 2429
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2428
    swc1	$f0,0($v0)
.end __glsplc_ClearIndex

# Function: __glsplc_ClearColor
# Declared: Line 2432 (Source lines: 2433-2442)
# Address: 0x0dbbfa50 - 0x0dbbfacc (Size: 124 bytes, Frame: 208)
.globl __glsplc_ClearColor
.ent __glsplc_ClearColor
__glsplc_ClearColor:
    # Line 2436
    li	$a1,129
    li	$a0,16
    # Line 2433
    addiu	$sp,$sp,-80
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sd	$gp,32($sp)
    lui	$at,0x4
    addiu	$at,$at,-5048
    addu	$gp,$t9,$at
    # Line 2436
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    # Line 2440
    ldc1	$f2,16($sp)
    # Line 2438
    ldc1	$f0,0($sp)
    # Line 2436
    bnez	$v0,.L0dbbfaa8
    ldc1	$f3,24($sp)
    ld	$gp,32($sp)
    # Line 2437
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbfaa8:
    # Line 2442
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    # Line 2439
    ldc1	$f1,8($sp)
    # Line 2442
    addiu	$sp,$sp,80
    # Line 2441
    swc1	$f3,12($v0)
    # Line 2440
    swc1	$f2,8($v0)
    # Line 2438
    swc1	$f0,0($v0)
    # Line 2442
    jr	$ra
    # Line 2439
    swc1	$f1,4($v0)
.end __glsplc_ClearColor

# Function: __glsplc_ClearStencil
# Declared: Line 2445 (Source lines: 2446-2452)
# Address: 0x0dbbfacc - 0x0dbbfb24 (Size: 88 bytes, Frame: 48)
.globl __glsplc_ClearStencil
.ent __glsplc_ClearStencil
__glsplc_ClearStencil:
    # Line 2449
    li	$a1,130
    # Line 2446
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-5172
    addu	$gp,$t9,$at
    # Line 2449
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbbfb14
    # Line 2452
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2450
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbfb14:
    ld	$gp,8($sp)
    # Line 2452
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2451
    sw	$v1,0($v0)
.end __glsplc_ClearStencil

# Function: __glsplc_ClearDepth
# Declared: Line 2455 (Source lines: 2456-2462)
# Address: 0x0dbbfb24 - 0x0dbbfb7c (Size: 88 bytes, Frame: 48)
.globl __glsplc_ClearDepth
.ent __glsplc_ClearDepth
__glsplc_ClearDepth:
    # Line 2459
    li	$a1,131
    # Line 2456
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-5260
    addu	$gp,$t9,$at
    # Line 2459
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    li	$a0,8
    sd	$ra,16($sp)
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    ldc1	$f0,0($sp)
    bnez	$v0,.L0dbbfb6c
    # Line 2462
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2460
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbfb6c:
    ld	$gp,8($sp)
    # Line 2462
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2461
    sdc1	$f0,0($v0)
.end __glsplc_ClearDepth

# Function: __glsplc_StencilMask
# Declared: Line 2465 (Source lines: 2466-2472)
# Address: 0x0dbbfb7c - 0x0dbbfbd4 (Size: 88 bytes, Frame: 48)
.globl __glsplc_StencilMask
.ent __glsplc_StencilMask
__glsplc_StencilMask:
    # Line 2469
    li	$a1,132
    # Line 2466
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-5348
    addu	$gp,$t9,$at
    # Line 2469
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbbfbc4
    # Line 2472
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2470
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbfbc4:
    ld	$gp,8($sp)
    # Line 2472
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2471
    sw	$v1,0($v0)
.end __glsplc_StencilMask

# Function: __glsplc_ColorMask
# Declared: Line 2475 (Source lines: 2476-2485)
# Address: 0x0dbbfbd4 - 0x0dbbfc50 (Size: 124 bytes, Frame: 208)
.globl __glsplc_ColorMask
.ent __glsplc_ColorMask
__glsplc_ColorMask:
    # Line 2476
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 2479
    li	$a1,133
    sd	$a0,0($sp)
    li	$a0,4
    sd	$gp,32($sp)
    # Line 2476
    lui	$at,0x4
    addiu	$at,$at,-5436
    addu	$gp,$t9,$at
    # Line 2479
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a3,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    ld	$ra,8($sp)
    # Line 2483
    ld	$a5,24($sp)
    # Line 2479
    bnez	$v0,.L0dbbfc2c
    # Line 2481
    ld	$v1,0($sp)
    ld	$gp,32($sp)
    # Line 2480
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbfc2c:
    # Line 2481
    sb	$v1,0($v0)
    ld	$gp,32($sp)
    # Line 2482
    ld	$a4,16($sp)
    # Line 2484
    sb	$ra,3($v0)
    # Line 2485
    ld	$ra,40($sp)
    addiu	$sp,$sp,80
    # Line 2483
    sb	$a5,2($v0)
    # Line 2485
    jr	$ra
    # Line 2482
    sb	$a4,1($v0)
.end __glsplc_ColorMask

# Function: __glsplc_DepthMask
# Declared: Line 2488 (Source lines: 2489-2495)
# Address: 0x0dbbfc50 - 0x0dbbfca8 (Size: 88 bytes, Frame: 48)
.globl __glsplc_DepthMask
.ent __glsplc_DepthMask
__glsplc_DepthMask:
    # Line 2492
    li	$a1,134
    # Line 2489
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-5560
    addu	$gp,$t9,$at
    # Line 2492
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbbfc98
    # Line 2495
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2493
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbfc98:
    ld	$gp,8($sp)
    # Line 2495
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2494
    sb	$v1,0($v0)
.end __glsplc_DepthMask

# Function: __glsplc_IndexMask
# Declared: Line 2498 (Source lines: 2499-2505)
# Address: 0x0dbbfca8 - 0x0dbbfd00 (Size: 88 bytes, Frame: 48)
.globl __glsplc_IndexMask
.ent __glsplc_IndexMask
__glsplc_IndexMask:
    # Line 2502
    li	$a1,135
    # Line 2499
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-5648
    addu	$gp,$t9,$at
    # Line 2502
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbbfcf0
    # Line 2505
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2503
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbfcf0:
    ld	$gp,8($sp)
    # Line 2505
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2504
    sw	$v1,0($v0)
.end __glsplc_IndexMask

# Function: __glsplc_Accum
# Declared: Line 2508 (Source lines: 2509-2516)
# Address: 0x0dbbfd00 - 0x0dbbfd64 (Size: 100 bytes, Frame: 48)
.globl __glsplc_Accum
.ent __glsplc_Accum
__glsplc_Accum:
    # Line 2512
    li	$a1,136
    # Line 2509
    addiu	$sp,$sp,-48
    sd	$a0,8($sp)
    sd	$gp,16($sp)
    lui	$at,0x4
    addiu	$at,$at,-5736
    addu	$gp,$t9,$at
    # Line 2512
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,8
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    sdc1	$f13,0($sp)
    # Line 2514
    ld	$v1,8($sp)
    # Line 2512
    bnez	$v0,.L0dbbfd4c
    ldc1	$f0,0($sp)
    ld	$gp,16($sp)
    # Line 2513
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbfd4c:
    # Line 2516
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 2515
    swc1	$f0,4($v0)
    # Line 2516
    jr	$ra
    # Line 2514
    sw	$v1,0($v0)
.end __glsplc_Accum

# Function: __glsplc_PopAttrib
# Declared: Line 2523 (Source lines: 2524-2528)
# Address: 0x0dbbfd64 - 0x0dbbfd9c (Size: 56 bytes, Frame: 16)
.globl __glsplc_PopAttrib
.ent __glsplc_PopAttrib
__glsplc_PopAttrib:
    # Line 2524
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-5836
    addu	$gp,$t9,$at
    # Line 2527
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,139
    sd	$ra,0($sp)
    jal	__glSPDlalloc
    move	$a0,$zero
    # Line 2528
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_PopAttrib

# Function: __glsplc_PushAttrib
# Declared: Line 2532 (Source lines: 2533-2539)
# Address: 0x0dbbfd9c - 0x0dbbfdf4 (Size: 88 bytes, Frame: 48)
.globl __glsplc_PushAttrib
.ent __glsplc_PushAttrib
__glsplc_PushAttrib:
    # Line 2536
    li	$a1,140
    # Line 2533
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-5892
    addu	$gp,$t9,$at
    # Line 2536
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbbfde4
    # Line 2539
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2537
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbbfde4:
    ld	$gp,8($sp)
    # Line 2539
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2538
    sw	$v1,0($v0)
.end __glsplc_PushAttrib

# Function: __glsplc_MapGrid1d
# Declared: Line 2546 (Source lines: 2547-2555)
# Address: 0x0dbbfdf4 - 0x0dbbfe64 (Size: 112 bytes, Frame: 208)
.globl __glsplc_MapGrid1d
.ent __glsplc_MapGrid1d
__glsplc_MapGrid1d:
    # Line 2550
    li	$a1,145
    # Line 2547
    addiu	$sp,$sp,-80
    sd	$a0,16($sp)
    # Line 2550
    li	$a0,24
    sd	$gp,24($sp)
    # Line 2547
    lui	$at,0x4
    addiu	$at,$at,-5980
    addu	$gp,$t9,$at
    # Line 2550
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sdc1	$f14,8($sp)
    sd	$ra,32($sp)
    jal	__glSPDlalloc2
    sdc1	$f13,0($sp)
    # Line 2553
    ldc1	$f0,0($sp)
    # Line 2555
    ld	$ra,32($sp)
    # Line 2550
    bnez	$v0,.L0dbbfe48
    ldc1	$f1,8($sp)
    ld	$gp,24($sp)
    # Line 2551
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbfe48:
    ld	$gp,24($sp)
    # Line 2552
    ld	$v1,16($sp)
    # Line 2555
    addiu	$sp,$sp,80
    # Line 2554
    sdc1	$f1,8($v0)
    # Line 2553
    sdc1	$f0,0($v0)
    # Line 2555
    jr	$ra
    # Line 2552
    sw	$v1,16($v0)
.end __glsplc_MapGrid1d

# Function: __glsplc_MapGrid1f
# Declared: Line 2558 (Source lines: 2559-2567)
# Address: 0x0dbbfe64 - 0x0dbbfed4 (Size: 112 bytes, Frame: 208)
.globl __glsplc_MapGrid1f
.ent __glsplc_MapGrid1f
__glsplc_MapGrid1f:
    # Line 2562
    li	$a1,146
    # Line 2559
    addiu	$sp,$sp,-80
    sd	$a0,16($sp)
    # Line 2562
    li	$a0,12
    sd	$gp,24($sp)
    # Line 2559
    lui	$at,0x4
    addiu	$at,$at,-6092
    addu	$gp,$t9,$at
    # Line 2562
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sdc1	$f14,8($sp)
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sdc1	$f13,0($sp)
    # Line 2565
    ldc1	$f0,0($sp)
    # Line 2567
    ld	$ra,32($sp)
    # Line 2562
    bnez	$v0,.L0dbbfeb8
    ldc1	$f1,8($sp)
    ld	$gp,24($sp)
    # Line 2563
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbbfeb8:
    ld	$gp,24($sp)
    # Line 2564
    ld	$v1,16($sp)
    # Line 2567
    addiu	$sp,$sp,80
    # Line 2566
    swc1	$f1,8($v0)
    # Line 2565
    swc1	$f0,4($v0)
    # Line 2567
    jr	$ra
    # Line 2564
    sw	$v1,0($v0)
.end __glsplc_MapGrid1f

# Function: __glsplc_MapGrid2d
# Declared: Line 2570 (Source lines: 2571-2582)
# Address: 0x0dbbfed4 - 0x0dbbff68 (Size: 148 bytes, Frame: 240)
.globl __glsplc_MapGrid2d
.ent __glsplc_MapGrid2d
__glsplc_MapGrid2d:
    # Line 2574
    li	$a1,147
    # Line 2571
    addiu	$sp,$sp,-112
    sd	$a0,32($sp)
    # Line 2574
    li	$a0,40
    sdc1	$f17,24($sp)
    sdc1	$f16,16($sp)
    sd	$a3,40($sp)
    sd	$gp,48($sp)
    # Line 2571
    lui	$at,0x4
    addiu	$at,$at,-6204
    addu	$gp,$t9,$at
    # Line 2574
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sdc1	$f14,8($sp)
    sd	$ra,56($sp)
    jal	__glSPDlalloc2
    sdc1	$f13,0($sp)
    # Line 2580
    ldc1	$f2,16($sp)
    # Line 2578
    ldc1	$f1,8($sp)
    # Line 2576
    ld	$v1,32($sp)
    # Line 2574
    bnez	$v0,.L0dbbff38
    ldc1	$f3,24($sp)
    ld	$gp,48($sp)
    # Line 2575
    ld	$ra,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dbbff38:
    # Line 2582
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    # Line 2577
    ldc1	$f0,0($sp)
    # Line 2579
    ld	$a1,40($sp)
    # Line 2582
    addiu	$sp,$sp,112
    # Line 2581
    sdc1	$f3,24($v0)
    # Line 2580
    sdc1	$f2,16($v0)
    # Line 2578
    sdc1	$f1,8($v0)
    # Line 2576
    sw	$v1,32($v0)
    # Line 2577
    sdc1	$f0,0($v0)
    # Line 2582
    jr	$ra
    # Line 2579
    sw	$a1,36($v0)
.end __glsplc_MapGrid2d

# Function: __glsplc_MapGrid2f
# Declared: Line 2585 (Source lines: 2586-2597)
# Address: 0x0dbbff68 - 0x0dbbfffc (Size: 148 bytes, Frame: 240)
.globl __glsplc_MapGrid2f
.ent __glsplc_MapGrid2f
__glsplc_MapGrid2f:
    # Line 2589
    li	$a1,148
    # Line 2586
    addiu	$sp,$sp,-112
    sd	$a0,32($sp)
    # Line 2589
    li	$a0,24
    sdc1	$f17,24($sp)
    sdc1	$f16,16($sp)
    sd	$a3,40($sp)
    sd	$gp,48($sp)
    # Line 2586
    lui	$at,0x4
    addiu	$at,$at,-6352
    addu	$gp,$t9,$at
    # Line 2589
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sdc1	$f14,8($sp)
    sd	$ra,56($sp)
    jal	__glSPDlalloc
    sdc1	$f13,0($sp)
    # Line 2595
    ldc1	$f2,16($sp)
    # Line 2593
    ldc1	$f1,8($sp)
    # Line 2591
    ld	$v1,32($sp)
    # Line 2589
    bnez	$v0,.L0dbbffcc
    ldc1	$f3,24($sp)
    ld	$gp,48($sp)
    # Line 2590
    ld	$ra,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dbbffcc:
    # Line 2597
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    # Line 2592
    ldc1	$f0,0($sp)
    # Line 2594
    ld	$a1,40($sp)
    # Line 2597
    addiu	$sp,$sp,112
    # Line 2596
    swc1	$f3,20($v0)
    # Line 2595
    swc1	$f2,16($v0)
    # Line 2593
    swc1	$f1,8($v0)
    # Line 2591
    sw	$v1,0($v0)
    # Line 2592
    swc1	$f0,4($v0)
    # Line 2597
    jr	$ra
    # Line 2594
    sw	$a1,12($v0)
.end __glsplc_MapGrid2f

# Function: __glsplc_EvalCoord1d
# Declared: Line 2600 (Source lines: 2601-2607)
# Address: 0x0dbbfffc - 0x0dbc0054 (Size: 88 bytes, Frame: 48)
.globl __glsplc_EvalCoord1d
.ent __glsplc_EvalCoord1d
__glsplc_EvalCoord1d:
    # Line 2604
    li	$a1,149
    # Line 2601
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-6500
    addu	$gp,$t9,$at
    # Line 2604
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    li	$a0,8
    sd	$ra,16($sp)
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    ldc1	$f0,0($sp)
    bnez	$v0,.L0dbc0044
    # Line 2607
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2605
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc0044:
    ld	$gp,8($sp)
    # Line 2607
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2606
    sdc1	$f0,0($v0)
.end __glsplc_EvalCoord1d

# Function: __glsplc_EvalCoord1dv
# Declared: Line 2610 (Source lines: 2611-2617)
# Address: 0x0dbc0054 - 0x0dbc00b0 (Size: 92 bytes, Frame: 48)
.globl __glsplc_EvalCoord1dv
.ent __glsplc_EvalCoord1dv
__glsplc_EvalCoord1dv:
    # Line 2614
    li	$a1,149
    # Line 2611
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-6588
    addu	$gp,$t9,$at
    # Line 2614
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc2
    li	$a0,8
    bnez	$v0,.L0dbc0098
    # Line 2617
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2615
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc0098:
    ld	$v1,0($sp)
    ld	$gp,8($sp)
    # Line 2616
    ldc1	$f0,0($v1)
    # Line 2617
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2616
    sdc1	$f0,0($v0)
.end __glsplc_EvalCoord1dv

# Function: __glsplc_EvalCoord1f
# Declared: Line 2620 (Source lines: 2621-2627)
# Address: 0x0dbc00b0 - 0x0dbc0108 (Size: 88 bytes, Frame: 48)
.globl __glsplc_EvalCoord1f
.ent __glsplc_EvalCoord1f
__glsplc_EvalCoord1f:
    # Line 2624
    li	$a1,150
    # Line 2621
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-6680
    addu	$gp,$t9,$at
    # Line 2624
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,4
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    ldc1	$f0,0($sp)
    bnez	$v0,.L0dbc00f8
    # Line 2627
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2625
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc00f8:
    ld	$gp,8($sp)
    # Line 2627
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2626
    swc1	$f0,0($v0)
.end __glsplc_EvalCoord1f

# Function: __glsplc_EvalCoord1fv
# Declared: Line 2630 (Source lines: 2631-2637)
# Address: 0x0dbc0108 - 0x0dbc0164 (Size: 92 bytes, Frame: 48)
.globl __glsplc_EvalCoord1fv
.ent __glsplc_EvalCoord1fv
__glsplc_EvalCoord1fv:
    # Line 2634
    li	$a1,150
    # Line 2631
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-6768
    addu	$gp,$t9,$at
    # Line 2634
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    bnez	$v0,.L0dbc014c
    # Line 2637
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2635
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc014c:
    ld	$v1,0($sp)
    ld	$gp,8($sp)
    # Line 2636
    lwc1	$f0,0($v1)
    # Line 2637
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2636
    swc1	$f0,0($v0)
.end __glsplc_EvalCoord1fv

# Function: __glsplc_EvalCoord2d
# Declared: Line 2640 (Source lines: 2641-2648)
# Address: 0x0dbc0164 - 0x0dbc01c8 (Size: 100 bytes, Frame: 48)
.globl __glsplc_EvalCoord2d
.ent __glsplc_EvalCoord2d
__glsplc_EvalCoord2d:
    # Line 2644
    li	$a1,151
    li	$a0,16
    # Line 2641
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$at,0x4
    addiu	$at,$at,-6860
    addu	$gp,$t9,$at
    # Line 2644
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sdc1	$f13,8($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    # Line 2646
    ldc1	$f0,0($sp)
    # Line 2644
    bnez	$v0,.L0dbc01b0
    ldc1	$f1,8($sp)
    ld	$gp,16($sp)
    # Line 2645
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc01b0:
    # Line 2648
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 2647
    sdc1	$f1,8($v0)
    # Line 2648
    jr	$ra
    # Line 2646
    sdc1	$f0,0($v0)
.end __glsplc_EvalCoord2d

# Function: __glsplc_EvalCoord2dv
# Declared: Line 2651 (Source lines: 2652-2659)
# Address: 0x0dbc01c8 - 0x0dbc022c (Size: 100 bytes, Frame: 48)
.globl __glsplc_EvalCoord2dv
.ent __glsplc_EvalCoord2dv
__glsplc_EvalCoord2dv:
    # Line 2655
    li	$a1,151
    # Line 2652
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-6960
    addu	$gp,$t9,$at
    # Line 2655
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc2
    li	$a0,16
    bnez	$v0,.L0dbc020c
    # Line 2659
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2656
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc020c:
    ld	$v1,0($sp)
    # Line 2657
    ldc1	$f1,0($v1)
    sdc1	$f1,0($v0)
    ld	$gp,8($sp)
    # Line 2658
    ldc1	$f0,8($v1)
    # Line 2659
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2658
    sdc1	$f0,8($v0)
.end __glsplc_EvalCoord2dv

# Function: __glsplc_EvalCoord2f
# Declared: Line 2662 (Source lines: 2663-2670)
# Address: 0x0dbc022c - 0x0dbc0290 (Size: 100 bytes, Frame: 48)
.globl __glsplc_EvalCoord2f
.ent __glsplc_EvalCoord2f
__glsplc_EvalCoord2f:
    # Line 2666
    li	$a1,152
    li	$a0,8
    # Line 2663
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$at,0x4
    addiu	$at,$at,-7060
    addu	$gp,$t9,$at
    # Line 2666
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sdc1	$f13,8($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    # Line 2668
    ldc1	$f0,0($sp)
    # Line 2666
    bnez	$v0,.L0dbc0278
    ldc1	$f1,8($sp)
    ld	$gp,16($sp)
    # Line 2667
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc0278:
    # Line 2670
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 2669
    swc1	$f1,4($v0)
    # Line 2670
    jr	$ra
    # Line 2668
    swc1	$f0,0($v0)
.end __glsplc_EvalCoord2f

# Function: __glsplc_EvalCoord2fv
# Declared: Line 2673 (Source lines: 2674-2681)
# Address: 0x0dbc0290 - 0x0dbc02f4 (Size: 100 bytes, Frame: 48)
.globl __glsplc_EvalCoord2fv
.ent __glsplc_EvalCoord2fv
__glsplc_EvalCoord2fv:
    # Line 2677
    li	$a1,152
    # Line 2674
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-7160
    addu	$gp,$t9,$at
    # Line 2677
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,8
    bnez	$v0,.L0dbc02d4
    # Line 2681
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2678
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc02d4:
    ld	$v1,0($sp)
    # Line 2679
    lwc1	$f1,0($v1)
    swc1	$f1,0($v0)
    ld	$gp,8($sp)
    # Line 2680
    lwc1	$f0,4($v1)
    # Line 2681
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2680
    swc1	$f0,4($v0)
.end __glsplc_EvalCoord2fv

# Function: __glsplc_EvalMesh1
# Declared: Line 2684 (Source lines: 2685-2693)
# Address: 0x0dbc02f4 - 0x0dbc0364 (Size: 112 bytes, Frame: 208)
.globl __glsplc_EvalMesh1
.ent __glsplc_EvalMesh1
__glsplc_EvalMesh1:
    # Line 2685
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    # Line 2688
    li	$a1,153
    sd	$a0,0($sp)
    sd	$gp,24($sp)
    # Line 2685
    lui	$at,0x4
    addiu	$at,$at,-7260
    addu	$gp,$t9,$at
    # Line 2688
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,12
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sd	$a2,16($sp)
    # Line 2691
    ld	$a3,8($sp)
    # Line 2693
    ld	$ra,32($sp)
    # Line 2688
    bnez	$v0,.L0dbc0348
    ld	$a4,16($sp)
    ld	$gp,24($sp)
    # Line 2689
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc0348:
    ld	$gp,24($sp)
    # Line 2690
    ld	$v1,0($sp)
    # Line 2693
    addiu	$sp,$sp,80
    # Line 2692
    sw	$a4,8($v0)
    # Line 2691
    sw	$a3,4($v0)
    # Line 2693
    jr	$ra
    # Line 2690
    sw	$v1,0($v0)
.end __glsplc_EvalMesh1

# Function: __glsplc_EvalPoint1
# Declared: Line 2696 (Source lines: 2697-2703)
# Address: 0x0dbc0364 - 0x0dbc03bc (Size: 88 bytes, Frame: 48)
.globl __glsplc_EvalPoint1
.ent __glsplc_EvalPoint1
__glsplc_EvalPoint1:
    # Line 2700
    li	$a1,154
    # Line 2697
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-7372
    addu	$gp,$t9,$at
    # Line 2700
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbc03ac
    # Line 2703
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2701
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc03ac:
    ld	$gp,8($sp)
    # Line 2703
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2702
    sw	$v1,0($v0)
.end __glsplc_EvalPoint1

# Function: __glsplc_EvalMesh2
# Declared: Line 2706 (Source lines: 2707-2717)
# Address: 0x0dbc03bc - 0x0dbc0444 (Size: 136 bytes, Frame: 240)
.globl __glsplc_EvalMesh2
.ent __glsplc_EvalMesh2
__glsplc_EvalMesh2:
    # Line 2707
    addiu	$sp,$sp,-112
    sd	$a1,24($sp)
    # Line 2710
    li	$a1,155
    sd	$a0,0($sp)
    li	$a0,20
    sd	$a4,8($sp)
    sd	$gp,40($sp)
    # Line 2707
    lui	$at,0x4
    addiu	$at,$at,-7460
    addu	$gp,$t9,$at
    # Line 2710
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a3,16($sp)
    sd	$ra,48($sp)
    jal	__glSPDlalloc
    sd	$a2,32($sp)
    # Line 2713
    ld	$a5,24($sp)
    # Line 2714
    ld	$a6,32($sp)
    # Line 2710
    bnez	$v0,.L0dbc0418
    # Line 2712
    ld	$v1,0($sp)
    ld	$gp,40($sp)
    # Line 2711
    ld	$ra,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dbc0418:
    ld	$at,8($sp)
    # Line 2712
    sw	$v1,0($v0)
    # Line 2715
    ld	$ra,16($sp)
    # Line 2713
    sw	$a5,4($v0)
    # Line 2714
    sw	$a6,8($v0)
    # Line 2715
    sw	$ra,12($v0)
    # Line 2717
    ld	$ra,48($sp)
    # Line 2716
    sw	$at,16($v0)
    ld	$gp,40($sp)
    # Line 2717
    jr	$ra
    addiu	$sp,$sp,112
.end __glsplc_EvalMesh2

# Function: __glsplc_EvalPoint2
# Declared: Line 2720 (Source lines: 2721-2728)
# Address: 0x0dbc0444 - 0x0dbc04a8 (Size: 100 bytes, Frame: 48)
.globl __glsplc_EvalPoint2
.ent __glsplc_EvalPoint2
__glsplc_EvalPoint2:
    # Line 2721
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    # Line 2724
    li	$a1,156
    sd	$gp,16($sp)
    # Line 2721
    lui	$at,0x4
    addiu	$at,$at,-7596
    addu	$gp,$t9,$at
    # Line 2724
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    li	$a0,8
    # Line 2726
    ld	$v1,0($sp)
    # Line 2724
    bnez	$v0,.L0dbc0490
    ld	$a2,8($sp)
    ld	$gp,16($sp)
    # Line 2725
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc0490:
    # Line 2728
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 2727
    sw	$a2,4($v0)
    # Line 2728
    jr	$ra
    # Line 2726
    sw	$v1,0($v0)
.end __glsplc_EvalPoint2

# Function: __glsplc_AlphaFunc
# Declared: Line 2731 (Source lines: 2732-2739)
# Address: 0x0dbc04a8 - 0x0dbc050c (Size: 100 bytes, Frame: 48)
.globl __glsplc_AlphaFunc
.ent __glsplc_AlphaFunc
__glsplc_AlphaFunc:
    # Line 2735
    li	$a1,157
    # Line 2732
    addiu	$sp,$sp,-48
    sd	$a0,8($sp)
    sd	$gp,16($sp)
    lui	$at,0x4
    addiu	$at,$at,-7696
    addu	$gp,$t9,$at
    # Line 2735
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,8
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    sdc1	$f13,0($sp)
    # Line 2737
    ld	$v1,8($sp)
    # Line 2735
    bnez	$v0,.L0dbc04f4
    ldc1	$f0,0($sp)
    ld	$gp,16($sp)
    # Line 2736
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc04f4:
    # Line 2739
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 2738
    swc1	$f0,4($v0)
    # Line 2739
    jr	$ra
    # Line 2737
    sw	$v1,0($v0)
.end __glsplc_AlphaFunc

# Function: __glsplc_BlendFunc
# Declared: Line 2742 (Source lines: 2743-2750)
# Address: 0x0dbc050c - 0x0dbc0570 (Size: 100 bytes, Frame: 48)
.globl __glsplc_BlendFunc
.ent __glsplc_BlendFunc
__glsplc_BlendFunc:
    # Line 2743
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    # Line 2746
    li	$a1,158
    sd	$gp,16($sp)
    # Line 2743
    lui	$at,0x4
    addiu	$at,$at,-7796
    addu	$gp,$t9,$at
    # Line 2746
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    li	$a0,8
    # Line 2748
    ld	$v1,0($sp)
    # Line 2746
    bnez	$v0,.L0dbc0558
    ld	$a2,8($sp)
    ld	$gp,16($sp)
    # Line 2747
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc0558:
    # Line 2750
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 2749
    sw	$a2,4($v0)
    # Line 2750
    jr	$ra
    # Line 2748
    sw	$v1,0($v0)
.end __glsplc_BlendFunc

# Function: __glsplc_LogicOp
# Declared: Line 2753 (Source lines: 2754-2760)
# Address: 0x0dbc0570 - 0x0dbc05c8 (Size: 88 bytes, Frame: 48)
.globl __glsplc_LogicOp
.ent __glsplc_LogicOp
__glsplc_LogicOp:
    # Line 2757
    li	$a1,159
    # Line 2754
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-7896
    addu	$gp,$t9,$at
    # Line 2757
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbc05b8
    # Line 2760
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2758
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc05b8:
    ld	$gp,8($sp)
    # Line 2760
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2759
    sw	$v1,0($v0)
.end __glsplc_LogicOp

# Function: __glsplc_StencilFunc
# Declared: Line 2763 (Source lines: 2764-2772)
# Address: 0x0dbc05c8 - 0x0dbc0638 (Size: 112 bytes, Frame: 208)
.globl __glsplc_StencilFunc
.ent __glsplc_StencilFunc
__glsplc_StencilFunc:
    # Line 2764
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    # Line 2767
    li	$a1,160
    sd	$a0,0($sp)
    sd	$gp,24($sp)
    # Line 2764
    lui	$at,0x4
    addiu	$at,$at,-7984
    addu	$gp,$t9,$at
    # Line 2767
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,12
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sd	$a2,16($sp)
    # Line 2770
    ld	$a3,8($sp)
    # Line 2772
    ld	$ra,32($sp)
    # Line 2767
    bnez	$v0,.L0dbc061c
    ld	$a4,16($sp)
    ld	$gp,24($sp)
    # Line 2768
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc061c:
    ld	$gp,24($sp)
    # Line 2769
    ld	$v1,0($sp)
    # Line 2772
    addiu	$sp,$sp,80
    # Line 2771
    sw	$a4,8($v0)
    # Line 2770
    sw	$a3,4($v0)
    # Line 2772
    jr	$ra
    # Line 2769
    sw	$v1,0($v0)
.end __glsplc_StencilFunc

# Function: __glsplc_StencilOp
# Declared: Line 2775 (Source lines: 2776-2784)
# Address: 0x0dbc0638 - 0x0dbc06a8 (Size: 112 bytes, Frame: 208)
.globl __glsplc_StencilOp
.ent __glsplc_StencilOp
__glsplc_StencilOp:
    # Line 2776
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    # Line 2779
    li	$a1,161
    sd	$a0,0($sp)
    sd	$gp,24($sp)
    # Line 2776
    lui	$at,0x4
    addiu	$at,$at,-8096
    addu	$gp,$t9,$at
    # Line 2779
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,12
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sd	$a2,16($sp)
    # Line 2782
    ld	$a3,8($sp)
    # Line 2784
    ld	$ra,32($sp)
    # Line 2779
    bnez	$v0,.L0dbc068c
    ld	$a4,16($sp)
    ld	$gp,24($sp)
    # Line 2780
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc068c:
    ld	$gp,24($sp)
    # Line 2781
    ld	$v1,0($sp)
    # Line 2784
    addiu	$sp,$sp,80
    # Line 2783
    sw	$a4,8($v0)
    # Line 2782
    sw	$a3,4($v0)
    # Line 2784
    jr	$ra
    # Line 2781
    sw	$v1,0($v0)
.end __glsplc_StencilOp

# Function: __glsplc_DepthFunc
# Declared: Line 2787 (Source lines: 2788-2794)
# Address: 0x0dbc06a8 - 0x0dbc0700 (Size: 88 bytes, Frame: 48)
.globl __glsplc_DepthFunc
.ent __glsplc_DepthFunc
__glsplc_DepthFunc:
    # Line 2791
    li	$a1,162
    # Line 2788
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-8208
    addu	$gp,$t9,$at
    # Line 2791
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbc06f0
    # Line 2794
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2792
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc06f0:
    ld	$gp,8($sp)
    # Line 2794
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2793
    sw	$v1,0($v0)
.end __glsplc_DepthFunc

# Function: __glsplc_PixelZoom
# Declared: Line 2797 (Source lines: 2798-2805)
# Address: 0x0dbc0700 - 0x0dbc0764 (Size: 100 bytes, Frame: 48)
.globl __glsplc_PixelZoom
.ent __glsplc_PixelZoom
__glsplc_PixelZoom:
    # Line 2801
    li	$a1,163
    li	$a0,8
    # Line 2798
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$at,0x4
    addiu	$at,$at,-8296
    addu	$gp,$t9,$at
    # Line 2801
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sdc1	$f13,8($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    # Line 2803
    ldc1	$f0,0($sp)
    # Line 2801
    bnez	$v0,.L0dbc074c
    ldc1	$f1,8($sp)
    ld	$gp,16($sp)
    # Line 2802
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc074c:
    # Line 2805
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 2804
    swc1	$f1,4($v0)
    # Line 2805
    jr	$ra
    # Line 2803
    swc1	$f0,0($v0)
.end __glsplc_PixelZoom

# Function: __glsplc_PixelTransferf
# Declared: Line 2808 (Source lines: 2809-2816)
# Address: 0x0dbc0764 - 0x0dbc07c8 (Size: 100 bytes, Frame: 48)
.globl __glsplc_PixelTransferf
.ent __glsplc_PixelTransferf
__glsplc_PixelTransferf:
    # Line 2812
    li	$a1,164
    # Line 2809
    addiu	$sp,$sp,-48
    sd	$a0,8($sp)
    sd	$gp,16($sp)
    lui	$at,0x4
    addiu	$at,$at,-8396
    addu	$gp,$t9,$at
    # Line 2812
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,8
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    sdc1	$f13,0($sp)
    # Line 2814
    ld	$v1,8($sp)
    # Line 2812
    bnez	$v0,.L0dbc07b0
    ldc1	$f0,0($sp)
    ld	$gp,16($sp)
    # Line 2813
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc07b0:
    # Line 2816
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 2815
    swc1	$f0,4($v0)
    # Line 2816
    jr	$ra
    # Line 2814
    sw	$v1,0($v0)
.end __glsplc_PixelTransferf

# Function: __glsplc_PixelTransferi
# Declared: Line 2819 (Source lines: 2820-2827)
# Address: 0x0dbc07c8 - 0x0dbc082c (Size: 100 bytes, Frame: 48)
.globl __glsplc_PixelTransferi
.ent __glsplc_PixelTransferi
__glsplc_PixelTransferi:
    # Line 2820
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    # Line 2823
    li	$a1,165
    sd	$gp,16($sp)
    # Line 2820
    lui	$at,0x4
    addiu	$at,$at,-8496
    addu	$gp,$t9,$at
    # Line 2823
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    li	$a0,8
    # Line 2825
    ld	$v1,0($sp)
    # Line 2823
    bnez	$v0,.L0dbc0814
    ld	$a2,8($sp)
    ld	$gp,16($sp)
    # Line 2824
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc0814:
    # Line 2827
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 2826
    sw	$a2,4($v0)
    # Line 2827
    jr	$ra
    # Line 2825
    sw	$v1,0($v0)
.end __glsplc_PixelTransferi

# Function: __glsplc_PixelMapfv
# Declared: Line 2832 (Source lines: 2833-2850)
# Address: 0x0dbc082c - 0x0dbc08dc (Size: 176 bytes, Frame: 208)
.globl __glsplc_PixelMapfv
.ent __glsplc_PixelMapfv
__glsplc_PixelMapfv:
    # Line 2833
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$a0,8($sp)
    sd	$s0,32($sp)
    move	$s0,$a1
    sd	$a2,16($sp)
    sd	$gp,24($sp)
    lui	$at,0x4
    addiu	$at,$at,-8596
    bltz	$a1,.L0dbc08bc
    addu	$gp,$t9,$at
    # Line 2844
    li	$a1,166
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sll	$a0,$s0,0x2
    sd	$a0,0($sp)
    jal	__glSPDlalloc
    addiu	$a0,$a0,8
    bnez	$v0,.L0dbc0888
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    # Line 2845
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc0888:
    ld	$a2,0($sp)
    # Line 2848
    ld	$a1,16($sp)
    addiu	$a0,$v0,8
    # lw $t9, -17848($gp) # &memcpy
    # Line 2846
    ld	$a3,8($sp)
    # Line 2847
    sw	$s0,4($v0)
    # Line 2848
    jal	memcpy
    # Line 2846
    sw	$a3,0($v0)
    # Line 2850
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc08bc:
    # Line 2840
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
    jal	__glsplc_InvalidValue
    nop
    # Line 2841
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_PixelMapfv

# Function: __glsplc_PixelMapuiv
# Declared: Line 2853 (Source lines: 2854-2871)
# Address: 0x0dbc08dc - 0x0dbc098c (Size: 176 bytes, Frame: 208)
.globl __glsplc_PixelMapuiv
.ent __glsplc_PixelMapuiv
__glsplc_PixelMapuiv:
    # Line 2854
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$a0,8($sp)
    sd	$s0,32($sp)
    move	$s0,$a1
    sd	$a2,16($sp)
    sd	$gp,24($sp)
    lui	$at,0x4
    addiu	$at,$at,-8772
    bltz	$a1,.L0dbc096c
    addu	$gp,$t9,$at
    # Line 2865
    li	$a1,167
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sll	$a0,$s0,0x2
    sd	$a0,0($sp)
    jal	__glSPDlalloc
    addiu	$a0,$a0,8
    bnez	$v0,.L0dbc0938
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    # Line 2866
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc0938:
    ld	$a2,0($sp)
    # Line 2869
    ld	$a1,16($sp)
    addiu	$a0,$v0,8
    # lw $t9, -17848($gp) # &memcpy
    # Line 2867
    ld	$a3,8($sp)
    # Line 2868
    sw	$s0,4($v0)
    # Line 2869
    jal	memcpy
    # Line 2867
    sw	$a3,0($v0)
    # Line 2871
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc096c:
    # Line 2861
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
    jal	__glsplc_InvalidValue
    nop
    # Line 2862
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_PixelMapuiv

# Function: __glsplc_PixelMapusv
# Declared: Line 2874 (Source lines: 2875-2892)
# Address: 0x0dbc098c - 0x0dbc0a48 (Size: 188 bytes, Frame: 208)
.globl __glsplc_PixelMapusv
.ent __glsplc_PixelMapusv
__glsplc_PixelMapusv:
    # Line 2875
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$a2,16($sp)
    sd	$a0,0($sp)
    sd	$a1,8($sp)
    sd	$gp,24($sp)
    li	$v0,-4
    lui	$at,0x4
    addiu	$at,$at,-8948
    sd	$s0,32($sp)
    addu	$s0,$a1,$a1
    addiu	$s0,$s0,3
    and	$s0,$s0,$v0
    bltz	$s0,.L0dbc0a28
    addu	$gp,$t9,$at
    # Line 2886
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,168
    jal	__glSPDlalloc
    addiu	$a0,$s0,8
    bnez	$v0,.L0dbc09f0
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    # Line 2887
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc09f0:
    # Line 2890
    move	$a2,$s0
    ld	$a1,16($sp)
    addiu	$a0,$v0,8
    # Line 2889
    ld	$a3,8($sp)
    # Line 2890
    # lw $t9, -17848($gp) # &memcpy
    # Line 2888
    ld	$v1,0($sp)
    # Line 2889
    sw	$a3,4($v0)
    # Line 2890
    jal	memcpy
    # Line 2888
    sw	$v1,0($v0)
    # Line 2892
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc0a28:
    # Line 2882
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
    jal	__glsplc_InvalidValue
    nop
    # Line 2883
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_PixelMapusv

# Function: __glsplc_ReadBuffer
# Declared: Line 2895 (Source lines: 2896-2902)
# Address: 0x0dbc0a48 - 0x0dbc0aa0 (Size: 88 bytes, Frame: 48)
.globl __glsplc_ReadBuffer
.ent __glsplc_ReadBuffer
__glsplc_ReadBuffer:
    # Line 2899
    li	$a1,169
    # Line 2896
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-9136
    addu	$gp,$t9,$at
    # Line 2899
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbc0a90
    # Line 2902
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 2900
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc0a90:
    ld	$gp,8($sp)
    # Line 2902
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2901
    sw	$v1,0($v0)
.end __glsplc_ReadBuffer

# Function: __glsplc_CopyPixels
# Declared: Line 2905 (Source lines: 2906-2916)
# Address: 0x0dbc0aa0 - 0x0dbc0b28 (Size: 136 bytes, Frame: 240)
.globl __glsplc_CopyPixels
.ent __glsplc_CopyPixels
__glsplc_CopyPixels:
    # Line 2906
    addiu	$sp,$sp,-112
    sd	$a1,24($sp)
    # Line 2909
    li	$a1,170
    sd	$a0,0($sp)
    li	$a0,20
    sd	$a4,8($sp)
    sd	$gp,40($sp)
    # Line 2906
    lui	$at,0x4
    addiu	$at,$at,-9224
    addu	$gp,$t9,$at
    # Line 2909
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a3,16($sp)
    sd	$ra,48($sp)
    jal	__glSPDlalloc
    sd	$a2,32($sp)
    # Line 2912
    ld	$a5,24($sp)
    # Line 2913
    ld	$a6,32($sp)
    # Line 2909
    bnez	$v0,.L0dbc0afc
    # Line 2911
    ld	$v1,0($sp)
    ld	$gp,40($sp)
    # Line 2910
    ld	$ra,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dbc0afc:
    ld	$at,8($sp)
    # Line 2911
    sw	$v1,0($v0)
    # Line 2914
    ld	$ra,16($sp)
    # Line 2912
    sw	$a5,4($v0)
    # Line 2913
    sw	$a6,8($v0)
    # Line 2914
    sw	$ra,12($v0)
    # Line 2916
    ld	$ra,48($sp)
    # Line 2915
    sw	$at,16($v0)
    ld	$gp,40($sp)
    # Line 2916
    jr	$ra
    addiu	$sp,$sp,112
.end __glsplc_CopyPixels

# Function: __glsplc_DepthRange
# Declared: Line 2951 (Source lines: 2952-2959)
# Address: 0x0dbc0b28 - 0x0dbc0b8c (Size: 100 bytes, Frame: 48)
.globl __glsplc_DepthRange
.ent __glsplc_DepthRange
__glsplc_DepthRange:
    # Line 2955
    li	$a1,172
    li	$a0,16
    # Line 2952
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$at,0x4
    addiu	$at,$at,-9360
    addu	$gp,$t9,$at
    # Line 2955
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sdc1	$f13,8($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    # Line 2957
    ldc1	$f0,0($sp)
    # Line 2955
    bnez	$v0,.L0dbc0b74
    ldc1	$f1,8($sp)
    ld	$gp,16($sp)
    # Line 2956
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc0b74:
    # Line 2959
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 2958
    sdc1	$f1,8($v0)
    # Line 2959
    jr	$ra
    # Line 2957
    sdc1	$f0,0($v0)
.end __glsplc_DepthRange

# Function: __glsplc_Frustum
# Declared: Line 2962 (Source lines: 2963-2974)
# Address: 0x0dbc0b8c - 0x0dbc0c20 (Size: 148 bytes, Frame: 240)
.globl __glsplc_Frustum
.ent __glsplc_Frustum
__glsplc_Frustum:
    # Line 2966
    li	$a1,173
    li	$a0,48
    # Line 2963
    addiu	$sp,$sp,-112
    sdc1	$f17,40($sp)
    sdc1	$f16,16($sp)
    sdc1	$f15,32($sp)
    sdc1	$f14,24($sp)
    sd	$gp,48($sp)
    lui	$at,0x4
    addiu	$at,$at,-9460
    addu	$gp,$t9,$at
    # Line 2966
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sdc1	$f13,8($sp)
    sd	$ra,56($sp)
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    # Line 2969
    ldc1	$f1,8($sp)
    # Line 2971
    ldc1	$f3,32($sp)
    ldc1	$f0,40($sp)
    # Line 2966
    bnez	$v0,.L0dbc0bf0
    # Line 2974
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    # Line 2967
    ld	$ra,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dbc0bf0:
    # Line 2969
    sdc1	$f1,8($v0)
    # Line 2971
    sdc1	$f3,24($v0)
    ld	$gp,48($sp)
    # Line 2970
    ldc1	$f2,24($sp)
    # Line 2972
    ldc1	$f4,16($sp)
    # Line 2973
    sdc1	$f0,40($v0)
    # Line 2968
    ldc1	$f0,0($sp)
    # Line 2974
    addiu	$sp,$sp,112
    # Line 2970
    sdc1	$f2,16($v0)
    # Line 2972
    sdc1	$f4,32($v0)
    # Line 2974
    jr	$ra
    # Line 2968
    sdc1	$f0,0($v0)
.end __glsplc_Frustum

# Function: __glsplc_LoadIdentity
# Declared: Line 2977 (Source lines: 2978-2982)
# Address: 0x0dbc0c20 - 0x0dbc0c58 (Size: 56 bytes, Frame: 16)
.globl __glsplc_LoadIdentity
.ent __glsplc_LoadIdentity
__glsplc_LoadIdentity:
    # Line 2978
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-9608
    addu	$gp,$t9,$at
    # Line 2981
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,174
    sd	$ra,0($sp)
    jal	__glSPDlalloc
    move	$a0,$zero
    # Line 2982
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_LoadIdentity

# Function: __glsplc_LoadMatrixf
# Declared: Line 2986 (Source lines: 2987-2993)
# Address: 0x0dbc0c58 - 0x0dbc0cbc (Size: 100 bytes, Frame: 48)
.globl __glsplc_LoadMatrixf
.ent __glsplc_LoadMatrixf
__glsplc_LoadMatrixf:
    # Line 2990
    li	$a1,175
    # Line 2987
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-9664
    addu	$gp,$t9,$at
    # Line 2990
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,64
    bnez	$v0,.L0dbc0c98
    # Line 2991
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc0c98:
    # Line 2992
    # lw $t9, -17848($gp) # &memcpy
    move	$a0,$v0
    ld	$a1,0($sp)
    jal	memcpy
    li	$a2,64
    # Line 2993
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_LoadMatrixf

# Function: __glsplc_LoadMatrixd
# Declared: Line 2996 (Source lines: 2997-3003)
# Address: 0x0dbc0cbc - 0x0dbc0d20 (Size: 100 bytes, Frame: 48)
.globl __glsplc_LoadMatrixd
.ent __glsplc_LoadMatrixd
__glsplc_LoadMatrixd:
    # Line 3000
    li	$a1,176
    # Line 2997
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-9764
    addu	$gp,$t9,$at
    # Line 3000
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc2
    li	$a0,128
    bnez	$v0,.L0dbc0cfc
    # Line 3001
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc0cfc:
    # Line 3002
    # lw $t9, -17848($gp) # &memcpy
    move	$a0,$v0
    ld	$a1,0($sp)
    jal	memcpy
    li	$a2,128
    # Line 3003
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_LoadMatrixd

# Function: __glsplc_MatrixMode
# Declared: Line 3006 (Source lines: 3007-3013)
# Address: 0x0dbc0d20 - 0x0dbc0d78 (Size: 88 bytes, Frame: 48)
.globl __glsplc_MatrixMode
.ent __glsplc_MatrixMode
__glsplc_MatrixMode:
    # Line 3010
    li	$a1,177
    # Line 3007
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-9864
    addu	$gp,$t9,$at
    # Line 3010
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbc0d68
    # Line 3013
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 3011
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc0d68:
    ld	$gp,8($sp)
    # Line 3013
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3012
    sw	$v1,0($v0)
.end __glsplc_MatrixMode

# Function: __glsplc_MultMatrixf
# Declared: Line 3016 (Source lines: 3017-3023)
# Address: 0x0dbc0d78 - 0x0dbc0ddc (Size: 100 bytes, Frame: 48)
.globl __glsplc_MultMatrixf
.ent __glsplc_MultMatrixf
__glsplc_MultMatrixf:
    # Line 3020
    li	$a1,178
    # Line 3017
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-9952
    addu	$gp,$t9,$at
    # Line 3020
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,64
    bnez	$v0,.L0dbc0db8
    # Line 3021
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc0db8:
    # Line 3022
    # lw $t9, -17848($gp) # &memcpy
    move	$a0,$v0
    ld	$a1,0($sp)
    jal	memcpy
    li	$a2,64
    # Line 3023
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_MultMatrixf

# Function: __glsplc_MultMatrixd
# Declared: Line 3026 (Source lines: 3027-3033)
# Address: 0x0dbc0ddc - 0x0dbc0e40 (Size: 100 bytes, Frame: 48)
.globl __glsplc_MultMatrixd
.ent __glsplc_MultMatrixd
__glsplc_MultMatrixd:
    # Line 3030
    li	$a1,179
    # Line 3027
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-10052
    addu	$gp,$t9,$at
    # Line 3030
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc2
    li	$a0,128
    bnez	$v0,.L0dbc0e1c
    # Line 3031
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc0e1c:
    # Line 3032
    # lw $t9, -17848($gp) # &memcpy
    move	$a0,$v0
    ld	$a1,0($sp)
    jal	memcpy
    li	$a2,128
    # Line 3033
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_MultMatrixd

# Function: __glsplc_Ortho
# Declared: Line 3036 (Source lines: 3037-3048)
# Address: 0x0dbc0e40 - 0x0dbc0ed4 (Size: 148 bytes, Frame: 240)
.globl __glsplc_Ortho
.ent __glsplc_Ortho
__glsplc_Ortho:
    # Line 3040
    li	$a1,180
    li	$a0,48
    # Line 3037
    addiu	$sp,$sp,-112
    sdc1	$f17,40($sp)
    sdc1	$f16,16($sp)
    sdc1	$f15,32($sp)
    sdc1	$f14,24($sp)
    sd	$gp,48($sp)
    lui	$at,0x4
    addiu	$at,$at,-10152
    addu	$gp,$t9,$at
    # Line 3040
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sdc1	$f13,8($sp)
    sd	$ra,56($sp)
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    # Line 3043
    ldc1	$f1,8($sp)
    # Line 3045
    ldc1	$f3,32($sp)
    ldc1	$f0,40($sp)
    # Line 3040
    bnez	$v0,.L0dbc0ea4
    # Line 3048
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    # Line 3041
    ld	$ra,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dbc0ea4:
    # Line 3043
    sdc1	$f1,8($v0)
    # Line 3045
    sdc1	$f3,24($v0)
    ld	$gp,48($sp)
    # Line 3044
    ldc1	$f2,24($sp)
    # Line 3046
    ldc1	$f4,16($sp)
    # Line 3047
    sdc1	$f0,40($v0)
    # Line 3042
    ldc1	$f0,0($sp)
    # Line 3048
    addiu	$sp,$sp,112
    # Line 3044
    sdc1	$f2,16($v0)
    # Line 3046
    sdc1	$f4,32($v0)
    # Line 3048
    jr	$ra
    # Line 3042
    sdc1	$f0,0($v0)
.end __glsplc_Ortho

# Function: __glsplc_PopMatrix
# Declared: Line 3051 (Source lines: 3052-3056)
# Address: 0x0dbc0ed4 - 0x0dbc0f0c (Size: 56 bytes, Frame: 16)
.globl __glsplc_PopMatrix
.ent __glsplc_PopMatrix
__glsplc_PopMatrix:
    # Line 3052
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-10300
    addu	$gp,$t9,$at
    # Line 3055
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,181
    sd	$ra,0($sp)
    jal	__glSPDlalloc
    move	$a0,$zero
    # Line 3056
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_PopMatrix

# Function: __glsplc_PushMatrix
# Declared: Line 3060 (Source lines: 3061-3065)
# Address: 0x0dbc0f0c - 0x0dbc0f44 (Size: 56 bytes, Frame: 16)
.globl __glsplc_PushMatrix
.ent __glsplc_PushMatrix
__glsplc_PushMatrix:
    # Line 3061
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-10356
    addu	$gp,$t9,$at
    # Line 3064
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,182
    sd	$ra,0($sp)
    jal	__glSPDlalloc
    move	$a0,$zero
    # Line 3065
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_PushMatrix

# Function: __glsplc_Rotated
# Declared: Line 3069 (Source lines: 3070-3079)
# Address: 0x0dbc0f44 - 0x0dbc0fc0 (Size: 124 bytes, Frame: 208)
.globl __glsplc_Rotated
.ent __glsplc_Rotated
__glsplc_Rotated:
    # Line 3073
    li	$a1,183
    li	$a0,32
    # Line 3070
    addiu	$sp,$sp,-80
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sd	$gp,32($sp)
    lui	$at,0x4
    addiu	$at,$at,-10412
    addu	$gp,$t9,$at
    # Line 3073
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    # Line 3077
    ldc1	$f2,16($sp)
    # Line 3075
    ldc1	$f0,0($sp)
    # Line 3073
    bnez	$v0,.L0dbc0f9c
    ldc1	$f3,24($sp)
    ld	$gp,32($sp)
    # Line 3074
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc0f9c:
    # Line 3079
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    # Line 3076
    ldc1	$f1,8($sp)
    # Line 3079
    addiu	$sp,$sp,80
    # Line 3078
    sdc1	$f3,24($v0)
    # Line 3077
    sdc1	$f2,16($v0)
    # Line 3075
    sdc1	$f0,0($v0)
    # Line 3079
    jr	$ra
    # Line 3076
    sdc1	$f1,8($v0)
.end __glsplc_Rotated

# Function: __glsplc_Rotatef
# Declared: Line 3082 (Source lines: 3083-3092)
# Address: 0x0dbc0fc0 - 0x0dbc103c (Size: 124 bytes, Frame: 208)
.globl __glsplc_Rotatef
.ent __glsplc_Rotatef
__glsplc_Rotatef:
    # Line 3086
    li	$a1,184
    li	$a0,16
    # Line 3083
    addiu	$sp,$sp,-80
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sd	$gp,32($sp)
    lui	$at,0x4
    addiu	$at,$at,-10536
    addu	$gp,$t9,$at
    # Line 3086
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    # Line 3090
    ldc1	$f2,16($sp)
    # Line 3088
    ldc1	$f0,0($sp)
    # Line 3086
    bnez	$v0,.L0dbc1018
    ldc1	$f3,24($sp)
    ld	$gp,32($sp)
    # Line 3087
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc1018:
    # Line 3092
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    # Line 3089
    ldc1	$f1,8($sp)
    # Line 3092
    addiu	$sp,$sp,80
    # Line 3091
    swc1	$f3,12($v0)
    # Line 3090
    swc1	$f2,8($v0)
    # Line 3088
    swc1	$f0,0($v0)
    # Line 3092
    jr	$ra
    # Line 3089
    swc1	$f1,4($v0)
.end __glsplc_Rotatef

# Function: __glsplc_Scaled
# Declared: Line 3095 (Source lines: 3096-3104)
# Address: 0x0dbc103c - 0x0dbc10ac (Size: 112 bytes, Frame: 208)
.globl __glsplc_Scaled
.ent __glsplc_Scaled
__glsplc_Scaled:
    # Line 3099
    li	$a1,185
    li	$a0,24
    # Line 3096
    addiu	$sp,$sp,-80
    sdc1	$f14,16($sp)
    sd	$gp,24($sp)
    lui	$at,0x4
    addiu	$at,$at,-10660
    addu	$gp,$t9,$at
    # Line 3099
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sdc1	$f13,8($sp)
    sd	$ra,32($sp)
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    # Line 3102
    ldc1	$f1,8($sp)
    # Line 3104
    ld	$ra,32($sp)
    # Line 3099
    bnez	$v0,.L0dbc1090
    ldc1	$f2,16($sp)
    ld	$gp,24($sp)
    # Line 3100
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc1090:
    ld	$gp,24($sp)
    # Line 3101
    ldc1	$f0,0($sp)
    # Line 3104
    addiu	$sp,$sp,80
    # Line 3103
    sdc1	$f2,16($v0)
    # Line 3102
    sdc1	$f1,8($v0)
    # Line 3104
    jr	$ra
    # Line 3101
    sdc1	$f0,0($v0)
.end __glsplc_Scaled

# Function: __glsplc_Scalef
# Declared: Line 3107 (Source lines: 3108-3116)
# Address: 0x0dbc10ac - 0x0dbc111c (Size: 112 bytes, Frame: 208)
.globl __glsplc_Scalef
.ent __glsplc_Scalef
__glsplc_Scalef:
    # Line 3111
    li	$a1,186
    li	$a0,12
    # Line 3108
    addiu	$sp,$sp,-80
    sdc1	$f14,16($sp)
    sd	$gp,24($sp)
    lui	$at,0x4
    addiu	$at,$at,-10772
    addu	$gp,$t9,$at
    # Line 3111
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sdc1	$f13,8($sp)
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    # Line 3114
    ldc1	$f1,8($sp)
    # Line 3116
    ld	$ra,32($sp)
    # Line 3111
    bnez	$v0,.L0dbc1100
    ldc1	$f2,16($sp)
    ld	$gp,24($sp)
    # Line 3112
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc1100:
    ld	$gp,24($sp)
    # Line 3113
    ldc1	$f0,0($sp)
    # Line 3116
    addiu	$sp,$sp,80
    # Line 3115
    swc1	$f2,8($v0)
    # Line 3114
    swc1	$f1,4($v0)
    # Line 3116
    jr	$ra
    # Line 3113
    swc1	$f0,0($v0)
.end __glsplc_Scalef

# Function: __glsplc_Translated
# Declared: Line 3119 (Source lines: 3120-3128)
# Address: 0x0dbc111c - 0x0dbc118c (Size: 112 bytes, Frame: 208)
.globl __glsplc_Translated
.ent __glsplc_Translated
__glsplc_Translated:
    # Line 3123
    li	$a1,187
    li	$a0,24
    # Line 3120
    addiu	$sp,$sp,-80
    sdc1	$f14,16($sp)
    sd	$gp,24($sp)
    lui	$at,0x4
    addiu	$at,$at,-10884
    addu	$gp,$t9,$at
    # Line 3123
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sdc1	$f13,8($sp)
    sd	$ra,32($sp)
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    # Line 3126
    ldc1	$f1,8($sp)
    # Line 3128
    ld	$ra,32($sp)
    # Line 3123
    bnez	$v0,.L0dbc1170
    ldc1	$f2,16($sp)
    ld	$gp,24($sp)
    # Line 3124
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc1170:
    ld	$gp,24($sp)
    # Line 3125
    ldc1	$f0,0($sp)
    # Line 3128
    addiu	$sp,$sp,80
    # Line 3127
    sdc1	$f2,16($v0)
    # Line 3126
    sdc1	$f1,8($v0)
    # Line 3128
    jr	$ra
    # Line 3125
    sdc1	$f0,0($v0)
.end __glsplc_Translated

# Function: __glsplc_Translatef
# Declared: Line 3131 (Source lines: 3132-3140)
# Address: 0x0dbc118c - 0x0dbc11fc (Size: 112 bytes, Frame: 208)
.globl __glsplc_Translatef
.ent __glsplc_Translatef
__glsplc_Translatef:
    # Line 3135
    li	$a1,188
    li	$a0,12
    # Line 3132
    addiu	$sp,$sp,-80
    sdc1	$f14,16($sp)
    sd	$gp,24($sp)
    lui	$at,0x4
    addiu	$at,$at,-10996
    addu	$gp,$t9,$at
    # Line 3135
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sdc1	$f13,8($sp)
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    # Line 3138
    ldc1	$f1,8($sp)
    # Line 3140
    ld	$ra,32($sp)
    # Line 3135
    bnez	$v0,.L0dbc11e0
    ldc1	$f2,16($sp)
    ld	$gp,24($sp)
    # Line 3136
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc11e0:
    ld	$gp,24($sp)
    # Line 3137
    ldc1	$f0,0($sp)
    # Line 3140
    addiu	$sp,$sp,80
    # Line 3139
    swc1	$f2,8($v0)
    # Line 3138
    swc1	$f1,4($v0)
    # Line 3140
    jr	$ra
    # Line 3137
    swc1	$f0,0($v0)
.end __glsplc_Translatef

# Function: __glsplc_Viewport
# Declared: Line 3143 (Source lines: 3144-3153)
# Address: 0x0dbc11fc - 0x0dbc1278 (Size: 124 bytes, Frame: 208)
.globl __glsplc_Viewport
.ent __glsplc_Viewport
__glsplc_Viewport:
    # Line 3144
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 3147
    li	$a1,189
    sd	$a0,0($sp)
    li	$a0,16
    sd	$gp,32($sp)
    # Line 3144
    lui	$at,0x4
    addiu	$at,$at,-11108
    addu	$gp,$t9,$at
    # Line 3147
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a3,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    ld	$ra,8($sp)
    # Line 3151
    ld	$a5,24($sp)
    # Line 3147
    bnez	$v0,.L0dbc1254
    # Line 3149
    ld	$v1,0($sp)
    ld	$gp,32($sp)
    # Line 3148
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc1254:
    # Line 3149
    sw	$v1,0($v0)
    ld	$gp,32($sp)
    # Line 3150
    ld	$a4,16($sp)
    # Line 3152
    sw	$ra,12($v0)
    # Line 3153
    ld	$ra,40($sp)
    addiu	$sp,$sp,80
    # Line 3151
    sw	$a5,8($v0)
    # Line 3153
    jr	$ra
    # Line 3150
    sw	$a4,4($v0)
.end __glsplc_Viewport

# Function: __glsplc_BlendColorEXT
# Declared: Line 3156 (Source lines: 3157-3166)
# Address: 0x0dbc1278 - 0x0dbc12f4 (Size: 124 bytes, Frame: 208)
.globl __glsplc_BlendColorEXT
.ent __glsplc_BlendColorEXT
__glsplc_BlendColorEXT:
    # Line 3160
    li	$a1,190
    li	$a0,16
    # Line 3157
    addiu	$sp,$sp,-80
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    sd	$gp,32($sp)
    lui	$at,0x4
    addiu	$at,$at,-11232
    addu	$gp,$t9,$at
    # Line 3160
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    # Line 3164
    ldc1	$f2,16($sp)
    # Line 3162
    ldc1	$f0,0($sp)
    # Line 3160
    bnez	$v0,.L0dbc12d0
    ldc1	$f3,24($sp)
    ld	$gp,32($sp)
    # Line 3161
    ld	$ra,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc12d0:
    # Line 3166
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    # Line 3163
    ldc1	$f1,8($sp)
    # Line 3166
    addiu	$sp,$sp,80
    # Line 3165
    swc1	$f3,12($v0)
    # Line 3164
    swc1	$f2,8($v0)
    # Line 3162
    swc1	$f0,0($v0)
    # Line 3166
    jr	$ra
    # Line 3163
    swc1	$f1,4($v0)
.end __glsplc_BlendColorEXT

# Function: __glsplc_BlendEquationEXT
# Declared: Line 3169 (Source lines: 3170-3176)
# Address: 0x0dbc12f4 - 0x0dbc134c (Size: 88 bytes, Frame: 48)
.globl __glsplc_BlendEquationEXT
.ent __glsplc_BlendEquationEXT
__glsplc_BlendEquationEXT:
    # Line 3173
    li	$a1,191
    # Line 3170
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-11356
    addu	$gp,$t9,$at
    # Line 3173
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbc133c
    # Line 3176
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 3174
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc133c:
    ld	$gp,8($sp)
    # Line 3176
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3175
    sw	$v1,0($v0)
.end __glsplc_BlendEquationEXT

# Function: __glsplc_PolygonOffsetEXT
# Declared: Line 3179 (Source lines: 3180-3187)
# Address: 0x0dbc134c - 0x0dbc13b0 (Size: 100 bytes, Frame: 48)
.globl __glsplc_PolygonOffsetEXT
.ent __glsplc_PolygonOffsetEXT
__glsplc_PolygonOffsetEXT:
    # Line 3183
    li	$a1,192
    li	$a0,8
    # Line 3180
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$at,0x4
    addiu	$at,$at,-11444
    addu	$gp,$t9,$at
    # Line 3183
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sdc1	$f13,8($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    # Line 3185
    ldc1	$f0,0($sp)
    # Line 3183
    bnez	$v0,.L0dbc1398
    ldc1	$f1,8($sp)
    ld	$gp,16($sp)
    # Line 3184
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc1398:
    # Line 3187
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 3186
    swc1	$f1,4($v0)
    # Line 3187
    jr	$ra
    # Line 3185
    swc1	$f0,0($v0)
.end __glsplc_PolygonOffsetEXT

# Function: __glsplc_ConvolutionParameterfEXT
# Declared: Line 3194 (Source lines: 3195-3203)
# Address: 0x0dbc13b0 - 0x0dbc1420 (Size: 112 bytes, Frame: 208)
.globl __glsplc_ConvolutionParameterfEXT
.ent __glsplc_ConvolutionParameterfEXT
__glsplc_ConvolutionParameterfEXT:
    # Line 3195
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 3198
    li	$a1,197
    sd	$a0,8($sp)
    sd	$gp,24($sp)
    # Line 3195
    lui	$at,0x4
    addiu	$at,$at,-11544
    addu	$gp,$t9,$at
    # Line 3198
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,12
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sdc1	$f14,0($sp)
    # Line 3201
    ld	$a2,16($sp)
    # Line 3203
    ld	$ra,32($sp)
    # Line 3198
    bnez	$v0,.L0dbc1404
    ldc1	$f0,0($sp)
    ld	$gp,24($sp)
    # Line 3199
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc1404:
    ld	$gp,24($sp)
    # Line 3200
    ld	$v1,8($sp)
    # Line 3203
    addiu	$sp,$sp,80
    # Line 3202
    swc1	$f0,8($v0)
    # Line 3201
    sw	$a2,4($v0)
    # Line 3203
    jr	$ra
    # Line 3200
    sw	$v1,0($v0)
.end __glsplc_ConvolutionParameterfEXT

# Function: __glsplc_ConvolutionParameterfvEXT
# Declared: Line 3206 (Source lines: 3207-3224)
# Address: 0x0dbc1420 - 0x0dbc14d8 (Size: 184 bytes, Frame: 208)
.globl __glsplc_ConvolutionParameterfvEXT
.ent __glsplc_ConvolutionParameterfvEXT
__glsplc_ConvolutionParameterfvEXT:
    # Line 3207
    move	$at,$a1
    addiu	$sp,$sp,-80
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$gp,32($sp)
    lui	$v0,0x4
    addiu	$v0,$v0,-11656
    addu	$gp,$t9,$v0
    # Line 3212
    # lw $t9, -27228($gp) # &__glConvolutionParameterfvEXT_size
    sd	$a0,16($sp)
    sd	$ra,40($sp)
    jal	__glConvolutionParameterfvEXT_size
    move	$a0,$a1
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbc14bc
    sd	$a5,24($sp)
    # Line 3218
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,198
    jal	__glSPDlalloc
    addiu	$a0,$a5,8
    bnez	$v0,.L0dbc1488
    # Line 3219
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc1488:
    ld	$a2,24($sp)
    # Line 3222
    ld	$a1,0($sp)
    addiu	$a0,$v0,8
    # Line 3221
    ld	$a4,8($sp)
    # Line 3222
    # lw $t9, -17848($gp) # &memcpy
    # Line 3220
    ld	$a3,16($sp)
    # Line 3221
    sw	$a4,4($v0)
    # Line 3222
    jal	memcpy
    # Line 3220
    sw	$a3,0($v0)
    # Line 3224
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc14bc:
    # Line 3214
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 3215
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_ConvolutionParameterfvEXT

# Function: __glsplc_ConvolutionParameteriEXT
# Declared: Line 3227 (Source lines: 3228-3236)
# Address: 0x0dbc14d8 - 0x0dbc1548 (Size: 112 bytes, Frame: 208)
.globl __glsplc_ConvolutionParameteriEXT
.ent __glsplc_ConvolutionParameteriEXT
__glsplc_ConvolutionParameteriEXT:
    # Line 3228
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    # Line 3231
    li	$a1,199
    sd	$a0,0($sp)
    sd	$gp,24($sp)
    # Line 3228
    lui	$at,0x4
    addiu	$at,$at,-11840
    addu	$gp,$t9,$at
    # Line 3231
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,12
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sd	$a2,16($sp)
    # Line 3234
    ld	$a3,8($sp)
    # Line 3236
    ld	$ra,32($sp)
    # Line 3231
    bnez	$v0,.L0dbc152c
    ld	$a4,16($sp)
    ld	$gp,24($sp)
    # Line 3232
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc152c:
    ld	$gp,24($sp)
    # Line 3233
    ld	$v1,0($sp)
    # Line 3236
    addiu	$sp,$sp,80
    # Line 3235
    sw	$a4,8($v0)
    # Line 3234
    sw	$a3,4($v0)
    # Line 3236
    jr	$ra
    # Line 3233
    sw	$v1,0($v0)
.end __glsplc_ConvolutionParameteriEXT

# Function: __glsplc_ConvolutionParameterivEXT
# Declared: Line 3239 (Source lines: 3240-3257)
# Address: 0x0dbc1548 - 0x0dbc1600 (Size: 184 bytes, Frame: 208)
.globl __glsplc_ConvolutionParameterivEXT
.ent __glsplc_ConvolutionParameterivEXT
__glsplc_ConvolutionParameterivEXT:
    # Line 3240
    move	$at,$a1
    addiu	$sp,$sp,-80
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$gp,32($sp)
    lui	$v0,0x4
    addiu	$v0,$v0,-11952
    addu	$gp,$t9,$v0
    # Line 3245
    # lw $t9, -27224($gp) # &__glConvolutionParameterivEXT_size
    sd	$a0,16($sp)
    sd	$ra,40($sp)
    jal	__glConvolutionParameterivEXT_size
    move	$a0,$a1
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbc15e4
    sd	$a5,24($sp)
    # Line 3251
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,200
    jal	__glSPDlalloc
    addiu	$a0,$a5,8
    bnez	$v0,.L0dbc15b0
    # Line 3252
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc15b0:
    ld	$a2,24($sp)
    # Line 3255
    ld	$a1,0($sp)
    addiu	$a0,$v0,8
    # Line 3254
    ld	$a4,8($sp)
    # Line 3255
    # lw $t9, -17848($gp) # &memcpy
    # Line 3253
    ld	$a3,16($sp)
    # Line 3254
    sw	$a4,4($v0)
    # Line 3255
    jal	memcpy
    # Line 3253
    sw	$a3,0($v0)
    # Line 3257
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc15e4:
    # Line 3247
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 3248
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_ConvolutionParameterivEXT

# Function: __glsplc_CopyConvolutionFilter1DEXT
# Declared: Line 3260 (Source lines: 3261-3271)
# Address: 0x0dbc1600 - 0x0dbc1688 (Size: 136 bytes, Frame: 240)
.globl __glsplc_CopyConvolutionFilter1DEXT
.ent __glsplc_CopyConvolutionFilter1DEXT
__glsplc_CopyConvolutionFilter1DEXT:
    # Line 3261
    addiu	$sp,$sp,-112
    sd	$a1,24($sp)
    # Line 3264
    li	$a1,201
    sd	$a0,0($sp)
    li	$a0,20
    sd	$a4,8($sp)
    sd	$gp,40($sp)
    # Line 3261
    lui	$at,0x4
    addiu	$at,$at,-12136
    addu	$gp,$t9,$at
    # Line 3264
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a3,16($sp)
    sd	$ra,48($sp)
    jal	__glSPDlalloc
    sd	$a2,32($sp)
    # Line 3267
    ld	$a5,24($sp)
    # Line 3268
    ld	$a6,32($sp)
    # Line 3264
    bnez	$v0,.L0dbc165c
    # Line 3266
    ld	$v1,0($sp)
    ld	$gp,40($sp)
    # Line 3265
    ld	$ra,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dbc165c:
    ld	$at,8($sp)
    # Line 3266
    sw	$v1,0($v0)
    # Line 3269
    ld	$ra,16($sp)
    # Line 3267
    sw	$a5,4($v0)
    # Line 3268
    sw	$a6,8($v0)
    # Line 3269
    sw	$ra,12($v0)
    # Line 3271
    ld	$ra,48($sp)
    # Line 3270
    sw	$at,16($v0)
    ld	$gp,40($sp)
    # Line 3271
    jr	$ra
    addiu	$sp,$sp,112
.end __glsplc_CopyConvolutionFilter1DEXT

# Function: __glsplc_CopyConvolutionFilter2DEXT
# Declared: Line 3274 (Source lines: 3275-3286)
# Address: 0x0dbc1688 - 0x0dbc171c (Size: 148 bytes, Frame: 240)
.globl __glsplc_CopyConvolutionFilter2DEXT
.ent __glsplc_CopyConvolutionFilter2DEXT
__glsplc_CopyConvolutionFilter2DEXT:
    # Line 3275
    addiu	$sp,$sp,-112
    sd	$a1,32($sp)
    # Line 3278
    li	$a1,202
    sd	$a0,0($sp)
    li	$a0,24
    sd	$a5,16($sp)
    sd	$a4,8($sp)
    sd	$gp,48($sp)
    # Line 3275
    lui	$at,0x4
    addiu	$at,$at,-12272
    addu	$gp,$t9,$at
    # Line 3278
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a3,24($sp)
    sd	$ra,56($sp)
    jal	__glSPDlalloc
    sd	$a2,40($sp)
    # Line 3282
    ld	$a7,40($sp)
    # Line 3283
    ld	$ra,24($sp)
    # Line 3278
    bnez	$v0,.L0dbc16e8
    # Line 3284
    ld	$at,8($sp)
    ld	$gp,48($sp)
    # Line 3279
    ld	$ra,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dbc16e8:
    ld	$v1,16($sp)
    # Line 3284
    sw	$at,16($v0)
    # Line 3282
    sw	$a7,8($v0)
    ld	$gp,48($sp)
    # Line 3281
    ld	$a6,32($sp)
    # Line 3283
    sw	$ra,12($v0)
    # Line 3286
    ld	$ra,56($sp)
    # Line 3285
    sw	$v1,20($v0)
    # Line 3280
    ld	$v1,0($sp)
    # Line 3286
    addiu	$sp,$sp,112
    # Line 3281
    sw	$a6,4($v0)
    # Line 3286
    jr	$ra
    # Line 3280
    sw	$v1,0($v0)
.end __glsplc_CopyConvolutionFilter2DEXT

# Function: __glsplc_HistogramEXT
# Declared: Line 3300 (Source lines: 3301-3315)
# Address: 0x0dbc171c - 0x0dbc17c4 (Size: 168 bytes, Frame: 208)
.globl __glsplc_HistogramEXT
.ent __glsplc_HistogramEXT
__glsplc_HistogramEXT:
    # Line 3301
    move	$v0,$a3
    li	$at,0x8025
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$gp,32($sp)
    lui	$v1,0x4
    addiu	$v1,$v1,-12420
    beq	$a0,$at,.L0dbc17a0
    addu	$gp,$t9,$v1
    sd	$v0,0($sp)
    sd	$a2,8($sp)
    sd	$a1,16($sp)
    # Line 3309
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,204
    sd	$a0,24($sp)
    jal	__glSPDlalloc
    li	$a0,16
    ld	$v1,0($sp)
    # Line 3312
    ld	$a5,16($sp)
    # Line 3309
    bnez	$v0,.L0dbc177c
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    # Line 3310
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc177c:
    # Line 3311
    ld	$a4,24($sp)
    ld	$gp,32($sp)
    # Line 3313
    ld	$at,8($sp)
    # Line 3315
    addiu	$sp,$sp,80
    # Line 3314
    sb	$v1,12($v0)
    # Line 3312
    sw	$a5,4($v0)
    # Line 3311
    sw	$a4,0($v0)
    # Line 3315
    jr	$ra
    # Line 3313
    sw	$at,8($v0)
.L0dbc17a0:
    # Line 3306
    lw	$t9,__glCurrentContext
    lw	$t9,5640($t9)
    lw	$t9,768($t9)
    jalr	$t9
    move	$a3,$v0
    # Line 3307
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_HistogramEXT

# Function: __glsplc_MinmaxEXT
# Declared: Line 3318 (Source lines: 3319-3327)
# Address: 0x0dbc17c4 - 0x0dbc1834 (Size: 112 bytes, Frame: 208)
.globl __glsplc_MinmaxEXT
.ent __glsplc_MinmaxEXT
__glsplc_MinmaxEXT:
    # Line 3319
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    # Line 3322
    li	$a1,205
    sd	$a0,0($sp)
    sd	$gp,24($sp)
    # Line 3319
    lui	$at,0x4
    addiu	$at,$at,-12588
    addu	$gp,$t9,$at
    # Line 3322
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,12
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sd	$a2,16($sp)
    # Line 3325
    ld	$a3,8($sp)
    # Line 3327
    ld	$ra,32($sp)
    # Line 3322
    bnez	$v0,.L0dbc1818
    ld	$a4,16($sp)
    ld	$gp,24($sp)
    # Line 3323
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc1818:
    ld	$gp,24($sp)
    # Line 3324
    ld	$v1,0($sp)
    # Line 3327
    addiu	$sp,$sp,80
    # Line 3326
    sb	$a4,8($v0)
    # Line 3325
    sw	$a3,4($v0)
    # Line 3327
    jr	$ra
    # Line 3324
    sw	$v1,0($v0)
.end __glsplc_MinmaxEXT

# Function: __glsplc_ResetHistogramEXT
# Declared: Line 3330 (Source lines: 3331-3337)
# Address: 0x0dbc1834 - 0x0dbc188c (Size: 88 bytes, Frame: 48)
.globl __glsplc_ResetHistogramEXT
.ent __glsplc_ResetHistogramEXT
__glsplc_ResetHistogramEXT:
    # Line 3334
    li	$a1,206
    # Line 3331
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-12700
    addu	$gp,$t9,$at
    # Line 3334
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbc187c
    # Line 3337
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 3335
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc187c:
    ld	$gp,8($sp)
    # Line 3337
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3336
    sw	$v1,0($v0)
.end __glsplc_ResetHistogramEXT

# Function: __glsplc_ResetMinmaxEXT
# Declared: Line 3340 (Source lines: 3341-3347)
# Address: 0x0dbc188c - 0x0dbc18e4 (Size: 88 bytes, Frame: 48)
.globl __glsplc_ResetMinmaxEXT
.ent __glsplc_ResetMinmaxEXT
__glsplc_ResetMinmaxEXT:
    # Line 3344
    li	$a1,207
    # Line 3341
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-12788
    addu	$gp,$t9,$at
    # Line 3344
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbc18d4
    # Line 3347
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 3345
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc18d4:
    ld	$gp,8($sp)
    # Line 3347
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3346
    sw	$v1,0($v0)
.end __glsplc_ResetMinmaxEXT

# Function: __glsplc_BindTextureEXT
# Declared: Line 3362 (Source lines: 3363-3370)
# Address: 0x0dbc18e4 - 0x0dbc1948 (Size: 100 bytes, Frame: 48)
.globl __glsplc_BindTextureEXT
.ent __glsplc_BindTextureEXT
__glsplc_BindTextureEXT:
    # Line 3363
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    # Line 3366
    li	$a1,212
    sd	$gp,16($sp)
    # Line 3363
    lui	$at,0x4
    addiu	$at,$at,-12876
    addu	$gp,$t9,$at
    # Line 3366
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    li	$a0,8
    # Line 3368
    ld	$v1,0($sp)
    # Line 3366
    bnez	$v0,.L0dbc1930
    ld	$a2,8($sp)
    ld	$gp,16($sp)
    # Line 3367
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc1930:
    # Line 3370
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 3369
    sw	$a2,4($v0)
    # Line 3370
    jr	$ra
    # Line 3368
    sw	$v1,0($v0)
.end __glsplc_BindTextureEXT

# Function: __glsplc_PrioritizeTexturesEXT
# Declared: Line 3376 (Source lines: 3377-3393)
# Address: 0x0dbc1948 - 0x0dbc19f0 (Size: 168 bytes, Frame: 224)
.globl __glsplc_PrioritizeTexturesEXT
.ent __glsplc_PrioritizeTexturesEXT
__glsplc_PrioritizeTexturesEXT:
    # Line 3377
    addiu	$sp,$sp,-96
    sd	$a1,16($sp)
    # Line 3386
    li	$a1,213
    sd	$ra,48($sp)
    sd	$a0,0($sp)
    sll	$a0,$a0,0x2
    sd	$gp,40($sp)
    sd	$a2,8($sp)
    # Line 3377
    lui	$a2,0x4
    addiu	$a2,$a2,-12976
    addu	$gp,$t9,$a2
    # Line 3386
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,32($sp)
    addu	$a0,$a0,$a0
    jal	__glSPDlalloc
    addiu	$a0,$a0,4
    bnez	$v0,.L0dbc19a0
    sd	$v0,24($sp)
    # Line 3387
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbc19a0:
    ld	$a2,32($sp)
    # Line 3389
    ld	$a1,16($sp)
    ld	$a4,24($sp)
    # lw $t9, -17848($gp) # &memcpy
    # Line 3388
    ld	$a3,0($sp)
    # Line 3389
    addiu	$a0,$a4,4
    jal	memcpy
    # Line 3388
    sw	$a3,0($a4)
    # Line 3391
    ld	$a1,8($sp)
    ld	$a0,32($sp)
    ld	$a3,24($sp)
    # lw $t9, -17848($gp) # &memcpy
    move	$a2,$a0
    addu	$a0,$a0,$a3
    jal	memcpy
    addiu	$a0,$a0,4
    # Line 3393
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glsplc_PrioritizeTexturesEXT

# Function: __glsplc_CopyTexImage1DEXT
# Declared: Line 3396 (Source lines: 3397-3409)
# Address: 0x0dbc19f0 - 0x0dbc1a90 (Size: 160 bytes, Frame: 144)
.globl __glsplc_CopyTexImage1DEXT
.ent __glsplc_CopyTexImage1DEXT
__glsplc_CopyTexImage1DEXT:
    # Line 3397
    addiu	$sp,$sp,-144
    sd	$a1,40($sp)
    # Line 3400
    li	$a1,214
    sd	$a0,0($sp)
    li	$a0,28
    sd	$a6,24($sp)
    sd	$a5,16($sp)
    sd	$a4,8($sp)
    sd	$gp,56($sp)
    # Line 3397
    lui	$at,0x4
    addiu	$at,$at,-13144
    addu	$gp,$t9,$at
    # Line 3400
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a3,32($sp)
    sd	$ra,64($sp)
    jal	__glSPDlalloc
    sd	$a2,48($sp)
    ld	$gp,56($sp)
    # Line 3407
    ld	$v1,16($sp)
    # Line 3400
    bnez	$v0,.L0dbc1a54
    # Line 3404
    ld	$t0,48($sp)
    # Line 3401
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dbc1a54:
    # Line 3405
    ld	$ra,32($sp)
    # Line 3404
    sw	$t0,8($v0)
    # Line 3407
    sw	$v1,20($v0)
    # Line 3402
    ld	$v1,0($sp)
    # Line 3406
    ld	$at,8($sp)
    # Line 3405
    sw	$ra,12($v0)
    ld	$a7,24($sp)
    # Line 3409
    ld	$ra,64($sp)
    # Line 3406
    sw	$at,16($v0)
    # Line 3408
    sw	$a7,24($v0)
    # Line 3403
    ld	$a7,40($sp)
    # Line 3409
    addiu	$sp,$sp,144
    # Line 3402
    sw	$v1,0($v0)
    # Line 3409
    jr	$ra
    # Line 3403
    sw	$a7,4($v0)
.end __glsplc_CopyTexImage1DEXT

# Function: __glsplc_CopyTexImage2DEXT
# Declared: Line 3412 (Source lines: 3413-3426)
# Address: 0x0dbc1a90 - 0x0dbc1b3c (Size: 172 bytes, Frame: 144)
.globl __glsplc_CopyTexImage2DEXT
.ent __glsplc_CopyTexImage2DEXT
__glsplc_CopyTexImage2DEXT:
    # Line 3413
    addiu	$sp,$sp,-144
    sd	$a1,48($sp)
    # Line 3416
    li	$a1,215
    sd	$a0,0($sp)
    li	$a0,32
    sd	$a7,8($sp)
    sd	$a6,32($sp)
    sd	$a5,24($sp)
    sd	$a4,16($sp)
    sd	$gp,64($sp)
    # Line 3413
    lui	$at,0x4
    addiu	$at,$at,-13304
    addu	$gp,$t9,$at
    # Line 3416
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a3,40($sp)
    sd	$ra,72($sp)
    jal	__glSPDlalloc
    sd	$a2,56($sp)
    ld	$t1,8($sp)
    # Line 3423
    ld	$v1,24($sp)
    # Line 3416
    bnez	$v0,.L0dbc1af8
    # Line 3421
    ld	$ra,40($sp)
    ld	$gp,64($sp)
    # Line 3417
    ld	$ra,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dbc1af8:
    ld	$gp,64($sp)
    # Line 3421
    sw	$ra,12($v0)
    # Line 3426
    ld	$ra,72($sp)
    # Line 3425
    sw	$t1,28($v0)
    # Line 3420
    ld	$t1,56($sp)
    # Line 3422
    ld	$at,16($sp)
    # Line 3423
    sw	$v1,20($v0)
    # Line 3424
    ld	$t0,32($sp)
    # Line 3418
    ld	$v1,0($sp)
    # Line 3422
    sw	$at,16($v0)
    # Line 3424
    sw	$t0,24($v0)
    # Line 3419
    ld	$t0,48($sp)
    # Line 3426
    addiu	$sp,$sp,144
    # Line 3420
    sw	$t1,8($v0)
    # Line 3418
    sw	$v1,0($v0)
    # Line 3426
    jr	$ra
    # Line 3419
    sw	$t0,4($v0)
.end __glsplc_CopyTexImage2DEXT

# Function: __glsplc_CopyTexSubImage1DEXT
# Declared: Line 3429 (Source lines: 3430-3441)
# Address: 0x0dbc1b3c - 0x0dbc1bd0 (Size: 148 bytes, Frame: 240)
.globl __glsplc_CopyTexSubImage1DEXT
.ent __glsplc_CopyTexSubImage1DEXT
__glsplc_CopyTexSubImage1DEXT:
    # Line 3430
    addiu	$sp,$sp,-112
    sd	$a1,32($sp)
    # Line 3433
    li	$a1,216
    sd	$a0,0($sp)
    li	$a0,24
    sd	$a5,16($sp)
    sd	$a4,8($sp)
    sd	$gp,48($sp)
    # Line 3430
    lui	$at,0x4
    addiu	$at,$at,-13476
    addu	$gp,$t9,$at
    # Line 3433
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a3,24($sp)
    sd	$ra,56($sp)
    jal	__glSPDlalloc
    sd	$a2,40($sp)
    # Line 3437
    ld	$a7,40($sp)
    # Line 3438
    ld	$ra,24($sp)
    # Line 3433
    bnez	$v0,.L0dbc1b9c
    # Line 3439
    ld	$at,8($sp)
    ld	$gp,48($sp)
    # Line 3434
    ld	$ra,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dbc1b9c:
    ld	$v1,16($sp)
    # Line 3439
    sw	$at,16($v0)
    # Line 3437
    sw	$a7,8($v0)
    ld	$gp,48($sp)
    # Line 3436
    ld	$a6,32($sp)
    # Line 3438
    sw	$ra,12($v0)
    # Line 3441
    ld	$ra,56($sp)
    # Line 3440
    sw	$v1,20($v0)
    # Line 3435
    ld	$v1,0($sp)
    # Line 3441
    addiu	$sp,$sp,112
    # Line 3436
    sw	$a6,4($v0)
    # Line 3441
    jr	$ra
    # Line 3435
    sw	$v1,0($v0)
.end __glsplc_CopyTexSubImage1DEXT

# Function: __glsplc_CopyTexSubImage2DEXT
# Declared: Line 3444 (Source lines: 3445-3458)
# Address: 0x0dbc1bd0 - 0x0dbc1c7c (Size: 172 bytes, Frame: 144)
.globl __glsplc_CopyTexSubImage2DEXT
.ent __glsplc_CopyTexSubImage2DEXT
__glsplc_CopyTexSubImage2DEXT:
    # Line 3445
    addiu	$sp,$sp,-144
    sd	$a1,48($sp)
    # Line 3448
    li	$a1,217
    sd	$a0,0($sp)
    li	$a0,32
    sd	$a7,8($sp)
    sd	$a6,32($sp)
    sd	$a5,24($sp)
    sd	$a4,16($sp)
    sd	$gp,64($sp)
    # Line 3445
    lui	$at,0x4
    addiu	$at,$at,-13624
    addu	$gp,$t9,$at
    # Line 3448
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a3,40($sp)
    sd	$ra,72($sp)
    jal	__glSPDlalloc
    sd	$a2,56($sp)
    ld	$t1,8($sp)
    # Line 3455
    ld	$v1,24($sp)
    # Line 3448
    bnez	$v0,.L0dbc1c38
    # Line 3453
    ld	$ra,40($sp)
    ld	$gp,64($sp)
    # Line 3449
    ld	$ra,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dbc1c38:
    ld	$gp,64($sp)
    # Line 3453
    sw	$ra,12($v0)
    # Line 3458
    ld	$ra,72($sp)
    # Line 3457
    sw	$t1,28($v0)
    # Line 3452
    ld	$t1,56($sp)
    # Line 3454
    ld	$at,16($sp)
    # Line 3455
    sw	$v1,20($v0)
    # Line 3456
    ld	$t0,32($sp)
    # Line 3450
    ld	$v1,0($sp)
    # Line 3454
    sw	$at,16($v0)
    # Line 3456
    sw	$t0,24($v0)
    # Line 3451
    ld	$t0,48($sp)
    # Line 3458
    addiu	$sp,$sp,144
    # Line 3452
    sw	$t1,8($v0)
    # Line 3450
    sw	$v1,0($v0)
    # Line 3458
    jr	$ra
    # Line 3451
    sw	$t0,4($v0)
.end __glsplc_CopyTexSubImage2DEXT

# Function: __glsplc_CopyTexSubImage3DEXT
# Declared: Line 3461 (Source lines: 3462-3476)
# Address: 0x0dbc1c7c - 0x0dbc1d30 (Size: 180 bytes, Frame: 144)
.globl __glsplc_CopyTexSubImage3DEXT
.ent __glsplc_CopyTexSubImage3DEXT
__glsplc_CopyTexSubImage3DEXT:
    # Line 3462
    addiu	$sp,$sp,-144
    sd	$a1,48($sp)
    # Line 3465
    li	$a1,218
    sd	$a0,0($sp)
    li	$a0,36
    sd	$a7,8($sp)
    sd	$a6,32($sp)
    sd	$a5,24($sp)
    sd	$a4,16($sp)
    sd	$gp,64($sp)
    # Line 3462
    lui	$at,0x4
    addiu	$at,$at,-13796
    addu	$gp,$t9,$at
    # Line 3465
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a3,40($sp)
    sd	$ra,72($sp)
    jal	__glSPDlalloc
    sd	$a2,56($sp)
    # Line 3472
    ld	$t0,24($sp)
    # Line 3473
    ld	$t1,32($sp)
    # Line 3465
    bnez	$v0,.L0dbc1ce4
    # Line 3471
    ld	$v1,16($sp)
    ld	$gp,64($sp)
    # Line 3466
    ld	$ra,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0dbc1ce4:
    ld	$gp,64($sp)
    # Line 3473
    sw	$t1,24($v0)
    # Line 3468
    ld	$t1,48($sp)
    # Line 3472
    sw	$t0,20($v0)
    # Line 3467
    ld	$t0,0($sp)
    # Line 3471
    sw	$v1,16($v0)
    ld	$ra,8($sp)
    # Line 3475
    lw	$v1,148($sp)
    # Line 3470
    ld	$at,40($sp)
    # Line 3474
    sw	$ra,28($v0)
    # Line 3469
    ld	$ra,56($sp)
    # Line 3470
    sw	$at,12($v0)
    # Line 3475
    sw	$v1,32($v0)
    # Line 3469
    sw	$ra,8($v0)
    # Line 3476
    ld	$ra,72($sp)
    # Line 3467
    sw	$t0,0($v0)
    # Line 3468
    sw	$t1,4($v0)
    # Line 3476
    jr	$ra
    addiu	$sp,$sp,144
.end __glsplc_CopyTexSubImage3DEXT

# Function: __glsplc_PolygonOffset
# Declared: Line 3489 (Source lines: 3490-3497)
# Address: 0x0dbc1d30 - 0x0dbc1d94 (Size: 100 bytes, Frame: 48)
.globl __glsplc_PolygonOffset
.ent __glsplc_PolygonOffset
__glsplc_PolygonOffset:
    # Line 3493
    li	$a1,220
    li	$a0,8
    # Line 3490
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$at,0x4
    addiu	$at,$at,-13976
    addu	$gp,$t9,$at
    # Line 3493
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sdc1	$f13,8($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    # Line 3495
    ldc1	$f0,0($sp)
    # Line 3493
    bnez	$v0,.L0dbc1d7c
    ldc1	$f1,8($sp)
    ld	$gp,16($sp)
    # Line 3494
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc1d7c:
    # Line 3497
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 3496
    swc1	$f1,4($v0)
    # Line 3497
    jr	$ra
    # Line 3495
    swc1	$f0,0($v0)
.end __glsplc_PolygonOffset

# Function: __glsplc_Indexub
# Declared: Line 3500 (Source lines: 3501-3507)
# Address: 0x0dbc1d94 - 0x0dbc1dec (Size: 88 bytes, Frame: 48)
.globl __glsplc_Indexub
.ent __glsplc_Indexub
__glsplc_Indexub:
    # Line 3504
    li	$a1,221
    # Line 3501
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-14076
    addu	$gp,$t9,$at
    # Line 3504
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbc1ddc
    # Line 3507
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 3505
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc1ddc:
    ld	$gp,8($sp)
    # Line 3507
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3506
    sb	$v1,0($v0)
.end __glsplc_Indexub

# Function: __glsplc_Indexubv
# Declared: Line 3510 (Source lines: 3511-3517)
# Address: 0x0dbc1dec - 0x0dbc1e48 (Size: 92 bytes, Frame: 48)
.globl __glsplc_Indexubv
.ent __glsplc_Indexubv
__glsplc_Indexubv:
    # Line 3514
    li	$a1,221
    # Line 3511
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-14164
    addu	$gp,$t9,$at
    # Line 3514
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    bnez	$v0,.L0dbc1e30
    # Line 3517
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 3515
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc1e30:
    ld	$v1,0($sp)
    ld	$gp,8($sp)
    # Line 3516
    lbu	$v1,0($v1)
    # Line 3517
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3516
    sb	$v1,0($v0)
.end __glsplc_Indexubv

# Function: __glsplc_SampleMaskSGIS
# Declared: Line 3522 (Source lines: 3523-3530)
# Address: 0x0dbc1e48 - 0x0dbc1eac (Size: 100 bytes, Frame: 48)
.globl __glsplc_SampleMaskSGIS
.ent __glsplc_SampleMaskSGIS
__glsplc_SampleMaskSGIS:
    # Line 3526
    li	$a0,8
    # Line 3523
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    sd	$gp,16($sp)
    lui	$at,0x4
    addiu	$at,$at,-14256
    addu	$gp,$t9,$at
    # Line 3526
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,222
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    # Line 3528
    ldc1	$f0,0($sp)
    # Line 3526
    bnez	$v0,.L0dbc1e94
    ld	$v1,8($sp)
    ld	$gp,16($sp)
    # Line 3527
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc1e94:
    # Line 3530
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 3529
    sb	$v1,4($v0)
    # Line 3530
    jr	$ra
    # Line 3528
    swc1	$f0,0($v0)
.end __glsplc_SampleMaskSGIS

# Function: __glsplc_SamplePatternSGIS
# Declared: Line 3533 (Source lines: 3534-3540)
# Address: 0x0dbc1eac - 0x0dbc1f04 (Size: 88 bytes, Frame: 48)
.globl __glsplc_SamplePatternSGIS
.ent __glsplc_SamplePatternSGIS
__glsplc_SamplePatternSGIS:
    # Line 3537
    li	$a1,223
    # Line 3534
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-14356
    addu	$gp,$t9,$at
    # Line 3537
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbc1ef4
    # Line 3540
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 3538
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc1ef4:
    ld	$gp,8($sp)
    # Line 3540
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3539
    sw	$v1,0($v0)
.end __glsplc_SamplePatternSGIS

# Function: __glsplc_TagSampleBufferSGIX
# Declared: Line 3543 (Source lines: 3544-3548)
# Address: 0x0dbc1f04 - 0x0dbc1f3c (Size: 56 bytes, Frame: 16)
.globl __glsplc_TagSampleBufferSGIX
.ent __glsplc_TagSampleBufferSGIX
__glsplc_TagSampleBufferSGIX:
    # Line 3544
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-14444
    addu	$gp,$t9,$at
    # Line 3547
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,224
    sd	$ra,0($sp)
    jal	__glSPDlalloc
    move	$a0,$zero
    # Line 3548
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_TagSampleBufferSGIX

# Function: __glsplc_DetailTexFuncSGIS
# Declared: Line 3552 (Source lines: 3553-3570)
# Address: 0x0dbc1f3c - 0x0dbc1fec (Size: 176 bytes, Frame: 208)
.globl __glsplc_DetailTexFuncSGIS
.ent __glsplc_DetailTexFuncSGIS
__glsplc_DetailTexFuncSGIS:
    # Line 3553
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$a0,8($sp)
    sd	$s0,32($sp)
    move	$s0,$a1
    sd	$a2,16($sp)
    sd	$gp,24($sp)
    lui	$at,0x4
    addiu	$at,$at,-14500
    bltz	$a1,.L0dbc1fcc
    addu	$gp,$t9,$at
    # Line 3564
    li	$a1,225
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sll	$a0,$s0,0x3
    sd	$a0,0($sp)
    jal	__glSPDlalloc
    addiu	$a0,$a0,8
    bnez	$v0,.L0dbc1f98
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    # Line 3565
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc1f98:
    ld	$a2,0($sp)
    # Line 3568
    ld	$a1,16($sp)
    addiu	$a0,$v0,8
    # lw $t9, -17848($gp) # &memcpy
    # Line 3566
    ld	$a3,8($sp)
    # Line 3567
    sw	$s0,4($v0)
    # Line 3568
    jal	memcpy
    # Line 3566
    sw	$a3,0($v0)
    # Line 3570
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc1fcc:
    # Line 3560
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
    jal	__glsplc_InvalidValue
    nop
    # Line 3561
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_DetailTexFuncSGIS

# Function: __glsplc_SharpenTexFuncSGIS
# Declared: Line 3574 (Source lines: 3575-3592)
# Address: 0x0dbc1fec - 0x0dbc209c (Size: 176 bytes, Frame: 208)
.globl __glsplc_SharpenTexFuncSGIS
.ent __glsplc_SharpenTexFuncSGIS
__glsplc_SharpenTexFuncSGIS:
    # Line 3575
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$a0,8($sp)
    sd	$s0,32($sp)
    move	$s0,$a1
    sd	$a2,16($sp)
    sd	$gp,24($sp)
    lui	$at,0x4
    addiu	$at,$at,-14676
    bltz	$a1,.L0dbc207c
    addu	$gp,$t9,$at
    # Line 3586
    li	$a1,226
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sll	$a0,$s0,0x3
    sd	$a0,0($sp)
    jal	__glSPDlalloc
    addiu	$a0,$a0,8
    bnez	$v0,.L0dbc2048
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    # Line 3587
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc2048:
    ld	$a2,0($sp)
    # Line 3590
    ld	$a1,16($sp)
    addiu	$a0,$v0,8
    # lw $t9, -17848($gp) # &memcpy
    # Line 3588
    ld	$a3,8($sp)
    # Line 3589
    sw	$s0,4($v0)
    # Line 3590
    jal	memcpy
    # Line 3588
    sw	$a3,0($v0)
    # Line 3592
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc207c:
    # Line 3582
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
    jal	__glsplc_InvalidValue
    nop
    # Line 3583
    ld	$ra,40($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_SharpenTexFuncSGIS

# Function: __glsplc_ColorTableParameterfvSGI
# Declared: Line 3597 (Source lines: 3598-3615)
# Address: 0x0dbc209c - 0x0dbc2154 (Size: 184 bytes, Frame: 208)
.globl __glsplc_ColorTableParameterfvSGI
.ent __glsplc_ColorTableParameterfvSGI
__glsplc_ColorTableParameterfvSGI:
    # Line 3598
    move	$at,$a1
    addiu	$sp,$sp,-80
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$gp,32($sp)
    lui	$v0,0x4
    addiu	$v0,$v0,-14852
    addu	$gp,$t9,$v0
    # Line 3603
    # lw $t9, -25532($gp) # &__glColorTableParameterfvSGI_size
    sd	$a0,16($sp)
    sd	$ra,40($sp)
    jal	__glColorTableParameterfvSGI_size
    move	$a0,$a1
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbc2138
    sd	$a5,24($sp)
    # Line 3609
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,228
    jal	__glSPDlalloc
    addiu	$a0,$a5,8
    bnez	$v0,.L0dbc2104
    # Line 3610
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc2104:
    ld	$a2,24($sp)
    # Line 3613
    ld	$a1,0($sp)
    addiu	$a0,$v0,8
    # Line 3612
    ld	$a4,8($sp)
    # Line 3613
    # lw $t9, -17848($gp) # &memcpy
    # Line 3611
    ld	$a3,16($sp)
    # Line 3612
    sw	$a4,4($v0)
    # Line 3613
    jal	memcpy
    # Line 3611
    sw	$a3,0($v0)
    # Line 3615
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc2138:
    # Line 3605
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 3606
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_ColorTableParameterfvSGI

# Function: __glsplc_ColorTableParameterivSGI
# Declared: Line 3618 (Source lines: 3619-3636)
# Address: 0x0dbc2154 - 0x0dbc220c (Size: 184 bytes, Frame: 208)
.globl __glsplc_ColorTableParameterivSGI
.ent __glsplc_ColorTableParameterivSGI
__glsplc_ColorTableParameterivSGI:
    # Line 3619
    move	$at,$a1
    addiu	$sp,$sp,-80
    sd	$a2,0($sp)
    sd	$a1,8($sp)
    sd	$gp,32($sp)
    lui	$v0,0x4
    addiu	$v0,$v0,-15036
    addu	$gp,$t9,$v0
    # Line 3624
    # lw $t9, -25528($gp) # &__glColorTableParameterivSGI_size
    sd	$a0,16($sp)
    sd	$ra,40($sp)
    jal	__glColorTableParameterivSGI_size
    move	$a0,$a1
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbc21f0
    sd	$a5,24($sp)
    # Line 3630
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,229
    jal	__glSPDlalloc
    addiu	$a0,$a5,8
    bnez	$v0,.L0dbc21bc
    # Line 3631
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc21bc:
    ld	$a2,24($sp)
    # Line 3634
    ld	$a1,0($sp)
    addiu	$a0,$v0,8
    # Line 3633
    ld	$a4,8($sp)
    # Line 3634
    # lw $t9, -17848($gp) # &memcpy
    # Line 3632
    ld	$a3,16($sp)
    # Line 3633
    sw	$a4,4($v0)
    # Line 3634
    jal	memcpy
    # Line 3632
    sw	$a3,0($v0)
    # Line 3636
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc21f0:
    # Line 3626
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 3627
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_ColorTableParameterivSGI

# Function: __glsplc_CopyColorTableSGI
# Declared: Line 3639 (Source lines: 3640-3650)
# Address: 0x0dbc220c - 0x0dbc2294 (Size: 136 bytes, Frame: 240)
.globl __glsplc_CopyColorTableSGI
.ent __glsplc_CopyColorTableSGI
__glsplc_CopyColorTableSGI:
    # Line 3640
    addiu	$sp,$sp,-112
    sd	$a1,24($sp)
    # Line 3643
    li	$a1,230
    sd	$a0,0($sp)
    li	$a0,20
    sd	$a4,8($sp)
    sd	$gp,40($sp)
    # Line 3640
    lui	$at,0x4
    addiu	$at,$at,-15220
    addu	$gp,$t9,$at
    # Line 3643
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a3,16($sp)
    sd	$ra,48($sp)
    jal	__glSPDlalloc
    sd	$a2,32($sp)
    # Line 3646
    ld	$a5,24($sp)
    # Line 3647
    ld	$a6,32($sp)
    # Line 3643
    bnez	$v0,.L0dbc2268
    # Line 3645
    ld	$v1,0($sp)
    ld	$gp,40($sp)
    # Line 3644
    ld	$ra,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dbc2268:
    ld	$at,8($sp)
    # Line 3645
    sw	$v1,0($v0)
    # Line 3648
    ld	$ra,16($sp)
    # Line 3646
    sw	$a5,4($v0)
    # Line 3647
    sw	$a6,8($v0)
    # Line 3648
    sw	$ra,12($v0)
    # Line 3650
    ld	$ra,48($sp)
    # Line 3649
    sw	$at,16($v0)
    ld	$gp,40($sp)
    # Line 3650
    jr	$ra
    addiu	$sp,$sp,112
.end __glsplc_CopyColorTableSGI

# Function: __glsplc_PixelTexGenSGIX
# Declared: Line 3658 (Source lines: 3659-3665)
# Address: 0x0dbc2294 - 0x0dbc22ec (Size: 88 bytes, Frame: 48)
.globl __glsplc_PixelTexGenSGIX
.ent __glsplc_PixelTexGenSGIX
__glsplc_PixelTexGenSGIX:
    # Line 3662
    li	$a1,233
    # Line 3659
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-15356
    addu	$gp,$t9,$at
    # Line 3662
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbc22dc
    # Line 3665
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 3663
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc22dc:
    ld	$gp,8($sp)
    # Line 3665
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3664
    sw	$v1,0($v0)
.end __glsplc_PixelTexGenSGIX

# Function: __glsplc_SpriteParameterfSGIX
# Declared: Line 3668 (Source lines: 3669-3676)
# Address: 0x0dbc22ec - 0x0dbc2350 (Size: 100 bytes, Frame: 48)
.globl __glsplc_SpriteParameterfSGIX
.ent __glsplc_SpriteParameterfSGIX
__glsplc_SpriteParameterfSGIX:
    # Line 3672
    li	$a1,234
    # Line 3669
    addiu	$sp,$sp,-48
    sd	$a0,8($sp)
    sd	$gp,16($sp)
    lui	$at,0x4
    addiu	$at,$at,-15444
    addu	$gp,$t9,$at
    # Line 3672
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,8
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    sdc1	$f13,0($sp)
    # Line 3674
    ld	$v1,8($sp)
    # Line 3672
    bnez	$v0,.L0dbc2338
    ldc1	$f0,0($sp)
    ld	$gp,16($sp)
    # Line 3673
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc2338:
    # Line 3676
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 3675
    swc1	$f0,4($v0)
    # Line 3676
    jr	$ra
    # Line 3674
    sw	$v1,0($v0)
.end __glsplc_SpriteParameterfSGIX

# Function: __glsplc_SpriteParameterfvSGIX
# Declared: Line 3679 (Source lines: 3680-3696)
# Address: 0x0dbc2350 - 0x0dbc23f4 (Size: 164 bytes, Frame: 192)
.globl __glsplc_SpriteParameterfvSGIX
.ent __glsplc_SpriteParameterfvSGIX
__glsplc_SpriteParameterfvSGIX:
    # Line 3680
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    lui	$at,0x4
    addiu	$at,$at,-15544
    addu	$gp,$t9,$at
    # Line 3685
    # lw $t9, -25524($gp) # &__glSpriteParameterfvSGIX_size
    sd	$a1,0($sp)
    sd	$ra,32($sp)
    jal	__glSpriteParameterfvSGIX_size
    sd	$a0,8($sp)
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbc23d8
    sd	$a5,16($sp)
    # Line 3691
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,235
    jal	__glSPDlalloc
    addiu	$a0,$a5,4
    bnez	$v0,.L0dbc23ac
    # Line 3692
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbc23ac:
    ld	$a2,16($sp)
    # Line 3694
    ld	$a1,0($sp)
    # lw $t9, -17848($gp) # &memcpy
    # Line 3693
    ld	$a3,8($sp)
    # Line 3694
    addiu	$a0,$v0,4
    jal	memcpy
    # Line 3693
    sw	$a3,0($v0)
    # Line 3696
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbc23d8:
    # Line 3687
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 3688
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_SpriteParameterfvSGIX

# Function: __glsplc_SpriteParameteriSGIX
# Declared: Line 3699 (Source lines: 3700-3707)
# Address: 0x0dbc23f4 - 0x0dbc2458 (Size: 100 bytes, Frame: 48)
.globl __glsplc_SpriteParameteriSGIX
.ent __glsplc_SpriteParameteriSGIX
__glsplc_SpriteParameteriSGIX:
    # Line 3700
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    # Line 3703
    li	$a1,236
    sd	$gp,16($sp)
    # Line 3700
    lui	$at,0x4
    addiu	$at,$at,-15708
    addu	$gp,$t9,$at
    # Line 3703
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    li	$a0,8
    # Line 3705
    ld	$v1,0($sp)
    # Line 3703
    bnez	$v0,.L0dbc2440
    ld	$a2,8($sp)
    ld	$gp,16($sp)
    # Line 3704
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc2440:
    # Line 3707
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 3706
    sw	$a2,4($v0)
    # Line 3707
    jr	$ra
    # Line 3705
    sw	$v1,0($v0)
.end __glsplc_SpriteParameteriSGIX

# Function: __glsplc_SpriteParameterivSGIX
# Declared: Line 3710 (Source lines: 3711-3727)
# Address: 0x0dbc2458 - 0x0dbc24fc (Size: 164 bytes, Frame: 192)
.globl __glsplc_SpriteParameterivSGIX
.ent __glsplc_SpriteParameterivSGIX
__glsplc_SpriteParameterivSGIX:
    # Line 3711
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    lui	$at,0x4
    addiu	$at,$at,-15808
    addu	$gp,$t9,$at
    # Line 3716
    # lw $t9, -25520($gp) # &__glSpriteParameterivSGIX_size
    sd	$a1,0($sp)
    sd	$ra,32($sp)
    jal	__glSpriteParameterivSGIX_size
    sd	$a0,8($sp)
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbc24e0
    sd	$a5,16($sp)
    # Line 3722
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,237
    jal	__glSPDlalloc
    addiu	$a0,$a5,4
    bnez	$v0,.L0dbc24b4
    # Line 3723
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbc24b4:
    ld	$a2,16($sp)
    # Line 3725
    ld	$a1,0($sp)
    # lw $t9, -17848($gp) # &memcpy
    # Line 3724
    ld	$a3,8($sp)
    # Line 3725
    addiu	$a0,$v0,4
    jal	memcpy
    # Line 3724
    sw	$a3,0($v0)
    # Line 3727
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbc24e0:
    # Line 3718
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 3719
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_SpriteParameterivSGIX

# Function: __glsplc_TexFilterFuncSGIS
# Declared: Line 3731 (Source lines: 3732-3750)
# Address: 0x0dbc24fc - 0x0dbc25b8 (Size: 188 bytes, Frame: 224)
.globl __glsplc_TexFilterFuncSGIS
.ent __glsplc_TexFilterFuncSGIS
__glsplc_TexFilterFuncSGIS:
    # Line 3732
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$s0,40($sp)
    move	$s0,$a2
    sd	$a3,24($sp)
    sd	$gp,32($sp)
    lui	$at,0x4
    addiu	$at,$at,-15972
    bltz	$a2,.L0dbc2598
    addu	$gp,$t9,$at
    # Line 3743
    li	$a1,238
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sll	$a0,$s0,0x2
    sd	$a0,0($sp)
    jal	__glSPDlalloc
    addiu	$a0,$a0,12
    bnez	$v0,.L0dbc255c
    ld	$ra,48($sp)
    ld	$gp,32($sp)
    # Line 3744
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbc255c:
    ld	$a2,0($sp)
    # Line 3748
    ld	$a1,24($sp)
    addiu	$a0,$v0,12
    # Line 3747
    sw	$s0,8($v0)
    # Line 3746
    ld	$a4,16($sp)
    # Line 3748
    # lw $t9, -17848($gp) # &memcpy
    # Line 3745
    ld	$a3,8($sp)
    # Line 3746
    sw	$a4,4($v0)
    # Line 3748
    jal	memcpy
    # Line 3745
    sw	$a3,0($v0)
    # Line 3750
    ld	$ra,48($sp)
    ld	$gp,32($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbc2598:
    # Line 3739
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
    jal	__glsplc_InvalidValue
    nop
    # Line 3740
    ld	$ra,48($sp)
    ld	$gp,32($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glsplc_TexFilterFuncSGIS

# Function: __glsplc_PointParameterfSGIS
# Declared: Line 3753 (Source lines: 3754-3761)
# Address: 0x0dbc25b8 - 0x0dbc261c (Size: 100 bytes, Frame: 48)
.globl __glsplc_PointParameterfSGIS
.ent __glsplc_PointParameterfSGIS
__glsplc_PointParameterfSGIS:
    # Line 3757
    li	$a1,239
    # Line 3754
    addiu	$sp,$sp,-48
    sd	$a0,8($sp)
    sd	$gp,16($sp)
    lui	$at,0x4
    addiu	$at,$at,-16160
    addu	$gp,$t9,$at
    # Line 3757
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,8
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    sdc1	$f13,0($sp)
    # Line 3759
    ld	$v1,8($sp)
    # Line 3757
    bnez	$v0,.L0dbc2604
    ldc1	$f0,0($sp)
    ld	$gp,16($sp)
    # Line 3758
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc2604:
    # Line 3761
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 3760
    swc1	$f0,4($v0)
    # Line 3761
    jr	$ra
    # Line 3759
    sw	$v1,0($v0)
.end __glsplc_PointParameterfSGIS

# Function: __glsplc_PointParameterfvSGIS
# Declared: Line 3764 (Source lines: 3765-3781)
# Address: 0x0dbc261c - 0x0dbc26c0 (Size: 164 bytes, Frame: 192)
.globl __glsplc_PointParameterfvSGIS
.ent __glsplc_PointParameterfvSGIS
__glsplc_PointParameterfvSGIS:
    # Line 3765
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    lui	$at,0x4
    addiu	$at,$at,-16260
    addu	$gp,$t9,$at
    # Line 3770
    # lw $t9, -25516($gp) # &__glPointParameterfvSGIS_size
    sd	$a1,0($sp)
    sd	$ra,32($sp)
    jal	__glPointParameterfvSGIS_size
    sd	$a0,8($sp)
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbc26a4
    sd	$a5,16($sp)
    # Line 3776
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,240
    jal	__glSPDlalloc
    addiu	$a0,$a5,4
    bnez	$v0,.L0dbc2678
    # Line 3777
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbc2678:
    ld	$a2,16($sp)
    # Line 3779
    ld	$a1,0($sp)
    # lw $t9, -17848($gp) # &memcpy
    # Line 3778
    ld	$a3,8($sp)
    # Line 3779
    addiu	$a0,$v0,4
    jal	memcpy
    # Line 3778
    sw	$a3,0($v0)
    # Line 3781
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbc26a4:
    # Line 3772
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 3773
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_PointParameterfvSGIS

# Function: __glsplc_FogFuncSGIS
# Declared: Line 3784 (Source lines: 3785-3801)
# Address: 0x0dbc26c0 - 0x0dbc2764 (Size: 164 bytes, Frame: 192)
.globl __glsplc_FogFuncSGIS
.ent __glsplc_FogFuncSGIS
__glsplc_FogFuncSGIS:
    # Line 3785
    addiu	$sp,$sp,-64
    sd	$ra,32($sp)
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$a1,8($sp)
    sd	$gp,16($sp)
    lui	$at,0x4
    addiu	$at,$at,-16424
    bltz	$a0,.L0dbc2744
    addu	$gp,$t9,$at
    # Line 3796
    li	$a1,241
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sll	$a0,$s0,0x3
    sd	$a0,0($sp)
    jal	__glSPDlalloc
    addiu	$a0,$a0,4
    bnez	$v0,.L0dbc2718
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    # Line 3797
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbc2718:
    ld	$a2,0($sp)
    # Line 3799
    # lw $t9, -17848($gp) # &memcpy
    ld	$a1,8($sp)
    addiu	$a0,$v0,4
    jal	memcpy
    # Line 3798
    sw	$s0,0($v0)
    # Line 3801
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dbc2744:
    # Line 3792
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
    jal	__glsplc_InvalidValue
    nop
    # Line 3793
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_FogFuncSGIS

# Function: __glsplc_ReadInstrumentsSGIX
# Declared: Line 3807 (Source lines: 3808-3814)
# Address: 0x0dbc2764 - 0x0dbc27bc (Size: 88 bytes, Frame: 48)
.globl __glsplc_ReadInstrumentsSGIX
.ent __glsplc_ReadInstrumentsSGIX
__glsplc_ReadInstrumentsSGIX:
    # Line 3811
    li	$a1,242
    # Line 3808
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-16588
    addu	$gp,$t9,$at
    # Line 3811
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbc27ac
    # Line 3814
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 3812
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc27ac:
    ld	$gp,8($sp)
    # Line 3814
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3813
    sw	$v1,0($v0)
.end __glsplc_ReadInstrumentsSGIX

# Function: __glsplc_StartInstrumentsSGIX
# Declared: Line 3817 (Source lines: 3818-3822)
# Address: 0x0dbc27bc - 0x0dbc27f4 (Size: 56 bytes, Frame: 16)
.globl __glsplc_StartInstrumentsSGIX
.ent __glsplc_StartInstrumentsSGIX
__glsplc_StartInstrumentsSGIX:
    # Line 3818
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-16676
    addu	$gp,$t9,$at
    # Line 3821
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,243
    sd	$ra,0($sp)
    jal	__glSPDlalloc
    move	$a0,$zero
    # Line 3822
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_StartInstrumentsSGIX

# Function: __glsplc_StopInstrumentsSGIX
# Declared: Line 3826 (Source lines: 3827-3833)
# Address: 0x0dbc27f4 - 0x0dbc284c (Size: 88 bytes, Frame: 48)
.globl __glsplc_StopInstrumentsSGIX
.ent __glsplc_StopInstrumentsSGIX
__glsplc_StopInstrumentsSGIX:
    # Line 3830
    li	$a1,244
    # Line 3827
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-16732
    addu	$gp,$t9,$at
    # Line 3830
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbc283c
    # Line 3833
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 3831
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc283c:
    ld	$gp,8($sp)
    # Line 3833
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3832
    sw	$v1,0($v0)
.end __glsplc_StopInstrumentsSGIX

# Function: __glsplc_ReferencePlaneSGIX
# Declared: Line 3837 (Source lines: 3838-3847)
# Address: 0x0dbc284c - 0x0dbc28c0 (Size: 116 bytes, Frame: 48)
.globl __glsplc_ReferencePlaneSGIX
.ent __glsplc_ReferencePlaneSGIX
__glsplc_ReferencePlaneSGIX:
    # Line 3841
    li	$a1,245
    # Line 3838
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-16820
    addu	$gp,$t9,$at
    # Line 3841
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc2
    li	$a0,32
    bnez	$v0,.L0dbc2890
    # Line 3847
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 3842
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc2890:
    ld	$v1,0($sp)
    # Line 3843
    ldc1	$f3,0($v1)
    sdc1	$f3,0($v0)
    # Line 3844
    ldc1	$f2,8($v1)
    sdc1	$f2,8($v0)
    # Line 3845
    ldc1	$f1,16($v1)
    sdc1	$f1,16($v0)
    ld	$gp,8($sp)
    # Line 3846
    ldc1	$f0,24($v1)
    # Line 3847
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3846
    sdc1	$f0,24($v0)
.end __glsplc_ReferencePlaneSGIX

# Function: __glsplc_FrameZoomSGIX
# Declared: Line 3850 (Source lines: 3851-3857)
# Address: 0x0dbc28c0 - 0x0dbc2918 (Size: 88 bytes, Frame: 48)
.globl __glsplc_FrameZoomSGIX
.ent __glsplc_FrameZoomSGIX
__glsplc_FrameZoomSGIX:
    # Line 3854
    li	$a1,246
    # Line 3851
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-16936
    addu	$gp,$t9,$at
    # Line 3854
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbc2908
    # Line 3857
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 3855
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc2908:
    ld	$gp,8($sp)
    # Line 3857
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3856
    sw	$v1,0($v0)
.end __glsplc_FrameZoomSGIX

# Function: __glsplc_DeformSGIX
# Declared: Line 3863 (Source lines: 3864-3870)
# Address: 0x0dbc2918 - 0x0dbc2970 (Size: 88 bytes, Frame: 48)
.globl __glsplc_DeformSGIX
.ent __glsplc_DeformSGIX
__glsplc_DeformSGIX:
    # Line 3867
    li	$a1,249
    # Line 3864
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-17024
    addu	$gp,$t9,$at
    # Line 3867
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbc2960
    # Line 3870
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 3868
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc2960:
    ld	$gp,8($sp)
    # Line 3870
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3869
    sw	$v1,0($v0)
.end __glsplc_DeformSGIX

# Function: __glsplc_LoadIdentityDeformationMapSGIX
# Declared: Line 3873 (Source lines: 3874-3880)
# Address: 0x0dbc2970 - 0x0dbc29c8 (Size: 88 bytes, Frame: 48)
.globl __glsplc_LoadIdentityDeformationMapSGIX
.ent __glsplc_LoadIdentityDeformationMapSGIX
__glsplc_LoadIdentityDeformationMapSGIX:
    # Line 3877
    li	$a1,250
    # Line 3874
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-17112
    addu	$gp,$t9,$at
    # Line 3877
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbc29b8
    # Line 3880
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 3878
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc29b8:
    ld	$gp,8($sp)
    # Line 3880
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3879
    sw	$v1,0($v0)
.end __glsplc_LoadIdentityDeformationMapSGIX

# Function: __glsplc_PixelTransformSGI
# Declared: Line 3889 (Source lines: 3890-3896)
# Address: 0x0dbc29c8 - 0x0dbc2a20 (Size: 88 bytes, Frame: 48)
.globl __glsplc_PixelTransformSGI
.ent __glsplc_PixelTransformSGI
__glsplc_PixelTransformSGI:
    # Line 3893
    li	$a1,251
    # Line 3890
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x4
    addiu	$at,$at,-17200
    addu	$gp,$t9,$at
    # Line 3893
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0dbc2a10
    # Line 3896
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 3894
    ld	$ra,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc2a10:
    ld	$gp,8($sp)
    # Line 3896
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3895
    sw	$v1,0($v0)
.end __glsplc_PixelTransformSGI

# Function: __glsplc_PixelTransformParameterfSGI
# Declared: Line 3899 (Source lines: 3900-3908)
# Address: 0x0dbc2a20 - 0x0dbc2a90 (Size: 112 bytes, Frame: 208)
.globl __glsplc_PixelTransformParameterfSGI
.ent __glsplc_PixelTransformParameterfSGI
__glsplc_PixelTransformParameterfSGI:
    # Line 3900
    addiu	$sp,$sp,-80
    sd	$a1,16($sp)
    # Line 3903
    li	$a1,252
    sd	$a0,8($sp)
    sd	$gp,24($sp)
    # Line 3900
    lui	$at,0x4
    addiu	$at,$at,-17288
    addu	$gp,$t9,$at
    # Line 3903
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,12
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sdc1	$f14,0($sp)
    # Line 3906
    ld	$a2,16($sp)
    # Line 3908
    ld	$ra,32($sp)
    # Line 3903
    bnez	$v0,.L0dbc2a74
    ldc1	$f0,0($sp)
    ld	$gp,24($sp)
    # Line 3904
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc2a74:
    ld	$gp,24($sp)
    # Line 3905
    ld	$v1,8($sp)
    # Line 3908
    addiu	$sp,$sp,80
    # Line 3907
    swc1	$f0,8($v0)
    # Line 3906
    sw	$a2,4($v0)
    # Line 3908
    jr	$ra
    # Line 3905
    sw	$v1,0($v0)
.end __glsplc_PixelTransformParameterfSGI

# Function: __glsplc_PixelTransformParameterfvSGI
# Declared: Line 3911 (Source lines: 3912-3929)
# Address: 0x0dbc2a90 - 0x0dbc2b40 (Size: 176 bytes, Frame: 208)
.globl __glsplc_PixelTransformParameterfvSGI
.ent __glsplc_PixelTransformParameterfvSGI
__glsplc_PixelTransformParameterfvSGI:
    # Line 3912
    addiu	$sp,$sp,-80
    sd	$a2,0($sp)
    sd	$gp,32($sp)
    lui	$at,0x4
    addiu	$at,$at,-17400
    addu	$gp,$t9,$at
    # Line 3917
    # lw $t9, -25512($gp) # &__glPixelTransformParameterfvSGI_size
    sd	$a1,8($sp)
    sd	$ra,40($sp)
    jal	__glPixelTransformParameterfvSGI_size
    sd	$a0,16($sp)
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbc2b24
    sd	$a5,24($sp)
    # Line 3923
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,253
    jal	__glSPDlalloc
    addiu	$a0,$a5,8
    bnez	$v0,.L0dbc2af0
    # Line 3924
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc2af0:
    ld	$a2,24($sp)
    # Line 3927
    ld	$a1,0($sp)
    addiu	$a0,$v0,8
    # Line 3926
    ld	$a4,8($sp)
    # Line 3927
    # lw $t9, -17848($gp) # &memcpy
    # Line 3925
    ld	$a3,16($sp)
    # Line 3926
    sw	$a4,4($v0)
    # Line 3927
    jal	memcpy
    # Line 3925
    sw	$a3,0($v0)
    # Line 3929
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc2b24:
    # Line 3919
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 3920
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_PixelTransformParameterfvSGI

# Function: __glsplc_PixelTransformParameteriSGI
# Declared: Line 3932 (Source lines: 3933-3941)
# Address: 0x0dbc2b40 - 0x0dbc2bb0 (Size: 112 bytes, Frame: 208)
.globl __glsplc_PixelTransformParameteriSGI
.ent __glsplc_PixelTransformParameteriSGI
__glsplc_PixelTransformParameteriSGI:
    # Line 3933
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    # Line 3936
    li	$a1,254
    sd	$a0,0($sp)
    sd	$gp,24($sp)
    # Line 3933
    lui	$at,0x4
    addiu	$at,$at,-17576
    addu	$gp,$t9,$at
    # Line 3936
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,12
    sd	$ra,32($sp)
    jal	__glSPDlalloc
    sd	$a2,16($sp)
    # Line 3939
    ld	$a3,8($sp)
    # Line 3941
    ld	$ra,32($sp)
    # Line 3936
    bnez	$v0,.L0dbc2b94
    ld	$a4,16($sp)
    ld	$gp,24($sp)
    # Line 3937
    ld	$ra,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc2b94:
    ld	$gp,24($sp)
    # Line 3938
    ld	$v1,0($sp)
    # Line 3941
    addiu	$sp,$sp,80
    # Line 3940
    sw	$a4,8($v0)
    # Line 3939
    sw	$a3,4($v0)
    # Line 3941
    jr	$ra
    # Line 3938
    sw	$v1,0($v0)
.end __glsplc_PixelTransformParameteriSGI

# Function: __glsplc_PixelTransformParameterivSGI
# Declared: Line 3944 (Source lines: 3945-3962)
# Address: 0x0dbc2bb0 - 0x0dbc2c60 (Size: 176 bytes, Frame: 208)
.globl __glsplc_PixelTransformParameterivSGI
.ent __glsplc_PixelTransformParameterivSGI
__glsplc_PixelTransformParameterivSGI:
    # Line 3945
    addiu	$sp,$sp,-80
    sd	$a2,0($sp)
    sd	$gp,32($sp)
    lui	$at,0x4
    addiu	$at,$at,-17688
    addu	$gp,$t9,$at
    # Line 3950
    # lw $t9, -25508($gp) # &__glPixelTransformParameterivSGI_size
    sd	$a1,8($sp)
    sd	$ra,40($sp)
    jal	__glPixelTransformParameterivSGI_size
    sd	$a0,16($sp)
    sll	$a5,$v0,0x2
    move	$v1,$a5
    bltz	$v0,.L0dbc2c44
    sd	$a5,24($sp)
    # Line 3956
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,255
    jal	__glSPDlalloc
    addiu	$a0,$a5,8
    bnez	$v0,.L0dbc2c10
    # Line 3957
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc2c10:
    ld	$a2,24($sp)
    # Line 3960
    ld	$a1,0($sp)
    addiu	$a0,$v0,8
    # Line 3959
    ld	$a4,8($sp)
    # Line 3960
    # lw $t9, -17848($gp) # &memcpy
    # Line 3958
    ld	$a3,16($sp)
    # Line 3959
    sw	$a4,4($v0)
    # Line 3960
    jal	memcpy
    # Line 3958
    sw	$a3,0($v0)
    # Line 3962
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dbc2c44:
    # Line 3952
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 3953
    ld	$ra,40($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_PixelTransformParameterivSGI

# Function: __glsplc_SubdivPatchParameterfSGIX
# Declared: Line 3968 (Source lines: 3969-3976)
# Address: 0x0dbc2c60 - 0x0dbc2cc4 (Size: 100 bytes, Frame: 48)
.globl __glsplc_SubdivPatchParameterfSGIX
.ent __glsplc_SubdivPatchParameterfSGIX
__glsplc_SubdivPatchParameterfSGIX:
    # Line 3972
    li	$a1,256
    # Line 3969
    addiu	$sp,$sp,-48
    sd	$a0,8($sp)
    sd	$gp,16($sp)
    lui	$at,0x4
    addiu	$at,$at,-17864
    addu	$gp,$t9,$at
    # Line 3972
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a0,8
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    sdc1	$f13,0($sp)
    # Line 3974
    ld	$v1,8($sp)
    # Line 3972
    bnez	$v0,.L0dbc2cac
    ldc1	$f0,0($sp)
    ld	$gp,16($sp)
    # Line 3973
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc2cac:
    # Line 3976
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 3975
    swc1	$f0,4($v0)
    # Line 3976
    jr	$ra
    # Line 3974
    sw	$v1,0($v0)
.end __glsplc_SubdivPatchParameterfSGIX

# Function: __glsplc_SubdivPatchParameteriSGIX
# Declared: Line 3979 (Source lines: 3980-3987)
# Address: 0x0dbc2cc4 - 0x0dbc2d28 (Size: 100 bytes, Frame: 48)
.globl __glsplc_SubdivPatchParameteriSGIX
.ent __glsplc_SubdivPatchParameteriSGIX
__glsplc_SubdivPatchParameteriSGIX:
    # Line 3980
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    # Line 3983
    li	$a1,257
    sd	$gp,16($sp)
    # Line 3980
    lui	$at,0x4
    addiu	$at,$at,-17964
    addu	$gp,$t9,$at
    # Line 3983
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    jal	__glSPDlalloc
    li	$a0,8
    # Line 3985
    ld	$v1,0($sp)
    # Line 3983
    bnez	$v0,.L0dbc2d10
    ld	$a2,8($sp)
    ld	$gp,16($sp)
    # Line 3984
    ld	$ra,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dbc2d10:
    # Line 3987
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 3986
    sw	$a2,4($v0)
    # Line 3987
    jr	$ra
    # Line 3985
    sw	$v1,0($v0)
.end __glsplc_SubdivPatchParameteriSGIX

# Function: __glsplc_NurbsKnots1dSGIX
# Declared: Line 3990 (Source lines: 3991-4009)
# Address: 0x0dbc2d28 - 0x0dbc2de4 (Size: 188 bytes, Frame: 224)
.globl __glsplc_NurbsKnots1dSGIX
.ent __glsplc_NurbsKnots1dSGIX
__glsplc_NurbsKnots1dSGIX:
    # Line 3991
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$s0,40($sp)
    move	$s0,$a2
    sd	$a3,24($sp)
    sd	$gp,32($sp)
    lui	$at,0x4
    addiu	$at,$at,-18064
    bltz	$a2,.L0dbc2dc4
    addu	$gp,$t9,$at
    # Line 4002
    li	$a1,258
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sll	$a0,$s0,0x3
    sd	$a0,0($sp)
    jal	__glSPDlalloc2
    addiu	$a0,$a0,12
    bnez	$v0,.L0dbc2d88
    ld	$ra,48($sp)
    ld	$gp,32($sp)
    # Line 4003
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbc2d88:
    ld	$a2,0($sp)
    # Line 4007
    ld	$a1,24($sp)
    addiu	$a0,$v0,12
    # Line 4006
    sw	$s0,8($v0)
    # Line 4005
    ld	$a4,16($sp)
    # Line 4007
    # lw $t9, -17848($gp) # &memcpy
    # Line 4004
    ld	$a3,8($sp)
    # Line 4005
    sw	$a4,4($v0)
    # Line 4007
    jal	memcpy
    # Line 4004
    sw	$a3,0($v0)
    # Line 4009
    ld	$ra,48($sp)
    ld	$gp,32($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbc2dc4:
    # Line 3998
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
    jal	__glsplc_InvalidValue
    nop
    # Line 3999
    ld	$ra,48($sp)
    ld	$gp,32($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glsplc_NurbsKnots1dSGIX

# Function: __glsplc_NurbsKnots1fSGIX
# Declared: Line 4012 (Source lines: 4013-4031)
# Address: 0x0dbc2de4 - 0x0dbc2ea0 (Size: 188 bytes, Frame: 224)
.globl __glsplc_NurbsKnots1fSGIX
.ent __glsplc_NurbsKnots1fSGIX
__glsplc_NurbsKnots1fSGIX:
    # Line 4013
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$s0,40($sp)
    move	$s0,$a2
    sd	$a3,24($sp)
    sd	$gp,32($sp)
    lui	$at,0x4
    addiu	$at,$at,-18252
    bltz	$a2,.L0dbc2e80
    addu	$gp,$t9,$at
    # Line 4024
    li	$a1,259
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sll	$a0,$s0,0x2
    sd	$a0,0($sp)
    jal	__glSPDlalloc
    addiu	$a0,$a0,12
    bnez	$v0,.L0dbc2e44
    ld	$ra,48($sp)
    ld	$gp,32($sp)
    # Line 4025
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbc2e44:
    ld	$a2,0($sp)
    # Line 4029
    ld	$a1,24($sp)
    addiu	$a0,$v0,12
    # Line 4028
    sw	$s0,8($v0)
    # Line 4027
    ld	$a4,16($sp)
    # Line 4029
    # lw $t9, -17848($gp) # &memcpy
    # Line 4026
    ld	$a3,8($sp)
    # Line 4027
    sw	$a4,4($v0)
    # Line 4029
    jal	memcpy
    # Line 4026
    sw	$a3,0($v0)
    # Line 4031
    ld	$ra,48($sp)
    ld	$gp,32($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dbc2e80:
    # Line 4020
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
    jal	__glsplc_InvalidValue
    nop
    # Line 4021
    ld	$ra,48($sp)
    ld	$gp,32($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glsplc_NurbsKnots1fSGIX

# Function: __glsplc_NurbsKnots2dSGIX
# Declared: Line 4034 (Source lines: 4035-4055)
# Address: 0x0dbc2ea0 - 0x0dbc2f80 (Size: 224 bytes, Frame: 160)
.globl __glsplc_NurbsKnots2dSGIX
.ent __glsplc_NurbsKnots2dSGIX
__glsplc_NurbsKnots2dSGIX:
    # Line 4035
    addiu	$sp,$sp,-160
    sd	$a1,40($sp)
    # Line 4044
    li	$a1,260
    sd	$a6,24($sp)
    sd	$a5,16($sp)
    sd	$a3,56($sp)
    sd	$a2,48($sp)
    sd	$a4,8($sp)
    sll	$v0,$a4,0x3
    sd	$v0,32($sp)
    sd	$a0,0($sp)
    sd	$ra,88($sp)
    sll	$at,$a2,0x3
    sd	$gp,80($sp)
    # Line 4035
    lui	$v1,0x4
    addiu	$v1,$v1,-18440
    addu	$gp,$t9,$v1
    # Line 4044
    # lw $t9, -31764($gp) # &__glSPDlalloc2
    sd	$at,64($sp)
    addu	$at,$at,$v0
    jal	__glSPDlalloc2
    addiu	$a0,$at,20
    bnez	$v0,.L0dbc2f10
    sd	$v0,72($sp)
    # Line 4045
    ld	$ra,88($sp)
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dbc2f10:
    ld	$a2,64($sp)
    # Line 4051
    ld	$a1,16($sp)
    # Line 4046
    ld	$a3,0($sp)
    # Line 4051
    # lw $t9, -17848($gp) # &memcpy
    # Line 4047
    ld	$a5,40($sp)
    # Line 4048
    ld	$a6,48($sp)
    # Line 4051
    ld	$a4,72($sp)
    # Line 4050
    ld	$t0,8($sp)
    # Line 4049
    ld	$a7,56($sp)
    # Line 4051
    addiu	$a0,$a4,20
    # Line 4050
    sw	$t0,16($a4)
    # Line 4049
    sw	$a7,12($a4)
    # Line 4048
    sw	$a6,8($a4)
    # Line 4047
    sw	$a5,4($a4)
    # Line 4051
    jal	memcpy
    # Line 4046
    sw	$a3,0($a4)
    ld	$a2,32($sp)
    # Line 4053
    ld	$a3,72($sp)
    ld	$a0,64($sp)
    # lw $t9, -17848($gp) # &memcpy
    ld	$a1,24($sp)
    addu	$a0,$a0,$a3
    jal	memcpy
    addiu	$a0,$a0,20
    # Line 4055
    ld	$ra,88($sp)
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __glsplc_NurbsKnots2dSGIX

# Function: __glsplc_NurbsKnots2fSGIX
# Declared: Line 4058 (Source lines: 4059-4079)
# Address: 0x0dbc2f80 - 0x0dbc3060 (Size: 224 bytes, Frame: 160)
.globl __glsplc_NurbsKnots2fSGIX
.ent __glsplc_NurbsKnots2fSGIX
__glsplc_NurbsKnots2fSGIX:
    # Line 4059
    addiu	$sp,$sp,-160
    sd	$a1,40($sp)
    # Line 4068
    li	$a1,261
    sd	$a6,24($sp)
    sd	$a5,16($sp)
    sd	$a3,56($sp)
    sd	$a2,48($sp)
    sd	$a4,8($sp)
    sll	$v0,$a4,0x2
    sd	$v0,32($sp)
    sd	$a0,0($sp)
    sd	$ra,88($sp)
    sll	$at,$a2,0x2
    sd	$gp,80($sp)
    # Line 4059
    lui	$v1,0x4
    addiu	$v1,$v1,-18664
    addu	$gp,$t9,$v1
    # Line 4068
    # lw $t9, -31768($gp) # &__glSPDlalloc
    sd	$at,64($sp)
    addu	$at,$at,$v0
    jal	__glSPDlalloc
    addiu	$a0,$at,20
    bnez	$v0,.L0dbc2ff0
    sd	$v0,72($sp)
    # Line 4069
    ld	$ra,88($sp)
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0dbc2ff0:
    ld	$a2,64($sp)
    # Line 4075
    ld	$a1,16($sp)
    # Line 4070
    ld	$a3,0($sp)
    # Line 4075
    # lw $t9, -17848($gp) # &memcpy
    # Line 4071
    ld	$a5,40($sp)
    # Line 4072
    ld	$a6,48($sp)
    # Line 4075
    ld	$a4,72($sp)
    # Line 4074
    ld	$t0,8($sp)
    # Line 4073
    ld	$a7,56($sp)
    # Line 4075
    addiu	$a0,$a4,20
    # Line 4074
    sw	$t0,16($a4)
    # Line 4073
    sw	$a7,12($a4)
    # Line 4072
    sw	$a6,8($a4)
    # Line 4071
    sw	$a5,4($a4)
    # Line 4075
    jal	memcpy
    # Line 4070
    sw	$a3,0($a4)
    ld	$a2,32($sp)
    # Line 4077
    ld	$a3,72($sp)
    ld	$a0,64($sp)
    # lw $t9, -17848($gp) # &memcpy
    ld	$a1,24($sp)
    addu	$a0,$a0,$a3
    jal	memcpy
    addiu	$a0,$a0,20
    # Line 4079
    ld	$ra,88($sp)
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __glsplc_NurbsKnots2fSGIX

