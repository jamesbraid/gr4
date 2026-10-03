# Source: ../MGRAS/mgras_xform.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_xform.c
# Total Functions: 20

.text

# Function: __glMgrim_Scissor
# Declared: Line 31 (Source lines: 32-49)
# Address: 0x0da9a420 - 0x0da9a4d4 (Size: 180 bytes, Frame: 48)
.globl __glMgrim_Scissor
.ent __glMgrim_Scissor
__glMgrim_Scissor:
    # Line 34
    lw	$a5,__glCurrentContext
    # Line 45
    lui	$a6,0x7
    # Line 34
    li	$v0,1
    # Line 32
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 34
    lw	$at,__glBeginMode
    # Line 32
    lui	$v1,0x16
    addiu	$v1,$v1,17016
    # Line 34
    beq	$at,$v0,.L0da9a4b4
    # Line 32
    addu	$gp,$t9,$v1
    # Line 36
    bltz	$a2,.L0da9a494
    # Line 45
    li	$v0,14608
    # Line 36
    bltz	$a3,.L0da9a498
    # Line 37
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 43
    sw	$a3,2424($a5)
    # Line 42
    sw	$a2,2420($a5)
    # Line 41
    sw	$a1,2416($a5)
    # Line 40
    sw	$a0,2412($a5)
    ld	$gp,0($sp)
    # Line 49
    addiu	$sp,$sp,48
    # Line 48
    addiu	$a4,$a3,-1
    # Line 46
    addiu	$at,$a2,-1
    # Line 45
    ori	$a6,$a6,0x4080
    sw	$v0,0($a6)
    sw	$a0,0($a6)
    # Line 46
    sw	$at,0($a6)
    # Line 47
    sw	$a1,0($a6)
    # Line 49
    jr	$ra
    # Line 48
    sw	$a4,0($a6)
.L0da9a494:
    # Line 37
    # lw $t9, -27320($gp) # &__glSetError
.L0da9a498:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 38
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da9a4b4:
    # Line 34
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_Scissor

# Function: __glMgrim_ClipPlane
# Declared: Line 62 (Source lines: 63-80)
# Address: 0x0da9a4d4 - 0x0da9a5a4 (Size: 208 bytes, Frame: 32)
.globl __glMgrim_ClipPlane
.ent __glMgrim_ClipPlane
__glMgrim_ClipPlane:
    # Line 63
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x16
    addiu	$v1,$v1,16836
    beq	$at,$v0,.L0da9a584
    addu	$gp,$t9,$v1
    # Line 67
    sltiu	$a2,$a0,12288
    bnez	$a2,.L0da9a568
    # Line 70
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 67
    lw	$at,__glCurrentContext
    lw	$at,3332($at)
    addiu	$v0,$a0,-12288
    sltu	$at,$at,$v0
    bnez	$at,.L0da9a564
    # Line 74
    lui	$v0,0x7
    # Line 76
    ldc1	$f3,0($a1)
    # Line 74
    ori	$v0,$v0,0x4080
    # Line 76
    cvt.s.d	$f3,$f3
    # Line 74
    li	$v1,0xa514
    sw	$v1,0($v0)
    # Line 75
    sw	$a0,0($v0)
    # Line 76
    swc1	$f3,0($v0)
    # Line 77
    ldc1	$f2,8($a1)
    cvt.s.d	$f2,$f2
    swc1	$f2,0($v0)
    # Line 78
    ldc1	$f1,16($a1)
    cvt.s.d	$f1,$f1
    swc1	$f1,0($v0)
    # Line 79
    ldc1	$f0,24($a1)
    cvt.s.d	$f0,$f0
    ld	$gp,0($sp)
    # Line 80
    addiu	$sp,$sp,32
    jr	$ra
    # Line 79
    swc1	$f0,0($v0)
.L0da9a564:
    # Line 70
    # lw $t9, -27320($gp) # &__glSetError
.L0da9a568:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 71
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da9a584:
    # Line 65
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_ClipPlane

# Function: __glMgrim_PassClipPlane
# Declared: Line 85 (Source lines: 86-95)
# Address: 0x0da9a5a4 - 0x0da9a5ec (Size: 72 bytes, Frame: 32)
.globl __glMgrim_PassClipPlane
.ent __glMgrim_PassClipPlane
__glMgrim_PassClipPlane:
    # Line 86
    addiu	$sp,$sp,-32
    sd	$a2,16($sp)
    # Line 94
    lwc1	$f0,20($sp)
    # Line 86
    sd	$a1,8($sp)
    # Line 93
    lwc1	$f1,16($sp)
    # Line 92
    lwc1	$f2,12($sp)
    # Line 91
    lwc1	$f3,8($sp)
    # Line 95
    addiu	$sp,$sp,32
    # Line 89
    li	$v0,0xa514
    lui	$at,0x7
    ori	$at,$at,0x4080
    sw	$v0,0($at)
    # Line 90
    sw	$a0,0($at)
    # Line 91
    swc1	$f3,0($at)
    # Line 92
    swc1	$f2,0($at)
    # Line 93
    swc1	$f1,0($at)
    # Line 95
    jr	$ra
    # Line 94
    swc1	$f0,0($at)
.end __glMgrim_PassClipPlane

# Function: __glMgrim_MultMatrixf
# Declared: Line 109 (Source lines: 110-131)
# Address: 0x0da9a5ec - 0x0da9a6c8 (Size: 220 bytes, Frame: 32)
.globl __glMgrim_MultMatrixf
.ent __glMgrim_MultMatrixf
__glMgrim_MultMatrixf:
    # Line 110
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x16
    addiu	$v1,$v1,16556
    beq	$at,$v0,.L0da9a6a8
    addu	$gp,$t9,$v1
    # Line 114
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 115
    lwc1	$f0,0($a0)
    # Line 114
    li	$at,11584
    sw	$at,0($a1)
    # Line 115
    swc1	$f0,0($a1)
    # Line 116
    lwc1	$f4,4($a0)
    swc1	$f4,0($a1)
    # Line 117
    lwc1	$f3,8($a0)
    swc1	$f3,0($a1)
    # Line 118
    lwc1	$f2,12($a0)
    swc1	$f2,0($a1)
    # Line 119
    lwc1	$f1,16($a0)
    swc1	$f1,0($a1)
    # Line 120
    lwc1	$f0,20($a0)
    swc1	$f0,0($a1)
    # Line 121
    lwc1	$f4,24($a0)
    swc1	$f4,0($a1)
    # Line 122
    lwc1	$f3,28($a0)
    swc1	$f3,0($a1)
    # Line 123
    lwc1	$f2,32($a0)
    swc1	$f2,0($a1)
    # Line 124
    lwc1	$f1,36($a0)
    swc1	$f1,0($a1)
    # Line 125
    lwc1	$f0,40($a0)
    swc1	$f0,0($a1)
    # Line 126
    lwc1	$f4,44($a0)
    swc1	$f4,0($a1)
    # Line 127
    lwc1	$f3,48($a0)
    swc1	$f3,0($a1)
    # Line 128
    lwc1	$f2,52($a0)
    swc1	$f2,0($a1)
    # Line 129
    lwc1	$f1,56($a0)
    swc1	$f1,0($a1)
    ld	$gp,0($sp)
    # Line 130
    lwc1	$f0,60($a0)
    # Line 131
    addiu	$sp,$sp,32
    jr	$ra
    # Line 130
    swc1	$f0,0($a1)
.L0da9a6a8:
    # Line 112
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_MultMatrixf

# Function: __glMgrim_MultMatrixd
# Declared: Line 143 (Source lines: 144-172)
# Address: 0x0da9a6c8 - 0x0da9a7e4 (Size: 284 bytes, Frame: 32)
.globl __glMgrim_MultMatrixd
.ent __glMgrim_MultMatrixd
__glMgrim_MultMatrixd:
    # Line 144
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x16
    addiu	$v1,$v1,16336
    beq	$at,$v0,.L0da9a7c4
    addu	$gp,$t9,$v1
    # Line 155
    lui	$a1,0x7
    # Line 156
    ldc1	$f0,0($a0)
    cvt.s.d	$f0,$f0
    # Line 155
    ori	$a1,$a1,0x4080
    li	$at,11584
    sw	$at,0($a1)
    # Line 156
    swc1	$f0,0($a1)
    # Line 157
    ldc1	$f4,8($a0)
    cvt.s.d	$f4,$f4
    swc1	$f4,0($a1)
    # Line 158
    ldc1	$f3,16($a0)
    cvt.s.d	$f3,$f3
    swc1	$f3,0($a1)
    # Line 159
    ldc1	$f2,24($a0)
    cvt.s.d	$f2,$f2
    swc1	$f2,0($a1)
    # Line 160
    ldc1	$f1,32($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,0($a1)
    # Line 161
    ldc1	$f0,40($a0)
    cvt.s.d	$f0,$f0
    swc1	$f0,0($a1)
    # Line 162
    ldc1	$f4,48($a0)
    cvt.s.d	$f4,$f4
    swc1	$f4,0($a1)
    # Line 163
    ldc1	$f3,56($a0)
    cvt.s.d	$f3,$f3
    swc1	$f3,0($a1)
    # Line 164
    ldc1	$f2,64($a0)
    cvt.s.d	$f2,$f2
    swc1	$f2,0($a1)
    # Line 165
    ldc1	$f1,72($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,0($a1)
    # Line 166
    ldc1	$f0,80($a0)
    cvt.s.d	$f0,$f0
    swc1	$f0,0($a1)
    # Line 167
    ldc1	$f4,88($a0)
    cvt.s.d	$f4,$f4
    swc1	$f4,0($a1)
    # Line 168
    ldc1	$f3,96($a0)
    cvt.s.d	$f3,$f3
    swc1	$f3,0($a1)
    # Line 169
    ldc1	$f2,104($a0)
    cvt.s.d	$f2,$f2
    swc1	$f2,0($a1)
    # Line 170
    ldc1	$f1,112($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,0($a1)
    # Line 171
    ldc1	$f0,120($a0)
    cvt.s.d	$f0,$f0
    ld	$gp,0($sp)
    # Line 172
    addiu	$sp,$sp,32
    jr	$ra
    # Line 171
    swc1	$f0,0($a1)
.L0da9a7c4:
    # Line 146
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_MultMatrixd

# Function: __glMgrim_LoadMatrixf
# Declared: Line 183 (Source lines: 184-205)
# Address: 0x0da9a7e4 - 0x0da9a8c0 (Size: 220 bytes, Frame: 32)
.globl __glMgrim_LoadMatrixf
.ent __glMgrim_LoadMatrixf
__glMgrim_LoadMatrixf:
    # Line 184
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x16
    addiu	$v1,$v1,16052
    beq	$at,$v0,.L0da9a8a0
    addu	$gp,$t9,$v1
    # Line 188
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 189
    lwc1	$f0,0($a0)
    # Line 188
    li	$at,11072
    sw	$at,0($a1)
    # Line 189
    swc1	$f0,0($a1)
    # Line 190
    lwc1	$f4,4($a0)
    swc1	$f4,0($a1)
    # Line 191
    lwc1	$f3,8($a0)
    swc1	$f3,0($a1)
    # Line 192
    lwc1	$f2,12($a0)
    swc1	$f2,0($a1)
    # Line 193
    lwc1	$f1,16($a0)
    swc1	$f1,0($a1)
    # Line 194
    lwc1	$f0,20($a0)
    swc1	$f0,0($a1)
    # Line 195
    lwc1	$f4,24($a0)
    swc1	$f4,0($a1)
    # Line 196
    lwc1	$f3,28($a0)
    swc1	$f3,0($a1)
    # Line 197
    lwc1	$f2,32($a0)
    swc1	$f2,0($a1)
    # Line 198
    lwc1	$f1,36($a0)
    swc1	$f1,0($a1)
    # Line 199
    lwc1	$f0,40($a0)
    swc1	$f0,0($a1)
    # Line 200
    lwc1	$f4,44($a0)
    swc1	$f4,0($a1)
    # Line 201
    lwc1	$f3,48($a0)
    swc1	$f3,0($a1)
    # Line 202
    lwc1	$f2,52($a0)
    swc1	$f2,0($a1)
    # Line 203
    lwc1	$f1,56($a0)
    swc1	$f1,0($a1)
    ld	$gp,0($sp)
    # Line 204
    lwc1	$f0,60($a0)
    # Line 205
    addiu	$sp,$sp,32
    jr	$ra
    # Line 204
    swc1	$f0,0($a1)
.L0da9a8a0:
    # Line 186
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_LoadMatrixf

# Function: __glMgrim_LoadMatrixd
# Declared: Line 216 (Source lines: 217-245)
# Address: 0x0da9a8c0 - 0x0da9a9dc (Size: 284 bytes, Frame: 32)
.globl __glMgrim_LoadMatrixd
.ent __glMgrim_LoadMatrixd
__glMgrim_LoadMatrixd:
    # Line 217
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x16
    addiu	$v1,$v1,15832
    beq	$at,$v0,.L0da9a9bc
    addu	$gp,$t9,$v1
    # Line 228
    lui	$a1,0x7
    # Line 229
    ldc1	$f0,0($a0)
    cvt.s.d	$f0,$f0
    # Line 228
    ori	$a1,$a1,0x4080
    li	$at,11072
    sw	$at,0($a1)
    # Line 229
    swc1	$f0,0($a1)
    # Line 230
    ldc1	$f4,8($a0)
    cvt.s.d	$f4,$f4
    swc1	$f4,0($a1)
    # Line 231
    ldc1	$f3,16($a0)
    cvt.s.d	$f3,$f3
    swc1	$f3,0($a1)
    # Line 232
    ldc1	$f2,24($a0)
    cvt.s.d	$f2,$f2
    swc1	$f2,0($a1)
    # Line 233
    ldc1	$f1,32($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,0($a1)
    # Line 234
    ldc1	$f0,40($a0)
    cvt.s.d	$f0,$f0
    swc1	$f0,0($a1)
    # Line 235
    ldc1	$f4,48($a0)
    cvt.s.d	$f4,$f4
    swc1	$f4,0($a1)
    # Line 236
    ldc1	$f3,56($a0)
    cvt.s.d	$f3,$f3
    swc1	$f3,0($a1)
    # Line 237
    ldc1	$f2,64($a0)
    cvt.s.d	$f2,$f2
    swc1	$f2,0($a1)
    # Line 238
    ldc1	$f1,72($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,0($a1)
    # Line 239
    ldc1	$f0,80($a0)
    cvt.s.d	$f0,$f0
    swc1	$f0,0($a1)
    # Line 240
    ldc1	$f4,88($a0)
    cvt.s.d	$f4,$f4
    swc1	$f4,0($a1)
    # Line 241
    ldc1	$f3,96($a0)
    cvt.s.d	$f3,$f3
    swc1	$f3,0($a1)
    # Line 242
    ldc1	$f2,104($a0)
    cvt.s.d	$f2,$f2
    swc1	$f2,0($a1)
    # Line 243
    ldc1	$f1,112($a0)
    cvt.s.d	$f1,$f1
    swc1	$f1,0($a1)
    # Line 244
    ldc1	$f0,120($a0)
    cvt.s.d	$f0,$f0
    ld	$gp,0($sp)
    # Line 245
    addiu	$sp,$sp,32
    jr	$ra
    # Line 244
    swc1	$f0,0($a1)
.L0da9a9bc:
    # Line 219
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_LoadMatrixd

# Function: __glMgrim_LoadIdentity
# Declared: Line 257 (Source lines: 257-262)
# Address: 0x0da9a9dc - 0x0da9aa38 (Size: 92 bytes, Frame: 16)
.globl __glMgrim_LoadIdentity
.ent __glMgrim_LoadIdentity
__glMgrim_LoadIdentity:
    # Line 261
    lui	$a1,0x7
    # Line 257
    li	$v0,1
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x16
    addiu	$v1,$v1,15548
    beq	$at,$v0,.L0da9aa18
    addu	$gp,$t9,$v1
    # Line 261
    ori	$a1,$a1,0x4080
    ld	$gp,0($sp)
    # Line 262
    addiu	$sp,$sp,16
    # Line 261
    li	$a0,11264
    # Line 262
    jr	$ra
    # Line 261
    sw	$a0,0($a1)
.L0da9aa18:
    # Line 259
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glMgrim_LoadIdentity

# Function: __glMgrim_Frustum
# Declared: Line 275 (Source lines: 278-298)
# Address: 0x0da9aa38 - 0x0da9ab2c (Size: 244 bytes, Frame: 192)
.globl __glMgrim_Frustum
.ent __glMgrim_Frustum
__glMgrim_Frustum:
    # Line 291
    lui	$a0,0x7
    # Line 278
    li	$v0,1
    addiu	$sp,$sp,-64
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x16
    addiu	$v1,$v1,15456
    beq	$at,$v0,.L0da9ab0c
    addu	$gp,$t9,$v1
    # Line 286
    sub.d	$f0,$f13,$f12
    cvt.s.d	$f0,$f0
    mtc1	$zero,$f4
    c.eq.s	$f0,$f4
    nop
    bc1t	.L0da9aaf0
    # Line 287
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 286
    sub.d	$f1,$f15,$f14
    cvt.s.d	$f1,$f1
    c.eq.s	$f1,$f4
    nop
    bc1t	.L0da9aaf0
    # Line 287
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 286
    sub.d	$f2,$f17,$f16
    cvt.s.d	$f2,$f2
    c.eq.s	$f2,$f4
    nop
    bc1t	.L0da9aaec
    # Line 291
    ori	$a0,$a0,0x4080
    # Line 297
    cvt.s.d	$f3,$f17
    # Line 296
    cvt.s.d	$f4,$f16
    # Line 295
    cvt.s.d	$f5,$f15
    # Line 294
    cvt.s.d	$f0,$f14
    # Line 292
    cvt.s.d	$f2,$f12
    ld	$gp,0($sp)
    # Line 298
    addiu	$sp,$sp,64
    # Line 293
    cvt.s.d	$f1,$f13
    # Line 291
    li	$a1,13336
    sw	$a1,0($a0)
    # Line 292
    swc1	$f2,0($a0)
    # Line 293
    swc1	$f1,0($a0)
    # Line 294
    swc1	$f0,0($a0)
    # Line 295
    swc1	$f5,0($a0)
    # Line 296
    swc1	$f4,0($a0)
    # Line 298
    jr	$ra
    # Line 297
    swc1	$f3,0($a0)
.L0da9aaec:
    # Line 287
    # lw $t9, -27320($gp) # &__glSetError
.L0da9aaf0:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 288
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da9ab0c:
    # Line 281
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_Frustum

# Function: __glMgrim_Ortho
# Declared: Line 310 (Source lines: 312-332)
# Address: 0x0da9ab2c - 0x0da9ac14 (Size: 232 bytes, Frame: 192)
.globl __glMgrim_Ortho
.ent __glMgrim_Ortho
__glMgrim_Ortho:
    # Line 325
    lui	$a0,0x7
    # Line 312
    li	$v0,1
    addiu	$sp,$sp,-64
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x16
    addiu	$v1,$v1,15212
    beq	$at,$v0,.L0da9abf4
    addu	$gp,$t9,$v1
    # Line 320
    sub.d	$f0,$f13,$f12
    dmtc1	$zero,$f4
    c.eq.d	$f0,$f4
    nop
    bc1t	.L0da9abd8
    # Line 321
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 320
    sub.d	$f1,$f15,$f14
    c.eq.d	$f1,$f4
    nop
    bc1t	.L0da9abd8
    # Line 321
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 320
    sub.d	$f2,$f17,$f16
    c.eq.d	$f2,$f4
    nop
    bc1t	.L0da9abd4
    # Line 325
    ori	$a0,$a0,0x4080
    # Line 331
    cvt.s.d	$f3,$f17
    # Line 330
    cvt.s.d	$f4,$f16
    # Line 329
    cvt.s.d	$f5,$f15
    # Line 328
    cvt.s.d	$f0,$f14
    # Line 326
    cvt.s.d	$f2,$f12
    ld	$gp,0($sp)
    # Line 332
    addiu	$sp,$sp,64
    # Line 327
    cvt.s.d	$f1,$f13
    # Line 325
    li	$a1,13592
    sw	$a1,0($a0)
    # Line 326
    swc1	$f2,0($a0)
    # Line 327
    swc1	$f1,0($a0)
    # Line 328
    swc1	$f0,0($a0)
    # Line 329
    swc1	$f5,0($a0)
    # Line 330
    swc1	$f4,0($a0)
    # Line 332
    jr	$ra
    # Line 331
    swc1	$f3,0($a0)
.L0da9abd4:
    # Line 321
    # lw $t9, -27320($gp) # &__glSetError
.L0da9abd8:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 322
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da9abf4:
    # Line 315
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_Ortho

# Function: __glMgrim_PopMatrix
# Declared: Line 345 (Source lines: 345-350)
# Address: 0x0da9ac14 - 0x0da9ac70 (Size: 92 bytes, Frame: 16)
.globl __glMgrim_PopMatrix
.ent __glMgrim_PopMatrix
__glMgrim_PopMatrix:
    # Line 349
    lui	$a1,0x7
    # Line 345
    li	$v0,1
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x16
    addiu	$v1,$v1,14980
    beq	$at,$v0,.L0da9ac50
    addu	$gp,$t9,$v1
    # Line 349
    ori	$a1,$a1,0x4080
    ld	$gp,0($sp)
    # Line 350
    addiu	$sp,$sp,16
    # Line 349
    li	$a0,11776
    # Line 350
    jr	$ra
    # Line 349
    sw	$a0,0($a1)
.L0da9ac50:
    # Line 347
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glMgrim_PopMatrix

# Function: __glMgrim_PushMatrix
# Declared: Line 363 (Source lines: 363-368)
# Address: 0x0da9ac70 - 0x0da9accc (Size: 92 bytes, Frame: 16)
.globl __glMgrim_PushMatrix
.ent __glMgrim_PushMatrix
__glMgrim_PushMatrix:
    # Line 367
    lui	$a1,0x7
    # Line 363
    li	$v0,1
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x16
    addiu	$v1,$v1,14888
    beq	$at,$v0,.L0da9acac
    addu	$gp,$t9,$v1
    # Line 367
    ori	$a1,$a1,0x4080
    ld	$gp,0($sp)
    # Line 368
    addiu	$sp,$sp,16
    # Line 367
    li	$a0,12032
    # Line 368
    jr	$ra
    # Line 367
    sw	$a0,0($a1)
.L0da9acac:
    # Line 365
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glMgrim_PushMatrix

# Function: __glMgrim_Rotated
# Declared: Line 381 (Source lines: 381-390)
# Address: 0x0da9accc - 0x0da9ad48 (Size: 124 bytes, Frame: 48)
.globl __glMgrim_Rotated
.ent __glMgrim_Rotated
__glMgrim_Rotated:
    # Line 385
    lui	$a0,0x7
    # Line 381
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x16
    addiu	$v1,$v1,14796
    beq	$at,$v0,.L0da9ad28
    addu	$gp,$t9,$v1
    # Line 385
    ori	$a0,$a0,0x4080
    # Line 389
    cvt.s.d	$f0,$f15
    # Line 388
    cvt.s.d	$f1,$f14
    # Line 386
    cvt.s.d	$f3,$f12
    ld	$gp,0($sp)
    # Line 390
    addiu	$sp,$sp,48
    # Line 387
    cvt.s.d	$f2,$f13
    # Line 385
    li	$a1,12304
    sw	$a1,0($a0)
    # Line 386
    swc1	$f3,0($a0)
    # Line 387
    swc1	$f2,0($a0)
    # Line 388
    swc1	$f1,0($a0)
    # Line 390
    jr	$ra
    # Line 389
    swc1	$f0,0($a0)
.L0da9ad28:
    # Line 383
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_Rotated

# Function: __glMgrim_Rotatef
# Declared: Line 402 (Source lines: 402-411)
# Address: 0x0da9ad48 - 0x0da9adb4 (Size: 108 bytes, Frame: 48)
.globl __glMgrim_Rotatef
.ent __glMgrim_Rotatef
__glMgrim_Rotatef:
    # Line 406
    lui	$a0,0x7
    # Line 402
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x16
    addiu	$v1,$v1,14672
    beq	$at,$v0,.L0da9ad94
    addu	$gp,$t9,$v1
    # Line 406
    ori	$a0,$a0,0x4080
    ld	$gp,0($sp)
    # Line 411
    addiu	$sp,$sp,48
    # Line 406
    li	$a1,12304
    sw	$a1,0($a0)
    # Line 407
    swc1	$f12,0($a0)
    # Line 408
    swc1	$f13,0($a0)
    # Line 409
    swc1	$f14,0($a0)
    # Line 411
    jr	$ra
    # Line 410
    swc1	$f15,0($a0)
.L0da9ad94:
    # Line 404
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_Rotatef

# Function: __glMgrim_Scaled
# Declared: Line 423 (Source lines: 423-431)
# Address: 0x0da9adb4 - 0x0da9ae28 (Size: 116 bytes, Frame: 48)
.globl __glMgrim_Scaled
.ent __glMgrim_Scaled
__glMgrim_Scaled:
    # Line 428
    lui	$a0,0x7
    # Line 423
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x16
    addiu	$v1,$v1,14564
    beq	$at,$v0,.L0da9ae08
    addu	$gp,$t9,$v1
    # Line 428
    ori	$a0,$a0,0x4080
    # Line 430
    cvt.s.d	$f0,$f14
    # Line 428
    cvt.s.d	$f2,$f12
    ld	$gp,0($sp)
    # Line 431
    addiu	$sp,$sp,48
    # Line 429
    cvt.s.d	$f1,$f13
    # Line 428
    li	$a1,12556
    sw	$a1,0($a0)
    swc1	$f2,0($a0)
    # Line 429
    swc1	$f1,0($a0)
    # Line 431
    jr	$ra
    # Line 430
    swc1	$f0,0($a0)
.L0da9ae08:
    # Line 426
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_Scaled

# Function: __glMgrim_Scalef
# Declared: Line 443 (Source lines: 443-450)
# Address: 0x0da9ae28 - 0x0da9ae90 (Size: 104 bytes, Frame: 48)
.globl __glMgrim_Scalef
.ent __glMgrim_Scalef
__glMgrim_Scalef:
    # Line 447
    lui	$a0,0x7
    # Line 443
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x16
    addiu	$v1,$v1,14448
    beq	$at,$v0,.L0da9ae70
    addu	$gp,$t9,$v1
    # Line 447
    ori	$a0,$a0,0x4080
    ld	$gp,0($sp)
    # Line 450
    addiu	$sp,$sp,48
    # Line 447
    li	$a1,12556
    sw	$a1,0($a0)
    swc1	$f12,0($a0)
    # Line 448
    swc1	$f13,0($a0)
    # Line 450
    jr	$ra
    # Line 449
    swc1	$f14,0($a0)
.L0da9ae70:
    # Line 445
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_Scalef

# Function: __glMgrim_Translated
# Declared: Line 462 (Source lines: 462-469)
# Address: 0x0da9ae90 - 0x0da9af04 (Size: 116 bytes, Frame: 48)
.globl __glMgrim_Translated
.ent __glMgrim_Translated
__glMgrim_Translated:
    # Line 466
    lui	$a0,0x7
    # Line 462
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x16
    addiu	$v1,$v1,14344
    beq	$at,$v0,.L0da9aee4
    addu	$gp,$t9,$v1
    # Line 466
    ori	$a0,$a0,0x4080
    # Line 468
    cvt.s.d	$f0,$f14
    # Line 466
    cvt.s.d	$f2,$f12
    ld	$gp,0($sp)
    # Line 469
    addiu	$sp,$sp,48
    # Line 467
    cvt.s.d	$f1,$f13
    # Line 466
    li	$a1,12812
    sw	$a1,0($a0)
    swc1	$f2,0($a0)
    # Line 467
    swc1	$f1,0($a0)
    # Line 469
    jr	$ra
    # Line 468
    swc1	$f0,0($a0)
.L0da9aee4:
    # Line 464
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_Translated

# Function: __glMgrim_Translatef
# Declared: Line 481 (Source lines: 481-488)
# Address: 0x0da9af04 - 0x0da9af6c (Size: 104 bytes, Frame: 48)
.globl __glMgrim_Translatef
.ent __glMgrim_Translatef
__glMgrim_Translatef:
    # Line 485
    lui	$a0,0x7
    # Line 481
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x16
    addiu	$v1,$v1,14228
    beq	$at,$v0,.L0da9af4c
    addu	$gp,$t9,$v1
    # Line 485
    ori	$a0,$a0,0x4080
    ld	$gp,0($sp)
    # Line 488
    addiu	$sp,$sp,48
    # Line 485
    li	$a1,12812
    sw	$a1,0($a0)
    swc1	$f12,0($a0)
    # Line 486
    swc1	$f13,0($a0)
    # Line 488
    jr	$ra
    # Line 487
    swc1	$f14,0($a0)
.L0da9af4c:
    # Line 483
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_Translatef

# Function: __glMgrim_Viewport
# Declared: Line 501 (Source lines: 502-526)
# Address: 0x0da9af6c - 0x0da9b044 (Size: 216 bytes, Frame: 48)
.globl __glMgrim_Viewport
.ent __glMgrim_Viewport
__glMgrim_Viewport:
    # Line 504
    lw	$a6,__glCurrentContext
    li	$v0,1
    # Line 502
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 504
    lw	$at,__glBeginMode
    # Line 502
    lui	$v1,0x16
    addiu	$v1,$v1,14124
    # Line 504
    beq	$at,$v0,.L0da9afe8
    # Line 502
    addu	$gp,$t9,$v1
    # Line 504
    bltz	$a2,.L0da9b008
    # Line 522
    lui	$v0,0x7
    # Line 508
    bltz	$a3,.L0da9b028
    # Line 511
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 512
    lw	$a5,3344($a6)
    # Line 522
    li	$v1,13072
    # Line 512
    slt	$a4,$a5,$a3
    beqz	$a4,.L0da9afb8
    # Line 516
    slt	$at,$a5,$a2
    move	$a3,$a5
.L0da9afb8:
    beqzl	$at,.L0da9afc8
    # Line 522
    ori	$v0,$v0,0x4080
    # Line 519
    move	$a2,$a5
    # Line 522
    ori	$v0,$v0,0x4080
.L0da9afc8:
    ld	$gp,0($sp)
    # Line 526
    addiu	$sp,$sp,48
    # Line 522
    sw	$v1,0($v0)
    sw	$a0,0($v0)
    # Line 523
    sw	$a1,0($v0)
    # Line 524
    sw	$a2,0($v0)
    # Line 526
    jr	$ra
    # Line 525
    sw	$a3,0($v0)
.L0da9afe8:
    # Line 504
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da9b008:
    # Line 507
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 508
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da9b028:
    sd	$ra,8($sp)
    # Line 511
    jalr	$t9
    li	$a0,1281
    # Line 512
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_Viewport

# Function: __glMgrim_MatrixMode
# Declared: Line 539 (Source lines: 539-552)
# Address: 0x0da9b044 - 0x0da9b0dc (Size: 152 bytes, Frame: 32)
.globl __glMgrim_MatrixMode
.ent __glMgrim_MatrixMode
__glMgrim_MatrixMode:
    # Line 539
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x16
    addiu	$v1,$v1,13908
    beq	$at,$v0,.L0da9b0bc
    addu	$gp,$t9,$v1
    # Line 543
    sltiu	$a1,$a0,5888
    bnez	$a1,.L0da9b074
    sltiu	$at,$a0,5891
    bnez	$at,.L0da9b09c
.L0da9b074:
    li	$v0,6144
    beq	$a0,$v0,.L0da9b09c
    # Line 546
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 547
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da9b09c:
    ld	$gp,0($sp)
    # Line 552
    addiu	$sp,$sp,32
    # Line 550
    li	$a1,10756
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sw	$a1,0($v1)
    # Line 552
    jr	$ra
    # Line 551
    sw	$a0,0($v1)
.L0da9b0bc:
    # Line 541
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_MatrixMode

