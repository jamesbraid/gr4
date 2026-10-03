# Source: ../dlist/dl_splcomp.c
# Category: dlist
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../dlist/dl_splcomp.c
# Total Functions: 30

.text

# Function: __glsplc_InvalidValue
# Declared: Line 46 (Source lines: 46-49)
# Address: 0x0db00ea0 - 0x0db00ed8 (Size: 56 bytes, Frame: 16)
.globl __glsplc_InvalidValue
.ent __glsplc_InvalidValue
__glsplc_InvalidValue:
    # Line 46
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$v0,0x10
    # Line 48
    lw	$at,__glCurrentContext
    # Line 46
    addiu	$v0,$v0,-10248
    addu	$gp,$t9,$v0
    # Line 48
    lw	$t9,4740($at)
    sd	$ra,0($sp)
    jalr	$t9
    li	$a0,1281
    # Line 49
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_InvalidValue

# Function: __glsplc_InvalidEnum
# Declared: Line 52 (Source lines: 52-55)
# Address: 0x0db00ed8 - 0x0db00f10 (Size: 56 bytes, Frame: 16)
.globl __glsplc_InvalidEnum
.ent __glsplc_InvalidEnum
__glsplc_InvalidEnum:
    # Line 52
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$v0,0x10
    # Line 54
    lw	$at,__glCurrentContext
    # Line 52
    addiu	$v0,$v0,-10304
    addu	$gp,$t9,$v0
    # Line 54
    lw	$t9,4740($at)
    sd	$ra,0($sp)
    jalr	$t9
    li	$a0,1280
    # Line 55
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_InvalidEnum

# Function: __glsplc_InvalidOperation
# Declared: Line 58 (Source lines: 58-61)
# Address: 0x0db00f10 - 0x0db00f48 (Size: 56 bytes, Frame: 16)
.globl __glsplc_InvalidOperation
.ent __glsplc_InvalidOperation
__glsplc_InvalidOperation:
    # Line 58
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$v0,0x10
    # Line 60
    lw	$at,__glCurrentContext
    # Line 58
    addiu	$v0,$v0,-10360
    addu	$gp,$t9,$v0
    # Line 60
    lw	$t9,4740($at)
    sd	$ra,0($sp)
    jalr	$t9
    li	$a0,1282
    # Line 61
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_InvalidOperation

# Function: __glsplc_UnimplementedExtension
# Declared: Line 64 (Source lines: 64-67)
# Address: 0x0db00f48 - 0x0db00f80 (Size: 56 bytes, Frame: 16)
.globl __glsplc_UnimplementedExtension
.ent __glsplc_UnimplementedExtension
__glsplc_UnimplementedExtension:
    # Line 64
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    lui	$v0,0x10
    # Line 66
    lw	$at,__glCurrentContext
    # Line 64
    addiu	$v0,$v0,-10416
    addu	$gp,$t9,$v0
    # Line 66
    lw	$t9,4740($at)
    sd	$ra,0($sp)
    jalr	$t9
    li	$a0,1282
    # Line 67
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_UnimplementedExtension

# Function: __glsplc_CallList
# Declared: Line 79 (Source lines: 80-91)
# Address: 0x0db00f80 - 0x0db00ff4 (Size: 116 bytes, Frame: 48)
.globl __glsplc_CallList
.ent __glsplc_CallList
__glsplc_CallList:
    # Line 80
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    sd	$a0,0($sp)
    sd	$gp,8($sp)
    lui	$at,0x10
    addiu	$at,$at,-10472
    beqz	$a0,.L0db00fd8
    addu	$gp,$t9,$at
    # Line 88
    # lw $t9, -31768($gp) # &__glSPDlalloc
    move	$a1,$zero
    jal	__glSPDlalloc
    li	$a0,4
    ld	$v1,0($sp)
    bnez	$v0,.L0db00fc8
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 89
    jr	$ra
    addiu	$sp,$sp,48
.L0db00fc8:
    ld	$gp,8($sp)
    # Line 91
    addiu	$sp,$sp,48
    jr	$ra
    # Line 90
    sw	$v1,0($v0)
.L0db00fd8:
    # Line 84
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    bal __glsplc_InvalidEnum
    nop
    # Line 85
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_CallList

# Function: __glsplc_CallLists
# Declared: Line 93 (Source lines: 94-115)
# Address: 0x0db00ff4 - 0x0db01120 (Size: 300 bytes, Frame: 208)
.globl __glsplc_CallLists
.ent __glsplc_CallLists
__glsplc_CallLists:
    # Line 94
    move	$v0,$a2
    addiu	$sp,$sp,-80
    sd	$s1,8($sp)
    move	$s1,$a0
    sd	$s0,24($sp)
    move	$s0,$a1
    sd	$gp,16($sp)
    lui	$at,0x10
    addiu	$at,$at,-10588
    bltz	$a0,.L0db010f8
    addu	$gp,$t9,$at
    # Line 101
    sltiu	$v1,$s0,5120
    bnez	$v1,.L0db01044
    sltiu	$a3,$s0,5130
    beqz	$a3,.L0db01044
    # Line 103
    la	$a0,__GLdlsize_tab
    sd	$s2,40($sp)
    addu	$a0,$s0,$a0
    b	.L0db0104c
    lbu	$a0,-5120($a0)
.L0db01044:
    li	$a0,-1
    sd	$s2,40($sp)
.L0db0104c:
    mult	$a0,$s1
    sd	$ra,32($sp)
    mflo	$s2
    bltz	$s2,.L0db010d4
    sd	$v0,0($sp)
    # Line 109
    li	$a1,1
    li	$a2,-4
    # lw $t9, -31768($gp) # &__glSPDlalloc
    addiu	$a0,$s2,3
    and	$a0,$a0,$a2
    jal	__glSPDlalloc
    addiu	$a0,$a0,8
    bnez	$v0,.L0db0109c
    ld	$ra,32($sp)
    ld	$gp,16($sp)
    # Line 110
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db0109c:
    # Line 113
    move	$a2,$s2
    ld	$a1,0($sp)
    # lw $t9, -17848($gp) # &memcpy
    addiu	$a0,$v0,8
    # Line 112
    sw	$s0,4($v0)
    # Line 113
    jal	memcpy
    # Line 111
    sw	$s1,0($v0)
    ld	$gp,16($sp)
    # Line 115
    ld	$s0,24($sp)
    ld	$ra,32($sp)
    ld	$s1,8($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db010d4:
    # Line 105
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    bal __glsplc_InvalidEnum
    ld	$s2,40($sp)
    ld	$gp,16($sp)
    # Line 106
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db010f8:
    # Line 100
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
    sd	$ra,32($sp)
    bal __glsplc_InvalidValue
    nop
    ld	$gp,16($sp)
    # Line 101
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_CallLists

# Function: __glsplc_Bitmap
# Declared: Line 121 (Source lines: 125-153)
# Address: 0x0db01120 - 0x0db01260 (Size: 320 bytes, Frame: 160)
.globl __glsplc_Bitmap
.ent __glsplc_Bitmap
__glsplc_Bitmap:
    # Line 129
    lw	$v0,__glCurrentContext
    # Line 125
    move	$a2,$a6
    mov.s	$f4,$f17
    mov.s	$f5,$f16
    mov.s	$f6,$f15
    mov.s	$f7,$f14
    addiu	$sp,$sp,-160
    sd	$s0,72($sp)
    move	$s0,$a1
    sd	$s1,56($sp)
    move	$s1,$a0
    sd	$gp,64($sp)
    lui	$at,0x10
    addiu	$at,$at,-10888
    # Line 131
    bltz	$a0,.L0db01238
    # Line 125
    addu	$gp,$t9,$at
    sd	$ra,80($sp)
    sd	$v0,40($sp)
    sd	$a2,48($sp)
    sdc1	$f4,0($sp)
    sdc1	$f5,8($sp)
    sdc1	$f6,16($sp)
    # Line 131
    bltz	$s0,.L0db01238
    sdc1	$f7,24($sp)
    # Line 139
    addiu	$a1,$s1,7
    sra	$a1,$a1,0x3
    mult	$a1,$s0
    li	$a2,-4
    li	$a1,4
    # lw $t9, -31768($gp) # &__glSPDlalloc
    mflo	$a0
    addiu	$a0,$a0,3
    and	$a0,$a0,$a2
    sd	$a0,32($sp)
    jal	__glSPDlalloc
    addiu	$a0,$a0,32
    bnez	$v0,.L0db011cc
    ld	$ra,80($sp)
    ld	$gp,64($sp)
    # Line 140
    ld	$s0,72($sp)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0db011cc:
    # Line 151
    addiu	$a6,$v0,32
    ld	$a5,48($sp)
    li	$a4,6656
    li	$a3,6400
    move	$a2,$s0
    move	$a1,$s1
    ld	$a0,40($sp)
    # Line 143
    sw	$s0,4($v0)
    # Line 142
    sw	$s1,0($v0)
    # Line 144
    ldc1	$f0,24($sp)
    # Line 151
    # lw $t9, -26712($gp) # &__glFillImage
    # Line 145
    ldc1	$f1,16($sp)
    # Line 148
    ld	$a7,32($sp)
    # Line 147
    ldc1	$f3,0($sp)
    # Line 146
    ldc1	$f2,8($sp)
    # Line 148
    sw	$a7,24($v0)
    # Line 147
    swc1	$f3,20($v0)
    # Line 146
    swc1	$f2,16($v0)
    # Line 145
    swc1	$f1,12($v0)
    # Line 151
    jal	__glFillImage
    # Line 144
    swc1	$f0,8($v0)
    ld	$gp,64($sp)
    # Line 153
    ld	$ra,80($sp)
    ld	$s0,72($sp)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0db01238:
    # Line 132
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
    sd	$ra,80($sp)
    bal __glsplc_InvalidValue
    nop
    ld	$gp,64($sp)
    # Line 133
    ld	$ra,80($sp)
    ld	$s0,72($sp)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __glsplc_Bitmap

# Function: __glsplc_PolygonStipple
# Declared: Line 155 (Source lines: 156-167)
# Address: 0x0db01260 - 0x0db012f4 (Size: 148 bytes, Frame: 48)
.globl __glsplc_PolygonStipple
.ent __glsplc_PolygonStipple
__glsplc_PolygonStipple:
    # Line 161
    li	$a3,6656
    li	$a2,6400
    li	$a1,32
    # Line 156
    addiu	$sp,$sp,-48
    sd	$a0,8($sp)
    # Line 161
    li	$a0,32
    sd	$gp,16($sp)
    # Line 156
    lui	$v0,0x10
    addiu	$v0,$v0,-11208
    addu	$gp,$t9,$v0
    # Line 161
    # lw $t9, -26724($gp) # &__glImageSize
    # Line 158
    lw	$at,__glCurrentContext
    sd	$ra,24($sp)
    # Line 161
    jal	__glImageSize
    sd	$at,0($sp)
    # lw $t9, -31768($gp) # &__glSPDlalloc
    move	$a0,$v0
    jal	__glSPDlalloc
    li	$a1,101
    bnez	$v0,.L0db012c0
    # Line 163
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db012c0:
    ld	$a0,0($sp)
    # Line 166
    move	$a6,$v0
    ld	$a5,8($sp)
    li	$a4,6656
    # lw $t9, -26712($gp) # &__glFillImage
    li	$a3,6400
    li	$a2,32
    jal	__glFillImage
    li	$a1,32
    # Line 167
    ld	$ra,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_PolygonStipple

# Function: __glsplc_Map1f
# Declared: Line 177 (Source lines: 181-212)
# Address: 0x0db012f4 - 0x0db01454 (Size: 352 bytes, Frame: 128)
.globl __glsplc_Map1f
.ent __glsplc_Map1f
__glsplc_Map1f:
    # Line 181
    addiu	$sp,$sp,-128
    sd	$a5,24($sp)
    sd	$s0,72($sp)
    move	$s0,$a4
    sd	$s1,48($sp)
    move	$s1,$a3
    sdc1	$f14,0($sp)
    sdc1	$f13,8($sp)
    sd	$a0,32($sp)
    sd	$gp,56($sp)
    lui	$at,0x10
    addiu	$at,$at,-11356
    addu	$gp,$t9,$at
    # Line 188
    # lw $t9, -27168($gp) # &__glEvalComputeK
    # Line 186
    lw	$v0,__glCurrentContext
    sd	$ra,64($sp)
    # Line 188
    jal	__glEvalComputeK
    sd	$v0,40($sp)
    ldc1	$f0,8($sp)
    bltz	$v0,.L0db01430
    move	$a0,$v0
    ld	$v1,40($sp)
    # Line 194
    lw	$v1,3472($v1)
    slt	$v1,$v1,$s0
    bnez	$v1,.L0db013bc
    slt	$a6,$s1,$v0
    bnez	$a6,.L0db013c0
    # Line 196
    nop	# was lw $t9, -29344($gp) # &__glsplc_InvalidValue
    # Line 194
    blez	$s0,.L0db013bc
    ldc1	$f1,0($sp)
    c.eq.s	$f0,$f1
    nop
    bc1t	.L0db013bc
    sd	$a0,16($sp)
    # Line 200
    # lw $t9, -27068($gp) # &__glMap1_size
    move	$a0,$v0
    jal	__glMap1_size
    move	$a1,$s0
    # Line 203
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,142
    sll	$a0,$v0,0x2
    jal	__glSPDlalloc
    addiu	$a0,$a0,16
    bnez	$v0,.L0db013e0
    # Line 204
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    ld	$s0,72($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db013bc:
    # Line 196
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
.L0db013c0:
    bal __glsplc_InvalidValue
    nop
    ld	$gp,56($sp)
    # Line 197
    ld	$ra,64($sp)
    ld	$s0,72($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db013e0:
    # Line 211
    addiu	$a4,$v0,16
    ld	$a3,24($sp)
    move	$a2,$s1
    move	$a1,$s0
    ld	$a0,16($sp)
    # Line 209
    sw	$s0,12($v0)
    # Line 206
    ld	$a5,32($sp)
    # Line 208
    ldc1	$f3,0($sp)
    # Line 207
    ldc1	$f2,8($sp)
    # Line 211
    # lw $t9, -27076($gp) # &__glFillMap1f
    # Line 208
    swc1	$f3,8($v0)
    # Line 207
    swc1	$f2,4($v0)
    # Line 211
    jal	__glFillMap1f
    # Line 206
    sw	$a5,0($v0)
    ld	$gp,56($sp)
    # Line 212
    ld	$ra,64($sp)
    ld	$s0,72($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db01430:
    # Line 190
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    bal __glsplc_InvalidEnum
    nop
    ld	$gp,56($sp)
    # Line 191
    ld	$ra,64($sp)
    ld	$s0,72($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glsplc_Map1f

# Function: __glsplc_Map1d
# Declared: Line 214 (Source lines: 218-249)
# Address: 0x0db01454 - 0x0db015bc (Size: 360 bytes, Frame: 128)
.globl __glsplc_Map1d
.ent __glsplc_Map1d
__glsplc_Map1d:
    # Line 218
    addiu	$sp,$sp,-128
    sd	$a5,24($sp)
    sd	$s0,72($sp)
    move	$s0,$a4
    sd	$s1,48($sp)
    move	$s1,$a3
    sdc1	$f14,0($sp)
    sdc1	$f13,8($sp)
    sd	$a0,32($sp)
    sd	$gp,56($sp)
    lui	$at,0x10
    addiu	$at,$at,-11708
    addu	$gp,$t9,$at
    # Line 225
    # lw $t9, -27168($gp) # &__glEvalComputeK
    # Line 223
    lw	$v0,__glCurrentContext
    sd	$ra,64($sp)
    # Line 225
    jal	__glEvalComputeK
    sd	$v0,40($sp)
    ldc1	$f0,8($sp)
    bltz	$v0,.L0db01598
    move	$a0,$v0
    ld	$v1,40($sp)
    # Line 231
    lw	$v1,3472($v1)
    slt	$v1,$v1,$s0
    bnez	$v1,.L0db0151c
    slt	$a6,$s1,$v0
    bnez	$a6,.L0db01520
    # Line 233
    nop	# was lw $t9, -29344($gp) # &__glsplc_InvalidValue
    # Line 231
    blez	$s0,.L0db0151c
    ldc1	$f1,0($sp)
    c.eq.d	$f0,$f1
    nop
    bc1t	.L0db0151c
    sd	$a0,16($sp)
    # Line 237
    # lw $t9, -27068($gp) # &__glMap1_size
    move	$a0,$v0
    jal	__glMap1_size
    move	$a1,$s0
    # Line 240
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,141
    sll	$a0,$v0,0x2
    jal	__glSPDlalloc
    addiu	$a0,$a0,16
    bnez	$v0,.L0db01540
    # Line 241
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    ld	$s0,72($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db0151c:
    # Line 233
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
.L0db01520:
    bal __glsplc_InvalidValue
    nop
    ld	$gp,56($sp)
    # Line 234
    ld	$ra,64($sp)
    ld	$s0,72($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db01540:
    # Line 248
    addiu	$a4,$v0,16
    ld	$a3,24($sp)
    move	$a2,$s1
    move	$a1,$s0
    ld	$a0,16($sp)
    # Line 245
    ldc1	$f3,0($sp)
    # Line 246
    sw	$s0,12($v0)
    # Line 244
    ldc1	$f2,8($sp)
    # Line 245
    cvt.s.d	$f3,$f3
    # Line 243
    ld	$a5,32($sp)
    # Line 248
    # lw $t9, -27072($gp) # &__glFillMap1d
    # Line 244
    cvt.s.d	$f2,$f2
    # Line 243
    sw	$a5,0($v0)
    # Line 245
    swc1	$f3,8($v0)
    # Line 248
    jal	__glFillMap1d
    # Line 244
    swc1	$f2,4($v0)
    ld	$gp,56($sp)
    # Line 249
    ld	$ra,64($sp)
    ld	$s0,72($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db01598:
    # Line 227
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    bal __glsplc_InvalidEnum
    nop
    ld	$gp,56($sp)
    # Line 228
    ld	$ra,64($sp)
    ld	$s0,72($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glsplc_Map1d

# Function: __glsplc_Map2f
# Declared: Line 263 (Source lines: 269-306)
# Address: 0x0db015bc - 0x0db01774 (Size: 440 bytes, Frame: 176)
.globl __glsplc_Map2f
.ent __glsplc_Map2f
__glsplc_Map2f:
    # Line 269
    addiu	$sp,$sp,-176
    sd	$a7,32($sp)
    sdc1	$f18,16($sp)
    sdc1	$f17,24($sp)
    sd	$s0,72($sp)
    move	$s0,$a4
    sd	$a3,40($sp)
    sdc1	$f14,8($sp)
    sdc1	$f13,0($sp)
    sd	$a0,56($sp)
    sd	$gp,80($sp)
    lui	$at,0x10
    addiu	$at,$at,-12068
    addu	$gp,$t9,$at
    # Line 276
    # lw $t9, -27168($gp) # &__glEvalComputeK
    # Line 274
    lw	$v0,__glCurrentContext
    sd	$ra,88($sp)
    # Line 276
    jal	__glEvalComputeK
    sd	$v0,64($sp)
    # Line 282
    ldc1	$f0,0($sp)
    ldc1	$f2,24($sp)
    # Line 276
    bltz	$v0,.L0db01754
    move	$a0,$v0
    ld	$a1,64($sp)
    sd	$s1,96($sp)
    # Line 282
    lw	$s1,180($sp)
    lw	$a1,3472($a1)
    slt	$v1,$a1,$s1
    bnez	$v1,.L0db016c8
    ld	$a5,32($sp)
    slt	$a5,$a5,$v0
    bnez	$a5,.L0db016cc
    # Line 286
    nop	# was lw $t9, -29344($gp) # &__glsplc_InvalidValue
    # Line 282
    blez	$s1,.L0db016c8
    ldc1	$f1,8($sp)
    c.eq.s	$f0,$f1
    nop
    bc1t	.L0db016c8
    ld	$a6,40($sp)
    slt	$a6,$a6,$v0
    bnez	$a6,.L0db016c8
    slt	$at,$a1,$s0
    bnez	$at,.L0db016cc
    # Line 286
    nop	# was lw $t9, -29344($gp) # &__glsplc_InvalidValue
    # Line 282
    blez	$s0,.L0db016c8
    ldc1	$f3,16($sp)
    c.eq.s	$f2,$f3
    nop
    bc1t	.L0db016c8
    sd	$a0,48($sp)
    # Line 290
    # lw $t9, -27056($gp) # &__glMap2_size
    move	$a0,$v0
    move	$a1,$s0
    jal	__glMap2_size
    move	$a2,$s1
    # Line 293
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,144
    sll	$a0,$v0,0x2
    jal	__glSPDlalloc
    addiu	$a0,$a0,28
    bnez	$v0,.L0db016e8
    # Line 294
    ld	$ra,88($sp)
    ld	$gp,80($sp)
    ld	$s0,72($sp)
    ld	$s1,96($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db016c8:
    # Line 286
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
.L0db016cc:
    bal __glsplc_InvalidValue
    ld	$s1,96($sp)
    # Line 287
    ld	$ra,88($sp)
    ld	$gp,80($sp)
    ld	$s0,72($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db016e8:
    # Line 305
    addiu	$a6,$v0,28
    lw	$a5,188($sp)
    ld	$a4,32($sp)
    ld	$a3,40($sp)
    move	$a2,$s1
    move	$a1,$s0
    ld	$a0,48($sp)
    # Line 302
    sw	$s1,24($v0)
    # Line 299
    sw	$s0,12($v0)
    # Line 296
    ld	$a7,56($sp)
    # Line 305
    # lw $t9, -27064($gp) # &__glFillMap2f
    # Line 297
    ldc1	$f4,0($sp)
    # Line 301
    ldc1	$f7,16($sp)
    # Line 300
    ldc1	$f6,24($sp)
    # Line 298
    ldc1	$f5,8($sp)
    # Line 301
    swc1	$f7,20($v0)
    # Line 300
    swc1	$f6,16($v0)
    # Line 298
    swc1	$f5,8($v0)
    # Line 297
    swc1	$f4,4($v0)
    # Line 305
    jal	__glFillMap2f
    # Line 296
    sw	$a7,0($v0)
    ld	$gp,80($sp)
    # Line 306
    ld	$ra,88($sp)
    ld	$s0,72($sp)
    ld	$s1,96($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db01754:
    # Line 278
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    bal __glsplc_InvalidEnum
    nop
    # Line 279
    ld	$ra,88($sp)
    ld	$gp,80($sp)
    ld	$s0,72($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end __glsplc_Map2f

# Function: __glsplc_Map2d
# Declared: Line 308 (Source lines: 314-351)
# Address: 0x0db01774 - 0x0db0193c (Size: 456 bytes, Frame: 176)
.globl __glsplc_Map2d
.ent __glsplc_Map2d
__glsplc_Map2d:
    # Line 314
    addiu	$sp,$sp,-176
    sd	$a7,32($sp)
    sdc1	$f18,16($sp)
    sdc1	$f17,24($sp)
    sd	$s0,72($sp)
    move	$s0,$a4
    sd	$a3,40($sp)
    sdc1	$f14,8($sp)
    sdc1	$f13,0($sp)
    sd	$a0,56($sp)
    sd	$gp,80($sp)
    lui	$at,0x10
    addiu	$at,$at,-12508
    addu	$gp,$t9,$at
    # Line 321
    # lw $t9, -27168($gp) # &__glEvalComputeK
    # Line 319
    lw	$v0,__glCurrentContext
    sd	$ra,88($sp)
    # Line 321
    jal	__glEvalComputeK
    sd	$v0,64($sp)
    # Line 327
    ldc1	$f0,0($sp)
    ldc1	$f2,24($sp)
    # Line 321
    bltz	$v0,.L0db0191c
    move	$a0,$v0
    ld	$a1,64($sp)
    sd	$s1,96($sp)
    # Line 327
    lw	$s1,180($sp)
    lw	$a1,3472($a1)
    slt	$v1,$a1,$s1
    bnez	$v1,.L0db01880
    ld	$a5,32($sp)
    slt	$a5,$a5,$v0
    bnez	$a5,.L0db01884
    # Line 331
    nop	# was lw $t9, -29344($gp) # &__glsplc_InvalidValue
    # Line 327
    blez	$s1,.L0db01880
    ldc1	$f1,8($sp)
    c.eq.d	$f0,$f1
    nop
    bc1t	.L0db01880
    ld	$a6,40($sp)
    slt	$a6,$a6,$v0
    bnez	$a6,.L0db01880
    slt	$at,$a1,$s0
    bnez	$at,.L0db01884
    # Line 331
    nop	# was lw $t9, -29344($gp) # &__glsplc_InvalidValue
    # Line 327
    blez	$s0,.L0db01880
    ldc1	$f3,16($sp)
    c.eq.d	$f2,$f3
    nop
    bc1t	.L0db01880
    sd	$a0,48($sp)
    # Line 335
    # lw $t9, -27056($gp) # &__glMap2_size
    move	$a0,$v0
    move	$a1,$s0
    jal	__glMap2_size
    move	$a2,$s1
    # Line 338
    # lw $t9, -31768($gp) # &__glSPDlalloc
    li	$a1,143
    sll	$a0,$v0,0x2
    jal	__glSPDlalloc
    addiu	$a0,$a0,28
    bnez	$v0,.L0db018a0
    # Line 339
    ld	$ra,88($sp)
    ld	$gp,80($sp)
    ld	$s0,72($sp)
    ld	$s1,96($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db01880:
    # Line 331
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
.L0db01884:
    bal __glsplc_InvalidValue
    ld	$s1,96($sp)
    # Line 332
    ld	$ra,88($sp)
    ld	$gp,80($sp)
    ld	$s0,72($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db018a0:
    # Line 350
    addiu	$a6,$v0,28
    lw	$a5,188($sp)
    ld	$a4,32($sp)
    ld	$a3,40($sp)
    move	$a2,$s1
    move	$a1,$s0
    ld	$a0,48($sp)
    # Line 343
    ldc1	$f5,8($sp)
    # Line 347
    sw	$s1,24($v0)
    # Line 345
    ldc1	$f6,24($sp)
    # Line 343
    cvt.s.d	$f5,$f5
    # Line 344
    sw	$s0,12($v0)
    # Line 346
    ldc1	$f7,16($sp)
    # Line 345
    cvt.s.d	$f6,$f6
    # Line 341
    ld	$a7,56($sp)
    # Line 342
    ldc1	$f4,0($sp)
    # Line 346
    cvt.s.d	$f7,$f7
    # Line 350
    # lw $t9, -27060($gp) # &__glFillMap2d
    # Line 341
    sw	$a7,0($v0)
    # Line 342
    cvt.s.d	$f4,$f4
    # Line 346
    swc1	$f7,20($v0)
    # Line 345
    swc1	$f6,16($v0)
    # Line 343
    swc1	$f5,8($v0)
    # Line 350
    jal	__glFillMap2d
    # Line 342
    swc1	$f4,4($v0)
    ld	$gp,80($sp)
    # Line 351
    ld	$ra,88($sp)
    ld	$s0,72($sp)
    ld	$s1,96($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db0191c:
    # Line 323
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    bal __glsplc_InvalidEnum
    nop
    # Line 324
    ld	$ra,88($sp)
    ld	$gp,80($sp)
    ld	$s0,72($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end __glsplc_Map2d

# Function: __glsplc_DeformationMap3fSGIX
# Declared: Line 368 (Source lines: 376-407)
# Address: 0x0db0193c - 0x0db01adc (Size: 416 bytes, Frame: 240)
.globl __glsplc_DeformationMap3fSGIX
.ent __glsplc_DeformationMap3fSGIX
__glsplc_DeformationMap3fSGIX:
    # Line 376
    addiu	$sp,$sp,-240
    sd	$a7,128($sp)
    sdc1	$f18,56($sp)
    sdc1	$f17,64($sp)
    sd	$a4,104($sp)
    sd	$a3,136($sp)
    sdc1	$f14,80($sp)
    sdc1	$f13,88($sp)
    sd	$a0,144($sp)
    sd	$ra,160($sp)
    # Line 379
    lw	$at,244($sp)
    lwc1	$f0,248($sp)
    lw	$a1,276($sp)
    lw	$v1,268($sp)
    lwc1	$f1,256($sp)
    sd	$a1,96($sp)
    sd	$v1,120($sp)
    sdc1	$f1,72($sp)
    sdc1	$f0,48($sp)
    sd	$at,112($sp)
    sw	$a1,36($sp)
    sw	$v1,28($sp)
    sd	$gp,152($sp)
    # Line 376
    lui	$v0,0x10
    addiu	$v0,$v0,-12964
    addu	$gp,$t9,$v0
    # Line 379
    # lw $t9, -27212($gp) # &__glCheckMap3Params
    swc1	$f1,16($sp)
    swc1	$f0,8($sp)
    jal	__glCheckMap3Params
    sw	$at,4($sp)
    li	$a6,1281
    beq	$v0,$a6,.L0db01ac0
    li	$t0,1280
    beq	$v0,$t0,.L0db01a1c
    # Line 388
    ld	$a6,112($sp)
    ld	$a5,104($sp)
    mult	$a5,$a6
    ld	$a4,96($sp)
    mflo	$a3
    nop
    nop
    mult	$a3,$a4
    li	$a1,248
    # lw $t9, -31768($gp) # &__glSPDlalloc
    mflo	$a2
    sll	$a0,$a2,0x2
    subu	$a0,$a0,$a2
    sll	$a0,$a0,0x2
    jal	__glSPDlalloc
    addiu	$a0,$a0,40
    bnez	$v0,.L0db01a38
    # Line 391
    ld	$ra,160($sp)
    ld	$gp,152($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0db01a1c:
    # Line 385
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    bal __glsplc_InvalidEnum
    nop
    # Line 386
    ld	$ra,160($sp)
    ld	$gp,152($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0db01a38:
    # Line 404
    addiu	$a7,$v0,40
    lw	$a6,284($sp)
    ld	$a5,120($sp)
    ld	$a3,128($sp)
    ld	$a1,136($sp)
    # Line 393
    ld	$t0,144($sp)
    # Line 404
    # lw $t9, -27220($gp) # &__glFillDeformationMap3f
    # Line 394
    ldc1	$f2,88($sp)
    # Line 395
    ldc1	$f3,80($sp)
    # Line 397
    ldc1	$f4,64($sp)
    # Line 398
    ldc1	$f5,56($sp)
    # Line 400
    ldc1	$f6,48($sp)
    # Line 401
    ldc1	$f7,72($sp)
    # Line 404
    ld	$t3,96($sp)
    ld	$t2,112($sp)
    ld	$t1,104($sp)
    move	$a4,$t3
    move	$a2,$t2
    move	$a0,$t1
    # Line 402
    sw	$t3,36($v0)
    # Line 401
    swc1	$f7,32($v0)
    # Line 400
    swc1	$f6,28($v0)
    # Line 399
    sw	$t2,24($v0)
    # Line 398
    swc1	$f5,20($v0)
    # Line 397
    swc1	$f4,16($v0)
    # Line 396
    sw	$t1,12($v0)
    # Line 395
    swc1	$f3,8($v0)
    # Line 394
    swc1	$f2,4($v0)
    # Line 404
    jal	__glFillDeformationMap3f
    # Line 393
    sw	$t0,0($v0)
    # Line 407
    ld	$ra,160($sp)
    ld	$gp,152($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0db01ac0:
    # Line 382
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
    bal __glsplc_InvalidValue
    nop
    # Line 383
    ld	$ra,160($sp)
    ld	$gp,152($sp)
    jr	$ra
    addiu	$sp,$sp,240
.end __glsplc_DeformationMap3fSGIX

# Function: __glsplc_DeformationMap3dSGIX
# Declared: Line 410 (Source lines: 418-449)
# Address: 0x0db01adc - 0x0db01c94 (Size: 440 bytes, Frame: 240)
.globl __glsplc_DeformationMap3dSGIX
.ent __glsplc_DeformationMap3dSGIX
__glsplc_DeformationMap3dSGIX:
    # Line 421
    cvt.s.d	$f13,$f13
    # Line 418
    addiu	$sp,$sp,-240
    sd	$a7,128($sp)
    # Line 421
    cvt.s.d	$f14,$f14
    sd	$a4,104($sp)
    sd	$a3,136($sp)
    cvt.s.d	$f17,$f17
    sd	$a0,144($sp)
    sd	$ra,160($sp)
    cvt.s.d	$f18,$f18
    lw	$v0,244($sp)
    lw	$v1,268($sp)
    lw	$a1,276($sp)
    sdc1	$f18,56($sp)
    sdc1	$f17,64($sp)
    sd	$a1,96($sp)
    sd	$v1,120($sp)
    sd	$v0,112($sp)
    ldc1	$f1,256($sp)
    ldc1	$f0,248($sp)
    sw	$a1,36($sp)
    sw	$v1,28($sp)
    sdc1	$f14,80($sp)
    sw	$v0,4($sp)
    sdc1	$f13,88($sp)
    sd	$gp,152($sp)
    cvt.s.d	$f1,$f1
    # Line 418
    lui	$at,0x10
    addiu	$at,$at,-13380
    # Line 421
    cvt.s.d	$f0,$f0
    # Line 418
    addu	$gp,$t9,$at
    # Line 421
    # lw $t9, -27212($gp) # &__glCheckMap3Params
    sdc1	$f1,48($sp)
    sdc1	$f0,72($sp)
    swc1	$f1,16($sp)
    jal	__glCheckMap3Params
    swc1	$f0,8($sp)
    li	$a6,1281
    beq	$v0,$a6,.L0db01c78
    li	$t0,1280
    beq	$v0,$t0,.L0db01bd4
    # Line 430
    ld	$a6,112($sp)
    ld	$a5,104($sp)
    mult	$a5,$a6
    ld	$a4,96($sp)
    mflo	$a3
    nop
    nop
    mult	$a3,$a4
    li	$a1,247
    # lw $t9, -31768($gp) # &__glSPDlalloc
    mflo	$a2
    sll	$a0,$a2,0x2
    subu	$a0,$a0,$a2
    sll	$a0,$a0,0x2
    jal	__glSPDlalloc
    addiu	$a0,$a0,40
    bnez	$v0,.L0db01bf0
    # Line 433
    ld	$ra,160($sp)
    ld	$gp,152($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0db01bd4:
    # Line 427
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    bal __glsplc_InvalidEnum
    nop
    # Line 428
    ld	$ra,160($sp)
    ld	$gp,152($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0db01bf0:
    # Line 446
    addiu	$a7,$v0,40
    lw	$a6,284($sp)
    ld	$a5,120($sp)
    ld	$a3,128($sp)
    ld	$a1,136($sp)
    # Line 435
    ld	$t0,144($sp)
    # Line 446
    # lw $t9, -27216($gp) # &__glFillDeformationMap3d
    # Line 436
    ldc1	$f2,88($sp)
    # Line 437
    ldc1	$f3,80($sp)
    # Line 439
    ldc1	$f4,64($sp)
    # Line 440
    ldc1	$f5,56($sp)
    # Line 442
    ldc1	$f6,72($sp)
    # Line 443
    ldc1	$f7,48($sp)
    # Line 446
    ld	$t3,96($sp)
    ld	$t2,112($sp)
    ld	$t1,104($sp)
    move	$a4,$t3
    move	$a2,$t2
    move	$a0,$t1
    # Line 444
    sw	$t3,36($v0)
    # Line 443
    swc1	$f7,32($v0)
    # Line 442
    swc1	$f6,28($v0)
    # Line 441
    sw	$t2,24($v0)
    # Line 440
    swc1	$f5,20($v0)
    # Line 439
    swc1	$f4,16($v0)
    # Line 438
    sw	$t1,12($v0)
    # Line 437
    swc1	$f3,8($v0)
    # Line 436
    swc1	$f2,4($v0)
    # Line 446
    jal	__glFillDeformationMap3d
    # Line 435
    sw	$t0,0($v0)
    # Line 449
    ld	$ra,160($sp)
    ld	$gp,152($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0db01c78:
    # Line 424
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
    bal __glsplc_InvalidValue
    nop
    # Line 425
    ld	$ra,160($sp)
    ld	$gp,152($sp)
    jr	$ra
    addiu	$sp,$sp,240
.end __glsplc_DeformationMap3dSGIX

# Function: FormatAndType
# Declared: Line 452 (Source lines: 453-522)
# Address: 0x0db01c94 - 0x0db01f60 (Size: 716 bytes, Frame: 48)
.ent FormatAndType
FormatAndType:
    # Line 453
    sltiu	$at,$a0,6407
    bnez	$at,.L0db01ccc
    addiu	$sp,$sp,-48
    # Line 455
    sltiu	$v0,$a0,6408
    bnez	$v0,.L0db01cdc
    sltiu	$v1,$a0,6410
    bnez	$v1,.L0db01e4c
    sltiu	$a4,$a0,6411
    bnez	$a4,.L0db01cdc
    li	$at,0x8000
    bne	$a0,$at,.L0db01e78
    # Line 471
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0db01ce0
    # Line 468
    move	$a5,$zero
.L0db01ccc:
    # Line 455
    sltiu	$v0,$a0,6404
    bnez	$v0,.L0db01d80
    sltiu	$v1,$a0,6405
    beqz	$v1,.L0db01e30
.L0db01cdc:
    # Line 468
    move	$a5,$zero
.L0db01ce0:
    # Line 473
    sltiu	$a4,$a1,5126
    bnez	$a4,.L0db01d54
    # Line 474
    sltiu	$at,$a1,5127
    bnez	$at,.L0db01d48
    li	$a6,0x8034
    sltu	$v0,$a1,$a6
    bnez	$v0,.L0db01de8
    sltu	$v1,$a6,$a1
    beqz	$v1,.L0db01d18
    li	$a5,0x8036
    sltu	$a4,$a1,$a5
    bnez	$a4,.L0db01f24
    sltu	$at,$a5,$a1
    bnez	$at,.L0db01dc8
.L0db01d18:
    # Line 504
    li	$v0,6408
.L0db01d1c:
    beq	$a0,$v0,.L0db01d28
    li	$v1,0x8000
    bne	$a0,$v1,.L0db01ef0
.L0db01d28:
    # Line 509
    li	$at,0x8035
    # Line 508
    li	$a4,5123
    # Line 507
    li	$v0,6409
    sw	$v0,0($a2)
    # Line 509
    beq	$a1,$at,.L0db01f54
    # Line 508
    sw	$a4,0($a3)
    # Line 509
    li	$v1,0x8036
    beq	$a1,$v1,.L0db01f54
.L0db01d48:
    # Line 522
    li	$v0,1
.L0db01d4c:
    jr	$ra
    addiu	$sp,$sp,48
.L0db01d54:
    # Line 474
    sltiu	$a4,$a1,5123
    bnez	$a4,.L0db01d9c
    sltiu	$at,$a1,5124
    bnez	$at,.L0db01d48
    sltiu	$v0,$a1,5125
    bnez	$v0,.L0db01e94
    sltiu	$v1,$a1,5126
    beqz	$v1,.L0db01dcc
    # Line 519
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0db01d4c
    # Line 522
    li	$v0,1
.L0db01d80:
    # Line 455
    sltiu	$a4,$a0,6403
    bnez	$a4,.L0db01e1c
    sltiu	$at,$a0,6404
    beqz	$at,.L0db01e78
    # Line 471
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0db01ce0
    # Line 468
    move	$a5,$zero
.L0db01d9c:
    # Line 474
    sltiu	$v0,$a1,5121
    bnez	$v0,.L0db01dc0
    sltiu	$v1,$a1,5122
    bnez	$v1,.L0db01d48
    li	$a4,5122
    bne	$a1,$a4,.L0db01dcc
    # Line 519
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0db01d4c
    # Line 522
    li	$v0,1
.L0db01dc0:
    # Line 474
    li	$at,5120
    beq	$a1,$at,.L0db01d48
.L0db01dc8:
    # Line 519
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
.L0db01dcc:
    sd	$ra,0($sp)
    bal __glsplc_InvalidEnum
    nop
    # Line 520
    ld	$ra,0($sp)
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,48
.L0db01de8:
    # Line 474
    li	$a6,0x8032
    sltu	$v0,$a1,$a6
    bnez	$v0,.L0db01ea8
    sltu	$v1,$a6,$a1
    bnez	$v1,.L0db01f10
    # Line 490
    li	$a4,6407
    bne	$a0,$a4,.L0db01f38
    # Line 496
    nop	# was lw $t9, -29336($gp) # &__glsplc_InvalidOperation
    # Line 493
    li	$at,5121
    # Line 492
    li	$v0,6409
    sw	$v0,0($a2)
    b	.L0db01d48
    # Line 493
    sw	$at,0($a3)
.L0db01e1c:
    # Line 455
    li	$v1,6400
    bne	$a0,$v1,.L0db01e78
    # Line 471
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    # Line 458
    b	.L0db01ce0
    # Line 457
    li	$a5,1
.L0db01e30:
    # Line 455
    sltiu	$a4,$a0,6406
    bnez	$a4,.L0db01edc
    sltiu	$at,$a0,6407
    beqz	$at,.L0db01e78
    # Line 471
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0db01ce0
    # Line 468
    move	$a5,$zero
.L0db01e4c:
    # Line 455
    sltiu	$v0,$a0,6409
    bnez	$v0,.L0db01e68
    sltiu	$v1,$a0,6410
    beqz	$v1,.L0db01e78
    # Line 471
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0db01ce0
    # Line 468
    move	$a5,$zero
.L0db01e68:
    # Line 455
    li	$a4,6408
    beq	$a0,$a4,.L0db01ce0
    # Line 468
    move	$a5,$zero
    # Line 471
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
.L0db01e78:
    sd	$ra,0($sp)
    bal __glsplc_InvalidEnum
    nop
    # Line 472
    ld	$ra,0($sp)
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,48
.L0db01e94:
    # Line 474
    li	$at,5124
    bne	$a1,$at,.L0db01dcc
    # Line 519
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0db01d4c
    # Line 522
    li	$v0,1
.L0db01ea8:
    # Line 474
    li	$v0,6656
    bne	$a1,$v0,.L0db01dcc
    # Line 519
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    # Line 476
    bnez	$a5,.L0db01d4c
    # Line 522
    li	$v0,1
    # Line 477
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,0($sp)
    bal __glsplc_InvalidEnum
    nop
    # Line 478
    ld	$ra,0($sp)
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,48
.L0db01edc:
    # Line 455
    li	$v1,6405
    bne	$a0,$v1,.L0db01e78
    # Line 471
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0db01ce0
    # Line 468
    move	$a5,$zero
.L0db01ef0:
    # Line 514
    # lw $t9, -29336($gp) # &__glsplc_InvalidOperation
    sd	$ra,0($sp)
    bal __glsplc_InvalidOperation
    nop
    # Line 515
    ld	$ra,0($sp)
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,48
.L0db01f10:
    # Line 474
    li	$a4,0x8033
    bne	$a1,$a4,.L0db01dcc
    # Line 519
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0db01d1c
    # Line 504
    li	$v0,6408
.L0db01f24:
    # Line 474
    li	$at,0x8035
    bne	$a1,$at,.L0db01dcc
    # Line 519
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0db01d1c
    # Line 504
    li	$v0,6408
.L0db01f38:
    sd	$ra,0($sp)
    # Line 496
    bal __glsplc_InvalidOperation
    nop
    # Line 497
    ld	$ra,0($sp)
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,48
.L0db01f54:
    # Line 511
    li	$v0,5125
    b	.L0db01d48
    sw	$v0,0($a3)
.end FormatAndType

# Function: __glsplc_DrawPixels
# Declared: Line 525 (Source lines: 527-622)
# Address: 0x0db01f60 - 0x0db023f0 (Size: 1168 bytes, Frame: 128)
.globl __glsplc_DrawPixels
.ent __glsplc_DrawPixels
__glsplc_DrawPixels:
    # Line 531
    move	$a5,$a2
    # Line 527
    addiu	$sp,$sp,-128
    sd	$a4,16($sp)
    sd	$a0,0($sp)
    sd	$s1,48($sp)
    move	$s1,$a3
    sd	$s0,64($sp)
    move	$s0,$a2
    sd	$s2,40($sp)
    move	$s2,$a1
    sd	$gp,56($sp)
    lui	$at,0x10
    # Line 532
    lw	$v0,__glCurrentContext
    # Line 527
    addiu	$at,$at,-14536
    addu	$gp,$t9,$at
    sd	$v0,8($sp)
    # Line 534
    bltz	$a0,.L0db02324
    # Line 531
    move	$v0,$a3
    # Line 534
    bltz	$s2,.L0db02324
    # Line 536
    sltiu	$v1,$s0,6406
    bnez	$v1,.L0db02034
    # Line 539
    sltiu	$a6,$s0,6407
    beqz	$a6,.L0db020bc
.L0db01fbc:
    # Line 554
    move	$a0,$zero
.L0db01fc0:
    # Line 559
    sltiu	$a7,$s1,5126
.L0db01fc4:
    bnez	$a7,.L0db02060
    # Line 560
    sltiu	$a6,$s1,5123
    sd	$v0,24($sp)
    sltiu	$at,$s1,5127
    beqz	$at,.L0db02124
    sd	$a5,32($sp)
.L0db01fdc:
    ld	$a0,0($sp)
.L0db01fe0:
    # Line 609
    move	$a1,$s2
    # lw $t9, -26724($gp) # &__glImageSize
    move	$a2,$s0
    sd	$ra,72($sp)
    jal	__glImageSize
    move	$a3,$s1
    # Line 612
    li	$a1,171
    li	$a2,-4
    # lw $t9, -31768($gp) # &__glSPDlalloc
    addiu	$a0,$v0,3
    and	$a0,$a0,$a2
    jal	__glSPDlalloc
    addiu	$a0,$a0,16
    bnez	$v0,.L0db021a4
    ld	$ra,72($sp)
    ld	$gp,56($sp)
    # Line 613
    ld	$s0,64($sp)
    ld	$s1,48($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db02034:
    # Line 539
    sltiu	$a6,$s0,6403
    bnez	$a6,.L0db02098
    sltiu	$a7,$s0,6404
    bnez	$a7,.L0db01fbc
    sltiu	$at,$s0,6405
    bnez	$at,.L0db022b0
    sltiu	$v1,$s0,6406
    beqz	$v1,.L0db02260
    # Line 557
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0db01fc0
    # Line 554
    move	$a0,$zero
.L0db02060:
    # Line 560
    bnez	$a6,.L0db020ec
    sltiu	$a7,$s1,5124
    sd	$v0,24($sp)
    bnez	$a7,.L0db01fdc
    sd	$a5,32($sp)
    sltiu	$at,$s1,5125
    bnez	$at,.L0db022c4
    sltiu	$v1,$s1,5126
    beqz	$v1,.L0db0220c
    # Line 605
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,72($sp)
    sd	$v0,24($sp)
    b	.L0db01fdc
    sd	$a5,32($sp)
.L0db02098:
    # Line 539
    sltiu	$a6,$s0,6401
    bnez	$a6,.L0db02190
    sltiu	$a7,$s0,6402
    bnez	$a7,.L0db02198
    li	$at,6402
    bne	$s0,$at,.L0db02260
    # Line 557
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0db01fc0
    # Line 554
    move	$a0,$zero
.L0db020bc:
    # Line 539
    sltiu	$v1,$s0,6409
    bnez	$v1,.L0db02234
    sltiu	$a6,$s0,6410
    bnez	$a6,.L0db01fbc
    li	$a0,0x8000
    sltu	$a7,$s0,$a0
    bnez	$a7,.L0db0237c
    sltu	$at,$a0,$s0
    bnez	$at,.L0db02260
    # Line 557
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0db01fc0
    # Line 554
    move	$a0,$zero
.L0db020ec:
    # Line 560
    sltiu	$v1,$s1,5121
    bnezl	$v1,.L0db021f8
    sd	$ra,72($sp)
    sd	$v0,24($sp)
    sltiu	$a6,$s1,5122
    bnez	$a6,.L0db01fdc
    sd	$a5,32($sp)
    li	$a7,5122
    bne	$s1,$a7,.L0db0220c
    # Line 605
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,72($sp)
    sd	$v0,24($sp)
    b	.L0db01fdc
    sd	$a5,32($sp)
.L0db02124:
    # Line 560
    li	$a1,0x8034
    sltu	$at,$s1,$a1
    bnez	$at,.L0db02288
    sltu	$v1,$a1,$s1
    beqz	$v1,.L0db0214c
    li	$v0,0x8036
    sltu	$a6,$s1,$v0
    bnez	$a6,.L0db02390
    sltu	$a7,$v0,$s1
    bnez	$a7,.L0db02208
.L0db0214c:
    # Line 590
    li	$at,6408
.L0db02150:
    beq	$s0,$at,.L0db0215c
    li	$v1,0x8000
    bne	$s0,$v1,.L0db02350
.L0db0215c:
    # Line 593
    li	$a7,6409
    # Line 595
    li	$a6,0x8035
    # Line 594
    li	$at,5123
    sd	$at,24($sp)
    # Line 595
    beq	$s1,$a6,.L0db02180
    sd	$a7,32($sp)
    li	$v1,0x8036
    bne	$s1,$v1,.L0db01fe0
    ld	$a0,0($sp)
.L0db02180:
    sd	$ra,72($sp)
    # Line 597
    li	$a6,5125
    b	.L0db01fdc
    sd	$a6,24($sp)
.L0db02190:
    # Line 539
    li	$a7,6400
    bne	$s0,$a7,.L0db0225c
.L0db02198:
    # Line 542
    li	$a0,1
    # Line 543
    b	.L0db01fc4
    # Line 559
    sltiu	$a7,$s1,5126
.L0db021a4:
    # Line 620
    addiu	$a6,$v0,16
    ld	$a5,16($sp)
    ld	$a4,24($sp)
    ld	$a3,32($sp)
    move	$a2,$s2
    ld	$a0,8($sp)
    # Line 618
    sw	$s1,12($v0)
    # Line 617
    sw	$s0,8($v0)
    # Line 620
    ld	$t0,0($sp)
    # lw $t9, -26712($gp) # &__glFillImage
    # Line 616
    sw	$s2,4($v0)
    # Line 620
    move	$a1,$t0
    jal	__glFillImage
    # Line 615
    sw	$t0,0($v0)
    ld	$gp,56($sp)
    # Line 622
    ld	$s0,64($sp)
    ld	$ra,72($sp)
    ld	$s1,48($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db021f8:
    sd	$v0,24($sp)
    # Line 560
    li	$at,5120
    beq	$s1,$at,.L0db01fdc
    sd	$a5,32($sp)
.L0db02208:
    # Line 605
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
.L0db0220c:
    sd	$ra,72($sp)
    bal __glsplc_InvalidEnum
    nop
    ld	$gp,56($sp)
    # Line 606
    ld	$s0,64($sp)
    ld	$ra,72($sp)
    ld	$s1,48($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db02234:
    # Line 539
    sltiu	$v1,$s0,6408
    bnez	$v1,.L0db02250
    sltiu	$a6,$s0,6409
    beqz	$a6,.L0db02260
    # Line 557
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0db01fc0
    # Line 554
    move	$a0,$zero
.L0db02250:
    # Line 539
    li	$a7,6407
    beq	$s0,$a7,.L0db01fc0
    # Line 554
    move	$a0,$zero
.L0db0225c:
    # Line 557
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
.L0db02260:
    sd	$ra,72($sp)
    bal __glsplc_InvalidEnum
    nop
    ld	$gp,56($sp)
    # Line 558
    ld	$s0,64($sp)
    ld	$ra,72($sp)
    ld	$s1,48($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db02288:
    # Line 560
    li	$a1,0x8032
    sltu	$at,$s1,$a1
    bnez	$at,.L0db022e0
    sltu	$v1,$a1,$s1
    beqz	$v1,.L0db023a4
    li	$a6,0x8033
    bne	$s1,$a6,.L0db0220c
    # Line 605
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0db02150
    # Line 590
    li	$at,6408
.L0db022b0:
    # Line 539
    li	$a7,6404
    bne	$s0,$a7,.L0db02260
    # Line 557
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0db01fc0
    # Line 554
    move	$a0,$zero
.L0db022c4:
    # Line 560
    li	$at,5124
    bne	$s1,$at,.L0db0220c
    # Line 605
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,72($sp)
    sd	$v0,24($sp)
    b	.L0db01fdc
    sd	$a5,32($sp)
.L0db022e0:
    # Line 560
    li	$v1,6656
    bne	$s1,$v1,.L0db0220c
    # Line 605
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,72($sp)
    sd	$v0,24($sp)
    # Line 562
    bnez	$a0,.L0db01fdc
    sd	$a5,32($sp)
    # Line 563
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    bal __glsplc_InvalidEnum
    nop
    ld	$gp,56($sp)
    # Line 564
    ld	$s0,64($sp)
    ld	$ra,72($sp)
    ld	$s1,48($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db02324:
    # Line 535
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
    sd	$ra,72($sp)
    bal __glsplc_InvalidValue
    nop
    ld	$gp,56($sp)
    # Line 536
    ld	$s0,64($sp)
    ld	$ra,72($sp)
    ld	$s1,48($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db02350:
    # Line 600
    # lw $t9, -29336($gp) # &__glsplc_InvalidOperation
    sd	$ra,72($sp)
    bal __glsplc_InvalidOperation
    nop
    ld	$gp,56($sp)
    # Line 601
    ld	$s0,64($sp)
    ld	$ra,72($sp)
    ld	$s1,48($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0db0237c:
    # Line 539
    li	$a6,6410
    bne	$s0,$a6,.L0db02260
    # Line 557
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0db01fc0
    # Line 554
    move	$a0,$zero
.L0db02390:
    # Line 560
    li	$a7,0x8035
    bne	$s1,$a7,.L0db0220c
    # Line 605
    nop	# was lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    b	.L0db02150
    # Line 590
    li	$at,6408
.L0db023a4:
    # Line 576
    li	$at,6407
    bne	$s0,$at,.L0db023c8
    # Line 582
    nop	# was lw $t9, -29336($gp) # &__glsplc_InvalidOperation
    sd	$ra,72($sp)
    # Line 578
    li	$v1,6409
    # Line 579
    li	$a6,5121
    sd	$a6,24($sp)
    # Line 578
    b	.L0db01fdc
    sd	$v1,32($sp)
.L0db023c8:
    sd	$ra,72($sp)
    # Line 582
    bal __glsplc_InvalidOperation
    nop
    ld	$gp,56($sp)
    # Line 583
    ld	$s0,64($sp)
    ld	$ra,72($sp)
    ld	$s1,48($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glsplc_DrawPixels

# Function: __glsplc_TexImage1D
# Declared: Line 624 (Source lines: 628-670)
# Address: 0x0db023f0 - 0x0db02628 (Size: 568 bytes, Frame: 176)
.globl __glsplc_TexImage1D
.ent __glsplc_TexImage1D
__glsplc_TexImage1D:
    # Line 628
    move	$v0,$a7
    # Line 632
    li	$at,0x8063
    # Line 628
    addiu	$sp,$sp,-176
    sd	$s1,64($sp)
    move	$s1,$a3
    sd	$s3,72($sp)
    move	$s3,$a5
    sd	$s2,88($sp)
    move	$s2,$a6
    sd	$s0,80($sp)
    move	$s0,$a4
    sd	$gp,56($sp)
    lui	$v1,0x10
    addiu	$v1,$v1,-15704
    addu	$gp,$t9,$v1
    # Line 631
    sw	$a6,4($sp)
    sw	$a5,0($sp)
    # Line 632
    beq	$a0,$at,.L0db025e4
    lw	$t2,__glCurrentContext
    # Line 640
    bltz	$s0,.L0db02588
    slti	$t0,$s0,2
    beqz	$t0,.L0db0258c
    # Line 641
    nop	# was lw $t9, -29344($gp) # &__glsplc_InvalidValue
    sd	$ra,96($sp)
    sd	$v0,16($sp)
    sd	$a2,24($sp)
    sd	$a1,32($sp)
    sd	$a0,40($sp)
    # Line 642
    bltz	$s1,.L0db025b8
    sd	$t2,48($sp)
    # Line 649
    move	$a0,$s3
    # lw $t9, -32708($gp) # &sub_0db00000
    move	$a1,$s2
    addiu	$a3,$sp,4
    addiu	$t9,$t9,7316
    bal __glsplc_DeformationMap3dSGIX
    addiu	$a2,$sp,0
    beqz	$v0,.L0db02528
    ld	$ra,96($sp)
    # Line 651
    move	$a0,$s1
    # lw $t9, -26724($gp) # &__glImageSize
    move	$a3,$s2
    move	$a2,$s3
    jal	__glImageSize
    li	$a1,1
    # Line 654
    li	$a1,108
    # Line 652
    li	$a2,-4
    addiu	$a0,$v0,3
    # Line 654
    # lw $t9, -31768($gp) # &__glSPDlalloc
    # Line 652
    and	$a0,$a0,$a2
    sd	$a0,8($sp)
    # Line 654
    jal	__glSPDlalloc
    addiu	$a0,$a0,32
    # Line 659
    ld	$v1,24($sp)
    # Line 654
    beqz	$v0,.L0db02544
    ld	$ra,96($sp)
    # Line 663
    sw	$s2,24($v0)
    # Line 662
    sw	$s3,20($v0)
    # Line 661
    sw	$s0,16($v0)
    # Line 660
    sw	$s1,12($v0)
    # Line 659
    sw	$v1,8($v0)
    # Line 658
    ld	$at,32($sp)
    ld	$t0,8($sp)
    # Line 657
    ld	$t1,40($sp)
    # Line 658
    sw	$at,4($v0)
    # Line 664
    sw	$t0,28($v0)
    blez	$t0,.L0db0250c
    # Line 657
    sw	$t1,0($v0)
    ld	$t0,16($sp)
    # Line 664
    bnez	$t0,.L0db02560
    ld	$a0,48($sp)
.L0db0250c:
    ld	$gp,56($sp)
    # Line 670
    ld	$s0,80($sp)
    ld	$s1,64($sp)
    ld	$s2,88($sp)
    ld	$s3,72($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db02528:
    ld	$gp,56($sp)
    # Line 649
    ld	$s0,80($sp)
    ld	$s1,64($sp)
    ld	$s2,88($sp)
    ld	$s3,72($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db02544:
    ld	$gp,56($sp)
    # Line 655
    ld	$s0,80($sp)
    ld	$s1,64($sp)
    ld	$s2,88($sp)
    ld	$s3,72($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db02560:
    # Line 667
    move	$a1,$s1
    addiu	$a6,$v0,32
    ld	$a5,16($sp)
    # lw $t9, -26712($gp) # &__glFillImage
    lw	$a4,4($sp)
    lw	$a3,0($sp)
    jal	__glFillImage
    li	$a2,1
    b	.L0db0250c
    ld	$ra,96($sp)
.L0db02588:
    # Line 641
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
.L0db0258c:
    sd	$ra,96($sp)
    bal __glsplc_InvalidValue
    nop
    ld	$gp,56($sp)
    # Line 642
    ld	$s0,80($sp)
    ld	$s1,64($sp)
    ld	$ra,96($sp)
    ld	$s2,88($sp)
    ld	$s3,72($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db025b8:
    # Line 645
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
    bal __glsplc_InvalidValue
    nop
    ld	$gp,56($sp)
    # Line 646
    ld	$s0,80($sp)
    ld	$s1,64($sp)
    ld	$ra,96($sp)
    ld	$s2,88($sp)
    ld	$s3,72($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db025e4:
    # Line 635
    move	$a3,$s1
    lw	$t9,5640($t2)
    move	$a4,$s0
    move	$a5,$s3
    lw	$t9,176($t9)
    move	$a6,$s2
    sd	$ra,96($sp)
    jal	__glsplc_InvalidValue
    move	$a7,$v0
    ld	$gp,56($sp)
    # Line 637
    ld	$s0,80($sp)
    ld	$s1,64($sp)
    ld	$ra,96($sp)
    ld	$s2,88($sp)
    ld	$s3,72($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end __glsplc_TexImage1D

# Function: __glsplc_TexImage2D
# Declared: Line 672 (Source lines: 677-720)
# Address: 0x0db02628 - 0x0db02890 (Size: 616 bytes, Frame: 192)
.globl __glsplc_TexImage2D
.ent __glsplc_TexImage2D
__glsplc_TexImage2D:
    # Line 677
    move	$v0,$a2
    # Line 681
    li	$at,0x8064
    # Line 677
    addiu	$sp,$sp,-192
    sd	$s2,104($sp)
    move	$s2,$a4
    sd	$s1,72($sp)
    move	$s1,$a3
    sd	$s4,80($sp)
    move	$s4,$a6
    sd	$s3,96($sp)
    move	$s3,$a7
    sd	$s0,88($sp)
    move	$s0,$a5
    sd	$gp,64($sp)
    lui	$v1,0x10
    addiu	$v1,$v1,-16272
    addu	$gp,$t9,$v1
    # Line 680
    sw	$a7,20($sp)
    sw	$a6,16($sp)
    # Line 681
    beq	$a0,$at,.L0db0283c
    lw	$t2,__glCurrentContext
    # Line 689
    bltz	$s0,.L0db027d4
    slti	$t0,$s0,2
    beqz	$t0,.L0db027d8
    # Line 690
    nop	# was lw $t9, -29344($gp) # &__glsplc_InvalidValue
    # Line 693
    bltz	$s1,.L0db0280c
    # Line 694
    nop	# was lw $t9, -29344($gp) # &__glsplc_InvalidValue
    sd	$ra,112($sp)
    sd	$v0,32($sp)
    sd	$a1,40($sp)
    sd	$a0,48($sp)
    # Line 693
    bltz	$s2,.L0db02808
    sd	$t2,56($sp)
    # Line 698
    move	$a0,$s4
    # lw $t9, -32708($gp) # &sub_0db00000
    move	$a1,$s3
    addiu	$a3,$sp,20
    addiu	$t9,$t9,7316
    bal __glsplc_DeformationMap3dSGIX
    addiu	$a2,$sp,16
    beqz	$v0,.L0db02794
    ld	$ra,112($sp)
    # Line 700
    move	$a0,$s1
    # lw $t9, -26724($gp) # &__glImageSize
    move	$a1,$s2
    move	$a2,$s4
    jal	__glImageSize
    move	$a3,$s3
    # Line 703
    li	$a1,109
    # Line 701
    li	$a2,-4
    addiu	$a0,$v0,3
    # Line 703
    # lw $t9, -31768($gp) # &__glSPDlalloc
    # Line 701
    and	$a0,$a0,$a2
    sd	$a0,24($sp)
    # Line 703
    jal	__glSPDlalloc
    addiu	$a0,$a0,36
    # Line 708
    ld	$v1,32($sp)
    # Line 703
    beqz	$v0,.L0db027b4
    ld	$ra,112($sp)
    # Line 707
    ld	$at,40($sp)
    # Line 713
    sw	$s3,28($v0)
    # Line 712
    sw	$s4,24($v0)
    # Line 711
    sw	$s0,20($v0)
    # Line 710
    sw	$s2,16($v0)
    # Line 709
    sw	$s1,12($v0)
    # Line 708
    sw	$v1,8($v0)
    ld	$t0,24($sp)
    # Line 707
    sw	$at,4($v0)
    # Line 706
    ld	$t1,48($sp)
    # Line 714
    sw	$t0,32($v0)
    blez	$t0,.L0db02774
    # Line 706
    sw	$t1,0($v0)
    # Line 714
    lw	$a5,196($sp)
    beqz	$a5,.L0db02774
    ld	$a0,56($sp)
    # Line 717
    move	$a1,$s1
    move	$a2,$s2
    # lw $t9, -26712($gp) # &__glFillImage
    addiu	$a6,$v0,36
    lw	$a4,20($sp)
    jal	__glFillImage
    lw	$a3,16($sp)
    ld	$ra,112($sp)
.L0db02774:
    ld	$gp,64($sp)
    # Line 720
    ld	$s0,88($sp)
    ld	$s1,72($sp)
    ld	$s2,104($sp)
    ld	$s3,96($sp)
    ld	$s4,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db02794:
    ld	$gp,64($sp)
    # Line 698
    ld	$s0,88($sp)
    ld	$s1,72($sp)
    ld	$s2,104($sp)
    ld	$s3,96($sp)
    ld	$s4,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db027b4:
    ld	$gp,64($sp)
    # Line 704
    ld	$s0,88($sp)
    ld	$s1,72($sp)
    ld	$s2,104($sp)
    ld	$s3,96($sp)
    ld	$s4,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db027d4:
    # Line 690
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
.L0db027d8:
    sd	$ra,112($sp)
    bal __glsplc_InvalidValue
    nop
    ld	$gp,64($sp)
    # Line 691
    ld	$s0,88($sp)
    ld	$s1,72($sp)
    ld	$s2,104($sp)
    ld	$ra,112($sp)
    ld	$s3,96($sp)
    ld	$s4,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db02808:
    # Line 694
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
.L0db0280c:
    sd	$ra,112($sp)
    bal __glsplc_InvalidValue
    nop
    ld	$gp,64($sp)
    # Line 695
    ld	$s0,88($sp)
    ld	$s1,72($sp)
    ld	$s2,104($sp)
    ld	$ra,112($sp)
    ld	$s3,96($sp)
    ld	$s4,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db0283c:
    sd	$ra,112($sp)
    # Line 684
    lw	$ra,196($sp)
    sw	$ra,4($sp)
    move	$a2,$v0
    lw	$t9,5640($t2)
    move	$a3,$s1
    move	$a4,$s2
    lw	$t9,180($t9)
    move	$a5,$s0
    move	$a6,$s4
    jal	__glsplc_InvalidValue
    move	$a7,$s3
    ld	$gp,64($sp)
    # Line 686
    ld	$s0,88($sp)
    ld	$s1,72($sp)
    ld	$s2,104($sp)
    ld	$ra,112($sp)
    ld	$s3,96($sp)
    ld	$s4,80($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glsplc_TexImage2D

# Function: __glsplc_TexSubImage1DEXT
# Declared: Line 722 (Source lines: 725-757)
# Address: 0x0db02890 - 0x0db02a1c (Size: 396 bytes, Frame: 160)
.globl __glsplc_TexSubImage1DEXT
.ent __glsplc_TexSubImage1DEXT
__glsplc_TexSubImage1DEXT:
    # Line 725
    addiu	$sp,$sp,-160
    sd	$ra,88($sp)
    sd	$a6,48($sp)
    sd	$a2,32($sp)
    sd	$a1,24($sp)
    sd	$a0,40($sp)
    sd	$s2,56($sp)
    move	$s2,$a3
    sd	$s0,80($sp)
    move	$s0,$a4
    sd	$s1,64($sp)
    move	$s1,$a5
    sd	$gp,72($sp)
    lui	$v0,0x10
    # Line 728
    sw	$a5,4($sp)
    sw	$a4,0($sp)
    # Line 725
    addiu	$v0,$v0,-16888
    # Line 729
    lw	$at,__glCurrentContext
    # Line 725
    addu	$gp,$t9,$v0
    # Line 729
    bltz	$a3,.L0db029f4
    sd	$at,8($sp)
    # Line 736
    move	$a0,$s0
    # lw $t9, -32708($gp) # &sub_0db00000
    move	$a1,$s1
    addiu	$a3,$sp,4
    addiu	$t9,$t9,7316
    bal __glsplc_DeformationMap3dSGIX
    addiu	$a2,$sp,0
    beqz	$v0,.L0db0299c
    ld	$ra,88($sp)
    # Line 738
    move	$a0,$s2
    # lw $t9, -26724($gp) # &__glImageSize
    move	$a3,$s1
    move	$a2,$s0
    jal	__glImageSize
    li	$a1,1
    # Line 741
    li	$a1,193
    # Line 739
    li	$a2,-4
    addiu	$a0,$v0,3
    # Line 741
    # lw $t9, -31768($gp) # &__glSPDlalloc
    # Line 739
    and	$a0,$a0,$a2
    sd	$a0,16($sp)
    # Line 741
    jal	__glSPDlalloc
    addiu	$a0,$a0,28
    # Line 747
    ld	$v1,32($sp)
    # Line 741
    beqz	$v0,.L0db029b4
    ld	$ra,88($sp)
    # Line 750
    sw	$s1,20($v0)
    # Line 749
    sw	$s0,16($v0)
    # Line 748
    sw	$s2,12($v0)
    # Line 747
    sw	$v1,8($v0)
    # Line 746
    ld	$at,24($sp)
    ld	$a7,16($sp)
    # Line 745
    ld	$t0,40($sp)
    # Line 746
    sw	$at,4($v0)
    # Line 751
    sw	$a7,24($v0)
    blez	$a7,.L0db02984
    # Line 745
    sw	$t0,0($v0)
    ld	$a7,48($sp)
    # Line 751
    bnez	$a7,.L0db029cc
    ld	$a0,8($sp)
.L0db02984:
    ld	$gp,72($sp)
    # Line 757
    ld	$s0,80($sp)
    ld	$s1,64($sp)
    ld	$s2,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0db0299c:
    ld	$gp,72($sp)
    # Line 736
    ld	$s0,80($sp)
    ld	$s1,64($sp)
    ld	$s2,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0db029b4:
    ld	$gp,72($sp)
    # Line 743
    ld	$s0,80($sp)
    ld	$s1,64($sp)
    ld	$s2,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0db029cc:
    # Line 754
    move	$a1,$s2
    addiu	$a6,$v0,28
    ld	$a5,48($sp)
    # lw $t9, -26712($gp) # &__glFillImage
    lw	$a4,4($sp)
    lw	$a3,0($sp)
    jal	__glFillImage
    li	$a2,1
    b	.L0db02984
    ld	$ra,88($sp)
.L0db029f4:
    # Line 732
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
    bal __glsplc_InvalidValue
    nop
    ld	$gp,72($sp)
    # Line 733
    ld	$s0,80($sp)
    ld	$ra,88($sp)
    ld	$s1,64($sp)
    ld	$s2,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __glsplc_TexSubImage1DEXT

# Function: __glsplc_TexSubImage2DEXT
# Declared: Line 759 (Source lines: 763-798)
# Address: 0x0db02a1c - 0x0db02bd0 (Size: 436 bytes, Frame: 176)
.globl __glsplc_TexSubImage2DEXT
.ent __glsplc_TexSubImage2DEXT
__glsplc_TexSubImage2DEXT:
    # Line 763
    move	$v0,$a1
    addiu	$sp,$sp,-176
    sd	$s0,72($sp)
    move	$s0,$a5
    sd	$s3,88($sp)
    move	$s3,$a4
    sd	$s1,56($sp)
    move	$s1,$a6
    sd	$s2,80($sp)
    move	$s2,$a7
    sd	$gp,64($sp)
    lui	$at,0x10
    addiu	$at,$at,-17284
    addu	$gp,$t9,$at
    # Line 767
    sw	$a7,4($sp)
    sw	$a6,0($sp)
    # Line 770
    bltz	$a4,.L0db02ba0
    # Line 768
    lw	$t2,__glCurrentContext
    sd	$ra,96($sp)
    sd	$v0,16($sp)
    sd	$a0,24($sp)
    sd	$a3,32($sp)
    sd	$a2,40($sp)
    # Line 770
    bltz	$s0,.L0db02ba0
    sd	$t2,48($sp)
    # Line 775
    move	$a0,$s1
    # lw $t9, -32708($gp) # &sub_0db00000
    move	$a1,$s2
    addiu	$a3,$sp,4
    addiu	$t9,$t9,7316
    bal __glsplc_DeformationMap3dSGIX
    addiu	$a2,$sp,0
    beqz	$v0,.L0db02b68
    ld	$ra,96($sp)
    # Line 777
    move	$a0,$s3
    # lw $t9, -26724($gp) # &__glImageSize
    move	$a1,$s0
    move	$a2,$s1
    jal	__glImageSize
    move	$a3,$s2
    # Line 780
    li	$a1,194
    # Line 778
    li	$a2,-4
    addiu	$a0,$v0,3
    # Line 780
    # lw $t9, -31768($gp) # &__glSPDlalloc
    # Line 778
    and	$a0,$a0,$a2
    sd	$a0,8($sp)
    # Line 780
    jal	__glSPDlalloc
    addiu	$a0,$a0,36
    ld	$t0,8($sp)
    # Line 786
    ld	$v1,40($sp)
    # Line 780
    beqz	$v0,.L0db02b84
    ld	$ra,96($sp)
    # Line 791
    sw	$s2,28($v0)
    # Line 790
    sw	$s1,24($v0)
    # Line 789
    sw	$s0,20($v0)
    # Line 788
    sw	$s3,16($v0)
    # Line 792
    sw	$t0,32($v0)
    # Line 787
    ld	$t1,32($sp)
    # Line 786
    sw	$v1,8($v0)
    # Line 785
    ld	$at,16($sp)
    # Line 787
    sw	$t1,12($v0)
    # Line 784
    ld	$t1,24($sp)
    # Line 785
    sw	$at,4($v0)
    # Line 792
    blez	$t0,.L0db02b4c
    # Line 784
    sw	$t1,0($v0)
    # Line 792
    lw	$a5,180($sp)
    beqz	$a5,.L0db02b4c
    ld	$a0,48($sp)
    # Line 795
    move	$a1,$s3
    move	$a2,$s0
    # lw $t9, -26712($gp) # &__glFillImage
    addiu	$a6,$v0,36
    lw	$a4,4($sp)
    jal	__glFillImage
    lw	$a3,0($sp)
    ld	$ra,96($sp)
.L0db02b4c:
    ld	$gp,64($sp)
    # Line 798
    ld	$s0,72($sp)
    ld	$s1,56($sp)
    ld	$s2,80($sp)
    ld	$s3,88($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db02b68:
    ld	$gp,64($sp)
    # Line 775
    ld	$s0,72($sp)
    ld	$s1,56($sp)
    ld	$s2,80($sp)
    ld	$s3,88($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db02b84:
    ld	$gp,64($sp)
    # Line 782
    ld	$s0,72($sp)
    ld	$s1,56($sp)
    ld	$s2,80($sp)
    ld	$s3,88($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0db02ba0:
    # Line 771
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
    sd	$ra,96($sp)
    bal __glsplc_InvalidValue
    nop
    ld	$gp,64($sp)
    # Line 772
    ld	$s0,72($sp)
    ld	$s1,56($sp)
    ld	$ra,96($sp)
    ld	$s2,80($sp)
    ld	$s3,88($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end __glsplc_TexSubImage2DEXT

# Function: __glsplc_ConvolutionFilter1DEXT
# Declared: Line 800 (Source lines: 803-839)
# Address: 0x0db02bd0 - 0x0db02d88 (Size: 440 bytes, Frame: 144)
.globl __glsplc_ConvolutionFilter1DEXT
.ent __glsplc_ConvolutionFilter1DEXT
__glsplc_ConvolutionFilter1DEXT:
    # Line 803
    move	$v0,$a5
    # Line 807
    li	$at,0x8010
    # Line 803
    addiu	$sp,$sp,-144
    sd	$s0,72($sp)
    move	$s0,$a2
    sd	$s1,56($sp)
    move	$s1,$a3
    sd	$s2,48($sp)
    move	$s2,$a4
    sd	$gp,64($sp)
    lui	$v1,0x10
    addiu	$v1,$v1,-17720
    addu	$gp,$t9,$v1
    # Line 806
    sw	$a4,4($sp)
    sw	$a3,0($sp)
    # Line 807
    beq	$a0,$at,.L0db02c40
    lw	$t0,__glCurrentContext
    # Line 810
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,80($sp)
    bal __glsplc_InvalidEnum
    nop
    ld	$gp,64($sp)
    # Line 811
    ld	$s0,72($sp)
    ld	$ra,80($sp)
    ld	$s1,56($sp)
    ld	$s2,48($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db02c40:
    sd	$ra,80($sp)
    sd	$v0,16($sp)
    sd	$a1,24($sp)
    sd	$a0,32($sp)
    bltz	$s0,.L0db02d60
    sd	$t0,40($sp)
    # Line 819
    move	$a0,$s1
    # lw $t9, -32708($gp) # &sub_0db00000
    move	$a1,$s2
    addiu	$a3,$sp,4
    addiu	$t9,$t9,7316
    bal __glsplc_DeformationMap3dSGIX
    addiu	$a2,$sp,0
    beqz	$v0,.L0db02d08
    ld	$ra,80($sp)
    # Line 821
    move	$a0,$s0
    # lw $t9, -26724($gp) # &__glImageSize
    move	$a3,$s2
    move	$a2,$s1
    jal	__glImageSize
    li	$a1,1
    # Line 824
    li	$a1,195
    # Line 822
    li	$a2,-4
    addiu	$a0,$v0,3
    # Line 824
    # lw $t9, -31768($gp) # &__glSPDlalloc
    # Line 822
    and	$a0,$a0,$a2
    sd	$a0,8($sp)
    # Line 824
    jal	__glSPDlalloc
    addiu	$a0,$a0,24
    # Line 829
    ld	$at,24($sp)
    # Line 824
    beqz	$v0,.L0db02d20
    ld	$ra,80($sp)
    # Line 832
    sw	$s2,16($v0)
    # Line 831
    sw	$s1,12($v0)
    # Line 830
    sw	$s0,8($v0)
    # Line 828
    ld	$a7,32($sp)
    ld	$a6,8($sp)
    # Line 829
    sw	$at,4($v0)
    # Line 828
    sw	$a7,0($v0)
    # Line 833
    blez	$a6,.L0db02cf0
    sw	$a6,20($v0)
    ld	$v1,16($sp)
    bnez	$v1,.L0db02d38
    ld	$a0,40($sp)
.L0db02cf0:
    ld	$gp,64($sp)
    # Line 839
    ld	$s0,72($sp)
    ld	$s1,56($sp)
    ld	$s2,48($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db02d08:
    ld	$gp,64($sp)
    # Line 819
    ld	$s0,72($sp)
    ld	$s1,56($sp)
    ld	$s2,48($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db02d20:
    ld	$gp,64($sp)
    # Line 826
    ld	$s0,72($sp)
    ld	$s1,56($sp)
    ld	$s2,48($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db02d38:
    # Line 836
    move	$a1,$s0
    addiu	$a6,$v0,24
    ld	$a5,16($sp)
    # lw $t9, -26712($gp) # &__glFillImage
    lw	$a4,4($sp)
    lw	$a3,0($sp)
    jal	__glFillImage
    li	$a2,1
    b	.L0db02cf0
    ld	$ra,80($sp)
.L0db02d60:
    # Line 815
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
    bal __glsplc_InvalidValue
    nop
    ld	$gp,64($sp)
    # Line 816
    ld	$s0,72($sp)
    ld	$ra,80($sp)
    ld	$s1,56($sp)
    ld	$s2,48($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glsplc_ConvolutionFilter1DEXT

# Function: __glsplc_ConvolutionFilter2DEXT
# Declared: Line 841 (Source lines: 845-882)
# Address: 0x0db02d88 - 0x0db02f6c (Size: 484 bytes, Frame: 160)
.globl __glsplc_ConvolutionFilter2DEXT
.ent __glsplc_ConvolutionFilter2DEXT
__glsplc_ConvolutionFilter2DEXT:
    # Line 845
    move	$v0,$a6
    # Line 849
    li	$at,0x8011
    # Line 845
    addiu	$sp,$sp,-160
    sd	$s1,48($sp)
    move	$s1,$a3
    sd	$s0,56($sp)
    move	$s0,$a2
    sd	$s3,80($sp)
    move	$s3,$a4
    sd	$s2,72($sp)
    move	$s2,$a5
    sd	$gp,64($sp)
    lui	$v1,0x10
    addiu	$v1,$v1,-18160
    addu	$gp,$t9,$v1
    # Line 848
    sw	$a5,4($sp)
    sw	$a4,0($sp)
    # Line 849
    beq	$a0,$at,.L0db02e04
    lw	$t1,__glCurrentContext
    # Line 852
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,88($sp)
    bal __glsplc_InvalidEnum
    nop
    ld	$gp,64($sp)
    # Line 853
    ld	$s0,56($sp)
    ld	$s1,48($sp)
    ld	$ra,88($sp)
    ld	$s2,72($sp)
    ld	$s3,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0db02e04:
    # Line 856
    bltz	$s0,.L0db02f40
    # Line 857
    nop	# was lw $t9, -29344($gp) # &__glsplc_InvalidValue
    sd	$ra,88($sp)
    sd	$v0,16($sp)
    sd	$a0,24($sp)
    sd	$a1,32($sp)
    # Line 856
    bltz	$s1,.L0db02f3c
    sd	$t1,40($sp)
    # Line 861
    move	$a0,$s3
    # lw $t9, -32708($gp) # &sub_0db00000
    move	$a1,$s2
    addiu	$a3,$sp,4
    addiu	$t9,$t9,7316
    bal __glsplc_DeformationMap3dSGIX
    addiu	$a2,$sp,0
    beqz	$v0,.L0db02edc
    ld	$ra,88($sp)
    # Line 863
    move	$a0,$s0
    # lw $t9, -26724($gp) # &__glImageSize
    move	$a1,$s1
    move	$a2,$s3
    jal	__glImageSize
    move	$a3,$s2
    # Line 866
    li	$a1,196
    # Line 864
    li	$a2,-4
    addiu	$a0,$v0,3
    # Line 866
    # lw $t9, -31768($gp) # &__glSPDlalloc
    # Line 864
    and	$a0,$a0,$a2
    sd	$a0,8($sp)
    # Line 866
    jal	__glSPDlalloc
    addiu	$a0,$a0,28
    # Line 871
    ld	$at,32($sp)
    # Line 866
    beqz	$v0,.L0db02ef8
    ld	$ra,88($sp)
    # Line 875
    sw	$s2,20($v0)
    # Line 874
    sw	$s3,16($v0)
    # Line 873
    sw	$s1,12($v0)
    # Line 872
    sw	$s0,8($v0)
    # Line 870
    ld	$t0,24($sp)
    ld	$a7,8($sp)
    # Line 871
    sw	$at,4($v0)
    # Line 870
    sw	$t0,0($v0)
    # Line 876
    blez	$a7,.L0db02ec0
    sw	$a7,24($v0)
    ld	$v1,16($sp)
    bnez	$v1,.L0db02f14
    ld	$a0,40($sp)
.L0db02ec0:
    ld	$gp,64($sp)
    # Line 882
    ld	$s0,56($sp)
    ld	$s1,48($sp)
    ld	$s2,72($sp)
    ld	$s3,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0db02edc:
    ld	$gp,64($sp)
    # Line 861
    ld	$s0,56($sp)
    ld	$s1,48($sp)
    ld	$s2,72($sp)
    ld	$s3,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0db02ef8:
    ld	$gp,64($sp)
    # Line 868
    ld	$s0,56($sp)
    ld	$s1,48($sp)
    ld	$s2,72($sp)
    ld	$s3,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0db02f14:
    # Line 879
    move	$a1,$s0
    move	$a2,$s1
    addiu	$a6,$v0,28
    # lw $t9, -26712($gp) # &__glFillImage
    ld	$a5,16($sp)
    lw	$a4,4($sp)
    jal	__glFillImage
    lw	$a3,0($sp)
    b	.L0db02ec0
    ld	$ra,88($sp)
.L0db02f3c:
    # Line 857
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
.L0db02f40:
    sd	$ra,88($sp)
    bal __glsplc_InvalidValue
    nop
    ld	$gp,64($sp)
    # Line 858
    ld	$s0,56($sp)
    ld	$s1,48($sp)
    ld	$ra,88($sp)
    ld	$s2,72($sp)
    ld	$s3,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __glsplc_ConvolutionFilter2DEXT

# Function: __glsplc_SeparableFilter2DEXT
# Declared: Line 897 (Source lines: 901-946)
# Address: 0x0db02f6c - 0x0db031bc (Size: 592 bytes, Frame: 192)
.globl __glsplc_SeparableFilter2DEXT
.ent __glsplc_SeparableFilter2DEXT
__glsplc_SeparableFilter2DEXT:
    # Line 905
    li	$at,0x8012
    # Line 901
    addiu	$sp,$sp,-192
    sd	$a7,16($sp)
    sd	$a6,24($sp)
    sd	$s2,104($sp)
    move	$s2,$a3
    sd	$s3,112($sp)
    move	$s3,$a2
    sd	$a1,48($sp)
    sd	$a0,40($sp)
    sd	$s0,96($sp)
    move	$s0,$a4
    sd	$s1,80($sp)
    move	$s1,$a5
    sd	$gp,88($sp)
    lui	$v1,0x10
    # Line 904
    sw	$a5,4($sp)
    sw	$a4,0($sp)
    # Line 901
    addiu	$v1,$v1,-18644
    # Line 905
    lw	$v0,__glCurrentContext
    # Line 901
    addu	$gp,$t9,$v1
    # Line 905
    beq	$a0,$at,.L0db02fdc
    sd	$v0,64($sp)
    # Line 908
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,120($sp)
    bal __glsplc_InvalidEnum
    nop
    ld	$ra,120($sp)
.L0db02fdc:
    # Line 911
    bltz	$s3,.L0db03190
    # Line 912
    nop	# was lw $t9, -29344($gp) # &__glsplc_InvalidValue
    # Line 911
    bltz	$s2,.L0db0318c
    sd	$ra,120($sp)
    # Line 916
    move	$a0,$s0
    # lw $t9, -32708($gp) # &sub_0db00000
    move	$a1,$s1
    addiu	$a3,$sp,4
    addiu	$t9,$t9,7316
    bal __glsplc_DeformationMap3dSGIX
    addiu	$a2,$sp,0
    beqz	$v0,.L0db030ec
    ld	$ra,120($sp)
    # Line 918
    move	$a0,$s3
    # lw $t9, -26724($gp) # &__glImageSize
    move	$a3,$s1
    move	$a2,$s0
    jal	__glImageSize
    li	$a1,1
    sd	$v0,72($sp)
    # Line 919
    move	$a3,$s1
    # lw $t9, -26724($gp) # &__glImageSize
    move	$a2,$s0
    move	$a1,$s2
    jal	__glImageSize
    li	$a0,1
    # Line 923
    li	$a1,203
    # lw $t9, -31768($gp) # &__glSPDlalloc
    # Line 921
    li	$a3,-4
    addiu	$a0,$v0,3
    # Line 923
    ld	$a2,72($sp)
    # Line 921
    and	$a0,$a0,$a3
    sd	$a0,8($sp)
    # Line 923
    addiu	$a2,$a2,3
    and	$a2,$a2,$a3
    sd	$a2,56($sp)
    addu	$a0,$a0,$a2
    jal	__glSPDlalloc
    addiu	$a0,$a0,32
    # Line 933
    ld	$t0,56($sp)
    # Line 923
    beqz	$v0,.L0db03108
    ld	$ra,120($sp)
    # Line 932
    sw	$s1,20($v0)
    # Line 931
    sw	$s0,16($v0)
    # Line 930
    sw	$s2,12($v0)
    # Line 929
    sw	$s3,8($v0)
    # Line 933
    sw	$t0,24($v0)
    # Line 928
    ld	$at,48($sp)
    ld	$v1,8($sp)
    # Line 927
    ld	$t1,40($sp)
    # Line 928
    sw	$at,4($v0)
    # Line 934
    sw	$v1,28($v0)
    blez	$t0,.L0db030bc
    # Line 927
    sw	$t1,0($v0)
    ld	$t0,24($sp)
    # Line 934
    bnez	$t0,.L0db03154
.L0db030bc:
    ld	$t1,8($sp)
    # Line 937
    blez	$t1,.L0db030d0
    ld	$at,16($sp)
    bnez	$at,.L0db03124
    ld	$a0,64($sp)
.L0db030d0:
    ld	$gp,88($sp)
    # Line 946
    ld	$s0,96($sp)
    ld	$s1,80($sp)
    ld	$s2,104($sp)
    ld	$s3,112($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db030ec:
    ld	$gp,88($sp)
    # Line 916
    ld	$s0,96($sp)
    ld	$s1,80($sp)
    ld	$s2,104($sp)
    ld	$s3,112($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db03108:
    ld	$gp,88($sp)
    # Line 925
    ld	$s0,96($sp)
    ld	$s1,80($sp)
    ld	$s2,104($sp)
    ld	$s3,112($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db03124:
    # Line 942
    ld	$a5,16($sp)
    lw	$a4,4($sp)
    lw	$a3,0($sp)
    move	$a2,$s2
    ld	$a6,56($sp)
    # lw $t9, -26712($gp) # &__glFillImage
    li	$a1,1
    addu	$a6,$a6,$v0
    jal	__glFillImage
    addiu	$a6,$a6,32
    b	.L0db030d0
    ld	$ra,120($sp)
.L0db03154:
    sd	$v0,32($sp)
    ld	$a0,64($sp)
    # Line 937
    move	$a1,$s3
    ld	$a5,24($sp)
    lw	$a4,4($sp)
    lw	$a3,0($sp)
    # lw $t9, -26712($gp) # &__glFillImage
    li	$a2,1
    move	$a6,$v0
    jal	__glFillImage
    addiu	$a6,$v0,32
    ld	$ra,120($sp)
    b	.L0db030bc
    ld	$v0,32($sp)
.L0db0318c:
    # Line 912
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
.L0db03190:
    sd	$ra,120($sp)
    bal __glsplc_InvalidValue
    nop
    ld	$gp,88($sp)
    # Line 913
    ld	$s0,96($sp)
    ld	$s1,80($sp)
    ld	$ra,120($sp)
    ld	$s2,104($sp)
    ld	$s3,112($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glsplc_SeparableFilter2DEXT

# Function: __glsplc_TexImage3DEXT
# Declared: Line 948 (Source lines: 952-998)
# Address: 0x0db031bc - 0x0db0345c (Size: 672 bytes, Frame: 192)
.globl __glsplc_TexImage3DEXT
.ent __glsplc_TexImage3DEXT
__glsplc_TexImage3DEXT:
    # Line 952
    move	$v0,$a2
    # Line 956
    li	$at,0x8070
    # Line 952
    addiu	$sp,$sp,-192
    sd	$s3,104($sp)
    move	$s3,$a5
    sd	$s2,112($sp)
    move	$s2,$a4
    sd	$s1,80($sp)
    move	$s1,$a3
    sd	$s5,72($sp)
    move	$s5,$a7
    sd	$s0,88($sp)
    move	$s0,$a6
    sd	$gp,64($sp)
    lui	$v1,0x10
    addiu	$v1,$v1,-19236
    sd	$s4,96($sp)
    # Line 955
    lw	$s4,196($sp)
    # Line 952
    addu	$gp,$t9,$v1
    # Line 955
    sw	$a7,16($sp)
    sw	$s4,20($sp)
    # Line 956
    beq	$a0,$at,.L0db03400
    lw	$t2,__glCurrentContext
    # Line 966
    bltz	$s0,.L0db03390
    slti	$t0,$s0,2
    beqz	$t0,.L0db03394
    # Line 967
    nop	# was lw $t9, -29344($gp) # &__glsplc_InvalidValue
    # Line 970
    bltz	$s1,.L0db033cc
    # Line 971
    nop	# was lw $t9, -29344($gp) # &__glsplc_InvalidValue
    # Line 970
    bltz	$s2,.L0db033cc
    # Line 971
    nop	# was lw $t9, -29344($gp) # &__glsplc_InvalidValue
    sd	$ra,120($sp)
    sd	$v0,32($sp)
    sd	$a1,40($sp)
    sd	$a0,48($sp)
    # Line 970
    bltz	$s3,.L0db033c8
    sd	$t2,56($sp)
    # Line 975
    move	$a0,$s5
    # lw $t9, -32708($gp) # &sub_0db00000
    move	$a1,$s4
    addiu	$a3,$sp,20
    addiu	$t9,$t9,7316
    bal __glsplc_DeformationMap3dSGIX
    addiu	$a2,$sp,16
    beqz	$v0,.L0db03348
    ld	$ra,120($sp)
    # Line 977
    move	$a0,$s1
    move	$a1,$s2
    # lw $t9, -26720($gp) # &__glImageSize3D
    move	$a2,$s3
    move	$a3,$s5
    jal	__glImageSize3D
    move	$a4,$s4
    # Line 980
    li	$a1,208
    # Line 978
    li	$a2,-4
    addiu	$a0,$v0,3
    # Line 980
    # lw $t9, -31768($gp) # &__glSPDlalloc
    # Line 978
    and	$a0,$a0,$a2
    sd	$a0,24($sp)
    # Line 980
    jal	__glSPDlalloc
    addiu	$a0,$a0,40
    # Line 985
    ld	$v1,32($sp)
    # Line 980
    beqz	$v0,.L0db0336c
    ld	$ra,120($sp)
    # Line 984
    ld	$at,40($sp)
    # Line 991
    sw	$s4,32($v0)
    # Line 990
    sw	$s5,28($v0)
    # Line 989
    sw	$s0,24($v0)
    # Line 988
    sw	$s3,20($v0)
    # Line 987
    sw	$s2,16($v0)
    # Line 986
    sw	$s1,12($v0)
    # Line 985
    sw	$v1,8($v0)
    ld	$t0,24($sp)
    # Line 984
    sw	$at,4($v0)
    # Line 983
    ld	$t1,48($sp)
    # Line 992
    sw	$t0,36($v0)
    blez	$t0,.L0db03324
    # Line 983
    sw	$t1,0($v0)
    # Line 992
    lw	$a6,204($sp)
    beqz	$a6,.L0db03324
    ld	$a0,56($sp)
    # Line 995
    move	$a1,$s1
    move	$a2,$s2
    move	$a3,$s3
    # lw $t9, -26716($gp) # &__glFillImage3D
    addiu	$a7,$v0,40
    lw	$a5,20($sp)
    jal	__glFillImage3D
    lw	$a4,16($sp)
    ld	$ra,120($sp)
.L0db03324:
    ld	$gp,64($sp)
    # Line 998
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,112($sp)
    ld	$s3,104($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db03348:
    ld	$gp,64($sp)
    # Line 975
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,112($sp)
    ld	$s3,104($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db0336c:
    ld	$gp,64($sp)
    # Line 981
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,112($sp)
    ld	$s3,104($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db03390:
    # Line 967
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
.L0db03394:
    sd	$ra,120($sp)
    bal __glsplc_InvalidValue
    nop
    ld	$gp,64($sp)
    # Line 968
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,112($sp)
    ld	$s3,104($sp)
    ld	$ra,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db033c8:
    # Line 971
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
.L0db033cc:
    sd	$ra,120($sp)
    bal __glsplc_InvalidValue
    nop
    ld	$gp,64($sp)
    # Line 972
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,112($sp)
    ld	$s3,104($sp)
    ld	$ra,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db03400:
    # Line 959
    sw	$s4,4($sp)
    sd	$ra,120($sp)
    lw	$ra,204($sp)
    sw	$ra,12($sp)
    move	$a2,$v0
    lw	$t9,5640($t2)
    move	$a3,$s1
    move	$a4,$s2
    lw	$t9,784($t9)
    move	$a5,$s3
    move	$a6,$s0
    jal	__glsplc_InvalidValue
    move	$a7,$s5
    ld	$gp,64($sp)
    # Line 963
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,112($sp)
    ld	$s3,104($sp)
    ld	$ra,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glsplc_TexImage3DEXT

# Function: __glsplc_TexSubImage3DEXT
# Declared: Line 1000 (Source lines: 1004-1039)
# Address: 0x0db0345c - 0x0db03644 (Size: 488 bytes, Frame: 192)
.globl __glsplc_TexSubImage3DEXT
.ent __glsplc_TexSubImage3DEXT
__glsplc_TexSubImage3DEXT:
    # Line 1004
    move	$v0,$a3
    addiu	$sp,$sp,-192
    sd	$s1,72($sp)
    move	$s1,$a7
    sd	$s0,64($sp)
    move	$s0,$a6
    sd	$s4,88($sp)
    move	$s4,$a5
    sd	$gp,80($sp)
    lui	$at,0x10
    addiu	$at,$at,-19908
    sd	$s2,104($sp)
    # Line 1007
    lw	$s2,204($sp)
    sd	$s3,96($sp)
    lw	$s3,196($sp)
    # Line 1004
    addu	$gp,$t9,$at
    # Line 1007
    sw	$s2,4($sp)
    sw	$s3,0($sp)
    # Line 1010
    bltz	$a5,.L0db03610
    # Line 1008
    lw	$t2,__glCurrentContext
    # Line 1010
    bltz	$s0,.L0db03614
    # Line 1011
    nop	# was lw $t9, -29344($gp) # &__glsplc_InvalidValue
    sd	$ra,112($sp)
    sd	$v0,16($sp)
    sd	$a4,24($sp)
    sd	$a1,32($sp)
    sd	$a2,40($sp)
    sd	$a0,48($sp)
    # Line 1010
    bltz	$s1,.L0db03610
    sd	$t2,56($sp)
    # Line 1015
    move	$a0,$s3
    # lw $t9, -32708($gp) # &sub_0db00000
    move	$a1,$s2
    addiu	$a3,$sp,4
    addiu	$t9,$t9,7316
    bal __glsplc_DeformationMap3dSGIX
    addiu	$a2,$sp,0
    beqz	$v0,.L0db035d0
    ld	$ra,112($sp)
    # Line 1017
    move	$a0,$s4
    move	$a1,$s0
    # lw $t9, -26720($gp) # &__glImageSize3D
    move	$a2,$s1
    move	$a3,$s3
    jal	__glImageSize3D
    move	$a4,$s2
    # Line 1020
    li	$a1,209
    # Line 1018
    li	$a2,-4
    addiu	$a0,$v0,3
    # Line 1020
    # lw $t9, -31768($gp) # &__glSPDlalloc
    # Line 1018
    and	$a0,$a0,$a2
    sd	$a0,8($sp)
    # Line 1020
    jal	__glSPDlalloc
    addiu	$a0,$a0,44
    # Line 1025
    ld	$v1,40($sp)
    # Line 1026
    ld	$t1,16($sp)
    # Line 1020
    beqz	$v0,.L0db035f0
    ld	$ra,112($sp)
    # Line 1032
    sw	$s2,36($v0)
    # Line 1031
    sw	$s3,32($v0)
    # Line 1030
    sw	$s1,28($v0)
    # Line 1029
    sw	$s0,24($v0)
    # Line 1028
    sw	$s4,20($v0)
    # Line 1025
    sw	$v1,8($v0)
    ld	$t0,8($sp)
    # Line 1026
    sw	$t1,12($v0)
    # Line 1027
    ld	$at,24($sp)
    # Line 1023
    ld	$t1,48($sp)
    # Line 1033
    sw	$t0,40($v0)
    # Line 1027
    sw	$at,16($v0)
    # Line 1024
    ld	$at,32($sp)
    # Line 1023
    sw	$t1,0($v0)
    # Line 1033
    blez	$t0,.L0db035b0
    # Line 1024
    sw	$at,4($v0)
    ld	$a0,56($sp)
    # Line 1036
    move	$a1,$s4
    move	$a2,$s0
    move	$a3,$s1
    addiu	$a7,$v0,44
    # lw $t9, -26716($gp) # &__glFillImage3D
    lw	$a6,212($sp)
    lw	$a5,4($sp)
    jal	__glFillImage3D
    lw	$a4,0($sp)
    ld	$ra,112($sp)
.L0db035b0:
    ld	$gp,80($sp)
    # Line 1039
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    ld	$s2,104($sp)
    ld	$s3,96($sp)
    ld	$s4,88($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db035d0:
    ld	$gp,80($sp)
    # Line 1015
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    ld	$s2,104($sp)
    ld	$s3,96($sp)
    ld	$s4,88($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db035f0:
    ld	$gp,80($sp)
    # Line 1021
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    ld	$s2,104($sp)
    ld	$s3,96($sp)
    ld	$s4,88($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0db03610:
    # Line 1011
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
.L0db03614:
    sd	$ra,112($sp)
    bal __glsplc_InvalidValue
    nop
    ld	$gp,80($sp)
    # Line 1012
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    ld	$s2,104($sp)
    ld	$ra,112($sp)
    ld	$s3,96($sp)
    ld	$s4,88($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glsplc_TexSubImage3DEXT

# Function: __glsplc_Disable
# Declared: Line 1041 (Source lines: 1042-1079)
# Address: 0x0db03644 - 0x0db0381c (Size: 472 bytes, Frame: 48)
.globl __glsplc_Disable
.ent __glsplc_Disable
__glsplc_Disable:
    # Line 1042
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    li	$v0,0x8074
    lui	$v1,0x10
    addiu	$v1,$v1,-20396
    sltu	$at,$a0,$v0
    bnez	$at,.L0db036b0
    addu	$gp,$t9,$v1
    li	$a3,0x8079
    sltu	$a1,$a3,$s0
    bnez	$a1,.L0db036b4
    # Line 1076
    nop	# was lw $t9, -31768($gp) # &__glSPDlalloc
    # Line 1048
    beq	$v0,$s0,.L0db036f0
    # Line 1046
    lw	$a0,__glCurrentContext
    # Line 1048
    li	$a2,0x8075
    beq	$s0,$a2,.L0db03720
    li	$at,0x8076
    # Line 1058
    lui	$v0,0xf
    # Line 1048
    beq	$s0,$at,.L0db03750
    li	$v1,0x8077
    beq	$s0,$v1,.L0db03784
    li	$a1,0x8078
    beq	$s0,$a1,.L0db037b8
    # Line 1070
    lui	$v0,0x800
    # Line 1048
    beq	$a3,$s0,.L0db037ec
.L0db036b0:
    # Line 1076
    nop	# was lw $t9, -31768($gp) # &__glSPDlalloc
.L0db036b4:
    li	$a1,137
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    bnez	$v0,.L0db036dc
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    # Line 1077
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db036dc:
    ld	$gp,0($sp)
    # Line 1078
    sw	$s0,0($v0)
    # Line 1079
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db036f0:
    ld	$gp,0($sp)
    # Line 1051
    li	$v0,-33
    # Line 1050
    lw	$a2,4944($a0)
    li	$s0,-256
    # Line 1051
    lw	$at,4948($a0)
    # Line 1050
    and	$a2,$a2,$s0
    # Line 1052
    ld	$s0,8($sp)
    addiu	$sp,$sp,48
    # Line 1051
    and	$at,$at,$v0
    sw	$at,4948($a0)
    # Line 1052
    jr	$ra
    # Line 1050
    sw	$a2,4944($a0)
.L0db03720:
    # Line 1054
    li	$a1,-3841
    ld	$gp,0($sp)
    # Line 1055
    lw	$a2,4948($a0)
    li	$s0,-2
    # Line 1054
    lw	$v1,4944($a0)
    # Line 1055
    and	$a2,$a2,$s0
    # Line 1056
    ld	$s0,8($sp)
    addiu	$sp,$sp,48
    # Line 1054
    and	$v1,$v1,$a1
    # Line 1055
    sw	$a2,4948($a0)
    # Line 1056
    jr	$ra
    # Line 1054
    sw	$v1,4944($a0)
.L0db03750:
    # Line 1058
    ori	$v0,$v0,0xf000
    ld	$gp,0($sp)
    # Line 1060
    ld	$s0,8($sp)
    # Line 1059
    lw	$v1,4948($a0)
    # Line 1058
    lw	$at,4944($a0)
    # Line 1060
    addiu	$sp,$sp,48
    # Line 1059
    li	$a1,-3
    # Line 1058
    nor	$v0,$v0,$zero
    and	$at,$at,$v0
    # Line 1059
    and	$v1,$v1,$a1
    sw	$v1,4948($a0)
    # Line 1060
    jr	$ra
    # Line 1058
    sw	$at,4944($a0)
.L0db03784:
    # Line 1063
    li	$v0,-9
    ld	$gp,0($sp)
    # Line 1062
    lui	$s0,0xfff
    lw	$a2,4944($a0)
    ori	$s0,$s0,0xffff
    # Line 1063
    lw	$at,4948($a0)
    # Line 1062
    and	$a2,$a2,$s0
    # Line 1064
    ld	$s0,8($sp)
    addiu	$sp,$sp,48
    # Line 1063
    and	$at,$at,$v0
    sw	$at,4948($a0)
    # Line 1064
    jr	$ra
    # Line 1062
    sw	$a2,4944($a0)
.L0db037b8:
    ld	$gp,0($sp)
    # Line 1067
    li	$s0,-5
    # Line 1066
    lui	$a1,0x7f0
    # Line 1067
    lw	$a2,4948($a0)
    # Line 1066
    nor	$a1,$a1,$zero
    lw	$v1,4944($a0)
    # Line 1067
    and	$a2,$a2,$s0
    # Line 1068
    ld	$s0,8($sp)
    addiu	$sp,$sp,48
    # Line 1066
    and	$v1,$v1,$a1
    # Line 1067
    sw	$a2,4948($a0)
    # Line 1068
    jr	$ra
    # Line 1066
    sw	$v1,4944($a0)
.L0db037ec:
    # Line 1070
    nor	$v0,$v0,$zero
    ld	$gp,0($sp)
    # Line 1072
    ld	$s0,8($sp)
    # Line 1071
    lw	$v1,4948($a0)
    # Line 1070
    lw	$at,4944($a0)
    # Line 1072
    addiu	$sp,$sp,48
    # Line 1071
    li	$a1,-17
    # Line 1070
    and	$at,$at,$v0
    # Line 1071
    and	$v1,$v1,$a1
    sw	$v1,4948($a0)
    # Line 1072
    jr	$ra
    # Line 1070
    sw	$at,4944($a0)
.end __glsplc_Disable

# Function: __glsplc_Enable
# Declared: Line 1081 (Source lines: 1082-1118)
# Address: 0x0db0381c - 0x0db039c4 (Size: 424 bytes, Frame: 48)
.globl __glsplc_Enable
.ent __glsplc_Enable
__glsplc_Enable:
    # Line 1082
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$gp,0($sp)
    li	$v0,0x8074
    lui	$v1,0x10
    addiu	$v1,$v1,-20868
    sltu	$at,$a0,$v0
    bnez	$at,.L0db03884
    addu	$gp,$t9,$v1
    li	$a3,0x8079
    sltu	$a1,$a3,$s0
    bnez	$a1,.L0db03888
    # Line 1115
    nop	# was lw $t9, -31768($gp) # &__glSPDlalloc
    # Line 1088
    beq	$v0,$s0,.L0db038c4
    # Line 1086
    lw	$a0,__glCurrentContext
    # Line 1088
    li	$a2,0x8075
    beq	$s0,$a2,.L0db038ec
    li	$at,0x8076
    beq	$s0,$at,.L0db03914
    li	$v1,0x8077
    beq	$s0,$v1,.L0db03944
    li	$a1,0x8078
    beql	$s0,$a1,.L0db03970
    ld	$gp,0($sp)
    beq	$a3,$s0,.L0db03998
.L0db03884:
    # Line 1115
    nop	# was lw $t9, -31768($gp) # &__glSPDlalloc
.L0db03888:
    li	$a1,138
    sd	$ra,16($sp)
    jal	__glSPDlalloc
    li	$a0,4
    bnez	$v0,.L0db038b0
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    # Line 1116
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db038b0:
    ld	$gp,0($sp)
    # Line 1117
    sw	$s0,0($v0)
    # Line 1118
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db038c4:
    # Line 1091
    lw	$s0,4948($a0)
    # Line 1090
    lw	$a2,4944($a0)
    ld	$gp,0($sp)
    # Line 1091
    ori	$s0,$s0,0x20
    # Line 1090
    ori	$a2,$a2,0xff
    sw	$a2,4944($a0)
    # Line 1091
    sw	$s0,4948($a0)
    # Line 1092
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db038ec:
    ld	$gp,0($sp)
    # Line 1096
    ld	$s0,8($sp)
    # Line 1094
    lw	$at,4944($a0)
    # Line 1095
    lw	$v0,4948($a0)
    # Line 1096
    addiu	$sp,$sp,48
    # Line 1094
    ori	$at,$at,0xf00
    # Line 1095
    ori	$v0,$v0,0x1
    sw	$v0,4948($a0)
    # Line 1096
    jr	$ra
    # Line 1094
    sw	$at,4944($a0)
.L0db03914:
    # Line 1098
    lui	$a1,0xf
    ld	$gp,0($sp)
    # Line 1100
    ld	$s0,8($sp)
    # Line 1099
    lw	$a2,4948($a0)
    # Line 1098
    lw	$v1,4944($a0)
    # Line 1100
    addiu	$sp,$sp,48
    # Line 1098
    ori	$a1,$a1,0xf000
    or	$v1,$v1,$a1
    # Line 1099
    ori	$a2,$a2,0x2
    sw	$a2,4948($a0)
    # Line 1100
    jr	$ra
    # Line 1098
    sw	$v1,4944($a0)
.L0db03944:
    # Line 1102
    lui	$at,0xf000
    lw	$s0,4944($a0)
    # Line 1103
    lw	$v0,4948($a0)
    ld	$gp,0($sp)
    # Line 1102
    or	$s0,$s0,$at
    # Line 1103
    ori	$v0,$v0,0x8
    sw	$v0,4948($a0)
    # Line 1102
    sw	$s0,4944($a0)
    # Line 1104
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0db03970:
    # Line 1108
    ld	$s0,8($sp)
    # Line 1107
    lw	$a2,4948($a0)
    # Line 1106
    lw	$v1,4944($a0)
    # Line 1108
    addiu	$sp,$sp,48
    # Line 1106
    lui	$a1,0x7f0
    or	$v1,$v1,$a1
    # Line 1107
    ori	$a2,$a2,0x4
    sw	$a2,4948($a0)
    # Line 1108
    jr	$ra
    # Line 1106
    sw	$v1,4944($a0)
.L0db03998:
    # Line 1110
    lui	$at,0x800
    lw	$s0,4944($a0)
    # Line 1111
    lw	$v0,4948($a0)
    ld	$gp,0($sp)
    # Line 1110
    or	$s0,$s0,$at
    # Line 1111
    ori	$v0,$v0,0x10
    sw	$v0,4948($a0)
    # Line 1110
    sw	$s0,4944($a0)
    # Line 1112
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Enable

# Function: __glsplc_ColorTableSGI
# Declared: Line 1121 (Source lines: 1122-1158)
# Address: 0x0db039c4 - 0x0db03b94 (Size: 464 bytes, Frame: 144)
.globl __glsplc_ColorTableSGI
.ent __glsplc_ColorTableSGI
__glsplc_ColorTableSGI:
    # Line 1128
    li	$at,0x80d3
    # Line 1122
    addiu	$sp,$sp,-144
    sd	$s1,72($sp)
    move	$s1,$a2
    sd	$s0,64($sp)
    move	$s0,$a0
    sd	$gp,56($sp)
    lui	$v0,0x10
    addiu	$v0,$v0,-21292
    addu	$gp,$t9,$v0
    move	$v0,$a4
    # Line 1124
    sw	$a4,4($sp)
    sw	$a3,0($sp)
    # Line 1128
    beq	$a0,$at,.L0db03ae8
    # Line 1126
    lw	$t0,__glCurrentContext
    # Line 1128
    li	$v1,0x80d4
    beq	$s0,$v1,.L0db03ae8
    li	$a6,0x80d5
    beq	$s0,$a6,.L0db03ae8
    li	$a7,0x80bd
    beql	$s0,$a7,.L0db03aec
    # Line 1132
    lw	$t9,5640($t0)
    # Line 1137
    bltz	$s1,.L0db03a4c
    # Line 1138
    nop	# was lw $t9, -29344($gp) # &__glsplc_InvalidValue
    sd	$ra,80($sp)
    sd	$v0,48($sp)
    sd	$a3,40($sp)
    sd	$t0,16($sp)
    sd	$a5,24($sp)
    # Line 1137
    addiu	$at,$s1,-1
    and	$at,$at,$s1
    beqz	$at,.L0db03a70
    sd	$a1,32($sp)
    # Line 1138
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
.L0db03a4c:
    sd	$ra,80($sp)
    bal __glsplc_InvalidValue
    nop
    ld	$gp,56($sp)
    # Line 1139
    ld	$ra,80($sp)
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db03a70:
    ld	$a0,40($sp)
    # Line 1142
    # lw $t9, -32708($gp) # &sub_0db00000
    ld	$a1,48($sp)
    addiu	$a3,$sp,4
    addiu	$t9,$t9,7316
    bal __glsplc_DeformationMap3dSGIX
    addiu	$a2,$sp,0
    beqz	$v0,.L0db03b1c
    ld	$ra,80($sp)
    # Line 1144
    move	$a0,$s1
    # lw $t9, -26724($gp) # &__glImageSize
    ld	$a3,48($sp)
    ld	$a2,40($sp)
    jal	__glImageSize
    li	$a1,1
    # Line 1146
    li	$a1,227
    # Line 1145
    li	$a2,-4
    addiu	$a0,$v0,3
    # Line 1146
    # lw $t9, -31768($gp) # &__glSPDlalloc
    # Line 1145
    and	$a0,$a0,$a2
    sd	$a0,8($sp)
    # Line 1146
    jal	__glSPDlalloc
    addiu	$a0,$a0,24
    bnez	$v0,.L0db03b30
    ld	$ra,80($sp)
    ld	$gp,56($sp)
    # Line 1147
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db03ae8:
    # Line 1132
    lw	$t9,5640($t0)
.L0db03aec:
    move	$a0,$s0
    lw	$t9,952($t9)
    move	$a2,$s1
    sd	$ra,80($sp)
    jalr	$t9
    move	$a4,$v0
    ld	$gp,56($sp)
    # Line 1134
    ld	$ra,80($sp)
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db03b1c:
    ld	$gp,56($sp)
    # Line 1142
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db03b30:
    # Line 1156
    addiu	$a6,$v0,24
    ld	$a5,24($sp)
    li	$a2,1
    move	$a1,$s1
    # Line 1151
    sw	$s1,8($v0)
    # Line 1149
    sw	$s0,0($v0)
    # Line 1156
    # lw $t9, -26712($gp) # &__glFillImage
    # Line 1150
    ld	$a0,32($sp)
    # Line 1154
    ld	$ra,8($sp)
    # Line 1153
    ld	$at,48($sp)
    # Line 1152
    ld	$v1,40($sp)
    # Line 1154
    sw	$ra,20($v0)
    # Line 1153
    sw	$at,16($v0)
    # Line 1152
    sw	$v1,12($v0)
    # Line 1150
    sw	$a0,4($v0)
    # Line 1156
    ld	$a0,16($sp)
    lw	$a4,4($sp)
    jal	__glFillImage
    lw	$a3,0($sp)
    ld	$gp,56($sp)
    # Line 1158
    ld	$ra,80($sp)
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glsplc_ColorTableSGI

# Function: __glsplc_DrawArraysEXT
# Declared: Line 1161 (Source lines: 1164-1211)
# Address: 0x0db03b94 - 0x0db03d9c (Size: 520 bytes, Frame: 144)
.globl __glsplc_DrawArraysEXT
.ent __glsplc_DrawArraysEXT
__glsplc_DrawArraysEXT:
    # Line 1166
    sltiu	$at,$a0,10
    # Line 1164
    addiu	$sp,$sp,-144
    sd	$s2,24($sp)
    move	$s2,$a2
    sd	$gp,16($sp)
    lui	$v0,0x10
    addiu	$v0,$v0,-21756
    sd	$s1,8($sp)
    # Line 1165
    lw	$s1,__glCurrentContext
    # Line 1164
    addu	$gp,$t9,$v0
    # Line 1166
    beqz	$at,.L0db03d50
    lw	$a4,4948($s1)
    sd	$ra,32($sp)
    sd	$a1,48($sp)
    # Line 1176
    bltz	$s2,.L0db03d78
    sd	$a4,0($sp)
    # Line 1182
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
    # Line 1183
    addu	$s2,$a0,$s2
    # Line 1184
    slt	$v1,$a0,$s2
    beqz	$v1,.L0db03d2c
    move	$s0,$a0
    ld	$s3,0($sp)
    andi	$s8,$s3,0x20
    andi	$s7,$s3,0x10
    andi	$s4,$s3,0x8
    andi	$s6,$s3,0x4
    andi	$s5,$s3,0x2
    b	.L0db03c38
    andi	$s3,$s3,0x1
    addiu	$s0,$s0,1
.L0db03c30:
    beql	$s2,$s0,.L0db03d18
    ld	$s7,56($sp)
.L0db03c38:
    beqz	$s3,.L0db03c5c
    nop
    # Line 1186
    lw	$a2,4824($s1)
    mult	$a2,$s0
    lw	$t9,4836($s1)
    lw	$a0,4816($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0db03c5c:
    beqz	$s5,.L0db03c80
    nop
    # Line 1190
    lw	$a2,4852($s1)
    mult	$a2,$s0
    lw	$t9,4864($s1)
    lw	$a0,4840($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0db03c80:
    beqz	$s6,.L0db03ca4
    nop
    # Line 1194
    lw	$a2,4904($s1)
    mult	$a2,$s0
    lw	$t9,4916($s1)
    lw	$a0,4892($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0db03ca4:
    beqz	$s4,.L0db03cc8
    nop
    # Line 1198
    lw	$a2,4876($s1)
    mult	$a2,$s0
    lw	$t9,4888($s1)
    lw	$a0,4868($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0db03cc8:
    beqz	$s7,.L0db03cec
    nop
    # Line 1202
    lw	$a2,4924($s1)
    mult	$a2,$s0
    lw	$t9,4936($s1)
    lw	$a0,4920($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0db03cec:
    beqzl	$s8,.L0db03c30
    # Line 1184
    addiu	$s0,$s0,1
    # Line 1206
    lw	$a2,4800($s1)
    mult	$a2,$s0
    lw	$t9,4812($s1)
    lw	$a0,4788($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
    b	.L0db03c30
    # Line 1184
    addiu	$s0,$s0,1
.L0db03d18:
    ld	$s5,64($sp)
    ld	$s4,72($sp)
    ld	$s6,80($sp)
    ld	$s3,88($sp)
    ld	$s8,96($sp)
.L0db03d2c:
    # Line 1210
    # lw $t9, -17532($gp) # &glEnd
    jal	glEnd
    ld	$s0,40($sp)
    ld	$gp,16($sp)
    # Line 1211
    ld	$ra,32($sp)
    ld	$s1,8($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db03d50:
    # Line 1175
    # lw $t9, -29340($gp) # &__glsplc_InvalidEnum
    sd	$ra,32($sp)
    bal __glsplc_InvalidEnum
    nop
    ld	$gp,16($sp)
    # Line 1176
    ld	$ra,32($sp)
    ld	$s1,8($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db03d78:
    # Line 1179
    # lw $t9, -29344($gp) # &__glsplc_InvalidValue
    bal __glsplc_InvalidValue
    nop
    ld	$gp,16($sp)
    # Line 1180
    ld	$ra,32($sp)
    ld	$s1,8($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glsplc_DrawArraysEXT

# Function: __glsplc_DrawElements
# Declared: Line 1213 (Source lines: 1215-1248)
# Address: 0x0db03d9c - 0x0db03f38 (Size: 412 bytes, Frame: 208)
.globl __glsplc_DrawElements
.ent __glsplc_DrawElements
__glsplc_DrawElements:
    # Line 1216
    lw	$a5,__glCurrentContext
    # Line 1215
    addiu	$sp,$sp,-80
    sd	$a3,8($sp)
    sd	$s0,16($sp)
    move	$s0,$a2
    sd	$a1,0($sp)
    sd	$gp,24($sp)
    lui	$at,0x10
    addiu	$at,$at,-22276
    # Line 1216
    bltz	$a1,.L0db03f14
    # Line 1215
    addu	$gp,$t9,$at
    # Line 1222
    sltiu	$v0,$a0,10
    beqz	$v0,.L0db03dec
    li	$a1,5121
    beq	$a1,$s0,.L0db03e10
    li	$v1,5123
    beq	$s0,$v1,.L0db03e10
    li	$a4,5125
    beq	$s0,$a4,.L0db03e10
    sd	$ra,32($sp)
.L0db03dec:
    # Line 1225
    # lw $t9, -29428($gp) # &__gllc_InvalidEnum
    sd	$ra,32($sp)
    bal __gllc_InvalidEnum
    move	$a0,$a5
    # Line 1226
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db03e10:
    # Line 1228
    # lw $t9, -17676($gp) # &glBegin
    sd	$ra,32($sp)
    jal	glBegin
    nop
    li	$at,5121
    # Line 1229
    beq	$at,$s0,.L0db03e58
    li	$v0,5123
    beq	$s0,$v0,.L0db03e94
    li	$v1,5125
    beq	$s0,$v1,.L0db03ed4
.L0db03e38:
    # Line 1247
    nop	# was lw $t9, -17532($gp) # &glEnd
    jal	glEnd
    nop
    # Line 1248
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0db03e58:
    ld	$a4,0($sp)
    ld	$at,8($sp)
    # Line 1232
    blez	$a4,.L0db03e38
    sd	$s1,40($sp)
    ld	$s1,0($sp)
    move	$s0,$at
    addu	$s1,$s1,$at
    # Line 1233
    # lw $t9, -16356($gp) # &glArrayElement
.L0db03e78:
    jal	glArrayElement
    lbu	$a0,0($s0)
    # Line 1232
    addiu	$s0,$s0,1
    bne	$s0,$s1,.L0db03e78
    # Line 1233
    nop	# was lw $t9, -16356($gp) # &glArrayElement
    b	.L0db03e38
    ld	$s1,40($sp)
.L0db03e94:
    ld	$v0,0($sp)
    # Line 1237
    blez	$v0,.L0db03e38
    sd	$s1,40($sp)
    ld	$at,8($sp)
    ld	$s1,0($sp)
    move	$s0,$at
    addu	$s1,$s1,$s1
    addu	$s1,$s1,$at
    # Line 1238
    # lw $t9, -16356($gp) # &glArrayElement
.L0db03eb8:
    jal	glArrayElement
    lhu	$a0,0($s0)
    # Line 1237
    addiu	$s0,$s0,2
    bne	$s0,$s1,.L0db03eb8
    # Line 1238
    nop	# was lw $t9, -16356($gp) # &glArrayElement
    b	.L0db03e38
    ld	$s1,40($sp)
.L0db03ed4:
    ld	$at,0($sp)
    # Line 1242
    blez	$at,.L0db03e38
    ld	$at,8($sp)
    sd	$s1,40($sp)
    ld	$s1,0($sp)
    move	$s0,$at
    sll	$s1,$s1,0x2
    addu	$s1,$s1,$at
    # Line 1243
    # lw $t9, -16356($gp) # &glArrayElement
.L0db03ef8:
    jal	glArrayElement
    lw	$a0,0($s0)
    # Line 1242
    addiu	$s0,$s0,4
    bne	$s0,$s1,.L0db03ef8
    # Line 1243
    nop	# was lw $t9, -16356($gp) # &glArrayElement
    b	.L0db03e38
    ld	$s1,40($sp)
.L0db03f14:
    # Line 1219
    # lw $t9, -29432($gp) # &__gllc_InvalidValue
    sd	$ra,32($sp)
    bal __gllc_InvalidValue
    move	$a0,$a5
    # Line 1220
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_DrawElements

