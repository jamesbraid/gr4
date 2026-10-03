# Source: ../soft/so_listcomp.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_listcomp.c
# Total Functions: 49

.text

# Function: __gllc_Bitmap
# Declared: Line 47 (Source lines: 51-84)
# Address: 0x0db54fe4 - 0x0db55154 (Size: 368 bytes, Frame: 160)
.globl __gllc_Bitmap
.ent __gllc_Bitmap
__gllc_Bitmap:
    # Line 51
    move	$v0,$a6
    mov.s	$f4,$f17
    mov.s	$f5,$f16
    mov.s	$f6,$f15
    mov.s	$f7,$f14
    addiu	$sp,$sp,-160
    sd	$s1,64($sp)
    # Line 56
    lw	$s1,__glCurrentContext
    sd	$s0,80($sp)
    # Line 51
    move	$s0,$a1
    sd	$s2,56($sp)
    move	$s2,$a0
    sd	$gp,72($sp)
    lui	$at,0xb
    addiu	$at,$at,-26956
    # Line 58
    bltz	$a0,.L0db55128
    # Line 51
    addu	$gp,$t9,$at
    sd	$ra,88($sp)
    sd	$v0,40($sp)
    sdc1	$f4,0($sp)
    sdc1	$f5,8($sp)
    sdc1	$f6,16($sp)
    # Line 58
    bltz	$s0,.L0db55128
    sdc1	$f7,24($sp)
    # Line 66
    addiu	$a2,$s2,7
    sra	$a2,$a2,0x3
    mult	$a2,$s0
    move	$a0,$s1
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    li	$a2,-4
    mflo	$a1
    addiu	$a1,$a1,3
    and	$a1,$a1,$a2
    sd	$a1,32($sp)
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,32
    sd	$v0,48($sp)
    bnez	$v0,.L0db55098
    ld	$ra,88($sp)
    ld	$gp,72($sp)
    # Line 67
    ld	$s0,80($sp)
    ld	$s1,64($sp)
    ld	$s2,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0db55098:
    # Line 80
    ld	$a5,40($sp)
    li	$a4,6656
    li	$a3,6400
    move	$a2,$s0
    move	$a1,$s2
    move	$a0,$s1
    # Line 68
    li	$a7,4
    # Line 80
    # lw $t9, -26712($gp) # &__glFillImage
    # Line 73
    ldc1	$f0,24($sp)
    # Line 74
    ldc1	$f1,16($sp)
    # Line 75
    ldc1	$f2,8($sp)
    ld	$t0,48($sp)
    # Line 77
    ld	$t1,32($sp)
    # Line 76
    ldc1	$f3,0($sp)
    # Line 80
    addiu	$a6,$t0,48
    # Line 77
    sw	$t1,40($t0)
    # Line 76
    swc1	$f3,36($t0)
    # Line 75
    swc1	$f2,32($t0)
    # Line 74
    swc1	$f1,28($t0)
    # Line 73
    swc1	$f0,24($t0)
    # Line 72
    sw	$s0,20($t0)
    # Line 71
    sw	$s2,16($t0)
    # Line 80
    jal	__glFillImage
    # Line 68
    sh	$a7,12($t0)
    # Line 83
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s1
    ld	$a1,48($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_Bitmap
    ld	$gp,72($sp)
    # Line 84
    ld	$s0,80($sp)
    ld	$ra,88($sp)
    ld	$s1,64($sp)
    ld	$s2,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0db55128:
    # Line 59
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
    sd	$ra,88($sp)
    jal	__gllc_InvalidValue
    move	$a0,$s1
    ld	$gp,72($sp)
    # Line 60
    ld	$s0,80($sp)
    ld	$ra,88($sp)
    ld	$s1,64($sp)
    ld	$s2,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __gllc_Bitmap

# Function: __glle_Bitmap
# Declared: Line 86 (Source lines: 87-107)
# Address: 0x0db55154 - 0x0db5520c (Size: 184 bytes, Frame: 48)
.globl __glle_Bitmap
.ent __glle_Bitmap
__glle_Bitmap:
    # Line 89
    lw	$a4,__glCurrentContext
    # Line 87
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$gp,8($sp)
    # Line 94
    lw	$a1,__glBeginMode
    # Line 87
    lui	$at,0xb
    addiu	$at,$at,-27324
    # Line 94
    beqz	$a1,.L0db551d8
    # Line 87
    addu	$gp,$t9,$at
    sd	$ra,24($sp)
    # Line 94
    li	$v0,2
    beq	$a1,$v0,.L0db551bc
    sd	$a4,0($sp)
    # Line 100
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 101
    lw	$v0,24($s0)
    ld	$gp,8($sp)
    ld	$ra,24($sp)
    addu	$v0,$v0,$s0
    ld	$s0,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,32
.L0db551bc:
    ld	$t9,0($sp)
    # Line 97
    move	$a0,$t9
    lw	$t9,11856($t9)
    jalr	$t9
    nop
    # Line 98
    sw	$zero,__glBeginMode
    ld	$a4,0($sp)
.L0db551d8:
    # Line 105
    lw	$t9,12572($a4)
    move	$a0,$a4
    move	$a1,$s0
    jalr	$t9
    addiu	$a2,$s0,32
    # Line 107
    lw	$v0,24($s0)
    ld	$gp,8($sp)
    ld	$ra,24($sp)
    addu	$v0,$v0,$s0
    ld	$s0,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,32
.end __glle_Bitmap

# Function: __gllei_PolygonStipple
# Declared: Line 110 (Source lines: 111-123)
# Address: 0x0db5520c - 0x0db55288 (Size: 124 bytes, Frame: 48)
.globl __gllei_PolygonStipple
.ent __gllei_PolygonStipple
__gllei_PolygonStipple:
    # Line 111
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0xb
    addiu	$v1,$v1,-27508
    beq	$at,$v0,.L0db55268
    addu	$gp,$t9,$v1
    # Line 120
    # lw $t9, -17848($gp) # &memcpy
    li	$a2,128
    jal	memcpy
    addiu	$a0,$s0,488
    # Line 122
    lw	$t9,12716($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 123
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db55268:
    # Line 113
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 114
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllei_PolygonStipple

# Function: __gllc_PolygonStipple
# Declared: Line 125 (Source lines: 126-140)
# Address: 0x0db55288 - 0x0db55348 (Size: 192 bytes, Frame: 192)
.globl __gllc_PolygonStipple
.ent __gllc_PolygonStipple
__gllc_PolygonStipple:
    # Line 131
    li	$a3,6656
    li	$a2,6400
    li	$a1,32
    # Line 126
    addiu	$sp,$sp,-64
    sd	$a0,0($sp)
    # Line 131
    li	$a0,32
    sd	$gp,16($sp)
    # Line 126
    lui	$at,0xb
    addiu	$at,$at,-27632
    addu	$gp,$t9,$at
    # Line 131
    # lw $t9, -26724($gp) # &__glImageSize
    sd	$s0,32($sp)
    sd	$ra,24($sp)
    jal	__glImageSize
    # Line 128
    lw	$s0,__glCurrentContext
    # Line 131
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a1,$v0
    jal	__glDlistAllocOp2
    move	$a0,$s0
    bnez	$v0,.L0db552f0
    sd	$v0,8($sp)
    # Line 133
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0db552f0:
    # Line 137
    ld	$a5,0($sp)
    li	$a4,6656
    li	$a3,6400
    li	$a2,32
    li	$a1,32
    move	$a0,$s0
    ld	$v1,8($sp)
    # lw $t9, -26712($gp) # &__glFillImage
    # Line 134
    li	$v0,101
    # Line 137
    addiu	$a6,$v1,16
    jal	__glFillImage
    # Line 134
    sh	$v0,12($v1)
    # Line 139
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,8($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_PolygonStipple
    # Line 140
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_PolygonStipple

# Function: __glle_PolygonStipple
# Declared: Line 142 (Source lines: 143-147)
# Address: 0x0db55348 - 0x0db553a8 (Size: 96 bytes, Frame: 48)
.globl __glle_PolygonStipple
.ent __glle_PolygonStipple
__glle_PolygonStipple:
    # Line 143
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$gp,16($sp)
    lui	$at,0xb
    addiu	$at,$at,-27824
    addu	$gp,$t9,$at
    # Line 146
    # lw $t9, -26444($gp) # &__gllei_PolygonStipple
    lw	$a0,__glCurrentContext
    sd	$ra,0($sp)
    bal __gllei_PolygonStipple
    move	$a1,$s8
    # Line 147
    li	$a3,6656
    # lw $t9, -26724($gp) # &__glImageSize
    li	$a2,6400
    li	$a1,32
    jal	__glImageSize
    li	$a0,32
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    addu	$v0,$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_PolygonStipple

# Function: __gllc_Map1f
# Declared: Line 158 (Source lines: 162-199)
# Address: 0x0db553a8 - 0x0db55554 (Size: 428 bytes, Frame: 144)
.globl __gllc_Map1f
.ent __gllc_Map1f
__gllc_Map1f:
    # Line 162
    addiu	$sp,$sp,-144
    sd	$s1,80($sp)
    sd	$s2,64($sp)
    # Line 168
    lw	$s2,__glCurrentContext
    sd	$a5,24($sp)
    sd	$s0,40($sp)
    # Line 162
    move	$s0,$a4
    sd	$s3,72($sp)
    move	$s3,$a3
    sdc1	$f14,0($sp)
    sd	$gp,48($sp)
    lui	$at,0xb
    addiu	$at,$at,-27920
    addu	$gp,$t9,$at
    # Line 170
    # lw $t9, -27168($gp) # &__glEvalComputeK
    sdc1	$f13,8($sp)
    sd	$ra,56($sp)
    jal	__glEvalComputeK
    sd	$a0,32($sp)
    move	$s1,$v0
    ldc1	$f0,8($sp)
    bltz	$v0,.L0db55528
    move	$a0,$v0
    # Line 176
    lw	$v1,3472($s2)
    slt	$v1,$v1,$s0
    bnez	$v1,.L0db55488
    slt	$a6,$s3,$s1
    bnez	$a6,.L0db5548c
    # Line 178
    nop	# was lw $t9, -29432($gp) # &__gllc_InvalidValue
    # Line 176
    blez	$s0,.L0db55488
    ldc1	$f1,0($sp)
    c.eq.s	$f0,$f1
    nop
    bc1t	.L0db55488
    sd	$a0,16($sp)
    # Line 182
    # lw $t9, -27068($gp) # &__glMap1_size
    move	$a0,$s1
    jal	__glMap1_size
    move	$a1,$s0
    # Line 186
    move	$a0,$s2
    li	$a2,-4
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sll	$a1,$v0,0x2
    addiu	$a1,$a1,19
    jal	__glDlistAllocOp2
    and	$a1,$a1,$a2
    bnez	$v0,.L0db554b4
    move	$s1,$v0
    # Line 187
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    ld	$s0,40($sp)
    ld	$s1,80($sp)
    ld	$s2,64($sp)
    ld	$s3,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db55488:
    # Line 178
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
.L0db5548c:
    move	$a0,$s2
    jal	__gllc_InvalidValue
    ld	$s1,80($sp)
    ld	$gp,48($sp)
    # Line 179
    ld	$s0,40($sp)
    ld	$ra,56($sp)
    ld	$s2,64($sp)
    ld	$s3,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db554b4:
    # Line 196
    addiu	$a4,$s1,32
    ld	$a3,24($sp)
    move	$a2,$s3
    move	$a1,$s0
    ld	$a0,16($sp)
    # Line 194
    sw	$s0,28($s1)
    # Line 188
    li	$a5,142
    sh	$a5,12($s1)
    # Line 191
    ld	$a6,32($sp)
    # Line 193
    ldc1	$f3,0($sp)
    # Line 192
    ldc1	$f2,8($sp)
    # Line 196
    # lw $t9, -27076($gp) # &__glFillMap1f
    # Line 193
    swc1	$f3,24($s1)
    # Line 192
    swc1	$f2,20($s1)
    # Line 196
    jal	__glFillMap1f
    # Line 191
    sw	$a6,16($s1)
    # Line 198
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s2
    move	$a1,$s1
    jal	__glDlistAppendOp
    la	$a2,__glle_Map1
    ld	$gp,48($sp)
    # Line 199
    ld	$s0,40($sp)
    ld	$s1,80($sp)
    ld	$ra,56($sp)
    ld	$s2,64($sp)
    ld	$s3,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db55528:
    # Line 172
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    move	$a0,$s2
    jal	__gllc_InvalidEnum
    ld	$s1,80($sp)
    ld	$gp,48($sp)
    # Line 173
    ld	$s0,40($sp)
    ld	$ra,56($sp)
    ld	$s2,64($sp)
    ld	$s3,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __gllc_Map1f

# Function: __glle_Map1
# Declared: Line 201 (Source lines: 202-222)
# Address: 0x0db55554 - 0x0db555f0 (Size: 156 bytes, Frame: 192)
.globl __glle_Map1
.ent __glle_Map1
__glle_Map1:
    # Line 202
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 203
    lw	$s8,__glCurrentContext
    sd	$s0,32($sp)
    sd	$gp,16($sp)
    # Line 202
    lui	$at,0xb
    addiu	$at,$at,-28348
    addu	$gp,$t9,$at
    # Line 209
    # lw $t9, -27168($gp) # &__glEvalComputeK
    # Line 202
    move	$s0,$a0
    sd	$ra,0($sp)
    # Line 209
    jal	__glEvalComputeK
    lw	$a0,0($a0)
    move	$a3,$v0
    sd	$v0,24($sp)
    # Line 215
    lw	$t9,5640($s8)
    addiu	$a5,$s0,16
    lw	$a4,12($s0)
    lw	$t9,332($t9)
    lwc1	$f14,8($s0)
    lwc1	$f13,4($s0)
    jalr	$t9
    lw	$a0,0($s0)
    # Line 220
    # lw $t9, -27068($gp) # &__glMap1_size
    ld	$a0,24($sp)
    lw	$a1,12($s0)
    jal	__glMap1_size
    ld	$s8,8($sp)
    ld	$gp,16($sp)
    # Line 222
    ld	$ra,0($sp)
    li	$v1,-4
    sll	$v0,$v0,0x2
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s0
    ld	$s0,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    addiu	$v0,$v0,16
.end __glle_Map1

# Function: __gllc_Map1d
# Declared: Line 225 (Source lines: 229-266)
# Address: 0x0db555f0 - 0x0db557a4 (Size: 436 bytes, Frame: 144)
.globl __gllc_Map1d
.ent __gllc_Map1d
__gllc_Map1d:
    # Line 229
    addiu	$sp,$sp,-144
    sd	$s1,80($sp)
    sd	$s2,64($sp)
    # Line 235
    lw	$s2,__glCurrentContext
    sd	$a5,24($sp)
    sd	$s0,40($sp)
    # Line 229
    move	$s0,$a4
    sd	$s3,72($sp)
    move	$s3,$a3
    sdc1	$f14,0($sp)
    sd	$gp,48($sp)
    lui	$at,0xb
    addiu	$at,$at,-28504
    addu	$gp,$t9,$at
    # Line 237
    # lw $t9, -27168($gp) # &__glEvalComputeK
    sdc1	$f13,8($sp)
    sd	$ra,56($sp)
    jal	__glEvalComputeK
    sd	$a0,32($sp)
    move	$s1,$v0
    ldc1	$f0,8($sp)
    bltz	$v0,.L0db55778
    move	$a0,$v0
    # Line 243
    lw	$v1,3472($s2)
    slt	$v1,$v1,$s0
    bnez	$v1,.L0db556d0
    slt	$a6,$s3,$s1
    bnez	$a6,.L0db556d4
    # Line 245
    nop	# was lw $t9, -29432($gp) # &__gllc_InvalidValue
    # Line 243
    blez	$s0,.L0db556d0
    ldc1	$f1,0($sp)
    c.eq.d	$f0,$f1
    nop
    bc1t	.L0db556d0
    sd	$a0,16($sp)
    # Line 249
    # lw $t9, -27068($gp) # &__glMap1_size
    move	$a0,$s1
    jal	__glMap1_size
    move	$a1,$s0
    # Line 253
    move	$a0,$s2
    li	$a2,-4
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sll	$a1,$v0,0x2
    addiu	$a1,$a1,19
    jal	__glDlistAllocOp2
    and	$a1,$a1,$a2
    bnez	$v0,.L0db556fc
    move	$s1,$v0
    # Line 254
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    ld	$s0,40($sp)
    ld	$s1,80($sp)
    ld	$s2,64($sp)
    ld	$s3,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db556d0:
    # Line 245
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
.L0db556d4:
    move	$a0,$s2
    jal	__gllc_InvalidValue
    ld	$s1,80($sp)
    ld	$gp,48($sp)
    # Line 246
    ld	$s0,40($sp)
    ld	$ra,56($sp)
    ld	$s2,64($sp)
    ld	$s3,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db556fc:
    # Line 263
    addiu	$a4,$s1,32
    ld	$a3,24($sp)
    move	$a2,$s3
    move	$a1,$s0
    ld	$a0,16($sp)
    # Line 261
    sw	$s0,28($s1)
    # Line 255
    li	$a5,141
    # Line 260
    ldc1	$f3,0($sp)
    # Line 255
    sh	$a5,12($s1)
    # Line 259
    ldc1	$f2,8($sp)
    # Line 260
    cvt.s.d	$f3,$f3
    # Line 258
    ld	$a6,32($sp)
    # Line 263
    # lw $t9, -27072($gp) # &__glFillMap1d
    # Line 259
    cvt.s.d	$f2,$f2
    # Line 258
    sw	$a6,16($s1)
    # Line 260
    swc1	$f3,24($s1)
    # Line 263
    jal	__glFillMap1d
    # Line 259
    swc1	$f2,20($s1)
    # Line 265
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s2
    move	$a1,$s1
    jal	__glDlistAppendOp
    la	$a2,__glle_Map1
    ld	$gp,48($sp)
    # Line 266
    ld	$s0,40($sp)
    ld	$s1,80($sp)
    ld	$ra,56($sp)
    ld	$s2,64($sp)
    ld	$s3,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db55778:
    # Line 239
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    move	$a0,$s2
    jal	__gllc_InvalidEnum
    ld	$s1,80($sp)
    ld	$gp,48($sp)
    # Line 240
    ld	$s0,40($sp)
    ld	$ra,56($sp)
    ld	$s2,64($sp)
    ld	$s3,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __gllc_Map1d

# Function: __gllc_Map2f
# Declared: Line 280 (Source lines: 286-329)
# Address: 0x0db557a4 - 0x0db559b0 (Size: 524 bytes, Frame: 176)
.globl __gllc_Map2f
.ent __gllc_Map2f
__gllc_Map2f:
    # Line 286
    addiu	$sp,$sp,-176
    sd	$s0,96($sp)
    sd	$s1,64($sp)
    # Line 292
    lw	$s1,__glCurrentContext
    sd	$a7,32($sp)
    sdc1	$f18,16($sp)
    sdc1	$f17,24($sp)
    sd	$s2,88($sp)
    # Line 286
    move	$s2,$a4
    sd	$a3,40($sp)
    sdc1	$f14,8($sp)
    sd	$gp,72($sp)
    lui	$at,0xb
    addiu	$at,$at,-28940
    addu	$gp,$t9,$at
    # Line 294
    # lw $t9, -27168($gp) # &__glEvalComputeK
    sdc1	$f13,0($sp)
    sd	$ra,80($sp)
    jal	__glEvalComputeK
    sd	$a0,56($sp)
    move	$s0,$v0
    # Line 300
    ldc1	$f0,0($sp)
    ldc1	$f2,24($sp)
    # Line 294
    bltz	$v0,.L0db55988
    move	$a0,$v0
    sd	$s3,104($sp)
    # Line 300
    lw	$s3,180($sp)
    lw	$v0,3472($s1)
    slt	$v1,$v0,$s3
    bnez	$v1,.L0db558cc
    slt	$at,$v0,$s2
    ld	$a5,32($sp)
    slt	$a5,$a5,$s0
    bnez	$a5,.L0db558d0
    # Line 304
    nop	# was lw $t9, -29432($gp) # &__gllc_InvalidValue
    # Line 300
    blez	$s3,.L0db558cc
    ldc1	$f1,8($sp)
    c.eq.s	$f0,$f1
    nop
    bc1t	.L0db558cc
    ld	$a6,40($sp)
    slt	$a6,$a6,$s0
    bnez	$a6,.L0db558d0
    # Line 304
    nop	# was lw $t9, -29432($gp) # &__gllc_InvalidValue
    # Line 300
    bnez	$at,.L0db558d0
    # Line 304
    nop	# was lw $t9, -29432($gp) # &__gllc_InvalidValue
    # Line 300
    blez	$s2,.L0db558cc
    ldc1	$f3,16($sp)
    c.eq.s	$f2,$f3
    nop
    bc1t	.L0db558cc
    sd	$a0,48($sp)
    # Line 308
    # lw $t9, -27056($gp) # &__glMap2_size
    move	$a0,$s0
    move	$a1,$s2
    jal	__glMap2_size
    move	$a2,$s3
    # Line 312
    move	$a0,$s1
    li	$a2,-4
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sll	$a1,$v0,0x2
    addiu	$a1,$a1,31
    jal	__glDlistAllocOp2
    and	$a1,$a1,$a2
    bnez	$v0,.L0db558f8
    move	$s0,$v0
    # Line 313
    ld	$ra,80($sp)
    ld	$gp,72($sp)
    ld	$s0,96($sp)
    ld	$s1,64($sp)
    ld	$s2,88($sp)
    ld	$s3,104($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db558cc:
    # Line 304
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
.L0db558d0:
    move	$a0,$s1
    ld	$s3,104($sp)
    jal	__gllc_InvalidValue
    ld	$s0,96($sp)
    ld	$gp,72($sp)
    # Line 305
    ld	$ra,80($sp)
    ld	$s1,64($sp)
    ld	$s2,88($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db558f8:
    # Line 326
    addiu	$a6,$s0,44
    lw	$a5,188($sp)
    ld	$a4,32($sp)
    ld	$a3,40($sp)
    move	$a2,$s3
    move	$a1,$s2
    ld	$a0,48($sp)
    # Line 323
    sw	$s3,40($s0)
    # Line 320
    sw	$s2,28($s0)
    # Line 314
    li	$a7,144
    sh	$a7,12($s0)
    # Line 317
    ld	$t0,56($sp)
    # Line 326
    # lw $t9, -27064($gp) # &__glFillMap2f
    # Line 318
    ldc1	$f4,0($sp)
    # Line 322
    ldc1	$f7,16($sp)
    # Line 321
    ldc1	$f6,24($sp)
    # Line 319
    ldc1	$f5,8($sp)
    # Line 322
    swc1	$f7,36($s0)
    # Line 321
    swc1	$f6,32($s0)
    # Line 319
    swc1	$f5,24($s0)
    # Line 318
    swc1	$f4,20($s0)
    # Line 326
    jal	__glFillMap2f
    # Line 317
    sw	$t0,16($s0)
    # Line 328
    move	$a0,$s1
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a1,$s0
    la	$a2,__glle_Map2
    jal	__glDlistAppendOp
    ld	$s3,104($sp)
    ld	$gp,72($sp)
    # Line 329
    ld	$s0,96($sp)
    ld	$ra,80($sp)
    ld	$s1,64($sp)
    ld	$s2,88($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db55988:
    # Line 296
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    move	$a0,$s1
    jal	__gllc_InvalidEnum
    ld	$s0,96($sp)
    ld	$gp,72($sp)
    # Line 297
    ld	$ra,80($sp)
    ld	$s1,64($sp)
    ld	$s2,88($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end __gllc_Map2f

# Function: __glle_Map2
# Declared: Line 331 (Source lines: 332-355)
# Address: 0x0db559b0 - 0x0db55a6c (Size: 188 bytes, Frame: 208)
.globl __glle_Map2
.ent __glle_Map2
__glle_Map2:
    # Line 332
    addiu	$sp,$sp,-80
    sd	$s8,24($sp)
    # Line 333
    lw	$s8,__glCurrentContext
    sd	$s0,48($sp)
    sd	$gp,32($sp)
    # Line 332
    lui	$at,0xb
    addiu	$at,$at,-29464
    addu	$gp,$t9,$at
    # Line 339
    # lw $t9, -27168($gp) # &__glEvalComputeK
    # Line 332
    move	$s0,$a0
    sd	$ra,16($sp)
    # Line 339
    jal	__glEvalComputeK
    lw	$a0,0($a0)
    # Line 345
    lwc1	$f18,20($s0)
    lw	$at,24($s0)
    lwc1	$f17,16($s0)
    lw	$a4,12($s0)
    mult	$v0,$at
    lwc1	$f14,8($s0)
    lwc1	$f13,4($s0)
    lw	$a0,0($s0)
    addiu	$ra,$s0,28
    sw	$ra,12($sp)
    sw	$at,4($sp)
    lw	$t9,5640($s8)
    lw	$t9,340($t9)
    # Line 339
    move	$a7,$v0
    # Line 345
    mflo	$a3
    jalr	$t9
    sd	$v0,40($sp)
    ld	$a0,40($sp)
    # Line 352
    # lw $t9, -27056($gp) # &__glMap2_size
    lw	$a2,24($s0)
    lw	$a1,12($s0)
    jal	__glMap2_size
    ld	$s8,24($sp)
    ld	$gp,32($sp)
    # Line 355
    ld	$ra,16($sp)
    li	$v1,-4
    sll	$v0,$v0,0x2
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s0
    ld	$s0,48($sp)
    addiu	$sp,$sp,80
    jr	$ra
    addiu	$v0,$v0,28
.end __glle_Map2

# Function: __gllc_Map2d
# Declared: Line 358 (Source lines: 364-407)
# Address: 0x0db55a6c - 0x0db55c88 (Size: 540 bytes, Frame: 176)
.globl __gllc_Map2d
.ent __gllc_Map2d
__gllc_Map2d:
    # Line 364
    addiu	$sp,$sp,-176
    sd	$s0,96($sp)
    sd	$s1,64($sp)
    # Line 370
    lw	$s1,__glCurrentContext
    sd	$a7,32($sp)
    sdc1	$f18,16($sp)
    sdc1	$f17,24($sp)
    sd	$s2,88($sp)
    # Line 364
    move	$s2,$a4
    sd	$a3,40($sp)
    sdc1	$f14,8($sp)
    sd	$gp,72($sp)
    lui	$at,0xb
    addiu	$at,$at,-29652
    addu	$gp,$t9,$at
    # Line 372
    # lw $t9, -27168($gp) # &__glEvalComputeK
    sdc1	$f13,0($sp)
    sd	$ra,80($sp)
    jal	__glEvalComputeK
    sd	$a0,56($sp)
    move	$s0,$v0
    # Line 378
    ldc1	$f0,0($sp)
    ldc1	$f2,24($sp)
    # Line 372
    bltz	$v0,.L0db55c60
    move	$a0,$v0
    sd	$s3,104($sp)
    # Line 378
    lw	$s3,180($sp)
    lw	$v0,3472($s1)
    slt	$v1,$v0,$s3
    bnez	$v1,.L0db55b94
    slt	$at,$v0,$s2
    ld	$a5,32($sp)
    slt	$a5,$a5,$s0
    bnez	$a5,.L0db55b98
    # Line 382
    nop	# was lw $t9, -29432($gp) # &__gllc_InvalidValue
    # Line 378
    blez	$s3,.L0db55b94
    ldc1	$f1,8($sp)
    c.eq.d	$f0,$f1
    nop
    bc1t	.L0db55b94
    ld	$a6,40($sp)
    slt	$a6,$a6,$s0
    bnez	$a6,.L0db55b98
    # Line 382
    nop	# was lw $t9, -29432($gp) # &__gllc_InvalidValue
    # Line 378
    bnez	$at,.L0db55b98
    # Line 382
    nop	# was lw $t9, -29432($gp) # &__gllc_InvalidValue
    # Line 378
    blez	$s2,.L0db55b94
    ldc1	$f3,16($sp)
    c.eq.d	$f2,$f3
    nop
    bc1t	.L0db55b94
    sd	$a0,48($sp)
    # Line 386
    # lw $t9, -27056($gp) # &__glMap2_size
    move	$a0,$s0
    move	$a1,$s2
    jal	__glMap2_size
    move	$a2,$s3
    # Line 390
    move	$a0,$s1
    li	$a2,-4
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    sll	$a1,$v0,0x2
    addiu	$a1,$a1,31
    jal	__glDlistAllocOp2
    and	$a1,$a1,$a2
    bnez	$v0,.L0db55bc0
    move	$s0,$v0
    # Line 391
    ld	$ra,80($sp)
    ld	$gp,72($sp)
    ld	$s0,96($sp)
    ld	$s1,64($sp)
    ld	$s2,88($sp)
    ld	$s3,104($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db55b94:
    # Line 382
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
.L0db55b98:
    move	$a0,$s1
    ld	$s3,104($sp)
    jal	__gllc_InvalidValue
    ld	$s0,96($sp)
    ld	$gp,72($sp)
    # Line 383
    ld	$ra,80($sp)
    ld	$s1,64($sp)
    ld	$s2,88($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db55bc0:
    # Line 404
    addiu	$a6,$s0,44
    lw	$a5,188($sp)
    ld	$a4,32($sp)
    ld	$a3,40($sp)
    move	$a2,$s3
    move	$a1,$s2
    ld	$a0,48($sp)
    # Line 401
    sw	$s3,40($s0)
    # Line 398
    sw	$s2,28($s0)
    # Line 397
    ldc1	$f5,8($sp)
    # Line 392
    li	$a7,143
    # Line 399
    ldc1	$f6,24($sp)
    # Line 397
    cvt.s.d	$f5,$f5
    # Line 392
    sh	$a7,12($s0)
    # Line 400
    ldc1	$f7,16($sp)
    # Line 399
    cvt.s.d	$f6,$f6
    # Line 395
    ld	$t0,56($sp)
    # Line 396
    ldc1	$f4,0($sp)
    # Line 400
    cvt.s.d	$f7,$f7
    # Line 404
    # lw $t9, -27060($gp) # &__glFillMap2d
    # Line 395
    sw	$t0,16($s0)
    # Line 396
    cvt.s.d	$f4,$f4
    # Line 400
    swc1	$f7,36($s0)
    # Line 399
    swc1	$f6,32($s0)
    # Line 397
    swc1	$f5,24($s0)
    # Line 404
    jal	__glFillMap2d
    # Line 396
    swc1	$f4,20($s0)
    # Line 406
    move	$a0,$s1
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a1,$s0
    la	$a2,__glle_Map2
    jal	__glDlistAppendOp
    ld	$s3,104($sp)
    ld	$gp,72($sp)
    # Line 407
    ld	$s0,96($sp)
    ld	$ra,80($sp)
    ld	$s1,64($sp)
    ld	$s2,88($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db55c60:
    # Line 374
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    move	$a0,$s1
    jal	__gllc_InvalidEnum
    ld	$s0,96($sp)
    ld	$gp,72($sp)
    # Line 375
    ld	$ra,80($sp)
    ld	$s1,64($sp)
    ld	$s2,88($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end __gllc_Map2d

# Function: __gllc_DeformationMap3fSGIX
# Declared: Line 424 (Source lines: 432-468)
# Address: 0x0db55c88 - 0x0db55e64 (Size: 476 bytes, Frame: 128)
.globl __gllc_DeformationMap3fSGIX
.ent __gllc_DeformationMap3fSGIX
__gllc_DeformationMap3fSGIX:
    # Line 432
    addiu	$sp,$sp,-256
    sd	$a7,144($sp)
    sdc1	$f18,56($sp)
    sdc1	$f17,64($sp)
    sd	$a4,120($sp)
    sd	$a3,128($sp)
    sdc1	$f14,80($sp)
    sdc1	$f13,88($sp)
    sd	$a0,152($sp)
    sd	$ra,168($sp)
    sd	$s0,176($sp)
    # Line 435
    lw	$s0,__glCurrentContext
    # Line 437
    lw	$at,260($sp)
    lwc1	$f0,264($sp)
    lw	$a1,292($sp)
    lw	$v1,284($sp)
    lwc1	$f1,272($sp)
    sd	$a1,112($sp)
    sd	$v1,136($sp)
    sdc1	$f1,72($sp)
    sdc1	$f0,48($sp)
    sd	$at,104($sp)
    sw	$a1,36($sp)
    sw	$v1,28($sp)
    sd	$gp,160($sp)
    # Line 432
    lui	$v0,0xb
    addiu	$v0,$v0,-30192
    addu	$gp,$t9,$v0
    # Line 437
    # lw $t9, -27212($gp) # &__glCheckMap3Params
    swc1	$f1,16($sp)
    swc1	$f0,8($sp)
    jal	__glCheckMap3Params
    sw	$at,4($sp)
    li	$a6,1281
    beq	$v0,$a6,.L0db55e44
    li	$t0,1280
    beq	$v0,$t0,.L0db55d78
    # Line 446
    ld	$a6,104($sp)
    ld	$a5,120($sp)
    mult	$a5,$a6
    ld	$a4,112($sp)
    mflo	$a3
    nop
    nop
    mult	$a3,$a4
    move	$a0,$s0
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    mflo	$a2
    sll	$a1,$a2,0x2
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,40
    bnez	$v0,.L0db55d98
    sd	$v0,96($sp)
    # Line 449
    ld	$ra,168($sp)
    ld	$gp,160($sp)
    ld	$s0,176($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0db55d78:
    # Line 443
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    # Line 444
    ld	$ra,168($sp)
    ld	$gp,160($sp)
    ld	$s0,176($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0db55d98:
    # Line 464
    lw	$a6,300($sp)
    ld	$a5,136($sp)
    ld	$a3,144($sp)
    ld	$a1,128($sp)
    # Line 450
    li	$t0,248
    # Line 453
    ld	$t2,152($sp)
    # Line 454
    ldc1	$f2,88($sp)
    # Line 455
    ldc1	$f3,80($sp)
    # Line 457
    ldc1	$f4,64($sp)
    # Line 458
    ldc1	$f5,56($sp)
    # Line 460
    ldc1	$f6,48($sp)
    # Line 461
    ldc1	$f7,72($sp)
    ld	$t1,96($sp)
    # Line 464
    ld	$t8,104($sp)
    ld	$t3,120($sp)
    addiu	$a7,$t1,56
    move	$a2,$t8
    move	$a0,$t3
    # Line 461
    swc1	$f7,48($t1)
    # Line 460
    swc1	$f6,44($t1)
    # Line 459
    sw	$t8,40($t1)
    # Line 458
    swc1	$f5,36($t1)
    # Line 457
    swc1	$f4,32($t1)
    # Line 464
    ld	$t9,112($sp)
    # Line 456
    sw	$t3,28($t1)
    # Line 455
    swc1	$f3,24($t1)
    # Line 464
    move	$a4,$t9
    # Line 462
    sw	$t9,52($t1)
    # Line 464
    # lw $t9, -27220($gp) # &__glFillDeformationMap3f
    # Line 454
    swc1	$f2,20($t1)
    # Line 453
    sw	$t2,16($t1)
    # Line 464
    jal	__glFillDeformationMap3f
    # Line 450
    sh	$t0,12($t1)
    # Line 467
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,96($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_DeformationMap3SGIX
    # Line 468
    ld	$ra,168($sp)
    ld	$gp,160($sp)
    ld	$s0,176($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0db55e44:
    # Line 440
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s0
    # Line 441
    ld	$ra,168($sp)
    ld	$gp,160($sp)
    ld	$s0,176($sp)
    jr	$ra
    addiu	$sp,$sp,256
.end __gllc_DeformationMap3fSGIX

# Function: __glle_DeformationMap3SGIX
# Declared: Line 471 (Source lines: 472-486)
# Address: 0x0db55e64 - 0x0db55f40 (Size: 220 bytes, Frame: 224)
.globl __glle_DeformationMap3SGIX
.ent __glle_DeformationMap3SGIX
__glle_DeformationMap3SGIX:
    # Line 472
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    # Line 478
    lw	$t0,36($a0)
    sd	$s8,56($sp)
    # Line 472
    move	$s8,$a0
    # Line 478
    lw	$t3,24($a0)
    lw	$a0,0($a0)
    lwc1	$f18,20($s8)
    lwc1	$f17,16($s8)
    lw	$a4,12($s8)
    lwc1	$f14,8($s8)
    lwc1	$f13,4($s8)
    sw	$t3,4($sp)
    sd	$gp,64($sp)
    lwc1	$f1,28($s8)
    li	$t2,3
    addiu	$t1,$s8,40
    swc1	$f1,8($sp)
    mult	$t3,$t0
    lwc1	$f0,32($s8)
    sw	$t1,44($sp)
    sw	$t0,36($sp)
    sw	$t2,28($sp)
    swc1	$f0,16($sp)
    sll	$a7,$t0,0x2
    lw	$a6,__glCurrentContext
    subu	$a7,$a7,$t0
    # Line 472
    lui	$t0,0xb
    # Line 478
    lw	$a6,5640($a6)
    # Line 472
    addiu	$t0,$t0,-30668
    addu	$gp,$t9,$t0
    # Line 478
    lw	$t9,1072($a6)
    mflo	$a5
    sll	$a3,$a5,0x2
    jalr	$t9
    subu	$a3,$a3,$a5
    # Line 486
    lw	$ra,24($s8)
    lw	$a2,12($s8)
    mult	$a2,$ra
    lw	$a0,36($s8)
    mflo	$a1
    nop
    nop
    mult	$a0,$a1
    ld	$gp,64($sp)
    ld	$ra,48($sp)
    mflo	$v1
    sll	$v0,$v1,0x2
    subu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$s8
    ld	$s8,56($sp)
    addiu	$sp,$sp,96
    jr	$ra
    addiu	$v0,$v0,40
.end __glle_DeformationMap3SGIX

# Function: __gllc_DeformationMap3dSGIX
# Declared: Line 492 (Source lines: 500-536)
# Address: 0x0db55f40 - 0x0db56134 (Size: 500 bytes, Frame: 128)
.globl __gllc_DeformationMap3dSGIX
.ent __gllc_DeformationMap3dSGIX
__gllc_DeformationMap3dSGIX:
    # Line 500
    addiu	$sp,$sp,-256
    sd	$a7,144($sp)
    # Line 505
    cvt.s.d	$f13,$f13
    sd	$a4,120($sp)
    sd	$a3,128($sp)
    cvt.s.d	$f14,$f14
    sd	$a0,152($sp)
    sd	$ra,168($sp)
    cvt.s.d	$f17,$f17
    sd	$s0,176($sp)
    # Line 503
    lw	$s0,__glCurrentContext
    # Line 505
    cvt.s.d	$f18,$f18
    lw	$v0,260($sp)
    lw	$v1,284($sp)
    lw	$a1,292($sp)
    sdc1	$f18,56($sp)
    sdc1	$f17,64($sp)
    sd	$a1,112($sp)
    sd	$v1,136($sp)
    sd	$v0,104($sp)
    ldc1	$f1,272($sp)
    ldc1	$f0,264($sp)
    sw	$a1,36($sp)
    sw	$v1,28($sp)
    sdc1	$f14,80($sp)
    sw	$v0,4($sp)
    sdc1	$f13,88($sp)
    sd	$gp,160($sp)
    cvt.s.d	$f1,$f1
    # Line 500
    lui	$at,0xb
    addiu	$at,$at,-30888
    # Line 505
    cvt.s.d	$f0,$f0
    # Line 500
    addu	$gp,$t9,$at
    # Line 505
    # lw $t9, -27212($gp) # &__glCheckMap3Params
    sdc1	$f1,48($sp)
    sdc1	$f0,72($sp)
    swc1	$f1,16($sp)
    jal	__glCheckMap3Params
    swc1	$f0,8($sp)
    li	$a6,1281
    beq	$v0,$a6,.L0db56114
    li	$t0,1280
    beq	$v0,$t0,.L0db56048
    # Line 514
    ld	$a6,104($sp)
    ld	$a5,120($sp)
    mult	$a5,$a6
    ld	$a4,112($sp)
    mflo	$a3
    nop
    nop
    mult	$a3,$a4
    move	$a0,$s0
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    mflo	$a2
    sll	$a1,$a2,0x2
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,40
    bnez	$v0,.L0db56068
    sd	$v0,96($sp)
    # Line 517
    ld	$ra,168($sp)
    ld	$gp,160($sp)
    ld	$s0,176($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0db56048:
    # Line 511
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    # Line 512
    ld	$ra,168($sp)
    ld	$gp,160($sp)
    ld	$s0,176($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0db56068:
    # Line 532
    lw	$a6,300($sp)
    ld	$a5,136($sp)
    ld	$a3,144($sp)
    ld	$a1,128($sp)
    # Line 518
    li	$t0,247
    # Line 521
    ld	$t2,152($sp)
    # Line 522
    ldc1	$f2,88($sp)
    # Line 523
    ldc1	$f3,80($sp)
    # Line 525
    ldc1	$f4,64($sp)
    # Line 526
    ldc1	$f5,56($sp)
    # Line 528
    ldc1	$f6,72($sp)
    # Line 529
    ldc1	$f7,48($sp)
    ld	$t1,96($sp)
    # Line 532
    ld	$t8,104($sp)
    ld	$t3,120($sp)
    addiu	$a7,$t1,56
    move	$a2,$t8
    move	$a0,$t3
    # Line 529
    swc1	$f7,48($t1)
    # Line 528
    swc1	$f6,44($t1)
    # Line 527
    sw	$t8,40($t1)
    # Line 526
    swc1	$f5,36($t1)
    # Line 525
    swc1	$f4,32($t1)
    # Line 532
    ld	$t9,112($sp)
    # Line 524
    sw	$t3,28($t1)
    # Line 523
    swc1	$f3,24($t1)
    # Line 532
    move	$a4,$t9
    # Line 530
    sw	$t9,52($t1)
    # Line 532
    # lw $t9, -27216($gp) # &__glFillDeformationMap3d
    # Line 522
    swc1	$f2,20($t1)
    # Line 521
    sw	$t2,16($t1)
    # Line 532
    jal	__glFillDeformationMap3d
    # Line 518
    sh	$t0,12($t1)
    # Line 535
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,96($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_DeformationMap3SGIX
    # Line 536
    ld	$ra,168($sp)
    ld	$gp,160($sp)
    ld	$s0,176($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0db56114:
    # Line 508
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s0
    # Line 509
    ld	$ra,168($sp)
    ld	$gp,160($sp)
    ld	$s0,176($sp)
    jr	$ra
    addiu	$sp,$sp,256
.end __gllc_DeformationMap3dSGIX

# Function: __glle_DrawPixels
# Declared: Line 538 (Source lines: 539-575)
# Address: 0x0db56134 - 0x0db562c0 (Size: 396 bytes, Frame: 192)
.globl __glle_DrawPixels
.ent __glle_DrawPixels
__glle_DrawPixels:
    # Line 546
    lw	$a3,12($a0)
    lw	$a2,8($a0)
    lw	$a1,4($a0)
    # Line 539
    addiu	$sp,$sp,-64
    sd	$s0,32($sp)
    move	$s0,$a0
    # Line 546
    lw	$a0,0($a0)
    sd	$gp,16($sp)
    # Line 539
    lui	$at,0xb
    addiu	$at,$at,-31388
    addu	$gp,$t9,$at
    # Line 546
    # lw $t9, -26724($gp) # &__glImageSize
    # Line 542
    lw	$v0,__glCurrentContext
    sd	$ra,24($sp)
    # Line 546
    jal	__glImageSize
    sd	$v0,8($sp)
    # Line 549
    lw	$a0,__glBeginMode
    beqz	$a0,.L0db561d8
    sd	$v0,0($sp)
    li	$v1,2
    beq	$a0,$v1,.L0db561c0
    # Line 555
    nop	# was lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,16($sp)
    ld	$v0,0($sp)
    # Line 556
    ld	$ra,24($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s0
    ld	$s0,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    addiu	$v0,$v0,16
.L0db561c0:
    ld	$t9,8($sp)
    # Line 552
    move	$a0,$t9
    lw	$t9,11856($t9)
    jalr	$t9
    nop
    # Line 553
    sw	$zero,__glBeginMode
.L0db561d8:
    ld	$v0,8($sp)
    # Line 556
    lw	$v0,3092($v0)
    # Line 567
    ld	$ra,24($sp)
    # Line 556
    li	$at,7169
    beq	$v0,$at,.L0db56280
    # Line 565
    li	$v1,7168
    bne	$v0,$v1,.L0db5620c
    ld	$v0,0($sp)
    ld	$a1,8($sp)
    lbu	$a1,428($a1)
    bnez	$a1,.L0db56230
    # Line 570
    li	$a6,1
    ld	$v0,0($sp)
.L0db5620c:
    ld	$gp,16($sp)
    # Line 567
    li	$v1,-4
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s0
    ld	$s0,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    addiu	$v0,$v0,16
.L0db56230:
    ld	$t9,8($sp)
    # Line 570
    addiu	$a5,$s0,16
    lw	$a4,12($s0)
    move	$a0,$t9
    lw	$t9,12620($t9)
    lw	$a3,8($s0)
    lw	$a2,4($s0)
    jalr	$t9
    lw	$a1,0($s0)
    ld	$gp,16($sp)
    ld	$v0,0($sp)
    # Line 575
    ld	$ra,24($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s0
    ld	$s0,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    addiu	$v0,$v0,16
.L0db56280:
    ld	$a1,8($sp)
    # Line 561
    # lw $t9, -26992($gp) # &__glFeedbackDrawPixels
    move	$a0,$a1
    jal	__glFeedbackDrawPixels
    addiu	$a1,$a1,216
    ld	$gp,16($sp)
    ld	$v0,0($sp)
    # Line 562
    ld	$ra,24($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s0
    ld	$s0,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    addiu	$v0,$v0,16
.end __glle_DrawPixels

# Function: __gllc_DrawPixels
# Declared: Line 578 (Source lines: 580-680)
# Address: 0x0db562c0 - 0x0db5678c (Size: 1228 bytes, Frame: 144)
.globl __gllc_DrawPixels
.ent __gllc_DrawPixels
__gllc_DrawPixels:
    # Line 582
    move	$v0,$a3
    # Line 581
    move	$a5,$a2
    # Line 580
    addiu	$sp,$sp,-144
    sd	$s3,72($sp)
    # Line 587
    lw	$s3,__glCurrentContext
    sd	$a4,16($sp)
    sd	$a0,8($sp)
    sd	$s1,40($sp)
    # Line 580
    move	$s1,$a3
    sd	$s0,48($sp)
    move	$s0,$a2
    sd	$s2,64($sp)
    move	$s2,$a1
    sd	$gp,56($sp)
    lui	$at,0xb
    addiu	$at,$at,-31784
    # Line 589
    bltz	$a0,.L0db566b4
    # Line 580
    addu	$gp,$t9,$at
    # Line 589
    bltz	$s2,.L0db566b4
    # Line 596
    li	$a0,1
    # Line 591
    sltiu	$v1,$s0,6406
    bnez	$v1,.L0db56350
    # Line 593
    sltiu	$a6,$s0,6407
    bnez	$a6,.L0db56370
    sltiu	$a7,$s0,6409
    bnez	$a7,.L0db565f8
    sltiu	$at,$s0,6410
    bnez	$at,.L0db56370
    li	$a0,0x8000
    sltu	$v1,$s0,$a0
    bnez	$v1,.L0db56714
    sltu	$a6,$a0,$s0
    bnez	$a6,.L0db5658c
    # Line 611
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db56374
    # Line 608
    move	$a0,$zero
.L0db56350:
    # Line 593
    sltiu	$a7,$s0,6403
    bnez	$a7,.L0db56428
    sltiu	$at,$s0,6404
    bnez	$at,.L0db56370
    sltiu	$v1,$s0,6405
    bnez	$v1,.L0db5657c
    sltiu	$a6,$s0,6406
    beqz	$a6,.L0db56588
.L0db56370:
    # Line 608
    move	$a0,$zero
.L0db56374:
    # Line 613
    sltiu	$a7,$s1,5126
.L0db56378:
    bnez	$a7,.L0db563f0
    # Line 614
    sltiu	$a6,$s1,5123
    sd	$v0,24($sp)
    sltiu	$at,$s1,5127
    beqz	$at,.L0db56484
    sd	$a5,32($sp)
.L0db56390:
    ld	$a0,8($sp)
.L0db56394:
    # Line 663
    move	$a1,$s2
    # lw $t9, -26724($gp) # &__glImageSize
    move	$a2,$s0
    sd	$ra,80($sp)
    jal	__glImageSize
    move	$a3,$s1
    # Line 666
    move	$a0,$s3
    li	$a2,-4
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    addiu	$a1,$v0,3
    and	$a1,$a1,$a2
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,16
    sd	$v0,0($sp)
    bnez	$v0,.L0db56504
    ld	$ra,80($sp)
    ld	$gp,56($sp)
    # Line 667
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$s2,64($sp)
    ld	$s3,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db563f0:
    # Line 614
    bnez	$a6,.L0db5644c
    sltiu	$a7,$s1,5124
    sd	$v0,24($sp)
    bnez	$a7,.L0db56390
    sd	$a5,32($sp)
    sltiu	$at,$s1,5125
    bnez	$at,.L0db56650
    sltiu	$v1,$s1,5126
    beqz	$v1,.L0db565cc
    # Line 659
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,80($sp)
    sd	$v0,24($sp)
    b	.L0db56390
    sd	$a5,32($sp)
.L0db56428:
    # Line 593
    sltiu	$a6,$s0,6401
    bnez	$a6,.L0db564f0
    sltiu	$a7,$s0,6402
    bnez	$a7,.L0db564fc
    li	$at,6402
    bne	$s0,$at,.L0db5658c
    # Line 611
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db56374
    # Line 608
    move	$a0,$zero
.L0db5644c:
    # Line 614
    sltiu	$v1,$s1,5121
    bnezl	$v1,.L0db565b8
    sd	$ra,80($sp)
    sd	$v0,24($sp)
    sltiu	$a6,$s1,5122
    bnez	$a6,.L0db56390
    sd	$a5,32($sp)
    li	$a7,5122
    bne	$s1,$a7,.L0db565cc
    # Line 659
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,80($sp)
    sd	$v0,24($sp)
    b	.L0db56390
    sd	$a5,32($sp)
.L0db56484:
    # Line 614
    li	$a1,0x8034
    sltu	$at,$s1,$a1
    bnez	$at,.L0db56614
    sltu	$v1,$a1,$s1
    beqz	$v1,.L0db564ac
    li	$v0,0x8036
    sltu	$a6,$s1,$v0
    bnez	$a6,.L0db56728
    sltu	$a7,$v0,$s1
    bnez	$a7,.L0db565c8
.L0db564ac:
    # Line 644
    li	$at,6408
.L0db564b0:
    beq	$s0,$at,.L0db564bc
    li	$v1,0x8000
    bne	$s0,$v1,.L0db566e4
.L0db564bc:
    # Line 647
    li	$a7,6409
    # Line 649
    li	$a6,0x8035
    # Line 648
    li	$at,5123
    sd	$at,24($sp)
    # Line 649
    beq	$s1,$a6,.L0db564e0
    sd	$a7,32($sp)
    li	$v1,0x8036
    bne	$s1,$v1,.L0db56394
    ld	$a0,8($sp)
.L0db564e0:
    sd	$ra,80($sp)
    # Line 651
    li	$a6,5125
    b	.L0db56390
    sd	$a6,24($sp)
.L0db564f0:
    # Line 593
    li	$a7,6400
    bne	$s0,$a7,.L0db5658c
    # Line 611
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
.L0db564fc:
    # Line 597
    b	.L0db56378
    # Line 613
    sltiu	$a7,$s1,5126
.L0db56504:
    # Line 676
    ld	$a5,16($sp)
    ld	$a4,24($sp)
    ld	$a3,32($sp)
    move	$a2,$s2
    move	$a0,$s3
    # Line 668
    li	$t0,171
    ld	$t1,0($sp)
    # Line 676
    ld	$t2,8($sp)
    # lw $t9, -26712($gp) # &__glFillImage
    addiu	$a6,$t1,32
    move	$a1,$t2
    # Line 674
    sw	$s1,28($t1)
    # Line 673
    sw	$s0,24($t1)
    # Line 672
    sw	$s2,20($t1)
    # Line 671
    sw	$t2,16($t1)
    # Line 676
    jal	__glFillImage
    # Line 668
    sh	$t0,12($t1)
    # Line 679
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s3
    ld	$a1,0($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_DrawPixels
    ld	$gp,56($sp)
    # Line 680
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$ra,80($sp)
    ld	$s2,64($sp)
    ld	$s3,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db5657c:
    # Line 593
    li	$at,6404
    beq	$s0,$at,.L0db56374
    # Line 608
    move	$a0,$zero
.L0db56588:
    # Line 611
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
.L0db5658c:
    sd	$ra,80($sp)
    jal	__gllc_InvalidEnum
    move	$a0,$s3
    ld	$gp,56($sp)
    # Line 612
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$ra,80($sp)
    ld	$s2,64($sp)
    ld	$s3,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db565b8:
    sd	$v0,24($sp)
    # Line 614
    li	$v1,5120
    beq	$s1,$v1,.L0db56390
    sd	$a5,32($sp)
.L0db565c8:
    # Line 659
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
.L0db565cc:
    sd	$ra,80($sp)
    jal	__gllc_InvalidEnum
    move	$a0,$s3
    ld	$gp,56($sp)
    # Line 660
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$ra,80($sp)
    ld	$s2,64($sp)
    ld	$s3,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db565f8:
    # Line 593
    sltiu	$a6,$s0,6408
    bnez	$a6,.L0db5663c
    sltiu	$a7,$s0,6409
    beqz	$a7,.L0db5658c
    # Line 611
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db56374
    # Line 608
    move	$a0,$zero
.L0db56614:
    # Line 614
    li	$a1,0x8032
    sltu	$at,$s1,$a1
    bnez	$at,.L0db5666c
    sltu	$v1,$a1,$s1
    beqz	$v1,.L0db5673c
    li	$a6,0x8033
    bne	$s1,$a6,.L0db565cc
    # Line 659
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db564b0
    # Line 644
    li	$at,6408
.L0db5663c:
    # Line 593
    li	$a7,6407
    bne	$s0,$a7,.L0db5658c
    # Line 611
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db56374
    # Line 608
    move	$a0,$zero
.L0db56650:
    # Line 614
    li	$at,5124
    bne	$s1,$at,.L0db565cc
    # Line 659
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,80($sp)
    sd	$v0,24($sp)
    b	.L0db56390
    sd	$a5,32($sp)
.L0db5666c:
    # Line 614
    li	$v1,6656
    bne	$s1,$v1,.L0db565cc
    # Line 659
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,80($sp)
    sd	$v0,24($sp)
    # Line 616
    bnez	$a0,.L0db56390
    sd	$a5,32($sp)
    # Line 617
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s3
    ld	$gp,56($sp)
    # Line 618
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$ra,80($sp)
    ld	$s2,64($sp)
    ld	$s3,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db566b4:
    # Line 590
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
    sd	$ra,80($sp)
    jal	__gllc_InvalidValue
    move	$a0,$s3
    ld	$gp,56($sp)
    # Line 591
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$ra,80($sp)
    ld	$s2,64($sp)
    ld	$s3,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db566e4:
    # Line 654
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,80($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,56($sp)
    # Line 655
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$ra,80($sp)
    ld	$s2,64($sp)
    ld	$s3,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db56714:
    # Line 593
    li	$a6,6410
    bne	$s0,$a6,.L0db5658c
    # Line 611
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db56374
    # Line 608
    move	$a0,$zero
.L0db56728:
    # Line 614
    li	$a7,0x8035
    bne	$s1,$a7,.L0db565cc
    # Line 659
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db564b0
    # Line 644
    li	$at,6408
.L0db5673c:
    # Line 630
    li	$at,6407
    bne	$s0,$at,.L0db56760
    # Line 636
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,80($sp)
    # Line 632
    li	$v1,6409
    # Line 633
    li	$a6,5121
    sd	$a6,24($sp)
    # Line 632
    b	.L0db56390
    sd	$v1,32($sp)
.L0db56760:
    sd	$ra,80($sp)
    # Line 636
    jal	__glSetError
    li	$a0,1282
    ld	$gp,56($sp)
    # Line 637
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$ra,80($sp)
    ld	$s2,64($sp)
    ld	$s3,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __gllc_DrawPixels

# Function: __glle_TexImage1D
# Declared: Line 682 (Source lines: 683-692)
# Address: 0x0db5678c - 0x0db56808 (Size: 124 bytes, Frame: 192)
.globl __glle_TexImage1D
.ent __glle_TexImage1D
__glle_TexImage1D:
    # Line 688
    addiu	$at,$a0,32
    # Line 683
    addiu	$sp,$sp,-64
    sd	$s8,24($sp)
    move	$s8,$a0
    # Line 688
    lw	$a0,__glCurrentContext
    sd	$ra,16($sp)
    lw	$a7,24($s8)
    lw	$a6,20($s8)
    lw	$a5,16($s8)
    lw	$a4,12($s8)
    lw	$a3,8($s8)
    sd	$gp,32($sp)
    # Line 683
    lui	$v0,0xa
    addiu	$v0,$v0,32524
    addu	$gp,$t9,$v0
    # Line 688
    # lw $t9, -25024($gp) # &__gllei_TexImage1D
    lw	$a2,4($s8)
    lw	$a1,0($s8)
    jal	__gllei_TexImage1D
    sw	$at,4($sp)
    ld	$gp,32($sp)
    # Line 692
    lw	$v0,28($s8)
    ld	$ra,16($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s8
    ld	$s8,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    addiu	$v0,$v0,32
.end __glle_TexImage1D

# Function: __glle_TexImage2D
# Declared: Line 695 (Source lines: 696-706)
# Address: 0x0db56808 - 0x0db5688c (Size: 132 bytes, Frame: 192)
.globl __glle_TexImage2D
.ent __glle_TexImage2D
__glle_TexImage2D:
    # Line 701
    addiu	$v0,$a0,36
    # Line 696
    addiu	$sp,$sp,-64
    sd	$ra,16($sp)
    sd	$s8,24($sp)
    move	$s8,$a0
    # Line 701
    lw	$a0,__glCurrentContext
    lw	$a7,24($s8)
    lw	$a6,20($s8)
    lw	$a5,16($s8)
    lw	$a4,12($s8)
    lw	$a3,8($s8)
    lw	$a2,4($s8)
    lw	$a1,0($s8)
    sd	$gp,32($sp)
    # Line 696
    lui	$v1,0xa
    addiu	$v1,$v1,32400
    addu	$gp,$t9,$v1
    # Line 701
    # lw $t9, -25016($gp) # &__gllei_TexImage2D
    lw	$at,28($s8)
    sw	$v0,12($sp)
    jal	__gllei_TexImage2D
    sw	$at,4($sp)
    ld	$gp,32($sp)
    # Line 706
    lw	$v0,32($s8)
    ld	$ra,16($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s8
    ld	$s8,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    addiu	$v0,$v0,36
.end __glle_TexImage2D

# Function: __gllc_TexImage1D
# Declared: Line 709 (Source lines: 713-827)
# Address: 0x0db5688c - 0x0db56ea8 (Size: 1564 bytes, Frame: 192)
.globl __gllc_TexImage1D
.ent __gllc_TexImage1D
__gllc_TexImage1D:
    # Line 713
    move	$v0,$a7
    # Line 715
    move	$t2,$a6
    # Line 714
    move	$t3,$a5
    # Line 720
    li	$at,0x8063
    # Line 713
    addiu	$sp,$sp,-192
    sd	$s4,88($sp)
    # Line 720
    lw	$s4,__glCurrentContext
    sd	$s1,72($sp)
    # Line 713
    move	$s1,$a6
    sd	$s0,64($sp)
    move	$s0,$a5
    sd	$s3,80($sp)
    move	$s3,$a3
    sd	$s2,104($sp)
    move	$s2,$a4
    sd	$gp,96($sp)
    lui	$v1,0xa
    addiu	$v1,$v1,32268
    # Line 720
    beq	$a0,$at,.L0db56dfc
    # Line 713
    addu	$gp,$t9,$v1
    # Line 736
    sltiu	$v1,$s0,6403
    # Line 728
    bltz	$s2,.L0db56bcc
    # Line 736
    sltiu	$at,$s0,6408
    # Line 728
    slti	$t0,$s2,2
    beqz	$t0,.L0db56bd0
    # Line 729
    nop	# was lw $t9, -29432($gp) # &__gllc_InvalidValue
    # Line 730
    bltz	$s3,.L0db56e44
    # Line 734
    sltiu	$t1,$s0,6407
    bnezl	$t1,.L0db56994
    # Line 736
    sltiu	$at,$s0,6404
    beqz	$at,.L0db56b10
    sltiu	$t1,$s0,6410
.L0db5690c:
    # Line 749
    move	$a3,$zero
.L0db56910:
    # Line 754
    sltiu	$v1,$s1,5126
    bnez	$v1,.L0db569c0
    # Line 755
    sltiu	$at,$s1,5123
    sd	$t2,48($sp)
    sltiu	$t0,$s1,5127
    bnez	$t0,.L0db56a28
    sd	$t3,56($sp)
    li	$a4,0x8034
    sltu	$t1,$s1,$a4
    bnez	$t1,.L0db56cc8
    sltu	$at,$a4,$s1
    bnez	$at,.L0db56d80
    # Line 785
    li	$v1,6408
.L0db56944:
    beq	$s0,$v1,.L0db56950
    li	$t0,0x8000
    bne	$s0,$t0,.L0db56da0
.L0db56950:
    # Line 788
    li	$at,6409
    # Line 790
    li	$t1,0x8035
    # Line 789
    li	$v1,5123
    sd	$v1,48($sp)
    # Line 790
    beq	$s1,$t1,.L0db56974
    sd	$at,56($sp)
    li	$t0,0x8036
    bnel	$s1,$t0,.L0db56a2c
    sd	$v0,16($sp)
.L0db56974:
    sd	$ra,112($sp)
    sd	$v0,16($sp)
    sd	$a2,24($sp)
    sd	$a1,32($sp)
    sd	$a0,40($sp)
    # Line 792
    li	$t1,5125
    b	.L0db56a28
    sd	$t1,48($sp)
.L0db56994:
    # Line 736
    bnez	$at,.L0db56af8
    nop
    sltiu	$v1,$s0,6405
    bnez	$v1,.L0db5690c
    sltiu	$t0,$s0,6406
    bnez	$t0,.L0db56c14
    sltiu	$t1,$s0,6407
    beqz	$t1,.L0db56c24
    # Line 752
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db56910
    # Line 749
    move	$a3,$zero
.L0db569c0:
    # Line 755
    bnez	$at,.L0db56b30
    sltiu	$v1,$s1,5124
    sd	$t2,48($sp)
    bnez	$v1,.L0db56a28
    sd	$t3,56($sp)
    sltiu	$t0,$s1,5125
    bnez	$t0,.L0db56c70
    sltiu	$t1,$s1,5126
    beqz	$t1,.L0db56c98
    # Line 800
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,112($sp)
    sd	$v0,16($sp)
    sd	$a2,24($sp)
    sd	$a1,32($sp)
    sd	$a0,40($sp)
    sd	$t2,48($sp)
    b	.L0db56a28
    sd	$t3,56($sp)
.L0db56a08:
    sd	$v0,16($sp)
    sd	$a2,24($sp)
    sd	$a1,32($sp)
    sd	$a0,40($sp)
    sd	$t2,48($sp)
    # Line 755
    li	$at,5120
    bne	$s1,$at,.L0db56c94
    sd	$t3,56($sp)
.L0db56a28:
    sd	$v0,16($sp)
.L0db56a2c:
    sd	$a0,40($sp)
    # Line 804
    move	$a0,$s3
    move	$a3,$s1
    sd	$a2,24($sp)
    move	$a2,$s0
    # lw $t9, -26724($gp) # &__glImageSize
    sd	$a1,32($sp)
    sd	$ra,112($sp)
    jal	__glImageSize
    li	$a1,1
    # Line 807
    move	$a0,$s4
    # Line 805
    li	$a2,-4
    addiu	$a1,$v0,3
    # Line 807
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 805
    and	$a1,$a1,$a2
    sd	$a1,0($sp)
    # Line 807
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,32
    # Line 813
    ld	$v1,32($sp)
    # Line 814
    ld	$t1,24($sp)
    # Line 807
    beqz	$v0,.L0db56b78
    ld	$ra,112($sp)
    # Line 818
    sw	$s1,40($v0)
    # Line 817
    sw	$s0,36($v0)
    # Line 816
    sw	$s2,32($v0)
    # Line 815
    sw	$s3,28($v0)
    # Line 813
    sw	$v1,20($v0)
    # Line 814
    sw	$t1,24($v0)
    # Line 809
    li	$t1,108
    # Line 812
    ld	$at,40($sp)
    # Line 809
    sh	$t1,12($v0)
    ld	$t0,0($sp)
    # Line 812
    sw	$at,16($v0)
    # Line 819
    blez	$t0,.L0db56ac0
    sw	$t0,44($v0)
    ld	$at,16($sp)
    bnez	$at,.L0db56b98
.L0db56ac0:
    # Line 826
    nop	# was lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s4
    move	$a1,$v0
    jal	__glDlistAppendOp
    la	$a2,__glle_TexImage1D
    ld	$gp,96($sp)
    # Line 827
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    ld	$s2,104($sp)
    ld	$ra,112($sp)
    ld	$s3,80($sp)
    ld	$s4,88($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db56af8:
    # Line 736
    bnez	$v1,.L0db56c00
    sltiu	$t0,$s0,6404
    beqz	$t0,.L0db56c24
    # Line 752
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db56910
    # Line 749
    move	$a3,$zero
.L0db56b10:
    # Line 736
    bnez	$t1,.L0db56c54
    sltiu	$at,$s0,6411
    bnez	$at,.L0db5690c
    li	$v1,0x8000
    bne	$s0,$v1,.L0db56c24
    # Line 752
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db56910
    # Line 749
    move	$a3,$zero
.L0db56b30:
    # Line 755
    sltiu	$t0,$s1,5121
    bnezl	$t0,.L0db56a08
    sd	$ra,112($sp)
    sd	$t2,48($sp)
    sltiu	$t1,$s1,5122
    bnez	$t1,.L0db56a28
    sd	$t3,56($sp)
    li	$at,5122
    bne	$s1,$at,.L0db56c98
    # Line 800
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,112($sp)
    sd	$v0,16($sp)
    sd	$a2,24($sp)
    sd	$a1,32($sp)
    sd	$a0,40($sp)
    sd	$t2,48($sp)
    b	.L0db56a28
    sd	$t3,56($sp)
.L0db56b78:
    ld	$gp,96($sp)
    # Line 808
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    ld	$s2,104($sp)
    ld	$s3,80($sp)
    ld	$s4,88($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db56b98:
    sd	$v0,8($sp)
    # Line 822
    move	$a0,$s4
    move	$a1,$s3
    ld	$a5,16($sp)
    ld	$a4,48($sp)
    ld	$a3,56($sp)
    # lw $t9, -26712($gp) # &__glFillImage
    li	$a2,1
    move	$a6,$v0
    jal	__glFillImage
    addiu	$a6,$v0,48
    b	.L0db56ac0
    ld	$v0,8($sp)
.L0db56bcc:
    # Line 729
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
.L0db56bd0:
    sd	$ra,112($sp)
    jal	__gllc_InvalidValue
    move	$a0,$s4
    ld	$gp,96($sp)
    # Line 730
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    ld	$s2,104($sp)
    ld	$ra,112($sp)
    ld	$s3,80($sp)
    ld	$s4,88($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db56c00:
    # Line 736
    li	$t0,6400
    bne	$s0,$t0,.L0db56c24
    # Line 752
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    # Line 739
    b	.L0db56910
    # Line 738
    li	$a3,1
.L0db56c14:
    # Line 736
    li	$t1,6405
    beq	$s0,$t1,.L0db56910
    # Line 749
    move	$a3,$zero
    # Line 752
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
.L0db56c24:
    sd	$ra,112($sp)
    jal	__gllc_InvalidEnum
    move	$a0,$s4
    ld	$gp,96($sp)
    # Line 753
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    ld	$s2,104($sp)
    ld	$ra,112($sp)
    ld	$s3,80($sp)
    ld	$s4,88($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db56c54:
    # Line 736
    sltiu	$at,$s0,6409
    bnez	$at,.L0db56d10
    sltiu	$v1,$s0,6410
    beqz	$v1,.L0db56c24
    # Line 752
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db56910
    # Line 749
    move	$a3,$zero
.L0db56c70:
    sd	$ra,112($sp)
    sd	$v0,16($sp)
    sd	$a2,24($sp)
    sd	$a1,32($sp)
    sd	$a0,40($sp)
    sd	$t2,48($sp)
    # Line 755
    li	$t0,5124
    beq	$s1,$t0,.L0db56a28
    sd	$t3,56($sp)
.L0db56c94:
    # Line 800
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
.L0db56c98:
    sd	$ra,112($sp)
    jal	__gllc_InvalidEnum
    move	$a0,$s4
    ld	$gp,96($sp)
    # Line 801
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    ld	$s2,104($sp)
    ld	$ra,112($sp)
    ld	$s3,80($sp)
    ld	$s4,88($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db56cc8:
    # Line 755
    li	$a4,0x8032
    sltu	$t1,$s1,$a4
    bnez	$t1,.L0db56d24
    sltu	$at,$a4,$s1
    bnez	$at,.L0db56dd4
    # Line 771
    li	$v1,6407
    bne	$s0,$v1,.L0db56e78
    # Line 777
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,112($sp)
    sd	$v0,16($sp)
    sd	$a2,24($sp)
    sd	$a1,32($sp)
    sd	$a0,40($sp)
    # Line 773
    li	$t0,6409
    # Line 774
    li	$t1,5121
    sd	$t1,48($sp)
    # Line 773
    b	.L0db56a28
    sd	$t0,56($sp)
.L0db56d10:
    # Line 736
    li	$at,6408
    bne	$s0,$at,.L0db56c24
    # Line 752
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db56910
    # Line 749
    move	$a3,$zero
.L0db56d24:
    # Line 755
    li	$v1,6656
    bne	$s1,$v1,.L0db56c98
    # Line 800
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,112($sp)
    sd	$v0,16($sp)
    sd	$a2,24($sp)
    sd	$a1,32($sp)
    sd	$a0,40($sp)
    sd	$t2,48($sp)
    # Line 757
    bnez	$a3,.L0db56a28
    sd	$t3,56($sp)
    # Line 758
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s4
    ld	$gp,96($sp)
    # Line 759
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    ld	$s2,104($sp)
    ld	$ra,112($sp)
    ld	$s3,80($sp)
    ld	$s4,88($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db56d80:
    # Line 755
    li	$a3,0x8036
    sltu	$t0,$s1,$a3
    bnez	$t0,.L0db56de8
    sltu	$t1,$a3,$s1
    bnez	$t1,.L0db56c98
    # Line 800
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db56944
    # Line 785
    li	$v1,6408
.L0db56da0:
    # Line 795
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,112($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,96($sp)
    # Line 796
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    ld	$s2,104($sp)
    ld	$ra,112($sp)
    ld	$s3,80($sp)
    ld	$s4,88($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db56dd4:
    # Line 755
    li	$at,0x8033
    bne	$s1,$at,.L0db56c98
    # Line 800
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db56944
    # Line 785
    li	$v1,6408
.L0db56de8:
    # Line 755
    li	$v1,0x8035
    bne	$s1,$v1,.L0db56c98
    # Line 800
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db56944
    # Line 785
    li	$v1,6408
.L0db56dfc:
    # Line 723
    move	$a3,$s3
    lw	$t9,5640($s4)
    move	$a4,$s2
    move	$a5,$s0
    lw	$t9,176($t9)
    move	$a6,$s1
    sd	$ra,112($sp)
    jal	__gllc_InvalidEnum
    move	$a7,$v0
    ld	$gp,96($sp)
    # Line 725
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    ld	$s2,104($sp)
    ld	$ra,112($sp)
    ld	$s3,80($sp)
    ld	$s4,88($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db56e44:
    # Line 733
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
    sd	$ra,112($sp)
    jal	__gllc_InvalidValue
    move	$a0,$s4
    ld	$gp,96($sp)
    # Line 734
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    ld	$s2,104($sp)
    ld	$ra,112($sp)
    ld	$s3,80($sp)
    ld	$s4,88($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db56e78:
    sd	$ra,112($sp)
    # Line 777
    jalr	$t9
    li	$a0,1282
    ld	$gp,96($sp)
    # Line 778
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    ld	$s2,104($sp)
    ld	$ra,112($sp)
    ld	$s3,80($sp)
    ld	$s4,88($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __gllc_TexImage1D

# Function: __gllc_TexImage2D
# Declared: Line 829 (Source lines: 834-949)
# Address: 0x0db56ea8 - 0x0db574e0 (Size: 1592 bytes, Frame: 208)
.globl __gllc_TexImage2D
.ent __gllc_TexImage2D
__gllc_TexImage2D:
    # Line 836
    move	$t2,$a7
    # Line 835
    move	$t3,$a6
    # Line 834
    move	$v0,$a2
    # Line 841
    li	$at,0x8064
    # Line 834
    addiu	$sp,$sp,-208
    sd	$s5,72($sp)
    # Line 841
    lw	$s5,__glCurrentContext
    sd	$s4,96($sp)
    # Line 834
    move	$s4,$a4
    sd	$s3,104($sp)
    move	$s3,$a3
    sd	$s1,80($sp)
    move	$s1,$a7
    sd	$s2,120($sp)
    move	$s2,$a5
    sd	$s0,88($sp)
    move	$s0,$a6
    sd	$gp,112($sp)
    lui	$v1,0xa
    addiu	$v1,$v1,30704
    # Line 841
    beq	$a0,$at,.L0db57454
    # Line 834
    addu	$gp,$t9,$v1
    # Line 849
    bltz	$s2,.L0db571e0
    slti	$t0,$s2,2
    beqz	$t0,.L0db571e4
    # Line 850
    nop	# was lw $t9, -29432($gp) # &__gllc_InvalidValue
    # Line 853
    bltz	$s3,.L0db573c0
    # Line 854
    nop	# was lw $t9, -29432($gp) # &__gllc_InvalidValue
    # Line 853
    bltz	$s4,.L0db573bc
    # Line 855
    sltiu	$t1,$s0,6407
    bnez	$t1,.L0db5704c
    # Line 857
    sltiu	$at,$s0,6408
    beqz	$at,.L0db570e0
.L0db56f2c:
    # Line 870
    move	$a2,$zero
.L0db56f30:
    # Line 875
    sltiu	$v1,$s1,5126
    bnez	$v1,.L0db57078
    # Line 876
    sltiu	$t0,$s1,5127
    sd	$t2,56($sp)
    beqz	$t0,.L0db57144
    sd	$t3,64($sp)
.L0db56f48:
    sd	$v0,24($sp)
.L0db56f4c:
    sd	$a0,40($sp)
    # Line 925
    move	$a0,$s3
    sd	$a1,32($sp)
    move	$a1,$s4
    # lw $t9, -26724($gp) # &__glImageSize
    move	$a2,$s0
    sd	$ra,128($sp)
    jal	__glImageSize
    move	$a3,$s1
    # Line 928
    move	$a0,$s5
    # Line 926
    li	$a2,-4
    addiu	$a1,$v0,3
    # Line 928
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 926
    and	$a1,$a1,$a2
    sd	$a1,16($sp)
    # Line 928
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,36
    # Line 934
    ld	$v1,32($sp)
    # Line 935
    ld	$t1,24($sp)
    # Line 928
    beqz	$v0,.L0db571bc
    ld	$ra,128($sp)
    # Line 940
    sw	$s1,44($v0)
    # Line 939
    sw	$s0,40($v0)
    # Line 938
    sw	$s2,36($v0)
    # Line 937
    sw	$s4,32($v0)
    # Line 936
    sw	$s3,28($v0)
    # Line 934
    sw	$v1,20($v0)
    # Line 935
    sw	$t1,24($v0)
    # Line 930
    li	$t1,109
    # Line 933
    ld	$at,40($sp)
    ld	$t0,16($sp)
    # Line 930
    sh	$t1,12($v0)
    # Line 933
    sw	$at,16($v0)
    # Line 941
    blez	$t0,.L0db57010
    sw	$t0,48($v0)
    lw	$a5,212($sp)
    beqz	$a5,.L0db57014
    # Line 948
    nop	# was lw $t9, -29484($gp) # &__glDlistAppendOp
    sd	$v0,48($sp)
    # Line 944
    move	$a0,$s5
    move	$a1,$s3
    move	$a2,$s4
    ld	$a3,64($sp)
    # lw $t9, -26712($gp) # &__glFillImage
    ld	$a4,56($sp)
    move	$a6,$v0
    jal	__glFillImage
    addiu	$a6,$v0,52
    ld	$v0,48($sp)
.L0db57010:
    # Line 948
    # lw $t9, -29484($gp) # &__glDlistAppendOp
.L0db57014:
    move	$a0,$s5
    move	$a1,$v0
    jal	__glDlistAppendOp
    la	$a2,__glle_TexImage2D
    ld	$ra,128($sp)
    # Line 949
    ld	$s0,88($sp)
    ld	$s2,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    ld	$s3,104($sp)
    ld	$s1,80($sp)
    ld	$gp,112($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db5704c:
    # Line 857
    sltiu	$t0,$s0,6404
    bnez	$t0,.L0db570c4
    sltiu	$t1,$s0,6405
    bnez	$t1,.L0db56f2c
    sltiu	$at,$s0,6406
    bnez	$at,.L0db57280
    sltiu	$v1,$s0,6407
    beqz	$v1,.L0db57290
    # Line 873
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db56f30
    # Line 870
    move	$a2,$zero
.L0db57078:
    # Line 876
    sltiu	$t0,$s1,5123
    bnez	$t0,.L0db57104
    sltiu	$t1,$s1,5121
    sd	$t2,56($sp)
    sltiu	$t1,$s1,5124
    bnez	$t1,.L0db56f48
    sd	$t3,64($sp)
    sltiu	$at,$s1,5125
    bnez	$at,.L0db57338
    sltiu	$v1,$s1,5126
    beqz	$v1,.L0db57238
    # Line 921
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,128($sp)
    sd	$v0,24($sp)
    sd	$a1,32($sp)
    sd	$a0,40($sp)
    sd	$t2,56($sp)
    b	.L0db56f48
    sd	$t3,64($sp)
.L0db570c4:
    # Line 857
    sltiu	$t0,$s0,6403
    bnez	$t0,.L0db5726c
    sltiu	$t1,$s0,6404
    beqz	$t1,.L0db57290
    # Line 873
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db56f30
    # Line 870
    move	$a2,$zero
.L0db570e0:
    # Line 857
    sltiu	$at,$s0,6410
    bnez	$at,.L0db572c4
    sltiu	$v1,$s0,6411
    bnez	$v1,.L0db56f2c
    li	$t0,0x8000
    bne	$s0,$t0,.L0db57290
    # Line 873
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db56f30
    # Line 870
    move	$a2,$zero
.L0db57104:
    # Line 876
    bnezl	$t1,.L0db57218
    sd	$ra,128($sp)
    sd	$t2,56($sp)
    sltiu	$at,$s1,5122
    bnez	$at,.L0db56f48
    sd	$t3,64($sp)
    li	$v1,5122
    bne	$s1,$v1,.L0db57238
    # Line 921
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,128($sp)
    sd	$v0,24($sp)
    sd	$a1,32($sp)
    sd	$a0,40($sp)
    sd	$t2,56($sp)
    b	.L0db56f48
    sd	$t3,64($sp)
.L0db57144:
    # Line 876
    li	$a3,0x8034
    sltu	$t0,$s1,$a3
    bnez	$t0,.L0db572e0
    sltu	$t1,$a3,$s1
    beqz	$t1,.L0db5716c
    li	$a2,0x8036
    sltu	$at,$s1,$a2
    bnez	$at,.L0db57440
    sltu	$v1,$a2,$s1
    bnez	$v1,.L0db57234
.L0db5716c:
    # Line 906
    li	$t0,6408
.L0db57170:
    beq	$s0,$t0,.L0db5717c
    li	$t1,0x8000
    bne	$s0,$t1,.L0db573f4
.L0db5717c:
    # Line 909
    li	$v1,6409
    # Line 911
    li	$at,0x8035
    # Line 910
    li	$t0,5123
    sd	$t0,56($sp)
    # Line 911
    beq	$s1,$at,.L0db571a0
    sd	$v1,64($sp)
    li	$t1,0x8036
    bnel	$s1,$t1,.L0db56f4c
    sd	$v0,24($sp)
.L0db571a0:
    sd	$ra,128($sp)
    sd	$v0,24($sp)
    sd	$a1,32($sp)
    sd	$a0,40($sp)
    # Line 913
    li	$at,5125
    b	.L0db56f48
    sd	$at,56($sp)
.L0db571bc:
    ld	$gp,112($sp)
    # Line 929
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,120($sp)
    ld	$s3,104($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db571e0:
    # Line 850
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
.L0db571e4:
    sd	$ra,128($sp)
    jal	__gllc_InvalidValue
    move	$a0,$s5
    ld	$gp,112($sp)
    # Line 851
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,120($sp)
    ld	$s3,104($sp)
    ld	$ra,128($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db57218:
    sd	$v0,24($sp)
    sd	$a1,32($sp)
    sd	$a0,40($sp)
    sd	$t2,56($sp)
    # Line 876
    li	$v1,5120
    beq	$s1,$v1,.L0db56f48
    sd	$t3,64($sp)
.L0db57234:
    # Line 921
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
.L0db57238:
    sd	$ra,128($sp)
    jal	__gllc_InvalidEnum
    move	$a0,$s5
    ld	$gp,112($sp)
    # Line 922
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,120($sp)
    ld	$s3,104($sp)
    ld	$ra,128($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db5726c:
    # Line 857
    li	$t0,6400
    bne	$s0,$t0,.L0db57290
    # Line 873
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    # Line 860
    b	.L0db56f30
    # Line 859
    li	$a2,1
.L0db57280:
    # Line 857
    li	$t1,6405
    beq	$s0,$t1,.L0db56f30
    # Line 870
    move	$a2,$zero
    # Line 873
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
.L0db57290:
    sd	$ra,128($sp)
    jal	__gllc_InvalidEnum
    move	$a0,$s5
    ld	$gp,112($sp)
    # Line 874
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,120($sp)
    ld	$s3,104($sp)
    ld	$ra,128($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db572c4:
    # Line 857
    sltiu	$at,$s0,6409
    bnez	$at,.L0db57324
    sltiu	$v1,$s0,6410
    beqz	$v1,.L0db57290
    # Line 873
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db56f30
    # Line 870
    move	$a2,$zero
.L0db572e0:
    # Line 876
    li	$a3,0x8032
    sltu	$t0,$s1,$a3
    bnez	$t0,.L0db57360
    sltu	$t1,$a3,$s1
    bnez	$t1,.L0db5742c
    # Line 892
    li	$at,6407
    bne	$s0,$at,.L0db574ac
    # Line 898
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,128($sp)
    sd	$v0,24($sp)
    sd	$a1,32($sp)
    sd	$a0,40($sp)
    # Line 894
    li	$v1,6409
    # Line 895
    li	$t0,5121
    sd	$t0,56($sp)
    # Line 894
    b	.L0db56f48
    sd	$v1,64($sp)
.L0db57324:
    # Line 857
    li	$t1,6408
    bne	$s0,$t1,.L0db57290
    # Line 873
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db56f30
    # Line 870
    move	$a2,$zero
.L0db57338:
    # Line 876
    li	$at,5124
    bne	$s1,$at,.L0db57238
    # Line 921
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,128($sp)
    sd	$v0,24($sp)
    sd	$a1,32($sp)
    sd	$a0,40($sp)
    sd	$t2,56($sp)
    b	.L0db56f48
    sd	$t3,64($sp)
.L0db57360:
    # Line 876
    li	$v1,6656
    bne	$s1,$v1,.L0db57238
    # Line 921
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,128($sp)
    sd	$v0,24($sp)
    sd	$a1,32($sp)
    sd	$a0,40($sp)
    sd	$t2,56($sp)
    # Line 878
    bnez	$a2,.L0db56f48
    sd	$t3,64($sp)
    # Line 879
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s5
    ld	$gp,112($sp)
    # Line 880
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,120($sp)
    ld	$s3,104($sp)
    ld	$ra,128($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db573bc:
    # Line 854
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
.L0db573c0:
    sd	$ra,128($sp)
    jal	__gllc_InvalidValue
    move	$a0,$s5
    ld	$gp,112($sp)
    # Line 855
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,120($sp)
    ld	$s3,104($sp)
    ld	$ra,128($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db573f4:
    # Line 916
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,128($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,112($sp)
    # Line 917
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,120($sp)
    ld	$s3,104($sp)
    ld	$ra,128($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db5742c:
    # Line 876
    li	$t0,0x8033
    bne	$s1,$t0,.L0db57238
    # Line 921
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db57170
    # Line 906
    li	$t0,6408
.L0db57440:
    # Line 876
    li	$t1,0x8035
    bne	$s1,$t1,.L0db57238
    # Line 921
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db57170
    # Line 906
    li	$t0,6408
.L0db57454:
    sd	$ra,128($sp)
    # Line 844
    lw	$ra,212($sp)
    sw	$ra,4($sp)
    move	$a2,$v0
    lw	$t9,5640($s5)
    move	$a3,$s3
    move	$a4,$s4
    lw	$t9,180($t9)
    move	$a5,$s2
    move	$a6,$s0
    jal	__gllc_InvalidEnum
    move	$a7,$s1
    ld	$gp,112($sp)
    # Line 846
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,120($sp)
    ld	$s3,104($sp)
    ld	$ra,128($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db574ac:
    sd	$ra,128($sp)
    # Line 898
    jalr	$t9
    li	$a0,1282
    ld	$gp,112($sp)
    # Line 899
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,120($sp)
    ld	$s3,104($sp)
    ld	$ra,128($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end __gllc_TexImage2D

# Function: __glle_TexImage3DEXT
# Declared: Line 951 (Source lines: 952-962)
# Address: 0x0db574e0 - 0x0db5756c (Size: 140 bytes, Frame: 208)
.globl __glle_TexImage3DEXT
.ent __glle_TexImage3DEXT
__glle_TexImage3DEXT:
    # Line 952
    addiu	$sp,$sp,-80
    sd	$ra,32($sp)
    sd	$s8,40($sp)
    move	$s8,$a0
    # Line 957
    addiu	$v0,$s8,40
    lw	$a0,__glCurrentContext
    sd	$gp,48($sp)
    # Line 952
    lui	$a1,0xa
    addiu	$a1,$a1,29112
    # Line 957
    lw	$a7,24($s8)
    lw	$a6,20($s8)
    lw	$a5,16($s8)
    lw	$a4,12($s8)
    lw	$a3,8($s8)
    lw	$a2,4($s8)
    lw	$v1,28($s8)
    # Line 952
    addu	$gp,$t9,$a1
    # Line 957
    lw	$a1,0($s8)
    sw	$v1,4($sp)
    # lw $t9, -25008($gp) # &__gllei_TexImage3DEXT
    lw	$at,32($s8)
    sw	$v0,20($sp)
    jal	__gllei_TexImage3DEXT
    sw	$at,12($sp)
    ld	$gp,48($sp)
    # Line 962
    lw	$v0,36($s8)
    ld	$ra,32($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s8
    ld	$s8,40($sp)
    addiu	$sp,$sp,80
    jr	$ra
    addiu	$v0,$v0,40
.end __glle_TexImage3DEXT

# Function: __gllc_TexImage3DEXT
# Declared: Line 965 (Source lines: 970-1079)
# Address: 0x0db5756c - 0x0db57b88 (Size: 1564 bytes, Frame: 208)
.globl __gllc_TexImage3DEXT
.ent __gllc_TexImage3DEXT
__gllc_TexImage3DEXT:
    # Line 970
    move	$v0,$a1
    # Line 971
    move	$t3,$a7
    # Line 976
    li	$at,0x8070
    # Line 970
    addiu	$sp,$sp,-208
    sd	$s6,104($sp)
    # Line 976
    lw	$s6,__glCurrentContext
    sd	$s5,80($sp)
    # Line 970
    move	$s5,$a5
    sd	$s4,72($sp)
    move	$s4,$a4
    sd	$s3,120($sp)
    move	$s3,$a3
    sd	$s2,128($sp)
    move	$s2,$a6
    sd	$s0,96($sp)
    move	$s0,$a7
    sd	$gp,112($sp)
    lui	$v1,0xa
    addiu	$v1,$v1,28972
    sd	$s1,88($sp)
    # Line 972
    lw	$s1,212($sp)
    # Line 970
    addu	$gp,$t9,$v1
    # Line 976
    beq	$a0,$at,.L0db57af0
    # Line 972
    move	$t2,$s1
    # Line 986
    bltz	$s2,.L0db5792c
    slti	$t0,$s2,2
    beqz	$t0,.L0db57930
    # Line 987
    nop	# was lw $t9, -29432($gp) # &__gllc_InvalidValue
    # Line 990
    bltz	$s3,.L0db579e0
    # Line 991
    nop	# was lw $t9, -29432($gp) # &__gllc_InvalidValue
    # Line 990
    bltz	$s4,.L0db579e0
    # Line 991
    nop	# was lw $t9, -29432($gp) # &__gllc_InvalidValue
    # Line 990
    bltz	$s5,.L0db579dc
    # Line 992
    sltiu	$t1,$s0,6407
    bnez	$t1,.L0db5772c
    # Line 994
    sltiu	$at,$s0,6408
    beqz	$at,.L0db577c0
.L0db57600:
    # Line 1009
    sltiu	$v1,$s1,5126
.L0db57604:
    bnez	$v1,.L0db57758
    # Line 1010
    sltiu	$t0,$s1,5127
    sd	$t2,56($sp)
    beqz	$t0,.L0db57824
    sd	$t3,64($sp)
.L0db57618:
    sd	$v0,32($sp)
.L0db5761c:
    sd	$a0,48($sp)
    # Line 1053
    move	$a0,$s3
    move	$a1,$s4
    sd	$a2,40($sp)
    move	$a2,$s5
    # lw $t9, -26720($gp) # &__glImageSize3D
    move	$a3,$s0
    sd	$ra,136($sp)
    jal	__glImageSize3D
    move	$a4,$s1
    # Line 1056
    move	$a0,$s6
    # Line 1054
    li	$a2,-4
    addiu	$a1,$v0,3
    # Line 1056
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 1054
    and	$a1,$a1,$a2
    sd	$a1,24($sp)
    # Line 1056
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,40
    # Line 1062
    ld	$v1,32($sp)
    # Line 1063
    ld	$t1,40($sp)
    # Line 1056
    beqz	$v0,.L0db57904
    ld	$ra,136($sp)
    # Line 1069
    sw	$s1,48($v0)
    # Line 1068
    sw	$s0,44($v0)
    # Line 1067
    sw	$s2,40($v0)
    # Line 1066
    sw	$s5,36($v0)
    # Line 1065
    sw	$s4,32($v0)
    # Line 1064
    sw	$s3,28($v0)
    # Line 1062
    sw	$v1,20($v0)
    # Line 1063
    sw	$t1,24($v0)
    # Line 1058
    li	$t1,208
    # Line 1061
    ld	$at,48($sp)
    ld	$t0,24($sp)
    # Line 1058
    sh	$t1,12($v0)
    # Line 1061
    sw	$at,16($v0)
    # Line 1070
    blez	$t0,.L0db576ec
    sw	$t0,52($v0)
    lw	$a6,220($sp)
    beqz	$a6,.L0db576f0
    # Line 1078
    nop	# was lw $t9, -29484($gp) # &__glDlistAppendOp
    sd	$v0,16($sp)
    # Line 1073
    move	$a0,$s6
    move	$a1,$s3
    move	$a2,$s4
    move	$a3,$s5
    ld	$a4,64($sp)
    # lw $t9, -26716($gp) # &__glFillImage3D
    ld	$a5,56($sp)
    move	$a7,$v0
    jal	__glFillImage3D
    addiu	$a7,$v0,56
    ld	$v0,16($sp)
.L0db576ec:
    # Line 1078
    # lw $t9, -29484($gp) # &__glDlistAppendOp
.L0db576f0:
    move	$a0,$s6
    move	$a1,$v0
    jal	__glDlistAppendOp
    la	$a2,__glle_TexImage3DEXT
    ld	$ra,136($sp)
    # Line 1079
    ld	$s0,96($sp)
    ld	$s2,128($sp)
    ld	$s4,72($sp)
    ld	$s6,104($sp)
    ld	$s5,80($sp)
    ld	$s3,120($sp)
    ld	$s1,88($sp)
    ld	$gp,112($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db5772c:
    # Line 994
    sltiu	$t0,$s0,6404
    bnez	$t0,.L0db577a4
    sltiu	$t1,$s0,6405
    bnez	$t1,.L0db57600
    sltiu	$at,$s0,6406
    bnez	$at,.L0db57a18
    sltiu	$v1,$s0,6407
    beqz	$v1,.L0db578cc
    # Line 1007
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db57604
    # Line 1009
    sltiu	$v1,$s1,5126
.L0db57758:
    # Line 1010
    sltiu	$t0,$s1,5123
    bnez	$t0,.L0db577e4
    sltiu	$t1,$s1,5121
    sd	$t2,56($sp)
    sltiu	$t1,$s1,5124
    bnez	$t1,.L0db57618
    sd	$t3,64($sp)
    sltiu	$at,$s1,5125
    bnez	$at,.L0db57a40
    sltiu	$v1,$s1,5126
    beqz	$v1,.L0db57988
    # Line 1049
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,136($sp)
    sd	$v0,32($sp)
    sd	$a2,40($sp)
    sd	$a0,48($sp)
    sd	$t2,56($sp)
    b	.L0db57618
    sd	$t3,64($sp)
.L0db577a4:
    # Line 994
    sltiu	$t0,$s0,6403
    bnez	$t0,.L0db578bc
    sltiu	$t1,$s0,6404
    beqz	$t1,.L0db578cc
    # Line 1007
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db57604
    # Line 1009
    sltiu	$v1,$s1,5126
.L0db577c0:
    # Line 994
    sltiu	$at,$s0,6410
    bnez	$at,.L0db579c0
    sltiu	$v1,$s0,6411
    bnez	$v1,.L0db57600
    li	$t0,0x8000
    beq	$s0,$t0,.L0db57604
    # Line 1009
    sltiu	$v1,$s1,5126
    b	.L0db578c8
    sd	$ra,136($sp)
.L0db577e4:
    # Line 1010
    bnezl	$t1,.L0db57968
    sd	$ra,136($sp)
    sd	$t2,56($sp)
    sltiu	$at,$s1,5122
    bnez	$at,.L0db57618
    sd	$t3,64($sp)
    li	$v1,5122
    bne	$s1,$v1,.L0db57988
    # Line 1049
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,136($sp)
    sd	$v0,32($sp)
    sd	$a2,40($sp)
    sd	$a0,48($sp)
    sd	$t2,56($sp)
    b	.L0db57618
    sd	$t3,64($sp)
.L0db57824:
    # Line 1010
    li	$a1,0x8034
    sltu	$t0,$s1,$a1
    bnez	$t0,.L0db57858
    sltu	$t1,$a1,$s1
    beqz	$t1,.L0db5786c
    li	$a1,0x8036
    sltu	$at,$s1,$a1
    bnez	$at,.L0db57adc
    sltu	$v1,$a1,$s1
    bnez	$v1,.L0db57988
    # Line 1049
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db57870
    # Line 1034
    li	$at,6408
.L0db57858:
    # Line 1010
    li	$a1,0x8033
    sltu	$t0,$s1,$a1
    bnez	$t0,.L0db57a68
    sltu	$t1,$a1,$s1
    bnez	$t1,.L0db57984
.L0db5786c:
    # Line 1034
    li	$at,6408
.L0db57870:
    beq	$s0,$at,.L0db5787c
    li	$v1,0x8000
    bne	$s0,$v1,.L0db57aa0
.L0db5787c:
    # Line 1037
    li	$t1,6409
    # Line 1039
    li	$t0,0x8035
    # Line 1038
    li	$at,5123
    sd	$at,56($sp)
    # Line 1039
    beq	$s1,$t0,.L0db578a0
    sd	$t1,64($sp)
    li	$v1,0x8036
    bnel	$s1,$v1,.L0db5761c
    sd	$v0,32($sp)
.L0db578a0:
    sd	$ra,136($sp)
    sd	$v0,32($sp)
    sd	$a2,40($sp)
    sd	$a0,48($sp)
    # Line 1041
    li	$t0,5125
    b	.L0db57618
    sd	$t0,56($sp)
.L0db578bc:
    # Line 994
    li	$t1,6400
    beq	$s0,$t1,.L0db57604
    # Line 1009
    sltiu	$v1,$s1,5126
.L0db578c8:
    # Line 1007
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
.L0db578cc:
    sd	$ra,136($sp)
    jal	__gllc_InvalidEnum
    move	$a0,$s6
    ld	$gp,112($sp)
    # Line 1008
    ld	$s0,96($sp)
    ld	$s1,88($sp)
    ld	$s2,128($sp)
    ld	$s3,120($sp)
    ld	$s4,72($sp)
    ld	$ra,136($sp)
    ld	$s5,80($sp)
    ld	$s6,104($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db57904:
    ld	$gp,112($sp)
    # Line 1057
    ld	$s0,96($sp)
    ld	$s1,88($sp)
    ld	$s2,128($sp)
    ld	$s3,120($sp)
    ld	$s4,72($sp)
    ld	$s5,80($sp)
    ld	$s6,104($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db5792c:
    # Line 987
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
.L0db57930:
    sd	$ra,136($sp)
    jal	__gllc_InvalidValue
    move	$a0,$s6
    ld	$gp,112($sp)
    # Line 988
    ld	$s0,96($sp)
    ld	$s1,88($sp)
    ld	$s2,128($sp)
    ld	$s3,120($sp)
    ld	$s4,72($sp)
    ld	$ra,136($sp)
    ld	$s5,80($sp)
    ld	$s6,104($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db57968:
    sd	$v0,32($sp)
    sd	$a2,40($sp)
    sd	$a0,48($sp)
    sd	$t2,56($sp)
    # Line 1010
    li	$at,5120
    beq	$s1,$at,.L0db57618
    sd	$t3,64($sp)
.L0db57984:
    # Line 1049
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
.L0db57988:
    sd	$ra,136($sp)
    jal	__gllc_InvalidEnum
    move	$a0,$s6
    ld	$gp,112($sp)
    # Line 1050
    ld	$s0,96($sp)
    ld	$s1,88($sp)
    ld	$s2,128($sp)
    ld	$s3,120($sp)
    ld	$s4,72($sp)
    ld	$ra,136($sp)
    ld	$s5,80($sp)
    ld	$s6,104($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db579c0:
    # Line 994
    sltiu	$v1,$s0,6409
    bnez	$v1,.L0db57a2c
    sltiu	$t0,$s0,6410
    beqz	$t0,.L0db578cc
    # Line 1007
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db57604
    # Line 1009
    sltiu	$v1,$s1,5126
.L0db579dc:
    # Line 991
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
.L0db579e0:
    sd	$ra,136($sp)
    jal	__gllc_InvalidValue
    move	$a0,$s6
    ld	$gp,112($sp)
    # Line 992
    ld	$s0,96($sp)
    ld	$s1,88($sp)
    ld	$s2,128($sp)
    ld	$s3,120($sp)
    ld	$s4,72($sp)
    ld	$ra,136($sp)
    ld	$s5,80($sp)
    ld	$s6,104($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db57a18:
    # Line 994
    li	$t1,6405
    bne	$s0,$t1,.L0db578cc
    # Line 1007
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db57604
    # Line 1009
    sltiu	$v1,$s1,5126
.L0db57a2c:
    # Line 994
    li	$at,6408
    bne	$s0,$at,.L0db578cc
    # Line 1007
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db57604
    # Line 1009
    sltiu	$v1,$s1,5126
.L0db57a40:
    # Line 1010
    li	$v1,5124
    bne	$s1,$v1,.L0db57988
    # Line 1049
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,136($sp)
    sd	$v0,32($sp)
    sd	$a2,40($sp)
    sd	$a0,48($sp)
    sd	$t2,56($sp)
    b	.L0db57618
    sd	$t3,64($sp)
.L0db57a68:
    # Line 1010
    li	$t0,0x8032
    bne	$s1,$t0,.L0db57984
    # Line 1020
    li	$t1,6407
    bne	$s0,$t1,.L0db57b50
    # Line 1026
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,136($sp)
    sd	$v0,32($sp)
    sd	$a2,40($sp)
    sd	$a0,48($sp)
    # Line 1022
    li	$at,6409
    # Line 1023
    li	$v1,5121
    sd	$v1,56($sp)
    # Line 1022
    b	.L0db57618
    sd	$at,64($sp)
.L0db57aa0:
    # Line 1044
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,136($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,112($sp)
    # Line 1045
    ld	$s0,96($sp)
    ld	$s1,88($sp)
    ld	$s2,128($sp)
    ld	$s3,120($sp)
    ld	$s4,72($sp)
    ld	$ra,136($sp)
    ld	$s5,80($sp)
    ld	$s6,104($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db57adc:
    # Line 1010
    li	$t0,0x8035
    bne	$s1,$t0,.L0db57988
    # Line 1049
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db57870
    # Line 1034
    li	$at,6408
.L0db57af0:
    # Line 979
    sw	$s1,4($sp)
    sd	$ra,136($sp)
    lw	$ra,220($sp)
    sw	$ra,12($sp)
    move	$a1,$v0
    lw	$t9,5640($s6)
    move	$a3,$s3
    move	$a4,$s4
    lw	$t9,784($t9)
    move	$a5,$s5
    move	$a6,$s2
    jal	__gllc_InvalidEnum
    move	$a7,$s0
    ld	$gp,112($sp)
    # Line 983
    ld	$s0,96($sp)
    ld	$s1,88($sp)
    ld	$s2,128($sp)
    ld	$s3,120($sp)
    ld	$s4,72($sp)
    ld	$ra,136($sp)
    ld	$s5,80($sp)
    ld	$s6,104($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db57b50:
    sd	$ra,136($sp)
    # Line 1026
    jalr	$t9
    li	$a0,1282
    ld	$gp,112($sp)
    # Line 1027
    ld	$s0,96($sp)
    ld	$s1,88($sp)
    ld	$s2,128($sp)
    ld	$s3,120($sp)
    ld	$s4,72($sp)
    ld	$ra,136($sp)
    ld	$s5,80($sp)
    ld	$s6,104($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end __gllc_TexImage3DEXT

# Function: __glle_TexSubImage1DEXT
# Declared: Line 1081 (Source lines: 1082-1091)
# Address: 0x0db57b88 - 0x0db57bfc (Size: 116 bytes, Frame: 48)
.globl __glle_TexSubImage1DEXT
.ent __glle_TexSubImage1DEXT
__glle_TexSubImage1DEXT:
    # Line 1082
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1087
    lw	$a0,__glCurrentContext
    sd	$ra,0($sp)
    addiu	$a7,$s8,28
    lw	$a6,20($s8)
    lw	$a5,16($s8)
    lw	$a4,12($s8)
    sd	$gp,16($sp)
    # Line 1082
    lui	$at,0xa
    addiu	$at,$at,27408
    addu	$gp,$t9,$at
    # Line 1087
    # lw $t9, -24624($gp) # &__gllei_TexSubImage1DEXT
    lw	$a3,8($s8)
    lw	$a2,4($s8)
    jal	__gllei_TexSubImage1DEXT
    lw	$a1,0($s8)
    ld	$gp,16($sp)
    # Line 1091
    lw	$v0,24($s8)
    ld	$ra,0($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s8
    ld	$s8,8($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,28
.end __glle_TexSubImage1DEXT

# Function: __gllc_TexSubImage1DEXT
# Declared: Line 1094 (Source lines: 1097-1200)
# Address: 0x0db57bfc - 0x0db580dc (Size: 1248 bytes, Frame: 176)
.globl __gllc_TexSubImage1DEXT
.ent __gllc_TexSubImage1DEXT
__gllc_TexSubImage1DEXT:
    # Line 1099
    move	$v0,$a5
    # Line 1098
    move	$t1,$a4
    # Line 1097
    addiu	$sp,$sp,-176
    sd	$s3,96($sp)
    # Line 1104
    lw	$s3,__glCurrentContext
    sd	$a6,40($sp)
    sd	$a2,32($sp)
    sd	$s2,88($sp)
    # Line 1097
    move	$s2,$a3
    sd	$s1,64($sp)
    move	$s1,$a5
    sd	$a0,16($sp)
    sd	$s0,72($sp)
    move	$s0,$a4
    sd	$a1,24($sp)
    sd	$gp,80($sp)
    lui	$at,0xa
    addiu	$at,$at,27292
    # Line 1104
    bltz	$a3,.L0db58080
    # Line 1097
    addu	$gp,$t9,$at
    # Line 1108
    sltiu	$v1,$s0,6407
    bnez	$v1,.L0db57ca8
    # Line 1110
    sltiu	$a7,$s0,6408
    bnez	$a7,.L0db57cb8
    sltiu	$t0,$s0,6410
    bnez	$t0,.L0db57f28
    sltiu	$at,$s0,6411
    bnez	$at,.L0db57cb8
    li	$v1,0x8000
    beq	$s0,$v1,.L0db57cbc
    # Line 1123
    move	$a0,$zero
    # Line 1126
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
.L0db57c7c:
    sd	$ra,104($sp)
    jal	__gllc_InvalidEnum
    move	$a0,$s3
    ld	$gp,80($sp)
    # Line 1127
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    ld	$ra,104($sp)
    ld	$s2,88($sp)
    ld	$s3,96($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db57ca8:
    # Line 1110
    sltiu	$a7,$s0,6404
    bnez	$a7,.L0db57df0
    sltiu	$t0,$s0,6405
    beqz	$t0,.L0db57f0c
.L0db57cb8:
    # Line 1123
    move	$a0,$zero
.L0db57cbc:
    # Line 1128
    sltiu	$at,$s1,5126
    bnez	$at,.L0db57db8
    # Line 1129
    sltiu	$a7,$s1,5123
    sd	$v0,48($sp)
    sltiu	$v1,$s1,5127
    beqz	$v1,.L0db57e44
    sd	$t1,56($sp)
.L0db57cd8:
    # Line 1178
    move	$a0,$s2
.L0db57cdc:
    move	$a3,$s1
    # lw $t9, -26724($gp) # &__glImageSize
    move	$a2,$s0
    sd	$ra,104($sp)
    jal	__glImageSize
    li	$a1,1
    # Line 1181
    move	$a0,$s3
    # Line 1179
    li	$a2,-4
    addiu	$a1,$v0,3
    # Line 1181
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 1179
    and	$a1,$a1,$a2
    sd	$a1,0($sp)
    # Line 1181
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,28
    # Line 1187
    ld	$v1,24($sp)
    # Line 1188
    ld	$t0,32($sp)
    # Line 1181
    beqz	$v0,.L0db57e9c
    ld	$ra,104($sp)
    # Line 1191
    sw	$s1,36($v0)
    # Line 1190
    sw	$s0,32($v0)
    # Line 1189
    sw	$s2,28($v0)
    # Line 1187
    sw	$v1,20($v0)
    # Line 1188
    sw	$t0,24($v0)
    # Line 1183
    li	$t0,193
    # Line 1186
    ld	$at,16($sp)
    ld	$a7,0($sp)
    # Line 1183
    sh	$t0,12($v0)
    # Line 1186
    sw	$at,16($v0)
    # Line 1192
    blez	$a7,.L0db57d84
    sw	$a7,40($v0)
    sd	$v0,8($sp)
    # Line 1195
    move	$a0,$s3
    move	$a1,$s2
    ld	$a5,40($sp)
    ld	$a4,48($sp)
    ld	$a3,56($sp)
    # lw $t9, -26712($gp) # &__glFillImage
    li	$a2,1
    move	$a6,$v0
    jal	__glFillImage
    addiu	$a6,$v0,44
    ld	$v0,8($sp)
.L0db57d84:
    # Line 1199
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s3
    move	$a1,$v0
    jal	__glDlistAppendOp
    la	$a2,__glle_TexSubImage1DEXT
    ld	$ra,104($sp)
    # Line 1200
    ld	$s0,72($sp)
    ld	$s2,88($sp)
    ld	$s3,96($sp)
    ld	$s1,64($sp)
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db57db8:
    # Line 1129
    bnez	$a7,.L0db57e0c
    sltiu	$t0,$s1,5124
    sd	$v0,48($sp)
    bnez	$t0,.L0db57cd8
    sd	$t1,56($sp)
    sltiu	$at,$s1,5125
    bnez	$at,.L0db57fa4
    sltiu	$v1,$s1,5126
    beqz	$v1,.L0db57ecc
    # Line 1174
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,104($sp)
    sd	$v0,48($sp)
    b	.L0db57cd8
    sd	$t1,56($sp)
.L0db57df0:
    # Line 1110
    sltiu	$a7,$s0,6403
    bnez	$a7,.L0db57ef8
    sltiu	$t0,$s0,6404
    beqz	$t0,.L0db57c7c
    # Line 1126
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db57cbc
    # Line 1123
    move	$a0,$zero
.L0db57e0c:
    # Line 1129
    sltiu	$at,$s1,5121
    bnezl	$at,.L0db57eb8
    sd	$ra,104($sp)
    sd	$v0,48($sp)
    sltiu	$v1,$s1,5122
    bnez	$v1,.L0db57cd8
    sd	$t1,56($sp)
    li	$a7,5122
    bne	$s1,$a7,.L0db57ecc
    # Line 1174
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,104($sp)
    sd	$v0,48($sp)
    b	.L0db57cd8
    sd	$t1,56($sp)
.L0db57e44:
    # Line 1129
    li	$a1,0x8034
    sltu	$t0,$s1,$a1
    bnez	$t0,.L0db57f44
    sltu	$at,$a1,$s1
    bnez	$at,.L0db58008
    # Line 1159
    li	$v1,6408
.L0db57e5c:
    beq	$s0,$v1,.L0db57e68
    li	$a7,0x8000
    bne	$s0,$a7,.L0db58028
.L0db57e68:
    # Line 1162
    li	$at,6409
    # Line 1164
    li	$t0,0x8035
    # Line 1163
    li	$v1,5123
    sd	$v1,48($sp)
    # Line 1164
    beq	$s1,$t0,.L0db57e8c
    sd	$at,56($sp)
    li	$a7,0x8036
    bne	$s1,$a7,.L0db57cdc
    # Line 1178
    move	$a0,$s2
.L0db57e8c:
    sd	$ra,104($sp)
    # Line 1166
    li	$t0,5125
    b	.L0db57cd8
    sd	$t0,48($sp)
.L0db57e9c:
    ld	$gp,80($sp)
    # Line 1182
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    ld	$s2,88($sp)
    ld	$s3,96($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db57eb8:
    sd	$v0,48($sp)
    # Line 1129
    li	$at,5120
    beq	$s1,$at,.L0db57cd8
    sd	$t1,56($sp)
    # Line 1174
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
.L0db57ecc:
    sd	$ra,104($sp)
    jal	__gllc_InvalidEnum
    move	$a0,$s3
    ld	$gp,80($sp)
    # Line 1175
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    ld	$ra,104($sp)
    ld	$s2,88($sp)
    ld	$s3,96($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db57ef8:
    # Line 1110
    li	$v1,6400
    bne	$s0,$v1,.L0db57c7c
    # Line 1126
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    # Line 1113
    b	.L0db57cbc
    # Line 1112
    li	$a0,1
.L0db57f0c:
    # Line 1110
    sltiu	$a7,$s0,6406
    bnez	$a7,.L0db57f7c
    sltiu	$t0,$s0,6407
    beqz	$t0,.L0db57c7c
    # Line 1126
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db57cbc
    # Line 1123
    move	$a0,$zero
.L0db57f28:
    # Line 1110
    sltiu	$at,$s0,6409
    bnez	$at,.L0db57f90
    sltiu	$v1,$s0,6410
    beqz	$v1,.L0db57c7c
    # Line 1126
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db57cbc
    # Line 1123
    move	$a0,$zero
.L0db57f44:
    # Line 1129
    li	$a1,0x8032
    sltu	$a7,$s1,$a1
    bnez	$a7,.L0db57fc0
    sltu	$t0,$a1,$s1
    bnez	$t0,.L0db58058
    # Line 1145
    li	$at,6407
    bne	$s0,$at,.L0db580b0
    # Line 1151
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,104($sp)
    # Line 1147
    li	$v1,6409
    # Line 1148
    li	$a7,5121
    sd	$a7,48($sp)
    # Line 1147
    b	.L0db57cd8
    sd	$v1,56($sp)
.L0db57f7c:
    # Line 1110
    li	$t0,6405
    bne	$s0,$t0,.L0db57c7c
    # Line 1126
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db57cbc
    # Line 1123
    move	$a0,$zero
.L0db57f90:
    # Line 1110
    li	$at,6408
    bne	$s0,$at,.L0db57c7c
    # Line 1126
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db57cbc
    # Line 1123
    move	$a0,$zero
.L0db57fa4:
    # Line 1129
    li	$v1,5124
    bne	$s1,$v1,.L0db57ecc
    # Line 1174
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,104($sp)
    sd	$v0,48($sp)
    b	.L0db57cd8
    sd	$t1,56($sp)
.L0db57fc0:
    # Line 1129
    li	$a7,6656
    bne	$s1,$a7,.L0db57ecc
    # Line 1174
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,104($sp)
    sd	$v0,48($sp)
    # Line 1131
    bnez	$a0,.L0db57cd8
    sd	$t1,56($sp)
    # Line 1132
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s3
    ld	$gp,80($sp)
    # Line 1133
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    ld	$ra,104($sp)
    ld	$s2,88($sp)
    ld	$s3,96($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db58008:
    # Line 1129
    li	$v0,0x8036
    sltu	$t0,$s1,$v0
    bnez	$t0,.L0db5806c
    sltu	$at,$v0,$s1
    bnez	$at,.L0db57ecc
    # Line 1174
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db57e5c
    # Line 1159
    li	$v1,6408
.L0db58028:
    # Line 1169
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,104($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,80($sp)
    # Line 1170
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    ld	$ra,104($sp)
    ld	$s2,88($sp)
    ld	$s3,96($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db58058:
    # Line 1129
    li	$v1,0x8033
    bne	$s1,$v1,.L0db57ecc
    # Line 1174
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db57e5c
    # Line 1159
    li	$v1,6408
.L0db5806c:
    # Line 1129
    li	$a7,0x8035
    bne	$s1,$a7,.L0db57ecc
    # Line 1174
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db57e5c
    # Line 1159
    li	$v1,6408
.L0db58080:
    # Line 1107
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
    sd	$ra,104($sp)
    jal	__gllc_InvalidValue
    move	$a0,$s3
    ld	$gp,80($sp)
    # Line 1108
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    ld	$ra,104($sp)
    ld	$s2,88($sp)
    ld	$s3,96($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db580b0:
    sd	$ra,104($sp)
    # Line 1151
    jalr	$t9
    li	$a0,1282
    ld	$gp,80($sp)
    # Line 1152
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    ld	$ra,104($sp)
    ld	$s2,88($sp)
    ld	$s3,96($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end __gllc_TexSubImage1DEXT

# Function: __glle_TexSubImage2DEXT
# Declared: Line 1202 (Source lines: 1203-1213)
# Address: 0x0db580dc - 0x0db58160 (Size: 132 bytes, Frame: 192)
.globl __glle_TexSubImage2DEXT
.ent __glle_TexSubImage2DEXT
__glle_TexSubImage2DEXT:
    # Line 1208
    addiu	$v0,$a0,36
    # Line 1203
    addiu	$sp,$sp,-64
    sd	$ra,16($sp)
    sd	$s8,24($sp)
    move	$s8,$a0
    # Line 1208
    lw	$a0,__glCurrentContext
    lw	$a7,24($s8)
    lw	$a6,20($s8)
    lw	$a5,16($s8)
    lw	$a4,12($s8)
    lw	$a3,8($s8)
    lw	$a2,4($s8)
    lw	$a1,0($s8)
    sd	$gp,32($sp)
    # Line 1203
    lui	$v1,0xa
    addiu	$v1,$v1,26044
    addu	$gp,$t9,$v1
    # Line 1208
    # lw $t9, -24616($gp) # &__gllei_TexSubImage2DEXT
    lw	$at,28($s8)
    sw	$v0,12($sp)
    jal	__gllei_TexSubImage2DEXT
    sw	$at,4($sp)
    ld	$gp,32($sp)
    # Line 1213
    lw	$v0,32($s8)
    ld	$ra,16($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s8
    ld	$s8,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    addiu	$v0,$v0,36
.end __glle_TexSubImage2DEXT

# Function: __gllc_TexSubImage2DEXT
# Declared: Line 1216 (Source lines: 1220-1325)
# Address: 0x0db58160 - 0x0db5866c (Size: 1292 bytes, Frame: 192)
.globl __gllc_TexSubImage2DEXT
.ent __gllc_TexSubImage2DEXT
__gllc_TexSubImage2DEXT:
    # Line 1222
    move	$v0,$a7
    # Line 1221
    move	$t2,$a6
    # Line 1220
    addiu	$sp,$sp,-192
    sd	$s4,96($sp)
    # Line 1227
    lw	$s4,__glCurrentContext
    sd	$s2,104($sp)
    # Line 1220
    move	$s2,$a5
    sd	$a3,16($sp)
    sd	$a2,40($sp)
    sd	$s3,88($sp)
    move	$s3,$a4
    sd	$s1,72($sp)
    move	$s1,$a7
    sd	$a0,32($sp)
    sd	$s0,64($sp)
    move	$s0,$a6
    sd	$a1,24($sp)
    sd	$gp,80($sp)
    lui	$at,0xa
    addiu	$at,$at,25912
    # Line 1229
    bltz	$a4,.L0db585ac
    # Line 1220
    addu	$gp,$t9,$at
    # Line 1229
    bltz	$s2,.L0db585ac
    # Line 1231
    sltiu	$v1,$s0,6407
    bnez	$v1,.L0db581f0
    # Line 1233
    sltiu	$t0,$s0,6408
    bnez	$t0,.L0db5822c
    sltiu	$t1,$s0,6410
    bnez	$t1,.L0db584bc
    sltiu	$at,$s0,6411
    bnez	$at,.L0db5822c
    li	$v1,0x8000
    bne	$s0,$v1,.L0db5848c
    # Line 1249
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db58230
    # Line 1246
    move	$a0,$zero
.L0db581f0:
    # Line 1233
    sltiu	$t0,$s0,6404
    bnez	$t0,.L0db5821c
    sltiu	$t1,$s0,6405
    bnez	$t1,.L0db5822c
    sltiu	$at,$s0,6406
    bnez	$at,.L0db5847c
    sltiu	$v1,$s0,6407
    beqz	$v1,.L0db5848c
    # Line 1249
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db58230
    # Line 1246
    move	$a0,$zero
.L0db5821c:
    # Line 1233
    sltiu	$t0,$s0,6403
    bnez	$t0,.L0db58468
    sltiu	$t1,$s0,6404
    beqz	$t1,.L0db58488
.L0db5822c:
    # Line 1246
    move	$a0,$zero
.L0db58230:
    # Line 1251
    sltiu	$at,$s1,5126
    bnez	$at,.L0db5833c
    # Line 1252
    sltiu	$t0,$s1,5123
    sd	$v0,48($sp)
    sltiu	$v1,$s1,5127
    beqz	$v1,.L0db583ac
    sd	$t2,56($sp)
.L0db5824c:
    # Line 1301
    move	$a0,$s3
.L0db58250:
    move	$a1,$s2
    # lw $t9, -26724($gp) # &__glImageSize
    move	$a2,$s0
    sd	$ra,112($sp)
    jal	__glImageSize
    move	$a3,$s1
    # Line 1304
    move	$a0,$s4
    # Line 1302
    li	$a2,-4
    addiu	$a1,$v0,3
    # Line 1304
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 1302
    and	$a1,$a1,$a2
    sd	$a1,0($sp)
    # Line 1304
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,36
    # Line 1310
    ld	$v1,24($sp)
    # Line 1312
    ld	$at,16($sp)
    # Line 1304
    beqz	$v0,.L0db58404
    ld	$ra,112($sp)
    # Line 1316
    sw	$s1,44($v0)
    # Line 1315
    sw	$s0,40($v0)
    # Line 1314
    sw	$s2,36($v0)
    # Line 1313
    sw	$s3,32($v0)
    # Line 1310
    sw	$v1,20($v0)
    ld	$t0,0($sp)
    # Line 1312
    sw	$at,28($v0)
    # Line 1309
    ld	$at,32($sp)
    # Line 1311
    ld	$t1,40($sp)
    # Line 1317
    sw	$t0,48($v0)
    # Line 1309
    sw	$at,16($v0)
    # Line 1311
    sw	$t1,24($v0)
    # Line 1306
    li	$t1,194
    # Line 1317
    blez	$t0,.L0db58304
    # Line 1306
    sh	$t1,12($v0)
    sd	$v0,8($sp)
    # Line 1320
    move	$a0,$s4
    move	$a1,$s3
    move	$a2,$s2
    ld	$a3,56($sp)
    ld	$a4,48($sp)
    # lw $t9, -26712($gp) # &__glFillImage
    lw	$a5,196($sp)
    move	$a6,$v0
    jal	__glFillImage
    addiu	$a6,$v0,52
    ld	$v0,8($sp)
.L0db58304:
    # Line 1324
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s4
    move	$a1,$v0
    jal	__glDlistAppendOp
    la	$a2,__glle_TexSubImage2DEXT
    ld	$ra,112($sp)
    # Line 1325
    ld	$s0,64($sp)
    ld	$s2,104($sp)
    ld	$s4,96($sp)
    ld	$s3,88($sp)
    ld	$s1,72($sp)
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db5833c:
    # Line 1252
    bnez	$t0,.L0db58374
    sltiu	$t1,$s1,5124
    sd	$v0,48($sp)
    bnez	$t1,.L0db5824c
    sd	$t2,56($sp)
    sltiu	$at,$s1,5125
    bnez	$at,.L0db58524
    sltiu	$v1,$s1,5126
    beqz	$v1,.L0db58438
    # Line 1297
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,112($sp)
    sd	$v0,48($sp)
    b	.L0db5824c
    sd	$t2,56($sp)
.L0db58374:
    # Line 1252
    sltiu	$t0,$s1,5121
    bnezl	$t0,.L0db58424
    sd	$ra,112($sp)
    sd	$v0,48($sp)
    sltiu	$t1,$s1,5122
    bnez	$t1,.L0db5824c
    sd	$t2,56($sp)
    li	$at,5122
    bne	$s1,$at,.L0db58438
    # Line 1297
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,112($sp)
    sd	$v0,48($sp)
    b	.L0db5824c
    sd	$t2,56($sp)
.L0db583ac:
    # Line 1252
    li	$a1,0x8034
    sltu	$v1,$s1,$a1
    bnez	$v1,.L0db584d8
    sltu	$t0,$a1,$s1
    bnez	$t0,.L0db5858c
    # Line 1282
    li	$t1,6408
.L0db583c4:
    beq	$s0,$t1,.L0db583d0
    li	$at,0x8000
    bne	$s0,$at,.L0db585e0
.L0db583d0:
    # Line 1285
    li	$t0,6409
    # Line 1287
    li	$v1,0x8035
    # Line 1286
    li	$t1,5123
    sd	$t1,48($sp)
    # Line 1287
    beq	$s1,$v1,.L0db583f4
    sd	$t0,56($sp)
    li	$at,0x8036
    bne	$s1,$at,.L0db58250
    # Line 1301
    move	$a0,$s3
.L0db583f4:
    sd	$ra,112($sp)
    # Line 1289
    li	$v1,5125
    b	.L0db5824c
    sd	$v1,48($sp)
.L0db58404:
    ld	$gp,80($sp)
    # Line 1305
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    ld	$s2,104($sp)
    ld	$s3,88($sp)
    ld	$s4,96($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db58424:
    sd	$v0,48($sp)
    # Line 1252
    li	$t0,5120
    beq	$s1,$t0,.L0db5824c
    sd	$t2,56($sp)
    # Line 1297
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
.L0db58438:
    sd	$ra,112($sp)
    jal	__gllc_InvalidEnum
    move	$a0,$s4
    ld	$gp,80($sp)
    # Line 1298
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    ld	$s2,104($sp)
    ld	$ra,112($sp)
    ld	$s3,88($sp)
    ld	$s4,96($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db58468:
    # Line 1233
    li	$t1,6400
    bne	$s0,$t1,.L0db5848c
    # Line 1249
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    # Line 1236
    b	.L0db58230
    # Line 1235
    li	$a0,1
.L0db5847c:
    # Line 1233
    li	$at,6405
    beq	$s0,$at,.L0db58230
    # Line 1246
    move	$a0,$zero
.L0db58488:
    # Line 1249
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
.L0db5848c:
    sd	$ra,112($sp)
    jal	__gllc_InvalidEnum
    move	$a0,$s4
    ld	$gp,80($sp)
    # Line 1250
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    ld	$s2,104($sp)
    ld	$ra,112($sp)
    ld	$s3,88($sp)
    ld	$s4,96($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db584bc:
    # Line 1233
    sltiu	$v1,$s0,6409
    bnez	$v1,.L0db58510
    sltiu	$t0,$s0,6410
    beqz	$t0,.L0db5848c
    # Line 1249
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db58230
    # Line 1246
    move	$a0,$zero
.L0db584d8:
    # Line 1252
    li	$a1,0x8032
    sltu	$t1,$s1,$a1
    bnez	$t1,.L0db58540
    sltu	$at,$a1,$s1
    bnez	$at,.L0db58614
    # Line 1268
    li	$v1,6407
    bne	$s0,$v1,.L0db5863c
    # Line 1274
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,112($sp)
    # Line 1270
    li	$t0,6409
    # Line 1271
    li	$t1,5121
    sd	$t1,48($sp)
    # Line 1270
    b	.L0db5824c
    sd	$t0,56($sp)
.L0db58510:
    # Line 1233
    li	$at,6408
    bne	$s0,$at,.L0db5848c
    # Line 1249
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db58230
    # Line 1246
    move	$a0,$zero
.L0db58524:
    # Line 1252
    li	$v1,5124
    bne	$s1,$v1,.L0db58438
    # Line 1297
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,112($sp)
    sd	$v0,48($sp)
    b	.L0db5824c
    sd	$t2,56($sp)
.L0db58540:
    # Line 1252
    li	$t0,6656
    bne	$s1,$t0,.L0db58438
    # Line 1297
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,112($sp)
    sd	$v0,48($sp)
    # Line 1254
    bnez	$a0,.L0db5824c
    sd	$t2,56($sp)
    # Line 1255
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s4
    ld	$gp,80($sp)
    # Line 1256
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    ld	$s2,104($sp)
    ld	$ra,112($sp)
    ld	$s3,88($sp)
    ld	$s4,96($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db5858c:
    # Line 1252
    li	$v0,0x8036
    sltu	$t1,$s1,$v0
    bnez	$t1,.L0db58628
    sltu	$at,$v0,$s1
    bnez	$at,.L0db58438
    # Line 1297
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db583c4
    # Line 1282
    li	$t1,6408
.L0db585ac:
    # Line 1230
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
    sd	$ra,112($sp)
    jal	__gllc_InvalidValue
    move	$a0,$s4
    ld	$gp,80($sp)
    # Line 1231
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    ld	$s2,104($sp)
    ld	$ra,112($sp)
    ld	$s3,88($sp)
    ld	$s4,96($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db585e0:
    # Line 1292
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,112($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,80($sp)
    # Line 1293
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    ld	$s2,104($sp)
    ld	$ra,112($sp)
    ld	$s3,88($sp)
    ld	$s4,96($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db58614:
    # Line 1252
    li	$v1,0x8033
    bne	$s1,$v1,.L0db58438
    # Line 1297
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db583c4
    # Line 1282
    li	$t1,6408
.L0db58628:
    # Line 1252
    li	$t0,0x8035
    bne	$s1,$t0,.L0db58438
    # Line 1297
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db583c4
    # Line 1282
    li	$t1,6408
.L0db5863c:
    sd	$ra,112($sp)
    # Line 1274
    jal	__gllc_InvalidEnum
    li	$a0,1282
    ld	$gp,80($sp)
    # Line 1275
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    ld	$s2,104($sp)
    ld	$ra,112($sp)
    ld	$s3,88($sp)
    ld	$s4,96($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __gllc_TexSubImage2DEXT

# Function: __glle_TexSubImage3DEXT
# Declared: Line 1327 (Source lines: 1328-1338)
# Address: 0x0db5866c - 0x0db58700 (Size: 148 bytes, Frame: 208)
.globl __glle_TexSubImage3DEXT
.ent __glle_TexSubImage3DEXT
__glle_TexSubImage3DEXT:
    # Line 1328
    addiu	$sp,$sp,-80
    sd	$ra,32($sp)
    sd	$s8,40($sp)
    move	$s8,$a0
    # Line 1333
    addiu	$v0,$s8,44
    sd	$gp,48($sp)
    lw	$a0,__glCurrentContext
    lw	$a7,24($s8)
    lw	$a6,20($s8)
    lw	$a5,16($s8)
    lw	$a4,12($s8)
    lw	$a3,8($s8)
    lw	$t1,28($s8)
    lw	$a2,4($s8)
    lw	$a1,0($s8)
    sw	$t1,4($sp)
    # Line 1328
    lui	$t0,0xa
    # Line 1333
    lw	$v1,32($s8)
    # Line 1328
    addiu	$t0,$t0,24620
    addu	$gp,$t9,$t0
    # Line 1333
    sw	$v1,12($sp)
    # lw $t9, -24608($gp) # &__gllei_TexSubImage3DEXT
    lw	$at,36($s8)
    sw	$v0,28($sp)
    jal	__gllei_TexSubImage3DEXT
    sw	$at,20($sp)
    ld	$gp,48($sp)
    # Line 1338
    lw	$v0,40($s8)
    ld	$ra,32($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s8
    ld	$s8,40($sp)
    addiu	$sp,$sp,80
    jr	$ra
    addiu	$v0,$v0,44
.end __glle_TexSubImage3DEXT

# Function: __gllc_TexSubImage3DEXT
# Declared: Line 1341 (Source lines: 1345-1443)
# Address: 0x0db58700 - 0x0db58bf0 (Size: 1264 bytes, Frame: 208)
.globl __gllc_TexSubImage3DEXT
.ent __gllc_TexSubImage3DEXT
__gllc_TexSubImage3DEXT:
    # Line 1345
    addiu	$sp,$sp,-208
    sd	$s4,104($sp)
    # Line 1351
    lw	$s4,__glCurrentContext
    sd	$s3,112($sp)
    # Line 1345
    move	$s3,$a7
    sd	$s2,120($sp)
    move	$s2,$a6
    sd	$a4,24($sp)
    sd	$a3,32($sp)
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$a0,16($sp)
    sd	$s5,80($sp)
    move	$s5,$a5
    sd	$gp,96($sp)
    lui	$at,0xa
    addiu	$at,$at,24472
    addu	$gp,$t9,$at
    sd	$s1,88($sp)
    # Line 1347
    lw	$s1,220($sp)
    sd	$s0,72($sp)
    # Line 1346
    lw	$s0,212($sp)
    # Line 1347
    move	$v0,$s1
    # Line 1353
    bltz	$a5,.L0db58ab8
    # Line 1346
    move	$t2,$s0
    # Line 1353
    bltz	$s2,.L0db58abc
    # Line 1354
    nop	# was lw $t9, -29432($gp) # &__gllc_InvalidValue
    # Line 1353
    bltz	$s3,.L0db58ab8
    # Line 1355
    sltiu	$v1,$s0,6407
    bnez	$v1,.L0db587a4
    # Line 1357
    sltiu	$t0,$s0,6408
    bnez	$t0,.L0db587e0
    sltiu	$t1,$s0,6410
    bnez	$t1,.L0db58a9c
    sltiu	$at,$s0,6411
    bnez	$at,.L0db587e0
    li	$v1,0x8000
    beq	$s0,$v1,.L0db587e4
    # Line 1372
    sltiu	$at,$s1,5126
    b	.L0db589f8
    sd	$ra,128($sp)
.L0db587a4:
    # Line 1357
    sltiu	$t0,$s0,6404
    bnez	$t0,.L0db587d0
    sltiu	$t1,$s0,6405
    bnez	$t1,.L0db587e0
    sltiu	$at,$s0,6406
    bnez	$at,.L0db58af0
    sltiu	$v1,$s0,6407
    beqz	$v1,.L0db589fc
    # Line 1370
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db587e4
    # Line 1372
    sltiu	$at,$s1,5126
.L0db587d0:
    # Line 1357
    sltiu	$t0,$s0,6403
    bnez	$t0,.L0db589ec
    sltiu	$t1,$s0,6404
    beqz	$t1,.L0db589f8
.L0db587e0:
    # Line 1372
    sltiu	$at,$s1,5126
.L0db587e4:
    bnez	$at,.L0db58830
    # Line 1373
    sltiu	$t0,$s1,5123
    sd	$v0,56($sp)
    sltiu	$v1,$s1,5127
    bnez	$v1,.L0db588ac
    sd	$t2,64($sp)
    li	$v0,0x8034
    sltu	$t0,$s1,$v0
    bnez	$t0,.L0db58868
    sltu	$t1,$v0,$s1
    beqz	$t1,.L0db5887c
    li	$v0,0x8036
    sltu	$at,$s1,$v0
    bnez	$at,.L0db58ba8
    sltu	$v1,$v0,$s1
    bnez	$v1,.L0db58a68
    # Line 1412
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db58880
    # Line 1397
    li	$at,6408
.L0db58830:
    # Line 1373
    bnez	$t0,.L0db589b4
    sltiu	$t1,$s1,5124
    sd	$v0,56($sp)
    bnez	$t1,.L0db588ac
    sd	$t2,64($sp)
    sltiu	$at,$s1,5125
    bnez	$at,.L0db58b18
    sltiu	$v1,$s1,5126
    beqz	$v1,.L0db58a68
    # Line 1412
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,128($sp)
    sd	$v0,56($sp)
    b	.L0db588ac
    sd	$t2,64($sp)
.L0db58868:
    # Line 1373
    li	$v0,0x8033
    sltu	$t0,$s1,$v0
    bnez	$t0,.L0db58b34
    sltu	$t1,$v0,$s1
    bnez	$t1,.L0db58a64
.L0db5887c:
    # Line 1397
    li	$at,6408
.L0db58880:
    beq	$s0,$at,.L0db5888c
    li	$v1,0x8000
    bne	$s0,$v1,.L0db58b60
.L0db5888c:
    # Line 1400
    li	$t1,6409
    # Line 1402
    li	$t0,0x8035
    # Line 1401
    li	$at,5123
    sd	$at,56($sp)
    # Line 1402
    beq	$s1,$t0,.L0db58b98
    sd	$t1,64($sp)
    li	$v1,0x8036
    beq	$s1,$v1,.L0db58b98
.L0db588ac:
    # Line 1416
    move	$a0,$s5
    move	$a1,$s2
    move	$a2,$s3
    # lw $t9, -26720($gp) # &__glImageSize3D
    move	$a3,$s0
    sd	$ra,128($sp)
    jal	__glImageSize3D
    move	$a4,$s1
    # Line 1419
    move	$a0,$s4
    # Line 1417
    li	$a2,-4
    addiu	$a1,$v0,3
    # Line 1419
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 1417
    and	$a1,$a1,$a2
    sd	$a1,0($sp)
    # Line 1419
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,44
    # Line 1426
    ld	$t1,40($sp)
    # Line 1427
    ld	$at,32($sp)
    # Line 1419
    beqz	$v0,.L0db58a30
    ld	$ra,128($sp)
    # Line 1433
    sw	$s1,52($v0)
    # Line 1432
    sw	$s0,48($v0)
    # Line 1431
    sw	$s3,44($v0)
    # Line 1430
    sw	$s2,40($v0)
    # Line 1429
    sw	$s5,36($v0)
    # Line 1426
    sw	$t1,24($v0)
    # Line 1421
    li	$t1,209
    sh	$t1,12($v0)
    ld	$t0,0($sp)
    # Line 1427
    sw	$at,28($v0)
    # Line 1428
    ld	$v1,24($sp)
    # Line 1424
    ld	$at,16($sp)
    # Line 1434
    sw	$t0,56($v0)
    # Line 1428
    sw	$v1,32($v0)
    # Line 1425
    ld	$v1,48($sp)
    # Line 1424
    sw	$at,16($v0)
    # Line 1434
    blez	$t0,.L0db58978
    # Line 1425
    sw	$v1,20($v0)
    sd	$v0,8($sp)
    # Line 1437
    move	$a0,$s4
    move	$a1,$s5
    move	$a2,$s2
    move	$a3,$s3
    ld	$a4,64($sp)
    ld	$a5,56($sp)
    # lw $t9, -26716($gp) # &__glFillImage3D
    lw	$a6,228($sp)
    move	$a7,$v0
    jal	__glFillImage3D
    addiu	$a7,$v0,60
    ld	$v0,8($sp)
.L0db58978:
    # Line 1442
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s4
    move	$a1,$v0
    jal	__glDlistAppendOp
    la	$a2,__glle_TexSubImage3DEXT
    ld	$ra,128($sp)
    # Line 1443
    ld	$s0,72($sp)
    ld	$s2,120($sp)
    ld	$s4,104($sp)
    ld	$s5,80($sp)
    ld	$s3,112($sp)
    ld	$s1,88($sp)
    ld	$gp,96($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db589b4:
    # Line 1373
    sltiu	$t0,$s1,5121
    bnezl	$t0,.L0db58a54
    sd	$ra,128($sp)
    sd	$v0,56($sp)
    sltiu	$t1,$s1,5122
    bnez	$t1,.L0db588ac
    sd	$t2,64($sp)
    li	$at,5122
    bne	$s1,$at,.L0db58a68
    # Line 1412
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,128($sp)
    sd	$v0,56($sp)
    b	.L0db588ac
    sd	$t2,64($sp)
.L0db589ec:
    # Line 1357
    li	$v1,6400
    beq	$s0,$v1,.L0db587e4
    # Line 1372
    sltiu	$at,$s1,5126
.L0db589f8:
    # Line 1370
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
.L0db589fc:
    sd	$ra,128($sp)
    jal	__gllc_InvalidEnum
    move	$a0,$s4
    ld	$gp,96($sp)
    # Line 1371
    ld	$s0,72($sp)
    ld	$s1,88($sp)
    ld	$s2,120($sp)
    ld	$s3,112($sp)
    ld	$ra,128($sp)
    ld	$s4,104($sp)
    ld	$s5,80($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db58a30:
    ld	$gp,96($sp)
    # Line 1420
    ld	$s0,72($sp)
    ld	$s1,88($sp)
    ld	$s2,120($sp)
    ld	$s3,112($sp)
    ld	$s4,104($sp)
    ld	$s5,80($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db58a54:
    sd	$v0,56($sp)
    # Line 1373
    li	$t0,5120
    beq	$s1,$t0,.L0db588ac
    sd	$t2,64($sp)
.L0db58a64:
    # Line 1412
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
.L0db58a68:
    sd	$ra,128($sp)
    jal	__gllc_InvalidEnum
    move	$a0,$s4
    ld	$gp,96($sp)
    # Line 1413
    ld	$s0,72($sp)
    ld	$s1,88($sp)
    ld	$s2,120($sp)
    ld	$s3,112($sp)
    ld	$ra,128($sp)
    ld	$s4,104($sp)
    ld	$s5,80($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db58a9c:
    # Line 1357
    sltiu	$t1,$s0,6409
    bnez	$t1,.L0db58b04
    sltiu	$at,$s0,6410
    beqz	$at,.L0db589fc
    # Line 1370
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db587e4
    # Line 1372
    sltiu	$at,$s1,5126
.L0db58ab8:
    # Line 1354
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
.L0db58abc:
    sd	$ra,128($sp)
    jal	__gllc_InvalidValue
    move	$a0,$s4
    ld	$gp,96($sp)
    # Line 1355
    ld	$s0,72($sp)
    ld	$s1,88($sp)
    ld	$s2,120($sp)
    ld	$s3,112($sp)
    ld	$ra,128($sp)
    ld	$s4,104($sp)
    ld	$s5,80($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db58af0:
    # Line 1357
    li	$v1,6405
    bne	$s0,$v1,.L0db589fc
    # Line 1370
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db587e4
    # Line 1372
    sltiu	$at,$s1,5126
.L0db58b04:
    # Line 1357
    li	$t0,6408
    bne	$s0,$t0,.L0db589fc
    # Line 1370
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db587e4
    # Line 1372
    sltiu	$at,$s1,5126
.L0db58b18:
    # Line 1373
    li	$t1,5124
    bne	$s1,$t1,.L0db58a68
    # Line 1412
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,128($sp)
    sd	$v0,56($sp)
    b	.L0db588ac
    sd	$t2,64($sp)
.L0db58b34:
    # Line 1373
    li	$at,0x8032
    bne	$s1,$at,.L0db58a64
    # Line 1383
    li	$v1,6407
    bne	$s0,$v1,.L0db58bbc
    # Line 1389
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,128($sp)
    # Line 1385
    li	$t0,6409
    # Line 1386
    li	$t1,5121
    sd	$t1,56($sp)
    # Line 1385
    b	.L0db588ac
    sd	$t0,64($sp)
.L0db58b60:
    # Line 1407
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,128($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,96($sp)
    # Line 1408
    ld	$s0,72($sp)
    ld	$s1,88($sp)
    ld	$s2,120($sp)
    ld	$s3,112($sp)
    ld	$ra,128($sp)
    ld	$s4,104($sp)
    ld	$s5,80($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db58b98:
    sd	$ra,128($sp)
    # Line 1404
    li	$at,5125
    b	.L0db588ac
    sd	$at,56($sp)
.L0db58ba8:
    # Line 1373
    li	$v1,0x8035
    bne	$s1,$v1,.L0db58a68
    # Line 1412
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db58880
    # Line 1397
    li	$at,6408
.L0db58bbc:
    sd	$ra,128($sp)
    # Line 1389
    jal	__gllc_InvalidEnum
    li	$a0,1282
    ld	$gp,96($sp)
    # Line 1390
    ld	$s0,72($sp)
    ld	$s1,88($sp)
    ld	$s2,120($sp)
    ld	$s3,112($sp)
    ld	$ra,128($sp)
    ld	$s4,104($sp)
    ld	$s5,80($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end __gllc_TexSubImage3DEXT

# Function: __glle_ConvolutionFilter1DEXT
# Declared: Line 1445 (Source lines: 1446-1475)
# Address: 0x0db58bf0 - 0x0db58cfc (Size: 268 bytes, Frame: 48)
.globl __glle_ConvolutionFilter1DEXT
.ent __glle_ConvolutionFilter1DEXT
__glle_ConvolutionFilter1DEXT:
    # Line 1446
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$gp,8($sp)
    lui	$at,0xa
    addiu	$at,$at,23208
    # Line 1453
    lw	$a3,__glBeginMode
    # Line 1448
    lw	$a2,__glCurrentContext
    # Line 1446
    addu	$gp,$t9,$at
    # Line 1453
    beqz	$a3,.L0db58c80
    sd	$a2,0($sp)
    sd	$ra,24($sp)
    li	$v0,2
    beq	$a3,$v0,.L0db58c68
    sd	$a2,0($sp)
    # Line 1459
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,8($sp)
    # Line 1460
    lw	$v0,20($s0)
    ld	$ra,24($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s0
    ld	$s0,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,24
.L0db58c68:
    ld	$t9,0($sp)
    # Line 1456
    move	$a0,$t9
    lw	$t9,11856($t9)
    jalr	$t9
    nop
    # Line 1457
    sw	$zero,__glBeginMode
.L0db58c80:
    # Line 1465
    ld	$at,0($sp)
    lw	$v0,4($s0)
    sw	$v0,752($at)
    # Line 1466
    lw	$ra,8($s0)
    # Line 1467
    # lw $t9, -28592($gp) # &__glElementsPerGroup
    # Line 1466
    sw	$ra,792($at)
    # Line 1467
    jal	__glElementsPerGroup
    lw	$a0,4($s0)
    # Line 1470
    li	$a7,1
    li	$a6,0x8010
    ld	$t9,0($sp)
    addiu	$a5,$s0,24
    li	$a2,1
    move	$a0,$t9
    # Line 1467
    sw	$v0,756($t9)
    # Line 1470
    lw	$t9,12644($t9)
    lw	$a4,16($s0)
    lw	$a3,12($s0)
    jalr	$t9
    lw	$a1,8($s0)
    ld	$gp,8($sp)
    # Line 1475
    lw	$v0,20($s0)
    ld	$ra,24($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s0
    ld	$s0,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,24
.end __glle_ConvolutionFilter1DEXT

# Function: __gllc_ConvolutionFilter1DEXT
# Declared: Line 1478 (Source lines: 1481-1584)
# Address: 0x0db58cfc - 0x0db591d0 (Size: 1236 bytes, Frame: 160)
.globl __gllc_ConvolutionFilter1DEXT
.ent __gllc_ConvolutionFilter1DEXT
__gllc_ConvolutionFilter1DEXT:
    # Line 1483
    move	$v0,$a4
    # Line 1482
    move	$t0,$a3
    # Line 1481
    addiu	$sp,$sp,-160
    sd	$s2,80($sp)
    # Line 1488
    lw	$s2,__glCurrentContext
    sd	$a5,16($sp)
    sd	$s3,88($sp)
    # Line 1481
    move	$s3,$a2
    sd	$s1,56($sp)
    move	$s1,$a4
    sd	$a0,24($sp)
    sd	$s0,64($sp)
    move	$s0,$a3
    sd	$a1,32($sp)
    sd	$gp,72($sp)
    lui	$at,0xa
    addiu	$at,$at,22940
    # Line 1488
    bltz	$a2,.L0db59174
    # Line 1481
    addu	$gp,$t9,$at
    # Line 1492
    sltiu	$v1,$s0,6407
    bnez	$v1,.L0db58da4
    # Line 1494
    sltiu	$a6,$s0,6408
    bnez	$a6,.L0db58de0
    sltiu	$a7,$s0,6410
    bnez	$a7,.L0db5901c
    sltiu	$at,$s0,6411
    bnez	$at,.L0db58de0
    li	$v1,0x8000
    beq	$s0,$v1,.L0db58de4
    # Line 1507
    move	$a0,$zero
.L0db58d74:
    # Line 1510
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
.L0db58d78:
    sd	$ra,96($sp)
    jal	__gllc_InvalidEnum
    move	$a0,$s2
    ld	$gp,72($sp)
    # Line 1511
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$ra,96($sp)
    ld	$s2,80($sp)
    ld	$s3,88($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0db58da4:
    # Line 1494
    sltiu	$a6,$s0,6404
    bnez	$a6,.L0db58dd0
    sltiu	$a7,$s0,6405
    bnez	$a7,.L0db58de0
    sltiu	$at,$s0,6406
    bnez	$at,.L0db59060
    sltiu	$v1,$s0,6407
    beqz	$v1,.L0db58d78
    # Line 1510
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db58de4
    # Line 1507
    move	$a0,$zero
.L0db58dd0:
    # Line 1494
    sltiu	$a6,$s0,6403
    bnez	$a6,.L0db59008
    sltiu	$a7,$s0,6404
    beqz	$a7,.L0db58d74
.L0db58de0:
    # Line 1507
    move	$a0,$zero
.L0db58de4:
    # Line 1512
    sltiu	$at,$s1,5126
    bnez	$at,.L0db58eb0
    # Line 1513
    sltiu	$a7,$s1,5123
    sd	$v0,40($sp)
    sltiu	$v1,$s1,5127
    beqz	$v1,.L0db58f20
    sd	$t0,48($sp)
.L0db58e00:
    # Line 1562
    move	$a0,$s3
.L0db58e04:
    move	$a3,$s1
    # lw $t9, -26724($gp) # &__glImageSize
    move	$a2,$s0
    sd	$ra,96($sp)
    jal	__glImageSize
    li	$a1,1
    # Line 1565
    move	$a0,$s2
    # Line 1563
    li	$a2,-4
    addiu	$a1,$v0,3
    # Line 1565
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 1563
    and	$a1,$a1,$a2
    sd	$a1,0($sp)
    # Line 1565
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,24
    ld	$a6,0($sp)
    # Line 1571
    ld	$at,24($sp)
    # Line 1565
    beqz	$v0,.L0db58f78
    ld	$ra,96($sp)
    # Line 1575
    sw	$s1,32($v0)
    # Line 1574
    sw	$s0,28($v0)
    # Line 1573
    sw	$s3,24($v0)
    # Line 1576
    sw	$a6,36($v0)
    # Line 1571
    sw	$at,16($v0)
    # Line 1568
    li	$a7,195
    # Line 1572
    ld	$v1,32($sp)
    # Line 1568
    sh	$a7,12($v0)
    # Line 1576
    blez	$a6,.L0db58e7c
    # Line 1572
    sw	$v1,20($v0)
    ld	$a6,16($sp)
    # Line 1576
    bnez	$a6,.L0db58f94
.L0db58e7c:
    # Line 1583
    nop	# was lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s2
    move	$a1,$v0
    jal	__glDlistAppendOp
    la	$a2,__glle_ConvolutionFilter1DEXT
    ld	$gp,72($sp)
    # Line 1584
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$ra,96($sp)
    ld	$s2,80($sp)
    ld	$s3,88($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0db58eb0:
    # Line 1513
    bnez	$a7,.L0db58ee8
    sltiu	$at,$s1,5124
    sd	$v0,40($sp)
    bnez	$at,.L0db58e00
    sd	$t0,48($sp)
    sltiu	$v1,$s1,5125
    bnez	$v1,.L0db59088
    sltiu	$a6,$s1,5126
    beqz	$a6,.L0db58fdc
    # Line 1558
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,96($sp)
    sd	$v0,40($sp)
    b	.L0db58e00
    sd	$t0,48($sp)
.L0db58ee8:
    # Line 1513
    sltiu	$a7,$s1,5121
    bnezl	$a7,.L0db58fc8
    sd	$ra,96($sp)
    sd	$v0,40($sp)
    sltiu	$at,$s1,5122
    bnez	$at,.L0db58e00
    sd	$t0,48($sp)
    li	$v1,5122
    bne	$s1,$v1,.L0db58fdc
    # Line 1558
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,96($sp)
    sd	$v0,40($sp)
    b	.L0db58e00
    sd	$t0,48($sp)
.L0db58f20:
    # Line 1513
    li	$a1,0x8034
    sltu	$a6,$s1,$a1
    bnez	$a6,.L0db59038
    sltu	$a7,$a1,$s1
    bnez	$a7,.L0db590ec
    # Line 1543
    li	$at,6408
.L0db58f38:
    beq	$s0,$at,.L0db58f44
    li	$v1,0x8000
    bne	$s0,$v1,.L0db5910c
.L0db58f44:
    # Line 1546
    li	$a7,6409
    # Line 1548
    li	$a6,0x8035
    # Line 1547
    li	$at,5123
    sd	$at,40($sp)
    # Line 1548
    beq	$s1,$a6,.L0db58f68
    sd	$a7,48($sp)
    li	$v1,0x8036
    bne	$s1,$v1,.L0db58e04
    # Line 1562
    move	$a0,$s3
.L0db58f68:
    sd	$ra,96($sp)
    # Line 1550
    li	$a6,5125
    b	.L0db58e00
    sd	$a6,40($sp)
.L0db58f78:
    ld	$gp,72($sp)
    # Line 1567
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$s2,80($sp)
    ld	$s3,88($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0db58f94:
    sd	$v0,8($sp)
    # Line 1579
    move	$a0,$s2
    move	$a1,$s3
    ld	$a5,16($sp)
    ld	$a4,40($sp)
    ld	$a3,48($sp)
    # lw $t9, -26712($gp) # &__glFillImage
    li	$a2,1
    move	$a6,$v0
    jal	__glFillImage
    addiu	$a6,$v0,40
    b	.L0db58e7c
    ld	$v0,8($sp)
.L0db58fc8:
    sd	$v0,40($sp)
    # Line 1513
    li	$a7,5120
    beq	$s1,$a7,.L0db58e00
    sd	$t0,48($sp)
    # Line 1558
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
.L0db58fdc:
    sd	$ra,96($sp)
    jal	__gllc_InvalidEnum
    move	$a0,$s2
    ld	$gp,72($sp)
    # Line 1559
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$ra,96($sp)
    ld	$s2,80($sp)
    ld	$s3,88($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0db59008:
    # Line 1494
    li	$at,6400
    bne	$s0,$at,.L0db58d78
    # Line 1510
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    # Line 1497
    b	.L0db58de4
    # Line 1496
    li	$a0,1
.L0db5901c:
    # Line 1494
    sltiu	$v1,$s0,6409
    bnez	$v1,.L0db59074
    sltiu	$a6,$s0,6410
    beqz	$a6,.L0db58d78
    # Line 1510
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db58de4
    # Line 1507
    move	$a0,$zero
.L0db59038:
    # Line 1513
    li	$a1,0x8032
    sltu	$a7,$s1,$a1
    bnez	$a7,.L0db590a4
    sltu	$at,$a1,$s1
    beqz	$at,.L0db59150
    li	$v1,0x8033
    bne	$s1,$v1,.L0db58fdc
    # Line 1558
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db58f38
    # Line 1543
    li	$at,6408
.L0db59060:
    # Line 1494
    li	$a6,6405
    bne	$s0,$a6,.L0db58d78
    # Line 1510
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db58de4
    # Line 1507
    move	$a0,$zero
.L0db59074:
    # Line 1494
    li	$a7,6408
    bne	$s0,$a7,.L0db58d78
    # Line 1510
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db58de4
    # Line 1507
    move	$a0,$zero
.L0db59088:
    # Line 1513
    li	$at,5124
    bne	$s1,$at,.L0db58fdc
    # Line 1558
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,96($sp)
    sd	$v0,40($sp)
    b	.L0db58e00
    sd	$t0,48($sp)
.L0db590a4:
    # Line 1513
    li	$v1,6656
    bne	$s1,$v1,.L0db58fdc
    # Line 1558
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,96($sp)
    sd	$v0,40($sp)
    # Line 1515
    bnez	$a0,.L0db58e00
    sd	$t0,48($sp)
    # Line 1516
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s2
    ld	$gp,72($sp)
    # Line 1517
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$ra,96($sp)
    ld	$s2,80($sp)
    ld	$s3,88($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0db590ec:
    # Line 1513
    li	$v0,0x8036
    sltu	$a6,$s1,$v0
    bnez	$a6,.L0db5913c
    sltu	$a7,$v0,$s1
    bnez	$a7,.L0db58fdc
    # Line 1558
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db58f38
    # Line 1543
    li	$at,6408
.L0db5910c:
    # Line 1553
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,96($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,72($sp)
    # Line 1554
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$ra,96($sp)
    ld	$s2,80($sp)
    ld	$s3,88($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0db5913c:
    # Line 1513
    li	$at,0x8035
    bne	$s1,$at,.L0db58fdc
    # Line 1558
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db58f38
    # Line 1543
    li	$at,6408
.L0db59150:
    # Line 1529
    li	$v1,6407
    bne	$s0,$v1,.L0db591a4
    # Line 1535
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,96($sp)
    # Line 1531
    li	$a6,6409
    # Line 1532
    li	$a7,5121
    sd	$a7,40($sp)
    # Line 1531
    b	.L0db58e00
    sd	$a6,48($sp)
.L0db59174:
    # Line 1491
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
    sd	$ra,96($sp)
    jal	__gllc_InvalidValue
    move	$a0,$s2
    ld	$gp,72($sp)
    # Line 1492
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$ra,96($sp)
    ld	$s2,80($sp)
    ld	$s3,88($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0db591a4:
    sd	$ra,96($sp)
    # Line 1535
    jalr	$t9
    li	$a0,1282
    ld	$gp,72($sp)
    # Line 1536
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$ra,96($sp)
    ld	$s2,80($sp)
    ld	$s3,88($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __gllc_ConvolutionFilter1DEXT

# Function: __glle_ConvolutionFilter2DEXT
# Declared: Line 1586 (Source lines: 1587-1619)
# Address: 0x0db591d0 - 0x0db592e4 (Size: 276 bytes, Frame: 48)
.globl __glle_ConvolutionFilter2DEXT
.ent __glle_ConvolutionFilter2DEXT
__glle_ConvolutionFilter2DEXT:
    # Line 1587
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$gp,8($sp)
    lui	$at,0xa
    addiu	$at,$at,21704
    # Line 1595
    lw	$a3,__glBeginMode
    # Line 1589
    lw	$a2,__glCurrentContext
    # Line 1587
    addu	$gp,$t9,$at
    # Line 1595
    beqz	$a3,.L0db59260
    sd	$a2,0($sp)
    sd	$ra,24($sp)
    li	$v0,2
    beq	$a3,$v0,.L0db59248
    sd	$a2,0($sp)
    # Line 1601
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,8($sp)
    # Line 1602
    lw	$v0,24($s0)
    ld	$ra,24($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s0
    ld	$s0,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,28
.L0db59248:
    ld	$t9,0($sp)
    # Line 1598
    move	$a0,$t9
    lw	$t9,11856($t9)
    jalr	$t9
    nop
    # Line 1599
    sw	$zero,__glBeginMode
.L0db59260:
    # Line 1607
    ld	$at,0($sp)
    lw	$v1,4($s0)
    sw	$v1,820($at)
    # Line 1608
    lw	$v0,8($s0)
    sw	$v0,860($at)
    # Line 1609
    lw	$ra,12($s0)
    # Line 1610
    # lw $t9, -28592($gp) # &__glElementsPerGroup
    # Line 1609
    sw	$ra,864($at)
    # Line 1610
    jal	__glElementsPerGroup
    lw	$a0,4($s0)
    ld	$t9,0($sp)
    # Line 1613
    li	$a7,1
    # Line 1610
    sw	$v0,824($t9)
    # Line 1613
    addiu	$a5,$s0,28
    lw	$a6,0($s0)
    lw	$a4,20($s0)
    move	$a0,$t9
    lw	$t9,12644($t9)
    lw	$a3,16($s0)
    lw	$a2,12($s0)
    jalr	$t9
    lw	$a1,8($s0)
    ld	$gp,8($sp)
    # Line 1619
    lw	$v0,24($s0)
    ld	$ra,24($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s0
    ld	$s0,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,28
.end __glle_ConvolutionFilter2DEXT

# Function: __gllc_ConvolutionFilter2DEXT
# Declared: Line 1622 (Source lines: 1626-1730)
# Address: 0x0db592e4 - 0x0db597ec (Size: 1288 bytes, Frame: 176)
.globl __gllc_ConvolutionFilter2DEXT
.ent __gllc_ConvolutionFilter2DEXT
__gllc_ConvolutionFilter2DEXT:
    # Line 1628
    move	$v0,$a5
    # Line 1627
    move	$t1,$a4
    # Line 1626
    addiu	$sp,$sp,-176
    sd	$s3,88($sp)
    # Line 1633
    lw	$s3,__glCurrentContext
    sd	$a6,16($sp)
    sd	$s2,96($sp)
    # Line 1626
    move	$s2,$a3
    sd	$s4,80($sp)
    move	$s4,$a2
    sd	$s1,56($sp)
    move	$s1,$a5
    sd	$a0,24($sp)
    sd	$s0,64($sp)
    move	$s0,$a4
    sd	$a1,32($sp)
    sd	$gp,72($sp)
    lui	$at,0xa
    addiu	$at,$at,21428
    # Line 1635
    bltz	$a2,.L0db5971c
    # Line 1626
    addu	$gp,$t9,$at
    # Line 1635
    bltz	$s2,.L0db5971c
    # Line 1637
    sltiu	$v1,$s0,6407
    bnez	$v1,.L0db593c4
    # Line 1639
    sltiu	$a7,$s0,6408
    beqz	$a7,.L0db59554
.L0db5934c:
    # Line 1652
    move	$a0,$zero
.L0db59350:
    # Line 1657
    sltiu	$t0,$s1,5126
    bnez	$t0,.L0db593f0
    # Line 1658
    sltiu	$a7,$s1,5123
    sd	$v0,40($sp)
    sltiu	$at,$s1,5127
    bnez	$at,.L0db59438
    sd	$t1,48($sp)
    li	$a1,0x8034
    sltu	$v1,$s1,$a1
    bnez	$v1,.L0db59644
    sltu	$a7,$a1,$s1
    bnez	$a7,.L0db596fc
    # Line 1688
    li	$t0,6408
.L0db59384:
    beq	$s0,$t0,.L0db59390
    li	$at,0x8000
    bne	$s0,$at,.L0db59750
.L0db59390:
    # Line 1691
    li	$a7,6409
    # Line 1693
    li	$v1,0x8035
    # Line 1692
    li	$t0,5123
    sd	$t0,40($sp)
    # Line 1693
    beq	$s1,$v1,.L0db593b4
    sd	$a7,48($sp)
    li	$at,0x8036
    bne	$s1,$at,.L0db5943c
    # Line 1707
    move	$a0,$s4
.L0db593b4:
    sd	$ra,104($sp)
    # Line 1695
    li	$v1,5125
    b	.L0db59438
    sd	$v1,40($sp)
.L0db593c4:
    # Line 1639
    sltiu	$a7,$s0,6404
    bnez	$a7,.L0db595a4
    sltiu	$t0,$s0,6405
    bnez	$t0,.L0db5934c
    sltiu	$at,$s0,6406
    bnez	$at,.L0db5966c
    sltiu	$v1,$s0,6407
    beqz	$v1,.L0db59574
    # Line 1655
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db59350
    # Line 1652
    move	$a0,$zero
.L0db593f0:
    # Line 1658
    bnez	$a7,.L0db594f0
    sltiu	$t0,$s1,5124
    sd	$v0,40($sp)
    bnez	$t0,.L0db59438
    sd	$t1,48($sp)
    sltiu	$at,$s1,5125
    bnez	$at,.L0db59694
    sltiu	$v1,$s1,5126
    beqz	$v1,.L0db59524
    # Line 1703
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,104($sp)
    sd	$v0,40($sp)
    b	.L0db59438
    sd	$t1,48($sp)
.L0db59428:
    sd	$v0,40($sp)
    # Line 1658
    li	$a7,5120
    bne	$s1,$a7,.L0db59520
    sd	$t1,48($sp)
.L0db59438:
    # Line 1707
    move	$a0,$s4
.L0db5943c:
    move	$a1,$s2
    # lw $t9, -26724($gp) # &__glImageSize
    move	$a2,$s0
    sd	$ra,104($sp)
    jal	__glImageSize
    move	$a3,$s1
    # Line 1710
    move	$a0,$s3
    # Line 1708
    li	$a2,-4
    addiu	$a1,$v0,3
    # Line 1710
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 1708
    and	$a1,$a1,$a2
    sd	$a1,0($sp)
    # Line 1710
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,28
    ld	$a7,0($sp)
    # Line 1716
    ld	$at,24($sp)
    # Line 1710
    beqz	$v0,.L0db595c0
    ld	$ra,104($sp)
    # Line 1721
    sw	$s1,36($v0)
    # Line 1720
    sw	$s0,32($v0)
    # Line 1719
    sw	$s2,28($v0)
    # Line 1718
    sw	$s4,24($v0)
    # Line 1722
    sw	$a7,40($v0)
    # Line 1716
    sw	$at,16($v0)
    # Line 1713
    li	$t0,196
    # Line 1717
    ld	$v1,32($sp)
    # Line 1713
    sh	$t0,12($v0)
    # Line 1722
    blez	$a7,.L0db594b8
    # Line 1717
    sw	$v1,20($v0)
    ld	$a7,16($sp)
    # Line 1722
    bnez	$a7,.L0db595e0
.L0db594b8:
    # Line 1729
    nop	# was lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s3
    move	$a1,$v0
    jal	__glDlistAppendOp
    la	$a2,__glle_ConvolutionFilter2DEXT
    ld	$gp,72($sp)
    # Line 1730
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$s2,96($sp)
    ld	$ra,104($sp)
    ld	$s3,88($sp)
    ld	$s4,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db594f0:
    # Line 1658
    sltiu	$t0,$s1,5121
    bnezl	$t0,.L0db59428
    sd	$ra,104($sp)
    sd	$v0,40($sp)
    sltiu	$at,$s1,5122
    bnez	$at,.L0db59438
    sd	$t1,48($sp)
    sd	$ra,104($sp)
    sd	$v0,40($sp)
    li	$v1,5122
    beq	$s1,$v1,.L0db59438
    sd	$t1,48($sp)
.L0db59520:
    # Line 1703
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
.L0db59524:
    sd	$ra,104($sp)
    jal	__gllc_InvalidEnum
    move	$a0,$s3
    ld	$gp,72($sp)
    # Line 1704
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$s2,96($sp)
    ld	$ra,104($sp)
    ld	$s3,88($sp)
    ld	$s4,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db59554:
    # Line 1639
    sltiu	$a7,$s0,6410
    bnez	$a7,.L0db59628
    sltiu	$t0,$s0,6411
    bnez	$t0,.L0db5934c
    li	$at,0x8000
    beq	$s0,$at,.L0db59350
    # Line 1652
    move	$a0,$zero
    # Line 1655
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
.L0db59574:
    sd	$ra,104($sp)
    jal	__gllc_InvalidEnum
    move	$a0,$s3
    ld	$gp,72($sp)
    # Line 1656
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$s2,96($sp)
    ld	$ra,104($sp)
    ld	$s3,88($sp)
    ld	$s4,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db595a4:
    # Line 1639
    sltiu	$v1,$s0,6403
    bnez	$v1,.L0db59614
    sltiu	$a7,$s0,6404
    beqz	$a7,.L0db59574
    # Line 1655
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db59350
    # Line 1652
    move	$a0,$zero
.L0db595c0:
    ld	$gp,72($sp)
    # Line 1712
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$s2,96($sp)
    ld	$s3,88($sp)
    ld	$s4,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db595e0:
    sd	$v0,8($sp)
    # Line 1725
    move	$a0,$s3
    move	$a1,$s4
    move	$a2,$s2
    ld	$a3,48($sp)
    ld	$a4,40($sp)
    # lw $t9, -26712($gp) # &__glFillImage
    ld	$a5,16($sp)
    move	$a6,$v0
    jal	__glFillImage
    addiu	$a6,$v0,44
    b	.L0db594b8
    ld	$v0,8($sp)
.L0db59614:
    # Line 1639
    li	$a7,6400
    bne	$s0,$a7,.L0db59574
    # Line 1655
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    # Line 1642
    b	.L0db59350
    # Line 1641
    li	$a0,1
.L0db59628:
    # Line 1639
    sltiu	$t0,$s0,6409
    bnez	$t0,.L0db59680
    sltiu	$at,$s0,6410
    beqz	$at,.L0db59574
    # Line 1655
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db59350
    # Line 1652
    move	$a0,$zero
.L0db59644:
    # Line 1658
    li	$a1,0x8032
    sltu	$v1,$s1,$a1
    bnez	$v1,.L0db596b0
    sltu	$a7,$a1,$s1
    beqz	$a7,.L0db59798
    li	$t0,0x8033
    bne	$s1,$t0,.L0db59524
    # Line 1703
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db59384
    # Line 1688
    li	$t0,6408
.L0db5966c:
    # Line 1639
    li	$at,6405
    bne	$s0,$at,.L0db59574
    # Line 1655
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db59350
    # Line 1652
    move	$a0,$zero
.L0db59680:
    # Line 1639
    li	$v1,6408
    bne	$s0,$v1,.L0db59574
    # Line 1655
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db59350
    # Line 1652
    move	$a0,$zero
.L0db59694:
    # Line 1658
    li	$a7,5124
    bne	$s1,$a7,.L0db59524
    # Line 1703
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,104($sp)
    sd	$v0,40($sp)
    b	.L0db59438
    sd	$t1,48($sp)
.L0db596b0:
    # Line 1658
    li	$t0,6656
    bne	$s1,$t0,.L0db59524
    # Line 1703
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,104($sp)
    sd	$v0,40($sp)
    # Line 1660
    bnez	$a0,.L0db59438
    sd	$t1,48($sp)
    # Line 1661
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s3
    ld	$gp,72($sp)
    # Line 1662
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$s2,96($sp)
    ld	$ra,104($sp)
    ld	$s3,88($sp)
    ld	$s4,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db596fc:
    # Line 1658
    li	$v0,0x8036
    sltu	$at,$s1,$v0
    bnez	$at,.L0db59784
    sltu	$v1,$v0,$s1
    bnez	$v1,.L0db59524
    # Line 1703
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db59384
    # Line 1688
    li	$t0,6408
.L0db5971c:
    # Line 1636
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
    sd	$ra,104($sp)
    jal	__gllc_InvalidValue
    move	$a0,$s3
    ld	$gp,72($sp)
    # Line 1637
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$s2,96($sp)
    ld	$ra,104($sp)
    ld	$s3,88($sp)
    ld	$s4,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db59750:
    # Line 1698
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,104($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,72($sp)
    # Line 1699
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$s2,96($sp)
    ld	$ra,104($sp)
    ld	$s3,88($sp)
    ld	$s4,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db59784:
    # Line 1658
    li	$a7,0x8035
    bne	$s1,$a7,.L0db59524
    # Line 1703
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db59384
    # Line 1688
    li	$t0,6408
.L0db59798:
    # Line 1674
    li	$t0,6407
    bne	$s0,$t0,.L0db597bc
    # Line 1680
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,104($sp)
    # Line 1676
    li	$at,6409
    # Line 1677
    li	$v1,5121
    sd	$v1,40($sp)
    # Line 1676
    b	.L0db59438
    sd	$at,48($sp)
.L0db597bc:
    sd	$ra,104($sp)
    # Line 1680
    jal	__glSetError
    li	$a0,1282
    ld	$gp,72($sp)
    # Line 1681
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$s2,96($sp)
    ld	$ra,104($sp)
    ld	$s3,88($sp)
    ld	$s4,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end __gllc_ConvolutionFilter2DEXT

# Function: __glle_SeparableFilter2DEXT
# Declared: Line 1745 (Source lines: 1746-1781)
# Address: 0x0db597ec - 0x0db5991c (Size: 304 bytes, Frame: 192)
.globl __glle_SeparableFilter2DEXT
.ent __glle_SeparableFilter2DEXT
__glle_SeparableFilter2DEXT:
    # Line 1746
    addiu	$sp,$sp,-64
    sd	$ra,40($sp)
    sd	$s0,32($sp)
    move	$s0,$a0
    sd	$gp,24($sp)
    lui	$at,0xa
    addiu	$at,$at,20140
    # Line 1753
    lw	$a3,__glBeginMode
    # Line 1748
    lw	$a2,__glCurrentContext
    # Line 1746
    addu	$gp,$t9,$at
    # Line 1753
    beqz	$a3,.L0db59884
    sd	$a2,16($sp)
    sd	$ra,40($sp)
    li	$v0,2
    beq	$a3,$v0,.L0db5986c
    sd	$a2,16($sp)
    # Line 1759
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 1760
    lw	$v1,28($s0)
    lw	$v0,24($s0)
    ld	$gp,24($sp)
    ld	$ra,40($sp)
    addu	$v0,$v0,$v1
    li	$v1,-4
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s0
    ld	$s0,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    addiu	$v0,$v0,32
.L0db5986c:
    ld	$t9,16($sp)
    # Line 1756
    move	$a0,$t9
    lw	$t9,11856($t9)
    jalr	$t9
    nop
    # Line 1757
    sw	$zero,__glBeginMode
.L0db59884:
    # Line 1766
    ld	$at,16($sp)
    lw	$v1,4($s0)
    sw	$v1,888($at)
    # Line 1767
    lw	$v0,8($s0)
    sw	$v0,928($at)
    # Line 1768
    lw	$ra,12($s0)
    # Line 1769
    # lw $t9, -28592($gp) # &__glElementsPerGroup
    # Line 1768
    sw	$ra,932($at)
    # Line 1769
    jal	__glElementsPerGroup
    lw	$a0,4($s0)
    ld	$a0,16($sp)
    sw	$v0,892($a0)
    # Line 1772
    li	$t0,1
    lw	$a6,24($s0)
    lw	$a4,20($s0)
    lw	$a3,16($s0)
    lw	$a2,12($s0)
    lw	$a1,8($s0)
    sw	$t0,4($sp)
    li	$a7,0x8012
    lw	$t9,12648($a0)
    addiu	$a5,$s0,32
    addu	$a6,$a6,$s0
    jalr	$t9
    addiu	$a6,$a6,32
    # Line 1781
    lw	$v1,28($s0)
    lw	$v0,24($s0)
    ld	$gp,24($sp)
    ld	$ra,40($sp)
    addu	$v0,$v0,$v1
    li	$v1,-4
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s0
    ld	$s0,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    addiu	$v0,$v0,32
.end __glle_SeparableFilter2DEXT

# Function: __gllc_SeparableFilter2DEXT
# Declared: Line 1784 (Source lines: 1788-1901)
# Address: 0x0db5991c - 0x0db59eb4 (Size: 1432 bytes, Frame: 208)
.globl __gllc_SeparableFilter2DEXT
.ent __gllc_SeparableFilter2DEXT
__gllc_SeparableFilter2DEXT:
    # Line 1790
    move	$v0,$a5
    # Line 1789
    move	$t2,$a4
    # Line 1788
    addiu	$sp,$sp,-208
    sd	$s3,104($sp)
    # Line 1795
    lw	$s3,__glCurrentContext
    sd	$a7,32($sp)
    sd	$a6,40($sp)
    sd	$s2,120($sp)
    # Line 1788
    move	$s2,$a3
    sd	$s4,112($sp)
    move	$s4,$a2
    sd	$s1,80($sp)
    move	$s1,$a5
    sd	$a0,48($sp)
    sd	$s0,88($sp)
    move	$s0,$a4
    sd	$a1,56($sp)
    sd	$gp,96($sp)
    lui	$at,0xa
    addiu	$at,$at,19836
    # Line 1797
    bltz	$a2,.L0db59de4
    # Line 1788
    addu	$gp,$t9,$at
    # Line 1797
    bltz	$s2,.L0db59de4
    # Line 1799
    sltiu	$v1,$s0,6407
    bnez	$v1,.L0db59aa8
    # Line 1801
    sltiu	$t0,$s0,6408
    beqz	$t0,.L0db59b28
.L0db59988:
    # Line 1814
    move	$a0,$zero
.L0db5998c:
    # Line 1819
    sltiu	$t1,$s1,5126
    bnez	$t1,.L0db59ad4
    # Line 1820
    sltiu	$t0,$s1,5123
    sd	$v0,64($sp)
    sltiu	$at,$s1,5127
    beqz	$at,.L0db59b84
    sd	$t2,72($sp)
.L0db599a8:
    # Line 1869
    move	$a0,$s4
.L0db599ac:
    move	$a3,$s1
    # lw $t9, -26724($gp) # &__glImageSize
    move	$a2,$s0
    sd	$ra,128($sp)
    jal	__glImageSize
    li	$a1,1
    sd	$v0,24($sp)
    # Line 1870
    move	$a3,$s1
    # lw $t9, -26724($gp) # &__glImageSize
    move	$a2,$s0
    move	$a1,$s2
    jal	__glImageSize
    li	$a0,1
    # Line 1874
    move	$a0,$s3
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 1872
    li	$a3,-4
    addiu	$a1,$v0,3
    # Line 1874
    ld	$a2,24($sp)
    # Line 1872
    and	$a1,$a1,$a3
    sd	$a1,8($sp)
    # Line 1874
    addiu	$a2,$a2,3
    and	$a2,$a2,$a3
    sd	$a2,16($sp)
    addu	$a1,$a1,$a2
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,32
    ld	$t0,8($sp)
    # Line 1881
    ld	$v1,56($sp)
    # Line 1874
    beqz	$v0,.L0db59bdc
    ld	$ra,128($sp)
    # Line 1885
    sw	$s1,36($v0)
    # Line 1884
    sw	$s0,32($v0)
    # Line 1883
    sw	$s2,28($v0)
    # Line 1882
    sw	$s4,24($v0)
    # Line 1881
    sw	$v1,20($v0)
    # Line 1877
    li	$t1,203
    sh	$t1,12($v0)
    # Line 1880
    ld	$at,48($sp)
    # Line 1887
    sw	$t0,44($v0)
    # Line 1886
    ld	$t0,16($sp)
    # Line 1880
    sw	$at,16($v0)
    # Line 1887
    blez	$t0,.L0db59a60
    # Line 1886
    sw	$t0,40($v0)
    ld	$t1,40($sp)
    # Line 1887
    bnez	$t1,.L0db59c7c
.L0db59a60:
    ld	$at,8($sp)
    # Line 1890
    blez	$at,.L0db59a70
    ld	$v1,32($sp)
    bnez	$v1,.L0db59bfc
.L0db59a70:
    # Line 1900
    nop	# was lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s3
    move	$a1,$v0
    jal	__glDlistAppendOp
    la	$a2,__glle_SeparableFilter2DEXT
    ld	$gp,96($sp)
    # Line 1901
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,120($sp)
    ld	$ra,128($sp)
    ld	$s3,104($sp)
    ld	$s4,112($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db59aa8:
    # Line 1801
    sltiu	$t0,$s0,6404
    bnez	$t0,.L0db59b0c
    sltiu	$t1,$s0,6405
    bnez	$t1,.L0db59988
    sltiu	$at,$s0,6406
    bnez	$at,.L0db59cc4
    sltiu	$v1,$s0,6407
    beqz	$v1,.L0db59cd4
    # Line 1817
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db5998c
    # Line 1814
    move	$a0,$zero
.L0db59ad4:
    # Line 1820
    bnez	$t0,.L0db59b4c
    sltiu	$t1,$s1,5124
    sd	$v0,64($sp)
    bnez	$t1,.L0db599a8
    sd	$t2,72($sp)
    sltiu	$at,$s1,5125
    bnez	$at,.L0db59d5c
    sltiu	$v1,$s1,5126
    beqz	$v1,.L0db59c4c
    # Line 1865
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,128($sp)
    sd	$v0,64($sp)
    b	.L0db599a8
    sd	$t2,72($sp)
.L0db59b0c:
    # Line 1801
    sltiu	$t0,$s0,6403
    bnez	$t0,.L0db59cb0
    sltiu	$t1,$s0,6404
    beqz	$t1,.L0db59cd4
    # Line 1817
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db5998c
    # Line 1814
    move	$a0,$zero
.L0db59b28:
    # Line 1801
    sltiu	$at,$s0,6410
    bnez	$at,.L0db59d04
    sltiu	$v1,$s0,6411
    bnez	$v1,.L0db59988
    li	$t0,0x8000
    bne	$s0,$t0,.L0db59cd4
    # Line 1817
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db5998c
    # Line 1814
    move	$a0,$zero
.L0db59b4c:
    # Line 1820
    sltiu	$t1,$s1,5121
    bnezl	$t1,.L0db59c38
    sd	$ra,128($sp)
    sd	$v0,64($sp)
    sltiu	$at,$s1,5122
    bnez	$at,.L0db599a8
    sd	$t2,72($sp)
    li	$v1,5122
    bne	$s1,$v1,.L0db59c4c
    # Line 1865
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,128($sp)
    sd	$v0,64($sp)
    b	.L0db599a8
    sd	$t2,72($sp)
.L0db59b84:
    # Line 1820
    li	$a1,0x8034
    sltu	$t0,$s1,$a1
    bnez	$t0,.L0db59d20
    sltu	$t1,$a1,$s1
    bnez	$t1,.L0db59dc4
    # Line 1850
    li	$at,6408
.L0db59b9c:
    beq	$s0,$at,.L0db59ba8
    li	$v1,0x8000
    bne	$s0,$v1,.L0db59e18
.L0db59ba8:
    # Line 1853
    li	$t1,6409
    # Line 1855
    li	$t0,0x8035
    # Line 1854
    li	$at,5123
    sd	$at,64($sp)
    # Line 1855
    beq	$s1,$t0,.L0db59bcc
    sd	$t1,72($sp)
    li	$v1,0x8036
    bne	$s1,$v1,.L0db599ac
    # Line 1869
    move	$a0,$s4
.L0db59bcc:
    sd	$ra,128($sp)
    # Line 1857
    li	$t0,5125
    b	.L0db599a8
    sd	$t0,64($sp)
.L0db59bdc:
    ld	$gp,96($sp)
    # Line 1876
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,120($sp)
    ld	$s3,104($sp)
    ld	$s4,112($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db59bfc:
    sd	$v0,0($sp)
    # Line 1895
    move	$a0,$s3
    ld	$a5,32($sp)
    ld	$a4,64($sp)
    ld	$a3,72($sp)
    move	$a2,$s2
    li	$a1,1
    ld	$a6,16($sp)
    # lw $t9, -26712($gp) # &__glFillImage
    move	$a7,$v0
    addu	$a6,$a6,$v0
    jal	__glFillImage
    addiu	$a6,$a6,48
    b	.L0db59a70
    ld	$v0,0($sp)
.L0db59c38:
    sd	$v0,64($sp)
    # Line 1820
    li	$t0,5120
    beq	$s1,$t0,.L0db599a8
    sd	$t2,72($sp)
    # Line 1865
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
.L0db59c4c:
    sd	$ra,128($sp)
    jal	__gllc_InvalidEnum
    move	$a0,$s3
    ld	$gp,96($sp)
    # Line 1866
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,120($sp)
    ld	$ra,128($sp)
    ld	$s3,104($sp)
    ld	$s4,112($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db59c7c:
    sd	$v0,0($sp)
    # Line 1890
    move	$a0,$s3
    move	$a1,$s4
    ld	$a5,40($sp)
    ld	$a4,64($sp)
    ld	$a3,72($sp)
    # lw $t9, -26712($gp) # &__glFillImage
    li	$a2,1
    move	$a6,$v0
    jal	__glFillImage
    addiu	$a6,$v0,48
    b	.L0db59a60
    ld	$v0,0($sp)
.L0db59cb0:
    # Line 1801
    li	$t0,6400
    bne	$s0,$t0,.L0db59cd4
    # Line 1817
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    # Line 1804
    b	.L0db5998c
    # Line 1803
    li	$a0,1
.L0db59cc4:
    # Line 1801
    li	$t1,6405
    beq	$s0,$t1,.L0db5998c
    # Line 1814
    move	$a0,$zero
    # Line 1817
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
.L0db59cd4:
    sd	$ra,128($sp)
    jal	__gllc_InvalidEnum
    move	$a0,$s3
    ld	$gp,96($sp)
    # Line 1818
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,120($sp)
    ld	$ra,128($sp)
    ld	$s3,104($sp)
    ld	$s4,112($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db59d04:
    # Line 1801
    sltiu	$at,$s0,6409
    bnez	$at,.L0db59d48
    sltiu	$v1,$s0,6410
    beqz	$v1,.L0db59cd4
    # Line 1817
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db5998c
    # Line 1814
    move	$a0,$zero
.L0db59d20:
    # Line 1820
    li	$a1,0x8032
    sltu	$t0,$s1,$a1
    bnez	$t0,.L0db59d78
    sltu	$t1,$a1,$s1
    beqz	$t1,.L0db59e60
    li	$at,0x8033
    bne	$s1,$at,.L0db59c4c
    # Line 1865
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db59b9c
    # Line 1850
    li	$at,6408
.L0db59d48:
    # Line 1801
    li	$v1,6408
    bne	$s0,$v1,.L0db59cd4
    # Line 1817
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db5998c
    # Line 1814
    move	$a0,$zero
.L0db59d5c:
    # Line 1820
    li	$t0,5124
    bne	$s1,$t0,.L0db59c4c
    # Line 1865
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,128($sp)
    sd	$v0,64($sp)
    b	.L0db599a8
    sd	$t2,72($sp)
.L0db59d78:
    # Line 1820
    li	$t1,6656
    bne	$s1,$t1,.L0db59c4c
    # Line 1865
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,128($sp)
    sd	$v0,64($sp)
    # Line 1822
    bnez	$a0,.L0db599a8
    sd	$t2,72($sp)
    # Line 1823
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s3
    ld	$gp,96($sp)
    # Line 1824
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,120($sp)
    ld	$ra,128($sp)
    ld	$s3,104($sp)
    ld	$s4,112($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db59dc4:
    # Line 1820
    li	$v0,0x8036
    sltu	$at,$s1,$v0
    bnez	$at,.L0db59e4c
    sltu	$v1,$v0,$s1
    bnez	$v1,.L0db59c4c
    # Line 1865
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db59b9c
    # Line 1850
    li	$at,6408
.L0db59de4:
    # Line 1798
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
    sd	$ra,128($sp)
    jal	__gllc_InvalidValue
    move	$a0,$s3
    ld	$gp,96($sp)
    # Line 1799
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,120($sp)
    ld	$ra,128($sp)
    ld	$s3,104($sp)
    ld	$s4,112($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db59e18:
    # Line 1860
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,128($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,96($sp)
    # Line 1861
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,120($sp)
    ld	$ra,128($sp)
    ld	$s3,104($sp)
    ld	$s4,112($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0db59e4c:
    # Line 1820
    li	$t0,0x8035
    bne	$s1,$t0,.L0db59c4c
    # Line 1865
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    b	.L0db59b9c
    # Line 1850
    li	$at,6408
.L0db59e60:
    # Line 1836
    li	$t1,6407
    bne	$s0,$t1,.L0db59e84
    # Line 1842
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,128($sp)
    # Line 1838
    li	$at,6409
    # Line 1839
    li	$v1,5121
    sd	$v1,64($sp)
    # Line 1838
    b	.L0db599a8
    sd	$at,72($sp)
.L0db59e84:
    sd	$ra,128($sp)
    # Line 1842
    jal	__glSetError
    li	$a0,1282
    ld	$gp,96($sp)
    # Line 1843
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,120($sp)
    ld	$ra,128($sp)
    ld	$s3,104($sp)
    ld	$s4,112($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end __gllc_SeparableFilter2DEXT

# Function: __glle_TexImage4DSGIS
# Declared: Line 1903 (Source lines: 1904-1918)
# Address: 0x0db59eb4 - 0x0db59ebc (Size: 8 bytes, Frame: 0)
.globl __glle_TexImage4DSGIS
.ent __glle_TexImage4DSGIS
__glle_TexImage4DSGIS:
    # Line 1918
    jr	$ra
    # Line 1904
    move	$v0,$a0
.end __glle_TexImage4DSGIS

# Function: __gllc_TexImage4DSGIS
# Declared: Line 1922 (Source lines: 1927-1927)
# Address: 0x0db59ebc - 0x0db59ec4 (Size: 8 bytes, Frame: 0)
.globl __gllc_TexImage4DSGIS
.ent __gllc_TexImage4DSGIS
__gllc_TexImage4DSGIS:
    # Line 1927
    jr	$ra
    nop
.end __gllc_TexImage4DSGIS

# Function: __glle_TexSubImage4DSGIS
# Declared: Line 1929 (Source lines: 1930-1944)
# Address: 0x0db59ec4 - 0x0db59ecc (Size: 8 bytes, Frame: 0)
.globl __glle_TexSubImage4DSGIS
.ent __glle_TexSubImage4DSGIS
__glle_TexSubImage4DSGIS:
    # Line 1944
    jr	$ra
    # Line 1930
    move	$v0,$a0
.end __glle_TexSubImage4DSGIS

# Function: __gllc_TexSubImage4DSGIS
# Declared: Line 1948 (Source lines: 1953-1953)
# Address: 0x0db59ecc - 0x0db59ed4 (Size: 8 bytes, Frame: 0)
.globl __gllc_TexSubImage4DSGIS
.ent __gllc_TexSubImage4DSGIS
__gllc_TexSubImage4DSGIS:
    # Line 1953
    jr	$ra
    nop
.end __gllc_TexSubImage4DSGIS

# Function: __glle_Disable
# Declared: Line 1955 (Source lines: 1956-1961)
# Address: 0x0db59ed4 - 0x0db59f18 (Size: 68 bytes, Frame: 48)
.globl __glle_Disable
.ent __glle_Disable
__glle_Disable:
    # Line 1956
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    lui	$at,0xa
    addiu	$at,$at,18372
    addu	$gp,$t9,$at
    # Line 1960
    lw	$t9,4472($zero)
    # Line 1956
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1960
    jalr	$t9
    lw	$a0,0($a0)
    ld	$gp,16($sp)
    # Line 1961
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Disable

# Function: __gllc_Disable
# Declared: Line 1964 (Source lines: 1965-2003)
# Address: 0x0db59f18 - 0x0db5a120 (Size: 520 bytes, Frame: 48)
.globl __gllc_Disable
.ent __gllc_Disable
__gllc_Disable:
    # Line 1970
    li	$at,0x8074
    # Line 1965
    addiu	$sp,$sp,-48
    sd	$s1,8($sp)
    # Line 1968
    lw	$s1,__glCurrentContext
    sd	$s0,16($sp)
    # Line 1965
    move	$s0,$a0
    sd	$gp,0($sp)
    lui	$v0,0xa
    addiu	$v0,$v0,18304
    # Line 1970
    beq	$a0,$at,.L0db5a018
    # Line 1965
    addu	$gp,$t9,$v0
    # Line 1970
    li	$v1,0x8075
    beq	$s0,$v1,.L0db5a04c
    li	$a2,0x8076
    # Line 1980
    lui	$at,0xf
    # Line 1970
    beq	$s0,$a2,.L0db5a080
    li	$a3,0x8077
    beq	$s0,$a3,.L0db5a0b8
    li	$at,0x8078
    # Line 1988
    lui	$v1,0x7f0
    # Line 1970
    beq	$s0,$at,.L0db5a0f0
    # Line 1988
    nor	$v1,$v1,$zero
    # Line 1970
    li	$v1,0x8079
    beq	$s0,$v1,.L0db59fe0
    # Line 1997
    nop	# was lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a0,$s1
    sd	$ra,24($sp)
    jal	__glDlistAllocOp2
    li	$a1,4
    bnez	$v0,.L0db59fa8
    ld	$ra,24($sp)
    ld	$gp,0($sp)
    # Line 1998
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db59fa8:
    # Line 2002
    la	$a2,__glle_Disable
    move	$a1,$v0
    move	$a0,$s1
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 2001
    sw	$s0,16($v0)
    # Line 1999
    li	$a3,137
    # Line 2002
    jal	__glDlistAppendOp
    # Line 1999
    sh	$a3,12($v0)
    ld	$gp,0($sp)
    # Line 2003
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db59fe0:
    # Line 1992
    lui	$at,0x800
    ld	$gp,0($sp)
    nor	$at,$at,$zero
    # Line 1993
    lw	$v0,4948($s1)
    # Line 1992
    lw	$s0,4944($s1)
    # Line 1993
    li	$v1,-17
    and	$v0,$v0,$v1
    # Line 1992
    and	$s0,$s0,$at
    sw	$s0,4944($s1)
    # Line 1994
    ld	$s0,16($sp)
    # Line 1993
    sw	$v0,4948($s1)
    # Line 1994
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db5a018:
    # Line 1972
    li	$a3,-256
    ld	$gp,0($sp)
    lw	$a2,4944($s1)
    # Line 1973
    lw	$s0,4948($s1)
    li	$at,-33
    # Line 1972
    and	$a2,$a2,$a3
    # Line 1973
    and	$s0,$s0,$at
    sw	$s0,4948($s1)
    # Line 1974
    ld	$s0,16($sp)
    # Line 1972
    sw	$a2,4944($s1)
    # Line 1974
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db5a04c:
    # Line 1977
    li	$a3,-2
    ld	$gp,0($sp)
    # Line 1978
    ld	$s0,16($sp)
    # Line 1976
    lw	$v0,4944($s1)
    # Line 1977
    lw	$a2,4948($s1)
    # Line 1976
    li	$v1,-3841
    and	$v0,$v0,$v1
    # Line 1977
    and	$a2,$a2,$a3
    sw	$a2,4948($s1)
    # Line 1976
    sw	$v0,4944($s1)
    # Line 1978
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db5a080:
    # Line 1980
    ori	$at,$at,0xf000
    ld	$gp,0($sp)
    nor	$at,$at,$zero
    # Line 1981
    lw	$v0,4948($s1)
    # Line 1980
    lw	$s0,4944($s1)
    # Line 1981
    li	$v1,-3
    and	$v0,$v0,$v1
    # Line 1980
    and	$s0,$s0,$at
    sw	$s0,4944($s1)
    # Line 1982
    ld	$s0,16($sp)
    # Line 1981
    sw	$v0,4948($s1)
    # Line 1982
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db5a0b8:
    # Line 1985
    li	$at,-9
    ld	$gp,0($sp)
    # Line 1984
    lui	$a3,0xfff
    lw	$a2,4944($s1)
    # Line 1985
    lw	$s0,4948($s1)
    # Line 1984
    ori	$a3,$a3,0xffff
    and	$a2,$a2,$a3
    # Line 1985
    and	$s0,$s0,$at
    sw	$s0,4948($s1)
    # Line 1986
    ld	$s0,16($sp)
    # Line 1984
    sw	$a2,4944($s1)
    # Line 1986
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db5a0f0:
    ld	$gp,0($sp)
    # Line 1990
    ld	$s0,16($sp)
    # Line 1988
    lw	$v0,4944($s1)
    # Line 1989
    lw	$a2,4948($s1)
    li	$a3,-5
    # Line 1988
    and	$v0,$v0,$v1
    # Line 1989
    and	$a2,$a2,$a3
    sw	$a2,4948($s1)
    # Line 1988
    sw	$v0,4944($s1)
    # Line 1990
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Disable

# Function: __glle_Enable
# Declared: Line 2005 (Source lines: 2006-2011)
# Address: 0x0db5a120 - 0x0db5a164 (Size: 68 bytes, Frame: 48)
.globl __glle_Enable
.ent __glle_Enable
__glle_Enable:
    # Line 2006
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    lui	$at,0xa
    addiu	$at,$at,17784
    addu	$gp,$t9,$at
    # Line 2010
    lw	$t9,4476($zero)
    # Line 2006
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 2010
    jalr	$t9
    lw	$a0,0($a0)
    ld	$gp,16($sp)
    # Line 2011
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_Enable

# Function: __gllc_Enable
# Declared: Line 2014 (Source lines: 2015-2053)
# Address: 0x0db5a164 - 0x0db5a33c (Size: 472 bytes, Frame: 48)
.globl __gllc_Enable
.ent __gllc_Enable
__gllc_Enable:
    # Line 2020
    li	$at,0x8074
    # Line 2015
    addiu	$sp,$sp,-48
    sd	$s1,8($sp)
    # Line 2018
    lw	$s1,__glCurrentContext
    sd	$s0,16($sp)
    # Line 2015
    move	$s0,$a0
    sd	$gp,0($sp)
    lui	$v0,0xa
    addiu	$v0,$v0,17716
    # Line 2020
    beq	$a0,$at,.L0db5a250
    # Line 2015
    addu	$gp,$t9,$v0
    # Line 2020
    li	$v1,0x8075
    beq	$s0,$v1,.L0db5a27c
    li	$a2,0x8076
    beq	$s0,$a2,.L0db5a2a8
    li	$a3,0x8077
    beq	$s0,$a3,.L0db5a2dc
    li	$at,0x8078
    beq	$s0,$at,.L0db5a30c
    li	$v1,0x8079
    beq	$s0,$v1,.L0db5a220
    # Line 2047
    nop	# was lw $t9, -29492($gp) # &__glDlistAllocOp2
    move	$a0,$s1
    sd	$ra,24($sp)
    jal	__glDlistAllocOp2
    li	$a1,4
    bnez	$v0,.L0db5a1e8
    ld	$ra,24($sp)
    ld	$gp,0($sp)
    # Line 2048
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db5a1e8:
    # Line 2052
    la	$a2,__glle_Enable
    move	$a1,$v0
    move	$a0,$s1
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    # Line 2051
    sw	$s0,16($v0)
    # Line 2049
    li	$a3,138
    # Line 2052
    jal	__glDlistAppendOp
    # Line 2049
    sh	$a3,12($v0)
    ld	$gp,0($sp)
    # Line 2053
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db5a220:
    # Line 2042
    lui	$at,0x800
    # Line 2043
    lw	$v0,4948($s1)
    # Line 2042
    lw	$s0,4944($s1)
    ld	$gp,0($sp)
    # Line 2043
    ori	$v0,$v0,0x10
    # Line 2042
    or	$s0,$s0,$at
    sw	$s0,4944($s1)
    # Line 2044
    ld	$s0,16($sp)
    # Line 2043
    sw	$v0,4948($s1)
    # Line 2044
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db5a250:
    ld	$gp,0($sp)
    # Line 2022
    lw	$v1,4944($s1)
    # Line 2023
    lw	$a2,4948($s1)
    # Line 2024
    ld	$s0,16($sp)
    # Line 2022
    ori	$v1,$v1,0xff
    # Line 2023
    ori	$a2,$a2,0x20
    sw	$a2,4948($s1)
    # Line 2022
    sw	$v1,4944($s1)
    # Line 2024
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db5a27c:
    # Line 2026
    lw	$a3,4944($s1)
    # Line 2027
    lw	$s0,4948($s1)
    ld	$gp,0($sp)
    # Line 2026
    ori	$a3,$a3,0xf00
    # Line 2027
    ori	$s0,$s0,0x1
    sw	$s0,4948($s1)
    # Line 2028
    ld	$s0,16($sp)
    # Line 2026
    sw	$a3,4944($s1)
    # Line 2028
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db5a2a8:
    # Line 2030
    lui	$v0,0xf
    ld	$gp,0($sp)
    # Line 2032
    ld	$s0,16($sp)
    # Line 2030
    lw	$at,4944($s1)
    # Line 2031
    lw	$v1,4948($s1)
    # Line 2030
    ori	$v0,$v0,0xf000
    or	$at,$at,$v0
    # Line 2031
    ori	$v1,$v1,0x2
    sw	$v1,4948($s1)
    # Line 2030
    sw	$at,4944($s1)
    # Line 2032
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db5a2dc:
    ld	$gp,0($sp)
    # Line 2034
    lw	$a2,4944($s1)
    # Line 2035
    lw	$s0,4948($s1)
    # Line 2034
    lui	$a3,0xf000
    or	$a2,$a2,$a3
    # Line 2035
    ori	$s0,$s0,0x8
    sw	$s0,4948($s1)
    # Line 2036
    ld	$s0,16($sp)
    # Line 2034
    sw	$a2,4944($s1)
    # Line 2036
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db5a30c:
    # Line 2038
    lui	$v0,0x7f0
    ld	$gp,0($sp)
    lw	$at,4944($s1)
    # Line 2039
    lw	$v1,4948($s1)
    # Line 2040
    ld	$s0,16($sp)
    # Line 2038
    or	$at,$at,$v0
    # Line 2039
    ori	$v1,$v1,0x4
    sw	$v1,4948($s1)
    # Line 2038
    sw	$at,4944($s1)
    # Line 2040
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __gllc_Enable

# Function: __glle_DrawArraysEXT
# Declared: Line 2055 (Source lines: 2056-2065)
# Address: 0x0db5a33c - 0x0db5a344 (Size: 8 bytes, Frame: 0)
.globl __glle_DrawArraysEXT
.ent __glle_DrawArraysEXT
__glle_DrawArraysEXT:
    # Line 2065
    jr	$ra
    # Line 2056
    move	$v0,$a0
.end __glle_DrawArraysEXT

# Function: __glle_DrawElements
# Declared: Line 2068 (Source lines: 2069-2078)
# Address: 0x0db5a344 - 0x0db5a34c (Size: 8 bytes, Frame: 0)
.globl __glle_DrawElements
.ent __glle_DrawElements
__glle_DrawElements:
    # Line 2078
    jr	$ra
    # Line 2069
    move	$v0,$a0
.end __glle_DrawElements

# Function: __glle_ArrayElementEXT
# Declared: Line 2081 (Source lines: 2082-2090)
# Address: 0x0db5a34c - 0x0db5a354 (Size: 8 bytes, Frame: 0)
.globl __glle_ArrayElementEXT
.ent __glle_ArrayElementEXT
__glle_ArrayElementEXT:
    # Line 2090
    jr	$ra
    # Line 2082
    move	$v0,$a0
.end __glle_ArrayElementEXT

# Function: __glle_ColorTableSGI
# Declared: Line 2093 (Source lines: 2094-2102)
# Address: 0x0db5a354 - 0x0db5a3c8 (Size: 116 bytes, Frame: 48)
.globl __glle_ColorTableSGI
.ent __glle_ColorTableSGI
__glle_ColorTableSGI:
    # Line 2099
    li	$a7,1
    # Line 2094
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    lui	$at,0xa
    # Line 2099
    addiu	$a6,$a0,24
    lw	$a5,16($a0)
    lw	$a4,12($a0)
    sd	$s8,8($sp)
    # Line 2094
    move	$s8,$a0
    # Line 2096
    lw	$a0,__glCurrentContext
    # Line 2094
    addiu	$at,$at,17220
    addu	$gp,$t9,$at
    # Line 2099
    lw	$t9,12724($a0)
    lw	$a3,8($s8)
    lw	$a2,4($s8)
    jalr	$t9
    lw	$a1,0($s8)
    ld	$gp,16($sp)
    # Line 2102
    lw	$v0,20($s8)
    ld	$ra,0($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$v0,$s8
    ld	$s8,8($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,24
.end __glle_ColorTableSGI

# Function: __gllc_ColorTableSGI
# Declared: Line 2106 (Source lines: 2109-2158)
# Address: 0x0db5a3c8 - 0x0db5a614 (Size: 588 bytes, Frame: 144)
.globl __gllc_ColorTableSGI
.ent __gllc_ColorTableSGI
__gllc_ColorTableSGI:
    # Line 2109
    move	$v0,$a2
    addiu	$sp,$sp,-144
    sd	$ra,80($sp)
    sd	$s0,72($sp)
    # Line 2115
    lw	$s0,__glCurrentContext
    sd	$a5,56($sp)
    sd	$a4,24($sp)
    sd	$a3,16($sp)
    sd	$a2,8($sp)
    sd	$a1,48($sp)
    sd	$a0,40($sp)
    sd	$gp,64($sp)
    lw	$t0,__glBeginMode
    # Line 2109
    lui	$at,0xa
    addiu	$at,$at,17104
    # Line 2115
    beqz	$t0,.L0db5a460
    # Line 2109
    addu	$gp,$t9,$at
    sd	$ra,80($sp)
    sd	$v0,8($sp)
    sd	$a3,16($sp)
    sd	$a4,24($sp)
    sd	$a0,40($sp)
    sd	$a1,48($sp)
    # Line 2115
    li	$v1,2
    beq	$t0,$v1,.L0db5a450
    sd	$a5,56($sp)
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,80($sp)
    ld	$gp,64($sp)
    ld	$s0,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db5a450:
    lw	$t9,11856($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,__glBeginMode
.L0db5a460:
    # Line 2117
    move	$a0,$s0
    ld	$a1,40($sp)
    ld	$a2,48($sp)
    # lw $t9, -27396($gp) # &__glCheckColorTableArgs
    ld	$a3,8($sp)
    ld	$a4,16($sp)
    jal	__glCheckColorTableArgs
    ld	$a5,24($sp)
    # Line 2119
    li	$at,0x8031
    # Line 2117
    beqz	$v0,.L0db5a4a8
    # Line 2119
    li	$a7,1281
    li	$a6,1280
    beq	$v0,$a6,.L0db5a5bc
    # Line 2121
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    # Line 2119
    beq	$v0,$a7,.L0db5a5d8
    # Line 2124
    nop	# was lw $t9, -29428($gp) # &__gllc_InvalidEnum
    # Line 2119
    beq	$v0,$at,.L0db5a584
    # Line 2127
    li	$a7,0x80d0
.L0db5a4a8:
    ld	$a0,8($sp)
    # Line 2140
    # lw $t9, -26724($gp) # &__glImageSize
    ld	$a3,24($sp)
    ld	$a2,16($sp)
    jal	__glImageSize
    li	$a1,1
    # Line 2143
    move	$a0,$s0
    # Line 2141
    li	$a2,-4
    addiu	$a1,$v0,3
    # Line 2143
    # lw $t9, -29492($gp) # &__glDlistAllocOp2
    # Line 2141
    and	$a1,$a1,$a2
    sd	$a1,0($sp)
    # Line 2143
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,24
    sd	$v0,32($sp)
    bnez	$v0,.L0db5a4fc
    ld	$ra,80($sp)
    ld	$gp,64($sp)
    # Line 2144
    ld	$s0,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db5a4fc:
    # Line 2156
    ld	$a5,56($sp)
    li	$a2,1
    move	$a0,$s0
    # Line 2145
    li	$a7,227
    # Line 2153
    ld	$ra,0($sp)
    # Line 2148
    ld	$t1,40($sp)
    # Line 2149
    ld	$t2,48($sp)
    ld	$t0,32($sp)
    # Line 2156
    ld	$t8,16($sp)
    ld	$t3,8($sp)
    addiu	$a6,$t0,40
    move	$a3,$t8
    move	$a1,$t3
    # Line 2151
    sw	$t8,28($t0)
    # Line 2156
    ld	$t9,24($sp)
    # Line 2150
    sw	$t3,24($t0)
    # Line 2149
    sw	$t2,20($t0)
    # Line 2156
    move	$a4,$t9
    # Line 2152
    sw	$t9,32($t0)
    # Line 2156
    # lw $t9, -26712($gp) # &__glFillImage
    # Line 2148
    sw	$t1,16($t0)
    # Line 2153
    sw	$ra,36($t0)
    # Line 2156
    jal	__glFillImage
    # Line 2145
    sh	$a7,12($t0)
    # Line 2157
    # lw $t9, -29484($gp) # &__glDlistAppendOp
    move	$a0,$s0
    ld	$a1,32($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_ColorTableSGI
    # Line 2158
    ld	$ra,80($sp)
    ld	$gp,64($sp)
    ld	$s0,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db5a584:
    # Line 2127
    ld	$at,40($sp)
    li	$v1,0x80bc
    beq	$at,$v1,.L0db5a5f4
    ld	$a6,40($sp)
    li	$v1,0x80d1
    beq	$a6,$a7,.L0db5a5f4
    ld	$at,40($sp)
    li	$a7,0x80d2
    beq	$at,$v1,.L0db5a5f4
    ld	$a6,40($sp)
    beq	$a6,$a7,.L0db5a5f8
    # Line 2132
    nop	# was lw $t9, -29420($gp) # &__gllc_TableTooLarge
    b	.L0db5a4a8
    sd	$zero,48($sp)
.L0db5a5bc:
    # Line 2121
    jal	__gllc_TableTooLarge
    move	$a0,$s0
    # Line 2122
    ld	$ra,80($sp)
    ld	$gp,64($sp)
    ld	$s0,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db5a5d8:
    # Line 2124
    jalr	$t9
    move	$a0,$s0
    # Line 2125
    ld	$ra,80($sp)
    ld	$gp,64($sp)
    ld	$s0,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db5a5f4:
    # Line 2132
    # lw $t9, -29420($gp) # &__gllc_TableTooLarge
.L0db5a5f8:
    jal	__gllc_TableTooLarge
    move	$a0,$s0
    # Line 2133
    ld	$ra,80($sp)
    ld	$gp,64($sp)
    ld	$s0,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __gllc_ColorTableSGI

# Function: __gllc_DrawArraysEXT
# Declared: Line 2160 (Source lines: 2163-2210)
# Address: 0x0db5a614 - 0x0db5a81c (Size: 520 bytes, Frame: 144)
.globl __gllc_DrawArraysEXT
.ent __gllc_DrawArraysEXT
__gllc_DrawArraysEXT:
    # Line 2165
    sltiu	$at,$a0,10
    # Line 2163
    addiu	$sp,$sp,-144
    sd	$s2,16($sp)
    move	$s2,$a2
    sd	$gp,24($sp)
    lui	$v0,0xa
    addiu	$v0,$v0,16516
    sd	$s1,8($sp)
    # Line 2164
    lw	$s1,__glCurrentContext
    # Line 2163
    addu	$gp,$t9,$v0
    # Line 2165
    beqz	$at,.L0db5a7d0
    lw	$a4,4948($s1)
    sd	$ra,32($sp)
    sd	$a1,48($sp)
    # Line 2175
    bltz	$s2,.L0db5a7f8
    sd	$a4,0($sp)
    # Line 2181
    # lw $t9, -17676($gp) # &glBegin
    jal	glBegin
    sd	$s0,40($sp)
    sd	$s8,96($sp)
    sd	$s3,88($sp)
    sd	$s6,80($sp)
    sd	$s4,72($sp)
    ld	$a0,48($sp)
    sd	$s5,64($sp)
    sd	$s7,56($sp)
    # Line 2182
    addu	$s2,$a0,$s2
    # Line 2183
    slt	$v1,$a0,$s2
    beqz	$v1,.L0db5a7ac
    move	$s0,$a0
    ld	$s3,0($sp)
    andi	$s8,$s3,0x20
    andi	$s7,$s3,0x10
    andi	$s4,$s3,0x8
    andi	$s6,$s3,0x4
    andi	$s5,$s3,0x2
    b	.L0db5a6b8
    andi	$s3,$s3,0x1
    addiu	$s0,$s0,1
.L0db5a6b0:
    beql	$s2,$s0,.L0db5a798
    ld	$s7,56($sp)
.L0db5a6b8:
    beqz	$s3,.L0db5a6dc
    nop
    # Line 2185
    lw	$a2,4824($s1)
    mult	$a2,$s0
    lw	$t9,4836($s1)
    lw	$a0,4816($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0db5a6dc:
    beqz	$s5,.L0db5a700
    nop
    # Line 2189
    lw	$a2,4852($s1)
    mult	$a2,$s0
    lw	$t9,4864($s1)
    lw	$a0,4840($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0db5a700:
    beqz	$s6,.L0db5a724
    nop
    # Line 2193
    lw	$a2,4904($s1)
    mult	$a2,$s0
    lw	$t9,4916($s1)
    lw	$a0,4892($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0db5a724:
    beqz	$s4,.L0db5a748
    nop
    # Line 2197
    lw	$a2,4876($s1)
    mult	$a2,$s0
    lw	$t9,4888($s1)
    lw	$a0,4868($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0db5a748:
    beqz	$s7,.L0db5a76c
    nop
    # Line 2201
    lw	$a2,4924($s1)
    mult	$a2,$s0
    lw	$t9,4936($s1)
    lw	$a0,4920($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0db5a76c:
    beqzl	$s8,.L0db5a6b0
    # Line 2183
    addiu	$s0,$s0,1
    # Line 2205
    lw	$a2,4800($s1)
    mult	$a2,$s0
    lw	$t9,4812($s1)
    lw	$a0,4788($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
    b	.L0db5a6b0
    # Line 2183
    addiu	$s0,$s0,1
.L0db5a798:
    ld	$s5,64($sp)
    ld	$s4,72($sp)
    ld	$s6,80($sp)
    ld	$s3,88($sp)
    ld	$s8,96($sp)
.L0db5a7ac:
    # Line 2209
    # lw $t9, -17532($gp) # &glEnd
    jal	glEnd
    ld	$s0,40($sp)
    ld	$gp,24($sp)
    # Line 2210
    ld	$ra,32($sp)
    ld	$s1,8($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db5a7d0:
    # Line 2174
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,32($sp)
    jal	__gllc_InvalidEnum
    move	$a0,$s1
    ld	$gp,24($sp)
    # Line 2175
    ld	$ra,32($sp)
    ld	$s1,8($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db5a7f8:
    # Line 2178
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s1
    ld	$gp,24($sp)
    # Line 2179
    ld	$ra,32($sp)
    ld	$s1,8($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __gllc_DrawArraysEXT

# Function: __gllc_DrawElements
# Declared: Line 2212 (Source lines: 2216-2249)
# Address: 0x0db5a81c - 0x0db5a9b8 (Size: 412 bytes, Frame: 208)
.globl __gllc_DrawElements
.ent __gllc_DrawElements
__gllc_DrawElements:
    # Line 2217
    lw	$a5,__glCurrentContext
    # Line 2216
    addiu	$sp,$sp,-80
    sd	$a3,8($sp)
    sd	$s0,16($sp)
    move	$s0,$a2
    sd	$a1,0($sp)
    sd	$gp,24($sp)
    lui	$at,0xa
    addiu	$at,$at,15996
    # Line 2217
    bltz	$a1,.L0db5a994
    # Line 2216
    addu	$gp,$t9,$at
    # Line 2223
    sltiu	$v0,$a0,10
    beqz	$v0,.L0db5a86c
    li	$a1,5121
    beq	$a1,$s0,.L0db5a890
    li	$v1,5123
    beq	$s0,$v1,.L0db5a890
    li	$a4,5125
    beq	$s0,$a4,.L0db5a890
    sd	$ra,32($sp)
.L0db5a86c:
    # Line 2226
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,32($sp)
    jal	__gllc_InvalidEnum
    move	$a0,$a5
    # Line 2227
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db5a890:
    # Line 2229
    # lw $t9, -17676($gp) # &glBegin
    sd	$ra,32($sp)
    jal	glBegin
    nop
    li	$at,5121
    # Line 2230
    beq	$at,$s0,.L0db5a8d8
    li	$v0,5123
    beq	$s0,$v0,.L0db5a914
    li	$v1,5125
    beq	$s0,$v1,.L0db5a954
.L0db5a8b8:
    # Line 2248
    nop	# was lw $t9, -17532($gp) # &glEnd
    jal	glEnd
    nop
    # Line 2249
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db5a8d8:
    ld	$a4,0($sp)
    ld	$at,8($sp)
    # Line 2233
    blez	$a4,.L0db5a8b8
    sd	$s1,40($sp)
    ld	$s1,0($sp)
    move	$s0,$at
    addu	$s1,$s1,$at
    # Line 2234
    # lw $t9, -16356($gp) # &glArrayElement
.L0db5a8f8:
    jal	glArrayElement
    lbu	$a0,0($s0)
    # Line 2233
    addiu	$s0,$s0,1
    bne	$s0,$s1,.L0db5a8f8
    # Line 2234
    nop	# was lw $t9, -16356($gp) # &glArrayElement
    b	.L0db5a8b8
    ld	$s1,40($sp)
.L0db5a914:
    ld	$v0,0($sp)
    # Line 2238
    blez	$v0,.L0db5a8b8
    sd	$s1,40($sp)
    ld	$at,8($sp)
    ld	$s1,0($sp)
    move	$s0,$at
    addu	$s1,$s1,$s1
    addu	$s1,$s1,$at
    # Line 2239
    # lw $t9, -16356($gp) # &glArrayElement
.L0db5a938:
    jal	glArrayElement
    lhu	$a0,0($s0)
    # Line 2238
    addiu	$s0,$s0,2
    bne	$s0,$s1,.L0db5a938
    # Line 2239
    nop	# was lw $t9, -16356($gp) # &glArrayElement
    b	.L0db5a8b8
    ld	$s1,40($sp)
.L0db5a954:
    ld	$at,0($sp)
    # Line 2243
    blez	$at,.L0db5a8b8
    ld	$at,8($sp)
    sd	$s1,40($sp)
    ld	$s1,0($sp)
    move	$s0,$at
    sll	$s1,$s1,0x2
    addu	$s1,$s1,$at
    # Line 2244
    # lw $t9, -16356($gp) # &glArrayElement
.L0db5a978:
    jal	glArrayElement
    lw	$a0,0($s0)
    # Line 2243
    addiu	$s0,$s0,4
    bne	$s0,$s1,.L0db5a978
    # Line 2244
    nop	# was lw $t9, -16356($gp) # &glArrayElement
    b	.L0db5a8b8
    ld	$s1,40($sp)
.L0db5a994:
    # Line 2220
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
    sd	$ra,32($sp)
    jal	__gllc_InvalidValue
    move	$a0,$a5
    # Line 2221
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __gllc_DrawElements

