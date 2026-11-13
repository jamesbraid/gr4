# Source: ../MGRAS/mgras_prim.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_prim.c
# Total Functions: 23

.text

# Function: __glMgrBeginPoints
# Declared: Line 33 (Source lines: 34-39)
# Address: 0x0da9010c - 0x0da90134 (Size: 40 bytes, Frame: 0)
.globl __glMgrBeginPoints
.ent __glMgrBeginPoints
__glMgrBeginPoints:
    # Line 38
    li	$v1,5632
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 34
    lui	$a2,0x17
    addiu	$a2,$a2,-6772
    addu	$at,$t9,$a2
    # Line 37
    la	$v0,__glMgrEndPoints
    # Line 38
    sw	$v1,0($a1)
    # Line 39
    jr	$ra
    # Line 37
    sw	$v0,12140($a0)
.end __glMgrBeginPoints

# Function: __glMgrBeginLines
# Declared: Line 42 (Source lines: 43-48)
# Address: 0x0da90134 - 0x0da9015c (Size: 40 bytes, Frame: 0)
.globl __glMgrBeginLines
.ent __glMgrBeginLines
__glMgrBeginLines:
    # Line 47
    li	$v1,5888
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 43
    lui	$a2,0x17
    addiu	$a2,$a2,-6812
    addu	$at,$t9,$a2
    # Line 46
    la	$v0,__glMgrEndLines
    # Line 47
    sw	$v1,0($a1)
    # Line 48
    jr	$ra
    # Line 46
    sw	$v0,12140($a0)
.end __glMgrBeginLines

# Function: __glMgrBeginLStrip
# Declared: Line 51 (Source lines: 52-57)
# Address: 0x0da9015c - 0x0da90184 (Size: 40 bytes, Frame: 0)
.globl __glMgrBeginLStrip
.ent __glMgrBeginLStrip
__glMgrBeginLStrip:
    # Line 56
    li	$v1,6144
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 52
    lui	$a2,0x17
    addiu	$a2,$a2,-6852
    addu	$at,$t9,$a2
    # Line 55
    la	$v0,__glMgrEndLStrip
    # Line 56
    sw	$v1,0($a1)
    # Line 57
    jr	$ra
    # Line 55
    sw	$v0,12140($a0)
.end __glMgrBeginLStrip

# Function: __glMgrBeginLLoop
# Declared: Line 60 (Source lines: 61-66)
# Address: 0x0da90184 - 0x0da901ac (Size: 40 bytes, Frame: 0)
.globl __glMgrBeginLLoop
.ent __glMgrBeginLLoop
__glMgrBeginLLoop:
    # Line 65
    li	$v1,6400
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 61
    lui	$a2,0x17
    addiu	$a2,$a2,-6892
    addu	$at,$t9,$a2
    # Line 64
    la	$v0,__glMgrEndLLoop
    # Line 65
    sw	$v1,0($a1)
    # Line 66
    jr	$ra
    # Line 64
    sw	$v0,12140($a0)
.end __glMgrBeginLLoop

# Function: __glMgrBeginTriangles
# Declared: Line 69 (Source lines: 70-75)
# Address: 0x0da901ac - 0x0da901d4 (Size: 40 bytes, Frame: 0)
.globl __glMgrBeginTriangles
.ent __glMgrBeginTriangles
__glMgrBeginTriangles:
    # Line 74
    li	$v1,6656
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 70
    lui	$a2,0x17
    addiu	$a2,$a2,-6932
    addu	$at,$t9,$a2
    # Line 73
    la	$v0,__glMgrEndTriangles
    # Line 74
    sw	$v1,0($a1)
    # Line 75
    jr	$ra
    # Line 73
    sw	$v0,12140($a0)
.end __glMgrBeginTriangles

# Function: __glMgrBeginTStrip
# Declared: Line 77 (Source lines: 78-83)
# Address: 0x0da901d4 - 0x0da901fc (Size: 40 bytes, Frame: 0)
.globl __glMgrBeginTStrip
.ent __glMgrBeginTStrip
__glMgrBeginTStrip:
    # Line 82
    li	$v1,6912
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 78
    lui	$a2,0x17
    addiu	$a2,$a2,-6972
    addu	$at,$t9,$a2
    # Line 81
    la	$v0,__glMgrEndTStrip
    # Line 82
    sw	$v1,0($a1)
    # Line 83
    jr	$ra
    # Line 81
    sw	$v0,12140($a0)
.end __glMgrBeginTStrip

# Function: __glMgrBeginTFan
# Declared: Line 85 (Source lines: 86-91)
# Address: 0x0da901fc - 0x0da90224 (Size: 40 bytes, Frame: 0)
.globl __glMgrBeginTFan
.ent __glMgrBeginTFan
__glMgrBeginTFan:
    # Line 90
    li	$v1,7168
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 86
    lui	$a2,0x17
    addiu	$a2,$a2,-7012
    addu	$at,$t9,$a2
    # Line 89
    la	$v0,__glMgrEndTFan
    # Line 90
    sw	$v1,0($a1)
    # Line 91
    jr	$ra
    # Line 89
    sw	$v0,12140($a0)
.end __glMgrBeginTFan

# Function: __glMgrBeginQuads
# Declared: Line 94 (Source lines: 95-100)
# Address: 0x0da90224 - 0x0da9024c (Size: 40 bytes, Frame: 0)
.globl __glMgrBeginQuads
.ent __glMgrBeginQuads
__glMgrBeginQuads:
    # Line 99
    li	$v1,7424
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 95
    lui	$a2,0x17
    addiu	$a2,$a2,-7052
    addu	$at,$t9,$a2
    # Line 98
    la	$v0,__glMgrEndQuads
    # Line 99
    sw	$v1,0($a1)
    # Line 100
    jr	$ra
    # Line 98
    sw	$v0,12140($a0)
.end __glMgrBeginQuads

# Function: __glMgrBeginQStrip
# Declared: Line 103 (Source lines: 104-109)
# Address: 0x0da9024c - 0x0da90274 (Size: 40 bytes, Frame: 0)
.globl __glMgrBeginQStrip
.ent __glMgrBeginQStrip
__glMgrBeginQStrip:
    # Line 108
    li	$v1,7680
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 104
    lui	$a2,0x17
    addiu	$a2,$a2,-7092
    addu	$at,$t9,$a2
    # Line 107
    la	$v0,__glMgrEndQStrip
    # Line 108
    sw	$v1,0($a1)
    # Line 109
    jr	$ra
    # Line 107
    sw	$v0,12140($a0)
.end __glMgrBeginQStrip

# Function: __glMgrBeginPolygon
# Declared: Line 112 (Source lines: 113-118)
# Address: 0x0da90274 - 0x0da9029c (Size: 40 bytes, Frame: 0)
.globl __glMgrBeginPolygon
.ent __glMgrBeginPolygon
__glMgrBeginPolygon:
    # Line 117
    li	$v1,7936
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 113
    lui	$a2,0x17
    addiu	$a2,$a2,-7132
    addu	$at,$t9,$a2
    # Line 116
    la	$v0,__glMgrEndPolygon
    # Line 117
    sw	$v1,0($a1)
    # Line 118
    jr	$ra
    # Line 116
    sw	$v0,12140($a0)
.end __glMgrBeginPolygon

# Function: __glMgrEndPoints
# Declared: Line 121 (Source lines: 122-127)
# Address: 0x0da9029c - 0x0da902c4 (Size: 40 bytes, Frame: 0)
.globl __glMgrEndPoints
.ent __glMgrEndPoints
__glMgrEndPoints:
    # Line 126
    li	$v1,8192
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 122
    lui	$a2,0x17
    addiu	$a2,$a2,-7172
    addu	$at,$t9,$a2
    # Line 125
    la	$v0,__glNop
    # Line 126
    sw	$v1,0($a1)
    # Line 127
    jr	$ra
    # Line 125
    sw	$v0,12140($a0)
.end __glMgrEndPoints

# Function: __glMgrEndLines
# Declared: Line 130 (Source lines: 131-136)
# Address: 0x0da902c4 - 0x0da902ec (Size: 40 bytes, Frame: 0)
.globl __glMgrEndLines
.ent __glMgrEndLines
__glMgrEndLines:
    # Line 135
    li	$v1,8448
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 131
    lui	$a2,0x17
    addiu	$a2,$a2,-7212
    addu	$at,$t9,$a2
    # Line 134
    la	$v0,__glNop
    # Line 135
    sw	$v1,0($a1)
    # Line 136
    jr	$ra
    # Line 134
    sw	$v0,12140($a0)
.end __glMgrEndLines

# Function: __glMgrEndLStrip
# Declared: Line 139 (Source lines: 140-145)
# Address: 0x0da902ec - 0x0da90314 (Size: 40 bytes, Frame: 0)
.globl __glMgrEndLStrip
.ent __glMgrEndLStrip
__glMgrEndLStrip:
    # Line 144
    li	$v1,8704
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 140
    lui	$a2,0x17
    addiu	$a2,$a2,-7252
    addu	$at,$t9,$a2
    # Line 143
    la	$v0,__glNop
    # Line 144
    sw	$v1,0($a1)
    # Line 145
    jr	$ra
    # Line 143
    sw	$v0,12140($a0)
.end __glMgrEndLStrip

# Function: __glMgrEndLLoop
# Declared: Line 148 (Source lines: 149-154)
# Address: 0x0da90314 - 0x0da9033c (Size: 40 bytes, Frame: 0)
.globl __glMgrEndLLoop
.ent __glMgrEndLLoop
__glMgrEndLLoop:
    # Line 153
    li	$v1,8960
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 149
    lui	$a2,0x17
    addiu	$a2,$a2,-7292
    addu	$at,$t9,$a2
    # Line 152
    la	$v0,__glNop
    # Line 153
    sw	$v1,0($a1)
    # Line 154
    jr	$ra
    # Line 152
    sw	$v0,12140($a0)
.end __glMgrEndLLoop

# Function: __glMgrEndTriangles
# Declared: Line 157 (Source lines: 158-163)
# Address: 0x0da9033c - 0x0da90364 (Size: 40 bytes, Frame: 0)
.globl __glMgrEndTriangles
.ent __glMgrEndTriangles
__glMgrEndTriangles:
    # Line 162
    li	$v1,9216
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 158
    lui	$a2,0x17
    addiu	$a2,$a2,-7332
    addu	$at,$t9,$a2
    # Line 161
    la	$v0,__glNop
    # Line 162
    sw	$v1,0($a1)
    # Line 163
    jr	$ra
    # Line 161
    sw	$v0,12140($a0)
.end __glMgrEndTriangles

# Function: __glMgrEndTStrip
# Declared: Line 166 (Source lines: 167-172)
# Address: 0x0da90364 - 0x0da9038c (Size: 40 bytes, Frame: 0)
.globl __glMgrEndTStrip
.ent __glMgrEndTStrip
__glMgrEndTStrip:
    # Line 171
    li	$v1,9472
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 167
    lui	$a2,0x17
    addiu	$a2,$a2,-7372
    addu	$at,$t9,$a2
    # Line 170
    la	$v0,__glNop
    # Line 171
    sw	$v1,0($a1)
    # Line 172
    jr	$ra
    # Line 170
    sw	$v0,12140($a0)
.end __glMgrEndTStrip

# Function: __glMgrEndTFan
# Declared: Line 175 (Source lines: 176-181)
# Address: 0x0da9038c - 0x0da903b4 (Size: 40 bytes, Frame: 0)
.globl __glMgrEndTFan
.ent __glMgrEndTFan
__glMgrEndTFan:
    # Line 180
    li	$v1,9728
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 176
    lui	$a2,0x17
    addiu	$a2,$a2,-7412
    addu	$at,$t9,$a2
    # Line 179
    la	$v0,__glNop
    # Line 180
    sw	$v1,0($a1)
    # Line 181
    jr	$ra
    # Line 179
    sw	$v0,12140($a0)
.end __glMgrEndTFan

# Function: __glMgrEndQuads
# Declared: Line 184 (Source lines: 185-190)
# Address: 0x0da903b4 - 0x0da903dc (Size: 40 bytes, Frame: 0)
.globl __glMgrEndQuads
.ent __glMgrEndQuads
__glMgrEndQuads:
    # Line 189
    li	$v1,9984
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 185
    lui	$a2,0x17
    addiu	$a2,$a2,-7452
    addu	$at,$t9,$a2
    # Line 188
    la	$v0,__glNop
    # Line 189
    sw	$v1,0($a1)
    # Line 190
    jr	$ra
    # Line 188
    sw	$v0,12140($a0)
.end __glMgrEndQuads

# Function: __glMgrEndQStrip
# Declared: Line 193 (Source lines: 194-199)
# Address: 0x0da903dc - 0x0da90404 (Size: 40 bytes, Frame: 0)
.globl __glMgrEndQStrip
.ent __glMgrEndQStrip
__glMgrEndQStrip:
    # Line 198
    li	$v1,10240
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 194
    lui	$a2,0x17
    addiu	$a2,$a2,-7492
    addu	$at,$t9,$a2
    # Line 197
    la	$v0,__glNop
    # Line 198
    sw	$v1,0($a1)
    # Line 199
    jr	$ra
    # Line 197
    sw	$v0,12140($a0)
.end __glMgrEndQStrip

# Function: __glMgrEndPolygon
# Declared: Line 202 (Source lines: 203-208)
# Address: 0x0da90404 - 0x0da9042c (Size: 40 bytes, Frame: 0)
.globl __glMgrEndPolygon
.ent __glMgrEndPolygon
__glMgrEndPolygon:
    # Line 207
    li	$v1,10496
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 203
    lui	$a2,0x17
    addiu	$a2,$a2,-7532
    addu	$at,$t9,$a2
    # Line 206
    la	$v0,__glNop
    # Line 207
    sw	$v1,0($a1)
    # Line 208
    jr	$ra
    # Line 206
    sw	$v0,12140($a0)
.end __glMgrEndPolygon

# Function: __glMgrEndGeneric
# Declared: Line 211 (Source lines: 212-217)
# Address: 0x0da9042c - 0x0da90454 (Size: 40 bytes, Frame: 0)
.globl __glMgrEndGeneric
.ent __glMgrEndGeneric
__glMgrEndGeneric:
    # Line 216
    li	$v1,0xcc00
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 212
    lui	$a2,0x17
    addiu	$a2,$a2,-7572
    addu	$at,$t9,$a2
    # Line 215
    la	$v0,__glNop
    # Line 216
    sw	$v1,0($a1)
    # Line 217
    jr	$ra
    # Line 215
    sw	$v0,12140($a0)
.end __glMgrEndGeneric

# Function: __glMgrim_Begin
# Declared: Line 220 (Source lines: 221-247)
# Address: 0x0da90454 - 0x0da905ac (Size: 344 bytes, Frame: 192)
.globl __glMgrim_Begin
.ent __glMgrim_Begin
__glMgrim_Begin:
    # Line 221
    addiu	$sp,$sp,-64
    sd	$s0,16($sp)
    # Line 223
    lw	$s0,__glCurrentContext
    sd	$s1,8($sp)
    # Line 221
    move	$s1,$a0
    sd	$gp,0($sp)
    # Line 223
    lw	$at,__glBeginMode
    # Line 221
    lui	$v0,0x17
    addiu	$v0,$v0,-7612
    # Line 223
    andi	$at,$at,0x1
    beqz	$at,.L0da904ac
    # Line 221
    addu	$gp,$t9,$v0
    # Line 228
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,0($sp)
    # Line 229
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da904ac:
    sltiu	$v1,$s1,10
    beqz	$v1,.L0da90560
    # Line 234
    lui	$a3,0x1
    addu	$a3,$s0,$a3
    lw	$a0,-30164($a3)
    beqz	$a0,.L0da904f0
    sd	$ra,24($sp)
    lw	$a1,196($a0)
    beqz	$a1,.L0da90588
.L0da904d0:
    # Line 238
    la	$at,MgrasPrevVidTexture
    lw	$at,0($at)
    bnezl	$at,.L0da90524
    sd	$a3,32($sp)
.L0da904e0:
    # Line 240
    lw	$v0,-28164($a3)
    lw	$v0,484($v0)
    bne	$v0,$a1,.L0da9054c
    sd	$ra,24($sp)
.L0da904f0:
    # Line 246
    sll	$t9,$s1,0x2
.L0da904f4:
    # Line 245
    li	$ra,1
    sw	$ra,__glBeginMode
    # Line 246
    addu	$t9,$t9,$s0
    lw	$t9,12100($t9)
    jalr	$t9
    move	$a0,$s0
    ld	$gp,0($sp)
    # Line 247
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da90524:
    # Line 240
    # lw $t9, -30748($gp) # &mgrTM_VidTexWait
    move	$a0,$s0
    sd	$ra,24($sp)
    jal	mgrTM_VidTexWait
    li	$a2,1
    ld	$a3,32($sp)
    lw	$a1,-30164($a3)
    ld	$ra,24($sp)
    b	.L0da904e0
    lw	$a1,196($a1)
.L0da9054c:
    # Line 242
    # lw $t9, -30744($gp) # &mgrTM_DrawSetup
    jal	mgrTM_DrawSetup
    move	$a0,$s0
    b	.L0da904f4
    # Line 246
    sll	$t9,$s1,0x2
.L0da90560:
    # Line 233
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,0($sp)
    # Line 234
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da90588:
    # Line 238
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    sd	$ra,24($sp)
    jal	mgrTM_RefreshDim
    sd	$a3,32($sp)
    ld	$a3,32($sp)
    lw	$a1,-30164($a3)
    ld	$ra,24($sp)
    b	.L0da904d0
    lw	$a1,196($a1)
.end __glMgrim_Begin

# Function: __glMgrim_End
# Declared: Line 250 (Source lines: 251-263)
# Address: 0x0da905ac - 0x0da9060c (Size: 96 bytes, Frame: 16)
.globl __glMgrim_End
.ent __glMgrim_End
__glMgrim_End:
    # Line 253
    lw	$a0,__glCurrentContext
    # Line 251
    addiu	$sp,$sp,-16
    sd	$ra,8($sp)
    sd	$gp,0($sp)
    # Line 253
    lw	$at,__glBeginMode
    # Line 251
    lui	$v0,0x17
    addiu	$v0,$v0,-7956
    # Line 253
    beqz	$at,.L0da905f0
    # Line 251
    addu	$gp,$t9,$v0
    # Line 261
    lw	$t9,12140($a0)
    jalr	$t9
    nop
    # Line 263
    ld	$ra,8($sp)
    # Line 262
    sw	$zero,__glBeginMode
    ld	$gp,0($sp)
    # Line 263
    jr	$ra
    addiu	$sp,$sp,16
.L0da905f0:
    # Line 257
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 258
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glMgrim_End

