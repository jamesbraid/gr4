# Source: ../MGRAS/mgras_pixel.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_pixel.c
# Total Functions: 56

.text

# Function: __glMgrGetColorMatrixState
# Declared: Line 68 (Source lines: 69-84)
# Address: 0x0da7f348 - 0x0da7f3ec (Size: 164 bytes, Frame: 48)
.globl __glMgrGetColorMatrixState
.ent __glMgrGetColorMatrixState
__glMgrGetColorMatrixState:
    # Line 72
    move	$a2,$zero
    move	$a1,$zero
    # Line 69
    addiu	$sp,$sp,-48
    sd	$s3,8($sp)
    move	$s3,$a0
    sd	$gp,16($sp)
    lui	$v0,0x18
    addiu	$v0,$v0,-3248
    addu	$gp,$t9,$v0
    # Line 72
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 69
    la	$at,SYMBOL_LOCATION
    sd	$ra,0($sp)
    # Line 72
    jal	__Mgr_ReturnMode
    lw	$a0,996($at)
    la	$v1,SYMBOL_LOCATION
    lw	$v1,1036($v1)
    ld	$ra,0($sp)
    lw	$a0,32100($s3)
    and	$v1,$v1,$v0
    beqz	$v1,.L0da7f3c8
    andi	$a3,$a0,0x100
    beqz	$a3,.L0da7f3b8
.L0da7f3a0:
    # Line 77
    ori	$a1,$a0,0x100
    sw	$a1,32100($s3)
.L0da7f3a8:
    ld	$gp,16($sp)
    # Line 84
    ld	$s3,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7f3b8:
    # Line 75
    lw	$at,32096($s3)
    ori	$at,$at,0x100
    b	.L0da7f3a0
    sw	$at,32096($s3)
.L0da7f3c8:
    # Line 77
    beqz	$a3,.L0da7f3e0
    # Line 82
    li	$v1,-257
    # Line 80
    lw	$v0,32096($s3)
    ori	$v0,$v0,0x100
    sw	$v0,32096($s3)
    # Line 82
    li	$v1,-257
.L0da7f3e0:
    and	$v1,$a0,$v1
    b	.L0da7f3a8
    sw	$v1,32100($s3)
.end __glMgrGetColorMatrixState

# Function: __glMgrResetBitmapState
# Declared: Line 87 (Source lines: 87-90)
# Address: 0x0da7f3ec - 0x0da7f438 (Size: 76 bytes, Frame: 16)
.globl __glMgrResetBitmapState
.ent __glMgrResetBitmapState
__glMgrResetBitmapState:
    # Line 87
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$at,0x18
    addiu	$at,$at,-3412
    addu	$gp,$t9,$at
    # Line 88
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    sd	$ra,0($sp)
    jal	__glMgrInitPixelStateCRAM
    move	$a0,$zero
    # Line 89
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    la	$a0,SYMBOL_LOCATION
    li	$a1,-1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,860($a0)
    # Line 90
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glMgrResetBitmapState

# Function: __glMgrInitFastPath
# Declared: Line 93 (Source lines: 94-134)
# Address: 0x0da7f438 - 0x0da7f5fc (Size: 452 bytes, Frame: 192)
.globl __glMgrInitFastPath
.ent __glMgrInitFastPath
__glMgrInitFastPath:
    # Line 95
    li	$at,1
    # Line 94
    addiu	$sp,$sp,-64
    sd	$s0,16($sp)
    move	$s0,$a1
    # Line 100
    li	$a1,-2
    sd	$a0,8($sp)
    move	$a0,$zero
    # Line 95
    sb	$at,2($sp)
    sd	$gp,32($sp)
    # Line 94
    lui	$v0,0x18
    addiu	$v0,$v0,-3488
    addu	$gp,$t9,$v0
    # Line 100
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    # Line 95
    sb	$at,1($sp)
    sd	$ra,24($sp)
    # Line 100
    jal	__glMgrInitPixelStateCRAM
    # Line 95
    sb	$at,0($sp)
    # Line 101
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    la	$a0,SYMBOL_LOCATION
    li	$a1,-1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,968($a0)
    # Line 104
    lw	$t3,96($s0)
    # Line 105
    lw	$t2,1432($s0)
    # Line 104
    sw	$t3,88($s0)
    # Line 105
    lw	$t1,8($t2)
    sw	$t1,0($t2)
    # Line 106
    lw	$t0,1432($s0)
    lw	$a7,12($t0)
    sw	$a7,4($t0)
    # Line 107
    lw	$a6,1432($s0)
    li	$a4,4
    sw	$a4,80($a6)
    # Line 108
    lw	$a5,1432($s0)
    # Line 114
    move	$a1,$zero
    # Line 108
    sw	$a4,84($a5)
    # Line 109
    lwc1	$f0,_lit_40800000
    lw	$a3,1432($s0)
    # Line 114
    move	$a0,$zero
    # Line 112
    lui	$a2,0x1
    # Line 109
    swc1	$f0,88($a3)
    # Line 112
    ori	$a2,$a2,0xa000
    # Line 110
    lw	$a4,1432($s0)
    # Line 114
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    # Line 110
    li	$a3,6408
    sw	$a3,68($a4)
    # Line 114
    jal	__glMgrInitPixelPath
    # Line 112
    sw	$a2,220($s0)
    # Line 115
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    la	$a1,SYMBOL_LOCATION
    li	$a0,230
    jal	__glMgrInitPixelPath
    lw	$a1,428($a1)
    # Line 116
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    move	$a1,$zero
    jal	__glMgrInitPixelPath
    li	$a0,234
    # Line 118
    move	$a0,$s0
    move	$a1,$zero
    # lw $t9, -30148($gp) # &__glMgrInitMaskState
    la	$a3,SYMBOL_LOCATION
    addiu	$a2,$s0,120
    jal	__glMgrInitMaskState
    lw	$a3,428($a3)
    lw	$at,1432($s0)
    lw	$at,72($at)
    li	$v0,6656
    beq	$at,$v0,.L0da7f5a4
    # Line 121
    ld	$a2,8($sp)
    # Line 126
    sb	$zero,2($sp)
.L0da7f550:
    # Line 129
    move	$a0,$s0
    # lw $t9, -30156($gp) # &__glMgrInitCleanupState
    move	$a1,$zero
    move	$a3,$zero
    jal	__glMgrInitCleanupState
    addiu	$a2,$sp,0
    # Line 132
    move	$a3,$zero
    move	$a2,$zero
    move	$a1,$zero
    move	$a0,$s0
    # Line 131
    lw	$v0,248($s0)
    # Line 132
    # lw $t9, -30152($gp) # &__glMgrInitPackingState
    # Line 131
    li	$v1,-3
    and	$v0,$v0,$v1
    # Line 132
    jal	__glMgrInitPackingState
    # Line 131
    sw	$v0,248($s0)
    # Line 134
    ld	$ra,24($sp)
    ld	$gp,32($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da7f5a4:
    # Line 121
    lui	$at,0x1
    addu	$a2,$a2,$at
    lw	$v1,-26652($a2)
    ori	$v1,$v1,0xf
    sw	$v1,-26652($a2)
    # Line 122
    lbu	$at,104($s0)
    li	$v0,-14337
    and	$v1,$v1,$v0
    andi	$at,$at,0x7
    sll	$at,$at,0xb
    or	$v1,$v1,$at
    sw	$v1,-26652($a2)
    # Line 123
    lw	$at,1432($s0)
    lw	$v0,52($at)
    li	$a2,8
    addiu	$v0,$v0,7
    sra	$v0,$v0,0x3
    andi	$v0,$v0,0x7
    subu	$a2,$a2,$v0
    andi	$a2,$a2,0x7
    b	.L0da7f550
    sb	$a2,65($at)
.end __glMgrInitFastPath

# Function: __glMgrNewInitFastPath
# Declared: Line 137 (Source lines: 138-219)
# Address: 0x0da7f5fc - 0x0da7f89c (Size: 672 bytes, Frame: 48)
.globl __glMgrNewInitFastPath
.ent __glMgrNewInitFastPath
__glMgrNewInitFastPath:
    # Line 149
    lwc1	$f0,724($a0)
    # Line 138
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$at,0x18
    addiu	$at,$at,-3940
    addu	$gp,$t9,$at
    # Line 149
    dmtc1	$zero,$f1
    cvt.d.s	$f0,$f0
    # Line 138
    move	$a4,$a1
    # Line 149
    c.lt.d	$f0,$f1
    # Line 151
    li	$a7,1
    # Line 149
    lui	$a5,0x4200
    bc1f	.L0da7f638
    move	$a6,$a5
    # Line 151
    li	$a7,0xffff
.L0da7f638:
    # Line 154
    lw	$a2,96($a4)
    # Line 155
    lw	$v1,1432($a4)
    # Line 154
    sw	$a2,88($a4)
    # Line 155
    lw	$v0,8($v1)
    sw	$v0,0($v1)
    # Line 156
    lw	$at,1432($a4)
    lw	$a3,12($at)
    sw	$a3,4($at)
    # Line 157
    lw	$a2,1432($a4)
    li	$v0,4
    sw	$v0,80($a2)
    # Line 158
    lw	$v1,1432($a4)
    sw	$v0,84($v1)
    # Line 159
    lwc1	$f1,_lit_40800000
    lw	$at,1432($a4)
    swc1	$f1,88($at)
    # Line 160
    lw	$a3,1432($a4)
    li	$a2,6408
    sw	$a2,68($a3)
    lw	$a3,1432($a4)
    lw	$v0,72($a3)
    li	$v1,6656
    beql	$v0,$v1,.L0da7f810
    lw	$a2,24($a3)
    # Line 168
    lwc1	$f2,88($a3)
    trunc.w.s	$f2,$f2
    lw	$t0,0($a3)
    mfc1	$a1,$f2
    nop
    mult	$t0,$a1
    mflo	$at
    andi	$at,$at,0x7
    beqz	$at,.L0da7f88c
    nop
.L0da7f6c0:
    # Line 171
    lw	$t1,4($a3)
    mult	$t1,$a1
    mflo	$v0
    andi	$v0,$v0,0x7
    bnez	$v0,.L0da7f6e4
    # Line 187
    li	$t2,24
    sd	$ra,8($sp)
    # Line 174
    move	$a5,$zero
    # Line 187
    li	$t2,24
.L0da7f6e4:
    div	$zero,$t0,$t2
    mfhi	$v0
    nop
    mflo	$a2
    nop
    nop
    # Line 205
    div	$zero,$t1,$t2
    # Line 174
    la	$a0,SYMBOL_LOCATION
    # Line 217
    li	$a1,-2
    lw	$a0,936($a0)
    sd	$ra,8($sp)
    # Line 204
    lw	$at,216($a4)
    # Line 202
    lw	$v1,208($a4)
    sd	$s0,16($sp)
    # Line 184
    lw	$s0,204($a4)
    # Line 212
    lw	$t3,36($a3)
    # Line 179
    lui	$t8,0x8000
    # Line 187
    teq	$t2,$zero,0x7
    # Line 179
    ori	$t8,$t8,0x60
    # Line 205
    teq	$t2,$zero,0x7
    # Line 177
    lui	$t0,0x7
    ori	$t0,$t0,0x4080
    # Line 185
    lui	$t1,0x1
    ori	$t1,$t1,0xa000
    # Line 194
    lw	$t2,32($a3)
    # Line 177
    li	$a3,0x8800
    sw	$a3,0($t0)
    # Line 186
    lw	$a3,212($a4)
    # Line 179
    sw	$t8,0($t0)
    # Line 184
    sw	$s0,0($t0)
    # Line 185
    sw	$t1,0($t0)
    # Line 186
    sw	$a3,0($t0)
    # Line 217
    la	$a3,__glMgrInitPixelStateCRAM
    # Line 196
    lui	$t1,0x3
    ori	$t1,$t1,0x4000
    # Line 187
    sw	$a2,0($t0)
    # Line 188
    sw	$v0,0($t0)
    # Line 203
    lui	$v0,0x1
    # Line 189
    lw	$t8,120($a4)
    # Line 203
    ori	$v0,$v0,0xa000
    # Line 193
    lui	$s0,0x4201
    # Line 189
    sw	$t8,0($t0)
    # Line 192
    sw	$a6,0($t0)
    # Line 193
    sw	$s0,0($t0)
    # Line 194
    sw	$t2,0($t0)
    # Line 195
    li	$t2,1
    sw	$t2,0($t0)
    # Line 196
    sw	$t1,0($t0)
    # Line 197
    sw	$a7,0($t0)
    # Line 202
    sw	$v1,0($t0)
    # Line 205
    mfhi	$t9
    # Line 203
    sw	$v0,0($t0)
    # Line 204
    sw	$at,0($t0)
    # Line 205
    mflo	$ra
    sw	$ra,0($t0)
    # Line 206
    sw	$t9,0($t0)
    move	$t9,$a3
    # Line 207
    sw	$t8,0($t0)
    # Line 210
    sw	$a5,0($t0)
    # Line 211
    sw	$s0,0($t0)
    ld	$s0,16($sp)
    # Line 212
    sw	$t3,0($t0)
    # Line 213
    sw	$t2,0($t0)
    # Line 214
    sw	$t1,0($t0)
    # Line 217
    jalr	$a3
    # Line 215
    sw	$a7,0($t0)
    # Line 218
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    la	$a0,SYMBOL_LOCATION
    li	$a1,-1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,1032($a0)
    # Line 219
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7f810:
    # Line 168
    li	$a3,8
    # Line 166
    lui	$v1,0x1
    # Line 160
    addiu	$a2,$a2,7
    sra	$a2,$a2,0x3
    andi	$a2,$a2,0x7
    beqz	$a2,.L0da7f894
    # Line 166
    addu	$v1,$a0,$v1
.L0da7f82c:
    lw	$v0,-26652($v1)
    ori	$v0,$v0,0xf
    sw	$v0,-26652($v1)
    # Line 167
    lbu	$a1,104($a4)
    li	$a2,-14337
    and	$v0,$v0,$a2
    andi	$a1,$a1,0x7
    sll	$a1,$a1,0xb
    or	$v0,$v0,$a1
    sw	$v0,-26652($v1)
    # Line 168
    lw	$t0,1432($a4)
    lw	$at,52($t0)
    addiu	$at,$at,7
    sra	$at,$at,0x3
    andi	$at,$at,0x7
    subu	$a3,$a3,$at
    andi	$a3,$a3,0x7
    sb	$a3,65($t0)
    lw	$a3,1432($a4)
    lwc1	$f3,88($a3)
    trunc.w.s	$f3,$f3
    mfc1	$a1,$f3
    b	.L0da7f6c0
    lw	$t0,0($a3)
.L0da7f88c:
    b	.L0da7f6c0
    # Line 171
    move	$a6,$zero
.L0da7f894:
    b	.L0da7f82c
    # Line 165
    move	$a6,$zero
.end __glMgrNewInitFastPath

# Function: __glMgrInitRGBTransfer
# Declared: Line 222 (Source lines: 223-303)
# Address: 0x0da7f89c - 0x0da7fb0c (Size: 624 bytes, Frame: 224)
.globl __glMgrInitRGBTransfer
.ent __glMgrInitRGBTransfer
__glMgrInitRGBTransfer:
    # Line 223
    addiu	$sp,$sp,-96
    sd	$a1,48($sp)
    sd	$s0,56($sp)
    move	$s0,$a0
    # Line 228
    lui	$a3,0x80
    sd	$gp,64($sp)
    # Line 223
    lui	$v0,0x18
    # Line 226
    li	$v1,-1
    sw	$zero,4($sp)
    sw	$v1,0($sp)
    # Line 223
    addiu	$v0,$v0,-4612
    # Line 228
    lw	$at,424($a0)
    # Line 223
    addu	$gp,$t9,$v0
    # Line 228
    lw	$v0,__glCurrentContext
    and	$at,$at,$a3
    beqz	$at,.L0da7f938
    sd	$v0,40($sp)
    # Line 237
    li	$a0,236
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    la	$a1,SYMBOL_LOCATION
    sd	$ra,72($sp)
    jal	__glMgrInitPixelPath
    lw	$a1,844($a1)
    # Line 239
    move	$a0,$s0
    move	$a1,$zero
    # lw $t9, -30248($gp) # &__glMgrInitUnpackState
    la	$a3,SYMBOL_LOCATION
    move	$a2,$zero
    jal	__glMgrInitUnpackState
    lw	$a3,844($a3)
    # Line 241
    lw	$a0,1432($s0)
    lw	$at,40($a0)
    sw	$at,204($s0)
    # Line 242
    lw	$ra,44($a0)
    lui	$a3,0x80
    # Line 243
    sw	$zero,220($s0)
    # Line 242
    sw	$ra,208($s0)
    # Line 243
    b	.L0da7f93c
    ld	$ra,72($sp)
.L0da7f938:
    lw	$a0,1432($s0)
.L0da7f93c:
    lw	$a1,72($a0)
    li	$v0,5125
    beq	$a1,$v0,.L0da7fa58
.L0da7f948:
    # Line 261
    li	$v1,5126
    beq	$a1,$v1,.L0da7f95c
    lw	$a0,424($s0)
    and	$a2,$a3,$a0
    beqz	$a2,.L0da7fab4
.L0da7f95c:
    # Line 279
    li	$v0,3
    andi	$at,$a0,0x3
    bne	$at,$v0,.L0da7f984
    dmtc1	$zero,$f1
    lwc1	$f0,112($s0)
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f1
    nop
    bc1tl	.L0da7fa4c
    ld	$gp,64($sp)
.L0da7f984:
    # Line 285
    li	$a0,232
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    la	$a1,SYMBOL_LOCATION
    sd	$ra,72($sp)
    jal	__glMgrInitPixelPath
    lw	$a1,436($a1)
    ld	$a2,40($sp)
    # Line 287
    lwc1	$f12,616($a2)
    swc1	$f12,8($sp)
    # Line 288
    lwc1	$f9,620($a2)
    swc1	$f9,12($sp)
    # Line 289
    lwc1	$f6,624($a2)
    swc1	$f6,16($sp)
    # Line 290
    lwc1	$f3,628($a2)
    swc1	$f3,20($sp)
    # Line 292
    lwc1	$f11,112($s0)
    mul.s	$f11,$f11,$f12
    lwc1	$f10,636($a2)
    add.s	$f10,$f10,$f11
    swc1	$f10,24($sp)
    # Line 293
    lwc1	$f8,112($s0)
    mul.s	$f8,$f8,$f9
    lwc1	$f7,640($a2)
    add.s	$f7,$f7,$f8
    swc1	$f7,28($sp)
    # Line 294
    lwc1	$f5,112($s0)
    mul.s	$f5,$f5,$f6
    lwc1	$f4,644($a2)
    add.s	$f4,$f4,$f5
    swc1	$f4,32($sp)
    # Line 295
    lwc1	$f2,112($s0)
    mul.s	$f2,$f2,$f3
    # Line 297
    ld	$a1,48($sp)
    move	$a0,$s0
    # Line 295
    lwc1	$f1,648($a2)
    la	$a3,SYMBOL_LOCATION
    # Line 297
    # lw $t9, -30224($gp) # &__glMgrInitScaleBiasState
    # Line 295
    add.s	$f1,$f1,$f2
    # Line 297
    lw	$a3,436($a3)
    addiu	$a2,$sp,8
    jal	__glMgrInitScaleBiasState
    # Line 295
    swc1	$f1,36($sp)
    # Line 299
    lw	$ra,1432($s0)
    lw	$at,40($ra)
    sw	$at,204($s0)
    # Line 300
    lw	$ra,44($ra)
    # Line 301
    sw	$zero,220($s0)
    # Line 300
    sw	$ra,208($s0)
    ld	$ra,72($sp)
    ld	$gp,64($sp)
.L0da7fa4c:
    # Line 303
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da7fa58:
    # Line 255
    li	$a0,233
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    la	$a1,SYMBOL_LOCATION
    sd	$ra,72($sp)
    jal	__glMgrInitPixelPath
    lw	$a1,432($a1)
    # Line 257
    move	$a0,$s0
    move	$a1,$zero
    # lw $t9, -30244($gp) # &__glMgrInitShiftAdd
    la	$a3,SYMBOL_LOCATION
    addiu	$a2,$sp,0
    jal	__glMgrInitShiftAdd
    lw	$a3,432($a3)
    # Line 259
    lw	$a1,1432($s0)
    lw	$ra,40($a1)
    sw	$ra,204($s0)
    lui	$a3,0x80
    # Line 260
    lw	$a2,44($a1)
    ld	$ra,72($sp)
    # Line 261
    sw	$zero,220($s0)
    # Line 260
    sw	$a2,208($s0)
    b	.L0da7f948
    # Line 261
    lw	$a1,72($a1)
.L0da7fab4:
    # Line 269
    li	$a0,229
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    la	$a1,SYMBOL_LOCATION
    sd	$ra,72($sp)
    jal	__glMgrInitPixelPath
    lw	$a1,736($a1)
    # Line 271
    move	$a0,$s0
    move	$a1,$zero
    # lw $t9, -30232($gp) # &__glMgrInitI2FState
    la	$a3,SYMBOL_LOCATION
    addiu	$a2,$s0,108
    jal	__glMgrInitI2FState
    lw	$a3,736($a3)
    # Line 273
    lw	$ra,1432($s0)
    lw	$at,40($ra)
    sw	$at,204($s0)
    # Line 274
    lw	$ra,44($ra)
    # Line 275
    lw	$a0,424($s0)
    sw	$zero,220($s0)
    # Line 274
    sw	$ra,208($s0)
    b	.L0da7f95c
    ld	$ra,72($sp)
.end __glMgrInitRGBTransfer

# Function: __glMgrInitCITransfer
# Declared: Line 306 (Source lines: 307-544)
# Address: 0x0da7fb0c - 0x0da80174 (Size: 1640 bytes, Frame: 224)
.globl __glMgrInitCITransfer
.ent __glMgrInitCITransfer
__glMgrInitCITransfer:
    # Line 321
    li	$a1,-2
    # Line 307
    addiu	$sp,$sp,-96
    sd	$s1,72($sp)
    sd	$s0,56($sp)
    move	$s0,$a0
    # Line 321
    move	$a0,$zero
    sd	$s2,48($sp)
    sd	$gp,64($sp)
    # Line 307
    lui	$at,0x18
    addiu	$at,$at,-5236
    addu	$gp,$t9,$at
    # Line 308
    lwc1	$f0,_lit_3f800000
    # Line 321
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sd	$ra,40($sp)
    # Line 308
    swc1	$f0,0($sp)
    # Line 321
    jal	__glMgrInitPixelStateCRAM
    # Line 315
    lw	$s2,__glCurrentContext
    # Line 322
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    la	$s1,SYMBOL_LOCATION
    li	$a1,-1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,968($s1)
    li	$a0,6401
    lw	$a2,424($s0)
    lw	$a4,1432($s0)
    li	$v1,12
    andi	$v0,$a2,0xc
    beq	$v0,$v1,.L0da7fd14
    ld	$ra,40($sp)
    lw	$a2,72($a4)
    li	$a1,6656
    beq	$a2,$a1,.L0da7fe94
    # Line 342
    li	$at,5126
    beq	$a2,$at,.L0da7fe50
.L0da7fb94:
    # Line 360
    nop	# was lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,432($s1)
    jal	__glMgrInitPixelPath
    li	$a0,233
    # Line 364
    lw	$a3,432($s1)
    # Line 362
    lw	$v1,728($s2)
    # Line 364
    addiu	$a2,$sp,16
    move	$a1,$zero
    # Line 362
    sw	$v1,16($sp)
    # Line 364
    # lw $t9, -30244($gp) # &__glMgrInitShiftAdd
    # Line 363
    lw	$v0,732($s2)
    # Line 364
    move	$a0,$s0
    jal	__glMgrInitShiftAdd
    # Line 363
    sw	$v0,20($sp)
    # Line 366
    lw	$a3,1432($s0)
    lw	$at,40($a3)
    sw	$at,204($s0)
    # Line 367
    lw	$ra,44($a3)
    # Line 368
    sw	$zero,220($s0)
    # Line 367
    sw	$ra,208($s0)
    # Line 368
    lw	$a3,68($a3)
    # Line 375
    lui	$v1,0x2
    li	$a0,6401
    # Line 368
    beq	$a0,$a3,.L0da7fcf8
    ld	$ra,40($sp)
    # Line 375
    lui	$v0,0x2
    lw	$a2,424($s0)
    ori	$v0,$v0,0x10
    and	$v0,$a2,$v0
    beqz	$v0,.L0da7fcf0
    nop
.L0da7fc10:
    beq	$a0,$a3,.L0da7fe34
    and	$v1,$a2,$v1
    beqzl	$v1,.L0da7fe44
    # Line 385
    lw	$a0,952($s2)
    # Line 375
    lw	$a2,976($s2)
    lw	$a3,988($s2)
    slt	$a1,$a3,$a2
    beqz	$a1,.L0da7fc38
    # Line 380
    move	$a0,$a3
    move	$a0,$a2
.L0da7fc38:
    sw	$a0,24($sp)
    lw	$a3,1000($s2)
    sltu	$at,$a0,$a3
    beqz	$at,.L0da7fc50
    # Line 382
    move	$a2,$a0
    move	$a2,$a3
.L0da7fc50:
    sw	$a2,24($sp)
    lw	$a0,1012($s2)
    # Line 383
    move	$a3,$a2
    # Line 382
    sltu	$v0,$a2,$a0
    beqz	$v0,.L0da7fc70
    ld	$s2,48($sp)
    # Line 383
    move	$a3,$a0
    ld	$s2,48($sp)
.L0da7fc70:
    move	$a0,$a3
    sw	$a3,24($sp)
.L0da7fc78:
    # Line 388
    beqz	$a0,.L0da7fc84
    # Line 390
    addiu	$v1,$a0,-1
    sw	$v1,24($sp)
.L0da7fc84:
    # Line 394
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,864($s1)
    jal	__glMgrInitPixelPath
    li	$a0,230
    # Line 396
    move	$a0,$s0
    # lw $t9, -30148($gp) # &__glMgrInitMaskState
    move	$a1,$zero
    lw	$a3,864($s1)
    jal	__glMgrInitMaskState
    addiu	$a2,$sp,24
    # Line 400
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,736($s1)
    jal	__glMgrInitPixelPath
    li	$a0,229
    # Line 402
    move	$a0,$s0
    # lw $t9, -30232($gp) # &__glMgrInitI2FState
    move	$a1,$zero
    lw	$a3,736($s1)
    jal	__glMgrInitI2FState
    addiu	$a2,$sp,0
    ld	$ra,40($sp)
.L0da7fcd8:
    ld	$gp,64($sp)
.L0da7fcdc:
    # Line 544
    ld	$s0,56($sp)
    ld	$s1,72($sp)
    ld	$s2,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da7fcf0:
    # Line 375
    bnel	$a0,$a3,.L0da7fcdc
    ld	$gp,64($sp)
.L0da7fcf8:
    lw	$a2,424($s0)
    lui	$a1,0x20
    and	$a1,$a2,$a1
    beqzl	$a1,.L0da7fcdc
    ld	$gp,64($sp)
    b	.L0da7fc10
    nop
.L0da7fd14:
    # Line 402
    lw	$a3,68($a4)
    beq	$a0,$a3,.L0da7fee8
    # Line 412
    lui	$at,0x2
    ori	$at,$at,0x10
    and	$at,$a2,$at
    beqz	$at,.L0da7ff00
    nop
.L0da7fd30:
    beq	$a0,$a3,.L0da80000
    lui	$v0,0x2
    and	$v0,$a2,$v0
    beqzl	$v0,.L0da8000c
    # Line 424
    lw	$a0,952($s2)
    # Line 412
    lw	$a3,988($s2)
    lw	$a2,976($s2)
    slt	$v1,$a3,$a2
    beqz	$v1,.L0da7fd5c
    # Line 419
    move	$a0,$a3
    move	$a0,$a2
.L0da7fd5c:
    sw	$a0,24($sp)
    lw	$a3,1000($s2)
    sltu	$a1,$a0,$a3
    beqz	$a1,.L0da7fd74
    # Line 421
    move	$a2,$a0
    move	$a2,$a3
.L0da7fd74:
    sw	$a2,24($sp)
    lw	$a0,1012($s2)
    sltu	$at,$a2,$a0
    beqz	$at,.L0da7fd8c
    # Line 422
    move	$a3,$a2
    move	$a3,$a0
.L0da7fd8c:
    move	$a0,$a3
    sw	$a3,24($sp)
.L0da7fd94:
    # Line 427
    beqz	$a0,.L0da7fda0
    # Line 429
    addiu	$v0,$a0,-1
    sw	$v0,24($sp)
.L0da7fda0:
    lw	$a2,1432($s0)
    lw	$a2,72($a2)
    li	$v1,6656
    beq	$a2,$v1,.L0da800c4
    # Line 444
    li	$at,5125
    beq	$a2,$at,.L0da80014
    # Line 467
    li	$v0,5126
    beq	$a2,$v0,.L0da7ff68
    ld	$s2,48($sp)
    # Line 473
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,864($s1)
    jal	__glMgrInitPixelPath
    li	$a0,230
    # Line 475
    move	$a0,$s0
    # lw $t9, -30148($gp) # &__glMgrInitMaskState
    move	$a1,$zero
    lw	$a3,864($s1)
    jal	__glMgrInitMaskState
    addiu	$a2,$sp,24
    # Line 477
    lw	$v1,1432($s0)
    lw	$a0,40($v1)
    sw	$a0,204($s0)
    # Line 478
    lw	$v1,44($v1)
    # Line 483
    li	$a0,229
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    # Line 478
    sw	$v1,208($s0)
    # Line 479
    sw	$zero,220($s0)
    # Line 483
    jal	__glMgrInitPixelPath
    lw	$a1,736($s1)
    # Line 485
    move	$a0,$s0
    # lw $t9, -30232($gp) # &__glMgrInitI2FState
    move	$a1,$zero
    lw	$a3,736($s1)
    jal	__glMgrInitI2FState
    addiu	$a2,$sp,0
    b	.L0da7fcd8
    ld	$ra,40($sp)
.L0da7fe34:
    # Line 388
    lw	$a0,964($s2)
    ld	$s2,48($sp)
    b	.L0da7fc78
    sw	$a0,24($sp)
.L0da7fe44:
    ld	$s2,48($sp)
    b	.L0da7fc78
    # Line 385
    sw	$a0,24($sp)
.L0da7fe50:
    # Line 348
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,820($s1)
    jal	__glMgrInitPixelPath
    li	$a0,227
    # Line 350
    move	$a0,$s0
    # lw $t9, -30140($gp) # &__glMgrInitF2IState
    move	$a1,$zero
    lw	$a3,820($s1)
    jal	__glMgrInitF2IState
    addiu	$a2,$sp,0
    # Line 352
    lw	$a1,1432($s0)
    lw	$at,40($a1)
    sw	$at,204($s0)
    # Line 353
    lw	$a1,44($a1)
    # Line 354
    sw	$zero,220($s0)
    b	.L0da7fb94
    # Line 353
    sw	$a1,208($s0)
.L0da7fe94:
    # Line 334
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,816($s1)
    jal	__glMgrInitPixelPath
    li	$a0,221
    # Line 338
    lw	$a3,816($s1)
    # Line 336
    lbu	$v1,1109($s2)
    # Line 338
    addiu	$a2,$sp,8
    move	$a1,$zero
    # Line 336
    sw	$v1,8($sp)
    # Line 338
    # lw $t9, -30144($gp) # &__glMgrInitB2IState
    # Line 337
    lbu	$v0,104($s0)
    # Line 338
    move	$a0,$s0
    jal	__glMgrInitB2IState
    # Line 337
    sw	$v0,12($sp)
    # Line 340
    lw	$a1,1432($s0)
    lw	$at,40($a1)
    sw	$at,204($s0)
    # Line 341
    lw	$a1,44($a1)
    # Line 342
    sw	$zero,220($s0)
    b	.L0da7fb94
    # Line 341
    sw	$a1,208($s0)
.L0da7fee8:
    # Line 412
    lui	$v0,0x20
.L0da7feec:
    and	$v0,$a2,$v0
    beqzl	$v0,.L0da7ff0c
    # Line 432
    lw	$a2,72($a4)
    b	.L0da7fd30
    nop
.L0da7ff00:
    # Line 412
    beq	$a0,$a3,.L0da7feec
    lui	$v0,0x20
    # Line 432
    lw	$a2,72($a4)
.L0da7ff0c:
    li	$v1,6656
    beq	$a2,$v1,.L0da8011c
    # Line 530
    li	$a1,5126
    bne	$a2,$a1,.L0da7fcd8
    ld	$s2,48($sp)
    # Line 535
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,820($s1)
    jal	__glMgrInitPixelPath
    li	$a0,227
    # Line 536
    move	$a0,$s0
    # lw $t9, -30140($gp) # &__glMgrInitF2IState
    move	$a1,$zero
    lw	$a3,820($s1)
    jal	__glMgrInitF2IState
    addiu	$a2,$sp,0
    # Line 538
    lw	$ra,1432($s0)
    lw	$at,40($ra)
    sw	$at,204($s0)
    # Line 539
    lw	$ra,44($ra)
    # Line 540
    sw	$zero,220($s0)
    # Line 539
    sw	$ra,208($s0)
    b	.L0da7fcd8
    ld	$ra,40($sp)
.L0da7ff68:
    # Line 491
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,820($s1)
    jal	__glMgrInitPixelPath
    li	$a0,227
    # Line 493
    move	$a0,$s0
    # lw $t9, -30140($gp) # &__glMgrInitF2IState
    move	$a1,$zero
    lw	$a3,820($s1)
    jal	__glMgrInitF2IState
    addiu	$a2,$sp,0
    # Line 495
    lw	$v0,1432($s0)
    lw	$v1,40($v0)
    sw	$v1,204($s0)
    # Line 496
    lw	$v0,44($v0)
    # Line 501
    li	$a0,230
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    # Line 496
    sw	$v0,208($s0)
    # Line 497
    sw	$zero,220($s0)
    # Line 501
    jal	__glMgrInitPixelPath
    lw	$a1,864($s1)
    # Line 503
    move	$a0,$s0
    # lw $t9, -30148($gp) # &__glMgrInitMaskState
    move	$a1,$zero
    lw	$a3,864($s1)
    jal	__glMgrInitMaskState
    addiu	$a2,$sp,24
    # Line 507
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,736($s1)
    jal	__glMgrInitPixelPath
    li	$a0,229
    # Line 509
    move	$a0,$s0
    # lw $t9, -30232($gp) # &__glMgrInitI2FState
    move	$a1,$zero
    lw	$a3,736($s1)
    jal	__glMgrInitI2FState
    addiu	$a2,$sp,0
    b	.L0da7fcd8
    ld	$ra,40($sp)
.L0da80000:
    # Line 427
    lw	$a0,964($s2)
    b	.L0da7fd94
    sw	$a0,24($sp)
.L0da8000c:
    b	.L0da7fd94
    # Line 424
    sw	$a0,24($sp)
.L0da80014:
    # Line 453
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,432($s1)
    jal	__glMgrInitPixelPath
    li	$a0,233
    # Line 454
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,864($s1)
    jal	__glMgrInitPixelPath
    li	$a0,230
    # Line 455
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,736($s1)
    jal	__glMgrInitPixelPath
    li	$a0,229
    # Line 459
    lw	$a3,432($s1)
    # Line 457
    lw	$a5,728($s2)
    # Line 459
    addiu	$a2,$sp,16
    move	$a1,$zero
    # Line 457
    addiu	$a5,$a5,-1
    sw	$a5,16($sp)
    # Line 459
    # lw $t9, -30244($gp) # &__glMgrInitShiftAdd
    # Line 458
    lw	$a4,732($s2)
    # Line 459
    move	$a0,$s0
    jal	__glMgrInitShiftAdd
    # Line 458
    sw	$a4,20($sp)
    # Line 461
    lw	$a6,1432($s0)
    # Line 465
    addiu	$a2,$sp,24
    # Line 461
    lw	$a7,40($a6)
    # Line 465
    move	$a1,$zero
    move	$a0,$s0
    # Line 461
    sw	$a7,204($s0)
    ld	$s2,48($sp)
    # Line 462
    lw	$a6,44($a6)
    # Line 465
    # lw $t9, -30148($gp) # &__glMgrInitMaskState
    # Line 463
    sw	$zero,220($s0)
    # Line 462
    sw	$a6,208($s0)
    # Line 465
    jal	__glMgrInitMaskState
    lw	$a3,864($s1)
    # Line 467
    move	$a0,$s0
    # lw $t9, -30232($gp) # &__glMgrInitI2FState
    move	$a1,$zero
    lw	$a3,736($s1)
    jal	__glMgrInitI2FState
    addiu	$a2,$sp,0
    b	.L0da7fcd8
    ld	$ra,40($sp)
.L0da800c4:
    # Line 436
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,796($s1)
    jal	__glMgrInitPixelPath
    li	$a0,220
    # Line 440
    lw	$a3,796($s1)
    # Line 438
    lbu	$t1,1109($s2)
    # Line 440
    addiu	$a2,$sp,32
    move	$a1,$zero
    # Line 438
    sw	$t1,32($sp)
    # Line 440
    # lw $t9, -30136($gp) # &__glMgrInitB2FState
    # Line 439
    lbu	$t0,104($s0)
    # Line 440
    move	$a0,$s0
    jal	__glMgrInitB2FState
    # Line 439
    sw	$t0,36($sp)
    # Line 442
    lw	$ra,1432($s0)
    lw	$at,40($ra)
    sw	$at,204($s0)
    # Line 443
    lw	$ra,44($ra)
    # Line 444
    sw	$zero,220($s0)
    # Line 443
    sw	$ra,208($s0)
    # Line 444
    b	.L0da7fcd8
    ld	$ra,40($sp)
.L0da8011c:
    # Line 522
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,816($s1)
    jal	__glMgrInitPixelPath
    li	$a0,221
    # Line 526
    lw	$a3,816($s1)
    # Line 524
    lbu	$v1,1109($s2)
    # Line 526
    addiu	$a2,$sp,8
    move	$a1,$zero
    # Line 524
    sw	$v1,8($sp)
    # Line 526
    # lw $t9, -30144($gp) # &__glMgrInitB2IState
    # Line 525
    lbu	$v0,104($s0)
    # Line 526
    move	$a0,$s0
    jal	__glMgrInitB2IState
    # Line 525
    sw	$v0,12($sp)
    # Line 528
    lw	$a1,1432($s0)
    lw	$ra,40($a1)
    sw	$ra,204($s0)
    ld	$ra,40($sp)
    # Line 529
    lw	$a1,44($a1)
    # Line 530
    sw	$zero,220($s0)
    b	.L0da7fcd8
    # Line 529
    sw	$a1,208($s0)
.end __glMgrInitCITransfer

# Function: __glMgrInitRGBMap
# Declared: Line 547 (Source lines: 548-641)
# Address: 0x0da80174 - 0x0da8049c (Size: 808 bytes, Frame: 176)
.globl __glMgrInitRGBMap
.ent __glMgrInitRGBMap
__glMgrInitRGBMap:
    # Line 548
    addiu	$sp,$sp,-176
    sd	$s0,96($sp)
    move	$s0,$a1
    sd	$s2,104($sp)
    # Line 553
    li	$a3,4096
    # Line 552
    lui	$v1,0x80
    # Line 553
    sw	$v1,32($sp)
    sw	$zero,28($sp)
    sw	$a3,24($sp)
    # Line 552
    sw	$v1,16($sp)
    sw	$zero,12($sp)
    sw	$zero,8($sp)
    sd	$gp,112($sp)
    # Line 548
    lui	$a4,0x18
    addiu	$a4,$a4,-6876
    addu	$gp,$t9,$a4
    # Line 554
    lwc1	$f0,_lit_3f800000
    mtc1	$zero,$f1
    # Line 550
    lwc1	$f2,_lit_37800080
    # Line 554
    swc1	$f0,56($sp)
    swc1	$f1,52($sp)
    swc1	$f1,48($sp)
    swc1	$f1,44($sp)
    swc1	$f0,40($sp)
    # Line 550
    swc1	$f2,0($sp)
    # Line 548
    move	$s2,$a2
    # Line 557
    lw	$a4,424($a1)
    sd	$a0,80($sp)
    lw	$v0,__glCurrentContext
    andi	$at,$a4,0x10
    beqz	$at,.L0da80490
    sd	$v0,88($sp)
    lw	$at,256($s0)
    andi	$at,$at,0x1
    beqz	$at,.L0da80250
    sd	$s1,120($sp)
    # Line 568
    li	$a0,226
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    la	$s1,SYMBOL_LOCATION
    sd	$ra,128($sp)
    jal	__glMgrInitPixelPath
    lw	$a1,416($s1)
    # Line 570
    move	$a0,$s0
    # lw $t9, -30220($gp) # &__glMgrInitExpandState
    move	$a1,$s2
    move	$a3,$zero
    jal	__glMgrInitExpandState
    addiu	$a2,$sp,40
    # Line 572
    lw	$v0,1432($s0)
    lw	$v1,40($v0)
    sw	$v1,204($s0)
    # Line 573
    lw	$v0,44($v0)
    # Line 574
    sw	$zero,220($s0)
    b	.L0da80258
    # Line 573
    sw	$v0,208($s0)
.L0da80250:
    sd	$ra,128($sp)
    # Line 574
    la	$s1,SYMBOL_LOCATION
.L0da80258:
    # Line 579
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,756($s1)
    jal	__glMgrInitPixelPath
    li	$a0,222
    # Line 580
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,448($s1)
    jal	__glMgrInitPixelPath
    li	$a0,219
    # Line 581
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,740($s1)
    jal	__glMgrInitPixelPath
    li	$a0,229
    ld	$a0,88($sp)
    # Line 588
    lw	$a3,1024($a0)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f6
    nop
    cvt.s.w	$f6,$f6
    swc1	$f6,64($sp)
    # Line 589
    lw	$a2,1036($a0)
    addiu	$a2,$a2,-1
    mtc1	$a2,$f5
    nop
    cvt.s.w	$f5,$f5
    swc1	$f5,68($sp)
    # Line 590
    lw	$a1,1048($a0)
    addiu	$a1,$a1,-1
    mtc1	$a1,$f4
    nop
    cvt.s.w	$f4,$f4
    swc1	$f4,72($sp)
    # Line 591
    lw	$a0,1060($a0)
    addiu	$a0,$a0,-1
    mtc1	$a0,$f3
    # Line 593
    # lw $t9, -30216($gp) # &__glMgrInitClampState
    # Line 591
    cvt.s.w	$f3,$f3
    # Line 593
    lw	$a3,756($s1)
    addiu	$a2,$sp,64
    move	$a1,$s2
    move	$a0,$s0
    jal	__glMgrInitClampState
    # Line 591
    swc1	$f3,76($sp)
    # Line 595
    lw	$a4,1432($s0)
    lw	$a5,40($a4)
    # Line 599
    addiu	$a2,$sp,8
    move	$a1,$s2
    # Line 595
    sw	$a5,204($s0)
    # Line 599
    move	$a0,$s0
    # Line 596
    lw	$a4,44($a4)
    # Line 599
    # lw $t9, -30208($gp) # &__glMgrInitLUTRGB
    # Line 597
    sw	$zero,220($s0)
    # Line 596
    sw	$a4,208($s0)
    # Line 599
    jal	__glMgrInitLUTRGB
    lw	$a3,448($s1)
    # Line 601
    move	$a0,$s0
    # lw $t9, -30232($gp) # &__glMgrInitI2FState
    move	$a1,$zero
    lw	$a3,740($s1)
    jal	__glMgrInitI2FState
    addiu	$a2,$sp,0
    lw	$a4,424($s0)
    ld	$ra,128($sp)
.L0da80350:
    lui	$at,0x200
    and	$at,$a4,$at
    beqzl	$at,.L0da8047c
    ld	$gp,112($sp)
    lw	$v0,256($s0)
    andi	$v0,$v0,0x2
    beqz	$v0,.L0da803b0
    sd	$ra,128($sp)
    # Line 611
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,416($s1)
    jal	__glMgrInitPixelPath
    li	$a0,226
    # Line 613
    move	$a0,$s0
    # lw $t9, -30220($gp) # &__glMgrInitExpandState
    move	$a1,$s2
    move	$a3,$zero
    jal	__glMgrInitExpandState
    addiu	$a2,$sp,40
    # Line 615
    lw	$v1,1432($s0)
    lw	$a3,40($v1)
    sw	$a3,204($s0)
    # Line 616
    lw	$v1,44($v1)
    # Line 617
    sw	$zero,220($s0)
    # Line 616
    sw	$v1,208($s0)
.L0da803b0:
    # Line 622
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,760($s1)
    jal	__glMgrInitPixelPath
    li	$a0,222
    # Line 623
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,456($s1)
    jal	__glMgrInitPixelPath
    li	$a0,219
    # Line 624
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,744($s1)
    jal	__glMgrInitPixelPath
    li	$a0,229
    # Line 626
    ld	$a5,80($sp)
    li	$a4,0x839c
    addu	$a4,$a4,$a5
    lw	$a4,0($a4)
    addiu	$a4,$a4,-1
    mtc1	$a4,$f7
    nop
    cvt.s.w	$f7,$f7
    # Line 631
    lw	$a3,760($s1)
    addiu	$a2,$sp,64
    move	$a1,$s2
    move	$a0,$s0
    # lw $t9, -30216($gp) # &__glMgrInitClampState
    # Line 626
    swc1	$f7,64($sp)
    swc1	$f7,68($sp)
    swc1	$f7,72($sp)
    # Line 631
    jal	__glMgrInitClampState
    # Line 626
    swc1	$f7,76($sp)
    # Line 633
    lw	$a6,1432($s0)
    lw	$a7,40($a6)
    # Line 637
    addiu	$a2,$sp,24
    move	$a1,$s2
    # Line 633
    sw	$a7,204($s0)
    # Line 637
    move	$a0,$s0
    # Line 634
    lw	$a6,44($a6)
    # Line 637
    # lw $t9, -30204($gp) # &__glMgrInitColorTable
    # Line 635
    sw	$zero,220($s0)
    # Line 634
    sw	$a6,208($s0)
    # Line 637
    jal	__glMgrInitColorTable
    lw	$a3,456($s1)
    # Line 639
    move	$a0,$s0
    move	$a1,$zero
    # lw $t9, -30232($gp) # &__glMgrInitI2FState
    lw	$a3,744($s1)
    addiu	$a2,$sp,0
    jal	__glMgrInitI2FState
    ld	$s2,104($sp)
    ld	$ra,128($sp)
    ld	$gp,112($sp)
.L0da8047c:
    # Line 641
    ld	$s0,96($sp)
    ld	$s1,120($sp)
    ld	$s2,104($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da80490:
    sd	$s1,120($sp)
    b	.L0da80350
    # Line 601
    la	$s1,SYMBOL_LOCATION
.end __glMgrInitRGBMap

# Function: __glMgrInitCIToRGB
# Declared: Line 644 (Source lines: 645-666)
# Address: 0x0da8049c - 0x0da805b4 (Size: 280 bytes, Frame: 240)
.globl __glMgrInitCIToRGB
.ent __glMgrInitCIToRGB
__glMgrInitCIToRGB:
    # Line 648
    li	$v0,16
    li	$v1,1
    lui	$a2,0x80
    # Line 645
    addiu	$sp,$sp,-112
    sd	$s0,48($sp)
    move	$s0,$a0
    # Line 653
    li	$a0,226
    # Line 648
    sw	$a2,40($sp)
    sw	$v1,36($sp)
    sw	$v0,32($sp)
    sd	$ra,64($sp)
    sd	$s8,72($sp)
    # Line 645
    move	$s8,$a1
    sd	$s1,56($sp)
    sd	$gp,80($sp)
    lui	$at,0x18
    addiu	$at,$at,-7684
    addu	$gp,$t9,$at
    # Line 646
    lwc1	$f0,_lit_37800080
    # Line 653
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    # Line 645
    la	$s1,SYMBOL_LOCATION
    # Line 647
    lwc1	$f1,_lit_3f800000
    mtc1	$zero,$f2
    # Line 653
    lw	$a1,416($s1)
    # Line 647
    swc1	$f1,24($sp)
    swc1	$f2,20($sp)
    swc1	$f2,16($sp)
    swc1	$f2,12($sp)
    swc1	$f1,8($sp)
    # Line 653
    jal	__glMgrInitPixelPath
    # Line 646
    swc1	$f0,0($sp)
    # Line 654
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,448($s1)
    jal	__glMgrInitPixelPath
    li	$a0,219
    # Line 655
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,740($s1)
    jal	__glMgrInitPixelPath
    li	$a0,229
    # Line 657
    move	$a0,$s0
    # lw $t9, -30220($gp) # &__glMgrInitExpandState
    move	$a1,$s8
    move	$a3,$zero
    jal	__glMgrInitExpandState
    addiu	$a2,$sp,8
    # Line 659
    lw	$a3,1432($s0)
    # Line 663
    addiu	$a2,$sp,32
    # Line 659
    lw	$a4,40($a3)
    # Line 663
    move	$a1,$zero
    move	$a0,$s0
    # Line 659
    sw	$a4,204($s0)
    ld	$s8,72($sp)
    # Line 660
    lw	$a3,44($a3)
    # Line 663
    # lw $t9, -30200($gp) # &__glMgrInitLUTCIST
    # Line 661
    sw	$zero,220($s0)
    # Line 660
    sw	$a3,208($s0)
    # Line 663
    jal	__glMgrInitLUTCIST
    lw	$a3,448($s1)
    # Line 665
    move	$a0,$s0
    # lw $t9, -30232($gp) # &__glMgrInitI2FState
    move	$a1,$zero
    lw	$a3,740($s1)
    jal	__glMgrInitI2FState
    addiu	$a2,$sp,0
    ld	$gp,80($sp)
    # Line 666
    ld	$ra,64($sp)
    ld	$s0,48($sp)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glMgrInitCIToRGB

# Function: __glMgrInitCIMap
# Declared: Line 669 (Source lines: 670-698)
# Address: 0x0da805b4 - 0x0da806b0 (Size: 252 bytes, Frame: 208)
.globl __glMgrInitCIMap
.ent __glMgrInitCIMap
__glMgrInitCIMap:
    # Line 670
    li	$a4,6401
    addiu	$sp,$sp,-80
    sd	$s0,32($sp)
    move	$s0,$a0
    sd	$s1,24($sp)
    lw	$a3,1432($a0)
    move	$s1,$a1
    sd	$gp,16($sp)
    lw	$a3,68($a3)
    lui	$at,0x18
    addiu	$at,$at,-7964
    beq	$a4,$a3,.L0da80684
    addu	$gp,$t9,$at
    # Line 675
    lw	$at,424($s0)
    andi	$at,$at,0x10
    beqz	$at,.L0da8067c
    li	$v0,8
.L0da805f8:
    beq	$s1,$v0,.L0da806a0
    sd	$s4,48($sp)
    # Line 684
    la	$s4,SYMBOL_LOCATION
    sd	$ra,40($sp)
    lw	$s4,452($s4)
.L0da8060c:
    # Line 686
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    move	$a1,$s4
    jal	__glMgrInitPixelPath
    li	$a0,219
    # Line 692
    move	$a3,$s4
    addiu	$a2,$sp,0
    move	$a1,$zero
    move	$a0,$s0
    # Line 688
    sw	$s1,0($sp)
    # Line 689
    li	$t8,1
    # Line 692
    # lw $t9, -30200($gp) # &__glMgrInitLUTCIST
    # Line 690
    lui	$ra,0x80
    sw	$ra,8($sp)
    # Line 692
    jal	__glMgrInitLUTCIST
    # Line 689
    sw	$t8,4($sp)
    # Line 694
    lw	$at,1432($s0)
    lw	$v0,40($at)
    sw	$v0,204($s0)
    ld	$ra,40($sp)
    # Line 695
    lw	$at,44($at)
    ld	$s4,48($sp)
    # Line 696
    sw	$zero,220($s0)
    # Line 695
    sw	$at,208($s0)
    ld	$gp,16($sp)
.L0da8066c:
    # Line 698
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da8067c:
    # Line 675
    bnel	$a4,$a3,.L0da8066c
    ld	$gp,16($sp)
.L0da80684:
    lw	$v1,424($s0)
    lui	$a2,0x20
    and	$v1,$v1,$a2
    beqzl	$v1,.L0da8066c
    ld	$gp,16($sp)
    b	.L0da805f8
    li	$v0,8
.L0da806a0:
    # Line 682
    la	$s4,SYMBOL_LOCATION
    sd	$ra,40($sp)
    b	.L0da8060c
    lw	$s4,448($s4)
.end __glMgrInitCIMap

# Function: __glMgrInitRGBPipe
# Declared: Line 703 (Source lines: 704-1081)
# Address: 0x0da806b0 - 0x0da81358 (Size: 3240 bytes, Frame: 208)
.globl __glMgrInitRGBPipe
.ent __glMgrInitRGBPipe
__glMgrInitRGBPipe:
    # Line 704
    addiu	$sp,$sp,-208
    sd	$s0,128($sp)
    # Line 710
    li	$v0,1
    sb	$zero,34($sp)
    sb	$zero,33($sp)
    sb	$v0,32($sp)
    sd	$gp,120($sp)
    # Line 704
    lui	$v1,0x18
    addiu	$v1,$v1,-8216
    addu	$gp,$t9,$v1
    # Line 709
    mtc1	$zero,$f0
    # Line 707
    lwc1	$f2,_lit_37800080
    # Line 709
    lwc1	$f1,_lit_3f800000
    # Line 715
    swc1	$f0,40($sp)
    swc1	$f0,44($sp)
    swc1	$f0,48($sp)
    swc1	$f0,52($sp)
    # Line 709
    swc1	$f1,24($sp)
    swc1	$f0,20($sp)
    swc1	$f0,16($sp)
    swc1	$f0,12($sp)
    swc1	$f1,8($sp)
    # Line 707
    swc1	$f2,0($sp)
    # Line 704
    move	$s0,$a1
    # Line 715
    lw	$at,1432($a1)
    sd	$s2,144($sp)
    # Line 704
    move	$s2,$a2
    # Line 715
    lw	$at,68($at)
    sd	$s7,136($sp)
    li	$v0,6408
    beq	$at,$v0,.L0da80fd0
    # Line 704
    move	$s7,$a0
    # Line 715
    lw	$a3,256($s0)
    andi	$a3,$a3,0x20
    beqz	$a3,.L0da80c30
    sd	$s1,152($sp)
    # Line 723
    li	$a0,226
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    # Line 718
    la	$s1,SYMBOL_LOCATION
    sd	$ra,168($sp)
    # Line 723
    jal	__glMgrInitPixelPath
    lw	$a1,416($s1)
    # Line 725
    move	$a0,$s0
    # lw $t9, -30220($gp) # &__glMgrInitExpandState
    move	$a1,$s2
    move	$a3,$zero
    jal	__glMgrInitExpandState
    addiu	$a2,$sp,8
    # Line 727
    lw	$ra,1432($s0)
    lw	$at,40($ra)
    sw	$at,204($s0)
    # Line 728
    lw	$ra,44($ra)
    sd	$s3,160($sp)
    # Line 729
    sw	$zero,220($s0)
    # Line 728
    sw	$ra,208($s0)
    ld	$ra,168($sp)
.L0da80790:
    # Line 729
    lui	$s3,0x1
    addu	$s3,$s7,$s3
    lbu	$v0,-32108($s3)
    beqzl	$v0,.L0da807b8
    # Line 746
    lbu	$v1,-32028($s3)
    # Line 729
    lw	$at,140($s0)
    li	$v0,3
    beq	$at,$v0,.L0da81244
    # Line 742
    move	$a0,$s0
    # Line 746
    lbu	$v1,-32028($s3)
.L0da807b8:
    beqzl	$v1,.L0da80be4
    # Line 756
    lbu	$a3,-31948($s3)
    # Line 746
    lw	$a3,140($s0)
    li	$at,3
    beq	$a3,$at,.L0da80be0
    # Line 752
    move	$a0,$s0
    move	$a1,$s2
    # lw $t9, -30196($gp) # &__glMgrInitConvolve2DState
    lw	$a3,808($s1)
    sd	$ra,168($sp)
    jal	__glMgrInitConvolve2DState
    addiu	$a2,$sp,40
    # Line 754
    lw	$v0,1432($s0)
    lw	$v1,40($v0)
    sw	$v1,204($s0)
    # Line 755
    lw	$v0,44($v0)
    # Line 756
    sw	$zero,220($s0)
    # Line 755
    sw	$v0,208($s0)
.L0da80800:
    # Line 776
    lw	$a0,424($s0)
.L0da80804:
    lui	$a3,0x8
    and	$a3,$a0,$a3
    beqz	$a3,.L0da810f0
    lui	$at,0x4
    and	$at,$a0,$at
    beqz	$at,.L0da810f0
.L0da8081c:
    # Line 797
    lui	$v0,0x400
    and	$v0,$a0,$v0
    beqz	$v0,.L0da80948
    # Line 843
    andi	$at,$a0,0x100
    # Line 797
    lw	$v1,256($s0)
    andi	$v1,$v1,0x4
    beqz	$v1,.L0da80878
    # Line 812
    nop	# was lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,416($s1)
    jal	__glMgrInitPixelPath
    li	$a0,226
    # Line 814
    move	$a0,$s0
    # lw $t9, -30220($gp) # &__glMgrInitExpandState
    move	$a1,$s2
    move	$a3,$zero
    jal	__glMgrInitExpandState
    addiu	$a2,$sp,8
    # Line 816
    lw	$a3,1432($s0)
    lw	$at,40($a3)
    sw	$at,204($s0)
    # Line 817
    lw	$a3,44($a3)
    # Line 818
    sw	$zero,220($s0)
    # Line 817
    sw	$a3,208($s0)
.L0da80878:
    # Line 823
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,764($s1)
    jal	__glMgrInitPixelPath
    li	$a0,222
    # Line 824
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,732($s1)
    jal	__glMgrInitPixelPath
    li	$a0,219
    # Line 825
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,748($s1)
    jal	__glMgrInitPixelPath
    li	$a0,229
    # Line 827
    lw	$v0,-31724($s3)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 832
    lw	$a3,764($s1)
    addiu	$a2,$sp,88
    move	$a1,$s2
    move	$a0,$s0
    # lw $t9, -30216($gp) # &__glMgrInitClampState
    # Line 827
    swc1	$f3,88($sp)
    swc1	$f3,92($sp)
    swc1	$f3,96($sp)
    # Line 832
    jal	__glMgrInitClampState
    # Line 827
    swc1	$f3,100($sp)
    # Line 834
    lw	$a4,1432($s0)
    # Line 841
    addiu	$a2,$sp,104
    move	$a1,$s2
    # Line 834
    lw	$a5,40($a4)
    # Line 841
    move	$a0,$s0
    # Line 840
    lui	$a3,0x80
    # Line 834
    sw	$a5,204($s0)
    # Line 838
    li	$v1,8192
    # Line 835
    lw	$a4,44($a4)
    # Line 841
    # lw $t9, -30204($gp) # &__glMgrInitColorTable
    # Line 836
    sw	$zero,220($s0)
    # Line 835
    sw	$a4,208($s0)
    # Line 839
    sw	$zero,108($sp)
    # Line 838
    sw	$v1,104($sp)
    # Line 840
    sw	$a3,112($sp)
    # Line 841
    jal	__glMgrInitColorTable
    lw	$a3,732($s1)
    # Line 843
    move	$a0,$s0
    # lw $t9, -30232($gp) # &__glMgrInitI2FState
    move	$a1,$zero
    lw	$a3,748($s1)
    jal	__glMgrInitI2FState
    addiu	$a2,$sp,0
    lw	$a0,424($s0)
    andi	$at,$a0,0x100
.L0da80948:
    beqz	$at,.L0da80fe0
.L0da8094c:
    # Line 877
    andi	$v0,$a0,0x400
    beqz	$v0,.L0da81178
    andi	$v1,$a0,0x200
    beqz	$v1,.L0da81178
.L0da8095c:
    # Line 898
    lui	$a3,0x800
    and	$a3,$a0,$a3
    beqz	$a3,.L0da80a88
    # Line 944
    andi	$at,$a0,0x40
    # Line 898
    lw	$at,256($s0)
    andi	$at,$at,0x8
    beqz	$at,.L0da809b8
    # Line 913
    nop	# was lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,416($s1)
    jal	__glMgrInitPixelPath
    li	$a0,226
    # Line 915
    move	$a0,$s0
    # lw $t9, -30220($gp) # &__glMgrInitExpandState
    move	$a1,$s2
    move	$a3,$zero
    jal	__glMgrInitExpandState
    addiu	$a2,$sp,8
    # Line 917
    lw	$v0,1432($s0)
    lw	$v1,40($v0)
    sw	$v1,204($s0)
    # Line 918
    lw	$v0,44($v0)
    # Line 919
    sw	$zero,220($s0)
    # Line 918
    sw	$v0,208($s0)
.L0da809b8:
    # Line 924
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,768($s1)
    jal	__glMgrInitPixelPath
    li	$a0,222
    # Line 925
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,872($s1)
    jal	__glMgrInitPixelPath
    li	$a0,219
    # Line 926
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,752($s1)
    jal	__glMgrInitPixelPath
    li	$a0,229
    # Line 928
    lw	$a0,-31664($s3)
    addiu	$a0,$a0,-1
    mtc1	$a0,$f4
    nop
    cvt.s.w	$f4,$f4
    # Line 933
    lw	$a3,768($s1)
    addiu	$a2,$sp,88
    move	$a1,$zero
    # lw $t9, -30216($gp) # &__glMgrInitClampState
    move	$a0,$s0
    # Line 928
    swc1	$f4,88($sp)
    swc1	$f4,92($sp)
    swc1	$f4,96($sp)
    # Line 933
    jal	__glMgrInitClampState
    # Line 928
    swc1	$f4,100($sp)
    # Line 935
    lw	$a5,1432($s0)
    # Line 942
    addiu	$a2,$sp,104
    move	$a1,$s2
    # Line 935
    lw	$a6,40($a5)
    # Line 942
    move	$a0,$s0
    # Line 939
    li	$a3,16384
    # Line 935
    sw	$a6,204($s0)
    # Line 941
    lui	$a4,0x80
    # Line 936
    lw	$a5,44($a5)
    # Line 942
    # lw $t9, -30204($gp) # &__glMgrInitColorTable
    # Line 937
    sw	$zero,220($s0)
    # Line 936
    sw	$a5,208($s0)
    # Line 941
    sw	$a4,112($sp)
    # Line 940
    sw	$zero,108($sp)
    # Line 939
    sw	$a3,104($sp)
    # Line 942
    jal	__glMgrInitColorTable
    lw	$a3,872($s1)
    # Line 944
    move	$a0,$s0
    # lw $t9, -30232($gp) # &__glMgrInitI2FState
    move	$a1,$zero
    lw	$a3,752($s1)
    jal	__glMgrInitI2FState
    addiu	$a2,$sp,0
    lw	$a0,424($s0)
    andi	$at,$a0,0x40
.L0da80a88:
    beqz	$at,.L0da80b40
    # Line 974
    andi	$at,$a0,0x80
    # Line 944
    lw	$v0,1432($s0)
    lw	$v0,92($v0)
    andi	$v0,$v0,0x10
    beqz	$v0,.L0da80ab4
    # Line 962
    nop	# was lw $t9, -30256($gp) # &__glMgrInitPixelPath
    # Line 944
    lw	$v1,-32264($s3)
    andi	$v1,$v1,0x10
    beqz	$v1,.L0da81200
.L0da80ab0:
    # Line 962
    nop	# was lw $t9, -30256($gp) # &__glMgrInitPixelPath
.L0da80ab4:
    lw	$a1,464($s1)
    jal	__glMgrInitPixelPath
    li	$a0,228
    # Line 964
    move	$a0,$s0
    # lw $t9, -30180($gp) # &__glMgrInitHistogramState
    move	$a1,$s2
    move	$a2,$zero
    jal	__glMgrInitHistogramState
    lw	$a3,464($s1)
    lbu	$a3,-32272($s3)
    beqzl	$a3,.L0da80b3c
    # Line 974
    lw	$a0,424($s0)
    # Line 969
    move	$a1,$zero
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    li	$a0,234
    ld	$s1,152($sp)
    jal	__glMgrInitPixelPath
    ld	$s3,160($sp)
    # Line 971
    move	$a0,$s0
    # lw $t9, -30156($gp) # &__glMgrInitCleanupState
    move	$a1,$zero
    move	$a3,$zero
    jal	__glMgrInitCleanupState
    addiu	$a2,$sp,32
    ld	$gp,120($sp)
    # Line 973
    lw	$s2,248($s0)
    # Line 974
    ld	$s7,136($sp)
    ld	$ra,168($sp)
    # Line 973
    ori	$s2,$s2,0x1
    sw	$s2,248($s0)
    # Line 974
    ld	$s0,128($sp)
    ld	$s2,144($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0da80b3c:
    andi	$at,$a0,0x80
.L0da80b40:
    beqz	$at,.L0da80c40
    # Line 1010
    nop	# was lw $t9, -30256($gp) # &__glMgrInitPixelPath
    # Line 974
    lw	$v0,1432($s0)
    lw	$v0,68($v0)
    li	$v1,6409
    beq	$v0,$v1,.L0da812c4
.L0da80b58:
    # Line 992
    nop	# was lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,468($s1)
    jal	__glMgrInitPixelPath
    li	$a0,231
    # Line 994
    move	$a0,$s0
    # lw $t9, -30176($gp) # &__glMgrInitMinMaxState
    move	$a1,$s2
    move	$a2,$zero
    jal	__glMgrInitMinMaxState
    lw	$a3,468($s1)
    lbu	$v1,-32243($s3)
    beqz	$v1,.L0da80c3c
    # Line 999
    move	$a1,$zero
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    li	$a0,234
    ld	$s3,160($sp)
    jal	__glMgrInitPixelPath
    ld	$s1,152($sp)
    # Line 1001
    move	$a0,$s0
    # lw $t9, -30156($gp) # &__glMgrInitCleanupState
    move	$a1,$zero
    move	$a3,$zero
    jal	__glMgrInitCleanupState
    addiu	$a2,$sp,32
    ld	$gp,120($sp)
    # Line 1004
    ld	$s2,144($sp)
    # Line 1003
    lw	$a0,248($s0)
    # Line 1004
    ld	$s7,136($sp)
    ld	$ra,168($sp)
    # Line 1003
    ori	$a0,$a0,0x1
    sw	$a0,248($s0)
    # Line 1004
    ld	$s0,128($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0da80be0:
    # Line 756
    lbu	$a3,-31948($s3)
.L0da80be4:
    beqz	$a3,.L0da8107c
    # Line 771
    nop	# was lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    # Line 756
    lw	$at,140($s0)
    li	$v0,3
    beq	$at,$v0,.L0da81078
    sd	$ra,168($sp)
    # Line 762
    move	$a0,$s0
    # lw $t9, -30188($gp) # &__glMgrInitSeparable2DState
    move	$a1,$s2
    lw	$a3,808($s1)
    jal	__glMgrInitSeparable2DState
    addiu	$a2,$sp,40
    # Line 764
    lw	$v1,1432($s0)
    lw	$a3,40($v1)
    sw	$a3,204($s0)
    # Line 765
    lw	$v1,44($v1)
    # Line 766
    sw	$zero,220($s0)
    b	.L0da80800
    # Line 765
    sw	$v1,208($s0)
.L0da80c30:
    sd	$s3,160($sp)
    b	.L0da80790
    # Line 729
    la	$s1,SYMBOL_LOCATION
.L0da80c3c:
    # Line 1010
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
.L0da80c40:
    lw	$a1,772($s1)
    jal	__glMgrInitPixelPath
    li	$a0,222
    # Line 1012
    lwc1	$f7,116($s0)
    swc1	$f7,88($sp)
    # Line 1013
    lwc1	$f2,116($s0)
    swc1	$f2,92($sp)
    # Line 1014
    lwc1	$f1,116($s0)
    swc1	$f1,96($sp)
    # Line 1015
    lwc1	$f0,116($s0)
    swc1	$f0,100($sp)
    lwc1	$f6,0($s2)
    ldc1	$f5,_lit8_3ff0000000000000
    cvt.d.s	$f6,$f6
    c.lt.d	$f6,$f5
    li	$a0,1
    bc1fl	.L0da80c88
    move	$a0,$zero
.L0da80c88:
    beqz	$a0,.L0da81278
    # Line 1017
    mov.d	$f8,$f6
.L0da80c90:
    dmtc1	$zero,$f4
    c.lt.d	$f4,$f8
    nop
    bc1f	.L0da80cb0
    mov.d	$f8,$f4
    beqz	$a0,.L0da81320
    mov.d	$f9,$f6
.L0da80cac:
    mov.d	$f8,$f9
.L0da80cb0:
    cvt.d.s	$f9,$f7
    mul.d	$f9,$f9,$f8
    lwc1	$f6,4($s2)
    cvt.d.s	$f6,$f6
    c.lt.d	$f6,$f5
    li	$a0,1
    cvt.s.d	$f9,$f9
    bc1fl	.L0da80cd4
    move	$a0,$zero
.L0da80cd4:
    beqz	$a0,.L0da81280
    swc1	$f9,0($s2)
    # Line 1018
    mov.d	$f7,$f6
.L0da80ce0:
    c.lt.d	$f4,$f7
    nop
    bc1f	.L0da80cfc
    mov.d	$f7,$f4
    beqz	$a0,.L0da81328
    mov.d	$f8,$f6
.L0da80cf8:
    mov.d	$f7,$f8
.L0da80cfc:
    lwc1	$f8,92($sp)
    cvt.d.s	$f8,$f8
    mul.d	$f8,$f8,$f7
    lwc1	$f6,8($s2)
    cvt.d.s	$f6,$f6
    c.lt.d	$f6,$f5
    li	$a0,1
    cvt.s.d	$f8,$f8
    bc1fl	.L0da80d24
    move	$a0,$zero
.L0da80d24:
    beqz	$a0,.L0da81288
    swc1	$f8,4($s2)
    # Line 1019
    mov.d	$f7,$f6
.L0da80d30:
    c.lt.d	$f4,$f7
    nop
    bc1f	.L0da80d4c
    mov.d	$f7,$f4
    beqz	$a0,.L0da81330
    mov.d	$f10,$f6
.L0da80d48:
    mov.d	$f7,$f10
.L0da80d4c:
    lwc1	$f10,96($sp)
    cvt.d.s	$f10,$f10
    mul.d	$f10,$f10,$f7
    lwc1	$f6,12($s2)
    cvt.d.s	$f6,$f6
    c.lt.d	$f6,$f5
    li	$a0,1
    cvt.s.d	$f10,$f10
    bc1fl	.L0da80d74
    move	$a0,$zero
.L0da80d74:
    beqz	$a0,.L0da81290
    swc1	$f10,8($s2)
    # Line 1020
    mov.d	$f7,$f6
.L0da80d80:
    c.lt.d	$f4,$f7
    nop
    bc1fl	.L0da80d9c
    mov.d	$f5,$f4
    beqz	$a0,.L0da81338
    mov.d	$f7,$f6
.L0da80d98:
    mov.d	$f5,$f7
.L0da80d9c:
    lwc1	$f6,100($sp)
    cvt.d.s	$f6,$f6
    mul.d	$f6,$f6,$f5
    cvt.s.d	$f6,$f6
    cvt.d.s	$f0,$f9
    c.eq.d	$f0,$f4
    swc1	$f6,12($s2)
    bc1t	.L0da80dd0
    lw	$a0,1432($s0)
    # Line 1027
    lw	$at,92($a0)
    andi	$at,$at,0x8
    beqz	$at,.L0da80e60
    li	$a1,1
.L0da80dd0:
    cvt.d.s	$f0,$f8
    c.eq.d	$f0,$f4
    nop
    bc1tl	.L0da80df8
    cvt.d.s	$f1,$f10
    lw	$v0,92($a0)
    andi	$v0,$v0,0x4
    beqz	$v0,.L0da80e60
    li	$a1,1
    cvt.d.s	$f1,$f10
.L0da80df8:
    c.eq.d	$f1,$f4
    nop
    bc1t	.L0da80e18
    lwc1	$f2,100($sp)
    lw	$v1,92($a0)
    andi	$v1,$v1,0x2
    beqz	$v1,.L0da80e5c
    lwc1	$f2,100($sp)
.L0da80e18:
    c.eq.s	$f2,$f6
    nop
    bc1tl	.L0da80e3c
    lw	$a1,68($a0)
    lw	$a3,92($a0)
    andi	$a3,$a3,0x1
    beqz	$a3,.L0da80e60
    li	$a1,1
    lw	$a1,68($a0)
.L0da80e3c:
    li	$at,6410
    beql	$a1,$at,.L0da81308
    lw	$at,424($s0)
    lw	$v0,44($s0)
.L0da80e4c:
    beq	$v0,$a1,.L0da810a4
    li	$v1,6408
    beql	$v1,$a1,.L0da810a8
    lw	$a4,424($s0)
.L0da80e5c:
    li	$a1,1
.L0da80e60:
    # Line 1038
    beqz	$a1,.L0da80e94
    move	$s3,$a1
.L0da80e68:
    lw	$a3,44($s0)
    li	$at,6408
    beq	$a3,$at,.L0da80ea4
    move	$a0,$zero
    lw	$v0,424($s0)
    lui	$v1,0x100
    and	$v0,$v0,$v1
    beqz	$v0,.L0da80ea4
    move	$a0,$zero
    b	.L0da80ea4
    li	$a0,1
.L0da80e94:
    lw	$a3,68($a0)
    li	$at,6408
    beq	$a3,$at,.L0da80e68
    move	$a0,$zero
.L0da80ea4:
    beqz	$s3,.L0da81298
    andi	$s7,$a0,0xff
.L0da80eac:
    # Line 1045
    move	$a0,$s0
.L0da80eb0:
    # lw $t9, -30216($gp) # &__glMgrInitClampState
    move	$a1,$zero
    lw	$a3,772($s1)
    jal	__glMgrInitClampState
    addiu	$a2,$sp,88
    # Line 1047
    lw	$v1,1432($s0)
    lw	$a3,40($v1)
    move	$v0,$s3
    ld	$s3,160($sp)
    sw	$a3,204($s0)
    ld	$ra,168($sp)
    # Line 1048
    lw	$v1,44($v1)
    # Line 1049
    sw	$zero,220($s0)
    beqz	$v0,.L0da80f78
    # Line 1048
    sw	$v1,208($s0)
    # Line 1056
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,416($s1)
    li	$a0,226
    jal	__glMgrInitPixelPath
    ld	$s3,160($sp)
    bnez	$s7,.L0da80f60
    # Line 1067
    move	$a0,$s0
    # Line 1056
    lw	$at,424($s0)
    lui	$v0,0x100
    ori	$v0,$v0,0x800
    and	$at,$at,$v0
    beqz	$at,.L0da80f5c
    # Line 1064
    move	$a3,$zero
    addiu	$a2,$sp,8
    move	$a1,$s2
    move	$a0,$s0
    mtc1	$zero,$f3
    # lw $t9, -30220($gp) # &__glMgrInitExpandState
    # Line 1061
    lui	$a4,0x1
    # Line 1062
    lw	$v1,256($s0)
    # Line 1061
    ori	$a4,$a4,0xa000
    sw	$a4,220($s0)
    # Line 1062
    ori	$v1,$v1,0xe00
    sw	$v1,256($s0)
    # Line 1064
    jal	__glMgrInitExpandState
    # Line 1063
    swc1	$f3,8($sp)
    b	.L0da80f78
    ld	$ra,168($sp)
.L0da80f5c:
    # Line 1067
    move	$a0,$s0
.L0da80f60:
    # lw $t9, -30220($gp) # &__glMgrInitExpandState
    move	$a1,$s2
    move	$a3,$zero
    jal	__glMgrInitExpandState
    addiu	$a2,$sp,8
    ld	$ra,168($sp)
.L0da80f78:
    beqz	$s7,.L0da80fb4
    # Line 1075
    nop	# was lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,848($s1)
    jal	__glMgrInitPixelPath
    li	$a0,237
    # Line 1079
    move	$a2,$zero
    move	$a1,$zero
    move	$a0,$s0
    # lw $t9, -30172($gp) # &__glMgrInitCompressState
    # Line 1077
    lui	$a5,0x1
    ori	$a5,$a5,0xa000
    sw	$a5,220($s0)
    # Line 1079
    jal	__glMgrInitCompressState
    lw	$a3,848($s1)
    ld	$ra,168($sp)
.L0da80fb4:
    ld	$gp,120($sp)
    # Line 1081
    ld	$s0,128($sp)
    ld	$s1,152($sp)
    ld	$s2,144($sp)
    ld	$s7,136($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0da80fd0:
    sd	$s3,160($sp)
    sd	$s1,152($sp)
    b	.L0da80790
    # Line 729
    la	$s1,SYMBOL_LOCATION
.L0da80fe0:
    # Line 843
    lw	$at,1432($s0)
    lw	$at,76($at)
    li	$v0,4
    beq	$at,$v0,.L0da81030
    # Line 858
    nop	# was lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,416($s1)
    jal	__glMgrInitPixelPath
    li	$a0,226
    # Line 860
    move	$a0,$s0
    # lw $t9, -30220($gp) # &__glMgrInitExpandState
    move	$a1,$s2
    move	$a3,$zero
    jal	__glMgrInitExpandState
    addiu	$a2,$sp,8
    # Line 862
    lw	$v0,1432($s0)
    lw	$v1,40($v0)
    sw	$v1,204($s0)
    # Line 863
    lw	$v0,44($v0)
    # Line 864
    sw	$zero,220($s0)
    # Line 863
    sw	$v0,208($s0)
.L0da81030:
    # Line 867
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,476($s1)
    jal	__glMgrInitPixelPath
    li	$a0,223
    # Line 869
    move	$a0,$s0
    # lw $t9, -30184($gp) # &__glMgrInitColorMatrixState
    move	$a1,$zero
    move	$a2,$zero
    jal	__glMgrInitColorMatrixState
    lw	$a3,476($s1)
    # Line 871
    lw	$a3,1432($s0)
    lw	$at,40($a3)
    sw	$at,204($s0)
    # Line 873
    lw	$a0,424($s0)
    # Line 872
    lw	$a3,44($a3)
    # Line 873
    sw	$zero,220($s0)
    b	.L0da8094c
    # Line 872
    sw	$a3,208($s0)
.L0da81078:
    # Line 771
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
.L0da8107c:
    move	$a0,$zero
    sd	$ra,168($sp)
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 772
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,968($s1)
    b	.L0da80804
    # Line 776
    lw	$a0,424($s0)
.L0da810a4:
    # Line 1027
    lw	$a4,424($s0)
.L0da810a8:
    lui	$at,0x100
    and	$a4,$a4,$at
    beqz	$a4,.L0da81340
    nop
    lw	$a2,40($s0)
    li	$v0,6403
    beq	$a2,$v0,.L0da80e5c
    li	$v1,6404
    beq	$a2,$v1,.L0da80e5c
    li	$a3,6405
    beq	$a2,$a3,.L0da80e5c
    li	$a5,6406
    beql	$a5,$a2,.L0da80e60
    li	$a1,1
.L0da810e0:
    beq	$a5,$a1,.L0da81348
    nop
.L0da810e8:
    b	.L0da80e60
    move	$a1,$zero
.L0da810f0:
    # Line 781
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,440($s1)
    jal	__glMgrInitPixelPath
    li	$a0,232
    # Line 783
    lwc1	$f11,-31892($s3)
    swc1	$f11,56($sp)
    # Line 784
    lwc1	$f10,-31888($s3)
    swc1	$f10,60($sp)
    # Line 785
    lwc1	$f9,-31884($s3)
    swc1	$f9,64($sp)
    # Line 786
    lwc1	$f8,-31880($s3)
    swc1	$f8,68($sp)
    # Line 788
    lwc1	$f7,-31876($s3)
    swc1	$f7,72($sp)
    # Line 789
    lwc1	$f6,-31872($s3)
    swc1	$f6,76($sp)
    # Line 793
    lw	$a3,440($s1)
    # Line 790
    lwc1	$f5,-31868($s3)
    # Line 793
    addiu	$a2,$sp,56
    move	$a1,$s2
    # Line 790
    swc1	$f5,80($sp)
    # Line 793
    # lw $t9, -30224($gp) # &__glMgrInitScaleBiasState
    # Line 791
    lwc1	$f4,-31864($s3)
    # Line 793
    move	$a0,$s0
    jal	__glMgrInitScaleBiasState
    # Line 791
    swc1	$f4,84($sp)
    # Line 795
    lw	$at,1432($s0)
    lw	$v0,40($at)
    sw	$v0,204($s0)
    # Line 797
    lw	$a0,424($s0)
    # Line 796
    lw	$at,44($at)
    # Line 797
    sw	$zero,220($s0)
    b	.L0da8081c
    # Line 796
    sw	$at,208($s0)
.L0da81178:
    # Line 882
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,444($s1)
    jal	__glMgrInitPixelPath
    li	$a0,232
    # Line 884
    lwc1	$f19,-32164($s3)
    swc1	$f19,56($sp)
    # Line 885
    lwc1	$f18,-32160($s3)
    swc1	$f18,60($sp)
    # Line 886
    lwc1	$f17,-32156($s3)
    swc1	$f17,64($sp)
    # Line 887
    lwc1	$f16,-32152($s3)
    swc1	$f16,68($sp)
    # Line 889
    lwc1	$f15,-32148($s3)
    swc1	$f15,72($sp)
    # Line 890
    lwc1	$f14,-32144($s3)
    swc1	$f14,76($sp)
    # Line 894
    lw	$a3,444($s1)
    # Line 891
    lwc1	$f13,-32140($s3)
    # Line 894
    addiu	$a2,$sp,56
    move	$a1,$s2
    # Line 891
    swc1	$f13,80($sp)
    # Line 894
    # lw $t9, -30224($gp) # &__glMgrInitScaleBiasState
    # Line 892
    lwc1	$f12,-32136($s3)
    # Line 894
    move	$a0,$s0
    jal	__glMgrInitScaleBiasState
    # Line 892
    swc1	$f12,84($sp)
    # Line 896
    lw	$v1,1432($s0)
    lw	$a0,40($v1)
    sw	$a0,204($s0)
    # Line 898
    lw	$a0,424($s0)
    # Line 897
    lw	$v1,44($v1)
    # Line 898
    sw	$zero,220($s0)
    b	.L0da8095c
    # Line 897
    sw	$v1,208($s0)
.L0da81200:
    # Line 953
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,416($s1)
    jal	__glMgrInitPixelPath
    li	$a0,226
    # Line 955
    move	$a0,$s0
    # lw $t9, -30220($gp) # &__glMgrInitExpandState
    move	$a1,$s2
    move	$a3,$zero
    jal	__glMgrInitExpandState
    addiu	$a2,$sp,8
    # Line 957
    lw	$a3,1432($s0)
    lw	$at,40($a3)
    sw	$at,204($s0)
    # Line 958
    lw	$a3,44($a3)
    # Line 959
    sw	$zero,220($s0)
    b	.L0da80ab0
    # Line 958
    sw	$a3,208($s0)
.L0da81244:
    # Line 742
    move	$a1,$s2
    # lw $t9, -30192($gp) # &__glMgrInitConvolve1DState
    lw	$a3,808($s1)
    sd	$ra,168($sp)
    jal	__glMgrInitConvolve1DState
    addiu	$a2,$sp,40
    # Line 744
    lw	$v0,1432($s0)
    lw	$v1,40($v0)
    sw	$v1,204($s0)
    # Line 745
    lw	$v0,44($v0)
    # Line 746
    sw	$zero,220($s0)
    b	.L0da80800
    # Line 745
    sw	$v0,208($s0)
.L0da81278:
    b	.L0da80c90
    # Line 1017
    mov.d	$f8,$f5
.L0da81280:
    b	.L0da80ce0
    # Line 1018
    mov.d	$f7,$f5
.L0da81288:
    b	.L0da80d30
    # Line 1019
    mov.d	$f7,$f5
.L0da81290:
    b	.L0da80d80
    # Line 1020
    mov.d	$f7,$f5
.L0da81298:
    # Line 1038
    bnez	$s7,.L0da80eb0
    # Line 1045
    move	$a0,$s0
    # Line 1042
    lw	$a3,424($s0)
    lui	$at,0x100
    ori	$at,$at,0x800
    and	$a3,$a3,$at
    beqz	$a3,.L0da80eac
    # Line 1043
    lui	$v0,0x1
    ori	$v0,$v0,0xa000
    b	.L0da80eac
    sw	$v0,220($s0)
.L0da812c4:
    # Line 983
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,416($s1)
    jal	__glMgrInitPixelPath
    li	$a0,226
    # Line 985
    move	$a0,$s0
    # lw $t9, -30220($gp) # &__glMgrInitExpandState
    move	$a1,$s2
    move	$a3,$zero
    jal	__glMgrInitExpandState
    addiu	$a2,$sp,8
    # Line 987
    lw	$v1,1432($s0)
    lw	$a3,40($v1)
    sw	$a3,204($s0)
    # Line 988
    lw	$v1,44($v1)
    # Line 989
    sw	$zero,220($s0)
    b	.L0da80b58
    # Line 988
    sw	$v1,208($s0)
.L0da81308:
    # Line 1027
    lui	$v0,0x100
    and	$at,$at,$v0
    beqzl	$at,.L0da80e60
    li	$a1,1
    b	.L0da80e4c
    lw	$v0,44($s0)
.L0da81320:
    b	.L0da80cac
    # Line 1017
    mov.d	$f9,$f5
.L0da81328:
    b	.L0da80cf8
    # Line 1018
    mov.d	$f8,$f5
.L0da81330:
    b	.L0da80d48
    # Line 1019
    mov.d	$f10,$f5
.L0da81338:
    b	.L0da80d98
    # Line 1020
    mov.d	$f7,$f5
.L0da81340:
    b	.L0da810e0
    # Line 1027
    li	$a5,6406
.L0da81348:
    bnez	$a4,.L0da810e8
    nop
    b	.L0da80e60
    li	$a1,1
.end __glMgrInitRGBPipe

# Function: __glMgrInitDepthPipe
# Declared: Line 1086 (Source lines: 1087-1191)
# Address: 0x0da81358 - 0x0da8162c (Size: 724 bytes, Frame: 240)
.globl __glMgrInitDepthPipe
.ent __glMgrInitDepthPipe
__glMgrInitDepthPipe:
    # Line 1091
    li	$at,-1
    # Line 1087
    addiu	$sp,$sp,-112
    sd	$gp,56($sp)
    lui	$v0,0x18
    addiu	$v0,$v0,-11456
    addu	$gp,$t9,$v0
    # Line 1089
    lwc1	$f4,_lit_4f7fffff
    # Line 1091
    sw	$zero,12($sp)
    sw	$at,8($sp)
    # Line 1089
    swc1	$f4,0($sp)
    sd	$s0,64($sp)
    # Line 1096
    lw	$a2,64($a0)
    # Line 1087
    move	$s0,$a0
    sd	$s2,72($sp)
    # Line 1096
    beqz	$a2,.L0da81594
    # Line 1094
    lw	$s2,__glCurrentContext
    # Line 1096
    li	$v1,1
    beq	$a2,$v1,.L0da81594
    li	$a1,2
    beq	$a2,$a1,.L0da815a4
    li	$at,3
    beq	$a2,$at,.L0da815a4
    li	$v0,4
    beql	$a2,$v0,.L0da815b4
    sd	$ra,80($sp)
.L0da813bc:
    sd	$s1,88($sp)
    # Line 1113
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$zero
    sd	$ra,80($sp)
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 1114
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    la	$s1,SYMBOL_LOCATION
    li	$a1,-1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,968($s1)
    lw	$a0,1432($s0)
    lw	$a0,72($a0)
    li	$v1,5125
    beq	$a0,$v1,.L0da815bc
    # Line 1134
    li	$a1,5126
    beq	$a0,$a1,.L0da81440
    # Line 1140
    nop	# was lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,736($s1)
    jal	__glMgrInitPixelPath
    li	$a0,229
    # Line 1142
    move	$a0,$s0
    # lw $t9, -30232($gp) # &__glMgrInitI2FState
    move	$a1,$zero
    lw	$a3,736($s1)
    jal	__glMgrInitI2FState
    addiu	$a2,$s0,108
    # Line 1144
    lw	$at,1432($s0)
    lw	$v0,40($at)
    sw	$v0,204($s0)
    # Line 1145
    lw	$at,44($at)
    # Line 1146
    sw	$zero,220($s0)
    # Line 1145
    sw	$at,208($s0)
.L0da81440:
    # Line 1151
    lwc1	$f0,632($s2)
.L0da81444:
    ldc1	$f1,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f1
    nop
    bc1f	.L0da8148c
    dmtc1	$zero,$f4
    lwc1	$f1,652($s2)
    cvt.d.s	$f1,$f1
    c.eq.d	$f1,$f4
    nop
    bc1f	.L0da81490
    # Line 1157
    nop	# was lw $t9, -30256($gp) # &__glMgrInitPixelPath
    # Line 1151
    lwc1	$f2,112($s0)
    cvt.d.s	$f2,$f2
    c.eq.d	$f2,$f4
    nop
    bc1t	.L0da814ec
    # Line 1171
    nop	# was lw $t9, -30256($gp) # &__glMgrInitPixelPath
.L0da8148c:
    # Line 1157
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
.L0da81490:
    lw	$a1,436($s1)
    jal	__glMgrInitPixelPath
    li	$a0,232
    # Line 1159
    lwc1	$f5,632($s2)
    swc1	$f5,16($sp)
    # Line 1160
    lwc1	$f4,112($s0)
    mul.s	$f4,$f4,$f5
    # Line 1162
    lw	$a3,436($s1)
    # Line 1160
    lwc1	$f3,652($s2)
    # Line 1162
    addiu	$a2,$sp,16
    # lw $t9, -30224($gp) # &__glMgrInitScaleBiasState
    # Line 1160
    add.s	$f3,$f3,$f4
    # Line 1162
    move	$a1,$zero
    move	$a0,$s0
    jal	__glMgrInitScaleBiasState
    # Line 1160
    swc1	$f3,32($sp)
    # Line 1164
    lw	$v1,1432($s0)
    lw	$a1,40($v1)
    sw	$a1,204($s0)
    # Line 1165
    lw	$v1,44($v1)
    # Line 1166
    sw	$zero,220($s0)
    # Line 1165
    sw	$v1,208($s0)
    # Line 1171
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
.L0da814ec:
    lw	$a1,756($s1)
    jal	__glMgrInitPixelPath
    li	$a0,222
    # Line 1175
    lw	$a3,756($s1)
    addiu	$a2,$sp,48
    move	$a1,$zero
    # lw $t9, -30216($gp) # &__glMgrInitClampState
    # Line 1173
    lwc1	$f6,_lit_3f800000
    # Line 1175
    move	$a0,$s0
    jal	__glMgrInitClampState
    # Line 1173
    swc1	$f6,48($sp)
    # Line 1177
    lw	$a2,1432($s0)
    lw	$a3,40($a2)
    sw	$a3,204($s0)
    # Line 1184
    li	$a0,225
    # Line 1178
    lw	$a2,44($a2)
    # Line 1184
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    # Line 1179
    sw	$zero,220($s0)
    # Line 1178
    sw	$a2,208($s0)
    # Line 1184
    jal	__glMgrInitPixelPath
    lw	$a1,824($s1)
    lw	$at,424($s0)
    lui	$v0,0x100
    ori	$v0,$v0,0x800
    and	$at,$at,$v0
    beqz	$at,.L0da81560
    # Line 1188
    lui	$v1,0x1
    ori	$v1,$v1,0xa000
    sw	$v1,220($s0)
.L0da81560:
    # Line 1190
    move	$a0,$s0
    # lw $t9, -30132($gp) # &__glMgrInitDepthFinalState
    move	$a1,$zero
    lw	$a3,824($s1)
    jal	__glMgrInitDepthFinalState
    addiu	$a2,$sp,0
    ld	$gp,56($sp)
    # Line 1191
    ld	$s0,64($sp)
    ld	$ra,80($sp)
    ld	$s1,88($sp)
    ld	$s2,72($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da81594:
    # Line 1099
    lwc1	$f0,_lit_437f0000
    sd	$ra,80($sp)
    # Line 1100
    b	.L0da813bc
    # Line 1099
    swc1	$f0,0($sp)
.L0da815a4:
    # Line 1103
    lwc1	$f1,_lit_477fff00
    sd	$ra,80($sp)
    # Line 1104
    b	.L0da813bc
    # Line 1103
    swc1	$f1,0($sp)
.L0da815b4:
    b	.L0da813bc
    # Line 1106
    swc1	$f4,0($sp)
.L0da815bc:
    # Line 1125
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,432($s1)
    jal	__glMgrInitPixelPath
    li	$a0,233
    # Line 1126
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    lw	$a1,736($s1)
    jal	__glMgrInitPixelPath
    li	$a0,229
    # Line 1128
    move	$a0,$s0
    # lw $t9, -30244($gp) # &__glMgrInitShiftAdd
    move	$a1,$zero
    lw	$a3,432($s1)
    jal	__glMgrInitShiftAdd
    addiu	$a2,$sp,8
    # Line 1130
    lw	$a3,1432($s0)
    lw	$a4,40($a3)
    # Line 1134
    addiu	$a2,$s0,108
    # Line 1130
    sw	$a4,204($s0)
    # Line 1134
    move	$a1,$zero
    # Line 1131
    lw	$a3,44($a3)
    # Line 1134
    move	$a0,$s0
    # lw $t9, -30232($gp) # &__glMgrInitI2FState
    # Line 1131
    sw	$a3,208($s0)
    # Line 1132
    sw	$zero,220($s0)
    # Line 1134
    jal	__glMgrInitI2FState
    lw	$a3,736($s1)
    b	.L0da81444
    # Line 1151
    lwc1	$f0,632($s2)
.end __glMgrInitDepthPipe

# Function: __glMgrInitCIPipe
# Declared: Line 1196 (Source lines: 1197-1212)
# Address: 0x0da8162c - 0x0da816cc (Size: 160 bytes, Frame: 48)
.globl __glMgrInitCIPipe
.ent __glMgrInitCIPipe
__glMgrInitCIPipe:
    # Line 1197
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    move	$s0,$a0
    # Line 1201
    li	$a0,230
    # Line 1197
    sw	$a1,44($sp)
    sd	$gp,8($sp)
    lui	$v0,0x18
    addiu	$v0,$v0,-12180
    addu	$gp,$t9,$v0
    # Line 1201
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    # Line 1197
    la	$at,SYMBOL_LOCATION
    sd	$ra,0($sp)
    # Line 1201
    jal	__glMgrInitPixelPath
    lw	$a1,428($at)
    lw	$v1,424($s0)
    lui	$a1,0x100
    ori	$a1,$a1,0x800
    and	$v1,$v1,$a1
    beqz	$v1,.L0da81688
    la	$a5,SYMBOL_LOCATION
    # Line 1205
    lui	$at,0x1
    ori	$at,$at,0xa000
    sw	$at,220($s0)
.L0da81688:
    # Line 1207
    move	$a0,$s0
    # lw $t9, -30148($gp) # &__glMgrInitMaskState
    move	$a1,$zero
    lw	$a3,428($a5)
    jal	__glMgrInitMaskState
    addiu	$a2,$sp,44
    # Line 1209
    lw	$v0,1432($s0)
    lw	$v1,40($v0)
    sw	$v1,204($s0)
    ld	$gp,8($sp)
    # Line 1210
    lw	$v0,44($v0)
    # Line 1212
    ld	$ra,0($sp)
    # Line 1211
    sw	$zero,220($s0)
    # Line 1210
    sw	$v0,208($s0)
    # Line 1212
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrInitCIPipe

# Function: __glMgrInitImagingPipe
# Declared: Line 1217 (Source lines: 1218-1356)
# Address: 0x0da816cc - 0x0da81b7c (Size: 1200 bytes, Frame: 224)
.globl __glMgrInitImagingPipe
.ent __glMgrInitImagingPipe
__glMgrInitImagingPipe:
    # Line 1218
    addiu	$sp,$sp,-96
    sd	$s0,56($sp)
    move	$s0,$a0
    sd	$s1,40($sp)
    sd	$gp,48($sp)
    # Line 1223
    li	$a1,1
    sb	$zero,2($sp)
    sb	$a1,1($sp)
    sb	$a1,0($sp)
    # Line 1218
    lui	$v0,0x18
    # Line 1226
    lw	$at,0($a0)
    # Line 1218
    addiu	$v0,$v0,-12340
    addu	$gp,$t9,$v0
    # Line 1226
    bnez	$at,.L0da81964
    lw	$s1,__glCurrentContext
    # Line 1239
    lw	$a0,1432($s0)
    lw	$v1,40($s0)
    sw	$v1,68($a0)
    # Line 1240
    lw	$v0,1432($s0)
    lw	$at,52($s0)
    sw	$at,72($v0)
    # Line 1241
    lw	$a5,1432($s0)
    lw	$a4,56($s0)
    sw	$a4,76($a5)
    # Line 1242
    lw	$a3,1432($s0)
    lw	$a2,60($s0)
    sw	$a2,80($a3)
    # Line 1243
    lw	$a0,1432($s0)
    lw	$v1,64($s0)
    sw	$v1,84($a0)
    # Line 1244
    lw	$v0,1432($s0)
    lwc1	$f0,80($s0)
    swc1	$f0,88($v0)
    # Line 1245
    lw	$at,1432($s0)
    lw	$a5,252($s0)
    sw	$a5,92($at)
    # Line 1246
    lw	$a4,1432($s0)
    lw	$a3,72($s0)
    sw	$a3,100($a4)
    # Line 1250
    li	$a0,2
    # Line 1252
    lw	$a4,1432($s0)
    # Line 1250
    sw	$a0,248($s0)
    # Line 1265
    lui	$a2,0x3e9e
    # Line 1252
    lw	$a5,32($a4)
    # Line 1265
    ori	$a2,$a2,0x8ff3
    lw	$a3,424($s0)
    # Line 1252
    sw	$a5,204($s0)
    # Line 1257
    li	$v1,0x80c8
    # Line 1253
    lw	$at,36($a4)
    # Line 1265
    and	$a2,$a3,$a2
    lui	$a5,0x100e
    # Line 1253
    sw	$at,208($s0)
    # Line 1257
    lw	$at,1504($s0)
    # Line 1254
    lw	$v0,40($a4)
    # Line 1265
    ori	$a5,$a5,0x8f03
    # Line 1257
    addu	$at,$at,$v1
    # Line 1254
    sw	$v0,212($s0)
    # Line 1257
    sra	$at,$at,0x1
    # Line 1255
    lw	$v1,44($a4)
    # Line 1257
    sw	$at,220($s0)
    # Line 1265
    beq	$a2,$a5,.L0da81804
    # Line 1255
    sw	$v1,216($s0)
    # Line 1265
    lui	$at,0x1000
    ori	$at,$at,0x480c
    lui	$a2,0x3002
    ori	$a2,$a2,0x483c
    and	$a2,$a3,$a2
    beq	$a2,$at,.L0da81804
    lui	$v0,0x1001
    ori	$v0,$v0,0x80c
    lui	$at,0x3021
    ori	$at,$at,0x82c
    and	$at,$a3,$at
    bne	$at,$v0,.L0da81878
    li	$v1,6656
    lw	$v0,72($a4)
    beq	$v0,$v1,.L0da8187c
    # Line 1286
    move	$a1,$zero
.L0da81804:
    # Line 1265
    lw	$a2,68($a4)
    li	$at,6410
    beq	$a2,$at,.L0da8186c
    lui	$v1,0x100
    lw	$a3,44($s0)
.L0da81818:
    lw	$v0,40($s0)
    bne	$v0,$a3,.L0da81878
    li	$at,6406
    lw	$a2,52($s0)
    lw	$v1,48($s0)
    bne	$v1,$a2,.L0da8187c
    # Line 1286
    move	$a1,$zero
    # Line 1265
    beq	$a3,$at,.L0da81878
    sd	$ra,64($sp)
    # Line 1273
    move	$a1,$s0
    # lw $t9, -31956($gp) # &__glMgrNewInitFastPath
    move	$a0,$s1
    # Line 1272
    li	$v0,6
    # Line 1273
    bal __glMgrNewInitFastPath
    # Line 1272
    sw	$v0,248($s0)
    ld	$gp,48($sp)
    # Line 1274
    ld	$ra,64($sp)
    ld	$s0,56($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da8186c:
    # Line 1265
    and	$v1,$a3,$v1
    bnezl	$v1,.L0da81818
    lw	$a3,44($s0)
.L0da81878:
    # Line 1286
    move	$a1,$zero
.L0da8187c:
    move	$a0,$zero
    sd	$ra,64($sp)
    # Line 1283
    lwc1	$f2,_lit_3f800000
    # Line 1280
    mtc1	$zero,$f1
    # Line 1286
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    # Line 1283
    swc1	$f2,20($sp)
    # Line 1282
    swc1	$f1,16($sp)
    # Line 1281
    swc1	$f1,12($sp)
    # Line 1286
    jal	__glMgrInitPixelPath
    # Line 1280
    swc1	$f1,8($sp)
    # Line 1286
    lw	$a3,424($s0)
    andi	$a2,$a3,0x8000
    beqz	$a2,.L0da81910
    # Line 1289
    nop	# was lw $t9, -31952($gp) # &__glMgrInitRGBTransfer
    move	$a0,$s0
    bal __glMgrInitRGBTransfer
    addiu	$a1,$sp,8
    # Line 1290
    # lw $t9, -31944($gp) # &__glMgrInitRGBMap
    move	$a0,$s1
    move	$a1,$s0
    bal __glMgrInitRGBMap
    addiu	$a2,$sp,8
    # Line 1291
    # lw $t9, -31932($gp) # &__glMgrInitRGBPipe
    move	$a0,$s1
    move	$a1,$s0
    bal __glMgrInitRGBPipe
    addiu	$a2,$sp,8
    lw	$a0,248($s0)
    ld	$ra,64($sp)
.L0da818f0:
    # Line 1308
    andi	$at,$a0,0x1
    beqz	$at,.L0da8198c
    # Line 1312
    lui	$a2,0x1100
    ld	$gp,48($sp)
    ld	$s0,56($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da81910:
    # Line 1291
    andi	$v0,$a3,0x4000
    beqz	$v0,.L0da81a30
    # Line 1293
    nop	# was lw $t9, -31948($gp) # &__glMgrInitCITransfer
    bal __glMgrInitCITransfer
    move	$a0,$s0
    lw	$v1,424($s0)
    lui	$a2,0x2
    and	$v1,$v1,$a2
    beqz	$v1,.L0da81a94
    # Line 1295
    nop	# was lw $t9, -31940($gp) # &__glMgrInitCIToRGB
    move	$a0,$s0
    bal __glMgrInitCIToRGB
    addiu	$a1,$sp,8
    # Line 1296
    # lw $t9, -31932($gp) # &__glMgrInitRGBPipe
    move	$a0,$s1
    move	$a1,$s0
    bal __glMgrInitRGBPipe
    addiu	$a2,$sp,8
    lw	$a0,248($s0)
    b	.L0da818f0
    ld	$ra,64($sp)
.L0da81964:
    # Line 1231
    # lw $t9, -30024($gp) # &__glMgrInitPixelPipe
    sd	$ra,64($sp)
    jal	__glMgrInitPixelPipe
    move	$a0,$s0
    ld	$gp,48($sp)
    # Line 1232
    ld	$ra,64($sp)
    ld	$s0,56($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da8198c:
    # Line 1312
    lw	$a3,424($s0)
    lui	$a0,0x100
    and	$a2,$a3,$a2
    beqz	$a2,.L0da81b1c
    ori	$a0,$a0,0x800
.L0da819a0:
    # Line 1330
    and	$at,$a0,$a3
    bnez	$at,.L0da819dc
    # Line 1350
    nop	# was lw $t9, -30256($gp) # &__glMgrInitPixelPath
    # Line 1338
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    move	$a1,$zero
    jal	__glMgrInitPixelPath
    li	$a0,235
    mtc1	$zero,$f4
    lwc1	$f6,724($s1)
    c.lt.s	$f6,$f4
    nop
    bc1f	.L0da81a58
    la	$a5,SYMBOL_LOCATION
    # Line 1340
    b	.L0da81a5c
    neg.s	$f5,$f6
.L0da819dc:
    # Line 1350
    move	$a1,$zero
    jalr	$t9
    li	$a0,234
    # Line 1352
    move	$a0,$s0
    # lw $t9, -30156($gp) # &__glMgrInitCleanupState
    move	$a1,$zero
    move	$a3,$zero
    jal	__glMgrInitCleanupState
    addiu	$a2,$sp,0
.L0da81a00:
    # Line 1355
    move	$a0,$s0
    # lw $t9, -30152($gp) # &__glMgrInitPackingState
    move	$a1,$zero
    move	$a2,$zero
    jal	__glMgrInitPackingState
    move	$a3,$zero
    ld	$ra,64($sp)
    ld	$gp,48($sp)
    # Line 1356
    ld	$s0,56($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da81a30:
    # Line 1300
    lw	$v0,1432($s0)
    lw	$v0,68($v0)
    li	$v1,6401
    beq	$v0,$v1,.L0da81acc
    # Line 1308
    nop	# was lw $t9, -31928($gp) # &__glMgrInitDepthPipe
    bal __glMgrInitDepthPipe
    move	$a0,$s0
    lw	$a0,248($s0)
    b	.L0da818f0
    ld	$ra,64($sp)
.L0da81a58:
    # Line 1340
    mov.s	$f5,$f6
.L0da81a5c:
    ldc1	$f3,_lit8_3ff0000000000000
    cvt.d.s	$f5,$f5
    div.d	$f3,$f3,$f5
    # Line 1343
    lw	$a3,580($a5)
    addiu	$a2,$sp,32
    move	$a1,$zero
    # lw $t9, -30164($gp) # &__glMgrInitZoomState
    # Line 1340
    cvt.s.d	$f3,$f3
    # Line 1343
    move	$a0,$s0
    # Line 1341
    swc1	$f4,36($sp)
    # Line 1343
    jal	__glMgrInitZoomState
    # Line 1340
    swc1	$f3,32($sp)
    b	.L0da81a00
    nop
.L0da81a94:
    # Line 1298
    # lw $t9, -31936($gp) # &__glMgrInitCIMap
    move	$a0,$s0
    bal __glMgrInitCIMap
    li	$a1,8
    # Line 1299
    # lw $t9, -31924($gp) # &__glMgrInitCIPipe
    move	$a0,$s0
    bal __glMgrInitCIPipe
    lw	$a1,30788($s1)
    # Line 1300
    lw	$a0,248($s0)
    ld	$ra,64($sp)
    li	$a2,-3
    and	$a0,$a0,$a2
    b	.L0da818f0
    sw	$a0,248($s0)
.L0da81acc:
    # Line 1303
    # lw $t9, -31948($gp) # &__glMgrInitCITransfer
    bal __glMgrInitCITransfer
    move	$a0,$s0
    # Line 1304
    # lw $t9, -31936($gp) # &__glMgrInitCIMap
    move	$a0,$s0
    bal __glMgrInitCIMap
    li	$a1,4
    # Line 1305
    move	$a0,$s0
    lw	$a2,31172($s1)
    # lw $t9, -31924($gp) # &__glMgrInitCIPipe
    li	$a1,2
    sllv	$a1,$a1,$a2
    bal __glMgrInitCIPipe
    addiu	$a1,$a1,-1
    # Line 1306
    lw	$a0,248($s0)
    ld	$ra,64($sp)
    li	$a2,-3
    and	$a0,$a0,$a2
    b	.L0da818f0
    sw	$a0,248($s0)
.L0da81b1c:
    # Line 1319
    # lw $t9, -30256($gp) # &__glMgrInitPixelPath
    move	$a1,$zero
    jal	__glMgrInitPixelPath
    li	$a0,277
    lw	$at,424($s0)
    lui	$a5,0x100
    ori	$a5,$a5,0x800
    and	$at,$at,$a5
    beqz	$at,.L0da81b74
    li	$a2,1
    # Line 1327
    sw	$zero,24($sp)
.L0da81b48:
    # Line 1330
    addiu	$a2,$sp,24
    move	$a1,$zero
    # lw $t9, -30168($gp) # &__glMgrInitXZoomState
    # Line 1327
    la	$a3,SYMBOL_LOCATION
    # Line 1330
    move	$a0,$s0
    jal	__glMgrInitXZoomState
    lw	$a3,1104($a3)
    lw	$a3,424($s0)
    lui	$a0,0x100
    b	.L0da819a0
    ori	$a0,$a0,0x800
.L0da81b74:
    # Line 1323
    b	.L0da81b48
    sw	$a2,24($sp)
.end __glMgrInitImagingPipe

# Function: __glMgrInitHostToRSS
# Declared: Line 1359 (Source lines: 1361-1551)
# Address: 0x0da81b7c - 0x0da82594 (Size: 2584 bytes, Frame: 208)
.globl __glMgrInitHostToRSS
.ent __glMgrInitHostToRSS
__glMgrInitHostToRSS:
    # Line 1370
    li	$at,5
    # Line 1361
    addiu	$sp,$sp,-208
    sd	$s3,128($sp)
    sdc1	$f24,32($sp)
    sd	$gp,112($sp)
    lui	$v0,0x18
    addiu	$v0,$v0,-13540
    addu	$gp,$t9,$v0
    # Line 1366
    mtc1	$zero,$f24
    # Line 1361
    move	$s3,$a3
    sd	$s0,104($sp)
    # Line 1366
    swc1	$f24,12($sp)
    swc1	$f24,8($sp)
    swc1	$f24,4($sp)
    swc1	$f24,0($sp)
    # Line 1361
    move	$s0,$a1
    # Line 1370
    lw	$a5,140($a1)
    sd	$a2,48($sp)
    sd	$s4,120($sp)
    beq	$a5,$at,.L0da81f54
    # Line 1361
    move	$s4,$a0
    # Line 1370
    li	$v1,6
    beq	$a5,$v1,.L0da81f54
    li	$a4,7
    beql	$a5,$a4,.L0da81f58
    sd	$s5,152($sp)
    # Line 1386
    beqz	$s3,.L0da81c30
    # Line 1387
    nop	# was lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$sp,0
    sd	$ra,160($sp)
    jal	__glMgrim_GetFloatv
    li	$a0,2823
    # Line 1389
    lwc1	$f6,4($sp)
    # Line 1388
    ldc1	$f1,_lit8_40e7fff000000000
    # Line 1389
    cvt.d.s	$f6,$f6
    # Line 1388
    lwc1	$f0,0($sp)
    # Line 1389
    add.d	$f6,$f6,$f1
    # Line 1388
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f1
    # Line 1389
    cvt.s.d	$f6,$f6
    # Line 1388
    cvt.s.d	$f0,$f0
    ld	$ra,160($sp)
    # Line 1389
    swc1	$f6,4($sp)
    b	.L0da81c3c
    # Line 1388
    swc1	$f0,0($sp)
.L0da81c30:
    # Line 1391
    mov.s	$f6,$f24
    swc1	$f24,0($sp)
    swc1	$f24,4($sp)
.L0da81c3c:
    lwc1	$f4,720($s4)
    c.lt.s	$f4,$f24
    li	$a0,1
    bc1fl	.L0da81c50
    move	$a0,$zero
.L0da81c50:
    beqz	$a0,.L0da820e0
    # Line 1394
    ldc1	$f5,_lit8_3ff0000000000000
    neg.s	$f7,$f4
.L0da81c5c:
    cvt.d.s	$f0,$f7
    c.lt.d	$f5,$f0
    nop
    bc1fl	.L0da81c90
    sd	$zero,96($sp)
    lw	$at,424($s0)
    lui	$v0,0x1000
    and	$at,$at,$v0
    beqz	$at,.L0da81c8c
    li	$v1,1
    b	.L0da81c90
    sd	$v1,96($sp)
.L0da81c8c:
    sd	$zero,96($sp)
.L0da81c90:
    ld	$a4,96($sp)
    beqz	$a0,.L0da820e8
    sd	$a4,72($sp)
    # Line 1396
    neg.s	$f7,$f4
.L0da81ca0:
    # Line 1402
    trunc.w.s	$f0,$f6
    # Line 1396
    cvt.d.s	$f1,$f7
    c.lt.d	$f1,$f5
    nop
    bc1t	.L0da81f08
    # Line 1403
    dmtc1	$zero,$f4
    # Line 1396
    lw	$at,424($s0)
    lui	$v0,0x1000
    and	$at,$at,$v0
    beqzl	$at,.L0da81f0c
    sd	$s2,136($sp)
    sd	$s2,136($sp)
    move	$a0,$zero
.L0da81cd4:
    # Line 1399
    lw	$v1,1532($s0)
    lw	$v0,36($s0)
    subu	$v0,$v0,$v1
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f3,724($s4)
    mul.s	$f2,$f3,$f2
    add.s	$f1,$f2,$f6
    # Line 1403
    trunc.w.s	$f2,$f2
    # Line 1399
    trunc.w.s	$f1,$f1
    # Line 1396
    move	$a1,$a0
    # Line 1402
    mfc1	$at,$f0
    # Line 1403
    cvt.d.s	$f3,$f3
    # Line 1399
    mfc1	$s2,$f1
    # Line 1403
    c.lt.d	$f3,$f4
    mfc1	$a3,$f2
    # Line 1402
    subu	$s2,$s2,$at
    # Line 1403
    bc1f	.L0da81d34
    subu	$a3,$a3,$s2
    sd	$ra,160($sp)
    sd	$a0,64($sp)
    sd	$a1,40($sp)
    # Line 1408
    negu	$a3,$a3
.L0da81d34:
    # Line 1410
    mtc1	$a3,$f3
    nop
    cvt.s.w	$f3,$f3
    sd	$a1,40($sp)
    # Line 1411
    li	$a1,-2
    sd	$a0,64($sp)
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sd	$ra,160($sp)
    # Line 1410
    swc1	$f3,24($sp)
    # Line 1411
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,24($sp)
    lwc1	$f6,724($s4)
    c.lt.s	$f6,$f24
    nop
    bc1f	.L0da81d7c
    ldc1	$f4,_lit8_3ff0000000000000
    # Line 1412
    b	.L0da81d80
    neg.s	$f5,$f6
.L0da81d7c:
    mov.s	$f5,$f6
.L0da81d80:
    cvt.d.s	$f5,$f5
    div.d	$f4,$f4,$f5
    cvt.s.d	$f4,$f4
    # Line 1413
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 1412
    swc1	$f4,24($sp)
    # Line 1413
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,24($sp)
    # Line 1414
    la	$a0,SYMBOL_LOCATION
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    lw	$a0,580($a0)
    li	$a1,-1
    jal	__glMgrInitPixelStateCRAM
    addiu	$a0,$a0,3
    dmtc1	$zero,$f4
    lw	$a0,188($s0)
    ld	$a4,96($sp)
    lw	$a1,1432($s0)
    ld	$ra,160($sp)
    beqz	$a4,.L0da82024
    lw	$a1,52($a1)
    # Line 1417
    lw	$at,416($s0)
    # Line 1418
    mult	$a1,$at
    sd	$s5,152($sp)
    # Line 1419
    move	$s5,$a0
    sd	$s1,144($sp)
    # Line 1420
    sw	$at,20($sp)
    # Line 1417
    sw	$at,16($sp)
    # Line 1418
    mflo	$s1
    addiu	$s1,$s1,255
    sra	$s1,$s1,0x8
.L0da81dfc:
    # Line 1464
    addu	$v0,$a0,$s1
    sw	$v0,188($s0)
    lwc1	$f0,720($s4)
    cvt.d.s	$f0,$f0
    c.lt.d	$f4,$f0
    # Line 1476
    move	$a0,$zero
    # Line 1464
    bc1f	.L0da81e30
    # Line 1475
    li	$a2,1
    # Line 1471
    bgtz	$s2,.L0da81e44
    # Line 1467
    li	$a1,1
.L0da81e24:
    # Line 1479
    li	$a0,-1
    b	.L0da81e44
    # Line 1478
    li	$a2,-1
.L0da81e30:
    # Line 1471
    negu	$s1,$s1
    # Line 1469
    li	$a1,-1
    # Line 1470
    li	$v1,-1
    # Line 1471
    blez	$s2,.L0da81e24
    # Line 1470
    subu	$s5,$v1,$s5
.L0da81e44:
    # Line 1482
    beqz	$s3,.L0da81e74
    # Line 1484
    lwc1	$f1,0($sp)
    ldc1	$f3,_lit8_c0e7fff000000000
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f3
    # Line 1485
    lwc1	$f2,4($sp)
    cvt.d.s	$f2,$f2
    add.d	$f2,$f2,$f3
    # Line 1484
    cvt.s.d	$f1,$f1
    # Line 1485
    cvt.s.d	$f2,$f2
    # Line 1484
    swc1	$f1,0($sp)
    # Line 1485
    swc1	$f2,4($sp)
.L0da81e74:
    # Line 1493
    beqz	$s1,.L0da81fa0
    nop
    beqz	$s2,.L0da81fa0
    move	$a3,$zero
.L0da81e84:
    bnezl	$a3,.L0da81ed8
    ld	$gp,112($sp)
    lw	$a3,24($s0)
    addu	$a3,$a3,$s5
    mtc1	$a3,$f6
    nop
    cvt.s.w	$f6,$f6
    lwc1	$f5,0($sp)
    add.s	$f6,$f6,$f5
    c.lt.s	$f6,$f24
    nop
    bc1f	.L0da81f14
    mov.s	$f4,$f6
    b	.L0da81f14
    neg.s	$f4,$f6
.L0da81ec0:
    c.lt.s	$f7,$f4
    sd	$a0,88($sp)
    sd	$a1,56($sp)
    bc1f	.L0da82170
    sd	$a2,80($sp)
.L0da81ed4:
    ld	$gp,112($sp)
.L0da81ed8:
    ld	$s1,144($sp)
    ld	$s2,136($sp)
    ld	$s3,128($sp)
    ld	$s4,120($sp)
    # Line 1492
    lw	$a4,248($s0)
    # Line 1493
    ld	$s5,152($sp)
    ldc1	$f24,32($sp)
    # Line 1492
    ori	$a4,$a4,0x1
    sw	$a4,248($s0)
    # Line 1493
    ld	$s0,104($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0da81f08:
    sd	$s2,136($sp)
.L0da81f0c:
    # Line 1396
    b	.L0da81cd4
    li	$a0,1
.L0da81f14:
    # Line 1493
    lwc1	$f7,_lit_46400000
    c.lt.s	$f7,$f4
    nop
    bc1t	.L0da81ed4
    addu	$at,$a3,$s1
    subu	$at,$at,$a1
    mtc1	$at,$f4
    nop
    cvt.s.w	$f4,$f4
    add.s	$f4,$f4,$f5
    c.lt.s	$f4,$f24
    nop
    bc1f	.L0da81fa8
    mov.s	$f5,$f4
    b	.L0da81fa8
    neg.s	$f5,$f4
.L0da81f54:
    sd	$s5,152($sp)
.L0da81f58:
    ld	$s5,48($sp)
    # Line 1375
    move	$a0,$zero
    sd	$zero,72($sp)
    sd	$zero,40($sp)
    # Line 1381
    li	$a1,1
    li	$a2,1
    sd	$s2,136($sp)
    # Line 1378
    lw	$s2,36($s0)
    sd	$s1,144($sp)
    # Line 1376
    lw	$s1,1432($s0)
    # Line 1379
    li	$v1,256
    # Line 1377
    lw	$v0,188($s0)
    # Line 1376
    lw	$s1,52($s1)
    # Line 1380
    sw	$v1,20($sp)
    # Line 1379
    sw	$v1,16($sp)
    # Line 1377
    addu	$v0,$v0,$s1
    # Line 1383
    b	.L0da81e44
    # Line 1377
    sw	$v0,188($s0)
.L0da81fa0:
    # Line 1493
    b	.L0da81e84
    li	$a3,1
.L0da81fa8:
    c.lt.s	$f7,$f5
    nop
    bc1tl	.L0da81ed8
    ld	$gp,112($sp)
    lw	$a3,28($s0)
    addu	$a3,$a3,$a0
    mtc1	$a3,$f5
    nop
    cvt.s.w	$f5,$f5
    lwc1	$f6,4($sp)
    add.s	$f5,$f5,$f6
    c.lt.s	$f5,$f24
    nop
    bc1f	.L0da81fe8
    mov.s	$f4,$f5
    neg.s	$f4,$f5
.L0da81fe8:
    c.lt.s	$f7,$f4
    nop
    bc1t	.L0da81ed4
    addu	$a4,$a3,$s2
    subu	$a4,$a4,$a2
    mtc1	$a4,$f5
    nop
    cvt.s.w	$f5,$f5
    add.s	$f5,$f5,$f6
    c.lt.s	$f5,$f24
    nop
    bc1f	.L0da81ec0
    mov.s	$f4,$f5
    b	.L0da81ec0
    neg.s	$f4,$f5
.L0da82024:
    ld	$at,64($sp)
    # Line 1420
    beqz	$at,.L0da82570
    ld	$v0,48($sp)
    addu	$v0,$a1,$v0
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f1,720($s4)
    mul.s	$f0,$f1,$f0
    lwc1	$f5,0($sp)
    add.s	$f0,$f0,$f5
    trunc.w.s	$f0,$f0
    cvt.d.s	$f1,$f1
    c.lt.d	$f4,$f1
    mfc1	$a3,$f0
    bc1f	.L0da820f0
    sd	$s1,144($sp)
    # Line 1429
    mtc1	$a0,$f1
    nop
    cvt.s.w	$f1,$f1
    add.s	$f1,$f1,$f5
    trunc.w.s	$f1,$f1
    mfc1	$a2,$f1
    nop
    subu	$a2,$a3,$a2
    beqz	$a2,.L0da82164
    move	$s1,$a2
    # Line 1430
    lw	$v1,412($s0)
    mult	$v1,$a1
    mflo	$v0
    nop
    sll	$v0,$v0,0x8
    div	$zero,$v0,$a2
    mflo	$at
    nop
    nop
    # Line 1438
    div	$zero,$v0,$at
    # Line 1430
    teq	$a2,$zero,0x7
    sd	$s5,152($sp)
    # Line 1438
    teq	$at,$zero,0x7
    # Line 1430
    sw	$at,16($sp)
    # Line 1438
    mflo	$a4
    subu	$a4,$a4,$a2
    sll	$a4,$a4,0x8
    addu	$a4,$a4,$at
    b	.L0da82164
    sw	$a4,20($sp)
.L0da820e0:
    b	.L0da81c5c
    # Line 1394
    mov.s	$f7,$f4
.L0da820e8:
    b	.L0da81ca0
    # Line 1396
    mov.s	$f7,$f4
.L0da820f0:
    # Line 1447
    mtc1	$a0,$f2
    nop
    cvt.s.w	$f2,$f2
    sub.s	$f2,$f5,$f2
    trunc.w.s	$f2,$f2
    mfc1	$a2,$f2
    nop
    subu	$a2,$a2,$a3
    beqz	$a2,.L0da82164
    move	$s1,$a2
    # Line 1448
    lw	$v1,412($s0)
    mult	$v1,$a1
    mflo	$v0
    nop
    sll	$v0,$v0,0x8
    div	$zero,$v0,$a2
    mflo	$at
    nop
    nop
    # Line 1456
    div	$zero,$v0,$at
    # Line 1448
    teq	$a2,$zero,0x7
    sd	$s5,152($sp)
    # Line 1456
    teq	$at,$zero,0x7
    # Line 1448
    sw	$at,16($sp)
    # Line 1456
    mflo	$a4
    subu	$a4,$a4,$a2
    sll	$a4,$a4,0x8
    addu	$a4,$a4,$at
    sw	$a4,20($sp)
.L0da82164:
    sd	$s5,152($sp)
    b	.L0da81dfc
    move	$s5,$a0
.L0da82170:
    # Line 1496
    move	$a3,$zero
    lw	$a1,16($sp)
    li	$a0,341
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    la	$a2,SYMBOL_LOCATION
    sd	$ra,160($sp)
    jal	__glMgrRSSRegShadow
    lw	$a2,92($a2)
    # Line 1497
    li	$a3,1
    lw	$a1,20($sp)
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    la	$a2,SYMBOL_LOCATION
    li	$a0,340
    jal	__glMgrRSSRegShadow
    lw	$a2,88($a2)
    # Line 1508
    li	$a2,1
    li	$a0,345
    # Line 1500
    li	$a7,-1793
    # Line 1499
    lui	$a3,0x1
    lw	$a6,1432($s0)
    addu	$a3,$s4,$a3
    lw	$a4,-26652($a3)
    lw	$a6,100($a6)
    li	$t0,-241
    and	$a4,$a4,$t0
    andi	$a6,$a6,0xf
    sll	$a6,$a6,0x4
    or	$a4,$a4,$a6
    # Line 1500
    and	$a7,$a4,$a7
    # Line 1505
    ld	$a4,72($sp)
    lui	$a1,0x8
    nor	$a1,$a1,$zero
    andi	$a4,$a4,0x1
    # Line 1501
    li	$t0,-14337
    and	$a7,$a7,$t0
    sw	$a7,-26652($a3)
    # Line 1505
    sll	$a4,$a4,0x13
    # Line 1502
    lw	$t0,1432($s0)
    lui	$t1,0x1
    ori	$t1,$t1,0xc000
    lbu	$t0,65($t0)
    nor	$t1,$t1,$zero
    and	$a7,$a7,$t1
    andi	$t0,$t0,0x7
    sll	$t0,$t0,0xe
    or	$a7,$a7,$t0
    sw	$a7,-26652($a3)
    # Line 1503
    lui	$t1,0x2
    lbu	$t0,1109($s4)
    nor	$t1,$t1,$zero
    and	$a7,$a7,$t1
    sltu	$t0,$zero,$t0
    sll	$t0,$t0,0x11
    or	$a7,$a7,$t0
    # Line 1504
    lui	$t0,0x4
    nor	$t0,$t0,$zero
    and	$a7,$a7,$t0
    # Line 1505
    and	$a1,$a7,$a1
    or	$a1,$a1,$a4
    # Line 1506
    lui	$a4,0x10
    nor	$a4,$a4,$zero
    and	$a1,$a1,$a4
    ld	$a4,40($sp)
    # Line 1508
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a5,5
    # Line 1506
    andi	$a4,$a4,0x1
    sll	$a4,$a4,0x14
    or	$a1,$a1,$a4
    sw	$a1,-26652($a3)
    # Line 1507
    lui	$a6,0x80
    lw	$a4,140($s0)
    nor	$a6,$a6,$zero
    and	$a1,$a1,$a6
    xor	$a4,$a4,$a5
    sltu	$a4,$zero,$a4
    sll	$a4,$a4,0x17
    or	$a1,$a1,$a4
    # Line 1508
    jal	__glMgrRSSRegSet
    # Line 1507
    sw	$a1,-26652($a3)
    # Line 1508
    lw	$a4,52($s0)
    li	$at,6656
    bne	$a4,$at,.L0da82368
    la	$s4,SYMBOL_LOCATION
    lw	$v0,248($s0)
    andi	$v0,$v0,0x4
    beqz	$v0,.L0da8236c
    # Line 1521
    nop	# was lw $t9, -30264($gp) # &__glMgrLoadRasterPosInfo
    # Line 1510
    lw	$v1,140($s0)
    li	$a4,5
    beq	$v1,$a4,.L0da82368
    # Line 1514
    move	$a2,$zero
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a0,92
    lui	$a1,0xff
    jal	__glMgrRSSRegSet
    ori	$a1,$a1,0xf000
    # Line 1515
    move	$a2,$zero
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a0,93
    lui	$a1,0xff
    jal	__glMgrRSSRegSet
    ori	$a1,$a1,0xf000
    # Line 1516
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    move	$a2,$zero
    move	$a1,$zero
    jal	__glMgrRSSRegSet
    li	$a0,94
    # Line 1517
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a2,1
    move	$a1,$zero
    jal	__glMgrRSSRegSet
    li	$a0,95
    # Line 1518
    move	$a3,$zero
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    lw	$a2,20($s4)
    move	$a1,$zero
    jal	__glMgrRSSRegShadow
    li	$a0,320
    # Line 1519
    li	$a3,1
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    lw	$a2,24($s4)
    move	$a1,$zero
    jal	__glMgrRSSRegShadow
    li	$a0,321
    b	.L0da82374
    nop
.L0da82368:
    # Line 1521
    # lw $t9, -30264($gp) # &__glMgrLoadRasterPosInfo
.L0da8236c:
    jal	__glMgrLoadRasterPosInfo
    nop
.L0da82374:
    # Line 1524
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    lw	$a0,24($s0)
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    addu	$a0,$a0,$s5
    # Line 1525
    ld	$a2,88($sp)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    lw	$a0,28($s0)
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    addu	$a0,$a0,$a2
    # Line 1526
    li	$a1,-2
    lw	$a0,24($s0)
    ld	$a2,56($sp)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    addu	$a0,$a0,$s5
    addu	$a0,$a0,$s1
    jal	__glMgrInitPixelStateERAM
    subu	$a0,$a0,$a2
    # Line 1528
    ld	$a2,88($sp)
    lw	$a0,28($s0)
    li	$a1,-2
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    addu	$a0,$a0,$a2
    ld	$a2,80($sp)
    addu	$a0,$a0,$s2
    jal	__glMgrInitPixelStateERAM
    subu	$a0,$a0,$a2
    bltz	$s2,.L0da82584
    # Line 1530
    move	$a3,$s2
.L0da823ec:
    lw	$a1,1432($s0)
    lw	$a1,52($a1)
    lw	$a2,412($s0)
    mult	$a1,$a2
    li	$a1,-2
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    mflo	$a0
    andi	$a0,$a0,0xffff
    sll	$a2,$a3,0x10
    jal	__glMgrInitPixelStateERAM
    or	$a0,$a0,$a2
    # Line 1533
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    move	$a0,$s3
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    # Line 1534
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-1
    jal	__glMgrInitPixelStateERAM
    lw	$a0,1184($s4)
    lw	$a4,12($s0)
    beqz	$a4,.L0da82548
    ld	$ra,160($sp)
    # Line 1538
    move	$a2,$s2
    la	$a1,sub_0dbf0000
    la	$s4,__iob
    # lw $t9, -17908($gp) # &fprintf
    addiu	$a1,$a1,-11840
    addiu	$s4,$s4,32
    jal	fprintf
    move	$a0,$s4
    # Line 1539
    move	$a0,$s4
    la	$a1,sub_0dbf0000
    ld	$a4,88($sp)
    lw	$a3,28($s0)
    lw	$a2,24($s0)
    # lw $t9, -17908($gp) # &fprintf
    addu	$a3,$a3,$a4
    addu	$a2,$a2,$s5
    jal	fprintf
    addiu	$a1,$a1,-11800
    # Line 1541
    move	$a0,$s4
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbf0000
    ld	$a2,80($sp)
    jal	fprintf
    addiu	$a1,$a1,-11760
    # Line 1542
    move	$a0,$s4
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbf0000
    ld	$a4,88($sp)
    lw	$a3,28($s0)
    addiu	$a1,$a1,-11736
    lw	$a2,24($s0)
    addu	$a3,$a3,$a4
    ld	$a4,80($sp)
    addu	$a2,$a2,$s5
    addu	$a3,$a3,$s2
    subu	$a3,$a3,$a4
    ld	$a4,56($sp)
    addu	$a2,$a2,$s1
    jal	fprintf
    subu	$a2,$a2,$a4
    ld	$s1,144($sp)
    bltz	$s2,.L0da8258c
    ld	$s5,152($sp)
    # Line 1545
    move	$a3,$s2
.L0da824f4:
    lw	$a2,1432($s0)
    lw	$a4,412($s0)
    lw	$a2,52($a2)
    mult	$a2,$a4
    move	$a0,$s4
    ld	$s2,136($sp)
    la	$a1,sub_0dbf0000
    sll	$a3,$a3,0x10
    # lw $t9, -17908($gp) # &fprintf
    addiu	$a1,$a1,-11696
    mflo	$a2
    andi	$a2,$a2,0xffff
    jal	fprintf
    or	$a2,$a2,$a3
    # Line 1549
    move	$a0,$s4
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbf0000
    move	$a2,$s3
    jal	fprintf
    addiu	$a1,$a1,-11664
    ld	$ra,160($sp)
.L0da82548:
    ld	$gp,112($sp)
    # Line 1551
    ld	$s0,104($sp)
    ld	$s1,144($sp)
    ld	$s2,136($sp)
    ld	$s3,128($sp)
    ld	$s4,120($sp)
    ld	$s5,152($sp)
    ldc1	$f24,32($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0da82570:
    sd	$s1,144($sp)
    # Line 1460
    move	$s1,$a1
    sd	$s5,152($sp)
    b	.L0da81dfc
    # Line 1461
    ld	$s5,48($sp)
.L0da82584:
    # Line 1530
    b	.L0da823ec
    negu	$a3,$s2
.L0da8258c:
    # Line 1545
    b	.L0da824f4
    negu	$a3,$s2
.end __glMgrInitHostToRSS

# Function: __glMgrInitPixelTexture
# Declared: Line 1554 (Source lines: 1556-1765)
# Address: 0x0da82594 - 0x0da83000 (Size: 2668 bytes, Frame: 240)
.globl __glMgrInitPixelTexture
.ent __glMgrInitPixelTexture
__glMgrInitPixelTexture:
    # Line 1569
    lw	$v1,36($a1)
    # Line 1556
    addiu	$sp,$sp,-240
    sd	$s3,168($sp)
    # Line 1567
    lui	$s3,0x1
    addu	$s3,$a0,$s3
    sd	$s3,40($sp)
    lbu	$s3,-25436($s3)
    # Line 1569
    lw	$a6,400($a1)
    addu	$v1,$v1,$s3
    subu	$v1,$v1,$a6
    addiu	$v1,$v1,-1
    div	$zero,$v1,$s3
    # Line 1583
    li	$a5,1
    # Line 1581
    li	$a4,256
    # Line 1572
    li	$at,5
    sd	$s0,144($sp)
    # Line 1556
    move	$s0,$a1
    sd	$s4,160($sp)
    move	$s4,$a0
    sd	$gp,152($sp)
    lui	$v0,0x18
    addiu	$v0,$v0,-16124
    addu	$gp,$t9,$v0
    # Line 1576
    move	$a0,$a2
    # Line 1572
    lw	$a3,140($a1)
    # Line 1569
    teq	$s3,$zero,0x7
    mflo	$a7
    # Line 1572
    beq	$a3,$at,.L0da8261c
    # Line 1569
    sw	$a7,404($a1)
    # Line 1572
    li	$at,6
    beq	$a3,$at,.L0da8261c
    li	$v0,7
    bnel	$a3,$v0,.L0da82758
    sd	$a2,64($sp)
.L0da8261c:
    # Line 1580
    mult	$a7,$s3
    # Line 1577
    move	$a3,$zero
    sd	$zero,48($sp)
    sd	$zero,56($sp)
    # Line 1583
    li	$a1,1
    sd	$s2,192($sp)
    # Line 1578
    lw	$s2,1432($s0)
    # Line 1582
    sw	$a4,4($sp)
    # Line 1579
    lw	$v1,188($s0)
    # Line 1578
    lw	$s2,52($s2)
    # Line 1581
    sw	$a4,0($sp)
    sd	$s1,184($sp)
    # Line 1579
    addu	$v1,$v1,$s2
    # Line 1580
    mflo	$s1
    # Line 1678
    bltz	$s1,.L0da82994
    # Line 1579
    sw	$v1,188($s0)
.L0da8265c:
    # Line 1680
    move	$t0,$s1
.L0da82660:
    addu	$v0,$t0,$s3
    subu	$v0,$v0,$a6
    addiu	$v0,$v0,-1
    div	$zero,$v0,$s3
    # Line 1691
    lwc1	$f5,8($sp)
    # Line 1680
    teq	$s3,$zero,0x7
    addiu	$a7,$s3,-1
    and	$at,$a7,$s1
    # Line 1692
    lwc1	$f6,12($sp)
    # Line 1691
    ldc1	$f0,_lit8_c0e7fff000000000
    # Line 1684
    negu	$s3,$a1
    # Line 1692
    cvt.d.s	$f6,$f6
    # Line 1680
    mflo	$a2
    beqz	$at,.L0da82a78
    # Line 1692
    add.d	$f6,$f6,$f0
    # Line 1680
    beqz	$a6,.L0da82a80
    nop
.L0da826a4:
    # Line 1691
    cvt.d.s	$f5,$f5
    add.d	$f5,$f5,$f0
    # Line 1692
    cvt.s.d	$f6,$f6
    # Line 1691
    cvt.s.d	$f5,$f5
    # Line 1699
    move	$a6,$zero
    # Line 1692
    swc1	$f6,12($sp)
    # Line 1699
    beqz	$s2,.L0da829e0
    # Line 1691
    swc1	$f5,8($sp)
    # Line 1699
    beqz	$s1,.L0da829e0
    nop
.L0da826cc:
    bnezl	$a6,.L0da82730
    ld	$gp,152($sp)
    lw	$a6,24($s0)
    addu	$a6,$a6,$a0
    mtc1	$a6,$f7
    nop
    cvt.s.w	$f7,$f7
    add.s	$f7,$f7,$f5
    mtc1	$zero,$f0
    c.lt.s	$f7,$f0
    nop
    bc1f	.L0da8299c
    mov.s	$f4,$f7
    b	.L0da8299c
    neg.s	$f4,$f7
.L0da82708:
    sd	$a0,128($sp)
    sd	$a1,32($sp)
    sd	$a3,120($sp)
    sd	$a5,72($sp)
    c.lt.s	$f7,$f4
    sd	$a2,80($sp)
    sd	$a7,88($sp)
    bc1f	.L0da82b40
    sd	$a6,96($sp)
.L0da8272c:
    ld	$gp,152($sp)
.L0da82730:
    ld	$s2,192($sp)
    # Line 1698
    lw	$s1,248($s0)
    # Line 1699
    ld	$s3,168($sp)
    ld	$s4,160($sp)
    # Line 1698
    ori	$s1,$s1,0x1
    sw	$s1,248($s0)
    # Line 1699
    ld	$s0,144($sp)
    ld	$s1,184($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0da82758:
    # Line 1588
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$sp,8
    sd	$ra,176($sp)
    jal	__glMgrim_GetFloatv
    li	$a0,2823
    # Line 1589
    lwc1	$f1,8($sp)
    ldc1	$f0,_lit8_40e7fff000000000
    cvt.d.s	$f1,$f1
    # Line 1590
    lwc1	$f6,12($sp)
    # Line 1589
    add.d	$f1,$f1,$f0
    # Line 1590
    cvt.d.s	$f6,$f6
    add.d	$f6,$f6,$f0
    # Line 1589
    cvt.s.d	$f1,$f1
    # Line 1590
    cvt.s.d	$f6,$f6
    # Line 1589
    swc1	$f1,8($sp)
    # Line 1590
    swc1	$f6,12($sp)
    mtc1	$zero,$f0
    lwc1	$f4,720($s4)
    c.lt.s	$f4,$f0
    li	$a0,1
    bc1fl	.L0da827b0
    move	$a0,$zero
.L0da827b0:
    # Line 1591
    li	$at,1
    # Line 1590
    beqz	$a0,.L0da82e6c
    # Line 1591
    ldc1	$f5,_lit8_3ff0000000000000
    neg.s	$f7,$f4
.L0da827c0:
    cvt.d.s	$f2,$f7
    c.lt.d	$f5,$f2
    nop
    bc1fl	.L0da827d4
    move	$at,$zero
.L0da827d4:
    sd	$at,136($sp)
    beqz	$a0,.L0da82e74
    sd	$at,48($sp)
    # Line 1592
    neg.s	$f7,$f4
.L0da827e4:
    # Line 1598
    trunc.w.s	$f2,$f6
    # Line 1592
    cvt.d.s	$f3,$f7
    c.lt.d	$f3,$f5
    nop
    bc1t	.L0da82a2c
    # Line 1599
    dmtc1	$zero,$f4
    # Line 1592
    lw	$v0,424($s0)
    lui	$v1,0x1000
    and	$v0,$v0,$v1
    beqzl	$v0,.L0da82a30
    sd	$s1,184($sp)
    sd	$s1,184($sp)
    move	$a0,$zero
.L0da82818:
    # Line 1595
    lw	$a3,404($s0)
    mult	$a3,$s3
    lw	$v1,1532($s0)
    mflo	$v0
    subu	$v0,$v0,$v1
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f1,724($s4)
    mul.s	$f0,$f1,$f0
    add.s	$f3,$f0,$f6
    # Line 1599
    trunc.w.s	$f0,$f0
    # Line 1595
    trunc.w.s	$f3,$f3
    # Line 1592
    move	$a1,$a0
    # Line 1598
    mfc1	$at,$f2
    # Line 1599
    cvt.d.s	$f1,$f1
    # Line 1595
    mfc1	$s1,$f3
    # Line 1599
    c.lt.d	$f1,$f4
    mfc1	$a3,$f0
    # Line 1598
    subu	$s1,$s1,$at
    # Line 1599
    bc1f	.L0da8287c
    subu	$a3,$a3,$s1
    sd	$a0,112($sp)
    sd	$a1,56($sp)
    # Line 1604
    negu	$a3,$a3
.L0da8287c:
    # Line 1606
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    sd	$a1,56($sp)
    # Line 1607
    li	$a1,-2
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    sd	$a0,112($sp)
    # Line 1606
    swc1	$f1,24($sp)
    # Line 1607
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,24($sp)
    mtc1	$zero,$f2
    lwc1	$f5,724($s4)
    c.lt.s	$f5,$f2
    nop
    bc1f	.L0da828c4
    ldc1	$f4,_lit8_3ff0000000000000
    # Line 1608
    b	.L0da828c8
    neg.s	$f6,$f5
.L0da828c4:
    mov.s	$f6,$f5
.L0da828c8:
    cvt.d.s	$f3,$f6
    div.d	$f3,$f4,$f3
    cvt.s.d	$f3,$f3
    # Line 1609
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 1608
    swc1	$f3,24($sp)
    # Line 1609
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,24($sp)
    # Line 1610
    la	$a0,SYMBOL_LOCATION
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    lw	$a0,580($a0)
    li	$a1,-1
    jal	__glMgrInitPixelStateCRAM
    addiu	$a0,$a0,3
    dmtc1	$zero,$f4
    lw	$a1,188($s0)
    ld	$a4,136($sp)
    lw	$a3,1432($s0)
    ld	$ra,176($sp)
    beqz	$a4,.L0da82a88
    lw	$a3,52($a3)
    # Line 1613
    lw	$at,416($s0)
    # Line 1614
    mult	$a3,$at
    # Line 1615
    move	$a0,$a1
    sd	$s2,192($sp)
    # Line 1616
    sw	$at,4($sp)
    # Line 1613
    sw	$at,0($sp)
    # Line 1614
    mflo	$s2
    addiu	$s2,$s2,255
    sra	$s2,$s2,0x8
.L0da82940:
    # Line 1660
    addu	$v0,$a1,$s2
    sw	$v0,188($s0)
    lwc1	$f0,720($s4)
    cvt.d.s	$f0,$f0
    c.lt.d	$f4,$f0
    nop
    bc1fl	.L0da82974
    # Line 1667
    negu	$s2,$s2
    bgtz	$s1,.L0da82984
    # Line 1663
    li	$a5,1
.L0da82968:
    # Line 1675
    li	$a3,-1
    b	.L0da8298c
    # Line 1674
    li	$a1,-1
.L0da82974:
    # Line 1665
    li	$a5,-1
    # Line 1666
    li	$v1,-1
    # Line 1667
    blez	$s1,.L0da82968
    # Line 1666
    subu	$a0,$v1,$a0
.L0da82984:
    # Line 1671
    li	$a1,1
    # Line 1672
    move	$a3,$zero
.L0da8298c:
    # Line 1678
    bgez	$s1,.L0da8265c
    # Line 1670
    lw	$a6,400($s0)
.L0da82994:
    # Line 1680
    b	.L0da82660
    negu	$t0,$s1
.L0da8299c:
    # Line 1699
    lwc1	$f7,_lit_46400000
    c.lt.s	$f7,$f4
    nop
    bc1t	.L0da8272c
    addu	$a4,$a6,$s2
    subu	$a4,$a4,$a5
    mtc1	$a4,$f4
    nop
    cvt.s.w	$f4,$f4
    add.s	$f4,$f4,$f5
    mtc1	$zero,$f1
    c.lt.s	$f4,$f1
    nop
    bc1f	.L0da829e8
    mov.s	$f5,$f4
    b	.L0da829e8
    neg.s	$f5,$f4
.L0da829e0:
    b	.L0da826cc
    li	$a6,1
.L0da829e8:
    c.lt.s	$f7,$f5
    nop
    bc1tl	.L0da82730
    ld	$gp,152($sp)
    lw	$t0,28($s0)
    addu	$t0,$t0,$a3
    mtc1	$t0,$f5
    nop
    cvt.s.w	$f5,$f5
    add.s	$f5,$f5,$f6
    mtc1	$zero,$f0
    c.lt.s	$f5,$f0
    nop
    bc1f	.L0da82a38
    mov.s	$f4,$f5
    b	.L0da82a38
    neg.s	$f4,$f5
.L0da82a2c:
    sd	$s1,184($sp)
.L0da82a30:
    # Line 1592
    b	.L0da82818
    li	$a0,1
.L0da82a38:
    # Line 1699
    c.lt.s	$f7,$f4
    nop
    bc1t	.L0da8272c
    addu	$a6,$s1,$s3
    addu	$at,$a6,$t0
    mtc1	$at,$f5
    nop
    cvt.s.w	$f5,$f5
    add.s	$f5,$f5,$f6
    mtc1	$zero,$f0
    c.lt.s	$f5,$f0
    nop
    bc1f	.L0da82708
    mov.s	$f4,$f5
    b	.L0da82708
    neg.s	$f4,$f5
.L0da82a78:
    b	.L0da826a4
    # Line 1688
    move	$s3,$zero
.L0da82a80:
    b	.L0da826a4
    # Line 1686
    move	$s3,$a1
.L0da82a88:
    ld	$v0,112($sp)
    # Line 1616
    beqz	$v0,.L0da82fe0
    ld	$v1,64($sp)
    addu	$v1,$a3,$v1
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f1,720($s4)
    mul.s	$f0,$f1,$f0
    lwc1	$f5,8($sp)
    add.s	$f0,$f0,$f5
    trunc.w.s	$f0,$f0
    cvt.d.s	$f1,$f1
    c.lt.d	$f4,$f1
    mfc1	$a0,$f0
    bc1f	.L0da82e7c
    sd	$s2,192($sp)
    # Line 1625
    mtc1	$a1,$f1
    nop
    cvt.s.w	$f1,$f1
    add.s	$f1,$f1,$f5
    trunc.w.s	$f1,$f1
    mfc1	$a2,$f1
    nop
    subu	$a2,$a0,$a2
    beqz	$a2,.L0da82eec
    move	$s2,$a2
    # Line 1626
    lw	$v1,412($s0)
    mult	$v1,$a3
    mflo	$v0
    nop
    sll	$v0,$v0,0x8
    div	$zero,$v0,$a2
    mflo	$at
    nop
    nop
    # Line 1634
    div	$zero,$v0,$at
    # Line 1626
    teq	$a2,$zero,0x7
    # Line 1634
    teq	$at,$zero,0x7
    # Line 1626
    sw	$at,0($sp)
    # Line 1634
    mflo	$a4
    subu	$a4,$a4,$a2
    sll	$a4,$a4,0x8
    addu	$a4,$a4,$at
    b	.L0da82eec
    sw	$a4,4($sp)
.L0da82b40:
    # Line 1706
    move	$a3,$zero
    lw	$a1,0($sp)
    li	$a0,341
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    la	$a2,SYMBOL_LOCATION
    sd	$ra,176($sp)
    jal	__glMgrRSSRegShadow
    lw	$a2,92($a2)
    # Line 1708
    li	$a3,1
    lw	$a1,4($sp)
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    la	$a2,SYMBOL_LOCATION
    li	$a0,340
    jal	__glMgrRSSRegShadow
    lw	$a2,88($a2)
    # Line 1720
    li	$a2,1
    li	$a0,345
    # Line 1711
    ld	$a3,40($sp)
    lw	$a6,1432($s0)
    # Line 1712
    li	$a7,-1793
    # Line 1711
    lw	$a4,-26652($a3)
    lw	$a6,100($a6)
    li	$t0,-241
    and	$a4,$a4,$t0
    andi	$a6,$a6,0xf
    sll	$a6,$a6,0x4
    or	$a4,$a4,$a6
    # Line 1712
    and	$a7,$a4,$a7
    # Line 1717
    ld	$a4,48($sp)
    lui	$a1,0x8
    nor	$a1,$a1,$zero
    andi	$a4,$a4,0x1
    # Line 1713
    li	$t0,-14337
    and	$a7,$a7,$t0
    sw	$a7,-26652($a3)
    # Line 1717
    sll	$a4,$a4,0x13
    # Line 1714
    lw	$t0,1432($s0)
    lui	$t1,0x1
    ori	$t1,$t1,0xc000
    lbu	$t0,65($t0)
    nor	$t1,$t1,$zero
    and	$a7,$a7,$t1
    andi	$t0,$t0,0x7
    sll	$t0,$t0,0xe
    or	$a7,$a7,$t0
    sw	$a7,-26652($a3)
    # Line 1715
    lui	$t1,0x2
    lbu	$t0,1109($s4)
    nor	$t1,$t1,$zero
    and	$a7,$a7,$t1
    sltu	$t0,$zero,$t0
    sll	$t0,$t0,0x11
    or	$a7,$a7,$t0
    # Line 1716
    lui	$t0,0x4
    nor	$t0,$t0,$zero
    and	$a7,$a7,$t0
    # Line 1717
    and	$a1,$a7,$a1
    or	$a1,$a1,$a4
    # Line 1718
    lui	$a4,0x10
    nor	$a4,$a4,$zero
    and	$a1,$a1,$a4
    ld	$a4,56($sp)
    # Line 1720
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a5,5
    # Line 1718
    andi	$a4,$a4,0x1
    sll	$a4,$a4,0x14
    or	$a1,$a1,$a4
    sw	$a1,-26652($a3)
    # Line 1719
    lui	$a6,0x80
    lw	$a4,140($s0)
    nor	$a6,$a6,$zero
    and	$a1,$a1,$a6
    xor	$a4,$a4,$a5
    sltu	$a4,$zero,$a4
    sll	$a4,$a4,0x17
    or	$a1,$a1,$a4
    # Line 1720
    jal	__glMgrRSSRegSet
    # Line 1719
    sw	$a1,-26652($a3)
    # Line 1720
    lw	$at,52($s0)
    li	$v0,6656
    bne	$at,$v0,.L0da82d34
    la	$s4,SYMBOL_LOCATION
    lw	$v1,248($s0)
    andi	$v1,$v1,0x4
    beqz	$v1,.L0da82d38
    # Line 1733
    nop	# was lw $t9, -30264($gp) # &__glMgrLoadRasterPosInfo
    # Line 1722
    lw	$a4,140($s0)
    li	$at,5
    beq	$a4,$at,.L0da82d34
    # Line 1726
    move	$a2,$zero
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a0,92
    lui	$a1,0xff
    jal	__glMgrRSSRegSet
    ori	$a1,$a1,0xf000
    # Line 1727
    move	$a2,$zero
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a0,93
    lui	$a1,0xff
    jal	__glMgrRSSRegSet
    ori	$a1,$a1,0xf000
    # Line 1728
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    move	$a2,$zero
    move	$a1,$zero
    jal	__glMgrRSSRegSet
    li	$a0,94
    # Line 1729
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    li	$a2,1
    move	$a1,$zero
    jal	__glMgrRSSRegSet
    li	$a0,95
    # Line 1730
    move	$a3,$zero
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    lw	$a2,20($s4)
    move	$a1,$zero
    jal	__glMgrRSSRegShadow
    li	$a0,320
    # Line 1731
    li	$a3,1
    # lw $t9, -30272($gp) # &__glMgrRSSRegShadow
    lw	$a2,24($s4)
    move	$a1,$zero
    jal	__glMgrRSSRegShadow
    li	$a0,321
    b	.L0da82d40
    nop
.L0da82d34:
    # Line 1733
    # lw $t9, -30264($gp) # &__glMgrLoadRasterPosInfo
.L0da82d38:
    jal	__glMgrLoadRasterPosInfo
    nop
.L0da82d40:
    # Line 1736
    ld	$a2,128($sp)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    lw	$a0,24($s0)
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    addu	$a0,$a0,$a2
    # Line 1737
    ld	$a2,120($sp)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    lw	$a0,28($s0)
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    addu	$a0,$a0,$a2
    # Line 1738
    ld	$a2,128($sp)
    lw	$a0,24($s0)
    li	$a1,-2
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    addu	$a0,$a0,$a2
    ld	$a2,72($sp)
    addu	$a0,$a0,$s2
    jal	__glMgrInitPixelStateERAM
    subu	$a0,$a0,$a2
    # Line 1740
    ld	$a2,120($sp)
    lw	$a0,28($s0)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    addu	$a0,$a0,$a2
    ld	$a2,96($sp)
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    addu	$a0,$a0,$a2
    # Line 1742
    lw	$a1,1432($s0)
    lw	$a2,412($s0)
    lw	$a1,52($a1)
    mult	$a1,$a2
    ld	$a2,80($sp)
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    sll	$a2,$a2,0x10
    sd	$a2,104($sp)
    mflo	$a0
    andi	$a0,$a0,0xffff
    jal	__glMgrInitPixelStateERAM
    or	$a0,$a0,$a2
    # Line 1745
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    li	$a0,1
    blez	$s2,.L0da82ff0
    # Line 1746
    li	$a0,1
.L0da82e00:
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    blez	$s1,.L0da82ff8
    # Line 1747
    li	$a0,1
.L0da82e14:
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    jal	__glMgrInitPixelStateERAM
    li	$a1,-2
    # Line 1748
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,400($s0)
    # Line 1749
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-1
    jal	__glMgrInitPixelStateERAM
    lw	$a0,1184($s4)
    lw	$a4,12($s0)
    bnez	$a4,.L0da82ef4
    ld	$ra,176($sp)
.L0da82e4c:
    ld	$gp,152($sp)
    # Line 1765
    ld	$s0,144($sp)
    ld	$s1,184($sp)
    ld	$s2,192($sp)
    ld	$s3,168($sp)
    ld	$s4,160($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0da82e6c:
    b	.L0da827c0
    # Line 1591
    mov.s	$f7,$f4
.L0da82e74:
    b	.L0da827e4
    # Line 1592
    mov.s	$f7,$f4
.L0da82e7c:
    # Line 1643
    mtc1	$a1,$f2
    nop
    cvt.s.w	$f2,$f2
    sub.s	$f2,$f5,$f2
    trunc.w.s	$f2,$f2
    mfc1	$a2,$f2
    nop
    subu	$a2,$a2,$a0
    beqz	$a2,.L0da82eec
    move	$s2,$a2
    # Line 1644
    lw	$v1,412($s0)
    mult	$v1,$a3
    mflo	$v0
    nop
    sll	$v0,$v0,0x8
    div	$zero,$v0,$a2
    mflo	$at
    nop
    nop
    # Line 1652
    div	$zero,$v0,$at
    # Line 1644
    teq	$a2,$zero,0x7
    # Line 1652
    teq	$at,$zero,0x7
    # Line 1644
    sw	$at,0($sp)
    # Line 1652
    mflo	$a4
    subu	$a4,$a4,$a2
    sll	$a4,$a4,0x8
    addu	$a4,$a4,$at
    sw	$a4,4($sp)
.L0da82eec:
    b	.L0da82940
    move	$a0,$a1
.L0da82ef4:
    ld	$a3,88($sp)
    # Line 1752
    move	$a2,$s1
    la	$a1,sub_0dbf0000
    la	$s4,__iob
    # lw $t9, -17908($gp) # &fprintf
    addiu	$a1,$a1,-11632
    addiu	$s4,$s4,32
    jal	fprintf
    move	$a0,$s4
    # Line 1754
    move	$a0,$s4
    la	$a1,sub_0dbf0000
    ld	$a4,128($sp)
    ld	$s1,120($sp)
    lw	$a3,28($s0)
    lw	$a2,24($s0)
    # lw $t9, -17908($gp) # &fprintf
    addu	$a3,$a3,$s1
    addu	$a2,$a2,$a4
    jal	fprintf
    addiu	$a1,$a1,-11576
    # Line 1756
    move	$a0,$s4
    move	$a3,$s3
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbf0000
    ld	$a2,32($sp)
    jal	fprintf
    addiu	$a1,$a1,-11528
    # Line 1757
    move	$a0,$s4
    ld	$s3,104($sp)
    la	$a1,sub_0dbf0000
    lw	$a3,28($s0)
    ld	$a4,96($sp)
    lw	$a2,24($s0)
    addu	$a3,$a3,$s1
    addu	$a3,$a3,$a4
    ld	$a4,128($sp)
    # lw $t9, -17908($gp) # &fprintf
    addiu	$a1,$a1,-11488
    addu	$a2,$a2,$a4
    ld	$a4,72($sp)
    addu	$a2,$a2,$s2
    jal	fprintf
    subu	$a2,$a2,$a4
    # Line 1760
    lw	$a2,1432($s0)
    lw	$a3,412($s0)
    lw	$a2,52($a2)
    mult	$a2,$a3
    move	$a0,$s4
    ld	$s1,184($sp)
    la	$a1,sub_0dbf0000
    ld	$s2,192($sp)
    # lw $t9, -17908($gp) # &fprintf
    addiu	$a1,$a1,-11448
    mflo	$a2
    andi	$a2,$a2,0xffff
    jal	fprintf
    or	$a2,$a2,$s3
    b	.L0da82e4c
    ld	$ra,176($sp)
.L0da82fe0:
    sd	$s2,192($sp)
    # Line 1656
    move	$s2,$a3
    b	.L0da82940
    # Line 1657
    ld	$a0,64($sp)
.L0da82ff0:
    b	.L0da82e00
    # Line 1746
    li	$a0,-1
.L0da82ff8:
    b	.L0da82e14
    # Line 1747
    li	$a0,-1
.end __glMgrInitPixelTexture

# Function: __glMgrInitRSSToRSS
# Declared: Line 1768 (Source lines: 1770-1798)
# Address: 0x0da83000 - 0x0da83144 (Size: 324 bytes, Frame: 0)
.globl __glMgrInitRSSToRSS
.ent __glMgrInitRSSToRSS
__glMgrInitRSSToRSS:
    # Line 1772
    li	$v1,-1793
    # Line 1770
    lui	$a4,0x1
    lw	$a3,1432($a1)
    addu	$a0,$a0,$a4
    lw	$a2,-26652($a0)
    lw	$a3,100($a3)
    li	$a4,-241
    and	$a2,$a2,$a4
    andi	$a3,$a3,0xf
    sll	$a3,$a3,0x4
    or	$a2,$a2,$a3
    # Line 1772
    and	$a2,$v1,$a2
    sw	$a2,-26652($a0)
    lw	$v0,1552($a1)
    and	$v0,$v0,$v1
    sw	$v0,1552($a1)
    # Line 1774
    lw	$at,-26652($a0)
    li	$a4,-14337
    and	$at,$at,$a4
    sw	$at,-26652($a0)
    lw	$a3,1552($a1)
    # Line 1776
    lw	$a2,1432($a1)
    # Line 1774
    and	$a3,$a3,$a4
    sw	$a3,1552($a1)
    # Line 1776
    lui	$v0,0xfffe
    lw	$v1,-26652($a0)
    lbu	$a2,65($a2)
    ori	$v0,$v0,0x3fff
    and	$v1,$v1,$v0
    andi	$a2,$a2,0x7
    sll	$a2,$a2,0xe
    or	$v1,$v1,$a2
    sw	$v1,-26652($a0)
    lw	$at,1432($a1)
    lw	$a4,1552($a1)
    lbu	$at,65($at)
    and	$a4,$a4,$v0
    andi	$at,$at,0x7
    sll	$at,$at,0xe
    or	$a4,$a4,$at
    sw	$a4,1552($a1)
    # Line 1778
    lw	$a4,-26652($a0)
    lui	$a3,0xfffd
    ori	$a3,$a3,0xffff
    and	$a4,$a4,$a3
    sw	$a4,-26652($a0)
    lw	$a2,1552($a1)
    and	$a2,$a2,$a3
    sw	$a2,1552($a1)
    # Line 1780
    lw	$a2,-26652($a0)
    lui	$v1,0xfffb
    ori	$v1,$v1,0xffff
    and	$a2,$a2,$v1
    sw	$a2,-26652($a0)
    lw	$v0,1552($a1)
    and	$v0,$v0,$v1
    sw	$v0,1552($a1)
    # Line 1782
    lw	$v0,-26652($a0)
    lui	$at,0xfff7
    ori	$at,$at,0xffff
    and	$v0,$v0,$at
    sw	$v0,-26652($a0)
    lw	$a4,1552($a1)
    and	$a4,$a4,$at
    sw	$a4,1552($a1)
    # Line 1784
    lw	$a4,-26652($a0)
    lui	$a3,0xffef
    ori	$a3,$a3,0xffff
    and	$a4,$a4,$a3
    sw	$a4,-26652($a0)
    lw	$a2,1552($a1)
    and	$a2,$a2,$a3
    sw	$a2,1552($a1)
    # Line 1786
    lw	$v1,-26652($a0)
    lui	$v0,0x80
    or	$v1,$v1,$v0
    sw	$v1,-26652($a0)
    lw	$at,1552($a1)
    or	$at,$at,$v0
    # Line 1798
    jr	$ra
    # Line 1786
    sw	$at,1552($a1)
.end __glMgrInitRSSToRSS

# Function: __glMgrInitRSSToTE
# Declared: Line 1801 (Source lines: 1803-1830)
# Address: 0x0da83144 - 0x0da8323c (Size: 248 bytes, Frame: 0)
.globl __glMgrInitRSSToTE
.ent __glMgrInitRSSToTE
__glMgrInitRSSToTE:
    # Line 1816
    lui	$at,0x80
    # Line 1815
    lui	$v1,0xffef
    ori	$v1,$v1,0xffff
    # Line 1814
    lui	$a2,0xfff7
    ori	$a2,$a2,0xffff
    # Line 1803
    lui	$t1,0x1
    addu	$t1,$a0,$t1
    sw	$zero,-27000($t1)
    # Line 1804
    lw	$a6,-27000($t1)
    # Line 1812
    lui	$v0,0xfffd
    ori	$v0,$v0,0xffff
    # Line 1804
    ori	$a6,$a6,0x4
    # Line 1805
    ori	$a6,$a6,0x1
    # Line 1806
    ori	$a5,$a6,0x4000
    sw	$a5,-27000($t1)
    # Line 1809
    li	$a7,-1793
    # Line 1808
    lw	$a4,1432($a1)
    lw	$a3,-26652($t1)
    # Line 1810
    li	$a5,-14337
    # Line 1808
    lw	$a4,100($a4)
    li	$a6,-241
    and	$a3,$a3,$a6
    andi	$a4,$a4,0xf
    sll	$a4,$a4,0x4
    or	$a3,$a3,$a4
    # Line 1809
    and	$t3,$a7,$a3
    # Line 1810
    and	$t3,$a5,$t3
    sw	$t3,-26652($t1)
    # Line 1813
    lui	$a0,0xfffb
    # Line 1811
    lw	$a4,1432($a1)
    # Line 1813
    ori	$a0,$a0,0xffff
    # Line 1811
    lui	$a3,0xfffe
    lbu	$a4,65($a4)
    ori	$a3,$a3,0x3fff
    and	$t3,$a3,$t3
    andi	$a4,$a4,0x7
    sll	$a4,$a4,0xe
    or	$t3,$t3,$a4
    # Line 1812
    and	$t3,$v0,$t3
    sw	$t3,-26652($t1)
    # Line 1813
    and	$t2,$a0,$t3
    # Line 1814
    and	$t2,$a2,$t2
    # Line 1815
    and	$t0,$v1,$t2
    # Line 1816
    or	$t0,$at,$t0
    sw	$t0,-26652($t1)
    # Line 1818
    lw	$a6,1552($a1)
    # Line 1820
    lw	$a4,1432($a1)
    # Line 1818
    and	$a6,$a6,$a7
    # Line 1819
    and	$a5,$a5,$a6
    sw	$a5,1552($a1)
    # Line 1820
    lbu	$a4,65($a4)
    and	$a3,$a3,$a5
    andi	$a4,$a4,0x7
    sll	$a4,$a4,0xe
    or	$a3,$a3,$a4
    # Line 1821
    and	$v0,$v0,$a3
    # Line 1822
    and	$a0,$a0,$v0
    # Line 1823
    and	$a0,$a2,$a0
    # Line 1824
    and	$v1,$v1,$a0
    # Line 1825
    or	$at,$at,$v1
    # Line 1830
    jr	$ra
    # Line 1825
    sw	$at,1552($a1)
.end __glMgrInitRSSToTE

# Function: __glMgrSendHistogramFills
# Declared: Line 1833 (Source lines: 1838-1849)
# Address: 0x0da8323c - 0x0da83300 (Size: 196 bytes, Frame: 0)
.globl __glMgrSendHistogramFills
.ent __glMgrSendHistogramFills
__glMgrSendHistogramFills:
    # Line 1838
    lw	$a5,36($a0)
    lw	$a3,32($a0)
    mult	$a3,$a5
    # Line 1839
    li	$at,0xd418
    lui	$a2,0x7
    ori	$a2,$a2,0x4080
    sw	$at,0($a2)
    move	$a3,$a0
    # Line 1838
    mflo	$a5
    nop
    nop
    # Line 1841
    lw	$v1,276($a3)
    sw	$v1,0($a2)
    lw	$v0,280($a3)
    sw	$v0,0($a2)
    lw	$at,284($a3)
    # Line 1843
    lw	$a4,268($a0)
    move	$a3,$zero
    # Line 1841
    sw	$at,0($a2)
    # Line 1843
    beqz	$a4,.L0da832a4
    # Line 1846
    slti	$at,$a4,3
.L0da83290:
    # Line 1843
    addiu	$a3,$a3,1
    sltu	$a1,$a3,$a4
    bnez	$a1,.L0da83290
    # Line 1844
    sw	$a5,0($a2)
    # Line 1846
    slti	$at,$a4,3
.L0da832a4:
    beqz	$at,.L0da832f8
    move	$a3,$a4
    li	$a4,3
    subu	$a5,$a4,$a3
    andi	$a0,$a5,0x3
    beqz	$a0,.L0da832d4
    sra	$v0,$a5,0x2
.L0da832c0:
    addiu	$a3,$a3,1
    addi	$a0,$a0,-1
    bnez	$a0,.L0da832c0
    # Line 1847
    sw	$zero,0($a2)
    sra	$v0,$a5,0x2
.L0da832d4:
    beqz	$v0,.L0da832f8
    move	$a6,$a3
    move	$a0,$a6
.L0da832e0:
    # Line 1846
    addiu	$a0,$a0,4
    # Line 1847
    sw	$zero,0($a2)
    sw	$zero,0($a2)
    sw	$zero,0($a2)
    # Line 1846
    bne	$a0,$a4,.L0da832e0
    # Line 1847
    sw	$zero,0($a2)
.L0da832f8:
    # Line 1849
    jr	$ra
    nop
.end __glMgrSendHistogramFills

# Function: __glMgrSendMinmaxFills
# Declared: Line 1852 (Source lines: 1858-1872)
# Address: 0x0da83300 - 0x0da833d8 (Size: 216 bytes, Frame: 0)
.globl __glMgrSendMinmaxFills
.ent __glMgrSendMinmaxFills
__glMgrSendMinmaxFills:
    # Line 1858
    move	$a3,$a0
    li	$at,0xd524
    lui	$a2,0x7
    ori	$a2,$a2,0x4080
    sw	$at,0($a2)
    # Line 1860
    lw	$v1,288($a3)
    sw	$v1,0($a2)
    lw	$v0,292($a3)
    sw	$v0,0($a2)
    # Line 1862
    lw	$a5,272($a0)
    # Line 1860
    lw	$at,296($a3)
    # Line 1862
    move	$a4,$zero
    move	$a3,$a0
    # Line 1860
    sw	$at,0($a2)
    # Line 1862
    beqz	$a5,.L0da83364
    # Line 1868
    slti	$at,$a5,3
.L0da83340:
    # Line 1863
    lwc1	$f1,300($a3)
    # Line 1862
    addiu	$a3,$a3,4
    # Line 1863
    swc1	$f1,0($a2)
    # Line 1862
    addiu	$a4,$a4,1
    # Line 1864
    lwc1	$f0,296($a3)
    # Line 1862
    sltu	$a1,$a4,$a5
    bnez	$a1,.L0da83340
    # Line 1864
    swc1	$f0,0($a2)
    # Line 1868
    slti	$at,$a5,3
.L0da83364:
    beqz	$at,.L0da833d0
    move	$a4,$a5
    li	$a3,1
    li	$a5,3
    subu	$a6,$a5,$a4
    andi	$a0,$a6,0x3
    beqz	$a0,.L0da8339c
    sra	$v0,$a6,0x2
.L0da83384:
    addiu	$a4,$a4,1
    addi	$a0,$a0,-1
    # Line 1869
    sw	$a3,0($a2)
    bnez	$a0,.L0da83384
    # Line 1870
    sw	$zero,0($a2)
    sra	$v0,$a6,0x2
.L0da8339c:
    beqz	$v0,.L0da833d0
    move	$a7,$a4
    move	$a0,$a7
.L0da833a8:
    # Line 1868
    addiu	$a0,$a0,4
    # Line 1869
    sw	$a3,0($a2)
    # Line 1870
    sw	$zero,0($a2)
    # Line 1869
    sw	$a3,0($a2)
    # Line 1870
    sw	$zero,0($a2)
    # Line 1869
    sw	$a3,0($a2)
    # Line 1870
    sw	$zero,0($a2)
    # Line 1869
    sw	$a3,0($a2)
    # Line 1868
    bne	$a0,$a5,.L0da833a8
    # Line 1870
    sw	$zero,0($a2)
.L0da833d0:
    # Line 1872
    jr	$ra
    nop
.end __glMgrSendMinmaxFills

# Function: __glMgrPixelTilesAddr
# Declared: Line 1875 (Source lines: 1884-1884)
# Address: 0x0da833d8 - 0x0da83428 (Size: 80 bytes, Frame: 0)
.globl __glMgrPixelTilesAddr
.ent __glMgrPixelTilesAddr
__glMgrPixelTilesAddr:
    # Line 1884
    dsll32	$a4,$a2,0x0
    dsrl32	$a4,$a4,0x0
    dmtc1	$a4,$f1
    nop
    cvt.s.l	$f1,$f1
    lw	$a2,144($a0)
    lwc1	$f0,84($a0)
    multu	$a2,$a3
    mul.s	$f0,$f0,$f1
    lw	$v1,160($a0)
    trunc.l.s	$f0,$f0
    sll	$a0,$a1,0x2
    addu	$v1,$v1,$a0
    lw	$v1,0($v1)
    dmfc1	$v0,$f0
    mflo	$a0
    addu	$v1,$v1,$a0
    sll	$v0,$v0,0x0
    jr	$ra
    addu	$v0,$v0,$v1
.end __glMgrPixelTilesAddr

# Function: __glMgrSendPagedRows
# Declared: Line 1888 (Source lines: 1890-2093)
# Address: 0x0da83428 - 0x0da83d98 (Size: 2416 bytes, Frame: 224)
.globl __glMgrSendPagedRows
.ent __glMgrSendPagedRows
__glMgrSendPagedRows:
    # Line 1898
    lw	$a6,172($a0)
    multu	$a6,$a4
    # Line 1890
    addiu	$sp,$sp,-224
    sd	$s2,88($sp)
    sd	$s3,136($sp)
    sd	$s4,120($sp)
    sd	$s5,112($sp)
    sd	$s6,144($sp)
    sd	$s7,104($sp)
    sd	$s8,160($sp)
    # Line 1898
    lw	$t2,176($a0)
    mflo	$t3
    sd	$ra,128($sp)
    sd	$s1,80($sp)
    multu	$t2,$t3
    # Line 1890
    move	$s1,$a0
    sd	$gp,152($sp)
    lui	$t1,0x18
    sd	$s0,96($sp)
    # Line 1898
    lw	$s0,__glCurrentContext
    # Line 1890
    addiu	$t1,$t1,-19856
    # Line 1898
    lw	$v0,1484($a0)
    lw	$t0,1120($s0)
    # Line 1890
    addu	$gp,$t9,$t1
    # Line 1898
    lw	$t1,12($v0)
    addu	$t0,$a1,$t0
    # Line 1890
    move	$t3,$a2
    # Line 1898
    mflo	$t8
    beqz	$a3,.L0da835a4
    lw	$t2,164($a0)
    # Line 1914
    divu	$zero,$t0,$t2
    mfhi	$a5
    nop
    nop
    # Line 1917
    divu	$zero,$a5,$t2
    nop
    # Line 1915
    dsll32	$a5,$a5,0x0
    dsrl32	$a5,$a5,0x0
    dmtc1	$a5,$f1
    nop
    cvt.s.l	$f1,$f1
    lwc1	$f0,84($s1)
    # Line 1917
    lw	$a1,184($s1)
    # Line 1915
    mul.s	$f0,$f0,$f1
    # Line 1917
    mflo	$at
    nop
    nop
    mult	$a1,$t3
    teq	$t2,$zero,0x7
    # Line 1915
    trunc.l.s	$f0,$f0
    # Line 1914
    teq	$t2,$zero,0x7
    # Line 1909
    move	$s8,$t1
    # Line 1907
    lw	$a6,180($s1)
    # Line 1915
    dmfc1	$a4,$f0
    # Line 1917
    lw	$s4,4($v0)
    # Line 1922
    move	$s2,$zero
    # Line 1915
    sll	$a4,$a4,0x0
    # Line 1917
    addu	$s4,$s4,$at
    mflo	$at
    addu	$at,$at,$t8
    # Line 1922
    blez	$a1,.L0da83548
    # Line 1917
    addu	$s4,$s4,$at
    # Line 1922
    addiu	$a0,$sp,16
    addiu	$v0,$s4,-1
.L0da83528:
    # Line 1923
    addiu	$v0,$v0,1
    sw	$v0,0($a0)
    # Line 1922
    lw	$a1,184($s1)
    addiu	$s2,$s2,1
    slt	$a7,$s2,$a1
    bnez	$a7,.L0da83528
    addiu	$a0,$a0,4
    lw	$v0,1484($s1)
.L0da83548:
    # Line 1925
    multu	$a6,$s8
    move	$a0,$s0
    addiu	$a2,$sp,16
    lw	$a5,1432($s1)
    lw	$a7,8($v0)
    # lw $t9, -30316($gp) # &__glMgr_WriteMultiDMAHQSetup
    lw	$a5,56($a5)
    mflo	$a3
    jal	__glMgr_WriteMultiDMAHQSetup
    sw	$zero,4($sp)
.L0da83570:
    ld	$gp,152($sp)
.L0da83574:
    # Line 2093
    ld	$s0,96($sp)
    ld	$s1,80($sp)
    ld	$s2,88($sp)
    ld	$s3,136($sp)
    ld	$s4,120($sp)
    ld	$s5,112($sp)
    ld	$s6,144($sp)
    ld	$ra,128($sp)
    ld	$s7,104($sp)
    ld	$s8,160($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0da835a4:
    # Line 1935
    divu	$zero,$t0,$t2
    mfhi	$a2
    nop
    mflo	$ra
    nop
    nop
    mult	$a6,$t3
    # Line 1933
    move	$s8,$t1
    # Line 1941
    move	$a3,$t1
    move	$a0,$s1
    # Line 1935
    teq	$t2,$zero,0x7
    lw	$s4,0($v0)
    # Line 1941
    # lw $t9, -31892($gp) # &__glMgrPixelTilesAddr
    sd	$a2,48($sp)
    # Line 1935
    addu	$s4,$s4,$ra
    mflo	$ra
    addu	$t8,$ra,$t8
    addu	$s4,$s4,$t8
    # Line 1941
    bal __glMgrPixelTilesAddr
    move	$a1,$s4
    # Line 1950
    lw	$at,180($s1)
    # Line 1941
    move	$v1,$v0
    # Line 1950
    andi	$at,$at,0x3
    beqz	$at,.L0da83bf8
    sd	$v0,56($sp)
    # Line 1954
    lw	$t2,1484($s1)
.L0da8360c:
    lw	$t2,8($t2)
    beqz	$t2,.L0da83570
    move	$s2,$zero
    li	$t8,4
    li	$s3,-1
    li	$a0,32
    li	$a2,1
    li	$a1,-4
    lui	$s0,0x7
    addiu	$at,$s4,1
    sd	$at,64($sp)
    b	.L0da83684
    ori	$s0,$s0,0x4080
.L0da83640:
    # Line 2045
    lw	$t2,1484($s1)
    lw	$t2,8($t2)
.L0da83648:
    beqz	$s4,.L0da83658
    ld	$at,72($sp)
    # Line 2049
    sw	$s7,0($s0)
    ld	$at,72($sp)
.L0da83658:
    beqzl	$at,.L0da83668
    # Line 2054
    addiu	$s8,$s8,1
    # Line 2052
    sw	$zero,0($s0)
    # Line 2054
    addiu	$s8,$s8,1
.L0da83668:
    # Line 2055
    ld	$a5,56($sp)
    lw	$a7,144($s1)
    # Line 1954
    addiu	$s2,$s2,1
    sltu	$v1,$s2,$t2
    # Line 2055
    addu	$a5,$a7,$a5
    # Line 1954
    beqz	$v1,.L0da83570
    sd	$a5,56($sp)
.L0da83684:
    # Line 1959
    ld	$s5,48($sp)
    lw	$s4,164($s1)
    subu	$s4,$s4,$s5
    dsll32	$s4,$s4,0x0
    dsrl32	$s4,$s4,0x0
    dmtc1	$s4,$f2
    nop
    cvt.s.l	$f2,$f2
    lwc1	$f3,84($s1)
    # Line 1961
    ld	$a4,56($sp)
    lui	$a5,0x8000
    # Line 1959
    mul.s	$f2,$f2,$f3
    # Line 1961
    and	$a4,$a1,$a4
    # Line 1964
    lw	$s5,1432($s1)
    lui	$a7,0xf
    ori	$a7,$a7,0xffff
    lw	$v1,60($s5)
    # Line 1966
    lw	$s5,56($s5)
    # Line 1959
    trunc.w.s	$f2,$f2
    # Line 1967
    andi	$s4,$v1,0x1
    # Line 1964
    sll	$v1,$v1,0x2
    sd	$s4,72($sp)
    # Line 1959
    mfc1	$s4,$f2
    # Line 1964
    and	$v1,$v1,$a7
    or	$v1,$v1,$a5
    # Line 1967
    sltu	$at,$s4,$s5
    beqz	$at,.L0da836fc
    # Line 1964
    sw	$v1,0($s0)
    # Line 1969
    b	.L0da83700
    move	$v0,$s4
.L0da836fc:
    move	$v0,$s5
.L0da83700:
    # Line 1970
    subu	$s5,$s5,$v0
    # Line 1973
    sra	$t3,$v0,0x2
    addiu	$a6,$t3,-1
    andi	$s4,$v0,0x3
    sll	$at,$s4,0x3
    sllv	$t1,$a2,$at
    ld	$a3,56($sp)
    subu	$at,$a0,$at
    addiu	$t1,$t1,-1
    andi	$a3,$a3,0x3
    sll	$a3,$a3,0x3
    beqz	$a3,.L0da83b78
    sllv	$t1,$t1,$at
    # Line 1983
    beq	$a6,$s3,.L0da837fc
    move	$v0,$a6
    move	$t9,$t3
    andi	$t0,$t3,0x3
    beqz	$t0,.L0da83774
    subu	$a6,$a0,$a3
.L0da8374c:
    addiu	$v0,$v0,-1
    # Line 1985
    addiu	$a4,$a4,4
    # Line 1984
    lw	$a5,-4($a4)
    lw	$a7,0($a4)
    addi	$t0,$t0,-1
    sllv	$a5,$a5,$a3
    srlv	$a7,$a7,$a6
    or	$a5,$a5,$a7
    bnez	$t0,.L0da8374c
    sw	$a5,0($s0)
.L0da83774:
    move	$t3,$v0
    sra	$a7,$t9,0x2
    beqz	$a7,.L0da837fc
    move	$t0,$a4
    move	$a4,$t3
    move	$v0,$t0
.L0da8378c:
    lw	$a7,0($v0)
    lw	$at,4($v0)
    sllv	$a7,$a7,$a3
    srlv	$at,$at,$a6
    or	$a7,$a7,$at
    sw	$a7,0($s0)
    lw	$a5,4($v0)
    lw	$a7,8($v0)
    sllv	$a5,$a5,$a3
    srlv	$a7,$a7,$a6
    or	$a5,$a5,$a7
    sw	$a5,0($s0)
    lw	$v1,8($v0)
    lw	$a5,12($v0)
    # Line 1985
    addiu	$v0,$v0,16
    # Line 1984
    sllv	$v1,$v1,$a3
    srlv	$a5,$a5,$a6
    or	$v1,$v1,$a5
    sw	$v1,0($s0)
    lw	$at,-4($v0)
    lw	$v1,0($v0)
    # Line 1983
    addiu	$a4,$a4,-4
    # Line 1984
    sllv	$at,$at,$a3
    srlv	$v1,$v1,$a6
    or	$at,$at,$v1
    # Line 1983
    bne	$a4,$s3,.L0da8378c
    # Line 1984
    sw	$at,0($s0)
    move	$a4,$v0
.L0da837fc:
    # Line 1988
    lw	$s7,0($a4)
    sllv	$s7,$s7,$a3
    and	$s7,$s7,$t1
.L0da83808:
    move	$at,$t1
    sd	$t1,168($sp)
    # Line 1991
    beqz	$s5,.L0da83648
    ld	$s6,64($sp)
    b	.L0da83958
    # Line 1994
    move	$a0,$s1
.L0da83820:
    # Line 2008
    subu	$s5,$s5,$t0
    # Line 2010
    subu	$s4,$t0,$v0
    # Line 2011
    sra	$v0,$s4,0x2
    # Line 2012
    andi	$s4,$s4,0x3
    sll	$a7,$s4,0x3
    sllv	$a6,$a2,$a7
    subu	$a7,$a0,$a7
    addiu	$a6,$a6,-1
    beqz	$a3,.L0da839c8
    sllv	$a6,$a6,$a7
    # Line 2024
    subu	$t0,$a0,$a3
    beqz	$t1,.L0da83a70
    ld	$at,168($sp)
    # Line 2026
    lw	$t1,0($a4)
    # Line 2027
    addiu	$v0,$v0,-1
    # Line 2026
    srlv	$at,$t1,$t0
    or	$at,$at,$s7
    # Line 2027
    beq	$v0,$s3,.L0da83930
    # Line 2026
    sw	$at,0($s0)
    # Line 2027
    addiu	$t1,$v0,1
    andi	$t2,$t1,0x3
    beqzl	$t2,.L0da838a8
    move	$t2,$v0
.L0da8387c:
    addiu	$v0,$v0,-1
    # Line 2029
    addiu	$a4,$a4,4
    # Line 2028
    lw	$v1,-4($a4)
    lw	$a5,0($a4)
    addi	$t2,$t2,-1
    sllv	$v1,$v1,$a3
    srlv	$a5,$a5,$t0
    or	$v1,$v1,$a5
    bnez	$t2,.L0da8387c
    sw	$v1,0($s0)
    move	$t2,$v0
.L0da838a8:
    sra	$a5,$t1,0x2
    beqz	$a5,.L0da8392c
    move	$t3,$a4
    move	$a4,$t2
    move	$v0,$t3
.L0da838bc:
    lw	$a5,0($v0)
    lw	$a7,4($v0)
    sllv	$a5,$a5,$a3
    srlv	$a7,$a7,$t0
    or	$a5,$a5,$a7
    sw	$a5,0($s0)
    lw	$v1,4($v0)
    lw	$a5,8($v0)
    sllv	$v1,$v1,$a3
    srlv	$a5,$a5,$t0
    or	$v1,$v1,$a5
    sw	$v1,0($s0)
    lw	$at,8($v0)
    lw	$v1,12($v0)
    # Line 2029
    addiu	$v0,$v0,16
    # Line 2028
    sllv	$at,$at,$a3
    srlv	$v1,$v1,$t0
    or	$at,$at,$v1
    sw	$at,0($s0)
    lw	$a7,-4($v0)
    lw	$at,0($v0)
    # Line 2027
    addiu	$a4,$a4,-4
    # Line 2028
    sllv	$a7,$a7,$a3
    srlv	$at,$at,$t0
    or	$a7,$a7,$at
    # Line 2027
    bne	$a4,$s3,.L0da838bc
    # Line 2028
    sw	$a7,0($s0)
    move	$a4,$v0
.L0da8392c:
    # Line 2027
    lw	$t1,0($a4)
.L0da83930:
    # Line 2032
    lw	$at,4($a4)
    sllv	$s7,$t1,$a3
    srlv	$at,$at,$t0
    or	$s7,$s7,$at
    and	$s7,$s7,$a6
.L0da83944:
    # Line 2045
    addiu	$s6,$s6,1
    # Line 2043
    move	$v1,$a6
    # Line 2045
    beqz	$s5,.L0da83640
    sd	$a6,168($sp)
    # Line 1994
    move	$a0,$s1
.L0da83958:
    # lw $t9, -31892($gp) # &__glMgrPixelTilesAddr
    move	$a1,$s6
    move	$a2,$zero
    bal __glMgrPixelTilesAddr
    move	$a3,$s8
    li	$a0,32
    li	$a2,1
    li	$t8,4
    li	$a1,-4
    # Line 1996
    and	$t2,$a1,$v0
    move	$a4,$t2
    # Line 1995
    andi	$a6,$v0,0x3
    subu	$a6,$a6,$s4
    sll	$a6,$a6,0x3
    # Line 1996
    bltz	$a6,.L0da839bc
    # Line 1995
    move	$a3,$a6
    # Line 2001
    move	$t1,$zero
.L0da8399c:
    # Line 2005
    subu	$v0,$t8,$s4
    # Line 2006
    lw	$s4,180($s1)
    # Line 2007
    move	$t0,$s5
    # Line 2006
    sltu	$v1,$s4,$s5
    beqz	$v1,.L0da83820
    # Line 2005
    andi	$v0,$v0,0x3
    # Line 2007
    b	.L0da83820
    move	$t0,$s4
.L0da839bc:
    # Line 1998
    li	$t1,1
    # Line 1999
    b	.L0da8399c
    addiu	$a3,$a6,32
.L0da839c8:
    # Line 2016
    ld	$at,168($sp)
    ld	$a5,168($sp)
    # Line 2012
    beqz	$a5,.L0da839f0
    # Line 2019
    addiu	$v0,$v0,-1
    # Line 2016
    nor	$at,$at,$zero
    lw	$a7,0($t2)
    # Line 2017
    addiu	$a4,$t2,4
    # Line 2016
    and	$a7,$a7,$at
    or	$a7,$a7,$s7
    sw	$a7,0($s0)
.L0da839f0:
    # Line 2019
    beq	$v0,$s3,.L0da83a64
    addiu	$t0,$v0,1
    andi	$a3,$t0,0x3
    beqz	$a3,.L0da83a20
    sra	$a5,$t0,0x2
.L0da83a04:
    addiu	$v0,$v0,-1
    # Line 2021
    addiu	$a4,$a4,4
    # Line 2020
    lw	$v1,-4($a4)
    addi	$a3,$a3,-1
    bnez	$a3,.L0da83a04
    sw	$v1,0($s0)
    sra	$a5,$t0,0x2
.L0da83a20:
    move	$t2,$v0
    beqz	$a5,.L0da83a64
    move	$t1,$a4
    move	$a3,$t2
    move	$v0,$t1
.L0da83a34:
    # Line 2021
    addiu	$v0,$v0,16
    # Line 2019
    addiu	$a3,$a3,-4
    # Line 2020
    lw	$a7,-4($v0)
    lw	$a5,-16($v0)
    lw	$v1,-12($v0)
    lw	$at,-8($v0)
    sw	$a5,0($s0)
    sw	$v1,0($s0)
    sw	$at,0($s0)
    # Line 2019
    bne	$a3,$s3,.L0da83a34
    # Line 2020
    sw	$a7,0($s0)
    move	$a4,$v0
.L0da83a64:
    # Line 2024
    lw	$s7,0($a4)
    b	.L0da83944
    and	$s7,$s7,$a6
.L0da83a70:
    # Line 2032
    beqz	$at,.L0da83a98
    # Line 2038
    addiu	$v0,$v0,-1
    # Line 2035
    lw	$a5,4($a4)
    lw	$v1,0($a4)
    # Line 2036
    addiu	$a4,$a4,4
    # Line 2035
    srlv	$a5,$a5,$t0
    sllv	$v1,$v1,$a3
    or	$v1,$v1,$s7
    or	$v1,$v1,$a5
    sw	$v1,0($s0)
.L0da83a98:
    # Line 2038
    beq	$v0,$s3,.L0da83b5c
    addiu	$t2,$v0,1
    andi	$t1,$t2,0x3
    beqz	$t1,.L0da83ad8
    move	$t3,$v0
.L0da83aac:
    addiu	$v0,$v0,-1
    # Line 2040
    addiu	$a4,$a4,4
    # Line 2039
    lw	$a5,-4($a4)
    lw	$a7,0($a4)
    addi	$t1,$t1,-1
    sllv	$a5,$a5,$a3
    srlv	$a7,$a7,$t0
    or	$a5,$a5,$a7
    bnez	$t1,.L0da83aac
    sw	$a5,0($s0)
    move	$t3,$v0
.L0da83ad8:
    sra	$a7,$t2,0x2
    beqz	$a7,.L0da83b5c
    move	$t1,$a4
    move	$a4,$t3
    move	$v0,$t1
.L0da83aec:
    lw	$a7,0($v0)
    lw	$at,4($v0)
    sllv	$a7,$a7,$a3
    srlv	$at,$at,$t0
    or	$a7,$a7,$at
    sw	$a7,0($s0)
    lw	$a5,4($v0)
    lw	$a7,8($v0)
    sllv	$a5,$a5,$a3
    srlv	$a7,$a7,$t0
    or	$a5,$a5,$a7
    sw	$a5,0($s0)
    lw	$v1,8($v0)
    lw	$a5,12($v0)
    # Line 2040
    addiu	$v0,$v0,16
    # Line 2039
    sllv	$v1,$v1,$a3
    srlv	$a5,$a5,$t0
    or	$v1,$v1,$a5
    sw	$v1,0($s0)
    lw	$at,-4($v0)
    lw	$v1,0($v0)
    # Line 2038
    addiu	$a4,$a4,-4
    # Line 2039
    sllv	$at,$at,$a3
    srlv	$v1,$v1,$t0
    or	$at,$at,$v1
    # Line 2038
    bne	$a4,$s3,.L0da83aec
    # Line 2039
    sw	$at,0($s0)
    move	$a4,$v0
.L0da83b5c:
    # Line 2043
    lw	$at,4($a4)
    lw	$s7,0($a4)
    srlv	$at,$at,$t0
    sllv	$s7,$s7,$a3
    or	$s7,$s7,$at
    b	.L0da83944
    and	$s7,$s7,$a6
.L0da83b78:
    # Line 1976
    beq	$a6,$s3,.L0da83bec
    move	$v0,$a6
    andi	$a3,$t3,0x3
    beqz	$a3,.L0da83ba4
    move	$a6,$t3
.L0da83b8c:
    addiu	$v0,$v0,-1
    # Line 1978
    addiu	$a4,$a4,4
    # Line 1977
    lw	$at,-4($a4)
    addi	$a3,$a3,-1
    bnez	$a3,.L0da83b8c
    sw	$at,0($s0)
.L0da83ba4:
    move	$t3,$v0
    sra	$v1,$a6,0x2
    beqz	$v1,.L0da83bec
    move	$t0,$a4
    move	$a3,$t3
    move	$v0,$t0
.L0da83bbc:
    # Line 1978
    addiu	$v0,$v0,16
    # Line 1976
    addiu	$a3,$a3,-4
    # Line 1977
    lw	$a5,-4($v0)
    lw	$v1,-16($v0)
    lw	$at,-12($v0)
    lw	$a7,-8($v0)
    sw	$v1,0($s0)
    sw	$at,0($s0)
    sw	$a7,0($s0)
    # Line 1976
    bne	$a3,$s3,.L0da83bbc
    # Line 1977
    sw	$a5,0($s0)
    move	$a4,$v0
.L0da83bec:
    # Line 1981
    lw	$s7,0($a4)
    b	.L0da83808
    and	$s7,$s7,$t1
.L0da83bf8:
    # Line 1950
    andi	$at,$v0,0x3
    bnezl	$at,.L0da8360c
    # Line 1954
    lw	$t2,1484($s1)
    # Line 2059
    lw	$v1,1484($s1)
    lw	$v1,8($v1)
    beqz	$v1,.L0da83570
    move	$s2,$zero
    lui	$s0,0x7
    addiu	$at,$s4,1
    sd	$at,64($sp)
    b	.L0da83c60
    ori	$s0,$s0,0x4080
.L0da83c28:
    # Line 2082
    andi	$v1,$s7,0x1
    beqzl	$v1,.L0da83c3c
    # Line 2087
    addiu	$s8,$s8,1
    # Line 2085
    sw	$zero,0($s0)
    # Line 2087
    addiu	$s8,$s8,1
.L0da83c3c:
    # Line 2059
    lw	$a5,1484($s1)
    # Line 2088
    ld	$a7,56($sp)
    lw	$at,144($s1)
    # Line 2059
    lw	$a5,8($a5)
    addiu	$s2,$s2,1
    # Line 2088
    addu	$a7,$at,$a7
    # Line 2059
    sltu	$a5,$s2,$a5
    beqz	$a5,.L0da83d90
    sd	$a7,56($sp)
.L0da83c60:
    # Line 2061
    ld	$s4,48($sp)
    lw	$a7,164($s1)
    subu	$a7,$a7,$s4
    dsll32	$a7,$a7,0x0
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f1
    nop
    cvt.s.l	$f1,$f1
    lwc1	$f3,84($s1)
    lui	$v1,0x8000
    mul.s	$f3,$f3,$f1
    lui	$a5,0xf
    # Line 2067
    lw	$v0,1432($s1)
    ori	$a5,$a5,0xffff
    lwc1	$f0,_lit_40400000
    lw	$v0,60($v0)
    ld	$a7,56($sp)
    # Line 2061
    add.s	$f3,$f3,$f0
    # Line 2067
    sll	$at,$v0,0x2
    and	$at,$at,$a5
    andi	$a7,$a7,0x3
    # Line 2061
    trunc.w.s	$f3,$f3
    # Line 2067
    sll	$a5,$a7,0x16
    or	$at,$at,$a5
    or	$at,$at,$v1
    # Line 2061
    mfc1	$s4,$f3
    # Line 2067
    sw	$at,0($s0)
    beqz	$a7,.L0da83d88
    # Line 2061
    sra	$s4,$s4,0x2
    # Line 2069
    addiu	$s7,$v0,1
.L0da83cd8:
    slt	$a7,$s4,$s7
    beqz	$a7,.L0da83ce8
    # Line 2071
    move	$s5,$s7
    move	$s5,$s4
.L0da83ce8:
    # Line 2072
    move	$a0,$s5
    # lw $t9, -18688($gp) # &__glMgr_PushPixels
    ld	$a2,56($sp)
    li	$a1,-4
    jal	__glMgr_PushPixels
    and	$a1,$a1,$a2
    # Line 2073
    subu	$s3,$s7,$s5
    # Line 2074
    beqz	$s3,.L0da83c28
    ld	$s6,64($sp)
    b	.L0da83d30
    # Line 2077
    move	$a0,$s1
.L0da83d14:
    # Line 2080
    # lw $t9, -18688($gp) # &__glMgr_PushPixels
    move	$a0,$s5
    jal	__glMgr_PushPixels
    move	$a1,$v0
    # Line 2082
    subu	$s3,$s3,$s5
    beqz	$s3,.L0da83c28
    # Line 2077
    move	$a0,$s1
.L0da83d30:
    # lw $t9, -31892($gp) # &__glMgrPixelTilesAddr
    move	$a2,$zero
    move	$a1,$s6
    bal __glMgrPixelTilesAddr
    move	$a3,$s8
    # Line 2078
    lw	$at,164($s1)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,84($s1)
    mul.s	$f2,$f2,$f3
    lwc1	$f4,_lit_40400000
    add.s	$f2,$f2,$f4
    trunc.w.s	$f2,$f2
    mfc1	$s4,$f2
    # Line 2081
    addiu	$s6,$s6,1
    # Line 2078
    sra	$s4,$s4,0x2
    slt	$a5,$s4,$s3
    beqz	$a5,.L0da83d14
    # Line 2079
    move	$s5,$s3
    b	.L0da83d14
    move	$s5,$s4
.L0da83d88:
    # Line 2069
    b	.L0da83cd8
    move	$s7,$v0
.L0da83d90:
    b	.L0da83574
    ld	$gp,152($sp)
.end __glMgrSendPagedRows

# Function: __glMgrFastSendPixels
# Declared: Line 2104 (Source lines: 2106-2239)
# Address: 0x0da83d98 - 0x0da84274 (Size: 1244 bytes, Frame: 160)
.globl __glMgrFastSendPixels
.ent __glMgrFastSendPixels
__glMgrFastSendPixels:
    # Line 2106
    addiu	$sp,$sp,-160
    sd	$s7,64($sp)
    sd	$s8,48($sp)
    move	$s8,$a3
    sd	$s3,8($sp)
    move	$s3,$a2
    sd	$s1,32($sp)
    move	$s1,$a0
    sd	$s0,72($sp)
    move	$s0,$a1
    sd	$s5,56($sp)
    sd	$s4,104($sp)
    sd	$gp,40($sp)
    lbu	$at,192($a1)
    lui	$v0,0x18
    addiu	$v0,$v0,-22272
    beqz	$at,.L0da84104
    addu	$gp,$t9,$v0
    # Line 2119
    move	$s4,$zero
    sd	$s2,112($sp)
    sd	$s6,80($sp)
.L0da83dec:
    # Line 2138
    lwc1	$f1,_lit_40000000
    # Line 2133
    sw	$zero,188($s0)
    # Line 2124
    lw	$v1,1352($s0)
    # Line 2129
    sw	$zero,1352($s0)
    # Line 2123
    lw	$a6,1348($s0)
    # Line 2125
    lw	$s6,1376($s0)
    # Line 2135
    lui	$s2,0x1
    addu	$s2,$s1,$s2
    # Line 2131
    addiu	$at,$s0,1324
    sw	$at,1432($s0)
    # Line 2128
    lw	$v0,32($s0)
    # Line 2135
    li	$s5,8
    lw	$s7,92($s0)
    # Line 2130
    sw	$v0,1376($s0)
    # Line 2128
    sw	$v0,1348($s0)
    # Line 2135
    andi	$s7,$s7,0x7
    subu	$s5,$s5,$s7
    # Line 2126
    lbu	$s7,1389($s0)
    # Line 2135
    andi	$s5,$s5,0x7
    sb	$s5,1389($s0)
    sd	$v1,16($sp)
    lw	$v1,-28164($s2)
    # Line 2138
    li	$a0,-97
    li	$at,1
    # Line 2135
    lw	$v1,1160($v1)
    sd	$a6,24($sp)
    beqz	$v1,.L0da840fc
    # Line 2132
    lw	$s5,40($s0)
    # Line 2137
    sw	$zero,-26364($s2)
    # Line 2138
    lwc1	$f0,80($s0)
    mul.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$a1,$f0
    nop
    beq	$a1,$at,.L0da841bc
    li	$v0,2
    beq	$a1,$v0,.L0da841a4
    nop
    # Line 2141
    lw	$a5,-26364($s2)
    sd	$ra,88($sp)
    and	$a5,$a5,$a0
    ori	$a5,$a5,0x40
    sw	$a5,-26364($s2)
.L0da83e98:
    # Line 2144
    li	$a4,1
    li	$a1,417
    move	$a0,$s1
    # Line 2142
    la	$a3,SYMBOL_LOCATION
    # Line 2144
    # lw $t9, -30696($gp) # &__glMgrasWrite
    # Line 2143
    lw	$a6,56($s0)
    li	$a2,-7
    and	$a2,$a5,$a2
    addiu	$a5,$a6,-1
    andi	$a5,$a5,0x3
    sll	$a5,$a5,0x1
    or	$a2,$a2,$a5
    sw	$a2,-26364($s2)
    # Line 2144
    jal	__glMgrasWrite
    lw	$a3,292($a3)
    ld	$ra,88($sp)
    li	$a0,0x8000
.L0da83edc:
    beq	$a0,$s5,.L0da84114
    # Line 2153
    li	$a6,6410
.L0da83ee4:
    beql	$s5,$a6,.L0da8414c
    lw	$a6,248($s0)
    sd	$ra,88($sp)
.L0da83ef0:
    move	$s5,$zero
.L0da83ef4:
    # Line 2156
    # lw $t9, -28588($gp) # &__glBytesPerElement
    jal	__glBytesPerElement
    lw	$a0,52($s0)
    trunc.w.s	$f2,$f0
    mfc1	$a2,$f2
    # Line 2158
    li	$at,4
    # Line 2156
    beqz	$a2,.L0da84164
    # Line 2169
    li	$a6,297
.L0da83f14:
    # Line 2158
    beq	$a2,$at,.L0da8416c
.L0da83f18:
    # Line 2163
    andi	$at,$s5,0x1
    sll	$at,$at,0x7
    # Line 2168
    lw	$a3,1432($s0)
    lw	$a1,72($s0)
    # Line 2163
    lw	$v0,56($s0)
    lbu	$v1,1108($s1)
    # Line 2168
    sw	$a1,100($a3)
    # Line 2163
    andi	$a3,$a2,0x3
    addiu	$v0,$v0,-1
    sltu	$v1,$zero,$v1
    sll	$v1,$v1,0x6
    andi	$v0,$v0,0x3
    # Line 2169
    lw	$a1,488($s0)
    lw	$a0,248($s0)
    # Line 2163
    sll	$v0,$v0,0x2
    or	$at,$at,$v1
    or	$at,$at,$v0
    or	$a3,$a3,$at
    # Line 2169
    andi	$a0,$a0,0x1
    beq	$a1,$a6,.L0da84174
    # Line 2163
    ori	$a3,$a3,0x600
    # Line 2169
    li	$a6,298
    beq	$a1,$a6,.L0da8418c
    li	$at,299
    beq	$a1,$at,.L0da83f98
    lw	$s5,4($sp)
    lw	$s8,0($sp)
    # Line 2193
    bnez	$a0,.L0da83fc4
    # Line 2169
    lw	$a4,144($s0)
    sd	$s6,96($sp)
.L0da83f90:
    b	.L0da83fd0
    # Line 2197
    lw	$a2,488($s0)
.L0da83f98:
    # Line 2187
    beqzl	$a0,.L0da84250
    sd	$a3,120($sp)
.L0da83fa0:
    # Line 2191
    lbu	$v0,-25436($s2)
    lw	$a4,144($s0)
    mult	$v0,$a4
    # Line 2190
    lw	$s5,404($s0)
    # Line 2191
    mflo	$s8
    nop
    nop
.L0da83fbc:
    # Line 2193
    beqzl	$a0,.L0da83f90
    sd	$s6,96($sp)
.L0da83fc4:
    sd	$s6,96($sp)
    # Line 2197
    li	$a2,300
    sw	$a2,488($s0)
.L0da83fd0:
    # Line 2206
    lw	$a5,400($s0)
    mult	$a5,$a4
    # Line 2207
    move	$a1,$s5
    # lw $t9, -30312($gp) # &__glMgr_WriteDMAGESetup
    lw	$a0,92($s0)
    # Line 2203
    lui	$s6,0x7
    ori	$s6,$s6,0x4080
    # Line 2207
    addiu	$a0,$a0,7
    # Line 2203
    lui	$a4,0xc
    ori	$a4,$a4,0x4
    sw	$a4,0($s6)
    # Line 2204
    sw	$a3,0($s6)
    # Line 2207
    li	$a3,-8
    and	$a0,$a0,$a3
    # Line 2206
    mflo	$v1
    # Line 2207
    jal	__glMgr_WriteDMAGESetup
    # Line 2206
    addu	$s3,$v1,$s3
    # Line 2208
    move	$a0,$s1
    move	$a1,$s3
    move	$a5,$s4
    # lw $t9, -30320($gp) # &__glMgr_WriteDMAHQSetup
    move	$a4,$s5
    move	$a3,$s8
    jal	__glMgr_WriteDMAHQSetup
    lw	$a2,92($s0)
    # Line 2221
    li	$a2,1
    li	$a1,-1
    li	$a0,342
    ld	$s8,96($sp)
    ld	$s5,16($sp)
    ld	$s3,8($sp)
    # Line 2215
    li	$a6,3584
    # Line 2221
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
    lui	$a7,0xc
    ori	$a7,$a7,0x4
    # Line 2214
    sw	$a7,0($s6)
    # Line 2221
    jal	__glMgrRSSRegSet
    # Line 2215
    sw	$a6,0($s6)
    # Line 2224
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    move	$a0,$zero
    jal	__glMgrInitPixelStateCRAM
    li	$a1,-2
    # Line 2225
    # lw $t9, -30428($gp) # &__glMgrInitPixelStateCRAM
    la	$a0,SYMBOL_LOCATION
    li	$a1,-1
    jal	__glMgrInitPixelStateCRAM
    lw	$a0,976($a0)
    sll	$a6,$s4,0x4
    addu	$a6,$a6,$s1
    lw	$a6,32016($a6)
    andi	$a6,$a6,0x1
    beqz	$a6,.L0da841d0
    ld	$ra,88($sp)
.L0da840a4:
    # Line 2229
    lw	$at,-28164($s2)
    ld	$s2,112($sp)
    ld	$s1,32($sp)
    lw	$at,1160($at)
    # Line 2235
    ld	$v1,24($sp)
    # Line 2229
    beqz	$at,.L0da840cc
    ld	$s4,104($sp)
    # Line 2233
    li	$v0,0x9900
    ld	$s2,112($sp)
    sw	$v0,0($s6)
.L0da840cc:
    ld	$gp,40($sp)
    # Line 2236
    sw	$s5,1352($s0)
    # Line 2239
    ld	$s5,56($sp)
    ld	$s6,80($sp)
    # Line 2238
    sb	$s7,1389($s0)
    # Line 2239
    ld	$s7,64($sp)
    # Line 2237
    sw	$s8,1376($s0)
    # Line 2239
    ld	$s8,48($sp)
    # Line 2235
    sw	$v1,1348($s0)
    # Line 2239
    ld	$s0,72($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0da840fc:
    b	.L0da83edc
    # Line 2144
    li	$a0,0x8000
.L0da84104:
    sd	$s2,112($sp)
    sd	$s6,80($sp)
    b	.L0da83dec
    # Line 2121
    li	$s4,3
.L0da84114:
    # Line 2144
    lw	$a6,424($s0)
    lui	$at,0x80
    and	$a6,$a6,$at
    beqzl	$a6,.L0da841f0
    # Line 2148
    lw	$a6,44($s0)
.L0da84128:
    # Line 2149
    bne	$a0,$s5,.L0da83ee4
    # Line 2153
    li	$a6,6410
    lw	$v0,424($s0)
    lui	$v1,0x80
    and	$v0,$v0,$v1
    beqzl	$v0,.L0da8415c
    sd	$ra,88($sp)
    b	.L0da83ee4
    li	$a6,6410
.L0da8414c:
    andi	$a6,$a6,0x4
    beqzl	$a6,.L0da83ef0
    sd	$ra,88($sp)
    sd	$ra,88($sp)
.L0da8415c:
    b	.L0da83ef4
    li	$s5,1
.L0da84164:
    b	.L0da83f14
    # Line 2158
    li	$a2,1
.L0da8416c:
    b	.L0da83f18
    # Line 2161
    li	$a2,3
.L0da84174:
    # Line 2171
    beqzl	$a0,.L0da84204
    # Line 2172
    move	$a0,$s1
.L0da8417c:
    # Line 2175
    lw	$a4,144($s0)
    # Line 2174
    lw	$s5,36($s0)
    # Line 2176
    b	.L0da83fbc
    # Line 2175
    move	$s8,$a4
.L0da8418c:
    # Line 2179
    beqzl	$a0,.L0da8422c
    sd	$a3,120($sp)
.L0da84194:
    # Line 2183
    lw	$a4,144($s0)
    # Line 2182
    lw	$s5,36($s0)
    # Line 2184
    b	.L0da83fbc
    # Line 2183
    move	$s8,$a4
.L0da841a4:
    # Line 2140
    lw	$a5,-26364($s2)
    sd	$ra,88($sp)
    and	$a5,$a5,$a0
    ori	$a5,$a5,0x20
    b	.L0da83e98
    sw	$a5,-26364($s2)
.L0da841bc:
    # Line 2139
    lw	$a5,-26364($s2)
    sd	$ra,88($sp)
    and	$a5,$a5,$a0
    b	.L0da83e98
    sw	$a5,-26364($s2)
.L0da841d0:
    # Line 2229
    move	$a0,$s1
    # lw $t9, -30340($gp) # &__glMgr_UnlockSingleDMAPool
    move	$a1,$zero
    move	$a2,$zero
    jal	__glMgr_UnlockSingleDMAPool
    move	$a3,$s4
    b	.L0da840a4
    ld	$ra,88($sp)
.L0da841f0:
    # Line 2148
    li	$a1,6408
    bne	$a6,$a0,.L0da84128
    sw	$a1,40($s0)
    b	.L0da84128
    # Line 2150
    sw	$a1,44($s0)
.L0da84204:
    # Line 2172
    move	$a1,$s0
    # lw $t9, -31916($gp) # &__glMgrInitHostToRSS
    move	$a2,$zero
    sd	$a3,120($sp)
    bal __glMgrInitHostToRSS
    move	$a3,$s8
    lw	$a0,248($s0)
    ld	$a3,120($sp)
    b	.L0da8417c
    andi	$a0,$a0,0x1
.L0da8422c:
    # Line 2180
    # lw $t9, -30668($gp) # &__glMgrInitHostToTE
    move	$a0,$s1
    move	$a1,$s0
    jal	__glMgrInitHostToTE
    move	$a2,$zero
    lw	$a0,248($s0)
    ld	$a3,120($sp)
    b	.L0da84194
    andi	$a0,$a0,0x1
.L0da84250:
    # Line 2188
    # lw $t9, -31912($gp) # &__glMgrInitPixelTexture
    move	$a0,$s1
    move	$a1,$s0
    bal __glMgrInitPixelTexture
    move	$a2,$zero
    lw	$a0,248($s0)
    ld	$a3,120($sp)
    b	.L0da83fa0
    andi	$a0,$a0,0x1
.end __glMgrFastSendPixels

# Function: __glMgrSendPixels
# Declared: Line 2245 (Source lines: 2247-2782)
# Address: 0x0da84274 - 0x0da853e4 (Size: 4464 bytes, Frame: 192)
.globl __glMgrSendPixels
.ent __glMgrSendPixels
__glMgrSendPixels:
    # Line 2247
    move	$v0,$a3
    addiu	$sp,$sp,-448
    sd	$s6,344($sp)
    # Line 2269
    lw	$s6,__glCurrentContext
    sd	$s5,360($sp)
    # Line 2256
    move	$s5,$zero
    sd	$a2,368($sp)
    sd	$s0,336($sp)
    # Line 2247
    move	$s0,$a0
    sd	$gp,352($sp)
    # Line 2269
    lw	$a4,248($a0)
    # Line 2247
    lui	$v1,0x18
    addiu	$v1,$v1,-23516
    # Line 2269
    andi	$at,$a4,0x20
    beqz	$at,.L0da84300
    # Line 2247
    addu	$gp,$t9,$v1
    # Line 2269
    lw	$v0,260($s0)
    andi	$a6,$v0,0x1
    beqz	$a6,.L0da842e8
    # Line 2277
    li	$a6,-2
    and	$a6,$v0,$a6
    sw	$a6,260($s0)
    # Line 2275
    li	$at,0x8600
    lui	$v1,0x7
    # Line 2276
    lw	$a7,420($s0)
    # Line 2275
    ori	$v1,$v1,0x4080
    sw	$at,0($v1)
    # Line 2276
    ori	$a7,$a7,0x800
    sw	$a7,420($s0)
.L0da842e8:
    ld	$gp,352($sp)
    # Line 2279
    ld	$s0,336($sp)
    ld	$s5,360($sp)
    ld	$s6,344($sp)
    jr	$ra
    addiu	$sp,$sp,448
.L0da84300:
    # Line 2286
    lwc1	$f0,720($s6)
    dmtc1	$zero,$f4
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f4
    nop
    bc1tl	.L0da84cc4
    ld	$gp,352($sp)
    lwc1	$f1,724($s6)
    cvt.d.s	$f1,$f1
    c.eq.d	$f1,$f4
    nop
    bc1tl	.L0da84cc4
    ld	$gp,352($sp)
    # Line 2287
    lbu	$a7,192($s0)
    beqz	$a7,.L0da84e08
    # Line 2292
    li	$v1,3
    sd	$zero,240($sp)
.L0da84344:
    # Line 2299
    andi	$at,$a4,0x1
    # Line 2294
    lui	$v1,0x1
    addu	$v1,$s6,$v1
    sd	$v1,96($sp)
    lbu	$v1,-25436($v1)
    # Line 2296
    sw	$zero,272($s0)
    # Line 2299
    lw	$a7,44($s0)
    # Line 2298
    lw	$a6,40($s0)
    # Line 2295
    sw	$zero,268($s0)
    sd	$a7,232($sp)
    sd	$a6,104($sp)
    # Line 2299
    beqz	$at,.L0da84e10
    sd	$v1,248($sp)
.L0da84378:
    # Line 2307
    lw	$at,1132($s0)
    beqzl	$at,.L0da84de8
    # Line 2312
    lw	$a7,1488($s0)
    sd	$ra,376($sp)
    sd	$v0,72($sp)
    sd	$a1,224($sp)
    addiu	$v1,$s0,1108
    sw	$v1,1432($s0)
.L0da84398:
    # Line 2321
    # lw $t9, -30352($gp) # &__glMgr_UseDMAForWrite
    jal	__glMgr_UseDMAForWrite
    move	$a0,$s0
    beqz	$v0,.L0da843d4
    ld	$ra,376($sp)
    ld	$a6,96($sp)
    lw	$a6,-31380($a6)
    beqzl	$a6,.L0da84f48
    # Line 2344
    lw	$t0,144($s0)
    # Line 2321
    lw	$a7,340($s0)
    andi	$a7,$a7,0x1
    beqzl	$a7,.L0da85180
    # Line 2328
    lw	$a3,1540($s0)
    sd	$s8,384($sp)
    # Line 2341
    li	$s5,1
.L0da843d4:
    # Line 2424
    ld	$at,96($sp)
.L0da843d8:
    sw	$zero,188($s0)
    lw	$at,-28164($at)
    sd	$s8,384($sp)
    lw	$at,1160($at)
    # Line 2421
    move	$s8,$zero
    sd	$zero,192($sp)
    # Line 2424
    beqz	$at,.L0da84480
    sd	$zero,312($sp)
    ld	$a0,96($sp)
    # Line 2427
    sw	$zero,-26364($a0)
    # Line 2428
    lwc1	$f3,_lit_40000000
    lwc1	$f2,80($s0)
    mul.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$v0,$f2
    li	$v1,1
    beq	$v0,$v1,.L0da84ed8
    li	$a0,-97
    li	$a6,2
    beq	$v0,$a6,.L0da84ec0
    ld	$a7,96($sp)
    # Line 2431
    lw	$v0,-26364($a7)
    and	$v0,$v0,$a0
    ori	$v0,$v0,0x40
    sw	$v0,-26364($a7)
.L0da8443c:
    # Line 2434
    li	$a4,1
    li	$a1,417
    move	$a0,$s6
    # Line 2433
    lw	$a5,56($s0)
    li	$a2,-7
    and	$a2,$v0,$a2
    addiu	$a5,$a5,-1
    andi	$a5,$a5,0x3
    sll	$a5,$a5,0x1
    or	$a2,$a2,$a5
    ld	$a5,96($sp)
    # Line 2434
    # lw $t9, -30696($gp) # &__glMgrasWrite
    la	$a3,SYMBOL_LOCATION
    # Line 2433
    sw	$a2,-26364($a5)
    # Line 2434
    jal	__glMgrasWrite
    lw	$a3,292($a3)
    ld	$ra,376($sp)
.L0da84480:
    sd	$s2,408($sp)
    # Line 2437
    lw	$a6,1492($s0)
    sd	$s4,400($sp)
    sd	$s1,392($sp)
    blez	$a6,.L0da84bac
    sd	$zero,320($sp)
    sd	$s6,200($sp)
    sd	$s3,208($sp)
    sd	$s7,216($sp)
    lw	$a6,36($sp)
    lui	$s2,0x8000
    lw	$v1,32($sp)
    sd	$a6,304($sp)
    lw	$a6,12($sp)
    sd	$v1,272($sp)
    lw	$v1,8($sp)
    sd	$a6,80($sp)
    lw	$s1,44($sp)
    sd	$v1,184($sp)
    lw	$s4,48($sp)
    sd	$s1,288($sp)
    lw	$s1,20($sp)
    sd	$s4,296($sp)
    lw	$s4,24($sp)
    sd	$s1,64($sp)
    lui	$s1,0x7
    sd	$s4,56($sp)
    lui	$s4,0xf
    ori	$s4,$s4,0xffff
    lw	$at,52($sp)
    ori	$s1,$s1,0x4080
    lw	$a7,40($sp)
    sd	$at,256($sp)
    lw	$at,28($sp)
    sd	$a7,280($sp)
    lw	$a7,16($sp)
    sd	$at,264($sp)
    addiu	$at,$s0,1108
    sd	$at,328($sp)
    ld	$at,72($sp)
    sd	$a7,176($sp)
    li	$a7,1
    sltu	$a7,$a7,$at
    b	.L0da84998
    sd	$a7,88($sp)
.L0da84534:
    # Line 2476
    lw	$at,420($s0)
.L0da84538:
    lui	$v1,0x2
    or	$at,$at,$v1
    sw	$at,420($s0)
    # Line 2477
    lw	$a7,52($v0)
    sw	$a7,312($s0)
    # Line 2478
    lw	$a6,24($v0)
    sw	$a6,316($s0)
    # Line 2479
    lw	$v1,28($v0)
    sw	$v1,320($s0)
    # Line 2482
    # lw $t9, -31920($gp) # &__glMgrInitImagingPipe
.L0da84560:
    bal __glMgrInitImagingPipe
    move	$a0,$s0
    ld	$a7,104($sp)
    # Line 2484
    move	$s3,$zero
    li	$a6,0x8000
    # Line 2482
    beq	$a6,$a7,.L0da84c90
    li	$at,6410
    # Line 2484
    ld	$v1,104($sp)
.L0da84580:
    beql	$at,$v1,.L0da84cac
    lw	$a7,248($s0)
.L0da84588:
    move	$a6,$s3
    # Line 2487
    bnez	$s3,.L0da845a0
    sd	$s3,56($sp)
    ld	$a7,200($sp)
    lbu	$a7,1108($a7)
    beqz	$a7,.L0da84604
.L0da845a0:
    # Line 2489
    nop	# was lw $t9, -28588($gp) # &__glBytesPerElement
    jal	__glBytesPerElement
    lw	$a0,52($s0)
    trunc.w.s	$f4,$f0
    mfc1	$v0,$f4
    li	$at,4
    # Line 2496
    andi	$a6,$s3,0x1
    # Line 2489
    beqz	$v0,.L0da84d00
    # Line 2496
    sll	$a6,$a6,0x7
    # Line 2491
    beq	$v0,$at,.L0da84d08
    nop
.L0da845cc:
    # Line 2496
    lw	$a7,56($s0)
    ld	$at,200($sp)
    andi	$v1,$v0,0x3
    addiu	$a7,$a7,-1
    lbu	$at,1108($at)
    andi	$a7,$a7,0x3
    sll	$a7,$a7,0x2
    sltu	$at,$zero,$at
    sll	$at,$at,0x6
    or	$a6,$a6,$at
    or	$a6,$a6,$a7
    or	$v1,$v1,$a6
    ori	$v1,$v1,0xe00
    sd	$v1,64($sp)
.L0da84604:
    # Line 2503
    lw	$v0,488($s0)
.L0da84608:
    lw	$a2,248($s0)
    li	$v1,297
    beq	$v1,$v0,.L0da84ac8
    andi	$a2,$a2,0x1
    li	$a6,298
    beq	$a6,$v0,.L0da84b6c
    li	$a7,299
    beq	$a7,$v0,.L0da84cd8
    nop
.L0da8462c:
    # Line 2530
    beqz	$a2,.L0da84638
    li	$at,300
    # Line 2534
    sw	$at,488($s0)
.L0da84638:
    # Line 2538
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,124($s0)
    # Line 2539
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,128($s0)
    # Line 2540
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,132($s0)
    # Line 2541
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,136($s0)
    # Line 2542
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    lw	$a0,1432($s0)
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,80($a0)
    # Line 2543
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,484($s0)
    # Line 2544
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    la	$a0,SYMBOL_LOCATION
    li	$a1,-1
    jal	__glMgrInitPixelStateERAM
    lw	$a0,1204($a0)
    ld	$a6,56($sp)
    la	$a2,SYMBOL_LOCATION
    ld	$at,200($sp)
    # Line 2553
    beqz	$a6,.L0da84a94
    ld	$v1,96($sp)
    # Line 2556
    ld	$a7,64($sp)
.L0da846c8:
    lui	$at,0xc
    ori	$at,$at,0x4
    # Line 2555
    sw	$at,0($s1)
    # Line 2556
    sw	$a7,0($s1)
    # Line 2566
    lw	$v0,1432($s0)
.L0da846dc:
    lbu	$v1,-25437($v1)
    li	$a7,0x8d20
    li	$a6,1
    beq	$v1,$a6,.L0da84a7c
    # Line 2560
    sw	$a7,0($s1)
    # Line 2566
    addiu	$a6,$s0,1324
    bne	$a6,$v0,.L0da84708
    li	$at,1
    lw	$a7,324($s0)
    beql	$a7,$at,.L0da84a80
    # Line 2570
    lw	$t2,8($v0)
.L0da84708:
    # Line 2575
    lw	$t3,8($v0)
    # Line 2576
    lw	$t1,1524($s0)
    addu	$t2,$t1,$t3
    move	$t0,$t1
.L0da84718:
    # Line 2594
    ld	$a6,80($sp)
    li	$a4,3
    div	$zero,$a6,$a4
    teq	$a4,$zero,0x7
    # Line 2592
    lw	$a4,12($v0)
    # Line 2597
    lw	$v1,488($s0)
    # Line 2591
    sw	$t3,0($s1)
    # Line 2609
    addu	$at,$t1,$a4
    # Line 2597
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a2
    # Line 2596
    ld	$a2,72($sp)
    # Line 2597
    lw	$v1,0($v1)
    # Line 2592
    sw	$a4,0($s1)
    # Line 2593
    sw	$t0,0($s1)
    # Line 2594
    mfhi	$a7
    sw	$a7,0($s1)
    # Line 2606
    andi	$a7,$t2,0x1
    # Line 2594
    mflo	$a6
    # Line 2595
    sw	$a6,0($s1)
    # Line 2596
    sw	$a2,0($s1)
    # Line 2600
    move	$a2,$zero
    beqz	$t3,.L0da84af0
    # Line 2597
    sw	$v1,0($s1)
    # Line 2602
    beqz	$a4,.L0da84af8
    nop
.L0da8477c:
    # Line 2604
    beqz	$t0,.L0da84b00
    nop
.L0da84784:
    # Line 2606
    beqzl	$a7,.L0da84794
    # Line 2609
    andi	$at,$at,0x1
    ori	$a2,$a2,0x1
    andi	$at,$at,0x1
.L0da84794:
    beqz	$at,.L0da847a0
    ld	$a7,88($sp)
    # Line 2611
    ori	$a2,$a2,0x2
.L0da847a0:
    beqz	$s5,.L0da847c4
    ld	$at,96($sp)
    lui	$a6,0x100
    lw	$v1,424($s0)
    ori	$a6,$a6,0x800
    and	$v1,$v1,$a6
    beqz	$v1,.L0da847c4
    nop
    # Line 2614
    ori	$a2,$a2,0x80
.L0da847c4:
    beqzl	$a7,.L0da847d4
    # Line 2619
    lw	$at,-31380($at)
    # Line 2617
    ori	$a2,$a2,0x100
    # Line 2619
    lw	$at,-31380($at)
.L0da847d4:
    ld	$t1,192($sp)
    beqz	$at,.L0da84b08
    sw	$a2,0($s1)
    lw	$v1,1444($s0)
    beqz	$v1,.L0da8480c
    ld	$a4,368($sp)
    # Line 2624
    move	$a3,$s5
    move	$a2,$zero
    move	$a1,$s8
    # lw $t9, -31888($gp) # &__glMgrSendPagedRows
    move	$a0,$s0
    # Line 2623
    addiu	$a5,$s0,1436
    # Line 2624
    bal __glMgrSendPagedRows
    # Line 2623
    sw	$a5,1484($s0)
.L0da8480c:
    # Line 2624
    lw	$a6,1460($s0)
    beqzl	$a6,.L0da84860
    # Line 2628
    lw	$a6,1476($s0)
    lw	$at,1544($s0)
    move	$s3,$zero
    # Line 2627
    addiu	$a7,$s0,1452
    # Line 2628
    blez	$at,.L0da8485c
    # Line 2627
    sw	$a7,1484($s0)
    # Line 2629
    move	$a0,$s0
.L0da84830:
    move	$a1,$s8
    # lw $t9, -31888($gp) # &__glMgrSendPagedRows
    move	$a3,$s5
    move	$a2,$s3
    bal __glMgrSendPagedRows
    ld	$a4,368($sp)
    # Line 2628
    addiu	$s3,$s3,1
    lw	$v1,1544($s0)
    slt	$v1,$s3,$v1
    bnez	$v1,.L0da84830
    # Line 2629
    move	$a0,$s0
.L0da8485c:
    # Line 2628
    lw	$a6,1476($s0)
.L0da84860:
    beqz	$a6,.L0da84888
    ld	$a4,368($sp)
    # Line 2634
    move	$a3,$s5
    move	$a2,$zero
    move	$a1,$s8
    # lw $t9, -31888($gp) # &__glMgrSendPagedRows
    move	$a0,$s0
    # Line 2633
    addiu	$a7,$s0,1468
    # Line 2634
    bal __glMgrSendPagedRows
    # Line 2633
    sw	$a7,1484($s0)
.L0da84888:
    ld	$at,56($sp)
.L0da8488c:
    # Line 2702
    beqz	$at,.L0da84aa8
    li	$v1,3584
.L0da84894:
    lui	$a6,0xc
    ori	$a6,$a6,0x4
    # Line 2704
    sw	$a6,0($s1)
    # Line 2705
    sw	$v1,0($s1)
    # Line 2712
    # lw $t9, -30268($gp) # &__glMgrRSSRegSet
.L0da848a8:
    li	$a2,1
    li	$a1,-1
    jal	__glMgrRSSRegSet
    li	$a0,342
    lbu	$a7,104($s0)
    beqz	$a7,.L0da848d0
    # Line 2715
    nop	# was lw $t9, -31960($gp) # &__glMgrResetBitmapState
    bal __glMgrResetBitmapState
    nop
    # Line 2716
    sb	$zero,104($s0)
.L0da848d0:
    # Line 2719
    lw	$v0,1432($s0)
    # Line 2722
    ld	$at,328($sp)
    # Line 2720
    ld	$v1,192($sp)
    # Line 2719
    lw	$a7,52($v0)
    # Line 2720
    lw	$a6,12($v0)
    lw	$a2,8($v0)
    # Line 2719
    addu	$s8,$a7,$s8
    # Line 2728
    addiu	$a7,$s0,1216
    # Line 2720
    addu	$a2,$a2,$a6
    addu	$v1,$a2,$v1
    # Line 2722
    move	$a2,$v0
    bne	$at,$v0,.L0da84a54
    sd	$v1,192($sp)
    lw	$at,1312($s0)
    beqz	$at,.L0da84918
    ld	$v1,192($sp)
    # Line 2726
    addiu	$v1,$v1,-1
    sd	$v1,192($sp)
.L0da84918:
    lw	$a6,1488($s0)
    beqz	$a6,.L0da84d40
    # Line 2730
    addiu	$v1,$s0,1324
    # Line 2728
    sw	$a7,1432($s0)
.L0da84928:
    # Line 2738
    beqz	$a2,.L0da84964
    ld	$a6,264($sp)
    # Line 2748
    ld	$a7,280($sp)
    # Line 2751
    sw	$a6,52($a2)
    # Line 2747
    ld	$a6,288($sp)
    # Line 2750
    ld	$v1,272($sp)
    # Line 2748
    sw	$a7,12($a2)
    # Line 2749
    ld	$at,304($sp)
    # Line 2750
    sw	$v1,28($a2)
    # Line 2744
    ld	$v1,296($sp)
    # Line 2749
    sw	$at,24($a2)
    # Line 2743
    ld	$at,256($sp)
    # Line 2747
    sw	$a6,8($a2)
    # Line 2744
    sw	$v1,4($a2)
    # Line 2743
    sw	$at,0($a2)
.L0da84964:
    ld	$a7,96($sp)
    # Line 2751
    lw	$a7,-28164($a7)
    lw	$a7,1160($a7)
    # Line 2437
    ld	$v1,320($sp)
    li	$at,0x9900
    # Line 2751
    beqz	$a7,.L0da84984
    # Line 2437
    addiu	$v1,$v1,1
    # Line 2755
    sw	$at,0($s1)
.L0da84984:
    # Line 2437
    lw	$a6,1492($s0)
    sd	$v1,320($sp)
    slt	$v1,$v1,$a6
    beqz	$v1,.L0da84b94
    ld	$ra,376($sp)
.L0da84998:
    # Line 2443
    lw	$v0,1432($s0)
    ld	$a7,328($sp)
    ld	$a6,312($sp)
    beq	$a7,$v0,.L0da849c0
    ld	$at,312($sp)
    beqzl	$at,.L0da849c4
    # Line 2456
    lw	$a2,52($v0)
    # Line 2443
    lw	$v1,1488($s0)
    bnel	$v1,$a6,.L0da84608
    # Line 2503
    lw	$v0,488($s0)
.L0da849c0:
    # Line 2456
    lw	$a2,52($v0)
.L0da849c4:
    li	$a7,0x8000
    sd	$a2,264($sp)
    # Line 2455
    lw	$v1,28($v0)
    # Line 2453
    lw	$a6,12($v0)
    # Line 2454
    lw	$at,24($v0)
    sd	$v1,272($sp)
    # Line 2452
    lw	$v1,8($v0)
    sd	$at,304($sp)
    # Line 2449
    lw	$at,4($v0)
    sd	$a6,280($sp)
    # Line 2448
    lw	$a6,0($v0)
    sd	$at,296($sp)
    # Line 2456
    ld	$at,104($sp)
    sd	$a6,256($sp)
    sd	$v1,288($sp)
    beq	$a7,$at,.L0da84c60
    move	$v1,$a2
.L0da84a08:
    # Line 2470
    lw	$a6,312($s0)
.L0da84a0c:
    bne	$a6,$a2,.L0da84534
    ld	$v1,96($sp)
    lw	$a2,24($v0)
    lw	$a7,316($s0)
    bnel	$a7,$a2,.L0da84538
    # Line 2476
    lw	$at,420($s0)
    # Line 2470
    lw	$a4,28($v0)
    lw	$at,320($s0)
    bnel	$at,$a4,.L0da84538
    # Line 2476
    lw	$at,420($s0)
    # Line 2470
    lbu	$v1,-25437($v1)
    slti	$v1,$v1,2
    bnez	$v1,.L0da84560
    # Line 2482
    nop	# was lw $t9, -31920($gp) # &__glMgrInitImagingPipe
    # Line 2470
    beq	$a2,$a4,.L0da84560
    # Line 2482
    nop	# was lw $t9, -31920($gp) # &__glMgrInitImagingPipe
    b	.L0da84538
    # Line 2476
    lw	$at,420($s0)
.L0da84a54:
    # Line 2730
    addiu	$a6,$s0,1216
    bne	$a6,$v0,.L0da84928
    # Line 2734
    ld	$at,312($sp)
    lw	$a7,1488($s0)
    addiu	$at,$at,1
    bne	$a7,$at,.L0da84ac0
    sd	$at,312($sp)
    # Line 2736
    addiu	$v1,$s0,1324
    b	.L0da84928
    sw	$v1,1432($s0)
.L0da84a7c:
    # Line 2570
    lw	$t2,8($v0)
.L0da84a80:
    lw	$t1,1524($s0)
    # Line 2571
    move	$t0,$zero
    # Line 2570
    addu	$t2,$t1,$t2
    # Line 2571
    b	.L0da84718
    # Line 2570
    move	$t3,$t2
.L0da84a94:
    # Line 2553
    lbu	$at,1108($at)
    beqzl	$at,.L0da846dc
    # Line 2566
    lw	$v0,1432($s0)
    b	.L0da846c8
    # Line 2556
    ld	$a7,64($sp)
.L0da84aa8:
    ld	$v1,200($sp)
    # Line 2702
    lbu	$v1,1108($v1)
    beqz	$v1,.L0da848a8
    # Line 2712
    nop	# was lw $t9, -30268($gp) # &__glMgrRSSRegSet
    b	.L0da84894
    li	$v1,3584
.L0da84ac0:
    b	.L0da84928
    # Line 2738
    move	$a2,$zero
.L0da84ac8:
    # Line 2505
    beqz	$a2,.L0da84eec
    ld	$a0,200($sp)
.L0da84ad0:
    # Line 2510
    lw	$at,144($s0)
    # Line 2509
    lw	$a6,1432($s0)
    # Line 2508
    lw	$a7,36($s0)
    sd	$at,184($sp)
    # Line 2509
    lw	$a6,48($a6)
    sd	$a7,176($sp)
    # Line 2511
    b	.L0da8462c
    sd	$a6,80($sp)
.L0da84af0:
    # Line 2602
    bnez	$a4,.L0da8477c
    li	$a2,4
.L0da84af8:
    # Line 2604
    bnez	$t0,.L0da84784
    ori	$a2,$a2,0x10
.L0da84b00:
    b	.L0da84784
    # Line 2606
    ori	$a2,$a2,0x8
.L0da84b08:
    # Line 2634
    sll	$t1,$t1,0x2
    beqz	$s5,.L0da84d10
    lw	$t0,144($s0)
    # Line 2644
    lw	$a7,400($s0)
    mult	$a7,$t0
    ld	$a6,72($sp)
    ld	$a5,176($sp)
    mflo	$a4
    nop
    nop
    multu	$a5,$a6
    ld	$a0,200($sp)
    ld	$a3,184($sp)
    lw	$a2,56($v0)
    # lw $t9, -30320($gp) # &__glMgr_WriteDMAHQSetup
    lw	$a1,96($v0)
    lw	$a6,0($sp)
    ld	$a5,240($sp)
    addu	$a1,$a1,$a4
    addu	$a6,$t1,$a6
    mflo	$a4
    jal	__glMgr_WriteDMAHQSetup
    addu	$a1,$a1,$a6
    b	.L0da8488c
    ld	$at,56($sp)
.L0da84b6c:
    # Line 2514
    beqz	$a2,.L0da84f0c
    # Line 2515
    nop	# was lw $t9, -30668($gp) # &__glMgrInitHostToTE
.L0da84b74:
    # Line 2519
    lw	$a6,144($s0)
    # Line 2518
    lw	$at,1432($s0)
    # Line 2517
    lw	$v1,36($s0)
    sd	$a6,184($sp)
    # Line 2518
    lw	$at,48($at)
    sd	$v1,176($sp)
    # Line 2520
    b	.L0da8462c
    sd	$at,80($sp)
.L0da84b94:
    ld	$s7,216($sp)
    ld	$s1,392($sp)
    ld	$s4,400($sp)
    ld	$s3,208($sp)
    ld	$s2,408($sp)
    ld	$s6,200($sp)
.L0da84bac:
    ld	$a7,96($sp)
    # Line 2437
    lw	$a7,-31380($a7)
    beqz	$a7,.L0da84e80
    ld	$s8,384($sp)
    beqzl	$s5,.L0da84bd8
    # Line 2764
    lw	$v1,268($s0)
    # Line 2437
    lw	$at,32016($s6)
    andi	$at,$at,0x1
    beqz	$at,.L0da85234
    # Line 2761
    nop	# was lw $t9, -30328($gp) # &__glMgr_UnlockMultiDMAPool
.L0da84bd4:
    # Line 2764
    lw	$v1,268($s0)
.L0da84bd8:
    beqz	$v1,.L0da84bec
    # Line 2768
    nop	# was lw $t9, -31900($gp) # &__glMgrSendHistogramFills
    bal __glMgrSendHistogramFills
    move	$a0,$s0
    ld	$ra,376($sp)
.L0da84bec:
    lw	$a6,272($s0)
    beqz	$a6,.L0da84c04
    # Line 2771
    nop	# was lw $t9, -31896($gp) # &__glMgrSendMinmaxFills
    bal __glMgrSendMinmaxFills
    move	$a0,$s0
    ld	$ra,376($sp)
.L0da84c04:
    lw	$v0,260($s0)
    andi	$a7,$v0,0x1
    beqz	$a7,.L0da84c38
    # Line 2777
    li	$a7,-2
    and	$a7,$v0,$a7
    sw	$a7,260($s0)
    # Line 2775
    li	$v1,0x8600
    lui	$a6,0x7
    # Line 2776
    lw	$at,420($s0)
    # Line 2775
    ori	$a6,$a6,0x4080
    sw	$v1,0($a6)
    # Line 2776
    ori	$at,$at,0x800
    sw	$at,420($s0)
.L0da84c38:
    ld	$s6,232($sp)
    # Line 2780
    ld	$s5,104($sp)
    ld	$gp,352($sp)
    # Line 2781
    sw	$s6,44($s0)
    # Line 2780
    sw	$s5,40($s0)
    # Line 2782
    ld	$s0,336($sp)
    ld	$s5,360($sp)
    ld	$s6,344($sp)
    jr	$ra
    addiu	$sp,$sp,448
.L0da84c60:
    # Line 2456
    lw	$at,424($s0)
    lui	$v1,0x80
    and	$at,$at,$v1
    bnezl	$at,.L0da84a0c
    # Line 2470
    lw	$a6,312($s0)
    # Line 2459
    ld	$a7,232($sp)
    li	$at,6408
    li	$a6,0x8000
    beq	$a6,$a7,.L0da8525c
    sw	$at,40($s0)
.L0da84c88:
    b	.L0da84a08
    # Line 2461
    lw	$a2,52($v0)
.L0da84c90:
    # Line 2484
    lw	$v1,424($s0)
    lui	$a6,0x80
    and	$v1,$v1,$a6
    beqz	$v1,.L0da84cb8
    nop
    b	.L0da84580
    ld	$v1,104($sp)
.L0da84cac:
    andi	$a7,$a7,0x4
    beqz	$a7,.L0da84588
    nop
.L0da84cb8:
    b	.L0da84588
    li	$s3,1
    ld	$gp,352($sp)
.L0da84cc4:
    # Line 2287
    ld	$s0,336($sp)
    ld	$s5,360($sp)
    ld	$s6,344($sp)
    jr	$ra
    addiu	$sp,$sp,448
.L0da84cd8:
    # Line 2523
    beqz	$a2,.L0da84f28
.L0da84cdc:
    # Line 2528
    ld	$a7,248($sp)
    lw	$a6,144($s0)
    mult	$a6,$a7
    # Line 2526
    lw	$at,404($s0)
    sd	$at,176($sp)
    sd	$at,80($sp)
    # Line 2528
    mflo	$v1
    b	.L0da8462c
    sd	$v1,184($sp)
.L0da84d00:
    b	.L0da845cc
    # Line 2491
    li	$v0,1
.L0da84d08:
    b	.L0da845cc
    # Line 2494
    li	$v0,3
.L0da84d10:
    ld	$at,200($sp)
    # Line 2656
    lw	$at,1116($at)
    multu	$at,$t0
    lw	$s3,100($s0)
    # Line 2661
    ld	$at,176($sp)
    # Line 2656
    mflo	$s7
    addu	$s3,$s3,$s7
    # Line 2661
    move	$s7,$zero
    blez	$at,.L0da84888
    # Line 2656
    addu	$s3,$s3,$t1
    b	.L0da84d60
    # Line 2662
    lw	$v1,400($s0)
.L0da84d40:
    b	.L0da84928
    # Line 2730
    sw	$v1,1432($s0)
.L0da84d48:
    # Line 2688
    sw	$zero,0($s1)
    # Line 2661
    ld	$a6,176($sp)
.L0da84d50:
    # Line 2690
    ld	$a7,184($sp)
    # Line 2661
    beq	$s7,$a6,.L0da84de0
    # Line 2690
    addu	$s3,$a7,$s3
    # Line 2662
    lw	$v1,400($s0)
.L0da84d60:
    lw	$v0,144($s0)
    mult	$v0,$v1
    lw	$v1,1432($s0)
    # Line 2682
    lw	$t0,60($v1)
    # Line 2662
    lw	$v0,148($s0)
    # Line 2684
    addiu	$s6,$t0,1
    # Line 2662
    addu	$v0,$v0,$s3
    # Line 2682
    sll	$at,$t0,0x2
    # Line 2662
    lw	$v1,96($v1)
    # Line 2682
    and	$at,$at,$s4
    # Line 2662
    mflo	$a6
    addu	$v1,$v1,$a6
    addu	$v0,$v0,$v1
    # Line 2682
    andi	$v1,$v0,0x3
    sll	$a6,$v1,0x16
    or	$at,$at,$a6
    or	$at,$at,$s2
    beqz	$v1,.L0da84dd8
    sw	$at,0($s1)
.L0da84dac:
    # Line 2687
    # lw $t9, -18688($gp) # &__glMgr_PushPixels
    move	$a0,$s6
    li	$a1,-4
    jal	__glMgr_PushPixels
    and	$a1,$a1,$v0
    # Line 2661
    addiu	$s7,$s7,1
    # Line 2687
    andi	$a6,$s6,0x1
    beqz	$a6,.L0da84d50
    # Line 2661
    ld	$a6,176($sp)
    b	.L0da84d48
    nop
.L0da84dd8:
    # Line 2684
    b	.L0da84dac
    move	$s6,$t0
.L0da84de0:
    b	.L0da8488c
    ld	$at,56($sp)
.L0da84de8:
    # Line 2312
    beqzl	$a7,.L0da85248
    sd	$ra,376($sp)
    sd	$ra,376($sp)
    sd	$v0,72($sp)
    sd	$a1,224($sp)
    # Line 2314
    addiu	$at,$s0,1216
    b	.L0da84398
    sw	$at,1432($s0)
.L0da84e08:
    b	.L0da84344
    sd	$v1,240($sp)
.L0da84e10:
    # Line 2302
    lw	$a6,424($s0)
    lui	$a7,0x100
    and	$a6,$a6,$a7
    bnezl	$a6,.L0da84e44
    sd	$v0,72($sp)
    ld	$at,96($sp)
    lw	$at,-28164($at)
    lw	$at,1160($at)
    sd	$ra,376($sp)
    sd	$v0,72($sp)
    beqz	$at,.L0da85268
    sd	$a1,224($sp)
    sd	$v0,72($sp)
.L0da84e44:
    sd	$a1,224($sp)
    # Line 2303
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    sd	$ra,376($sp)
    jal	__glMgrInitPixelStateERAM
    li	$a0,338
    # Line 2304
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    la	$a0,SYMBOL_LOCATION
    li	$a1,-1
    jal	__glMgrInitPixelStateERAM
    lw	$a0,972($a0)
    ld	$a1,224($sp)
    ld	$v0,72($sp)
    b	.L0da84378
    ld	$ra,376($sp)
.L0da84e80:
    # Line 2761
    beqz	$s5,.L0da84bd4
    ld	$a6,240($sp)
    sll	$a6,$a6,0x4
    addu	$a6,$a6,$s6
    lw	$a6,32016($a6)
    andi	$a6,$a6,0x1
    bnezl	$a6,.L0da84bd8
    # Line 2764
    lw	$v1,268($s0)
    move	$a0,$s6
    # lw $t9, -30340($gp) # &__glMgr_UnlockSingleDMAPool
    move	$a1,$zero
    move	$a2,$zero
    jal	__glMgr_UnlockSingleDMAPool
    ld	$a3,240($sp)
    b	.L0da84bd4
    ld	$ra,376($sp)
.L0da84ec0:
    ld	$a7,96($sp)
    # Line 2430
    lw	$v0,-26364($a7)
    and	$v0,$v0,$a0
    ori	$v0,$v0,0x20
    b	.L0da8443c
    sw	$v0,-26364($a7)
.L0da84ed8:
    ld	$v1,96($sp)
    # Line 2429
    lw	$v0,-26364($v1)
    and	$v0,$v0,$a0
    b	.L0da8443c
    sw	$v0,-26364($v1)
.L0da84eec:
    # Line 2506
    # lw $t9, -31916($gp) # &__glMgrInitHostToRSS
    move	$a1,$s0
    move	$a2,$s8
    bal __glMgrInitHostToRSS
    ld	$a3,224($sp)
    lw	$a2,248($s0)
    b	.L0da84ad0
    andi	$a2,$a2,0x1
.L0da84f0c:
    ld	$a0,200($sp)
    # Line 2515
    move	$a1,$s0
    jal	__glMgrInitHostToRSS
    move	$a2,$s8
    lw	$a2,248($s0)
    b	.L0da84b74
    andi	$a2,$a2,0x1
.L0da84f28:
    # Line 2524
    # lw $t9, -31912($gp) # &__glMgrInitPixelTexture
    ld	$a0,200($sp)
    move	$a1,$s0
    bal __glMgrInitPixelTexture
    move	$a2,$s8
    lw	$a2,248($s0)
    b	.L0da84cdc
    andi	$a2,$a2,0x1
.L0da84f48:
    # Line 2344
    lw	$t1,1116($s6)
    multu	$t1,$t0
    # Line 2349
    lw	$a7,36($s0)
    # Line 2344
    mflo	$a6
    nop
    # Line 2349
    addiu	$a7,$a7,-1
    mult	$a7,$t0
    # Line 2352
    ld	$a5,240($sp)
    addiu	$a4,$sp,0
    li	$a3,1
    move	$a0,$s6
    # Line 2344
    lw	$a2,100($s0)
    lw	$a1,148($s0)
    # Line 2352
    # lw $t9, -30344($gp) # &__glMgr_LockSingleDMAPool
    # Line 2344
    addu	$a2,$a2,$a6
    addu	$a1,$a1,$a2
    # Line 2349
    lw	$a2,92($s0)
    sd	$a1,136($sp)
    mflo	$a6
    addu	$a2,$a2,$a6
    # Line 2352
    jal	__glMgr_LockSingleDMAPool
    sd	$a2,144($sp)
    andi	$s5,$v0,0xff
    bnez	$v0,.L0da8505c
    ld	$ra,376($sp)
    ld	$at,144($sp)
    andi	$v1,$at,0xfff
    sd	$v1,120($sp)
    srl	$at,$at,0xc
    sd	$at,112($sp)
    addiu	$at,$at,1
    sd	$at,128($sp)
.L0da84fc8:
    la	$v0,errno
    lw	$v0,0($v0)
    li	$a6,12
    beq	$v0,$a6,.L0da84ffc
    li	$v1,11
    beq	$v0,$v1,.L0da84ffc
    # Line 2355
    nop	# was lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbf0000
    jal	perror
    addiu	$a0,$a0,-11416
    # lw $t9, -17904($gp) # &abort
    jal	abort
    nop
.L0da84ffc:
    # Line 2356
    ld	$a6,120($sp)
    beqz	$a6,.L0da8500c
    ld	$a2,112($sp)
    ld	$a2,128($sp)
.L0da8500c:
    ld	$a7,96($sp)
    # Line 2359
    lw	$a7,-28164($a7)
    lhu	$a7,1232($a7)
    sltu	$a7,$a7,$a2
    bnez	$a7,.L0da85058
    # Line 2360
    nop	# was lw $t9, -30704($gp) # &mgrTM_UnlockPages
    move	$a0,$s6
    jal	mgrTM_UnlockPages
    move	$a1,$zero
    # Line 2352
    move	$a0,$s6
    ld	$a1,136($sp)
    ld	$a2,144($sp)
    # lw $t9, -30344($gp) # &__glMgr_LockSingleDMAPool
    ld	$a5,240($sp)
    addiu	$a4,$sp,0
    jal	__glMgr_LockSingleDMAPool
    li	$a3,1
    beqz	$v0,.L0da84fc8
    andi	$s5,$v0,0xff
.L0da85058:
    ld	$ra,376($sp)
.L0da8505c:
    # Line 2371
    beqzl	$s5,.L0da8529c
    # Line 2376
    lw	$t0,144($s0)
    # Line 2399
    lw	$v0,424($s0)
    lui	$at,0x3e9e
    ori	$at,$at,0x8ff3
    and	$at,$v0,$at
    lui	$v1,0x100e
    ori	$v1,$v1,0x8f03
    beq	$at,$v1,.L0da850c8
    lui	$v1,0x3002
    ori	$v1,$v1,0x483c
    and	$v1,$v0,$v1
    lui	$a6,0x1000
    ori	$a6,$a6,0x480c
    beq	$v1,$a6,.L0da850c8
    lui	$a6,0x3021
    ori	$a6,$a6,0x82c
    and	$a6,$v0,$a6
    lui	$a7,0x1001
    ori	$a7,$a7,0x80c
    bne	$a6,$a7,.L0da843d8
    # Line 2424
    ld	$at,96($sp)
    # Line 2399
    lw	$a7,1432($s0)
    lw	$a7,72($a7)
    li	$at,6656
    beq	$a7,$at,.L0da843d8
    # Line 2424
    ld	$at,96($sp)
.L0da850c8:
    # Line 2399
    lw	$a0,40($s0)
    li	$at,6410
    beq	$a0,$at,.L0da853a8
    lui	$v1,0x100
    lw	$a2,44($s0)
.L0da850dc:
    beq	$a0,$a2,.L0da8510c
    li	$v1,6408
    beq	$a2,$v1,.L0da853bc
    lui	$a6,0x100
.L0da850ec:
    and	$a6,$v0,$a6
    beqz	$a6,.L0da843d4
    li	$a7,0x8049
    bne	$a2,$a7,.L0da843d8
    # Line 2424
    ld	$at,96($sp)
    # Line 2399
    li	$at,6409
    bne	$a0,$at,.L0da843d8
    # Line 2424
    ld	$at,96($sp)
.L0da8510c:
    # Line 2399
    lw	$v1,48($s0)
.L0da85110:
    lw	$a0,52($s0)
    bne	$v1,$a0,.L0da843d4
    lui	$a6,0x100
    and	$a6,$v0,$a6
    beqz	$a6,.L0da853d0
    li	$a7,6656
.L0da85128:
    beq	$a0,$a7,.L0da843d4
    ld	$at,72($sp)
    li	$v1,1
    bne	$at,$v1,.L0da843d8
    # Line 2424
    ld	$at,96($sp)
    ld	$a3,224($sp)
    # Line 2412
    move	$a1,$s0
    # Line 2411
    lw	$a2,248($s0)
    # Line 2412
    move	$a0,$s6
    # lw $t9, -31884($gp) # &__glMgrFastSendPixels
    # Line 2411
    ori	$a2,$a2,0x4
    sw	$a2,248($s0)
    # Line 2412
    bal __glMgrFastSendPixels
    lw	$a2,0($sp)
    ld	$gp,352($sp)
    # Line 2413
    sw	$zero,420($s0)
    # Line 2414
    ld	$s0,336($sp)
    ld	$ra,376($sp)
    ld	$s5,360($sp)
    ld	$s6,344($sp)
    jr	$ra
    addiu	$sp,$sp,448
.L0da85180:
    # Line 2328
    lw	$a2,184($s0)
    mult	$a2,$a3
    # Line 2329
    move	$a0,$s6
    lw	$t9,0($s6)
    # Line 2328
    mflo	$a1
    sd	$a1,168($sp)
    # Line 2329
    jal	__glMgrFastSendPixels
    sll	$a1,$a1,0x2
    # Line 2333
    lw	$a7,168($s0)
    lw	$a6,164($s0)
    mult	$a6,$a7
    mflo	$a5
    mtc1	$a5,$f6
    nop
    cvt.s.w	$f6,$f6
    lwc1	$f5,84($s0)
    mul.s	$f5,$f5,$f6
    # Line 2329
    move	$s5,$v0
    move	$t0,$v0
    # Line 2333
    trunc.l.s	$f5,$f5
    sd	$v0,152($sp)
    # Line 2336
    li	$a2,1
    move	$a1,$v0
    # Line 2333
    dmfc1	$a4,$f5
    # Line 2336
    # lw $t9, -30336($gp) # &__glMgrBuildLockPageList
    move	$a0,$s0
    # Line 2333
    sll	$a4,$a4,0x0
    # Line 2336
    jal	__glMgrBuildLockPageList
    sd	$a4,160($sp)
    # Line 2337
    move	$a0,$s6
    ld	$a1,168($sp)
    move	$a2,$s5
    # lw $t9, -30332($gp) # &__glMgr_LockMultiDMAPool
    ld	$a3,160($sp)
    move	$a5,$zero
    jal	__glMgr_LockMultiDMAPool
    li	$a4,1
    # Line 2339
    lw	$t9,12($s6)
    ld	$a1,152($sp)
    move	$a0,$s6
    jalr	$t9
    # Line 2337
    andi	$s5,$v0,0xff
    sd	$s8,384($sp)
    b	.L0da843d4
    ld	$ra,376($sp)
.L0da85234:
    # Line 2761
    move	$a0,$s6
    jalr	$t9
    move	$a1,$zero
    b	.L0da84bd4
    ld	$ra,376($sp)
.L0da85248:
    sd	$v0,72($sp)
    sd	$a1,224($sp)
    # Line 2316
    addiu	$at,$s0,1324
    b	.L0da84398
    sw	$at,1432($s0)
.L0da8525c:
    li	$v1,6408
    b	.L0da84c88
    # Line 2461
    sw	$v1,44($s0)
.L0da85268:
    # Line 2306
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    li	$a0,397
    # Line 2307
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    la	$a0,SYMBOL_LOCATION
    li	$a1,-1
    jal	__glMgrInitPixelStateERAM
    lw	$a0,972($a0)
    ld	$a1,224($sp)
    ld	$v0,72($sp)
    b	.L0da84378
    ld	$ra,376($sp)
.L0da8529c:
    # Line 2376
    lw	$v1,1116($s6)
    multu	$v1,$t0
    sd	$s7,216($sp)
    # Line 2380
    move	$s7,$zero
    lw	$a5,36($s0)
    sd	$s3,208($sp)
    # Line 2376
    lw	$s3,100($s0)
    mflo	$at
    # Line 2380
    blez	$a5,.L0da85388
    # Line 2376
    addu	$s3,$s3,$at
    # Line 2380
    li	$a2,-1
    li	$a0,-4
    lw	$t2,92($s0)
    lw	$t3,1432($s0)
    lw	$t1,148($s0)
    b	.L0da8534c
    lw	$t3,96($t3)
.L0da852e0:
    # Line 2390
    addiu	$a1,$a1,-1
.L0da852e4:
    # Line 2391
    addiu	$v0,$v0,4
    lw	$at,-4($v0)
    addi	$a3,$a3,-1
    bnez	$a3,.L0da852e0
    sw	$at,4($sp)
    move	$t8,$a1
.L0da852fc:
    sra	$v1,$a4,0x2
    beqz	$v1,.L0da8533c
    move	$a3,$v0
    move	$v0,$t8
    move	$a1,$a3
.L0da85310:
    addiu	$a1,$a1,16
    # Line 2390
    addiu	$v0,$v0,-4
    # Line 2391
    lw	$a6,-4($a1)
    lw	$v1,-16($a1)
    lw	$at,-12($a1)
    lw	$a7,-8($a1)
    sw	$v1,4($sp)
    sw	$at,4($sp)
    sw	$a7,4($sp)
    # Line 2390
    bne	$v0,$a2,.L0da85310
    # Line 2391
    sw	$a6,4($sp)
.L0da8533c:
    # Line 2380
    addiu	$s7,$s7,1
    slt	$a6,$s7,$a5
    beqz	$a6,.L0da85388
    # Line 2393
    addu	$s3,$t0,$s3
.L0da8534c:
    # Line 2381
    addu	$v0,$t1,$s3
    addu	$v0,$v0,$t3
    # Line 2385
    andi	$a1,$v0,0x3
    # Line 2390
    addu	$a1,$t2,$a1
    addiu	$a1,$a1,3
    sra	$a1,$a1,0x2
    addiu	$a1,$a1,-1
    beq	$a1,$a2,.L0da8533c
    # Line 2386
    and	$v0,$a0,$v0
    # Line 2390
    addiu	$a4,$a1,1
    andi	$a3,$a4,0x3
    beqz	$a3,.L0da852fc
    move	$t8,$a1
    b	.L0da852e4
    addiu	$a1,$a1,-1
.L0da85388:
    ld	$gp,352($sp)
    # Line 2397
    ld	$s0,336($sp)
    ld	$s3,208($sp)
    ld	$s5,360($sp)
    ld	$s6,344($sp)
    ld	$s7,216($sp)
    jr	$ra
    addiu	$sp,$sp,448
.L0da853a8:
    # Line 2399
    and	$v1,$v0,$v1
    beqz	$v1,.L0da843d8
    # Line 2424
    ld	$at,96($sp)
    b	.L0da850dc
    # Line 2399
    lw	$a2,44($s0)
.L0da853bc:
    li	$a6,0x8000
    beql	$a0,$a6,.L0da85110
    lw	$v1,48($s0)
    b	.L0da850ec
    lui	$a6,0x100
.L0da853d0:
    li	$a7,6406
    beq	$a2,$a7,.L0da843d8
    # Line 2424
    ld	$at,96($sp)
    b	.L0da85128
    # Line 2399
    li	$a7,6656
.end __glMgrSendPixels

# Function: __glMgrCopyTile
# Declared: Line 2785 (Source lines: 2786-2976)
# Address: 0x0da853e4 - 0x0da85880 (Size: 1180 bytes, Frame: 224)
.globl __glMgrCopyTile
.ent __glMgrCopyTile
__glMgrCopyTile:
    # Line 2804
    li	$a2,1
    # Line 2786
    addiu	$sp,$sp,-96
    sd	$s1,24($sp)
    sd	$a1,32($sp)
    # Line 2804
    li	$a1,1
    sd	$s0,56($sp)
    # Line 2786
    move	$s0,$a0
    sd	$ra,64($sp)
    # Line 2797
    lw	$v1,__glCurrentContext
    sd	$gp,48($sp)
    # Line 2786
    lui	$v0,0x18
    addiu	$v0,$v0,-27980
    addu	$gp,$t9,$v0
    # Line 2804
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 2786
    la	$at,SYMBOL_LOCATION
    sd	$v1,40($sp)
    # Line 2804
    jal	__Mgr_ReturnMode
    lw	$a0,1044($at)
    move	$s1,$v0
    # Line 2806
    lui	$a2,0x8000
    and	$a2,$v0,$a2
    beqz	$a2,.L0da857d4
    lw	$a0,20($s0)
    srl	$v0,$s1,0x10
.L0da85444:
    dsll32	$v0,$v0,0x10
    dsra32	$v0,$v0,0x10
    addu	$v0,$a0,$v0
    bltzl	$v0,.L0da85818
    # Line 2815
    lw	$v1,28($s0)
.L0da85458:
    # Line 2817
    bgezl	$a0,.L0da85494
    # Line 2845
    lw	$ra,1432($s0)
    # Line 2822
    lw	$a2,36($s0)
    # Line 2826
    sw	$zero,20($s0)
    # Line 2820
    negu	$a3,$a0
    # Line 2822
    subu	$a2,$a2,$a3
    # Line 2825
    sw	$a2,1372($s0)
    # Line 2824
    sw	$a2,1264($s0)
    # Line 2821
    lw	$v1,28($s0)
    # Line 2823
    sw	$a2,1156($s0)
    # Line 2822
    sw	$a2,36($s0)
    # Line 2821
    addu	$v1,$v1,$a3
    # Line 2826
    blez	$a2,.L0da85868
    # Line 2821
    sw	$v1,28($s0)
    # Line 2845
    lw	$ra,1432($s0)
.L0da85494:
    lw	$at,56($s0)
    lw	$ra,52($ra)
    multu	$ra,$at
    # Line 2855
    li	$a1,-2
    lw	$a0,124($s0)
    sd	$s5,0($sp)
    # Line 2833
    lw	$s5,424($s0)
    # Line 2845
    mflo	$t9
    dsll32	$t9,$t9,0x0
    dsrl32	$t9,$t9,0x0
    dmtc1	$t9,$f1
    # Line 2833
    lui	$t8,0x100
    and	$s5,$s5,$t8
    # Line 2845
    cvt.s.l	$f1,$f1
    # Line 2833
    sltu	$s5,$zero,$s5
    # Line 2848
    lui	$a6,0x1
    ori	$a6,$a6,0xffff
    # Line 2845
    lwc1	$f0,76($s0)
    # Line 2848
    lw	$a5,1552($s0)
    lui	$a4,0x1
    # Line 2845
    mul.s	$f0,$f0,$f1
    # Line 2848
    ori	$a4,$a4,0xc000
    nor	$a4,$a4,$zero
    and	$a4,$a5,$a4
    and	$a5,$a5,$a6
    srl	$a5,$a5,0xe
    andi	$a5,$a5,0x4
    # Line 2845
    trunc.w.s	$f0,$f0
    # Line 2848
    sll	$a5,$a5,0xe
    or	$a4,$a4,$a5
    sd	$a4,16($sp)
    # Line 2845
    mfc1	$a3,$f0
    li	$a4,-4
    # Line 2855
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    # Line 2845
    addiu	$a3,$a3,3
    and	$a3,$a3,$a4
    # Line 2855
    jal	__glMgrInitPixelStateERAM
    sd	$a3,8($sp)
    # Line 2856
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,128($s0)
    # Line 2857
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,132($s0)
    # Line 2858
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,136($s0)
    # Line 2859
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    lw	$a0,1432($s0)
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,80($a0)
    # Line 2860
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    lw	$a0,484($s0)
    # Line 2861
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    la	$a0,SYMBOL_LOCATION
    li	$a1,-1
    jal	__glMgrInitPixelStateERAM
    lw	$a0,1204($a0)
    ld	$ra,16($sp)
    ld	$a0,40($sp)
    ld	$v0,32($sp)
    # Line 2865
    li	$a1,0x8e70
    lui	$a5,0x7
    ori	$a5,$a5,0x4080
    lw	$t1,1432($s0)
    sw	$a1,0($a5)
    lw	$t2,1524($s0)
    lw	$a6,12($t1)
    lw	$a4,8($t1)
    ld	$a1,8($sp)
    beqz	$a6,.L0da857e4
    addu	$t8,$t2,$a4
    # Line 2878
    move	$a7,$a4
    # Line 2879
    move	$t0,$t2
.L0da855d4:
    # Line 2890
    lw	$t9,48($t1)
    li	$a4,3
    div	$zero,$t9,$a4
    li	$a2,3
    teq	$a4,$zero,0x7
    # Line 2887
    sw	$a7,0($a5)
    # Line 2888
    sw	$a6,0($a5)
    # Line 2889
    sw	$t0,0($a5)
    # Line 2898
    move	$a4,$zero
    # Line 2890
    mfhi	$t3
    beqz	$t3,.L0da857f0
    # Line 2894
    addiu	$a3,$t9,2
.L0da85604:
    div	$zero,$a3,$a2
    teq	$a2,$zero,0x7
    # Line 2895
    addiu	$at,$t3,-1
    # Line 2893
    sw	$t3,0($a5)
    # Line 2894
    mflo	$v1
    sw	$v1,0($a5)
    # Line 2898
    beqz	$a7,.L0da857f8
    # Line 2895
    sw	$at,0($a5)
.L0da85624:
    # Line 2901
    beqz	$a6,.L0da85800
.L0da85628:
    # Line 2908
    addu	$v1,$t2,$a6
    # Line 2903
    beqz	$t0,.L0da85808
.L0da85630:
    # Line 2905
    andi	$at,$t8,0x1
    beqzl	$at,.L0da85644
    # Line 2908
    andi	$v1,$v1,0x1
    ori	$a4,$a4,0x1
    andi	$v1,$v1,0x1
.L0da85644:
    beqz	$v1,.L0da85650
    nop
    # Line 2910
    ori	$a4,$a4,0x2
.L0da85650:
    beqz	$s5,.L0da8565c
    nop
    # Line 2913
    ori	$a4,$a4,0x20
.L0da8565c:
    beqz	$a6,.L0da85810
    nop
.L0da85664:
    # Line 2946
    sltiu	$s5,$s5,1
    # Line 2918
    lw	$t0,36($s0)
    sw	$a4,0($a5)
    slti	$a2,$t0,7
    beqz	$a2,.L0da85688
    addiu	$a6,$t0,-1
    # Line 2924
    move	$a4,$a6
    # Line 2925
    b	.L0da85690
    move	$a7,$a6
.L0da85688:
    # Line 2930
    li	$a7,2
    # Line 2929
    li	$a4,5
.L0da85690:
    ld	$gp,48($sp)
    # Line 2949
    lw	$a3,24($s0)
    # Line 2941
    lui	$a2,0x1
    addu	$a2,$a0,$a2
    # Line 2939
    lw	$at,28($s0)
    # Line 2937
    lw	$t8,16($s0)
    # Line 2934
    sw	$s1,0($a5)
    # Line 2938
    lw	$t3,20($s0)
    # Line 2937
    addu	$t8,$t8,$v0
    sw	$t8,0($a5)
    # Line 2938
    sw	$t3,0($a5)
    # Line 2939
    sw	$at,0($a5)
    # Line 2940
    sw	$a4,0($a5)
    # Line 2941
    lw	$s1,-27956($a2)
    # Line 2949
    addu	$v0,$a3,$v0
    # Line 2942
    lw	$t2,1552($s0)
    # Line 2944
    lw	$t8,52($t1)
    # Line 2941
    sw	$s1,0($a5)
    # Line 2942
    sw	$t2,0($a5)
    # Line 2943
    lw	$v1,-27000($a2)
    li	$a3,-5
    # Line 2944
    addiu	$t9,$t8,-1
    # Line 2943
    ori	$v1,$v1,0x8
    and	$v1,$v1,$a3
    sw	$v1,0($a5)
    # Line 2944
    sw	$t9,0($a5)
    # Line 2945
    sw	$a6,0($a5)
    # Line 2946
    sw	$s5,0($a5)
    # Line 2949
    sw	$v0,0($a5)
    # Line 2950
    sw	$at,0($a5)
    # Line 2951
    sw	$t3,0($a5)
    # Line 2952
    sw	$a7,0($a5)
    # Line 2953
    lw	$t2,-27956($a2)
    # Line 2963
    lui	$s0,0xa
    # Line 2953
    sw	$t2,0($a5)
    # Line 2954
    lw	$v1,-26652($a2)
    # Line 2963
    ori	$s0,$s0,0x204
    # Line 2966
    andi	$t8,$t8,0xffff
    # Line 2960
    li	$s1,768
    # Line 2954
    sw	$v1,0($a5)
    # Line 2975
    lui	$v1,0xe
    ori	$v1,$v1,0x300
    # Line 2967
    lui	$t3,0xa
    ori	$t3,$t3,0x404
    # Line 2971
    lui	$t2,0xa
    # Line 2955
    lw	$at,-27000($a2)
    # Line 2971
    ori	$t2,$t2,0x504
    # Line 2955
    li	$v0,-9
    and	$at,$at,$v0
    sw	$at,0($a5)
    # Line 2956
    sw	$t9,0($a5)
    # Line 2957
    sw	$a6,0($a5)
    # Line 2958
    sw	$s5,0($a5)
    # Line 2976
    ld	$s5,0($sp)
    # Line 2960
    sw	$s1,0($a5)
    # Line 2976
    ld	$s1,24($sp)
    # Line 2963
    sw	$s0,0($a5)
    # Line 2976
    ld	$s0,56($sp)
    # Line 2966
    sll	$t9,$t0,0x10
    or	$t8,$t8,$t9
    # Line 2965
    lui	$t9,0xa
    ori	$t9,$t9,0x304
    # Line 2964
    sw	$a1,0($a5)
    # Line 2965
    sw	$t9,0($a5)
    # Line 2966
    sw	$t8,0($a5)
    # Line 2967
    sw	$t3,0($a5)
    # Line 2970
    li	$t3,9
    # Line 2969
    lui	$t8,0xa
    ori	$t8,$t8,0x604
    # Line 2968
    sw	$ra,0($a5)
    # Line 2969
    sw	$t8,0($a5)
    # Line 2970
    sw	$t3,0($a5)
    # Line 2971
    sw	$t2,0($a5)
    # Line 2972
    lw	$a2,-27000($a2)
    # Line 2976
    ld	$ra,64($sp)
    addiu	$sp,$sp,96
    # Line 2972
    ori	$a2,$a2,0x8
    and	$a2,$a2,$a3
    sw	$a2,0($a5)
    # Line 2976
    jr	$ra
    # Line 2975
    sw	$v1,0($a5)
.L0da857d4:
    # Line 2806
    bgezl	$a0,.L0da85494
    # Line 2845
    lw	$ra,1432($s0)
    b	.L0da85444
    # Line 2806
    srl	$v0,$s1,0x10
.L0da857e4:
    # Line 2873
    move	$a7,$t8
    # Line 2874
    b	.L0da855d4
    move	$t0,$zero
.L0da857f0:
    b	.L0da85604
    # Line 2892
    li	$t3,3
.L0da857f8:
    b	.L0da85624
    # Line 2901
    li	$a4,4
.L0da85800:
    b	.L0da85628
    # Line 2903
    ori	$a4,$a4,0x10
.L0da85808:
    b	.L0da85630
    # Line 2905
    ori	$a4,$a4,0x8
.L0da85810:
    b	.L0da85664
    # Line 2916
    ori	$a4,$a4,0x80
.L0da85818:
    # Line 2809
    negu	$at,$v0
    dsll32	$at,$at,0x10
    dsra32	$at,$at,0x10
    # Line 2815
    addu	$v1,$v1,$at
    sw	$v1,28($s0)
    # Line 2810
    lw	$a3,36($s0)
    # Line 2814
    addu	$a0,$at,$a0
    sw	$a0,20($s0)
    # Line 2810
    subu	$a3,$a3,$at
    # Line 2813
    sw	$a3,1372($s0)
    # Line 2812
    sw	$a3,1264($s0)
    # Line 2811
    sw	$a3,1156($s0)
    # Line 2815
    bgtz	$a3,.L0da85458
    # Line 2810
    sw	$a3,36($s0)
    ld	$gp,48($sp)
    # Line 2817
    ld	$ra,64($sp)
    ld	$s0,56($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da85868:
    ld	$gp,48($sp)
    # Line 2828
    ld	$ra,64($sp)
    ld	$s0,56($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glMgrCopyTile

# Function: __glMgrFastCopyPixels
# Declared: Line 2979 (Source lines: 2980-3172)
# Address: 0x0da85880 - 0x0da85d90 (Size: 1296 bytes, Frame: 176)
.globl __glMgrFastCopyPixels
.ent __glMgrFastCopyPixels
__glMgrFastCopyPixels:
    # Line 2980
    addiu	$sp,$sp,-176
    sd	$ra,120($sp)
    sd	$s5,48($sp)
    # Line 2988
    lw	$s5,__glCurrentContext
    sd	$s2,64($sp)
    # Line 2980
    move	$s2,$a1
    sd	$s0,56($sp)
    move	$s0,$a0
    sd	$gp,40($sp)
    # Line 2988
    lw	$at,0($a0)
    # Line 2980
    lui	$v0,0x18
    addiu	$v0,$v0,-29160
    # Line 2988
    bnez	$at,.L0da85c90
    # Line 2980
    addu	$gp,$t9,$v0
    # Line 3001
    move	$a3,$zero
.L0da858bc:
    # lw $t9, -30688($gp) # &__glMgrSaveTexmode
    move	$a2,$zero
    move	$a1,$zero
    jal	__glMgrSaveTexmode
    li	$a0,1
    lw	$v1,424($s0)
    lui	$a1,0x100
    and	$v1,$v1,$a1
    beqz	$v1,.L0da85cd0
    lui	$a1,0x140
    # Line 3003
    li	$a4,3
    # lw $t9, -30284($gp) # &__glMgrSaveRSS
    move	$a3,$zero
    move	$a2,$zero
    jal	__glMgrSaveRSS
    li	$a0,-1
    # Line 3007
    beqzl	$s2,.L0da85cf8
    # Line 3020
    lw	$a2,1348($s0)
    # Line 3007
    lw	$a2,1132($s0)
.L0da85908:
    beqz	$a2,.L0da85d1c
    # Line 3014
    addiu	$at,$s0,1108
    sd	$s1,112($sp)
    sw	$at,1432($s0)
.L0da85918:
    sd	$s3,96($sp)
    sd	$s4,104($sp)
    # Line 3020
    move	$s1,$zero
.L0da85924:
    sd	$s6,144($sp)
    sd	$s8,136($sp)
    sd	$s7,128($sp)
    # Line 3034
    move	$s4,$zero
    # Line 3036
    lw	$v0,1492($s0)
    lw	$v1,12($sp)
    sd	$s5,32($sp)
    beqz	$v0,.L0da85b54
    move	$s3,$zero
    lw	$s7,24($sp)
    lw	$s6,8($sp)
    lw	$s8,0($sp)
    lw	$s5,20($sp)
    sd	$v1,80($sp)
    lw	$a2,16($sp)
    sd	$s5,88($sp)
    lw	$s5,4($sp)
    b	.L0da85a64
    sd	$a2,72($sp)
.L0da85970:
    # Line 3070
    lw	$a2,420($s0)
.L0da85974:
    lui	$at,0x2
    or	$a2,$a2,$at
    sw	$a2,420($s0)
    # Line 3071
    lw	$v1,52($a3)
    sw	$v1,312($s0)
    # Line 3072
    lw	$v0,24($a3)
    sw	$v0,316($s0)
    # Line 3073
    lw	$at,28($a3)
    sw	$at,320($s0)
    # Line 3076
    # lw $t9, -31920($gp) # &__glMgrInitImagingPipe
.L0da8599c:
    bal __glMgrInitImagingPipe
    move	$a0,$s0
    lw	$v0,248($s0)
    andi	$v0,$v0,0x1
    beqz	$v0,.L0da85c44
    lui	$a2,0x100
    # Line 3088
    lw	$a2,1432($s0)
.L0da859b8:
    lui	$at,0xfffe
    lw	$v1,1552($s0)
    lbu	$a2,64($a2)
    ori	$at,$at,0x3fff
    and	$v1,$v1,$at
    andi	$a2,$a2,0x7
    sll	$a2,$a2,0xe
    or	$v1,$v1,$a2
    sw	$v1,1552($s0)
.L0da859dc:
    beqz	$s2,.L0da85bf4
    # Line 3095
    nop	# was lw $t9, -31876($gp) # &__glMgrCopyTile
    move	$a0,$s0
    bal __glMgrCopyTile
    move	$a1,$s1
    # Line 3097
    lw	$a3,1432($s0)
    # Line 3105
    addiu	$at,$s0,1216
    # Line 3099
    addiu	$v1,$s0,1108
    # Line 3097
    lw	$v0,52($a3)
    # Line 3099
    move	$a4,$a3
    bne	$v1,$a3,.L0da85b14
    # Line 3097
    addu	$s1,$v0,$s1
    # Line 3099
    lw	$a2,1488($s0)
    beqz	$a2,.L0da85cc4
    # Line 3103
    addiu	$at,$s0,1216
    sw	$at,1432($s0)
.L0da85a1c:
    # Line 3143
    ld	$v0,88($sp)
.L0da85a20:
    # Line 3136
    beqz	$a4,.L0da85a48
    # Line 3146
    ld	$v1,72($sp)
    # Line 3150
    sw	$s8,52($a4)
    # Line 3149
    sw	$s5,28($a4)
    # Line 3148
    sw	$s6,24($a4)
    # Line 3142
    sw	$s7,0($a4)
    # Line 3147
    ld	$a2,80($sp)
    # Line 3146
    sw	$v1,8($a4)
    # Line 3143
    sw	$v0,4($a4)
    # Line 3147
    sw	$a2,12($a4)
.L0da85a48:
    # Line 3154
    lw	$at,36($s0)
    blez	$at,.L0da85b48
    # Line 3036
    addiu	$s3,$s3,1
    lw	$v0,1492($s0)
    sltu	$v0,$s3,$v0
    beqzl	$v0,.L0da85b4c
    ld	$s7,128($sp)
.L0da85a64:
    beqz	$s2,.L0da85b34
    # Line 3042
    addiu	$a2,$s0,1324
    lw	$a3,1432($s0)
    addiu	$v1,$s0,1108
    beql	$v1,$a3,.L0da85aa0
    # Line 3048
    lw	$s7,0($a3)
    # Line 3042
    beqzl	$s2,.L0da85b38
    lw	$a3,1432($s0)
.L0da85a84:
    beqz	$s4,.L0da85c88
    nop
    lw	$a2,1488($s0)
    bne	$a2,$s4,.L0da859dc
    nop
    lw	$a3,1432($s0)
.L0da85a9c:
    # Line 3048
    lw	$s7,0($a3)
.L0da85aa0:
    # Line 3054
    lw	$a4,24($a3)
    # Line 3056
    lw	$s8,52($a3)
    # Line 3064
    lw	$at,312($s0)
    # Line 3055
    lw	$a5,28($a3)
    # Line 3053
    lw	$a2,12($a3)
    # Line 3052
    lw	$v1,8($a3)
    # Line 3049
    lw	$v0,4($a3)
    sd	$a2,80($sp)
    sd	$v1,72($sp)
    sd	$v0,88($sp)
    # Line 3055
    move	$s5,$a5
    # Line 3064
    bne	$at,$s8,.L0da85970
    # Line 3054
    move	$s6,$a4
    # Line 3064
    lw	$at,316($s0)
    bnel	$at,$a4,.L0da85974
    # Line 3070
    lw	$a2,420($s0)
    # Line 3064
    lw	$v0,320($s0)
    lui	$v1,0x1
    bne	$v0,$a5,.L0da85970
    ld	$a2,32($sp)
    addu	$v1,$v1,$a2
    lbu	$v1,-25437($v1)
    slti	$v1,$v1,2
    bnez	$v1,.L0da8599c
    # Line 3076
    nop	# was lw $t9, -31920($gp) # &__glMgrInitImagingPipe
    # Line 3064
    beq	$a4,$a5,.L0da8599c
    # Line 3076
    nop	# was lw $t9, -31920($gp) # &__glMgrInitImagingPipe
    b	.L0da85974
    # Line 3070
    lw	$a2,420($s0)
.L0da85b14:
    # Line 3105
    bne	$at,$a3,.L0da85a20
    # Line 3143
    ld	$v0,88($sp)
    # Line 3109
    lw	$v0,1488($s0)
    addiu	$s4,$s4,1
    bne	$v0,$s4,.L0da85c3c
    # Line 3111
    addiu	$v1,$s0,1324
    b	.L0da85a1c
    sw	$v1,1432($s0)
.L0da85b34:
    # Line 3042
    lw	$a3,1432($s0)
.L0da85b38:
    beql	$a2,$a3,.L0da85aa0
    # Line 3048
    lw	$s7,0($a3)
    b	.L0da85a84
    nop
.L0da85b48:
    ld	$s7,128($sp)
.L0da85b4c:
    ld	$s8,136($sp)
    ld	$s6,144($sp)
.L0da85b54:
    # Line 3157
    # lw $t9, -30280($gp) # &__glMgrRestoreRSS
    ld	$s3,96($sp)
    ld	$s4,104($sp)
    jal	__glMgrRestoreRSS
    ld	$s1,112($sp)
    # Line 3158
    # lw $t9, -30684($gp) # &__glMgrRestoreTexmode
    jal	__glMgrRestoreTexmode
    nop
    lw	$at,268($s0)
    beqz	$at,.L0da85b90
    ld	$ra,120($sp)
    # Line 3161
    # lw $t9, -31900($gp) # &__glMgrSendHistogramFills
    bal __glMgrSendHistogramFills
    move	$a0,$s0
    ld	$ra,120($sp)
.L0da85b90:
    lw	$v0,272($s0)
    beqz	$v0,.L0da85ba8
    # Line 3164
    nop	# was lw $t9, -31896($gp) # &__glMgrSendMinmaxFills
    bal __glMgrSendMinmaxFills
    move	$a0,$s0
    ld	$ra,120($sp)
.L0da85ba8:
    # Line 3172
    ld	$s2,64($sp)
    # Line 3164
    lw	$a0,260($s0)
    # Line 3172
    ld	$s5,48($sp)
    # Line 3168
    lui	$v0,0x7
    # Line 3164
    andi	$v1,$a0,0x1
    beqz	$v1,.L0da85be8
    ld	$gp,40($sp)
    # Line 3168
    ori	$v0,$v0,0x4080
    li	$at,0x8600
    sw	$at,0($v0)
    # Line 3170
    li	$v1,-2
    # Line 3169
    lw	$a2,420($s0)
    # Line 3170
    and	$v1,$a0,$v1
    sw	$v1,260($s0)
    # Line 3169
    ori	$a2,$a2,0x800
    sw	$a2,420($s0)
.L0da85be8:
    # Line 3172
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da85bf4:
    # Line 3118
    lw	$a1,1432($s0)
    lw	$a1,52($a1)
    # Line 3120
    # lw $t9, -31876($gp) # &__glMgrCopyTile
    move	$a0,$s0
    # Line 3118
    subu	$s1,$s1,$a1
    # Line 3120
    bal __glMgrCopyTile
    move	$a1,$s1
    # Line 3122
    lw	$a3,1432($s0)
    # Line 3128
    addiu	$at,$s0,1216
    # Line 3122
    addiu	$a2,$s0,1324
    bne	$a2,$a3,.L0da85c68
    move	$a4,$a3
    lw	$at,1488($s0)
    beqz	$at,.L0da85d58
    # Line 3128
    addiu	$a2,$s0,1108
    # Line 3126
    addiu	$v0,$s0,1216
    b	.L0da85a1c
    sw	$v0,1432($s0)
.L0da85c3c:
    b	.L0da85a1c
    # Line 3113
    move	$a4,$zero
.L0da85c44:
    # Line 3076
    lw	$v1,424($s0)
    and	$v1,$v1,$a2
    beqz	$v1,.L0da85d40
    # Line 3084
    nop	# was lw $t9, -31904($gp) # &__glMgrInitRSSToTE
    ld	$a0,32($sp)
    bal __glMgrInitRSSToTE
    move	$a1,$s0
    b	.L0da859b8
    # Line 3088
    lw	$a2,1432($s0)
.L0da85c68:
    # Line 3128
    bne	$at,$a3,.L0da85a20
    # Line 3143
    ld	$v0,88($sp)
    # Line 3132
    lw	$v0,1488($s0)
    addiu	$s4,$s4,1
    bne	$v0,$s4,.L0da85d38
    # Line 3134
    addiu	$v1,$s0,1108
    b	.L0da85a1c
    sw	$v1,1432($s0)
.L0da85c88:
    b	.L0da85a9c
    # Line 3042
    lw	$a3,1432($s0)
.L0da85c90:
    # Line 2996
    # lw $t9, -30028($gp) # &__glMgrBuildChain
    jal	__glMgrBuildChain
    move	$a0,$s0
    # Line 2997
    # lw $t9, -29788($gp) # &__glMgrMakeTiles
    move	$a0,$s0
    jal	__glMgrMakeTiles
    move	$a1,$s5
    # Line 2998
    # lw $t9, -29820($gp) # &__glMgrMakePages
    move	$a0,$s0
    jal	__glMgrMakePages
    move	$a1,$s5
    b	.L0da858bc
    # Line 3001
    move	$a3,$zero
.L0da85cc4:
    # Line 3105
    addiu	$a2,$s0,1324
    b	.L0da85a1c
    sw	$a2,1432($s0)
.L0da85cd0:
    # Line 3007
    li	$a4,3
    lw	$a3,236($s0)
    # lw $t9, -30284($gp) # &__glMgrSaveRSS
    lw	$a2,232($s0)
    lui	$a0,0x1e0
    jal	__glMgrSaveRSS
    ori	$a0,$a0,0x3929
    bnezl	$s2,.L0da85908
    lw	$a2,1132($s0)
    # Line 3020
    lw	$a2,1348($s0)
.L0da85cf8:
    beqzl	$a2,.L0da85d60
    # Line 3025
    lw	$at,1488($s0)
    sd	$s1,112($sp)
    addiu	$at,$s0,1324
    sw	$at,1432($s0)
.L0da85d0c:
    sd	$s3,96($sp)
    sd	$s4,104($sp)
    b	.L0da85924
    # Line 3031
    lw	$s1,32($s0)
.L0da85d1c:
    # Line 3014
    lw	$v0,1488($s0)
    beqzl	$v0,.L0da85d78
    sd	$s1,112($sp)
    sd	$s1,112($sp)
    # Line 3016
    addiu	$v1,$s0,1216
    b	.L0da85918
    sw	$v1,1432($s0)
.L0da85d38:
    b	.L0da85a1c
    # Line 3136
    move	$a4,$zero
.L0da85d40:
    # Line 3086
    # lw $t9, -31908($gp) # &__glMgrInitRSSToRSS
    ld	$a0,32($sp)
    bal __glMgrInitRSSToRSS
    move	$a1,$s0
    b	.L0da859b8
    # Line 3088
    lw	$a2,1432($s0)
.L0da85d58:
    b	.L0da85a1c
    # Line 3128
    sw	$a2,1432($s0)
.L0da85d60:
    # Line 3025
    beqzl	$at,.L0da85d84
    sd	$s1,112($sp)
    sd	$s1,112($sp)
    # Line 3027
    addiu	$v0,$s0,1216
    b	.L0da85d0c
    sw	$v0,1432($s0)
.L0da85d78:
    # Line 3018
    addiu	$v1,$s0,1324
    b	.L0da85918
    sw	$v1,1432($s0)
.L0da85d84:
    # Line 3029
    addiu	$a2,$s0,1108
    b	.L0da85d0c
    sw	$a2,1432($s0)
.end __glMgrFastCopyPixels

# Function: __glMgrSlowCopyPixels
# Declared: Line 3175 (Source lines: 3176-3344)
# Address: 0x0da85d90 - 0x0da8641c (Size: 1676 bytes, Frame: 208)
.globl __glMgrSlowCopyPixels
.ent __glMgrSlowCopyPixels
__glMgrSlowCopyPixels:
    # Line 3176
    addiu	$sp,$sp,-208
    sd	$s4,96($sp)
    # Line 3185
    move	$s4,$zero
    sd	$s1,88($sp)
    # Line 3178
    lw	$s1,__glCurrentContext
    sd	$gp,112($sp)
    # Line 3176
    lui	$v1,0x18
    addiu	$v1,$v1,-30456
    # Line 3193
    lw	$t1,24($a0)
    # Line 3176
    addu	$gp,$t9,$v1
    # Line 3192
    lw	$t0,44($a0)
    sd	$t1,56($sp)
    sd	$s8,80($sp)
    # Line 3197
    lw	$s8,140($a0)
    sd	$s6,128($sp)
    # Line 3196
    lw	$s6,36($a0)
    sd	$s7,104($sp)
    # Line 3195
    lw	$s7,32($a0)
    sd	$s0,120($sp)
    # Line 3194
    lw	$at,28($a0)
    # Line 3176
    move	$s0,$a0
    # Line 3197
    lw	$v0,52($s0)
    sd	$at,64($sp)
    lw	$at,48($s0)
    # Line 3191
    lw	$a0,40($a0)
    sd	$t0,72($sp)
    # Line 3197
    beq	$at,$v0,.L0da85e14
    sd	$a0,40($sp)
    # Line 3205
    lwc1	$f0,80($s0)
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    b	.L0da85e28
    sd	$s2,152($sp)
.L0da85e14:
    # Line 3207
    lwc1	$f1,76($s0)
    trunc.w.s	$f1,$f1
    sd	$s2,152($sp)
    mfc1	$v0,$f1
    nop
.L0da85e28:
    # Line 3209
    addiu	$at,$s7,3
    mult	$at,$s6
    lw	$t1,56($s0)
    mflo	$s2
    nop
    nop
    multu	$t1,$s2
    mflo	$t0
    nop
    nop
    multu	$t0,$v0
    # Line 3211
    li	$v1,0x8000
    # Line 3209
    mflo	$s2
    # Line 3211
    slt	$v1,$v1,$s2
    xori	$v1,$v1,0x1
    beqz	$v1,.L0da863d8
    sb	$v1,192($s0)
    sd	$ra,168($sp)
    sd	$s3,184($sp)
    # Line 3215
    lw	$s3,196($s0)
    sd	$s5,176($sp)
    # Line 3216
    move	$s5,$zero
.L0da85e80:
    # Line 3227
    # lw $t9, -30352($gp) # &__glMgr_UseDMAForWrite
    jal	__glMgr_UseDMAForWrite
    move	$a0,$s0
    beqz	$v0,.L0da86320
    # Line 3229
    move	$a0,$s1
.L0da85e94:
    move	$a1,$s3
    move	$a2,$s2
    # lw $t9, -30344($gp) # &__glMgr_LockSingleDMAPool
    move	$a3,$zero
    move	$a5,$s5
    jal	__glMgr_LockSingleDMAPool
    addiu	$a4,$sp,32
    sd	$s2,48($sp)
    lui	$a3,0x1
    bnez	$v0,.L0da85f80
    andi	$s4,$v0,0xff
    la	$t2,errno
    li	$t8,11
    ld	$a6,48($sp)
    li	$t3,12
    addu	$s2,$a3,$s1
    andi	$a0,$a6,0xfff
    sra	$a6,$a6,0xc
    addiu	$a7,$a6,1
.L0da85ee0:
    lw	$v0,0($t2)
    beq	$v0,$t3,.L0da86364
    nop
    beq	$v0,$t8,.L0da86364
    # Line 3231
    li	$v0,1
.L0da85ef4:
    bnez	$v0,.L0da85f88
    # Line 3238
    li	$t1,1
    # Line 3232
    move	$a2,$a6
    beqzl	$a0,.L0da85f10
    # Line 3235
    lw	$t0,-28164($s2)
    # Line 3234
    move	$a2,$a7
    # Line 3235
    lw	$t0,-28164($s2)
.L0da85f10:
    lhu	$t0,1232($t0)
    sd	$a0,160($sp)
    sd	$a6,144($sp)
    sltu	$t0,$t0,$a2
    bnez	$t0,.L0da85f84
    sd	$a7,136($sp)
    # Line 3236
    # lw $t9, -30704($gp) # &mgrTM_UnlockPages
    move	$a0,$s1
    jal	mgrTM_UnlockPages
    move	$a1,$zero
    # Line 3229
    move	$a0,$s1
    move	$a1,$s3
    ld	$a2,48($sp)
    # lw $t9, -30344($gp) # &__glMgr_LockSingleDMAPool
    move	$a3,$zero
    move	$a5,$s5
    jal	__glMgr_LockSingleDMAPool
    addiu	$a4,$sp,32
    la	$t2,errno
    li	$t3,12
    li	$t8,11
    andi	$s4,$v0,0xff
    ld	$a7,136($sp)
    ld	$a6,144($sp)
    beqz	$v0,.L0da85ee0
    ld	$a0,160($sp)
    b	.L0da85f88
    # Line 3238
    li	$t1,1
.L0da85f80:
    # Line 3229
    addu	$s2,$a3,$s1
.L0da85f84:
    # Line 3238
    li	$t1,1
.L0da85f88:
    sll	$a0,$s5,0x4
    addu	$a0,$a0,$s1
    beq	$s4,$t1,.L0da86358
    lw	$v0,32016($a0)
    # Line 3240
    li	$t0,-2
    and	$t0,$v0,$t0
    sw	$t0,32016($a0)
.L0da85fa4:
    # Line 3243
    move	$a7,$s3
    # Line 3244
    lw	$a6,52($s0)
    lw	$v0,48($s0)
    # Line 3243
    sw	$s3,100($s0)
    # Line 3244
    li	$t1,2
    bne	$v0,$a6,.L0da86298
    sw	$t1,140($s0)
.L0da85fc0:
    # Line 3267
    lw	$a5,40($s0)
    lw	$a4,36($s0)
    lw	$a3,32($s0)
    lw	$a2,20($s0)
    lw	$a1,16($s0)
    move	$a0,$s1
    # Line 3266
    li	$t2,0x9600
    # Line 3267
    # lw $t9, -31856($gp) # &__glMgrDoReadPixels
    # Line 3266
    lui	$t3,0x7
    ori	$t3,$t3,0x4080
    # Line 3267
    bal __glMgrDoReadPixels
    # Line 3266
    sw	$t2,0($t3)
    ld	$ra,168($sp)
    # Line 3269
    li	$v1,0x9700
    lw	$at,392($s0)
    lui	$t0,0x7
    ori	$t0,$t0,0x4080
    beqz	$at,.L0da86344
    sw	$v1,0($t0)
    lw	$a0,-30164($s2)
    beqzl	$a0,.L0da86388
    ld	$gp,112($sp)
    # Line 3272
    lw	$a1,196($a0)
    beqz	$a1,.L0da86400
.L0da86020:
    # Line 3274
    la	$t1,MgrasPrevVidTexture
    lw	$t1,0($t1)
    bnez	$t1,.L0da8627c
    # Line 3276
    nop	# was lw $t9, -30748($gp) # &mgrTM_VidTexWait
.L0da86030:
    lw	$v0,-28164($s2)
    lw	$a0,484($v0)
    bne	$a0,$a1,.L0da86300
    # Line 3278
    nop	# was lw $t9, -30744($gp) # &mgrTM_DrawSetup
.L0da86040:
    bne	$a0,$a1,.L0da860c0
    li	$a3,1
    # Line 3280
    sw	$a3,1160($v0)
    # Line 3281
    lw	$a0,-30164($s2)
    lw	$a0,196($a0)
    # Line 3282
    lw	$a2,88($a0)
    ori	$a2,$a2,0x1
    sw	$a2,88($a0)
    lw	$at,-28080($s2)
    beqz	$at,.L0da86074
    # Line 3281
    sw	$a0,36($sp)
    # Line 3284
    ori	$a2,$a2,0x2
    sw	$a2,88($a0)
.L0da86074:
    lw	$t0,-28076($s2)
    beqz	$t0,.L0da86088
    # Line 3286
    lui	$t1,0x40
    or	$a2,$a2,$t1
    sw	$a2,88($a0)
.L0da86088:
    # Line 3287
    lw	$v0,124($a0)
    li	$at,0x8185
    beq	$v0,$at,.L0da8636c
    li	$v1,0x8186
    beq	$v0,$v1,.L0da8636c
.L0da8609c:
    # Line 3295
    li	$a4,1
    li	$a1,394
    # lw $t9, -30696($gp) # &__glMgrasWrite
    # Line 3294
    la	$a3,SYMBOL_LOCATION
    # Line 3295
    move	$a0,$s1
    jal	__glMgrasWrite
    lw	$a3,256($a3)
    li	$a3,1
    ld	$ra,168($sp)
.L0da860c0:
    beq	$s8,$a3,.L0da86350
.L0da860c4:
    # Line 3302
    move	$a0,$s0
.L0da860c8:
    move	$a1,$s8
    move	$a2,$zero
    move	$a3,$zero
    ld	$a4,56($sp)
    ld	$a5,64($sp)
    move	$a6,$s7
    ld	$t1,72($sp)
    ld	$t2,40($sp)
    move	$a7,$s6
    sw	$t1,12($sp)
    sw	$t2,4($sp)
    # lw $t9, -29768($gp) # &__glMgrMakePixelDesc
    lw	$t0,48($s0)
    sw	$s3,28($sp)
    jal	__glMgrMakePixelDesc
    sw	$t0,20($sp)
    lw	$at,0($s0)
    bnez	$at,.L0da86248
    # Line 3313
    move	$a3,$zero
.L0da86114:
    # lw $t9, -30688($gp) # &__glMgrSaveTexmode
    move	$a2,$zero
    move	$a1,$zero
    jal	__glMgrSaveTexmode
    li	$a0,1
    # Line 3314
    li	$a4,3
    lw	$a3,236($s0)
    lw	$a2,232($s0)
    # lw $t9, -30284($gp) # &__glMgrSaveRSS
    lui	$a1,0x140
    lui	$a0,0x1e0
    jal	__glMgrSaveRSS
    ori	$a0,$a0,0x3929
    # Line 3319
    li	$a3,1
    move	$a2,$zero
    # lw $t9, -31880($gp) # &__glMgrSendPixels
    li	$a1,1
    move	$a0,$s0
    bal __glMgrSendPixels
    # Line 3318
    sw	$zero,400($s0)
    # Line 3321
    # lw $t9, -30280($gp) # &__glMgrRestoreRSS
    jal	__glMgrRestoreRSS
    nop
    lw	$v0,-28164($s2)
    lw	$t0,1160($v0)
    beqz	$t0,.L0da862ec
    # Line 3327
    li	$a4,1
    li	$a1,394
    move	$a0,$s1
    # Line 3326
    lw	$a5,36($sp)
    # Line 3325
    sw	$zero,1160($v0)
    la	$a3,SYMBOL_LOCATION
    # Line 3326
    lw	$a2,88($a5)
    # Line 3327
    # lw $t9, -30696($gp) # &__glMgrasWrite
    # Line 3326
    li	$a6,-2
    and	$a2,$a2,$a6
    sw	$a2,88($a5)
    # Line 3327
    jal	__glMgrasWrite
    lw	$a3,256($a3)
    # Line 3328
    lw	$t0,-28164($s2)
    ld	$s2,152($sp)
    ld	$ra,168($sp)
    sw	$zero,488($t0)
.L0da861c0:
    lbu	$t1,192($s0)
    bnezl	$t1,.L0da8621c
    ld	$gp,112($sp)
    beqz	$s4,.L0da86200
    # Line 3336
    move	$a3,$s5
    ld	$a2,48($sp)
    move	$a1,$s3
    move	$a0,$s1
    # Line 3335
    sll	$t3,$s5,0x4
    addu	$t3,$t3,$s1
    lw	$t2,32016($t3)
    # Line 3336
    # lw $t9, -30340($gp) # &__glMgr_UnlockSingleDMAPool
    # Line 3335
    li	$t8,-2
    and	$t2,$t2,$t8
    # Line 3336
    jal	__glMgr_UnlockSingleDMAPool
    # Line 3335
    sw	$t2,32016($t3)
.L0da86200:
    # Line 3340
    lw	$t9,12($s1)
    move	$a0,$s1
    move	$a1,$s3
    jalr	$t9
    ld	$s5,176($sp)
    ld	$ra,168($sp)
    ld	$gp,112($sp)
.L0da8621c:
    # Line 3343
    sb	$zero,192($s0)
    # Line 3344
    ld	$s0,120($sp)
    ld	$s1,88($sp)
    ld	$s3,184($sp)
    ld	$s4,96($sp)
    ld	$s5,176($sp)
    ld	$s6,128($sp)
    ld	$s7,104($sp)
    ld	$s8,80($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0da86248:
    # Line 3308
    # lw $t9, -30028($gp) # &__glMgrBuildChain
    jal	__glMgrBuildChain
    move	$a0,$s0
    # Line 3309
    # lw $t9, -29788($gp) # &__glMgrMakeTiles
    move	$a0,$s0
    jal	__glMgrMakeTiles
    move	$a1,$s1
    # Line 3310
    # lw $t9, -29820($gp) # &__glMgrMakePages
    move	$a0,$s0
    jal	__glMgrMakePages
    move	$a1,$s1
    b	.L0da86114
    # Line 3313
    move	$a3,$zero
.L0da8627c:
    # Line 3276
    move	$a0,$s1
    jalr	$t9
    li	$a2,1
    lw	$a1,-30164($s2)
    ld	$ra,168($sp)
    b	.L0da86030
    lw	$a1,196($a1)
.L0da86298:
    # Line 3255
    move	$a0,$s0
    lw	$a3,20($s0)
    lw	$a2,16($s0)
    sw	$s3,28($sp)
    sw	$v0,20($sp)
    move	$a7,$s6
    move	$a6,$s7
    move	$a5,$zero
    ld	$a4,40($sp)
    li	$a1,2
    # lw $t9, -29768($gp) # &__glMgrMakePixelDesc
    sw	$a4,12($sp)
    sw	$a4,4($sp)
    jal	__glMgrMakePixelDesc
    move	$a4,$zero
    lw	$t0,0($s0)
    bnez	$t0,.L0da863b4
    # Line 3261
    nop	# was lw $t9, -29788($gp) # &__glMgrMakeTiles
    # Line 3262
    lw	$a7,100($s0)
.L0da862e4:
    b	.L0da85fc0
    lw	$a6,52($s0)
.L0da862ec:
    # Line 3323
    # lw $t9, -30684($gp) # &__glMgrRestoreTexmode
    jal	__glMgrRestoreTexmode
    ld	$s2,152($sp)
    b	.L0da861c0
    ld	$ra,168($sp)
.L0da86300:
    # Line 3278
    jalr	$t9
    move	$a0,$s1
    lw	$a1,-30164($s2)
    ld	$ra,168($sp)
    lw	$v0,-28164($s2)
    lw	$a1,196($a1)
    b	.L0da86040
    lw	$a0,484($v0)
.L0da86320:
    # Line 3227
    # lw $t9, -30348($gp) # &__glMgr_UseDMAForRead
    jal	__glMgr_UseDMAForRead
    move	$a0,$s0
    bnez	$v0,.L0da85e94
    # Line 3229
    move	$a0,$s1
    sd	$s2,48($sp)
    # Line 3240
    lui	$s2,0x1
    b	.L0da85fa4
    addu	$s2,$s1,$s2
.L0da86344:
    # Line 3295
    li	$at,1
    bne	$s8,$at,.L0da860c8
    # Line 3302
    move	$a0,$s0
.L0da86350:
    b	.L0da860c4
    # Line 3300
    move	$s8,$zero
.L0da86358:
    # Line 3239
    ori	$v1,$v0,0x1
    b	.L0da85fa4
    sw	$v1,32016($a0)
.L0da86364:
    b	.L0da85ef4
    # Line 3231
    move	$v0,$zero
.L0da8636c:
    # Line 3290
    lui	$t0,0x4
    lui	$t1,0xc
    nor	$t1,$t1,$zero
    and	$a2,$a2,$t1
    or	$a2,$a2,$t0
    b	.L0da8609c
    sw	$a2,88($a0)
.L0da86388:
    # Line 3272
    ld	$s0,120($sp)
    ld	$s1,88($sp)
    ld	$s2,152($sp)
    ld	$s3,184($sp)
    ld	$s4,96($sp)
    ld	$s5,176($sp)
    ld	$s6,128($sp)
    ld	$s7,104($sp)
    ld	$s8,80($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0da863b4:
    # Line 3261
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    # Line 3262
    # lw $t9, -29820($gp) # &__glMgrMakePages
    move	$a0,$s0
    jal	__glMgrMakePages
    move	$a1,$s1
    b	.L0da862e4
    lw	$a7,100($s0)
.L0da863d8:
    sd	$s3,184($sp)
    sd	$s5,176($sp)
    # Line 3220
    lw	$t9,0($s1)
    move	$a0,$s1
    sd	$ra,168($sp)
    jalr	$t9
    move	$a1,$s2
    move	$s3,$v0
    b	.L0da85e80
    # Line 3221
    li	$s5,3
.L0da86400:
    # Line 3274
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    jal	mgrTM_RefreshDim
    nop
    lw	$a1,-30164($s2)
    ld	$ra,168($sp)
    b	.L0da86020
    lw	$a1,196($a1)
.end __glMgrSlowCopyPixels

# Function: __glMgrCopyPixels
# Declared: Line 3347 (Source lines: 3348-3391)
# Address: 0x0da8641c - 0x0da8651c (Size: 256 bytes, Frame: 192)
.globl __glMgrCopyPixels
.ent __glMgrCopyPixels
__glMgrCopyPixels:
    # Line 3348
    addiu	$sp,$sp,-64
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$gp,24($sp)
    lw	$at,4($a0)
    lui	$v0,0x18
    addiu	$v0,$v0,-32132
    beqz	$at,.L0da864a4
    addu	$gp,$t9,$v0
    lw	$v1,1492($s0)
    slti	$v1,$v1,2
    bnez	$v1,.L0da864a8
    lw	$a0,424($s0)
    # Line 3355
    lui	$a2,0x100
    and	$a2,$a0,$a2
    bnez	$a2,.L0da864ac
    # Line 3373
    li	$a1,1
    # Line 3358
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    addiu	$a1,$sp,0
    sd	$ra,32($sp)
    jal	__glMgrim_GetFloatv
    li	$a0,2823
    # Line 3369
    lw	$ra,16($s0)
    mtc1	$ra,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,0($sp)
    c.le.s	$f0,$f1
    li	$a1,1
    bc1fl	.L0da86498
    move	$a1,$zero
.L0da86498:
    lw	$a0,424($s0)
    b	.L0da864ac
    ld	$ra,32($sp)
.L0da864a4:
    lw	$a0,424($s0)
.L0da864a8:
    # Line 3373
    li	$a1,1
.L0da864ac:
    # Line 3377
    sw	$zero,272($s0)
    andi	$at,$a0,0x1000
    beqz	$at,.L0da864f8
    # Line 3376
    sw	$zero,268($s0)
    # Line 3377
    andi	$v0,$a0,0x800
    beqz	$v0,.L0da864f8
    # Line 3386
    lui	$v1,0x10
    and	$v1,$a0,$v1
    bnez	$v1,.L0da864fc
    # Line 3390
    nop	# was lw $t9, -31868($gp) # &__glMgrSlowCopyPixels
    # Line 3386
    lw	$a2,4($s0)
    beqz	$a2,.L0da864f8
    sd	$ra,32($sp)
    # Line 3388
    # lw $t9, -31872($gp) # &__glMgrFastCopyPixels
    bal __glMgrFastCopyPixels
    move	$a0,$s0
    ld	$ra,32($sp)
    b	.L0da86510
    ld	$s0,16($sp)
.L0da864f8:
    # Line 3390
    # lw $t9, -31868($gp) # &__glMgrSlowCopyPixels
.L0da864fc:
    sd	$ra,32($sp)
    bal __glMgrSlowCopyPixels
    move	$a0,$s0
    ld	$ra,32($sp)
    ld	$s0,16($sp)
.L0da86510:
    ld	$gp,24($sp)
    # Line 3391
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrCopyPixels

# Function: __glMgrInitColorMatrix
# Declared: Line 3398 (Source lines: 3399-3408)
# Address: 0x0da8651c - 0x0da8655c (Size: 64 bytes, Frame: 0)
.globl __glMgrInitColorMatrix
.ent __glMgrInitColorMatrix
__glMgrInitColorMatrix:
    # Line 3400
    lui	$v0,0x1
    # Line 3399
    lui	$v1,0x18
    addiu	$v1,$v1,-32388
    addu	$at,$t9,$v1
    # Line 3404
    mtc1	$zero,$f1
    # Line 3400
    addu	$v0,$a0,$v0
    lwc1	$f0,_lit_3f800000
    # Line 3407
    swc1	$f1,-32136($v0)
    # Line 3406
    swc1	$f1,-32140($v0)
    # Line 3405
    swc1	$f1,-32144($v0)
    # Line 3404
    swc1	$f1,-32148($v0)
    # Line 3403
    swc1	$f0,-32152($v0)
    # Line 3402
    swc1	$f0,-32156($v0)
    # Line 3401
    swc1	$f0,-32160($v0)
    # Line 3408
    jr	$ra
    # Line 3400
    swc1	$f0,-32164($v0)
.end __glMgrInitColorMatrix

# Function: stackAdjustmentDummyRoutine
# Declared: Line 3477 (Source lines: 3479-3479)
# Address: 0x0da8655c - 0x0da86564 (Size: 8 bytes, Frame: 0)
.ent stackAdjustmentDummyRoutine
stackAdjustmentDummyRoutine:
    # Line 3479
    jr	$ra
    nop
.end stackAdjustmentDummyRoutine

# Function: __glMgrDoReadPixels
# Declared: Line 3487 (Source lines: 3490-3726)
# Address: 0x0da86564 - 0x0da87368 (Size: 3588 bytes, Frame: 128)
.globl __glMgrDoReadPixels
.ent __glMgrDoReadPixels
__glMgrDoReadPixels:
    # Line 3490
    move	$v0,$a7
    addiu	$sp,$sp,-768
    sd	$zero,528($sp)
    sd	$s5,640($sp)
    # Line 3496
    move	$s5,$zero
    sd	$a6,568($sp)
    sd	$s2,632($sp)
    # Line 3490
    move	$s2,$a5
    sd	$s6,616($sp)
    move	$s6,$a4
    sd	$s7,592($sp)
    move	$s7,$a3
    sd	$s4,608($sp)
    move	$s4,$a2
    sd	$s3,624($sp)
    move	$s3,$a1
    sd	$s0,600($sp)
    move	$s0,$a0
    sd	$gp,584($sp)
    sd	$s1,576($sp)
    # Line 3497
    lui	$s1,0x1
    addu	$s1,$a0,$s1
    lbu	$at,-25436($s1)
    # Line 3490
    lui	$v1,0x18
    addiu	$v1,$v1,-32460
    # Line 3497
    slti	$at,$at,2
    beqz	$at,.L0da869d8
    # Line 3490
    addu	$gp,$t9,$v1
.L0da865d4:
    # Line 3506
    lbu	$at,31868($s0)
    beqz	$at,.L0da869f4
    sd	$s8,648($sp)
    # Line 3509
    move	$s8,$zero
.L0da865e4:
    # Line 3514
    lw	$v1,31828($s0)
    lw	$t1,1080($s0)
    multu	$t1,$v1
    sd	$zero,536($sp)
    # Line 3518
    addiu	$at,$s6,-1
    lw	$t1,31768($s0)
    # Line 3514
    mflo	$t0
    # Line 3520
    lw	$a1,-26652($s1)
    # Line 3514
    lw	$a2,31832($s0)
    # Line 3518
    mult	$at,$v1
    # Line 3514
    addu	$t0,$t0,$v0
    addu	$a2,$a2,$t0
    sd	$a2,560($sp)
    # Line 3520
    lw	$t0,31744($s0)
    li	$a2,-16
    and	$a1,$a1,$a2
    andi	$t0,$t0,0xf
    or	$a1,$a1,$t0
    # Line 3521
    li	$t0,-1793
    and	$a1,$a1,$t0
    # Line 3522
    lui	$t0,0x1
    ori	$t0,$t0,0xc000
    # Line 3521
    sw	$a1,-26652($s1)
    # Line 3522
    nor	$t0,$t0,$zero
    lbu	$at,31781($s0)
    and	$a1,$a1,$t0
    # Line 3525
    sltiu	$t0,$s2,6406
    # Line 3522
    andi	$at,$at,0x7
    sll	$at,$at,0xe
    or	$a1,$a1,$at
    # Line 3523
    lui	$at,0x4
    nor	$at,$at,$zero
    and	$a1,$a1,$at
    sw	$a1,-26652($s1)
    # Line 3518
    mflo	$at
    addu	$t1,$t1,$at
    # Line 3525
    bnez	$t0,.L0da86928
    sd	$t1,552($sp)
    sltiu	$at,$s2,6407
    beqz	$at,.L0da86990
    sltiu	$v1,$s2,6409
.L0da86688:
    sd	$ra,688($sp)
.L0da8668c:
    # Line 3533
    li	$v1,-241
    andi	$t0,$s2,0xf
    sll	$t0,$t0,0x4
    and	$v1,$a1,$v1
    or	$v1,$v1,$t0
    sw	$v1,-26652($s1)
.L0da866a4:
    # Line 3564
    # lw $t9, -30348($gp) # &__glMgr_UseDMAForRead
    addiu	$s2,$s0,31676
    jal	__glMgr_UseDMAForRead
    move	$a0,$s2
    beqz	$v0,.L0da869fc
    # Line 3565
    move	$a0,$s0
    ld	$a1,560($sp)
    ld	$a2,552($sp)
    # lw $t9, -30344($gp) # &__glMgr_LockSingleDMAPool
    move	$a3,$zero
    move	$a5,$s8
    jal	__glMgr_LockSingleDMAPool
    addiu	$a4,$sp,0
    bnez	$v0,.L0da86790
    andi	$s5,$v0,0xff
    la	$t2,errno
    ld	$a3,552($sp)
    li	$t8,11
    li	$t3,12
    andi	$a5,$a3,0xfff
    srl	$a3,$a3,0xc
    addiu	$a7,$a3,1
.L0da866fc:
    lw	$a0,0($t2)
    beq	$a0,$t3,.L0da86c4c
    nop
    beq	$a0,$t8,.L0da86c4c
    # Line 3567
    li	$a0,1
.L0da86710:
    bnez	$a0,.L0da86790
    # Line 3568
    move	$a2,$a3
    beqzl	$a5,.L0da86728
    # Line 3571
    lw	$t0,-28164($s1)
    # Line 3570
    move	$a2,$a7
    # Line 3571
    lw	$t0,-28164($s1)
.L0da86728:
    lhu	$t0,1232($t0)
    sd	$a3,680($sp)
    sd	$a5,672($sp)
    sltu	$t0,$t0,$a2
    bnez	$t0,.L0da86790
    sd	$a7,664($sp)
    # Line 3572
    # lw $t9, -30704($gp) # &mgrTM_UnlockPages
    move	$a0,$s0
    jal	mgrTM_UnlockPages
    move	$a1,$zero
    # Line 3565
    move	$a0,$s0
    ld	$a1,560($sp)
    ld	$a2,552($sp)
    # lw $t9, -30344($gp) # &__glMgr_LockSingleDMAPool
    move	$a3,$zero
    move	$a5,$s8
    jal	__glMgr_LockSingleDMAPool
    addiu	$a4,$sp,0
    la	$t2,errno
    li	$t3,12
    li	$t8,11
    andi	$s5,$v0,0xff
    ld	$a7,664($sp)
    ld	$a5,672($sp)
    beqz	$v0,.L0da866fc
    ld	$a3,680($sp)
.L0da86790:
    # Line 3574
    beqz	$s5,.L0da86f5c
    # Line 3593
    li	$t0,-3
.L0da86798:
    # Line 3579
    beqz	$s5,.L0da86a14
    lw	$a5,-27000($s1)
    # Line 3591
    lui	$a1,0x100
    # Line 3592
    ori	$a5,$a5,0x1
    # Line 3593
    and	$a5,$a5,$t0
    sw	$a5,-27000($s1)
.L0da867b0:
    # Line 3606
    li	$a4,2
    lui	$a0,0x11e2
    # lw $t9, -30284($gp) # &__glMgrSaveRSS
    li	$a2,-16
    # Line 3600
    li	$a6,-5
    and	$a5,$a5,$a6
    # Line 3603
    lw	$a3,-27956($s1)
    # Line 3601
    ori	$a5,$a5,0x8
    sw	$a5,-27000($s1)
    # Line 3603
    ori	$a3,$a3,0x10
    # Line 3604
    and	$a2,$a2,$a3
    ori	$a2,$a2,0x8
    sw	$a2,-27956($s1)
    # Line 3606
    ori	$a0,$a0,0x3929
    lw	$a3,31904($s0)
    jal	__glMgrSaveRSS
    lw	$a2,31900($s0)
    # Line 3610
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    li	$a1,-2
    jal	__glMgrInitPixelStateERAM
    li	$a0,397
    # Line 3611
    # lw $t9, -30424($gp) # &__glMgrInitPixelStateERAM
    la	$a0,SYMBOL_LOCATION
    li	$a1,-1
    jal	__glMgrInitPixelStateERAM
    lw	$a0,972($a0)
    # Line 3613
    move	$s1,$zero
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    jal	__Mgr_ReturnMode
    lw	$a0,1044($a0)
    ld	$a7,528($sp)
    dsll32	$a3,$v0,0x10
    dsra32	$a3,$a3,0x10
    srl	$a0,$v0,0x10
    dsll32	$a0,$a0,0x10
    lui	$t2,0x8000
    ori	$t2,$t2,0x8000
    and	$t0,$t2,$v0
    beqz	$t0,.L0da86a2c
    dsra32	$a0,$a0,0x10
    addu	$a5,$a3,$s3
.L0da86860:
    bltzl	$a5,.L0da86b44
    negu	$a3,$a5
    bltz	$s3,.L0da86b7c
.L0da8686c:
    addu	$a5,$a0,$s4
.L0da86870:
    bltzl	$a5,.L0da86bb0
    negu	$a0,$a5
    bltz	$s4,.L0da86bd8
.L0da8687c:
    addu	$a5,$a3,$s3
.L0da86880:
    addu	$t0,$a5,$s7
    slti	$t0,$t0,2048
    bnez	$t0,.L0da868a0
    slti	$at,$a5,2047
    li	$s7,2047
    bnez	$at,.L0da868a0
    subu	$s7,$s7,$a5
    li	$a7,1
.L0da868a0:
    addu	$a5,$a0,$s4
    addu	$v1,$a5,$s6
    slti	$v1,$v1,2048
    bnez	$v1,.L0da868c4
    slti	$at,$a5,2047
    li	$s6,2047
    bnez	$at,.L0da868c4
    subu	$s6,$s6,$a5
    li	$a7,1
.L0da868c4:
    beqz	$a7,.L0da86a44
    slti	$t1,$s7,42
    # Line 3712
    beqz	$s5,.L0da868e8
    ld	$s1,536($sp)
    sll	$v1,$s8,0x4
    addu	$v1,$v1,$s0
    lw	$v1,32016($v1)
    andi	$v1,$v1,0x1
    beqz	$v1,.L0da86ce4
.L0da868e8:
    # Line 3722
    nop	# was lw $t9, -30280($gp) # &__glMgrRestoreRSS
.L0da868ec:
    jal	__glMgrRestoreRSS
    ld	$s8,648($sp)
    bnez	$s1,.L0da86954
    ld	$ra,688($sp)
.L0da868fc:
    ld	$gp,584($sp)
    # Line 3726
    ld	$s0,600($sp)
    ld	$s1,576($sp)
    ld	$s2,632($sp)
    ld	$s3,624($sp)
    ld	$s4,608($sp)
    ld	$s5,640($sp)
    ld	$s6,616($sp)
    ld	$s7,592($sp)
    jr	$ra
    addiu	$sp,$sp,768
.L0da86928:
    # Line 3525
    sltiu	$t0,$s2,6403
    bnez	$t0,.L0da8696c
    sltiu	$t1,$s2,6404
    bnez	$t1,.L0da86688
    sltiu	$at,$s2,6405
    bnez	$at,.L0da86c54
    sltiu	$v1,$s2,6406
    beqz	$v1,.L0da866a4
    sd	$ra,688($sp)
    b	.L0da8668c
    sd	$ra,688($sp)
.L0da86954:
    # Line 3725
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    b	.L0da868fc
    ld	$ra,688($sp)
.L0da8696c:
    # Line 3525
    sltiu	$t0,$s2,6401
    bnez	$t0,.L0da86bfc
    sltiu	$t1,$s2,6402
    bnez	$t1,.L0da86688
    li	$at,6402
    bne	$s2,$at,.L0da866a4
    sd	$ra,688($sp)
    b	.L0da8668c
    sd	$ra,688($sp)
.L0da86990:
    bnez	$v1,.L0da86c10
    sltiu	$t0,$s2,6410
    bnez	$t0,.L0da86d74
    li	$v0,0x8000
    sltu	$t1,$s2,$v0
    bnez	$t1,.L0da86c7c
    sltu	$at,$v0,$s2
    bnez	$at,.L0da866a4
    sd	$ra,688($sp)
    sd	$ra,688($sp)
    # Line 3560
    li	$t0,-241
    # Line 3559
    lui	$v1,0x40
    nor	$v1,$v1,$zero
    and	$v1,$a1,$v1
    # Line 3560
    and	$v1,$v1,$t0
    ori	$v1,$v1,0x80
    b	.L0da866a4
    sw	$v1,-26652($s1)
.L0da869d8:
    # Line 3506
    # lw $t9, -32124($gp) # &__glMgrim_Finish
    sd	$ra,688($sp)
    jal	__glMgrim_Finish
    sd	$v0,696($sp)
    ld	$ra,688($sp)
    b	.L0da865d4
    ld	$v0,696($sp)
.L0da869f4:
    b	.L0da865e4
    # Line 3511
    li	$s8,3
.L0da869fc:
    # Line 3579
    # lw $t9, -32740($gp) # &sub_0da80000
    addiu	$t9,$t9,25948
    bal __glMgrInitColorMatrix
    addiu	$a0,$sp,8
    b	.L0da86798
    # Line 3593
    li	$t0,-3
.L0da86a14:
    # Line 3595
    lui	$a1,0x80
    # Line 3596
    li	$t0,-2
    and	$a5,$a5,$t0
    # Line 3597
    ori	$a5,$a5,0x2
    b	.L0da867b0
    sw	$a5,-27000($s1)
.L0da86a2c:
    # Line 3613
    bltz	$s3,.L0da86860
    addu	$a5,$a3,$s3
    bgez	$s4,.L0da86880
    addu	$a5,$a3,$s3
    b	.L0da86860
    addu	$a5,$a3,$s3
.L0da86a44:
    bnez	$t1,.L0da86a98
    # Line 3616
    move	$a0,$s7
    li	$a0,24
    addiu	$t1,$s7,7
    div	$zero,$t1,$a0
    li	$t0,2
    sd	$t0,544($sp)
    teq	$a0,$zero,0x7
    mflo	$v1
    sll	$at,$v1,0x2
    subu	$at,$at,$v1
    li	$v1,-7
    sll	$at,$at,0x3
    addiu	$a0,$at,-7
    subu	$at,$s7,$at
    addiu	$t0,$at,7
    bne	$at,$v1,.L0da86aa0
    sw	$t0,524($sp)
    li	$at,1
    b	.L0da86aa0
    sd	$at,544($sp)
.L0da86a98:
    li	$v1,1
    sd	$v1,544($sp)
.L0da86aa0:
    beqz	$s5,.L0da86d04
    sd	$a0,656($sp)
    # Line 3647
    move	$a5,$s6
    move	$a3,$s4
    move	$a2,$s3
    move	$a1,$s2
    move	$a0,$s0
    ld	$s5,656($sp)
    # Line 3646
    lw	$a6,0($sp)
    # Line 3647
    # lw $t9, -30292($gp) # &__glMgrRE4DMARd
    move	$a4,$s5
    # Line 3646
    addu	$a6,$a6,$s1
    # Line 3647
    jal	__glMgrRE4DMARd
    # Line 3646
    sw	$a6,0($sp)
    # Line 3647
    ld	$t0,544($sp)
    li	$a7,6409
    li	$t1,2
    beq	$t0,$t1,.L0da86df4
    ld	$s1,536($sp)
    # Line 3666
    li	$s5,6410
.L0da86af0:
    # Line 3669
    lw	$v0,31716($s0)
.L0da86af4:
    beq	$a7,$v0,.L0da86f28
    ld	$s1,536($sp)
    beq	$s5,$v0,.L0da86f54
    # Line 3675
    ld	$at,568($sp)
    li	$v1,5126
    beq	$at,$v1,.L0da86fa0
    # Line 3676
    sll	$t0,$s8,0x4
.L0da86b10:
    addu	$t0,$t0,$s0
    lw	$t0,32016($t0)
    andi	$t0,$t0,0x1
    bnez	$t0,.L0da868ec
    # Line 3722
    nop	# was lw $t9, -30280($gp) # &__glMgrRestoreRSS
    # Line 3680
    move	$a0,$s0
    # lw $t9, -30340($gp) # &__glMgr_UnlockSingleDMAPool
    ld	$a1,560($sp)
    ld	$a2,552($sp)
    jal	__glMgr_UnlockSingleDMAPool
    move	$a3,$s8
    b	.L0da868ec
    # Line 3722
    nop	# was lw $t9, -30280($gp) # &__glMgrRestoreRSS
.L0da86b44:
    # Line 3613
    dsll32	$a3,$a3,0x10
    dsra32	$a3,$a3,0x10
    subu	$s7,$s7,$a3
    blez	$s7,.L0da86dd4
    addu	$s3,$a3,$s3
.L0da86b58:
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,31760($s0)
    mul.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$s1,$f0
    bgez	$s3,.L0da86870
    addu	$a5,$a0,$s4
.L0da86b7c:
    addu	$s7,$s3,$s7
    blez	$s7,.L0da86ddc
.L0da86b84:
    negu	$t1,$s3
    mtc1	$t1,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,31760($s0)
    mul.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$t0,$f2
    move	$s3,$zero
    b	.L0da8686c
    addu	$s1,$t0,$s1
.L0da86bb0:
    dsll32	$a0,$a0,0x10
    dsra32	$a0,$a0,0x10
    subu	$s6,$s6,$a0
    blez	$s6,.L0da86de4
    addu	$s4,$a0,$s4
.L0da86bc4:
    lw	$t1,31828($s0)
    mult	$t1,$a0
    mflo	$t0
    bgez	$s4,.L0da8687c
    addu	$s1,$t0,$s1
.L0da86bd8:
    addu	$s6,$s4,$s6
    blez	$s6,.L0da86dec
    nop
.L0da86be4:
    lw	$at,31828($s0)
    mult	$at,$s4
    mflo	$s4
    subu	$s1,$s1,$s4
    b	.L0da8687c
    move	$s4,$zero
.L0da86bfc:
    # Line 3525
    li	$v1,6400
    bne	$s2,$v1,.L0da866a4
    sd	$ra,688($sp)
    b	.L0da8668c
    sd	$ra,688($sp)
.L0da86c10:
    sltiu	$t0,$s2,6408
    bnez	$t0,.L0da86c68
    sltiu	$t1,$s2,6409
    beqz	$t1,.L0da866a4
    sd	$ra,688($sp)
    sd	$ra,688($sp)
.L0da86c28:
    # Line 3555
    li	$v1,-241
    # Line 3554
    lui	$at,0x40
    or	$at,$a1,$at
    # Line 3555
    and	$at,$at,$v1
    andi	$v1,$s2,0xf
    sll	$v1,$v1,0x4
    or	$at,$at,$v1
    # Line 3556
    b	.L0da866a4
    # Line 3555
    sw	$at,-26652($s1)
.L0da86c4c:
    b	.L0da86710
    # Line 3567
    move	$a0,$zero
.L0da86c54:
    # Line 3525
    li	$v1,6404
    bne	$s2,$v1,.L0da866a4
    sd	$ra,688($sp)
    b	.L0da8668c
    sd	$ra,688($sp)
.L0da86c68:
    li	$t0,6407
    bne	$s2,$t0,.L0da866a4
    sd	$ra,688($sp)
    b	.L0da86c28
    sd	$ra,688($sp)
.L0da86c7c:
    li	$t1,6410
    bne	$s2,$t1,.L0da866a4
    sd	$ra,688($sp)
    # Line 3545
    mult	$s7,$s6
    # Line 3546
    move	$a0,$s0
    lw	$t9,0($s0)
    # Line 3545
    mflo	$t2
    sll	$t2,$t2,0x2
    sll	$t2,$t2,0x2
    # Line 3546
    move	$a1,$t2
    jal	__glMgrRestoreRSS
    sd	$t2,552($sp)
    sd	$v0,536($sp)
    move	$t0,$v0
    sd	$v0,560($sp)
    # Line 3547
    lw	$v0,-26652($s1)
    # Line 3548
    lui	$at,0x40
    li	$v1,-16
    # Line 3547
    and	$v0,$v0,$v1
    # Line 3549
    li	$v1,-241
    # Line 3547
    ori	$v0,$v0,0x3
    # Line 3548
    or	$at,$v0,$at
    # Line 3549
    and	$at,$at,$v1
    ori	$at,$at,0x80
    # Line 3550
    b	.L0da866a4
    # Line 3549
    sw	$at,-26652($s1)
.L0da86ce4:
    # Line 3718
    move	$a0,$s0
    # lw $t9, -30340($gp) # &__glMgr_UnlockSingleDMAPool
    ld	$a1,560($sp)
    ld	$a2,552($sp)
    jal	__glMgr_UnlockSingleDMAPool
    move	$a3,$s8
    b	.L0da868ec
    # Line 3722
    nop	# was lw $t9, -30280($gp) # &__glMgrRestoreRSS
.L0da86d04:
    # Line 3684
    move	$a5,$s6
    move	$a3,$s4
    move	$a2,$s3
    move	$a1,$s2
    move	$a0,$s0
    ld	$s8,648($sp)
    ld	$s5,656($sp)
    # Line 3683
    ld	$a6,560($sp)
    # Line 3684
    # lw $t9, -30288($gp) # &__glMgrRE4PIORd
    move	$a4,$s5
    # Line 3683
    addu	$a6,$a6,$s1
    # Line 3684
    jal	__glMgrRE4PIORd
    sd	$a6,560($sp)
    bnez	$v0,.L0da868e8
    ld	$s1,536($sp)
    ld	$t1,544($sp)
    li	$at,2
    beql	$t1,$at,.L0da870e4
    # Line 3687
    lw	$a3,31716($s0)
    # Line 3703
    li	$s5,6410
    # Line 3706
    lw	$v0,31716($s0)
.L0da86d58:
    li	$v1,6409
    beq	$v1,$v0,.L0da870b8
    ld	$s1,536($sp)
    bne	$s5,$v0,.L0da868ec
    # Line 3722
    nop	# was lw $t9, -30280($gp) # &__glMgrRestoreRSS
.L0da86d6c:
    # Line 3708
    b	.L0da870c0
    li	$a5,1
.L0da86d74:
    # Line 3537
    mult	$s7,$s6
    # Line 3538
    move	$a0,$s0
    sd	$ra,688($sp)
    lw	$t9,0($s0)
    # Line 3537
    mflo	$a3
    sll	$a2,$a3,0x2
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    # Line 3538
    move	$a1,$a2
    jal	__glMgrRestoreRSS
    sd	$a2,552($sp)
    sd	$v0,536($sp)
    sd	$v0,560($sp)
    # Line 3539
    lw	$t1,-26652($s1)
    # Line 3540
    lui	$t0,0x40
    li	$at,-16
    # Line 3539
    and	$t1,$t1,$at
    # Line 3541
    li	$at,-241
    # Line 3539
    ori	$t1,$t1,0x3
    # Line 3540
    or	$t0,$t1,$t0
    # Line 3541
    and	$t0,$t0,$at
    ori	$t0,$t0,0x70
    # Line 3542
    b	.L0da866a4
    # Line 3541
    sw	$t0,-26652($s1)
.L0da86dd4:
    b	.L0da86b58
    # Line 3613
    li	$a7,1
.L0da86ddc:
    b	.L0da86b84
    li	$a7,1
.L0da86de4:
    b	.L0da86bc4
    li	$a7,1
.L0da86dec:
    b	.L0da86be4
    li	$a7,1
.L0da86df4:
    # Line 3650
    lw	$a3,31716($s0)
    li	$v0,6410
    lw	$a0,0($sp)
    beq	$a7,$a3,.L0da870a0
    # Line 3649
    addu	$s3,$s3,$s5
    # Line 3650
    beq	$v0,$a3,.L0da87094
    # Line 3655
    sll	$v1,$s5,0x4
    # Line 3658
    lwc1	$f0,31760($s0)
    trunc.w.s	$f0,$f0
    mfc1	$t0,$f0
    nop
    mult	$t0,$s5
    mflo	$v1
    addu	$v1,$v1,$a0
    sw	$v1,0($sp)
.L0da86e30:
    li	$s5,6410
    sd	$zero,528($sp)
    # Line 3662
    move	$s1,$zero
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    jal	__Mgr_ReturnMode
    lw	$a0,1044($a0)
    li	$a7,6409
    dsll32	$a3,$v0,0x10
    dsra32	$a3,$a3,0x10
    srl	$a0,$v0,0x10
    dsll32	$a0,$a0,0x10
    lui	$t0,0x8000
    ori	$t0,$t0,0x8000
    and	$t0,$t0,$v0
    beqz	$t0,.L0da86fc0
    dsra32	$a0,$a0,0x10
    addu	$a5,$a3,$s3
.L0da86e80:
    bltz	$a5,.L0da86fd8
    lw	$a4,524($sp)
    bltz	$s3,.L0da87014
.L0da86e8c:
    addu	$a5,$a0,$s4
.L0da86e90:
    bltzl	$a5,.L0da87048
    negu	$a0,$a5
    bltz	$s4,.L0da87070
.L0da86e9c:
    addu	$a5,$a3,$s3
    addu	$t1,$a5,$a4
    slti	$t1,$t1,2048
    bnez	$t1,.L0da86ec4
    slti	$t0,$a5,2047
    li	$a4,2047
    bnez	$t0,.L0da86ec4
    subu	$a4,$a4,$a5
    li	$t1,1
    sd	$t1,528($sp)
.L0da86ec4:
    addu	$a5,$a0,$s4
    addu	$at,$a5,$s6
    slti	$at,$at,2048
    bnez	$at,.L0da86eec
    slti	$at,$a5,2047
    li	$s6,2047
    bnez	$at,.L0da86eec
    subu	$s6,$s6,$a5
    li	$v1,1
    sd	$v1,528($sp)
.L0da86eec:
    ld	$t0,528($sp)
    bnezl	$t0,.L0da86af4
    # Line 3669
    lw	$v0,31716($s0)
    # Line 3666
    move	$a5,$s6
    move	$a3,$s4
    move	$a2,$s3
    move	$a1,$s2
    # Line 3665
    lw	$a6,0($sp)
    # Line 3666
    # lw $t9, -30292($gp) # &__glMgrRE4DMARd
    move	$a0,$s0
    # Line 3665
    addu	$a6,$a6,$s1
    # Line 3666
    jal	__glMgrRE4DMARd
    # Line 3665
    sw	$a6,0($sp)
    b	.L0da86af0
    li	$a7,6409
.L0da86f28:
    # Line 3669
    beq	$s5,$v0,.L0da86f54
    # Line 3673
    move	$a5,$zero
.L0da86f30:
    # Line 3675
    move	$a0,$s0
    move	$a1,$s2
    # lw $t9, -30300($gp) # &PackLuminanceData
    move	$a2,$s7
    move	$a3,$s6
    jal	PackLuminanceData
    move	$a4,$s1
    b	.L0da86b10
    # Line 3676
    sll	$t0,$s8,0x4
.L0da86f54:
    # Line 3671
    b	.L0da86f30
    li	$a5,1
.L0da86f5c:
    # Line 3575
    # lw $t9, -17888($gp) # &perror
    la	$a0,sub_0dbf0000
    ld	$s8,648($sp)
    jal	perror
    addiu	$a0,$a0,-11376
    ld	$gp,584($sp)
    # Line 3576
    ld	$s0,600($sp)
    ld	$s1,576($sp)
    ld	$s2,632($sp)
    ld	$s3,624($sp)
    ld	$s4,608($sp)
    ld	$s5,640($sp)
    ld	$ra,688($sp)
    ld	$s6,616($sp)
    ld	$s7,592($sp)
    jr	$ra
    addiu	$sp,$sp,768
.L0da86fa0:
    # Line 3677
    move	$a0,$s0
    # lw $t9, -30296($gp) # &PackFloatData
    move	$a1,$s2
    move	$a2,$s7
    jal	PackFloatData
    move	$a3,$s6
    b	.L0da86b10
    # Line 3676
    sll	$t0,$s8,0x4
.L0da86fc0:
    # Line 3662
    bltz	$s3,.L0da86e80
    addu	$a5,$a3,$s3
    bltz	$s4,.L0da86e80
    addu	$a5,$a3,$s3
    b	.L0da86e9c
    lw	$a4,524($sp)
.L0da86fd8:
    negu	$a3,$a5
    dsll32	$a3,$a3,0x10
    dsra32	$a3,$a3,0x10
    subu	$a4,$a4,$a3
    blez	$a4,.L0da87210
    addu	$s3,$a3,$s3
.L0da86ff0:
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    lwc1	$f1,31760($s0)
    mul.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$s1,$f1
    bgez	$s3,.L0da86e90
    addu	$a5,$a0,$s4
.L0da87014:
    addu	$a4,$s3,$a4
    blez	$a4,.L0da8721c
.L0da8701c:
    negu	$t1,$s3
    mtc1	$t1,$f0
    nop
    cvt.s.w	$f0,$f0
    lwc1	$f3,31760($s0)
    mul.s	$f3,$f3,$f0
    trunc.w.s	$f3,$f3
    mfc1	$t0,$f3
    move	$s3,$zero
    b	.L0da86e8c
    addu	$s1,$t0,$s1
.L0da87048:
    dsll32	$a0,$a0,0x10
    dsra32	$a0,$a0,0x10
    subu	$s6,$s6,$a0
    blez	$s6,.L0da87228
    addu	$s4,$a0,$s4
.L0da8705c:
    lw	$t1,31828($s0)
    mult	$t1,$a0
    mflo	$t0
    bgez	$s4,.L0da86e9c
    addu	$s1,$t0,$s1
.L0da87070:
    addu	$s6,$s4,$s6
    blez	$s6,.L0da87234
    li	$v1,1
.L0da8707c:
    lw	$at,31828($s0)
    mult	$at,$s4
    mflo	$s4
    subu	$s1,$s1,$s4
    b	.L0da86e9c
    move	$s4,$zero
.L0da87094:
    # Line 3655
    addu	$v1,$v1,$a0
    # Line 3656
    b	.L0da86e30
    # Line 3655
    sw	$v1,0($sp)
.L0da870a0:
    # Line 3652
    sll	$t0,$s5,0x2
    subu	$t0,$t0,$s5
    sll	$t0,$t0,0x2
    addu	$t0,$t0,$a0
    # Line 3653
    b	.L0da86e30
    # Line 3652
    sw	$t0,0($sp)
.L0da870b8:
    # Line 3706
    beq	$s5,$v0,.L0da86d6c
    # Line 3710
    move	$a5,$zero
.L0da870c0:
    # Line 3712
    move	$a0,$s0
    move	$a1,$s2
    # lw $t9, -30300($gp) # &PackLuminanceData
    move	$a2,$s7
    move	$a3,$s6
    jal	PackLuminanceData
    move	$a4,$s1
    b	.L0da868ec
    # Line 3722
    nop	# was lw $t9, -30280($gp) # &__glMgrRestoreRSS
.L0da870e4:
    # Line 3687
    li	$v0,6410
    li	$t1,6409
    beq	$t1,$a3,.L0da8723c
    # Line 3686
    addu	$s3,$s3,$s5
    # Line 3687
    beq	$v0,$a3,.L0da8732c
    # Line 3692
    ld	$v1,560($sp)
    # Line 3695
    lwc1	$f1,31760($s0)
    trunc.w.s	$f1,$f1
    mfc1	$t0,$f1
    nop
    mult	$t0,$s5
    ld	$at,560($sp)
    mflo	$v1
    addu	$at,$v1,$at
    sd	$at,560($sp)
.L0da87120:
    li	$s5,6410
    sd	$zero,528($sp)
    # Line 3699
    move	$s1,$zero
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    jal	__Mgr_ReturnMode
    lw	$a0,1044($a0)
    dsll32	$a3,$v0,0x10
    dsra32	$a3,$a3,0x10
    srl	$a0,$v0,0x10
    dsll32	$a0,$a0,0x10
    lui	$t0,0x8000
    ori	$t0,$t0,0x8000
    and	$t0,$t0,$v0
    beqz	$t0,.L0da87258
    dsra32	$a0,$a0,0x10
    addu	$a5,$a3,$s3
.L0da8716c:
    bltz	$a5,.L0da87270
    lw	$a4,524($sp)
    bltz	$s3,.L0da872ac
.L0da87178:
    addu	$a5,$a0,$s4
.L0da8717c:
    bltzl	$a5,.L0da872e0
    negu	$a0,$a5
    bltz	$s4,.L0da87308
.L0da87188:
    addu	$a5,$a3,$s3
    addu	$t1,$a5,$a4
    slti	$t1,$t1,2048
    bnez	$t1,.L0da871b0
    slti	$t0,$a5,2047
    li	$a4,2047
    bnez	$t0,.L0da871b0
    subu	$a4,$a4,$a5
    li	$t1,1
    sd	$t1,528($sp)
.L0da871b0:
    addu	$a5,$a0,$s4
    addu	$at,$a5,$s6
    slti	$at,$at,2048
    bnez	$at,.L0da871d8
    slti	$at,$a5,2047
    li	$s6,2047
    bnez	$at,.L0da871d8
    subu	$s6,$s6,$a5
    li	$v1,1
    sd	$v1,528($sp)
.L0da871d8:
    ld	$t0,528($sp)
    bnezl	$t0,.L0da86d58
    # Line 3706
    lw	$v0,31716($s0)
    # Line 3703
    move	$a5,$s6
    move	$a3,$s4
    move	$a2,$s3
    move	$a1,$s2
    # lw $t9, -30288($gp) # &__glMgrRE4PIORd
    # Line 3702
    ld	$a6,560($sp)
    # Line 3703
    move	$a0,$s0
    jal	__glMgrRE4PIORd
    # Line 3702
    addu	$a6,$a6,$s1
    b	.L0da86d58
    # Line 3706
    lw	$v0,31716($s0)
.L0da87210:
    # Line 3662
    li	$t0,1
    b	.L0da86ff0
    sd	$t0,528($sp)
.L0da8721c:
    li	$t1,1
    b	.L0da8701c
    sd	$t1,528($sp)
.L0da87228:
    li	$at,1
    b	.L0da8705c
    sd	$at,528($sp)
.L0da87234:
    b	.L0da8707c
    sd	$v1,528($sp)
.L0da8723c:
    # Line 3689
    ld	$t0,560($sp)
    sll	$t1,$s5,0x2
    subu	$t1,$t1,$s5
    sll	$t1,$t1,0x2
    addu	$t0,$t1,$t0
    # Line 3690
    b	.L0da87120
    sd	$t0,560($sp)
.L0da87258:
    # Line 3699
    bltz	$s3,.L0da8716c
    addu	$a5,$a3,$s3
    bltz	$s4,.L0da8716c
    addu	$a5,$a3,$s3
    b	.L0da87188
    lw	$a4,524($sp)
.L0da87270:
    negu	$a3,$a5
    dsll32	$a3,$a3,0x10
    dsra32	$a3,$a3,0x10
    subu	$a4,$a4,$a3
    blez	$a4,.L0da8733c
    addu	$s3,$a3,$s3
.L0da87288:
    mtc1	$a3,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f2,31760($s0)
    mul.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$s1,$f2
    bgez	$s3,.L0da8717c
    addu	$a5,$a0,$s4
.L0da872ac:
    addu	$a4,$s3,$a4
    blez	$a4,.L0da87348
.L0da872b4:
    negu	$t1,$s3
    mtc1	$t1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f0,31760($s0)
    mul.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$t0,$f0
    move	$s3,$zero
    b	.L0da87178
    addu	$s1,$t0,$s1
.L0da872e0:
    dsll32	$a0,$a0,0x10
    dsra32	$a0,$a0,0x10
    subu	$s6,$s6,$a0
    blez	$s6,.L0da87354
    addu	$s4,$a0,$s4
.L0da872f4:
    lw	$t1,31828($s0)
    mult	$t1,$a0
    mflo	$t0
    bgez	$s4,.L0da87188
    addu	$s1,$t0,$s1
.L0da87308:
    addu	$s6,$s4,$s6
    blez	$s6,.L0da87360
    li	$t0,1
.L0da87314:
    lw	$at,31828($s0)
    mult	$at,$s4
    mflo	$s4
    subu	$s1,$s1,$s4
    b	.L0da87188
    move	$s4,$zero
.L0da8732c:
    # Line 3692
    sll	$t0,$s5,0x4
    addu	$v1,$t0,$v1
    # Line 3693
    b	.L0da87120
    sd	$v1,560($sp)
.L0da8733c:
    # Line 3699
    li	$t1,1
    b	.L0da87288
    sd	$t1,528($sp)
.L0da87348:
    li	$at,1
    b	.L0da872b4
    sd	$at,528($sp)
.L0da87354:
    li	$v1,1
    b	.L0da872f4
    sd	$v1,528($sp)
.L0da87360:
    b	.L0da87314
    sd	$t0,528($sp)
.end __glMgrDoReadPixels

# Function: __glMgrim_ReadPixels
# Declared: Line 3732 (Source lines: 3734-3800)
# Address: 0x0da87368 - 0x0da876e8 (Size: 896 bytes, Frame: 192)
.globl __glMgrim_ReadPixels
.ent __glMgrim_ReadPixels
__glMgrim_ReadPixels:
    # Line 3734
    move	$v0,$a0
    # Line 3740
    li	$a7,1
    # Line 3734
    addiu	$sp,$sp,-192
    sd	$s4,96($sp)
    # Line 3740
    lw	$s4,__glCurrentContext
    sd	$s5,72($sp)
    # Line 3734
    move	$s5,$a6
    sd	$s3,104($sp)
    move	$s3,$a5
    sd	$s0,64($sp)
    move	$s0,$a4
    sd	$s2,112($sp)
    move	$s2,$a3
    sd	$s1,80($sp)
    move	$s1,$a2
    sd	$gp,88($sp)
    # Line 3740
    lw	$at,__glBeginMode
    # Line 3734
    lui	$v1,0x17
    addiu	$v1,$v1,29488
    # Line 3740
    beq	$at,$a7,.L0da87698
    # Line 3734
    addu	$gp,$t9,$v1
    # Line 3740
    li	$a2,6400
    beq	$a2,$s0,.L0da87560
    # Line 3744
    li	$a0,6401
.L0da873c8:
    beq	$a0,$s0,.L0da875a4
    # Line 3749
    li	$t0,6402
.L0da873d0:
    beq	$s0,$t0,.L0da875e8
    # Line 3754
    li	$t1,6656
.L0da873d8:
    beq	$s3,$t1,.L0da8762c
    nop
.L0da873e0:
    # Line 3764
    blez	$s1,.L0da8749c
    nop
    blez	$s2,.L0da8749c
    nop
    sd	$v0,40($sp)
    # Line 3767
    bnez	$s5,.L0da87420
    sd	$a1,32($sp)
    ld	$gp,88($sp)
    # Line 3771
    ld	$s0,64($sp)
    ld	$s1,80($sp)
    ld	$s2,112($sp)
    ld	$s3,104($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da87420:
    # Line 3776
    sw	$s5,28($sp)
    sw	$s3,20($sp)
    sw	$s0,12($sp)
    sw	$s0,4($sp)
    move	$a7,$s2
    move	$a6,$s1
    move	$a5,$zero
    move	$a4,$zero
    ld	$a3,32($sp)
    ld	$a2,40($sp)
    li	$a1,2
    # lw $t9, -29768($gp) # &__glMgrMakePixelDesc
    sd	$ra,120($sp)
    addiu	$a0,$s4,31676
    jal	__glMgrMakePixelDesc
    sd	$a0,56($sp)
    beqzl	$v0,.L0da874d0
    # Line 3779
    lw	$at,31676($s4)
    # Line 3778
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$v0
    ld	$gp,88($sp)
    # Line 3779
    ld	$s0,64($sp)
    ld	$s1,80($sp)
    ld	$s2,112($sp)
    ld	$s3,104($sp)
    ld	$ra,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da8749c:
    # Line 3765
    bltz	$s1,.L0da876d4
    # Line 3766
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 3765
    bltz	$s2,.L0da876d4
    # Line 3766
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da874ac:
    ld	$gp,88($sp)
    # Line 3767
    ld	$s0,64($sp)
    ld	$s1,80($sp)
    ld	$s2,112($sp)
    ld	$s3,104($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da874d0:
    # Line 3779
    bnez	$at,.L0da87670
    # Line 3794
    move	$a7,$s5
.L0da874d8:
    move	$a6,$s3
    move	$a5,$s0
    move	$a4,$s2
    ld	$a2,32($sp)
    ld	$a1,40($sp)
    move	$a0,$s4
    move	$a3,$s1
    li	$v0,1
    # Line 3793
    li	$t0,0x9600
    lui	$t1,0x7
    # Line 3790
    lui	$v1,0x1
    addu	$v1,$s4,$v1
    # Line 3793
    ori	$t1,$t1,0x4080
    # Line 3794
    # lw $t9, -31856($gp) # &__glMgrDoReadPixels
    # Line 3793
    sw	$t0,0($t1)
    sd	$v1,48($sp)
    # Line 3794
    bal __glMgrDoReadPixels
    # Line 3790
    sb	$v0,-25268($v1)
    lui	$s1,0x7
    ld	$gp,88($sp)
    # Line 3800
    ld	$s3,104($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    ori	$s1,$s1,0x4080
    # Line 3795
    li	$s0,0x9700
    sw	$s0,0($s1)
    # Line 3800
    ld	$s0,64($sp)
    # Line 3798
    ld	$s2,48($sp)
    # Line 3800
    ld	$s1,80($sp)
    ld	$ra,120($sp)
    # Line 3798
    sb	$zero,-25268($s2)
    # Line 3800
    ld	$s2,112($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da87560:
    # Line 3740
    lbu	$at,3193($s4)
    bnez	$at,.L0da873c8
    # Line 3744
    li	$a0,6401
    # Line 3743
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,120($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,88($sp)
    # Line 3744
    ld	$s0,64($sp)
    ld	$s1,80($sp)
    ld	$s2,112($sp)
    ld	$s3,104($sp)
    ld	$ra,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da875a4:
    lbu	$v1,3198($s4)
    bnez	$v1,.L0da873d0
    # Line 3749
    li	$t0,6402
    # Line 3748
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,120($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,88($sp)
    # Line 3749
    ld	$s0,64($sp)
    ld	$s1,80($sp)
    ld	$s2,112($sp)
    ld	$s3,104($sp)
    ld	$ra,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da875e8:
    lbu	$t0,3197($s4)
    bnez	$t0,.L0da873d8
    # Line 3754
    li	$t1,6656
    # Line 3753
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,120($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,88($sp)
    # Line 3754
    ld	$s0,64($sp)
    ld	$s1,80($sp)
    ld	$s2,112($sp)
    ld	$s3,104($sp)
    ld	$ra,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da8762c:
    beq	$a0,$s0,.L0da873e0
    nop
    # Line 3757
    beq	$a2,$s0,.L0da873e0
    # Line 3760
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,120($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,88($sp)
    # Line 3761
    ld	$s0,64($sp)
    ld	$s1,80($sp)
    ld	$s2,112($sp)
    ld	$s3,104($sp)
    ld	$ra,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da87670:
    # Line 3785
    # lw $t9, -29788($gp) # &__glMgrMakeTiles
    ld	$a0,56($sp)
    jal	__glMgrMakeTiles
    move	$a1,$s4
    # Line 3786
    # lw $t9, -29820($gp) # &__glMgrMakePages
    ld	$a0,56($sp)
    jal	__glMgrMakePages
    move	$a1,$s4
    b	.L0da874d8
    # Line 3794
    move	$a7,$s5
.L0da87698:
    # Line 3740
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,120($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,88($sp)
    ld	$s0,64($sp)
    ld	$s1,80($sp)
    ld	$s2,112($sp)
    ld	$s3,104($sp)
    ld	$ra,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
    # Line 3766
    # lw $t9, -27320($gp) # &__glSetError
.L0da876d4:
    sd	$ra,120($sp)
    jal	__glSetError
    li	$a0,1281
    b	.L0da874ac
    ld	$ra,120($sp)
.end __glMgrim_ReadPixels

# Function: __glMgrFastDrawPixels
# Declared: Line 3807 (Source lines: 3810-3819)
# Address: 0x0da876e8 - 0x0da87760 (Size: 120 bytes, Frame: 144)
.globl __glMgrFastDrawPixels
.ent __glMgrFastDrawPixels
__glMgrFastDrawPixels:
    # Line 3810
    move	$at,$a3
    # Line 3813
    move	$a3,$zero
    # Line 3810
    move	$a7,$a2
    # Line 3813
    move	$a2,$zero
    # Line 3810
    move	$a6,$a1
    # Line 3813
    move	$a1,$zero
    # Line 3810
    addiu	$sp,$sp,-1680
    move	$v1,$a0
    # Line 3813
    addiu	$a0,$sp,32
    lwc1	$f0,344($v1)
    lwc1	$f1,348($v1)
    sw	$at,12($sp)
    sd	$ra,1592($sp)
    sw	$a4,20($sp)
    sw	$a5,28($sp)
    sd	$gp,1600($sp)
    trunc.w.s	$f1,$f1
    # Line 3810
    lui	$v0,0x17
    addiu	$v0,$v0,28592
    # Line 3813
    trunc.w.s	$f0,$f0
    # Line 3810
    addu	$gp,$t9,$v0
    # Line 3813
    # lw $t9, -29768($gp) # &__glMgrMakePixelDesc
    mfc1	$a5,$f1
    mfc1	$a4,$f0
    jal	__glMgrMakePixelDesc
    sw	$at,4($sp)
    # Line 3819
    ld	$ra,1592($sp)
    ld	$gp,1600($sp)
    jr	$ra
    addiu	$sp,$sp,1680
.end __glMgrFastDrawPixels

# Function: __glMgrim_DrawPixels
# Declared: Line 3827 (Source lines: 3829-4100)
# Address: 0x0da87760 - 0x0da884bc (Size: 3420 bytes, Frame: 192)
.globl __glMgrim_DrawPixels
.ent __glMgrim_DrawPixels
__glMgrim_DrawPixels:
    # Line 3844
    move	$v0,$a2
    # Line 3847
    li	$a5,1
    # Line 3829
    addiu	$sp,$sp,-448
    sd	$s0,336($sp)
    # Line 3847
    lw	$s0,__glCurrentContext
    sd	$s3,360($sp)
    # Line 3829
    move	$s3,$a3
    sd	$s8,320($sp)
    move	$s8,$a1
    sd	$s4,352($sp)
    move	$s4,$a0
    sd	$s7,328($sp)
    move	$s7,$a2
    sd	$gp,344($sp)
    # Line 3847
    lw	$at,__glBeginMode
    # Line 3829
    lui	$v1,0x17
    addiu	$v1,$v1,28472
    # Line 3847
    beq	$at,$a5,.L0da88440
    # Line 3829
    addu	$gp,$t9,$v1
    # Line 3847
    li	$a0,6401
    beq	$a0,$s7,.L0da87ad0
    # Line 3851
    li	$t0,6402
.L0da877b8:
    beq	$s7,$t0,.L0da87b10
    # Line 3856
    li	$t1,6656
.L0da877c0:
    beq	$s3,$t1,.L0da87b50
    nop
.L0da877c8:
    # Line 3866
    blez	$s4,.L0da878b4
    nop
    blez	$s8,.L0da878b4
    # Line 3869
    li	$at,0x8032
    beq	$s3,$at,.L0da87b90
    # Line 3872
    li	$v1,0x8033
.L0da877e0:
    beq	$s3,$v1,.L0da8786c
    li	$t0,0x8034
    beq	$s3,$t0,.L0da8786c
    li	$t1,0x8035
    beq	$s3,$t1,.L0da8786c
    li	$at,0x8036
    beq	$s3,$at,.L0da87870
    li	$v1,6408
.L0da87800:
    # Line 3875
    lw	$a0,3092($s0)
.L0da87804:
    li	$v1,7170
    beql	$a0,$v1,.L0da883f4
    ld	$gp,344($sp)
    sd	$v0,312($sp)
    # Line 3879
    li	$t0,7169
    beq	$a0,$t0,.L0da87ba4
    sd	$a4,304($sp)
    # Line 3887
    # lw $t9, -30868($gp) # &__glMgrim_GetBooleanv
    addiu	$a1,$sp,32
    sd	$ra,88($sp)
    jal	__glMgrim_GetBooleanv
    li	$a0,2824
    lbu	$t1,32($sp)
    beqz	$t1,.L0da88420
    ld	$ra,88($sp)
    ld	$at,304($sp)
    # Line 3889
    bnez	$at,.L0da878e4
    # Line 3897
    nop	# was lw $t9, -31964($gp) # &__glMgrGetColorMatrixState
    ld	$gp,344($sp)
    # Line 3892
    ld	$s0,336($sp)
    ld	$s3,360($sp)
    ld	$s4,352($sp)
    ld	$s7,328($sp)
    ld	$s8,320($sp)
    jr	$ra
    addiu	$sp,$sp,448
.L0da8786c:
    # Line 3872
    li	$v1,6408
.L0da87870:
    beq	$s7,$v1,.L0da87800
    li	$t0,0x8000
    beql	$s7,$t0,.L0da87804
    # Line 3875
    lw	$a0,3092($s0)
    # Line 3874
    # lw $t9, -27320($gp) # &__glSetError
.L0da87884:
    sd	$ra,88($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,344($sp)
    # Line 3875
    ld	$s0,336($sp)
    ld	$s3,360($sp)
    ld	$s4,352($sp)
    ld	$ra,88($sp)
    ld	$s7,328($sp)
    ld	$s8,320($sp)
    jr	$ra
    addiu	$sp,$sp,448
.L0da878b4:
    # Line 3867
    bltz	$s4,.L0da88478
    # Line 3868
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 3867
    bltz	$s8,.L0da88478
    # Line 3868
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da878c4:
    ld	$gp,344($sp)
    # Line 3869
    ld	$s0,336($sp)
    ld	$s3,360($sp)
    ld	$s4,352($sp)
    ld	$s7,328($sp)
    ld	$s8,320($sp)
    jr	$ra
    addiu	$sp,$sp,448
.L0da878e4:
    # Line 3897
    jal	__glSetError
    move	$a0,$s0
    # Line 3900
    mtc1	$zero,$f0
    lwc1	$f4,724($s0)
    c.lt.s	$f4,$f0
    li	$v0,1
    bc1fl	.L0da87904
    move	$v0,$zero
.L0da87904:
    ld	$t1,304($sp)
    sd	$zero,208($sp)
    beqz	$v0,.L0da88418
    sd	$t1,216($sp)
    # Line 3905
    neg.s	$f5,$f4
.L0da87918:
    ldc1	$f1,_lit8_3ff0000000000000
    cvt.d.s	$f2,$f5
    c.lt.d	$f1,$f2
    nop
    bc1f	.L0da87954
    li	$v1,3071
    beqz	$v0,.L0da88494
    nop
    # Line 3902
    neg.s	$f5,$f4
.L0da8793c:
    lwc1	$f3,_lit_453ff000
    div.s	$f3,$f3,$f5
    trunc.w.s	$f3,$f3
    mfc1	$at,$f3
    b	.L0da87958
    sd	$at,176($sp)
.L0da87954:
    sd	$v1,176($sp)
.L0da87958:
    # Line 3909
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 3905
    la	$a0,SYMBOL_LOCATION
    # Line 3909
    li	$a1,1
    jal	__Mgr_ReturnMode
    lw	$a0,8($a0)
    sd	$v0,296($sp)
    # Line 3910
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    jal	__Mgr_ReturnMode
    lw	$a0,12($a0)
    # Line 3914
    addiu	$a1,$sp,40
    li	$a0,2823
    # Line 3912
    sra	$a3,$v0,0x10
    sd	$a3,272($sp)
    # Line 3914
    # lw $t9, -30872($gp) # &__glMgrim_GetIntegerv
    # Line 3912
    sll	$a2,$v0,0x10
    sra	$a2,$a2,0x10
    # Line 3914
    jal	__glMgrim_GetIntegerv
    sd	$a2,264($sp)
    mtc1	$s4,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f7,720($s0)
    mul.s	$f1,$f7,$f1
    lw	$v0,40($sp)
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    add.s	$f0,$f0,$f1
    mtc1	$zero,$f4
    trunc.w.s	$f0,$f0
    c.lt.s	$f7,$f4
    mfc1	$a0,$f0
    bc1f	.L0da879f8
    # Line 3917
    move	$a3,$a0
    # Line 3918
    b	.L0da87a00
    move	$a6,$v0
.L0da879f8:
    # Line 3920
    move	$a3,$v0
    # Line 3921
    move	$a6,$a0
.L0da87a00:
    # Line 3925
    mtc1	$s8,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f5,724($s0)
    mul.s	$f3,$f3,$f5
    lw	$a2,44($sp)
    mtc1	$a2,$f2
    nop
    cvt.s.w	$f2,$f2
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    c.lt.s	$f5,$f4
    mfc1	$v0,$f2
    bc1f	.L0da87a48
    # Line 3924
    mov.s	$f6,$f7
    # Line 3928
    move	$a0,$v0
    # Line 3929
    b	.L0da87a50
    move	$a1,$a2
.L0da87a48:
    # Line 3931
    move	$a0,$a2
    # Line 3932
    move	$a1,$v0
.L0da87a50:
    # Line 3944
    move	$v0,$zero
    sd	$zero,184($sp)
    # Line 3946
    lw	$at,1120($s0)
    # Line 3947
    lw	$a5,1116($s0)
    lw	$t0,31688($s0)
    sd	$at,96($sp)
    move	$t1,$a5
    bnez	$t0,.L0da882f0
    sd	$a5,80($sp)
    # Line 3954
    la	$t2,__iob
.L0da87a78:
    lw	$v1,32068($s0)
    beqz	$v1,.L0da87c58
    nop
    c.lt.s	$f4,$f5
    nop
    bc1f	.L0da87be0
    ld	$v0,272($sp)
    subu	$v0,$v0,$a0
    blez	$v0,.L0da8849c
    # Line 3960
    move	$a7,$v0
.L0da87aa0:
    ld	$v1,264($sp)
    move	$v0,$a7
    move	$t0,$a7
    slt	$v1,$v1,$a1
    beqz	$v1,.L0da87c58
    sd	$a7,208($sp)
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0da88260
    mov.s	$f7,$f5
    # Line 3962
    b	.L0da88264
    neg.s	$f5,$f7
.L0da87ad0:
    # Line 3847
    lbu	$t1,3110($s0)
    bnez	$t1,.L0da877b8
    # Line 3851
    li	$t0,6402
    # Line 3850
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,88($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,344($sp)
    # Line 3851
    ld	$s0,336($sp)
    ld	$s3,360($sp)
    ld	$s4,352($sp)
    ld	$ra,88($sp)
    ld	$s7,328($sp)
    ld	$s8,320($sp)
    jr	$ra
    addiu	$sp,$sp,448
.L0da87b10:
    lbu	$at,3109($s0)
    bnez	$at,.L0da877c0
    # Line 3856
    li	$t1,6656
    # Line 3855
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,88($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,344($sp)
    # Line 3856
    ld	$s0,336($sp)
    ld	$s3,360($sp)
    ld	$s4,352($sp)
    ld	$ra,88($sp)
    ld	$s7,328($sp)
    ld	$s8,320($sp)
    jr	$ra
    addiu	$sp,$sp,448
.L0da87b50:
    beq	$a0,$s7,.L0da877c8
    # Line 3859
    li	$v1,6400
    beq	$s7,$v1,.L0da877c8
    # Line 3862
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,88($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,344($sp)
    # Line 3863
    ld	$s0,336($sp)
    ld	$s3,360($sp)
    ld	$s4,352($sp)
    ld	$ra,88($sp)
    ld	$s7,328($sp)
    ld	$s8,320($sp)
    jr	$ra
    addiu	$sp,$sp,448
.L0da87b90:
    # Line 3872
    li	$t0,6407
    bne	$s7,$t0,.L0da87884
    # Line 3874
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da877e0
    # Line 3872
    li	$v1,0x8033
.L0da87ba4:
    ld	$gp,344($sp)
    # Line 3884
    ld	$s4,352($sp)
    ld	$s7,328($sp)
    ld	$s8,320($sp)
    # Line 3883
    li	$t1,1797
    # Line 3882
    lui	$s3,0x1
    lui	$s0,0x7
    ori	$s0,$s0,0x4080
    ori	$s3,$s3,0x4
    sw	$s3,0($s0)
    # Line 3884
    ld	$s3,360($sp)
    # Line 3883
    sw	$t1,0($s0)
    # Line 3884
    ld	$s0,336($sp)
    jr	$ra
    addiu	$sp,$sp,448
.L0da87be0:
    ld	$v0,264($sp)
    # Line 3962
    subu	$v0,$v0,$a1
    slti	$at,$v0,-1
    beqz	$at,.L0da87bf8
    # Line 3965
    move	$a7,$zero
    addiu	$a7,$v0,1
.L0da87bf8:
    ld	$v1,272($sp)
    move	$v0,$a7
    move	$t0,$a7
    slt	$v1,$a0,$v1
    beqz	$v1,.L0da87c58
    sd	$a7,208($sp)
    c.lt.s	$f5,$f4
    nop
    bc1f	.L0da87c28
    mov.s	$f7,$f5
    # Line 3967
    b	.L0da87c2c
    neg.s	$f5,$f7
.L0da87c28:
    mov.s	$f5,$f7
.L0da87c2c:
    ld	$t1,272($sp)
    subu	$t1,$a1,$t1
    addu	$t1,$t1,$a7
    addiu	$t1,$t1,1
    mtc1	$t1,$f0
    nop
    cvt.s.w	$f0,$f0
    div.s	$f0,$f0,$f5
    trunc.w.s	$f0,$f0
    mfc1	$s8,$f0
    nop
.L0da87c58:
    bltz	$v0,.L0da88294
    # Line 3971
    move	$a0,$v0
.L0da87c60:
    sd	$s5,64($sp)
    sd	$s6,240($sp)
    sd	$s1,232($sp)
    sd	$s2,192($sp)
    addu	$at,$a0,$a5
    beqz	$s8,.L0da88070
    sw	$at,1116($s0)
    c.lt.s	$f4,$f6
    li	$s2,1
    ld	$t0,296($sp)
    bc1fl	.L0da87c90
    move	$s2,$zero
.L0da87c90:
    sra	$at,$t0,0x10
    slt	$v1,$a3,$at
    c.lt.s	$f6,$f4
    sd	$v1,104($sp)
    li	$v1,1
    bc1fl	.L0da87cac
    move	$v1,$zero
.L0da87cac:
    sd	$s4,72($sp)
    sd	$s5,64($sp)
    mov.s	$f1,$f6
    sdc1	$f6,56($sp)
    lw	$s1,48($sp)
    lui	$s6,0x1
    addu	$s6,$s0,$s6
    sd	$s1,200($sp)
    addiu	$s1,$s0,31676
    sd	$s2,144($sp)
    addiu	$s2,$t2,32
    sll	$t0,$t0,0x10
    sra	$t0,$t0,0x10
    subu	$t1,$a6,$at
    subu	$at,$at,$a3
    sd	$at,136($sp)
    subu	$at,$t0,$a3
    sd	$at,168($sp)
    sd	$t1,120($sp)
    slt	$t1,$t0,$a6
    subu	$t0,$t0,$a6
    sd	$t1,160($sp)
    addiu	$t1,$t0,1
    slti	$t0,$t0,-1
    sd	$t1,128($sp)
    sd	$t0,112($sp)
    sd	$v1,152($sp)
.L0da87d18:
    ld	$at,176($sp)
    ld	$s4,184($sp)
    slt	$at,$s8,$at
    beqz	$at,.L0da87d3c
    ld	$t0,176($sp)
    # Line 3974
    move	$v1,$s8
    sd	$s8,224($sp)
    b	.L0da87d40
    ld	$s4,184($sp)
.L0da87d3c:
    sd	$t0,224($sp)
.L0da87d40:
    lw	$t1,32068($s0)
    beqz	$t1,.L0da87ec0
    # Line 4035
    move	$a0,$s1
    # Line 3974
    lw	$a0,-30164($s6)
    beqz	$a0,.L0da88258
    nop
    lw	$at,196($a0)
    beqz	$at,.L0da882e0
    # Line 3977
    nop	# was lw $t9, -30792($gp) # &mgrTM_RefreshDim
    # Line 3978
    sw	$zero,32072($s0)
.L0da87d68:
    lw	$a3,-30164($s6)
    lw	$a3,196($a3)
    lbu	$a3,179($a3)
    # Line 3981
    li	$t0,6408
    li	$v1,6
    # Line 3978
    beq	$v1,$a3,.L0da883bc
    move	$v0,$zero
    li	$t0,4
    # Line 3981
    beq	$t0,$a3,.L0da883d4
    # Line 3985
    li	$t1,6407
.L0da87d90:
    beqz	$v0,.L0da883b4
.L0da87d94:
    la	$t1,MgrasPrevVidTexture
    lw	$t1,0($t1)
    bnez	$t1,.L0da881e0
    # Line 3989
    move	$a0,$s0
    lw	$v0,-28164($s6)
.L0da87da8:
    lw	$a1,-30164($s6)
    lw	$at,484($v0)
    lw	$a1,196($a1)
    bne	$a1,$at,.L0da88218
    li	$t0,1
.L0da87dbc:
    # Line 3993
    sw	$t0,1160($v0)
    lw	$v0,-28164($s6)
.L0da87dc4:
    lw	$t1,1160($v0)
.L0da87dc8:
    beqz	$t1,.L0da87ebc
    lui	$t0,0x40
    # Line 3997
    lw	$v0,-30164($s6)
    lw	$v0,196($v0)
    # Line 3998
    lw	$a2,88($v0)
    ori	$a2,$a2,0x1
    sw	$a2,88($v0)
    lw	$at,-28080($s6)
    la	$s4,SYMBOL_LOCATION
    beqz	$at,.L0da87dfc
    # Line 3997
    sw	$v0,52($sp)
    # Line 4000
    ori	$a2,$a2,0x2
    sw	$a2,88($v0)
.L0da87dfc:
    lw	$v1,-28076($s6)
    li	$t1,0x8185
    beqzl	$v1,.L0da87e18
    # Line 4003
    lw	$s5,124($v0)
    # Line 4002
    or	$a2,$t0,$a2
    sw	$a2,88($v0)
    # Line 4003
    lw	$s5,124($v0)
.L0da87e18:
    beq	$s5,$t1,.L0da881fc
    li	$at,0x8186
    beq	$s5,$at,.L0da881fc
.L0da87e24:
    # Line 4011
    move	$a0,$s0
    # lw $t9, -30696($gp) # &__glMgrasWrite
    li	$a4,1
    lw	$a3,256($s4)
    jal	__glMgrasWrite
    li	$a1,394
    ldc1	$f4,56($sp)
    # Line 4012
    ld	$v1,144($sp)
    ld	$t0,112($sp)
    beqz	$v1,.L0da880e4
    lw	$v0,1112($s0)
    ld	$t0,136($sp)
    # Line 4015
    ld	$t1,160($sp)
    # Line 4012
    blez	$t0,.L0da883cc
    ld	$a4,136($sp)
.L0da87e60:
    # Line 4015
    beqz	$t1,.L0da8813c
    move	$s4,$a4
    ld	$t0,168($sp)
    beqz	$v0,.L0da88410
    ld	$at,72($sp)
.L0da87e74:
    # Line 4020
    subu	$t0,$t0,$a4
    ld	$at,152($sp)
    # Line 4018
    beqz	$at,.L0da883ec
    # Line 4020
    addiu	$t0,$t0,1
    neg.s	$f4,$f4
.L0da87e88:
    mtc1	$t0,$f0
    nop
    cvt.s.w	$f0,$f0
    div.s	$f0,$f0,$f4
    trunc.w.s	$f0,$f0
    mfc1	$v1,$f0
    # Line 4028
    bltz	$s4,.L0da88144
    sd	$v1,72($sp)
    # Line 4031
    move	$a4,$s4
.L0da87eac:
    lw	$t1,1120($s0)
    sd	$v0,200($sp)
    addu	$t1,$t1,$a4
    sw	$t1,1120($s0)
.L0da87ebc:
    # Line 4035
    move	$a0,$s1
.L0da87ec0:
    move	$a1,$zero
    move	$a2,$zero
    move	$a3,$zero
    move	$a4,$s4
    ld	$a5,208($sp)
    ld	$a6,72($sp)
    ld	$a7,224($sp)
    sw	$s3,20($sp)
    sw	$s7,4($sp)
    ld	$t3,216($sp)
    # lw $t9, -29768($gp) # &__glMgrMakePixelDesc
    ld	$t2,312($sp)
    sw	$t3,28($sp)
    jal	__glMgrMakePixelDesc
    sw	$t2,12($sp)
    lw	$at,31688($s0)
    bnez	$at,.L0da880a4
    move	$s5,$v0
.L0da87f08:
    # Line 4039
    bnez	$s5,.L0da8814c
    # Line 4043
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 4048
    lw	$v1,31676($s0)
    bnez	$v1,.L0da881b0
    # Line 4054
    nop	# was lw $t9, -30028($gp) # &__glMgrBuildChain
    # Line 4056
    lw	$t0,-28164($s6)
.L0da87f20:
    lw	$t0,1160($t0)
    beqz	$t0,.L0da8829c
    # Line 4060
    li	$a4,3
    lw	$a3,31912($s0)
    # lw $t9, -30284($gp) # &__glMgrSaveRSS
    lw	$a2,31908($s0)
    li	$a1,4096
    jal	__glMgrSaveRSS
    li	$a0,-1
    sd	$s4,184($sp)
    # Line 4063
    lbu	$s5,-25436($s6)
.L0da87f4c:
    # Line 4072
    blez	$s5,.L0da87fac
    move	$s4,$zero
    b	.L0da87f9c
    lw	$t0,31688($s0)
.L0da87f5c:
    # Line 4074
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbf0000
    move	$a2,$s4
    jal	fprintf
    addiu	$a1,$a1,-11192
    # Line 4076
    li	$a3,1
.L0da87f74:
    move	$a2,$zero
    # lw $t9, -31880($gp) # &__glMgrSendPixels
    li	$a1,1
    move	$a0,$s1
    bal __glMgrSendPixels
    # Line 4075
    sw	$s4,32076($s0)
    # Line 4072
    addiu	$s4,$s4,1
    beq	$s5,$s4,.L0da87fac
    nop
    lw	$t0,31688($s0)
.L0da87f9c:
    beqz	$t0,.L0da87f74
    # Line 4076
    li	$a3,1
    b	.L0da87f5c
    # Line 4074
    move	$a0,$s2
.L0da87fac:
    # Line 4079
    # lw $t9, -30280($gp) # &__glMgrRestoreRSS
    jal	__glMgrRestoreRSS
    nop
    lw	$v0,-28164($s6)
    lw	$t1,1160($v0)
    beqz	$t1,.L0da88244
    # Line 4086
    li	$a4,1
    li	$a1,394
    move	$a0,$s0
    # Line 4085
    lw	$a5,52($sp)
    # Line 4084
    sw	$zero,1160($v0)
    la	$a3,SYMBOL_LOCATION
    # Line 4085
    lw	$a2,88($a5)
    # Line 4086
    # lw $t9, -30696($gp) # &__glMgrasWrite
    li	$a6,-2
    # Line 4085
    and	$a2,$a2,$a6
    sw	$a2,88($a5)
    # Line 4086
    jal	__glMgrasWrite
    lw	$a3,256($a3)
    ld	$v1,80($sp)
    # Line 4087
    ld	$t0,200($sp)
    lw	$t1,-28164($s6)
    # Line 4090
    ld	$at,96($sp)
    # Line 4087
    beqz	$t0,.L0da883e4
    sw	$zero,488($t1)
.L0da88010:
    # Line 4091
    sw	$v1,1116($s0)
    # Line 4090
    sw	$at,1120($s0)
    # Line 4093
    lw	$at,-32328($s6)
.L0da8801c:
    ld	$t0,224($sp)
    subu	$at,$t0,$at
    dsll32	$v1,$at,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f2
    # Line 4096
    lw	$t1,31820($s0)
    # Line 4093
    cvt.s.l	$f2,$f2
    # Line 4096
    multu	$t1,$at
    # Line 4093
    lwc1	$f1,724($s0)
    mul.s	$f1,$f1,$f2
    # Line 4095
    subu	$s8,$s8,$t0
    # Line 4093
    trunc.w.s	$f1,$f1
    ld	$t0,208($sp)
    # Line 4096
    ld	$at,216($sp)
    mflo	$v1
    # Line 4093
    mfc1	$t1,$f1
    # Line 4096
    addu	$at,$v1,$at
    sd	$at,216($sp)
    # Line 4093
    addu	$t0,$t1,$t0
    # Line 4096
    bnez	$s8,.L0da87d18
    sd	$t0,208($sp)
.L0da88070:
    ld	$gp,344($sp)
    # Line 4100
    ld	$s0,336($sp)
    ld	$s1,232($sp)
    ld	$s2,192($sp)
    ld	$s3,360($sp)
    ld	$s4,352($sp)
    ld	$s5,64($sp)
    ld	$s6,240($sp)
    ld	$ra,88($sp)
    ld	$s7,328($sp)
    ld	$s8,320($sp)
    jr	$ra
    addiu	$sp,$sp,448
.L0da880a4:
    # Line 4038
    move	$a0,$s2
    ld	$a3,208($sp)
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbf0000
    move	$a2,$s4
    jal	fprintf
    addiu	$a1,$a1,-11248
    # Line 4039
    move	$a0,$s2
    ld	$a3,224($sp)
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbf0000
    ld	$a2,72($sp)
    jal	fprintf
    addiu	$a1,$a1,-11224
    b	.L0da87f08
    nop
.L0da880e4:
    # Line 4020
    beqz	$t0,.L0da884a4
    # Line 4023
    ld	$t1,104($sp)
    ld	$a4,128($sp)
.L0da880f0:
    beqz	$t1,.L0da8813c
    move	$s4,$a4
    ld	$t0,120($sp)
    ld	$at,152($sp)
    beqz	$v0,.L0da884b4
    ld	$v1,72($sp)
.L0da88108:
    # Line 4028
    addu	$t0,$a4,$t0
    # Line 4026
    beqz	$at,.L0da884ac
    # Line 4028
    addiu	$t0,$t0,1
    ldc1	$f4,56($sp)
    neg.s	$f4,$f4
.L0da8811c:
    mtc1	$t0,$f0
    nop
    cvt.s.w	$f0,$f0
    div.s	$f0,$f0,$f4
    trunc.w.s	$f0,$f0
    mfc1	$v1,$f0
    nop
    sd	$v1,72($sp)
.L0da8813c:
    bgez	$s4,.L0da87eac
    # Line 4031
    move	$a4,$s4
.L0da88144:
    b	.L0da87eac
    negu	$a4,$s4
.L0da8814c:
    # Line 4043
    jalr	$t9
    move	$a0,$s5
    lw	$t1,-28164($s6)
    ld	$s6,240($sp)
    ld	$s5,64($sp)
    lw	$t1,1160($t1)
    ld	$s1,232($sp)
    ld	$s2,192($sp)
    beqz	$t1,.L0da88180
    ld	$ra,88($sp)
    ld	$at,200($sp)
    beqz	$at,.L0da8848c
    ld	$s6,240($sp)
.L0da88180:
    ld	$gp,344($sp)
    # Line 4048
    ld	$s3,360($sp)
    ld	$s4,352($sp)
    ld	$s7,328($sp)
    ld	$v1,80($sp)
    # Line 4046
    ld	$v0,96($sp)
    # Line 4048
    ld	$s8,320($sp)
    # Line 4047
    sw	$v1,1116($s0)
    # Line 4046
    sw	$v0,1120($s0)
    # Line 4048
    ld	$s0,336($sp)
    jr	$ra
    addiu	$sp,$sp,448
.L0da881b0:
    # Line 4054
    jalr	$t9
    move	$a0,$s1
    # Line 4055
    # lw $t9, -29788($gp) # &__glMgrMakeTiles
    move	$a0,$s1
    jal	__glMgrMakeTiles
    move	$a1,$s0
    # Line 4056
    # lw $t9, -29820($gp) # &__glMgrMakePages
    move	$a0,$s1
    jal	__glMgrMakePages
    move	$a1,$s0
    b	.L0da87f20
    lw	$t0,-28164($s6)
.L0da881e0:
    # Line 3989
    # lw $t9, -30748($gp) # &mgrTM_VidTexWait
    lw	$a1,-30164($s6)
    li	$a2,1
    jal	mgrTM_VidTexWait
    lw	$a1,196($a1)
    b	.L0da87da8
    lw	$v0,-28164($s6)
.L0da881fc:
    lui	$t0,0x4
    lui	$t1,0xfff3
    ori	$t1,$t1,0xffff
    # Line 4006
    and	$a2,$t1,$a2
    or	$a2,$a2,$t0
    b	.L0da87e24
    sw	$a2,88($v0)
.L0da88218:
    # Line 3991
    # lw $t9, -30744($gp) # &mgrTM_DrawSetup
    jal	mgrTM_DrawSetup
    move	$a0,$s0
    lw	$v0,-28164($s6)
    lw	$at,-30164($s6)
    lw	$v1,484($v0)
    lw	$at,196($at)
    bnel	$at,$v1,.L0da87dc8
    # Line 3993
    lw	$t1,1160($v0)
    b	.L0da87dbc
    li	$t0,1
.L0da88244:
    # Line 4082
    # lw $t9, -30684($gp) # &__glMgrRestoreTexmode
    jal	__glMgrRestoreTexmode
    nop
    b	.L0da8801c
    # Line 4093
    lw	$at,-32328($s6)
.L0da88258:
    b	.L0da87dc4
    # Line 3993
    lw	$v0,-28164($s6)
.L0da88260:
    # Line 3962
    mov.s	$f5,$f7
.L0da88264:
    ld	$v1,264($sp)
    subu	$v1,$v1,$a0
    subu	$v1,$v1,$a7
    addiu	$v1,$v1,1
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    div.s	$f1,$f1,$f5
    trunc.w.s	$f1,$f1
    mfc1	$s8,$f1
    # Line 3967
    bgez	$v0,.L0da87c60
    # Line 3971
    move	$a0,$v0
.L0da88294:
    b	.L0da87c60
    negu	$a0,$v0
.L0da8829c:
    # Line 4065
    move	$a3,$zero
    # lw $t9, -30688($gp) # &__glMgrSaveTexmode
    move	$a2,$zero
    move	$a1,$zero
    jal	__glMgrSaveTexmode
    li	$a0,1
    lui	$a1,0x140
    # Line 4066
    li	$a4,3
    lw	$a3,31912($s0)
    # lw $t9, -30284($gp) # &__glMgrSaveRSS
    lw	$a2,31908($s0)
    lui	$a0,0x1e0
    jal	__glMgrSaveRSS
    ori	$a0,$a0,0x3929
    sd	$s4,184($sp)
    b	.L0da87f4c
    # Line 4069
    li	$s5,1
.L0da882e0:
    # Line 3977
    jalr	$t9
    nop
    b	.L0da87d68
    # Line 3978
    sw	$zero,32072($s0)
.L0da882f0:
    sd	$v0,384($sp)
    sd	$a6,288($sp)
    sdc1	$f5,376($sp)
    sdc1	$f6,368($sp)
    ld	$a5,264($sp)
    # Line 3950
    ld	$a4,272($sp)
    sd	$a0,248($sp)
    # lw $t9, -17908($gp) # &fprintf
    sd	$a1,256($sp)
    la	$a1,sub_0dbf0000
    sd	$s2,192($sp)
    la	$s2,__iob
    sd	$a3,280($sp)
    ld	$a3,296($sp)
    addiu	$a1,$a1,-11328
    addiu	$s2,$s2,32
    sra	$a2,$a3,0x10
    sll	$a3,$a3,0x10
    sra	$a3,$a3,0x10
    jal	fprintf
    move	$a0,$s2
    # Line 3952
    move	$a0,$s2
    ld	$a5,256($sp)
    ld	$a4,248($sp)
    ld	$a3,288($sp)
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbf0000
    ld	$a2,280($sp)
    jal	fprintf
    addiu	$a1,$a1,-11296
    # Line 3954
    move	$a0,$s2
    lw	$a3,44($sp)
    # lw $t9, -17908($gp) # &fprintf
    la	$a1,sub_0dbf0000
    lw	$a2,40($sp)
    jal	fprintf
    addiu	$a1,$a1,-11272
    la	$t2,__iob
    mtc1	$zero,$f4
    lw	$a5,1116($s0)
    ldc1	$f6,368($sp)
    ldc1	$f5,376($sp)
    ld	$a6,288($sp)
    ld	$a3,280($sp)
    ld	$a1,256($sp)
    ld	$a0,248($sp)
    ld	$v0,384($sp)
    b	.L0da87a78
    ld	$s2,192($sp)
.L0da883b4:
    b	.L0da87dc4
    # Line 3993
    lw	$v0,-28164($s6)
.L0da883bc:
    sd	$t0,312($sp)
    # Line 3980
    li	$v0,4
    b	.L0da87d94
    sw	$v0,32072($s0)
.L0da883cc:
    b	.L0da87e60
    # Line 4015
    move	$a4,$zero
.L0da883d4:
    sd	$t1,312($sp)
    # Line 3984
    li	$v0,3
    b	.L0da87d90
    sw	$v0,32072($s0)
.L0da883e4:
    b	.L0da88010
    # Line 4089
    sw	$zero,1112($s0)
.L0da883ec:
    b	.L0da87e88
    ldc1	$f4,56($sp)
.L0da883f4:
    # Line 3879
    ld	$s0,336($sp)
    ld	$s3,360($sp)
    ld	$s4,352($sp)
    ld	$s7,328($sp)
    ld	$s8,320($sp)
    jr	$ra
    addiu	$sp,$sp,448
.L0da88410:
    b	.L0da87e74
    # Line 4018
    sw	$at,1112($s0)
.L0da88418:
    b	.L0da87918
    # Line 3905
    mov.s	$f5,$f4
.L0da88420:
    ld	$gp,344($sp)
    # Line 3889
    ld	$s0,336($sp)
    ld	$s3,360($sp)
    ld	$s4,352($sp)
    ld	$s7,328($sp)
    ld	$s8,320($sp)
    jr	$ra
    addiu	$sp,$sp,448
.L0da88440:
    # Line 3847
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,88($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,344($sp)
    ld	$s0,336($sp)
    ld	$s3,360($sp)
    ld	$s4,352($sp)
    ld	$ra,88($sp)
    ld	$s7,328($sp)
    ld	$s8,320($sp)
    jr	$ra
    addiu	$sp,$sp,448
    # Line 3868
    # lw $t9, -27320($gp) # &__glSetError
.L0da88478:
    sd	$ra,88($sp)
    jal	__glSetError
    li	$a0,1281
    b	.L0da878c4
    ld	$ra,88($sp)
.L0da8848c:
    b	.L0da88180
    # Line 4045
    sw	$zero,1112($s0)
.L0da88494:
    b	.L0da8793c
    # Line 3902
    mov.s	$f5,$f4
.L0da8849c:
    b	.L0da87aa0
    # Line 3960
    move	$a7,$zero
.L0da884a4:
    b	.L0da880f0
    # Line 4023
    move	$a4,$zero
.L0da884ac:
    b	.L0da8811c
    ldc1	$f4,56($sp)
.L0da884b4:
    b	.L0da88108
    # Line 4026
    sw	$v1,1112($s0)
.end __glMgrim_DrawPixels

# Function: __glMgrDrawPixels
# Declared: Line 4103 (Source lines: 4106-4122)
# Address: 0x0da884bc - 0x0da885c4 (Size: 264 bytes, Frame: 144)
.globl __glMgrDrawPixels
.ent __glMgrDrawPixels
__glMgrDrawPixels:
    # Line 4106
    move	$t0,$a4
    move	$t3,$a1
    move	$t1,$a3
    move	$t2,$a2
    addiu	$sp,$sp,-144
    sd	$s8,48($sp)
    move	$s8,$a6
    sd	$s0,40($sp)
    move	$s0,$a0
    # Line 4111
    move	$a0,$zero
    sd	$gp,56($sp)
    # Line 4106
    lui	$at,0x17
    addiu	$at,$at,25052
    # Line 4111
    addiu	$a2,$s0,1108
    # Line 4106
    beqz	$a6,.L0da88550
    addu	$gp,$t9,$at
    # Line 4111
    addiu	$a3,$sp,0
    li	$a1,9
.L0da88504:
    addu	$v0,$a0,$a2
    addu	$v1,$a0,$a3
    addiu	$a0,$a0,4
    lw	$v0,0($v0)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da88504
    sw	$v0,0($v1)
    # Line 4112
    li	$a1,9
    move	$a0,$zero
    addiu	$a2,$s0,1108
    la	$a3,__glMgr_InternalUnpack
.L0da88530:
    addu	$a7,$a0,$a2
    addu	$v1,$a0,$a3
    addiu	$a0,$a0,4
    lw	$v1,0($v1)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da88530
    sw	$v1,0($a7)
    sd	$ra,64($sp)
.L0da88550:
    # Line 4115
    move	$a0,$t3
    move	$a1,$t2
    move	$a2,$t1
    # lw $t9, -31844($gp) # &__glMgrim_DrawPixels
    move	$a3,$t0
    sd	$ra,64($sp)
    bal __glMgrim_DrawPixels
    move	$a4,$a5
    move	$a7,$s8
    ld	$s8,48($sp)
    # Line 4119
    move	$a0,$zero
    addiu	$a2,$s0,1108
    # Line 4115
    beqz	$a7,.L0da885b4
    ld	$ra,64($sp)
    ld	$s0,40($sp)
    # Line 4119
    addiu	$a3,$sp,0
    li	$a1,9
    ld	$s8,48($sp)
.L0da88598:
    addu	$at,$a0,$a3
    addu	$v0,$a0,$a2
    addiu	$a0,$a0,4
    lw	$at,0($at)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da88598
    sw	$at,0($v0)
.L0da885b4:
    ld	$gp,56($sp)
    # Line 4122
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glMgrDrawPixels

# Function: __glMgrim_CopyPixels
# Declared: Line 4128 (Source lines: 4129-4254)
# Address: 0x0da885c4 - 0x0da88bb0 (Size: 1516 bytes, Frame: 128)
.globl __glMgrim_CopyPixels
.ent __glMgrim_CopyPixels
__glMgrim_CopyPixels:
    # Line 4142
    li	$v0,1
    # Line 4129
    addiu	$sp,$sp,-256
    sd	$s0,192($sp)
    # Line 4142
    lw	$s0,__glCurrentContext
    sd	$s2,168($sp)
    # Line 4129
    move	$s2,$a3
    sd	$s1,176($sp)
    move	$s1,$a2
    sd	$a1,160($sp)
    sd	$a0,152($sp)
    sd	$gp,184($sp)
    # Line 4142
    lw	$at,__glBeginMode
    # Line 4129
    lui	$v1,0x17
    addiu	$v1,$v1,24788
    # Line 4142
    beq	$at,$v0,.L0da889b0
    # Line 4129
    addu	$gp,$t9,$v1
    # Line 4144
    blez	$s1,.L0da88654
    nop
    blez	$s2,.L0da88654
    # Line 4151
    li	$t0,6144
    beq	$a4,$t0,.L0da88694
    li	$t1,6145
    beq	$a4,$t1,.L0da88904
    li	$at,6146
    beq	$a4,$at,.L0da8867c
    # Line 4169
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,200($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,184($sp)
    # Line 4170
    ld	$s0,192($sp)
    ld	$ra,200($sp)
    ld	$s1,176($sp)
    ld	$s2,168($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0da88654:
    # Line 4146
    bltz	$s1,.L0da889e0
    # Line 4147
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 4146
    bltz	$s2,.L0da889e0
    # Line 4147
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da88664:
    ld	$gp,184($sp)
    # Line 4148
    ld	$s0,192($sp)
    ld	$s1,176($sp)
    ld	$s2,168($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0da8867c:
    # Line 4162
    lbu	$v1,3110($s0)
    beqz	$v1,.L0da88a78
    # Line 4164
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 4162
    lbu	$t0,3198($s0)
    beqz	$t0,.L0da88a74
    sd	$ra,200($sp)
.L0da88694:
    # Line 4173
    move	$a0,$a4
    # lw $t9, -30432($gp) # &__glMgrGetVisualInfo
    addiu	$a2,$sp,36
    sd	$ra,200($sp)
    jal	__glMgrGetVisualInfo
    addiu	$a1,$sp,32
    beqz	$v0,.L0da886dc
    ld	$ra,200($sp)
    # Line 4175
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$v0
    ld	$gp,184($sp)
    # Line 4176
    ld	$s0,192($sp)
    ld	$ra,200($sp)
    ld	$s1,176($sp)
    ld	$s2,168($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0da886dc:
    lw	$v0,3092($s0)
    li	$t1,7170
    beq	$v0,$t1,.L0da88b60
    # Line 4180
    li	$at,7169
    beq	$v0,$at,.L0da88948
    # Line 4188
    nop	# was lw $t9, -30868($gp) # &__glMgrim_GetBooleanv
    addiu	$a1,$sp,40
    jal	__glMgrim_GetBooleanv
    li	$a0,2824
    lbu	$v1,40($sp)
    beqz	$v1,.L0da8897c
    ld	$ra,200($sp)
    sd	$zero,136($sp)
    sd	$zero,144($sp)
    # Line 4194
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    jal	__Mgr_ReturnMode
    lw	$a0,1044($a0)
    # Line 4195
    li	$t0,-1
    dsll	$t0,$t0,0x1f
    ori	$t0,$t0,0x8000
    and	$t0,$v0,$t0
    beqz	$t0,.L0da88994
    ld	$ra,200($sp)
.L0da88744:
    ld	$t0,152($sp)
.L0da88748:
    dsll32	$a6,$v0,0x10
    dsra32	$a6,$a6,0x10
    addu	$a6,$a6,$t0
    bltz	$a6,.L0da88aa0
.L0da88758:
    ld	$t0,152($sp)
    # Line 4204
    bltz	$t0,.L0da88ae4
.L0da88760:
    # Line 4212
    ld	$t0,160($sp)
    srl	$a6,$v0,0x10
    dsll32	$a6,$a6,0x10
    dsra32	$a6,$a6,0x10
    addu	$a6,$a6,$t0
    bltz	$a6,.L0da88b1c
.L0da88778:
    ld	$t0,160($sp)
    # Line 4221
    bltz	$t0,.L0da88b78
.L0da88780:
    # Line 4237
    la	$t1,__glMgr_DefaultPack
.L0da88784:
    # Line 4238
    li	$v0,9
    # Line 4237
    ld	$a7,0($t1)
    # Line 4238
    move	$a6,$zero
    # Line 4236
    ld	$t3,1072($s0)
    # Line 4237
    sd	$a7,1072($s0)
    # Line 4238
    addiu	$t2,$s0,1108
    # Line 4237
    ld	$a2,8($t1)
    # Line 4236
    addiu	$t8,$sp,48
    ld	$t9,1080($s0)
    # Line 4237
    sd	$a2,1080($s0)
    # Line 4236
    lw	$t0,1104($s0)
    # Line 4237
    ld	$v1,16($t1)
    # Line 4236
    ld	$at,1088($s0)
    sw	$t0,32($t8)
    # Line 4237
    sd	$v1,1088($s0)
    # Line 4236
    sd	$at,16($t8)
    # Line 4237
    ld	$v1,24($t1)
    # Line 4236
    sd	$t9,8($t8)
    ld	$a2,1096($s0)
    # Line 4237
    sd	$v1,1096($s0)
    # Line 4236
    sd	$t3,0($t8)
    # Line 4237
    lw	$t1,32($t1)
    # Line 4238
    addiu	$a7,$sp,88
    # Line 4236
    sd	$a2,24($t8)
    # Line 4237
    sw	$t1,1104($s0)
.L0da887e8:
    # Line 4238
    addu	$t0,$a6,$t2
    addu	$t1,$a6,$a7
    addiu	$a6,$a6,4
    lw	$t0,0($t0)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0da887e8
    sw	$t0,0($t1)
    # Line 4239
    li	$v0,9
    move	$a6,$zero
    addiu	$t2,$s0,1108
    la	$a7,__glMgr_DefaultUnpack
.L0da88814:
    addu	$at,$a6,$t2
    addu	$t1,$a6,$a7
    addiu	$a6,$a6,4
    lw	$t1,0($t1)
    addiu	$v0,$v0,-1
    bgtz	$v0,.L0da88814
    sw	$t1,0($at)
    # Line 4241
    # lw $t9, -31964($gp) # &__glMgrGetColorMatrixState
    jal	__glMgrGetColorMatrixState
    move	$a0,$s0
    # Line 4242
    move	$a7,$s2
    move	$a6,$s1
    ld	$a5,136($sp)
    ld	$a4,144($sp)
    ld	$a3,160($sp)
    ld	$a2,152($sp)
    li	$a1,1
    lw	$t3,36($sp)
    addiu	$a0,$s0,31676
    sd	$a0,128($sp)
    sw	$t3,12($sp)
    sw	$t3,4($sp)
    # lw $t9, -29768($gp) # &__glMgrMakePixelDesc
    lw	$t2,32($sp)
    sw	$zero,28($sp)
    jal	__glMgrMakePixelDesc
    sw	$t2,20($sp)
    beqz	$v0,.L0da889f4
    # Line 4244
    nop	# was lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$v0
    # Line 4246
    li	$a0,9
    move	$v0,$zero
    addiu	$a1,$s0,1108
    # Line 4245
    addiu	$ra,$sp,48
    lw	$v1,32($ra)
    # Line 4246
    addiu	$a2,$sp,88
    # Line 4245
    ld	$at,24($ra)
    sw	$v1,1104($s0)
    ld	$v1,16($ra)
    sd	$at,1096($s0)
    ld	$at,8($ra)
    ld	$ra,0($ra)
    sd	$v1,1088($s0)
    sd	$at,1080($s0)
    sd	$ra,1072($s0)
    ld	$ra,200($sp)
.L0da888d0:
    # Line 4246
    addu	$t0,$v0,$a2
    addu	$t1,$v0,$a1
    addiu	$v0,$v0,4
    lw	$t0,0($t0)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da888d0
    sw	$t0,0($t1)
    ld	$gp,184($sp)
    # Line 4247
    ld	$s0,192($sp)
    ld	$s1,176($sp)
    ld	$s2,168($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0da88904:
    # Line 4155
    lbu	$t1,3109($s0)
    beqz	$t1,.L0da88920
    # Line 4157
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 4155
    lbu	$at,3197($s0)
    bnez	$at,.L0da88694
    sd	$ra,200($sp)
    # Line 4157
    # lw $t9, -27320($gp) # &__glSetError
.L0da88920:
    sd	$ra,200($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,184($sp)
    # Line 4158
    ld	$s0,192($sp)
    ld	$ra,200($sp)
    ld	$s1,176($sp)
    ld	$s2,168($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0da88948:
    ld	$gp,184($sp)
    # Line 4185
    ld	$s0,192($sp)
    ld	$s1,176($sp)
    ld	$s2,168($sp)
    addiu	$sp,$sp,256
    # Line 4184
    li	$v0,1798
    # Line 4183
    lui	$t0,0x1
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    ori	$t0,$t0,0x4
    sw	$t0,0($v1)
    # Line 4185
    jr	$ra
    # Line 4184
    sw	$v0,0($v1)
.L0da8897c:
    ld	$gp,184($sp)
    # Line 4190
    ld	$s0,192($sp)
    ld	$s1,176($sp)
    ld	$s2,168($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0da88994:
    ld	$t1,152($sp)
    # Line 4195
    bltz	$t1,.L0da88744
    ld	$at,160($sp)
    bgez	$at,.L0da88784
    # Line 4237
    la	$t1,__glMgr_DefaultPack
    b	.L0da88748
    # Line 4195
    ld	$t0,152($sp)
.L0da889b0:
    # Line 4142
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,200($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,184($sp)
    ld	$s0,192($sp)
    ld	$ra,200($sp)
    ld	$s1,176($sp)
    ld	$s2,168($sp)
    jr	$ra
    addiu	$sp,$sp,256
    # Line 4147
    # lw $t9, -27320($gp) # &__glSetError
.L0da889e0:
    sd	$ra,200($sp)
    jal	__glSetError
    li	$a0,1281
    b	.L0da88664
    ld	$ra,200($sp)
.L0da889f4:
    # Line 4250
    # lw $t9, -31864($gp) # &__glMgrCopyPixels
    bal __glMgrCopyPixels
    ld	$a0,128($sp)
    # Line 4253
    li	$a0,9
    move	$v0,$zero
    addiu	$a1,$s0,1108
    addiu	$a2,$sp,88
    # Line 4252
    addiu	$v1,$sp,48
    lw	$t1,32($v1)
    ld	$ra,200($sp)
    ld	$t0,24($v1)
    sw	$t1,1104($s0)
    ld	$t1,16($v1)
    sd	$t0,1096($s0)
    ld	$t0,8($v1)
    ld	$v1,0($v1)
    sd	$t1,1088($s0)
    sd	$t0,1080($s0)
    sd	$v1,1072($s0)
.L0da88a40:
    # Line 4253
    addu	$at,$v0,$a2
    addu	$v1,$v0,$a1
    addiu	$v0,$v0,4
    lw	$at,0($at)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da88a40
    sw	$at,0($v1)
    ld	$gp,184($sp)
    # Line 4254
    ld	$s0,192($sp)
    ld	$s1,176($sp)
    ld	$s2,168($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0da88a74:
    # Line 4164
    # lw $t9, -27320($gp) # &__glSetError
.L0da88a78:
    sd	$ra,200($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,184($sp)
    # Line 4165
    ld	$s0,192($sp)
    ld	$ra,200($sp)
    ld	$s1,176($sp)
    ld	$s2,168($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0da88aa0:
    # Line 4199
    negu	$t0,$a6
    dsll32	$t1,$t0,0x10
    dsra32	$t1,$t1,0x10
    sd	$t1,144($sp)
    # Line 4201
    ld	$v1,152($sp)
    # Line 4200
    dsll32	$t0,$t0,0x10
    dsra32	$t0,$t0,0x10
    # Line 4201
    addu	$v1,$t0,$v1
    # Line 4200
    subu	$s1,$s1,$t0
    # Line 4202
    bgtz	$s1,.L0da88758
    sd	$v1,152($sp)
    ld	$gp,184($sp)
    # Line 4204
    ld	$s0,192($sp)
    ld	$s1,176($sp)
    ld	$s2,168($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0da88ae4:
    ld	$at,152($sp)
    # Line 4208
    ld	$v1,144($sp)
    sd	$zero,152($sp)
    # Line 4209
    addu	$s1,$at,$s1
    # Line 4208
    subu	$v1,$v1,$at
    # Line 4210
    move	$at,$zero
    bgtz	$s1,.L0da88760
    sd	$v1,144($sp)
    ld	$gp,184($sp)
    # Line 4212
    ld	$s0,192($sp)
    ld	$s1,176($sp)
    ld	$s2,168($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0da88b1c:
    # Line 4216
    negu	$t1,$a6
    dsll32	$at,$t1,0x10
    dsra32	$at,$at,0x10
    sd	$at,136($sp)
    # Line 4218
    ld	$t0,160($sp)
    # Line 4217
    dsll32	$t1,$t1,0x10
    dsra32	$t1,$t1,0x10
    # Line 4218
    addu	$t0,$t1,$t0
    # Line 4217
    subu	$s2,$s2,$t1
    # Line 4219
    bgtz	$s2,.L0da88778
    sd	$t0,160($sp)
    ld	$gp,184($sp)
    # Line 4221
    ld	$s0,192($sp)
    ld	$s1,176($sp)
    ld	$s2,168($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0da88b60:
    ld	$gp,184($sp)
    # Line 4180
    ld	$s0,192($sp)
    ld	$s1,176($sp)
    ld	$s2,168($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0da88b78:
    ld	$v1,160($sp)
    # Line 4225
    ld	$t0,136($sp)
    sd	$zero,160($sp)
    # Line 4226
    addu	$s2,$v1,$s2
    # Line 4225
    subu	$t0,$t0,$v1
    # Line 4227
    move	$v1,$zero
    bgtz	$s2,.L0da88780
    sd	$t0,136($sp)
    ld	$gp,184($sp)
    # Line 4229
    ld	$s0,192($sp)
    ld	$s1,176($sp)
    ld	$s2,168($sp)
    jr	$ra
    addiu	$sp,$sp,256
.end __glMgrim_CopyPixels

# Function: __glMgrDoCopyPixels
# Declared: Line 4258 (Source lines: 4259-4262)
# Address: 0x0da88bb0 - 0x0da88bf4 (Size: 68 bytes, Frame: 192)
.globl __glMgrDoCopyPixels
.ent __glMgrDoCopyPixels
__glMgrDoCopyPixels:
    # Line 4259
    move	$a0,$a1
    move	$a1,$a2
    move	$a2,$a3
    addiu	$sp,$sp,-64
    sd	$gp,8($sp)
    lui	$at,0x17
    addiu	$at,$at,23272
    addu	$gp,$t9,$at
    # Line 4261
    # lw $t9, -31836($gp) # &__glMgrim_CopyPixels
    # Line 4259
    move	$a3,$a4
    sd	$ra,0($sp)
    # Line 4261
    bal __glMgrim_CopyPixels
    # Line 4259
    move	$a4,$a5
    # Line 4262
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrDoCopyPixels

# Function: __glMgrim_PixelTransferf
# Declared: Line 4267 (Source lines: 4268-4547)
# Address: 0x0da88bf4 - 0x0da89c00 (Size: 4108 bytes, Frame: 32)
.globl __glMgrim_PixelTransferf
.ent __glMgrim_PixelTransferf
__glMgrim_PixelTransferf:
    # Line 4272
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 4268
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 4272
    lw	$at,__glBeginMode
    # Line 4268
    lui	$v1,0x17
    addiu	$v1,$v1,23204
    # Line 4272
    beq	$at,$v0,.L0da895ac
    # Line 4268
    addu	$gp,$t9,$v1
    # Line 4272
    li	$a3,0x801d
    sltu	$a1,$a0,$a3
    bnez	$a1,.L0da88ccc
    # Line 4277
    sltu	$at,$a3,$a0
    beqz	$at,.L0da88da4
    li	$a3,0x80b5
    sltu	$v0,$a0,$a3
    bnez	$v0,.L0da88e38
    sltu	$v1,$a3,$a0
    beqz	$v1,.L0da891a0
    li	$a3,0x80b9
    sltu	$a1,$a0,$a3
    bnez	$a1,.L0da89224
    sltu	$at,$a3,$a0
    beqz	$at,.L0da89720
    li	$a3,0x80bb
    sltu	$v0,$a0,$a3
    bnez	$v0,.L0da899b8
    sltu	$v1,$a3,$a0
    bnez	$v1,.L0da890bc
    # Line 4463
    mtc1	$zero,$f4
    c.eq.s	$f13,$f4
    lui	$a0,0x1
    addu	$a0,$a2,$a0
    bc1f	.L0da89a44
    swc1	$f13,-32136($a0)
    lwc1	$f0,-32148($a0)
    c.eq.s	$f0,$f4
    nop
    bc1fl	.L0da89a48
    # Line 4468
    lw	$a1,32100($a2)
    # Line 4464
    lwc1	$f1,-32144($a0)
    c.eq.s	$f1,$f4
    nop
    bc1fl	.L0da89a48
    # Line 4468
    lw	$a1,32100($a2)
    # Line 4464
    lwc1	$f2,-32140($a0)
    c.eq.s	$f2,$f4
    nop
    bc1fl	.L0da89a48
    # Line 4468
    lw	$a1,32100($a2)
    # Line 4466
    lw	$a1,32100($a2)
    ori	$a1,$a1,0x200
    b	.L0da89a54
    sw	$a1,32100($a2)
.L0da88ccc:
    # Line 4277
    sltiu	$at,$a0,3353
    bnez	$at,.L0da88d6c
    sltiu	$v0,$a0,3354
    bnez	$v0,.L0da88f0c
    sltiu	$v1,$a0,3357
    bnez	$v1,.L0da88f88
    sltiu	$a1,$a0,3358
    bnez	$a1,.L0da89400
    sltiu	$at,$a0,3359
    bnez	$at,.L0da89610
    sltiu	$v0,$a0,3360
    bnez	$v0,.L0da89a64
    li	$v1,0x801c
    bne	$a0,$v1,.L0da890bc
    # Line 4472
    lwc1	$f4,_lit_3f800000
    c.eq.s	$f13,$f4
    lui	$a0,0x1
    addu	$a0,$a2,$a0
    bc1f	.L0da89bdc
    swc1	$f13,-31892($a0)
    lwc1	$f3,-31888($a0)
    c.eq.s	$f3,$f4
    nop
    bc1fl	.L0da89be0
    # Line 4477
    lw	$at,32100($a2)
    # Line 4473
    lwc1	$f0,-31884($a0)
    c.eq.s	$f0,$f4
    nop
    bc1fl	.L0da89be0
    # Line 4477
    lw	$at,32100($a2)
    # Line 4473
    lwc1	$f1,-31880($a0)
    c.eq.s	$f1,$f4
    nop
    bc1fl	.L0da89be0
    # Line 4477
    lw	$at,32100($a2)
    # Line 4475
    lw	$a1,32100($a2)
    lui	$at,0x8
    or	$a1,$a1,$at
    b	.L0da89bf0
    sw	$a1,32100($a2)
.L0da88d6c:
    # Line 4277
    sltiu	$v0,$a0,3347
    bnez	$v0,.L0da88ecc
    sltiu	$v1,$a0,3348
    beqz	$v1,.L0da890dc
    # Line 4371
    mtc1	$zero,$f4
    c.lt.s	$f4,$f13
    nop
    bc1f	.L0da89154
    lwc1	$f5,3280($a2)
    # Line 4372
    add.s	$f2,$f5,$f13
    trunc.w.s	$f2,$f2
    mfc1	$a1,$f2
    b	.L0da89168
    sw	$a1,732($a2)
.L0da88da4:
    # Line 4481
    lwc1	$f4,_lit_3f800000
    c.eq.s	$f13,$f4
    lui	$a0,0x1
    addu	$a0,$a2,$a0
    bc1f	.L0da88e0c
    swc1	$f13,-31888($a0)
    lwc1	$f3,-31892($a0)
    c.eq.s	$f3,$f4
    nop
    bc1f	.L0da88e10
    # Line 4486
    lui	$v1,0x8
    # Line 4482
    lwc1	$f0,-31884($a0)
    c.eq.s	$f0,$f4
    nop
    bc1f	.L0da88e10
    # Line 4486
    lui	$v1,0x8
    # Line 4482
    lwc1	$f1,-31880($a0)
    c.eq.s	$f1,$f4
    nop
    bc1f	.L0da88e10
    # Line 4486
    lui	$v1,0x8
    # Line 4484
    lw	$a1,32100($a2)
    lui	$at,0x8
    or	$a1,$a1,$at
    b	.L0da88e20
    sw	$a1,32100($a2)
.L0da88e0c:
    # Line 4486
    lui	$v1,0x8
.L0da88e10:
    lw	$v0,32100($a2)
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    sw	$v0,32100($a2)
.L0da88e20:
    # Line 4487
    lw	$a1,32096($a2)
    ori	$a1,$a1,0x400
    sw	$a1,32096($a2)
.L0da88e2c:
    ld	$gp,0($sp)
    # Line 4547
    jr	$ra
    addiu	$sp,$sp,32
.L0da88e38:
    # Line 4277
    li	$a3,0x8021
    sltu	$at,$a0,$a3
    bnez	$at,.L0da89000
    sltu	$v0,$a3,$a0
    beqz	$v0,.L0da89480
    li	$a3,0x8023
    sltu	$v1,$a0,$a3
    bnez	$v1,.L0da89624
    sltu	$a1,$a3,$a0
    beqz	$a1,.L0da89ad0
    li	$at,0x80b4
    bne	$a0,$at,.L0da890bc
    # Line 4400
    lwc1	$f4,_lit_3f800000
    c.eq.s	$f13,$f4
    lui	$a0,0x1
    addu	$a0,$a2,$a0
    bc1f	.L0da89b7c
    swc1	$f13,-32164($a0)
    lwc1	$f2,-32160($a0)
    c.eq.s	$f2,$f4
    nop
    bc1fl	.L0da89b80
    # Line 4405
    lw	$a1,32100($a2)
    # Line 4401
    lwc1	$f3,-32156($a0)
    c.eq.s	$f3,$f4
    nop
    bc1fl	.L0da89b80
    # Line 4405
    lw	$a1,32100($a2)
    # Line 4401
    lwc1	$f0,-32152($a0)
    c.eq.s	$f0,$f4
    nop
    bc1fl	.L0da89b80
    # Line 4405
    lw	$a1,32100($a2)
    # Line 4403
    lw	$a1,32100($a2)
    ori	$a1,$a1,0x400
    b	.L0da89b8c
    sw	$a1,32100($a2)
.L0da88ecc:
    # Line 4277
    sltiu	$at,$a0,3345
    bnez	$at,.L0da89084
    sltiu	$v0,$a0,3346
    bnez	$v0,.L0da8950c
    li	$v1,3346
    bne	$a0,$v1,.L0da890bc
    # Line 4358
    mtc1	$zero,$f4
    c.lt.s	$f4,$f13
    nop
    bc1f	.L0da89560
    lwc1	$f5,3280($a2)
    # Line 4359
    add.s	$f1,$f5,$f13
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    b	.L0da89574
    sw	$a1,728($a2)
.L0da88f0c:
    # Line 4327
    mtc1	$zero,$f4
    c.eq.s	$f13,$f4
    # Line 4333
    lw	$a1,32096($a2)
    # Line 4327
    swc1	$f13,640($a2)
    bc1f	.L0da88f70
    # Line 4333
    ori	$a1,$a1,0x1
    # Line 4327
    lwc1	$f2,636($a2)
    c.eq.s	$f2,$f4
    nop
    bc1f	.L0da88f74
    # Line 4332
    li	$v1,-2
    # Line 4328
    lwc1	$f3,644($a2)
    c.eq.s	$f3,$f4
    nop
    bc1f	.L0da88f74
    # Line 4332
    li	$v1,-2
    # Line 4328
    lwc1	$f0,648($a2)
    c.eq.s	$f0,$f4
    nop
    bc1f	.L0da88f74
    # Line 4332
    li	$v1,-2
    # Line 4330
    lw	$at,32100($a2)
    ori	$at,$at,0x1
    b	.L0da88f80
    sw	$at,32100($a2)
.L0da88f70:
    # Line 4332
    li	$v1,-2
.L0da88f74:
    lw	$v0,32100($a2)
    and	$v0,$v0,$v1
    sw	$v0,32100($a2)
.L0da88f80:
    # Line 4334
    b	.L0da88e2c
    # Line 4333
    sw	$a1,32096($a2)
.L0da88f88:
    # Line 4277
    sltiu	$at,$a0,3355
    bnez	$at,.L0da892c0
    sltiu	$v0,$a0,3356
    bnez	$v0,.L0da897a4
    li	$v1,3356
    bne	$a0,$v1,.L0da890bc
    # Line 4306
    lwc1	$f4,_lit_3f800000
    c.eq.s	$f13,$f4
    nop
    bc1f	.L0da89930
    swc1	$f13,628($a2)
    lwc1	$f1,616($a2)
    c.eq.s	$f1,$f4
    nop
    bc1fl	.L0da89934
    # Line 4311
    lw	$at,32100($a2)
    # Line 4307
    lwc1	$f2,620($a2)
    c.eq.s	$f2,$f4
    nop
    bc1fl	.L0da89934
    # Line 4311
    lw	$at,32100($a2)
    # Line 4307
    lwc1	$f3,624($a2)
    c.eq.s	$f3,$f4
    nop
    bc1fl	.L0da89934
    # Line 4311
    lw	$at,32100($a2)
    # Line 4309
    lw	$a1,32100($a2)
    ori	$a1,$a1,0x2
    b	.L0da89940
    sw	$a1,32100($a2)
.L0da89000:
    # Line 4277
    li	$a3,0x801f
    sltu	$at,$a0,$a3
    bnez	$at,.L0da89328
    sltu	$v0,$a3,$a0
    beqz	$v0,.L0da89824
    li	$v1,0x8020
    bne	$a0,$v1,.L0da890bc
    # Line 4508
    mtc1	$zero,$f4
    c.eq.s	$f13,$f4
    lui	$a0,0x1
    addu	$a0,$a2,$a0
    bc1f	.L0da89970
    swc1	$f13,-31876($a0)
    lwc1	$f0,-31872($a0)
    c.eq.s	$f0,$f4
    nop
    bc1fl	.L0da89974
    # Line 4513
    lw	$v1,32100($a2)
    # Line 4509
    lwc1	$f1,-31868($a0)
    c.eq.s	$f1,$f4
    nop
    bc1fl	.L0da89974
    # Line 4513
    lw	$v1,32100($a2)
    # Line 4509
    lwc1	$f2,-31864($a0)
    c.eq.s	$f2,$f4
    nop
    bc1fl	.L0da89974
    # Line 4513
    lw	$v1,32100($a2)
    # Line 4511
    lw	$a1,32100($a2)
    lui	$at,0x4
    or	$a1,$a1,$at
    b	.L0da89984
    sw	$a1,32100($a2)
.L0da89084:
    # Line 4277
    li	$v0,3344
    bne	$a0,$v0,.L0da890bc
    # Line 4383
    mtc1	$zero,$f3
    c.eq.s	$f13,$f3
    li	$v1,1
    bc1tl	.L0da890a0
    move	$v1,$zero
.L0da890a0:
    c.eq.s	$f13,$f3
    lw	$a0,32100($a2)
    bc1t	.L0da892a4
    sb	$v1,736($a2)
    # Line 4385
    ori	$a1,$a0,0x10
    b	.L0da892b0
    sw	$a1,32100($a2)
.L0da890bc:
    # Line 4544
    # lw $t9, -27320($gp) # &__glSetError
.L0da890c0:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 4545
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da890dc:
    # Line 4277
    sltiu	$at,$a0,3349
    bnez	$at,.L0da89398
    sltiu	$v0,$a0,3350
    bnez	$v0,.L0da898b0
    li	$v1,3352
    bne	$a0,$v1,.L0da890bc
    # Line 4288
    lwc1	$f4,_lit_3f800000
    c.eq.s	$f13,$f4
    nop
    bc1f	.L0da89a24
    swc1	$f13,620($a2)
    lwc1	$f0,616($a2)
    c.eq.s	$f0,$f4
    nop
    bc1fl	.L0da89a28
    # Line 4293
    lw	$at,32100($a2)
    # Line 4289
    lwc1	$f1,624($a2)
    c.eq.s	$f1,$f4
    nop
    bc1fl	.L0da89a28
    # Line 4293
    lw	$at,32100($a2)
    # Line 4289
    lwc1	$f2,628($a2)
    c.eq.s	$f2,$f4
    nop
    bc1fl	.L0da89a28
    # Line 4293
    lw	$at,32100($a2)
    # Line 4291
    lw	$a1,32100($a2)
    ori	$a1,$a1,0x2
    b	.L0da89a34
    sw	$a1,32100($a2)
.L0da89154:
    # Line 4374
    sub.s	$f3,$f13,$f5
    trunc.w.s	$f3,$f3
    mfc1	$at,$f3
    nop
    sw	$at,732($a2)
.L0da89168:
    c.eq.s	$f13,$f4
    nop
    bc1f	.L0da89184
    lw	$a0,32100($a2)
    # Line 4377
    ori	$v0,$a0,0x4
    b	.L0da89190
    sw	$v0,32100($a2)
.L0da89184:
    # Line 4379
    li	$v1,-5
    and	$v1,$a0,$v1
    sw	$v1,32100($a2)
.L0da89190:
    # Line 4380
    lw	$a1,32096($a2)
    ori	$a1,$a1,0x2
    # Line 4381
    b	.L0da88e2c
    # Line 4380
    sw	$a1,32096($a2)
.L0da891a0:
    # Line 4409
    lwc1	$f4,_lit_3f800000
    c.eq.s	$f13,$f4
    lui	$a0,0x1
    addu	$a0,$a2,$a0
    bc1f	.L0da89204
    swc1	$f13,-32160($a0)
    lwc1	$f0,-32164($a0)
    c.eq.s	$f0,$f4
    nop
    bc1fl	.L0da89208
    # Line 4414
    lw	$at,32100($a2)
    # Line 4410
    lwc1	$f1,-32156($a0)
    c.eq.s	$f1,$f4
    nop
    bc1fl	.L0da89208
    # Line 4414
    lw	$at,32100($a2)
    # Line 4410
    lwc1	$f2,-32152($a0)
    c.eq.s	$f2,$f4
    nop
    bc1fl	.L0da89208
    # Line 4414
    lw	$at,32100($a2)
    # Line 4412
    lw	$a1,32100($a2)
    ori	$a1,$a1,0x400
    b	.L0da89214
    sw	$a1,32100($a2)
.L0da89204:
    # Line 4414
    lw	$at,32100($a2)
.L0da89208:
    li	$v0,-1025
    and	$at,$at,$v0
    sw	$at,32100($a2)
.L0da89214:
    # Line 4415
    lw	$v1,32096($a2)
    ori	$v1,$v1,0x200
    # Line 4416
    b	.L0da88e2c
    # Line 4415
    sw	$v1,32096($a2)
.L0da89224:
    # Line 4277
    li	$a3,0x80b7
    sltu	$a1,$a0,$a3
    bnez	$a1,.L0da89694
    sltu	$at,$a3,$a0
    beqz	$at,.L0da89a6c
    li	$v0,0x80b8
    bne	$a0,$v0,.L0da890bc
    # Line 4436
    mtc1	$zero,$f4
    c.eq.s	$f13,$f4
    lui	$a0,0x1
    addu	$a0,$a2,$a0
    bc1f	.L0da89b9c
    swc1	$f13,-32148($a0)
    lwc1	$f3,-32144($a0)
    c.eq.s	$f3,$f4
    nop
    bc1fl	.L0da89ba0
    # Line 4441
    lw	$v1,32100($a2)
    # Line 4437
    lwc1	$f0,-32140($a0)
    c.eq.s	$f0,$f4
    nop
    bc1fl	.L0da89ba0
    # Line 4441
    lw	$v1,32100($a2)
    # Line 4437
    lwc1	$f1,-32136($a0)
    c.eq.s	$f1,$f4
    nop
    bc1fl	.L0da89ba0
    # Line 4441
    lw	$v1,32100($a2)
    # Line 4439
    lw	$a1,32100($a2)
    ori	$a1,$a1,0x200
    b	.L0da89bac
    sw	$a1,32100($a2)
.L0da892a4:
    # Line 4387
    li	$at,-17
    and	$at,$a0,$at
    sw	$at,32100($a2)
.L0da892b0:
    # Line 4388
    lw	$v0,32096($a2)
    ori	$v0,$v0,0x28
    # Line 4390
    b	.L0da88e2c
    # Line 4388
    sw	$v0,32096($a2)
.L0da892c0:
    # Line 4277
    li	$v1,3354
    bne	$a0,$v1,.L0da890bc
    # Line 4297
    lwc1	$f4,_lit_3f800000
    c.eq.s	$f13,$f4
    nop
    bc1f	.L0da895cc
    swc1	$f13,624($a2)
    lwc1	$f2,616($a2)
    c.eq.s	$f2,$f4
    nop
    bc1fl	.L0da895d0
    # Line 4302
    lw	$at,32100($a2)
    # Line 4298
    lwc1	$f3,620($a2)
    c.eq.s	$f3,$f4
    nop
    bc1fl	.L0da895d0
    # Line 4302
    lw	$at,32100($a2)
    # Line 4298
    lwc1	$f0,628($a2)
    c.eq.s	$f0,$f4
    nop
    bc1fl	.L0da895d0
    # Line 4302
    lw	$at,32100($a2)
    # Line 4300
    lw	$a1,32100($a2)
    ori	$a1,$a1,0x2
    b	.L0da895dc
    sw	$a1,32100($a2)
.L0da89328:
    # Line 4277
    li	$at,0x801e
    bne	$a0,$at,.L0da890bc
    # Line 4490
    lwc1	$f4,_lit_3f800000
    c.eq.s	$f13,$f4
    lui	$a0,0x1
    addu	$a0,$a2,$a0
    bc1f	.L0da895ec
    swc1	$f13,-31884($a0)
    lwc1	$f1,-31892($a0)
    c.eq.s	$f1,$f4
    nop
    bc1fl	.L0da895f0
    # Line 4495
    lw	$a1,32100($a2)
    # Line 4491
    lwc1	$f2,-31888($a0)
    c.eq.s	$f2,$f4
    nop
    bc1fl	.L0da895f0
    # Line 4495
    lw	$a1,32100($a2)
    # Line 4491
    lwc1	$f3,-31880($a0)
    c.eq.s	$f3,$f4
    nop
    bc1fl	.L0da895f0
    # Line 4495
    lw	$a1,32100($a2)
    # Line 4493
    lw	$a1,32100($a2)
    lui	$at,0x8
    or	$a1,$a1,$at
    b	.L0da89600
    sw	$a1,32100($a2)
.L0da89398:
    # Line 4277
    li	$v0,3348
    bne	$a0,$v0,.L0da890bc
    # Line 4279
    lwc1	$f4,_lit_3f800000
    c.eq.s	$f13,$f4
    nop
    bc1f	.L0da89700
    swc1	$f13,616($a2)
    lwc1	$f0,620($a2)
    c.eq.s	$f0,$f4
    nop
    bc1fl	.L0da89704
    # Line 4284
    lw	$at,32100($a2)
    # Line 4280
    lwc1	$f1,624($a2)
    c.eq.s	$f1,$f4
    nop
    bc1fl	.L0da89704
    # Line 4284
    lw	$at,32100($a2)
    # Line 4280
    lwc1	$f2,628($a2)
    c.eq.s	$f2,$f4
    nop
    bc1fl	.L0da89704
    # Line 4284
    lw	$at,32100($a2)
    # Line 4282
    lw	$v1,32100($a2)
    ori	$v1,$v1,0x2
    b	.L0da89710
    sw	$v1,32100($a2)
.L0da89400:
    # Line 4345
    mtc1	$zero,$f4
    c.eq.s	$f13,$f4
    nop
    bc1f	.L0da89460
    swc1	$f13,648($a2)
    lwc1	$f3,636($a2)
    c.eq.s	$f3,$f4
    nop
    bc1fl	.L0da89464
    # Line 4350
    lw	$at,32100($a2)
    # Line 4346
    lwc1	$f0,640($a2)
    c.eq.s	$f0,$f4
    nop
    bc1fl	.L0da89464
    # Line 4350
    lw	$at,32100($a2)
    # Line 4346
    lwc1	$f1,644($a2)
    c.eq.s	$f1,$f4
    nop
    bc1fl	.L0da89464
    # Line 4350
    lw	$at,32100($a2)
    # Line 4348
    lw	$a1,32100($a2)
    ori	$a1,$a1,0x1
    b	.L0da89470
    sw	$a1,32100($a2)
.L0da89460:
    # Line 4350
    lw	$at,32100($a2)
.L0da89464:
    li	$v0,-2
    and	$at,$at,$v0
    sw	$at,32100($a2)
.L0da89470:
    # Line 4351
    lw	$v1,32096($a2)
    ori	$v1,$v1,0x1
    # Line 4352
    b	.L0da88e2c
    # Line 4351
    sw	$v1,32096($a2)
.L0da89480:
    # Line 4517
    mtc1	$zero,$f4
    c.eq.s	$f13,$f4
    lui	$a0,0x1
    addu	$a0,$a2,$a0
    bc1f	.L0da894e8
    swc1	$f13,-31872($a0)
    lwc1	$f2,-31876($a0)
    c.eq.s	$f2,$f4
    nop
    bc1fl	.L0da894ec
    # Line 4522
    lw	$v0,32100($a2)
    # Line 4518
    lwc1	$f3,-31868($a0)
    c.eq.s	$f3,$f4
    nop
    bc1fl	.L0da894ec
    # Line 4522
    lw	$v0,32100($a2)
    # Line 4518
    lwc1	$f0,-31864($a0)
    c.eq.s	$f0,$f4
    nop
    bc1fl	.L0da894ec
    # Line 4522
    lw	$v0,32100($a2)
    # Line 4520
    lw	$a1,32100($a2)
    lui	$at,0x4
    or	$a1,$a1,$at
    b	.L0da894fc
    sw	$a1,32100($a2)
.L0da894e8:
    # Line 4522
    lw	$v0,32100($a2)
.L0da894ec:
    lui	$v1,0x4
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    sw	$v0,32100($a2)
.L0da894fc:
    # Line 4523
    lw	$a1,32096($a2)
    ori	$a1,$a1,0x400
    # Line 4524
    b	.L0da88e2c
    # Line 4523
    sw	$a1,32096($a2)
.L0da8950c:
    # Line 4392
    mtc1	$zero,$f1
    c.eq.s	$f13,$f1
    li	$at,1
    bc1tl	.L0da89520
    move	$at,$zero
.L0da89520:
    c.eq.s	$f13,$f1
    lw	$a0,32100($a2)
    bc1t	.L0da89540
    sb	$at,737($a2)
    # Line 4394
    lui	$v0,0x20
    or	$v0,$a0,$v0
    b	.L0da89550
    sw	$v0,32100($a2)
.L0da89540:
    # Line 4396
    lui	$v1,0x20
    nor	$v1,$v1,$zero
    and	$v1,$a0,$v1
    sw	$v1,32100($a2)
.L0da89550:
    # Line 4397
    lw	$a1,32096($a2)
    ori	$a1,$a1,0x4
    # Line 4398
    b	.L0da88e2c
    # Line 4397
    sw	$a1,32096($a2)
.L0da89560:
    # Line 4361
    sub.s	$f2,$f13,$f5
    trunc.w.s	$f2,$f2
    mfc1	$at,$f2
    nop
    sw	$at,728($a2)
.L0da89574:
    c.eq.s	$f13,$f4
    nop
    bc1f	.L0da89590
    lw	$a0,32100($a2)
    # Line 4364
    ori	$v0,$a0,0x8
    b	.L0da8959c
    sw	$v0,32100($a2)
.L0da89590:
    # Line 4366
    li	$v1,-9
    and	$v1,$a0,$v1
    sw	$v1,32100($a2)
.L0da8959c:
    # Line 4367
    lw	$a1,32096($a2)
    ori	$a1,$a1,0x2
    # Line 4368
    b	.L0da88e2c
    # Line 4367
    sw	$a1,32096($a2)
.L0da895ac:
    # Line 4272
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da895cc:
    # Line 4302
    lw	$at,32100($a2)
.L0da895d0:
    li	$v0,-3
    and	$at,$at,$v0
    sw	$at,32100($a2)
.L0da895dc:
    # Line 4303
    lw	$v1,32096($a2)
    ori	$v1,$v1,0x1
    # Line 4304
    b	.L0da88e2c
    # Line 4303
    sw	$v1,32096($a2)
.L0da895ec:
    # Line 4495
    lw	$a1,32100($a2)
.L0da895f0:
    lui	$at,0x8
    nor	$at,$at,$zero
    and	$a1,$a1,$at
    sw	$a1,32100($a2)
.L0da89600:
    # Line 4496
    lw	$v0,32096($a2)
    ori	$v0,$v0,0x400
    # Line 4497
    b	.L0da88e2c
    # Line 4496
    sw	$v0,32096($a2)
.L0da89610:
    # Line 4277
    li	$v1,3358
    bne	$a0,$v1,.L0da890c0
    # Line 4544
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 4316
    b	.L0da88e2c
    # Line 4315
    swc1	$f13,632($a2)
.L0da89624:
    # Line 4277
    li	$a1,0x8022
    bne	$a0,$a1,.L0da890bc
    # Line 4526
    mtc1	$zero,$f4
    c.eq.s	$f13,$f4
    lui	$a0,0x1
    addu	$a0,$a2,$a0
    bc1f	.L0da89994
    swc1	$f13,-31868($a0)
    lwc1	$f3,-31876($a0)
    c.eq.s	$f3,$f4
    nop
    bc1fl	.L0da89998
    # Line 4531
    lw	$v0,32100($a2)
    # Line 4527
    lwc1	$f0,-31872($a0)
    c.eq.s	$f0,$f4
    nop
    bc1fl	.L0da89998
    # Line 4531
    lw	$v0,32100($a2)
    # Line 4527
    lwc1	$f1,-31864($a0)
    c.eq.s	$f1,$f4
    nop
    bc1fl	.L0da89998
    # Line 4531
    lw	$v0,32100($a2)
    # Line 4529
    lw	$a1,32100($a2)
    lui	$at,0x4
    or	$a1,$a1,$at
    b	.L0da899a8
    sw	$a1,32100($a2)
.L0da89694:
    # Line 4277
    li	$v0,0x80b6
    bne	$a0,$v0,.L0da890bc
    # Line 4418
    lwc1	$f4,_lit_3f800000
    c.eq.s	$f13,$f4
    lui	$a0,0x1
    addu	$a0,$a2,$a0
    bc1f	.L0da89950
    swc1	$f13,-32156($a0)
    lwc1	$f2,-32164($a0)
    c.eq.s	$f2,$f4
    nop
    bc1fl	.L0da89954
    # Line 4423
    lw	$a1,32100($a2)
    # Line 4419
    lwc1	$f3,-32160($a0)
    c.eq.s	$f3,$f4
    nop
    bc1fl	.L0da89954
    # Line 4423
    lw	$a1,32100($a2)
    # Line 4419
    lwc1	$f0,-32152($a0)
    c.eq.s	$f0,$f4
    nop
    bc1fl	.L0da89954
    # Line 4423
    lw	$a1,32100($a2)
    # Line 4421
    lw	$a1,32100($a2)
    ori	$a1,$a1,0x400
    b	.L0da89960
    sw	$a1,32100($a2)
.L0da89700:
    # Line 4284
    lw	$at,32100($a2)
.L0da89704:
    li	$v0,-3
    and	$at,$at,$v0
    sw	$at,32100($a2)
.L0da89710:
    # Line 4285
    lw	$v1,32096($a2)
    ori	$v1,$v1,0x1
    # Line 4286
    b	.L0da88e2c
    # Line 4285
    sw	$v1,32096($a2)
.L0da89720:
    # Line 4445
    mtc1	$zero,$f4
    c.eq.s	$f13,$f4
    lui	$a0,0x1
    addu	$a0,$a2,$a0
    bc1f	.L0da89784
    swc1	$f13,-32144($a0)
    lwc1	$f1,-32148($a0)
    c.eq.s	$f1,$f4
    nop
    bc1fl	.L0da89788
    # Line 4450
    lw	$at,32100($a2)
    # Line 4446
    lwc1	$f2,-32140($a0)
    c.eq.s	$f2,$f4
    nop
    bc1fl	.L0da89788
    # Line 4450
    lw	$at,32100($a2)
    # Line 4446
    lwc1	$f3,-32136($a0)
    c.eq.s	$f3,$f4
    nop
    bc1fl	.L0da89788
    # Line 4450
    lw	$at,32100($a2)
    # Line 4448
    lw	$a1,32100($a2)
    ori	$a1,$a1,0x200
    b	.L0da89794
    sw	$a1,32100($a2)
.L0da89784:
    # Line 4450
    lw	$at,32100($a2)
.L0da89788:
    li	$v0,-513
    and	$at,$at,$v0
    sw	$at,32100($a2)
.L0da89794:
    # Line 4451
    lw	$v1,32096($a2)
    ori	$v1,$v1,0x200
    # Line 4452
    b	.L0da88e2c
    # Line 4451
    sw	$v1,32096($a2)
.L0da897a4:
    # Line 4336
    mtc1	$zero,$f4
    c.eq.s	$f13,$f4
    nop
    bc1f	.L0da89804
    swc1	$f13,644($a2)
    lwc1	$f0,636($a2)
    c.eq.s	$f0,$f4
    nop
    bc1fl	.L0da89808
    # Line 4341
    lw	$at,32100($a2)
    # Line 4337
    lwc1	$f1,640($a2)
    c.eq.s	$f1,$f4
    nop
    bc1fl	.L0da89808
    # Line 4341
    lw	$at,32100($a2)
    # Line 4337
    lwc1	$f2,648($a2)
    c.eq.s	$f2,$f4
    nop
    bc1fl	.L0da89808
    # Line 4341
    lw	$at,32100($a2)
    # Line 4339
    lw	$a1,32100($a2)
    ori	$a1,$a1,0x1
    b	.L0da89814
    sw	$a1,32100($a2)
.L0da89804:
    # Line 4341
    lw	$at,32100($a2)
.L0da89808:
    li	$v0,-2
    and	$at,$at,$v0
    sw	$at,32100($a2)
.L0da89814:
    # Line 4342
    lw	$v1,32096($a2)
    ori	$v1,$v1,0x1
    # Line 4343
    b	.L0da88e2c
    # Line 4342
    sw	$v1,32096($a2)
.L0da89824:
    # Line 4499
    lwc1	$f4,_lit_3f800000
    c.eq.s	$f13,$f4
    lui	$a0,0x1
    addu	$a0,$a2,$a0
    bc1f	.L0da8988c
    swc1	$f13,-31880($a0)
    lwc1	$f3,-31892($a0)
    c.eq.s	$f3,$f4
    nop
    bc1fl	.L0da89890
    # Line 4504
    lw	$v0,32100($a2)
    # Line 4500
    lwc1	$f0,-31888($a0)
    c.eq.s	$f0,$f4
    nop
    bc1fl	.L0da89890
    # Line 4504
    lw	$v0,32100($a2)
    # Line 4500
    lwc1	$f1,-31884($a0)
    c.eq.s	$f1,$f4
    nop
    bc1fl	.L0da89890
    # Line 4504
    lw	$v0,32100($a2)
    # Line 4502
    lw	$a1,32100($a2)
    lui	$at,0x8
    or	$a1,$a1,$at
    b	.L0da898a0
    sw	$a1,32100($a2)
.L0da8988c:
    # Line 4504
    lw	$v0,32100($a2)
.L0da89890:
    lui	$v1,0x8
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    sw	$v0,32100($a2)
.L0da898a0:
    # Line 4505
    lw	$a1,32096($a2)
    ori	$a1,$a1,0x400
    # Line 4506
    b	.L0da88e2c
    # Line 4505
    sw	$a1,32096($a2)
.L0da898b0:
    # Line 4318
    mtc1	$zero,$f4
    c.eq.s	$f13,$f4
    nop
    bc1f	.L0da89910
    swc1	$f13,636($a2)
    lwc1	$f2,640($a2)
    c.eq.s	$f2,$f4
    nop
    bc1fl	.L0da89914
    # Line 4323
    lw	$v0,32100($a2)
    # Line 4319
    lwc1	$f3,644($a2)
    c.eq.s	$f3,$f4
    nop
    bc1fl	.L0da89914
    # Line 4323
    lw	$v0,32100($a2)
    # Line 4319
    lwc1	$f0,648($a2)
    c.eq.s	$f0,$f4
    nop
    bc1fl	.L0da89914
    # Line 4323
    lw	$v0,32100($a2)
    # Line 4321
    lw	$at,32100($a2)
    ori	$at,$at,0x1
    b	.L0da89920
    sw	$at,32100($a2)
.L0da89910:
    # Line 4323
    lw	$v0,32100($a2)
.L0da89914:
    li	$v1,-2
    and	$v0,$v0,$v1
    sw	$v0,32100($a2)
.L0da89920:
    # Line 4324
    lw	$a1,32096($a2)
    ori	$a1,$a1,0x1
    # Line 4325
    b	.L0da88e2c
    # Line 4324
    sw	$a1,32096($a2)
.L0da89930:
    # Line 4311
    lw	$at,32100($a2)
.L0da89934:
    li	$v0,-3
    and	$at,$at,$v0
    sw	$at,32100($a2)
.L0da89940:
    # Line 4312
    lw	$v1,32096($a2)
    ori	$v1,$v1,0x1
    # Line 4313
    b	.L0da88e2c
    # Line 4312
    sw	$v1,32096($a2)
.L0da89950:
    # Line 4423
    lw	$a1,32100($a2)
.L0da89954:
    li	$at,-1025
    and	$a1,$a1,$at
    sw	$a1,32100($a2)
.L0da89960:
    # Line 4424
    lw	$v0,32096($a2)
    ori	$v0,$v0,0x200
    # Line 4425
    b	.L0da88e2c
    # Line 4424
    sw	$v0,32096($a2)
.L0da89970:
    # Line 4513
    lw	$v1,32100($a2)
.L0da89974:
    lui	$a1,0x4
    nor	$a1,$a1,$zero
    and	$v1,$v1,$a1
    sw	$v1,32100($a2)
.L0da89984:
    # Line 4514
    lw	$at,32096($a2)
    ori	$at,$at,0x400
    # Line 4515
    b	.L0da88e2c
    # Line 4514
    sw	$at,32096($a2)
.L0da89994:
    # Line 4531
    lw	$v0,32100($a2)
.L0da89998:
    lui	$v1,0x4
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    sw	$v0,32100($a2)
.L0da899a8:
    # Line 4532
    lw	$a1,32096($a2)
    ori	$a1,$a1,0x400
    # Line 4533
    b	.L0da88e2c
    # Line 4532
    sw	$a1,32096($a2)
.L0da899b8:
    # Line 4277
    li	$at,0x80ba
    bne	$a0,$at,.L0da890bc
    # Line 4454
    mtc1	$zero,$f4
    c.eq.s	$f13,$f4
    lui	$a0,0x1
    addu	$a0,$a2,$a0
    bc1f	.L0da89bbc
    swc1	$f13,-32140($a0)
    lwc1	$f1,-32148($a0)
    c.eq.s	$f1,$f4
    nop
    bc1fl	.L0da89bc0
    # Line 4459
    lw	$v0,32100($a2)
    # Line 4455
    lwc1	$f2,-32144($a0)
    c.eq.s	$f2,$f4
    nop
    bc1fl	.L0da89bc0
    # Line 4459
    lw	$v0,32100($a2)
    # Line 4455
    lwc1	$f3,-32136($a0)
    c.eq.s	$f3,$f4
    nop
    bc1fl	.L0da89bc0
    # Line 4459
    lw	$v0,32100($a2)
    # Line 4457
    lw	$a1,32100($a2)
    ori	$a1,$a1,0x200
    b	.L0da89bcc
    sw	$a1,32100($a2)
.L0da89a24:
    # Line 4293
    lw	$at,32100($a2)
.L0da89a28:
    li	$v0,-3
    and	$at,$at,$v0
    sw	$at,32100($a2)
.L0da89a34:
    # Line 4294
    lw	$v1,32096($a2)
    ori	$v1,$v1,0x1
    # Line 4295
    b	.L0da88e2c
    # Line 4294
    sw	$v1,32096($a2)
.L0da89a44:
    # Line 4468
    lw	$a1,32100($a2)
.L0da89a48:
    li	$at,-513
    and	$a1,$a1,$at
    sw	$a1,32100($a2)
.L0da89a54:
    # Line 4469
    lw	$v0,32096($a2)
    ori	$v0,$v0,0x200
    # Line 4470
    b	.L0da88e2c
    # Line 4469
    sw	$v0,32096($a2)
.L0da89a64:
    # Line 4355
    b	.L0da88e2c
    # Line 4354
    swc1	$f13,652($a2)
.L0da89a6c:
    # Line 4427
    lwc1	$f4,_lit_3f800000
    c.eq.s	$f13,$f4
    lui	$a0,0x1
    addu	$a0,$a2,$a0
    bc1f	.L0da89b38
    swc1	$f13,-32152($a0)
    lwc1	$f0,-32164($a0)
    c.eq.s	$f0,$f4
    nop
    bc1fl	.L0da89b3c
    # Line 4432
    lw	$v0,32100($a2)
    # Line 4428
    lwc1	$f1,-32160($a0)
    c.eq.s	$f1,$f4
    nop
    bc1fl	.L0da89b3c
    # Line 4432
    lw	$v0,32100($a2)
    # Line 4428
    lwc1	$f2,-32156($a0)
    c.eq.s	$f2,$f4
    nop
    bc1fl	.L0da89b3c
    # Line 4432
    lw	$v0,32100($a2)
    # Line 4430
    lw	$a1,32100($a2)
    ori	$a1,$a1,0x400
    b	.L0da89b48
    sw	$a1,32100($a2)
.L0da89ad0:
    # Line 4535
    mtc1	$zero,$f4
    c.eq.s	$f13,$f4
    lui	$a0,0x1
    addu	$a0,$a2,$a0
    bc1f	.L0da89b58
    swc1	$f13,-31864($a0)
    lwc1	$f3,-31876($a0)
    c.eq.s	$f3,$f4
    nop
    bc1fl	.L0da89b5c
    # Line 4540
    lw	$at,32100($a2)
    # Line 4536
    lwc1	$f0,-31872($a0)
    c.eq.s	$f0,$f4
    nop
    bc1fl	.L0da89b5c
    # Line 4540
    lw	$at,32100($a2)
    # Line 4536
    lwc1	$f1,-31868($a0)
    c.eq.s	$f1,$f4
    nop
    bc1fl	.L0da89b5c
    # Line 4540
    lw	$at,32100($a2)
    # Line 4538
    lw	$a1,32100($a2)
    lui	$at,0x4
    or	$a1,$a1,$at
    b	.L0da89b6c
    sw	$a1,32100($a2)
.L0da89b38:
    # Line 4432
    lw	$v0,32100($a2)
.L0da89b3c:
    li	$v1,-1025
    and	$v0,$v0,$v1
    sw	$v0,32100($a2)
.L0da89b48:
    # Line 4433
    lw	$a1,32096($a2)
    ori	$a1,$a1,0x200
    # Line 4434
    b	.L0da88e2c
    # Line 4433
    sw	$a1,32096($a2)
.L0da89b58:
    # Line 4540
    lw	$at,32100($a2)
.L0da89b5c:
    lui	$v0,0x4
    nor	$v0,$v0,$zero
    and	$at,$at,$v0
    sw	$at,32100($a2)
.L0da89b6c:
    # Line 4541
    lw	$v1,32096($a2)
    ori	$v1,$v1,0x400
    # Line 4542
    b	.L0da88e2c
    # Line 4541
    sw	$v1,32096($a2)
.L0da89b7c:
    # Line 4405
    lw	$a1,32100($a2)
.L0da89b80:
    li	$at,-1025
    and	$a1,$a1,$at
    sw	$a1,32100($a2)
.L0da89b8c:
    # Line 4406
    lw	$v0,32096($a2)
    ori	$v0,$v0,0x200
    # Line 4407
    b	.L0da88e2c
    # Line 4406
    sw	$v0,32096($a2)
.L0da89b9c:
    # Line 4441
    lw	$v1,32100($a2)
.L0da89ba0:
    li	$a1,-513
    and	$v1,$v1,$a1
    sw	$v1,32100($a2)
.L0da89bac:
    # Line 4442
    lw	$at,32096($a2)
    ori	$at,$at,0x200
    # Line 4443
    b	.L0da88e2c
    # Line 4442
    sw	$at,32096($a2)
.L0da89bbc:
    # Line 4459
    lw	$v0,32100($a2)
.L0da89bc0:
    li	$v1,-513
    and	$v0,$v0,$v1
    sw	$v0,32100($a2)
.L0da89bcc:
    # Line 4460
    lw	$a1,32096($a2)
    ori	$a1,$a1,0x200
    # Line 4461
    b	.L0da88e2c
    # Line 4460
    sw	$a1,32096($a2)
.L0da89bdc:
    # Line 4477
    lw	$at,32100($a2)
.L0da89be0:
    lui	$v0,0x8
    nor	$v0,$v0,$zero
    and	$at,$at,$v0
    sw	$at,32100($a2)
.L0da89bf0:
    # Line 4478
    lw	$v1,32096($a2)
    ori	$v1,$v1,0x400
    # Line 4479
    b	.L0da88e2c
    # Line 4478
    sw	$v1,32096($a2)
.end __glMgrim_PixelTransferf

# Function: __glMgrim_PixelTransferi
# Declared: Line 4549 (Source lines: 4550-4552)
# Address: 0x0da89c00 - 0x0da89c38 (Size: 56 bytes, Frame: 32)
.globl __glMgrim_PixelTransferi
.ent __glMgrim_PixelTransferi
__glMgrim_PixelTransferi:
    # Line 4550
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$at,0x17
    addiu	$at,$at,19096
    addu	$gp,$t9,$at
    # Line 4551
    # lw $t9, -31828($gp) # &__glMgrim_PixelTransferf
    mtc1	$a1,$f13
    sd	$ra,0($sp)
    bal __glMgrim_PixelTransferf
    cvt.s.w	$f13,$f13
    # Line 4552
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_PixelTransferi

# Function: ResizeLUT
# Declared: Line 4555 (Source lines: 4556-4605)
# Address: 0x0da89c38 - 0x0da89e44 (Size: 524 bytes, Frame: 128)
.ent ResizeLUT
ResizeLUT:
    # Line 4556
    slti	$at,$a2,257
    addiu	$sp,$sp,-128
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$s0,16($sp)
    beqz	$at,.L0da89da8
    move	$s0,$a1
    # Line 4562
    li	$v1,256
    sd	$s3,40($sp)
    sd	$s2,32($sp)
    sd	$v1,0($sp)
.L0da89c64:
    # Line 4566
    ld	$s2,0($sp)
    lw	$a1,4($s0)
    sd	$ra,24($sp)
    sll	$s3,$s2,0x3
    beqz	$a1,.L0da89dd8
    sll	$s2,$s2,0x2
    # Line 4569
    lw	$t9,8($s1)
    move	$a0,$s1
    jalr	$t9
    move	$a2,$s2
    sd	$s6,80($sp)
    sd	$s4,72($sp)
    sd	$s5,64($sp)
    sd	$s7,56($sp)
    sw	$v0,4($s0)
    sd	$s8,48($sp)
    # Line 4573
    lw	$t9,8($s1)
    move	$a2,$s3
    lw	$a1,8($s0)
    jalr	$t9
    move	$a0,$s1
    # Line 4578
    lw	$a2,0($s0)
    ld	$s5,0($sp)
    divu	$zero,$s5,$a2
    mflo	$s4
    nop
    addiu	$s4,$s4,-1
    # Line 4583
    multu	$a2,$s4
    # Line 4573
    move	$s6,$v0
    sw	$v0,8($s0)
    ld	$ra,24($sp)
    # Line 4585
    li	$s8,-1
    # Line 4578
    teq	$a2,$zero,0x7
    # Line 4579
    lw	$s5,4($s0)
    # Line 4585
    addiu	$s4,$s4,-1
    # Line 4580
    sll	$a2,$a2,0x2
    addu	$s3,$s5,$a2
    # Line 4582
    addu	$s7,$v0,$a2
    # Line 4583
    mflo	$s1
    # Line 4584
    sll	$s2,$s1,0x3
    # Line 4583
    sll	$s1,$s1,0x2
    # Line 4584
    addu	$s2,$s2,$s7
    # Line 4585
    beq	$s8,$s4,.L0da89d74
    # Line 4583
    addu	$s1,$s1,$v0
.L0da89d14:
    # Line 4586
    # lw $t9, -17872($gp) # &bcopy
    move	$a0,$s5
    jal	bcopy
    move	$a1,$s3
    # Line 4587
    move	$a0,$s7
    # lw $t9, -17872($gp) # &bcopy
    lw	$a2,0($s0)
    move	$a1,$s2
    jal	bcopy
    sll	$a2,$a2,0x2
    # Line 4588
    move	$a0,$s6
    # lw $t9, -17872($gp) # &bcopy
    lw	$a2,0($s0)
    move	$a1,$s1
    jal	bcopy
    sll	$a2,$a2,0x2
    # Line 4585
    addiu	$s4,$s4,-1
    # Line 4589
    lw	$a2,0($s0)
    sll	$a2,$a2,0x2
    # Line 4591
    subu	$s2,$s2,$a2
    # Line 4590
    subu	$s1,$s1,$a2
    # Line 4585
    bne	$s8,$s4,.L0da89d14
    # Line 4589
    addu	$s3,$a2,$s3
    ld	$ra,24($sp)
.L0da89d74:
    # Line 4605
    ld	$s1,8($sp)
    ld	$s2,32($sp)
    ld	$s3,40($sp)
    ld	$s4,72($sp)
    ld	$s5,64($sp)
    ld	$s6,80($sp)
    ld	$a3,0($sp)
    ld	$s7,56($sp)
    ld	$s8,48($sp)
    # Line 4604
    sw	$a3,0($s0)
    # Line 4605
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0da89da8:
    # Line 4562
    slti	$a4,$a2,1025
    beqz	$a4,.L0da89dc4
    # Line 4564
    li	$at,1024
    sd	$s3,40($sp)
    sd	$s2,32($sp)
    b	.L0da89c64
    sd	$at,0($sp)
.L0da89dc4:
    # Line 4566
    li	$v1,4096
    sd	$s3,40($sp)
    sd	$s2,32($sp)
    b	.L0da89c64
    sd	$v1,0($sp)
.L0da89dd8:
    # Line 4594
    lw	$t9,0($s1)
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s2
    sw	$v0,4($s0)
    # Line 4597
    lw	$t9,0($s1)
    move	$a1,$s3
    jalr	$t9
    move	$a0,$s1
    # Line 4601
    move	$a1,$s2
    # lw $t9, -17868($gp) # &bzero
    lw	$a0,4($s0)
    # Line 4597
    sw	$v0,8($s0)
    # Line 4601
    jal	bzero
    ld	$s1,8($sp)
    # Line 4602
    # lw $t9, -17868($gp) # &bzero
    move	$a1,$s3
    lw	$a0,8($s0)
    jal	bzero
    ld	$s2,32($sp)
    sd	$s6,80($sp)
    sd	$s4,72($sp)
    sd	$s5,64($sp)
    sd	$s7,56($sp)
    sd	$s8,48($sp)
    b	.L0da89d74
    ld	$ra,24($sp)
.end ResizeLUT

# Function: FillCILUTFloat
# Declared: Line 4608 (Source lines: 4617-4639)
# Address: 0x0da89e44 - 0x0da89fe4 (Size: 416 bytes, Frame: 0)
.ent FillCILUTFloat
FillCILUTFloat:
    # Line 4617
    lw	$t0,0($a0)
    lw	$a7,8($a0)
    lw	$a6,4($a0)
    slti	$at,$a2,2
    beqz	$at,.L0da89e68
    addu	$a6,$a6,$a2
    # Line 4619
    move	$a5,$a7
    b	.L0da89e70
    nop
.L0da89e68:
    # Line 4621
    sll	$a5,$t0,0x2
    addu	$a5,$a5,$a7
.L0da89e70:
    # Line 4627
    move	$a4,$zero
    ldc1	$f7,_lit8_40efffe000000000
    dmtc1	$zero,$f5
    # Line 4624
    andi	$a7,$a2,0x1
    addu	$a7,$a7,$a7
    addu	$a5,$a7,$a5
    # Line 4627
    beqz	$t0,.L0da89f00
    # Line 4625
    move	$a7,$t0
    # Line 4627
    ldc1	$f8,_lit8_3ff0000000000000
    ldc1	$f6,_lit8_406fe00000000000
    addiu	$a2,$a1,-1
    andi	$at,$a7,0x1
    beqz	$at,.L0da89ef4
    move	$t0,$a7
    # Line 4628
    and	$v0,$a2,$a4
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a3
    lwc1	$f4,0($v0)
    cvt.d.s	$f4,$f4
    c.lt.d	$f4,$f5
    # Line 4637
    addiu	$a6,$a6,4
    # Line 4628
    bc1f	.L0da89fcc
    # Line 4627
    addiu	$a4,$a4,1
    # Line 4628
    mov.d	$f4,$f5
.L0da89ed0:
    # Line 4636
    addiu	$a5,$a5,4
.L0da89ed4:
    # Line 4634
    mul.d	$f1,$f4,$f7
    # Line 4635
    mul.d	$f0,$f4,$f6
    # Line 4634
    trunc.w.d	$f1,$f1
    # Line 4635
    trunc.w.d	$f0,$f0
    # Line 4634
    mfc1	$a0,$f1
    # Line 4635
    mfc1	$v1,$f0
    # Line 4634
    sh	$a0,-4($a5)
    # Line 4635
    sb	$v1,-4($a6)
.L0da89ef4:
    sra	$at,$t0,0x1
    bnez	$at,.L0da89f84
    # Line 4628
    and	$at,$a2,$a4
.L0da89f00:
    # Line 4639
    jr	$ra
    nop
.L0da89f08:
    # Line 4628
    c.lt.d	$f8,$f4
    nop
    bc1fl	.L0da89f20
    # Line 4634
    mul.d	$f1,$f4,$f7
    # Line 4628
    mov.d	$f4,$f8
.L0da89f1c:
    # Line 4634
    mul.d	$f1,$f4,$f7
.L0da89f20:
    # Line 4635
    mul.d	$f0,$f4,$f6
    # Line 4634
    trunc.w.d	$f1,$f1
    # Line 4635
    trunc.w.d	$f0,$f0
    # Line 4634
    mfc1	$a0,$f1
    # Line 4635
    mfc1	$v1,$f0
    # Line 4634
    sh	$a0,0($a5)
    # Line 4635
    sb	$v1,0($a6)
    # Line 4628
    lwc1	$f4,0($v0)
    cvt.d.s	$f4,$f4
    c.lt.d	$f4,$f5
    # Line 4636
    addiu	$a5,$a5,8
    # Line 4628
    bc1f	.L0da89fb4
    # Line 4637
    addiu	$a6,$a6,8
    # Line 4628
    mov.d	$f4,$f5
.L0da89f58:
    # Line 4627
    addiu	$a4,$a4,1
.L0da89f5c:
    # Line 4634
    mul.d	$f3,$f4,$f7
    # Line 4635
    mul.d	$f2,$f4,$f6
    # Line 4634
    trunc.w.d	$f3,$f3
    # Line 4635
    trunc.w.d	$f2,$f2
    # Line 4634
    mfc1	$a0,$f3
    # Line 4635
    mfc1	$v1,$f2
    # Line 4634
    sh	$a0,-4($a5)
    # Line 4627
    beq	$a7,$a4,.L0da89f00
    # Line 4635
    sb	$v1,-4($a6)
    # Line 4628
    and	$at,$a2,$a4
.L0da89f84:
    sll	$at,$at,0x2
    addu	$at,$at,$a3
    lwc1	$f4,0($at)
    cvt.d.s	$f4,$f4
    # Line 4627
    addiu	$a4,$a4,1
    # Line 4628
    c.lt.d	$f4,$f5
    and	$v0,$a2,$a4
    sll	$v0,$v0,0x2
    bc1f	.L0da89f08
    addu	$v0,$v0,$a3
    b	.L0da89f1c
    mov.d	$f4,$f5
.L0da89fb4:
    c.lt.d	$f8,$f4
    nop
    bc1fl	.L0da89f5c
    # Line 4627
    addiu	$a4,$a4,1
    b	.L0da89f58
    # Line 4628
    mov.d	$f4,$f8
.L0da89fcc:
    c.lt.d	$f8,$f4
    nop
    bc1fl	.L0da89ed4
    # Line 4636
    addiu	$a5,$a5,4
    b	.L0da89ed0
    # Line 4628
    mov.d	$f4,$f8
.end FillCILUTFloat

# Function: FillCILUTInt
# Declared: Line 4642 (Source lines: 4650-4667)
# Address: 0x0da89fe4 - 0x0da8a0e0 (Size: 252 bytes, Frame: 0)
.ent FillCILUTInt
FillCILUTInt:
    # Line 4650
    lw	$a6,0($a0)
    lw	$a5,8($a0)
    lw	$t0,4($a0)
    slti	$at,$a2,2
    beqz	$at,.L0da8a008
    addu	$t0,$t0,$a2
    # Line 4652
    move	$a4,$a5
    b	.L0da8a010
    nop
.L0da8a008:
    # Line 4654
    sll	$a4,$a6,0x2
    addu	$a4,$a4,$a5
.L0da8a010:
    # Line 4660
    move	$a7,$zero
    # Line 4657
    andi	$a5,$a2,0x1
    addu	$a5,$a5,$a5
    addu	$a4,$a5,$a4
    # Line 4660
    beqz	$a6,.L0da8a0d8
    # Line 4658
    move	$a5,$a6
    # Line 4660
    move	$a2,$a5
    andi	$a6,$a5,0x1
    beqz	$a6,.L0da8a064
    addiu	$a6,$a1,-1
    # Line 4661
    and	$v0,$a6,$a7
    # Line 4660
    addiu	$a7,$a7,1
    # Line 4661
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a3
    lw	$v0,0($v0)
    # Line 4665
    addiu	$t0,$t0,4
    # Line 4664
    addiu	$a4,$a4,4
    # Line 4663
    srl	$at,$v0,0x18
    # Line 4662
    srl	$v0,$v0,0x10
    sh	$v0,-4($a4)
    # Line 4663
    sb	$at,-4($t0)
.L0da8a064:
    move	$t1,$t0
    move	$t3,$a7
    move	$t2,$a4
    sra	$v1,$a2,0x1
    beqz	$v1,.L0da8a0d8
    move	$a4,$t2
    move	$a1,$t1
    move	$a2,$t3
.L0da8a084:
    # Line 4665
    addiu	$a1,$a1,8
    # Line 4660
    addiu	$v0,$a2,1
    # Line 4661
    and	$a0,$a6,$a2
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a3
    lw	$a0,0($a0)
    and	$at,$a6,$v0
    sll	$at,$at,0x2
    # Line 4663
    srl	$v1,$a0,0x18
    # Line 4662
    srl	$a0,$a0,0x10
    sh	$a0,0($a4)
    # Line 4663
    sb	$v1,-8($a1)
    # Line 4661
    addu	$at,$at,$a3
    lw	$at,0($at)
    # Line 4664
    addiu	$a4,$a4,8
    # Line 4660
    addiu	$a2,$v0,1
    # Line 4663
    srl	$a0,$at,0x18
    # Line 4662
    srl	$at,$at,0x10
    sh	$at,-4($a4)
    # Line 4660
    bne	$a5,$a2,.L0da8a084
    # Line 4663
    sb	$a0,-4($a1)
.L0da8a0d8:
    # Line 4667
    jr	$ra
    nop
.end FillCILUTInt

# Function: FillCILUTShort
# Declared: Line 4670 (Source lines: 4678-4695)
# Address: 0x0da8a0e0 - 0x0da8a1d0 (Size: 240 bytes, Frame: 0)
.ent FillCILUTShort
FillCILUTShort:
    # Line 4678
    lw	$a6,0($a0)
    lw	$a5,8($a0)
    lw	$t0,4($a0)
    slti	$at,$a2,2
    beqz	$at,.L0da8a104
    addu	$t0,$t0,$a2
    # Line 4680
    move	$a4,$a5
    b	.L0da8a10c
    nop
.L0da8a104:
    # Line 4682
    sll	$a4,$a6,0x2
    addu	$a4,$a4,$a5
.L0da8a10c:
    # Line 4688
    move	$a7,$zero
    # Line 4685
    andi	$a5,$a2,0x1
    addu	$a5,$a5,$a5
    addu	$a4,$a5,$a4
    # Line 4688
    beqz	$a6,.L0da8a1c8
    # Line 4686
    move	$a5,$a6
    # Line 4688
    move	$a2,$a5
    andi	$a6,$a5,0x1
    beqz	$a6,.L0da8a15c
    addiu	$a6,$a1,-1
    # Line 4689
    and	$v0,$a6,$a7
    # Line 4688
    addiu	$a7,$a7,1
    # Line 4689
    addu	$v0,$v0,$v0
    addu	$v0,$v0,$a3
    lhu	$v0,0($v0)
    # Line 4693
    addiu	$t0,$t0,4
    # Line 4692
    addiu	$a4,$a4,4
    # Line 4690
    sh	$v0,-4($a4)
    # Line 4691
    sra	$at,$v0,0x8
    sb	$at,-4($t0)
.L0da8a15c:
    move	$t1,$t0
    move	$t3,$a7
    move	$t2,$a4
    sra	$v1,$a2,0x1
    beqz	$v1,.L0da8a1c8
    move	$a4,$t2
    move	$a1,$t1
    move	$a2,$t3
.L0da8a17c:
    # Line 4693
    addiu	$a1,$a1,8
    # Line 4688
    addiu	$v0,$a2,1
    # Line 4689
    and	$a0,$a6,$a2
    addu	$a0,$a0,$a0
    addu	$a0,$a0,$a3
    lhu	$a0,0($a0)
    and	$at,$a6,$v0
    addu	$at,$at,$at
    # Line 4691
    sra	$v1,$a0,0x8
    # Line 4690
    sh	$a0,0($a4)
    # Line 4691
    sb	$v1,-8($a1)
    # Line 4689
    addu	$at,$at,$a3
    lhu	$at,0($at)
    # Line 4692
    addiu	$a4,$a4,8
    # Line 4688
    addiu	$a2,$v0,1
    # Line 4691
    sra	$a0,$at,0x8
    # Line 4690
    sh	$at,-4($a4)
    # Line 4688
    bne	$a5,$a2,.L0da8a17c
    # Line 4691
    sb	$a0,-4($a1)
.L0da8a1c8:
    # Line 4695
    jr	$ra
    nop
.end FillCILUTShort

# Function: FillIndexLUTFloat
# Declared: Line 4698 (Source lines: 4707-4724)
# Address: 0x0da8a1d0 - 0x0da8a318 (Size: 328 bytes, Frame: 0)
.ent FillIndexLUTFloat
FillIndexLUTFloat:
    # Line 4708
    lw	$a6,8($a0)
    # Line 4707
    lw	$a5,4($a0)
    # Line 4709
    lw	$a7,0($a0)
    # Line 4711
    ldc1	$f7,_lit8_3fe0000000000000
    move	$a4,$zero
    andi	$at,$a7,0x1
    beqz	$a7,.L0da8a264
    move	$t0,$a7
    mtc1	$zero,$f5
    ldc1	$f6,_lit8_bfe0000000000000
    addiu	$a3,$a1,-1
    beqz	$at,.L0da8a258
    # Line 4712
    and	$v0,$a3,$a4
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a2
    lwc1	$f4,0($v0)
    # Line 4711
    addiu	$a4,$a4,1
    # Line 4712
    c.lt.s	$f5,$f4
    # Line 4722
    addiu	$a5,$a5,4
    # Line 4721
    addiu	$a6,$a6,4
    # Line 4712
    bc1f	.L0da8a23c
    cvt.d.s	$f4,$f4
    # Line 4714
    add.d	$f0,$f4,$f7
    trunc.w.d	$f0,$f0
    mfc1	$a1,$f0
    b	.L0da8a24c
    nop
.L0da8a23c:
    # Line 4716
    add.d	$f1,$f4,$f6
    trunc.w.d	$f1,$f1
    mfc1	$a1,$f1
    nop
.L0da8a24c:
    # Line 4719
    sh	$a1,-2($a6)
    # Line 4718
    sh	$a1,-4($a6)
    # Line 4720
    sb	$a1,-4($a5)
.L0da8a258:
    sra	$v1,$t0,0x1
    bnez	$v1,.L0da8a290
    # Line 4712
    and	$a0,$a3,$a4
.L0da8a264:
    # Line 4724
    jr	$ra
    nop
.L0da8a26c:
    # Line 4716
    add.d	$f2,$f4,$f6
    trunc.w.d	$f2,$f2
    mfc1	$a1,$f2
    nop
.L0da8a27c:
    # Line 4719
    sh	$a1,-2($a6)
    # Line 4718
    sh	$a1,-4($a6)
    # Line 4711
    beq	$a7,$a4,.L0da8a264
    # Line 4720
    sb	$a1,-4($a5)
    # Line 4712
    and	$a0,$a3,$a4
.L0da8a290:
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$a2
    lwc1	$f4,0($a0)
    # Line 4711
    addiu	$a4,$a4,1
    # Line 4712
    and	$at,$a3,$a4
    c.lt.s	$f5,$f4
    sll	$at,$at,0x2
    addu	$at,$at,$a2
    bc1f	.L0da8a2cc
    cvt.d.s	$f4,$f4
    # Line 4714
    add.d	$f0,$f4,$f7
    trunc.w.d	$f0,$f0
    mfc1	$a1,$f0
    b	.L0da8a2dc
    nop
.L0da8a2cc:
    # Line 4716
    add.d	$f1,$f4,$f6
    trunc.w.d	$f1,$f1
    mfc1	$a1,$f1
    nop
.L0da8a2dc:
    # Line 4718
    sh	$a1,0($a6)
    # Line 4719
    sh	$a1,2($a6)
    # Line 4720
    sb	$a1,0($a5)
    # Line 4712
    lwc1	$f4,0($at)
    # Line 4711
    addiu	$a4,$a4,1
    # Line 4712
    c.lt.s	$f5,$f4
    # Line 4722
    addiu	$a5,$a5,8
    # Line 4721
    addiu	$a6,$a6,8
    # Line 4712
    bc1f	.L0da8a26c
    cvt.d.s	$f4,$f4
    # Line 4714
    add.d	$f0,$f4,$f7
    trunc.w.d	$f0,$f0
    mfc1	$a1,$f0
    b	.L0da8a27c
    nop
.end FillIndexLUTFloat

# Function: FillIndexLUTInt
# Declared: Line 4727 (Source lines: 4734-4746)
# Address: 0x0da8a318 - 0x0da8a3d8 (Size: 192 bytes, Frame: 0)
.ent FillIndexLUTInt
FillIndexLUTInt:
    # Line 4735
    lw	$a7,8($a0)
    # Line 4734
    lw	$t0,4($a0)
    # Line 4736
    lw	$a5,0($a0)
    # Line 4738
    addiu	$a6,$a1,-1
    move	$a4,$zero
    beqz	$a5,.L0da8a3d0
    andi	$at,$a5,0x1
    beqz	$at,.L0da8a364
    move	$a3,$a5
    # Line 4739
    and	$v0,$a6,$a4
    # Line 4738
    addiu	$a4,$a4,1
    # Line 4739
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a2
    lw	$v0,0($v0)
    # Line 4744
    addiu	$t0,$t0,4
    # Line 4743
    addiu	$a7,$a7,4
    # Line 4741
    sh	$v0,-2($a7)
    # Line 4740
    sh	$v0,-4($a7)
    # Line 4742
    sb	$v0,-4($t0)
.L0da8a364:
    move	$t2,$t0
    move	$t3,$a4
    move	$t1,$a7
    sra	$v1,$a3,0x1
    beqz	$v1,.L0da8a3d0
    move	$a1,$t1
    move	$a3,$t2
    move	$a4,$t3
.L0da8a384:
    # Line 4744
    addiu	$a3,$a3,8
    # Line 4738
    addiu	$at,$a4,1
    # Line 4739
    and	$a4,$a6,$a4
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a2
    lw	$a4,0($a4)
    and	$a0,$a6,$at
    sll	$a0,$a0,0x2
    # Line 4740
    sh	$a4,0($a1)
    # Line 4741
    sh	$a4,2($a1)
    # Line 4742
    sb	$a4,-8($a3)
    # Line 4739
    addu	$a0,$a0,$a2
    lw	$a0,0($a0)
    # Line 4743
    addiu	$a1,$a1,8
    # Line 4738
    addiu	$a4,$at,1
    # Line 4740
    sh	$a0,-4($a1)
    # Line 4741
    sh	$a0,-2($a1)
    # Line 4738
    bne	$a5,$a4,.L0da8a384
    # Line 4742
    sb	$a0,-4($a3)
.L0da8a3d0:
    # Line 4746
    jr	$ra
    nop
.end FillIndexLUTInt

# Function: FillIndexLUTShort
# Declared: Line 4749 (Source lines: 4756-4768)
# Address: 0x0da8a3d8 - 0x0da8a498 (Size: 192 bytes, Frame: 0)
.ent FillIndexLUTShort
FillIndexLUTShort:
    # Line 4757
    lw	$a7,8($a0)
    # Line 4756
    lw	$t0,4($a0)
    # Line 4758
    lw	$a5,0($a0)
    # Line 4760
    addiu	$a6,$a1,-1
    move	$a4,$zero
    beqz	$a5,.L0da8a490
    andi	$at,$a5,0x1
    beqz	$at,.L0da8a424
    move	$a3,$a5
    # Line 4761
    and	$v0,$a6,$a4
    # Line 4760
    addiu	$a4,$a4,1
    # Line 4761
    addu	$v0,$v0,$v0
    addu	$v0,$v0,$a2
    lhu	$v0,0($v0)
    # Line 4766
    addiu	$t0,$t0,4
    # Line 4765
    addiu	$a7,$a7,4
    # Line 4763
    sh	$v0,-2($a7)
    # Line 4762
    sh	$v0,-4($a7)
    # Line 4764
    sb	$v0,-4($t0)
.L0da8a424:
    move	$t2,$t0
    move	$t3,$a4
    move	$t1,$a7
    sra	$v1,$a3,0x1
    beqz	$v1,.L0da8a490
    move	$a1,$t1
    move	$a3,$t2
    move	$a4,$t3
.L0da8a444:
    # Line 4766
    addiu	$a3,$a3,8
    # Line 4760
    addiu	$at,$a4,1
    # Line 4761
    and	$a4,$a6,$a4
    addu	$a4,$a4,$a4
    addu	$a4,$a4,$a2
    lhu	$a4,0($a4)
    and	$a0,$a6,$at
    addu	$a0,$a0,$a0
    # Line 4762
    sh	$a4,0($a1)
    # Line 4763
    sh	$a4,2($a1)
    # Line 4764
    sb	$a4,-8($a3)
    # Line 4761
    addu	$a0,$a0,$a2
    lhu	$a0,0($a0)
    # Line 4765
    addiu	$a1,$a1,8
    # Line 4760
    addiu	$a4,$at,1
    # Line 4762
    sh	$a0,-4($a1)
    # Line 4763
    sh	$a0,-2($a1)
    # Line 4760
    bne	$a5,$a4,.L0da8a444
    # Line 4764
    sb	$a0,-4($a3)
.L0da8a490:
    # Line 4768
    jr	$ra
    nop
.end FillIndexLUTShort

# Function: __glMgrim_PixelMapfv
# Declared: Line 4774 (Source lines: 4774-4852)
# Address: 0x0da8a498 - 0x0da8a728 (Size: 656 bytes, Frame: 240)
.globl __glMgrim_PixelMapfv
.ent __glMgrim_PixelMapfv
__glMgrim_PixelMapfv:
    # Line 4781
    li	$v0,1
    # Line 4774
    addiu	$sp,$sp,-112
    sd	$ra,64($sp)
    sd	$s2,48($sp)
    # Line 4781
    lw	$s2,__glCurrentContext
    sd	$s3,56($sp)
    # Line 4774
    move	$s3,$a2
    sd	$s0,32($sp)
    move	$s0,$a1
    sd	$s1,24($sp)
    move	$s1,$a0
    sd	$gp,40($sp)
    # Line 4781
    lw	$at,__glBeginMode
    # Line 4774
    lui	$v1,0x17
    addiu	$v1,$v1,16896
    # Line 4781
    beq	$at,$v0,.L0da8a6b4
    # Line 4774
    addu	$gp,$t9,$v1
    sd	$zero,16($sp)
    # Line 4790
    # lw $t9, -29180($gp) # &__glim_PixelMapfv
    move	$a0,$s1
    move	$a1,$s0
    jal	__glim_PixelMapfv
    move	$a2,$s3
    slti	$a4,$s0,4097
    beqz	$a4,.L0da8a638
    ld	$ra,64($sp)
    # Line 4795
    addiu	$a0,$s1,-3184
    la	$a4,sub_0dbf0000
    sltiu	$at,$a0,10
    sll	$a0,$a0,0x2
    addiu	$a4,$a4,-11176
    beqz	$at,.L0da8a688
    addu	$a0,$a0,$a4
    lw	$a4,%lo(jtbl_0dbed458)($a0)
    # Line 4829
    lui	$v0,0xffff
    sll	$v1,$s1,0x2
    # Line 4795
    jr	$a4
    # Line 4806
    addiu	$a0,$s2,32708
.L0da8a530:
    # Line 4800
    li	$at,1
    sd	$at,16($sp)
.L0da8a538:
    # Line 4801
    ld	$v0,16($sp)
    beqz	$v0,.L0da8a6e0
    lw	$a1,32096($s2)
    # Line 4803
    ori	$a4,$a1,0x8
    # Line 4804
    lw	$v1,32704($s2)
    # Line 4803
    sw	$a4,32096($s2)
    # Line 4805
    li	$a4,-2
    # Line 4804
    ori	$v1,$v1,0x2
    # Line 4805
    and	$v1,$v1,$a4
    sw	$v1,32704($s2)
.L0da8a560:
    # Line 4814
    lui	$v0,0xffff
    ori	$v0,$v0,0x6e78
    sll	$v1,$s1,0x2
    subu	$v1,$v1,$s1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s2
    addu	$v0,$v0,$v1
    sw	$s0,0($v0)
    lw	$at,0($a0)
    sltu	$at,$at,$s0
    bnez	$at,.L0da8a664
.L0da8a58c:
    # Line 4818
    nop	# was lw $t9, -32736($gp) # &sub_0da90000
    move	$a1,$s0
    addiu	$t9,$t9,-24112
    bal __glMgrim_PixelTransferi
    move	$a2,$s3
    ld	$ra,64($sp)
.L0da8a5a4:
    ld	$gp,40($sp)
    # Line 4852
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$s2,48($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da8a5c0:
    # Line 4829
    subu	$v1,$v1,$s1
    # Line 4825
    lw	$a0,32096($s2)
    # Line 4829
    ori	$v0,$v0,0x6e78
    # Line 4825
    ori	$a0,$a0,0x10
    # Line 4829
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s2
    addu	$v0,$v0,$v1
    # Line 4826
    lw	$v1,32704($s2)
    # Line 4825
    sw	$a0,32096($s2)
    # Line 4827
    li	$a0,-5
    # Line 4826
    ori	$v1,$v1,0x8
    # Line 4827
    and	$v1,$v1,$a0
    sw	$v1,32704($s2)
    # Line 4829
    sw	$s0,0($v0)
    lw	$at,32720($s2)
    sltu	$at,$at,$s0
    bnez	$at,.L0da8a704
    addiu	$a0,$s2,32720
.L0da8a608:
    # Line 4835
    # lw $t9, -32736($gp) # &sub_0da90000
    move	$a1,$s0
    move	$a3,$s3
    addiu	$t9,$t9,-25020
    bal __glMgrim_PixelTransferi
    addiu	$a2,$s1,-3186
    b	.L0da8a5a4
    ld	$ra,64($sp)
.L0da8a628:
    # Line 4845
    lw	$at,32096($s2)
    ori	$at,$at,0x20
    b	.L0da8a5a4
    sw	$at,32096($s2)
.L0da8a638:
    # Line 4794
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    ld	$gp,40($sp)
    # Line 4795
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$ra,64($sp)
    ld	$s2,48($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da8a664:
    sd	$a0,8($sp)
    # Line 4816
    # lw $t9, -32736($gp) # &sub_0da90000
    move	$a0,$s2
    move	$a2,$s0
    addiu	$t9,$t9,-25544
    bal __glMgrim_PixelTransferi
    ld	$a1,8($sp)
    b	.L0da8a58c
    ld	$a0,8($sp)
.L0da8a688:
    # Line 4849
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,40($sp)
    # Line 4850
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$ra,64($sp)
    ld	$s2,48($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da8a6b4:
    # Line 4781
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,40($sp)
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$ra,64($sp)
    ld	$s2,48($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da8a6e0:
    # Line 4811
    addiu	$a0,$s2,32732
    # Line 4808
    ori	$v0,$a1,0x4
    # Line 4809
    lw	$at,32704($s2)
    # Line 4808
    sw	$v0,32096($s2)
    # Line 4810
    li	$v0,-17
    # Line 4809
    ori	$at,$at,0x20
    # Line 4810
    and	$at,$at,$v0
    b	.L0da8a560
    sw	$at,32704($s2)
.L0da8a704:
    sd	$a0,0($sp)
    # Line 4833
    # lw $t9, -32736($gp) # &sub_0da90000
    move	$a0,$s2
    move	$a2,$s0
    addiu	$t9,$t9,-25544
    bal __glMgrim_PixelTransferi
    ld	$a1,0($sp)
    b	.L0da8a608
    ld	$a0,0($sp)
.end __glMgrim_PixelMapfv

# Function: __glMgrim_PixelMapuiv
# Declared: Line 4855 (Source lines: 4855-4935)
# Address: 0x0da8a728 - 0x0da8a9b8 (Size: 656 bytes, Frame: 240)
.globl __glMgrim_PixelMapuiv
.ent __glMgrim_PixelMapuiv
__glMgrim_PixelMapuiv:
    # Line 4862
    li	$v0,1
    # Line 4855
    addiu	$sp,$sp,-112
    sd	$ra,64($sp)
    sd	$s2,48($sp)
    # Line 4862
    lw	$s2,__glCurrentContext
    sd	$s3,56($sp)
    # Line 4855
    move	$s3,$a2
    sd	$s0,32($sp)
    move	$s0,$a1
    sd	$s1,24($sp)
    move	$s1,$a0
    sd	$gp,40($sp)
    # Line 4862
    lw	$at,__glBeginMode
    # Line 4855
    lui	$v1,0x17
    addiu	$v1,$v1,16240
    # Line 4862
    beq	$at,$v0,.L0da8a944
    # Line 4855
    addu	$gp,$t9,$v1
    sd	$zero,16($sp)
    # Line 4871
    # lw $t9, -29176($gp) # &__glim_PixelMapuiv
    move	$a0,$s1
    move	$a1,$s0
    jal	__glim_PixelMapuiv
    move	$a2,$s3
    slti	$a4,$s0,4097
    beqz	$a4,.L0da8a8c8
    ld	$ra,64($sp)
    # Line 4876
    addiu	$a0,$s1,-3184
    la	$a4,sub_0dbf0000
    sltiu	$at,$a0,10
    sll	$a0,$a0,0x2
    addiu	$a4,$a4,-11136
    beqz	$at,.L0da8a918
    addu	$a0,$a0,$a4
    lw	$a4,%lo(jtbl_0dbed480)($a0)
    # Line 4911
    lui	$v0,0xffff
    sll	$v1,$s1,0x2
    # Line 4876
    jr	$a4
    # Line 4888
    addiu	$a0,$s2,32708
.L0da8a7c0:
    # Line 4881
    li	$at,1
    sd	$at,16($sp)
.L0da8a7c8:
    # Line 4882
    ld	$v0,16($sp)
    beqz	$v0,.L0da8a970
    lw	$a1,32096($s2)
    # Line 4885
    ori	$a4,$a1,0x8
    # Line 4886
    lw	$v1,32704($s2)
    # Line 4885
    sw	$a4,32096($s2)
    # Line 4887
    li	$a4,-2
    # Line 4886
    ori	$v1,$v1,0x2
    # Line 4887
    and	$v1,$v1,$a4
    sw	$v1,32704($s2)
.L0da8a7f0:
    # Line 4896
    lui	$v0,0xffff
    ori	$v0,$v0,0x6e78
    sll	$v1,$s1,0x2
    subu	$v1,$v1,$s1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s2
    addu	$v0,$v0,$v1
    sw	$s0,0($v0)
    lw	$at,0($a0)
    sltu	$at,$at,$s0
    bnez	$at,.L0da8a8f4
.L0da8a81c:
    # Line 4900
    nop	# was lw $t9, -32736($gp) # &sub_0da90000
    move	$a1,$s0
    addiu	$t9,$t9,-23784
    bal __glMgrim_PixelTransferi
    move	$a2,$s3
    ld	$ra,64($sp)
.L0da8a834:
    ld	$gp,40($sp)
    # Line 4935
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$s2,48($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da8a850:
    # Line 4911
    subu	$v1,$v1,$s1
    # Line 4907
    lw	$a0,32096($s2)
    # Line 4911
    ori	$v0,$v0,0x6e78
    # Line 4907
    ori	$a0,$a0,0x10
    # Line 4911
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s2
    addu	$v0,$v0,$v1
    # Line 4908
    lw	$v1,32704($s2)
    # Line 4907
    sw	$a0,32096($s2)
    # Line 4909
    li	$a0,-5
    # Line 4908
    ori	$v1,$v1,0x8
    # Line 4909
    and	$v1,$v1,$a0
    sw	$v1,32704($s2)
    # Line 4911
    sw	$s0,0($v0)
    lw	$at,32720($s2)
    sltu	$at,$at,$s0
    bnez	$at,.L0da8a994
    addiu	$a0,$s2,32720
.L0da8a898:
    # Line 4917
    # lw $t9, -32736($gp) # &sub_0da90000
    move	$a1,$s0
    move	$a3,$s3
    addiu	$t9,$t9,-24604
    bal __glMgrim_PixelTransferi
    addiu	$a2,$s1,-3186
    b	.L0da8a834
    ld	$ra,64($sp)
.L0da8a8b8:
    # Line 4928
    lw	$at,32096($s2)
    ori	$at,$at,0x20
    b	.L0da8a834
    sw	$at,32096($s2)
.L0da8a8c8:
    # Line 4875
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    ld	$gp,40($sp)
    # Line 4876
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$ra,64($sp)
    ld	$s2,48($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da8a8f4:
    sd	$a0,8($sp)
    # Line 4898
    # lw $t9, -32736($gp) # &sub_0da90000
    move	$a0,$s2
    move	$a2,$s0
    addiu	$t9,$t9,-25544
    bal __glMgrim_PixelTransferi
    ld	$a1,8($sp)
    b	.L0da8a81c
    ld	$a0,8($sp)
.L0da8a918:
    # Line 4932
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,40($sp)
    # Line 4933
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$ra,64($sp)
    ld	$s2,48($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da8a944:
    # Line 4862
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,40($sp)
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$ra,64($sp)
    ld	$s2,48($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da8a970:
    # Line 4893
    addiu	$a0,$s2,32732
    # Line 4890
    ori	$v0,$a1,0x4
    # Line 4891
    lw	$at,32704($s2)
    # Line 4890
    sw	$v0,32096($s2)
    # Line 4892
    li	$v0,-17
    # Line 4891
    ori	$at,$at,0x20
    # Line 4892
    and	$at,$at,$v0
    b	.L0da8a7f0
    sw	$at,32704($s2)
.L0da8a994:
    sd	$a0,0($sp)
    # Line 4915
    # lw $t9, -32736($gp) # &sub_0da90000
    move	$a0,$s2
    move	$a2,$s0
    addiu	$t9,$t9,-25544
    bal __glMgrim_PixelTransferi
    ld	$a1,0($sp)
    b	.L0da8a898
    ld	$a0,0($sp)
.end __glMgrim_PixelMapuiv

# Function: __glMgrim_PixelMapusv
# Declared: Line 4938 (Source lines: 4938-5016)
# Address: 0x0da8a9b8 - 0x0da8ac48 (Size: 656 bytes, Frame: 240)
.globl __glMgrim_PixelMapusv
.ent __glMgrim_PixelMapusv
__glMgrim_PixelMapusv:
    # Line 4945
    li	$v0,1
    # Line 4938
    addiu	$sp,$sp,-112
    sd	$ra,64($sp)
    sd	$s2,48($sp)
    # Line 4945
    lw	$s2,__glCurrentContext
    sd	$s3,56($sp)
    # Line 4938
    move	$s3,$a2
    sd	$s0,32($sp)
    move	$s0,$a1
    sd	$s1,24($sp)
    move	$s1,$a0
    sd	$gp,40($sp)
    # Line 4945
    lw	$at,__glBeginMode
    # Line 4938
    lui	$v1,0x17
    addiu	$v1,$v1,15584
    # Line 4945
    beq	$at,$v0,.L0da8abd4
    # Line 4938
    addu	$gp,$t9,$v1
    sd	$zero,16($sp)
    # Line 4954
    # lw $t9, -29172($gp) # &__glim_PixelMapusv
    move	$a0,$s1
    move	$a1,$s0
    jal	__glim_PixelMapusv
    move	$a2,$s3
    slti	$a4,$s0,4097
    beqz	$a4,.L0da8ab58
    ld	$ra,64($sp)
    # Line 4959
    addiu	$a0,$s1,-3184
    la	$a4,sub_0dbf0000
    sltiu	$at,$a0,10
    sll	$a0,$a0,0x2
    addiu	$a4,$a4,-11096
    beqz	$at,.L0da8aba8
    addu	$a0,$a0,$a4
    lw	$a4,%lo(jtbl_0dbed4a8)($a0)
    # Line 4993
    lui	$v0,0xffff
    sll	$v1,$s1,0x2
    # Line 4959
    jr	$a4
    # Line 4970
    addiu	$a0,$s2,32708
.L0da8aa50:
    # Line 4964
    li	$at,1
    sd	$at,16($sp)
.L0da8aa58:
    # Line 4965
    ld	$v0,16($sp)
    beqz	$v0,.L0da8ac00
    lw	$a1,32096($s2)
    # Line 4967
    ori	$a4,$a1,0x8
    # Line 4968
    lw	$v1,32704($s2)
    # Line 4967
    sw	$a4,32096($s2)
    # Line 4969
    li	$a4,-2
    # Line 4968
    ori	$v1,$v1,0x2
    # Line 4969
    and	$v1,$v1,$a4
    sw	$v1,32704($s2)
.L0da8aa80:
    # Line 4978
    lui	$v0,0xffff
    ori	$v0,$v0,0x6e78
    sll	$v1,$s1,0x2
    subu	$v1,$v1,$s1
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s2
    addu	$v0,$v0,$v1
    sw	$s0,0($v0)
    lw	$at,0($a0)
    sltu	$at,$at,$s0
    bnez	$at,.L0da8ab84
.L0da8aaac:
    # Line 4982
    nop	# was lw $t9, -32736($gp) # &sub_0da90000
    move	$a1,$s0
    addiu	$t9,$t9,-23592
    bal __glMgrim_PixelTransferi
    move	$a2,$s3
    ld	$ra,64($sp)
.L0da8aac4:
    ld	$gp,40($sp)
    # Line 5016
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$s2,48($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da8aae0:
    # Line 4993
    subu	$v1,$v1,$s1
    # Line 4989
    lw	$a0,32096($s2)
    # Line 4993
    ori	$v0,$v0,0x6e78
    # Line 4989
    ori	$a0,$a0,0x10
    # Line 4993
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$s2
    addu	$v0,$v0,$v1
    # Line 4990
    lw	$v1,32704($s2)
    # Line 4989
    sw	$a0,32096($s2)
    # Line 4991
    li	$a0,-5
    # Line 4990
    ori	$v1,$v1,0x8
    # Line 4991
    and	$v1,$v1,$a0
    sw	$v1,32704($s2)
    # Line 4993
    sw	$s0,0($v0)
    lw	$at,32720($s2)
    sltu	$at,$at,$s0
    bnez	$at,.L0da8ac24
    addiu	$a0,$s2,32720
.L0da8ab28:
    # Line 4999
    # lw $t9, -32736($gp) # &sub_0da90000
    move	$a1,$s0
    move	$a3,$s3
    addiu	$t9,$t9,-24352
    bal __glMgrim_PixelTransferi
    addiu	$a2,$s1,-3186
    b	.L0da8aac4
    ld	$ra,64($sp)
.L0da8ab48:
    # Line 5009
    lw	$at,32096($s2)
    ori	$at,$at,0x20
    b	.L0da8aac4
    sw	$at,32096($s2)
.L0da8ab58:
    # Line 4958
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    ld	$gp,40($sp)
    # Line 4959
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$ra,64($sp)
    ld	$s2,48($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da8ab84:
    sd	$a0,8($sp)
    # Line 4980
    # lw $t9, -32736($gp) # &sub_0da90000
    move	$a0,$s2
    move	$a2,$s0
    addiu	$t9,$t9,-25544
    bal __glMgrim_PixelTransferi
    ld	$a1,8($sp)
    b	.L0da8aaac
    ld	$a0,8($sp)
.L0da8aba8:
    # Line 5013
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,40($sp)
    # Line 5014
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$ra,64($sp)
    ld	$s2,48($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da8abd4:
    # Line 4945
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,40($sp)
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$ra,64($sp)
    ld	$s2,48($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da8ac00:
    # Line 4975
    addiu	$a0,$s2,32732
    # Line 4972
    ori	$v0,$a1,0x4
    # Line 4973
    lw	$at,32704($s2)
    # Line 4972
    sw	$v0,32096($s2)
    # Line 4974
    li	$v0,-17
    # Line 4973
    ori	$at,$at,0x20
    # Line 4974
    and	$at,$at,$v0
    b	.L0da8aa80
    sw	$at,32704($s2)
.L0da8ac24:
    sd	$a0,0($sp)
    # Line 4997
    # lw $t9, -32736($gp) # &sub_0da90000
    move	$a0,$s2
    move	$a2,$s0
    addiu	$t9,$t9,-25544
    bal __glMgrim_PixelTransferi
    ld	$a1,0($sp)
    b	.L0da8ab28
    ld	$a0,0($sp)
.end __glMgrim_PixelMapusv

# Function: __glMgrim_PixelZoom
# Declared: Line 5023 (Source lines: 5024-5142)
# Address: 0x0da8ac48 - 0x0da8b04c (Size: 1028 bytes, Frame: 32)
.globl __glMgrim_PixelZoom
.ent __glMgrim_PixelZoom
__glMgrim_PixelZoom:
    # Line 5028
    lw	$a1,__glCurrentContext
    li	$a4,1
    # Line 5024
    addiu	$sp,$sp,-32
    swc1	$f12,16($sp)
    swc1	$f13,24($sp)
    sd	$gp,0($sp)
    # Line 5028
    lw	$at,__glBeginMode
    # Line 5024
    lui	$v0,0x17
    addiu	$v0,$v0,14928
    # Line 5028
    beq	$at,$a4,.L0da8b020
    # Line 5024
    addu	$gp,$t9,$v0
    # Line 5028
    lw	$v1,16($sp)
    # Line 5096
    mtc1	$zero,$f8
    # Line 5028
    lui	$a2,0x7f00
    and	$v1,$v1,$a2
    beq	$v1,$a2,.L0da8afd8
    # Line 5038
    dmtc1	$zero,$f0
    # Line 5034
    lw	$a0,24($sp)
    and	$a0,$a0,$a2
    beql	$a0,$a2,.L0da8afe4
    ld	$gp,0($sp)
    # Line 5038
    cvt.d.s	$f5,$f12
    c.le.d	$f0,$f5
    li	$a3,1
    cvt.d.s	$f6,$f13
    bc1fl	.L0da8acb4
    move	$a3,$zero
.L0da8acb4:
    c.le.d	$f0,$f6
    li	$a2,1
    lw	$at,31676($a1)
    bc1fl	.L0da8acc8
    move	$a2,$zero
.L0da8acc8:
    beqz	$at,.L0da8ae74
    # Line 5081
    ldc1	$f4,_lit8_3ff0000000000000
    # Line 5038
    beqz	$a3,.L0da8ad24
    ldc1	$f1,_lit8_4018000000000000
    c.le.d	$f1,$f5
    nop
    bc1f	.L0da8ad48
    nop
    # Line 5071
    ldc1	$f12,_lit8_3fe0000000000000
    add.d	$f12,$f5,$f12
    trunc.w.d	$f12,$f12
    # Line 5074
    bnez	$a2,.L0da8ad4c
    # Line 5071
    cvt.s.w	$f12,$f12
.L0da8acfc:
    # Line 5078
    ldc1	$f0,_lit8_c018000000000000
    c.le.d	$f6,$f0
    nop
    bc1f	.L0da8ad74
    # Line 5081
    ldc1	$f4,_lit8_3ff0000000000000
    ldc1	$f13,_lit8_bfe0000000000000
    add.d	$f13,$f6,$f13
    trunc.w.d	$f13,$f13
    b	.L0da8ad70
    cvt.s.w	$f13,$f13
.L0da8ad24:
    # Line 5071
    ldc1	$f0,_lit8_c018000000000000
    c.le.d	$f5,$f0
    nop
    bc1f	.L0da8ad48
    nop
    # Line 5074
    ldc1	$f12,_lit8_bfe0000000000000
    add.d	$f12,$f5,$f12
    trunc.w.d	$f12,$f12
    cvt.s.w	$f12,$f12
.L0da8ad48:
    beqz	$a2,.L0da8acfc
.L0da8ad4c:
    ldc1	$f0,_lit8_4018000000000000
    c.le.d	$f0,$f6
    nop
    bc1f	.L0da8ad74
    # Line 5081
    ldc1	$f4,_lit8_3ff0000000000000
    # Line 5078
    ldc1	$f13,_lit8_3fe0000000000000
    add.d	$f13,$f6,$f13
    trunc.w.d	$f13,$f13
    cvt.s.w	$f13,$f13
.L0da8ad70:
    # Line 5081
    ldc1	$f4,_lit8_3ff0000000000000
.L0da8ad74:
    # Line 5096
    c.lt.s	$f12,$f8
.L0da8ad78:
    nop
    bc1f	.L0da8ad8c
    mov.s	$f6,$f12
    # Line 5100
    b	.L0da8ad90
    neg.s	$f5,$f6
.L0da8ad8c:
    mov.s	$f5,$f6
.L0da8ad90:
    cvt.d.s	$f6,$f5
    mov.s	$f7,$f5
    c.eq.d	$f6,$f4
    lw	$a2,32100($a1)
    # Line 5103
    lui	$at,0x1000
    # Line 5100
    bc1f	.L0da8ae2c
    # Line 5103
    ori	$at,$at,0x1000
    # Line 5104
    sw	$a4,32088($a1)
    # Line 5105
    li	$v0,256
    sw	$v0,32092($a1)
    # Line 5102
    lui	$v0,0x2000
    nor	$v0,$v0,$zero
    and	$a2,$a2,$v0
    # Line 5103
    or	$a2,$a2,$at
    sw	$a2,32100($a1)
.L0da8adcc:
    # Line 5131
    c.lt.s	$f13,$f8
    ld	$gp,0($sp)
    bc1f	.L0da8ade4
    mov.s	$f5,$f13
    # Line 5137
    b	.L0da8ade8
    neg.s	$f6,$f5
.L0da8ade4:
    mov.s	$f6,$f5
.L0da8ade8:
    cvt.d.s	$f0,$f6
    # Line 5141
    lui	$v0,0x4
    # Line 5137
    c.eq.d	$f0,$f4
    # Line 5135
    ori	$v1,$a2,0x800
    # Line 5137
    li	$a0,-2049
    bc1f	.L0da8ae0c
    and	$a0,$a2,$a0
    # Line 5135
    b	.L0da8ae10
    sw	$v1,32100($a1)
.L0da8ae0c:
    # Line 5137
    sw	$a0,32100($a1)
.L0da8ae10:
    # Line 5140
    swc1	$f13,724($a1)
    # Line 5141
    lw	$at,32096($a1)
    # Line 5139
    swc1	$f12,720($a1)
    # Line 5142
    addiu	$sp,$sp,32
    # Line 5141
    or	$at,$at,$v0
    # Line 5142
    jr	$ra
    # Line 5141
    sw	$at,32096($a1)
.L0da8ae2c:
    # Line 5105
    lwc1	$f5,_lit_43800000
    c.lt.d	$f6,$f4
    nop
    bc1fl	.L0da8af14
    # Line 5110
    trunc.w.s	$f0,$f12
    lwc1	$f1,_lit_3f800000
    div.s	$f1,$f1,$f7
    mul.s	$f1,$f1,$f5
    # Line 5109
    sw	$a4,32088($a1)
    # Line 5108
    lui	$at,0x3000
    # Line 5110
    trunc.w.s	$f1,$f1
    # Line 5107
    li	$v0,-4097
    and	$a2,$a2,$v0
    # Line 5108
    or	$a2,$a2,$at
    # Line 5110
    mfc1	$v1,$f1
    # Line 5108
    sw	$a2,32100($a1)
    # Line 5110
    b	.L0da8adcc
    sw	$v1,32092($a1)
.L0da8ae74:
    # Line 5081
    beqz	$a3,.L0da8aec8
    # Line 5086
    ldc1	$f0,_lit8_bff0000000000000
    # Line 5081
    c.le.d	$f4,$f5
    nop
    bc1f	.L0da8aee8
    nop
    # Line 5086
    ldc1	$f12,_lit8_3fe0000000000000
    add.d	$f12,$f5,$f12
    trunc.w.d	$f12,$f12
    # Line 5089
    bnez	$a2,.L0da8aef0
    # Line 5086
    cvt.s.w	$f12,$f12
    # Line 5093
    ldc1	$f0,_lit8_bff0000000000000
.L0da8aea4:
    c.le.d	$f6,$f0
    nop
    bc1fl	.L0da8ad78
    # Line 5096
    c.lt.s	$f12,$f8
    ldc1	$f13,_lit8_bfe0000000000000
    add.d	$f13,$f6,$f13
    trunc.w.d	$f13,$f13
    b	.L0da8ad74
    cvt.s.w	$f13,$f13
.L0da8aec8:
    # Line 5086
    c.le.d	$f5,$f0
    nop
    bc1f	.L0da8aee8
    nop
    # Line 5089
    ldc1	$f12,_lit8_bfe0000000000000
    add.d	$f12,$f5,$f12
    trunc.w.d	$f12,$f12
    cvt.s.w	$f12,$f12
.L0da8aee8:
    beqz	$a2,.L0da8aea4
    # Line 5093
    ldc1	$f0,_lit8_bff0000000000000
.L0da8aef0:
    # Line 5089
    c.le.d	$f4,$f6
    nop
    bc1fl	.L0da8ad78
    # Line 5096
    c.lt.s	$f12,$f8
    # Line 5093
    ldc1	$f13,_lit8_3fe0000000000000
    add.d	$f13,$f6,$f13
    trunc.w.d	$f13,$f13
    b	.L0da8ad74
    cvt.s.w	$f13,$f13
.L0da8af14:
    # Line 5110
    cvt.s.w	$f0,$f0
    c.eq.s	$f0,$f12
    nop
    bc1f	.L0da8af54
    # Line 5119
    ldc1	$f2,_lit8_4018000000000000
    # Line 5116
    mul.s	$f1,$f7,$f5
    # Line 5115
    sw	$a4,32088($a1)
    # Line 5113
    ld	$v0,-14872($gp)
    # Line 5116
    trunc.w.s	$f1,$f1
    # Line 5114
    lui	$at,0x1000
    # Line 5113
    and	$a2,$a2,$v0
    # Line 5114
    or	$a2,$a2,$at
    # Line 5116
    mfc1	$v1,$f1
    # Line 5114
    sw	$a2,32100($a1)
    # Line 5116
    b	.L0da8adcc
    sw	$v1,32092($a1)
.L0da8af54:
    # Line 5118
    ld	$v0,-14864($gp)
    # Line 5119
    lui	$at,0x2000
    c.lt.d	$f2,$f6
    # Line 5118
    and	$a2,$a2,$v0
    # Line 5119
    or	$a2,$a2,$at
    bc1f	.L0da8afb8
    sw	$a2,32100($a1)
    # Line 5121
    li	$a3,12
    sw	$a3,32088($a1)
.L0da8af78:
    # Line 5129
    mtc1	$a3,$f7
    nop
    cvt.s.w	$f7,$f7
    div.s	$f7,$f12,$f7
    c.lt.s	$f7,$f8
    nop
    bc1f	.L0da8af9c
    # Line 5131
    mov.s	$f6,$f7
    neg.s	$f6,$f7
.L0da8af9c:
    lwc1	$f0,_lit_3f800000
    div.s	$f0,$f0,$f6
    mul.s	$f0,$f0,$f5
    trunc.w.s	$f0,$f0
    mfc1	$v1,$f0
    b	.L0da8adcc
    sw	$v1,32092($a1)
.L0da8afb8:
    # Line 5121
    ldc1	$f1,_lit8_4010000000000000
    c.lt.d	$f1,$f6
    nop
    bc1f	.L0da8afec
    # Line 5123
    ldc1	$f2,_lit8_4008000000000000
    li	$a3,6
    b	.L0da8af78
    sw	$a3,32088($a1)
.L0da8afd8:
    ld	$gp,0($sp)
    # Line 5034
    jr	$ra
    addiu	$sp,$sp,32
.L0da8afe4:
    # Line 5038
    jr	$ra
    addiu	$sp,$sp,32
.L0da8afec:
    # Line 5123
    c.lt.d	$f2,$f6
    nop
    bc1f	.L0da8b008
    # Line 5125
    ldc1	$f3,_lit8_4000000000000000
    li	$a3,4
    b	.L0da8af78
    sw	$a3,32088($a1)
.L0da8b008:
    c.lt.d	$f3,$f6
    nop
    bc1f	.L0da8b040
    # Line 5127
    li	$a3,3
    b	.L0da8af78
    sw	$a3,32088($a1)
.L0da8b020:
    # Line 5028
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da8b040:
    # Line 5129
    li	$a3,2
    b	.L0da8af78
    sw	$a3,32088($a1)
.end __glMgrim_PixelZoom

# Function: __glMgrim_PixelStorei
# Declared: Line 5147 (Source lines: 5148-5334)
# Address: 0x0da8b04c - 0x0da8b6b4 (Size: 1640 bytes, Frame: 32)
.globl __glMgrim_PixelStorei
.ent __glMgrim_PixelStorei
__glMgrim_PixelStorei:
    # Line 5151
    lw	$a3,__glCurrentContext
    li	$a5,1
    # Line 5148
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 5151
    lw	$at,__glBeginMode
    # Line 5148
    lui	$v0,0x17
    addiu	$v0,$v0,13900
    # Line 5151
    beq	$at,$a5,.L0da8b334
    # Line 5148
    addu	$gp,$t9,$v0
    # Line 5151
    li	$a4,0x806c
    sltu	$v1,$a0,$a4
    bnez	$v1,.L0da8b0a0
    # Line 5156
    sltu	$a2,$a4,$a0
    bnez	$a2,.L0da8b10c
    li	$a4,0x8140
    # Line 5165
    bltz	$a1,.L0da8b414
    # Line 5166
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 5169
    sw	$a1,1096($a3)
.L0da8b094:
    ld	$gp,0($sp)
    # Line 5334
    jr	$ra
    addiu	$sp,$sp,32
.L0da8b0a0:
    # Line 5156
    sltiu	$at,$a0,3328
    bnez	$at,.L0da8b0e8
    sltiu	$v0,$a0,3329
    bnez	$v0,.L0da8b19c
    sltiu	$v1,$a0,3332
    bnez	$v1,.L0da8b1a8
    sltiu	$a2,$a0,3333
    bnez	$a2,.L0da8b290
    li	$a4,0x806b
    sltu	$at,$a0,$a4
    bnez	$at,.L0da8b36c
    sltu	$v0,$a4,$a0
    bnez	$v0,.L0da8b260
    # Line 5331
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 5186
    bltz	$a1,.L0da8b5a8
    # Line 5187
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 5191
    b	.L0da8b094
    # Line 5190
    sw	$a1,1092($a3)
.L0da8b0e8:
    # Line 5156
    sltiu	$v1,$a0,3315
    bnez	$v1,.L0da8b148
    sltiu	$a2,$a0,3316
    beqz	$a2,.L0da8b1e0
    sltiu	$a2,$a0,3317
    # Line 5259
    bltz	$a1,.L0da8b488
    # Line 5260
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 5264
    b	.L0da8b094
    # Line 5263
    sw	$a1,1116($a3)
.L0da8b10c:
    # Line 5156
    sltu	$at,$a0,$a4
    bnez	$at,.L0da8b174
    sltu	$v0,$a4,$a0
    beqz	$v0,.L0da8b248
    li	$a4,0x8143
    sltu	$v1,$a0,$a4
    bnez	$v1,.L0da8b2fc
    sltu	$a2,$a4,$a0
    bnez	$a2,.L0da8b3dc
    li	$a4,0x8145
    # Line 5294
    bltz	$a1,.L0da8b588
    # Line 5298
    li	$at,0x8578
    addu	$at,$at,$a3
    # Line 5299
    b	.L0da8b094
    # Line 5298
    sw	$a1,0($at)
.L0da8b148:
    # Line 5156
    sltiu	$v0,$a0,3313
    bnez	$v0,.L0da8b1cc
    sltiu	$v1,$a0,3314
    bnez	$v1,.L0da8b328
    li	$a2,3314
    bne	$a0,$a2,.L0da8b260
    # Line 5331
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 5238
    bltz	$a1,.L0da8b4fc
    # Line 5239
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 5243
    b	.L0da8b094
    # Line 5242
    sw	$a1,1112($a3)
.L0da8b174:
    # Line 5156
    li	$a4,0x8131
    sltu	$at,$a0,$a4
    bnez	$at,.L0da8b218
    sltu	$v0,$a4,$a0
    bnez	$v0,.L0da8b2d8
    li	$a4,0x8133
    # Line 5158
    bltz	$a1,.L0da8b4e0
    # Line 5159
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 5163
    b	.L0da8b094
    # Line 5162
    sw	$a1,1104($a3)
.L0da8b19c:
    # Line 5217
    sltu	$v1,$zero,$a1
    # Line 5218
    b	.L0da8b094
    # Line 5217
    sb	$v1,1072($a3)
.L0da8b1a8:
    # Line 5156
    sltiu	$a2,$a0,3330
    bnez	$a2,.L0da8b27c
    sltiu	$at,$a0,3331
    beqz	$at,.L0da8b354
    li	$v1,3331
    # Line 5172
    bltz	$a1,.L0da8b550
    # Line 5173
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 5177
    b	.L0da8b094
    # Line 5176
    sw	$a1,1076($a3)
.L0da8b1cc:
    # Line 5156
    li	$v0,3312
    bne	$a0,$v0,.L0da8b25c
    # Line 5325
    sltu	$v1,$zero,$a1
    # Line 5326
    b	.L0da8b094
    # Line 5325
    sb	$v1,1108($a3)
.L0da8b1e0:
    # Line 5156
    bnez	$a2,.L0da8b2a0
    sltiu	$at,$a0,3318
    beqz	$at,.L0da8b260
    # Line 5331
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 5315
    beq	$a1,$a5,.L0da8b210
    li	$v0,2
    beq	$a1,$v0,.L0da8b210
    li	$v1,4
    beq	$a1,$v1,.L0da8b210
    li	$a2,8
    bne	$a1,$a2,.L0da8b430
    # Line 5320
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da8b210:
    # Line 5317
    b	.L0da8b094
    sw	$a1,1124($a3)
.L0da8b218:
    # Line 5156
    li	$a4,0x806e
    sltu	$at,$a0,$a4
    bnez	$at,.L0da8b2bc
    sltu	$v0,$a4,$a0
    beqz	$v0,.L0da8b404
    li	$v1,0x8130
    bne	$a0,$v1,.L0da8b260
    # Line 5331
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 5179
    bltz	$a1,.L0da8b61c
    # Line 5180
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 5184
    b	.L0da8b094
    # Line 5183
    sw	$a1,1100($a3)
.L0da8b248:
    # Line 5273
    bltz	$a1,.L0da8b4a4
    # Line 5277
    li	$a2,0x856c
    addu	$a2,$a2,$a3
    # Line 5278
    b	.L0da8b094
    # Line 5277
    sw	$a1,0($a2)
.L0da8b25c:
    # Line 5331
    # lw $t9, -27320($gp) # &__glSetError
.L0da8b260:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 5332
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da8b27c:
    # Line 5156
    li	$at,3329
    bne	$a0,$at,.L0da8b25c
    # Line 5220
    sltu	$v0,$zero,$a1
    # Line 5221
    b	.L0da8b094
    # Line 5220
    sb	$v0,1073($a3)
.L0da8b290:
    # Line 5200
    bltz	$a1,.L0da8b4c4
    # Line 5201
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 5205
    b	.L0da8b094
    # Line 5204
    sw	$a1,1084($a3)
.L0da8b2a0:
    # Line 5156
    li	$v1,3316
    bne	$a0,$v1,.L0da8b260
    # Line 5331
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 5266
    bltz	$a1,.L0da8b534
    # Line 5267
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 5271
    b	.L0da8b094
    # Line 5270
    sw	$a1,1120($a3)
.L0da8b2bc:
    # Line 5156
    li	$a2,0x806d
    bne	$a0,$a2,.L0da8b260
    # Line 5331
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 5252
    bltz	$a1,.L0da8b518
    # Line 5253
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 5257
    b	.L0da8b094
    # Line 5256
    sw	$a1,1128($a3)
.L0da8b2d8:
    # Line 5156
    sltu	$at,$a0,$a4
    bnez	$at,.L0da8b3a0
    sltu	$v0,$a4,$a0
    bnez	$v0,.L0da8b260
    # Line 5331
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 5224
    bltz	$a1,.L0da8b5c4
    # Line 5225
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 5229
    b	.L0da8b094
    # Line 5228
    sw	$a1,1140($a3)
.L0da8b2fc:
    # Line 5156
    li	$a4,0x8142
    sltu	$v1,$a0,$a4
    bnez	$v1,.L0da8b3bc
    sltu	$a2,$a4,$a0
    bnez	$a2,.L0da8b260
    # Line 5331
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 5287
    bltz	$a1,.L0da8b5e0
    # Line 5291
    li	$at,0x8574
    addu	$at,$at,$a3
    # Line 5292
    b	.L0da8b094
    # Line 5291
    sw	$a1,0($at)
.L0da8b328:
    # Line 5328
    sltu	$v0,$zero,$a1
    # Line 5329
    b	.L0da8b094
    # Line 5328
    sb	$v0,1109($a3)
.L0da8b334:
    # Line 5151
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da8b354:
    # Line 5156
    bne	$a0,$v1,.L0da8b260
    # Line 5331
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 5193
    bltz	$a1,.L0da8b600
    # Line 5194
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 5198
    b	.L0da8b094
    # Line 5197
    sw	$a1,1080($a3)
.L0da8b36c:
    # Line 5156
    li	$a2,3333
    bne	$a0,$a2,.L0da8b260
    # Line 5331
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 5207
    beq	$a1,$a5,.L0da8b398
    li	$at,2
    beq	$a1,$at,.L0da8b398
    li	$v0,4
    beq	$a1,$v0,.L0da8b398
    li	$v1,8
    bne	$a1,$v1,.L0da8b46c
    # Line 5212
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da8b398:
    # Line 5209
    b	.L0da8b094
    sw	$a1,1088($a3)
.L0da8b3a0:
    # Line 5156
    li	$a2,0x8132
    bne	$a0,$a2,.L0da8b260
    # Line 5331
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 5245
    bltz	$a1,.L0da8b638
    # Line 5246
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 5250
    b	.L0da8b094
    # Line 5249
    sw	$a1,1136($a3)
.L0da8b3bc:
    # Line 5156
    li	$at,0x8141
    bne	$a0,$at,.L0da8b260
    # Line 5331
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 5280
    bltz	$a1,.L0da8b654
    # Line 5284
    li	$v0,0x8570
    addu	$v0,$v0,$a3
    # Line 5285
    b	.L0da8b094
    # Line 5284
    sw	$a1,0($v0)
.L0da8b3dc:
    # Line 5156
    sltu	$v1,$a0,$a4
    bnez	$v1,.L0da8b44c
    sltu	$a2,$a4,$a0
    bnez	$a2,.L0da8b260
    # Line 5331
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 5308
    bltz	$a1,.L0da8b674
    # Line 5312
    li	$at,0x8580
    addu	$at,$at,$a3
    # Line 5313
    b	.L0da8b094
    # Line 5312
    sw	$a1,0($at)
.L0da8b404:
    # Line 5231
    bltz	$a1,.L0da8b56c
    # Line 5232
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 5236
    b	.L0da8b094
    # Line 5235
    sw	$a1,1132($a3)
.L0da8b414:
    sd	$ra,8($sp)
    # Line 5166
    jal	__glSetError
    li	$a0,1281
    # Line 5167
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da8b430:
    sd	$ra,8($sp)
    # Line 5320
    jalr	$t9
    li	$a0,1281
    # Line 5321
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da8b44c:
    # Line 5156
    li	$v0,0x8144
    bne	$a0,$v0,.L0da8b260
    # Line 5331
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 5301
    bltz	$a1,.L0da8b694
    # Line 5305
    li	$v1,0x857c
    addu	$v1,$v1,$a3
    # Line 5306
    b	.L0da8b094
    # Line 5305
    sw	$a1,0($v1)
.L0da8b46c:
    sd	$ra,8($sp)
    # Line 5212
    jal	__glSetError
    li	$a0,1281
    # Line 5213
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da8b488:
    sd	$ra,8($sp)
    # Line 5260
    jalr	$t9
    li	$a0,1281
    # Line 5261
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da8b4a4:
    # Line 5274
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 5275
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da8b4c4:
    sd	$ra,8($sp)
    # Line 5201
    jalr	$t9
    li	$a0,1281
    # Line 5202
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da8b4e0:
    sd	$ra,8($sp)
    # Line 5159
    jalr	$t9
    li	$a0,1281
    # Line 5160
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da8b4fc:
    sd	$ra,8($sp)
    # Line 5239
    jalr	$t9
    li	$a0,1281
    # Line 5240
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da8b518:
    sd	$ra,8($sp)
    # Line 5253
    jalr	$t9
    li	$a0,1281
    # Line 5254
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da8b534:
    sd	$ra,8($sp)
    # Line 5267
    jalr	$t9
    li	$a0,1281
    # Line 5268
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da8b550:
    sd	$ra,8($sp)
    # Line 5173
    jalr	$t9
    li	$a0,1281
    # Line 5174
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da8b56c:
    sd	$ra,8($sp)
    # Line 5232
    jalr	$t9
    li	$a0,1281
    # Line 5233
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da8b588:
    # Line 5295
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 5296
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da8b5a8:
    sd	$ra,8($sp)
    # Line 5187
    jalr	$t9
    li	$a0,1281
    # Line 5188
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da8b5c4:
    sd	$ra,8($sp)
    # Line 5225
    jalr	$t9
    li	$a0,1281
    # Line 5226
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da8b5e0:
    # Line 5288
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 5289
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da8b600:
    sd	$ra,8($sp)
    # Line 5194
    jalr	$t9
    li	$a0,1281
    # Line 5195
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da8b61c:
    sd	$ra,8($sp)
    # Line 5180
    jalr	$t9
    li	$a0,1281
    # Line 5181
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da8b638:
    sd	$ra,8($sp)
    # Line 5246
    jalr	$t9
    li	$a0,1281
    # Line 5247
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da8b654:
    # Line 5281
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 5282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da8b674:
    # Line 5309
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 5310
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da8b694:
    # Line 5302
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 5303
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_PixelStorei

# Function: __glMgrim_PixelStoref
# Declared: Line 5336 (Source lines: 5337-5379)
# Address: 0x0da8b6b4 - 0x0da8b9bc (Size: 776 bytes, Frame: 48)
.globl __glMgrim_PixelStoref
.ent __glMgrim_PixelStoref
__glMgrim_PixelStoref:
    # Line 5337
    addiu	$sp,$sp,-48
    sdc1	$f28,0($sp)
    mov.s	$f28,$f13
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,16($sp)
    li	$a2,0x806b
    lui	$v0,0x17
    addiu	$v0,$v0,12260
    sltu	$at,$a0,$a2
    bnez	$at,.L0da8b734
    addu	$gp,$t9,$v0
    # Line 5338
    sltu	$v1,$a2,$s0
    beqz	$v1,.L0da8b780
    li	$a0,0x8140
    sltu	$a1,$s0,$a0
    bnez	$a1,.L0da8b86c
    sltu	$at,$a0,$s0
    beqz	$at,.L0da8b780
    li	$a0,0x8143
    sltu	$v0,$s0,$a0
    bnez	$v0,.L0da8b94c
    sltu	$v1,$a0,$s0
    beqz	$v1,.L0da8b780
    li	$a0,0x8145
    sltu	$a1,$s0,$a0
    bnez	$a1,.L0da8b9a8
    sltu	$at,$a0,$s0
    bnez	$at,.L0da8b7f0
    sd	$ra,24($sp)
    b	.L0da8b784
    # Line 5360
    mtc1	$zero,$f0
.L0da8b734:
    # Line 5338
    sltiu	$v0,$s0,3328
    bnez	$v0,.L0da8b770
    sltiu	$v1,$s0,3329
    bnez	$v1,.L0da8b7cc
    sltiu	$a1,$s0,3331
    bnez	$a1,.L0da8b8bc
    sltiu	$at,$s0,3332
    bnez	$at,.L0da8b780
    sltiu	$v0,$s0,3333
    bnez	$v0,.L0da8b96c
    sltiu	$v1,$s0,3334
    beqz	$v1,.L0da8b7f0
    sd	$ra,24($sp)
    b	.L0da8b784
    # Line 5360
    mtc1	$zero,$f0
.L0da8b770:
    # Line 5338
    sltiu	$a1,$s0,3315
    bnez	$a1,.L0da8b848
    sltiu	$at,$s0,3316
    beqz	$at,.L0da8b8a0
.L0da8b780:
    # Line 5360
    mtc1	$zero,$f0
.L0da8b784:
    c.lt.s	$f28,$f0
    nop
    bc1f	.L0da8b81c
    sd	$ra,24($sp)
    # Line 5361
    lwc1	$f1,_lit_bf000000
    add.s	$f1,$f28,$f1
    trunc.w.s	$f1,$f1
    # lw $t9, -31804($gp) # &__glMgrim_PixelStorei
    mfc1	$a1,$f1
    bal __glMgrim_PixelStorei
    move	$a0,$s0
    ldc1	$f28,0($sp)
    ld	$ra,24($sp)
    b	.L0da8b810
    ld	$s0,8($sp)
.L0da8b7c0:
    # Line 5338
    li	$v0,3312
    bne	$s0,$v0,.L0da8b7f0
    sd	$ra,24($sp)
.L0da8b7cc:
    # Line 5370
    mtc1	$zero,$f2
.L0da8b7d0:
    c.eq.s	$f28,$f2
    nop
    bc1f	.L0da8b8f8
    sd	$ra,24($sp)
    # Line 5371
    # lw $t9, -31804($gp) # &__glMgrim_PixelStorei
    move	$a0,$s0
    bal __glMgrim_PixelStorei
    move	$a1,$zero
.L0da8b7f0:
    # Line 5376
    trunc.w.s	$f3,$f28
.L0da8b7f4:
    # lw $t9, -31804($gp) # &__glMgrim_PixelStorei
    mfc1	$a1,$f3
    bal __glMgrim_PixelStorei
    move	$a0,$s0
    ldc1	$f28,0($sp)
    ld	$ra,24($sp)
    ld	$s0,8($sp)
.L0da8b810:
    ld	$gp,16($sp)
    # Line 5379
    jr	$ra
    addiu	$sp,$sp,48
.L0da8b81c:
    # Line 5363
    lwc1	$f4,_lit_3f000000
    add.s	$f4,$f28,$f4
    trunc.w.s	$f4,$f4
    # lw $t9, -31804($gp) # &__glMgrim_PixelStorei
    mfc1	$a1,$f4
    bal __glMgrim_PixelStorei
    move	$a0,$s0
    ldc1	$f28,0($sp)
    ld	$ra,24($sp)
    b	.L0da8b810
    ld	$s0,8($sp)
.L0da8b848:
    # Line 5338
    sltiu	$v1,$s0,3313
    bnez	$v1,.L0da8b7c0
    sltiu	$a1,$s0,3314
    bnez	$a1,.L0da8b7cc
    li	$at,3314
    bne	$s0,$at,.L0da8b7f0
    sd	$ra,24($sp)
    b	.L0da8b784
    # Line 5360
    mtc1	$zero,$f0
.L0da8b86c:
    # Line 5338
    li	$a0,0x806e
    sltu	$v0,$s0,$a0
    bnez	$v0,.L0da8b8d8
    sltu	$v1,$a0,$s0
    beqz	$v1,.L0da8b780
    li	$a0,0x8133
    sltu	$a1,$s0,$a0
    bnez	$a1,.L0da8b980
    sltu	$at,$a0,$s0
    bnez	$at,.L0da8b7f0
    sd	$ra,24($sp)
    b	.L0da8b784
    # Line 5360
    mtc1	$zero,$f0
.L0da8b8a0:
    # Line 5338
    sltiu	$v0,$s0,3317
    bnez	$v0,.L0da8b910
    sltiu	$v1,$s0,3318
    beqz	$v1,.L0da8b7f0
    sd	$ra,24($sp)
    b	.L0da8b784
    # Line 5360
    mtc1	$zero,$f0
.L0da8b8bc:
    # Line 5338
    sltiu	$a1,$s0,3330
    bnez	$a1,.L0da8b924
    sltiu	$at,$s0,3331
    beqz	$at,.L0da8b7f0
    sd	$ra,24($sp)
    b	.L0da8b784
    # Line 5360
    mtc1	$zero,$f0
.L0da8b8d8:
    # Line 5338
    li	$a0,0x806d
    sltu	$v0,$s0,$a0
    bnez	$v0,.L0da8b938
    sltu	$v1,$a0,$s0
    bnez	$v1,.L0da8b7f0
    sd	$ra,24($sp)
    b	.L0da8b784
    # Line 5360
    mtc1	$zero,$f0
.L0da8b8f8:
    # Line 5373
    # lw $t9, -31804($gp) # &__glMgrim_PixelStorei
    move	$a0,$s0
    bal __glMgrim_PixelStorei
    li	$a1,1
    b	.L0da8b7f4
    # Line 5376
    trunc.w.s	$f3,$f28
.L0da8b910:
    # Line 5338
    li	$a1,3316
    bne	$s0,$a1,.L0da8b7f0
    sd	$ra,24($sp)
    b	.L0da8b784
    # Line 5360
    mtc1	$zero,$f0
.L0da8b924:
    # Line 5338
    li	$at,3329
    bne	$s0,$at,.L0da8b7f0
    sd	$ra,24($sp)
    b	.L0da8b7d0
    # Line 5370
    mtc1	$zero,$f2
.L0da8b938:
    # Line 5338
    li	$v0,0x806c
    bne	$s0,$v0,.L0da8b7f0
    sd	$ra,24($sp)
    b	.L0da8b784
    # Line 5360
    mtc1	$zero,$f0
.L0da8b94c:
    # Line 5338
    li	$a0,0x8142
    sltu	$v1,$s0,$a0
    bnez	$v1,.L0da8b994
    sltu	$a1,$a0,$s0
    bnez	$a1,.L0da8b7f0
    sd	$ra,24($sp)
    b	.L0da8b784
    # Line 5360
    mtc1	$zero,$f0
.L0da8b96c:
    # Line 5338
    li	$at,3332
    bne	$s0,$at,.L0da8b7f0
    sd	$ra,24($sp)
    b	.L0da8b784
    # Line 5360
    mtc1	$zero,$f0
.L0da8b980:
    # Line 5338
    li	$v0,0x8131
    bne	$s0,$v0,.L0da8b7f0
    sd	$ra,24($sp)
    b	.L0da8b784
    # Line 5360
    mtc1	$zero,$f0
.L0da8b994:
    # Line 5338
    li	$v1,0x8141
    bne	$s0,$v1,.L0da8b7f0
    sd	$ra,24($sp)
    b	.L0da8b784
    # Line 5360
    mtc1	$zero,$f0
.L0da8b9a8:
    # Line 5338
    li	$a1,0x8144
    bne	$s0,$a1,.L0da8b7f0
    sd	$ra,24($sp)
    b	.L0da8b784
    # Line 5360
    mtc1	$zero,$f0
.end __glMgrim_PixelStoref

# Function: __glMgrFastReadPixels
# Declared: Line 5384 (Source lines: 5386-5391)
# Address: 0x0da8b9bc - 0x0da8ba28 (Size: 108 bytes, Frame: 144)
.globl __glMgrFastReadPixels
.ent __glMgrFastReadPixels
__glMgrFastReadPixels:
    # Line 5386
    move	$t0,$a5
    # Line 5389
    move	$a5,$zero
    # Line 5386
    move	$v1,$a4
    # Line 5389
    move	$a4,$zero
    # Line 5386
    move	$at,$a1
    # Line 5389
    li	$a1,2
    # Line 5386
    addiu	$sp,$sp,-1680
    # Line 5389
    addiu	$a0,$sp,32
    sw	$t0,12($sp)
    sw	$t0,4($sp)
    sw	$a7,28($sp)
    move	$a7,$v1
    sw	$a6,20($sp)
    # Line 5386
    move	$a6,$a3
    sd	$gp,1600($sp)
    lui	$v0,0x17
    addiu	$v0,$v0,11484
    addu	$gp,$t9,$v0
    # Line 5389
    # lw $t9, -29768($gp) # &__glMgrMakePixelDesc
    # Line 5386
    move	$a3,$a2
    sd	$ra,1592($sp)
    # Line 5389
    jal	__glMgrMakePixelDesc
    move	$a2,$at
    # Line 5391
    ld	$ra,1592($sp)
    ld	$gp,1600($sp)
    jr	$ra
    addiu	$sp,$sp,1680
.end __glMgrFastReadPixels

# Function: __glMgrPickDrawPixels
# Declared: Line 5394 (Source lines: 5397-5410)
# Address: 0x0da8ba28 - 0x0da8ba6c (Size: 68 bytes, Frame: 208)
.globl __glMgrPickDrawPixels
.ent __glMgrPickDrawPixels
__glMgrPickDrawPixels:
    # Line 5397
    addiu	$sp,$sp,-80
    sd	$gp,0($sp)
    # Line 5403
    lbu	$at,30576($a0)
    # Line 5397
    lui	$v0,0x17
    addiu	$v0,$v0,11376
    addu	$gp,$t9,$v0
    # Line 5403
    bnez	$at,.L0da8ba50
    la	$t0,__glSlowPickDrawPixels
    sd	$ra,8($sp)
    # Line 5406
    la	$t0,__glMgrFastDrawPixels
.L0da8ba50:
    sd	$ra,8($sp)
    # Line 5409
    jalr	$t0
    move	$t9,$t0
    # Line 5410
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrPickDrawPixels

# Function: __glMgrPickReadPixels
# Declared: Line 5413 (Source lines: 5416-5429)
# Address: 0x0da8ba6c - 0x0da8bab0 (Size: 68 bytes, Frame: 208)
.globl __glMgrPickReadPixels
.ent __glMgrPickReadPixels
__glMgrPickReadPixels:
    # Line 5416
    addiu	$sp,$sp,-80
    sd	$gp,0($sp)
    # Line 5422
    lbu	$at,30576($a0)
    # Line 5416
    lui	$v0,0x17
    addiu	$v0,$v0,11308
    addu	$gp,$t9,$v0
    # Line 5422
    bnez	$at,.L0da8ba94
    la	$t1,__glSlowPickReadPixels
    sd	$ra,8($sp)
    # Line 5425
    la	$t1,__glMgrFastReadPixels
.L0da8ba94:
    sd	$ra,8($sp)
    # Line 5428
    jalr	$t1
    move	$t9,$t1
    # Line 5429
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrPickReadPixels

# Function: __glMgrLoadPolygonStippleRAM
# Declared: Line 5432 (Source lines: 5438-5442)
# Address: 0x0da8bab0 - 0x0da8baf4 (Size: 68 bytes, Frame: 0)
.globl __glMgrLoadPolygonStippleRAM
.ent __glMgrLoadPolygonStippleRAM
__glMgrLoadPolygonStippleRAM:
    # Line 5438
    addiu	$a3,$a0,128
    li	$at,20096
    lui	$a2,0x7
    ori	$a2,$a2,0x4080
    sw	$at,0($a2)
.L0da8bac4:
    # Line 5440
    lw	$a1,488($a0)
    sw	$a1,0($a2)
    lw	$v1,492($a0)
    sw	$v1,0($a2)
    lw	$v0,496($a0)
    sw	$v0,0($a2)
    lw	$at,500($a0)
    # Line 5439
    addiu	$a0,$a0,16
    bne	$a0,$a3,.L0da8bac4
    # Line 5440
    sw	$at,0($a2)
    # Line 5442
    jr	$ra
    nop
.end __glMgrLoadPolygonStippleRAM

# Function: __glMgrConvertStipple
# Declared: Line 5445 (Source lines: 5446-5449)
# Address: 0x0da8baf4 - 0x0da8bb3c (Size: 72 bytes, Frame: 48)
.globl __glMgrConvertStipple
.ent __glMgrConvertStipple
__glMgrConvertStipple:
    # Line 5446
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    lui	$at,0x17
    addiu	$at,$at,11172
    addu	$gp,$t9,$at
    # Line 5447
    # lw $t9, -26728($gp) # &__glConvertStipple
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glConvertStipple
    # Line 5446
    move	$s8,$a0
    # Line 5448
    # lw $t9, -31792($gp) # &__glMgrLoadPolygonStippleRAM
    bal __glMgrLoadPolygonStippleRAM
    move	$a0,$s8
    # Line 5449
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrConvertStipple

.late_rodata
jtbl_0dbed458:
    .word .L0da8a530
    .word .L0da8a538
    .word .L0da8a5c0
    .word .L0da8a5c0
    .word .L0da8a5c0
    .word .L0da8a5c0
    .word .L0da8a628
    .word .L0da8a628
    .word .L0da8a628
    .word .L0da8a628
jtbl_0dbed480:
    .word .L0da8a7c0
    .word .L0da8a7c8
    .word .L0da8a850
    .word .L0da8a850
    .word .L0da8a850
    .word .L0da8a850
    .word .L0da8a8b8
    .word .L0da8a8b8
    .word .L0da8a8b8
    .word .L0da8a8b8
jtbl_0dbed4a8:
    .word .L0da8aa50
    .word .L0da8aa58
    .word .L0da8aae0
    .word .L0da8aae0
    .word .L0da8aae0
    .word .L0da8aae0
    .word .L0da8ab48
    .word .L0da8ab48
    .word .L0da8ab48
    .word .L0da8ab48

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4000000000000000:
    .word 0x40000000, 0x00000000
_lit8_4008000000000000:
    .word 0x40080000, 0x00000000
_lit8_4010000000000000:
    .word 0x40100000, 0x00000000
_lit8_4018000000000000:
    .word 0x40180000, 0x00000000
_lit8_406fe00000000000:
    .word 0x406fe000, 0x00000000
_lit8_40e7fff000000000:
    .word 0x40e7fff0, 0x00000000
_lit8_40efffe000000000:
    .word 0x40efffe0, 0x00000000
_lit8_bfe0000000000000:
    .word 0xbfe00000, 0x00000000
_lit8_bff0000000000000:
    .word 0xbff00000, 0x00000000
_lit8_c018000000000000:
    .word 0xc0180000, 0x00000000
_lit8_c0e7fff000000000:
    .word 0xc0e7fff0, 0x00000000
_lit_37800080:
    .word 0x37800080
_lit_3f000000:
    .word 0x3f000000
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_40400000:
    .word 0x40400000
_lit_40800000:
    .word 0x40800000
_lit_437f0000:
    .word 0x437f0000
_lit_43800000:
    .word 0x43800000
_lit_453ff000:
    .word 0x453ff000
_lit_46400000:
    .word 0x46400000
_lit_477fff00:
    .word 0x477fff00
_lit_4f7fffff:
    .word 0x4f7fffff
_lit_bf000000:
    .word 0xbf000000

