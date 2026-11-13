# Source: ../MGRAS/mgras_rgb.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_rgb.c
# Total Functions: 10

.text

# Function: Store
# Declared: Line 44 (Source lines: 44-66)
# Address: 0x0da9060c - 0x0da906f4 (Size: 232 bytes, Frame: 48)
.ent Store
Store:
    # Line 51
    addiu	$a0,$a1,12
    # Line 49
    li	$at,5632
    # Line 44
    addiu	$sp,$sp,-48
    sd	$s5,0($sp)
    # Line 46
    lw	$s5,__glCurrentContext
    sd	$s3,8($sp)
    # Line 44
    move	$s3,$a1
    sd	$ra,16($sp)
    sd	$gp,24($sp)
    lui	$v1,0x17
    addiu	$v1,$v1,-8052
    addu	$gp,$t9,$v1
    # Line 51
    # lw $t9, -18580($gp) # &__glMgrim_Color4fv
    # Line 49
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    # Line 51
    jal	__glMgrim_Color4fv
    # Line 49
    sw	$at,0($v0)
    # Line 51
    lw	$a0,3376($s5)
    lw	$v1,4($s3)
    lw	$v0,3372($s5)
    subu	$v1,$v1,$a0
    mtc1	$v1,$f13
    lw	$at,0($s3)
    lw	$a0,30488($s5)
    cvt.s.w	$f13,$f13
    subu	$at,$at,$v0
    mtc1	$at,$f12
    andi	$a0,$a0,0x4000
    beqz	$a0,.L0da906dc
    cvt.s.w	$f12,$f12
    # Line 58
    lw	$a1,8($s3)
    dsll32	$a1,$a1,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f14
    nop
    cvt.s.l	$f14,$f14
    lwc1	$f15,1644($s5)
    # lw $t9, -18200($gp) # &__glMgrim_Vertex3f
    sub.s	$f14,$f14,$f15
    lwc1	$f15,1640($s5)
    jal	__glMgrim_Vertex3f
    div.s	$f14,$f14,$f15
    ld	$s3,8($sp)
    ld	$s5,0($sp)
    ld	$ra,16($sp)
.L0da906c0:
    ld	$gp,24($sp)
    # Line 66
    addiu	$sp,$sp,48
    # Line 65
    li	$at,8192
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    # Line 66
    jr	$ra
    # Line 65
    sw	$at,0($v0)
.L0da906dc:
    # Line 61
    # lw $t9, -18232($gp) # &__glMgrim_Vertex2f
    ld	$s3,8($sp)
    jal	__glMgrim_Vertex2f
    ld	$s5,0($sp)
    b	.L0da906c0
    ld	$ra,16($sp)
.end Store

# Function: Clear
# Declared: Line 70 (Source lines: 72-73)
# Address: 0x0da906f4 - 0x0da90708 (Size: 20 bytes, Frame: 0)
.ent Clear
Clear:
    # Line 72
    li	$at,5376
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    # Line 73
    jr	$ra
    # Line 72
    sw	$at,0($v0)
.end Clear

# Function: __glMgrReadSpan
# Declared: Line 78 (Source lines: 78-132)
# Address: 0x0da90708 - 0x0da90aec (Size: 996 bytes, Frame: 208)
.globl __glMgrReadSpan
.ent __glMgrReadSpan
__glMgrReadSpan:
    # Line 94
    li	$a7,9
    move	$a6,$zero
    # Line 78
    addiu	$sp,$sp,-208
    sd	$s0,136($sp)
    move	$s0,$a4
    sd	$a0,88($sp)
    sd	$s1,120($sp)
    sd	$gp,144($sp)
    sd	$s2,128($sp)
    move	$s2,$a3
    lui	$a3,0x17
    addiu	$a3,$a3,-8304
    addu	$gp,$t9,$a3
    # Line 94
    la	$t1,__glMgr_DefaultPack
    sd	$s3,104($sp)
    # Line 80
    lw	$s3,0($a0)
    # Line 93
    addiu	$at,$sp,32
    sd	$s4,112($sp)
    sd	$s3,96($sp)
    # Line 94
    addiu	$t0,$s3,1072
    # Line 93
    lw	$v1,1104($s3)
    # Line 81
    move	$s1,$s3
    # Line 93
    ld	$v0,1096($s3)
    sw	$v1,32($at)
    ld	$t9,1088($s3)
    sd	$v0,24($at)
    ld	$s4,1080($s3)
    sd	$t9,16($at)
    ld	$t9,1072($s3)
    sd	$s4,8($at)
    # Line 91
    lw	$s4,3376($s3)
    # Line 90
    lw	$s3,3372($s3)
    # Line 93
    sd	$t9,0($at)
    # Line 91
    subu	$s4,$a2,$s4
    # Line 90
    subu	$s3,$a1,$s3
.L0da90794:
    # Line 94
    addu	$at,$a6,$t0
    addu	$a5,$a6,$t1
    addiu	$a6,$a6,4
    lw	$a5,0($a5)
    addiu	$a7,$a7,-1
    bgtz	$a7,.L0da90794
    sw	$a5,0($at)
    # Line 96
    sw	$s2,28($sp)
    li	$a7,1
    move	$a6,$s0
    move	$a5,$zero
    move	$a4,$zero
    move	$a3,$s4
    move	$a2,$s3
    li	$a1,7
    sd	$ra,152($sp)
    addiu	$a0,$s1,31676
    li	$t0,6408
    li	$t1,6408
    li	$t2,5125
    sw	$t2,20($sp)
    # lw $t9, -29768($gp) # &__glMgrMakePixelDesc
    sw	$t1,12($sp)
    sw	$t0,4($sp)
    jal	__glMgrMakePixelDesc
    sd	$a0,72($sp)
    lw	$at,31676($s1)
    bnez	$at,.L0da90ac4
    # Line 110
    move	$a7,$s2
.L0da90808:
    li	$a6,5125
    li	$a5,6408
    li	$a4,1
    move	$a3,$s0
    move	$a2,$s4
    move	$a1,$s3
    move	$a0,$s1
    # Line 107
    li	$v0,1
    lui	$v1,0x1
    # Line 110
    # lw $t9, -31856($gp) # &__glMgrDoReadPixels
    # Line 107
    addu	$v1,$s1,$v1
    sd	$v1,80($sp)
    # Line 110
    jal	__glMgrDoReadPixels
    # Line 107
    sb	$v0,-25268($v1)
    # Line 117
    ld	$a3,96($sp)
    # Line 114
    ld	$s3,80($sp)
    # Line 117
    addiu	$a2,$sp,32
    ld	$s1,0($a2)
    ld	$a5,8($a2)
    # Line 114
    sb	$zero,-25268($s3)
    # Line 117
    sd	$s1,1072($a3)
    ld	$s1,16($a2)
    sd	$a5,1080($a3)
    ld	$a5,24($a2)
    lw	$a2,32($a2)
    # Line 122
    ld	$a1,88($sp)
    # Line 117
    sw	$a2,1104($a3)
    sd	$a5,1096($a3)
    sd	$s1,1088($a3)
    # Line 119
    lwc1	$f4,88($a1)
    ldc1	$f0,_lit8_3df0000000000000
    cvt.d.s	$f4,$f4
    # Line 120
    lwc1	$f7,92($a1)
    # Line 119
    mul.d	$f4,$f4,$f0
    # Line 120
    cvt.d.s	$f7,$f7
    # Line 122
    lwc1	$f6,128($a1)
    # Line 120
    mul.d	$f7,$f7,$f0
    # Line 122
    cvt.d.s	$f6,$f6
    # Line 121
    lwc1	$f5,96($a1)
    # Line 122
    mul.d	$f6,$f6,$f0
    # Line 121
    cvt.d.s	$f5,$f5
    mul.d	$f5,$f5,$f0
    ld	$s4,112($sp)
    ld	$ra,152($sp)
    ld	$gp,144($sp)
    andi	$at,$s0,0x1
    ld	$s3,104($sp)
    # Line 122
    cvt.s.d	$f6,$f6
    # Line 126
    move	$a3,$zero
    ld	$s1,120($sp)
    # Line 121
    cvt.s.d	$f5,$f5
    # Line 124
    move	$a2,$s2
    # Line 125
    move	$a1,$s2
    # Line 120
    cvt.s.d	$f7,$f7
    ld	$s2,128($sp)
    # Line 126
    blez	$s0,.L0da90ab4
    # Line 119
    cvt.s.d	$f4,$f4
    # Line 126
    move	$a0,$s0
    beqz	$at,.L0da90984
    ld	$s2,128($sp)
    # Line 127
    lw	$at,0($a2)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f3
    nop
    cvt.s.l	$f3,$f3
    mul.s	$f3,$f3,$f4
    swc1	$f3,0($a1)
    # Line 128
    lw	$a5,4($a2)
    dsll32	$a5,$a5,0x0
    dsrl32	$a5,$a5,0x0
    dmtc1	$a5,$f2
    nop
    cvt.s.l	$f2,$f2
    mul.s	$f2,$f2,$f7
    swc1	$f2,4($a1)
    # Line 129
    lw	$v1,8($a2)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f1
    nop
    cvt.s.l	$f1,$f1
    mul.s	$f1,$f1,$f5
    swc1	$f1,8($a1)
    # Line 130
    lw	$v0,12($a2)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f0
    nop
    cvt.s.l	$f0,$f0
    mul.s	$f0,$f0,$f6
    # Line 126
    addiu	$a2,$a2,16
    addiu	$a1,$a1,16
    addiu	$a3,$a3,1
    # Line 130
    swc1	$f0,-4($a1)
.L0da90984:
    move	$a4,$a1
    sra	$v0,$a0,0x1
    move	$a6,$a3
    beqz	$v0,.L0da90ab4
    move	$a7,$a2
    move	$a0,$a6
    move	$a2,$a4
    move	$a1,$a7
.L0da909a4:
    # Line 127
    lw	$v0,0($a1)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f3
    nop
    cvt.s.l	$f3,$f3
    mul.s	$f3,$f3,$f4
    swc1	$f3,0($a2)
    # Line 128
    lw	$at,4($a1)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f2
    nop
    cvt.s.l	$f2,$f2
    mul.s	$f2,$f2,$f7
    swc1	$f2,4($a2)
    # Line 129
    lw	$a5,8($a1)
    dsll32	$a5,$a5,0x0
    dsrl32	$a5,$a5,0x0
    dmtc1	$a5,$f1
    nop
    cvt.s.l	$f1,$f1
    mul.s	$f1,$f1,$f5
    swc1	$f1,8($a2)
    # Line 130
    lw	$v1,12($a1)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f0
    nop
    cvt.s.l	$f0,$f0
    mul.s	$f0,$f0,$f6
    swc1	$f0,12($a2)
    # Line 127
    lw	$v0,16($a1)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f3
    nop
    cvt.s.l	$f3,$f3
    mul.s	$f3,$f3,$f4
    swc1	$f3,16($a2)
    # Line 128
    lw	$at,20($a1)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f2
    nop
    cvt.s.l	$f2,$f2
    mul.s	$f2,$f2,$f7
    swc1	$f2,20($a2)
    # Line 129
    lw	$a5,24($a1)
    dsll32	$a5,$a5,0x0
    dsrl32	$a5,$a5,0x0
    dmtc1	$a5,$f1
    nop
    cvt.s.l	$f1,$f1
    mul.s	$f1,$f1,$f5
    swc1	$f1,24($a2)
    # Line 130
    lw	$v1,28($a1)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f0
    nop
    cvt.s.l	$f0,$f0
    mul.s	$f0,$f0,$f6
    # Line 126
    addiu	$a1,$a1,32
    addiu	$a2,$a2,32
    addiu	$a0,$a0,2
    bne	$s0,$a0,.L0da909a4
    # Line 130
    swc1	$f0,-4($a2)
.L0da90ab4:
    # Line 132
    li	$v0,1
    ld	$s0,136($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0da90ac4:
    # Line 102
    # lw $t9, -29788($gp) # &__glMgrMakeTiles
    ld	$a0,72($sp)
    jal	__glMgrMakeTiles
    move	$a1,$s1
    # Line 103
    # lw $t9, -29820($gp) # &__glMgrMakePages
    ld	$a0,72($sp)
    jal	__glMgrMakePages
    move	$a1,$s1
    b	.L0da90808
    # Line 110
    move	$a7,$s2
.end __glMgrReadSpan

# Function: __glMgrReturnSpan
# Declared: Line 136 (Source lines: 137-248)
# Address: 0x0da90aec - 0x0da90f74 (Size: 1160 bytes, Frame: 0)
.globl __glMgrReturnSpan
.ent __glMgrReturnSpan
__glMgrReturnSpan:
    li	$t8,1
    # Line 137
    move	$a6,$s8
    li	$at,0x80f0
    subu	$sp,$sp,$at
    addu	$s8,$sp,$at
    sd	$s0,144($sp)
    # Line 138
    lw	$s0,0($a0)
    # Line 183
    move	$a0,$a3
    sd	$gp,152($sp)
    sd	$a6,168($sp)
    # Line 137
    move	$a6,$a5
    lui	$a5,0x17
    addiu	$a5,$a5,-9300
    addu	$gp,$t9,$a5
    sd	$s6,160($sp)
    # Line 155
    lw	$t0,3376($s0)
    # Line 154
    lw	$t1,3372($s0)
    # Line 160
    lw	$a4,3140($s0)
    # Line 155
    subu	$t0,$a2,$t0
    # Line 160
    li	$t3,1
    sd	$a4,184($sp)
    sllv	$a4,$t3,$a4
    addiu	$a4,$a4,-1
    mtc1	$a4,$f17
    # Line 154
    subu	$t1,$a1,$t1
    # Line 162
    lw	$t2,3152($s0)
    # Line 160
    cvt.s.w	$f17,$f17
    ld	$a5,184($sp)
    # Line 162
    sllv	$s6,$t3,$t2
    addiu	$s6,$s6,-1
    # Line 181
    move	$t3,$s6
    # Line 173
    li	$t3,32
    # Line 162
    mov.s	$f15,$f17
    beqz	$t2,.L0da90f5c
    # Line 161
    mov.s	$f13,$f17
    ld	$a5,184($sp)
    sd	$a4,88($sp)
    sd	$t0,112($sp)
    # Line 164
    mtc1	$s6,$f14
    sd	$t1,120($sp)
    sd	$t2,128($sp)
    cvt.s.w	$f14,$f14
.L0da90b94:
    # Line 186
    addiu	$a1,$a6,-1
    # Line 178
    ld	$t9,88($sp)
    # Line 186
    mtc1	$zero,$f4
    sd	$s6,104($sp)
    # Line 173
    subu	$t1,$t3,$a5
    # Line 176
    ld	$t2,128($sp)
    # Line 166
    lui	$a4,0xffff
    addu	$a4,$a4,$s8
    addiu	$a4,$a4,32720
    # Line 184
    move	$a7,$a4
    # Line 175
    lw	$v0,3148($s0)
    # Line 174
    lw	$at,3144($s0)
    # Line 176
    subu	$t2,$t3,$t2
    # Line 175
    subu	$t0,$t3,$v0
    # Line 174
    subu	$t3,$t3,$at
    # Line 180
    sllv	$v0,$t8,$v0
    # Line 179
    sllv	$t8,$t8,$at
    addiu	$t8,$t8,-1
    # Line 180
    addiu	$v0,$v0,-1
    # Line 186
    beqz	$a6,.L0da90d90
    sd	$v0,96($sp)
    lwc1	$f10,_lit_46fffe00
    div.s	$f10,$f16,$f10
    mul.s	$f11,$f10,$f14
    mul.s	$f12,$f10,$f15
    ld	$a5,104($sp)
    li	$s6,-1
    mul.s	$f9,$f10,$f13
    ld	$a3,96($sp)
    b	.L0da90cc8
    mul.s	$f10,$f10,$f17
.L0da90c10:
    nop
    # Line 202
    bc1fl	.L0da90c24
    # Line 204
    c.le.s	$f5,$f4
    mov.s	$f6,$f15
.L0da90c20:
    c.le.s	$f5,$f4
.L0da90c24:
    nop
    bc1f	.L0da90d78
    # Line 186
    addiu	$a1,$a1,-1
    # Line 207
    mov.s	$f5,$f4
.L0da90c34:
    # Line 211
    lwc1	$f3,3280($s0)
.L0da90c38:
    add.s	$f3,$f3,$f8
    trunc.l.s	$f3,$f3
    dmfc1	$a2,$f3
    nop
    sll	$a2,$a2,0x0
    and	$a2,$a2,$t9
    sllv	$a2,$a2,$t1
    sw	$a2,0($a7)
    # Line 212
    lwc1	$f2,3280($s0)
    add.s	$f2,$f2,$f7
    trunc.l.s	$f2,$f2
    dmfc1	$v1,$f2
    nop
    sll	$v1,$v1,0x0
    and	$v1,$v1,$t8
    sllv	$v1,$v1,$t3
    sw	$v1,4($a7)
    # Line 213
    lwc1	$f1,3280($s0)
    add.s	$f1,$f1,$f6
    trunc.l.s	$f1,$f1
    dmfc1	$v0,$f1
    nop
    sll	$v0,$v0,0x0
    and	$v0,$v0,$a3
    sllv	$v0,$v0,$t0
    sw	$v0,8($a7)
    # Line 214
    lwc1	$f0,3280($s0)
    add.s	$f0,$f0,$f5
    trunc.l.s	$f0,$f0
    dmfc1	$at,$f0
    # Line 215
    addiu	$a7,$a7,16
    # Line 214
    sll	$at,$at,0x0
    and	$at,$at,$a5
    sllv	$at,$at,$t2
    # Line 186
    beq	$a1,$s6,.L0da90d90
    # Line 214
    sw	$at,-4($a7)
.L0da90cc8:
    # Line 187
    lh	$a2,0($a0)
    mtc1	$a2,$f8
    nop
    cvt.s.w	$f8,$f8
    mul.s	$f8,$f8,$f10
    # Line 188
    lh	$at,2($a0)
    mtc1	$at,$f7
    # Line 190
    lh	$v1,6($a0)
    # Line 188
    cvt.s.w	$f7,$f7
    # Line 190
    mtc1	$v1,$f5
    # Line 189
    lh	$v0,4($a0)
    # Line 190
    cvt.s.w	$f5,$f5
    # Line 189
    mtc1	$v0,$f6
    nop
    cvt.s.w	$f6,$f6
    # Line 190
    mul.s	$f5,$f5,$f11
    c.le.s	$f8,$f4
    # Line 189
    mul.s	$f6,$f6,$f12
    # Line 216
    addiu	$a0,$a0,8
    # Line 190
    bc1f	.L0da90d4c
    # Line 188
    mul.s	$f7,$f7,$f9
    # Line 192
    mov.s	$f8,$f4
.L0da90d20:
    # Line 194
    c.le.s	$f7,$f4
.L0da90d24:
    nop
    bc1fl	.L0da90d64
    # Line 197
    c.lt.s	$f13,$f7
    mov.s	$f7,$f4
.L0da90d34:
    # Line 199
    c.le.s	$f6,$f4
.L0da90d38:
    nop
    bc1fl	.L0da90c10
    # Line 202
    c.lt.s	$f15,$f6
    b	.L0da90c20
    mov.s	$f6,$f4
.L0da90d4c:
    # Line 192
    c.lt.s	$f17,$f8
    nop
    bc1fl	.L0da90d24
    # Line 194
    c.le.s	$f7,$f4
    b	.L0da90d20
    mov.s	$f8,$f17
.L0da90d64:
    nop
    # Line 197
    bc1fl	.L0da90d38
    # Line 199
    c.le.s	$f6,$f4
    b	.L0da90d34
    mov.s	$f7,$f13
.L0da90d78:
    # Line 207
    c.lt.s	$f14,$f5
    nop
    bc1fl	.L0da90c38
    # Line 211
    lwc1	$f3,3280($s0)
    b	.L0da90c34
    # Line 209
    mov.s	$f5,$f14
.L0da90d90:
    li	$t1,1
    # Line 218
    li	$a1,9
    move	$a0,$zero
    addiu	$a3,$sp,40
    addiu	$a7,$s0,1108
.L0da90da4:
    addu	$at,$a0,$a7
    addu	$v0,$a0,$a3
    addiu	$a0,$a0,4
    lw	$at,0($at)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da90da4
    sw	$at,0($v0)
    # Line 219
    li	$a1,9
    move	$a0,$zero
    addiu	$a7,$s0,1108
    la	$a3,__glMgr_DefaultUnpack
.L0da90dd0:
    addu	$v1,$a0,$a7
    addu	$v0,$a0,$a3
    addiu	$a0,$a0,4
    lw	$v0,0($v0)
    addiu	$a1,$a1,-1
    bgtz	$a1,.L0da90dd0
    sw	$v0,0($v1)
    # Line 225
    li	$a7,1
    ld	$a5,112($sp)
    ld	$a4,120($sp)
    move	$a3,$zero
    move	$a2,$zero
    li	$a1,6
    sd	$ra,176($sp)
    li	$v1,6408
    li	$t0,6408
    sd	$s1,80($sp)
    addiu	$s1,$s0,31676
    move	$a0,$s1
    # lw $t9, -29768($gp) # &__glMgrMakePixelDesc
    # Line 221
    lui	$t3,0x100e
    lui	$t2,0xffff
    addu	$t2,$t2,$s8
    ori	$t3,$t3,0x8f03
    # Line 220
    lw	$s6,32100($s0)
    # Line 221
    sw	$t3,32100($s0)
    addiu	$t2,$t2,32720
    sd	$s6,136($sp)
    # Line 222
    lw	$s6,32088($s0)
    # Line 223
    sw	$t1,32088($s0)
    # Line 225
    li	$t1,5125
    sw	$t2,28($sp)
    sw	$t1,20($sp)
    sw	$t0,12($sp)
    jal	__glMgrMakePixelDesc
    sw	$v1,4($sp)
    lw	$at,31676($s0)
    bnez	$at,.L0da90f28
    # Line 236
    move	$a3,$zero
.L0da90e6c:
    # lw $t9, -30688($gp) # &__glMgrSaveTexmode
    move	$a2,$zero
    move	$a1,$zero
    jal	__glMgrSaveTexmode
    li	$a0,1
    # Line 237
    li	$a4,3
    lw	$a3,31912($s0)
    lw	$a2,31908($s0)
    # lw $t9, -30284($gp) # &__glMgrSaveRSS
    lui	$a1,0x140
    lui	$a0,0x1e2
    jal	__glMgrSaveRSS
    ori	$a0,$a0,0x3929
    # Line 241
    move	$a0,$s1
    # lw $t9, -31880($gp) # &__glMgrSendPixels
    move	$a1,$zero
    move	$a2,$zero
    jal	__glMgrSendPixels
    li	$a3,1
    # Line 242
    # lw $t9, -30280($gp) # &__glMgrRestoreRSS
    jal	__glMgrRestoreRSS
    ld	$s1,136($sp)
    # Line 243
    # lw $t9, -30684($gp) # &__glMgrRestoreTexmode
    jal	__glMgrRestoreTexmode
    nop
    # Line 245
    li	$a0,9
    move	$a1,$zero
    addiu	$a3,$s0,1108
    addiu	$a4,$sp,40
    ld	$ra,176($sp)
.L0da90ee4:
    addu	$a2,$a1,$a4
    addu	$at,$a1,$a3
    addiu	$a1,$a1,4
    lw	$a2,0($a2)
    addiu	$a0,$a0,-1
    bgtz	$a0,.L0da90ee4
    sw	$a2,0($at)
    ld	$gp,152($sp)
    # Line 247
    sw	$s6,32088($s0)
    # Line 246
    sw	$s1,32100($s0)
    # Line 248
    ld	$s0,144($sp)
    ld	$s1,80($sp)
    ld	$s6,160($sp)
    ld	$at,168($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0da90f28:
    # Line 231
    # lw $t9, -30028($gp) # &__glMgrBuildChain
    jal	__glMgrBuildChain
    move	$a0,$s1
    # Line 232
    # lw $t9, -29788($gp) # &__glMgrMakeTiles
    move	$a0,$s1
    jal	__glMgrMakeTiles
    move	$a1,$s0
    # Line 233
    # lw $t9, -29820($gp) # &__glMgrMakePages
    move	$a0,$s1
    jal	__glMgrMakePages
    move	$a1,$s0
    b	.L0da90e6c
    # Line 236
    move	$a3,$zero
.L0da90f5c:
    # Line 166
    lwc1	$f14,_lit_437f0000
    sd	$a4,88($sp)
    sd	$t0,112($sp)
    sd	$t1,120($sp)
    b	.L0da90b94
    sd	$t2,128($sp)
.end __glMgrReturnSpan

# Function: Resize
# Declared: Line 251 (Source lines: 251-276)
# Address: 0x0da90f74 - 0x0da9104c (Size: 216 bytes, Frame: 192)
.ent Resize
Resize:
    # Line 251
    addiu	$sp,$sp,-64
    sd	$s1,8($sp)
    move	$s1,$a2
    sd	$s0,0($sp)
    move	$s0,$a1
    lw	$v0,0($a0)
    sd	$gp,16($sp)
    li	$at,0x925c
    addu	$at,$at,$v0
    lw	$at,0($at)
    lui	$v0,0x17
    addiu	$v0,$v0,-10460
    beqz	$at,.L0da91038
    addu	$gp,$t9,$v0
    # Line 256
    # lw $t9, -27584($gp) # &__glResizeBuffer
    move	$a1,$s0
    sd	$ra,24($sp)
    jal	__glResizeBuffer
    move	$a2,$s1
    # Line 274
    lwc1	$f0,_lit_bf800000
    # Line 273
    lwc1	$f1,_lit_3f800000
    # Line 268
    li	$a0,13592
    # Line 263
    li	$ra,10756
    # Line 270
    mtc1	$s0,$f4
    # Line 258
    li	$at,13072
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sw	$at,0($v1)
    sw	$zero,0($v1)
    # Line 259
    sw	$zero,0($v1)
    # Line 260
    sw	$s0,0($v1)
    # Line 261
    sw	$s1,0($v1)
    # Line 263
    sw	$ra,0($v1)
    ld	$ra,24($sp)
    # Line 270
    cvt.s.w	$f4,$f4
    # Line 269
    mtc1	$zero,$f3
    # Line 272
    mtc1	$s1,$f2
    # Line 266
    li	$a1,11264
    # Line 264
    li	$a3,5889
    # Line 272
    cvt.s.w	$f2,$f2
    # Line 264
    sw	$a3,0($v1)
    # Line 266
    sw	$a1,0($v1)
    # Line 268
    sw	$a0,0($v1)
    # Line 269
    swc1	$f3,0($v1)
    # Line 270
    swc1	$f4,0($v1)
    # Line 271
    swc1	$f3,0($v1)
    # Line 272
    swc1	$f2,0($v1)
    # Line 273
    swc1	$f1,0($v1)
    # Line 274
    swc1	$f0,0($v1)
.L0da91038:
    ld	$gp,16($sp)
    # Line 276
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end Resize

# Function: Pick
# Declared: Line 280 (Source lines: 281-281)
# Address: 0x0da9104c - 0x0da91054 (Size: 8 bytes, Frame: 0)
.ent Pick
Pick:
    # Line 281
    jr	$ra
    nop
.end Pick

# Function: StoreSpan
# Declared: Line 284 (Source lines: 284-315)
# Address: 0x0da91054 - 0x0da911ac (Size: 344 bytes, Frame: 224)
.ent StoreSpan
StoreSpan:
    # Line 284
    addiu	$sp,$sp,-96
    sdc1	$f24,24($sp)
    sd	$gp,64($sp)
    sdc1	$f26,8($sp)
    # Line 293
    lwc1	$f26,1640($a0)
    sd	$s4,32($sp)
    # Line 284
    lui	$s4,0x17
    addiu	$s4,$s4,-10684
    addu	$gp,$t9,$s4
    # Line 293
    ldc1	$f24,_lit8_3ff0000000000000
    cvt.d.s	$f26,$f26
    div.d	$f24,$f24,$f26
    # Line 296
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    sd	$s0,40($sp)
    # Line 292
    lw	$s0,30516($a0)
    sd	$s1,48($sp)
    # Line 284
    move	$s1,$a0
    sd	$s2,56($sp)
    # Line 290
    lw	$s2,30256($a0)
    # Line 296
    li	$a0,5632
    sdc1	$f20,0($sp)
    # Line 290
    dsll32	$s2,$s2,0x0
    dsrl32	$s2,$s2,0x0
    dmtc1	$s2,$f20
    # Line 289
    lw	$v0,3376($s1)
    lw	$at,30252($s1)
    # Line 290
    cvt.s.l	$f20,$f20
    sdc1	$f22,16($sp)
    # Line 289
    subu	$at,$at,$v0
    mtc1	$at,$f22
    # Line 296
    sw	$a0,0($a1)
    # Line 291
    lw	$v1,30376($s1)
    # Line 289
    cvt.s.w	$f22,$f22
    # Line 287
    lw	$t9,3372($s1)
    # Line 291
    mtc1	$v1,$f26
    # Line 287
    lw	$s2,30248($s1)
    # Line 286
    lw	$s4,30300($s1)
    # Line 291
    cvt.s.w	$f26,$f26
    # Line 287
    subu	$s2,$s2,$t9
    # Line 297
    addu	$s4,$s4,$s2
    slt	$at,$s2,$s4
    beqz	$at,.L0da9116c
    # Line 293
    cvt.s.d	$f24,$f24
    b	.L0da91130
    sd	$ra,72($sp)
.L0da9110c:
    # Line 306
    lwc1	$f14,1644($s1)
    # lw $t9, -18200($gp) # &__glMgrim_Vertex3f
    sub.s	$f14,$f20,$f14
    mov.s	$f13,$f22
    jal	__glMgrim_Vertex3f
    mul.s	$f14,$f14,$f24
    # Line 297
    addiu	$s2,$s2,1
.L0da91128:
    beq	$s4,$s2,.L0da91168
    # Line 311
    add.s	$f20,$f20,$f26
.L0da91130:
    # Line 298
    # lw $t9, -18580($gp) # &__glMgrim_Color4fv
    jal	__glMgrim_Color4fv
    move	$a0,$s0
    # Line 299
    addiu	$s0,$s0,16
    lw	$at,30488($s1)
    mtc1	$s2,$f12
    andi	$at,$at,0x4000
    bnez	$at,.L0da9110c
    cvt.s.w	$f12,$f12
    # Line 308
    # lw $t9, -18232($gp) # &__glMgrim_Vertex2f
    jal	__glMgrim_Vertex2f
    mov.s	$f13,$f22
    b	.L0da91128
    # Line 297
    addiu	$s2,$s2,1
.L0da91168:
    ld	$ra,72($sp)
.L0da9116c:
    ld	$gp,64($sp)
    # Line 315
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    ld	$s2,56($sp)
    ld	$s4,32($sp)
    ldc1	$f20,0($sp)
    ldc1	$f22,16($sp)
    ldc1	$f24,24($sp)
    ldc1	$f26,8($sp)
    addiu	$sp,$sp,96
    # Line 313
    li	$v0,8192
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sw	$v0,0($v1)
    # Line 315
    jr	$ra
    move	$v0,$zero
.end StoreSpan

# Function: StoreStippledSpan
# Declared: Line 319 (Source lines: 319-371)
# Address: 0x0da911ac - 0x0da9138c (Size: 480 bytes, Frame: 160)
.ent StoreStippledSpan
StoreStippledSpan:
    # Line 319
    addiu	$sp,$sp,-160
    sdc1	$f24,0($sp)
    sd	$gp,64($sp)
    lui	$a1,0x17
    sdc1	$f26,16($sp)
    # Line 326
    lwc1	$f26,1640($a0)
    # Line 319
    addiu	$a1,$a1,-11028
    addu	$gp,$t9,$a1
    # Line 326
    ldc1	$f24,_lit8_3ff0000000000000
    cvt.d.s	$f26,$f26
    div.d	$f24,$f24,$f26
    # Line 335
    li	$at,5632
    sd	$s7,112($sp)
    sd	$s8,32($sp)
    sd	$s2,72($sp)
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    sd	$s3,56($sp)
    # Line 319
    move	$s3,$a0
    # Line 324
    lw	$a0,30256($a0)
    # Line 333
    lw	$s2,30516($s3)
    sdc1	$f20,24($sp)
    # Line 324
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f20
    # Line 332
    lw	$s8,30524($s3)
    sd	$s6,48($sp)
    # Line 324
    cvt.s.l	$f20,$f20
    # Line 325
    lw	$v1,30376($s3)
    sd	$s1,40($sp)
    # Line 323
    lw	$a0,3376($s3)
    # Line 325
    mtc1	$v1,$f26
    # Line 323
    lw	$v1,30252($s3)
    sdc1	$f22,8($sp)
    # Line 325
    cvt.s.w	$f26,$f26
    # Line 323
    subu	$v1,$v1,$a0
    mtc1	$v1,$f22
    # Line 322
    lw	$t9,3372($s3)
    lw	$s1,30248($s3)
    # Line 323
    cvt.s.w	$f22,$f22
    # Line 331
    lw	$s6,30300($s3)
    # Line 335
    sw	$at,0($v0)
    # Line 322
    subu	$s1,$s1,$t9
    # Line 335
    beqz	$s6,.L0da91348
    # Line 326
    cvt.s.d	$f24,$f24
    sd	$s4,128($sp)
    sd	$ra,120($sp)
    sd	$s0,104($sp)
    sd	$s5,96($sp)
    b	.L0da9128c
    # Line 335
    li	$s7,-1
.L0da91278:
    ld	$at,80($sp)
    # Line 345
    ld	$s1,88($sp)
    addu	$s1,$s1,$at
    addiu	$s1,$s1,1
.L0da91288:
    beqz	$s6,.L0da91334
.L0da9128c:
    # Line 337
    slti	$v0,$s6,33
    bnez	$v0,.L0da9129c
    move	$s4,$s6
    # Line 339
    li	$s4,32
.L0da9129c:
    lui	$s0,0x8000
    # Line 343
    lw	$s5,0($s8)
    # Line 345
    move	$v1,$s1
    # Line 341
    subu	$s6,$s6,$s4
    # Line 345
    addiu	$s4,$s4,-1
    bltz	$s4,.L0da91288
    # Line 343
    addiu	$s8,$s8,4
    # Line 345
    move	$a1,$s4
    sd	$s4,88($sp)
    b	.L0da912f4
    sd	$s1,80($sp)
.L0da912c8:
    # Line 354
    lwc1	$f14,1644($s3)
    # lw $t9, -18200($gp) # &__glMgrim_Vertex3f
    sub.s	$f14,$f20,$f14
    mov.s	$f13,$f22
    jal	__glMgrim_Vertex3f
    mul.s	$f14,$f14,$f24
.L0da912e0:
    # Line 363
    srl	$s0,$s0,0x1
.L0da912e4:
    # Line 361
    addiu	$s2,$s2,16
    # Line 360
    add.s	$f20,$f20,$f26
    # Line 345
    beq	$s4,$s7,.L0da91278
    # Line 359
    addiu	$s1,$s1,1
.L0da912f4:
    # Line 345
    and	$at,$s5,$s0
    beqz	$at,.L0da912e0
    addiu	$s4,$s4,-1
    # Line 347
    # lw $t9, -18580($gp) # &__glMgrim_Color4fv
    jal	__glMgrim_Color4fv
    move	$a0,$s2
    lw	$v0,30488($s3)
    mtc1	$s1,$f12
    andi	$v0,$v0,0x4000
    bnez	$v0,.L0da912c8
    cvt.s.w	$f12,$f12
    # Line 356
    # lw $t9, -18232($gp) # &__glMgrim_Vertex2f
    jal	__glMgrim_Vertex2f
    mov.s	$f13,$f22
    b	.L0da912e4
    # Line 363
    srl	$s0,$s0,0x1
.L0da91334:
    ld	$s5,96($sp)
    ld	$s0,104($sp)
    ld	$s7,112($sp)
    ld	$ra,120($sp)
    ld	$s4,128($sp)
.L0da91348:
    # Line 371
    move	$v0,$zero
    ld	$gp,64($sp)
    ld	$s1,40($sp)
    ld	$s2,72($sp)
    ld	$s3,56($sp)
    ld	$s6,48($sp)
    ld	$s8,32($sp)
    ldc1	$f20,24($sp)
    ldc1	$f22,8($sp)
    ldc1	$f24,0($sp)
    ldc1	$f26,16($sp)
    addiu	$sp,$sp,160
    # Line 369
    li	$v1,8192
    lui	$a0,0x7
    ori	$a0,$a0,0x4080
    # Line 371
    jr	$ra
    # Line 369
    sw	$v1,0($a0)
.end StoreStippledSpan

# Function: ReadColor
# Declared: Line 376 (Source lines: 376-378)
# Address: 0x0da9138c - 0x0da913d8 (Size: 76 bytes, Frame: 48)
.ent ReadColor
ReadColor:
    # Line 377
    li	$a5,5126
    li	$a4,6408
    # Line 376
    move	$a6,$a3
    # Line 377
    li	$a3,1
    # Line 376
    move	$a0,$a1
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x17
    addiu	$at,$at,-11508
    addu	$gp,$t9,$at
    # Line 377
    # lw $t9, -31852($gp) # &__glMgrim_ReadPixels
    # Line 376
    move	$a1,$a2
    sd	$ra,0($sp)
    # Line 377
    jal	__glMgrim_ReadPixels
    li	$a2,1
    # Line 378
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end ReadColor

# Function: __glMgrInitRGB
# Declared: Line 381 (Source lines: 382-441)
# Address: 0x0da913d8 - 0x0da91604 (Size: 556 bytes, Frame: 48)
.globl __glMgrInitRGB
.ent __glMgrInitRGB
__glMgrInitRGB:
    # Line 382
    addiu	$sp,$sp,-48
    sd	$s5,8($sp)
    move	$s5,$a1
    sd	$gp,16($sp)
    lui	$at,0x17
    addiu	$at,$at,-11584
    addu	$gp,$t9,$at
    # Line 387
    # lw $t9, -27596($gp) # &__glInitBuffer
    sd	$s1,24($sp)
    sd	$ra,0($sp)
    jal	__glInitBuffer
    # Line 382
    move	$s1,$a0
    # Line 388
    la	$a0,sub_0da90000
    # Line 392
    sw	$zero,24($s1)
    # Line 391
    sw	$s5,0($s1)
    # Line 388
    addiu	$a0,$a0,3956
    sw	$a0,56($s1)
    ld	$ra,0($sp)
    # Line 393
    lw	$a3,3144($s5)
    lw	$a2,3152($s5)
    lw	$a1,3148($s5)
    lw	$a0,3140($s5)
    # Line 390
    li	$v0,2304
    # Line 393
    addu	$a1,$a1,$a2
    addu	$a0,$a0,$a3
    addu	$a0,$a0,$a1
    sw	$a0,12($s1)
    # Line 390
    lui	$v1,0x7
    # Line 396
    lw	$a0,3156($s5)
    # Line 390
    ori	$v1,$v1,0x4080
    sw	$v0,0($v1)
    # Line 397
    beqz	$a0,.L0da91470
    move	$a1,$zero
.L0da9145c:
    # Line 398
    andi	$a2,$a0,0x1
    bnez	$a2,.L0da91470
    # Line 397
    srl	$a0,$a0,0x1
    bnez	$a0,.L0da9145c
    addiu	$a1,$a1,1
.L0da91470:
    # Line 400
    sw	$a1,112($s1)
    # Line 401
    lw	$at,3140($s5)
    li	$a3,1
    sllv	$at,$a3,$at
    addiu	$at,$at,-1
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    sw	$at,100($s1)
    sw	$at,72($s1)
    swc1	$f0,88($s1)
    # Line 403
    lw	$a0,3160($s5)
    # Line 404
    beqz	$a0,.L0da914bc
    move	$a1,$zero
.L0da914a8:
    # Line 405
    andi	$v0,$a0,0x1
    bnez	$v0,.L0da914bc
    # Line 404
    srl	$a0,$a0,0x1
    bnez	$a0,.L0da914a8
    addiu	$a1,$a1,1
.L0da914bc:
    # Line 407
    sw	$a1,116($s1)
    # Line 408
    lw	$v1,3144($s5)
    sllv	$v1,$a3,$v1
    addiu	$v1,$v1,-1
    mtc1	$v1,$f1
    nop
    cvt.s.w	$f1,$f1
    sw	$v1,104($s1)
    sw	$v1,76($s1)
    swc1	$f1,92($s1)
    # Line 410
    lw	$a0,3164($s5)
    # Line 411
    beqz	$a0,.L0da91504
    move	$a1,$zero
.L0da914f0:
    # Line 412
    andi	$a2,$a0,0x1
    bnez	$a2,.L0da91504
    # Line 411
    srl	$a0,$a0,0x1
    bnez	$a0,.L0da914f0
    addiu	$a1,$a1,1
.L0da91504:
    # Line 414
    sw	$a1,120($s1)
    # Line 415
    lw	$at,3148($s5)
    sllv	$at,$a3,$at
    addiu	$at,$at,-1
    mtc1	$at,$f2
    nop
    cvt.s.w	$f2,$f2
    sw	$at,80($s1)
    sw	$at,108($s1)
    swc1	$f2,96($s1)
    # Line 417
    lw	$a0,3168($s5)
    # Line 433
    la	$a2,__glFetchSpan
    # Line 418
    beqz	$a0,.L0da91550
    move	$a1,$zero
.L0da9153c:
    # Line 419
    andi	$v0,$a0,0x1
    bnez	$v0,.L0da91550
    # Line 418
    srl	$a0,$a0,0x1
    bnez	$a0,.L0da9153c
    addiu	$a1,$a1,1
.L0da91550:
    # Line 436
    la	$at,__glMgrReadSpan
    # Line 421
    sw	$a1,124($s1)
    # Line 429
    li	$v1,255
    # Line 421
    lw	$a0,3152($s5)
    # Line 437
    la	$v0,__glMgrReturnSpan
    # Line 421
    beqz	$a0,.L0da915f0
    ld	$s5,8($sp)
    # Line 424
    sllv	$v1,$a3,$a0
    addiu	$v1,$v1,-1
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    sw	$v1,132($s1)
    swc1	$f3,128($s1)
.L0da91588:
    # Line 438
    la	$v1,sub_0da90000
    # Line 436
    sw	$at,176($s1)
    # Line 434
    la	$at,sub_0da90000
    # Line 433
    sw	$a2,200($s1)
    # Line 432
    la	$a2,sub_0da90000
    # Line 437
    sw	$v0,180($s1)
    # Line 435
    la	$v0,sub_0da90000
    # Line 432
    addiu	$a2,$a2,1548
    # Line 434
    addiu	$at,$at,4180
    # Line 429
    la	$a0,sub_0da90000
    # Line 435
    addiu	$v0,$v0,4524
    # Line 438
    addiu	$v1,$v1,4172
    # Line 429
    addiu	$a0,$a0,5004
    # Line 440
    sw	$a0,172($s1)
    # Line 439
    sw	$a0,168($s1)
    # Line 431
    la	$a0,sub_0da90000
    ld	$gp,16($sp)
    # Line 438
    sw	$v1,160($s1)
    # Line 435
    sw	$v0,188($s1)
    # Line 434
    sw	$at,184($s1)
    # Line 432
    sw	$a2,164($s1)
    # Line 431
    addiu	$a0,$a0,1780
    sw	$a0,216($s1)
    # Line 441
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da915f0:
    # Line 429
    lwc1	$f0,_lit_437f0000
    ld	$s5,8($sp)
    sw	$v1,132($s1)
    b	.L0da91588
    swc1	$f0,128($s1)
.end __glMgrInitRGB

.rdata
_lit8_3df0000000000000:
    .word 0x3df00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit_3f800000:
    .word 0x3f800000
_lit_437f0000:
    .word 0x437f0000
_lit_46fffe00:
    .word 0x46fffe00
_lit_bf800000:
    .word 0xbf800000

