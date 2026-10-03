# Source: ../MGRAS/mgras_ci.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_ci.c
# Total Functions: 8

.text

# Function: Store
# Declared: Line 26 (Source lines: 26-47)
# Address: 0x0da6d994 - 0x0da6da88 (Size: 244 bytes, Frame: 48)
.ent Store
Store:
    # Line 33
    lwc1	$f12,12($a1)
    # Line 31
    li	$at,5632
    # Line 26
    addiu	$sp,$sp,-48
    sd	$s5,0($sp)
    # Line 28
    lw	$s5,__glCurrentContext
    sd	$s3,8($sp)
    # Line 26
    move	$s3,$a1
    sd	$ra,16($sp)
    sd	$gp,24($sp)
    lui	$v1,0x19
    addiu	$v1,$v1,3332
    addu	$gp,$t9,$v1
    # Line 33
    # lw $t9, -18528($gp) # &__glMgrim_Indexf
    # Line 31
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    # Line 33
    jal	__glMgrim_Indexf
    # Line 31
    sw	$at,0($v0)
    # Line 33
    lw	$a2,3372($s5)
    lw	$at,0($s3)
    lw	$a1,4($s3)
    lw	$a0,30488($s5)
    subu	$at,$at,$a2
    mtc1	$at,$f12
    andi	$a0,$a0,0x4000
    beqz	$a0,.L0da6da64
    cvt.s.w	$f12,$f12
    # Line 39
    lw	$v1,8($s3)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f14
    lw	$v0,3376($s5)
    cvt.s.l	$f14,$f14
    subu	$v0,$a1,$v0
    mtc1	$v0,$f13
    nop
    cvt.s.w	$f13,$f13
    lwc1	$f15,1644($s5)
    # lw $t9, -18200($gp) # &__glMgrim_Vertex3f
    sub.s	$f14,$f14,$f15
    lwc1	$f15,1640($s5)
    jal	__glMgrim_Vertex3f
    div.s	$f14,$f14,$f15
    ld	$s3,8($sp)
    ld	$s5,0($sp)
    ld	$ra,16($sp)
.L0da6da48:
    ld	$gp,24($sp)
    # Line 47
    addiu	$sp,$sp,48
    # Line 46
    li	$a0,8192
    lui	$a1,0x7
    ori	$a1,$a1,0x4080
    # Line 47
    jr	$ra
    # Line 46
    sw	$a0,0($a1)
.L0da6da64:
    ld	$s3,8($sp)
    # Line 42
    # lw $t9, -18232($gp) # &__glMgrim_Vertex2f
    subu	$a2,$a1,$a2
    mtc1	$a2,$f13
    ld	$s5,0($sp)
    jal	__glMgrim_Vertex2f
    cvt.s.w	$f13,$f13
    b	.L0da6da48
    ld	$ra,16($sp)
.end Store

# Function: Clear
# Declared: Line 51 (Source lines: 53-54)
# Address: 0x0da6da88 - 0x0da6da9c (Size: 20 bytes, Frame: 0)
.ent Clear
Clear:
    # Line 53
    li	$at,5376
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    # Line 54
    jr	$ra
    # Line 53
    sw	$at,0($v0)
.end Clear

# Function: Resize
# Declared: Line 57 (Source lines: 57-82)
# Address: 0x0da6da9c - 0x0da6db74 (Size: 216 bytes, Frame: 192)
.ent Resize
Resize:
    # Line 57
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
    lui	$v0,0x19
    addiu	$v0,$v0,3068
    beqz	$at,.L0da6db60
    addu	$gp,$t9,$v0
    # Line 62
    # lw $t9, -27584($gp) # &__glResizeBuffer
    move	$a1,$s0
    sd	$ra,24($sp)
    jal	__glResizeBuffer
    move	$a2,$s1
    # Line 80
    lwc1	$f0,_lit_bf800000
    # Line 79
    lwc1	$f1,_lit_3f800000
    # Line 74
    li	$a0,13592
    # Line 69
    li	$ra,10756
    # Line 76
    mtc1	$s0,$f4
    # Line 64
    li	$at,13072
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sw	$at,0($v1)
    sw	$zero,0($v1)
    # Line 65
    sw	$zero,0($v1)
    # Line 66
    sw	$s0,0($v1)
    # Line 67
    sw	$s1,0($v1)
    # Line 69
    sw	$ra,0($v1)
    ld	$ra,24($sp)
    # Line 76
    cvt.s.w	$f4,$f4
    # Line 75
    mtc1	$zero,$f3
    # Line 78
    mtc1	$s1,$f2
    # Line 72
    li	$a1,11264
    # Line 70
    li	$a3,5889
    # Line 78
    cvt.s.w	$f2,$f2
    # Line 70
    sw	$a3,0($v1)
    # Line 72
    sw	$a1,0($v1)
    # Line 74
    sw	$a0,0($v1)
    # Line 75
    swc1	$f3,0($v1)
    # Line 76
    swc1	$f4,0($v1)
    # Line 77
    swc1	$f3,0($v1)
    # Line 78
    swc1	$f2,0($v1)
    # Line 79
    swc1	$f1,0($v1)
    # Line 80
    swc1	$f0,0($v1)
.L0da6db60:
    ld	$gp,16($sp)
    # Line 82
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end Resize

# Function: Pick
# Declared: Line 86 (Source lines: 87-87)
# Address: 0x0da6db74 - 0x0da6db7c (Size: 8 bytes, Frame: 0)
.ent Pick
Pick:
    # Line 87
    jr	$ra
    nop
.end Pick

# Function: StoreSpan
# Declared: Line 90 (Source lines: 90-121)
# Address: 0x0da6db7c - 0x0da6dcd0 (Size: 340 bytes, Frame: 224)
.ent StoreSpan
StoreSpan:
    # Line 90
    addiu	$sp,$sp,-96
    sdc1	$f24,24($sp)
    sd	$gp,64($sp)
    lui	$a1,0x19
    sdc1	$f26,8($sp)
    # Line 99
    lwc1	$f26,1640($a0)
    # Line 90
    addiu	$a1,$a1,2844
    addu	$gp,$t9,$a1
    # Line 99
    ldc1	$f24,_lit8_3ff0000000000000
    cvt.d.s	$f26,$f26
    div.d	$f24,$f24,$f26
    # Line 102
    li	$v0,5632
    sd	$s0,40($sp)
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sd	$s1,48($sp)
    # Line 90
    move	$s1,$a0
    # Line 98
    lw	$s0,30516($s1)
    # Line 96
    lw	$a0,30256($a0)
    # Line 102
    sw	$v0,0($v1)
    sdc1	$f20,0($sp)
    # Line 96
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f20
    # Line 93
    lw	$t9,3372($s1)
    # Line 95
    lw	$at,30252($s1)
    # Line 96
    cvt.s.l	$f20,$f20
    sdc1	$f22,16($sp)
    # Line 95
    subu	$at,$at,$t9
    mtc1	$at,$f22
    sd	$s4,32($sp)
    # Line 97
    lw	$a0,30376($s1)
    # Line 95
    cvt.s.w	$f22,$f22
    sd	$s2,56($sp)
    # Line 97
    mtc1	$a0,$f26
    # Line 93
    lw	$s2,30248($s1)
    # Line 92
    lw	$s4,30300($s1)
    # Line 97
    cvt.s.w	$f26,$f26
    # Line 93
    subu	$s2,$s2,$t9
    # Line 103
    addu	$s4,$s4,$s2
    slt	$at,$s2,$s4
    beqz	$at,.L0da6dc90
    # Line 99
    cvt.s.d	$f24,$f24
    b	.L0da6dc54
    sd	$ra,72($sp)
.L0da6dc30:
    # Line 112
    lwc1	$f14,1644($s1)
    # lw $t9, -18200($gp) # &__glMgrim_Vertex3f
    sub.s	$f14,$f20,$f14
    mov.s	$f13,$f22
    jal	__glMgrim_Vertex3f
    mul.s	$f14,$f14,$f24
    # Line 103
    addiu	$s2,$s2,1
.L0da6dc4c:
    beq	$s4,$s2,.L0da6dc8c
    # Line 117
    add.s	$f20,$f20,$f26
.L0da6dc54:
    # Line 104
    # lw $t9, -18528($gp) # &__glMgrim_Indexf
    jal	__glMgrim_Indexf
    lwc1	$f12,0($s0)
    # Line 105
    addiu	$s0,$s0,16
    lw	$at,30488($s1)
    mtc1	$s2,$f12
    andi	$at,$at,0x4000
    bnez	$at,.L0da6dc30
    cvt.s.w	$f12,$f12
    # Line 114
    # lw $t9, -18232($gp) # &__glMgrim_Vertex2f
    jal	__glMgrim_Vertex2f
    mov.s	$f13,$f22
    b	.L0da6dc4c
    # Line 103
    addiu	$s2,$s2,1
.L0da6dc8c:
    ld	$ra,72($sp)
.L0da6dc90:
    ld	$gp,64($sp)
    # Line 121
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    ld	$s2,56($sp)
    ld	$s4,32($sp)
    ldc1	$f20,0($sp)
    ldc1	$f22,16($sp)
    ldc1	$f24,24($sp)
    ldc1	$f26,8($sp)
    addiu	$sp,$sp,96
    # Line 119
    li	$v0,8192
    lui	$v1,0x7
    ori	$v1,$v1,0x4080
    sw	$v0,0($v1)
    # Line 121
    jr	$ra
    move	$v0,$zero
.end StoreSpan

# Function: StoreStippledSpan
# Declared: Line 125 (Source lines: 125-178)
# Address: 0x0da6dcd0 - 0x0da6deb0 (Size: 480 bytes, Frame: 160)
.ent StoreStippledSpan
StoreStippledSpan:
    # Line 125
    addiu	$sp,$sp,-160
    sdc1	$f24,0($sp)
    sd	$gp,64($sp)
    lui	$a1,0x19
    sdc1	$f26,16($sp)
    # Line 132
    lwc1	$f26,1640($a0)
    # Line 125
    addiu	$a1,$a1,2504
    addu	$gp,$t9,$a1
    # Line 132
    ldc1	$f24,_lit8_3ff0000000000000
    cvt.d.s	$f26,$f26
    div.d	$f24,$f24,$f26
    # Line 142
    li	$at,5632
    sd	$s8,96($sp)
    sd	$s7,40($sp)
    sd	$s2,72($sp)
    lui	$v0,0x7
    ori	$v0,$v0,0x4080
    sd	$s3,56($sp)
    # Line 125
    move	$s3,$a0
    # Line 130
    lw	$a0,30256($a0)
    # Line 140
    lw	$s2,30516($s3)
    sdc1	$f20,24($sp)
    # Line 130
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f20
    # Line 138
    lw	$s7,30524($s3)
    sd	$s6,48($sp)
    # Line 130
    cvt.s.l	$f20,$f20
    # Line 131
    lw	$v1,30376($s3)
    sd	$s1,32($sp)
    # Line 129
    lw	$a0,3376($s3)
    # Line 131
    mtc1	$v1,$f26
    # Line 129
    lw	$v1,30252($s3)
    sdc1	$f22,8($sp)
    # Line 131
    cvt.s.w	$f26,$f26
    # Line 129
    subu	$v1,$v1,$a0
    mtc1	$v1,$f22
    # Line 128
    lw	$t9,3372($s3)
    lw	$s1,30248($s3)
    # Line 129
    cvt.s.w	$f22,$f22
    # Line 137
    lw	$s6,30300($s3)
    # Line 142
    sw	$at,0($v0)
    # Line 128
    subu	$s1,$s1,$t9
    # Line 142
    beqz	$s6,.L0da6de6c
    # Line 132
    cvt.s.d	$f24,$f24
    sd	$s4,128($sp)
    sd	$ra,120($sp)
    sd	$s0,112($sp)
    sd	$s5,104($sp)
    b	.L0da6ddb0
    # Line 142
    li	$s8,-1
.L0da6dd9c:
    ld	$at,80($sp)
    # Line 152
    ld	$s1,88($sp)
    addu	$s1,$s1,$at
    addiu	$s1,$s1,1
.L0da6ddac:
    beqz	$s6,.L0da6de58
.L0da6ddb0:
    # Line 144
    slti	$v0,$s6,33
    bnez	$v0,.L0da6ddc0
    move	$s4,$s6
    # Line 146
    li	$s4,32
.L0da6ddc0:
    lui	$s0,0x8000
    # Line 150
    lw	$s5,0($s7)
    # Line 152
    move	$v1,$s1
    # Line 148
    subu	$s6,$s6,$s4
    # Line 152
    addiu	$s4,$s4,-1
    bltz	$s4,.L0da6ddac
    # Line 150
    addiu	$s7,$s7,4
    # Line 152
    move	$a1,$s4
    sd	$s4,88($sp)
    b	.L0da6de18
    sd	$s1,80($sp)
.L0da6ddec:
    # Line 161
    lwc1	$f14,1644($s3)
    # lw $t9, -18200($gp) # &__glMgrim_Vertex3f
    sub.s	$f14,$f20,$f14
    mov.s	$f13,$f22
    jal	__glMgrim_Vertex3f
    mul.s	$f14,$f14,$f24
.L0da6de04:
    # Line 170
    srl	$s0,$s0,0x1
.L0da6de08:
    # Line 168
    addiu	$s2,$s2,16
    # Line 167
    add.s	$f20,$f20,$f26
    # Line 152
    beq	$s4,$s8,.L0da6dd9c
    # Line 166
    addiu	$s1,$s1,1
.L0da6de18:
    # Line 152
    and	$at,$s5,$s0
    beqz	$at,.L0da6de04
    addiu	$s4,$s4,-1
    # Line 154
    # lw $t9, -18528($gp) # &__glMgrim_Indexf
    jal	__glMgrim_Indexf
    lwc1	$f12,0($s2)
    lw	$v0,30488($s3)
    mtc1	$s1,$f12
    andi	$v0,$v0,0x4000
    bnez	$v0,.L0da6ddec
    cvt.s.w	$f12,$f12
    # Line 163
    # lw $t9, -18232($gp) # &__glMgrim_Vertex2f
    jal	__glMgrim_Vertex2f
    mov.s	$f13,$f22
    b	.L0da6de08
    # Line 170
    srl	$s0,$s0,0x1
.L0da6de58:
    ld	$s8,96($sp)
    ld	$s5,104($sp)
    ld	$s0,112($sp)
    ld	$ra,120($sp)
    ld	$s4,128($sp)
.L0da6de6c:
    # Line 178
    move	$v0,$zero
    ld	$gp,64($sp)
    ld	$s1,32($sp)
    ld	$s2,72($sp)
    ld	$s3,56($sp)
    ld	$s6,48($sp)
    ld	$s7,40($sp)
    ldc1	$f20,24($sp)
    ldc1	$f22,8($sp)
    ldc1	$f24,0($sp)
    ldc1	$f26,16($sp)
    addiu	$sp,$sp,160
    # Line 176
    li	$v1,8192
    lui	$a0,0x7
    ori	$a0,$a0,0x4080
    # Line 178
    jr	$ra
    # Line 176
    sw	$v1,0($a0)
.end StoreStippledSpan

# Function: ReadColor
# Declared: Line 183 (Source lines: 183-185)
# Address: 0x0da6deb0 - 0x0da6defc (Size: 76 bytes, Frame: 48)
.ent ReadColor
ReadColor:
    # Line 184
    li	$a5,5126
    li	$a4,6400
    # Line 183
    move	$a6,$a3
    # Line 184
    li	$a3,1
    # Line 183
    move	$a0,$a1
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    lui	$at,0x19
    addiu	$at,$at,2024
    addu	$gp,$t9,$at
    # Line 184
    # lw $t9, -31852($gp) # &__glMgrim_ReadPixels
    # Line 183
    move	$a1,$a2
    sd	$ra,0($sp)
    # Line 184
    jal	__glMgrim_ReadPixels
    li	$a2,1
    # Line 185
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end ReadColor

# Function: __glMgrInitCI
# Declared: Line 188 (Source lines: 189-214)
# Address: 0x0da6defc - 0x0da6dfec (Size: 240 bytes, Frame: 48)
.globl __glMgrInitCI
.ent __glMgrInitCI
__glMgrInitCI:
    # Line 189
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    sd	$gp,16($sp)
    lui	$at,0x19
    addiu	$at,$at,1948
    addu	$gp,$t9,$at
    # Line 192
    # lw $t9, -27596($gp) # &__glInitBuffer
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    jal	__glInitBuffer
    # Line 189
    move	$s8,$a0
    # Line 209
    la	$at,sub_0da70000
    # Line 201
    lwc1	$f0,_lit_3f800000
    # Line 209
    addiu	$at,$at,-9348
    # Line 208
    la	$ra,__glFetchSpan
    # Line 211
    la	$a2,sub_0da70000
    # Line 193
    la	$a4,sub_0da70000
    # Line 210
    la	$v0,sub_0da70000
    # Line 211
    addiu	$a2,$a2,-9356
    # Line 193
    addiu	$a4,$a4,-9572
    sw	$a4,56($s8)
    # Line 207
    la	$a4,sub_0da70000
    # Line 210
    addiu	$v0,$v0,-9008
    # Line 195
    ld	$v1,24($sp)
    # Line 207
    addiu	$a4,$a4,-9836
    # Line 195
    la	$a3,sub_0da70000
    lw	$a0,3136($v1)
    # Line 197
    sw	$zero,24($s8)
    # Line 196
    sw	$v1,0($s8)
    # Line 195
    addiu	$a3,$a3,-8528
    # Line 198
    lw	$v1,3136($v1)
    # Line 213
    sw	$a3,172($s8)
    # Line 212
    sw	$a3,168($s8)
    # Line 206
    la	$a3,sub_0da70000
    ld	$gp,16($sp)
    # Line 209
    sw	$at,184($s8)
    # Line 207
    sw	$a4,164($s8)
    # Line 204
    swc1	$f0,128($s8)
    # Line 203
    swc1	$f0,96($s8)
    # Line 202
    swc1	$f0,92($s8)
    # Line 201
    swc1	$f0,88($s8)
    # Line 208
    sw	$ra,200($s8)
    # Line 214
    ld	$ra,0($sp)
    # Line 210
    sw	$v0,188($s8)
    # Line 200
    li	$v0,1
    # Line 211
    sw	$a2,160($s8)
    # Line 195
    lui	$a2,0x7
    ori	$a2,$a2,0x4080
    # Line 198
    sw	$v1,12($s8)
    # Line 200
    sllv	$v0,$v0,$v1
    addiu	$v0,$v0,-1
    sw	$v0,72($s8)
    # Line 206
    addiu	$a3,$a3,-9592
    sw	$a3,216($s8)
    # Line 214
    ld	$s8,8($sp)
    addiu	$sp,$sp,48
    # Line 195
    li	$a3,2564
    sw	$a3,0($a2)
    # Line 214
    jr	$ra
    # Line 195
    sw	$a0,0($a2)
.end __glMgrInitCI

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit_3f800000:
    .word 0x3f800000
_lit_bf800000:
    .word 0xbf800000

