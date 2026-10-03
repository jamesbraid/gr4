# Source: ../MGRAS/mgras_dlalloc.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_dlalloc.c
# Total Functions: 5

.text

# Function: __glMgrDLPoolToPtr
# Declared: Line 38 (Source lines: 45-45)
# Address: 0x0da8f7a4 - 0x0da8f7b0 (Size: 12 bytes, Frame: 0)
.globl __glMgrDLPoolToPtr
.ent __glMgrDLPoolToPtr
__glMgrDLPoolToPtr:
    # Line 45
    lw	$v0,0($a0)
    jr	$ra
    addu	$v0,$v0,$a1
.end __glMgrDLPoolToPtr

# Function: __glMgrDLAllocInit
# Declared: Line 56 (Source lines: 57-113)
# Address: 0x0da8f7b0 - 0x0da8f8f0 (Size: 320 bytes, Frame: 48)
.globl __glMgrDLAllocInit
.ent __glMgrDLAllocInit
__glMgrDLAllocInit:
    # Line 57
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    lw	$v0,16($a0)
    lui	$v1,0x17
    addiu	$v1,$v1,-4376
    sltiu	$at,$v0,257
    beqz	$at,.L0da8f8cc
    addu	$gp,$t9,$v1
.L0da8f7d8:
    # Line 88
    lw	$a2,20($s0)
    move	$v0,$s0
    addiu	$a2,$a2,-9
    sw	$a2,76($s0)
    sd	$s1,24($sp)
    # Line 98
    move	$s1,$zero
    # Line 94
    sw	$zero,124($v0)
    sw	$zero,120($v0)
    sw	$zero,116($v0)
    sw	$zero,112($v0)
    sw	$zero,108($v0)
    sw	$zero,104($v0)
    sw	$zero,100($v0)
    sw	$zero,96($v0)
    sw	$zero,92($v0)
    sw	$zero,88($v0)
    # Line 98
    li	$a0,255
    lw	$a3,16($s0)
    beqz	$a3,.L0da8f848
    # Line 96
    sw	$zero,84($s0)
    # Line 98
    move	$v0,$s0
.L0da8f82c:
    # Line 99
    sb	$a0,128($v0)
    # Line 98
    lw	$at,16($s0)
    addiu	$s1,$s1,1
    sltu	$at,$s1,$at
    bnez	$at,.L0da8f82c
    addiu	$v0,$v0,1
    sd	$ra,16($sp)
.L0da8f848:
    # Line 105
    move	$a1,$zero
    # lw $t9, -31592($gp) # &__glMgrDLPoolToPtr
    move	$a0,$s0
    sd	$ra,16($sp)
    bal __glMgrDLPoolToPtr
    # Line 104
    sw	$zero,80($s0)
    # Line 105
    move	$a4,$v0
    # Line 106
    lw	$v0,16($s0)
    li	$s1,1
    sltiu	$v0,$v0,2
    bnez	$v0,.L0da8f8ac
    ld	$ra,16($sp)
.L0da8f878:
    # Line 108
    lw	$a1,20($s0)
    # Line 109
    move	$a0,$s0
    # lw $t9, -31592($gp) # &__glMgrDLPoolToPtr
    # Line 108
    addiu	$a1,$a1,2
    sllv	$a1,$s1,$a1
    # Line 109
    bal __glMgrDLPoolToPtr
    # Line 108
    sw	$a1,0($a4)
    # Line 106
    addiu	$s1,$s1,1
    lw	$a2,16($s0)
    sltu	$a2,$s1,$a2
    bnez	$a2,.L0da8f878
    # Line 109
    move	$a4,$v0
    ld	$ra,16($sp)
.L0da8f8ac:
    ld	$gp,0($sp)
    # Line 113
    move	$v0,$s0
    ld	$s0,8($sp)
    ld	$s1,24($sp)
    addiu	$sp,$sp,48
    # Line 111
    li	$a3,-1
    # Line 113
    jr	$ra
    # Line 111
    sw	$a3,0($a4)
.L0da8f8cc:
    # Line 74
    lw	$a0,__glCurrentContext
    # Line 79
    lw	$t9,8($a0)
    addiu	$a2,$v0,128
    sd	$ra,16($sp)
    jal	__glMgrDLPoolToPtr
    move	$a1,$s0
    move	$s0,$v0
    b	.L0da8f7d8
    ld	$ra,16($sp)
.end __glMgrDLAllocInit

# Function: __glMgrDLAllocClose
# Declared: Line 121 (Source lines: 122-147)
# Address: 0x0da8f8f0 - 0x0da8f9b8 (Size: 200 bytes, Frame: 208)
.globl __glMgrDLAllocClose
.ent __glMgrDLAllocClose
__glMgrDLAllocClose:
    # Line 122
    addiu	$sp,$sp,-80
    sd	$s0,48($sp)
    sd	$ra,40($sp)
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$s8,24($sp)
    move	$s8,$a1
    sd	$s4,8($sp)
    addiu	$s4,$a1,40
    sd	$s2,0($sp)
    move	$s2,$a1
    sd	$gp,32($sp)
    lui	$at,0x17
    addiu	$at,$at,-4696
    b	.L0da8f938
    addu	$gp,$t9,$at
.L0da8f930:
    # Line 129
    beql	$s2,$s4,.L0da8f968
    # Line 140
    lw	$s0,84($s8)
.L0da8f938:
    # Line 131
    lw	$s0,88($s2)
    beqz	$s0,.L0da8f930
    # Line 129
    addiu	$s2,$s2,4
    # Line 136
    lw	$t9,12($s1)
.L0da8f948:
    move	$a0,$s1
    # Line 134
    move	$a1,$s0
    # Line 136
    jalr	$t9
    # Line 135
    lw	$s0,0($s0)
    # Line 136
    bnezl	$s0,.L0da8f948
    lw	$t9,12($s1)
    b	.L0da8f930
    nop
.L0da8f968:
    ld	$s8,24($sp)
    ld	$s4,8($sp)
    # Line 140
    beqz	$s0,.L0da8f9a0
    ld	$s2,0($sp)
    ld	$s8,24($sp)
    ld	$s4,8($sp)
    ld	$s2,0($sp)
    # Line 145
    lw	$t9,12($s1)
.L0da8f988:
    move	$a0,$s1
    # Line 143
    move	$a1,$s0
    # Line 145
    jalr	$t9
    # Line 144
    lw	$s0,0($s0)
    # Line 145
    bnezl	$s0,.L0da8f988
    lw	$t9,12($s1)
.L0da8f9a0:
    ld	$gp,32($sp)
    # Line 147
    ld	$ra,40($sp)
    ld	$s0,48($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrDLAllocClose

# Function: __glMgrDLMalloc
# Declared: Line 160 (Source lines: 161-269)
# Address: 0x0da8f9b8 - 0x0da8fc00 (Size: 584 bytes, Frame: 224)
.globl __glMgrDLMalloc
.ent __glMgrDLMalloc
__glMgrDLMalloc:
    # Line 165
    lw	$a5,__glCurrentContext
    # Line 161
    addiu	$sp,$sp,-96
    sd	$s0,24($sp)
    # Line 174
    move	$s0,$zero
    sd	$s3,32($sp)
    # Line 161
    move	$s3,$a1
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$gp,8($sp)
    lui	$v1,0x17
    addiu	$v1,$v1,-4896
    # Line 175
    lw	$a4,4($a1)
    lw	$v0,76($a0)
    sd	$s4,40($sp)
    li	$s4,1
    sllv	$v0,$s4,$v0
    sltu	$at,$v0,$a4
    beqz	$at,.L0da8fa30
    # Line 161
    addu	$gp,$t9,$v1
    # Line 178
    addiu	$s0,$s0,1
.L0da8fa08:
    # Line 179
    sll	$v0,$v0,0x1
    sltu	$a2,$v0,$a4
    beqzl	$a2,.L0da8fa30
    sd	$s2,48($sp)
    # Line 178
    addiu	$s0,$s0,1
    # Line 179
    sll	$v0,$v0,0x1
    sltu	$a3,$v0,$a4
    bnezl	$a3,.L0da8fa08
    # Line 178
    addiu	$s0,$s0,1
    sd	$s2,48($sp)
.L0da8fa30:
    sd	$s2,48($sp)
    # Line 189
    sll	$s2,$s0,0x2
    addu	$s2,$s2,$s1
    sd	$s2,0($sp)
    lw	$s2,88($s2)
    li	$a0,-1
    bnez	$s2,.L0da8fb44
    sd	$ra,56($sp)
    lw	$at,80($s1)
    beq	$at,$a0,.L0da8fbdc
    ld	$s2,48($sp)
    # Line 197
    lw	$s2,84($s1)
    beqzl	$s2,.L0da8fbc4
    # Line 201
    lw	$t9,0($a5)
    # Line 199
    lw	$v1,0($s2)
    sd	$ra,56($sp)
    sw	$v1,84($s1)
.L0da8fa74:
    # Line 202
    sw	$zero,0($s2)
    # Line 205
    # lw $t9, -31592($gp) # &__glMgrDLPoolToPtr
    # Line 204
    lw	$a1,80($s1)
    # Line 205
    move	$a0,$s1
    bal __glMgrDLPoolToPtr
    # Line 204
    sw	$a1,4($s2)
    sd	$s5,64($sp)
    # Line 212
    move	$a0,$s1
    # Line 208
    lw	$a2,76($s1)
    # Line 205
    lw	$a3,0($v0)
    # Line 212
    # lw $t9, -31592($gp) # &__glMgrDLPoolToPtr
    # Line 208
    addu	$a2,$a2,$s0
    # Line 205
    sw	$a3,80($s1)
    # Line 209
    sw	$zero,12($s2)
    # Line 211
    lw	$a1,4($s2)
    # Line 208
    sw	$a2,8($s2)
    # Line 212
    bal __glMgrDLPoolToPtr
    # Line 211
    sw	$a1,16($s2)
    # Line 213
    lw	$a4,8($s2)
    lw	$at,20($s1)
    subu	$at,$at,$a4
    sllv	$at,$s4,$at
    slt	$at,$s4,$at
    beqz	$at,.L0da8fb18
    li	$s5,1
    # Line 218
    move	$a0,$s1
.L0da8fadc:
    # lw $t9, -31592($gp) # &__glMgrDLPoolToPtr
    # Line 217
    lw	$a1,4($s2)
    addiu	$a2,$a4,2
    sllv	$a2,$s5,$a2
    addu	$a1,$a1,$a2
    # Line 218
    bal __glMgrDLPoolToPtr
    # Line 217
    sw	$a1,0($v0)
    # Line 215
    addiu	$s5,$s5,1
    lw	$a4,8($s2)
    lw	$a3,20($s1)
    subu	$a3,$a3,$a4
    sllv	$a3,$s4,$a3
    slt	$a3,$s5,$a3
    bnez	$a3,.L0da8fadc
    # Line 218
    move	$a0,$s1
.L0da8fb18:
    # Line 222
    ld	$v1,0($sp)
    li	$a2,-1
    # Line 220
    sw	$a2,0($v0)
    # Line 222
    sw	$s2,88($v1)
    # Line 223
    lw	$at,20($s1)
    lw	$s5,4($s2)
    addiu	$at,$at,2
    srlv	$s5,$s5,$at
    addu	$s5,$s5,$s1
    sb	$s0,128($s5)
    ld	$s5,64($sp)
.L0da8fb44:
    # Line 237
    # lw $t9, -31592($gp) # &__glMgrDLPoolToPtr
    # Line 236
    lw	$a1,16($s2)
    # Line 237
    move	$a0,$s1
    bal __glMgrDLPoolToPtr
    # Line 236
    sw	$a1,0($s3)
    # Line 237
    lw	$at,0($v0)
    # Line 239
    lw	$v0,12($s2)
    li	$a3,-1
    # Line 237
    sw	$at,16($s2)
    # Line 239
    addiu	$v0,$v0,1
    beq	$a3,$at,.L0da8fba8
    sw	$v0,12($s2)
.L0da8fb74:
    # Line 269
    # lw $t9, -31592($gp) # &__glMgrDLPoolToPtr
    move	$a0,$s1
    lw	$a1,0($s3)
    bal __glMgrDLPoolToPtr
    ld	$s2,48($sp)
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$ra,56($sp)
    ld	$s3,32($sp)
    ld	$s4,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da8fba8:
    # Line 250
    ld	$a3,0($sp)
    lw	$a2,0($s2)
    sw	$a2,88($a3)
    # Line 251
    lw	$v1,84($s1)
    sw	$v1,0($s2)
    b	.L0da8fb74
    # Line 252
    sw	$s2,84($s1)
.L0da8fbc4:
    # Line 201
    move	$a0,$a5
    sd	$ra,56($sp)
    jal	__glMgrDLPoolToPtr
    li	$a1,20
    b	.L0da8fa74
    move	$s2,$v0
.L0da8fbdc:
    # Line 229
    move	$v0,$zero
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    # Line 228
    sw	$a0,0($s3)
    # Line 229
    ld	$s3,32($sp)
    ld	$s4,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glMgrDLMalloc

# Function: __glMgrDLFree
# Declared: Line 280 (Source lines: 281-374)
# Address: 0x0da8fc00 - 0x0da8fdd0 (Size: 464 bytes, Frame: 224)
.globl __glMgrDLFree
.ent __glMgrDLFree
__glMgrDLFree:
    # Line 287
    lw	$v0,__glCurrentContext
    # Line 281
    addiu	$sp,$sp,-96
    sd	$s3,0($sp)
    move	$s3,$a1
    sd	$s1,48($sp)
    move	$s1,$a0
    sd	$s2,32($sp)
    # Line 302
    move	$s2,$zero
    # Line 294
    lw	$at,20($a0)
    sd	$s4,16($sp)
    lw	$s4,0($a1)
    sd	$gp,56($sp)
    addiu	$at,$at,2
    srlv	$s4,$s4,$at
    # Line 295
    addu	$a4,$s4,$a0
    sd	$a4,8($sp)
    lbu	$a4,128($a4)
    # Line 281
    lui	$v1,0x17
    sd	$s0,40($sp)
    # Line 303
    sll	$s0,$a4,0x2
    addu	$s0,$s0,$a0
    sd	$s0,24($sp)
    lw	$s0,88($s0)
    # Line 281
    addiu	$v1,$v1,-5480
    addu	$gp,$t9,$v1
    # Line 303
    beqz	$s0,.L0da8fc88
    # Line 301
    sllv	$s4,$s4,$at
    # Line 306
    lw	$v1,4($s0)
.L0da8fc70:
    beq	$v1,$s4,.L0da8fce0
    nop
    # Line 308
    move	$s2,$s0
    # Line 309
    lw	$s0,0($s0)
    bnezl	$s0,.L0da8fc70
    # Line 306
    lw	$v1,4($s0)
.L0da8fc88:
    # Line 318
    lw	$s0,84($s1)
.L0da8fc8c:
    beqz	$s0,.L0da8fda8
    # Line 317
    move	$s2,$zero
    # Line 320
    lw	$a2,0($s0)
    sw	$a2,84($s1)
.L0da8fc9c:
    ld	$a3,24($sp)
    # Line 324
    lw	$at,88($a3)
    sw	$at,0($s0)
    # Line 325
    sw	$s0,88($a3)
    # Line 327
    sw	$s4,4($s0)
    # Line 328
    lw	$a2,76($s1)
    # Line 329
    li	$v0,1
    # Line 328
    addu	$a2,$a2,$a4
    sw	$a2,8($s0)
    # Line 330
    li	$a3,-1
    # Line 329
    lw	$v1,20($s1)
    ld	$s4,16($sp)
    # Line 330
    sw	$a3,16($s0)
    # Line 329
    subu	$v1,$v1,$a2
    sllv	$v0,$v0,$v1
    # Line 330
    b	.L0da8fcf0
    # Line 329
    sw	$v0,12($s0)
.L0da8fce0:
    # Line 315
    beqzl	$s0,.L0da8fc8c
    # Line 318
    lw	$s0,84($s1)
    # Line 330
    lw	$v0,12($s0)
    ld	$s4,16($sp)
.L0da8fcf0:
    sd	$ra,72($sp)
    # Line 337
    addiu	$v1,$v0,-1
    beqz	$v1,.L0da8fd68
    sw	$v1,12($s0)
    # Line 340
    # lw $t9, -31592($gp) # &__glMgrDLPoolToPtr
    move	$a0,$s1
    lw	$a1,0($s3)
    bal __glMgrDLPoolToPtr
    ld	$s2,32($sp)
    # Line 341
    lw	$a3,16($s0)
    ld	$s1,48($sp)
    sw	$a3,0($v0)
    ld	$ra,72($sp)
    # Line 342
    lw	$a2,0($s3)
    ld	$s3,0($sp)
    b	.L0da8fd58
    sw	$a2,16($s0)
.L0da8fd34:
    ld	$s2,24($sp)
    # Line 353
    sw	$a0,88($s2)
    ld	$s2,32($sp)
.L0da8fd40:
    # Line 355
    lw	$a2,84($s1)
    # Line 358
    li	$at,255
    # Line 355
    sw	$a2,0($s0)
    # Line 356
    sw	$s0,84($s1)
    ld	$s1,48($sp)
    # Line 358
    sb	$at,128($v1)
.L0da8fd58:
    ld	$gp,56($sp)
    # Line 374
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da8fd68:
    # Line 346
    # lw $t9, -31592($gp) # &__glMgrDLPoolToPtr
    move	$a0,$s1
    lw	$a1,4($s0)
    bal __glMgrDLPoolToPtr
    ld	$s3,0($sp)
    # Line 347
    lw	$ra,80($s1)
    sw	$ra,0($v0)
    # Line 348
    lw	$a3,4($s0)
    # Line 358
    ld	$v1,8($sp)
    ld	$ra,72($sp)
    # Line 348
    sw	$a3,80($s1)
    beqz	$s2,.L0da8fd34
    lw	$a0,0($s0)
    # Line 351
    sw	$a0,0($s2)
    b	.L0da8fd40
    ld	$s2,32($sp)
.L0da8fda8:
    sd	$a4,64($sp)
    # Line 322
    lw	$t9,0($v0)
    move	$a0,$v0
    sd	$ra,72($sp)
    jal	__glMgrDLPoolToPtr
    li	$a1,20
    move	$s0,$v0
    ld	$a4,64($sp)
    b	.L0da8fc9c
    ld	$ra,72($sp)
.end __glMgrDLFree

