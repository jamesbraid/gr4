# Source: ../MGRAS/mgras_modes.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_modes.c
# Total Functions: 42

.text

# Function: __glMgrim_Flush
# Declared: Line 36 (Source lines: 36-57)
# Address: 0x0da7beb0 - 0x0da7bf30 (Size: 128 bytes, Frame: 16)
.globl __glMgrim_Flush
.ent __glMgrim_Flush
__glMgrim_Flush:
    # Line 56
    lui	$v1,0x7
    # Line 40
    li	$v0,1
    # Line 36
    addiu	$sp,$sp,-16
    sd	$gp,0($sp)
    lui	$at,0x18
    addiu	$at,$at,10216
    addu	$gp,$t9,$at
    # Line 38
    lw	$t9,__glCurrentContext
    # Line 40
    lw	$at,__glBeginMode
    li	$a1,0x9d48
    addu	$a1,$a1,$t9
    beq	$at,$v0,.L0da7bf10
    lw	$a1,0($a1)
    # Line 56
    ori	$v1,$v1,0x8
    ld	$gp,0($sp)
    # Line 57
    addiu	$sp,$sp,16
    # Line 56
    lui	$v0,0x10
    # Line 47
    li	$a0,13824
    # Line 56
    addu	$v1,$v1,$a1
    # Line 47
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    sw	$a0,0($a1)
    # Line 57
    jr	$ra
    # Line 56
    sw	$v0,0($v1)
.L0da7bf10:
    # Line 41
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glMgrim_Flush

# Function: __glMgrim_Finish
# Declared: Line 60 (Source lines: 60-88)
# Address: 0x0da7bf30 - 0x0da7bfa8 (Size: 120 bytes, Frame: 32)
.globl __glMgrim_Finish
.ent __glMgrim_Finish
__glMgrim_Finish:
    # Line 79
    li	$a0,3024
    # Line 60
    addiu	$sp,$sp,-32
    # Line 79
    addiu	$a1,$sp,0
    sd	$s8,16($sp)
    sd	$ra,8($sp)
    # Line 62
    lw	$ra,__glCurrentContext
    sd	$gp,24($sp)
    # Line 60
    lui	$at,0x18
    addiu	$at,$at,10088
    addu	$gp,$t9,$at
    # Line 79
    # lw $t9, -30868($gp) # &__glMgrim_GetBooleanv
    # Line 64
    li	$s8,0x9d48
    addu	$s8,$s8,$ra
    # Line 79
    jal	__glMgrim_GetBooleanv
    # Line 64
    lw	$s8,0($s8)
    # Line 79
    lui	$a1,0x7
    addu	$a1,$s8,$a1
    lw	$v0,0($a1)
    ld	$ra,8($sp)
    andi	$v0,$v0,0x2
    bnez	$v0,.L0da7bf9c
    ld	$s8,16($sp)
    ld	$s8,16($sp)
.L0da7bf8c:
    lw	$at,0($a1)
    andi	$at,$at,0x2
    beqz	$at,.L0da7bf8c
    nop
.L0da7bf9c:
    ld	$gp,24($sp)
    # Line 88
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_Finish

# Function: __glMgrim_StencilMask
# Declared: Line 100 (Source lines: 100-105)
# Address: 0x0da7bfa8 - 0x0da7c008 (Size: 96 bytes, Frame: 32)
.globl __glMgrim_StencilMask
.ent __glMgrim_StencilMask
__glMgrim_StencilMask:
    # Line 100
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x18
    addiu	$v1,$v1,9968
    beq	$at,$v0,.L0da7bfe8
    addu	$gp,$t9,$v1
    # Line 104
    lui	$a1,0x7
    ld	$gp,0($sp)
    # Line 105
    addiu	$sp,$sp,32
    # Line 104
    ori	$a1,$a1,0x4080
    li	$at,14852
    sw	$at,0($a1)
    # Line 105
    jr	$ra
    # Line 104
    sw	$a0,0($a1)
.L0da7bfe8:
    # Line 102
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_StencilMask

# Function: __glMgrim_ColorMask
# Declared: Line 117 (Source lines: 117-124)
# Address: 0x0da7c008 - 0x0da7c0b0 (Size: 168 bytes, Frame: 48)
.globl __glMgrim_ColorMask
.ent __glMgrim_ColorMask
__glMgrim_ColorMask:
    # Line 117
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lui	$at,0x18
    addiu	$at,$at,9872
    beqz	$a1,.L0da7c074
    addu	$gp,$t9,$at
    # Line 118
    li	$a4,2
    beqz	$a2,.L0da7c080
    nop
.L0da7c02c:
    beqz	$a3,.L0da7c088
    li	$a2,4
.L0da7c034:
    li	$a3,8
.L0da7c038:
    lw	$v0,__glBeginMode
    # Line 123
    or	$a1,$a2,$a3
    # Line 118
    li	$v1,1
    beq	$v0,$v1,.L0da7c090
    # Line 122
    li	$at,15108
    # Line 123
    sltu	$a0,$zero,$a0
    ld	$gp,0($sp)
    # Line 124
    addiu	$sp,$sp,48
    # Line 123
    or	$a0,$a0,$a4
    or	$a0,$a0,$a1
    # Line 122
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    sw	$at,0($a1)
    # Line 124
    jr	$ra
    # Line 123
    sw	$a0,0($a1)
.L0da7c074:
    # Line 118
    move	$a4,$zero
    bnez	$a2,.L0da7c02c
    nop
.L0da7c080:
    bnez	$a3,.L0da7c034
    move	$a2,$zero
.L0da7c088:
    b	.L0da7c038
    move	$a3,$zero
.L0da7c090:
    # Line 120
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_ColorMask

# Function: __glMgrim_DepthMask
# Declared: Line 136 (Source lines: 136-141)
# Address: 0x0da7c0b0 - 0x0da7c110 (Size: 96 bytes, Frame: 32)
.globl __glMgrim_DepthMask
.ent __glMgrim_DepthMask
__glMgrim_DepthMask:
    # Line 136
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x18
    addiu	$v1,$v1,9704
    beq	$at,$v0,.L0da7c0f0
    addu	$gp,$t9,$v1
    # Line 140
    lui	$a1,0x7
    ld	$gp,0($sp)
    # Line 141
    addiu	$sp,$sp,32
    # Line 140
    ori	$a1,$a1,0x4080
    li	$at,15364
    sw	$at,0($a1)
    # Line 141
    jr	$ra
    # Line 140
    sw	$a0,0($a1)
.L0da7c0f0:
    # Line 138
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_DepthMask

# Function: __glMgrim_IndexMask
# Declared: Line 153 (Source lines: 153-158)
# Address: 0x0da7c110 - 0x0da7c17c (Size: 108 bytes, Frame: 32)
.globl __glMgrim_IndexMask
.ent __glMgrim_IndexMask
__glMgrim_IndexMask:
    # Line 155
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 153
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 155
    lw	$at,__glBeginMode
    # Line 153
    lui	$v1,0x18
    addiu	$v1,$v1,9608
    # Line 155
    beq	$at,$v0,.L0da7c15c
    # Line 153
    addu	$gp,$t9,$v1
    # Line 157
    lui	$a1,0x7
    ld	$gp,0($sp)
    lw	$at,30788($a2)
    # Line 158
    addiu	$sp,$sp,32
    # Line 157
    ori	$a1,$a1,0x4080
    and	$a0,$at,$a0
    li	$at,15620
    sw	$at,0($a1)
    # Line 158
    jr	$ra
    # Line 157
    sw	$a0,0($a1)
.L0da7c15c:
    # Line 155
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_IndexMask

# Function: __glMgrim_AlphaFunc
# Declared: Line 171 (Source lines: 171-187)
# Address: 0x0da7c17c - 0x0da7c26c (Size: 240 bytes, Frame: 32)
.globl __glMgrim_AlphaFunc
.ent __glMgrim_AlphaFunc
__glMgrim_AlphaFunc:
    # Line 174
    lw	$a2,__glCurrentContext
    li	$v0,1
    # Line 171
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 174
    lw	$at,__glBeginMode
    # Line 171
    lui	$v1,0x18
    addiu	$v1,$v1,9500
    # Line 174
    beq	$at,$v0,.L0da7c24c
    # Line 171
    addu	$gp,$t9,$v1
    # Line 185
    lui	$v1,0x7
    # Line 176
    sltiu	$a1,$a0,512
    bnez	$a1,.L0da7c22c
    # Line 186
    lwc1	$f0,_lit_457ff000
    # Line 176
    sltiu	$at,$a0,520
    beqz	$at,.L0da7c22c
    # Line 178
    mtc1	$zero,$f4
    # Line 185
    li	$a1,15880
    # Line 178
    c.lt.s	$f13,$f4
    # Line 185
    ori	$v1,$v1,0x4080
    # Line 186
    ldc1	$f1,_lit8_3fe0000000000000
    # Line 178
    bc1t	.L0da7c224
    nop
    # Line 181
    lwc1	$f4,3284($a2)
    c.lt.s	$f4,$f13
    nop
    bc1fl	.L0da7c1f0
    # Line 186
    mul.s	$f0,$f13,$f0
    # Line 183
    mov.s	$f13,$f4
.L0da7c1ec:
    # Line 186
    mul.s	$f0,$f13,$f0
.L0da7c1f0:
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    ld	$gp,0($sp)
    # Line 187
    addiu	$sp,$sp,32
    # Line 185
    sw	$a1,0($v1)
    # Line 186
    mfc1	$v0,$f0
    # Line 185
    addiu	$a0,$a0,-512
    sw	$a0,0($v1)
    # Line 186
    dsll32	$v0,$v0,0x10
    dsra32	$v0,$v0,0x10
    # Line 187
    jr	$ra
    # Line 186
    sw	$v0,0($v1)
.L0da7c224:
    # Line 181
    b	.L0da7c1ec
    mov.s	$f13,$f4
.L0da7c22c:
    # Line 177
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 178
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da7c24c:
    # Line 174
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_AlphaFunc

# Function: __glMgrim_BlendEquationEXT
# Declared: Line 199 (Source lines: 199-218)
# Address: 0x0da7c26c - 0x0da7c31c (Size: 176 bytes, Frame: 32)
.globl __glMgrim_BlendEquationEXT
.ent __glMgrim_BlendEquationEXT
__glMgrim_BlendEquationEXT:
    # Line 199
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x18
    addiu	$v1,$v1,9260
    beq	$at,$v0,.L0da7c2fc
    addu	$gp,$t9,$v1
    # Line 201
    li	$a1,3057
    beq	$a0,$a1,.L0da7c2dc
    li	$at,0x8006
    beq	$a0,$at,.L0da7c2dc
    li	$v0,0x8007
    beq	$a0,$v0,.L0da7c2dc
    li	$v1,0x8008
    beq	$a0,$v1,.L0da7c2dc
    li	$a1,0x800a
    beq	$a0,$a1,.L0da7c2dc
    li	$at,0x800b
    beq	$a0,$at,.L0da7c2dc
    # Line 213
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 214
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da7c2dc:
    ld	$gp,0($sp)
    # Line 218
    addiu	$sp,$sp,32
    # Line 217
    li	$v1,24580
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    sw	$v1,0($v0)
    # Line 218
    jr	$ra
    # Line 217
    sw	$a0,0($v0)
.L0da7c2fc:
    # Line 201
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_BlendEquationEXT

# Function: __glMgrim_BlendFunc
# Declared: Line 230 (Source lines: 230-277)
# Address: 0x0da7c31c - 0x0da7c580 (Size: 612 bytes, Frame: 32)
.globl __glMgrim_BlendFunc
.ent __glMgrim_BlendFunc
__glMgrim_BlendFunc:
    # Line 230
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x18
    addiu	$v1,$v1,9084
    beq	$at,$v0,.L0da7c560
    addu	$gp,$t9,$v1
    # Line 232
    sltiu	$a2,$a0,774
    bnez	$a2,.L0da7c3d8
    # Line 234
    sltiu	$at,$a0,775
    beqz	$at,.L0da7c458
.L0da7c34c:
    # Line 253
    sltiu	$v0,$a1,772
.L0da7c350:
    bnez	$v0,.L0da7c390
    # Line 255
    sltiu	$v1,$a1,773
    bnez	$v1,.L0da7c3b4
    li	$a3,0x8002
    sltu	$a2,$a1,$a3
    bnez	$a2,.L0da7c48c
    sltu	$at,$a3,$a1
    beqz	$at,.L0da7c3b4
    li	$a3,0x8004
    sltu	$v0,$a1,$a3
    bnez	$v0,.L0da7c538
    sltu	$v1,$a3,$a1
    bnez	$v1,.L0da7c41c
    # Line 271
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da7c3b8
    ld	$gp,0($sp)
.L0da7c390:
    # Line 255
    sltiu	$a2,$a1,769
    bnez	$a2,.L0da7c404
    sltiu	$at,$a1,770
    bnez	$at,.L0da7c3b4
    sltiu	$v0,$a1,771
    bnez	$v0,.L0da7c4fc
    sltiu	$v1,$a1,772
    beqz	$v1,.L0da7c41c
    # Line 271
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da7c3b4:
    ld	$gp,0($sp)
.L0da7c3b8:
    # Line 277
    addiu	$sp,$sp,32
    # Line 275
    li	$at,16136
    lui	$a2,0x7
    ori	$a2,$a2,0x4080
    sw	$at,0($a2)
    sw	$a0,0($a2)
    # Line 277
    jr	$ra
    # Line 276
    sw	$a1,0($a2)
.L0da7c3d8:
    # Line 234
    sltiu	$at,$a0,771
    bnez	$at,.L0da7c438
    sltiu	$v0,$a0,772
    bnez	$v0,.L0da7c34c
    sltiu	$v1,$a0,773
    bnez	$v1,.L0da7c524
    sltiu	$a2,$a0,774
    beqz	$a2,.L0da7c4e0
    # Line 251
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da7c350
    # Line 253
    sltiu	$v0,$a1,772
.L0da7c404:
    # Line 255
    beqz	$a1,.L0da7c3b4
    sltiu	$at,$a1,2
    bnez	$at,.L0da7c3b4
    li	$v0,768
    beq	$a1,$v0,.L0da7c3b4
.L0da7c418:
    # Line 271
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da7c41c:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 272
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da7c438:
    # Line 234
    beqz	$a0,.L0da7c34c
    sltiu	$v1,$a0,2
    bnez	$v1,.L0da7c34c
    li	$a2,770
    bne	$a0,$a2,.L0da7c4e0
    # Line 251
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da7c350
    # Line 253
    sltiu	$v0,$a1,772
.L0da7c458:
    # Line 234
    li	$a3,0x8002
    sltu	$at,$a0,$a3
    bnez	$at,.L0da7c4ac
    sltu	$v0,$a3,$a0
    beqz	$v0,.L0da7c34c
    li	$a3,0x8004
    sltu	$v1,$a0,$a3
    bnez	$v1,.L0da7c54c
    sltu	$a2,$a3,$a0
    bnez	$a2,.L0da7c4e0
    # Line 251
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da7c350
    # Line 253
    sltiu	$v0,$a1,772
.L0da7c48c:
    # Line 255
    li	$a3,0x8001
    sltu	$at,$a1,$a3
    bnez	$at,.L0da7c510
    sltu	$v0,$a3,$a1
    bnez	$v0,.L0da7c41c
    # Line 271
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da7c3b8
    ld	$gp,0($sp)
.L0da7c4ac:
    # Line 234
    sltiu	$v1,$a0,776
    bnez	$v1,.L0da7c4d0
    sltiu	$a2,$a0,777
    bnez	$a2,.L0da7c34c
    li	$at,0x8001
    bne	$a0,$at,.L0da7c4e0
    # Line 251
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da7c350
    # Line 253
    sltiu	$v0,$a1,772
.L0da7c4d0:
    # Line 234
    li	$v0,775
    beq	$a0,$v0,.L0da7c350
    # Line 253
    sltiu	$v0,$a1,772
.L0da7c4dc:
    # Line 251
    # lw $t9, -27320($gp) # &__glSetError
.L0da7c4e0:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 252
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da7c4fc:
    # Line 255
    li	$v1,770
    bne	$a1,$v1,.L0da7c41c
    # Line 271
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da7c3b8
    ld	$gp,0($sp)
.L0da7c510:
    # Line 255
    li	$a2,773
    bne	$a1,$a2,.L0da7c41c
    # Line 271
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da7c3b8
    ld	$gp,0($sp)
.L0da7c524:
    # Line 234
    li	$at,772
    bne	$a0,$at,.L0da7c4e0
    # Line 251
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da7c350
    # Line 253
    sltiu	$v0,$a1,772
.L0da7c538:
    # Line 255
    li	$v0,0x8003
    beql	$a1,$v0,.L0da7c3b8
    ld	$gp,0($sp)
    b	.L0da7c418
    sd	$ra,8($sp)
.L0da7c54c:
    # Line 234
    li	$v1,0x8003
    beq	$a0,$v1,.L0da7c350
    # Line 253
    sltiu	$v0,$a1,772
    b	.L0da7c4dc
    sd	$ra,8($sp)
.L0da7c560:
    # Line 232
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_BlendFunc

# Function: __glMgrim_LogicOp
# Declared: Line 289 (Source lines: 289-299)
# Address: 0x0da7c580 - 0x0da7c614 (Size: 148 bytes, Frame: 32)
.globl __glMgrim_LogicOp
.ent __glMgrim_LogicOp
__glMgrim_LogicOp:
    # Line 289
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x18
    addiu	$v1,$v1,8472
    beq	$at,$v0,.L0da7c5f4
    addu	$gp,$t9,$v1
    # Line 294
    sltiu	$a1,$a0,5376
    bnez	$a1,.L0da7c5d4
    # Line 298
    lui	$v1,0x7
    # Line 294
    sltiu	$at,$a0,5392
    beqz	$at,.L0da7c5d4
    # Line 298
    ori	$v1,$v1,0x4080
    ld	$gp,0($sp)
    # Line 299
    addiu	$sp,$sp,32
    # Line 298
    addiu	$v0,$a0,-5376
    li	$a0,16388
    sw	$a0,0($v1)
    # Line 299
    jr	$ra
    # Line 298
    sw	$v0,0($v1)
.L0da7c5d4:
    # Line 295
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 296
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da7c5f4:
    # Line 292
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_LogicOp

# Function: __glMgrim_StencilFunc
# Declared: Line 313 (Source lines: 313-329)
# Address: 0x0da7c614 - 0x0da7c6c8 (Size: 180 bytes, Frame: 48)
.globl __glMgrim_StencilFunc
.ent __glMgrim_StencilFunc
__glMgrim_StencilFunc:
    # Line 313
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x18
    addiu	$v1,$v1,8324
    beq	$at,$v0,.L0da7c6a8
    addu	$gp,$t9,$v1
    # Line 317
    sltiu	$a3,$a0,512
    bnez	$a3,.L0da7c680
    sltiu	$at,$a0,520
    beqz	$at,.L0da7c680
    # Line 326
    addiu	$a0,$a0,-512
    # Line 319
    bltz	$a1,.L0da7c6a0
.L0da7c64c:
    # Line 322
    slti	$v0,$a1,256
    bnez	$v0,.L0da7c65c
    # Line 326
    li	$a3,16652
    # Line 324
    li	$a1,255
.L0da7c65c:
    # Line 326
    lui	$v1,0x7
    ld	$gp,0($sp)
    # Line 329
    addiu	$sp,$sp,48
    # Line 326
    ori	$v1,$v1,0x4080
    sw	$a3,0($v1)
    sw	$a0,0($v1)
    # Line 327
    sw	$a1,0($v1)
    # Line 329
    jr	$ra
    # Line 328
    sw	$a2,0($v1)
.L0da7c680:
    # Line 318
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 319
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7c6a0:
    b	.L0da7c64c
    # Line 322
    move	$a1,$zero
.L0da7c6a8:
    # Line 315
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_StencilFunc

# Function: __glMgrim_StencilOp
# Declared: Line 343 (Source lines: 343-441)
# Address: 0x0da7c6c8 - 0x0da7c970 (Size: 680 bytes, Frame: 48)
.globl __glMgrim_StencilOp
.ent __glMgrim_StencilOp
__glMgrim_StencilOp:
    # Line 343
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x18
    addiu	$v1,$v1,8144
    beq	$at,$v0,.L0da7c930
    addu	$gp,$t9,$v1
    # Line 346
    beqz	$a0,.L0da7c72c
    # Line 348
    li	$v0,5386
    sltiu	$a3,$a0,7680
    bnez	$a3,.L0da7c704
    sltiu	$at,$a0,7684
    bnez	$at,.L0da7c730
    # Line 354
    sltiu	$a3,$a1,7684
.L0da7c704:
    # Line 348
    beq	$a0,$v0,.L0da7c730
    # Line 354
    sltiu	$a3,$a1,7684
    # Line 351
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 352
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7c72c:
    # Line 354
    sltiu	$a3,$a1,7684
.L0da7c730:
    # Line 352
    beqz	$a1,.L0da7c774
    # Line 354
    li	$at,5386
    sltiu	$v1,$a1,7680
    bnez	$v1,.L0da7c74c
    nop
    bnez	$a3,.L0da7c778
    # Line 360
    sltiu	$v1,$a2,7684
.L0da7c74c:
    # Line 354
    beq	$a1,$at,.L0da7c778
    # Line 360
    sltiu	$v1,$a2,7684
    # Line 357
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 358
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7c774:
    # Line 360
    sltiu	$v1,$a2,7684
.L0da7c778:
    # Line 358
    beqz	$a2,.L0da7c7bc
    # Line 366
    li	$at,7681
    # Line 360
    sltiu	$v0,$a2,7680
    bnez	$v0,.L0da7c794
    li	$a3,5386
    bnez	$v1,.L0da7c7bc
    li	$a3,5386
.L0da7c794:
    beq	$a2,$a3,.L0da7c7c0
    # Line 366
    li	$a4,7680
    # Line 363
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 364
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7c7bc:
    # Line 366
    li	$a4,7680
.L0da7c7c0:
    beq	$a4,$a0,.L0da7c85c
    nop
    beqz	$a0,.L0da7c8c4
    nop
    beq	$a0,$at,.L0da7c8f8
    li	$v0,7682
    beq	$a0,$v0,.L0da7c908
    li	$v1,7683
    beq	$a0,$v1,.L0da7c918
    li	$a3,5386
    beq	$a0,$a3,.L0da7c80c
    # Line 386
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 387
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7c80c:
    # Line 383
    li	$a0,5
.L0da7c810:
    # Line 390
    beq	$a4,$a1,.L0da7c864
    nop
.L0da7c818:
    beqz	$a1,.L0da7c900
    li	$at,7681
    beq	$a1,$at,.L0da7c910
    li	$v0,7682
    beq	$a1,$v0,.L0da7c920
    li	$v1,7683
    beq	$a1,$v1,.L0da7c928
    li	$a3,5386
    beq	$a1,$a3,.L0da7c874
    # Line 410
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 411
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7c85c:
    # Line 390
    bne	$a4,$a1,.L0da7c818
    # Line 368
    move	$a0,$zero
.L0da7c864:
    # Line 414
    bne	$a4,$a2,.L0da7c880
    # Line 392
    move	$a1,$zero
.L0da7c86c:
    # Line 417
    b	.L0da7c8d0
    # Line 416
    move	$a2,$zero
.L0da7c874:
    # Line 407
    li	$a1,5
.L0da7c878:
    # Line 414
    beq	$a4,$a2,.L0da7c86c
    nop
.L0da7c880:
    beqz	$a2,.L0da7c950
    li	$at,7681
    beq	$a2,$at,.L0da7c958
    li	$v0,7682
    beq	$a2,$v0,.L0da7c960
    li	$v1,7683
    beq	$a2,$v1,.L0da7c968
    li	$a3,5386
    beq	$a2,$a3,.L0da7c8cc
    # Line 434
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 435
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7c8c4:
    # Line 372
    b	.L0da7c810
    # Line 371
    li	$a0,1
.L0da7c8cc:
    # Line 431
    li	$a2,5
.L0da7c8d0:
    ld	$gp,0($sp)
    # Line 441
    addiu	$sp,$sp,48
    # Line 438
    li	$v0,16908
    lui	$at,0x7
    ori	$at,$at,0x4080
    sw	$v0,0($at)
    sw	$a0,0($at)
    # Line 439
    sw	$a1,0($at)
    # Line 441
    jr	$ra
    # Line 440
    sw	$a2,0($at)
.L0da7c8f8:
    # Line 375
    b	.L0da7c810
    # Line 374
    li	$a0,2
.L0da7c900:
    # Line 396
    b	.L0da7c878
    # Line 395
    li	$a1,1
.L0da7c908:
    # Line 378
    b	.L0da7c810
    # Line 377
    li	$a0,3
.L0da7c910:
    # Line 399
    b	.L0da7c878
    # Line 398
    li	$a1,2
.L0da7c918:
    # Line 381
    b	.L0da7c810
    # Line 380
    li	$a0,4
.L0da7c920:
    # Line 402
    b	.L0da7c878
    # Line 401
    li	$a1,3
.L0da7c928:
    # Line 405
    b	.L0da7c878
    # Line 404
    li	$a1,4
.L0da7c930:
    # Line 346
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7c950:
    # Line 420
    b	.L0da7c8d0
    # Line 419
    li	$a2,1
.L0da7c958:
    # Line 423
    b	.L0da7c8d0
    # Line 422
    li	$a2,2
.L0da7c960:
    # Line 426
    b	.L0da7c8d0
    # Line 425
    li	$a2,3
.L0da7c968:
    # Line 429
    b	.L0da7c8d0
    # Line 428
    li	$a2,4
.end __glMgrim_StencilOp

# Function: __glMgrim_DepthFunc
# Declared: Line 456 (Source lines: 456-465)
# Address: 0x0da7c970 - 0x0da7ca04 (Size: 148 bytes, Frame: 32)
.globl __glMgrim_DepthFunc
.ent __glMgrim_DepthFunc
__glMgrim_DepthFunc:
    # Line 456
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x18
    addiu	$v1,$v1,7464
    beq	$at,$v0,.L0da7c9e4
    addu	$gp,$t9,$v1
    # Line 460
    sltiu	$a1,$a0,512
    bnez	$a1,.L0da7c9c4
    # Line 464
    lui	$v1,0x7
    # Line 460
    sltiu	$at,$a0,520
    beqz	$at,.L0da7c9c4
    # Line 464
    ori	$v1,$v1,0x4080
    ld	$gp,0($sp)
    # Line 465
    addiu	$sp,$sp,32
    # Line 464
    addiu	$v0,$a0,-512
    li	$a0,17156
    sw	$a0,0($v1)
    # Line 465
    jr	$ra
    # Line 464
    sw	$v0,0($v1)
.L0da7c9c4:
    # Line 461
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 462
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da7c9e4:
    # Line 458
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_DepthFunc

# Function: __glMgrim_CullFace
# Declared: Line 477 (Source lines: 477-486)
# Address: 0x0da7ca04 - 0x0da7ca94 (Size: 144 bytes, Frame: 32)
.globl __glMgrim_CullFace
.ent __glMgrim_CullFace
__glMgrim_CullFace:
    # Line 477
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x18
    addiu	$v1,$v1,7316
    beq	$at,$v0,.L0da7ca74
    addu	$gp,$t9,$v1
    # Line 481
    sltiu	$a1,$a0,1028
    bnez	$a1,.L0da7ca54
    # Line 485
    lui	$v0,0x7
    # Line 481
    sltiu	$at,$a0,1033
    beqz	$at,.L0da7ca54
    # Line 485
    ori	$v0,$v0,0x4080
    ld	$gp,0($sp)
    # Line 486
    addiu	$sp,$sp,32
    # Line 485
    li	$v1,29700
    sw	$v1,0($v0)
    # Line 486
    jr	$ra
    # Line 485
    sw	$a0,0($v0)
.L0da7ca54:
    # Line 482
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 483
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da7ca74:
    # Line 479
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_CullFace

# Function: __glMgrim_PolygonMode
# Declared: Line 498 (Source lines: 498-509)
# Address: 0x0da7ca94 - 0x0da7cb40 (Size: 172 bytes, Frame: 32)
.globl __glMgrim_PolygonMode
.ent __glMgrim_PolygonMode
__glMgrim_PolygonMode:
    # Line 498
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x18
    addiu	$v1,$v1,7172
    beq	$at,$v0,.L0da7cb20
    addu	$gp,$t9,$v1
    # Line 500
    li	$a2,1028
    beq	$a0,$a2,.L0da7cacc
    li	$at,1029
    beq	$a0,$at,.L0da7cacc
    # Line 502
    li	$v0,1032
    bne	$a0,$v0,.L0da7cb00
.L0da7cacc:
    sltiu	$v1,$a1,6912
    # Line 507
    lui	$at,0x7
    # Line 502
    bnez	$v1,.L0da7cb00
    sltiu	$a2,$a1,6915
    beqz	$a2,.L0da7cb00
    # Line 507
    ori	$at,$at,0x4080
    ld	$gp,0($sp)
    # Line 509
    addiu	$sp,$sp,32
    # Line 507
    li	$v0,0xa808
    sw	$v0,0($at)
    sw	$a0,0($at)
    # Line 509
    jr	$ra
    # Line 508
    sw	$a1,0($at)
.L0da7cb00:
    # Line 504
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 505
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da7cb20:
    # Line 500
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_PolygonMode

# Function: __glMgrasReadBuffer
# Declared: Line 512 (Source lines: 518-626)
# Address: 0x0da7cb40 - 0x0da7cd2c (Size: 492 bytes, Frame: 0)
.globl __glMgrasReadBuffer
.ent __glMgrasReadBuffer
__glMgrasReadBuffer:
    # Line 518
    lw	$a3,__glCurrentContext
    li	$a4,17420
    # Line 531
    li	$v1,1027
    # Line 518
    lbu	$at,3195($a3)
    # Line 531
    li	$a1,1033
    # Line 518
    lui	$a2,0x7
    beqz	$at,.L0da7cb9c
    ori	$a2,$a2,0x4080
    # Line 531
    li	$at,1024
    beq	$a0,$at,.L0da7cc20
    li	$v0,1025
    beq	$a0,$v0,.L0da7cc3c
    # Line 552
    li	$at,1
    # Line 531
    beq	$a0,$v1,.L0da7cc54
    # Line 546
    li	$v0,3
    # Line 531
    beq	$a0,$a1,.L0da7cc0c
    # Line 547
    li	$at,2
    # Line 546
    sw	$a4,0($a2)
    sw	$v0,0($a2)
    # Line 547
    sw	$at,0($a2)
    # Line 548
    sw	$a0,0($a2)
    # Line 626
    jr	$ra
    nop
.L0da7cb9c:
    # Line 562
    lbu	$v1,3194($a3)
    # Line 563
    li	$at,1033
    # Line 562
    beqz	$v1,.L0da7cc68
    # Line 563
    li	$a1,1028
    beql	$a0,$a1,.L0da7cc94
    # Line 565
    lw	$a5,3272($a3)
    # Line 563
    beq	$a0,$at,.L0da7ccdc
    # Line 588
    li	$a1,5
    # Line 584
    lw	$v0,3232($a3)
    slti	$v0,$v0,8
    bnez	$v0,.L0da7cbe4
    # Line 585
    li	$v1,2
    lw	$a5,3272($a3)
    sw	$a4,0($a2)
    # Line 590
    bnez	$a5,.L0da7cbfc
    # Line 585
    sw	$v1,0($a2)
.L0da7cbdc:
    b	.L0da7cc04
    # Line 596
    sw	$zero,0($a2)
.L0da7cbe4:
    # Line 585
    lw	$a5,3272($a3)
    beqz	$a5,.L0da7ccd0
    # Line 590
    li	$at,1
    # Line 588
    sw	$a4,0($a2)
    sw	$a1,0($a2)
.L0da7cbf8:
    # Line 590
    beqz	$a5,.L0da7cbdc
.L0da7cbfc:
    # Line 594
    li	$at,4
    sw	$at,0($a2)
.L0da7cc04:
    # Line 626
    jr	$ra
    # Line 598
    sw	$a0,0($a2)
.L0da7cc0c:
    # Line 558
    sw	$a4,0($a2)
    sw	$zero,0($a2)
    # Line 559
    sw	$zero,0($a2)
    # Line 626
    jr	$ra
    # Line 560
    sw	$a0,0($a2)
.L0da7cc20:
    # Line 534
    li	$v0,3
    # Line 533
    sw	$a4,0($a2)
    li	$v1,2
    sw	$v1,0($a2)
    # Line 534
    sw	$v0,0($a2)
    # Line 626
    jr	$ra
    # Line 535
    sw	$a0,0($a2)
.L0da7cc3c:
    # Line 540
    li	$a1,1
    # Line 539
    sw	$a4,0($a2)
    sw	$zero,0($a2)
    # Line 540
    sw	$a1,0($a2)
    # Line 626
    jr	$ra
    # Line 541
    sw	$a0,0($a2)
.L0da7cc54:
    # Line 552
    sw	$a4,0($a2)
    sw	$at,0($a2)
    # Line 553
    sw	$zero,0($a2)
    # Line 626
    jr	$ra
    # Line 554
    sw	$a0,0($a2)
.L0da7cc68:
    # Line 606
    li	$v0,1033
    beq	$a0,$v0,.L0da7cd18
    nop
    # Line 610
    lw	$v1,3272($a3)
    beqz	$v1,.L0da7ccf0
    # Line 611
    li	$a1,4
    sw	$a4,0($a2)
    sw	$a1,0($a2)
    # Line 612
    sw	$a1,0($a2)
.L0da7cc8c:
    # Line 626
    jr	$ra
    # Line 617
    sw	$a0,0($a2)
.L0da7cc94:
    # Line 565
    beqz	$a5,.L0da7cd00
    # Line 566
    li	$at,4
    sw	$a4,0($a2)
    sw	$at,0($a2)
.L0da7cca4:
    # Line 568
    lw	$v0,3232($a3)
    slti	$v0,$v0,8
    bnez	$v0,.L0da7ccbc
    # Line 571
    li	$v1,2
    b	.L0da7ccc8
    sw	$v1,0($a2)
.L0da7ccbc:
    beqz	$a5,.L0da7cd0c
    # Line 574
    li	$a1,5
    sw	$a1,0($a2)
.L0da7ccc8:
    # Line 626
    jr	$ra
    # Line 579
    sw	$a0,0($a2)
.L0da7ccd0:
    # Line 590
    sw	$a4,0($a2)
    b	.L0da7cbf8
    sw	$at,0($a2)
.L0da7ccdc:
    # Line 602
    sw	$a4,0($a2)
    sw	$zero,0($a2)
    # Line 603
    sw	$zero,0($a2)
    # Line 626
    jr	$ra
    # Line 604
    sw	$a0,0($a2)
.L0da7ccf0:
    # Line 614
    sw	$a4,0($a2)
    sw	$zero,0($a2)
    b	.L0da7cc8c
    # Line 615
    sw	$zero,0($a2)
.L0da7cd00:
    # Line 568
    sw	$a4,0($a2)
    b	.L0da7cca4
    sw	$zero,0($a2)
.L0da7cd0c:
    # Line 576
    li	$v0,1
    b	.L0da7ccc8
    sw	$v0,0($a2)
.L0da7cd18:
    # Line 621
    sw	$a4,0($a2)
    sw	$zero,0($a2)
    # Line 622
    sw	$zero,0($a2)
    # Line 626
    jr	$ra
    # Line 623
    sw	$a0,0($a2)
.end __glMgrasReadBuffer

# Function: __glMgrasSetData
# Declared: Line 629 (Source lines: 637-639)
# Address: 0x0da7cd2c - 0x0da7cd48 (Size: 28 bytes, Frame: 0)
.globl __glMgrasSetData
.ent __glMgrasSetData
__glMgrasSetData:
    # Line 637
    li	$v0,0xed08
    lui	$at,0x7
    ori	$at,$at,0x4080
    sw	$v0,0($at)
    sw	$a0,0($at)
    # Line 639
    jr	$ra
    # Line 638
    sw	$a1,0($at)
.end __glMgrasSetData

# Function: __glMgrim_ReadBuffer
# Declared: Line 644 (Source lines: 644-768)
# Address: 0x0da7cd48 - 0x0da7d020 (Size: 728 bytes, Frame: 48)
.globl __glMgrim_ReadBuffer
.ent __glMgrim_ReadBuffer
__glMgrim_ReadBuffer:
    # Line 644
    move	$a1,$a0
    # Line 656
    li	$v0,1
    # Line 644
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    # Line 656
    lw	$s0,__glCurrentContext
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    # Line 644
    lui	$v1,0x18
    addiu	$v1,$v1,6480
    # Line 656
    beq	$at,$v0,.L0da7cf28
    # Line 644
    addu	$gp,$t9,$v1
    # Line 656
    lbu	$a0,3195($s0)
    la	$at,sub_0dbf0000
    # Line 666
    li	$v1,1024
    # Line 656
    beqz	$a0,.L0da7cdcc
    addiu	$a0,$a1,-1024
    addiu	$at,$at,-12048
    sll	$a3,$a0,0x2
    sltiu	$v0,$a0,13
    beqz	$v0,.L0da7cda8
    addu	$a3,$a3,$at
    lw	$v0,%lo(jtbl_0dbed0f0)($a3)
    jr	$v0
    # Line 680
    li	$at,1027
.L0da7cda8:
    # Line 696
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 697
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7cdcc:
    # Line 698
    lbu	$v1,3194($s0)
    sll	$a3,$a0,0x2
    # Line 732
    sltiu	$v0,$a0,13
    # Line 698
    beqz	$v1,.L0da7cea8
    la	$at,sub_0dbf0000
    addiu	$at,$at,-11992
    sltiu	$v0,$a0,13
    beqz	$v0,.L0da7ce84
    addu	$a3,$a3,$at
    lw	$v0,%lo(jtbl_0dbed0f0)($a3)
    jr	$v0
    # Line 721
    addiu	$at,$a1,-1033
.L0da7cdfc:
    sd	$ra,16($sp)
    # Line 667
    b	.L0da7ce14
    # Line 666
    sw	$v1,1148($s0)
.L0da7ce08:
    # Line 676
    li	$a2,1026
    sd	$ra,16($sp)
    sw	$a2,1148($s0)
.L0da7ce14:
    # Line 766
    # lw $t9, -32064($gp) # &__glMgrasSetData
    la	$a0,SYMBOL_LOCATION
    # Line 764
    sw	$a1,1152($s0)
    # Line 766
    bal __glMgrasSetData
    lw	$a0,112($a0)
    # Line 767
    # lw $t9, -32068($gp) # &__glMgrasReadBuffer
    bal __glMgrasReadBuffer
    lw	$a0,1148($s0)
    # Line 768
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7ce48:
    # Line 671
    li	$a2,1025
    sd	$ra,16($sp)
    # Line 672
    b	.L0da7ce14
    # Line 671
    sw	$a2,1148($s0)
.L0da7ce58:
    sd	$ra,16($sp)
    # Line 681
    b	.L0da7ce14
    # Line 680
    sw	$at,1148($s0)
.L0da7ce64:
    # Line 687
    lw	$v1,3268($s0)
    addiu	$v0,$a1,-1033
    slt	$v0,$v0,$v1
    beqz	$v0,.L0da7cf4c
    # Line 689
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    # Line 693
    b	.L0da7ce14
    # Line 692
    sw	$a1,1148($s0)
.L0da7ce84:
    # Line 730
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 731
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7cea8:
    # Line 732
    la	$at,sub_0dbf0000
    sll	$a3,$a0,0x2
    addiu	$at,$at,-11936
    beqz	$v0,.L0da7cf6c
    addu	$a3,$a3,$at
    lw	$v0,%lo(jtbl_0dbed0f0)($a3)
    jr	$v0
    # Line 745
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da7cec8:
    sd	$ra,16($sp)
    # Line 702
    li	$v1,1028
    # Line 703
    b	.L0da7ce14
    # Line 702
    sw	$v1,1148($s0)
.L0da7ced8:
    # Line 707
    li	$a2,1029
    sd	$ra,16($sp)
    # Line 708
    b	.L0da7ce14
    # Line 707
    sw	$a2,1148($s0)
.L0da7cee8:
    # Line 714
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 715
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7cf0c:
    # Line 721
    lw	$v0,3268($s0)
    slt	$at,$at,$v0
    beqz	$at,.L0da7cfe0
    # Line 723
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    # Line 727
    b	.L0da7ce14
    # Line 726
    sw	$a1,1148($s0)
.L0da7cf28:
    # Line 656
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7cf4c:
    sd	$ra,16($sp)
    # Line 689
    jalr	$t9
    li	$a0,1282
    # Line 690
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7cf6c:
    # Line 761
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 762
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7cf90:
    sd	$ra,16($sp)
    # Line 736
    li	$v1,1028
    # Line 737
    b	.L0da7ce14
    # Line 736
    sw	$v1,1148($s0)
.L0da7cfa0:
    sd	$ra,16($sp)
    # Line 745
    jalr	$t9
    li	$a0,1282
    # Line 746
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7cfc0:
    # Line 752
    lw	$at,3268($s0)
    addiu	$a2,$a1,-1033
    slt	$a2,$a2,$at
    beqz	$a2,.L0da7d000
    # Line 754
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    # Line 758
    b	.L0da7ce14
    # Line 757
    sw	$a1,1148($s0)
.L0da7cfe0:
    sd	$ra,16($sp)
    # Line 723
    jal	__glSetError
    li	$a0,1282
    # Line 724
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7d000:
    sd	$ra,16($sp)
    # Line 754
    jalr	$t9
    li	$a0,1282
    # Line 755
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_ReadBuffer

# Function: __glMgrasDrawBuffer
# Declared: Line 771 (Source lines: 771-963)
# Address: 0x0da7d020 - 0x0da7d388 (Size: 872 bytes, Frame: 0)
.globl __glMgrasDrawBuffer
.ent __glMgrasDrawBuffer
__glMgrasDrawBuffer:
    # Line 777
    li	$a5,18700
    lw	$a4,__glCurrentContext
    lui	$a3,0x7
    ori	$a3,$a3,0x4080
    lbu	$v0,3107($a4)
    # Line 771
    lui	$v1,0x18
    addiu	$v1,$v1,5752
    # Line 777
    beqz	$v0,.L0da7d08c
    # Line 771
    addu	$at,$t9,$v1
    # Line 777
    addiu	$a4,$a0,-1024
    la	$v0,sub_0dbf0000
    sltiu	$v1,$a4,10
    sll	$a4,$a4,0x2
    addiu	$v0,$v0,-11880
    beqz	$v1,.L0da7d074
    addu	$a4,$a4,$v0
    lw	$v0,%lo(jtbl_0dbed198)($a4)
    # Line 856
    li	$a2,3
    # Line 830
    li	$a1,10
    # Line 777
    jr	$v0
    # Line 860
    li	$v1,1
.L0da7d074:
    # Line 793
    sw	$a5,0($a3)
    sw	$zero,0($a3)
    # Line 794
    sw	$zero,0($a3)
    # Line 795
    sw	$zero,0($a3)
    # Line 963
    jr	$ra
    nop
.L0da7d08c:
    # Line 864
    lbu	$v1,3106($a4)
    li	$a6,1028
    beqz	$v1,.L0da7d1e0
    # Line 865
    li	$v0,1033
    beq	$a6,$a0,.L0da7d204
    li	$a1,1029
    beq	$a0,$a1,.L0da7d240
    li	$a2,1032
    beql	$a0,$a2,.L0da7d28c
    # Line 913
    lw	$a2,3144($a4)
    # Line 865
    beq	$a0,$v0,.L0da7d2cc
    # Line 932
    li	$v0,1
    # Line 868
    sw	$a5,0($a3)
    sw	$zero,0($a3)
    # Line 869
    sw	$zero,0($a3)
    # Line 963
    jr	$ra
    # Line 870
    sw	$zero,0($a3)
.L0da7d0d0:
    # Line 800
    li	$v1,8
    # Line 799
    sw	$a5,0($a3)
    li	$a1,4
    sw	$a1,0($a3)
    # Line 800
    sw	$v1,0($a3)
    # Line 963
    jr	$ra
    # Line 801
    sw	$zero,0($a3)
.L0da7d0ec:
    # Line 806
    li	$a2,2
    # Line 805
    sw	$a5,0($a3)
    li	$v0,1
    sw	$v0,0($a3)
    # Line 806
    sw	$a2,0($a3)
    # Line 963
    jr	$ra
    # Line 807
    sw	$zero,0($a3)
.L0da7d108:
    # Line 812
    li	$v1,4
    # Line 811
    sw	$a5,0($a3)
    li	$a1,8
    sw	$a1,0($a3)
    # Line 812
    sw	$v1,0($a3)
    # Line 963
    jr	$ra
    # Line 813
    sw	$zero,0($a3)
.L0da7d124:
    # Line 818
    li	$a2,1
    # Line 817
    sw	$a5,0($a3)
    li	$v0,2
    sw	$v0,0($a3)
    # Line 818
    sw	$a2,0($a3)
    # Line 963
    jr	$ra
    # Line 819
    sw	$zero,0($a3)
.L0da7d140:
    # Line 826
    li	$v1,1
    # Line 825
    li	$a1,10
    # Line 823
    sw	$a5,0($a3)
    li	$a2,5
    sw	$a2,0($a3)
    # Line 825
    sw	$a1,0($a3)
    # Line 963
    jr	$ra
    # Line 826
    sw	$v1,0($a3)
.L0da7d160:
    # Line 833
    li	$v0,1
    # Line 832
    li	$v1,5
    # Line 830
    sw	$a5,0($a3)
    sw	$a1,0($a3)
    # Line 832
    sw	$v1,0($a3)
    # Line 963
    jr	$ra
    # Line 833
    sw	$v0,0($a3)
.L0da7d17c:
    # Line 840
    li	$a2,1
    # Line 837
    sw	$a5,0($a3)
    li	$v0,12
    sw	$v0,0($a3)
    # Line 839
    sw	$v0,0($a3)
    # Line 963
    jr	$ra
    # Line 840
    sw	$a2,0($a3)
.L0da7d198:
    # Line 844
    li	$a1,3
    # Line 847
    li	$v1,1
    # Line 844
    sw	$a5,0($a3)
    sw	$a1,0($a3)
    # Line 846
    sw	$a1,0($a3)
    # Line 963
    jr	$ra
    # Line 847
    sw	$v1,0($a3)
.L0da7d1b4:
    # Line 851
    sw	$a5,0($a3)
    li	$v0,15
    sw	$v0,0($a3)
    # Line 854
    sw	$v0,0($a3)
    # Line 963
    jr	$ra
    # Line 856
    sw	$a2,0($a3)
.L0da7d1cc:
    # Line 860
    sw	$a5,0($a3)
    sw	$v1,0($a3)
    # Line 861
    sw	$v1,0($a3)
    # Line 963
    jr	$ra
    # Line 862
    sw	$zero,0($a3)
.L0da7d1e0:
    # Line 937
    beq	$a6,$a0,.L0da7d2ec
    li	$a1,1033
    beq	$a0,$a1,.L0da7d34c
    # Line 958
    li	$a2,1
    # Line 940
    sw	$a5,0($a3)
    sw	$zero,0($a3)
    # Line 941
    sw	$zero,0($a3)
    # Line 963
    jr	$ra
    # Line 942
    sw	$zero,0($a3)
.L0da7d204:
    # Line 874
    lw	$a0,3184($a4)
    beqz	$a0,.L0da7d310
    # Line 875
    li	$a2,72
    sw	$a5,0($a3)
    sw	$a2,0($a3)
.L0da7d218:
    # Line 877
    lw	$v0,3144($a4)
    slti	$v0,$v0,8
    beqz	$v0,.L0da7d2e0
    # Line 880
    li	$v1,4
    # Line 881
    beqz	$a0,.L0da7d32c
    # Line 885
    li	$v1,1
    # Line 884
    li	$a1,72
    sw	$a1,0($a3)
    # Line 963
    jr	$ra
    # Line 885
    sw	$v1,0($a3)
.L0da7d240:
    # Line 894
    lw	$a2,3144($a4)
    slti	$a2,$a2,8
    bnezl	$a2,.L0da7d264
    # Line 895
    lw	$a0,3184($a4)
    lw	$a0,3184($a4)
    li	$v0,4
    sw	$a5,0($a3)
    b	.L0da7d274
    sw	$v0,0($a3)
.L0da7d264:
    beqz	$a0,.L0da7d33c
    # Line 898
    li	$v1,72
    sw	$a5,0($a3)
    sw	$v1,0($a3)
.L0da7d274:
    # Line 900
    beqz	$a0,.L0da7d320
    li	$a6,1
    # Line 904
    li	$a1,72
    sw	$a1,0($a3)
    # Line 963
    jr	$ra
    # Line 905
    sw	$a6,0($a3)
.L0da7d28c:
    # Line 913
    slti	$a2,$a2,8
    bnezl	$a2,.L0da7d2ac
    # Line 916
    lw	$v1,3184($a4)
    # Line 914
    li	$v0,5
    sw	$a5,0($a3)
    sw	$v0,0($a3)
    # Line 916
    b	.L0da7d2c0
    sw	$v0,0($a3)
.L0da7d2ac:
    beqz	$v1,.L0da7d360
    # Line 919
    li	$a1,67
    sw	$a5,0($a3)
    sw	$a1,0($a3)
    # Line 921
    sw	$a1,0($a3)
.L0da7d2c0:
    # Line 928
    li	$a2,1
    # Line 963
    jr	$ra
    # Line 928
    sw	$a2,0($a3)
.L0da7d2cc:
    # Line 932
    sw	$a5,0($a3)
    sw	$v0,0($a3)
    # Line 933
    sw	$v0,0($a3)
    # Line 963
    jr	$ra
    # Line 934
    sw	$zero,0($a3)
.L0da7d2e0:
    # Line 880
    sw	$v1,0($a3)
    # Line 963
    jr	$ra
    # Line 881
    sw	$zero,0($a3)
.L0da7d2ec:
    # Line 946
    lw	$a1,3184($a4)
    beqz	$a1,.L0da7d374
    li	$a6,1
    # Line 947
    li	$a2,72
    sw	$a5,0($a3)
    sw	$a2,0($a3)
    # Line 948
    sw	$a2,0($a3)
    # Line 963
    jr	$ra
    # Line 949
    sw	$a6,0($a3)
.L0da7d310:
    # Line 877
    li	$v0,1
    sw	$a5,0($a3)
    b	.L0da7d218
    sw	$v0,0($a3)
.L0da7d320:
    # Line 907
    sw	$a6,0($a3)
    # Line 963
    jr	$ra
    # Line 908
    sw	$zero,0($a3)
.L0da7d32c:
    # Line 887
    li	$v1,2
    sw	$v1,0($a3)
    # Line 963
    jr	$ra
    # Line 888
    sw	$zero,0($a3)
.L0da7d33c:
    # Line 900
    li	$a1,2
    sw	$a5,0($a3)
    b	.L0da7d274
    sw	$a1,0($a3)
.L0da7d34c:
    # Line 958
    sw	$a5,0($a3)
    sw	$a2,0($a3)
    # Line 959
    sw	$a2,0($a3)
    # Line 963
    jr	$ra
    # Line 960
    sw	$zero,0($a3)
.L0da7d360:
    # Line 923
    li	$v0,3
    sw	$a5,0($a3)
    sw	$v0,0($a3)
    b	.L0da7d2c0
    # Line 925
    sw	$v0,0($a3)
.L0da7d374:
    # Line 951
    sw	$a5,0($a3)
    sw	$a6,0($a3)
    # Line 952
    sw	$a6,0($a3)
    # Line 963
    jr	$ra
    # Line 953
    sw	$zero,0($a3)
.end __glMgrasDrawBuffer

# Function: __glMgrim_DrawBuffer
# Declared: Line 966 (Source lines: 966-1096)
# Address: 0x0da7d388 - 0x0da7d8b4 (Size: 1324 bytes, Frame: 48)
.globl __glMgrim_DrawBuffer
.ent __glMgrim_DrawBuffer
__glMgrim_DrawBuffer:
    # Line 966
    move	$a1,$a0
    # Line 978
    li	$v0,1
    # Line 966
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    # Line 978
    lw	$s0,__glCurrentContext
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    # Line 966
    lui	$v1,0x18
    addiu	$v1,$v1,4880
    # Line 978
    beq	$at,$v0,.L0da7d60c
    # Line 966
    addu	$gp,$t9,$v1
    # Line 978
    lbu	$a2,3107($s0)
    # Line 984
    sltiu	$at,$a1,1031
    # Line 978
    sltiu	$a0,$a1,1030
    beqz	$a2,.L0da7d490
    xori	$a0,$a0,0x1
    beqz	$a0,.L0da7d4e0
    # Line 984
    sltiu	$a2,$a1,1024
    bnez	$at,.L0da7d414
    sltiu	$v0,$a1,1034
    bnez	$v0,.L0da7d450
    sltiu	$v1,$a1,1035
    beqz	$v1,.L0da7d514
    sltiu	$v0,$a1,1036
    # Line 1002
    lw	$at,3180($s0)
.L0da7d3ec:
    addiu	$a2,$a1,-1033
    slt	$a2,$a2,$at
    beqz	$a2,.L0da7d5bc
    # Line 1004
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    # Line 1008
    b	.L0da7d41c
    # Line 1007
    sw	$a1,1788($s0)
.L0da7d408:
    # Line 984
    li	$v0,1031
    bne	$a1,$v0,.L0da7d470
    # Line 1011
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da7d414:
    sd	$ra,16($sp)
.L0da7d418:
    # Line 995
    sw	$a1,1788($s0)
.L0da7d41c:
    # Line 1094
    # lw $t9, -32064($gp) # &__glMgrasSetData
    la	$a0,SYMBOL_LOCATION
    # Line 1092
    sw	$a1,1792($s0)
    # Line 1094
    bal __glMgrasSetData
    lw	$a0,608($a0)
    # Line 1095
    # lw $t9, -32056($gp) # &__glMgrasDrawBuffer
    bal __glMgrasDrawBuffer
    lw	$a0,1788($s0)
    # Line 1096
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7d450:
    # Line 984
    sltiu	$a2,$a1,1032
    bnez	$a2,.L0da7d408
    sltiu	$at,$a1,1033
    bnez	$at,.L0da7d414
    li	$v0,1033
    beql	$a1,$v0,.L0da7d3ec
    # Line 1002
    lw	$at,3180($s0)
    # Line 1011
    # lw $t9, -27320($gp) # &__glSetError
.L0da7d470:
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1012
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7d490:
    # Line 1013
    lbu	$v1,3106($s0)
    # Line 1014
    sltiu	$at,$a1,1034
    # Line 1013
    beqz	$v1,.L0da7d59c
    # Line 1014
    sltiu	$a2,$a1,1031
    # Line 1013
    beqzl	$a0,.L0da7d5dc
    # Line 1014
    sltiu	$at,$a1,1026
    bnezl	$a2,.L0da7d54c
    sd	$ra,16($sp)
    bnez	$at,.L0da7d57c
    sltiu	$v0,$a1,1035
    beqz	$v0,.L0da7d670
    sltiu	$a2,$a1,1036
    # Line 1044
    lw	$a2,3180($s0)
.L0da7d4c4:
    addiu	$v1,$a1,-1033
    slt	$v1,$v1,$a2
    beqz	$v1,.L0da7d7d4
    # Line 1046
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    # Line 1050
    b	.L0da7d41c
    # Line 1049
    sw	$a1,1788($s0)
.L0da7d4e0:
    # Line 984
    sltiu	$at,$a1,1026
    bnez	$at,.L0da7d52c
    sltiu	$v0,$a1,1027
    bnez	$v0,.L0da7d414
    sltiu	$v1,$a1,1028
    bnez	$v1,.L0da7d630
    sltiu	$a2,$a1,1029
    bnez	$a2,.L0da7d414
    li	$at,1029
    bne	$a1,$at,.L0da7d470
    # Line 1011
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da7d418
    sd	$ra,16($sp)
.L0da7d514:
    # Line 984
    bnez	$v0,.L0da7d558
    sltiu	$v1,$a1,1037
    beqz	$v1,.L0da7d470
    # Line 1011
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da7d3ec
    # Line 1002
    lw	$at,3180($s0)
.L0da7d52c:
    # Line 984
    bnez	$a2,.L0da7d56c
    sltiu	$at,$a1,1025
    bnez	$at,.L0da7d414
    li	$v0,1025
    bne	$a1,$v0,.L0da7d470
    # Line 1011
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da7d418
    sd	$ra,16($sp)
.L0da7d54c:
    # Line 1031
    li	$v1,1032
    # Line 1032
    b	.L0da7d41c
    # Line 1031
    sw	$v1,1788($s0)
.L0da7d558:
    # Line 984
    li	$a2,1035
    bne	$a1,$a2,.L0da7d470
    # Line 1011
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da7d3ec
    # Line 1002
    lw	$at,3180($s0)
.L0da7d56c:
    # Line 984
    bnez	$a1,.L0da7d470
    # Line 1011
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da7d418
    sd	$ra,16($sp)
.L0da7d57c:
    # Line 1014
    sltiu	$at,$a1,1032
    bnez	$at,.L0da7d644
    sltiu	$v0,$a1,1033
    beqz	$v0,.L0da7d71c
    li	$a2,1033
.L0da7d590:
    sd	$ra,16($sp)
.L0da7d594:
    # Line 1020
    b	.L0da7d41c
    # Line 1019
    sw	$a1,1788($s0)
.L0da7d59c:
    # Line 1055
    beqz	$a0,.L0da7d770
    # Line 1056
    sltiu	$v1,$a1,1031
    beqz	$v1,.L0da7d6dc
    sltiu	$v0,$a1,1034
.L0da7d5ac:
    sd	$ra,16($sp)
    # Line 1065
    li	$a2,1028
    # Line 1066
    b	.L0da7d41c
    # Line 1065
    sw	$a2,1788($s0)
.L0da7d5bc:
    sd	$ra,16($sp)
    # Line 1004
    jal	__glSetError
    li	$a0,1282
    # Line 1005
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7d5dc:
    # Line 1014
    bnez	$at,.L0da7d6b8
    sltiu	$v0,$a1,1027
    bnez	$v0,.L0da7d760
    sltiu	$v1,$a1,1028
    bnez	$v1,.L0da7d824
    sltiu	$a2,$a1,1029
    bnez	$a2,.L0da7d590
    li	$at,1029
    bne	$a1,$at,.L0da7d698
    # Line 1053
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da7d594
    sd	$ra,16($sp)
.L0da7d60c:
    # Line 978
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7d630:
    # Line 984
    li	$v0,1027
    bne	$a1,$v0,.L0da7d470
    # Line 1011
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da7d418
    sd	$ra,16($sp)
.L0da7d644:
    # Line 1014
    li	$v1,1031
    bne	$a1,$v1,.L0da7d694
    sd	$ra,16($sp)
.L0da7d650:
    # Line 1037
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 1038
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7d670:
    # Line 1014
    bnez	$a2,.L0da7d688
    sltiu	$at,$a1,1037
    beqz	$at,.L0da7d698
    # Line 1053
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da7d4c4
    # Line 1044
    lw	$a2,3180($s0)
.L0da7d688:
    # Line 1014
    li	$v0,1035
    beql	$a1,$v0,.L0da7d4c4
    # Line 1044
    lw	$a2,3180($s0)
.L0da7d694:
    # Line 1053
    # lw $t9, -27320($gp) # &__glSetError
.L0da7d698:
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1054
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7d6b8:
    # Line 1014
    sltiu	$v1,$a1,1024
    bnez	$v1,.L0da7d72c
    sltiu	$a2,$a1,1025
    bnez	$a2,.L0da7d838
    li	$at,1025
    bne	$a1,$at,.L0da7d698
    # Line 1053
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da7d650
    sd	$ra,16($sp)
.L0da7d6dc:
    # Line 1056
    bnez	$v0,.L0da7d73c
    sltiu	$v1,$a1,1035
    bnez	$v1,.L0da7d6fc
    sltiu	$a2,$a1,1036
    bnez	$a2,.L0da7d7f4
    sltiu	$at,$a1,1037
    beqz	$at,.L0da7d804
    # Line 1089
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da7d6fc:
    # Line 1080
    lw	$v1,3180($s0)
.L0da7d700:
    addiu	$v0,$a1,-1033
    slt	$v0,$v0,$v1
    beqz	$v0,.L0da7d880
    # Line 1082
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    # Line 1086
    b	.L0da7d41c
    # Line 1085
    sw	$a1,1788($s0)
.L0da7d71c:
    # Line 1014
    bne	$a1,$a2,.L0da7d698
    # Line 1053
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da7d4c4
    # Line 1044
    lw	$a2,3180($s0)
.L0da7d72c:
    # Line 1014
    bnez	$a1,.L0da7d698
    # Line 1053
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da7d594
    sd	$ra,16($sp)
.L0da7d73c:
    # Line 1056
    sltiu	$at,$a1,1032
    bnez	$at,.L0da7d7a4
    sltiu	$v0,$a1,1033
    bnez	$v0,.L0da7d5ac
    li	$v1,1033
    bne	$a1,$v1,.L0da7d804
    # Line 1089
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da7d700
    # Line 1080
    lw	$v1,3180($s0)
.L0da7d760:
    sd	$ra,16($sp)
    # Line 1027
    li	$a2,1029
    # Line 1028
    b	.L0da7d41c
    # Line 1027
    sw	$a2,1788($s0)
.L0da7d770:
    # Line 1056
    sltiu	$at,$a1,1026
    bnez	$at,.L0da7d848
    sltiu	$v0,$a1,1027
    bnez	$v0,.L0da7d7b0
    sltiu	$v1,$a1,1028
    bnez	$v1,.L0da7d8a0
    sltiu	$a2,$a1,1029
    bnez	$a2,.L0da7d5ac
    li	$at,1029
    bne	$a1,$at,.L0da7d804
    # Line 1089
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da7d7b0
    sd	$ra,16($sp)
.L0da7d7a4:
    # Line 1056
    li	$v0,1031
    bne	$a1,$v0,.L0da7d800
    sd	$ra,16($sp)
.L0da7d7b0:
    # Line 1073
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 1074
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7d7d4:
    sd	$ra,16($sp)
    # Line 1046
    jalr	$t9
    li	$a0,1282
    # Line 1047
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7d7f4:
    # Line 1056
    li	$v1,1035
    beql	$a1,$v1,.L0da7d700
    # Line 1080
    lw	$v1,3180($s0)
.L0da7d800:
    # Line 1089
    # lw $t9, -27320($gp) # &__glSetError
.L0da7d804:
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1090
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7d824:
    # Line 1014
    li	$a2,1027
    bne	$a1,$a2,.L0da7d698
    # Line 1053
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da7d650
    sd	$ra,16($sp)
.L0da7d838:
    sd	$ra,16($sp)
    # Line 1023
    li	$at,1028
    # Line 1024
    b	.L0da7d41c
    # Line 1023
    sw	$at,1788($s0)
.L0da7d848:
    # Line 1056
    sltiu	$v0,$a1,1024
    bnez	$v0,.L0da7d86c
    sltiu	$v1,$a1,1025
    bnez	$v1,.L0da7d5ac
    li	$a2,1025
    bne	$a1,$a2,.L0da7d804
    # Line 1089
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da7d7b0
    sd	$ra,16($sp)
.L0da7d86c:
    # Line 1056
    bnez	$a1,.L0da7d804
    # Line 1089
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    # Line 1059
    b	.L0da7d41c
    # Line 1058
    sw	$zero,1788($s0)
.L0da7d880:
    sd	$ra,16($sp)
    # Line 1082
    jal	__glSetError
    li	$a0,1282
    # Line 1083
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7d8a0:
    # Line 1056
    li	$at,1027
    bne	$a1,$at,.L0da7d804
    # Line 1089
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0da7d7b0
    sd	$ra,16($sp)
.end __glMgrim_DrawBuffer

# Function: __glMgrim_LineStipple
# Declared: Line 1108 (Source lines: 1108-1125)
# Address: 0x0da7d8b4 - 0x0da7d99c (Size: 232 bytes, Frame: 32)
.globl __glMgrim_LineStipple
.ent __glMgrim_LineStipple
__glMgrim_LineStipple:
    # Line 1108
    li	$a5,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v0,0x18
    addiu	$v0,$v0,3556
    beq	$at,$a5,.L0da7d97c
    addu	$gp,$t9,$v0
    # Line 1120
    li	$a6,15
    # Line 1111
    blez	$a0,.L0da7d974
    # Line 1123
    lui	$v0,0x7
.L0da7d8e0:
    # Line 1119
    move	$a4,$zero
    # Line 1120
    move	$a3,$zero
    # Line 1114
    slti	$v1,$a0,257
    bnez	$v1,.L0da7d8fc
    # Line 1120
    li	$a7,16
    # Line 1117
    li	$a0,256
    # Line 1120
    li	$a7,16
.L0da7d8fc:
    # Line 1123
    addiu	$v1,$a0,-1
    b	.L0da7d944
    li	$a0,17928
.L0da7d908:
    # Line 1122
    sllv	$at,$a5,$at
    or	$a4,$at,$a4
    andi	$a4,$a4,0xffff
.L0da7d914:
    # Line 1120
    andi	$at,$a1,0x1
    srl	$a1,$a1,0x1
    addiu	$a3,$a3,1
    beqz	$at,.L0da7d938
    andi	$a3,$a3,0xffff
    # Line 1122
    subu	$at,$a6,$a3
    sllv	$at,$a5,$at
    or	$a4,$at,$a4
    andi	$a4,$a4,0xffff
.L0da7d938:
    # Line 1120
    addiu	$a3,$a3,1
    andi	$a3,$a3,0xffff
    beq	$a7,$a3,.L0da7d958
.L0da7d944:
    andi	$at,$a1,0x1
    beqz	$at,.L0da7d914
    srl	$a1,$a1,0x1
    b	.L0da7d908
    # Line 1122
    subu	$at,$a6,$a3
.L0da7d958:
    # Line 1123
    ori	$v0,$v0,0x4080
    ld	$gp,0($sp)
    # Line 1125
    addiu	$sp,$sp,32
    # Line 1123
    sw	$a0,0($v0)
    sw	$v1,0($v0)
    # Line 1125
    jr	$ra
    # Line 1124
    sw	$a4,0($v0)
.L0da7d974:
    b	.L0da7d8e0
    # Line 1114
    li	$a0,1
.L0da7d97c:
    # Line 1111
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_LineStipple

# Function: __glMgrim_SoftLineWidth
# Declared: Line 1128 (Source lines: 1128-1147)
# Address: 0x0da7d99c - 0x0da7da84 (Size: 232 bytes, Frame: 48)
.globl __glMgrim_SoftLineWidth
.ent __glMgrim_SoftLineWidth
__glMgrim_SoftLineWidth:
    # Line 1130
    lw	$a0,__glCurrentContext
    li	$v0,1
    # Line 1128
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # Line 1130
    lw	$at,__glBeginMode
    # Line 1128
    lui	$v1,0x18
    addiu	$v1,$v1,3324
    # Line 1130
    beq	$at,$v0,.L0da7da64
    # Line 1128
    addu	$gp,$t9,$v1
    # Line 1130
    dmtc1	$zero,$f1
    cvt.d.s	$f0,$f12
    c.le.d	$f0,$f1
    sd	$ra,16($sp)
    sd	$a0,24($sp)
    bc1t	.L0da7da28
    sdc1	$f0,0($sp)
    # Line 1137
    # lw $t9, -27912($gp) # &__glim_LineWidth
    jal	__glim_LineWidth
    nop
    ldc1	$f3,0($sp)
    ldc1	$f2,_lit8_3ff0000000000000
    ld	$ra,16($sp)
    ld	$a0,24($sp)
    c.lt.d	$f2,$f3
    lui	$a2,0x1
    addu	$a2,$a0,$a2
    bc1t	.L0da7da44
    lw	$a3,-28068($a2)
    # Line 1142
    li	$at,-5
    and	$at,$a3,$at
    beqz	$at,.L0da7da50
    sw	$at,-28068($a2)
.L0da7da1c:
    ld	$gp,8($sp)
    # Line 1147
    jr	$ra
    addiu	$sp,$sp,48
.L0da7da28:
    # Line 1134
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    # Line 1135
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7da44:
    # Line 1140
    ori	$v0,$a3,0x4
    b	.L0da7da1c
    sw	$v0,-28068($a2)
.L0da7da50:
    # Line 1144
    # lw $t9, -29604($gp) # &__glMgrExitSoftPath
    jal	__glMgrExitSoftPath
    nop
    b	.L0da7da1c
    ld	$ra,16($sp)
.L0da7da64:
    # Line 1130
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_SoftLineWidth

# Function: __glMgrim_LineWidth
# Declared: Line 1159 (Source lines: 1159-1180)
# Address: 0x0da7da84 - 0x0da7dbc0 (Size: 316 bytes, Frame: 192)
.globl __glMgrim_LineWidth
.ent __glMgrim_LineWidth
__glMgrim_LineWidth:
    # Line 1162
    li	$v0,1
    # Line 1159
    addiu	$sp,$sp,-64
    sd	$s3,16($sp)
    # Line 1162
    lw	$s3,__glCurrentContext
    sdc1	$f20,0($sp)
    # Line 1159
    mov.s	$f20,$f12
    sd	$gp,24($sp)
    # Line 1162
    lw	$at,__glBeginMode
    # Line 1159
    lui	$v1,0x18
    addiu	$v1,$v1,3092
    # Line 1162
    beq	$at,$v0,.L0da7db98
    # Line 1159
    addu	$gp,$t9,$v1
    # Line 1162
    dmtc1	$zero,$f0
    cvt.d.s	$f4,$f20
    c.le.d	$f4,$f0
    nop
    bc1t	.L0da7db70
    # Line 1168
    ldc1	$f1,_lit8_3ff0000000000000
    lui	$a0,0x1
    addu	$a0,$s3,$a0
    lbu	$a1,-28063($a0)
    beqzl	$a1,.L0da7db4c
    ld	$gp,24($sp)
    c.lt.d	$f1,$f4
    nop
    bc1f	.L0da7db48
    sd	$a0,8($sp)
    # Line 1172
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    sd	$ra,32($sp)
    jal	__glMgrim_IsEnabled
    li	$a0,2848
    beqz	$v0,.L0da7db48
    ld	$ra,32($sp)
    # Line 1173
    # lw $t9, -29672($gp) # &__glMgrEnterSoftPath
    jal	__glMgrEnterSoftPath
    move	$a0,$s3
    ld	$a2,8($sp)
    # Line 1174
    lw	$a1,-28068($a2)
    # Line 1175
    # lw $t9, -27912($gp) # &__glim_LineWidth
    mov.s	$f12,$f20
    # Line 1174
    ori	$a1,$a1,0x4
    # Line 1175
    jal	__glim_LineWidth
    # Line 1174
    sw	$a1,-28068($a2)
    ld	$gp,24($sp)
    # Line 1176
    ld	$ra,32($sp)
    ld	$s3,16($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da7db48:
    ld	$gp,24($sp)
.L0da7db4c:
    # Line 1179
    li	$at,17668
    lui	$s3,0x7
    ori	$s3,$s3,0x4080
    sw	$at,0($s3)
    swc1	$f20,0($s3)
    # Line 1180
    ld	$s3,16($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da7db70:
    # Line 1167
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$gp,24($sp)
    # Line 1168
    ld	$ra,32($sp)
    ld	$s3,16($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da7db98:
    # Line 1162
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,24($sp)
    ld	$ra,32($sp)
    ld	$s3,16($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_LineWidth

# Function: __glMgrim_PointSize
# Declared: Line 1192 (Source lines: 1192-1200)
# Address: 0x0da7dbc0 - 0x0da7dc50 (Size: 144 bytes, Frame: 32)
.globl __glMgrim_PointSize
.ent __glMgrim_PointSize
__glMgrim_PointSize:
    # Line 1199
    lui	$a0,0x7
    # Line 1192
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x18
    addiu	$v1,$v1,2776
    beq	$at,$v0,.L0da7dc30
    addu	$gp,$t9,$v1
    # Line 1194
    mtc1	$zero,$f0
    c.le.s	$f12,$f0
    nop
    bc1t	.L0da7dc10
    # Line 1199
    ori	$a0,$a0,0x4080
    ld	$gp,0($sp)
    # Line 1200
    addiu	$sp,$sp,32
    # Line 1199
    li	$a1,19716
    sw	$a1,0($a0)
    # Line 1200
    jr	$ra
    # Line 1199
    swc1	$f12,0($a0)
.L0da7dc10:
    # Line 1196
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 1197
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da7dc30:
    # Line 1194
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_PointSize

# Function: __glMgrim_ShadeModel
# Declared: Line 1212 (Source lines: 1212-1221)
# Address: 0x0da7dc50 - 0x0da7dce0 (Size: 144 bytes, Frame: 32)
.globl __glMgrim_ShadeModel
.ent __glMgrim_ShadeModel
__glMgrim_ShadeModel:
    # Line 1212
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x18
    addiu	$v1,$v1,2632
    beq	$at,$v0,.L0da7dcc0
    addu	$gp,$t9,$v1
    # Line 1216
    sltiu	$a1,$a0,7424
    bnez	$a1,.L0da7dca0
    # Line 1220
    lui	$v0,0x7
    # Line 1216
    sltiu	$at,$a0,7426
    beqz	$at,.L0da7dca0
    # Line 1220
    ori	$v0,$v0,0x4080
    ld	$gp,0($sp)
    # Line 1221
    addiu	$sp,$sp,32
    # Line 1220
    li	$v1,18180
    sw	$v1,0($v0)
    # Line 1221
    jr	$ra
    # Line 1220
    sw	$a0,0($v0)
.L0da7dca0:
    # Line 1217
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1218
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da7dcc0:
    # Line 1214
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_ShadeModel

# Function: __glMgrim_DepthRange
# Declared: Line 1233 (Source lines: 1233-1239)
# Address: 0x0da7dce0 - 0x0da7dd4c (Size: 108 bytes, Frame: 32)
.globl __glMgrim_DepthRange
.ent __glMgrim_DepthRange
__glMgrim_DepthRange:
    # Line 1237
    lui	$a0,0x7
    # Line 1233
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x18
    addiu	$v1,$v1,2488
    beq	$at,$v0,.L0da7dd2c
    addu	$gp,$t9,$v1
    # Line 1237
    ori	$a0,$a0,0x4080
    ld	$gp,0($sp)
    cvt.s.d	$f1,$f12
    # Line 1239
    addiu	$sp,$sp,32
    # Line 1237
    li	$a1,18440
    # Line 1238
    cvt.s.d	$f0,$f13
    # Line 1237
    sw	$a1,0($a0)
    swc1	$f1,0($a0)
    # Line 1239
    jr	$ra
    # Line 1238
    swc1	$f0,0($a0)
.L0da7dd2c:
    # Line 1235
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_DepthRange

# Function: __glMgrim_BlendColorEXT
# Declared: Line 1251 (Source lines: 1251-1260)
# Address: 0x0da7dd4c - 0x0da7ddb8 (Size: 108 bytes, Frame: 48)
.globl __glMgrim_BlendColorEXT
.ent __glMgrim_BlendColorEXT
__glMgrim_BlendColorEXT:
    # Line 1255
    lui	$a0,0x7
    # Line 1251
    li	$v0,1
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x18
    addiu	$v1,$v1,2380
    beq	$at,$v0,.L0da7dd98
    addu	$gp,$t9,$v1
    # Line 1255
    ori	$a0,$a0,0x4080
    ld	$gp,0($sp)
    # Line 1260
    addiu	$sp,$sp,48
    # Line 1255
    li	$a1,0xd910
    sw	$a1,0($a0)
    # Line 1256
    swc1	$f12,0($a0)
    # Line 1257
    swc1	$f13,0($a0)
    # Line 1258
    swc1	$f14,0($a0)
    # Line 1260
    jr	$ra
    # Line 1259
    swc1	$f15,0($a0)
.L0da7dd98:
    # Line 1253
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_BlendColorEXT

# Function: __glMgrim_TexGenfv
# Declared: Line 1264 (Source lines: 1264-1336)
# Address: 0x0da7ddb8 - 0x0da7dfdc (Size: 548 bytes, Frame: 48)
.globl __glMgrim_TexGenfv
.ent __glMgrim_TexGenfv
__glMgrim_TexGenfv:
    # Line 1267
    lw	$a4,__glCurrentContext
    li	$v0,1
    # Line 1264
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 1267
    lw	$at,__glBeginMode
    # Line 1264
    lui	$v1,0x18
    addiu	$v1,$v1,2272
    # Line 1267
    beq	$at,$v0,.L0da7dfa0
    # Line 1264
    addu	$gp,$t9,$v1
    # Line 1271
    li	$a3,8192
    beq	$a0,$a3,.L0da7de60
    li	$at,8193
    beq	$a0,$at,.L0da7de6c
    li	$v0,8194
    beq	$a0,$v0,.L0da7de78
    li	$v1,8195
    beq	$a0,$v1,.L0da7de1c
    # Line 1285
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1286
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7de1c:
    # Line 1282
    addiu	$a5,$a4,2248
    # Line 1290
    li	$a3,9472
.L0da7de24:
    beq	$a1,$a3,.L0da7de84
    li	$at,9473
    beq	$a1,$at,.L0da7df40
    # Line 1309
    li	$v1,23304
    # Line 1290
    li	$v0,9474
    # Line 1325
    lui	$a3,0x7
    # Line 1290
    beq	$a1,$v0,.L0da7dee0
    # Line 1333
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1334
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7de60:
    # Line 1273
    addiu	$a5,$a4,1876
    # Line 1274
    b	.L0da7de24
    # Line 1290
    li	$a3,9472
.L0da7de6c:
    # Line 1276
    addiu	$a5,$a4,2000
    # Line 1277
    b	.L0da7de24
    # Line 1290
    li	$a3,9472
.L0da7de78:
    # Line 1279
    addiu	$a5,$a4,2124
    # Line 1280
    b	.L0da7de24
    # Line 1290
    li	$a3,9472
.L0da7de84:
    # Line 1292
    lwc1	$f0,0($a2)
    trunc.l.s	$f0,$f0
    dmfc1	$a4,$f0
    li	$v1,9218
    sll	$a4,$a4,0x0
    bne	$a4,$v1,.L0da7deac
    # Line 1296
    li	$a3,23052
    # Line 1292
    sltiu	$at,$a0,8194
    beqz	$at,.L0da7dfc0
    # Line 1293
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da7deac:
    # Line 1299
    sw	$a4,0($a5)
    # Line 1301
    lwc1	$f1,0($a2)
    trunc.l.s	$f1,$f1
    # Line 1296
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sw	$a3,0($v1)
    # Line 1301
    dmfc1	$v0,$f1
    # Line 1296
    sw	$a0,0($v1)
    # Line 1297
    sw	$a1,0($v1)
    # Line 1301
    sw	$v0,0($v1)
.L0da7ded4:
    ld	$gp,0($sp)
    # Line 1336
    jr	$ra
    addiu	$sp,$sp,48
.L0da7dee0:
    # Line 1325
    ori	$a3,$a3,0x4080
    # Line 1320
    lwc1	$f1,0($a2)
    swc1	$f1,4($a5)
    # Line 1321
    lwc1	$f0,4($a2)
    swc1	$f0,8($a5)
    # Line 1322
    lwc1	$f3,8($a2)
    swc1	$f3,12($a5)
    # Line 1327
    li	$at,23568
    # Line 1323
    lwc1	$f2,12($a2)
    # Line 1325
    li	$v0,23304
    sw	$v0,0($a3)
    # Line 1323
    swc1	$f2,16($a5)
    # Line 1325
    sw	$a0,0($a3)
    # Line 1327
    lwc1	$f1,0($a2)
    # Line 1326
    sw	$a1,0($a3)
    # Line 1327
    sw	$at,0($a3)
    swc1	$f1,0($a3)
    # Line 1328
    lwc1	$f0,4($a2)
    swc1	$f0,0($a3)
    # Line 1329
    lwc1	$f3,8($a2)
    swc1	$f3,0($a3)
    # Line 1330
    lwc1	$f2,12($a2)
    # Line 1331
    b	.L0da7ded4
    # Line 1330
    swc1	$f2,0($a3)
.L0da7df40:
    # Line 1304
    lwc1	$f1,0($a2)
    swc1	$f1,20($a5)
    # Line 1305
    lwc1	$f0,4($a2)
    swc1	$f0,24($a5)
    # Line 1311
    li	$v0,23568
    # Line 1306
    lwc1	$f3,8($a2)
    # Line 1309
    lui	$at,0x7
    ori	$at,$at,0x4080
    # Line 1306
    swc1	$f3,28($a5)
    # Line 1309
    sw	$v1,0($at)
    # Line 1307
    lwc1	$f2,12($a2)
    # Line 1309
    sw	$a0,0($at)
    # Line 1310
    sw	$a1,0($at)
    # Line 1307
    swc1	$f2,32($a5)
    # Line 1311
    sw	$v0,0($at)
    # Line 1314
    lwc1	$f2,12($a2)
    # Line 1311
    lwc1	$f1,0($a2)
    # Line 1312
    lwc1	$f0,4($a2)
    # Line 1313
    lwc1	$f3,8($a2)
    # Line 1311
    swc1	$f1,0($at)
    # Line 1312
    swc1	$f0,0($at)
    # Line 1313
    swc1	$f3,0($at)
    # Line 1315
    b	.L0da7ded4
    # Line 1314
    swc1	$f2,0($at)
.L0da7dfa0:
    # Line 1267
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7dfc0:
    sd	$ra,8($sp)
    # Line 1293
    jalr	$t9
    li	$a0,1280
    # Line 1294
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_TexGenfv

# Function: __glMgrim_TexGenf
# Declared: Line 1341 (Source lines: 1341-1351)
# Address: 0x0da7dfdc - 0x0da7e038 (Size: 92 bytes, Frame: 48)
.globl __glMgrim_TexGenf
.ent __glMgrim_TexGenf
__glMgrim_TexGenf:
    # Line 1341
    li	$at,9472
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    swc1	$f14,32($sp)
    sd	$gp,0($sp)
    lui	$v0,0x18
    addiu	$v0,$v0,1724
    beq	$a1,$at,.L0da7e01c
    addu	$gp,$t9,$v0
    # Line 1348
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 1349
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7e01c:
    # Line 1345
    # lw $t9, -32024($gp) # &__glMgrim_TexGenfv
    bal __glMgrim_TexGenfv
    addiu	$a2,$sp,32
    # Line 1351
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_TexGenf

# Function: __glMgrim_TexGendv
# Declared: Line 1355 (Source lines: 1355-1424)
# Address: 0x0da7e038 - 0x0da7e29c (Size: 612 bytes, Frame: 48)
.globl __glMgrim_TexGendv
.ent __glMgrim_TexGendv
__glMgrim_TexGendv:
    # Line 1358
    lw	$a4,__glCurrentContext
    li	$v0,1
    # Line 1355
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 1358
    lw	$at,__glBeginMode
    # Line 1355
    lui	$v1,0x18
    addiu	$v1,$v1,1632
    # Line 1358
    beq	$at,$v0,.L0da7e260
    # Line 1355
    addu	$gp,$t9,$v1
    # Line 1362
    li	$a3,8192
    beq	$a0,$a3,.L0da7e0e0
    li	$at,8193
    beq	$a0,$at,.L0da7e0ec
    li	$v0,8194
    beq	$a0,$v0,.L0da7e0f8
    li	$v1,8195
    beq	$a0,$v1,.L0da7e09c
    # Line 1376
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1377
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7e09c:
    # Line 1373
    addiu	$a5,$a4,2248
    # Line 1379
    li	$a3,9472
.L0da7e0a4:
    beq	$a1,$a3,.L0da7e104
    li	$at,9473
    beq	$a1,$at,.L0da7e1e0
    # Line 1397
    li	$v1,23304
    # Line 1379
    li	$v0,9474
    # Line 1413
    lui	$a3,0x7
    # Line 1379
    beq	$a1,$v0,.L0da7e160
    # Line 1421
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1422
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7e0e0:
    # Line 1364
    addiu	$a5,$a4,1876
    # Line 1365
    b	.L0da7e0a4
    # Line 1379
    li	$a3,9472
.L0da7e0ec:
    # Line 1367
    addiu	$a5,$a4,2000
    # Line 1368
    b	.L0da7e0a4
    # Line 1379
    li	$a3,9472
.L0da7e0f8:
    # Line 1370
    addiu	$a5,$a4,2124
    # Line 1371
    b	.L0da7e0a4
    # Line 1379
    li	$a3,9472
.L0da7e104:
    # Line 1381
    ldc1	$f0,0($a2)
    trunc.l.d	$f0,$f0
    dmfc1	$a4,$f0
    li	$v1,9218
    sll	$a4,$a4,0x0
    bne	$a4,$v1,.L0da7e12c
    # Line 1385
    li	$a3,23052
    # Line 1381
    sltiu	$at,$a0,8194
    beqz	$at,.L0da7e280
    # Line 1382
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da7e12c:
    # Line 1388
    sw	$a4,0($a5)
    # Line 1389
    ldc1	$f1,0($a2)
    trunc.l.d	$f1,$f1
    # Line 1385
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sw	$a3,0($v1)
    # Line 1389
    dmfc1	$v0,$f1
    # Line 1385
    sw	$a0,0($v1)
    # Line 1386
    sw	$a1,0($v1)
    # Line 1389
    sw	$v0,0($v1)
.L0da7e154:
    ld	$gp,0($sp)
    # Line 1424
    jr	$ra
    addiu	$sp,$sp,48
.L0da7e160:
    # Line 1413
    ori	$a3,$a3,0x4080
    # Line 1408
    ldc1	$f1,0($a2)
    cvt.s.d	$f1,$f1
    swc1	$f1,4($a5)
    # Line 1409
    ldc1	$f0,8($a2)
    cvt.s.d	$f0,$f0
    swc1	$f0,8($a5)
    # Line 1410
    ldc1	$f3,16($a2)
    cvt.s.d	$f3,$f3
    swc1	$f3,12($a5)
    # Line 1411
    ldc1	$f2,24($a2)
    cvt.s.d	$f2,$f2
    swc1	$f2,16($a5)
    # Line 1415
    li	$at,23568
    ldc1	$f1,0($a2)
    # Line 1413
    li	$v0,23304
    sw	$v0,0($a3)
    # Line 1415
    cvt.s.d	$f1,$f1
    # Line 1413
    sw	$a0,0($a3)
    # Line 1414
    sw	$a1,0($a3)
    # Line 1415
    sw	$at,0($a3)
    swc1	$f1,0($a3)
    # Line 1416
    ldc1	$f0,8($a2)
    cvt.s.d	$f0,$f0
    swc1	$f0,0($a3)
    # Line 1417
    ldc1	$f3,16($a2)
    cvt.s.d	$f3,$f3
    swc1	$f3,0($a3)
    # Line 1418
    ldc1	$f2,24($a2)
    cvt.s.d	$f2,$f2
    # Line 1419
    b	.L0da7e154
    # Line 1418
    swc1	$f2,0($a3)
.L0da7e1e0:
    # Line 1392
    ldc1	$f2,0($a2)
    cvt.s.d	$f2,$f2
    swc1	$f2,20($a5)
    # Line 1393
    ldc1	$f1,8($a2)
    cvt.s.d	$f1,$f1
    swc1	$f1,24($a5)
    # Line 1394
    ldc1	$f0,16($a2)
    cvt.s.d	$f0,$f0
    swc1	$f0,28($a5)
    # Line 1395
    ldc1	$f3,24($a2)
    cvt.s.d	$f3,$f3
    swc1	$f3,32($a5)
    # Line 1401
    ldc1	$f3,16($a2)
    # Line 1399
    li	$v0,23568
    # Line 1397
    lui	$at,0x7
    # Line 1401
    cvt.s.d	$f3,$f3
    # Line 1400
    ldc1	$f0,8($a2)
    # Line 1397
    ori	$at,$at,0x4080
    sw	$v1,0($at)
    # Line 1400
    cvt.s.d	$f0,$f0
    # Line 1399
    ldc1	$f1,0($a2)
    # Line 1397
    sw	$a0,0($at)
    # Line 1402
    ldc1	$f2,24($a2)
    # Line 1399
    cvt.s.d	$f1,$f1
    # Line 1398
    sw	$a1,0($at)
    # Line 1399
    sw	$v0,0($at)
    # Line 1402
    cvt.s.d	$f2,$f2
    # Line 1399
    swc1	$f1,0($at)
    # Line 1400
    swc1	$f0,0($at)
    # Line 1401
    swc1	$f3,0($at)
    # Line 1403
    b	.L0da7e154
    # Line 1402
    swc1	$f2,0($at)
.L0da7e260:
    # Line 1358
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7e280:
    sd	$ra,8($sp)
    # Line 1382
    jalr	$t9
    li	$a0,1280
    # Line 1383
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_TexGendv

# Function: __glMgrim_TexGend
# Declared: Line 1427 (Source lines: 1427-1437)
# Address: 0x0da7e29c - 0x0da7e2f8 (Size: 92 bytes, Frame: 48)
.globl __glMgrim_TexGend
.ent __glMgrim_TexGend
__glMgrim_TexGend:
    # Line 1427
    li	$at,9472
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    sdc1	$f14,32($sp)
    sd	$gp,0($sp)
    lui	$v0,0x18
    addiu	$v0,$v0,1020
    beq	$a1,$at,.L0da7e2dc
    addu	$gp,$t9,$v0
    # Line 1434
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 1435
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7e2dc:
    # Line 1431
    # lw $t9, -32016($gp) # &__glMgrim_TexGendv
    bal __glMgrim_TexGendv
    addiu	$a2,$sp,32
    # Line 1437
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_TexGend

# Function: __glMgrim_TexGeniv
# Declared: Line 1440 (Source lines: 1440-1511)
# Address: 0x0da7e2f8 - 0x0da7e568 (Size: 624 bytes, Frame: 48)
.globl __glMgrim_TexGeniv
.ent __glMgrim_TexGeniv
__glMgrim_TexGeniv:
    # Line 1443
    lw	$a4,__glCurrentContext
    li	$v0,1
    # Line 1440
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 1443
    lw	$at,__glBeginMode
    # Line 1440
    lui	$v1,0x18
    addiu	$v1,$v1,928
    # Line 1443
    beq	$at,$v0,.L0da7e528
    # Line 1440
    addu	$gp,$t9,$v1
    # Line 1447
    li	$a3,8192
    beq	$a0,$a3,.L0da7e398
    li	$at,8193
    beq	$a0,$at,.L0da7e3a4
    li	$v0,8194
    beq	$a0,$v0,.L0da7e3b0
    li	$v1,8195
    beq	$a0,$v1,.L0da7e35c
    # Line 1461
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1462
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7e35c:
    # Line 1458
    addiu	$a5,$a4,2248
    # Line 1466
    li	$a3,9472
.L0da7e364:
    beq	$a1,$a3,.L0da7e3bc
    li	$at,9473
    beq	$a1,$at,.L0da7e494
    li	$v0,9474
    beq	$a1,$v0,.L0da7e400
    # Line 1508
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1509
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7e398:
    # Line 1449
    addiu	$a5,$a4,1876
    # Line 1450
    b	.L0da7e364
    # Line 1466
    li	$a3,9472
.L0da7e3a4:
    # Line 1452
    addiu	$a5,$a4,2000
    # Line 1453
    b	.L0da7e364
    # Line 1466
    li	$a3,9472
.L0da7e3b0:
    # Line 1455
    addiu	$a5,$a4,2124
    # Line 1456
    b	.L0da7e364
    # Line 1466
    li	$a3,9472
.L0da7e3bc:
    # Line 1468
    lw	$a4,0($a2)
    li	$v1,9218
    bne	$a4,$v1,.L0da7e3d0
    sltiu	$a3,$a0,8194
    beqz	$a3,.L0da7e548
.L0da7e3d0:
    # Line 1472
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    li	$v1,23052
    # Line 1475
    sw	$a4,0($a5)
    # Line 1472
    sw	$v1,0($v0)
    # Line 1477
    lw	$at,0($a2)
    # Line 1472
    sw	$a0,0($v0)
    # Line 1473
    sw	$a1,0($v0)
    # Line 1477
    sw	$at,0($v0)
.L0da7e3f4:
    ld	$gp,0($sp)
    # Line 1511
    jr	$ra
    addiu	$sp,$sp,48
.L0da7e400:
    # Line 1495
    lw	$at,0($a2)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,20($a5)
    # Line 1496
    lw	$a3,4($a2)
    mtc1	$a3,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,24($a5)
    # Line 1497
    lw	$v1,8($a2)
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,28($a5)
    # Line 1498
    lw	$v0,12($a2)
    mtc1	$v0,$f0
    # Line 1502
    lui	$at,0x1800
    # Line 1498
    cvt.s.w	$f0,$f0
    # Line 1502
    ori	$at,$at,0x5c10
    # Line 1500
    lui	$a3,0x7
    ori	$a3,$a3,0x4080
    li	$v0,23304
    sw	$v0,0($a3)
    # Line 1498
    swc1	$f0,32($a5)
    # Line 1500
    sw	$a0,0($a3)
    # Line 1502
    lw	$v1,0($a2)
    # Line 1501
    sw	$a1,0($a3)
    # Line 1502
    sw	$at,0($a3)
    sw	$v1,0($a3)
    # Line 1503
    lw	$v0,4($a2)
    sw	$v0,0($a3)
    # Line 1504
    lw	$at,8($a2)
    sw	$at,0($a3)
    # Line 1505
    lw	$v1,12($a2)
    # Line 1506
    b	.L0da7e3f4
    # Line 1505
    sw	$v1,0($a3)
.L0da7e494:
    # Line 1487
    lui	$a7,0x1800
    # Line 1480
    lw	$a3,0($a2)
    mtc1	$a3,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,20($a5)
    # Line 1481
    lw	$v1,4($a2)
    mtc1	$v1,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,24($a5)
    # Line 1482
    lw	$v0,8($a2)
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,28($a5)
    # Line 1483
    lw	$at,12($a2)
    mtc1	$at,$f0
    # Line 1487
    ori	$a7,$a7,0x5c10
    # Line 1485
    lui	$v1,0x7
    # Line 1483
    cvt.s.w	$f0,$f0
    # Line 1485
    ori	$v1,$v1,0x4080
    li	$at,23304
    sw	$at,0($v1)
    sw	$a0,0($v1)
    # Line 1486
    sw	$a1,0($v1)
    # Line 1483
    swc1	$f0,32($a5)
    # Line 1487
    sw	$a7,0($v1)
    # Line 1490
    lw	$v0,12($a2)
    # Line 1487
    lw	$a6,0($a2)
    # Line 1488
    lw	$a4,4($a2)
    # Line 1489
    lw	$a3,8($a2)
    # Line 1487
    sw	$a6,0($v1)
    # Line 1488
    sw	$a4,0($v1)
    # Line 1489
    sw	$a3,0($v1)
    # Line 1491
    b	.L0da7e3f4
    # Line 1490
    sw	$v0,0($v1)
.L0da7e528:
    # Line 1443
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7e548:
    # Line 1469
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1470
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_TexGeniv

# Function: __glMgrim_TexGeni
# Declared: Line 1514 (Source lines: 1514-1524)
# Address: 0x0da7e568 - 0x0da7e5c4 (Size: 92 bytes, Frame: 48)
.globl __glMgrim_TexGeni
.ent __glMgrim_TexGeni
__glMgrim_TexGeni:
    # Line 1514
    li	$at,9472
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    sw	$a2,36($sp)
    sd	$gp,0($sp)
    lui	$v0,0x18
    addiu	$v0,$v0,304
    beq	$a1,$at,.L0da7e5a8
    addu	$gp,$t9,$v0
    # Line 1521
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 1522
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da7e5a8:
    # Line 1518
    # lw $t9, -32008($gp) # &__glMgrim_TexGeniv
    bal __glMgrim_TexGeniv
    addiu	$a2,$sp,36
    # Line 1524
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_TexGeni

# Function: __glMgrim_SoftTexGenfv
# Declared: Line 1527 (Source lines: 1527-1612)
# Address: 0x0da7e5c4 - 0x0da7e814 (Size: 592 bytes, Frame: 224)
.globl __glMgrim_SoftTexGenfv
.ent __glMgrim_SoftTexGenfv
__glMgrim_SoftTexGenfv:
    # Line 1531
    lw	$a4,__glCurrentContext
    li	$a6,1
    # Line 1527
    addiu	$sp,$sp,-96
    sd	$gp,40($sp)
    # Line 1531
    lw	$at,__glBeginMode
    # Line 1527
    lui	$v0,0x18
    addiu	$v0,$v0,212
    # Line 1531
    beq	$at,$a6,.L0da7e7cc
    # Line 1527
    addu	$gp,$t9,$v0
    # Line 1533
    li	$v1,8192
    beq	$a0,$v1,.L0da7e670
    li	$a3,8193
    beq	$a0,$a3,.L0da7e67c
    li	$at,8194
    beq	$a0,$at,.L0da7e688
    li	$v0,8195
    beq	$a0,$v0,.L0da7e628
    # Line 1551
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1552
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da7e628:
    # Line 1547
    addiu	$a5,$a4,2248
    # Line 1555
    li	$v1,9472
.L0da7e630:
    beq	$a1,$v1,.L0da7e694
    li	$a3,9473
    beql	$a1,$a3,.L0da7e7ac
    # Line 1578
    lwc1	$f3,0($a2)
    sd	$ra,48($sp)
    sd	$a4,32($sp)
    # Line 1555
    li	$at,9474
    beq	$a1,$at,.L0da7e6e0
    sd	$a5,16($sp)
    # Line 1608
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 1609
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da7e670:
    # Line 1535
    addiu	$a5,$a4,1876
    # Line 1536
    b	.L0da7e630
    # Line 1555
    li	$v1,9472
.L0da7e67c:
    # Line 1539
    addiu	$a5,$a4,2000
    # Line 1540
    b	.L0da7e630
    # Line 1555
    li	$v1,9472
.L0da7e688:
    # Line 1543
    addiu	$a5,$a4,2124
    # Line 1544
    b	.L0da7e630
    # Line 1555
    li	$v1,9472
.L0da7e694:
    # Line 1557
    lwc1	$f0,0($a2)
    trunc.l.s	$f0,$f0
    dmfc1	$a6,$f0
    li	$v0,9216
    sll	$a6,$a6,0x0
    beq	$a6,$v0,.L0da7e7ec
    move	$a1,$a6
    li	$at,9217
    beq	$a1,$at,.L0da7e7ec
    li	$v0,9218
    beq	$a1,$v0,.L0da7e790
    # Line 1572
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1573
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da7e6e0:
    # Line 1588
    lwc1	$f4,0($a2)
    swc1	$f4,0($sp)
    # Line 1589
    lwc1	$f3,4($a2)
    swc1	$f3,4($sp)
    # Line 1590
    lwc1	$f2,8($a2)
    swc1	$f2,8($sp)
    # Line 1591
    lwc1	$f1,12($a2)
    # Line 1596
    ld	$a1,32($sp)
    # Line 1591
    swc1	$f1,12($sp)
    # Line 1597
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    # Line 1596
    lw	$a1,29712($a1)
    # Line 1597
    li	$a0,2982
    jal	__glMgrim_GetFloatv
    sd	$a1,24($sp)
    # Line 1598
    ld	$a1,24($sp)
    # Line 1600
    ld	$a0,32($sp)
    li	$a2,1
    # Line 1599
    sb	$a2,268($a1)
    # Line 1598
    sw	$zero,64($a1)
    # Line 1600
    lw	$t9,11924($a0)
    jalr	$t9
    nop
    ld	$t9,32($sp)
    # Line 1602
    move	$a0,$t9
    lw	$t9,11972($t9)
    jalr	$t9
    ld	$a1,24($sp)
    ld	$a2,24($sp)
    # Line 1603
    addiu	$a1,$sp,0
    lw	$t9,168($a2)
    ld	$a0,16($sp)
    addiu	$a2,$a2,88
    jalr	$t9
    addiu	$a0,$a0,4
    ld	$a4,32($sp)
    ld	$ra,48($sp)
.L0da7e770:
    # Line 1611
    li	$at,2
    sw	$at,__glBeginMode
    lw	$a3,11828($a4)
    ld	$gp,40($sp)
    # Line 1612
    addiu	$sp,$sp,96
    # Line 1611
    ori	$a3,$a3,0x1
    # Line 1612
    jr	$ra
    # Line 1611
    sw	$a3,11828($a4)
.L0da7e790:
    # Line 1564
    li	$v0,8194
    beq	$a0,$v0,.L0da7e7f4
    li	$v1,8195
    beq	$a0,$v1,.L0da7e7f8
    # Line 1565
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1569
    b	.L0da7e770
    # Line 1568
    sw	$a6,0($a5)
.L0da7e7ac:
    # Line 1578
    swc1	$f3,20($a5)
    # Line 1579
    lwc1	$f2,4($a2)
    swc1	$f2,24($a5)
    # Line 1580
    lwc1	$f1,8($a2)
    swc1	$f1,28($a5)
    # Line 1581
    lwc1	$f0,12($a2)
    # Line 1582
    b	.L0da7e770
    # Line 1581
    swc1	$f0,32($a5)
.L0da7e7cc:
    # Line 1531
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da7e7ec:
    # Line 1561
    b	.L0da7e770
    # Line 1560
    sw	$a6,0($a5)
.L0da7e7f4:
    # Line 1565
    # lw $t9, -27320($gp) # &__glSetError
.L0da7e7f8:
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1566
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glMgrim_SoftTexGenfv

# Function: __glMgrim_SoftTexGendv
# Declared: Line 1615 (Source lines: 1615-1700)
# Address: 0x0da7e814 - 0x0da7ea84 (Size: 624 bytes, Frame: 224)
.globl __glMgrim_SoftTexGendv
.ent __glMgrim_SoftTexGendv
__glMgrim_SoftTexGendv:
    # Line 1619
    lw	$a4,__glCurrentContext
    li	$a6,1
    # Line 1615
    addiu	$sp,$sp,-96
    sd	$gp,40($sp)
    # Line 1619
    lw	$at,__glBeginMode
    # Line 1615
    lui	$v0,0x18
    addiu	$v0,$v0,-380
    # Line 1619
    beq	$at,$a6,.L0da7ea3c
    # Line 1615
    addu	$gp,$t9,$v0
    # Line 1621
    li	$v1,8192
    beq	$a0,$v1,.L0da7e8c0
    li	$a3,8193
    beq	$a0,$a3,.L0da7e8cc
    li	$at,8194
    beq	$a0,$at,.L0da7e8d8
    li	$v0,8195
    beq	$a0,$v0,.L0da7e878
    # Line 1639
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1640
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da7e878:
    # Line 1635
    addiu	$a5,$a4,2248
    # Line 1643
    li	$v1,9472
.L0da7e880:
    beq	$a1,$v1,.L0da7e8e4
    li	$a3,9473
    beql	$a1,$a3,.L0da7ea0c
    # Line 1666
    ldc1	$f3,0($a2)
    sd	$ra,48($sp)
    sd	$a4,32($sp)
    # Line 1643
    li	$at,9474
    beq	$a1,$at,.L0da7e930
    sd	$a5,16($sp)
    # Line 1696
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 1697
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da7e8c0:
    # Line 1623
    addiu	$a5,$a4,1876
    # Line 1624
    b	.L0da7e880
    # Line 1643
    li	$v1,9472
.L0da7e8cc:
    # Line 1627
    addiu	$a5,$a4,2000
    # Line 1628
    b	.L0da7e880
    # Line 1643
    li	$v1,9472
.L0da7e8d8:
    # Line 1631
    addiu	$a5,$a4,2124
    # Line 1632
    b	.L0da7e880
    # Line 1643
    li	$v1,9472
.L0da7e8e4:
    # Line 1645
    ldc1	$f0,0($a2)
    trunc.l.d	$f0,$f0
    dmfc1	$a6,$f0
    li	$v0,9216
    sll	$a6,$a6,0x0
    beq	$a6,$v0,.L0da7ea5c
    move	$a1,$a6
    li	$at,9217
    beq	$a1,$at,.L0da7ea5c
    li	$v0,9218
    beq	$a1,$v0,.L0da7e9f0
    # Line 1660
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1661
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da7e930:
    # Line 1676
    ldc1	$f4,0($a2)
    cvt.s.d	$f4,$f4
    swc1	$f4,0($sp)
    # Line 1677
    ldc1	$f3,8($a2)
    cvt.s.d	$f3,$f3
    swc1	$f3,4($sp)
    # Line 1678
    ldc1	$f2,16($a2)
    cvt.s.d	$f2,$f2
    swc1	$f2,8($sp)
    # Line 1679
    ldc1	$f1,24($a2)
    cvt.s.d	$f1,$f1
    # Line 1684
    ld	$a1,32($sp)
    # Line 1679
    swc1	$f1,12($sp)
    # Line 1685
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    # Line 1684
    lw	$a1,29712($a1)
    # Line 1685
    li	$a0,2982
    jal	__glMgrim_GetFloatv
    sd	$a1,24($sp)
    # Line 1686
    ld	$a1,24($sp)
    # Line 1688
    ld	$a0,32($sp)
    li	$a2,1
    # Line 1687
    sb	$a2,268($a1)
    # Line 1686
    sw	$zero,64($a1)
    # Line 1688
    lw	$t9,11924($a0)
    jalr	$t9
    nop
    ld	$t9,32($sp)
    # Line 1690
    move	$a0,$t9
    lw	$t9,11972($t9)
    jalr	$t9
    ld	$a1,24($sp)
    ld	$a2,24($sp)
    # Line 1691
    addiu	$a1,$sp,0
    lw	$t9,168($a2)
    ld	$a0,16($sp)
    addiu	$a2,$a2,88
    jalr	$t9
    addiu	$a0,$a0,4
    ld	$a4,32($sp)
    ld	$ra,48($sp)
.L0da7e9d0:
    # Line 1699
    li	$at,2
    sw	$at,__glBeginMode
    lw	$a3,11828($a4)
    ld	$gp,40($sp)
    # Line 1700
    addiu	$sp,$sp,96
    # Line 1699
    ori	$a3,$a3,0x1
    # Line 1700
    jr	$ra
    # Line 1699
    sw	$a3,11828($a4)
.L0da7e9f0:
    # Line 1652
    li	$v0,8194
    beq	$a0,$v0,.L0da7ea64
    li	$v1,8195
    beq	$a0,$v1,.L0da7ea68
    # Line 1653
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1657
    b	.L0da7e9d0
    # Line 1656
    sw	$a6,0($a5)
.L0da7ea0c:
    # Line 1666
    cvt.s.d	$f3,$f3
    swc1	$f3,20($a5)
    # Line 1667
    ldc1	$f2,8($a2)
    cvt.s.d	$f2,$f2
    swc1	$f2,24($a5)
    # Line 1668
    ldc1	$f1,16($a2)
    cvt.s.d	$f1,$f1
    swc1	$f1,28($a5)
    # Line 1669
    ldc1	$f0,24($a2)
    cvt.s.d	$f0,$f0
    # Line 1670
    b	.L0da7e9d0
    # Line 1669
    swc1	$f0,32($a5)
.L0da7ea3c:
    # Line 1619
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da7ea5c:
    # Line 1649
    b	.L0da7e9d0
    # Line 1648
    sw	$a6,0($a5)
.L0da7ea64:
    # Line 1653
    # lw $t9, -27320($gp) # &__glSetError
.L0da7ea68:
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1654
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glMgrim_SoftTexGendv

# Function: __glMgrim_SoftTexGeniv
# Declared: Line 1703 (Source lines: 1703-1788)
# Address: 0x0da7ea84 - 0x0da7ed28 (Size: 676 bytes, Frame: 224)
.globl __glMgrim_SoftTexGeniv
.ent __glMgrim_SoftTexGeniv
__glMgrim_SoftTexGeniv:
    # Line 1707
    lw	$a4,__glCurrentContext
    li	$a6,1
    # Line 1703
    addiu	$sp,$sp,-96
    sd	$gp,40($sp)
    # Line 1707
    lw	$at,__glBeginMode
    # Line 1703
    lui	$v0,0x18
    addiu	$v0,$v0,-1004
    # Line 1707
    beq	$at,$a6,.L0da7ece0
    # Line 1703
    addu	$gp,$t9,$v0
    # Line 1709
    li	$v1,8192
    beq	$a0,$v1,.L0da7eb30
    li	$a3,8193
    beq	$a0,$a3,.L0da7eb3c
    li	$at,8194
    beq	$a0,$at,.L0da7eb48
    li	$v0,8195
    beq	$a0,$v0,.L0da7eae8
    # Line 1727
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1728
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da7eae8:
    # Line 1723
    addiu	$a5,$a4,2248
    # Line 1731
    li	$v1,9472
.L0da7eaf0:
    beq	$a1,$v1,.L0da7eb54
    li	$a3,9473
    beql	$a1,$a3,.L0da7ec90
    # Line 1754
    lw	$v1,0($a2)
    sd	$ra,48($sp)
    sd	$a4,32($sp)
    # Line 1731
    li	$at,9474
    beq	$a1,$at,.L0da7eb94
    sd	$a5,16($sp)
    # Line 1784
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 1785
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da7eb30:
    # Line 1711
    addiu	$a5,$a4,1876
    # Line 1712
    b	.L0da7eaf0
    # Line 1731
    li	$v1,9472
.L0da7eb3c:
    # Line 1715
    addiu	$a5,$a4,2000
    # Line 1716
    b	.L0da7eaf0
    # Line 1731
    li	$v1,9472
.L0da7eb48:
    # Line 1719
    addiu	$a5,$a4,2124
    # Line 1720
    b	.L0da7eaf0
    # Line 1731
    li	$v1,9472
.L0da7eb54:
    # Line 1733
    lw	$a6,0($a2)
    li	$v1,9217
    li	$v0,9216
    beq	$a6,$v0,.L0da7ed00
    move	$a1,$a6
    beq	$a1,$v1,.L0da7ed00
    li	$a3,9218
    beq	$a1,$a3,.L0da7ec74
    # Line 1748
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1749
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da7eb94:
    # Line 1764
    lw	$a5,0($a2)
    mtc1	$a5,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,0($sp)
    # Line 1765
    lw	$a4,4($a2)
    mtc1	$a4,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,4($sp)
    # Line 1766
    lw	$a3,8($a2)
    mtc1	$a3,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,8($sp)
    # Line 1767
    lw	$a2,12($a2)
    mtc1	$a2,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 1772
    ld	$a1,32($sp)
    # Line 1767
    swc1	$f0,12($sp)
    # Line 1773
    # lw $t9, -30876($gp) # &__glMgrim_GetFloatv
    # Line 1772
    lw	$a1,29712($a1)
    # Line 1773
    li	$a0,2982
    jal	__glMgrim_GetFloatv
    sd	$a1,24($sp)
    # Line 1774
    ld	$a1,24($sp)
    # Line 1776
    ld	$a0,32($sp)
    li	$a6,1
    # Line 1775
    sb	$a6,268($a1)
    # Line 1774
    sw	$zero,64($a1)
    # Line 1776
    lw	$t9,11924($a0)
    jalr	$t9
    nop
    ld	$t9,32($sp)
    # Line 1778
    move	$a0,$t9
    lw	$t9,11972($t9)
    jalr	$t9
    ld	$a1,24($sp)
    ld	$a2,24($sp)
    # Line 1779
    addiu	$a1,$sp,0
    lw	$t9,168($a2)
    ld	$a0,16($sp)
    addiu	$a2,$a2,88
    jalr	$t9
    addiu	$a0,$a0,4
    ld	$a4,32($sp)
    ld	$ra,48($sp)
.L0da7ec54:
    # Line 1787
    li	$at,2
    sw	$at,__glBeginMode
    lw	$a3,11828($a4)
    ld	$gp,40($sp)
    # Line 1788
    addiu	$sp,$sp,96
    # Line 1787
    ori	$a3,$a3,0x1
    # Line 1788
    jr	$ra
    # Line 1787
    sw	$a3,11828($a4)
.L0da7ec74:
    # Line 1740
    li	$v0,8194
    beq	$a0,$v0,.L0da7ed08
    li	$v1,8195
    beq	$a0,$v1,.L0da7ed0c
    # Line 1741
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1745
    b	.L0da7ec54
    # Line 1744
    sw	$a6,0($a5)
.L0da7ec90:
    # Line 1754
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    swc1	$f3,20($a5)
    # Line 1755
    lw	$v0,4($a2)
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    swc1	$f2,24($a5)
    # Line 1756
    lw	$at,8($a2)
    mtc1	$at,$f1
    nop
    cvt.s.w	$f1,$f1
    swc1	$f1,28($a5)
    # Line 1757
    lw	$a3,12($a2)
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    # Line 1758
    b	.L0da7ec54
    # Line 1757
    swc1	$f0,32($a5)
.L0da7ece0:
    # Line 1707
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da7ed00:
    # Line 1737
    b	.L0da7ec54
    # Line 1736
    sw	$a6,0($a5)
.L0da7ed08:
    # Line 1741
    # lw $t9, -27320($gp) # &__glSetError
.L0da7ed0c:
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1742
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glMgrim_SoftTexGeniv

# Function: __glMgrim_Fogfv
# Declared: Line 1800 (Source lines: 1800-1845)
# Address: 0x0da7ed28 - 0x0da7ef1c (Size: 500 bytes, Frame: 32)
.globl __glMgrim_Fogfv
.ent __glMgrim_Fogfv
__glMgrim_Fogfv:
    # Line 1802
    lw	$a3,__glCurrentContext
    li	$v0,1
    # Line 1800
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 1802
    lw	$at,__glBeginMode
    # Line 1800
    lui	$v1,0x18
    addiu	$v1,$v1,-1680
    # Line 1802
    beq	$at,$v0,.L0da7eefc
    # Line 1800
    addu	$gp,$t9,$v1
    # Line 1804
    li	$a2,2918
    beq	$a0,$a2,.L0da7ee64
    # Line 1806
    lui	$v0,0x7
    # Line 1804
    li	$at,2914
    beq	$a0,$at,.L0da7ee3c
    li	$v0,2916
    # Line 1820
    lui	$v1,0x7
    # Line 1804
    beq	$a0,$v0,.L0da7ee94
    # Line 1820
    ori	$v1,$v1,0x4080
    # Line 1804
    li	$v1,2915
    # Line 1823
    lui	$a2,0x7
    # Line 1804
    beq	$a0,$v1,.L0da7eea8
    # Line 1823
    ori	$a2,$a2,0x4080
    # Line 1804
    li	$a2,2913
    # Line 1826
    lui	$v0,0x7
    # Line 1804
    beq	$a0,$a2,.L0da7eebc
    li	$at,2917
    beq	$a0,$at,.L0da7edb4
    # Line 1841
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1842
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da7edb4:
    # Line 1829
    lwc1	$f4,0($a1)
    trunc.l.s	$f0,$f4
    dmfc1	$a0,$f0
    li	$v0,2048
    sll	$a0,$a0,0x0
    beq	$a0,$v0,.L0da7ede4
    li	$at,9729
    li	$a2,2049
    beq	$a0,$a2,.L0da7ede8
    # Line 1833
    lui	$v1,0x7
    # Line 1829
    bne	$a0,$at,.L0da7ee20
    # Line 1836
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da7ede4:
    # Line 1833
    lui	$v1,0x7
.L0da7ede8:
    trunc.w.s	$f1,$f4
    ori	$v1,$v1,0x4080
    mfc1	$v0,$f1
    li	$a2,0xb904
    sw	$a2,0($v1)
    sw	$v0,0($v1)
.L0da7ee00:
    # Line 1844
    li	$a2,2
    sw	$a2,__glBeginMode
    lw	$a0,11828($a3)
    ld	$gp,0($sp)
    # Line 1845
    addiu	$sp,$sp,32
    # Line 1844
    ori	$a0,$a0,0x1
    # Line 1845
    jr	$ra
    # Line 1844
    sw	$a0,11828($a3)
.L0da7ee20:
    sd	$ra,8($sp)
    # Line 1836
    jal	__glSetError
    li	$a0,1280
    # Line 1837
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da7ee3c:
    # Line 1813
    mtc1	$zero,$f2
    lwc1	$f4,0($a1)
    c.lt.s	$f4,$f2
    # Line 1817
    lui	$at,0x7
    # Line 1813
    bc1t	.L0da7eedc
    # Line 1817
    li	$v0,0xb704
    ori	$at,$at,0x4080
    sw	$v0,0($at)
    b	.L0da7ee00
    swc1	$f4,0($at)
.L0da7ee64:
    # Line 1806
    ori	$v0,$v0,0x4080
    # Line 1810
    lwc1	$f3,12($a1)
    # Line 1809
    lwc1	$f0,8($a1)
    # Line 1808
    lwc1	$f1,4($a1)
    # Line 1807
    lwc1	$f2,0($a1)
    # Line 1806
    li	$v1,0xb410
    sw	$v1,0($v0)
    # Line 1807
    swc1	$f2,0($v0)
    # Line 1808
    swc1	$f1,0($v0)
    # Line 1809
    swc1	$f0,0($v0)
    # Line 1811
    b	.L0da7ee00
    # Line 1810
    swc1	$f3,0($v0)
.L0da7ee94:
    # Line 1820
    li	$a2,0xb604
    lwc1	$f3,0($a1)
    sw	$a2,0($v1)
    b	.L0da7ee00
    swc1	$f3,0($v1)
.L0da7eea8:
    # Line 1823
    li	$at,0xb504
    lwc1	$f0,0($a1)
    sw	$at,0($a2)
    b	.L0da7ee00
    swc1	$f0,0($a2)
.L0da7eebc:
    # Line 1826
    ori	$v0,$v0,0x4080
    lwc1	$f1,0($a1)
    trunc.w.s	$f1,$f1
    li	$v1,0xb804
    mfc1	$at,$f1
    sw	$v1,0($v0)
    b	.L0da7ee00
    sw	$at,0($v0)
.L0da7eedc:
    # Line 1814
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 1815
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da7eefc:
    # Line 1802
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_Fogfv

# Function: __glMgrim_Fogf
# Declared: Line 1857 (Source lines: 1857-1871)
# Address: 0x0da7ef1c - 0x0da7ef9c (Size: 128 bytes, Frame: 32)
.globl __glMgrim_Fogf
.ent __glMgrim_Fogf
__glMgrim_Fogf:
    # Line 1857
    li	$at,2913
    addiu	$sp,$sp,-32
    swc1	$f13,24($sp)
    sd	$gp,0($sp)
    lui	$v0,0x18
    addiu	$v0,$v0,-2180
    beq	$a0,$at,.L0da7ef7c
    addu	$gp,$t9,$v0
    li	$v1,2914
    beq	$a0,$v1,.L0da7ef7c
    li	$a1,2915
    beq	$a0,$a1,.L0da7ef7c
    li	$at,2916
    beq	$a0,$at,.L0da7ef7c
    li	$v0,2917
    beq	$a0,$v0,.L0da7ef7c
    sd	$ra,8($sp)
    # Line 1868
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 1869
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da7ef7c:
    # Line 1865
    # lw $t9, -31988($gp) # &__glMgrim_Fogfv
    sd	$ra,8($sp)
    bal __glMgrim_Fogfv
    addiu	$a1,$sp,24
    # Line 1871
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_Fogf

# Function: __glMgrim_Fogiv
# Declared: Line 1883 (Source lines: 1883-1929)
# Address: 0x0da7ef9c - 0x0da7f1f0 (Size: 596 bytes, Frame: 32)
.globl __glMgrim_Fogiv
.ent __glMgrim_Fogiv
__glMgrim_Fogiv:
    # Line 1885
    lw	$a3,__glCurrentContext
    li	$v0,1
    # Line 1883
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 1885
    lw	$at,__glBeginMode
    # Line 1883
    lui	$v1,0x18
    addiu	$v1,$v1,-2308
    # Line 1885
    beq	$at,$v0,.L0da7f1b0
    # Line 1883
    addu	$gp,$t9,$v1
    # Line 1890
    lwc1	$f0,_lit_3f800000
    # Line 1887
    li	$a2,2918
    beq	$a0,$a2,.L0da7f0b8
    # Line 1900
    lui	$v0,0x7
    # Line 1887
    li	$at,2914
    beql	$a0,$at,.L0da7f05c
    # Line 1896
    lw	$a4,0($a1)
    # Line 1887
    li	$v0,2916
    beq	$a0,$v0,.L0da7f148
    li	$v1,2915
    beq	$a0,$v1,.L0da7f170
    li	$a2,2913
    # Line 1909
    lui	$v0,0x7
    # Line 1887
    beq	$a0,$a2,.L0da7f198
    li	$at,2917
    beq	$a0,$at,.L0da7f020
    # Line 1924
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1925
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da7f020:
    # Line 1912
    lw	$a4,0($a1)
    li	$v0,2048
    beq	$a4,$v0,.L0da7f044
    move	$a0,$a4
    li	$v1,2049
    beq	$a0,$v1,.L0da7f044
    li	$a2,9729
    bne	$a0,$a2,.L0da7f09c
    # Line 1919
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0da7f044:
    # Line 1916
    li	$v0,0xb904
    lui	$at,0x7
    ori	$at,$at,0x4080
    sw	$v0,0($at)
    b	.L0da7f07c
    sw	$a4,0($at)
.L0da7f05c:
    # Line 1896
    bltz	$a4,.L0da7f1d0
    # Line 1900
    ori	$v0,$v0,0x4080
    mtc1	$a4,$f0
    nop
    cvt.s.w	$f0,$f0
    li	$v1,0xb704
    sw	$v1,0($v0)
    swc1	$f0,0($v0)
.L0da7f07c:
    # Line 1928
    li	$a0,2
    sw	$a0,__glBeginMode
    lw	$v1,11828($a3)
    ld	$gp,0($sp)
    # Line 1929
    addiu	$sp,$sp,32
    # Line 1928
    ori	$v1,$v1,0x1
    # Line 1929
    jr	$ra
    # Line 1928
    sw	$v1,11828($a3)
.L0da7f09c:
    sd	$ra,8($sp)
    # Line 1919
    jal	__glSetError
    li	$a0,1280
    # Line 1920
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da7f0b8:
    # Line 1893
    lw	$a2,12($a1)
    mtc1	$a2,$f1
    # Line 1892
    lw	$v1,8($a1)
    # Line 1893
    cvt.s.w	$f1,$f1
    # Line 1892
    mtc1	$v1,$f2
    # Line 1890
    lwc1	$f5,_lit_40000000
    # Line 1892
    cvt.s.w	$f2,$f2
    # Line 1893
    mul.s	$f1,$f1,$f5
    # Line 1892
    mul.s	$f2,$f2,$f5
    # Line 1890
    lw	$at,0($a1)
    mtc1	$at,$f4
    # Line 1891
    lw	$v0,4($a1)
    # Line 1890
    cvt.s.w	$f4,$f4
    # Line 1891
    mtc1	$v0,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 1890
    mul.s	$f4,$f4,$f5
    # Line 1891
    mul.s	$f3,$f3,$f5
    # Line 1892
    add.s	$f2,$f2,$f0
    # Line 1890
    lwc1	$f5,3308($a3)
    add.s	$f4,$f4,$f0
    # Line 1892
    mul.s	$f2,$f2,$f5
    # Line 1891
    add.s	$f3,$f3,$f0
    # Line 1890
    mul.s	$f4,$f4,$f5
    # Line 1893
    add.s	$f1,$f1,$f0
    # Line 1891
    mul.s	$f3,$f3,$f5
    # Line 1889
    li	$at,0xb410
    lui	$a2,0x7
    # Line 1893
    mul.s	$f1,$f1,$f5
    # Line 1889
    ori	$a2,$a2,0x4080
    sw	$at,0($a2)
    # Line 1890
    swc1	$f4,0($a2)
    # Line 1891
    swc1	$f3,0($a2)
    # Line 1892
    swc1	$f2,0($a2)
    # Line 1894
    b	.L0da7f07c
    # Line 1893
    swc1	$f1,0($a2)
.L0da7f148:
    # Line 1903
    lui	$at,0x7
    lw	$v0,0($a1)
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    ori	$at,$at,0x4080
    li	$v0,0xb604
    sw	$v0,0($at)
    b	.L0da7f07c
    swc1	$f2,0($at)
.L0da7f170:
    # Line 1906
    lw	$a2,0($a1)
    mtc1	$a2,$f3
    nop
    cvt.s.w	$f3,$f3
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    li	$a2,0xb504
    sw	$a2,0($v1)
    b	.L0da7f07c
    swc1	$f3,0($v1)
.L0da7f198:
    # Line 1909
    ori	$v0,$v0,0x4080
    li	$v1,0xb804
    lw	$at,0($a1)
    sw	$v1,0($v0)
    b	.L0da7f07c
    sw	$at,0($v0)
.L0da7f1b0:
    # Line 1885
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da7f1d0:
    # Line 1897
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 1898
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_Fogiv

# Function: __glMgrim_Fogi
# Declared: Line 1941 (Source lines: 1941-1955)
# Address: 0x0da7f1f0 - 0x0da7f270 (Size: 128 bytes, Frame: 32)
.globl __glMgrim_Fogi
.ent __glMgrim_Fogi
__glMgrim_Fogi:
    # Line 1941
    li	$at,2913
    addiu	$sp,$sp,-32
    sw	$a1,28($sp)
    sd	$gp,0($sp)
    lui	$v0,0x18
    addiu	$v0,$v0,-2904
    beq	$a0,$at,.L0da7f250
    addu	$gp,$t9,$v0
    li	$v1,2914
    beq	$a0,$v1,.L0da7f250
    li	$a1,2915
    beq	$a0,$a1,.L0da7f250
    li	$at,2916
    beq	$a0,$at,.L0da7f250
    li	$v0,2917
    beq	$a0,$v0,.L0da7f250
    sd	$ra,8($sp)
    # Line 1952
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 1953
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da7f250:
    # Line 1949
    # lw $t9, -31980($gp) # &__glMgrim_Fogiv
    sd	$ra,8($sp)
    bal __glMgrim_Fogiv
    addiu	$a1,$sp,28
    # Line 1955
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_Fogi

# Function: __glMgrim_PolygonOffsetEXT
# Declared: Line 1967 (Source lines: 1967-1975)
# Address: 0x0da7f270 - 0x0da7f2dc (Size: 108 bytes, Frame: 32)
.globl __glMgrim_PolygonOffsetEXT
.ent __glMgrim_PolygonOffsetEXT
__glMgrim_PolygonOffsetEXT:
    # Line 1971
    lui	$a0,0x7
    # Line 1967
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x18
    addiu	$v1,$v1,-3032
    beq	$at,$v0,.L0da7f2bc
    addu	$gp,$t9,$v1
    # Line 1971
    ori	$a0,$a0,0x4080
    # Line 1974
    lwc1	$f0,_lit_3f800000
    ld	$gp,0($sp)
    # Line 1975
    addiu	$sp,$sp,32
    # Line 1971
    li	$a1,0xe70c
    sw	$a1,0($a0)
    # Line 1972
    swc1	$f12,0($a0)
    # Line 1973
    swc1	$f13,0($a0)
    # Line 1975
    jr	$ra
    # Line 1974
    swc1	$f0,0($a0)
.L0da7f2bc:
    # Line 1969
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_PolygonOffsetEXT

# Function: __glMgrim_PolygonOffset
# Declared: Line 1987 (Source lines: 1987-1995)
# Address: 0x0da7f2dc - 0x0da7f348 (Size: 108 bytes, Frame: 32)
.globl __glMgrim_PolygonOffset
.ent __glMgrim_PolygonOffset
__glMgrim_PolygonOffset:
    # Line 1991
    lui	$a0,0x7
    # Line 1987
    li	$v0,1
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x18
    addiu	$v1,$v1,-3140
    beq	$at,$v0,.L0da7f328
    addu	$gp,$t9,$v1
    # Line 1991
    ori	$a0,$a0,0x4080
    # Line 1994
    lwc1	$f0,_lit_3f8ccccd
    ld	$gp,0($sp)
    # Line 1995
    addiu	$sp,$sp,32
    # Line 1991
    li	$a1,0xe70c
    sw	$a1,0($a0)
    # Line 1992
    swc1	$f12,0($a0)
    # Line 1993
    swc1	$f13,0($a0)
    # Line 1995
    jr	$ra
    # Line 1994
    swc1	$f0,0($a0)
.L0da7f328:
    # Line 1989
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_PolygonOffset

.late_rodata
jtbl_0dbed0f0:
    .word .L0da7cdfc
    .word .L0da7ce48
    .word .L0da7ce08
    .word .L0da7ce58
    .word .L0da7cdfc
    .word .L0da7ce08
    .word .L0da7cdfc
    .word .L0da7ce48
    .word .L0da7cda8
    .word .L0da7ce64
    .word .L0da7ce64
    .word .L0da7ce64
    .word .L0da7ce64
jtbl_0dbed128:
    .word .L0da7cec8
    .word .L0da7cee8
    .word .L0da7ced8
    .word .L0da7cee8
    .word .L0da7cec8
    .word .L0da7ced8
    .word .L0da7cee8
    .word .L0da7cee8
    .word .L0da7ce84
    .word .L0da7cf0c
    .word .L0da7cf0c
    .word .L0da7cf0c
    .word .L0da7cf0c
jtbl_0dbed160:
    .word .L0da7cf90
    .word .L0da7cfa0
    .word .L0da7cfa0
    .word .L0da7cfa0
    .word .L0da7cf90
    .word .L0da7cfa0
    .word .L0da7cfa0
    .word .L0da7cfa0
    .word .L0da7cf6c
    .word .L0da7cfc0
    .word .L0da7cfc0
    .word .L0da7cfc0
    .word .L0da7cfc0
jtbl_0dbed198:
    .word .L0da7d0d0
    .word .L0da7d0ec
    .word .L0da7d108
    .word .L0da7d124
    .word .L0da7d140
    .word .L0da7d160
    .word .L0da7d17c
    .word .L0da7d198
    .word .L0da7d1b4
    .word .L0da7d1cc

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit_3f800000:
    .word 0x3f800000
_lit_3f8ccccd:
    .word 0x3f8ccccd
_lit_40000000:
    .word 0x40000000
_lit_457ff000:
    .word 0x457ff000

