# Source: ../MGRAS/mgras_rpos.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_rpos.c
# Total Functions: 48

.text

# Function: __glMgrim_RasterPos2dWrapper
# Declared: Line 33 (Source lines: 34-38)
# Address: 0x0daf05ac - 0x0daf0608 (Size: 92 bytes, Frame: 32)
.globl __glMgrim_RasterPos2dWrapper
.ent __glMgrim_RasterPos2dWrapper
__glMgrim_RasterPos2dWrapper:
    # Line 34
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x11
    addiu	$v1,$v1,-7956
    beq	$at,$v0,.L0daf05ec
    addu	$gp,$t9,$v1
    # Line 37
    # lw $t9, -18464($gp) # &__glMgrim_RasterPos2d
    jal	__glMgrim_RasterPos2d
    nop
    # Line 38
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0daf05ec:
    # Line 35
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_RasterPos2dWrapper

# Function: __glMgrim_RasterPos2fWrapper
# Declared: Line 40 (Source lines: 41-45)
# Address: 0x0daf0608 - 0x0daf0664 (Size: 92 bytes, Frame: 32)
.globl __glMgrim_RasterPos2fWrapper
.ent __glMgrim_RasterPos2fWrapper
__glMgrim_RasterPos2fWrapper:
    # Line 41
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x11
    addiu	$v1,$v1,-8048
    beq	$at,$v0,.L0daf0648
    addu	$gp,$t9,$v1
    # Line 44
    # lw $t9, -18456($gp) # &__glMgrim_RasterPos2f
    jal	__glMgrim_RasterPos2f
    nop
    # Line 45
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0daf0648:
    # Line 42
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_RasterPos2fWrapper

# Function: __glMgrim_RasterPos2iWrapper
# Declared: Line 47 (Source lines: 48-52)
# Address: 0x0daf0664 - 0x0daf06c0 (Size: 92 bytes, Frame: 32)
.globl __glMgrim_RasterPos2iWrapper
.ent __glMgrim_RasterPos2iWrapper
__glMgrim_RasterPos2iWrapper:
    # Line 48
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x11
    addiu	$v1,$v1,-8140
    beq	$at,$v0,.L0daf06a4
    addu	$gp,$t9,$v1
    # Line 51
    # lw $t9, -18448($gp) # &__glMgrim_RasterPos2i
    jal	__glMgrim_RasterPos2i
    nop
    # Line 52
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0daf06a4:
    # Line 49
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_RasterPos2iWrapper

# Function: __glMgrim_RasterPos2sWrapper
# Declared: Line 54 (Source lines: 55-59)
# Address: 0x0daf06c0 - 0x0daf071c (Size: 92 bytes, Frame: 32)
.globl __glMgrim_RasterPos2sWrapper
.ent __glMgrim_RasterPos2sWrapper
__glMgrim_RasterPos2sWrapper:
    # Line 55
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x11
    addiu	$v1,$v1,-8232
    beq	$at,$v0,.L0daf0700
    addu	$gp,$t9,$v1
    # Line 58
    # lw $t9, -18440($gp) # &__glMgrim_RasterPos2s
    jal	__glMgrim_RasterPos2s
    nop
    # Line 59
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0daf0700:
    # Line 56
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_RasterPos2sWrapper

# Function: __glMgrim_RasterPos3dWrapper
# Declared: Line 61 (Source lines: 62-66)
# Address: 0x0daf071c - 0x0daf0778 (Size: 92 bytes, Frame: 48)
.globl __glMgrim_RasterPos3dWrapper
.ent __glMgrim_RasterPos3dWrapper
__glMgrim_RasterPos3dWrapper:
    # Line 62
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x11
    addiu	$v1,$v1,-8324
    beq	$at,$v0,.L0daf075c
    addu	$gp,$t9,$v1
    # Line 65
    # lw $t9, -18432($gp) # &__glMgrim_RasterPos3d
    jal	__glMgrim_RasterPos3d
    nop
    # Line 66
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daf075c:
    # Line 63
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_RasterPos3dWrapper

# Function: __glMgrim_RasterPos3fWrapper
# Declared: Line 68 (Source lines: 69-73)
# Address: 0x0daf0778 - 0x0daf07d4 (Size: 92 bytes, Frame: 48)
.globl __glMgrim_RasterPos3fWrapper
.ent __glMgrim_RasterPos3fWrapper
__glMgrim_RasterPos3fWrapper:
    # Line 69
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x11
    addiu	$v1,$v1,-8416
    beq	$at,$v0,.L0daf07b8
    addu	$gp,$t9,$v1
    # Line 72
    # lw $t9, -18424($gp) # &__glMgrim_RasterPos3f
    jal	__glMgrim_RasterPos3f
    nop
    # Line 73
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daf07b8:
    # Line 70
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_RasterPos3fWrapper

# Function: __glMgrim_RasterPos3iWrapper
# Declared: Line 75 (Source lines: 76-80)
# Address: 0x0daf07d4 - 0x0daf0830 (Size: 92 bytes, Frame: 48)
.globl __glMgrim_RasterPos3iWrapper
.ent __glMgrim_RasterPos3iWrapper
__glMgrim_RasterPos3iWrapper:
    # Line 76
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x11
    addiu	$v1,$v1,-8508
    beq	$at,$v0,.L0daf0814
    addu	$gp,$t9,$v1
    # Line 79
    # lw $t9, -18416($gp) # &__glMgrim_RasterPos3i
    jal	__glMgrim_RasterPos3i
    nop
    # Line 80
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daf0814:
    # Line 77
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_RasterPos3iWrapper

# Function: __glMgrim_RasterPos3sWrapper
# Declared: Line 82 (Source lines: 83-87)
# Address: 0x0daf0830 - 0x0daf088c (Size: 92 bytes, Frame: 48)
.globl __glMgrim_RasterPos3sWrapper
.ent __glMgrim_RasterPos3sWrapper
__glMgrim_RasterPos3sWrapper:
    # Line 83
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x11
    addiu	$v1,$v1,-8600
    beq	$at,$v0,.L0daf0870
    addu	$gp,$t9,$v1
    # Line 86
    # lw $t9, -18408($gp) # &__glMgrim_RasterPos3s
    jal	__glMgrim_RasterPos3s
    nop
    # Line 87
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daf0870:
    # Line 84
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_RasterPos3sWrapper

# Function: __glMgrim_RasterPos4dWrapper
# Declared: Line 89 (Source lines: 90-94)
# Address: 0x0daf088c - 0x0daf08e8 (Size: 92 bytes, Frame: 48)
.globl __glMgrim_RasterPos4dWrapper
.ent __glMgrim_RasterPos4dWrapper
__glMgrim_RasterPos4dWrapper:
    # Line 90
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x11
    addiu	$v1,$v1,-8692
    beq	$at,$v0,.L0daf08cc
    addu	$gp,$t9,$v1
    # Line 93
    # lw $t9, -18400($gp) # &__glMgrim_RasterPos4d
    jal	__glMgrim_RasterPos4d
    nop
    # Line 94
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daf08cc:
    # Line 91
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_RasterPos4dWrapper

# Function: __glMgrim_RasterPos4fWrapper
# Declared: Line 96 (Source lines: 97-101)
# Address: 0x0daf08e8 - 0x0daf0944 (Size: 92 bytes, Frame: 48)
.globl __glMgrim_RasterPos4fWrapper
.ent __glMgrim_RasterPos4fWrapper
__glMgrim_RasterPos4fWrapper:
    # Line 97
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x11
    addiu	$v1,$v1,-8784
    beq	$at,$v0,.L0daf0928
    addu	$gp,$t9,$v1
    # Line 100
    # lw $t9, -18392($gp) # &__glMgrim_RasterPos4f
    jal	__glMgrim_RasterPos4f
    nop
    # Line 101
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daf0928:
    # Line 98
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_RasterPos4fWrapper

# Function: __glMgrim_RasterPos4iWrapper
# Declared: Line 103 (Source lines: 104-108)
# Address: 0x0daf0944 - 0x0daf09a0 (Size: 92 bytes, Frame: 48)
.globl __glMgrim_RasterPos4iWrapper
.ent __glMgrim_RasterPos4iWrapper
__glMgrim_RasterPos4iWrapper:
    # Line 104
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x11
    addiu	$v1,$v1,-8876
    beq	$at,$v0,.L0daf0984
    addu	$gp,$t9,$v1
    # Line 107
    # lw $t9, -18384($gp) # &__glMgrim_RasterPos4i
    jal	__glMgrim_RasterPos4i
    nop
    # Line 108
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daf0984:
    # Line 105
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_RasterPos4iWrapper

# Function: __glMgrim_RasterPos4sWrapper
# Declared: Line 110 (Source lines: 111-115)
# Address: 0x0daf09a0 - 0x0daf09fc (Size: 92 bytes, Frame: 48)
.globl __glMgrim_RasterPos4sWrapper
.ent __glMgrim_RasterPos4sWrapper
__glMgrim_RasterPos4sWrapper:
    # Line 111
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x11
    addiu	$v1,$v1,-8968
    beq	$at,$v0,.L0daf09e0
    addu	$gp,$t9,$v1
    # Line 114
    # lw $t9, -18376($gp) # &__glMgrim_RasterPos4s
    jal	__glMgrim_RasterPos4s
    nop
    # Line 115
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daf09e0:
    # Line 112
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_RasterPos4sWrapper

# Function: __glMgrim_RasterPos2dvWrapper
# Declared: Line 117 (Source lines: 118-122)
# Address: 0x0daf09fc - 0x0daf0a58 (Size: 92 bytes, Frame: 32)
.globl __glMgrim_RasterPos2dvWrapper
.ent __glMgrim_RasterPos2dvWrapper
__glMgrim_RasterPos2dvWrapper:
    # Line 118
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x11
    addiu	$v1,$v1,-9060
    beq	$at,$v0,.L0daf0a3c
    addu	$gp,$t9,$v1
    # Line 121
    # lw $t9, -18460($gp) # &__glMgrim_RasterPos2dv
    jal	__glMgrim_RasterPos2dv
    nop
    # Line 122
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0daf0a3c:
    # Line 119
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_RasterPos2dvWrapper

# Function: __glMgrim_RasterPos2fvWrapper
# Declared: Line 124 (Source lines: 125-129)
# Address: 0x0daf0a58 - 0x0daf0ab4 (Size: 92 bytes, Frame: 32)
.globl __glMgrim_RasterPos2fvWrapper
.ent __glMgrim_RasterPos2fvWrapper
__glMgrim_RasterPos2fvWrapper:
    # Line 125
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x11
    addiu	$v1,$v1,-9152
    beq	$at,$v0,.L0daf0a98
    addu	$gp,$t9,$v1
    # Line 128
    # lw $t9, -18452($gp) # &__glMgrim_RasterPos2fv
    jal	__glMgrim_RasterPos2fv
    nop
    # Line 129
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0daf0a98:
    # Line 126
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_RasterPos2fvWrapper

# Function: __glMgrim_RasterPos2ivWrapper
# Declared: Line 131 (Source lines: 132-136)
# Address: 0x0daf0ab4 - 0x0daf0b10 (Size: 92 bytes, Frame: 32)
.globl __glMgrim_RasterPos2ivWrapper
.ent __glMgrim_RasterPos2ivWrapper
__glMgrim_RasterPos2ivWrapper:
    # Line 132
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x11
    addiu	$v1,$v1,-9244
    beq	$at,$v0,.L0daf0af4
    addu	$gp,$t9,$v1
    # Line 135
    # lw $t9, -18444($gp) # &__glMgrim_RasterPos2iv
    jal	__glMgrim_RasterPos2iv
    nop
    # Line 136
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0daf0af4:
    # Line 133
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_RasterPos2ivWrapper

# Function: __glMgrim_RasterPos2svWrapper
# Declared: Line 138 (Source lines: 139-143)
# Address: 0x0daf0b10 - 0x0daf0b6c (Size: 92 bytes, Frame: 32)
.globl __glMgrim_RasterPos2svWrapper
.ent __glMgrim_RasterPos2svWrapper
__glMgrim_RasterPos2svWrapper:
    # Line 139
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x11
    addiu	$v1,$v1,-9336
    beq	$at,$v0,.L0daf0b50
    addu	$gp,$t9,$v1
    # Line 142
    # lw $t9, -18436($gp) # &__glMgrim_RasterPos2sv
    jal	__glMgrim_RasterPos2sv
    nop
    # Line 143
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0daf0b50:
    # Line 140
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_RasterPos2svWrapper

# Function: __glMgrim_RasterPos3dvWrapper
# Declared: Line 145 (Source lines: 146-150)
# Address: 0x0daf0b6c - 0x0daf0bc8 (Size: 92 bytes, Frame: 32)
.globl __glMgrim_RasterPos3dvWrapper
.ent __glMgrim_RasterPos3dvWrapper
__glMgrim_RasterPos3dvWrapper:
    # Line 146
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x11
    addiu	$v1,$v1,-9428
    beq	$at,$v0,.L0daf0bac
    addu	$gp,$t9,$v1
    # Line 149
    # lw $t9, -18428($gp) # &__glMgrim_RasterPos3dv
    jal	__glMgrim_RasterPos3dv
    nop
    # Line 150
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0daf0bac:
    # Line 147
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_RasterPos3dvWrapper

# Function: __glMgrim_RasterPos3fvWrapper
# Declared: Line 152 (Source lines: 153-157)
# Address: 0x0daf0bc8 - 0x0daf0c24 (Size: 92 bytes, Frame: 32)
.globl __glMgrim_RasterPos3fvWrapper
.ent __glMgrim_RasterPos3fvWrapper
__glMgrim_RasterPos3fvWrapper:
    # Line 153
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x11
    addiu	$v1,$v1,-9520
    beq	$at,$v0,.L0daf0c08
    addu	$gp,$t9,$v1
    # Line 156
    # lw $t9, -18420($gp) # &__glMgrim_RasterPos3fv
    jal	__glMgrim_RasterPos3fv
    nop
    # Line 157
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0daf0c08:
    # Line 154
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_RasterPos3fvWrapper

# Function: __glMgrim_RasterPos3ivWrapper
# Declared: Line 159 (Source lines: 160-164)
# Address: 0x0daf0c24 - 0x0daf0c80 (Size: 92 bytes, Frame: 32)
.globl __glMgrim_RasterPos3ivWrapper
.ent __glMgrim_RasterPos3ivWrapper
__glMgrim_RasterPos3ivWrapper:
    # Line 160
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x11
    addiu	$v1,$v1,-9612
    beq	$at,$v0,.L0daf0c64
    addu	$gp,$t9,$v1
    # Line 163
    # lw $t9, -18412($gp) # &__glMgrim_RasterPos3iv
    jal	__glMgrim_RasterPos3iv
    nop
    # Line 164
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0daf0c64:
    # Line 161
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_RasterPos3ivWrapper

# Function: __glMgrim_RasterPos3svWrapper
# Declared: Line 166 (Source lines: 167-171)
# Address: 0x0daf0c80 - 0x0daf0cdc (Size: 92 bytes, Frame: 32)
.globl __glMgrim_RasterPos3svWrapper
.ent __glMgrim_RasterPos3svWrapper
__glMgrim_RasterPos3svWrapper:
    # Line 167
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x11
    addiu	$v1,$v1,-9704
    beq	$at,$v0,.L0daf0cc0
    addu	$gp,$t9,$v1
    # Line 170
    # lw $t9, -18404($gp) # &__glMgrim_RasterPos3sv
    jal	__glMgrim_RasterPos3sv
    nop
    # Line 171
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0daf0cc0:
    # Line 168
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_RasterPos3svWrapper

# Function: __glMgrim_RasterPos4dvWrapper
# Declared: Line 173 (Source lines: 174-178)
# Address: 0x0daf0cdc - 0x0daf0d38 (Size: 92 bytes, Frame: 32)
.globl __glMgrim_RasterPos4dvWrapper
.ent __glMgrim_RasterPos4dvWrapper
__glMgrim_RasterPos4dvWrapper:
    # Line 174
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x11
    addiu	$v1,$v1,-9796
    beq	$at,$v0,.L0daf0d1c
    addu	$gp,$t9,$v1
    # Line 177
    # lw $t9, -18396($gp) # &__glMgrim_RasterPos4dv
    jal	__glMgrim_RasterPos4dv
    nop
    # Line 178
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0daf0d1c:
    # Line 175
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_RasterPos4dvWrapper

# Function: __glMgrim_RasterPos4fvWrapper
# Declared: Line 180 (Source lines: 181-185)
# Address: 0x0daf0d38 - 0x0daf0d94 (Size: 92 bytes, Frame: 32)
.globl __glMgrim_RasterPos4fvWrapper
.ent __glMgrim_RasterPos4fvWrapper
__glMgrim_RasterPos4fvWrapper:
    # Line 181
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x11
    addiu	$v1,$v1,-9888
    beq	$at,$v0,.L0daf0d78
    addu	$gp,$t9,$v1
    # Line 184
    # lw $t9, -18388($gp) # &__glMgrim_RasterPos4fv
    jal	__glMgrim_RasterPos4fv
    nop
    # Line 185
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0daf0d78:
    # Line 182
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_RasterPos4fvWrapper

# Function: __glMgrim_RasterPos4ivWrapper
# Declared: Line 187 (Source lines: 188-192)
# Address: 0x0daf0d94 - 0x0daf0df0 (Size: 92 bytes, Frame: 32)
.globl __glMgrim_RasterPos4ivWrapper
.ent __glMgrim_RasterPos4ivWrapper
__glMgrim_RasterPos4ivWrapper:
    # Line 188
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x11
    addiu	$v1,$v1,-9980
    beq	$at,$v0,.L0daf0dd4
    addu	$gp,$t9,$v1
    # Line 191
    # lw $t9, -18380($gp) # &__glMgrim_RasterPos4iv
    jal	__glMgrim_RasterPos4iv
    nop
    # Line 192
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0daf0dd4:
    # Line 189
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_RasterPos4ivWrapper

# Function: __glMgrim_RasterPos4svWrapper
# Declared: Line 194 (Source lines: 195-199)
# Address: 0x0daf0df0 - 0x0daf0e4c (Size: 92 bytes, Frame: 32)
.globl __glMgrim_RasterPos4svWrapper
.ent __glMgrim_RasterPos4svWrapper
__glMgrim_RasterPos4svWrapper:
    # Line 195
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x11
    addiu	$v1,$v1,-10072
    beq	$at,$v0,.L0daf0e30
    addu	$gp,$t9,$v1
    # Line 198
    # lw $t9, -18372($gp) # &__glMgrim_RasterPos4sv
    jal	__glMgrim_RasterPos4sv
    nop
    # Line 199
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0daf0e30:
    # Line 196
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_RasterPos4svWrapper

# Function: __glMgrim_SoftRasterPos2d
# Declared: Line 203 (Source lines: 203-220)
# Address: 0x0daf0e4c - 0x0daf0f64 (Size: 280 bytes, Frame: 208)
.globl __glMgrim_SoftRasterPos2d
.ent __glMgrim_SoftRasterPos2d
__glMgrim_SoftRasterPos2d:
    # Line 205
    li	$v0,1
    # Line 203
    addiu	$sp,$sp,-80
    sd	$s7,32($sp)
    # Line 205
    lw	$s7,__glCurrentContext
    sd	$gp,40($sp)
    lw	$at,__glBeginMode
    # Line 203
    lui	$v1,0x11
    addiu	$v1,$v1,-10164
    # Line 205
    beq	$at,$v0,.L0daf0f40
    # Line 203
    addu	$gp,$t9,$v1
    # Line 205
    lui	$a1,0x1
    addu	$a1,$s7,$a1
    lw	$a0,-28068($a1)
    beqz	$a0,.L0daf0e98
    # Line 219
    nop	# was lw $t9, -18464($gp) # &__glMgrim_RasterPos2d
    # Line 205
    lbu	$at,-28064($a1)
    beqz	$at,.L0daf0eb8
    sd	$ra,48($sp)
    # Line 219
    # lw $t9, -18464($gp) # &__glMgrim_RasterPos2d
.L0daf0e98:
    sd	$ra,48($sp)
    jal	__glMgrim_RasterPos2d
    nop
    ld	$ra,48($sp)
.L0daf0ea8:
    ld	$gp,40($sp)
    # Line 220
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daf0eb8:
    # Line 211
    # lw $t9, -25736($gp) # &__glim_RasterPos2d
    jal	__glim_RasterPos2d
    nop
    # Line 212
    lw	$v1,3372($s7)
    mtc1	$v1,$f6
    nop
    cvt.s.w	$f6,$f6
    lwc1	$f5,344($s7)
    sub.s	$f5,$f5,$f6
    cvt.d.s	$f5,$f5
    sdc1	$f5,0($sp)
    # Line 213
    lw	$v0,3376($s7)
    mtc1	$v0,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f3,348($s7)
    sub.s	$f3,$f3,$f4
    cvt.d.s	$f3,$f3
    sdc1	$f3,8($sp)
    # Line 214
    lwc1	$f2,1644($s7)
    lwc1	$f1,352($s7)
    sub.s	$f1,$f1,$f2
    lwc1	$f2,1640($s7)
    div.s	$f1,$f1,$f2
    cvt.d.s	$f1,$f1
    sdc1	$f1,16($sp)
    # Line 216
    lwc1	$f0,356($s7)
    # Line 217
    # lw $t9, -18396($gp) # &__glMgrim_RasterPos4dv
    addiu	$a0,$sp,0
    # Line 216
    cvt.d.s	$f0,$f0
    # Line 217
    jal	__glMgrim_RasterPos4dv
    # Line 216
    sdc1	$f0,24($sp)
    b	.L0daf0ea8
    ld	$ra,48($sp)
.L0daf0f40:
    # Line 205
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrim_SoftRasterPos2d

# Function: __glMgrim_SoftRasterPos2f
# Declared: Line 223 (Source lines: 223-240)
# Address: 0x0daf0f64 - 0x0daf106c (Size: 264 bytes, Frame: 192)
.globl __glMgrim_SoftRasterPos2f
.ent __glMgrim_SoftRasterPos2f
__glMgrim_SoftRasterPos2f:
    # Line 225
    li	$v0,1
    # Line 223
    addiu	$sp,$sp,-64
    sd	$s7,16($sp)
    # Line 225
    lw	$s7,__glCurrentContext
    sd	$gp,24($sp)
    lw	$at,__glBeginMode
    # Line 223
    lui	$v1,0x11
    addiu	$v1,$v1,-10444
    # Line 225
    beq	$at,$v0,.L0daf1048
    # Line 223
    addu	$gp,$t9,$v1
    # Line 225
    lui	$a1,0x1
    addu	$a1,$s7,$a1
    lw	$a0,-28068($a1)
    beqz	$a0,.L0daf0fb0
    # Line 239
    nop	# was lw $t9, -18456($gp) # &__glMgrim_RasterPos2f
    # Line 225
    lbu	$at,-28064($a1)
    beqz	$at,.L0daf0fd0
    sd	$ra,32($sp)
    # Line 239
    # lw $t9, -18456($gp) # &__glMgrim_RasterPos2f
.L0daf0fb0:
    sd	$ra,32($sp)
    jal	__glMgrim_RasterPos2f
    nop
    ld	$ra,32($sp)
.L0daf0fc0:
    ld	$gp,24($sp)
    # Line 240
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daf0fd0:
    # Line 231
    # lw $t9, -25732($gp) # &__glim_RasterPos2f
    jal	__glim_RasterPos2f
    nop
    # Line 232
    lw	$v1,3372($s7)
    mtc1	$v1,$f6
    nop
    cvt.s.w	$f6,$f6
    lwc1	$f5,344($s7)
    sub.s	$f5,$f5,$f6
    swc1	$f5,0($sp)
    # Line 233
    lw	$v0,3376($s7)
    mtc1	$v0,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f3,348($s7)
    sub.s	$f3,$f3,$f4
    swc1	$f3,4($sp)
    # Line 234
    lwc1	$f2,1644($s7)
    lwc1	$f1,352($s7)
    sub.s	$f1,$f1,$f2
    lwc1	$f2,1640($s7)
    div.s	$f1,$f1,$f2
    swc1	$f1,8($sp)
    # Line 237
    # lw $t9, -18388($gp) # &__glMgrim_RasterPos4fv
    # Line 236
    lwc1	$f0,356($s7)
    # Line 237
    addiu	$a0,$sp,0
    jal	__glMgrim_RasterPos4fv
    # Line 236
    swc1	$f0,12($sp)
    b	.L0daf0fc0
    ld	$ra,32($sp)
.L0daf1048:
    # Line 225
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_SoftRasterPos2f

# Function: __glMgrim_SoftRasterPos2i
# Declared: Line 243 (Source lines: 243-260)
# Address: 0x0daf106c - 0x0daf11a0 (Size: 308 bytes, Frame: 192)
.globl __glMgrim_SoftRasterPos2i
.ent __glMgrim_SoftRasterPos2i
__glMgrim_SoftRasterPos2i:
    # Line 245
    li	$v0,1
    # Line 243
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    # Line 245
    lw	$s0,__glCurrentContext
    sd	$gp,16($sp)
    lw	$at,__glBeginMode
    # Line 243
    lui	$v1,0x11
    addiu	$v1,$v1,-10708
    # Line 245
    beq	$at,$v0,.L0daf117c
    # Line 243
    addu	$gp,$t9,$v1
    # Line 245
    lui	$a3,0x1
    addu	$a3,$s0,$a3
    lw	$a2,-28068($a3)
    beqz	$a2,.L0daf10b8
    # Line 259
    nop	# was lw $t9, -18448($gp) # &__glMgrim_RasterPos2i
    # Line 245
    lbu	$at,-28064($a3)
    beqz	$at,.L0daf10d8
    sd	$ra,32($sp)
    # Line 259
    # lw $t9, -18448($gp) # &__glMgrim_RasterPos2i
.L0daf10b8:
    sd	$ra,32($sp)
    jal	__glMgrim_RasterPos2i
    nop
    ld	$ra,32($sp)
.L0daf10c8:
    ld	$gp,16($sp)
    # Line 260
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daf10d8:
    # Line 251
    # lw $t9, -25728($gp) # &__glim_RasterPos2i
    jal	__glim_RasterPos2i
    nop
    # Line 252
    lw	$a3,3372($s0)
    mtc1	$a3,$f6
    nop
    cvt.s.w	$f6,$f6
    lwc1	$f5,344($s0)
    sub.s	$f5,$f5,$f6
    trunc.w.s	$f5,$f5
    mfc1	$a2,$f5
    nop
    sw	$a2,0($sp)
    # Line 253
    lw	$a1,3376($s0)
    mtc1	$a1,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f3,348($s0)
    sub.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$a0,$f3
    nop
    sw	$a0,4($sp)
    # Line 254
    lwc1	$f2,1644($s0)
    lwc1	$f1,352($s0)
    sub.s	$f1,$f1,$f2
    lwc1	$f2,1640($s0)
    div.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    nop
    sw	$v1,8($sp)
    # Line 256
    lwc1	$f0,356($s0)
    trunc.w.s	$f0,$f0
    # Line 257
    # lw $t9, -18380($gp) # &__glMgrim_RasterPos4iv
    # Line 256
    mfc1	$v0,$f0
    # Line 257
    addiu	$a0,$sp,0
    jal	__glMgrim_RasterPos4iv
    # Line 256
    sw	$v0,12($sp)
    b	.L0daf10c8
    ld	$ra,32($sp)
.L0daf117c:
    # Line 245
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_SoftRasterPos2i

# Function: __glMgrim_SoftRasterPos2s
# Declared: Line 263 (Source lines: 263-280)
# Address: 0x0daf11a0 - 0x0daf12d4 (Size: 308 bytes, Frame: 48)
.globl __glMgrim_SoftRasterPos2s
.ent __glMgrim_SoftRasterPos2s
__glMgrim_SoftRasterPos2s:
    # Line 265
    li	$v0,1
    # Line 263
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    # Line 265
    lw	$s0,__glCurrentContext
    sd	$gp,8($sp)
    lw	$at,__glBeginMode
    # Line 263
    lui	$v1,0x11
    addiu	$v1,$v1,-11016
    # Line 265
    beq	$at,$v0,.L0daf12b0
    # Line 263
    addu	$gp,$t9,$v1
    # Line 265
    lui	$a3,0x1
    addu	$a3,$s0,$a3
    lw	$a2,-28068($a3)
    beqz	$a2,.L0daf11ec
    # Line 279
    nop	# was lw $t9, -18440($gp) # &__glMgrim_RasterPos2s
    # Line 265
    lbu	$at,-28064($a3)
    beqz	$at,.L0daf120c
    sd	$ra,24($sp)
    # Line 279
    # lw $t9, -18440($gp) # &__glMgrim_RasterPos2s
.L0daf11ec:
    sd	$ra,24($sp)
    jal	__glMgrim_RasterPos2s
    nop
    ld	$ra,24($sp)
.L0daf11fc:
    ld	$gp,8($sp)
    # Line 280
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daf120c:
    # Line 271
    # lw $t9, -25720($gp) # &__glim_RasterPos2s
    jal	__glim_RasterPos2s
    nop
    # Line 272
    lw	$a3,3372($s0)
    mtc1	$a3,$f6
    nop
    cvt.s.w	$f6,$f6
    lwc1	$f5,344($s0)
    sub.s	$f5,$f5,$f6
    trunc.w.s	$f5,$f5
    mfc1	$a2,$f5
    nop
    sh	$a2,0($sp)
    # Line 273
    lw	$a1,3376($s0)
    mtc1	$a1,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f3,348($s0)
    sub.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$a0,$f3
    nop
    sh	$a0,2($sp)
    # Line 274
    lwc1	$f2,1644($s0)
    lwc1	$f1,352($s0)
    sub.s	$f1,$f1,$f2
    lwc1	$f2,1640($s0)
    div.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    nop
    sh	$v1,4($sp)
    # Line 276
    lwc1	$f0,356($s0)
    trunc.w.s	$f0,$f0
    # Line 277
    # lw $t9, -18372($gp) # &__glMgrim_RasterPos4sv
    # Line 276
    mfc1	$v0,$f0
    # Line 277
    addiu	$a0,$sp,0
    jal	__glMgrim_RasterPos4sv
    # Line 276
    sh	$v0,6($sp)
    b	.L0daf11fc
    ld	$ra,24($sp)
.L0daf12b0:
    # Line 265
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_SoftRasterPos2s

# Function: __glMgrim_SoftRasterPos3d
# Declared: Line 283 (Source lines: 283-300)
# Address: 0x0daf12d4 - 0x0daf13ec (Size: 280 bytes, Frame: 224)
.globl __glMgrim_SoftRasterPos3d
.ent __glMgrim_SoftRasterPos3d
__glMgrim_SoftRasterPos3d:
    # Line 285
    li	$v0,1
    # Line 283
    addiu	$sp,$sp,-96
    sd	$s7,32($sp)
    # Line 285
    lw	$s7,__glCurrentContext
    sd	$gp,40($sp)
    lw	$at,__glBeginMode
    # Line 283
    lui	$v1,0x11
    addiu	$v1,$v1,-11324
    # Line 285
    beq	$at,$v0,.L0daf13c8
    # Line 283
    addu	$gp,$t9,$v1
    # Line 285
    lui	$a1,0x1
    addu	$a1,$s7,$a1
    lw	$a0,-28068($a1)
    beqz	$a0,.L0daf1320
    # Line 299
    nop	# was lw $t9, -18432($gp) # &__glMgrim_RasterPos3d
    # Line 285
    lbu	$at,-28064($a1)
    beqz	$at,.L0daf1340
    sd	$ra,48($sp)
    # Line 299
    # lw $t9, -18432($gp) # &__glMgrim_RasterPos3d
.L0daf1320:
    sd	$ra,48($sp)
    jal	__glMgrim_RasterPos3d
    nop
    ld	$ra,48($sp)
.L0daf1330:
    ld	$gp,40($sp)
    # Line 300
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daf1340:
    # Line 291
    # lw $t9, -25704($gp) # &__glim_RasterPos3d
    jal	__glim_RasterPos3d
    nop
    # Line 292
    lw	$v1,3372($s7)
    mtc1	$v1,$f6
    nop
    cvt.s.w	$f6,$f6
    lwc1	$f5,344($s7)
    sub.s	$f5,$f5,$f6
    cvt.d.s	$f5,$f5
    sdc1	$f5,0($sp)
    # Line 293
    lw	$v0,3376($s7)
    mtc1	$v0,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f3,348($s7)
    sub.s	$f3,$f3,$f4
    cvt.d.s	$f3,$f3
    sdc1	$f3,8($sp)
    # Line 294
    lwc1	$f2,1644($s7)
    lwc1	$f1,352($s7)
    sub.s	$f1,$f1,$f2
    lwc1	$f2,1640($s7)
    div.s	$f1,$f1,$f2
    cvt.d.s	$f1,$f1
    sdc1	$f1,16($sp)
    # Line 296
    lwc1	$f0,356($s7)
    # Line 297
    # lw $t9, -18396($gp) # &__glMgrim_RasterPos4dv
    addiu	$a0,$sp,0
    # Line 296
    cvt.d.s	$f0,$f0
    # Line 297
    jal	__glMgrim_RasterPos4dv
    # Line 296
    sdc1	$f0,24($sp)
    b	.L0daf1330
    ld	$ra,48($sp)
.L0daf13c8:
    # Line 285
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glMgrim_SoftRasterPos3d

# Function: __glMgrim_SoftRasterPos3f
# Declared: Line 303 (Source lines: 303-320)
# Address: 0x0daf13ec - 0x0daf14f4 (Size: 264 bytes, Frame: 208)
.globl __glMgrim_SoftRasterPos3f
.ent __glMgrim_SoftRasterPos3f
__glMgrim_SoftRasterPos3f:
    # Line 305
    li	$v0,1
    # Line 303
    addiu	$sp,$sp,-80
    sd	$s7,16($sp)
    # Line 305
    lw	$s7,__glCurrentContext
    sd	$gp,24($sp)
    lw	$at,__glBeginMode
    # Line 303
    lui	$v1,0x11
    addiu	$v1,$v1,-11604
    # Line 305
    beq	$at,$v0,.L0daf14d0
    # Line 303
    addu	$gp,$t9,$v1
    # Line 305
    lui	$a1,0x1
    addu	$a1,$s7,$a1
    lw	$a0,-28068($a1)
    beqz	$a0,.L0daf1438
    # Line 319
    nop	# was lw $t9, -18424($gp) # &__glMgrim_RasterPos3f
    # Line 305
    lbu	$at,-28064($a1)
    beqz	$at,.L0daf1458
    sd	$ra,32($sp)
    # Line 319
    # lw $t9, -18424($gp) # &__glMgrim_RasterPos3f
.L0daf1438:
    sd	$ra,32($sp)
    jal	__glMgrim_RasterPos3f
    nop
    ld	$ra,32($sp)
.L0daf1448:
    ld	$gp,24($sp)
    # Line 320
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daf1458:
    # Line 311
    # lw $t9, -25700($gp) # &__glim_RasterPos3f
    jal	__glim_RasterPos3f
    nop
    # Line 312
    lw	$v1,3372($s7)
    mtc1	$v1,$f6
    nop
    cvt.s.w	$f6,$f6
    lwc1	$f5,344($s7)
    sub.s	$f5,$f5,$f6
    swc1	$f5,0($sp)
    # Line 313
    lw	$v0,3376($s7)
    mtc1	$v0,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f3,348($s7)
    sub.s	$f3,$f3,$f4
    swc1	$f3,4($sp)
    # Line 314
    lwc1	$f2,1644($s7)
    lwc1	$f1,352($s7)
    sub.s	$f1,$f1,$f2
    lwc1	$f2,1640($s7)
    div.s	$f1,$f1,$f2
    swc1	$f1,8($sp)
    # Line 317
    # lw $t9, -18388($gp) # &__glMgrim_RasterPos4fv
    # Line 316
    lwc1	$f0,356($s7)
    # Line 317
    addiu	$a0,$sp,0
    jal	__glMgrim_RasterPos4fv
    # Line 316
    swc1	$f0,12($sp)
    b	.L0daf1448
    ld	$ra,32($sp)
.L0daf14d0:
    # Line 305
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrim_SoftRasterPos3f

# Function: __glMgrim_SoftRasterPos3i
# Declared: Line 323 (Source lines: 323-340)
# Address: 0x0daf14f4 - 0x0daf1628 (Size: 308 bytes, Frame: 208)
.globl __glMgrim_SoftRasterPos3i
.ent __glMgrim_SoftRasterPos3i
__glMgrim_SoftRasterPos3i:
    # Line 325
    li	$v0,1
    # Line 323
    addiu	$sp,$sp,-80
    sd	$s0,24($sp)
    # Line 325
    lw	$s0,__glCurrentContext
    sd	$gp,16($sp)
    lw	$at,__glBeginMode
    # Line 323
    lui	$v1,0x11
    addiu	$v1,$v1,-11868
    # Line 325
    beq	$at,$v0,.L0daf1604
    # Line 323
    addu	$gp,$t9,$v1
    # Line 325
    lui	$a4,0x1
    addu	$a4,$s0,$a4
    lw	$a3,-28068($a4)
    beqz	$a3,.L0daf1540
    # Line 339
    nop	# was lw $t9, -18416($gp) # &__glMgrim_RasterPos3i
    # Line 325
    lbu	$at,-28064($a4)
    beqz	$at,.L0daf1560
    sd	$ra,32($sp)
    # Line 339
    # lw $t9, -18416($gp) # &__glMgrim_RasterPos3i
.L0daf1540:
    sd	$ra,32($sp)
    jal	__glMgrim_RasterPos3i
    nop
    ld	$ra,32($sp)
.L0daf1550:
    ld	$gp,16($sp)
    # Line 340
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daf1560:
    # Line 331
    # lw $t9, -25696($gp) # &__glim_RasterPos3i
    jal	__glim_RasterPos3i
    nop
    # Line 332
    lw	$a3,3372($s0)
    mtc1	$a3,$f6
    nop
    cvt.s.w	$f6,$f6
    lwc1	$f5,344($s0)
    sub.s	$f5,$f5,$f6
    trunc.w.s	$f5,$f5
    mfc1	$a2,$f5
    nop
    sw	$a2,0($sp)
    # Line 333
    lw	$a1,3376($s0)
    mtc1	$a1,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f3,348($s0)
    sub.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$a0,$f3
    nop
    sw	$a0,4($sp)
    # Line 334
    lwc1	$f2,1644($s0)
    lwc1	$f1,352($s0)
    sub.s	$f1,$f1,$f2
    lwc1	$f2,1640($s0)
    div.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    nop
    sw	$v1,8($sp)
    # Line 336
    lwc1	$f0,356($s0)
    trunc.w.s	$f0,$f0
    # Line 337
    # lw $t9, -18380($gp) # &__glMgrim_RasterPos4iv
    # Line 336
    mfc1	$v0,$f0
    # Line 337
    addiu	$a0,$sp,0
    jal	__glMgrim_RasterPos4iv
    # Line 336
    sw	$v0,12($sp)
    b	.L0daf1550
    ld	$ra,32($sp)
.L0daf1604:
    # Line 325
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrim_SoftRasterPos3i

# Function: __glMgrim_SoftRasterPos3s
# Declared: Line 343 (Source lines: 343-360)
# Address: 0x0daf1628 - 0x0daf175c (Size: 308 bytes, Frame: 192)
.globl __glMgrim_SoftRasterPos3s
.ent __glMgrim_SoftRasterPos3s
__glMgrim_SoftRasterPos3s:
    # Line 345
    li	$v0,1
    # Line 343
    addiu	$sp,$sp,-64
    sd	$s0,16($sp)
    # Line 345
    lw	$s0,__glCurrentContext
    sd	$gp,8($sp)
    lw	$at,__glBeginMode
    # Line 343
    lui	$v1,0x11
    addiu	$v1,$v1,-12176
    # Line 345
    beq	$at,$v0,.L0daf1738
    # Line 343
    addu	$gp,$t9,$v1
    # Line 345
    lui	$a4,0x1
    addu	$a4,$s0,$a4
    lw	$a3,-28068($a4)
    beqz	$a3,.L0daf1674
    # Line 359
    nop	# was lw $t9, -18408($gp) # &__glMgrim_RasterPos3s
    # Line 345
    lbu	$at,-28064($a4)
    beqz	$at,.L0daf1694
    sd	$ra,24($sp)
    # Line 359
    # lw $t9, -18408($gp) # &__glMgrim_RasterPos3s
.L0daf1674:
    sd	$ra,24($sp)
    jal	__glMgrim_RasterPos3s
    nop
    ld	$ra,24($sp)
.L0daf1684:
    ld	$gp,8($sp)
    # Line 360
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daf1694:
    # Line 351
    # lw $t9, -25688($gp) # &__glim_RasterPos3s
    jal	__glim_RasterPos3s
    nop
    # Line 352
    lw	$a3,3372($s0)
    mtc1	$a3,$f6
    nop
    cvt.s.w	$f6,$f6
    lwc1	$f5,344($s0)
    sub.s	$f5,$f5,$f6
    trunc.w.s	$f5,$f5
    mfc1	$a2,$f5
    nop
    sh	$a2,0($sp)
    # Line 353
    lw	$a1,3376($s0)
    mtc1	$a1,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f3,348($s0)
    sub.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$a0,$f3
    nop
    sh	$a0,2($sp)
    # Line 354
    lwc1	$f2,1644($s0)
    lwc1	$f1,352($s0)
    sub.s	$f1,$f1,$f2
    lwc1	$f2,1640($s0)
    div.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    nop
    sh	$v1,4($sp)
    # Line 356
    lwc1	$f0,356($s0)
    trunc.w.s	$f0,$f0
    # Line 357
    # lw $t9, -18372($gp) # &__glMgrim_RasterPos4sv
    # Line 356
    mfc1	$v0,$f0
    # Line 357
    addiu	$a0,$sp,0
    jal	__glMgrim_RasterPos4sv
    # Line 356
    sh	$v0,6($sp)
    b	.L0daf1684
    ld	$ra,24($sp)
.L0daf1738:
    # Line 345
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_SoftRasterPos3s

# Function: __glMgrim_SoftRasterPos4d
# Declared: Line 363 (Source lines: 363-380)
# Address: 0x0daf175c - 0x0daf1874 (Size: 280 bytes, Frame: 224)
.globl __glMgrim_SoftRasterPos4d
.ent __glMgrim_SoftRasterPos4d
__glMgrim_SoftRasterPos4d:
    # Line 365
    li	$v0,1
    # Line 363
    addiu	$sp,$sp,-96
    sd	$s7,32($sp)
    # Line 365
    lw	$s7,__glCurrentContext
    sd	$gp,40($sp)
    lw	$at,__glBeginMode
    # Line 363
    lui	$v1,0x11
    addiu	$v1,$v1,-12484
    # Line 365
    beq	$at,$v0,.L0daf1850
    # Line 363
    addu	$gp,$t9,$v1
    # Line 365
    lui	$a1,0x1
    addu	$a1,$s7,$a1
    lw	$a0,-28068($a1)
    beqz	$a0,.L0daf17a8
    # Line 379
    nop	# was lw $t9, -18400($gp) # &__glMgrim_RasterPos4d
    # Line 365
    lbu	$at,-28064($a1)
    beqz	$at,.L0daf17c8
    sd	$ra,48($sp)
    # Line 379
    # lw $t9, -18400($gp) # &__glMgrim_RasterPos4d
.L0daf17a8:
    sd	$ra,48($sp)
    jal	__glMgrim_RasterPos4d
    nop
    ld	$ra,48($sp)
.L0daf17b8:
    ld	$gp,40($sp)
    # Line 380
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0daf17c8:
    # Line 371
    # lw $t9, -25672($gp) # &__glim_RasterPos4d
    jal	__glim_RasterPos4d
    nop
    # Line 372
    lw	$v1,3372($s7)
    mtc1	$v1,$f6
    nop
    cvt.s.w	$f6,$f6
    lwc1	$f5,344($s7)
    sub.s	$f5,$f5,$f6
    cvt.d.s	$f5,$f5
    sdc1	$f5,0($sp)
    # Line 373
    lw	$v0,3376($s7)
    mtc1	$v0,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f3,348($s7)
    sub.s	$f3,$f3,$f4
    cvt.d.s	$f3,$f3
    sdc1	$f3,8($sp)
    # Line 374
    lwc1	$f2,1644($s7)
    lwc1	$f1,352($s7)
    sub.s	$f1,$f1,$f2
    lwc1	$f2,1640($s7)
    div.s	$f1,$f1,$f2
    cvt.d.s	$f1,$f1
    sdc1	$f1,16($sp)
    # Line 376
    lwc1	$f0,356($s7)
    # Line 377
    # lw $t9, -18396($gp) # &__glMgrim_RasterPos4dv
    addiu	$a0,$sp,0
    # Line 376
    cvt.d.s	$f0,$f0
    # Line 377
    jal	__glMgrim_RasterPos4dv
    # Line 376
    sdc1	$f0,24($sp)
    b	.L0daf17b8
    ld	$ra,48($sp)
.L0daf1850:
    # Line 365
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s7,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glMgrim_SoftRasterPos4d

# Function: __glMgrim_SoftRasterPos4f
# Declared: Line 383 (Source lines: 383-400)
# Address: 0x0daf1874 - 0x0daf197c (Size: 264 bytes, Frame: 208)
.globl __glMgrim_SoftRasterPos4f
.ent __glMgrim_SoftRasterPos4f
__glMgrim_SoftRasterPos4f:
    # Line 385
    li	$v0,1
    # Line 383
    addiu	$sp,$sp,-80
    sd	$s7,16($sp)
    # Line 385
    lw	$s7,__glCurrentContext
    sd	$gp,24($sp)
    lw	$at,__glBeginMode
    # Line 383
    lui	$v1,0x11
    addiu	$v1,$v1,-12764
    # Line 385
    beq	$at,$v0,.L0daf1958
    # Line 383
    addu	$gp,$t9,$v1
    # Line 385
    lui	$a1,0x1
    addu	$a1,$s7,$a1
    lw	$a0,-28068($a1)
    beqz	$a0,.L0daf18c0
    # Line 399
    nop	# was lw $t9, -18392($gp) # &__glMgrim_RasterPos4f
    # Line 385
    lbu	$at,-28064($a1)
    beqz	$at,.L0daf18e0
    sd	$ra,32($sp)
    # Line 399
    # lw $t9, -18392($gp) # &__glMgrim_RasterPos4f
.L0daf18c0:
    sd	$ra,32($sp)
    jal	__glMgrim_RasterPos4f
    nop
    ld	$ra,32($sp)
.L0daf18d0:
    ld	$gp,24($sp)
    # Line 400
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daf18e0:
    # Line 391
    # lw $t9, -25668($gp) # &__glim_RasterPos4f
    jal	__glim_RasterPos4f
    nop
    # Line 392
    lw	$v1,3372($s7)
    mtc1	$v1,$f6
    nop
    cvt.s.w	$f6,$f6
    lwc1	$f5,344($s7)
    sub.s	$f5,$f5,$f6
    swc1	$f5,0($sp)
    # Line 393
    lw	$v0,3376($s7)
    mtc1	$v0,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f3,348($s7)
    sub.s	$f3,$f3,$f4
    swc1	$f3,4($sp)
    # Line 394
    lwc1	$f2,1644($s7)
    lwc1	$f1,352($s7)
    sub.s	$f1,$f1,$f2
    lwc1	$f2,1640($s7)
    div.s	$f1,$f1,$f2
    swc1	$f1,8($sp)
    # Line 397
    # lw $t9, -18388($gp) # &__glMgrim_RasterPos4fv
    # Line 396
    lwc1	$f0,356($s7)
    # Line 397
    addiu	$a0,$sp,0
    jal	__glMgrim_RasterPos4fv
    # Line 396
    swc1	$f0,12($sp)
    b	.L0daf18d0
    ld	$ra,32($sp)
.L0daf1958:
    # Line 385
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrim_SoftRasterPos4f

# Function: __glMgrim_SoftRasterPos4i
# Declared: Line 403 (Source lines: 403-420)
# Address: 0x0daf197c - 0x0daf1ab0 (Size: 308 bytes, Frame: 208)
.globl __glMgrim_SoftRasterPos4i
.ent __glMgrim_SoftRasterPos4i
__glMgrim_SoftRasterPos4i:
    # Line 405
    li	$v0,1
    # Line 403
    addiu	$sp,$sp,-80
    sd	$s0,24($sp)
    # Line 405
    lw	$s0,__glCurrentContext
    sd	$gp,16($sp)
    lw	$at,__glBeginMode
    # Line 403
    lui	$v1,0x11
    addiu	$v1,$v1,-13028
    # Line 405
    beq	$at,$v0,.L0daf1a8c
    # Line 403
    addu	$gp,$t9,$v1
    # Line 405
    lui	$a5,0x1
    addu	$a5,$s0,$a5
    lw	$a4,-28068($a5)
    beqz	$a4,.L0daf19c8
    # Line 419
    nop	# was lw $t9, -18384($gp) # &__glMgrim_RasterPos4i
    # Line 405
    lbu	$at,-28064($a5)
    beqz	$at,.L0daf19e8
    sd	$ra,32($sp)
    # Line 419
    # lw $t9, -18384($gp) # &__glMgrim_RasterPos4i
.L0daf19c8:
    sd	$ra,32($sp)
    jal	__glMgrim_RasterPos4i
    nop
    ld	$ra,32($sp)
.L0daf19d8:
    ld	$gp,16($sp)
    # Line 420
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daf19e8:
    # Line 411
    # lw $t9, -25664($gp) # &__glim_RasterPos4i
    jal	__glim_RasterPos4i
    nop
    # Line 412
    lw	$a3,3372($s0)
    mtc1	$a3,$f6
    nop
    cvt.s.w	$f6,$f6
    lwc1	$f5,344($s0)
    sub.s	$f5,$f5,$f6
    trunc.w.s	$f5,$f5
    mfc1	$a2,$f5
    nop
    sw	$a2,0($sp)
    # Line 413
    lw	$a1,3376($s0)
    mtc1	$a1,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f3,348($s0)
    sub.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$a0,$f3
    nop
    sw	$a0,4($sp)
    # Line 414
    lwc1	$f2,1644($s0)
    lwc1	$f1,352($s0)
    sub.s	$f1,$f1,$f2
    lwc1	$f2,1640($s0)
    div.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    nop
    sw	$v1,8($sp)
    # Line 416
    lwc1	$f0,356($s0)
    trunc.w.s	$f0,$f0
    # Line 417
    # lw $t9, -18380($gp) # &__glMgrim_RasterPos4iv
    # Line 416
    mfc1	$v0,$f0
    # Line 417
    addiu	$a0,$sp,0
    jal	__glMgrim_RasterPos4iv
    # Line 416
    sw	$v0,12($sp)
    b	.L0daf19d8
    ld	$ra,32($sp)
.L0daf1a8c:
    # Line 405
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrim_SoftRasterPos4i

# Function: __glMgrim_SoftRasterPos4s
# Declared: Line 423 (Source lines: 423-440)
# Address: 0x0daf1ab0 - 0x0daf1be4 (Size: 308 bytes, Frame: 192)
.globl __glMgrim_SoftRasterPos4s
.ent __glMgrim_SoftRasterPos4s
__glMgrim_SoftRasterPos4s:
    # Line 425
    li	$v0,1
    # Line 423
    addiu	$sp,$sp,-64
    sd	$s0,16($sp)
    # Line 425
    lw	$s0,__glCurrentContext
    sd	$gp,8($sp)
    lw	$at,__glBeginMode
    # Line 423
    lui	$v1,0x11
    addiu	$v1,$v1,-13336
    # Line 425
    beq	$at,$v0,.L0daf1bc0
    # Line 423
    addu	$gp,$t9,$v1
    # Line 425
    lui	$a5,0x1
    addu	$a5,$s0,$a5
    lw	$a4,-28068($a5)
    beqz	$a4,.L0daf1afc
    # Line 439
    nop	# was lw $t9, -18376($gp) # &__glMgrim_RasterPos4s
    # Line 425
    lbu	$at,-28064($a5)
    beqz	$at,.L0daf1b1c
    sd	$ra,24($sp)
    # Line 439
    # lw $t9, -18376($gp) # &__glMgrim_RasterPos4s
.L0daf1afc:
    sd	$ra,24($sp)
    jal	__glMgrim_RasterPos4s
    nop
    ld	$ra,24($sp)
.L0daf1b0c:
    ld	$gp,8($sp)
    # Line 440
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daf1b1c:
    # Line 431
    # lw $t9, -25656($gp) # &__glim_RasterPos4s
    jal	__glim_RasterPos4s
    nop
    # Line 432
    lw	$a3,3372($s0)
    mtc1	$a3,$f6
    nop
    cvt.s.w	$f6,$f6
    lwc1	$f5,344($s0)
    sub.s	$f5,$f5,$f6
    trunc.w.s	$f5,$f5
    mfc1	$a2,$f5
    nop
    sh	$a2,0($sp)
    # Line 433
    lw	$a1,3376($s0)
    mtc1	$a1,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f3,348($s0)
    sub.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$a0,$f3
    nop
    sh	$a0,2($sp)
    # Line 434
    lwc1	$f2,1644($s0)
    lwc1	$f1,352($s0)
    sub.s	$f1,$f1,$f2
    lwc1	$f2,1640($s0)
    div.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    nop
    sh	$v1,4($sp)
    # Line 436
    lwc1	$f0,356($s0)
    trunc.w.s	$f0,$f0
    # Line 437
    # lw $t9, -18372($gp) # &__glMgrim_RasterPos4sv
    # Line 436
    mfc1	$v0,$f0
    # Line 437
    addiu	$a0,$sp,0
    jal	__glMgrim_RasterPos4sv
    # Line 436
    sh	$v0,6($sp)
    b	.L0daf1b0c
    ld	$ra,24($sp)
.L0daf1bc0:
    # Line 425
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_SoftRasterPos4s

# Function: __glMgrim_SoftRasterPos2dv
# Declared: Line 443 (Source lines: 443-460)
# Address: 0x0daf1be4 - 0x0daf1cfc (Size: 280 bytes, Frame: 208)
.globl __glMgrim_SoftRasterPos2dv
.ent __glMgrim_SoftRasterPos2dv
__glMgrim_SoftRasterPos2dv:
    # Line 445
    li	$v0,1
    # Line 443
    addiu	$sp,$sp,-80
    sd	$s0,40($sp)
    # Line 445
    lw	$s0,__glCurrentContext
    sd	$gp,32($sp)
    lw	$at,__glBeginMode
    # Line 443
    lui	$v1,0x11
    addiu	$v1,$v1,-13644
    # Line 445
    beq	$at,$v0,.L0daf1cd8
    # Line 443
    addu	$gp,$t9,$v1
    # Line 445
    lui	$a2,0x1
    addu	$a2,$s0,$a2
    lw	$a1,-28068($a2)
    beqz	$a1,.L0daf1c30
    # Line 459
    nop	# was lw $t9, -18460($gp) # &__glMgrim_RasterPos2dv
    # Line 445
    lbu	$at,-28064($a2)
    beqz	$at,.L0daf1c50
    sd	$ra,48($sp)
    # Line 459
    # lw $t9, -18460($gp) # &__glMgrim_RasterPos2dv
.L0daf1c30:
    sd	$ra,48($sp)
    jal	__glMgrim_RasterPos2dv
    nop
    ld	$ra,48($sp)
.L0daf1c40:
    ld	$gp,32($sp)
    # Line 460
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daf1c50:
    # Line 451
    # lw $t9, -25744($gp) # &__glim_RasterPos2dv
    jal	__glim_RasterPos2dv
    nop
    # Line 452
    lw	$v1,3372($s0)
    mtc1	$v1,$f6
    nop
    cvt.s.w	$f6,$f6
    lwc1	$f5,344($s0)
    sub.s	$f5,$f5,$f6
    cvt.d.s	$f5,$f5
    sdc1	$f5,0($sp)
    # Line 453
    lw	$v0,3376($s0)
    mtc1	$v0,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f3,348($s0)
    sub.s	$f3,$f3,$f4
    cvt.d.s	$f3,$f3
    sdc1	$f3,8($sp)
    # Line 454
    lwc1	$f2,1644($s0)
    lwc1	$f1,352($s0)
    sub.s	$f1,$f1,$f2
    lwc1	$f2,1640($s0)
    div.s	$f1,$f1,$f2
    cvt.d.s	$f1,$f1
    sdc1	$f1,16($sp)
    # Line 456
    lwc1	$f0,356($s0)
    # Line 457
    # lw $t9, -18396($gp) # &__glMgrim_RasterPos4dv
    addiu	$a0,$sp,0
    # Line 456
    cvt.d.s	$f0,$f0
    # Line 457
    jal	__glMgrim_RasterPos4dv
    # Line 456
    sdc1	$f0,24($sp)
    b	.L0daf1c40
    ld	$ra,48($sp)
.L0daf1cd8:
    # Line 445
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,48($sp)
    ld	$gp,32($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrim_SoftRasterPos2dv

# Function: __glMgrim_SoftRasterPos2fv
# Declared: Line 463 (Source lines: 463-480)
# Address: 0x0daf1cfc - 0x0daf1e04 (Size: 264 bytes, Frame: 192)
.globl __glMgrim_SoftRasterPos2fv
.ent __glMgrim_SoftRasterPos2fv
__glMgrim_SoftRasterPos2fv:
    # Line 465
    li	$v0,1
    # Line 463
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    # Line 465
    lw	$s0,__glCurrentContext
    sd	$gp,16($sp)
    lw	$at,__glBeginMode
    # Line 463
    lui	$v1,0x11
    addiu	$v1,$v1,-13924
    # Line 465
    beq	$at,$v0,.L0daf1de0
    # Line 463
    addu	$gp,$t9,$v1
    # Line 465
    lui	$a2,0x1
    addu	$a2,$s0,$a2
    lw	$a1,-28068($a2)
    beqz	$a1,.L0daf1d48
    # Line 479
    nop	# was lw $t9, -18452($gp) # &__glMgrim_RasterPos2fv
    # Line 465
    lbu	$at,-28064($a2)
    beqz	$at,.L0daf1d68
    sd	$ra,32($sp)
    # Line 479
    # lw $t9, -18452($gp) # &__glMgrim_RasterPos2fv
.L0daf1d48:
    sd	$ra,32($sp)
    jal	__glMgrim_RasterPos2fv
    nop
    ld	$ra,32($sp)
.L0daf1d58:
    ld	$gp,16($sp)
    # Line 480
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daf1d68:
    # Line 471
    # lw $t9, -25740($gp) # &__glim_RasterPos2fv
    jal	__glim_RasterPos2fv
    nop
    # Line 472
    lw	$v1,3372($s0)
    mtc1	$v1,$f6
    nop
    cvt.s.w	$f6,$f6
    lwc1	$f5,344($s0)
    sub.s	$f5,$f5,$f6
    swc1	$f5,0($sp)
    # Line 473
    lw	$v0,3376($s0)
    mtc1	$v0,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f3,348($s0)
    sub.s	$f3,$f3,$f4
    swc1	$f3,4($sp)
    # Line 474
    lwc1	$f2,1644($s0)
    lwc1	$f1,352($s0)
    sub.s	$f1,$f1,$f2
    lwc1	$f2,1640($s0)
    div.s	$f1,$f1,$f2
    swc1	$f1,8($sp)
    # Line 477
    # lw $t9, -18388($gp) # &__glMgrim_RasterPos4fv
    # Line 476
    lwc1	$f0,356($s0)
    # Line 477
    addiu	$a0,$sp,0
    jal	__glMgrim_RasterPos4fv
    # Line 476
    swc1	$f0,12($sp)
    b	.L0daf1d58
    ld	$ra,32($sp)
.L0daf1de0:
    # Line 465
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_SoftRasterPos2fv

# Function: __glMgrim_SoftRasterPos2iv
# Declared: Line 483 (Source lines: 483-500)
# Address: 0x0daf1e04 - 0x0daf1f38 (Size: 308 bytes, Frame: 192)
.globl __glMgrim_SoftRasterPos2iv
.ent __glMgrim_SoftRasterPos2iv
__glMgrim_SoftRasterPos2iv:
    # Line 485
    li	$v0,1
    # Line 483
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    # Line 485
    lw	$s0,__glCurrentContext
    sd	$gp,16($sp)
    lw	$at,__glBeginMode
    # Line 483
    lui	$v1,0x11
    addiu	$v1,$v1,-14188
    # Line 485
    beq	$at,$v0,.L0daf1f14
    # Line 483
    addu	$gp,$t9,$v1
    # Line 485
    lui	$a2,0x1
    addu	$a2,$s0,$a2
    lw	$a1,-28068($a2)
    beqz	$a1,.L0daf1e50
    # Line 499
    nop	# was lw $t9, -18444($gp) # &__glMgrim_RasterPos2iv
    # Line 485
    lbu	$at,-28064($a2)
    beqz	$at,.L0daf1e70
    sd	$ra,32($sp)
    # Line 499
    # lw $t9, -18444($gp) # &__glMgrim_RasterPos2iv
.L0daf1e50:
    sd	$ra,32($sp)
    jal	__glMgrim_RasterPos2iv
    nop
    ld	$ra,32($sp)
.L0daf1e60:
    ld	$gp,16($sp)
    # Line 500
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daf1e70:
    # Line 491
    # lw $t9, -25724($gp) # &__glim_RasterPos2iv
    jal	__glim_RasterPos2iv
    nop
    # Line 492
    lw	$a3,3372($s0)
    mtc1	$a3,$f6
    nop
    cvt.s.w	$f6,$f6
    lwc1	$f5,344($s0)
    sub.s	$f5,$f5,$f6
    trunc.w.s	$f5,$f5
    mfc1	$a2,$f5
    nop
    sw	$a2,0($sp)
    # Line 493
    lw	$a1,3376($s0)
    mtc1	$a1,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f3,348($s0)
    sub.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$a0,$f3
    nop
    sw	$a0,4($sp)
    # Line 494
    lwc1	$f2,1644($s0)
    lwc1	$f1,352($s0)
    sub.s	$f1,$f1,$f2
    lwc1	$f2,1640($s0)
    div.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    nop
    sw	$v1,8($sp)
    # Line 496
    lwc1	$f0,356($s0)
    trunc.w.s	$f0,$f0
    # Line 497
    # lw $t9, -18380($gp) # &__glMgrim_RasterPos4iv
    # Line 496
    mfc1	$v0,$f0
    # Line 497
    addiu	$a0,$sp,0
    jal	__glMgrim_RasterPos4iv
    # Line 496
    sw	$v0,12($sp)
    b	.L0daf1e60
    ld	$ra,32($sp)
.L0daf1f14:
    # Line 485
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_SoftRasterPos2iv

# Function: __glMgrim_SoftRasterPos2sv
# Declared: Line 503 (Source lines: 503-520)
# Address: 0x0daf1f38 - 0x0daf206c (Size: 308 bytes, Frame: 48)
.globl __glMgrim_SoftRasterPos2sv
.ent __glMgrim_SoftRasterPos2sv
__glMgrim_SoftRasterPos2sv:
    # Line 505
    li	$v0,1
    # Line 503
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    # Line 505
    lw	$s0,__glCurrentContext
    sd	$gp,8($sp)
    lw	$at,__glBeginMode
    # Line 503
    lui	$v1,0x11
    addiu	$v1,$v1,-14496
    # Line 505
    beq	$at,$v0,.L0daf2048
    # Line 503
    addu	$gp,$t9,$v1
    # Line 505
    lui	$a2,0x1
    addu	$a2,$s0,$a2
    lw	$a1,-28068($a2)
    beqz	$a1,.L0daf1f84
    # Line 519
    nop	# was lw $t9, -18436($gp) # &__glMgrim_RasterPos2sv
    # Line 505
    lbu	$at,-28064($a2)
    beqz	$at,.L0daf1fa4
    sd	$ra,24($sp)
    # Line 519
    # lw $t9, -18436($gp) # &__glMgrim_RasterPos2sv
.L0daf1f84:
    sd	$ra,24($sp)
    jal	__glMgrim_RasterPos2sv
    nop
    ld	$ra,24($sp)
.L0daf1f94:
    ld	$gp,8($sp)
    # Line 520
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daf1fa4:
    # Line 511
    # lw $t9, -25716($gp) # &__glim_RasterPos2sv
    jal	__glim_RasterPos2sv
    nop
    # Line 512
    lw	$a3,3372($s0)
    mtc1	$a3,$f6
    nop
    cvt.s.w	$f6,$f6
    lwc1	$f5,344($s0)
    sub.s	$f5,$f5,$f6
    trunc.w.s	$f5,$f5
    mfc1	$a2,$f5
    nop
    sh	$a2,0($sp)
    # Line 513
    lw	$a1,3376($s0)
    mtc1	$a1,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f3,348($s0)
    sub.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$a0,$f3
    nop
    sh	$a0,2($sp)
    # Line 514
    lwc1	$f2,1644($s0)
    lwc1	$f1,352($s0)
    sub.s	$f1,$f1,$f2
    lwc1	$f2,1640($s0)
    div.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    nop
    sh	$v1,4($sp)
    # Line 516
    lwc1	$f0,356($s0)
    trunc.w.s	$f0,$f0
    # Line 517
    # lw $t9, -18372($gp) # &__glMgrim_RasterPos4sv
    # Line 516
    mfc1	$v0,$f0
    # Line 517
    addiu	$a0,$sp,0
    jal	__glMgrim_RasterPos4sv
    # Line 516
    sh	$v0,6($sp)
    b	.L0daf1f94
    ld	$ra,24($sp)
.L0daf2048:
    # Line 505
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_SoftRasterPos2sv

# Function: __glMgrim_SoftRasterPos3dv
# Declared: Line 523 (Source lines: 523-540)
# Address: 0x0daf206c - 0x0daf2184 (Size: 280 bytes, Frame: 208)
.globl __glMgrim_SoftRasterPos3dv
.ent __glMgrim_SoftRasterPos3dv
__glMgrim_SoftRasterPos3dv:
    # Line 525
    li	$v0,1
    # Line 523
    addiu	$sp,$sp,-80
    sd	$s0,40($sp)
    # Line 525
    lw	$s0,__glCurrentContext
    sd	$gp,32($sp)
    lw	$at,__glBeginMode
    # Line 523
    lui	$v1,0x11
    addiu	$v1,$v1,-14804
    # Line 525
    beq	$at,$v0,.L0daf2160
    # Line 523
    addu	$gp,$t9,$v1
    # Line 525
    lui	$a2,0x1
    addu	$a2,$s0,$a2
    lw	$a1,-28068($a2)
    beqz	$a1,.L0daf20b8
    # Line 539
    nop	# was lw $t9, -18428($gp) # &__glMgrim_RasterPos3dv
    # Line 525
    lbu	$at,-28064($a2)
    beqz	$at,.L0daf20d8
    sd	$ra,48($sp)
    # Line 539
    # lw $t9, -18428($gp) # &__glMgrim_RasterPos3dv
.L0daf20b8:
    sd	$ra,48($sp)
    jal	__glMgrim_RasterPos3dv
    nop
    ld	$ra,48($sp)
.L0daf20c8:
    ld	$gp,32($sp)
    # Line 540
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daf20d8:
    # Line 531
    # lw $t9, -25712($gp) # &__glim_RasterPos3dv
    jal	__glim_RasterPos3dv
    nop
    # Line 532
    lw	$v1,3372($s0)
    mtc1	$v1,$f6
    nop
    cvt.s.w	$f6,$f6
    lwc1	$f5,344($s0)
    sub.s	$f5,$f5,$f6
    cvt.d.s	$f5,$f5
    sdc1	$f5,0($sp)
    # Line 533
    lw	$v0,3376($s0)
    mtc1	$v0,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f3,348($s0)
    sub.s	$f3,$f3,$f4
    cvt.d.s	$f3,$f3
    sdc1	$f3,8($sp)
    # Line 534
    lwc1	$f2,1644($s0)
    lwc1	$f1,352($s0)
    sub.s	$f1,$f1,$f2
    lwc1	$f2,1640($s0)
    div.s	$f1,$f1,$f2
    cvt.d.s	$f1,$f1
    sdc1	$f1,16($sp)
    # Line 536
    lwc1	$f0,356($s0)
    # Line 537
    # lw $t9, -18396($gp) # &__glMgrim_RasterPos4dv
    addiu	$a0,$sp,0
    # Line 536
    cvt.d.s	$f0,$f0
    # Line 537
    jal	__glMgrim_RasterPos4dv
    # Line 536
    sdc1	$f0,24($sp)
    b	.L0daf20c8
    ld	$ra,48($sp)
.L0daf2160:
    # Line 525
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,48($sp)
    ld	$gp,32($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrim_SoftRasterPos3dv

# Function: __glMgrim_SoftRasterPos3fv
# Declared: Line 543 (Source lines: 543-560)
# Address: 0x0daf2184 - 0x0daf228c (Size: 264 bytes, Frame: 192)
.globl __glMgrim_SoftRasterPos3fv
.ent __glMgrim_SoftRasterPos3fv
__glMgrim_SoftRasterPos3fv:
    # Line 545
    li	$v0,1
    # Line 543
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    # Line 545
    lw	$s0,__glCurrentContext
    sd	$gp,16($sp)
    lw	$at,__glBeginMode
    # Line 543
    lui	$v1,0x11
    addiu	$v1,$v1,-15084
    # Line 545
    beq	$at,$v0,.L0daf2268
    # Line 543
    addu	$gp,$t9,$v1
    # Line 545
    lui	$a2,0x1
    addu	$a2,$s0,$a2
    lw	$a1,-28068($a2)
    beqz	$a1,.L0daf21d0
    # Line 559
    nop	# was lw $t9, -18420($gp) # &__glMgrim_RasterPos3fv
    # Line 545
    lbu	$at,-28064($a2)
    beqz	$at,.L0daf21f0
    sd	$ra,32($sp)
    # Line 559
    # lw $t9, -18420($gp) # &__glMgrim_RasterPos3fv
.L0daf21d0:
    sd	$ra,32($sp)
    jal	__glMgrim_RasterPos3fv
    nop
    ld	$ra,32($sp)
.L0daf21e0:
    ld	$gp,16($sp)
    # Line 560
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daf21f0:
    # Line 551
    # lw $t9, -25708($gp) # &__glim_RasterPos3fv
    jal	__glim_RasterPos3fv
    nop
    # Line 552
    lw	$v1,3372($s0)
    mtc1	$v1,$f6
    nop
    cvt.s.w	$f6,$f6
    lwc1	$f5,344($s0)
    sub.s	$f5,$f5,$f6
    swc1	$f5,0($sp)
    # Line 553
    lw	$v0,3376($s0)
    mtc1	$v0,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f3,348($s0)
    sub.s	$f3,$f3,$f4
    swc1	$f3,4($sp)
    # Line 554
    lwc1	$f2,1644($s0)
    lwc1	$f1,352($s0)
    sub.s	$f1,$f1,$f2
    lwc1	$f2,1640($s0)
    div.s	$f1,$f1,$f2
    swc1	$f1,8($sp)
    # Line 557
    # lw $t9, -18388($gp) # &__glMgrim_RasterPos4fv
    # Line 556
    lwc1	$f0,356($s0)
    # Line 557
    addiu	$a0,$sp,0
    jal	__glMgrim_RasterPos4fv
    # Line 556
    swc1	$f0,12($sp)
    b	.L0daf21e0
    ld	$ra,32($sp)
.L0daf2268:
    # Line 545
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_SoftRasterPos3fv

# Function: __glMgrim_SoftRasterPos3iv
# Declared: Line 563 (Source lines: 563-580)
# Address: 0x0daf228c - 0x0daf23c0 (Size: 308 bytes, Frame: 192)
.globl __glMgrim_SoftRasterPos3iv
.ent __glMgrim_SoftRasterPos3iv
__glMgrim_SoftRasterPos3iv:
    # Line 565
    li	$v0,1
    # Line 563
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    # Line 565
    lw	$s0,__glCurrentContext
    sd	$gp,16($sp)
    lw	$at,__glBeginMode
    # Line 563
    lui	$v1,0x11
    addiu	$v1,$v1,-15348
    # Line 565
    beq	$at,$v0,.L0daf239c
    # Line 563
    addu	$gp,$t9,$v1
    # Line 565
    lui	$a2,0x1
    addu	$a2,$s0,$a2
    lw	$a1,-28068($a2)
    beqz	$a1,.L0daf22d8
    # Line 579
    nop	# was lw $t9, -18412($gp) # &__glMgrim_RasterPos3iv
    # Line 565
    lbu	$at,-28064($a2)
    beqz	$at,.L0daf22f8
    sd	$ra,32($sp)
    # Line 579
    # lw $t9, -18412($gp) # &__glMgrim_RasterPos3iv
.L0daf22d8:
    sd	$ra,32($sp)
    jal	__glMgrim_RasterPos3iv
    nop
    ld	$ra,32($sp)
.L0daf22e8:
    ld	$gp,16($sp)
    # Line 580
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daf22f8:
    # Line 571
    # lw $t9, -25692($gp) # &__glim_RasterPos3iv
    jal	__glim_RasterPos3iv
    nop
    # Line 572
    lw	$a3,3372($s0)
    mtc1	$a3,$f6
    nop
    cvt.s.w	$f6,$f6
    lwc1	$f5,344($s0)
    sub.s	$f5,$f5,$f6
    trunc.w.s	$f5,$f5
    mfc1	$a2,$f5
    nop
    sw	$a2,0($sp)
    # Line 573
    lw	$a1,3376($s0)
    mtc1	$a1,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f3,348($s0)
    sub.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$a0,$f3
    nop
    sw	$a0,4($sp)
    # Line 574
    lwc1	$f2,1644($s0)
    lwc1	$f1,352($s0)
    sub.s	$f1,$f1,$f2
    lwc1	$f2,1640($s0)
    div.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    nop
    sw	$v1,8($sp)
    # Line 576
    lwc1	$f0,356($s0)
    trunc.w.s	$f0,$f0
    # Line 577
    # lw $t9, -18380($gp) # &__glMgrim_RasterPos4iv
    # Line 576
    mfc1	$v0,$f0
    # Line 577
    addiu	$a0,$sp,0
    jal	__glMgrim_RasterPos4iv
    # Line 576
    sw	$v0,12($sp)
    b	.L0daf22e8
    ld	$ra,32($sp)
.L0daf239c:
    # Line 565
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_SoftRasterPos3iv

# Function: __glMgrim_SoftRasterPos3sv
# Declared: Line 583 (Source lines: 583-600)
# Address: 0x0daf23c0 - 0x0daf24f4 (Size: 308 bytes, Frame: 48)
.globl __glMgrim_SoftRasterPos3sv
.ent __glMgrim_SoftRasterPos3sv
__glMgrim_SoftRasterPos3sv:
    # Line 585
    li	$v0,1
    # Line 583
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    # Line 585
    lw	$s0,__glCurrentContext
    sd	$gp,8($sp)
    lw	$at,__glBeginMode
    # Line 583
    lui	$v1,0x11
    addiu	$v1,$v1,-15656
    # Line 585
    beq	$at,$v0,.L0daf24d0
    # Line 583
    addu	$gp,$t9,$v1
    # Line 585
    lui	$a2,0x1
    addu	$a2,$s0,$a2
    lw	$a1,-28068($a2)
    beqz	$a1,.L0daf240c
    # Line 599
    nop	# was lw $t9, -18404($gp) # &__glMgrim_RasterPos3sv
    # Line 585
    lbu	$at,-28064($a2)
    beqz	$at,.L0daf242c
    sd	$ra,24($sp)
    # Line 599
    # lw $t9, -18404($gp) # &__glMgrim_RasterPos3sv
.L0daf240c:
    sd	$ra,24($sp)
    jal	__glMgrim_RasterPos3sv
    nop
    ld	$ra,24($sp)
.L0daf241c:
    ld	$gp,8($sp)
    # Line 600
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daf242c:
    # Line 591
    # lw $t9, -25684($gp) # &__glim_RasterPos3sv
    jal	__glim_RasterPos3sv
    nop
    # Line 592
    lw	$a3,3372($s0)
    mtc1	$a3,$f6
    nop
    cvt.s.w	$f6,$f6
    lwc1	$f5,344($s0)
    sub.s	$f5,$f5,$f6
    trunc.w.s	$f5,$f5
    mfc1	$a2,$f5
    nop
    sh	$a2,0($sp)
    # Line 593
    lw	$a1,3376($s0)
    mtc1	$a1,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f3,348($s0)
    sub.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$a0,$f3
    nop
    sh	$a0,2($sp)
    # Line 594
    lwc1	$f2,1644($s0)
    lwc1	$f1,352($s0)
    sub.s	$f1,$f1,$f2
    lwc1	$f2,1640($s0)
    div.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    nop
    sh	$v1,4($sp)
    # Line 596
    lwc1	$f0,356($s0)
    trunc.w.s	$f0,$f0
    # Line 597
    # lw $t9, -18372($gp) # &__glMgrim_RasterPos4sv
    # Line 596
    mfc1	$v0,$f0
    # Line 597
    addiu	$a0,$sp,0
    jal	__glMgrim_RasterPos4sv
    # Line 596
    sh	$v0,6($sp)
    b	.L0daf241c
    ld	$ra,24($sp)
.L0daf24d0:
    # Line 585
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_SoftRasterPos3sv

# Function: __glMgrim_SoftRasterPos4dv
# Declared: Line 603 (Source lines: 603-620)
# Address: 0x0daf24f4 - 0x0daf260c (Size: 280 bytes, Frame: 208)
.globl __glMgrim_SoftRasterPos4dv
.ent __glMgrim_SoftRasterPos4dv
__glMgrim_SoftRasterPos4dv:
    # Line 605
    li	$v0,1
    # Line 603
    addiu	$sp,$sp,-80
    sd	$s0,40($sp)
    # Line 605
    lw	$s0,__glCurrentContext
    sd	$gp,32($sp)
    lw	$at,__glBeginMode
    # Line 603
    lui	$v1,0x11
    addiu	$v1,$v1,-15964
    # Line 605
    beq	$at,$v0,.L0daf25e8
    # Line 603
    addu	$gp,$t9,$v1
    # Line 605
    lui	$a2,0x1
    addu	$a2,$s0,$a2
    lw	$a1,-28068($a2)
    beqz	$a1,.L0daf2540
    # Line 619
    nop	# was lw $t9, -18396($gp) # &__glMgrim_RasterPos4dv
    # Line 605
    lbu	$at,-28064($a2)
    beqz	$at,.L0daf2560
    sd	$ra,48($sp)
    # Line 619
    # lw $t9, -18396($gp) # &__glMgrim_RasterPos4dv
.L0daf2540:
    sd	$ra,48($sp)
    jal	__glMgrim_RasterPos4dv
    nop
    ld	$ra,48($sp)
.L0daf2550:
    ld	$gp,32($sp)
    # Line 620
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0daf2560:
    # Line 611
    # lw $t9, -25680($gp) # &__glim_RasterPos4dv
    jal	__glim_RasterPos4dv
    nop
    # Line 612
    lw	$v1,3372($s0)
    mtc1	$v1,$f6
    nop
    cvt.s.w	$f6,$f6
    lwc1	$f5,344($s0)
    sub.s	$f5,$f5,$f6
    cvt.d.s	$f5,$f5
    sdc1	$f5,0($sp)
    # Line 613
    lw	$v0,3376($s0)
    mtc1	$v0,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f3,348($s0)
    sub.s	$f3,$f3,$f4
    cvt.d.s	$f3,$f3
    sdc1	$f3,8($sp)
    # Line 614
    lwc1	$f2,1644($s0)
    lwc1	$f1,352($s0)
    sub.s	$f1,$f1,$f2
    lwc1	$f2,1640($s0)
    div.s	$f1,$f1,$f2
    cvt.d.s	$f1,$f1
    sdc1	$f1,16($sp)
    # Line 616
    lwc1	$f0,356($s0)
    # Line 617
    # lw $t9, -18396($gp) # &__glMgrim_RasterPos4dv
    addiu	$a0,$sp,0
    # Line 616
    cvt.d.s	$f0,$f0
    # Line 617
    jal	__glMgrim_RasterPos4dv
    # Line 616
    sdc1	$f0,24($sp)
    b	.L0daf2550
    ld	$ra,48($sp)
.L0daf25e8:
    # Line 605
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,48($sp)
    ld	$gp,32($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrim_SoftRasterPos4dv

# Function: __glMgrim_SoftRasterPos4fv
# Declared: Line 623 (Source lines: 623-640)
# Address: 0x0daf260c - 0x0daf2714 (Size: 264 bytes, Frame: 192)
.globl __glMgrim_SoftRasterPos4fv
.ent __glMgrim_SoftRasterPos4fv
__glMgrim_SoftRasterPos4fv:
    # Line 625
    li	$v0,1
    # Line 623
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    # Line 625
    lw	$s0,__glCurrentContext
    sd	$gp,16($sp)
    lw	$at,__glBeginMode
    # Line 623
    lui	$v1,0x11
    addiu	$v1,$v1,-16244
    # Line 625
    beq	$at,$v0,.L0daf26f0
    # Line 623
    addu	$gp,$t9,$v1
    # Line 625
    lui	$a2,0x1
    addu	$a2,$s0,$a2
    lw	$a1,-28068($a2)
    beqz	$a1,.L0daf2658
    # Line 639
    nop	# was lw $t9, -18388($gp) # &__glMgrim_RasterPos4fv
    # Line 625
    lbu	$at,-28064($a2)
    beqz	$at,.L0daf2678
    sd	$ra,32($sp)
    # Line 639
    # lw $t9, -18388($gp) # &__glMgrim_RasterPos4fv
.L0daf2658:
    sd	$ra,32($sp)
    jal	__glMgrim_RasterPos4fv
    nop
    ld	$ra,32($sp)
.L0daf2668:
    ld	$gp,16($sp)
    # Line 640
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daf2678:
    # Line 631
    # lw $t9, -25676($gp) # &__glim_RasterPos4fv
    jal	__glim_RasterPos4fv
    nop
    # Line 632
    lw	$v1,3372($s0)
    mtc1	$v1,$f6
    nop
    cvt.s.w	$f6,$f6
    lwc1	$f5,344($s0)
    sub.s	$f5,$f5,$f6
    swc1	$f5,0($sp)
    # Line 633
    lw	$v0,3376($s0)
    mtc1	$v0,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f3,348($s0)
    sub.s	$f3,$f3,$f4
    swc1	$f3,4($sp)
    # Line 634
    lwc1	$f2,1644($s0)
    lwc1	$f1,352($s0)
    sub.s	$f1,$f1,$f2
    lwc1	$f2,1640($s0)
    div.s	$f1,$f1,$f2
    swc1	$f1,8($sp)
    # Line 637
    # lw $t9, -18388($gp) # &__glMgrim_RasterPos4fv
    # Line 636
    lwc1	$f0,356($s0)
    # Line 637
    addiu	$a0,$sp,0
    jal	__glMgrim_RasterPos4fv
    # Line 636
    swc1	$f0,12($sp)
    b	.L0daf2668
    ld	$ra,32($sp)
.L0daf26f0:
    # Line 625
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_SoftRasterPos4fv

# Function: __glMgrim_SoftRasterPos4iv
# Declared: Line 643 (Source lines: 643-660)
# Address: 0x0daf2714 - 0x0daf2848 (Size: 308 bytes, Frame: 192)
.globl __glMgrim_SoftRasterPos4iv
.ent __glMgrim_SoftRasterPos4iv
__glMgrim_SoftRasterPos4iv:
    # Line 645
    li	$v0,1
    # Line 643
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    # Line 645
    lw	$s0,__glCurrentContext
    sd	$gp,16($sp)
    lw	$at,__glBeginMode
    # Line 643
    lui	$v1,0x11
    addiu	$v1,$v1,-16508
    # Line 645
    beq	$at,$v0,.L0daf2824
    # Line 643
    addu	$gp,$t9,$v1
    # Line 645
    lui	$a2,0x1
    addu	$a2,$s0,$a2
    lw	$a1,-28068($a2)
    beqz	$a1,.L0daf2760
    # Line 659
    nop	# was lw $t9, -18380($gp) # &__glMgrim_RasterPos4iv
    # Line 645
    lbu	$at,-28064($a2)
    beqz	$at,.L0daf2780
    sd	$ra,32($sp)
    # Line 659
    # lw $t9, -18380($gp) # &__glMgrim_RasterPos4iv
.L0daf2760:
    sd	$ra,32($sp)
    jal	__glMgrim_RasterPos4iv
    nop
    ld	$ra,32($sp)
.L0daf2770:
    ld	$gp,16($sp)
    # Line 660
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daf2780:
    # Line 651
    # lw $t9, -25660($gp) # &__glim_RasterPos4iv
    jal	__glim_RasterPos4iv
    nop
    # Line 652
    lw	$a3,3372($s0)
    mtc1	$a3,$f6
    nop
    cvt.s.w	$f6,$f6
    lwc1	$f5,344($s0)
    sub.s	$f5,$f5,$f6
    trunc.w.s	$f5,$f5
    mfc1	$a2,$f5
    nop
    sw	$a2,0($sp)
    # Line 653
    lw	$a1,3376($s0)
    mtc1	$a1,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f3,348($s0)
    sub.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$a0,$f3
    nop
    sw	$a0,4($sp)
    # Line 654
    lwc1	$f2,1644($s0)
    lwc1	$f1,352($s0)
    sub.s	$f1,$f1,$f2
    lwc1	$f2,1640($s0)
    div.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    nop
    sw	$v1,8($sp)
    # Line 656
    lwc1	$f0,356($s0)
    trunc.w.s	$f0,$f0
    # Line 657
    # lw $t9, -18380($gp) # &__glMgrim_RasterPos4iv
    # Line 656
    mfc1	$v0,$f0
    # Line 657
    addiu	$a0,$sp,0
    jal	__glMgrim_RasterPos4iv
    # Line 656
    sw	$v0,12($sp)
    b	.L0daf2770
    ld	$ra,32($sp)
.L0daf2824:
    # Line 645
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_SoftRasterPos4iv

# Function: __glMgrim_SoftRasterPos4sv
# Declared: Line 663 (Source lines: 663-680)
# Address: 0x0daf2848 - 0x0daf297c (Size: 308 bytes, Frame: 48)
.globl __glMgrim_SoftRasterPos4sv
.ent __glMgrim_SoftRasterPos4sv
__glMgrim_SoftRasterPos4sv:
    # Line 665
    li	$v0,1
    # Line 663
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    # Line 665
    lw	$s0,__glCurrentContext
    sd	$gp,8($sp)
    lw	$at,__glBeginMode
    # Line 663
    lui	$v1,0x11
    addiu	$v1,$v1,-16816
    # Line 665
    beq	$at,$v0,.L0daf2958
    # Line 663
    addu	$gp,$t9,$v1
    # Line 665
    lui	$a2,0x1
    addu	$a2,$s0,$a2
    lw	$a1,-28068($a2)
    beqz	$a1,.L0daf2894
    # Line 679
    nop	# was lw $t9, -18372($gp) # &__glMgrim_RasterPos4sv
    # Line 665
    lbu	$at,-28064($a2)
    beqz	$at,.L0daf28b4
    sd	$ra,24($sp)
    # Line 679
    # lw $t9, -18372($gp) # &__glMgrim_RasterPos4sv
.L0daf2894:
    sd	$ra,24($sp)
    jal	__glMgrim_RasterPos4sv
    nop
    ld	$ra,24($sp)
.L0daf28a4:
    ld	$gp,8($sp)
    # Line 680
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0daf28b4:
    # Line 671
    # lw $t9, -25652($gp) # &__glim_RasterPos4sv
    jal	__glim_RasterPos4sv
    nop
    # Line 672
    lw	$a3,3372($s0)
    mtc1	$a3,$f6
    nop
    cvt.s.w	$f6,$f6
    lwc1	$f5,344($s0)
    sub.s	$f5,$f5,$f6
    trunc.w.s	$f5,$f5
    mfc1	$a2,$f5
    nop
    sh	$a2,0($sp)
    # Line 673
    lw	$a1,3376($s0)
    mtc1	$a1,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f3,348($s0)
    sub.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$a0,$f3
    nop
    sh	$a0,2($sp)
    # Line 674
    lwc1	$f2,1644($s0)
    lwc1	$f1,352($s0)
    sub.s	$f1,$f1,$f2
    lwc1	$f2,1640($s0)
    div.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    nop
    sh	$v1,4($sp)
    # Line 676
    lwc1	$f0,356($s0)
    trunc.w.s	$f0,$f0
    # Line 677
    # lw $t9, -18372($gp) # &__glMgrim_RasterPos4sv
    # Line 676
    mfc1	$v0,$f0
    # Line 677
    addiu	$a0,$sp,0
    jal	__glMgrim_RasterPos4sv
    # Line 676
    sh	$v0,6($sp)
    b	.L0daf28a4
    ld	$ra,24($sp)
.L0daf2958:
    # Line 665
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_SoftRasterPos4sv

