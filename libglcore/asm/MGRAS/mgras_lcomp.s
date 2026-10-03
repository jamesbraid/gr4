# Source: ../MGRAS/mgras_lcomp.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_lcomp.c
# Total Functions: 78

.text

# Function: __glMgrlc_CallList
# Declared: Line 65 (Source lines: 66-103)
# Address: 0x0da73578 - 0x0da736f8 (Size: 384 bytes, Frame: 192)
.globl __glMgrlc_CallList
.ent __glMgrlc_CallList
__glMgrlc_CallList:
    # Line 66
    addiu	$sp,$sp,-64
    sd	$s3,16($sp)
    # Line 67
    lw	$s3,__glCurrentContext
    sd	$a0,0($sp)
    sd	$gp,24($sp)
    # Line 66
    lui	$at,0x19
    addiu	$at,$at,-20192
    # Line 67
    beqz	$a0,.L0da736d4
    # Line 66
    addu	$gp,$t9,$at
    # Line 75
    lw	$a4,4140($zero)
    bnez	$a4,.L0da735c0
    lw	$v0,4136($zero)
    lw	$v1,4128($zero)
    addiu	$a2,$v0,-4
    sw	$a2,4136($zero)
    addiu	$v1,$v1,1
    b	.L0da73600
    sw	$v1,4128($zero)
.L0da735c0:
    sll	$a3,$a4,0x1e
    subu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$v0
    sw	$a4,-4($a3)
    sd	$ra,32($sp)
    lw	$a2,4140($zero)
    # lw $t9, -29224($gp) # &__glsplc_AddIlist
    lw	$a0,4748($s3)
    sll	$a1,$a2,0x1e
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$v0
    jal	__glsplc_AddIlist
    addiu	$a1,$a1,-4
    ld	$ra,32($sp)
.L0da73600:
    lw	$v0,4776($s3)
    andi	$at,$v0,0x4
    beqz	$at,.L0da73638
    # Line 95
    move	$a1,$zero
    la	$a0,__glMgrle_CallSetBegin
    # Line 94
    sw	$zero,4700($s3)
    sd	$ra,32($sp)
    # Line 95
    # lw $t9, -29224($gp) # &__glsplc_AddIlist
    # Line 92
    li	$v1,-5
    and	$v0,$v0,$v1
    # Line 93
    ori	$v0,$v0,0x1
    # Line 95
    jal	__glsplc_AddIlist
    # Line 93
    sw	$v0,4776($s3)
    ld	$ra,32($sp)
.L0da73638:
    # Line 98
    lw	$a2,4128($zero)
    sd	$ra,32($sp)
    blez	$a2,.L0da736c0
    sd	$a2,8($sp)
.L0da73648:
    # Line 99
    # lw $t9, -29224($gp) # &__glsplc_AddIlist
    # Line 98
    lw	$s3,4136($zero)
    # Line 99
    la	$a0,__glMgrle_CallList
    jal	__glsplc_AddIlist
    move	$a1,$s3
    ld	$ra,32($sp)
    ld	$v0,8($sp)
    # Line 101
    addiu	$a1,$s3,4
    # Line 100
    ld	$v1,0($sp)
    # Line 102
    slti	$a3,$v0,2
    # Line 101
    addiu	$v0,$v0,-1
    # Line 100
    sw	$v1,0($s3)
    # Line 101
    sw	$a1,4136($zero)
    # Line 102
    bnez	$a3,.L0da736a8
    # Line 101
    sw	$v0,4128($zero)
.L0da73684:
    # Line 102
    sw	$zero,4140($zero)
    ld	$gp,24($sp)
    # Line 103
    ld	$s3,16($sp)
    addiu	$sp,$sp,64
    # Line 102
    addiu	$a2,$v0,-1
    addiu	$a3,$a1,4
    sw	$a3,4136($zero)
    # Line 103
    jr	$ra
    # Line 102
    sw	$a2,4128($zero)
.L0da736a8:
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    li	$a0,1
    lw	$a1,4136($zero)
    b	.L0da73684
    ld	$ra,32($sp)
.L0da736c0:
    # Line 98
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    li	$a0,1
    b	.L0da73648
    sd	$v0,8($sp)
.L0da736d4:
    # Line 71
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
    sd	$ra,32($sp)
    jal	__glsplc_InvalidValue
    nop
    # Line 72
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrlc_CallList

# Function: __glMgrlc_BindTextureEXT
# Declared: Line 110 (Source lines: 111-151)
# Address: 0x0da736f8 - 0x0da73954 (Size: 604 bytes, Frame: 208)
.globl __glMgrlc_BindTextureEXT
.ent __glMgrlc_BindTextureEXT
__glMgrlc_BindTextureEXT:
    # Line 111
    addiu	$sp,$sp,-80
    sd	$s1,16($sp)
    # Line 114
    lw	$s1,__glCurrentContext
    sd	$a1,0($sp)
    sd	$s0,32($sp)
    # Line 111
    move	$s0,$a0
    sd	$gp,24($sp)
    # Line 114
    li	$v0,0x806f
    # Line 111
    lui	$v1,0x19
    addiu	$v1,$v1,-20576
    # Line 114
    sltu	$at,$a0,$v0
    bnez	$at,.L0da7375c
    # Line 111
    addu	$gp,$t9,$v1
    # Line 118
    sltu	$a2,$v0,$s0
    beqz	$a2,.L0da73790
    li	$v0,0x8134
    sltu	$a3,$s0,$v0
    bnez	$a3,.L0da73908
    sltu	$at,$v0,$s0
    beqz	$at,.L0da73774
    li	$v1,0x8135
    bne	$s0,$v1,.L0da738d4
    # Line 136
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0da73774
    nop
.L0da7375c:
    # Line 118
    li	$v0,0x8063
    sltu	$a2,$s0,$v0
    bnez	$a2,.L0da7377c
    sltu	$a3,$v0,$s0
    bnez	$a3,.L0da738f8
    li	$v1,0x8064
.L0da73774:
    # Line 133
    b	.L0da73798
    sd	$zero,8($sp)
.L0da7377c:
    # Line 118
    sltiu	$at,$s0,3553
    bnez	$at,.L0da738c4
    sltiu	$v1,$s0,3554
    beqz	$v1,.L0da738d4
    # Line 136
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
.L0da73790:
    # Line 123
    lw	$a2,31668($s1)
.L0da73794:
    sd	$a2,8($sp)
.L0da73798:
    # Line 140
    lw	$a4,4140($zero)
    bnez	$a4,.L0da737bc
    lw	$v0,4136($zero)
    lw	$a0,4128($zero)
    addiu	$a2,$v0,-4
    sw	$a2,4136($zero)
    addiu	$a0,$a0,1
    b	.L0da73800
    sw	$a0,4128($zero)
.L0da737bc:
    sll	$a3,$a4,0x1e
    subu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$v0
    sw	$a4,-4($a3)
    sd	$ra,40($sp)
    lw	$a2,4140($zero)
    # lw $t9, -29224($gp) # &__glsplc_AddIlist
    lw	$a0,4748($s1)
    sll	$a1,$a2,0x1e
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$v0
    jal	__glsplc_AddIlist
    addiu	$a1,$a1,-4
    lw	$a0,4128($zero)
    ld	$ra,40($sp)
.L0da73800:
    # Line 141
    slti	$at,$a0,2
    bnez	$at,.L0da7388c
    move	$v0,$a0
.L0da7380c:
    ld	$v1,8($sp)
    sd	$s2,48($sp)
    beqz	$v1,.L0da73928
    lw	$s2,4136($zero)
.L0da7381c:
    sd	$v0,56($sp)
    # Line 146
    move	$a1,$s2
    # lw $t9, -29224($gp) # &__glsplc_AddIlist
    la	$a0,__glMgrle_BindTextureEXT
    sd	$ra,40($sp)
    jal	__glsplc_AddIlist
    move	$s1,$v0
    ld	$ra,40($sp)
    # Line 149
    addiu	$v0,$s1,-2
    # Line 150
    slti	$a2,$s1,3
    # Line 148
    ld	$a3,0($sp)
    # Line 149
    addiu	$a0,$s2,8
    # Line 147
    sw	$s0,0($s2)
    # Line 148
    sw	$a3,4($s2)
    ld	$s2,48($sp)
    # Line 149
    sw	$a0,4136($zero)
    # Line 150
    bnez	$a2,.L0da738a8
    # Line 149
    sw	$v0,4128($zero)
.L0da73864:
    # Line 150
    sw	$zero,4140($zero)
    ld	$gp,24($sp)
    addiu	$s1,$a0,4
    addiu	$s0,$v0,-1
    sw	$s0,4128($zero)
    # Line 151
    ld	$s0,32($sp)
    # Line 150
    sw	$s1,4136($zero)
    # Line 151
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da7388c:
    # Line 141
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    li	$a0,1
    sd	$s2,48($sp)
    b	.L0da7380c
    ld	$ra,40($sp)
.L0da738a8:
    # Line 150
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    li	$a0,1
    jal	__glSPDlistSpace
    ld	$s2,48($sp)
    lw	$a0,4136($zero)
    b	.L0da73864
    ld	$ra,40($sp)
.L0da738c4:
    # Line 118
    li	$at,3552
    beql	$s0,$at,.L0da73794
    # Line 123
    lw	$a2,31668($s1)
    # Line 136
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
.L0da738d4:
    sd	$ra,40($sp)
    jal	__glsplc_InvalidEnum
    nop
    ld	$gp,24($sp)
    # Line 137
    ld	$ra,40($sp)
    ld	$s0,32($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da738f8:
    # Line 118
    bne	$s0,$v1,.L0da738d4
    # Line 136
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0da73774
    nop
.L0da73908:
    # Line 118
    li	$v0,0x8095
    sltu	$a2,$s0,$v0
    bnez	$a2,.L0da73940
    sltu	$a3,$v0,$s0
    bnez	$a3,.L0da738d4
    # Line 136
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0da73774
    nop
.L0da73928:
    # Line 144
    lw	$at,4776($s1)
    sd	$ra,40($sp)
    sd	$v0,56($sp)
    ori	$at,$at,0x1
    b	.L0da7381c
    sw	$at,4776($s1)
.L0da73940:
    # Line 118
    li	$v1,0x8070
    bne	$s0,$v1,.L0da738d4
    # Line 136
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0da73774
    nop
.end __glMgrlc_BindTextureEXT

# Function: __glMgrlc_Bitmap
# Declared: Line 172 (Source lines: 174-217)
# Address: 0x0da73954 - 0x0da73b80 (Size: 556 bytes, Frame: 192)
.globl __glMgrlc_Bitmap
.ent __glMgrlc_Bitmap
__glMgrlc_Bitmap:
    # Line 176
    lw	$t1,__glCurrentContext
    # Line 174
    mov.s	$f4,$f17
    mov.s	$f5,$f16
    mov.s	$f6,$f15
    mov.s	$f7,$f14
    addiu	$sp,$sp,-192
    sd	$s4,32($sp)
    move	$s4,$a6
    sd	$s0,8($sp)
    move	$s0,$a1
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$gp,24($sp)
    lui	$at,0x19
    addiu	$at,$at,-21180
    # Line 178
    bltz	$a0,.L0da73b54
    # Line 174
    addu	$gp,$t9,$at
    # Line 178
    bltz	$s0,.L0da73b54
    # Line 181
    addiu	$t3,$s1,7
    sra	$t3,$t3,0x3
    mult	$t3,$s0
    sd	$s2,96($sp)
    mflo	$t2
    addiu	$t2,$t2,3
    sra	$s2,$t2,0x2
    beqz	$s2,.L0da73b20
    sltiu	$at,$s2,513
    beqz	$at,.L0da73b24
    # Line 216
    move	$a0,$s1
    # Line 186
    beqz	$s4,.L0da73b24
    # Line 216
    move	$a0,$s1
    sd	$s3,112($sp)
    # Line 192
    lw	$s3,4128($zero)
    li	$at,-2
    sd	$s5,120($sp)
    addiu	$s5,$s2,1
    and	$s5,$s5,$at
    addiu	$v1,$s5,10
    sltu	$v1,$s3,$v1
    beqz	$v1,.L0da73a40
    sd	$ra,72($sp)
    sd	$t1,104($sp)
    sd	$t2,88($sp)
    sd	$t3,80($sp)
    sdc1	$f4,64($sp)
    sdc1	$f5,56($sp)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f6,48($sp)
    sdc1	$f7,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    move	$s3,$v0
    ldc1	$f7,40($sp)
    ldc1	$f6,48($sp)
    ldc1	$f5,56($sp)
    ldc1	$f4,64($sp)
    ld	$t3,80($sp)
    ld	$t2,88($sp)
    ld	$t1,104($sp)
.L0da73a40:
    # Line 210
    move	$a5,$s4
    li	$a4,6656
    li	$a3,6400
    move	$a2,$s0
    move	$a1,$s1
    # Line 192
    subu	$s3,$s3,$s5
    addiu	$s3,$s3,-10
    # Line 208
    sll	$v0,$s5,0x2
    # Line 192
    lw	$a7,4136($zero)
    # Line 197
    li	$t8,0x9420
    # Line 210
    # lw $t9, -26712($gp) # &__glFillImage
    addiu	$a6,$a7,40
    # Line 207
    li	$v1,-4
    and	$v1,$t2,$v1
    # Line 205
    sw	$s2,32($a7)
    # Line 204
    swc1	$f4,28($a7)
    # Line 203
    swc1	$f5,24($a7)
    # Line 202
    swc1	$f6,20($a7)
    # Line 201
    swc1	$f7,16($a7)
    # Line 200
    sw	$s0,12($a7)
    # Line 199
    sw	$s1,8($a7)
    # Line 197
    sw	$t8,0($a7)
    # Line 208
    addu	$v0,$v0,$a7
    sd	$v0,0($sp)
    # Line 210
    move	$a0,$t1
    # Line 198
    andi	$t1,$t3,0x7
    li	$t0,8
    subu	$t0,$t0,$t1
    andi	$t0,$t0,0x7
    andi	$t0,$t0,0x7
    sll	$t0,$t0,0xe
    ori	$t0,$t0,0xf
    sw	$t0,4($a7)
    # Line 207
    lui	$t0,0x8000
    or	$v1,$v1,$t0
    sw	$v1,36($a7)
    # Line 210
    jal	__glFillImage
    # Line 208
    sw	$zero,36($v0)
    # Line 213
    sw	$s3,4128($zero)
    ld	$s3,112($sp)
    lw	$ra,4140($zero)
    ld	$s2,96($sp)
    ld	$at,0($sp)
    addu	$s5,$ra,$s5
    ld	$ra,72($sp)
    addiu	$at,$at,40
    sw	$at,4136($zero)
    addiu	$s5,$s5,10
    sw	$s5,4140($zero)
    ld	$s5,120($sp)
.L0da73b08:
    ld	$gp,24($sp)
    # Line 217
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da73b20:
    # Line 216
    move	$a0,$s1
.L0da73b24:
    move	$a1,$s0
    mov.s	$f14,$f7
    mov.s	$f15,$f6
    mov.s	$f16,$f5
    mov.s	$f17,$f4
    # lw $t9, -29324($gp) # &__glsplc_Bitmap
    move	$a6,$s4
    sd	$ra,72($sp)
    jal	__glsplc_Bitmap
    ld	$s2,96($sp)
    b	.L0da73b08
    ld	$ra,72($sp)
.L0da73b54:
    # Line 180
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
    sd	$ra,72($sp)
    jal	__glsplc_InvalidValue
    nop
    ld	$gp,24($sp)
    # Line 181
    ld	$s0,8($sp)
    ld	$ra,72($sp)
    ld	$s1,16($sp)
    ld	$s4,32($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glMgrlc_Bitmap

# Function: __glMgrlc_Begin
# Declared: Line 233 (Source lines: 234-294)
# Address: 0x0da73b80 - 0x0da73cd8 (Size: 344 bytes, Frame: 48)
.globl __glMgrlc_Begin
.ent __glMgrlc_Begin
__glMgrlc_Begin:
    # Line 237
    lw	$a4,__glCurrentContext
    sltiu	$at,$a0,10
    # Line 234
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-21736
    # Line 237
    beqz	$at,.L0da73c4c
    # Line 234
    addu	$gp,$t9,$v0
    # Line 242
    lw	$v0,4776($a4)
    # Line 252
    la	$at,sub_0dbf0000
    # Line 242
    andi	$v1,$v0,0x4
    beqz	$v1,.L0da73bd4
    # Line 252
    ori	$a1,$v0,0x4
    # Line 249
    # lw $t9, -29336($gp) # &__glsplc_InvalidOperation
    sd	$ra,16($sp)
    jal	__glsplc_InvalidOperation
    nop
    # Line 250
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da73bd4:
    # Line 252
    sw	$a1,4776($a4)
    addiu	$at,$at,-12208
    sll	$a3,$a0,0x2
    sltiu	$v1,$a0,10
    beqz	$v1,.L0da73bf8
    addu	$a3,$a3,$at
    lw	$a2,%lo(jtbl_0dbed050)($a3)
    jr	$a2
    # Line 284
    li	$a3,7936
.L0da73bf8:
    # Line 285
    lw	$a3,0($sp)
.L0da73bfc:
    # Line 289
    lw	$at,4700($a4)
.L0da73c00:
    addiu	$v0,$a0,1
    andi	$v0,$v0,0xf
    or	$at,$at,$v0
    sw	$at,4700($a4)
    # Line 291
    lw	$v0,4128($zero)
    blez	$v0,.L0da73c6c
    nop	# was lw $t9, -29228($gp) # &__glSPDlistSpace
.L0da73c1c:
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 293
    addiu	$a1,$v0,-1
    addiu	$a2,$at,4
    # Line 292
    sw	$a3,0($at)
    # Line 293
    sw	$a2,4136($zero)
    lw	$v1,4140($zero)
    sw	$a1,4128($zero)
    # Line 294
    addiu	$sp,$sp,48
    # Line 293
    addiu	$v1,$v1,1
    # Line 294
    jr	$ra
    # Line 293
    sw	$v1,4140($zero)
.L0da73c4c:
    # Line 241
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,16($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 242
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da73c6c:
    sd	$a3,24($sp)
    sd	$ra,16($sp)
    # Line 291
    jalr	$t9
    move	$a0,$zero
    ld	$a3,24($sp)
    b	.L0da73c1c
    ld	$ra,16($sp)
.L0da73c88:
    # Line 258
    b	.L0da73bfc
    # Line 257
    li	$a3,5632
.L0da73c90:
    # Line 261
    b	.L0da73bfc
    # Line 260
    li	$a3,5888
.L0da73c98:
    # Line 264
    b	.L0da73bfc
    # Line 263
    li	$a3,6400
.L0da73ca0:
    # Line 267
    b	.L0da73bfc
    # Line 266
    li	$a3,6144
.L0da73ca8:
    # Line 270
    b	.L0da73bfc
    # Line 269
    li	$a3,6656
.L0da73cb0:
    # Line 273
    b	.L0da73bfc
    # Line 272
    li	$a3,6912
.L0da73cb8:
    # Line 276
    b	.L0da73bfc
    # Line 275
    li	$a3,7168
.L0da73cc0:
    # Line 279
    b	.L0da73bfc
    # Line 278
    li	$a3,7424
.L0da73cc8:
    # Line 282
    b	.L0da73bfc
    # Line 281
    li	$a3,7680
.L0da73cd0:
    # Line 285
    b	.L0da73c00
    # Line 289
    lw	$at,4700($a4)
.end __glMgrlc_Begin

# Function: __glMgrlc_End
# Declared: Line 300 (Source lines: 301-372)
# Address: 0x0da73cd8 - 0x0da73eac (Size: 468 bytes, Frame: 48)
.globl __glMgrlc_End
.ent __glMgrlc_End
__glMgrlc_End:
    # Line 301
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    sd	$gp,8($sp)
    # Line 305
    lw	$a2,__glCurrentContext
    # Line 301
    lui	$v1,0x19
    addiu	$v1,$v1,-22080
    # Line 309
    lw	$v0,4700($a2)
    # Line 301
    addu	$gp,$t9,$v1
    # Line 312
    la	$at,sub_0dbf0000
    # Line 309
    andi	$v0,$v0,0xf
    beqz	$v0,.L0da73e2c
    # Line 305
    move	$s0,$a2
    # Line 312
    addiu	$at,$at,-12168
    addiu	$a3,$v0,-1
    sltiu	$v1,$a3,10
    sll	$a3,$a3,0x2
    beqz	$v1,.L0da73d2c
    addu	$a3,$a3,$at
    lw	$at,%lo(jtbl_0dbed078)($a3)
    jr	$at
    sd	$s8,24($sp)
.L0da73d2c:
    sd	$s8,24($sp)
    # Line 345
    lw	$s8,0($sp)
.L0da73d34:
    # Line 348
    sw	$zero,4700($a2)
    # Line 350
    lw	$v0,4128($zero)
    blez	$v0,.L0da73e38
    nop	# was lw $t9, -29228($gp) # &__glSPDlistSpace
.L0da73d44:
    lw	$a5,4136($zero)
    # Line 352
    addiu	$at,$v0,-1
    # Line 351
    sw	$s8,0($a5)
    # Line 352
    addiu	$s8,$a5,4
    lw	$a4,4140($zero)
    sw	$s8,4136($zero)
    sw	$at,4128($zero)
    addiu	$a4,$a4,1
    sw	$a4,4140($zero)
    lw	$a2,4776($s0)
    andi	$v1,$a2,0x4
    bnez	$v1,.L0da73e10
    ld	$s8,24($sp)
    bnez	$a4,.L0da73d90
    ld	$s8,24($sp)
    sd	$ra,32($sp)
    # Line 365
    sw	$a5,4136($zero)
    b	.L0da73dc8
    sw	$v0,4128($zero)
.L0da73d90:
    sll	$a3,$a4,0x1e
    subu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a5
    sw	$a4,0($a3)
    sd	$ra,32($sp)
    lw	$a2,4140($zero)
    # lw $t9, -29224($gp) # &__glsplc_AddIlist
    lw	$a0,4748($s0)
    sll	$a1,$a2,0x1e
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    jal	__glsplc_AddIlist
    addu	$a1,$a1,$a5
.L0da73dc8:
    # Line 367
    move	$a1,$zero
    # Line 366
    lw	$a4,4776($s0)
    # Line 367
    # lw $t9, -29224($gp) # &__glsplc_AddIlist
    la	$a0,__glMgrle_CallUnsetBegin
    # Line 366
    ori	$a4,$a4,0x1
    # Line 367
    jal	__glsplc_AddIlist
    # Line 366
    sw	$a4,4776($s0)
    ld	$ra,32($sp)
    # Line 368
    lw	$v0,4128($zero)
    blez	$v0,.L0da73e9c
    nop	# was lw $t9, -29228($gp) # &__glSPDlistSpace
.L0da73df4:
    sw	$zero,4140($zero)
    lw	$at,4136($zero)
    addiu	$v1,$v0,-1
    sw	$v1,4128($zero)
    addiu	$at,$at,4
    sw	$at,4136($zero)
    lw	$a2,4776($s0)
.L0da73e10:
    ld	$gp,8($sp)
    # Line 371
    li	$a0,-5
    and	$a0,$a2,$a0
    sw	$a0,4776($s0)
    # Line 372
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da73e2c:
    sd	$s8,24($sp)
    # Line 312
    b	.L0da73d34
    li	$s8,0xcc00
.L0da73e38:
    sd	$ra,32($sp)
    # Line 350
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da73d44
    ld	$ra,32($sp)
.L0da73e4c:
    # Line 318
    b	.L0da73d34
    # Line 317
    li	$s8,8192
.L0da73e54:
    # Line 321
    b	.L0da73d34
    # Line 320
    li	$s8,8448
.L0da73e5c:
    # Line 324
    b	.L0da73d34
    # Line 323
    li	$s8,8960
.L0da73e64:
    # Line 327
    b	.L0da73d34
    # Line 326
    li	$s8,8704
.L0da73e6c:
    # Line 330
    b	.L0da73d34
    # Line 329
    li	$s8,9216
.L0da73e74:
    # Line 333
    b	.L0da73d34
    # Line 332
    li	$s8,9472
.L0da73e7c:
    # Line 336
    b	.L0da73d34
    # Line 335
    li	$s8,9728
.L0da73e84:
    # Line 339
    b	.L0da73d34
    # Line 338
    li	$s8,9984
.L0da73e8c:
    # Line 342
    b	.L0da73d34
    # Line 341
    li	$s8,10240
.L0da73e94:
    # Line 345
    b	.L0da73d34
    # Line 344
    li	$s8,10496
.L0da73e9c:
    # Line 368
    jalr	$t9
    li	$a0,1
    b	.L0da73df4
    ld	$ra,32($sp)
.end __glMgrlc_End

# Function: __glMgrlc_ClearColor
# Declared: Line 399 (Source lines: 400-424)
# Address: 0x0da73eac - 0x0da73ffc (Size: 336 bytes, Frame: 208)
.globl __glMgrlc_ClearColor
.ent __glMgrlc_ClearColor
__glMgrlc_ClearColor:
    # Line 400
    addiu	$sp,$sp,-80
    sdc1	$f24,0($sp)
    mov.s	$f24,$f15
    sdc1	$f22,8($sp)
    mov.s	$f22,$f14
    sdc1	$f26,16($sp)
    sd	$gp,32($sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-22548
    addu	$gp,$t9,$v0
    # Line 406
    mtc1	$zero,$f5
    # Line 400
    mov.s	$f26,$f12
    sdc1	$f20,24($sp)
    # Line 406
    c.lt.s	$f12,$f5
    lw	$at,__glCurrentContext
    # Line 400
    mov.s	$f20,$f13
    # Line 406
    bc1f	.L0da73ef8
    lwc1	$f4,3284($at)
    # Line 408
    mov.s	$f26,$f5
.L0da73ef8:
    c.lt.s	$f4,$f26
    nop
    bc1fl	.L0da73f10
    # Line 409
    c.lt.s	$f20,$f5
    mov.s	$f26,$f4
    c.lt.s	$f20,$f5
.L0da73f10:
    nop
    bc1fl	.L0da73f24
    # Line 410
    c.lt.s	$f4,$f20
    mov.s	$f20,$f5
    c.lt.s	$f4,$f20
.L0da73f24:
    nop
    bc1fl	.L0da73f38
    # Line 411
    c.lt.s	$f22,$f5
    mov.s	$f20,$f4
    c.lt.s	$f22,$f5
.L0da73f38:
    nop
    bc1fl	.L0da73f4c
    # Line 412
    c.lt.s	$f4,$f22
    mov.s	$f22,$f5
    c.lt.s	$f4,$f22
.L0da73f4c:
    nop
    bc1fl	.L0da73f60
    # Line 413
    c.lt.s	$f24,$f5
    mov.s	$f22,$f4
    c.lt.s	$f24,$f5
.L0da73f60:
    nop
    bc1fl	.L0da73f74
    # Line 414
    c.lt.s	$f4,$f24
    mov.s	$f24,$f5
    c.lt.s	$f4,$f24
.L0da73f74:
    nop
    bc1fl	.L0da73f88
    # Line 417
    lw	$v0,4128($zero)
    # Line 415
    mov.s	$f24,$f4
    # Line 417
    lw	$v0,4128($zero)
.L0da73f88:
    slti	$v1,$v0,5
    bnez	$v1,.L0da73fe8
    nop	# was lw $t9, -29228($gp) # &__glSPDlistSpace
.L0da73f94:
    lw	$v1,4136($zero)
    ld	$gp,32($sp)
    # Line 423
    addiu	$a1,$v0,-5
    # Line 420
    swc1	$f20,8($v1)
    # Line 424
    ldc1	$f20,24($sp)
    # Line 421
    swc1	$f22,12($v1)
    # Line 424
    ldc1	$f22,8($sp)
    # Line 422
    swc1	$f24,16($v1)
    # Line 424
    ldc1	$f24,0($sp)
    # Line 419
    swc1	$f26,4($v1)
    # Line 424
    ldc1	$f26,16($sp)
    # Line 423
    addiu	$at,$v1,20
    # Line 418
    li	$a0,0xba10
    sw	$a0,0($v1)
    # Line 423
    sw	$at,4136($zero)
    lw	$a0,4140($zero)
    sw	$a1,4128($zero)
    # Line 424
    addiu	$sp,$sp,80
    # Line 423
    addiu	$a0,$a0,5
    # Line 424
    jr	$ra
    # Line 423
    sw	$a0,4140($zero)
.L0da73fe8:
    sd	$ra,40($sp)
    # Line 417
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da73f94
    ld	$ra,40($sp)
.end __glMgrlc_ClearColor

# Function: __glMgrlc_ClearDepth
# Declared: Line 427 (Source lines: 428-440)
# Address: 0x0da73ffc - 0x0da740b0 (Size: 180 bytes, Frame: 48)
.globl __glMgrlc_ClearDepth
.ent __glMgrlc_ClearDepth
__glMgrlc_ClearDepth:
    # Line 428
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x19
    addiu	$at,$at,-22884
    addu	$gp,$t9,$at
    dmtc1	$zero,$f4
    c.lt.d	$f12,$f4
    sdc1	$f28,0($sp)
    bc1f	.L0da74028
    mov.d	$f28,$f12
    # Line 431
    mov.d	$f28,$f4
.L0da74028:
    ldc1	$f4,_lit8_3ff0000000000000
    c.lt.d	$f4,$f28
    nop
    bc1fl	.L0da74044
    # Line 436
    lw	$v0,4128($zero)
    # Line 432
    mov.d	$f28,$f4
    # Line 436
    lw	$v0,4128($zero)
.L0da74044:
    slti	$v1,$v0,2
    bnez	$v1,.L0da74098
.L0da7404c:
    # Line 438
    ldc1	$f0,_lit8_416fffffe0000000
    mul.d	$f0,$f28,$f0
    ld	$gp,8($sp)
    # Line 436
    lw	$v1,4136($zero)
    # Line 438
    trunc.w.d	$f0,$f0
    # Line 439
    addiu	$a1,$v0,-2
    # Line 440
    ldc1	$f28,0($sp)
    # Line 439
    addiu	$a2,$v1,8
    # Line 438
    mfc1	$at,$f0
    # Line 437
    li	$a0,0xbc04
    sw	$a0,0($v1)
    # Line 438
    sw	$at,4($v1)
    # Line 439
    sw	$a2,4136($zero)
    lw	$a0,4140($zero)
    sw	$a1,4128($zero)
    # Line 440
    addiu	$sp,$sp,48
    # Line 439
    addiu	$a0,$a0,2
    # Line 440
    jr	$ra
    # Line 439
    sw	$a0,4140($zero)
.L0da74098:
    # Line 436
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da7404c
    ld	$ra,16($sp)
.end __glMgrlc_ClearDepth

# Function: __glMgrlc_ClearIndex
# Declared: Line 443 (Source lines: 444-453)
# Address: 0x0da740b0 - 0x0da74160 (Size: 176 bytes, Frame: 48)
.globl __glMgrlc_ClearIndex
.ent __glMgrlc_ClearIndex
__glMgrlc_ClearIndex:
    # Line 444
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$a0,0x19
    addiu	$a0,$a0,-23064
    addu	$gp,$t9,$a0
    # Line 447
    lwc1	$f0,_lit_41800000
    mul.s	$f0,$f12,$f0
    lw	$v1,__glCurrentContext
    trunc.w.s	$f0,$f0
    lw	$v1,30788($v1)
    sdc1	$f30,0($sp)
    mfc1	$v0,$f0
    sll	$v1,$v1,0x4
    ori	$v1,$v1,0xf
    and	$v0,$v0,$v1
    mtc1	$v0,$f30
    nop
    cvt.s.w	$f30,$f30
    # Line 449
    lw	$v0,4128($zero)
    # Line 447
    lwc1	$f0,_lit_3d800000
    # Line 449
    slti	$at,$v0,2
    bnez	$at,.L0da74148
    # Line 447
    mul.s	$f30,$f30,$f0
.L0da7410c:
    # Line 449
    lw	$a0,4136($zero)
    ld	$gp,8($sp)
    # Line 452
    addiu	$at,$v0,-2
    # Line 451
    swc1	$f30,4($a0)
    # Line 453
    ldc1	$f30,0($sp)
    # Line 452
    addiu	$v1,$a0,8
    # Line 450
    li	$a1,0xbd04
    sw	$a1,0($a0)
    # Line 452
    sw	$v1,4136($zero)
    lw	$a1,4140($zero)
    sw	$at,4128($zero)
    # Line 453
    addiu	$sp,$sp,48
    # Line 452
    addiu	$a1,$a1,2
    # Line 453
    jr	$ra
    # Line 452
    sw	$a1,4140($zero)
.L0da74148:
    # Line 449
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da7410c
    ld	$ra,16($sp)
.end __glMgrlc_ClearIndex

# Function: __glMgrlc_ClearStencil
# Declared: Line 456 (Source lines: 457-463)
# Address: 0x0da74160 - 0x0da741fc (Size: 156 bytes, Frame: 48)
.globl __glMgrlc_ClearStencil
.ent __glMgrlc_ClearStencil
__glMgrlc_ClearStencil:
    # Line 458
    lw	$a3,__glCurrentContext
    # Line 457
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 459
    lw	$v0,4128($zero)
    # Line 457
    lui	$v1,0x19
    addiu	$v1,$v1,-23240
    # Line 459
    slti	$at,$v0,2
    bnez	$at,.L0da741dc
    # Line 457
    addu	$gp,$t9,$v1
.L0da7418c:
    # Line 459
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 460
    li	$a1,0xbe04
    sw	$a1,0($at)
    # Line 462
    addiu	$a1,$v0,-2
    # Line 461
    lw	$a0,3132($a3)
    # Line 462
    addiu	$a2,$at,8
    # Line 461
    li	$v1,1
    sllv	$v1,$v1,$a0
    addiu	$v1,$v1,-1
    and	$s8,$v1,$s8
    sw	$s8,4($at)
    # Line 463
    ld	$s8,0($sp)
    # Line 462
    sw	$a2,4136($zero)
    lw	$a0,4140($zero)
    sw	$a1,4128($zero)
    # Line 463
    addiu	$sp,$sp,48
    # Line 462
    addiu	$a0,$a0,2
    # Line 463
    jr	$ra
    # Line 462
    sw	$a0,4140($zero)
.L0da741dc:
    # Line 459
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a3,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a3,16($sp)
    b	.L0da7418c
    ld	$ra,24($sp)
.end __glMgrlc_ClearStencil

# Function: __glMgrlc_ColorMaterial
# Declared: Line 466 (Source lines: 467-503)
# Address: 0x0da741fc - 0x0da7431c (Size: 288 bytes, Frame: 48)
.globl __glMgrlc_ColorMaterial
.ent __glMgrlc_ColorMaterial
__glMgrlc_ColorMaterial:
    # Line 467
    li	$at,4608
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a1
    sd	$gp,0($sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-23396
    beq	$a1,$at,.L0da74268
    addu	$gp,$t9,$v0
    li	$v1,4609
    beq	$s0,$v1,.L0da74268
    li	$a2,4610
    beq	$s0,$a2,.L0da74268
    li	$a3,5632
    beq	$s0,$a3,.L0da74268
    li	$at,5634
    beq	$s0,$at,.L0da7426c
    # Line 483
    li	$v1,1028
    # Line 479
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,16($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 480
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da74268:
    # Line 483
    li	$v1,1028
.L0da7426c:
    beq	$a0,$v1,.L0da742f0
    li	$a2,1029
    beq	$a0,$a2,.L0da742f8
    li	$a3,1032
    beq	$a0,$a3,.L0da742a4
    # Line 495
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,16($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 496
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da742a4:
    # Line 492
    li	$a0,0xc104
.L0da742a8:
    # Line 499
    lw	$v0,4128($zero)
    slti	$at,$v0,2
    bnez	$at,.L0da74300
    nop	# was lw $t9, -29228($gp) # &__glSPDlistSpace
.L0da742b8:
    lw	$at,4136($zero)
    ld	$gp,0($sp)
    # Line 502
    addiu	$a2,$v0,-2
    # Line 501
    sw	$s0,4($at)
    # Line 503
    ld	$s0,8($sp)
    # Line 502
    addiu	$a3,$at,8
    # Line 500
    sw	$a0,0($at)
    # Line 502
    sw	$a3,4136($zero)
    lw	$v1,4140($zero)
    sw	$a2,4128($zero)
    # Line 503
    addiu	$sp,$sp,48
    # Line 502
    addiu	$v0,$v1,2
    # Line 503
    jr	$ra
    # Line 502
    sw	$v0,4140($zero)
.L0da742f0:
    # Line 487
    b	.L0da742a8
    # Line 486
    li	$a0,0xbf04
.L0da742f8:
    # Line 490
    b	.L0da742a8
    # Line 489
    li	$a0,0xc004
.L0da74300:
    sd	$a0,24($sp)
    sd	$ra,16($sp)
    # Line 499
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a0,24($sp)
    b	.L0da742b8
    ld	$ra,16($sp)
.end __glMgrlc_ColorMaterial

# Function: __glMgrlc_FrontFace
# Declared: Line 511 (Source lines: 512-524)
# Address: 0x0da7431c - 0x0da743d0 (Size: 180 bytes, Frame: 48)
.globl __glMgrlc_FrontFace
.ent __glMgrlc_FrontFace
__glMgrlc_FrontFace:
    # Line 512
    li	$at,2304
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-23684
    beq	$a0,$at,.L0da74370
    addu	$gp,$t9,$v0
    li	$v1,2305
    beql	$s0,$v1,.L0da74374
    # Line 520
    lw	$v0,4128($zero)
    # Line 516
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,16($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 517
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da74370:
    # Line 520
    lw	$v0,4128($zero)
.L0da74374:
    slti	$a1,$v0,2
    bnez	$a1,.L0da743bc
    nop	# was lw $t9, -29228($gp) # &__glSPDlistSpace
.L0da74380:
    lw	$v1,4136($zero)
    ld	$gp,0($sp)
    # Line 522
    sw	$s0,4($v1)
    # Line 523
    addiu	$s0,$v0,-2
    addiu	$at,$v1,8
    # Line 521
    li	$a1,22020
    sw	$a1,0($v1)
    # Line 523
    sw	$at,4136($zero)
    sw	$s0,4128($zero)
    lw	$a2,4140($zero)
    # Line 524
    ld	$s0,8($sp)
    addiu	$sp,$sp,48
    # Line 523
    addiu	$a2,$a2,2
    # Line 524
    jr	$ra
    # Line 523
    sw	$a2,4140($zero)
.L0da743bc:
    sd	$ra,16($sp)
    # Line 520
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da74380
    ld	$ra,16($sp)
.end __glMgrlc_FrontFace

# Function: __glMgrlc_Lightf
# Declared: Line 527 (Source lines: 528-570)
# Address: 0x0da743d0 - 0x0da74518 (Size: 328 bytes, Frame: 208)
.globl __glMgrlc_Lightf
.ent __glMgrlc_Lightf
__glMgrlc_Lightf:
    # Line 528
    mov.s	$f4,$f14
    # Line 531
    sltiu	$at,$a0,16384
    # Line 528
    addiu	$sp,$sp,-80
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-23864
    # Line 531
    bnez	$at,.L0da7444c
    # Line 528
    addu	$gp,$t9,$v0
    # Line 531
    sltiu	$v1,$s0,16392
    beqz	$v1,.L0da7444c
    # Line 538
    li	$a2,4613
    beq	$a1,$a2,.L0da744c4
    li	$a3,4614
    beq	$a1,$a3,.L0da744f4
    li	$at,4615
    beq	$a1,$at,.L0da74500
    li	$v1,4616
    beq	$a1,$v1,.L0da7450c
    li	$a2,4617
    beq	$a1,$a2,.L0da74470
    # Line 561
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,24($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 562
    ld	$ra,24($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da7444c:
    # Line 533
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,24($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 534
    ld	$ra,24($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da74470:
    # Line 553
    li	$a0,21768
    # Line 565
    lw	$v0,4128($zero)
.L0da74478:
    slti	$a3,$v0,3
    bnezl	$a3,.L0da744d0
    sdc1	$f4,16($sp)
.L0da74484:
    ld	$gp,0($sp)
    lw	$a2,4136($zero)
    # Line 569
    addiu	$at,$v0,-3
    # Line 567
    addiu	$a3,$s0,-16384
    # Line 568
    swc1	$f4,8($a2)
    # Line 567
    sw	$a3,4($a2)
    # Line 566
    sw	$a0,0($a2)
    # Line 569
    addiu	$v1,$a2,12
    lw	$s0,4140($zero)
    sw	$v1,4136($zero)
    sw	$at,4128($zero)
    addiu	$s0,$s0,3
    sw	$s0,4140($zero)
    # Line 570
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da744c4:
    # Line 541
    li	$a0,20744
    # Line 542
    b	.L0da74478
    # Line 565
    lw	$v0,4128($zero)
.L0da744d0:
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a0,32($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f4,16($sp)
    ld	$a0,32($sp)
    b	.L0da74484
    ld	$ra,24($sp)
.L0da744f4:
    # Line 544
    li	$a0,21000
    # Line 545
    b	.L0da74478
    # Line 565
    lw	$v0,4128($zero)
.L0da74500:
    # Line 547
    li	$a0,21256
    # Line 548
    b	.L0da74478
    # Line 565
    lw	$v0,4128($zero)
.L0da7450c:
    # Line 550
    li	$a0,21512
    # Line 551
    b	.L0da74478
    # Line 565
    lw	$v0,4128($zero)
.end __glMgrlc_Lightf

# Function: __glMgrlc_Lightfv
# Declared: Line 573 (Source lines: 574-672)
# Address: 0x0da74518 - 0x0da74a40 (Size: 1320 bytes, Frame: 192)
.globl __glMgrlc_Lightfv
.ent __glMgrlc_Lightfv
__glMgrlc_Lightfv:
    # Line 575
    sltiu	$at,$a0,16384
    # Line 574
    addiu	$sp,$sp,-64
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-24192
    # Line 575
    bnez	$at,.L0da7456c
    # Line 574
    addu	$gp,$t9,$v0
    # Line 575
    sltiu	$v1,$s0,16392
    beqz	$v1,.L0da7456c
    # Line 578
    addiu	$v0,$a1,-4608
    la	$v1,sub_0dbf0000
    sltiu	$a3,$v0,10
    sll	$v0,$v0,0x2
    addiu	$v1,$v1,-12128
    beqz	$a3,.L0da74590
    addu	$v0,$v0,$v1
    lw	$v1,%lo(jtbl_0dbed0a0)($v0)
    jr	$v1
    nop
.L0da7456c:
    # Line 577
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,16($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 578
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da74590:
    # Line 669
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,16($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 670
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da745b4:
    # Line 585
    lw	$v0,4128($zero)
    slti	$a3,$v0,6
    beqzl	$a3,.L0da745e4
    lw	$a3,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,24($sp)
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,24($sp)
    ld	$ra,16($sp)
    lw	$a3,4136($zero)
.L0da745e4:
    # Line 586
    li	$at,4628
    sw	$at,0($a3)
    # Line 587
    addiu	$a4,$s0,-16384
    sw	$a4,4($a3)
    # Line 588
    lwc1	$f3,0($a2)
    swc1	$f3,8($a3)
    # Line 589
    lwc1	$f2,4($a2)
    swc1	$f2,12($a3)
    # Line 590
    lwc1	$f1,8($a2)
    swc1	$f1,16($a3)
    # Line 591
    lwc1	$f0,12($a2)
    # Line 592
    addiu	$v1,$a3,24
    # Line 591
    swc1	$f0,20($a3)
    # Line 592
    sw	$v1,4136($zero)
    lw	$a4,4140($zero)
    addiu	$at,$v0,-6
    sw	$at,4128($zero)
    addiu	$a4,$a4,6
    # Line 593
    b	.L0da746b0
    # Line 592
    sw	$a4,4140($zero)
.L0da74634:
    # Line 605
    lw	$v0,4128($zero)
    slti	$v1,$v0,6
    beqzl	$v1,.L0da74664
    lw	$v1,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,24($sp)
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,24($sp)
    ld	$ra,16($sp)
    lw	$v1,4136($zero)
.L0da74664:
    # Line 606
    li	$a4,5140
    # Line 607
    addiu	$a3,$s0,-16384
    sw	$a3,4($v1)
    # Line 606
    sw	$a4,0($v1)
    # Line 608
    lwc1	$f3,0($a2)
    swc1	$f3,8($v1)
    # Line 609
    lwc1	$f2,4($a2)
    swc1	$f2,12($v1)
    # Line 610
    lwc1	$f1,8($a2)
    swc1	$f1,16($v1)
    # Line 611
    lwc1	$f0,12($a2)
    # Line 612
    addiu	$a4,$v0,-6
    # Line 611
    swc1	$f0,20($v1)
    # Line 612
    addiu	$at,$v1,24
    lw	$a3,4140($zero)
    sw	$at,4136($zero)
    sw	$a4,4128($zero)
    addiu	$a3,$a3,6
    sw	$a3,4140($zero)
.L0da746b0:
    ld	$gp,0($sp)
    # Line 672
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da746c0:
    # Line 595
    lw	$v0,4128($zero)
    slti	$at,$v0,6
    beqzl	$at,.L0da746f0
    lw	$at,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,24($sp)
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,24($sp)
    ld	$ra,16($sp)
    lw	$at,4136($zero)
.L0da746f0:
    # Line 596
    li	$a3,4884
    sw	$a3,0($at)
    # Line 597
    addiu	$v1,$s0,-16384
    sw	$v1,4($at)
    # Line 598
    lwc1	$f3,0($a2)
    swc1	$f3,8($at)
    # Line 599
    lwc1	$f2,4($a2)
    swc1	$f2,12($at)
    # Line 600
    lwc1	$f1,8($a2)
    swc1	$f1,16($at)
    # Line 601
    lwc1	$f0,12($a2)
    # Line 602
    addiu	$a4,$at,24
    # Line 601
    swc1	$f0,20($at)
    # Line 602
    sw	$a4,4136($zero)
    lw	$v1,4140($zero)
    addiu	$a3,$v0,-6
    sw	$a3,4128($zero)
    addiu	$v1,$v1,6
    # Line 603
    b	.L0da746b0
    # Line 602
    sw	$v1,4140($zero)
.L0da74740:
    # Line 615
    lw	$v0,4128($zero)
    slti	$a4,$v0,6
    beqzl	$a4,.L0da74770
    lw	$a4,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,24($sp)
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,24($sp)
    ld	$ra,16($sp)
    lw	$a4,4136($zero)
.L0da74770:
    # Line 616
    li	$v1,20244
    # Line 617
    addiu	$at,$s0,-16384
    sw	$at,4($a4)
    # Line 616
    sw	$v1,0($a4)
    # Line 618
    lwc1	$f3,0($a2)
    swc1	$f3,8($a4)
    # Line 619
    lwc1	$f2,4($a2)
    swc1	$f2,12($a4)
    # Line 620
    lwc1	$f1,8($a2)
    swc1	$f1,16($a4)
    # Line 621
    lwc1	$f0,12($a2)
    # Line 622
    addiu	$v1,$v0,-6
    # Line 621
    swc1	$f0,20($a4)
    # Line 622
    addiu	$a3,$a4,24
    lw	$at,4140($zero)
    sw	$a3,4136($zero)
    sw	$v1,4128($zero)
    addiu	$at,$at,6
    # Line 623
    b	.L0da746b0
    # Line 622
    sw	$at,4140($zero)
.L0da747c0:
    # Line 625
    lw	$v0,4128($zero)
    slti	$a3,$v0,5
    beqzl	$a3,.L0da747f0
    lw	$a3,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,24($sp)
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,24($sp)
    ld	$ra,16($sp)
    lw	$a3,4136($zero)
.L0da747f0:
    # Line 626
    li	$at,20496
    # Line 627
    addiu	$a4,$s0,-16384
    sw	$a4,4($a3)
    # Line 626
    sw	$at,0($a3)
    # Line 628
    lwc1	$f2,0($a2)
    swc1	$f2,8($a3)
    # Line 629
    lwc1	$f1,4($a2)
    swc1	$f1,12($a3)
    # Line 630
    lwc1	$f0,8($a2)
    # Line 631
    addiu	$at,$v0,-5
    # Line 630
    swc1	$f0,16($a3)
    # Line 631
    addiu	$v1,$a3,20
    lw	$a4,4140($zero)
    sw	$v1,4136($zero)
    sw	$at,4128($zero)
    addiu	$a4,$a4,5
    # Line 632
    b	.L0da746b0
    # Line 631
    sw	$a4,4140($zero)
.L0da74838:
    # Line 634
    lw	$v0,4128($zero)
    slti	$v1,$v0,3
    beqzl	$v1,.L0da74868
    lw	$v1,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,24($sp)
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,24($sp)
    ld	$ra,16($sp)
    lw	$v1,4136($zero)
.L0da74868:
    # Line 635
    li	$a4,20744
    # Line 636
    addiu	$a3,$s0,-16384
    sw	$a3,4($v1)
    # Line 635
    sw	$a4,0($v1)
    # Line 637
    lwc1	$f3,0($a2)
    # Line 638
    addiu	$a4,$v0,-3
    # Line 637
    swc1	$f3,8($v1)
    # Line 638
    addiu	$at,$v1,12
    lw	$a3,4140($zero)
    sw	$at,4136($zero)
    sw	$a4,4128($zero)
    addiu	$a3,$a3,3
    # Line 639
    b	.L0da746b0
    # Line 638
    sw	$a3,4140($zero)
.L0da748a0:
    # Line 641
    lw	$v0,4128($zero)
    slti	$at,$v0,3
    beqzl	$at,.L0da748d0
    lw	$at,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,24($sp)
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,24($sp)
    ld	$ra,16($sp)
    lw	$at,4136($zero)
.L0da748d0:
    # Line 642
    li	$a3,21000
    # Line 643
    addiu	$v1,$s0,-16384
    sw	$v1,4($at)
    # Line 642
    sw	$a3,0($at)
    # Line 644
    lwc1	$f0,0($a2)
    # Line 645
    addiu	$a3,$v0,-3
    # Line 644
    swc1	$f0,8($at)
    # Line 645
    addiu	$a4,$at,12
    lw	$v1,4140($zero)
    sw	$a4,4136($zero)
    sw	$a3,4128($zero)
    addiu	$v1,$v1,3
    # Line 646
    b	.L0da746b0
    # Line 645
    sw	$v1,4140($zero)
.L0da74908:
    # Line 648
    lw	$v0,4128($zero)
    slti	$a4,$v0,3
    beqzl	$a4,.L0da74938
    lw	$a4,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,24($sp)
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,24($sp)
    ld	$ra,16($sp)
    lw	$a4,4136($zero)
.L0da74938:
    # Line 649
    li	$v1,21256
    # Line 650
    addiu	$at,$s0,-16384
    sw	$at,4($a4)
    # Line 649
    sw	$v1,0($a4)
    # Line 651
    lwc1	$f1,0($a2)
    # Line 652
    addiu	$v1,$v0,-3
    # Line 651
    swc1	$f1,8($a4)
    # Line 652
    addiu	$a3,$a4,12
    lw	$at,4140($zero)
    sw	$a3,4136($zero)
    sw	$v1,4128($zero)
    addiu	$at,$at,3
    # Line 653
    b	.L0da746b0
    # Line 652
    sw	$at,4140($zero)
.L0da74970:
    # Line 655
    lw	$v0,4128($zero)
    slti	$a3,$v0,3
    beqzl	$a3,.L0da749a0
    lw	$a3,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,24($sp)
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,24($sp)
    ld	$ra,16($sp)
    lw	$a3,4136($zero)
.L0da749a0:
    # Line 656
    li	$at,21512
    # Line 657
    addiu	$a4,$s0,-16384
    sw	$a4,4($a3)
    # Line 656
    sw	$at,0($a3)
    # Line 658
    lwc1	$f2,0($a2)
    # Line 659
    addiu	$at,$v0,-3
    # Line 658
    swc1	$f2,8($a3)
    # Line 659
    addiu	$v1,$a3,12
    lw	$a4,4140($zero)
    sw	$v1,4136($zero)
    sw	$at,4128($zero)
    addiu	$a4,$a4,3
    # Line 660
    b	.L0da746b0
    # Line 659
    sw	$a4,4140($zero)
.L0da749d8:
    # Line 662
    lw	$v0,4128($zero)
    slti	$v1,$v0,3
    beqzl	$v1,.L0da74a08
    lw	$v1,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,24($sp)
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,24($sp)
    ld	$ra,16($sp)
    lw	$v1,4136($zero)
.L0da74a08:
    # Line 663
    li	$a4,21768
    # Line 664
    addiu	$a3,$s0,-16384
    sw	$a3,4($v1)
    # Line 663
    sw	$a4,0($v1)
    # Line 665
    lwc1	$f3,0($a2)
    # Line 666
    addiu	$a4,$v0,-3
    # Line 665
    swc1	$f3,8($v1)
    # Line 666
    addiu	$at,$v1,12
    lw	$a3,4140($zero)
    sw	$at,4136($zero)
    sw	$a4,4128($zero)
    addiu	$a3,$a3,3
    # Line 667
    b	.L0da746b0
    # Line 666
    sw	$a3,4140($zero)
.end __glMgrlc_Lightfv

# Function: __glMgrlc_Lighti
# Declared: Line 675 (Source lines: 676-718)
# Address: 0x0da74a40 - 0x0da74b8c (Size: 332 bytes, Frame: 208)
.globl __glMgrlc_Lighti
.ent __glMgrlc_Lighti
__glMgrlc_Lighti:
    # Line 679
    sltiu	$at,$a0,16384
    # Line 676
    addiu	$sp,$sp,-80
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-25512
    # Line 679
    bnez	$at,.L0da74ab8
    # Line 676
    addu	$gp,$t9,$v0
    # Line 679
    sltiu	$v1,$s0,16392
    beqz	$v1,.L0da74ab8
    # Line 686
    li	$a3,4613
    beq	$a1,$a3,.L0da74b38
    li	$a4,4614
    beq	$a1,$a4,.L0da74b68
    li	$at,4615
    beq	$a1,$at,.L0da74b74
    li	$v1,4616
    beq	$a1,$v1,.L0da74b80
    li	$a3,4617
    beq	$a1,$a3,.L0da74adc
    # Line 709
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,16($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 710
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da74ab8:
    # Line 681
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,16($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 682
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da74adc:
    # Line 701
    li	$a0,21768
    # Line 713
    lw	$v0,4128($zero)
.L0da74ae4:
    slti	$a4,$v0,3
    bnezl	$a4,.L0da74b44
    sd	$a2,32($sp)
.L0da74af0:
    # Line 716
    mtc1	$a2,$f0
    ld	$gp,0($sp)
    cvt.s.w	$f0,$f0
    # Line 713
    lw	$a3,4136($zero)
    # Line 717
    addiu	$at,$v0,-3
    # Line 715
    addiu	$a4,$s0,-16384
    sw	$a4,4($a3)
    # Line 714
    sw	$a0,0($a3)
    # Line 716
    swc1	$f0,8($a3)
    # Line 717
    addiu	$v1,$a3,12
    lw	$s0,4140($zero)
    sw	$v1,4136($zero)
    sw	$at,4128($zero)
    addiu	$s0,$s0,3
    sw	$s0,4140($zero)
    # Line 718
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da74b38:
    # Line 689
    li	$a0,20744
    # Line 690
    b	.L0da74ae4
    # Line 713
    lw	$v0,4128($zero)
.L0da74b44:
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a0,24($sp)
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a0,24($sp)
    ld	$a2,32($sp)
    b	.L0da74af0
    ld	$ra,16($sp)
.L0da74b68:
    # Line 692
    li	$a0,21000
    # Line 693
    b	.L0da74ae4
    # Line 713
    lw	$v0,4128($zero)
.L0da74b74:
    # Line 695
    li	$a0,21256
    # Line 696
    b	.L0da74ae4
    # Line 713
    lw	$v0,4128($zero)
.L0da74b80:
    # Line 698
    li	$a0,21512
    # Line 699
    b	.L0da74ae4
    # Line 713
    lw	$v0,4128($zero)
.end __glMgrlc_Lighti

# Function: __glMgrlc_Lightiv
# Declared: Line 721 (Source lines: 722-822)
# Address: 0x0da74b8c - 0x0da752c8 (Size: 1852 bytes, Frame: 208)
.globl __glMgrlc_Lightiv
.ent __glMgrlc_Lightiv
__glMgrlc_Lightiv:
    # Line 723
    lw	$a5,__glCurrentContext
    # Line 725
    sltiu	$at,$a0,16384
    # Line 722
    addiu	$sp,$sp,-80
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-25844
    # Line 725
    bnez	$at,.L0da74be4
    # Line 722
    addu	$gp,$t9,$v0
    # Line 725
    sltiu	$v1,$s0,16392
    beqz	$v1,.L0da74be4
    # Line 728
    addiu	$v0,$a1,-4608
    la	$v1,sub_0dbf0000
    sltiu	$a3,$v0,10
    sll	$v0,$v0,0x2
    addiu	$v1,$v1,-12088
    beqz	$a3,.L0da74c08
    addu	$v0,$v0,$v1
    lw	$v1,%lo(jtbl_0dbed0c8)($v0)
    jr	$v1
    nop
.L0da74be4:
    # Line 727
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,16($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 728
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da74c08:
    # Line 819
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,16($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 820
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da74c2c:
    # Line 735
    lw	$v0,4128($zero)
    slti	$a3,$v0,6
    beqzl	$a3,.L0da74c64
    lw	$a3,4136($zero)
    sd	$a2,32($sp)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a5,24($sp)
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a5,24($sp)
    ld	$a2,32($sp)
    ld	$ra,16($sp)
    lw	$a3,4136($zero)
.L0da74c64:
    # Line 736
    li	$v1,4628
    sw	$v1,0($a3)
    # Line 737
    addiu	$at,$s0,-16384
    sw	$at,4($a3)
    # Line 738
    lw	$a4,0($a2)
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f3,_lit_40000000
    mul.s	$f1,$f1,$f3
    lwc1	$f2,_lit_3f800000
    add.s	$f1,$f1,$f2
    lwc1	$f0,3308($a5)
    mul.s	$f0,$f0,$f1
    swc1	$f0,8($a3)
    # Line 739
    lw	$v1,4($a2)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    lwc1	$f0,3308($a5)
    mul.s	$f0,$f0,$f1
    swc1	$f0,12($a3)
    # Line 740
    lw	$at,8($a2)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    lwc1	$f0,3308($a5)
    mul.s	$f0,$f0,$f1
    swc1	$f0,16($a3)
    # Line 741
    lw	$a4,12($a2)
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    lwc1	$f0,3308($a5)
    mul.s	$f0,$f0,$f1
    # Line 742
    addiu	$v1,$a3,24
    # Line 741
    swc1	$f0,20($a3)
    # Line 742
    sw	$v1,4136($zero)
    lw	$a4,4140($zero)
    addiu	$at,$v0,-6
    sw	$at,4128($zero)
    addiu	$a4,$a4,6
    # Line 743
    b	.L0da74e28
    # Line 742
    sw	$a4,4140($zero)
.L0da74d2c:
    # Line 755
    lw	$v0,4128($zero)
    slti	$a3,$v0,6
    beqzl	$a3,.L0da74d64
    lw	$a3,4136($zero)
    sd	$a2,32($sp)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a5,24($sp)
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a5,24($sp)
    ld	$a2,32($sp)
    ld	$ra,16($sp)
    lw	$a3,4136($zero)
.L0da74d64:
    # Line 756
    li	$v1,5140
    # Line 757
    addiu	$at,$s0,-16384
    sw	$at,4($a3)
    # Line 756
    sw	$v1,0($a3)
    # Line 758
    lw	$a4,0($a2)
    mtc1	$a4,$f3
    nop
    cvt.s.w	$f3,$f3
    lwc1	$f1,_lit_40000000
    mul.s	$f3,$f3,$f1
    lwc1	$f0,_lit_3f800000
    add.s	$f3,$f3,$f0
    lwc1	$f2,3308($a5)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a3)
    # Line 759
    lw	$v1,4($a2)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f1
    add.s	$f3,$f3,$f0
    lwc1	$f2,3308($a5)
    mul.s	$f2,$f2,$f3
    swc1	$f2,12($a3)
    # Line 760
    lw	$at,8($a2)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f1
    add.s	$f3,$f3,$f0
    lwc1	$f2,3308($a5)
    mul.s	$f2,$f2,$f3
    swc1	$f2,16($a3)
    # Line 761
    lw	$a4,12($a2)
    mtc1	$a4,$f3
    nop
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f1
    add.s	$f3,$f3,$f0
    lwc1	$f2,3308($a5)
    mul.s	$f2,$f2,$f3
    # Line 762
    addiu	$v1,$a3,24
    # Line 761
    swc1	$f2,20($a3)
    # Line 762
    addiu	$at,$v0,-6
    lw	$a4,4140($zero)
    sw	$v1,4136($zero)
    sw	$at,4128($zero)
    addiu	$a4,$a4,6
    sw	$a4,4140($zero)
.L0da74e28:
    ld	$gp,0($sp)
    # Line 822
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da74e38:
    # Line 745
    lw	$v0,4128($zero)
    slti	$a3,$v0,6
    beqzl	$a3,.L0da74e70
    lw	$a3,4136($zero)
    sd	$a2,32($sp)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a5,24($sp)
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a5,24($sp)
    ld	$a2,32($sp)
    ld	$ra,16($sp)
    lw	$a3,4136($zero)
.L0da74e70:
    # Line 746
    li	$v1,4884
    sw	$v1,0($a3)
    # Line 747
    addiu	$at,$s0,-16384
    sw	$at,4($a3)
    # Line 748
    lw	$a4,0($a2)
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f3,_lit_40000000
    mul.s	$f1,$f1,$f3
    lwc1	$f2,_lit_3f800000
    add.s	$f1,$f1,$f2
    lwc1	$f0,3308($a5)
    mul.s	$f0,$f0,$f1
    swc1	$f0,8($a3)
    # Line 749
    lw	$v1,4($a2)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    lwc1	$f0,3308($a5)
    mul.s	$f0,$f0,$f1
    swc1	$f0,12($a3)
    # Line 750
    lw	$at,8($a2)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    lwc1	$f0,3308($a5)
    mul.s	$f0,$f0,$f1
    swc1	$f0,16($a3)
    # Line 751
    lw	$a4,12($a2)
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    lwc1	$f0,3308($a5)
    mul.s	$f0,$f0,$f1
    # Line 752
    addiu	$v1,$a3,24
    # Line 751
    swc1	$f0,20($a3)
    # Line 752
    sw	$v1,4136($zero)
    lw	$a4,4140($zero)
    addiu	$at,$v0,-6
    sw	$at,4128($zero)
    addiu	$a4,$a4,6
    # Line 753
    b	.L0da74e28
    # Line 752
    sw	$a4,4140($zero)
.L0da74f38:
    # Line 765
    lw	$v0,4128($zero)
    slti	$a3,$v0,6
    beqzl	$a3,.L0da74f68
    lw	$a3,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,32($sp)
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,32($sp)
    ld	$ra,16($sp)
    lw	$a3,4136($zero)
.L0da74f68:
    # Line 766
    li	$v1,20244
    # Line 767
    addiu	$at,$s0,-16384
    sw	$at,4($a3)
    # Line 766
    sw	$v1,0($a3)
    # Line 768
    lw	$a4,0($a2)
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,8($a3)
    # Line 769
    lw	$v1,4($a2)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,12($a3)
    # Line 770
    lw	$at,8($a2)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,16($a3)
    # Line 771
    lw	$a4,12($a2)
    mtc1	$a4,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 772
    addiu	$v1,$a3,24
    # Line 771
    swc1	$f2,20($a3)
    # Line 772
    addiu	$at,$v0,-6
    lw	$a4,4140($zero)
    sw	$v1,4136($zero)
    sw	$at,4128($zero)
    addiu	$a4,$a4,6
    # Line 773
    b	.L0da74e28
    # Line 772
    sw	$a4,4140($zero)
.L0da74fe8:
    # Line 775
    lw	$v0,4128($zero)
    slti	$a3,$v0,5
    beqzl	$a3,.L0da75018
    lw	$a3,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,32($sp)
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,32($sp)
    ld	$ra,16($sp)
    lw	$a3,4136($zero)
.L0da75018:
    # Line 776
    li	$at,20496
    # Line 777
    addiu	$a4,$s0,-16384
    sw	$a4,4($a3)
    # Line 776
    sw	$at,0($a3)
    # Line 778
    lw	$v1,0($a2)
    mtc1	$v1,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,8($a3)
    # Line 779
    lw	$at,4($a2)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,12($a3)
    # Line 780
    lw	$a4,8($a2)
    mtc1	$a4,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 781
    addiu	$v1,$a3,20
    # Line 780
    swc1	$f2,16($a3)
    # Line 781
    addiu	$at,$v0,-5
    lw	$a4,4140($zero)
    sw	$v1,4136($zero)
    sw	$at,4128($zero)
    addiu	$a4,$a4,5
    # Line 782
    b	.L0da74e28
    # Line 781
    sw	$a4,4140($zero)
.L0da75084:
    # Line 784
    lw	$v0,4128($zero)
    slti	$v1,$v0,3
    beqzl	$v1,.L0da750b4
    lw	$v1,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,32($sp)
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,32($sp)
    ld	$ra,16($sp)
    lw	$v1,4136($zero)
.L0da750b4:
    # Line 785
    li	$at,20744
    # Line 786
    addiu	$a4,$s0,-16384
    sw	$a4,4($v1)
    # Line 785
    sw	$at,0($v1)
    # Line 787
    lw	$a3,0($a2)
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 788
    addiu	$a4,$v0,-3
    # Line 787
    swc1	$f1,8($v1)
    # Line 788
    addiu	$at,$v1,12
    lw	$a3,4140($zero)
    sw	$at,4136($zero)
    sw	$a4,4128($zero)
    addiu	$a3,$a3,3
    # Line 789
    b	.L0da74e28
    # Line 788
    sw	$a3,4140($zero)
.L0da750f8:
    # Line 791
    lw	$v0,4128($zero)
    slti	$v1,$v0,3
    beqzl	$v1,.L0da75128
    lw	$v1,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,32($sp)
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,32($sp)
    ld	$ra,16($sp)
    lw	$v1,4136($zero)
.L0da75128:
    # Line 792
    li	$at,21000
    # Line 793
    addiu	$a4,$s0,-16384
    sw	$a4,4($v1)
    # Line 792
    sw	$at,0($v1)
    # Line 794
    lw	$a3,0($a2)
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 795
    addiu	$a4,$v0,-3
    # Line 794
    swc1	$f2,8($v1)
    # Line 795
    addiu	$at,$v1,12
    lw	$a3,4140($zero)
    sw	$at,4136($zero)
    sw	$a4,4128($zero)
    addiu	$a3,$a3,3
    # Line 796
    b	.L0da74e28
    # Line 795
    sw	$a3,4140($zero)
.L0da7516c:
    # Line 798
    lw	$v0,4128($zero)
    slti	$v1,$v0,3
    beqzl	$v1,.L0da7519c
    lw	$v1,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,32($sp)
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,32($sp)
    ld	$ra,16($sp)
    lw	$v1,4136($zero)
.L0da7519c:
    # Line 799
    li	$at,21256
    # Line 800
    addiu	$a4,$s0,-16384
    sw	$a4,4($v1)
    # Line 799
    sw	$at,0($v1)
    # Line 801
    lw	$a3,0($a2)
    mtc1	$a3,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 802
    addiu	$a4,$v0,-3
    # Line 801
    swc1	$f3,8($v1)
    # Line 802
    addiu	$at,$v1,12
    lw	$a3,4140($zero)
    sw	$at,4136($zero)
    sw	$a4,4128($zero)
    addiu	$a3,$a3,3
    # Line 803
    b	.L0da74e28
    # Line 802
    sw	$a3,4140($zero)
.L0da751e0:
    # Line 805
    lw	$v0,4128($zero)
    slti	$v1,$v0,3
    beqzl	$v1,.L0da75210
    lw	$v1,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,32($sp)
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,32($sp)
    ld	$ra,16($sp)
    lw	$v1,4136($zero)
.L0da75210:
    # Line 806
    li	$at,21512
    # Line 807
    addiu	$a4,$s0,-16384
    sw	$a4,4($v1)
    # Line 806
    sw	$at,0($v1)
    # Line 808
    lw	$a3,0($a2)
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 809
    addiu	$a4,$v0,-3
    # Line 808
    swc1	$f0,8($v1)
    # Line 809
    addiu	$at,$v1,12
    lw	$a3,4140($zero)
    sw	$at,4136($zero)
    sw	$a4,4128($zero)
    addiu	$a3,$a3,3
    # Line 810
    b	.L0da74e28
    # Line 809
    sw	$a3,4140($zero)
.L0da75254:
    # Line 812
    lw	$v0,4128($zero)
    slti	$v1,$v0,3
    beqzl	$v1,.L0da75284
    lw	$v1,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,32($sp)
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,32($sp)
    ld	$ra,16($sp)
    lw	$v1,4136($zero)
.L0da75284:
    # Line 813
    li	$at,21768
    # Line 814
    addiu	$a4,$s0,-16384
    sw	$a4,4($v1)
    # Line 813
    sw	$at,0($v1)
    # Line 815
    lw	$a3,0($a2)
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 816
    addiu	$a4,$v0,-3
    # Line 815
    swc1	$f1,8($v1)
    # Line 816
    addiu	$at,$v1,12
    lw	$a3,4140($zero)
    sw	$at,4136($zero)
    sw	$a4,4128($zero)
    addiu	$a3,$a3,3
    # Line 817
    b	.L0da74e28
    # Line 816
    sw	$a3,4140($zero)
.end __glMgrlc_Lightiv

# Function: __glMgrlc_LightModelf
# Declared: Line 825 (Source lines: 826-847)
# Address: 0x0da752c8 - 0x0da75384 (Size: 188 bytes, Frame: 48)
.globl __glMgrlc_LightModelf
.ent __glMgrlc_LightModelf
__glMgrlc_LightModelf:
    # Line 826
    mov.s	$f4,$f13
    # Line 829
    li	$at,2897
    # Line 826
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-27696
    # Line 829
    beq	$a0,$at,.L0da75358
    # Line 826
    addu	$gp,$t9,$v0
    # Line 829
    li	$v1,2898
    beq	$a0,$v1,.L0da75310
    # Line 839
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,16($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 840
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da75310:
    # Line 835
    li	$a0,22788
.L0da75314:
    # Line 843
    lw	$v0,4128($zero)
    slti	$a1,$v0,2
    bnezl	$a1,.L0da75360
    sdc1	$f4,8($sp)
.L0da75324:
    lw	$a1,4136($zero)
    ld	$gp,0($sp)
    # Line 846
    addiu	$at,$v0,-2
    addiu	$v1,$a1,8
    # Line 845
    swc1	$f4,4($a1)
    # Line 844
    sw	$a0,0($a1)
    # Line 846
    sw	$v1,4136($zero)
    lw	$a2,4140($zero)
    sw	$at,4128($zero)
    # Line 847
    addiu	$sp,$sp,48
    # Line 846
    addiu	$a2,$a2,2
    # Line 847
    jr	$ra
    # Line 846
    sw	$a2,4140($zero)
.L0da75358:
    # Line 833
    b	.L0da75314
    # Line 832
    li	$a0,22532
.L0da75360:
    # Line 843
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a0,24($sp)
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f4,8($sp)
    ld	$a0,24($sp)
    b	.L0da75324
    ld	$ra,16($sp)
.end __glMgrlc_LightModelf

# Function: __glMgrlc_LightModelfv
# Declared: Line 850 (Source lines: 851-879)
# Address: 0x0da75384 - 0x0da754c0 (Size: 316 bytes, Frame: 48)
.globl __glMgrlc_LightModelfv
.ent __glMgrlc_LightModelfv
__glMgrlc_LightModelfv:
    # Line 854
    li	$at,2899
    # Line 851
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-27884
    # Line 854
    beq	$a0,$at,.L0da7541c
    # Line 851
    addu	$gp,$t9,$v0
    # Line 854
    li	$v1,2897
    beq	$a0,$v1,.L0da75478
    li	$a2,2898
    beq	$a0,$a2,.L0da753d0
    # Line 871
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,8($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 872
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da753d0:
    # Line 868
    li	$a0,22788
.L0da753d4:
    # Line 875
    lw	$v0,4128($zero)
    slti	$a3,$v0,2
    bnezl	$a3,.L0da75480
    sd	$a1,24($sp)
.L0da753e4:
    lw	$a2,4136($zero)
    # Line 876
    sw	$a0,0($a2)
    ld	$gp,0($sp)
    # Line 877
    lwc1	$f0,0($a1)
    # Line 878
    addiu	$v0,$v0,-2
    addiu	$v1,$a2,8
    # Line 877
    swc1	$f0,4($a2)
    # Line 878
    sw	$v1,4136($zero)
    lw	$at,4140($zero)
    sw	$v0,4128($zero)
    # Line 879
    addiu	$sp,$sp,48
    # Line 878
    addiu	$at,$at,2
    # Line 879
    jr	$ra
    # Line 878
    sw	$at,4140($zero)
.L0da7541c:
    # Line 857
    lw	$v0,4128($zero)
    slti	$a3,$v0,4
    bnez	$a3,.L0da754a4
    nop	# was lw $t9, -29228($gp) # &__glSPDlistSpace
.L0da7542c:
    lw	$a2,4136($zero)
    # Line 858
    li	$a3,22284
    sw	$a3,0($a2)
    # Line 859
    lwc1	$f3,0($a1)
    swc1	$f3,4($a2)
    # Line 860
    lwc1	$f2,4($a1)
    swc1	$f2,8($a2)
    ld	$gp,0($sp)
    # Line 861
    lwc1	$f1,8($a1)
    # Line 862
    addiu	$v0,$v0,-4
    addiu	$v1,$a2,16
    # Line 861
    swc1	$f1,12($a2)
    # Line 862
    sw	$v1,4136($zero)
    lw	$at,4140($zero)
    sw	$v0,4128($zero)
    # Line 863
    addiu	$sp,$sp,48
    # Line 862
    addiu	$at,$at,4
    # Line 863
    jr	$ra
    # Line 862
    sw	$at,4140($zero)
.L0da75478:
    # Line 866
    b	.L0da753d4
    # Line 865
    li	$a0,22532
.L0da75480:
    # Line 875
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a0,16($sp)
    sd	$ra,8($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a0,16($sp)
    ld	$a1,24($sp)
    b	.L0da753e4
    ld	$ra,8($sp)
.L0da754a4:
    sd	$a1,24($sp)
    sd	$ra,8($sp)
    # Line 857
    jalr	$t9
    move	$a0,$zero
    ld	$a1,24($sp)
    b	.L0da7542c
    ld	$ra,8($sp)
.end __glMgrlc_LightModelfv

# Function: __glMgrlc_LightModeli
# Declared: Line 882 (Source lines: 883-904)
# Address: 0x0da754c0 - 0x0da75578 (Size: 184 bytes, Frame: 48)
.globl __glMgrlc_LightModeli
.ent __glMgrlc_LightModeli
__glMgrlc_LightModeli:
    # Line 886
    li	$at,2897
    # Line 883
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-28200
    # Line 886
    beq	$a0,$at,.L0da7554c
    # Line 883
    addu	$gp,$t9,$v0
    # Line 886
    li	$v1,2898
    beq	$a0,$v1,.L0da75504
    # Line 896
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,8($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 897
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da75504:
    # Line 892
    li	$a0,22788
.L0da75508:
    # Line 900
    lw	$v0,4128($zero)
    slti	$a2,$v0,2
    bnezl	$a2,.L0da75554
    sd	$a1,24($sp)
.L0da75518:
    lw	$a2,4136($zero)
    ld	$gp,0($sp)
    # Line 903
    addiu	$at,$v0,-2
    addiu	$v1,$a2,8
    # Line 902
    sw	$a1,4($a2)
    # Line 901
    sw	$a0,0($a2)
    # Line 903
    sw	$v1,4136($zero)
    lw	$a3,4140($zero)
    sw	$at,4128($zero)
    # Line 904
    addiu	$sp,$sp,48
    # Line 903
    addiu	$a3,$a3,2
    # Line 904
    jr	$ra
    # Line 903
    sw	$a3,4140($zero)
.L0da7554c:
    # Line 890
    b	.L0da75508
    # Line 889
    li	$a0,22532
.L0da75554:
    # Line 900
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a0,16($sp)
    sd	$ra,8($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a0,16($sp)
    ld	$a1,24($sp)
    b	.L0da75518
    ld	$ra,8($sp)
.end __glMgrlc_LightModeli

# Function: __glMgrlc_LightModeliv
# Declared: Line 907 (Source lines: 908-937)
# Address: 0x0da75578 - 0x0da7571c (Size: 420 bytes, Frame: 192)
.globl __glMgrlc_LightModeliv
.ent __glMgrlc_LightModeliv
__glMgrlc_LightModeliv:
    # Line 910
    lw	$a4,__glCurrentContext
    # Line 912
    li	$at,2899
    # Line 908
    addiu	$sp,$sp,-64
    sd	$gp,0($sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-28384
    # Line 912
    beq	$a0,$at,.L0da75614
    # Line 908
    addu	$gp,$t9,$v0
    # Line 912
    li	$v1,2897
    beq	$a0,$v1,.L0da756cc
    li	$a2,2898
    beq	$a0,$a2,.L0da755c8
    # Line 929
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,8($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 930
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da755c8:
    # Line 926
    li	$a0,22788
.L0da755cc:
    # Line 933
    lw	$v0,4128($zero)
    slti	$a3,$v0,2
    bnezl	$a3,.L0da756d4
    sd	$a1,32($sp)
.L0da755dc:
    lw	$a3,4136($zero)
    # Line 934
    sw	$a0,0($a3)
    ld	$gp,0($sp)
    # Line 935
    lw	$a2,0($a1)
    # Line 936
    addiu	$v0,$v0,-2
    addiu	$v1,$a3,8
    # Line 935
    sw	$a2,4($a3)
    # Line 936
    sw	$v1,4136($zero)
    lw	$at,4140($zero)
    sw	$v0,4128($zero)
    # Line 937
    addiu	$sp,$sp,64
    # Line 936
    addiu	$at,$at,2
    # Line 937
    jr	$ra
    # Line 936
    sw	$at,4140($zero)
.L0da75614:
    # Line 915
    lw	$v0,4128($zero)
    slti	$at,$v0,4
    bnezl	$at,.L0da756f8
    sd	$a1,32($sp)
.L0da75624:
    lw	$at,4136($zero)
    # Line 916
    li	$v1,22284
    sw	$v1,0($at)
    # Line 917
    lw	$a3,0($a1)
    mtc1	$a3,$f4
    nop
    cvt.s.w	$f4,$f4
    lwc1	$f3,_lit_40000000
    mul.s	$f4,$f4,$f3
    lwc1	$f2,_lit_3f800000
    add.s	$f4,$f4,$f2
    lwc1	$f1,3308($a4)
    mul.s	$f1,$f1,$f4
    swc1	$f1,4($at)
    # Line 918
    lw	$a2,4($a1)
    mtc1	$a2,$f0
    nop
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f3
    add.s	$f0,$f0,$f2
    lwc1	$f4,3308($a4)
    mul.s	$f4,$f4,$f0
    swc1	$f4,8($at)
    # Line 919
    lw	$v1,8($a1)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    lwc1	$f0,3308($a4)
    mul.s	$f0,$f0,$f1
    ld	$gp,0($sp)
    # Line 920
    addiu	$a3,$at,16
    addiu	$a2,$v0,-4
    # Line 919
    swc1	$f0,12($at)
    # Line 920
    sw	$a3,4136($zero)
    lw	$v1,4140($zero)
    sw	$a2,4128($zero)
    # Line 921
    addiu	$sp,$sp,64
    # Line 920
    addiu	$v0,$v1,4
    # Line 921
    jr	$ra
    # Line 920
    sw	$v0,4140($zero)
.L0da756cc:
    # Line 924
    b	.L0da755cc
    # Line 923
    li	$a0,22532
.L0da756d4:
    # Line 933
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a0,16($sp)
    sd	$ra,8($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a0,16($sp)
    ld	$a1,32($sp)
    b	.L0da755dc
    ld	$ra,8($sp)
.L0da756f8:
    # Line 915
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a4,24($sp)
    sd	$ra,8($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a4,24($sp)
    ld	$a1,32($sp)
    b	.L0da75624
    ld	$ra,8($sp)
.end __glMgrlc_LightModeliv

# Function: __glMgrlc_Materialf
# Declared: Line 940 (Source lines: 941-963)
# Address: 0x0da7571c - 0x0da7583c (Size: 288 bytes, Frame: 208)
.globl __glMgrlc_Materialf
.ent __glMgrlc_Materialf
__glMgrlc_Materialf:
    # Line 941
    mov.s	$f4,$f14
    # Line 942
    sltiu	$at,$a0,1028
    # Line 941
    addiu	$sp,$sp,-80
    sd	$s1,8($sp)
    move	$s1,$a1
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-28804
    # Line 942
    bnez	$at,.L0da75754
    # Line 941
    addu	$gp,$t9,$v0
    # Line 942
    sltiu	$v1,$s0,1030
    bnez	$v1,.L0da75788
.L0da75754:
    li	$a2,1032
    beq	$s0,$a2,.L0da7578c
    # Line 946
    li	$a3,5633
    # Line 945
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,32($sp)
    jal	__glsplc_InvalidEnum
    nop
    ld	$gp,0($sp)
    # Line 946
    ld	$ra,32($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da75788:
    li	$a3,5633
.L0da7578c:
    beql	$s1,$a3,.L0da757bc
    # Line 954
    lw	$v0,4128($zero)
    # Line 950
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,32($sp)
    jal	__glsplc_InvalidEnum
    nop
    ld	$gp,0($sp)
    # Line 951
    ld	$ra,32($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da757bc:
    # Line 954
    slti	$at,$v0,7
    bnez	$at,.L0da75820
    nop	# was lw $t9, -29228($gp) # &__glSPDlistSpace
.L0da757c8:
    lw	$a3,4136($zero)
    # Line 959
    mtc1	$zero,$f0
    ld	$gp,0($sp)
    # Line 962
    addiu	$a0,$v0,-7
    # Line 956
    sw	$s0,4($a3)
    # Line 963
    ld	$s0,16($sp)
    # Line 957
    sw	$s1,8($a3)
    # Line 963
    ld	$s1,8($sp)
    # Line 962
    addiu	$a2,$a3,28
    # Line 955
    li	$at,4376
    # Line 961
    swc1	$f0,24($a3)
    # Line 960
    swc1	$f0,20($a3)
    # Line 959
    swc1	$f0,16($a3)
    # Line 958
    swc1	$f4,12($a3)
    # Line 955
    sw	$at,0($a3)
    # Line 962
    sw	$a2,4136($zero)
    lw	$v1,4140($zero)
    sw	$a0,4128($zero)
    # Line 963
    addiu	$sp,$sp,80
    # Line 962
    addiu	$v0,$v1,7
    # Line 963
    jr	$ra
    # Line 962
    sw	$v0,4140($zero)
.L0da75820:
    sdc1	$f4,24($sp)
    sd	$ra,32($sp)
    # Line 954
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f4,24($sp)
    b	.L0da757c8
    ld	$ra,32($sp)
.end __glMgrlc_Materialf

# Function: __glMgrlc_Materialfv
# Declared: Line 966 (Source lines: 967-999)
# Address: 0x0da7583c - 0x0da759d4 (Size: 408 bytes, Frame: 208)
.globl __glMgrlc_Materialfv
.ent __glMgrlc_Materialfv
__glMgrlc_Materialfv:
    # Line 968
    sltiu	$at,$a0,1028
    # Line 967
    addiu	$sp,$sp,-80
    sd	$s0,16($sp)
    move	$s0,$a1
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$gp,0($sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-29092
    # Line 968
    bnez	$at,.L0da75870
    # Line 967
    addu	$gp,$t9,$v0
    # Line 968
    sltiu	$v1,$s1,1030
    bnez	$v1,.L0da758a4
.L0da75870:
    li	$a3,1032
    beq	$s1,$a3,.L0da758a8
    # Line 972
    sltiu	$a4,$s0,5632
    # Line 971
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,24($sp)
    jal	__glsplc_InvalidEnum
    nop
    ld	$gp,0($sp)
    # Line 972
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da758a4:
    sltiu	$a4,$s0,5632
.L0da758a8:
    bnez	$a4,.L0da7592c
    # Line 975
    sltiu	$at,$s0,5633
    beqz	$at,.L0da75984
    sltiu	$a3,$s0,5634
.L0da758b8:
    # Line 990
    lw	$v0,4128($zero)
.L0da758bc:
    slti	$v1,$v0,7
    bnez	$v1,.L0da759a4
    nop	# was lw $t9, -29228($gp) # &__glSPDlistSpace
.L0da758c8:
    lw	$at,4136($zero)
    # Line 991
    li	$v1,4376
    # Line 993
    sw	$s0,8($at)
    # Line 992
    sw	$s1,4($at)
    # Line 991
    sw	$v1,0($at)
    # Line 994
    lwc1	$f3,0($a2)
    swc1	$f3,12($at)
    # Line 995
    lwc1	$f2,4($a2)
    swc1	$f2,16($at)
    # Line 996
    lwc1	$f1,8($a2)
    ld	$gp,0($sp)
    swc1	$f1,20($at)
    # Line 998
    addiu	$a4,$v0,-7
    # Line 997
    lwc1	$f0,12($a2)
    # Line 999
    ld	$s1,8($sp)
    # Line 998
    addiu	$s0,$at,28
    # Line 997
    swc1	$f0,24($at)
    # Line 998
    sw	$a4,4128($zero)
    sw	$s0,4136($zero)
    lw	$a3,4140($zero)
    # Line 999
    ld	$s0,16($sp)
    addiu	$sp,$sp,80
    # Line 998
    addiu	$a3,$a3,7
    # Line 999
    jr	$ra
    # Line 998
    sw	$a3,4140($zero)
.L0da7592c:
    # Line 975
    sltiu	$a3,$s0,4609
    bnez	$a3,.L0da75950
    sltiu	$a4,$s0,4610
    bnez	$a4,.L0da758b8
    li	$at,4610
    bne	$s0,$at,.L0da75960
    # Line 986
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0da758bc
    # Line 990
    lw	$v0,4128($zero)
.L0da75950:
    # Line 975
    li	$v1,4608
    beql	$s0,$v1,.L0da758bc
    # Line 990
    lw	$v0,4128($zero)
.L0da7595c:
    # Line 986
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
.L0da75960:
    sd	$ra,24($sp)
    jal	__glsplc_InvalidEnum
    nop
    ld	$gp,0($sp)
    # Line 987
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da75984:
    # Line 975
    bnez	$a3,.L0da759c0
    sltiu	$a4,$s0,5635
    bnez	$a4,.L0da758b8
    li	$at,5635
    beql	$s0,$at,.L0da758bc
    # Line 990
    lw	$v0,4128($zero)
    b	.L0da7595c
    sd	$ra,24($sp)
.L0da759a4:
    sd	$a2,32($sp)
    sd	$ra,24($sp)
    jalr	$t9
    move	$a0,$zero
    ld	$a2,32($sp)
    b	.L0da758c8
    ld	$ra,24($sp)
.L0da759c0:
    # Line 975
    li	$v1,5633
    bne	$s0,$v1,.L0da75960
    # Line 986
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0da758bc
    # Line 990
    lw	$v0,4128($zero)
.end __glMgrlc_Materialfv

# Function: __glMgrlc_Materiali
# Declared: Line 1002 (Source lines: 1003-1025)
# Address: 0x0da759d4 - 0x0da75af8 (Size: 292 bytes, Frame: 208)
.globl __glMgrlc_Materiali
.ent __glMgrlc_Materiali
__glMgrlc_Materiali:
    # Line 1004
    sltiu	$at,$a0,1028
    # Line 1003
    addiu	$sp,$sp,-80
    sd	$s1,8($sp)
    move	$s1,$a1
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-29500
    # Line 1004
    bnez	$at,.L0da75a08
    # Line 1003
    addu	$gp,$t9,$v0
    # Line 1004
    sltiu	$v1,$s0,1030
    bnez	$v1,.L0da75a3c
.L0da75a08:
    li	$a3,1032
    beq	$s0,$a3,.L0da75a40
    # Line 1008
    li	$a4,5633
    # Line 1007
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,24($sp)
    jal	__glsplc_InvalidEnum
    nop
    ld	$gp,0($sp)
    # Line 1008
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da75a3c:
    li	$a4,5633
.L0da75a40:
    beql	$s1,$a4,.L0da75a70
    # Line 1016
    lw	$v0,4128($zero)
    # Line 1012
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,24($sp)
    jal	__glsplc_InvalidEnum
    nop
    ld	$gp,0($sp)
    # Line 1013
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da75a70:
    # Line 1016
    slti	$at,$v0,7
    bnez	$at,.L0da75adc
    nop	# was lw $t9, -29228($gp) # &__glSPDlistSpace
.L0da75a7c:
    lw	$a4,4136($zero)
    # Line 1021
    mtc1	$zero,$f0
    ld	$gp,0($sp)
    # Line 1024
    addiu	$a0,$v0,-7
    # Line 1018
    sw	$s0,4($a4)
    # Line 1025
    ld	$s0,16($sp)
    # Line 1019
    sw	$s1,8($a4)
    # Line 1020
    mtc1	$a2,$f1
    # Line 1025
    ld	$s1,8($sp)
    # Line 1024
    addiu	$a3,$a4,28
    # Line 1020
    cvt.s.w	$f1,$f1
    # Line 1017
    li	$at,4376
    # Line 1023
    swc1	$f0,24($a4)
    # Line 1022
    swc1	$f0,20($a4)
    # Line 1021
    swc1	$f0,16($a4)
    # Line 1017
    sw	$at,0($a4)
    # Line 1020
    swc1	$f1,12($a4)
    # Line 1024
    sw	$a3,4136($zero)
    lw	$v1,4140($zero)
    sw	$a0,4128($zero)
    # Line 1025
    addiu	$sp,$sp,80
    # Line 1024
    addiu	$v0,$v1,7
    # Line 1025
    jr	$ra
    # Line 1024
    sw	$v0,4140($zero)
.L0da75adc:
    sd	$a2,32($sp)
    sd	$ra,24($sp)
    # Line 1016
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,32($sp)
    b	.L0da75a7c
    ld	$ra,24($sp)
.end __glMgrlc_Materiali

# Function: __glMgrlc_Materialiv
# Declared: Line 1028 (Source lines: 1029-1082)
# Address: 0x0da75af8 - 0x0da75e10 (Size: 792 bytes, Frame: 208)
.globl __glMgrlc_Materialiv
.ent __glMgrlc_Materialiv
__glMgrlc_Materialiv:
    # Line 1030
    lw	$a5,__glCurrentContext
    # Line 1032
    sltiu	$at,$a0,1028
    # Line 1029
    addiu	$sp,$sp,-80
    sd	$s0,16($sp)
    move	$s0,$a1
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$gp,0($sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-29792
    # Line 1032
    bnez	$at,.L0da75b30
    # Line 1029
    addu	$gp,$t9,$v0
    # Line 1032
    sltiu	$v1,$s1,1030
    bnez	$v1,.L0da75b64
.L0da75b30:
    li	$a3,1032
    beq	$s1,$a3,.L0da75b68
    # Line 1036
    sltiu	$a4,$s0,5632
    # Line 1035
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,24($sp)
    jal	__glsplc_InvalidEnum
    nop
    ld	$gp,0($sp)
    # Line 1036
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da75b64:
    sltiu	$a4,$s0,5632
.L0da75b68:
    bnez	$a4,.L0da75c34
    # Line 1039
    sltiu	$at,$s0,5633
    bnez	$at,.L0da75c74
    sltiu	$v1,$s0,5634
    bnez	$v1,.L0da75d84
    sltiu	$a3,$s0,5635
    bnez	$a3,.L0da75c74
    li	$a4,5635
    bne	$s0,$a4,.L0da75c54
    # Line 1079
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    # Line 1068
    lw	$v0,4128($zero)
    slti	$at,$v0,7
    beqzl	$at,.L0da75bc0
    lw	$at,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,40($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,40($sp)
    ld	$ra,24($sp)
    lw	$at,4136($zero)
.L0da75bc0:
    # Line 1069
    li	$v1,4376
    # Line 1071
    sw	$s0,8($at)
    # Line 1070
    sw	$s1,4($at)
    # Line 1069
    sw	$v1,0($at)
    # Line 1072
    lw	$a4,0($a2)
    mtc1	$a4,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,12($at)
    # Line 1073
    lw	$a3,4($a2)
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,16($at)
    # Line 1074
    lw	$v1,8($a2)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 1075
    mtc1	$zero,$f0
    # Line 1076
    addiu	$a4,$at,28
    # Line 1075
    swc1	$f0,24($at)
    # Line 1074
    swc1	$f1,20($at)
    # Line 1076
    addiu	$a3,$v0,-7
    lw	$v1,4140($zero)
    sw	$a4,4136($zero)
    sw	$a3,4128($zero)
    addiu	$v1,$v1,7
    # Line 1077
    b	.L0da75d70
    # Line 1076
    sw	$v1,4140($zero)
.L0da75c34:
    # Line 1039
    sltiu	$a3,$s0,4609
    bnez	$a3,.L0da75c68
    sltiu	$a4,$s0,4610
    bnez	$a4,.L0da75c74
    li	$at,4610
    beql	$s0,$at,.L0da75c78
    # Line 1046
    lw	$v0,4128($zero)
    # Line 1079
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
.L0da75c54:
    sd	$ra,24($sp)
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da75d70
    ld	$ra,24($sp)
.L0da75c68:
    # Line 1039
    li	$v1,4608
    bne	$s0,$v1,.L0da75c54
    # Line 1079
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
.L0da75c74:
    # Line 1046
    lw	$v0,4128($zero)
.L0da75c78:
    slti	$a3,$v0,7
    beqzl	$a3,.L0da75cac
    lw	$a3,4136($zero)
    sd	$a2,40($sp)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a5,32($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a5,32($sp)
    ld	$a2,40($sp)
    ld	$ra,24($sp)
    lw	$a3,4136($zero)
.L0da75cac:
    # Line 1047
    li	$at,4376
    # Line 1049
    sw	$s0,8($a3)
    # Line 1048
    sw	$s1,4($a3)
    # Line 1047
    sw	$at,0($a3)
    # Line 1050
    lw	$a4,0($a2)
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f3,_lit_40000000
    mul.s	$f1,$f1,$f3
    lwc1	$f2,_lit_3f800000
    add.s	$f1,$f1,$f2
    lwc1	$f0,3308($a5)
    mul.s	$f0,$f0,$f1
    swc1	$f0,12($a3)
    # Line 1051
    lw	$v1,4($a2)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    lwc1	$f0,3308($a5)
    mul.s	$f0,$f0,$f1
    swc1	$f0,16($a3)
    # Line 1052
    lw	$at,8($a2)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    lwc1	$f0,3308($a5)
    mul.s	$f0,$f0,$f1
    swc1	$f0,20($a3)
    # Line 1053
    lw	$a4,12($a2)
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    lwc1	$f0,3308($a5)
    mul.s	$f0,$f0,$f1
    # Line 1054
    addiu	$v1,$a3,28
    # Line 1053
    swc1	$f0,24($a3)
    # Line 1054
    addiu	$at,$v0,-7
    lw	$a4,4140($zero)
    sw	$v1,4136($zero)
    sw	$at,4128($zero)
    addiu	$a4,$a4,7
    sw	$a4,4140($zero)
.L0da75d70:
    ld	$gp,0($sp)
    # Line 1082
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da75d84:
    # Line 1039
    li	$v1,5633
    bne	$s0,$v1,.L0da75c54
    # Line 1079
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    # Line 1057
    lw	$v0,4128($zero)
    slti	$a3,$v0,7
    beqzl	$a3,.L0da75dc0
    lw	$a3,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a2,40($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,40($sp)
    ld	$ra,24($sp)
    lw	$a3,4136($zero)
.L0da75dc0:
    # Line 1058
    li	$at,4376
    # Line 1060
    sw	$s0,8($a3)
    # Line 1059
    sw	$s1,4($a3)
    # Line 1058
    sw	$at,0($a3)
    # Line 1061
    lw	$a4,0($a2)
    mtc1	$a4,$f3
    # Line 1062
    mtc1	$zero,$f2
    # Line 1061
    cvt.s.w	$f3,$f3
    # Line 1065
    addiu	$at,$v0,-7
    # Line 1064
    swc1	$f2,24($a3)
    # Line 1063
    swc1	$f2,20($a3)
    # Line 1062
    swc1	$f2,16($a3)
    # Line 1061
    swc1	$f3,12($a3)
    # Line 1065
    addiu	$v1,$a3,28
    lw	$a4,4140($zero)
    sw	$v1,4136($zero)
    sw	$at,4128($zero)
    addiu	$a4,$a4,7
    # Line 1066
    b	.L0da75d70
    # Line 1065
    sw	$a4,4140($zero)
.end __glMgrlc_Materialiv

# Function: __glMgrlc_EdgeFlag
# Declared: Line 1090 (Source lines: 1091-1099)
# Address: 0x0da75e10 - 0x0da75e94 (Size: 132 bytes, Frame: 48)
.globl __glMgrlc_EdgeFlag
.ent __glMgrlc_EdgeFlag
__glMgrlc_EdgeFlag:
    # Line 1091
    li	$at,1
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    sd	$gp,8($sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-30584
    beq	$a0,$at,.L0da75e74
    addu	$gp,$t9,$v0
    # Line 1094
    li	$s8,4096
.L0da75e34:
    # Line 1096
    lw	$v0,4128($zero)
    blez	$v0,.L0da75e80
    nop	# was lw $t9, -29228($gp) # &__glSPDlistSpace
.L0da75e40:
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 1098
    addiu	$a0,$v0,-1
    # Line 1097
    sw	$s8,0($at)
    # Line 1099
    ld	$s8,0($sp)
    # Line 1098
    addiu	$a1,$at,4
    sw	$a1,4136($zero)
    lw	$v1,4140($zero)
    sw	$a0,4128($zero)
    # Line 1099
    addiu	$sp,$sp,48
    # Line 1098
    addiu	$v1,$v1,1
    # Line 1099
    jr	$ra
    # Line 1098
    sw	$v1,4140($zero)
.L0da75e74:
    # Line 1094
    li	$s8,3840
    b	.L0da75e34
    nop
.L0da75e80:
    sd	$ra,16($sp)
    # Line 1096
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da75e40
    ld	$ra,16($sp)
.end __glMgrlc_EdgeFlag

# Function: __glMgrlc_EdgeFlagv
# Declared: Line 1102 (Source lines: 1103-1111)
# Address: 0x0da75e94 - 0x0da75f1c (Size: 136 bytes, Frame: 48)
.globl __glMgrlc_EdgeFlagv
.ent __glMgrlc_EdgeFlagv
__glMgrlc_EdgeFlagv:
    # Line 1103
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    sd	$gp,8($sp)
    lbu	$at,0($a0)
    lui	$v1,0x19
    addiu	$v1,$v1,-30716
    beq	$at,$v0,.L0da75efc
    addu	$gp,$t9,$v1
    # Line 1106
    li	$s8,4096
.L0da75ebc:
    # Line 1108
    lw	$v0,4128($zero)
    blez	$v0,.L0da75f08
    nop	# was lw $t9, -29228($gp) # &__glSPDlistSpace
.L0da75ec8:
    lw	$v1,4136($zero)
    ld	$gp,8($sp)
    # Line 1110
    addiu	$a1,$v0,-1
    # Line 1109
    sw	$s8,0($v1)
    # Line 1111
    ld	$s8,0($sp)
    # Line 1110
    addiu	$at,$v1,4
    sw	$at,4136($zero)
    lw	$a0,4140($zero)
    sw	$a1,4128($zero)
    # Line 1111
    addiu	$sp,$sp,48
    # Line 1110
    addiu	$a0,$a0,1
    # Line 1111
    jr	$ra
    # Line 1110
    sw	$a0,4140($zero)
.L0da75efc:
    # Line 1106
    li	$s8,3840
    b	.L0da75ebc
    nop
.L0da75f08:
    sd	$ra,16($sp)
    # Line 1108
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da75ec8
    ld	$ra,16($sp)
.end __glMgrlc_EdgeFlagv

# Function: __glMgrlc_StencilMask
# Declared: Line 1119 (Source lines: 1120-1125)
# Address: 0x0da75f1c - 0x0da75f98 (Size: 124 bytes, Frame: 48)
.globl __glMgrlc_StencilMask
.ent __glMgrlc_StencilMask
__glMgrlc_StencilMask:
    # Line 1120
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 1121
    lw	$v0,4128($zero)
    # Line 1120
    lui	$v1,0x19
    addiu	$v1,$v1,-30852
    # Line 1121
    slti	$at,$v0,2
    bnez	$at,.L0da75f80
    # Line 1120
    addu	$gp,$t9,$v1
.L0da75f44:
    # Line 1121
    lw	$v1,4136($zero)
    ld	$gp,8($sp)
    # Line 1124
    addiu	$a2,$v0,-2
    # Line 1123
    sw	$s8,4($v1)
    # Line 1125
    ld	$s8,0($sp)
    # Line 1124
    addiu	$at,$v1,8
    # Line 1122
    li	$a1,14852
    sw	$a1,0($v1)
    # Line 1124
    sw	$at,4136($zero)
    lw	$a1,4140($zero)
    sw	$a2,4128($zero)
    # Line 1125
    addiu	$sp,$sp,48
    # Line 1124
    addiu	$a1,$a1,2
    # Line 1125
    jr	$ra
    # Line 1124
    sw	$a1,4140($zero)
.L0da75f80:
    # Line 1121
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da75f44
    ld	$ra,16($sp)
.end __glMgrlc_StencilMask

# Function: __glMgrlc_ColorMask
# Declared: Line 1128 (Source lines: 1129-1135)
# Address: 0x0da75f98 - 0x0da76074 (Size: 220 bytes, Frame: 208)
.globl __glMgrlc_ColorMask
.ent __glMgrlc_ColorMask
__glMgrlc_ColorMask:
    # Line 1129
    addiu	$sp,$sp,-80
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    lui	$at,0x19
    addiu	$at,$at,-30976
    beqz	$a1,.L0da7602c
    addu	$gp,$t9,$at
    # Line 1130
    li	$a0,2
    beqz	$a2,.L0da76038
    nop
.L0da75fc4:
    beqz	$a3,.L0da76040
    li	$a2,4
.L0da75fcc:
    li	$a3,8
.L0da75fd0:
    # Line 1131
    lw	$v0,4128($zero)
    slti	$v1,$v0,2
    bnezl	$v1,.L0da76048
    sd	$a2,24($sp)
.L0da75fe0:
    lw	$at,4136($zero)
    ld	$gp,8($sp)
    # Line 1134
    addiu	$a4,$v0,-2
    addiu	$a5,$at,8
    # Line 1132
    li	$v1,15108
    # Line 1133
    sltu	$s8,$zero,$s8
    or	$s8,$s8,$a0
    # Line 1132
    sw	$v1,0($at)
    # Line 1133
    or	$v1,$a2,$a3
    or	$s8,$s8,$v1
    sw	$s8,4($at)
    # Line 1135
    ld	$s8,0($sp)
    # Line 1134
    sw	$a5,4136($zero)
    lw	$a1,4140($zero)
    sw	$a4,4128($zero)
    # Line 1135
    addiu	$sp,$sp,80
    # Line 1134
    addiu	$a1,$a1,2
    # Line 1135
    jr	$ra
    # Line 1134
    sw	$a1,4140($zero)
.L0da7602c:
    # Line 1130
    move	$a0,$zero
    bnez	$a2,.L0da75fc4
    nop
.L0da76038:
    bnez	$a3,.L0da75fcc
    move	$a2,$zero
.L0da76040:
    b	.L0da75fd0
    move	$a3,$zero
.L0da76048:
    sd	$a3,16($sp)
    # Line 1131
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a0,32($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a3,16($sp)
    ld	$a2,24($sp)
    ld	$a0,32($sp)
    b	.L0da75fe0
    ld	$ra,40($sp)
.end __glMgrlc_ColorMask

# Function: __glMgrlc_DepthMask
# Declared: Line 1138 (Source lines: 1139-1144)
# Address: 0x0da76074 - 0x0da760f0 (Size: 124 bytes, Frame: 48)
.globl __glMgrlc_DepthMask
.ent __glMgrlc_DepthMask
__glMgrlc_DepthMask:
    # Line 1139
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 1140
    lw	$v0,4128($zero)
    # Line 1139
    lui	$v1,0x19
    addiu	$v1,$v1,-31196
    # Line 1140
    slti	$at,$v0,2
    bnez	$at,.L0da760d8
    # Line 1139
    addu	$gp,$t9,$v1
.L0da7609c:
    # Line 1140
    lw	$v1,4136($zero)
    ld	$gp,8($sp)
    # Line 1143
    addiu	$a2,$v0,-2
    # Line 1142
    sw	$s8,4($v1)
    # Line 1144
    ld	$s8,0($sp)
    # Line 1143
    addiu	$at,$v1,8
    # Line 1141
    li	$a1,15364
    sw	$a1,0($v1)
    # Line 1143
    sw	$at,4136($zero)
    lw	$a1,4140($zero)
    sw	$a2,4128($zero)
    # Line 1144
    addiu	$sp,$sp,48
    # Line 1143
    addiu	$a1,$a1,2
    # Line 1144
    jr	$ra
    # Line 1143
    sw	$a1,4140($zero)
.L0da760d8:
    # Line 1140
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da7609c
    ld	$ra,16($sp)
.end __glMgrlc_DepthMask

# Function: __glMgrlc_IndexMask
# Declared: Line 1147 (Source lines: 1148-1155)
# Address: 0x0da760f0 - 0x0da76180 (Size: 144 bytes, Frame: 48)
.globl __glMgrlc_IndexMask
.ent __glMgrlc_IndexMask
__glMgrlc_IndexMask:
    # Line 1149
    lw	$a3,__glCurrentContext
    # Line 1148
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 1151
    lw	$v0,4128($zero)
    # Line 1148
    lui	$v1,0x19
    addiu	$v1,$v1,-31320
    # Line 1151
    slti	$at,$v0,2
    bnez	$at,.L0da76160
    # Line 1148
    addu	$gp,$t9,$v1
.L0da7611c:
    # Line 1151
    lw	$a1,4136($zero)
    # Line 1152
    li	$a2,15620
    sw	$a2,0($a1)
    ld	$gp,8($sp)
    # Line 1153
    lw	$v1,30788($a3)
    # Line 1154
    addiu	$a2,$v0,-2
    addiu	$at,$a1,8
    # Line 1153
    and	$v1,$v1,$s8
    # Line 1155
    ld	$s8,0($sp)
    # Line 1153
    sw	$v1,4($a1)
    # Line 1154
    sw	$at,4136($zero)
    lw	$a1,4140($zero)
    sw	$a2,4128($zero)
    # Line 1155
    addiu	$sp,$sp,48
    # Line 1154
    addiu	$a1,$a1,2
    # Line 1155
    jr	$ra
    # Line 1154
    sw	$a1,4140($zero)
.L0da76160:
    # Line 1151
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a3,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a3,16($sp)
    b	.L0da7611c
    ld	$ra,24($sp)
.end __glMgrlc_IndexMask

# Function: __glMgrlc_AlphaFunc
# Declared: Line 1157 (Source lines: 1158-1177)
# Address: 0x0da76180 - 0x0da762a0 (Size: 288 bytes, Frame: 48)
.globl __glMgrlc_AlphaFunc
.ent __glMgrlc_AlphaFunc
__glMgrlc_AlphaFunc:
    # Line 1159
    lw	$v0,__glCurrentContext
    # Line 1161
    sltiu	$at,$a0,512
    # Line 1158
    addiu	$sp,$sp,-48
    sdc1	$f28,0($sp)
    mov.s	$f28,$f13
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$gp,8($sp)
    lui	$v1,0x19
    addiu	$v1,$v1,-31464
    # Line 1161
    bnez	$at,.L0da76260
    # Line 1158
    addu	$gp,$t9,$v1
    # Line 1161
    sltiu	$a1,$s0,520
    beqz	$a1,.L0da76260
    # Line 1164
    mtc1	$zero,$f4
    c.lt.s	$f28,$f4
    nop
    bc1fl	.L0da76248
    # Line 1168
    lwc1	$f4,3284($v0)
    mov.s	$f28,$f4
.L0da761d0:
    # Line 1172
    lw	$v0,4128($zero)
.L0da761d4:
    slti	$a2,$v0,3
    bnez	$a2,.L0da76288
.L0da761dc:
    # Line 1175
    lwc1	$f0,_lit_457ff000
    mul.s	$f0,$f28,$f0
    ldc1	$f1,_lit8_3fe0000000000000
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f1
    ld	$gp,8($sp)
    # Line 1177
    ldc1	$f28,0($sp)
    # Line 1172
    lw	$a1,4136($zero)
    # Line 1175
    trunc.w.d	$f0,$f0
    # Line 1173
    li	$at,15880
    sw	$at,0($a1)
    # Line 1176
    addiu	$at,$v0,-3
    # Line 1175
    mfc1	$a0,$f0
    # Line 1174
    addiu	$a2,$s0,-512
    sw	$a2,4($a1)
    # Line 1175
    dsll32	$a0,$a0,0x10
    dsra32	$a0,$a0,0x10
    sw	$a0,8($a1)
    # Line 1176
    addiu	$v1,$a1,12
    lw	$s0,4140($zero)
    sw	$v1,4136($zero)
    sw	$at,4128($zero)
    addiu	$s0,$s0,3
    sw	$s0,4140($zero)
    # Line 1177
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da76248:
    # Line 1168
    c.lt.s	$f4,$f28
    nop
    bc1fl	.L0da761d4
    # Line 1172
    lw	$v0,4128($zero)
    b	.L0da761d0
    # Line 1170
    mov.s	$f28,$f4
.L0da76260:
    # Line 1163
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,24($sp)
    jal	__glsplc_InvalidEnum
    nop
    ld	$gp,8($sp)
    # Line 1164
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ldc1	$f28,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da76288:
    # Line 1172
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da761dc
    ld	$ra,24($sp)
.end __glMgrlc_AlphaFunc

# Function: __glMgrlc_BlendEquationEXT
# Declared: Line 1180 (Source lines: 1180-1199)
# Address: 0x0da762a0 - 0x0da76374 (Size: 212 bytes, Frame: 48)
.globl __glMgrlc_BlendEquationEXT
.ent __glMgrlc_BlendEquationEXT
__glMgrlc_BlendEquationEXT:
    # Line 1180
    li	$at,3057
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-31752
    beq	$a0,$at,.L0da76314
    addu	$gp,$t9,$v0
    li	$v1,0x8006
    beq	$s0,$v1,.L0da76314
    li	$a1,0x8007
    beq	$s0,$a1,.L0da76314
    li	$a2,0x8008
    beq	$s0,$a2,.L0da76314
    li	$at,0x800a
    beq	$s0,$at,.L0da76314
    li	$v1,0x800b
    beql	$s0,$v1,.L0da76318
    # Line 1195
    lw	$v0,4128($zero)
    # Line 1191
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,16($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 1192
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da76314:
    # Line 1195
    lw	$v0,4128($zero)
.L0da76318:
    slti	$a1,$v0,2
    bnez	$a1,.L0da76360
    nop	# was lw $t9, -29228($gp) # &__glSPDlistSpace
.L0da76324:
    lw	$v1,4136($zero)
    ld	$gp,0($sp)
    # Line 1197
    sw	$s0,4($v1)
    # Line 1198
    addiu	$s0,$v0,-2
    addiu	$at,$v1,8
    # Line 1196
    li	$a1,24580
    sw	$a1,0($v1)
    # Line 1198
    sw	$at,4136($zero)
    sw	$s0,4128($zero)
    lw	$a2,4140($zero)
    # Line 1199
    ld	$s0,8($sp)
    addiu	$sp,$sp,48
    # Line 1198
    addiu	$a2,$a2,2
    # Line 1199
    jr	$ra
    # Line 1198
    sw	$a2,4140($zero)
.L0da76360:
    sd	$ra,16($sp)
    # Line 1195
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da76324
    ld	$ra,16($sp)
.end __glMgrlc_BlendEquationEXT

# Function: __glMgrlc_BlendFunc
# Declared: Line 1202 (Source lines: 1202-1249)
# Address: 0x0da76374 - 0x0da7661c (Size: 680 bytes, Frame: 48)
.globl __glMgrlc_BlendFunc
.ent __glMgrlc_BlendFunc
__glMgrlc_BlendFunc:
    # Line 1202
    sltiu	$at,$a0,774
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    move	$s0,$a1
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$gp,0($sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-31964
    bnez	$at,.L0da76424
    addu	$gp,$t9,$v0
    # Line 1203
    sltiu	$v1,$s1,775
    beqz	$v1,.L0da7649c
.L0da763a8:
    # Line 1222
    sltiu	$a2,$s0,772
.L0da763ac:
    bnez	$a2,.L0da76450
    # Line 1224
    sltiu	$a3,$s0,773
    bnez	$a3,.L0da763d0
    li	$v0,0x8002
    sltu	$at,$s0,$v0
    bnez	$at,.L0da76528
    sltu	$v1,$v0,$s0
    bnez	$v1,.L0da765d8
    li	$v0,0x8004
.L0da763d0:
    # Line 1244
    lw	$v0,4128($zero)
.L0da763d4:
    slti	$a2,$v0,3
    bnez	$a2,.L0da764f0
    nop	# was lw $t9, -29228($gp) # &__glSPDlistSpace
.L0da763e0:
    lw	$v1,4136($zero)
    ld	$gp,0($sp)
    # Line 1246
    sw	$s1,4($v1)
    # Line 1249
    ld	$s1,8($sp)
    # Line 1247
    sw	$s0,8($v1)
    # Line 1248
    addiu	$s0,$v0,-3
    addiu	$at,$v1,12
    # Line 1245
    li	$a2,16136
    sw	$a2,0($v1)
    # Line 1248
    sw	$at,4136($zero)
    sw	$s0,4128($zero)
    lw	$a3,4140($zero)
    # Line 1249
    ld	$s0,16($sp)
    addiu	$sp,$sp,48
    # Line 1248
    addiu	$a3,$a3,3
    # Line 1249
    jr	$ra
    # Line 1248
    sw	$a3,4140($zero)
.L0da76424:
    # Line 1203
    sltiu	$a3,$s1,771
    bnez	$a3,.L0da7647c
    sltiu	$at,$s1,772
    bnez	$at,.L0da763a8
    sltiu	$v1,$s1,773
    bnez	$v1,.L0da765b0
    sltiu	$a2,$s1,774
    beqz	$a2,.L0da76558
    # Line 1220
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0da763ac
    # Line 1222
    sltiu	$a2,$s0,772
.L0da76450:
    # Line 1224
    sltiu	$a3,$s0,769
    bnez	$a3,.L0da764d0
    sltiu	$at,$s0,770
    bnez	$at,.L0da763d0
    sltiu	$v1,$s0,771
    bnez	$v1,.L0da765c4
    sltiu	$a2,$s0,772
    beqz	$a2,.L0da7658c
    # Line 1240
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0da763d4
    # Line 1244
    lw	$v0,4128($zero)
.L0da7647c:
    # Line 1203
    beqz	$s1,.L0da763a8
    sltiu	$a3,$s1,2
    bnez	$a3,.L0da763a8
    li	$at,770
    bne	$s1,$at,.L0da76558
    # Line 1220
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0da763ac
    # Line 1222
    sltiu	$a2,$s0,772
.L0da7649c:
    # Line 1203
    li	$v0,0x8002
    sltu	$v1,$s1,$v0
    bnez	$v1,.L0da76504
    sltu	$a2,$v0,$s1
    beqz	$a2,.L0da763a8
    li	$v0,0x8004
    sltu	$a3,$s1,$v0
    bnez	$a3,.L0da765f4
    sltu	$at,$v0,$s1
    bnez	$at,.L0da76558
    # Line 1220
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0da763ac
    # Line 1222
    sltiu	$a2,$s0,772
.L0da764d0:
    # Line 1224
    beqz	$s0,.L0da763d0
    sltiu	$v1,$s0,2
    bnez	$v1,.L0da763d0
    li	$a2,768
    bne	$s0,$a2,.L0da7658c
    # Line 1240
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0da763d4
    # Line 1244
    lw	$v0,4128($zero)
.L0da764f0:
    sd	$ra,24($sp)
    jal	__glsplc_InvalidEnum
    move	$a0,$zero
    b	.L0da763e0
    ld	$ra,24($sp)
.L0da76504:
    # Line 1203
    sltiu	$a3,$s1,776
    bnez	$a3,.L0da76548
    sltiu	$at,$s1,777
    bnez	$at,.L0da763a8
    li	$v1,0x8001
    bne	$s1,$v1,.L0da76558
    # Line 1220
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0da763ac
    # Line 1222
    sltiu	$a2,$s0,772
.L0da76528:
    # Line 1224
    li	$v0,0x8001
    sltu	$a2,$s0,$v0
    bnez	$a2,.L0da7657c
    sltu	$a3,$v0,$s0
    bnez	$a3,.L0da7658c
    # Line 1240
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0da763d4
    # Line 1244
    lw	$v0,4128($zero)
.L0da76548:
    # Line 1203
    li	$at,775
    beq	$s1,$at,.L0da763ac
    # Line 1222
    sltiu	$a2,$s0,772
.L0da76554:
    # Line 1220
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
.L0da76558:
    sd	$ra,24($sp)
    jal	__glsplc_InvalidEnum
    nop
    ld	$gp,0($sp)
    # Line 1221
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7657c:
    # Line 1224
    li	$v1,773
    beql	$s0,$v1,.L0da763d4
    # Line 1244
    lw	$v0,4128($zero)
.L0da76588:
    # Line 1240
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
.L0da7658c:
    sd	$ra,24($sp)
    jal	__glsplc_InvalidEnum
    nop
    ld	$gp,0($sp)
    # Line 1241
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da765b0:
    # Line 1203
    li	$a2,772
    bne	$s1,$a2,.L0da76558
    # Line 1220
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0da763ac
    # Line 1222
    sltiu	$a2,$s0,772
.L0da765c4:
    # Line 1224
    li	$a3,770
    bne	$s0,$a3,.L0da7658c
    # Line 1240
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0da763d4
    # Line 1244
    lw	$v0,4128($zero)
.L0da765d8:
    # Line 1224
    sltu	$at,$s0,$v0
    bnez	$at,.L0da76608
    sltu	$v1,$v0,$s0
    bnez	$v1,.L0da7658c
    # Line 1240
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0da763d4
    # Line 1244
    lw	$v0,4128($zero)
.L0da765f4:
    # Line 1203
    li	$a2,0x8003
    beq	$s1,$a2,.L0da763ac
    # Line 1222
    sltiu	$a2,$s0,772
    b	.L0da76554
    sd	$ra,24($sp)
.L0da76608:
    # Line 1224
    li	$a3,0x8003
    beql	$s0,$a3,.L0da763d4
    # Line 1244
    lw	$v0,4128($zero)
    b	.L0da76588
    sd	$ra,24($sp)
.end __glMgrlc_BlendFunc

# Function: __glMgrlc_LogicOp
# Declared: Line 1252 (Source lines: 1253-1264)
# Address: 0x0da7661c - 0x0da766d4 (Size: 184 bytes, Frame: 48)
.globl __glMgrlc_LogicOp
.ent __glMgrlc_LogicOp
__glMgrlc_LogicOp:
    # Line 1254
    sltiu	$at,$a0,5376
    # Line 1253
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    lui	$v0,0x19
    addiu	$v0,$v0,-32644
    # Line 1254
    bnez	$at,.L0da7669c
    # Line 1253
    addu	$gp,$t9,$v0
    # Line 1254
    sltiu	$v1,$s0,5392
    beqz	$v1,.L0da766a0
    # Line 1256
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    # Line 1260
    lw	$v0,4128($zero)
    slti	$a1,$v0,2
    bnez	$a1,.L0da766c0
    nop	# was lw $t9, -29228($gp) # &__glSPDlistSpace
.L0da7665c:
    ld	$gp,0($sp)
    lw	$a1,4136($zero)
    # Line 1262
    addiu	$v1,$s0,-5376
    # Line 1263
    addiu	$s0,$v0,-2
    addiu	$at,$a1,8
    # Line 1261
    li	$a2,16388
    # Line 1262
    sw	$v1,4($a1)
    # Line 1261
    sw	$a2,0($a1)
    # Line 1263
    sw	$at,4136($zero)
    sw	$s0,4128($zero)
    lw	$a2,4140($zero)
    # Line 1264
    ld	$s0,8($sp)
    addiu	$sp,$sp,48
    # Line 1263
    addiu	$a2,$a2,2
    # Line 1264
    jr	$ra
    # Line 1263
    sw	$a2,4140($zero)
.L0da7669c:
    # Line 1256
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
.L0da766a0:
    sd	$ra,16($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 1257
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da766c0:
    sd	$ra,16($sp)
    # Line 1260
    jalr	$t9
    move	$a0,$zero
    b	.L0da7665c
    ld	$ra,16($sp)
.end __glMgrlc_LogicOp

# Function: __glMgrlc_StencilFunc
# Declared: Line 1267 (Source lines: 1268-1284)
# Address: 0x0da766d4 - 0x0da767c8 (Size: 244 bytes, Frame: 208)
.globl __glMgrlc_StencilFunc
.ent __glMgrlc_StencilFunc
__glMgrlc_StencilFunc:
    # Line 1269
    sltiu	$at,$a0,512
    # Line 1268
    addiu	$sp,$sp,-80
    sd	$s0,16($sp)
    move	$s0,$a1
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$gp,0($sp)
    lui	$v0,0x18
    addiu	$v0,$v0,32708
    # Line 1269
    bnez	$at,.L0da7677c
    # Line 1268
    addu	$gp,$t9,$v0
    # Line 1269
    sltiu	$v1,$s1,520
    beqz	$v1,.L0da76780
    # Line 1271
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    # Line 1272
    bltz	$s0,.L0da767c0
.L0da76710:
    # Line 1275
    slti	$a3,$s0,256
    bnezl	$a3,.L0da76724
    # Line 1278
    lw	$v0,4128($zero)
    # Line 1276
    li	$s0,255
    # Line 1278
    lw	$v0,4128($zero)
.L0da76724:
    slti	$a4,$v0,4
    bnez	$a4,.L0da767a4
    nop	# was lw $t9, -29228($gp) # &__glSPDlistSpace
.L0da76730:
    ld	$gp,0($sp)
    lw	$v1,4136($zero)
    # Line 1280
    addiu	$a3,$s1,-512
    # Line 1283
    addiu	$s1,$v0,-4
    addiu	$at,$v1,16
    # Line 1279
    li	$a4,16652
    # Line 1282
    sw	$a2,12($v1)
    # Line 1281
    sw	$s0,8($v1)
    # Line 1280
    sw	$a3,4($v1)
    # Line 1279
    sw	$a4,0($v1)
    # Line 1283
    sw	$at,4136($zero)
    lw	$s0,4140($zero)
    sw	$s1,4128($zero)
    # Line 1284
    ld	$s1,8($sp)
    # Line 1283
    addiu	$s0,$s0,4
    sw	$s0,4140($zero)
    # Line 1284
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da7677c:
    # Line 1271
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
.L0da76780:
    sd	$ra,24($sp)
    jal	__glsplc_InvalidEnum
    nop
    ld	$gp,0($sp)
    # Line 1272
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da767a4:
    sd	$a2,32($sp)
    sd	$ra,24($sp)
    # Line 1278
    jalr	$t9
    move	$a0,$zero
    ld	$a2,32($sp)
    b	.L0da76730
    ld	$ra,24($sp)
.L0da767c0:
    b	.L0da76710
    # Line 1275
    move	$s0,$zero
.end __glMgrlc_StencilFunc

# Function: __glMgrlc_StencilOp
# Declared: Line 1287 (Source lines: 1288-1396)
# Address: 0x0da767c8 - 0x0da76a94 (Size: 716 bytes, Frame: 208)
.globl __glMgrlc_StencilOp
.ent __glMgrlc_StencilOp
__glMgrlc_StencilOp:
    # Line 1288
    addiu	$sp,$sp,-80
    sd	$gp,0($sp)
    lui	$at,0x18
    addiu	$at,$at,32464
    beqz	$a0,.L0da7681c
    addu	$gp,$t9,$at
    # Line 1291
    sltiu	$v1,$a0,7680
    bnez	$v1,.L0da767f0
    sltiu	$a3,$a0,7684
    bnez	$a3,.L0da7681c
.L0da767f0:
    li	$a4,5386
    beq	$a0,$a4,.L0da76820
    # Line 1299
    li	$a3,5386
    # Line 1295
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,8($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 1296
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da7681c:
    # Line 1299
    li	$a3,5386
.L0da76820:
    # Line 1296
    beqz	$a1,.L0da76864
    # Line 1307
    sltiu	$a4,$a2,7680
    # Line 1299
    sltiu	$at,$a1,7680
    bnez	$at,.L0da7683c
    sltiu	$v1,$a1,7684
    bnez	$v1,.L0da76868
    # Line 1307
    sltiu	$at,$a2,7684
.L0da7683c:
    # Line 1299
    beq	$a1,$a3,.L0da76868
    # Line 1307
    sltiu	$at,$a2,7684
    # Line 1303
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,8($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 1304
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da76864:
    # Line 1307
    sltiu	$at,$a2,7684
.L0da76868:
    # Line 1304
    beqz	$a2,.L0da768a8
    # Line 1315
    li	$a3,7681
    # Line 1307
    bnez	$a4,.L0da76880
    li	$v1,5386
    bnez	$at,.L0da768a8
    li	$v1,5386
.L0da76880:
    beq	$a2,$v1,.L0da768ac
    # Line 1315
    li	$v0,7680
    # Line 1311
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,8($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 1312
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da768a8:
    # Line 1315
    li	$v0,7680
.L0da768ac:
    beq	$v0,$a0,.L0da7694c
    nop
    beqz	$a0,.L0da76a08
    nop
    beq	$a0,$a3,.L0da76a10
    li	$a4,7682
    beq	$a0,$a4,.L0da76a20
    li	$at,7683
    beq	$a0,$at,.L0da76a5c
    li	$v1,5386
    beq	$a0,$v1,.L0da768f8
    # Line 1336
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,8($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 1337
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da768f8:
    # Line 1333
    li	$a0,5
.L0da768fc:
    # Line 1340
    beq	$v0,$a1,.L0da76954
    nop
.L0da76904:
    beqz	$a1,.L0da76a18
    li	$a4,7682
    li	$a3,7681
    beq	$a1,$a3,.L0da76a54
    nop
    beq	$a1,$a4,.L0da76a6c
    li	$at,7683
    beq	$a1,$at,.L0da76a7c
    li	$v1,5386
    beq	$a1,$v1,.L0da76964
    # Line 1361
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,8($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 1362
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da7694c:
    # Line 1340
    bne	$v0,$a1,.L0da76904
    # Line 1318
    move	$a0,$zero
.L0da76954:
    # Line 1365
    bne	$v0,$a2,.L0da76970
    # Line 1343
    move	$a1,$zero
.L0da7695c:
    # Line 1369
    b	.L0da769b8
    # Line 1368
    move	$a2,$zero
.L0da76964:
    # Line 1358
    li	$a1,5
.L0da76968:
    # Line 1365
    beq	$v0,$a2,.L0da7695c
    nop
.L0da76970:
    beqz	$a2,.L0da76a64
    li	$a3,7681
    beq	$a2,$a3,.L0da76a74
    li	$a4,7682
    beq	$a2,$a4,.L0da76a84
    li	$at,7683
    beq	$a2,$at,.L0da76a8c
    li	$v1,5386
    beq	$a2,$v1,.L0da769b4
    # Line 1386
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,8($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 1387
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da769b4:
    # Line 1383
    li	$a2,5
.L0da769b8:
    # Line 1390
    lw	$v0,4128($zero)
    slti	$a3,$v0,4
    bnezl	$a3,.L0da76a28
    sd	$a1,24($sp)
.L0da769c8:
    lw	$a3,4136($zero)
    ld	$gp,0($sp)
    # Line 1395
    addiu	$at,$v0,-4
    addiu	$v1,$a3,16
    # Line 1391
    li	$a4,16908
    # Line 1394
    sw	$a2,12($a3)
    # Line 1393
    sw	$a1,8($a3)
    # Line 1392
    sw	$a0,4($a3)
    # Line 1391
    sw	$a4,0($a3)
    # Line 1395
    sw	$v1,4136($zero)
    lw	$a4,4140($zero)
    sw	$at,4128($zero)
    # Line 1396
    addiu	$sp,$sp,80
    # Line 1395
    addiu	$a4,$a4,4
    # Line 1396
    jr	$ra
    # Line 1395
    sw	$a4,4140($zero)
.L0da76a08:
    # Line 1322
    b	.L0da768fc
    # Line 1321
    li	$a0,1
.L0da76a10:
    # Line 1325
    b	.L0da768fc
    # Line 1324
    li	$a0,2
.L0da76a18:
    # Line 1347
    b	.L0da76968
    # Line 1346
    li	$a1,1
.L0da76a20:
    # Line 1328
    b	.L0da768fc
    # Line 1327
    li	$a0,3
.L0da76a28:
    sd	$a2,16($sp)
    # Line 1390
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a0,32($sp)
    sd	$ra,8($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a2,16($sp)
    ld	$a1,24($sp)
    ld	$a0,32($sp)
    b	.L0da769c8
    ld	$ra,8($sp)
.L0da76a54:
    # Line 1350
    b	.L0da76968
    # Line 1349
    li	$a1,2
.L0da76a5c:
    # Line 1331
    b	.L0da768fc
    # Line 1330
    li	$a0,4
.L0da76a64:
    # Line 1372
    b	.L0da769b8
    # Line 1371
    li	$a2,1
.L0da76a6c:
    # Line 1353
    b	.L0da76968
    # Line 1352
    li	$a1,3
.L0da76a74:
    # Line 1375
    b	.L0da769b8
    # Line 1374
    li	$a2,2
.L0da76a7c:
    # Line 1356
    b	.L0da76968
    # Line 1355
    li	$a1,4
.L0da76a84:
    # Line 1378
    b	.L0da769b8
    # Line 1377
    li	$a2,3
.L0da76a8c:
    # Line 1381
    b	.L0da769b8
    # Line 1380
    li	$a2,4
.end __glMgrlc_StencilOp

# Function: __glMgrlc_DepthFunc
# Declared: Line 1399 (Source lines: 1400-1411)
# Address: 0x0da76a94 - 0x0da76b4c (Size: 184 bytes, Frame: 48)
.globl __glMgrlc_DepthFunc
.ent __glMgrlc_DepthFunc
__glMgrlc_DepthFunc:
    # Line 1401
    sltiu	$at,$a0,512
    # Line 1400
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    lui	$v0,0x18
    addiu	$v0,$v0,31748
    # Line 1401
    bnez	$at,.L0da76b14
    # Line 1400
    addu	$gp,$t9,$v0
    # Line 1401
    sltiu	$v1,$s0,520
    beqz	$v1,.L0da76b18
    # Line 1403
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    # Line 1407
    lw	$v0,4128($zero)
    slti	$a1,$v0,2
    bnez	$a1,.L0da76b38
    nop	# was lw $t9, -29228($gp) # &__glSPDlistSpace
.L0da76ad4:
    ld	$gp,0($sp)
    lw	$a1,4136($zero)
    # Line 1409
    addiu	$v1,$s0,-512
    # Line 1410
    addiu	$s0,$v0,-2
    addiu	$at,$a1,8
    # Line 1408
    li	$a2,17156
    # Line 1409
    sw	$v1,4($a1)
    # Line 1408
    sw	$a2,0($a1)
    # Line 1410
    sw	$at,4136($zero)
    sw	$s0,4128($zero)
    lw	$a2,4140($zero)
    # Line 1411
    ld	$s0,8($sp)
    addiu	$sp,$sp,48
    # Line 1410
    addiu	$a2,$a2,2
    # Line 1411
    jr	$ra
    # Line 1410
    sw	$a2,4140($zero)
.L0da76b14:
    # Line 1403
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
.L0da76b18:
    sd	$ra,16($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 1404
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da76b38:
    sd	$ra,16($sp)
    # Line 1407
    jalr	$t9
    move	$a0,$zero
    b	.L0da76ad4
    ld	$ra,16($sp)
.end __glMgrlc_DepthFunc

# Function: __glMgrlc_CullFace
# Declared: Line 1414 (Source lines: 1415-1426)
# Address: 0x0da76b4c - 0x0da76c00 (Size: 180 bytes, Frame: 48)
.globl __glMgrlc_CullFace
.ent __glMgrlc_CullFace
__glMgrlc_CullFace:
    # Line 1416
    sltiu	$at,$a0,1028
    # Line 1415
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    lui	$v0,0x18
    addiu	$v0,$v0,31564
    # Line 1416
    bnez	$at,.L0da76bc8
    # Line 1415
    addu	$gp,$t9,$v0
    # Line 1416
    sltiu	$v1,$s0,1033
    beqz	$v1,.L0da76bcc
    # Line 1418
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    # Line 1422
    lw	$v0,4128($zero)
    slti	$a1,$v0,2
    bnez	$a1,.L0da76bec
    nop	# was lw $t9, -29228($gp) # &__glSPDlistSpace
.L0da76b8c:
    lw	$v1,4136($zero)
    ld	$gp,0($sp)
    # Line 1424
    sw	$s0,4($v1)
    # Line 1425
    addiu	$s0,$v0,-2
    addiu	$at,$v1,8
    # Line 1423
    li	$a1,29700
    sw	$a1,0($v1)
    # Line 1425
    sw	$at,4136($zero)
    sw	$s0,4128($zero)
    lw	$a2,4140($zero)
    # Line 1426
    ld	$s0,8($sp)
    addiu	$sp,$sp,48
    # Line 1425
    addiu	$a2,$a2,2
    # Line 1426
    jr	$ra
    # Line 1425
    sw	$a2,4140($zero)
.L0da76bc8:
    # Line 1418
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
.L0da76bcc:
    sd	$ra,16($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 1419
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da76bec:
    sd	$ra,16($sp)
    # Line 1422
    jalr	$t9
    move	$a0,$zero
    b	.L0da76b8c
    ld	$ra,16($sp)
.end __glMgrlc_CullFace

# Function: __glMgrlc_PolygonMode
# Declared: Line 1429 (Source lines: 1430-1443)
# Address: 0x0da76c00 - 0x0da76ce0 (Size: 224 bytes, Frame: 48)
.globl __glMgrlc_PolygonMode
.ent __glMgrlc_PolygonMode
__glMgrlc_PolygonMode:
    # Line 1430
    li	$at,1028
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$s1,8($sp)
    move	$s1,$a1
    sd	$gp,0($sp)
    lui	$v0,0x18
    addiu	$v0,$v0,31384
    beq	$a0,$at,.L0da76c3c
    addu	$gp,$t9,$v0
    li	$v1,1029
    beq	$s0,$v1,.L0da76c3c
    # Line 1431
    li	$a2,1032
    bne	$s0,$a2,.L0da76ca4
.L0da76c3c:
    sltiu	$a3,$s1,6912
    bnez	$a3,.L0da76ca4
    sltiu	$at,$s1,6915
    beqz	$at,.L0da76ca8
    # Line 1434
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    # Line 1438
    lw	$v0,4128($zero)
    slti	$v1,$v0,3
    bnez	$v1,.L0da76ccc
    nop	# was lw $t9, -29228($gp) # &__glSPDlistSpace
.L0da76c60:
    lw	$v1,4136($zero)
    ld	$gp,0($sp)
    # Line 1442
    addiu	$a3,$v0,-3
    # Line 1440
    sw	$s0,4($v1)
    # Line 1443
    ld	$s0,16($sp)
    # Line 1441
    sw	$s1,8($v1)
    # Line 1443
    ld	$s1,8($sp)
    # Line 1442
    addiu	$at,$v1,12
    # Line 1439
    li	$a2,0xa808
    sw	$a2,0($v1)
    # Line 1442
    sw	$at,4136($zero)
    lw	$a2,4140($zero)
    sw	$a3,4128($zero)
    # Line 1443
    addiu	$sp,$sp,48
    # Line 1442
    addiu	$a2,$a2,3
    # Line 1443
    jr	$ra
    # Line 1442
    sw	$a2,4140($zero)
.L0da76ca4:
    # Line 1434
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
.L0da76ca8:
    sd	$ra,24($sp)
    jal	__glsplc_InvalidEnum
    nop
    ld	$gp,0($sp)
    # Line 1435
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da76ccc:
    sd	$ra,24($sp)
    # Line 1438
    jalr	$t9
    move	$a0,$zero
    b	.L0da76c60
    ld	$ra,24($sp)
.end __glMgrlc_PolygonMode

# Function: __glMgrlc_LineStipple
# Declared: Line 1446 (Source lines: 1447-1465)
# Address: 0x0da76ce0 - 0x0da76dec (Size: 268 bytes, Frame: 48)
.globl __glMgrlc_LineStipple
.ent __glMgrlc_LineStipple
__glMgrlc_LineStipple:
    # Line 1456
    move	$v0,$zero
    # Line 1447
    addiu	$sp,$sp,-48
    sd	$s5,8($sp)
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$gp,0($sp)
    lui	$at,0x18
    addiu	$at,$at,31160
    blez	$a0,.L0da76de4
    addu	$gp,$t9,$at
.L0da76d08:
    # Line 1456
    li	$a5,16
    # Line 1451
    slti	$v1,$s1,257
    bnez	$v1,.L0da76d1c
    # Line 1456
    li	$a0,1
    # Line 1453
    li	$s1,256
.L0da76d1c:
    # Line 1456
    li	$a4,15
    b	.L0da76d34
    # Line 1455
    move	$s5,$zero
.L0da76d28:
    # Line 1456
    addiu	$v0,$v0,1
    andi	$v0,$v0,0xffff
    beq	$a5,$v0,.L0da76d78
.L0da76d34:
    andi	$v1,$a1,0x1
    # Line 1458
    subu	$at,$a4,$v0
    # Line 1456
    beqz	$v1,.L0da76d50
    srl	$a1,$a1,0x1
    # Line 1458
    sllv	$at,$a0,$at
    or	$s5,$at,$s5
    andi	$s5,$s5,0xffff
.L0da76d50:
    # Line 1456
    andi	$v1,$a1,0x1
    srl	$a1,$a1,0x1
    addiu	$v0,$v0,1
    beqz	$v1,.L0da76d28
    andi	$v0,$v0,0xffff
    # Line 1458
    subu	$at,$a4,$v0
    sllv	$at,$a0,$at
    or	$s5,$at,$s5
    b	.L0da76d28
    andi	$s5,$s5,0xffff
.L0da76d78:
    # Line 1460
    lw	$v0,4128($zero)
    slti	$v1,$v0,3
    bnez	$v1,.L0da76dd0
    nop	# was lw $t9, -29228($gp) # &__glSPDlistSpace
.L0da76d88:
    ld	$gp,0($sp)
    lw	$v1,4136($zero)
    # Line 1462
    addiu	$a2,$s1,-1
    # Line 1465
    ld	$s1,16($sp)
    # Line 1463
    sw	$s5,8($v1)
    # Line 1465
    ld	$s5,8($sp)
    # Line 1461
    li	$a3,17928
    sw	$a3,0($v1)
    # Line 1464
    addiu	$a3,$v0,-3
    addiu	$at,$v1,12
    # Line 1462
    sw	$a2,4($v1)
    # Line 1464
    sw	$at,4136($zero)
    lw	$a2,4140($zero)
    sw	$a3,4128($zero)
    # Line 1465
    addiu	$sp,$sp,48
    # Line 1464
    addiu	$a2,$a2,3
    # Line 1465
    jr	$ra
    # Line 1464
    sw	$a2,4140($zero)
.L0da76dd0:
    sd	$ra,24($sp)
    # Line 1460
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da76d88
    ld	$ra,24($sp)
.L0da76de4:
    b	.L0da76d08
    # Line 1451
    li	$s1,1
.end __glMgrlc_LineStipple

# Function: __glMgrlc_LineWidth
# Declared: Line 1468 (Source lines: 1469-1480)
# Address: 0x0da76dec - 0x0da76e98 (Size: 172 bytes, Frame: 48)
.globl __glMgrlc_LineWidth
.ent __glMgrlc_LineWidth
__glMgrlc_LineWidth:
    # Line 1469
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$at,0x18
    addiu	$at,$at,30892
    addu	$gp,$t9,$at
    mtc1	$zero,$f0
    c.le.s	$f12,$f0
    nop
    bc1t	.L0da76e78
    mov.s	$f4,$f12
    # Line 1476
    lw	$v0,4128($zero)
    slti	$v1,$v0,2
    bnez	$v1,.L0da76e5c
    nop	# was lw $t9, -29228($gp) # &__glSPDlistSpace
.L0da76e24:
    lw	$v1,4136($zero)
    ld	$gp,0($sp)
    # Line 1479
    addiu	$a1,$v0,-2
    addiu	$at,$v1,8
    # Line 1477
    li	$a0,17668
    # Line 1478
    swc1	$f4,4($v1)
    # Line 1477
    sw	$a0,0($v1)
    # Line 1479
    sw	$at,4136($zero)
    lw	$a0,4140($zero)
    sw	$a1,4128($zero)
    # Line 1480
    addiu	$sp,$sp,48
    # Line 1479
    addiu	$a0,$a0,2
    # Line 1480
    jr	$ra
    # Line 1479
    sw	$a0,4140($zero)
.L0da76e5c:
    sdc1	$f4,8($sp)
    sd	$ra,16($sp)
    # Line 1476
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f4,8($sp)
    b	.L0da76e24
    ld	$ra,16($sp)
.L0da76e78:
    # Line 1472
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
    sd	$ra,16($sp)
    jal	__glsplc_InvalidValue
    nop
    # Line 1473
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrlc_LineWidth

# Function: __glMgrlc_PointSize
# Declared: Line 1483 (Source lines: 1484-1495)
# Address: 0x0da76e98 - 0x0da76f44 (Size: 172 bytes, Frame: 48)
.globl __glMgrlc_PointSize
.ent __glMgrlc_PointSize
__glMgrlc_PointSize:
    # Line 1484
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$at,0x18
    addiu	$at,$at,30720
    addu	$gp,$t9,$at
    mtc1	$zero,$f0
    c.le.s	$f12,$f0
    nop
    bc1t	.L0da76f24
    mov.s	$f4,$f12
    # Line 1491
    lw	$v0,4128($zero)
    slti	$v1,$v0,2
    bnez	$v1,.L0da76f08
    nop	# was lw $t9, -29228($gp) # &__glSPDlistSpace
.L0da76ed0:
    lw	$v1,4136($zero)
    ld	$gp,0($sp)
    # Line 1494
    addiu	$a1,$v0,-2
    addiu	$at,$v1,8
    # Line 1492
    li	$a0,19716
    # Line 1493
    swc1	$f4,4($v1)
    # Line 1492
    sw	$a0,0($v1)
    # Line 1494
    sw	$at,4136($zero)
    lw	$a0,4140($zero)
    sw	$a1,4128($zero)
    # Line 1495
    addiu	$sp,$sp,48
    # Line 1494
    addiu	$a0,$a0,2
    # Line 1495
    jr	$ra
    # Line 1494
    sw	$a0,4140($zero)
.L0da76f08:
    sdc1	$f4,8($sp)
    sd	$ra,16($sp)
    # Line 1491
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f4,8($sp)
    b	.L0da76ed0
    ld	$ra,16($sp)
.L0da76f24:
    # Line 1487
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
    sd	$ra,16($sp)
    jal	__glsplc_InvalidValue
    nop
    # Line 1488
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrlc_PointSize

# Function: __glMgrlc_ShadeModel
# Declared: Line 1498 (Source lines: 1499-1510)
# Address: 0x0da76f44 - 0x0da76ff8 (Size: 180 bytes, Frame: 48)
.globl __glMgrlc_ShadeModel
.ent __glMgrlc_ShadeModel
__glMgrlc_ShadeModel:
    # Line 1500
    sltiu	$at,$a0,7424
    # Line 1499
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    lui	$v0,0x18
    addiu	$v0,$v0,30548
    # Line 1500
    bnez	$at,.L0da76fc0
    # Line 1499
    addu	$gp,$t9,$v0
    # Line 1500
    sltiu	$v1,$s0,7426
    beqz	$v1,.L0da76fc4
    # Line 1502
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    # Line 1506
    lw	$v0,4128($zero)
    slti	$a1,$v0,2
    bnez	$a1,.L0da76fe4
    nop	# was lw $t9, -29228($gp) # &__glSPDlistSpace
.L0da76f84:
    lw	$v1,4136($zero)
    ld	$gp,0($sp)
    # Line 1508
    sw	$s0,4($v1)
    # Line 1509
    addiu	$s0,$v0,-2
    addiu	$at,$v1,8
    # Line 1507
    li	$a1,18180
    sw	$a1,0($v1)
    # Line 1509
    sw	$at,4136($zero)
    sw	$s0,4128($zero)
    lw	$a2,4140($zero)
    # Line 1510
    ld	$s0,8($sp)
    addiu	$sp,$sp,48
    # Line 1509
    addiu	$a2,$a2,2
    # Line 1510
    jr	$ra
    # Line 1509
    sw	$a2,4140($zero)
.L0da76fc0:
    # Line 1502
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
.L0da76fc4:
    sd	$ra,16($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 1503
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da76fe4:
    sd	$ra,16($sp)
    # Line 1506
    jalr	$t9
    move	$a0,$zero
    b	.L0da76f84
    ld	$ra,16($sp)
.end __glMgrlc_ShadeModel

# Function: __glMgrlc_DepthRange
# Declared: Line 1513 (Source lines: 1514-1520)
# Address: 0x0da76ff8 - 0x0da7708c (Size: 148 bytes, Frame: 48)
.globl __glMgrlc_DepthRange
.ent __glMgrlc_DepthRange
__glMgrlc_DepthRange:
    # Line 1514
    mov.d	$f4,$f13
    addiu	$sp,$sp,-48
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$gp,8($sp)
    # Line 1515
    lw	$v0,4128($zero)
    # Line 1514
    lui	$v1,0x18
    addiu	$v1,$v1,30368
    # Line 1515
    slti	$at,$v0,3
    bnez	$at,.L0da7706c
    # Line 1514
    addu	$gp,$t9,$v1
.L0da77024:
    ld	$gp,8($sp)
    # Line 1517
    cvt.s.d	$f1,$f30
    # Line 1520
    ldc1	$f30,0($sp)
    # Line 1515
    lw	$v1,4136($zero)
    # Line 1519
    addiu	$a1,$v0,-3
    # Line 1518
    cvt.s.d	$f0,$f4
    # Line 1519
    addiu	$at,$v1,12
    # Line 1516
    li	$a0,18440
    sw	$a0,0($v1)
    # Line 1518
    swc1	$f0,8($v1)
    # Line 1517
    swc1	$f1,4($v1)
    # Line 1519
    sw	$at,4136($zero)
    lw	$a0,4140($zero)
    sw	$a1,4128($zero)
    # Line 1520
    addiu	$sp,$sp,48
    # Line 1519
    addiu	$a0,$a0,3
    # Line 1520
    jr	$ra
    # Line 1519
    sw	$a0,4140($zero)
.L0da7706c:
    # Line 1515
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f4,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f4,16($sp)
    b	.L0da77024
    ld	$ra,24($sp)
.end __glMgrlc_DepthRange

# Function: __glMgrlc_BlendColorEXT
# Declared: Line 1523 (Source lines: 1524-1532)
# Address: 0x0da7708c - 0x0da77138 (Size: 172 bytes, Frame: 208)
.globl __glMgrlc_BlendColorEXT
.ent __glMgrlc_BlendColorEXT
__glMgrlc_BlendColorEXT:
    # Line 1524
    mov.s	$f6,$f15
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-80
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 1525
    lw	$v0,4128($zero)
    # Line 1524
    lui	$v1,0x18
    addiu	$v1,$v1,30220
    # Line 1525
    slti	$at,$v0,5
    bnez	$at,.L0da77108
    # Line 1524
    addu	$gp,$t9,$v1
.L0da770c0:
    # Line 1525
    lw	$v1,4136($zero)
    ld	$gp,8($sp)
    # Line 1531
    addiu	$a1,$v0,-5
    # Line 1527
    swc1	$f30,4($v1)
    # Line 1532
    ldc1	$f30,0($sp)
    # Line 1531
    addiu	$at,$v1,20
    # Line 1526
    li	$a0,0xd910
    # Line 1530
    swc1	$f6,16($v1)
    # Line 1529
    swc1	$f5,12($v1)
    # Line 1528
    swc1	$f4,8($v1)
    # Line 1526
    sw	$a0,0($v1)
    # Line 1531
    sw	$at,4136($zero)
    lw	$a0,4140($zero)
    sw	$a1,4128($zero)
    # Line 1532
    addiu	$sp,$sp,80
    # Line 1531
    addiu	$a0,$a0,5
    # Line 1532
    jr	$ra
    # Line 1531
    sw	$a0,4140($zero)
.L0da77108:
    sdc1	$f4,32($sp)
    sdc1	$f5,24($sp)
    # Line 1525
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f6,16($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f6,16($sp)
    ldc1	$f5,24($sp)
    ldc1	$f4,32($sp)
    b	.L0da770c0
    ld	$ra,40($sp)
.end __glMgrlc_BlendColorEXT

# Function: __glMgrlc_Fogfv
# Declared: Line 1535 (Source lines: 1536-1597)
# Address: 0x0da77138 - 0x0da77484 (Size: 844 bytes, Frame: 48)
.globl __glMgrlc_Fogfv
.ent __glMgrlc_Fogfv
__glMgrlc_Fogfv:
    # Line 1537
    li	$at,2918
    # Line 1536
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$v0,0x18
    addiu	$v0,$v0,30048
    # Line 1537
    beq	$a0,$at,.L0da77230
    # Line 1536
    addu	$gp,$t9,$v0
    # Line 1537
    li	$v1,2914
    beq	$a0,$v1,.L0da772b0
    li	$a2,2916
    beq	$a0,$a2,.L0da7732c
    li	$a3,2915
    beq	$a0,$a3,.L0da7738c
    li	$at,2913
    beq	$a0,$at,.L0da773ec
    li	$v1,2917
    beq	$a0,$v1,.L0da7719c
    # Line 1594
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,8($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 1595
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7719c:
    # Line 1578
    lwc1	$f0,0($a1)
    trunc.l.s	$f0,$f0
    dmfc1	$v0,$f0
    li	$a2,2048
    sll	$v0,$v0,0x0
    beq	$v0,$a2,.L0da771c8
    li	$v1,2049
    beq	$v0,$v1,.L0da771c8
    li	$a2,9729
    bne	$v0,$a2,.L0da7744c
    # Line 1589
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
.L0da771c8:
    # Line 1583
    lw	$v0,4128($zero)
    slti	$a3,$v0,2
    beqzl	$a3,.L0da771f8
    lw	$at,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a1,16($sp)
    sd	$ra,8($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a1,16($sp)
    ld	$ra,8($sp)
    lw	$at,4136($zero)
.L0da771f8:
    # Line 1584
    li	$v1,0xb904
    sw	$v1,0($at)
    # Line 1585
    lwc1	$f1,0($a1)
    trunc.w.s	$f1,$f1
    mfc1	$a3,$f1
    # Line 1586
    addiu	$v1,$v0,-2
    # Line 1585
    sw	$a3,4($at)
    # Line 1586
    addiu	$a2,$at,8
    lw	$at,4140($zero)
    sw	$a2,4136($zero)
    sw	$v1,4128($zero)
    addiu	$at,$at,2
    # Line 1583
    b	.L0da772a4
    # Line 1586
    sw	$at,4140($zero)
.L0da77230:
    # Line 1540
    lw	$v0,4128($zero)
    slti	$a2,$v0,5
    beqzl	$a2,.L0da77260
    lw	$a2,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a1,16($sp)
    sd	$ra,8($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a1,16($sp)
    ld	$ra,8($sp)
    lw	$a2,4136($zero)
.L0da77260:
    # Line 1541
    li	$a3,0xb410
    sw	$a3,0($a2)
    # Line 1542
    lwc1	$f1,0($a1)
    swc1	$f1,4($a2)
    # Line 1543
    lwc1	$f0,4($a1)
    swc1	$f0,8($a2)
    # Line 1544
    lwc1	$f3,8($a1)
    swc1	$f3,12($a2)
    # Line 1545
    lwc1	$f2,12($a1)
    # Line 1546
    addiu	$at,$v0,-5
    # Line 1545
    swc1	$f2,16($a2)
    # Line 1546
    addiu	$v1,$a2,20
    lw	$a3,4140($zero)
    sw	$v1,4136($zero)
    sw	$at,4128($zero)
    addiu	$a3,$a3,5
    sw	$a3,4140($zero)
.L0da772a4:
    ld	$gp,0($sp)
    # Line 1597
    jr	$ra
    addiu	$sp,$sp,48
.L0da772b0:
    # Line 1549
    lwc1	$f2,0($a1)
    dmtc1	$zero,$f3
    cvt.d.s	$f2,$f2
    c.lt.d	$f2,$f3
    nop
    bc1t	.L0da77468
    # Line 1551
    nop	# was lw $t9, -29344($gp) # &__glsplc_InvalidValue
    # Line 1554
    lw	$v0,4128($zero)
    slti	$at,$v0,2
    beqzl	$at,.L0da772fc
    lw	$at,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a1,16($sp)
    sd	$ra,8($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a1,16($sp)
    ld	$ra,8($sp)
    lw	$at,4136($zero)
.L0da772fc:
    # Line 1555
    li	$v1,0xb704
    sw	$v1,0($at)
    # Line 1556
    lwc1	$f3,0($a1)
    # Line 1557
    addiu	$a2,$v0,-2
    # Line 1556
    swc1	$f3,4($at)
    # Line 1557
    addiu	$a3,$at,8
    lw	$v1,4140($zero)
    sw	$a3,4136($zero)
    sw	$a2,4128($zero)
    addiu	$v1,$v1,2
    # Line 1558
    b	.L0da772a4
    # Line 1557
    sw	$v1,4140($zero)
.L0da7732c:
    # Line 1560
    lw	$v0,4128($zero)
    slti	$a2,$v0,2
    beqzl	$a2,.L0da7735c
    lw	$a2,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a1,16($sp)
    sd	$ra,8($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a1,16($sp)
    ld	$ra,8($sp)
    lw	$a2,4136($zero)
.L0da7735c:
    # Line 1561
    li	$a3,0xb604
    sw	$a3,0($a2)
    # Line 1562
    lwc1	$f0,0($a1)
    # Line 1563
    addiu	$at,$v0,-2
    # Line 1562
    swc1	$f0,4($a2)
    # Line 1563
    addiu	$v1,$a2,8
    lw	$a3,4140($zero)
    sw	$v1,4136($zero)
    sw	$at,4128($zero)
    addiu	$a3,$a3,2
    # Line 1564
    b	.L0da772a4
    # Line 1563
    sw	$a3,4140($zero)
.L0da7738c:
    # Line 1566
    lw	$v0,4128($zero)
    slti	$at,$v0,2
    beqzl	$at,.L0da773bc
    lw	$at,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a1,16($sp)
    sd	$ra,8($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a1,16($sp)
    ld	$ra,8($sp)
    lw	$at,4136($zero)
.L0da773bc:
    # Line 1567
    li	$v1,0xb504
    sw	$v1,0($at)
    # Line 1568
    lwc1	$f1,0($a1)
    # Line 1569
    addiu	$a2,$v0,-2
    # Line 1568
    swc1	$f1,4($at)
    # Line 1569
    addiu	$a3,$at,8
    lw	$v1,4140($zero)
    sw	$a3,4136($zero)
    sw	$a2,4128($zero)
    addiu	$v1,$v1,2
    # Line 1570
    b	.L0da772a4
    # Line 1569
    sw	$v1,4140($zero)
.L0da773ec:
    # Line 1572
    lw	$v0,4128($zero)
    slti	$a2,$v0,2
    beqzl	$a2,.L0da7741c
    lw	$a2,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a1,16($sp)
    sd	$ra,8($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a1,16($sp)
    ld	$ra,8($sp)
    lw	$a2,4136($zero)
.L0da7741c:
    # Line 1573
    li	$a3,0xb804
    sw	$a3,0($a2)
    # Line 1574
    lwc1	$f2,0($a1)
    # Line 1575
    addiu	$at,$v0,-2
    # Line 1574
    swc1	$f2,4($a2)
    # Line 1575
    addiu	$v1,$a2,8
    lw	$a3,4140($zero)
    sw	$v1,4136($zero)
    sw	$at,4128($zero)
    addiu	$a3,$a3,2
    # Line 1576
    b	.L0da772a4
    # Line 1575
    sw	$a3,4140($zero)
.L0da7744c:
    sd	$ra,8($sp)
    # Line 1589
    jalr	$t9
    nop
    # Line 1590
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da77468:
    sd	$ra,8($sp)
    # Line 1551
    jalr	$t9
    nop
    # Line 1552
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrlc_Fogfv

# Function: __glMgrlc_Fogf
# Declared: Line 1600 (Source lines: 1601-1616)
# Address: 0x0da77484 - 0x0da77504 (Size: 128 bytes, Frame: 32)
.globl __glMgrlc_Fogf
.ent __glMgrlc_Fogf
__glMgrlc_Fogf:
    # Line 1601
    li	$at,2913
    addiu	$sp,$sp,-32
    swc1	$f13,24($sp)
    sd	$gp,0($sp)
    lui	$v0,0x18
    addiu	$v0,$v0,29204
    beq	$a0,$at,.L0da774e4
    addu	$gp,$t9,$v0
    li	$v1,2914
    beq	$a0,$v1,.L0da774e4
    li	$a1,2915
    beq	$a0,$a1,.L0da774e4
    li	$at,2916
    beq	$a0,$at,.L0da774e4
    li	$v0,2917
    beq	$a0,$v0,.L0da774e4
    sd	$ra,8($sp)
    # Line 1613
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 1614
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da774e4:
    # Line 1610
    # lw $t9, -32316($gp) # &__glMgrlc_Fogfv
    sd	$ra,8($sp)
    bal __glMgrlc_Fogfv
    addiu	$a1,$sp,24
    # Line 1616
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrlc_Fogf

# Function: __glMgrlc_Fogiv
# Declared: Line 1619 (Source lines: 1620-1682)
# Address: 0x0da77504 - 0x0da778c8 (Size: 964 bytes, Frame: 48)
.globl __glMgrlc_Fogiv
.ent __glMgrlc_Fogiv
__glMgrlc_Fogiv:
    # Line 1621
    lw	$a4,__glCurrentContext
    # Line 1623
    li	$at,2918
    # Line 1620
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a1
    sd	$gp,0($sp)
    lui	$v0,0x18
    addiu	$v0,$v0,29076
    # Line 1623
    beq	$a0,$at,.L0da775f0
    # Line 1620
    addu	$gp,$t9,$v0
    # Line 1623
    li	$v1,2914
    beq	$a0,$v1,.L0da776ec
    li	$a2,2916
    beq	$a0,$a2,.L0da7775c
    li	$a3,2915
    beq	$a0,$a3,.L0da777c0
    li	$at,2913
    beq	$a0,$at,.L0da77824
    li	$v1,2917
    beq	$a0,$v1,.L0da77578
    # Line 1679
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,16($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 1680
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da77578:
    # Line 1664
    lw	$v0,0($s0)
    li	$a2,2048
    beq	$v0,$a2,.L0da77598
    li	$a3,2049
    beq	$v0,$a3,.L0da77598
    li	$at,9729
    bne	$v0,$at,.L0da77888
    # Line 1674
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
.L0da77598:
    # Line 1668
    lw	$v0,4128($zero)
    slti	$v1,$v0,2
    beqzl	$v1,.L0da775c0
    lw	$a2,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    lw	$a2,4136($zero)
.L0da775c0:
    # Line 1669
    li	$a3,0xb904
    sw	$a3,0($a2)
    # Line 1670
    lw	$v1,0($s0)
    # Line 1671
    addiu	$a3,$v0,-2
    # Line 1670
    sw	$v1,4($a2)
    # Line 1671
    addiu	$at,$a2,8
    lw	$a2,4140($zero)
    sw	$at,4136($zero)
    sw	$a3,4128($zero)
    addiu	$a2,$a2,2
    # Line 1668
    b	.L0da776dc
    # Line 1671
    sw	$a2,4140($zero)
.L0da775f0:
    # Line 1626
    lw	$v0,4128($zero)
    slti	$at,$v0,5
    beqzl	$at,.L0da77620
    lw	$at,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a4,24($sp)
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a4,24($sp)
    ld	$ra,16($sp)
    lw	$at,4136($zero)
.L0da77620:
    # Line 1627
    li	$a2,0xb410
    sw	$a2,0($at)
    # Line 1628
    lw	$v1,0($s0)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    lwc1	$f3,_lit_40000000
    mul.s	$f1,$f1,$f3
    lwc1	$f2,_lit_3f800000
    add.s	$f1,$f1,$f2
    lwc1	$f0,3308($a4)
    mul.s	$f0,$f0,$f1
    swc1	$f0,4($at)
    # Line 1629
    lw	$a3,4($s0)
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    lwc1	$f0,3308($a4)
    mul.s	$f0,$f0,$f1
    swc1	$f0,8($at)
    # Line 1630
    lw	$a2,8($s0)
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    lwc1	$f0,3308($a4)
    mul.s	$f0,$f0,$f1
    swc1	$f0,12($at)
    # Line 1631
    lw	$v1,12($s0)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    mul.s	$f1,$f1,$f3
    add.s	$f1,$f1,$f2
    lwc1	$f0,3308($a4)
    mul.s	$f0,$f0,$f1
    # Line 1632
    addiu	$a3,$at,20
    # Line 1631
    swc1	$f0,16($at)
    # Line 1632
    addiu	$a2,$v0,-5
    lw	$v1,4140($zero)
    sw	$a3,4136($zero)
    sw	$a2,4128($zero)
    addiu	$v1,$v1,5
    sw	$v1,4140($zero)
.L0da776dc:
    ld	$gp,0($sp)
    # Line 1682
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da776ec:
    # Line 1635
    lw	$a3,0($s0)
    bltz	$a3,.L0da778a8
    # Line 1637
    nop	# was lw $t9, -29344($gp) # &__glsplc_InvalidValue
    # Line 1640
    lw	$v0,4128($zero)
    slti	$at,$v0,2
    beqzl	$at,.L0da77720
    lw	$at,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    lw	$at,4136($zero)
.L0da77720:
    # Line 1641
    li	$a2,0xb704
    sw	$a2,0($at)
    # Line 1642
    lw	$v1,0($s0)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 1643
    addiu	$a2,$v0,-2
    # Line 1642
    swc1	$f2,4($at)
    # Line 1643
    addiu	$a3,$at,8
    lw	$v1,4140($zero)
    sw	$a3,4136($zero)
    sw	$a2,4128($zero)
    addiu	$v1,$v1,2
    # Line 1644
    b	.L0da776dc
    # Line 1643
    sw	$v1,4140($zero)
.L0da7775c:
    # Line 1646
    lw	$v0,4128($zero)
    slti	$a3,$v0,2
    beqzl	$a3,.L0da77784
    lw	$a3,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    lw	$a3,4136($zero)
.L0da77784:
    # Line 1647
    li	$v1,0xb604
    sw	$v1,0($a3)
    # Line 1648
    lw	$at,0($s0)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 1649
    addiu	$v1,$v0,-2
    # Line 1648
    swc1	$f3,4($a3)
    # Line 1649
    addiu	$a2,$a3,8
    lw	$at,4140($zero)
    sw	$a2,4136($zero)
    sw	$v1,4128($zero)
    addiu	$at,$at,2
    # Line 1650
    b	.L0da776dc
    # Line 1649
    sw	$at,4140($zero)
.L0da777c0:
    # Line 1652
    lw	$v0,4128($zero)
    slti	$a2,$v0,2
    beqzl	$a2,.L0da777e8
    lw	$a2,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    lw	$a2,4136($zero)
.L0da777e8:
    # Line 1653
    li	$at,0xb504
    sw	$at,0($a2)
    # Line 1654
    lw	$a3,0($s0)
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 1655
    addiu	$at,$v0,-2
    # Line 1654
    swc1	$f0,4($a2)
    # Line 1655
    addiu	$v1,$a2,8
    lw	$a3,4140($zero)
    sw	$v1,4136($zero)
    sw	$at,4128($zero)
    addiu	$a3,$a3,2
    # Line 1656
    b	.L0da776dc
    # Line 1655
    sw	$a3,4140($zero)
.L0da77824:
    # Line 1658
    lw	$v0,4128($zero)
    slti	$v1,$v0,2
    beqzl	$v1,.L0da7784c
    lw	$v1,4136($zero)
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,16($sp)
    lw	$v1,4136($zero)
.L0da7784c:
    # Line 1659
    li	$a3,0xb804
    sw	$a3,0($v1)
    # Line 1660
    lw	$a2,0($s0)
    mtc1	$a2,$f1
    nop
    cvt.s.w	$f1,$f1
    # Line 1661
    addiu	$a3,$v0,-2
    # Line 1660
    swc1	$f1,4($v1)
    # Line 1661
    addiu	$at,$v1,8
    lw	$a2,4140($zero)
    sw	$at,4136($zero)
    sw	$a3,4128($zero)
    addiu	$a2,$a2,2
    # Line 1662
    b	.L0da776dc
    # Line 1661
    sw	$a2,4140($zero)
.L0da77888:
    sd	$ra,16($sp)
    # Line 1674
    jalr	$t9
    nop
    # Line 1675
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da778a8:
    sd	$ra,16($sp)
    # Line 1637
    jalr	$t9
    nop
    # Line 1638
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrlc_Fogiv

# Function: __glMgrlc_Fogi
# Declared: Line 1685 (Source lines: 1686-1701)
# Address: 0x0da778c8 - 0x0da77948 (Size: 128 bytes, Frame: 32)
.globl __glMgrlc_Fogi
.ent __glMgrlc_Fogi
__glMgrlc_Fogi:
    # Line 1686
    li	$at,2913
    addiu	$sp,$sp,-32
    sw	$a1,28($sp)
    sd	$gp,0($sp)
    lui	$v0,0x18
    addiu	$v0,$v0,28112
    beq	$a0,$at,.L0da77928
    addu	$gp,$t9,$v0
    li	$v1,2914
    beq	$a0,$v1,.L0da77928
    li	$a1,2915
    beq	$a0,$a1,.L0da77928
    li	$at,2916
    beq	$a0,$at,.L0da77928
    li	$v0,2917
    beq	$a0,$v0,.L0da77928
    sd	$ra,8($sp)
    # Line 1698
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    # Line 1699
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da77928:
    # Line 1695
    # lw $t9, -32308($gp) # &__glMgrlc_Fogiv
    sd	$ra,8($sp)
    bal __glMgrlc_Fogiv
    addiu	$a1,$sp,28
    # Line 1701
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrlc_Fogi

# Function: __glMgrlc_PolygonOffsetEXT
# Declared: Line 1704 (Source lines: 1705-1712)
# Address: 0x0da77948 - 0x0da779dc (Size: 148 bytes, Frame: 48)
.globl __glMgrlc_PolygonOffsetEXT
.ent __glMgrlc_PolygonOffsetEXT
__glMgrlc_PolygonOffsetEXT:
    # Line 1705
    mov.s	$f4,$f13
    addiu	$sp,$sp,-48
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 1706
    lw	$v0,4128($zero)
    # Line 1705
    lui	$v1,0x18
    addiu	$v1,$v1,27984
    # Line 1706
    slti	$at,$v0,4
    bnez	$at,.L0da779bc
    # Line 1705
    addu	$gp,$t9,$v1
.L0da77974:
    # Line 1706
    lw	$at,4136($zero)
    # Line 1710
    lwc1	$f0,_lit_3f800000
    ld	$gp,8($sp)
    # Line 1711
    addiu	$a1,$v0,-4
    # Line 1708
    swc1	$f30,4($at)
    # Line 1712
    ldc1	$f30,0($sp)
    # Line 1711
    addiu	$a2,$at,16
    # Line 1707
    li	$v1,0xe70c
    # Line 1710
    swc1	$f0,12($at)
    # Line 1709
    swc1	$f4,8($at)
    # Line 1707
    sw	$v1,0($at)
    # Line 1711
    sw	$a2,4136($zero)
    lw	$a0,4140($zero)
    sw	$a1,4128($zero)
    # Line 1712
    addiu	$sp,$sp,48
    # Line 1711
    addiu	$a0,$a0,4
    # Line 1712
    jr	$ra
    # Line 1711
    sw	$a0,4140($zero)
.L0da779bc:
    # Line 1706
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f4,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f4,16($sp)
    b	.L0da77974
    ld	$ra,24($sp)
.end __glMgrlc_PolygonOffsetEXT

# Function: __glMgrlc_PolygonOffset
# Declared: Line 1715 (Source lines: 1716-1723)
# Address: 0x0da779dc - 0x0da77a70 (Size: 148 bytes, Frame: 48)
.globl __glMgrlc_PolygonOffset
.ent __glMgrlc_PolygonOffset
__glMgrlc_PolygonOffset:
    # Line 1716
    mov.s	$f4,$f13
    addiu	$sp,$sp,-48
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 1717
    lw	$v0,4128($zero)
    # Line 1716
    lui	$v1,0x18
    addiu	$v1,$v1,27836
    # Line 1717
    slti	$at,$v0,4
    bnez	$at,.L0da77a50
    # Line 1716
    addu	$gp,$t9,$v1
.L0da77a08:
    # Line 1717
    lw	$at,4136($zero)
    # Line 1721
    lwc1	$f0,_lit_3f8ccccd
    ld	$gp,8($sp)
    # Line 1722
    addiu	$a1,$v0,-4
    # Line 1719
    swc1	$f30,4($at)
    # Line 1723
    ldc1	$f30,0($sp)
    # Line 1722
    addiu	$a2,$at,16
    # Line 1718
    li	$v1,0xe70c
    # Line 1721
    swc1	$f0,12($at)
    # Line 1720
    swc1	$f4,8($at)
    # Line 1718
    sw	$v1,0($at)
    # Line 1722
    sw	$a2,4136($zero)
    lw	$a0,4140($zero)
    sw	$a1,4128($zero)
    # Line 1723
    addiu	$sp,$sp,48
    # Line 1722
    addiu	$a0,$a0,4
    # Line 1723
    jr	$ra
    # Line 1722
    sw	$a0,4140($zero)
.L0da77a50:
    # Line 1717
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f4,16($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f4,16($sp)
    b	.L0da77a08
    ld	$ra,24($sp)
.end __glMgrlc_PolygonOffset

# Function: __glMgrlc_Rectd
# Declared: Line 1731 (Source lines: 1732-1739)
# Address: 0x0da77a70 - 0x0da77b1c (Size: 172 bytes, Frame: 208)
.globl __glMgrlc_Rectd
.ent __glMgrlc_Rectd
__glMgrlc_Rectd:
    # Line 1733
    li	$a0,9
    # Line 1732
    addiu	$sp,$sp,-80
    sdc1	$f24,24($sp)
    mov.d	$f24,$f15
    sdc1	$f26,8($sp)
    mov.d	$f26,$f14
    sdc1	$f20,0($sp)
    mov.d	$f20,$f13
    sd	$gp,40($sp)
    lui	$at,0x18
    addiu	$at,$at,27688
    addu	$gp,$t9,$at
    # Line 1733
    # lw $t9, -32480($gp) # &__glMgrlc_Begin
    sdc1	$f22,16($sp)
    sd	$ra,32($sp)
    bal __glMgrlc_Begin
    # Line 1732
    mov.d	$f22,$f12
    # Line 1734
    # lw $t9, -18796($gp) # &__glMgrlc_Vertex2d
    mov.d	$f12,$f22
    jal	__glMgrlc_Vertex2d
    mov.d	$f13,$f20
    # Line 1735
    # lw $t9, -18796($gp) # &__glMgrlc_Vertex2d
    mov.d	$f12,$f26
    jal	__glMgrlc_Vertex2d
    mov.d	$f13,$f20
    # Line 1736
    # lw $t9, -18796($gp) # &__glMgrlc_Vertex2d
    mov.d	$f12,$f26
    mov.d	$f13,$f24
    jal	__glMgrlc_Vertex2d
    ldc1	$f20,0($sp)
    # Line 1737
    # lw $t9, -18796($gp) # &__glMgrlc_Vertex2d
    mov.d	$f12,$f22
    mov.d	$f13,$f24
    jal	__glMgrlc_Vertex2d
    ldc1	$f26,8($sp)
    # Line 1738
    # lw $t9, -32476($gp) # &__glMgrlc_End
    ldc1	$f24,24($sp)
    bal __glMgrlc_End
    ldc1	$f22,16($sp)
    # Line 1739
    ld	$ra,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrlc_Rectd

# Function: __glMgrlc_Rectdv
# Declared: Line 1742 (Source lines: 1743-1750)
# Address: 0x0da77b1c - 0x0da77bb0 (Size: 148 bytes, Frame: 48)
.globl __glMgrlc_Rectdv
.ent __glMgrlc_Rectdv
__glMgrlc_Rectdv:
    # Line 1743
    addiu	$sp,$sp,-48
    sd	$s1,0($sp)
    move	$s1,$a0
    # Line 1744
    li	$a0,9
    sd	$gp,24($sp)
    # Line 1743
    lui	$at,0x18
    addiu	$at,$at,27516
    addu	$gp,$t9,$at
    # Line 1744
    # lw $t9, -32480($gp) # &__glMgrlc_Begin
    sd	$s5,16($sp)
    sd	$ra,8($sp)
    bal __glMgrlc_Begin
    # Line 1743
    move	$s5,$a1
    # Line 1745
    # lw $t9, -18796($gp) # &__glMgrlc_Vertex2d
    ldc1	$f13,8($s1)
    jal	__glMgrlc_Vertex2d
    ldc1	$f12,0($s1)
    # Line 1746
    # lw $t9, -18796($gp) # &__glMgrlc_Vertex2d
    ldc1	$f13,8($s1)
    jal	__glMgrlc_Vertex2d
    ldc1	$f12,0($s5)
    # Line 1747
    # lw $t9, -18796($gp) # &__glMgrlc_Vertex2d
    ldc1	$f13,8($s5)
    jal	__glMgrlc_Vertex2d
    ldc1	$f12,0($s5)
    # Line 1748
    # lw $t9, -18796($gp) # &__glMgrlc_Vertex2d
    ldc1	$f13,8($s5)
    jal	__glMgrlc_Vertex2d
    ldc1	$f12,0($s1)
    # Line 1749
    # lw $t9, -32476($gp) # &__glMgrlc_End
    ld	$s5,16($sp)
    bal __glMgrlc_End
    ld	$s1,0($sp)
    # Line 1750
    ld	$ra,8($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrlc_Rectdv

# Function: __glMgrlc_Rectf
# Declared: Line 1753 (Source lines: 1754-1761)
# Address: 0x0da77bb0 - 0x0da77c5c (Size: 172 bytes, Frame: 208)
.globl __glMgrlc_Rectf
.ent __glMgrlc_Rectf
__glMgrlc_Rectf:
    # Line 1755
    li	$a0,9
    # Line 1754
    addiu	$sp,$sp,-80
    sdc1	$f24,24($sp)
    mov.s	$f24,$f15
    sdc1	$f26,8($sp)
    mov.s	$f26,$f14
    sdc1	$f20,0($sp)
    mov.s	$f20,$f13
    sd	$gp,40($sp)
    lui	$at,0x18
    addiu	$at,$at,27368
    addu	$gp,$t9,$at
    # Line 1755
    # lw $t9, -32480($gp) # &__glMgrlc_Begin
    sdc1	$f22,16($sp)
    sd	$ra,32($sp)
    bal __glMgrlc_Begin
    # Line 1754
    mov.s	$f22,$f12
    # Line 1756
    # lw $t9, -18788($gp) # &__glMgrlc_Vertex2f
    mov.s	$f12,$f22
    jal	__glMgrlc_Vertex2f
    mov.s	$f13,$f20
    # Line 1757
    # lw $t9, -18788($gp) # &__glMgrlc_Vertex2f
    mov.s	$f12,$f26
    jal	__glMgrlc_Vertex2f
    mov.s	$f13,$f20
    # Line 1758
    # lw $t9, -18788($gp) # &__glMgrlc_Vertex2f
    mov.s	$f12,$f26
    mov.s	$f13,$f24
    jal	__glMgrlc_Vertex2f
    ldc1	$f20,0($sp)
    # Line 1759
    # lw $t9, -18788($gp) # &__glMgrlc_Vertex2f
    mov.s	$f12,$f22
    mov.s	$f13,$f24
    jal	__glMgrlc_Vertex2f
    ldc1	$f26,8($sp)
    # Line 1760
    # lw $t9, -32476($gp) # &__glMgrlc_End
    ldc1	$f24,24($sp)
    bal __glMgrlc_End
    ldc1	$f22,16($sp)
    # Line 1761
    ld	$ra,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrlc_Rectf

# Function: __glMgrlc_Rectfv
# Declared: Line 1764 (Source lines: 1765-1772)
# Address: 0x0da77c5c - 0x0da77cf0 (Size: 148 bytes, Frame: 48)
.globl __glMgrlc_Rectfv
.ent __glMgrlc_Rectfv
__glMgrlc_Rectfv:
    # Line 1765
    addiu	$sp,$sp,-48
    sd	$s1,0($sp)
    move	$s1,$a0
    # Line 1766
    li	$a0,9
    sd	$gp,24($sp)
    # Line 1765
    lui	$at,0x18
    addiu	$at,$at,27196
    addu	$gp,$t9,$at
    # Line 1766
    # lw $t9, -32480($gp) # &__glMgrlc_Begin
    sd	$s5,16($sp)
    sd	$ra,8($sp)
    bal __glMgrlc_Begin
    # Line 1765
    move	$s5,$a1
    # Line 1767
    # lw $t9, -18788($gp) # &__glMgrlc_Vertex2f
    lwc1	$f13,4($s1)
    jal	__glMgrlc_Vertex2f
    lwc1	$f12,0($s1)
    # Line 1768
    # lw $t9, -18788($gp) # &__glMgrlc_Vertex2f
    lwc1	$f13,4($s1)
    jal	__glMgrlc_Vertex2f
    lwc1	$f12,0($s5)
    # Line 1769
    # lw $t9, -18788($gp) # &__glMgrlc_Vertex2f
    lwc1	$f13,4($s5)
    jal	__glMgrlc_Vertex2f
    lwc1	$f12,0($s5)
    # Line 1770
    # lw $t9, -18788($gp) # &__glMgrlc_Vertex2f
    lwc1	$f13,4($s5)
    jal	__glMgrlc_Vertex2f
    lwc1	$f12,0($s1)
    # Line 1771
    # lw $t9, -32476($gp) # &__glMgrlc_End
    ld	$s5,16($sp)
    bal __glMgrlc_End
    ld	$s1,0($sp)
    # Line 1772
    ld	$ra,8($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrlc_Rectfv

# Function: __glMgrlc_Recti
# Declared: Line 1775 (Source lines: 1776-1783)
# Address: 0x0da77cf0 - 0x0da77d9c (Size: 172 bytes, Frame: 208)
.globl __glMgrlc_Recti
.ent __glMgrlc_Recti
__glMgrlc_Recti:
    # Line 1776
    addiu	$sp,$sp,-80
    sd	$s3,0($sp)
    move	$s3,$a0
    # Line 1777
    li	$a0,9
    sd	$s1,32($sp)
    # Line 1776
    move	$s1,$a3
    sd	$s0,24($sp)
    move	$s0,$a2
    sd	$gp,40($sp)
    lui	$at,0x18
    addiu	$at,$at,27048
    addu	$gp,$t9,$at
    # Line 1777
    # lw $t9, -32480($gp) # &__glMgrlc_Begin
    sd	$s2,8($sp)
    sd	$ra,16($sp)
    bal __glMgrlc_Begin
    # Line 1776
    move	$s2,$a1
    # Line 1778
    # lw $t9, -18780($gp) # &__glMgrlc_Vertex2i
    move	$a0,$s3
    jal	__glMgrlc_Vertex2i
    move	$a1,$s2
    # Line 1779
    # lw $t9, -18780($gp) # &__glMgrlc_Vertex2i
    move	$a0,$s0
    jal	__glMgrlc_Vertex2i
    move	$a1,$s2
    # Line 1780
    # lw $t9, -18780($gp) # &__glMgrlc_Vertex2i
    move	$a0,$s0
    move	$a1,$s1
    jal	__glMgrlc_Vertex2i
    ld	$s2,8($sp)
    # Line 1781
    # lw $t9, -18780($gp) # &__glMgrlc_Vertex2i
    move	$a0,$s3
    move	$a1,$s1
    jal	__glMgrlc_Vertex2i
    ld	$s0,24($sp)
    # Line 1782
    # lw $t9, -32476($gp) # &__glMgrlc_End
    ld	$s1,32($sp)
    bal __glMgrlc_End
    ld	$s3,0($sp)
    # Line 1783
    ld	$ra,16($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrlc_Recti

# Function: __glMgrlc_Rectiv
# Declared: Line 1786 (Source lines: 1787-1794)
# Address: 0x0da77d9c - 0x0da77e30 (Size: 148 bytes, Frame: 48)
.globl __glMgrlc_Rectiv
.ent __glMgrlc_Rectiv
__glMgrlc_Rectiv:
    # Line 1787
    addiu	$sp,$sp,-48
    sd	$s1,0($sp)
    move	$s1,$a0
    # Line 1788
    li	$a0,9
    sd	$gp,24($sp)
    # Line 1787
    lui	$at,0x18
    addiu	$at,$at,26876
    addu	$gp,$t9,$at
    # Line 1788
    # lw $t9, -32480($gp) # &__glMgrlc_Begin
    sd	$s5,16($sp)
    sd	$ra,8($sp)
    bal __glMgrlc_Begin
    # Line 1787
    move	$s5,$a1
    # Line 1789
    # lw $t9, -18780($gp) # &__glMgrlc_Vertex2i
    lw	$a1,4($s1)
    jal	__glMgrlc_Vertex2i
    lw	$a0,0($s1)
    # Line 1790
    # lw $t9, -18780($gp) # &__glMgrlc_Vertex2i
    lw	$a1,4($s1)
    jal	__glMgrlc_Vertex2i
    lw	$a0,0($s5)
    # Line 1791
    # lw $t9, -18780($gp) # &__glMgrlc_Vertex2i
    lw	$a1,4($s5)
    jal	__glMgrlc_Vertex2i
    lw	$a0,0($s5)
    # Line 1792
    # lw $t9, -18780($gp) # &__glMgrlc_Vertex2i
    lw	$a1,4($s5)
    jal	__glMgrlc_Vertex2i
    lw	$a0,0($s1)
    # Line 1793
    # lw $t9, -32476($gp) # &__glMgrlc_End
    ld	$s5,16($sp)
    bal __glMgrlc_End
    ld	$s1,0($sp)
    # Line 1794
    ld	$ra,8($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrlc_Rectiv

# Function: __glMgrlc_Rects
# Declared: Line 1797 (Source lines: 1798-1805)
# Address: 0x0da77e30 - 0x0da77edc (Size: 172 bytes, Frame: 208)
.globl __glMgrlc_Rects
.ent __glMgrlc_Rects
__glMgrlc_Rects:
    # Line 1798
    addiu	$sp,$sp,-80
    sd	$s3,0($sp)
    move	$s3,$a0
    # Line 1799
    li	$a0,9
    sd	$s1,32($sp)
    # Line 1798
    move	$s1,$a3
    sd	$s0,24($sp)
    move	$s0,$a2
    sd	$gp,40($sp)
    lui	$at,0x18
    addiu	$at,$at,26728
    addu	$gp,$t9,$at
    # Line 1799
    # lw $t9, -32480($gp) # &__glMgrlc_Begin
    sd	$s2,8($sp)
    sd	$ra,16($sp)
    bal __glMgrlc_Begin
    # Line 1798
    move	$s2,$a1
    # Line 1800
    # lw $t9, -18772($gp) # &__glMgrlc_Vertex2s
    move	$a0,$s3
    jal	__glMgrlc_Vertex2s
    move	$a1,$s2
    # Line 1801
    # lw $t9, -18772($gp) # &__glMgrlc_Vertex2s
    move	$a0,$s0
    jal	__glMgrlc_Vertex2s
    move	$a1,$s2
    # Line 1802
    # lw $t9, -18772($gp) # &__glMgrlc_Vertex2s
    move	$a0,$s0
    move	$a1,$s1
    jal	__glMgrlc_Vertex2s
    ld	$s2,8($sp)
    # Line 1803
    # lw $t9, -18772($gp) # &__glMgrlc_Vertex2s
    move	$a0,$s3
    move	$a1,$s1
    jal	__glMgrlc_Vertex2s
    ld	$s0,24($sp)
    # Line 1804
    # lw $t9, -32476($gp) # &__glMgrlc_End
    ld	$s1,32($sp)
    bal __glMgrlc_End
    ld	$s3,0($sp)
    # Line 1805
    ld	$ra,16($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrlc_Rects

# Function: __glMgrlc_Rectsv
# Declared: Line 1808 (Source lines: 1809-1816)
# Address: 0x0da77edc - 0x0da77f70 (Size: 148 bytes, Frame: 48)
.globl __glMgrlc_Rectsv
.ent __glMgrlc_Rectsv
__glMgrlc_Rectsv:
    # Line 1809
    addiu	$sp,$sp,-48
    sd	$s1,0($sp)
    move	$s1,$a0
    # Line 1810
    li	$a0,9
    sd	$gp,24($sp)
    # Line 1809
    lui	$at,0x18
    addiu	$at,$at,26556
    addu	$gp,$t9,$at
    # Line 1810
    # lw $t9, -32480($gp) # &__glMgrlc_Begin
    sd	$s5,16($sp)
    sd	$ra,8($sp)
    bal __glMgrlc_Begin
    # Line 1809
    move	$s5,$a1
    # Line 1811
    # lw $t9, -18772($gp) # &__glMgrlc_Vertex2s
    lh	$a1,2($s1)
    jal	__glMgrlc_Vertex2s
    lh	$a0,0($s1)
    # Line 1812
    # lw $t9, -18772($gp) # &__glMgrlc_Vertex2s
    lh	$a1,2($s1)
    jal	__glMgrlc_Vertex2s
    lh	$a0,0($s5)
    # Line 1813
    # lw $t9, -18772($gp) # &__glMgrlc_Vertex2s
    lh	$a1,2($s5)
    jal	__glMgrlc_Vertex2s
    lh	$a0,0($s5)
    # Line 1814
    # lw $t9, -18772($gp) # &__glMgrlc_Vertex2s
    lh	$a1,2($s5)
    jal	__glMgrlc_Vertex2s
    lh	$a0,0($s1)
    # Line 1815
    # lw $t9, -32476($gp) # &__glMgrlc_End
    ld	$s5,16($sp)
    bal __glMgrlc_End
    ld	$s1,0($sp)
    # Line 1816
    ld	$ra,8($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrlc_Rectsv

# Function: __glMgrlc_ClipPlane
# Declared: Line 1824 (Source lines: 1825-1843)
# Address: 0x0da77f70 - 0x0da78068 (Size: 248 bytes, Frame: 48)
.globl __glMgrlc_ClipPlane
.ent __glMgrlc_ClipPlane
__glMgrlc_ClipPlane:
    # Line 1828
    sltiu	$at,$a0,12288
    # Line 1825
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    lui	$v0,0x18
    addiu	$v0,$v0,26408
    # Line 1828
    bnez	$at,.L0da78028
    # Line 1825
    addu	$gp,$t9,$v0
    # Line 1828
    lw	$v1,__glCurrentContext
    lw	$v1,3332($v1)
    addiu	$a2,$s0,-12288
    sltu	$v1,$v1,$a2
    bnez	$v1,.L0da7802c
    # Line 1831
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    # Line 1835
    lw	$v0,4128($zero)
    slti	$a2,$v0,6
    bnez	$a2,.L0da7804c
    nop	# was lw $t9, -29228($gp) # &__glSPDlistSpace
.L0da77fbc:
    lw	$v1,4136($zero)
    # Line 1836
    li	$a2,0xa514
    # Line 1837
    sw	$s0,4($v1)
    # Line 1836
    sw	$a2,0($v1)
    # Line 1838
    ldc1	$f3,0($a1)
    cvt.s.d	$f3,$f3
    swc1	$f3,8($v1)
    # Line 1839
    ldc1	$f2,8($a1)
    cvt.s.d	$f2,$f2
    swc1	$f2,12($v1)
    # Line 1840
    ldc1	$f1,16($a1)
    cvt.s.d	$f1,$f1
    swc1	$f1,16($v1)
    # Line 1841
    ldc1	$f0,24($a1)
    cvt.s.d	$f0,$f0
    ld	$gp,0($sp)
    # Line 1842
    addiu	$s0,$v0,-6
    addiu	$at,$v1,24
    # Line 1841
    swc1	$f0,20($v1)
    # Line 1842
    sw	$at,4136($zero)
    sw	$s0,4128($zero)
    lw	$a3,4140($zero)
    # Line 1843
    ld	$s0,8($sp)
    addiu	$sp,$sp,48
    # Line 1842
    addiu	$a3,$a3,6
    # Line 1843
    jr	$ra
    # Line 1842
    sw	$a3,4140($zero)
.L0da78028:
    # Line 1831
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
.L0da7802c:
    sd	$ra,16($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 1832
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7804c:
    sd	$a1,24($sp)
    sd	$ra,16($sp)
    # Line 1835
    jalr	$t9
    move	$a0,$zero
    ld	$a1,24($sp)
    b	.L0da77fbc
    ld	$ra,16($sp)
.end __glMgrlc_ClipPlane

# Function: __glMgrlc_MultMatrixf
# Declared: Line 1846 (Source lines: 1847-1867)
# Address: 0x0da78068 - 0x0da78160 (Size: 248 bytes, Frame: 48)
.globl __glMgrlc_MultMatrixf
.ent __glMgrlc_MultMatrixf
__glMgrlc_MultMatrixf:
    # Line 1847
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 1848
    lw	$v0,4128($zero)
    # Line 1847
    lui	$v1,0x18
    addiu	$v1,$v1,26160
    # Line 1848
    slti	$at,$v0,17
    bnez	$at,.L0da78148
    # Line 1847
    addu	$gp,$t9,$v1
.L0da78090:
    # Line 1848
    lw	$at,4136($zero)
    # Line 1849
    li	$v1,11584
    sw	$v1,0($at)
    # Line 1850
    lwc1	$f0,0($s8)
    swc1	$f0,4($at)
    # Line 1851
    lwc1	$f4,4($s8)
    swc1	$f4,8($at)
    # Line 1852
    lwc1	$f3,8($s8)
    swc1	$f3,12($at)
    # Line 1853
    lwc1	$f2,12($s8)
    swc1	$f2,16($at)
    # Line 1854
    lwc1	$f1,16($s8)
    swc1	$f1,20($at)
    # Line 1855
    lwc1	$f0,20($s8)
    swc1	$f0,24($at)
    # Line 1856
    lwc1	$f4,24($s8)
    swc1	$f4,28($at)
    # Line 1857
    lwc1	$f3,28($s8)
    swc1	$f3,32($at)
    # Line 1858
    lwc1	$f2,32($s8)
    swc1	$f2,36($at)
    # Line 1859
    lwc1	$f1,36($s8)
    swc1	$f1,40($at)
    # Line 1860
    lwc1	$f0,40($s8)
    swc1	$f0,44($at)
    # Line 1861
    lwc1	$f4,44($s8)
    swc1	$f4,48($at)
    # Line 1862
    lwc1	$f3,48($s8)
    swc1	$f3,52($at)
    # Line 1863
    lwc1	$f2,52($s8)
    swc1	$f2,56($at)
    # Line 1864
    lwc1	$f1,56($s8)
    swc1	$f1,60($at)
    ld	$gp,8($sp)
    # Line 1865
    lwc1	$f0,60($s8)
    # Line 1866
    addiu	$a2,$v0,-17
    addiu	$s8,$at,68
    # Line 1865
    swc1	$f0,64($at)
    # Line 1866
    sw	$a2,4128($zero)
    sw	$s8,4136($zero)
    lw	$a1,4140($zero)
    # Line 1867
    ld	$s8,0($sp)
    addiu	$sp,$sp,48
    # Line 1866
    addiu	$a1,$a1,17
    # Line 1867
    jr	$ra
    # Line 1866
    sw	$a1,4140($zero)
.L0da78148:
    # Line 1848
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da78090
    ld	$ra,16($sp)
.end __glMgrlc_MultMatrixf

# Function: __glMgrlc_MultMatrixd
# Declared: Line 1870 (Source lines: 1871-1891)
# Address: 0x0da78160 - 0x0da78298 (Size: 312 bytes, Frame: 48)
.globl __glMgrlc_MultMatrixd
.ent __glMgrlc_MultMatrixd
__glMgrlc_MultMatrixd:
    # Line 1871
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 1872
    lw	$v0,4128($zero)
    # Line 1871
    lui	$v1,0x18
    addiu	$v1,$v1,25912
    # Line 1872
    slti	$at,$v0,17
    bnez	$at,.L0da78280
    # Line 1871
    addu	$gp,$t9,$v1
.L0da78188:
    # Line 1872
    lw	$at,4136($zero)
    # Line 1873
    li	$v1,11584
    sw	$v1,0($at)
    # Line 1874
    ldc1	$f0,0($s8)
    cvt.s.d	$f0,$f0
    swc1	$f0,4($at)
    # Line 1875
    ldc1	$f4,8($s8)
    cvt.s.d	$f4,$f4
    swc1	$f4,8($at)
    # Line 1876
    ldc1	$f3,16($s8)
    cvt.s.d	$f3,$f3
    swc1	$f3,12($at)
    # Line 1877
    ldc1	$f2,24($s8)
    cvt.s.d	$f2,$f2
    swc1	$f2,16($at)
    # Line 1878
    ldc1	$f1,32($s8)
    cvt.s.d	$f1,$f1
    swc1	$f1,20($at)
    # Line 1879
    ldc1	$f0,40($s8)
    cvt.s.d	$f0,$f0
    swc1	$f0,24($at)
    # Line 1880
    ldc1	$f4,48($s8)
    cvt.s.d	$f4,$f4
    swc1	$f4,28($at)
    # Line 1881
    ldc1	$f3,56($s8)
    cvt.s.d	$f3,$f3
    swc1	$f3,32($at)
    # Line 1882
    ldc1	$f2,64($s8)
    cvt.s.d	$f2,$f2
    swc1	$f2,36($at)
    # Line 1883
    ldc1	$f1,72($s8)
    cvt.s.d	$f1,$f1
    swc1	$f1,40($at)
    # Line 1884
    ldc1	$f0,80($s8)
    cvt.s.d	$f0,$f0
    swc1	$f0,44($at)
    # Line 1885
    ldc1	$f4,88($s8)
    cvt.s.d	$f4,$f4
    swc1	$f4,48($at)
    # Line 1886
    ldc1	$f3,96($s8)
    cvt.s.d	$f3,$f3
    swc1	$f3,52($at)
    # Line 1887
    ldc1	$f2,104($s8)
    cvt.s.d	$f2,$f2
    swc1	$f2,56($at)
    # Line 1888
    ldc1	$f1,112($s8)
    cvt.s.d	$f1,$f1
    swc1	$f1,60($at)
    # Line 1889
    ldc1	$f0,120($s8)
    cvt.s.d	$f0,$f0
    ld	$gp,8($sp)
    # Line 1890
    addiu	$a2,$v0,-17
    addiu	$s8,$at,68
    # Line 1889
    swc1	$f0,64($at)
    # Line 1890
    sw	$a2,4128($zero)
    sw	$s8,4136($zero)
    lw	$a1,4140($zero)
    # Line 1891
    ld	$s8,0($sp)
    addiu	$sp,$sp,48
    # Line 1890
    addiu	$a1,$a1,17
    # Line 1891
    jr	$ra
    # Line 1890
    sw	$a1,4140($zero)
.L0da78280:
    # Line 1872
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da78188
    ld	$ra,16($sp)
.end __glMgrlc_MultMatrixd

# Function: __glMgrlc_LoadMatrixf
# Declared: Line 1894 (Source lines: 1895-1915)
# Address: 0x0da78298 - 0x0da78390 (Size: 248 bytes, Frame: 48)
.globl __glMgrlc_LoadMatrixf
.ent __glMgrlc_LoadMatrixf
__glMgrlc_LoadMatrixf:
    # Line 1895
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 1896
    lw	$v0,4128($zero)
    # Line 1895
    lui	$v1,0x18
    addiu	$v1,$v1,25600
    # Line 1896
    slti	$at,$v0,17
    bnez	$at,.L0da78378
    # Line 1895
    addu	$gp,$t9,$v1
.L0da782c0:
    # Line 1896
    lw	$at,4136($zero)
    # Line 1897
    li	$v1,11072
    sw	$v1,0($at)
    # Line 1898
    lwc1	$f0,0($s8)
    swc1	$f0,4($at)
    # Line 1899
    lwc1	$f4,4($s8)
    swc1	$f4,8($at)
    # Line 1900
    lwc1	$f3,8($s8)
    swc1	$f3,12($at)
    # Line 1901
    lwc1	$f2,12($s8)
    swc1	$f2,16($at)
    # Line 1902
    lwc1	$f1,16($s8)
    swc1	$f1,20($at)
    # Line 1903
    lwc1	$f0,20($s8)
    swc1	$f0,24($at)
    # Line 1904
    lwc1	$f4,24($s8)
    swc1	$f4,28($at)
    # Line 1905
    lwc1	$f3,28($s8)
    swc1	$f3,32($at)
    # Line 1906
    lwc1	$f2,32($s8)
    swc1	$f2,36($at)
    # Line 1907
    lwc1	$f1,36($s8)
    swc1	$f1,40($at)
    # Line 1908
    lwc1	$f0,40($s8)
    swc1	$f0,44($at)
    # Line 1909
    lwc1	$f4,44($s8)
    swc1	$f4,48($at)
    # Line 1910
    lwc1	$f3,48($s8)
    swc1	$f3,52($at)
    # Line 1911
    lwc1	$f2,52($s8)
    swc1	$f2,56($at)
    # Line 1912
    lwc1	$f1,56($s8)
    swc1	$f1,60($at)
    ld	$gp,8($sp)
    # Line 1913
    lwc1	$f0,60($s8)
    # Line 1914
    addiu	$a2,$v0,-17
    addiu	$s8,$at,68
    # Line 1913
    swc1	$f0,64($at)
    # Line 1914
    sw	$a2,4128($zero)
    sw	$s8,4136($zero)
    lw	$a1,4140($zero)
    # Line 1915
    ld	$s8,0($sp)
    addiu	$sp,$sp,48
    # Line 1914
    addiu	$a1,$a1,17
    # Line 1915
    jr	$ra
    # Line 1914
    sw	$a1,4140($zero)
.L0da78378:
    # Line 1896
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da782c0
    ld	$ra,16($sp)
.end __glMgrlc_LoadMatrixf

# Function: __glMgrlc_LoadMatrixd
# Declared: Line 1918 (Source lines: 1919-1939)
# Address: 0x0da78390 - 0x0da784c8 (Size: 312 bytes, Frame: 48)
.globl __glMgrlc_LoadMatrixd
.ent __glMgrlc_LoadMatrixd
__glMgrlc_LoadMatrixd:
    # Line 1919
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    # Line 1920
    lw	$v0,4128($zero)
    # Line 1919
    lui	$v1,0x18
    addiu	$v1,$v1,25352
    # Line 1920
    slti	$at,$v0,17
    bnez	$at,.L0da784b0
    # Line 1919
    addu	$gp,$t9,$v1
.L0da783b8:
    # Line 1920
    lw	$at,4136($zero)
    # Line 1921
    li	$v1,11072
    sw	$v1,0($at)
    # Line 1922
    ldc1	$f0,0($s8)
    cvt.s.d	$f0,$f0
    swc1	$f0,4($at)
    # Line 1923
    ldc1	$f4,8($s8)
    cvt.s.d	$f4,$f4
    swc1	$f4,8($at)
    # Line 1924
    ldc1	$f3,16($s8)
    cvt.s.d	$f3,$f3
    swc1	$f3,12($at)
    # Line 1925
    ldc1	$f2,24($s8)
    cvt.s.d	$f2,$f2
    swc1	$f2,16($at)
    # Line 1926
    ldc1	$f1,32($s8)
    cvt.s.d	$f1,$f1
    swc1	$f1,20($at)
    # Line 1927
    ldc1	$f0,40($s8)
    cvt.s.d	$f0,$f0
    swc1	$f0,24($at)
    # Line 1928
    ldc1	$f4,48($s8)
    cvt.s.d	$f4,$f4
    swc1	$f4,28($at)
    # Line 1929
    ldc1	$f3,56($s8)
    cvt.s.d	$f3,$f3
    swc1	$f3,32($at)
    # Line 1930
    ldc1	$f2,64($s8)
    cvt.s.d	$f2,$f2
    swc1	$f2,36($at)
    # Line 1931
    ldc1	$f1,72($s8)
    cvt.s.d	$f1,$f1
    swc1	$f1,40($at)
    # Line 1932
    ldc1	$f0,80($s8)
    cvt.s.d	$f0,$f0
    swc1	$f0,44($at)
    # Line 1933
    ldc1	$f4,88($s8)
    cvt.s.d	$f4,$f4
    swc1	$f4,48($at)
    # Line 1934
    ldc1	$f3,96($s8)
    cvt.s.d	$f3,$f3
    swc1	$f3,52($at)
    # Line 1935
    ldc1	$f2,104($s8)
    cvt.s.d	$f2,$f2
    swc1	$f2,56($at)
    # Line 1936
    ldc1	$f1,112($s8)
    cvt.s.d	$f1,$f1
    swc1	$f1,60($at)
    # Line 1937
    ldc1	$f0,120($s8)
    cvt.s.d	$f0,$f0
    ld	$gp,8($sp)
    # Line 1938
    addiu	$a2,$v0,-17
    addiu	$s8,$at,68
    # Line 1937
    swc1	$f0,64($at)
    # Line 1938
    sw	$a2,4128($zero)
    sw	$s8,4136($zero)
    lw	$a1,4140($zero)
    # Line 1939
    ld	$s8,0($sp)
    addiu	$sp,$sp,48
    # Line 1938
    addiu	$a1,$a1,17
    # Line 1939
    jr	$ra
    # Line 1938
    sw	$a1,4140($zero)
.L0da784b0:
    # Line 1920
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da783b8
    ld	$ra,16($sp)
.end __glMgrlc_LoadMatrixd

# Function: __glMgrlc_LoadIdentity
# Declared: Line 1942 (Source lines: 1943-1947)
# Address: 0x0da784c8 - 0x0da78530 (Size: 104 bytes, Frame: 16)
.globl __glMgrlc_LoadIdentity
.ent __glMgrlc_LoadIdentity
__glMgrlc_LoadIdentity:
    # Line 1943
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # Line 1944
    lw	$v0,4128($zero)
    # Line 1943
    lui	$at,0x18
    addiu	$at,$at,25040
    # Line 1944
    blez	$v0,.L0da78518
    # Line 1943
    addu	$gp,$t9,$at
.L0da784e4:
    ld	$gp,0($sp)
    # Line 1944
    lw	$v1,4136($zero)
    # Line 1946
    addiu	$a0,$v0,-1
    # Line 1945
    li	$at,11264
    # Line 1946
    addiu	$a1,$v1,4
    # Line 1945
    sw	$at,0($v1)
    # Line 1946
    sw	$a1,4136($zero)
    lw	$v1,4140($zero)
    sw	$a0,4128($zero)
    # Line 1947
    addiu	$sp,$sp,16
    # Line 1946
    addiu	$v0,$v1,1
    # Line 1947
    jr	$ra
    # Line 1946
    sw	$v0,4140($zero)
.L0da78518:
    # Line 1944
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,8($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da784e4
    ld	$ra,8($sp)
.end __glMgrlc_LoadIdentity

# Function: __glMgrlc_Frustum
# Declared: Line 1950 (Source lines: 1953-1975)
# Address: 0x0da78530 - 0x0da78688 (Size: 344 bytes, Frame: 240)
.globl __glMgrlc_Frustum
.ent __glMgrlc_Frustum
__glMgrlc_Frustum:
    # Line 1953
    mov.d	$f4,$f13
    mov.d	$f5,$f12
    addiu	$sp,$sp,-112
    sdc1	$f24,8($sp)
    mov.d	$f24,$f17
    sdc1	$f26,24($sp)
    sd	$gp,32($sp)
    # Line 1960
    sub.d	$f0,$f13,$f12
    # Line 1953
    lui	$at,0x18
    addiu	$at,$at,24936
    addu	$gp,$t9,$at
    # Line 1960
    cvt.s.d	$f0,$f0
    mtc1	$zero,$f6
    # Line 1953
    mov.d	$f26,$f16
    sdc1	$f20,16($sp)
    # Line 1960
    c.eq.s	$f0,$f6
    # Line 1953
    mov.d	$f20,$f15
    sdc1	$f22,0($sp)
    # Line 1960
    bc1t	.L0da78630
    # Line 1953
    mov.d	$f22,$f14
    # Line 1960
    sub.d	$f1,$f20,$f22
    cvt.s.d	$f1,$f1
    c.eq.s	$f1,$f6
    nop
    bc1t	.L0da78634
    # Line 1962
    nop	# was lw $t9, -29344($gp) # &__glsplc_InvalidValue
    # Line 1960
    sub.d	$f2,$f24,$f26
    cvt.s.d	$f2,$f2
    c.eq.s	$f2,$f6
    nop
    bc1t	.L0da78634
    # Line 1962
    nop	# was lw $t9, -29344($gp) # &__glsplc_InvalidValue
    # Line 1966
    lw	$v0,4128($zero)
    slti	$v1,$v0,7
    bnez	$v1,.L0da78660
    # Line 1970
    cvt.s.d	$f22,$f22
.L0da785c0:
    # Line 1969
    cvt.s.d	$f0,$f4
    # Line 1971
    cvt.s.d	$f6,$f20
    ld	$gp,32($sp)
    # Line 1975
    ldc1	$f20,16($sp)
    # Line 1973
    cvt.s.d	$f3,$f24
    # Line 1975
    ldc1	$f24,8($sp)
    # Line 1966
    lw	$v1,4136($zero)
    # Line 1972
    cvt.s.d	$f4,$f26
    # Line 1975
    ldc1	$f26,24($sp)
    # Line 1974
    addiu	$a1,$v0,-7
    # Line 1970
    swc1	$f22,12($v1)
    # Line 1975
    ldc1	$f22,0($sp)
    # Line 1974
    addiu	$at,$v1,28
    # Line 1967
    li	$a0,13336
    sw	$a0,0($v1)
    # Line 1968
    cvt.s.d	$f1,$f5
    # Line 1973
    swc1	$f3,24($v1)
    # Line 1972
    swc1	$f4,20($v1)
    # Line 1971
    swc1	$f6,16($v1)
    # Line 1969
    swc1	$f0,8($v1)
    # Line 1968
    swc1	$f1,4($v1)
    # Line 1974
    sw	$at,4136($zero)
    lw	$a0,4140($zero)
    sw	$a1,4128($zero)
    # Line 1975
    addiu	$sp,$sp,112
    # Line 1974
    addiu	$a0,$a0,7
    # Line 1975
    jr	$ra
    # Line 1974
    sw	$a0,4140($zero)
.L0da78630:
    # Line 1962
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
.L0da78634:
    sd	$ra,56($sp)
    jal	__glsplc_InvalidValue
    nop
    ld	$gp,32($sp)
    # Line 1963
    ldc1	$f20,16($sp)
    ldc1	$f22,0($sp)
    ld	$ra,56($sp)
    ldc1	$f24,8($sp)
    ldc1	$f26,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da78660:
    sdc1	$f4,48($sp)
    # Line 1966
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f5,40($sp)
    sd	$ra,56($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f5,40($sp)
    ldc1	$f4,48($sp)
    b	.L0da785c0
    ld	$ra,56($sp)
.end __glMgrlc_Frustum

# Function: __glMgrlc_Ortho
# Declared: Line 1978 (Source lines: 1980-2001)
# Address: 0x0da78688 - 0x0da787d4 (Size: 332 bytes, Frame: 240)
.globl __glMgrlc_Ortho
.ent __glMgrlc_Ortho
__glMgrlc_Ortho:
    # Line 1980
    mov.d	$f4,$f13
    mov.d	$f5,$f12
    addiu	$sp,$sp,-112
    sdc1	$f24,8($sp)
    mov.d	$f24,$f17
    sdc1	$f26,24($sp)
    # Line 1986
    sub.d	$f0,$f13,$f12
    sd	$gp,32($sp)
    # Line 1980
    lui	$at,0x18
    addiu	$at,$at,24592
    addu	$gp,$t9,$at
    # Line 1986
    dmtc1	$zero,$f6
    # Line 1980
    mov.d	$f26,$f16
    sdc1	$f20,16($sp)
    # Line 1986
    c.eq.d	$f0,$f6
    # Line 1980
    mov.d	$f20,$f15
    sdc1	$f22,0($sp)
    # Line 1986
    bc1t	.L0da7877c
    # Line 1980
    mov.d	$f22,$f14
    # Line 1986
    sub.d	$f1,$f20,$f22
    c.eq.d	$f1,$f6
    nop
    bc1t	.L0da78780
    # Line 1988
    nop	# was lw $t9, -29344($gp) # &__glsplc_InvalidValue
    # Line 1986
    sub.d	$f2,$f24,$f26
    c.eq.d	$f2,$f6
    nop
    bc1t	.L0da78780
    # Line 1988
    nop	# was lw $t9, -29344($gp) # &__glsplc_InvalidValue
    # Line 1992
    lw	$v0,4128($zero)
    slti	$v1,$v0,7
    bnez	$v1,.L0da787ac
    # Line 1996
    cvt.s.d	$f22,$f22
.L0da7870c:
    # Line 1995
    cvt.s.d	$f0,$f4
    # Line 1997
    cvt.s.d	$f6,$f20
    ld	$gp,32($sp)
    # Line 2001
    ldc1	$f20,16($sp)
    # Line 1999
    cvt.s.d	$f3,$f24
    # Line 2001
    ldc1	$f24,8($sp)
    # Line 1992
    lw	$v1,4136($zero)
    # Line 1998
    cvt.s.d	$f4,$f26
    # Line 2001
    ldc1	$f26,24($sp)
    # Line 2000
    addiu	$a1,$v0,-7
    # Line 1996
    swc1	$f22,12($v1)
    # Line 2001
    ldc1	$f22,0($sp)
    # Line 2000
    addiu	$at,$v1,28
    # Line 1993
    li	$a0,13592
    sw	$a0,0($v1)
    # Line 1994
    cvt.s.d	$f1,$f5
    # Line 1999
    swc1	$f3,24($v1)
    # Line 1998
    swc1	$f4,20($v1)
    # Line 1997
    swc1	$f6,16($v1)
    # Line 1995
    swc1	$f0,8($v1)
    # Line 1994
    swc1	$f1,4($v1)
    # Line 2000
    sw	$at,4136($zero)
    lw	$a0,4140($zero)
    sw	$a1,4128($zero)
    # Line 2001
    addiu	$sp,$sp,112
    # Line 2000
    addiu	$a0,$a0,7
    # Line 2001
    jr	$ra
    # Line 2000
    sw	$a0,4140($zero)
.L0da7877c:
    # Line 1988
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
.L0da78780:
    sd	$ra,56($sp)
    jal	__glsplc_InvalidValue
    nop
    ld	$gp,32($sp)
    # Line 1989
    ldc1	$f20,16($sp)
    ldc1	$f22,0($sp)
    ld	$ra,56($sp)
    ldc1	$f24,8($sp)
    ldc1	$f26,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da787ac:
    sdc1	$f4,48($sp)
    # Line 1992
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f5,40($sp)
    sd	$ra,56($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f5,40($sp)
    ldc1	$f4,48($sp)
    b	.L0da7870c
    ld	$ra,56($sp)
.end __glMgrlc_Ortho

# Function: __glMgrlc_PopMatrix
# Declared: Line 2004 (Source lines: 2005-2009)
# Address: 0x0da787d4 - 0x0da7883c (Size: 104 bytes, Frame: 16)
.globl __glMgrlc_PopMatrix
.ent __glMgrlc_PopMatrix
__glMgrlc_PopMatrix:
    # Line 2005
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # Line 2006
    lw	$v0,4128($zero)
    # Line 2005
    lui	$at,0x18
    addiu	$at,$at,24260
    # Line 2006
    blez	$v0,.L0da78824
    # Line 2005
    addu	$gp,$t9,$at
.L0da787f0:
    ld	$gp,0($sp)
    # Line 2006
    lw	$v1,4136($zero)
    # Line 2008
    addiu	$a0,$v0,-1
    # Line 2007
    li	$at,11776
    # Line 2008
    addiu	$a1,$v1,4
    # Line 2007
    sw	$at,0($v1)
    # Line 2008
    sw	$a1,4136($zero)
    lw	$v1,4140($zero)
    sw	$a0,4128($zero)
    # Line 2009
    addiu	$sp,$sp,16
    # Line 2008
    addiu	$v0,$v1,1
    # Line 2009
    jr	$ra
    # Line 2008
    sw	$v0,4140($zero)
.L0da78824:
    # Line 2006
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,8($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da787f0
    ld	$ra,8($sp)
.end __glMgrlc_PopMatrix

# Function: __glMgrlc_PushMatrix
# Declared: Line 2012 (Source lines: 2013-2017)
# Address: 0x0da7883c - 0x0da788a4 (Size: 104 bytes, Frame: 16)
.globl __glMgrlc_PushMatrix
.ent __glMgrlc_PushMatrix
__glMgrlc_PushMatrix:
    # Line 2013
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    # Line 2014
    lw	$v0,4128($zero)
    # Line 2013
    lui	$at,0x18
    addiu	$at,$at,24156
    # Line 2014
    blez	$v0,.L0da7888c
    # Line 2013
    addu	$gp,$t9,$at
.L0da78858:
    ld	$gp,0($sp)
    # Line 2014
    lw	$v1,4136($zero)
    # Line 2016
    addiu	$a0,$v0,-1
    # Line 2015
    li	$at,12032
    # Line 2016
    addiu	$a1,$v1,4
    # Line 2015
    sw	$at,0($v1)
    # Line 2016
    sw	$a1,4136($zero)
    lw	$v1,4140($zero)
    sw	$a0,4128($zero)
    # Line 2017
    addiu	$sp,$sp,16
    # Line 2016
    addiu	$v0,$v1,1
    # Line 2017
    jr	$ra
    # Line 2016
    sw	$v0,4140($zero)
.L0da7888c:
    # Line 2014
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$ra,8($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da78858
    ld	$ra,8($sp)
.end __glMgrlc_PushMatrix

# Function: __glMgrlc_Rotated
# Declared: Line 2020 (Source lines: 2021-2029)
# Address: 0x0da788a4 - 0x0da78960 (Size: 188 bytes, Frame: 208)
.globl __glMgrlc_Rotated
.ent __glMgrlc_Rotated
__glMgrlc_Rotated:
    # Line 2021
    mov.d	$f6,$f15
    mov.d	$f5,$f14
    mov.d	$f4,$f13
    addiu	$sp,$sp,-80
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$gp,8($sp)
    # Line 2022
    lw	$v0,4128($zero)
    # Line 2021
    lui	$v1,0x18
    addiu	$v1,$v1,24052
    # Line 2022
    slti	$at,$v0,5
    bnez	$at,.L0da78930
    # Line 2021
    addu	$gp,$t9,$v1
.L0da788d8:
    # Line 2024
    cvt.s.d	$f3,$f30
    ld	$gp,8($sp)
    # Line 2029
    ldc1	$f30,0($sp)
    # Line 2026
    cvt.s.d	$f1,$f5
    # Line 2022
    lw	$v1,4136($zero)
    # Line 2028
    addiu	$a1,$v0,-5
    # Line 2027
    cvt.s.d	$f0,$f6
    # Line 2028
    addiu	$at,$v1,20
    # Line 2023
    li	$a0,12304
    # Line 2025
    cvt.s.d	$f2,$f4
    # Line 2023
    sw	$a0,0($v1)
    # Line 2027
    swc1	$f0,16($v1)
    # Line 2026
    swc1	$f1,12($v1)
    # Line 2025
    swc1	$f2,8($v1)
    # Line 2024
    swc1	$f3,4($v1)
    # Line 2028
    sw	$at,4136($zero)
    lw	$a0,4140($zero)
    sw	$a1,4128($zero)
    # Line 2029
    addiu	$sp,$sp,80
    # Line 2028
    addiu	$a0,$a0,5
    # Line 2029
    jr	$ra
    # Line 2028
    sw	$a0,4140($zero)
.L0da78930:
    sdc1	$f4,32($sp)
    sdc1	$f5,24($sp)
    # Line 2022
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f6,16($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f6,16($sp)
    ldc1	$f5,24($sp)
    ldc1	$f4,32($sp)
    b	.L0da788d8
    ld	$ra,40($sp)
.end __glMgrlc_Rotated

# Function: __glMgrlc_Rotatef
# Declared: Line 2032 (Source lines: 2033-2041)
# Address: 0x0da78960 - 0x0da78a0c (Size: 172 bytes, Frame: 208)
.globl __glMgrlc_Rotatef
.ent __glMgrlc_Rotatef
__glMgrlc_Rotatef:
    # Line 2033
    mov.s	$f6,$f15
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-80
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 2034
    lw	$v0,4128($zero)
    # Line 2033
    lui	$v1,0x18
    addiu	$v1,$v1,23864
    # Line 2034
    slti	$at,$v0,5
    bnez	$at,.L0da789dc
    # Line 2033
    addu	$gp,$t9,$v1
.L0da78994:
    # Line 2034
    lw	$v1,4136($zero)
    ld	$gp,8($sp)
    # Line 2040
    addiu	$a1,$v0,-5
    # Line 2036
    swc1	$f30,4($v1)
    # Line 2041
    ldc1	$f30,0($sp)
    # Line 2040
    addiu	$at,$v1,20
    # Line 2035
    li	$a0,12304
    # Line 2039
    swc1	$f6,16($v1)
    # Line 2038
    swc1	$f5,12($v1)
    # Line 2037
    swc1	$f4,8($v1)
    # Line 2035
    sw	$a0,0($v1)
    # Line 2040
    sw	$at,4136($zero)
    lw	$a0,4140($zero)
    sw	$a1,4128($zero)
    # Line 2041
    addiu	$sp,$sp,80
    # Line 2040
    addiu	$a0,$a0,5
    # Line 2041
    jr	$ra
    # Line 2040
    sw	$a0,4140($zero)
.L0da789dc:
    sdc1	$f4,32($sp)
    sdc1	$f5,24($sp)
    # Line 2034
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f6,16($sp)
    sd	$ra,40($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f6,16($sp)
    ldc1	$f5,24($sp)
    ldc1	$f4,32($sp)
    b	.L0da78994
    ld	$ra,40($sp)
.end __glMgrlc_Rotatef

# Function: __glMgrlc_Scaled
# Declared: Line 2044 (Source lines: 2045-2052)
# Address: 0x0da78a0c - 0x0da78ab4 (Size: 168 bytes, Frame: 208)
.globl __glMgrlc_Scaled
.ent __glMgrlc_Scaled
__glMgrlc_Scaled:
    # Line 2045
    mov.d	$f5,$f14
    mov.d	$f4,$f13
    addiu	$sp,$sp,-80
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$gp,8($sp)
    # Line 2046
    lw	$v0,4128($zero)
    # Line 2045
    lui	$v1,0x18
    addiu	$v1,$v1,23692
    # Line 2046
    slti	$at,$v0,4
    bnez	$at,.L0da78a8c
    # Line 2045
    addu	$gp,$t9,$v1
.L0da78a3c:
    ld	$gp,8($sp)
    # Line 2048
    cvt.s.d	$f2,$f30
    # Line 2052
    ldc1	$f30,0($sp)
    # Line 2046
    lw	$v1,4136($zero)
    # Line 2050
    cvt.s.d	$f0,$f5
    # Line 2051
    addiu	$a1,$v0,-4
    addiu	$at,$v1,16
    # Line 2049
    cvt.s.d	$f1,$f4
    # Line 2047
    li	$a0,12556
    sw	$a0,0($v1)
    # Line 2050
    swc1	$f0,12($v1)
    # Line 2049
    swc1	$f1,8($v1)
    # Line 2048
    swc1	$f2,4($v1)
    # Line 2051
    sw	$at,4136($zero)
    lw	$a0,4140($zero)
    sw	$a1,4128($zero)
    # Line 2052
    addiu	$sp,$sp,80
    # Line 2051
    addiu	$a0,$a0,4
    # Line 2052
    jr	$ra
    # Line 2051
    sw	$a0,4140($zero)
.L0da78a8c:
    sdc1	$f4,24($sp)
    # Line 2046
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f5,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f5,16($sp)
    ldc1	$f4,24($sp)
    b	.L0da78a3c
    ld	$ra,32($sp)
.end __glMgrlc_Scaled

# Function: __glMgrlc_Scalef
# Declared: Line 2055 (Source lines: 2056-2063)
# Address: 0x0da78ab4 - 0x0da78b50 (Size: 156 bytes, Frame: 208)
.globl __glMgrlc_Scalef
.ent __glMgrlc_Scalef
__glMgrlc_Scalef:
    # Line 2056
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-80
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 2057
    lw	$v0,4128($zero)
    # Line 2056
    lui	$v1,0x18
    addiu	$v1,$v1,23524
    # Line 2057
    slti	$at,$v0,4
    bnez	$at,.L0da78b28
    # Line 2056
    addu	$gp,$t9,$v1
.L0da78ae4:
    # Line 2057
    lw	$v1,4136($zero)
    ld	$gp,8($sp)
    # Line 2062
    addiu	$a1,$v0,-4
    # Line 2059
    swc1	$f30,4($v1)
    # Line 2063
    ldc1	$f30,0($sp)
    # Line 2062
    addiu	$at,$v1,16
    # Line 2058
    li	$a0,12556
    # Line 2061
    swc1	$f5,12($v1)
    # Line 2060
    swc1	$f4,8($v1)
    # Line 2058
    sw	$a0,0($v1)
    # Line 2062
    sw	$at,4136($zero)
    lw	$a0,4140($zero)
    sw	$a1,4128($zero)
    # Line 2063
    addiu	$sp,$sp,80
    # Line 2062
    addiu	$a0,$a0,4
    # Line 2063
    jr	$ra
    # Line 2062
    sw	$a0,4140($zero)
.L0da78b28:
    sdc1	$f4,24($sp)
    # Line 2057
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f5,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f5,16($sp)
    ldc1	$f4,24($sp)
    b	.L0da78ae4
    ld	$ra,32($sp)
.end __glMgrlc_Scalef

# Function: __glMgrlc_Translated
# Declared: Line 2066 (Source lines: 2067-2074)
# Address: 0x0da78b50 - 0x0da78bf8 (Size: 168 bytes, Frame: 208)
.globl __glMgrlc_Translated
.ent __glMgrlc_Translated
__glMgrlc_Translated:
    # Line 2067
    mov.d	$f5,$f14
    mov.d	$f4,$f13
    addiu	$sp,$sp,-80
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$gp,8($sp)
    # Line 2068
    lw	$v0,4128($zero)
    # Line 2067
    lui	$v1,0x18
    addiu	$v1,$v1,23368
    # Line 2068
    slti	$at,$v0,4
    bnez	$at,.L0da78bd0
    # Line 2067
    addu	$gp,$t9,$v1
.L0da78b80:
    ld	$gp,8($sp)
    # Line 2070
    cvt.s.d	$f2,$f30
    # Line 2074
    ldc1	$f30,0($sp)
    # Line 2068
    lw	$v1,4136($zero)
    # Line 2072
    cvt.s.d	$f0,$f5
    # Line 2073
    addiu	$a1,$v0,-4
    addiu	$at,$v1,16
    # Line 2071
    cvt.s.d	$f1,$f4
    # Line 2069
    li	$a0,12812
    sw	$a0,0($v1)
    # Line 2072
    swc1	$f0,12($v1)
    # Line 2071
    swc1	$f1,8($v1)
    # Line 2070
    swc1	$f2,4($v1)
    # Line 2073
    sw	$at,4136($zero)
    lw	$a0,4140($zero)
    sw	$a1,4128($zero)
    # Line 2074
    addiu	$sp,$sp,80
    # Line 2073
    addiu	$a0,$a0,4
    # Line 2074
    jr	$ra
    # Line 2073
    sw	$a0,4140($zero)
.L0da78bd0:
    sdc1	$f4,24($sp)
    # Line 2068
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f5,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f5,16($sp)
    ldc1	$f4,24($sp)
    b	.L0da78b80
    ld	$ra,32($sp)
.end __glMgrlc_Translated

# Function: __glMgrlc_Translatef
# Declared: Line 2078 (Source lines: 2079-2086)
# Address: 0x0da78bf8 - 0x0da78c94 (Size: 156 bytes, Frame: 208)
.globl __glMgrlc_Translatef
.ent __glMgrlc_Translatef
__glMgrlc_Translatef:
    # Line 2079
    mov.s	$f5,$f14
    mov.s	$f4,$f13
    addiu	$sp,$sp,-80
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$gp,8($sp)
    # Line 2080
    lw	$v0,4128($zero)
    # Line 2079
    lui	$v1,0x18
    addiu	$v1,$v1,23200
    # Line 2080
    slti	$at,$v0,4
    bnez	$at,.L0da78c6c
    # Line 2079
    addu	$gp,$t9,$v1
.L0da78c28:
    # Line 2080
    lw	$v1,4136($zero)
    ld	$gp,8($sp)
    # Line 2085
    addiu	$a1,$v0,-4
    # Line 2082
    swc1	$f30,4($v1)
    # Line 2086
    ldc1	$f30,0($sp)
    # Line 2085
    addiu	$at,$v1,16
    # Line 2081
    li	$a0,12812
    # Line 2084
    swc1	$f5,12($v1)
    # Line 2083
    swc1	$f4,8($v1)
    # Line 2081
    sw	$a0,0($v1)
    # Line 2085
    sw	$at,4136($zero)
    lw	$a0,4140($zero)
    sw	$a1,4128($zero)
    # Line 2086
    addiu	$sp,$sp,80
    # Line 2085
    addiu	$a0,$a0,4
    # Line 2086
    jr	$ra
    # Line 2085
    sw	$a0,4140($zero)
.L0da78c6c:
    sdc1	$f4,24($sp)
    # Line 2080
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sdc1	$f5,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f5,16($sp)
    ldc1	$f4,24($sp)
    b	.L0da78c28
    ld	$ra,32($sp)
.end __glMgrlc_Translatef

# Function: __glMgrlc_Viewport
# Declared: Line 2089 (Source lines: 2090-2111)
# Address: 0x0da78c94 - 0x0da78d94 (Size: 256 bytes, Frame: 208)
.globl __glMgrlc_Viewport
.ent __glMgrlc_Viewport
__glMgrlc_Viewport:
    # Line 2091
    lw	$a6,__glCurrentContext
    # Line 2090
    addiu	$sp,$sp,-80
    sd	$s0,16($sp)
    move	$s0,$a3
    sd	$s1,8($sp)
    move	$s1,$a2
    sd	$gp,0($sp)
    lui	$at,0x18
    addiu	$at,$at,23044
    # Line 2093
    bltz	$a2,.L0da78d6c
    # Line 2090
    addu	$gp,$t9,$at
    # Line 2093
    bltz	$s0,.L0da78d70
    # Line 2095
    nop	# was lw $t9, -29344($gp) # &__glsplc_InvalidValue
    # Line 2096
    lw	$v0,3344($a6)
    slt	$v1,$v0,$s0
    beqz	$v1,.L0da78ce0
    # Line 2100
    slt	$a4,$v0,$s1
    move	$s0,$v0
    slt	$a4,$v0,$s1
.L0da78ce0:
    beqzl	$a4,.L0da78cf0
    # Line 2104
    lw	$v0,4128($zero)
    # Line 2102
    move	$s1,$v0
    # Line 2104
    lw	$v0,4128($zero)
.L0da78cf0:
    slti	$a5,$v0,5
    bnezl	$a5,.L0da78d48
    sd	$a1,40($sp)
.L0da78cfc:
    lw	$v1,4136($zero)
    ld	$gp,0($sp)
    # Line 2108
    sw	$s1,12($v1)
    # Line 2110
    addiu	$s1,$v0,-5
    addiu	$at,$v1,20
    # Line 2105
    li	$a4,13072
    # Line 2109
    sw	$s0,16($v1)
    # Line 2107
    sw	$a1,8($v1)
    # Line 2106
    sw	$a0,4($v1)
    # Line 2105
    sw	$a4,0($v1)
    # Line 2110
    sw	$at,4136($zero)
    lw	$s0,4140($zero)
    sw	$s1,4128($zero)
    # Line 2111
    ld	$s1,8($sp)
    # Line 2110
    addiu	$s0,$s0,5
    sw	$s0,4140($zero)
    # Line 2111
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da78d48:
    # Line 2104
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    sd	$a0,32($sp)
    sd	$ra,24($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a0,32($sp)
    ld	$a1,40($sp)
    b	.L0da78cfc
    ld	$ra,24($sp)
.L0da78d6c:
    # Line 2095
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
.L0da78d70:
    sd	$ra,24($sp)
    jal	__glsplc_InvalidValue
    nop
    ld	$gp,0($sp)
    # Line 2096
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glMgrlc_Viewport

# Function: __glMgrlc_MatrixMode
# Declared: Line 2114 (Source lines: 2115-2127)
# Address: 0x0da78d94 - 0x0da78e50 (Size: 188 bytes, Frame: 48)
.globl __glMgrlc_MatrixMode
.ent __glMgrlc_MatrixMode
__glMgrlc_MatrixMode:
    # Line 2116
    sltiu	$at,$a0,5888
    # Line 2115
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    lui	$v0,0x18
    addiu	$v0,$v0,22788
    # Line 2116
    bnez	$at,.L0da78dc0
    # Line 2115
    addu	$gp,$t9,$v0
    # Line 2116
    sltiu	$v1,$s0,5891
    bnez	$v1,.L0da78df0
.L0da78dc0:
    li	$a1,6144
    beql	$s0,$a1,.L0da78df4
    # Line 2123
    lw	$v0,4128($zero)
    # Line 2119
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,16($sp)
    jal	__glsplc_InvalidEnum
    nop
    # Line 2120
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da78df0:
    # Line 2123
    lw	$v0,4128($zero)
.L0da78df4:
    slti	$a2,$v0,2
    bnez	$a2,.L0da78e3c
    nop	# was lw $t9, -29228($gp) # &__glSPDlistSpace
.L0da78e00:
    ld	$gp,0($sp)
    lw	$a1,4136($zero)
    # Line 2126
    addiu	$at,$v0,-2
    # Line 2124
    li	$a2,10756
    sw	$a2,0($a1)
    # Line 2125
    sw	$s0,4($a1)
    # Line 2126
    addiu	$v1,$a1,8
    lw	$s0,4140($zero)
    sw	$v1,4136($zero)
    sw	$at,4128($zero)
    addiu	$s0,$s0,2
    sw	$s0,4140($zero)
    # Line 2127
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da78e3c:
    sd	$ra,16($sp)
    # Line 2123
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da78e00
    ld	$ra,16($sp)
.end __glMgrlc_MatrixMode

# Function: __glMgrlc_TexImage3DEXT
# Declared: Line 2142 (Source lines: 2147-2219)
# Address: 0x0da78e50 - 0x0da791e0 (Size: 912 bytes, Frame: 192)
.globl __glMgrlc_TexImage3DEXT
.ent __glMgrlc_TexImage3DEXT
__glMgrlc_TexImage3DEXT:
    # Line 2150
    lw	$t2,__glCurrentContext
    # Line 2147
    move	$v0,$a2
    # Line 2150
    li	$at,0x8070
    # Line 2147
    addiu	$sp,$sp,-192
    sd	$s4,80($sp)
    move	$s4,$a5
    sd	$s3,72($sp)
    move	$s3,$a4
    sd	$s2,104($sp)
    move	$s2,$a3
    sd	$s0,88($sp)
    move	$s0,$a7
    sd	$s1,64($sp)
    move	$s1,$a6
    sd	$gp,96($sp)
    lui	$v1,0x18
    addiu	$v1,$v1,22600
    # Line 2150
    beq	$a0,$at,.L0da79184
    # Line 2147
    addu	$gp,$t9,$v1
    # Line 2167
    sltiu	$v1,$s0,6405
    # Line 2159
    bltz	$s1,.L0da790b8
    # Line 2167
    sltiu	$at,$s0,6408
    # Line 2159
    slti	$t0,$s1,2
    beqz	$t0,.L0da790bc
    # Line 2160
    nop	# was lw $t9, -29344($gp) # &__glsplc_InvalidValue
    # Line 2163
    bltz	$s2,.L0da7912c
    # Line 2164
    nop	# was lw $t9, -29344($gp) # &__glsplc_InvalidValue
    # Line 2163
    bltz	$s3,.L0da7912c
    # Line 2164
    nop	# was lw $t9, -29344($gp) # &__glsplc_InvalidValue
    # Line 2163
    bltz	$s4,.L0da79128
    # Line 2165
    sltiu	$t1,$s0,6407
    bnezl	$t1,.L0da78fe8
    # Line 2167
    sltiu	$at,$s0,6404
    beqz	$at,.L0da79058
    sltiu	$t0,$s0,6410
.L0da78edc:
    sd	$ra,112($sp)
.L0da78ee0:
    sd	$v0,16($sp)
    sd	$a1,24($sp)
    sd	$a0,32($sp)
    # Line 2182
    la	$t0,sub_0dbf0000
    lw	$a6,196($sp)
    sd	$t2,40($sp)
    addiu	$t0,$t0,-12048
    sd	$a6,56($sp)
    addiu	$a6,$a6,-5120
    sltiu	$v1,$a6,7
    sll	$a6,$a6,0x2
    beqz	$v1,.L0da79010
    addu	$a6,$a6,$t0
    # Line 2197
    move	$a0,$s2
    move	$a1,$s3
    # lw $t9, -26720($gp) # &__glImageSize3D
    move	$a2,$s4
    move	$a3,$s0
    jal	__glImageSize3D
    ld	$a4,56($sp)
    # Line 2200
    li	$a1,208
    # Line 2198
    li	$a2,-4
    addiu	$a0,$v0,3
    # Line 2200
    # lw $t9, -31768($gp) # &__glSPDlalloc
    # Line 2198
    and	$a0,$a0,$a2
    sd	$a0,48($sp)
    # Line 2200
    jal	__glSPDlalloc
    addiu	$a0,$a0,40
    ld	$t0,48($sp)
    # Line 2206
    ld	$v1,16($sp)
    # Line 2200
    beqz	$v0,.L0da79108
    ld	$ra,112($sp)
    # Line 2211
    sw	$s0,28($v0)
    # Line 2210
    sw	$s1,24($v0)
    # Line 2209
    sw	$s4,20($v0)
    # Line 2208
    sw	$s3,16($v0)
    # Line 2207
    sw	$s2,12($v0)
    # Line 2213
    sw	$t0,36($v0)
    # Line 2212
    ld	$t1,56($sp)
    # Line 2206
    sw	$v1,8($v0)
    # Line 2205
    ld	$at,24($sp)
    # Line 2212
    sw	$t1,32($v0)
    # Line 2204
    ld	$t1,32($sp)
    # Line 2205
    sw	$at,4($v0)
    # Line 2213
    blez	$t0,.L0da78fc8
    # Line 2204
    sw	$t1,0($v0)
    # Line 2213
    lw	$a6,204($sp)
    beqz	$a6,.L0da78fc8
    ld	$a0,40($sp)
    # Line 2216
    move	$a1,$s2
    move	$a2,$s3
    move	$a3,$s4
    # lw $t9, -26716($gp) # &__glFillImage3D
    move	$a4,$s0
    ld	$a5,56($sp)
    jal	__glFillImage3D
    addiu	$a7,$v0,40
    ld	$ra,112($sp)
.L0da78fc8:
    ld	$gp,96($sp)
    # Line 2219
    ld	$s0,88($sp)
    ld	$s1,64($sp)
    ld	$s2,104($sp)
    ld	$s3,72($sp)
    ld	$s4,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da78fe8:
    # Line 2167
    bnez	$at,.L0da79040
    sltiu	$at,$s0,6403
    bnez	$v1,.L0da78edc
    sltiu	$t0,$s0,6406
    bnez	$t0,.L0da7915c
    sltiu	$t1,$s0,6407
    beqz	$t1,.L0da79088
    # Line 2180
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0da78ee0
    sd	$ra,112($sp)
.L0da79010:
    # Line 2193
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    ld	$gp,96($sp)
    # Line 2194
    ld	$s0,88($sp)
    ld	$s1,64($sp)
    ld	$s2,104($sp)
    ld	$ra,112($sp)
    ld	$s3,72($sp)
    ld	$s4,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da79040:
    # Line 2167
    bnez	$at,.L0da79078
    sltiu	$v1,$s0,6404
    beqz	$v1,.L0da79088
    # Line 2180
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0da78ee0
    sd	$ra,112($sp)
.L0da79058:
    # Line 2167
    bnez	$t0,.L0da790ec
    sltiu	$t1,$s0,6411
    bnez	$t1,.L0da78edc
    li	$at,0x8000
    beql	$s0,$at,.L0da78ee0
    sd	$ra,112($sp)
    b	.L0da79084
    sd	$ra,112($sp)
.L0da79078:
    li	$v1,6400
    beql	$s0,$v1,.L0da78ee0
    sd	$ra,112($sp)
.L0da79084:
    # Line 2180
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
.L0da79088:
    sd	$ra,112($sp)
    jal	__glsplc_InvalidEnum
    nop
    ld	$gp,96($sp)
    # Line 2181
    ld	$s0,88($sp)
    ld	$s1,64($sp)
    ld	$s2,104($sp)
    ld	$ra,112($sp)
    ld	$s3,72($sp)
    ld	$s4,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da790b8:
    # Line 2160
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
.L0da790bc:
    sd	$ra,112($sp)
    jal	__glsplc_InvalidValue
    nop
    ld	$gp,96($sp)
    # Line 2161
    ld	$s0,88($sp)
    ld	$s1,64($sp)
    ld	$s2,104($sp)
    ld	$ra,112($sp)
    ld	$s3,72($sp)
    ld	$s4,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da790ec:
    # Line 2167
    sltiu	$t0,$s0,6409
    bnez	$t0,.L0da79170
    sltiu	$t1,$s0,6410
    beqz	$t1,.L0da79088
    # Line 2180
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0da78ee0
    sd	$ra,112($sp)
.L0da79108:
    ld	$gp,96($sp)
    # Line 2202
    ld	$s0,88($sp)
    ld	$s1,64($sp)
    ld	$s2,104($sp)
    ld	$s3,72($sp)
    ld	$s4,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da79128:
    # Line 2164
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
.L0da7912c:
    sd	$ra,112($sp)
    jal	__glsplc_InvalidValue
    nop
    ld	$gp,96($sp)
    # Line 2165
    ld	$s0,88($sp)
    ld	$s1,64($sp)
    ld	$s2,104($sp)
    ld	$ra,112($sp)
    ld	$s3,72($sp)
    ld	$s4,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da7915c:
    # Line 2167
    li	$at,6405
    bne	$s0,$at,.L0da79088
    # Line 2180
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0da78ee0
    sd	$ra,112($sp)
.L0da79170:
    # Line 2167
    li	$v1,6408
    bne	$s0,$v1,.L0da79088
    # Line 2180
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0da78ee0
    sd	$ra,112($sp)
.L0da79184:
    # Line 2153
    lw	$at,196($sp)
    sw	$at,4($sp)
    sd	$ra,112($sp)
    lw	$ra,204($sp)
    sw	$ra,12($sp)
    move	$a2,$v0
    lw	$t9,5640($t2)
    move	$a3,$s2
    move	$a4,$s3
    lw	$t9,784($t9)
    move	$a5,$s4
    move	$a6,$s1
    jal	__glsplc_InvalidEnum
    move	$a7,$s0
    ld	$gp,96($sp)
    # Line 2156
    ld	$s0,88($sp)
    ld	$s1,64($sp)
    ld	$s2,104($sp)
    ld	$ra,112($sp)
    ld	$s3,72($sp)
    ld	$s4,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glMgrlc_TexImage3DEXT

# Function: __glMgrlc_TexSubImage3DEXT
# Declared: Line 2222 (Source lines: 2226-2288)
# Address: 0x0da791e0 - 0x0da79498 (Size: 696 bytes, Frame: 176)
.globl __glMgrlc_TexSubImage3DEXT
.ent __glMgrlc_TexSubImage3DEXT
__glMgrlc_TexSubImage3DEXT:
    # Line 2229
    lw	$t3,__glCurrentContext
    # Line 2226
    move	$t2,$a4
    move	$v0,$a5
    addiu	$sp,$sp,-176
    sd	$s2,72($sp)
    move	$s2,$a7
    sd	$s1,80($sp)
    move	$s1,$a6
    sd	$gp,88($sp)
    lui	$at,0x18
    addiu	$at,$at,21688
    # Line 2231
    bltz	$a5,.L0da79448
    # Line 2226
    addu	$gp,$t9,$at
    # Line 2231
    bltz	$s1,.L0da7944c
    # Line 2232
    nop	# was lw $t9, -29344($gp) # &__glsplc_InvalidValue
    # Line 2231
    bltz	$s2,.L0da7944c
    # Line 2232
    nop	# was lw $t9, -29344($gp) # &__glsplc_InvalidValue
    sd	$s0,104($sp)
    # Line 2233
    lw	$s0,180($sp)
    sltiu	$v1,$s0,6407
    bnez	$v1,.L0da79260
    # Line 2235
    sltiu	$t0,$s0,6408
    bnez	$t0,.L0da792a0
    sltiu	$t1,$s0,6410
    bnez	$t1,.L0da79414
    sltiu	$at,$s0,6411
    bnez	$at,.L0da792a0
    li	$v1,0x8000
    beql	$s0,$v1,.L0da792a4
    sd	$ra,96($sp)
    b	.L0da793ec
    sd	$ra,96($sp)
.L0da79260:
    sltiu	$t0,$s0,6404
    bnez	$t0,.L0da7928c
    sltiu	$t1,$s0,6405
    bnez	$t1,.L0da792a0
    sltiu	$at,$s0,6406
    bnez	$at,.L0da79470
    sltiu	$v1,$s0,6407
    beqz	$v1,.L0da793f0
    # Line 2248
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0da792a4
    sd	$ra,96($sp)
.L0da7928c:
    # Line 2235
    sltiu	$t0,$s0,6403
    bnez	$t0,.L0da793e0
    sltiu	$t1,$s0,6404
    beqz	$t1,.L0da793f0
    # Line 2248
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
.L0da792a0:
    sd	$ra,96($sp)
.L0da792a4:
    sd	$v0,8($sp)
    sd	$t2,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a0,40($sp)
    sd	$a1,48($sp)
    # Line 2250
    la	$t0,sub_0dbf0000
    lw	$a6,188($sp)
    sd	$t3,56($sp)
    addiu	$t0,$t0,-12016
    sd	$a6,64($sp)
    addiu	$a6,$a6,-5120
    sltiu	$at,$a6,7
    sll	$a6,$a6,0x2
    beqz	$at,.L0da793bc
    addu	$a6,$a6,$t0
    ld	$a0,8($sp)
    # Line 2265
    move	$a1,$s1
    # lw $t9, -26720($gp) # &__glImageSize3D
    move	$a2,$s2
    move	$a3,$s0
    jal	__glImageSize3D
    ld	$a4,64($sp)
    # Line 2268
    li	$a1,209
    # Line 2266
    li	$a2,-4
    addiu	$a0,$v0,3
    # Line 2268
    # lw $t9, -31768($gp) # &__glSPDlalloc
    # Line 2266
    and	$a0,$a0,$a2
    sd	$a0,0($sp)
    # Line 2268
    jal	__glSPDlalloc
    addiu	$a0,$a0,44
    ld	$ra,96($sp)
    # Line 2276
    ld	$at,16($sp)
    # Line 2275
    ld	$t1,32($sp)
    # Line 2268
    beqz	$v0,.L0da79430
    ld	$a1,8($sp)
    # Line 2280
    sw	$s0,32($v0)
    # Line 2279
    sw	$s2,28($v0)
    # Line 2278
    sw	$s1,24($v0)
    # Line 2277
    sw	$a1,20($v0)
    # Line 2275
    sw	$t1,12($v0)
    # Line 2272
    ld	$t1,40($sp)
    ld	$t0,0($sp)
    # Line 2276
    sw	$at,16($v0)
    # Line 2273
    ld	$at,48($sp)
    # Line 2281
    ld	$v1,64($sp)
    # Line 2282
    sw	$t0,40($v0)
    # Line 2273
    sw	$at,4($v0)
    # Line 2281
    sw	$v1,36($v0)
    # Line 2274
    ld	$v1,24($sp)
    # Line 2272
    sw	$t1,0($v0)
    # Line 2282
    blez	$t0,.L0da793a4
    # Line 2274
    sw	$v1,8($v0)
    # Line 2282
    lw	$a6,196($sp)
    beqz	$a6,.L0da793a4
    ld	$a0,56($sp)
    # Line 2285
    move	$a2,$s1
    move	$a3,$s2
    # lw $t9, -26716($gp) # &__glFillImage3D
    move	$a4,$s0
    ld	$a5,64($sp)
    jal	__glFillImage3D
    addiu	$a7,$v0,44
    ld	$ra,96($sp)
.L0da793a4:
    ld	$gp,88($sp)
    # Line 2288
    ld	$s0,104($sp)
    ld	$s1,80($sp)
    ld	$s2,72($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da793bc:
    # Line 2261
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    ld	$s0,104($sp)
    ld	$gp,88($sp)
    # Line 2262
    ld	$ra,96($sp)
    ld	$s1,80($sp)
    ld	$s2,72($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da793e0:
    # Line 2235
    li	$t0,6400
    beql	$s0,$t0,.L0da792a4
    sd	$ra,96($sp)
.L0da793ec:
    # Line 2248
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
.L0da793f0:
    sd	$ra,96($sp)
    jal	__glsplc_InvalidEnum
    ld	$s0,104($sp)
    ld	$gp,88($sp)
    # Line 2249
    ld	$ra,96($sp)
    ld	$s1,80($sp)
    ld	$s2,72($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da79414:
    # Line 2235
    sltiu	$t1,$s0,6409
    bnez	$t1,.L0da79484
    sltiu	$at,$s0,6410
    beqz	$at,.L0da793f0
    # Line 2248
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0da792a4
    sd	$ra,96($sp)
.L0da79430:
    ld	$gp,88($sp)
    # Line 2270
    ld	$s0,104($sp)
    ld	$s1,80($sp)
    ld	$s2,72($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da79448:
    # Line 2232
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
.L0da7944c:
    sd	$ra,96($sp)
    jal	__glsplc_InvalidValue
    nop
    ld	$gp,88($sp)
    # Line 2233
    ld	$ra,96($sp)
    ld	$s1,80($sp)
    ld	$s2,72($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da79470:
    # Line 2235
    li	$v1,6405
    bne	$s0,$v1,.L0da793f0
    # Line 2248
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0da792a4
    sd	$ra,96($sp)
.L0da79484:
    # Line 2235
    li	$t0,6408
    bne	$s0,$t0,.L0da793f0
    # Line 2248
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0da792a4
    sd	$ra,96($sp)
.end __glMgrlc_TexSubImage3DEXT

.late_rodata
jtbl_0dbed050:
    .word .L0da73c88
    .word .L0da73c90
    .word .L0da73c98
    .word .L0da73ca0
    .word .L0da73ca8
    .word .L0da73cb0
    .word .L0da73cb8
    .word .L0da73cc0
    .word .L0da73cc8
    .word .L0da73cd0
jtbl_0dbed078:
    .word .L0da73e4c
    .word .L0da73e54
    .word .L0da73e5c
    .word .L0da73e64
    .word .L0da73e6c
    .word .L0da73e74
    .word .L0da73e7c
    .word .L0da73e84
    .word .L0da73e8c
    .word .L0da73e94
jtbl_0dbed0a0:
    .word .L0da745b4
    .word .L0da746c0
    .word .L0da74634
    .word .L0da74740
    .word .L0da747c0
    .word .L0da74838
    .word .L0da748a0
    .word .L0da74908
    .word .L0da74970
    .word .L0da749d8
jtbl_0dbed0c8:
    .word .L0da74c2c
    .word .L0da74e38
    .word .L0da74d2c
    .word .L0da74f38
    .word .L0da74fe8
    .word .L0da75084
    .word .L0da750f8
    .word .L0da7516c
    .word .L0da751e0
    .word .L0da75254

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_416fffffe0000000:
    .word 0x416fffff, 0xe0000000
_lit_3d800000:
    .word 0x3d800000
_lit_3f800000:
    .word 0x3f800000
_lit_3f8ccccd:
    .word 0x3f8ccccd
_lit_40000000:
    .word 0x40000000
_lit_41800000:
    .word 0x41800000
_lit_457ff000:
    .word 0x457ff000

