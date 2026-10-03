# Source: ../MGRAS/mgras_bitmap.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_bitmap.c
# Total Functions: 3

.text

# Function: __glMgrGeneralBitmap
# Declared: Line 70 (Source lines: 73-256)
# Address: 0x0dadd024 - 0x0dadd6ec (Size: 1736 bytes, Frame: 176)
.ent __glMgrGeneralBitmap
__glMgrGeneralBitmap:
    # Line 73
    addiu	$sp,$sp,-304
    sd	$a0,152($sp)
    lw	$a3,4($a7)
    sd	$a1,176($sp)
    sdc1	$f16,8($sp)
    beqz	$a3,.L0dadd04c
    sdc1	$f17,0($sp)
    sd	$s8,80($sp)
    # Line 82
    b	.L0dadd054
    move	$a1,$a3
.L0dadd04c:
    sd	$s8,80($sp)
    ld	$a1,152($sp)
.L0dadd054:
    ld	$at,152($sp)
    sd	$s7,72($sp)
    # Line 85
    addiu	$at,$at,63
    sra	$at,$at,0x6
    sll	$at,$at,0x3
    sd	$at,112($sp)
    srl	$at,$at,0x2
    sd	$at,184($sp)
    sltiu	$at,$at,11
    beqz	$at,.L0dadd0ac
    lw	$s8,16($a7)
    sd	$s3,56($sp)
    sd	$s0,64($sp)
    sdc1	$f28,216($sp)
    # Line 92
    la	$at,sub_0dbe0000
    ld	$s7,184($sp)
    sdc1	$f30,224($sp)
    addiu	$at,$at,-15320
    sll	$s7,$s7,0x2
    addu	$s7,$s7,$at
    b	.L0dadd0d8
    lw	$s7,0($s7)
.L0dadd0ac:
    # Line 94
    ld	$at,184($sp)
    li	$v0,512
    divu	$zero,$v0,$at
    sd	$s3,56($sp)
    sd	$s0,64($sp)
    sdc1	$f28,216($sp)
    sdc1	$f30,224($sp)
    teq	$at,$zero,0x7
    mflo	$s7
    nop
    nop
.L0dadd0d8:
    # Line 105
    mov.s	$f28,$f14
    mov.s	$f30,$f15
    ld	$a0,176($sp)
    # Line 96
    lw	$s0,8($a7)
    addiu	$s3,$s8,-1
    sd	$s3,192($sp)
    nor	$s3,$s3,$zero
    addiu	$at,$a1,7
    srl	$at,$at,0x3
    sd	$at,200($sp)
    addu	$at,$at,$s8
    addiu	$at,$at,-1
    and	$s3,$s3,$at
    multu	$s0,$s3
    # Line 105
    sltu	$a0,$s7,$a0
    # Line 102
    ld	$v1,152($sp)
    lui	$a2,0x2
    li	$v0,8
    addiu	$v1,$v1,7
    sra	$v1,$v1,0x3
    sd	$v1,208($sp)
    andi	$v1,$v1,0x7
    subu	$v0,$v0,$v1
    # Line 96
    lw	$v1,12($a7)
    # Line 102
    nor	$a2,$a2,$zero
    # Line 104
    lui	$s0,0x7
    # Line 96
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f0
    # Line 104
    ori	$s0,$s0,0x4080
    # Line 102
    andi	$v0,$v0,0x7
    # Line 96
    cvt.d.l	$f0,$f0
    ldc1	$f1,_lit8_3fc0000000000000
    # Line 102
    andi	$v0,$v0,0x7
    sll	$v0,$v0,0xe
    # Line 96
    mul.d	$f0,$f0,$f1
    # Line 102
    ori	$v0,$v0,0xf
    and	$v0,$v0,$a2
    lbu	$v1,1($a7)
    # Line 96
    mflo	$at
    addu	$at,$at,$a6
    # Line 102
    sltu	$v1,$zero,$v1
    sll	$v1,$v1,0x11
    # Line 96
    trunc.w.d	$f0,$f0
    # Line 102
    or	$v0,$v0,$v1
    # Line 104
    li	$v1,0x9114
    sw	$v1,0($s0)
    # Line 96
    mfc1	$s3,$f0
    # Line 105
    sw	$v0,0($s0)
    beqz	$a0,.L0dadd6d0
    # Line 96
    addu	$s3,$s3,$at
    ld	$a2,152($sp)
    # Line 107
    sw	$a2,0($s0)
    # Line 108
    sw	$s7,0($s0)
    # Line 109
    swc1	$f28,0($s0)
    # Line 110
    swc1	$f30,0($s0)
.L0dadd1b8:
    sd	$s2,104($sp)
    sd	$s6,48($sp)
    sd	$ra,16($sp)
    sd	$s4,24($sp)
    sd	$s1,32($sp)
    sd	$s5,40($sp)
    # Line 122
    beqz	$a0,.L0dadd52c
    sd	$zero,168($sp)
    sd	$s2,104($sp)
    sd	$ra,16($sp)
    sd	$s4,24($sp)
    sd	$s1,32($sp)
    sd	$s5,40($sp)
    lui	$s6,0x8000
    addiu	$at,$s7,-1
    sd	$at,160($sp)
    ld	$v1,152($sp)
    ld	$v0,184($sp)
    ld	$at,112($sp)
    addiu	$a2,$v1,-1
    multu	$v0,$s7
    andi	$v1,$v1,0xffff
    sd	$v1,120($sp)
    addiu	$v0,$v0,1
    sd	$a2,136($sp)
    sll	$a2,$s7,0x10
    sd	$v0,96($sp)
    lui	$v0,0xf
    ori	$v0,$v0,0xffff
    or	$v1,$v1,$a2
    sd	$v1,128($sp)
    and	$at,$at,$v0
    sd	$at,88($sp)
    mflo	$v1
    b	.L0dadd348
    sd	$v1,144($sp)
.L0dadd248:
    la	$a1,SYMBOL_LOCATION
    # Line 148
    lw	$a3,84($a1)
    ld	$v1,168($sp)
    lw	$a1,1168($a1)
    ld	$a2,160($sp)
    addu	$v1,$s7,$v1
    # Line 147
    ld	$a0,176($sp)
    # Line 148
    addu	$a2,$a2,$s7
    sd	$a2,160($sp)
    # Line 147
    subu	$a0,$a0,$s7
    sd	$a0,176($sp)
    # Line 148
    sltu	$a0,$s7,$a0
    beqz	$a0,.L0dadd44c
    sd	$v1,168($sp)
    li	$v1,4
    lui	$v0,0x8000
    ori	$v0,$v0,0x10
    li	$at,1
    li	$a2,31752
    # Line 150
    sw	$a2,0($s0)
    # Line 151
    sw	$at,0($s0)
    # Line 152
    sw	$v1,0($s0)
    # Line 154
    sw	$v0,0($s0)
    li	$v0,0x8060
    # Line 156
    ld	$v1,128($sp)
    li	$a2,339
    # Line 155
    sw	$a2,0($s0)
    # Line 156
    sw	$v1,0($s0)
    # Line 157
    sw	$a3,0($s0)
    # Line 158
    sw	$zero,0($s0)
    # Line 160
    sw	$v0,0($s0)
    # Line 170
    ld	$v0,168($sp)
    li	$a2,3
    li	$v1,32
    # Line 161
    sw	$at,0($s0)
    li	$at,8
    # Line 162
    sw	$a2,0($s0)
    # Line 171
    ld	$a2,136($sp)
    # Line 163
    sw	$v1,0($s0)
    # Line 172
    ld	$v1,160($sp)
    # Line 164
    sw	$a1,0($s0)
    # Line 165
    sw	$zero,0($s0)
    # Line 166
    sw	$zero,0($s0)
    # Line 168
    sw	$at,0($s0)
    # Line 169
    sw	$zero,0($s0)
    # Line 170
    sw	$v0,0($s0)
    # Line 173
    ld	$v0,152($sp)
    # Line 171
    sw	$a2,0($s0)
    # Line 172
    sw	$v1,0($s0)
    # Line 173
    sw	$v0,0($s0)
    # Line 174
    sw	$s7,0($s0)
    # Line 175
    swc1	$f28,0($s0)
    # Line 176
    swc1	$f30,0($s0)
    # Line 178
    sw	$at,0($s0)
    # Line 180
    ld	$at,168($sp)
    # Line 179
    sw	$zero,0($s0)
    # Line 180
    sw	$at,0($s0)
    # Line 181
    sw	$a2,0($s0)
    # Line 182
    sw	$v1,0($s0)
    # Line 183
    sw	$v0,0($s0)
    # Line 184
    sw	$s7,0($s0)
    # Line 185
    swc1	$f28,0($s0)
    # Line 186
    swc1	$f30,0($s0)
    # Line 224
    beqz	$a0,.L0dadd52c
.L0dadd348:
    li	$at,1
    # Line 126
    ld	$s5,144($sp)
    li	$v0,0x9008
    # Line 124
    sw	$v0,0($s0)
    # Line 125
    sw	$at,0($s0)
    # Line 126
    sw	$s5,0($s0)
    # Line 128
    beqz	$s7,.L0dadd248
    move	$s5,$zero
    b	.L0dadd3d8
    # Line 134
    ld	$a2,88($sp)
.L0dadd370:
    # Line 141
    addiu	$s2,$s2,1
.L0dadd374:
    addi	$a0,$a0,-1
    bnez	$a0,.L0dadd370
    # Line 140
    sw	$zero,0($s0)
    sra	$v1,$a1,0x2
.L0dadd384:
    beqz	$v1,.L0dadd3a8
    move	$a0,$s2
    move	$a1,$a0
.L0dadd390:
    # Line 141
    addiu	$a1,$a1,4
    # Line 140
    sw	$zero,0($s0)
    sw	$zero,0($s0)
    sw	$zero,0($s0)
    # Line 141
    bne	$a1,$s1,.L0dadd390
    # Line 140
    sw	$zero,0($s0)
.L0dadd3a8:
    # Line 141
    andi	$a2,$s1,0x1
    beqz	$a2,.L0dadd3b8
    # Line 128
    addiu	$s5,$s5,1
    # Line 143
    sw	$zero,0($s0)
.L0dadd3b8:
    # Line 145
    ld	$at,192($sp)
    addu	$v0,$v0,$s8
    addiu	$v0,$v0,-1
    nor	$at,$at,$zero
    and	$at,$at,$v0
    # Line 128
    beq	$s5,$s7,.L0dadd248
    # Line 145
    addu	$s3,$at,$s3
    # Line 134
    ld	$a2,88($sp)
.L0dadd3d8:
    andi	$v0,$s3,0x3
    sll	$v1,$v0,0x16
    or	$v1,$v1,$a2
    # Line 136
    ld	$s4,208($sp)
    # Line 134
    or	$v1,$v1,$s6
    sw	$v1,0($s0)
    # Line 136
    addu	$s4,$s4,$v0
    addiu	$s4,$s4,3
    srl	$s4,$s4,0x2
    beqz	$v0,.L0dadd440
    move	$s2,$s4
    ld	$s1,96($sp)
.L0dadd408:
    # Line 138
    # lw $t9, -18688($gp) # &__glMgr_PushPixels
    move	$a0,$s4
    li	$a1,-4
    jal	__glMgr_PushPixels
    and	$a1,$a1,$s3
    subu	$a1,$s1,$s4
    slt	$a2,$s4,$s1
    beqz	$a2,.L0dadd3a8
    # Line 145
    ld	$v0,200($sp)
    andi	$a0,$a1,0x3
    beqz	$a0,.L0dadd384
    sra	$v1,$a1,0x2
    b	.L0dadd374
    # Line 141
    addiu	$s2,$s2,1
.L0dadd440:
    ld	$s1,184($sp)
    # Line 137
    b	.L0dadd408
    nop
.L0dadd44c:
    # Line 210
    ld	$v1,176($sp)
    # Line 194
    ld	$at,120($sp)
    li	$v0,4
    sll	$a2,$v1,0x10
    or	$a2,$a2,$at
    li	$at,31752
    # Line 188
    sw	$at,0($s0)
    li	$at,1
    # Line 189
    sw	$at,0($s0)
    # Line 190
    sw	$v0,0($s0)
    lui	$v0,0x8000
    ori	$v0,$v0,0x10
    # Line 192
    sw	$v0,0($s0)
    li	$v0,339
    # Line 193
    sw	$v0,0($s0)
    # Line 194
    sw	$a2,0($s0)
    li	$a2,3
    li	$v0,0x8060
    # Line 195
    sw	$a3,0($s0)
    # Line 196
    sw	$zero,0($s0)
    # Line 198
    sw	$v0,0($s0)
    # Line 199
    sw	$at,0($s0)
    # Line 200
    sw	$a2,0($s0)
    # Line 210
    ld	$a2,168($sp)
    addu	$at,$v1,$a2
    li	$v0,32
    # Line 201
    sw	$v0,0($s0)
    li	$v0,8
    # Line 202
    sw	$a1,0($s0)
    # Line 203
    sw	$zero,0($s0)
    # Line 204
    sw	$zero,0($s0)
    # Line 206
    sw	$v0,0($s0)
    # Line 209
    ld	$v0,136($sp)
    # Line 207
    sw	$zero,0($s0)
    # Line 208
    sw	$a2,0($s0)
    # Line 209
    sw	$v0,0($s0)
    # Line 211
    ld	$v0,152($sp)
    # Line 210
    addiu	$at,$at,-1
    sw	$at,0($s0)
    # Line 211
    sw	$v0,0($s0)
    # Line 216
    li	$v0,8
    # Line 212
    sw	$v1,0($s0)
    # Line 213
    swc1	$f28,0($s0)
    # Line 214
    swc1	$f30,0($s0)
    # Line 216
    sw	$v0,0($s0)
    # Line 219
    ld	$v0,136($sp)
    # Line 217
    sw	$zero,0($s0)
    # Line 218
    sw	$a2,0($s0)
    # Line 221
    ld	$a2,152($sp)
    # Line 219
    sw	$v0,0($s0)
    # Line 220
    sw	$at,0($s0)
    # Line 221
    sw	$a2,0($s0)
    # Line 222
    sw	$v1,0($s0)
    # Line 223
    swc1	$f28,0($s0)
    # Line 224
    bnez	$a0,.L0dadd348
    swc1	$f30,0($s0)
.L0dadd52c:
    ld	$v0,176($sp)
    ldc1	$f28,216($sp)
    beqz	$v0,.L0dadd688
    ldc1	$f30,224($sp)
    # Line 230
    ld	$v0,184($sp)
    ld	$v1,176($sp)
    multu	$v1,$v0
    ldc1	$f28,216($sp)
    ldc1	$f30,224($sp)
    # Line 229
    li	$s5,1
    # Line 228
    li	$at,0x9008
    sw	$at,0($s0)
    # Line 229
    sw	$s5,0($s0)
    # Line 232
    move	$s5,$zero
    # Line 230
    mflo	$a2
    # Line 232
    blez	$v1,.L0dadd688
    # Line 230
    sw	$a2,0($s0)
    # Line 232
    li	$s7,-4
    lui	$s6,0x8000
    lui	$a2,0xf
    ld	$v1,112($sp)
    ld	$at,184($sp)
    ori	$a2,$a2,0xffff
    and	$v1,$v1,$a2
    addiu	$at,$at,1
    sd	$at,96($sp)
    b	.L0dadd5d4
    sd	$v1,88($sp)
.L0dadd59c:
    # Line 245
    andi	$v0,$s1,0x1
    beqzl	$v0,.L0dadd5b0
    # Line 232
    addiu	$s5,$s5,1
    # Line 247
    sw	$zero,0($s0)
    # Line 232
    addiu	$s5,$s5,1
.L0dadd5b0:
    # Line 249
    ld	$a2,192($sp)
    ld	$at,200($sp)
    # Line 232
    ld	$v1,176($sp)
    # Line 249
    nor	$a2,$a2,$zero
    addu	$at,$at,$s8
    addiu	$at,$at,-1
    and	$a2,$a2,$at
    # Line 232
    beq	$v1,$s5,.L0dadd688
    # Line 249
    addu	$s3,$a2,$s3
.L0dadd5d4:
    # Line 238
    ld	$v1,88($sp)
    andi	$at,$s3,0x3
    sll	$v0,$at,0x16
    or	$v0,$v0,$v1
    # Line 240
    ld	$s4,208($sp)
    # Line 238
    or	$v0,$v0,$s6
    sw	$v0,0($s0)
    # Line 240
    addu	$s4,$s4,$at
    addiu	$s4,$s4,3
    srl	$s4,$s4,0x2
    beqz	$at,.L0dadd680
    move	$s2,$s4
    ld	$s1,96($sp)
.L0dadd608:
    # Line 242
    # lw $t9, -18688($gp) # &__glMgr_PushPixels
    move	$a0,$s4
    jal	__glMgr_PushPixels
    and	$a1,$s7,$s3
    slt	$at,$s4,$s1
    beqz	$at,.L0dadd59c
    subu	$a0,$s1,$s4
    andi	$v0,$a0,0x1
    beqz	$v0,.L0dadd640
    slt	$v1,$s2,$s1
    beqzl	$v1,.L0dadd640
    # Line 245
    addiu	$s2,$s2,1
    # Line 244
    sw	$zero,0($s0)
    # Line 245
    addiu	$s2,$s2,1
.L0dadd640:
    sra	$a2,$a0,0x1
    beqz	$a2,.L0dadd59c
    nop
    b	.L0dadd660
    # Line 242
    slt	$at,$s2,$s1
.L0dadd654:
    # Line 245
    addiu	$s2,$s2,1
.L0dadd658:
    beq	$s2,$s1,.L0dadd59c
    # Line 242
    slt	$at,$s2,$s1
.L0dadd660:
    beqz	$at,.L0dadd66c
    # Line 245
    addiu	$s2,$s2,1
    # Line 244
    sw	$zero,0($s0)
.L0dadd66c:
    # Line 242
    slt	$v0,$s2,$s1
    beqzl	$v0,.L0dadd658
    # Line 245
    addiu	$s2,$s2,1
    b	.L0dadd654
    # Line 244
    sw	$zero,0($s0)
.L0dadd680:
    # Line 241
    b	.L0dadd608
    ld	$s1,184($sp)
.L0dadd688:
    # Line 256
    ld	$s1,32($sp)
    ld	$s2,104($sp)
    ld	$s3,56($sp)
    ld	$s4,24($sp)
    ld	$s5,40($sp)
    ld	$s6,48($sp)
    ld	$s7,72($sp)
    ld	$s8,80($sp)
    ld	$ra,16($sp)
    # Line 255
    ldc1	$f1,0($sp)
    # Line 254
    ldc1	$f2,8($sp)
    # Line 253
    li	$v1,0x9208
    sw	$v1,0($s0)
    # Line 254
    swc1	$f2,0($s0)
    # Line 255
    swc1	$f1,0($s0)
    # Line 256
    ld	$s0,64($sp)
    jr	$ra
    addiu	$sp,$sp,304
.L0dadd6d0:
    ld	$at,152($sp)
    # Line 113
    ld	$a2,176($sp)
    # Line 112
    sw	$at,0($s0)
    # Line 113
    sw	$a2,0($s0)
    # Line 114
    swc1	$f28,0($s0)
    b	.L0dadd1b8
    # Line 115
    swc1	$f30,0($s0)
.end __glMgrGeneralBitmap

# Function: __glMgrim_Bitmap
# Declared: Line 271 (Source lines: 273-332)
# Address: 0x0dadd6ec - 0x0dadda48 (Size: 860 bytes, Frame: 240)
.globl __glMgrim_Bitmap
.ent __glMgrim_Bitmap
__glMgrim_Bitmap:
    # Line 273
    mov.s	$f4,$f17
    mov.s	$f5,$f16
    # Line 278
    li	$a5,1
    # Line 273
    addiu	$sp,$sp,-112
    sd	$s0,24($sp)
    sd	$gp,16($sp)
    lui	$v0,0x12
    addiu	$v0,$v0,4012
    # Line 278
    lw	$at,__glBeginMode
    # Line 274
    lw	$a4,__glCurrentContext
    # Line 273
    addu	$gp,$t9,$v0
    # Line 278
    beq	$at,$a5,.L0dadd9a8
    move	$s0,$a4
    lw	$a3,3092($s0)
    li	$v1,7168
    beq	$a3,$v1,.L0dadd774
    # Line 308
    li	$at,7169
.L0dadd730:
    # Line 301
    bltz	$a0,.L0dadd954
    # Line 302
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 301
    bltz	$a1,.L0dadd950
    # Line 303
    li	$a2,7170
    beq	$a3,$a2,.L0dadd9cc
    # Line 307
    nop	# was lw $t9, -30260($gp) # &__glMgrUpdateRasterPos
    # Line 308
    beq	$a3,$at,.L0dadd8c4
    li	$v0,0x925c
    # Line 328
    beqz	$a0,.L0dadd8a0
    # Line 329
    nop	# was lw $t9, -30260($gp) # &__glMgrUpdateRasterPos
    # Line 328
    beqz	$a1,.L0dadd8a0
    # Line 329
    nop	# was lw $t9, -30260($gp) # &__glMgrUpdateRasterPos
    # Line 328
    beqz	$a6,.L0dadd89c
    # Line 332
    ld	$s0,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dadd774:
    # Line 278
    blez	$a0,.L0dadd730
    nop
    # Line 280
    blez	$a1,.L0dadd730
    nop
    beqz	$a6,.L0dadd730
    nop
    lw	$v0,1124($a4)
    bne	$v0,$a5,.L0dadd924
    # Line 295
    mov.s	$f16,$f5
    # Line 280
    lbu	$v1,1108($a4)
    bnez	$v1,.L0dadd924
    # Line 295
    mov.s	$f16,$f5
    # Line 281
    lbu	$a2,1109($a4)
    bnez	$a2,.L0dadd924
    # Line 295
    mov.s	$f16,$f5
    # Line 281
    lw	$at,1112($a4)
    bnez	$at,.L0dadd924
    # Line 295
    mov.s	$f16,$f5
    # Line 281
    lw	$v0,1116($a4)
    bnez	$v0,.L0dadd924
    # Line 295
    mov.s	$f16,$f5
    # Line 281
    lw	$v1,1120($a4)
    bnez	$v1,.L0dadd920
    addiu	$a7,$a0,7
    sra	$a7,$a7,0x3
    mult	$a7,$a1
    mflo	$a5
    addiu	$a5,$a5,3
    sra	$a3,$a5,0x2
    slti	$a2,$a3,513
    beqz	$a2,.L0dadda28
    # Line 291
    mov.s	$f16,$f5
    sd	$ra,32($sp)
    # Line 288
    lui	$t1,0x8000
    andi	$s0,$a3,0x1
    andi	$t0,$a6,0x3
    li	$t2,-4
    and	$a4,$a5,$t2
    lui	$at,0x7
    ori	$at,$at,0x4080
    andi	$v1,$a7,0x7
    li	$v0,8
    subu	$v0,$v0,$v1
    li	$v1,0x9420
    sw	$v1,0($at)
    andi	$v0,$v0,0x7
    andi	$v0,$v0,0x7
    sll	$v0,$v0,0xe
    ori	$v0,$v0,0xf
    sw	$v0,0($at)
    sw	$a0,0($at)
    sw	$a1,0($at)
    swc1	$f14,0($at)
    swc1	$f15,0($at)
    swc1	$f5,0($at)
    swc1	$f4,0($at)
    beqz	$t0,.L0dadd9f0
    sw	$a3,0($at)
    and	$a1,$t2,$a6
    addiu	$a0,$a3,1
    lui	$a5,0x7
    ori	$a5,$a5,0x4080
    # lw $t9, -18688($gp) # &__glMgr_PushPixels
    sll	$a2,$t0,0x16
    or	$a2,$a2,$a4
    or	$a2,$a2,$t1
    jal	__glMgr_PushPixels
    sw	$a2,0($a5)
    bnez	$s0,.L0dadd940
    ld	$ra,32($sp)
    lui	$at,0x7
    ori	$at,$at,0x4080
    b	.L0dadd940
    sw	$zero,0($at)
.L0dadd89c:
    # Line 329
    # lw $t9, -30260($gp) # &__glMgrUpdateRasterPos
.L0dadd8a0:
    mov.s	$f12,$f5
    sd	$ra,32($sp)
    bal __glMgrUpdateRasterPos
    mov.s	$f13,$f4
    # Line 330
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dadd8c4:
    # Line 308
    addu	$v0,$v0,$a4
    lw	$v0,0($v0)
    beqz	$v0,.L0dadd974
    sd	$ra,32($sp)
    sdc1	$f4,0($sp)
    # Line 313
    # lw $t9, -26988($gp) # &__glFeedbackBitmap
    sdc1	$f5,8($sp)
    move	$a0,$s0
    jal	__glFeedbackBitmap
    addiu	$a1,$s0,216
    # Line 319
    ldc1	$f2,0($sp)
    lwc1	$f1,348($s0)
    # Line 318
    lwc1	$f0,344($s0)
    # Line 319
    add.s	$f1,$f1,$f2
    # Line 318
    ldc1	$f2,8($sp)
    add.s	$f0,$f0,$f2
    ld	$ra,32($sp)
    # Line 319
    swc1	$f1,348($s0)
    # Line 318
    swc1	$f0,344($s0)
.L0dadd910:
    ld	$gp,16($sp)
    # Line 325
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dadd920:
    # Line 295
    mov.s	$f16,$f5
.L0dadd924:
    # lw $t9, -32716($gp) # &sub_0dae0000
    mov.s	$f17,$f4
    sd	$ra,32($sp)
    addiu	$t9,$t9,-12252
    bal __glMgrim_CopyConvolutionFilter2DEXT
    addiu	$a7,$a4,1108
    ld	$ra,32($sp)
.L0dadd940:
    ld	$gp,16($sp)
    # Line 298
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dadd950:
    # Line 302
    # lw $t9, -27320($gp) # &__glSetError
.L0dadd954:
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 303
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dadd974:
    # Line 323
    mov.s	$f13,$f4
    mov.s	$f12,$f5
    # lw $t9, -30260($gp) # &__glMgrUpdateRasterPos
    # Line 322
    li	$at,1796
    # Line 321
    lui	$v1,0x1
    ori	$v1,$v1,0x4
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    sw	$v1,0($v0)
    # Line 323
    bal __glMgrUpdateRasterPos
    # Line 322
    sw	$at,0($v0)
    b	.L0dadd910
    ld	$ra,32($sp)
.L0dadd9a8:
    # Line 278
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dadd9cc:
    # Line 307
    mov.s	$f12,$f5
    sd	$ra,32($sp)
    bal __glMgrUpdateRasterPos
    mov.s	$f13,$f4
    # Line 308
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dadd9f0:
    # Line 288
    move	$a1,$a6
    move	$a0,$a3
    or	$a2,$a4,$t1
    # lw $t9, -18688($gp) # &__glMgr_PushPixels
    lui	$a5,0x7
    ori	$a5,$a5,0x4080
    jal	__glMgr_PushPixels
    sw	$a2,0($a5)
    beqz	$s0,.L0dadd940
    ld	$ra,32($sp)
    lui	$at,0x7
    ori	$at,$at,0x4080
    b	.L0dadd940
    sw	$zero,0($at)
.L0dadda28:
    # Line 291
    # lw $t9, -32716($gp) # &sub_0dae0000
    mov.s	$f17,$f4
    sd	$ra,32($sp)
    addiu	$t9,$t9,-12252
    bal __glMgrim_CopyConvolutionFilter2DEXT
    addiu	$a7,$a4,1108
    b	.L0dadd940
    ld	$ra,32($sp)
.end __glMgrim_Bitmap

# Function: __glMgrRenderBitmap
# Declared: Line 335 (Source lines: 337-405)
# Address: 0x0dadda48 - 0x0daddde4 (Size: 924 bytes, Frame: 192)
.globl __glMgrRenderBitmap
.ent __glMgrRenderBitmap
__glMgrRenderBitmap:
    # Line 337
    li	$at,7168
    addiu	$sp,$sp,-64
    sd	$s0,8($sp)
    move	$s0,$a1
    sd	$s1,0($sp)
    move	$s1,$a0
    sd	$gp,16($sp)
    lw	$a4,3092($a0)
    lui	$v0,0x12
    addiu	$v0,$v0,3152
    beq	$a4,$at,.L0daddb60
    addu	$gp,$t9,$v0
    # Line 354
    lw	$a0,0($s0)
.L0dadda7c:
    # Line 357
    bltz	$a0,.L0daddcc0
    # Line 358
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 357
    lw	$v1,4($s0)
    # Line 364
    lui	$a0,0x1
    # Line 357
    bltz	$v1,.L0daddcbc
    # Line 364
    addu	$a0,$s1,$a0
    # Line 359
    li	$a3,7170
    beq	$a4,$a3,.L0daddd2c
    # Line 364
    li	$a3,7169
    beq	$a4,$a3,.L0daddc6c
    lw	$a0,-28068($a0)
    # Line 381
    beqz	$a0,.L0daddd58
    # Line 403
    nop	# was lw $t9, -30260($gp) # &__glMgrUpdateRasterPos
    # Line 381
    lw	$a3,1696($s1)
    lui	$at,0x4003
    and	$a3,$a3,$at
    beqzl	$a3,.L0daddaf0
    # Line 389
    lbu	$v0,3104($s1)
    # Line 388
    # lw $t9, -27792($gp) # &__glRenderBitmap
    move	$a0,$s1
    sd	$ra,24($sp)
    jal	__glRenderBitmap
    move	$a1,$s0
    ld	$gp,16($sp)
    # Line 389
    ld	$ra,24($sp)
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daddaf0:
    beqz	$v0,.L0daddce4
    sd	$ra,24($sp)
    # Line 392
    # lw $t9, -18580($gp) # &__glMgrim_Color4fv
    jal	__glMgrim_Color4fv
    addiu	$a0,$s1,360
    # Line 396
    # lw $t9, -18456($gp) # &__glMgrim_RasterPos2f
.L0daddb08:
    lwc1	$f13,348($s1)
    jal	__glMgrim_RasterPos2f
    lwc1	$f12,344($s1)
    # Line 399
    lwc1	$f0,344($s1)
    lwc1	$f3,16($s0)
    ld	$ra,24($sp)
    # Line 400
    lw	$v1,4556($s1)
    # Line 399
    add.s	$f3,$f3,$f0
    # Line 400
    lwc1	$f0,348($s1)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 399
    swc1	$f3,344($s1)
    # Line 400
    lwc1	$f1,20($s0)
    mul.s	$f1,$f1,$f2
    add.s	$f0,$f0,$f1
    swc1	$f0,348($s1)
.L0daddb4c:
    ld	$gp,16($sp)
    # Line 405
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daddb60:
    # Line 337
    li	$a0,0x925c
    addu	$a0,$a0,$s1
    lw	$a0,0($a0)
    bnez	$a0,.L0dadda7c
    lw	$a0,0($s0)
    # Line 342
    blez	$a0,.L0dadda7c
    nop
    lw	$a1,4($s0)
    blez	$a1,.L0dadda7c
    nop
    beqz	$a2,.L0dadda7c
    # Line 344
    addiu	$a5,$a0,7
    sra	$a5,$a5,0x3
    mult	$a1,$a5
    mflo	$a4
    addiu	$a4,$a4,3
    sra	$a4,$a4,0x2
    slti	$a3,$a4,513
    beqz	$a3,.L0daddda8
    # Line 350
    la	$a7,__glMgr_InternalUnpack
    sd	$ra,24($sp)
    # Line 346
    lui	$t0,0x8000
    andi	$s1,$a4,0x1
    sll	$a6,$a4,0x2
    andi	$a7,$a2,0x3
    lwc1	$f1,20($s0)
    lwc1	$f2,16($s0)
    lwc1	$f3,12($s0)
    lwc1	$f0,8($s0)
    lui	$at,0x7
    ori	$at,$at,0x4080
    andi	$v1,$a5,0x7
    li	$v0,8
    subu	$v0,$v0,$v1
    li	$v1,0x9420
    sw	$v1,0($at)
    andi	$v0,$v0,0x7
    andi	$v0,$v0,0x7
    sll	$v0,$v0,0xe
    ori	$v0,$v0,0xf
    sw	$v0,0($at)
    sw	$a0,0($at)
    sw	$a1,0($at)
    swc1	$f0,0($at)
    swc1	$f3,0($at)
    swc1	$f2,0($at)
    swc1	$f1,0($at)
    beqz	$a7,.L0daddd70
    sw	$a4,0($at)
    addiu	$a0,$a4,1
    lui	$a3,0x7
    ori	$a3,$a3,0x4080
    # lw $t9, -18688($gp) # &__glMgr_PushPixels
    li	$a1,-4
    and	$a1,$a2,$a1
    sll	$a2,$a7,0x16
    or	$a2,$a2,$a6
    or	$a2,$a2,$t0
    jal	__glMgr_PushPixels
    sw	$a2,0($a3)
    beqz	$s1,.L0dadddd4
    ld	$ra,24($sp)
.L0daddc58:
    ld	$gp,16($sp)
    # Line 354
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daddc6c:
    # Line 364
    beqz	$a0,.L0daddcf8
    sd	$ra,24($sp)
    # Line 369
    # lw $t9, -26988($gp) # &__glFeedbackBitmap
    move	$a0,$s1
    jal	__glFeedbackBitmap
    addiu	$a1,$s1,216
    # Line 374
    lwc1	$f0,344($s1)
    lwc1	$f3,16($s0)
    add.s	$f3,$f3,$f0
    swc1	$f3,344($s1)
    # Line 375
    lwc1	$f2,348($s1)
    lwc1	$f1,20($s0)
    add.s	$f1,$f1,$f2
    ld	$ra,24($sp)
    swc1	$f1,348($s1)
.L0daddca8:
    ld	$gp,16($sp)
    # Line 381
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daddcbc:
    # Line 358
    # lw $t9, -27320($gp) # &__glSetError
.L0daddcc0:
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$gp,16($sp)
    # Line 359
    ld	$ra,24($sp)
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daddce4:
    # Line 394
    # lw $t9, -18528($gp) # &__glMgrim_Indexf
    jal	__glMgrim_Indexf
    lwc1	$f12,360($s1)
    b	.L0daddb08
    # Line 396
    nop	# was lw $t9, -18456($gp) # &__glMgrim_RasterPos2f
.L0daddcf8:
    # Line 379
    lwc1	$f13,20($s0)
    lwc1	$f12,16($s0)
    # lw $t9, -30260($gp) # &__glMgrUpdateRasterPos
    # Line 378
    li	$a4,1796
    # Line 377
    lui	$a6,0x1
    ori	$a6,$a6,0x4
    lui	$a5,0x7
    ori	$a5,$a5,0x4080
    sw	$a6,0($a5)
    # Line 379
    bal __glMgrUpdateRasterPos
    # Line 378
    sw	$a4,0($a5)
    b	.L0daddca8
    ld	$ra,24($sp)
.L0daddd2c:
    # Line 363
    # lw $t9, -30260($gp) # &__glMgrUpdateRasterPos
    lwc1	$f13,20($s0)
    sd	$ra,24($sp)
    bal __glMgrUpdateRasterPos
    lwc1	$f12,16($s0)
    ld	$gp,16($sp)
    # Line 364
    ld	$ra,24($sp)
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0daddd58:
    # Line 403
    lwc1	$f13,20($s0)
    sd	$ra,24($sp)
    bal __glMgrUpdateRasterPos
    lwc1	$f12,16($s0)
    b	.L0daddb4c
    ld	$ra,24($sp)
.L0daddd70:
    # Line 346
    move	$a1,$a2
    move	$a0,$a4
    or	$a7,$a6,$t0
    # lw $t9, -18688($gp) # &__glMgr_PushPixels
    lui	$t1,0x7
    ori	$t1,$t1,0x4080
    jal	__glMgr_PushPixels
    sw	$a7,0($t1)
    beqz	$s1,.L0daddc58
    ld	$ra,24($sp)
    lui	$at,0x7
    ori	$at,$at,0x4080
    b	.L0daddc58
    sw	$zero,0($at)
.L0daddda8:
    # Line 350
    move	$a6,$a2
    lwc1	$f17,20($s0)
    lwc1	$f16,16($s0)
    # lw $t9, -32716($gp) # &sub_0dae0000
    lwc1	$f15,12($s0)
    sd	$ra,24($sp)
    addiu	$t9,$t9,-12252
    bal __glMgrim_CopyConvolutionFilter2DEXT
    lwc1	$f14,8($s0)
    b	.L0daddc58
    ld	$ra,24($sp)
.L0dadddd4:
    lui	$at,0x7
    ori	$at,$at,0x4080
    # Line 346
    b	.L0daddc58
    sw	$zero,0($at)
.end __glMgrRenderBitmap

.rdata
_lit8_3fc0000000000000:
    .word 0x3fc00000, 0x00000000

